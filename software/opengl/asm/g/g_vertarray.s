# Source: g_vertarray.c
# Category: g
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_vertarray.c
# Total Functions: 33

.text

# Function: __glDrawArraysV
# Declared: Line 7 (Source lines: 7-24)
# Address: 0x0d98e6d0 - 0x0d98e778 (Size: 168 bytes, Frame: 192)
.globl __glDrawArraysV
.ent __glDrawArraysV
__glDrawArraysV:
    # Line 7
    addiu	$sp,$sp,-64
    sd	$s4,16($sp)
    # Line 8
    lw	$s4,4112($zero)
    # Line 16
    lw	$at,5040($s4)
    # Line 7
    sd	$s2,0($sp)
    # Line 16
    mult	$at,$a1
    # Line 7
    sd	$ra,32($sp)
    lui	$ra,0xc
    sd	$s0,24($sp)
    addiu	$ra,$ra,9916
    sd	$gp,40($sp)
    addu	$gp,$t9,$ra
    # Line 19
    # lw $t9, -22700($gp) # &glBegin
    # Line 16
    lw	$s0,5028($s4)
    # Line 7
    move	$s2,$a2
    sd	$s3,8($sp)
    # Line 16
    mflo	$t8
    # Line 17
    lw	$s3,5052($s4)
    # Line 19
    jal	glBegin
    # Line 16
    addu	$s0,$s0,$t8
    # Line 19
    blez	$s2,.L0d98e750
    nop
    sd	$s1,48($sp)
    move	$s1,$zero
.L0d98e730:
    # Line 21
    move	$t9,$s3
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5040($s4)
    # Line 20
    addiu	$s1,$s1,1
    bne	$s2,$s1,.L0d98e730
    # Line 21
    addu	$s0,$v0,$s0
    ld	$s1,48($sp)
.L0d98e750:
    ld	$s2,0($sp)
    # Line 23
    # lw $t9, -22628($gp) # &glEnd
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    jal	glEnd
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    # Line 24
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDrawArraysV

# Function: __glDrawArraysNV
# Declared: Line 25 (Source lines: 25-45)
# Address: 0x0d98e780 - 0x0d98e874 (Size: 244 bytes, Frame: 208)
.globl __glDrawArraysNV
.ent __glDrawArraysNV
__glDrawArraysNV:
    # Line 25
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 26
    lw	$s2,4112($zero)
    # Line 25
    sd	$ra,48($sp)
    # Line 34
    lw	$ra,5064($s2)
    mult	$ra,$a1
    # Line 25
    sd	$s4,16($sp)
    sd	$s0,24($sp)
    # Line 36
    lw	$t8,5040($s2)
    # Line 25
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    # Line 34
    mflo	$s5
    nop
    nop
    # Line 36
    mult	$t8,$a1
    # Line 25
    sd	$s6,8($sp)
    lui	$s6,0xc
    sd	$gp,56($sp)
    addiu	$s6,$s6,9740
    # Line 34
    lw	$s1,5056($s2)
    # Line 25
    addu	$gp,$t9,$s6
    # Line 39
    # lw $t9, -22700($gp) # &glBegin
    # Line 25
    move	$s4,$a2
    # Line 36
    lw	$s0,5028($s2)
    # Line 37
    lw	$s6,5052($s2)
    # Line 34
    addu	$s1,$s1,$s5
    # Line 36
    mflo	$t8
    # Line 35
    lw	$s5,5076($s2)
    # Line 39
    jal	glBegin
    # Line 36
    addu	$s0,$s0,$t8
    # Line 39
    blez	$s4,.L0d98e844
    nop
    sd	$s3,64($sp)
    move	$s3,$zero
    nop
    nop
.L0d98e810:
    # Line 41
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s1
    lw	$at,5064($s2)
    # Line 42
    move	$t9,$s6
    move	$a0,$s0
    jalr	$t9
    # Line 41
    addu	$s1,$at,$s1
    # Line 42
    lw	$v0,5040($s2)
    # Line 40
    addiu	$s3,$s3,1
    bne	$s4,$s3,.L0d98e810
    # Line 42
    addu	$s0,$v0,$s0
    ld	$s3,64($sp)
.L0d98e844:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    # Line 44
    # lw $t9, -22628($gp) # &glEnd
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jal	glEnd
    ld	$s5,40($sp)
    ld	$ra,48($sp)
    # Line 45
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDrawArraysNV

# Function: __glDrawArraysCV
# Declared: Line 46 (Source lines: 46-66)
# Address: 0x0d98e880 - 0x0d98e974 (Size: 244 bytes, Frame: 208)
.globl __glDrawArraysCV
.ent __glDrawArraysCV
__glDrawArraysCV:
    # Line 46
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 47
    lw	$s2,4112($zero)
    # Line 46
    sd	$ra,48($sp)
    # Line 55
    lw	$ra,5092($s2)
    mult	$ra,$a1
    # Line 46
    sd	$s4,16($sp)
    sd	$s0,24($sp)
    # Line 57
    lw	$t8,5040($s2)
    # Line 46
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    # Line 55
    mflo	$s5
    nop
    nop
    # Line 57
    mult	$t8,$a1
    # Line 46
    sd	$s6,8($sp)
    lui	$s6,0xc
    sd	$gp,56($sp)
    addiu	$s6,$s6,9484
    # Line 55
    lw	$s1,5080($s2)
    # Line 46
    addu	$gp,$t9,$s6
    # Line 60
    # lw $t9, -22700($gp) # &glBegin
    # Line 46
    move	$s4,$a2
    # Line 57
    lw	$s0,5028($s2)
    # Line 58
    lw	$s6,5052($s2)
    # Line 55
    addu	$s1,$s1,$s5
    # Line 57
    mflo	$t8
    # Line 56
    lw	$s5,5104($s2)
    # Line 60
    jal	glBegin
    # Line 57
    addu	$s0,$s0,$t8
    # Line 60
    blez	$s4,.L0d98e944
    nop
    sd	$s3,64($sp)
    move	$s3,$zero
    nop
    nop
.L0d98e910:
    # Line 62
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s1
    lw	$at,5092($s2)
    # Line 63
    move	$t9,$s6
    move	$a0,$s0
    jalr	$t9
    # Line 62
    addu	$s1,$at,$s1
    # Line 63
    lw	$v0,5040($s2)
    # Line 61
    addiu	$s3,$s3,1
    bne	$s4,$s3,.L0d98e910
    # Line 63
    addu	$s0,$v0,$s0
    ld	$s3,64($sp)
.L0d98e944:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    # Line 65
    # lw $t9, -22628($gp) # &glEnd
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jal	glEnd
    ld	$s5,40($sp)
    ld	$ra,48($sp)
    # Line 66
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDrawArraysCV

# Function: __glDrawArraysNCV
# Declared: Line 67 (Source lines: 67-90)
# Address: 0x0d98e980 - 0x0d98eab0 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysNCV
.ent __glDrawArraysNCV
__glDrawArraysNCV:
    # Line 67
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 68
    lw	$s3,4112($zero)
    # Line 76
    lw	$at,5064($s3)
    mult	$at,$a1
    # Line 67
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 78
    lw	$ra,5092($s3)
    # Line 67
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 76
    mflo	$t8
    nop
    nop
    # Line 78
    mult	$ra,$a1
    # Line 67
    sd	$s0,24($sp)
    # Line 81
    lw	$s7,5052($s3)
    # Line 67
    sd	$s2,0($sp)
    # Line 80
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 67
    sd	$s6,16($sp)
    # Line 78
    mflo	$s6
    nop
    nop
    # Line 80
    mult	$ra,$a1
    # Line 67
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 78
    lw	$s0,5080($s3)
    # Line 67
    addiu	$s8,$s8,9228
    # Line 76
    lw	$s2,5056($s3)
    # Line 67
    addu	$gp,$t9,$s8
    # Line 83
    # lw $t9, -22700($gp) # &glBegin
    # Line 67
    move	$s5,$a2
    # Line 80
    lw	$s1,5028($s3)
    # Line 76
    addu	$s2,$s2,$t8
    # Line 79
    lw	$s8,5104($s3)
    # Line 78
    addu	$s0,$s0,$s6
    # Line 80
    mflo	$t8
    # Line 77
    lw	$s6,5076($s3)
    # Line 83
    jal	glBegin
    # Line 80
    addu	$s1,$s1,$t8
    # Line 83
    blez	$s5,.L0d98ea78
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98ea30:
    # Line 85
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5064($s3)
    # Line 86
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 85
    addu	$s2,$v0,$s2
    # Line 86
    lw	$v1,5092($s3)
    # Line 87
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 86
    addu	$s0,$v1,$s0
    # Line 87
    lw	$a0,5040($s3)
    # Line 84
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98ea30
    # Line 87
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98ea78:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 89
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 90
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysNCV

# Function: __glDrawArraysTV
# Declared: Line 91 (Source lines: 91-111)
# Address: 0x0d98eab0 - 0x0d98eba4 (Size: 244 bytes, Frame: 208)
.globl __glDrawArraysTV
.ent __glDrawArraysTV
__glDrawArraysTV:
    # Line 91
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 92
    lw	$s2,4112($zero)
    # Line 91
    sd	$ra,48($sp)
    # Line 100
    lw	$ra,5144($s2)
    mult	$ra,$a1
    # Line 91
    sd	$s4,16($sp)
    sd	$s0,24($sp)
    # Line 102
    lw	$t8,5040($s2)
    # Line 91
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    # Line 100
    mflo	$s5
    nop
    nop
    # Line 102
    mult	$t8,$a1
    # Line 91
    sd	$s6,8($sp)
    lui	$s6,0xc
    sd	$gp,56($sp)
    addiu	$s6,$s6,8924
    # Line 100
    lw	$s1,5132($s2)
    # Line 91
    addu	$gp,$t9,$s6
    # Line 105
    # lw $t9, -22700($gp) # &glBegin
    # Line 91
    move	$s4,$a2
    # Line 102
    lw	$s0,5028($s2)
    # Line 103
    lw	$s6,5052($s2)
    # Line 100
    addu	$s1,$s1,$s5
    # Line 102
    mflo	$t8
    # Line 101
    lw	$s5,5156($s2)
    # Line 105
    jal	glBegin
    # Line 102
    addu	$s0,$s0,$t8
    # Line 105
    blez	$s4,.L0d98eb74
    nop
    sd	$s3,64($sp)
    move	$s3,$zero
    nop
    nop
.L0d98eb40:
    # Line 107
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s1
    lw	$at,5144($s2)
    # Line 108
    move	$t9,$s6
    move	$a0,$s0
    jalr	$t9
    # Line 107
    addu	$s1,$at,$s1
    # Line 108
    lw	$v0,5040($s2)
    # Line 106
    addiu	$s3,$s3,1
    bne	$s4,$s3,.L0d98eb40
    # Line 108
    addu	$s0,$v0,$s0
    ld	$s3,64($sp)
.L0d98eb74:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    # Line 110
    # lw $t9, -22628($gp) # &glEnd
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jal	glEnd
    ld	$s5,40($sp)
    ld	$ra,48($sp)
    # Line 111
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDrawArraysTV

# Function: __glDrawArraysNTV
# Declared: Line 112 (Source lines: 112-135)
# Address: 0x0d98ebb0 - 0x0d98ece0 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysNTV
.ent __glDrawArraysNTV
__glDrawArraysNTV:
    # Line 112
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 113
    lw	$s3,4112($zero)
    # Line 121
    lw	$at,5064($s3)
    mult	$at,$a1
    # Line 112
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 123
    lw	$ra,5144($s3)
    # Line 112
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 121
    mflo	$t8
    nop
    nop
    # Line 123
    mult	$ra,$a1
    # Line 112
    sd	$s0,24($sp)
    # Line 126
    lw	$s7,5052($s3)
    # Line 112
    sd	$s2,0($sp)
    # Line 125
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 112
    sd	$s6,16($sp)
    # Line 123
    mflo	$s6
    nop
    nop
    # Line 125
    mult	$ra,$a1
    # Line 112
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 123
    lw	$s0,5132($s3)
    # Line 112
    addiu	$s8,$s8,8668
    # Line 121
    lw	$s2,5056($s3)
    # Line 112
    addu	$gp,$t9,$s8
    # Line 128
    # lw $t9, -22700($gp) # &glBegin
    # Line 112
    move	$s5,$a2
    # Line 125
    lw	$s1,5028($s3)
    # Line 121
    addu	$s2,$s2,$t8
    # Line 124
    lw	$s8,5156($s3)
    # Line 123
    addu	$s0,$s0,$s6
    # Line 125
    mflo	$t8
    # Line 122
    lw	$s6,5076($s3)
    # Line 128
    jal	glBegin
    # Line 125
    addu	$s1,$s1,$t8
    # Line 128
    blez	$s5,.L0d98eca8
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98ec60:
    # Line 130
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5064($s3)
    # Line 131
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 130
    addu	$s2,$v0,$s2
    # Line 131
    lw	$v1,5144($s3)
    # Line 132
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 131
    addu	$s0,$v1,$s0
    # Line 132
    lw	$a0,5040($s3)
    # Line 129
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98ec60
    # Line 132
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98eca8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 134
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 135
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysNTV

# Function: __glDrawArraysCTV
# Declared: Line 136 (Source lines: 136-159)
# Address: 0x0d98ece0 - 0x0d98ee10 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysCTV
.ent __glDrawArraysCTV
__glDrawArraysCTV:
    # Line 136
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 137
    lw	$s3,4112($zero)
    # Line 145
    lw	$at,5092($s3)
    mult	$at,$a1
    # Line 136
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 147
    lw	$ra,5144($s3)
    # Line 136
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 145
    mflo	$t8
    nop
    nop
    # Line 147
    mult	$ra,$a1
    # Line 136
    sd	$s0,24($sp)
    # Line 150
    lw	$s7,5052($s3)
    # Line 136
    sd	$s2,0($sp)
    # Line 149
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 136
    sd	$s6,16($sp)
    # Line 147
    mflo	$s6
    nop
    nop
    # Line 149
    mult	$ra,$a1
    # Line 136
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 147
    lw	$s0,5132($s3)
    # Line 136
    addiu	$s8,$s8,8364
    # Line 145
    lw	$s2,5080($s3)
    # Line 136
    addu	$gp,$t9,$s8
    # Line 152
    # lw $t9, -22700($gp) # &glBegin
    # Line 136
    move	$s5,$a2
    # Line 149
    lw	$s1,5028($s3)
    # Line 145
    addu	$s2,$s2,$t8
    # Line 148
    lw	$s8,5156($s3)
    # Line 147
    addu	$s0,$s0,$s6
    # Line 149
    mflo	$t8
    # Line 146
    lw	$s6,5104($s3)
    # Line 152
    jal	glBegin
    # Line 149
    addu	$s1,$s1,$t8
    # Line 152
    blez	$s5,.L0d98edd8
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98ed90:
    # Line 154
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5092($s3)
    # Line 155
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 154
    addu	$s2,$v0,$s2
    # Line 155
    lw	$v1,5144($s3)
    # Line 156
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 155
    addu	$s0,$v1,$s0
    # Line 156
    lw	$a0,5040($s3)
    # Line 153
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98ed90
    # Line 156
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98edd8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 158
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 159
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysCTV

# Function: __glDrawArraysNCTV
# Declared: Line 160 (Source lines: 160-186)
# Address: 0x0d98ee10 - 0x0d98ef84 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysNCTV
.ent __glDrawArraysNCTV
__glDrawArraysNCTV:
    # Line 160
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 161
    lw	$s0,4112($zero)
    # Line 169
    lw	$t8,5064($s0)
    mult	$t8,$a1
    # Line 160
    sd	$s7,56($sp)
    # Line 171
    lw	$s7,5092($s0)
    # Line 160
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 169
    mflo	$s2
    nop
    nop
    # Line 171
    mult	$s7,$a1
    # Line 160
    sd	$s8,64($sp)
    # Line 174
    lw	$s8,5156($s0)
    # Line 160
    sd	$s6,16($sp)
    # Line 173
    lw	$s6,5144($s0)
    # Line 160
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 171
    mflo	$s5
    nop
    nop
    # Line 173
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 160
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,8060
    # Line 175
    lw	$s3,5040($s0)
    # Line 160
    addu	$gp,$t9,$s4
    # Line 171
    lw	$s4,5080($s0)
    # Line 169
    lw	$s1,5056($s0)
    # Line 173
    mflo	$s7
    nop
    nop
    # Line 175
    mult	$s3,$a1
    # Line 178
    # lw $t9, -22700($gp) # &glBegin
    # Line 169
    addu	$s1,$s1,$s2
    # Line 175
    lw	$s2,5028($s0)
    # Line 176
    lw	$s6,5052($s0)
    # Line 173
    lw	$s3,5132($s0)
    # Line 176
    sd	$s6,96($sp)
    # Line 160
    move	$s6,$a2
    # Line 171
    addu	$s4,$s4,$s5
    # Line 172
    lw	$s5,5104($s0)
    # Line 173
    addu	$s3,$s3,$s7
    # Line 175
    mflo	$t8
    # Line 170
    lw	$s7,5076($s0)
    # Line 178
    jal	glBegin
    # Line 175
    addu	$s2,$s2,$t8
    # Line 178
    blez	$s6,.L0d98ef48
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d98eef0:
    # Line 180
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5064($s0)
    addu	$s1,$t9,$s1
    # Line 181
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5092($s0)
    # Line 182
    move	$t9,$s8
    # Line 181
    addu	$s4,$ra,$s4
    # Line 182
    jalr	$t9
    move	$a0,$s3
    # Line 183
    ld	$t9,96($sp)
    # Line 182
    lw	$at,5144($s0)
    # Line 183
    move	$a0,$s2
    jalr	$t9
    # Line 182
    addu	$s3,$at,$s3
    # Line 183
    lw	$v0,5040($s0)
    # Line 179
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d98eef0
    # Line 183
    addu	$s2,$v0,$s2
.L0d98ef48:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 185
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 186
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysNCTV

# Function: __glDrawArraysIV
# Declared: Line 187 (Source lines: 187-207)
# Address: 0x0d98ef90 - 0x0d98f084 (Size: 244 bytes, Frame: 208)
.globl __glDrawArraysIV
.ent __glDrawArraysIV
__glDrawArraysIV:
    # Line 187
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 188
    lw	$s2,4112($zero)
    # Line 187
    sd	$ra,48($sp)
    # Line 196
    lw	$ra,5116($s2)
    mult	$ra,$a1
    # Line 187
    sd	$s4,16($sp)
    sd	$s0,24($sp)
    # Line 198
    lw	$t8,5040($s2)
    # Line 187
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    # Line 196
    mflo	$s5
    nop
    nop
    # Line 198
    mult	$t8,$a1
    # Line 187
    sd	$s6,8($sp)
    lui	$s6,0xc
    sd	$gp,56($sp)
    addiu	$s6,$s6,7676
    # Line 196
    lw	$s1,5108($s2)
    # Line 187
    addu	$gp,$t9,$s6
    # Line 201
    # lw $t9, -22700($gp) # &glBegin
    # Line 187
    move	$s4,$a2
    # Line 198
    lw	$s0,5028($s2)
    # Line 199
    lw	$s6,5052($s2)
    # Line 196
    addu	$s1,$s1,$s5
    # Line 198
    mflo	$t8
    # Line 197
    lw	$s5,5128($s2)
    # Line 201
    jal	glBegin
    # Line 198
    addu	$s0,$s0,$t8
    # Line 201
    blez	$s4,.L0d98f054
    nop
    sd	$s3,64($sp)
    move	$s3,$zero
    nop
    nop
.L0d98f020:
    # Line 203
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s1
    lw	$at,5116($s2)
    # Line 204
    move	$t9,$s6
    move	$a0,$s0
    jalr	$t9
    # Line 203
    addu	$s1,$at,$s1
    # Line 204
    lw	$v0,5040($s2)
    # Line 202
    addiu	$s3,$s3,1
    bne	$s4,$s3,.L0d98f020
    # Line 204
    addu	$s0,$v0,$s0
    ld	$s3,64($sp)
.L0d98f054:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    # Line 206
    # lw $t9, -22628($gp) # &glEnd
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jal	glEnd
    ld	$s5,40($sp)
    ld	$ra,48($sp)
    # Line 207
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDrawArraysIV

# Function: __glDrawArraysNIV
# Declared: Line 208 (Source lines: 208-231)
# Address: 0x0d98f090 - 0x0d98f1c0 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysNIV
.ent __glDrawArraysNIV
__glDrawArraysNIV:
    # Line 208
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 209
    lw	$s3,4112($zero)
    # Line 217
    lw	$at,5064($s3)
    mult	$at,$a1
    # Line 208
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 219
    lw	$ra,5116($s3)
    # Line 208
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 217
    mflo	$t8
    nop
    nop
    # Line 219
    mult	$ra,$a1
    # Line 208
    sd	$s0,24($sp)
    # Line 222
    lw	$s7,5052($s3)
    # Line 208
    sd	$s2,0($sp)
    # Line 221
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 208
    sd	$s6,16($sp)
    # Line 219
    mflo	$s6
    nop
    nop
    # Line 221
    mult	$ra,$a1
    # Line 208
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 219
    lw	$s0,5108($s3)
    # Line 208
    addiu	$s8,$s8,7420
    # Line 217
    lw	$s2,5056($s3)
    # Line 208
    addu	$gp,$t9,$s8
    # Line 224
    # lw $t9, -22700($gp) # &glBegin
    # Line 208
    move	$s5,$a2
    # Line 221
    lw	$s1,5028($s3)
    # Line 217
    addu	$s2,$s2,$t8
    # Line 220
    lw	$s8,5128($s3)
    # Line 219
    addu	$s0,$s0,$s6
    # Line 221
    mflo	$t8
    # Line 218
    lw	$s6,5076($s3)
    # Line 224
    jal	glBegin
    # Line 221
    addu	$s1,$s1,$t8
    # Line 224
    blez	$s5,.L0d98f188
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98f140:
    # Line 226
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5064($s3)
    # Line 227
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 226
    addu	$s2,$v0,$s2
    # Line 227
    lw	$v1,5116($s3)
    # Line 228
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 227
    addu	$s0,$v1,$s0
    # Line 228
    lw	$a0,5040($s3)
    # Line 225
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98f140
    # Line 228
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98f188:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 230
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 231
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysNIV

# Function: __glDrawArraysCIV
# Declared: Line 232 (Source lines: 232-255)
# Address: 0x0d98f1c0 - 0x0d98f2f0 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysCIV
.ent __glDrawArraysCIV
__glDrawArraysCIV:
    # Line 232
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 233
    lw	$s3,4112($zero)
    # Line 241
    lw	$at,5092($s3)
    mult	$at,$a1
    # Line 232
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 243
    lw	$ra,5116($s3)
    # Line 232
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 241
    mflo	$t8
    nop
    nop
    # Line 243
    mult	$ra,$a1
    # Line 232
    sd	$s0,24($sp)
    # Line 246
    lw	$s7,5052($s3)
    # Line 232
    sd	$s2,0($sp)
    # Line 245
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 232
    sd	$s6,16($sp)
    # Line 243
    mflo	$s6
    nop
    nop
    # Line 245
    mult	$ra,$a1
    # Line 232
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 243
    lw	$s0,5108($s3)
    # Line 232
    addiu	$s8,$s8,7116
    # Line 241
    lw	$s2,5080($s3)
    # Line 232
    addu	$gp,$t9,$s8
    # Line 248
    # lw $t9, -22700($gp) # &glBegin
    # Line 232
    move	$s5,$a2
    # Line 245
    lw	$s1,5028($s3)
    # Line 241
    addu	$s2,$s2,$t8
    # Line 244
    lw	$s8,5128($s3)
    # Line 243
    addu	$s0,$s0,$s6
    # Line 245
    mflo	$t8
    # Line 242
    lw	$s6,5104($s3)
    # Line 248
    jal	glBegin
    # Line 245
    addu	$s1,$s1,$t8
    # Line 248
    blez	$s5,.L0d98f2b8
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98f270:
    # Line 250
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5092($s3)
    # Line 251
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 250
    addu	$s2,$v0,$s2
    # Line 251
    lw	$v1,5116($s3)
    # Line 252
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 251
    addu	$s0,$v1,$s0
    # Line 252
    lw	$a0,5040($s3)
    # Line 249
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98f270
    # Line 252
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98f2b8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 254
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 255
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysCIV

# Function: __glDrawArraysNCIV
# Declared: Line 256 (Source lines: 256-282)
# Address: 0x0d98f2f0 - 0x0d98f464 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysNCIV
.ent __glDrawArraysNCIV
__glDrawArraysNCIV:
    # Line 256
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 257
    lw	$s0,4112($zero)
    # Line 265
    lw	$t8,5064($s0)
    mult	$t8,$a1
    # Line 256
    sd	$s7,56($sp)
    # Line 267
    lw	$s7,5092($s0)
    # Line 256
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 265
    mflo	$s2
    nop
    nop
    # Line 267
    mult	$s7,$a1
    # Line 256
    sd	$s8,64($sp)
    # Line 270
    lw	$s8,5128($s0)
    # Line 256
    sd	$s6,16($sp)
    # Line 269
    lw	$s6,5116($s0)
    # Line 256
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 267
    mflo	$s5
    nop
    nop
    # Line 269
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 256
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,6812
    # Line 271
    lw	$s3,5040($s0)
    # Line 256
    addu	$gp,$t9,$s4
    # Line 267
    lw	$s4,5080($s0)
    # Line 265
    lw	$s1,5056($s0)
    # Line 269
    mflo	$s7
    nop
    nop
    # Line 271
    mult	$s3,$a1
    # Line 274
    # lw $t9, -22700($gp) # &glBegin
    # Line 265
    addu	$s1,$s1,$s2
    # Line 271
    lw	$s2,5028($s0)
    # Line 272
    lw	$s6,5052($s0)
    # Line 269
    lw	$s3,5108($s0)
    # Line 272
    sd	$s6,96($sp)
    # Line 256
    move	$s6,$a2
    # Line 267
    addu	$s4,$s4,$s5
    # Line 268
    lw	$s5,5104($s0)
    # Line 269
    addu	$s3,$s3,$s7
    # Line 271
    mflo	$t8
    # Line 266
    lw	$s7,5076($s0)
    # Line 274
    jal	glBegin
    # Line 271
    addu	$s2,$s2,$t8
    # Line 274
    blez	$s6,.L0d98f428
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d98f3d0:
    # Line 276
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5064($s0)
    addu	$s1,$t9,$s1
    # Line 277
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5092($s0)
    # Line 278
    move	$t9,$s8
    # Line 277
    addu	$s4,$ra,$s4
    # Line 278
    jalr	$t9
    move	$a0,$s3
    # Line 279
    ld	$t9,96($sp)
    # Line 278
    lw	$at,5116($s0)
    # Line 279
    move	$a0,$s2
    jalr	$t9
    # Line 278
    addu	$s3,$at,$s3
    # Line 279
    lw	$v0,5040($s0)
    # Line 275
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d98f3d0
    # Line 279
    addu	$s2,$v0,$s2
.L0d98f428:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 281
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 282
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysNCIV

# Function: __glDrawArraysTIV
# Declared: Line 283 (Source lines: 283-306)
# Address: 0x0d98f470 - 0x0d98f5a0 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysTIV
.ent __glDrawArraysTIV
__glDrawArraysTIV:
    # Line 283
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 284
    lw	$s3,4112($zero)
    # Line 292
    lw	$at,5144($s3)
    mult	$at,$a1
    # Line 283
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 294
    lw	$ra,5116($s3)
    # Line 283
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 292
    mflo	$t8
    nop
    nop
    # Line 294
    mult	$ra,$a1
    # Line 283
    sd	$s0,24($sp)
    # Line 297
    lw	$s7,5052($s3)
    # Line 283
    sd	$s2,0($sp)
    # Line 296
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 283
    sd	$s6,16($sp)
    # Line 294
    mflo	$s6
    nop
    nop
    # Line 296
    mult	$ra,$a1
    # Line 283
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 294
    lw	$s0,5108($s3)
    # Line 283
    addiu	$s8,$s8,6428
    # Line 292
    lw	$s2,5132($s3)
    # Line 283
    addu	$gp,$t9,$s8
    # Line 299
    # lw $t9, -22700($gp) # &glBegin
    # Line 283
    move	$s5,$a2
    # Line 296
    lw	$s1,5028($s3)
    # Line 292
    addu	$s2,$s2,$t8
    # Line 295
    lw	$s8,5128($s3)
    # Line 294
    addu	$s0,$s0,$s6
    # Line 296
    mflo	$t8
    # Line 293
    lw	$s6,5156($s3)
    # Line 299
    jal	glBegin
    # Line 296
    addu	$s1,$s1,$t8
    # Line 299
    blez	$s5,.L0d98f568
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98f520:
    # Line 301
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5144($s3)
    # Line 302
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 301
    addu	$s2,$v0,$s2
    # Line 302
    lw	$v1,5116($s3)
    # Line 303
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 302
    addu	$s0,$v1,$s0
    # Line 303
    lw	$a0,5040($s3)
    # Line 300
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98f520
    # Line 303
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98f568:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 305
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 306
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysTIV

# Function: __glDrawArraysNTIV
# Declared: Line 307 (Source lines: 307-333)
# Address: 0x0d98f5a0 - 0x0d98f714 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysNTIV
.ent __glDrawArraysNTIV
__glDrawArraysNTIV:
    # Line 307
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 308
    lw	$s0,4112($zero)
    # Line 316
    lw	$t8,5064($s0)
    mult	$t8,$a1
    # Line 307
    sd	$s7,56($sp)
    # Line 318
    lw	$s7,5144($s0)
    # Line 307
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 316
    mflo	$s2
    nop
    nop
    # Line 318
    mult	$s7,$a1
    # Line 307
    sd	$s8,64($sp)
    # Line 321
    lw	$s8,5128($s0)
    # Line 307
    sd	$s6,16($sp)
    # Line 320
    lw	$s6,5116($s0)
    # Line 307
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 318
    mflo	$s5
    nop
    nop
    # Line 320
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 307
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,6124
    # Line 322
    lw	$s3,5040($s0)
    # Line 307
    addu	$gp,$t9,$s4
    # Line 318
    lw	$s4,5132($s0)
    # Line 316
    lw	$s1,5056($s0)
    # Line 320
    mflo	$s7
    nop
    nop
    # Line 322
    mult	$s3,$a1
    # Line 325
    # lw $t9, -22700($gp) # &glBegin
    # Line 316
    addu	$s1,$s1,$s2
    # Line 322
    lw	$s2,5028($s0)
    # Line 323
    lw	$s6,5052($s0)
    # Line 320
    lw	$s3,5108($s0)
    # Line 323
    sd	$s6,96($sp)
    # Line 307
    move	$s6,$a2
    # Line 318
    addu	$s4,$s4,$s5
    # Line 319
    lw	$s5,5156($s0)
    # Line 320
    addu	$s3,$s3,$s7
    # Line 322
    mflo	$t8
    # Line 317
    lw	$s7,5076($s0)
    # Line 325
    jal	glBegin
    # Line 322
    addu	$s2,$s2,$t8
    # Line 325
    blez	$s6,.L0d98f6d8
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d98f680:
    # Line 327
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5064($s0)
    addu	$s1,$t9,$s1
    # Line 328
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5144($s0)
    # Line 329
    move	$t9,$s8
    # Line 328
    addu	$s4,$ra,$s4
    # Line 329
    jalr	$t9
    move	$a0,$s3
    # Line 330
    ld	$t9,96($sp)
    # Line 329
    lw	$at,5116($s0)
    # Line 330
    move	$a0,$s2
    jalr	$t9
    # Line 329
    addu	$s3,$at,$s3
    # Line 330
    lw	$v0,5040($s0)
    # Line 326
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d98f680
    # Line 330
    addu	$s2,$v0,$s2
.L0d98f6d8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 332
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 333
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysNTIV

# Function: __glDrawArraysCTIV
# Declared: Line 334 (Source lines: 334-360)
# Address: 0x0d98f720 - 0x0d98f894 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysCTIV
.ent __glDrawArraysCTIV
__glDrawArraysCTIV:
    # Line 334
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 335
    lw	$s0,4112($zero)
    # Line 343
    lw	$t8,5092($s0)
    mult	$t8,$a1
    # Line 334
    sd	$s7,56($sp)
    # Line 345
    lw	$s7,5144($s0)
    # Line 334
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 343
    mflo	$s2
    nop
    nop
    # Line 345
    mult	$s7,$a1
    # Line 334
    sd	$s8,64($sp)
    # Line 348
    lw	$s8,5128($s0)
    # Line 334
    sd	$s6,16($sp)
    # Line 347
    lw	$s6,5116($s0)
    # Line 334
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 345
    mflo	$s5
    nop
    nop
    # Line 347
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 334
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,5740
    # Line 349
    lw	$s3,5040($s0)
    # Line 334
    addu	$gp,$t9,$s4
    # Line 345
    lw	$s4,5132($s0)
    # Line 343
    lw	$s1,5080($s0)
    # Line 347
    mflo	$s7
    nop
    nop
    # Line 349
    mult	$s3,$a1
    # Line 352
    # lw $t9, -22700($gp) # &glBegin
    # Line 343
    addu	$s1,$s1,$s2
    # Line 349
    lw	$s2,5028($s0)
    # Line 350
    lw	$s6,5052($s0)
    # Line 347
    lw	$s3,5108($s0)
    # Line 350
    sd	$s6,96($sp)
    # Line 334
    move	$s6,$a2
    # Line 345
    addu	$s4,$s4,$s5
    # Line 346
    lw	$s5,5156($s0)
    # Line 347
    addu	$s3,$s3,$s7
    # Line 349
    mflo	$t8
    # Line 344
    lw	$s7,5104($s0)
    # Line 352
    jal	glBegin
    # Line 349
    addu	$s2,$s2,$t8
    # Line 352
    blez	$s6,.L0d98f858
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d98f800:
    # Line 354
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5092($s0)
    addu	$s1,$t9,$s1
    # Line 355
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5144($s0)
    # Line 356
    move	$t9,$s8
    # Line 355
    addu	$s4,$ra,$s4
    # Line 356
    jalr	$t9
    move	$a0,$s3
    # Line 357
    ld	$t9,96($sp)
    # Line 356
    lw	$at,5116($s0)
    # Line 357
    move	$a0,$s2
    jalr	$t9
    # Line 356
    addu	$s3,$at,$s3
    # Line 357
    lw	$v0,5040($s0)
    # Line 353
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d98f800
    # Line 357
    addu	$s2,$v0,$s2
.L0d98f858:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 359
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 360
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysCTIV

# Function: __glDrawArraysNCTIV
# Declared: Line 361 (Source lines: 361-390)
# Address: 0x0d98f8a0 - 0x0d98fa48 (Size: 424 bytes, Frame: 128)
.globl __glDrawArraysNCTIV
.ent __glDrawArraysNCTIV
__glDrawArraysNCTIV:
    # Line 361
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    # Line 362
    lw	$s0,4112($zero)
    # Line 370
    lw	$a7,5064($s0)
    mult	$a7,$a1
    # Line 372
    lw	$a6,5092($s0)
    # Line 361
    sd	$s7,56($sp)
    sd	$s6,16($sp)
    # Line 370
    mflo	$at
    nop
    nop
    # Line 372
    mult	$a6,$a1
    # Line 361
    sd	$s5,48($sp)
    sd	$s4,24($sp)
    sd	$s1,40($sp)
    # Line 374
    lw	$a5,5144($s0)
    # Line 379
    lw	$s6,5052($s0)
    # Line 361
    sd	$ra,72($sp)
    # Line 372
    mflo	$ra
    nop
    nop
    # Line 374
    mult	$a5,$a1
    # Line 361
    sd	$s3,8($sp)
    sd	$s2,0($sp)
    sd	$gp,80($sp)
    # Line 376
    lw	$a4,5116($s0)
    # Line 378
    lw	$s1,5028($s0)
    # Line 361
    sd	$s8,64($sp)
    # Line 374
    mflo	$s8
    nop
    nop
    # Line 376
    mult	$a4,$a1
    # Line 372
    lw	$s4,5080($s0)
    # Line 370
    lw	$s5,5056($s0)
    # Line 377
    lw	$a3,5128($s0)
    # Line 361
    lui	$v1,0xc
    # Line 378
    lw	$v0,5040($s0)
    # Line 377
    sd	$a3,112($sp)
    # Line 361
    addiu	$v1,$v1,5356
    # Line 375
    lw	$a3,5156($s0)
    # Line 376
    mflo	$t8
    nop
    nop
    # Line 378
    mult	$v0,$a1
    # Line 375
    sd	$a3,104($sp)
    # Line 361
    addu	$gp,$t9,$v1
    # Line 381
    # lw $t9, -22700($gp) # &glBegin
    # Line 374
    lw	$s2,5132($s0)
    # Line 361
    move	$s7,$a2
    # Line 376
    lw	$s3,5108($s0)
    # Line 370
    addu	$s5,$s5,$at
    # Line 372
    addu	$s4,$s4,$ra
    # Line 374
    addu	$s2,$s2,$s8
    # Line 373
    lw	$s8,5104($s0)
    sd	$s8,96($sp)
    # Line 376
    addu	$s3,$s3,$t8
    # Line 378
    mflo	$t8
    # Line 371
    lw	$s8,5076($s0)
    # Line 381
    jal	glBegin
    # Line 378
    addu	$s1,$s1,$t8
    # Line 381
    blez	$s7,.L0d98fa0c
    sd	$s6,88($sp)
    move	$s6,$zero
    nop
.L0d98f9a0:
    # Line 383
    move	$t9,$s8
    jalr	$t9
    move	$a0,$s5
    # Line 384
    ld	$t9,96($sp)
    # Line 383
    lw	$t0,5064($s0)
    # Line 384
    move	$a0,$s4
    jalr	$t9
    # Line 383
    addu	$s5,$t0,$s5
    # Line 385
    ld	$t9,104($sp)
    # Line 384
    lw	$t1,5092($s0)
    # Line 385
    move	$a0,$s2
    jalr	$t9
    # Line 384
    addu	$s4,$t1,$s4
    # Line 386
    ld	$t9,112($sp)
    # Line 385
    lw	$t2,5144($s0)
    # Line 386
    move	$a0,$s3
    jalr	$t9
    # Line 385
    addu	$s2,$t2,$s2
    # Line 387
    ld	$t9,88($sp)
    # Line 386
    lw	$t3,5116($s0)
    # Line 387
    move	$a0,$s1
    jalr	$t9
    # Line 386
    addu	$s3,$t3,$s3
    # Line 387
    lw	$t8,5040($s0)
    # Line 382
    addiu	$s6,$s6,1
    bne	$s7,$s6,.L0d98f9a0
    # Line 387
    addu	$s1,$t8,$s1
.L0d98fa0c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 389
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 390
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNCTIV

# Function: __glDrawArraysEV
# Declared: Line 391 (Source lines: 391-411)
# Address: 0x0d98fa50 - 0x0d98fb44 (Size: 244 bytes, Frame: 208)
.globl __glDrawArraysEV
.ent __glDrawArraysEV
__glDrawArraysEV:
    # Line 391
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 392
    lw	$s2,4112($zero)
    # Line 391
    sd	$ra,48($sp)
    # Line 400
    lw	$ra,5164($s2)
    mult	$ra,$a1
    # Line 391
    sd	$s4,16($sp)
    sd	$s0,24($sp)
    # Line 402
    lw	$t8,5040($s2)
    # Line 391
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    # Line 400
    mflo	$s5
    nop
    nop
    # Line 402
    mult	$t8,$a1
    # Line 391
    sd	$s6,8($sp)
    lui	$s6,0xc
    sd	$gp,56($sp)
    addiu	$s6,$s6,4924
    # Line 400
    lw	$s1,5160($s2)
    # Line 391
    addu	$gp,$t9,$s6
    # Line 405
    # lw $t9, -22700($gp) # &glBegin
    # Line 391
    move	$s4,$a2
    # Line 402
    lw	$s0,5028($s2)
    # Line 403
    lw	$s6,5052($s2)
    # Line 400
    addu	$s1,$s1,$s5
    # Line 402
    mflo	$t8
    # Line 401
    lw	$s5,5176($s2)
    # Line 405
    jal	glBegin
    # Line 402
    addu	$s0,$s0,$t8
    # Line 405
    blez	$s4,.L0d98fb14
    nop
    sd	$s3,64($sp)
    move	$s3,$zero
    nop
    nop
.L0d98fae0:
    # Line 407
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s1
    lw	$at,5164($s2)
    # Line 408
    move	$t9,$s6
    move	$a0,$s0
    jalr	$t9
    # Line 407
    addu	$s1,$at,$s1
    # Line 408
    lw	$v0,5040($s2)
    # Line 406
    addiu	$s3,$s3,1
    bne	$s4,$s3,.L0d98fae0
    # Line 408
    addu	$s0,$v0,$s0
    ld	$s3,64($sp)
.L0d98fb14:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    # Line 410
    # lw $t9, -22628($gp) # &glEnd
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jal	glEnd
    ld	$s5,40($sp)
    ld	$ra,48($sp)
    # Line 411
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glDrawArraysEV

# Function: __glDrawArraysNEV
# Declared: Line 412 (Source lines: 412-435)
# Address: 0x0d98fb50 - 0x0d98fc80 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysNEV
.ent __glDrawArraysNEV
__glDrawArraysNEV:
    # Line 412
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 413
    lw	$s3,4112($zero)
    # Line 421
    lw	$at,5064($s3)
    mult	$at,$a1
    # Line 412
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 423
    lw	$ra,5164($s3)
    # Line 412
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 421
    mflo	$t8
    nop
    nop
    # Line 423
    mult	$ra,$a1
    # Line 412
    sd	$s0,24($sp)
    # Line 426
    lw	$s7,5052($s3)
    # Line 412
    sd	$s2,0($sp)
    # Line 425
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 412
    sd	$s6,16($sp)
    # Line 423
    mflo	$s6
    nop
    nop
    # Line 425
    mult	$ra,$a1
    # Line 412
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 423
    lw	$s0,5160($s3)
    # Line 412
    addiu	$s8,$s8,4668
    # Line 421
    lw	$s2,5056($s3)
    # Line 412
    addu	$gp,$t9,$s8
    # Line 428
    # lw $t9, -22700($gp) # &glBegin
    # Line 412
    move	$s5,$a2
    # Line 425
    lw	$s1,5028($s3)
    # Line 421
    addu	$s2,$s2,$t8
    # Line 424
    lw	$s8,5176($s3)
    # Line 423
    addu	$s0,$s0,$s6
    # Line 425
    mflo	$t8
    # Line 422
    lw	$s6,5076($s3)
    # Line 428
    jal	glBegin
    # Line 425
    addu	$s1,$s1,$t8
    # Line 428
    blez	$s5,.L0d98fc48
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98fc00:
    # Line 430
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5064($s3)
    # Line 431
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 430
    addu	$s2,$v0,$s2
    # Line 431
    lw	$v1,5164($s3)
    # Line 432
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 431
    addu	$s0,$v1,$s0
    # Line 432
    lw	$a0,5040($s3)
    # Line 429
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98fc00
    # Line 432
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98fc48:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 434
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 435
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysNEV

# Function: __glDrawArraysCEV
# Declared: Line 436 (Source lines: 436-459)
# Address: 0x0d98fc80 - 0x0d98fdb0 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysCEV
.ent __glDrawArraysCEV
__glDrawArraysCEV:
    # Line 436
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 437
    lw	$s3,4112($zero)
    # Line 445
    lw	$at,5092($s3)
    mult	$at,$a1
    # Line 436
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 447
    lw	$ra,5164($s3)
    # Line 436
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 445
    mflo	$t8
    nop
    nop
    # Line 447
    mult	$ra,$a1
    # Line 436
    sd	$s0,24($sp)
    # Line 450
    lw	$s7,5052($s3)
    # Line 436
    sd	$s2,0($sp)
    # Line 449
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 436
    sd	$s6,16($sp)
    # Line 447
    mflo	$s6
    nop
    nop
    # Line 449
    mult	$ra,$a1
    # Line 436
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 447
    lw	$s0,5160($s3)
    # Line 436
    addiu	$s8,$s8,4364
    # Line 445
    lw	$s2,5080($s3)
    # Line 436
    addu	$gp,$t9,$s8
    # Line 452
    # lw $t9, -22700($gp) # &glBegin
    # Line 436
    move	$s5,$a2
    # Line 449
    lw	$s1,5028($s3)
    # Line 445
    addu	$s2,$s2,$t8
    # Line 448
    lw	$s8,5176($s3)
    # Line 447
    addu	$s0,$s0,$s6
    # Line 449
    mflo	$t8
    # Line 446
    lw	$s6,5104($s3)
    # Line 452
    jal	glBegin
    # Line 449
    addu	$s1,$s1,$t8
    # Line 452
    blez	$s5,.L0d98fd78
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98fd30:
    # Line 454
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5092($s3)
    # Line 455
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 454
    addu	$s2,$v0,$s2
    # Line 455
    lw	$v1,5164($s3)
    # Line 456
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 455
    addu	$s0,$v1,$s0
    # Line 456
    lw	$a0,5040($s3)
    # Line 453
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98fd30
    # Line 456
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d98fd78:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 458
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 459
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysCEV

# Function: __glDrawArraysNCEV
# Declared: Line 460 (Source lines: 460-486)
# Address: 0x0d98fdb0 - 0x0d98ff24 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysNCEV
.ent __glDrawArraysNCEV
__glDrawArraysNCEV:
    # Line 460
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 461
    lw	$s0,4112($zero)
    # Line 469
    lw	$t8,5064($s0)
    mult	$t8,$a1
    # Line 460
    sd	$s7,56($sp)
    # Line 471
    lw	$s7,5092($s0)
    # Line 460
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 469
    mflo	$s2
    nop
    nop
    # Line 471
    mult	$s7,$a1
    # Line 460
    sd	$s8,64($sp)
    # Line 474
    lw	$s8,5176($s0)
    # Line 460
    sd	$s6,16($sp)
    # Line 473
    lw	$s6,5164($s0)
    # Line 460
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 471
    mflo	$s5
    nop
    nop
    # Line 473
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 460
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,4060
    # Line 475
    lw	$s3,5040($s0)
    # Line 460
    addu	$gp,$t9,$s4
    # Line 471
    lw	$s4,5080($s0)
    # Line 469
    lw	$s1,5056($s0)
    # Line 473
    mflo	$s7
    nop
    nop
    # Line 475
    mult	$s3,$a1
    # Line 478
    # lw $t9, -22700($gp) # &glBegin
    # Line 469
    addu	$s1,$s1,$s2
    # Line 475
    lw	$s2,5028($s0)
    # Line 476
    lw	$s6,5052($s0)
    # Line 473
    lw	$s3,5160($s0)
    # Line 476
    sd	$s6,96($sp)
    # Line 460
    move	$s6,$a2
    # Line 471
    addu	$s4,$s4,$s5
    # Line 472
    lw	$s5,5104($s0)
    # Line 473
    addu	$s3,$s3,$s7
    # Line 475
    mflo	$t8
    # Line 470
    lw	$s7,5076($s0)
    # Line 478
    jal	glBegin
    # Line 475
    addu	$s2,$s2,$t8
    # Line 478
    blez	$s6,.L0d98fee8
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d98fe90:
    # Line 480
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5064($s0)
    addu	$s1,$t9,$s1
    # Line 481
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5092($s0)
    # Line 482
    move	$t9,$s8
    # Line 481
    addu	$s4,$ra,$s4
    # Line 482
    jalr	$t9
    move	$a0,$s3
    # Line 483
    ld	$t9,96($sp)
    # Line 482
    lw	$at,5164($s0)
    # Line 483
    move	$a0,$s2
    jalr	$t9
    # Line 482
    addu	$s3,$at,$s3
    # Line 483
    lw	$v0,5040($s0)
    # Line 479
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d98fe90
    # Line 483
    addu	$s2,$v0,$s2
.L0d98fee8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 485
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 486
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysNCEV

# Function: __glDrawArraysTEV
# Declared: Line 487 (Source lines: 487-510)
# Address: 0x0d98ff30 - 0x0d990060 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysTEV
.ent __glDrawArraysTEV
__glDrawArraysTEV:
    # Line 487
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 488
    lw	$s3,4112($zero)
    # Line 496
    lw	$at,5144($s3)
    mult	$at,$a1
    # Line 487
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 498
    lw	$ra,5164($s3)
    # Line 487
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 496
    mflo	$t8
    nop
    nop
    # Line 498
    mult	$ra,$a1
    # Line 487
    sd	$s0,24($sp)
    # Line 501
    lw	$s7,5052($s3)
    # Line 487
    sd	$s2,0($sp)
    # Line 500
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 487
    sd	$s6,16($sp)
    # Line 498
    mflo	$s6
    nop
    nop
    # Line 500
    mult	$ra,$a1
    # Line 487
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 498
    lw	$s0,5160($s3)
    # Line 487
    addiu	$s8,$s8,3676
    # Line 496
    lw	$s2,5132($s3)
    # Line 487
    addu	$gp,$t9,$s8
    # Line 503
    # lw $t9, -22700($gp) # &glBegin
    # Line 487
    move	$s5,$a2
    # Line 500
    lw	$s1,5028($s3)
    # Line 496
    addu	$s2,$s2,$t8
    # Line 499
    lw	$s8,5176($s3)
    # Line 498
    addu	$s0,$s0,$s6
    # Line 500
    mflo	$t8
    # Line 497
    lw	$s6,5156($s3)
    # Line 503
    jal	glBegin
    # Line 500
    addu	$s1,$s1,$t8
    # Line 503
    blez	$s5,.L0d990028
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d98ffe0:
    # Line 505
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5144($s3)
    # Line 506
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 505
    addu	$s2,$v0,$s2
    # Line 506
    lw	$v1,5164($s3)
    # Line 507
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 506
    addu	$s0,$v1,$s0
    # Line 507
    lw	$a0,5040($s3)
    # Line 504
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d98ffe0
    # Line 507
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d990028:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 509
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 510
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysTEV

# Function: __glDrawArraysNTEV
# Declared: Line 511 (Source lines: 511-537)
# Address: 0x0d990060 - 0x0d9901d4 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysNTEV
.ent __glDrawArraysNTEV
__glDrawArraysNTEV:
    # Line 511
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 512
    lw	$s0,4112($zero)
    # Line 520
    lw	$t8,5064($s0)
    mult	$t8,$a1
    # Line 511
    sd	$s7,56($sp)
    # Line 522
    lw	$s7,5144($s0)
    # Line 511
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 520
    mflo	$s2
    nop
    nop
    # Line 522
    mult	$s7,$a1
    # Line 511
    sd	$s8,64($sp)
    # Line 525
    lw	$s8,5176($s0)
    # Line 511
    sd	$s6,16($sp)
    # Line 524
    lw	$s6,5164($s0)
    # Line 511
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 522
    mflo	$s5
    nop
    nop
    # Line 524
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 511
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,3372
    # Line 526
    lw	$s3,5040($s0)
    # Line 511
    addu	$gp,$t9,$s4
    # Line 522
    lw	$s4,5132($s0)
    # Line 520
    lw	$s1,5056($s0)
    # Line 524
    mflo	$s7
    nop
    nop
    # Line 526
    mult	$s3,$a1
    # Line 529
    # lw $t9, -22700($gp) # &glBegin
    # Line 520
    addu	$s1,$s1,$s2
    # Line 526
    lw	$s2,5028($s0)
    # Line 527
    lw	$s6,5052($s0)
    # Line 524
    lw	$s3,5160($s0)
    # Line 527
    sd	$s6,96($sp)
    # Line 511
    move	$s6,$a2
    # Line 522
    addu	$s4,$s4,$s5
    # Line 523
    lw	$s5,5156($s0)
    # Line 524
    addu	$s3,$s3,$s7
    # Line 526
    mflo	$t8
    # Line 521
    lw	$s7,5076($s0)
    # Line 529
    jal	glBegin
    # Line 526
    addu	$s2,$s2,$t8
    # Line 529
    blez	$s6,.L0d990198
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d990140:
    # Line 531
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5064($s0)
    addu	$s1,$t9,$s1
    # Line 532
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5144($s0)
    # Line 533
    move	$t9,$s8
    # Line 532
    addu	$s4,$ra,$s4
    # Line 533
    jalr	$t9
    move	$a0,$s3
    # Line 534
    ld	$t9,96($sp)
    # Line 533
    lw	$at,5164($s0)
    # Line 534
    move	$a0,$s2
    jalr	$t9
    # Line 533
    addu	$s3,$at,$s3
    # Line 534
    lw	$v0,5040($s0)
    # Line 530
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d990140
    # Line 534
    addu	$s2,$v0,$s2
.L0d990198:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 536
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 537
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysNTEV

# Function: __glDrawArraysCTEV
# Declared: Line 538 (Source lines: 538-564)
# Address: 0x0d9901e0 - 0x0d990354 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysCTEV
.ent __glDrawArraysCTEV
__glDrawArraysCTEV:
    # Line 538
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 539
    lw	$s0,4112($zero)
    # Line 547
    lw	$t8,5092($s0)
    mult	$t8,$a1
    # Line 538
    sd	$s7,56($sp)
    # Line 549
    lw	$s7,5144($s0)
    # Line 538
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 547
    mflo	$s2
    nop
    nop
    # Line 549
    mult	$s7,$a1
    # Line 538
    sd	$s8,64($sp)
    # Line 552
    lw	$s8,5176($s0)
    # Line 538
    sd	$s6,16($sp)
    # Line 551
    lw	$s6,5164($s0)
    # Line 538
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 549
    mflo	$s5
    nop
    nop
    # Line 551
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 538
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,2988
    # Line 553
    lw	$s3,5040($s0)
    # Line 538
    addu	$gp,$t9,$s4
    # Line 549
    lw	$s4,5132($s0)
    # Line 547
    lw	$s1,5080($s0)
    # Line 551
    mflo	$s7
    nop
    nop
    # Line 553
    mult	$s3,$a1
    # Line 556
    # lw $t9, -22700($gp) # &glBegin
    # Line 547
    addu	$s1,$s1,$s2
    # Line 553
    lw	$s2,5028($s0)
    # Line 554
    lw	$s6,5052($s0)
    # Line 551
    lw	$s3,5160($s0)
    # Line 554
    sd	$s6,96($sp)
    # Line 538
    move	$s6,$a2
    # Line 549
    addu	$s4,$s4,$s5
    # Line 550
    lw	$s5,5156($s0)
    # Line 551
    addu	$s3,$s3,$s7
    # Line 553
    mflo	$t8
    # Line 548
    lw	$s7,5104($s0)
    # Line 556
    jal	glBegin
    # Line 553
    addu	$s2,$s2,$t8
    # Line 556
    blez	$s6,.L0d990318
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d9902c0:
    # Line 558
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5092($s0)
    addu	$s1,$t9,$s1
    # Line 559
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5144($s0)
    # Line 560
    move	$t9,$s8
    # Line 559
    addu	$s4,$ra,$s4
    # Line 560
    jalr	$t9
    move	$a0,$s3
    # Line 561
    ld	$t9,96($sp)
    # Line 560
    lw	$at,5164($s0)
    # Line 561
    move	$a0,$s2
    jalr	$t9
    # Line 560
    addu	$s3,$at,$s3
    # Line 561
    lw	$v0,5040($s0)
    # Line 557
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d9902c0
    # Line 561
    addu	$s2,$v0,$s2
.L0d990318:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 563
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 564
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysCTEV

# Function: __glDrawArraysNCTEV
# Declared: Line 565 (Source lines: 565-594)
# Address: 0x0d990360 - 0x0d990508 (Size: 424 bytes, Frame: 128)
.globl __glDrawArraysNCTEV
.ent __glDrawArraysNCTEV
__glDrawArraysNCTEV:
    # Line 565
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    # Line 566
    lw	$s0,4112($zero)
    # Line 574
    lw	$a7,5064($s0)
    mult	$a7,$a1
    # Line 576
    lw	$a6,5092($s0)
    # Line 565
    sd	$s7,56($sp)
    sd	$s6,16($sp)
    # Line 574
    mflo	$at
    nop
    nop
    # Line 576
    mult	$a6,$a1
    # Line 565
    sd	$s5,48($sp)
    sd	$s4,24($sp)
    sd	$s1,40($sp)
    # Line 578
    lw	$a5,5144($s0)
    # Line 583
    lw	$s6,5052($s0)
    # Line 565
    sd	$ra,72($sp)
    # Line 576
    mflo	$ra
    nop
    nop
    # Line 578
    mult	$a5,$a1
    # Line 565
    sd	$s3,8($sp)
    sd	$s2,0($sp)
    sd	$gp,80($sp)
    # Line 580
    lw	$a4,5164($s0)
    # Line 582
    lw	$s1,5028($s0)
    # Line 565
    sd	$s8,64($sp)
    # Line 578
    mflo	$s8
    nop
    nop
    # Line 580
    mult	$a4,$a1
    # Line 576
    lw	$s4,5080($s0)
    # Line 574
    lw	$s5,5056($s0)
    # Line 581
    lw	$a3,5176($s0)
    # Line 565
    lui	$v1,0xc
    # Line 582
    lw	$v0,5040($s0)
    # Line 581
    sd	$a3,112($sp)
    # Line 565
    addiu	$v1,$v1,2604
    # Line 579
    lw	$a3,5156($s0)
    # Line 580
    mflo	$t8
    nop
    nop
    # Line 582
    mult	$v0,$a1
    # Line 579
    sd	$a3,104($sp)
    # Line 565
    addu	$gp,$t9,$v1
    # Line 585
    # lw $t9, -22700($gp) # &glBegin
    # Line 578
    lw	$s2,5132($s0)
    # Line 565
    move	$s7,$a2
    # Line 580
    lw	$s3,5160($s0)
    # Line 574
    addu	$s5,$s5,$at
    # Line 576
    addu	$s4,$s4,$ra
    # Line 578
    addu	$s2,$s2,$s8
    # Line 577
    lw	$s8,5104($s0)
    sd	$s8,96($sp)
    # Line 580
    addu	$s3,$s3,$t8
    # Line 582
    mflo	$t8
    # Line 575
    lw	$s8,5076($s0)
    # Line 585
    jal	glBegin
    # Line 582
    addu	$s1,$s1,$t8
    # Line 585
    blez	$s7,.L0d9904cc
    sd	$s6,88($sp)
    move	$s6,$zero
    nop
.L0d990460:
    # Line 587
    move	$t9,$s8
    jalr	$t9
    move	$a0,$s5
    # Line 588
    ld	$t9,96($sp)
    # Line 587
    lw	$t0,5064($s0)
    # Line 588
    move	$a0,$s4
    jalr	$t9
    # Line 587
    addu	$s5,$t0,$s5
    # Line 589
    ld	$t9,104($sp)
    # Line 588
    lw	$t1,5092($s0)
    # Line 589
    move	$a0,$s2
    jalr	$t9
    # Line 588
    addu	$s4,$t1,$s4
    # Line 590
    ld	$t9,112($sp)
    # Line 589
    lw	$t2,5144($s0)
    # Line 590
    move	$a0,$s3
    jalr	$t9
    # Line 589
    addu	$s2,$t2,$s2
    # Line 591
    ld	$t9,88($sp)
    # Line 590
    lw	$t3,5164($s0)
    # Line 591
    move	$a0,$s1
    jalr	$t9
    # Line 590
    addu	$s3,$t3,$s3
    # Line 591
    lw	$t8,5040($s0)
    # Line 586
    addiu	$s6,$s6,1
    bne	$s7,$s6,.L0d990460
    # Line 591
    addu	$s1,$t8,$s1
.L0d9904cc:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 593
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 594
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNCTEV

# Function: __glDrawArraysIEV
# Declared: Line 595 (Source lines: 595-618)
# Address: 0x0d990510 - 0x0d990640 (Size: 304 bytes, Frame: 224)
.globl __glDrawArraysIEV
.ent __glDrawArraysIEV
__glDrawArraysIEV:
    # Line 595
    addiu	$sp,$sp,-96
    sd	$s3,8($sp)
    # Line 596
    lw	$s3,4112($zero)
    # Line 604
    lw	$at,5116($s3)
    mult	$at,$a1
    # Line 595
    sd	$s5,40($sp)
    sd	$ra,64($sp)
    # Line 606
    lw	$ra,5164($s3)
    # Line 595
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 604
    mflo	$t8
    nop
    nop
    # Line 606
    mult	$ra,$a1
    # Line 595
    sd	$s0,24($sp)
    # Line 609
    lw	$s7,5052($s3)
    # Line 595
    sd	$s2,0($sp)
    # Line 608
    lw	$ra,5040($s3)
    sd	$gp,72($sp)
    # Line 595
    sd	$s6,16($sp)
    # Line 606
    mflo	$s6
    nop
    nop
    # Line 608
    mult	$ra,$a1
    # Line 595
    sd	$s8,56($sp)
    lui	$s8,0xc
    # Line 606
    lw	$s0,5160($s3)
    # Line 595
    addiu	$s8,$s8,2172
    # Line 604
    lw	$s2,5108($s3)
    # Line 595
    addu	$gp,$t9,$s8
    # Line 611
    # lw $t9, -22700($gp) # &glBegin
    # Line 595
    move	$s5,$a2
    # Line 608
    lw	$s1,5028($s3)
    # Line 604
    addu	$s2,$s2,$t8
    # Line 607
    lw	$s8,5176($s3)
    # Line 606
    addu	$s0,$s0,$s6
    # Line 608
    mflo	$t8
    # Line 605
    lw	$s6,5128($s3)
    # Line 611
    jal	glBegin
    # Line 608
    addu	$s1,$s1,$t8
    # Line 611
    blez	$s5,.L0d990608
    nop
    sd	$s4,80($sp)
    move	$s4,$zero
.L0d9905c0:
    # Line 613
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    lw	$v0,5116($s3)
    # Line 614
    move	$t9,$s8
    move	$a0,$s0
    jalr	$t9
    # Line 613
    addu	$s2,$v0,$s2
    # Line 614
    lw	$v1,5164($s3)
    # Line 615
    move	$t9,$s7
    move	$a0,$s1
    jalr	$t9
    # Line 614
    addu	$s0,$v1,$s0
    # Line 615
    lw	$a0,5040($s3)
    # Line 612
    addiu	$s4,$s4,1
    bne	$s5,$s4,.L0d9905c0
    # Line 615
    addu	$s1,$a0,$s1
    ld	$s4,80($sp)
.L0d990608:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 617
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    jal	glEnd
    ld	$s8,56($sp)
    ld	$ra,64($sp)
    # Line 618
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glDrawArraysIEV

# Function: __glDrawArraysNIEV
# Declared: Line 619 (Source lines: 619-645)
# Address: 0x0d990640 - 0x0d9907b4 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysNIEV
.ent __glDrawArraysNIEV
__glDrawArraysNIEV:
    # Line 619
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 620
    lw	$s0,4112($zero)
    # Line 628
    lw	$t8,5064($s0)
    mult	$t8,$a1
    # Line 619
    sd	$s7,56($sp)
    # Line 630
    lw	$s7,5116($s0)
    # Line 619
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 628
    mflo	$s2
    nop
    nop
    # Line 630
    mult	$s7,$a1
    # Line 619
    sd	$s8,64($sp)
    # Line 633
    lw	$s8,5176($s0)
    # Line 619
    sd	$s6,16($sp)
    # Line 632
    lw	$s6,5164($s0)
    # Line 619
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 630
    mflo	$s5
    nop
    nop
    # Line 632
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 619
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,1868
    # Line 634
    lw	$s3,5040($s0)
    # Line 619
    addu	$gp,$t9,$s4
    # Line 630
    lw	$s4,5108($s0)
    # Line 628
    lw	$s1,5056($s0)
    # Line 632
    mflo	$s7
    nop
    nop
    # Line 634
    mult	$s3,$a1
    # Line 637
    # lw $t9, -22700($gp) # &glBegin
    # Line 628
    addu	$s1,$s1,$s2
    # Line 634
    lw	$s2,5028($s0)
    # Line 635
    lw	$s6,5052($s0)
    # Line 632
    lw	$s3,5160($s0)
    # Line 635
    sd	$s6,96($sp)
    # Line 619
    move	$s6,$a2
    # Line 630
    addu	$s4,$s4,$s5
    # Line 631
    lw	$s5,5128($s0)
    # Line 632
    addu	$s3,$s3,$s7
    # Line 634
    mflo	$t8
    # Line 629
    lw	$s7,5076($s0)
    # Line 637
    jal	glBegin
    # Line 634
    addu	$s2,$s2,$t8
    # Line 637
    blez	$s6,.L0d990778
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d990720:
    # Line 639
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5064($s0)
    addu	$s1,$t9,$s1
    # Line 640
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5116($s0)
    # Line 641
    move	$t9,$s8
    # Line 640
    addu	$s4,$ra,$s4
    # Line 641
    jalr	$t9
    move	$a0,$s3
    # Line 642
    ld	$t9,96($sp)
    # Line 641
    lw	$at,5164($s0)
    # Line 642
    move	$a0,$s2
    jalr	$t9
    # Line 641
    addu	$s3,$at,$s3
    # Line 642
    lw	$v0,5040($s0)
    # Line 638
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d990720
    # Line 642
    addu	$s2,$v0,$s2
.L0d990778:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 644
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 645
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysNIEV

# Function: __glDrawArraysCIEV
# Declared: Line 646 (Source lines: 646-672)
# Address: 0x0d9907c0 - 0x0d990934 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysCIEV
.ent __glDrawArraysCIEV
__glDrawArraysCIEV:
    # Line 646
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 647
    lw	$s0,4112($zero)
    # Line 655
    lw	$t8,5092($s0)
    mult	$t8,$a1
    # Line 646
    sd	$s7,56($sp)
    # Line 657
    lw	$s7,5116($s0)
    # Line 646
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 655
    mflo	$s2
    nop
    nop
    # Line 657
    mult	$s7,$a1
    # Line 646
    sd	$s8,64($sp)
    # Line 660
    lw	$s8,5176($s0)
    # Line 646
    sd	$s6,16($sp)
    # Line 659
    lw	$s6,5164($s0)
    # Line 646
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 657
    mflo	$s5
    nop
    nop
    # Line 659
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 646
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,1484
    # Line 661
    lw	$s3,5040($s0)
    # Line 646
    addu	$gp,$t9,$s4
    # Line 657
    lw	$s4,5108($s0)
    # Line 655
    lw	$s1,5080($s0)
    # Line 659
    mflo	$s7
    nop
    nop
    # Line 661
    mult	$s3,$a1
    # Line 664
    # lw $t9, -22700($gp) # &glBegin
    # Line 655
    addu	$s1,$s1,$s2
    # Line 661
    lw	$s2,5028($s0)
    # Line 662
    lw	$s6,5052($s0)
    # Line 659
    lw	$s3,5160($s0)
    # Line 662
    sd	$s6,96($sp)
    # Line 646
    move	$s6,$a2
    # Line 657
    addu	$s4,$s4,$s5
    # Line 658
    lw	$s5,5128($s0)
    # Line 659
    addu	$s3,$s3,$s7
    # Line 661
    mflo	$t8
    # Line 656
    lw	$s7,5104($s0)
    # Line 664
    jal	glBegin
    # Line 661
    addu	$s2,$s2,$t8
    # Line 664
    blez	$s6,.L0d9908f8
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d9908a0:
    # Line 666
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5092($s0)
    addu	$s1,$t9,$s1
    # Line 667
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5116($s0)
    # Line 668
    move	$t9,$s8
    # Line 667
    addu	$s4,$ra,$s4
    # Line 668
    jalr	$t9
    move	$a0,$s3
    # Line 669
    ld	$t9,96($sp)
    # Line 668
    lw	$at,5164($s0)
    # Line 669
    move	$a0,$s2
    jalr	$t9
    # Line 668
    addu	$s3,$at,$s3
    # Line 669
    lw	$v0,5040($s0)
    # Line 665
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d9908a0
    # Line 669
    addu	$s2,$v0,$s2
.L0d9908f8:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 671
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 672
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysCIEV

# Function: __glDrawArraysNCIEV
# Declared: Line 673 (Source lines: 673-702)
# Address: 0x0d990940 - 0x0d990ae8 (Size: 424 bytes, Frame: 128)
.globl __glDrawArraysNCIEV
.ent __glDrawArraysNCIEV
__glDrawArraysNCIEV:
    # Line 673
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    # Line 674
    lw	$s0,4112($zero)
    # Line 682
    lw	$a7,5064($s0)
    mult	$a7,$a1
    # Line 684
    lw	$a6,5092($s0)
    # Line 673
    sd	$s7,56($sp)
    sd	$s6,16($sp)
    # Line 682
    mflo	$at
    nop
    nop
    # Line 684
    mult	$a6,$a1
    # Line 673
    sd	$s5,48($sp)
    sd	$s4,24($sp)
    sd	$s1,40($sp)
    # Line 686
    lw	$a5,5116($s0)
    # Line 691
    lw	$s6,5052($s0)
    # Line 673
    sd	$ra,72($sp)
    # Line 684
    mflo	$ra
    nop
    nop
    # Line 686
    mult	$a5,$a1
    # Line 673
    sd	$s3,8($sp)
    sd	$s2,0($sp)
    sd	$gp,80($sp)
    # Line 688
    lw	$a4,5164($s0)
    # Line 690
    lw	$s1,5028($s0)
    # Line 673
    sd	$s8,64($sp)
    # Line 686
    mflo	$s8
    nop
    nop
    # Line 688
    mult	$a4,$a1
    # Line 684
    lw	$s4,5080($s0)
    # Line 682
    lw	$s5,5056($s0)
    # Line 689
    lw	$a3,5176($s0)
    # Line 673
    lui	$v1,0xc
    # Line 690
    lw	$v0,5040($s0)
    # Line 689
    sd	$a3,112($sp)
    # Line 673
    addiu	$v1,$v1,1100
    # Line 687
    lw	$a3,5128($s0)
    # Line 688
    mflo	$t8
    nop
    nop
    # Line 690
    mult	$v0,$a1
    # Line 687
    sd	$a3,104($sp)
    # Line 673
    addu	$gp,$t9,$v1
    # Line 693
    # lw $t9, -22700($gp) # &glBegin
    # Line 686
    lw	$s2,5108($s0)
    # Line 673
    move	$s7,$a2
    # Line 688
    lw	$s3,5160($s0)
    # Line 682
    addu	$s5,$s5,$at
    # Line 684
    addu	$s4,$s4,$ra
    # Line 686
    addu	$s2,$s2,$s8
    # Line 685
    lw	$s8,5104($s0)
    sd	$s8,96($sp)
    # Line 688
    addu	$s3,$s3,$t8
    # Line 690
    mflo	$t8
    # Line 683
    lw	$s8,5076($s0)
    # Line 693
    jal	glBegin
    # Line 690
    addu	$s1,$s1,$t8
    # Line 693
    blez	$s7,.L0d990aac
    sd	$s6,88($sp)
    move	$s6,$zero
    nop
.L0d990a40:
    # Line 695
    move	$t9,$s8
    jalr	$t9
    move	$a0,$s5
    # Line 696
    ld	$t9,96($sp)
    # Line 695
    lw	$t0,5064($s0)
    # Line 696
    move	$a0,$s4
    jalr	$t9
    # Line 695
    addu	$s5,$t0,$s5
    # Line 697
    ld	$t9,104($sp)
    # Line 696
    lw	$t1,5092($s0)
    # Line 697
    move	$a0,$s2
    jalr	$t9
    # Line 696
    addu	$s4,$t1,$s4
    # Line 698
    ld	$t9,112($sp)
    # Line 697
    lw	$t2,5116($s0)
    # Line 698
    move	$a0,$s3
    jalr	$t9
    # Line 697
    addu	$s2,$t2,$s2
    # Line 699
    ld	$t9,88($sp)
    # Line 698
    lw	$t3,5164($s0)
    # Line 699
    move	$a0,$s1
    jalr	$t9
    # Line 698
    addu	$s3,$t3,$s3
    # Line 699
    lw	$t8,5040($s0)
    # Line 694
    addiu	$s6,$s6,1
    bne	$s7,$s6,.L0d990a40
    # Line 699
    addu	$s1,$t8,$s1
.L0d990aac:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 701
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 702
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNCIEV

# Function: __glDrawArraysTIEV
# Declared: Line 703 (Source lines: 703-729)
# Address: 0x0d990af0 - 0x0d990c64 (Size: 372 bytes, Frame: 240)
.globl __glDrawArraysTIEV
.ent __glDrawArraysTIEV
__glDrawArraysTIEV:
    # Line 703
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 704
    lw	$s0,4112($zero)
    # Line 712
    lw	$t8,5144($s0)
    mult	$t8,$a1
    # Line 703
    sd	$s7,56($sp)
    # Line 714
    lw	$s7,5116($s0)
    # Line 703
    sd	$ra,72($sp)
    sd	$s2,0($sp)
    # Line 712
    mflo	$s2
    nop
    nop
    # Line 714
    mult	$s7,$a1
    # Line 703
    sd	$s8,64($sp)
    # Line 717
    lw	$s8,5176($s0)
    # Line 703
    sd	$s6,16($sp)
    # Line 716
    lw	$s6,5164($s0)
    # Line 703
    sd	$s1,40($sp)
    sd	$s5,48($sp)
    # Line 714
    mflo	$s5
    nop
    nop
    # Line 716
    mult	$s6,$a1
    sd	$gp,80($sp)
    # Line 703
    sd	$s4,24($sp)
    lui	$s4,0xc
    sd	$s3,8($sp)
    addiu	$s4,$s4,668
    # Line 718
    lw	$s3,5040($s0)
    # Line 703
    addu	$gp,$t9,$s4
    # Line 714
    lw	$s4,5108($s0)
    # Line 712
    lw	$s1,5132($s0)
    # Line 716
    mflo	$s7
    nop
    nop
    # Line 718
    mult	$s3,$a1
    # Line 721
    # lw $t9, -22700($gp) # &glBegin
    # Line 712
    addu	$s1,$s1,$s2
    # Line 718
    lw	$s2,5028($s0)
    # Line 719
    lw	$s6,5052($s0)
    # Line 716
    lw	$s3,5160($s0)
    # Line 719
    sd	$s6,96($sp)
    # Line 703
    move	$s6,$a2
    # Line 714
    addu	$s4,$s4,$s5
    # Line 715
    lw	$s5,5128($s0)
    # Line 716
    addu	$s3,$s3,$s7
    # Line 718
    mflo	$t8
    # Line 713
    lw	$s7,5156($s0)
    # Line 721
    jal	glBegin
    # Line 718
    addu	$s2,$s2,$t8
    # Line 721
    blez	$s6,.L0d990c28
    sd	$s5,88($sp)
    move	$s5,$zero
    nop
    nop
    nop
.L0d990bd0:
    # Line 723
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s1
    lw	$t9,5144($s0)
    addu	$s1,$t9,$s1
    # Line 724
    ld	$t9,88($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5116($s0)
    # Line 725
    move	$t9,$s8
    # Line 724
    addu	$s4,$ra,$s4
    # Line 725
    jalr	$t9
    move	$a0,$s3
    # Line 726
    ld	$t9,96($sp)
    # Line 725
    lw	$at,5164($s0)
    # Line 726
    move	$a0,$s2
    jalr	$t9
    # Line 725
    addu	$s3,$at,$s3
    # Line 726
    lw	$v0,5040($s0)
    # Line 722
    addiu	$s5,$s5,1
    bne	$s6,$s5,.L0d990bd0
    # Line 726
    addu	$s2,$v0,$s2
.L0d990c28:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 728
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 729
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glDrawArraysTIEV

# Function: __glDrawArraysNTIEV
# Declared: Line 730 (Source lines: 730-759)
# Address: 0x0d990c70 - 0x0d990e18 (Size: 424 bytes, Frame: 128)
.globl __glDrawArraysNTIEV
.ent __glDrawArraysNTIEV
__glDrawArraysNTIEV:
    # Line 730
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    # Line 731
    lw	$s0,4112($zero)
    # Line 739
    lw	$a7,5064($s0)
    mult	$a7,$a1
    # Line 741
    lw	$a6,5144($s0)
    # Line 730
    sd	$s7,56($sp)
    sd	$s6,16($sp)
    # Line 739
    mflo	$at
    nop
    nop
    # Line 741
    mult	$a6,$a1
    # Line 730
    sd	$s5,48($sp)
    sd	$s4,24($sp)
    sd	$s1,40($sp)
    # Line 743
    lw	$a5,5116($s0)
    # Line 748
    lw	$s6,5052($s0)
    # Line 730
    sd	$ra,72($sp)
    # Line 741
    mflo	$ra
    nop
    nop
    # Line 743
    mult	$a5,$a1
    # Line 730
    sd	$s3,8($sp)
    sd	$s2,0($sp)
    sd	$gp,80($sp)
    # Line 745
    lw	$a4,5164($s0)
    # Line 747
    lw	$s1,5028($s0)
    # Line 730
    sd	$s8,64($sp)
    # Line 743
    mflo	$s8
    nop
    nop
    # Line 745
    mult	$a4,$a1
    # Line 741
    lw	$s4,5132($s0)
    # Line 739
    lw	$s5,5056($s0)
    # Line 746
    lw	$a3,5176($s0)
    # Line 730
    lui	$v1,0xc
    # Line 747
    lw	$v0,5040($s0)
    # Line 746
    sd	$a3,112($sp)
    # Line 730
    addiu	$v1,$v1,284
    # Line 744
    lw	$a3,5128($s0)
    # Line 745
    mflo	$t8
    nop
    nop
    # Line 747
    mult	$v0,$a1
    # Line 744
    sd	$a3,104($sp)
    # Line 730
    addu	$gp,$t9,$v1
    # Line 750
    # lw $t9, -22700($gp) # &glBegin
    # Line 743
    lw	$s2,5108($s0)
    # Line 730
    move	$s7,$a2
    # Line 745
    lw	$s3,5160($s0)
    # Line 739
    addu	$s5,$s5,$at
    # Line 741
    addu	$s4,$s4,$ra
    # Line 743
    addu	$s2,$s2,$s8
    # Line 742
    lw	$s8,5156($s0)
    sd	$s8,96($sp)
    # Line 745
    addu	$s3,$s3,$t8
    # Line 747
    mflo	$t8
    # Line 740
    lw	$s8,5076($s0)
    # Line 750
    jal	glBegin
    # Line 747
    addu	$s1,$s1,$t8
    # Line 750
    blez	$s7,.L0d990ddc
    sd	$s6,88($sp)
    move	$s6,$zero
    nop
.L0d990d70:
    # Line 752
    move	$t9,$s8
    jalr	$t9
    move	$a0,$s5
    # Line 753
    ld	$t9,96($sp)
    # Line 752
    lw	$t0,5064($s0)
    # Line 753
    move	$a0,$s4
    jalr	$t9
    # Line 752
    addu	$s5,$t0,$s5
    # Line 754
    ld	$t9,104($sp)
    # Line 753
    lw	$t1,5144($s0)
    # Line 754
    move	$a0,$s2
    jalr	$t9
    # Line 753
    addu	$s4,$t1,$s4
    # Line 755
    ld	$t9,112($sp)
    # Line 754
    lw	$t2,5116($s0)
    # Line 755
    move	$a0,$s3
    jalr	$t9
    # Line 754
    addu	$s2,$t2,$s2
    # Line 756
    ld	$t9,88($sp)
    # Line 755
    lw	$t3,5164($s0)
    # Line 756
    move	$a0,$s1
    jalr	$t9
    # Line 755
    addu	$s3,$t3,$s3
    # Line 756
    lw	$t8,5040($s0)
    # Line 751
    addiu	$s6,$s6,1
    bne	$s7,$s6,.L0d990d70
    # Line 756
    addu	$s1,$t8,$s1
.L0d990ddc:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 758
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 759
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysNTIEV

# Function: __glDrawArraysCTIEV
# Declared: Line 760 (Source lines: 760-789)
# Address: 0x0d990e20 - 0x0d990fc8 (Size: 424 bytes, Frame: 128)
.globl __glDrawArraysCTIEV
.ent __glDrawArraysCTIEV
__glDrawArraysCTIEV:
    # Line 760
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    # Line 761
    lw	$s0,4112($zero)
    # Line 769
    lw	$a7,5092($s0)
    mult	$a7,$a1
    # Line 771
    lw	$a6,5144($s0)
    # Line 760
    sd	$s7,56($sp)
    sd	$s6,16($sp)
    # Line 769
    mflo	$at
    nop
    nop
    # Line 771
    mult	$a6,$a1
    # Line 760
    sd	$s5,48($sp)
    sd	$s4,24($sp)
    sd	$s1,40($sp)
    # Line 773
    lw	$a5,5116($s0)
    # Line 778
    lw	$s6,5052($s0)
    # Line 760
    sd	$ra,72($sp)
    # Line 771
    mflo	$ra
    nop
    nop
    # Line 773
    mult	$a5,$a1
    # Line 760
    sd	$s3,8($sp)
    sd	$s2,0($sp)
    sd	$gp,80($sp)
    # Line 775
    lw	$a4,5164($s0)
    # Line 777
    lw	$s1,5028($s0)
    # Line 760
    sd	$s8,64($sp)
    # Line 773
    mflo	$s8
    nop
    nop
    # Line 775
    mult	$a4,$a1
    # Line 771
    lw	$s4,5132($s0)
    # Line 769
    lw	$s5,5080($s0)
    # Line 776
    lw	$a3,5176($s0)
    # Line 760
    lui	$v1,0xc
    # Line 777
    lw	$v0,5040($s0)
    # Line 776
    sd	$a3,112($sp)
    # Line 760
    addiu	$v1,$v1,-148
    # Line 774
    lw	$a3,5128($s0)
    # Line 775
    mflo	$t8
    nop
    nop
    # Line 777
    mult	$v0,$a1
    # Line 774
    sd	$a3,104($sp)
    # Line 760
    addu	$gp,$t9,$v1
    # Line 780
    # lw $t9, -22700($gp) # &glBegin
    # Line 773
    lw	$s2,5108($s0)
    # Line 760
    move	$s7,$a2
    # Line 775
    lw	$s3,5160($s0)
    # Line 769
    addu	$s5,$s5,$at
    # Line 771
    addu	$s4,$s4,$ra
    # Line 773
    addu	$s2,$s2,$s8
    # Line 772
    lw	$s8,5156($s0)
    sd	$s8,96($sp)
    # Line 775
    addu	$s3,$s3,$t8
    # Line 777
    mflo	$t8
    # Line 770
    lw	$s8,5104($s0)
    # Line 780
    jal	glBegin
    # Line 777
    addu	$s1,$s1,$t8
    # Line 780
    blez	$s7,.L0d990f8c
    sd	$s6,88($sp)
    move	$s6,$zero
    nop
.L0d990f20:
    # Line 782
    move	$t9,$s8
    jalr	$t9
    move	$a0,$s5
    # Line 783
    ld	$t9,96($sp)
    # Line 782
    lw	$t0,5092($s0)
    # Line 783
    move	$a0,$s4
    jalr	$t9
    # Line 782
    addu	$s5,$t0,$s5
    # Line 784
    ld	$t9,104($sp)
    # Line 783
    lw	$t1,5144($s0)
    # Line 784
    move	$a0,$s2
    jalr	$t9
    # Line 783
    addu	$s4,$t1,$s4
    # Line 785
    ld	$t9,112($sp)
    # Line 784
    lw	$t2,5116($s0)
    # Line 785
    move	$a0,$s3
    jalr	$t9
    # Line 784
    addu	$s2,$t2,$s2
    # Line 786
    ld	$t9,88($sp)
    # Line 785
    lw	$t3,5164($s0)
    # Line 786
    move	$a0,$s1
    jalr	$t9
    # Line 785
    addu	$s3,$t3,$s3
    # Line 786
    lw	$t8,5040($s0)
    # Line 781
    addiu	$s6,$s6,1
    bne	$s7,$s6,.L0d990f20
    # Line 786
    addu	$s1,$t8,$s1
.L0d990f8c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 788
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 789
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glDrawArraysCTIEV

# Function: __glDrawArraysNCTIEV
# Declared: Line 790 (Source lines: 790-822)
# Address: 0x0d990fd0 - 0x0d9911bc (Size: 492 bytes, Frame: 144)
.globl __glDrawArraysNCTIEV
.ent __glDrawArraysNCTIEV
__glDrawArraysNCTIEV:
    # Line 790
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 791
    lw	$s0,4112($zero)
    # Line 799
    lw	$t2,5064($s0)
    mult	$t2,$a1
    # Line 801
    lw	$t1,5092($s0)
    # Line 790
    sd	$s8,64($sp)
    # Line 799
    mflo	$at
    nop
    nop
    # Line 801
    mult	$t1,$a1
    # Line 790
    sd	$s7,56($sp)
    sd	$s1,40($sp)
    # Line 810
    lw	$s7,5052($s0)
    # Line 803
    lw	$t0,5144($s0)
    # Line 804
    lw	$a3,5156($s0)
    # Line 790
    sd	$s6,16($sp)
    # Line 801
    mflo	$s6
    nop
    nop
    # Line 803
    mult	$t0,$a1
    # Line 806
    lw	$a4,5128($s0)
    # Line 808
    lw	$a5,5176($s0)
    sd	$a5,128($sp)
    # Line 805
    lw	$a7,5116($s0)
    # Line 806
    sd	$a4,120($sp)
    # Line 790
    sd	$ra,72($sp)
    # Line 803
    mflo	$ra
    nop
    nop
    # Line 805
    mult	$a7,$a1
    # Line 804
    sd	$a3,112($sp)
    # Line 790
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 807
    lw	$a6,5164($s0)
    sd	$gp,80($sp)
    # Line 790
    lui	$v1,0xc
    sd	$s5,48($sp)
    # Line 805
    mflo	$s5
    nop
    nop
    # Line 807
    mult	$a6,$a1
    # Line 799
    lw	$s1,5056($s0)
    # Line 790
    addiu	$v1,$v1,-580
    sd	$s2,0($sp)
    addu	$gp,$t9,$v1
    # Line 812
    # lw $t9, -22700($gp) # &glBegin
    # Line 809
    lw	$v0,5040($s0)
    # Line 805
    lw	$s3,5108($s0)
    # Line 801
    lw	$s2,5080($s0)
    # Line 807
    mflo	$t8
    nop
    nop
    # Line 809
    mult	$v0,$a1
    # Line 803
    lw	$s4,5132($s0)
    # Line 801
    addu	$s2,$s2,$s6
    # Line 807
    lw	$s6,5160($s0)
    # Line 803
    addu	$s4,$s4,$ra
    # Line 802
    lw	$ra,5104($s0)
    # Line 790
    move	$s8,$a2
    # Line 802
    sd	$ra,104($sp)
    # Line 799
    addu	$s1,$s1,$at
    # Line 805
    addu	$s3,$s3,$s5
    # Line 809
    lw	$s5,5028($s0)
    # Line 800
    lw	$ra,5076($s0)
    # Line 807
    addu	$s6,$s6,$t8
    # Line 809
    mflo	$t8
    # Line 800
    sd	$ra,96($sp)
    # Line 812
    jal	glBegin
    # Line 809
    addu	$s5,$s5,$t8
    # Line 812
    blez	$s8,.L0d991180
    sd	$s7,88($sp)
    move	$s7,$zero
    nop
    nop
    nop
.L0d991100:
    # Line 814
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s1
    # Line 815
    ld	$t9,104($sp)
    # Line 814
    lw	$t3,5064($s0)
    # Line 815
    move	$a0,$s2
    jalr	$t9
    # Line 814
    addu	$s1,$t3,$s1
    # Line 816
    ld	$t9,112($sp)
    # Line 815
    lw	$t8,5092($s0)
    # Line 816
    move	$a0,$s4
    jalr	$t9
    # Line 815
    addu	$s2,$t8,$s2
    # Line 816
    lw	$t9,5144($s0)
    addu	$s4,$t9,$s4
    # Line 817
    ld	$t9,120($sp)
    jalr	$t9
    move	$a0,$s3
    lw	$ra,5116($s0)
    # Line 818
    ld	$t9,128($sp)
    # Line 817
    addu	$s3,$ra,$s3
    # Line 818
    jalr	$t9
    move	$a0,$s6
    # Line 819
    ld	$t9,88($sp)
    # Line 818
    lw	$at,5164($s0)
    # Line 819
    move	$a0,$s5
    jalr	$t9
    # Line 818
    addu	$s6,$at,$s6
    # Line 819
    lw	$v0,5040($s0)
    # Line 813
    addiu	$s7,$s7,1
    bne	$s8,$s7,.L0d991100
    # Line 819
    addu	$s5,$v0,$s5
.L0d991180:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 821
    # lw $t9, -22628($gp) # &glEnd
    ld	$s5,48($sp)
    ld	$s7,56($sp)
    jal	glEnd
    ld	$s8,64($sp)
    ld	$ra,72($sp)
    # Line 822
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glDrawArraysNCTIEV

# Function: __glDrawArraysN
# Declared: Line 823 (Source lines: 823-840)
# Address: 0x0d9911c0 - 0x0d991268 (Size: 168 bytes, Frame: 192)
.globl __glDrawArraysN
.ent __glDrawArraysN
__glDrawArraysN:
    # Line 823
    addiu	$sp,$sp,-64
    sd	$s4,16($sp)
    # Line 824
    lw	$s4,4112($zero)
    # Line 832
    lw	$at,5064($s4)
    # Line 823
    sd	$s2,0($sp)
    # Line 832
    mult	$at,$a1
    # Line 823
    sd	$ra,32($sp)
    lui	$ra,0xc
    sd	$s0,24($sp)
    addiu	$ra,$ra,-1076
    sd	$gp,40($sp)
    addu	$gp,$t9,$ra
    # Line 835
    # lw $t9, -22700($gp) # &glBegin
    # Line 832
    lw	$s0,5056($s4)
    # Line 823
    move	$s2,$a2
    sd	$s3,8($sp)
    # Line 832
    mflo	$t8
    # Line 833
    lw	$s3,5076($s4)
    # Line 835
    jal	glBegin
    # Line 832
    addu	$s0,$s0,$t8
    # Line 835
    blez	$s2,.L0d991240
    nop
    sd	$s1,48($sp)
    move	$s1,$zero
.L0d991220:
    # Line 837
    move	$t9,$s3
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5064($s4)
    # Line 836
    addiu	$s1,$s1,1
    bne	$s2,$s1,.L0d991220
    # Line 837
    addu	$s0,$v0,$s0
    ld	$s1,48($sp)
.L0d991240:
    ld	$s2,0($sp)
    # Line 839
    # lw $t9, -22628($gp) # &glEnd
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    jal	glEnd
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    # Line 840
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDrawArraysN

