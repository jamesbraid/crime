# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips_prim.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 6

.text

# Function: __glOtherLStripVertexFast
# Declared: Line 68 (Source lines: 68-86)
# Address: 0x0d9347e0 - 0x0d93481c (Size: 60 bytes, Frame: 0)
.globl __glOtherLStripVertexFast
.ent __glOtherLStripVertexFast
__glOtherLStripVertexFast:
    # Line 68
    lw	$v1,12692($a0)
    # Line 69
    move	$a2,$a1
    # Line 70
    lw	$a3,4($v1)
    # Line 71
    move	$a1,$v1
    # Line 72
    lw	$t9,12472($a0)
    # Line 73
    or	$v0,$v0,$a3
    # Line 74
    bnez	$v0,.L0d934808
    # Line 75
    sw	$a2,12692($a0)
    # Line 76
    jr	$t9
    # Line 77
    sw	$a1,12688($a0)
.L0d934808:
    # Line 82
    lw	$t9,12484($a0)
    # Line 83
    sw	$a1,12688($a0)
    # Line 84
    nop
    # Line 85
    jr	$t9
    # Line 86
    nop
.end __glOtherLStripVertexFast

# Function: __glFastClipLine
# Declared: Line 105 (Source lines: 105-133)
# Address: 0x0d93481c - 0x0d934884 (Size: 104 bytes, Frame: 0)
.globl __glFastClipLine
.ent __glFastClipLine
__glFastClipLine:
    # Line 105
    lw	$t0,4($a1)
    # Line 106
    lw	$t1,4($a2)
    # Line 107
    lw	$t2,12472($a0)
    # Line 108
    or	$t3,$t0,$t1
    # Line 109
    bnez	$t3,.L0d934840
    # Line 110
    and	$a4,$t0,$t1
    # Line 111
    move	$t9,$t2
    # Line 112
    jr	$t9
    # Line 113
    nop
.L0d934840:
    # Line 117
    bnez	$a4,.L0d93487c
    # Line 118
    nop
    # Line 119
    addiu	$sp,$sp,-48
    # Line 120
    sd	$gp,8($sp)
    lui	$gp,0x12
    daddiu	$gp,$gp,-14992
    daddu	$gp,$gp,$t9
    # Line 121
    # lw $t9, -25760($gp) # &__glClipLine
    # Line 122
    sw	$ra,16($sp)
    # Line 123
    jal	__glClipLine
    # Line 124
    nop
    # Line 126
    lw	$ra,16($sp)
    # Line 127
    ld	$gp,8($sp)
    # Line 128
    jr	$ra
    # Line 129
    addiu	$sp,$sp,48
.L0d93487c:
    # Line 132
    jr	$ra
    # Line 133
    nop
.end __glFastClipLine

# Function: __glSecondLinesVertex
# Declared: Line 145 (Source lines: 145-152)
# Address: 0x0d934884 - 0x0d9348a4 (Size: 32 bytes, Frame: 0)
.globl __glSecondLinesVertex
.ent __glSecondLinesVertex
__glSecondLinesVertex:
    # Line 145
    sb	$zero,29848($a0)
    # Line 146
    move	$a2,$a1
    # Line 147
    lw	$t9,12484($a0)
    # Line 148
    addiu	$a1,$a1,-192
    # Line 149
    lw	$a5,11960($a0)
    # Line 150
    sw	$a1,12688($a0)
    # Line 151
    jr	$t9
    # Line 152
    sw	$a5,11948($a0)
.end __glSecondLinesVertex

# Function: __glSecondLLoopVertex
# Declared: Line 165 (Source lines: 165-179)
# Address: 0x0d9348a4 - 0x0d9348ec (Size: 72 bytes, Frame: 0)
.globl __glSecondLLoopVertex
.ent __glSecondLLoopVertex
__glSecondLLoopVertex:
    # Line 165
    addiu	$sp,$sp,-48
    # Line 166
    sd	$gp,8($sp)
    lui	$gp,0x12
    daddiu	$gp,$gp,-15128
    daddu	$gp,$gp,$t9
    # Line 167
    addiu	$a6,$a1,192
    # Line 168
    lw	$a7,11956($a0)
    # Line 169
    sw	$a6,12688($a0)
    # Line 170
    la	$t8,__glMatValidateVbuf0V1
    # Line 171
    sw	$a1,12692($a0)
    # Line 172
    lw	$t9,12484($a0)
    # Line 173
    sw	$a7,11948($a0)
    # Line 174
    sw	$t8,12020($a0)
    # Line 175
    move	$a2,$a1
    # Line 176
    addiu	$a1,$a1,-192
    # Line 177
    ld	$gp,8($sp)
    # Line 178
    jr	$t9
    # Line 179
    addiu	$sp,$sp,48
.end __glSecondLLoopVertex

# Function: __glPoint
# Declared: Line 201 (Source lines: 201-227)
# Address: 0x0d9348ec - 0x0d934938 (Size: 76 bytes, Frame: 48)
.globl __glPoint
.ent __glPoint
__glPoint:
    # Line 201
    lw	$a2,28080($a0)
    # Line 202
    lw	$t9,12($a1)
    # Line 203
    bnez	$v0,.L0d934930
    # Line 204
    addiu	$sp,$sp,-48
    # Line 208
    sw	$ra,40($sp)
    # Line 209
    sw	$a1,32($sp)
    # Line 210
    sw	$a0,24($sp)
    # Line 211
    jalr	$t9
    # Line 212
    ori	$a2,$a2,0x1
    # Line 215
    lw	$a0,24($sp)
    # Line 216
    lw	$a1,32($sp)
    # Line 217
    nop
    # Line 218
    lw	$t9,12496($a0)
    # Line 219
    lw	$ra,40($sp)
    # Line 220
    nop
    # Line 221
    jr	$t9
    # Line 222
    addiu	$sp,$sp,48
.L0d934930:
    # Line 226
    jr	$ra
    # Line 227
    addiu	$sp,$sp,48
.end __glPoint

# Function: __glPointFast
# Declared: Line 247 (Source lines: 247-257)
# Address: 0x0d934938 - 0x0d934954 (Size: 28 bytes, Frame: 0)
.globl __glPointFast
.ent __glPointFast
__glPointFast:
    # Line 247
    lw	$t9,12496($a0)
    # Line 248
    bnez	$v0,.L0d93494c
    # Line 249
    nop
    # Line 251
    jr	$t9
    # Line 252
    nop
.L0d93494c:
    # Line 256
    jr	$ra
    # Line 257
    nop
.end __glPointFast

