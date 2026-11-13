# Source: ../CRIME/crm_linedraw.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_linedraw.c
# Total Functions: 4

.text

# Function: __glCrmFlatColorLine
# Declared: Line 101 (Source lines: 102-193)
# Address: 0x0d94cae0 - 0x0d94cdb0 (Size: 720 bytes, Frame: 48)
.globl __glCrmFlatColorLine
.ent __glCrmFlatColorLine
__glCrmFlatColorLine:
    # Line 110
    lw	$a7,476($a0)
    # Line 102
    addiu	$sp,$sp,-48
    # Line 108
    lw	$t0,32116($a0)
    sw	$t0,0($sp)
    # Line 110
    lw	$a6,0($sp)
    lui	$t0,0xffff
    sll	$a7,$a7,0x5
    lw	$v1,32096($a0)
    andi	$a7,$a7,0xffff
    and	$a6,$a6,$t0
    # Line 102
    lui	$v0,0x10
    # Line 110
    or	$a6,$a6,$a7
    # Line 104
    lw	$a5,32184($a0)
    # Line 102
    addiu	$v0,$v0,17068
    addu	$at,$t9,$v0
    # Line 110
    beq	$v1,$a6,.L0d94cb3c
    # Line 104
    lw	$a7,32188($a0)
    # Line 111
    sw	$a6,0($sp)
    sw	$a6,8288($a5)
    lw	$t3,32188($a0)
    lw	$t2,0($sp)
    sw	$t2,8288($t3)
    sw	$t2,32096($a0)
.L0d94cb3c:
    # Line 113
    lw	$v0,132($a1)
    lw	$v1,128($a1)
    sw	$v1,8($sp)
    sw	$v0,12($sp)
    ldc1	$f1,8($sp)
    sdc1	$f1,8320($a5)
    # Line 114
    lw	$t8,132($a2)
    lw	$t9,128($a2)
    sw	$t9,16($sp)
    sw	$t8,20($sp)
    ldc1	$f0,16($sp)
    sdc1	$f0,8328($a5)
    lw	$t3,1792($a0)
    andi	$t3,$t3,0x100
    beqz	$t3,.L0d94cc18
    nop
    lbu	$a3,29848($a0)
    # Line 147
    lwc1	$f14,_lit_42fe0000
    # Line 114
    beqz	$a3,.L0d94cd7c
    # Line 137
    dmtc1	$zero,$f13
.L0d94cb8c:
    # Line 132
    lwc1	$f9,128($a1)
    # Line 134
    lwc1	$f7,128($a2)
    # Line 133
    lwc1	$f8,132($a1)
    # Line 135
    lwc1	$f6,132($a2)
    # Line 137
    sub.s	$f12,$f7,$f9
    cvt.d.s	$f2,$f12
    # Line 139
    sub.s	$f11,$f6,$f8
    # Line 135
    swc1	$f6,36($sp)
    # Line 137
    c.le.d	$f13,$f2
    # Line 134
    swc1	$f7,32($sp)
    # Line 139
    cvt.d.s	$f3,$f11
    # Line 133
    swc1	$f8,28($sp)
    # Line 140
    mov.s	$f5,$f11
    # Line 132
    swc1	$f9,24($sp)
    # Line 139
    mov.s	$f4,$f12
    # Line 137
    bc1t	.L0d94cbd4
    # Line 139
    c.le.d $f13,$f3
    neg.s	$f4,$f12
.L0d94cbd4:
    bc1t .L0d94cbe0
    nop
    # Line 140
    neg.s	$f5,$f11
.L0d94cbe0:
    # Line 145
    c.lt.s $f5,$f4
    bc1f .L0d94cc18
    ldc1	$f5,_lit8_405fc00000000000
    cvt.d.s	$f6,$f4
    c.lt.d $f5,$f6
    bc1f .L0d94cc18
    # Line 147
    lwc1	$f5,_lit_c2fe0000
    cvt.d.s	$f15,$f12
    c.lt.d $f15,$f13
    li	$a0,1
    # Line 146
    div.s	$f10,$f11,$f12
    # Line 147
    movf	$a0,$zero,$fcc4
    b	.L0d94ccb8
    movz.s	$f5,$f14,$a0
.L0d94cc18:
    # Line 181
    lw	$a1,8($a2)
    lwc1	$f4,0($a1)
    lbu	$a4,3220($a0)
    # Line 186
    lwc1	$f6,8($a1)
    # Line 181
    trunc.w.s	$f4,$f4
    # Line 186
    lwc1	$f7,4($a1)
    lwc1	$f5,12($a1)
    # Line 181
    beqz	$a4,.L0d94cda0
    mfc1	$a6,$f4
    # Line 186
    trunc.w.s	$f6,$f6
    trunc.w.s	$f7,$f7
    trunc.w.s	$f5,$f5
    mfc1	$t2,$f6
    sll	$t3,$a6,0x18
    mfc1	$t1,$f7
    mfc1	$t0,$f5
    sll	$t2,$t2,0x8
    sll	$t1,$t1,0x10
    or	$t0,$t0,$t3
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sw	$t0,40($sp)
    lw	$a7,40($sp)
    sw	$a7,10448($a5)
.L0d94cc78:
    # Line 192
    li	$t2,0x8080
    addu	$t2,$t2,$a0
    # Line 193
    addiu	$sp,$sp,48
    jr	$ra
    # Line 192
    sw	$zero,0($t2)
.L0d94cc8c:
    # Line 193
    jr	$ra
    addiu	$sp,$sp,48
.L0d94cc94:
    # Line 164
    c.le.s $f4,$f7
    bc1t .L0d94cc8c
    nop
    # Line 167
    sub.s	$f8,$f7,$f4
    c.lt.s $f5,$f8
    movt.s	$f5,$f8,$fcc6
.L0d94ccac:
    # Line 178
    swc1	$f6,28($sp)
    mov.s	$f8,$f6
    # Line 177
    swc1	$f4,24($sp)
.L0d94ccb8:
    # Line 158
    lw	$t9,24($sp)
    # Line 159
    lw	$v0,28($sp)
    # Line 156
    madd.s	$f6,$f8,$f10,$f5
    # Line 159
    sw	$v0,8324($a5)
    # Line 155
    add.s	$f4,$f5,$f9
    swc1	$f4,32($sp)
    # Line 158
    sw	$t9,8320($a5)
    # Line 160
    lw	$t8,32($sp)
    # Line 156
    swc1	$f6,36($sp)
    # Line 160
    sw	$t8,8328($a5)
    # Line 161
    lw	$t3,36($sp)
    beqz	$a0,.L0d94cd60
    sw	$t3,10380($a5)
    # Line 164
    c.le.s $f4,$f7
    bc1t .L0d94cc8c
    nop
    # Line 167
    sub.s	$f9,$f7,$f4
    c.lt.s	$f5,$f9
    movt.s	$f5,$f9,$fcc0
.L0d94cd04:
    # Line 177
    swc1	$f4,24($sp)
    # Line 178
    swc1	$f6,28($sp)
    # Line 158
    lw	$a2,24($sp)
    # Line 159
    lw	$a3,28($sp)
    # Line 156
    madd.s	$f6,$f6,$f10,$f5
    # Line 159
    sw	$a3,8324($a5)
    # Line 155
    add.s	$f4,$f5,$f4
    swc1	$f4,32($sp)
    # Line 158
    sw	$a2,8320($a5)
    # Line 160
    lw	$a1,32($sp)
    # Line 156
    swc1	$f6,36($sp)
    # Line 160
    sw	$a1,8328($a5)
    # Line 161
    lw	$v1,36($sp)
    # Line 177
    mov.s	$f9,$f4
    # Line 161
    bnez	$a0,.L0d94cc94
    sw	$v1,10380($a5)
    # Line 170
    c.le.s $f7,$f4
    bc1t .L0d94cc8c
    nop
    # Line 173
    sub.s	$f11,$f7,$f4
    c.lt.s $f11,$f5
    b	.L0d94ccac
    movt.s	$f5,$f11,$fcc2
.L0d94cd60:
    # Line 170
    c.le.s $f7,$f4
    bc1t .L0d94cc8c
    nop
    # Line 173
    sub.s	$f12,$f7,$f4
    c.lt.s $f12,$f5
    b	.L0d94cd04
    movt.s	$f5,$f12,$fcc4
.L0d94cd7c:
    # Line 125
    lw	$t1,32108($a0)
    sw	$t1,8388($a5)
    lw	$t0,32108($a0)
    sw	$t0,8388($a7)
    # Line 128
    lw	$a6,32112($a0)
    sw	$a6,8384($a5)
    # Line 129
    li	$a4,1
    b	.L0d94cb8c
    sb	$a4,29848($a0)
.L0d94cda0:
    # Line 190
    swc1	$f4,44($sp)
    lw	$t2,44($sp)
    b	.L0d94cc78
    sw	$t2,10448($a5)
.end __glCrmFlatColorLine

# Function: __glCrmFogCILine
# Declared: Line 446 (Source lines: 447-476)
# Address: 0x0d94cdb0 - 0x0d94cf18 (Size: 360 bytes, Frame: 240)
.globl __glCrmFogCILine
.ent __glCrmFogCILine
__glCrmFogCILine:
    # Line 455
    lw	$at,8($a1)
    # Line 447
    addiu	$sp,$sp,-112
    # Line 455
    sd	$at,40($sp)
    # Line 451
    lw	$v0,32088($a0)
    sw	$v0,0($sp)
    # Line 447
    sd	$s1,80($sp)
    # Line 456
    addiu	$v1,$sp,8
    sw	$v1,8($a1)
    # Line 447
    sd	$s0,96($sp)
    move	$s0,$a0
    lui	$a0,0x10
    sd	$gp,64($sp)
    addiu	$a0,$a0,16348
    addu	$gp,$t9,$a0
    # Line 457
    lw	$t9,12532($s0)
    # Line 447
    move	$s1,$a2
    sd	$s2,72($sp)
    move	$s2,$a1
    sd	$ra,88($sp)
    move	$a1,$v1
    # Line 457
    move	$a2,$at
    lwc1	$f15,176($s2)
    jalr	$t9
    move	$a0,$s0
    # Line 459
    lw	$a2,8($s1)
    # Line 460
    addiu	$a1,$sp,24
    sw	$a1,8($s1)
    # Line 461
    lw	$t9,12532($s0)
    lwc1	$f15,176($s1)
    move	$a0,$s0
    jalr	$t9
    # Line 459
    sd	$a2,48($sp)
    # Line 461
    lw	$a1,0($sp)
    sll	$a1,$a1,0xf
    bltz	$a1,.L0d94ce74
    sd	$a1,56($sp)
    # Line 464
    lw	$a0,32088($s0)
    lw	$a2,32092($s0)
    lui	$a1,0x1
    or	$a0,$a0,$a1
    beq	$a2,$a0,.L0d94ce74
    sw	$a0,32088($s0)
    # Line 465
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d94ce74:
    # Line 468
    # lw $t9, -32156($gp) # &__glCrmSmoothCILine
    move	$a0,$s0
    move	$a1,$s2
    jal	__glCrmSmoothCILine
    move	$a2,$s1
    ld	$a6,56($sp)
    ld	$a1,40($sp)
    # Line 476
    ld	$gp,64($sp)
    # Line 471
    lui	$a3,0x1
    ld	$a2,48($sp)
    # Line 468
    bltz	$a6,.L0d94cef4
    # Line 471
    nor	$a3,$a3,$zero
    lw	$a0,32088($s0)
    lw	$a7,32092($s0)
    and	$a0,$a0,$a3
    beq	$a7,$a0,.L0d94cef4
    sw	$a0,32088($s0)
    # Line 472
    lw	$a7,32184($s0)
    # Line 476
    ld	$ra,88($sp)
    # Line 472
    sw	$a0,8216($a7)
    lw	$a6,32188($s0)
    lw	$a5,32088($s0)
    sw	$a5,8216($a6)
    lw	$a4,32088($s0)
    sw	$a4,32092($s0)
    # Line 476
    ld	$s0,96($sp)
    # Line 474
    sw	$a1,8($s2)
    # Line 475
    sw	$a2,8($s1)
    # Line 476
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d94cef4:
    ld	$gp,64($sp)
    ld	$s0,96($sp)
    # Line 474
    sw	$a1,8($s2)
    # Line 476
    ld	$ra,88($sp)
    # Line 475
    sw	$a2,8($s1)
    # Line 476
    ld	$s1,80($sp)
    ld	$s2,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCrmFogCILine

# Function: __glCrmTexturedLine
# Declared: Line 660 (Source lines: 661-1073)
# Address: 0x0d94cf20 - 0x0d94df9c (Size: 4220 bytes, Frame: 176)
.globl __glCrmTexturedLine
.ent __glCrmTexturedLine
__glCrmTexturedLine:
    # Line 677
    lw	$a4,30436($a0)
    # Line 661
    addiu	$sp,$sp,-816
    sd	$s6,712($sp)
    # Line 671
    lw	$s6,28208($a0)
    # Line 661
    sd	$s0,688($sp)
    # Line 663
    lw	$s0,32184($a0)
    sdc1	$f28,752($sp)
    sdc1	$f26,728($sp)
    # Line 682
    lw	$a5,1792($a0)
    # Line 681
    lw	$a7,476($a0)
    # Line 680
    lw	$a6,32116($a0)
    sw	$a6,0($sp)
    # Line 687
    sll	$v1,$a7,0x5
    # Line 682
    lui	$t8,0xffff
    lw	$a6,0($sp)
    # Line 685
    sll	$a7,$a7,0x6
    sd	$s2,792($sp)
    # Line 682
    andi	$a5,$a5,0x200
    # Line 685
    andi	$a7,$a7,0xffff
    sd	$ra,776($sp)
    # Line 687
    andi	$v1,$v1,0xffff
    # Line 682
    and	$a6,$t8,$a6
    # Line 687
    lw	$at,32096($a0)
    or	$v1,$a6,$v1
    # Line 685
    or	$a6,$a6,$a7
    # Line 661
    sd	$s5,696($sp)
    lui	$v0,0x10
    movz	$a6,$v1,$a5
    move	$s5,$a0
    sd	$gp,704($sp)
    addiu	$v0,$v0,15980
    addu	$gp,$t9,$v0
    # Line 687
    beq	$at,$a6,.L0d94cfc0
    # Line 663
    lw	$a7,32188($a0)
    # Line 689
    sw	$a6,0($sp)
    lw	$t1,0($sp)
    sw	$a6,8288($s0)
    lw	$t2,32188($a0)
    sw	$t1,8288($t2)
    sw	$t1,32096($a0)
.L0d94cfc0:
    # Line 691
    lw	$at,128($a1)
    sw	$at,8($sp)
    lw	$ra,132($a1)
    sw	$ra,12($sp)
    ldc1	$f1,8($sp)
    sdc1	$f1,8320($s0)
    # Line 692
    lw	$t9,128($a2)
    sw	$t9,16($sp)
    lw	$t3,132($a2)
    sw	$t3,20($sp)
    ldc1	$f0,16($sp)
    sdc1	$f0,8328($s0)
    lw	$t2,1792($s5)
    andi	$t2,$t2,0x100
    beqz	$t2,.L0d94dce8
    nop
    sdc1	$f30,760($sp)
    lbu	$v0,29848($s5)
    sdc1	$f24,744($sp)
    sdc1	$f22,736($sp)
    li	$a6,1
    beqz	$v0,.L0d94de8c
    sdc1	$f20,720($sp)
.L0d94d01c:
    # Line 712
    lwc1	$f24,128($a2)
    # Line 710
    lwc1	$f22,128($a1)
    # Line 715
    sub.s	$f4,$f24,$f22
    # Line 713
    lwc1	$f6,132($a2)
    # Line 715
    dmtc1	$zero,$f30
    cvt.d.s	$f2,$f4
    # Line 713
    swc1	$f6,36($sp)
    # Line 711
    lwc1	$f20,132($a1)
    # Line 715
    c.le.d	$f30,$f2
    # Line 712
    swc1	$f24,32($sp)
    # Line 711
    swc1	$f20,28($sp)
    # Line 710
    swc1	$f22,24($sp)
    # Line 715
    bc1f	.L0d94d05c
    nop
    # Line 717
    b	.L0d94d060
    mov.s	$f9,$f4
.L0d94d05c:
    neg.s	$f9,$f4
.L0d94d060:
    sub.s	$f5,$f6,$f20
    cvt.d.s	$f3,$f5
    c.le.d $f30,$f3
    bc1f .L0d94d07c
    # Line 718
    mov.s	$f6,$f5
    b	.L0d94d084
    sd	$s1,800($sp)
.L0d94d07c:
    neg.s	$f6,$f5
    sd	$s1,800($sp)
.L0d94d084:
    c.le.s $f6,$f9
    mov.s	$f7,$f9
    ldc1	$f8,_lit8_3ff0000000000000
    bc1f .L0d94d128
    andi	$s1,$a4,0x4
    cvt.d.s	$f10,$f4
    c.eq.d $f10,$f30
    sdc1	$f4,640($sp)
    sdc1	$f9,632($sp)
    bc1f .L0d94d0b8
    sdc1	$f5,648($sp)
    b	.L0d94d0c0
    lwc1	$f6,_lit_3f800000
.L0d94d0b8:
    # Line 723
    div.d	$f6,$f8,$f10
    cvt.s.d	$f6,$f6
.L0d94d0c0:
    # Line 726
    trunc.w.s	$f7,$f22
    cvt.s.w	$f7,$f7
    sd	$s4,768($sp)
    sub.s	$f7,$f22,$f7
    # Line 730
    li	$s4,1
    # Line 726
    beqz	$s1,.L0d94deac
    sdc1	$f7,664($sp)
    # Line 734
    lwc1	$f27,136($a2)
    lwc1	$f29,136($a1)
    sub.s	$f27,$f27,$f29
    # Line 736
    lwc1	$f29,_lit_42800000
    # Line 734
    mul.s	$f27,$f6,$f27
    # Line 736
    mul.s	$f12,$f29,$f27
    cvt.d.s	$f12,$f12
    sdc1	$f12,48($sp)
    ldc1	$f11,48($sp)
    trunc.l.d	$f11,$f11
    # Line 734
    swc1	$f27,40($sp)
    # Line 736
    sdc1	$f11,56($sp)
    ldc1	$f9,56($sp)
    # Line 737
    sd	$zero,64($sp)
    ldc1	$f10,64($sp)
    sdc1	$f10,8664($s0)
    # Line 734
    li	$s4,1
    # Line 737
    b	.L0d94d1a4
    # Line 736
    sdc1	$f9,8656($s0)
.L0d94d128:
    # Line 728
    cvt.d.s	$f6,$f5
    div.d	$f6,$f8,$f6
    # Line 730
    trunc.w.s	$f31,$f20
    cvt.s.w	$f31,$f31
    sdc1	$f5,648($sp)
    sdc1	$f9,632($sp)
    sdc1	$f4,640($sp)
    sd	$s4,768($sp)
    sub.s	$f31,$f20,$f31
    move	$s4,$zero
    sdc1	$f31,664($sp)
    beqz	$s1,.L0d94deb4
    # Line 728
    cvt.s.d	$f6,$f6
    # Line 730
    lwc1	$f29,136($a1)
    lwc1	$f27,136($a2)
    sub.s	$f27,$f27,$f29
    # Line 740
    lwc1	$f29,_lit_42800000
    # Line 730
    mul.s	$f27,$f6,$f27
    # Line 740
    mul.s	$f11,$f29,$f27
    # Line 739
    sd	$zero,72($sp)
    ldc1	$f10,72($sp)
    # Line 740
    cvt.d.s	$f11,$f11
    sdc1	$f11,80($sp)
    ldc1	$f9,80($sp)
    # Line 739
    sdc1	$f10,8656($s0)
    # Line 730
    swc1	$f27,40($sp)
    # Line 740
    trunc.l.d	$f9,$f9
    sdc1	$f9,88($sp)
    ldc1	$f7,88($sp)
    # Line 730
    move	$s4,$zero
    # Line 740
    sdc1	$f7,8664($s0)
.L0d94d1a4:
    # Line 742
    ldc1	$f2,664($sp)
    lwc1	$f1,136($a1)
    madd.s	$f1,$f1,$f2,$f27
    # Line 743
    mul.s	$f2,$f29,$f1
    cvt.d.s	$f2,$f2
    sdc1	$f2,104($sp)
    ldc1	$f0,104($sp)
    # Line 742
    swc1	$f1,96($sp)
    # Line 743
    trunc.l.d	$f0,$f0
    sdc1	$f0,112($sp)
    ldc1	$f31,112($sp)
    sd	$s3,784($sp)
    sdc1	$f31,8648($s0)
.L0d94d1d8:
    andi	$s3,$a4,0x2000
    cvt.d.s	$f3,$f6
    beqz	$s3,.L0d94d264
    sdc1	$f3,656($sp)
    # Line 747
    lwc1	$f7,176($a1)
    lwc1	$f9,176($a2)
    ldc1	$f10,_lit8_406fe00000000000
    cvt.d.s	$f7,$f7
    cvt.d.s	$f9,$f9
    mul.d	$f7,$f7,$f10
    msub.d	$f7,$f7,$f9,$f10
    mul.d	$f5,$f3,$f7
    lwc1	$f9,_lit_45800000
    cvt.s.d	$f5,$f5
    mul.s	$f4,$f5,$f9
    nop
    swc1	$f5,120($sp)
    beqz	$s4,.L0d94de34
    trunc.w.s	$f4,$f4
    # Line 749
    swc1	$f4,124($sp)
    lw	$v1,124($sp)
    # Line 750
    sw	$zero,128($sp)
    lw	$a3,128($sp)
    sw	$a3,8584($s0)
    # Line 749
    sw	$v1,8576($s0)
.L0d94d23c:
    # Line 755
    lwc1	$f12,176($a1)
    cvt.d.s	$f12,$f12
    mul.d	$f12,$f12,$f10
    cvt.s.d	$f12,$f12
    # Line 756
    mul.s	$f11,$f9,$f12
    trunc.w.s	$f11,$f11
    # Line 755
    swc1	$f12,140($sp)
    # Line 756
    swc1	$f11,144($sp)
    lw	$a7,144($sp)
    sw	$a7,8568($s0)
.L0d94d264:
    dsll32	$t9,$a4,0xe
    lui	$s2,0x2
    bgez	$t9,.L0d94dc70
    and	$s2,$a4,$s2
    # Line 760
    lw	$at,8($a2)
    lw	$ra,8($a1)
    # Line 763
    lwc1	$f12,12($at)
    lwc1	$f13,12($ra)
    # Line 762
    lwc1	$f11,8($at)
    lwc1	$f15,8($ra)
    # Line 761
    lwc1	$f14,4($at)
    lwc1	$f16,4($ra)
    # Line 763
    sub.s	$f12,$f12,$f13
    # Line 760
    lwc1	$f13,0($at)
    # Line 762
    sub.s	$f11,$f11,$f15
    # Line 763
    lwc1	$f9,_lit_45800000
    mul.s	$f12,$f6,$f12
    # Line 760
    lwc1	$f15,0($ra)
    # Line 762
    mul.s	$f11,$f6,$f11
    # Line 763
    mul.s	$f4,$f12,$f9
    # Line 761
    sub.s	$f14,$f14,$f16
    # Line 763
    mul.s	$f10,$f11,$f9
    # Line 760
    sub.s	$f13,$f13,$f15
    # Line 761
    mul.s	$f14,$f6,$f14
    # Line 760
    mul.s	$f13,$f6,$f13
    # Line 763
    trunc.w.s	$f4,$f4
    mul.s	$f7,$f14,$f9
    trunc.w.s	$f10,$f10
    mul.s	$f5,$f13,$f9
    swc1	$f12,160($sp)
    trunc.w.s	$f7,$f7
    # Line 762
    swc1	$f11,156($sp)
    # Line 763
    trunc.w.s	$f5,$f5
    # Line 761
    swc1	$f14,152($sp)
    # Line 760
    swc1	$f13,148($sp)
    # Line 763
    beqz	$s4,.L0d94de50
    nop
    # Line 766
    swc1	$f5,168($sp)
    swc1	$f7,172($sp)
    ldc1	$f17,168($sp)
    sdc1	$f17,8432($s0)
    # Line 767
    swc1	$f10,176($sp)
    swc1	$f4,180($sp)
    ldc1	$f14,176($sp)
    # Line 768
    sd	$zero,184($sp)
    ldc1	$f15,184($sp)
    # Line 769
    sd	$zero,192($sp)
    ldc1	$f16,192($sp)
    sdc1	$f16,8456($s0)
    # Line 768
    sdc1	$f15,8440($s0)
    # Line 767
    sdc1	$f14,8448($s0)
.L0d94d330:
    # Line 777
    lw	$v0,8($a1)
    lwc1	$f25,0($v0)
    # Line 778
    lwc1	$f23,4($v0)
    # Line 777
    swc1	$f25,232($sp)
    # Line 778
    swc1	$f23,236($sp)
    # Line 779
    lwc1	$f21,8($v0)
    # Line 781
    mul.s	$f25,$f9,$f25
    # Line 780
    lwc1	$f19,12($v0)
    # Line 781
    mul.s	$f23,$f9,$f23
    # Line 779
    swc1	$f21,240($sp)
    # Line 781
    trunc.w.s	$f25,$f25
    # Line 780
    swc1	$f19,244($sp)
    # Line 781
    trunc.w.s	$f23,$f23
    swc1	$f25,248($sp)
    swc1	$f23,252($sp)
    # Line 782
    mul.s	$f21,$f9,$f21
    # Line 781
    ldc1	$f23,248($sp)
    # Line 782
    mul.s	$f19,$f9,$f19
    trunc.w.s	$f21,$f21
    # Line 781
    sdc1	$f23,8416($s0)
    # Line 782
    trunc.w.s	$f19,$f19
    swc1	$f21,256($sp)
    swc1	$f19,260($sp)
    ldc1	$f18,256($sp)
    sdc1	$f18,8424($s0)
.L0d94d394:
    # Line 788
    beqz	$a5,.L0d94d4ac
    lw	$a0,24($sp)
    lui	$t3,0x7
    li	$a7,-64
    lw	$a5,28($sp)
    ori	$t3,$t3,0xffff
    mtc1	$zero,$f4
    and	$a0,$a0,$t3
    beqz	$s4,.L0d94dd00
    and	$a5,$a5,$t3
    ldc1	$f27,632($sp)
    c.eq.s $f27,$f4
    bc1f .L0d94d3d4
    # Line 809
    ldc1	$f29,648($sp)
    # Line 788
    b	.L0d94d3e8
    move	$a4,$zero
.L0d94d3d4:
    # Line 809
    lwc1	$f31,_lit_46800000
    mul.s	$f29,$f29,$f6
    mul.s	$f29,$f29,$f31
    trunc.w.s	$f29,$f29
    mfc1	$a4,$f29
.L0d94d3e8:
    ldc1	$f31,640($sp)
    li	$t2,1
    # Line 827
    addiu	$ra,$a0,31
    # Line 809
    c.le.s $f4,$f31
    # Line 825
    addiu	$t9,$a0,32
    # Line 827
    and	$ra,$a7,$ra
    # Line 825
    and	$t9,$a7,$t9
    # Line 809
    movf	$t2,$zero,$fcc5
    movz	$t9,$ra,$t2
    # Line 830
    subu	$t9,$t9,$a0
    # Line 844
    mult	$t9,$a4
    sll	$t9,$a5,0x8
    mflo	$t1
    sra	$t1,$t1,0x6
    beqz	$s4,.L0d94dde4
    addu	$t1,$t1,$t9
.L0d94d428:
    # Line 851
    lw	$t0,32($sp)
    # Line 850
    addiu	$a7,$a0,32
    # Line 851
    and	$t0,$t0,$t3
    # Line 850
    andi	$a7,$a7,0x3f
    # Line 851
    addiu	$t0,$t0,32
    # Line 857
    beqz	$t2,.L0d94de18
    # Line 851
    andi	$t0,$t0,0x3f
.L0d94d444:
    # Line 860
    sltiu	$t2,$t0,1
.L0d94d448:
    # Line 858
    li	$a5,64
    subu	$a0,$a5,$a7
    # Line 860
    movz	$a5,$t0,$t2
.L0d94d454:
    # Line 872
    lw	$t9,276($sp)
    li	$at,0xff00
    nor	$at,$at,$zero
    andi	$ra,$a0,0xff
    and	$t9,$t9,$at
    sll	$ra,$ra,0x8
    # Line 870
    lw	$at,272($sp)
    # Line 872
    andi	$t3,$a5,0xff
    or	$t9,$t9,$ra
    # Line 870
    andi	$at,$at,0xffff
    sll	$v1,$a4,0x10
    # Line 872
    li	$v0,-256
    # Line 870
    or	$at,$at,$v1
    andi	$ra,$t1,0xffff
    and	$at,$t8,$at
    # Line 872
    and	$t9,$t9,$v0
    # Line 870
    or	$ra,$ra,$at
    # Line 873
    sw	$ra,280($sp)
    # Line 872
    or	$t3,$t3,$t9
    # Line 873
    sw	$t3,284($sp)
    ldc1	$f0,280($sp)
    sdc1	$f0,8592($s0)
.L0d94d4ac:
    # Line 878
    lwc1	$f7,60($a1)
    # Line 881
    cvt.d.s	$f1,$f7
    c.eq.d $f1,$f8
    bc1f .L0d94d4cc
    # Line 879
    lwc1	$f6,60($a2)
    # Line 881
    cvt.d.s	$f2,$f6
    c.eq.d $f2,$f8
    bc1t .L0d94dc30
.L0d94d4cc:
    lwc1	$f4,_lit_37000000
    abs.s	$f3,$f7
    c.lt.s	$f3,$f4
    bc1f	.L0d94d4f0
    mtc1	$zero,$f9
    # Line 882
    lwc1	$f5,_lit_b7000000
    # Line 881
    c.lt.s $f7,$f9
    movf.s	$f5,$f4,$fcc1
    # Line 882
    mov.s	$f7,$f5
.L0d94d4f0:
    abs.s	$f10,$f6
    c.lt.s $f10,$f4
    bc1f .L0d94d518
    # Line 888
    lwc1	$f10,_lit_3f800000
    # Line 882
    mtc1	$zero,$f12
    # Line 883
    lwc1	$f11,_lit_b7000000
    # Line 882
    c.lt.s $f6,$f12
    movf.s	$f11,$f4,$fcc3
    # Line 883
    mov.s	$f6,$f11
    # Line 888
    lwc1	$f10,_lit_3f800000
.L0d94d518:
    # Line 889
    div.s	$f11,$f10,$f6
    # Line 888
    div.s	$f10,$f10,$f7
    lwc1	$f4,48($a1)
    # Line 885
    lwc1	$f28,140($a2)
    # Line 884
    lwc1	$f26,140($a1)
    # Line 889
    lwc1	$f5,48($a2)
    lw	$v0,232($s6)
    # Line 885
    mul.s	$f28,$f28,$f6
    # Line 884
    mul.s	$f26,$f26,$f7
    # Line 885
    cvt.d.s	$f28,$f28
    # Line 889
    mul.s	$f5,$f5,$f11
    move	$a0,$v0
    # Line 884
    cvt.d.s	$f26,$f26
    # Line 889
    beq	$v0,$a6,.L0d94d56c
    # Line 888
    mul.s	$f4,$f4,$f10
    # Line 892
    lwc1	$f13,52($a2)
    # Line 891
    lwc1	$f12,52($a1)
    # Line 892
    mul.s	$f13,$f13,$f11
    swc1	$f13,292($sp)
    # Line 891
    mul.s	$f12,$f12,$f10
    swc1	$f12,288($sp)
.L0d94d56c:
    # Line 899
    lw	$v1,4($s6)
    li	$a2,10497
    beq	$a2,$v1,.L0d94dad8
    # Line 912
    lwc1	$f16,_lit_3f800000
    # Line 913
    add.s	$f5,$f5,$f16
    # Line 912
    add.s	$f4,$f4,$f16
    # Line 913
    c.lt.s $f5,$f4
    # Line 914
    mov.s	$f15,$f4
    lwc1	$f14,_lit_40e00000
    movf.s	$f15,$f5,$fcc5
    c.lt.s $f14,$f15
    bc1t .L0d94d5bc
    li	$a1,1
    c.lt.s $f4,$f5
    mov.s	$f17,$f4
    lwc1	$f18,_lit_c0e00000
    movf.s	$f17,$f5,$fcc7
    c.lt.s $f17,$f18
    bc1f .L0d94dc68
    li	$a1,1
.L0d94d5bc:
    beq	$a0,$a6,.L0d94db54
    sd	$a1,680($sp)
.L0d94d5c4:
    # Line 919
    lw	$a4,8($s6)
    lwc1	$f6,288($sp)
    beq	$a2,$a4,.L0d94dd6c
    lwc1	$f7,292($sp)
    # Line 929
    lwc1	$f23,_lit_3f800000
    # Line 930
    add.s	$f7,$f7,$f23
    # Line 929
    add.s	$f6,$f6,$f23
    # Line 931
    mov.s	$f21,$f6
    # Line 930
    c.lt.s $f7,$f6
    # Line 931
    lwc1	$f19,_lit_40e00000
    movf.s	$f21,$f7,$fcc1
    c.lt.s	$f19,$f21
    # Line 930
    swc1	$f7,292($sp)
    mov.s	$f11,$f6
    # Line 929
    swc1	$f6,288($sp)
    # Line 931
    bc1t	.L0d94d624
    # Line 930
    mov.s	$f10,$f7
    # Line 931
    mov.s	$f25,$f6
    c.lt.s $f6,$f7
    lwc1	$f27,_lit_c0e00000
    movf.s	$f25,$f7,$fcc3
    c.lt.s $f25,$f27
    bc1f .L0d94d628
    move	$s6,$zero
.L0d94d624:
    li	$s6,1
.L0d94d628:
    # Line 936
    c.le.d $f26,$f30
    bc1t .L0d94d644
    # Line 937
    mov.d	$f12,$f26
    # Line 936
    c.le.d $f28,$f30
    bc1f .L0d94d68c
    # Line 942
    mov.d	$f6,$f26
    # Line 937
    mov.d	$f12,$f26
.L0d94d644:
    # Line 936
    c.lt.d $f26,$f28
    # Line 938
    # lw $t9, -28804($gp) # &__glFloor
    movf.d	$f12,$f28,$fcc6
    sdc1	$f5,624($sp)
    sdc1	$f4,616($sp)
    jal	__glFloor
    cvt.s.d	$f12,$f12
    # Line 939
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    lwc1	$f13,_lit_37000000
    sub.s	$f13,$f13,$f14
    cvt.d.s	$f13,$f13
    ldc1	$f4,616($sp)
    ldc1	$f5,624($sp)
    # Line 940
    add.d	$f28,$f13,$f28
    ldc1	$f8,_lit8_3ff0000000000000
    # Line 939
    add.d	$f26,$f13,$f26
    # Line 942
    mov.d	$f6,$f26
.L0d94d68c:
    # Line 940
    c.lt.d	$f28,$f26
    movf.d	$f6,$f28,$fcc0
    # Line 943
    c.eq.d $f6,$f30
    bc1t .L0d94d6b8
    nop
    c.eq.d $f6,$f8
    bc1t .L0d94d6b8
    nop
    # Line 945
    div.d	$f15,$f8,$f6
    # Line 946
    mul.d	$f28,$f15,$f28
    # Line 945
    mul.d	$f26,$f15,$f26
.L0d94d6b8:
    # Line 962
    cvt.d.s	$f21,$f5
    cvt.d.s	$f7,$f4
    mul.d	$f21,$f21,$f28
    # Line 967
    lwc1	$f18,292($sp)
    # Line 962
    nmsub.d	$f21,$f21,$f7,$f26
    ldc1	$f19,656($sp)
    # Line 967
    lwc1	$f9,288($sp)
    # Line 962
    ldc1	$f8,664($sp)
    # Line 967
    cvt.d.s	$f18,$f18
    # Line 962
    mul.d	$f7,$f7,$f26
    # Line 966
    ld	$t9,680($sp)
    li	$t8,4
    li	$t3,1
    # Line 967
    cvt.d.s	$f9,$f9
    mul.d	$f18,$f18,$f28
    # Line 966
    dsll32	$t3,$t3,0xb
    move	$ra,$t9
    # Line 962
    cvt.d.s	$f8,$f8
    mul.d	$f21,$f19,$f21
    # Line 966
    movn	$ra,$t8,$t9
    # Line 967
    nmsub.d	$f18,$f18,$f9,$f26
    # Line 966
    dsrav	$ra,$t3,$ra
    # Line 962
    madd.d	$f7,$f7,$f8,$f21
    # Line 966
    dmtc1	$ra,$f16
    # Line 957
    andi	$ra,$s6,0x1
    andi	$t9,$t9,0x1
    sll	$ra,$ra,0x1
    # Line 966
    cvt.d.l	$f16,$f16
    # Line 957
    or	$t9,$t9,$ra
    sw	$t9,296($sp)
    # Line 967
    mul.d	$f18,$f19,$f18
    # Line 957
    lw	$t0,296($sp)
    # Line 966
    mul.d	$f23,$f16,$f7
    # Line 967
    mul.d	$f9,$f9,$f26
    # Line 966
    sdc1	$f23,304($sp)
    # Line 967
    movz	$t8,$s6,$s6
    madd.d	$f9,$f9,$f8,$f18
    # Line 966
    ldc1	$f25,304($sp)
    # Line 967
    dsrav	$t3,$t3,$t8
    dmtc1	$t3,$f17
    # Line 966
    trunc.l.d	$f25,$f25
    # Line 967
    cvt.d.l	$f17,$f17
    # Line 966
    dmfc1	$t2,$f25
    # Line 964
    sub.d	$f23,$f28,$f26
    # Line 967
    mul.d	$f9,$f17,$f9
    # Line 966
    daddiu	$t2,$t2,2048
    sd	$t2,312($sp)
    # Line 964
    mul.d	$f19,$f19,$f23
    # Line 966
    ldc1	$f29,312($sp)
    # Line 967
    sdc1	$f9,320($sp)
    # Line 964
    madd.d	$f8,$f26,$f8,$f19
    # Line 967
    ldc1	$f0,320($sp)
    # Line 968
    ldc1	$f25,_lit8_41c0000000000000
    # Line 967
    trunc.l.d	$f0,$f0
    dmfc1	$t1,$f0
    # Line 968
    mul.d	$f31,$f25,$f8
    # Line 967
    daddiu	$t1,$t1,2048
    sd	$t1,328($sp)
    # Line 968
    cvt.s.d	$f31,$f31
    # Line 967
    ldc1	$f23,328($sp)
    # Line 968
    swc1	$f31,336($sp)
    lwc1	$f27,336($sp)
    trunc.w.s	$f27,$f27
    # Line 957
    sw	$t0,8500($s0)
    # Line 966
    sdc1	$f29,8480($s0)
    # Line 968
    mfc1	$a7,$f27
    # Line 967
    sdc1	$f23,8488($s0)
    # Line 968
    addiu	$a7,$a7,2048
    sw	$a7,340($sp)
    lw	$a6,340($sp)
    sw	$a6,8496($s0)
    # Line 970
    lw	$a5,1792($s5)
    andi	$a5,$a5,0x100
    beqz	$a5,.L0d94db68
    nop
    beqz	$s4,.L0d94debc
    ldc1	$f23,632($sp)
    ldc1	$f27,_lit8_405fc00000000000
    cvt.d.s	$f23,$f23
    c.le.d $f23,$f27
    bc1t .L0d94db70
    nop
    # Line 992
    mul.d	$f6,$f16,$f21
    sdc1	$f6,344($sp)
    ldc1	$f4,344($sp)
    # Line 1009
    lwc1	$f9,_lit_45800000
    lwc1	$f29,_lit_42800000
    # Line 992
    trunc.l.d	$f4,$f4
    sdc1	$f4,352($sp)
    # Line 993
    mul.d	$f3,$f17,$f18
    # Line 992
    ldc1	$f2,352($sp)
    # Line 993
    sdc1	$f3,360($sp)
    ldc1	$f1,360($sp)
    # Line 1009
    lwc1	$f4,_lit_c2fe0000
    ldc1	$f3,640($sp)
    # Line 994
    mul.d	$f0,$f25,$f19
    # Line 992
    sdc1	$f2,8504($s0)
    # Line 993
    trunc.l.d	$f1,$f1
    sdc1	$f1,368($sp)
    # Line 994
    cvt.s.d	$f0,$f0
    # Line 993
    ldc1	$f31,368($sp)
    # Line 1009
    dmtc1	$zero,$f23
    # Line 994
    swc1	$f0,376($sp)
    # Line 1009
    cvt.d.s	$f6,$f3
    # Line 994
    lwc1	$f30,376($sp)
    # Line 1009
    lwc1	$f1,_lit_42fe0000
    c.lt.d $f6,$f23
    # Line 1007
    ldc1	$f23,648($sp)
    # Line 993
    sdc1	$f31,8520($s0)
    # Line 994
    trunc.w.s	$f30,$f30
    swc1	$f30,380($sp)
    # Line 1009
    lwc1	$f27,40($sp)
    lwc1	$f10,96($sp)
    lwc1	$f12,232($sp)
    lwc1	$f30,148($sp)
    lwc1	$f15,236($sp)
    lwc1	$f31,152($sp)
    lwc1	$f14,240($sp)
    lwc1	$f26,156($sp)
    lwc1	$f11,244($sp)
    lwc1	$f13,140($sp)
    # Line 994
    lw	$t8,380($sp)
    # Line 995
    sd	$zero,384($sp)
    ldc1	$f0,384($sp)
    # Line 996
    sd	$zero,392($sp)
    ldc1	$f2,392($sp)
    # Line 997
    sw	$zero,400($sp)
    lw	$t9,400($sp)
    sw	$t9,8540($s0)
    # Line 1009
    lwc1	$f28,160($sp)
    # Line 994
    sw	$t8,8536($s0)
    # Line 1009
    sdc1	$f28,672($sp)
    li	$a0,1
    lwc1	$f28,120($sp)
    movf	$a0,$zero,$fcc3
    # Line 1007
    div.s	$f23,$f23,$f3
    # Line 996
    sdc1	$f2,8528($s0)
    # Line 1009
    movz.s	$f4,$f1,$a0
    b	.L0d94d9e0
    # Line 995
    sdc1	$f0,8512($s0)
.L0d94d8e8:
    # Line 1047
    beqz	$s3,.L0d94da68
    nop
.L0d94d8f0:
    # Line 1051
    madd.s	$f13,$f13,$f4,$f28
    # Line 1052
    mul.s	$f0,$f9,$f13
    trunc.w.s	$f0,$f0
    swc1	$f0,424($sp)
    lw	$ra,424($sp)
    beqz	$s2,.L0d94d960
    sw	$ra,8568($s0)
.L0d94d90c:
    # Line 1056
    madd.s	$f12,$f12,$f4,$f30
    # Line 1057
    madd.s	$f15,$f15,$f4,$f31
    # Line 1059
    ldc1	$f0,672($sp)
    # Line 1058
    madd.s	$f14,$f14,$f4,$f26
    # Line 1059
    madd.s	$f11,$f11,$f4,$f0
    # Line 1060
    mul.s	$f6,$f9,$f12
    mul.s	$f5,$f9,$f15
    trunc.w.s	$f6,$f6
    trunc.w.s	$f5,$f5
    swc1	$f6,432($sp)
    swc1	$f5,436($sp)
    # Line 1061
    mul.s	$f3,$f9,$f14
    # Line 1060
    ldc1	$f5,432($sp)
    # Line 1061
    mul.s	$f2,$f9,$f11
    trunc.w.s	$f3,$f3
    # Line 1060
    sdc1	$f5,8416($s0)
    # Line 1061
    swc1	$f3,440($sp)
    trunc.w.s	$f2,$f2
    swc1	$f2,444($sp)
    ldc1	$f1,440($sp)
    sdc1	$f1,8424($s0)
.L0d94d960:
    # Line 1064
    cvt.d.s	$f0,$f4
.L0d94d964:
    madd.d	$f7,$f7,$f0,$f21
    # Line 1068
    mul.d	$f3,$f16,$f7
    sdc1	$f3,448($sp)
    ldc1	$f2,448($sp)
    # Line 1069
    madd.d	$f1,$f7,$f0,$f18
    # Line 1068
    trunc.l.d	$f2,$f2
    dmfc1	$a1,$f2
    daddiu	$a1,$a1,2048
    sd	$a1,456($sp)
    # Line 1069
    mul.d	$f1,$f17,$f1
    # Line 1068
    ldc1	$f3,456($sp)
    # Line 1069
    sdc1	$f1,464($sp)
    # Line 1066
    madd.d	$f8,$f8,$f0,$f19
    # Line 1069
    ldc1	$f6,464($sp)
    trunc.l.d	$f6,$f6
    dmfc1	$v1,$f6
    # Line 1070
    mul.d	$f5,$f25,$f8
    # Line 1069
    daddiu	$v1,$v1,2048
    sd	$v1,472($sp)
    # Line 1070
    cvt.s.d	$f5,$f5
    # Line 1069
    ldc1	$f1,472($sp)
    # Line 1070
    swc1	$f5,480($sp)
    lwc1	$f2,480($sp)
    trunc.w.s	$f2,$f2
    # Line 1068
    sdc1	$f3,8480($s0)
    # Line 1070
    mfc1	$v0,$f2
    # Line 1069
    sdc1	$f1,8488($s0)
    # Line 1070
    addiu	$v0,$v0,2048
    sw	$v0,484($sp)
    lw	$at,484($sp)
    sw	$at,8496($s0)
.L0d94d9e0:
    # Line 1020
    lw	$a4,24($sp)
    # Line 1021
    lw	$a5,28($sp)
    # Line 1018
    madd.s	$f6,$f20,$f23,$f4
    # Line 1021
    sw	$a5,8324($s0)
    # Line 1017
    add.s	$f5,$f4,$f22
    swc1	$f5,32($sp)
    # Line 1020
    sw	$a4,8320($s0)
    # Line 1022
    lw	$a3,32($sp)
    # Line 1018
    swc1	$f6,36($sp)
    # Line 1022
    sw	$a3,8328($s0)
    # Line 1039
    mov.s	$f22,$f5
    # Line 1023
    lw	$a2,36($sp)
    # Line 1040
    mov.s	$f20,$f6
    # Line 1023
    beqz	$a0,.L0d94da78
    sw	$a2,10380($s0)
    # Line 1026
    c.le.s $f5,$f24
    bc1t .L0d94da98
    ld	$ra,776($sp)
    # Line 1029
    sub.s	$f0,$f24,$f5
    c.lt.s $f4,$f0
    movt.s	$f4,$f0,$fcc5
.L0d94da34:
    # Line 1040
    swc1	$f6,28($sp)
    beqz	$s1,.L0d94d8e8
    # Line 1039
    swc1	$f5,24($sp)
    # Line 1046
    madd.s	$f10,$f10,$f4,$f27
    # Line 1047
    mul.s	$f3,$f29,$f10
    cvt.d.s	$f3,$f3
    sdc1	$f3,408($sp)
    ldc1	$f2,408($sp)
    trunc.l.d	$f2,$f2
    sdc1	$f2,416($sp)
    ldc1	$f1,416($sp)
    bnez	$s3,.L0d94d8f0
    sdc1	$f1,8648($s0)
.L0d94da68:
    # Line 1052
    bnez	$s2,.L0d94d90c
    nop
    b	.L0d94d964
    # Line 1064
    cvt.d.s	$f0,$f4
.L0d94da78:
    # Line 1032
    c.le.s $f24,$f5
    bc1t .L0d94da98
    ld	$ra,776($sp)
    # Line 1035
    sub.s	$f0,$f24,$f5
    c.lt.s $f0,$f4
    b	.L0d94da34
    movt.s	$f4,$f0,$fcc7
    ld	$ra,776($sp)
.L0d94da98:
    ld	$s4,768($sp)
    ld	$s1,800($sp)
    ld	$s2,792($sp)
    ld	$s3,784($sp)
    ldc1	$f30,760($sp)
    ldc1	$f28,752($sp)
    ldc1	$f24,744($sp)
    ldc1	$f22,736($sp)
    ldc1	$f26,728($sp)
    ldc1	$f20,720($sp)
    # Line 1073
    ld	$gp,704($sp)
    ld	$s0,688($sp)
    ld	$s5,696($sp)
    ld	$s6,712($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0d94dad8:
    sdc1	$f5,624($sp)
    # Line 899
    ldc1	$f1,624($sp)
    sdc1	$f4,616($sp)
    ldc1	$f12,616($sp)
    # Line 906
    # lw $t9, -28804($gp) # &__glFloor
    # Line 899
    c.lt.s	$f12,$f1
    # Line 906
    jal	__glFloor
    movf.s	$f12,$f1,$fcc0
    # Line 908
    mtc1	$v0,$f15
    cvt.s.w	$f15,$f15
    lwc1	$f16,_lit_bf800000
    add.s	$f15,$f15,$f16
    trunc.w.s	$f15,$f15
    cvt.s.w	$f15,$f15
    # Line 909
    ldc1	$f5,624($sp)
    # Line 908
    ldc1	$f4,616($sp)
    # Line 909
    sub.s	$f5,$f5,$f15
    # Line 908
    sub.s	$f4,$f4,$f15
    # Line 910
    mov.s	$f14,$f4
    # Line 909
    c.lt.s $f5,$f4
    # Line 910
    lwc1	$f13,_lit_41700000
    movf.s	$f14,$f5,$fcc2
    lw	$a0,232($s6)
    c.lt.s $f13,$f14
    li	$a7,1
    # Line 914
    li	$a6,1
    ldc1	$f8,_lit8_3ff0000000000000
    # Line 910
    movf	$a7,$zero,$fcc1
    li	$a2,10497
    # Line 914
    bne	$a0,$a6,.L0d94d5c4
    sd	$a7,680($sp)
.L0d94db54:
    # Line 919
    lwc1	$f16,_lit_3f800000
    swc1	$f16,292($sp)
    move	$s6,$zero
    b	.L0d94d628
    swc1	$f16,288($sp)
.L0d94db68:
    # Line 970
    beqz	$s4,.L0d94dec0
    ld	$s1,800($sp)
.L0d94db70:
    ld	$s3,784($sp)
    ld	$s2,792($sp)
    ld	$s1,800($sp)
    ld	$s4,768($sp)
    ldc1	$f20,720($sp)
    ldc1	$f26,728($sp)
    ldc1	$f22,736($sp)
    # Line 973
    mul.d	$f1,$f16,$f21
    sdc1	$f1,488($sp)
    ldc1	$f0,488($sp)
    ldc1	$f24,744($sp)
    ldc1	$f28,752($sp)
    ldc1	$f30,760($sp)
    trunc.l.d	$f0,$f0
    sdc1	$f0,496($sp)
    # Line 974
    mul.d	$f31,$f17,$f18
    # Line 973
    ldc1	$f29,496($sp)
    # Line 974
    sdc1	$f31,504($sp)
    ldc1	$f27,504($sp)
    # Line 1073
    ld	$gp,704($sp)
    ld	$s5,696($sp)
    # Line 975
    mul.d	$f25,$f25,$f19
    # Line 973
    sdc1	$f29,8504($s0)
    # Line 974
    trunc.l.d	$f27,$f27
    sdc1	$f27,512($sp)
    # Line 975
    cvt.s.d	$f25,$f25
    # Line 974
    ldc1	$f23,512($sp)
    # Line 975
    swc1	$f25,520($sp)
    lwc1	$f21,520($sp)
    # Line 1073
    ld	$s6,712($sp)
    ld	$ra,776($sp)
    # Line 974
    sdc1	$f23,8520($s0)
    # Line 975
    trunc.w.s	$f21,$f21
    swc1	$f21,524($sp)
    lw	$t0,524($sp)
    # Line 976
    sd	$zero,528($sp)
    ldc1	$f18,528($sp)
    # Line 977
    sd	$zero,536($sp)
    ldc1	$f19,536($sp)
    # Line 978
    sw	$zero,544($sp)
    lw	$t1,544($sp)
    sw	$t1,10588($s0)
    # Line 975
    sw	$t0,8536($s0)
    # Line 977
    sdc1	$f19,8528($s0)
    # Line 976
    sdc1	$f18,8512($s0)
    # Line 1073
    ld	$s0,688($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0d94dc30:
    # Line 895
    lwc1	$f26,140($a1)
    # Line 896
    lwc1	$f28,140($a2)
    # Line 898
    lw	$t2,232($s6)
    lwc1	$f5,48($a2)
    # Line 896
    cvt.d.s	$f28,$f28
    # Line 897
    lwc1	$f4,48($a1)
    # Line 898
    move	$a0,$t2
    beq	$t2,$a6,.L0d94d56c
    # Line 895
    cvt.d.s	$f26,$f26
    # Line 901
    lwc1	$f31,52($a2)
    # Line 900
    lwc1	$f29,52($a1)
    # Line 901
    swc1	$f31,292($sp)
    b	.L0d94d56c
    # Line 900
    swc1	$f29,288($sp)
.L0d94dc68:
    b	.L0d94d5bc
    # Line 914
    move	$a1,$zero
.L0d94dc70:
    # Line 782
    lui	$a0,0x1
    addu	$a0,$s5,$a0
    lw	$t3,-32644($a0)
    andi	$t3,$t3,0x2
    bnez	$t3,.L0d94d394
    nop
    # Line 785
    lw	$t2,8($a2)
    lwc1	$f3,0($t2)
    lwc1	$f1,8($t2)
    lwc1	$f2,4($t2)
    lwc1	$f0,12($t2)
    trunc.w.s	$f3,$f3
    trunc.w.s	$f1,$f1
    trunc.w.s	$f2,$f2
    mfc1	$t1,$f3
    trunc.w.s	$f0,$f0
    mfc1	$t0,$f1
    mfc1	$a7,$f2
    sll	$t1,$t1,0x18
    mfc1	$a4,$f0
    sll	$t0,$t0,0x8
    sll	$a7,$a7,0x10
    or	$a7,$a7,$t0
    or	$a4,$a4,$t1
    or	$a4,$a4,$a7
    sw	$a4,264($sp)
    lw	$a3,264($sp)
    sw	$a3,8400($s0)
    # Line 788
    b	.L0d94d394
    sw	$zero,-32640($a0)
.L0d94dce8:
    sdc1	$f30,760($sp)
    sdc1	$f24,744($sp)
    sdc1	$f22,736($sp)
    # Line 703
    li	$a6,1
    b	.L0d94d01c
    sdc1	$f20,720($sp)
.L0d94dd00:
    # Line 812
    ldc1	$f5,640($sp)
    lwc1	$f7,_lit_46800000
    ldc1	$f9,648($sp)
    mul.s	$f5,$f5,$f6
    mul.s	$f5,$f5,$f7
    li	$t2,1
    # Line 835
    addiu	$ra,$a5,31
    # Line 812
    c.le.s $f4,$f9
    # Line 833
    addiu	$t9,$a5,32
    # Line 835
    and	$ra,$a7,$ra
    # Line 812
    trunc.w.s	$f5,$f5
    # Line 833
    and	$t9,$a7,$t9
    # Line 812
    movf	$t2,$zero,$fcc3
    movz	$t9,$ra,$t2
    mfc1	$a4,$f5
    # Line 838
    subu	$t9,$t9,$a5
    # Line 844
    mult	$a4,$t9
    sll	$t9,$a0,0x8
    mflo	$t1
    sra	$t1,$t1,0x6
    ldc1	$f6,640($sp)
    beqz	$s4,.L0d94ddf4
    addu	$t1,$t1,$t9
    c.le.s $f4,$f6
    li	$t2,1
    b	.L0d94d428
    movf	$t2,$zero,$fcc4
.L0d94dd6c:
    mov.s	$f13,$f7
    # Line 923
    # lw $t9, -28804($gp) # &__glFloor
    mov.s	$f12,$f6
    # Line 919
    c.lt.s $f6,$f13
    sdc1	$f5,624($sp)
    sdc1	$f4,616($sp)
    # Line 923
    jal	__glFloor
    movf.s	$f12,$f7,$fcc5
    # Line 925
    mtc1	$v0,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f18,_lit_bf800000
    add.s	$f17,$f17,$f18
    trunc.w.s	$f17,$f17
    cvt.s.w	$f17,$f17
    # Line 926
    lwc1	$f16,292($sp)
    sub.s	$f16,$f16,$f17
    swc1	$f16,292($sp)
    # Line 925
    lwc1	$f15,288($sp)
    sub.s	$f15,$f15,$f17
    # Line 926
    c.lt.s $f16,$f15
    # Line 927
    lwc1	$f14,_lit_41700000
    # Line 925
    swc1	$f15,288($sp)
    movf.s	$f15,$f16,$fcc7
    ldc1	$f4,616($sp)
    ldc1	$f5,624($sp)
    # Line 927
    c.lt.s $f14,$f15
    ldc1	$f8,_lit8_3ff0000000000000
    li	$s6,1
    b	.L0d94d628
    movf	$s6,$zero,$fcc6
.L0d94dde4:
    # Line 850
    ldc1	$f18,648($sp)
    c.le.s	$f4,$f18
    li	$t2,1
    movf	$t2,$zero,$fcc0
.L0d94ddf4:
    # Line 854
    lw	$t0,36($sp)
    # Line 853
    addiu	$a7,$a5,32
    # Line 854
    and	$t0,$t0,$t3
    # Line 853
    andi	$a7,$a7,0x3f
    # Line 854
    addiu	$t0,$t0,32
    # Line 857
    bnez	$t2,.L0d94d444
    # Line 854
    andi	$t0,$t0,0x3f
    b	.L0d94de20
    # Line 864
    move	$a0,$a7
.L0d94de18:
    # Line 857
    beqz	$s4,.L0d94df7c
    # Line 864
    move	$a0,$a7
.L0d94de20:
    sltiu	$t2,$a7,1
    li	$t3,64
    # Line 866
    subu	$a5,$t3,$t0
    b	.L0d94d454
    # Line 864
    movn	$a0,$t3,$t2
.L0d94de34:
    # Line 752
    sw	$zero,132($sp)
    lw	$ra,132($sp)
    sw	$ra,8576($s0)
    # Line 753
    swc1	$f4,136($sp)
    lw	$t9,136($sp)
    b	.L0d94d23c
    sw	$t9,8584($s0)
.L0d94de50:
    # Line 771
    swc1	$f5,200($sp)
    swc1	$f7,204($sp)
    ldc1	$f25,200($sp)
    sdc1	$f25,8440($s0)
    # Line 772
    swc1	$f10,208($sp)
    swc1	$f4,212($sp)
    ldc1	$f19,208($sp)
    # Line 773
    sd	$zero,216($sp)
    ldc1	$f21,216($sp)
    # Line 774
    sd	$zero,224($sp)
    ldc1	$f23,224($sp)
    sdc1	$f23,8448($s0)
    # Line 773
    sdc1	$f21,8432($s0)
    b	.L0d94d330
    # Line 772
    sdc1	$f19,8456($s0)
.L0d94de8c:
    # Line 699
    lw	$v1,32108($s5)
    sw	$v1,8388($s0)
    lw	$v0,32108($s5)
    sw	$v0,8388($a7)
    # Line 702
    lw	$at,32112($s5)
    sw	$at,8384($s0)
    b	.L0d94d01c
    # Line 703
    sb	$a6,29848($s5)
.L0d94deac:
    # Line 730
    b	.L0d94d1d8
    sd	$s3,784($sp)
.L0d94deb4:
    b	.L0d94d1d8
    sd	$s3,784($sp)
.L0d94debc:
    ld	$s1,800($sp)
.L0d94dec0:
    ld	$s2,792($sp)
    ld	$s3,784($sp)
    ld	$s4,768($sp)
    ldc1	$f30,760($sp)
    ldc1	$f28,752($sp)
    ldc1	$f24,744($sp)
    # Line 980
    mul.d	$f6,$f16,$f21
    sdc1	$f6,552($sp)
    ldc1	$f5,552($sp)
    ldc1	$f22,736($sp)
    ldc1	$f26,728($sp)
    ldc1	$f20,720($sp)
    trunc.l.d	$f5,$f5
    sdc1	$f5,560($sp)
    # Line 981
    mul.d	$f4,$f17,$f18
    # Line 980
    ldc1	$f3,560($sp)
    # Line 981
    sdc1	$f4,568($sp)
    ldc1	$f2,568($sp)
    # Line 1073
    ld	$gp,704($sp)
    ld	$s5,696($sp)
    # Line 982
    mul.d	$f1,$f25,$f19
    # Line 980
    sdc1	$f3,8512($s0)
    # Line 981
    trunc.l.d	$f2,$f2
    sdc1	$f2,576($sp)
    # Line 982
    cvt.s.d	$f1,$f1
    # Line 981
    ldc1	$f0,576($sp)
    # Line 982
    swc1	$f1,584($sp)
    lwc1	$f31,584($sp)
    # Line 1073
    ld	$s6,712($sp)
    ld	$ra,776($sp)
    # Line 981
    sdc1	$f0,8528($s0)
    # Line 982
    trunc.w.s	$f31,$f31
    swc1	$f31,588($sp)
    lw	$a0,588($sp)
    # Line 983
    sd	$zero,592($sp)
    ldc1	$f27,592($sp)
    # Line 984
    sd	$zero,600($sp)
    ldc1	$f29,600($sp)
    # Line 985
    sw	$zero,608($sp)
    lw	$a1,608($sp)
    sw	$a1,10584($s0)
    # Line 982
    sw	$a0,8540($s0)
    # Line 984
    sdc1	$f29,8520($s0)
    # Line 983
    sdc1	$f27,8504($s0)
    # Line 1073
    ld	$s0,688($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0d94df7c:
    # Line 857
    ldc1	$f7,648($sp)
    c.le.s $f4,$f7
    li	$a3,1
    movf	$a3,$zero,$fcc1
    bnez	$a3,.L0d94d448
    # Line 860
    sltiu	$t2,$t0,1
    b	.L0d94de20
    # Line 864
    move	$a0,$a7
.end __glCrmTexturedLine

# Function: __glCrmPolygonOffsetLine
# Declared: Line 1081 (Source lines: 1082-1094)
# Address: 0x0d94dfa0 - 0x0d94e020 (Size: 128 bytes, Frame: 48)
.globl __glCrmPolygonOffsetLine
.ent __glCrmPolygonOffsetLine
__glCrmPolygonOffsetLine:
    # Line 1087
    lwc1	$f2,30488($a0)
    # Line 1082
    addiu	$sp,$sp,-48
    sdc1	$f30,0($sp)
    # Line 1085
    lwc1	$f30,136($a1)
    # Line 1086
    lwc1	$f3,136($a2)
    # Line 1087
    add.s	$f2,$f2,$f30
    swc1	$f2,136($a1)
    # Line 1088
    lwc1	$f1,30488($a0)
    lwc1	$f0,136($a2)
    # Line 1082
    sd	$a2,40($sp)
    sd	$gp,32($sp)
    lui	$at,0x10
    # Line 1088
    add.s	$f0,$f0,$f1
    # Line 1082
    addiu	$at,$at,11756
    # Line 1088
    swc1	$f0,136($a2)
    # Line 1082
    addu	$gp,$t9,$at
    # Line 1090
    lw	$t9,12472($a0)
    # Line 1082
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    move	$s8,$a1
    # Line 1090
    jalr	$t9
    # Line 1086
    sdc1	$f3,8($sp)
    # Line 1094
    ld	$gp,32($sp)
    # Line 1092
    swc1	$f30,136($s8)
    # Line 1094
    ld	$s8,24($sp)
    # Line 1093
    ldc1	$f3,8($sp)
    ld	$ra,16($sp)
    ld	$v0,40($sp)
    # Line 1094
    ldc1	$f30,0($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1093
    swc1	$f3,136($v0)
.end __glCrmPolygonOffsetLine

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_405fc00000000000:
    .word 0x405fc000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_41c0000000000000:
    .word 0x41c00000, 0x00000000
_lit_37000000:
    .word 0x37000000
_lit_3f800000:
    .word 0x3f800000
_lit_40e00000:
    .word 0x40e00000
_lit_41700000:
    .word 0x41700000
_lit_42800000:
    .word 0x42800000
_lit_42fe0000:
    .word 0x42fe0000
_lit_45800000:
    .word 0x45800000
_lit_46800000:
    .word 0x46800000
_lit_b7000000:
    .word 0xb7000000
_lit_bf800000:
    .word 0xbf800000
_lit_c0e00000:
    .word 0xc0e00000
_lit_c2fe0000:
    .word 0xc2fe0000

