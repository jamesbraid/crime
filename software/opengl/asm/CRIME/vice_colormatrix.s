# Source: ../CRIME/vice_colormatrix.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/vice_colormatrix.c
# Total Functions: 2

.text

# Function: __viceLoadCMMCode
# Declared: Line 34 (Source lines: 36-56)
# Address: 0x0da37e30 - 0x0da37f30 (Size: 256 bytes, Frame: 32)
.globl __viceLoadCMMCode
.ent __viceLoadCMMCode
__viceLoadCMMCode:
    # Line 39
    lw	$v0,4176($a0)
    # Line 36
    addiu	$sp,$sp,-32
    # Line 39
    lw	$at,4172($a0)
    # Line 36
    sd	$s0,8($sp)
    # Line 39
    li	$a1,1
    # Line 36
    lui	$v1,0x2
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-28836
    sd	$gp,0($sp)
    # Line 39
    beq	$at,$a1,.L0da37ec8
    # Line 36
    addu	$gp,$t9,$v1
.L0da37e60:
    # Line 47
    bne	$v0,$a1,.L0da37ea4
    # Line 51
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 47
    lw	$a0,4144($s0)
    beqz	$a0,.L0da37ea0
    # Line 48
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,19
    ld	$ra,16($sp)
    move	$a0,$v0
.L0da37e88:
    # Line 56
    ld	$gp,0($sp)
    move	$v0,$a0
    # Line 54
    sw	$zero,4140($s0)
    # Line 56
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da37ea0:
    # Line 51
    # lw $t9, -23184($gp) # &__viceMapCode
.L0da37ea4:
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,20
    ld	$ra,16($sp)
    # Line 56
    ld	$gp,0($sp)
    # Line 54
    sw	$zero,4140($s0)
    # Line 56
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da37ec8:
    # Line 39
    beq	$v0,$a1,.L0da37f04
    lw	$a0,4140($a0)
.L0da37ed0:
    # Line 43
    beqz	$a0,.L0da37e60
    # Line 44
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,18
    # Line 56
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    # Line 54
    sw	$zero,4140($s0)
    # Line 45
    li	$a1,1
    sw	$a1,4128($s0)
    # Line 56
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da37f04:
    # Line 39
    beqz	$a0,.L0da37e60
    nop
    lw	$a2,4144($s0)
    beqz	$a2,.L0da37ed0
    # Line 41
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,17
    ld	$ra,16($sp)
    b	.L0da37e88
    move	$a0,$v0
.end __viceLoadCMMCode

# Function: viceColorMatrix
# Declared: Line 60 (Source lines: 62-79)
# Address: 0x0da37f30 - 0x0da380a8 (Size: 376 bytes, Frame: 32)
.globl viceColorMatrix
.ent viceColorMatrix
viceColorMatrix:
    # Line 67
    lw	$v1,0($a0)
    lw	$v0,4180($a0)
    lhu	$v1,114($v1)
    mult	$v0,$v1
    # Line 62
    addiu	$sp,$sp,-32
    # Line 67
    li	$a5,16
    sd	$ra,24($sp)
    move	$a3,$zero
    # Line 62
    sd	$s0,16($sp)
    lui	$at,0x2
    addiu	$at,$at,-29092
    sd	$s8,0($sp)
    # Line 67
    mflo	$s8
    sd	$gp,8($sp)
    # Line 62
    addu	$gp,$t9,$at
    # Line 67
    srl	$s8,$s8,0x5
    move	$a4,$zero
    ldc1	$f4,_lit8_3fe0000000000000
    addiu	$s8,$s8,-1
    # Line 62
    move	$s0,$a0
    # Line 67
    lwc1	$f5,_lit_46fffe00
    sll	$s8,$s8,0x8
    nop
    nop
.L0da37f90:
    # Line 72
    slt	$ra,$a3,$zero
    addiu	$t9,$a3,3
    movz	$t9,$a3,$ra
    sra	$t9,$t9,0x2
    sll	$ra,$t9,0x2
    sll	$t9,$t9,0x4
    subu	$ra,$a3,$ra
    addu	$t9,$a1,$t9
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lwc1	$f1,0($t9)
    mul.s	$f1,$f1,$f5
    # Line 71
    addiu	$t2,$a3,1
    # Line 72
    slt	$t8,$t2,$zero
    addiu	$t3,$a3,4
    cvt.d.s	$f1,$f1
    movz	$t3,$t2,$t8
    sra	$t3,$t3,0x2
    add.d	$f1,$f1,$f4
    sll	$a7,$t3,0x4
    sll	$t3,$t3,0x2
    trunc.w.d	$f1,$f1
    lw	$t1,0($s0)
    addu	$a7,$a1,$a7
    subu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    mfc1	$t0,$f1
    addu	$t1,$t1,$a4
    addu	$a7,$a7,$t2
    sh	$t0,48($t1)
    lwc1	$f0,0($a7)
    mul.s	$f0,$f0,$f5
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    lw	$a2,0($s0)
    # Line 71
    addiu	$a3,$a3,2
    addiu	$a6,$a4,2
    # Line 72
    mfc1	$a0,$f0
    addu	$a2,$a2,$a6
    # Line 71
    addiu	$a4,$a4,4
    bne	$a3,$a5,.L0da37f90
    # Line 72
    sh	$a0,48($a2)
    # Line 74
    # lw $t9, -23324($gp) # &__viceLoadCMMCode
    bal __viceLoadCMMCode
    move	$a0,$s0
    lw	$a2,4204($s0)
    lw	$a1,4($s0)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    or	$a0,$v0,$s8
    sw	$a0,80($a1)
    # Line 76
    lw	$v1,4204($s0)
    lw	$v0,4($s0)
    addiu	$v1,$v1,1
    # Line 79
    ld	$gp,8($sp)
    # Line 76
    sll	$a0,$v1,0x2
    sw	$v1,4204($s0)
    addu	$v0,$v0,$a0
    lw	$v0,76($v0)
    ld	$ra,24($sp)
    lui	$at,0xffff
    # Line 79
    ld	$s8,0($sp)
    # Line 76
    and	$v0,$at,$v0
    # Line 79
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    xor	$at,$at,$v0
    li	$v0,1
    jr	$ra
    movz	$v0,$zero,$at
.end viceColorMatrix

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit_46fffe00:
    .word 0x46fffe00

