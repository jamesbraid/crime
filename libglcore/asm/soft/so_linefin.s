# Source: ../soft/so_linefin.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linefin.c
# Total Functions: 9

.text

# Function: __glFirstLinesVertex
# Declared: Line 35 (Source lines: 37-39)
# Address: 0x0d938b40 - 0x0d938b54 (Size: 20 bytes, Frame: 0)
.globl __glFirstLinesVertex
.ent __glFirstLinesVertex
__glFirstLinesVertex:
    # Line 37
    addiu	$v0,$a1,192
    sw	$v0,12688($a0)
    # Line 38
    lw	$at,11964($a0)
    # Line 39
    jr	$ra
    # Line 38
    sw	$at,11948($a0)
.end __glFirstLinesVertex

# Function: __glBeginLines
# Declared: Line 41 (Source lines: 42-46)
# Address: 0x0d938b60 - 0x0d938b88 (Size: 40 bytes, Frame: 0)
.globl __glBeginLines
.ent __glBeginLines
__glBeginLines:
    # Line 43
    addiu	$a1,$a0,12712
    sw	$a1,12688($a0)
    # Line 42
    lui	$v1,0x12
    # Line 44
    lw	$a1,11960($a0)
    # Line 42
    addiu	$v1,$v1,-32212
    # Line 44
    sw	$a1,11948($a0)
    # Line 42
    addu	$at,$t9,$v1
    # Line 45
    la	$v0,__glMatValidateVbuf0N
    # Line 46
    jr	$ra
    # Line 45
    sw	$v0,12020($a0)
.end __glBeginLines

# Function: __glOtherLStripVertex
# Declared: Line 58 (Source lines: 59-87)
# Address: 0x0d938b90 - 0x0d938c3c (Size: 172 bytes, Frame: 48)
.globl __glOtherLStripVertex
.ent __glOtherLStripVertex
__glOtherLStripVertex:
    # Line 60
    lw	$a6,12692($a0)
    # Line 63
    sw	$a1,12692($a0)
    # Line 62
    sw	$a6,12688($a0)
    # Line 63
    lw	$a4,4($a1)
    lw	$a5,4($a6)
    # Line 59
    addiu	$sp,$sp,-48
    lui	$v0,0x12
    addiu	$v0,$v0,-32260
    # Line 63
    or	$at,$a4,$a5
    # Line 59
    move	$a2,$a1
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    sd	$ra,32($sp)
    # Line 63
    beqz	$at,.L0d938bf4
    and	$v1,$a4,$a5
    beqz	$v1,.L0d938be4
    # Line 78
    nop	# was lw $t9, -25760($gp) # &__glClipLine
    ld	$ra,32($sp)
.L0d938bd8:
    # Line 87
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d938be4:
    # Line 78
    jal	__glClipLine
    move	$a1,$a6
    b	.L0d938bd8
    ld	$ra,32($sp)
.L0d938bf4:
    sd	$a1,0($sp)
    # Line 83
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    ld	$a2,8($sp)
    sd	$a6,16($sp)
    move	$a0,$a2
    jalr	$t9
    lw	$a2,28080($a2)
    # Line 86
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12472($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    b	.L0d938bd8
    ld	$ra,32($sp)
.end __glOtherLStripVertex

# Function: __glSecondLStripVertex
# Declared: Line 108 (Source lines: 109-139)
# Address: 0x0d938c40 - 0x0d938cfc (Size: 188 bytes, Frame: 48)
.globl __glSecondLStripVertex
.ent __glSecondLStripVertex
__glSecondLStripVertex:
    # Line 110
    lw	$a6,12692($a0)
    # Line 113
    sw	$a1,12692($a0)
    # Line 114
    lw	$a2,11956($a0)
    sw	$a2,11948($a0)
    # Line 109
    lui	$v1,0x12
    # Line 112
    sw	$a6,12688($a0)
    # Line 109
    addiu	$sp,$sp,-48
    addiu	$v1,$v1,-32436
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 115
    la	$v0,__glNop
    sw	$v0,12020($a0)
    lw	$a5,4($a6)
    lw	$a4,4($a1)
    or	$at,$a4,$a5
    # Line 109
    move	$a2,$a1
    # Line 115
    beqz	$at,.L0d938cb4
    sd	$ra,32($sp)
    and	$a1,$a4,$a5
    beqz	$a1,.L0d938ca0
    ld	$ra,32($sp)
.L0d938c94:
    # Line 139
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d938ca0:
    # Line 130
    # lw $t9, -25760($gp) # &__glClipLine
    jal	__glClipLine
    move	$a1,$a6
    b	.L0d938c94
    ld	$ra,32($sp)
.L0d938cb4:
    sd	$a1,0($sp)
    # Line 135
    ld	$t9,0($sp)
    sd	$a0,8($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    ld	$a2,8($sp)
    sd	$a6,16($sp)
    move	$a0,$a2
    jalr	$t9
    lw	$a2,28080($a2)
    # Line 138
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12472($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,0($sp)
    b	.L0d938c94
    ld	$ra,32($sp)
.end __glSecondLStripVertex

# Function: __glFirstLStripVertex
# Declared: Line 142 (Source lines: 143-155)
# Address: 0x0d938d00 - 0x0d938d70 (Size: 112 bytes, Frame: 16)
.globl __glFirstLStripVertex
.ent __glFirstLStripVertex
__glFirstLStripVertex:
    # Line 145
    lw	$v0,1792($a0)
    # Line 144
    addiu	$v1,$a1,192
    # Line 145
    sw	$a1,12692($a0)
    # Line 143
    lui	$at,0x12
    # Line 145
    andi	$v0,$v0,0x80
    # Line 144
    sw	$v1,12688($a0)
    # Line 143
    addiu	$sp,$sp,-16
    addiu	$at,$at,-32628
    sd	$gp,0($sp)
    # Line 145
    beqz	$v0,.L0d938d64
    # Line 143
    addu	$gp,$t9,$at
    # Line 147
    la	$v1,__glSecondLStripVertex
    sw	$v1,11948($a0)
.L0d938d34:
    # Line 150
    lw	$a2,28080($a0)
    sd	$ra,8($sp)
    la	$a3,__glMatValidateV1
    beqz	$a2,.L0d938d54
    sw	$a3,12020($a0)
    # Line 154
    lw	$t9,12($a1)
    jalr	$t9
    nop
.L0d938d54:
    ld	$ra,8($sp)
    # Line 155
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d938d64:
    # Line 149
    lw	$a4,11956($a0)
    b	.L0d938d34
    sw	$a4,11948($a0)
.end __glFirstLStripVertex

# Function: __glBeginLStrip
# Declared: Line 157 (Source lines: 158-164)
# Address: 0x0d938d70 - 0x0d938d9c (Size: 44 bytes, Frame: 0)
.globl __glBeginLStrip
.ent __glBeginLStrip
__glBeginLStrip:
    # Line 158
    lui	$a1,0x12
    # Line 161
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 158
    addiu	$a1,$a1,-32740
    # Line 159
    sb	$zero,29848($a0)
    # Line 158
    addu	$at,$t9,$a1
    # Line 162
    la	$v0,__glFirstLStripVertex
    # Line 163
    la	$v1,__glMatValidateVbuf0N
    sw	$v1,12020($a0)
    # Line 164
    jr	$ra
    # Line 162
    sw	$v0,11948($a0)
.end __glBeginLStrip

# Function: FirstLLoopVertex
# Declared: Line 204 (Source lines: 205-208)
# Address: 0x0d938da0 - 0x0d938dc0 (Size: 32 bytes, Frame: 0)
.ent FirstLLoopVertex
FirstLLoopVertex:
    # Line 205
    lui	$v1,0x11
    addiu	$v1,$v1,32748
    # Line 206
    addiu	$a1,$a1,192
    sw	$a1,12688($a0)
    # Line 205
    addu	$at,$t9,$v1
    # Line 207
    la	$v0,__glSecondLLoopVertex
    # Line 208
    jr	$ra
    # Line 207
    sw	$v0,11948($a0)
.end FirstLLoopVertex

# Function: __glEndLLoop
# Declared: Line 210 (Source lines: 211-226)
# Address: 0x0d938dc0 - 0x0d938e30 (Size: 112 bytes, Frame: 32)
.globl __glEndLLoop
.ent __glEndLLoop
__glEndLLoop:
    # Line 211
    lui	$v0,0x11
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,32716
    sd	$gp,0($sp)
    addu	$gp,$t9,$v0
    # Line 216
    la	$at,sub_0d940000
    lw	$a2,11948($a0)
    addiu	$at,$at,-29280
    # Line 211
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 216
    beq	$a2,$at,.L0d938df4
    la	$v1,__glSecondLLoopVertex
    bne	$a2,$v1,.L0d938e14
.L0d938df4:
    # Line 225
    la	$a1,__glEndPrim
    # Line 224
    la	$a0,__glNop
    # Line 226
    ld	$gp,0($sp)
    # Line 225
    sw	$a1,12068($s0)
    # Line 224
    sw	$a0,11948($s0)
    # Line 226
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d938e14:
    # Line 222
    lw	$t9,12484($s0)
    sd	$ra,16($sp)
    addiu	$a2,$s0,12712
    jalr	$t9
    lw	$a1,12692($s0)
    b	.L0d938df4
    ld	$ra,16($sp)
.end __glEndLLoop

# Function: __glBeginLLoop
# Declared: Line 228 (Source lines: 229-236)
# Address: 0x0d938e30 - 0x0d938e68 (Size: 56 bytes, Frame: 0)
.globl __glBeginLLoop
.ent __glBeginLLoop
__glBeginLLoop:
    # Line 229
    lui	$a2,0x11
    # Line 232
    addiu	$a3,$a0,12712
    sw	$a3,12688($a0)
    # Line 229
    addiu	$a2,$a2,32604
    # Line 230
    sb	$zero,29848($a0)
    # Line 229
    addu	$at,$t9,$a2
    # Line 234
    la	$v1,__glEndLLoop
    # Line 235
    la	$a1,__glMatValidateVbuf0N
    sw	$a1,12020($a0)
    # Line 233
    la	$v0,sub_0d940000
    # Line 234
    sw	$v1,12068($a0)
    # Line 233
    addiu	$v0,$v0,-29280
    # Line 236
    jr	$ra
    # Line 233
    sw	$v0,11948($a0)
.end __glBeginLLoop

