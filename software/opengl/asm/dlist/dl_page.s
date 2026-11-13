# Source: ../dlist/dl_page.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_page.c
# Total Functions: 6

.text

# Function: grow_region
# Declared: Line 40 (Source lines: 41-86)
# Address: 0x0d97cee0 - 0x0d97d0ec (Size: 524 bytes, Frame: 208)
.ent grow_region
grow_region:
    # Line 48
    lw	$v0,0($a0)
    mult	$v0,$a1
    # Line 46
    lw	$at,4112($zero)
    # Line 41
    addiu	$sp,$sp,-80
    sd	$a1,48($sp)
    # Line 48
    lw	$t9,32($a0)
    sd	$ra,64($sp)
    # Line 41
    sd	$s0,56($sp)
    move	$s0,$a0
    # Line 48
    mflo	$a0
    jalr	$t9
    sd	$at,40($sp)
    beqz	$v0,.L0d97d0d0
    sd	$v0,32($sp)
    # Line 50
    ld	$t8,48($sp)
    lw	$t9,0($s0)
    sd	$s1,24($sp)
    # Line 53
    lw	$s1,4($s0)
    # Line 50
    mult	$t9,$t8
    # Line 54
    ld	$a0,40($sp)
    # Line 53
    addu	$s1,$s1,$t8
    # Line 54
    lw	$a1,28($s0)
    sll	$a2,$s1,0x2
    lw	$t9,8($a0)
    subu	$a2,$a2,$s1
    # Line 50
    lw	$a3,12($s0)
    # Line 54
    sll	$a2,$a2,0x2
    sd	$a2,8($sp)
    addiu	$a2,$a2,12
    # Line 50
    mflo	$a4
    addu	$a3,$a3,$a4
    # Line 54
    jalr	$t9
    sd	$a3,16($sp)
    # Line 61
    li	$a6,-1
    # Line 54
    beqz	$v0,.L0d97d0dc
    sw	$v0,28($s0)
    # Line 59
    lw	$t0,4($s0)
    # Line 61
    move	$a0,$t0
    # Line 59
    sll	$t3,$t0,0x2
    # Line 61
    subu	$t2,$s1,$t0
    # Line 59
    subu	$t3,$t3,$t0
    # Line 61
    slt	$ra,$s1,$t0
    # Line 59
    sll	$t3,$t3,0x2
    # Line 61
    addiu	$t2,$t2,1
    # Line 59
    addu	$t3,$v0,$t3
    # Line 61
    move	$a4,$t3
    bnez	$ra,.L0d97d020
    # Line 59
    lw	$t1,8($t3)
    andi	$t8,$t2,0x1
    # Line 61
    lw	$a5,0($sp)
    beqz	$t8,.L0d97cfc8
    addiu	$a7,$s1,1
    # Line 62
    addiu	$a4,$t3,12
    addiu	$a0,$t0,1
    # Line 64
    sw	$a6,8($t3)
    # Line 67
    move	$a6,$t0
    # Line 66
    move	$a5,$t3
    # Line 63
    sw	$zero,0($t3)
.L0d97cfc8:
    sra	$t3,$t2,0x1
    beqz	$t3,.L0d97d020
    nop
    nop
    nop
    nop
.L0d97cfe0:
    # Line 64
    sw	$a6,8($a4)
    bltz	$a6,.L0d97cff0
    # Line 63
    sw	$zero,0($a4)
    # Line 65
    sw	$a0,4($a5)
.L0d97cff0:
    # Line 66
    move	$a5,$a4
    # Line 62
    addiu	$a4,$a4,12
    # Line 64
    sw	$a0,8($a4)
    # Line 63
    sw	$zero,0($a4)
    # Line 64
    bltz	$a0,.L0d97d00c
    # Line 62
    addiu	$a0,$a0,1
    # Line 65
    sw	$a0,4($a5)
.L0d97d00c:
    # Line 67
    move	$a6,$a0
    # Line 62
    addiu	$a0,$a0,1
    # Line 66
    move	$a5,$a4
    # Line 62
    bne	$a7,$a0,.L0d97cfe0
    addiu	$a4,$a4,12
.L0d97d020:
    lw	$t9,20($s0)
    # Line 72
    lw	$a4,24($s0)
    # Line 82
    ld	$t2,16($sp)
    # Line 74
    addiu	$a0,$s1,-1
    # Line 77
    sll	$v1,$t1,0x2
    # Line 72
    lw	$a5,28($s0)
    # Line 77
    subu	$v1,$v1,$t1
    # Line 62
    beqz	$t9,.L0d97d084
    # Line 77
    sll	$v1,$v1,0x2
    # Line 72
    ld	$at,8($sp)
    addu	$a5,$a5,$at
    sw	$a4,-8($a5)
    # Line 74
    lw	$a3,24($s0)
    sll	$a2,$a3,0x2
    lw	$a1,28($s0)
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    sw	$a0,8($a1)
    # Line 77
    lw	$v0,28($s0)
    addu	$v0,$v0,$v1
    sw	$s1,4($v0)
    # Line 78
    lw	$ra,28($s0)
    addu	$ra,$ra,$at
    sw	$t1,8($ra)
.L0d97d084:
    # Line 80
    lw	$t0,4($s0)
    # Line 83
    sw	$s1,4($s0)
    # Line 86
    ld	$s1,24($sp)
    # Line 82
    sw	$t2,12($s0)
    # Line 81
    ld	$t1,32($sp)
    sw	$t1,8($s0)
    # Line 84
    ld	$a7,48($sp)
    lw	$a6,16($s0)
    # Line 86
    ld	$ra,64($sp)
    # Line 80
    sw	$t0,24($s0)
    # Line 86
    move	$v0,$zero
    # Line 84
    addu	$a6,$a6,$a7
    sw	$a6,16($s0)
    # Line 86
    ld	$s0,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d97d0c4:
    ld	$ra,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d97d0d0:
    ld	$s0,56($sp)
    # Line 48
    b	.L0d97d0c4
    li	$v0,-1
.L0d97d0dc:
    ld	$s0,56($sp)
    ld	$s1,24($sp)
    # Line 56
    b	.L0d97d0c4
    li	$v0,-1
.end grow_region

# Function: __glDlistInitPageState
# Declared: Line 92 (Source lines: 96-114)
# Address: 0x0d97d0f0 - 0x0d97d184 (Size: 148 bytes, Frame: 48)
.globl __glDlistInitPageState
.ent __glDlistInitPageState
__glDlistInitPageState:
    # Line 96
    addiu	$sp,$sp,-48
    sd	$a3,16($sp)
    lui	$at,0xd
    sd	$gp,32($sp)
    addiu	$at,$at,15516
    addu	$gp,$t9,$at
    # Line 99
    lw	$t9,0($a0)
    # Line 96
    sd	$ra,24($sp)
    sd	$a1,0($sp)
    # Line 99
    li	$a1,40
    jalr	$t9
    # Line 96
    sd	$a2,8($sp)
    # Line 114
    ld	$ra,24($sp)
    # Line 99
    bnez	$v0,.L0d97d13c
    move	$a4,$v0
    # Line 101
    move	$v0,$zero
    # Line 114
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d97d13c:
    ld	$gp,32($sp)
    # Line 110
    sw	$zero,28($v0)
    # Line 109
    sw	$zero,24($v0)
    # Line 108
    sw	$zero,12($v0)
    # Line 107
    sw	$zero,8($v0)
    # Line 106
    sw	$zero,20($v0)
    # Line 105
    sw	$zero,16($v0)
    # Line 104
    sw	$zero,4($v0)
    # Line 111
    ld	$v1,8($sp)
    # Line 112
    ld	$a0,16($sp)
    sw	$a0,36($v0)
    # Line 114
    ld	$ra,24($sp)
    # Line 111
    sw	$v1,32($v0)
    # Line 103
    ld	$v0,0($sp)
    # Line 114
    addiu	$sp,$sp,48
    # Line 103
    sw	$v0,0($a4)
    # Line 114
    jr	$ra
    move	$v0,$a4
.end __glDlistInitPageState

# Function: __glDlistFreePageState
# Declared: Line 121 (Source lines: 122-128)
# Address: 0x0d97d190 - 0x0d97d200 (Size: 112 bytes, Frame: 32)
.globl __glDlistFreePageState
.ent __glDlistFreePageState
__glDlistFreePageState:
    # Line 122
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    lui	$v0,0xd
    sd	$gp,24($sp)
    addiu	$v0,$v0,15356
    addu	$gp,$t9,$v0
    # Line 125
    lw	$t9,32($a1)
    lw	$at,12($a1)
    # Line 122
    move	$s1,$a1
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,16($sp)
    # Line 125
    jalr	$t9
    negu	$a0,$at
    # Line 126
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,28($s1)
    # Line 127
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 128
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistFreePageState

# Function: __glDlistAllocPage
# Declared: Line 135 (Source lines: 136-171)
# Address: 0x0d97d200 - 0x0d97d3dc (Size: 476 bytes, Frame: 32)
.globl __glDlistAllocPage
.ent __glDlistAllocPage
__glDlistAllocPage:
    # Line 140
    lw	$v0,8($a0)
    # Line 136
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$s0,16($sp)
    move	$s0,$a0
    addiu	$at,$at,15244
    sd	$gp,8($sp)
    # Line 140
    beqz	$v0,.L0d97d2a8
    # Line 136
    addu	$gp,$t9,$at
.L0d97d224:
    # Line 140
    lw	$v0,16($s0)
    # Line 159
    lw	$a3,24($s0)
    # Line 140
    blez	$v0,.L0d97d2d8
    # Line 159
    lw	$a0,28($s0)
.L0d97d234:
    # Line 166
    sll	$a5,$a3,0x2
    subu	$a5,$a5,$a3
    sll	$a5,$a5,0x2
    addu	$a7,$a0,$a5
    lw	$a6,0($a7)
    ori	$a6,$a6,0x1
    sw	$a6,0($a7)
    # Line 167
    lw	$a4,28($s0)
    addu	$a5,$a4,$a5
    lw	$a5,4($a5)
    # Line 169
    sll	$a6,$a5,0x2
    subu	$a6,$a6,$a5
    sll	$a6,$a6,0x2
    # Line 167
    sw	$a5,24($s0)
    # Line 169
    addu	$a4,$a4,$a6
    li	$a2,-1
    sw	$a2,8($a4)
    # Line 171
    lw	$a1,0($s0)
    mult	$a1,$a3
    ld	$gp,8($sp)
    # Line 170
    lw	$a0,16($s0)
    # Line 171
    lw	$v0,8($s0)
    # Line 170
    addiu	$a0,$a0,-1
    sw	$a0,16($s0)
    # Line 171
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    mflo	$v1
    jr	$ra
    addu	$v0,$v0,$v1
.L0d97d2a8:
    # Line 140
    # lw $t9, -32728($gp) # &sub_0d980000
    addiu	$t9,$t9,-12576
    sd	$ra,24($sp)
    bal __glle_UnimplementedExtension
    li	$a1,32
    bgez	$v0,.L0d97d224
    ld	$ra,24($sp)
    # Line 141
    move	$v0,$zero
    # Line 171
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97d2d8:
    # Line 140
    lw	$at,20($s0)
    slti	$at,$at,65
    bnez	$at,.L0d97d390
    sd	$ra,24($sp)
    # Line 144
    lw	$t9,36($s0)
    jal	sub_0d980000
    nop
    # Line 145
    lw	$a3,4($s0)
    sll	$a2,$a3,0x2
    lw	$a0,28($s0)
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$a0,$a2
    lw	$a2,8($a2)
    # Line 146
    sll	$a4,$a2,0x2
    ld	$ra,24($sp)
    bltz	$a2,.L0d97d3b8
    subu	$a4,$a4,$a2
    sll	$a4,$a4,0x2
    addu	$a6,$a0,$a4
    lw	$a5,0($a6)
    andi	$a7,$a5,0x2
    beqz	$a7,.L0d97d3d4
    li	$a7,-3
    # Line 148
    and	$t1,$a7,$a5
.L0d97d33c:
    sw	$t1,0($a6)
    # Line 150
    lw	$a0,28($s0)
    addu	$t0,$a0,$a4
    # Line 149
    move	$a3,$a2
    # Line 150
    lw	$a2,8($t0)
    sll	$a4,$a2,0x2
    bltz	$a2,.L0d97d374
    subu	$a4,$a4,$a2
    sll	$a4,$a4,0x2
    addu	$a6,$a0,$a4
    lw	$a5,0($a6)
    andi	$t2,$a5,0x2
    bnez	$t2,.L0d97d33c
    # Line 148
    and	$t1,$a7,$a5
.L0d97d374:
    # Line 155
    sw	$a3,24($s0)
    # Line 153
    lw	$a5,16($s0)
    lw	$a6,20($s0)
    # Line 154
    sw	$zero,20($s0)
    # Line 153
    addu	$a5,$a5,$a6
    # Line 155
    b	.L0d97d234
    # Line 153
    sw	$a5,16($s0)
.L0d97d390:
    # Line 158
    # lw $t9, -32728($gp) # &sub_0d980000
    addiu	$t9,$t9,-12576
    move	$a0,$s0
    bal __glle_UnimplementedExtension
    li	$a1,32
    bltz	$v0,.L0d97d3c0
    ld	$ra,24($sp)
    # Line 159
    lw	$a0,28($s0)
    b	.L0d97d234
    lw	$a3,24($s0)
.L0d97d3b8:
    # Line 150
    b	.L0d97d374
    lw	$a3,0($sp)
.L0d97d3c0:
    # Line 159
    move	$v0,$zero
    # Line 171
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97d3d4:
    b	.L0d97d374
    # Line 150
    lw	$a3,0($sp)
.end __glDlistAllocPage

# Function: __glDlistFreePage
# Declared: Line 178 (Source lines: 183-200)
# Address: 0x0d97d3e0 - 0x0d97d4c0 (Size: 224 bytes, Frame: 0)
.globl __glDlistFreePage
.ent __glDlistFreePage
__glDlistFreePage:
    # Line 183
    lw	$v1,0($a0)
    lw	$a3,8($a0)
    mtc1	$v1,$f5
    subu	$a3,$a1,$a3
    mtc1	$a3,$f4
    cvt.d.w	$f5,$f5
    cvt.d.w	$f4,$f4
    div.d	$f4,$f4,$f5
    trunc.w.d	$f4,$f4
    mfc1	$a5,$f4
    # Line 189
    sll	$a2,$a5,0x2
    lw	$t1,28($a0)
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    addu	$t1,$t1,$a2
    lw	$t0,0($t1)
    li	$t2,-2
    # Line 188
    lw	$a3,4($a0)
    # Line 189
    and	$t0,$t0,$t2
    sw	$t0,0($t1)
    # Line 190
    lw	$a7,28($a0)
    addu	$a7,$a7,$a2
    lw	$a6,0($a7)
    ori	$a6,$a6,0x2
    sw	$a6,0($a7)
    # Line 191
    lw	$a4,28($a0)
    addu	$a4,$a4,$a2
    # Line 192
    sll	$v0,$a3,0x2
    # Line 191
    sw	$a3,4($a4)
    # Line 192
    subu	$v0,$v0,$a3
    lw	$a1,28($a0)
    sll	$v0,$v0,0x2
    addu	$a3,$a1,$v0
    addu	$a1,$a1,$a2
    lw	$a3,8($a3)
    sw	$a3,8($a1)
    # Line 193
    lw	$at,28($a0)
    # Line 183
    teq	$v1,$zero,0x7
    # Line 193
    addu	$at,$at,$v0
    bltz	$a3,.L0d97d4ac
    swc1	$f4,8($at)
    # Line 195
    sll	$a6,$a3,0x2
    lw	$a5,28($a0)
    subu	$a6,$a6,$a3
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    swc1	$f4,4($a5)
    # Line 199
    lw	$a4,20($a0)
    addiu	$a4,$a4,1
    # Line 200
    jr	$ra
    # Line 199
    sw	$a4,20($a0)
.L0d97d4ac:
    lw	$a7,20($a0)
    # Line 197
    swc1	$f4,24($a0)
    # Line 199
    addiu	$a7,$a7,1
    # Line 200
    jr	$ra
    # Line 199
    sw	$a7,20($a0)
.end __glDlistFreePage

# Function: __glDlistIsPage
# Declared: Line 206 (Source lines: 208-208)
# Address: 0x0d97d4c0 - 0x0d97d508 (Size: 72 bytes, Frame: 0)
.globl __glDlistIsPage
.ent __glDlistIsPage
__glDlistIsPage:
    # Line 208
    lw	$a3,8($a0)
    sltu	$at,$a1,$a3
    lw	$a2,0($a0)
    dsll32	$v1,$a1,0x0
    lw	$v0,12($a0)
    bnez	$at,.L0d97d4f8
    dsrl32	$v1,$v1,0x0
    addiu	$a2,$a2,-1
    addu	$v0,$v0,$a3
    sltu	$v0,$a1,$v0
    beqz	$v0,.L0d97d4f8
    and	$v1,$v1,$a2
    beqz	$v1,.L0d97d500
    li	$v0,1
.L0d97d4f8:
    jr	$ra
    move	$v0,$zero
.L0d97d500:
    jr	$ra
    nop
.end __glDlistIsPage

