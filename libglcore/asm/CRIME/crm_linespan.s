# Source: ../CRIME/crm_linespan.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_linespan.c
# Total Functions: 2

.text

# Function: __glCrmStoreLine
# Declared: Line 42 (Source lines: 43-466)
# Address: 0x0d94e020 - 0x0d94f0dc (Size: 4284 bytes, Frame: 176)
.globl __glCrmStoreLine
.ent __glCrmStoreLine
__glCrmStoreLine:
    # Line 70
    lw	$a1,29876($a0)
    # Line 71
    lw	$a2,29884($a0)
    # Line 73
    lw	$a3,29896($a0)
    # Line 43
    addiu	$sp,$sp,-816
    sd	$s6,568($sp)
    # Line 77
    lw	$s6,30204($a0)
    # Line 43
    sd	$s5,496($sp)
    # Line 75
    lw	$s5,29872($a0)
    # Line 43
    sd	$s4,528($sp)
    # Line 74
    lw	$s4,29868($a0)
    # Line 73
    sd	$a3,680($sp)
    # Line 43
    sd	$s3,552($sp)
    # Line 72
    lw	$s3,29892($a0)
    # Line 71
    sd	$a2,648($sp)
    # Line 70
    sd	$a1,640($sp)
    # Line 43
    sd	$s7,512($sp)
    # Line 62
    lw	$s7,32188($a0)
    # Line 43
    sd	$s2,560($sp)
    # Line 62
    lw	$s2,32184($a0)
    # Line 43
    sd	$s1,504($sp)
    # Line 48
    lw	$s1,30436($a0)
    sdc1	$f24,784($sp)
    sdc1	$f28,776($sp)
    sdc1	$f22,768($sp)
    sdc1	$f26,760($sp)
    sdc1	$f20,752($sp)
    sdc1	$f30,744($sp)
    sd	$ra,792($sp)
    sd	$gp,536($sp)
    # Line 43
    sd	$s0,520($sp)
    # Line 69
    lw	$v1,29888($a0)
    sd	$v1,600($sp)
    # Line 66
    lw	$at,30248($a0)
    # Line 43
    sd	$s8,544($sp)
    # Line 77
    lui	$s8,0x1
    # Line 66
    sd	$at,576($sp)
    # Line 77
    addu	$s8,$a0,$s8
    lw	$at,-32644($s8)
    # Line 68
    lw	$v0,29880($a0)
    sd	$v0,592($sp)
    # Line 43
    lui	$v0,0x10
    # Line 77
    andi	$at,$at,0x2
    # Line 43
    move	$s0,$a0
    # Line 64
    lw	$v1,32100($a0)
    # Line 43
    addiu	$v0,$v0,11628
    # Line 64
    sw	$v1,0($sp)
    # Line 77
    beqz	$at,.L0d94ef80
    # Line 43
    addu	$gp,$t9,$v0
    # Line 77
    andi	$a4,$s1,0x1
    beqz	$a4,.L0d94ef60
    nop
    # Line 85
    lbu	$t0,-32633($s8)
    # Line 84
    lbu	$a7,-32634($s8)
    # Line 85
    mtc1	$t0,$f31
    # Line 83
    lbu	$a6,-32635($s8)
    # Line 84
    mtc1	$a7,$f29
    # Line 83
    mtc1	$a6,$f0
    # Line 82
    lbu	$a5,-32636($s8)
    # Line 85
    cvt.s.w	$f31,$f31
    # Line 84
    cvt.s.w	$f29,$f29
    # Line 82
    mtc1	$a5,$f28
    # Line 83
    cvt.s.w	$f0,$f0
    # Line 85
    swc1	$f31,12($sp)
    # Line 84
    swc1	$f29,8($sp)
    # Line 82
    cvt.s.w	$f28,$f28
    # Line 83
    swc1	$f0,4($sp)
.L0d94e128:
    # Line 93
    andi	$t1,$s1,0x8
    beqz	$t1,.L0d94ef3c
    nop
    # Line 96
    lwc1	$f0,30224($s0)
    # Line 98
    lwc1	$f2,30236($s0)
    # Line 97
    lwc1	$f1,30228($s0)
    # Line 98
    sdc1	$f2,440($sp)
    swc1	$f2,24($sp)
    # Line 97
    sdc1	$f1,424($sp)
    # Line 101
    lbu	$t2,28216($s0)
    # Line 96
    sdc1	$f0,432($sp)
    # Line 97
    swc1	$f1,20($sp)
    # Line 101
    beqz	$t2,.L0d94ef34
    # Line 96
    swc1	$f0,16($sp)
    # Line 101
    lw	$t3,32088($s0)
    sll	$t3,$t3,0x10
    bltz	$t3,.L0d94ef34
    move	$a0,$zero
.L0d94e170:
    andi	$t8,$a0,0xff
    # Line 138
    move	$a2,$zero
    # Line 101
    beqz	$t8,.L0d94f054
    sd	$t8,704($sp)
    # Line 109
    ld	$t9,576($sp)
    mtc1	$t9,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f23,3544($s0)
    div.s	$f23,$f23,$f5
    # Line 112
    lwc1	$f22,30392($s0)
    ldc1	$f7,440($sp)
    # Line 108
    lwc1	$f27,29860($s0)
    # Line 114
    ldc1	$f29,_lit8_3ff0000000000000
    # Line 112
    madd.s	$f22,$f7,$f5,$f22
    # Line 108
    lwc1	$f25,3540($s0)
    # Line 111
    cvt.d.s	$f7,$f7
    # Line 106
    lw	$a0,28208($s0)
    # Line 114
    c.eq.d	$f7,$f29
    # Line 108
    sub.s	$f25,$f25,$f27
    # Line 116
    lwc1	$f27,_lit_b7000000
    # Line 108
    sdc1	$f25,392($sp)
    # Line 111
    mov.d	$f24,$f7
    # Line 112
    cvt.d.s	$f22,$f22
    # Line 114
    bc1f	.L0d94e1dc
    # Line 109
    sdc1	$f23,400($sp)
    # Line 114
    c.eq.d $f22,$f29
    bc1t .L0d94ef4c
.L0d94e1dc:
    ldc1	$f8,440($sp)
    lwc1	$f4,_lit_37000000
    abs.s	$f8,$f8
    c.lt.s $f8,$f4
    bc1f .L0d94e204
    dmtc1	$zero,$f6
    # Line 115
    lwc1	$f24,_lit_b7000000
    # Line 114
    c.lt.d $f7,$f6
    movf.s	$f24,$f4,$fcc3
    # Line 115
    cvt.d.s	$f24,$f24
.L0d94e204:
    abs.d	$f25,$f22
    cvt.s.d	$f25,$f25
    c.lt.s $f25,$f4
    bc1f .L0d94e224
    nop
    c.lt.d $f22,$f6
    movf.s	$f27,$f4,$fcc5
    # Line 116
    cvt.d.s	$f22,$f27
.L0d94e224:
    # Line 118
    lwc1	$f26,32168($s0)
    # Line 120
    ldc1	$f29,_lit8_3ff0000000000000
    # Line 118
    cvt.d.s	$f26,$f26
    mul.d	$f26,$f26,$f22
    # Line 120
    div.d	$f22,$f29,$f22
    # Line 117
    lwc1	$f20,32164($s0)
    cvt.d.s	$f20,$f20
    mul.d	$f20,$f20,$f24
    # Line 119
    div.d	$f24,$f29,$f24
.L0d94e248:
    # Line 128
    lwc1	$f30,30380($s0)
    ldc1	$f4,432($sp)
    mul.s	$f30,$f30,$f5
    lw	$ra,4($a0)
    cvt.d.s	$f4,$f4
    li	$a3,10497
    cvt.d.s	$f30,$f30
    mul.d	$f7,$f4,$f24
    beq	$a3,$ra,.L0d94efc4
    madd.d	$f30,$f4,$f30,$f22
    # Line 136
    ldc1	$f2,_lit8_3ff0000000000000
    madd.d	$f8,$f2,$f4,$f24
    # Line 137
    add.d	$f30,$f30,$f2
    # Line 138
    mov.d	$f1,$f8
    # Line 137
    c.lt.d $f30,$f8
    # Line 138
    ldc1	$f0,_lit8_401c000000000000
    movf.d	$f1,$f30,$fcc7
    c.lt.d $f0,$f1
    ldc1	$f4,_lit8_c01c000000000000
    sdc1	$f8,408($sp)
    bc1t .L0d94e2b4
    mov.d	$f3,$f8
    c.lt.d $f8,$f30
    movf.d	$f3,$f30,$fcc1
    c.lt.d	$f3,$f4
    bc1f	.L0d94ef78
    nop
.L0d94e2b4:
    li	$a2,1
    sd	$a2,472($sp)
.L0d94e2bc:
    lw	$v0,232($a0)
    li	$v1,1
    beq	$v0,$v1,.L0d94f040
    # Line 157
    ldc1	$f14,_lit8_c01c000000000000
    # Line 147
    lwc1	$f4,30384($s0)
    ldc1	$f7,424($sp)
    mul.s	$f4,$f4,$f5
    lw	$a1,8($a0)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f4,$f4
    mul.d	$f9,$f7,$f24
    # Line 157
    move	$a0,$zero
    # Line 147
    beq	$a3,$a1,.L0d94f06c
    madd.d	$f4,$f7,$f4,$f22
    # Line 155
    ldc1	$f12,_lit8_3ff0000000000000
    madd.d	$f5,$f12,$f7,$f24
    # Line 156
    add.d	$f4,$f4,$f12
    # Line 157
    mov.d	$f11,$f5
    # Line 156
    c.lt.d $f4,$f5
    # Line 157
    ldc1	$f10,_lit8_401c000000000000
    movf.d	$f11,$f4,$fcc3
    c.lt.d $f10,$f11
    mov.d	$f13,$f5
    dmtc1	$zero,$f22
    sdc1	$f5,728($sp)
    bc1t .L0d94e33c
    mov.d	$f24,$f5
    c.lt.d $f5,$f4
    movf.d	$f13,$f4,$fcc5
    c.lt.d $f13,$f14
    bc1f .L0d94efbc
    mov.d	$f24,$f5
.L0d94e33c:
    li	$a0,1
    sd	$a0,480($sp)
.L0d94e344:
    # Line 163
    c.le.d $f20,$f22
    bc1t .L0d94e360
    # Line 164
    mov.d	$f12,$f20
    # Line 163
    c.le.d $f26,$f22
    bc1f .L0d94e39c
    # Line 169
    mov.d	$f5,$f20
    # Line 164
    mov.d	$f12,$f20
.L0d94e360:
    # Line 163
    c.lt.d	$f20,$f26
    # Line 165
    # lw $t9, -28804($gp) # &__glFloor
    movf.d	$f12,$f26,$fcc0
    sdc1	$f4,384($sp)
    jal	__glFloor
    cvt.s.d	$f12,$f12
    # Line 166
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    lwc1	$f13,_lit_37000000
    sub.s	$f13,$f13,$f14
    cvt.d.s	$f13,$f13
    # Line 167
    add.d	$f26,$f13,$f26
    ldc1	$f4,384($sp)
    # Line 166
    add.d	$f20,$f13,$f20
    # Line 169
    mov.d	$f5,$f20
.L0d94e39c:
    # Line 167
    c.lt.d $f26,$f20
    movf.d	$f5,$f26,$fcc2
    # Line 170
    c.eq.d $f5,$f22
    bc1t .L0d94e3c8
    ldc1	$f15,_lit8_3ff0000000000000
    c.eq.d $f5,$f15
    bc1t .L0d94e3cc
    # Line 194
    lw	$at,0($sp)
    # Line 172
    div.d	$f16,$f15,$f5
    # Line 173
    mul.d	$f26,$f16,$f26
    # Line 172
    mul.d	$f20,$f16,$f20
.L0d94e3c8:
    # Line 194
    lw	$at,0($sp)
.L0d94e3cc:
    lui	$v0,0xff
    # Line 196
    ld	$t8,480($sp)
    # Line 194
    ori	$v0,$v0,0xffff
    # Line 182
    mul.d	$f1,$f26,$f4
    # Line 198
    ld	$t9,472($sp)
    # Line 194
    and	$at,$at,$v0
    lui	$v0,0x300
    # Line 182
    nmsub.d	$f1,$f1,$f20,$f24
    # Line 179
    ldc1	$f6,408($sp)
    ldc1	$f21,400($sp)
    # Line 198
    li	$t0,4
    move	$t1,$t9
    # Line 194
    or	$at,$at,$v0
    # Line 179
    mul.d	$f2,$f26,$f30
    # Line 198
    movn	$t1,$t0,$t9
    # Line 194
    lui	$v0,0x3
    # Line 185
    ldc1	$f3,392($sp)
    # Line 199
    movz	$t0,$t8,$t8
    # Line 179
    nmsub.d	$f2,$f2,$f20,$f6
    # Line 199
    sw	$t0,88($sp)
    # Line 194
    nor	$v0,$v0,$zero
    # Line 196
    andi	$ra,$t8,0x1
    # Line 179
    cvt.d.s	$f21,$f21
    # Line 198
    sw	$t1,84($sp)
    # Line 182
    mul.d	$f5,$f20,$f24
    # Line 196
    sll	$ra,$ra,0x1
    # Line 202
    li	$t3,1
    # Line 196
    andi	$t9,$t9,0x1
    # Line 185
    cvt.d.s	$f3,$f3
    # Line 202
    dsll32	$t3,$t3,0xb
    # Line 182
    mul.d	$f1,$f21,$f1
    # Line 179
    mul.d	$f6,$f20,$f6
    # Line 196
    or	$t9,$t9,$ra
    sw	$t9,80($sp)
    # Line 202
    dsrav	$v1,$t3,$t1
    # Line 196
    lw	$t2,80($sp)
    # Line 183
    sub.d	$f23,$f26,$f20
    # Line 186
    madd.d	$f5,$f5,$f3,$f1
    # Line 202
    dmtc1	$v1,$f0
    # Line 196
    sw	$t2,8500($s2)
    # Line 194
    and	$at,$at,$v0
    lui	$v0,0x2
    # Line 179
    mul.d	$f2,$f21,$f2
    # Line 194
    or	$at,$at,$v0
    sw	$at,0($sp)
    # Line 183
    mul.d	$f21,$f21,$f23
    # Line 182
    sdc1	$f1,40($sp)
    # Line 202
    cvt.d.l	$f0,$f0
    # Line 185
    madd.d	$f6,$f6,$f3,$f2
    # Line 183
    sdc1	$f21,48($sp)
    # Line 187
    madd.d	$f3,$f20,$f3,$f21
    # Line 179
    sdc1	$f2,32($sp)
    # Line 202
    mul.d	$f0,$f0,$f2
    sdc1	$f0,96($sp)
    # Line 204
    dsrav	$t3,$t3,$t0
    # Line 202
    ldc1	$f2,96($sp)
    # Line 204
    dmtc1	$t3,$f29
    # Line 186
    sdc1	$f5,64($sp)
    # Line 187
    sdc1	$f3,72($sp)
    # Line 202
    trunc.l.d	$f2,$f2
    # Line 185
    sdc1	$f6,56($sp)
    # Line 204
    cvt.d.l	$f29,$f29
    # Line 202
    sdc1	$f2,104($sp)
    ldc1	$f31,104($sp)
    # Line 204
    mul.d	$f29,$f29,$f1
    # Line 202
    ldc1	$f27,104($sp)
    # Line 204
    sdc1	$f29,112($sp)
    ldc1	$f23,112($sp)
    # Line 206
    ldc1	$f25,_lit8_41c0000000000000
    # Line 202
    sdc1	$f31,8504($s2)
    sdc1	$f27,8504($s7)
    # Line 204
    trunc.l.d	$f23,$f23
    # Line 206
    mul.d	$f21,$f21,$f25
    # Line 204
    sdc1	$f23,120($sp)
    ldc1	$f3,120($sp)
    # Line 206
    cvt.s.d	$f21,$f21
    # Line 204
    ldc1	$f2,120($sp)
    # Line 206
    swc1	$f21,128($sp)
    lwc1	$f1,128($sp)
    # Line 204
    sdc1	$f3,8520($s2)
    sdc1	$f2,8520($s7)
    # Line 206
    trunc.w.s	$f1,$f1
    swc1	$f1,132($sp)
    lw	$a7,132($sp)
    lw	$a6,132($sp)
    sw	$a7,8536($s2)
    sw	$a6,8536($s7)
    # Line 207
    sdc1	$f0,136($sp)
    ldc1	$f31,136($sp)
    trunc.l.d	$f31,$f31
    sdc1	$f31,144($sp)
    ldc1	$f27,144($sp)
    ldc1	$f25,144($sp)
    # Line 209
    sdc1	$f29,152($sp)
    ldc1	$f23,152($sp)
    # Line 207
    sdc1	$f27,8512($s2)
    sdc1	$f25,8512($s7)
    # Line 209
    trunc.l.d	$f23,$f23
    sdc1	$f23,160($sp)
    ldc1	$f19,160($sp)
    ldc1	$f18,160($sp)
    # Line 211
    swc1	$f21,168($sp)
    lwc1	$f17,168($sp)
    # Line 209
    sdc1	$f19,8528($s2)
    sdc1	$f18,8528($s7)
    # Line 211
    trunc.w.s	$f17,$f17
    swc1	$f17,172($sp)
    lw	$a5,172($sp)
    andi	$a4,$s1,0x4
    lw	$a3,172($sp)
    sw	$a5,8540($s2)
    beqz	$a4,.L0d94e5b8
    sw	$a3,8540($s7)
    # Line 214
    sd	$zero,176($sp)
    ldc1	$f6,176($sp)
    ldc1	$f5,176($sp)
    # Line 215
    sd	$zero,184($sp)
    ldc1	$f4,184($sp)
    ldc1	$f3,184($sp)
    # Line 214
    sdc1	$f6,8656($s2)
    sdc1	$f5,8656($s7)
    # Line 215
    sdc1	$f4,8664($s2)
    sdc1	$f3,8664($s7)
.L0d94e5b8:
    lw	$a0,1792($s0)
    andi	$v1,$a0,0x20
    beqz	$v1,.L0d94e5f8
    # Line 223
    li	$a4,1
    # Line 218
    sw	$zero,192($sp)
    lw	$a3,192($sp)
    sw	$a3,8576($s2)
    lw	$a2,192($sp)
    sw	$a2,8576($s7)
    # Line 219
    sw	$zero,196($sp)
    lw	$a1,196($sp)
    sw	$a1,8584($s2)
    lw	$a0,196($sp)
    sw	$a0,8584($s7)
    lw	$a0,1792($s0)
.L0d94e5f4:
    # Line 223
    li	$a4,1
.L0d94e5f8:
    sd	$a4,720($sp)
.L0d94e5fc:
    # Line 229
    lw	$a6,1912($s0)
    lwc1	$f7,30244($s0)
    li	$a5,4354
    beq	$a5,$a6,.L0d94efa0
    sdc1	$f7,448($sp)
.L0d94e610:
    # Line 237
    andi	$s7,$a0,0x200
    beqz	$s7,.L0d94e66c
    nop
    sd	$s8,488($sp)
    # Line 246
    lwc1	$f12,29988($s0)
    # Line 245
    lwc1	$f11,29984($s0)
    # Line 246
    swc1	$f12,248($sp)
    # Line 240
    lwc1	$f12,29996($s0)
    # Line 243
    lwc1	$f9,29976($s0)
    # Line 244
    lwc1	$f10,29980($s0)
    # Line 242
    lwc1	$f8,472($s0)
    # Line 244
    swc1	$f10,240($sp)
    # Line 241
    lwc1	$f10,3540($s0)
    # Line 245
    swc1	$f11,244($sp)
    # Line 243
    swc1	$f9,236($sp)
    # Line 241
    lwc1	$f9,29956($s0)
    # Line 242
    msub.s	$f8,$f10,$f8,$f10
    # Line 239
    lwc1	$f11,29992($s0)
    # Line 240
    swc1	$f12,224($sp)
    # Line 239
    swc1	$f11,220($sp)
    # Line 241
    sub.s	$f9,$f9,$f10
    swc1	$f9,228($sp)
    # Line 242
    swc1	$f8,232($sp)
.L0d94e66c:
    sd	$s8,488($sp)
    # Line 250
    ld	$s8,576($sp)
    addiu	$s8,$s8,-1
    bltz	$s8,.L0d94ee84
    ldc1	$f24,784($sp)
    lwc1	$f22,220($sp)
    lwc1	$f24,224($sp)
    sd	$zero,688($sp)
    andi	$a2,$s1,0x8000
    sd	$a2,632($sp)
    andi	$a1,$s1,0x2000
    sd	$a1,584($sp)
    andi	$a0,$s1,0x2
    sd	$a0,672($sp)
    andi	$a0,$s1,0x4
    sd	$a0,664($sp)
    lw	$ra,0($sp)
    sd	$ra,608($sp)
    andi	$v0,$s1,0x1000
    sd	$v0,696($sp)
    lw	$v0,84($sp)
    andi	$v1,$s1,0x1
    sd	$v1,712($sp)
    lw	$v1,88($sp)
    lwc1	$f13,20($sp)
    lwc1	$f14,16($sp)
    lwc1	$f15,24($sp)
    lwc1	$f17,252($sp)
    lwc1	$f16,208($sp)
    sdc1	$f17,456($sp)
    sdc1	$f16,416($sp)
    mtc1	$zero,$f30
    li	$at,1
    sdc1	$f15,440($sp)
    dsll32	$at,$at,0xb
    sdc1	$f14,432($sp)
    sdc1	$f13,424($sp)
    dsrav	$v1,$at,$v1
    sd	$v1,624($sp)
    dsrav	$at,$at,$v0
    li	$a3,-1
    sd	$at,616($sp)
    srl	$ra,$ra,0x18
    li	$a4,3
    b	.L0d94eabc
    sd	$ra,656($sp)
    nop
    nop
    nop
.L0d94e730:
    # Line 291
    add.s	$f18,$f5,$f22
    sdc1	$f18,464($sp)
.L0d94e738:
    # Line 295
    # lw $t9, -22848($gp) # &floorf
    jal	floorf
    ldc1	$f12,464($sp)
    # Line 318
    trunc.w.s	$f27,$f0
    mfc1	$t0,$f27
    li	$a7,1
    addu	$t0,$t0,$a7
    mtc1	$t0,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,30004($s0)
    cvt.s.w	$f27,$f27
    mul.s	$f23,$f23,$f21
    mul.s	$f21,$f21,$f27
    trunc.w.s	$f23,$f23
    trunc.w.s	$f21,$f21
    mfc1	$a6,$f23
    mfc1	$t0,$f21
    lhu	$a5,480($s0)
    andi	$a6,$a6,0xf
    andi	$t0,$t0,0xf
    sllv	$a6,$a7,$a6
    sllv	$a7,$a7,$t0
    and	$a6,$a5,$a6
    ldc1	$f25,464($sp)
    and	$a5,$a5,$a7
    sltu	$a6,$zero,$a6
    sltu	$a5,$zero,$a5
    mtc1	$a6,$f19
    mtc1	$a5,$f21
    sub.s	$f25,$f25,$f27
    cvt.s.w	$f19,$f19
    cvt.s.w	$f21,$f21
    sub.s	$f23,$f26,$f25
    mul.s	$f19,$f19,$f25
    madd.s	$f19,$f19,$f21,$f23
    mul.s	$f20,$f20,$f19
    # Line 321
    c.eq.s $f20,$f30
    li	$s1,1
    movt	$s1,$zero,$fcc4
    li	$a3,-1
    beqz	$s1,.L0d94e810
    li	$a4,3
.L0d94e7e0:
    ld	$t1,688($sp)
.L0d94e7e4:
    # Line 335
    sll	$a2,$s5,0x6
    # Line 321
    beqz	$t1,.L0d94ec6c
    # Line 334
    sll	$a0,$s4,0x6
.L0d94e7f0:
    sw	$a0,256($sp)
    lw	$t2,256($sp)
    # Line 335
    sw	$a2,260($sp)
    ld	$t3,656($sp)
    lw	$t8,260($sp)
    sw	$t8,8324($s2)
    beq	$a4,$t3,.L0d94ed20
    # Line 334
    sw	$t2,8320($s2)
.L0d94e810:
    # Line 354
    ld	$a6,624($sp)
    # Line 339
    ld	$t9,664($sp)
    # Line 355
    ldc1	$f3,_lit8_41c0000000000000
    # Line 345
    dsll32	$ra,$s6,0x0
    # Line 353
    ld	$a7,616($sp)
    # Line 345
    dsrl32	$ra,$ra,0x0
    # Line 347
    ld	$v0,720($sp)
    # Line 339
    beqz	$t9,.L0d94e868
    # Line 345
    dmtc1	$ra,$f31
    # Line 339
    beqz	$s1,.L0d94e860
    # Line 345
    lwc1	$f29,_lit_42800000
    cvt.s.l	$f31,$f31
    mul.s	$f29,$f29,$f31
    cvt.d.s	$f29,$f29
    sdc1	$f29,272($sp)
    ldc1	$f27,272($sp)
    trunc.l.d	$f27,$f27
    sdc1	$f27,280($sp)
    ldc1	$f25,280($sp)
    sdc1	$f25,8648($s2)
.L0d94e860:
    # Line 347
    lw	$at,30324($s0)
    addu	$s6,$at,$s6
.L0d94e868:
    beqz	$v0,.L0d94e93c
    # Line 353
    ldc1	$f9,56($sp)
    # Line 347
    ld	$v1,704($sp)
    beqz	$v1,.L0d94ed50
    # Line 363
    ldc1	$f15,440($sp)
    # Line 347
    beqz	$s1,.L0d94e910
    # Line 359
    ldc1	$f13,72($sp)
    # Line 353
    dmtc1	$a7,$f8
    cvt.d.l	$f8,$f8
    mul.d	$f8,$f8,$f9
    sdc1	$f8,288($sp)
    ldc1	$f7,288($sp)
    trunc.l.d	$f7,$f7
    dmfc1	$a5,$f7
    # Line 354
    dmtc1	$a6,$f6
    # Line 353
    daddiu	$a5,$a5,2048
    sd	$a5,296($sp)
    # Line 354
    ldc1	$f7,64($sp)
    cvt.d.l	$f6,$f6
    # Line 353
    ldc1	$f2,296($sp)
    # Line 354
    mul.d	$f6,$f6,$f7
    sdc1	$f6,304($sp)
    ldc1	$f5,304($sp)
    # Line 355
    ldc1	$f4,72($sp)
    # Line 354
    trunc.l.d	$f5,$f5
    dmfc1	$a2,$f5
    # Line 355
    mul.d	$f3,$f3,$f4
    # Line 354
    daddiu	$a2,$a2,2048
    sd	$a2,312($sp)
    # Line 355
    cvt.s.d	$f3,$f3
    # Line 354
    ldc1	$f0,312($sp)
    # Line 355
    swc1	$f3,320($sp)
    lwc1	$f1,320($sp)
    trunc.w.s	$f1,$f1
    # Line 353
    sdc1	$f2,8480($s2)
    # Line 355
    mfc1	$a1,$f1
    # Line 354
    sdc1	$f0,8488($s2)
    # Line 355
    addiu	$a1,$a1,2048
    sw	$a1,324($sp)
    lw	$a0,324($sp)
    sw	$a0,8496($s2)
    # Line 359
    ldc1	$f13,72($sp)
.L0d94e910:
    ldc1	$f14,48($sp)
    add.d	$f13,$f14,$f13
    sdc1	$f13,72($sp)
    # Line 358
    ldc1	$f11,64($sp)
    ldc1	$f12,40($sp)
    add.d	$f11,$f12,$f11
    sdc1	$f11,64($sp)
    # Line 357
    ldc1	$f9,56($sp)
    ldc1	$f10,32($sp)
    add.d	$f9,$f10,$f9
    sdc1	$f9,56($sp)
.L0d94e93c:
    # Line 384
    ld	$t0,696($sp)
    # Line 404
    ldc1	$f15,448($sp)
    # Line 384
    ld	$t8,704($sp)
    li	$t1,4354
    beqz	$t0,.L0d94eb2c
    ld	$t3,584($sp)
.L0d94e954:
    beqz	$s1,.L0d94eb3c
    # Line 409
    ld	$t9,712($sp)
    # Line 384
    lw	$t2,1912($s0)
    beq	$t1,$t2,.L0d94ecb8
    # Line 404
    mov.s	$f26,$f15
    sdc1	$f15,456($sp)
.L0d94e96c:
    ld	$t3,712($sp)
    beqz	$t3,.L0d94e9a0
.L0d94e974:
    # Line 407
    ldc1	$f17,456($sp)
    ldc1	$f18,_lit8_406fe00000000000
    cvt.d.s	$f17,$f17
    mul.d	$f17,$f17,$f18
    lwc1	$f16,_lit_45800000
    cvt.s.d	$f17,$f17
    mul.s	$f16,$f16,$f17
    trunc.w.s	$f16,$f16
    swc1	$f16,348($sp)
    lw	$t8,348($sp)
    sw	$t8,8568($s2)
.L0d94e9a0:
    # Line 409
    lwc1	$f18,30432($s0)
.L0d94e9a4:
    ld	$t9,712($sp)
    add.s	$f18,$f18,$f26
    beqz	$t9,.L0d94eb44
    sdc1	$f18,448($sp)
    # Line 413
    ld	$ra,720($sp)
.L0d94e9b8:
    # Line 415
    lwc1	$f19,12($sp)
    lwc1	$f23,8($sp)
    # Line 413
    beqz	$ra,.L0d94e9d4
    # Line 415
    lwc1	$f21,4($sp)
    # Line 413
    ld	$at,704($sp)
    beqz	$at,.L0d94ebf0
    # Line 415
    ld	$a0,672($sp)
.L0d94e9d4:
    # Line 413
    beqz	$s1,.L0d94ebec
    # Line 415
    ld	$v1,672($sp)
    trunc.w.s	$f25,$f28
    trunc.w.s	$f21,$f21
    mul.s	$f19,$f20,$f19
    trunc.w.s	$f23,$f23
    mfc1	$a5,$f25
    mfc1	$a2,$f21
    trunc.w.s	$f19,$f19
    mfc1	$a1,$f23
    sll	$a5,$a5,0x18
    sll	$a2,$a2,0x10
    mfc1	$a0,$f19
    sll	$a1,$a1,0x8
    or	$a1,$a1,$a2
    or	$a0,$a0,$a5
    or	$a0,$a0,$a1
    sw	$a0,352($sp)
    lw	$v0,352($sp)
    beqz	$v1,.L0d94ea60
    sw	$v0,8400($s2)
    # Line 421
    lwc1	$f31,12($sp)
.L0d94ea2c:
    lwc1	$f0,30296($s0)
    # Line 419
    lwc1	$f25,30288($s0)
    # Line 420
    lwc1	$f29,30292($s0)
    # Line 421
    add.s	$f31,$f0,$f31
    swc1	$f31,12($sp)
    # Line 420
    lwc1	$f27,8($sp)
    # Line 418
    lwc1	$f21,30284($s0)
    # Line 420
    add.s	$f27,$f29,$f27
    swc1	$f27,8($sp)
    # Line 419
    lwc1	$f23,4($sp)
    add.s	$f23,$f25,$f23
    # Line 418
    add.s	$f28,$f21,$f28
    # Line 419
    swc1	$f23,4($sp)
.L0d94ea60:
    # Line 421
    beqz	$s1,.L0d94ea78
    # Line 445
    ld	$a7,680($sp)
.L0d94ea68:
    # Line 442
    sw	$zero,356($sp)
    lw	$a6,356($sp)
    sw	$a6,10736($s2)
    # Line 445
    ld	$a7,680($sp)
.L0d94ea78:
    # Line 452
    lwc1	$f2,244($sp)
    # Line 250
    addiu	$s8,$s8,-1
    # Line 451
    lwc1	$f1,236($sp)
    # Line 445
    beqz	$s7,.L0d94ebc8
    addu	$s3,$s3,$a7
    bltz	$s3,.L0d94eca8
    # Line 449
    lwc1	$f12,248($sp)
    # Line 452
    add.s	$f24,$f2,$f24
    # Line 451
    add.s	$f22,$f1,$f22
.L0d94ea9c:
    # Line 452
    bltz	$s3,.L0d94ebd0
    # Line 457
    ld	$v0,592($sp)
.L0d94eaa4:
    # Line 461
    ld	$t1,648($sp)
    # Line 460
    ld	$t0,640($sp)
    # Line 461
    addu	$s5,$t1,$s5
    # Line 460
    addu	$s4,$t0,$s4
.L0d94eab4:
    # Line 250
    beq	$s8,$a3,.L0d94ee80
    nop
.L0d94eabc:
    beqz	$s7,.L0d94ec60
    # Line 272
    lwc1	$f21,228($sp)
    # Line 250
    lwc1	$f3,232($sp)
    # Line 266
    lwc1	$f4,3540($s0)
    # Line 250
    c.lt.s $f3,$f24
    lwc1	$f26,3544($s0)
    # Line 331
    li	$s1,1
    # Line 277
    ld	$t2,632($sp)
    # Line 250
    bc1f .L0d94eb80
    # Line 266
    c.lt.s $f22,$f4
    # Line 256
    sub.s	$f20,$f3,$f24
    add.s	$f20,$f26,$f20
    # Line 257
    c.lt.s $f20,$f30
    movt.s	$f20,$f30,$fcc6
.L0d94eaf4:
    # Line 266
    bc1f .L0d94eba4
    nop
    # Line 271
    add.s	$f21,$f4,$f22
    mul.s	$f20,$f20,$f21
    # Line 272
    c.lt.s	$f20,$f30
    movt.s	$f20,$f30,$fcc0
.L0d94eb0c:
    # Line 277
    beqz	$t2,.L0d94eca0
    nop
    c.lt.s $f4,$f22
    bc1t .L0d94e730
    lwc1	$f5,30000($s0)
    # Line 293
    add.s	$f23,$f4,$f5
    b	.L0d94e738
    sdc1	$f23,464($sp)
.L0d94eb2c:
    # Line 384
    beqz	$t3,.L0d94eb3c
    # Line 409
    ld	$t9,712($sp)
    # Line 384
    bnez	$t8,.L0d94e954
    # Line 409
    ld	$t9,712($sp)
.L0d94eb3c:
    bnez	$t9,.L0d94e9b8
    # Line 413
    ld	$ra,720($sp)
.L0d94eb44:
    # Line 442
    beqz	$s1,.L0d94ec40
    # Line 434
    ld	$a5,672($sp)
    # Line 442
    beqz	$s7,.L0d94ec00
    # Line 428
    mov.s	$f5,$f28
    # Line 426
    # lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    mov.s	$f12,$f28
    jal	__glBuildAntiAliasIndex
    mov.s	$f13,$f20
    # Line 428
    ld	$ra,696($sp)
    li	$a3,-1
    li	$a4,3
    bnez	$ra,.L0d94ec08
    # Line 426
    mov.s	$f5,$f0
    b	.L0d94ec30
    # Line 434
    trunc.w.s	$f9,$f5
.L0d94eb80:
    # Line 257
    neg.s	$f25,$f3
    c.lt.s $f24,$f25
    bc1f .L0d94eaf4
    # Line 266
    mov.s	$f20,$f26
    # Line 261
    add.s	$f20,$f3,$f24
    add.s	$f20,$f26,$f20
    # Line 262
    c.lt.s $f20,$f30
    b	.L0d94eaf4
    movt.s	$f20,$f30,$fcc3
.L0d94eba4:
    # Line 272
    c.lt.s $f21,$f22
    bc1f .L0d94eb0c
    nop
    # Line 276
    sub.s	$f23,$f21,$f22
    add.s	$f23,$f26,$f23
    mul.s	$f20,$f20,$f23
    # Line 277
    c.lt.s $f20,$f30
    b	.L0d94eb0c
    movt.s	$f20,$f30,$fcc5
.L0d94ebc8:
    # Line 452
    bgez	$s3,.L0d94eaa4
    # Line 457
    ld	$v0,592($sp)
.L0d94ebd0:
    # Line 458
    ld	$v1,600($sp)
    lui	$at,0x7fff
    ori	$at,$at,0xffff
    addu	$s5,$v1,$s5
    # Line 457
    addu	$s4,$v0,$s4
    # Line 458
    b	.L0d94eab4
    # Line 456
    and	$s3,$s3,$at
.L0d94ebec:
    # Line 415
    ld	$a0,672($sp)
.L0d94ebf0:
    bnez	$a0,.L0d94ea2c
    # Line 421
    lwc1	$f31,12($sp)
    b	.L0d94ea60
    nop
.L0d94ec00:
    # Line 428
    ld	$a1,696($sp)
    beqz	$a1,.L0d94ec2c
.L0d94ec08:
    # Line 432
    ldc1	$f8,456($sp)
    lwc1	$f6,1624($s0)
    ldc1	$f7,_lit8_3ff0000000000000
    cvt.d.s	$f8,$f8
    cvt.d.s	$f6,$f6
    sub.d	$f7,$f7,$f8
    cvt.d.s	$f5,$f5
    madd.d	$f5,$f5,$f6,$f7
    cvt.s.d	$f5,$f5
.L0d94ec2c:
    # Line 434
    trunc.w.s	$f9,$f5
.L0d94ec30:
    swc1	$f9,360($sp)
    lw	$a2,360($sp)
    sw	$a2,8400($s2)
    ld	$a5,672($sp)
.L0d94ec40:
    beqz	$a5,.L0d94ec50
    nop
    # Line 437
    lwc1	$f10,30284($s0)
    add.s	$f28,$f10,$f28
.L0d94ec50:
    bnez	$s1,.L0d94ea68
    nop
    b	.L0d94ea78
    # Line 445
    ld	$a7,680($sp)
.L0d94ec60:
    # Line 331
    lwc1	$f20,_lit_3f800000
    b	.L0d94e7e0
    li	$s1,1
.L0d94ec6c:
    # Line 321
    ld	$a7,608($sp)
    lw	$a6,32096($s0)
    # Line 331
    lw	$t0,0($sp)
    li	$t8,1
    # Line 321
    beq	$a6,$a7,.L0d94ec98
    # Line 331
    ld	$t2,608($sp)
    lw	$t3,32184($s0)
    sw	$t2,8288($t3)
    lw	$t1,32188($s0)
    sw	$t0,8288($t1)
    sw	$t0,32096($s0)
.L0d94ec98:
    b	.L0d94e7f0
    sd	$t8,688($sp)
.L0d94eca0:
    b	.L0d94e7e4
    # Line 321
    ld	$t1,688($sp)
.L0d94eca8:
    # Line 449
    lwc1	$f11,240($sp)
    add.s	$f24,$f12,$f24
    b	.L0d94ea9c
    # Line 448
    add.s	$f22,$f11,$f22
.L0d94ecb8:
    # Line 387
    ldc1	$f13,448($sp)
    c.lt.s $f13,$f30
    # Line 389
    li	$at,9729
    li	$ra,2049
    # Line 387
    mov.s	$f26,$f13
    # Line 389
    lw	$a0,1588($s0)
    li	$t9,2048
    # Line 387
    bc1f .L0d94ece4
    mov.s	$f4,$f13
    # Line 388
    ldc1	$f4,448($sp)
    neg.s	$f4,$f4
.L0d94ece4:
    # Line 389
    beq	$t9,$a0,.L0d94eee8
    # Line 391
    ldc1	$f13,416($sp)
    # Line 389
    beq	$ra,$a0,.L0d94ef0c
    # Line 394
    lwc1	$f13,212($sp)
    # Line 389
    beq	$at,$a0,.L0d94ee68
.L0d94ecf8:
    # Line 399
    ldc1	$f5,456($sp)
    c.lt.s $f5,$f30
    # Line 401
    ldc1	$f7,456($sp)
    # Line 399
    bc1f .L0d94ed3c
    # Line 404
    ld	$v0,712($sp)
    bnez	$v0,.L0d94e974
    # Line 401
    sdc1	$f30,456($sp)
    b	.L0d94e9a4
    # Line 409
    lwc1	$f18,30432($s0)
    nop
.L0d94ed20:
    # Line 338
    sw	$a0,264($sp)
    lw	$v1,264($sp)
    # Line 339
    sw	$a2,268($sp)
    lw	$a1,268($sp)
    sw	$a1,8332($s2)
    b	.L0d94e810
    # Line 338
    sw	$v1,8328($s2)
.L0d94ed3c:
    # Line 401
    lwc1	$f8,3544($s0)
    c.lt.s	$f8,$f7
    movt.s	$f7,$f8,$fcc0
    b	.L0d94e96c
    sdc1	$f7,456($sp)
.L0d94ed50:
    # Line 363
    lwc1	$f14,3544($s0)
    # Line 368
    swc1	$f28,328($sp)
    lwc1	$f21,4($sp)
    # Line 363
    div.s	$f14,$f14,$f15
    # Line 368
    swc1	$f21,332($sp)
    lwc1	$f19,8($sp)
    swc1	$f19,336($sp)
    lwc1	$f18,12($sp)
    # Line 369
    ldc1	$f15,424($sp)
    # Line 368
    swc1	$f18,340($sp)
    # Line 369
    lwc1	$f17,204($sp)
    lwc1	$f16,200($sp)
    ldc1	$f18,432($sp)
    lw	$t9,12524($s0)
    mul.s	$f17,$f14,$f17
    mul.s	$f16,$f14,$f16
    addiu	$a1,$sp,328
    mul.s	$f15,$f14,$f15
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    # Line 374
    lwc1	$f21,328($sp)
    li	$a3,-1
    lwc1	$f18,336($sp)
    # Line 369
    beqz	$s7,.L0d94eed8
    li	$a4,3
    # Line 371
    lwc1	$f16,340($sp)
    mul.s	$f16,$f16,$f20
    beqz	$s1,.L0d94ee14
    swc1	$f16,340($sp)
    # Line 374
    lwc1	$f19,332($sp)
.L0d94edcc:
    trunc.w.s	$f21,$f21
    lwc1	$f17,340($sp)
    trunc.w.s	$f18,$f18
    trunc.w.s	$f19,$f19
    mfc1	$t0,$f21
    mfc1	$a7,$f18
    trunc.w.s	$f17,$f17
    mfc1	$a6,$f19
    sll	$t0,$t0,0x18
    sll	$a7,$a7,0x8
    mfc1	$a5,$f17
    sll	$a6,$a6,0x10
    or	$a6,$a6,$a7
    or	$a5,$a5,$t0
    or	$a5,$a5,$a6
    sw	$a5,344($sp)
    lw	$a2,344($sp)
    sw	$a2,8400($s2)
.L0d94ee14:
    # Line 379
    ldc1	$f31,440($sp)
.L0d94ee18:
    # Line 381
    lwc1	$f3,204($sp)
    lwc1	$f4,30396($s0)
    # Line 380
    lwc1	$f2,30388($s0)
    # Line 379
    lwc1	$f0,30392($s0)
    # Line 381
    add.s	$f3,$f4,$f3
    swc1	$f3,204($sp)
    # Line 380
    lwc1	$f1,200($sp)
    ldc1	$f23,432($sp)
    # Line 378
    ldc1	$f27,424($sp)
    lwc1	$f29,30384($s0)
    # Line 380
    add.s	$f1,$f2,$f1
    swc1	$f1,200($sp)
    # Line 377
    lwc1	$f25,30380($s0)
    # Line 379
    add.s	$f31,$f0,$f31
    sdc1	$f31,440($sp)
    # Line 378
    add.s	$f27,$f29,$f27
    sdc1	$f27,424($sp)
    # Line 377
    add.s	$f23,$f25,$f23
    b	.L0d94e93c
    sdc1	$f23,432($sp)
.L0d94ee68:
    # Line 397
    lwc1	$f6,216($sp)
    lwc1	$f5,1620($s0)
    sub.s	$f6,$f6,$f4
    mul.s	$f5,$f5,$f6
    # Line 398
    b	.L0d94ecf8
    sdc1	$f5,456($sp)
.L0d94ee80:
    ldc1	$f24,784($sp)
.L0d94ee84:
    ldc1	$f28,776($sp)
    ldc1	$f22,768($sp)
    ldc1	$f26,760($sp)
    ldc1	$f20,752($sp)
    ldc1	$f30,744($sp)
    # Line 466
    ld	$gp,536($sp)
    ld	$s0,520($sp)
    ld	$s1,504($sp)
    ld	$s2,560($sp)
    ld	$s3,552($sp)
    ld	$s4,528($sp)
    ld	$s5,496($sp)
    ld	$s6,568($sp)
    ld	$s7,512($sp)
    ld	$ra,792($sp)
    # Line 465
    ld	$t1,488($sp)
    # Line 466
    move	$v0,$zero
    ld	$s8,544($sp)
    addiu	$sp,$sp,816
    jr	$ra
    # Line 465
    sw	$zero,-32640($t1)
.L0d94eed8:
    # Line 371
    bnez	$s1,.L0d94edcc
    # Line 374
    lwc1	$f19,332($sp)
    b	.L0d94ee18
    # Line 379
    ldc1	$f31,440($sp)
.L0d94eee8:
    # Line 391
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f4,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    li	$a3,-1
    li	$a4,3
    b	.L0d94ecf8
    sdc1	$f0,456($sp)
.L0d94ef0c:
    # Line 394
    mul.s	$f13,$f4,$f13
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f4,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    li	$a3,-1
    li	$a4,3
    # Line 395
    b	.L0d94ecf8
    # Line 394
    sdc1	$f0,456($sp)
.L0d94ef34:
    # Line 101
    b	.L0d94e170
    li	$a0,1
.L0d94ef3c:
    # Line 226
    lw	$a0,1792($s0)
    sd	$zero,720($sp)
    b	.L0d94e5fc
    sd	$zero,704($sp)
.L0d94ef4c:
    # Line 123
    lwc1	$f26,32168($s0)
    # Line 122
    lwc1	$f20,32164($s0)
    # Line 123
    cvt.d.s	$f26,$f26
    b	.L0d94e248
    # Line 122
    cvt.d.s	$f20,$f20
.L0d94ef60:
    # Line 87
    lw	$t2,-32636($s8)
    dsll32	$t2,$t2,0x0
    dsrl32	$t2,$t2,0x0
    dmtc1	$t2,$f28
    b	.L0d94e128
    cvt.s.l	$f28,$f28
.L0d94ef78:
    b	.L0d94e2bc
    sd	$a2,472($sp)
.L0d94ef80:
    # Line 90
    lwc1	$f28,30208($a0)
    # Line 91
    lwc1	$f29,30212($a0)
    # Line 93
    lwc1	$f0,30220($a0)
    # Line 92
    lwc1	$f31,30216($a0)
    # Line 93
    swc1	$f0,12($sp)
    # Line 92
    swc1	$f31,8($sp)
    b	.L0d94e128
    # Line 91
    swc1	$f29,4($sp)
.L0d94efa0:
    # Line 234
    lwc1	$f2,1616($s0)
    # Line 232
    lwc1	$f1,1608($s0)
    # Line 234
    swc1	$f2,216($sp)
    # Line 232
    swc1	$f1,208($sp)
    # Line 233
    mul.s	$f1,$f1,$f1
    # Line 234
    b	.L0d94e610
    # Line 233
    swc1	$f1,212($sp)
.L0d94efbc:
    b	.L0d94e344
    sd	$a0,480($sp)
.L0d94efc4:
    mov.d	$f12,$f7
    # Line 128
    c.lt.d $f7,$f30
    # Line 130
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f7,376($sp)
    movf.d	$f12,$f30,$fcc1
    sdc1	$f5,736($sp)
    sd	$a0,800($sp)
    jal	__glFloor
    cvt.s.d	$f12,$f12
    # Line 132
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    lwc1	$f15,_lit_bf800000
    add.s	$f14,$f14,$f15
    trunc.w.s	$f14,$f14
    ldc1	$f13,376($sp)
    cvt.d.w	$f14,$f14
    # Line 133
    sub.d	$f30,$f30,$f14
    # Line 132
    sub.d	$f13,$f13,$f14
    # Line 134
    mov.d	$f15,$f13
    # Line 133
    c.lt.d $f30,$f13
    # Line 134
    ldc1	$f14,_lit8_402e000000000000
    movf.d	$f15,$f30,$fcc3
    ld	$a0,800($sp)
    c.lt.d $f14,$f15
    ldc1	$f5,736($sp)
    li	$t3,1
    # Line 132
    sdc1	$f13,408($sp)
    # Line 134
    movf	$t3,$zero,$fcc2
    li	$a3,10497
    b	.L0d94e2bc
    sd	$t3,472($sp)
.L0d94f040:
    # Line 144
    ldc1	$f24,_lit8_3ff0000000000000
    dmtc1	$zero,$f22
    sd	$zero,480($sp)
    b	.L0d94e344
    mov.d	$f4,$f24
.L0d94f054:
    # Line 223
    lw	$a0,1792($s0)
    lwc1	$f16,30240($s0)
    # Line 222
    lwc1	$f15,30232($s0)
    # Line 223
    swc1	$f16,204($sp)
    b	.L0d94e5f4
    # Line 222
    swc1	$f15,200($sp)
.L0d94f06c:
    mov.d	$f12,$f9
    # Line 147
    c.lt.d $f9,$f4
    # Line 149
    # lw $t9, -28804($gp) # &__glFloor
    movf.d	$f12,$f4,$fcc4
    sdc1	$f9,368($sp)
    sdc1	$f4,384($sp)
    jal	__glFloor
    cvt.s.d	$f12,$f12
    # Line 151
    mtc1	$v0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f27,_lit_bf800000
    add.s	$f25,$f25,$f27
    trunc.w.s	$f25,$f25
    # Line 152
    ldc1	$f4,384($sp)
    # Line 151
    ldc1	$f24,368($sp)
    cvt.d.w	$f25,$f25
    # Line 152
    sub.d	$f4,$f4,$f25
    # Line 151
    sub.d	$f24,$f24,$f25
    # Line 153
    mov.d	$f14,$f24
    # Line 152
    c.lt.d $f4,$f24
    # Line 153
    ldc1	$f13,_lit8_402e000000000000
    movf.d	$f14,$f4,$fcc6
    c.lt.d $f13,$f14
    dmtc1	$zero,$f22
    li	$t8,1
    movf	$t8,$zero,$fcc5
    b	.L0d94e344
    sd	$t8,480($sp)
.end __glCrmStoreLine

# Function: __glCrmStoreStippledLine
# Declared: Line 473 (Source lines: 474-924)
# Address: 0x0d94f0e0 - 0x0d950220 (Size: 4416 bytes, Frame: 208)
.globl __glCrmStoreStippledLine
.ent __glCrmStoreStippledLine
__glCrmStoreStippledLine:
    # Line 501
    lw	$a1,30472($a0)
    # Line 503
    lw	$a2,29880($a0)
    # Line 504
    lw	$a3,29888($a0)
    # Line 505
    lw	$a4,29876($a0)
    # Line 506
    lw	$a5,29884($a0)
    # Line 508
    lw	$a6,29896($a0)
    # Line 474
    addiu	$sp,$sp,-848
    sd	$s7,504($sp)
    # Line 512
    lw	$s7,30204($a0)
    # Line 474
    sd	$s6,528($sp)
    # Line 510
    lw	$s6,29872($a0)
    # Line 474
    sd	$s5,488($sp)
    # Line 509
    lw	$s5,29868($a0)
    # Line 508
    sd	$a6,696($sp)
    # Line 474
    sd	$s3,520($sp)
    # Line 507
    lw	$s3,29892($a0)
    # Line 506
    sd	$a5,664($sp)
    # Line 505
    sd	$a4,656($sp)
    # Line 504
    sd	$a3,584($sp)
    # Line 503
    sd	$a2,592($sp)
    # Line 501
    sd	$a1,552($sp)
    # Line 474
    sd	$s2,536($sp)
    # Line 496
    lw	$s2,32184($a0)
    # Line 474
    sd	$s0,512($sp)
    # Line 481
    lw	$s0,30436($a0)
    sdc1	$f24,808($sp)
    sdc1	$f28,800($sp)
    sdc1	$f22,792($sp)
    sdc1	$f26,784($sp)
    sdc1	$f20,776($sp)
    sdc1	$f30,768($sp)
    sd	$s4,840($sp)
    sd	$ra,832($sp)
    sd	$s8,824($sp)
    sd	$gp,480($sp)
    # Line 474
    sd	$s1,496($sp)
    # Line 500
    lw	$v1,30248($a0)
    sd	$v1,560($sp)
    # Line 512
    lui	$at,0x1
    addu	$at,$a0,$at
    sd	$at,544($sp)
    lw	$at,-32644($at)
    # Line 496
    lw	$v0,32188($a0)
    sd	$v0,608($sp)
    # Line 474
    lui	$v0,0x10
    # Line 512
    andi	$at,$at,0x2
    # Line 474
    move	$s1,$a0
    # Line 498
    lw	$v1,32100($a0)
    # Line 474
    addiu	$v0,$v0,7340
    # Line 498
    sw	$v1,0($sp)
    # Line 512
    beqz	$at,.L0d9500cc
    # Line 474
    addu	$gp,$t9,$v0
    # Line 512
    andi	$a7,$s0,0x1
    beqz	$a7,.L0d9500ac
    # Line 522
    ld	$t0,544($sp)
    # Line 520
    ld	$t0,544($sp)
    lbu	$t3,-32633($t0)
    # Line 519
    lbu	$t2,-32634($t0)
    # Line 518
    lbu	$t1,-32635($t0)
    # Line 520
    mtc1	$t3,$f1
    # Line 519
    mtc1	$t2,$f31
    # Line 518
    mtc1	$t1,$f0
    # Line 517
    lbu	$t0,-32636($t0)
    # Line 520
    cvt.s.w	$f1,$f1
    # Line 519
    cvt.s.w	$f31,$f31
    # Line 517
    mtc1	$t0,$f30
    # Line 518
    cvt.s.w	$f0,$f0
    # Line 520
    swc1	$f1,12($sp)
    # Line 519
    swc1	$f31,8($sp)
    # Line 517
    cvt.s.w	$f30,$f30
    # Line 518
    swc1	$f0,4($sp)
.L0d94f1fc:
    # Line 528
    andi	$t8,$s0,0x8
    beqz	$t8,.L0d95008c
    nop
    # Line 531
    lwc1	$f2,30224($s1)
    # Line 533
    lwc1	$f4,30236($s1)
    # Line 532
    lwc1	$f3,30228($s1)
    # Line 533
    sdc1	$f4,464($sp)
    swc1	$f4,24($sp)
    # Line 532
    sdc1	$f3,448($sp)
    # Line 536
    lbu	$t9,28216($s1)
    # Line 531
    sdc1	$f2,456($sp)
    # Line 532
    swc1	$f3,20($sp)
    # Line 536
    beqz	$t9,.L0d950084
    # Line 531
    swc1	$f2,16($sp)
    # Line 536
    lw	$ra,32088($s1)
    sll	$ra,$ra,0x10
    bltz	$ra,.L0d950084
    move	$a0,$zero
.L0d94f244:
    andi	$at,$a0,0xff
    beqz	$at,.L0d950194
    sd	$at,720($sp)
    # Line 544
    ld	$v0,560($sp)
    mtc1	$v0,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f23,3544($s1)
    div.s	$f23,$f23,$f5
    # Line 547
    lwc1	$f22,30392($s1)
    ldc1	$f7,464($sp)
    # Line 543
    lwc1	$f27,29860($s1)
    # Line 549
    ldc1	$f29,_lit8_3ff0000000000000
    # Line 547
    madd.s	$f22,$f7,$f5,$f22
    # Line 543
    lwc1	$f25,3540($s1)
    # Line 546
    cvt.d.s	$f7,$f7
    # Line 549
    c.eq.d	$f7,$f29
    # Line 541
    lw	$s4,28208($s1)
    # Line 543
    sub.s	$f25,$f25,$f27
    sdc1	$f25,392($sp)
    # Line 546
    mov.d	$f24,$f7
    # Line 547
    cvt.d.s	$f22,$f22
    # Line 549
    bc1f	.L0d94f2a8
    # Line 544
    sdc1	$f23,400($sp)
    # Line 549
    c.eq.d $f22,$f29
    bc1t .L0d950098
.L0d94f2a8:
    ldc1	$f8,464($sp)
    lwc1	$f4,_lit_37000000
    abs.s	$f8,$f8
    c.lt.s $f8,$f4
    bc1f .L0d94f2d0
    dmtc1	$zero,$f6
    # Line 550
    lwc1	$f24,_lit_b7000000
    # Line 549
    c.lt.d $f7,$f6
    movf.s	$f24,$f4,$fcc3
    # Line 550
    cvt.d.s	$f24,$f24
.L0d94f2d0:
    abs.d	$f25,$f22
    cvt.s.d	$f25,$f25
    c.lt.s $f25,$f4
    bc1f .L0d94f2f0
    # Line 551
    lwc1	$f27,_lit_b7000000
    # Line 550
    c.lt.d $f22,$f6
    movf.s	$f27,$f4,$fcc5
    # Line 551
    cvt.d.s	$f22,$f27
.L0d94f2f0:
    # Line 553
    lwc1	$f26,32168($s1)
    # Line 555
    ldc1	$f29,_lit8_3ff0000000000000
    # Line 553
    cvt.d.s	$f26,$f26
    mul.d	$f26,$f26,$f22
    # Line 555
    div.d	$f22,$f29,$f22
    # Line 552
    lwc1	$f20,32164($s1)
    cvt.d.s	$f20,$f20
    mul.d	$f20,$f20,$f24
    # Line 554
    div.d	$f24,$f29,$f24
.L0d94f314:
    # Line 563
    lwc1	$f28,30380($s1)
    ldc1	$f4,456($sp)
    mul.s	$f28,$f28,$f5
    lw	$v1,4($s4)
    cvt.d.s	$f4,$f4
    li	$a0,10497
    cvt.d.s	$f28,$f28
    mul.d	$f7,$f4,$f24
    beq	$a0,$v1,.L0d950110
    madd.d	$f28,$f4,$f28,$f22
    # Line 571
    ldc1	$f1,_lit8_3ff0000000000000
    madd.d	$f8,$f1,$f4,$f24
    # Line 572
    add.d	$f28,$f28,$f1
    # Line 573
    mov.d	$f0,$f8
    # Line 572
    c.lt.d $f28,$f8
    # Line 573
    ldc1	$f31,_lit8_401c000000000000
    movf.d	$f0,$f28,$fcc7
    c.lt.d $f31,$f0
    bc1t .L0d94f37c
    sdc1	$f8,408($sp)
    c.lt.d $f8,$f28
    mov.d	$f2,$f8
    ldc1	$f3,_lit8_c01c000000000000
    movf.d	$f2,$f28,$fcc1
    c.lt.d	$f2,$f3
    bc1f	.L0d9500c4
.L0d94f37c:
    li	$s8,1
.L0d94f380:
    lw	$a1,232($s4)
    li	$a2,1
    beq	$a1,$a2,.L0d950180
    nop
    # Line 582
    lwc1	$f4,30384($s1)
    ldc1	$f7,448($sp)
    mul.s	$f4,$f4,$f5
    lw	$a3,8($s4)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f4,$f4
    mul.d	$f9,$f7,$f24
    beq	$a0,$a3,.L0d9501a8
    madd.d	$f4,$f7,$f4,$f22
    # Line 590
    ldc1	$f12,_lit8_3ff0000000000000
    madd.d	$f5,$f12,$f7,$f24
    # Line 591
    add.d	$f4,$f4,$f12
    # Line 592
    mov.d	$f11,$f5
    # Line 591
    c.lt.d $f4,$f5
    # Line 592
    ldc1	$f10,_lit8_401c000000000000
    movf.d	$f11,$f4,$fcc3
    c.lt.d $f10,$f11
    dmtc1	$zero,$f22
    sdc1	$f5,752($sp)
    bc1t .L0d94f400
    mov.d	$f24,$f5
    mov.d	$f13,$f5
    c.lt.d $f5,$f4
    ldc1	$f14,_lit8_c01c000000000000
    movf.d	$f13,$f4,$fcc5
    c.lt.d $f13,$f14
    bc1f .L0d950108
    mov.d	$f24,$f5
.L0d94f400:
    li	$s4,1
.L0d94f404:
    # Line 598
    c.le.d $f20,$f22
    bc1t .L0d94f41c
    # Line 599
    mov.d	$f12,$f20
    # Line 598
    c.le.d $f26,$f22
    bc1f .L0d94f454
    # Line 599
    mov.d	$f12,$f20
.L0d94f41c:
    # Line 598
    c.lt.d	$f20,$f26
    # Line 600
    # lw $t9, -28804($gp) # &__glFloor
    movf.d	$f12,$f26,$fcc0
    sdc1	$f4,384($sp)
    jal	__glFloor
    cvt.s.d	$f12,$f12
    # Line 601
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    lwc1	$f13,_lit_37000000
    sub.s	$f13,$f13,$f14
    cvt.d.s	$f13,$f13
    # Line 602
    add.d	$f26,$f13,$f26
    ldc1	$f4,384($sp)
    # Line 601
    add.d	$f20,$f13,$f20
.L0d94f454:
    # Line 604
    mov.d	$f5,$f20
    # Line 602
    c.lt.d $f26,$f20
    movf.d	$f5,$f26,$fcc2
    # Line 605
    c.eq.d $f5,$f22
    bc1t .L0d94f484
    ldc1	$f15,_lit8_3ff0000000000000
    c.eq.d $f5,$f15
    bc1t .L0d94f484
    nop
    # Line 607
    div.d	$f16,$f15,$f5
    # Line 608
    mul.d	$f26,$f16,$f26
    # Line 607
    mul.d	$f20,$f16,$f20
.L0d94f484:
    # Line 617
    mul.d	$f23,$f26,$f4
    nmsub.d	$f23,$f23,$f20,$f24
    # Line 614
    ldc1	$f17,408($sp)
    ldc1	$f21,400($sp)
    # Line 633
    move	$t0,$s8
    li	$t1,4
    # Line 614
    mul.d	$f29,$f26,$f28
    # Line 633
    movn	$t0,$t1,$s8
    # Line 618
    sub.d	$f27,$f26,$f20
    # Line 620
    ldc1	$f25,392($sp)
    # Line 614
    nmsub.d	$f29,$f29,$f20,$f17
    # Line 634
    movz	$t1,$s4,$s4
    sw	$t1,88($sp)
    # Line 631
    andi	$a6,$s8,0x1
    # Line 614
    cvt.d.s	$f21,$f21
    # Line 617
    mul.d	$f18,$f20,$f24
    # Line 629
    lw	$a4,0($sp)
    # Line 631
    andi	$a7,$s4,0x1
    # Line 629
    lui	$a5,0xff
    ori	$a5,$a5,0xffff
    # Line 631
    sll	$a7,$a7,0x1
    # Line 620
    cvt.d.s	$f25,$f25
    # Line 618
    mul.d	$f27,$f21,$f27
    # Line 631
    or	$a6,$a6,$a7
    sw	$a6,80($sp)
    # Line 629
    lui	$a6,0x300
    # Line 614
    mul.d	$f17,$f20,$f17
    # Line 633
    sw	$t0,84($sp)
    # Line 629
    and	$a4,$a4,$a5
    lui	$a5,0x3
    # Line 622
    madd.d	$f19,$f17,$f25,$f27
    # Line 631
    lw	$a7,80($sp)
    # Line 629
    nor	$a5,$a5,$zero
    or	$a4,$a4,$a6
    # Line 617
    mul.d	$f23,$f21,$f23
    # Line 631
    sw	$a7,8500($s2)
    # Line 629
    and	$a4,$a4,$a5
    lui	$a5,0x2
    # Line 614
    mul.d	$f21,$f21,$f29
    # Line 629
    or	$a4,$a4,$a5
    sw	$a4,0($sp)
    # Line 621
    madd.d	$f18,$f18,$f25,$f23
    # Line 618
    sdc1	$f27,48($sp)
    # Line 620
    madd.d	$f17,$f17,$f25,$f21
    # Line 617
    sdc1	$f23,40($sp)
    # Line 614
    sdc1	$f21,32($sp)
    # Line 622
    sdc1	$f19,72($sp)
    # Line 621
    sdc1	$f18,64($sp)
    # Line 620
    sdc1	$f17,56($sp)
.L0d94f548:
    # Line 637
    li	$t2,1
    sd	$t2,728($sp)
.L0d94f550:
    # Line 643
    lw	$t8,1912($s1)
    li	$t3,4354
    beq	$t3,$t8,.L0d9500ec
    lwc1	$f26,30244($s1)
.L0d94f560:
    # Line 651
    lw	$s8,1792($s1)
    andi	$s8,$s8,0x200
    beqz	$s8,.L0d94f5c0
    # Line 660
    ld	$ra,560($sp)
    lwc1	$f0,29988($s1)
    swc1	$f0,140($sp)
    # Line 659
    lwc1	$f31,29984($s1)
    # Line 658
    lwc1	$f29,29980($s1)
    # Line 659
    swc1	$f31,136($sp)
    # Line 658
    swc1	$f29,132($sp)
    # Line 657
    lwc1	$f27,29976($s1)
    # Line 656
    lwc1	$f25,472($s1)
    # Line 655
    lwc1	$f29,3540($s1)
    # Line 657
    swc1	$f27,128($sp)
    # Line 654
    lwc1	$f0,29996($s1)
    # Line 655
    lwc1	$f27,29956($s1)
    # Line 656
    msub.s	$f25,$f29,$f25,$f29
    # Line 653
    lwc1	$f31,29992($s1)
    # Line 654
    swc1	$f0,116($sp)
    # Line 653
    swc1	$f31,112($sp)
    # Line 655
    sub.s	$f27,$f27,$f29
    swc1	$f27,120($sp)
    # Line 656
    swc1	$f25,124($sp)
    # Line 660
    ld	$ra,560($sp)
.L0d94f5c0:
    beqz	$ra,.L0d950030
    ld	$s4,840($sp)
    lwc1	$f6,144($sp)
    lwc1	$f22,112($sp)
    lwc1	$f24,116($sp)
    sd	$zero,672($sp)
    sd	$zero,632($sp)
    andi	$a7,$s0,0x8000
    sd	$a7,648($sp)
    andi	$a6,$s0,0x2000
    sd	$a6,576($sp)
    andi	$a5,$s0,0x3000
    sd	$a5,568($sp)
    andi	$a4,$s0,0x2
    sd	$a4,688($sp)
    andi	$a2,$s0,0x1
    sd	$a2,736($sp)
    andi	$a0,$s0,0x1000
    sd	$a0,680($sp)
    andi	$a0,$s0,0x4
    sd	$a0,712($sp)
    lw	$a1,0($sp)
    sd	$a1,600($sp)
    ldc1	$f1,32($sp)
    ldc1	$f2,40($sp)
    lwc1	$f5,20($sp)
    lw	$v0,84($sp)
    ldc1	$f3,48($sp)
    lw	$v1,88($sp)
    lwc1	$f4,24($sp)
    lwc1	$f8,100($sp)
    lwc1	$f7,16($sp)
    sdc1	$f8,416($sp)
    li	$at,1
    sdc1	$f7,456($sp)
    dsll32	$at,$at,0xb
    sdc1	$f4,464($sp)
    srl	$a1,$a1,0x18
    sd	$a1,640($sp)
    dsrav	$v1,$at,$v1
    sd	$v1,624($sp)
    sdc1	$f3,440($sp)
    dsrav	$at,$at,$v0
    sd	$at,616($sp)
    sdc1	$f5,448($sp)
    mtc1	$zero,$f5
    sdc1	$f2,432($sp)
    li	$a3,-1
    b	.L0d950214
    sdc1	$f1,424($sp)
    nop
    nop
.L0d94f690:
    # Line 675
    ld	$t0,560($sp)
    beqz	$t0,.L0d95002c
    lui	$s4,0x8000
    # Line 673
    ld	$t3,552($sp)
.L0d94f6a0:
    # Line 668
    li	$t9,32
    ld	$t2,560($sp)
    # Line 673
    addiu	$t3,$t3,4
    # Line 668
    li	$t8,32
    # Line 673
    sd	$t3,552($sp)
    # Line 668
    move	$a0,$t2
    slt	$t8,$t8,$t2
    # Line 673
    lw	$t3,-4($t3)
    # Line 668
    movn	$a0,$t9,$t8
    # Line 675
    addiu	$t1,$a0,-1
    sd	$t1,744($sp)
    # Line 673
    sd	$t3,704($sp)
    # Line 671
    subu	$t2,$t2,$a0
    # Line 675
    bltz	$t1,.L0d94f690
    sd	$t2,560($sp)
    b	.L0d94faa0
    # Line 676
    ld	$s0,704($sp)
    nop
    nop
    nop
.L0d94f6f0:
    sdc1	$f6,816($sp)
    # Line 717
    add.s	$f9,$f7,$f22
    sdc1	$f9,472($sp)
.L0d94f6fc:
    # Line 723
    # lw $t9, -22848($gp) # &floorf
    jal	floorf
    ldc1	$f12,472($sp)
    # Line 746
    trunc.w.s	$f14,$f0
    mfc1	$v0,$f14
    li	$at,1
    addu	$v0,$v0,$at
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f11,30004($s1)
    cvt.s.w	$f14,$f14
    mul.s	$f12,$f12,$f11
    mul.s	$f11,$f11,$f14
    trunc.w.s	$f12,$f12
    trunc.w.s	$f11,$f11
    mfc1	$ra,$f12
    mfc1	$v0,$f11
    lhu	$t9,480($s1)
    andi	$ra,$ra,0xf
    andi	$v0,$v0,0xf
    sllv	$ra,$at,$ra
    sllv	$at,$at,$v0
    and	$ra,$t9,$ra
    ldc1	$f13,472($sp)
    and	$t9,$t9,$at
    sltu	$ra,$zero,$ra
    sltu	$t9,$zero,$t9
    mtc1	$ra,$f10
    mtc1	$t9,$f11
    sub.s	$f13,$f13,$f14
    cvt.s.w	$f10,$f10
    cvt.s.w	$f11,$f11
    sub.s	$f12,$f28,$f13
    mul.s	$f10,$f10,$f13
    madd.s	$f10,$f10,$f11,$f12
    # Line 749
    mtc1	$zero,$f5
    # Line 746
    mul.s	$f20,$f20,$f10
    # Line 749
    c.eq.s $f20,$f5
    li	$a3,-1
    ldc1	$f6,816($sp)
    movt	$s0,$zero,$fcc4
.L0d94f7a0:
    beqz	$s0,.L0d94f7dc
    # Line 790
    ld	$v0,608($sp)
    # Line 749
    ld	$v1,672($sp)
    # Line 763
    sll	$a2,$s6,0x6
    ld	$a5,640($sp)
    li	$a4,3
    # Line 749
    beqz	$v1,.L0d94fc70
    # Line 762
    sll	$a0,$s5,0x6
.L0d94f7c0:
    sw	$a0,148($sp)
    lw	$a1,148($sp)
    # Line 763
    sw	$a2,152($sp)
    lw	$a6,152($sp)
    sw	$a6,8324($s2)
    beq	$a4,$a5,.L0d94fe30
    # Line 762
    sw	$a1,8320($s2)
.L0d94f7dc:
    # Line 766
    ld	$a7,712($sp)
    # Line 771
    dsll32	$t0,$s7,0x0
    # Line 776
    ld	$t8,632($sp)
    # Line 771
    dsrl32	$t0,$t0,0x0
    # Line 772
    ld	$t2,728($sp)
    # Line 766
    beqz	$a7,.L0d94f830
    # Line 771
    dmtc1	$t0,$f16
    # Line 766
    beqz	$s0,.L0d94f828
    nop
    # Line 771
    cvt.s.l	$f16,$f16
    lwc1	$f15,_lit_42800000
    mul.s	$f15,$f15,$f16
    cvt.d.s	$f15,$f15
    sdc1	$f15,168($sp)
    ldc1	$f14,168($sp)
    trunc.l.d	$f14,$f14
    sdc1	$f14,176($sp)
    ldc1	$f13,176($sp)
    sdc1	$f13,8648($s2)
.L0d94f828:
    # Line 772
    lw	$t1,30324($s1)
    addu	$s7,$t1,$s7
.L0d94f830:
    beqz	$t2,.L0d94f920
    # Line 834
    ld	$a1,680($sp)
    # Line 776
    ld	$t3,720($sp)
    beqz	$t3,.L0d94fca4
    nop
    beqz	$t8,.L0d94fe4c
    nop
.L0d94f84c:
    # Line 797
    beqz	$s0,.L0d94f8f0
    # Line 809
    ldc1	$f7,48($sp)
    # Line 805
    ldc1	$f21,_lit8_41c0000000000000
    # Line 801
    ld	$a0,616($sp)
    dmtc1	$a0,$f31
    ldc1	$f0,56($sp)
    cvt.d.l	$f31,$f31
    mul.d	$f31,$f31,$f0
    sdc1	$f31,288($sp)
    ldc1	$f29,288($sp)
    trunc.l.d	$f29,$f29
    # Line 803
    ld	$v1,624($sp)
    # Line 801
    dmfc1	$v0,$f29
    # Line 803
    dmtc1	$v1,$f27
    # Line 801
    daddiu	$v0,$v0,2048
    sd	$v0,296($sp)
    # Line 803
    ldc1	$f29,64($sp)
    cvt.d.l	$f27,$f27
    # Line 801
    ldc1	$f19,296($sp)
    # Line 803
    mul.d	$f27,$f27,$f29
    sdc1	$f27,304($sp)
    ldc1	$f25,304($sp)
    # Line 805
    ldc1	$f23,72($sp)
    # Line 803
    trunc.l.d	$f25,$f25
    dmfc1	$at,$f25
    # Line 805
    mul.d	$f21,$f21,$f23
    # Line 803
    daddiu	$at,$at,2048
    sd	$at,312($sp)
    # Line 805
    cvt.s.d	$f21,$f21
    # Line 803
    ldc1	$f17,312($sp)
    # Line 805
    swc1	$f21,320($sp)
    lwc1	$f18,320($sp)
    trunc.w.s	$f18,$f18
    # Line 801
    sdc1	$f19,8480($s2)
    # Line 805
    mfc1	$ra,$f18
    # Line 803
    sdc1	$f17,8488($s2)
    # Line 805
    addiu	$ra,$ra,2048
    sw	$ra,324($sp)
    lw	$t9,324($sp)
    sw	$t9,8496($s2)
.L0d94f8ec:
    # Line 809
    ldc1	$f7,48($sp)
.L0d94f8f0:
    ldc1	$f4,72($sp)
    add.d	$f4,$f4,$f7
    sdc1	$f4,72($sp)
    # Line 808
    ldc1	$f3,40($sp)
    ldc1	$f2,64($sp)
    add.d	$f2,$f2,$f3
    sdc1	$f2,64($sp)
    # Line 807
    ldc1	$f1,32($sp)
    ldc1	$f0,56($sp)
    add.d	$f0,$f0,$f1
    sdc1	$f0,56($sp)
.L0d94f91c:
    # Line 834
    ld	$a1,680($sp)
.L0d94f920:
    ld	$ra,720($sp)
    li	$a2,4354
    beqz	$a1,.L0d94fb60
    ld	$t9,576($sp)
.L0d94f930:
    beqz	$s0,.L0d94f94c
    # Line 856
    ld	$a5,736($sp)
    # Line 834
    lw	$a4,1912($s1)
    beq	$a2,$a4,.L0d94fdd4
    nop
    # Line 856
    mov.s	$f6,$f26
.L0d94f948:
    ld	$a5,736($sp)
.L0d94f94c:
    beqz	$a5,.L0d94f978
.L0d94f950:
    # Line 860
    ldc1	$f10,_lit8_406fe00000000000
    cvt.d.s	$f9,$f6
    mul.d	$f9,$f9,$f10
    lwc1	$f8,_lit_45800000
    cvt.s.d	$f9,$f9
    mul.s	$f8,$f8,$f9
    trunc.w.s	$f8,$f8
    swc1	$f8,352($sp)
    lw	$a6,352($sp)
    sw	$a6,8568($s2)
.L0d94f978:
    # Line 862
    lwc1	$f11,30432($s1)
.L0d94f97c:
    ld	$a7,736($sp)
    beqz	$a7,.L0d94fb78
    add.s	$f26,$f11,$f26
.L0d94f988:
    # Line 866
    beqz	$s0,.L0d94fbe4
    ld	$t1,720($sp)
    ld	$t0,728($sp)
    beqz	$t0,.L0d94f9a8
    # Line 868
    ld	$t3,688($sp)
    # Line 866
    beqz	$t1,.L0d94fbe8
    # Line 868
    ld	$a2,688($sp)
    ld	$t3,688($sp)
.L0d94f9a8:
    lwc1	$f13,4($sp)
    lwc1	$f12,12($sp)
    lwc1	$f14,8($sp)
    trunc.w.s	$f15,$f30
    trunc.w.s	$f13,$f13
    mul.s	$f12,$f20,$f12
    mfc1	$at,$f15
    trunc.w.s	$f14,$f14
    mfc1	$ra,$f13
    trunc.w.s	$f12,$f12
    sll	$at,$at,0x18
    mfc1	$t9,$f14
    sll	$ra,$ra,0x10
    mfc1	$t8,$f12
    sll	$t9,$t9,0x8
    or	$t9,$t9,$ra
    or	$t8,$t8,$at
    or	$t8,$t8,$t9
    sw	$t8,348($sp)
    lw	$t2,348($sp)
    beqz	$t3,.L0d94fa38
    sw	$t2,8400($s2)
    # Line 874
    lwc1	$f18,12($sp)
.L0d94fa04:
    lwc1	$f19,30296($s1)
    # Line 872
    lwc1	$f15,30288($s1)
    # Line 873
    lwc1	$f17,30292($s1)
    # Line 874
    add.s	$f18,$f19,$f18
    swc1	$f18,12($sp)
    # Line 873
    lwc1	$f16,8($sp)
    # Line 871
    lwc1	$f13,30284($s1)
    # Line 873
    add.s	$f16,$f17,$f16
    swc1	$f16,8($sp)
    # Line 872
    lwc1	$f14,4($sp)
    add.s	$f14,$f15,$f14
    # Line 871
    add.s	$f30,$f13,$f30
    # Line 872
    swc1	$f14,4($sp)
.L0d94fa38:
    # Line 874
    beqz	$s0,.L0d94fa50
    # Line 675
    ld	$a2,744($sp)
.L0d94fa40:
    # Line 895
    sw	$zero,360($sp)
    lw	$v0,360($sp)
    sw	$v0,10736($s2)
    # Line 675
    ld	$a2,744($sp)
.L0d94fa50:
    # Line 897
    ld	$v1,696($sp)
    # Line 904
    lwc1	$f23,136($sp)
    # Line 916
    srl	$s4,$s4,0x1
    # Line 675
    addiu	$a2,$a2,-1
    # Line 903
    lwc1	$f21,128($sp)
    # Line 897
    beqz	$s8,.L0d94fbc0
    addu	$s3,$s3,$v1
    bltz	$s3,.L0d94fdc4
    # Line 901
    lwc1	$f7,140($sp)
    # Line 904
    add.s	$f24,$f23,$f24
    # Line 903
    add.s	$f22,$f21,$f22
.L0d94fa7c:
    # Line 904
    bltz	$s3,.L0d94fbc8
    # Line 909
    ld	$a0,592($sp)
.L0d94fa84:
    # Line 913
    ld	$a1,664($sp)
    # Line 912
    ld	$a0,656($sp)
    # Line 913
    addu	$s6,$a1,$s6
    # Line 912
    addu	$s5,$a0,$s5
.L0d94fa94:
    # Line 675
    beq	$a2,$a3,.L0d94f690
    sd	$a2,744($sp)
    # Line 676
    ld	$s0,704($sp)
.L0d94faa0:
    # Line 749
    lwc1	$f20,_lit_3f800000
    # Line 698
    lwc1	$f21,120($sp)
    # Line 676
    beqz	$s8,.L0d94f7a0
    and	$s0,$s0,$s4
    lwc1	$f25,124($sp)
    # Line 692
    lwc1	$f4,3540($s1)
    # Line 676
    c.lt.s $f25,$f24
    lwc1	$f28,3544($s1)
    # Line 687
    lwc1	$f20,124($sp)
    # Line 676
    bc1f .L0d94fb18
    # Line 692
    c.lt.s $f22,$f4
    # Line 682
    sub.s	$f20,$f25,$f24
    add.s	$f20,$f28,$f20
    # Line 683
    c.lt.s $f20,$f5
    movt.s	$f20,$f5,$fcc6
.L0d94fadc:
    # Line 692
    bc1f .L0d94fb3c
    # Line 703
    ld	$t8,648($sp)
    # Line 697
    add.s	$f21,$f4,$f22
    mul.s	$f20,$f20,$f21
    # Line 698
    c.lt.s	$f20,$f5
    movt.s	$f20,$f5,$fcc0
.L0d94faf4:
    # Line 703
    beqz	$t8,.L0d94f7a0
    nop
    c.lt.s $f4,$f22
    bc1t .L0d94f6f0
    lwc1	$f7,30000($s1)
    sdc1	$f6,816($sp)
    # Line 720
    add.s	$f23,$f4,$f7
    b	.L0d94f6fc
    sdc1	$f23,472($sp)
.L0d94fb18:
    # Line 683
    neg.s	$f25,$f25
    c.lt.s $f24,$f25
    bc1f .L0d94fc00
    nop
    # Line 687
    add.s	$f20,$f20,$f24
    add.s	$f20,$f28,$f20
    # Line 688
    c.lt.s $f20,$f5
    b	.L0d94fadc
    movt.s	$f20,$f5,$fcc3
.L0d94fb3c:
    # Line 698
    c.lt.s $f21,$f22
    bc1f .L0d94faf4
    nop
    # Line 702
    sub.s	$f23,$f21,$f22
    add.s	$f23,$f28,$f23
    mul.s	$f20,$f20,$f23
    # Line 703
    c.lt.s $f20,$f5
    b	.L0d94faf4
    movt.s	$f20,$f5,$fcc5
.L0d94fb60:
    # Line 834
    beqz	$t9,.L0d94fb70
    # Line 862
    ld	$at,736($sp)
    # Line 834
    bnez	$ra,.L0d94f930
    # Line 862
    ld	$at,736($sp)
.L0d94fb70:
    bnez	$at,.L0d94f988
    nop
.L0d94fb78:
    beqz	$s0,.L0d94fc44
    # Line 888
    ld	$a6,688($sp)
    # Line 862
    beqz	$s8,.L0d94fc08
    # Line 881
    mov.s	$f7,$f30
    # Line 879
    # lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    mov.s	$f12,$f30
    sdc1	$f6,816($sp)
    jal	__glBuildAntiAliasIndex
    mov.s	$f13,$f20
    # Line 881
    ld	$v0,568($sp)
    mtc1	$zero,$f5
    li	$a3,-1
    ldc1	$f6,816($sp)
    bnez	$v0,.L0d94fc10
    # Line 879
    mov.s	$f7,$f0
    b	.L0d94fc34
    # Line 888
    trunc.w.s	$f9,$f7
    nop
.L0d94fbc0:
    # Line 904
    bgez	$s3,.L0d94fa84
    # Line 909
    ld	$a0,592($sp)
.L0d94fbc8:
    # Line 910
    ld	$a1,584($sp)
    lui	$v1,0x7fff
    ori	$v1,$v1,0xffff
    addu	$s6,$a1,$s6
    # Line 909
    addu	$s5,$a0,$s5
    # Line 910
    b	.L0d94fa94
    # Line 908
    and	$s3,$s3,$v1
.L0d94fbe4:
    # Line 868
    ld	$a2,688($sp)
.L0d94fbe8:
    bnez	$a2,.L0d94fa04
    # Line 874
    lwc1	$f18,12($sp)
    b	.L0d94fa38
    nop
    nop
    nop
.L0d94fc00:
    b	.L0d94fadc
    # Line 692
    mov.s	$f20,$f28
.L0d94fc08:
    # Line 881
    ld	$a4,568($sp)
    beqz	$a4,.L0d94fc30
.L0d94fc10:
    # Line 886
    ldc1	$f9,_lit8_3ff0000000000000
    cvt.d.s	$f10,$f6
    lwc1	$f8,1624($s1)
    sub.d	$f9,$f9,$f10
    cvt.d.s	$f8,$f8
    cvt.d.s	$f7,$f7
    madd.d	$f7,$f7,$f8,$f9
    cvt.s.d	$f7,$f7
.L0d94fc30:
    # Line 888
    trunc.w.s	$f9,$f7
.L0d94fc34:
    swc1	$f9,356($sp)
    lw	$a5,356($sp)
    sw	$a5,8400($s2)
    ld	$a6,688($sp)
.L0d94fc44:
    beqz	$a6,.L0d94fc54
    nop
    # Line 891
    lwc1	$f10,30284($s1)
    add.s	$f30,$f10,$f30
.L0d94fc54:
    bnez	$s0,.L0d94fa40
    nop
    b	.L0d94fa50
    # Line 675
    ld	$a2,744($sp)
    nop
    nop
    nop
.L0d94fc70:
    # Line 749
    ld	$t0,600($sp)
    lw	$a7,32096($s1)
    # Line 759
    lw	$t1,0($sp)
    # Line 749
    beq	$a7,$t0,.L0d94fc98
    # Line 759
    ld	$t3,600($sp)
    lw	$t8,32184($s1)
    sw	$t3,8288($t8)
    lw	$t2,32188($s1)
    sw	$t1,8288($t2)
    sw	$t1,32096($s1)
.L0d94fc98:
    li	$t9,1
    b	.L0d94f7c0
    sd	$t9,672($sp)
.L0d94fca4:
    # Line 797
    beqz	$s0,.L0d94fd70
    # Line 814
    ldc1	$f15,464($sp)
    lwc1	$f14,3544($s1)
    # Line 819
    swc1	$f30,328($sp)
    lwc1	$f21,4($sp)
    # Line 814
    div.s	$f14,$f14,$f15
    # Line 819
    swc1	$f21,332($sp)
    lwc1	$f19,8($sp)
    swc1	$f19,336($sp)
    lwc1	$f18,12($sp)
    # Line 820
    ldc1	$f15,448($sp)
    # Line 819
    swc1	$f18,340($sp)
    # Line 820
    lwc1	$f17,96($sp)
    lwc1	$f16,92($sp)
    ldc1	$f18,456($sp)
    lw	$t9,12524($s1)
    mul.s	$f17,$f14,$f17
    mul.s	$f16,$f14,$f16
    addiu	$a1,$sp,328
    mul.s	$f15,$f14,$f15
    sdc1	$f6,816($sp)
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f14,$f18
    # Line 824
    lwc1	$f17,336($sp)
    lwc1	$f19,328($sp)
    lwc1	$f18,332($sp)
    ldc1	$f6,816($sp)
    mtc1	$zero,$f5
    trunc.w.s	$f17,$f17
    li	$a3,-1
    # Line 820
    lwc1	$f4,340($sp)
    beqz	$s8,.L0d94fd34
    # Line 824
    trunc.w.s	$f19,$f19
    # Line 822
    mul.s	$f4,$f4,$f20
    swc1	$f4,340($sp)
.L0d94fd34:
    # Line 824
    trunc.w.s	$f18,$f18
    mfc1	$a0,$f19
    mfc1	$v1,$f17
    trunc.w.s	$f16,$f4
    mfc1	$v0,$f18
    sll	$a0,$a0,0x18
    sll	$v1,$v1,0x8
    mfc1	$at,$f16
    sll	$v0,$v0,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$a0
    or	$at,$at,$v0
    sw	$at,344($sp)
    lw	$ra,344($sp)
    sw	$ra,8400($s2)
.L0d94fd70:
    # Line 831
    lwc1	$f2,96($sp)
    lwc1	$f3,30396($s1)
    ldc1	$f21,456($sp)
    # Line 829
    lwc1	$f31,30392($s1)
    # Line 830
    lwc1	$f1,30388($s1)
    # Line 831
    add.s	$f2,$f3,$f2
    swc1	$f2,96($sp)
    # Line 830
    lwc1	$f0,92($sp)
    # Line 828
    ldc1	$f25,448($sp)
    # Line 829
    ldc1	$f29,464($sp)
    # Line 828
    lwc1	$f27,30384($s1)
    # Line 830
    add.s	$f0,$f1,$f0
    swc1	$f0,92($sp)
    # Line 827
    lwc1	$f23,30380($s1)
    # Line 829
    add.s	$f29,$f31,$f29
    sdc1	$f29,464($sp)
    # Line 828
    add.s	$f25,$f27,$f25
    sdc1	$f25,448($sp)
    # Line 827
    add.s	$f21,$f23,$f21
    # Line 831
    b	.L0d94f91c
    sdc1	$f21,456($sp)
.L0d94fdc4:
    # Line 901
    lwc1	$f4,132($sp)
    add.s	$f24,$f7,$f24
    b	.L0d94fa7c
    # Line 900
    add.s	$f22,$f4,$f22
.L0d94fdd4:
    # Line 838
    c.lt.s $f26,$f5
    # Line 840
    li	$a4,9729
    li	$a2,2049
    lw	$a0,1588($s1)
    li	$a1,2048
    # Line 838
    bc1f .L0d94fdf4
    mov.s	$f4,$f26
    # Line 839
    neg.s	$f4,$f26
.L0d94fdf4:
    # Line 840
    beq	$a1,$a0,.L0d94ffe0
    # Line 842
    ldc1	$f13,416($sp)
    # Line 840
    beq	$a2,$a0,.L0d950004
    # Line 845
    lwc1	$f13,104($sp)
    # Line 840
    beq	$a4,$a0,.L0d94ffd0
    # Line 848
    lwc1	$f7,108($sp)
.L0d94fe0c:
    # Line 850
    c.lt.s $f6,$f5
    bc1f .L0d94ffc0
    # Line 856
    ld	$a5,736($sp)
    bnez	$a5,.L0d94f950
    # Line 852
    mov.s	$f6,$f5
    b	.L0d94f97c
    # Line 862
    lwc1	$f11,30432($s1)
    nop
    nop
.L0d94fe30:
    # Line 765
    sw	$a0,156($sp)
    lw	$a6,156($sp)
    # Line 766
    sw	$a2,160($sp)
    lw	$a7,160($sp)
    sw	$a7,8332($s2)
    b	.L0d94f7dc
    # Line 765
    sw	$a6,8328($s2)
.L0d94fe4c:
    # Line 776
    beqz	$s0,.L0d94f8ec
    # Line 777
    ld	$at,616($sp)
    dmtc1	$at,$f17
    ldc1	$f18,424($sp)
    cvt.d.l	$f17,$f17
    # Line 779
    ld	$ra,624($sp)
    # Line 777
    mul.d	$f17,$f17,$f18
    sdc1	$f17,184($sp)
    ldc1	$f18,184($sp)
    ld	$t1,608($sp)
    # Line 779
    dmtc1	$ra,$f15
    # Line 781
    ldc1	$f11,440($sp)
    # Line 779
    ldc1	$f16,432($sp)
    # Line 777
    trunc.l.d	$f18,$f18
    # Line 779
    cvt.d.l	$f15,$f15
    # Line 777
    sdc1	$f18,192($sp)
    ldc1	$f13,192($sp)
    # Line 779
    mul.d	$f15,$f15,$f16
    # Line 777
    ldc1	$f14,192($sp)
    # Line 779
    sdc1	$f15,200($sp)
    ldc1	$f12,200($sp)
    # Line 777
    sdc1	$f13,8504($s2)
    # Line 781
    ldc1	$f13,_lit8_41c0000000000000
    # Line 777
    sdc1	$f14,8504($t1)
    # Line 779
    trunc.l.d	$f12,$f12
    sdc1	$f12,208($sp)
    # Line 781
    mul.d	$f11,$f11,$f13
    # Line 779
    ldc1	$f21,208($sp)
    ldc1	$f19,208($sp)
    # Line 781
    cvt.s.d	$f11,$f11
    swc1	$f11,216($sp)
    lwc1	$f18,216($sp)
    # Line 779
    sdc1	$f21,8520($s2)
    sdc1	$f19,8520($t1)
    # Line 781
    trunc.w.s	$f18,$f18
    swc1	$f18,220($sp)
    lw	$t9,220($sp)
    lw	$t8,220($sp)
    sw	$t9,8536($s2)
    sw	$t8,8536($t1)
    # Line 783
    sdc1	$f17,224($sp)
    ldc1	$f16,224($sp)
    trunc.l.d	$f16,$f16
    sdc1	$f16,232($sp)
    ldc1	$f14,232($sp)
    ldc1	$f13,232($sp)
    # Line 785
    sdc1	$f15,240($sp)
    ldc1	$f12,240($sp)
    # Line 783
    sdc1	$f14,8512($s2)
    sdc1	$f13,8512($t1)
    # Line 785
    trunc.l.d	$f12,$f12
    sdc1	$f12,248($sp)
    ldc1	$f10,248($sp)
    ldc1	$f9,248($sp)
    # Line 787
    swc1	$f11,256($sp)
    lwc1	$f8,256($sp)
    ld	$t2,712($sp)
    # Line 785
    sdc1	$f10,8528($s2)
    sdc1	$f9,8528($t1)
    # Line 787
    trunc.w.s	$f8,$f8
    swc1	$f8,260($sp)
    lw	$t3,260($sp)
    lw	$t0,260($sp)
    sw	$t3,8540($s2)
    # Line 795
    li	$a6,1
    # Line 787
    beqz	$t2,.L0d94ff80
    sw	$t0,8540($t1)
    # Line 790
    sd	$zero,264($sp)
    ldc1	$f23,264($sp)
    ldc1	$f21,264($sp)
    # Line 791
    sd	$zero,272($sp)
    ldc1	$f19,272($sp)
    ldc1	$f18,272($sp)
    # Line 790
    sdc1	$f23,8656($s2)
    sdc1	$f21,8656($v0)
    # Line 791
    sdc1	$f19,8664($s2)
    sdc1	$f18,8664($v0)
.L0d94ff80:
    lw	$v1,1792($s1)
    andi	$v1,$v1,0x20
    beqz	$v1,.L0d94ffb8
    # Line 794
    ld	$a1,608($sp)
    sw	$zero,280($sp)
    lw	$a5,280($sp)
    lw	$a4,280($sp)
    sw	$a5,8576($s2)
    sw	$a4,8576($a1)
    # Line 795
    sw	$zero,284($sp)
    lw	$a2,284($sp)
    lw	$a0,284($sp)
    sw	$a2,8584($s2)
    sw	$a0,8584($a1)
.L0d94ffb8:
    b	.L0d94f84c
    sd	$a6,632($sp)
.L0d94ffc0:
    # Line 852
    lwc1	$f25,3544($s1)
    c.lt.s	$f25,$f6
    b	.L0d94f948
    movt.s	$f6,$f25,$fcc0
.L0d94ffd0:
    # Line 848
    lwc1	$f6,1620($s1)
    sub.s	$f7,$f7,$f4
    # Line 849
    b	.L0d94fe0c
    # Line 848
    mul.s	$f6,$f6,$f7
.L0d94ffe0:
    # Line 842
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f4,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f5
    li	$a3,-1
    b	.L0d94fe0c
    mov.s	$f6,$f0
.L0d950004:
    # Line 845
    mul.s	$f13,$f4,$f13
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f4,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    mtc1	$zero,$f5
    li	$a3,-1
    # Line 846
    b	.L0d94fe0c
    # Line 845
    mov.s	$f6,$f0
.L0d95002c:
    ld	$s4,840($sp)
.L0d950030:
    ld	$s8,824($sp)
    ldc1	$f24,808($sp)
    ldc1	$f28,800($sp)
    ldc1	$f22,792($sp)
    ldc1	$f26,784($sp)
    ldc1	$f20,776($sp)
    ldc1	$f30,768($sp)
    # Line 924
    ld	$gp,480($sp)
    ld	$s0,512($sp)
    ld	$s1,496($sp)
    ld	$s2,536($sp)
    ld	$s3,520($sp)
    ld	$s5,488($sp)
    ld	$s6,528($sp)
    ld	$ra,832($sp)
    # Line 923
    ld	$a7,544($sp)
    # Line 924
    move	$v0,$zero
    ld	$s7,504($sp)
    addiu	$sp,$sp,848
    jr	$ra
    # Line 923
    sw	$zero,-32640($a7)
.L0d950084:
    # Line 536
    b	.L0d94f244
    li	$a0,1
.L0d95008c:
    # Line 640
    sd	$zero,728($sp)
    b	.L0d94f550
    sd	$zero,720($sp)
.L0d950098:
    # Line 558
    lwc1	$f26,32168($s1)
    # Line 557
    lwc1	$f20,32164($s1)
    # Line 558
    cvt.d.s	$f26,$f26
    b	.L0d94f314
    # Line 557
    cvt.d.s	$f20,$f20
.L0d9500ac:
    # Line 522
    lw	$t0,-32636($t0)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f30
    b	.L0d94f1fc
    cvt.s.l	$f30,$f30
.L0d9500c4:
    b	.L0d94f380
    # Line 573
    move	$s8,$zero
.L0d9500cc:
    # Line 528
    lwc1	$f1,30220($a0)
    # Line 525
    lwc1	$f30,30208($a0)
    # Line 528
    swc1	$f1,12($sp)
    # Line 527
    lwc1	$f0,30216($a0)
    # Line 526
    lwc1	$f31,30212($a0)
    # Line 527
    swc1	$f0,8($sp)
    b	.L0d94f1fc
    # Line 526
    swc1	$f31,4($sp)
.L0d9500ec:
    # Line 648
    lwc1	$f3,1616($s1)
    # Line 646
    lwc1	$f2,1608($s1)
    # Line 648
    swc1	$f3,108($sp)
    # Line 646
    swc1	$f2,100($sp)
    # Line 647
    mul.s	$f2,$f2,$f2
    # Line 648
    b	.L0d94f560
    # Line 647
    swc1	$f2,104($sp)
.L0d950108:
    b	.L0d94f404
    # Line 592
    move	$s4,$zero
.L0d950110:
    mov.d	$f12,$f7
    # Line 563
    c.lt.d $f7,$f28
    # Line 565
    # lw $t9, -28804($gp) # &__glFloor
    movf.d	$f12,$f28,$fcc1
    sdc1	$f7,376($sp)
    sdc1	$f5,760($sp)
    jal	__glFloor
    cvt.s.d	$f12,$f12
    # Line 567
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    lwc1	$f15,_lit_bf800000
    add.s	$f14,$f14,$f15
    trunc.w.s	$f14,$f14
    ldc1	$f13,376($sp)
    cvt.d.w	$f14,$f14
    # Line 568
    sub.d	$f28,$f28,$f14
    # Line 567
    sub.d	$f13,$f13,$f14
    # Line 569
    mov.d	$f15,$f13
    # Line 568
    c.lt.d $f28,$f13
    # Line 569
    ldc1	$f14,_lit8_402e000000000000
    movf.d	$f15,$f28,$fcc3
    li	$a0,10497
    ldc1	$f5,760($sp)
    c.lt.d $f14,$f15
    li	$s8,1
    # Line 567
    sdc1	$f13,408($sp)
    # Line 569
    b	.L0d94f380
    movf	$s8,$zero,$fcc2
.L0d950180:
    # Line 579
    ldc1	$f24,_lit8_3ff0000000000000
    dmtc1	$zero,$f22
    move	$s4,$zero
    b	.L0d94f404
    mov.d	$f4,$f24
.L0d950194:
    # Line 637
    lwc1	$f16,30240($s1)
    # Line 636
    lwc1	$f15,30232($s1)
    # Line 637
    swc1	$f16,96($sp)
    b	.L0d94f548
    # Line 636
    swc1	$f15,92($sp)
.L0d9501a8:
    mov.d	$f12,$f9
    # Line 582
    c.lt.d $f9,$f4
    # Line 584
    # lw $t9, -28804($gp) # &__glFloor
    movf.d	$f12,$f4,$fcc4
    sdc1	$f9,368($sp)
    sdc1	$f4,384($sp)
    jal	__glFloor
    cvt.s.d	$f12,$f12
    # Line 586
    mtc1	$v0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f27,_lit_bf800000
    add.s	$f25,$f25,$f27
    trunc.w.s	$f25,$f25
    # Line 587
    ldc1	$f4,384($sp)
    # Line 586
    ldc1	$f24,368($sp)
    cvt.d.w	$f25,$f25
    # Line 587
    sub.d	$f4,$f4,$f25
    # Line 586
    sub.d	$f24,$f24,$f25
    # Line 588
    mov.d	$f14,$f24
    # Line 587
    c.lt.d $f4,$f24
    # Line 588
    ldc1	$f13,_lit8_402e000000000000
    movf.d	$f14,$f4,$fcc6
    dmtc1	$zero,$f22
    c.lt.d $f13,$f14
    li	$s4,1
    b	.L0d94f404
    movf	$s4,$zero,$fcc5
.L0d950214:
    # Line 675
    lui	$s4,0x8000
    b	.L0d94f6a0
    # Line 673
    ld	$t3,552($sp)
.end __glCrmStoreStippledLine

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_401c000000000000:
    .word 0x401c0000, 0x00000000
_lit8_402e000000000000:
    .word 0x402e0000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_41c0000000000000:
    .word 0x41c00000, 0x00000000
_lit8_c01c000000000000:
    .word 0xc01c0000, 0x00000000
_lit_37000000:
    .word 0x37000000
_lit_3f800000:
    .word 0x3f800000
_lit_402df854:
    .word 0x402df854
_lit_42800000:
    .word 0x42800000
_lit_45800000:
    .word 0x45800000
_lit_b7000000:
    .word 0xb7000000
_lit_bf800000:
    .word 0xbf800000

