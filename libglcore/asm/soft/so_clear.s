# Source: ../soft/so_clear.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_clear.c
# Total Functions: 1

.text

# Function: __glim_Clear
# Declared: Line 24 (Source lines: 25-93)
# Address: 0x0d9c9750 - 0x0d9c9934 (Size: 484 bytes, Frame: 32)
.globl __glim_Clear
.ent __glim_Clear
__glim_Clear:
    # Line 29
    lw	$a2,4120($zero)
    # Line 25
    lui	$at,0x8
    # Line 26
    lw	$a3,4112($zero)
    # Line 25
    addiu	$sp,$sp,-32
    addiu	$at,$at,30268
    sd	$gp,16($sp)
    # Line 29
    beqz	$a2,.L0d9c97a0
    # Line 25
    addu	$gp,$t9,$at
    sd	$a0,8($sp)
    # Line 29
    li	$v0,2
    sd	$a3,0($sp)
    beq	$a2,$v0,.L0d9c97c4
    sd	$ra,24($sp)
    # Line 37
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
.L0d9c9790:
    ld	$ra,24($sp)
.L0d9c9794:
    # Line 93
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9c97a0:
    # Line 38
    li	$v1,-18177
    and	$v1,$a0,$v1
    beqz	$v1,.L0d9c97f0
    sd	$ra,24($sp)
    # Line 44
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    b	.L0d9c9794
    ld	$ra,24($sp)
.L0d9c97c4:
    # Line 32
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    # Line 34
    # lw $t9, -22476($gp) # &glClear
    ld	$a0,8($sp)
    jal	glClear
    # Line 33
    sw	$zero,4120($zero)
    b	.L0d9c9794
    ld	$ra,24($sp)
.L0d9c97f0:
    # Line 45
    lw	$ra,3204($a3)
    li	$at,7168
    bne	$ra,$at,.L0d9c9794
    ld	$ra,24($sp)
    andi	$v0,$a0,0x4000
    sd	$a0,8($sp)
    # Line 50
    li	$a4,1029
    # Line 45
    beqz	$v0,.L0d9c9840
    sd	$a3,0($sp)
    # Line 50
    ld	$a2,0($sp)
    lw	$a2,1888($a2)
    beqz	$a2,.L0d9c9840
    li	$a3,1028
    beq	$a2,$a3,.L0d9c98e4
    # Line 54
    ld	$a0,0($sp)
    # Line 50
    beq	$a2,$a4,.L0d9c98c0
    # Line 57
    ld	$a4,0($sp)
    # Line 50
    li	$a5,1032
    beq	$a2,$a5,.L0d9c98fc
    # Line 76
    ld	$a0,0($sp)
.L0d9c9840:
    # Line 83
    ld	$a6,8($sp)
.L0d9c9844:
    andi	$a6,$a6,0x200
    beqz	$a6,.L0d9c9868
    ld	$a7,0($sp)
    lbu	$a7,3224($a7)
    beqz	$a7,.L0d9c9868
    # Line 84
    ld	$a0,0($sp)
    lw	$t9,31468($a0)
    jalr	$t9
    addiu	$a0,$a0,31360
.L0d9c9868:
    # Line 86
    ld	$a1,8($sp)
    andi	$a1,$a1,0x400
    beqz	$a1,.L0d9c9890
    ld	$a2,0($sp)
    lbu	$a2,3226($a2)
    beqz	$a2,.L0d9c9890
    # Line 87
    ld	$a0,0($sp)
    lw	$t9,31224($a0)
    jalr	$t9
    addiu	$a0,$a0,31108
.L0d9c9890:
    # Line 89
    ld	$a1,8($sp)
    andi	$a1,$a1,0x100
    beqz	$a1,.L0d9c9790
    ld	$a2,0($sp)
    lbu	$a3,3225($a2)
    beqz	$a3,.L0d9c9794
    ld	$ra,24($sp)
    # Line 90
    lw	$t9,31348($a2)
    jalr	$t9
    addiu	$a0,$a2,31228
    b	.L0d9c9794
    ld	$ra,24($sp)
.L0d9c98c0:
    # Line 57
    lbu	$a4,3222($a4)
    beqz	$a4,.L0d9c9840
    # Line 58
    ld	$a0,0($sp)
    lw	$a0,30660($a0)
    lw	$t9,216($a0)
    jalr	$t9
    nop
    b	.L0d9c9844
    # Line 83
    ld	$a6,8($sp)
.L0d9c98e4:
    # Line 54
    lw	$a0,30656($a0)
    lw	$t9,216($a0)
    jalr	$t9
    nop
    b	.L0d9c9844
    # Line 83
    ld	$a6,8($sp)
.L0d9c98fc:
    # Line 76
    lw	$a0,30656($a0)
    lw	$t9,216($a0)
    jalr	$t9
    nop
    ld	$a1,0($sp)
    lbu	$a1,3222($a1)
    beqz	$a1,.L0d9c9840
    # Line 78
    ld	$a0,0($sp)
    lw	$a0,30660($a0)
    lw	$t9,216($a0)
    jalr	$t9
    nop
    b	.L0d9c9844
    # Line 83
    ld	$a6,8($sp)
.end __glim_Clear

