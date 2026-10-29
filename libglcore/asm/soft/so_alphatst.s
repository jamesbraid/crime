# Source: ../soft/so_alphatst.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_alphatst.c
# Total Functions: 1

.text

# Function: __glValidateAlphaTest
# Declared: Line 29 (Source lines: 30-69)
# Address: 0x0d9bca50 - 0x0d9bcbb8 (Size: 360 bytes, Frame: 48)
.globl __glValidateAlphaTest
.ent __glValidateAlphaTest
__glValidateAlphaTest:
    # Line 37
    lwc1	$f2,30792($a0)
    lwc1	$f1,1824($a0)
    lwc1	$f0,3720($a0)
    # Line 34
    lw	$a6,1820($a0)
    # Line 30
    addiu	$sp,$sp,-48
    # Line 37
    mul.s	$f1,$f1,$f2
    # Line 30
    sd	$s0,8($sp)
    # Line 36
    lw	$s0,3716($a0)
    # Line 37
    mul.s	$f0,$f0,$f1
    # Line 45
    lw	$a1,30748($a0)
    # Line 30
    sd	$a0,0($sp)
    lui	$at,0x9
    # Line 37
    trunc.w.s	$f0,$f0
    # Line 30
    sd	$s1,16($sp)
    addiu	$at,$at,17212
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 45
    beqz	$a1,.L0d9bcb74
    # Line 37
    mfc1	$s1,$f0
.L0d9bca9c:
    # Line 49
    blez	$s0,.L0d9bcb60
    addiu	$a4,$a6,-512
    move	$a0,$zero
    b	.L0d9bcba8
    li	$a5,1
.L0d9bcab0:
    # Line 64
    addiu	$a1,$a1,1
    xor	$v1,$s1,$a0
    sltu	$v1,$zero,$v1
    sb	$v1,-1($a1)
.L0d9bcac0:
    # Line 57
    addiu	$a0,$a0,1
    # Line 49
    sltiu	$a7,$a4,8
    # Line 57
    beq	$s0,$a0,.L0d9bcb60
    # Line 49
    la	$a3,sub_0da40000
    sll	$a6,$a4,0x2
.L0d9bcad4:
    addiu	$a3,$a3,18512
    beqz	$a7,.L0d9bcac0
    addu	$a3,$a3,$a6
    lw	$a6,0($a3)
    jr	$a6
    nop
.L0d9bcaec:
    # Line 59
    addiu	$a1,$a1,1
    b	.L0d9bcac0
    sb	$zero,-1($a1)
.L0d9bcaf8:
    # Line 66
    addiu	$a1,$a1,1
    b	.L0d9bcac0
    sb	$a5,-1($a1)
.L0d9bcb04:
    # Line 65
    addiu	$a1,$a1,1
    slt	$a7,$a0,$s1
    xori	$a7,$a7,0x1
    b	.L0d9bcac0
    sb	$a7,-1($a1)
.L0d9bcb18:
    # Line 63
    addiu	$a1,$a1,1
    slt	$t0,$s1,$a0
    b	.L0d9bcac0
    sb	$t0,-1($a1)
.L0d9bcb28:
    # Line 62
    addiu	$a1,$a1,1
    slt	$t1,$s1,$a0
    xori	$t1,$t1,0x1
    b	.L0d9bcac0
    sb	$t1,-1($a1)
.L0d9bcb3c:
    # Line 61
    addiu	$a1,$a1,1
    xor	$t2,$s1,$a0
    sltiu	$t2,$t2,1
    b	.L0d9bcac0
    sb	$t2,-1($a1)
.L0d9bcb50:
    # Line 60
    addiu	$a1,$a1,1
    slt	$t3,$a0,$s1
    b	.L0d9bcac0
    sb	$t3,-1($a1)
.L0d9bcb60:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 69
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9bcb74:
    # Line 47
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,0($t9)
    sd	$a6,32($sp)
    sd	$ra,40($sp)
    jalr	$t9
    move	$a1,$s0
    ld	$ra,40($sp)
    ld	$at,0($sp)
    ld	$a6,32($sp)
    move	$a1,$v0
    b	.L0d9bca9c
    # Line 49
    sw	$v0,30748($at)
.L0d9bcba8:
    la	$a3,sub_0da40000
    sltiu	$a7,$a4,8
    b	.L0d9bcad4
    sll	$a6,$a4,0x2
.end __glValidateAlphaTest

.late_rodata
jtbl_0da44850:
    .word .L0d9bcaec
    .word .L0d9bcb50
    .word .L0d9bcb3c
    .word .L0d9bcb28
    .word .L0d9bcb18
    .word .L0d9bcab0
    .word .L0d9bcb04
    .word .L0d9bcaf8

