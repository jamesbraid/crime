# Source: ../soft/so_bitmap.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_bitmap.c
# Total Functions: 1

.text

# Function: __glim_Bitmap
# Declared: Line 24 (Source lines: 26-48)
# Address: 0x0d9c5f70 - 0x0d9c6088 (Size: 280 bytes, Frame: 208)
.globl __glim_Bitmap
.ent __glim_Bitmap
__glim_Bitmap:
    # Line 26
    mov.s	$f4,$f17
    move	$a2,$a1
    move	$a5,$a0
    # Line 30
    lw	$a4,4120($zero)
    # Line 26
    mov.s	$f5,$f16
    # Line 30
    li	$v0,2
    # Line 26
    lui	$at,0x9
    mov.s	$f6,$f15
    # Line 27
    lw	$t0,4112($zero)
    # Line 26
    addiu	$sp,$sp,-80
    addiu	$at,$at,-20964
    mov.s	$f7,$f14
    sd	$gp,64($sp)
    # Line 30
    beqz	$a4,.L0d9c5ff0
    # Line 26
    addu	$gp,$t9,$at
    sdc1	$f14,24($sp)
    sdc1	$f15,16($sp)
    sdc1	$f16,8($sp)
    sdc1	$f17,0($sp)
    sd	$a6,56($sp)
    sd	$t0,48($sp)
    sd	$a1,40($sp)
    sd	$a0,32($sp)
    # Line 30
    beq	$a4,$v0,.L0d9c6028
    sd	$ra,72($sp)
    # Line 38
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,72($sp)
.L0d9c5fe4:
    # Line 48
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9c5ff0:
    # Line 43
    bltz	$a0,.L0d9c6074
    sd	$ra,72($sp)
    bltz	$a1,.L0d9c6074
    # Line 47
    mov.s	$f15,$f14
    lw	$t9,12508($t0)
    mov.s	$f16,$f6
    move	$a0,$t0
    move	$a1,$a5
    mov.s	$f17,$f5
    mov.s	$f18,$f4
    jalr	$t9
    move	$a7,$a6
    b	.L0d9c5fe4
    ld	$ra,72($sp)
.L0d9c6028:
    # Line 33
    ld	$t9,48($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 35
    ldc1	$f17,0($sp)
    ldc1	$f16,8($sp)
    ld	$a6,56($sp)
    ld	$t9,48($sp)
    # Line 34
    sw	$zero,4120($zero)
    # Line 35
    lw	$t9,6072($t9)
    ldc1	$f15,16($sp)
    lw	$t9,32($t9)
    ld	$a1,40($sp)
    ldc1	$f14,24($sp)
    jalr	$t9
    ld	$a0,32($sp)
    b	.L0d9c5fe4
    ld	$ra,72($sp)
.L0d9c6074:
    # Line 44
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9c5fe4
    ld	$ra,72($sp)
.end __glim_Bitmap

