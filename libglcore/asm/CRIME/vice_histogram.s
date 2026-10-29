# Source: ../CRIME/vice_histogram.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/vice_histogram.c
# Total Functions: 9

.text

# Function: vHistA
# Declared: Line 34 (Source lines: 39-48)
# Address: 0x0da396c0 - 0x0da39728 (Size: 104 bytes, Frame: 0)
.ent vHistA
vHistA:
    # Line 39
    lw	$a4,4($a1)
    # Line 42
    addiu	$a3,$a0,6
    beqz	$a4,.L0da39720
    # Line 40
    lw	$a5,0($a1)
    sra	$v1,$a4,0x1
    andi	$at,$a4,0x1
    beqz	$at,.L0da396f4
    # Line 42
    move	$a1,$zero
    # Line 45
    addiu	$a5,$a5,4
    lhu	$v0,6($a0)
    # Line 44
    li	$a1,1
    # Line 46
    addiu	$a3,$a0,14
    # Line 45
    sw	$v0,-4($a5)
.L0da396f4:
    beqz	$v1,.L0da39720
    move	$a2,$a5
    nop
.L0da39700:
    lhu	$a5,0($a3)
    # Line 44
    addiu	$a1,$a1,2
    # Line 45
    sw	$a5,0($a2)
    addiu	$a2,$a2,8
    lhu	$a0,8($a3)
    # Line 46
    addiu	$a3,$a3,16
    # Line 44
    bne	$a4,$a1,.L0da39700
    # Line 45
    sw	$a0,-4($a2)
.L0da39720:
    # Line 48
    jr	$ra
    nop
.end vHistA

# Function: vHistL
# Declared: Line 51 (Source lines: 56-63)
# Address: 0x0da39730 - 0x0da397c0 (Size: 144 bytes, Frame: 0)
.ent vHistL
vHistL:
    # Line 56
    lw	$a4,4($a1)
    # Line 57
    lw	$a3,0($a1)
    beqz	$a4,.L0da397b8
    andi	$at,$a4,0x1
    sra	$a1,$a4,0x1
    beqz	$at,.L0da3976c
    move	$a2,$zero
    # Line 60
    lhu	$v1,0($a0)
    sw	$v1,0($a3)
    # Line 61
    lhu	$v0,2($a0)
    # Line 59
    li	$a2,1
    # Line 61
    addiu	$a3,$a3,4
    addiu	$a0,$a0,4
    addu	$v0,$v0,$v1
    sw	$v0,-4($a3)
.L0da3976c:
    beqz	$a1,.L0da397b8
    nop
    nop
    nop
    nop
.L0da39780:
    # Line 60
    lhu	$t0,0($a0)
    sw	$t0,0($a3)
    # Line 61
    lhu	$a7,2($a0)
    addu	$a7,$a7,$t0
    sw	$a7,0($a3)
    # Line 60
    lhu	$a6,4($a0)
    sw	$a6,4($a3)
    # Line 59
    addiu	$a2,$a2,2
    # Line 61
    lhu	$a5,6($a0)
    addiu	$a3,$a3,8
    addiu	$a0,$a0,8
    addu	$a5,$a5,$a6
    # Line 59
    bne	$a4,$a2,.L0da39780
    # Line 61
    sw	$a5,-4($a3)
.L0da397b8:
    # Line 63
    jr	$ra
    nop
.end vHistL

# Function: vHistLA
# Declared: Line 66 (Source lines: 71-78)
# Address: 0x0da397c0 - 0x0da397f8 (Size: 56 bytes, Frame: 0)
.ent vHistLA
vHistLA:
    # Line 71
    lw	$a4,4($a1)
    # Line 72
    move	$a2,$zero
    beqz	$a4,.L0da397f0
    lw	$a3,0($a1)
.L0da397d0:
    # Line 75
    lhu	$v0,0($a0)
    # Line 74
    addiu	$a2,$a2,1
    # Line 75
    sw	$v0,0($a3)
    # Line 76
    addiu	$a3,$a3,8
    lhu	$at,2($a0)
    addiu	$a0,$a0,4
    # Line 74
    bne	$a4,$a2,.L0da397d0
    # Line 76
    sw	$at,-4($a3)
.L0da397f0:
    # Line 78
    jr	$ra
    nop
.end vHistLA

# Function: vHistRGB
# Declared: Line 81 (Source lines: 86-95)
# Address: 0x0da39800 - 0x0da39840 (Size: 64 bytes, Frame: 0)
.ent vHistRGB
vHistRGB:
    # Line 86
    lw	$a4,4($a1)
    # Line 87
    move	$a2,$zero
    beqz	$a4,.L0da39838
    lw	$a3,0($a1)
.L0da39810:
    # Line 90
    lhu	$v1,0($a0)
    sw	$v1,0($a3)
    # Line 91
    lhu	$v0,2($a0)
    # Line 89
    addiu	$a2,$a2,1
    # Line 91
    sw	$v0,4($a3)
    # Line 92
    addiu	$a3,$a3,12
    lhu	$at,4($a0)
    # Line 93
    addiu	$a0,$a0,8
    # Line 89
    bne	$a4,$a2,.L0da39810
    # Line 92
    sw	$at,-4($a3)
.L0da39838:
    # Line 95
    jr	$ra
    nop
.end vHistRGB

# Function: vHistRGBA
# Declared: Line 98 (Source lines: 103-112)
# Address: 0x0da39840 - 0x0da39888 (Size: 72 bytes, Frame: 0)
.ent vHistRGBA
vHistRGBA:
    # Line 103
    lw	$a4,4($a1)
    # Line 104
    move	$a2,$zero
    beqz	$a4,.L0da39880
    lw	$a3,0($a1)
.L0da39850:
    # Line 107
    lhu	$a1,0($a0)
    sw	$a1,0($a3)
    # Line 108
    lhu	$v1,2($a0)
    sw	$v1,4($a3)
    # Line 109
    lhu	$v0,4($a0)
    # Line 106
    addiu	$a2,$a2,1
    # Line 109
    sw	$v0,8($a3)
    # Line 110
    addiu	$a3,$a3,16
    lhu	$at,6($a0)
    addiu	$a0,$a0,8
    # Line 106
    bne	$a4,$a2,.L0da39850
    # Line 110
    sw	$at,-4($a3)
.L0da39880:
    # Line 112
    jr	$ra
    nop
.end vHistRGBA

# Function: returnHistogramMinMax
# Declared: Line 116 (Source lines: 118-210)
# Address: 0x0da39890 - 0x0da39c74 (Size: 996 bytes, Frame: 48)
.globl returnHistogramMinMax
.ent returnHistogramMinMax
returnHistogramMinMax:
    # Line 118
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$ra,32($sp)
    sd	$s0,24($sp)
    andi	$at,$a1,0x400
    lui	$v0,0x1
    move	$s0,$a0
    sd	$a2,0($sp)
    addiu	$v0,$v0,29948
    sd	$gp,16($sp)
    beqz	$at,.L0da39920
    addu	$gp,$t9,$v0
    # Line 130
    lw	$a4,1276($a0)
    # Line 128
    lw	$a0,32640($a0)
    # Line 130
    li	$a1,6406
    beq	$a4,$a1,.L0da39aa8
    # Line 128
    addiu	$a0,$a0,8192
    # Line 130
    li	$a2,6409
    beq	$a4,$a2,.L0da39ac0
    # Line 135
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 130
    li	$a3,6410
    beq	$a4,$a3,.L0da39ad4
    # Line 138
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 130
    li	$a5,6407
    beq	$a4,$a5,.L0da39ae8
    # Line 141
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 130
    li	$a6,6408
    beq	$a4,$a6,.L0da39afc
    # Line 144
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 148
    lbu	$a7,1280($s0)
.L0da39908:
    beqz	$a7,.L0da39920
.L0da3990c:
    ld	$ra,32($sp)
.L0da39910:
    # Line 210
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da39920:
    # Line 151
    ld	$t0,8($sp)
    # Line 171
    li	$t8,6407
    li	$t3,6410
    # Line 151
    andi	$t0,$t0,0x800
    # Line 171
    li	$t2,6409
    li	$t1,6406
    # Line 151
    beqz	$t0,.L0da3990c
    # Line 171
    li	$t9,6408
    lw	$a4,1372($s0)
    # Line 165
    lw	$a1,32640($s0)
    # Line 171
    beq	$a4,$t1,.L0da39b10
    # Line 165
    addiu	$a0,$a1,10240
    # Line 171
    beq	$a4,$t2,.L0da39a3c
    nop
    beq	$a4,$t3,.L0da39b64
    nop
    beq	$a4,$t8,.L0da39be0
    nop
    bne	$a4,$t9,.L0da39910
    ld	$ra,32($sp)
    # Line 197
    lhu	$a7,10240($a1)
    lwc1	$f9,_lit_437f0000
    mtc1	$a7,$f8
    ld	$a6,0($sp)
    lwc1	$f1,_lit_46fffe00
    xori	$a6,$a6,0x1402
    cvt.s.w	$f8,$f8
    sltiu	$a6,$a6,1
    movz.s	$f1,$f9,$a6
    div.s	$f8,$f8,$f1
    swc1	$f8,1332($s0)
    # Line 198
    lhu	$a5,10242($a1)
    mtc1	$a5,$f7
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f1
    swc1	$f7,1336($s0)
    # Line 199
    lhu	$a4,10244($a1)
    mtc1	$a4,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f1
    swc1	$f6,1340($s0)
    # Line 200
    lhu	$a3,10246($a1)
    mtc1	$a3,$f5
    cvt.s.w	$f5,$f5
    div.s	$f5,$f5,$f1
    swc1	$f5,1344($s0)
    # Line 201
    lhu	$a2,10248($a1)
    mtc1	$a2,$f4
    cvt.s.w	$f4,$f4
    div.s	$f4,$f4,$f1
    swc1	$f4,1348($s0)
    # Line 202
    lhu	$v1,10250($a1)
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f1
    swc1	$f3,1352($s0)
    # Line 203
    lhu	$v0,10252($a1)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    div.s	$f2,$f2,$f1
    swc1	$f2,1356($s0)
    # Line 204
    lhu	$at,14($a0)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    div.s	$f0,$f0,$f1
    ld	$ra,32($sp)
    # Line 210
    ld	$gp,16($sp)
    # Line 204
    swc1	$f0,1360($s0)
    # Line 210
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da39a3c:
    # Line 177
    lhu	$t8,10244($a1)
    lhu	$t2,10240($a1)
    slt	$t3,$t2,$t8
    movz	$t2,$t8,$t3
    lwc1	$f12,_lit_437f0000
    mtc1	$t2,$f11
    ld	$t1,0($sp)
    lwc1	$f10,_lit_46fffe00
    xori	$t1,$t1,0x1402
    cvt.s.w	$f11,$f11
    sltiu	$t1,$t1,1
    movz.s	$f10,$f12,$t1
    div.s	$f11,$f11,$f10
    swc1	$f11,1332($s0)
    lhu	$t0,10242($a1)
    lhu	$t2,10246($a1)
    slt	$t1,$t2,$t0
    movz	$t0,$t2,$t1
    # Line 178
    mtc1	$t0,$f9
    cvt.s.w	$f9,$f9
    div.s	$f9,$f9,$f10
    ld	$ra,32($sp)
    # Line 210
    ld	$gp,16($sp)
    # Line 178
    swc1	$f9,1336($s0)
    # Line 210
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da39aa8:
    # Line 132
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t9,$t9,-26944
    bal viceConvolve
    addiu	$a1,$s0,1244
    b	.L0da39908
    # Line 148
    lbu	$a7,1280($s0)
.L0da39ac0:
    # Line 135
    addiu	$t9,$t9,-26832
    bal viceConvolve
    addiu	$a1,$s0,1244
    b	.L0da39908
    # Line 148
    lbu	$a7,1280($s0)
.L0da39ad4:
    # Line 138
    addiu	$t9,$t9,-26688
    bal viceConvolve
    addiu	$a1,$s0,1244
    b	.L0da39908
    # Line 148
    lbu	$a7,1280($s0)
.L0da39ae8:
    # Line 141
    addiu	$t9,$t9,-26624
    bal viceConvolve
    addiu	$a1,$s0,1244
    b	.L0da39908
    # Line 148
    lbu	$a7,1280($s0)
.L0da39afc:
    # Line 144
    addiu	$t9,$t9,-26560
    bal viceConvolve
    addiu	$a1,$s0,1244
    b	.L0da39908
    # Line 148
    lbu	$a7,1280($s0)
.L0da39b10:
    # Line 173
    lhu	$v1,10246($a1)
    lwc1	$f15,_lit_437f0000
    mtc1	$v1,$f14
    ld	$v0,0($sp)
    lwc1	$f13,_lit_46fffe00
    xori	$v0,$v0,0x1402
    cvt.s.w	$f14,$f14
    sltiu	$v0,$v0,1
    movz.s	$f13,$f15,$v0
    div.s	$f14,$f14,$f13
    swc1	$f14,1332($s0)
    # Line 174
    lhu	$at,10254($a1)
    mtc1	$at,$f12
    cvt.s.w	$f12,$f12
    div.s	$f12,$f12,$f13
    ld	$ra,32($sp)
    # Line 210
    ld	$gp,16($sp)
    # Line 174
    swc1	$f12,1336($s0)
    # Line 210
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da39b64:
    # Line 181
    lhu	$a5,10240($a1)
    lwc1	$f21,_lit_437f0000
    mtc1	$a5,$f19
    ld	$a4,0($sp)
    lwc1	$f16,_lit_46fffe00
    xori	$a4,$a4,0x1402
    cvt.s.w	$f19,$f19
    sltiu	$a4,$a4,1
    movz.s	$f16,$f21,$a4
    div.s	$f19,$f19,$f16
    swc1	$f19,1332($s0)
    # Line 182
    lhu	$a3,10242($a1)
    mtc1	$a3,$f18
    cvt.s.w	$f18,$f18
    div.s	$f18,$f18,$f16
    swc1	$f18,1336($s0)
    # Line 183
    lhu	$a2,10244($a1)
    mtc1	$a2,$f17
    cvt.s.w	$f17,$f17
    div.s	$f17,$f17,$f16
    swc1	$f17,1340($s0)
    # Line 184
    lhu	$a0,10246($a1)
    mtc1	$a0,$f15
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f16
    ld	$ra,32($sp)
    # Line 210
    ld	$gp,16($sp)
    # Line 184
    swc1	$f15,1344($s0)
    # Line 210
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da39be0:
    # Line 187
    lhu	$t8,10240($a1)
    lwc1	$f1,_lit_437f0000
    mtc1	$t8,$f0
    ld	$t3,0($sp)
    lwc1	$f23,_lit_46fffe00
    xori	$t3,$t3,0x1402
    cvt.s.w	$f0,$f0
    sltiu	$t3,$t3,1
    movz.s	$f23,$f1,$t3
    div.s	$f0,$f0,$f23
    swc1	$f0,1332($s0)
    # Line 188
    lhu	$t2,10242($a1)
    mtc1	$t2,$f31
    cvt.s.w	$f31,$f31
    div.s	$f31,$f31,$f23
    swc1	$f31,1336($s0)
    # Line 189
    lhu	$t1,10244($a1)
    mtc1	$t1,$f29
    cvt.s.w	$f29,$f29
    div.s	$f29,$f29,$f23
    swc1	$f29,1340($s0)
    # Line 191
    lhu	$t0,10248($a1)
    mtc1	$t0,$f27
    cvt.s.w	$f27,$f27
    div.s	$f27,$f27,$f23
    swc1	$f27,1344($s0)
    # Line 192
    lhu	$a7,10250($a1)
    mtc1	$a7,$f25
    cvt.s.w	$f25,$f25
    div.s	$f25,$f25,$f23
    swc1	$f25,1348($s0)
    # Line 193
    lhu	$a6,10252($a1)
    mtc1	$a6,$f21
    cvt.s.w	$f21,$f21
    div.s	$f21,$f21,$f23
    # Line 195
    b	.L0da3990c
    # Line 193
    swc1	$f21,1352($s0)
.end returnHistogramMinMax

# Function: __viceLoadHSTCode
# Declared: Line 214 (Source lines: 216-240)
# Address: 0x0da39c80 - 0x0da39d68 (Size: 232 bytes, Frame: 32)
.globl __viceLoadHSTCode
.ent __viceLoadHSTCode
__viceLoadHSTCode:
    # Line 216
    addiu	$sp,$sp,-32
    # Line 219
    lw	$v0,4172($a0)
    lw	$a1,4176($a0)
    li	$a3,1
    # Line 216
    lui	$at,0x1
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,28940
    sd	$gp,0($sp)
    # Line 219
    beq	$v0,$a3,.L0da39d18
    # Line 216
    addu	$gp,$t9,$at
.L0da39cac:
    # Line 228
    bne	$a1,$a3,.L0da39cdc
    nop
    lw	$v0,4144($s0)
    beqz	$v0,.L0da39cdc
    # Line 229
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    sd	$ra,16($sp)
    bal __viceMapCode
    li	$a0,94
    ld	$ra,16($sp)
    b	.L0da39cfc
    move	$a0,$v0
.L0da39cdc:
    # Line 240
    ld	$gp,0($sp)
    # Line 236
    sw	$zero,4140($s0)
    # Line 238
    lw	$v0,4152($s0)
    # Line 240
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    # Line 232
    li	$v1,-1
    # Line 240
    jr	$ra
    # Line 238
    or	$v0,$v0,$v1
.L0da39cfc:
    # Line 240
    ld	$gp,0($sp)
    # Line 236
    sw	$zero,4140($s0)
    # Line 238
    lw	$v0,4152($s0)
    # Line 240
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 238
    or	$v0,$v0,$a0
.L0da39d18:
    # Line 219
    beq	$a1,$a3,.L0da39d30
    lw	$a0,4140($a0)
.L0da39d20:
    # Line 224
    beqz	$a0,.L0da39cac
    nop
    # Line 225
    b	.L0da39cfc
    li	$a0,-1
.L0da39d30:
    # Line 219
    beqz	$a0,.L0da39cac
    nop
    lw	$v1,4144($s0)
    beqz	$v1,.L0da39d20
    # Line 221
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    sd	$ra,16($sp)
    bal __viceMapCode
    li	$a0,93
    ld	$ra,16($sp)
    move	$a0,$v0
    # Line 222
    li	$a1,1
    b	.L0da39cfc
    sw	$a1,4132($s0)
.end __viceLoadHSTCode

# Function: __viceLoadMNMCode
# Declared: Line 245 (Source lines: 247-268)
# Address: 0x0da39d70 - 0x0da39e68 (Size: 248 bytes, Frame: 32)
.globl __viceLoadMNMCode
.ent __viceLoadMNMCode
__viceLoadMNMCode:
    # Line 250
    lw	$v0,4176($a0)
    # Line 247
    addiu	$sp,$sp,-32
    # Line 250
    lw	$at,4172($a0)
    # Line 247
    sd	$s0,8($sp)
    # Line 250
    li	$a1,1
    # Line 247
    lui	$v1,0x1
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,28700
    sd	$gp,0($sp)
    # Line 250
    beq	$at,$a1,.L0da39e0c
    # Line 247
    addu	$gp,$t9,$v1
.L0da39da0:
    # Line 259
    bne	$v0,$a1,.L0da39de8
    # Line 263
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 259
    lw	$a0,4144($s0)
    beqz	$a0,.L0da39de8
    # Line 263
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 260
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,96
    ld	$ra,16($sp)
    move	$a0,$v0
.L0da39dcc:
    # Line 268
    ld	$gp,0($sp)
    move	$v0,$a0
    # Line 266
    sw	$zero,4140($s0)
    # Line 268
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 263
    # lw $t9, -23184($gp) # &__viceMapCode
.L0da39de8:
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,97
    ld	$ra,16($sp)
    # Line 268
    ld	$gp,0($sp)
    # Line 266
    sw	$zero,4140($s0)
    # Line 268
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da39e0c:
    # Line 250
    beq	$v0,$a1,.L0da39e34
    lw	$a0,4140($a0)
.L0da39e14:
    # Line 255
    beqz	$a0,.L0da39da0
    ld	$ra,16($sp)
    # Line 268
    ld	$gp,0($sp)
    # Line 256
    li	$v0,-1
    # Line 266
    sw	$zero,4140($s0)
    # Line 268
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da39e34:
    # Line 250
    beqz	$a0,.L0da39da0
    nop
    lw	$a2,4144($s0)
    beqz	$a2,.L0da39e14
    # Line 252
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,95
    ld	$ra,16($sp)
    move	$a0,$v0
    # Line 253
    li	$a3,1
    b	.L0da39dcc
    sw	$a3,4132($s0)
.end __viceLoadMNMCode

# Function: viceHistogram
# Declared: Line 272 (Source lines: 274-303)
# Address: 0x0da39e70 - 0x0da39fd0 (Size: 352 bytes, Frame: 32)
.globl viceHistogram
.ent viceHistogram
viceHistogram:
    # Line 275
    lw	$v0,608($a1)
    # Line 281
    mtc1	$v0,$f0
    # Line 274
    lui	$t2,0x1
    # Line 281
    cvt.s.w	$f0,$f0
    # Line 274
    addiu	$sp,$sp,-32
    addiu	$t2,$t2,28444
    sd	$gp,8($sp)
    addu	$gp,$t9,$t2
    # Line 281
    ldc1	$f1,_lit8_3f70000000000000
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    lwc1	$f1,_lit_46fffe00
    cvt.s.d	$f0,$f0
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$t1,4168($a0)
    mfc1	$a1,$f0
    sh	$a1,0($t1)
    # Line 282
    lw	$t0,4168($a0)
    lw	$a7,4156($a0)
    sh	$a7,2($t0)
    # Line 283
    lw	$a6,4168($a0)
    sh	$a1,4($a6)
    # Line 284
    lw	$a6,4168($a0)
    lw	$a5,4156($a0)
    addiu	$a5,$a5,2
    sh	$a5,6($a6)
    # Line 285
    lw	$a4,4168($a0)
    # Line 274
    sd	$ra,16($sp)
    # Line 285
    sh	$a1,8($a4)
    # Line 286
    lw	$a4,4168($a0)
    lw	$a3,4156($a0)
    # Line 274
    sd	$s0,24($sp)
    # Line 286
    addiu	$a3,$a3,4
    sh	$a3,10($a4)
    # Line 287
    lw	$a2,4168($a0)
    # Line 275
    sll	$v0,$v0,0x3
    sd	$v0,0($sp)
    # Line 287
    sh	$a1,12($a2)
    # Line 288
    lw	$a1,4168($a0)
    lw	$v1,4156($a0)
    # Line 293
    # lw $t9, -23256($gp) # &__viceLoadHSTCode
    # Line 288
    addiu	$v1,$v1,6
    sh	$v1,14($a1)
    # Line 291
    lw	$v1,8($a0)
    # Line 290
    lw	$at,4156($a0)
    # Line 274
    move	$s0,$a0
    # Line 291
    addu	$v1,$v0,$v1
    sw	$v1,8($a0)
    # Line 293
    nop
    # Line 290
    addu	$at,$at,$v0
    # Line 293
    bal __viceLoadHSTCode
    # Line 290
    sw	$at,4156($a0)
    # Line 293
    lw	$at,4204($s0)
    lw	$ra,4($s0)
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    sw	$v0,80($ra)
    # Line 295
    lw	$t9,4204($s0)
    lw	$a2,4($s0)
    addiu	$t9,$t9,1
    sll	$t8,$t9,0x2
    sw	$t9,4204($s0)
    addu	$t8,$a2,$t8
    lw	$t8,76($t8)
    lui	$t3,0xffff
    # Line 301
    ld	$v1,0($sp)
    # Line 295
    and	$t8,$t3,$t8
    # Line 303
    ld	$gp,8($sp)
    li	$v0,1
    # Line 295
    beq	$t3,$t8,.L0da39fb8
    # Line 303
    ld	$ra,16($sp)
    # Line 298
    lw	$a1,4168($s0)
    # Line 299
    lw	$a0,4152($s0)
    # Line 298
    addiu	$a1,$a1,16
    sw	$a1,4168($s0)
    # Line 299
    addiu	$a0,$a0,1
    sw	$a0,4152($s0)
    # Line 301
    sh	$v1,70($a2)
    # Line 303
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da39fb8:
    ld	$ra,16($sp)
    # Line 296
    move	$v0,$zero
    # Line 303
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end viceHistogram

.rdata
_lit8_3f70000000000000:
    .word 0x3f700000, 0x00000000
_lit_437f0000:
    .word 0x437f0000
_lit_46fffe00:
    .word 0x46fffe00

