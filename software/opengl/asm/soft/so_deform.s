# Source: ../soft/so_deform.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_deform.c
# Total Functions: 3

.text

# Function: __glFillDeformationMap3f
# Declared: Line 31 (Source lines: 36-50)
# Address: 0x0d9d0f00 - 0x0d9d0f84 (Size: 132 bytes, Frame: 0)
.globl __glFillDeformationMap3f
.ent __glFillDeformationMap3f
__glFillDeformationMap3f:
    # Line 36
    blez	$a0,.L0d9d0f7c
    sll	$t1,$a5,0x2
    sll	$t3,$a3,0x2
    sll	$t9,$a1,0x2
    move	$t8,$zero
    nop
    nop
    nop
.L0d9d0f20:
    # Line 41
    blez	$a2,.L0d9d0f70
    move	$a5,$a6
    move	$t2,$zero
    nop
.L0d9d0f30:
    addiu	$t2,$t2,1
    # Line 43
    blez	$a4,.L0d9d0f68
    move	$a1,$a5
    move	$a3,$zero
.L0d9d0f40:
    # Line 44
    lwc1	$f2,0($a1)
    swc1	$f2,0($a7)
    # Line 45
    lwc1	$f1,4($a1)
    swc1	$f1,4($a7)
    # Line 43
    addiu	$a3,$a3,1
    # Line 46
    lwc1	$f0,8($a1)
    # Line 43
    addiu	$a7,$a7,12
    addu	$a1,$t1,$a1
    bne	$a4,$a3,.L0d9d0f40
    # Line 46
    swc1	$f0,-4($a7)
.L0d9d0f68:
    # Line 41
    bne	$a2,$t2,.L0d9d0f30
    addu	$a5,$t3,$a5
.L0d9d0f70:
    # Line 39
    addiu	$t8,$t8,1
    bne	$a0,$t8,.L0d9d0f20
    addu	$a6,$t9,$a6
.L0d9d0f7c:
    # Line 50
    jr	$ra
    nop
.end __glFillDeformationMap3f

# Function: __glFillDeformationMap3d
# Declared: Line 53 (Source lines: 58-72)
# Address: 0x0d9d0f90 - 0x0d9d10f8 (Size: 360 bytes, Frame: 16)
.globl __glFillDeformationMap3d
.ent __glFillDeformationMap3d
__glFillDeformationMap3d:
    # Line 58
    addiu	$sp,$sp,-16
    blez	$a0,.L0d9d10ec
    sd	$ra,0($sp)
    sll	$t1,$a5,0x3
    sll	$t8,$a3,0x3
    sll	$ra,$a1,0x3
    b	.L0d9d0fbc
    move	$t9,$zero
.L0d9d0fb0:
    # Line 61
    addiu	$t9,$t9,1
    beq	$a0,$t9,.L0d9d10ec
    addu	$a6,$ra,$a6
.L0d9d0fbc:
    # Line 63
    blez	$a2,.L0d9d0fb0
    move	$t2,$a6
    b	.L0d9d10c4
    move	$t3,$zero
    nop
.L0d9d0fd0:
    # Line 66
    ldc1	$f2,0($a3)
    cvt.s.d	$f2,$f2
    swc1	$f2,0($a7)
    # Line 67
    ldc1	$f1,8($a3)
    cvt.s.d	$f1,$f1
    swc1	$f1,4($a7)
    # Line 68
    ldc1	$f0,16($a3)
    addiu	$a5,$a5,-1
    # Line 65
    addiu	$a7,$a7,12
    addiu	$a1,$a1,1
    # Line 68
    cvt.s.d	$f0,$f0
    # Line 65
    addu	$a3,$t1,$a3
    bnez	$a5,.L0d9d0fd0
    # Line 68
    swc1	$f0,-4($a7)
.L0d9d1008:
    beqz	$at,.L0d9d10bc
    nop
.L0d9d1010:
    # Line 66
    ldc1	$f14,0($a3)
    cvt.s.d	$f14,$f14
    swc1	$f14,0($a7)
    # Line 67
    ldc1	$f13,8($a3)
    cvt.s.d	$f13,$f13
    swc1	$f13,4($a7)
    # Line 68
    ldc1	$f12,16($a3)
    cvt.s.d	$f12,$f12
    # Line 65
    addu	$a3,$t1,$a3
    # Line 68
    swc1	$f12,8($a7)
    # Line 66
    ldc1	$f11,0($a3)
    cvt.s.d	$f11,$f11
    swc1	$f11,12($a7)
    # Line 67
    ldc1	$f10,8($a3)
    cvt.s.d	$f10,$f10
    swc1	$f10,16($a7)
    # Line 68
    ldc1	$f9,16($a3)
    cvt.s.d	$f9,$f9
    # Line 65
    addu	$a3,$t1,$a3
    # Line 68
    swc1	$f9,20($a7)
    # Line 66
    ldc1	$f8,0($a3)
    cvt.s.d	$f8,$f8
    swc1	$f8,24($a7)
    # Line 67
    ldc1	$f7,8($a3)
    cvt.s.d	$f7,$f7
    swc1	$f7,28($a7)
    # Line 68
    ldc1	$f6,16($a3)
    cvt.s.d	$f6,$f6
    # Line 65
    addu	$a3,$t1,$a3
    # Line 68
    swc1	$f6,32($a7)
    # Line 66
    ldc1	$f5,0($a3)
    cvt.s.d	$f5,$f5
    swc1	$f5,36($a7)
    # Line 67
    ldc1	$f4,8($a3)
    cvt.s.d	$f4,$f4
    swc1	$f4,40($a7)
    # Line 68
    ldc1	$f3,16($a3)
    # Line 65
    addiu	$a1,$a1,4
    addiu	$a7,$a7,48
    # Line 68
    cvt.s.d	$f3,$f3
    # Line 65
    addu	$a3,$t1,$a3
    bne	$a4,$a1,.L0d9d1010
    # Line 68
    swc1	$f3,-4($a7)
.L0d9d10bc:
    # Line 63
    beq	$a2,$t3,.L0d9d0fb0
    addu	$t2,$t8,$t2
.L0d9d10c4:
    addiu	$t3,$t3,1
    # Line 65
    blez	$a4,.L0d9d10bc
    move	$a3,$t2
    andi	$a5,$a4,0x3
    sra	$at,$a4,0x2
    move	$a1,$zero
    bnez	$a5,.L0d9d0fd0
    nop
    b	.L0d9d1008
    nop
.L0d9d10ec:
    # Line 72
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFillDeformationMap3d

# Function: __glCheckMap3Params
# Declared: Line 75 (Source lines: 81-100)
# Address: 0x0d9d1100 - 0x0d9d11c4 (Size: 196 bytes, Frame: 192)
.globl __glCheckMap3Params
.ent __glCheckMap3Params
__glCheckMap3Params:
    # Line 84
    li	$at,0x8194
    # Line 82
    lw	$a2,4112($zero)
    # Line 81
    addiu	$sp,$sp,-64
    # Line 84
    beq	$a0,$at,.L0d9d1128
    # Line 92
    lw	$a6,92($sp)
    # Line 84
    li	$v0,0x8195
    beq	$a0,$v0,.L0d9d1128
    # Line 89
    li	$v0,1280
    # Line 100
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d1128:
    # Line 92
    blez	$a4,.L0d9d11b0
    # Line 98
    li	$v0,1281
    # Line 92
    slti	$a6,$a6,3
    lw	$a0,3804($a2)
    slt	$v1,$a0,$a4
    lw	$a2,68($sp)
    bnez	$v1,.L0d9d11b0
    slti	$a4,$a7,3
    lwc1	$f0,72($sp)
    slti	$a1,$a3,3
    lwc1	$f1,80($sp)
    bnez	$a1,.L0d9d11b0
    slt	$a3,$a0,$a2
    c.eq.s	$f13,$f14
    bc1t	.L0d9d11b0
    nop
    blez	$a2,.L0d9d11b0
    nop
    bnez	$a3,.L0d9d11b0
    lw	$a2,100($sp)
    bnez	$a4,.L0d9d11b0
    slt	$a5,$a0,$a2
    c.eq.s $f17,$f18
    bc1t .L0d9d11b0
    nop
    blez	$a2,.L0d9d11b0
    nop
    bnez	$a5,.L0d9d11b0
    nop
    bnez	$a6,.L0d9d11b0
    nop
    c.eq.s $f0,$f1
    bc1f .L0d9d11b8
    nop
.L0d9d11b0:
    # Line 100
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d11b8:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,64
.end __glCheckMap3Params

