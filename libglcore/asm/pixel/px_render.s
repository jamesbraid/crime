# Source: ../pixel/px_render.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_render.c
# Total Functions: 27

.text

# Function: __glSlowDrawPixelsStore
# Declared: Line 31 (Source lines: 32-48)
# Address: 0x0d9b1530 - 0x0d9b1628 (Size: 248 bytes, Frame: 224)
.globl __glSlowDrawPixelsStore
.ent __glSlowDrawPixelsStore
__glSlowDrawPixelsStore:
    # Line 32
    addiu	$a5,$a1,4
    li	$a7,0x8
    # Line 37
    lw	$v0,0($a1)
    # Line 32
    addiu	$sp,$sp,-96
    # Line 37
    li	$a3,4
    li	$a4,0xc
    # Line 32
    sd	$s0,64($sp)
    move	$a6,$a1
    # Line 33
    lw	$s0,0($a0)
    # Line 32
    lui	$at,0xa
    addiu	$t0,$sp,4
    # Line 37
    sw	$v0,0($sp)
    # Line 32
    addiu	$at,$at,-1956
    # Line 37
    addiu	$t1,$sp,0
    sd	$gp,72($sp)
    # Line 32
    addu	$gp,$t9,$at
.L0d9b1570:
    # Line 37
    addu	$t3,$a3,$a6
    addu	$t8,$a3,$t1
    lw	$t3,0($t3)
    addiu	$a4,$a4,-2
    addu	$t2,$a3,$a5
    sw	$t3,0($t8)
    addu	$t3,$a3,$t0
    lw	$t2,0($t2)
    addu	$a3,$a3,$a7
    bgtz	$a4,.L0d9b1570
    sw	$t2,0($t3)
    lbu	$t8,28216($s0)
    sd	$a0,56($sp)
    beqz	$t8,.L0d9b15e0
    sd	$ra,80($sp)
    # Line 39
    lwc1	$f18,300($s0)
    lwc1	$f17,3544($s0)
    div.s	$f18,$f17,$f18
    # Line 40
    lwc1	$f14,288($s0)
    lwc1	$f16,296($s0)
    lwc1	$f15,292($s0)
    lw	$t9,12524($s0)
    mul.s	$f16,$f16,$f18
    addiu	$a1,$sp,12
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0d9b15e0:
    lw	$t9,1792($s0)
    andi	$t9,$t9,0x20
    beqz	$t9,.L0d9b1604
    nop
    # Line 45
    lw	$t9,12528($s0)
    move	$a0,$s0
    lwc1	$f14,344($s0)
    jalr	$t9
    addiu	$a1,$sp,0
.L0d9b1604:
    # Line 47
    lw	$t9,12608($s0)
    ld	$a0,56($sp)
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,80($sp)
    ld	$s0,64($sp)
    # Line 48
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSlowDrawPixelsStore

# Function: __glSpanRenderRGBubyte
# Declared: Line 56 (Source lines: 58-111)
# Address: 0x0d9b1630 - 0x0d9b1818 (Size: 488 bytes, Frame: 224)
.globl __glSpanRenderRGBubyte
.ent __glSpanRenderRGBubyte
__glSpanRenderRGBubyte:
    # Line 58
    addiu	$sp,$sp,-224
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 73
    lw	$t1,236($a1)
    sd	$t1,160($sp)
    # Line 79
    lw	$t0,30572($a0)
    sd	$t0,200($sp)
    # Line 80
    lw	$a7,30576($a0)
    sd	$a7,208($sp)
    # Line 81
    lw	$a6,30580($a0)
    sd	$a6,216($sp)
    # Line 58
    sd	$a1,168($sp)
    # Line 75
    lw	$at,208($a1)
    # Line 87
    sd	$at,184($sp)
    sd	$gp,136($sp)
    # Line 83
    lw	$a5,248($a1)
    # Line 58
    sd	$s2,128($sp)
    # Line 82
    lw	$s2,12580($a0)
    # Line 58
    sd	$s8,56($sp)
    # Line 77
    lw	$s8,184($a1)
    # Line 58
    sd	$s4,96($sp)
    # Line 74
    lw	$s4,240($a1)
    # Line 76
    lwc1	$f2,200($a1)
    lwc1	$f0,164($a1)
    # Line 83
    sw	$a5,8($sp)
    # Line 84
    lw	$a4,30584($a0)
    # Line 58
    sd	$s3,120($sp)
    # Line 84
    lwc1	$f1,1020($a4)
    # Line 76
    add.s	$f0,$f0,$f2
    # Line 58
    sd	$a2,152($sp)
    # Line 84
    swc1	$f1,24($sp)
    # Line 76
    trunc.w.s	$f0,$f0
    # Line 58
    move	$s3,$a0
    # Line 85
    lw	$a0,220($a1)
    # Line 86
    lw	$a3,204($a1)
    # Line 76
    mfc1	$v0,$f0
    # Line 58
    lui	$a2,0xa
    # Line 86
    sd	$a3,144($sp)
    # Line 58
    addiu	$a2,$a2,-2212
    # Line 85
    sd	$a0,192($sp)
    # Line 58
    addu	$gp,$t9,$a2
    # Line 87
    beq	$at,$v0,.L0d9b17d0
    # Line 76
    sd	$v0,176($sp)
    nop
.L0d9b16f0:
    # Line 88
    ld	$t2,192($sp)
    beqz	$t2,.L0d9b17d0
    # Line 92
    ld	$s5,152($sp)
    # Line 90
    ld	$s0,144($sp)
    # Line 93
    ld	$t8,184($sp)
    # Line 91
    ld	$s6,168($sp)
    # Line 93
    ld	$t3,192($sp)
    # Line 91
    lw	$s6,312($s6)
    # Line 93
    sw	$t8,4($sp)
    # Line 89
    addiu	$t3,$t3,-1
    # Line 93
    blez	$s8,.L0d9b17b8
    sd	$t3,192($sp)
    move	$s7,$zero
    nop
    nop
    # Line 97
    lbu	$v1,0($s5)
.L0d9b1730:
    ld	$v0,200($sp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f5,0($v0)
    # Line 96
    lh	$s1,0($s6)
    # Line 97
    swc1	$f5,12($sp)
    # Line 98
    lbu	$at,1($s5)
    ld	$ra,208($sp)
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f4,0($ra)
    swc1	$f4,16($sp)
    # Line 99
    lbu	$t9,2($s5)
    ld	$t8,216($sp)
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f3,0($t8)
    addiu	$s5,$s5,3
    # Line 96
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 99
    swc1	$f3,20($sp)
    nop
    nop
    # Line 104
    move	$t9,$s2
.L0d9b1790:
    # Line 101
    sw	$s0,0($sp)
    # Line 104
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 105
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b1790
    # Line 104
    move	$t9,$s2
    # Line 95
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b1730
    # Line 97
    lbu	$v1,0($s5)
.L0d9b17b8:
    # Line 87
    ld	$a1,184($sp)
    ld	$a2,160($sp)
    ld	$a0,176($sp)
    addu	$a1,$a2,$a1
    bne	$a0,$a1,.L0d9b16f0
    sd	$a1,184($sp)
.L0d9b17d0:
    # Line 111
    ld	$gp,136($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 109
    ld	$a3,192($sp)
    # Line 110
    ld	$a4,168($sp)
    # Line 111
    ld	$ra,104($sp)
    # Line 110
    ld	$a5,176($sp)
    sw	$a5,208($a4)
    # Line 111
    addiu	$sp,$sp,224
    jr	$ra
    # Line 109
    sw	$a3,220($a4)
.end __glSpanRenderRGBubyte

# Function: __glSpanRenderBGRubyte
# Declared: Line 121 (Source lines: 123-176)
# Address: 0x0d9b1820 - 0x0d9b1a08 (Size: 488 bytes, Frame: 224)
.globl __glSpanRenderBGRubyte
.ent __glSpanRenderBGRubyte
__glSpanRenderBGRubyte:
    # Line 123
    addiu	$sp,$sp,-224
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 138
    lw	$t1,236($a1)
    sd	$t1,160($sp)
    # Line 144
    lw	$t0,30572($a0)
    sd	$t0,200($sp)
    # Line 145
    lw	$a7,30576($a0)
    sd	$a7,208($sp)
    # Line 146
    lw	$a6,30580($a0)
    sd	$a6,216($sp)
    # Line 123
    sd	$a1,168($sp)
    # Line 140
    lw	$at,208($a1)
    # Line 152
    sd	$at,184($sp)
    sd	$gp,136($sp)
    # Line 148
    lw	$a5,248($a1)
    # Line 123
    sd	$s2,128($sp)
    # Line 147
    lw	$s2,12580($a0)
    # Line 123
    sd	$s8,56($sp)
    # Line 142
    lw	$s8,184($a1)
    # Line 123
    sd	$s4,96($sp)
    # Line 139
    lw	$s4,240($a1)
    # Line 141
    lwc1	$f2,200($a1)
    lwc1	$f0,164($a1)
    # Line 148
    sw	$a5,8($sp)
    # Line 149
    lw	$a4,30584($a0)
    # Line 123
    sd	$s3,120($sp)
    # Line 149
    lwc1	$f1,1020($a4)
    # Line 141
    add.s	$f0,$f0,$f2
    # Line 123
    sd	$a2,152($sp)
    # Line 149
    swc1	$f1,24($sp)
    # Line 141
    trunc.w.s	$f0,$f0
    # Line 123
    move	$s3,$a0
    # Line 150
    lw	$a0,220($a1)
    # Line 151
    lw	$a3,204($a1)
    # Line 141
    mfc1	$v0,$f0
    # Line 123
    lui	$a2,0xa
    # Line 151
    sd	$a3,144($sp)
    # Line 123
    addiu	$a2,$a2,-2708
    # Line 150
    sd	$a0,192($sp)
    # Line 123
    addu	$gp,$t9,$a2
    # Line 152
    beq	$at,$v0,.L0d9b19c0
    # Line 141
    sd	$v0,176($sp)
    nop
.L0d9b18e0:
    # Line 153
    ld	$t2,192($sp)
    beqz	$t2,.L0d9b19c0
    # Line 157
    ld	$s5,152($sp)
    # Line 155
    ld	$s0,144($sp)
    # Line 158
    ld	$t8,184($sp)
    # Line 156
    ld	$s6,168($sp)
    # Line 158
    ld	$t3,192($sp)
    # Line 156
    lw	$s6,312($s6)
    # Line 158
    sw	$t8,4($sp)
    # Line 154
    addiu	$t3,$t3,-1
    # Line 158
    blez	$s8,.L0d9b19a8
    sd	$t3,192($sp)
    move	$s7,$zero
    nop
    nop
    # Line 162
    lbu	$v1,0($s5)
.L0d9b1920:
    ld	$v0,216($sp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f5,0($v0)
    # Line 161
    lh	$s1,0($s6)
    # Line 162
    swc1	$f5,20($sp)
    # Line 163
    lbu	$at,1($s5)
    ld	$ra,208($sp)
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f4,0($ra)
    swc1	$f4,16($sp)
    # Line 164
    lbu	$t9,2($s5)
    ld	$t8,200($sp)
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f3,0($t8)
    addiu	$s5,$s5,3
    # Line 161
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 164
    swc1	$f3,12($sp)
    nop
    nop
    # Line 169
    move	$t9,$s2
.L0d9b1980:
    # Line 166
    sw	$s0,0($sp)
    # Line 169
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 170
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b1980
    # Line 169
    move	$t9,$s2
    # Line 160
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b1920
    # Line 162
    lbu	$v1,0($s5)
.L0d9b19a8:
    # Line 152
    ld	$a1,184($sp)
    ld	$a2,160($sp)
    ld	$a0,176($sp)
    addu	$a1,$a2,$a1
    bne	$a0,$a1,.L0d9b18e0
    sd	$a1,184($sp)
.L0d9b19c0:
    # Line 176
    ld	$gp,136($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 174
    ld	$a3,192($sp)
    # Line 175
    ld	$a4,168($sp)
    # Line 176
    ld	$ra,104($sp)
    # Line 175
    ld	$a5,176($sp)
    sw	$a5,208($a4)
    # Line 176
    addiu	$sp,$sp,224
    jr	$ra
    # Line 174
    sw	$a3,220($a4)
.end __glSpanRenderBGRubyte

# Function: __glSpanRenderRGBubyte2
# Declared: Line 186 (Source lines: 188-235)
# Address: 0x0d9b1a10 - 0x0d9b1bac (Size: 412 bytes, Frame: 208)
.globl __glSpanRenderRGBubyte2
.ent __glSpanRenderRGBubyte2
__glSpanRenderRGBubyte2:
    # Line 202
    lw	$a7,236($a1)
    # Line 188
    addiu	$sp,$sp,-208
    # Line 202
    sd	$a7,120($sp)
    # Line 204
    lw	$at,208($a1)
    # Line 216
    sd	$at,152($sp)
    sd	$gp,112($sp)
    # Line 188
    sd	$s5,88($sp)
    sd	$s7,96($sp)
    sd	$s4,80($sp)
    sd	$s3,64($sp)
    sd	$s2,56($sp)
    sd	$s6,72($sp)
    sd	$a2,128($sp)
    sd	$s8,104($sp)
    # Line 207
    lw	$a6,30584($a0)
    # Line 203
    lw	$s8,240($a1)
    # Line 207
    lwc1	$f2,1020($a6)
    # Line 205
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 207
    swc1	$f2,24($sp)
    # Line 208
    lw	$a5,248($a1)
    sw	$a5,8($sp)
    # Line 214
    lw	$s6,212($a1)
    # Line 212
    lw	$s2,12580($a0)
    # Line 211
    lw	$s3,30580($a0)
    # Line 205
    add.s	$f0,$f0,$f1
    # Line 210
    lw	$s4,30576($a0)
    # Line 209
    lw	$s7,30572($a0)
    # Line 205
    trunc.w.s	$f0,$f0
    # Line 213
    lw	$a3,204($a1)
    # Line 215
    lw	$a4,220($a1)
    # Line 205
    mfc1	$v0,$f0
    # Line 188
    lui	$a2,0xa
    # Line 215
    sd	$a4,160($sp)
    # Line 188
    move	$s5,$a0
    addiu	$a2,$a2,-3204
    # Line 213
    sd	$a3,136($sp)
    # Line 188
    addu	$gp,$t9,$a2
    # Line 216
    beq	$at,$v0,.L0d9b1b74
    # Line 205
    sd	$v0,144($sp)
    sd	$s1,192($sp)
    sd	$s0,184($sp)
    sd	$ra,176($sp)
    sd	$a1,168($sp)
.L0d9b1ac0:
    # Line 217
    ld	$t0,160($sp)
    beqz	$t0,.L0d9b1b64
    # Line 218
    ld	$t1,160($sp)
    # Line 221
    ld	$s0,136($sp)
    # Line 219
    ld	$s1,128($sp)
    # Line 218
    addiu	$t1,$t1,-1
    sd	$t1,160($sp)
    # Line 220
    ld	$t2,152($sp)
    sw	$t2,4($sp)
    nop
    nop
    # Line 223
    lbu	$t9,0($s1)
.L0d9b1af0:
    sll	$t9,$t9,0x2
    addu	$t9,$s7,$t9
    lwc1	$f5,0($t9)
    swc1	$f5,12($sp)
    # Line 224
    lbu	$t8,1($s1)
    sll	$t8,$t8,0x2
    addu	$t8,$s4,$t8
    lwc1	$f4,0($t8)
    swc1	$f4,16($sp)
    # Line 225
    lbu	$t3,2($s1)
    sll	$t3,$t3,0x2
    addu	$t3,$s3,$t3
    lwc1	$f3,0($t3)
    # Line 229
    move	$t9,$s2
    # Line 226
    sw	$s0,0($sp)
    # Line 229
    addiu	$a1,$sp,0
    # Line 225
    swc1	$f3,20($sp)
    addiu	$s1,$s1,3
    # Line 229
    jalr	$t9
    lw	$a0,11760($s5)
    # Line 230
    addu	$s0,$s8,$s0
    bnel	$s6,$s0,.L0d9b1af0
    # Line 223
    lbu	$t9,0($s1)
    # Line 216
    ld	$at,152($sp)
    ld	$v0,120($sp)
    ld	$ra,144($sp)
    addu	$at,$v0,$at
    bne	$ra,$at,.L0d9b1ac0
    sd	$at,152($sp)
.L0d9b1b64:
    ld	$a1,168($sp)
    ld	$ra,176($sp)
    ld	$s0,184($sp)
    ld	$s1,192($sp)
.L0d9b1b74:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    # Line 235
    ld	$gp,112($sp)
    # Line 233
    ld	$v1,160($sp)
    # Line 234
    ld	$a0,144($sp)
    sw	$a0,208($a1)
    # Line 235
    addiu	$sp,$sp,208
    jr	$ra
    # Line 233
    sw	$v1,220($a1)
.end __glSpanRenderRGBubyte2

# Function: __glSpanRenderBGRubyte2
# Declared: Line 247 (Source lines: 249-296)
# Address: 0x0d9b1bb0 - 0x0d9b1d4c (Size: 412 bytes, Frame: 208)
.globl __glSpanRenderBGRubyte2
.ent __glSpanRenderBGRubyte2
__glSpanRenderBGRubyte2:
    # Line 263
    lw	$a7,236($a1)
    # Line 249
    addiu	$sp,$sp,-208
    # Line 263
    sd	$a7,120($sp)
    # Line 265
    lw	$at,208($a1)
    # Line 277
    sd	$at,152($sp)
    sd	$gp,112($sp)
    # Line 249
    sd	$s5,88($sp)
    sd	$s7,96($sp)
    sd	$s4,80($sp)
    sd	$s3,64($sp)
    sd	$s2,56($sp)
    sd	$s6,72($sp)
    sd	$a2,128($sp)
    sd	$s8,104($sp)
    # Line 268
    lw	$a6,30584($a0)
    # Line 264
    lw	$s8,240($a1)
    # Line 268
    lwc1	$f2,1020($a6)
    # Line 266
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 268
    swc1	$f2,24($sp)
    # Line 269
    lw	$a5,248($a1)
    sw	$a5,8($sp)
    # Line 275
    lw	$s6,212($a1)
    # Line 273
    lw	$s2,12580($a0)
    # Line 272
    lw	$s3,30580($a0)
    # Line 266
    add.s	$f0,$f0,$f1
    # Line 271
    lw	$s4,30576($a0)
    # Line 270
    lw	$s7,30572($a0)
    # Line 266
    trunc.w.s	$f0,$f0
    # Line 274
    lw	$a3,204($a1)
    # Line 276
    lw	$a4,220($a1)
    # Line 266
    mfc1	$v0,$f0
    # Line 249
    lui	$a2,0xa
    # Line 276
    sd	$a4,160($sp)
    # Line 249
    move	$s5,$a0
    addiu	$a2,$a2,-3620
    # Line 274
    sd	$a3,136($sp)
    # Line 249
    addu	$gp,$t9,$a2
    # Line 277
    beq	$at,$v0,.L0d9b1d14
    # Line 266
    sd	$v0,144($sp)
    sd	$s1,192($sp)
    sd	$s0,184($sp)
    sd	$ra,176($sp)
    sd	$a1,168($sp)
.L0d9b1c60:
    # Line 278
    ld	$t0,160($sp)
    beqz	$t0,.L0d9b1d04
    # Line 279
    ld	$t1,160($sp)
    # Line 282
    ld	$s0,136($sp)
    # Line 280
    ld	$s1,128($sp)
    # Line 279
    addiu	$t1,$t1,-1
    sd	$t1,160($sp)
    # Line 281
    ld	$t2,152($sp)
    sw	$t2,4($sp)
    nop
    nop
    # Line 284
    lbu	$t9,0($s1)
.L0d9b1c90:
    sll	$t9,$t9,0x2
    addu	$t9,$s3,$t9
    lwc1	$f5,0($t9)
    swc1	$f5,20($sp)
    # Line 285
    lbu	$t8,1($s1)
    sll	$t8,$t8,0x2
    addu	$t8,$s4,$t8
    lwc1	$f4,0($t8)
    swc1	$f4,16($sp)
    # Line 286
    lbu	$t3,2($s1)
    sll	$t3,$t3,0x2
    addu	$t3,$s7,$t3
    lwc1	$f3,0($t3)
    # Line 290
    move	$t9,$s2
    # Line 287
    sw	$s0,0($sp)
    # Line 290
    addiu	$a1,$sp,0
    # Line 286
    swc1	$f3,12($sp)
    addiu	$s1,$s1,3
    # Line 290
    jalr	$t9
    lw	$a0,11760($s5)
    # Line 291
    addu	$s0,$s8,$s0
    bnel	$s6,$s0,.L0d9b1c90
    # Line 284
    lbu	$t9,0($s1)
    # Line 277
    ld	$at,152($sp)
    ld	$v0,120($sp)
    ld	$ra,144($sp)
    addu	$at,$v0,$at
    bne	$ra,$at,.L0d9b1c60
    sd	$at,152($sp)
.L0d9b1d04:
    ld	$a1,168($sp)
    ld	$ra,176($sp)
    ld	$s0,184($sp)
    ld	$s1,192($sp)
.L0d9b1d14:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    # Line 296
    ld	$gp,112($sp)
    # Line 294
    ld	$v1,160($sp)
    # Line 295
    ld	$a0,144($sp)
    sw	$a0,208($a1)
    # Line 296
    addiu	$sp,$sp,208
    jr	$ra
    # Line 294
    sw	$v1,220($a1)
.end __glSpanRenderBGRubyte2

# Function: __glSpanRenderRGBAubyte
# Declared: Line 303 (Source lines: 305-359)
# Address: 0x0d9b1d50 - 0x0d9b1f48 (Size: 504 bytes, Frame: 240)
.globl __glSpanRenderRGBAubyte
.ent __glSpanRenderRGBAubyte
__glSpanRenderRGBAubyte:
    # Line 305
    addiu	$sp,$sp,-240
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 320
    lw	$t2,236($a1)
    sd	$t2,160($sp)
    # Line 326
    lw	$t1,30572($a0)
    sd	$t1,200($sp)
    # Line 327
    lw	$t0,30576($a0)
    sd	$t0,208($sp)
    # Line 328
    lw	$a7,30580($a0)
    sd	$a7,224($sp)
    # Line 329
    lw	$a6,30584($a0)
    sd	$a6,216($sp)
    # Line 305
    sd	$a1,168($sp)
    # Line 322
    lw	$at,208($a1)
    # Line 334
    sd	$at,184($sp)
    sd	$gp,136($sp)
    # Line 305
    sd	$s3,120($sp)
    # Line 331
    lw	$a5,248($a1)
    # Line 305
    sd	$a2,152($sp)
    sd	$s2,128($sp)
    # Line 330
    lw	$s2,12580($a0)
    # Line 323
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 305
    sd	$s8,56($sp)
    # Line 324
    lw	$s8,184($a1)
    # Line 305
    sd	$s4,96($sp)
    # Line 323
    add.s	$f0,$f0,$f1
    # Line 321
    lw	$s4,240($a1)
    # Line 331
    sw	$a5,8($sp)
    # Line 323
    trunc.w.s	$f0,$f0
    # Line 333
    lw	$a3,204($a1)
    sd	$a3,144($sp)
    # Line 323
    mfc1	$v0,$f0
    # Line 305
    lui	$a2,0xa
    # Line 332
    lw	$a3,220($a1)
    # Line 305
    move	$s3,$a0
    addiu	$a2,$a2,-4036
    # Line 332
    sd	$a3,192($sp)
    # Line 305
    addu	$gp,$t9,$a2
    # Line 334
    beq	$at,$v0,.L0d9b1f00
    # Line 323
    sd	$v0,176($sp)
    nop
    nop
.L0d9b1e10:
    # Line 335
    ld	$t3,192($sp)
    beqz	$t3,.L0d9b1f00
    # Line 339
    ld	$s5,152($sp)
    # Line 337
    ld	$s0,144($sp)
    # Line 340
    ld	$t9,184($sp)
    # Line 338
    ld	$s6,168($sp)
    # Line 340
    ld	$t8,192($sp)
    # Line 338
    lw	$s6,312($s6)
    # Line 340
    sw	$t9,4($sp)
    # Line 336
    addiu	$t8,$t8,-1
    # Line 340
    blez	$s8,.L0d9b1ee8
    sd	$t8,192($sp)
    move	$s7,$zero
    nop
    nop
    # Line 344
    lbu	$a1,0($s5)
.L0d9b1e50:
    ld	$a0,200($sp)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f5,0($a0)
    # Line 343
    lh	$s1,0($s6)
    # Line 344
    swc1	$f5,12($sp)
    # Line 345
    lbu	$v1,1($s5)
    ld	$v0,208($sp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f4,0($v0)
    swc1	$f4,16($sp)
    # Line 346
    lbu	$at,2($s5)
    ld	$ra,224($sp)
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f3,0($ra)
    swc1	$f3,20($sp)
    # Line 347
    lbu	$t9,3($s5)
    ld	$t8,216($sp)
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f2,0($t8)
    addiu	$s5,$s5,4
    # Line 343
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 347
    swc1	$f2,24($sp)
    # Line 352
    move	$t9,$s2
.L0d9b1ec0:
    # Line 349
    sw	$s0,0($sp)
    # Line 352
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 353
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b1ec0
    # Line 352
    move	$t9,$s2
    # Line 342
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b1e50
    # Line 344
    lbu	$a1,0($s5)
.L0d9b1ee8:
    # Line 334
    ld	$a3,184($sp)
    ld	$a4,160($sp)
    ld	$a2,176($sp)
    addu	$a3,$a4,$a3
    bne	$a2,$a3,.L0d9b1e10
    sd	$a3,184($sp)
.L0d9b1f00:
    # Line 359
    ld	$gp,136($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 357
    ld	$a5,192($sp)
    # Line 358
    ld	$a6,168($sp)
    # Line 359
    ld	$ra,104($sp)
    # Line 358
    ld	$a7,176($sp)
    sw	$a7,208($a6)
    # Line 359
    addiu	$sp,$sp,240
    jr	$ra
    # Line 357
    sw	$a5,220($a6)
.end __glSpanRenderRGBAubyte

# Function: __glSpanRenderRGBAubyte2
# Declared: Line 367 (Source lines: 369-417)
# Address: 0x0d9b1f50 - 0x0d9b2104 (Size: 436 bytes, Frame: 208)
.globl __glSpanRenderRGBAubyte2
.ent __glSpanRenderRGBAubyte2
__glSpanRenderRGBAubyte2:
    # Line 383
    lw	$a6,236($a1)
    # Line 369
    addiu	$sp,$sp,-208
    # Line 383
    sd	$a6,120($sp)
    # Line 369
    sd	$s6,72($sp)
    # Line 388
    lw	$a5,248($a1)
    # Line 369
    sd	$s2,56($sp)
    # Line 384
    lw	$s2,240($a1)
    # Line 385
    lw	$at,208($a1)
    # Line 386
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 388
    sw	$a5,8($sp)
    # Line 395
    lw	$s6,212($a1)
    # Line 369
    sd	$s8,104($sp)
    # Line 393
    lw	$s8,12580($a0)
    # Line 369
    sd	$s3,64($sp)
    # Line 392
    lw	$s3,30584($a0)
    # Line 369
    sd	$s4,80($sp)
    # Line 391
    lw	$s4,30580($a0)
    # Line 369
    sd	$s5,88($sp)
    # Line 390
    lw	$s5,30576($a0)
    # Line 397
    sd	$at,152($sp)
    sd	$gp,112($sp)
    # Line 369
    sd	$s7,96($sp)
    # Line 386
    add.s	$f0,$f0,$f1
    # Line 396
    lw	$a4,220($a1)
    # Line 394
    lw	$a3,204($a1)
    # Line 386
    trunc.w.s	$f0,$f0
    # Line 394
    sd	$a3,128($sp)
    # Line 396
    sd	$a4,160($sp)
    # Line 386
    mfc1	$v0,$f0
    # Line 369
    sd	$a2,136($sp)
    lui	$a2,0xa
    move	$s7,$a0
    # Line 389
    lw	$a4,30572($a0)
    # Line 369
    addiu	$a2,$a2,-4548
    addu	$gp,$t9,$a2
    # Line 397
    beq	$at,$v0,.L0d9b20cc
    # Line 386
    sd	$v0,144($sp)
    sd	$s1,200($sp)
    sd	$s0,192($sp)
    sd	$ra,184($sp)
    sd	$a1,176($sp)
    sd	$a4,168($sp)
    nop
.L0d9b2000:
    # Line 398
    ld	$a7,160($sp)
    beqz	$a7,.L0d9b20c0
    ld	$a1,176($sp)
    # Line 399
    ld	$t0,160($sp)
    # Line 402
    ld	$s0,128($sp)
    # Line 400
    ld	$s1,136($sp)
    # Line 399
    addiu	$t0,$t0,-1
    sd	$t0,160($sp)
    # Line 401
    ld	$t1,152($sp)
    sw	$t1,4($sp)
    nop
    # Line 404
    lbu	$ra,0($s1)
.L0d9b2030:
    ld	$t9,168($sp)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lwc1	$f5,0($t9)
    swc1	$f5,12($sp)
    # Line 405
    lbu	$t8,1($s1)
    sll	$t8,$t8,0x2
    addu	$t8,$s5,$t8
    lwc1	$f4,0($t8)
    swc1	$f4,16($sp)
    # Line 406
    lbu	$t3,2($s1)
    sll	$t3,$t3,0x2
    addu	$t3,$s4,$t3
    lwc1	$f3,0($t3)
    swc1	$f3,20($sp)
    # Line 407
    lbu	$t2,3($s1)
    sll	$t2,$t2,0x2
    addu	$t2,$s3,$t2
    lwc1	$f2,0($t2)
    # Line 411
    move	$t9,$s8
    # Line 408
    sw	$s0,0($sp)
    # Line 411
    addiu	$a1,$sp,0
    # Line 407
    swc1	$f2,24($sp)
    addiu	$s1,$s1,4
    # Line 411
    jalr	$t9
    lw	$a0,11760($s7)
    # Line 412
    addu	$s0,$s2,$s0
    bnel	$s6,$s0,.L0d9b2030
    # Line 404
    lbu	$ra,0($s1)
    # Line 397
    ld	$v0,152($sp)
    ld	$v1,120($sp)
    ld	$at,144($sp)
    addu	$v0,$v1,$v0
    bne	$at,$v0,.L0d9b2000
    sd	$v0,152($sp)
    ld	$a1,176($sp)
.L0d9b20c0:
    ld	$ra,184($sp)
    ld	$s0,192($sp)
    ld	$s1,200($sp)
.L0d9b20cc:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    # Line 417
    ld	$gp,112($sp)
    # Line 415
    ld	$a0,160($sp)
    # Line 416
    ld	$a2,144($sp)
    sw	$a2,208($a1)
    # Line 417
    addiu	$sp,$sp,208
    jr	$ra
    # Line 415
    sw	$a0,220($a1)
.end __glSpanRenderRGBAubyte2

# Function: __glSpanRenderDepthUint
# Declared: Line 425 (Source lines: 427-477)
# Address: 0x0d9b2110 - 0x0d9b22c8 (Size: 440 bytes, Frame: 208)
.globl __glSpanRenderDepthUint
.ent __glSpanRenderDepthUint
__glSpanRenderDepthUint:
    # Line 427
    addiu	$sp,$sp,-208
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 442
    lw	$a7,236($a1)
    sd	$a7,160($sp)
    # Line 444
    lw	$at,208($a1)
    # Line 455
    sd	$at,184($sp)
    sd	$gp,136($sp)
    # Line 427
    sd	$s3,120($sp)
    # Line 439
    lw	$a5,31316($a0)
    lw	$a3,31240($a0)
    # Line 427
    sd	$s8,56($sp)
    # Line 446
    lw	$s8,184($a1)
    # Line 427
    sd	$s4,96($sp)
    # Line 443
    lw	$s4,240($a1)
    # Line 448
    lwc1	$f5,384($a0)
    # Line 445
    lwc1	$f2,200($a1)
    lwc1	$f0,164($a1)
    # Line 448
    swc1	$f5,12($sp)
    # Line 449
    lwc1	$f4,388($a0)
    # Line 427
    sd	$s2,128($sp)
    # Line 449
    swc1	$f4,16($sp)
    # Line 450
    lwc1	$f3,392($a0)
    # Line 427
    sd	$a1,168($sp)
    # Line 450
    swc1	$f3,20($sp)
    # Line 451
    lwc1	$f1,396($a0)
    # Line 427
    sd	$a2,144($sp)
    # Line 445
    add.s	$f0,$f0,$f2
    # Line 451
    swc1	$f1,24($sp)
    # Line 454
    lw	$a6,204($a1)
    # Line 445
    trunc.w.s	$f0,$f0
    # Line 439
    li	$a2,32
    addu	$a3,$a3,$a5
    # Line 453
    lw	$a5,220($a1)
    # Line 439
    subu	$a1,$a2,$a3
    sd	$a1,200($sp)
    # Line 445
    mfc1	$v0,$f0
    sd	$v0,176($sp)
    # Line 427
    lui	$a4,0xa
    # Line 452
    lw	$s2,12580($a0)
    # Line 427
    move	$s3,$a0
    addiu	$a4,$a4,-4996
    # Line 454
    sd	$a6,152($sp)
    # Line 427
    addu	$gp,$t9,$a4
    # Line 455
    beq	$at,$v0,.L0d9b2280
    # Line 453
    sd	$a5,192($sp)
    nop
    nop
.L0d9b21e0:
    # Line 456
    ld	$t0,192($sp)
    beqz	$t0,.L0d9b2280
    # Line 460
    ld	$s5,144($sp)
    # Line 458
    ld	$s0,152($sp)
    # Line 461
    ld	$t2,184($sp)
    # Line 459
    ld	$s6,168($sp)
    # Line 461
    ld	$t1,192($sp)
    # Line 459
    lw	$s6,312($s6)
    # Line 461
    sw	$t2,4($sp)
    # Line 457
    addiu	$t1,$t1,-1
    # Line 461
    blez	$s8,.L0d9b2268
    sd	$t1,192($sp)
    move	$s7,$zero
    nop
    nop
    # Line 464
    lh	$s1,0($s6)
.L0d9b2220:
    # Line 465
    ld	$t9,200($sp)
    lw	$t8,0($s5)
    addiu	$s5,$s5,4
    # Line 464
    addiu	$s6,$s6,2
    # Line 465
    srlv	$t8,$t8,$t9
    sw	$t8,8($sp)
    # Line 464
    addu	$s1,$s1,$s0
    # Line 470
    move	$t9,$s2
.L0d9b2240:
    # Line 467
    sw	$s0,0($sp)
    # Line 470
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 471
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b2240
    # Line 470
    move	$t9,$s2
    # Line 463
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b2220
    # Line 464
    lh	$s1,0($s6)
.L0d9b2268:
    # Line 455
    ld	$at,184($sp)
    ld	$v0,160($sp)
    ld	$ra,176($sp)
    addu	$at,$v0,$at
    bne	$ra,$at,.L0d9b21e0
    sd	$at,184($sp)
.L0d9b2280:
    # Line 477
    ld	$gp,136($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 475
    ld	$v1,192($sp)
    # Line 476
    ld	$a0,168($sp)
    # Line 477
    ld	$ra,104($sp)
    # Line 476
    ld	$a1,176($sp)
    sw	$a1,208($a0)
    # Line 477
    addiu	$sp,$sp,208
    jr	$ra
    # Line 475
    sw	$v1,220($a0)
.end __glSpanRenderDepthUint

# Function: __glSpanRenderDepthUint1
# Declared: Line 486 (Source lines: 488-532)
# Address: 0x0d9b22d0 - 0x0d9b2430 (Size: 352 bytes, Frame: 192)
.globl __glSpanRenderDepthUint1
.ent __glSpanRenderDepthUint1
__glSpanRenderDepthUint1:
    # Line 488
    addiu	$sp,$sp,-192
    sd	$a2,128($sp)
    sd	$s3,64($sp)
    sd	$gp,104($sp)
    sd	$s6,72($sp)
    sd	$s5,88($sp)
    # Line 505
    lwc1	$f2,200($a1)
    lwc1	$f0,164($a1)
    # Line 499
    lw	$v0,31316($a0)
    lw	$t8,31240($a0)
    # Line 502
    lw	$at,236($a1)
    sd	$at,120($sp)
    # Line 504
    lw	$at,208($a1)
    # Line 488
    sd	$s2,56($sp)
    # Line 507
    lwc1	$f5,384($a0)
    # Line 503
    lw	$s2,240($a1)
    # Line 507
    swc1	$f5,12($sp)
    # Line 508
    lwc1	$f4,388($a0)
    # Line 488
    sd	$s7,112($sp)
    # Line 508
    swc1	$f4,16($sp)
    # Line 509
    lwc1	$f3,392($a0)
    # Line 488
    sd	$s4,80($sp)
    # Line 509
    swc1	$f3,20($sp)
    # Line 510
    lwc1	$f1,396($a0)
    # Line 488
    sd	$s8,96($sp)
    # Line 505
    add.s	$f0,$f0,$f2
    # Line 510
    swc1	$f1,24($sp)
    # Line 514
    lw	$s7,220($a1)
    # Line 505
    trunc.w.s	$f0,$f0
    # Line 499
    addu	$t8,$t8,$v0
    # Line 512
    lw	$v0,204($a1)
    # Line 488
    move	$s5,$a0
    lui	$s8,0xa
    # Line 512
    sd	$v0,136($sp)
    # Line 505
    mfc1	$v0,$f0
    # Line 499
    li	$s4,32
    # Line 488
    addiu	$s8,$s8,-5444
    # Line 513
    lw	$s6,212($a1)
    # Line 499
    subu	$s4,$s4,$t8
    # Line 488
    addu	$gp,$t9,$s8
    # Line 511
    lw	$s3,12580($a0)
    # Line 515
    move	$s8,$at
    beq	$at,$v0,.L0d9b23fc
    # Line 505
    sd	$v0,144($sp)
    sd	$s1,176($sp)
    sd	$s0,168($sp)
    sd	$ra,160($sp)
    sd	$a1,152($sp)
.L0d9b2390:
    # Line 516
    beqz	$s7,.L0d9b23ec
    # Line 520
    ld	$s0,136($sp)
    # Line 518
    ld	$s1,128($sp)
    # Line 519
    sw	$s8,4($sp)
    # Line 517
    addiu	$s7,$s7,-1
    nop
    nop
    # Line 522
    lw	$v0,0($s1)
.L0d9b23b0:
    # Line 523
    sw	$s0,0($sp)
    # Line 526
    move	$t9,$s3
    addiu	$a1,$sp,0
    # Line 522
    srlv	$v0,$v0,$s4
    sw	$v0,8($sp)
    addiu	$s1,$s1,4
    # Line 526
    jalr	$t9
    lw	$a0,11760($s5)
    # Line 527
    addu	$s0,$s2,$s0
    bnel	$s6,$s0,.L0d9b23b0
    # Line 522
    lw	$v0,0($s1)
    # Line 515
    ld	$a0,120($sp)
    ld	$v1,144($sp)
    addu	$s8,$a0,$s8
    bne	$v1,$s8,.L0d9b2390
.L0d9b23ec:
    ld	$a1,152($sp)
    ld	$ra,160($sp)
    ld	$s0,168($sp)
    ld	$s1,176($sp)
.L0d9b23fc:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s8,96($sp)
    # Line 532
    ld	$gp,104($sp)
    # Line 530
    sw	$s7,220($a1)
    # Line 532
    ld	$s7,112($sp)
    # Line 531
    ld	$a2,144($sp)
    # Line 532
    addiu	$sp,$sp,192
    jr	$ra
    # Line 531
    sw	$a2,208($a1)
.end __glSpanRenderDepthUint1

# Function: __glSpanRenderStencilUshort
# Declared: Line 540 (Source lines: 542-584)
# Address: 0x0d9b2430 - 0x0d9b25b4 (Size: 388 bytes, Frame: 160)
.globl __glSpanRenderStencilUshort
.ent __glSpanRenderStencilUshort
__glSpanRenderStencilUshort:
    # Line 561
    lw	$a3,184($a1)
    # Line 564
    lw	$a4,220($a1)
    # Line 565
    lw	$a5,204($a1)
    # Line 542
    addiu	$sp,$sp,-160
    sd	$s0,32($sp)
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$s8,0($sp)
    sd	$ra,48($sp)
    # Line 565
    sd	$a5,96($sp)
    # Line 564
    sd	$a4,128($sp)
    # Line 542
    sd	$s4,40($sp)
    # Line 563
    lw	$s4,31200($a0)
    # Line 561
    sd	$a3,136($sp)
    # Line 560
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 542
    sd	$a2,88($sp)
    sd	$s3,64($sp)
    sd	$gp,80($sp)
    # Line 560
    add.s	$f0,$f0,$f1
    # Line 542
    sd	$s5,16($sp)
    # Line 558
    lw	$s5,240($a1)
    # Line 560
    trunc.w.s	$f0,$f0
    # Line 542
    sd	$a1,112($sp)
    lui	$v1,0xa
    # Line 559
    lw	$at,208($a1)
    # Line 560
    mfc1	$v0,$f0
    # Line 542
    addiu	$v1,$v1,-5796
    # Line 557
    lw	$a1,236($a1)
    sd	$a1,104($sp)
    # Line 542
    addu	$gp,$t9,$v1
    # Line 566
    move	$s3,$at
    beq	$at,$v0,.L0d9b256c
    # Line 560
    sd	$v0,120($sp)
    # Line 566
    addiu	$s6,$a0,31108
    nop
    nop
    # Line 567
    ld	$a6,128($sp)
.L0d9b24d0:
    beqz	$a6,.L0d9b256c
    # Line 569
    ld	$s0,96($sp)
    # Line 571
    ld	$s8,88($sp)
    # Line 570
    ld	$s7,112($sp)
    # Line 571
    ld	$a7,136($sp)
    # Line 568
    ld	$t0,128($sp)
    # Line 570
    lw	$s7,312($s7)
    # Line 568
    addiu	$t0,$t0,-1
    # Line 571
    blez	$a7,.L0d9b2558
    # Line 568
    sd	$t0,128($sp)
    sd	$zero,144($sp)
    # Line 575
    addiu	$s8,$s8,2
.L0d9b2500:
    # Line 574
    lh	$s2,0($s7)
    # Line 575
    lhu	$s1,-2($s8)
    # Line 574
    addiu	$s7,$s7,2
    addu	$s2,$s2,$s0
    nop
    nop
    nop
    # Line 577
    move	$a0,$s6
.L0d9b2520:
    move	$t9,$s4
    move	$a1,$s0
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s1
    # Line 578
    addu	$s0,$s5,$s0
    bne	$s0,$s2,.L0d9b2520
    # Line 577
    move	$a0,$s6
    # Line 573
    ld	$t9,144($sp)
    ld	$t8,136($sp)
    addiu	$t9,$t9,1
    # Line 575
    addiu	$s8,$s8,2
    # Line 573
    bne	$t8,$t9,.L0d9b2500
    sd	$t9,144($sp)
.L0d9b2558:
    # Line 566
    ld	$at,104($sp)
    ld	$ra,120($sp)
    addu	$s3,$at,$s3
    bne	$ra,$s3,.L0d9b24d0
    # Line 567
    ld	$a6,128($sp)
.L0d9b256c:
    # Line 584
    ld	$gp,80($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$s6,56($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    # Line 582
    ld	$v0,128($sp)
    # Line 583
    ld	$v1,112($sp)
    # Line 584
    ld	$ra,48($sp)
    # Line 583
    ld	$a0,120($sp)
    sw	$a0,208($v1)
    # Line 584
    addiu	$sp,$sp,160
    jr	$ra
    # Line 582
    sw	$v0,220($v1)
.end __glSpanRenderStencilUshort

# Function: __glSpanRenderStencilUshort2
# Declared: Line 592 (Source lines: 594-628)
# Address: 0x0d9b25c0 - 0x0d9b26e0 (Size: 288 bytes, Frame: 128)
.globl __glSpanRenderStencilUshort2
.ent __glSpanRenderStencilUshort2
__glSpanRenderStencilUshort2:
    # Line 594
    addiu	$sp,$sp,-128
    sd	$s7,40($sp)
    # Line 615
    lw	$s7,220($a1)
    # Line 594
    sd	$s3,8($sp)
    # Line 614
    lw	$s3,212($a1)
    # Line 594
    sd	$s5,24($sp)
    # Line 612
    lw	$s5,31200($a0)
    # Line 594
    sd	$a2,64($sp)
    # Line 610
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 594
    sd	$s4,16($sp)
    # Line 608
    lw	$s4,240($a1)
    # Line 594
    sd	$s2,0($sp)
    # Line 610
    add.s	$f0,$f0,$f1
    sd	$gp,48($sp)
    # Line 613
    lw	$v1,204($a1)
    # Line 610
    trunc.w.s	$f0,$f0
    # Line 609
    lw	$at,208($a1)
    # Line 594
    lui	$v0,0xa
    sd	$s8,32($sp)
    # Line 610
    mfc1	$s8,$f0
    # Line 594
    addiu	$v0,$v0,-6196
    # Line 613
    sd	$v1,72($sp)
    # Line 607
    lw	$v1,236($a1)
    # Line 594
    addu	$gp,$t9,$v0
    # Line 607
    sd	$v1,56($sp)
    # Line 616
    beq	$at,$s8,.L0d9b26b4
    move	$s2,$at
    sd	$s1,112($sp)
    sd	$s0,104($sp)
    sd	$ra,96($sp)
    sd	$a1,80($sp)
    sd	$s6,88($sp)
    addiu	$s6,$a0,31108
    nop
    nop
.L0d9b2650:
    # Line 617
    beqz	$s7,.L0d9b26a0
    # Line 620
    ld	$s0,72($sp)
    # Line 619
    ld	$s1,64($sp)
    # Line 618
    addiu	$s7,$s7,-1
    nop
    nop
    nop
    # Line 622
    move	$a2,$s2
.L0d9b2670:
    move	$t9,$s5
    move	$a1,$s0
    move	$a0,$s6
    lhu	$a3,0($s1)
    jalr	$t9
    addiu	$s1,$s1,2
    # Line 623
    addu	$s0,$s4,$s0
    bne	$s3,$s0,.L0d9b2670
    # Line 622
    move	$a2,$s2
    # Line 616
    ld	$a0,56($sp)
    addu	$s2,$a0,$s2
    bne	$s8,$s2,.L0d9b2650
.L0d9b26a0:
    ld	$a1,80($sp)
    ld	$s6,88($sp)
    ld	$ra,96($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
.L0d9b26b4:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,24($sp)
    # Line 628
    ld	$gp,48($sp)
    # Line 626
    sw	$s7,220($a1)
    # Line 628
    ld	$s7,40($sp)
    # Line 627
    sw	$s8,208($a1)
    # Line 628
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanRenderStencilUshort2

# Function: __glSpanRenderStencilUbyte
# Declared: Line 635 (Source lines: 637-679)
# Address: 0x0d9b26e0 - 0x0d9b2854 (Size: 372 bytes, Frame: 160)
.globl __glSpanRenderStencilUbyte
.ent __glSpanRenderStencilUbyte
__glSpanRenderStencilUbyte:
    # Line 656
    lw	$a3,184($a1)
    # Line 659
    lw	$a4,220($a1)
    # Line 660
    lw	$a5,204($a1)
    # Line 637
    addiu	$sp,$sp,-160
    sd	$s0,32($sp)
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$s8,0($sp)
    sd	$ra,48($sp)
    # Line 660
    sd	$a5,96($sp)
    # Line 659
    sd	$a4,128($sp)
    # Line 637
    sd	$s4,40($sp)
    # Line 658
    lw	$s4,31200($a0)
    # Line 656
    sd	$a3,136($sp)
    # Line 655
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 637
    sd	$a2,88($sp)
    sd	$s3,64($sp)
    sd	$gp,80($sp)
    # Line 655
    add.s	$f0,$f0,$f1
    # Line 637
    sd	$s5,16($sp)
    # Line 653
    lw	$s5,240($a1)
    # Line 655
    trunc.w.s	$f0,$f0
    # Line 637
    sd	$a1,112($sp)
    lui	$v1,0xa
    # Line 654
    lw	$at,208($a1)
    # Line 655
    mfc1	$v0,$f0
    # Line 637
    addiu	$v1,$v1,-6484
    # Line 652
    lw	$a1,236($a1)
    sd	$a1,104($sp)
    # Line 637
    addu	$gp,$t9,$v1
    # Line 661
    move	$s3,$at
    beq	$at,$v0,.L0d9b280c
    # Line 655
    sd	$v0,120($sp)
    # Line 661
    addiu	$s6,$a0,31108
    nop
    nop
    # Line 662
    ld	$a6,128($sp)
.L0d9b2780:
    beqz	$a6,.L0d9b280c
    # Line 664
    ld	$s0,96($sp)
    # Line 666
    ld	$s8,88($sp)
    # Line 665
    ld	$s7,112($sp)
    # Line 666
    ld	$a7,136($sp)
    # Line 663
    ld	$t0,128($sp)
    # Line 665
    lw	$s7,312($s7)
    # Line 663
    addiu	$t0,$t0,-1
    # Line 666
    blez	$a7,.L0d9b27f8
    # Line 663
    sd	$t0,128($sp)
    sd	$zero,144($sp)
    # Line 670
    addiu	$s8,$s8,1
.L0d9b27b0:
    # Line 669
    lh	$s2,0($s7)
    # Line 670
    lbu	$s1,-1($s8)
    # Line 669
    addiu	$s7,$s7,2
    addu	$s2,$s2,$s0
.L0d9b27c0:
    # Line 672
    move	$a0,$s6
    move	$t9,$s4
    move	$a1,$s0
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s1
    # Line 673
    addu	$s0,$s5,$s0
    bne	$s0,$s2,.L0d9b27c0
    # Line 668
    ld	$t9,144($sp)
    ld	$t8,136($sp)
    addiu	$t9,$t9,1
    # Line 670
    addiu	$s8,$s8,1
    # Line 668
    bne	$t8,$t9,.L0d9b27b0
    sd	$t9,144($sp)
.L0d9b27f8:
    # Line 661
    ld	$at,104($sp)
    ld	$ra,120($sp)
    addu	$s3,$at,$s3
    bne	$ra,$s3,.L0d9b2780
    # Line 662
    ld	$a6,128($sp)
.L0d9b280c:
    # Line 679
    ld	$gp,80($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$s6,56($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    # Line 677
    ld	$v0,128($sp)
    # Line 678
    ld	$v1,112($sp)
    # Line 679
    ld	$ra,48($sp)
    # Line 678
    ld	$a0,120($sp)
    sw	$a0,208($v1)
    # Line 679
    addiu	$sp,$sp,160
    jr	$ra
    # Line 677
    sw	$v0,220($v1)
.end __glSpanRenderStencilUbyte

# Function: __glSpanRenderStencilUbyte2
# Declared: Line 687 (Source lines: 689-723)
# Address: 0x0d9b2860 - 0x0d9b2970 (Size: 272 bytes, Frame: 128)
.globl __glSpanRenderStencilUbyte2
.ent __glSpanRenderStencilUbyte2
__glSpanRenderStencilUbyte2:
    # Line 689
    addiu	$sp,$sp,-128
    sd	$s7,40($sp)
    # Line 710
    lw	$s7,220($a1)
    # Line 689
    sd	$s3,8($sp)
    # Line 709
    lw	$s3,212($a1)
    # Line 689
    sd	$s5,24($sp)
    # Line 707
    lw	$s5,31200($a0)
    # Line 689
    sd	$a2,64($sp)
    # Line 705
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 689
    sd	$s4,16($sp)
    # Line 703
    lw	$s4,240($a1)
    # Line 689
    sd	$s2,0($sp)
    # Line 705
    add.s	$f0,$f0,$f1
    sd	$gp,48($sp)
    # Line 708
    lw	$v1,204($a1)
    # Line 705
    trunc.w.s	$f0,$f0
    # Line 704
    lw	$at,208($a1)
    # Line 689
    lui	$v0,0xa
    sd	$s8,32($sp)
    # Line 705
    mfc1	$s8,$f0
    # Line 689
    addiu	$v0,$v0,-6868
    # Line 708
    sd	$v1,72($sp)
    # Line 702
    lw	$v1,236($a1)
    # Line 689
    addu	$gp,$t9,$v0
    # Line 702
    sd	$v1,56($sp)
    # Line 711
    beq	$at,$s8,.L0d9b2944
    move	$s2,$at
    sd	$s1,112($sp)
    sd	$s0,104($sp)
    sd	$ra,96($sp)
    sd	$a1,80($sp)
    sd	$s6,88($sp)
    addiu	$s6,$a0,31108
    nop
    nop
.L0d9b28f0:
    # Line 712
    beqz	$s7,.L0d9b2930
    # Line 715
    ld	$s0,72($sp)
    # Line 714
    ld	$s1,64($sp)
    # Line 713
    addiu	$s7,$s7,-1
.L0d9b2900:
    # Line 717
    move	$a2,$s2
    move	$t9,$s5
    move	$a1,$s0
    move	$a0,$s6
    lbu	$a3,0($s1)
    jalr	$t9
    addiu	$s1,$s1,1
    # Line 718
    addu	$s0,$s4,$s0
    bne	$s3,$s0,.L0d9b2900
    # Line 711
    ld	$a0,56($sp)
    addu	$s2,$a0,$s2
    bne	$s8,$s2,.L0d9b28f0
.L0d9b2930:
    ld	$a1,80($sp)
    ld	$s6,88($sp)
    ld	$ra,96($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
.L0d9b2944:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s5,24($sp)
    # Line 723
    ld	$gp,48($sp)
    # Line 721
    sw	$s7,220($a1)
    # Line 723
    ld	$s7,40($sp)
    # Line 722
    sw	$s8,208($a1)
    # Line 723
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glSpanRenderStencilUbyte2

# Function: __glSpanRenderCIushort
# Declared: Line 731 (Source lines: 733-779)
# Address: 0x0d9b2970 - 0x0d9b2b08 (Size: 408 bytes, Frame: 208)
.globl __glSpanRenderCIushort
.ent __glSpanRenderCIushort
__glSpanRenderCIushort:
    # Line 733
    addiu	$sp,$sp,-208
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 748
    lw	$a7,236($a1)
    sd	$a7,160($sp)
    # Line 753
    lw	$a6,30736($a0)
    sd	$a6,200($sp)
    # Line 733
    sd	$a1,168($sp)
    # Line 750
    lw	$at,208($a1)
    # Line 759
    sd	$at,184($sp)
    sd	$gp,136($sp)
    # Line 733
    sd	$s3,120($sp)
    # Line 756
    lw	$a5,248($a1)
    # Line 733
    sd	$a2,144($sp)
    sd	$s2,128($sp)
    # Line 755
    lw	$s2,12580($a0)
    # Line 751
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 733
    sd	$s8,56($sp)
    # Line 752
    lw	$s8,184($a1)
    # Line 733
    sd	$s4,96($sp)
    # Line 751
    add.s	$f0,$f0,$f1
    # Line 749
    lw	$s4,240($a1)
    # Line 756
    sw	$a5,8($sp)
    # Line 751
    trunc.w.s	$f0,$f0
    # Line 758
    lw	$a3,204($a1)
    sd	$a3,152($sp)
    # Line 751
    mfc1	$v0,$f0
    # Line 733
    lui	$a2,0xa
    # Line 757
    lw	$a3,220($a1)
    # Line 733
    move	$s3,$a0
    addiu	$a2,$a2,-7140
    # Line 757
    sd	$a3,192($sp)
    # Line 733
    addu	$gp,$t9,$a2
    # Line 759
    beq	$at,$v0,.L0d9b2ac0
    # Line 751
    sd	$v0,176($sp)
.L0d9b2a10:
    # Line 760
    ld	$t0,192($sp)
    beqz	$t0,.L0d9b2ac0
    # Line 764
    ld	$s5,144($sp)
    # Line 762
    ld	$s0,152($sp)
    # Line 765
    ld	$t2,184($sp)
    # Line 763
    ld	$s6,168($sp)
    # Line 765
    ld	$t1,192($sp)
    # Line 763
    lw	$s6,312($s6)
    # Line 765
    sw	$t2,4($sp)
    # Line 761
    addiu	$t1,$t1,-1
    # Line 765
    blez	$s8,.L0d9b2aa8
    sd	$t1,192($sp)
    move	$s7,$zero
    nop
    nop
    # Line 769
    lhu	$t9,0($s5)
.L0d9b2a50:
    ld	$t8,200($sp)
    and	$t8,$t8,$t9
    mtc1	$t8,$f2
    cvt.s.w	$f2,$f2
    # Line 768
    lh	$s1,0($s6)
    # Line 769
    addiu	$s5,$s5,2
    # Line 768
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 769
    swc1	$f2,12($sp)
    nop
    nop
    # Line 772
    move	$t9,$s2
.L0d9b2a80:
    # Line 771
    sw	$s0,0($sp)
    # Line 772
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 773
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b2a80
    # Line 772
    move	$t9,$s2
    # Line 767
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b2a50
    # Line 769
    lhu	$t9,0($s5)
.L0d9b2aa8:
    # Line 759
    ld	$at,184($sp)
    ld	$v0,160($sp)
    ld	$ra,176($sp)
    addu	$at,$v0,$at
    bne	$ra,$at,.L0d9b2a10
    sd	$at,184($sp)
.L0d9b2ac0:
    # Line 779
    ld	$gp,136($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 777
    ld	$v1,192($sp)
    # Line 778
    ld	$a0,168($sp)
    # Line 779
    ld	$ra,104($sp)
    # Line 778
    ld	$a1,176($sp)
    sw	$a1,208($a0)
    # Line 779
    addiu	$sp,$sp,208
    jr	$ra
    # Line 777
    sw	$v1,220($a0)
.end __glSpanRenderCIushort

# Function: __glSpanRenderCIushort2
# Declared: Line 788 (Source lines: 790-830)
# Address: 0x0d9b2b10 - 0x0d9b2c58 (Size: 328 bytes, Frame: 192)
.globl __glSpanRenderCIushort2
.ent __glSpanRenderCIushort2
__glSpanRenderCIushort2:
    # Line 804
    lw	$a4,236($a1)
    # Line 790
    addiu	$sp,$sp,-192
    # Line 804
    sd	$a4,120($sp)
    # Line 790
    sd	$a2,128($sp)
    sd	$s7,112($sp)
    # Line 811
    lw	$a3,248($a1)
    # Line 790
    sd	$s3,64($sp)
    # Line 810
    lw	$s3,12580($a0)
    # Line 790
    sd	$s4,80($sp)
    # Line 808
    lw	$s4,30736($a0)
    # Line 790
    sd	$s2,56($sp)
    # Line 805
    lw	$s2,240($a1)
    # Line 806
    lw	$at,208($a1)
    # Line 807
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 811
    sw	$a3,8($sp)
    # Line 814
    lw	$s7,220($a1)
    # Line 790
    sd	$s6,72($sp)
    # Line 807
    add.s	$f0,$f0,$f1
    # Line 813
    lw	$s6,212($a1)
    # Line 790
    sd	$s8,96($sp)
    # Line 807
    trunc.w.s	$f0,$f0
    sd	$gp,104($sp)
    # Line 790
    lui	$v1,0xa
    sd	$s5,88($sp)
    # Line 807
    mfc1	$v0,$f0
    # Line 790
    addiu	$v1,$v1,-7556
    move	$s5,$a0
    # Line 812
    lw	$a0,204($a1)
    sd	$a0,136($sp)
    # Line 790
    addu	$gp,$t9,$v1
    # Line 815
    move	$s8,$at
    beq	$at,$v0,.L0d9b2c24
    # Line 807
    sd	$v0,144($sp)
    sd	$s1,176($sp)
    sd	$s0,168($sp)
    sd	$ra,160($sp)
    sd	$a1,152($sp)
    nop
    nop
.L0d9b2bb0:
    # Line 816
    beqz	$s7,.L0d9b2c14
    # Line 820
    ld	$s0,136($sp)
    # Line 818
    ld	$s1,128($sp)
    # Line 819
    sw	$s8,4($sp)
    # Line 817
    addiu	$s7,$s7,-1
    nop
    nop
    # Line 822
    sw	$s0,0($sp)
.L0d9b2bd0:
    # Line 823
    lhu	$a5,0($s1)
    and	$a5,$s4,$a5
    mtc1	$a5,$f2
    cvt.s.w	$f2,$f2
    # Line 824
    move	$t9,$s3
    addiu	$a1,$sp,0
    # Line 823
    swc1	$f2,12($sp)
    addiu	$s1,$s1,2
    # Line 824
    jalr	$t9
    lw	$a0,11760($s5)
    # Line 825
    addu	$s0,$s2,$s0
    bnel	$s6,$s0,.L0d9b2bd0
    # Line 822
    sw	$s0,0($sp)
    # Line 815
    ld	$a7,120($sp)
    ld	$a6,144($sp)
    addu	$s8,$a7,$s8
    bne	$a6,$s8,.L0d9b2bb0
.L0d9b2c14:
    ld	$a1,152($sp)
    ld	$ra,160($sp)
    ld	$s0,168($sp)
    ld	$s1,176($sp)
.L0d9b2c24:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s8,96($sp)
    # Line 830
    ld	$gp,104($sp)
    # Line 828
    sw	$s7,220($a1)
    # Line 830
    ld	$s7,112($sp)
    # Line 829
    ld	$t0,144($sp)
    # Line 830
    addiu	$sp,$sp,192
    jr	$ra
    # Line 829
    sw	$t0,208($a1)
.end __glSpanRenderCIushort2

# Function: __glSpanRenderCIubyte
# Declared: Line 838 (Source lines: 840-886)
# Address: 0x0d9b2c60 - 0x0d9b2df8 (Size: 408 bytes, Frame: 208)
.globl __glSpanRenderCIubyte
.ent __glSpanRenderCIubyte
__glSpanRenderCIubyte:
    # Line 840
    addiu	$sp,$sp,-208
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 855
    lw	$a7,236($a1)
    sd	$a7,160($sp)
    # Line 861
    lw	$a6,30568($a0)
    sd	$a6,200($sp)
    # Line 840
    sd	$a1,168($sp)
    # Line 857
    lw	$at,208($a1)
    # Line 866
    sd	$at,184($sp)
    sd	$gp,136($sp)
    # Line 840
    sd	$s3,120($sp)
    # Line 863
    lw	$a5,248($a1)
    # Line 840
    sd	$a2,144($sp)
    sd	$s2,128($sp)
    # Line 862
    lw	$s2,12580($a0)
    # Line 858
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 840
    sd	$s8,56($sp)
    # Line 859
    lw	$s8,184($a1)
    # Line 840
    sd	$s4,96($sp)
    # Line 858
    add.s	$f0,$f0,$f1
    # Line 856
    lw	$s4,240($a1)
    # Line 863
    sw	$a5,8($sp)
    # Line 858
    trunc.w.s	$f0,$f0
    # Line 865
    lw	$a3,204($a1)
    sd	$a3,152($sp)
    # Line 858
    mfc1	$v0,$f0
    # Line 840
    lui	$a2,0xa
    # Line 864
    lw	$a3,220($a1)
    # Line 840
    move	$s3,$a0
    addiu	$a2,$a2,-7892
    # Line 864
    sd	$a3,192($sp)
    # Line 840
    addu	$gp,$t9,$a2
    # Line 866
    beq	$at,$v0,.L0d9b2db0
    # Line 858
    sd	$v0,176($sp)
.L0d9b2d00:
    # Line 867
    ld	$t0,192($sp)
    beqz	$t0,.L0d9b2db0
    # Line 871
    ld	$s5,144($sp)
    # Line 869
    ld	$s0,152($sp)
    # Line 872
    ld	$t2,184($sp)
    # Line 870
    ld	$s6,168($sp)
    # Line 872
    ld	$t1,192($sp)
    # Line 870
    lw	$s6,312($s6)
    # Line 872
    sw	$t2,4($sp)
    # Line 868
    addiu	$t1,$t1,-1
    # Line 872
    blez	$s8,.L0d9b2d98
    sd	$t1,192($sp)
    move	$s7,$zero
    nop
    nop
    # Line 876
    lbu	$t9,0($s5)
.L0d9b2d40:
    ld	$t8,200($sp)
    sll	$t9,$t9,0x2
    # Line 875
    lh	$s1,0($s6)
    # Line 876
    addu	$t8,$t8,$t9
    lwc1	$f2,0($t8)
    addiu	$s5,$s5,1
    # Line 875
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 876
    swc1	$f2,12($sp)
    nop
    nop
    # Line 879
    move	$t9,$s2
.L0d9b2d70:
    # Line 878
    sw	$s0,0($sp)
    # Line 879
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 880
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b2d70
    # Line 879
    move	$t9,$s2
    # Line 874
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b2d40
    # Line 876
    lbu	$t9,0($s5)
.L0d9b2d98:
    # Line 866
    ld	$at,184($sp)
    ld	$v0,160($sp)
    ld	$ra,176($sp)
    addu	$at,$v0,$at
    bne	$ra,$at,.L0d9b2d00
    sd	$at,184($sp)
.L0d9b2db0:
    # Line 886
    ld	$gp,136($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 884
    ld	$v1,192($sp)
    # Line 885
    ld	$a0,168($sp)
    # Line 886
    ld	$ra,104($sp)
    # Line 885
    ld	$a1,176($sp)
    sw	$a1,208($a0)
    # Line 886
    addiu	$sp,$sp,208
    jr	$ra
    # Line 884
    sw	$v1,220($a0)
.end __glSpanRenderCIubyte

# Function: __glSpanRenderCIubyte2
# Declared: Line 895 (Source lines: 897-937)
# Address: 0x0d9b2e00 - 0x0d9b2f48 (Size: 328 bytes, Frame: 192)
.globl __glSpanRenderCIubyte2
.ent __glSpanRenderCIubyte2
__glSpanRenderCIubyte2:
    # Line 911
    lw	$a4,236($a1)
    # Line 897
    addiu	$sp,$sp,-192
    # Line 911
    sd	$a4,120($sp)
    # Line 897
    sd	$a2,128($sp)
    sd	$s7,112($sp)
    # Line 918
    lw	$a3,248($a1)
    # Line 897
    sd	$s3,64($sp)
    # Line 917
    lw	$s3,12580($a0)
    # Line 897
    sd	$s4,80($sp)
    # Line 916
    lw	$s4,30568($a0)
    # Line 897
    sd	$s2,56($sp)
    # Line 912
    lw	$s2,240($a1)
    # Line 913
    lw	$at,208($a1)
    # Line 914
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 918
    sw	$a3,8($sp)
    # Line 921
    lw	$s7,220($a1)
    # Line 897
    sd	$s6,72($sp)
    # Line 914
    add.s	$f0,$f0,$f1
    # Line 920
    lw	$s6,212($a1)
    # Line 897
    sd	$s8,96($sp)
    # Line 914
    trunc.w.s	$f0,$f0
    sd	$gp,104($sp)
    # Line 897
    lui	$v1,0xa
    sd	$s5,88($sp)
    # Line 914
    mfc1	$v0,$f0
    # Line 897
    addiu	$v1,$v1,-8308
    move	$s5,$a0
    # Line 919
    lw	$a0,204($a1)
    sd	$a0,136($sp)
    # Line 897
    addu	$gp,$t9,$v1
    # Line 922
    move	$s8,$at
    beq	$at,$v0,.L0d9b2f14
    # Line 914
    sd	$v0,144($sp)
    sd	$s1,176($sp)
    sd	$s0,168($sp)
    sd	$ra,160($sp)
    sd	$a1,152($sp)
    nop
    nop
.L0d9b2ea0:
    # Line 923
    beqz	$s7,.L0d9b2f08
    ld	$a1,152($sp)
    # Line 927
    ld	$s0,136($sp)
    # Line 925
    ld	$s1,128($sp)
    # Line 926
    sw	$s8,4($sp)
    # Line 924
    addiu	$s7,$s7,-1
    nop
    nop
.L0d9b2ec0:
    # Line 929
    sw	$s0,0($sp)
    # Line 930
    lbu	$a5,0($s1)
    sll	$a5,$a5,0x2
    addu	$a5,$s4,$a5
    lwc1	$f2,0($a5)
    # Line 931
    move	$t9,$s3
    addiu	$a1,$sp,0
    # Line 930
    swc1	$f2,12($sp)
    addiu	$s1,$s1,1
    # Line 931
    jalr	$t9
    lw	$a0,11760($s5)
    # Line 932
    addu	$s0,$s2,$s0
    bne	$s6,$s0,.L0d9b2ec0
    # Line 922
    ld	$a7,120($sp)
    ld	$a6,144($sp)
    addu	$s8,$a7,$s8
    bne	$a6,$s8,.L0d9b2ea0
    ld	$a1,152($sp)
.L0d9b2f08:
    ld	$ra,160($sp)
    ld	$s0,168($sp)
    ld	$s1,176($sp)
.L0d9b2f14:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s8,96($sp)
    # Line 937
    ld	$gp,104($sp)
    # Line 935
    sw	$s7,220($a1)
    # Line 937
    ld	$s7,112($sp)
    # Line 936
    ld	$t0,144($sp)
    # Line 937
    addiu	$sp,$sp,192
    jr	$ra
    # Line 936
    sw	$t0,208($a1)
.end __glSpanRenderCIubyte2

# Function: __glSpanRenderCIubyte3
# Declared: Line 945 (Source lines: 947-1001)
# Address: 0x0d9b2f50 - 0x0d9b3138 (Size: 488 bytes, Frame: 240)
.globl __glSpanRenderCIubyte3
.ent __glSpanRenderCIubyte3
__glSpanRenderCIubyte3:
    # Line 947
    addiu	$sp,$sp,-240
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 963
    lw	$t2,236($a1)
    sd	$t2,160($sp)
    # Line 969
    lw	$t1,30572($a0)
    sd	$t1,200($sp)
    # Line 970
    lw	$t0,30576($a0)
    sd	$t0,208($sp)
    # Line 971
    lw	$a7,30580($a0)
    sd	$a7,224($sp)
    # Line 972
    lw	$a6,30584($a0)
    sd	$a6,216($sp)
    # Line 947
    sd	$a1,168($sp)
    # Line 965
    lw	$at,208($a1)
    # Line 977
    sd	$at,184($sp)
    sd	$gp,136($sp)
    # Line 947
    sd	$s3,120($sp)
    # Line 974
    lw	$a5,248($a1)
    # Line 947
    sd	$a2,152($sp)
    sd	$s2,128($sp)
    # Line 973
    lw	$s2,12580($a0)
    # Line 966
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 947
    sd	$s8,56($sp)
    # Line 967
    lw	$s8,184($a1)
    # Line 947
    sd	$s4,96($sp)
    # Line 966
    add.s	$f0,$f0,$f1
    # Line 964
    lw	$s4,240($a1)
    # Line 974
    sw	$a5,8($sp)
    # Line 966
    trunc.w.s	$f0,$f0
    # Line 976
    lw	$a3,204($a1)
    sd	$a3,144($sp)
    # Line 966
    mfc1	$v0,$f0
    # Line 947
    lui	$a2,0xa
    # Line 975
    lw	$a3,220($a1)
    # Line 947
    move	$s3,$a0
    addiu	$a2,$a2,-8644
    # Line 975
    sd	$a3,192($sp)
    # Line 947
    addu	$gp,$t9,$a2
    # Line 977
    beq	$at,$v0,.L0d9b30f0
    # Line 966
    sd	$v0,176($sp)
    nop
    nop
.L0d9b3010:
    # Line 978
    ld	$t3,192($sp)
    beqz	$t3,.L0d9b30f0
    # Line 982
    ld	$s5,152($sp)
    # Line 980
    ld	$s0,144($sp)
    # Line 983
    ld	$t9,184($sp)
    # Line 981
    ld	$s6,168($sp)
    # Line 983
    ld	$t8,192($sp)
    # Line 981
    lw	$s6,312($s6)
    # Line 983
    sw	$t9,4($sp)
    # Line 979
    addiu	$t8,$t8,-1
    # Line 983
    blez	$s8,.L0d9b30d8
    sd	$t8,192($sp)
    move	$s7,$zero
    nop
    nop
    # Line 987
    lbu	$t8,0($s5)
.L0d9b3050:
    # Line 988
    ld	$v0,200($sp)
    # Line 986
    lh	$s1,0($s6)
    # Line 988
    sll	$t8,$t8,0x2
    # Line 989
    ld	$at,208($sp)
    # Line 988
    addu	$v0,$t8,$v0
    lwc1	$f5,0($v0)
    # Line 990
    ld	$ra,224($sp)
    # Line 989
    addu	$at,$t8,$at
    # Line 988
    swc1	$f5,12($sp)
    # Line 989
    lwc1	$f4,0($at)
    # Line 991
    ld	$t9,216($sp)
    # Line 990
    addu	$ra,$t8,$ra
    # Line 989
    swc1	$f4,16($sp)
    # Line 990
    lwc1	$f3,0($ra)
    # Line 991
    addu	$t8,$t8,$t9
    # Line 990
    swc1	$f3,20($sp)
    # Line 991
    lwc1	$f2,0($t8)
    # Line 987
    addiu	$s5,$s5,1
    # Line 986
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 991
    swc1	$f2,24($sp)
    nop
    nop
    # Line 994
    move	$t9,$s2
.L0d9b30b0:
    # Line 993
    sw	$s0,0($sp)
    # Line 994
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 995
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b30b0
    # Line 994
    move	$t9,$s2
    # Line 985
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b3050
    # Line 987
    lbu	$t8,0($s5)
.L0d9b30d8:
    # Line 977
    ld	$ra,184($sp)
    ld	$at,160($sp)
    ld	$t9,176($sp)
    addu	$ra,$at,$ra
    bne	$t9,$ra,.L0d9b3010
    sd	$ra,184($sp)
.L0d9b30f0:
    # Line 1001
    ld	$gp,136($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 999
    ld	$v0,192($sp)
    # Line 1000
    ld	$v1,168($sp)
    # Line 1001
    ld	$ra,104($sp)
    # Line 1000
    ld	$a0,176($sp)
    sw	$a0,208($v1)
    # Line 1001
    addiu	$sp,$sp,240
    jr	$ra
    # Line 999
    sw	$v0,220($v1)
.end __glSpanRenderCIubyte3

# Function: __glSpanRenderCIubyte4
# Declared: Line 1010 (Source lines: 1012-1060)
# Address: 0x0d9b3140 - 0x0d9b32dc (Size: 412 bytes, Frame: 208)
.globl __glSpanRenderCIubyte4
.ent __glSpanRenderCIubyte4
__glSpanRenderCIubyte4:
    # Line 1027
    lw	$a6,236($a1)
    # Line 1012
    addiu	$sp,$sp,-208
    # Line 1027
    sd	$a6,120($sp)
    # Line 1012
    sd	$s6,72($sp)
    # Line 1032
    lw	$a4,30572($a0)
    # Line 1029
    lw	$at,208($a1)
    # Line 1037
    lw	$a5,248($a1)
    # Line 1012
    sd	$s8,104($sp)
    # Line 1036
    lw	$s8,12580($a0)
    # Line 1012
    sd	$s3,64($sp)
    # Line 1035
    lw	$s3,30584($a0)
    # Line 1012
    sd	$s4,80($sp)
    # Line 1034
    lw	$s4,30580($a0)
    # Line 1012
    sd	$s5,88($sp)
    # Line 1033
    lw	$s5,30576($a0)
    # Line 1012
    sd	$s2,56($sp)
    # Line 1028
    lw	$s2,240($a1)
    # Line 1030
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1037
    sw	$a5,8($sp)
    # Line 1039
    lw	$s6,212($a1)
    # Line 1041
    sd	$at,152($sp)
    sd	$gp,112($sp)
    # Line 1030
    add.s	$f0,$f0,$f1
    # Line 1012
    sd	$s7,96($sp)
    sd	$a2,136($sp)
    # Line 1030
    trunc.w.s	$f0,$f0
    # Line 1040
    lw	$a3,220($a1)
    sd	$a3,160($sp)
    # Line 1030
    mfc1	$v0,$f0
    # Line 1012
    lui	$a2,0xa
    # Line 1038
    lw	$a3,204($a1)
    # Line 1012
    move	$s7,$a0
    addiu	$a2,$a2,-9140
    # Line 1038
    sd	$a3,128($sp)
    # Line 1012
    addu	$gp,$t9,$a2
    # Line 1041
    beq	$at,$v0,.L0d9b32a4
    # Line 1030
    sd	$v0,144($sp)
    sd	$s1,200($sp)
    sd	$s0,192($sp)
    sd	$ra,184($sp)
    sd	$a1,176($sp)
    sd	$a4,168($sp)
    nop
.L0d9b31f0:
    # Line 1042
    ld	$a7,160($sp)
    beqz	$a7,.L0d9b3298
    ld	$a1,176($sp)
    # Line 1043
    ld	$t0,160($sp)
    # Line 1046
    ld	$s0,128($sp)
    # Line 1044
    ld	$s1,136($sp)
    # Line 1043
    addiu	$t0,$t0,-1
    sd	$t0,160($sp)
    # Line 1045
    ld	$t1,152($sp)
    sw	$t1,4($sp)
    nop
    nop
.L0d9b3220:
    # Line 1048
    sw	$s0,0($sp)
    # Line 1049
    lbu	$t2,0($s1)
    # Line 1050
    ld	$t9,168($sp)
    sll	$t2,$t2,0x2
    addu	$t9,$t2,$t9
    lwc1	$f5,0($t9)
    # Line 1051
    addu	$t8,$t2,$s5
    # Line 1050
    swc1	$f5,12($sp)
    # Line 1051
    lwc1	$f4,0($t8)
    # Line 1052
    addu	$t3,$t2,$s4
    # Line 1051
    swc1	$f4,16($sp)
    # Line 1052
    lwc1	$f3,0($t3)
    # Line 1053
    addu	$t2,$t2,$s3
    # Line 1052
    swc1	$f3,20($sp)
    # Line 1053
    lwc1	$f2,0($t2)
    # Line 1054
    move	$t9,$s8
    addiu	$a1,$sp,0
    # Line 1053
    swc1	$f2,24($sp)
    # Line 1049
    addiu	$s1,$s1,1
    # Line 1054
    jalr	$t9
    lw	$a0,11760($s7)
    # Line 1055
    addu	$s0,$s2,$s0
    bne	$s6,$s0,.L0d9b3220
    # Line 1041
    ld	$t8,152($sp)
    ld	$t9,120($sp)
    ld	$t3,144($sp)
    addu	$t8,$t9,$t8
    bne	$t3,$t8,.L0d9b31f0
    sd	$t8,152($sp)
    ld	$a1,176($sp)
.L0d9b3298:
    ld	$ra,184($sp)
    ld	$s0,192($sp)
    ld	$s1,200($sp)
.L0d9b32a4:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,80($sp)
    ld	$s5,88($sp)
    ld	$s7,96($sp)
    ld	$s8,104($sp)
    # Line 1060
    ld	$gp,112($sp)
    # Line 1058
    ld	$at,160($sp)
    # Line 1059
    ld	$v0,144($sp)
    sw	$v0,208($a1)
    # Line 1060
    addiu	$sp,$sp,208
    jr	$ra
    # Line 1058
    sw	$at,220($a1)
.end __glSpanRenderCIubyte4

# Function: __glSpanRenderRGBA
# Declared: Line 1067 (Source lines: 1069-1116)
# Address: 0x0d9b32e0 - 0x0d9b3468 (Size: 392 bytes, Frame: 192)
.globl __glSpanRenderRGBA
.ent __glSpanRenderRGBA
__glSpanRenderRGBA:
    # Line 1090
    lw	$a5,220($a1)
    # Line 1082
    lw	$a6,236($a1)
    # Line 1069
    addiu	$sp,$sp,-192
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 1082
    sd	$a6,152($sp)
    # Line 1090
    sd	$a5,184($sp)
    # Line 1084
    lw	$at,208($a1)
    # Line 1092
    sd	$at,176($sp)
    sd	$gp,128($sp)
    # Line 1069
    sd	$s2,136($sp)
    # Line 1088
    lw	$s2,12580($a0)
    # Line 1085
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1069
    sd	$s3,120($sp)
    sd	$s4,96($sp)
    # Line 1083
    lw	$s4,240($a1)
    # Line 1085
    add.s	$f0,$f0,$f1
    # Line 1069
    sd	$s8,56($sp)
    # Line 1086
    lw	$s8,184($a1)
    # Line 1085
    trunc.w.s	$f0,$f0
    # Line 1069
    sd	$a1,160($sp)
    sd	$a2,144($sp)
    # Line 1085
    mfc1	$v0,$f0
    # Line 1069
    lui	$a3,0xa
    # Line 1091
    lw	$a2,248($a1)
    # Line 1069
    move	$s3,$a0
    addiu	$a1,$a3,-9556
    # Line 1091
    sw	$a2,8($sp)
    # Line 1069
    addu	$gp,$t9,$a1
    # Line 1092
    beq	$at,$v0,.L0d9b3420
    # Line 1085
    sd	$v0,168($sp)
.L0d9b3370:
    # Line 1093
    ld	$a7,184($sp)
    beqz	$a7,.L0d9b3420
    # Line 1097
    ld	$s5,144($sp)
    # Line 1098
    ld	$t1,176($sp)
    # Line 1095
    ld	$s6,160($sp)
    # Line 1098
    ld	$t0,184($sp)
    # Line 1095
    lw	$s0,204($s6)
    # Line 1096
    lw	$s6,312($s6)
    # Line 1098
    sw	$t1,4($sp)
    # Line 1094
    addiu	$t0,$t0,-1
    # Line 1098
    blez	$s8,.L0d9b3408
    sd	$t0,184($sp)
    move	$s7,$zero
    nop
    nop
    # Line 1101
    lwc1	$f5,0($s5)
.L0d9b33b0:
    # Line 1100
    lh	$s1,0($s6)
    # Line 1101
    swc1	$f5,12($sp)
    # Line 1102
    lwc1	$f4,4($s5)
    swc1	$f4,16($sp)
    # Line 1103
    lwc1	$f3,8($s5)
    swc1	$f3,20($sp)
    # Line 1104
    lwc1	$f2,12($s5)
    addiu	$s5,$s5,16
    # Line 1100
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 1104
    swc1	$f2,24($sp)
    # Line 1109
    move	$t9,$s2
.L0d9b33e0:
    # Line 1106
    sw	$s0,0($sp)
    # Line 1109
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 1110
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b33e0
    # Line 1109
    move	$t9,$s2
    # Line 1099
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b33b0
    # Line 1101
    lwc1	$f5,0($s5)
.L0d9b3408:
    # Line 1092
    ld	$t9,176($sp)
    ld	$ra,152($sp)
    ld	$t8,168($sp)
    addu	$t9,$ra,$t9
    bne	$t8,$t9,.L0d9b3370
    sd	$t9,176($sp)
.L0d9b3420:
    # Line 1116
    ld	$gp,128($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,136($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 1114
    ld	$at,184($sp)
    # Line 1115
    ld	$v0,160($sp)
    # Line 1116
    ld	$ra,104($sp)
    # Line 1115
    ld	$v1,168($sp)
    sw	$v1,208($v0)
    # Line 1116
    addiu	$sp,$sp,192
    jr	$ra
    # Line 1114
    sw	$at,220($v0)
.end __glSpanRenderRGBA

# Function: __glSpanRenderRGBA2
# Declared: Line 1124 (Source lines: 1126-1168)
# Address: 0x0d9b3470 - 0x0d9b35b8 (Size: 328 bytes, Frame: 176)
.globl __glSpanRenderRGBA2
.ent __glSpanRenderRGBA2
__glSpanRenderRGBA2:
    # Line 1138
    lw	$a4,236($a1)
    # Line 1126
    addiu	$sp,$sp,-176
    # Line 1138
    sd	$a4,112($sp)
    # Line 1126
    sd	$a1,128($sp)
    sd	$s8,88($sp)
    sd	$gp,104($sp)
    sd	$s7,96($sp)
    sd	$s4,72($sp)
    sd	$s6,64($sp)
    # Line 1144
    lw	$s6,12580($a0)
    # Line 1141
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1126
    sd	$s3,56($sp)
    # Line 1142
    lw	$s3,184($a1)
    # Line 1126
    sd	$s5,80($sp)
    # Line 1141
    add.s	$f0,$f0,$f1
    # Line 1139
    lw	$s5,240($a1)
    # Line 1126
    sd	$a2,120($sp)
    # Line 1141
    trunc.w.s	$f0,$f0
    # Line 1146
    lw	$a2,248($a1)
    # Line 1126
    lui	$v1,0xa
    # Line 1140
    lw	$at,208($a1)
    # Line 1141
    mfc1	$v0,$f0
    # Line 1126
    addiu	$v1,$v1,-9956
    # Line 1146
    sw	$a2,8($sp)
    # Line 1126
    move	$s4,$a0
    # Line 1147
    lw	$s7,220($a1)
    # Line 1126
    addu	$gp,$t9,$v1
    # Line 1148
    move	$s8,$at
    beq	$at,$v0,.L0d9b3584
    # Line 1141
    sd	$v0,136($sp)
    sd	$s1,168($sp)
    sd	$s0,160($sp)
    sd	$ra,152($sp)
    sd	$s2,144($sp)
    nop
.L0d9b3500:
    # Line 1149
    beqz	$s7,.L0d9b3574
    # Line 1151
    ld	$s0,128($sp)
    # Line 1152
    ld	$s1,120($sp)
    # Line 1151
    lw	$s0,204($s0)
    # Line 1150
    addiu	$s7,$s7,-1
    # Line 1153
    blez	$s3,.L0d9b3564
    sw	$s8,4($sp)
    move	$s2,$zero
.L0d9b3520:
    # Line 1155
    lwc1	$f5,0($s1)
    swc1	$f5,12($sp)
    # Line 1156
    lwc1	$f4,4($s1)
    swc1	$f4,16($sp)
    # Line 1157
    lwc1	$f3,8($s1)
    swc1	$f3,20($sp)
    # Line 1158
    lwc1	$f2,12($s1)
    # Line 1162
    move	$t9,$s6
    # Line 1159
    sw	$s0,0($sp)
    # Line 1162
    addiu	$a1,$sp,0
    # Line 1158
    swc1	$f2,24($sp)
    addiu	$s1,$s1,16
    # Line 1162
    jalr	$t9
    lw	$a0,11760($s4)
    # Line 1154
    addiu	$s2,$s2,1
    bne	$s3,$s2,.L0d9b3520
    # Line 1163
    addu	$s0,$s5,$s0
.L0d9b3564:
    # Line 1148
    ld	$t9,112($sp)
    ld	$t8,136($sp)
    addu	$s8,$t9,$s8
    bne	$t8,$s8,.L0d9b3500
.L0d9b3574:
    ld	$s2,144($sp)
    ld	$ra,152($sp)
    ld	$s0,160($sp)
    ld	$s1,168($sp)
.L0d9b3584:
    ld	$s3,56($sp)
    ld	$s6,64($sp)
    ld	$s4,72($sp)
    ld	$s5,80($sp)
    ld	$s8,88($sp)
    # Line 1168
    ld	$gp,104($sp)
    # Line 1167
    ld	$at,128($sp)
    ld	$v0,136($sp)
    sw	$v0,208($at)
    # Line 1166
    sw	$s7,220($at)
    # Line 1168
    ld	$s7,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glSpanRenderRGBA2

# Function: __glSpanRenderDepth
# Declared: Line 1175 (Source lines: 1177-1226)
# Address: 0x0d9b35c0 - 0x0d9b3778 (Size: 440 bytes, Frame: 192)
.globl __glSpanRenderDepth
.ent __glSpanRenderDepth
__glSpanRenderDepth:
    # Line 1177
    addiu	$sp,$sp,-192
    sd	$s0,88($sp)
    sd	$s2,136($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 1190
    lw	$a4,236($a1)
    sd	$a4,152($sp)
    # Line 1177
    sd	$a1,160($sp)
    # Line 1192
    lw	$at,208($a1)
    # Line 1203
    sd	$at,176($sp)
    sd	$gp,128($sp)
    # Line 1177
    sd	$s3,120($sp)
    # Line 1196
    lw	$s3,12580($a0)
    # Line 1177
    sd	$s8,56($sp)
    # Line 1194
    lw	$s8,184($a1)
    # Line 1177
    sd	$s4,96($sp)
    # Line 1191
    lw	$s4,240($a1)
    # Line 1197
    lwc1	$f4,384($a0)
    # Line 1193
    lwc1	$f2,200($a1)
    lwc1	$f0,164($a1)
    # Line 1197
    swc1	$f4,12($sp)
    # Line 1198
    lwc1	$f3,388($a0)
    # Line 1177
    sd	$s1,80($sp)
    # Line 1198
    swc1	$f3,16($sp)
    # Line 1193
    add.s	$f0,$f0,$f2
    # Line 1199
    lwc1	$f1,392($a0)
    # Line 1177
    sd	$a2,144($sp)
    # Line 1193
    trunc.w.s	$f0,$f0
    # Line 1199
    swc1	$f1,20($sp)
    # Line 1200
    lwc1	$f1,396($a0)
    # Line 1193
    mfc1	$v0,$f0
    sd	$v0,168($sp)
    # Line 1177
    lui	$a2,0xa
    # Line 1200
    swc1	$f1,24($sp)
    # Line 1177
    move	$s1,$a0
    addiu	$a2,$a2,-10292
    # Line 1202
    lw	$a0,220($a1)
    # Line 1177
    addu	$gp,$t9,$a2
    # Line 1203
    beq	$at,$v0,.L0d9b3730
    # Line 1202
    sd	$a0,184($sp)
    nop
    nop
.L0d9b3670:
    # Line 1204
    ld	$a5,184($sp)
    beqz	$a5,.L0d9b3730
    # Line 1208
    ld	$s5,144($sp)
    # Line 1209
    ld	$a7,176($sp)
    # Line 1206
    ld	$s6,160($sp)
    # Line 1209
    ld	$a6,184($sp)
    # Line 1206
    lw	$s0,204($s6)
    # Line 1207
    lw	$s6,312($s6)
    # Line 1209
    sw	$a7,4($sp)
    # Line 1205
    addiu	$a6,$a6,-1
    # Line 1209
    blez	$s8,.L0d9b3718
    sd	$a6,184($sp)
    move	$s7,$zero
    nop
    nop
    # Line 1213
    lw	$t8,31304($s1)
.L0d9b36b0:
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f5
    cvt.s.l	$f5,$f5
    lwc1	$f6,0($s5)
    mul.s	$f5,$f5,$f6
    trunc.l.s	$f5,$f5
    # Line 1211
    lh	$s2,0($s6)
    # Line 1213
    addiu	$s5,$s5,4
    dmfc1	$t8,$f5
    # Line 1211
    addiu	$s6,$s6,2
    addu	$s2,$s2,$s0
    # Line 1213
    sw	$t8,8($sp)
    nop
    nop
    # Line 1219
    move	$t9,$s3
.L0d9b36f0:
    # Line 1216
    sw	$s0,0($sp)
    # Line 1219
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s1)
    # Line 1220
    addu	$s0,$s4,$s0
    bne	$s0,$s2,.L0d9b36f0
    # Line 1219
    move	$t9,$s3
    # Line 1210
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b36b0
    # Line 1213
    lw	$t8,31304($s1)
.L0d9b3718:
    # Line 1203
    ld	$ra,176($sp)
    ld	$at,152($sp)
    ld	$t9,168($sp)
    addu	$ra,$at,$ra
    bne	$t9,$ra,.L0d9b3670
    sd	$ra,176($sp)
.L0d9b3730:
    # Line 1226
    ld	$gp,128($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,136($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 1224
    ld	$v0,184($sp)
    # Line 1225
    ld	$v1,160($sp)
    # Line 1226
    ld	$ra,104($sp)
    # Line 1225
    ld	$a0,168($sp)
    sw	$a0,208($v1)
    # Line 1226
    addiu	$sp,$sp,192
    jr	$ra
    # Line 1224
    sw	$v0,220($v1)
.end __glSpanRenderDepth

# Function: __glSpanRenderDepth2
# Declared: Line 1234 (Source lines: 1236-1278)
# Address: 0x0d9b3780 - 0x0d9b3900 (Size: 384 bytes, Frame: 176)
.globl __glSpanRenderDepth2
.ent __glSpanRenderDepth2
__glSpanRenderDepth2:
    # Line 1248
    lw	$a3,236($a1)
    # Line 1236
    addiu	$sp,$sp,-176
    # Line 1248
    sd	$a3,112($sp)
    # Line 1236
    sd	$a2,120($sp)
    sd	$a1,128($sp)
    sd	$s7,96($sp)
    sd	$s8,88($sp)
    # Line 1250
    lw	$at,208($a1)
    # Line 1236
    sd	$s6,64($sp)
    # Line 1254
    lw	$s6,12580($a0)
    # Line 1236
    sd	$s3,56($sp)
    # Line 1252
    lw	$s3,184($a1)
    # Line 1236
    sd	$s5,80($sp)
    # Line 1249
    lw	$s5,240($a1)
    # Line 1255
    lwc1	$f4,384($a0)
    # Line 1251
    lwc1	$f2,200($a1)
    lwc1	$f0,164($a1)
    # Line 1255
    swc1	$f4,12($sp)
    # Line 1256
    lwc1	$f3,388($a0)
    sd	$gp,104($sp)
    swc1	$f3,16($sp)
    # Line 1251
    add.s	$f0,$f0,$f2
    # Line 1257
    lwc1	$f1,392($a0)
    # Line 1236
    sd	$s4,72($sp)
    # Line 1251
    trunc.w.s	$f0,$f0
    # Line 1257
    swc1	$f1,20($sp)
    # Line 1236
    lui	$v1,0xa
    # Line 1258
    lwc1	$f1,396($a0)
    # Line 1251
    mfc1	$v0,$f0
    # Line 1236
    addiu	$v1,$v1,-10740
    # Line 1251
    sd	$v0,136($sp)
    # Line 1236
    move	$s4,$a0
    addu	$gp,$t9,$v1
    # Line 1258
    swc1	$f1,24($sp)
    # Line 1261
    move	$s8,$at
    beq	$at,$v0,.L0d9b38cc
    # Line 1260
    lw	$s7,220($a1)
    sd	$s1,168($sp)
    sd	$s0,160($sp)
    sd	$ra,152($sp)
    sd	$s2,144($sp)
    nop
    nop
    nop
.L0d9b3830:
    # Line 1262
    beqz	$s7,.L0d9b38c0
    ld	$s2,144($sp)
    # Line 1264
    ld	$s0,128($sp)
    # Line 1265
    ld	$s1,120($sp)
    # Line 1264
    lw	$s0,204($s0)
    # Line 1263
    addiu	$s7,$s7,-1
    # Line 1266
    blez	$s3,.L0d9b38ac
    sw	$s8,4($sp)
    move	$s2,$zero
    nop
    nop
    nop
.L0d9b3860:
    # Line 1268
    sw	$s0,0($sp)
    # Line 1269
    lw	$t9,31304($s4)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f5
    cvt.s.l	$f5,$f5
    lwc1	$f6,0($s1)
    mul.s	$f5,$f5,$f6
    trunc.l.s	$f5,$f5
    # Line 1272
    move	$t9,$s6
    # Line 1269
    dmfc1	$t8,$f5
    # Line 1272
    addiu	$a1,$sp,0
    # Line 1269
    sw	$t8,8($sp)
    addiu	$s1,$s1,4
    # Line 1272
    jalr	$t9
    lw	$a0,11760($s4)
    # Line 1267
    addiu	$s2,$s2,1
    bne	$s3,$s2,.L0d9b3860
    # Line 1273
    addu	$s0,$s5,$s0
.L0d9b38ac:
    # Line 1261
    ld	$at,112($sp)
    ld	$ra,136($sp)
    addu	$s8,$at,$s8
    bne	$ra,$s8,.L0d9b3830
    ld	$s2,144($sp)
.L0d9b38c0:
    ld	$ra,152($sp)
    ld	$s0,160($sp)
    ld	$s1,168($sp)
.L0d9b38cc:
    ld	$s3,56($sp)
    ld	$s6,64($sp)
    ld	$s4,72($sp)
    ld	$s5,80($sp)
    ld	$s8,88($sp)
    # Line 1278
    ld	$gp,104($sp)
    # Line 1277
    ld	$v0,128($sp)
    ld	$v1,136($sp)
    sw	$v1,208($v0)
    # Line 1276
    sw	$s7,220($v0)
    # Line 1278
    ld	$s7,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glSpanRenderDepth2

# Function: __glSpanRenderCI
# Declared: Line 1285 (Source lines: 1287-1333)
# Address: 0x0d9b3900 - 0x0d9b3a98 (Size: 408 bytes, Frame: 208)
.globl __glSpanRenderCI
.ent __glSpanRenderCI
__glSpanRenderCI:
    # Line 1306
    lw	$a5,30736($a0)
    # Line 1301
    lw	$a6,236($a1)
    # Line 1287
    addiu	$sp,$sp,-208
    sd	$s0,88($sp)
    sd	$s1,80($sp)
    sd	$s5,72($sp)
    sd	$s6,112($sp)
    sd	$s7,64($sp)
    sd	$ra,104($sp)
    # Line 1301
    sd	$a6,152($sp)
    # Line 1306
    sd	$a5,192($sp)
    # Line 1287
    sd	$a1,160($sp)
    # Line 1303
    lw	$at,208($a1)
    # Line 1312
    sd	$at,176($sp)
    sd	$gp,128($sp)
    # Line 1287
    sd	$s3,120($sp)
    # Line 1309
    lw	$a3,248($a1)
    # Line 1287
    sd	$s2,136($sp)
    # Line 1304
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1308
    lw	$s2,12580($a0)
    # Line 1287
    sd	$s8,56($sp)
    # Line 1305
    lw	$s8,184($a1)
    # Line 1304
    add.s	$f0,$f0,$f1
    # Line 1287
    sd	$s4,96($sp)
    # Line 1302
    lw	$s4,240($a1)
    # Line 1304
    trunc.w.s	$f0,$f0
    # Line 1309
    sw	$a3,8($sp)
    # Line 1311
    lw	$a3,220($a1)
    # Line 1304
    mfc1	$v0,$f0
    # Line 1287
    sd	$a2,144($sp)
    lui	$a2,0xa
    move	$s3,$a0
    # Line 1311
    sd	$a3,184($sp)
    # Line 1287
    addiu	$a2,$a2,-11124
    addu	$gp,$t9,$a2
    # Line 1312
    beq	$at,$v0,.L0d9b3a50
    # Line 1304
    sd	$v0,168($sp)
    nop
    nop
.L0d9b39a0:
    # Line 1313
    ld	$a7,184($sp)
    beqz	$a7,.L0d9b3a50
    # Line 1317
    ld	$s5,144($sp)
    # Line 1318
    ld	$t1,176($sp)
    # Line 1315
    ld	$s6,160($sp)
    # Line 1318
    ld	$t0,184($sp)
    # Line 1315
    lw	$s0,204($s6)
    # Line 1316
    lw	$s6,312($s6)
    # Line 1318
    sw	$t1,4($sp)
    # Line 1314
    addiu	$t0,$t0,-1
    # Line 1318
    blez	$s8,.L0d9b3a38
    sd	$t0,184($sp)
    move	$s7,$zero
    nop
    nop
    # Line 1321
    lwc1	$f3,0($s5)
.L0d9b39e0:
    trunc.w.s	$f3,$f3
    ld	$t8,192($sp)
    mfc1	$t9,$f3
    and	$t8,$t8,$t9
    mtc1	$t8,$f2
    cvt.s.w	$f2,$f2
    # Line 1320
    lh	$s1,0($s6)
    # Line 1321
    addiu	$s5,$s5,4
    # Line 1320
    addiu	$s6,$s6,2
    addu	$s1,$s1,$s0
    # Line 1321
    swc1	$f2,12($sp)
    # Line 1326
    move	$t9,$s2
.L0d9b3a10:
    # Line 1323
    sw	$s0,0($sp)
    # Line 1326
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 1327
    addu	$s0,$s4,$s0
    bne	$s0,$s1,.L0d9b3a10
    # Line 1326
    move	$t9,$s2
    # Line 1319
    addiu	$s7,$s7,1
    bnel	$s8,$s7,.L0d9b39e0
    # Line 1321
    lwc1	$f3,0($s5)
.L0d9b3a38:
    # Line 1312
    ld	$at,176($sp)
    ld	$v0,152($sp)
    ld	$ra,168($sp)
    addu	$at,$v0,$at
    bne	$ra,$at,.L0d9b39a0
    sd	$at,176($sp)
.L0d9b3a50:
    # Line 1333
    ld	$gp,128($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,136($sp)
    ld	$s3,120($sp)
    ld	$s4,96($sp)
    ld	$s5,72($sp)
    ld	$s6,112($sp)
    ld	$s7,64($sp)
    ld	$s8,56($sp)
    # Line 1331
    ld	$v1,184($sp)
    # Line 1332
    ld	$a0,160($sp)
    # Line 1333
    ld	$ra,104($sp)
    # Line 1332
    ld	$a1,168($sp)
    sw	$a1,208($a0)
    # Line 1333
    addiu	$sp,$sp,208
    jr	$ra
    # Line 1331
    sw	$v1,220($a0)
.end __glSpanRenderCI

# Function: __glSpanRenderCI2
# Declared: Line 1341 (Source lines: 1343-1384)
# Address: 0x0d9b3aa0 - 0x0d9b3bfc (Size: 348 bytes, Frame: 192)
.globl __glSpanRenderCI2
.ent __glSpanRenderCI2
__glSpanRenderCI2:
    # Line 1364
    lw	$a3,248($a1)
    # Line 1356
    lw	$a5,236($a1)
    # Line 1343
    addiu	$sp,$sp,-192
    # Line 1356
    sd	$a5,112($sp)
    # Line 1343
    sd	$a1,128($sp)
    sd	$s6,64($sp)
    # Line 1363
    lw	$s6,12580($a0)
    # Line 1343
    sd	$s4,72($sp)
    # Line 1361
    lw	$s4,30736($a0)
    # Line 1343
    sd	$s3,56($sp)
    # Line 1360
    lw	$s3,184($a1)
    # Line 1343
    sd	$s7,88($sp)
    # Line 1359
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1357
    lw	$s7,240($a1)
    # Line 1358
    lw	$at,208($a1)
    # Line 1364
    sw	$a3,8($sp)
    # Line 1359
    add.s	$f0,$f0,$f1
    # Line 1343
    sd	$s8,96($sp)
    # Line 1366
    lw	$s8,220($a1)
    # Line 1359
    trunc.w.s	$f0,$f0
    # Line 1367
    sd	$at,144($sp)
    # Line 1343
    sd	$s5,80($sp)
    # Line 1359
    mfc1	$v0,$f0
    # Line 1343
    sd	$a2,120($sp)
    lui	$a2,0xa
    move	$s5,$a0
    sd	$gp,104($sp)
    addiu	$a2,$a2,-11540
    addu	$gp,$t9,$a2
    # Line 1367
    beq	$at,$v0,.L0d9b3bc8
    # Line 1359
    sd	$v0,136($sp)
    sd	$s1,176($sp)
    sd	$s0,168($sp)
    sd	$ra,160($sp)
    sd	$s2,152($sp)
.L0d9b3b30:
    # Line 1368
    beqz	$s8,.L0d9b3bb8
    # Line 1371
    ld	$s1,120($sp)
    # Line 1370
    ld	$s0,128($sp)
    # Line 1372
    ld	$a6,144($sp)
    # Line 1370
    lw	$s0,204($s0)
    # Line 1369
    addiu	$s8,$s8,-1
    # Line 1372
    blez	$s3,.L0d9b3ba0
    sw	$a6,4($sp)
    move	$s2,$zero
    nop
    nop
    nop
.L0d9b3b60:
    # Line 1374
    lwc1	$f3,0($s1)
    trunc.w.s	$f3,$f3
    mfc1	$t8,$f3
    and	$t8,$s4,$t8
    mtc1	$t8,$f2
    cvt.s.w	$f2,$f2
    # Line 1375
    sw	$s0,0($sp)
    # Line 1378
    move	$t9,$s6
    addiu	$a1,$sp,0
    # Line 1374
    swc1	$f2,12($sp)
    addiu	$s1,$s1,4
    # Line 1378
    jalr	$t9
    lw	$a0,11760($s5)
    # Line 1373
    addiu	$s2,$s2,1
    bne	$s3,$s2,.L0d9b3b60
    # Line 1379
    addu	$s0,$s7,$s0
.L0d9b3ba0:
    # Line 1367
    ld	$ra,144($sp)
    ld	$at,112($sp)
    ld	$t9,136($sp)
    addu	$ra,$at,$ra
    bne	$t9,$ra,.L0d9b3b30
    sd	$ra,144($sp)
.L0d9b3bb8:
    ld	$s2,152($sp)
    ld	$ra,160($sp)
    ld	$s0,168($sp)
    ld	$s1,176($sp)
.L0d9b3bc8:
    ld	$s3,56($sp)
    ld	$s6,64($sp)
    ld	$s4,72($sp)
    ld	$s5,80($sp)
    ld	$s7,88($sp)
    # Line 1384
    ld	$gp,104($sp)
    # Line 1383
    ld	$v0,128($sp)
    ld	$v1,136($sp)
    sw	$v1,208($v0)
    # Line 1382
    sw	$s8,220($v0)
    # Line 1384
    ld	$s8,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glSpanRenderCI2

# Function: __glSpanRenderStencil
# Declared: Line 1391 (Source lines: 1393-1434)
# Address: 0x0d9b3c00 - 0x0d9b3da0 (Size: 416 bytes, Frame: 160)
.globl __glSpanRenderStencil
.ent __glSpanRenderStencil
__glSpanRenderStencil:
    # Line 1411
    lw	$a3,184($a1)
    # Line 1416
    lw	$a4,220($a1)
    # Line 1393
    addiu	$sp,$sp,-160
    sd	$s0,32($sp)
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    sd	$s8,0($sp)
    sd	$ra,48($sp)
    # Line 1416
    sd	$a4,120($sp)
    # Line 1411
    sd	$a3,136($sp)
    sd	$gp,80($sp)
    # Line 1393
    sd	$s3,64($sp)
    sd	$a1,104($sp)
    # Line 1410
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1393
    sd	$s5,16($sp)
    # Line 1408
    lw	$s5,240($a1)
    # Line 1409
    lw	$at,208($a1)
    # Line 1410
    add.s	$f0,$f0,$f1
    # Line 1407
    lw	$a1,236($a1)
    # Line 1393
    sd	$a2,88($sp)
    # Line 1410
    trunc.w.s	$f0,$f0
    # Line 1412
    li	$v1,1
    lw	$a2,3248($a0)
    # Line 1417
    move	$s3,$at
    # Line 1393
    sd	$s4,40($sp)
    move	$s4,$a0
    # Line 1410
    mfc1	$v0,$f0
    # Line 1407
    sd	$a1,96($sp)
    # Line 1393
    lui	$a0,0xa
    # Line 1412
    sllv	$v1,$v1,$a2
    # Line 1393
    addiu	$a0,$a0,-11892
    # Line 1412
    addiu	$v1,$v1,-1
    sd	$v1,128($sp)
    # Line 1393
    addu	$gp,$t9,$a0
    # Line 1417
    beq	$at,$v0,.L0d9b3d58
    # Line 1410
    sd	$v0,112($sp)
    # Line 1417
    addiu	$s6,$s4,31108
    nop
    nop
    nop
    # Line 1418
    ld	$a5,120($sp)
.L0d9b3cb0:
    beqz	$a5,.L0d9b3d58
    # Line 1422
    ld	$s7,88($sp)
    # Line 1419
    ld	$a7,120($sp)
    # Line 1421
    ld	$s0,104($sp)
    # Line 1422
    ld	$a6,136($sp)
    # Line 1421
    lw	$s8,312($s0)
    # Line 1420
    lw	$s0,204($s0)
    # Line 1419
    addiu	$a7,$a7,-1
    # Line 1422
    blez	$a6,.L0d9b3d44
    # Line 1419
    sd	$a7,120($sp)
    sd	$zero,144($sp)
    nop
.L0d9b3ce0:
    # Line 1425
    lwc1	$f2,0($s7)
    trunc.w.s	$f2,$f2
    ld	$s1,128($sp)
    # Line 1424
    lh	$s2,0($s8)
    # Line 1425
    mfc1	$t8,$f2
    addiu	$s7,$s7,4
    # Line 1424
    addiu	$s8,$s8,2
    addu	$s2,$s2,$s0
    # Line 1425
    and	$s1,$s1,$t8
    nop
    nop
    # Line 1427
    lw	$t9,31200($s4)
.L0d9b3d10:
    move	$a0,$s6
    move	$a1,$s0
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s1
    # Line 1428
    addu	$s0,$s5,$s0
    bnel	$s0,$s2,.L0d9b3d10
    # Line 1427
    lw	$t9,31200($s4)
    # Line 1423
    ld	$t9,144($sp)
    ld	$t8,136($sp)
    addiu	$t9,$t9,1
    bne	$t8,$t9,.L0d9b3ce0
    sd	$t9,144($sp)
.L0d9b3d44:
    # Line 1417
    ld	$at,96($sp)
    ld	$ra,112($sp)
    addu	$s3,$at,$s3
    bne	$ra,$s3,.L0d9b3cb0
    # Line 1418
    ld	$a5,120($sp)
.L0d9b3d58:
    # Line 1434
    ld	$gp,80($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$s5,16($sp)
    ld	$s6,56($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    # Line 1432
    ld	$v0,120($sp)
    # Line 1433
    ld	$v1,104($sp)
    # Line 1434
    ld	$ra,48($sp)
    # Line 1433
    ld	$a0,112($sp)
    sw	$a0,208($v1)
    # Line 1434
    addiu	$sp,$sp,160
    jr	$ra
    # Line 1432
    sw	$v0,220($v1)
.end __glSpanRenderStencil

# Function: __glSpanRenderStencil2
# Declared: Line 1442 (Source lines: 1444-1480)
# Address: 0x0d9b3da0 - 0x0d9b3efc (Size: 348 bytes, Frame: 128)
.globl __glSpanRenderStencil2
.ent __glSpanRenderStencil2
__glSpanRenderStencil2:
    # Line 1444
    addiu	$sp,$sp,-128
    sd	$s4,16($sp)
    # Line 1461
    lw	$s4,184($a1)
    # Line 1444
    sd	$a2,56($sp)
    sd	$a1,72($sp)
    sd	$s6,8($sp)
    # Line 1458
    lw	$s6,240($a1)
    # Line 1444
    sd	$s5,24($sp)
    # Line 1460
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    # Line 1459
    lw	$at,208($a1)
    # Line 1466
    lw	$v0,220($a1)
    sd	$v0,80($sp)
    # Line 1460
    add.s	$f0,$f0,$f1
    # Line 1462
    lw	$v0,3248($a0)
    # Line 1444
    sd	$s7,32($sp)
    # Line 1462
    li	$s7,1
    # Line 1460
    trunc.w.s	$f0,$f0
    # Line 1462
    sllv	$s7,$s7,$v0
    # Line 1457
    lw	$v0,236($a1)
    # Line 1444
    lui	$t8,0xa
    # Line 1457
    sd	$v0,48($sp)
    # Line 1460
    mfc1	$v0,$f0
    # Line 1444
    move	$s5,$a0
    sd	$s3,0($sp)
    addiu	$t8,$t8,-12308
    sd	$gp,40($sp)
    addu	$gp,$t9,$t8
    # Line 1467
    move	$s3,$at
    # Line 1462
    addiu	$s7,$s7,-1
    # Line 1467
    beq	$at,$v0,.L0d9b3ec8
    # Line 1460
    sd	$v0,64($sp)
    sd	$s1,112($sp)
    sd	$s0,104($sp)
    sd	$ra,96($sp)
    sd	$s2,88($sp)
    sd	$s8,120($sp)
    # Line 1467
    addiu	$s8,$a0,31108
    nop
    nop
.L0d9b3e40:
    # Line 1468
    ld	$v1,80($sp)
    # Line 1471
    ld	$s1,56($sp)
    # Line 1468
    beqz	$v1,.L0d9b3eb4
    # Line 1471
    move	$s2,$zero
    # Line 1469
    ld	$a0,80($sp)
    # Line 1470
    ld	$s0,72($sp)
    # Line 1469
    addiu	$a0,$a0,-1
    sd	$a0,80($sp)
    # Line 1471
    blez	$s4,.L0d9b3ea4
    # Line 1470
    lw	$s0,204($s0)
    nop
    nop
.L0d9b3e70:
    # Line 1474
    lwc1	$f2,0($s1)
    trunc.w.s	$f2,$f2
    lw	$t9,31200($s5)
    move	$a2,$s3
    move	$a1,$s0
    mfc1	$a3,$f2
    move	$a0,$s8
    # Line 1473
    addiu	$s1,$s1,4
    # Line 1474
    jalr	$t9
    and	$a3,$s7,$a3
    # Line 1472
    addiu	$s2,$s2,1
    bne	$s4,$s2,.L0d9b3e70
    # Line 1475
    addu	$s0,$s6,$s0
.L0d9b3ea4:
    # Line 1467
    ld	$a5,48($sp)
    ld	$a4,64($sp)
    addu	$s3,$a5,$s3
    bne	$a4,$s3,.L0d9b3e40
.L0d9b3eb4:
    ld	$s2,88($sp)
    ld	$ra,96($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    ld	$s8,120($sp)
.L0d9b3ec8:
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s5,24($sp)
    ld	$s7,32($sp)
    # Line 1480
    ld	$gp,40($sp)
    # Line 1478
    ld	$a6,80($sp)
    # Line 1479
    ld	$a7,72($sp)
    ld	$t0,64($sp)
    sw	$t0,208($a7)
    # Line 1480
    addiu	$sp,$sp,128
    jr	$ra
    # Line 1478
    sw	$a6,220($a7)
.end __glSpanRenderStencil2

