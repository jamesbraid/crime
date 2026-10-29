# Source: ../CRIME/crm_igloo.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_igloo.c
# Total Functions: 7

.text

# Function: crmIglooSwaptmesh
# Declared: Line 23 (Source lines: 24-47)
# Address: 0x0d94ae80 - 0x0d94aeec (Size: 108 bytes, Frame: 0)
.ent crmIglooSwaptmesh
crmIglooSwaptmesh:
    # Line 26
    lw	$a2,4112($zero)
    # Line 24
    la	$a4,__glOddTStripVertex
    # Line 31
    lw	$at,12696($a2)
    # Line 32
    lw	$a1,11948($a2)
    # Line 29
    lw	$v0,12692($a2)
    # Line 32
    sw	$v0,12696($a2)
    beq	$a1,$a4,.L0d94aecc
    # Line 31
    sw	$at,12692($a2)
    # Line 39
    la	$a3,__glOddTStripVertexFast
    beq	$a1,$a3,.L0d94aed8
    # Line 41
    la	$v1,__glEvenTStripVertex
    beq	$a1,$v1,.L0d94aee4
    # Line 43
    la	$a0,__glEvenTStripVertexFast
    bne	$a1,$a0,.L0d94aec4
    nop
    # Line 47
    jr	$ra
    # Line 45
    sw	$a3,11948($a2)
.L0d94aec4:
    # Line 47
    jr	$ra
    nop
.L0d94aecc:
    # Line 39
    la	$a1,__glEvenTStripVertex
    # Line 47
    jr	$ra
    # Line 39
    sw	$a1,11948($a2)
.L0d94aed8:
    # Line 41
    la	$a3,__glEvenTStripVertexFast
    # Line 47
    jr	$ra
    # Line 41
    sw	$a3,11948($a2)
.L0d94aee4:
    # Line 47
    jr	$ra
    # Line 43
    sw	$a4,11948($a2)
.end crmIglooSwaptmesh

# Function: crmIglooFullScreen
# Declared: Line 50 (Source lines: 51-74)
# Address: 0x0d94aef0 - 0x0d94af84 (Size: 148 bytes, Frame: 192)
.ent crmIglooFullScreen
crmIglooFullScreen:
    # Line 51
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s7,48($sp)
    sd	$s0,32($sp)
    # Line 54
    lw	$s0,4112($zero)
    # Line 64
    # lw $t9, -31864($gp) # &__glCrmIoctl
    # Line 57
    lw	$a3,31508($s0)
    # Line 60
    li	$v0,3
    sw	$v0,12($sp)
    # Line 59
    li	$v1,6
    sb	$v1,8($sp)
    # Line 58
    li	$a2,2
    sw	$a2,4($sp)
    # Line 57
    sw	$a3,0($sp)
    # Line 61
    lw	$at,31508($s0)
    # Line 62
    sw	$a0,16($sp)
    # Line 63
    sw	$a1,24($sp)
    # Line 51
    move	$s7,$a1
    # Line 64
    addiu	$a2,$sp,0
    # Line 61
    sw	$at,20($sp)
    # Line 64
    li	$a1,1009
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    # Line 66
    li	$a4,0x812c
    addu	$a4,$a4,$s0
    sb	$s7,0($a4)
    # Line 72
    lw	$t9,11912($s0)
    jal	__glCrmIoctl
    move	$a0,$s0
    # Line 73
    lw	$t9,11908($s0)
    ld	$s7,48($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    # Line 74
    jr	$ra
    addiu	$sp,$sp,64
.end crmIglooFullScreen

# Function: __glcrmim_n3f
# Declared: Line 77 (Source lines: 78-82)
# Address: 0x0d94af90 - 0x0d94afcc (Size: 60 bytes, Frame: 16)
.globl __glcrmim_n3f
.ent __glcrmim_n3f
__glcrmim_n3f:
    # Line 81
    lw	$at,4112($zero)
    # Line 78
    addiu	$sp,$sp,-16
    lui	$v0,0x10
    # Line 81
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 78
    addiu	$v0,$v0,24060
    addu	$gp,$t9,$v0
    # Line 81
    lw	$t9,1604($at)
    # Line 78
    sd	$ra,0($sp)
    # Line 81
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 82
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_n3f

# Function: crmIgloolmcolor
# Declared: Line 85 (Source lines: 87-96)
# Address: 0x0d94afd0 - 0x0d94b024 (Size: 84 bytes, Frame: 0)
.ent crmIgloolmcolor
crmIgloolmcolor:
    # Line 87
    lw	$a3,4112($zero)
    li	$at,1
    beq	$a0,$at,.L0d94b004
    lw	$a2,31496($a3)
    # Line 92
    li	$a0,-2
    and	$a0,$a2,$a0
    sw	$a0,31496($a3)
    # Line 95
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a3)
    ori	$v0,$v0,0x1
    # Line 96
    jr	$ra
    # Line 95
    sw	$v0,11756($a3)
.L0d94b004:
    # Line 90
    ori	$a4,$a2,0x1
    sw	$a4,31496($a3)
    # Line 95
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a1,11756($a3)
    ori	$a1,$a1,0x1
    # Line 96
    jr	$ra
    # Line 95
    sw	$a1,11756($a3)
.end crmIgloolmcolor

# Function: crmIglooApplyColor
# Declared: Line 99 (Source lines: 100-106)
# Address: 0x0d94b030 - 0x0d94b078 (Size: 72 bytes, Frame: 16)
.ent crmIglooApplyColor
crmIglooApplyColor:
    # Line 101
    lw	$a2,31496($a0)
    # Line 100
    addiu	$sp,$sp,-16
    lui	$v0,0x10
    # Line 101
    andi	$at,$a2,0x1
    sd	$ra,8($sp)
    # Line 100
    addiu	$v0,$v0,23900
    sd	$gp,0($sp)
    # Line 101
    beqz	$at,.L0d94b068
    # Line 100
    addu	$gp,$t9,$v0
    # Line 101
    andi	$v1,$a2,0x2
    beqz	$v1,.L0d94b068
    # Line 104
    nop	# was lw $t9, -32228($gp) # &__glClampAndScaleColor
    jal	__glClampAndScaleColor
    nop
.L0d94b068:
    ld	$ra,8($sp)
    # Line 106
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end crmIglooApplyColor

# Function: crmIglooPickColorMaterialProcs
# Declared: Line 109 (Source lines: 110-123)
# Address: 0x0d94b080 - 0x0d94b0f0 (Size: 112 bytes, Frame: 32)
.ent crmIglooPickColorMaterialProcs
crmIglooPickColorMaterialProcs:
    # Line 110
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,23820
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 117
    # lw $t9, -25764($gp) # &__glGenericPickColorMaterialProcs
    # Line 110
    sd	$s8,8($sp)
    # Line 117
    nop
    # Line 110
    sd	$ra,0($sp)
    # Line 117
    jal	__glGenericPickColorMaterialProcs
    # Line 110
    move	$s8,$a0
    # Line 119
    lw	$a1,1792($s8)
    andi	$v0,$a1,0x80
    bnez	$v0,.L0d94b0e0
    ld	$ra,0($sp)
    andi	$v1,$a1,0x40
    # Line 121
    la	$a0,sub_0d950000
    # Line 123
    ld	$gp,16($sp)
    # Line 119
    beqz	$v1,.L0d94b0e0
    # Line 121
    addiu	$a0,$a0,-20432
    sw	$a0,12000($s8)
    # Line 123
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94b0e0:
    ld	$s8,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end crmIglooPickColorMaterialProcs

# Function: __glcrmim_IglooInterfaceSGIX
# Declared: Line 126 (Source lines: 127-170)
# Address: 0x0d94b0f0 - 0x0d94b220 (Size: 304 bytes, Frame: 16)
.globl __glcrmim_IglooInterfaceSGIX
.ent __glcrmim_IglooInterfaceSGIX
__glcrmim_IglooInterfaceSGIX:
    # Line 127
    move	$a4,$a1
    addiu	$sp,$sp,-16
    # Line 129
    lw	$a3,4112($zero)
    # Line 131
    li	$at,0x81a1
    # Line 127
    lui	$v0,0x10
    # Line 131
    li	$a5,0x81a2
    sd	$ra,8($sp)
    # Line 127
    addiu	$v0,$v0,23708
    sd	$gp,0($sp)
    # Line 131
    beq	$a0,$at,.L0d94b184
    # Line 127
    addu	$gp,$t9,$v0
    # Line 131
    li	$v1,0x81a0
    move	$ra,$ra
    li	$a1,0x819e
    beq	$a0,$v1,.L0d94b1c0
    # Line 163
    la	$a6,sub_0d950000
    # Line 131
    beq	$a0,$a1,.L0d94b1d8
    # Line 150
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 131
    li	$a2,0x81a3
    beq	$a0,$a2,.L0d94b1f0
    # Line 155
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 131
    li	$a4,0x819f
    beq	$a0,$a4,.L0d94b160
    nop
    beq	$a0,$a5,.L0d94b170
    # Line 167
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d94b160:
    ld	$ra,8($sp)
.L0d94b164:
    # Line 170
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94b170:
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 163
    addiu	$a6,$a6,-20352
    # Line 170
    jr	$ra
    # Line 163
    sw	$a6,11792($a3)
.L0d94b184:
    # Line 133
    lw	$a7,0($a1)
    # Line 135
    la	$t3,__glNop
    # Line 133
    beqz	$a7,.L0d94b204
    lw	$a0,31496($a3)
    # Line 134
    ori	$t0,$a0,0x2
    # Line 135
    andi	$t1,$t0,0x1
    beqz	$t1,.L0d94b160
    # Line 134
    sw	$t0,31496($a3)
    # Line 135
    lw	$t2,12000($a3)
    bne	$t2,$t3,.L0d94b160
    # Line 137
    nop	# was lw $t9, -32228($gp) # &__glClampAndScaleColor
    jal	__glClampAndScaleColor
    move	$a0,$a3
    b	.L0d94b164
    ld	$ra,8($sp)
.L0d94b1c0:
    # Line 145
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,-20864
    bal __glCrmInitDepth
    nop
    b	.L0d94b164
    ld	$ra,8($sp)
.L0d94b1d8:
    # Line 150
    addiu	$t9,$t9,-20752
    lbu	$a1,7($a4)
    bal __glCrmInitDepth
    lw	$a0,0($a4)
    b	.L0d94b164
    ld	$ra,8($sp)
.L0d94b1f0:
    # Line 155
    addiu	$t9,$t9,-20528
    bal __glcrmim_n3f
    lbu	$a0,3($a4)
    b	.L0d94b164
    ld	$ra,8($sp)
.L0d94b204:
    move	$ra,$ra
    # Line 170
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 140
    li	$at,-3
    and	$at,$a0,$at
    # Line 170
    jr	$ra
    # Line 140
    sw	$at,31496($a3)
.end __glcrmim_IglooInterfaceSGIX

