# Source: ../soft/so_memmgr.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_memmgr.c
# Total Functions: 6

.text

# Function: NewBlock
# Declared: Line 72 (Source lines: 73-86)
# Address: 0x0d9f0fb0 - 0x0d9f1054 (Size: 164 bytes, Frame: 32)
.ent NewBlock
NewBlock:
    # Line 73
    addiu	$sp,$sp,-32
    sd	$a0,16($sp)
    move	$t9,$a0
    # Line 76
    lw	$t9,0($t9)
    sd	$ra,24($sp)
    # Line 73
    sd	$a1,8($sp)
    # Line 76
    li	$a1,16
    jalr	$t9
    sd	$s0,0($sp)
    beqz	$v0,.L0d9f1018
    move	$s0,$v0
    # Line 80
    sw	$zero,4($v0)
    # Line 78
    sw	$zero,12($v0)
    # Line 79
    ld	$a1,8($sp)
    # Line 81
    ld	$a0,16($sp)
    # Line 79
    sw	$a1,0($v0)
    # Line 81
    lw	$t9,0($a0)
    jalr	$t9
    nop
    beqz	$v0,.L0d9f102c
    sw	$v0,8($s0)
    # Line 86
    ld	$ra,24($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f1018:
    ld	$ra,24($sp)
    # Line 77
    move	$v0,$zero
    # Line 86
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f102c:
    # Line 83
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    move	$a1,$s0
    # Line 86
    ld	$ra,24($sp)
    # Line 84
    move	$v0,$zero
    # Line 86
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end NewBlock

# Function: DeleteBlock
# Declared: Line 89 (Source lines: 90-93)
# Address: 0x0d9f1060 - 0x0d9f109c (Size: 60 bytes, Frame: 32)
.ent DeleteBlock
DeleteBlock:
    # Line 90
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 91
    lw	$t9,12($s8)
    # Line 90
    sd	$a1,16($sp)
    sd	$ra,0($sp)
    # Line 91
    jalr	$t9
    lw	$a1,8($a1)
    # Line 92
    lw	$t9,12($s8)
    ld	$ra,0($sp)
    ld	$a1,16($sp)
    move	$a0,$s8
    # Line 93
    ld	$s8,8($sp)
    jr	$t9
    addiu	$sp,$sp,32
.end DeleteBlock

# Function: __glNewArena
# Declared: Line 98 (Source lines: 99-112)
# Address: 0x0d9f10a0 - 0x0d9f115c (Size: 188 bytes, Frame: 32)
.globl __glNewArena
.ent __glNewArena
__glNewArena:
    # Line 99
    addiu	$sp,$sp,-32
    lui	$at,0x6
    sd	$gp,16($sp)
    addiu	$at,$at,-788
    addu	$gp,$t9,$at
    # Line 103
    lw	$t9,0($a0)
    # Line 99
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 103
    li	$a1,12
    jalr	$t9
    sd	$s0,0($sp)
    beqz	$v0,.L0d9f1118
    move	$s0,$v0
    # Line 106
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$v0,8($sp)
    addiu	$t9,$t9,4016
    lui	$a1,0x4
    # Line 105
    sw	$v0,0($s0)
    # Line 106
    bal __glFloorLog2
    move	$a0,$v0
    # Line 112
    ld	$ra,24($sp)
    # Line 106
    beqz	$v0,.L0d9f1130
    move	$a1,$v0
    # Line 112
    ld	$gp,16($sp)
    # Line 111
    sw	$v0,4($s0)
    sw	$v0,8($s0)
    # Line 112
    move	$v0,$s0
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f1118:
    ld	$ra,24($sp)
    # Line 104
    move	$v0,$zero
    # Line 112
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f1130:
    # Line 108
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jal	sub_0d9f0000
    move	$a1,$s0
    # Line 112
    ld	$ra,24($sp)
    # Line 109
    move	$v0,$zero
    # Line 112
    ld	$gp,16($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glNewArena

# Function: __glDeleteArena
# Declared: Line 118 (Source lines: 119-129)
# Address: 0x0d9f1160 - 0x0d9f11e8 (Size: 136 bytes, Frame: 48)
.globl __glDeleteArena
.ent __glDeleteArena
__glDeleteArena:
    # Line 119
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    # Line 123
    lw	$s1,0($a0)
    # Line 124
    lw	$a1,4($a0)
    # Line 119
    sd	$s8,8($sp)
    lui	$at,0x6
    move	$s8,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,-980
    sd	$gp,16($sp)
    # Line 124
    beqz	$a1,.L0d9f11c0
    # Line 119
    addu	$gp,$t9,$at
    sd	$s0,32($sp)
    nop
    nop
    nop
.L0d9f11a0:
    # Line 124
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,4192
    # Line 125
    lw	$s0,12($a1)
    # Line 126
    bal __glFloorLog2
    move	$a0,$s1
    # Line 124
    bnez	$s0,.L0d9f11a0
    move	$a1,$s0
    ld	$s0,32($sp)
.L0d9f11c0:
    # Line 128
    lw	$t9,12($s1)
    move	$a0,$s1
    jal	sub_0d9f0000
    move	$a1,$s8
    ld	$ra,24($sp)
    ld	$s1,0($sp)
    ld	$s8,8($sp)
    # Line 129
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDeleteArena

# Function: __glArenaAlloc
# Declared: Line 135 (Source lines: 136-172)
# Address: 0x0d9f11f0 - 0x0d9f12c0 (Size: 208 bytes, Frame: 48)
.globl __glArenaAlloc
.ent __glArenaAlloc
__glArenaAlloc:
    # Line 141
    lw	$a4,8($a0)
    # Line 143
    lw	$a5,4($a4)
    # Line 136
    lui	$at,0x6
    # Line 143
    andi	$a6,$a1,0x7
    lw	$v0,0($a4)
    # Line 136
    addiu	$sp,$sp,-48
    # Line 143
    subu	$a6,$a1,$a6
    addiu	$v1,$a6,8
    subu	$v0,$v0,$a5
    sd	$gp,24($sp)
    # Line 136
    addiu	$at,$at,-1124
    # Line 143
    sltu	$v0,$v0,$v1
    # Line 136
    addu	$gp,$t9,$at
    # Line 143
    sd	$v1,16($sp)
    # Line 154
    addu	$v1,$a6,$a5
    # Line 136
    sd	$a0,8($sp)
    # Line 143
    bnez	$v0,.L0d9f1250
    # Line 154
    addiu	$v1,$v1,8
    # Line 155
    lw	$v0,8($a4)
    # Line 172
    ld	$gp,24($sp)
    addiu	$sp,$sp,48
    # Line 154
    sw	$v1,4($a4)
    # Line 172
    jr	$ra
    # Line 155
    addu	$v0,$v0,$a5
.L0d9f1250:
    sd	$a4,0($sp)
    # Line 166
    # lw $t9, -32700($gp) # &sub_0d9f0000
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    addiu	$t9,$t9,4016
    sd	$ra,32($sp)
    lui	$a3,0x4
    lw	$a0,0($a0)
    sltu	$a2,$a1,$a3
    bal __glFloorLog2
    movn	$a1,$a3,$a2
    ld	$ra,32($sp)
    bnez	$v0,.L0d9f1298
    move	$a3,$v0
    # Line 167
    move	$v0,$zero
    # Line 172
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f1298:
    # Line 169
    ld	$v1,0($sp)
    # Line 172
    ld	$gp,24($sp)
    # Line 169
    sw	$v0,12($v1)
    # Line 170
    ld	$v0,8($sp)
    # Line 171
    ld	$at,16($sp)
    # Line 170
    sw	$a3,8($v0)
    # Line 171
    sw	$at,4($a3)
    # Line 172
    lw	$v0,8($a3)
    jr	$ra
    addiu	$sp,$sp,48
.end __glArenaAlloc

# Function: __glArenaFreeAll
# Declared: Line 179 (Source lines: 180-194)
# Address: 0x0d9f12c0 - 0x0d9f1334 (Size: 116 bytes, Frame: 32)
.globl __glArenaFreeAll
.ent __glArenaFreeAll
__glArenaFreeAll:
    # Line 180
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$s1,0($sp)
    # Line 185
    lw	$v1,4($a0)
    # Line 184
    lw	$s1,0($a0)
    # Line 180
    lui	$v0,0x6
    # Line 186
    lw	$at,12($v1)
    # Line 180
    addiu	$v0,$v0,-1332
    # Line 188
    sw	$zero,4($v1)
    # Line 180
    addu	$gp,$t9,$v0
    # Line 187
    sw	$zero,12($v1)
    # Line 189
    sw	$v1,8($a0)
    # Line 190
    beqz	$at,.L0d9f1324
    move	$a1,$at
    sd	$ra,24($sp)
    sd	$s0,16($sp)
.L0d9f1300:
    # lw $t9, -32700($gp) # &sub_0d9f0000
    addiu	$t9,$t9,4192
    # Line 191
    lw	$s0,12($a1)
    # Line 192
    bal __glFloorLog2
    move	$a0,$s1
    # Line 190
    bnez	$s0,.L0d9f1300
    move	$a1,$s0
    ld	$s0,16($sp)
    ld	$ra,24($sp)
.L0d9f1324:
    ld	$s1,0($sp)
    # Line 194
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glArenaFreeAll

