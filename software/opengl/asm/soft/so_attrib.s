# Source: ../soft/so_attrib.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_attrib.c
# Total Functions: 65

.text

# Function: __glim_AlphaFunc
# Declared: Line 28 (Source lines: 29-43)
# Address: 0x0d9bd140 - 0x0d9bd204 (Size: 196 bytes, Frame: 16)
.globl __glim_AlphaFunc
.ent __glim_AlphaFunc
__glim_AlphaFunc:
    # Line 36
    mtc1	$zero,$f1
    # Line 29
    addiu	$sp,$sp,-16
    # Line 30
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 29
    lui	$v1,0x9
    # Line 41
    li	$a6,2
    sd	$ra,8($sp)
    # Line 29
    addiu	$v1,$v1,15436
    sd	$gp,0($sp)
    # Line 30
    beq	$at,$v0,.L0d9bd1f0
    # Line 29
    addu	$gp,$t9,$v1
    # Line 32
    sltiu	$a1,$a0,512
    bnez	$a1,.L0d9bd1e0
    # Line 33
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 32
    sltiu	$a3,$a0,520
    beqz	$a3,.L0d9bd1e0
    # Line 33
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 36
    c.lt.s $f13,$f1
    lwc1	$f0,3544($a2)
    movf.s	$f1,$f13,$fcc1
    c.lt.s	$f0,$f1
    # Line 43
    ld	$gp,0($sp)
    # Line 39
    sw	$a0,1820($a2)
    movf.s	$f0,$f1,$fcc0
    # Line 40
    swc1	$f0,1824($a2)
    # Line 41
    sw	$a6,4120($zero)
    # Line 42
    lw	$a5,11752($a2)
    move	$ra,$ra
    # Line 41
    lw	$a4,11756($a2)
    # Line 43
    addiu	$sp,$sp,16
    # Line 42
    ori	$a5,$a5,0x1
    sw	$a5,11752($a2)
    # Line 41
    ori	$a4,$a4,0x1
    # Line 43
    jr	$ra
    # Line 41
    sw	$a4,11756($a2)
.L0d9bd1d0:
    # Line 43
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 33
    # lw $t9, -26452($gp) # &__glSetError
.L0d9bd1e0:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bd1d0
    ld	$ra,8($sp)
.L0d9bd1f0:
    # Line 30
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd1d0
    ld	$ra,8($sp)
.end __glim_AlphaFunc

# Function: __glim_BlendFunc
# Declared: Line 45 (Source lines: 46-89)
# Address: 0x0d9bd210 - 0x0d9bd468 (Size: 600 bytes, Frame: 16)
.globl __glim_BlendFunc
.ent __glim_BlendFunc
__glim_BlendFunc:
    # Line 47
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 46
    lui	$at,0x9
    # Line 47
    lw	$a3,4112($zero)
    # Line 46
    addiu	$sp,$sp,-16
    addiu	$at,$at,15228
    sd	$gp,0($sp)
    # Line 47
    beq	$v0,$v1,.L0d9bd450
    # Line 46
    addu	$gp,$t9,$at
    # Line 49
    sltiu	$a4,$a0,774
    bnez	$a4,.L0d9bd288
    sltiu	$a7,$a0,771
    sltiu	$v0,$a0,775
    bnez	$v0,.L0d9bd2ac
    # Line 68
    sltiu	$a4,$a1,772
    # Line 49
    li	$a4,0x8002
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0d9bd3d4
    sltu	$a2,$a4,$a0
    li	$a6,0x8003
    li	$a4,0x8004
    beqz	$a2,.L0d9bd2a8
    sltu	$a5,$a0,$a4
    bnez	$a5,.L0d9bd440
    nop
    sltu	$a6,$a4,$a0
    beqz	$a6,.L0d9bd2ac
    # Line 68
    sltiu	$a4,$a1,772
    b	.L0d9bd37c
    sd	$ra,8($sp)
.L0d9bd288:
    # Line 49
    bnez	$a7,.L0d9bd368
    sltiu	$t0,$a0,772
    bnez	$t0,.L0d9bd2a8
    sltiu	$t1,$a0,773
    bnez	$t1,.L0d9bd430
    li	$a5,772
    beqz	$a4,.L0d9bd380
    # Line 65
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bd2a8:
    # Line 68
    sltiu	$a4,$a1,772
.L0d9bd2ac:
    bnez	$a4,.L0d9bd2f4
    sltiu	$v0,$a1,769
    sltiu	$t2,$a1,773
    bnez	$t2,.L0d9bd334
    li	$a4,0x8002
    sltu	$t3,$a1,$a4
    bnez	$t3,.L0d9bd3b0
    sltu	$t8,$a4,$a1
    beqz	$t8,.L0d9bd334
    li	$a2,0x8003
    li	$a4,0x8004
    sltu	$t9,$a1,$a4
    bnez	$t9,.L0d9bd410
    sltu	$at,$a4,$a1
    beqz	$at,.L0d9bd334
    nop
    b	.L0d9bd398
    sd	$ra,8($sp)
.L0d9bd2f4:
    bnez	$v0,.L0d9bd31c
    sltiu	$v1,$a1,770
    bnez	$v1,.L0d9bd334
    sltiu	$a2,$a1,771
    bnez	$a2,.L0d9bd394
    li	$t2,770
    bnez	$a4,.L0d9bd334
    nop
    b	.L0d9bd398
    sd	$ra,8($sp)
.L0d9bd31c:
    beqz	$a1,.L0d9bd334
    sltiu	$a4,$a1,2
    bnez	$a4,.L0d9bd334
    li	$a5,768
    bne	$a1,$a5,.L0d9bd39c
    # Line 83
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bd334:
    # Line 88
    sw	$a1,1832($a3)
    # Line 87
    sw	$a0,1828($a3)
    # Line 89
    li	$a7,2
    sw	$a7,4120($zero)
    lw	$a6,11756($a3)
    # Line 66
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 89
    ori	$a6,$a6,0x1
    # Line 66
    jr	$ra
    # Line 89
    sw	$a6,11756($a3)
.L0d9bd35c:
    # Line 66
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd368:
    # Line 49
    beqz	$a0,.L0d9bd2a8
    sltiu	$t0,$a0,2
    bnez	$t0,.L0d9bd2a8
    li	$t1,770
    beq	$a0,$t1,.L0d9bd2a8
.L0d9bd37c:
    # Line 65
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bd380:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bd35c
    ld	$ra,8($sp)
.L0d9bd394:
    # Line 68
    beq	$a1,$t2,.L0d9bd334
.L0d9bd398:
    # Line 83
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bd39c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bd35c
    ld	$ra,8($sp)
.L0d9bd3b0:
    # Line 68
    li	$a4,0x8001
    sltu	$t3,$a1,$a4
    li	$v1,773
    bnez	$t3,.L0d9bd400
    sltu	$t8,$a4,$a1
    beqz	$t8,.L0d9bd334
    nop
    b	.L0d9bd398
    sd	$ra,8($sp)
.L0d9bd3d4:
    # Line 49
    sltiu	$t9,$a0,776
    sltiu	$at,$a0,777
    li	$v0,0x8001
    bnez	$t9,.L0d9bd420
    li	$a4,775
    bnez	$at,.L0d9bd2ac
    # Line 68
    sltiu	$a4,$a1,772
    # Line 49
    beq	$a0,$v0,.L0d9bd2ac
    # Line 68
    sltiu	$a4,$a1,772
    b	.L0d9bd37c
    sd	$ra,8($sp)
.L0d9bd400:
    beq	$a1,$v1,.L0d9bd334
    nop
    b	.L0d9bd398
    sd	$ra,8($sp)
.L0d9bd410:
    beq	$a1,$a2,.L0d9bd334
    nop
    b	.L0d9bd398
    sd	$ra,8($sp)
.L0d9bd420:
    # Line 49
    beq	$a0,$a4,.L0d9bd2ac
    # Line 68
    sltiu	$a4,$a1,772
    b	.L0d9bd37c
    sd	$ra,8($sp)
.L0d9bd430:
    # Line 49
    beq	$a0,$a5,.L0d9bd2ac
    # Line 68
    sltiu	$a4,$a1,772
    b	.L0d9bd37c
    sd	$ra,8($sp)
.L0d9bd440:
    # Line 49
    beq	$a0,$a6,.L0d9bd2ac
    # Line 68
    sltiu	$a4,$a1,772
    b	.L0d9bd37c
    sd	$ra,8($sp)
.L0d9bd450:
    # Line 47
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd35c
    ld	$ra,8($sp)
.end __glim_BlendFunc

# Function: __glim_BlendEquationEXT
# Declared: Line 92 (Source lines: 93-112)
# Address: 0x0d9bd470 - 0x0d9bd598 (Size: 296 bytes, Frame: 16)
.globl __glim_BlendEquationEXT
.ent __glim_BlendEquationEXT
__glim_BlendEquationEXT:
    # Line 96
    li	$a5,0x8321
    li	$t0,0x8008
    # Line 94
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 93
    lui	$at,0x9
    # Line 94
    lw	$a2,4112($zero)
    # Line 93
    addiu	$sp,$sp,-16
    addiu	$at,$at,14620
    sd	$gp,0($sp)
    # Line 94
    beq	$v0,$v1,.L0d9bd580
    # Line 93
    addu	$gp,$t9,$at
    # Line 96
    li	$a3,0x800a
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0d9bd4e4
    li	$at,3057
    sltu	$v1,$a3,$a0
    li	$a3,0x8320
    li	$t3,0x800b
    sltu	$a4,$a3,$a0
    beqz	$v1,.L0d9bd504
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d9bd534
    nop
    beqz	$a4,.L0d9bd504
    nop
    beq	$a0,$a5,.L0d9bd504
    nop
    b	.L0d9bd538
    sd	$ra,8($sp)
.L0d9bd4e4:
    li	$a3,0x8007
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d9bd550
    sltu	$a7,$a3,$a0
    beqz	$a7,.L0d9bd504
    nop
    bne	$a0,$t0,.L0d9bd53c
    # Line 107
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bd504:
    # Line 111
    sw	$a0,1836($a2)
.L0d9bd508:
    # Line 112
    li	$t2,2
    sw	$t2,4120($zero)
    lw	$t1,11756($a2)
    # Line 108
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 112
    ori	$t1,$t1,0x1
    # Line 108
    jr	$ra
    # Line 112
    sw	$t1,11756($a2)
.L0d9bd528:
    # Line 108
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd534:
    # Line 96
    beq	$a0,$t3,.L0d9bd504
.L0d9bd538:
    # Line 107
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bd53c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bd528
    ld	$ra,8($sp)
.L0d9bd550:
    # Line 96
    li	$a3,0x8006
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d9bd570
    sltu	$t9,$a3,$a0
    beqz	$t9,.L0d9bd504
    nop
    b	.L0d9bd538
    sd	$ra,8($sp)
.L0d9bd570:
    bne	$a0,$at,.L0d9bd53c
    # Line 107
    nop	# was lw $t9, -26452($gp) # &__glSetError
    b	.L0d9bd508
    # Line 111
    sw	$a0,1836($a2)
.L0d9bd580:
    # Line 94
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd528
    ld	$ra,8($sp)
.end __glim_BlendEquationEXT

# Function: __glim_ClearAccum
# Declared: Line 115 (Source lines: 116-138)
# Address: 0x0d9bd5a0 - 0x0d9bd66c (Size: 204 bytes, Frame: 16)
.globl __glim_ClearAccum
.ent __glim_ClearAccum
__glim_ClearAccum:
    # Line 119
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 116
    lui	$at,0x9
    # Line 119
    lw	$a1,4112($zero)
    # Line 116
    addiu	$sp,$sp,-16
    addiu	$at,$at,14316
    sd	$gp,0($sp)
    # Line 119
    beq	$v0,$v1,.L0d9bd654
    # Line 116
    addu	$gp,$t9,$at
    # Line 124
    lwc1	$f1,_lit_bf800000
    # Line 128
    c.lt.s $f14,$f1
    # Line 126
    c.lt.s $f13,$f1
    # Line 124
    c.lt.s $f12,$f1
    # Line 128
    movt.s	$f14,$f1,$fcc7
    # Line 130
    c.lt.s $f15,$f1
    # Line 126
    movt.s	$f13,$f1,$fcc6
    # Line 122
    lwc1	$f0,3544($a1)
    # Line 124
    movt.s	$f12,$f1,$fcc5
    # Line 130
    movf.s	$f1,$f15,$fcc4
    # Line 128
    mov.s	$f2,$f14
    # Line 124
    mov.s	$f4,$f12
    c.lt.s $f0,$f12
    # Line 126
    mov.s	$f3,$f13
    c.lt.s $f0,$f13
    # Line 128
    c.lt.s $f0,$f14
    # Line 124
    movt.s	$f4,$f0,$fcc3
    # Line 130
    c.lt.s	$f0,$f1
    # Line 126
    movt.s	$f3,$f0,$fcc2
    # Line 128
    movt.s	$f2,$f0,$fcc1
    # Line 130
    movf.s	$f0,$f1,$fcc0
    # Line 135
    swc1	$f0,1660($a1)
    # Line 134
    swc1	$f2,1656($a1)
    # Line 133
    swc1	$f3,1652($a1)
    # Line 132
    swc1	$f4,1648($a1)
    # Line 137
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a1)
    # Line 138
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 137
    ori	$v0,$v0,0x1
    # Line 138
    jr	$ra
    # Line 137
    sw	$v0,11756($a1)
.L0d9bd648:
    # Line 138
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd654:
    # Line 119
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd648
    ld	$ra,8($sp)
.end __glim_ClearAccum

# Function: __glim_ClearColor
# Declared: Line 140 (Source lines: 141-161)
# Address: 0x0d9bd670 - 0x0d9bd728 (Size: 184 bytes, Frame: 16)
.globl __glim_ClearColor
.ent __glim_ClearColor
__glim_ClearColor:
    # Line 144
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 141
    lui	$at,0x9
    # Line 144
    lw	$a1,4112($zero)
    # Line 141
    addiu	$sp,$sp,-16
    addiu	$at,$at,14108
    sd	$gp,0($sp)
    # Line 144
    beq	$v0,$v1,.L0d9bd710
    # Line 141
    addu	$gp,$t9,$at
    # Line 149
    mtc1	$zero,$f4
    # Line 153
    c.lt.s $f14,$f4
    # Line 151
    c.lt.s $f13,$f4
    # Line 149
    c.lt.s $f12,$f4
    # Line 153
    movt.s	$f14,$f4,$fcc7
    # Line 155
    c.lt.s $f15,$f4
    # Line 151
    movt.s	$f13,$f4,$fcc6
    # Line 147
    lwc1	$f3,3544($a1)
    # Line 149
    movt.s	$f12,$f4,$fcc5
    # Line 155
    movf.s	$f4,$f15,$fcc4
    # Line 149
    mov.s	$f0,$f12
    # Line 153
    mov.s	$f2,$f14
    c.lt.s $f3,$f14
    # Line 151
    mov.s	$f1,$f13
    c.lt.s $f3,$f13
    # Line 149
    c.lt.s $f3,$f12
    # Line 153
    movt.s	$f2,$f3,$fcc3
    # Line 155
    c.lt.s	$f3,$f4
    # Line 151
    movt.s	$f1,$f3,$fcc2
    # Line 149
    movt.s	$f0,$f3,$fcc1
    # Line 161
    ld	$gp,0($sp)
    # Line 155
    movf.s	$f3,$f4,$fcc0
    # Line 160
    swc1	$f3,1872($a1)
    # Line 159
    swc1	$f2,1868($a1)
    # Line 158
    swc1	$f1,1864($a1)
    # Line 161
    addiu	$sp,$sp,16
    jr	$ra
    # Line 157
    swc1	$f0,1860($a1)
.L0d9bd704:
    # Line 161
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd710:
    # Line 144
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd704
    ld	$ra,8($sp)
.end __glim_ClearColor

# Function: __glim_ClearDepth
# Declared: Line 163 (Source lines: 164-171)
# Address: 0x0d9bd730 - 0x0d9bd7b4 (Size: 132 bytes, Frame: 16)
.globl __glim_ClearDepth
.ent __glim_ClearDepth
__glim_ClearDepth:
    # Line 165
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 164
    lui	$at,0x9
    # Line 165
    lw	$a1,4112($zero)
    # Line 164
    addiu	$sp,$sp,-16
    addiu	$at,$at,13916
    sd	$gp,0($sp)
    # Line 165
    beq	$v0,$v1,.L0d9bd79c
    # Line 164
    addu	$gp,$t9,$at
    # Line 169
    dmtc1	$zero,$f1
    c.lt.d $f12,$f1
    ldc1	$f0,_lit8_3ff0000000000000
    movf.d	$f1,$f12,$fcc1
    c.lt.d	$f0,$f1
    movf.d	$f0,$f1,$fcc0
    sdc1	$f0,1640($a1)
    # Line 170
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a1)
    # Line 171
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 170
    ori	$v0,$v0,0x1
    # Line 171
    jr	$ra
    # Line 170
    sw	$v0,11756($a1)
.L0d9bd790:
    # Line 171
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd79c:
    # Line 165
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd790
    ld	$ra,8($sp)
.end __glim_ClearDepth

# Function: __glim_ClearIndex
# Declared: Line 173 (Source lines: 174-179)
# Address: 0x0d9bd7c0 - 0x0d9bd848 (Size: 136 bytes, Frame: 16)
.globl __glim_ClearIndex
.ent __glim_ClearIndex
__glim_ClearIndex:
    # Line 175
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 174
    lui	$at,0x9
    # Line 175
    lw	$a1,4112($zero)
    # Line 174
    addiu	$sp,$sp,-16
    addiu	$at,$at,13772
    sd	$gp,0($sp)
    # Line 175
    beq	$v0,$v1,.L0d9bd830
    # Line 174
    addu	$gp,$t9,$at
    # Line 177
    lwc1	$f1,_lit_41800000
    mul.s	$f1,$f12,$f1
    lw	$v1,30736($a1)
    trunc.w.s	$f1,$f1
    sll	$v1,$v1,0x4
    mfc1	$v0,$f1
    ori	$v1,$v1,0xf
    and	$v0,$v0,$v1
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,_lit_3d800000
    # Line 179
    ld	$gp,0($sp)
    # Line 177
    mul.s	$f0,$f0,$f1
    # Line 179
    addiu	$sp,$sp,16
    jr	$ra
    # Line 178
    swc1	$f0,1876($a1)
.L0d9bd824:
    # Line 179
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd830:
    # Line 175
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd824
    ld	$ra,8($sp)
.end __glim_ClearIndex

# Function: __glim_ClearStencil
# Declared: Line 181 (Source lines: 182-187)
# Address: 0x0d9bd850 - 0x0d9bd8cc (Size: 124 bytes, Frame: 16)
.globl __glim_ClearStencil
.ent __glim_ClearStencil
__glim_ClearStencil:
    # Line 183
    lw	$v0,4120($zero)
    li	$a3,1
    # Line 182
    lui	$at,0x9
    # Line 183
    lw	$a2,4112($zero)
    # Line 182
    addiu	$sp,$sp,-16
    addiu	$at,$at,13628
    sd	$gp,0($sp)
    # Line 183
    beq	$v0,$a3,.L0d9bd8b4
    # Line 182
    addu	$gp,$t9,$at
    # Line 185
    lw	$a1,3248($a2)
    sllv	$a1,$a3,$a1
    addiu	$a1,$a1,-1
    and	$a0,$a0,$a1
    sh	$a0,1668($a2)
    # Line 186
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a2)
    # Line 187
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 186
    ori	$v0,$v0,0x1
    # Line 187
    jr	$ra
    # Line 186
    sw	$v0,11756($a2)
.L0d9bd8a8:
    # Line 187
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd8b4:
    # Line 183
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd8a8
    ld	$ra,8($sp)
.end __glim_ClearStencil

# Function: __glim_ColorMask
# Declared: Line 189 (Source lines: 190-198)
# Address: 0x0d9bd8d0 - 0x0d9bd948 (Size: 120 bytes, Frame: 16)
.globl __glim_ColorMask
.ent __glim_ColorMask
__glim_ColorMask:
    # Line 191
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 190
    lui	$at,0x9
    # Line 191
    lw	$a5,4112($zero)
    # Line 190
    addiu	$sp,$sp,-16
    addiu	$at,$at,13500
    sd	$gp,0($sp)
    # Line 191
    beq	$v0,$v1,.L0d9bd930
    # Line 190
    addu	$gp,$t9,$at
    # Line 196
    sb	$a3,1887($a5)
    # Line 195
    sb	$a2,1886($a5)
    # Line 194
    sb	$a1,1885($a5)
    # Line 193
    sb	$a0,1884($a5)
    # Line 197
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a5)
    # Line 198
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 197
    ori	$v0,$v0,0x1
    # Line 198
    jr	$ra
    # Line 197
    sw	$v0,11756($a5)
.L0d9bd924:
    # Line 198
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bd930:
    # Line 191
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bd924
    ld	$ra,8($sp)
.end __glim_ColorMask

# Function: __glim_ColorMaterial
# Declared: Line 200 (Source lines: 201-232)
# Address: 0x0d9bd950 - 0x0d9bda54 (Size: 260 bytes, Frame: 32)
.globl __glim_ColorMaterial
.ent __glim_ColorMaterial
__glim_ColorMaterial:
    # Line 201
    addiu	$sp,$sp,-32
    # Line 214
    li	$t1,5634
    li	$t0,5632
    # Line 201
    sd	$s0,8($sp)
    # Line 214
    li	$a7,4610
    li	$a6,4609
    # Line 202
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 201
    lui	$v1,0x9
    # Line 204
    li	$a4,1032
    sd	$ra,16($sp)
    # Line 201
    addiu	$v1,$v1,13372
    sd	$gp,0($sp)
    # Line 202
    beq	$at,$v0,.L0d9bda40
    # Line 201
    addu	$gp,$t9,$v1
    # Line 204
    li	$a2,1028
    beq	$a0,$a2,.L0d9bd9c8
    # Line 214
    li	$a5,4608
    # Line 204
    li	$a3,1029
    beq	$a0,$a3,.L0d9bd9c8
    # Line 214
    li	$a5,4608
    # Line 204
    beq	$a0,$a4,.L0d9bd9c8
    # Line 214
    li	$a5,4608
    # Line 210
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bda30
    ld	$ra,16($sp)
    # Line 214
    li	$a5,4608
.L0d9bd9c8:
    beq	$a1,$a5,.L0d9bda00
    nop
    beq	$a1,$a6,.L0d9bda00
    nop
    beq	$a1,$a7,.L0d9bda00
    nop
    beq	$a1,$t0,.L0d9bda00
    nop
    beq	$a1,$t1,.L0d9bda00
    # Line 222
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bda30
    ld	$ra,16($sp)
.L0d9bda00:
    # Line 226
    lw	$t2,1792($s0)
    andi	$t2,$t2,0x80
    sw	$a1,1388($s0)
    beqz	$t2,.L0d9bda2c
    # Line 225
    sw	$a0,1384($s0)
    # Line 229
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 230
    lw	$t9,12000($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9bda2c:
    ld	$ra,16($sp)
.L0d9bda30:
    # Line 232
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bda40:
    # Line 202
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bda30
    ld	$ra,16($sp)
.end __glim_ColorMaterial

# Function: __glim_CullFace
# Declared: Line 234 (Source lines: 235-249)
# Address: 0x0d9bda60 - 0x0d9bdafc (Size: 156 bytes, Frame: 16)
.globl __glim_CullFace
.ent __glim_CullFace
__glim_CullFace:
    # Line 248
    li	$a6,2
    # Line 235
    addiu	$sp,$sp,-16
    # Line 236
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 235
    lui	$v1,0x9
    # Line 238
    li	$a4,1032
    sd	$ra,8($sp)
    # Line 235
    addiu	$v1,$v1,13100
    sd	$gp,0($sp)
    # Line 236
    beq	$at,$v0,.L0d9bdae8
    # Line 235
    addu	$gp,$t9,$v1
    # Line 238
    li	$a1,1028
    beq	$a0,$a1,.L0d9bdac4
    li	$a3,1029
    beq	$a0,$a3,.L0d9bdac4
    nop
    beq	$a0,$a4,.L0d9bdac4
    # Line 244
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9bdab8:
    # Line 249
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bdac4:
    # Line 247
    sw	$a0,492($a2)
    # Line 248
    sw	$a6,4120($zero)
    ld	$ra,8($sp)
    lw	$a5,11756($a2)
    # Line 249
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 248
    ori	$a5,$a5,0x4
    # Line 249
    jr	$ra
    # Line 248
    sw	$a5,11756($a2)
.L0d9bdae8:
    # Line 236
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bdab8
    ld	$ra,8($sp)
.end __glim_CullFace

# Function: __glim_DepthFunc
# Declared: Line 251 (Source lines: 252-299)
# Address: 0x0d9bdb00 - 0x0d9bdc98 (Size: 408 bytes, Frame: 32)
.globl __glim_DepthFunc
.ent __glim_DepthFunc
__glim_DepthFunc:
    # Line 252
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 253
    lw	$s1,4112($zero)
    lw	$at,4120($zero)
    # Line 252
    sd	$s0,8($sp)
    # Line 253
    li	$v0,1
    # Line 252
    lui	$v1,0x9
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,12940
    sd	$gp,16($sp)
    # Line 253
    beq	$at,$v0,.L0d9bdc74
    # Line 252
    addu	$gp,$t9,$v1
    # Line 255
    sltiu	$a0,$a0,512
    bnez	$a0,.L0d9bdbc0
    # Line 256
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 255
    sltiu	$a1,$s0,520
    beqz	$a1,.L0d9bdbc0
    # Line 256
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 257
    lw	$a0,31328($s1)
    lui	$a3,0xff00
    # Line 266
    li	$a6,516
    li	$a7,518
    # Line 257
    beq	$a3,$a0,.L0d9bdbd8
    # Line 268
    lui	$a2,0x100
.L0d9bdb64:
    bne	$a2,$a0,.L0d9bdb80
    # Line 281
    li	$a3,515
    li	$a2,513
    beq	$s0,$a2,.L0d9bdbf0
    nop
    beq	$s0,$a3,.L0d9bdbf0
    nop
.L0d9bdb80:
    # Line 299
    ld	$gp,16($sp)
.L0d9bdb84:
    # Line 296
    sw	$s0,1632($s1)
    # Line 298
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($s1)
    ld	$ra,24($sp)
    # Line 299
    ld	$s0,8($sp)
    # Line 298
    ori	$a4,$a4,0x80
    sw	$a4,11756($s1)
    # Line 299
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bdbb0:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 256
    # lw $t9, -26452($gp) # &__glSetError
.L0d9bdbc0:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bdbb0
    ld	$ra,24($sp)
.L0d9bdbd8:
    # Line 266
    beq	$s0,$a6,.L0d9bdc30
    nop
    beq	$s0,$a7,.L0d9bdc30
    nop
    b	.L0d9bdb64
    # Line 271
    lui	$a2,0x100
.L0d9bdbf0:
    # Line 283
    lw	$t0,1792($s1)
    andi	$t0,$t0,0x10
    beqz	$t0,.L0d9bdb80
    nop
    lbu	$t1,3225($s1)
    beqz	$t1,.L0d9bdb80
    nop
    # Line 286
    lw	$t9,31336($s1)
    lw	$a2,31308($s1)
    addiu	$a1,$s1,31228
    move	$a0,$s1
    lui	$t2,0xff00
    jalr	$t9
    # Line 285
    sw	$t2,31328($s1)
    b	.L0d9bdb84
    # Line 299
    ld	$gp,16($sp)
.L0d9bdc30:
    # Line 268
    lw	$t3,1792($s1)
    andi	$t3,$t3,0x10
    beqz	$t3,.L0d9bdc90
    lui	$a2,0x100
    lbu	$t8,3225($s1)
    beqz	$t8,.L0d9bdb64
    nop
    # Line 271
    lw	$t9,31336($s1)
    lw	$a2,31308($s1)
    addiu	$a1,$s1,31228
    move	$a0,$s1
    lui	$at,0x100
    jalr	$t9
    # Line 270
    sw	$at,31328($s1)
    lui	$a2,0x100
    # Line 268
    b	.L0d9bdb64
    # Line 271
    lw	$a0,31328($s1)
.L0d9bdc74:
    # Line 253
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bdbb0
    ld	$ra,24($sp)
.L0d9bdc90:
    b	.L0d9bdb64
    # Line 268
    lui	$a2,0x100
.end __glim_DepthFunc

# Function: __glim_DepthMask
# Declared: Line 301 (Source lines: 302-319)
# Address: 0x0d9bdca0 - 0x0d9bdd68 (Size: 200 bytes, Frame: 32)
.globl __glim_DepthMask
.ent __glim_DepthMask
__glim_DepthMask:
    # Line 302
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 303
    lw	$v0,4120($zero)
    # Line 302
    sd	$s1,0($sp)
    # Line 303
    li	$v1,1
    # Line 302
    lui	$at,0x9
    move	$s1,$a0
    # Line 303
    lw	$s0,4112($zero)
    # Line 302
    addiu	$at,$at,12524
    sd	$gp,16($sp)
    # Line 303
    beq	$v0,$v1,.L0d9bdd34
    # Line 302
    addu	$gp,$t9,$at
    # Line 303
    lw	$v0,1792($s0)
    andi	$v0,$v0,0x4000
    beqz	$v0,.L0d9bdcfc
    nop
    beqz	$a0,.L0d9bdd54
    # Line 312
    nop	# was lw $t9, -23436($gp) # &__glReadjustZCounts
    # Line 303
    lbu	$v1,1636($s0)
    beq	$v1,$a0,.L0d9bdd00
    # Line 319
    ld	$gp,16($sp)
    # Line 309
    lw	$a0,31308($s0)
    sw	$a0,31312($s0)
.L0d9bdcfc:
    # Line 319
    ld	$gp,16($sp)
.L0d9bdd00:
    # Line 316
    sb	$s1,1636($s0)
    # Line 318
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a1,11756($s0)
    # Line 319
    ld	$s1,0($sp)
    # Line 318
    ori	$a1,$a1,0x80
    sw	$a1,11756($s0)
    # Line 319
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bdd28:
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bdd34:
    # Line 303
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bdd28
    ld	$ra,24($sp)
.L0d9bdd54:
    sd	$ra,24($sp)
    # Line 312
    jalr	$t9
    move	$a0,$s0
    b	.L0d9bdcfc
    ld	$ra,24($sp)
.end __glim_DepthMask

# Function: __glim_DrawBuffer
# Declared: Line 321 (Source lines: 322-370)
# Address: 0x0d9bdd70 - 0x0d9bdf4c (Size: 476 bytes, Frame: 16)
.globl __glim_DrawBuffer
.ent __glim_DrawBuffer
__glim_DrawBuffer:
    # Line 322
    addiu	$sp,$sp,-16
    # Line 324
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 322
    lui	$v1,0x9
    sd	$ra,8($sp)
    addiu	$v1,$v1,12316
    sd	$gp,0($sp)
    # Line 324
    beq	$at,$v0,.L0d9bdf38
    # Line 322
    addu	$gp,$t9,$v1
    # Line 326
    sltiu	$a1,$a0,1030
    bnez	$a1,.L0d9bddf8
    sltiu	$t2,$a0,1026
    sltiu	$a3,$a0,1031
    bnez	$a3,.L0d9bde40
    sltiu	$a7,$a0,1037
    sltiu	$a4,$a0,1034
    li	$ra,1035
    sltiu	$a6,$a0,1036
    bnez	$a4,.L0d9bde28
    sltiu	$a5,$a0,1035
    bnez	$a5,.L0d9bdddc
    nop
    bnez	$a6,.L0d9bdf18
    nop
    beqz	$a7,.L0d9bdea4
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bdddc:
    # Line 360
    lw	$t1,3296($a2)
    addiu	$t0,$a0,-1033
    slt	$t0,$t0,$t1
    beqz	$t0,.L0d9bdeec
    # Line 334
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 364
    b	.L0d9bde54
    # Line 363
    sw	$a0,1888($a2)
.L0d9bddf8:
    # Line 326
    bnez	$t2,.L0d9bde88
    sltiu	$a5,$a0,1024
    sltiu	$t3,$a0,1027
    bnez	$t3,.L0d9bdebc
    sltiu	$t8,$a0,1028
    li	$t0,1029
    bnez	$t8,.L0d9bdefc
    sltiu	$t9,$a0,1029
    beqz	$t9,.L0d9bdeb4
    # Line 338
    li	$ra,1028
.L0d9bde20:
    # Line 339
    b	.L0d9bde54
    # Line 338
    sw	$ra,1888($a2)
.L0d9bde28:
    # Line 326
    li	$t3,1031
    sltiu	$at,$a0,1032
    bnez	$at,.L0d9bdee0
    sltiu	$v0,$a0,1033
    beqz	$v0,.L0d9bdf28
    li	$at,1033
.L0d9bde40:
    # Line 342
    lbu	$v1,3222($a2)
    beqz	$v1,.L0d9bdf10
    # Line 343
    li	$t9,1028
    # Line 345
    li	$a1,1032
    sw	$a1,1888($a2)
.L0d9bde54:
    # Line 369
    sw	$a0,1892($a2)
    # Line 370
    li	$a4,2
    sw	$a4,4120($zero)
    ld	$ra,8($sp)
    lw	$a3,11756($a2)
    # Line 367
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 370
    ori	$a3,$a3,0x1
    # Line 367
    jr	$ra
    # Line 370
    sw	$a3,11756($a2)
.L0d9bde7c:
    # Line 367
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bde88:
    # Line 326
    li	$a7,1025
    bnez	$a5,.L0d9bded0
    sltiu	$a6,$a0,1025
    bnez	$a6,.L0d9bde20
    # Line 338
    li	$ra,1028
    # Line 326
    beq	$a0,$a7,.L0d9bdee8
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bdea4:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bde7c
    ld	$ra,8($sp)
.L0d9bdeb4:
    # Line 326
    bne	$a0,$t0,.L0d9bdea4
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bdebc:
    # Line 350
    lbu	$t1,3222($a2)
    beqz	$t1,.L0d9bdee8
    # Line 353
    li	$t2,1029
    # Line 354
    b	.L0d9bde54
    # Line 353
    sw	$t2,1888($a2)
.L0d9bded0:
    # Line 326
    bnez	$a0,.L0d9bdea4
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
    b	.L0d9bde54
    # Line 328
    sw	$zero,1888($a2)
.L0d9bdee0:
    # Line 326
    bne	$a0,$t3,.L0d9bdea4
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bdee8:
    # Line 334
    # lw $t9, -26452($gp) # &__glSetError
.L0d9bdeec:
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bde7c
    ld	$ra,8($sp)
.L0d9bdefc:
    # Line 326
    li	$t8,1027
    beq	$a0,$t8,.L0d9bdeec
    # Line 334
    nop	# was lw $t9, -26452($gp) # &__glSetError
    b	.L0d9bdea4
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bdf10:
    # Line 343
    b	.L0d9bde54
    sw	$t9,1888($a2)
.L0d9bdf18:
    # Line 326
    beq	$a0,$ra,.L0d9bdddc
    nop
    b	.L0d9bdea4
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bdf28:
    # Line 326
    beq	$a0,$at,.L0d9bdddc
    nop
    b	.L0d9bdea4
    # Line 366
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bdf38:
    # Line 324
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bde7c
    ld	$ra,8($sp)
.end __glim_DrawBuffer

# Function: __glim_Fogfv
# Declared: Line 373 (Source lines: 374-438)
# Address: 0x0d9bdf50 - 0x0d9be13c (Size: 492 bytes, Frame: 32)
.globl __glim_Fogfv
.ent __glim_Fogfv
__glim_Fogfv:
    # Line 374
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$a2,$a1
    # Line 377
    li	$a7,2917
    # Line 375
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a4,1
    # Line 374
    lui	$v0,0x9
    # Line 377
    li	$a6,2913
    sd	$ra,16($sp)
    # Line 374
    addiu	$v0,$v0,11836
    sd	$gp,0($sp)
    # Line 375
    beq	$at,$a4,.L0d9be114
    # Line 374
    addu	$gp,$t9,$v0
    # Line 377
    li	$v1,2918
    beq	$a0,$v1,.L0d9be0f8
    li	$a1,2914
    beq	$a0,$a1,.L0d9be07c
    li	$a3,2916
    beq	$a0,$a3,.L0d9be09c
    # Line 406
    li	$t0,2048
    # Line 377
    li	$a5,2915
    beq	$a0,$a5,.L0d9be0b0
    # Line 406
    li	$a1,2049
    # Line 377
    beq	$a0,$a6,.L0d9be0c4
    nop
    beq	$a0,$a7,.L0d9bdfd0
    # Line 418
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9be034
    ld	$ra,16($sp)
.L0d9bdfd0:
    # Line 406
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    sll	$a0,$a0,0x0
    beq	$a0,$t0,.L0d9be044
    nop
    beq	$a0,$a1,.L0d9be048
    li	$a1,9729
    beq	$a1,$a0,.L0d9be048
    # Line 413
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9be034
    ld	$ra,16($sp)
.L0d9be008:
    # Line 433
    swc1	$f1,1620($s0)
.L0d9be00c:
    # Line 437
    li	$a3,2
.L0d9be010:
    sw	$a3,4120($zero)
    lw	$a2,11756($s0)
    ld	$ra,16($sp)
    # Line 438
    ld	$gp,0($sp)
    # Line 437
    ori	$a2,$a2,0x1
    sw	$a2,11756($s0)
    # Line 438
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be034:
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be044:
    # Line 414
    li	$a1,9729
.L0d9be048:
    # Line 410
    sw	$a0,1588($s0)
.L0d9be04c:
    # Line 420
    bne	$a1,$a0,.L0d9be010
    # Line 437
    li	$a3,2
    # Line 420
    lwc1	$f4,1616($s0)
    lwc1	$f5,1612($s0)
    c.eq.s	$f5,$f4
    bc1t	.L0d9be008
    # Line 433
    mtc1	$zero,$f1
    # Line 427
    lwc1	$f2,3544($s0)
    sub.s	$f3,$f4,$f5
    div.s	$f2,$f2,$f3
    b	.L0d9be00c
    swc1	$f2,1620($s0)
.L0d9be07c:
    # Line 382
    mtc1	$zero,$f5
    lwc1	$f4,0($a2)
    c.lt.s $f4,$f5
    bc1t .L0d9be128
    # Line 387
    li	$a1,9729
    lw	$a0,1588($s0)
    b	.L0d9be04c
    # Line 386
    swc1	$f4,1608($s0)
.L0d9be09c:
    # Line 390
    lwc1	$f6,0($a2)
    # Line 391
    lw	$a0,1588($s0)
    li	$a1,9729
    b	.L0d9be04c
    # Line 390
    swc1	$f6,1616($s0)
.L0d9be0b0:
    # Line 394
    lwc1	$f7,0($a2)
    # Line 395
    lw	$a0,1588($s0)
    li	$a1,9729
    b	.L0d9be04c
    # Line 394
    swc1	$f7,1612($s0)
.L0d9be0c4:
    # Line 402
    lwc1	$f9,0($a2)
    lw	$a6,3252($s0)
    trunc.w.s	$f9,$f9
    sllv	$a6,$a4,$a6
    mfc1	$a5,$f9
    addiu	$a6,$a6,-1
    and	$a5,$a5,$a6
    mtc1	$a5,$f8
    cvt.s.w	$f8,$f8
    # Line 404
    lw	$a0,1588($s0)
    li	$a1,9729
    b	.L0d9be04c
    # Line 402
    swc1	$f8,1624($s0)
.L0d9be0f8:
    # Line 379
    # lw $t9, -25836($gp) # &__glClampAndScaleColorf
    move	$a0,$s0
    jal	__glClampAndScaleColorf
    addiu	$a1,$s0,1592
    li	$a1,9729
    b	.L0d9be04c
    lw	$a0,1588($s0)
.L0d9be114:
    # Line 375
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9be034
    ld	$ra,16($sp)
.L0d9be128:
    # Line 383
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9be034
    ld	$ra,16($sp)
.end __glim_Fogfv

# Function: __glim_Fogf
# Declared: Line 440 (Source lines: 441-455)
# Address: 0x0d9be140 - 0x0d9be1b8 (Size: 120 bytes, Frame: 32)
.globl __glim_Fogf
.ent __glim_Fogf
__glim_Fogf:
    # Line 441
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # Line 443
    li	$at,2913
    # Line 441
    lui	$v0,0x9
    sd	$ra,8($sp)
    addiu	$v0,$v0,11340
    sd	$gp,0($sp)
    # Line 443
    beq	$a0,$at,.L0d9be1a4
    # Line 441
    addu	$gp,$t9,$v0
    # Line 443
    li	$v1,2914
    beq	$a0,$v1,.L0d9be1a4
    li	$a1,2915
    beq	$a0,$a1,.L0d9be1a4
    li	$a2,2916
    beq	$a0,$a2,.L0d9be1a8
    # Line 449
    nop	# was lw $t9, -27112($gp) # &__glim_Fogfv
    # Line 443
    li	$a3,2917
    beq	$a0,$a3,.L0d9be1a4
    # Line 452
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9be198:
    # Line 455
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be1a4:
    # Line 449
    # lw $t9, -27112($gp) # &__glim_Fogfv
.L0d9be1a8:
    bal __glim_Fogfv
    addiu	$a1,$sp,24
    b	.L0d9be198
    ld	$ra,8($sp)
.end __glim_Fogf

# Function: __glim_Fogiv
# Declared: Line 457 (Source lines: 458-517)
# Address: 0x0d9be1c0 - 0x0d9be3b4 (Size: 500 bytes, Frame: 32)
.globl __glim_Fogiv
.ent __glim_Fogiv
__glim_Fogiv:
    # Line 458
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    move	$a2,$a1
    # Line 461
    li	$a7,2917
    # Line 459
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a5,1
    # Line 458
    lui	$v0,0x9
    # Line 461
    li	$a6,2913
    sd	$ra,16($sp)
    # Line 458
    addiu	$v0,$v0,11212
    sd	$gp,8($sp)
    # Line 459
    beq	$at,$a5,.L0d9be384
    # Line 458
    addu	$gp,$t9,$v0
    # Line 461
    li	$v1,2918
    beq	$a0,$v1,.L0d9be36c
    # Line 463
    nop	# was lw $t9, -25824($gp) # &__glClampAndScaleColori
    # Line 461
    li	$a1,2914
    beq	$a0,$a1,.L0d9be2e0
    li	$a3,2916
    beq	$a0,$a3,.L0d9be308
    # Line 485
    li	$t0,2048
    # Line 461
    li	$a4,2915
    beq	$a0,$a4,.L0d9be324
    # Line 485
    li	$t1,2049
    # Line 461
    beq	$a0,$a6,.L0d9be340
    # Line 485
    li	$a4,9729
    # Line 461
    beq	$a0,$a7,.L0d9be248
    # Line 497
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9be2d4
    ld	$ra,16($sp)
.L0d9be248:
    # Line 485
    lw	$a1,0($a2)
    beq	$a1,$t0,.L0d9be278
    # Line 489
    move	$a0,$a1
    # Line 485
    beq	$a1,$t1,.L0d9be27c
    nop
    beq	$a1,$a4,.L0d9be27c
    # Line 492
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9be2d4
    ld	$ra,16($sp)
.L0d9be278:
    # Line 493
    li	$a4,9729
.L0d9be27c:
    # Line 489
    sw	$a1,1588($s0)
.L0d9be280:
    # Line 499
    bne	$a4,$a0,.L0d9be2b0
    # Line 516
    li	$t3,2
    # Line 499
    lwc1	$f4,1616($s0)
    lwc1	$f5,1612($s0)
    c.eq.s	$f5,$f4
    bc1t	.L0d9be300
    # Line 512
    mtc1	$zero,$f3
    # Line 506
    lwc1	$f0,3544($s0)
    sub.s	$f1,$f4,$f5
    div.s	$f0,$f0,$f1
    swc1	$f0,1620($s0)
.L0d9be2ac:
    # Line 516
    li	$t3,2
.L0d9be2b0:
    sw	$t3,4120($zero)
    lw	$t2,11756($s0)
    ld	$ra,16($sp)
    # Line 517
    ld	$gp,8($sp)
    # Line 516
    ori	$t2,$t2,0x1
    sw	$t2,11756($s0)
    # Line 517
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be2d4:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be2e0:
    # Line 466
    lw	$a1,0($a2)
    # Line 471
    li	$a4,9729
    # Line 466
    bltz	$a1,.L0d9be39c
    # Line 470
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    # Line 471
    lw	$a0,1588($s0)
    b	.L0d9be280
    # Line 470
    swc1	$f2,1608($s0)
.L0d9be300:
    b	.L0d9be2ac
    # Line 512
    swc1	$f3,1620($s0)
.L0d9be308:
    # Line 474
    lw	$t8,0($a2)
    mtc1	$t8,$f4
    cvt.s.w	$f4,$f4
    # Line 475
    lw	$a0,1588($s0)
    li	$a4,9729
    b	.L0d9be280
    # Line 474
    swc1	$f4,1616($s0)
.L0d9be324:
    # Line 478
    lw	$t9,0($a2)
    mtc1	$t9,$f5
    cvt.s.w	$f5,$f5
    # Line 479
    lw	$a0,1588($s0)
    li	$a4,9729
    b	.L0d9be280
    # Line 478
    swc1	$f5,1612($s0)
.L0d9be340:
    # Line 481
    lw	$at,3252($s0)
    lw	$ra,0($a2)
    sllv	$at,$a5,$at
    addiu	$at,$at,-1
    and	$ra,$ra,$at
    mtc1	$ra,$f6
    cvt.s.w	$f6,$f6
    # Line 483
    lw	$a0,1588($s0)
    li	$a4,9729
    b	.L0d9be280
    # Line 481
    swc1	$f6,1624($s0)
.L0d9be36c:
    # Line 463
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,1592
    li	$a4,9729
    b	.L0d9be280
    lw	$a0,1588($s0)
.L0d9be384:
    # Line 459
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9be2d4
    ld	$ra,16($sp)
.L0d9be39c:
    # Line 467
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d9be2d4
    ld	$ra,16($sp)
.end __glim_Fogiv

# Function: __glim_Fogi
# Declared: Line 519 (Source lines: 520-534)
# Address: 0x0d9be3c0 - 0x0d9be434 (Size: 116 bytes, Frame: 32)
.globl __glim_Fogi
.ent __glim_Fogi
__glim_Fogi:
    # Line 520
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 522
    li	$at,2913
    # Line 520
    lui	$v0,0x9
    sw	$a1,28($sp)
    addiu	$v0,$v0,10700
    sd	$gp,0($sp)
    # Line 522
    beq	$a0,$at,.L0d9be420
    # Line 520
    addu	$gp,$t9,$v0
    # Line 522
    li	$v1,2914
    beq	$a0,$v1,.L0d9be420
    li	$a1,2915
    beq	$a0,$a1,.L0d9be420
    li	$a2,2916
    beq	$a0,$a2,.L0d9be420
    li	$a3,2917
    beq	$a0,$a3,.L0d9be420
    # Line 531
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9be414:
    # Line 534
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be420:
    # Line 528
    # lw $t9, -27104($gp) # &__glim_Fogiv
    bal __glim_Fogiv
    addiu	$a1,$sp,28
    b	.L0d9be414
    ld	$ra,8($sp)
.end __glim_Fogi

# Function: __glim_FrontFace
# Declared: Line 536 (Source lines: 537-550)
# Address: 0x0d9be440 - 0x0d9be4d4 (Size: 148 bytes, Frame: 16)
.globl __glim_FrontFace
.ent __glim_FrontFace
__glim_FrontFace:
    # Line 549
    li	$a5,2
    # Line 537
    addiu	$sp,$sp,-16
    # Line 538
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 537
    lui	$v1,0x9
    # Line 540
    li	$a3,2305
    sd	$ra,8($sp)
    # Line 537
    addiu	$v1,$v1,10572
    sd	$gp,0($sp)
    # Line 538
    beq	$at,$v0,.L0d9be4c0
    # Line 537
    addu	$gp,$t9,$v1
    # Line 540
    li	$a1,2304
    beq	$a0,$a1,.L0d9be49c
    nop
    beq	$a0,$a3,.L0d9be49c
    # Line 545
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9be490:
    # Line 550
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9be49c:
    # Line 548
    sw	$a0,496($a2)
    # Line 549
    sw	$a5,4120($zero)
    ld	$ra,8($sp)
    lw	$a4,11756($a2)
    # Line 550
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 549
    ori	$a4,$a4,0x4
    # Line 550
    jr	$ra
    # Line 549
    sw	$a4,11756($a2)
.L0d9be4c0:
    # Line 538
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9be490
    ld	$ra,8($sp)
.end __glim_FrontFace

# Function: __glim_Hint
# Declared: Line 552 (Source lines: 553-596)
# Address: 0x0d9be4e0 - 0x0d9be698 (Size: 440 bytes, Frame: 16)
.globl __glim_Hint
.ent __glim_Hint
__glim_Hint:
    # Line 567
    sltiu	$t2,$a0,3153
    # Line 553
    addiu	$sp,$sp,-16
    # Line 555
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 553
    lui	$v1,0x9
    # Line 567
    sltiu	$t3,$a0,3154
    sd	$ra,8($sp)
    # Line 553
    addiu	$v1,$v1,10412
    sd	$gp,0($sp)
    # Line 555
    beq	$at,$v0,.L0d9be684
    # Line 553
    addu	$gp,$t9,$v1
    # Line 558
    li	$a2,4352
    # Line 567
    li	$v0,3152
    # Line 558
    beq	$a1,$a2,.L0d9be54c
    # Line 577
    li	$at,2
    # Line 558
    li	$a4,4353
    beq	$a1,$a4,.L0d9be550
    # Line 567
    sltiu	$a6,$a0,3155
    # Line 558
    li	$a5,4354
    beq	$a1,$a5,.L0d9be550
    # Line 567
    sltiu	$a6,$a0,3155
    # Line 564
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9be5f4
    ld	$ra,8($sp)
.L0d9be54c:
    # Line 567
    sltiu	$a6,$a0,3155
.L0d9be550:
    li	$a4,0x8316
    li	$a2,3156
    sltu	$t1,$a4,$a0
    bnez	$a6,.L0d9be588
    sltu	$t0,$a0,$a4
    sltiu	$a7,$a0,3156
    bnez	$a7,.L0d9be624
    li	$a6,0x8322
    bnez	$t0,.L0d9be614
    nop
    bnez	$t1,.L0d9be64c
    nop
    # Line 588
    b	.L0d9be5d0
    # Line 587
    sw	$a1,1924($a3)
.L0d9be588:
    # Line 567
    li	$t8,3154
    bnez	$t2,.L0d9be5c4
    ld	$ra,8($sp)
    bnez	$t3,.L0d9be65c
    nop
    bne	$a0,$t8,.L0d9be604
    # Line 593
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 576
    sw	$a1,1904($a3)
    # Line 577
    sw	$at,4120($zero)
    lw	$t9,11756($a3)
    # Line 594
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 577
    ori	$t9,$t9,0x2
    # Line 594
    jr	$ra
    # Line 577
    sw	$t9,11756($a3)
.L0d9be5c4:
    # Line 567
    bne	$a0,$v0,.L0d9be604
    # Line 593
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 569
    sw	$a1,1896($a3)
.L0d9be5d0:
    # Line 596
    li	$a0,2
    sw	$a0,4120($zero)
    ld	$ra,8($sp)
    lw	$v1,11756($a3)
    # Line 594
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 596
    ori	$v1,$v1,0x1
    # Line 594
    jr	$ra
    # Line 596
    sw	$v1,11756($a3)
.L0d9be5f4:
    # Line 594
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 593
    # lw $t9, -26452($gp) # &__glSetError
.L0d9be604:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9be5f4
    ld	$ra,8($sp)
.L0d9be614:
    # Line 567
    bne	$a0,$a2,.L0d9be604
    # Line 593
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 585
    b	.L0d9be5d0
    # Line 584
    sw	$a1,1912($a3)
.L0d9be624:
    # Line 580
    sw	$a1,1908($a3)
    # Line 581
    li	$a5,2
    sw	$a5,4120($zero)
    ld	$ra,8($sp)
    lw	$a4,11756($a3)
    # Line 594
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 581
    ori	$a4,$a4,0x4
    # Line 594
    jr	$ra
    # Line 581
    sw	$a4,11756($a3)
.L0d9be64c:
    # Line 567
    bne	$a0,$a6,.L0d9be604
    # Line 593
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 591
    b	.L0d9be5d0
    # Line 590
    sw	$a1,1928($a3)
.L0d9be65c:
    # Line 572
    sw	$a1,1900($a3)
    # Line 573
    li	$t0,2
    sw	$t0,4120($zero)
    ld	$ra,8($sp)
    lw	$a7,11756($a3)
    # Line 594
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 573
    ori	$a7,$a7,0x8
    # Line 594
    jr	$ra
    # Line 573
    sw	$a7,11756($a3)
.L0d9be684:
    # Line 555
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9be5f4
    ld	$ra,8($sp)
.end __glim_Hint

# Function: __glim_IndexMask
# Declared: Line 599 (Source lines: 600-606)
# Address: 0x0d9be6a0 - 0x0d9be714 (Size: 116 bytes, Frame: 16)
.globl __glim_IndexMask
.ent __glim_IndexMask
__glim_IndexMask:
    # Line 601
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 600
    lui	$at,0x9
    # Line 601
    lw	$a2,4112($zero)
    # Line 600
    addiu	$sp,$sp,-16
    addiu	$at,$at,9964
    sd	$gp,0($sp)
    # Line 601
    beq	$v0,$v1,.L0d9be6fc
    # Line 600
    addu	$gp,$t9,$at
    # Line 603
    lw	$a1,30736($a2)
    and	$a0,$a1,$a0
    # Line 604
    sw	$a0,1880($a2)
    # Line 605
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a2)
    # Line 606
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 605
    ori	$v0,$v0,0x1
    # Line 606
    jr	$ra
    # Line 605
    sw	$v0,11756($a2)
.L0d9be6f0:
    # Line 606
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9be6fc:
    # Line 601
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9be6f0
    ld	$ra,8($sp)
.end __glim_IndexMask

# Function: __glTransformLightDirection
# Declared: Line 608 (Source lines: 609-633)
# Address: 0x0d9be720 - 0x0d9be854 (Size: 308 bytes, Frame: 208)
.globl __glTransformLightDirection
.ent __glTransformLightDirection
__glTransformLightDirection:
    # Line 615
    lwc1	$f8,80($a1)
    # Line 612
    lw	$a3,1584($a0)
    # Line 609
    addiu	$sp,$sp,-80
    # Line 612
    li	$a2,0x8d3d
    # Line 615
    swc1	$f8,0($sp)
    # Line 612
    dsll	$a2,$a2,0x10
    subu	$a3,$a1,$a3
    # Line 616
    lwc1	$f7,84($a1)
    # Line 612
    negu	$v1,$a3
    srl	$at,$a3,0x1f
    ori	$a2,$a2,0xcb09
    movz	$v1,$a3,$at
    # Line 616
    swc1	$f7,4($sp)
    # Line 612
    multu	$v1,$a2
    # Line 617
    lwc1	$f5,88($a1)
    swc1	$f5,8($sp)
    mtc1	$zero,$f0
    lwc1	$f6,60($a1)
    # Line 609
    move	$a4,$a1
    # Line 622
    mtc1	$zero,$f4
    # Line 609
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 617
    c.eq.s	$f6,$f0
    # Line 612
    mfhi	$v0
    sd	$gp,40($sp)
    # Line 609
    lui	$v1,0x9
    # Line 612
    sra	$v0,$v0,0x6
    # Line 619
    lwc1	$f10,48($a1)
    # Line 609
    addiu	$v1,$v1,9836
    # Line 612
    negu	$a3,$v0
    # Line 619
    lwc1	$f9,56($a1)
    # Line 609
    addu	$gp,$t9,$v1
    # Line 617
    bc1t	.L0d9be7c8
    # Line 612
    movz	$a3,$v0,$at
    # Line 619
    lwc1	$f4,52($a1)
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f10,$f8
    madd.s	$f4,$f4,$f9,$f5
    neg.s	$f4,$f4
    sd	$s2,56($sp)
    b	.L0d9be7cc
    div.s	$f4,$f4,$f6
.L0d9be7c8:
    sd	$s2,56($sp)
.L0d9be7cc:
    # Line 624
    swc1	$f4,12($sp)
    # Line 626
    lw	$s2,29660($s0)
    lbu	$a5,268($s2)
    sd	$a3,24($sp)
    beqz	$a5,.L0d9be7fc
    sd	$ra,48($sp)
    # Line 628
    lw	$t9,11900($s0)
    move	$a0,$s0
    sd	$a4,64($sp)
    jalr	$t9
    move	$a1,$s2
    ld	$a4,64($sp)
.L0d9be7fc:
    # Line 630
    lw	$t9,168($s2)
    addiu	$a2,$s2,88
    addiu	$a1,$sp,0
    addiu	$a0,$a4,80
    jalr	$t9
    sd	$a0,16($sp)
    # Line 631
    ld	$a3,24($sp)
    lw	$t9,11904($s0)
    sll	$a2,$a3,0x3
    lw	$a0,28096($s0)
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x5
    addu	$a0,$a0,$a2
    ld	$a1,16($sp)
    jalr	$t9
    addiu	$a0,$a0,132
    ld	$ra,48($sp)
    ld	$s0,32($sp)
    ld	$s2,56($sp)
    # Line 633
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glTransformLightDirection

# Function: __glim_Lightfv
# Declared: Line 635 (Source lines: 636-714)
# Address: 0x0d9be860 - 0x0d9beadc (Size: 636 bytes, Frame: 32)
.globl __glim_Lightfv
.ent __glim_Lightfv
__glim_Lightfv:
    # Line 636
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 639
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 636
    lui	$v1,0x9
    move	$a4,$a2
    sd	$ra,16($sp)
    addiu	$v1,$v1,9516
    sd	$gp,8($sp)
    # Line 639
    beq	$at,$v0,.L0d9beac4
    # Line 636
    addu	$gp,$t9,$v1
    # Line 641
    lw	$a3,3588($s0)
    addiu	$a2,$a0,-16384
    sltu	$a2,$a2,$a3
    beqz	$a2,.L0d9be8f4
    # Line 644
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 648
    la	$a2,sub_0da40000
    addiu	$a3,$a1,-4608
    sll	$a6,$a0,0x3
    sltiu	$a7,$a3,10
    subu	$a6,$a6,$a0
    addiu	$a2,$a2,18544
    sll	$a6,$a6,0x2
    sll	$a3,$a3,0x2
    lw	$a5,1584($s0)
    addu	$a6,$a6,$a0
    addu	$a2,$a2,$a3
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lui	$a6,0x1d
    beqz	$a7,.L0d9be8f0
    subu	$a5,$a5,$a6
    lw	$a7,0($a2)
    jr	$a7
    # Line 699
    mtc1	$zero,$f1
.L0d9be8f0:
    # Line 644
    # lw $t9, -26452($gp) # &__glSetError
.L0d9be8f4:
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9be944
    ld	$ra,16($sp)
.L0d9be908:
    # Line 654
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    move	$a2,$a4
    jal	__glScaleColorf
    addiu	$a1,$a5,16
.L0d9be91c:
    # Line 713
    li	$t1,2
.L0d9be920:
    sw	$t1,4120($zero)
    lw	$t0,11756($s0)
    ld	$ra,16($sp)
    # Line 714
    ld	$gp,8($sp)
    # Line 713
    ori	$t0,$t0,0x20
    sw	$t0,11756($s0)
    # Line 714
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be944:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9be950:
    # Line 651
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    move	$a1,$a5
    jal	__glScaleColorf
    move	$a2,$a4
    b	.L0d9be920
    # Line 713
    li	$t1,2
.L0d9be96c:
    # Line 705
    mtc1	$zero,$f0
    lwc1	$f4,0($a4)
    c.lt.s	$f4,$f0
    bc1t	.L0d9beab0
    # Line 681
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 709
    b	.L0d9be91c
    # Line 708
    swc1	$f4,112($a5)
.L0d9be988:
    # Line 699
    lwc1	$f4,0($a4)
    c.lt.s $f4,$f1
    bc1t .L0d9beab0
    # Line 681
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 703
    b	.L0d9be91c
    # Line 702
    swc1	$f4,108($a5)
.L0d9be9a0:
    # Line 693
    mtc1	$zero,$f2
    lwc1	$f4,0($a4)
    c.lt.s $f4,$f2
    bc1t .L0d9beab0
    # Line 681
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 697
    b	.L0d9be91c
    # Line 696
    swc1	$f4,104($a5)
.L0d9be9bc:
    # Line 687
    lwc1	$f3,_lit_43340000
    lwc1	$f4,0($a4)
    c.eq.s $f4,$f3
    mtc1	$zero,$f5
    bc1t .L0d9be9ec
    lwc1	$f6,_lit_42b40000
    c.lt.s $f4,$f5
    bc1t .L0d9beab0
    # Line 681
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 687
    c.lt.s $f6,$f4
    bc1t .L0d9beab0
    # Line 681
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9be9ec:
    # Line 691
    b	.L0d9be91c
    # Line 690
    swc1	$f4,100($a5)
.L0d9be9f4:
    # Line 679
    mtc1	$zero,$f7
    lwc1	$f4,0($a4)
    c.lt.s $f4,$f7
    bc1t .L0d9beaac
    lwc1	$f8,_lit_43000000
    c.lt.s $f8,$f4
    bc1t .L0d9beab0
    # Line 681
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 685
    b	.L0d9be91c
    # Line 684
    swc1	$f4,96($a5)
.L0d9bea1c:
    # Line 672
    lwc1	$f12,0($a4)
    # Line 675
    lwc1	$f10,_lit_3f800000
    # Line 672
    swc1	$f12,80($a5)
    # Line 673
    lwc1	$f11,4($a4)
    # Line 676
    # lw $t9, -27084($gp) # &__glTransformLightDirection
    # Line 673
    swc1	$f11,84($a5)
    # Line 674
    lwc1	$f9,8($a4)
    # Line 676
    move	$a1,$a5
    # Line 675
    swc1	$f10,92($a5)
    # Line 676
    move	$a0,$s0
    bal __glTransformLightDirection
    # Line 674
    swc1	$f9,88($a5)
    b	.L0d9be920
    # Line 713
    li	$t1,2
.L0d9bea54:
    # Line 660
    lwc1	$f16,0($a4)
    swc1	$f16,48($a5)
    # Line 661
    lwc1	$f15,4($a4)
    swc1	$f15,52($a5)
    # Line 662
    lwc1	$f14,8($a4)
    swc1	$f14,56($a5)
    # Line 663
    lwc1	$f13,12($a4)
    swc1	$f13,60($a5)
    # Line 668
    lw	$a2,29660($s0)
    # Line 669
    lw	$t9,80($a2)
    addiu	$a1,$a5,48
    jal	__glTransformLightDirection
    addiu	$a0,$a5,64
    b	.L0d9be920
    # Line 713
    li	$t1,2
.L0d9bea90:
    # Line 657
    # lw $t9, -25840($gp) # &__glScaleColorf
    move	$a0,$s0
    move	$a2,$a4
    jal	__glScaleColorf
    addiu	$a1,$a5,32
    b	.L0d9be920
    # Line 713
    li	$t1,2
.L0d9beaac:
    # Line 681
    # lw $t9, -26452($gp) # &__glSetError
.L0d9beab0:
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d9be944
    ld	$ra,16($sp)
.L0d9beac4:
    # Line 639
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9be944
    ld	$ra,16($sp)
.end __glim_Lightfv

# Function: __glim_Lightf
# Declared: Line 716 (Source lines: 717-731)
# Address: 0x0d9beae0 - 0x0d9beb64 (Size: 132 bytes, Frame: 48)
.globl __glim_Lightf
.ent __glim_Lightf
__glim_Lightf:
    # Line 717
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 719
    li	$at,4613
    # Line 717
    lui	$v0,0x9
    sd	$ra,8($sp)
    addiu	$v0,$v0,8876
    sd	$gp,0($sp)
    # Line 719
    beq	$a1,$at,.L0d9beb50
    # Line 717
    addu	$gp,$t9,$v0
    # Line 719
    li	$v1,4614
    beq	$a1,$v1,.L0d9beb54
    # Line 725
    nop	# was lw $t9, -27080($gp) # &__glim_Lightfv
    # Line 719
    li	$a2,4615
    beq	$a1,$a2,.L0d9beb54
    # Line 725
    nop	# was lw $t9, -27080($gp) # &__glim_Lightfv
    # Line 719
    li	$a3,4616
    beq	$a1,$a3,.L0d9beb54
    # Line 725
    nop	# was lw $t9, -27080($gp) # &__glim_Lightfv
    # Line 719
    li	$a4,4617
    beq	$a1,$a4,.L0d9beb54
    # Line 725
    nop	# was lw $t9, -27080($gp) # &__glim_Lightfv
    # Line 728
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9beb44:
    # Line 731
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9beb50:
    # Line 725
    # lw $t9, -27080($gp) # &__glim_Lightfv
.L0d9beb54:
    bal __glim_Lightfv
    addiu	$a2,$sp,32
    b	.L0d9beb44
    ld	$ra,8($sp)
.end __glim_Lightf

# Function: __glim_Lightiv
# Declared: Line 733 (Source lines: 734-811)
# Address: 0x0d9beb70 - 0x0d9bee0c (Size: 668 bytes, Frame: 32)
.globl __glim_Lightiv
.ent __glim_Lightiv
__glim_Lightiv:
    # Line 734
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 737
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 734
    lui	$v1,0x9
    move	$a4,$a2
    sd	$ra,16($sp)
    addiu	$v1,$v1,8732
    sd	$gp,8($sp)
    # Line 737
    beq	$at,$v0,.L0d9bedf4
    # Line 734
    addu	$gp,$t9,$v1
    # Line 739
    lw	$a3,3588($s0)
    addiu	$a2,$a0,-16384
    sltu	$a2,$a2,$a3
    beqz	$a2,.L0d9bec04
    # Line 742
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 746
    la	$a2,sub_0da40000
    addiu	$a3,$a1,-4608
    sll	$a6,$a0,0x3
    sltiu	$a7,$a3,10
    subu	$a6,$a6,$a0
    addiu	$a2,$a2,18584
    sll	$a6,$a6,0x2
    sll	$a3,$a3,0x2
    lw	$a5,1584($s0)
    addu	$a6,$a6,$a0
    addu	$a2,$a2,$a3
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    lui	$a6,0x1d
    beqz	$a7,.L0d9bec00
    subu	$a5,$a5,$a6
    lw	$a7,0($a2)
    jr	$a7
    # Line 749
    nop	# was lw $t9, -25828($gp) # &__glScaleColori
.L0d9bec00:
    # Line 742
    # lw $t9, -26452($gp) # &__glSetError
.L0d9bec04:
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bec54
    ld	$ra,16($sp)
.L0d9bec18:
    # Line 752
    # lw $t9, -25828($gp) # &__glScaleColori
    move	$a0,$s0
    move	$a2,$a4
    jal	__glScaleColori
    addiu	$a1,$a5,16
.L0d9bec2c:
    # Line 810
    li	$t1,2
.L0d9bec30:
    sw	$t1,4120($zero)
    lw	$t0,11756($s0)
    ld	$ra,16($sp)
    # Line 811
    ld	$gp,8($sp)
    # Line 810
    ori	$t0,$t0,0x20
    sw	$t0,11756($s0)
    # Line 811
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bec54:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bec60:
    # Line 749
    move	$a0,$s0
    move	$a1,$a5
    jalr	$t9
    move	$a2,$a4
    b	.L0d9bec30
    # Line 810
    li	$t1,2
.L0d9bec78:
    # Line 802
    lw	$a0,0($a4)
    bltz	$a0,.L0d9beddc
    # Line 805
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    # Line 806
    b	.L0d9bec2c
    # Line 805
    swc1	$f0,112($a5)
.L0d9bec90:
    # Line 796
    lw	$a0,0($a4)
    bltz	$a0,.L0d9beddc
    # Line 799
    mtc1	$a0,$f1
    cvt.s.w	$f1,$f1
    # Line 800
    b	.L0d9bec2c
    # Line 799
    swc1	$f1,108($a5)
.L0d9beca8:
    # Line 790
    lw	$a0,0($a4)
    bltz	$a0,.L0d9beddc
    # Line 793
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    # Line 794
    b	.L0d9bec2c
    # Line 793
    swc1	$f2,104($a5)
.L0d9becc0:
    # Line 784
    lw	$a0,0($a4)
    li	$t2,180
    # Line 787
    mtc1	$a0,$f3
    # Line 784
    beq	$a0,$t2,.L0d9bece4
    slti	$t3,$a0,91
    bltz	$a0,.L0d9bede0
    # Line 778
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 784
    beqz	$t3,.L0d9bede0
    # Line 778
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9bece4:
    # Line 787
    cvt.s.w	$f3,$f3
    # Line 788
    b	.L0d9bec2c
    # Line 787
    swc1	$f3,100($a5)
.L0d9becf0:
    # Line 776
    lw	$a0,0($a4)
    slti	$t8,$a0,129
    bltz	$a0,.L0d9beddc
    # Line 781
    mtc1	$a0,$f4
    # Line 776
    beqz	$t8,.L0d9bede0
    # Line 778
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 781
    cvt.s.w	$f4,$f4
    # Line 782
    b	.L0d9bec2c
    # Line 781
    swc1	$f4,96($a5)
.L0d9bed14:
    # Line 769
    lw	$at,0($a4)
    mtc1	$at,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,80($a5)
    # Line 770
    lw	$ra,4($a4)
    mtc1	$ra,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,84($a5)
    # Line 771
    lw	$t9,8($a4)
    mtc1	$t9,$f5
    # Line 772
    lwc1	$f6,_lit_3f800000
    # Line 773
    # lw $t9, -27084($gp) # &__glTransformLightDirection
    # Line 771
    cvt.s.w	$f5,$f5
    # Line 773
    move	$a1,$a5
    # Line 772
    swc1	$f6,92($a5)
    # Line 773
    move	$a0,$s0
    bal __glTransformLightDirection
    # Line 771
    swc1	$f5,88($a5)
    b	.L0d9bec30
    # Line 810
    li	$t1,2
.L0d9bed64:
    # Line 758
    lw	$a1,0($a4)
    mtc1	$a1,$f11
    cvt.s.w	$f11,$f11
    swc1	$f11,48($a5)
    # Line 759
    lw	$a0,4($a4)
    mtc1	$a0,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,52($a5)
    # Line 760
    lw	$v1,8($a4)
    mtc1	$v1,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,56($a5)
    # Line 761
    lw	$v0,12($a4)
    mtc1	$v0,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,60($a5)
    # Line 765
    lw	$a2,29660($s0)
    # Line 766
    lw	$t9,80($a2)
    addiu	$a1,$a5,48
    jal	__glTransformLightDirection
    addiu	$a0,$a5,64
    b	.L0d9bec30
    # Line 810
    li	$t1,2
.L0d9bedc0:
    # Line 755
    # lw $t9, -25828($gp) # &__glScaleColori
    move	$a0,$s0
    move	$a2,$a4
    jal	__glScaleColori
    addiu	$a1,$a5,32
    b	.L0d9bec30
    # Line 810
    li	$t1,2
.L0d9beddc:
    # Line 778
    # lw $t9, -26452($gp) # &__glSetError
.L0d9bede0:
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d9bec54
    ld	$ra,16($sp)
.L0d9bedf4:
    # Line 737
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bec54
    ld	$ra,16($sp)
.end __glim_Lightiv

# Function: __glim_Lighti
# Declared: Line 813 (Source lines: 814-828)
# Address: 0x0d9bee10 - 0x0d9bee88 (Size: 120 bytes, Frame: 48)
.globl __glim_Lighti
.ent __glim_Lighti
__glim_Lighti:
    # Line 814
    addiu	$sp,$sp,-48
    sd	$ra,8($sp)
    # Line 816
    li	$at,4613
    # Line 814
    lui	$v0,0x9
    sw	$a2,36($sp)
    addiu	$v0,$v0,8060
    sd	$gp,0($sp)
    # Line 816
    beq	$a1,$at,.L0d9bee74
    # Line 814
    addu	$gp,$t9,$v0
    # Line 816
    li	$v1,4614
    beq	$a1,$v1,.L0d9bee74
    li	$a2,4615
    beq	$a1,$a2,.L0d9bee74
    li	$a3,4616
    beq	$a1,$a3,.L0d9bee74
    li	$a4,4617
    beq	$a1,$a4,.L0d9bee78
    # Line 822
    nop	# was lw $t9, -27072($gp) # &__glim_Lightiv
    # Line 825
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9bee68:
    # Line 828
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9bee74:
    # Line 822
    # lw $t9, -27072($gp) # &__glim_Lightiv
.L0d9bee78:
    bal __glim_Lightiv
    addiu	$a2,$sp,36
    b	.L0d9bee68
    ld	$ra,8($sp)
.end __glim_Lighti

# Function: __glim_LightModelfv
# Declared: Line 830 (Source lines: 831-862)
# Address: 0x0d9bee90 - 0x0d9befc8 (Size: 312 bytes, Frame: 32)
.globl __glim_LightModelfv
.ent __glim_LightModelfv
__glim_LightModelfv:
    # Line 847
    li	$a7,0x81f9
    # Line 831
    addiu	$sp,$sp,-32
    # Line 833
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 831
    lui	$v1,0x9
    move	$a2,$a1
    sd	$ra,16($sp)
    addiu	$v1,$v1,7932
    sd	$gp,8($sp)
    # Line 833
    beq	$at,$v0,.L0d9bef94
    # Line 831
    addu	$gp,$t9,$v1
    # Line 836
    li	$a1,2899
    beq	$a0,$a1,.L0d9befa8
    li	$a3,2897
    beq	$a0,$a3,.L0d9bef60
    # Line 847
    li	$a1,0x81fa
    # Line 836
    li	$a5,2898
    beq	$a0,$a5,.L0d9bef7c
    # Line 844
    mtc1	$zero,$f4
    # Line 836
    li	$a6,0x81f8
    beq	$a0,$a6,.L0d9beefc
    # Line 858
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bef54
    ld	$ra,16($sp)
.L0d9beefc:
    # Line 847
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    sll	$a0,$a0,0x0
    beq	$a0,$a7,.L0d9bef2c
    nop
    beq	$a0,$a1,.L0d9bef2c
    # Line 853
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bef54
    ld	$ra,16($sp)
.L0d9bef2c:
    # Line 850
    sw	$a0,1416($a4)
.L0d9bef30:
    # Line 861
    li	$a3,2
    sw	$a3,4120($zero)
    ld	$ra,16($sp)
    lw	$a2,11756($a4)
    # Line 862
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 861
    ori	$a2,$a2,0x20
    # Line 862
    jr	$ra
    # Line 861
    sw	$a2,11756($a4)
.L0d9bef54:
    # Line 862
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bef60:
    # Line 841
    mtc1	$zero,$f2
    lwc1	$f1,0($a2)
    c.eq.s	$f1,$f2
    li	$a5,1
    movt	$a5,$zero,$fcc0
    # Line 842
    b	.L0d9bef30
    # Line 841
    sb	$a5,1412($a4)
.L0d9bef7c:
    # Line 844
    lwc1	$f3,0($a2)
    c.eq.s $f3,$f4
    li	$a6,1
    movt	$a6,$zero,$fcc1
    # Line 845
    b	.L0d9bef30
    # Line 844
    sb	$a6,1413($a4)
.L0d9bef94:
    # Line 833
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bef54
    ld	$ra,16($sp)
.L0d9befa8:
    sd	$a4,0($sp)
    # Line 838
    # lw $t9, -25840($gp) # &__glScaleColorf
    ld	$a1,0($sp)
    move	$a0,$a1
    jal	__glScaleColorf
    addiu	$a1,$a1,1396
    b	.L0d9bef30
    ld	$a4,0($sp)
.end __glim_LightModelfv

# Function: __glim_LightModelf
# Declared: Line 864 (Source lines: 865-877)
# Address: 0x0d9befd0 - 0x0d9bf03c (Size: 108 bytes, Frame: 32)
.globl __glim_LightModelf
.ent __glim_LightModelf
__glim_LightModelf:
    # Line 865
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # Line 867
    li	$at,2897
    # Line 865
    lui	$v0,0x9
    sd	$ra,8($sp)
    addiu	$v0,$v0,7612
    sd	$gp,0($sp)
    # Line 867
    beq	$a0,$at,.L0d9bf028
    # Line 865
    addu	$gp,$t9,$v0
    # Line 867
    li	$v1,2898
    beq	$a0,$v1,.L0d9bf02c
    # Line 871
    nop	# was lw $t9, -27064($gp) # &__glim_LightModelfv
    # Line 867
    li	$a1,0x81f8
    beq	$a0,$a1,.L0d9bf02c
    # Line 871
    nop	# was lw $t9, -27064($gp) # &__glim_LightModelfv
    # Line 874
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9bf01c:
    # Line 877
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bf028:
    # Line 871
    # lw $t9, -27064($gp) # &__glim_LightModelfv
.L0d9bf02c:
    bal __glim_LightModelfv
    addiu	$a1,$sp,24
    b	.L0d9bf01c
    ld	$ra,8($sp)
.end __glim_LightModelf

# Function: __glim_LightModeliv
# Declared: Line 879 (Source lines: 880-911)
# Address: 0x0d9bf040 - 0x0d9bf154 (Size: 276 bytes, Frame: 32)
.globl __glim_LightModeliv
.ent __glim_LightModeliv
__glim_LightModeliv:
    # Line 896
    li	$t0,0x81fa
    # Line 880
    addiu	$sp,$sp,-32
    # Line 882
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 880
    lui	$v1,0x9
    move	$a2,$a1
    sd	$ra,16($sp)
    addiu	$v1,$v1,7500
    sd	$gp,8($sp)
    # Line 882
    beq	$at,$v0,.L0d9bf120
    # Line 880
    addu	$gp,$t9,$v1
    # Line 885
    li	$a1,2899
    beq	$a0,$a1,.L0d9bf134
    li	$a3,2897
    beq	$a0,$a3,.L0d9bf100
    li	$a5,2898
    beq	$a0,$a5,.L0d9bf110
    li	$a6,0x81f8
    beq	$a0,$a6,.L0d9bf0a4
    # Line 907
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bf0f4
    ld	$ra,16($sp)
.L0d9bf0a4:
    # Line 896
    li	$a7,0x81f9
    lw	$a0,0($a2)
    beq	$a0,$a7,.L0d9bf0cc
    nop
    beq	$a0,$t0,.L0d9bf0cc
    # Line 902
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bf0f4
    ld	$ra,16($sp)
.L0d9bf0cc:
    # Line 899
    sw	$a0,1416($a4)
.L0d9bf0d0:
    # Line 910
    li	$t2,2
    sw	$t2,4120($zero)
    ld	$ra,16($sp)
    lw	$t1,11756($a4)
    # Line 911
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 910
    ori	$t1,$t1,0x20
    # Line 911
    jr	$ra
    # Line 910
    sw	$t1,11756($a4)
.L0d9bf0f4:
    # Line 911
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bf100:
    # Line 890
    lw	$t3,0($a2)
    sltu	$t3,$zero,$t3
    # Line 891
    b	.L0d9bf0d0
    # Line 890
    sb	$t3,1412($a4)
.L0d9bf110:
    # Line 893
    lw	$t8,0($a2)
    sltu	$t8,$zero,$t8
    # Line 894
    b	.L0d9bf0d0
    # Line 893
    sb	$t8,1413($a4)
.L0d9bf120:
    # Line 882
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bf0f4
    ld	$ra,16($sp)
.L0d9bf134:
    sd	$a4,0($sp)
    # Line 887
    # lw $t9, -25828($gp) # &__glScaleColori
    ld	$a1,0($sp)
    move	$a0,$a1
    jal	__glScaleColori
    addiu	$a1,$a1,1396
    b	.L0d9bf0d0
    ld	$a4,0($sp)
.end __glim_LightModeliv

# Function: __glim_LightModeli
# Declared: Line 913 (Source lines: 914-926)
# Address: 0x0d9bf160 - 0x0d9bf1c4 (Size: 100 bytes, Frame: 32)
.globl __glim_LightModeli
.ent __glim_LightModeli
__glim_LightModeli:
    # Line 914
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 916
    li	$at,2897
    # Line 914
    lui	$v0,0x9
    sw	$a1,28($sp)
    addiu	$v0,$v0,7212
    sd	$gp,0($sp)
    # Line 916
    beq	$a0,$at,.L0d9bf1b0
    # Line 914
    addu	$gp,$t9,$v0
    # Line 916
    li	$v1,2898
    beq	$a0,$v1,.L0d9bf1b0
    li	$a1,0x81f8
    beq	$a0,$a1,.L0d9bf1b0
    # Line 923
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9bf1a4:
    # Line 926
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bf1b0:
    # Line 920
    # lw $t9, -27056($gp) # &__glim_LightModeliv
    bal __glim_LightModeliv
    addiu	$a1,$sp,28
    b	.L0d9bf1a4
    ld	$ra,8($sp)
.end __glim_LightModeli

# Function: __glim_LineStipple
# Declared: Line 928 (Source lines: 929-941)
# Address: 0x0d9bf1d0 - 0x0d9bf258 (Size: 136 bytes, Frame: 16)
.globl __glim_LineStipple
.ent __glim_LineStipple
__glim_LineStipple:
    # Line 930
    lw	$v0,4120($zero)
    li	$a4,1
    # Line 929
    lui	$at,0x9
    # Line 930
    lw	$a3,4112($zero)
    # Line 929
    addiu	$sp,$sp,-16
    addiu	$at,$at,7100
    sd	$gp,0($sp)
    # Line 930
    beq	$v0,$a4,.L0d9bf240
    # Line 929
    addu	$gp,$t9,$at
    # Line 938
    slti	$a5,$a0,1
    li	$a2,256
    movz	$a4,$a0,$a5
    # Line 939
    sh	$a1,480($a3)
    # Line 938
    li	$a0,256
    slt	$a2,$a2,$a4
    movz	$a0,$a4,$a2
    sh	$a0,482($a3)
    # Line 940
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a3)
    # Line 941
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 940
    ori	$v0,$v0,0x2
    # Line 941
    jr	$ra
    # Line 940
    sw	$v0,11756($a3)
.L0d9bf234:
    # Line 941
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bf240:
    # Line 930
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bf234
    ld	$ra,8($sp)
.end __glim_LineStipple

# Function: RoundWidth
# Declared: Line 943 (Source lines: 944-947)
# Address: 0x0d9bf260 - 0x0d9bf28c (Size: 44 bytes, Frame: 0)
.ent RoundWidth
RoundWidth:
    # Line 944
    lwc1	$f0,_lit_3f800000
    c.lt.s	$f12,$f0
    # Line 947
    lwc1	$f1,_lit_3f000000
    # Line 944
    bc1f	.L0d9bf27c
    # Line 946
    li	$v0,1
    # Line 947
    jr	$ra
    nop
.L0d9bf27c:
    add.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    jr	$ra
    mfc1	$v0,$f1
.end RoundWidth

# Function: ClampWidth
# Declared: Line 950 (Source lines: 952-962)
# Address: 0x0d9bf290 - 0x0d9bf2e0 (Size: 80 bytes, Frame: 0)
.ent ClampWidth
ClampWidth:
    # Line 952
    lwc1	$f5,3756($a0)
    # Line 954
    c.le.s	$f13,$f5
    lwc1	$f6,3764($a0)
    bc1t	.L0d9bf2d8
    # Line 953
    lwc1	$f0,3760($a0)
    # Line 957
    c.le.s $f0,$f13
    bc1f .L0d9bf2b8
    nop
    # Line 962
    jr	$ra
    nop
.L0d9bf2b8:
    sub.s	$f1,$f13,$f5
    div.s	$f1,$f1,$f6
    lwc1	$f0,3540($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    jr	$ra
    madd.s	$f0,$f5,$f0,$f6
.L0d9bf2d8:
    jr	$ra
    mov.s	$f0,$f5
.end ClampWidth

# Function: __glim_LineWidth
# Declared: Line 965 (Source lines: 966-978)
# Address: 0x0d9bf2e0 - 0x0d9bf3b4 (Size: 212 bytes, Frame: 32)
.globl __glim_LineWidth
.ent __glim_LineWidth
__glim_LineWidth:
    # Line 967
    lw	$a0,4112($zero)
    # Line 966
    addiu	$sp,$sp,-32
    # Line 967
    lw	$at,4120($zero)
    sd	$ra,24($sp)
    li	$v0,1
    # Line 966
    lui	$v1,0x9
    sdc1	$f20,0($sp)
    addiu	$v1,$v1,6828
    mov.s	$f20,$f12
    sd	$gp,16($sp)
    # Line 967
    beq	$at,$v0,.L0d9bf3a0
    # Line 966
    addu	$gp,$t9,$v1
    # Line 967
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    bc1f	.L0d9bf340
    sd	$a0,8($sp)
    # Line 970
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,24($sp)
.L0d9bf330:
    # Line 978
    ld	$gp,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bf340:
    # Line 975
    # lw $t9, -32712($gp) # &sub_0d9c0000
    ld	$a0,8($sp)
    addiu	$t9,$t9,-3488
    bal __glim_LineStipple
    # Line 974
    swc1	$f20,468($a0)
    # Line 976
    # lw $t9, -32712($gp) # &sub_0d9c0000
    ld	$at,8($sp)
    addiu	$t9,$t9,-3440
    mov.s	$f13,$f20
    move	$a0,$at
    bal __glim_LineStipple
    # Line 975
    sw	$v0,476($at)
    # Line 978
    ld	$gp,16($sp)
    # Line 976
    ld	$v0,8($sp)
    ld	$ra,24($sp)
    swc1	$f0,472($v0)
    # Line 977
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$at,11756($v0)
    # Line 978
    ldc1	$f20,0($sp)
    addiu	$sp,$sp,32
    # Line 977
    ori	$at,$at,0x2
    # Line 978
    jr	$ra
    # Line 977
    sw	$at,11756($v0)
.L0d9bf3a0:
    # Line 967
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bf330
    ld	$ra,24($sp)
.end __glim_LineWidth

# Function: __glim_LogicOp
# Declared: Line 980 (Source lines: 981-990)
# Address: 0x0d9bf3c0 - 0x0d9bf45c (Size: 156 bytes, Frame: 16)
.globl __glim_LogicOp
.ent __glim_LogicOp
__glim_LogicOp:
    # Line 989
    li	$a5,2
    # Line 981
    addiu	$sp,$sp,-16
    # Line 982
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 981
    lui	$v1,0x9
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,6604
    sd	$gp,0($sp)
    # Line 982
    beq	$at,$v0,.L0d9bf448
    # Line 981
    addu	$gp,$t9,$v1
    # Line 984
    sltiu	$a1,$a0,5376
    bnez	$a1,.L0d9bf438
    # Line 985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 984
    sltiu	$a3,$a0,5392
    beqz	$a3,.L0d9bf438
    # Line 985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 988
    sw	$a0,1856($a2)
    # Line 989
    sw	$a5,4120($zero)
    lw	$a4,11756($a2)
    # Line 990
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 989
    ori	$a4,$a4,0x1
    # Line 990
    jr	$ra
    # Line 989
    sw	$a4,11756($a2)
.L0d9bf428:
    # Line 990
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 985
    # lw $t9, -26452($gp) # &__glSetError
.L0d9bf438:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bf428
    ld	$ra,8($sp)
.L0d9bf448:
    # Line 982
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bf428
    ld	$ra,8($sp)
.end __glim_LogicOp

# Function: ApplyParameterF
# Declared: Line 992 (Source lines: 994-1035)
# Address: 0x0d9bf460 - 0x0d9bf5e4 (Size: 388 bytes, Frame: 16)
.ent ApplyParameterF
ApplyParameterF:
    # Line 994
    addiu	$sp,$sp,-16
    # Line 995
    sltiu	$at,$a2,5632
    sltiu	$v1,$a2,5634
    sltiu	$v0,$a2,5633
    bnez	$at,.L0d9bf4c0
    # Line 994
    move	$a6,$a1
    # Line 995
    li	$t1,5633
    bnez	$v0,.L0d9bf59c
    # Line 1002
    nop	# was lw $t9, -25840($gp) # &__glScaleColorf
    # Line 995
    bnez	$v1,.L0d9bf51c
    sltiu	$a0,$a2,5635
    bnez	$a0,.L0d9bf560
    nop
    li	$a1,5635
    bne	$a2,$a1,.L0d9bf514
    # Line 1035
    move	$v0,$zero
    # Line 997
    lwc1	$f2,0($a3)
    swc1	$f2,68($a6)
    # Line 998
    lwc1	$f1,4($a3)
    swc1	$f1,76($a6)
    # Line 999
    lwc1	$f0,8($a3)
    # Line 1000
    li	$v0,32
    b	.L0d9bf514
    # Line 999
    swc1	$f0,72($a6)
.L0d9bf4c0:
    # Line 995
    li	$a7,4610
    sltiu	$a4,$a2,4609
    sltiu	$a5,$a2,4610
    bnez	$a4,.L0d9bf50c
    li	$t0,4608
    bnez	$a5,.L0d9bf534
    nop
    bne	$a2,$a7,.L0d9bf514
    # Line 1035
    move	$v0,$zero
    # Line 1005
    lwc1	$f6,0($a3)
    swc1	$f6,32($a1)
    # Line 1006
    lwc1	$f5,4($a3)
    swc1	$f5,36($a1)
    # Line 1007
    lwc1	$f4,8($a3)
    swc1	$f4,40($a1)
    # Line 1008
    lwc1	$f3,12($a3)
    # Line 1009
    li	$v0,4
    b	.L0d9bf514
    # Line 1008
    swc1	$f3,44($a1)
.L0d9bf50c:
    # Line 995
    beq	$a2,$t0,.L0d9bf5b8
    # Line 1035
    move	$v0,$zero
.L0d9bf514:
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bf51c:
    # Line 995
    bne	$a2,$t1,.L0d9bf514
    # Line 1035
    move	$v0,$zero
    # Line 1011
    lwc1	$f7,0($a3)
    # Line 1012
    li	$v0,16
    b	.L0d9bf514
    # Line 1011
    swc1	$f7,64($a1)
.L0d9bf534:
    # Line 1020
    lwc1	$f11,0($a3)
    swc1	$f11,16($a1)
    # Line 1021
    lwc1	$f10,4($a3)
    swc1	$f10,20($a1)
    # Line 1022
    lwc1	$f9,8($a3)
    swc1	$f9,24($a1)
    # Line 1023
    lwc1	$f8,12($a3)
    # Line 1024
    li	$v0,2
    # Line 1035
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1023
    swc1	$f8,28($a1)
.L0d9bf560:
    # Line 1026
    lwc1	$f13,0($a3)
    swc1	$f13,0($a1)
    # Line 1027
    lwc1	$f14,4($a3)
    swc1	$f14,4($a1)
    # Line 1028
    lwc1	$f15,8($a3)
    swc1	$f15,8($a1)
    # Line 1029
    lwc1	$f12,12($a3)
    # Line 1030
    swc1	$f15,24($a1)
    swc1	$f14,20($a1)
    swc1	$f13,16($a1)
    # Line 1031
    li	$v0,3
    # Line 1030
    swc1	$f12,28($a1)
    # Line 1035
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1029
    swc1	$f12,12($a1)
.L0d9bf59c:
    # Line 1002
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColorf
    addiu	$a1,$a1,48
    ld	$ra,0($sp)
    # Line 1003
    b	.L0d9bf514
    li	$v0,8
.L0d9bf5b8:
    # Line 1014
    lwc1	$f19,0($a3)
    swc1	$f19,0($a1)
    # Line 1015
    lwc1	$f18,4($a3)
    swc1	$f18,4($a1)
    # Line 1016
    lwc1	$f17,8($a3)
    swc1	$f17,8($a1)
    # Line 1017
    lwc1	$f16,12($a3)
    # Line 1018
    li	$v0,1
    # Line 1035
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1017
    swc1	$f16,12($a1)
.end ApplyParameterF

# Function: __glErrorCheckMaterial
# Declared: Line 1038 (Source lines: 1039-1064)
# Address: 0x0d9bf5f0 - 0x0d9bf6cc (Size: 220 bytes, Frame: 0)
.globl __glErrorCheckMaterial
.ent __glErrorCheckMaterial
__glErrorCheckMaterial:
    # Line 1040
    li	$v1,1028
    # Line 1039
    lui	$v0,0x9
    # Line 1048
    li	$a7,5635
    # Line 1039
    addiu	$v0,$v0,6044
    # Line 1040
    beq	$a0,$v1,.L0d9bf628
    # Line 1039
    addu	$at,$t9,$v0
    # Line 1040
    li	$v1,1029
    beq	$a0,$v1,.L0d9bf62c
    # Line 1048
    sltiu	$a5,$a1,5634
    # Line 1040
    li	$a2,1032
    beq	$a0,$a2,.L0d9bf62c
    # Line 1048
    sltiu	$a5,$a1,5634
    # Line 1062
    jr	$ra
    # Line 1046
    li	$v0,1280
.L0d9bf628:
    # Line 1048
    sltiu	$a5,$a1,5634
.L0d9bf62c:
    sltiu	$a3,$a1,5632
    sltiu	$t0,$a1,4609
    bnez	$a3,.L0d9bf66c
    # Line 1064
    move	$v0,$zero
    # Line 1048
    li	$t8,5633
    sltiu	$a4,$a1,5633
    bnez	$a4,.L0d9bf68c
    sltiu	$a6,$a1,5635
    bnez	$a5,.L0d9bf6a4
    nop
    bnez	$a6,.L0d9bf68c
    nop
    bne	$a1,$a7,.L0d9bf69c
    nop
    b	.L0d9bf68c
    nop
.L0d9bf66c:
    li	$t2,4610
    li	$t3,4608
    bnez	$t0,.L0d9bf694
    sltiu	$t1,$a1,4610
    bnez	$t1,.L0d9bf68c
    nop
    bne	$a1,$t2,.L0d9bf69c
    nop
.L0d9bf68c:
    # Line 1062
    jr	$ra
    nop
.L0d9bf694:
    # Line 1048
    beq	$a1,$t3,.L0d9bf68c
    nop
.L0d9bf69c:
    # Line 1062
    jr	$ra
    li	$v0,1280
.L0d9bf6a4:
    # Line 1048
    bne	$a1,$t8,.L0d9bf69c
    # Line 1057
    mtc1	$zero,$f0
    c.lt.s	$f14,$f0
    bc1t	.L0d9bf6c4
    lwc1	$f1,_lit_43000000
    c.lt.s $f1,$f14
    bc1f .L0d9bf68c
    nop
.L0d9bf6c4:
    # Line 1062
    jr	$ra
    # Line 1058
    li	$v0,1281
.end __glErrorCheckMaterial

# Function: __glim_Materialfv
# Declared: Line 1067 (Source lines: 1068-1110)
# Address: 0x0d9bf6d0 - 0x0d9bf854 (Size: 388 bytes, Frame: 192)
.globl __glim_Materialfv
.ent __glim_Materialfv
__glim_Materialfv:
    # Line 1073
    lwc1	$f14,0($a2)
    # Line 1068
    addiu	$sp,$sp,-64
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    lui	$v0,0x9
    sd	$s1,32($sp)
    addiu	$v0,$v0,5820
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 1073
    # lw $t9, -27036($gp) # &__glErrorCheckMaterial
    # Line 1068
    sd	$ra,40($sp)
    sd	$s0,24($sp)
    # Line 1073
    nop
    # Line 1068
    move	$s0,$a0
    # Line 1073
    bal __glErrorCheckMaterial
    # Line 1071
    lw	$s1,4112($zero)
    # Line 1073
    beqz	$v0,.L0d9bf72c
    # Line 1075
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9bf794
    ld	$ra,40($sp)
.L0d9bf72c:
    # Line 1084
    lw	$v1,4120($zero)
    li	$a0,1
    beq	$v1,$a0,.L0d9bf7a4
    # Line 1088
    li	$a1,1028
.L0d9bf73c:
    li	$a2,1029
    beq	$s0,$a1,.L0d9bf7c4
    li	$a3,1032
    beq	$s0,$a2,.L0d9bf7ec
    # Line 1094
    nop	# was lw $t9, -32712($gp) # &sub_0d9c0000
    # Line 1088
    beq	$s0,$a3,.L0d9bf810
.L0d9bf754:
    # Line 1101
    ld	$a4,16($sp)
    li	$a5,5635
    beq	$a4,$a5,.L0d9bf774
    # Line 1104
    nop	# was lw $t9, -25772($gp) # &__glValidateMaterial
    lw	$a2,0($sp)
    move	$a0,$s1
    jal	__glValidateMaterial
    lw	$a1,4($sp)
.L0d9bf774:
    lw	$a6,1792($s1)
    andi	$a6,$a6,0x80
    beqz	$a6,.L0d9bf790
    ld	$s0,24($sp)
    # Line 1108
    lw	$t9,12000($s1)
    jalr	$t9
    move	$a0,$s1
.L0d9bf790:
    ld	$ra,40($sp)
.L0d9bf794:
    ld	$s1,32($sp)
    # Line 1110
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9bf7a4:
    # Line 1084
    lw	$a7,28088($s1)
    beqz	$a7,.L0d9bf73c
    # Line 1088
    li	$a1,1028
    # Line 1085
    lw	$t9,12020($s1)
    jalr	$t9
    move	$a0,$s1
    b	.L0d9bf73c
    # Line 1088
    li	$a1,1028
.L0d9bf7c4:
    # Line 1090
    # lw $t9, -32712($gp) # &sub_0d9c0000
    addiu	$t9,$t9,-2976
    move	$a0,$s1
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    bal __glim_LogicOp
    addiu	$a1,$s1,1424
    # Line 1091
    sw	$zero,0($sp)
    b	.L0d9bf754
    # Line 1090
    sw	$v0,4($sp)
.L0d9bf7ec:
    # Line 1094
    addiu	$t9,$t9,-2976
    move	$a0,$s1
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    bal __glim_LogicOp
    addiu	$a1,$s1,1504
    # Line 1095
    sw	$zero,4($sp)
    # Line 1096
    b	.L0d9bf754
    # Line 1094
    sw	$v0,0($sp)
.L0d9bf810:
    # Line 1098
    la	$s0,sub_0d9c0000
    addiu	$s0,$s0,-2976
    move	$t9,$s0
    addiu	$a1,$s1,1504
    ld	$a2,16($sp)
    move	$a0,$s1
    bal __glim_LogicOp
    ld	$a3,8($sp)
    sw	$v0,0($sp)
    # Line 1099
    move	$t9,$s0
    addiu	$a1,$s1,1424
    ld	$a2,16($sp)
    move	$a0,$s1
    bal __glim_LogicOp
    ld	$a3,8($sp)
    # Line 1100
    b	.L0d9bf754
    # Line 1099
    sw	$v0,4($sp)
.end __glim_Materialfv

# Function: __glim_Materialf
# Declared: Line 1112 (Source lines: 1113-1123)
# Address: 0x0d9bf860 - 0x0d9bf8b4 (Size: 84 bytes, Frame: 48)
.globl __glim_Materialf
.ent __glim_Materialf
__glim_Materialf:
    # Line 1113
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 1115
    li	$at,5633
    # Line 1113
    lui	$v0,0x9
    sd	$ra,8($sp)
    addiu	$v0,$v0,5420
    sd	$gp,0($sp)
    # Line 1115
    beq	$a1,$at,.L0d9bf8a0
    # Line 1113
    addu	$gp,$t9,$v0
    # Line 1120
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9bf894:
    # Line 1123
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9bf8a0:
    # Line 1117
    # lw $t9, -27032($gp) # &__glim_Materialfv
    bal __glim_Materialfv
    addiu	$a2,$sp,32
    b	.L0d9bf894
    ld	$ra,8($sp)
.end __glim_Materialf

# Function: ApplyParameterI
# Declared: Line 1125 (Source lines: 1127-1168)
# Address: 0x0d9bf8c0 - 0x0d9bfbc8 (Size: 776 bytes, Frame: 16)
.ent ApplyParameterI
ApplyParameterI:
    # Line 1127
    addiu	$sp,$sp,-16
    # Line 1128
    sltiu	$at,$a2,5632
    li	$a4,5635
    sltiu	$v0,$a2,5633
    bnez	$at,.L0d9bf930
    # Line 1127
    move	$a6,$a1
    # Line 1128
    bnez	$v0,.L0d9bfb24
    sltiu	$v1,$a2,5634
    bnez	$v1,.L0d9bf9e4
    sltiu	$a1,$a2,5635
    bnez	$a1,.L0d9bfa90
    nop
    bne	$a2,$a4,.L0d9bf9dc
    # Line 1168
    move	$v0,$zero
    # Line 1130
    lw	$t0,0($a3)
    mtc1	$t0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,68($a6)
    # Line 1131
    lw	$a7,4($a3)
    mtc1	$a7,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,76($a6)
    # Line 1132
    lw	$a5,8($a3)
    mtc1	$a5,$f0
    cvt.s.w	$f0,$f0
    # Line 1133
    li	$v0,32
    b	.L0d9bf9dc
    # Line 1132
    swc1	$f0,72($a6)
.L0d9bf930:
    # Line 1128
    li	$t3,4610
    sltiu	$t1,$a2,4609
    sltiu	$t2,$a2,4610
    bnez	$t1,.L0d9bf9d4
    li	$v1,4608
    bnez	$t2,.L0d9bfa0c
    nop
    bne	$a2,$t3,.L0d9bf9dc
    # Line 1168
    move	$v0,$zero
    # Line 1138
    lw	$v0,0($a3)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f6,_lit_40000000
    lwc1	$f4,_lit_3f800000
    madd.s	$f12,$f4,$f12,$f6
    lwc1	$f11,3568($a0)
    mul.s	$f11,$f11,$f12
    swc1	$f11,32($a1)
    # Line 1139
    lw	$at,4($a3)
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f10,$f4,$f10,$f6
    lwc1	$f9,3568($a0)
    mul.s	$f9,$f9,$f10
    swc1	$f9,36($a1)
    # Line 1140
    lw	$t9,8($a3)
    mtc1	$t9,$f8
    cvt.s.w	$f8,$f8
    madd.s	$f8,$f4,$f8,$f6
    lwc1	$f7,3568($a0)
    mul.s	$f7,$f7,$f8
    swc1	$f7,40($a1)
    # Line 1141
    lw	$t8,12($a3)
    mtc1	$t8,$f5
    cvt.s.w	$f5,$f5
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f3,3568($a0)
    mul.s	$f3,$f3,$f4
    # Line 1142
    li	$v0,4
    b	.L0d9bf9dc
    # Line 1141
    swc1	$f3,44($a1)
.L0d9bf9d4:
    # Line 1128
    beq	$a2,$v1,.L0d9bfb44
    # Line 1168
    move	$v0,$zero
.L0d9bf9dc:
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bf9e4:
    # Line 1128
    li	$a0,5633
    bne	$a2,$a0,.L0d9bf9dc
    # Line 1168
    move	$v0,$zero
    # Line 1144
    lw	$a1,0($a3)
    mtc1	$a1,$f13
    cvt.s.w	$f13,$f13
    # Line 1145
    li	$v0,16
    # Line 1168
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1144
    swc1	$f13,64($a6)
.L0d9bfa0c:
    # Line 1153
    lw	$a7,0($a3)
    mtc1	$a7,$f27
    cvt.s.w	$f27,$f27
    lwc1	$f17,_lit_40000000
    lwc1	$f15,_lit_3f800000
    madd.s	$f27,$f15,$f27,$f17
    lwc1	$f25,3568($a0)
    mul.s	$f25,$f25,$f27
    swc1	$f25,16($a1)
    # Line 1154
    lw	$a5,4($a3)
    mtc1	$a5,$f23
    cvt.s.w	$f23,$f23
    madd.s	$f23,$f15,$f23,$f17
    lwc1	$f21,3568($a0)
    mul.s	$f21,$f21,$f23
    swc1	$f21,20($a1)
    # Line 1155
    lw	$a4,8($a3)
    mtc1	$a4,$f19
    cvt.s.w	$f19,$f19
    madd.s	$f19,$f15,$f19,$f17
    lwc1	$f18,3568($a0)
    mul.s	$f18,$f18,$f19
    swc1	$f18,24($a1)
    # Line 1156
    lw	$a2,12($a3)
    mtc1	$a2,$f16
    cvt.s.w	$f16,$f16
    madd.s	$f15,$f15,$f16,$f17
    lwc1	$f14,3568($a0)
    # Line 1157
    li	$v0,2
    # Line 1156
    mul.s	$f14,$f14,$f15
    # Line 1168
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1156
    swc1	$f14,28($a1)
.L0d9bfa90:
    # Line 1159
    lw	$t3,0($a3)
    mtc1	$t3,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f4,_lit_40000000
    lwc1	$f31,_lit_3f800000
    madd.s	$f1,$f31,$f1,$f4
    lwc1	$f0,3568($a0)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a6)
    # Line 1160
    lw	$t2,4($a3)
    mtc1	$t2,$f2
    cvt.s.w	$f2,$f2
    madd.s	$f2,$f31,$f2,$f4
    lwc1	$f1,3568($a0)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($a6)
    # Line 1161
    lw	$t1,8($a3)
    mtc1	$t1,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f3,$f31,$f3,$f4
    lwc1	$f2,3568($a0)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a6)
    # Line 1162
    lw	$t0,12($a3)
    mtc1	$t0,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f31,$f31,$f3,$f4
    lwc1	$f29,3568($a0)
    # Line 1163
    swc1	$f2,24($a6)
    swc1	$f1,20($a6)
    swc1	$f0,16($a6)
    # Line 1162
    mul.s	$f29,$f29,$f31
    # Line 1164
    li	$v0,3
    # Line 1163
    swc1	$f29,28($a6)
    # Line 1168
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1162
    swc1	$f29,12($a6)
.L0d9bfb24:
    # Line 1135
    # lw $t9, -25828($gp) # &__glScaleColori
    move	$a2,$a3
    sd	$ra,0($sp)
    jal	__glScaleColori
    addiu	$a1,$a1,48
    ld	$ra,0($sp)
    # Line 1136
    b	.L0d9bf9dc
    li	$v0,8
.L0d9bfb44:
    # Line 1147
    lw	$v0,0($a3)
    mtc1	$v0,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f5,_lit_40000000
    lwc1	$f3,_lit_3f800000
    madd.s	$f11,$f3,$f11,$f5
    lwc1	$f10,3568($a0)
    mul.s	$f10,$f10,$f11
    swc1	$f10,0($a1)
    # Line 1148
    lw	$at,4($a3)
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    madd.s	$f9,$f3,$f9,$f5
    lwc1	$f8,3568($a0)
    mul.s	$f8,$f8,$f9
    swc1	$f8,4($a1)
    # Line 1149
    lw	$t9,8($a3)
    mtc1	$t9,$f7
    cvt.s.w	$f7,$f7
    madd.s	$f7,$f3,$f7,$f5
    lwc1	$f6,3568($a0)
    mul.s	$f6,$f6,$f7
    swc1	$f6,8($a1)
    # Line 1150
    lw	$t8,12($a3)
    mtc1	$t8,$f4
    cvt.s.w	$f4,$f4
    madd.s	$f3,$f3,$f4,$f5
    lwc1	$f2,3568($a0)
    # Line 1151
    li	$v0,1
    # Line 1150
    mul.s	$f2,$f2,$f3
    # Line 1168
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1150
    swc1	$f2,12($a1)
.end ApplyParameterI

# Function: __glim_Materialiv
# Declared: Line 1171 (Source lines: 1173-1215)
# Address: 0x0d9bfbd0 - 0x0d9bfd58 (Size: 392 bytes, Frame: 192)
.globl __glim_Materialiv
.ent __glim_Materialiv
__glim_Materialiv:
    # Line 1173
    addiu	$sp,$sp,-64
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$s1,32($sp)
    lui	$v0,0x9
    # Line 1178
    lw	$at,0($a2)
    # Line 1173
    addiu	$v0,$v0,4540
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 1178
    mtc1	$at,$f14
    # lw $t9, -27036($gp) # &__glErrorCheckMaterial
    # Line 1176
    lw	$s1,4112($zero)
    # Line 1173
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$ra,40($sp)
    # Line 1178
    bal __glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0d9bfc30
    # Line 1180
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9bfc98
    ld	$ra,40($sp)
.L0d9bfc30:
    # Line 1189
    lw	$v1,4120($zero)
    li	$a0,1
    beq	$v1,$a0,.L0d9bfca8
    # Line 1193
    li	$a1,1028
.L0d9bfc40:
    li	$a2,1029
    beq	$s0,$a1,.L0d9bfcc8
    li	$a3,1032
    beq	$s0,$a2,.L0d9bfcf0
    # Line 1199
    nop	# was lw $t9, -32712($gp) # &sub_0d9c0000
    # Line 1193
    beq	$s0,$a3,.L0d9bfd14
.L0d9bfc58:
    # Line 1206
    ld	$a4,16($sp)
    li	$a5,5635
    beq	$a4,$a5,.L0d9bfc78
    # Line 1209
    nop	# was lw $t9, -25772($gp) # &__glValidateMaterial
    lw	$a2,0($sp)
    move	$a0,$s1
    jal	__glValidateMaterial
    lw	$a1,4($sp)
.L0d9bfc78:
    lw	$a6,1792($s1)
    andi	$a6,$a6,0x80
    beqz	$a6,.L0d9bfc94
    ld	$s0,24($sp)
    # Line 1213
    lw	$t9,12000($s1)
    jalr	$t9
    move	$a0,$s1
.L0d9bfc94:
    ld	$ra,40($sp)
.L0d9bfc98:
    ld	$s1,32($sp)
    # Line 1215
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9bfca8:
    # Line 1189
    lw	$a7,28088($s1)
    beqz	$a7,.L0d9bfc40
    # Line 1193
    li	$a1,1028
    # Line 1190
    lw	$t9,12020($s1)
    jalr	$t9
    move	$a0,$s1
    b	.L0d9bfc40
    # Line 1193
    li	$a1,1028
.L0d9bfcc8:
    # Line 1195
    # lw $t9, -32712($gp) # &sub_0d9c0000
    addiu	$t9,$t9,-1856
    move	$a0,$s1
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    bal __glim_Materialf
    addiu	$a1,$s1,1424
    # Line 1196
    sw	$zero,0($sp)
    b	.L0d9bfc58
    # Line 1195
    sw	$v0,4($sp)
.L0d9bfcf0:
    # Line 1199
    addiu	$t9,$t9,-1856
    move	$a0,$s1
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    bal __glim_Materialf
    addiu	$a1,$s1,1504
    # Line 1200
    sw	$zero,4($sp)
    # Line 1201
    b	.L0d9bfc58
    # Line 1199
    sw	$v0,0($sp)
.L0d9bfd14:
    # Line 1203
    la	$s0,sub_0d9c0000
    addiu	$s0,$s0,-1856
    move	$t9,$s0
    addiu	$a1,$s1,1504
    ld	$a2,16($sp)
    move	$a0,$s1
    bal __glim_Materialf
    ld	$a3,8($sp)
    sw	$v0,0($sp)
    # Line 1204
    move	$t9,$s0
    addiu	$a1,$s1,1424
    ld	$a2,16($sp)
    move	$a0,$s1
    bal __glim_Materialf
    ld	$a3,8($sp)
    # Line 1205
    b	.L0d9bfc58
    # Line 1204
    sw	$v0,4($sp)
.end __glim_Materialiv

# Function: __glim_Materiali
# Declared: Line 1217 (Source lines: 1218-1228)
# Address: 0x0d9bfd60 - 0x0d9bfdb4 (Size: 84 bytes, Frame: 48)
.globl __glim_Materiali
.ent __glim_Materiali
__glim_Materiali:
    # Line 1218
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 1220
    li	$at,5633
    # Line 1218
    lui	$v0,0x9
    sd	$ra,8($sp)
    addiu	$v0,$v0,4140
    sd	$gp,0($sp)
    # Line 1220
    beq	$a1,$at,.L0d9bfda0
    # Line 1218
    addu	$gp,$t9,$v0
    # Line 1225
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9bfd94:
    # Line 1228
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9bfda0:
    # Line 1222
    # lw $t9, -27024($gp) # &__glim_Materialiv
    bal __glim_Materialiv
    addiu	$a2,$sp,36
    b	.L0d9bfd94
    ld	$ra,8($sp)
.end __glim_Materiali

# Function: RoundSize
# Declared: Line 1230 (Source lines: 1231-1234)
# Address: 0x0d9bfdc0 - 0x0d9bfdec (Size: 44 bytes, Frame: 0)
.ent RoundSize
RoundSize:
    # Line 1231
    lwc1	$f0,_lit_3f800000
    c.lt.s	$f12,$f0
    # Line 1234
    lwc1	$f1,_lit_3f000000
    # Line 1231
    bc1f	.L0d9bfddc
    # Line 1233
    li	$v0,1
    # Line 1234
    jr	$ra
    nop
.L0d9bfddc:
    add.s	$f1,$f12,$f1
    trunc.w.s	$f1,$f1
    jr	$ra
    mfc1	$v0,$f1
.end RoundSize

# Function: ClampSize
# Declared: Line 1237 (Source lines: 1239-1249)
# Address: 0x0d9bfdf0 - 0x0d9bfe40 (Size: 80 bytes, Frame: 0)
.ent ClampSize
ClampSize:
    # Line 1239
    lwc1	$f5,3744($a0)
    # Line 1241
    c.le.s	$f13,$f5
    lwc1	$f6,3752($a0)
    bc1t	.L0d9bfe38
    # Line 1240
    lwc1	$f0,3748($a0)
    # Line 1244
    c.le.s $f0,$f13
    bc1f .L0d9bfe18
    nop
    # Line 1249
    jr	$ra
    nop
.L0d9bfe18:
    sub.s	$f1,$f13,$f5
    div.s	$f1,$f1,$f6
    lwc1	$f0,3540($a0)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    jr	$ra
    madd.s	$f0,$f5,$f0,$f6
.L0d9bfe38:
    jr	$ra
    mov.s	$f0,$f5
.end ClampSize

# Function: __glim_PointSize
# Declared: Line 1252 (Source lines: 1253-1264)
# Address: 0x0d9bfe40 - 0x0d9bff14 (Size: 212 bytes, Frame: 32)
.globl __glim_PointSize
.ent __glim_PointSize
__glim_PointSize:
    # Line 1254
    lw	$a0,4112($zero)
    # Line 1253
    addiu	$sp,$sp,-32
    # Line 1254
    lw	$at,4120($zero)
    sd	$ra,24($sp)
    li	$v0,1
    # Line 1253
    lui	$v1,0x9
    sdc1	$f20,0($sp)
    addiu	$v1,$v1,3916
    mov.s	$f20,$f12
    sd	$gp,16($sp)
    # Line 1254
    beq	$at,$v0,.L0d9bff00
    # Line 1253
    addu	$gp,$t9,$v1
    # Line 1254
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    bc1f	.L0d9bfea0
    sd	$a0,8($sp)
    # Line 1257
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,24($sp)
.L0d9bfe90:
    # Line 1264
    ld	$gp,16($sp)
    ldc1	$f20,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bfea0:
    # Line 1261
    # lw $t9, -32712($gp) # &sub_0d9c0000
    ld	$a0,8($sp)
    addiu	$t9,$t9,-576
    bal __glim_Materiali
    # Line 1260
    swc1	$f20,456($a0)
    # Line 1262
    # lw $t9, -32712($gp) # &sub_0d9c0000
    ld	$at,8($sp)
    addiu	$t9,$t9,-528
    mov.s	$f13,$f20
    move	$a0,$at
    bal __glim_Materiali
    # Line 1261
    sw	$v0,464($at)
    # Line 1264
    ld	$gp,16($sp)
    # Line 1262
    ld	$v0,8($sp)
    ld	$ra,24($sp)
    swc1	$f0,460($v0)
    # Line 1263
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$at,11756($v0)
    # Line 1264
    ldc1	$f20,0($sp)
    addiu	$sp,$sp,32
    # Line 1263
    ori	$at,$at,0x8
    # Line 1264
    jr	$ra
    # Line 1263
    sw	$at,11756($v0)
.L0d9bff00:
    # Line 1254
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bfe90
    ld	$ra,24($sp)
.end __glim_PointSize

# Function: __glim_PolygonMode
# Declared: Line 1266 (Source lines: 1267-1299)
# Address: 0x0d9bff20 - 0x0d9c002c (Size: 268 bytes, Frame: 16)
.globl __glim_PolygonMode
.ent __glim_PolygonMode
__glim_PolygonMode:
    # Line 1277
    li	$a7,2
    # Line 1267
    addiu	$sp,$sp,-16
    # Line 1268
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 1267
    lui	$v1,0x9
    # Line 1298
    li	$t8,2
    sd	$ra,8($sp)
    # Line 1267
    addiu	$v1,$v1,3692
    sd	$gp,0($sp)
    # Line 1268
    beq	$at,$v0,.L0d9c0018
    # Line 1267
    addu	$gp,$t9,$v1
    # Line 1270
    li	$a2,6914
    beq	$a1,$a2,.L0d9bff94
    # Line 1283
    li	$t0,1028
    # Line 1270
    li	$a4,6912
    beq	$a1,$a4,.L0d9bfff0
    li	$a5,6913
    beq	$a1,$a5,.L0d9bff80
    # Line 1280
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bffe4
    ld	$ra,8($sp)
.L0d9bff80:
    # Line 1277
    sw	$a7,4120($zero)
    lw	$a6,11756($a3)
    ori	$a6,$a6,0x2
    sw	$a6,11756($a3)
.L0d9bff90:
    # Line 1283
    li	$t0,1028
.L0d9bff94:
    beq	$a0,$t0,.L0d9c0008
    ld	$ra,8($sp)
    li	$t1,1029
    beq	$a0,$t1,.L0d9c0010
    li	$t2,1032
    beq	$a0,$t2,.L0d9bffc0
    # Line 1295
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bffe4
    ld	$ra,8($sp)
.L0d9bffc0:
    # Line 1292
    sw	$a1,488($a3)
    # Line 1291
    sw	$a1,484($a3)
.L0d9bffc8:
    # Line 1298
    sw	$t8,4120($zero)
    lw	$t3,11756($a3)
    # Line 1299
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 1298
    ori	$t3,$t3,0x4
    # Line 1299
    jr	$ra
    # Line 1298
    sw	$t3,11756($a3)
.L0d9bffe4:
    # Line 1299
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bfff0:
    # Line 1274
    li	$ra,2
    sw	$ra,4120($zero)
    lw	$t9,11756($a3)
    ori	$t9,$t9,0x8
    b	.L0d9bff90
    sw	$t9,11756($a3)
.L0d9c0008:
    b	.L0d9bffc8
    # Line 1285
    sw	$a1,484($a3)
.L0d9c0010:
    # Line 1289
    b	.L0d9bffc8
    # Line 1288
    sw	$a1,488($a3)
.L0d9c0018:
    # Line 1268
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bffe4
    ld	$ra,8($sp)
.end __glim_PolygonMode

# Function: __glim_PolygonStipple
# Declared: Line 1301 (Source lines: 1302-1310)
# Address: 0x0d9c0030 - 0x0d9c00d8 (Size: 168 bytes, Frame: 32)
.globl __glim_PolygonStipple
.ent __glim_PolygonStipple
__glim_PolygonStipple:
    # Line 1302
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1304
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 1302
    lui	$v1,0x9
    move	$a5,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,3420
    sd	$gp,8($sp)
    # Line 1304
    beq	$at,$v0,.L0d9c00c0
    # Line 1302
    addu	$gp,$t9,$v1
    # Line 1307
    move	$a0,$s0
    # lw $t9, -25844($gp) # &__glFillImage
    addiu	$a6,$s0,512
    li	$a4,6656
    li	$a3,6400
    li	$a2,32
    jal	__glFillImage
    li	$a1,32
    # Line 1308
    lw	$t9,12656($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1309
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$a0,11756($s0)
    ld	$ra,16($sp)
    # Line 1310
    ld	$gp,8($sp)
    # Line 1309
    ori	$a0,$a0,0x4
    sw	$a0,11756($s0)
    # Line 1310
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c00b4:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c00c0:
    # Line 1304
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c00b4
    ld	$ra,16($sp)
.end __glim_PolygonStipple

# Function: __glim_ShadeModel
# Declared: Line 1312 (Source lines: 1313-1322)
# Address: 0x0d9c00e0 - 0x0d9c0178 (Size: 152 bytes, Frame: 16)
.globl __glim_ShadeModel
.ent __glim_ShadeModel
__glim_ShadeModel:
    # Line 1321
    li	$a5,2
    # Line 1313
    addiu	$sp,$sp,-16
    # Line 1314
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 1313
    lui	$v1,0x9
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,3244
    sd	$gp,0($sp)
    # Line 1314
    beq	$at,$v0,.L0d9c0164
    # Line 1313
    addu	$gp,$t9,$v1
    # Line 1316
    sltiu	$a1,$a0,7424
    bnez	$a1,.L0d9c0150
    sltiu	$a3,$a0,7426
    beqz	$a3,.L0d9c0154
    # Line 1317
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1320
    sw	$a0,1392($a2)
    # Line 1321
    sw	$a5,4120($zero)
    lw	$a4,11756($a2)
    # Line 1322
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 1321
    ori	$a4,$a4,0x1
    # Line 1322
    jr	$ra
    # Line 1321
    sw	$a4,11756($a2)
.L0d9c0144:
    # Line 1322
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c0150:
    # Line 1317
    # lw $t9, -26452($gp) # &__glSetError
.L0d9c0154:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c0144
    ld	$ra,8($sp)
.L0d9c0164:
    # Line 1314
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c0144
    ld	$ra,8($sp)
.end __glim_ShadeModel

# Function: __glim_StencilMask
# Declared: Line 1324 (Source lines: 1325-1331)
# Address: 0x0d9c0180 - 0x0d9c0208 (Size: 136 bytes, Frame: 16)
.globl __glim_StencilMask
.ent __glim_StencilMask
__glim_StencilMask:
    # Line 1326
    lw	$v0,4120($zero)
    li	$a3,1
    # Line 1325
    lui	$at,0x9
    # Line 1326
    lw	$a2,4112($zero)
    # Line 1325
    addiu	$sp,$sp,-16
    addiu	$at,$at,3084
    sd	$gp,0($sp)
    # Line 1326
    beq	$v0,$a3,.L0d9c01f0
    # Line 1325
    addu	$gp,$t9,$at
    # Line 1328
    lw	$a1,3248($a2)
    sllv	$a1,$a3,$a1
    # Line 1331
    ld	$gp,0($sp)
    # Line 1328
    addiu	$a1,$a1,-1
    and	$a1,$a0,$a1
    sh	$a1,1674($a2)
    # Line 1329
    li	$a0,2
    sw	$a0,4120($zero)
    # Line 1330
    lw	$v1,11752($a2)
    # Line 1329
    lw	$v0,11756($a2)
    # Line 1331
    addiu	$sp,$sp,16
    # Line 1330
    ori	$v1,$v1,0x2
    sw	$v1,11752($a2)
    # Line 1329
    ori	$v0,$v0,0x1
    # Line 1331
    jr	$ra
    # Line 1329
    sw	$v0,11756($a2)
.L0d9c01e4:
    # Line 1331
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c01f0:
    # Line 1326
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c01e4
    ld	$ra,8($sp)
.end __glim_StencilMask

# Function: __glim_StencilFunc
# Declared: Line 1333 (Source lines: 1334-1348)
# Address: 0x0d9c0210 - 0x0d9c02e0 (Size: 208 bytes, Frame: 16)
.globl __glim_StencilFunc
.ent __glim_StencilFunc
__glim_StencilFunc:
    # Line 1334
    addiu	$sp,$sp,-16
    # Line 1341
    slti	$t1,$a1,0
    # Line 1335
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$a6,1
    # Line 1334
    lui	$v0,0x9
    # Line 1341
    movn	$a1,$zero,$t1
    sd	$ra,8($sp)
    # Line 1334
    addiu	$v0,$v0,2940
    sd	$gp,0($sp)
    # Line 1335
    beq	$at,$a6,.L0d9c02cc
    # Line 1334
    addu	$gp,$t9,$v0
    # Line 1337
    sltiu	$v1,$a0,512
    bnez	$v1,.L0d9c02b8
    sltiu	$a3,$a0,520
    beqz	$a3,.L0d9c02bc
    # Line 1338
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1341
    lw	$t0,3248($a4)
    sllv	$t0,$a6,$t0
    # Line 1348
    ld	$gp,0($sp)
    # Line 1341
    addiu	$t0,$t0,-1
    # Line 1343
    sw	$a0,1664($a4)
    # Line 1341
    slt	$t2,$t0,$a1
    # Line 1342
    move	$t1,$t0
    # Line 1345
    and	$t0,$t0,$a2
    sh	$t0,1672($a4)
    movz	$t1,$a1,$t2
    # Line 1344
    sh	$t1,1670($a4)
    # Line 1346
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 1347
    lw	$a6,11752($a4)
    move	$ra,$ra
    # Line 1346
    lw	$a5,11756($a4)
    # Line 1348
    addiu	$sp,$sp,16
    # Line 1347
    ori	$a6,$a6,0x2
    sw	$a6,11752($a4)
    # Line 1346
    ori	$a5,$a5,0x1
    # Line 1348
    jr	$ra
    # Line 1346
    sw	$a5,11756($a4)
.L0d9c02ac:
    # Line 1348
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c02b8:
    # Line 1338
    # lw $t9, -26452($gp) # &__glSetError
.L0d9c02bc:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c02ac
    ld	$ra,8($sp)
.L0d9c02cc:
    # Line 1335
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c02ac
    ld	$ra,8($sp)
.end __glim_StencilFunc

# Function: __glim_StencilOp
# Declared: Line 1350 (Source lines: 1351-1386)
# Address: 0x0d9c02e0 - 0x0d9c0434 (Size: 340 bytes, Frame: 16)
.globl __glim_StencilOp
.ent __glim_StencilOp
__glim_StencilOp:
    # Line 1354
    li	$t0,7683
    # Line 1351
    addiu	$sp,$sp,-16
    # Line 1352
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 1351
    lui	$v1,0x9
    # Line 1363
    li	$t8,7682
    sd	$ra,8($sp)
    # Line 1351
    addiu	$v1,$v1,2732
    sd	$gp,0($sp)
    # Line 1352
    beq	$at,$v0,.L0d9c0420
    # Line 1351
    addu	$gp,$t9,$v1
    # Line 1354
    beqz	$a0,.L0d9c0354
    # Line 1372
    li	$v1,7682
    # Line 1354
    li	$a3,5386
    beq	$a0,$a3,.L0d9c0354
    li	$a5,7680
    beq	$a0,$a5,.L0d9c0354
    li	$a6,7681
    beq	$a0,$a6,.L0d9c0354
    li	$a7,7682
    beq	$a0,$a7,.L0d9c0354
    nop
    beq	$a0,$t0,.L0d9c0354
    # Line 1359
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c0414
    ld	$ra,8($sp)
.L0d9c0354:
    # Line 1363
    beqz	$a1,.L0d9c0398
    # Line 1372
    li	$a3,7683
    # Line 1363
    li	$t1,5386
    beq	$a1,$t1,.L0d9c0398
    li	$t2,7680
    beq	$a1,$t2,.L0d9c0398
    li	$t3,7681
    beq	$a1,$t3,.L0d9c0398
    nop
    beq	$a1,$t8,.L0d9c0398
    li	$t9,7683
    beq	$a1,$t9,.L0d9c0398
    # Line 1368
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c0414
    ld	$ra,8($sp)
.L0d9c0398:
    # Line 1372
    beqz	$a2,.L0d9c03d8
    li	$ra,5386
    beq	$a2,$ra,.L0d9c03d8
    li	$at,7680
    beq	$a2,$at,.L0d9c03d8
    li	$v0,7681
    beq	$a2,$v0,.L0d9c03d8
    nop
    beq	$a2,$v1,.L0d9c03d8
    nop
    beq	$a2,$a3,.L0d9c03d8
    # Line 1377
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c0414
    ld	$ra,8($sp)
.L0d9c03d8:
    # Line 1386
    ld	$gp,0($sp)
    # Line 1383
    sw	$a2,1684($a4)
    # Line 1382
    sw	$a1,1680($a4)
    # Line 1381
    sw	$a0,1676($a4)
    # Line 1384
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 1385
    lw	$a6,11752($a4)
    ld	$ra,8($sp)
    # Line 1384
    lw	$a5,11756($a4)
    # Line 1386
    addiu	$sp,$sp,16
    # Line 1385
    ori	$a6,$a6,0x4
    sw	$a6,11752($a4)
    # Line 1384
    ori	$a5,$a5,0x1
    # Line 1386
    jr	$ra
    # Line 1384
    sw	$a5,11756($a4)
.L0d9c0414:
    # Line 1386
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c0420:
    # Line 1352
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c0414
    ld	$ra,8($sp)
.end __glim_StencilOp

# Function: __glCopyContext
# Declared: Line 1394 (Source lines: 1395-1644)
# Address: 0x0d9c0440 - 0x0d9c116c (Size: 3372 bytes, Frame: 224)
.globl __glCopyContext
.ent __glCopyContext
__glCopyContext:
    # Line 1395
    addiu	$sp,$sp,-96
    sd	$s7,24($sp)
    sd	$ra,8($sp)
    sd	$s5,16($sp)
    # Line 1412
    lwc1	$f3,30752($a1)
    # Line 1395
    sd	$s6,0($sp)
    # Line 1412
    swc1	$f3,30752($a0)
    # Line 1413
    lwc1	$f2,30756($a1)
    sd	$gp,32($sp)
    # Line 1395
    lui	$at,0x9
    addiu	$at,$at,2380
    # Line 1413
    swc1	$f2,30756($a0)
    # Line 1395
    addu	$gp,$t9,$at
    # Line 1414
    lwc1	$f1,30760($a1)
    # Line 1420
    # lw $t9, -26472($gp) # &__glContextSetColorScales
    # Line 1414
    swc1	$f1,30760($a0)
    # Line 1415
    lwc1	$f0,30792($a1)
    # Line 1395
    move	$s6,$a2
    move	$s5,$a1
    sd	$s3,40($sp)
    # Line 1420
    nop
    # Line 1395
    move	$s3,$a0
    # Line 1420
    jal	__glContextSetColorScales
    # Line 1415
    swc1	$f0,30792($a0)
    # Line 1420
    andi	$v0,$s6,0x200
    beqz	$v0,.L0d9c04d0
    # Line 1423
    andi	$v1,$s6,0x4000
    lwc1	$f7,1648($s5)
    swc1	$f7,1648($s3)
    lwc1	$f6,1652($s5)
    swc1	$f6,1652($s3)
    lwc1	$f5,1656($s5)
    swc1	$f5,1656($s3)
    lwc1	$f4,1660($s5)
    swc1	$f4,1660($s3)
    andi	$v1,$s6,0x4000
.L0d9c04d0:
    beqz	$v1,.L0d9c0578
    addiu	$a2,$s5,1824
    addiu	$a4,$s3,1824
    li	$a5,0x8
    # Line 1427
    addiu	$a7,$s3,1820
    addiu	$a6,$s5,1820
    lw	$a3,1820($s5)
    li	$a1,4
    li	$a0,0x12
    sw	$a3,1820($s3)
    nop
    nop
.L0d9c0500:
    addu	$t0,$a1,$a6
    addu	$t1,$a1,$a7
    lw	$t0,0($t0)
    addiu	$a0,$a0,-2
    addu	$a3,$a1,$a2
    sw	$t0,0($t1)
    addu	$t0,$a1,$a4
    lw	$a3,0($a3)
    addu	$a1,$a1,$a5
    bgtz	$a0,.L0d9c0500
    sw	$a3,0($t0)
    # Line 1428
    lw	$t8,1792($s3)
    li	$t9,-16
    and	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 1429
    lw	$t9,1792($s5)
    # Line 1434
    lw	$t3,11752($s3)
    # Line 1429
    andi	$t9,$t9,0xf
    # Line 1431
    lw	$t1,1796($s3)
    # Line 1429
    or	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 1431
    li	$t2,-2049
    and	$t1,$t1,$t2
    sw	$t1,1796($s3)
    # Line 1432
    lw	$t2,1796($s5)
    # Line 1434
    ori	$t3,$t3,0x1
    sw	$t3,11752($s3)
    # Line 1432
    andi	$t2,$t2,0x800
    or	$t1,$t1,$t2
    sw	$t1,1796($s3)
.L0d9c0578:
    # Line 1434
    andi	$ra,$s6,0x1
    beqz	$ra,.L0d9c0630
    # Line 1438
    andi	$t9,$s6,0x100
    li	$a5,2
    li	$a1,34
    move	$a0,$zero
    addiu	$a4,$s3,184
    addiu	$a2,$s5,184
.L0d9c0598:
    addiu	$a5,$a5,-1
    addu	$at,$a0,$a2
    addiu	$a1,$a1,-1
    addu	$v0,$a0,$a4
    ld	$at,0($at)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9c0598
    sd	$at,0($v0)
    addiu	$t2,$a2,24
    addiu	$a6,$a4,24
    li	$a7,0x20
    addiu	$a5,$a2,8
    addiu	$t0,$a4,8
    addiu	$t3,$a4,16
    addiu	$t1,$a2,16
    nop
    nop
    nop
.L0d9c05e0:
    addu	$t8,$a0,$a2
    addu	$t9,$a0,$a4
    ld	$t8,0($t8)
    addu	$a3,$a0,$a5
    sd	$t8,0($t9)
    addu	$t8,$a0,$t0
    ld	$a3,0($a3)
    addu	$v1,$a0,$t1
    sd	$a3,0($t8)
    addu	$a3,$a0,$t3
    ld	$v1,0($v1)
    addiu	$a1,$a1,-4
    addu	$v0,$a0,$t2
    sd	$v1,0($a3)
    addu	$v1,$a0,$a6
    ld	$v0,0($v0)
    addu	$a0,$a0,$a7
    bgtz	$a1,.L0d9c05e0
    sd	$v0,0($v1)
    andi	$t9,$s6,0x100
.L0d9c0630:
    # Line 1443
    li	$v0,-17
    # Line 1438
    beqz	$t9,.L0d9c0678
    li	$s7,2
    # Line 1443
    lw	$at,1792($s3)
    # Line 1442
    ld	$a0,1632($s5)
    sd	$a0,1632($s3)
    ld	$v1,1640($s5)
    # Line 1443
    and	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 1442
    sd	$v1,1640($s3)
    # Line 1444
    lw	$v0,1792($s5)
    andi	$v0,$v0,0x10
    or	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 1446
    sw	$s7,4120($zero)
    lw	$ra,11756($s3)
    ori	$ra,$ra,0x80
    sw	$ra,11756($s3)
.L0d9c0678:
    andi	$a1,$s6,0x2000
    beqz	$a1,.L0d9c06cc
    nop
    # Line 1450
    ld	$a6,1792($s5)
    sd	$a6,1792($s3)
    ld	$a5,1800($s5)
    sd	$a5,1800($s3)
    ld	$a4,1808($s5)
    sd	$a4,1808($s3)
    lw	$a3,1816($s5)
    sw	$a3,1816($s3)
    # Line 1451
    sw	$s7,4120($zero)
    # Line 1453
    lw	$t9,11792($s3)
    # Line 1451
    lw	$a2,11756($s3)
    # Line 1453
    move	$a0,$s3
    # Line 1451
    ori	$a2,$a2,0xae
    # Line 1453
    jalr	$t9
    # Line 1451
    sw	$a2,11756($s3)
    # Line 1454
    lw	$t9,12000($s3)
    jalr	$t9
    move	$a0,$s3
.L0d9c06cc:
    sd	$s2,56($sp)
    sd	$s4,64($sp)
    dsll32	$a7,$s6,0xf
    sd	$s0,72($sp)
    bgez	$a7,.L0d9c0760
    sd	$s1,80($sp)
    addiu	$a4,$s5,1936
    addiu	$a5,$s3,1936
    li	$a6,0x8
    # Line 1458
    li	$a0,12
    move	$a1,$zero
    addiu	$a7,$s3,1932
    addiu	$a2,$s5,1932
.L0d9c0700:
    addu	$t1,$a1,$a2
    addu	$t2,$a1,$a7
    lw	$t1,0($t1)
    addiu	$a0,$a0,-2
    addu	$t0,$a1,$a4
    sw	$t1,0($t2)
    addu	$t1,$a1,$a5
    lw	$t0,0($t0)
    addu	$a1,$a1,$a6
    bgtz	$a0,.L0d9c0700
    sw	$t0,0($t1)
    # Line 1459
    lui	$ra,0x80
    lw	$t8,1792($s3)
    nor	$t9,$ra,$zero
    and	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 1460
    lw	$t9,1792($s5)
    and	$t9,$t9,$ra
    or	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 1462
    lw	$t3,1808($s5)
    sw	$t3,1808($s3)
    # Line 1463
    lw	$t2,1812($s5)
    sw	$t2,1812($s3)
.L0d9c0760:
    andi	$ra,$s6,0x80
    beqz	$ra,.L0d9c07e0
    # Line 1467
    addiu	$a0,$s3,1588
    addiu	$a1,$s5,1588
    lw	$t2,1588($s5)
    sw	$t2,1588($s3)
    lw	$t1,1592($s5)
    sw	$t1,1592($s3)
    lw	$t0,1596($s5)
    sw	$t0,1596($s3)
    lw	$a7,1600($s5)
    sw	$a7,1600($s3)
    lw	$a6,1604($s5)
    sw	$a6,1604($s3)
    lw	$a5,1608($s5)
    sw	$a5,1608($s3)
    lw	$a3,1612($s5)
    sw	$a3,1612($s3)
    lw	$v1,1616($s5)
    sw	$v1,1616($s3)
    lw	$v0,1620($s5)
    sw	$v0,1620($s3)
    lw	$at,1624($s5)
    sw	$at,1624($s3)
    # Line 1468
    lw	$t3,1792($s3)
    li	$t8,-33
    and	$t3,$t3,$t8
    sw	$t3,1792($s3)
    # Line 1469
    lw	$t8,1792($s5)
    andi	$t8,$t8,0x20
    or	$t3,$t3,$t8
    sw	$t3,1792($s3)
.L0d9c07e0:
    andi	$t9,$s6,0x8000
    beqz	$t9,.L0d9c0818
    # Line 1474
    andi	$a1,$s6,0x40
    ld	$a0,1896($s5)
    sd	$a0,1896($s3)
    ld	$v1,1904($s5)
    sd	$v1,1904($s3)
    ld	$v0,1912($s5)
    sd	$v0,1912($s3)
    ld	$at,1920($s5)
    sd	$at,1920($s3)
    lw	$ra,1928($s5)
    sw	$ra,1928($s3)
    andi	$a1,$s6,0x40
.L0d9c0818:
    beqz	$a1,.L0d9c0984
    # Line 1491
    andi	$a7,$s6,0x4
    # Line 1478
    lw	$t8,1384($s5)
    sw	$t8,1384($s3)
    # Line 1479
    lw	$t3,1388($s5)
    sw	$t3,1388($s3)
    # Line 1480
    lw	$t2,1392($s5)
    sw	$t2,1392($s3)
    # Line 1481
    lw	$t1,1396($s5)
    sw	$t1,1396($s3)
    lw	$t0,1400($s5)
    sw	$t0,1400($s3)
    lw	$a7,1404($s5)
    sw	$a7,1404($s3)
    lw	$a6,1408($s5)
    sw	$a6,1408($s3)
    lw	$a5,1412($s5)
    sw	$a5,1412($s3)
    lw	$a4,1416($s5)
    sw	$a4,1416($s3)
    lw	$a3,1420($s5)
    # Line 1482
    addiu	$a1,$s3,1424
    addiu	$a0,$s5,1424
    # Line 1481
    sw	$a3,1420($s3)
    # Line 1482
    ld	$t0,1424($s5)
    sd	$t0,1424($s3)
    ld	$a7,1432($s5)
    sd	$a7,1432($s3)
    ld	$a6,1440($s5)
    sd	$a6,1440($s3)
    ld	$a5,1448($s5)
    sd	$a5,1448($s3)
    ld	$a3,1456($s5)
    sd	$a3,1456($s3)
    ld	$v1,1464($s5)
    sd	$v1,1464($s3)
    ld	$v0,1472($s5)
    sd	$v0,1472($s3)
    ld	$at,1480($s5)
    sd	$at,1480($s3)
    ld	$ra,1488($s5)
    sd	$ra,1488($s3)
    ld	$t9,1496($s5)
    sd	$t9,1496($s3)
    # Line 1483
    addiu	$a1,$s3,1504
    addiu	$a0,$s5,1504
    ld	$a3,1504($s5)
    sd	$a3,1504($s3)
    ld	$v1,1512($s5)
    sd	$v1,1512($s3)
    ld	$v0,1520($s5)
    sd	$v0,1520($s3)
    ld	$at,1528($s5)
    sd	$at,1528($s3)
    ld	$ra,1536($s5)
    sd	$ra,1536($s3)
    ld	$t9,1544($s5)
    sd	$t9,1544($s3)
    ld	$t8,1552($s5)
    sd	$t8,1552($s3)
    ld	$t3,1560($s5)
    sd	$t3,1560($s3)
    ld	$t2,1568($s5)
    sd	$t2,1568($s3)
    ld	$t1,1576($s5)
    sd	$t1,1576($s3)
    # Line 1484
    lw	$a3,3588($s3)
    # lw $t9, -22900($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    lw	$a1,1584($s5)
    sll	$a2,$a2,0x2
    lw	$a0,1584($s3)
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1487
    lw	$a5,1792($s3)
    li	$a6,-193
    and	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 1488
    lw	$a6,1792($s5)
    andi	$a6,$a6,0xc0
    or	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 1490
    lw	$a4,1800($s5)
    sw	$a4,1800($s3)
    # Line 1491
    sw	$s7,4120($zero)
    lw	$a3,11756($s3)
    ori	$a3,$a3,0x20
    sw	$a3,11756($s3)
    andi	$a7,$s6,0x4
.L0d9c0984:
    beqz	$a7,.L0d9c09e0
    # Line 1496
    li	$t2,-769
    # Line 1495
    lwc1	$f9,468($s5)
    swc1	$f9,468($s3)
    lwc1	$f8,472($s5)
    # Line 1496
    lw	$t1,1792($s3)
    # Line 1495
    swc1	$f8,472($s3)
    lw	$t9,476($s5)
    sw	$t9,476($s3)
    lhu	$t8,480($s5)
    sh	$t8,480($s3)
    lh	$t3,482($s5)
    # Line 1496
    and	$t1,$t1,$t2
    sw	$t1,1792($s3)
    # Line 1495
    sh	$t3,482($s3)
    # Line 1497
    lw	$t2,1792($s5)
    andi	$t2,$t2,0x300
    or	$t1,$t1,$t2
    sw	$t1,1792($s3)
    # Line 1499
    sw	$s7,4120($zero)
    lw	$t0,11756($s3)
    ori	$t0,$t0,0x2
    sw	$t0,11756($s3)
.L0d9c09e0:
    dsll32	$ra,$s6,0xe
    bgez	$ra,.L0d9c09f8
    # Line 1503
    andi	$v0,$s6,0x20
    lw	$at,1980($s5)
    sw	$at,1980($s3)
    andi	$v0,$s6,0x20
.L0d9c09f8:
    beqz	$v0,.L0d9c0af0
    # Line 1518
    andi	$ra,$s6,0x2
    # Line 1507
    lw	$a4,1236($s5)
    sw	$a4,1236($s3)
    addiu	$a1,$s5,648
    # Line 1508
    lw	$a3,1240($s5)
    addiu	$a6,$s3,648
    li	$a7,0x10
    sw	$a3,1240($s3)
    # Line 1509
    addiu	$a5,$s5,640
    li	$a2,8
    ld	$v1,640($s5)
    li	$a0,0xe
    addiu	$a4,$s3,640
    sd	$v1,640($s3)
    nop
    nop
    nop
.L0d9c0a40:
    addu	$t1,$a2,$a5
    addu	$t2,$a2,$a4
    ld	$t1,0($t1)
    addiu	$a0,$a0,-2
    addu	$t0,$a2,$a1
    sd	$t1,0($t2)
    addu	$t1,$a2,$a6
    ld	$t0,0($t0)
    addu	$a2,$a2,$a7
    bgtz	$a0,.L0d9c0a40
    sd	$t0,0($t1)
    addu	$t8,$a2,$a5
    addu	$t9,$a2,$a4
    lw	$t8,0($t8)
    sw	$t8,0($t9)
    # Line 1510
    lui	$t8,0xe00
    lw	$t2,1792($s3)
    nor	$t3,$t8,$zero
    and	$t2,$t2,$t3
    sw	$t2,1792($s3)
    # Line 1511
    lw	$t3,1792($s5)
    and	$t3,$t3,$t8
    # Line 1513
    lui	$t8,0x3000
    # Line 1516
    # lw $t9, -26480($gp) # &__glCopyColorTableScaleBias
    # Line 1511
    or	$t2,$t2,$t3
    # Line 1513
    nor	$t3,$t8,$zero
    and	$t2,$t2,$t3
    sw	$t2,1792($s3)
    # Line 1514
    lw	$t3,1792($s5)
    # Line 1516
    addiu	$a1,$s3,5372
    addiu	$a0,$s5,5372
    # Line 1514
    and	$t3,$t3,$t8
    or	$t2,$t2,$t3
    # Line 1516
    jal	__glCopyColorTableScaleBias
    # Line 1514
    sw	$t2,1792($s3)
    # Line 1517
    # lw $t9, -26348($gp) # &__glCopyConvolutionPixelModeState
    addiu	$a1,$s3,640
    jal	__glCopyConvolutionPixelModeState
    addiu	$a0,$s5,640
    # Line 1518
    sw	$s7,4120($zero)
    lw	$t9,11756($s3)
    ori	$t9,$t9,0x10
    sw	$t9,11756($s3)
    andi	$ra,$s6,0x2
.L0d9c0af0:
    beqz	$ra,.L0d9c0b3c
    # Line 1523
    li	$v1,-1025
    # Line 1522
    lwc1	$f11,456($s5)
    swc1	$f11,456($s3)
    lwc1	$f10,460($s5)
    # Line 1523
    lw	$v0,1792($s3)
    # Line 1522
    swc1	$f10,460($s3)
    lw	$a0,464($s5)
    # Line 1523
    and	$v0,$v0,$v1
    sw	$v0,1792($s3)
    # Line 1522
    sw	$a0,464($s3)
    # Line 1524
    lw	$v1,1792($s5)
    andi	$v1,$v1,0x400
    or	$v0,$v0,$v1
    sw	$v0,1792($s3)
    # Line 1526
    sw	$s7,4120($zero)
    lw	$at,11756($s3)
    ori	$at,$at,0x8
    sw	$at,11756($s3)
.L0d9c0b3c:
    andi	$a1,$s6,0x8
    # Line 1541
    li	$a4,-1537
    # Line 1526
    beqz	$a1,.L0d9c0bd4
    # Line 1537
    ld	$a6,-22300($gp)
    # Line 1541
    lw	$a3,1796($s3)
    # Line 1537
    lw	$a5,1792($s3)
    # Line 1530
    lw	$t9,484($s5)
    sw	$t9,484($s3)
    lw	$t8,488($s5)
    sw	$t8,488($s3)
    lw	$t3,492($s5)
    sw	$t3,492($s3)
    lw	$t2,496($s5)
    sw	$t2,496($s3)
    lw	$t1,500($s5)
    sw	$t1,500($s3)
    lw	$t0,504($s5)
    sw	$t0,504($s3)
    lw	$a7,508($s5)
    # Line 1537
    and	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 1530
    sw	$a7,508($s3)
    # Line 1538
    lw	$a6,1792($s5)
    lui	$a7,0x100
    ori	$a7,$a7,0x3800
    # Line 1541
    and	$a3,$a3,$a4
    sw	$a3,1796($s3)
    # Line 1538
    and	$a6,$a6,$a7
    or	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 1542
    lw	$a4,1796($s5)
    andi	$a4,$a4,0x600
    or	$a3,$a3,$a4
    sw	$a3,1796($s3)
    # Line 1545
    sw	$s7,4120($zero)
    lw	$a2,11756($s3)
    ori	$a2,$a2,0x4
    sw	$a2,11756($s3)
.L0d9c0bd4:
    andi	$ra,$s6,0x10
    # Line 1608
    move	$s0,$zero
    # Line 1566
    li	$t3,0x8000
    # Line 1545
    beqz	$ra,.L0d9c0c6c
    # Line 1566
    nor	$t3,$t3,$zero
    addiu	$a2,$s5,520
    addiu	$a5,$s3,520
    li	$a7,0x10
    # Line 1549
    li	$a0,16
    move	$a1,$zero
    addiu	$a6,$s3,512
    addiu	$a4,$s5,512
    nop
    nop
    nop
.L0d9c0c10:
    addu	$v0,$a1,$a4
    addu	$v1,$a1,$a6
    ld	$v0,0($v0)
    addiu	$a0,$a0,-2
    addu	$at,$a1,$a2
    sd	$v0,0($v1)
    addu	$v0,$a1,$a5
    ld	$at,0($at)
    addu	$a1,$a1,$a7
    bgtz	$a0,.L0d9c0c10
    sd	$at,0($v0)
    # Line 1550
    lw	$a0,1792($s3)
    li	$a1,-8193
    and	$a0,$a0,$a1
    sw	$a0,1792($s3)
    # Line 1551
    lw	$a1,1792($s5)
    andi	$a1,$a1,0x2000
    or	$a0,$a0,$a1
    sw	$a0,1792($s3)
    # Line 1553
    sw	$s7,4120($zero)
    lw	$v1,11756($s3)
    ori	$v1,$v1,0x44
    sw	$v1,11756($s3)
.L0d9c0c6c:
    dsll32	$a2,$s6,0xc
    bgez	$a2,.L0d9c0cb4
    # Line 1559
    li	$a4,-16385
    lw	$a3,1792($s3)
    # Line 1558
    lw	$t0,2524($s5)
    sw	$t0,2524($s3)
    lw	$a7,2528($s5)
    sw	$a7,2528($s3)
    lw	$a6,2532($s5)
    sw	$a6,2532($s3)
    lw	$a5,2536($s5)
    # Line 1559
    and	$a3,$a3,$a4
    sw	$a3,1792($s3)
    # Line 1558
    sw	$a5,2536($s3)
    # Line 1560
    lw	$a4,1792($s5)
    andi	$a4,$a4,0x4000
    or	$a3,$a3,$a4
    sw	$a3,1792($s3)
.L0d9c0cb4:
    andi	$t1,$s6,0x400
    beqz	$t1,.L0d9c0d04
    # Line 1569
    dsll32	$v0,$s6,0xd
    lw	$t8,11752($s3)
    # Line 1566
    lw	$t2,1792($s3)
    # Line 1565
    ld	$at,1664($s5)
    sd	$at,1664($s3)
    ld	$ra,1672($s5)
    sd	$ra,1672($s3)
    ld	$t9,1680($s5)
    # Line 1566
    and	$t2,$t2,$t3
    sw	$t2,1792($s3)
    # Line 1565
    sd	$t9,1680($s3)
    # Line 1567
    lw	$t3,1792($s5)
    # Line 1569
    ori	$t8,$t8,0x6
    sw	$t8,11752($s3)
    # Line 1567
    andi	$t3,$t3,0x8000
    or	$t2,$t2,$t3
    sw	$t2,1792($s3)
    # Line 1569
    dsll32	$v0,$s6,0xd
.L0d9c0d04:
    bgez	$v0,.L0d9c1018
    addiu	$a4,$s5,1992
    addiu	$a7,$s3,1992
    li	$a2,0x10
    # Line 1574
    lw	$s4,3604($s3)
    # Line 1575
    addiu	$a6,$s3,1984
    addiu	$a5,$s5,1984
    ld	$v1,1984($s5)
    li	$a0,8
    li	$a1,0xe
    sd	$v1,1984($s3)
.L0d9c0d30:
    addu	$t0,$a0,$a5
    addu	$t1,$a0,$a6
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a4
    sd	$t0,0($t1)
    addu	$t0,$a0,$a7
    ld	$a3,0($a3)
    addu	$a0,$a0,$a2
    bgtz	$a1,.L0d9c0d30
    sd	$a3,0($t0)
    li	$t0,3
    # Line 1576
    li	$a1,31
    move	$a7,$zero
    # Line 1575
    addu	$t2,$a0,$a6
    li	$a6,0x10
    addu	$t1,$a0,$a5
    # Line 1576
    addiu	$a2,$s3,2108
    addiu	$a4,$s5,2108
    # Line 1575
    lw	$t1,0($t1)
    addiu	$t8,$a4,4
    addiu	$a5,$a2,8
    sw	$t1,0($t2)
.L0d9c0d8c:
    addiu	$t0,$t0,-1
    # Line 1576
    addu	$t2,$a7,$a4
    addiu	$a1,$a1,-1
    addu	$t3,$a7,$a2
    lw	$t2,0($t2)
    addiu	$a7,$a7,4
    bnez	$t0,.L0d9c0d8c
    sw	$t2,0($t3)
    addiu	$t1,$a4,8
    addiu	$t2,$a4,12
    addiu	$t0,$a2,12
    addiu	$t3,$a2,4
    move	$a0,$a7
.L0d9c0dc0:
    addu	$v0,$a0,$a4
    addu	$v1,$a0,$a2
    lw	$v0,0($v0)
    addu	$at,$a0,$t8
    sw	$v0,0($v1)
    addu	$v0,$a0,$t3
    lw	$at,0($at)
    addu	$ra,$a0,$t1
    sw	$at,0($v0)
    addu	$at,$a0,$a5
    lw	$ra,0($ra)
    addiu	$a1,$a1,-4
    addu	$t9,$a0,$t2
    sw	$ra,0($at)
    addu	$ra,$a0,$t0
    lw	$t9,0($t9)
    addu	$a0,$a0,$a6
    bgtz	$a1,.L0d9c0dc0
    sw	$t9,0($ra)
    addiu	$a4,$s5,2240
    addiu	$a2,$s3,2240
    li	$a7,0x10
    # Line 1577
    addiu	$a6,$s3,2232
    addiu	$a5,$s5,2232
    ld	$v1,2232($s5)
    li	$a0,8
    li	$a1,0xe
    sd	$v1,2232($s3)
.L0d9c0e30:
    addu	$t0,$a0,$a5
    addu	$t1,$a0,$a6
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a4
    sd	$t0,0($t1)
    addu	$t0,$a0,$a2
    ld	$a3,0($a3)
    addu	$a0,$a0,$a7
    bgtz	$a1,.L0d9c0e30
    sd	$a3,0($t0)
    li	$t0,3
    # Line 1578
    li	$a7,31
    move	$a1,$zero
    # Line 1577
    addu	$t2,$a0,$a6
    # Line 1578
    addiu	$a4,$s5,2356
    # Line 1577
    addu	$t1,$a0,$a5
    # Line 1578
    addiu	$a2,$s3,2356
    addiu	$t8,$a4,4
    # Line 1577
    lw	$t1,0($t1)
    addiu	$a6,$a2,8
    sw	$t1,0($t2)
    addiu	$t1,$a2,12
.L0d9c0e8c:
    addiu	$t0,$t0,-1
    # Line 1578
    addu	$t2,$a1,$a4
    addiu	$a7,$a7,-1
    addu	$t3,$a1,$a2
    lw	$t2,0($t2)
    addiu	$a1,$a1,4
    bnez	$t0,.L0d9c0e8c
    sw	$t2,0($t3)
    addiu	$a5,$a4,8
    addiu	$t2,$a4,12
    li	$t0,0x10
    addiu	$t3,$a2,4
    move	$a0,$a7
.L0d9c0ec0:
    addu	$v0,$a1,$a4
    addu	$v1,$a1,$a2
    lw	$v0,0($v0)
    addu	$at,$a1,$t8
    sw	$v0,0($v1)
    addu	$v0,$a1,$t3
    lw	$at,0($at)
    addu	$ra,$a1,$a5
    sw	$at,0($v0)
    addu	$at,$a1,$a6
    lw	$ra,0($ra)
    addiu	$a0,$a0,-4
    addu	$t9,$a1,$t2
    sw	$ra,0($at)
    addu	$ra,$a1,$t1
    lw	$t9,0($t9)
    addu	$a1,$a1,$t0
    bgtz	$a0,.L0d9c0ec0
    sw	$t9,0($ra)
    # Line 1580
    lwc1	$f19,2488($s5)
    swc1	$f19,2488($s3)
    # Line 1581
    lwc1	$f18,2492($s5)
    swc1	$f18,2492($s3)
    # Line 1582
    lwc1	$f17,2496($s5)
    swc1	$f17,2496($s3)
    # Line 1583
    lwc1	$f16,2500($s5)
    swc1	$f16,2500($s3)
    # Line 1585
    lwc1	$f15,2504($s5)
    swc1	$f15,2504($s3)
    # Line 1586
    lwc1	$f14,2508($s5)
    swc1	$f14,2508($s3)
    # Line 1587
    lwc1	$f13,2512($s5)
    swc1	$f13,2512($s3)
    # Line 1588
    lwc1	$f12,2516($s5)
    # Line 1607
    lw	$s1,2480($s3)
    # Line 1588
    swc1	$f12,2516($s3)
    # Line 1590
    lbu	$a2,2520($s5)
    sb	$a2,2520($s3)
    # Line 1591
    lbu	$a1,2521($s5)
    sb	$a1,2521($s3)
    # Line 1592
    lbu	$a0,2522($s5)
    sb	$a0,2522($s3)
    # Line 1593
    lbu	$v1,2523($s5)
    sb	$v1,2523($s3)
    # Line 1608
    beqz	$s4,.L0d9c0fb4
    lw	$s2,2480($s5)
    andi	$a3,$s4,0x1
    beqz	$a3,.L0d9c0fa0
    move	$a0,$s4
    lw	$a2,216($s2)
    lw	$a4,216($s1)
    bne	$a4,$a2,.L0d9c1154
    # Line 1612
    nop	# was lw $t9, -23772($gp) # &__glBindTexture
.L0d9c0f94:
    # Line 1610
    addiu	$s2,$s2,224
    addiu	$s1,$s1,224
    addiu	$s0,$s0,1
.L0d9c0fa0:
    sra	$a5,$a0,0x1
    bnezl	$a5,.L0d9c111c
    # Line 1608
    lw	$a2,216($s2)
.L0d9c0fac:
    # Line 1610
    lw	$s2,2480($s5)
    lw	$s1,2480($s3)
.L0d9c0fb4:
    # Line 1617
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s2
    sll	$a2,$s4,0x3
    subu	$a2,$a2,$s4
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 1619
    # lw $t9, -22900($gp) # &memcpy
    lw	$a3,3608($s3)
    lw	$a1,2484($s5)
    sll	$a2,$a3,0x3
    lw	$a0,2484($s3)
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1622
    lui	$a5,0x3fc0
    lw	$a4,1792($s3)
    ori	$a5,$a5,0xffff
    and	$a4,$a4,$a5
    sw	$a4,1792($s3)
    # Line 1623
    lw	$a5,1792($s5)
    lui	$a6,0xc03f
    and	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,1792($s3)
.L0d9c1018:
    andi	$a6,$s6,0x1000
    beqz	$a6,.L0d9c106c
    # Line 1633
    andi	$a6,$s6,0x800
    # Line 1629
    lw	$a0,1748($s3)
    # Line 1628
    lw	$a3,1744($s5)
    # Line 1629
    # lw $t9, -22900($gp) # &memcpy
    # Line 1628
    sw	$a3,1744($s3)
    # Line 1629
    lw	$a2,3600($s3)
    lw	$a1,1748($s5)
    jal	memcpy
    sll	$a2,$a2,0x4
    # Line 1632
    lw	$a4,1792($s3)
    lui	$a6,0x40
    nor	$a5,$a6,$zero
    and	$a4,$a4,$a5
    sw	$a4,1792($s3)
    # Line 1633
    lw	$a5,1792($s5)
    and	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,1792($s3)
    andi	$a6,$s6,0x800
.L0d9c106c:
    beqz	$a6,.L0d9c10b4
    # Line 1639
    nop	# was lw $t9, -23448($gp) # &__glUpdateViewportTransform
    # Line 1638
    ld	$ra,1688($s5)
    sd	$ra,1688($s3)
    ld	$t8,1696($s5)
    sd	$t8,1696($s3)
    ld	$t3,1704($s5)
    sd	$t3,1704($s3)
    ld	$t2,1712($s5)
    sd	$t2,1712($s3)
    ld	$t1,1720($s5)
    sd	$t1,1720($s3)
    ld	$t0,1728($s5)
    sd	$t0,1728($s3)
    ld	$a7,1736($s5)
    # Line 1639
    move	$a0,$s3
    jal	__glUpdateViewportTransform
    # Line 1638
    sd	$a7,1736($s3)
.L0d9c10b4:
    ld	$s2,56($sp)
    ld	$s6,0($sp)
    ld	$s4,64($sp)
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s5,16($sp)
    # Line 1644
    ld	$gp,32($sp)
    # Line 1642
    sw	$s7,4120($zero)
    lw	$at,11756($s3)
    ld	$ra,8($sp)
    # Line 1644
    ld	$s7,24($sp)
    li	$v0,1
    # Line 1642
    ori	$at,$at,0x1
    sw	$at,11756($s3)
    # Line 1644
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c10f8:
    # Line 1608
    lw	$a2,440($s2)
.L0d9c10fc:
    lw	$v0,440($s1)
    bne	$v0,$a2,.L0d9c113c
    # Line 1610
    addiu	$s0,$s0,1
    addiu	$s0,$s0,1
.L0d9c110c:
    addiu	$s2,$s2,448
    beq	$s4,$s0,.L0d9c0fac
    addiu	$s1,$s1,448
    # Line 1608
    lw	$a2,216($s2)
.L0d9c111c:
    lw	$v1,216($s1)
    beq	$v1,$a2,.L0d9c10f8
    # Line 1612
    nop	# was lw $t9, -23772($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0d9c10fc
    # Line 1608
    lw	$a2,440($s2)
.L0d9c113c:
    # Line 1612
    # lw $t9, -23772($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0d9c110c
    # Line 1610
    addiu	$s0,$s0,1
.L0d9c1154:
    # Line 1612
    move	$a0,$s3
    sd	$s4,48($sp)
    jalr	$t9
    move	$a1,$zero
    b	.L0d9c0f94
    ld	$a0,48($sp)
.end __glCopyContext

# Function: __glim_PushAttrib
# Declared: Line 1649 (Source lines: 1650-1776)
# Address: 0x0d9c1170 - 0x0d9c1b74 (Size: 2564 bytes, Frame: 192)
.globl __glim_PushAttrib
.ent __glim_PushAttrib
__glim_PushAttrib:
    # Line 1650
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 1653
    lw	$s0,4112($zero)
    sd	$s3,48($sp)
    sd	$ra,56($sp)
    lw	$at,4120($zero)
    # Line 1650
    sd	$s2,16($sp)
    # Line 1653
    li	$v0,1
    # Line 1650
    lui	$v1,0x9
    move	$s2,$a0
    sd	$s1,32($sp)
    addiu	$v1,$v1,-996
    sd	$gp,40($sp)
    # Line 1653
    beq	$at,$v0,.L0d9c1b60
    # Line 1650
    addu	$gp,$t9,$v1
    # Line 1655
    lw	$a1,3776($s0)
    lw	$a0,12672($s0)
    lw	$s3,12676($s0)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    sltu	$a0,$s3,$a0
    beqz	$a0,.L0d9c1b2c
    # Line 1775
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1657
    lw	$a2,0($s3)
    beqz	$a2,.L0d9c1b40
    move	$s1,$a2
.L0d9c11d8:
    # Line 1662
    sw	$s2,0($s1)
    # Line 1663
    ld	$t0,1792($s0)
    sd	$t0,1616($s1)
    ld	$a7,1800($s0)
    sd	$a7,1624($s1)
    ld	$a6,1808($s0)
    sd	$a6,1632($s1)
    # Line 1664
    andi	$a4,$s2,0x200
    # Line 1663
    lw	$a5,1816($s0)
    sw	$a5,1640($s1)
    # Line 1664
    addiu	$a3,$s3,4
    beqz	$a4,.L0d9c122c
    sw	$a3,12676($s0)
    # Line 1667
    lwc1	$f3,1648($s0)
    swc1	$f3,1472($s1)
    lwc1	$f2,1652($s0)
    swc1	$f2,1476($s1)
    lwc1	$f1,1656($s0)
    swc1	$f1,1480($s1)
    lwc1	$f0,1660($s0)
    swc1	$f0,1484($s1)
.L0d9c122c:
    andi	$t1,$s2,0x4000
    beqz	$t1,.L0d9c128c
    addiu	$a0,$s0,1824
    addiu	$a5,$s1,1648
    li	$a6,0x8
    # Line 1670
    addiu	$a4,$s1,1644
    addiu	$a7,$s0,1820
    lw	$t2,1820($s0)
    li	$a2,4
    li	$a1,0x12
    sw	$t2,1644($s1)
    nop
    nop
.L0d9c1260:
    addu	$t0,$a2,$a7
    addu	$t1,$a2,$a4
    lw	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a2,$a0
    sw	$t0,0($t1)
    addu	$t0,$a2,$a5
    lw	$a3,0($a3)
    addu	$a2,$a2,$a6
    bgtz	$a1,.L0d9c1260
    sw	$a3,0($t0)
.L0d9c128c:
    andi	$t1,$s2,0x1
    beqz	$t1,.L0d9c1340
    # Line 1673
    andi	$v0,$s2,0x100
    li	$a5,2
    li	$a1,34
    move	$a0,$zero
    addiu	$a4,$s1,8
    addiu	$a2,$s0,184
.L0d9c12ac:
    addiu	$a5,$a5,-1
    addu	$t2,$a0,$a2
    addiu	$a1,$a1,-1
    addu	$t3,$a0,$a4
    ld	$t2,0($t2)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9c12ac
    sd	$t2,0($t3)
    addiu	$a7,$a2,24
    addiu	$a6,$a4,24
    li	$t0,0x20
    addiu	$a5,$a2,8
    addiu	$t3,$a4,8
    addiu	$t1,$a4,16
    addiu	$t2,$a2,16
    nop
    nop
.L0d9c12f0:
    addu	$at,$a0,$a2
    addu	$v0,$a0,$a4
    ld	$at,0($at)
    addu	$ra,$a0,$a5
    sd	$at,0($v0)
    addu	$at,$a0,$t3
    ld	$ra,0($ra)
    addu	$t9,$a0,$t2
    sd	$ra,0($at)
    addu	$ra,$a0,$t1
    ld	$t9,0($t9)
    addiu	$a1,$a1,-4
    addu	$t8,$a0,$a7
    sd	$t9,0($ra)
    addu	$t9,$a0,$a6
    ld	$t8,0($t8)
    addu	$a0,$a0,$t0
    bgtz	$a1,.L0d9c12f0
    sd	$t8,0($t9)
    andi	$v0,$s2,0x100
.L0d9c1340:
    beqz	$v0,.L0d9c135c
    # Line 1676
    dsll32	$a1,$s2,0xf
    ld	$a0,1632($s0)
    sd	$a0,1456($s1)
    ld	$v1,1640($s0)
    sd	$v1,1464($s1)
    dsll32	$a1,$s2,0xf
.L0d9c135c:
    bgez	$a1,.L0d9c13b0
    # Line 1679
    andi	$t1,$s2,0x80
    addiu	$a2,$s0,1936
    addiu	$a4,$s1,1760
    li	$a5,0x8
    li	$a0,12
    move	$a1,$zero
    addiu	$a6,$s1,1756
    addiu	$a7,$s0,1932
.L0d9c1380:
    addu	$t0,$a1,$a7
    addu	$t1,$a1,$a6
    lw	$t0,0($t0)
    addiu	$a0,$a0,-2
    addu	$a3,$a1,$a2
    sw	$t0,0($t1)
    addu	$t0,$a1,$a4
    lw	$a3,0($a3)
    addu	$a1,$a1,$a5
    bgtz	$a0,.L0d9c1380
    sw	$a3,0($t0)
    andi	$t1,$s2,0x80
.L0d9c13b0:
    beqz	$t1,.L0d9c140c
    # Line 1682
    addiu	$a1,$s1,1412
    addiu	$a0,$s0,1588
    lw	$a5,1588($s0)
    sw	$a5,1412($s1)
    lw	$a3,1592($s0)
    sw	$a3,1416($s1)
    lw	$v1,1596($s0)
    sw	$v1,1420($s1)
    lw	$v0,1600($s0)
    sw	$v0,1424($s1)
    lw	$at,1604($s0)
    sw	$at,1428($s1)
    lw	$ra,1608($s0)
    sw	$ra,1432($s1)
    lw	$t9,1612($s0)
    sw	$t9,1436($s1)
    lw	$t8,1616($s0)
    sw	$t8,1440($s1)
    lw	$t3,1620($s0)
    sw	$t3,1444($s1)
    lw	$t2,1624($s0)
    sw	$t2,1448($s1)
.L0d9c140c:
    andi	$a6,$s2,0x8000
    beqz	$a6,.L0d9c1444
    # Line 1685
    andi	$t8,$s2,0x40
    ld	$t3,1896($s0)
    sd	$t3,1720($s1)
    ld	$t2,1904($s0)
    sd	$t2,1728($s1)
    ld	$t1,1912($s0)
    sd	$t1,1736($s1)
    ld	$t0,1920($s0)
    sd	$t0,1744($s1)
    lw	$a7,1928($s0)
    sw	$a7,1752($s1)
    andi	$t8,$s2,0x40
.L0d9c1444:
    beqz	$t8,.L0d9c1590
    # Line 1698
    andi	$t2,$s2,0x4
    # Line 1688
    lw	$t8,3588($s0)
    # Line 1690
    lw	$a2,1384($s0)
    sw	$a2,1208($s1)
    # Line 1691
    lw	$a1,1388($s0)
    sw	$a1,1212($s1)
    # Line 1692
    lw	$a0,1392($s0)
    sw	$a0,1216($s1)
    # Line 1693
    lw	$v1,1396($s0)
    sw	$v1,1220($s1)
    lw	$v0,1400($s0)
    sw	$v0,1224($s1)
    lw	$at,1404($s0)
    sw	$at,1228($s1)
    lw	$ra,1408($s0)
    sw	$ra,1232($s1)
    lw	$t9,1412($s0)
    # Line 1688
    sll	$s3,$t8,0x3
    # Line 1693
    sw	$t9,1236($s1)
    # Line 1688
    subu	$s3,$s3,$t8
    # Line 1693
    lw	$t9,1416($s0)
    # Line 1688
    sll	$s3,$s3,0x2
    # Line 1693
    sw	$t9,1240($s1)
    # Line 1694
    addiu	$a1,$s1,1248
    # Line 1688
    addu	$s3,$s3,$t8
    # Line 1693
    lw	$t9,1420($s0)
    # Line 1694
    addiu	$a0,$s0,1424
    # Line 1688
    sll	$s3,$s3,0x2
    # Line 1693
    sw	$t9,1244($s1)
    # Line 1694
    ld	$t9,1424($s0)
    sd	$t9,1248($s1)
    ld	$t8,1432($s0)
    sd	$t8,1256($s1)
    ld	$t3,1440($s0)
    sd	$t3,1264($s1)
    ld	$t2,1448($s0)
    sd	$t2,1272($s1)
    ld	$t1,1456($s0)
    sd	$t1,1280($s1)
    ld	$t0,1464($s0)
    sd	$t0,1288($s1)
    ld	$a7,1472($s0)
    sd	$a7,1296($s1)
    ld	$a6,1480($s0)
    sd	$a6,1304($s1)
    ld	$a5,1488($s0)
    sd	$a5,1312($s1)
    ld	$a3,1496($s0)
    sd	$a3,1320($s1)
    # Line 1695
    addiu	$a0,$s1,1328
    addiu	$a1,$s0,1504
    ld	$t1,1504($s0)
    sd	$t1,1328($s1)
    ld	$t0,1512($s0)
    sd	$t0,1336($s1)
    ld	$a7,1520($s0)
    sd	$a7,1344($s1)
    ld	$a6,1528($s0)
    sd	$a6,1352($s1)
    ld	$a5,1536($s0)
    sd	$a5,1360($s1)
    ld	$a3,1544($s0)
    sd	$a3,1368($s1)
    ld	$v1,1552($s0)
    sd	$v1,1376($s1)
    ld	$v0,1560($s0)
    sd	$v0,1384($s1)
    ld	$at,1568($s0)
    sd	$at,1392($s1)
    ld	$ra,1576($s0)
    sd	$ra,1400($s1)
    # Line 1696
    lw	$t9,0($s0)
    move	$a0,$s0
    jal	__glSetError
    move	$a1,$s3
    # Line 1698
    # lw $t9, -22900($gp) # &memcpy
    # Line 1696
    move	$a0,$v0
    sw	$v0,1408($s1)
    # Line 1698
    move	$a2,$s3
    jal	memcpy
    lw	$a1,1584($s0)
    andi	$t2,$s2,0x4
.L0d9c1590:
    beqz	$t2,.L0d9c15c4
    # Line 1701
    dsll32	$ra,$s2,0xe
    lwc1	$f5,468($s0)
    swc1	$f5,292($s1)
    lwc1	$f4,472($s0)
    swc1	$f4,296($s1)
    lw	$t9,476($s0)
    sw	$t9,300($s1)
    lhu	$t8,480($s0)
    sh	$t8,304($s1)
    lh	$t3,482($s0)
    sh	$t3,306($s1)
    dsll32	$ra,$s2,0xe
.L0d9c15c4:
    bgez	$ra,.L0d9c15d8
    # Line 1704
    andi	$v0,$s2,0x20
    lw	$at,1980($s0)
    sw	$at,1804($s1)
    andi	$v0,$s2,0x20
.L0d9c15d8:
    beqz	$v0,.L0d9c1680
    # Line 1711
    andi	$t3,$s2,0x2
    # Line 1707
    lw	$a4,1236($s0)
    sw	$a4,1060($s1)
    addiu	$a1,$s0,648
    # Line 1708
    lw	$a3,1240($s0)
    addiu	$a6,$s1,472
    li	$a7,0x10
    sw	$a3,1064($s1)
    # Line 1709
    addiu	$a5,$s0,640
    li	$a2,8
    ld	$v1,640($s0)
    li	$a0,0xe
    addiu	$a4,$s1,464
    sd	$v1,464($s1)
    nop
    nop
    nop
.L0d9c1620:
    addu	$t1,$a2,$a5
    addu	$t2,$a2,$a4
    ld	$t1,0($t1)
    addiu	$a0,$a0,-2
    addu	$t0,$a2,$a1
    sd	$t1,0($t2)
    addu	$t1,$a2,$a6
    ld	$t0,0($t0)
    addu	$a2,$a2,$a7
    bgtz	$a0,.L0d9c1620
    sd	$t0,0($t1)
    # Line 1710
    # lw $t9, -26480($gp) # &__glCopyColorTableScaleBias
    # Line 1709
    addu	$t2,$a2,$a5
    # Line 1710
    addiu	$a1,$s1,2364
    # Line 1709
    addu	$t3,$a2,$a4
    lw	$t2,0($t2)
    # Line 1710
    addiu	$a0,$s0,5372
    jal	__glCopyColorTableScaleBias
    # Line 1709
    sw	$t2,0($t3)
    # Line 1711
    # lw $t9, -26348($gp) # &__glCopyConvolutionPixelModeState
    addiu	$a1,$s1,464
    jal	__glCopyConvolutionPixelModeState
    addiu	$a0,$s0,640
    andi	$t3,$s2,0x2
.L0d9c1680:
    beqz	$t3,.L0d9c16a4
    # Line 1714
    andi	$t9,$s2,0x8
    lwc1	$f7,456($s0)
    swc1	$f7,280($s1)
    lwc1	$f6,460($s0)
    swc1	$f6,284($s1)
    lw	$t8,464($s0)
    sw	$t8,288($s1)
    andi	$t9,$s2,0x8
.L0d9c16a4:
    beqz	$t9,.L0d9c16e8
    # Line 1717
    andi	$a3,$s2,0x10
    lw	$a2,484($s0)
    sw	$a2,308($s1)
    lw	$a1,488($s0)
    sw	$a1,312($s1)
    lw	$a0,492($s0)
    sw	$a0,316($s1)
    lw	$v1,496($s0)
    sw	$v1,320($s1)
    lw	$v0,500($s0)
    sw	$v0,324($s1)
    lw	$at,504($s0)
    sw	$at,328($s1)
    lw	$ra,508($s0)
    sw	$ra,332($s1)
    andi	$a3,$s2,0x10
.L0d9c16e8:
    beqz	$a3,.L0d9c1740
    # Line 1720
    dsll32	$t2,$s2,0xc
    addiu	$a6,$s0,520
    addiu	$a4,$s1,344
    li	$a5,0x10
    li	$a0,16
    move	$a1,$zero
    addiu	$a7,$s1,336
    addiu	$a2,$s0,512
    nop
.L0d9c1710:
    addu	$t1,$a1,$a2
    addu	$t2,$a1,$a7
    ld	$t1,0($t1)
    addiu	$a0,$a0,-2
    addu	$t0,$a1,$a6
    sd	$t1,0($t2)
    addu	$t1,$a1,$a4
    ld	$t0,0($t0)
    addu	$a1,$a1,$a5
    bgtz	$a0,.L0d9c1710
    sd	$t0,0($t1)
    dsll32	$t2,$s2,0xc
.L0d9c1740:
    bgez	$t2,.L0d9c176c
    # Line 1723
    andi	$at,$s2,0x400
    lw	$ra,2524($s0)
    sw	$ra,2348($s1)
    lw	$t9,2528($s0)
    sw	$t9,2352($s1)
    lw	$t8,2532($s0)
    sw	$t8,2356($s1)
    lw	$t3,2536($s0)
    sw	$t3,2360($s1)
    andi	$at,$s2,0x400
.L0d9c176c:
    beqz	$at,.L0d9c1790
    # Line 1726
    dsll32	$a1,$s2,0xd
    ld	$a0,1664($s0)
    sd	$a0,1488($s1)
    ld	$v1,1672($s0)
    sd	$v1,1496($s1)
    ld	$v0,1680($s0)
    sd	$v0,1504($s1)
    dsll32	$a1,$s2,0xd
.L0d9c1790:
    bgez	$a1,.L0d9c1a6c
    addiu	$a5,$s0,1992
    addiu	$a6,$s1,1816
    li	$t1,0x10
    # Line 1731
    lw	$t8,3608($s0)
    # Line 1733
    addiu	$t0,$s1,1808
    li	$a0,8
    # Line 1729
    lw	$t2,3604($s0)
    # Line 1733
    addiu	$a7,$s0,1984
    # Line 1731
    sll	$s3,$t8,0x3
    # Line 1733
    ld	$a3,1984($s0)
    # Line 1729
    sll	$a2,$t2,0x3
    # Line 1731
    addu	$s3,$s3,$t8
    # Line 1733
    sd	$a3,1808($s1)
    # Line 1729
    subu	$a2,$a2,$t2
    # Line 1731
    sll	$s3,$s3,0x2
    # Line 1733
    li	$a4,0xe
    # Line 1729
    sll	$a2,$a2,0x5
    sd	$a2,8($sp)
    nop
.L0d9c17e0:
    # Line 1733
    addu	$a2,$a0,$a7
    addu	$a3,$a0,$t0
    ld	$a2,0($a2)
    addiu	$a4,$a4,-2
    addu	$a1,$a0,$a5
    sd	$a2,0($a3)
    addu	$a2,$a0,$a6
    ld	$a1,0($a1)
    addu	$a0,$a0,$t1
    bgtz	$a4,.L0d9c17e0
    sd	$a1,0($a2)
    li	$t2,3
    # Line 1734
    li	$a4,31
    move	$t1,$zero
    # Line 1733
    addu	$t3,$a0,$t0
    # Line 1734
    addiu	$a5,$s1,1932
    addiu	$a6,$s0,2108
    # Line 1733
    addu	$a3,$a0,$a7
    addiu	$t8,$a6,12
    addiu	$ra,$a6,4
    lw	$a3,0($a3)
    addiu	$t9,$a5,4
    sw	$a3,0($t3)
    addiu	$t3,$a5,12
.L0d9c1840:
    addiu	$t2,$t2,-1
    # Line 1734
    addu	$a7,$t1,$a6
    addiu	$a4,$a4,-1
    addu	$t0,$t1,$a5
    lw	$a7,0($a7)
    addiu	$t1,$t1,4
    bnez	$t2,.L0d9c1840
    sw	$a7,0($t0)
    li	$t2,0x10
    addiu	$t0,$a5,8
    addiu	$a7,$a6,8
    move	$a0,$t1
.L0d9c1870:
    addu	$v1,$a0,$a6
    addu	$a1,$a0,$a5
    lw	$v1,0($v1)
    addu	$v0,$a0,$ra
    sw	$v1,0($a1)
    addu	$v1,$a0,$t9
    lw	$v0,0($v0)
    addu	$at,$a0,$a7
    sw	$v0,0($v1)
    addu	$v0,$a0,$t0
    lw	$at,0($at)
    addiu	$a4,$a4,-4
    addu	$t1,$a0,$t8
    sw	$at,0($v0)
    addu	$at,$a0,$t3
    lw	$t1,0($t1)
    addu	$a0,$a0,$t2
    bgtz	$a4,.L0d9c1870
    sw	$t1,0($at)
    addiu	$t1,$s0,2240
    addiu	$a5,$s1,2064
    li	$a6,0x10
    # Line 1735
    addiu	$a7,$s1,2056
    addiu	$t0,$s0,2232
    ld	$a1,2232($s0)
    li	$a0,8
    li	$a4,0xe
    sd	$a1,2056($s1)
.L0d9c18e0:
    addu	$a2,$a0,$t0
    addu	$a3,$a0,$a7
    ld	$a2,0($a2)
    addiu	$a4,$a4,-2
    addu	$a1,$a0,$t1
    sd	$a2,0($a3)
    addu	$a2,$a0,$a5
    ld	$a1,0($a1)
    addu	$a0,$a0,$a6
    bgtz	$a4,.L0d9c18e0
    sd	$a1,0($a2)
    li	$t1,3
    # Line 1736
    li	$ra,31
    # Line 1735
    addu	$a3,$a0,$t0
    # Line 1736
    move	$a4,$zero
    # Line 1735
    addu	$t2,$a0,$a7
    lw	$a3,0($a3)
    # Line 1736
    addiu	$a5,$s1,2180
    addiu	$a6,$s0,2356
    # Line 1735
    sw	$a3,0($t2)
.L0d9c1930:
    addiu	$t1,$t1,-1
    # Line 1736
    addu	$a7,$a4,$a6
    addiu	$ra,$ra,-1
    addu	$t0,$a4,$a5
    lw	$a7,0($a7)
    addiu	$a4,$a4,4
    bnez	$t1,.L0d9c1930
    sw	$a7,0($t0)
    addiu	$t3,$a6,12
    addiu	$t2,$a5,12
    li	$t1,0x10
    addiu	$t9,$a6,4
    addiu	$t8,$a5,4
    addiu	$t0,$a5,8
    addiu	$a7,$a6,8
    move	$a0,$ra
.L0d9c1970:
    addu	$v1,$a4,$a6
    addu	$a1,$a4,$a5
    lw	$v1,0($v1)
    addu	$v0,$a4,$t9
    sw	$v1,0($a1)
    addu	$v1,$a4,$t8
    lw	$v0,0($v0)
    addu	$at,$a4,$a7
    sw	$v0,0($v1)
    addu	$v0,$a4,$t0
    lw	$at,0($at)
    addiu	$a0,$a0,-4
    addu	$ra,$a4,$t3
    sw	$at,0($v0)
    addu	$at,$a4,$t2
    lw	$ra,0($ra)
    addu	$a4,$a4,$t1
    bgtz	$a0,.L0d9c1970
    sw	$ra,0($at)
    # Line 1738
    lwc1	$f15,2488($s0)
    swc1	$f15,2312($s1)
    # Line 1739
    lwc1	$f14,2492($s0)
    swc1	$f14,2316($s1)
    # Line 1740
    lwc1	$f13,2496($s0)
    swc1	$f13,2320($s1)
    # Line 1741
    lwc1	$f12,2500($s0)
    swc1	$f12,2324($s1)
    # Line 1743
    lwc1	$f11,2504($s0)
    swc1	$f11,2328($s1)
    # Line 1744
    lwc1	$f10,2508($s0)
    swc1	$f10,2332($s1)
    # Line 1745
    lwc1	$f9,2512($s0)
    swc1	$f9,2336($s1)
    # Line 1746
    lwc1	$f8,2516($s0)
    swc1	$f8,2340($s1)
    # Line 1748
    lbu	$a3,2520($s0)
    sb	$a3,2344($s1)
    # Line 1749
    lbu	$a2,2521($s0)
    sb	$a2,2345($s1)
    # Line 1750
    lbu	$a1,2522($s0)
    sb	$a1,2346($s1)
    # Line 1751
    lbu	$a0,2523($s0)
    sb	$a0,2347($s1)
    # Line 1754
    lw	$t9,0($s0)
    ld	$a1,8($sp)
    jalr	$t9
    move	$a0,$s0
    # Line 1756
    # lw $t9, -22900($gp) # &memcpy
    ld	$a2,8($sp)
    # Line 1754
    sw	$v0,2304($s1)
    move	$a0,$v0
    # Line 1756
    jal	memcpy
    lw	$a1,2480($s0)
    # Line 1758
    lw	$t9,0($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s3
    # Line 1760
    # lw $t9, -22900($gp) # &memcpy
    # Line 1758
    move	$a0,$v0
    sw	$v0,2308($s1)
    # Line 1760
    move	$a2,$s3
    jal	memcpy
    lw	$a1,2484($s0)
.L0d9c1a6c:
    andi	$a4,$s2,0x1000
    beqz	$a4,.L0d9c1ab0
    ld	$s3,48($sp)
    # Line 1763
    lw	$a1,3600($s0)
    # Line 1765
    lw	$a2,1744($s0)
    sw	$a2,1568($s1)
    # Line 1766
    lw	$t9,0($s0)
    # Line 1763
    sll	$a1,$a1,0x4
    # Line 1766
    move	$a0,$s0
    jalr	$t9
    # Line 1763
    sd	$a1,0($sp)
    # Line 1768
    # lw $t9, -22900($gp) # &memcpy
    ld	$a2,0($sp)
    # Line 1766
    sw	$v0,1572($s1)
    move	$a0,$v0
    # Line 1768
    jal	memcpy
    lw	$a1,1748($s0)
.L0d9c1ab0:
    andi	$a3,$s2,0x800
    beqz	$a3,.L0d9c1b14
    ld	$s2,16($sp)
    # Line 1776
    ld	$gp,40($sp)
    ld	$s2,16($sp)
    ld	$ra,56($sp)
    # Line 1772
    ld	$t2,1688($s0)
    sd	$t2,1512($s1)
    ld	$t1,1696($s0)
    sd	$t1,1520($s1)
    ld	$t0,1704($s0)
    sd	$t0,1528($s1)
    ld	$a7,1712($s0)
    sd	$a7,1536($s1)
    ld	$a6,1720($s0)
    sd	$a6,1544($s1)
    ld	$a5,1728($s0)
    sd	$a5,1552($s1)
    ld	$a4,1736($s0)
    # Line 1776
    ld	$s0,24($sp)
    # Line 1772
    sd	$a4,1560($s1)
    # Line 1776
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c1b10:
    ld	$s2,16($sp)
.L0d9c1b14:
    ld	$ra,56($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c1b2c:
    ld	$s3,48($sp)
    # Line 1775
    jalr	$t9
    li	$a0,1283
    b	.L0d9c1b14
    ld	$s2,16($sp)
.L0d9c1b40:
    # Line 1658
    lw	$t9,4($s0)
    move	$a0,$s0
    li	$a2,3024
    jalr	$t9
    li	$a1,1
    move	$s1,$v0
    b	.L0d9c11d8
    # Line 1660
    sw	$v0,0($s3)
.L0d9c1b60:
    # Line 1653
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c1b10
    ld	$s3,48($sp)
.end __glim_PushAttrib

# Function: __glim_PopAttrib
# Declared: Line 1782 (Source lines: 1783-2053)
# Address: 0x0d9c1b80 - 0x0d9c2a6c (Size: 3820 bytes, Frame: 224)
.globl __glim_PopAttrib
.ent __glim_PopAttrib
__glim_PopAttrib:
    # Line 1783
    addiu	$sp,$sp,-96
    sd	$s3,0($sp)
    # Line 1787
    lw	$s3,4112($zero)
    sd	$s2,40($sp)
    lw	$at,4120($zero)
    sd	$ra,56($sp)
    li	$v0,1
    # Line 1783
    lui	$v1,0x9
    sd	$s1,64($sp)
    addiu	$v1,$v1,-3572
    sd	$gp,24($sp)
    # Line 1787
    beq	$at,$v0,.L0d9c2a54
    # Line 1783
    addu	$gp,$t9,$v1
    # Line 1789
    lw	$a0,12676($s3)
    lw	$a1,12672($s3)
    sltu	$a1,$a1,$a0
    beqz	$a1,.L0d9c2a28
    # Line 2052
    nop	# was lw $t9, -26452($gp) # &__glSetError
    sd	$s5,8($sp)
    # Line 1792
    lw	$s5,-4($a0)
    sd	$s6,48($sp)
    # Line 1794
    lw	$s6,0($s5)
    # Line 1795
    andi	$a3,$s6,0x200
    addiu	$a2,$a0,-4
    beqz	$a3,.L0d9c1c08
    sw	$a2,12676($s3)
    # Line 1797
    lwc1	$f3,1472($s5)
    swc1	$f3,1648($s3)
    lwc1	$f2,1476($s5)
    swc1	$f2,1652($s3)
    lwc1	$f1,1480($s5)
    swc1	$f1,1656($s3)
    lwc1	$f0,1484($s5)
    swc1	$f0,1660($s3)
.L0d9c1c08:
    andi	$a4,$s6,0x4000
    beqz	$a4,.L0d9c1cbc
    # Line 1807
    andi	$ra,$s6,0x1
    addiu	$a5,$s5,1648
    addiu	$a6,$s3,1824
    li	$a2,0x8
    # Line 1800
    addiu	$a4,$s3,1820
    addiu	$a7,$s5,1644
    lw	$t0,1644($s5)
    li	$a0,4
    li	$a1,0x12
    sw	$t0,1820($s3)
    nop
    nop
.L0d9c1c40:
    addu	$t0,$a0,$a7
    addu	$t1,$a0,$a4
    lw	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a5
    sw	$t0,0($t1)
    addu	$t0,$a0,$a6
    lw	$a3,0($a3)
    addu	$a0,$a0,$a2
    bgtz	$a1,.L0d9c1c40
    sw	$a3,0($t0)
    # Line 1801
    lw	$t8,1792($s3)
    li	$t9,-16
    and	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 1802
    lw	$t9,1616($s5)
    # Line 1807
    lw	$t3,11752($s3)
    # Line 1802
    andi	$t9,$t9,0xf
    # Line 1804
    lw	$t1,1796($s3)
    # Line 1802
    or	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 1804
    li	$t2,-2049
    and	$t1,$t1,$t2
    sw	$t1,1796($s3)
    # Line 1805
    lw	$t2,1620($s5)
    # Line 1807
    ori	$t3,$t3,0x1
    sw	$t3,11752($s3)
    # Line 1805
    andi	$t2,$t2,0x800
    or	$t1,$t1,$t2
    sw	$t1,1796($s3)
    # Line 1807
    andi	$ra,$s6,0x1
.L0d9c1cbc:
    beqz	$ra,.L0d9c1d74
    # Line 1810
    andi	$t9,$s6,0x100
    li	$a5,2
    li	$a1,34
    move	$a0,$zero
    addiu	$a2,$s3,184
    addiu	$a4,$s5,8
.L0d9c1cd8:
    addiu	$a5,$a5,-1
    addu	$at,$a0,$a4
    addiu	$a1,$a1,-1
    addu	$v0,$a0,$a2
    ld	$at,0($at)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9c1cd8
    sd	$at,0($v0)
    addiu	$t3,$a4,24
    addiu	$a6,$a2,24
    li	$a5,0x20
    addiu	$t1,$a4,8
    addiu	$t2,$a2,8
    addiu	$a7,$a2,16
    addiu	$t0,$a4,16
    nop
    nop
    nop
.L0d9c1d20:
    addu	$t8,$a0,$a4
    addu	$t9,$a0,$a2
    ld	$t8,0($t8)
    addu	$a3,$a0,$t1
    sd	$t8,0($t9)
    addu	$t8,$a0,$t2
    ld	$a3,0($a3)
    addu	$v1,$a0,$t0
    sd	$a3,0($t8)
    addu	$a3,$a0,$a7
    ld	$v1,0($v1)
    addiu	$a1,$a1,-4
    addu	$v0,$a0,$t3
    sd	$v1,0($a3)
    addu	$v1,$a0,$a6
    ld	$v0,0($v0)
    addu	$a0,$a0,$a5
    bgtz	$a1,.L0d9c1d20
    sd	$v0,0($v1)
    sd	$s7,16($sp)
    andi	$t9,$s6,0x100
.L0d9c1d74:
    sd	$s7,16($sp)
    beqz	$t9,.L0d9c1dc0
    li	$s7,2
    # Line 1813
    ld	$a0,1456($s5)
    sd	$a0,1632($s3)
    ld	$v1,1464($s5)
    # Line 1814
    lw	$at,1792($s3)
    # Line 1813
    sd	$v1,1640($s3)
    # Line 1814
    li	$v0,-17
    and	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 1815
    lw	$v0,1616($s5)
    andi	$v0,$v0,0x10
    or	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 1817
    sw	$s7,4120($zero)
    lw	$ra,11756($s3)
    ori	$ra,$ra,0x80
    sw	$ra,11756($s3)
.L0d9c1dc0:
    andi	$a1,$s6,0x2000
    beqz	$a1,.L0d9c1e7c
    # Line 1837
    dsll32	$t2,$s6,0xf
    # Line 1817
    lw	$a0,1616($s5)
    lw	$a1,1792($s3)
    nor	$a2,$a0,$zero
    and	$a2,$a1,$a2
    andi	$a2,$a2,0x4000
    beqz	$a2,.L0d9c1e00
    # Line 1823
    nor	$a3,$a1,$zero
    # lw $t9, -23436($gp) # &__glReadjustZCounts
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1616($s5)
    lw	$a1,1792($s3)
    nor	$a3,$a1,$zero
.L0d9c1e00:
    and	$a3,$a0,$a3
    andi	$a3,$a3,0x4000
    beqz	$a3,.L0d9c1e18
    nop
    # Line 1828
    lw	$a4,31308($s3)
    sw	$a4,31312($s3)
.L0d9c1e18:
    # Line 1830
    ld	$t1,1616($s5)
    sd	$t1,1792($s3)
    ld	$t0,1624($s5)
    sd	$t0,1800($s3)
    ld	$a7,1632($s5)
    sd	$a7,1808($s3)
    lw	$a6,1640($s5)
    sw	$a6,1816($s3)
    # Line 1831
    sw	$s7,4120($zero)
    # Line 1834
    lw	$t9,11792($s3)
    # Line 1831
    lw	$a5,11756($s3)
    # Line 1834
    move	$a0,$s3
    # Line 1831
    ori	$a5,$a5,0xbe
    # Line 1834
    jalr	$t9
    # Line 1831
    sw	$a5,11756($s3)
    # Line 1835
    lw	$t9,12000($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 1836
    lw	$t9,11916($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 1837
    lw	$t9,11908($s3)
    jalr	$t9
    move	$a0,$s3
    dsll32	$t2,$s6,0xf
.L0d9c1e7c:
    bgez	$t2,.L0d9c1f04
    # Line 1845
    andi	$v1,$s6,0x80
    addiu	$a2,$s5,1760
    addiu	$a5,$s3,1936
    li	$a4,0x8
    # Line 1840
    li	$a1,12
    move	$a0,$zero
    addiu	$a7,$s3,1932
    addiu	$a6,$s5,1756
.L0d9c1ea0:
    addu	$t8,$a0,$a6
    addu	$t9,$a0,$a7
    lw	$t8,0($t8)
    addiu	$a1,$a1,-2
    addu	$t3,$a0,$a2
    sw	$t8,0($t9)
    addu	$t8,$a0,$a5
    lw	$t3,0($t3)
    addu	$a0,$a0,$a4
    bgtz	$a1,.L0d9c1ea0
    sw	$t3,0($t8)
    # Line 1841
    lui	$v1,0x80
    lw	$at,1792($s3)
    nor	$v0,$v1,$zero
    and	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 1842
    lw	$v0,1616($s5)
    and	$v0,$v0,$v1
    or	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 1844
    lw	$ra,1632($s5)
    sw	$ra,1808($s3)
    # Line 1845
    lw	$t9,1636($s5)
    sw	$t9,1812($s3)
    andi	$v1,$s6,0x80
.L0d9c1f04:
    beqz	$v1,.L0d9c1f88
    # Line 1850
    andi	$v0,$s6,0x8000
    # Line 1848
    addiu	$a0,$s3,1588
    addiu	$a1,$s5,1412
    lw	$t9,1412($s5)
    sw	$t9,1588($s3)
    lw	$t8,1416($s5)
    sw	$t8,1592($s3)
    lw	$t3,1420($s5)
    sw	$t3,1596($s3)
    lw	$t2,1424($s5)
    sw	$t2,1600($s3)
    lw	$t1,1428($s5)
    sw	$t1,1604($s3)
    lw	$t0,1432($s5)
    sw	$t0,1608($s3)
    lw	$a7,1436($s5)
    sw	$a7,1612($s3)
    lw	$a6,1440($s5)
    sw	$a6,1616($s3)
    lw	$a5,1444($s5)
    sw	$a5,1620($s3)
    lw	$a3,1448($s5)
    sw	$a3,1624($s3)
    # Line 1849
    lw	$ra,1792($s3)
    li	$at,-33
    and	$ra,$ra,$at
    sw	$ra,1792($s3)
    # Line 1850
    lw	$at,1616($s5)
    andi	$at,$at,0x20
    or	$ra,$ra,$at
    sw	$ra,1792($s3)
    andi	$v0,$s6,0x8000
.L0d9c1f88:
    beqz	$v0,.L0d9c1fbc
    # Line 1854
    andi	$a4,$s6,0x40
    ld	$a3,1720($s5)
    sd	$a3,1896($s3)
    ld	$a2,1728($s5)
    sd	$a2,1904($s3)
    ld	$a1,1736($s5)
    sd	$a1,1912($s3)
    ld	$a0,1744($s5)
    sd	$a0,1920($s3)
    lw	$v1,1752($s5)
    sw	$v1,1928($s3)
    andi	$a4,$s6,0x40
.L0d9c1fbc:
    beqz	$a4,.L0d9c213c
    # Line 1872
    andi	$a7,$s6,0x4
    # Line 1857
    lw	$ra,1208($s5)
    sw	$ra,1384($s3)
    # Line 1858
    lw	$t9,1212($s5)
    sw	$t9,1388($s3)
    # Line 1859
    lw	$t8,1216($s5)
    sw	$t8,1392($s3)
    # Line 1860
    lw	$t3,1220($s5)
    sw	$t3,1396($s3)
    lw	$t2,1224($s5)
    sw	$t2,1400($s3)
    lw	$t1,1228($s5)
    sw	$t1,1404($s3)
    lw	$t0,1232($s5)
    sw	$t0,1408($s3)
    lw	$a7,1236($s5)
    sw	$a7,1412($s3)
    lw	$a6,1240($s5)
    sw	$a6,1416($s3)
    lw	$a5,1244($s5)
    # Line 1861
    addiu	$a0,$s3,1424
    addiu	$a1,$s5,1248
    # Line 1860
    sw	$a5,1420($s3)
    # Line 1861
    ld	$t2,1248($s5)
    sd	$t2,1424($s3)
    ld	$t1,1256($s5)
    sd	$t1,1432($s3)
    ld	$t0,1264($s5)
    sd	$t0,1440($s3)
    ld	$a7,1272($s5)
    sd	$a7,1448($s3)
    ld	$a6,1280($s5)
    sd	$a6,1456($s3)
    ld	$a5,1288($s5)
    sd	$a5,1464($s3)
    ld	$a3,1296($s5)
    sd	$a3,1472($s3)
    ld	$v1,1304($s5)
    sd	$v1,1480($s3)
    ld	$v0,1312($s5)
    sd	$v0,1488($s3)
    ld	$at,1320($s5)
    sd	$at,1496($s3)
    # Line 1862
    addiu	$a0,$s3,1504
    addiu	$a1,$s5,1328
    ld	$a6,1328($s5)
    sd	$a6,1504($s3)
    ld	$a5,1336($s5)
    sd	$a5,1512($s3)
    ld	$a3,1344($s5)
    sd	$a3,1520($s3)
    ld	$v1,1352($s5)
    sd	$v1,1528($s3)
    ld	$v0,1360($s5)
    sd	$v0,1536($s3)
    ld	$at,1368($s5)
    sd	$at,1544($s3)
    ld	$ra,1376($s5)
    sd	$ra,1552($s3)
    ld	$t9,1384($s5)
    sd	$t9,1560($s3)
    ld	$t8,1392($s5)
    sd	$t8,1568($s3)
    ld	$t3,1400($s5)
    sd	$t3,1576($s3)
    # Line 1863
    lw	$a3,3588($s3)
    # lw $t9, -22900($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    lw	$a1,1408($s5)
    sll	$a2,$a2,0x2
    lw	$a0,1584($s3)
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 1866
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1408($s5)
    # Line 1867
    sw	$zero,1408($s5)
    # Line 1868
    lw	$a5,1792($s3)
    li	$a6,-193
    and	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 1869
    lw	$a6,1616($s5)
    andi	$a6,$a6,0xc0
    or	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 1871
    lw	$a4,1624($s5)
    sw	$a4,1800($s3)
    # Line 1872
    sw	$s7,4120($zero)
    lw	$a3,11756($s3)
    ori	$a3,$a3,0x20
    sw	$a3,11756($s3)
    andi	$a7,$s6,0x4
.L0d9c213c:
    beqz	$a7,.L0d9c21a0
    # Line 1879
    dsll32	$ra,$s6,0xe
    # Line 1875
    lwc1	$f5,292($s5)
    swc1	$f5,468($s3)
    lwc1	$f4,296($s5)
    swc1	$f4,472($s3)
    lw	$t9,300($s5)
    sw	$t9,476($s3)
    lhu	$t8,304($s5)
    sh	$t8,480($s3)
    lh	$t3,306($s5)
    # Line 1876
    lw	$t1,1792($s3)
    # Line 1875
    sh	$t3,482($s3)
    # Line 1876
    li	$t2,-769
    and	$t1,$t1,$t2
    sw	$t1,1792($s3)
    # Line 1877
    lw	$t2,1616($s5)
    andi	$t2,$t2,0x300
    or	$t1,$t1,$t2
    sw	$t1,1792($s3)
    # Line 1879
    sw	$s7,4120($zero)
    lw	$t0,11756($s3)
    ori	$t0,$t0,0x2
    sw	$t0,11756($s3)
    dsll32	$ra,$s6,0xe
.L0d9c21a0:
    bgez	$ra,.L0d9c21b4
    # Line 1882
    andi	$v0,$s6,0x20
    lw	$at,1804($s5)
    sw	$at,1980($s3)
    andi	$v0,$s6,0x20
.L0d9c21b4:
    beqz	$v0,.L0d9c22a0
    # Line 1896
    andi	$at,$s6,0x2
    addiu	$a1,$s5,472
    addiu	$a7,$s3,648
    li	$a6,0x10
    # Line 1885
    addiu	$a4,$s3,640
    addiu	$a5,$s5,464
    ld	$v1,464($s5)
    li	$a2,8
    li	$a0,0xe
    sd	$v1,640($s3)
.L0d9c21e0:
    addu	$t0,$a2,$a5
    addu	$t1,$a2,$a4
    ld	$t0,0($t0)
    addiu	$a0,$a0,-2
    addu	$a3,$a2,$a1
    sd	$t0,0($t1)
    addu	$t0,$a2,$a7
    ld	$a3,0($a3)
    addu	$a2,$a2,$a6
    bgtz	$a0,.L0d9c21e0
    sd	$a3,0($t0)
    # Line 1888
    # lw $t9, -26480($gp) # &__glCopyColorTableScaleBias
    # Line 1885
    addu	$t3,$a2,$a5
    addu	$t8,$a2,$a4
    lw	$t3,0($t3)
    sw	$t3,0($t8)
    # Line 1886
    lw	$t2,1064($s5)
    sw	$t2,1240($s3)
    # Line 1888
    addiu	$a1,$s3,5372
    # Line 1887
    lw	$t1,1060($s5)
    # Line 1888
    addiu	$a0,$s5,2364
    jal	__glCopyColorTableScaleBias
    # Line 1887
    sw	$t1,1236($s3)
    # Line 1889
    # lw $t9, -26348($gp) # &__glCopyConvolutionPixelModeState
    addiu	$a1,$s3,640
    jal	__glCopyConvolutionPixelModeState
    addiu	$a0,$s5,464
    # Line 1890
    lui	$at,0xe00
    lw	$t9,1792($s3)
    nor	$ra,$at,$zero
    and	$t9,$t9,$ra
    sw	$t9,1792($s3)
    # Line 1891
    lw	$ra,1616($s5)
    and	$ra,$ra,$at
    # Line 1893
    lui	$at,0x3000
    # Line 1891
    or	$t9,$t9,$ra
    # Line 1893
    nor	$ra,$at,$zero
    and	$t9,$t9,$ra
    sw	$t9,1792($s3)
    # Line 1894
    lw	$ra,1616($s5)
    and	$ra,$ra,$at
    or	$t9,$t9,$ra
    sw	$t9,1792($s3)
    # Line 1896
    sw	$s7,4120($zero)
    lw	$t8,11756($s3)
    ori	$t8,$t8,0x10
    sw	$t8,11756($s3)
    andi	$at,$s6,0x2
.L0d9c22a0:
    beqz	$at,.L0d9c22f4
    # Line 1903
    andi	$a2,$s6,0x8
    # Line 1899
    lwc1	$f7,280($s5)
    swc1	$f7,456($s3)
    lwc1	$f6,284($s5)
    swc1	$f6,460($s3)
    lw	$a1,288($s5)
    # Line 1900
    lw	$v1,1792($s3)
    # Line 1899
    sw	$a1,464($s3)
    # Line 1900
    li	$a0,-1025
    and	$v1,$v1,$a0
    sw	$v1,1792($s3)
    # Line 1901
    lw	$a0,1616($s5)
    andi	$a0,$a0,0x400
    or	$v1,$v1,$a0
    sw	$v1,1792($s3)
    # Line 1903
    sw	$s7,4120($zero)
    lw	$v0,11756($s3)
    ori	$v0,$v0,0x8
    sw	$v0,11756($s3)
    andi	$a2,$s6,0x8
.L0d9c22f4:
    beqz	$a2,.L0d9c2388
    # Line 1913
    ld	$a7,-22300($gp)
    # Line 1906
    lw	$ra,308($s5)
    sw	$ra,484($s3)
    lw	$t9,312($s5)
    sw	$t9,488($s3)
    lw	$t8,316($s5)
    sw	$t8,492($s3)
    lw	$t3,320($s5)
    sw	$t3,496($s3)
    lw	$t2,324($s5)
    sw	$t2,500($s3)
    lw	$t1,328($s5)
    sw	$t1,504($s3)
    lw	$t0,332($s5)
    # Line 1913
    lw	$a6,1792($s3)
    # Line 1906
    sw	$t0,508($s3)
    # Line 1913
    and	$a6,$a6,$a7
    sw	$a6,1792($s3)
    # Line 1914
    lui	$t0,0x100
    lw	$a7,1616($s5)
    ori	$t0,$t0,0x3800
    and	$a7,$a7,$t0
    # Line 1917
    lw	$a4,1796($s3)
    # Line 1914
    or	$a6,$a6,$a7
    sw	$a6,1792($s3)
    # Line 1917
    li	$a5,-1537
    and	$a4,$a4,$a5
    sw	$a4,1796($s3)
    # Line 1918
    lw	$a5,1620($s5)
    andi	$a5,$a5,0x600
    or	$a4,$a4,$a5
    sw	$a4,1796($s3)
    # Line 1921
    sw	$s7,4120($zero)
    lw	$a3,11756($s3)
    ori	$a3,$a3,0x4
    sw	$a3,11756($s3)
.L0d9c2388:
    andi	$at,$s6,0x10
    beqz	$at,.L0d9c2418
    addiu	$a5,$s5,344
    addiu	$a7,$s3,520
    li	$a2,0x10
    # Line 1924
    li	$a0,16
    move	$a1,$zero
    addiu	$a4,$s3,512
    addiu	$a6,$s5,336
    nop
.L0d9c23b0:
    addu	$v1,$a1,$a6
    addu	$a3,$a1,$a4
    ld	$v1,0($v1)
    addiu	$a0,$a0,-2
    addu	$v0,$a1,$a5
    sd	$v1,0($a3)
    addu	$v1,$a1,$a7
    ld	$v0,0($v0)
    addu	$a1,$a1,$a2
    bgtz	$a0,.L0d9c23b0
    sd	$v0,0($v1)
    # Line 1925
    lw	$a1,1792($s3)
    # Line 1928
    lw	$t9,12656($s3)
    # Line 1925
    li	$a2,-8193
    and	$a1,$a1,$a2
    sw	$a1,1792($s3)
    # Line 1926
    lw	$a2,1616($s5)
    # Line 1928
    move	$a0,$s3
    # Line 1926
    andi	$a2,$a2,0x2000
    or	$a1,$a1,$a2
    # Line 1928
    jalr	$t9
    # Line 1926
    sw	$a1,1792($s3)
    # Line 1929
    sw	$s7,4120($zero)
    lw	$a3,11756($s3)
    ori	$a3,$a3,0x4
    sw	$a3,11756($s3)
.L0d9c2418:
    dsll32	$a4,$s6,0xc
    bgez	$a4,.L0d9c250c
    # Line 1959
    andi	$a5,$s6,0x400
    # Line 1938
    lw	$a1,1792($s3)
    andi	$a5,$a1,0x4000
    beqz	$a5,.L0d9c2470
    nop
    lw	$a7,2524($s3)
    lw	$a6,2348($s5)
    lw	$t8,2360($s5)
    bne	$a6,$a7,.L0d9c2484
    lw	$t9,2536($s3)
    lw	$t1,2528($s3)
    lw	$t0,2352($s5)
    bne	$t0,$t1,.L0d9c2484
    nop
    lw	$t3,2532($s3)
    lw	$t2,2356($s5)
    bne	$t2,$t3,.L0d9c2484
    nop
    bne	$t8,$t9,.L0d9c2488
    # Line 1946
    nop	# was lw $t9, -23436($gp) # &__glReadjustZCounts
.L0d9c2470:
    # Line 1938
    lw	$a0,1616($s5)
    nor	$ra,$a0,$zero
    and	$ra,$a1,$ra
    andi	$ra,$ra,0x4000
    beqz	$ra,.L0d9c2498
.L0d9c2484:
    # Line 1946
    nop	# was lw $t9, -23436($gp) # &__glReadjustZCounts
.L0d9c2488:
    jal	__glReadjustZCounts
    move	$a0,$s3
    lw	$a0,1616($s5)
    lw	$a1,1792($s3)
.L0d9c2498:
    nor	$at,$a1,$zero
    and	$at,$a0,$at
    andi	$at,$at,0x4000
    beqz	$at,.L0d9c24b4
    nop
    # Line 1951
    lw	$v0,31308($s3)
    sw	$v0,31312($s3)
.L0d9c24b4:
    # Line 1958
    lw	$t9,11916($s3)
    # Line 1953
    lw	$a4,2348($s5)
    sw	$a4,2524($s3)
    lw	$a3,2352($s5)
    sw	$a3,2528($s3)
    lw	$a2,2356($s5)
    sw	$a2,2532($s3)
    lw	$a0,2360($s5)
    sw	$a0,2536($s3)
    # Line 1954
    li	$v1,-16385
    and	$v1,$a1,$v1
    sw	$v1,1792($s3)
    # Line 1955
    lw	$a1,1616($s5)
    # Line 1958
    move	$a0,$s3
    # Line 1955
    andi	$a1,$a1,0x4000
    or	$v1,$v1,$a1
    # Line 1958
    jalr	$t9
    # Line 1955
    sw	$v1,1792($s3)
    # Line 1959
    lw	$t9,11908($s3)
    jalr	$t9
    move	$a0,$s3
    andi	$a5,$s6,0x400
.L0d9c250c:
    beqz	$a5,.L0d9c2560
    # Line 1966
    dsll32	$t8,$s6,0xd
    lw	$t0,11752($s3)
    # Line 1962
    ld	$t3,1488($s5)
    sd	$t3,1664($s3)
    ld	$t2,1496($s5)
    sd	$t2,1672($s3)
    ld	$t1,1504($s5)
    # Line 1963
    li	$a7,0x8000
    lw	$a6,1792($s3)
    # Line 1962
    sd	$t1,1680($s3)
    # Line 1963
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    sw	$a6,1792($s3)
    # Line 1964
    lw	$a7,1616($s5)
    # Line 1966
    ori	$t0,$t0,0x6
    sw	$t0,11752($s3)
    # Line 1964
    andi	$a7,$a7,0x8000
    or	$a6,$a6,$a7
    sw	$a6,1792($s3)
    # Line 1966
    dsll32	$t8,$s6,0xd
.L0d9c2560:
    bgez	$t8,.L0d9c28c4
    # Line 2024
    andi	$a6,$s6,0x1000
    addiu	$a7,$s5,1816
    sd	$s4,72($sp)
    addiu	$a2,$s3,1992
    li	$a4,0x10
    # Line 1970
    lw	$s4,3604($s3)
    # Line 1972
    addiu	$a6,$s3,1984
    addiu	$a5,$s5,1808
    ld	$t9,1808($s5)
    li	$a0,8
    li	$a1,0xe
    sd	$t9,1984($s3)
    nop
    nop
    nop
.L0d9c25a0:
    addu	$t0,$a0,$a5
    addu	$t1,$a0,$a6
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a7
    sd	$t0,0($t1)
    addu	$t0,$a0,$a2
    ld	$a3,0($a3)
    addu	$a0,$a0,$a4
    bgtz	$a1,.L0d9c25a0
    sd	$a3,0($t0)
    li	$t0,3
    # Line 1973
    li	$a7,31
    # Line 1972
    addu	$t1,$a0,$a5
    # Line 1973
    move	$a1,$zero
    # Line 1972
    addu	$t2,$a0,$a6
    lw	$t1,0($t1)
    # Line 1973
    addiu	$a4,$s3,2108
    addiu	$a2,$s5,1932
    # Line 1972
    sw	$t1,0($t2)
.L0d9c25f0:
    addiu	$t0,$t0,-1
    # Line 1973
    addu	$t2,$a1,$a2
    addiu	$a7,$a7,-1
    addu	$t3,$a1,$a4
    lw	$t2,0($t2)
    addiu	$a1,$a1,4
    bnez	$t0,.L0d9c25f0
    sw	$t2,0($t3)
    addiu	$t0,$a2,12
    addiu	$a6,$a4,12
    li	$a5,0x10
    addiu	$t8,$a2,4
    addiu	$t1,$a4,4
    addiu	$t2,$a4,8
    addiu	$t3,$a2,8
    move	$a0,$a7
.L0d9c2630:
    addu	$v0,$a1,$a2
    addu	$v1,$a1,$a4
    lw	$v0,0($v0)
    addu	$at,$a1,$t8
    sw	$v0,0($v1)
    addu	$v0,$a1,$t1
    lw	$at,0($at)
    addu	$ra,$a1,$t3
    sw	$at,0($v0)
    addu	$at,$a1,$t2
    lw	$ra,0($ra)
    addiu	$a0,$a0,-4
    addu	$t9,$a1,$t0
    sw	$ra,0($at)
    addu	$ra,$a1,$a6
    lw	$t9,0($t9)
    addu	$a1,$a1,$a5
    bgtz	$a0,.L0d9c2630
    sw	$t9,0($ra)
    addiu	$a7,$s5,2064
    addiu	$a2,$s3,2240
    li	$a4,0x10
    # Line 1974
    addiu	$a6,$s3,2232
    addiu	$a5,$s5,2056
    ld	$v1,2056($s5)
    li	$a0,8
    li	$a1,0xe
    sd	$v1,2232($s3)
.L0d9c26a0:
    addu	$t0,$a0,$a5
    addu	$t1,$a0,$a6
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a7
    sd	$t0,0($t1)
    addu	$t0,$a0,$a2
    ld	$a3,0($a3)
    addu	$a0,$a0,$a4
    bgtz	$a1,.L0d9c26a0
    sd	$a3,0($t0)
    li	$t0,3
    # Line 1975
    li	$a1,31
    # Line 1974
    addu	$t1,$a0,$a5
    # Line 1975
    move	$a7,$zero
    # Line 1974
    addu	$t2,$a0,$a6
    lw	$t1,0($t1)
    # Line 1975
    addiu	$a4,$s3,2356
    addiu	$a2,$s5,2180
    # Line 1974
    sw	$t1,0($t2)
.L0d9c26f0:
    addiu	$t0,$t0,-1
    # Line 1975
    addu	$t2,$a7,$a2
    addiu	$a1,$a1,-1
    addu	$t3,$a7,$a4
    lw	$t2,0($t2)
    addiu	$a7,$a7,4
    bnez	$t0,.L0d9c26f0
    sw	$t2,0($t3)
    addiu	$t2,$a2,12
    addiu	$t1,$a4,12
    li	$a5,0x10
    addiu	$t8,$a2,4
    addiu	$t3,$a4,4
    addiu	$a6,$a4,8
    addiu	$t0,$a2,8
    move	$a0,$a7
.L0d9c2730:
    addu	$v0,$a0,$a2
    addu	$v1,$a0,$a4
    lw	$v0,0($v0)
    addu	$at,$a0,$t8
    sw	$v0,0($v1)
    addu	$v0,$a0,$t3
    lw	$at,0($at)
    addu	$ra,$a0,$t0
    sw	$at,0($v0)
    addu	$at,$a0,$a6
    lw	$ra,0($ra)
    addiu	$a1,$a1,-4
    addu	$t9,$a0,$t2
    sw	$ra,0($at)
    addu	$ra,$a0,$t1
    lw	$t9,0($t9)
    addu	$a0,$a0,$a5
    bgtz	$a1,.L0d9c2730
    sw	$t9,0($ra)
    # Line 1977
    lwc1	$f15,2312($s5)
    swc1	$f15,2488($s3)
    # Line 1978
    lwc1	$f14,2316($s5)
    swc1	$f14,2492($s3)
    # Line 1979
    lwc1	$f13,2320($s5)
    swc1	$f13,2496($s3)
    # Line 1980
    lwc1	$f12,2324($s5)
    swc1	$f12,2500($s3)
    # Line 1982
    lwc1	$f11,2328($s5)
    swc1	$f11,2504($s3)
    # Line 1983
    lwc1	$f10,2332($s5)
    swc1	$f10,2508($s3)
    # Line 1984
    lwc1	$f9,2336($s5)
    swc1	$f9,2512($s3)
    # Line 1985
    lwc1	$f8,2340($s5)
    # Line 2004
    lw	$s1,2480($s3)
    # Line 1985
    swc1	$f8,2516($s3)
    # Line 1987
    lbu	$a2,2344($s5)
    sb	$a2,2520($s3)
    # Line 1988
    lbu	$a1,2345($s5)
    sb	$a1,2521($s3)
    # Line 1989
    lbu	$a0,2346($s5)
    sb	$a0,2522($s3)
    # Line 1990
    lbu	$v1,2347($s5)
    sb	$v1,2523($s3)
    # Line 2005
    beqz	$s4,.L0d9c2830
    lw	$s2,2304($s5)
    andi	$a3,$s4,0x1
    sd	$s0,80($sp)
    move	$s0,$zero
    beqz	$a3,.L0d9c2818
    move	$a0,$s4
    lw	$a2,216($s2)
    lw	$a4,216($s1)
    bne	$a4,$a2,.L0d9c2a3c
    # Line 2009
    nop	# was lw $t9, -23772($gp) # &__glBindTexture
.L0d9c280c:
    # Line 2007
    addiu	$s2,$s2,224
    addiu	$s1,$s1,224
    addiu	$s0,$s0,1
.L0d9c2818:
    sra	$a5,$a0,0x1
    bnezl	$a5,.L0d9c29f0
    # Line 2005
    lw	$a2,216($s2)
.L0d9c2824:
    # Line 2007
    lw	$s2,2304($s5)
    lw	$s1,2480($s3)
    ld	$s0,80($sp)
.L0d9c2830:
    # Line 2014
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s1
    move	$a1,$s2
    sll	$a2,$s4,0x3
    subu	$a2,$a2,$s4
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 2016
    # lw $t9, -22900($gp) # &memcpy
    lw	$a3,3608($s3)
    ld	$s4,72($sp)
    lw	$a1,2308($s5)
    sll	$a2,$a3,0x3
    lw	$a0,2484($s3)
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 2019
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2304($s5)
    # Line 2020
    sw	$zero,2304($s5)
    # Line 2021
    lw	$t9,12($s3)
    lw	$a1,2308($s5)
    jalr	$t9
    move	$a0,$s3
    # Line 2022
    sw	$zero,2308($s5)
    # Line 2023
    lui	$a5,0x3fc0
    lw	$a4,1792($s3)
    ori	$a5,$a5,0xffff
    and	$a4,$a4,$a5
    sw	$a4,1792($s3)
    # Line 2024
    lw	$a5,1616($s5)
    lui	$a6,0xc03f
    and	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,1792($s3)
    andi	$a6,$s6,0x1000
.L0d9c28c4:
    beqz	$a6,.L0d9c2930
    # Line 2037
    andi	$a7,$s6,0x800
    # Line 2029
    lw	$a0,1748($s3)
    # Line 2028
    lw	$a3,1568($s5)
    # Line 2029
    # lw $t9, -22900($gp) # &memcpy
    # Line 2028
    sw	$a3,1744($s3)
    # Line 2029
    lw	$a2,3600($s3)
    lw	$a1,1572($s5)
    jal	memcpy
    sll	$a2,$a2,0x4
    # Line 2032
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1572($s5)
    # Line 2033
    sw	$zero,1572($s5)
    # Line 2034
    lw	$a5,1792($s3)
    lui	$a7,0x40
    nor	$a6,$a7,$zero
    and	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 2035
    lw	$a6,1616($s5)
    and	$a6,$a6,$a7
    or	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 2037
    lw	$a4,1628($s5)
    sw	$a4,1804($s3)
    andi	$a7,$s6,0x800
.L0d9c2930:
    beqz	$a7,.L0d9c2980
    ld	$s1,64($sp)
    # Line 2041
    # lw $t9, -23448($gp) # &__glUpdateViewportTransform
    # Line 2040
    ld	$at,1512($s5)
    sd	$at,1688($s3)
    ld	$ra,1520($s5)
    sd	$ra,1696($s3)
    ld	$t8,1528($s5)
    sd	$t8,1704($s3)
    ld	$t3,1536($s5)
    sd	$t3,1712($s3)
    ld	$t2,1544($s5)
    sd	$t2,1720($s3)
    ld	$t1,1552($s5)
    sd	$t1,1728($s3)
    ld	$t0,1560($s5)
    # Line 2041
    move	$a0,$s3
    jal	__glUpdateViewportTransform
    # Line 2040
    sd	$t0,1736($s3)
    ld	$s1,64($sp)
.L0d9c2980:
    ld	$s6,48($sp)
    ld	$s2,40($sp)
    # Line 2053
    ld	$gp,24($sp)
    # Line 2048
    sw	$zero,0($s5)
    # Line 2053
    ld	$s5,8($sp)
    # Line 2050
    sw	$s7,4120($zero)
    lw	$v0,11756($s3)
    ld	$ra,56($sp)
    # Line 2053
    ld	$s7,16($sp)
    # Line 2050
    ori	$v0,$v0,0x1
    sw	$v0,11756($s3)
    # Line 2053
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c29b8:
    ld	$s2,40($sp)
    ld	$s1,64($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9c29cc:
    # Line 2005
    lw	$a2,440($s2)
.L0d9c29d0:
    lw	$v1,440($s1)
    bne	$v1,$a2,.L0d9c2a10
    # Line 2007
    addiu	$s0,$s0,1
    addiu	$s0,$s0,1
.L0d9c29e0:
    addiu	$s2,$s2,448
    beq	$s4,$s0,.L0d9c2824
    addiu	$s1,$s1,448
    # Line 2005
    lw	$a2,216($s2)
.L0d9c29f0:
    lw	$a0,216($s1)
    beq	$a0,$a2,.L0d9c29cc
    # Line 2009
    nop	# was lw $t9, -23772($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0d9c29d0
    # Line 2005
    lw	$a2,440($s2)
.L0d9c2a10:
    # Line 2009
    # lw $t9, -23772($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0d9c29e0
    # Line 2007
    addiu	$s0,$s0,1
.L0d9c2a28:
    ld	$s3,0($sp)
    # Line 2052
    jalr	$t9
    li	$a0,1284
    b	.L0d9c29b8
    ld	$ra,56($sp)
.L0d9c2a3c:
    # Line 2009
    move	$a0,$s3
    sd	$s4,32($sp)
    jalr	$t9
    move	$a1,$zero
    b	.L0d9c280c
    ld	$a0,32($sp)
.L0d9c2a54:
    # Line 1787
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s3,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c29b8
    ld	$ra,56($sp)
.end __glim_PopAttrib

# Function: __glim_Enable
# Declared: Line 2059 (Source lines: 2060-2287)
# Address: 0x0d9c2a70 - 0x0d9c371c (Size: 3244 bytes, Frame: 32)
.globl __glim_Enable
.ent __glim_Enable
__glim_Enable:
    # Line 2062
    lw	$v0,4120($zero)
    li	$a4,1
    # Line 2060
    lui	$at,0x9
    # Line 2062
    lw	$a2,4112($zero)
    # Line 2060
    addiu	$sp,$sp,-32
    addiu	$at,$at,-7396
    sd	$gp,8($sp)
    # Line 2062
    beq	$v0,$a4,.L0d9c2fb0
    # Line 2060
    addu	$gp,$t9,$at
    # Line 2064
    sltiu	$v0,$a0,3511
    bnez	$v0,.L0d9c2ae4
    sltiu	$v1,$a0,3512
    bnez	$v1,.L0d9c2b1c
    li	$a3,0x8010
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d9c2be4
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c2c6c
    li	$a3,0x8077
    # Line 2246
    lw	$a7,1792($a2)
    lui	$t0,0x200
    or	$a7,$a7,$t0
    sw	$a7,1792($a2)
    # Line 2247
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a6,11756($a2)
    ori	$a6,$a6,0x10
    # Line 2248
    b	.L0d9c2b38
    # Line 2247
    sw	$a6,11756($a2)
.L0d9c2ae4:
    # Line 2064
    sltiu	$t1,$a0,3169
    bnez	$t1,.L0d9c2b60
    sltiu	$a1,$a0,2929
    sltiu	$t2,$a0,3170
    beqz	$t2,.L0d9c2b98
    sltiu	$a6,$a0,3478
    # Line 2158
    lw	$t3,1792($a2)
    # Line 2159
    li	$a3,2
    # Line 2158
    lui	$t8,0x8
    or	$t3,$t3,$t8
    # Line 2159
    b	.L0d9c2b38
    # Line 2158
    sw	$t3,1792($a2)
.L0d9c2b14:
    # Line 2064
    bne	$a0,$t9,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c2b1c:
    # Line 2197
    addiu	$v0,$a0,-3504
.L0d9c2b20:
    sllv	$v0,$a4,$v0
    lw	$at,1812($a2)
    andi	$v0,$v0,0xffff
    # Line 2198
    li	$a3,2
    # Line 2197
    or	$at,$at,$v0
    sw	$at,1812($a2)
.L0d9c2b38:
    # Line 2287
    sw	$a3,4120($zero)
    lw	$v1,11756($a2)
    # Line 2285
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2287
    ori	$v1,$v1,0x1
    # Line 2285
    jr	$ra
    # Line 2287
    sw	$v1,11756($a2)
.L0d9c2b54:
    # Line 2285
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c2b60:
    # Line 2064
    bnez	$a1,.L0d9c2c28
    sltiu	$a3,$a0,2882
    sltiu	$a3,$a0,2930
    beqz	$a3,.L0d9c2cb8
    sltiu	$v0,$a0,3042
    # Line 2082
    lw	$a5,1792($a2)
    ori	$a5,$a5,0x10
    sw	$a5,1792($a2)
    # Line 2083
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a4,11756($a2)
    ori	$a4,$a4,0x80
    # Line 2084
    b	.L0d9c2b38
    # Line 2083
    sw	$a4,11756($a2)
.L0d9c2b98:
    # Line 2064
    bnez	$a6,.L0d9c2d18
    sltiu	$a7,$a0,3479
    bnez	$a7,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    # Line 2064
    sltiu	$t0,$a0,3506
    bnez	$t0,.L0d9c2db4
    sltiu	$a1,$a0,3504
    sltiu	$t1,$a0,3507
    bnez	$t1,.L0d9c2b1c
    sltiu	$a3,$a0,3509
    bnez	$a3,.L0d9c34e8
    sltiu	$v0,$a0,3508
    sltiu	$t2,$a0,3510
    bnez	$t2,.L0d9c2b1c
    li	$t3,3510
    beq	$a0,$t3,.L0d9c2b20
    # Line 2197
    addiu	$v0,$a0,-3504
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c2be4:
    # Line 2064
    sltiu	$t8,$a0,12292
    bnez	$t8,.L0d9c2ce0
    sltiu	$t9,$a0,12293
    bnez	$t9,.L0d9c2edc
    sltiu	$at,$a0,16387
    bnez	$at,.L0d9c2ef8
    sltiu	$v0,$a0,16388
    bnez	$v0,.L0d9c2f18
    sltiu	$a3,$a0,16390
    bnez	$a3,.L0d9c345c
    sltiu	$v1,$a0,16391
    bnez	$v1,.L0d9c2f18
    li	$a1,16391
    beq	$a0,$a1,.L0d9c2f18
    nop
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c2c28:
    bnez	$a3,.L0d9c2d5c
    sltiu	$t2,$a0,2852
    sltiu	$a4,$a0,2883
    bnez	$a4,.L0d9c3158
    sltiu	$a5,$a0,2903
    bnez	$a5,.L0d9c2f4c
    sltiu	$a1,$a0,2896
    sltiu	$a6,$a0,2904
    bnez	$a6,.L0d9c36a0
    li	$a7,2912
    bne	$a0,$a7,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2089
    lw	$t0,1792($a2)
    # Line 2090
    li	$a3,2
    # Line 2089
    ori	$t0,$t0,0x20
    # Line 2090
    b	.L0d9c2b38
    # Line 2089
    sw	$t0,1792($a2)
.L0d9c2c6c:
    # Line 2064
    sltu	$t1,$a0,$a3
    bnez	$t1,.L0d9c2de0
    sltu	$t2,$a3,$a0
    beqz	$t2,.L0d9c3350
    li	$a3,0x80d1
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d9c3184
    sltu	$t8,$a3,$a0
    bnez	$t8,.L0d9c33b4
    li	$a3,0x8439
    # Line 2276
    lw	$at,1796($a2)
    ori	$at,$at,0x2
    sw	$at,1796($a2)
    # Line 2277
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$t9,11756($a2)
    ori	$t9,$t9,0x10
    # Line 2278
    b	.L0d9c2b38
    # Line 2277
    sw	$t9,11756($a2)
.L0d9c2cb8:
    # Line 2064
    bnez	$v0,.L0d9c2e7c
    sltiu	$a1,$a0,3008
    sltiu	$v1,$a0,3043
    beqz	$v1,.L0d9c302c
    sltiu	$a6,$a0,3089
    # Line 2069
    lw	$a0,1792($a2)
    # Line 2070
    li	$a3,2
    # Line 2069
    ori	$a0,$a0,0x2
    # Line 2070
    b	.L0d9c2b38
    # Line 2069
    sw	$a0,1792($a2)
.L0d9c2ce0:
    # Line 2064
    sltiu	$a1,$a0,10754
    bnez	$a1,.L0d9c2e20
    sltiu	$a3,$a0,10755
    beqz	$a3,.L0d9c3008
    sltiu	$a3,$a0,12290
    # Line 2208
    lw	$a5,1796($a2)
    ori	$a5,$a5,0x400
    sw	$a5,1796($a2)
    # Line 2209
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a4,11756($a2)
    ori	$a4,$a4,0x4
    # Line 2210
    b	.L0d9c2b38
    # Line 2209
    sw	$a4,11756($a2)
.L0d9c2d18:
    # Line 2064
    sltiu	$a6,$a0,3473
    bnez	$a6,.L0d9c2e50
    sltiu	$at,$a0,3456
    sltiu	$a7,$a0,3474
    bnez	$a7,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    # Line 2064
    sltiu	$a3,$a0,3476
    bnez	$a3,.L0d9c32d8
    sltiu	$t3,$a0,3475
    sltiu	$t0,$a0,3477
    bnez	$t0,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    # Line 2064
    li	$t1,3477
    beq	$a0,$t1,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c2d5c:
    # Line 2064
    bnez	$t2,.L0d9c2ea4
    sltiu	$a5,$a0,2848
    sltiu	$t3,$a0,2853
    bnez	$t3,.L0d9c33ec
    li	$t8,2881
    bne	$a0,$t8,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2119
    lw	$t9,1792($a2)
    # Line 2120
    li	$a3,2
    # Line 2119
    ori	$t9,$t9,0x800
    # Line 2120
    b	.L0d9c2b38
    # Line 2119
    sw	$t9,1792($a2)
.L0d9c2d8c:
    # Line 2064
    bne	$a0,$at,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2188
    addiu	$v1,$a0,-3472
.L0d9c2d98:
    sllv	$v1,$a4,$v1
    lw	$v0,1808($a2)
    # Line 2189
    li	$a3,2
    # Line 2188
    andi	$v1,$v1,0xffff
    or	$v0,$v0,$v1
    # Line 2189
    b	.L0d9c2b38
    # Line 2188
    sw	$v0,1808($a2)
.L0d9c2db4:
    # Line 2064
    bnez	$a1,.L0d9c32bc
    sltiu	$a3,$a0,3505
    bnez	$a3,.L0d9c2b1c
    li	$a5,3505
    beq	$a0,$a5,.L0d9c2b1c
.L0d9c2dc8:
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c2dcc:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c2b54
    ld	$ra,16($sp)
.L0d9c2de0:
    # Line 2064
    li	$a3,0x8037
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d9c2fc8
    sltu	$a7,$a3,$a0
    bnez	$a7,.L0d9c31f0
    li	$a3,0x8075
    # Line 2200
    lw	$t1,1792($a2)
    lui	$t2,0x100
    or	$t1,$t1,$t2
    sw	$t1,1792($a2)
    # Line 2201
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$t0,11756($a2)
    ori	$t0,$t0,0x4
    # Line 2202
    b	.L0d9c2b38
    # Line 2201
    sw	$t0,11756($a2)
.L0d9c2e20:
    # Line 2064
    sltiu	$a3,$a0,3553
    bnez	$a3,.L0d9c30bc
    sltiu	$at,$a0,3552
    sltiu	$t3,$a0,3554
    beqz	$t3,.L0d9c3290
    li	$a6,10753
    # Line 2149
    lw	$t8,1792($a2)
    # Line 2150
    li	$a3,2
    # Line 2149
    lui	$t9,0x2
    or	$t8,$t8,$t9
    # Line 2150
    b	.L0d9c2b38
    # Line 2149
    sw	$t8,1792($a2)
.L0d9c2e50:
    # Line 2064
    bnez	$at,.L0d9c30e4
    sltiu	$a1,$a0,3171
    sltiu	$v0,$a0,3457
    beqz	$v0,.L0d9c2d8c
    li	$at,3472
    # Line 2152
    lw	$v1,1792($a2)
    # Line 2153
    li	$a3,2
    # Line 2152
    lui	$a0,0x80
    or	$v1,$v1,$a0
    # Line 2153
    b	.L0d9c2b38
    # Line 2152
    sw	$v1,1792($a2)
.L0d9c2e7c:
    # Line 2064
    bnez	$a1,.L0d9c3110
    sltiu	$a6,$a0,2977
    sltiu	$a3,$a0,3009
    beqz	$a3,.L0d9c3334
    li	$v0,3024
    # Line 2066
    lw	$a4,1792($a2)
    # Line 2067
    li	$a3,2
    # Line 2066
    ori	$a4,$a4,0x1
    # Line 2067
    b	.L0d9c2b38
    # Line 2066
    sw	$a4,1792($a2)
.L0d9c2ea4:
    # Line 2064
    bnez	$a5,.L0d9c313c
    li	$t2,2832
    sltiu	$a6,$a0,2849
    beqz	$a6,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2098
    lw	$a7,1792($a2)
    # Line 2099
    li	$a3,2
    # Line 2098
    ori	$a7,$a7,0x200
    # Line 2099
    b	.L0d9c2b38
    # Line 2098
    sw	$a7,1792($a2)
.L0d9c2ecc:
    # Line 2064
    bnez	$t0,.L0d9c3544
    li	$a6,12288
    beqz	$a3,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c2edc:
    # Line 2171
    addiu	$t2,$a0,-12288
.L0d9c2ee0:
    lw	$t1,1804($a2)
    # Line 2172
    li	$a3,2
    # Line 2171
    sllv	$t2,$a4,$t2
    or	$t1,$t1,$t2
    # Line 2172
    b	.L0d9c2b38
    # Line 2171
    sw	$t1,1804($a2)
.L0d9c2ef8:
    # Line 2064
    sltiu	$a3,$a0,16385
    bnez	$a3,.L0d9c3278
    sltiu	$a5,$a0,16384
    sltiu	$t3,$a0,16386
    bnez	$t3,.L0d9c2f18
    li	$t8,16386
    bne	$a0,$t8,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c2f18:
    # Line 2178
    lw	$v0,1800($a2)
    addiu	$v1,$a0,-16384
    sllv	$v1,$a4,$v1
    or	$v0,$v0,$v1
    sw	$v0,1800($a2)
    # Line 2179
    li	$at,2
    sw	$at,4120($zero)
    lw	$t9,11756($a2)
    # Line 2285
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2179
    ori	$t9,$t9,0x20
    # Line 2285
    jr	$ra
    # Line 2179
    sw	$t9,11756($a2)
.L0d9c2f4c:
    # Line 2064
    bnez	$a1,.L0d9c31b4
    li	$a3,2884
    sltiu	$a3,$a0,2897
    sd	$a2,0($sp)
    beqz	$a3,.L0d9c2dc8
    sd	$ra,16($sp)
    # Line 2092
    ld	$a5,0($sp)
    lw	$a7,1792($a5)
    ori	$a7,$a7,0x40
    sw	$a7,1792($a5)
    # Line 2093
    li	$a6,2
    sw	$a6,4120($zero)
    # Line 2094
    lw	$t9,11792($a5)
    # Line 2093
    lw	$a4,11756($a5)
    # Line 2094
    move	$a0,$a5
    # Line 2093
    ori	$a4,$a4,0x20
    # Line 2094
    jal	__glSetError
    # Line 2093
    sw	$a4,11756($a5)
    # Line 2095
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,12000($t9)
    jalr	$t9
    nop
    b	.L0d9c2b54
    ld	$ra,16($sp)
.L0d9c2fb0:
    # Line 2062
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c2b54
    ld	$ra,16($sp)
.L0d9c2fc8:
    # Line 2064
    li	$a3,0x8024
    sltu	$at,$a0,$a3
    bnez	$at,.L0d9c3238
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d9c34b8
    li	$t3,0x802e
    # Line 2258
    lw	$a0,1792($a2)
    lui	$a1,0x1000
    or	$a0,$a0,$a1
    sw	$a0,1792($a2)
    # Line 2259
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$v1,11756($a2)
    ori	$v1,$v1,0x10
    # Line 2260
    b	.L0d9c2b38
    # Line 2259
    sw	$v1,11756($a2)
.L0d9c3008:
    # Line 2064
    bnez	$a3,.L0d9c2ecc
    sltiu	$t0,$a0,12289
    sltiu	$a3,$a0,12291
    bnez	$a3,.L0d9c2edc
    li	$a5,12291
    beq	$a0,$a5,.L0d9c2ee0
    # Line 2171
    addiu	$t2,$a0,-12288
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c302c:
    # Line 2064
    bnez	$a6,.L0d9c32f0
    sltiu	$t8,$a0,3058
    sltiu	$a7,$a0,3090
    beqz	$a7,.L0d9c3578
    li	$t1,3168
    lw	$a0,1792($a2)
    andi	$t0,$a0,0x4000
    bnez	$t0,.L0d9c2b54
    nop
    # Line 2129
    lbu	$t2,1636($a2)
    # Line 2127
    ori	$t1,$a0,0x4000
    # Line 2129
    beqz	$t2,.L0d9c307c
    # Line 2127
    sw	$t1,1792($a2)
    # Line 2129
    lbu	$t3,3225($a2)
    beqz	$t3,.L0d9c307c
    nop
    sd	$a2,0($sp)
    sd	$ra,16($sp)
    # Line 2130
    lw	$t8,31308($a2)
    sw	$t8,31312($a2)
.L0d9c307c:
    sd	$a2,0($sp)
    # Line 2139
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11916($t9)
    sd	$ra,16($sp)
    jalr	$t9
    nop
    # Line 2140
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11908($t9)
    jalr	$t9
    nop
    ld	$ra,16($sp)
    ld	$a2,0($sp)
    # Line 2141
    b	.L0d9c2b38
    li	$a3,2
.L0d9c30bc:
    # Line 2064
    bnez	$at,.L0d9c2b14
    li	$t9,3512
    beqz	$a3,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2146
    lw	$v0,1792($a2)
    # Line 2147
    li	$a3,2
    # Line 2146
    lui	$v1,0x1
    or	$v0,$v0,$v1
    # Line 2147
    b	.L0d9c2b38
    # Line 2146
    sw	$v0,1792($a2)
.L0d9c30e4:
    # Line 2064
    bnez	$a1,.L0d9c3378
    li	$a4,3170
    sltiu	$a3,$a0,3172
    beqz	$a3,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2164
    lw	$a4,1792($a2)
    # Line 2165
    li	$a3,2
    # Line 2164
    lui	$a5,0x20
    or	$a4,$a4,$a5
    # Line 2165
    b	.L0d9c2b38
    # Line 2164
    sw	$a4,1792($a2)
.L0d9c3110:
    # Line 2064
    bnez	$a6,.L0d9c3398
    li	$a7,2960
    sltiu	$a7,$a0,2978
    beqz	$a7,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2113
    lw	$t0,1792($a2)
    # Line 2114
    li	$a3,2
    # Line 2113
    lui	$t1,0x40
    or	$t0,$t0,$t1
    # Line 2114
    b	.L0d9c2b38
    # Line 2113
    sw	$t0,1792($a2)
.L0d9c313c:
    # Line 2064
    bne	$a0,$t2,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2116
    lw	$t3,1792($a2)
    li	$a3,2
    ori	$t3,$t3,0x400
    b	.L0d9c2b38
    sw	$t3,1792($a2)
.L0d9c3158:
    # Line 2122
    lw	$at,1792($a2)
    ori	$at,$at,0x2000
    sw	$at,1792($a2)
    # Line 2123
    li	$t9,2
    sw	$t9,4120($zero)
    lw	$t8,11756($a2)
    # Line 2285
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2123
    ori	$t8,$t8,0x4
    # Line 2285
    jr	$ra
    # Line 2123
    sw	$t8,11756($a2)
.L0d9c3184:
    # Line 2064
    li	$a3,0x80bc
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0d9c3418
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0d9c35e0
    li	$a1,0x80d0
    # Line 2269
    lw	$a0,1792($a2)
    # Line 2270
    li	$a3,2
    # Line 2269
    lui	$a1,0x8000
    or	$a0,$a0,$a1
    # Line 2270
    b	.L0d9c2b38
    # Line 2269
    sw	$a0,1792($a2)
.L0d9c31b4:
    # Line 2064
    bne	$a0,$a3,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2064
    lw	$a0,1792($a2)
    andi	$a4,$a0,0x1000
    bnez	$a4,.L0d9c2b54
    # Line 2078
    ori	$a7,$a0,0x1000
    sw	$a7,1792($a2)
    # Line 2079
    li	$a6,2
    sw	$a6,4120($zero)
    lw	$a5,11756($a2)
    # Line 2285
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2079
    ori	$a5,$a5,0x4
    # Line 2285
    jr	$ra
    # Line 2079
    sw	$a5,11756($a2)
.L0d9c31f0:
    # Line 2064
    sltu	$t0,$a0,$a3
    bnez	$t0,.L0d9c3478
    sltu	$t1,$a3,$a0
    beqz	$t1,.L0d9c36e0
    li	$t2,0x8076
    bne	$a0,$t2,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2285
    ld	$gp,8($sp)
    # Line 2221
    lw	$t9,5356($a2)
    # Line 2220
    lw	$t3,5344($a2)
    # Line 2285
    addiu	$sp,$sp,32
    # Line 2220
    lui	$t8,0xf
    ori	$t8,$t8,0xf000
    # Line 2221
    ori	$t9,$t9,0x2
    sw	$t9,5356($a2)
    # Line 2220
    or	$t3,$t3,$t8
    # Line 2285
    jr	$ra
    # Line 2220
    sw	$t3,5344($a2)
.L0d9c3238:
    # Line 2064
    li	$a3,0x8012
    sltu	$at,$a0,$a3
    bnez	$at,.L0d9c3500
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2254
    lw	$a0,1792($a2)
    lui	$a1,0x800
    or	$a0,$a0,$a1
    sw	$a0,1792($a2)
    # Line 2255
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$v1,11756($a2)
    ori	$v1,$v1,0x10
    # Line 2256
    b	.L0d9c2b38
    # Line 2255
    sw	$v1,11756($a2)
.L0d9c3278:
    # Line 2064
    bnez	$a5,.L0d9c3534
    li	$a5,12293
    bnez	$a3,.L0d9c2f18
    nop
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3290:
    bne	$a0,$a6,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2204
    lw	$t0,1796($a2)
    ori	$t0,$t0,0x200
    sw	$t0,1796($a2)
    # Line 2205
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a7,11756($a2)
    ori	$a7,$a7,0x4
    # Line 2206
    b	.L0d9c2b38
    # Line 2205
    sw	$a7,11756($a2)
.L0d9c32bc:
    # Line 2064
    sltiu	$t1,$a0,3480
    bnez	$t1,.L0d9c3554
    sltiu	$t2,$a0,3481
    bnez	$t2,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c32d8:
    # Line 2064
    bnez	$t3,.L0d9c3568
    li	$t0,3474
    bnez	$a3,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c32f0:
    # Line 2064
    bnez	$t8,.L0d9c3598
    li	$t8,3057
    sltiu	$t9,$a0,3059
    sd	$a2,0($sp)
    beqz	$t9,.L0d9c2dc8
    sd	$ra,16($sp)
    # Line 2108
    ld	$v0,0($sp)
    # Line 2110
    # lw $t9, -27160($gp) # &__glim_BlendEquationEXT
    # Line 2108
    lw	$at,1796($v0)
    # Line 2110
    li	$a0,3057
    # Line 2108
    ori	$at,$at,0x800
    # Line 2110
    bal __glim_BlendEquationEXT
    # Line 2108
    sw	$at,1796($v0)
    ld	$ra,16($sp)
    ld	$a2,0($sp)
    # Line 2111
    b	.L0d9c2b38
    li	$a3,2
.L0d9c3334:
    # Line 2064
    bne	$a0,$v0,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2086
    lw	$v1,1792($a2)
    # Line 2087
    li	$a3,2
    # Line 2086
    ori	$v1,$v1,0x8
    # Line 2087
    b	.L0d9c2b38
    # Line 2086
    sw	$v1,1792($a2)
.L0d9c3350:
    # Line 2285
    ld	$gp,8($sp)
    # Line 2225
    lw	$a3,5356($a2)
    # Line 2224
    lw	$a0,5344($a2)
    # Line 2285
    addiu	$sp,$sp,32
    # Line 2224
    lui	$a1,0xf000
    # Line 2225
    ori	$a3,$a3,0x8
    sw	$a3,5356($a2)
    # Line 2224
    or	$a0,$a0,$a1
    # Line 2285
    jr	$ra
    # Line 2224
    sw	$a0,5344($a2)
.L0d9c3378:
    # Line 2064
    bne	$a0,$a4,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2161
    lw	$a5,1792($a2)
    # Line 2162
    li	$a3,2
    # Line 2161
    lui	$a6,0x10
    or	$a5,$a5,$a6
    # Line 2162
    b	.L0d9c2b38
    # Line 2161
    sw	$a5,1792($a2)
.L0d9c3398:
    # Line 2064
    bne	$a0,$a7,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2143
    lw	$t0,1792($a2)
    # Line 2144
    li	$a3,2
    # Line 2143
    ori	$t0,$t0,0x8000
    # Line 2144
    b	.L0d9c2b38
    # Line 2143
    sw	$t0,1792($a2)
.L0d9c33b4:
    # Line 2064
    sltu	$t1,$a0,$a3
    bnez	$t1,.L0d9c35b4
    li	$at,0x80d2
    sltu	$t2,$a3,$a0
    beqz	$t2,.L0d9c3704
    li	$t3,0x843a
    bne	$a0,$t3,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2243
    lw	$t8,5352($a2)
    # Line 2285
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2243
    ori	$t8,$t8,0x2
    # Line 2285
    jr	$ra
    # Line 2243
    sw	$t8,5352($a2)
.L0d9c33ec:
    # Line 2101
    lw	$v0,1792($a2)
    ori	$v0,$v0,0x100
    sw	$v0,1792($a2)
    # Line 2102
    li	$at,2
    sw	$at,4120($zero)
    lw	$t9,11756($a2)
    # Line 2285
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2102
    ori	$t9,$t9,0x2
    # Line 2285
    jr	$ra
    # Line 2102
    sw	$t9,11756($a2)
.L0d9c3418:
    # Line 2064
    li	$a3,0x8079
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d9c360c
    li	$a6,0x8078
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2285
    ld	$gp,8($sp)
    # Line 2237
    lw	$a5,5356($a2)
    # Line 2236
    lw	$a3,5344($a2)
    # Line 2285
    addiu	$sp,$sp,32
    # Line 2236
    lui	$a4,0x800
    # Line 2237
    ori	$a5,$a5,0x10
    sw	$a5,5356($a2)
    # Line 2236
    or	$a3,$a3,$a4
    # Line 2285
    jr	$ra
    # Line 2236
    sw	$a3,5344($a2)
.L0d9c345c:
    # Line 2064
    sltiu	$a6,$a0,16389
    bnez	$a6,.L0d9c3660
    li	$t9,16388
    bnez	$a3,.L0d9c2f18
    nop
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3478:
    li	$a3,0x8074
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d9c3670
    li	$at,0x806f
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2285
    ld	$gp,8($sp)
    # Line 2213
    lw	$t2,5356($a2)
    # Line 2212
    lw	$t1,5344($a2)
    # Line 2285
    addiu	$sp,$sp,32
    # Line 2213
    ori	$t2,$t2,0x20
    sw	$t2,5356($a2)
    # Line 2212
    ori	$t1,$t1,0xff
    # Line 2285
    jr	$ra
    # Line 2212
    sw	$t1,5344($a2)
.L0d9c34b8:
    # Line 2064
    bne	$a0,$t3,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2262
    lw	$t9,1792($a2)
    lui	$at,0x2000
    or	$t9,$t9,$at
    sw	$t9,1792($a2)
    # Line 2263
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$t8,11756($a2)
    ori	$t8,$t8,0x10
    # Line 2264
    b	.L0d9c2b38
    # Line 2263
    sw	$t8,11756($a2)
.L0d9c34e8:
    # Line 2064
    bnez	$v0,.L0d9c3690
    li	$a1,3507
    bnez	$a3,.L0d9c2b20
    # Line 2197
    addiu	$v0,$a0,-3504
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3500:
    # Line 2064
    li	$v1,0x8011
    bne	$a0,$v1,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2250
    lw	$a1,1792($a2)
    lui	$a3,0x400
    or	$a1,$a1,$a3
    sw	$a1,1792($a2)
    # Line 2251
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a0,11756($a2)
    ori	$a0,$a0,0x10
    # Line 2252
    b	.L0d9c2b38
    # Line 2251
    sw	$a0,11756($a2)
.L0d9c3534:
    # Line 2064
    beq	$a0,$a5,.L0d9c2ee0
    # Line 2171
    addiu	$t2,$a0,-12288
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3544:
    # Line 2064
    beq	$a0,$a6,.L0d9c2ee0
    # Line 2171
    addiu	$t2,$a0,-12288
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3554:
    # Line 2064
    li	$a7,3479
    beq	$a0,$a7,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3568:
    # Line 2064
    beq	$a0,$t0,.L0d9c2d98
    # Line 2188
    addiu	$v1,$a0,-3472
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3578:
    # Line 2064
    bne	$a0,$t1,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2155
    lw	$t2,1792($a2)
    # Line 2156
    li	$a3,2
    # Line 2155
    lui	$t3,0x4
    or	$t2,$t2,$t3
    # Line 2156
    b	.L0d9c2b38
    # Line 2155
    sw	$t2,1792($a2)
.L0d9c3598:
    # Line 2064
    bne	$a0,$t8,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2105
    lw	$t9,1792($a2)
    # Line 2106
    li	$a3,2
    # Line 2105
    ori	$t9,$t9,0x4
    # Line 2106
    b	.L0d9c2b38
    # Line 2105
    sw	$t9,1792($a2)
.L0d9c35b4:
    # Line 2064
    bne	$a0,$at,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2280
    lw	$v1,1796($a2)
    ori	$v1,$v1,0x4
    sw	$v1,1796($a2)
    # Line 2281
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$v0,11756($a2)
    ori	$v0,$v0,0x10
    # Line 2282
    b	.L0d9c2b38
    # Line 2281
    sw	$v0,11756($a2)
.L0d9c35e0:
    # Line 2064
    bne	$a0,$a1,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2272
    lw	$a5,1796($a2)
    ori	$a5,$a5,0x1
    sw	$a5,1796($a2)
    # Line 2273
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a4,11756($a2)
    ori	$a4,$a4,0x10
    # Line 2274
    b	.L0d9c2b38
    # Line 2273
    sw	$a4,11756($a2)
.L0d9c360c:
    # Line 2064
    bne	$a0,$a6,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2228
    lw	$t0,28212($a2)
    lui	$t1,0xffff
    ori	$t1,$t1,0x7c39
    addu	$t0,$t0,$t1
    # Line 2229
    lw	$a7,5348($a2)
    sllv	$t1,$a4,$t0
    or	$a7,$a7,$t1
    bnez	$t0,.L0d9c2b54
    sw	$a7,5348($a2)
    # Line 2285
    ld	$gp,8($sp)
    # Line 2232
    lw	$t8,5356($a2)
    # Line 2231
    lw	$t2,5344($a2)
    # Line 2285
    addiu	$sp,$sp,32
    # Line 2231
    lui	$t3,0x7f0
    # Line 2232
    ori	$t8,$t8,0x4
    sw	$t8,5356($a2)
    # Line 2231
    or	$t2,$t2,$t3
    # Line 2285
    jr	$ra
    # Line 2231
    sw	$t2,5344($a2)
.L0d9c3660:
    # Line 2064
    beq	$a0,$t9,.L0d9c2f18
    nop
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c3670:
    bne	$a0,$at,.L0d9c2dcc
    # Line 2284
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2266
    lw	$v0,1792($a2)
    # Line 2267
    li	$a3,2
    # Line 2266
    lui	$v1,0x4000
    or	$v0,$v0,$v1
    # Line 2267
    b	.L0d9c2b38
    # Line 2266
    sw	$v0,1792($a2)
.L0d9c3690:
    # Line 2064
    beq	$a0,$a1,.L0d9c2b20
    # Line 2197
    addiu	$v0,$a0,-3504
    b	.L0d9c2dc8
    sd	$ra,16($sp)
.L0d9c36a0:
    sd	$a2,0($sp)
    # Line 2073
    ld	$a3,0($sp)
    lw	$t9,11792($a3)
    # Line 2072
    lw	$a2,1792($a3)
    sd	$ra,16($sp)
    # Line 2073
    move	$a0,$a3
    # Line 2072
    ori	$a2,$a2,0x80
    # Line 2073
    jal	__glSetError
    # Line 2072
    sw	$a2,1792($a3)
    # Line 2074
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,12000($t9)
    jalr	$t9
    nop
    b	.L0d9c2b54
    ld	$ra,16($sp)
.L0d9c36e0:
    # Line 2285
    ld	$gp,8($sp)
    # Line 2217
    lw	$v0,5356($a2)
    # Line 2216
    lw	$at,5344($a2)
    # Line 2285
    addiu	$sp,$sp,32
    # Line 2217
    ori	$v0,$v0,0x1
    sw	$v0,5356($a2)
    # Line 2216
    ori	$at,$at,0xf00
    # Line 2285
    jr	$ra
    # Line 2216
    sw	$at,5344($a2)
.L0d9c3704:
    # Line 2240
    lw	$v1,5352($a2)
    # Line 2285
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2240
    ori	$v1,$v1,0x1
    # Line 2285
    jr	$ra
    # Line 2240
    sw	$v1,5352($a2)
.end __glim_Enable

# Function: __glim_Disable
# Declared: Line 2290 (Source lines: 2291-2503)
# Address: 0x0d9c3720 - 0x0d9c4420 (Size: 3328 bytes, Frame: 32)
.globl __glim_Disable
.ent __glim_Disable
__glim_Disable:
    # Line 2293
    lw	$v0,4120($zero)
    li	$a4,1
    # Line 2291
    lui	$at,0x9
    # Line 2293
    lw	$a2,4112($zero)
    # Line 2291
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10644
    sd	$gp,8($sp)
    # Line 2293
    beq	$v0,$a4,.L0d9c3c78
    # Line 2291
    addu	$gp,$t9,$at
    # Line 2295
    sltiu	$v0,$a0,3511
    bnez	$v0,.L0d9c37a0
    sltiu	$v1,$a0,3512
    bnez	$v1,.L0d9c37dc
    # Line 2416
    addiu	$v0,$a0,-3504
    # Line 2295
    li	$a3,0x8010
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d9c38a4
    sltiu	$t9,$a0,12292
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c3930
    li	$a3,0x8077
    # Line 2465
    lui	$t0,0x200
    lw	$a7,1792($a2)
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    sw	$a7,1792($a2)
    # Line 2466
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a6,11756($a2)
    ori	$a6,$a6,0x10
    # Line 2467
    b	.L0d9c37f8
    # Line 2466
    sw	$a6,11756($a2)
.L0d9c37a0:
    # Line 2295
    sltiu	$t1,$a0,3169
    bnez	$t1,.L0d9c3820
    sltiu	$a1,$a0,2929
    sltiu	$t2,$a0,3170
    beqz	$t2,.L0d9c385c
    sltiu	$a7,$a0,3478
    # Line 2377
    lui	$t8,0x8
    lw	$t3,1792($a2)
    # Line 2378
    li	$a3,2
    # Line 2377
    nor	$t8,$t8,$zero
    and	$t3,$t3,$t8
    # Line 2378
    b	.L0d9c37f8
    # Line 2377
    sw	$t3,1792($a2)
.L0d9c37d4:
    # Line 2295
    bne	$a0,$t9,.L0d9c3a8c
.L0d9c37d8:
    # Line 2416
    addiu	$v0,$a0,-3504
.L0d9c37dc:
    sllv	$v0,$a4,$v0
    nor	$v0,$v0,$zero
    lw	$at,1812($a2)
    andi	$v0,$v0,0xffff
    # Line 2417
    li	$a3,2
    # Line 2416
    and	$at,$at,$v0
    sw	$at,1812($a2)
.L0d9c37f8:
    # Line 2503
    sw	$a3,4120($zero)
    lw	$v1,11756($a2)
    # Line 2501
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2503
    ori	$v1,$v1,0x1
    # Line 2501
    jr	$ra
    # Line 2503
    sw	$v1,11756($a2)
.L0d9c3814:
    # Line 2501
    ld	$gp,8($sp)
.L0d9c3818:
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c3820:
    # Line 2295
    bnez	$a1,.L0d9c38f0
    sltiu	$a4,$a0,2882
    sltiu	$a3,$a0,2930
    beqz	$a3,.L0d9c3970
    sltiu	$a1,$a0,3042
    # Line 2312
    lw	$a5,1792($a2)
    li	$a6,-17
    and	$a5,$a5,$a6
    sw	$a5,1792($a2)
    # Line 2313
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a4,11756($a2)
    ori	$a4,$a4,0x80
    # Line 2314
    b	.L0d9c37f8
    # Line 2313
    sw	$a4,11756($a2)
.L0d9c385c:
    # Line 2295
    bnez	$a7,.L0d9c39d0
    sltiu	$t0,$a0,3479
    bnez	$t0,.L0d9c3a48
    sltiu	$t1,$a0,3506
    bnez	$t1,.L0d9c3a6c
    sltiu	$t2,$a0,3507
    bnez	$t2,.L0d9c37dc
    # Line 2416
    addiu	$v0,$a0,-3504
    # Line 2295
    sltiu	$a3,$a0,3509
    bnez	$a3,.L0d9c41a4
    sltiu	$t3,$a0,3510
    bnez	$t3,.L0d9c37dc
    # Line 2416
    addiu	$v0,$a0,-3504
    # Line 2295
    li	$t8,3510
    beq	$a0,$t8,.L0d9c37dc
    # Line 2416
    addiu	$v0,$a0,-3504
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c38a4:
    # Line 2295
    bnez	$t9,.L0d9c3998
    sltiu	$a6,$a0,10754
    sltiu	$at,$a0,12293
    bnez	$at,.L0d9c3ba4
    # Line 2390
    addiu	$a6,$a0,-12288
    # Line 2295
    sltiu	$v0,$a0,16387
    bnez	$v0,.L0d9c3bc0
    sltiu	$a3,$a0,16385
    sltiu	$v1,$a0,16388
    bnez	$v1,.L0d9c3bd8
    sltiu	$a3,$a0,16390
    bnez	$a3,.L0d9c4110
    sltiu	$a1,$a0,16391
    bnez	$a1,.L0d9c3bd8
    li	$a3,16391
    beq	$a0,$a3,.L0d9c3bdc
    # Line 2397
    addiu	$t8,$a0,-16384
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c38f0:
    # Line 2295
    bnez	$a4,.L0d9c3a0c
    sltiu	$a5,$a0,2883
    bnez	$a5,.L0d9c3dd4
    sltiu	$a6,$a0,2903
    bnez	$a6,.L0d9c3c10
    sltiu	$a7,$a0,2904
    bnez	$a7,.L0d9c4348
    li	$t0,2912
    bne	$a0,$t0,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2319
    lw	$t1,1792($a2)
    # Line 2320
    li	$a3,2
    # Line 2319
    li	$t2,-33
    and	$t1,$t1,$t2
    # Line 2320
    b	.L0d9c37f8
    # Line 2319
    sw	$t1,1792($a2)
.L0d9c3930:
    # Line 2295
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d9c3aa4
    sltu	$t8,$a3,$a0
    beqz	$t8,.L0d9c3fe8
    li	$a3,0x80d1
    sltu	$t9,$a0,$a3
    bnez	$t9,.L0d9c3e04
    sltu	$at,$a3,$a0
    bnez	$at,.L0d9c4060
    li	$a3,0x8439
    # Line 2494
    lw	$v0,1796($a2)
    # Line 2495
    li	$a3,2
    # Line 2494
    li	$v1,-3
    and	$v0,$v0,$v1
    # Line 2495
    b	.L0d9c37f8
    # Line 2494
    sw	$v0,1796($a2)
.L0d9c3970:
    # Line 2295
    bnez	$a1,.L0d9c3b38
    sltiu	$a3,$a0,3043
    beqz	$a3,.L0d9c3cf8
    sltiu	$a6,$a0,3089
    # Line 2300
    lw	$a4,1792($a2)
    # Line 2301
    li	$a3,2
    # Line 2300
    li	$a5,-3
    and	$a4,$a4,$a5
    # Line 2301
    b	.L0d9c37f8
    # Line 2300
    sw	$a4,1792($a2)
.L0d9c3998:
    # Line 2295
    bnez	$a6,.L0d9c3ae4
    sltiu	$a7,$a0,10755
    beqz	$a7,.L0d9c3cd0
    sltiu	$a3,$a0,12290
    # Line 2427
    lw	$t1,1796($a2)
    li	$t2,-1025
    and	$t1,$t1,$t2
    sw	$t1,1796($a2)
    # Line 2428
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$t0,11756($a2)
    ori	$t0,$t0,0x4
    # Line 2429
    b	.L0d9c37f8
    # Line 2428
    sw	$t0,11756($a2)
.L0d9c39d0:
    # Line 2295
    sltiu	$t3,$a0,3473
    bnez	$t3,.L0d9c3b10
    sltiu	$a6,$a0,3456
    sltiu	$t8,$a0,3474
    bnez	$t8,.L0d9c3a4c
    # Line 2407
    addiu	$t0,$a0,-3472
    # Line 2295
    sltiu	$a3,$a0,3476
    bnez	$a3,.L0d9c3f7c
    sltiu	$t9,$a0,3477
    bnez	$t9,.L0d9c3a48
    li	$at,3477
    beq	$a0,$at,.L0d9c3a4c
    # Line 2407
    addiu	$t0,$a0,-3472
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c3a0c:
    # Line 2295
    sltiu	$v0,$a0,2852
    bnez	$v0,.L0d9c3b64
    sltiu	$v1,$a0,2853
    bnez	$v1,.L0d9c4098
    li	$a1,2881
    bne	$a0,$a1,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2347
    lw	$a4,1792($a2)
    # Line 2348
    li	$a3,2
    # Line 2347
    li	$a5,-2049
    and	$a4,$a4,$a5
    # Line 2348
    b	.L0d9c37f8
    # Line 2347
    sw	$a4,1792($a2)
.L0d9c3a40:
    # Line 2295
    li	$a6,3472
    bne	$a0,$a6,.L0d9c3a8c
.L0d9c3a48:
    # Line 2407
    addiu	$t0,$a0,-3472
.L0d9c3a4c:
    sllv	$t0,$a4,$t0
    nor	$t0,$t0,$zero
    lw	$a7,1808($a2)
    # Line 2408
    li	$a3,2
    # Line 2407
    andi	$t0,$t0,0xffff
    and	$a7,$a7,$t0
    # Line 2408
    b	.L0d9c37f8
    # Line 2407
    sw	$a7,1808($a2)
.L0d9c3a6c:
    # Line 2295
    sltiu	$t1,$a0,3504
    bnez	$t1,.L0d9c3f64
    sltiu	$a7,$a0,3480
    sltiu	$t2,$a0,3505
    bnez	$t2,.L0d9c37d8
    li	$t3,3505
    beq	$a0,$t3,.L0d9c37dc
    # Line 2416
    addiu	$v0,$a0,-3504
.L0d9c3a8c:
    # Line 2500
    # lw $t9, -26452($gp) # &__glSetError
.L0d9c3a90:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d9c3814
    ld	$ra,16($sp)
.L0d9c3aa4:
    # Line 2295
    li	$a3,0x8037
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d9c3c90
    sltu	$t9,$a3,$a0
    bnez	$t9,.L0d9c3e80
    # Line 2419
    lui	$v1,0x100
    lw	$v0,1792($a2)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1792($a2)
    # Line 2420
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$at,11756($a2)
    ori	$at,$at,0x4
    # Line 2421
    b	.L0d9c37f8
    # Line 2420
    sw	$at,11756($a2)
.L0d9c3ae4:
    # Line 2295
    sltiu	$a3,$a0,3553
    bnez	$a3,.L0d9c3d2c
    sltiu	$a1,$a0,3554
    beqz	$a1,.L0d9c3f30
    # Line 2368
    lui	$a5,0x2
    lw	$a4,1792($a2)
    # Line 2369
    li	$a3,2
    # Line 2368
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    # Line 2369
    b	.L0d9c37f8
    # Line 2368
    sw	$a4,1792($a2)
.L0d9c3b10:
    # Line 2295
    bnez	$a6,.L0d9c3d5c
    sltiu	$a7,$a0,3457
    beqz	$a7,.L0d9c3a40
    # Line 2371
    lui	$t1,0x80
    lw	$t0,1792($a2)
    # Line 2372
    li	$a3,2
    # Line 2371
    nor	$t1,$t1,$zero
    and	$t0,$t0,$t1
    # Line 2372
    b	.L0d9c37f8
    # Line 2371
    sw	$t0,1792($a2)
.L0d9c3b38:
    # Line 2295
    sltiu	$t2,$a0,3008
    bnez	$t2,.L0d9c3d88
    sltiu	$t3,$a0,3009
    beqz	$t3,.L0d9c3fc8
    li	$at,3024
    # Line 2297
    lw	$t8,1792($a2)
    # Line 2298
    li	$a3,2
    # Line 2297
    li	$t9,-2
    and	$t8,$t8,$t9
    # Line 2298
    b	.L0d9c37f8
    # Line 2297
    sw	$t8,1792($a2)
.L0d9c3b64:
    # Line 2295
    sltiu	$at,$a0,2848
    bnez	$at,.L0d9c3db4
    li	$a6,2832
    sltiu	$v0,$a0,2849
    beqz	$v0,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2328
    lw	$v1,1792($a2)
    # Line 2329
    li	$a3,2
    # Line 2328
    li	$a0,-513
    and	$v1,$v1,$a0
    # Line 2329
    b	.L0d9c37f8
    # Line 2328
    sw	$v1,1792($a2)
.L0d9c3b94:
    # Line 2295
    bnez	$a1,.L0d9c4208
    li	$t9,12288
    beqz	$a3,.L0d9c3a8c
    # Line 2390
    addiu	$a6,$a0,-12288
.L0d9c3ba4:
    sllv	$a6,$a4,$a6
    lw	$a5,1804($a2)
    # Line 2391
    li	$a3,2
    # Line 2390
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    # Line 2391
    b	.L0d9c37f8
    # Line 2390
    sw	$a5,1804($a2)
.L0d9c3bc0:
    # Line 2295
    bnez	$a3,.L0d9c3f14
    sltiu	$a7,$a0,16386
    bnez	$a7,.L0d9c3bd8
    li	$t0,16386
    bne	$a0,$t0,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c3bd8:
    # Line 2397
    addiu	$t8,$a0,-16384
.L0d9c3bdc:
    lw	$t3,1800($a2)
    sllv	$t8,$a4,$t8
    nor	$t8,$t8,$zero
    and	$t3,$t3,$t8
    sw	$t3,1800($a2)
    # Line 2398
    li	$t2,2
    sw	$t2,4120($zero)
    lw	$t1,11756($a2)
    # Line 2501
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2398
    ori	$t1,$t1,0x20
    # Line 2501
    jr	$ra
    # Line 2398
    sw	$t1,11756($a2)
.L0d9c3c10:
    # Line 2295
    sltiu	$t9,$a0,2896
    bnez	$t9,.L0d9c3e38
    sltiu	$at,$a0,2897
    sd	$a2,0($sp)
    beqz	$at,.L0d9c3a8c
    sd	$ra,16($sp)
    # Line 2322
    ld	$v1,0($sp)
    lw	$a1,1792($v1)
    li	$a2,-65
    and	$a1,$a1,$a2
    sw	$a1,1792($v1)
    # Line 2323
    li	$a0,2
    sw	$a0,4120($zero)
    # Line 2324
    lw	$t9,11792($v1)
    # Line 2323
    lw	$v0,11756($v1)
    # Line 2324
    move	$a0,$v1
    # Line 2323
    ori	$v0,$v0,0x20
    # Line 2324
    jal	__glSetError
    # Line 2323
    sw	$v0,11756($v1)
    # Line 2325
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,12000($t9)
    jalr	$t9
    nop
    b	.L0d9c3814
    ld	$ra,16($sp)
.L0d9c3c78:
    # Line 2293
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c3814
    ld	$ra,16($sp)
.L0d9c3c90:
    # Line 2295
    li	$a3,0x8024
    sltu	$at,$a0,$a3
    bnez	$at,.L0d9c3ed4
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d9c4170
    # Line 2477
    lui	$a1,0x1000
    lw	$a0,1792($a2)
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    sw	$a0,1792($a2)
    # Line 2478
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$v1,11756($a2)
    ori	$v1,$v1,0x10
    # Line 2479
    b	.L0d9c37f8
    # Line 2478
    sw	$v1,11756($a2)
.L0d9c3cd0:
    # Line 2295
    bnez	$a3,.L0d9c3b94
    sltiu	$a1,$a0,12289
    sltiu	$a3,$a0,12291
    bnez	$a3,.L0d9c3ba4
    # Line 2390
    addiu	$a6,$a0,-12288
    # Line 2295
    li	$a5,12291
    beq	$a0,$a5,.L0d9c3ba4
    # Line 2390
    addiu	$a6,$a0,-12288
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c3cf8:
    # Line 2295
    bnez	$a6,.L0d9c3f98
    sltiu	$a7,$a0,3090
    bnez	$a7,.L0d9c4378
    li	$t0,3168
    bne	$a0,$t0,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2374
    lui	$t2,0x4
    lw	$t1,1792($a2)
    # Line 2375
    li	$a3,2
    # Line 2374
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    # Line 2375
    b	.L0d9c37f8
    # Line 2374
    sw	$t1,1792($a2)
.L0d9c3d2c:
    # Line 2295
    sltiu	$t3,$a0,3552
    bnez	$t3,.L0d9c37d4
    li	$t9,3512
    beqz	$a3,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2365
    lui	$t9,0x1
    lw	$t8,1792($a2)
    # Line 2366
    li	$a3,2
    # Line 2365
    nor	$t9,$t9,$zero
    and	$t8,$t8,$t9
    # Line 2366
    b	.L0d9c37f8
    # Line 2365
    sw	$t8,1792($a2)
.L0d9c3d5c:
    # Line 2295
    sltiu	$at,$a0,3171
    bnez	$at,.L0d9c4018
    sltiu	$v0,$a0,3172
    beqz	$v0,.L0d9c3a8c
    # Line 2383
    lui	$a0,0x20
    lw	$v1,1792($a2)
    # Line 2384
    li	$a3,2
    # Line 2383
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    # Line 2384
    b	.L0d9c37f8
    # Line 2383
    sw	$v1,1792($a2)
.L0d9c3d88:
    # Line 2295
    sltiu	$a1,$a0,2977
    bnez	$a1,.L0d9c403c
    sltiu	$a3,$a0,2978
    beqz	$a3,.L0d9c3a8c
    # Line 2341
    lui	$a5,0x40
    lw	$a4,1792($a2)
    # Line 2342
    li	$a3,2
    # Line 2341
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    # Line 2342
    b	.L0d9c37f8
    # Line 2341
    sw	$a4,1792($a2)
.L0d9c3db4:
    # Line 2295
    bne	$a0,$a6,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2344
    lw	$a7,1792($a2)
    li	$a3,2
    li	$t0,-1025
    and	$a7,$a7,$t0
    b	.L0d9c37f8
    sw	$a7,1792($a2)
.L0d9c3dd4:
    # Line 2350
    lw	$t3,1792($a2)
    li	$t8,-8193
    and	$t3,$t3,$t8
    sw	$t3,1792($a2)
    # Line 2351
    li	$t2,2
    sw	$t2,4120($zero)
    lw	$t1,11756($a2)
    # Line 2501
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2351
    ori	$t1,$t1,0x4
    # Line 2501
    jr	$ra
    # Line 2351
    sw	$t1,11756($a2)
.L0d9c3e04:
    # Line 2295
    li	$a3,0x80bc
    sltu	$t9,$a0,$a3
    bnez	$t9,.L0d9c40c8
    sltu	$at,$a3,$a0
    bnez	$at,.L0d9c4280
    li	$a6,0x80d0
    # Line 2488
    lui	$v1,0x7fff
    lw	$v0,1792($a2)
    # Line 2489
    li	$a3,2
    # Line 2488
    ori	$v1,$v1,0xffff
    and	$v0,$v0,$v1
    # Line 2489
    b	.L0d9c37f8
    # Line 2488
    sw	$v0,1792($a2)
.L0d9c3e38:
    # Line 2295
    li	$a1,2884
    bne	$a0,$a1,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2295
    lw	$a0,1792($a2)
    andi	$a3,$a0,0x1000
    beqz	$a3,.L0d9c3818
    # Line 2501
    ld	$gp,8($sp)
    # Line 2308
    li	$a6,-4097
    and	$a6,$a0,$a6
    sw	$a6,1792($a2)
    # Line 2309
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($a2)
    # Line 2501
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2309
    ori	$a4,$a4,0x4
    # Line 2501
    jr	$ra
    # Line 2309
    sw	$a4,11756($a2)
.L0d9c3e80:
    # Line 2295
    li	$a3,0x8075
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d9c412c
    sltu	$t0,$a3,$a0
    beqz	$t0,.L0d9c43d8
    li	$t1,0x8076
    bne	$a0,$t1,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2501
    ld	$gp,8($sp)
    # Line 2440
    lw	$t8,5356($a2)
    # Line 2439
    lw	$t2,5344($a2)
    # Line 2501
    addiu	$sp,$sp,32
    # Line 2439
    lui	$t3,0xf
    # Line 2440
    li	$t9,-3
    # Line 2439
    ori	$t3,$t3,0xf000
    # Line 2440
    and	$t8,$t8,$t9
    sw	$t8,5356($a2)
    # Line 2439
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    # Line 2501
    jr	$ra
    # Line 2439
    sw	$t2,5344($a2)
.L0d9c3ed4:
    # Line 2295
    li	$a3,0x8012
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d9c41c0
    sltu	$t9,$a3,$a0
    bnez	$t9,.L0d9c3a8c
    # Line 2473
    lui	$v1,0x800
    lw	$v0,1792($a2)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    sw	$v0,1792($a2)
    # Line 2474
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$at,11756($a2)
    ori	$at,$at,0x10
    # Line 2475
    b	.L0d9c37f8
    # Line 2474
    sw	$at,11756($a2)
.L0d9c3f14:
    # Line 2295
    sltiu	$a1,$a0,16384
    bnez	$a1,.L0d9c41f8
    li	$t8,12293
    bnez	$a3,.L0d9c3bdc
    # Line 2397
    addiu	$t8,$a0,-16384
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c3f30:
    # Line 2295
    li	$a3,10753
    bne	$a0,$a3,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2423
    lw	$a5,1796($a2)
    li	$a6,-513
    and	$a5,$a5,$a6
    sw	$a5,1796($a2)
    # Line 2424
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a4,11756($a2)
    ori	$a4,$a4,0x4
    # Line 2425
    b	.L0d9c37f8
    # Line 2424
    sw	$a4,11756($a2)
.L0d9c3f64:
    # Line 2295
    bnez	$a7,.L0d9c4218
    sltiu	$t0,$a0,3481
    bnez	$t0,.L0d9c3a4c
    # Line 2407
    addiu	$t0,$a0,-3472
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c3f7c:
    # Line 2295
    sltiu	$t1,$a0,3475
    bnez	$t1,.L0d9c422c
    li	$v0,3474
    bnez	$a3,.L0d9c3a4c
    # Line 2407
    addiu	$t0,$a0,-3472
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c3f98:
    # Line 2295
    sltiu	$t2,$a0,3058
    bnez	$t2,.L0d9c423c
    li	$v1,3057
    sltiu	$t3,$a0,3059
    beqz	$t3,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2338
    lw	$t8,1796($a2)
    # Line 2339
    li	$a3,2
    # Line 2338
    li	$t9,-2049
    and	$t8,$t8,$t9
    # Line 2339
    b	.L0d9c37f8
    # Line 2338
    sw	$t8,1796($a2)
.L0d9c3fc8:
    # Line 2295
    bne	$a0,$at,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2316
    lw	$v0,1792($a2)
    # Line 2317
    li	$a3,2
    # Line 2316
    li	$v1,-9
    and	$v0,$v0,$v1
    # Line 2317
    b	.L0d9c37f8
    # Line 2316
    sw	$v0,1792($a2)
.L0d9c3fe8:
    # Line 2501
    ld	$gp,8($sp)
    # Line 2444
    lw	$a3,5356($a2)
    # Line 2443
    lw	$a0,5344($a2)
    # Line 2501
    addiu	$sp,$sp,32
    # Line 2444
    li	$a4,-9
    # Line 2443
    lui	$a1,0xfff
    ori	$a1,$a1,0xffff
    # Line 2444
    and	$a3,$a3,$a4
    sw	$a3,5356($a2)
    # Line 2443
    and	$a0,$a0,$a1
    # Line 2501
    jr	$ra
    # Line 2443
    sw	$a0,5344($a2)
.L0d9c4018:
    # Line 2295
    li	$a5,3170
    bne	$a0,$a5,.L0d9c3a8c
    # Line 2380
    lui	$a7,0x10
    lw	$a6,1792($a2)
    # Line 2381
    li	$a3,2
    # Line 2380
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    # Line 2381
    b	.L0d9c37f8
    # Line 2380
    sw	$a6,1792($a2)
.L0d9c403c:
    # Line 2295
    li	$t0,2960
    bne	$a0,$t0,.L0d9c3a8c
    # Line 2362
    li	$t2,0x8000
    lw	$t1,1792($a2)
    # Line 2363
    li	$a3,2
    # Line 2362
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    # Line 2363
    b	.L0d9c37f8
    # Line 2362
    sw	$t1,1792($a2)
.L0d9c4060:
    # Line 2295
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d9c425c
    sltu	$t8,$a3,$a0
    beqz	$t8,.L0d9c4404
    li	$t9,0x843a
    bne	$a0,$t9,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2462
    lw	$at,5352($a2)
    # Line 2501
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2462
    li	$v0,-3
    and	$at,$at,$v0
    # Line 2501
    jr	$ra
    # Line 2462
    sw	$at,5352($a2)
.L0d9c4098:
    # Line 2331
    lw	$a1,1792($a2)
    li	$a3,-257
    and	$a1,$a1,$a3
    sw	$a1,1792($a2)
    # Line 2332
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$v1,11756($a2)
    # Line 2501
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2332
    ori	$v1,$v1,0x2
    # Line 2501
    jr	$ra
    # Line 2332
    sw	$v1,11756($a2)
.L0d9c40c8:
    # Line 2295
    li	$a3,0x8079
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d9c42a0
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2501
    ld	$gp,8($sp)
    # Line 2456
    lw	$t1,5356($a2)
    # Line 2455
    lw	$a7,5344($a2)
    # Line 2501
    addiu	$sp,$sp,32
    # Line 2456
    li	$t2,-17
    # Line 2455
    lui	$t0,0x800
    nor	$t0,$t0,$zero
    # Line 2456
    and	$t1,$t1,$t2
    sw	$t1,5356($a2)
    # Line 2455
    and	$a7,$a7,$t0
    # Line 2501
    jr	$ra
    # Line 2455
    sw	$a7,5344($a2)
.L0d9c4110:
    # Line 2295
    sltiu	$t3,$a0,16389
    bnez	$t3,.L0d9c4304
    li	$a1,16388
    bnez	$a3,.L0d9c3bdc
    # Line 2397
    addiu	$t8,$a0,-16384
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c412c:
    # Line 2295
    li	$a3,0x8074
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d9c4314
    sltu	$t9,$a3,$a0
    bnez	$t9,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2501
    ld	$gp,8($sp)
    # Line 2432
    lw	$v1,5356($a2)
    # Line 2431
    lw	$at,5344($a2)
    # Line 2501
    addiu	$sp,$sp,32
    # Line 2432
    li	$a0,-33
    # Line 2431
    li	$v0,-256
    # Line 2432
    and	$v1,$v1,$a0
    sw	$v1,5356($a2)
    # Line 2431
    and	$at,$at,$v0
    # Line 2501
    jr	$ra
    # Line 2431
    sw	$at,5344($a2)
.L0d9c4170:
    # Line 2295
    li	$a1,0x802e
    bne	$a0,$a1,.L0d9c3a8c
    # Line 2481
    lui	$a6,0x2000
    lw	$a5,1792($a2)
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    sw	$a5,1792($a2)
    # Line 2482
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a4,11756($a2)
    ori	$a4,$a4,0x10
    # Line 2483
    b	.L0d9c37f8
    # Line 2482
    sw	$a4,11756($a2)
.L0d9c41a4:
    # Line 2295
    sltiu	$a7,$a0,3508
    bnez	$a7,.L0d9c4338
    li	$a6,3507
    bnez	$a3,.L0d9c37dc
    # Line 2416
    addiu	$v0,$a0,-3504
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c41c0:
    # Line 2295
    li	$t0,0x8011
    bne	$a0,$t0,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2469
    lui	$t3,0x400
    lw	$t2,1792($a2)
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    sw	$t2,1792($a2)
    # Line 2470
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$t1,11756($a2)
    ori	$t1,$t1,0x10
    # Line 2471
    b	.L0d9c37f8
    # Line 2470
    sw	$t1,11756($a2)
.L0d9c41f8:
    # Line 2295
    beq	$a0,$t8,.L0d9c3ba4
    # Line 2390
    addiu	$a6,$a0,-12288
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c4208:
    # Line 2295
    beq	$a0,$t9,.L0d9c3ba4
    # Line 2390
    addiu	$a6,$a0,-12288
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c4218:
    # Line 2295
    li	$at,3479
    beq	$a0,$at,.L0d9c3a4c
    # Line 2407
    addiu	$t0,$a0,-3472
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c422c:
    # Line 2295
    beq	$a0,$v0,.L0d9c3a4c
    # Line 2407
    addiu	$t0,$a0,-3472
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c423c:
    # Line 2295
    bne	$a0,$v1,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2335
    lw	$a0,1792($a2)
    # Line 2336
    li	$a3,2
    # Line 2335
    li	$a1,-5
    and	$a0,$a0,$a1
    # Line 2336
    b	.L0d9c37f8
    # Line 2335
    sw	$a0,1792($a2)
.L0d9c425c:
    # Line 2295
    li	$a3,0x80d2
    bne	$a0,$a3,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2497
    lw	$a4,1796($a2)
    # Line 2498
    li	$a3,2
    # Line 2497
    li	$a5,-5
    and	$a4,$a4,$a5
    # Line 2498
    b	.L0d9c37f8
    # Line 2497
    sw	$a4,1796($a2)
.L0d9c4280:
    # Line 2295
    bne	$a0,$a6,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2491
    lw	$a7,1796($a2)
    # Line 2492
    li	$a3,2
    # Line 2491
    li	$t0,-2
    and	$a7,$a7,$t0
    # Line 2492
    b	.L0d9c37f8
    # Line 2491
    sw	$a7,1796($a2)
.L0d9c42a0:
    # Line 2295
    li	$t1,0x8078
    bne	$a0,$t1,.L0d9c3a90
    # Line 2500
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2447
    lw	$t3,28212($a2)
    lui	$t8,0xffff
    ori	$t8,$t8,0x7c39
    addu	$t3,$t3,$t8
    # Line 2448
    sllv	$t8,$a4,$t3
    lw	$t2,5348($a2)
    nor	$t8,$t8,$zero
    and	$t2,$t2,$t8
    bnez	$t3,.L0d9c3814
    sw	$t2,5348($a2)
    # Line 2501
    ld	$gp,8($sp)
    # Line 2451
    lw	$v0,5356($a2)
    # Line 2450
    lw	$t9,5344($a2)
    # Line 2501
    addiu	$sp,$sp,32
    # Line 2451
    li	$v1,-5
    # Line 2450
    lui	$at,0x7f0
    nor	$at,$at,$zero
    # Line 2451
    and	$v0,$v0,$v1
    sw	$v0,5356($a2)
    # Line 2450
    and	$t9,$t9,$at
    # Line 2501
    jr	$ra
    # Line 2450
    sw	$t9,5344($a2)
.L0d9c4304:
    # Line 2295
    beq	$a0,$a1,.L0d9c3bdc
    # Line 2397
    addiu	$t8,$a0,-16384
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c4314:
    # Line 2295
    li	$a3,0x806f
    bne	$a0,$a3,.L0d9c3a8c
    # Line 2485
    lui	$a5,0x4000
    lw	$a4,1792($a2)
    # Line 2486
    li	$a3,2
    # Line 2485
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    # Line 2486
    b	.L0d9c37f8
    # Line 2485
    sw	$a4,1792($a2)
.L0d9c4338:
    # Line 2295
    beq	$a0,$a6,.L0d9c37dc
    # Line 2416
    addiu	$v0,$a0,-3504
    b	.L0d9c3a8c
    sd	$ra,16($sp)
.L0d9c4348:
    sd	$a2,0($sp)
    # Line 2304
    ld	$t0,0($sp)
    lw	$t9,11792($t0)
    # Line 2303
    lw	$a7,1792($t0)
    sd	$ra,16($sp)
    li	$t1,-129
    # Line 2304
    move	$a0,$t0
    # Line 2303
    and	$a7,$a7,$t1
    # Line 2304
    jal	__glSetError
    # Line 2303
    sw	$a7,1792($t0)
    b	.L0d9c3814
    ld	$ra,16($sp)
.L0d9c4378:
    sd	$a2,0($sp)
    # Line 2354
    ld	$t3,0($sp)
    # Line 2356
    # lw $t9, -23436($gp) # &__glReadjustZCounts
    # Line 2354
    lw	$t2,1792($t3)
    sd	$ra,16($sp)
    li	$t8,-16385
    # Line 2356
    move	$a0,$t3
    # Line 2354
    and	$t2,$t2,$t8
    # Line 2356
    jal	__glReadjustZCounts
    # Line 2354
    sw	$t2,1792($t3)
    # Line 2358
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11916($t9)
    jalr	$t9
    nop
    # Line 2359
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11908($t9)
    jalr	$t9
    nop
    ld	$ra,16($sp)
    ld	$a2,0($sp)
    # Line 2360
    b	.L0d9c37f8
    li	$a3,2
.L0d9c43d8:
    # Line 2501
    ld	$gp,8($sp)
    # Line 2436
    lw	$v1,5356($a2)
    # Line 2435
    lw	$at,5344($a2)
    # Line 2501
    addiu	$sp,$sp,32
    # Line 2436
    li	$a0,-2
    # Line 2435
    li	$v0,-3841
    # Line 2436
    and	$v1,$v1,$a0
    sw	$v1,5356($a2)
    # Line 2435
    and	$at,$at,$v0
    # Line 2501
    jr	$ra
    # Line 2435
    sw	$at,5344($a2)
.L0d9c4404:
    # Line 2459
    lw	$a1,5352($a2)
    # Line 2501
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    # Line 2459
    li	$a3,-2
    and	$a1,$a1,$a3
    # Line 2501
    jr	$ra
    # Line 2459
    sw	$a1,5352($a2)
.end __glim_Disable

# Function: __glim_IsEnabled
# Declared: Line 2506 (Source lines: 2507-2698)
# Address: 0x0d9c4420 - 0x0d9c4cec (Size: 2252 bytes, Frame: 16)
.globl __glim_IsEnabled
.ent __glim_IsEnabled
__glim_IsEnabled:
    # Line 2509
    lw	$v0,4120($zero)
    li	$a4,1
    # Line 2507
    lui	$at,0x9
    # Line 2509
    lw	$a2,4112($zero)
    # Line 2507
    addiu	$sp,$sp,-16
    addiu	$at,$at,-13972
    sd	$gp,0($sp)
    # Line 2509
    beq	$v0,$a4,.L0d9c47a4
    # Line 2507
    addu	$gp,$t9,$at
    # Line 2511
    sltiu	$v0,$a0,3512
    bnez	$v0,.L0d9c4484
    sltiu	$a5,$a0,3170
    sltiu	$v1,$a0,3513
    bnez	$v1,.L0d9c44bc
    li	$a3,0x8012
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0d9c44fc
    sltiu	$a5,$a0,16384
    sltu	$a4,$a3,$a0
    bnez	$a4,.L0d9c45b4
    li	$a3,0x8079
    # Line 2659
    lw	$a3,1792($a2)
    lui	$a4,0x800
    # Line 2660
    b	.L0d9c44cc
    # Line 2659
    and	$a3,$a3,$a4
.L0d9c4484:
    # Line 2511
    bnez	$a5,.L0d9c44dc
    sltiu	$a6,$a0,2960
    sltiu	$a6,$a0,3171
    beqz	$a6,.L0d9c454c
    sltiu	$a5,$a0,3479
    # Line 2582
    lw	$a3,1792($a2)
    lui	$a4,0x10
    # Line 2583
    b	.L0d9c44cc
    # Line 2582
    and	$a3,$a3,$a4
.L0d9c44a8:
    # Line 2511
    sltiu	$a5,$a0,3504
    bnez	$a5,.L0d9c4bb8
    li	$a6,3480
    beqz	$a3,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c44bc:
    # Line 2617
    lw	$a3,1812($a2)
    addiu	$a5,$a0,-3504
    sllv	$a5,$a4,$a5
    and	$a3,$a3,$a5
.L0d9c44cc:
    # Line 2698
    sltu	$v0,$zero,$a3
    # Line 2696
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c44dc:
    # Line 2511
    bnez	$a6,.L0d9c4598
    sltiu	$t3,$a0,2884
    sltiu	$a7,$a0,2961
    beqz	$a7,.L0d9c4670
    sltiu	$a6,$a0,3057
    # Line 2564
    lw	$a3,1792($a2)
    # Line 2565
    b	.L0d9c44cc
    # Line 2564
    andi	$a3,$a3,0x8000
.L0d9c44fc:
    # Line 2511
    bnez	$a5,.L0d9c45d8
    sltiu	$a3,$a0,12289
    sltiu	$a6,$a0,16385
    bnez	$a6,.L0d9c46c4
    sltiu	$a7,$a0,16389
    bnez	$a7,.L0d9c4810
    sltiu	$a3,$a0,16387
    sltiu	$t0,$a0,16390
    bnez	$t0,.L0d9c46c4
    li	$a3,0x8010
    sltu	$t1,$a0,$a3
    bnez	$t1,.L0d9c4b60
    sltiu	$a5,$a0,16391
    sltu	$t2,$a3,$a0
    bnez	$t2,.L0d9c4c88
    li	$a4,0x8011
    # Line 2653
    lw	$a3,1792($a2)
    lui	$a4,0x200
    # Line 2654
    b	.L0d9c44cc
    # Line 2653
    and	$a3,$a3,$a4
.L0d9c454c:
    # Line 2511
    bnez	$a5,.L0d9c4608
    sltiu	$t0,$a0,3474
    sltiu	$a6,$a0,3480
    bnez	$a6,.L0d9c465c
    sltiu	$a7,$a0,3507
    bnez	$a7,.L0d9c4850
    sltiu	$a3,$a0,3505
    sltiu	$t0,$a0,3508
    bnez	$t0,.L0d9c44bc
    sltiu	$a3,$a0,3510
    bnez	$a3,.L0d9c4ba0
    sltiu	$a5,$a0,3509
    sltiu	$t1,$a0,3511
    bnez	$t1,.L0d9c44bc
    li	$t2,3511
    beq	$a0,$t2,.L0d9c44bc
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4598:
    bnez	$t3,.L0d9c4690
    sltiu	$t8,$a0,2885
    beqz	$t8,.L0d9c473c
    sltiu	$a4,$a0,2912
    # Line 2522
    lw	$a3,1792($a2)
    # Line 2523
    b	.L0d9c44cc
    # Line 2522
    andi	$a3,$a3,0x1000
.L0d9c45b4:
    # Line 2511
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9c46d8
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c47c8
    li	$a3,0x80d2
    # Line 2644
    lw	$a3,5344($a2)
    lui	$a4,0x800
    # Line 2645
    b	.L0d9c44cc
    # Line 2644
    and	$a3,$a3,$a4
.L0d9c45d8:
    # Line 2511
    bnez	$a3,.L0d9c46fc
    sltiu	$a5,$a0,12290
    bnez	$a5,.L0d9c4790
    sltiu	$a3,$a0,12292
    bnez	$a3,.L0d9c49c4
    sltiu	$a6,$a0,12293
    bnez	$a6,.L0d9c4790
    li	$a7,12293
    beq	$a0,$a7,.L0d9c4790
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4608:
    bnez	$t0,.L0d9c463c
    sltiu	$t1,$a0,3475
    bnez	$t1,.L0d9c465c
    sltiu	$a3,$a0,3477
    bnez	$a3,.L0d9c49fc
    sltiu	$a5,$a0,3476
    sltiu	$t2,$a0,3478
    bnez	$t2,.L0d9c465c
    li	$t3,3478
    beq	$a0,$t3,.L0d9c465c
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c463c:
    sltiu	$t8,$a0,3472
    bnez	$t8,.L0d9c4898
    sltiu	$t0,$a0,3456
    sltiu	$t9,$a0,3473
    bnez	$t9,.L0d9c465c
    li	$at,3473
    bne	$a0,$at,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c465c:
    # Line 2608
    lw	$a3,1808($a2)
    addiu	$a5,$a0,-3472
    sllv	$a5,$a4,$a5
    # Line 2609
    b	.L0d9c44cc
    # Line 2608
    and	$a3,$a3,$a5
.L0d9c4670:
    # Line 2511
    bnez	$a6,.L0d9c4720
    sltiu	$a4,$a0,3024
    sltiu	$a7,$a0,3058
    beqz	$a7,.L0d9c48bc
    sltiu	$a5,$a0,3168
    # Line 2543
    lw	$a3,1792($a2)
    # Line 2544
    b	.L0d9c44cc
    # Line 2543
    andi	$a3,$a3,0x4
.L0d9c4690:
    # Line 2511
    sltiu	$a4,$a0,2852
    bnez	$a4,.L0d9c475c
    sltiu	$a5,$a0,2853
    beqz	$a5,.L0d9c491c
    sltiu	$a4,$a0,2882
    # Line 2540
    lw	$a3,1792($a2)
    # Line 2541
    b	.L0d9c44cc
    # Line 2540
    andi	$a3,$a3,0x100
.L0d9c46b0:
    # Line 2511
    sltiu	$a5,$a0,16386
    bnez	$a5,.L0d9c4870
    li	$a7,16385
    beqz	$a3,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c46c4:
    # Line 2599
    lw	$a3,1800($a2)
    addiu	$a5,$a0,-16384
    sllv	$a5,$a4,$a5
    # Line 2600
    b	.L0d9c44cc
    # Line 2599
    and	$a3,$a3,$a5
.L0d9c46d8:
    # Line 2511
    li	$a3,0x8074
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d9c47e8
    sltu	$a7,$a3,$a0
    bnez	$a7,.L0d9c4974
    li	$a3,0x8077
    # Line 2629
    lw	$a3,5344($a2)
    # Line 2630
    b	.L0d9c44cc
    # Line 2629
    andi	$a3,$a3,0xff
.L0d9c46fc:
    # Line 2511
    sltiu	$a5,$a0,10753
    bnez	$a5,.L0d9c4830
    sltiu	$a7,$a0,3553
    sltiu	$a6,$a0,10754
    beqz	$a6,.L0d9c4780
    sltiu	$a5,$a0,12288
    # Line 2623
    lw	$a3,1796($a2)
    # Line 2624
    b	.L0d9c44cc
    # Line 2623
    andi	$a3,$a3,0x200
.L0d9c4720:
    # Line 2511
    bnez	$a4,.L0d9c48e0
    sltiu	$a5,$a0,3025
    beqz	$a5,.L0d9c4a4c
    li	$a4,3042
    # Line 2528
    lw	$a3,1792($a2)
    # Line 2529
    b	.L0d9c44cc
    # Line 2528
    andi	$a3,$a3,0x8
.L0d9c473c:
    # Line 2511
    bnez	$a4,.L0d9c4900
    sltiu	$a4,$a0,2903
    sltiu	$a5,$a0,2913
    beqz	$a5,.L0d9c4a7c
    li	$a5,2929
    # Line 2531
    lw	$a3,1792($a2)
    # Line 2532
    b	.L0d9c44cc
    # Line 2531
    andi	$a3,$a3,0x20
.L0d9c475c:
    # Line 2511
    sltiu	$a4,$a0,2848
    bnez	$a4,.L0d9c493c
    li	$a4,2832
    sltiu	$a5,$a0,2849
    beqz	$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2537
    lw	$a3,1792($a2)
    # Line 2538
    b	.L0d9c44cc
    # Line 2537
    andi	$a3,$a3,0x200
.L0d9c4780:
    # Line 2511
    bnez	$a5,.L0d9c4b8c
    li	$t0,10754
    beqz	$a3,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c4790:
    # Line 2592
    lw	$a3,1804($a2)
    addiu	$a5,$a0,-12288
    sllv	$a5,$a4,$a5
    # Line 2593
    b	.L0d9c44cc
    # Line 2592
    and	$a3,$a3,$a5
.L0d9c47a4:
    # Line 2509
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 2696
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c47c8:
    # Line 2511
    sltu	$a6,$a0,$a3
    bnez	$a6,.L0d9c4950
    sltu	$a7,$a3,$a0
    bnez	$a7,.L0d9c4abc
    li	$a3,0x843a
    # Line 2681
    lw	$a3,1796($a2)
    # Line 2683
    b	.L0d9c44cc
    # Line 2681
    andi	$a3,$a3,0x4
.L0d9c47e8:
    # Line 2511
    li	$a3,0x8037
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9c4998
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c4b30
    li	$a5,0x806f
    # Line 2620
    lw	$a3,1792($a2)
    lui	$a4,0x100
    # Line 2621
    b	.L0d9c44cc
    # Line 2620
    and	$a3,$a3,$a4
.L0d9c4810:
    # Line 2511
    bnez	$a3,.L0d9c46b0
    sltiu	$a5,$a0,16388
    bnez	$a5,.L0d9c46c4
    li	$a6,16388
    beq	$a0,$a6,.L0d9c46c4
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4830:
    bnez	$a7,.L0d9c49e0
    sltiu	$t0,$a0,3554
    beqz	$t0,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2570
    lw	$a3,1792($a2)
    lui	$a4,0x2
    # Line 2571
    b	.L0d9c44cc
    # Line 2570
    and	$a3,$a3,$a4
.L0d9c4850:
    # Line 2511
    bnez	$a3,.L0d9c44a8
    sltiu	$a5,$a0,3506
    bnez	$a5,.L0d9c44bc
    li	$a6,3506
    beq	$a0,$a6,.L0d9c44bc
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4870:
    beq	$a0,$a7,.L0d9c46c4
.L0d9c4874:
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9c4878:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 2696
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c4898:
    # Line 2511
    bnez	$t0,.L0d9c4a14
    li	$a6,3171
    sltiu	$t1,$a0,3457
    beqz	$t1,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2573
    lw	$a3,1792($a2)
    lui	$a4,0x80
    # Line 2574
    b	.L0d9c44cc
    # Line 2573
    and	$a3,$a3,$a4
.L0d9c48bc:
    # Line 2511
    bnez	$a5,.L0d9c4a2c
    sltiu	$a5,$a0,3089
    sltiu	$a6,$a0,3169
    beqz	$a6,.L0d9c4bd8
    li	$t0,3169
    # Line 2576
    lw	$a3,1792($a2)
    lui	$a4,0x4
    # Line 2577
    b	.L0d9c44cc
    # Line 2576
    and	$a3,$a3,$a4
.L0d9c48e0:
    # Line 2511
    sltiu	$a5,$a0,3008
    bnez	$a5,.L0d9c4a60
    sltiu	$a6,$a0,3009
    beqz	$a6,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2513
    lw	$a3,1792($a2)
    # Line 2514
    b	.L0d9c44cc
    # Line 2513
    andi	$a3,$a3,0x1
.L0d9c4900:
    # Line 2511
    bnez	$a4,.L0d9c4a90
    sltiu	$a5,$a0,2904
    beqz	$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2519
    lw	$a3,1792($a2)
    # Line 2520
    b	.L0d9c44cc
    # Line 2519
    andi	$a3,$a3,0x80
.L0d9c491c:
    # Line 2511
    bnez	$a4,.L0d9c4aa8
    li	$a4,2881
    sltiu	$a5,$a0,2883
    beqz	$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2558
    lw	$a3,1792($a2)
    # Line 2559
    b	.L0d9c44cc
    # Line 2558
    andi	$a3,$a3,0x2000
.L0d9c493c:
    # Line 2511
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2552
    lw	$a3,1792($a2)
    b	.L0d9c44cc
    andi	$a3,$a3,0x400
.L0d9c4950:
    # Line 2511
    li	$a3,0x80d0
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9c4adc
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c4c2c
    li	$a4,0x80d1
    # Line 2674
    lw	$a3,1796($a2)
    # Line 2675
    b	.L0d9c44cc
    # Line 2674
    andi	$a3,$a3,0x1
.L0d9c4974:
    # Line 2511
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9c4b04
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c4c58
    li	$a4,0x8078
    # Line 2638
    lw	$a3,5344($a2)
    lui	$a4,0xf000
    # Line 2639
    b	.L0d9c44cc
    # Line 2638
    and	$a3,$a3,$a4
.L0d9c4998:
    # Line 2511
    li	$a3,0x802e
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d9c4b48
    li	$a5,0x8024
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2665
    lw	$a3,1792($a2)
    lui	$a4,0x2000
    # Line 2666
    b	.L0d9c44cc
    # Line 2665
    and	$a3,$a3,$a4
.L0d9c49c4:
    # Line 2511
    sltiu	$a5,$a0,12291
    bnez	$a5,.L0d9c4b7c
    li	$a7,12290
    bnez	$a3,.L0d9c4790
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c49e0:
    li	$a6,3552
    bne	$a0,$a6,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2567
    lw	$a3,1792($a2)
    lui	$a4,0x1
    # Line 2568
    b	.L0d9c44cc
    # Line 2567
    and	$a3,$a3,$a4
.L0d9c49fc:
    # Line 2511
    bnez	$a5,.L0d9c4bc8
    li	$a7,3475
    bnez	$a3,.L0d9c465c
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4a14:
    bne	$a0,$a6,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2585
    lw	$a3,1792($a2)
    lui	$a4,0x20
    # Line 2586
    b	.L0d9c44cc
    # Line 2585
    and	$a3,$a3,$a4
.L0d9c4a2c:
    # Line 2511
    bnez	$a5,.L0d9c4bf0
    li	$a5,3058
    sltiu	$a6,$a0,3090
    beqz	$a6,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2561
    lw	$a3,1792($a2)
    # Line 2562
    b	.L0d9c44cc
    # Line 2561
    andi	$a3,$a3,0x4000
.L0d9c4a4c:
    # Line 2511
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2516
    lw	$a3,1792($a2)
    # Line 2517
    b	.L0d9c44cc
    # Line 2516
    andi	$a3,$a3,0x2
.L0d9c4a60:
    # Line 2511
    li	$a4,2977
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2549
    lw	$a3,1792($a2)
    lui	$a4,0x40
    # Line 2550
    b	.L0d9c44cc
    # Line 2549
    and	$a3,$a3,$a4
.L0d9c4a7c:
    # Line 2511
    bne	$a0,$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2525
    lw	$a3,1792($a2)
    # Line 2526
    b	.L0d9c44cc
    # Line 2525
    andi	$a3,$a3,0x10
.L0d9c4a90:
    # Line 2511
    li	$a4,2896
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2534
    lw	$a3,1792($a2)
    # Line 2535
    b	.L0d9c44cc
    # Line 2534
    andi	$a3,$a3,0x40
.L0d9c4aa8:
    # Line 2511
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2555
    lw	$a3,1792($a2)
    # Line 2556
    b	.L0d9c44cc
    # Line 2555
    andi	$a3,$a3,0x800
.L0d9c4abc:
    # Line 2511
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9c4c04
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c4cc0
    li	$a7,0x8568
    # Line 2650
    lw	$a3,5352($a2)
    # Line 2651
    b	.L0d9c44cc
    # Line 2650
    andi	$a3,$a3,0x2
.L0d9c4adc:
    # Line 2511
    li	$a3,0x80bc
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9c4c40
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2671
    lw	$a3,1792($a2)
    lui	$a4,0x8000
    # Line 2672
    b	.L0d9c44cc
    # Line 2671
    and	$a3,$a3,$a4
.L0d9c4b04:
    # Line 2511
    li	$a3,0x8076
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d9c4c70
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2635
    lw	$a3,5344($a2)
    lui	$a4,0xf
    ori	$a4,$a4,0xf000
    # Line 2636
    b	.L0d9c44cc
    # Line 2635
    and	$a3,$a3,$a4
.L0d9c4b30:
    # Line 2511
    bne	$a0,$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2668
    lw	$a3,1792($a2)
    lui	$a4,0x4000
    # Line 2669
    b	.L0d9c44cc
    # Line 2668
    and	$a3,$a3,$a4
.L0d9c4b48:
    # Line 2511
    bne	$a0,$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2662
    lw	$a3,1792($a2)
    lui	$a4,0x1000
    # Line 2663
    b	.L0d9c44cc
    # Line 2662
    and	$a3,$a3,$a4
.L0d9c4b60:
    # Line 2511
    bnez	$a5,.L0d9c4ca0
    li	$a5,16390
    sltiu	$a6,$a0,16392
    bnez	$a6,.L0d9c46c4
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4b7c:
    beq	$a0,$a7,.L0d9c4790
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4b8c:
    bne	$a0,$t0,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2626
    lw	$a3,1796($a2)
    # Line 2627
    b	.L0d9c44cc
    # Line 2626
    andi	$a3,$a3,0x400
.L0d9c4ba0:
    # Line 2511
    bnez	$a5,.L0d9c4cb0
    li	$a6,3508
    bnez	$a3,.L0d9c44bc
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4bb8:
    beq	$a0,$a6,.L0d9c465c
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4bc8:
    beq	$a0,$a7,.L0d9c465c
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4bd8:
    bne	$a0,$t0,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2579
    lw	$a3,1792($a2)
    lui	$a4,0x8
    # Line 2580
    b	.L0d9c44cc
    # Line 2579
    and	$a3,$a3,$a4
.L0d9c4bf0:
    # Line 2511
    bne	$a0,$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2546
    lw	$a3,1796($a2)
    # Line 2547
    b	.L0d9c44cc
    # Line 2546
    andi	$a3,$a3,0x800
.L0d9c4c04:
    # Line 2511
    li	$a3,0x8439
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d9c4cd8
    li	$a5,0x8139
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2647
    lw	$a3,5352($a2)
    # Line 2648
    b	.L0d9c44cc
    # Line 2647
    andi	$a3,$a3,0x1
.L0d9c4c2c:
    # Line 2511
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2677
    lw	$a3,1796($a2)
    # Line 2679
    b	.L0d9c44cc
    # Line 2677
    andi	$a3,$a3,0x2
.L0d9c4c40:
    # Line 2511
    li	$a4,0x8094
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2688
    lw	$a3,1796($a2)
    # Line 2689
    b	.L0d9c44cc
    # Line 2688
    andi	$a3,$a3,0x20
.L0d9c4c58:
    # Line 2511
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2641
    lw	$a3,5344($a2)
    lui	$a4,0x7f0
    # Line 2642
    b	.L0d9c44cc
    # Line 2641
    and	$a3,$a3,$a4
.L0d9c4c70:
    # Line 2511
    li	$a5,0x8075
    bne	$a0,$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2632
    lw	$a3,5344($a2)
    # Line 2633
    b	.L0d9c44cc
    # Line 2632
    andi	$a3,$a3,0xf00
.L0d9c4c88:
    # Line 2511
    bne	$a0,$a4,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2656
    lw	$a3,1792($a2)
    lui	$a4,0x400
    # Line 2657
    b	.L0d9c44cc
    # Line 2656
    and	$a3,$a3,$a4
.L0d9c4ca0:
    # Line 2511
    beq	$a0,$a5,.L0d9c46c4
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4cb0:
    beq	$a0,$a6,.L0d9c44bc
    nop
    b	.L0d9c4874
    sd	$ra,8($sp)
.L0d9c4cc0:
    bne	$a0,$a7,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2691
    lw	$a3,1796($a2)
    lui	$a4,0x2
    # Line 2692
    b	.L0d9c44cc
    # Line 2691
    and	$a3,$a3,$a4
.L0d9c4cd8:
    # Line 2511
    bne	$a0,$a5,.L0d9c4878
    # Line 2695
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2685
    lw	$a3,1796($a2)
    # Line 2686
    b	.L0d9c44cc
    # Line 2685
    andi	$a3,$a3,0x4000
.end __glim_IsEnabled

# Function: __glim_BlendColorEXT
# Declared: Line 2705 (Source lines: 2706-2726)
# Address: 0x0d9c4cf0 - 0x0d9c4da8 (Size: 184 bytes, Frame: 16)
.globl __glim_BlendColorEXT
.ent __glim_BlendColorEXT
__glim_BlendColorEXT:
    # Line 2709
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 2706
    lui	$at,0x9
    # Line 2709
    lw	$a1,4112($zero)
    # Line 2706
    addiu	$sp,$sp,-16
    addiu	$at,$at,-16228
    sd	$gp,0($sp)
    # Line 2709
    beq	$v0,$v1,.L0d9c4d90
    # Line 2706
    addu	$gp,$t9,$at
    # Line 2714
    mtc1	$zero,$f4
    # Line 2718
    c.lt.s $f14,$f4
    # Line 2716
    c.lt.s $f13,$f4
    # Line 2714
    c.lt.s $f12,$f4
    # Line 2718
    movt.s	$f14,$f4,$fcc7
    # Line 2720
    c.lt.s $f15,$f4
    # Line 2716
    movt.s	$f13,$f4,$fcc6
    # Line 2712
    lwc1	$f3,3544($a1)
    # Line 2714
    movt.s	$f12,$f4,$fcc5
    # Line 2720
    movf.s	$f4,$f15,$fcc4
    # Line 2714
    mov.s	$f0,$f12
    # Line 2718
    mov.s	$f2,$f14
    c.lt.s $f3,$f14
    # Line 2716
    mov.s	$f1,$f13
    c.lt.s $f3,$f13
    # Line 2714
    c.lt.s $f3,$f12
    # Line 2718
    movt.s	$f2,$f3,$fcc3
    # Line 2720
    c.lt.s	$f3,$f4
    # Line 2716
    movt.s	$f1,$f3,$fcc2
    # Line 2714
    movt.s	$f0,$f3,$fcc1
    # Line 2726
    ld	$gp,0($sp)
    # Line 2720
    movf.s	$f3,$f4,$fcc0
    # Line 2725
    swc1	$f3,1852($a1)
    # Line 2724
    swc1	$f2,1848($a1)
    # Line 2723
    swc1	$f1,1844($a1)
    # Line 2726
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2722
    swc1	$f0,1840($a1)
.L0d9c4d84:
    # Line 2726
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c4d90:
    # Line 2709
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c4d84
    ld	$ra,8($sp)
.end __glim_BlendColorEXT

# Function: __glim_PolygonOffsetEXT
# Declared: Line 2728 (Source lines: 2729-2735)
# Address: 0x0d9c4db0 - 0x0d9c4e20 (Size: 112 bytes, Frame: 16)
.globl __glim_PolygonOffsetEXT
.ent __glim_PolygonOffsetEXT
__glim_PolygonOffsetEXT:
    # Line 2730
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 2729
    lui	$at,0x9
    # Line 2730
    lw	$a1,4112($zero)
    # Line 2729
    addiu	$sp,$sp,-16
    addiu	$at,$at,-16420
    sd	$gp,0($sp)
    # Line 2730
    beq	$v0,$v1,.L0d9c4e08
    # Line 2729
    addu	$gp,$t9,$at
    # Line 2733
    swc1	$f13,504($a1)
    # Line 2732
    swc1	$f12,500($a1)
    # Line 2734
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a1)
    # Line 2735
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 2734
    ori	$v0,$v0,0x4
    # Line 2735
    jr	$ra
    # Line 2734
    sw	$v0,11756($a1)
.L0d9c4dfc:
    # Line 2735
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c4e08:
    # Line 2730
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c4dfc
    ld	$ra,8($sp)
.end __glim_PolygonOffsetEXT

# Function: __glim_PolygonOffset
# Declared: Line 2737 (Source lines: 2738-2745)
# Address: 0x0d9c4e20 - 0x0d9c4e98 (Size: 120 bytes, Frame: 16)
.globl __glim_PolygonOffset
.ent __glim_PolygonOffset
__glim_PolygonOffset:
    # Line 2739
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 2738
    lui	$at,0x9
    # Line 2739
    lw	$a1,4112($zero)
    # Line 2738
    addiu	$sp,$sp,-16
    addiu	$at,$at,-16532
    sd	$gp,0($sp)
    # Line 2739
    beq	$v0,$v1,.L0d9c4e80
    # Line 2738
    addu	$gp,$t9,$at
    # Line 2742
    lwc1	$f0,508($a1)
    # Line 2741
    swc1	$f12,500($a1)
    # Line 2742
    mul.s	$f0,$f0,$f13
    swc1	$f0,504($a1)
    # Line 2744
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a1)
    # Line 2745
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 2744
    ori	$v0,$v0,0x4
    # Line 2745
    jr	$ra
    # Line 2744
    sw	$v0,11756($a1)
.L0d9c4e74:
    # Line 2745
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c4e80:
    # Line 2739
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c4e74
    ld	$ra,8($sp)
.end __glim_PolygonOffset

# Function: __glFreeAttributeState
# Declared: Line 2751 (Source lines: 2752-2790)
# Address: 0x0d9c4ea0 - 0x0d9c5004 (Size: 356 bytes, Frame: 32)
.globl __glFreeAttributeState
.ent __glFreeAttributeState
__glFreeAttributeState:
    # Line 2752
    lw	$at,12676($a0)
    addiu	$sp,$sp,-32
    lw	$a3,12672($a0)
    sd	$s1,24($sp)
    sd	$s0,8($sp)
    lui	$v0,0x9
    sltu	$at,$a3,$at
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-16660
    sd	$gp,0($sp)
    beqz	$at,.L0d9c4ef4
    addu	$gp,$t9,$v0
    # Line 2761
    # lw $t9, -26980($gp) # &__glim_PopAttrib
.L0d9c4ed8:
    bal __glim_PopAttrib
    nop
    lw	$v0,12676($s0)
    lw	$a3,12672($s0)
    sltu	$v0,$a3,$v0
    bnez	$v0,.L0d9c4ed8
    nop	# was lw $t9, -26980($gp) # &__glim_PopAttrib
.L0d9c4ef4:
    # Line 2764
    lw	$v1,3776($s0)
    sll	$v1,$v1,0x2
    addu	$v1,$a3,$v1
    sltu	$v1,$a3,$v1
    beqz	$v1,.L0d9c4f44
    move	$s1,$a3
.L0d9c4f0c:
    # Line 2767
    lw	$a1,0($s1)
    beqz	$a1,.L0d9c4f44
    nop
    # Line 2768
    lw	$t9,12($s0)
    jal	__glim_PopAttrib
    move	$a0,$s0
    # Line 2766
    lw	$a0,3776($s0)
    lw	$a3,12672($s0)
    sll	$a0,$a0,0x2
    addiu	$s1,$s1,4
    addu	$a0,$a3,$a0
    sltu	$a0,$s1,$a0
    bnez	$a0,.L0d9c4f0c
    nop
.L0d9c4f44:
    # Line 2772
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a3
    # Line 2773
    lw	$a1,12684($s0)
    lw	$a3,12680($s0)
    sltu	$a1,$a3,$a1
    beqz	$a1,.L0d9c4f88
    sw	$zero,12672($s0)
    # Line 2777
    # lw $t9, -26936($gp) # &__glim_PopClientAttrib
.L0d9c4f6c:
    bal __glim_PopClientAttrib
    nop
    lw	$a2,12684($s0)
    lw	$a3,12680($s0)
    sltu	$a2,$a3,$a2
    bnez	$a2,.L0d9c4f6c
    nop	# was lw $t9, -26936($gp) # &__glim_PopClientAttrib
.L0d9c4f88:
    # Line 2780
    lw	$a4,3780($s0)
    sll	$a4,$a4,0x2
    addu	$a4,$a3,$a4
    sltu	$a4,$a3,$a4
    beqz	$a4,.L0d9c4fd8
    move	$s1,$a3
.L0d9c4fa0:
    # Line 2783
    lw	$a1,0($s1)
    beqz	$a1,.L0d9c4fd8
    nop
    # Line 2784
    lw	$t9,12($s0)
    jal	__glim_PopClientAttrib
    move	$a0,$s0
    # Line 2782
    lw	$a5,3780($s0)
    lw	$a3,12680($s0)
    sll	$a5,$a5,0x2
    addiu	$s1,$s1,4
    addu	$a5,$a3,$a5
    sltu	$a5,$s1,$a5
    bnez	$a5,.L0d9c4fa0
    nop
.L0d9c4fd8:
    # Line 2788
    lw	$t9,12($s0)
    move	$a0,$s0
    ld	$s1,24($sp)
    jalr	$t9
    move	$a1,$a3
    ld	$ra,16($sp)
    # Line 2790
    ld	$gp,0($sp)
    # Line 2789
    sw	$zero,12680($s0)
    # Line 2790
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFreeAttributeState

# Function: __glim_EnableClientState
# Declared: Line 2793 (Source lines: 2793-2834)
# Address: 0x0d9c5010 - 0x0d9c5224 (Size: 532 bytes, Frame: 16)
.globl __glim_EnableClientState
.ent __glim_EnableClientState
__glim_EnableClientState:
    # Line 2797
    li	$t1,0x8079
    # Line 2793
    addiu	$sp,$sp,-16
    # Line 2795
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$a4,1
    # Line 2793
    lui	$v0,0x9
    # Line 2815
    lui	$a6,0xffff
    sd	$ra,8($sp)
    # Line 2793
    addiu	$v0,$v0,-17028
    sd	$gp,0($sp)
    # Line 2795
    beq	$at,$a4,.L0d9c5210
    # Line 2793
    addu	$gp,$t9,$v0
    # Line 2797
    li	$a3,0x8078
    sltu	$v1,$a0,$a3
    sltu	$a1,$a3,$a0
    bnez	$v1,.L0d9c5098
    li	$a3,0x8439
    bnez	$a1,.L0d9c5104
    # Line 2815
    ori	$a6,$a6,0x7c39
    lw	$a5,28212($a2)
    # Line 2816
    lw	$a3,5348($a2)
    # Line 2815
    addu	$a5,$a5,$a6
    # Line 2816
    sllv	$a6,$a4,$a5
    or	$a3,$a3,$a6
    bnez	$a5,.L0d9c50f4
    sw	$a3,5348($a2)
    # Line 2819
    lw	$t1,5356($a2)
    # Line 2818
    lw	$a7,5344($a2)
    lui	$t0,0x7f0
    # Line 2819
    ori	$t1,$t1,0x4
    sw	$t1,5356($a2)
    # Line 2818
    or	$a7,$a7,$t0
    b	.L0d9c50f4
    sw	$a7,5344($a2)
.L0d9c5098:
    # Line 2797
    li	$t9,0x8074
    li	$a3,0x8076
    sltu	$t2,$a0,$a3
    # Line 2811
    lui	$at,0xf000
    # Line 2797
    li	$t8,0x8077
    bnez	$t2,.L0d9c513c
    sltu	$t3,$a3,$a0
    beqz	$t3,.L0d9c51d0
    nop
    bne	$a0,$t8,.L0d9c50e8
    move	$ra,$ra
    # Line 2834
    ld	$gp,0($sp)
    # Line 2812
    lw	$v0,5356($a2)
    # Line 2811
    lw	$t9,5344($a2)
    # Line 2834
    addiu	$sp,$sp,16
    # Line 2812
    ori	$v0,$v0,0x8
    sw	$v0,5356($a2)
    # Line 2811
    or	$t9,$t9,$at
    # Line 2834
    jr	$ra
    # Line 2811
    sw	$t9,5344($a2)
.L0d9c50e8:
    # Line 2833
    # lw $t9, -26452($gp) # &__glSetError
.L0d9c50ec:
    jal	__glSetError
    li	$a0,1280
.L0d9c50f4:
    ld	$ra,8($sp)
.L0d9c50f8:
    # Line 2834
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c5104:
    move	$ra,$ra
    # Line 2797
    sltu	$v1,$a0,$a3
    # Line 2823
    lui	$t3,0x800
    # Line 2797
    sltu	$a1,$a3,$a0
    bnez	$v1,.L0d9c5178
    li	$a3,0x843a
    beqz	$a1,.L0d9c5200
    nop
    bne	$a0,$a3,.L0d9c50ec
    # Line 2833
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2830
    lw	$a4,5352($a2)
    ori	$a4,$a4,0x2
    b	.L0d9c50f4
    sw	$a4,5352($a2)
.L0d9c513c:
    # Line 2797
    li	$a3,0x8075
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d9c51a4
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d9c50e8
    move	$ra,$ra
    # Line 2834
    ld	$gp,0($sp)
    # Line 2804
    lw	$t0,5356($a2)
    # Line 2803
    lw	$a7,5344($a2)
    # Line 2834
    addiu	$sp,$sp,16
    # Line 2804
    ori	$t0,$t0,0x1
    sw	$t0,5356($a2)
    # Line 2803
    ori	$a7,$a7,0xf00
    # Line 2834
    jr	$ra
    # Line 2803
    sw	$a7,5344($a2)
.L0d9c5178:
    # Line 2797
    bne	$a0,$t1,.L0d9c50ec
    # Line 2833
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2834
    ld	$gp,0($sp)
    # Line 2824
    lw	$t8,5356($a2)
    # Line 2823
    lw	$t2,5344($a2)
    # Line 2834
    addiu	$sp,$sp,16
    # Line 2824
    ori	$t8,$t8,0x10
    sw	$t8,5356($a2)
    # Line 2823
    or	$t2,$t2,$t3
    # Line 2834
    jr	$ra
    # Line 2823
    sw	$t2,5344($a2)
.L0d9c51a4:
    # Line 2797
    bne	$a0,$t9,.L0d9c50e8
    move	$ra,$ra
    # Line 2834
    ld	$gp,0($sp)
    # Line 2800
    lw	$v0,5356($a2)
    # Line 2799
    lw	$at,5344($a2)
    # Line 2834
    addiu	$sp,$sp,16
    # Line 2800
    ori	$v0,$v0,0x20
    sw	$v0,5356($a2)
    # Line 2799
    ori	$at,$at,0xff
    # Line 2834
    jr	$ra
    # Line 2799
    sw	$at,5344($a2)
.L0d9c51d0:
    # Line 2834
    ld	$gp,0($sp)
    # Line 2808
    lw	$a1,5356($a2)
    # Line 2807
    lw	$v1,5344($a2)
    # Line 2834
    addiu	$sp,$sp,16
    move	$ra,$ra
    # Line 2807
    lui	$a0,0xf
    ori	$a0,$a0,0xf000
    # Line 2808
    ori	$a1,$a1,0x2
    sw	$a1,5356($a2)
    # Line 2807
    or	$v1,$v1,$a0
    # Line 2834
    jr	$ra
    # Line 2807
    sw	$v1,5344($a2)
.L0d9c5200:
    # Line 2827
    lw	$a3,5352($a2)
    ori	$a3,$a3,0x1
    b	.L0d9c50f4
    sw	$a3,5352($a2)
.L0d9c5210:
    # Line 2795
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c50f8
    ld	$ra,8($sp)
.end __glim_EnableClientState

# Function: __glim_DisableClientState
# Declared: Line 2839 (Source lines: 2839-2879)
# Address: 0x0d9c5230 - 0x0d9c5478 (Size: 584 bytes, Frame: 16)
.globl __glim_DisableClientState
.ent __glim_DisableClientState
__glim_DisableClientState:
    # Line 2875
    li	$a7,-3
    # Line 2839
    addiu	$sp,$sp,-16
    # Line 2841
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$a4,1
    # Line 2839
    lui	$v0,0x9
    # Line 2860
    lui	$a6,0xffff
    sd	$ra,8($sp)
    # Line 2839
    addiu	$v0,$v0,-17572
    sd	$gp,0($sp)
    # Line 2841
    beq	$at,$a4,.L0d9c5464
    # Line 2839
    addu	$gp,$t9,$v0
    # Line 2842
    li	$a3,0x8078
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d9c52c8
    # Line 2856
    lui	$v0,0xfff
    # Line 2860
    ori	$a6,$a6,0x7c39
    # Line 2842
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d9c5338
    li	$a3,0x8439
    # Line 2860
    lw	$a5,28212($a2)
    addu	$a5,$a5,$a6
    # Line 2861
    lw	$a3,5348($a2)
    sllv	$a6,$a4,$a5
    nor	$a6,$a6,$zero
    and	$a3,$a3,$a6
    bnez	$a5,.L0d9c5328
    sw	$a3,5348($a2)
    # Line 2864
    lw	$t1,5356($a2)
    li	$t2,-5
    # Line 2863
    lw	$a7,5344($a2)
    lui	$t0,0x7f0
    nor	$t0,$t0,$zero
    # Line 2864
    and	$t1,$t1,$t2
    sw	$t1,5356($a2)
    # Line 2863
    and	$a7,$a7,$t0
    b	.L0d9c5328
    sw	$a7,5344($a2)
.L0d9c52c8:
    # Line 2856
    ori	$v0,$v0,0xffff
    # Line 2842
    li	$a3,0x8076
    sltu	$t3,$a0,$a3
    li	$a1,0x8074
    # Line 2844
    li	$a4,-256
    # Line 2842
    bnez	$t3,.L0d9c536c
    sltu	$t8,$a3,$a0
    beqz	$t8,.L0d9c5418
    li	$t9,0x8077
    bne	$a0,$t9,.L0d9c531c
    move	$ra,$ra
    # Line 2879
    ld	$gp,0($sp)
    # Line 2857
    lw	$v1,5356($a2)
    li	$a0,-9
    # Line 2856
    lw	$at,5344($a2)
    # Line 2879
    addiu	$sp,$sp,16
    # Line 2857
    and	$v1,$v1,$a0
    sw	$v1,5356($a2)
    # Line 2856
    and	$at,$at,$v0
    # Line 2879
    jr	$ra
    # Line 2856
    sw	$at,5344($a2)
.L0d9c531c:
    # Line 2878
    # lw $t9, -26452($gp) # &__glSetError
.L0d9c5320:
    jal	__glSetError
    li	$a0,1280
.L0d9c5328:
    ld	$ra,8($sp)
.L0d9c532c:
    # Line 2879
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9c5338:
    # Line 2842
    li	$a5,0x843a
    sltu	$a1,$a0,$a3
    li	$ra,0x8079
    bnez	$a1,.L0d9c53b4
    sltu	$a4,$a3,$a0
    beqz	$a4,.L0d9c5450
    nop
    bne	$a0,$a5,.L0d9c5320
    # Line 2878
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2875
    lw	$a6,5352($a2)
    and	$a6,$a6,$a7
    b	.L0d9c5328
    sw	$a6,5352($a2)
.L0d9c536c:
    # Line 2845
    li	$a6,-33
    # Line 2842
    li	$a3,0x8075
    sltu	$t0,$a0,$a3
    # Line 2848
    li	$t3,-3841
    # Line 2842
    bnez	$t0,.L0d9c53ec
    # Line 2849
    li	$t9,-2
    # Line 2842
    sltu	$t1,$a3,$a0
    bnez	$t1,.L0d9c531c
    move	$ra,$ra
    # Line 2879
    ld	$gp,0($sp)
    # Line 2849
    lw	$t8,5356($a2)
    # Line 2848
    lw	$t2,5344($a2)
    # Line 2879
    addiu	$sp,$sp,16
    # Line 2849
    and	$t8,$t8,$t9
    sw	$t8,5356($a2)
    # Line 2848
    and	$t2,$t2,$t3
    # Line 2879
    jr	$ra
    # Line 2848
    sw	$t2,5344($a2)
.L0d9c53b4:
    # Line 2868
    lui	$v0,0x800
    # Line 2842
    bne	$a0,$ra,.L0d9c531c
    # Line 2868
    nor	$v0,$v0,$zero
    # Line 2879
    ld	$gp,0($sp)
    # Line 2869
    lw	$v1,5356($a2)
    ld	$ra,8($sp)
    li	$a0,-17
    # Line 2868
    lw	$at,5344($a2)
    # Line 2879
    addiu	$sp,$sp,16
    # Line 2869
    and	$v1,$v1,$a0
    sw	$v1,5356($a2)
    # Line 2868
    and	$at,$at,$v0
    # Line 2879
    jr	$ra
    # Line 2868
    sw	$at,5344($a2)
.L0d9c53ec:
    # Line 2842
    bne	$a0,$a1,.L0d9c531c
    move	$ra,$ra
    # Line 2879
    ld	$gp,0($sp)
    # Line 2845
    lw	$a5,5356($a2)
    # Line 2844
    lw	$a3,5344($a2)
    # Line 2879
    addiu	$sp,$sp,16
    # Line 2845
    and	$a5,$a5,$a6
    sw	$a5,5356($a2)
    # Line 2844
    and	$a3,$a3,$a4
    # Line 2879
    jr	$ra
    # Line 2844
    sw	$a3,5344($a2)
.L0d9c5418:
    # Line 2879
    ld	$gp,0($sp)
    # Line 2853
    lw	$t1,5356($a2)
    # Line 2852
    lw	$a7,5344($a2)
    # Line 2879
    addiu	$sp,$sp,16
    # Line 2853
    li	$t2,-3
    # Line 2852
    lui	$t0,0xf
    move	$ra,$ra
    ori	$t0,$t0,0xf000
    # Line 2853
    and	$t1,$t1,$t2
    sw	$t1,5356($a2)
    # Line 2852
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    # Line 2879
    jr	$ra
    # Line 2852
    sw	$a7,5344($a2)
.L0d9c5450:
    # Line 2872
    lw	$t1,5352($a2)
    li	$t2,-2
    and	$t1,$t1,$t2
    b	.L0d9c5328
    sw	$t1,5352($a2)
.L0d9c5464:
    # Line 2841
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c532c
    ld	$ra,8($sp)
.end __glim_DisableClientState

# Function: __glim_PushClientAttrib
# Declared: Line 2884 (Source lines: 2884-2907)
# Address: 0x0d9c5480 - 0x0d9c5734 (Size: 692 bytes, Frame: 192)
.globl __glim_PushClientAttrib
.ent __glim_PushClientAttrib
__glim_PushClientAttrib:
    # Line 2884
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 2887
    lw	$s0,4112($zero)
    sd	$s4,24($sp)
    sd	$ra,32($sp)
    sd	$s1,40($sp)
    lw	$at,4120($zero)
    # Line 2884
    sd	$s2,0($sp)
    # Line 2887
    li	$v0,1
    # Line 2884
    lui	$v1,0x9
    move	$s2,$a0
    sd	$s3,48($sp)
    addiu	$v1,$v1,-18164
    sd	$gp,16($sp)
    # Line 2887
    beq	$at,$v0,.L0d9c5720
    # Line 2884
    addu	$gp,$t9,$v1
    # Line 2889
    lw	$a1,3780($s0)
    lw	$a0,12680($s0)
    lw	$s1,12684($s0)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    sltu	$a0,$s1,$a0
    beqz	$a0,.L0d9c56f0
    # Line 2906
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2891
    lw	$a2,0($s1)
    beqz	$a2,.L0d9c5700
    move	$a6,$a2
.L0d9c54ec:
    # Line 2897
    andi	$a4,$s2,0x1
    # Line 2899
    addiu	$a2,$a6,4
    addiu	$a0,$s0,1144
    # Line 2896
    sw	$s2,0($a6)
    # Line 2897
    addiu	$a3,$s1,4
    beqz	$a4,.L0d9c55c0
    sw	$a3,12684($s0)
    # Line 2899
    lw	$v0,1144($s0)
    sw	$v0,4($a6)
    lw	$at,1148($s0)
    sw	$at,8($a6)
    lw	$ra,1152($s0)
    sw	$ra,12($a6)
    lw	$t9,1156($s0)
    sw	$t9,16($a6)
    lw	$t8,1160($s0)
    sw	$t8,20($a6)
    lw	$t3,1164($s0)
    sw	$t3,24($a6)
    lw	$t2,1168($s0)
    sw	$t2,28($a6)
    lw	$t1,1172($s0)
    sw	$t1,32($a6)
    lw	$t0,1176($s0)
    sw	$t0,36($a6)
    lw	$a7,1180($s0)
    sw	$a7,40($a6)
    lw	$a5,1184($s0)
    sw	$a5,44($a6)
    # Line 2900
    addiu	$a0,$s0,1188
    addiu	$a2,$a6,48
    lw	$ra,1188($s0)
    sw	$ra,48($a6)
    lw	$t9,1192($s0)
    sw	$t9,52($a6)
    lw	$t8,1196($s0)
    sw	$t8,56($a6)
    lw	$t3,1200($s0)
    sw	$t3,60($a6)
    lw	$t2,1204($s0)
    sw	$t2,64($a6)
    lw	$t1,1208($s0)
    sw	$t1,68($a6)
    lw	$t0,1212($s0)
    sw	$t0,72($a6)
    lw	$a7,1216($s0)
    sw	$a7,76($a6)
    lw	$a5,1220($s0)
    sw	$a5,80($a6)
    lw	$a1,1224($s0)
    sw	$a1,84($a6)
    lw	$v1,1228($s0)
    sw	$v1,88($a6)
.L0d9c55c0:
    # Line 2903
    li	$a0,86
    # Line 2900
    andi	$at,$s2,0x2
    # Line 2903
    move	$a2,$zero
    addiu	$a4,$a6,92
    # Line 2900
    beqz	$at,.L0d9c56cc
    li	$a5,6
    # Line 2903
    addiu	$a3,$s0,5028
    addiu	$t0,$a4,28
.L0d9c55e0:
    addiu	$a5,$a5,-1
    addu	$v0,$a2,$a3
    addiu	$a0,$a0,-1
    addu	$v1,$a2,$a4
    lw	$v0,0($v0)
    addiu	$a2,$a2,4
    bnez	$a5,.L0d9c55e0
    sw	$v0,0($v1)
    addiu	$s0,$a3,16
    addiu	$t9,$a4,16
    addiu	$t8,$a3,24
    addiu	$t3,$a4,24
    addiu	$t2,$a4,20
    addiu	$s2,$a3,20
    addiu	$a7,$a3,12
    addiu	$s1,$a3,8
    addiu	$ra,$a4,8
    addiu	$s3,$a4,4
    addiu	$s4,$a3,4
    li	$a6,0x20
    addiu	$t1,$a3,28
    addiu	$a5,$a4,12
    nop
    nop
.L0d9c5640:
    addu	$v0,$a2,$a3
    addu	$v1,$a2,$a4
    lw	$v0,0($v0)
    addu	$at,$a2,$s4
    sw	$v0,0($v1)
    addu	$v0,$a2,$s3
    lw	$at,0($at)
    addu	$a1,$a2,$s1
    sw	$at,0($v0)
    addu	$at,$a2,$ra
    lw	$a1,0($a1)
    addu	$v1,$a2,$a7
    sw	$a1,0($at)
    addu	$a1,$a2,$a5
    lw	$v1,0($v1)
    addu	$v0,$a2,$s0
    sw	$v1,0($a1)
    addu	$v1,$a2,$t9
    lw	$v0,0($v0)
    addu	$at,$a2,$s2
    sw	$v0,0($v1)
    addu	$v0,$a2,$t2
    lw	$at,0($at)
    addu	$a1,$a2,$t8
    sw	$at,0($v0)
    addu	$at,$a2,$t3
    lw	$a1,0($a1)
    addiu	$a0,$a0,-8
    addu	$v1,$a2,$t1
    sw	$a1,0($at)
    addu	$a1,$a2,$t0
    lw	$v1,0($v1)
    addu	$a2,$a2,$a6
    bgtz	$a0,.L0d9c5640
    sw	$v1,0($a1)
.L0d9c56cc:
    ld	$s0,8($sp)
.L0d9c56d0:
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    ld	$ra,32($sp)
    ld	$s2,0($sp)
    ld	$s1,40($sp)
    # Line 2907
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c56f0:
    # Line 2906
    jal	__glSetError
    li	$a0,1283
    b	.L0d9c56d0
    ld	$s0,8($sp)
.L0d9c5700:
    # Line 2892
    lw	$t9,4($s0)
    move	$a0,$s0
    li	$a2,436
    jalr	$t9
    li	$a1,1
    move	$a6,$v0
    b	.L0d9c54ec
    # Line 2894
    sw	$v0,0($s1)
.L0d9c5720:
    # Line 2887
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c56d0
    ld	$s0,8($sp)
.end __glim_PushClientAttrib

# Function: __glim_PopClientAttrib
# Declared: Line 2912 (Source lines: 2912-2939)
# Address: 0x0d9c5740 - 0x0d9c59ec (Size: 684 bytes, Frame: 192)
.globl __glim_PopClientAttrib
.ent __glim_PopClientAttrib
__glim_PopClientAttrib:
    # Line 2916
    lw	$a6,4112($zero)
    # Line 2912
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    sd	$s0,32($sp)
    sd	$s3,40($sp)
    sd	$ra,24($sp)
    # Line 2916
    lw	$at,4120($zero)
    sd	$s2,48($sp)
    li	$v0,1
    # Line 2912
    lui	$v1,0x9
    li	$a5,6
    sd	$s4,56($sp)
    addiu	$v1,$v1,-18868
    sd	$gp,8($sp)
    # Line 2916
    beq	$at,$v0,.L0d9c59d8
    # Line 2912
    addu	$gp,$t9,$v1
    # Line 2918
    lw	$a1,12684($a6)
    lw	$a0,12680($a6)
    sltu	$a0,$a0,$a1
    beqz	$a0,.L0d9c59c4
    # Line 2923
    addiu	$a3,$a1,-4
    sd	$s5,0($sp)
    # Line 2921
    lw	$s5,-4($a1)
    # Line 2922
    lw	$a2,0($s5)
    # Line 2923
    andi	$a4,$a2,0x1
    # Line 2939
    ld	$gp,8($sp)
    # Line 2925
    addiu	$a1,$s5,4
    # Line 2923
    beqz	$a4,.L0d9c5870
    sw	$a3,12684($a6)
    # Line 2925
    addiu	$a3,$a6,1144
    lw	$v1,4($s5)
    sw	$v1,1144($a6)
    lw	$v0,8($s5)
    sw	$v0,1148($a6)
    lw	$at,12($s5)
    sw	$at,1152($a6)
    lw	$ra,16($s5)
    sw	$ra,1156($a6)
    lw	$t9,20($s5)
    sw	$t9,1160($a6)
    lw	$t8,24($s5)
    sw	$t8,1164($a6)
    lw	$t3,28($s5)
    sw	$t3,1168($a6)
    lw	$t2,32($s5)
    sw	$t2,1172($a6)
    lw	$t1,36($s5)
    sw	$t1,1176($a6)
    lw	$t0,40($s5)
    sw	$t0,1180($a6)
    lw	$a7,44($s5)
    sw	$a7,1184($a6)
    # Line 2926
    addiu	$a3,$s5,48
    addiu	$a1,$a6,1188
    lw	$v0,48($s5)
    sw	$v0,1188($a6)
    lw	$at,52($s5)
    sw	$at,1192($a6)
    lw	$ra,56($s5)
    sw	$ra,1196($a6)
    lw	$t9,60($s5)
    sw	$t9,1200($a6)
    lw	$t8,64($s5)
    sw	$t8,1204($a6)
    lw	$t3,68($s5)
    sw	$t3,1208($a6)
    lw	$t2,72($s5)
    sw	$t2,1212($a6)
    lw	$t1,76($s5)
    sw	$t1,1216($a6)
    lw	$t0,80($s5)
    sw	$t0,1220($a6)
    lw	$a7,84($s5)
    sw	$a7,1224($a6)
    lw	$a0,88($s5)
    sw	$a0,1228($a6)
.L0d9c5870:
    andi	$v1,$a2,0x2
    # Line 2929
    move	$a2,$zero
    addiu	$a4,$s5,92
    addiu	$a3,$a6,5028
    # Line 2926
    beqz	$v1,.L0d9c597c
    # Line 2929
    li	$a1,86
    nop
    nop
.L0d9c5890:
    addiu	$a5,$a5,-1
    addu	$a0,$a2,$a4
    addiu	$a1,$a1,-1
    addu	$a6,$a2,$a3
    lw	$a0,0($a0)
    addiu	$a2,$a2,4
    bnez	$a5,.L0d9c5890
    sw	$a0,0($a6)
    addiu	$s2,$a4,16
    addiu	$t9,$a3,16
    addiu	$t8,$a4,24
    addiu	$t3,$a3,24
    addiu	$s0,$a3,20
    addiu	$s3,$a4,20
    addiu	$a7,$a4,12
    addiu	$ra,$a4,8
    addiu	$s1,$a3,8
    addiu	$t2,$a3,4
    addiu	$s4,$a4,4
    addiu	$t0,$a3,28
    addiu	$t1,$a4,28
    li	$a6,0x20
    addiu	$a5,$a3,12
    nop
.L0d9c58f0:
    addu	$a0,$a2,$a4
    addu	$at,$a2,$a3
    lw	$a0,0($a0)
    addu	$v1,$a2,$s4
    sw	$a0,0($at)
    addu	$a0,$a2,$t2
    lw	$v1,0($v1)
    addu	$v0,$a2,$ra
    sw	$v1,0($a0)
    addu	$v1,$a2,$s1
    lw	$v0,0($v0)
    addu	$at,$a2,$a7
    sw	$v0,0($v1)
    addu	$v0,$a2,$a5
    lw	$at,0($at)
    addu	$a0,$a2,$s2
    sw	$at,0($v0)
    addu	$at,$a2,$t9
    lw	$a0,0($a0)
    addu	$v1,$a2,$s3
    sw	$a0,0($at)
    addu	$a0,$a2,$s0
    lw	$v1,0($v1)
    addu	$v0,$a2,$t8
    sw	$v1,0($a0)
    addu	$v1,$a2,$t3
    lw	$v0,0($v0)
    addiu	$a1,$a1,-8
    addu	$at,$a2,$t1
    sw	$v0,0($v1)
    addu	$v0,$a2,$t0
    lw	$at,0($at)
    addu	$a2,$a2,$a6
    bgtz	$a1,.L0d9c58f0
    sw	$at,0($v0)
.L0d9c597c:
    ld	$s4,56($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s0,32($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    # Line 2936
    sw	$zero,0($s5)
    # Line 2939
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c59a4:
    ld	$s1,16($sp)
    ld	$s0,32($sp)
    ld	$s3,40($sp)
    ld	$s2,48($sp)
    ld	$s4,56($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9c59c4:
    # Line 2938
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1284
    b	.L0d9c59a4
    ld	$ra,24($sp)
.L0d9c59d8:
    # Line 2916
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9c59a4
    ld	$ra,24($sp)
.end __glim_PopClientAttrib

.late_rodata
jtbl_0da44870:
    .word .L0d9be950
    .word .L0d9be908
    .word .L0d9bea90
    .word .L0d9bea54
    .word .L0d9bea1c
    .word .L0d9be9f4
    .word .L0d9be9bc
    .word .L0d9be9a0
    .word .L0d9be988
    .word .L0d9be96c
jtbl_0da44898:
    .word .L0d9bec60
    .word .L0d9bec18
    .word .L0d9bedc0
    .word .L0d9bed64
    .word .L0d9bed14
    .word .L0d9becf0
    .word .L0d9becc0
    .word .L0d9beca8
    .word .L0d9bec90
    .word .L0d9bec78

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3d800000:
    .word 0x3d800000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_41800000:
    .word 0x41800000
_lit_42b40000:
    .word 0x42b40000
_lit_43000000:
    .word 0x43000000
_lit_43340000:
    .word 0x43340000
_lit_bf800000:
    .word 0xbf800000

