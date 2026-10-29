# Source: ../soft/so_polydraw.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polydraw.c
# Total Functions: 9

.text

# Function: FillSubTriangle
# Declared: Line 24 (Source lines: 25-205)
# Address: 0x0d9fba30 - 0x0d9fbf9c (Size: 1388 bytes, Frame: 208)
.ent FillSubTriangle
FillSubTriangle:
    # Line 48
    lw	$a5,30156($a0)
    # Line 47
    lw	$a6,30160($a0)
    # Line 46
    lw	$a7,30164($a0)
    # Line 43
    lw	$a4,30144($a0)
    # Line 41
    lw	$t8,29704($a0)
    # Line 45
    lw	$a3,30136($a0)
    # Line 25
    addiu	$sp,$sp,-208
    # Line 45
    sd	$a3,88($sp)
    # Line 25
    sd	$s5,16($sp)
    # Line 40
    lw	$s5,30172($a0)
    # Line 25
    sd	$s3,48($sp)
    # Line 39
    lw	$s3,30168($a0)
    # Line 25
    sd	$s4,40($sp)
    # Line 38
    lw	$s4,30152($a0)
    # Line 25
    sd	$s2,56($sp)
    # Line 37
    lw	$s2,30148($a0)
    sd	$ra,96($sp)
    # Line 25
    sd	$s0,32($sp)
    # Line 51
    la	$at,sub_0da50000
    # Line 52
    la	$v0,sub_0da50000
    # Line 53
    la	$v1,sub_0da60000
    # Line 25
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 42
    lw	$a1,29712($a0)
    # Line 25
    sd	$s7,8($sp)
    move	$s7,$a2
    # Line 44
    lw	$a2,30140($a0)
    sd	$a2,64($sp)
    # Line 42
    sd	$a1,72($sp)
    # Line 49
    lw	$t9,30436($a0)
    # Line 53
    addiu	$v1,$v1,-10096
    sw	$v1,30472($a0)
    # Line 25
    sd	$s8,0($sp)
    # Line 53
    andi	$s8,$t9,0x20
    # Line 25
    move	$s0,$a0
    # Line 52
    addiu	$v0,$v0,22672
    sw	$v0,30468($a0)
    # Line 51
    addiu	$at,$at,-10096
    # Line 53
    beqz	$s8,.L0d9fbb00
    # Line 51
    sw	$at,30464($a0)
    # Line 55
    lw	$t1,31108($a0)
    lw	$ra,3664($t1)
    lw	$t3,31136($a0)
    subu	$ra,$s1,$ra
    mult	$t3,$ra
    lw	$t0,31124($a0)
    mflo	$t2
    lw	$t1,3660($t1)
    addu	$t0,$t0,$t2
    addu	$t0,$s2,$t0
    subu	$t0,$t0,$t1
    sw	$t0,30452($a0)
.L0d9fbb00:
    # Line 64
    slt	$t0,$s1,$s7
    # Line 55
    andi	$a0,$t9,0x4
    # Line 64
    andi	$t3,$t9,0x4000
    andi	$ra,$t9,0x8
    # Line 55
    beqz	$a0,.L0d9fbb54
    # Line 64
    andi	$t2,$t9,0x1000
    # Line 60
    lw	$v0,31228($s0)
    lw	$a2,3664($v0)
    lw	$a1,31256($s0)
    subu	$a2,$s1,$a2
    mult	$a1,$a2
    lw	$at,31244($s0)
    mflo	$v1
    lw	$v0,3660($v0)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sll	$v1,$s2,0x2
    sll	$v0,$v0,0x2
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    sw	$at,30440($s0)
.L0d9fbb54:
    # Line 64
    lw	$a3,11760($s0)
    andi	$a2,$t9,0x2
    beqz	$t0,.L0d9fbf60
    sw	$a3,30480($s0)
    lui	$t1,0x4
    andi	$t0,$t9,0x1
    and	$t1,$t9,$t1
    sd	$s6,192($sp)
    lui	$s6,0x7fff
    sd	$ra,80($sp)
    b	.L0d9fbc2c
    ori	$s6,$s6,0xffff
    nop
    nop
    nop
.L0d9fbb90:
    # Line 161
    beqz	$a2,.L0d9fbba8
    nop
    # Line 165
    lwc1	$f1,30252($s0)
    lwc1	$f0,30208($s0)
    add.s	$f0,$f0,$f1
    swc1	$f0,30208($s0)
.L0d9fbba8:
    beqz	$s8,.L0d9fbd24
    nop
.L0d9fbbb0:
    # Line 170
    lw	$v0,30452($s0)
    lw	$at,30460($s0)
    addu	$at,$at,$v0
    beqz	$t3,.L0d9fbd2c
    sw	$at,30452($s0)
.L0d9fbbc4:
    # Line 175
    lw	$a1,30204($s0)
    lw	$v1,30316($s0)
    addu	$v1,$v1,$a1
    beqz	$t1,.L0d9fbd34
    sw	$v1,30204($s0)
.L0d9fbbd8:
    # Line 179
    lw	$a3,30316($s0)
    mtc1	$a3,$f2
    # Line 180
    lwc1	$f5,30512($s0)
    lwc1	$f4,30500($s0)
    # Line 179
    cvt.s.w	$f2,$f2
    lwc1	$f3,30484($s0)
    # Line 180
    add.s	$f4,$f4,$f5
    swc1	$f4,30500($s0)
    # Line 179
    add.s	$f2,$f2,$f3
    # Line 180
    beqz	$a0,.L0d9fbd3c
    # Line 179
    swc1	$f2,30484($s0)
.L0d9fbc04:
    # Line 192
    lw	$ra,30440($s0)
    lw	$t9,30448($s0)
    addu	$t9,$t9,$ra
    beqz	$t2,.L0d9fbc28
    sw	$t9,30440($s0)
.L0d9fbc18:
    # Line 197
    lwc1	$f4,30420($s0)
    lwc1	$f3,30244($s0)
    add.s	$f3,$f3,$f4
    swc1	$f3,30244($s0)
.L0d9fbc28:
    beq	$s1,$s7,.L0d9fbf5c
.L0d9fbc2c:
    # Line 71
    subu	$a1,$s3,$s2
    ld	$v0,72($sp)
    slt	$at,$s1,$t8
    blez	$a1,.L0d9fbc4c
    slt	$v0,$s1,$v0
    bnez	$at,.L0d9fbc50
    # Line 82
    addu	$a3,$s3,$a6
    # Line 71
    bnez	$v0,.L0d9fbed8
.L0d9fbc4c:
    # Line 82
    addu	$a3,$s3,$a6
.L0d9fbc50:
    # Line 85
    addu	$s3,$s3,$a5
    # Line 79
    addu	$a1,$s5,$a7
    # Line 89
    addu	$s4,$s4,$a4
    slti	$v1,$a1,0
    # Line 88
    addiu	$s1,$s1,1
    # Line 154
    ld	$ra,80($sp)
    movn	$s3,$a3,$v1
    # Line 148
    ld	$t9,88($sp)
    # Line 83
    and	$s5,$a1,$s6
    # Line 89
    bltz	$s4,.L0d9fbd50
    movz	$s5,$a1,$v1
    # Line 148
    beqz	$t0,.L0d9fbb90
    addu	$s2,$s2,$t9
    beqz	$a2,.L0d9fbec8
    # Line 154
    ld	$v1,80($sp)
    # Line 151
    lwc1	$f6,30252($s0)
    # Line 152
    lwc1	$f8,30256($s0)
    # Line 153
    lwc1	$f10,30260($s0)
    # Line 154
    lwc1	$f12,30264($s0)
    lwc1	$f11,30220($s0)
    # Line 153
    lwc1	$f9,30216($s0)
    # Line 152
    lwc1	$f7,30212($s0)
    # Line 151
    lwc1	$f5,30208($s0)
    # Line 154
    add.s	$f11,$f11,$f12
    # Line 153
    add.s	$f9,$f9,$f10
    # Line 154
    swc1	$f11,30220($s0)
    # Line 152
    add.s	$f7,$f7,$f8
    # Line 153
    swc1	$f9,30216($s0)
    # Line 151
    add.s	$f5,$f5,$f6
    # Line 152
    swc1	$f7,30212($s0)
    # Line 154
    beqz	$ra,.L0d9fbba8
    # Line 151
    swc1	$f5,30208($s0)
.L0d9fbcd0:
    # Line 157
    lwc1	$f14,30340($s0)
    lwc1	$f13,30224($s0)
    # Line 158
    lwc1	$f16,30344($s0)
    # Line 159
    lwc1	$f18,30348($s0)
    # Line 160
    lwc1	$f21,30352($s0)
    # Line 161
    lwc1	$f25,30356($s0)
    lwc1	$f23,30240($s0)
    # Line 160
    lwc1	$f19,30236($s0)
    # Line 159
    lwc1	$f17,30232($s0)
    # Line 158
    lwc1	$f15,30228($s0)
    # Line 161
    add.s	$f23,$f23,$f25
    # Line 160
    add.s	$f19,$f19,$f21
    # Line 161
    swc1	$f23,30240($s0)
    # Line 159
    add.s	$f17,$f17,$f18
    # Line 160
    swc1	$f19,30236($s0)
    # Line 158
    add.s	$f15,$f15,$f16
    # Line 159
    swc1	$f17,30232($s0)
    # Line 157
    add.s	$f13,$f13,$f14
    # Line 158
    swc1	$f15,30228($s0)
    # Line 165
    bnez	$s8,.L0d9fbbb0
    # Line 157
    swc1	$f13,30224($s0)
.L0d9fbd24:
    # Line 170
    bnez	$t3,.L0d9fbbc4
    nop
.L0d9fbd2c:
    # Line 175
    bnez	$t1,.L0d9fbbd8
    nop
.L0d9fbd34:
    # Line 180
    bnez	$a0,.L0d9fbc04
    nop
.L0d9fbd3c:
    # Line 192
    bnez	$t2,.L0d9fbc18
    nop
    b	.L0d9fbc28
    nop
    nop
.L0d9fbd50:
    # Line 93
    ld	$at,64($sp)
    and	$s4,$s4,$s6
    beqz	$t0,.L0d9fbe2c
    # Line 92
    addu	$s2,$s2,$at
    # Line 93
    beqz	$a2,.L0d9fbf4c
    # Line 100
    ld	$a1,80($sp)
    ld	$v0,80($sp)
    # Line 97
    lwc1	$f29,30268($s0)
    # Line 98
    lwc1	$f0,30272($s0)
    # Line 99
    lwc1	$f2,30276($s0)
    # Line 100
    lwc1	$f4,30280($s0)
    lwc1	$f3,30220($s0)
    # Line 99
    lwc1	$f1,30216($s0)
    # Line 98
    lwc1	$f31,30212($s0)
    # Line 97
    lwc1	$f27,30208($s0)
    # Line 100
    add.s	$f3,$f3,$f4
    # Line 99
    add.s	$f1,$f1,$f2
    # Line 100
    swc1	$f3,30220($s0)
    # Line 98
    add.s	$f31,$f31,$f0
    # Line 99
    swc1	$f1,30216($s0)
    # Line 97
    add.s	$f27,$f27,$f29
    # Line 98
    swc1	$f31,30212($s0)
    # Line 100
    beqz	$v0,.L0d9fbe44
    # Line 97
    swc1	$f27,30208($s0)
.L0d9fbdb0:
    # Line 103
    lwc1	$f6,30360($s0)
    lwc1	$f5,30224($s0)
    # Line 104
    lwc1	$f8,30364($s0)
    # Line 105
    lwc1	$f10,30368($s0)
    # Line 106
    lwc1	$f12,30372($s0)
    # Line 107
    lwc1	$f14,30376($s0)
    lwc1	$f13,30240($s0)
    # Line 106
    lwc1	$f11,30236($s0)
    # Line 105
    lwc1	$f9,30232($s0)
    # Line 104
    lwc1	$f7,30228($s0)
    # Line 107
    add.s	$f13,$f13,$f14
    # Line 106
    add.s	$f11,$f11,$f12
    # Line 107
    swc1	$f13,30240($s0)
    # Line 105
    add.s	$f9,$f9,$f10
    # Line 106
    swc1	$f11,30236($s0)
    # Line 104
    add.s	$f7,$f7,$f8
    # Line 105
    swc1	$f9,30232($s0)
    # Line 103
    add.s	$f5,$f5,$f6
    # Line 104
    swc1	$f7,30228($s0)
    # Line 111
    bnez	$s8,.L0d9fbe4c
    # Line 103
    swc1	$f5,30224($s0)
.L0d9fbe04:
    # Line 116
    bnez	$t3,.L0d9fbe60
    nop
.L0d9fbe0c:
    # Line 121
    bnez	$t1,.L0d9fbe74
    nop
.L0d9fbe14:
    # Line 126
    bnez	$a0,.L0d9fbea0
    nop
.L0d9fbe1c:
    # Line 139
    bnez	$t2,.L0d9fbeb4
    nop
    b	.L0d9fbc28
    nop
.L0d9fbe2c:
    # Line 107
    beqz	$a2,.L0d9fbe44
    nop
    # Line 111
    lwc1	$f16,30268($s0)
    lwc1	$f15,30208($s0)
    add.s	$f15,$f15,$f16
    swc1	$f15,30208($s0)
.L0d9fbe44:
    beqz	$s8,.L0d9fbe04
    nop
.L0d9fbe4c:
    # Line 116
    lw	$a1,30452($s0)
    lw	$v1,30456($s0)
    addu	$v1,$v1,$a1
    beqz	$t3,.L0d9fbe0c
    sw	$v1,30452($s0)
.L0d9fbe60:
    # Line 121
    lw	$t9,30204($s0)
    lw	$a3,30320($s0)
    addu	$a3,$a3,$t9
    beqz	$t1,.L0d9fbe14
    sw	$a3,30204($s0)
.L0d9fbe74:
    # Line 125
    lw	$ra,30320($s0)
    mtc1	$ra,$f17
    # Line 126
    lwc1	$f21,30508($s0)
    lwc1	$f19,30500($s0)
    # Line 125
    cvt.s.w	$f17,$f17
    lwc1	$f18,30484($s0)
    # Line 126
    add.s	$f19,$f19,$f21
    swc1	$f19,30500($s0)
    # Line 125
    add.s	$f17,$f17,$f18
    # Line 126
    beqz	$a0,.L0d9fbe1c
    # Line 125
    swc1	$f17,30484($s0)
.L0d9fbea0:
    # Line 139
    lw	$v0,30440($s0)
    lw	$at,30444($s0)
    addu	$at,$at,$v0
    beqz	$t2,.L0d9fbc28
    sw	$at,30440($s0)
.L0d9fbeb4:
    # Line 144
    lwc1	$f19,30424($s0)
    lwc1	$f18,30244($s0)
    add.s	$f18,$f18,$f19
    b	.L0d9fbc28
    swc1	$f18,30244($s0)
.L0d9fbec8:
    # Line 154
    bnez	$v1,.L0d9fbcd0
    nop
    b	.L0d9fbba8
    nop
.L0d9fbed8:
    sd	$t8,104($sp)
    sd	$t3,112($sp)
    sd	$t2,120($sp)
    sd	$t1,128($sp)
    sd	$t0,136($sp)
    sd	$a2,144($sp)
    sd	$a7,160($sp)
    sd	$a6,168($sp)
    sd	$a5,176($sp)
    sd	$a4,184($sp)
    # Line 74
    sw	$a1,30248($s0)
    # Line 75
    lw	$t9,12232($s0)
    # Line 73
    sw	$s1,30200($s0)
    sd	$a0,152($sp)
    # Line 75
    move	$a0,$s0
    jalr	$t9
    # Line 72
    sw	$s2,30196($s0)
    ld	$a4,184($sp)
    ld	$a5,176($sp)
    ld	$a6,168($sp)
    ld	$a7,160($sp)
    ld	$a0,152($sp)
    ld	$a2,144($sp)
    ld	$t0,136($sp)
    ld	$t1,128($sp)
    ld	$t2,120($sp)
    ld	$t3,112($sp)
    b	.L0d9fbc4c
    ld	$t8,104($sp)
.L0d9fbf4c:
    # Line 100
    bnez	$a1,.L0d9fbdb0
    nop
    b	.L0d9fbe44
    nop
.L0d9fbf5c:
    ld	$s6,192($sp)
.L0d9fbf60:
    # Line 204
    sw	$s5,30172($s0)
    # Line 203
    sw	$s3,30168($s0)
    # Line 202
    sw	$s4,30152($s0)
    # Line 201
    sw	$s2,30148($s0)
    # Line 205
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s4,40($sp)
    ld	$ra,96($sp)
    ld	$s5,16($sp)
    ld	$s7,8($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end FillSubTriangle

# Function: __glSnapXLeft
# Declared: Line 212 (Source lines: 213-266)
# Address: 0x0d9fbfa0 - 0x0d9fc0f8 (Size: 344 bytes, Frame: 0)
.globl __glSnapXLeft
.ent __glSnapXLeft
__glSnapXLeft:
    # Line 223
    trunc.w.s	$f1,$f13
    cvt.s.w	$f3,$f1
    # Line 213
    lui	$a2,0x5
    addiu	$a2,$a2,19948
    addu	$at,$t9,$a2
    # Line 223
    sub.s	$f3,$f13,$f3
    ldc1	$f5,_lit8_41e0000000000000
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f5
    # Line 224
    mtc1	$zero,$f2
    # Line 223
    trunc.w.d	$f3,$f3
    # Line 224
    trunc.w.s	$f0,$f14
    # Line 223
    mfc1	$v1,$f3
    # Line 224
    lui	$a1,0x7fff
    # Line 223
    mfc1	$v0,$f1
    lui	$a2,0x4000
    # Line 224
    c.lt.s	$f14,$f2
    ori	$a1,$a1,0xffff
    mfc1	$a3,$f0
    # Line 223
    addu	$v1,$v1,$a2
    # Line 224
    cvt.s.w	$f4,$f0
    and	$a1,$v1,$a1
    sw	$a1,30152($a0)
    # Line 223
    srl	$v1,$v1,0x1f
    # Line 230
    addiu	$a4,$a3,-1
    # Line 223
    addu	$v0,$v0,$v1
    # Line 224
    bc1f	.L0d9fc030
    # Line 223
    sw	$v0,30148($a0)
    # Line 233
    sub.s	$f6,$f4,$f14
    cvt.d.s	$f6,$f6
    mul.d	$f6,$f6,$f5
    trunc.w.d	$f6,$f6
    mfc1	$a5,$f6
    negu	$a5,$a5
    b	.L0d9fc048
    sw	$a5,30144($a0)
.L0d9fc030:
    # Line 238
    sub.s	$f7,$f14,$f4
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f5
    trunc.w.d	$f7,$f7
    # Line 235
    addiu	$a4,$a3,1
    # Line 238
    swc1	$f7,30144($a0)
.L0d9fc048:
    lw	$a5,30436($a0)
    andi	$a6,$a5,0x20
    beqz	$a6,.L0d9fc098
    # Line 250
    andi	$t8,$a5,0x4
    # Line 247
    lw	$t2,31132($a0)
    # Line 248
    lw	$t3,31136($a0)
    mult	$t3,$t2
    mflo	$a7
    nop
    nop
    # Line 249
    mult	$a3,$t2
    mflo	$t1
    nop
    nop
    # Line 250
    mult	$a4,$t2
    # Line 249
    addu	$t1,$a7,$t1
    sw	$t1,30460($a0)
    # Line 250
    mflo	$t0
    addu	$a7,$a7,$t0
    sw	$a7,30456($a0)
.L0d9fc098:
    beqz	$t8,.L0d9fc0ec
    nop
    # Line 259
    lw	$a1,31252($a0)
    # Line 260
    lw	$a2,31256($a0)
    mult	$a2,$a1
    mflo	$t9
    nop
    nop
    # Line 261
    mult	$a3,$a1
    mflo	$v1
    nop
    nop
    # Line 262
    mult	$a4,$a1
    # Line 265
    sw	$a4,30140($a0)
    # Line 264
    sw	$a3,30136($a0)
    # Line 261
    addu	$v1,$t9,$v1
    sw	$v1,30448($a0)
    # Line 262
    mflo	$v0
    addu	$t9,$t9,$v0
    # Line 266
    jr	$ra
    # Line 262
    sw	$t9,30444($a0)
.L0d9fc0ec:
    # Line 265
    sw	$a4,30140($a0)
    # Line 266
    jr	$ra
    # Line 264
    sw	$a3,30136($a0)
.end __glSnapXLeft

# Function: __glSnapXRight
# Declared: Line 268 (Source lines: 269-297)
# Address: 0x0d9fc100 - 0x0d9fc1d0 (Size: 208 bytes, Frame: 0)
.globl __glSnapXRight
.ent __glSnapXRight
__glSnapXRight:
    # Line 279
    trunc.w.s	$f6,$f13
    cvt.s.w	$f8,$f6
    # Line 269
    lui	$a2,0x5
    addiu	$a2,$a2,19596
    addu	$at,$t9,$a2
    # Line 279
    sub.s	$f8,$f13,$f8
    ldc1	$f5,_lit8_41e0000000000000
    cvt.d.s	$f8,$f8
    mul.d	$f8,$f8,$f5
    # Line 280
    mtc1	$zero,$f7
    # Line 279
    trunc.w.d	$f8,$f8
    # Line 280
    trunc.w.s	$f4,$f14
    # Line 279
    mfc1	$v1,$f8
    # Line 280
    lui	$a1,0x7fff
    # Line 285
    lwc1	$f9,_lit_bf800000
    # Line 279
    lui	$a2,0x4000
    # Line 280
    c.lt.s	$f14,$f7
    ori	$a1,$a1,0xffff
    # Line 290
    lwc1	$f12,_lit_3f800000
    # Line 279
    mfc1	$v0,$f6
    addu	$v1,$v1,$a2
    # Line 280
    and	$a1,$v1,$a1
    sw	$a1,36($a0)
    # Line 279
    srl	$v1,$v1,0x1f
    # Line 280
    cvt.s.w	$f4,$f4
    # Line 279
    addu	$v0,$v0,$v1
    # Line 280
    bc1f	.L0d9fc1a4
    # Line 279
    sw	$v0,32($a0)
    # Line 288
    sub.s	$f10,$f4,$f14
    cvt.d.s	$f10,$f10
    mul.d	$f10,$f10,$f5
    # Line 285
    add.s	$f9,$f4,$f9
    # Line 288
    trunc.w.d	$f10,$f10
    # Line 295
    trunc.w.s	$f11,$f4
    swc1	$f11,20($a0)
    # Line 296
    trunc.w.s	$f9,$f9
    # Line 288
    mfc1	$a3,$f10
    # Line 296
    swc1	$f9,24($a0)
    # Line 288
    negu	$a3,$a3
    # Line 297
    jr	$ra
    # Line 288
    sw	$a3,28($a0)
.L0d9fc1a4:
    # Line 293
    sub.s	$f11,$f14,$f4
    cvt.d.s	$f11,$f11
    # Line 290
    add.s	$f12,$f4,$f12
    # Line 295
    trunc.w.s	$f13,$f4
    # Line 293
    mul.d	$f11,$f11,$f5
    # Line 295
    swc1	$f13,20($a0)
    # Line 296
    trunc.w.s	$f12,$f12
    swc1	$f12,24($a0)
    # Line 293
    trunc.w.d	$f11,$f11
    # Line 297
    jr	$ra
    # Line 293
    swc1	$f11,28($a0)
.end __glSnapXRight

# Function: __glComputePolygonOffset
# Declared: Line 299 (Source lines: 300-311)
# Address: 0x0d9fc1d0 - 0x0d9fc210 (Size: 64 bytes, Frame: 0)
.ent __glComputePolygonOffset
__glComputePolygonOffset:
    # Line 300
    lwc1	$f3,30336($a0)
    # Line 311
    lw	$at,31304($a0)
    # Line 300
    lwc1	$f4,30332($a0)
    # Line 311
    dsll32	$at,$at,0x0
    # Line 300
    abs.s	$f3,$f3
    # Line 311
    dsrl32	$at,$at,0x0
    # Line 300
    abs.s	$f4,$f4
    # Line 311
    dmtc1	$at,$f1
    # Line 300
    c.lt.s	$f4,$f3
    # Line 311
    lwc1	$f0,500($a0)
    cvt.s.l	$f1,$f1
    lwc1	$f2,504($a0)
    movf.s	$f3,$f4,$fcc0
    mul.s	$f0,$f0,$f3
    jr	$ra
    madd.s	$f0,$f0,$f1,$f2
.end __glComputePolygonOffset

# Function: __glPolygonOffsetForLineAndPoint
# Declared: Line 314 (Source lines: 318-337)
# Address: 0x0d9fc210 - 0x0d9fc2b0 (Size: 160 bytes, Frame: 32)
.globl __glPolygonOffsetForLineAndPoint
.ent __glPolygonOffsetForLineAndPoint
__glPolygonOffsetForLineAndPoint:
    # Line 320
    lwc1	$f6,30176($a0)
    lwc1	$f5,3544($a0)
    div.s	$f5,$f5,$f6
    # Line 329
    lwc1	$f3,136($a3)
    lwc1	$f2,136($a1)
    # Line 330
    lwc1	$f0,136($a2)
    # Line 329
    sub.s	$f2,$f2,$f3
    # Line 330
    sub.s	$f0,$f0,$f3
    # Line 332
    lwc1	$f3,30192($a0)
    lwc1	$f4,30188($a0)
    # Line 322
    lwc1	$f1,30184($a0)
    # Line 321
    lwc1	$f6,30180($a0)
    # Line 332
    mul.s	$f3,$f3,$f5
    mul.s	$f4,$f4,$f5
    # Line 333
    mul.s	$f1,$f5,$f1
    mul.s	$f6,$f5,$f6
    # Line 318
    addiu	$sp,$sp,-32
    # Line 333
    mul.s	$f1,$f2,$f1
    # Line 318
    sd	$s8,8($sp)
    lui	$s8,0x5
    # Line 333
    msub.s	$f1,$f1,$f0,$f6
    # Line 318
    addiu	$s8,$s8,19324
    # Line 332
    mul.s	$f0,$f0,$f4
    sd	$gp,16($sp)
    # Line 318
    addu	$gp,$t9,$s8
    # Line 332
    msub.s	$f0,$f0,$f2,$f3
    # Line 335
    # lw $t9, -32696($gp) # &sub_0da00000
    # Line 318
    sd	$ra,0($sp)
    # Line 335
    addiu	$t9,$t9,-15920
    # Line 333
    swc1	$f1,30332($a0)
    # Line 335
    nop
    # Line 318
    move	$s8,$a0
    # Line 335
    bal __glSnapXRight
    # Line 332
    swc1	$f0,30336($a0)
    ld	$ra,0($sp)
    # Line 337
    ld	$gp,16($sp)
    # Line 335
    swc1	$f0,30488($s8)
    # Line 337
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPolygonOffsetForLineAndPoint

# Function: __glPolygonOffsetZ
# Declared: Line 339 (Source lines: 341-374)
# Address: 0x0d9fc2b0 - 0x0d9fc408 (Size: 344 bytes, Frame: 48)
.globl __glPolygonOffsetZ
.ent __glPolygonOffsetZ
__glPolygonOffsetZ:
    # Line 341
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    lui	$ra,0x5
    addiu	$ra,$ra,19164
    sd	$gp,40($sp)
    addu	$gp,$t9,$ra
    # Line 346
    # lw $t9, -32696($gp) # &sub_0da00000
    # Line 341
    sdc1	$f15,8($sp)
    sd	$a1,24($sp)
    # Line 346
    addiu	$t9,$t9,-15920
    # Line 341
    sd	$s0,32($sp)
    # Line 346
    nop
    # Line 341
    move	$s0,$a0
    # Line 346
    bal __glSnapXRight
    # Line 341
    sdc1	$f14,0($sp)
    # Line 346
    lwc1	$f6,30336($s0)
    ldc1	$f8,0($sp)
    ld	$v0,24($sp)
    lwc1	$f7,30332($s0)
    lwc1	$f5,136($v0)
    madd.s	$f5,$f5,$f8,$f6
    ldc1	$f8,8($sp)
    madd.s	$f5,$f5,$f7,$f8
    # Line 360
    dmtc1	$zero,$f8
    # Line 346
    lw	$at,30324($s0)
    # Line 360
    cvt.d.s	$f4,$f6
    ld	$ra,16($sp)
    c.lt.d	$f8,$f4
    # Line 369
    ldc1	$f12,_lit8_3ee4f8b588e368f1
    # Line 346
    bltz	$at,.L0d9fc3f8
    add.s	$f5,$f0,$f5
    # Line 356
    sw	$zero,30492($s0)
    # Line 357
    lw	$a1,31304($s0)
    sw	$a1,30496($s0)
.L0d9fc338:
    # Line 360
    dsll32	$a2,$a1,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f7
    swc1	$f5,30484($s0)
    # Line 371
    dmtc1	$a2,$f10
    # Line 360
    bc1t	.L0d9fc3d4
    cvt.s.l	$f7,$f7
    # Line 364
    c.lt.d $f4,$f8
    bc1f .L0d9fc394
    nop
    # Line 367
    neg.s	$f9,$f6
    div.s	$f9,$f7,$f9
    # Line 366
    neg.s	$f8,$f5
    div.s	$f8,$f8,$f6
    # Line 374
    trunc.l.s	$f10,$f5
    ld	$gp,40($sp)
    dmfc1	$v0,$f10
    # Line 367
    swc1	$f9,30504($s0)
    # Line 374
    sll	$v0,$v0,0x0
    # Line 366
    swc1	$f8,30500($s0)
    # Line 374
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9fc394:
    # Line 371
    cvt.d.l	$f10,$f10
    div.d	$f10,$f10,$f12
    # Line 369
    sub.s	$f11,$f7,$f5
    cvt.d.s	$f11,$f11
    div.d	$f11,$f11,$f12
    # Line 371
    cvt.s.d	$f10,$f10
    swc1	$f10,30504($s0)
    # Line 369
    cvt.s.d	$f11,$f11
    swc1	$f11,30500($s0)
.L0d9fc3b8:
    # Line 374
    trunc.l.s	$f12,$f5
    ld	$gp,40($sp)
    dmfc1	$v0,$f12
    ld	$s0,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    sll	$v0,$v0,0x0
.L0d9fc3d4:
    # Line 364
    dmtc1	$a2,$f13
    cvt.d.l	$f13,$f13
    div.d	$f13,$f13,$f4
    # Line 363
    sub.s	$f14,$f7,$f5
    div.s	$f14,$f14,$f6
    swc1	$f14,30500($s0)
    # Line 364
    cvt.s.d	$f13,$f13
    b	.L0d9fc3b8
    swc1	$f13,30504($s0)
.L0d9fc3f8:
    # Line 354
    sw	$zero,30496($s0)
    # Line 353
    lw	$a1,31304($s0)
    # Line 354
    b	.L0d9fc338
    # Line 353
    sw	$a1,30492($s0)
.end __glPolygonOffsetZ

# Function: SetInitialParameters
# Declared: Line 378 (Source lines: 381-541)
# Address: 0x0d9fc410 - 0x0d9fcaa8 (Size: 1688 bytes, Frame: 192)
.ent SetInitialParameters
SetInitialParameters:
    # Line 385
    lw	$at,30140($a0)
    # Line 383
    lw	$v0,30136($a0)
    # Line 381
    addiu	$sp,$sp,-64
    # Line 385
    mtc1	$at,$f0
    # Line 381
    sdc1	$f24,8($sp)
    # Line 383
    mtc1	$v0,$f24
    # Line 385
    cvt.s.w	$f0,$f0
    # Line 383
    cvt.s.w	$f24,$f24
    # Line 381
    sd	$s0,24($sp)
    # Line 385
    lw	$t0,30436($a0)
    c.lt.s	$f24,$f0
    # Line 381
    mov.s	$f5,$f15
    move	$s0,$a0
    sdc1	$f20,16($sp)
    mov.s	$f20,$f16
    sdc1	$f22,0($sp)
    # Line 385
    andi	$a5,$t0,0x1000
    andi	$a7,$t0,0x4000
    # Line 381
    mov.s	$f22,$f17
    # Line 385
    andi	$a6,$t0,0x2
    bc1f	.L0d9fc6cc
    andi	$a4,$t0,0x1
    beqz	$a4,.L0d9fca40
    nop
    beqz	$a6,.L0d9fc51c
    # Line 404
    andi	$v1,$t0,0x8
    # Line 390
    lwc1	$f7,30284($a0)
    lwc1	$f6,30300($a0)
    lwc1	$f8,0($a2)
    madd.s	$f8,$f8,$f16,$f7
    madd.s	$f8,$f8,$f17,$f6
    # Line 391
    madd.s	$f6,$f6,$f24,$f7
    # Line 394
    lwc1	$f3,30304($a0)
    lwc1	$f2,30288($a0)
    # Line 390
    swc1	$f8,30208($a0)
    # Line 391
    swc1	$f6,30252($a0)
    # Line 392
    add.s	$f6,$f6,$f7
    swc1	$f6,30268($a0)
    # Line 394
    lwc1	$f4,4($a2)
    madd.s	$f4,$f4,$f16,$f2
    madd.s	$f4,$f4,$f17,$f3
    # Line 395
    madd.s	$f3,$f3,$f24,$f2
    # Line 398
    lwc1	$f0,30308($a0)
    lwc1	$f27,30292($a0)
    # Line 395
    swc1	$f3,30256($a0)
    # Line 394
    swc1	$f4,30212($a0)
    # Line 396
    add.s	$f2,$f2,$f3
    swc1	$f2,30272($a0)
    # Line 398
    lwc1	$f1,8($a2)
    madd.s	$f1,$f1,$f16,$f27
    madd.s	$f1,$f1,$f17,$f0
    # Line 399
    madd.s	$f0,$f0,$f24,$f27
    # Line 402
    lwc1	$f31,30312($a0)
    lwc1	$f29,30296($a0)
    # Line 399
    swc1	$f0,30260($a0)
    # Line 398
    swc1	$f1,30216($a0)
    # Line 400
    add.s	$f27,$f27,$f0
    swc1	$f27,30276($a0)
    # Line 403
    madd.s	$f27,$f31,$f24,$f29
    # Line 402
    lwc1	$f25,12($a2)
    madd.s	$f25,$f25,$f16,$f29
    madd.s	$f25,$f25,$f17,$f31
    # Line 403
    swc1	$f27,30264($a0)
    # Line 404
    add.s	$f29,$f29,$f27
    swc1	$f29,30280($a0)
    # Line 402
    swc1	$f25,30220($a0)
    # Line 404
    andi	$v1,$t0,0x8
.L0d9fc51c:
    beqz	$v1,.L0d9fc600
    nop
    # Line 407
    lwc1	$f16,140($a1)
    # Line 408
    lwc1	$f31,30380($s0)
    lwc1	$f2,48($a1)
    lwc1	$f0,30400($s0)
    mul.s	$f1,$f31,$f20
    madd.s	$f1,$f1,$f2,$f16
    madd.s	$f1,$f1,$f22,$f0
    # Line 410
    madd.s	$f0,$f0,$f24,$f31
    # Line 413
    lwc1	$f23,30384($s0)
    # Line 410
    swc1	$f0,30340($s0)
    # Line 408
    swc1	$f1,30224($s0)
    # Line 411
    add.s	$f31,$f31,$f0
    swc1	$f31,30360($s0)
    # Line 413
    lwc1	$f29,52($a1)
    lwc1	$f25,30404($s0)
    mul.s	$f27,$f23,$f20
    madd.s	$f27,$f27,$f29,$f16
    madd.s	$f27,$f27,$f22,$f25
    # Line 415
    madd.s	$f25,$f25,$f24,$f23
    # Line 418
    lwc1	$f17,30388($s0)
    # Line 415
    swc1	$f25,30344($s0)
    # Line 413
    swc1	$f27,30228($s0)
    # Line 416
    add.s	$f23,$f23,$f25
    swc1	$f23,30364($s0)
    # Line 418
    lwc1	$f21,56($a1)
    lwc1	$f18,30408($s0)
    mul.s	$f19,$f17,$f20
    madd.s	$f19,$f19,$f21,$f16
    madd.s	$f19,$f19,$f22,$f18
    # Line 420
    madd.s	$f18,$f18,$f24,$f17
    # Line 423
    lwc1	$f10,30392($s0)
    # Line 420
    swc1	$f18,30348($s0)
    # Line 418
    swc1	$f19,30232($s0)
    # Line 421
    add.s	$f17,$f17,$f18
    swc1	$f17,30368($s0)
    # Line 423
    lwc1	$f15,60($a1)
    lwc1	$f13,30412($s0)
    mul.s	$f14,$f10,$f20
    madd.s	$f14,$f14,$f15,$f16
    madd.s	$f14,$f14,$f22,$f13
    # Line 425
    madd.s	$f13,$f13,$f24,$f10
    # Line 428
    lwc1	$f12,30416($s0)
    lwc1	$f11,30396($s0)
    # Line 425
    swc1	$f13,30352($s0)
    # Line 423
    swc1	$f14,30236($s0)
    # Line 426
    add.s	$f10,$f10,$f13
    swc1	$f10,30372($s0)
    # Line 429
    madd.s	$f10,$f12,$f24,$f11
    # Line 428
    lwc1	$f9,180($a1)
    madd.s	$f9,$f9,$f20,$f11
    madd.s	$f9,$f9,$f22,$f12
    # Line 429
    swc1	$f10,30356($s0)
    # Line 430
    add.s	$f11,$f11,$f10
    swc1	$f11,30376($s0)
    # Line 428
    swc1	$f9,30240($s0)
.L0d9fc600:
    # Line 436
    beqz	$a7,.L0d9fc9c0
    nop
    # Line 442
    lwc1	$f4,30336($s0)
    lwc1	$f6,30332($s0)
    madd.s	$f7,$f6,$f24,$f4
    # Line 444
    lw	$a0,1792($s0)
    add.s	$f3,$f4,$f7
    dsll32	$a0,$a0,0x7
    # Line 443
    trunc.w.s	$f7,$f7
    swc1	$f7,30316($s0)
    # Line 444
    trunc.w.s	$f3,$f3
    bgez	$a0,.L0d9fc9a8
    swc1	$f3,30320($s0)
    # Line 447
    # lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sdc1	$f5,32($sp)
    sd	$a5,40($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f4,30336($s0)
    ld	$ra,48($sp)
    ld	$a5,40($sp)
    dmtc1	$zero,$f9
    ldc1	$f5,32($sp)
    cvt.d.s	$f8,$f4
    lw	$a0,30320($s0)
    # Line 450
    lw	$a1,30316($s0)
    # Line 447
    c.eq.d $f8,$f9
    # Line 453
    lw	$a4,30316($s0)
    # Line 447
    negu	$a0,$a0
    sw	$v0,30204($s0)
    # Line 450
    negu	$a1,$a1
    # Line 452
    mtc1	$a0,$f13
    # Line 449
    ldc1	$f12,_lit8_3ee4f8b588e368f1
    # Line 453
    negu	$a4,$a4
    # Line 447
    bc1f .L0d9fca04
    # Line 450
    mtc1	$a1,$f10
    cvt.d.w	$f10,$f10
    div.d	$f10,$f10,$f12
    # Line 449
    mtc1	$a0,$f11
    cvt.d.w	$f11,$f11
    div.d	$f11,$f11,$f12
    # Line 450
    cvt.s.d	$f10,$f10
    swc1	$f10,30512($s0)
    # Line 449
    cvt.s.d	$f11,$f11
    # Line 456
    bnez	$a5,.L0d9fc9c8
    # Line 449
    swc1	$f11,30508($s0)
    b	.L0d9fc994
    # Line 541
    ld	$s0,24($sp)
.L0d9fc6cc:
    # Line 463
    beqz	$a4,.L0d9fca74
    nop
    beqz	$a6,.L0d9fc77c
    nop
    # Line 468
    lwc1	$f25,30284($a0)
    lwc1	$f23,30300($a0)
    lwc1	$f27,0($a2)
    madd.s	$f27,$f27,$f16,$f25
    madd.s	$f27,$f27,$f17,$f23
    # Line 469
    madd.s	$f23,$f23,$f24,$f25
    # Line 471
    lwc1	$f18,30304($a0)
    lwc1	$f19,30288($a0)
    # Line 468
    swc1	$f27,30208($a0)
    # Line 469
    swc1	$f23,30252($a0)
    # Line 470
    sub.s	$f23,$f23,$f25
    swc1	$f23,30268($a0)
    # Line 471
    lwc1	$f21,4($a2)
    madd.s	$f21,$f21,$f16,$f19
    madd.s	$f21,$f21,$f17,$f18
    # Line 472
    madd.s	$f18,$f18,$f24,$f19
    # Line 475
    lwc1	$f13,30308($a0)
    lwc1	$f16,30292($a0)
    # Line 471
    swc1	$f21,30212($a0)
    # Line 472
    swc1	$f18,30256($a0)
    # Line 473
    sub.s	$f18,$f18,$f19
    swc1	$f18,30272($a0)
    # Line 475
    lwc1	$f17,8($a2)
    madd.s	$f17,$f17,$f20,$f16
    madd.s	$f17,$f17,$f22,$f13
    # Line 476
    madd.s	$f13,$f13,$f24,$f16
    # Line 479
    lwc1	$f15,30312($a0)
    lwc1	$f14,30296($a0)
    # Line 475
    swc1	$f17,30216($a0)
    # Line 476
    swc1	$f13,30260($a0)
    # Line 477
    sub.s	$f13,$f13,$f16
    swc1	$f13,30276($a0)
    # Line 480
    madd.s	$f13,$f15,$f24,$f14
    # Line 479
    lwc1	$f12,12($a2)
    madd.s	$f12,$f12,$f20,$f14
    madd.s	$f12,$f12,$f22,$f15
    # Line 480
    swc1	$f13,30264($a0)
    # Line 481
    sub.s	$f14,$f13,$f14
    swc1	$f14,30280($a0)
    # Line 479
    swc1	$f12,30220($a0)
.L0d9fc77c:
    # Line 481
    andi	$a2,$t0,0x8
    beqz	$a2,.L0d9fc864
    nop
    # Line 484
    lwc1	$f6,140($a1)
    # Line 485
    lwc1	$f16,30380($s0)
    lwc1	$f18,48($a1)
    lwc1	$f15,30400($s0)
    mul.s	$f17,$f16,$f20
    madd.s	$f17,$f17,$f18,$f6
    madd.s	$f17,$f17,$f22,$f15
    # Line 487
    madd.s	$f15,$f15,$f24,$f16
    # Line 490
    lwc1	$f12,30384($s0)
    # Line 485
    swc1	$f17,30224($s0)
    # Line 487
    swc1	$f15,30340($s0)
    # Line 488
    sub.s	$f15,$f15,$f16
    swc1	$f15,30360($s0)
    # Line 490
    lwc1	$f14,52($a1)
    lwc1	$f11,30404($s0)
    mul.s	$f13,$f12,$f20
    madd.s	$f13,$f13,$f14,$f6
    madd.s	$f13,$f13,$f22,$f11
    # Line 492
    madd.s	$f11,$f11,$f24,$f12
    # Line 495
    lwc1	$f8,30388($s0)
    # Line 490
    swc1	$f13,30228($s0)
    # Line 492
    swc1	$f11,30344($s0)
    # Line 493
    sub.s	$f11,$f11,$f12
    swc1	$f11,30364($s0)
    # Line 495
    lwc1	$f10,56($a1)
    lwc1	$f7,30408($s0)
    mul.s	$f9,$f8,$f20
    madd.s	$f9,$f9,$f10,$f6
    madd.s	$f9,$f9,$f22,$f7
    # Line 497
    madd.s	$f7,$f7,$f24,$f8
    # Line 500
    lwc1	$f2,30392($s0)
    # Line 495
    swc1	$f9,30232($s0)
    # Line 497
    swc1	$f7,30348($s0)
    # Line 498
    sub.s	$f7,$f7,$f8
    swc1	$f7,30368($s0)
    # Line 500
    lwc1	$f4,60($a1)
    lwc1	$f31,30412($s0)
    mul.s	$f3,$f2,$f20
    madd.s	$f3,$f3,$f4,$f6
    madd.s	$f3,$f3,$f22,$f31
    # Line 502
    madd.s	$f31,$f31,$f24,$f2
    # Line 505
    lwc1	$f1,30416($s0)
    lwc1	$f0,30396($s0)
    # Line 500
    swc1	$f3,30236($s0)
    # Line 502
    swc1	$f31,30352($s0)
    # Line 503
    sub.s	$f31,$f31,$f2
    swc1	$f31,30372($s0)
    # Line 506
    madd.s	$f31,$f1,$f24,$f0
    # Line 505
    lwc1	$f29,180($a1)
    madd.s	$f29,$f29,$f20,$f0
    madd.s	$f29,$f29,$f22,$f1
    # Line 506
    swc1	$f31,30356($s0)
    # Line 507
    sub.s	$f0,$f31,$f0
    swc1	$f0,30376($s0)
    # Line 505
    swc1	$f29,30240($s0)
.L0d9fc864:
    # Line 513
    beqz	$a7,.L0d9fc94c
    nop
    # Line 518
    lwc1	$f4,30336($s0)
    lwc1	$f6,30332($s0)
    madd.s	$f21,$f6,$f24,$f4
    # Line 520
    lw	$a3,1792($s0)
    sub.s	$f19,$f21,$f4
    dsll32	$a3,$a3,0x7
    # Line 519
    trunc.w.s	$f21,$f21
    swc1	$f21,30316($s0)
    # Line 520
    trunc.w.s	$f19,$f19
    bgez	$a3,.L0d9fc934
    swc1	$f19,30320($s0)
    # Line 522
    # lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sdc1	$f5,32($sp)
    sd	$a5,40($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f4,30336($s0)
    ld	$ra,48($sp)
    ld	$a5,40($sp)
    dmtc1	$zero,$f25
    lw	$a0,30320($s0)
    cvt.d.s	$f23,$f4
    # Line 525
    lw	$a1,30316($s0)
    # Line 522
    negu	$a0,$a0
    # Line 528
    lw	$a6,30316($s0)
    # Line 522
    c.eq.d $f23,$f25
    ldc1	$f5,32($sp)
    # Line 525
    negu	$a1,$a1
    # Line 527
    mtc1	$a0,$f15
    # Line 522
    sw	$v0,30204($s0)
    # Line 525
    mtc1	$a1,$f27
    # Line 528
    negu	$a6,$a6
    # Line 524
    ldc1	$f31,_lit8_3ee4f8b588e368f1
    # Line 522
    bc1f .L0d9fca24
    # Line 528
    mtc1	$a6,$f14
    # Line 525
    cvt.d.w	$f27,$f27
    div.d	$f27,$f27,$f31
    # Line 524
    mtc1	$a0,$f29
    cvt.d.w	$f29,$f29
    div.d	$f29,$f29,$f31
    # Line 525
    cvt.s.d	$f27,$f27
    swc1	$f27,30512($s0)
    # Line 524
    cvt.s.d	$f29,$f29
    # Line 531
    bnez	$a5,.L0d9fc954
    # Line 524
    swc1	$f29,30508($s0)
    b	.L0d9fc994
    # Line 541
    ld	$s0,24($sp)
.L0d9fc934:
    # Line 531
    lwc1	$f31,136($a1)
    madd.s	$f31,$f31,$f20,$f4
    madd.s	$f31,$f31,$f22,$f6
    trunc.l.s	$f31,$f31
    dmfc1	$a2,$f31
    sw	$a2,30204($s0)
.L0d9fc94c:
    beqz	$a5,.L0d9fc990
    nop
.L0d9fc954:
    # Line 536
    lwc1	$f2,30432($s0)
    lwc1	$f3,30428($s0)
    # Line 537
    madd.s	$f1,$f3,$f24,$f2
    # Line 536
    madd.s	$f0,$f5,$f20,$f2
    # Line 541
    ldc1	$f20,16($sp)
    # Line 536
    madd.s	$f0,$f0,$f22,$f3
    # Line 541
    ldc1	$f24,8($sp)
    ldc1	$f22,0($sp)
    # Line 537
    swc1	$f1,30420($s0)
    # Line 538
    sub.s	$f1,$f1,$f2
    swc1	$f1,30424($s0)
    # Line 536
    swc1	$f0,30244($s0)
    # Line 541
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fc990:
    ld	$s0,24($sp)
.L0d9fc994:
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fc9a8:
    # Line 456
    lwc1	$f7,136($a1)
    madd.s	$f7,$f7,$f20,$f4
    madd.s	$f7,$f7,$f22,$f6
    trunc.l.s	$f7,$f7
    dmfc1	$a3,$f7
    sw	$a3,30204($s0)
.L0d9fc9c0:
    beqz	$a5,.L0d9fc990
    nop
.L0d9fc9c8:
    # Line 461
    lwc1	$f9,30432($s0)
    lwc1	$f11,30428($s0)
    # Line 462
    madd.s	$f10,$f11,$f24,$f9
    # Line 461
    madd.s	$f8,$f5,$f20,$f9
    # Line 541
    ldc1	$f20,16($sp)
    # Line 461
    madd.s	$f8,$f8,$f22,$f11
    # Line 541
    ldc1	$f24,8($sp)
    ldc1	$f22,0($sp)
    # Line 462
    swc1	$f10,30420($s0)
    # Line 463
    add.s	$f9,$f9,$f10
    swc1	$f9,30424($s0)
    # Line 461
    swc1	$f8,30244($s0)
    # Line 541
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fca04:
    # Line 452
    cvt.s.w	$f13,$f13
    div.s	$f13,$f13,$f4
    # Line 453
    mtc1	$a4,$f12
    cvt.s.w	$f12,$f12
    div.s	$f12,$f12,$f4
    # Line 452
    swc1	$f13,30508($s0)
    b	.L0d9fc9c0
    # Line 453
    swc1	$f12,30512($s0)
.L0d9fca24:
    # Line 527
    cvt.s.w	$f15,$f15
    div.s	$f15,$f15,$f4
    # Line 528
    cvt.s.w	$f14,$f14
    div.s	$f14,$f14,$f4
    # Line 527
    swc1	$f15,30508($s0)
    b	.L0d9fc94c
    # Line 528
    swc1	$f14,30512($s0)
.L0d9fca40:
    # Line 430
    beqz	$a6,.L0d9fc600
    nop
    # Line 434
    lwc1	$f18,30284($a0)
    lwc1	$f19,30300($a0)
    lwc1	$f16,0($a2)
    # Line 435
    madd.s	$f17,$f19,$f24,$f18
    # Line 434
    madd.s	$f16,$f16,$f20,$f18
    madd.s	$f16,$f16,$f22,$f19
    # Line 435
    swc1	$f17,30252($a0)
    # Line 436
    add.s	$f17,$f17,$f18
    swc1	$f17,30268($a0)
    b	.L0d9fc600
    # Line 434
    swc1	$f16,30208($a0)
.L0d9fca74:
    # Line 507
    beqz	$a6,.L0d9fc864
    nop
    # Line 511
    lwc1	$f19,30284($a0)
    lwc1	$f21,30300($a0)
    lwc1	$f17,0($a2)
    # Line 512
    madd.s	$f18,$f21,$f24,$f19
    # Line 511
    madd.s	$f17,$f17,$f16,$f19
    madd.s	$f17,$f17,$f22,$f21
    # Line 512
    swc1	$f18,30252($a0)
    # Line 513
    sub.s	$f18,$f18,$f19
    swc1	$f18,30268($a0)
    b	.L0d9fc864
    # Line 511
    swc1	$f17,30208($a0)
.end SetInitialParameters

# Function: __glFillTriangle
# Declared: Line 543 (Source lines: 546-766)
# Address: 0x0d9fcab0 - 0x0d9fd294 (Size: 2020 bytes, Frame: 128)
.globl __glFillTriangle
.ent __glFillTriangle
__glFillTriangle:
    # Line 566
    lw	$v1,8($a2)
    # Line 546
    addiu	$sp,$sp,-256
    # Line 566
    sd	$v1,144($sp)
    # Line 546
    sd	$s5,184($sp)
    # Line 565
    lw	$s5,8($a1)
    # Line 546
    sdc1	$f26,104($sp)
    # Line 564
    lwc1	$f26,30192($a0)
    # Line 546
    sd	$a4,200($sp)
    sdc1	$f22,112($sp)
    # Line 563
    lwc1	$f22,30188($a0)
    # Line 546
    sdc1	$f24,128($sp)
    # Line 562
    lwc1	$f24,30184($a0)
    # Line 546
    sdc1	$f20,120($sp)
    # Line 561
    lwc1	$f20,30180($a0)
    sd	$s6,224($sp)
    sd	$ra,232($sp)
    # Line 546
    sd	$s2,160($sp)
    sd	$s3,152($sp)
    sd	$s1,192($sp)
    # Line 557
    lwc1	$f29,30176($a0)
    # Line 546
    sdc1	$f28,136($sp)
    sd	$s4,168($sp)
    move	$s1,$a3
    move	$s3,$a2
    # Line 560
    lw	$s4,30436($a0)
    # Line 546
    move	$s2,$a1
    lui	$v0,0x5
    # Line 557
    lwc1	$f28,3544($a0)
    # Line 546
    sd	$s0,176($sp)
    addiu	$v0,$v0,17116
    # Line 566
    andi	$at,$s4,0x1
    # Line 546
    move	$s0,$a0
    sd	$gp,208($sp)
    addu	$gp,$t9,$v0
    sd	$s7,240($sp)
    # Line 566
    andi	$a6,$s4,0x2
    beqz	$at,.L0d9fd0d8
    # Line 557
    div.s	$f28,$f28,$f29
    # Line 566
    beqz	$a6,.L0d9fd1d8
    nop
    # Line 582
    lw	$a1,8($a3)
    # Line 584
    ld	$a0,144($sp)
    # Line 583
    lwc1	$f11,0($a1)
    # Line 584
    lwc1	$f12,0($a0)
    # Line 586
    mul.s	$f4,$f28,$f20
    # Line 583
    lwc1	$f10,0($s5)
    # Line 586
    mul.s	$f0,$f28,$f24
    # Line 585
    mul.s	$f31,$f28,$f22
    # Line 584
    sub.s	$f12,$f12,$f11
    # Line 585
    mul.s	$f2,$f28,$f26
    # Line 583
    sub.s	$f10,$f10,$f11
    # Line 585
    mul.s	$f11,$f31,$f12
    msub.s	$f11,$f11,$f2,$f10
    # Line 586
    mul.s	$f10,$f0,$f10
    msub.s	$f10,$f10,$f4,$f12
    swc1	$f10,30300($s0)
    # Line 585
    swc1	$f11,30284($s0)
    # Line 587
    lwc1	$f8,4($a1)
    # Line 588
    lwc1	$f9,4($a0)
    # Line 587
    lwc1	$f7,4($s5)
    # Line 588
    sub.s	$f9,$f9,$f8
    # Line 587
    sub.s	$f7,$f7,$f8
    # Line 589
    mul.s	$f8,$f31,$f9
    msub.s	$f8,$f8,$f7,$f2
    # Line 590
    mul.s	$f7,$f0,$f7
    msub.s	$f7,$f7,$f9,$f4
    swc1	$f7,30304($s0)
    # Line 589
    swc1	$f8,30288($s0)
    # Line 591
    lwc1	$f5,8($a1)
    # Line 592
    lwc1	$f6,8($a0)
    # Line 591
    lwc1	$f3,8($s5)
    # Line 592
    sub.s	$f6,$f6,$f5
    # Line 591
    sub.s	$f3,$f3,$f5
    # Line 593
    mul.s	$f5,$f31,$f6
    msub.s	$f5,$f5,$f3,$f2
    # Line 594
    mul.s	$f3,$f0,$f3
    msub.s	$f3,$f3,$f6,$f4
    swc1	$f3,30308($s0)
    # Line 593
    swc1	$f5,30292($s0)
    # Line 595
    lwc1	$f5,12($a1)
    lwc1	$f1,12($s5)
    # Line 596
    lwc1	$f3,12($a0)
    # Line 595
    sub.s	$f1,$f1,$f5
    # Line 596
    sub.s	$f3,$f3,$f5
    # Line 598
    mul.s	$f0,$f0,$f1
    msub.s	$f0,$f0,$f3,$f4
    # Line 597
    mul.s	$f31,$f31,$f3
    msub.s	$f31,$f31,$f1,$f2
    # Line 598
    swc1	$f0,30312($s0)
    # Line 597
    swc1	$f31,30296($s0)
.L0d9fcc18:
    # Line 604
    andi	$a2,$s4,0x8
    beqz	$a2,.L0d9fce38
    # Line 679
    andi	$a3,$s4,0x4000
    # Line 613
    lwc1	$f0,140($s3)
    # Line 614
    lwc1	$f31,140($s1)
    # Line 615
    lwc1	$f3,48($s1)
    # Line 621
    lwc1	$f5,48($s3)
    # Line 612
    lwc1	$f18,140($s2)
    # Line 620
    lwc1	$f4,48($s2)
    # Line 615
    mul.s	$f3,$f3,$f31
    # Line 621
    msub.s	$f5,$f3,$f5,$f0
    # Line 623
    mul.s	$f25,$f28,$f20
    # Line 620
    msub.s	$f3,$f3,$f4,$f18
    # Line 623
    mul.s	$f19,$f28,$f24
    # Line 622
    mul.s	$f21,$f28,$f22
    mul.s	$f29,$f28,$f26
    mul.s	$f4,$f21,$f5
    msub.s	$f4,$f4,$f3,$f29
    # Line 623
    mul.s	$f3,$f19,$f3
    msub.s	$f3,$f3,$f5,$f25
    # Line 618
    lwc1	$f27,60($s1)
    # Line 617
    lwc1	$f1,56($s1)
    # Line 616
    lwc1	$f2,52($s1)
    # Line 623
    swc1	$f3,30400($s0)
    # Line 622
    swc1	$f4,30380($s0)
    # Line 625
    lwc1	$f4,52($s3)
    # Line 616
    mul.s	$f2,$f2,$f31
    # Line 624
    lwc1	$f3,52($s2)
    # Line 625
    msub.s	$f4,$f2,$f4,$f0
    # Line 624
    msub.s	$f2,$f2,$f3,$f18
    # Line 626
    mul.s	$f3,$f21,$f4
    msub.s	$f3,$f3,$f2,$f29
    # Line 627
    mul.s	$f2,$f19,$f2
    msub.s	$f2,$f2,$f4,$f25
    swc1	$f2,30404($s0)
    # Line 626
    swc1	$f3,30384($s0)
    # Line 629
    lwc1	$f3,56($s3)
    # Line 617
    mul.s	$f1,$f1,$f31
    # Line 628
    lwc1	$f2,56($s2)
    # Line 629
    msub.s	$f3,$f1,$f3,$f0
    # Line 628
    msub.s	$f1,$f1,$f2,$f18
    # Line 630
    mul.s	$f2,$f21,$f3
    msub.s	$f2,$f2,$f1,$f29
    # Line 631
    mul.s	$f1,$f19,$f1
    msub.s	$f1,$f1,$f3,$f25
    # Line 614
    sdc1	$f31,88($sp)
    # Line 631
    swc1	$f1,30408($s0)
    # Line 630
    swc1	$f2,30388($s0)
    # Line 633
    lwc1	$f23,60($s3)
    # Line 618
    mul.s	$f27,$f27,$f31
    # Line 632
    lwc1	$f31,60($s2)
    # Line 633
    msub.s	$f23,$f27,$f23,$f0
    # Line 632
    msub.s	$f27,$f27,$f31,$f18
    # Line 623
    sdc1	$f19,32($sp)
    # Line 635
    mul.s	$f19,$f19,$f27
    msub.s	$f19,$f19,$f23,$f25
    # Line 622
    sdc1	$f21,16($sp)
    # Line 634
    mul.s	$f21,$f21,$f23
    msub.s	$f21,$f21,$f27,$f29
    # Line 622
    sdc1	$f29,56($sp)
    # Line 639
    lw	$t9,12520($s0)
    # Line 635
    swc1	$f19,30412($s0)
    # Line 634
    swc1	$f21,30392($s0)
    # Line 639
    lwc1	$f17,60($s2)
    lwc1	$f16,56($s2)
    lwc1	$f15,52($s2)
    lwc1	$f14,48($s2)
    mul.s	$f17,$f17,$f18
    # Line 623
    sdc1	$f25,24($sp)
    # Line 639
    mul.s	$f16,$f16,$f18
    move	$a0,$s0
    addiu	$s6,$s0,30136
    # Line 613
    sdc1	$f0,80($sp)
    # Line 639
    mul.s	$f15,$f15,$f18
    move	$a1,$s6
    # Line 612
    sdc1	$f18,8($sp)
    # Line 639
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f19,60($s2)
    ldc1	$f18,8($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f18,$f18,$f19
    # Line 645
    swc1	$f18,180($s2)
    # Line 646
    lwc1	$f14,48($s3)
    # Line 639
    sdc1	$f18,40($sp)
    # Line 646
    ldc1	$f18,80($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s3)
    lwc1	$f15,52($s3)
    lw	$t9,12520($s0)
    mul.s	$f17,$f17,$f18
    mul.s	$f16,$f16,$f18
    move	$a1,$s6
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f19,60($s3)
    ldc1	$f18,80($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f18,$f18,$f19
    # Line 652
    swc1	$f18,180($s3)
    # Line 653
    lwc1	$f14,48($s1)
    # Line 646
    sdc1	$f18,48($sp)
    # Line 653
    ldc1	$f18,88($sp)
    lwc1	$f17,60($s1)
    lwc1	$f16,56($s1)
    lwc1	$f15,52($s1)
    lw	$t9,12520($s0)
    mul.s	$f17,$f17,$f18
    mul.s	$f16,$f16,$f18
    move	$a1,$s6
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f27,60($s1)
    # Line 663
    ldc1	$f25,88($sp)
    # Line 653
    mul.s	$f27,$f27,$f0
    # Line 663
    ldc1	$f29,40($sp)
    nmsub.s	$f29,$f29,$f25,$f27
    ldc1	$f21,48($sp)
    # Line 664
    ldc1	$f23,32($sp)
    # Line 663
    nmsub.s	$f21,$f21,$f25,$f27
    # Line 664
    ldc1	$f31,24($sp)
    mul.s	$f23,$f29,$f23
    msub.s	$f23,$f23,$f21,$f31
    # Line 663
    ldc1	$f31,16($sp)
    mul.s	$f21,$f21,$f31
    ldc1	$f31,56($sp)
    msub.s	$f21,$f21,$f29,$f31
    # Line 653
    mul.s	$f25,$f25,$f27
    # Line 659
    swc1	$f25,180($s1)
    # Line 664
    swc1	$f23,30416($s0)
    # Line 663
    swc1	$f21,30396($s0)
.L0d9fce34:
    # Line 679
    andi	$a3,$s4,0x4000
.L0d9fce38:
    beqz	$a3,.L0d9fce94
    # Line 690
    andi	$a5,$s4,0x1000
    # Line 685
    lwc1	$f4,136($s1)
    lwc1	$f0,136($s2)
    # Line 688
    mul.s	$f3,$f28,$f24
    # Line 686
    lwc1	$f1,136($s3)
    # Line 688
    mul.s	$f2,$f28,$f20
    # Line 687
    mul.s	$f31,$f28,$f26
    # Line 685
    sub.s	$f0,$f0,$f4
    # Line 686
    sub.s	$f1,$f1,$f4
    # Line 687
    mul.s	$f4,$f28,$f22
    mul.s	$f31,$f31,$f0
    nmsub.s	$f31,$f31,$f1,$f4
    # Line 688
    mul.s	$f0,$f0,$f3
    msub.s	$f0,$f0,$f1,$f2
    # Line 689
    trunc.w.s	$f29,$f31
    # Line 688
    swc1	$f0,30332($s0)
    # Line 687
    swc1	$f31,30336($s0)
    # Line 689
    mfc1	$a4,$f29
    swc1	$f29,30324($s0)
    # Line 690
    sll	$a4,$a4,0x5
    sw	$a4,30328($s0)
    andi	$a5,$s4,0x1000
.L0d9fce94:
    beqz	$a5,.L0d9fcf40
    nop
    lw	$a6,1912($s0)
    li	$a7,4354
    bne	$a6,$a7,.L0d9fcec4
    nop
    # Line 700
    lwc1	$f7,104($s1)
    # Line 699
    lwc1	$f5,104($s3)
    # Line 698
    lwc1	$f6,104($s2)
    # Line 699
    swc1	$f5,4($sp)
    # Line 700
    b	.L0d9fcf10
    # Line 698
    swc1	$f6,0($sp)
.L0d9fcec4:
    # Line 703
    lw	$t9,12536($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s2
    # Line 704
    lw	$t9,12536($s0)
    # Line 703
    sdc1	$f0,96($sp)
    # Line 704
    move	$a1,$s3
    move	$a0,$s0
    jalr	$t9
    # Line 703
    swc1	$f0,0($sp)
    # Line 705
    lw	$t9,12536($s0)
    # Line 704
    sdc1	$f0,216($sp)
    # Line 705
    move	$a1,$s1
    move	$a0,$s0
    jalr	$t9
    # Line 704
    swc1	$f0,4($sp)
    ldc1	$f5,216($sp)
    ldc1	$f6,96($sp)
    # Line 705
    mov.s	$f7,$f0
.L0d9fcf10:
    # Line 710
    mul.s	$f4,$f28,$f24
    # Line 709
    sub.s	$f9,$f6,$f7
    # Line 710
    mul.s	$f8,$f28,$f20
    # Line 709
    sub.s	$f3,$f5,$f7
    # Line 710
    mul.s	$f4,$f9,$f4
    msub.s	$f4,$f4,$f8,$f3
    # Line 709
    mul.s	$f10,$f28,$f22
    mul.s	$f8,$f28,$f26
    mul.s	$f3,$f3,$f10
    msub.s	$f3,$f3,$f8,$f9
    # Line 710
    swc1	$f4,30428($s0)
    # Line 709
    swc1	$f3,30432($s0)
.L0d9fcf40:
    # Line 714
    lwc1	$f28,3540($s0)
    lwc1	$f29,132($s2)
    # Line 716
    lwc1	$f3,132($s1)
    # Line 715
    lwc1	$f0,132($s3)
    # Line 714
    add.s	$f31,$f29,$f28
    # Line 716
    add.s	$f3,$f3,$f28
    # Line 714
    trunc.w.s	$f31,$f31
    # Line 724
    sub.s	$f1,$f29,$f0
    # Line 723
    lwc1	$f4,128($s2)
    # Line 724
    cvt.s.w	$f2,$f31
    # Line 715
    add.s	$f0,$f28,$f0
    # Line 724
    sdc1	$f1,72($sp)
    # Line 716
    trunc.w.s	$f3,$f3
    # Line 723
    lwc1	$f1,128($s3)
    # Line 724
    div.s	$f14,$f20,$f22
    ld	$t0,200($sp)
    # Line 715
    trunc.w.s	$f0,$f0
    # Line 716
    mfc1	$s7,$f3
    # Line 724
    add.s	$f28,$f28,$f2
    # Line 715
    mfc1	$s4,$f0
    # Line 723
    sub.s	$f1,$f4,$f1
    # Line 714
    mfc1	$s6,$f31
    # Line 723
    sdc1	$f1,64($sp)
    # Line 724
    beqz	$t0,.L0d9fd124
    sub.s	$f28,$f28,$f29
    # Line 728
    # lw $t9, -25220($gp) # &__glSnapXLeft
    move	$a0,$s0
    bal __glSnapXLeft
    madd.s	$f13,$f4,$f14,$f28
    # Line 730
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    # lw $t9, -32696($gp) # &sub_0da00000
    lwc1	$f18,128($s2)
    move	$a0,$s0
    addiu	$t9,$t9,-15344
    add.s	$f16,$f16,$f17
    move	$a1,$s2
    move	$a2,$s5
    lwc1	$f15,0($sp)
    mov.s	$f17,$f28
    bal __glPolygonOffsetZ
    sub.s	$f16,$f16,$f18
    bne	$s6,$s4,.L0d9fd048
    # Line 733
    ldc1	$f16,72($sp)
    # Line 735
    la	$s1,sub_0da00000
.L0d9fcffc:
    bne	$s4,$s7,.L0d9fd088
    addiu	$s1,$s1,-17872
.L0d9fd004:
    ld	$s6,224($sp)
.L0d9fd008:
    ld	$s3,152($sp)
    ld	$s2,160($sp)
    ld	$s4,168($sp)
    ld	$s0,176($sp)
    ld	$s5,184($sp)
    ld	$s1,192($sp)
    ld	$s7,240($sp)
    ldc1	$f26,104($sp)
    ldc1	$f22,112($sp)
    ldc1	$f20,120($sp)
    ld	$ra,232($sp)
    ldc1	$f24,128($sp)
    ldc1	$f28,136($sp)
    # Line 766
    ld	$gp,208($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9fd048:
    # Line 733
    ldc1	$f15,64($sp)
    div.s	$f15,$f15,$f16
    # lw $t9, -25216($gp) # &__glSnapXRight
    lwc1	$f13,128($s2)
    mov.s	$f14,$f15
    addiu	$a0,$s0,30136
    bal __glSnapXRight
    madd.s	$f13,$f13,$f15,$f28
    # Line 735
    # lw $t9, -32696($gp) # &sub_0da00000
    addiu	$t9,$t9,-17872
    move	$a0,$s0
    move	$a1,$s6
    bal __glClipTriangle
    move	$a2,$s4
    b	.L0d9fcffc
    la	$s1,sub_0da00000
.L0d9fd088:
    # Line 741
    div.s	$f15,$f24,$f26
    mtc1	$s4,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f18,3540($s0)
    lwc1	$f17,132($s3)
    add.s	$f16,$f16,$f18
    # lw $t9, -25216($gp) # &__glSnapXRight
    sub.s	$f16,$f16,$f17
    lwc1	$f13,128($s3)
    mov.s	$f14,$f15
    addiu	$a0,$s0,30136
    bal __glSnapXRight
    madd.s	$f13,$f13,$f15,$f16
    # Line 743
    move	$t9,$s1
    move	$a0,$s0
    move	$a1,$s4
    bal __glClipTriangle
    move	$a2,$s7
    b	.L0d9fd008
    ld	$s6,224($sp)
.L0d9fd0d8:
    # Line 664
    beqz	$a6,.L0d9fd280
    # Line 674
    ld	$ra,144($sp)
    # Line 672
    lw	$at,8($a3)
    # Line 673
    lwc1	$f19,0($s5)
    lwc1	$f23,0($at)
    # Line 674
    lwc1	$f17,0($ra)
    # Line 676
    mul.s	$f21,$f28,$f20
    mul.s	$f18,$f28,$f24
    # Line 673
    sub.s	$f19,$f19,$f23
    # Line 674
    sub.s	$f17,$f17,$f23
    # Line 675
    mul.s	$f23,$f28,$f22
    # Line 676
    mul.s	$f18,$f19,$f18
    msub.s	$f18,$f18,$f17,$f21
    # Line 675
    mul.s	$f21,$f28,$f26
    mul.s	$f17,$f17,$f23
    msub.s	$f17,$f17,$f19,$f21
    # Line 676
    swc1	$f18,30300($a0)
    b	.L0d9fce34
    # Line 675
    swc1	$f17,30284($a0)
.L0d9fd124:
    # Line 748
    # lw $t9, -25216($gp) # &__glSnapXRight
    madd.s	$f13,$f4,$f14,$f28
    bal __glSnapXRight
    addiu	$a0,$s0,30136
    bne	$s6,$s4,.L0d9fd204
    # Line 751
    ldc1	$f16,72($sp)
    # Line 754
    la	$s2,sub_0da00000
.L0d9fd140:
    la	$s1,sub_0da00000
    addiu	$s2,$s2,-15344
    beq	$s4,$s7,.L0d9fd004
    addiu	$s1,$s1,-17872
    # Line 760
    div.s	$f15,$f24,$f26
    # Line 759
    mtc1	$s4,$f20
    cvt.s.w	$f20,$f20
    lwc1	$f23,3540($s0)
    lwc1	$f21,132($s3)
    add.s	$f20,$f20,$f23
    # Line 760
    # lw $t9, -25220($gp) # &__glSnapXLeft
    # Line 759
    sub.s	$f20,$f20,$f21
    # Line 760
    lwc1	$f13,128($s3)
    mov.s	$f14,$f15
    move	$a0,$s0
    bal __glSnapXLeft
    madd.s	$f13,$f13,$f20,$f15
    # Line 762
    lw	$t8,30148($s0)
    mtc1	$t8,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f18,3540($s0)
    lwc1	$f17,128($s3)
    move	$t9,$s2
    add.s	$f16,$f16,$f18
    move	$a0,$s0
    move	$a1,$s3
    ld	$a2,144($sp)
    lwc1	$f15,4($sp)
    sub.s	$f16,$f16,$f17
    bal __glPolygonOffsetZ
    mov.s	$f17,$f20
    # Line 763
    move	$t9,$s1
    move	$a0,$s0
    move	$a1,$s4
    bal __glClipTriangle
    move	$a2,$s7
    b	.L0d9fd008
    ld	$s6,224($sp)
.L0d9fd1d8:
    # Line 600
    lw	$t9,28072($a0)
    lw	$t9,8($t9)
    # Line 601
    lwc1	$f21,0($t9)
    swc1	$f21,30208($a0)
    # Line 602
    lwc1	$f19,4($t9)
    swc1	$f19,30212($a0)
    # Line 603
    lwc1	$f18,8($t9)
    swc1	$f18,30216($a0)
    # Line 604
    lwc1	$f17,12($t9)
    b	.L0d9fcc18
    swc1	$f17,30220($a0)
.L0d9fd204:
    # Line 751
    ldc1	$f15,64($sp)
    div.s	$f15,$f15,$f16
    # lw $t9, -25220($gp) # &__glSnapXLeft
    lwc1	$f13,128($s2)
    mov.s	$f14,$f15
    move	$a0,$s0
    bal __glSnapXLeft
    madd.s	$f13,$f13,$f15,$f28
    # Line 753
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f18,3540($s0)
    # lw $t9, -32696($gp) # &sub_0da00000
    lwc1	$f17,128($s2)
    addiu	$t9,$t9,-15344
    add.s	$f16,$f16,$f18
    move	$a2,$s5
    move	$a1,$s2
    lwc1	$f15,0($sp)
    move	$a0,$s0
    sub.s	$f16,$f16,$f17
    bal __glPolygonOffsetZ
    mov.s	$f17,$f28
    # Line 754
    # lw $t9, -32696($gp) # &sub_0da00000
    addiu	$t9,$t9,-17872
    move	$a0,$s0
    move	$a1,$s6
    bal __glClipTriangle
    move	$a2,$s4
    b	.L0d9fd140
    la	$s2,sub_0da00000
.L0d9fd280:
    # Line 679
    lw	$ra,28072($a0)
    lw	$ra,8($ra)
    lwc1	$f17,0($ra)
    b	.L0d9fce34
    swc1	$f17,30208($a0)
.end __glFillTriangle

# Function: __glFillFlatFogTriangle
# Declared: Line 768 (Source lines: 770-791)
# Address: 0x0d9fd2a0 - 0x0d9fd3b4 (Size: 276 bytes, Frame: 144)
.globl __glFillFlatFogTriangle
.ent __glFillFlatFogTriangle
__glFillFlatFogTriangle:
    # Line 770
    addiu	$sp,$sp,-144
    sd	$ra,48($sp)
    sd	$s1,112($sp)
    sd	$s2,128($sp)
    sd	$s8,72($sp)
    sd	$s0,64($sp)
    sd	$s3,120($sp)
    sd	$s4,56($sp)
    lui	$at,0x5
    sd	$gp,80($sp)
    addiu	$at,$at,15084
    move	$s0,$a0
    addu	$gp,$t9,$at
    # Line 776
    lw	$t9,12532($a0)
    # Line 770
    move	$s3,$a1
    # Line 776
    addiu	$a1,$sp,0
    # Line 775
    lw	$s4,28072($a0)
    # Line 770
    move	$s8,$a4
    move	$s2,$a3
    # Line 776
    lwc1	$f15,176($s3)
    # Line 770
    move	$s1,$a2
    # Line 776
    jalr	$t9
    lw	$a2,8($s4)
    # Line 777
    lw	$t9,12532($s0)
    move	$a0,$s0
    lwc1	$f15,176($s1)
    lw	$a2,8($s4)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 778
    lw	$t9,12532($s0)
    move	$a0,$s0
    lwc1	$f15,176($s2)
    lw	$a2,8($s4)
    jalr	$t9
    addiu	$a1,$sp,32
    ld	$s4,56($sp)
    # Line 781
    lw	$a0,8($s2)
    # Line 780
    lw	$a1,8($s1)
    # Line 779
    lw	$a2,8($s3)
    # Line 782
    sw	$sp,8($s3)
    # Line 783
    addiu	$v1,$sp,16
    sw	$v1,8($s1)
    # Line 784
    addiu	$v0,$sp,32
    sw	$v0,8($s2)
    # Line 786
    lw	$t9,12084($s0)
    move	$a4,$s8
    move	$a3,$s2
    # Line 779
    sd	$a2,104($sp)
    # Line 786
    move	$a2,$s1
    # Line 780
    sd	$a1,96($sp)
    # Line 786
    move	$a1,$s3
    # Line 781
    sd	$a0,88($sp)
    # Line 786
    jalr	$t9
    move	$a0,$s0
    ld	$s0,64($sp)
    ld	$s8,72($sp)
    # Line 791
    ld	$gp,80($sp)
    # Line 790
    ld	$a3,88($sp)
    # Line 789
    ld	$a4,96($sp)
    # Line 788
    ld	$a5,104($sp)
    sw	$a5,8($s3)
    # Line 789
    sw	$a4,8($s1)
    # Line 791
    ld	$s1,112($sp)
    ld	$ra,48($sp)
    # Line 790
    sw	$a3,8($s2)
    # Line 791
    ld	$s2,128($sp)
    ld	$s3,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glFillFlatFogTriangle

.rdata
_lit8_3ee4f8b588e368f1:
    .word 0x3ee4f8b5, 0x88e368f1
_lit8_41e0000000000000:
    .word 0x41e00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

