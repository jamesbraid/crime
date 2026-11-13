# Source: ../pixel/px_api.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_api.c
# Total Functions: 18

.text

# Function: __glInitDefaultPixelMap
# Declared: Line 26 (Source lines: 27-63)
# Address: 0x0d995da0 - 0x0d995eb4 (Size: 276 bytes, Frame: 32)
.globl __glInitDefaultPixelMap
.ent __glInitDefaultPixelMap
__glInitDefaultPixelMap:
    # Line 27
    lui	$a5,0xc
    addiu	$sp,$sp,-32
    addiu	$a5,$a5,-20500
    sd	$gp,16($sp)
    addu	$gp,$t9,$a5
    move	$v0,$a1
    addiu	$a5,$a1,-3184
    la	$a4,sub_0da40000
    sd	$s0,8($sp)
    move	$s0,$a0
    sltiu	$at,$a5,10
    sll	$a5,$a5,0x2
    addiu	$a4,$a4,18044
    sd	$ra,24($sp)
    beqz	$at,.L0d995ea0
    addu	$a4,$a4,$a5
    lw	$a6,0($a4)
    jr	$a6
    sd	$a1,0($sp)
.L0d995dec:
    # Line 38
    lw	$t9,0($s0)
    jalr	$t9
    li	$a1,4
    ld	$a1,0($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$ra,24($sp)
    sll	$a0,$a0,0x2
    # Line 63
    ld	$gp,16($sp)
    # Line 38
    lui	$a1,0xffff
    addu	$a0,$s0,$a0
    # Line 63
    ld	$s0,8($sp)
    # Line 38
    addu	$a0,$a0,$a1
    # Line 43
    li	$a2,1
    # Line 38
    beqz	$v0,.L0d995e90
    sw	$v0,28360($a0)
    # Line 42
    sw	$zero,0($v0)
    # Line 43
    sw	$a2,28352($a0)
    # Line 63
    jr	$ra
    addiu	$sp,$sp,32
.L0d995e3c:
    # Line 53
    lw	$t9,0($s0)
    jalr	$t9
    li	$a1,4
    ld	$a1,0($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$ra,24($sp)
    sll	$a0,$a0,0x2
    # Line 63
    ld	$gp,16($sp)
    # Line 53
    lui	$a1,0xffff
    addu	$a0,$s0,$a0
    # Line 57
    mtc1	$zero,$f0
    # Line 63
    ld	$s0,8($sp)
    # Line 53
    addu	$a0,$a0,$a1
    # Line 58
    li	$a2,1
    # Line 53
    beqz	$v0,.L0d995e90
    sw	$v0,28360($a0)
    # Line 57
    swc1	$f0,0($v0)
    # Line 63
    addiu	$sp,$sp,32
    jr	$ra
    # Line 58
    sw	$a2,28352($a0)
.L0d995e90:
    ld	$s0,8($sp)
    # Line 63
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d995ea0:
    # Line 62
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d995e90
    ld	$ra,24($sp)
.end __glInitDefaultPixelMap

# Function: __glPixelSetColorScales
# Declared: Line 67 (Source lines: 68-112)
# Address: 0x0d995ec0 - 0x0d996070 (Size: 432 bytes, Frame: 32)
.globl __glPixelSetColorScales
.ent __glPixelSetColorScales
__glPixelSetColorScales:
    # Line 68
    lw	$v0,30548($a0)
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,-20788
    sd	$gp,0($sp)
    beqz	$v0,.L0d996004
    addu	$gp,$t9,$at
.L0d995ee4:
    # Line 94
    lwc1	$f8,_lit_437f0000
    # Line 97
    lwc1	$f6,30792($s0)
    div.s	$f6,$f6,$f8
    # Line 96
    lwc1	$f5,30760($s0)
    div.s	$f5,$f5,$f8
    # Line 95
    lwc1	$f7,30756($s0)
    div.s	$f7,$f7,$f8
    # Line 94
    lwc1	$f4,30752($s0)
    # Line 98
    li	$a4,256
    lw	$a0,30736($s0)
    move	$a2,$zero
    move	$a3,$zero
    # Line 112
    ld	$gp,0($sp)
    # Line 94
    div.s	$f4,$f4,$f8
    nop
.L0d995f20:
    # Line 100
    mtc1	$a2,$f14
    cvt.s.w	$f14,$f14
    lw	$at,30548($s0)
    mul.s	$f17,$f14,$f4
    addu	$at,$at,$a3
    swc1	$f17,0($at)
    # Line 101
    lw	$t9,30552($s0)
    mul.s	$f16,$f14,$f7
    addu	$t9,$t9,$a3
    swc1	$f16,0($t9)
    # Line 102
    lw	$t8,30556($s0)
    mul.s	$f15,$f14,$f5
    addu	$t8,$t8,$a3
    swc1	$f15,0($t8)
    # Line 104
    and	$t3,$a0,$a2
    # Line 103
    lw	$t2,30560($s0)
    # Line 104
    mtc1	$t3,$f13
    # Line 99
    addiu	$a5,$a2,1
    # Line 103
    mul.s	$f14,$f14,$f6
    addu	$t2,$t2,$a3
    # Line 100
    mtc1	$a5,$f9
    # Line 103
    swc1	$f14,0($t2)
    # Line 104
    cvt.s.w	$f13,$f13
    lw	$t1,30564($s0)
    # Line 100
    cvt.s.w	$f9,$f9
    # Line 104
    addu	$t1,$t1,$a3
    swc1	$f13,0($t1)
    # Line 100
    lw	$t0,30548($s0)
    # Line 99
    addiu	$v1,$a3,4
    # Line 100
    mul.s	$f12,$f9,$f4
    addu	$t0,$t0,$v1
    swc1	$f12,0($t0)
    # Line 101
    lw	$a7,30552($s0)
    mul.s	$f11,$f9,$f7
    addu	$a7,$a7,$v1
    swc1	$f11,0($a7)
    # Line 102
    lw	$a6,30556($s0)
    mul.s	$f10,$f9,$f5
    addu	$a6,$a6,$v1
    swc1	$f10,0($a6)
    # Line 104
    and	$a5,$a0,$a5
    # Line 103
    lw	$a1,30560($s0)
    # Line 104
    mtc1	$a5,$f8
    # Line 103
    mul.s	$f9,$f9,$f6
    addu	$a1,$a1,$v1
    swc1	$f9,0($a1)
    # Line 104
    cvt.s.w	$f8,$f8
    lw	$v0,30564($s0)
    # Line 99
    addiu	$a2,$a2,2
    # Line 104
    addu	$v0,$v0,$v1
    # Line 99
    addiu	$a3,$a3,8
    bne	$a2,$a4,.L0d995f20
    # Line 104
    swc1	$f8,0($v0)
    # Line 111
    sb	$zero,30588($s0)
    # Line 112
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d996004:
    # Line 82
    lw	$t9,0($s0)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a1,1024
    # Line 84
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 82
    sw	$v0,30548($s0)
    # Line 86
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 84
    sw	$v0,30552($s0)
    # Line 88
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 86
    sw	$v0,30556($s0)
    # Line 90
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 88
    sw	$v0,30560($s0)
    ld	$ra,16($sp)
    b	.L0d995ee4
    # Line 90
    sw	$v0,30564($s0)
.end __glPixelSetColorScales

# Function: __glFreePixelState
# Declared: Line 116 (Source lines: 117-163)
# Address: 0x0d996070 - 0x0d996394 (Size: 804 bytes, Frame: 48)
.globl __glFreePixelState
.ent __glFreePixelState
__glFreePixelState:
    # Line 117
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a0
    lui	$at,0xc
    li	$t8,0x9540
    addu	$t8,$a0,$t8
    sd	$s0,8($sp)
    lui	$s0,0xffff
    addiu	$at,$at,-21220
    sd	$s2,0($sp)
    li	$s2,0x95b8
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    addu	$s2,$a0,$s2
    addu	$s2,$s0,$s2
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d9960cc
    sd	$ra,32($sp)
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    nop
    # Line 131
    sw	$zero,28360($s0)
.L0d9960cc:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d9960f4
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d9960f4:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d99611c
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d99611c:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d996144
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d996144:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d99616c
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d99616c:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d996194
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d996194:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d9961bc
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d9961bc:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d9961e4
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d9961e4:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d99620c
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d99620c:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d996234
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d996234
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d996234:
    # Line 134
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30548($s1)
    # Line 135
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30552($s1)
    # Line 136
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30556($s1)
    # Line 137
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30560($s1)
    # Line 138
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30564($s1)
    lw	$a1,30592($s1)
    beqz	$a1,.L0d9962cc
    nop
    # Line 140
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 141
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30596($s1)
    # Line 142
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30600($s1)
    # Line 143
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30604($s1)
.L0d9962cc:
    lw	$a1,30620($s1)
    ld	$s2,0($sp)
    beqz	$a1,.L0d996318
    ld	$s0,8($sp)
    # Line 146
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 147
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30624($s1)
    # Line 148
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30628($s1)
    # Line 149
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30632($s1)
.L0d996318:
    lw	$a1,30612($s1)
    beqz	$a1,.L0d996330
    nop
    # Line 152
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
.L0d996330:
    # Line 155
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,848($s1)
    # Line 156
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,932($s1)
    # Line 157
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1016($s1)
    # Line 159
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1020($s1)
    # Line 161
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1244($s1)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    # Line 163
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFreePixelState

# Function: __glInitPixelState
# Declared: Line 170 (Source lines: 171-334)
# Address: 0x0d9963a0 - 0x0d996744 (Size: 932 bytes, Frame: 48)
.globl __glInitPixelState
.ent __glInitPixelState
__glInitPixelState:
    # Line 171
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$gp,24($sp)
    sd	$s1,16($sp)
    sd	$s0,8($sp)
    # Line 179
    lwc1	$f0,3544($a0)
    # Line 171
    sd	$s2,0($sp)
    # Line 196
    swc1	$f0,748($a0)
    # Line 195
    swc1	$f0,744($a0)
    # Line 193
    swc1	$f0,724($a0)
    # Line 192
    swc1	$f0,720($a0)
    # Line 191
    swc1	$f0,716($a0)
    # Line 190
    swc1	$f0,712($a0)
    # Line 188
    swc1	$f0,692($a0)
    # Line 187
    swc1	$f0,688($a0)
    # Line 186
    swc1	$f0,684($a0)
    # Line 185
    swc1	$f0,680($a0)
    # Line 183
    swc1	$f0,656($a0)
    # Line 182
    swc1	$f0,652($a0)
    # Line 196
    li	$s2,3194
    # Line 171
    lui	$at,0xc
    # Line 181
    swc1	$f0,648($a0)
    # Line 196
    li	$s0,3184
    # Line 171
    addiu	$at,$at,-22036
    # Line 180
    swc1	$f0,644($a0)
    # Line 171
    move	$s1,$a0
    # Line 179
    swc1	$f0,640($a0)
    # Line 171
    addu	$gp,$t9,$at
    # Line 202
    # lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d996508
    sdc1	$f30,32($sp)
    # Line 202
    # lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d99650c
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d99650c
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d99650c
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d99650c
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d996508
    # Line 202
    nop	# was lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d996508
    # Line 202
    nop	# was lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d996508
    # Line 202
    nop	# was lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d996508
    # Line 202
    nop	# was lw $t9, -28472($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
.L0d996508:
    # Line 215
    li	$a2,0x842e
.L0d99650c:
    sw	$a2,1228($s1)
    # Line 211
    li	$a0,0x85a2
    # Line 214
    sw	$a0,1224($s1)
    # Line 212
    li	$a1,0x8430
    sw	$a1,1184($s1)
    # Line 215
    lbu	$v1,3222($s1)
    # Line 211
    sw	$a0,1180($s1)
    # Line 208
    li	$v0,4
    # Line 209
    sw	$v0,1204($s1)
    # Line 220
    li	$a3,1029
    # Line 215
    beqz	$v1,.L0d996734
    # Line 208
    sw	$v0,1160($s1)
    # Line 220
    sw	$a3,1236($s1)
.L0d996540:
    # Line 244
    li	$a4,1
    sw	$a4,836($s1)
    # Line 231
    li	$s2,6408
    sw	$s2,776($s1)
    # Line 230
    li	$s0,0x8016
    sw	$s0,772($s1)
    # Line 229
    li	$a2,0x8010
    sw	$a2,768($s1)
    # Line 224
    sw	$a3,1240($s1)
    # Line 245
    lw	$a1,3624($s1)
    sw	$a1,840($s1)
    # Line 236
    mtc1	$zero,$f30
    # Line 232
    lwc1	$f1,3544($s1)
    # Line 243
    swc1	$f30,828($s1)
    # Line 242
    swc1	$f30,824($s1)
    # Line 241
    swc1	$f30,820($s1)
    # Line 240
    swc1	$f30,816($s1)
    # Line 239
    swc1	$f30,812($s1)
    # Line 238
    swc1	$f30,808($s1)
    # Line 237
    swc1	$f30,804($s1)
    # Line 236
    swc1	$f30,800($s1)
    # Line 235
    swc1	$f1,796($s1)
    # Line 246
    lw	$t9,0($s1)
    # Line 234
    swc1	$f1,792($s1)
    # Line 246
    sll	$a1,$a1,0x4
    # Line 233
    swc1	$f1,788($s1)
    # Line 246
    move	$a0,$s1
    jal	__glInitDefaultPixelMap
    # Line 232
    swc1	$f1,784($s1)
    # Line 266
    swc1	$f30,912($s1)
    # Line 265
    swc1	$f30,908($s1)
    # Line 264
    swc1	$f30,904($s1)
    # Line 263
    swc1	$f30,900($s1)
    # Line 262
    swc1	$f30,896($s1)
    # Line 261
    swc1	$f30,892($s1)
    # Line 260
    swc1	$f30,888($s1)
    # Line 259
    swc1	$f30,884($s1)
    # Line 254
    sw	$s2,860($s1)
    # Line 253
    sw	$s0,856($s1)
    # Line 252
    li	$a4,0x8011
    sw	$a4,852($s1)
    # Line 246
    sw	$v0,848($s1)
    # Line 267
    lw	$a2,3628($s1)
    # Line 268
    lw	$a3,3632($s1)
    sw	$a3,928($s1)
    # Line 255
    lwc1	$f2,3544($s1)
    # Line 269
    mult	$a2,$a3
    # Line 267
    sw	$a2,924($s1)
    # Line 258
    swc1	$f2,880($s1)
    # Line 269
    lw	$t9,0($s1)
    # Line 257
    swc1	$f2,876($s1)
    # Line 269
    move	$a0,$s1
    # Line 256
    swc1	$f2,872($s1)
    # Line 255
    swc1	$f2,868($s1)
    # Line 269
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    # Line 290
    swc1	$f30,996($s1)
    # Line 289
    swc1	$f30,992($s1)
    # Line 288
    swc1	$f30,988($s1)
    # Line 287
    swc1	$f30,984($s1)
    # Line 286
    swc1	$f30,980($s1)
    # Line 285
    swc1	$f30,976($s1)
    # Line 284
    swc1	$f30,972($s1)
    # Line 283
    swc1	$f30,968($s1)
    # Line 278
    sw	$s2,944($s1)
    # Line 277
    sw	$s0,940($s1)
    # Line 276
    li	$a3,0x8012
    sw	$a3,936($s1)
    # Line 269
    sw	$v0,932($s1)
    # Line 292
    lw	$a2,3640($s1)
    sw	$a2,1012($s1)
    # Line 279
    lwc1	$f3,3544($s1)
    # Line 291
    lw	$a1,3636($s1)
    sw	$a1,1008($s1)
    # Line 282
    swc1	$f3,964($s1)
    # Line 293
    lw	$t9,0($s1)
    # Line 281
    swc1	$f3,960($s1)
    # Line 293
    move	$a0,$s1
    # Line 280
    swc1	$f3,956($s1)
    # Line 279
    swc1	$f3,952($s1)
    # Line 293
    addu	$a1,$a1,$a2
    jalr	$t9
    sll	$a1,$a1,0x4
    ld	$s0,8($sp)
    # Line 302
    lw	$t9,0($s1)
    ldc1	$f30,32($sp)
    lw	$a1,1012($s1)
    move	$a0,$s1
    # Line 293
    sw	$v0,1016($s1)
    # Line 302
    jalr	$t9
    sll	$a1,$a1,0xf
    la	$a2,__glDummyFilter
    # Line 312
    lwc1	$f7,3544($s1)
    # Line 302
    sw	$v0,1020($s1)
    # Line 312
    swc1	$f7,16($a2)
    # Line 313
    lwc1	$f6,3544($s1)
    swc1	$f6,20($a2)
    # Line 314
    lwc1	$f5,3544($s1)
    swc1	$f5,24($a2)
    # Line 315
    lwc1	$f4,3544($s1)
    # Line 326
    # lw $t9, -25888($gp) # &__glResetMinmax
    # Line 315
    swc1	$f4,28($a2)
    # Line 325
    li	$a3,1
    sb	$a3,1364($s1)
    # Line 324
    sw	$s2,1372($s1)
    # Line 323
    sw	$s2,1368($s1)
    # Line 322
    sw	$s2,1316($s1)
    # Line 321
    sw	$s2,1276($s1)
    # Line 320
    sw	$s2,1272($s1)
    # Line 326
    move	$a0,$s1
    jal	__glResetMinmax
    # Line 317
    sw	$a2,764($s1)
    # Line 333
    # lw $t9, -28468($gp) # &__glPixelSetColorScales
    ld	$s2,0($sp)
    move	$a0,$s1
    # Line 329
    sb	$zero,30645($s1)
    # Line 328
    li	$a4,0x8421
    # Line 333
    bal __glPixelSetColorScales
    # Line 328
    sw	$a4,30636($s1)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    # Line 334
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d996734:
    # Line 222
    li	$a5,1028
    sw	$a5,1236($s1)
    b	.L0d996540
    li	$a3,1028
.end __glInitPixelState

# Function: __glim_PixelStoref
# Declared: Line 341 (Source lines: 342-379)
# Address: 0x0d996750 - 0x0d996968 (Size: 536 bytes, Frame: 16)
.globl __glim_PixelStoref
.ent __glim_PixelStoref
__glim_PixelStoref:
    # Line 342
    addiu	$sp,$sp,-16
    # Line 343
    sltiu	$at,$a0,3331
    # Line 342
    lui	$v0,0xc
    sd	$ra,8($sp)
    addiu	$v0,$v0,-22980
    sd	$gp,0($sp)
    # Line 343
    bnez	$at,.L0d9967c0
    # Line 342
    addu	$gp,$t9,$v0
    # Line 343
    sltiu	$v1,$a0,3332
    bnez	$v1,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    li	$a2,0x806d
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d9968a4
    sltu	$a3,$a2,$a0
    li	$a2,0x8131
    sltu	$a5,$a2,$a0
    beqz	$a3,.L0d99681c
    sltu	$a4,$a0,$a2
    bnez	$a4,.L0d996938
    li	$a4,0x806e
    beqz	$a5,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    li	$a6,0x8133
    beq	$a0,$a6,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d9967c0:
    # Line 343
    sltiu	$a7,$a0,3316
    bnez	$a7,.L0d996804
    sltiu	$t0,$a0,3317
    bnez	$t0,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    li	$a6,3317
    sltiu	$a2,$a0,3329
    sltiu	$t1,$a0,3330
    li	$t2,3330
    bnez	$a2,.L0d996920
    sltiu	$a3,$a0,3328
    bnez	$t1,.L0d996888
    # Line 369
    mtc1	$zero,$f3
    # Line 343
    beq	$a0,$t2,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d996804:
    # Line 343
    sltiu	$a2,$a0,3314
    bnez	$a2,.L0d996870
    sltiu	$t3,$a0,3315
    bnez	$t3,.L0d99681c
    li	$t8,3315
    bne	$a0,$t8,.L0d9968dc
.L0d99681c:
    # Line 359
    mtc1	$zero,$f0
.L0d996820:
    c.lt.s	$f13,$f0
    bc1f	.L0d99684c
    # Line 362
    lwc1	$f2,_lit_3f000000
    # Line 360
    lwc1	$f1,_lit_bf000000
    add.s	$f1,$f13,$f1
    # lw $t9, -28452($gp) # &__glim_PixelStorei
    trunc.w.s	$f1,$f1
    bal __glim_PixelStorei
    mfc1	$a1,$f1
    b	.L0d996864
    ld	$ra,8($sp)
.L0d99684c:
    # Line 362
    add.s	$f2,$f13,$f2
    # lw $t9, -28452($gp) # &__glim_PixelStorei
    trunc.w.s	$f2,$f2
    bal __glim_PixelStorei
    mfc1	$a1,$f2
    ld	$ra,8($sp)
.L0d996864:
    # Line 379
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d996870:
    # Line 343
    sltiu	$t9,$a0,3313
    bnez	$t9,.L0d9968d8
    li	$v1,3312
    beqz	$a2,.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d996884:
    # Line 369
    mtc1	$zero,$f3
.L0d996888:
    c.eq.s $f13,$f3
    bc1f .L0d9968f4
    # Line 370
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
    bal __glim_PixelStorei
    move	$a1,$zero
    b	.L0d996864
    ld	$ra,8($sp)
.L0d9968a4:
    # Line 343
    li	$a2,0x806b
    li	$a5,3332
    sltu	$ra,$a0,$a2
    li	$v0,0x806c
    sltiu	$a1,$a0,3333
    bnez	$ra,.L0d996908
    sltu	$at,$a2,$a0
    beqz	$at,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    beq	$a0,$v0,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d9968d8:
    # Line 343
    beq	$a0,$v1,.L0d996884
.L0d9968dc:
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d9968e0:
    trunc.w.s	$f4,$f13
    bal __glim_PixelStorei
    mfc1	$a1,$f4
    b	.L0d996864
    ld	$ra,8($sp)
.L0d9968f4:
    # Line 372
    # lw $t9, -28452($gp) # &__glim_PixelStorei
    bal __glim_PixelStorei
    li	$a1,1
    b	.L0d996864
    ld	$ra,8($sp)
.L0d996908:
    # Line 343
    bnez	$a1,.L0d996948
    sltiu	$a2,$a0,3334
    bnez	$a2,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d996920:
    # Line 343
    bnez	$a3,.L0d996958
    nop
    bnez	$a2,.L0d996888
    # Line 369
    mtc1	$zero,$f3
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d996938:
    # Line 343
    beq	$a0,$a4,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d996948:
    # Line 343
    beq	$a0,$a5,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.L0d996958:
    # Line 343
    beq	$a0,$a6,.L0d996820
    # Line 359
    mtc1	$zero,$f0
    b	.L0d9968e0
    # Line 376
    nop	# was lw $t9, -28452($gp) # &__glim_PixelStorei
.end __glim_PixelStoref

# Function: __glim_PixelStorei
# Declared: Line 381 (Source lines: 382-573)
# Address: 0x0d996970 - 0x0d996f00 (Size: 1424 bytes, Frame: 16)
.globl __glim_PixelStorei
.ent __glim_PixelStorei
__glim_PixelStorei:
    # Line 382
    addiu	$sp,$sp,-16
    # Line 384
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$a5,1
    # Line 382
    lui	$v0,0xc
    sd	$ra,8($sp)
    addiu	$v0,$v0,-23524
    sd	$gp,0($sp)
    # Line 384
    beq	$at,$a5,.L0d996cc0
    # Line 382
    addu	$gp,$t9,$v0
    # Line 388
    li	$a4,0x806b
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0d9969e8
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0d996a10
    li	$a4,0x8132
    bltz	$a1,.L0d996df0
    # Line 423
    li	$a0,2
    # Line 422
    sw	$a1,1164($a3)
.L0d9969bc:
    # Line 573
    sw	$a0,4120($zero)
    ld	$ra,8($sp)
    lw	$a4,11756($a3)
    # Line 571
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 573
    ori	$a4,$a4,0x10
    # Line 571
    jr	$ra
    # Line 573
    sw	$a4,11756($a3)
.L0d9969dc:
    # Line 571
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9969e8:
    # Line 388
    sltiu	$a6,$a0,3328
    bnez	$a6,.L0d996a34
    sltiu	$t3,$a0,3315
    sltiu	$a7,$a0,3329
    beqz	$a7,.L0d996a58
    sltiu	$a4,$a0,3331
    # Line 450
    li	$a0,2
    # Line 449
    sltu	$t0,$zero,$a1
    # Line 450
    b	.L0d9969bc
    # Line 449
    sb	$t0,1144($a3)
.L0d996a10:
    # Line 388
    sltu	$t1,$a0,$a4
    bnez	$t1,.L0d996a78
    sltu	$t2,$a4,$a0
    bnez	$t2,.L0d996aec
    li	$a4,0x842d
    bltz	$a1,.L0d996e1c
    # Line 505
    li	$a0,2
    b	.L0d9969bc
    # Line 504
    sw	$a1,1216($a3)
.L0d996a34:
    # Line 388
    bnez	$t3,.L0d996aa4
    sltiu	$v0,$a0,3313
    sltiu	$t8,$a0,3316
    beqz	$t8,.L0d996b50
    sltiu	$t8,$a0,3317
    bltz	$a1,.L0d996e30
    # Line 519
    li	$a0,2
    b	.L0d9969bc
    # Line 518
    sw	$a1,1196($a3)
.L0d996a58:
    # Line 388
    bnez	$a4,.L0d996ac8
    sltiu	$t9,$a0,3332
    beqz	$t9,.L0d996bd4
    sltiu	$a4,$a0,3333
    bltz	$a1,.L0d996e44
    # Line 430
    li	$a0,2
    b	.L0d9969bc
    # Line 429
    sw	$a1,1152($a3)
.L0d996a78:
    # Line 388
    li	$a4,0x806e
    sltu	$ra,$a0,$a4
    bnez	$ra,.L0d996b24
    sltu	$at,$a4,$a0
    bnez	$at,.L0d996c68
    li	$a4,0x8131
    bltz	$a1,.L0d996e58
    # Line 487
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 491
    li	$a0,2
    b	.L0d9969bc
    # Line 490
    sw	$a1,1212($a3)
.L0d996aa4:
    # Line 388
    bnez	$v0,.L0d996b94
    li	$v0,3312
    sltiu	$v1,$a0,3314
    beqz	$v1,.L0d996bbc
    li	$a2,3314
    # Line 542
    li	$a0,2
    # Line 541
    sltu	$a2,$zero,$a1
    # Line 542
    b	.L0d9969bc
    # Line 541
    sb	$a2,1189($a3)
.L0d996ac8:
    # Line 388
    sltiu	$a5,$a0,3330
    bnez	$a5,.L0d996c18
    li	$t1,3329
    beqz	$a4,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996e68
    # Line 409
    li	$a0,2
    b	.L0d9969bc
    # Line 408
    sw	$a1,1148($a3)
.L0d996aec:
    # Line 388
    sltu	$a6,$a0,$a4
    bnez	$a6,.L0d996c30
    sltu	$a7,$a4,$a0
    bnez	$a7,.L0d996cf4
    # Line 558
    li	$t0,0x842e
    beq	$a1,$t0,.L0d996d88
    # Line 561
    li	$a0,2
    # Line 558
    li	$t1,0x842f
    beq	$a1,$t1,.L0d996d84
    # Line 564
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996b24:
    # Line 388
    li	$a4,0x806d
    sltu	$t2,$a0,$a4
    bnez	$t2,.L0d996c90
    li	$v0,0x806c
    sltu	$t3,$a4,$a0
    bnez	$t3,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996e7c
    # Line 512
    li	$a0,2
    b	.L0d9969bc
    # Line 511
    sw	$a1,1208($a3)
.L0d996b50:
    # Line 388
    bnez	$t8,.L0d996ca8
    li	$v1,3316
    sltiu	$t9,$a0,3318
    beqz	$t9,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 528
    beq	$a1,$a5,.L0d996cd4
    li	$a0,2
    beq	$a1,$a0,.L0d996cd4
    li	$ra,4
    beq	$a1,$ra,.L0d996cd4
    li	$at,8
    beq	$a1,$at,.L0d996cd4
    # Line 533
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996b94:
    # Line 388
    bne	$a0,$v0,.L0d996ba8
    # Line 538
    li	$a0,2
    sltu	$v1,$zero,$a1
    b	.L0d9969bc
    sb	$v1,1188($a3)
.L0d996ba8:
    # Line 570
    # lw $t9, -26452($gp) # &__glSetError
.L0d996bac:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996bbc:
    # Line 388
    bne	$a0,$a2,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996e90
    # Line 498
    li	$a0,2
    b	.L0d9969bc
    # Line 497
    sw	$a1,1192($a3)
.L0d996bd4:
    # Line 388
    bnez	$a4,.L0d996cdc
    li	$a2,3332
    sltiu	$a6,$a0,3334
    beqz	$a6,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 439
    beq	$a1,$a5,.L0d996d7c
    li	$a0,2
    beq	$a1,$a0,.L0d996d7c
    li	$a7,4
    beq	$a1,$a7,.L0d996d7c
    li	$t0,8
    beq	$a1,$t0,.L0d996d7c
    # Line 444
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996c18:
    # Line 388
    bne	$a0,$t1,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 453
    li	$a0,2
    # Line 452
    sltu	$t2,$zero,$a1
    # Line 453
    b	.L0d9969bc
    # Line 452
    sb	$t2,1145($a3)
.L0d996c30:
    # Line 388
    li	$a4,0x842c
    sltu	$t3,$a0,$a4
    bnez	$t3,.L0d996d40
    li	$t2,0x8133
    sltu	$t8,$a4,$a0
    bnez	$t8,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 469
    li	$t9,0x8430
    beq	$a1,$t9,.L0d996d90
    # Line 474
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996c68:
    # Line 388
    sltu	$ra,$a0,$a4
    bnez	$ra,.L0d996d5c
    sltu	$at,$a4,$a0
    bnez	$at,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996ecc
    # Line 391
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 395
    li	$a0,2
    b	.L0d9969bc
    # Line 394
    sw	$a1,1176($a3)
.L0d996c90:
    # Line 388
    bne	$a0,$v0,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996ea4
    # Line 402
    li	$a0,2
    b	.L0d9969bc
    # Line 401
    sw	$a1,1168($a3)
.L0d996ca8:
    # Line 388
    bne	$a0,$v1,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996eb8
    # Line 526
    li	$a0,2
    b	.L0d9969bc
    # Line 525
    sw	$a1,1200($a3)
.L0d996cc0:
    # Line 384
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996cd4:
    # Line 530
    b	.L0d9969bc
    sw	$a1,1204($a3)
.L0d996cdc:
    # Line 388
    bne	$a0,$a2,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996edc
    # Line 437
    li	$a0,2
    b	.L0d9969bc
    # Line 436
    sw	$a1,1156($a3)
.L0d996cf4:
    # Line 388
    li	$a4,0x85a1
    sltu	$a5,$a0,$a4
    bnez	$a5,.L0d996dac
    sltu	$a6,$a4,$a0
    bnez	$a6,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 545
    li	$a7,0x85a2
    beq	$a1,$a7,.L0d996e08
    # Line 549
    li	$a0,2
    # Line 545
    li	$t0,0x85a3
    beq	$a1,$t0,.L0d996e08
    # Line 549
    li	$a0,2
    # Line 545
    li	$t1,0x85a4
    beq	$a1,$t1,.L0d996e04
    # Line 552
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996d40:
    # Line 388
    bne	$a0,$t2,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 478
    bltz	$a1,.L0d996d9c
    # Line 480
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d996d50:
    # Line 484
    li	$a0,2
    b	.L0d9969bc
    # Line 483
    sw	$a1,1220($a3)
.L0d996d5c:
    # Line 388
    li	$t3,0x8130
    bne	$a0,$t3,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d996ef0
    # Line 412
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 416
    li	$a0,2
    b	.L0d9969bc
    # Line 415
    sw	$a1,1172($a3)
.L0d996d7c:
    # Line 441
    b	.L0d9969bc
    sw	$a1,1160($a3)
.L0d996d84:
    # Line 561
    li	$a0,2
.L0d996d88:
    b	.L0d9969bc
    sw	$a1,1228($a3)
.L0d996d90:
    # Line 478
    bgez	$a1,.L0d996d50
    # Line 471
    sw	$a1,1184($a3)
    # Line 480
    # lw $t9, -26452($gp) # &__glSetError
.L0d996d9c:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996dac:
    # Line 388
    li	$t8,0x85a0
    bne	$a0,$t8,.L0d996bac
    # Line 570
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 456
    li	$t9,0x85a2
    beq	$a1,$t9,.L0d996e14
    # Line 460
    li	$a0,2
    # Line 456
    li	$ra,0x85a3
    beq	$a1,$ra,.L0d996e14
    # Line 460
    li	$a0,2
    # Line 456
    li	$at,0x85a4
    beq	$a1,$at,.L0d996e14
    # Line 460
    li	$a0,2
    # Line 463
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996df0:
    # Line 419
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996e04:
    # Line 549
    li	$a0,2
.L0d996e08:
    b	.L0d9969bc
    sw	$a1,1224($a3)
    # Line 460
    li	$a0,2
.L0d996e14:
    b	.L0d9969bc
    sw	$a1,1180($a3)
.L0d996e1c:
    # Line 501
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996e30:
    # Line 515
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996e44:
    # Line 426
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996e58:
    # Line 487
    jalr	$t9
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996e68:
    # Line 405
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996e7c:
    # Line 508
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996e90:
    # Line 494
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996ea4:
    # Line 398
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996eb8:
    # Line 522
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996ecc:
    # Line 391
    jalr	$t9
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996edc:
    # Line 433
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.L0d996ef0:
    # Line 412
    jalr	$t9
    li	$a0,1281
    b	.L0d9969dc
    ld	$ra,8($sp)
.end __glim_PixelStorei

# Function: __glim_PixelZoom
# Declared: Line 579 (Source lines: 580-604)
# Address: 0x0d996f00 - 0x0d996fe4 (Size: 228 bytes, Frame: 16)
.globl __glim_PixelZoom
.ent __glim_PixelZoom
__glim_PixelZoom:
    # Line 583
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 580
    lui	$at,0xc
    # Line 583
    lw	$a1,4112($zero)
    # Line 580
    addiu	$sp,$sp,-16
    addiu	$at,$at,-24948
    sd	$gp,0($sp)
    # Line 583
    beq	$v0,$v1,.L0d996fcc
    # Line 580
    addu	$gp,$t9,$at
    # Line 585
    mtc1	$zero,$f7
    lwc1	$f4,3676($a1)
    c.lt.s	$f7,$f12
    lwc1	$f5,3540($a1)
    # Line 603
    li	$v1,2
    # Line 591
    c.lt.s $f7,$f13
    # Line 585
    bc1f	.L0d996f54
    div.s	$f6,$f12,$f4
    # Line 589
    add.s	$f0,$f5,$f6
    trunc.w.s	$f0,$f0
    b	.L0d996f60
    mfc1	$a2,$f0
.L0d996f54:
    # Line 591
    sub.s	$f1,$f6,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
.L0d996f60:
    bc1f .L0d996f78
    div.s	$f6,$f13,$f4
    # Line 594
    add.s	$f2,$f5,$f6
    trunc.w.s	$f2,$f2
    b	.L0d996f84
    mfc1	$a3,$f2
.L0d996f78:
    # Line 596
    sub.s	$f3,$f6,$f5
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
.L0d996f84:
    # Line 601
    mtc1	$a2,$f6
    # Line 599
    mtc1	$a3,$f5
    # Line 601
    cvt.s.w	$f6,$f6
    # Line 599
    cvt.s.w	$f5,$f5
    # Line 601
    mul.s	$f6,$f6,$f4
    # Line 599
    mul.s	$f4,$f5,$f4
    # Line 601
    swc1	$f6,744($a1)
    # Line 602
    swc1	$f4,748($a1)
    # Line 603
    sw	$v1,4120($zero)
    lw	$v0,11756($a1)
    # Line 604
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 603
    ori	$v0,$v0,0x10
    # Line 604
    jr	$ra
    # Line 603
    sw	$v0,11756($a1)
.L0d996fc0:
    # Line 604
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d996fcc:
    # Line 583
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d996fc0
    ld	$ra,8($sp)
.end __glim_PixelZoom

# Function: __glim_PixelTransferf
# Declared: Line 609 (Source lines: 610-721)
# Address: 0x0d996ff0 - 0x0d997390 (Size: 928 bytes, Frame: 16)
.globl __glim_PixelTransferf
.ent __glim_PixelTransferf
__glim_PixelTransferf:
    # Line 612
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 610
    lui	$at,0xc
    # Line 612
    lw	$a2,4112($zero)
    # Line 610
    addiu	$sp,$sp,-16
    addiu	$at,$at,-25188
    sd	$gp,0($sp)
    # Line 612
    beq	$v0,$v1,.L0d9972a4
    # Line 610
    addu	$gp,$t9,$at
    # Line 616
    li	$a3,0x801d
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0d99705c
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0d997078
    li	$a3,0x80b5
    # Line 651
    swc1	$f13,684($a2)
.L0d997030:
    # Line 721
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$a0,11756($a2)
    # Line 719
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 721
    ori	$a0,$a0,0x10
    # Line 719
    jr	$ra
    # Line 721
    sw	$a0,11756($a2)
.L0d997050:
    # Line 719
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d99705c:
    # Line 616
    sltiu	$a3,$a0,3353
    bnez	$a3,.L0d997094
    sltiu	$a4,$a0,3354
    beqz	$a4,.L0d9970c4
    sltiu	$t1,$a0,3357
    # Line 637
    b	.L0d997030
    # Line 636
    swc1	$f13,664($a2)
.L0d997078:
    # Line 616
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d9970e0
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d99712c
    li	$a3,0x80b9
    # Line 676
    b	.L0d997030
    # Line 675
    swc1	$f13,716($a2)
.L0d997094:
    # Line 616
    sltiu	$a7,$a0,3347
    bnez	$a7,.L0d997100
    sltiu	$t0,$a0,3348
    beqz	$t0,.L0d997184
    mtc1	$zero,$f0
    c.lt.s	$f0,$f13
    bc1f	.L0d997284
    lwc1	$f4,3540($a2)
    # Line 706
    add.s	$f1,$f4,$f13
    trunc.w.s	$f1,$f1
    b	.L0d997030
    swc1	$f1,756($a2)
.L0d9970c4:
    # Line 616
    bnez	$t1,.L0d99716c
    sltiu	$a6,$a0,3355
    sltiu	$t2,$a0,3358
    beqz	$t2,.L0d99720c
    sltiu	$v1,$a0,3359
    # Line 643
    b	.L0d997030
    # Line 642
    swc1	$f13,672($a2)
.L0d9970e0:
    # Line 616
    li	$a3,0x8021
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d997148
    sltu	$t8,$a3,$a0
    bnez	$t8,.L0d9971ec
    li	$a3,0x8023
    # Line 664
    b	.L0d997030
    # Line 663
    swc1	$f13,700($a2)
.L0d997100:
    # Line 616
    sltiu	$t9,$a0,3345
    bnez	$t9,.L0d9971a4
    sltiu	$at,$a0,3346
    beqz	$at,.L0d997224
    li	$a3,3346
    # Line 715
    mtc1	$zero,$f2
    c.eq.s $f13,$f2
    li	$v0,1
    movt	$v0,$zero,$fcc1
    # Line 716
    b	.L0d997030
    # Line 715
    sb	$v0,761($a2)
.L0d99712c:
    # Line 616
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d9971c8
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d9972bc
    li	$a3,0x80bb
    # Line 688
    b	.L0d997030
    # Line 687
    swc1	$f13,732($a2)
.L0d997148:
    # Line 616
    li	$a3,0x801f
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d997260
    li	$a4,0x801e
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d9972f8
    li	$t3,0x8020
    # Line 658
    b	.L0d997030
    # Line 657
    swc1	$f13,692($a2)
.L0d99716c:
    # Line 616
    bnez	$a6,.L0d997270
    sltiu	$a7,$a0,3356
    beqz	$a7,.L0d99731c
    li	$t9,3356
    # Line 640
    b	.L0d997030
    # Line 639
    swc1	$f13,668($a2)
.L0d997184:
    # Line 616
    sltiu	$t0,$a0,3349
    bnez	$t0,.L0d997294
    li	$a6,3348
    sltiu	$t1,$a0,3350
    beqz	$t1,.L0d99732c
    li	$at,3352
    # Line 634
    b	.L0d997030
    # Line 633
    swc1	$f13,660($a2)
.L0d9971a4:
    # Line 616
    li	$t2,3344
    bne	$a0,$t2,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 712
    mtc1	$zero,$f3
    c.eq.s $f13,$f3
    li	$t3,1
    movt	$t3,$zero,$fcc2
    b	.L0d997030
    sb	$t3,760($a2)
.L0d9971c8:
    # Line 616
    li	$a3,0x80b7
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d9972d8
    li	$t1,0x80b6
    sltu	$t9,$a3,$a0
    bnez	$t9,.L0d997360
    li	$v1,0x80b8
    # Line 682
    b	.L0d997030
    # Line 681
    swc1	$f13,724($a2)
.L0d9971ec:
    # Line 616
    sltu	$at,$a0,$a3
    bnez	$at,.L0d9972e8
    li	$t2,0x8022
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d997370
    li	$a1,0x80b4
    # Line 670
    b	.L0d997030
    # Line 669
    swc1	$f13,708($a2)
.L0d99720c:
    # Line 616
    bnez	$v1,.L0d997308
    sltiu	$a1,$a0,3360
    beqz	$a1,.L0d997380
    li	$a3,0x801c
    # Line 646
    b	.L0d997030
    # Line 645
    swc1	$f13,676($a2)
.L0d997224:
    # Line 616
    bne	$a0,$a3,.L0d997248
    mtc1	$zero,$f4
    c.lt.s $f4,$f13
    bc1f .L0d99733c
    lwc1	$f4,3540($a2)
    # Line 698
    add.s	$f5,$f4,$f13
    trunc.w.s	$f5,$f5
    b	.L0d997030
    swc1	$f5,752($a2)
.L0d997248:
    # Line 718
    # lw $t9, -26452($gp) # &__glSetError
.L0d99724c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d997050
    ld	$ra,8($sp)
.L0d997260:
    # Line 616
    bne	$a0,$a4,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 655
    b	.L0d997030
    # Line 654
    swc1	$f13,688($a2)
.L0d997270:
    # Line 616
    li	$a5,3354
    bne	$a0,$a5,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 625
    b	.L0d997030
    # Line 624
    swc1	$f13,648($a2)
.L0d997284:
    # Line 708
    sub.s	$f6,$f13,$f4
    trunc.w.s	$f6,$f6
    b	.L0d997030
    swc1	$f6,756($a2)
.L0d997294:
    # Line 616
    bne	$a0,$a6,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 619
    b	.L0d997030
    # Line 618
    swc1	$f13,640($a2)
.L0d9972a4:
    # Line 612
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d997050
    ld	$ra,8($sp)
.L0d9972bc:
    # Line 616
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d99734c
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 694
    b	.L0d997030
    # Line 693
    swc1	$f13,740($a2)
.L0d9972d8:
    # Line 616
    bne	$a0,$t1,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 679
    b	.L0d997030
    # Line 678
    swc1	$f13,720($a2)
.L0d9972e8:
    # Line 616
    bne	$a0,$t2,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 667
    b	.L0d997030
    # Line 666
    swc1	$f13,704($a2)
.L0d9972f8:
    # Line 616
    bne	$a0,$t3,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 661
    b	.L0d997030
    # Line 660
    swc1	$f13,696($a2)
.L0d997308:
    # Line 616
    li	$t8,3358
    bne	$a0,$t8,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 631
    b	.L0d997030
    # Line 630
    swc1	$f13,656($a2)
.L0d99731c:
    # Line 616
    bne	$a0,$t9,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 628
    b	.L0d997030
    # Line 627
    swc1	$f13,652($a2)
.L0d99732c:
    # Line 616
    bne	$a0,$at,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 622
    b	.L0d997030
    # Line 621
    swc1	$f13,644($a2)
.L0d99733c:
    # Line 700
    sub.s	$f7,$f13,$f4
    trunc.w.s	$f7,$f7
    b	.L0d997030
    swc1	$f7,752($a2)
.L0d99734c:
    # Line 616
    li	$v0,0x80ba
    bne	$a0,$v0,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 691
    b	.L0d997030
    # Line 690
    swc1	$f13,736($a2)
.L0d997360:
    # Line 616
    bne	$a0,$v1,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 685
    b	.L0d997030
    # Line 684
    swc1	$f13,728($a2)
.L0d997370:
    # Line 616
    bne	$a0,$a1,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 673
    b	.L0d997030
    # Line 672
    swc1	$f13,712($a2)
.L0d997380:
    # Line 616
    bne	$a0,$a3,.L0d99724c
    # Line 718
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 649
    b	.L0d997030
    # Line 648
    swc1	$f13,680($a2)
.end __glim_PixelTransferf

# Function: __glim_PixelTransferi
# Declared: Line 724 (Source lines: 725-727)
# Address: 0x0d997390 - 0x0d9973c8 (Size: 56 bytes, Frame: 16)
.globl __glim_PixelTransferi
.ent __glim_PixelTransferi
__glim_PixelTransferi:
    # Line 725
    lui	$at,0xc
    addiu	$sp,$sp,-16
    addiu	$at,$at,-26116
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 726
    mtc1	$a1,$f13
    # lw $t9, -28444($gp) # &__glim_PixelTransferf
    # Line 725
    sd	$ra,0($sp)
    # Line 726
    bal __glim_PixelTransferf
    cvt.s.w	$f13,$f13
    ld	$ra,0($sp)
    # Line 727
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_PixelTransferi

# Function: __glim_PixelMapfv
# Declared: Line 734 (Source lines: 736-826)
# Address: 0x0d9973d0 - 0x0d9977b0 (Size: 992 bytes, Frame: 192)
.globl __glim_PixelMapfv
.ent __glim_PixelMapfv
__glim_PixelMapfv:
    # Line 736
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    # Line 741
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    lw	$at,4120($zero)
    # Line 736
    sd	$s2,32($sp)
    # Line 741
    li	$v0,1
    # Line 736
    lui	$v1,0xc
    move	$s2,$a1
    sd	$s0,8($sp)
    addiu	$v1,$v1,-26180
    sd	$gp,48($sp)
    # Line 741
    beq	$at,$v0,.L0d99779c
    # Line 736
    addu	$gp,$t9,$v1
    # Line 746
    blez	$a1,.L0d99773c
    # Line 751
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 746
    lw	$a1,3772($s1)
    slt	$a1,$a1,$s2
    bnez	$a1,.L0d99773c
    # Line 751
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 752
    la	$a1,sub_0da40000
    addiu	$a3,$a0,-3184
    sltiu	$a4,$a3,10
    addiu	$a1,$a1,18084
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d99776c
    addu	$a1,$a1,$a3
    lw	$a3,0($a1)
    jr	$a3
    # Line 792
    addiu	$a6,$s2,-1
.L0d997448:
    # Line 758
    addiu	$a4,$s2,-1
    and	$a5,$a4,$s2
    beqz	$a5,.L0d9975e8
    # Line 763
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d997564
    ld	$ra,56($sp)
.L0d997468:
    # Line 792
    and	$a6,$s2,$a6
    beqz	$a6,.L0d99748c
    # Line 800
    sll	$s0,$a0,0x2
    # Line 797
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d997564
    ld	$ra,56($sp)
.L0d997488:
    # Line 800
    sll	$s0,$a0,0x2
.L0d99748c:
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d9974bc
    sd	$a2,16($sp)
    # Line 805
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 806
    sw	$zero,28360($s0)
.L0d9974bc:
    # Line 809
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,24($sp)
    beqz	$v0,.L0d99774c
    sw	$v0,28360($s0)
    # Line 816
    ld	$a4,24($sp)
    addiu	$t8,$s2,-1
    # Line 815
    sw	$s2,28352($s0)
    # Line 816
    bltz	$t8,.L0d997544
    addiu	$a4,$a4,-4
    ld	$a5,16($sp)
    andi	$a7,$s2,0x1
    mtc1	$zero,$f5
    addiu	$a6,$a5,-4
    beqz	$a7,.L0d997538
    addu	$a5,$a4,$a5
    # Line 817
    lwc1	$f4,0($a5)
    c.lt.s	$f4,$f5
    # Line 820
    lw	$t0,28360($s0)
    # Line 816
    addiu	$a5,$a5,-4
    # Line 817
    bc1f	.L0d997524
    # Line 820
    addu	$t0,$t0,$a4
    # Line 817
    b	.L0d997530
    mtc1	$zero,$f4
.L0d997524:
    lwc1	$f0,3544($s1)
    c.lt.s $f0,$f4
    movt.s	$f4,$f0,$fcc1
.L0d997530:
    # Line 816
    addiu	$a4,$a4,-4
    # Line 820
    swc1	$f4,0($t0)
.L0d997538:
    sra	$t1,$s2,0x1
    bnezl	$t1,.L0d9975a0
    # Line 817
    lwc1	$f4,0($a5)
.L0d997544:
    ld	$s0,8($sp)
    # Line 826
    ld	$gp,48($sp)
    ld	$ra,56($sp)
    # Line 822
    sb	$zero,30588($s1)
    # Line 826
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d997564:
    ld	$s0,8($sp)
.L0d997568:
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
.L0d997580:
    # Line 817
    lwc1	$f1,3544($s1)
    c.lt.s $f1,$f4
    movt.s	$f4,$f1,$fcc2
.L0d99758c:
    # Line 820
    addu	$t2,$t2,$a4
    # Line 816
    addiu	$a4,$a4,-4
    beq	$a5,$a6,.L0d997544
    # Line 820
    swc1	$f4,0($t2)
    # Line 817
    lwc1	$f4,0($a5)
.L0d9975a0:
    c.lt.s $f4,$f5
    # Line 820
    lw	$t3,28360($s0)
    addu	$t3,$t3,$a4
    # Line 817
    bc1f .L0d9975bc
    # Line 816
    addiu	$a4,$a4,-4
    # Line 817
    b	.L0d9975c8
    mtc1	$zero,$f4
.L0d9975bc:
    lwc1	$f2,3544($s1)
    c.lt.s $f2,$f4
    movt.s	$f4,$f2,$fcc4
.L0d9975c8:
    # Line 820
    swc1	$f4,0($t3)
    # Line 817
    lwc1	$f4,-4($a5)
    c.lt.s $f4,$f5
    # Line 816
    addiu	$a5,$a5,-8
    # Line 817
    bc1f .L0d997580
    # Line 820
    lw	$t2,28360($s0)
    # Line 817
    b	.L0d99758c
    mtc1	$zero,$f4
.L0d9975e8:
    # Line 764
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    sd	$a4,0($sp)
    beqz	$a1,.L0d997620
    sd	$a2,16($sp)
    # Line 767
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 768
    sw	$zero,28360($s0)
.L0d997620:
    # Line 770
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,24($sp)
    ld	$ra,56($sp)
    # Line 777
    mtc1	$zero,$f5
    andi	$a7,$s2,0x1
    # Line 770
    beqz	$v0,.L0d997780
    sw	$v0,28360($s0)
    # Line 777
    ld	$a4,24($sp)
    ld	$t8,0($sp)
    # Line 776
    sw	$s2,28352($s0)
    # Line 778
    lw	$a0,28360($s0)
    # Line 777
    bltz	$t8,.L0d997564
    addiu	$a4,$a4,-4
    sra	$a1,$s2,0x1
    ld	$a5,16($sp)
    # Line 778
    addu	$a0,$a4,$a0
    # Line 777
    addiu	$a6,$a5,-4
    beqz	$a7,.L0d9976ac
    addu	$a5,$a4,$a5
    # Line 778
    lwc1	$f4,0($a5)
    c.lt.s $f5,$f4
    # Line 777
    addiu	$a5,$a5,-4
    addiu	$a4,$a4,-4
    # Line 778
    bc1f .L0d9976a0
    lwc1	$f6,3540($s1)
    # Line 780
    add.s	$f3,$f6,$f4
    trunc.w.s	$f3,$f3
    b	.L0d9976ac
    swc1	$f3,0($a0)
.L0d9976a0:
    # Line 783
    sub.s	$f7,$f4,$f6
    trunc.w.s	$f7,$f7
    swc1	$f7,0($a0)
.L0d9976ac:
    bnezl	$a1,.L0d9976d8
    # Line 778
    lwc1	$f4,0($a5)
.L0d9976b4:
    b	.L0d997568
    ld	$s0,8($sp)
    nop
.L0d9976c0:
    # Line 783
    sub.s	$f8,$f4,$f6
    trunc.w.s	$f8,$f8
    swc1	$f8,0($a0)
.L0d9976cc:
    # Line 777
    beq	$a5,$a6,.L0d9976b4
    addiu	$a4,$a4,-4
    # Line 778
    lwc1	$f4,0($a5)
.L0d9976d8:
    c.lt.s $f5,$f4
    lw	$a0,28360($s0)
    lwc1	$f6,3540($s1)
    bc1f .L0d9976fc
    addu	$a0,$a4,$a0
    # Line 780
    add.s	$f9,$f6,$f4
    trunc.w.s	$f9,$f9
    b	.L0d997708
    swc1	$f9,0($a0)
.L0d9976fc:
    # Line 783
    sub.s	$f10,$f4,$f6
    trunc.w.s	$f10,$f10
    swc1	$f10,0($a0)
.L0d997708:
    # Line 778
    lwc1	$f4,-4($a5)
    c.lt.s	$f5,$f4
    lw	$a0,28360($s0)
    # Line 777
    addiu	$a4,$a4,-4
    # Line 778
    lwc1	$f6,3540($s1)
    # Line 777
    addiu	$a5,$a5,-8
    # Line 778
    bc1f	.L0d9976c0
    addu	$a0,$a4,$a0
    # Line 780
    add.s	$f11,$f6,$f4
    trunc.w.s	$f11,$f11
    b	.L0d9976cc
    swc1	$f11,0($a0)
    # Line 751
    # lw $t9, -26452($gp) # &__glSetError
.L0d99773c:
    jal	__glSetError
    li	$a0,1281
    b	.L0d997564
    ld	$ra,56($sp)
.L0d99774c:
    # Line 826
    ld	$gp,48($sp)
    # Line 812
    sw	$zero,28352($s0)
    ld	$ra,56($sp)
    # Line 826
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d99776c:
    # Line 825
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d997564
    ld	$ra,56($sp)
.L0d997780:
    # Line 826
    ld	$gp,48($sp)
    # Line 773
    sw	$zero,28352($s0)
    # Line 826
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d99779c:
    # Line 741
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d997564
    ld	$ra,56($sp)
.end __glim_PixelMapfv

# Function: __glim_PixelMapuiv
# Declared: Line 830 (Source lines: 832-911)
# Address: 0x0d9977b0 - 0x0d997b7c (Size: 972 bytes, Frame: 192)
.globl __glim_PixelMapuiv
.ent __glim_PixelMapuiv
__glim_PixelMapuiv:
    # Line 832
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    # Line 836
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    lw	$at,4120($zero)
    # Line 832
    sd	$s2,32($sp)
    # Line 836
    li	$v0,1
    # Line 832
    lui	$v1,0xc
    move	$s2,$a1
    sd	$s0,24($sp)
    addiu	$v1,$v1,-27172
    sd	$gp,48($sp)
    # Line 836
    beq	$at,$v0,.L0d997b68
    # Line 832
    addu	$gp,$t9,$v1
    # Line 841
    blez	$a1,.L0d997b0c
    # Line 846
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 841
    lw	$a1,3772($s1)
    slt	$a1,$a1,$s2
    bnez	$a1,.L0d997b0c
    # Line 846
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 847
    la	$a1,sub_0da40000
    addiu	$a3,$a0,-3184
    sltiu	$a4,$a3,10
    addiu	$a1,$a1,18124
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d997b38
    addu	$a1,$a1,$a3
    lw	$a3,0($a1)
    jr	$a3
    # Line 880
    addiu	$a1,$s2,-1
.L0d997828:
    # Line 853
    addiu	$a4,$s2,-1
    and	$a5,$a4,$s2
    # Line 859
    lui	$t8,0xffff
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    # Line 853
    beqz	$a5,.L0d997a28
    # Line 859
    sll	$s0,$s0,0x2
    # Line 858
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9979f4
    ld	$ra,56($sp)
.L0d997858:
    # Line 888
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d99788c
    sd	$a2,8($sp)
    # Line 893
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 894
    sw	$zero,28360($s0)
.L0d99788c:
    # Line 896
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,16($sp)
    ld	$ra,56($sp)
    beqz	$v0,.L0d997b1c
    sw	$v0,28360($s0)
    # Line 903
    ld	$a5,16($sp)
    addiu	$t8,$s2,-1
    addiu	$a5,$a5,-4
    # Line 902
    sw	$s2,28352($s0)
    # Line 903
    bltz	$t8,.L0d9979d8
    move	$a1,$a5
    ld	$a2,8($sp)
    andi	$a0,$s2,0x3
    addiu	$a4,$a2,-4
    beqz	$a0,.L0d997910
    addu	$a2,$a5,$a2
.L0d9978d8:
    # Line 904
    lw	$a5,0($a2)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f0
    cvt.s.l	$f0,$f0
    lwc1	$f1,3568($s1)
    lw	$a3,28360($s0)
    addiu	$a0,$a0,-1
    # Line 903
    addiu	$a2,$a2,-4
    # Line 904
    mul.s	$f0,$f0,$f1
    addu	$a3,$a3,$a1
    # Line 903
    addiu	$a1,$a1,-4
    bnez	$a0,.L0d9978d8
    # Line 904
    swc1	$f0,0($a3)
.L0d997910:
    sra	$a6,$s2,0x2
    beqz	$a6,.L0d9979d8
    nop
    nop
.L0d997920:
    lw	$a0,0($a2)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f4
    cvt.s.l	$f4,$f4
    lwc1	$f5,3568($s1)
    lw	$v1,28360($s0)
    mul.s	$f4,$f4,$f5
    addu	$v1,$v1,$a1
    swc1	$f4,0($v1)
    lw	$v0,-4($a2)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f3
    cvt.s.l	$f3,$f3
    lwc1	$f4,3568($s1)
    lw	$t9,28360($s0)
    # Line 903
    addiu	$at,$a1,-4
    # Line 904
    mul.s	$f3,$f3,$f4
    addu	$t9,$t9,$at
    swc1	$f3,0($t9)
    lw	$t8,-8($a2)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f2
    cvt.s.l	$f2,$f2
    lwc1	$f3,3568($s1)
    lw	$t2,28360($s0)
    # Line 903
    addiu	$t3,$a1,-8
    # Line 904
    mul.s	$f2,$f2,$f3
    addu	$t2,$t2,$t3
    swc1	$f2,0($t2)
    lw	$t1,-12($a2)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f1
    cvt.s.l	$f1,$f1
    lwc1	$f2,3568($s1)
    lw	$a7,28360($s0)
    # Line 903
    addiu	$a2,$a2,-16
    addiu	$t0,$a1,-12
    # Line 904
    mul.s	$f1,$f1,$f2
    addu	$a7,$a7,$t0
    # Line 903
    addiu	$a1,$a1,-16
    bne	$a2,$a4,.L0d997920
    # Line 904
    swc1	$f1,0($a7)
.L0d9979d8:
    ld	$s0,24($sp)
    # Line 911
    ld	$gp,48($sp)
    # Line 907
    sb	$zero,30588($s1)
    # Line 911
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9979f4:
    ld	$s0,24($sp)
.L0d9979f8:
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d997a0c:
    # Line 880
    and	$a1,$s2,$a1
    beqz	$a1,.L0d997858
    # Line 885
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9979f4
    ld	$ra,56($sp)
.L0d997a28:
    # Line 859
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    sd	$a4,0($sp)
    beqz	$a1,.L0d997a50
    sd	$a2,8($sp)
    # Line 862
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 863
    sw	$zero,28360($s0)
.L0d997a50:
    # Line 865
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,16($sp)
    ld	$ra,56($sp)
    andi	$a3,$s2,0x1
    beqz	$v0,.L0d997b4c
    sw	$v0,28360($s0)
    # Line 872
    ld	$a5,16($sp)
    ld	$t8,0($sp)
    addiu	$a5,$a5,-4
    # Line 871
    sw	$s2,28352($s0)
    # Line 872
    bltz	$t8,.L0d9979f4
    move	$a1,$a5
    ld	$a2,8($sp)
    sra	$t0,$s2,0x1
    addiu	$a4,$a2,-4
    beqz	$a3,.L0d997abc
    addu	$a2,$a5,$a2
    # Line 873
    lw	$a7,28360($s0)
    # Line 872
    ld	$a1,16($sp)
    # Line 873
    lw	$a6,0($a2)
    addu	$a7,$a7,$a5
    # Line 872
    addiu	$a2,$a2,-4
    addiu	$a1,$a1,-8
    # Line 873
    sw	$a6,0($a7)
.L0d997abc:
    beqz	$t0,.L0d997b00
    nop
    nop
    nop
    nop
.L0d997ad0:
    lw	$t9,28360($s0)
    addu	$t9,$t9,$a1
    lw	$t8,0($a2)
    sw	$t8,0($t9)
    lw	$t2,28360($s0)
    # Line 872
    addiu	$a2,$a2,-8
    addiu	$t3,$a1,-4
    # Line 873
    addu	$t2,$t2,$t3
    lw	$t1,4($a2)
    # Line 872
    addiu	$a1,$a1,-8
    bne	$a2,$a4,.L0d997ad0
    # Line 873
    sw	$t1,0($t2)
.L0d997b00:
    b	.L0d9979f8
    ld	$s0,24($sp)
    # Line 846
    # lw $t9, -26452($gp) # &__glSetError
.L0d997b0c:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9979f4
    ld	$ra,56($sp)
.L0d997b1c:
    # Line 911
    ld	$gp,48($sp)
    # Line 899
    sw	$zero,28352($s0)
    # Line 911
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d997b38:
    # Line 910
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9979f4
    ld	$ra,56($sp)
.L0d997b4c:
    # Line 911
    ld	$gp,48($sp)
    # Line 868
    sw	$zero,28352($s0)
    # Line 911
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d997b68:
    # Line 836
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9979f4
    ld	$ra,56($sp)
.end __glim_PixelMapuiv

# Function: __glim_PixelMapusv
# Declared: Line 915 (Source lines: 917-996)
# Address: 0x0d997b80 - 0x0d997f18 (Size: 920 bytes, Frame: 192)
.globl __glim_PixelMapusv
.ent __glim_PixelMapusv
__glim_PixelMapusv:
    # Line 917
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    # Line 921
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    lw	$at,4120($zero)
    # Line 917
    sd	$s2,32($sp)
    # Line 921
    li	$v0,1
    # Line 917
    lui	$v1,0xc
    move	$s2,$a1
    sd	$s0,24($sp)
    addiu	$v1,$v1,-28148
    sd	$gp,48($sp)
    # Line 921
    beq	$at,$v0,.L0d997f04
    # Line 917
    addu	$gp,$t9,$v1
    # Line 926
    blez	$a1,.L0d997ebc
    # Line 931
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 926
    lw	$a1,3772($s1)
    slt	$a1,$a1,$s2
    bnez	$a1,.L0d997ebc
    # Line 931
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 932
    la	$a1,sub_0da40000
    addiu	$a3,$a0,-3184
    sltiu	$a4,$a3,10
    addiu	$a1,$a1,18164
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d997ee8
    addu	$a1,$a1,$a3
    lw	$a3,0($a1)
    jr	$a3
    # Line 965
    addiu	$a5,$s2,-1
.L0d997bf8:
    # Line 938
    addiu	$a4,$s2,-1
    and	$a5,$a4,$s2
    # Line 944
    lui	$t8,0xffff
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    # Line 938
    beqz	$a5,.L0d997ddc
    # Line 944
    sll	$s0,$s0,0x2
    # Line 943
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d997da4
    ld	$ra,56($sp)
.L0d997c28:
    # Line 973
    sll	$s0,$a0,0x2
.L0d997c2c:
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d997c5c
    sd	$a2,16($sp)
    # Line 978
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 979
    sw	$zero,28360($s0)
.L0d997c5c:
    # Line 981
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,0($sp)
    ld	$ra,56($sp)
    beqz	$v0,.L0d997ecc
    sw	$v0,28360($s0)
    # Line 988
    ld	$a1,0($sp)
    addiu	$a5,$s2,-1
    # Line 987
    sw	$s2,28352($s0)
    # Line 988
    bltz	$a5,.L0d997d88
    addiu	$a1,$a1,-4
    ld	$a2,16($sp)
    andi	$a4,$s2,0x3
    li	$a0,-4
    addu	$a3,$a5,$a5
    beqz	$a4,.L0d997cd8
    addu	$a2,$a2,$a3
.L0d997ca8:
    # Line 989
    lhu	$a6,0($a2)
    mtc1	$a6,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3560($s1)
    lw	$a5,28360($s0)
    addiu	$a4,$a4,-1
    # Line 988
    addiu	$a2,$a2,-2
    # Line 989
    mul.s	$f0,$f0,$f1
    addu	$a5,$a5,$a1
    # Line 988
    addiu	$a1,$a1,-4
    bnez	$a4,.L0d997ca8
    # Line 989
    swc1	$f0,0($a5)
.L0d997cd8:
    sra	$a7,$s2,0x2
    beqz	$a7,.L0d997d88
    nop
    nop
    nop
    nop
.L0d997cf0:
    lhu	$a4,0($a2)
    mtc1	$a4,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3560($s1)
    lw	$a3,28360($s0)
    mul.s	$f4,$f4,$f5
    addu	$a3,$a3,$a1
    swc1	$f4,0($a3)
    lhu	$v1,-2($a2)
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3560($s1)
    lw	$at,28360($s0)
    # Line 988
    addiu	$v0,$a1,-4
    # Line 989
    mul.s	$f3,$f3,$f4
    addu	$at,$at,$v0
    swc1	$f3,0($at)
    lhu	$t9,-4($a2)
    mtc1	$t9,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3560($s1)
    lw	$t3,28360($s0)
    # Line 988
    addiu	$t8,$a1,-8
    # Line 989
    mul.s	$f2,$f2,$f3
    addu	$t3,$t3,$t8
    swc1	$f2,0($t3)
    lhu	$t2,-6($a2)
    mtc1	$t2,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3560($s1)
    lw	$t0,28360($s0)
    # Line 988
    addiu	$t1,$a1,-12
    addiu	$a1,$a1,-16
    # Line 989
    mul.s	$f1,$f1,$f2
    addu	$t0,$t0,$t1
    # Line 988
    addiu	$a2,$a2,-8
    bne	$a0,$a1,.L0d997cf0
    # Line 989
    swc1	$f1,0($t0)
.L0d997d88:
    ld	$s0,24($sp)
    # Line 996
    ld	$gp,48($sp)
    # Line 992
    sb	$zero,30588($s1)
    # Line 996
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d997da4:
    ld	$s0,24($sp)
.L0d997da8:
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d997dbc:
    # Line 965
    and	$a5,$s2,$a5
    beqz	$a5,.L0d997c2c
    # Line 973
    sll	$s0,$a0,0x2
    # Line 970
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d997da4
    ld	$ra,56($sp)
.L0d997ddc:
    # Line 944
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    sd	$a4,8($sp)
    beqz	$a1,.L0d997e04
    sd	$a2,16($sp)
    # Line 947
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 948
    sw	$zero,28360($s0)
.L0d997e04:
    # Line 950
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,0($sp)
    ld	$ra,56($sp)
    andi	$a4,$s2,0x1
    # Line 957
    li	$a0,-4
    # Line 950
    beqz	$v0,.L0d997efc
    sw	$v0,28360($s0)
    # Line 957
    ld	$a1,0($sp)
    ld	$t8,8($sp)
    # Line 956
    sw	$s2,28352($s0)
    # Line 957
    bltz	$t8,.L0d997da4
    addiu	$a1,$a1,-4
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    sra	$a6,$s2,0x1
    addu	$a3,$a3,$a3
    beqz	$a4,.L0d997e74
    addu	$a2,$a2,$a3
    # Line 958
    lw	$a5,28360($s0)
    addu	$a5,$a5,$a1
    # Line 957
    ld	$a1,0($sp)
    # Line 958
    lhu	$a4,0($a2)
    # Line 957
    addiu	$a2,$a2,-2
    # Line 958
    sw	$a4,0($a5)
    # Line 957
    addiu	$a1,$a1,-8
.L0d997e74:
    beqz	$a6,.L0d997eb0
    nop
    nop
.L0d997e80:
    # Line 958
    lw	$t3,28360($s0)
    addu	$t3,$t3,$a1
    lhu	$t2,0($a2)
    sw	$t2,0($t3)
    lw	$t0,28360($s0)
    # Line 957
    addiu	$t1,$a1,-4
    addiu	$a1,$a1,-8
    # Line 958
    addu	$t0,$t0,$t1
    lhu	$a7,-2($a2)
    # Line 957
    addiu	$a2,$a2,-4
    bne	$a0,$a1,.L0d997e80
    # Line 958
    sw	$a7,0($t0)
.L0d997eb0:
    b	.L0d997da8
    ld	$s0,24($sp)
    # Line 931
    # lw $t9, -26452($gp) # &__glSetError
.L0d997ebc:
    jal	__glSetError
    li	$a0,1281
    b	.L0d997da4
    ld	$ra,56($sp)
.L0d997ecc:
    # Line 996
    ld	$gp,48($sp)
    # Line 984
    sw	$zero,28352($s0)
    # Line 996
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d997ee8:
    # Line 995
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d997da4
    ld	$ra,56($sp)
.L0d997efc:
    # Line 953
    b	.L0d997da4
    sw	$zero,28352($s0)
.L0d997f04:
    # Line 921
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d997da4
    ld	$ra,56($sp)
.end __glim_PixelMapusv

# Function: __glim_ReadBuffer
# Declared: Line 1003 (Source lines: 1004-1043)
# Address: 0x0d997f20 - 0x0d998038 (Size: 280 bytes, Frame: 16)
.globl __glim_ReadBuffer
.ent __glim_ReadBuffer
__glim_ReadBuffer:
    # Line 1043
    li	$t0,2
    # Line 1004
    addiu	$sp,$sp,-16
    # Line 1006
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 1004
    lui	$v1,0xc
    # Line 1020
    li	$a6,1029
    sd	$ra,8($sp)
    # Line 1004
    addiu	$v1,$v1,-29076
    sd	$gp,0($sp)
    # Line 1006
    beq	$at,$v0,.L0d998014
    # Line 1004
    addu	$gp,$t9,$v1
    # Line 1008
    addiu	$a4,$a0,-1024
    la	$a3,sub_0da40000
    sltiu	$a5,$a4,13
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,18204
    beqz	$a5,.L0d997f7c
    addu	$a3,$a3,$a4
    # Line 1012
    li	$t1,1028
    # Line 1008
    lw	$a4,0($a3)
    jr	$a4
    # Line 1036
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d997f7c:
    # Line 1039
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d997fc4
    ld	$ra,8($sp)
.L0d997f90:
    # Line 1016
    lbu	$a5,3222($a2)
    beqz	$a5,.L0d998028
    # Line 1017
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1020
    sw	$a6,1236($a2)
.L0d997fa0:
    # Line 1042
    sw	$a0,1240($a2)
    # Line 1043
    sw	$t0,4120($zero)
    ld	$ra,8($sp)
    lw	$a7,11756($a2)
    # Line 1040
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 1043
    ori	$a7,$a7,0x10
    # Line 1040
    jr	$ra
    # Line 1043
    sw	$a7,11756($a2)
.L0d997fc4:
    # Line 1040
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d997fd0:
    # Line 1013
    b	.L0d997fa0
    # Line 1012
    sw	$t1,1236($a2)
.L0d997fd8:
    # Line 1026
    lw	$t3,3296($a2)
    addiu	$t2,$a0,-1033
    slt	$t2,$t2,$t3
    beqz	$t2,.L0d998004
    # Line 1028
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1032
    b	.L0d997fa0
    # Line 1031
    sw	$a0,1236($a2)
.L0d997ff4:
    # Line 1036
    jal	__glSetError
    li	$a0,1282
    b	.L0d997fc4
    ld	$ra,8($sp)
.L0d998004:
    # Line 1028
    jalr	$t9
    li	$a0,1282
    b	.L0d997fc4
    ld	$ra,8($sp)
.L0d998014:
    # Line 1006
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d997fc4
    ld	$ra,8($sp)
.L0d998028:
    # Line 1017
    jalr	$t9
    li	$a0,1282
    b	.L0d997fc4
    ld	$ra,8($sp)
.end __glim_ReadBuffer

# Function: __glCheckDrawPixelArgs
# Declared: Line 1046 (Source lines: 1048-1156)
# Address: 0x0d998040 - 0x0d9984f8 (Size: 1208 bytes, Frame: 32)
.globl __glCheckDrawPixelArgs
.ent __glCheckDrawPixelArgs
__glCheckDrawPixelArgs:
    # Line 1048
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$ra,16($sp)
    addiu	$at,$at,-29364
    sd	$gp,8($sp)
    # Line 1051
    bltz	$a1,.L0d998438
    # Line 1048
    addu	$gp,$t9,$at
    # Line 1051
    bltz	$a2,.L0d99843c
    # Line 1052
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1055
    sltiu	$v0,$a3,6407
    bnez	$v0,.L0d9980b4
    sltiu	$t0,$a3,6403
    sltiu	$v1,$a3,6408
    bnez	$v1,.L0d9980f8
    li	$v0,0x8000
    sltu	$a2,$a3,$v0
    bnez	$a2,.L0d99834c
    sltiu	$t9,$a3,6409
    sltu	$a5,$v0,$a3
    beqz	$a5,.L0d9980f8
    li	$v0,0x80e1
    sltu	$a6,$a3,$v0
    bnez	$a6,.L0d998450
    li	$t2,0x80e0
    sltu	$a7,$v0,$a3
    beqz	$a7,.L0d9980f8
    nop
    b	.L0d99826c
    # Line 1084
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9980b4:
    # Line 1055
    bnez	$t0,.L0d9981d0
    sltiu	$ra,$a3,6401
    sltiu	$t1,$a3,6404
    bnez	$t1,.L0d9980f8
    sltiu	$t2,$a3,6405
    bnez	$t2,.L0d998264
    li	$t3,6404
    sltiu	$t3,$a3,6406
    bnez	$t3,.L0d9980f8
    li	$t8,6406
    beq	$a3,$t8,.L0d9980f8
    nop
    b	.L0d99826c
    # Line 1084
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9980ec:
    # Line 1055
    li	$t9,6408
    bne	$a3,$t9,.L0d99826c
    # Line 1084
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9980f8:
    # Line 1075
    lbu	$ra,3221($a0)
    beqz	$ra,.L0d99812c
    # Line 1088
    li	$v0,0x8034
    # Line 1077
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1078
    move	$v0,$zero
    # Line 1085
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d998124:
    # Line 1055
    bne	$a3,$at,.L0d998268
    # Line 1088
    li	$v0,0x8034
.L0d99812c:
    sltu	$v1,$a4,$v0
    beqz	$v1,.L0d99821c
    sltiu	$a2,$a4,5125
    bnez	$a2,.L0d99831c
    sltiu	$a5,$a4,5126
    bnez	$a5,.L0d998190
    li	$v0,0x8032
    sltu	$a6,$a4,$v0
    beqz	$a6,.L0d9982ec
    sltiu	$a7,$a4,6656
    bnez	$a7,.L0d9984b8
    sltiu	$t0,$a4,6657
    beqz	$t0,.L0d9983dc
    # Line 1091
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1092
    b	.L0d9981c4
    move	$v0,$zero
.L0d998178:
    # Line 1088
    sltiu	$t1,$a4,5121
    bnez	$t1,.L0d9983d8
    li	$t0,5120
    sltiu	$t2,$a4,5122
    beqz	$t2,.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998190:
    # Line 1138
    lw	$v0,1224($a0)
    li	$t3,0x85a2
    beq	$v0,$t3,.L0d9981b0
    li	$t8,0x85a3
    beq	$v0,$t8,.L0d998398
    li	$t9,0x85a4
    beq	$v0,$t9,.L0d998398
    sd	$a1,0($sp)
.L0d9981b0:
    ld	$ra,16($sp)
.L0d9981b4:
    # Line 1156
    li	$v0,1
    # Line 1085
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9981c4:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9981d0:
    # Line 1055
    bnez	$ra,.L0d998208
    li	$v1,6400
    sltiu	$at,$a3,6402
    beqz	$at,.L0d998124
    li	$at,6402
    lbu	$v0,3226($a0)
    bnez	$v0,.L0d998214
    # Line 1088
    li	$v0,0x8034
    # Line 1058
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1059
    b	.L0d9981c4
    move	$v0,$zero
.L0d998208:
    # Line 1055
    bne	$a3,$v1,.L0d99826c
    # Line 1084
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1088
    li	$v0,0x8034
.L0d998214:
    sltu	$a2,$a4,$v0
    bnez	$a2,.L0d9982d0
.L0d99821c:
    sltu	$a5,$v0,$a4
    beqz	$a5,.L0d9982a0
    li	$v0,0x8364
    sltu	$a6,$a4,$v0
    bnez	$a6,.L0d99836c
    sltu	$a7,$v0,$a4
    beqz	$a7,.L0d9982f8
    # Line 1107
    li	$a7,6407
    # Line 1088
    li	$v0,0x8367
    sltu	$t0,$a4,$v0
    bnez	$t0,.L0d998460
    sltu	$t1,$v0,$a4
    beqz	$t1,.L0d9982a0
    li	$t2,0x8368
    beq	$a4,$t2,.L0d9982a4
    # Line 1124
    li	$ra,6408
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998264:
    # Line 1055
    beq	$a3,$t3,.L0d9980f8
.L0d998268:
    # Line 1084
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d99826c:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1085
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d998288:
    # Line 1088
    li	$v0,0x8036
    sltu	$t8,$a4,$v0
    bnez	$t8,.L0d998484
    li	$t9,0x8035
    sltu	$t9,$v0,$a4
    bnez	$t9,.L0d9983dc
.L0d9982a0:
    # Line 1124
    li	$ra,6408
.L0d9982a4:
    beq	$a3,$ra,.L0d998190
    li	$at,0x8000
    beq	$a3,$at,.L0d998190
    li	$v0,0x80e1
    beq	$a3,$v0,.L0d998190
    # Line 1130
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1131
    b	.L0d9981c4
    move	$v0,$zero
.L0d9982d0:
    # Line 1088
    sltiu	$v1,$a4,5125
    bnez	$v1,.L0d99831c
    sltiu	$a2,$a4,5126
    bnez	$a2,.L0d998190
    li	$v0,0x8032
    sltu	$a5,$a4,$v0
    bnez	$a5,.L0d9984dc
.L0d9982ec:
    sltu	$a6,$v0,$a4
    bnez	$a6,.L0d9984a4
    # Line 1107
    li	$a7,6407
.L0d9982f8:
    beq	$a3,$a7,.L0d998190
    li	$t0,0x80e0
    beq	$a3,$t0,.L0d998190
    # Line 1112
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1113
    b	.L0d9981c4
    move	$v0,$zero
.L0d99831c:
    # Line 1088
    sltiu	$t1,$a4,5122
    bnez	$t1,.L0d998178
    sltiu	$t2,$a4,5123
    bnez	$t2,.L0d998190
    sltiu	$t3,$a4,5124
    bnez	$t3,.L0d998494
    li	$ra,5123
    sltiu	$t8,$a4,5125
    bnez	$t8,.L0d998190
    nop
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d99834c:
    # Line 1055
    bnez	$t9,.L0d9980ec
    sltiu	$ra,$a3,6410
    bnez	$ra,.L0d9980f8
    li	$at,6410
    beq	$a3,$at,.L0d9980f8
    nop
    b	.L0d99826c
    # Line 1084
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d99836c:
    # Line 1088
    li	$v0,0x8362
    sltu	$v1,$a4,$v0
    bnez	$v1,.L0d998288
    sltu	$a2,$v0,$a4
    beqz	$a2,.L0d9982f8
    # Line 1107
    li	$a7,6407
    # Line 1088
    li	$a5,0x8363
    beq	$a4,$a5,.L0d9982f8
    # Line 1107
    li	$a7,6407
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998398:
    # Line 1143
    # lw $t9, -27540($gp) # &__glSpecElementsPerGroup
    move	$a0,$a3
    sd	$a1,0($sp)
    jal	__glSpecElementsPerGroup
    move	$a1,$a4
    li	$a6,3
    beq	$v0,$a6,.L0d998400
    # Line 1146
    ld	$t1,0($sp)
    # Line 1143
    li	$a7,4
    beq	$v0,$a7,.L0d9983fc
    # Line 1152
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1153
    b	.L0d9981c4
    move	$v0,$zero
.L0d9983d8:
    # Line 1088
    beq	$a4,$t0,.L0d998190
.L0d9983dc:
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9983e0:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1136
    move	$v0,$zero
    # Line 1085
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9983fc:
    # Line 1146
    ld	$t1,0($sp)
.L0d998400:
    sra	$t2,$t1,0x1f
    xor	$t1,$t1,$t2
    subu	$t1,$t1,$t2
    andi	$t1,$t1,0x1
    xor	$t1,$t1,$t2
    subu	$t1,$t1,$t2
    beqz	$t1,.L0d9981b4
    ld	$ra,16($sp)
    # Line 1147
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1148
    b	.L0d9981c4
    move	$v0,$zero
.L0d998438:
    # Line 1052
    # lw $t9, -26452($gp) # &__glSetError
.L0d99843c:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,16($sp)
    # Line 1053
    b	.L0d9981c4
    move	$v0,$zero
.L0d998450:
    # Line 1055
    beq	$a3,$t2,.L0d9980f8
    nop
    b	.L0d99826c
    # Line 1084
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998460:
    # Line 1088
    li	$v0,0x8366
    sltu	$t3,$a4,$v0
    bnez	$t3,.L0d9984cc
    li	$v1,0x8365
    sltu	$t8,$v0,$a4
    beqz	$t8,.L0d9982a4
    # Line 1124
    li	$ra,6408
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998484:
    # Line 1088
    beq	$a4,$t9,.L0d9982a4
    # Line 1124
    li	$ra,6408
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998494:
    # Line 1088
    beq	$a4,$ra,.L0d998190
    nop
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9984a4:
    # Line 1088
    li	$at,0x8033
    beq	$a4,$at,.L0d9982a4
    # Line 1124
    li	$ra,6408
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9984b8:
    # Line 1088
    li	$v0,5126
    beq	$a4,$v0,.L0d998190
    nop
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9984cc:
    # Line 1088
    beq	$a4,$v1,.L0d9982a4
    # Line 1124
    li	$ra,6408
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9984dc:
    # Line 1088
    sltiu	$a2,$a4,6656
    bnez	$a2,.L0d9984b8
    sltiu	$a5,$a4,6657
    bnez	$a5,.L0d998190
    nop
    b	.L0d9983e0
    # Line 1135
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end __glCheckDrawPixelArgs

# Function: __glCheckReadPixelArgs
# Declared: Line 1159 (Source lines: 1161-1270)
# Address: 0x0d998500 - 0x0d9989b4 (Size: 1204 bytes, Frame: 32)
.globl __glCheckReadPixelArgs
.ent __glCheckReadPixelArgs
__glCheckReadPixelArgs:
    # Line 1161
    addiu	$sp,$sp,-32
    lui	$at,0xc
    move	$v0,$a1
    sd	$ra,16($sp)
    addiu	$at,$at,-30580
    sd	$gp,8($sp)
    # Line 1162
    bltz	$a1,.L0d9988f8
    # Line 1161
    addu	$gp,$t9,$at
    # Line 1162
    bltz	$a2,.L0d9988f8
    # Line 1166
    sltiu	$v1,$a3,6407
    bnez	$v1,.L0d998578
    sd	$a1,0($sp)
    sltiu	$a1,$a3,6408
    bnez	$a1,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    li	$v0,0x8000
    sltu	$a2,$a3,$v0
    bnez	$a2,.L0d998740
    sltiu	$t3,$a3,6409
    sltu	$a5,$v0,$a3
    beqz	$a5,.L0d9985d0
    li	$v0,0x80e1
    sltu	$a6,$a3,$v0
    bnez	$a6,.L0d998910
    li	$ra,0x80e0
    sltu	$a7,$v0,$a3
    beqz	$a7,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    b	.L0d9987a4
    # Line 1199
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998578:
    # Line 1166
    sltiu	$t0,$a3,6403
    bnez	$t0,.L0d9985b8
    sltiu	$t9,$a3,6401
    sltiu	$t1,$a3,6404
    bnez	$t1,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    sltiu	$t2,$a3,6405
    bnez	$t2,.L0d998880
    sltiu	$t3,$a3,6406
    bnez	$t3,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    li	$t8,6406
    beq	$a3,$t8,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    b	.L0d9987a4
    # Line 1199
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9985b8:
    # Line 1166
    bnez	$t9,.L0d998764
    sltiu	$ra,$a3,6402
    beqz	$ra,.L0d998894
    li	$t0,6402
    lbu	$at,3226($a0)
    beqz	$at,.L0d99899c
.L0d9985d0:
    # Line 1202
    li	$v0,0x8034
.L0d9985d4:
    sltu	$v1,$a4,$v0
    bnez	$v1,.L0d998620
    sltu	$a1,$v0,$a4
    beqz	$a1,.L0d998690
    li	$v0,0x8364
    sltu	$a2,$a4,$v0
    bnez	$a2,.L0d9987c0
    sltu	$a5,$v0,$a4
    beqz	$a5,.L0d998650
    li	$v0,0x8367
    sltu	$a6,$a4,$v0
    bnez	$a6,.L0d998920
    sltu	$a7,$v0,$a4
    beqz	$a7,.L0d998690
    li	$t0,0x8368
    beq	$a4,$t0,.L0d998694
    # Line 1238
    li	$v0,6408
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998620:
    # Line 1202
    sltiu	$v0,$a4,5125
    bnez	$v0,.L0d998718
    sltiu	$a2,$a4,5122
    sltiu	$t1,$a4,5126
    bnez	$t1,.L0d9986d4
    li	$v0,0x8032
    sltu	$t2,$a4,$v0
    bnez	$t2,.L0d9988c0
    sltiu	$t2,$a4,6656
    sltu	$t3,$v0,$a4
    bnez	$t3,.L0d998954
    li	$a2,0x8033
.L0d998650:
    # Line 1221
    li	$t8,6407
.L0d998654:
    beq	$a3,$t8,.L0d9986d4
    li	$t9,0x80e0
    beq	$a3,$t9,.L0d9986d4
    # Line 1226
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1227
    b	.L0d99870c
    move	$v0,$zero
.L0d998678:
    # Line 1202
    li	$v0,0x8036
    sltu	$ra,$a4,$v0
    bnez	$ra,.L0d998940
    sltu	$at,$v0,$a4
    bnez	$at,.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998690:
    # Line 1238
    li	$v0,6408
.L0d998694:
    beq	$a3,$v0,.L0d9986d4
    li	$v1,0x8000
    beq	$a3,$v1,.L0d9986d4
    li	$a1,0x80e1
    beq	$a3,$a1,.L0d9986d4
    # Line 1244
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1245
    b	.L0d99870c
    move	$v0,$zero
.L0d9986c0:
    # Line 1202
    sltiu	$a5,$a4,5121
    bnez	$a5,.L0d998824
    li	$a5,5120
    beqz	$a2,.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9986d4:
    # Line 1252
    lw	$v0,1180($a0)
    li	$a6,0x85a2
    beq	$v0,$a6,.L0d9986f8
    li	$a7,0x85a3
    beq	$v0,$a7,.L0d9987f0
    # Line 1257
    nop	# was lw $t9, -27540($gp) # &__glSpecElementsPerGroup
    # Line 1252
    li	$t0,0x85a4
    beq	$v0,$t0,.L0d9987f0
    # Line 1257
    nop	# was lw $t9, -27540($gp) # &__glSpecElementsPerGroup
.L0d9986f8:
    ld	$ra,16($sp)
    # Line 1270
    li	$v0,1
    # Line 1200
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d99870c:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d998718:
    # Line 1202
    bnez	$a2,.L0d9986c0
    sltiu	$t1,$a4,5123
    bnez	$t1,.L0d9986d4
    sltiu	$t2,$a4,5124
    bnez	$t2,.L0d998978
    li	$a6,5123
    bnez	$v0,.L0d9986d4
    nop
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998740:
    # Line 1166
    bnez	$t3,.L0d998794
    sltiu	$t8,$a3,6410
    bnez	$t8,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    li	$t9,6410
    beq	$a3,$t9,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    b	.L0d9987a4
    # Line 1199
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998764:
    # Line 1166
    li	$ra,6400
    bne	$a3,$ra,.L0d9987a4
    # Line 1199
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1166
    lbu	$at,3220($a0)
    beqz	$at,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    # Line 1176
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1177
    b	.L0d99870c
    move	$v0,$zero
.L0d998794:
    # Line 1166
    li	$v0,6408
    beq	$a3,$v0,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    # Line 1199
    # lw $t9, -26452($gp) # &__glSetError
.L0d9987a4:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1200
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9987c0:
    # Line 1202
    li	$v0,0x8362
    sltu	$v1,$a4,$v0
    bnez	$v1,.L0d998678
    sltu	$a1,$v0,$a4
    beqz	$a1,.L0d998654
    # Line 1221
    li	$t8,6407
    # Line 1202
    li	$a2,0x8363
    beq	$a4,$a2,.L0d998654
    # Line 1221
    li	$t8,6407
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1257
    # lw $t9, -27540($gp) # &__glSpecElementsPerGroup
.L0d9987f0:
    move	$a0,$a3
    jal	__glSpecElementsPerGroup
    move	$a1,$a4
    li	$a3,3
    beq	$v0,$a3,.L0d998848
    li	$a4,4
    beq	$v0,$a4,.L0d998848
    # Line 1266
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1267
    b	.L0d99870c
    move	$v0,$zero
.L0d998824:
    # Line 1202
    beq	$a4,$a5,.L0d9986d4
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d99882c:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1250
    move	$v0,$zero
    # Line 1200
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d998848:
    # Line 1260
    ld	$a6,0($sp)
    sra	$a7,$a6,0x1f
    xor	$a6,$a6,$a7
    subu	$a6,$a6,$a7
    andi	$a6,$a6,0x1
    xor	$a6,$a6,$a7
    subu	$a6,$a6,$a7
    beqz	$a6,.L0d9986f8
    # Line 1261
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1262
    b	.L0d99870c
    move	$v0,$zero
.L0d998880:
    # Line 1166
    li	$a7,6404
    beq	$a3,$a7,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    b	.L0d9987a4
    # Line 1199
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998894:
    # Line 1166
    bne	$a3,$t0,.L0d9987a4
    # Line 1199
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1166
    lbu	$t1,3225($a0)
    bnez	$t1,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    # Line 1182
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1183
    b	.L0d99870c
    move	$v0,$zero
.L0d9988c0:
    # Line 1202
    bnez	$t2,.L0d998964
    # Line 1204
    li	$t8,6401
    # Line 1202
    sltiu	$t3,$a4,6657
    beqz	$t3,.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1204
    beq	$a3,$t8,.L0d9986d4
    li	$t9,6400
    beq	$a3,$t9,.L0d9986d4
    # Line 1205
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1206
    b	.L0d99870c
    move	$v0,$zero
.L0d9988f8:
    # Line 1163
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,16($sp)
    # Line 1164
    b	.L0d99870c
    move	$v0,$zero
.L0d998910:
    # Line 1166
    beq	$a3,$ra,.L0d9985d4
    # Line 1202
    li	$v0,0x8034
    b	.L0d9987a4
    # Line 1199
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998920:
    # Line 1202
    li	$v0,0x8366
    sltu	$at,$a4,$v0
    bnez	$at,.L0d998988
    sltu	$v1,$v0,$a4
    beqz	$v1,.L0d998694
    # Line 1238
    li	$v0,6408
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998940:
    # Line 1202
    li	$a1,0x8035
    beq	$a4,$a1,.L0d998694
    # Line 1238
    li	$v0,6408
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998954:
    # Line 1202
    beq	$a4,$a2,.L0d998694
    # Line 1238
    li	$v0,6408
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998964:
    # Line 1202
    li	$a5,5126
    beq	$a4,$a5,.L0d9986d4
    nop
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998978:
    # Line 1202
    beq	$a4,$a6,.L0d9986d4
    nop
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998988:
    # Line 1202
    li	$a7,0x8365
    beq	$a4,$a7,.L0d998694
    # Line 1238
    li	$v0,6408
    b	.L0d99882c
    # Line 1249
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d99899c:
    # Line 1169
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1170
    b	.L0d99870c
    move	$v0,$zero
.end __glCheckReadPixelArgs

# Function: __glim_DrawPixels
# Declared: Line 1273 (Source lines: 1275-1305)
# Address: 0x0d9989c0 - 0x0d998ad8 (Size: 280 bytes, Frame: 192)
.globl __glim_DrawPixels
.ent __glim_DrawPixels
__glim_DrawPixels:
    # Line 1276
    lw	$a5,4112($zero)
    # Line 1275
    addiu	$sp,$sp,-64
    sd	$a4,8($sp)
    sd	$a3,40($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    # Line 1279
    lw	$a7,4120($zero)
    # Line 1275
    sd	$a0,16($sp)
    lui	$at,0xc
    # Line 1279
    li	$v0,2
    sd	$ra,56($sp)
    # Line 1275
    addiu	$at,$at,-31796
    sd	$gp,48($sp)
    # Line 1279
    beqz	$a7,.L0d998a50
    # Line 1275
    addu	$gp,$t9,$at
    # Line 1279
    beq	$a7,$v0,.L0d998a1c
    # Line 1287
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d998a0c:
    ld	$ra,56($sp)
.L0d998a10:
    # Line 1305
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d998a1c:
    # Line 1282
    lw	$t9,11784($a5)
    jalr	$t9
    move	$a0,$a5
    # Line 1284
    ld	$a4,8($sp)
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    # lw $t9, -22460($gp) # &glDrawPixels
    ld	$a1,24($sp)
    ld	$a0,16($sp)
    jal	glDrawPixels
    # Line 1283
    sw	$zero,4120($zero)
    b	.L0d998a10
    ld	$ra,56($sp)
.L0d998a50:
    # Line 1292
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    # lw $t9, -28420($gp) # &__glCheckDrawPixelArgs
    sd	$a5,0($sp)
    ld	$a4,40($sp)
    bal __glCheckDrawPixelArgs
    ld	$a0,0($sp)
    # Line 1299
    li	$a1,7168
    # Line 1292
    beqz	$v0,.L0d998a0c
    ld	$t0,0($sp)
    lbu	$v1,452($t0)
    beqz	$v1,.L0d998a0c
    # Line 1294
    li	$a0,7169
    lw	$a7,3204($t0)
    beq	$a7,$a0,.L0d998ac4
    # Line 1298
    nop	# was lw $t9, -26120($gp) # &__glFeedbackDrawPixels
    # Line 1299
    bne	$a7,$a1,.L0d998a0c
    # Line 1304
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    lw	$t9,12560($t0)
    ld	$a3,32($sp)
    move	$a0,$t0
    ld	$a4,40($sp)
    ld	$a5,8($sp)
    jal	__glFeedbackDrawPixels
    move	$a6,$zero
    b	.L0d998a10
    ld	$ra,56($sp)
.L0d998ac4:
    # Line 1298
    move	$a0,$t0
    jalr	$t9
    addiu	$a1,$t0,240
    b	.L0d998a10
    ld	$ra,56($sp)
.end __glim_DrawPixels

# Function: __glim_ReadPixels
# Declared: Line 1307 (Source lines: 1309-1329)
# Address: 0x0d998ae0 - 0x0d998bd8 (Size: 248 bytes, Frame: 208)
.globl __glim_ReadPixels
.ent __glim_ReadPixels
__glim_ReadPixels:
    # Line 1310
    lw	$a7,4112($zero)
    # Line 1309
    addiu	$sp,$sp,-80
    sd	$a6,16($sp)
    sd	$a5,40($sp)
    sd	$a4,32($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,24($sp)
    # Line 1313
    lw	$t1,4120($zero)
    # Line 1309
    sd	$a0,8($sp)
    lui	$at,0xc
    sd	$ra,72($sp)
    addiu	$at,$at,-32084
    sd	$gp,64($sp)
    # Line 1313
    beqz	$t1,.L0d998b80
    # Line 1309
    addu	$gp,$t9,$at
    # Line 1313
    li	$v0,2
    beq	$t1,$v0,.L0d998b44
    # Line 1321
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d998b34:
    ld	$ra,72($sp)
.L0d998b38:
    # Line 1329
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d998b44:
    # Line 1316
    lw	$t9,11784($a7)
    jalr	$t9
    move	$a0,$a7
    # Line 1318
    ld	$a6,16($sp)
    ld	$a5,40($sp)
    ld	$a4,32($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -22464($gp) # &glReadPixels
    ld	$a1,24($sp)
    ld	$a0,8($sp)
    jal	glReadPixels
    # Line 1317
    sw	$zero,4120($zero)
    b	.L0d998b38
    ld	$ra,72($sp)
.L0d998b80:
    # Line 1326
    ld	$a1,56($sp)
    ld	$a2,48($sp)
    ld	$a3,32($sp)
    # lw $t9, -28416($gp) # &__glCheckReadPixelArgs
    sd	$a7,0($sp)
    ld	$a4,40($sp)
    bal __glCheckReadPixelArgs
    ld	$a0,0($sp)
    beqz	$v0,.L0d998b34
    # Line 1328
    ld	$a1,8($sp)
    ld	$a2,24($sp)
    ld	$a3,56($sp)
    ld	$t9,0($sp)
    ld	$a4,48($sp)
    move	$a0,$t9
    lw	$t9,12568($t9)
    ld	$a5,32($sp)
    ld	$a6,40($sp)
    jal	__glCheckReadPixelArgs
    ld	$a7,16($sp)
    b	.L0d998b38
    ld	$ra,72($sp)
.end __glim_ReadPixels

# Function: __glim_CopyPixels
# Declared: Line 1331 (Source lines: 1333-1394)
# Address: 0x0d998be0 - 0x0d998d88 (Size: 424 bytes, Frame: 192)
.globl __glim_CopyPixels
.ent __glim_CopyPixels
__glim_CopyPixels:
    # Line 1333
    move	$t1,$a3
    move	$t0,$a2
    move	$t2,$a1
    # Line 1338
    lw	$a5,4120($zero)
    # Line 1333
    move	$t3,$a0
    lui	$at,0xc
    # Line 1335
    lw	$a7,4112($zero)
    # Line 1333
    addiu	$sp,$sp,-64
    addiu	$at,$at,-32340
    sd	$gp,40($sp)
    # Line 1338
    beqz	$a5,.L0d998c4c
    # Line 1333
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    # Line 1338
    li	$v0,2
    sd	$a4,0($sp)
    beq	$a5,$v0,.L0d998c94
    sd	$ra,48($sp)
    # Line 1346
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d998c3c:
    ld	$ra,48($sp)
.L0d998c40:
    # Line 1394
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d998c4c:
    # Line 1388
    li	$a6,7168
    # Line 1351
    bltz	$a2,.L0d998d40
    sd	$ra,48($sp)
    bltz	$a3,.L0d998d44
    # Line 1352
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1355
    li	$v1,6146
    beq	$a4,$v1,.L0d998d18
    # Line 1361
    li	$a5,6401
    # Line 1355
    li	$a0,6144
    beq	$a4,$a0,.L0d998d2c
    # Line 1376
    li	$a5,6402
    # Line 1355
    li	$a1,6145
    beq	$a4,$a1,.L0d998cc8
    # Line 1378
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d998c40
    ld	$ra,48($sp)
.L0d998c94:
    # Line 1341
    lw	$t9,11784($a7)
    jalr	$t9
    move	$a0,$a7
    # Line 1343
    ld	$a4,0($sp)
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    # lw $t9, -22468($gp) # &glCopyPixels
    ld	$a1,24($sp)
    ld	$a0,32($sp)
    jal	glCopyPixels
    # Line 1342
    sw	$zero,4120($zero)
    b	.L0d998c40
    ld	$ra,48($sp)
.L0d998cc8:
    # Line 1371
    lbu	$a2,3225($a7)
    beqz	$a2,.L0d998d68
    # Line 1372
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d998cd4:
    # Line 1380
    lbu	$a3,452($a7)
.L0d998cd8:
    beqz	$a3,.L0d998c3c
    # Line 1383
    li	$a4,7169
    lw	$a0,3204($a7)
    beq	$a0,$a4,.L0d998d54
    # Line 1387
    nop	# was lw $t9, -26124($gp) # &__glFeedbackCopyPixels
    # Line 1388
    bne	$a0,$a6,.L0d998c40
    ld	$ra,48($sp)
    # Line 1393
    lw	$t9,12564($a7)
    move	$a0,$a7
    move	$a1,$t3
    move	$a2,$t2
    move	$a3,$t0
    jal	__glFeedbackCopyPixels
    move	$a4,$t1
    b	.L0d998c40
    ld	$ra,48($sp)
.L0d998d18:
    # Line 1357
    lbu	$t8,3226($a7)
    beqz	$t8,.L0d998d78
    # Line 1358
    nop	# was lw $t9, -26452($gp) # &__glSetError
    b	.L0d998cd8
    # Line 1380
    lbu	$a3,452($a7)
.L0d998d2c:
    # Line 1364
    li	$ra,6400
    lbu	$t9,3220($a7)
    li	$a5,6408
    # Line 1369
    b	.L0d998cd4
    # Line 1364
    movz	$a5,$ra,$t9
.L0d998d40:
    # Line 1352
    # lw $t9, -26452($gp) # &__glSetError
.L0d998d44:
    jal	__glSetError
    li	$a0,1281
    b	.L0d998c40
    ld	$ra,48($sp)
.L0d998d54:
    # Line 1387
    move	$a0,$a7
    jalr	$t9
    addiu	$a1,$a7,240
    b	.L0d998c40
    ld	$ra,48($sp)
.L0d998d68:
    # Line 1372
    jalr	$t9
    li	$a0,1282
    b	.L0d998c40
    ld	$ra,48($sp)
.L0d998d78:
    # Line 1358
    jalr	$t9
    li	$a0,1282
    b	.L0d998c40
    ld	$ra,48($sp)
.end __glim_CopyPixels

.late_rodata
jtbl_0da4467c:
    .word .L0d995dec
    .word .L0d995dec
    .word .L0d995e3c
    .word .L0d995e3c
    .word .L0d995e3c
    .word .L0d995e3c
    .word .L0d995e3c
    .word .L0d995e3c
    .word .L0d995e3c
    .word .L0d995e3c
jtbl_0da446a4:
    .word .L0d997448
    .word .L0d997448
    .word .L0d997468
    .word .L0d997468
    .word .L0d997468
    .word .L0d997468
    .word .L0d997488
    .word .L0d997488
    .word .L0d997488
    .word .L0d997488
jtbl_0da446cc:
    .word .L0d997828
    .word .L0d997828
    .word .L0d997a0c
    .word .L0d997a0c
    .word .L0d997a0c
    .word .L0d997a0c
    .word .L0d997858
    .word .L0d997858
    .word .L0d997858
    .word .L0d997858
jtbl_0da446f4:
    .word .L0d997bf8
    .word .L0d997bf8
    .word .L0d997dbc
    .word .L0d997dbc
    .word .L0d997dbc
    .word .L0d997dbc
    .word .L0d997c28
    .word .L0d997c28
    .word .L0d997c28
    .word .L0d997c28
jtbl_0da4471c:
    .word .L0d997fd0
    .word .L0d997ff4
    .word .L0d997f90
    .word .L0d997ff4
    .word .L0d997fd0
    .word .L0d997f90
    .word .L0d997fd0
    .word .L0d997ff4
    .word .L0d997f7c
    .word .L0d997fd8
    .word .L0d997fd8
    .word .L0d997fd8
    .word .L0d997fd8

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_437f0000:
    .word 0x437f0000
_lit_bf000000:
    .word 0xbf000000

