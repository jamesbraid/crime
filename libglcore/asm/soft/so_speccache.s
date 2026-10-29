# Source: ../soft/so_speccache.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_speccache.c
# Total Functions: 5

.text

# Function: __glInitLUTCache
# Declared: Line 48 (Source lines: 49-56)
# Address: 0x0da05990 - 0x0da059e4 (Size: 84 bytes, Frame: 32)
.globl __glInitLUTCache
.ent __glInitLUTCache
__glInitLUTCache:
    # Line 49
    addiu	$sp,$sp,-32
    lui	$at,0x5
    sd	$gp,16($sp)
    addiu	$at,$at,-19460
    addu	$gp,$t9,$at
    # Line 52
    lw	$t9,0($a0)
    li	$a1,16
    # Line 49
    sd	$s8,8($sp)
    # Line 52
    nop
    # Line 49
    sd	$ra,0($sp)
    # Line 52
    jalr	$t9
    # Line 49
    move	$s8,$a0
    # Line 52
    sw	$v0,28192($s8)
    # Line 55
    li	$v1,1
    sw	$v1,4($v0)
    ld	$ra,0($sp)
    # Line 54
    sw	$zero,0($v0)
    # Line 56
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitLUTCache

# Function: __glFreeLUTCache
# Declared: Line 58 (Source lines: 59-75)
# Address: 0x0da059f0 - 0x0da05b2c (Size: 316 bytes, Frame: 192)
.globl __glFreeLUTCache
.ent __glFreeLUTCache
__glFreeLUTCache:
    # Line 59
    addiu	$sp,$sp,-64
    sd	$s3,0($sp)
    # Line 65
    lw	$s3,28192($a0)
    # Line 66
    lw	$a1,0($s3)
    # Line 59
    sd	$s2,8($sp)
    lui	$at,0x5
    move	$s2,$a0
    sd	$ra,32($sp)
    addiu	$at,$at,-19556
    sd	$gp,16($sp)
    # Line 66
    blez	$a1,.L0da05a78
    # Line 59
    addu	$gp,$t9,$at
    andi	$t8,$a1,0x1
    # Line 66
    move	$a0,$a1
    sd	$s0,40($sp)
    move	$s0,$s3
    sd	$s1,48($sp)
    sll	$s1,$a1,0x3
    beqz	$t8,.L0da05a64
    addu	$s1,$s1,$s3
    # Line 69
    lw	$at,12($s3)
    lw	$ra,0($at)
    addiu	$ra,$ra,-1
    sw	$ra,0($at)
    lw	$a1,12($s3)
    lw	$t9,0($a1)
    beqz	$t9,.L0da05b14
    nop
.L0da05a60:
    # Line 67
    addiu	$s0,$s0,8
.L0da05a64:
    sra	$at,$a0,0x1
    bnezl	$at,.L0da05ab0
    # Line 69
    lw	$a0,12($s0)
.L0da05a70:
    ld	$s0,40($sp)
    ld	$s1,48($sp)
.L0da05a78:
    # Line 74
    lw	$t9,12($s2)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s3
    ld	$ra,32($sp)
    ld	$s3,0($sp)
    ld	$s2,8($sp)
    # Line 75
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da05aa0:
    # Line 67
    addiu	$s0,$s0,16
.L0da05aa4:
    beq	$s0,$s1,.L0da05a70
    nop
    # Line 69
    lw	$a0,12($s0)
.L0da05ab0:
    lw	$v1,0($a0)
    addiu	$v1,$v1,-1
    sw	$v1,0($a0)
    lw	$a1,12($s0)
    lw	$v0,0($a1)
    beqz	$v0,.L0da05b00
    nop
    lw	$a2,20($s0)
.L0da05ad0:
    lw	$a1,0($a2)
    addiu	$a1,$a1,-1
    sw	$a1,0($a2)
    lw	$a1,20($s0)
    lw	$a0,0($a1)
    bnez	$a0,.L0da05aa0
    nop
    # Line 71
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    b	.L0da05aa4
    # Line 67
    addiu	$s0,$s0,16
.L0da05b00:
    # Line 71
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    b	.L0da05ad0
    # Line 69
    lw	$a2,20($s0)
.L0da05b14:
    # Line 71
    lw	$t9,12($s2)
    sd	$a0,24($sp)
    jalr	$t9
    move	$a0,$s2
    b	.L0da05a60
    ld	$a0,24($sp)
.end __glFreeLUTCache

# Function: findEntry
# Declared: Line 77 (Source lines: 85-108)
# Address: 0x0da05b30 - 0x0da05bbc (Size: 140 bytes, Frame: 0)
.ent findEntry
findEntry:
    # Line 85
    lw	$at,0($a0)
    # Line 104
    move	$a4,$zero
    # Line 108
    move	$v0,$zero
    # Line 88
    blez	$at,.L0da05bb4
    move	$a3,$at
    move	$a4,$zero
    addu	$a6,$a3,$a4
    srl	$a5,$a6,0x1f
    addu	$a5,$a5,$a6
    nop
    nop
    nop
.L0da05b60:
    sra	$a5,$a5,0x1
    sll	$a6,$a5,0x3
    addu	$a6,$a0,$a6
    lwc1	$f4,8($a6)
    c.eq.s	$f4,$f13
    bc1t	.L0da05ba8
    nop
    # Line 97
    c.lt.s $f13,$f4
    # Line 104
    addiu	$t0,$a5,1
    movt	$a3,$a5,$fcc1
    movf	$a4,$t0,$fcc1
    slt	$a7,$a4,$a3
    # Line 88
    addu	$a6,$a3,$a4
    srl	$a5,$a6,0x1f
    # Line 104
    bnez	$a7,.L0da05b60
    # Line 88
    addu	$a5,$a5,$a6
.L0da05ba0:
    # Line 108
    jr	$ra
    # Line 107
    sw	$a4,0($a2)
.L0da05ba8:
    # Line 95
    lw	$v0,12($a6)
    # Line 108
    jr	$ra
    # Line 96
    sw	$a5,0($a2)
.L0da05bb4:
    b	.L0da05ba0
    nop
.end findEntry

# Function: __glCreateSpecLUT
# Declared: Line 111 (Source lines: 112-220)
# Address: 0x0da05bc0 - 0x0da05ea8 (Size: 744 bytes, Frame: 240)
.globl __glCreateSpecLUT
.ent __glCreateSpecLUT
__glCreateSpecLUT:
    # Line 112
    addiu	$sp,$sp,-112
    sd	$ra,88($sp)
    lui	$ra,0x5
    sd	$s5,80($sp)
    addiu	$ra,$ra,-20020
    sd	$gp,96($sp)
    addu	$gp,$t9,$ra
    # lw $t9, -32696($gp) # &sub_0da00000
    sd	$s3,104($sp)
    # Line 122
    lw	$s3,28192($a0)
    # Line 112
    addiu	$t9,$t9,23344
    # Line 124
    addiu	$a2,$sp,0
    # Line 112
    move	$s5,$a0
    sdc1	$f22,40($sp)
    mov.s	$f22,$f13
    sd	$s4,48($sp)
    # Line 124
    bal __glFreeLUTCache
    move	$a0,$s3
    sd	$s1,64($sp)
    move	$s4,$v0
    beqz	$v0,.L0da05c4c
    sd	$s0,56($sp)
    # Line 220
    ld	$gp,96($sp)
    ld	$s3,104($sp)
    ld	$s4,48($sp)
    ld	$s5,80($sp)
    ld	$ra,88($sp)
    move	$s0,$s0
    # Line 125
    lw	$at,0($v0)
    move	$s1,$s1
    # Line 220
    ldc1	$f22,40($sp)
    addiu	$sp,$sp,112
    # Line 125
    addiu	$at,$at,1
    # Line 220
    jr	$ra
    # Line 125
    sw	$at,0($v0)
.L0da05c4c:
    # Line 133
    lw	$a0,0($s3)
    sll	$a4,$a0,0x3
    slti	$v0,$a0,32
    move	$s1,$zero
    addu	$a4,$a4,$s3
    bnez	$v0,.L0da05ca8
    move	$v0,$a0
    move	$v0,$s3
    blez	$a0,.L0da05ea0
    sd	$s2,72($sp)
    li	$s2,1
    nop
    nop
.L0da05c80:
    # Line 150
    lw	$s0,12($v0)
    lw	$a5,0($s0)
    beq	$a5,$s2,.L0da05df0
    # Line 155
    nop	# was lw $t9, -22900($gp) # &memcpy
    # Line 149
    addiu	$a5,$v0,8
    addiu	$s1,$s1,1
    bne	$a4,$a5,.L0da05c80
    move	$v0,$a5
    b	.L0da05e2c
    # Line 167
    nop	# was lw $t9, -32696($gp) # &sub_0da00000
.L0da05ca8:
    sd	$s2,72($sp)
    li	$s2,1
.L0da05cb0:
    # Line 175
    lw	$a5,4($s3)
    # Line 174
    addiu	$s0,$v0,1
    # Line 175
    slt	$a6,$a5,$s0
    bnez	$a6,.L0da05e74
    # Line 174
    sw	$s0,0($s3)
.L0da05cc4:
    # Line 180
    lw	$v0,0($sp)
    subu	$a5,$s0,$v0
    beq	$a5,$s2,.L0da05cfc
    # Line 196
    sll	$s0,$v0,0x3
    # Line 192
    sll	$a0,$v0,0x3
    # lw $t9, -22900($gp) # &memcpy
    sll	$a2,$a5,0x3
    addu	$a0,$s3,$a0
    addiu	$a2,$a2,-8
    addiu	$a1,$a0,8
    jal	memcpy
    addiu	$a0,$a0,16
    lw	$v0,0($sp)
    # Line 196
    sll	$s0,$v0,0x3
.L0da05cfc:
    addu	$s0,$s3,$s0
    # Line 197
    swc1	$f22,8($s0)
    # Line 198
    lw	$t9,0($s5)
    li	$a1,1040
    move	$a0,$s5
    jalr	$t9
    # Line 196
    addiu	$s0,$s0,8
    # Line 198
    dmtc1	$zero,$f0
    cvt.d.s	$f6,$f22
    c.eq.d	$f6,$f0
    ldc1	$f5,_lit8_3ff0000000000000
    move	$s4,$v0
    bc1f	.L0da05e48
    sw	$v0,4($s0)
    sdc1	$f24,24($sp)
    sdc1	$f26,8($sp)
    dmtc1	$zero,$f26
    sdc1	$f20,16($sp)
.L0da05d44:
    # Line 211
    ldc1	$f24,_lit8_406fe00000000000
    sub.d	$f25,$f5,$f26
    div.d	$f24,$f24,$f25
    # Line 210
    mov.d	$f20,$f26
    # Line 211
    li	$s2,-1
    li	$s1,255
    addiu	$s0,$s4,16
    sdc1	$f24,32($sp)
    div.d	$f24,$f5,$f24
    nop
    nop
.L0da05d70:
    # Line 213
    # lw $t9, -22844($gp) # &powf
    mov.s	$f13,$f22
    cvt.s.d	$f12,$f20
    jal	powf
    addiu	$s0,$s0,4
    # Line 212
    addiu	$s1,$s1,-1
    # Line 214
    add.d	$f20,$f24,$f20
    # Line 212
    bne	$s1,$s2,.L0da05d70
    # Line 213
    swc1	$f0,-4($s0)
    # Line 220
    ld	$gp,96($sp)
    ld	$s0,56($sp)
    # Line 218
    li	$s1,2
    sw	$s1,0($s4)
    # Line 220
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    ld	$s3,104($sp)
    ld	$s5,80($sp)
    ldc1	$f20,16($sp)
    # Line 219
    swc1	$f22,12($s4)
    # Line 220
    ldc1	$f22,40($sp)
    ldc1	$f24,24($sp)
    # Line 216
    cvt.s.d	$f26,$f26
    # Line 217
    ldc1	$f27,32($sp)
    # Line 216
    swc1	$f26,4($s4)
    # Line 220
    ld	$ra,88($sp)
    ldc1	$f26,8($sp)
    # Line 217
    cvt.s.d	$f27,$f27
    # Line 220
    move	$v0,$s4
    # Line 217
    swc1	$f27,8($s4)
    # Line 220
    ld	$s4,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da05df0:
    # Line 153
    addiu	$a3,$a5,-1
    sw	$a3,0($s0)
    # Line 154
    lw	$a2,0($s3)
    # Line 155
    addiu	$a1,$v0,16
    addiu	$a0,$v0,8
    # Line 154
    addiu	$a2,$a2,-1
    sw	$a2,0($s3)
    # Line 155
    subu	$a2,$a2,$s1
    jalr	$t9
    sll	$a2,$a2,0x3
    # Line 158
    lw	$t9,12($s5)
    move	$a0,$s5
    jalr	$t9
    move	$a1,$s0
.L0da05e28:
    # Line 167
    # lw $t9, -32696($gp) # &sub_0da00000
.L0da05e2c:
    addiu	$t9,$t9,23344
    move	$a0,$s3
    mov.s	$f13,$f22
    bal __glFreeLUTCache
    addiu	$a2,$sp,0
    b	.L0da05cb0
    lw	$v0,0($s3)
.L0da05e48:
    # Line 205
    div.d	$f13,$f5,$f6
    # lw $t9, -22844($gp) # &powf
    lwc1	$f12,_lit_3a378034
    sdc1	$f26,8($sp)
    jal	powf
    cvt.s.d	$f13,$f13
    ldc1	$f5,_lit8_3ff0000000000000
    sdc1	$f24,24($sp)
    cvt.d.s	$f26,$f0
    b	.L0da05d44
    sdc1	$f20,16($sp)
.L0da05e74:
    # Line 179
    addiu	$a3,$a5,6
    sw	$a3,4($s3)
    # Line 180
    lw	$t9,8($s5)
    move	$a1,$s3
    move	$a0,$s5
    sll	$a2,$a5,0x3
    jalr	$t9
    addiu	$a2,$a2,64
    move	$s3,$v0
    b	.L0da05cc4
    sw	$v0,28192($s5)
.L0da05ea0:
    b	.L0da05e28
    # Line 149
    li	$s2,1
.end __glCreateSpecLUT

# Function: __glFreeSpecLUT
# Declared: Line 223 (Source lines: 224-244)
# Address: 0x0da05eb0 - 0x0da05f00 (Size: 80 bytes, Frame: 16)
.globl __glFreeSpecLUT
.ent __glFreeSpecLUT
__glFreeSpecLUT:
    # Line 224
    move	$a3,$a0
    lui	$at,0x5
    addiu	$sp,$sp,-16
    addiu	$at,$at,-20772
    sd	$gp,0($sp)
    beqz	$a1,.L0da05edc
    addu	$gp,$t9,$at
    # Line 229
    lw	$v0,0($a1)
    addiu	$v0,$v0,-1
    blez	$v0,.L0da05ee8
    sw	$v0,0($a1)
.L0da05edc:
    # Line 244
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da05ee8:
    # Line 243
    lw	$t9,12($a3)
    sd	$ra,8($sp)
    jalr	$t9
    move	$a0,$zero
    b	.L0da05edc
    ld	$ra,8($sp)
.end __glFreeSpecLUT

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit_3a378034:
    .word 0x3a378034

