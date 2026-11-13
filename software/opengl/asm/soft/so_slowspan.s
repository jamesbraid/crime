# Source: ../soft/so_slowspan.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_slowspan.c
# Total Functions: 3

.text

# Function: __glReadSpan
# Declared: Line 20 (Source lines: 22-29)
# Address: 0x0da056a0 - 0x0da05744 (Size: 164 bytes, Frame: 192)
.globl __glReadSpan
.ent __glReadSpan
__glReadSpan:
    # Line 22
    addiu	$sp,$sp,-64
    sd	$s1,32($sp)
    move	$s1,$a3
    sd	$s3,8($sp)
    move	$s3,$a2
    sd	$s0,24($sp)
    move	$s0,$a1
    lui	$at,0x5
    sd	$s2,0($sp)
    # Line 23
    addiu	$s2,$a4,-1
    # Line 22
    sd	$s4,16($sp)
    move	$s4,$a0
    addiu	$at,$at,-18708
    sd	$gp,40($sp)
    # Line 23
    bltz	$s2,.L0da05720
    # Line 22
    addu	$gp,$t9,$at
    sd	$ra,48($sp)
    sd	$s5,56($sp)
    # Line 23
    li	$s5,-1
    nop
.L0da056f0:
    # Line 24
    lw	$t9,172($s4)
    move	$a0,$s4
    move	$a1,$s0
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s1
    # Line 23
    addiu	$s2,$s2,-1
    # Line 26
    addiu	$s1,$s1,16
    # Line 23
    bne	$s2,$s5,.L0da056f0
    # Line 25
    addiu	$s0,$s0,1
    ld	$ra,48($sp)
    ld	$s5,56($sp)
.L0da05720:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    # Line 29
    move	$v0,$zero
    ld	$s1,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glReadSpan

# Function: __glReturnSpan
# Declared: Line 39 (Source lines: 41-80)
# Address: 0x0da05750 - 0x0da05938 (Size: 488 bytes, Frame: 208)
.globl __glReturnSpan
.ent __glReturnSpan
__glReturnSpan:
    # Line 41
    addiu	$sp,$sp,-208
    sd	$a5,56($sp)
    sdc1	$f20,112($sp)
    sdc1	$f26,120($sp)
    sdc1	$f22,128($sp)
    sdc1	$f24,136($sp)
    sd	$s2,144($sp)
    sd	$s0,72($sp)
    sd	$s5,88($sp)
    # Line 44
    lw	$s5,0($a0)
    # Line 41
    sd	$s6,64($sp)
    # Line 49
    lw	$s6,1792($s5)
    # Line 41
    move	$s0,$a3
    sd	$s1,80($sp)
    lui	$at,0x5
    sd	$s7,96($sp)
    # Line 49
    andi	$s7,$s6,0x2
    # Line 41
    move	$s1,$a0
    sd	$ra,160($sp)
    addiu	$at,$at,-18884
    mov.s	$f4,$f16
    sd	$gp,104($sp)
    # Line 49
    beqz	$s7,.L0da057f4
    # Line 41
    addu	$gp,$t9,$at
    sdc1	$f16,192($sp)
    sd	$a1,184($sp)
    # Line 51
    li	$a0,-3
    and	$a0,$s6,$a0
    sw	$a0,1792($s5)
    # Line 52
    li	$v1,2
    sw	$v1,4120($zero)
    # Line 53
    lw	$t9,11784($s5)
    # Line 52
    lw	$v0,11756($s5)
    sd	$a2,176($sp)
    # Line 53
    move	$a0,$s5
    # Line 52
    ori	$v0,$v0,0x1
    # Line 53
    jalr	$t9
    # Line 52
    sw	$v0,11756($s5)
    ld	$a2,176($sp)
    ld	$a1,184($sp)
    ldc1	$f4,192($sp)
.L0da057f4:
    # Line 58
    lwc1	$f20,31456($s5)
    # Line 59
    lwc1	$f26,31460($s5)
    # Line 57
    lwc1	$f22,31452($s5)
    # Line 56
    lwc1	$f24,31448($s5)
    # Line 63
    ld	$s2,56($sp)
    # Line 62
    sw	$a2,4($sp)
    # Line 59
    mul.s	$f26,$f26,$f4
    # Line 61
    sw	$a1,0($sp)
    # Line 58
    mul.s	$f20,$f20,$f4
    # Line 63
    addiu	$s2,$s2,-1
    sd	$s4,168($sp)
    li	$s4,-1
    # Line 57
    mul.s	$f22,$f22,$f4
    sd	$s3,152($sp)
    # Line 63
    addiu	$s3,$sp,12
    bltz	$s2,.L0da058cc
    # Line 56
    mul.s	$f24,$f24,$f4
    nop
    nop
.L0da05840:
    # Line 64
    lh	$at,0($s0)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f24
    swc1	$f0,12($sp)
    # Line 65
    lh	$ra,2($s0)
    mtc1	$ra,$f31
    cvt.s.w	$f31,$f31
    mul.s	$f31,$f31,$f22
    swc1	$f31,16($sp)
    # Line 66
    lh	$t9,4($s0)
    mtc1	$t9,$f29
    cvt.s.w	$f29,$f29
    mul.s	$f29,$f29,$f20
    swc1	$f29,20($sp)
    # Line 67
    lh	$t8,6($s0)
    mtc1	$t8,$f27
    cvt.s.w	$f27,$f27
    # Line 68
    # lw $t9, -25808($gp) # &__glClampRGBColor
    # Line 67
    mul.s	$f27,$f27,$f26
    # Line 68
    move	$a2,$s3
    # Line 67
    swc1	$f27,24($sp)
    # Line 68
    move	$a1,$s3
    jal	__glClampRGBColor
    lw	$a0,0($s1)
    # Line 69
    lw	$t9,164($s1)
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 63
    addiu	$s2,$s2,-1
    # Line 70
    lw	$v0,0($sp)
    # Line 71
    addiu	$s0,$s0,8
    # Line 70
    addiu	$v0,$v0,1
    # Line 63
    bne	$s2,$s4,.L0da05840
    # Line 70
    sw	$v0,0($sp)
.L0da058cc:
    # Line 63
    beqz	$s7,.L0da058fc
    ld	$s2,144($sp)
    # Line 76
    sw	$s6,1792($s5)
    # Line 77
    li	$a0,2
    sw	$a0,4120($zero)
    # Line 78
    lw	$t9,11784($s5)
    # Line 77
    lw	$v1,11756($s5)
    # Line 78
    move	$a0,$s5
    # Line 77
    ori	$v1,$v1,0x1
    # Line 78
    jalr	$t9
    # Line 77
    sw	$v1,11756($s5)
    ld	$s2,144($sp)
.L0da058fc:
    ld	$s6,64($sp)
    ld	$s3,152($sp)
    ld	$s4,168($sp)
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$s5,88($sp)
    ld	$s7,96($sp)
    ldc1	$f20,112($sp)
    ldc1	$f26,120($sp)
    ld	$ra,160($sp)
    ldc1	$f22,128($sp)
    ldc1	$f24,136($sp)
    # Line 80
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glReturnSpan

# Function: __glFetchSpan
# Declared: Line 82 (Source lines: 83-97)
# Address: 0x0da05940 - 0x0da0598c (Size: 76 bytes, Frame: 16)
.globl __glFetchSpan
.ent __glFetchSpan
__glFetchSpan:
    # Line 83
    move	$a1,$a0
    # Line 95
    lw	$a4,30248($a1)
    lw	$a3,30468($a1)
    # Line 83
    addiu	$sp,$sp,-16
    # Line 92
    lw	$a0,30480($a0)
    # Line 83
    lui	$a2,0x5
    sd	$gp,8($sp)
    addiu	$a2,$a2,-19380
    addu	$gp,$t9,$a2
    # Line 95
    lw	$t9,176($a0)
    # Line 83
    sd	$ra,0($sp)
    # Line 95
    lw	$a2,30200($a1)
    jalr	$t9
    lw	$a1,30196($a1)
    ld	$ra,0($sp)
    # Line 97
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFetchSpan

