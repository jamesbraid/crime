# Source: ../soft/so_lineclip.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_lineclip.c
# Total Functions: 3

.text

# Function: __glClipLine
# Declared: Line 82 (Source lines: 83-326)
# Address: 0x0d9e5b90 - 0x0d9e61a4 (Size: 1556 bytes, Frame: 160)
.globl __glClipLine
.ent __glClipLine
__glClipLine:
    # Line 83
    addiu	$sp,$sp,-544
    sd	$s4,456($sp)
    sd	$s5,448($sp)
    sd	$s0,464($sp)
    sd	$s3,488($sp)
    # Line 98
    lw	$at,0($a1)
    # Line 83
    sd	$s6,480($sp)
    move	$s3,$a1
    move	$s0,$a2
    # Line 97
    lw	$s6,28080($a0)
    # Line 83
    move	$s5,$a0
    # Line 98
    lw	$t8,4($a1)
    # Line 83
    lui	$v0,0x7
    sd	$s2,496($sp)
    # Line 98
    nor	$at,$at,$zero
    # Line 97
    ori	$s6,$s6,0x20
    # Line 83
    addiu	$v0,$v0,-19972
    # Line 98
    lw	$s2,4($a2)
    and	$at,$s6,$at
    # Line 83
    move	$s4,$a2
    sd	$gp,472($sp)
    addu	$gp,$t9,$v0
    sd	$ra,440($sp)
    # Line 98
    beqz	$at,.L0d9e5c00
    or	$s2,$s2,$t8
    # Line 113
    lw	$t9,12($s3)
    jalr	$t9
    move	$a2,$s6
.L0d9e5c00:
    lw	$t8,0($s0)
    nor	$t8,$t8,$zero
    and	$t8,$s6,$t8
    sd	$s1,432($sp)
    beqz	$t8,.L0d9e5c2c
    sd	$s8,424($sp)
    # Line 116
    lw	$t9,12($s0)
    move	$a0,$s5
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s6
.L0d9e5c2c:
    # Line 125
    lw	$s8,12488($s5)
    sdc1	$f20,392($sp)
    sdc1	$f22,384($sp)
    # Line 132
    srl	$t9,$s2,0x6
    sd	$s7,416($sp)
    sd	$s0,408($sp)
    beqz	$t9,.L0d9e5d98
    move	$s1,$t9
    # Line 134
    addiu	$t8,$sp,144
    sd	$t8,400($sp)
    addiu	$s7,$sp,192
    mtc1	$zero,$f20
    lw	$s0,1748($s5)
    addiu	$s7,$s7,144
.L0d9e5c64:
    andi	$t9,$s1,0x1
    beqz	$t9,.L0d9e5d8c
    # Line 202
    srl	$v1,$s1,0x1
    # Line 144
    lwc1	$f10,4($s0)
    lwc1	$f8,0($s0)
    lwc1	$f6,96($s3)
    lwc1	$f7,100($s3)
    lwc1	$f9,8($s0)
    lwc1	$f12,104($s3)
    mul.s	$f6,$f6,$f8
    lwc1	$f11,108($s3)
    madd.s	$f6,$f6,$f7,$f10
    lwc1	$f7,12($s0)
    madd.s	$f6,$f6,$f12,$f9
    madd.s	$f6,$f6,$f11,$f7
    # Line 146
    lwc1	$f4,96($s4)
    lwc1	$f5,100($s4)
    mul.s	$f4,$f4,$f8
    lwc1	$f8,104($s4)
    madd.s	$f4,$f4,$f5,$f10
    lwc1	$f5,108($s4)
    c.lt.s	$f6,$f20
    madd.s	$f4,$f4,$f8,$f9
    bc1f	.L0d9e5d80
    madd.s	$f4,$f4,$f5,$f7
    c.lt.s $f4,$f20
    bc1t .L0d9e5f98
    nop
    # Line 160
    sub.s	$f22,$f4,$f6
    div.s	$f22,$f4,$f22
    move	$t9,$s8
    addiu	$a0,$sp,192
    move	$a1,$s3
    move	$a2,$s4
    jalr	$t9
    mov.s	$f15,$f22
    # Line 161
    lwc1	$f1,96($s4)
    lwc1	$f2,96($s3)
    sub.s	$f2,$f2,$f1
    madd.s	$f1,$f1,$f22,$f2
    swc1	$f1,288($sp)
    # Line 162
    lwc1	$f31,100($s4)
    lwc1	$f0,100($s3)
    sub.s	$f0,$f0,$f31
    madd.s	$f31,$f31,$f22,$f0
    swc1	$f31,292($sp)
    # Line 163
    lwc1	$f27,104($s4)
    lwc1	$f29,104($s3)
    sub.s	$f29,$f29,$f27
    madd.s	$f27,$f27,$f22,$f29
    swc1	$f27,296($sp)
    # Line 164
    lwc1	$f23,108($s4)
    lwc1	$f25,108($s3)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f22,$f25
    # Line 168
    la	$at,__glNop
    # Line 164
    swc1	$f23,300($sp)
    # Line 166
    lw	$ra,0($s4)
    # Line 168
    sw	$at,204($sp)
    # Line 167
    sw	$s7,200($sp)
    # Line 168
    addiu	$s3,$sp,192
    # Line 166
    sw	$ra,192($sp)
.L0d9e5d5c:
    # Line 202
    srl	$v0,$s1,0x1
    # Line 201
    addiu	$s0,$s0,16
    # Line 202
    bnez	$v0,.L0d9e5c64
    move	$s1,$v0
    b	.L0d9e5d9c
    # Line 206
    andi	$s2,$s2,0x3f
    nop
    nop
    nop
.L0d9e5d80:
    # Line 152
    c.lt.s $f4,$f20
    bc1t .L0d9e5fd4
    # Line 202
    srl	$v1,$s1,0x1
.L0d9e5d8c:
    # Line 201
    addiu	$s0,$s0,16
    # Line 202
    bnez	$v1,.L0d9e5c64
    move	$s1,$v1
.L0d9e5d98:
    # Line 206
    andi	$s2,$s2,0x3f
.L0d9e5d9c:
    # Line 202
    addiu	$a4,$sp,192
    # Line 206
    beqz	$s2,.L0d9e6190
    # Line 202
    addiu	$a0,$sp,0
    # Line 208
    mtc1	$zero,$f20
    la	$s0,__gl_frustumClipPlanes
    addiu	$a1,$sp,144
    sd	$a1,400($sp)
    addiu	$s7,$a4,144
.L0d9e5dbc:
    lwc1	$f6,120($s3)
    lwc1	$f7,116($s3)
    lwc1	$f8,112($s3)
    b	.L0d9e5de8
    lwc1	$f9,124($s3)
.L0d9e5dd0:
    # Line 226
    c.lt.s $f4,$f20
    bc1t .L0d9e6064
    nop
.L0d9e5ddc:
    # Line 267
    addiu	$s0,$s0,16
    # Line 268
    beqz	$a2,.L0d9e5e9c
    move	$s2,$a2
.L0d9e5de8:
    # Line 208
    andi	$a3,$s2,0x1
    beqz	$a3,.L0d9e5ddc
    # Line 268
    srl	$a2,$s2,0x1
    # Line 218
    lwc1	$f12,0($s0)
    lwc1	$f14,4($s0)
    lwc1	$f13,8($s0)
    mul.s	$f10,$f8,$f12
    madd.s	$f10,$f10,$f7,$f14
    lwc1	$f11,12($s0)
    madd.s	$f10,$f10,$f6,$f13
    madd.s	$f10,$f10,$f9,$f11
    # Line 220
    lwc1	$f4,112($s4)
    lwc1	$f5,116($s4)
    mul.s	$f4,$f4,$f12
    lwc1	$f12,120($s4)
    madd.s	$f4,$f4,$f5,$f14
    lwc1	$f5,124($s4)
    c.lt.s $f10,$f20
    madd.s	$f4,$f4,$f12,$f13
    bc1f .L0d9e5dd0
    madd.s	$f4,$f4,$f5,$f11
    c.lt.s $f4,$f20
    bc1t .L0d9e5f98
    nop
    # Line 234
    sub.s	$f15,$f4,$f10
    move	$t9,$s8
    move	$a2,$s4
    move	$a1,$s3
    addiu	$a0,$sp,192
    jalr	$t9
    div.s	$f15,$f4,$f15
    # Line 236
    lw	$a4,0($s4)
    # Line 237
    sw	$s7,200($sp)
    # Line 238
    la	$a5,__glNop
    sw	$a5,204($sp)
    addiu	$s3,$sp,192
    # Line 236
    sw	$a4,192($sp)
.L0d9e5e7c:
    # Line 268
    srl	$a6,$s2,0x1
    # Line 267
    addiu	$s0,$s0,16
    # Line 268
    bnez	$a6,.L0d9e5dbc
    move	$s2,$a6
    lwc1	$f6,120($s3)
    lwc1	$f7,116($s3)
    lwc1	$f8,112($s3)
    lwc1	$f9,124($s3)
.L0d9e5e9c:
    # Line 281
    lwc1	$f0,3544($s5)
    div.s	$f0,$f0,$f9
    # Line 278
    lwc1	$f31,1736($s5)
    # Line 275
    lwc1	$f19,1740($s5)
    # Line 287
    mul.s	$f1,$f6,$f31
    # Line 276
    lwc1	$f23,1720($s5)
    # Line 277
    lwc1	$f21,1728($s5)
    # Line 287
    madd.s	$f1,$f19,$f0,$f1
    # Line 289
    mul.s	$f29,$f23,$f8
    # Line 290
    mul.s	$f27,$f21,$f7
    # Line 273
    lwc1	$f17,1724($s5)
    # Line 289
    madd.s	$f29,$f17,$f0,$f29
    # Line 274
    lwc1	$f16,1732($s5)
    # Line 290
    madd.s	$f27,$f16,$f0,$f27
    # Line 287
    swc1	$f1,136($s3)
    # Line 288
    swc1	$f0,140($s3)
    # Line 289
    swc1	$f29,128($s3)
    # Line 290
    swc1	$f27,132($s3)
    # Line 292
    lwc1	$f25,124($s4)
    lwc1	$f18,3544($s5)
    div.s	$f18,$f18,$f25
    # Line 298
    lwc1	$f29,120($s4)
    mul.s	$f29,$f29,$f31
    # Line 293
    lwc1	$f27,112($s4)
    # Line 294
    lwc1	$f25,116($s4)
    # Line 298
    madd.s	$f19,$f19,$f18,$f29
    # Line 300
    mul.s	$f23,$f23,$f27
    # Line 301
    mul.s	$f21,$f21,$f25
    # Line 300
    madd.s	$f17,$f17,$f18,$f23
    # Line 301
    madd.s	$f16,$f16,$f18,$f21
    # Line 298
    swc1	$f19,136($s4)
    # Line 299
    swc1	$f18,140($s4)
    # Line 300
    swc1	$f17,128($s4)
    # Line 301
    swc1	$f16,132($s4)
    lw	$a7,1392($s5)
    li	$t0,7424
    beq	$a7,$t0,.L0d9e60a0
    ld	$v0,408($sp)
    # Line 320
    lw	$t1,0($s3)
    nor	$t1,$t1,$zero
    and	$t1,$s6,$t1
    beqz	$t1,.L0d9e5f5c
    nop
    # Line 322
    lw	$t9,12($s3)
    move	$a0,$s5
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s6
.L0d9e5f5c:
    lw	$t2,0($s4)
    nor	$t2,$t2,$zero
    and	$t2,$s6,$t2
    beqz	$t2,.L0d9e5f84
    nop
    # Line 323
    lw	$t9,12($s4)
    move	$a0,$s5
    move	$a1,$s4
    jalr	$t9
    move	$a2,$s6
.L0d9e5f84:
    # Line 324
    lw	$t9,12472($s5)
    move	$a0,$s5
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
.L0d9e5f98:
    # Line 326
    ld	$gp,472($sp)
    ld	$s0,464($sp)
    ld	$s1,432($sp)
    ld	$s2,496($sp)
    ld	$s3,488($sp)
    ld	$s4,456($sp)
    ld	$s5,448($sp)
    ld	$s6,480($sp)
    ld	$s7,416($sp)
    ld	$ra,440($sp)
    ld	$s8,424($sp)
    ldc1	$f20,392($sp)
    ldc1	$f22,384($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0d9e5fd4:
    # Line 186
    sub.s	$f22,$f6,$f4
    div.s	$f22,$f6,$f22
    move	$t9,$s8
    addiu	$a0,$sp,0
    move	$a1,$s4
    move	$a2,$s3
    jalr	$t9
    mov.s	$f15,$f22
    # Line 187
    lwc1	$f1,96($s3)
    lwc1	$f2,96($s4)
    sub.s	$f2,$f2,$f1
    madd.s	$f1,$f1,$f22,$f2
    swc1	$f1,96($sp)
    # Line 188
    lwc1	$f31,100($s3)
    lwc1	$f0,100($s4)
    sub.s	$f0,$f0,$f31
    madd.s	$f31,$f31,$f22,$f0
    swc1	$f31,100($sp)
    # Line 189
    lwc1	$f27,104($s3)
    lwc1	$f29,104($s4)
    sub.s	$f29,$f29,$f27
    madd.s	$f27,$f27,$f22,$f29
    swc1	$f27,104($sp)
    # Line 190
    lwc1	$f23,108($s3)
    lwc1	$f25,108($s4)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f22,$f25
    # Line 194
    la	$t8,__glNop
    # Line 193
    ld	$s4,400($sp)
    # Line 190
    swc1	$f23,108($sp)
    # Line 192
    lw	$t3,0($s3)
    # Line 194
    sw	$t8,12($sp)
    # Line 193
    sw	$s4,8($sp)
    # Line 185
    addiu	$s4,$sp,0
    b	.L0d9e5d5c
    # Line 192
    sw	$t3,0($sp)
.L0d9e6064:
    # Line 256
    sub.s	$f15,$f10,$f4
    move	$t9,$s8
    move	$a2,$s3
    move	$a1,$s4
    addiu	$a0,$sp,0
    jalr	$t9
    div.s	$f15,$f10,$f15
    # Line 259
    ld	$ra,400($sp)
    # Line 258
    lw	$t9,0($s3)
    # Line 260
    la	$at,__glNop
    sw	$at,12($sp)
    # Line 259
    sw	$ra,8($sp)
    # Line 255
    addiu	$s4,$sp,0
    b	.L0d9e5e7c
    # Line 258
    sw	$t9,0($sp)
.L0d9e60a0:
    # Line 301
    lw	$v0,0($v0)
    nor	$v0,$v0,$zero
    and	$v0,$s6,$v0
    andi	$v0,$v0,0x19
    beqz	$v0,.L0d9e60d4
    # Line 311
    ld	$at,408($sp)
    # Line 309
    ld	$t9,408($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    move	$a0,$s5
    jalr	$t9
    andi	$a2,$s6,0x19
    # Line 311
    ld	$at,408($sp)
.L0d9e60d4:
    addiu	$at,$at,144
    sw	$at,8($s4)
    lw	$ra,0($s3)
    nor	$ra,$ra,$zero
    li	$s0,-26
    and	$ra,$s6,$ra
    and	$ra,$s0,$ra
    beqz	$ra,.L0d9e610c
    nop
    # Line 315
    lw	$t9,12($s3)
    move	$a0,$s5
    move	$a1,$s3
    jalr	$t9
    and	$a2,$s0,$s6
.L0d9e610c:
    lw	$v0,0($s4)
    nor	$v0,$v0,$zero
    and	$v0,$s6,$v0
    and	$v0,$s0,$v0
    beqz	$v0,.L0d9e6138
    nop
    # Line 316
    lw	$t9,12($s4)
    move	$a0,$s5
    move	$a1,$s4
    jalr	$t9
    and	$a2,$s0,$s6
.L0d9e6138:
    # Line 319
    lw	$t9,12472($s5)
    move	$a0,$s5
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
    # Line 326
    ld	$gp,472($sp)
    ld	$s0,464($sp)
    ld	$s1,432($sp)
    ld	$s2,496($sp)
    ld	$s3,488($sp)
    # Line 320
    addiu	$v1,$s4,144
    sw	$v1,8($s4)
    # Line 326
    ld	$s4,456($sp)
    ld	$s5,448($sp)
    ld	$s6,480($sp)
    ld	$s7,416($sp)
    ld	$ra,440($sp)
    ld	$s8,424($sp)
    ldc1	$f20,392($sp)
    ldc1	$f22,384($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0d9e6190:
    # Line 268
    lwc1	$f6,120($s3)
    lwc1	$f7,116($s3)
    lwc1	$f8,112($s3)
    b	.L0d9e5e9c
    lwc1	$f9,124($s3)
.end __glClipLine

# Function: __glFastClipSmoothLine
# Declared: Line 328 (Source lines: 329-352)
# Address: 0x0d9e61b0 - 0x0d9e6264 (Size: 180 bytes, Frame: 48)
.globl __glFastClipSmoothLine
.ent __glFastClipSmoothLine
__glFastClipSmoothLine:
    # Line 329
    lw	$a4,4($a2)
    lw	$a5,4($a1)
    addiu	$sp,$sp,-48
    lui	$v0,0x7
    or	$at,$a5,$a4
    sd	$ra,40($sp)
    addiu	$v0,$v0,-21540
    and	$v1,$a5,$a4
    sd	$gp,32($sp)
    beqz	$at,.L0d9e6204
    addu	$gp,$t9,$v0
    beqz	$v1,.L0d9e61f0
    ld	$ra,40($sp)
.L0d9e61e4:
    # Line 352
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9e61f0:
    # Line 345
    # lw $t9, -25760($gp) # &__glClipLine
    bal __glClipLine
    nop
    b	.L0d9e61e4
    ld	$ra,40($sp)
.L0d9e6204:
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a0,24($sp)
    # Line 349
    ld	$a1,16($sp)
    # Line 348
    ld	$a0,24($sp)
    # Line 349
    lw	$t9,12($a1)
    # Line 348
    lw	$a2,28076($a0)
    ori	$a2,$a2,0x1
    # Line 349
    jal	__glClipLine
    # Line 348
    sd	$a2,0($sp)
    # Line 350
    ld	$t9,8($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    ld	$a0,24($sp)
    jalr	$t9
    ld	$a2,0($sp)
    # Line 351
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,12472($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,8($sp)
    b	.L0d9e61e4
    ld	$ra,40($sp)
.end __glFastClipSmoothLine

# Function: __glFastClipFlatLine
# Declared: Line 354 (Source lines: 355-388)
# Address: 0x0d9e6270 - 0x0d9e632c (Size: 188 bytes, Frame: 48)
.globl __glFastClipFlatLine
.ent __glFastClipFlatLine
__glFastClipFlatLine:
    # Line 355
    lw	$a4,4($a2)
    lw	$a5,4($a1)
    addiu	$sp,$sp,-48
    lui	$v0,0x7
    or	$at,$a5,$a4
    sd	$ra,40($sp)
    addiu	$v0,$v0,-21732
    and	$v1,$a5,$a4
    sd	$gp,32($sp)
    beqz	$at,.L0d9e62c4
    addu	$gp,$t9,$v0
    beqz	$v1,.L0d9e62b4
    # Line 371
    nop	# was lw $t9, -25760($gp) # &__glClipLine
    ld	$ra,40($sp)
.L0d9e62a8:
    # Line 388
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9e62b4:
    # Line 371
    bal __glClipLine
    nop
    b	.L0d9e62a8
    ld	$ra,40($sp)
.L0d9e62c4:
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    # Line 381
    ld	$a1,16($sp)
    # Line 374
    ld	$a0,8($sp)
    # Line 381
    lw	$t9,12($a1)
    # Line 374
    lw	$a2,28076($a0)
    # Line 381
    li	$a3,-2
    # Line 374
    sd	$a2,0($sp)
    # Line 381
    jal	__glClipLine
    and	$a2,$a2,$a3
    # Line 384
    ld	$t9,24($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    ld	$a2,0($sp)
    ld	$a0,8($sp)
    jalr	$t9
    ori	$a2,$a2,0x1
    # Line 387
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,12472($t9)
    ld	$a1,16($sp)
    jalr	$t9
    ld	$a2,24($sp)
    b	.L0d9e62a8
    ld	$ra,40($sp)
.end __glFastClipFlatLine

