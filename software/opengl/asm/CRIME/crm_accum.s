# Source: ../CRIME/crm_accum.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_accum.c
# Total Functions: 17

.text

# Function: InitVICE
# Declared: Line 76 (Source lines: 77-124)
# Address: 0x0d938e70 - 0x0d938fec (Size: 380 bytes, Frame: 240)
.ent InitVICE
InitVICE:
    # Line 77
    addiu	$sp,$sp,-112
    # Line 88
    lw	$t9,31500($a0)
    sd	$s0,88($sp)
    lw	$t9,8($t9)
    sd	$ra,104($sp)
    # Line 77
    sd	$s1,96($sp)
    move	$s1,$a0
    # Line 88
    li	$a0,112
    jalr	$t9
    sd	$s2,80($sp)
    move	$s0,$v0
    lui	$s2,0x1
    beqz	$v0,.L0d938f9c
    addu	$s2,$s1,$s2
    # Line 97
    sdl	$zero,0($v0)
    sdr	$zero,7($v0)
    sdl	$zero,8($v0)
    sdr	$zero,15($v0)
    sdl	$zero,16($v0)
    sdr	$zero,23($v0)
    sdl	$zero,24($v0)
    sdr	$zero,31($v0)
    sdl	$zero,32($v0)
    sdr	$zero,39($v0)
    sdl	$zero,40($v0)
    sdr	$zero,47($v0)
    sdl	$zero,48($v0)
    sdr	$zero,55($v0)
    sdl	$zero,56($v0)
    sdr	$zero,63($v0)
    sdl	$zero,64($v0)
    sdr	$zero,71($v0)
    sdl	$zero,72($v0)
    sdr	$zero,79($v0)
    sdl	$zero,80($v0)
    sdr	$zero,87($v0)
    sdl	$zero,88($v0)
    sdr	$zero,95($v0)
    sdl	$zero,96($v0)
    sdr	$zero,103($v0)
    sdl	$zero,104($v0)
    # Line 101
    # lw $t9, -22976($gp) # &vice_open_and_setetc
    la	$a0,sub_0da40000
    # Line 97
    sdr	$zero,111($v0)
    # Line 99
    sw	$v0,-32520($s2)
    # Line 101
    jal	vice_open_and_setetc
    addiu	$a0,$a0,6192
    bltz	$v0,.L0d938fbc
    sw	$v0,0($s0)
    # Line 115
    # lw $t9, -22972($gp) # &strcat
    la	$a1,sub_0da40000
    ld	$s2,80($sp)
    addiu	$a0,$sp,0
    # Line 114
    sb	$zero,0($sp)
    # Line 115
    jal	strcat
    addiu	$a1,$a1,6208
    # Line 116
    # lw $t9, -22972($gp) # &strcat
    la	$a1,sub_0da40000
    addiu	$a0,$sp,0
    jal	strcat
    addiu	$a1,$a1,6232
    # Line 120
    # lw $t9, -22968($gp) # &vice_load_msp_code
    move	$a3,$zero
    addiu	$a2,$s0,48
    addiu	$a1,$sp,0
    jal	vice_load_msp_code
    lw	$a0,0($s0)
    # Line 124
    ld	$ra,104($sp)
    # Line 122
    li	$a2,1
    sb	$a2,4($s0)
    # Line 124
    move	$v0,$s0
    ld	$s0,88($sp)
    ld	$s1,96($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d938f9c:
    ld	$s0,88($sp)
    ld	$ra,104($sp)
    ld	$s1,96($sp)
    # Line 94
    move	$v0,$zero
    # Line 93
    sw	$zero,-32520($s2)
    # Line 124
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d938fbc:
    # Line 105
    lw	$t9,31500($s1)
    lw	$t9,20($t9)
    jalr	$t9
    move	$a0,$s0
    # Line 124
    ld	$s0,88($sp)
    ld	$ra,104($sp)
    ld	$s1,96($sp)
    # Line 107
    move	$v0,$zero
    # Line 106
    sw	$zero,-32520($s2)
    # Line 124
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end InitVICE

# Function: AccumMakeCurrent
# Declared: Line 132 (Source lines: 134-148)
# Address: 0x0d938ff0 - 0x0d93907c (Size: 140 bytes, Frame: 48)
.ent AccumMakeCurrent
AccumMakeCurrent:
    # Line 134
    addiu	$sp,$sp,-48
    lui	$at,0x11
    sd	$a2,16($sp)
    addiu	$at,$at,32156
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 137
    # lw $t9, -26716($gp) # &__glMakeCurrentBuffer
    # Line 134
    sd	$a1,8($sp)
    sd	$s3,24($sp)
    # Line 137
    nop
    # Line 134
    sd	$ra,0($sp)
    # Line 137
    jal	__glMakeCurrentBuffer
    # Line 134
    move	$s3,$a0
    # Line 145
    ld	$v0,16($sp)
    # Line 139
    lw	$a3,68($s3)
    la	$a2,sub_0d940000
    # Line 145
    ld	$a1,8($sp)
    # Line 139
    addiu	$a2,$a2,-28240
    sw	$a2,16($a3)
    # Line 145
    lw	$a1,0($a1)
    ld	$ra,0($sp)
    lui	$v1,0x1
    # Line 148
    ld	$gp,32($sp)
    # Line 145
    addu	$v0,$v0,$v1
    beqz	$a1,.L0d93906c
    sw	$a1,-32520($v0)
    # Line 147
    lw	$a3,40($a1)
    sw	$a3,16($s3)
    # Line 148
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d93906c:
    ld	$s3,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end AccumMakeCurrent

# Function: AccumLoseCurrent
# Declared: Line 155 (Source lines: 156-173)
# Address: 0x0d939080 - 0x0d9390ec (Size: 108 bytes, Frame: 32)
.ent AccumLoseCurrent
AccumLoseCurrent:
    # Line 157
    lw	$v1,68($a0)
    # Line 156
    addiu	$sp,$sp,-32
    # Line 157
    lw	$v0,0($a0)
    # Line 156
    sd	$a1,8($sp)
    lui	$at,0x11
    # Line 157
    sd	$v1,0($sp)
    # Line 156
    addiu	$at,$at,32012
    sd	$gp,16($sp)
    # Line 157
    bnez	$v0,.L0d9390b4
    # Line 156
    addu	$gp,$t9,$at
    # Line 173
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9390b4:
    # Line 165
    # lw $t9, -26712($gp) # &__glLoseCurrentBuffer
    sd	$ra,24($sp)
    jal	__glLoseCurrentBuffer
    ld	$a1,8($sp)
    # Line 173
    ld	$gp,16($sp)
    # Line 172
    ld	$v1,8($sp)
    ld	$ra,24($sp)
    li	$v0,0x80f8
    addu	$v0,$v0,$v1
    ld	$v1,0($sp)
    lw	$v0,0($v0)
    # Line 173
    addiu	$sp,$sp,32
    jr	$ra
    # Line 172
    sw	$v0,0($v1)
.end AccumLoseCurrent

# Function: AccumFreeTiles
# Declared: Line 178 (Source lines: 179-215)
# Address: 0x0d9390f0 - 0x0d9391b0 (Size: 192 bytes, Frame: 16)
.ent AccumFreeTiles
AccumFreeTiles:
    # Line 179
    lw	$a2,24($a0)
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    move	$s0,$a0
    beqz	$a2,.L0d939114
    sd	$ra,8($sp)
    # Line 191
    # lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    move	$a0,$a2
.L0d939114:
    lw	$a0,28($s0)
    beqz	$a0,.L0d939128
    # Line 193
    nop	# was lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    nop
.L0d939128:
    lw	$a0,16($s0)
    beqz	$a0,.L0d93913c
    # Line 196
    nop	# was lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    nop
.L0d93913c:
    lw	$a0,20($s0)
    beqz	$a0,.L0d939150
    # Line 198
    nop	# was lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    nop
.L0d939150:
    lw	$a0,8($s0)
    beqz	$a0,.L0d939164
    # Line 201
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
.L0d939164:
    lw	$a0,12($s0)
    beqz	$a0,.L0d939178
    # Line 203
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
.L0d939178:
    # Line 214
    sw	$zero,44($s0)
    # Line 213
    sw	$zero,40($s0)
    # Line 212
    sw	$zero,36($s0)
    # Line 211
    sw	$zero,32($s0)
    # Line 210
    sw	$zero,12($s0)
    # Line 209
    sw	$zero,8($s0)
    # Line 208
    sw	$zero,20($s0)
    # Line 207
    sw	$zero,16($s0)
    ld	$ra,8($sp)
    # Line 206
    sw	$zero,28($s0)
    # Line 205
    sw	$zero,24($s0)
    # Line 215
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end AccumFreeTiles

# Function: AccumFree
# Declared: Line 217 (Source lines: 218-231)
# Address: 0x0d9391b0 - 0x0d939230 (Size: 128 bytes, Frame: 48)
.ent AccumFree
AccumFree:
    # Line 218
    addiu	$sp,$sp,-48
    # Line 219
    lw	$v0,0($a0)
    sd	$v0,16($sp)
    # Line 218
    sd	$a1,0($sp)
    lui	$at,0x11
    sd	$a0,8($sp)
    addiu	$at,$at,31708
    sd	$gp,24($sp)
    # Line 219
    bnez	$v0,.L0d9391e4
    # Line 218
    addu	$gp,$t9,$at
    # Line 231
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9391e4:
    # Line 224
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-28432
    sd	$ra,32($sp)
    bal __glBeginLLoop
    ld	$a0,16($sp)
    # Line 226
    # lw $t9, -22952($gp) # &vice_close
    ld	$a0,16($sp)
    jal	vice_close
    lw	$a0,0($a0)
    # Line 228
    ld	$t9,0($sp)
    lw	$t9,20($t9)
    jalr	$t9
    ld	$a0,16($sp)
    ld	$ra,32($sp)
    # Line 230
    ld	$at,8($sp)
    # Line 231
    ld	$gp,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 230
    sw	$zero,0($at)
.end AccumFree

# Function: AccumAlloc
# Declared: Line 234 (Source lines: 235-343)
# Address: 0x0d939230 - 0x0d939438 (Size: 520 bytes, Frame: 48)
.ent AccumAlloc
AccumAlloc:
    # Line 235
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$s0,40($sp)
    # Line 237
    li	$s0,0x80f8
    # Line 251
    # lw $t9, -22948($gp) # &dmParamsCreate
    # Line 237
    addu	$s0,$s0,$a0
    lw	$s0,0($s0)
    # Line 235
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$ra,24($sp)
    # Line 251
    jal	dmParamsCreate
    addiu	$a0,$s0,8
    # Line 252
    # lw $t9, -22948($gp) # &dmParamsCreate
    jal	dmParamsCreate
    addiu	$a0,$s0,12
    # Line 254
    lw	$a7,3704($s1)
    lw	$a6,3700($s1)
    mult	$a6,$a7
    mflo	$a5
    li	$a2,0xffff
    sll	$a5,$a5,0x3
    addu	$a5,$a2,$a5
    # Line 257
    # lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    # Line 254
    addu	$a2,$a5,$a2
    slt	$a3,$a5,$zero
    # Line 257
    li	$a4,1
    # Line 254
    movz	$a2,$a5,$a3
    # Line 257
    li	$a1,1
    lw	$a0,8($s0)
    # Line 254
    sra	$a2,$a2,0x10
    # Line 257
    move	$a3,$zero
    # Line 254
    sd	$a2,16($sp)
    # Line 257
    jal	dmBufferSetPoolDefaults
    sll	$a2,$a2,0x10
    # Line 263
    beqz	$v0,.L0d9392d8
    # Line 267
    nop	# was lw $t9, -22940($gp) # &vice_dmbuf_requirements
.L0d9392c0:
    # Line 343
    ld	$ra,24($sp)
.L0d9392c4:
    move	$v0,$zero
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9392d8:
    # Line 267
    jal	vice_dmbuf_requirements
    lw	$a0,8($s0)
    # Line 268
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,16
    jal	dmBufferCreatePool
    lw	$a0,8($s0)
    # Line 270
    bnez	$v0,.L0d9392c0
    # Line 278
    nop	# was lw $t9, -22932($gp) # &dmBufferAllocate
    lw	$a0,16($s0)
    ld	$t0,16($sp)
    addiu	$a1,$s0,24
    jal	dmBufferAllocate
    # Line 274
    sw	$t0,32($s0)
    # Line 278
    beqz	$v0,.L0d939334
    # Line 284
    nop	# was lw $t9, -22928($gp) # &dmBufferMapData
    # Line 280
    la	$a1,sub_0da40000
    # lw $t9, -22924($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,6248
    jal	fprintf
    addiu	$a0,$a0,32
    b	.L0d9392c4
    # Line 343
    ld	$ra,24($sp)
.L0d939334:
    # Line 284
    jalr	$t9
    lw	$a0,24($s0)
    sw	$v0,40($s0)
    # Line 289
    lw	$t2,3704($s1)
    lw	$t1,3700($s1)
    mult	$t1,$t2
    mflo	$t0
    li	$a7,0xffff
    sll	$t0,$t0,0x2
    li	$a5,0xffff
    addu	$a7,$a7,$t0
    addu	$a5,$a7,$a5
    slt	$a6,$a7,$zero
    movz	$a5,$a7,$a6
    sra	$a5,$a5,0x10
    # Line 303
    # lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    # Line 298
    li	$a7,21
    slti	$a6,$a5,21
    # Line 303
    li	$a4,1
    lw	$a0,12($s0)
    # Line 298
    movz	$a5,$a7,$a6
    # Line 303
    move	$a3,$zero
    # Line 298
    sw	$a5,36($s0)
    # Line 303
    sll	$a2,$a5,0x10
    li	$a1,1
    jal	dmBufferSetPoolDefaults
    sd	$a2,0($sp)
    # Line 309
    bnez	$v0,.L0d9392c4
    # Line 343
    ld	$ra,24($sp)
    # Line 312
    # lw $t9, -22940($gp) # &vice_dmbuf_requirements
    jal	vice_dmbuf_requirements
    lw	$a0,12($s0)
    # Line 313
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,20
    jal	dmBufferCreatePool
    lw	$a0,12($s0)
    # Line 314
    bnez	$v0,.L0d9392c4
    # Line 343
    ld	$ra,24($sp)
    # Line 318
    # lw $t9, -22932($gp) # &dmBufferAllocate
    addiu	$a1,$s0,28
    jal	dmBufferAllocate
    lw	$a0,20($s0)
    # Line 319
    bnez	$v0,.L0d9392c4
    # Line 343
    ld	$ra,24($sp)
    # Line 322
    # lw $t9, -22928($gp) # &dmBufferMapData
    jal	dmBufferMapData
    lw	$a0,28($s0)
    sw	$v0,44($s0)
    # Line 324
    lw	$at,40($s0)
    ld	$s0,8($sp)
    # Line 325
    ld	$ra,0($sp)
    sw	$ra,20($s0)
    # Line 343
    ld	$ra,24($sp)
    # Line 324
    sw	$at,16($s0)
    # Line 326
    lw	$t9,3700($s1)
    sw	$t9,4($s0)
    # Line 327
    lw	$t8,3700($s1)
    sw	$t8,28($s0)
    # Line 328
    lw	$t3,3704($s1)
    # Line 343
    ld	$s1,32($sp)
    # Line 332
    li	$v0,1
    # Line 328
    sw	$t3,8($s0)
    # Line 343
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end AccumAlloc

# Function: AccumResize
# Declared: Line 347 (Source lines: 348-445)
# Address: 0x0d939440 - 0x0d9396a4 (Size: 612 bytes, Frame: 224)
.ent AccumResize
AccumResize:
    # Line 351
    mult	$a1,$a2
    # Line 348
    addiu	$sp,$sp,-96
    # Line 349
    lw	$t8,0($a0)
    sd	$t8,56($sp)
    # Line 351
    li	$a6,0xffff
    # Line 348
    sd	$s0,24($sp)
    # Line 351
    li	$s0,0x80f8
    mflo	$a5
    # Line 348
    sd	$a2,40($sp)
    # Line 351
    addu	$s0,$s0,$t8
    sll	$a4,$a5,0x3
    move	$v1,$a6
    lw	$s0,0($s0)
    addu	$a4,$a4,$a6
    # Line 348
    sd	$a1,32($sp)
    # Line 351
    addu	$v1,$a4,$v1
    slt	$a3,$a4,$zero
    lw	$at,32($s0)
    movz	$v1,$a4,$a3
    # Line 348
    sd	$a0,48($sp)
    # Line 351
    sra	$v1,$v1,0x10
    sd	$ra,72($sp)
    # Line 348
    lui	$v0,0x11
    # Line 351
    sltu	$at,$at,$v1
    sd	$gp,64($sp)
    # Line 348
    addiu	$v0,$v0,31052
    addu	$gp,$t9,$v0
    # Line 351
    bnez	$at,.L0d9395ec
    sd	$v1,8($sp)
.L0d9394b4:
    # Line 392
    sll	$v0,$a5,0x2
    li	$ra,0xffff
    addu	$v0,$a6,$v0
    addu	$ra,$v0,$ra
    slt	$at,$v0,$zero
    movz	$ra,$v0,$at
    sra	$ra,$ra,0x10
    lw	$t9,36($s0)
    li	$v0,21
    slti	$at,$ra,21
    movz	$ra,$v0,$at
    sltu	$t9,$t9,$ra
    beqz	$t9,.L0d9395b4
    sd	$ra,16($sp)
    # Line 406
    # lw $t9, -22964($gp) # &dmBufferFree
    lw	$a0,28($s0)
    ld	$v1,16($sp)
    jal	dmBufferFree
    # Line 404
    sw	$v1,36($s0)
    # Line 407
    # lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    lw	$a0,20($s0)
    # Line 409
    # lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    li	$a4,1
    move	$a3,$zero
    ld	$a2,16($sp)
    li	$a1,1
    lw	$a0,12($s0)
    jal	dmBufferSetPoolDefaults
    sll	$a2,$a2,0x10
    # Line 414
    bnez	$v0,.L0d939574
    # Line 444
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 418
    # lw $t9, -22940($gp) # &vice_dmbuf_requirements
    jal	vice_dmbuf_requirements
    lw	$a0,12($s0)
    # Line 419
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,20
    jal	dmBufferCreatePool
    lw	$a0,12($s0)
    # Line 420
    bnez	$v0,.L0d939574
    # Line 444
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 424
    # lw $t9, -22932($gp) # &dmBufferAllocate
    addiu	$a1,$s0,28
    jal	dmBufferAllocate
    lw	$a0,20($s0)
    # Line 425
    beqz	$v0,.L0d9395a8
    # Line 428
    nop	# was lw $t9, -22928($gp) # &dmBufferMapData
    # Line 444
    # lw $t9, -32744($gp) # &sub_0d940000
.L0d939574:
    ld	$s0,24($sp)
    addiu	$t9,$t9,-17408
    ld	$a0,56($sp)
    bal __glcrmim_Accum
    ld	$a1,48($sp)
    # Line 445
    ld	$a0,56($sp)
    lw	$t9,31416($a0)
    ld	$a2,40($sp)
    ld	$a1,32($sp)
    jal	sub_0d940000
    addiu	$a0,$a0,31360
    b	.L0d9395e0
    ld	$ra,72($sp)
.L0d9395a8:
    # Line 428
    jalr	$t9
    lw	$a0,28($s0)
    sw	$v0,44($s0)
.L0d9395b4:
    # Line 435
    ld	$gp,64($sp)
    ld	$s0,24($sp)
    # Line 432
    ld	$a1,32($sp)
    # Line 433
    ld	$a3,40($sp)
    ld	$a2,48($sp)
    ld	$ra,72($sp)
    sw	$a3,8($a2)
    # Line 432
    sw	$a1,28($a2)
    # Line 435
    addiu	$sp,$sp,96
    jr	$ra
    # Line 431
    sw	$a1,4($a2)
.L0d9395e0:
    # Line 435
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9395ec:
    sd	$a5,80($sp)
    # Line 367
    # lw $t9, -22964($gp) # &dmBufferFree
    lw	$a0,24($s0)
    ld	$a4,8($sp)
    jal	dmBufferFree
    # Line 365
    sw	$a4,32($s0)
    # Line 368
    # lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    lw	$a0,16($s0)
    # Line 370
    ld	$a2,8($sp)
    # lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    li	$a4,1
    move	$a3,$zero
    lw	$a0,8($s0)
    sll	$a2,$a2,0x10
    li	$a1,1
    jal	dmBufferSetPoolDefaults
    sd	$a2,0($sp)
    # Line 375
    bnez	$v0,.L0d939574
    # Line 444
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 379
    # lw $t9, -22940($gp) # &vice_dmbuf_requirements
    jal	vice_dmbuf_requirements
    lw	$a0,8($s0)
    # Line 380
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,16
    jal	dmBufferCreatePool
    lw	$a0,8($s0)
    # Line 381
    bnez	$v0,.L0d939574
    # Line 444
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 385
    # lw $t9, -22932($gp) # &dmBufferAllocate
    addiu	$a1,$s0,24
    jal	dmBufferAllocate
    lw	$a0,16($s0)
    # Line 386
    bnez	$v0,.L0d939574
    # Line 444
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 389
    # lw $t9, -22928($gp) # &dmBufferMapData
    jal	dmBufferMapData
    lw	$a0,24($s0)
    ld	$a5,80($sp)
    sw	$v0,40($s0)
    # Line 392
    ld	$a3,48($sp)
    ld	$a4,0($sp)
    sw	$a4,20($a3)
    li	$a6,0xffff
    b	.L0d9394b4
    # Line 391
    sw	$v0,16($a3)
.end AccumResize

# Function: AccumulateLoad
# Declared: Line 455 (Source lines: 456-745)
# Address: 0x0d9396b0 - 0x0d939a70 (Size: 960 bytes, Frame: 128)
.ent AccumulateLoad
AccumulateLoad:
    # Line 456
    addiu	$sp,$sp,-640
    sd	$s3,528($sp)
    # Line 457
    lw	$t8,0($a0)
    # Line 456
    sd	$s8,520($sp)
    # Line 460
    lw	$a6,29700($t8)
    lw	$s8,3660($t8)
    # Line 456
    sd	$s0,512($sp)
    # Line 459
    li	$s0,0x80f8
    # Line 462
    lw	$s3,29708($t8)
    # Line 459
    addu	$s0,$s0,$t8
    lw	$s0,0($s0)
    # Line 462
    subu	$s3,$s3,$s8
    # Line 460
    subu	$s8,$a6,$s8
    # Line 631
    subu	$s3,$s3,$s8
    lw	$a7,36($s0)
    sll	$a5,$s3,0x2
    sll	$a7,$a7,0x10
    divu	$zero,$a7,$a5
    # Line 457
    sd	$t8,584($sp)
    # Line 456
    sd	$s2,544($sp)
    # Line 461
    lw	$s2,29704($t8)
    # Line 463
    lw	$s8,29712($t8)
    # Line 461
    lw	$t8,3664($t8)
    subu	$s2,$s2,$t8
    # Line 463
    subu	$s8,$s8,$t8
    # Line 631
    subu	$s8,$s8,$s2
    mflo	$a4
    addu	$a0,$s8,$a4
    mtc1	$a4,$f6
    addiu	$a0,$a0,-1
    mtc1	$a0,$f5
    cvt.d.w	$f6,$f6
    cvt.d.w	$f5,$f5
    div.d	$f5,$f5,$f6
    # Line 456
    lui	$v1,0x11
    addiu	$v1,$v1,30428
    sd	$gp,536($sp)
    addu	$gp,$t9,$v1
    # Line 631
    trunc.w.d	$f5,$f5
    # Line 474
    la	$v0,accShiftFactor
    # Line 631
    mfc1	$at,$f5
    # Line 474
    lwc1	$f4,0($v0)
    # Line 631
    slti	$at,$at,2
    teq	$a5,$zero,0x7
    # Line 456
    move	$a1,$a2
    sd	$s1,592($sp)
    # Line 474
    mul.s	$f4,$f4,$f13
    # Line 631
    bnez	$at,.L0d939790
    teq	$a4,$zero,0x7
    # Line 642
    lui	$t8,0xffff
    addu	$t8,$a7,$t8
    divu	$zero,$t8,$a5
    teq	$a5,$zero,0x7
    mflo	$a4
    nop
    nop
.L0d939790:
    # Line 665
    lw	$v0,-22420($gp)
    # Line 651
    mtc1	$a6,$f6
    cvt.s.w	$f6,$f6
    # Line 659
    ld	$at,584($sp)
    # Line 652
    sw	$s3,168($sp)
    # Line 651
    swc1	$f6,188($sp)
    # Line 653
    lw	$a7,44($s0)
    sw	$a7,88($sp)
    # Line 654
    lw	$a3,44($s0)
    # Line 655
    li	$a2,6408
    sw	$a2,80($sp)
    # Line 656
    li	$a0,4
    sw	$a0,100($sp)
    # Line 657
    sw	$a5,96($sp)
    # Line 654
    sw	$a3,92($sp)
    # Line 659
    lw	$t9,32292($at)
    li	$v1,-241
    # Line 646
    move	$s1,$a4
    # Line 659
    and	$t9,$t9,$v1
    # Line 664
    sw	$zero,32344($at)
    # Line 660
    li	$v1,-769
    # Line 659
    ori	$t9,$t9,0x20
    # Line 646
    slt	$a2,$s8,$a4
    # Line 663
    sb	$zero,32206($at)
    # Line 660
    and	$t9,$t9,$v1
    # Line 658
    sw	$zero,32216($at)
    # Line 661
    li	$a0,-13
    # Line 660
    ori	$t9,$t9,0x200
    # Line 646
    movn	$s1,$s8,$a2
    # Line 665
    lw	$v1,11764($at)
    # Line 661
    and	$t9,$t9,$a0
    # Line 665
    sw	$v1,32296($at)
    # Line 662
    li	$v1,-3
    # Line 661
    ori	$t9,$t9,0x8
    # Line 662
    and	$t9,$t9,$v1
    # Line 665
    beqz	$v0,.L0d939848
    # Line 662
    sw	$t9,32292($at)
    ld	$s1,592($sp)
    # Line 745
    ld	$gp,536($sp)
    ld	$s0,512($sp)
    ld	$s2,544($sp)
    # Line 677
    move	$v0,$zero
    # Line 745
    ld	$s3,528($sp)
    ld	$s8,520($sp)
    jr	$ra
    addiu	$sp,$sp,640
.L0d939848:
    # Line 680
    addu	$t0,$s8,$a4
    mtc1	$a4,$f8
    addiu	$t0,$t0,-1
    mtc1	$t0,$f7
    cvt.d.w	$f8,$f8
    cvt.d.w	$f7,$f7
    div.d	$f7,$f7,$f8
    trunc.w.d	$f7,$f7
    mfc1	$a2,$f7
    blez	$a2,.L0d939a4c
    teq	$a4,$zero,0x7
    addiu	$t2,$s0,48
    trunc.w.s	$f9,$f4
    cvt.s.w	$f8,$f9
    sd	$s5,624($sp)
    sd	$ra,608($sp)
    sub.s	$f8,$f4,$f8
    ldc1	$f10,_lit8_40e0000000000000
    sd	$t2,576($sp)
    cvt.d.s	$f8,$f8
    sd	$a1,504($sp)
    sd	$s4,616($sp)
    mul.d	$f8,$f8,$f10
    addiu	$s4,$a2,1
    sd	$s4,552($sp)
    sd	$s6,600($sp)
    trunc.w.d	$f8,$f8
    sd	$s7,632($sp)
    mfc1	$t3,$f9
    lui	$s7,0x80
    sd	$t3,560($sp)
    mfc1	$t1,$f8
    li	$s6,0x8000
    li	$s4,1
    sd	$t1,568($sp)
    nop
    nop
    nop
.L0d9398e0:
    # Line 685
    ld	$a0,584($sp)
    lw	$t9,3704($a0)
    lw	$t8,3664($a0)
    subu	$t9,$t9,$s2
    addu	$t8,$t8,$t9
    addiu	$t8,$t8,-1
    mtc1	$t8,$f9
    # Line 690
    # lw $t9, -31588($gp) # &crmReadPixelsXfer
    # Line 685
    cvt.s.w	$f9,$f9
    # Line 687
    sw	$s1,172($sp)
    # Line 690
    addiu	$a1,$sp,0
    jal	crmReadPixelsXfer
    # Line 685
    swc1	$f9,192($sp)
    # Line 697
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    lw	$a4,36($s0)
    move	$a3,$zero
    lw	$a2,28($s0)
    move	$a1,$zero
    jal	vice_dmbuf_settlb
    lw	$a0,0($s0)
    mult	$s3,$s2
    mflo	$s5
    li	$t8,0xffff
    sll	$s5,$s5,0x3
    addu	$t8,$s5,$t8
    slt	$t9,$s5,$zero
    lw	$a4,32($s0)
    movz	$t8,$s5,$t9
    # Line 701
    li	$at,42
    # Line 697
    sra	$t8,$t8,0x10
    # Line 701
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a3,$t8
    # Line 697
    subu	$a4,$a4,$t8
    # Line 701
    lw	$a2,24($s0)
    # Line 697
    sll	$t8,$t8,0x10
    sltiu	$ra,$a4,43
    # Line 701
    lw	$a1,36($s0)
    movz	$a4,$at,$ra
    lw	$a0,0($s0)
    jal	vice_dmbuf_settlb
    # Line 697
    subu	$s5,$s5,$t8
    # Line 710
    lw	$a0,0($s0)
    # lw $t9, -22916($gp) # &vice_etc_dramp
    # Line 708
    sw	$s6,104($s0)
    # Line 709
    li	$ra,28
    sw	$ra,108($s0)
    # Line 710
    li	$t8,1
    jal	vice_etc_dramp
    # Line 707
    sw	$t8,64($s0)
    # Line 711
    lw	$v1,36($s0)
    # Line 714
    sw	$zero,12($v0)
    # Line 712
    sw	$s7,4($v0)
    # Line 715
    ld	$a1,504($sp)
    # Line 713
    mult	$s3,$s1
    # Line 717
    ld	$a2,568($sp)
    # Line 719
    ld	$a3,560($sp)
    sw	$a3,24($v0)
    # Line 710
    move	$a0,$v0
    # Line 717
    sw	$a2,20($v0)
    # Line 725
    li	$a2,3
    # lw $t9, -22912($gp) # &cacheflush
    # Line 711
    sll	$v1,$v1,0x10
    # Line 715
    sw	$a1,16($v0)
    # Line 711
    addu	$v1,$s5,$v1
    # Line 713
    mflo	$at
    # Line 711
    addu	$v1,$s7,$v1
    sw	$v1,0($v0)
    # Line 713
    sll	$at,$at,0x2
    # Line 725
    li	$a1,36
    jal	cacheflush
    # Line 713
    sw	$at,8($v0)
    # Line 727
    # lw $t9, -22908($gp) # &vice_put
    ld	$a1,576($sp)
    jal	vice_put
    lw	$a0,0($s0)
    # Line 740
    mult	$s4,$s1
    mflo	$a7
    # Line 680
    addiu	$s4,$s4,1
    ld	$a5,552($sp)
    # Line 740
    subu	$a7,$s8,$a7
    # Line 741
    move	$a4,$s1
    # Line 740
    slt	$a6,$s1,$a7
    addu	$s2,$s2,$s1
    movz	$a4,$a7,$a6
    # Line 680
    bne	$s4,$a5,.L0d9398e0
    # Line 741
    move	$s1,$a4
    ld	$s6,600($sp)
    ld	$ra,608($sp)
    ld	$s4,616($sp)
    ld	$s5,624($sp)
    ld	$s7,632($sp)
.L0d939a4c:
    ld	$s1,592($sp)
    # Line 745
    ld	$gp,536($sp)
    ld	$s0,512($sp)
    ld	$s2,544($sp)
    li	$v0,1
    ld	$s3,528($sp)
    ld	$s8,520($sp)
    jr	$ra
    addiu	$sp,$sp,640
.end AccumulateLoad

# Function: AddMultiply
# Declared: Line 749 (Source lines: 750-855)
# Address: 0x0d939a70 - 0x0d939d54 (Size: 740 bytes, Frame: 128)
.ent AddMultiply
AddMultiply:
    # Line 750
    addiu	$sp,$sp,-128
    # Line 751
    lw	$at,0($a0)
    # Line 750
    sd	$s3,24($sp)
    # Line 756
    lw	$s3,29708($at)
    # Line 754
    lw	$v0,3660($at)
    lw	$t8,29700($at)
    # Line 750
    sd	$s8,8($sp)
    # Line 777
    lui	$s8,0x3f
    # Line 754
    subu	$t8,$t8,$v0
    # Line 756
    subu	$s3,$s3,$v0
    # Line 777
    mtc1	$s8,$f1
    subu	$s3,$s3,$t8
    sll	$a6,$s3,0x3
    mtc1	$a6,$f4
    cvt.d.w	$f1,$f1
    cvt.d.w	$f4,$f4
    div.d	$f1,$f1,$f4
    # Line 750
    sd	$s2,32($sp)
    # Line 755
    lw	$s2,29704($at)
    # Line 757
    lw	$s8,29712($at)
    # Line 755
    lw	$t8,3664($at)
    # Line 777
    trunc.w.d	$f1,$f1
    # Line 757
    subu	$s8,$s8,$t8
    # Line 755
    subu	$s2,$s2,$t8
    # Line 777
    mfc1	$t8,$f1
    # Line 780
    subu	$s8,$s8,$s2
    addu	$v1,$s8,$t8
    addiu	$v1,$v1,-1
    mtc1	$v1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    # Line 750
    move	$a1,$a2
    sd	$s0,16($sp)
    # Line 753
    li	$s0,0x80f8
    # Line 780
    mfc1	$a5,$f0
    # Line 753
    addu	$s0,$s0,$at
    # Line 750
    lui	$v0,0x11
    sd	$s1,80($sp)
    addiu	$v0,$v0,29468
    # Line 780
    slti	$at,$a5,2
    sd	$gp,40($sp)
    # Line 750
    addu	$gp,$t9,$v0
    # Line 777
    teq	$a6,$zero,0x7
    # Line 753
    lw	$s0,0($s0)
    # Line 777
    move	$a4,$t8
    # Line 780
    bnez	$at,.L0d939b78
    teq	$t8,$zero,0x7
    # Line 783
    lui	$at,0x3e
    mtc1	$at,$f3
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$t8,$f3
    # Line 784
    addu	$t9,$s8,$t8
    addiu	$t9,$t9,-1
    mtc1	$t9,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    # Line 783
    teq	$a6,$zero,0x7
    move	$a4,$t8
    # Line 784
    teq	$t8,$zero,0x7
    mfc1	$a5,$f2
.L0d939b78:
    # Line 787
    lw	$v1,-22420($gp)
    move	$s1,$a4
    slt	$v0,$s8,$a4
    beqz	$v1,.L0d939bb0
    movn	$s1,$s8,$v0
    ld	$s1,80($sp)
    # Line 855
    ld	$gp,40($sp)
    ld	$s0,16($sp)
    ld	$s2,32($sp)
    # Line 798
    move	$v0,$zero
    # Line 855
    ld	$s3,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d939bb0:
    # Line 801
    blez	$a5,.L0d939d30
    addiu	$a2,$s0,48
    trunc.w.s	$f5,$f13
    cvt.s.w	$f4,$f5
    sd	$s5,112($sp)
    sd	$ra,96($sp)
    sub.s	$f4,$f13,$f4
    ldc1	$f6,_lit8_40e0000000000000
    addiu	$a4,$a5,1
    sd	$a4,72($sp)
    cvt.d.s	$f4,$f4
    sd	$a2,64($sp)
    sd	$a1,0($sp)
    mul.d	$f4,$f4,$f6
    sd	$s4,104($sp)
    sd	$s6,88($sp)
    trunc.w.d	$f4,$f4
    sd	$s7,120($sp)
    mfc1	$a3,$f5
    lui	$s7,0x80
    sd	$a3,48($sp)
    mfc1	$a0,$f4
    li	$s6,0x8000
    li	$s4,1
    sd	$a0,56($sp)
    nop
    nop
    nop
.L0d939c20:
    mult	$s3,$s2
    mflo	$s5
    li	$t8,0xffff
    sll	$s5,$s5,0x3
    addu	$t8,$s5,$t8
    slt	$t9,$s5,$zero
    movz	$t8,$s5,$t9
    lw	$a4,32($s0)
    sra	$t8,$t8,0x10
    # Line 809
    move	$a1,$zero
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a3,$t8
    # Line 801
    subu	$a4,$a4,$t8
    sll	$t8,$t8,0x10
    # Line 809
    lw	$a2,24($s0)
    li	$a6,63
    # Line 801
    subu	$s5,$s5,$t8
    # Line 809
    lw	$a0,0($s0)
    # Line 801
    sltiu	$a5,$a4,64
    # Line 809
    jal	vice_dmbuf_settlb
    movz	$a4,$a6,$a5
    # Line 818
    lw	$a0,0($s0)
    # lw $t9, -22916($gp) # &vice_etc_dramp
    # Line 816
    sw	$s6,104($s0)
    # Line 817
    li	$ra,28
    sw	$ra,108($s0)
    # Line 818
    li	$t8,1
    jal	vice_etc_dramp
    # Line 815
    sw	$t8,64($s0)
    # Line 825
    sw	$zero,12($v0)
    # Line 823
    sw	$s7,4($v0)
    # Line 822
    addu	$v1,$s7,$s5
    sw	$v1,0($v0)
    # Line 824
    mult	$s3,$s1
    # Line 826
    ld	$a1,0($sp)
    # Line 828
    ld	$a2,56($sp)
    # Line 830
    ld	$a3,48($sp)
    sw	$a3,24($v0)
    # Line 836
    # lw $t9, -22912($gp) # &cacheflush
    # Line 818
    move	$a0,$v0
    # Line 828
    sw	$a2,20($v0)
    # Line 824
    mflo	$at
    # Line 836
    li	$a2,3
    # Line 826
    sw	$a1,16($v0)
    # Line 824
    sll	$at,$at,0x2
    # Line 836
    li	$a1,36
    jal	cacheflush
    # Line 824
    sw	$at,8($v0)
    # Line 838
    # lw $t9, -22908($gp) # &vice_put
    ld	$a1,64($sp)
    jal	vice_put
    lw	$a0,0($s0)
    # Line 851
    mult	$s4,$s1
    mflo	$a7
    # Line 801
    addiu	$s4,$s4,1
    ld	$a5,72($sp)
    # Line 851
    subu	$a7,$s8,$a7
    # Line 852
    move	$a4,$s1
    # Line 851
    slt	$a6,$s1,$a7
    addu	$s2,$s2,$s1
    movz	$a4,$a7,$a6
    # Line 801
    bne	$s4,$a5,.L0d939c20
    # Line 852
    move	$s1,$a4
    ld	$s6,88($sp)
    ld	$ra,96($sp)
    ld	$s4,104($sp)
    ld	$s5,112($sp)
    ld	$s7,120($sp)
.L0d939d30:
    ld	$s1,80($sp)
    # Line 855
    ld	$gp,40($sp)
    ld	$s0,16($sp)
    ld	$s2,32($sp)
    li	$v0,1
    ld	$s3,24($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end AddMultiply

# Function: Return
# Declared: Line 860 (Source lines: 861-1191)
# Address: 0x0d939d60 - 0x0d93a18c (Size: 1068 bytes, Frame: 160)
.ent Return
Return:
    # Line 861
    addiu	$sp,$sp,-672
    sd	$s3,544($sp)
    sd	$s8,520($sp)
    # Line 862
    lw	$s8,0($a0)
    # Line 861
    sd	$s0,536($sp)
    # Line 867
    lw	$s3,29708($s8)
    # Line 864
    li	$s0,0x80f8
    # Line 865
    lw	$a6,3660($s8)
    lw	$t8,29700($s8)
    # Line 864
    addu	$s0,$s0,$s8
    lw	$s0,0($s0)
    # Line 865
    subu	$t8,$t8,$a6
    # Line 867
    subu	$s3,$s3,$a6
    # Line 1045
    subu	$s3,$s3,$t8
    lw	$a7,36($s0)
    sll	$a5,$s3,0x2
    sll	$a7,$a7,0x10
    divu	$zero,$a7,$a5
    # Line 861
    sd	$s2,552($sp)
    # Line 868
    lw	$a0,29712($s8)
    # Line 866
    lw	$s2,29704($s8)
    lw	$t8,3664($s8)
    subu	$s2,$s2,$t8
    # Line 868
    subu	$a0,$a0,$t8
    # Line 1045
    subu	$a0,$a0,$s2
    mflo	$a4
    sd	$a0,592($sp)
    addu	$a0,$a0,$a4
    mtc1	$a4,$f1
    addiu	$a0,$a0,-1
    mtc1	$a0,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    sd	$s1,616($sp)
    trunc.w.d	$f0,$f0
    sd	$gp,528($sp)
    # Line 1042
    lbu	$t0,32204($s8)
    # Line 1045
    mfc1	$at,$f0
    # Line 1065
    li	$a3,6408
    # Line 861
    move	$a1,$a2
    # Line 1040
    lbu	$t1,32202($s8)
    # Line 861
    lui	$v1,0x11
    # Line 1041
    lw	$v0,32088($s8)
    # Line 1045
    slti	$at,$at,2
    # Line 861
    addiu	$v1,$v1,28716
    # Line 1041
    sw	$v0,0($sp)
    # Line 1045
    teq	$a5,$zero,0x7
    # Line 861
    addu	$gp,$t9,$v1
    # Line 1080
    lw	$a2,0($sp)
    # Line 1045
    bnez	$at,.L0d939e4c
    teq	$a4,$zero,0x7
    # Line 1056
    lui	$t8,0xffff
    addu	$t8,$a7,$t8
    divu	$zero,$t8,$a5
    teq	$a5,$zero,0x7
    mflo	$a4
    nop
    nop
.L0d939e4c:
    # Line 1079
    lui	$v0,0x40
    # Line 1062
    sw	$a6,212($sp)
    # Line 1063
    sw	$s3,224($sp)
    # Line 1064
    lw	$a7,44($s0)
    sw	$a7,20($sp)
    # Line 1060
    ld	$a7,592($sp)
    # Line 1080
    srl	$v1,$a2,0x7
    # Line 1065
    sw	$a3,8($sp)
    # Line 1077
    li	$a0,1
    # Line 1081
    srl	$a2,$a2,0x3
    # Line 1066
    sw	$a5,24($sp)
    # Line 1077
    sb	$a0,32204($s8)
    # Line 1060
    move	$s1,$a4
    # Line 1081
    andi	$a2,$a2,0xf
    # Line 1076
    sb	$zero,32202($s8)
    # Line 1081
    sll	$a2,$a2,0x3
    # Line 1060
    slt	$a3,$a7,$a4
    # Line 1074
    sw	$zero,32344($s8)
    # Line 1060
    movn	$s1,$a7,$a3
    # Line 1080
    andi	$v1,$v1,0x1
    sll	$v1,$v1,0x7
    # Line 1068
    lw	$t9,32292($s8)
    # Line 1073
    sw	$zero,32224($s8)
    # Line 1068
    li	$at,-241
    # Line 1080
    or	$v0,$v0,$v1
    # Line 1072
    sb	$zero,32206($s8)
    # Line 1081
    li	$v1,-121
    # Line 1068
    and	$t9,$t9,$at
    # Line 1067
    sw	$zero,32216($s8)
    # Line 1069
    li	$at,-769
    # Line 1068
    ori	$t9,$t9,0x20
    # Line 1075
    lw	$a3,11760($s8)
    # Line 1081
    and	$v0,$v0,$v1
    # Line 1069
    and	$t9,$t9,$at
    # Line 1070
    li	$v1,-13
    # Line 1081
    lw	$at,-22420($gp)
    # Line 1069
    ori	$t9,$t9,0x200
    # Line 1075
    sw	$a3,32300($s8)
    # Line 1081
    or	$v0,$v0,$a2
    # Line 1070
    and	$t9,$t9,$v1
    # Line 1081
    sw	$v0,32088($s8)
    # Line 1071
    li	$v0,-3
    # Line 1070
    ori	$t9,$t9,0x8
    # Line 1071
    and	$t9,$t9,$v0
    # Line 1081
    beqz	$at,.L0d939f28
    # Line 1071
    sw	$t9,32292($s8)
    ld	$s1,616($sp)
    # Line 1191
    ld	$gp,528($sp)
    ld	$s0,536($sp)
    ld	$s2,552($sp)
    # Line 1117
    move	$v0,$zero
    # Line 1191
    ld	$s3,544($sp)
    ld	$s8,520($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0d939f28:
    # Line 1120
    ld	$t2,592($sp)
    addu	$t2,$t2,$a4
    mtc1	$a4,$f2
    addiu	$t2,$t2,-1
    mtc1	$t2,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a2,$f1
    sd	$s5,624($sp)
    teq	$a4,$zero,0x7
    blez	$a2,.L0d93a12c
    sd	$ra,632($sp)
    ldc1	$f4,_lit8_40e0000000000000
    trunc.w.s	$f3,$f13
    cvt.s.w	$f2,$f3
    addiu	$ra,$a2,1
    sd	$ra,568($sp)
    sub.s	$f2,$f13,$f2
    addiu	$t8,$s0,48
    sd	$t8,584($sp)
    sd	$t1,600($sp)
    cvt.d.s	$f2,$f2
    sd	$t0,608($sp)
    sd	$a1,512($sp)
    mul.d	$f2,$f2,$f4
    sd	$s4,648($sp)
    sd	$s6,640($sp)
    trunc.w.d	$f2,$f2
    sd	$s7,656($sp)
    mfc1	$t9,$f3
    lui	$s7,0x80
    sd	$t9,560($sp)
    mfc1	$t3,$f2
    li	$s6,0x8000
    move	$s4,$a0
    sd	$t3,576($sp)
.L0d939fc0:
    # Line 1124
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    lw	$a4,36($s0)
    move	$a3,$zero
    lw	$a2,28($s0)
    move	$a1,$zero
    jal	vice_dmbuf_settlb
    lw	$a0,0($s0)
    mult	$s3,$s2
    mflo	$s5
    li	$t8,0xffff
    sll	$s5,$s5,0x3
    addu	$t8,$s5,$t8
    slt	$t9,$s5,$zero
    movz	$t8,$s5,$t9
    lw	$a4,32($s0)
    sra	$t8,$t8,0x10
    # Line 1127
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a3,$t8
    lw	$a2,24($s0)
    # Line 1124
    subu	$a4,$a4,$t8
    sll	$t8,$t8,0x10
    # Line 1127
    lw	$a1,36($s0)
    li	$v0,42
    # Line 1124
    subu	$s5,$s5,$t8
    # Line 1127
    lw	$a0,0($s0)
    # Line 1124
    sltiu	$at,$a4,43
    # Line 1127
    jal	vice_dmbuf_settlb
    movz	$a4,$v0,$at
    # Line 1137
    lw	$a0,0($s0)
    # lw $t9, -22916($gp) # &vice_etc_dramp
    # Line 1135
    sw	$s6,104($s0)
    # Line 1136
    li	$ra,28
    sw	$ra,108($s0)
    # Line 1137
    li	$t8,1
    jal	vice_etc_dramp
    # Line 1134
    sw	$t8,64($s0)
    # Line 1138
    lw	$v1,36($s0)
    # Line 1141
    sw	$zero,12($v0)
    # Line 1139
    sw	$s7,4($v0)
    # Line 1142
    ld	$a1,512($sp)
    # Line 1140
    mult	$s3,$s1
    # Line 1145
    ld	$a2,576($sp)
    # Line 1147
    ld	$a3,560($sp)
    sw	$a3,24($v0)
    # Line 1137
    move	$a0,$v0
    # Line 1145
    sw	$a2,20($v0)
    # Line 1153
    li	$a2,3
    # lw $t9, -22912($gp) # &cacheflush
    # Line 1138
    sll	$v1,$v1,0x10
    # Line 1142
    sw	$a1,16($v0)
    # Line 1138
    addu	$v1,$s5,$v1
    # Line 1140
    mflo	$at
    # Line 1138
    addu	$v1,$s7,$v1
    sw	$v1,0($v0)
    # Line 1140
    sll	$at,$at,0x2
    # Line 1153
    li	$a1,36
    jal	cacheflush
    # Line 1140
    sw	$at,8($v0)
    # Line 1155
    # lw $t9, -22908($gp) # &vice_put
    ld	$a1,584($sp)
    jal	vice_put
    lw	$a0,0($s0)
    # Line 1179
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    # Line 1173
    lw	$a5,3704($s8)
    lw	$a4,3664($s8)
    # Line 1179
    addiu	$a1,$sp,8
    # Line 1176
    sw	$s1,180($sp)
    # Line 1173
    subu	$a5,$a5,$s2
    # Line 1179
    move	$a0,$s8
    # Line 1175
    sw	$s1,228($sp)
    # Line 1173
    addu	$a4,$a4,$a5
    addiu	$a4,$a4,-1
    # Line 1179
    jal	crmDrawPixelsXfer
    # Line 1173
    sw	$a4,216($sp)
    # Line 1181
    mult	$s4,$s1
    ld	$t1,592($sp)
    mflo	$t2
    # Line 1120
    addiu	$s4,$s4,1
    ld	$a7,568($sp)
    # Line 1181
    subu	$t1,$t1,$t2
    # Line 1182
    move	$a6,$s1
    # Line 1181
    slt	$t0,$s1,$t1
    addu	$s2,$s2,$s1
    movz	$a6,$t1,$t0
    # Line 1120
    bne	$s4,$a7,.L0d939fc0
    # Line 1182
    move	$s1,$a6
    ld	$t0,608($sp)
    ld	$t1,600($sp)
    ld	$s6,640($sp)
    ld	$s4,648($sp)
    ld	$s7,656($sp)
.L0d93a12c:
    ld	$ra,632($sp)
    ld	$s5,624($sp)
    ld	$s1,616($sp)
    # Line 1186
    sb	$t0,32204($s8)
    # Line 1185
    sb	$t1,32202($s8)
    # Line 1191
    ld	$gp,528($sp)
    # Line 1187
    lw	$a0,0($sp)
    lw	$t3,32092($s8)
    # Line 1191
    ld	$s0,536($sp)
    ld	$s2,552($sp)
    # Line 1187
    beq	$t3,$a0,.L0d93a178
    sw	$a0,32088($s8)
    # Line 1188
    lw	$v0,32184($s8)
    sw	$a0,8216($v0)
    lw	$at,32188($s8)
    lw	$t9,32088($s8)
    sw	$t9,8216($at)
    lw	$t8,32088($s8)
    sw	$t8,32092($s8)
.L0d93a178:
    # Line 1191
    li	$v0,1
    ld	$s3,544($sp)
    ld	$s8,520($sp)
    jr	$ra
    addiu	$sp,$sp,672
.end Return

# Function: AccumPick
# Declared: Line 1195 (Source lines: 1201-1201)
# Address: 0x0d93a190 - 0x0d93a198 (Size: 8 bytes, Frame: 0)
.ent AccumPick
AccumPick:
    # Line 1201
    jr	$ra
    nop
.end AccumPick

# Function: SlowSoftClear
# Declared: Line 1208 (Source lines: 1209-1263)
# Address: 0x0d93a1a0 - 0x0d93a4e8 (Size: 840 bytes, Frame: 192)
.ent SlowSoftClear
SlowSoftClear:
    # Line 1209
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    sd	$s2,16($sp)
    sd	$s1,32($sp)
    sd	$s3,8($sp)
    # Line 1210
    lw	$s3,0($a0)
    # Line 1213
    lw	$a1,16($a0)
    lw	$s1,29712($s3)
    # Line 1209
    move	$s2,$a0
    # Line 1212
    lw	$s0,29704($s3)
    # Line 1211
    lw	$t0,29700($s3)
    # Line 1213
    beqz	$a1,.L0d93a4b0
    # Line 1210
    move	$a7,$s3
.L0d93a1d4:
    # Line 1242
    lw	$t2,29708($s3)
    # Line 1233
    lwc1	$f2,80($s2)
    # Line 1231
    lwc1	$f4,1648($s3)
    # Line 1233
    lwc1	$f9,30760($s3)
    lwc1	$f8,1656($s3)
    # Line 1234
    lwc1	$f3,84($s2)
    # Line 1240
    lw	$t8,3664($s3)
    lw	$at,3704($s3)
    # Line 1234
    lwc1	$f7,30792($s3)
    lwc1	$f6,1660($s3)
    # Line 1240
    addu	$at,$at,$t8
    lw	$t9,3664($a7)
    subu	$at,$at,$s0
    lw	$t3,28($s2)
    addu	$t8,$t8,$at
    # Line 1232
    lwc1	$f5,1652($s3)
    # Line 1234
    mul.s	$f6,$f6,$f7
    # Line 1240
    subu	$t8,$t8,$t9
    # Line 1233
    mul.s	$f8,$f8,$f9
    # Line 1232
    lwc1	$f7,30756($s3)
    # Line 1240
    mult	$t3,$t8
    # Line 1234
    mul.s	$f3,$f3,$f6
    # Line 1231
    lwc1	$f6,30752($s3)
    # Line 1232
    lwc1	$f1,76($s2)
    # Line 1233
    mul.s	$f2,$f2,$f8
    # Line 1242
    subu	$t2,$t2,$t0
    # Line 1231
    lwc1	$f0,72($s2)
    # Line 1232
    mul.s	$f5,$f5,$f7
    # Line 1244
    andi	$a0,$t2,0x3
    # Line 1243
    sra	$t2,$t2,0x2
    # Line 1231
    mul.s	$f4,$f4,$f6
    # Line 1240
    sll	$t9,$t0,0x3
    # Line 1245
    negu	$t3,$t3
    # Line 1234
    trunc.w.s	$f3,$f3
    # Line 1232
    mul.s	$f1,$f1,$f5
    # Line 1245
    sd	$t3,0($sp)
    # Line 1233
    trunc.w.s	$f2,$f2
    # Line 1231
    mul.s	$f0,$f0,$f4
    # Line 1240
    mflo	$t1
    lw	$t3,3660($a7)
    # Line 1234
    mfc1	$a4,$f3
    # Line 1232
    trunc.w.s	$f1,$f1
    # Line 1240
    sll	$t1,$t1,0x3
    # Line 1245
    slt	$t8,$s0,$s1
    # Line 1233
    mfc1	$a3,$f2
    # Line 1231
    trunc.w.s	$f0,$f0
    # Line 1240
    addu	$t1,$a1,$t1
    sll	$t3,$t3,0x3
    # Line 1232
    mfc1	$a5,$f1
    # Line 1240
    addu	$t1,$t1,$t9
    # Line 1231
    mfc1	$a6,$f0
    # Line 1245
    beqz	$t8,.L0d93a498
    # Line 1240
    subu	$t1,$t1,$t3
    # Line 1245
    li	$a7,-1
    addiu	$t3,$a0,-1
    ld	$t9,0($sp)
    sd	$a0,40($sp)
    addiu	$t8,$t2,-1
    b	.L0d93a4dc
    sll	$t9,$t9,0x3
    nop
    nop
    nop
.L0d93a2d0:
    # Line 1254
    addiu	$a1,$a1,32
    # Line 1253
    sh	$a4,-2($a1)
    sh	$a3,-4($a1)
    sh	$a5,-6($a1)
    sh	$a6,-8($a1)
    # Line 1252
    sh	$a4,-10($a1)
    sh	$a3,-12($a1)
    sh	$a5,-14($a1)
    sh	$a6,-16($a1)
    # Line 1251
    sh	$a4,-18($a1)
    sh	$a3,-20($a1)
    sh	$a5,-22($a1)
    sh	$a6,-24($a1)
    # Line 1250
    sh	$a4,-26($a1)
    sh	$a3,-28($a1)
    addiu	$t0,$t0,-1
    sh	$a5,-30($a1)
    # Line 1249
    addiu	$a0,$a0,-1
    bnez	$t0,.L0d93a2d0
    # Line 1250
    sh	$a6,-32($a1)
.L0d93a320:
    beqz	$at,.L0d93a43c
    nop
    nop
    nop
.L0d93a330:
    # Line 1254
    addiu	$a1,$a1,128
    # Line 1253
    sh	$a4,-2($a1)
    sh	$a3,-4($a1)
    sh	$a5,-6($a1)
    sh	$a6,-8($a1)
    # Line 1252
    sh	$a4,-10($a1)
    sh	$a3,-12($a1)
    sh	$a5,-14($a1)
    sh	$a6,-16($a1)
    # Line 1251
    sh	$a4,-18($a1)
    sh	$a3,-20($a1)
    sh	$a5,-22($a1)
    sh	$a6,-24($a1)
    # Line 1250
    sh	$a4,-26($a1)
    sh	$a3,-28($a1)
    sh	$a5,-30($a1)
    sh	$a6,-32($a1)
    # Line 1253
    sh	$a4,-34($a1)
    sh	$a3,-36($a1)
    sh	$a5,-38($a1)
    sh	$a6,-40($a1)
    # Line 1252
    sh	$a4,-42($a1)
    sh	$a3,-44($a1)
    sh	$a5,-46($a1)
    sh	$a6,-48($a1)
    # Line 1251
    sh	$a4,-50($a1)
    sh	$a3,-52($a1)
    sh	$a5,-54($a1)
    sh	$a6,-56($a1)
    # Line 1250
    sh	$a4,-58($a1)
    sh	$a3,-60($a1)
    sh	$a5,-62($a1)
    sh	$a6,-64($a1)
    # Line 1253
    sh	$a4,-66($a1)
    sh	$a3,-68($a1)
    sh	$a5,-70($a1)
    sh	$a6,-72($a1)
    # Line 1252
    sh	$a4,-74($a1)
    sh	$a3,-76($a1)
    sh	$a5,-78($a1)
    sh	$a6,-80($a1)
    # Line 1251
    sh	$a4,-82($a1)
    sh	$a3,-84($a1)
    sh	$a5,-86($a1)
    sh	$a6,-88($a1)
    # Line 1250
    sh	$a4,-90($a1)
    sh	$a3,-92($a1)
    sh	$a5,-94($a1)
    sh	$a6,-96($a1)
    # Line 1253
    sh	$a4,-98($a1)
    sh	$a3,-100($a1)
    sh	$a5,-102($a1)
    sh	$a6,-104($a1)
    # Line 1252
    sh	$a4,-106($a1)
    sh	$a3,-108($a1)
    sh	$a5,-110($a1)
    sh	$a6,-112($a1)
    # Line 1251
    sh	$a4,-114($a1)
    sh	$a3,-116($a1)
    sh	$a5,-118($a1)
    sh	$a6,-120($a1)
    # Line 1250
    sh	$a4,-122($a1)
    sh	$a3,-124($a1)
    # Line 1249
    addiu	$a0,$a0,-4
    # Line 1250
    sh	$a5,-126($a1)
    # Line 1249
    bne	$a0,$a7,.L0d93a330
    # Line 1250
    sh	$a6,-128($a1)
.L0d93a43c:
    # Line 1246
    addiu	$s0,$s0,1
    andi	$t0,$t2,0x3
    # Line 1257
    bltz	$t3,.L0d93a46c
    move	$a0,$t3
    nop
.L0d93a450:
    # Line 1259
    addiu	$a1,$a1,8
    # Line 1258
    sh	$a4,-2($a1)
    sh	$a3,-4($a1)
    # Line 1257
    addiu	$a0,$a0,-1
    # Line 1258
    sh	$a5,-6($a1)
    # Line 1257
    bne	$a0,$a7,.L0d93a450
    # Line 1258
    sh	$a6,-8($a1)
.L0d93a46c:
    # Line 1261
    addu	$t1,$t9,$t1
    # Line 1246
    beq	$s0,$s1,.L0d93a49c
    ld	$s3,8($sp)
    # Line 1247
    move	$a1,$t1
.L0d93a47c:
    # Line 1249
    bltz	$t8,.L0d93a43c
    move	$a0,$t8
    sra	$at,$t2,0x2
    bnez	$t0,.L0d93a2d0
    nop
    b	.L0d93a320
    nop
.L0d93a498:
    ld	$s3,8($sp)
.L0d93a49c:
    ld	$s2,16($sp)
    # Line 1263
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d93a4b0:
    # Line 1225
    lw	$t9,132($s2)
    sd	$t0,48($sp)
    move	$a0,$s3
    sd	$ra,56($sp)
    jalr	$t9
    move	$a1,$s2
    ld	$ra,56($sp)
    ld	$t0,48($sp)
    lw	$a1,16($s2)
    b	.L0d93a1d4
    lw	$a7,0($s2)
.L0d93a4dc:
    andi	$t0,$t2,0x3
    b	.L0d93a47c
    # Line 1247
    move	$a1,$t1
.end SlowSoftClear

# Function: AccumClear
# Declared: Line 1266 (Source lines: 1267-1428)
# Address: 0x0d93a4f0 - 0x0d93a904 (Size: 1044 bytes, Frame: 144)
.ent AccumClear
AccumClear:
    # Line 1267
    addiu	$sp,$sp,-144
    sd	$s5,48($sp)
    # Line 1272
    lw	$s5,0($a0)
    # Line 1267
    sd	$s3,16($sp)
    # Line 1277
    lw	$t8,29700($s5)
    lw	$s3,29708($s5)
    # Line 1267
    sd	$s8,24($sp)
    # Line 1293
    lui	$s8,0x3f
    mtc1	$s8,$f1
    # Line 1277
    subu	$s3,$s3,$t8
    # Line 1293
    sll	$a5,$s3,0x3
    mtc1	$a5,$f4
    cvt.d.w	$f1,$f1
    cvt.d.w	$f4,$f4
    div.d	$f1,$f1,$f4
    # Line 1267
    sd	$s1,40($sp)
    # Line 1275
    lw	$s1,29704($s5)
    # Line 1276
    lw	$s8,29712($s5)
    # Line 1275
    lw	$t8,3664($s5)
    # Line 1293
    trunc.w.d	$f1,$f1
    # Line 1276
    subu	$s8,$s8,$t8
    # Line 1275
    subu	$s1,$s1,$t8
    # Line 1293
    mfc1	$t8,$f1
    # Line 1296
    subu	$s8,$s8,$s1
    addu	$v0,$s8,$t8
    addiu	$v0,$v0,-1
    mtc1	$v0,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    # Line 1267
    sd	$a0,0($sp)
    sd	$s2,88($sp)
    lui	$at,0x11
    # Line 1296
    mfc1	$a4,$f0
    # Line 1267
    sd	$s0,32($sp)
    # Line 1274
    li	$s0,0x80f8
    # Line 1267
    addiu	$at,$at,26780
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 1296
    slti	$at,$a4,2
    sd	$ra,96($sp)
    # Line 1274
    addu	$s0,$s0,$s5
    # Line 1293
    teq	$a5,$zero,0x7
    # Line 1274
    lw	$s0,0($s0)
    # Line 1293
    move	$a3,$t8
    # Line 1296
    bnez	$at,.L0d93a5f4
    teq	$t8,$zero,0x7
    # Line 1299
    lui	$v0,0x3e
    mtc1	$v0,$f3
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$ra,$f3
    # Line 1300
    addu	$at,$s8,$ra
    addiu	$at,$at,-1
    mtc1	$at,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    # Line 1299
    teq	$a5,$zero,0x7
    move	$a3,$ra
    # Line 1300
    teq	$ra,$zero,0x7
    mfc1	$a4,$f2
.L0d93a5f4:
    # Line 1303
    move	$s2,$a3
    slt	$v1,$s8,$a3
    beqz	$s0,.L0d93a818
    movn	$s2,$s8,$v1
.L0d93a604:
    # Line 1319
    lbu	$a0,4($s0)
    beqz	$a0,.L0d93a8cc
    # Line 1325
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 1330
    lw	$a1,32($s0)
    beqz	$a1,.L0d93a874
    # Line 1337
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
.L0d93a61c:
    # Line 1357
    lw	$a2,32088($s5)
    sll	$a2,$a2,0xb
    # Line 1367
    addiu	$ra,$s0,48
    # Line 1357
    lw	$a3,-22420($gp)
    bltz	$a2,.L0d93a638
    # Line 1367
    addiu	$at,$a4,1
    # Line 1357
    beqz	$a3,.L0d93a65c
.L0d93a638:
    # Line 1366
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-24160
    bal __glBeginLLoop
    ld	$a0,0($sp)
    sdc1	$f20,80($sp)
    sd	$s7,104($sp)
    sd	$s4,112($sp)
    b	.L0d93a7e0
    sd	$s6,120($sp)
.L0d93a65c:
    sdc1	$f20,80($sp)
    sd	$s7,104($sp)
    # Line 1367
    lui	$s7,0x80
    sd	$s4,112($sp)
    li	$s4,1
    blez	$a4,.L0d93a7e0
    sd	$s6,120($sp)
    ldc1	$f20,_lit8_40dfffc000000000
    sd	$at,72($sp)
    sd	$ra,64($sp)
    li	$s6,0x8000
    sd	$s5,8($sp)
    nop
.L0d93a690:
    mult	$s3,$s1
    mflo	$s5
    li	$t8,0xffff
    sll	$s5,$s5,0x3
    addu	$t8,$s5,$t8
    slt	$t9,$s5,$zero
    movz	$t8,$s5,$t9
    lw	$a4,32($s0)
    sra	$t8,$t8,0x10
    # Line 1380
    move	$a1,$zero
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a3,$t8
    # Line 1367
    subu	$a4,$a4,$t8
    sll	$t8,$t8,0x10
    # Line 1380
    lw	$a2,24($s0)
    li	$v1,63
    # Line 1367
    subu	$s5,$s5,$t8
    # Line 1380
    lw	$a0,0($s0)
    # Line 1367
    sltiu	$v0,$a4,64
    # Line 1380
    jal	vice_dmbuf_settlb
    movz	$a4,$v1,$v0
    # Line 1389
    lw	$a0,0($s0)
    # lw $t9, -22916($gp) # &vice_etc_dramp
    # Line 1387
    sw	$s6,104($s0)
    # Line 1388
    li	$ra,32
    sw	$ra,108($s0)
    # Line 1389
    li	$t8,1
    jal	vice_etc_dramp
    # Line 1386
    sw	$t8,64($s0)
    # Line 1395
    mult	$s3,$s2
    # Line 1397
    li	$a4,5
    sw	$a4,16($v0)
    # Line 1396
    sw	$zero,12($v0)
    # Line 1394
    sw	$s7,4($v0)
    # Line 1393
    addu	$a6,$s7,$s5
    sw	$a6,0($v0)
    # Line 1400
    ld	$v1,8($sp)
    # Line 1395
    mflo	$a5
    sll	$a5,$a5,0x2
    sw	$a5,8($v0)
    # Line 1400
    lwc1	$f7,1648($v1)
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f20
    trunc.w.d	$f7,$f7
    mfc1	$a3,$f7
    sh	$a3,24($v0)
    # Line 1401
    lwc1	$f6,1652($v1)
    cvt.d.s	$f6,$f6
    mul.d	$f6,$f6,$f20
    trunc.w.d	$f6,$f6
    mfc1	$a2,$f6
    sh	$a2,26($v0)
    # Line 1402
    lwc1	$f5,1656($v1)
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f20
    trunc.w.d	$f5,$f5
    mfc1	$a1,$f5
    sh	$a1,28($v0)
    # Line 1403
    lwc1	$f4,1660($v1)
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f20
    # Line 1409
    # lw $t9, -22912($gp) # &cacheflush
    # Line 1403
    trunc.w.d	$f4,$f4
    # Line 1389
    move	$a0,$v0
    # Line 1409
    li	$a2,3
    # Line 1403
    mfc1	$at,$f4
    # Line 1409
    li	$a1,36
    jal	cacheflush
    # Line 1403
    sh	$at,30($v0)
    # Line 1411
    # lw $t9, -22908($gp) # &vice_put
    ld	$a1,64($sp)
    jal	vice_put
    lw	$a0,0($s0)
    # Line 1424
    mult	$s4,$s2
    mflo	$t2
    # Line 1372
    addiu	$s4,$s4,1
    ld	$t0,72($sp)
    # Line 1424
    subu	$t2,$s8,$t2
    # Line 1425
    move	$a7,$s2
    # Line 1424
    slt	$t1,$s2,$t2
    addu	$s1,$s1,$s2
    movz	$a7,$t2,$t1
    # Line 1372
    bne	$s4,$t0,.L0d93a690
    # Line 1425
    move	$s2,$a7
.L0d93a7e0:
    ld	$s2,88($sp)
    ld	$s6,120($sp)
    ld	$s3,16($sp)
    ld	$s8,24($sp)
    ld	$s4,112($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,48($sp)
    ld	$ra,96($sp)
    ld	$s7,104($sp)
    ldc1	$f20,80($sp)
    # Line 1428
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d93a818:
    # Line 1309
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-29072
    sd	$a4,128($sp)
    bal __glBeginLLoop
    move	$a0,$s5
    ld	$a4,128($sp)
    bnez	$v0,.L0d93a604
    move	$s0,$v0
    # Line 1314
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-17408
    move	$a0,$s5
    bal __glcrmim_Accum
    ld	$a1,0($sp)
    # Line 1317
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,108($t9)
    jal	sub_0d940000
    nop
    sdc1	$f20,80($sp)
    sd	$s7,104($sp)
    sd	$s4,112($sp)
    b	.L0d93a7e0
    sd	$s6,120($sp)
.L0d93a874:
    # Line 1337
    addiu	$t9,$t9,-28112
    sd	$a4,128($sp)
    move	$a0,$s5
    bal __glBeginLLoop
    ld	$a1,0($sp)
    bnez	$v0,.L0d93a61c
    ld	$a4,128($sp)
    # Line 1342
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-17408
    move	$a0,$s5
    bal __glcrmim_Accum
    ld	$a1,0($sp)
    # Line 1344
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,108($t9)
    jal	sub_0d940000
    nop
    sdc1	$f20,80($sp)
    sd	$s7,104($sp)
    sd	$s4,112($sp)
    b	.L0d93a7e0
    sd	$s6,120($sp)
.L0d93a8cc:
    # Line 1325
    addiu	$t9,$t9,-17408
    move	$a0,$s5
    bal __glcrmim_Accum
    ld	$a1,0($sp)
    # Line 1328
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,108($t9)
    jalr	$t9
    nop
    sdc1	$f20,80($sp)
    sd	$s7,104($sp)
    sd	$s4,112($sp)
    b	.L0d93a7e0
    sd	$s6,120($sp)
.end AccumClear

# Function: __glCrmInitAccum64
# Declared: Line 1432 (Source lines: 1433-1470)
# Address: 0x0d93a910 - 0x0d93aa10 (Size: 256 bytes, Frame: 32)
.globl __glCrmInitAccum64
.ent __glCrmInitAccum64
__glCrmInitAccum64:
    # Line 1433
    lui	$at,0x11
    addiu	$sp,$sp,-32
    addiu	$at,$at,25724
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1442
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 1433
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    # Line 1442
    nop
    # Line 1433
    sd	$ra,0($sp)
    # Line 1442
    jal	__glInitBuffer
    # Line 1433
    move	$s8,$a0
    # Line 1448
    sw	$zero,64($s8)
    # Line 1444
    li	$a4,8
    sw	$a4,24($s8)
    # Line 1445
    la	$a3,sub_0d940000
    # Line 1446
    la	$a2,sub_0d940000
    # Line 1451
    la	$v1,sub_0d940000
    # Line 1450
    la	$a0,sub_0d940000
    # Line 1451
    addiu	$v1,$v1,-28544
    sw	$v1,48($s8)
    # Line 1450
    addiu	$a0,$a0,-28688
    sw	$a0,44($s8)
    # Line 1447
    la	$a1,sub_0d940000
    # Line 1446
    addiu	$a2,$a2,-24176
    sw	$a2,104($s8)
    # Line 1447
    addiu	$a1,$a1,-27584
    sw	$a1,56($s8)
    # Line 1451
    ld	$a1,24($sp)
    # Line 1445
    addiu	$a3,$a3,-23312
    sw	$a3,108($s8)
    # Line 1451
    lbu	$v0,3220($a1)
    # Line 1460
    lwc1	$f1,_lit_46fffe00
    # Line 1465
    lwc1	$f0,_lit_3f800000
    # Line 1451
    beqz	$v0,.L0d93aa00
    ld	$ra,0($sp)
    # Line 1460
    lwc1	$f3,30752($a1)
    div.s	$f3,$f1,$f3
    swc1	$f3,72($s8)
    # Line 1465
    div.s	$f3,$f0,$f3
    # Line 1461
    lwc1	$f7,30760($a1)
    div.s	$f7,$f1,$f7
    # Line 1467
    div.s	$f4,$f0,$f7
    # Line 1461
    swc1	$f7,80($s8)
    # Line 1462
    lwc1	$f6,30756($a1)
    div.s	$f6,$f1,$f6
    # Line 1466
    div.s	$f2,$f0,$f6
    # Line 1462
    swc1	$f6,76($s8)
    # Line 1463
    lwc1	$f5,30792($a1)
    div.s	$f1,$f1,$f5
    # Line 1468
    div.s	$f0,$f0,$f1
    # Line 1470
    ld	$gp,16($sp)
    # Line 1467
    swc1	$f4,96($s8)
    # Line 1465
    swc1	$f3,88($s8)
    # Line 1466
    swc1	$f2,92($s8)
    # Line 1463
    swc1	$f1,84($s8)
    # Line 1468
    swc1	$f0,100($s8)
    # Line 1470
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93aa00:
    ld	$s8,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmInitAccum64

# Function: __glcrmim_Accum
# Declared: Line 1473 (Source lines: 1474-1610)
# Address: 0x0d93aa10 - 0x0d93ace8 (Size: 728 bytes, Frame: 48)
.globl __glcrmim_Accum
.ent __glcrmim_Accum
__glcrmim_Accum:
.L0d93aa10:
    # Line 1487
    lw	$a1,4120($zero)
    # Line 1474
    move	$a5,$a0
    addiu	$sp,$sp,-48
    # Line 1477
    lw	$a2,4112($zero)
    # Line 1480
    li	$a6,0x80f8
    # Line 1474
    lui	$a7,0x11
    sd	$gp,32($sp)
    addiu	$a7,$a7,25468
    # Line 1480
    addu	$a6,$a6,$a2
    # Line 1474
    mov.s	$f4,$f13
    addu	$gp,$t9,$a7
    # Line 1487
    beqz	$a1,.L0d93aa78
    # Line 1480
    lw	$a6,0($a6)
    sdc1	$f13,0($sp)
    sd	$a0,16($sp)
    # Line 1487
    li	$t0,2
    sd	$a2,24($sp)
    beq	$a1,$t0,.L0d93aab0
    sd	$ra,40($sp)
    # Line 1495
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d93aa68:
    ld	$ra,40($sp)
.L0d93aa6c:
    # Line 1610
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d93aa78:
    # Line 1496
    lbu	$t1,32010($a2)
    sdc1	$f13,0($sp)
    beqz	$t1,.L0d93ac84
    sd	$ra,40($sp)
    # Line 1513
    lbu	$t2,3224($a2)
    beqz	$t2,.L0d93aaa0
    # Line 1514
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1513
    lbu	$t3,3221($a2)
    beqz	$t3,.L0d93aae0
    # Line 1514
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93aaa0:
    jal	__glSetError
    li	$a0,1282
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93aab0:
    # Line 1490
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 1492
    # lw $t9, -32108($gp) # &__glcrmim_Accum
    ldc1	$f13,0($sp)
    ld	$a0,16($sp)
    bal .L0d93aa10
    # Line 1491
    sw	$zero,4120($zero)
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93aae0:
    # Line 1515
    beqz	$a6,.L0d93aba4
    sd	$a2,24($sp)
.L0d93aae8:
    # Line 1532
    lbu	$ra,4($a6)
    beqz	$ra,.L0d93ac98
    # Line 1538
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 1543
    lw	$at,32($a6)
    beqz	$at,.L0d93ac30
.L0d93aafc:
    # Line 1559
    li	$v0,256
    beq	$a5,$v0,.L0d93abf4
    # Line 1562
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 1559
    li	$v1,257
    beq	$a5,$v1,.L0d93ac00
    li	$a0,258
    beq	$a5,$a0,.L0d93ac10
    li	$a1,259
    beq	$a5,$a1,.L0d93ac20
    li	$a2,260
    beq	$a5,$a2,.L0d93ab40
    # Line 1579
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 1581
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93ab40:
    # Line 1579
    li	$a2,3
    addiu	$t9,$t9,-26000
.L0d93ab48:
    # Line 1583
    ld	$ra,24($sp)
    lw	$ra,3204($ra)
    li	$at,7168
    bne	$ra,$at,.L0d93aa68
    # Line 1586
    ld	$a1,24($sp)
    lw	$a3,32088($a1)
    sll	$a3,$a3,0xb
    bltz	$a3,.L0d93acc8
    addiu	$a1,$a1,31360
    sd	$a5,16($sp)
    sd	$a1,8($sp)
    # Line 1602
    ldc1	$f13,0($sp)
    jalr	$t9
    ld	$a0,8($sp)
    bnez	$v0,.L0d93aa68
    # Line 1608
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    ld	$a0,8($sp)
    addiu	$t9,$t9,-21264
    ldc1	$f13,0($sp)
    bal __glcrmim_Accum
    ld	$a2,16($sp)
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93aba4:
    # Line 1522
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-29072
    sd	$a0,16($sp)
    bal __glBeginLLoop
    ld	$a0,24($sp)
    ld	$a5,16($sp)
    bnez	$v0,.L0d93aae8
    move	$a6,$v0
    # Line 1527
    # lw $t9, -32744($gp) # &sub_0d940000
    ld	$a1,24($sp)
    addiu	$t9,$t9,-17408
    move	$a0,$a1
    bal __glcrmim_Accum
    addiu	$a1,$a1,31360
    # Line 1530
    # lw $t9, -27192($gp) # &__glim_Accum
    ld	$a0,16($sp)
    jal	__glim_Accum
    ldc1	$f13,0($sp)
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93abf4:
    # Line 1562
    li	$a2,2
    b	.L0d93ab48
    addiu	$t9,$t9,-26960
.L0d93ac00:
    # Line 1567
    # lw $t9, -32744($gp) # &sub_0d940000
    move	$a2,$zero
    b	.L0d93ab48
    addiu	$t9,$t9,-26960
.L0d93ac10:
    # Line 1571
    # lw $t9, -32744($gp) # &sub_0d940000
    li	$a2,1
    b	.L0d93ab48
    addiu	$t9,$t9,-25248
.L0d93ac20:
    # Line 1575
    # lw $t9, -32744($gp) # &sub_0d940000
    li	$a2,4
    b	.L0d93ab48
    addiu	$t9,$t9,-26000
.L0d93ac30:
    # Line 1547
    # lw $t9, -32744($gp) # &sub_0d940000
    ld	$a1,24($sp)
    addiu	$t9,$t9,-28112
    sd	$a5,16($sp)
    move	$a0,$a1
    addiu	$a1,$a1,31360
    bal __glBeginLLoop
    sd	$a1,8($sp)
    bnez	$v0,.L0d93aafc
    ld	$a5,16($sp)
    # Line 1552
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-17408
    ld	$a0,24($sp)
    bal __glcrmim_Accum
    ld	$a1,8($sp)
    # Line 1554
    # lw $t9, -27192($gp) # &__glim_Accum
    ld	$a0,16($sp)
    jal	__glim_Accum
    ldc1	$f13,0($sp)
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93ac84:
    # Line 1508
    # lw $t9, -27192($gp) # &__glim_Accum
    jal	__glim_Accum
    ldc1	$f13,0($sp)
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93ac98:
    # Line 1538
    ld	$a1,24($sp)
    addiu	$t9,$t9,-17408
    move	$a0,$a1
    sd	$a5,16($sp)
    bal __glcrmim_Accum
    addiu	$a1,$a1,31360
    # Line 1541
    # lw $t9, -27192($gp) # &__glim_Accum
    ld	$a0,16($sp)
    jal	__glim_Accum
    ldc1	$f13,0($sp)
    b	.L0d93aa6c
    ld	$ra,40($sp)
.L0d93acc8:
    # Line 1597
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-21264
    move	$a0,$a1
    ldc1	$f13,0($sp)
    bal __glcrmim_Accum
    move	$a2,$a5
    b	.L0d93aa6c
    ld	$ra,40($sp)
.end __glcrmim_Accum

# Function: SoftAccumOp
# Declared: Line 1617 (Source lines: 1618-1812)
# Address: 0x0d93acf0 - 0x0d93bbf4 (Size: 3844 bytes, Frame: 0)
.ent SoftAccumOp
SoftAccumOp:
    # Line 1618
    lui	$at,0x1
    ori	$at,$at,0x120
    subu	$sp,$sp,$at
    move	$t2,$s8
    sd	$t2,136($sp)
    sd	$s0,120($sp)
    sd	$s2,160($sp)
    sd	$s3,144($sp)
    sd	$s4,112($sp)
    sd	$s5,152($sp)
    sd	$s6,104($sp)
    sdc1	$f22,56($sp)
    sdc1	$f24,48($sp)
    sdc1	$f26,64($sp)
    sdc1	$f28,40($sp)
    sd	$ra,128($sp)
    # Line 1619
    lw	$a6,0($a0)
    # Line 1618
    sdc1	$f20,72($sp)
    # Line 1643
    lw	$t1,3664($a6)
    lw	$a7,3704($a6)
    # Line 1621
    lw	$t0,29704($a6)
    # Line 1643
    lw	$a5,28($a0)
    addu	$a7,$a7,$t1
    # Line 1618
    sd	$s7,96($sp)
    # Line 1643
    subu	$a7,$a7,$t0
    lw	$a1,16($a0)
    mult	$a5,$a7
    # Line 1619
    sd	$a6,176($sp)
    # Line 1643
    lw	$a4,3660($a6)
    # Line 1618
    sd	$s1,168($sp)
    # Line 1649
    li	$a3,256
    # Line 1622
    lw	$s1,29708($a6)
    # Line 1618
    addu	$s8,$sp,$at
    move	$s7,$a2
    # Line 1620
    lw	$a7,29700($a6)
    # Line 1643
    sll	$a4,$a4,0x3
    # Line 1621
    sd	$t0,248($sp)
    # Line 1643
    mflo	$t0
    # Line 1623
    lw	$a6,29712($a6)
    # Line 1636
    subu	$s1,$s1,$a7
    # Line 1643
    sll	$t0,$t0,0x3
    # Line 1620
    sd	$a7,200($sp)
    # Line 1643
    sll	$a7,$a7,0x3
    addu	$a1,$a1,$t0
    # Line 1647
    negu	$a5,$a5
    # Line 1623
    sd	$a6,240($sp)
    # Line 1643
    addu	$a1,$a1,$a7
    # Line 1618
    mov.s	$f20,$f13
    # Line 1636
    sd	$s1,184($sp)
    # Line 1649
    beq	$a3,$a2,.L0d93bafc
    # Line 1643
    subu	$a1,$a1,$a4
    # Line 1649
    li	$t3,257
    beq	$a2,$t3,.L0d93bb00
    # Line 1656
    ld	$t0,176($sp)
    # Line 1649
    li	$t8,260
    beq	$a2,$t8,.L0d93bb3c
    # Line 1665
    ld	$t9,176($sp)
    # Line 1649
    li	$t9,258
    beq	$a2,$t9,.L0d93bbb4
.L0d93addc:
    # Line 1676
    ld	$at,240($sp)
    ld	$ra,248($sp)
    slt	$ra,$ra,$at
    beqz	$ra,.L0d93ba94
    lwc1	$f26,24($sp)
    lwc1	$f22,28($sp)
    lwc1	$f28,32($sp)
    lwc1	$f24,36($sp)
    lh	$s4,16($sp)
    lh	$s6,18($sp)
    sll	$a2,$a5,0x3
    sd	$a2,232($sp)
    lh	$s3,20($sp)
    lh	$s5,22($sp)
    lw	$a6,8($sp)
    ld	$v0,184($sp)
    li	$t2,258
    li	$t1,260
    sd	$a6,192($sp)
    andi	$v1,$v0,0x3
    sra	$v0,$v0,0x2
    sd	$v0,88($sp)
    li	$a4,259
    li	$a0,257
    sd	$v1,208($sp)
    li	$s2,-1
    addiu	$v1,$v1,-1
    sd	$v1,224($sp)
    addiu	$v0,$v0,-1
    b	.L0d93ae80
    sd	$v0,216($sp)
    nop
    nop
.L0d93ae60:
    # Line 1681
    beq	$t2,$s7,.L0d93ba08
.L0d93ae64:
    # Line 1678
    ld	$t0,248($sp)
.L0d93ae68:
    ld	$t3,240($sp)
    ld	$a7,232($sp)
    addiu	$t0,$t0,1
    sd	$t0,248($sp)
    beq	$t0,$t3,.L0d93ba94
    # Line 1810
    addu	$a1,$a7,$a1
.L0d93ae80:
    # Line 1681
    beq	$a3,$s7,.L0d93b344
    # Line 1679
    move	$s0,$a1
    # Line 1681
    beq	$a0,$s7,.L0d93b718
    # Line 1721
    ld	$t9,192($sp)
    # Line 1681
    beq	$a4,$s7,.L0d93afd4
    # Line 1758
    ld	$t0,216($sp)
    # Line 1681
    bne	$t1,$s7,.L0d93ae60
    # Line 1788
    ld	$t8,216($sp)
    bltz	$t8,.L0d93af7c
    move	$s1,$t8
    nop
    nop
.L0d93aeb0:
    # Line 1793
    addiu	$s0,$s0,32
    # Line 1792
    lh	$v0,-2($s0)
    lh	$at,-4($s0)
    addu	$v0,$v0,$s5
    sh	$v0,-2($s0)
    addu	$at,$at,$s3
    sh	$at,-4($s0)
    lh	$ra,-6($s0)
    lh	$t9,-8($s0)
    addu	$ra,$ra,$s6
    sh	$ra,-6($s0)
    addu	$t9,$t9,$s4
    sh	$t9,-8($s0)
    # Line 1791
    lh	$t8,-10($s0)
    lh	$t3,-12($s0)
    addu	$t8,$t8,$s5
    sh	$t8,-10($s0)
    addu	$t3,$t3,$s3
    sh	$t3,-12($s0)
    lh	$t0,-14($s0)
    lh	$a7,-16($s0)
    addu	$t0,$t0,$s6
    sh	$t0,-14($s0)
    addu	$a7,$a7,$s4
    sh	$a7,-16($s0)
    # Line 1790
    lh	$a6,-18($s0)
    lh	$a5,-20($s0)
    addu	$a6,$a6,$s5
    sh	$a6,-18($s0)
    addu	$a5,$a5,$s3
    sh	$a5,-20($s0)
    lh	$a2,-22($s0)
    lh	$v1,-24($s0)
    addu	$a2,$a2,$s6
    sh	$a2,-22($s0)
    addu	$v1,$v1,$s4
    sh	$v1,-24($s0)
    # Line 1789
    lh	$v0,-26($s0)
    lh	$at,-28($s0)
    addu	$v0,$v0,$s5
    sh	$v0,-26($s0)
    addu	$at,$at,$s3
    sh	$at,-28($s0)
    lh	$ra,-30($s0)
    # Line 1788
    addiu	$s1,$s1,-1
    # Line 1789
    lh	$t9,-32($s0)
    addu	$ra,$ra,$s6
    sh	$ra,-30($s0)
    addu	$t9,$t9,$s4
    # Line 1788
    bne	$s1,$s2,.L0d93aeb0
    # Line 1789
    sh	$t9,-32($s0)
.L0d93af7c:
    # Line 1796
    ld	$v1,224($sp)
    bltz	$v1,.L0d93ae64
    move	$s1,$v1
    nop
    nop
.L0d93af90:
    # Line 1798
    addiu	$s0,$s0,8
    # Line 1797
    lh	$a7,-2($s0)
    lh	$a6,-4($s0)
    addu	$a7,$a7,$s5
    sh	$a7,-2($s0)
    addu	$a6,$a6,$s3
    sh	$a6,-4($s0)
    lh	$a5,-6($s0)
    # Line 1796
    addiu	$s1,$s1,-1
    # Line 1797
    lh	$a2,-8($s0)
    addu	$a5,$a5,$s6
    sh	$a5,-6($s0)
    addu	$a2,$a2,$s4
    # Line 1796
    bne	$s1,$s2,.L0d93af90
    # Line 1797
    sh	$a2,-8($s0)
    b	.L0d93ae68
    # Line 1678
    ld	$t0,248($sp)
.L0d93afd4:
    # Line 1758
    bltz	$t0,.L0d93b1ac
    move	$s1,$t0
    nop
.L0d93afe0:
    # Line 1774
    lh	$a2,30($s0)
    # Line 1773
    lh	$v1,28($s0)
    # Line 1774
    mtc1	$a2,$f15
    # Line 1772
    lh	$v0,26($s0)
    # Line 1773
    mtc1	$v1,$f14
    # Line 1771
    lh	$at,24($s0)
    # Line 1772
    mtc1	$v0,$f13
    # Line 1770
    lh	$ra,22($s0)
    # Line 1774
    cvt.s.w	$f15,$f15
    # Line 1771
    mtc1	$at,$f12
    # Line 1769
    lh	$t9,20($s0)
    # Line 1773
    cvt.s.w	$f14,$f14
    # Line 1770
    mtc1	$ra,$f11
    # Line 1772
    cvt.s.w	$f13,$f13
    # Line 1769
    mtc1	$t9,$f10
    # Line 1771
    cvt.s.w	$f12,$f12
    # Line 1774
    mul.s	$f15,$f15,$f20
    # Line 1770
    cvt.s.w	$f11,$f11
    # Line 1773
    mul.s	$f14,$f14,$f20
    # Line 1769
    cvt.s.w	$f10,$f10
    # Line 1774
    trunc.w.s	$f15,$f15
    # Line 1772
    mul.s	$f13,$f13,$f20
    # Line 1773
    trunc.w.s	$f14,$f14
    # Line 1771
    mul.s	$f12,$f12,$f20
    # Line 1768
    lh	$t8,18($s0)
    # Line 1772
    trunc.w.s	$f13,$f13
    # Line 1770
    mul.s	$f11,$f11,$f20
    # Line 1767
    lh	$t3,16($s0)
    # Line 1771
    trunc.w.s	$f12,$f12
    # Line 1769
    mul.s	$f10,$f10,$f20
    # Line 1768
    mtc1	$t8,$f9
    # Line 1766
    lh	$t0,14($s0)
    # Line 1774
    mfc1	$a2,$f15
    # Line 1770
    trunc.w.s	$f11,$f11
    # Line 1767
    mtc1	$t3,$f8
    # Line 1765
    lh	$a7,12($s0)
    # Line 1773
    mfc1	$v1,$f14
    # Line 1769
    trunc.w.s	$f10,$f10
    # Line 1766
    mtc1	$t0,$f7
    # Line 1764
    lh	$a6,10($s0)
    # Line 1772
    mfc1	$ra,$f13
    # Line 1768
    cvt.s.w	$f9,$f9
    # Line 1765
    mtc1	$a7,$f6
    # Line 1763
    lh	$a5,8($s0)
    # Line 1771
    mfc1	$t8,$f12
    # Line 1767
    cvt.s.w	$f8,$f8
    # Line 1764
    mtc1	$a6,$f5
    # Line 1770
    mfc1	$t0,$f11
    # Line 1766
    cvt.s.w	$f7,$f7
    # Line 1763
    mtc1	$a5,$f4
    # Line 1769
    mfc1	$a7,$f10
    # Line 1765
    cvt.s.w	$f6,$f6
    # Line 1775
    addiu	$s0,$s0,32
    # Line 1768
    mul.s	$f9,$f9,$f20
    # Line 1764
    cvt.s.w	$f5,$f5
    # Line 1774
    sh	$a2,-2($s0)
    # Line 1767
    mul.s	$f8,$f8,$f20
    # Line 1763
    cvt.s.w	$f4,$f4
    # Line 1773
    sh	$v1,-4($s0)
    # Line 1768
    trunc.w.s	$f9,$f9
    # Line 1766
    mul.s	$f7,$f7,$f20
    # Line 1767
    trunc.w.s	$f8,$f8
    # Line 1765
    mul.s	$f6,$f6,$f20
    # Line 1762
    lh	$v0,-26($s0)
    # Line 1766
    trunc.w.s	$f7,$f7
    # Line 1764
    mul.s	$f5,$f5,$f20
    # Line 1761
    lh	$at,-28($s0)
    # Line 1765
    trunc.w.s	$f6,$f6
    # Line 1763
    mul.s	$f4,$f4,$f20
    # Line 1762
    mtc1	$v0,$f3
    # Line 1760
    lh	$t9,-30($s0)
    # Line 1768
    mfc1	$a6,$f9
    # Line 1764
    trunc.w.s	$f5,$f5
    # Line 1761
    mtc1	$at,$f2
    # Line 1759
    lh	$t3,-32($s0)
    # Line 1772
    sh	$ra,-6($s0)
    # Line 1767
    mfc1	$a5,$f8
    # Line 1763
    trunc.w.s	$f4,$f4
    # Line 1760
    mtc1	$t9,$f1
    # Line 1771
    sh	$t8,-8($s0)
    # Line 1766
    mfc1	$a2,$f7
    # Line 1762
    cvt.s.w	$f3,$f3
    # Line 1759
    mtc1	$t3,$f0
    # Line 1770
    sh	$t0,-10($s0)
    # Line 1765
    mfc1	$v1,$f6
    # Line 1761
    cvt.s.w	$f2,$f2
    # Line 1769
    sh	$a7,-12($s0)
    # Line 1764
    mfc1	$v0,$f5
    # Line 1760
    cvt.s.w	$f1,$f1
    # Line 1768
    sh	$a6,-14($s0)
    # Line 1763
    mfc1	$at,$f4
    # Line 1759
    cvt.s.w	$f0,$f0
    # Line 1767
    sh	$a5,-16($s0)
    # Line 1762
    mul.s	$f3,$f3,$f20
    # Line 1766
    sh	$a2,-18($s0)
    # Line 1761
    mul.s	$f2,$f2,$f20
    # Line 1765
    sh	$v1,-20($s0)
    # Line 1762
    trunc.w.s	$f3,$f3
    # Line 1760
    mul.s	$f1,$f1,$f20
    # Line 1764
    sh	$v0,-22($s0)
    # Line 1761
    trunc.w.s	$f2,$f2
    # Line 1759
    mul.s	$f0,$f0,$f20
    # Line 1763
    sh	$at,-24($s0)
    # Line 1762
    mfc1	$ra,$f3
    # Line 1760
    trunc.w.s	$f1,$f1
    # Line 1762
    sh	$ra,-26($s0)
    # Line 1761
    mfc1	$t9,$f2
    # Line 1759
    trunc.w.s	$f0,$f0
    # Line 1758
    addiu	$s1,$s1,-1
    # Line 1761
    sh	$t9,-28($s0)
    # Line 1760
    mfc1	$t8,$f1
    sh	$t8,-30($s0)
    # Line 1759
    mfc1	$t3,$f0
    # Line 1758
    bne	$s1,$s2,.L0d93afe0
    # Line 1759
    sh	$t3,-32($s0)
.L0d93b1ac:
    # Line 1778
    ld	$a5,224($sp)
    ld	$a6,208($sp)
    bltz	$a5,.L0d93ae64
    move	$s1,$a5
    move	$a7,$a6
    andi	$a6,$a6,0x1
    beqz	$a6,.L0d93b248
    sra	$a5,$a7,0x1
    # Line 1782
    lh	$a2,6($s0)
    # Line 1781
    lh	$v1,4($s0)
    # Line 1780
    lh	$v0,2($s0)
    # Line 1782
    mtc1	$a2,$f19
    # Line 1779
    lh	$at,0($s0)
    # Line 1781
    mtc1	$v1,$f18
    # Line 1780
    mtc1	$v0,$f17
    # Line 1779
    mtc1	$at,$f16
    # Line 1782
    cvt.s.w	$f19,$f19
    # Line 1781
    cvt.s.w	$f18,$f18
    # Line 1780
    cvt.s.w	$f17,$f17
    # Line 1779
    cvt.s.w	$f16,$f16
    # Line 1782
    mul.s	$f19,$f19,$f20
    # Line 1781
    mul.s	$f18,$f18,$f20
    # Line 1780
    mul.s	$f17,$f17,$f20
    # Line 1782
    trunc.w.s	$f19,$f19
    # Line 1779
    mul.s	$f16,$f16,$f20
    # Line 1781
    trunc.w.s	$f18,$f18
    # Line 1783
    addiu	$s0,$s0,8
    # Line 1778
    ld	$s1,224($sp)
    # Line 1780
    trunc.w.s	$f17,$f17
    # Line 1782
    mfc1	$ra,$f19
    # Line 1779
    trunc.w.s	$f16,$f16
    # Line 1781
    mfc1	$t9,$f18
    # Line 1782
    sh	$ra,-2($s0)
    # Line 1780
    mfc1	$t8,$f17
    # Line 1781
    sh	$t9,-4($s0)
    # Line 1779
    mfc1	$t0,$f16
    # Line 1780
    sh	$t8,-6($s0)
    # Line 1778
    addiu	$s1,$s1,-1
    # Line 1779
    sh	$t0,-8($s0)
.L0d93b248:
    beqz	$a5,.L0d93b33c
    nop
.L0d93b250:
    lh	$v0,0($s0)
    # Line 1780
    lh	$v1,2($s0)
    # Line 1781
    lh	$a2,4($s0)
    # Line 1779
    mtc1	$v0,$f21
    # Line 1782
    lh	$a5,6($s0)
    # Line 1780
    mtc1	$v1,$f23
    # Line 1782
    lh	$t3,14($s0)
    # Line 1781
    mtc1	$a2,$f25
    lh	$t0,12($s0)
    # Line 1782
    mtc1	$a5,$f27
    # Line 1779
    cvt.s.w	$f21,$f21
    # Line 1780
    lh	$a7,10($s0)
    # Line 1782
    mtc1	$t3,$f1
    # Line 1780
    cvt.s.w	$f23,$f23
    # Line 1779
    lh	$a6,8($s0)
    # Line 1781
    mtc1	$t0,$f0
    cvt.s.w	$f25,$f25
    # Line 1780
    mtc1	$a7,$f31
    # Line 1782
    cvt.s.w	$f27,$f27
    # Line 1779
    mtc1	$a6,$f29
    # Line 1782
    cvt.s.w	$f1,$f1
    # Line 1779
    mul.s	$f21,$f21,$f20
    # Line 1781
    cvt.s.w	$f0,$f0
    # Line 1780
    mul.s	$f23,$f23,$f20
    cvt.s.w	$f31,$f31
    # Line 1781
    mul.s	$f25,$f25,$f20
    # Line 1779
    cvt.s.w	$f29,$f29
    # Line 1782
    mul.s	$f27,$f27,$f20
    mul.s	$f1,$f1,$f20
    # Line 1781
    mul.s	$f0,$f0,$f20
    # Line 1780
    mul.s	$f31,$f31,$f20
    # Line 1782
    trunc.w.s	$f1,$f1
    # Line 1779
    mul.s	$f29,$f29,$f20
    # Line 1781
    trunc.w.s	$f0,$f0
    # Line 1783
    addiu	$s0,$s0,16
    # Line 1780
    trunc.w.s	$f31,$f31
    # Line 1782
    mfc1	$at,$f1
    # Line 1779
    trunc.w.s	$f29,$f29
    # Line 1781
    mfc1	$ra,$f0
    # Line 1782
    sh	$at,-2($s0)
    trunc.w.s	$f27,$f27
    # Line 1780
    mfc1	$t9,$f31
    # Line 1781
    sh	$ra,-4($s0)
    trunc.w.s	$f25,$f25
    # Line 1779
    mfc1	$t8,$f29
    # Line 1780
    sh	$t9,-6($s0)
    trunc.w.s	$f23,$f23
    # Line 1782
    mfc1	$t3,$f27
    # Line 1779
    sh	$t8,-8($s0)
    trunc.w.s	$f21,$f21
    # Line 1781
    mfc1	$t0,$f25
    # Line 1782
    sh	$t3,-10($s0)
    # Line 1778
    addiu	$s1,$s1,-2
    # Line 1780
    mfc1	$a7,$f23
    # Line 1781
    sh	$t0,-12($s0)
    # Line 1779
    mfc1	$a6,$f21
    # Line 1780
    sh	$a7,-14($s0)
    # Line 1778
    bne	$s1,$s2,.L0d93b250
    # Line 1779
    sh	$a6,-16($s0)
.L0d93b33c:
    b	.L0d93ae68
    # Line 1678
    ld	$t0,248($sp)
.L0d93b344:
    # Line 1684
    ld	$t9,192($sp)
    sd	$a1,80($sp)
    move	$a0,$t9
    lw	$t9,176($t9)
    ld	$a1,200($sp)
    lui	$a3,0xffff
    ld	$a2,248($sp)
    addu	$a3,$a3,$s8
    ld	$a4,184($sp)
    jalr	$t9
    addiu	$a3,$a3,-32
    li	$a3,256
    li	$a0,257
    # Line 1686
    ld	$a5,216($sp)
    li	$a4,259
    li	$t1,260
    lui	$a7,0xffff
    li	$t2,258
    ld	$a1,80($sp)
    bltz	$a5,.L0d93badc
    move	$s1,$a5
    addu	$a7,$a7,$s8
    addiu	$a7,$a7,-32
.L0d93b3a0:
    # Line 1687
    lwc1	$f17,0($a7)
    mul.s	$f17,$f17,$f26
    trunc.w.s	$f17,$f17
    mfc1	$a5,$f17
    lh	$a2,0($s0)
    addu	$a2,$a2,$a5
    sh	$a2,0($s0)
    # Line 1688
    lwc1	$f16,4($a7)
    mul.s	$f16,$f16,$f22
    trunc.w.s	$f16,$f16
    mfc1	$v1,$f16
    lh	$v0,2($s0)
    addu	$v0,$v0,$v1
    sh	$v0,2($s0)
    # Line 1689
    lwc1	$f15,8($a7)
    mul.s	$f15,$f15,$f28
    trunc.w.s	$f15,$f15
    mfc1	$at,$f15
    lh	$ra,4($s0)
    addu	$ra,$ra,$at
    sh	$ra,4($s0)
    # Line 1690
    lwc1	$f14,12($a7)
    mul.s	$f14,$f14,$f24
    trunc.w.s	$f14,$f14
    mfc1	$t9,$f14
    lh	$t8,6($s0)
    addu	$t8,$t8,$t9
    sh	$t8,6($s0)
    # Line 1692
    lwc1	$f13,16($a7)
    mul.s	$f13,$f13,$f26
    trunc.w.s	$f13,$f13
    mfc1	$t3,$f13
    lh	$t0,8($s0)
    addu	$t0,$t0,$t3
    sh	$t0,8($s0)
    # Line 1693
    lwc1	$f12,20($a7)
    mul.s	$f12,$f12,$f22
    trunc.w.s	$f12,$f12
    mfc1	$a6,$f12
    lh	$a5,10($s0)
    addu	$a5,$a5,$a6
    sh	$a5,10($s0)
    # Line 1694
    lwc1	$f11,24($a7)
    mul.s	$f11,$f11,$f28
    trunc.w.s	$f11,$f11
    mfc1	$a2,$f11
    lh	$v1,12($s0)
    addu	$v1,$v1,$a2
    sh	$v1,12($s0)
    # Line 1695
    lwc1	$f10,28($a7)
    mul.s	$f10,$f10,$f24
    trunc.w.s	$f10,$f10
    mfc1	$v0,$f10
    lh	$at,14($s0)
    addu	$at,$at,$v0
    sh	$at,14($s0)
    # Line 1697
    lwc1	$f9,32($a7)
    mul.s	$f9,$f9,$f26
    trunc.w.s	$f9,$f9
    mfc1	$ra,$f9
    lh	$t9,16($s0)
    addu	$t9,$t9,$ra
    sh	$t9,16($s0)
    # Line 1698
    lwc1	$f8,36($a7)
    mul.s	$f8,$f8,$f22
    trunc.w.s	$f8,$f8
    mfc1	$t8,$f8
    lh	$t3,18($s0)
    addu	$t3,$t3,$t8
    sh	$t3,18($s0)
    # Line 1699
    lwc1	$f7,40($a7)
    mul.s	$f7,$f7,$f28
    trunc.w.s	$f7,$f7
    mfc1	$t0,$f7
    lh	$a6,20($s0)
    addu	$a6,$a6,$t0
    sh	$a6,20($s0)
    # Line 1700
    lwc1	$f6,44($a7)
    mul.s	$f6,$f6,$f24
    trunc.w.s	$f6,$f6
    mfc1	$a5,$f6
    lh	$a2,22($s0)
    addu	$a2,$a2,$a5
    sh	$a2,22($s0)
    # Line 1702
    lwc1	$f5,48($a7)
    mul.s	$f5,$f5,$f26
    trunc.w.s	$f5,$f5
    mfc1	$v1,$f5
    lh	$v0,24($s0)
    addu	$v0,$v0,$v1
    sh	$v0,24($s0)
    # Line 1703
    lwc1	$f4,52($a7)
    mul.s	$f4,$f4,$f22
    trunc.w.s	$f4,$f4
    mfc1	$at,$f4
    lh	$ra,26($s0)
    addu	$ra,$ra,$at
    sh	$ra,26($s0)
    # Line 1704
    lwc1	$f3,56($a7)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$t9,$f3
    lh	$t8,28($s0)
    addu	$t8,$t8,$t9
    sh	$t8,28($s0)
    # Line 1705
    lwc1	$f2,60($a7)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    # Line 1686
    addiu	$s1,$s1,-1
    # Line 1705
    mfc1	$t3,$f2
    lh	$t0,30($s0)
    # Line 1707
    addiu	$a7,$a7,64
    # Line 1706
    addiu	$s0,$s0,32
    # Line 1705
    addu	$t0,$t0,$t3
    # Line 1686
    bne	$s1,$s2,.L0d93b3a0
    # Line 1705
    sh	$t0,-2($s0)
.L0d93b570:
    # Line 1710
    ld	$a6,224($sp)
    ld	$t3,208($sp)
    bltz	$a6,.L0d93ae64
    move	$s1,$a6
    move	$t0,$t3
    andi	$t3,$t3,0x1
    beqz	$t3,.L0d93b610
    sra	$a2,$t0,0x1
    # Line 1711
    lwc1	$f23,0($a7)
    mul.s	$f23,$f23,$f26
    trunc.w.s	$f23,$f23
    lh	$v0,0($s0)
    mfc1	$v1,$f23
    addu	$v0,$v0,$v1
    sh	$v0,0($s0)
    # Line 1712
    lwc1	$f21,4($a7)
    mul.s	$f21,$f21,$f22
    trunc.w.s	$f21,$f21
    lh	$ra,2($s0)
    mfc1	$at,$f21
    addu	$ra,$ra,$at
    sh	$ra,2($s0)
    # Line 1713
    lwc1	$f19,8($a7)
    mul.s	$f19,$f19,$f28
    trunc.w.s	$f19,$f19
    lh	$t8,4($s0)
    mfc1	$t9,$f19
    addu	$t8,$t8,$t9
    sh	$t8,4($s0)
    # Line 1714
    lwc1	$f18,12($a7)
    mul.s	$f18,$f18,$f24
    trunc.w.s	$f18,$f18
    # Line 1710
    ld	$s1,224($sp)
    # Line 1714
    lh	$t8,6($s0)
    mfc1	$t9,$f18
    # Line 1715
    addiu	$s0,$s0,8
    # Line 1716
    addiu	$a7,$a7,16
    # Line 1710
    addiu	$s1,$s1,-1
    # Line 1714
    addu	$t8,$t8,$t9
    sh	$t8,-2($s0)
.L0d93b610:
    beqz	$a2,.L0d93b710
    nop
    nop
    nop
.L0d93b620:
    # Line 1711
    lwc1	$f3,0($a7)
    mul.s	$f3,$f3,$f26
    trunc.w.s	$f3,$f3
    mfc1	$t8,$f3
    lh	$t3,0($s0)
    addu	$t3,$t3,$t8
    sh	$t3,0($s0)
    # Line 1712
    lwc1	$f2,4($a7)
    mul.s	$f2,$f2,$f22
    trunc.w.s	$f2,$f2
    mfc1	$t0,$f2
    lh	$a6,2($s0)
    addu	$a6,$a6,$t0
    sh	$a6,2($s0)
    # Line 1713
    lwc1	$f1,8($a7)
    mul.s	$f1,$f1,$f28
    trunc.w.s	$f1,$f1
    mfc1	$a5,$f1
    lh	$a2,4($s0)
    addu	$a2,$a2,$a5
    sh	$a2,4($s0)
    # Line 1714
    lwc1	$f0,12($a7)
    mul.s	$f0,$f0,$f24
    trunc.w.s	$f0,$f0
    mfc1	$v1,$f0
    lh	$v0,6($s0)
    addu	$v0,$v0,$v1
    sh	$v0,6($s0)
    # Line 1711
    lwc1	$f31,16($a7)
    mul.s	$f31,$f31,$f26
    trunc.w.s	$f31,$f31
    mfc1	$at,$f31
    lh	$ra,8($s0)
    addu	$ra,$ra,$at
    sh	$ra,8($s0)
    # Line 1712
    lwc1	$f29,20($a7)
    mul.s	$f29,$f29,$f22
    trunc.w.s	$f29,$f29
    mfc1	$t9,$f29
    lh	$t8,10($s0)
    addu	$t8,$t8,$t9
    sh	$t8,10($s0)
    # Line 1713
    lwc1	$f27,24($a7)
    mul.s	$f27,$f27,$f28
    trunc.w.s	$f27,$f27
    mfc1	$t3,$f27
    lh	$t0,12($s0)
    addu	$t0,$t0,$t3
    sh	$t0,12($s0)
    # Line 1714
    lwc1	$f25,28($a7)
    mul.s	$f25,$f25,$f24
    trunc.w.s	$f25,$f25
    # Line 1710
    addiu	$s1,$s1,-2
    # Line 1714
    mfc1	$a6,$f25
    lh	$a5,14($s0)
    # Line 1716
    addiu	$a7,$a7,32
    # Line 1715
    addiu	$s0,$s0,16
    # Line 1714
    addu	$a5,$a5,$a6
    # Line 1710
    bne	$s1,$s2,.L0d93b620
    # Line 1714
    sh	$a5,-2($s0)
.L0d93b710:
    b	.L0d93ae68
    # Line 1678
    ld	$t0,248($sp)
.L0d93b718:
    sd	$a1,80($sp)
    # Line 1721
    move	$a0,$t9
    lw	$t9,176($t9)
    ld	$a1,200($sp)
    lui	$a3,0xffff
    ld	$a2,248($sp)
    addu	$a3,$a3,$s8
    ld	$a4,184($sp)
    jalr	$t9
    addiu	$a3,$a3,-32
    li	$a3,256
    li	$a0,257
    # Line 1723
    ld	$a5,216($sp)
    li	$a4,259
    li	$t1,260
    lui	$a7,0xffff
    li	$t2,258
    ld	$a1,80($sp)
    bltz	$a5,.L0d93baec
    move	$s1,$a5
    addu	$a7,$a7,$s8
    addiu	$a7,$a7,-32
.L0d93b770:
    # Line 1724
    lwc1	$f19,0($a7)
    mul.s	$f19,$f19,$f26
    trunc.w.s	$f19,$f19
    mfc1	$ra,$f19
    sh	$ra,0($s0)
    # Line 1725
    lwc1	$f18,4($a7)
    mul.s	$f18,$f18,$f22
    trunc.w.s	$f18,$f18
    mfc1	$t9,$f18
    sh	$t9,2($s0)
    # Line 1726
    lwc1	$f17,8($a7)
    mul.s	$f17,$f17,$f28
    trunc.w.s	$f17,$f17
    mfc1	$t8,$f17
    sh	$t8,4($s0)
    # Line 1727
    lwc1	$f16,12($a7)
    mul.s	$f16,$f16,$f24
    trunc.w.s	$f16,$f16
    mfc1	$t3,$f16
    sh	$t3,6($s0)
    # Line 1729
    lwc1	$f15,16($a7)
    mul.s	$f15,$f15,$f26
    trunc.w.s	$f15,$f15
    mfc1	$t0,$f15
    sh	$t0,8($s0)
    # Line 1730
    lwc1	$f14,20($a7)
    mul.s	$f14,$f14,$f22
    trunc.w.s	$f14,$f14
    mfc1	$a6,$f14
    sh	$a6,10($s0)
    # Line 1731
    lwc1	$f13,24($a7)
    mul.s	$f13,$f13,$f28
    trunc.w.s	$f13,$f13
    mfc1	$a5,$f13
    sh	$a5,12($s0)
    # Line 1732
    lwc1	$f12,28($a7)
    mul.s	$f12,$f12,$f24
    trunc.w.s	$f12,$f12
    mfc1	$a2,$f12
    sh	$a2,14($s0)
    # Line 1734
    lwc1	$f11,32($a7)
    mul.s	$f11,$f11,$f26
    trunc.w.s	$f11,$f11
    mfc1	$v1,$f11
    sh	$v1,16($s0)
    # Line 1735
    lwc1	$f10,36($a7)
    mul.s	$f10,$f10,$f22
    trunc.w.s	$f10,$f10
    mfc1	$v0,$f10
    sh	$v0,18($s0)
    # Line 1736
    lwc1	$f9,40($a7)
    mul.s	$f9,$f9,$f28
    trunc.w.s	$f9,$f9
    mfc1	$at,$f9
    sh	$at,20($s0)
    # Line 1737
    lwc1	$f8,44($a7)
    mul.s	$f8,$f8,$f24
    trunc.w.s	$f8,$f8
    mfc1	$ra,$f8
    sh	$ra,22($s0)
    # Line 1739
    lwc1	$f7,48($a7)
    mul.s	$f7,$f7,$f26
    trunc.w.s	$f7,$f7
    mfc1	$t9,$f7
    sh	$t9,24($s0)
    # Line 1740
    lwc1	$f6,52($a7)
    mul.s	$f6,$f6,$f22
    trunc.w.s	$f6,$f6
    mfc1	$t8,$f6
    sh	$t8,26($s0)
    # Line 1741
    lwc1	$f5,56($a7)
    mul.s	$f5,$f5,$f28
    trunc.w.s	$f5,$f5
    mfc1	$t3,$f5
    sh	$t3,28($s0)
    # Line 1742
    lwc1	$f4,60($a7)
    mul.s	$f4,$f4,$f24
    trunc.w.s	$f4,$f4
    # Line 1723
    addiu	$s1,$s1,-1
    # Line 1743
    addiu	$s0,$s0,32
    # Line 1742
    mfc1	$t0,$f4
    # Line 1744
    addiu	$a7,$a7,64
    # Line 1723
    bne	$s1,$s2,.L0d93b770
    # Line 1742
    sh	$t0,-2($s0)
.L0d93b8c0:
    # Line 1747
    ld	$at,224($sp)
    ld	$v0,208($sp)
    bltz	$at,.L0d93ae64
    move	$s1,$at
    move	$t0,$v0
    andi	$v0,$v0,0x1
    beqz	$v0,.L0d93b940
    sra	$at,$t0,0x1
    # Line 1748
    lwc1	$f27,0($a7)
    mul.s	$f27,$f27,$f26
    trunc.w.s	$f27,$f27
    mfc1	$ra,$f27
    sh	$ra,0($s0)
    # Line 1749
    lwc1	$f25,4($a7)
    mul.s	$f25,$f25,$f22
    trunc.w.s	$f25,$f25
    mfc1	$t9,$f25
    sh	$t9,2($s0)
    # Line 1750
    lwc1	$f23,8($a7)
    mul.s	$f23,$f23,$f28
    trunc.w.s	$f23,$f23
    mfc1	$t8,$f23
    sh	$t8,4($s0)
    # Line 1751
    lwc1	$f21,12($a7)
    mul.s	$f21,$f21,$f24
    trunc.w.s	$f21,$f21
    # Line 1747
    ld	$s1,224($sp)
    # Line 1752
    addiu	$s0,$s0,8
    # Line 1751
    mfc1	$v1,$f21
    # Line 1753
    addiu	$a7,$a7,16
    # Line 1747
    addiu	$s1,$s1,-1
    # Line 1751
    sh	$v1,-2($s0)
.L0d93b940:
    beqz	$at,.L0d93ba00
    nop
    nop
    nop
.L0d93b950:
    # Line 1748
    lwc1	$f5,0($a7)
    mul.s	$f5,$f5,$f26
    trunc.w.s	$f5,$f5
    mfc1	$t8,$f5
    sh	$t8,0($s0)
    # Line 1749
    lwc1	$f4,4($a7)
    mul.s	$f4,$f4,$f22
    trunc.w.s	$f4,$f4
    mfc1	$t3,$f4
    sh	$t3,2($s0)
    # Line 1750
    lwc1	$f3,8($a7)
    mul.s	$f3,$f3,$f28
    trunc.w.s	$f3,$f3
    mfc1	$t0,$f3
    sh	$t0,4($s0)
    # Line 1751
    lwc1	$f2,12($a7)
    mul.s	$f2,$f2,$f24
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f2
    sh	$a6,6($s0)
    # Line 1748
    lwc1	$f1,16($a7)
    mul.s	$f1,$f1,$f26
    trunc.w.s	$f1,$f1
    mfc1	$a5,$f1
    sh	$a5,8($s0)
    # Line 1749
    lwc1	$f0,20($a7)
    mul.s	$f0,$f0,$f22
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    sh	$a2,10($s0)
    # Line 1750
    lwc1	$f31,24($a7)
    mul.s	$f31,$f31,$f28
    trunc.w.s	$f31,$f31
    mfc1	$v1,$f31
    sh	$v1,12($s0)
    # Line 1751
    lwc1	$f29,28($a7)
    mul.s	$f29,$f29,$f24
    trunc.w.s	$f29,$f29
    # Line 1747
    addiu	$s1,$s1,-2
    # Line 1752
    addiu	$s0,$s0,16
    # Line 1751
    mfc1	$v0,$f29
    # Line 1753
    addiu	$a7,$a7,32
    # Line 1747
    bne	$s1,$s2,.L0d93b950
    # Line 1751
    sh	$v0,-2($s0)
.L0d93ba00:
    b	.L0d93ae68
    # Line 1678
    ld	$t0,248($sp)
.L0d93ba08:
    # Line 1802
    ld	$t9,192($sp)
    sd	$a1,80($sp)
    move	$a0,$t9
    lw	$t9,180($t9)
    ld	$a1,200($sp)
    ld	$a2,248($sp)
    mov.s	$f16,$f20
    move	$a5,$s1
    jalr	$t9
    ld	$a3,80($sp)
    ld	$ra,176($sp)
    lbu	$ra,30652($ra)
    li	$a3,256
    li	$a0,257
    li	$a4,259
    li	$t1,260
    ld	$a1,80($sp)
    beqz	$ra,.L0d93ae64
    li	$t2,258
    # Line 1804
    lw	$t9,12($sp)
    move	$a0,$t9
    lw	$t9,180($t9)
    ld	$a1,200($sp)
    ld	$a2,248($sp)
    ld	$a3,80($sp)
    mov.s	$f16,$f20
    jalr	$t9
    move	$a5,$s1
    li	$a3,256
    li	$a0,257
    li	$a4,259
    li	$t1,260
    ld	$a1,80($sp)
    b	.L0d93ae64
    li	$t2,258
.L0d93ba94:
    # Line 1812
    ld	$s0,120($sp)
    ld	$s1,168($sp)
    ld	$s2,160($sp)
    ld	$s3,144($sp)
    ld	$s4,112($sp)
    ld	$s5,152($sp)
    ld	$s6,104($sp)
    ld	$s7,96($sp)
    ldc1	$f20,72($sp)
    ldc1	$f22,56($sp)
    ldc1	$f24,48($sp)
    ldc1	$f26,64($sp)
    ld	$ra,128($sp)
    ld	$at,136($sp)
    ldc1	$f28,40($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d93badc:
    # Line 1686
    lui	$a7,0xffff
    addu	$a7,$a7,$s8
    b	.L0d93b570
    addiu	$a7,$a7,-32
.L0d93baec:
    # Line 1723
    lui	$a7,0xffff
    addu	$a7,$a7,$s8
    b	.L0d93b8c0
    addiu	$a7,$a7,-32
.L0d93bafc:
    # Line 1656
    ld	$t0,176($sp)
.L0d93bb00:
    lw	$t0,11764($t0)
    sw	$t0,8($sp)
    # Line 1655
    lwc1	$f9,84($a0)
    # Line 1654
    lwc1	$f8,80($a0)
    # Line 1653
    lwc1	$f7,76($a0)
    # Line 1652
    lwc1	$f6,72($a0)
    # Line 1655
    mul.s	$f9,$f9,$f20
    # Line 1654
    mul.s	$f8,$f8,$f20
    # Line 1655
    swc1	$f9,36($sp)
    # Line 1653
    mul.s	$f7,$f7,$f20
    # Line 1654
    swc1	$f8,32($sp)
    # Line 1652
    mul.s	$f6,$f6,$f20
    # Line 1653
    swc1	$f7,28($sp)
    b	.L0d93addc
    # Line 1652
    swc1	$f6,24($sp)
.L0d93bb3c:
    # Line 1663
    lwc1	$f12,80($a0)
    # Line 1665
    lwc1	$f15,30792($t9)
    # Line 1663
    lwc1	$f14,30760($t9)
    # Line 1665
    lwc1	$f13,84($a0)
    # Line 1661
    lwc1	$f16,30756($t9)
    # Line 1665
    mul.s	$f15,$f15,$f20
    # Line 1659
    lwc1	$f10,3540($t9)
    # Line 1663
    mul.s	$f14,$f14,$f20
    # Line 1665
    madd.s	$f13,$f10,$f13,$f15
    # Line 1659
    lwc1	$f15,30752($t9)
    # Line 1661
    lwc1	$f11,76($a0)
    mul.s	$f16,$f16,$f20
    # Line 1663
    madd.s	$f12,$f10,$f12,$f14
    # Line 1659
    lwc1	$f14,72($a0)
    mul.s	$f15,$f15,$f20
    # Line 1661
    madd.s	$f11,$f10,$f11,$f16
    # Line 1659
    madd.s	$f10,$f10,$f14,$f15
    # Line 1665
    trunc.w.s	$f13,$f13
    # Line 1663
    trunc.w.s	$f12,$f12
    # Line 1661
    trunc.w.s	$f11,$f11
    # Line 1665
    mfc1	$t8,$f13
    # Line 1663
    mfc1	$t3,$f12
    # Line 1665
    sh	$t8,22($sp)
    # Line 1659
    trunc.w.s	$f10,$f10
    # Line 1661
    mfc1	$t2,$f11
    # Line 1663
    sh	$t3,20($sp)
    # Line 1661
    sh	$t2,18($sp)
    # Line 1659
    mfc1	$t1,$f10
    # Line 1667
    b	.L0d93addc
    # Line 1659
    sh	$t1,16($sp)
.L0d93bbb4:
    # Line 1669
    ld	$ra,176($sp)
    lbu	$at,30652($ra)
    lw	$ra,11760($ra)
    sd	$ra,192($sp)
    beqz	$at,.L0d93bbec
    sw	$ra,8($sp)
    ld	$v1,176($sp)
    ld	$v0,192($sp)
    addiu	$at,$v1,30664
    # Line 1671
    addiu	$v1,$v1,30884
    xor	$v0,$at,$v0
    movz	$at,$v1,$v0
    b	.L0d93addc
    sw	$at,12($sp)
.L0d93bbec:
    b	.L0d93addc
    # Line 1673
    sw	$zero,12($sp)
.end SoftAccumOp

# Function: SetupForSoftPathFallBack
# Declared: Line 1818 (Source lines: 1825-1868)
# Address: 0x0d93bc00 - 0x0d93bcac (Size: 172 bytes, Frame: 48)
.ent SetupForSoftPathFallBack
SetupForSoftPathFallBack:
    # Line 1825
    addiu	$sp,$sp,-48
    # Line 1827
    lui	$a3,0x1
    # Line 1825
    sd	$s0,0($sp)
    # Line 1827
    addu	$a3,$a0,$a3
    lw	$s0,-32520($a3)
    # Line 1825
    move	$a4,$a1
    sd	$s1,8($sp)
    move	$s1,$a0
    # Line 1844
    beqz	$s0,.L0d93bc78
    sd	$ra,32($sp)
    lbu	$a5,4($s0)
    beqz	$a5,.L0d93bc7c
    # Line 1861
    nop	# was lw $t9, -27196($gp) # &__glInitAccum64
    # Line 1847
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,-28432
    sd	$a1,16($sp)
    sd	$a3,24($sp)
    bal __glBeginLLoop
    move	$a0,$s0
    lw	$a0,0($s0)
    bltz	$a0,.L0d93bc60
    # Line 1851
    nop	# was lw $t9, -22952($gp) # &vice_close
    jal	vice_close
    nop
.L0d93bc60:
    # Line 1854
    lw	$t9,31500($s1)
    lw	$t9,20($t9)
    jalr	$t9
    move	$a0,$s0
    ld	$a3,24($sp)
    ld	$a4,16($sp)
.L0d93bc78:
    # Line 1861
    # lw $t9, -27196($gp) # &__glInitAccum64
.L0d93bc7c:
    move	$a1,$s1
    move	$a0,$a4
    jal	__glInitAccum64
    # Line 1858
    sw	$zero,-32520($a3)
    ld	$s0,0($sp)
    # Line 1867
    sb	$zero,32010($s1)
    ld	$ra,32($sp)
    # Line 1864
    la	$at,__glCrmAllocAccum
    sw	$at,31492($s1)
    # Line 1868
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SetupForSoftPathFallBack

.rdata
_lit8_40dfffc000000000:
    .word 0x40dfffc0, 0x00000000
_lit8_40e0000000000000:
    .word 0x40e00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_46fffe00:
    .word 0x46fffe00

