# Source: ../soft/so_finish.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_finish.c
# Total Functions: 2

.text

# Function: __glim_Finish
# Declared: Line 29 (Source lines: 30-34)
# Address: 0x0d9d86b0 - 0x0d9d8708 (Size: 88 bytes, Frame: 16)
.globl __glim_Finish
.ent __glim_Finish
__glim_Finish:
    # Line 30
    addiu	$sp,$sp,-16
    # Line 31
    lw	$at,4120($zero)
    lw	$a0,4112($zero)
    li	$v0,1
    # Line 30
    lui	$v1,0x8
    sd	$ra,8($sp)
    addiu	$v1,$v1,-31012
    sd	$gp,0($sp)
    # Line 31
    beq	$at,$v0,.L0d9d86f4
    # Line 30
    addu	$gp,$t9,$v1
    # Line 33
    lw	$t9,11772($a0)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0d9d86e8:
    # Line 34
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d86f4:
    # Line 31
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d86e8
    ld	$ra,8($sp)
.end __glim_Finish

# Function: __glim_Flush
# Declared: Line 40 (Source lines: 41-45)
# Address: 0x0d9d8710 - 0x0d9d8768 (Size: 88 bytes, Frame: 16)
.globl __glim_Flush
.ent __glim_Flush
__glim_Flush:
    # Line 41
    addiu	$sp,$sp,-16
    # Line 42
    lw	$at,4120($zero)
    lw	$a0,4112($zero)
    li	$v0,1
    # Line 41
    lui	$v1,0x8
    sd	$ra,8($sp)
    addiu	$v1,$v1,-31108
    sd	$gp,0($sp)
    # Line 42
    beq	$at,$v0,.L0d9d8754
    # Line 41
    addu	$gp,$t9,$v1
    # Line 44
    lw	$t9,11768($a0)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0d9d8748:
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d8754:
    # Line 42
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9d8748
    ld	$ra,8($sp)
.end __glim_Flush

