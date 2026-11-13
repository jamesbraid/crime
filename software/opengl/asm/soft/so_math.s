# Source: ../soft/so_math.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_math.c
# Total Functions: 5

.text

# Function: __glCopyMatrix
# Declared: Line 30 (Source lines: 32-52)
# Address: 0x0d9f09c0 - 0x0d9f0a4c (Size: 140 bytes, Frame: 0)
.globl __glCopyMatrix
.ent __glCopyMatrix
__glCopyMatrix:
    # Line 32
    lw	$at,64($a1)
    sw	$at,64($a0)
    # Line 33
    lwc1	$f15,0($a1)
    swc1	$f15,0($a0)
    # Line 34
    lwc1	$f14,4($a1)
    swc1	$f14,4($a0)
    # Line 35
    lwc1	$f13,8($a1)
    swc1	$f13,8($a0)
    # Line 36
    lwc1	$f12,12($a1)
    swc1	$f12,12($a0)
    # Line 38
    lwc1	$f11,16($a1)
    swc1	$f11,16($a0)
    # Line 39
    lwc1	$f10,20($a1)
    swc1	$f10,20($a0)
    # Line 40
    lwc1	$f9,24($a1)
    swc1	$f9,24($a0)
    # Line 41
    lwc1	$f8,28($a1)
    swc1	$f8,28($a0)
    # Line 43
    lwc1	$f7,32($a1)
    swc1	$f7,32($a0)
    # Line 44
    lwc1	$f6,36($a1)
    swc1	$f6,36($a0)
    # Line 45
    lwc1	$f5,40($a1)
    swc1	$f5,40($a0)
    # Line 46
    lwc1	$f4,44($a1)
    swc1	$f4,44($a0)
    # Line 48
    lwc1	$f3,48($a1)
    swc1	$f3,48($a0)
    # Line 49
    lwc1	$f2,52($a1)
    swc1	$f2,52($a0)
    # Line 50
    lwc1	$f1,56($a1)
    swc1	$f1,56($a0)
    # Line 51
    lwc1	$f0,60($a1)
    # Line 52
    jr	$ra
    # Line 51
    swc1	$f0,60($a0)
.end __glCopyMatrix

# Function: __glMakeIdentity
# Declared: Line 57 (Source lines: 58-70)
# Address: 0x0d9f0a50 - 0x0d9f0ab0 (Size: 96 bytes, Frame: 0)
.globl __glMakeIdentity
.ent __glMakeIdentity
__glMakeIdentity:
    # Line 61
    mtc1	$zero,$f1
    # Line 69
    li	$v1,4
    sw	$v1,64($a0)
    # Line 68
    swc1	$f1,56($a0)
    # Line 67
    swc1	$f1,52($a0)
    swc1	$f1,48($a0)
    # Line 66
    swc1	$f1,44($a0)
    # Line 65
    swc1	$f1,36($a0)
    swc1	$f1,32($a0)
    # Line 64
    swc1	$f1,28($a0)
    swc1	$f1,24($a0)
    # Line 63
    swc1	$f1,16($a0)
    # Line 58
    lui	$v0,0x6
    # Line 62
    swc1	$f1,12($a0)
    # Line 58
    addiu	$v0,$v0,828
    # Line 62
    swc1	$f1,8($a0)
    # Line 58
    addu	$at,$t9,$v0
    # Line 61
    lwc1	$f0,_lit_3f800000
    swc1	$f1,4($a0)
    # Line 68
    swc1	$f0,60($a0)
    # Line 66
    swc1	$f0,40($a0)
    # Line 63
    swc1	$f0,20($a0)
    # Line 70
    jr	$ra
    # Line 61
    swc1	$f0,0($a0)
.end __glMakeIdentity

# Function: __glMultMatrix
# Declared: Line 75 (Source lines: 76-102)
# Address: 0x0d9f0ab0 - 0x0d9f0ba0 (Size: 240 bytes, Frame: 0)
.globl __glMultMatrix
.ent __glMultMatrix
__glMultMatrix:
    # Line 90
    lwc1	$f18,60($a2)
    lwc1	$f5,56($a2)
    # Line 89
    lwc1	$f16,52($a2)
    lwc1	$f15,48($a2)
    # Line 88
    lwc1	$f14,44($a2)
    lwc1	$f13,40($a2)
    # Line 87
    lwc1	$f11,36($a2)
    lwc1	$f10,32($a2)
    # Line 86
    lwc1	$f19,28($a2)
    lwc1	$f17,24($a2)
    # Line 85
    lwc1	$f8,20($a2)
    lwc1	$f12,16($a2)
    # Line 84
    lwc1	$f4,12($a2)
    lwc1	$f9,8($a2)
    # Line 76
    move	$a5,$a0
    # Line 83
    lwc1	$f6,4($a2)
    # Line 76
    move	$a4,$a1
    # Line 90
    addiu	$a6,$a1,64
    # Line 83
    lwc1	$f7,0($a2)
.L0d9f0afc:
    # Line 93
    lwc1	$f3,4($a4)
    lwc1	$f21,0($a4)
    mul.s	$f3,$f3,$f12
    lwc1	$f23,8($a4)
    madd.s	$f3,$f3,$f21,$f7
    lwc1	$f21,12($a4)
    madd.s	$f3,$f3,$f23,$f10
    madd.s	$f3,$f3,$f21,$f15
    swc1	$f3,0($a5)
    # Line 95
    lwc1	$f2,4($a4)
    lwc1	$f3,0($a4)
    mul.s	$f2,$f2,$f8
    lwc1	$f21,8($a4)
    madd.s	$f2,$f2,$f3,$f6
    lwc1	$f3,12($a4)
    madd.s	$f2,$f2,$f21,$f11
    madd.s	$f2,$f2,$f3,$f16
    swc1	$f2,4($a5)
    # Line 97
    lwc1	$f1,4($a4)
    lwc1	$f2,0($a4)
    mul.s	$f1,$f1,$f17
    lwc1	$f3,8($a4)
    madd.s	$f1,$f1,$f2,$f9
    lwc1	$f2,12($a4)
    madd.s	$f1,$f1,$f3,$f13
    madd.s	$f1,$f1,$f2,$f5
    swc1	$f1,8($a5)
    # Line 99
    lwc1	$f0,4($a4)
    lwc1	$f1,0($a4)
    mul.s	$f0,$f0,$f19
    lwc1	$f2,8($a4)
    madd.s	$f0,$f0,$f1,$f4
    lwc1	$f1,12($a4)
    madd.s	$f0,$f0,$f2,$f14
    madd.s	$f0,$f0,$f1,$f18
    # Line 92
    addiu	$a4,$a4,16
    addiu	$a5,$a5,16
    bne	$a4,$a6,.L0d9f0afc
    # Line 99
    swc1	$f0,-4($a5)
    # Line 102
    jr	$ra
    nop
.end __glMultMatrix

# Function: __glInvertTransposeMatrix
# Declared: Line 166 (Source lines: 167-354)
# Address: 0x0d9f0ba0 - 0x0d9f0f64 (Size: 964 bytes, Frame: 128)
.globl __glInvertTransposeMatrix
.ent __glInvertTransposeMatrix
__glInvertTransposeMatrix:
    # Line 174
    lw	$v1,64($a1)
    sw	$v1,64($a0)
    lwc1	$f9,40($a1)
    lwc1	$f7,24($a1)
    lwc1	$f8,8($a1)
    lwc1	$f10,36($a1)
    lwc1	$f4,32($a1)
    lwc1	$f11,20($a1)
    # Line 167
    addiu	$sp,$sp,-128
    # Line 174
    lwc1	$f5,16($a1)
    # Line 167
    lui	$v0,0x6
    # Line 174
    mtc1	$zero,$f13
    lwc1	$f12,4($a1)
    # Line 167
    addiu	$v0,$v0,492
    # Line 174
    lwc1	$f6,0($a1)
    beqz	$v1,.L0d9f0cf8
    # Line 167
    addu	$at,$t9,$v0
    # Line 174
    mul.s	$f14,$f7,$f12
    nmsub.s	$f14,$f14,$f8,$f11
    mul.s	$f15,$f8,$f10
    nmsub.s	$f15,$f15,$f9,$f12
    mul.s	$f17,$f9,$f11
    nmsub.s	$f17,$f17,$f7,$f10
    mul.s	$f16,$f14,$f4
    madd.s	$f16,$f16,$f15,$f5
    madd.s	$f16,$f16,$f17,$f6
    c.eq.s	$f16,$f13
    bc1t	.L0d9f0cf0
    # Line 211
    lwc1	$f23,_lit_3f800000
    div.s	$f0,$f23,$f16
    # Line 219
    mul.s	$f2,$f5,$f12
    msub.s	$f2,$f2,$f11,$f6
    # Line 212
    mul.s	$f29,$f9,$f5
    msub.s	$f29,$f29,$f7,$f4
    # Line 213
    mul.s	$f19,$f4,$f11
    msub.s	$f19,$f19,$f10,$f5
    # Line 216
    mul.s	$f21,$f10,$f6
    msub.s	$f21,$f21,$f4,$f12
    # Line 215
    mul.s	$f16,$f8,$f4
    msub.s	$f16,$f16,$f9,$f6
    # Line 217
    mul.s	$f1,$f14,$f0
    # Line 211
    mul.s	$f27,$f17,$f0
    # Line 218
    mul.s	$f17,$f7,$f6
    msub.s	$f17,$f17,$f8,$f5
    # Line 216
    mul.s	$f21,$f0,$f21
    # Line 217
    swc1	$f1,32($a0)
    # Line 215
    mul.s	$f16,$f0,$f16
    # Line 216
    swc1	$f21,24($a0)
    # Line 214
    mul.s	$f31,$f15,$f0
    # Line 215
    swc1	$f16,20($a0)
    # Line 213
    mul.s	$f19,$f0,$f19
    # Line 214
    swc1	$f31,16($a0)
    # Line 212
    mul.s	$f29,$f0,$f29
    # Line 213
    swc1	$f19,8($a0)
    # Line 212
    swc1	$f29,4($a0)
    # Line 218
    mul.s	$f17,$f0,$f17
    # Line 211
    swc1	$f27,0($a0)
    # Line 219
    mul.s	$f0,$f0,$f2
    swc1	$f0,40($a0)
    # Line 218
    swc1	$f17,36($a0)
    # Line 223
    lwc1	$f15,52($a1)
    # Line 222
    lwc1	$f25,48($a1)
    # Line 223
    neg.s	$f15,$f15
    # Line 239
    mul.s	$f17,$f17,$f15
    # Line 224
    lwc1	$f18,56($a1)
    # Line 222
    neg.s	$f25,$f25
    # Line 236
    mul.s	$f16,$f16,$f15
    # Line 233
    mul.s	$f15,$f29,$f15
    madd.s	$f15,$f15,$f25,$f27
    # Line 224
    neg.s	$f18,$f18
    # Line 239
    madd.s	$f17,$f17,$f25,$f1
    # Line 236
    madd.s	$f16,$f16,$f25,$f31
    # Line 239
    madd.s	$f17,$f17,$f18,$f0
    # Line 230
    swc1	$f23,60($a0)
    # Line 236
    madd.s	$f16,$f16,$f18,$f21
    # Line 229
    swc1	$f13,56($a0)
    # Line 233
    madd.s	$f15,$f15,$f18,$f19
    # Line 228
    swc1	$f13,52($a0)
    # Line 227
    swc1	$f13,48($a0)
    # Line 239
    swc1	$f17,44($a0)
    # Line 236
    swc1	$f16,28($a0)
    # Line 354
    addiu	$sp,$sp,128
    jr	$ra
    # Line 233
    swc1	$f15,12($a0)
.L0d9f0cf0:
    # Line 354
    jr	$ra
    addiu	$sp,$sp,128
.L0d9f0cf8:
    # Line 282
    lwc1	$f14,12($a1)
    # Line 284
    lwc1	$f29,28($a1)
    # Line 301
    mul.s	$f31,$f7,$f14
    msub.s	$f31,$f31,$f29,$f8
    # Line 287
    lwc1	$f19,56($a1)
    # Line 276
    mul.s	$f0,$f4,$f11
    # Line 297
    lwc1	$f16,60($a1)
    # Line 276
    msub.s	$f0,$f0,$f10,$f5
    # Line 286
    lwc1	$f25,44($a1)
    # Line 305
    mul.s	$f3,$f29,$f19
    msub.s	$f3,$f3,$f16,$f7
    # Line 277
    lwc1	$f15,48($a1)
    # Line 302
    mul.s	$f17,$f9,$f14
    # Line 270
    lwc1	$f18,52($a1)
    # Line 302
    msub.s	$f17,$f17,$f25,$f8
    sdc1	$f20,104($sp)
    # Line 278
    mul.s	$f20,$f15,$f10
    msub.s	$f20,$f20,$f18,$f4
    # Line 274
    mul.s	$f27,$f4,$f12
    msub.s	$f27,$f27,$f10,$f6
    sdc1	$f22,112($sp)
    # Line 277
    mul.s	$f22,$f15,$f11
    # Line 275
    mul.s	$f15,$f15,$f12
    msub.s	$f15,$f15,$f18,$f6
    # Line 273
    mul.s	$f2,$f5,$f12
    msub.s	$f2,$f2,$f11,$f6
    # Line 297
    mul.s	$f1,$f16,$f27
    msub.s	$f1,$f1,$f25,$f15
    sdc1	$f24,120($sp)
    # Line 304
    mul.s	$f24,$f9,$f29
    # Line 297
    nmsub.s	$f1,$f1,$f14,$f20
    # Line 277
    msub.s	$f22,$f22,$f18,$f5
    # Line 295
    mul.s	$f21,$f2,$f25
    msub.s	$f21,$f21,$f29,$f27
    # Line 304
    msub.s	$f24,$f24,$f25,$f7
    # Line 295
    nmsub.s	$f21,$f21,$f14,$f0
    # Line 297
    sdc1	$f1,88($sp)
    # Line 306
    mul.s	$f1,$f11,$f17
    # Line 298
    mul.s	$f23,$f25,$f22
    # Line 306
    mul.s	$f25,$f25,$f19
    msub.s	$f25,$f25,$f16,$f9
    # Line 298
    msub.s	$f23,$f23,$f29,$f20
    # Line 296
    mul.s	$f29,$f29,$f15
    msub.s	$f29,$f29,$f14,$f22
    # Line 303
    mul.s	$f14,$f14,$f19
    msub.s	$f14,$f14,$f16,$f8
    # Line 306
    mul.s	$f16,$f11,$f25
    nmsub.s	$f16,$f16,$f10,$f3
    # Line 305
    sdc1	$f3,64($sp)
    # Line 306
    mul.s	$f3,$f12,$f3
    nmsub.s	$f3,$f3,$f11,$f14
    nmsub.s	$f1,$f1,$f10,$f31
    madd.s	$f3,$f3,$f18,$f31
    # Line 301
    sdc1	$f31,80($sp)
    # Line 292
    mul.s	$f31,$f2,$f19
    msub.s	$f31,$f31,$f15,$f7
    # Line 293
    mul.s	$f15,$f9,$f15
    msub.s	$f15,$f15,$f20,$f8
    # Line 306
    madd.s	$f16,$f16,$f18,$f24
    # Line 304
    sdc1	$f24,72($sp)
    # Line 293
    madd.s	$f15,$f15,$f19,$f27
    # Line 306
    nmsub.s	$f1,$f1,$f12,$f24
    # Line 296
    lwc1	$f24,60($a1)
    # Line 292
    nmsub.s	$f31,$f31,$f22,$f8
    # Line 296
    madd.s	$f29,$f29,$f24,$f2
    # Line 303
    sdc1	$f14,24($sp)
    # Line 306
    mul.s	$f14,$f10,$f14
    # Line 293
    sdc1	$f15,96($sp)
    # Line 306
    nmsub.s	$f14,$f14,$f18,$f17
    # Line 269
    lwc1	$f15,48($a1)
    # Line 294
    mul.s	$f19,$f0,$f19
    # Line 302
    sdc1	$f17,56($sp)
    # Line 306
    nmsub.s	$f14,$f14,$f12,$f25
    # Line 269
    sdc1	$f15,40($sp)
    # Line 306
    mul.s	$f15,$f1,$f15
    # Line 346
    ldc1	$f10,64($sp)
    # Line 306
    madd.s	$f15,$f15,$f3,$f4
    # Line 348
    ldc1	$f12,72($sp)
    # Line 294
    msub.s	$f19,$f19,$f22,$f9
    ldc1	$f22,112($sp)
    # Line 306
    madd.s	$f15,$f15,$f14,$f5
    # Line 298
    madd.s	$f23,$f23,$f24,$f0
    ldc1	$f24,120($sp)
    # Line 306
    sdc1	$f1,0($sp)
    madd.s	$f15,$f15,$f16,$f6
    # Line 294
    nmsub.s	$f19,$f19,$f20,$f7
    ldc1	$f20,104($sp)
    # Line 291
    mul.s	$f27,$f7,$f27
    # Line 337
    lwc1	$f7,_lit_3f800000
    # Line 306
    sdc1	$f14,16($sp)
    sdc1	$f16,32($sp)
    sdc1	$f3,8($sp)
    # Line 347
    ldc1	$f11,96($sp)
    # Line 306
    c.eq.s $f15,$f13
    # Line 291
    msub.s	$f27,$f27,$f0,$f8
    # Line 337
    ldc1	$f3,32($sp)
    # Line 346
    ldc1	$f14,24($sp)
    # Line 291
    madd.s	$f27,$f27,$f2,$f9
    # Line 306
    bc1t .L0d9f0cf0
    sdc1	$f15,48($sp)
    # Line 337
    ldc1	$f8,48($sp)
    div.s	$f7,$f7,$f8
    # Line 345
    ldc1	$f9,88($sp)
    # Line 337
    mul.s	$f3,$f3,$f7
    # Line 349
    mul.s	$f16,$f7,$f29
    # Line 345
    mul.s	$f9,$f7,$f9
    # Line 350
    mul.s	$f17,$f7,$f31
    # Line 345
    swc1	$f9,24($a0)
    # Line 347
    mul.s	$f11,$f7,$f11
    # Line 339
    ldc1	$f9,16($sp)
    # Line 351
    mul.s	$f18,$f7,$f21
    # Line 348
    ldc1	$f21,56($sp)
    # Line 352
    mul.s	$f27,$f7,$f27
    # Line 347
    swc1	$f11,28($a0)
    # Line 341
    ldc1	$f11,8($sp)
    # Line 339
    mul.s	$f9,$f9,$f7
    # Line 348
    ldc1	$f15,80($sp)
    mul.s	$f13,$f5,$f21
    # Line 346
    ldc1	$f8,40($sp)
    # Line 348
    msub.s	$f13,$f13,$f12,$f6
    # Line 341
    mul.s	$f11,$f11,$f7
    # Line 348
    madd.s	$f13,$f13,$f15,$f4
    # Line 346
    mul.s	$f15,$f8,$f15
    msub.s	$f15,$f15,$f14,$f5
    # Line 344
    mul.s	$f14,$f4,$f14
    # Line 352
    swc1	$f27,60($a0)
    # Line 344
    msub.s	$f14,$f14,$f25,$f6
    # Line 351
    swc1	$f18,56($a0)
    # Line 346
    nmsub.s	$f15,$f15,$f10,$f6
    # Line 350
    swc1	$f17,44($a0)
    # Line 344
    madd.s	$f14,$f14,$f21,$f8
    # Line 349
    swc1	$f16,40($a0)
    # Line 338
    mul.s	$f8,$f8,$f12
    # Line 337
    swc1	$f3,0($a0)
    # Line 338
    msub.s	$f8,$f8,$f10,$f4
    # Line 341
    swc1	$f11,32($a0)
    # Line 342
    mul.s	$f12,$f7,$f19
    # Line 339
    swc1	$f9,16($a0)
    # Line 338
    nmsub.s	$f8,$f8,$f25,$f5
    # Line 342
    swc1	$f12,12($a0)
    # Line 348
    mul.s	$f13,$f7,$f13
    swc1	$f13,52($a0)
    # Line 340
    mul.s	$f10,$f7,$f23
    # Line 343
    ldc1	$f13,0($sp)
    # Line 340
    swc1	$f10,8($a0)
    # Line 346
    mul.s	$f15,$f7,$f15
    # Line 344
    mul.s	$f14,$f7,$f14
    # Line 346
    swc1	$f15,36($a0)
    # Line 344
    swc1	$f14,20($a0)
    # Line 343
    mul.s	$f13,$f13,$f7
    # Line 338
    mul.s	$f8,$f7,$f8
    # Line 343
    swc1	$f13,48($a0)
    # Line 354
    addiu	$sp,$sp,128
    jr	$ra
    # Line 338
    swc1	$f8,4($a0)
.end __glInvertTransposeMatrix

# Function: __glFloorLog2
# Declared: Line 361 (Source lines: 362-367)
# Address: 0x0d9f0f70 - 0x0d9f0fb0 (Size: 64 bytes, Frame: 0)
.globl __glFloorLog2
.ent __glFloorLog2
__glFloorLog2:
    # Line 362
    srl	$at,$a0,0x1
    li	$a3,1
    beqz	$at,.L0d9f0fa8
    # Line 367
    li	$v0,0x0
.L0d9f0f80:
    # Line 366
    addiu	$a3,$a3,1
    srlv	$v0,$a0,$a3
    beqz	$v0,.L0d9f0fa0
    nop
    addiu	$a3,$a3,1
    srlv	$v1,$a0,$a3
    bnez	$v1,.L0d9f0f80
    nop
.L0d9f0fa0:
    # Line 367
    jr	$ra
    addiu	$v0,$a3,-1
.L0d9f0fa8:
    jr	$ra
    nop
.end __glFloorLog2

.rdata
_lit_3f800000:
    .word 0x3f800000

