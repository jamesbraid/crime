# Source: ../CRIME/vice_pixel.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/vice_pixel.c
# Total Functions: 26

.text

# Function: viceInitDev
# Declared: Line 117 (Source lines: 118-194)
# Address: 0x0da3b740 - 0x0da3b884 (Size: 324 bytes, Frame: 16)
.ent viceInitDev
viceInitDev:
    # Line 121
    lw	$at,32568($a0)
    # Line 118
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 121
    bltz	$at,.L0da3b858
    sd	$ra,8($sp)
.L0da3b758:
    # Line 129
    # lw $t9, -22976($gp) # &vice_open_and_setetc
    la	$a0,sub_0da40000
    jal	vice_open_and_setetc
    addiu	$a0,$a0,9768
    bltz	$v0,.L0da3b7a8
    sw	$v0,32572($s0)
    # Line 131
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    bal vice_gfxfile
    addiu	$a0,$a0,9784
    # lw $t9, -22968($gp) # &vice_load_msp_code
    move	$a1,$v0
    move	$a3,$zero
    addiu	$a2,$s0,32716
    jal	vice_load_msp_code
    lw	$a0,32572($s0)
    slti	$a1,$v0,0
    xori	$a1,$a1,0x1
    b	.L0da3b7ac
    sw	$a1,-22352($gp)
.L0da3b7a8:
    # Line 146
    sw	$zero,-22352($gp)
.L0da3b7ac:
    # Line 152
    # lw $t9, -22976($gp) # &vice_open_and_setetc
    la	$a0,sub_0da40000
    jal	vice_open_and_setetc
    addiu	$a0,$a0,9768
    bltz	$v0,.L0da3b804
    sw	$v0,32576($s0)
    # Line 154
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    bal vice_gfxfile
    addiu	$a0,$a0,9800
    # lw $t9, -22968($gp) # &vice_load_msp_code
    move	$a1,$v0
    move	$a3,$zero
    li	$a2,0x8024
    lw	$a0,32576($s0)
    jal	vice_load_msp_code
    addu	$a2,$s0,$a2
    ld	$ra,8($sp)
    slti	$a3,$v0,0
    xori	$a3,$a3,0x1
    b	.L0da3b80c
    sw	$a3,-22348($gp)
.L0da3b804:
    ld	$ra,8($sp)
    # Line 169
    sw	$zero,-22348($gp)
.L0da3b80c:
    # Line 188
    li	$a1,12
    sw	$a1,32712($s0)
    # Line 186
    li	$a0,0x8000
    sw	$a0,32708($s0)
    # Line 184
    li	$v0,1
    sw	$v0,32668($s0)
    # Line 182
    sw	$zero,32648($s0)
    # Line 178
    li	$v1,-1
    # Line 181
    sw	$v1,32644($s0)
    # Line 179
    sw	$v1,32624($s0)
    sw	$v1,32628($s0)
    # Line 178
    sw	$v1,32616($s0)
    sw	$v1,32620($s0)
    # Line 176
    sw	$zero,32640($s0)
    # Line 175
    sw	$zero,32636($s0)
    # Line 174
    sw	$zero,32632($s0)
    # Line 194
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da3b858:
    # Line 121
    # lw $t9, -22976($gp) # &vice_open_and_setetc
    la	$a0,sub_0da40000
    jal	vice_open_and_setetc
    addiu	$a0,$a0,9768
    bgez	$v0,.L0da3b758
    sw	$v0,32568($s0)
    ld	$ra,8($sp)
    # Line 126
    move	$v0,$zero
    # Line 194
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end viceInitDev

# Function: vice_gfxfile
# Declared: Line 199 (Source lines: 200-221)
# Address: 0x0da3b890 - 0x0da3b990 (Size: 256 bytes, Frame: 32)
.globl vice_gfxfile
.ent vice_gfxfile
vice_gfxfile:
    # Line 200
    addiu	$sp,$sp,-32
    lui	$t8,0x1
    sd	$s0,8($sp)
    addiu	$t8,$t8,21756
    sd	$gp,0($sp)
    addu	$gp,$t9,$t8
    la	$s0,sub_0da60000
    lbu	$at,1176($s0)
    move	$a1,$a0
    sd	$ra,24($sp)
    beqz	$at,.L0da3b8fc
    addiu	$s0,$s0,1176
    # Line 214
    lw	$a0,-22344($gp)
    addu	$a0,$a0,$s0
.L0da3b8c8:
    # Line 217
    # lw $t9, -22732($gp) # &strcpy
    jal	strcpy
    nop
    # Line 218
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,9816
    ld	$ra,24($sp)
    # Line 221
    ld	$gp,0($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b8fc:
    sd	$a0,16($sp)
    # Line 205
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,9816
    beqz	$v0,.L0da3b92c
    # Line 207
    nop	# was lw $t9, -22732($gp) # &strcpy
    move	$a0,$s0
    jal	strcpy
    move	$a1,$v0
    b	.L0da3b958
    # Line 212
    nop	# was lw $t9, -22728($gp) # &strlen
.L0da3b92c:
    # Line 210
    la	$a1,sub_0da40000
    ld	$a2,9832($a1)
    addiu	$a1,$a1,9832
    lbu	$a3,24($a1)
    sd	$a2,0($s0)
    ld	$a2,16($a1)
    ld	$a1,8($a1)
    sb	$a3,24($s0)
    sd	$a2,16($s0)
    sd	$a1,8($s0)
    # Line 212
    # lw $t9, -22728($gp) # &strlen
.L0da3b958:
    jal	strlen
    move	$a0,$s0
    addu	$a0,$v0,$s0
    lbu	$a3,-1($a0)
    li	$a4,47
    beq	$a4,$a3,.L0da3b988
    ld	$a1,16($sp)
    # Line 214
    addiu	$a0,$v0,1
    sw	$a0,-22344($gp)
    addu	$a0,$a0,$s0
    b	.L0da3b8c8
    sb	$a4,-1($a0)
.L0da3b988:
    b	.L0da3b8c8
    sw	$v0,-22344($gp)
.end vice_gfxfile

# Function: viceFreeTiles
# Declared: Line 228 (Source lines: 230-277)
# Address: 0x0da3b990 - 0x0da3ba98 (Size: 264 bytes, Frame: 16)
.ent viceFreeTiles
viceFreeTiles:
    # Line 230
    lw	$a2,24($a0)
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    move	$s0,$a0
    beqz	$a2,.L0da3b9b8
    sd	$ra,8($sp)
    # Line 232
    # lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    move	$a0,$a2
    # Line 233
    sw	$zero,24($s0)
.L0da3b9b8:
    lw	$a0,28($s0)
    beqz	$a0,.L0da3b9d0
    # Line 237
    nop	# was lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    nop
    # Line 238
    sw	$zero,28($s0)
.L0da3b9d0:
    lw	$a0,32($s0)
    beqz	$a0,.L0da3b9e8
    # Line 242
    nop	# was lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    nop
    # Line 243
    sw	$zero,32($s0)
.L0da3b9e8:
    lw	$a0,12($s0)
    beqz	$a0,.L0da3ba00
    # Line 247
    nop	# was lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    nop
    # Line 248
    sw	$zero,12($s0)
.L0da3ba00:
    lw	$a0,16($s0)
    beqz	$a0,.L0da3ba18
    # Line 252
    nop	# was lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    nop
    # Line 253
    sw	$zero,16($s0)
.L0da3ba18:
    lw	$a0,20($s0)
    beqz	$a0,.L0da3ba30
    # Line 257
    nop	# was lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    nop
    # Line 258
    sw	$zero,20($s0)
.L0da3ba30:
    lw	$a0,36($s0)
    beqz	$a0,.L0da3ba48
    # Line 262
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
    # Line 263
    sw	$zero,36($s0)
.L0da3ba48:
    lw	$a0,40($s0)
    beqz	$a0,.L0da3ba60
    # Line 267
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
    # Line 268
    sw	$zero,40($s0)
.L0da3ba60:
    lw	$a0,44($s0)
    beqz	$a0,.L0da3ba8c
    ld	$ra,8($sp)
    # Line 272
    # lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
    ld	$ra,8($sp)
    # Line 273
    sw	$zero,44($s0)
    # Line 277
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da3ba8c:
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end viceFreeTiles

# Function: viceAllocMem
# Declared: Line 280 (Source lines: 282-451)
# Address: 0x0da3baa0 - 0x0da3be34 (Size: 916 bytes, Frame: 48)
.ent viceAllocMem
viceAllocMem:
    # Line 282
    addiu	$sp,$sp,-48
    # Line 305
    # lw $t9, -22948($gp) # &dmParamsCreate
    # Line 282
    sd	$a1,16($sp)
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$ra,24($sp)
    # Line 305
    jal	dmParamsCreate
    addiu	$a0,$a0,32612
    # Line 306
    # lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    li	$a4,1
    move	$a3,$zero
    lui	$a2,0x1
    li	$a1,1
    jal	dmBufferSetPoolDefaults
    lw	$a0,32612($s0)
    # Line 311
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 315
    # lw $t9, -22940($gp) # &vice_dmbuf_requirements
    jal	vice_dmbuf_requirements
    lw	$a0,32612($s0)
    # Line 316
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,32588
    jal	dmBufferCreatePool
    lw	$a0,32612($s0)
    # Line 318
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 322
    # lw $t9, -22932($gp) # &dmBufferAllocate
    addiu	$a1,$s0,32600
    jal	dmBufferAllocate
    lw	$a0,32588($s0)
    # Line 323
    beqz	$v0,.L0da3bb40
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
.L0da3bb20:
    addiu	$t9,$t9,-18032
    bal vice_gfxfile
    addiu	$a0,$s0,32568
    # Line 451
    ld	$ra,24($sp)
    move	$v0,$zero
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3bb40:
    # Line 326
    # lw $t9, -22928($gp) # &dmBufferMapData
    jal	dmBufferMapData
    lw	$a0,32600($s0)
    # Line 337
    # lw $t9, -22948($gp) # &dmParamsCreate
    addiu	$a0,$s0,32604
    jal	dmParamsCreate
    # Line 326
    sw	$v0,32640($s0)
    # Line 338
    # lw $t9, -22948($gp) # &dmParamsCreate
    jal	dmParamsCreate
    addiu	$a0,$s0,32608
    # Line 341
    ld	$a2,16($sp)
    lw	$a3,24($a2)
    # Line 340
    lw	$a2,20($a2)
    # Line 347
    li	$a4,0xffff
    # Line 346
    slt	$a6,$a2,$zero
    # Line 347
    addu	$a4,$a3,$a4
    slt	$a5,$a3,$zero
    movz	$a4,$a3,$a5
    # Line 346
    li	$a5,0xffff
    # Line 344
    sw	$a3,32628($s0)
    # Line 347
    sra	$a4,$a4,0x10
    # Line 346
    addu	$a5,$a2,$a5
    # Line 343
    sw	$a2,32624($s0)
    # Line 347
    andi	$ra,$a2,0xffff
    # Line 346
    movz	$a5,$a2,$a6
    # Line 347
    sw	$a4,32620($s0)
    # Line 346
    sra	$a5,$a5,0x10
    # Line 347
    beqz	$ra,.L0da3bbbc
    # Line 346
    sw	$a5,32616($s0)
    # Line 350
    addiu	$a6,$a5,1
    sw	$a6,32616($s0)
.L0da3bbbc:
    andi	$a7,$a3,0xffff
    beqz	$a7,.L0da3bbcc
    # Line 353
    addiu	$t0,$a4,1
    sw	$t0,32620($s0)
.L0da3bbcc:
    # Line 358
    lw	$a6,32060($s0)
    sd	$a3,8($sp)
    li	$a5,4
    bne	$a2,$a3,.L0da3bc00
    lw	$a4,0($a6)
    beq	$a4,$a5,.L0da3bd00
    nop
.L0da3bbe8:
    lw	$a3,32056($s0)
    lw	$t1,0($a3)
    beq	$t1,$a5,.L0da3bd34
.L0da3bbf4:
    li	$t2,2
.L0da3bbf8:
    b	.L0da3bc08
    sd	$t2,0($sp)
.L0da3bc00:
    li	$t3,1
    sd	$t3,0($sp)
.L0da3bc08:
    # Line 370
    bne	$a4,$a5,.L0da3bc3c
    # Line 374
    nop	# was lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    # Line 370
    lw	$a3,4($a6)
    lbu	$t8,4($a3)
    beqz	$t8,.L0da3bc3c
    # Line 374
    nop	# was lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    # Line 370
    lw	$t9,40($a3)
    li	$ra,16
    beq	$t9,$ra,.L0da3bcac
    nop
    lw	$at,44($a3)
    beqz	$at,.L0da3bcac
    # Line 374
    nop	# was lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
.L0da3bc3c:
    li	$a4,1
    ld	$a1,0($sp)
    move	$a3,$zero
    jal	dmBufferSetPoolDefaults
    lw	$a0,32604($s0)
    # Line 379
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 383
    # lw $t9, -22940($gp) # &vice_dmbuf_requirements
    jal	vice_dmbuf_requirements
    lw	$a0,32604($s0)
    # Line 384
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,32580
    jal	dmBufferCreatePool
    lw	$a0,32604($s0)
    # Line 385
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 389
    # lw $t9, -22932($gp) # &dmBufferAllocate
    addiu	$a1,$s0,32592
    jal	dmBufferAllocate
    lw	$a0,32580($s0)
    # Line 390
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 394
    # lw $t9, -22928($gp) # &dmBufferMapData
    jal	dmBufferMapData
    lw	$a0,32592($s0)
    li	$a5,4
    b	.L0da3bcb0
    sw	$v0,32632($s0)
.L0da3bcac:
    # Line 396
    sw	$zero,32632($s0)
.L0da3bcb0:
    # Line 399
    lw	$a3,32056($s0)
    lw	$v0,0($a3)
    beq	$v0,$a5,.L0da3bd68
    # Line 401
    ld	$v1,0($sp)
.L0da3bcc0:
    li	$a0,1
    beq	$v1,$a0,.L0da3bdb4
    # Line 403
    nop	# was lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    # Line 401
    ld	$a1,0($sp)
    li	$a2,2
    beq	$a1,$a2,.L0da3be18
    # Line 427
    nop	# was lw $t9, -22932($gp) # &dmBufferAllocate
    # Line 437
    # lw $t9, -22928($gp) # &dmBufferMapData
.L0da3bce0:
    jal	dmBufferMapData
    lw	$a0,32596($s0)
    sw	$v0,32636($s0)
.L0da3bcec:
    # Line 451
    ld	$ra,24($sp)
    # Line 447
    li	$v0,1
    # Line 451
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3bd00:
    # Line 358
    lw	$a3,4($a6)
    lbu	$a7,4($a3)
    beqz	$a7,.L0da3bbe8
    nop
    lw	$t0,40($a3)
    li	$t1,16
    beq	$t0,$t1,.L0da3bd9c
    nop
    lw	$t2,44($a3)
    bnez	$t2,.L0da3bbe8
    li	$t3,1
    b	.L0da3bc08
    sd	$t3,0($sp)
.L0da3bd34:
    lw	$a7,4($a3)
    lbu	$t8,4($a7)
    beqz	$t8,.L0da3bbf8
    li	$t2,2
    lw	$t9,40($a7)
    li	$ra,16
    beq	$t9,$ra,.L0da3bda8
    nop
    lw	$at,44($a7)
    bnez	$at,.L0da3bbf4
    li	$v0,1
    b	.L0da3bc08
    sd	$v0,0($sp)
.L0da3bd68:
    # Line 399
    lw	$a7,4($a3)
    lbu	$v1,4($a7)
    beqz	$v1,.L0da3bcc0
    # Line 401
    ld	$v1,0($sp)
    # Line 399
    lw	$a0,40($a7)
    li	$a1,16
    beq	$a0,$a1,.L0da3bd94
    nop
    lw	$a2,44($a7)
    bnez	$a2,.L0da3bcc0
    # Line 401
    ld	$v1,0($sp)
.L0da3bd94:
    # Line 440
    b	.L0da3bcec
    sw	$zero,32636($s0)
.L0da3bd9c:
    # Line 358
    li	$a3,1
    b	.L0da3bc08
    sd	$a3,0($sp)
.L0da3bda8:
    li	$a7,1
    b	.L0da3bc08
    sd	$a7,0($sp)
.L0da3bdb4:
    # Line 403
    ld	$a2,8($sp)
    move	$a3,$zero
    ld	$a1,0($sp)
    move	$a4,$a0
    jalr	$t9
    lw	$a0,32608($s0)
    # Line 409
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 413
    # lw $t9, -22940($gp) # &vice_dmbuf_requirements
    jal	vice_dmbuf_requirements
    lw	$a0,32608($s0)
    # Line 414
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,32584
    jal	dmBufferCreatePool
    lw	$a0,32608($s0)
    # Line 415
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 419
    # lw $t9, -22932($gp) # &dmBufferAllocate
    addiu	$a1,$s0,32596
    jal	dmBufferAllocate
    lw	$a0,32584($s0)
    # Line 421
    bnez	$v0,.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    b	.L0da3bce0
    # Line 437
    nop	# was lw $t9, -22928($gp) # &dmBufferMapData
.L0da3be18:
    # Line 427
    addiu	$a1,$s0,32596
    jal	dmBufferMapData
    lw	$a0,32580($s0)
    # Line 429
    beqz	$v0,.L0da3bce0
    # Line 437
    nop	# was lw $t9, -22928($gp) # &dmBufferMapData
    b	.L0da3bb20
    # Line 450
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
.end viceAllocMem

# Function: viceCloseDev
# Declared: Line 458 (Source lines: 460-489)
# Address: 0x0da3be40 - 0x0da3bef4 (Size: 180 bytes, Frame: 32)
.globl viceCloseDev
.ent viceCloseDev
viceCloseDev:
    # Line 460
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lui	$at,0x1
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,20300
    sd	$gp,8($sp)
    beqz	$a0,.L0da3bee0
    addu	$gp,$t9,$at
    # Line 471
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t9,$t9,-18032
    bal vice_gfxfile
    addiu	$a0,$a0,32568
    lw	$a0,32568($s0)
    bltz	$a0,.L0da3be90
    # Line 474
    nop	# was lw $t9, -22952($gp) # &vice_close
    jal	vice_close
    nop
    # Line 475
    li	$ra,-1
    sw	$ra,32568($s0)
.L0da3be90:
    lw	$a0,32572($s0)
    bltz	$a0,.L0da3beac
    # Line 479
    nop	# was lw $t9, -22952($gp) # &vice_close
    jal	vice_close
    nop
    # Line 480
    li	$at,-1
    sw	$at,32572($s0)
.L0da3beac:
    lw	$a0,32576($s0)
    bltz	$a0,.L0da3bee4
    ld	$ra,16($sp)
    # Line 484
    # lw $t9, -22952($gp) # &vice_close
    jal	vice_close
    nop
    ld	$ra,16($sp)
    # Line 489
    ld	$gp,8($sp)
    # Line 485
    li	$v0,-1
    sw	$v0,32576($s0)
    # Line 489
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bee0:
    ld	$ra,16($sp)
.L0da3bee4:
    ld	$s0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end viceCloseDev

# Function: __vcopy
# Declared: Line 493 (Source lines: 495-602)
# Address: 0x0da3bf00 - 0x0da3c14c (Size: 588 bytes, Frame: 240)
.globl __vcopy
.ent __vcopy
__vcopy:
    # Line 495
    addiu	$sp,$sp,-112
    lui	$v0,0x1
    sd	$s5,24($sp)
    addiu	$v0,$v0,20108
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 499
    li	$a4,1
    # Line 506
    lw	$at,-22352($gp)
    # Line 495
    move	$s5,$a2
    sd	$s2,8($sp)
    move	$s2,$a3
    # Line 516
    lui	$a3,0x2
    # Line 495
    sd	$s1,16($sp)
    move	$s1,$a0
    # Line 506
    beqz	$at,.L0da3c0e8
    # Line 495
    move	$v0,$a1
    # Line 506
    sltiu	$v1,$a2,16384
    bnez	$v1,.L0da3c0e8
    # Line 516
    li	$a5,0xaaaa
    ori	$a3,$a3,0xffff
    addu	$a3,$a2,$a3
    dsll	$a5,$a5,0x10
    ori	$a5,$a5,0xaaab
    srl	$a3,$a3,0x1
    multu	$a3,$a5
    sd	$s0,88($sp)
    # Line 507
    lui	$s0,0x3
    sd	$s8,56($sp)
    sltu	$a1,$s0,$a2
    # Line 516
    mfhi	$a2
    sd	$ra,64($sp)
    move	$a3,$a4
    srl	$a2,$a2,0x10
    sd	$s4,72($sp)
    movz	$a2,$a3,$a1
    # Line 529
    li	$a0,-1
    sd	$s6,96($sp)
    addiu	$s6,$a2,-1
    sd	$s7,80($sp)
    sd	$s3,48($sp)
    beq	$s6,$a0,.L0da3c104
    movz	$s0,$s5,$a1
    move	$s3,$zero
    addiu	$a4,$s2,148
    sd	$a4,40($sp)
    sd	$s8,56($sp)
    sd	$ra,64($sp)
    sd	$s4,72($sp)
    sd	$s7,80($sp)
    b	.L0da3c088
    sd	$v0,0($sp)
    nop
.L0da3bfd0:
    # Line 559
    li	$a5,0xffff
    li	$s8,0xffff
    addu	$a5,$s0,$a5
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    addu	$s8,$a5,$s8
    slt	$a4,$a5,$zero
    move	$a3,$s3
    ld	$a2,0($sp)
    movz	$s8,$a5,$a4
    li	$a1,50
    lw	$a0,4($s2)
    sra	$s8,$s8,0x10
    lw	$a2,0($a2)
    jal	vice_dmbuf_settlb
    move	$a4,$s8
    bltz	$v0,.L0da3c13c
    # Line 591
    ld	$a1,40($sp)
    # Line 576
    li	$t1,16
    sw	$t1,228($s2)
    # Line 575
    sw	$zero,212($s2)
    # Line 572
    li	$t2,84
    sw	$t2,208($s2)
    # Line 571
    li	$t3,0x8100
    sw	$t3,204($s2)
    # Line 570
    li	$t8,1
    sw	$t8,164($s2)
    # Line 578
    lw	$t0,0($s4)
    # Line 580
    sw	$s1,224($s2)
    # Line 579
    sw	$s0,232($s2)
    # Line 578
    sw	$t0,220($s2)
    # Line 584
    sw	$s0,12($s4)
    # Line 591
    # lw $t9, -22724($gp) # &vice_put_vaddr
    # Line 583
    lui	$a6,0xb2
    # Line 582
    lui	$a7,0x80
    # Line 583
    sw	$a6,8($s4)
    # Line 582
    addu	$a7,$s7,$a7
    sw	$a7,4($s4)
    # Line 591
    jal	vice_put_vaddr
    lw	$a0,4($s2)
    bltz	$v0,.L0da3c144
    # Line 529
    li	$t9,-1
    addiu	$s6,$s6,-1
    # Line 598
    addu	$s1,$s0,$s1
    # Line 599
    addu	$s3,$s8,$s3
    # Line 529
    beq	$s6,$t9,.L0da3c108
    # Line 602
    li	$v0,1
.L0da3c088:
    # Line 536
    move	$v0,$s5
    # Line 534
    subu	$v1,$s5,$s0
    # Line 541
    # lw $t9, -22916($gp) # &vice_etc_dramp
    # Line 529
    sltu	$at,$s0,$s5
    # Line 537
    move	$s5,$zero
    movn	$s5,$v1,$at
    # Line 541
    lw	$a0,4($s2)
    jal	vice_etc_dramp
    movz	$s0,$v0,$at
    # Line 543
    addiu	$a4,$s0,4095
    addiu	$a2,$s0,8190
    slt	$a3,$a4,$zero
    movz	$a2,$a4,$a3
    andi	$s7,$s1,0xfff
    sra	$a2,$a2,0xc
    addu	$a1,$s7,$s0
    sll	$a0,$a2,0xc
    slt	$a0,$a0,$a1
    # Line 541
    move	$s4,$v0
    # Line 543
    sw	$a2,0($v0)
    beqz	$a0,.L0da3bfd0
    # Line 552
    addiu	$a5,$a2,1
    b	.L0da3bfd0
    sw	$a5,0($v0)
.L0da3c0e8:
    # Line 602
    ld	$gp,32($sp)
    ld	$s1,16($sp)
    # Line 507
    move	$v0,$zero
    # Line 602
    ld	$s2,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da3c104:
    li	$v0,1
.L0da3c108:
    ld	$s2,8($sp)
    ld	$s6,96($sp)
    ld	$s3,48($sp)
    ld	$s8,56($sp)
    ld	$s4,72($sp)
    ld	$s0,88($sp)
    ld	$s1,16($sp)
    ld	$ra,64($sp)
    ld	$s5,24($sp)
    ld	$s7,80($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da3c13c:
    # Line 561
    b	.L0da3c108
    move	$v0,$zero
.L0da3c144:
    # Line 593
    b	.L0da3c108
    move	$v0,$zero
.end __vcopy

# Function: viceIterSize
# Declared: Line 612 (Source lines: 619-664)
# Address: 0x0da3c150 - 0x0da3c29c (Size: 332 bytes, Frame: 0)
.globl viceIterSize
.ent viceIterSize
viceIterSize:
    # Line 619
    li	$at,6407
    li	$a5,6409
    beq	$a0,$at,.L0da3c18c
    li	$a6,6410
    li	$v0,6408
    beq	$a0,$v0,.L0da3c18c
    li	$v1,0x8000
    beq	$a0,$v1,.L0da3c18c
    nop
    beq	$a0,$a5,.L0da3c18c
    nop
    beq	$a0,$a6,.L0da3c18c
    nop
    # Line 664
    jr	$ra
    # Line 635
    move	$v0,$zero
.L0da3c18c:
    # Line 638
    lw	$a0,0($a1)
    slti	$a7,$a0,16
    bnez	$a7,.L0da3c294
    # Line 640
    move	$v0,$zero
    # Line 638
    lw	$a6,0($a2)
    slti	$t0,$a6,8
    bnez	$t0,.L0da3c294
    # Line 640
    sra	$t0,$a0,0x1f
    xor	$a7,$a0,$t0
    subu	$a7,$a7,$t0
    andi	$a7,$a7,0xf
    xor	$a7,$a7,$t0
    subu	$a7,$a7,$t0
    beqz	$a7,.L0da3c1d8
    # Line 655
    li	$t3,-8
    # Line 644
    subu	$a0,$a0,$a7
    addiu	$a0,$a0,16
    sw	$a0,0($a1)
    lw	$a6,0($a2)
.L0da3c1d8:
    sra	$t0,$a6,0x1f
    xor	$a7,$a6,$t0
    subu	$a7,$a7,$t0
    andi	$a7,$a7,0x7
    xor	$a7,$a7,$t0
    subu	$a7,$a7,$t0
    # Line 651
    lui	$t0,0x1e
    # Line 644
    beqz	$a7,.L0da3c20c
    # Line 655
    mtc1	$t0,$f1
    # Line 647
    subu	$a6,$a6,$a7
    addiu	$a6,$a6,8
    sw	$a6,0($a2)
    lw	$a0,0($a1)
.L0da3c20c:
    # Line 650
    mult	$a0,$a4
    mflo	$a7
    nop
    nop
    # Line 651
    mult	$a6,$a7
    mflo	$a1
    slt	$t1,$t0,$a1
    beqz	$t1,.L0da3c288
    # Line 655
    mtc1	$a7,$f2
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$t2,$f1
    and	$t2,$t2,$t3
    # Line 657
    subu	$t9,$t2,$a3
    mult	$a7,$t9
    mflo	$t3
    addu	$t8,$t3,$a1
    mtc1	$t3,$f1
    addiu	$t8,$t8,-1
    mtc1	$t8,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    # Line 655
    teq	$a7,$zero,0x7
    # Line 657
    trunc.w.d	$f0,$f0
    teq	$t3,$zero,0x7
    # Line 655
    sw	$t2,0($a2)
    # Line 657
    b	.L0da3c28c
    mfc1	$a0,$f0
.L0da3c288:
    # Line 659
    li	$a0,1
.L0da3c28c:
    # Line 664
    jr	$ra
    move	$v0,$a0
.L0da3c294:
    jr	$ra
    nop
.end viceIterSize

# Function: viceDrawPixels
# Declared: Line 670 (Source lines: 671-1137)
# Address: 0x0da3c2a0 - 0x0da3d0b0 (Size: 3600 bytes, Frame: 176)
.globl viceDrawPixels
.ent viceDrawPixels
viceDrawPixels:
    # Line 671
    addiu	$sp,$sp,-816
    sd	$s2,608($sp)
    sd	$s0,664($sp)
    sd	$s1,648($sp)
    sd	$s6,680($sp)
    sd	$s5,656($sp)
    sd	$s3,672($sp)
    # Line 689
    lw	$s3,168($a1)
    sw	$s3,168($sp)
    # Line 690
    lw	$s5,172($a1)
    sw	$s5,172($sp)
    # Line 692
    lui	$v0,0x3
    # Line 671
    lui	$v1,0x1
    # Line 692
    lw	$at,32348($a0)
    # Line 671
    move	$s1,$a1
    addiu	$v1,$v1,19180
    # Line 691
    lw	$s6,32228($a0)
    # Line 671
    move	$s0,$a0
    sd	$gp,688($sp)
    addu	$gp,$t9,$v1
    # Line 692
    and	$v0,$s6,$v0
    beqz	$at,.L0da3c400
    sd	$v0,760($sp)
    # Line 709
    li	$a6,4
    # Line 722
    sw	$a6,100($sp)
    # Line 710
    li	$a7,1
    sw	$a7,116($sp)
    # Line 709
    sw	$a6,108($sp)
    # Line 708
    li	$t0,6408
    sw	$t0,80($sp)
    # Line 723
    lw	$a5,36($a1)
    sw	$a5,36($sp)
    # Line 724
    lw	$a4,28($a1)
    # Line 725
    mult	$a4,$a5
    mflo	$a3
    nop
    # Line 724
    sw	$a4,28($sp)
    # Line 729
    mult	$a3,$s3
    # Line 725
    sw	$a3,20($sp)
    # Line 726
    lw	$v0,0($a1)
    sw	$v0,0($sp)
    # Line 732
    li	$a1,6407
    # Line 727
    lw	$a0,4($s1)
    sw	$a0,4($sp)
    # Line 729
    mflo	$a2
    # Line 732
    beq	$v0,$a1,.L0da3c8e4
    # Line 729
    sd	$a2,600($sp)
    # Line 736
    li	$t1,6409
    beq	$v0,$t1,.L0da3c488
    # Line 738
    lui	$t8,0x20
.L0da3c368:
    # Line 736
    andi	$t2,$s6,0x18
    beqz	$t2,.L0da3c8bc
    sd	$t2,752($sp)
    # Line 744
    lw	$t3,764($s0)
    lw	$t3,64($t3)
    addiu	$t3,$t3,-1
    sw	$t3,532($sp)
.L0da3c384:
    # Line 746
    lw	$s2,32568($s0)
    bltz	$s2,.L0da3c8c4
    sd	$ra,624($sp)
.L0da3c390:
    # Line 758
    # lw $t9, -23160($gp) # &viceSetIter
    move	$a0,$s0
    addiu	$a2,$sp,504
    bal viceSetIter
    addiu	$a1,$sp,0
    beqz	$v0,.L0da3ce38
    # Line 761
    lw	$t9,540($sp)
    # Line 767
    lw	$v0,536($sp)
    # Line 761
    move	$t8,$t9
    movn	$t8,$zero,$t9
    # Line 767
    beqz	$v0,.L0da3cf70
    # Line 761
    sw	$t8,540($sp)
    # Line 785
    lui	$ra,0x8
    sd	$s7,592($sp)
    bne	$s6,$ra,.L0da3c714
    # Line 775
    lw	$s7,12($s1)
    # Line 785
    ld	$v1,600($sp)
    lw	$at,16($s1)
    bne	$at,$v1,.L0da3c718
    # Line 873
    lw	$at,504($sp)
    sd	$s4,640($sp)
    # Line 789
    addiu	$s4,$v0,-1
    blez	$v0,.L0da3c814
    sd	$s8,632($sp)
    move	$s8,$v0
    li	$a0,1
    b	.L0da3c5ec
    sd	$a0,792($sp)
.L0da3c400:
    # Line 738
    lw	$a1,3260($a0)
    blez	$a1,.L0da3ce64
    # Line 714
    li	$t1,4
    sw	$t1,108($sp)
    # Line 713
    li	$t2,6408
    sw	$t2,80($sp)
    # Line 719
    lw	$t0,3256($a0)
    addiu	$t0,$t0,7
    sra	$t0,$t0,0x3
    sw	$t0,116($sp)
    # Line 720
    lw	$t1,84($s1)
    # Line 722
    sll	$t0,$t0,0x2
    sw	$t0,100($sp)
    # Line 720
    sw	$t1,84($sp)
    # Line 723
    lw	$a7,36($s1)
    sw	$a7,36($sp)
    # Line 724
    lw	$a6,28($s1)
    # Line 725
    mult	$a6,$a7
    mflo	$a5
    nop
    # Line 724
    sw	$a6,28($sp)
    # Line 729
    mult	$a5,$s3
    # Line 725
    sw	$a5,20($sp)
    # Line 726
    lw	$v0,0($s1)
    sw	$v0,0($sp)
    # Line 732
    li	$a3,6407
    # Line 727
    lw	$a2,4($s1)
    sw	$a2,4($sp)
    # Line 729
    mflo	$a4
    # Line 732
    beq	$v0,$a3,.L0da3c8e4
    # Line 729
    sd	$a4,600($sp)
    # Line 736
    li	$t3,6409
    bne	$v0,$t3,.L0da3c368
    # Line 738
    lui	$t8,0x20
.L0da3c488:
    b	.L0da3c368
    or	$s6,$s6,$t8
.L0da3c490:
    # Line 813
    swc1	$f1,196($sp)
    # Line 814
    lwc1	$f0,200($s1)
    swc1	$f0,200($sp)
    # Line 815
    lw	$at,92($s1)
    sw	$at,92($sp)
    # Line 816
    lw	$ra,96($s1)
    sw	$ra,96($sp)
    # Line 817
    lw	$t9,352($s1)
    blez	$t9,.L0da3c4fc
    sw	$t9,352($sp)
    nop
    nop
.L0da3c4c0:
    # Line 819
    lw	$a0,360($a4)
    sw	$a0,360($a7)
    # Line 818
    lw	$v1,352($sp)
    addiu	$v0,$v0,1
    slt	$v1,$v0,$v1
    beqz	$v1,.L0da3c4fc
    nop
    # Line 819
    lw	$a2,364($a4)
    sw	$a2,364($a7)
    # Line 818
    lw	$a1,352($sp)
    addiu	$v0,$v0,1
    slt	$a1,$v0,$a1
    addiu	$a4,$a4,8
    bnez	$a1,.L0da3c4c0
    addiu	$a7,$a7,8
.L0da3c4fc:
    sd	$zero,792($sp)
.L0da3c500:
    # Line 834
    lw	$a5,32636($s0)
    # Line 838
    sw	$s2,172($sp)
    # Line 837
    sw	$s3,168($sp)
    # Line 835
    lw	$a4,516($sp)
    sw	$a4,16($sp)
    # Line 834
    sw	$a5,8($sp)
    sw	$a5,12($sp)
    # Line 838
    lbu	$a3,32205($s0)
    beqz	$a3,.L0da3c6d4
    # Line 842
    mtc1	$s2,$f2
    # Line 841
    mtc1	$s3,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,32240($s0)
    mul.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    # Line 842
    cvt.s.w	$f2,$f2
    # Line 841
    swc1	$f4,216($sp)
    # Line 842
    lwc1	$f3,32244($s0)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    swc1	$f2,220($sp)
    mfc1	$s6,$f2
.L0da3c558:
    # Line 845
    lbu	$a6,32209($s0)
    beqz	$a6,.L0da3c56c
    nop
    # Line 848
    addu	$s6,$s6,$s6
    sw	$s6,220($sp)
.L0da3c56c:
    # Line 850
    sw	$s2,32276($s0)
    # Line 853
    lw	$t9,32348($s0)
    # Line 850
    sw	$s3,32272($s0)
    # Line 853
    addiu	$a1,$sp,0
    # Line 851
    lw	$a7,12($sp)
    # Line 853
    move	$a0,$s0
    jal	viceSetIter
    # Line 851
    sw	$a7,32288($s0)
    # Line 853
    beqz	$v0,.L0da3c884
    nop
    # Line 855
    lw	$t0,32348($s0)
    beqz	$t0,.L0da3c5ac
    nop
    lw	$t1,32216($s0)
    beqz	$t1,.L0da3c6e4
    # Line 856
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
.L0da3c5ac:
    beqz	$s4,.L0da3c5e4
    # Line 789
    addiu	$s8,$s8,-1
    # Line 862
    lw	$t3,520($sp)
    # Line 856
    lbu	$at,32204($s0)
    # Line 860
    lw	$ra,208($sp)
    negu	$t9,$s6
    movz	$t9,$s6,$at
    addu	$t9,$t9,$ra
    sw	$t9,208($sp)
    # Line 863
    lw	$t8,16($s1)
    mult	$t8,$t3
    mflo	$t2
    # Line 862
    subu	$s5,$s5,$t3
    # Line 863
    addu	$s7,$s7,$t2
.L0da3c5e4:
    # Line 789
    blez	$s8,.L0da3c814
    addiu	$s4,$s4,-1
.L0da3c5ec:
    # Line 793
    lw	$s2,520($sp)
    # Line 795
    move	$a3,$s7
    # lw $t9, -23192($gp) # &viceRGBtoRGBA
    move	$a1,$s1
    # Line 793
    slt	$v0,$s5,$s2
    # Line 795
    move	$a0,$s0
    # Line 793
    movn	$s2,$s5,$v0
    # Line 795
    bal viceRGBtoRGBA
    move	$a2,$s2
    beqz	$v0,.L0da3c84c
    # Line 796
    ld	$v1,792($sp)
    beqz	$v1,.L0da3c500
    # Line 817
    move	$v0,$zero
    # Line 800
    lw	$t1,32292($s0)
    li	$t0,-241
    and	$t0,$t0,$t1
    # Line 802
    li	$a7,-13
    # Line 800
    ori	$t0,$t0,0x20
    # Line 802
    and	$a7,$a7,$t0
    # Line 803
    li	$a6,-769
    # Line 802
    ori	$a7,$a7,0x8
    # Line 803
    and	$a6,$a6,$a7
    ori	$a6,$a6,0x200
    sw	$a6,32292($s0)
    # Line 805
    lw	$a4,100($sp)
    # Line 804
    li	$a5,5121
    sw	$a5,4($sp)
    # Line 809
    mult	$s3,$a4
    # Line 805
    sw	$a4,20($sp)
    # Line 806
    lw	$a3,204($s1)
    sw	$a3,204($sp)
    # Line 807
    lw	$a2,208($s1)
    sw	$a2,208($sp)
    # Line 809
    mflo	$a1
    sw	$a1,516($sp)
    lw	$a0,32216($s0)
    # Line 817
    addiu	$a7,$sp,0
    # Line 813
    lwc1	$f1,196($s1)
    # Line 817
    move	$a4,$s1
    # Line 809
    bnez	$a0,.L0da3c490
    # Line 821
    lbu	$t2,32205($s0)
    beqz	$t2,.L0da3c6f4
    nop
.L0da3c698:
    # Line 822
    lwc1	$f8,196($s1)
    swc1	$f8,196($sp)
    # Line 823
    lwc1	$f7,200($s1)
    swc1	$f7,200($sp)
    # Line 824
    lwc1	$f6,160($s1)
    swc1	$f6,160($sp)
    # Line 825
    lwc1	$f5,164($s1)
    swc1	$f5,164($sp)
    # Line 826
    lw	$t8,236($s1)
    sw	$t8,236($sp)
    # Line 827
    lw	$t3,240($s1)
    sw	$t3,240($sp)
    # Line 828
    sw	$zero,32284($s0)
    b	.L0da3c4fc
    sw	$zero,32280($s0)
.L0da3c6d4:
    # Line 845
    sw	$s2,220($sp)
    move	$s6,$s2
    b	.L0da3c558
    # Line 844
    sw	$s3,216($sp)
.L0da3c6e4:
    # Line 856
    jal	viceRGBtoRGBA
    move	$a0,$s0
    b	.L0da3c5ac
    nop
.L0da3c6f4:
    # Line 821
    lw	$t9,32344($s0)
    bnez	$t9,.L0da3c698
    nop
    lbu	$ra,32209($s0)
    bnez	$ra,.L0da3c698
    nop
    b	.L0da3c500
    sd	$zero,792($sp)
.L0da3c714:
    # Line 873
    lw	$at,504($sp)
.L0da3c718:
    sd	$v0,616($sp)
    # Line 874
    lw	$v0,520($sp)
    # Line 876
    # lw $t9, -22720($gp) # &vice_sequence
    # Line 874
    sw	$v0,172($sp)
    # Line 873
    sw	$at,168($sp)
    # Line 876
    move	$a0,$s2
    jal	vice_sequence
    ld	$a1,616($sp)
    bltz	$v0,.L0da3cff0
    # Line 882
    nop	# was lw $t9, -23176($gp) # &__viceSetHCoef
    move	$a0,$s0
    move	$a2,$s6
    bal __viceSetHCoef
    addiu	$a1,$sp,0
    beqz	$v0,.L0da3cffc
    # Line 887
    nop	# was lw $t9, -22916($gp) # &vice_etc_dramp
    sd	$s4,640($sp)
    move	$a0,$s2
    jal	vice_etc_dramp
    sd	$s8,632($sp)
    sd	$v0,728($sp)
    # Line 889
    lw	$a6,32648($s0)
    # Line 890
    lui	$a2,0xbe
    # Line 891
    sw	$a2,8($v0)
    # Line 890
    ori	$a5,$a2,0x400
    sw	$a5,4($v0)
    # Line 889
    ori	$a6,$a6,0x4
    sw	$a6,0($v0)
    # Line 893
    lw	$v1,32640($s0)
    sd	$s6,552($sp)
    # Line 899
    ori	$a4,$a2,0x800
    sw	$a4,1096($v1)
    # Line 898
    ori	$a3,$a2,0x2000
    sw	$a3,1088($v1)
    # Line 897
    ori	$a2,$a2,0x1000
    sw	$a2,1072($v1)
    # Line 903
    ld	$a2,616($sp)
    # Line 894
    lui	$a0,0x80
    # Line 895
    lui	$a1,0x9e
    sw	$a1,1028($v1)
    # Line 894
    sw	$a0,1024($v1)
    # Line 893
    addiu	$v1,$v1,1024
    # Line 903
    addiu	$s4,$a2,-1
    # Line 893
    sd	$v1,704($sp)
    # Line 903
    blez	$a2,.L0da3ced0
    move	$s8,$a2
    sd	$zero,712($sp)
    li	$t9,1
    sd	$t9,792($sp)
    addiu	$t3,$s0,32568
    sd	$t3,576($sp)
    addiu	$t2,$s0,32592
    sd	$t2,568($sp)
    addiu	$t1,$s0,32652
    sd	$t1,696($sp)
    sd	$s6,552($sp)
    lui	$t0,0x1
    ld	$t8,752($sp)
    addu	$t0,$s0,$t0
    sd	$t0,720($sp)
    sltu	$t8,$zero,$t8
    b	.L0da3c9f0
    sd	$t8,584($sp)
.L0da3c814:
    ld	$s8,632($sp)
    ld	$s4,640($sp)
    # Line 867
    li	$v0,1
    ld	$s7,592($sp)
.L0da3c824:
    ld	$s2,608($sp)
    # Line 1137
    ld	$gp,688($sp)
    ld	$s0,664($sp)
    ld	$s1,648($sp)
    ld	$ra,624($sp)
    ld	$s3,672($sp)
    ld	$s5,656($sp)
    ld	$s6,680($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0da3c84c:
    ld	$gp,688($sp)
    ld	$s0,664($sp)
    ld	$s1,648($sp)
    ld	$s2,608($sp)
    ld	$s3,672($sp)
    ld	$s4,640($sp)
    ld	$s5,656($sp)
    ld	$ra,624($sp)
    ld	$s6,680($sp)
    # Line 796
    move	$v0,$zero
    # Line 1137
    ld	$s7,592($sp)
    ld	$s8,632($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0da3c884:
    ld	$gp,688($sp)
    ld	$s0,664($sp)
    ld	$s1,648($sp)
    ld	$s2,608($sp)
    ld	$s3,672($sp)
    ld	$s4,640($sp)
    ld	$s5,656($sp)
    ld	$ra,624($sp)
    ld	$s6,680($sp)
    # Line 854
    move	$v0,$zero
    # Line 1137
    ld	$s7,592($sp)
    ld	$s8,632($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0da3c8bc:
    b	.L0da3c384
    # Line 746
    sw	$zero,532($sp)
.L0da3c8c4:
    # Line 750
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t9,$t9,-18624
    bal __glInitSPBuff
    move	$a0,$s0
    beqz	$v0,.L0da3d080
    nop
    b	.L0da3c390
    # Line 751
    lw	$s2,32568($s0)
.L0da3c8e4:
    # Line 733
    lui	$at,0x8
    b	.L0da3c368
    or	$s6,$s6,$at
.L0da3c8f0:
    # Line 961
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
.L0da3c8f4:
    move	$a0,$s2
    lw	$a4,32620($s0)
    move	$a3,$zero
    lw	$a2,32596($s0)
    jal	vice_dmbuf_settlb
    li	$a1,30
    # Line 983
    ld	$v0,712($sp)
.L0da3c910:
    beqz	$v0,.L0da3cafc
    lw	$t0,512($sp)
.L0da3c918:
    # Line 1009
    addiu	$a1,$s6,7
.L0da3c91c:
    addiu	$v1,$s6,14
    slt	$a0,$a1,$zero
    movz	$v1,$a1,$a0
    ld	$a0,704($sp)
    sra	$v1,$v1,0x3
    beqz	$s4,.L0da3cdb8
    sh	$v1,38($a0)
.L0da3c938:
    # Line 1019
    # lw $t9, -22912($gp) # &cacheflush
    li	$a2,3
    ld	$a0,728($sp)
    jal	cacheflush
    li	$a1,16
    # Line 1026
    # lw $t9, -22908($gp) # &vice_put
    move	$a0,$s2
    jal	vice_put
    ld	$a1,696($sp)
    bnez	$v0,.L0da3d014
    # Line 1032
    ld	$a2,760($sp)
    beqz	$a2,.L0da3cbac
    nop
.L0da3c96c:
    # Line 1100
    beqz	$s4,.L0da3c9e4
.L0da3c970:
    ld	$a3,792($sp)
    ld	$t1,752($sp)
    beqz	$a3,.L0da3c990
    # Line 1107
    ld	$a5,728($sp)
    lw	$a4,32648($s0)
    sd	$zero,792($sp)
    ori	$a4,$a4,0x4
    sw	$a4,0($a5)
.L0da3c990:
    # Line 1112
    lw	$a7,532($sp)
    # Line 1107
    lw	$a6,520($sp)
    # Line 1117
    lw	$t0,16($s1)
    # Line 1112
    subu	$a7,$a6,$a7
    movz	$a7,$a6,$t1
    # Line 1117
    mult	$t0,$a7
    # Line 1116
    subu	$s5,$s5,$a7
    # Line 1117
    slt	$a6,$s5,$a6
    mflo	$a5
    beqz	$a6,.L0da3c9e4
    addu	$s7,$s7,$a5
    sra	$a5,$s5,0x1f
    xor	$a4,$s5,$a5
    subu	$a4,$a4,$a5
    andi	$a4,$a4,0x7
    xor	$a4,$a4,$a5
    subu	$a4,$a4,$a5
    # Line 1121
    subu	$a5,$s5,$a4
    # Line 1117
    beqz	$a4,.L0da3ce30
    # Line 1121
    addiu	$a5,$a5,8
    sw	$a5,520($sp)
.L0da3c9e4:
    # Line 903
    addiu	$s8,$s8,-1
.L0da3c9e8:
    blez	$s8,.L0da3ced0
    addiu	$s4,$s4,-1
.L0da3c9f0:
    # Line 910
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    li	$a4,1
    move	$a3,$zero
    # Line 907
    lw	$s6,520($sp)
    # Line 910
    li	$a1,62
    move	$a0,$s2
    lw	$a2,32600($s0)
    # Line 907
    slt	$a6,$s5,$s6
    # Line 910
    jal	vice_dmbuf_settlb
    # Line 907
    movn	$s6,$s5,$a6
    # Line 912
    lw	$a7,32216($s0)
    beqz	$a7,.L0da3cdcc
    ld	$a7,720($sp)
    lw	$a7,-32516($a7)
    beqz	$a7,.L0da3cdd0
    # Line 952
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
    # Line 917
    lw	$t0,36($a7)
    sd	$t0,784($sp)
    # Line 918
    slti	$t0,$t0,33
    lw	$t1,28($a7)
    beqz	$t0,.L0da3d028
    sd	$t1,736($sp)
    # Line 928
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a0,$s2
    move	$a1,$zero
    ld	$a2,736($sp)
    move	$a3,$zero
    jal	vice_dmbuf_settlb
    ld	$a4,784($sp)
    # Line 941
    ld	$t1,752($sp)
    lw	$t8,524($sp)
    ld	$t2,784($sp)
    li	$t3,30
    beqz	$t1,.L0da3ca8c
    ld	$t9,784($sp)
    beq	$t2,$t3,.L0da3ca8c
    sll	$t9,$t9,0x10
    beq	$t8,$t9,.L0da3cd98
    # Line 944
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
.L0da3ca8c:
    # Line 946
    li	$ra,1
.L0da3ca90:
    sd	$ra,712($sp)
.L0da3ca94:
    # Line 960
    ld	$at,760($sp)
.L0da3ca98:
    # Line 964
    li	$a5,5
    # Line 966
    ld	$a7,720($sp)
    # Line 960
    bnez	$at,.L0da3c8f0
    # Line 964
    li	$v1,4
    # Line 960
    lw	$v0,32348($s0)
    bnez	$v0,.L0da3c8f4
    # Line 961
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
    # Line 964
    lw	$a4,32056($s0)
    lw	$a4,0($a4)
    beq	$a4,$v1,.L0da3cacc
    nop
    bne	$a4,$a5,.L0da3d088
    nop
.L0da3cacc:
    # Line 966
    lw	$a7,-32516($a7)
    lw	$a4,36($a7)
    sltiu	$a6,$a4,33
    beqz	$a6,.L0da3d06c
    # Line 977
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a0,$s2
    move	$a3,$zero
    lw	$a2,28($a7)
    jal	vice_dmbuf_settlb
    li	$a1,30
    b	.L0da3c910
    # Line 983
    ld	$v0,712($sp)
.L0da3cafc:
    lw	$a4,16($s1)
    bne	$t0,$a4,.L0da3cb34
    # Line 1000
    lw	$at,20($s1)
    # Line 983
    lw	$t9,168($s1)
    lw	$t8,32($s1)
    mult	$t8,$t9
    lw	$t2,36($s1)
    mflo	$t3
    nop
    nop
    mult	$t2,$t3
    mflo	$t1
    beq	$a4,$t1,.L0da3cf28
    nop
.L0da3cb34:
    # Line 1000
    mult	$at,$s3
    # Line 998
    sd	$s7,776($sp)
    # Line 999
    lw	$ra,32632($s0)
    # Line 1000
    mflo	$a2
    blez	$s6,.L0da3c918
    sd	$ra,768($sp)
    sd	$zero,744($sp)
    sd	$a2,544($sp)
    nop
    nop
    nop
.L0da3cb60:
    # Line 1003
    # lw $t9, -22808($gp) # &bcopy
    ld	$a0,776($sp)
    ld	$a1,768($sp)
    jal	bcopy
    ld	$a2,544($sp)
    # Line 1001
    ld	$a0,776($sp)
    # Line 1004
    lw	$a1,16($s1)
    # Line 1005
    ld	$a2,768($sp)
    # Line 1001
    ld	$v1,744($sp)
    # Line 1005
    lw	$a3,512($sp)
    # Line 1001
    addiu	$v1,$v1,1
    sd	$v1,744($sp)
    # Line 1005
    addu	$a2,$a3,$a2
    sd	$a2,768($sp)
    # Line 1004
    addu	$a0,$a1,$a0
    # Line 1001
    bne	$s6,$v1,.L0da3cb60
    sd	$a0,776($sp)
    b	.L0da3c91c
    # Line 1009
    addiu	$a1,$s6,7
.L0da3cbac:
    # Line 1032
    lw	$a4,32348($s0)
    # Line 1040
    li	$v0,-769
    # Line 1032
    li	$t1,0x8000
    # Line 1041
    li	$at,5121
    # Line 1032
    li	$a7,-241
    lw	$t2,0($sp)
    ld	$a5,792($sp)
    beqz	$a4,.L0da3c96c
    # Line 1039
    li	$v1,-13
    # Line 1032
    beqz	$a5,.L0da3cc9c
    nop
    lw	$t0,32292($s0)
    beq	$t1,$t2,.L0da3d008
    and	$a7,$a7,$t0
    # Line 1037
    ori	$a4,$a7,0x20
    sw	$a4,32292($s0)
.L0da3cbec:
    # Line 1039
    and	$v1,$v1,$a4
    ori	$v1,$v1,0x8
    # Line 1040
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x200
    sw	$v0,32292($s0)
    # Line 1041
    sw	$at,4($sp)
    # Line 1042
    lw	$ra,108($sp)
    sw	$ra,20($sp)
    # Line 1043
    lw	$t9,204($s1)
    sw	$t9,204($sp)
    # Line 1044
    lw	$t8,208($s1)
    sw	$t8,208($sp)
    lw	$t3,32216($s0)
    # Line 1051
    move	$a7,$s1
    # Line 1047
    lwc1	$f10,196($s1)
    # Line 1051
    addiu	$t0,$sp,0
    # Line 1044
    beqz	$t3,.L0da3cfac
    # Line 1056
    lbu	$a4,32205($s0)
    # Line 1047
    swc1	$f10,196($sp)
    # Line 1048
    lwc1	$f9,200($s1)
    swc1	$f9,200($sp)
    # Line 1049
    lw	$a2,92($s1)
    sw	$a2,92($sp)
    # Line 1050
    lw	$a1,96($s1)
    sw	$a1,96($sp)
    # Line 1051
    lw	$a0,352($s1)
    move	$a4,$zero
    blez	$a0,.L0da3cc9c
    sw	$a0,352($sp)
.L0da3cc60:
    # Line 1053
    lw	$a5,360($a7)
    sw	$a5,360($t0)
    # Line 1052
    lw	$a3,352($sp)
    addiu	$a4,$a4,1
    slt	$a3,$a4,$a3
    beqz	$a3,.L0da3cc9c
    nop
    # Line 1053
    lw	$t1,364($a7)
    sw	$t1,364($t0)
    # Line 1052
    lw	$a6,352($sp)
    addiu	$a4,$a4,1
    slt	$a6,$a4,$a6
    addiu	$a7,$a7,8
    bnez	$a6,.L0da3cc60
    addiu	$t0,$t0,8
.L0da3cc9c:
    # Line 1066
    lw	$t9,32636($s0)
.L0da3cca0:
    # Line 1074
    sw	$s3,180($sp)
    # Line 1076
    lw	$t3,532($sp)
    # Line 1067
    lw	$t8,516($sp)
    sw	$t8,16($sp)
    # Line 1076
    ld	$t8,584($sp)
    # Line 1066
    sw	$t9,12($sp)
    sw	$t9,8($sp)
    # Line 1076
    movz	$t3,$zero,$t8
    # Line 1077
    subu	$a4,$s3,$t3
    sw	$a4,184($sp)
    sw	$a4,168($sp)
    # Line 1076
    subu	$s6,$s6,$t3
    # Line 1078
    sw	$s6,172($sp)
    lbu	$t2,32205($s0)
    # Line 1082
    mtc1	$s6,$f11
    # Line 1078
    beqz	$t2,.L0da3cf9c
    # Line 1081
    mtc1	$a4,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,32240($s0)
    mul.s	$f13,$f13,$f14
    trunc.w.s	$f13,$f13
    # Line 1082
    cvt.s.w	$f11,$f11
    # Line 1081
    swc1	$f13,216($sp)
    # Line 1082
    lwc1	$f12,32244($s0)
    mul.s	$f11,$f11,$f12
    trunc.w.s	$f11,$f11
    swc1	$f11,220($sp)
    mfc1	$a3,$f11
.L0da3cd10:
    # Line 1085
    lbu	$ra,32209($s0)
    beqz	$ra,.L0da3cd28
    nop
    # Line 1088
    addu	$a3,$a3,$a3
    sd	$a3,560($sp)
    sw	$a3,220($sp)
.L0da3cd28:
    sd	$a3,560($sp)
    # Line 1090
    sw	$s6,32276($s0)
    # Line 1093
    lw	$t9,32348($s0)
    # Line 1090
    sw	$a4,32272($s0)
    # Line 1093
    addiu	$a1,$sp,0
    # Line 1091
    lw	$at,12($sp)
    # Line 1093
    move	$a0,$s0
    jalr	$t9
    # Line 1091
    sw	$at,32288($s0)
    # Line 1093
    beqz	$v0,.L0da3d09c
    nop
    # Line 1096
    lw	$v0,32348($s0)
    beqz	$v0,.L0da3cd6c
    nop
    lw	$v1,32216($s0)
    beqz	$v1,.L0da3d03c
    # Line 1097
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
.L0da3cd6c:
    beqz	$s4,.L0da3c9e4
    # Line 1101
    lw	$a1,208($sp)
    ld	$a3,560($sp)
    # Line 1097
    lbu	$a2,32204($s0)
    # Line 1101
    negu	$a0,$a3
    movz	$a0,$a3,$a2
    addu	$a0,$a0,$a1
    bnez	$s4,.L0da3c970
    sw	$a0,208($sp)
    b	.L0da3c9e8
    # Line 903
    addiu	$s8,$s8,-1
.L0da3cd98:
    # Line 944
    move	$a0,$s2
    ld	$a1,784($sp)
    move	$a3,$zero
    ld	$a2,736($sp)
    jal	__glCrmFlushAndConfirm
    li	$a4,1
    b	.L0da3ca90
    # Line 946
    li	$ra,1
.L0da3cdb8:
    # Line 1017
    ld	$a5,728($sp)
    lw	$a4,0($a5)
    ori	$a4,$a4,0x8
    b	.L0da3c938
    sw	$a4,0($a5)
.L0da3cdcc:
    # Line 952
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
.L0da3cdd0:
    lw	$a2,32592($s0)
    move	$a3,$zero
    move	$a1,$zero
    # Line 950
    lw	$a4,32616($s0)
    # Line 952
    move	$a0,$s2
    jal	vice_dmbuf_settlb
    # Line 950
    sd	$a4,800($sp)
    # Line 954
    ld	$a5,752($sp)
    lw	$t0,524($sp)
    li	$a6,30
    beqz	$a5,.L0da3ca94
    ld	$a7,800($sp)
    beq	$a7,$a6,.L0da3ca94
    sll	$t1,$a7,0x10
    bne	$t0,$t1,.L0da3ca94
    # Line 957
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a0,$s2
    move	$a1,$a7
    li	$a4,1
    move	$a3,$zero
    jal	vice_dmbuf_settlb
    lw	$a2,32592($s0)
    b	.L0da3ca98
    # Line 960
    ld	$at,760($sp)
.L0da3ce30:
    b	.L0da3c9e4
    # Line 1123
    sw	$s5,520($sp)
.L0da3ce38:
    # Line 1137
    ld	$gp,688($sp)
    ld	$s0,664($sp)
    ld	$s1,648($sp)
    ld	$s2,608($sp)
    ld	$ra,624($sp)
    ld	$s3,672($sp)
    # Line 760
    move	$v0,$zero
    # Line 1137
    ld	$s5,656($sp)
    ld	$s6,680($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0da3ce64:
    # Line 717
    li	$a0,1
    sw	$a0,108($sp)
    # Line 716
    li	$a1,6409
    sw	$a1,80($sp)
    # Line 719
    lw	$v1,3256($s0)
    addiu	$v1,$v1,7
    sra	$v1,$v1,0x3
    sw	$v1,116($sp)
    # Line 720
    lw	$a0,84($s1)
    # Line 722
    sw	$v1,100($sp)
    # Line 720
    sw	$a0,84($sp)
    # Line 723
    lw	$v0,36($s1)
    sw	$v0,36($sp)
    # Line 724
    lw	$at,28($s1)
    # Line 725
    mult	$at,$v0
    mflo	$t9
    nop
    # Line 724
    sw	$at,28($sp)
    # Line 729
    mult	$t9,$s3
    # Line 725
    sw	$t9,20($sp)
    # Line 726
    lw	$t8,0($s1)
    sw	$t8,0($sp)
    # Line 727
    lw	$t2,4($s1)
    sw	$t2,4($sp)
    # Line 729
    mflo	$t3
    b	.L0da3c368
    sd	$t3,600($sp)
.L0da3ced0:
    # Line 903
    ld	$a2,552($sp)
    andi	$a2,$a2,0xc00
    beqz	$a2,.L0da3cef0
    # Line 1130
    nop	# was lw $t9, -23260($gp) # &returnHistogramMinMax
    ld	$a1,552($sp)
    move	$a0,$s0
    bal returnHistogramMinMax
    lw	$a2,84($s1)
.L0da3cef0:
    # Line 1137
    ld	$gp,688($sp)
    ld	$s0,664($sp)
    ld	$s1,648($sp)
    ld	$s2,608($sp)
    ld	$s3,672($sp)
    ld	$s4,640($sp)
    ld	$s5,656($sp)
    ld	$ra,624($sp)
    ld	$s6,680($sp)
    li	$v0,1
    ld	$s7,592($sp)
    ld	$s8,632($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0da3cf28:
    # Line 988
    mult	$a4,$s6
    # lw $t9, -23216($gp) # &__vcopy
    move	$a0,$s7
    ld	$a1,568($sp)
    mflo	$a2
    bal __vcopy
    ld	$a3,576($sp)
    bnez	$v0,.L0da3c91c
    # Line 1009
    addiu	$a1,$s6,7
    # Line 992
    lw	$a3,16($s1)
    mult	$a3,$s6
    # lw $t9, -22808($gp) # &bcopy
    move	$a0,$s7
    mflo	$a2
    jal	bcopy
    lw	$a1,32632($s0)
    b	.L0da3c91c
    # Line 1009
    addiu	$a1,$s6,7
.L0da3cf70:
    # Line 1137
    ld	$gp,688($sp)
    ld	$s0,664($sp)
    ld	$s1,648($sp)
    ld	$s2,608($sp)
    ld	$ra,624($sp)
    ld	$s3,672($sp)
    # Line 772
    move	$v0,$zero
    # Line 1137
    ld	$s5,656($sp)
    ld	$s6,680($sp)
    jr	$ra
    addiu	$sp,$sp,816
.L0da3cf9c:
    # Line 1085
    sw	$s6,220($sp)
    move	$a3,$s6
    b	.L0da3cd10
    # Line 1084
    sw	$a4,216($sp)
.L0da3cfac:
    # Line 1056
    beqz	$a4,.L0da3d04c
    nop
.L0da3cfb4:
    # Line 1057
    lwc1	$f17,196($s1)
    swc1	$f17,196($sp)
    # Line 1058
    lwc1	$f16,200($s1)
    swc1	$f16,200($sp)
    # Line 1059
    lwc1	$f15,160($s1)
    swc1	$f15,160($sp)
    # Line 1060
    lwc1	$f14,164($s1)
    swc1	$f14,164($sp)
    # Line 1061
    lw	$a6,236($s1)
    sw	$a6,236($sp)
    # Line 1062
    lw	$a5,240($s1)
    sw	$a5,240($sp)
    # Line 1063
    sw	$zero,32284($s0)
    b	.L0da3cc9c
    sw	$zero,32280($s0)
.L0da3cff0:
    # Line 878
    move	$v0,$zero
    b	.L0da3c824
    ld	$s7,592($sp)
.L0da3cffc:
    # Line 884
    move	$v0,$zero
    b	.L0da3c824
    ld	$s7,592($sp)
.L0da3d008:
    # Line 1035
    ori	$a4,$a7,0x30
    b	.L0da3cbec
    sw	$a4,32292($s0)
.L0da3d014:
    ld	$s8,632($sp)
    ld	$s4,640($sp)
    # Line 1029
    move	$v0,$zero
    b	.L0da3c824
    ld	$s7,592($sp)
.L0da3d028:
    ld	$s8,632($sp)
    ld	$s4,640($sp)
    # Line 925
    move	$v0,$zero
    b	.L0da3c824
    ld	$s7,592($sp)
.L0da3d03c:
    # Line 1097
    jalr	$t9
    move	$a0,$s0
    b	.L0da3cd6c
    nop
.L0da3d04c:
    # Line 1056
    lw	$a7,32344($s0)
    bnez	$a7,.L0da3cfb4
    nop
    lbu	$t0,32209($s0)
    bnez	$t0,.L0da3cfb4
    nop
    b	.L0da3cca0
    # Line 1066
    lw	$t9,32636($s0)
.L0da3d06c:
    ld	$s8,632($sp)
    ld	$s4,640($sp)
    # Line 975
    move	$v0,$zero
    b	.L0da3c824
    ld	$s7,592($sp)
.L0da3d080:
    # Line 751
    b	.L0da3c824
    move	$v0,$zero
.L0da3d088:
    ld	$s8,632($sp)
    ld	$s4,640($sp)
    # Line 966
    move	$v0,$zero
    b	.L0da3c824
    ld	$s7,592($sp)
.L0da3d09c:
    ld	$s8,632($sp)
    ld	$s4,640($sp)
    # Line 1094
    move	$v0,$zero
    b	.L0da3c824
    ld	$s7,592($sp)
.end viceDrawPixels

# Function: viceDrawPixels2
# Declared: Line 1146 (Source lines: 1147-1157)
# Address: 0x0da3d0b0 - 0x0da3d128 (Size: 120 bytes, Frame: 16)
.globl viceDrawPixels2
.ent viceDrawPixels2
viceDrawPixels2:
    # Line 1152
    li	$a3,0x80fc
    addu	$a3,$a3,$a0
    # Line 1147
    move	$a4,$a1
    # Line 1152
    lw	$a3,0($a3)
    # Line 1157
    move	$v0,$zero
    # Line 1147
    lui	$at,0x1
    addiu	$sp,$sp,-16
    addiu	$at,$at,15580
    sd	$gp,0($sp)
    # Line 1152
    beqz	$a3,.L0da3d11c
    # Line 1147
    addu	$gp,$t9,$at
    # Line 1152
    lw	$a1,0($a3)
    beqz	$a1,.L0da3d11c
    nop
    # Line 1153
    lw	$a6,172($a4)
    lw	$a5,16($a4)
    mult	$a5,$a6
    # lw $t9, -22808($gp) # &bcopy
    sd	$ra,8($sp)
    mflo	$a2
    jal	bcopy
    lw	$a0,12($a4)
    ld	$ra,8($sp)
    # Line 1154
    li	$v0,1
    # Line 1157
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da3d11c:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end viceDrawPixels2

# Function: viceReadPixels
# Declared: Line 1161 (Source lines: 1162-1562)
# Address: 0x0da3d130 - 0x0da3dcc4 (Size: 2964 bytes, Frame: 144)
.globl viceReadPixels
.ent viceReadPixels
viceReadPixels:
    # Line 1162
    addiu	$sp,$sp,-784
    sd	$a1,768($sp)
    sd	$s3,640($sp)
    sd	$ra,616($sp)
    sd	$gp,680($sp)
    sd	$s0,672($sp)
    sd	$s2,656($sp)
    # Line 1180
    lw	$v1,168($a1)
    sd	$v1,648($sp)
    sw	$v1,168($sp)
    # Line 1162
    sd	$s8,664($sp)
    # Line 1181
    lw	$s8,172($a1)
    sw	$s8,172($sp)
    # Line 1188
    lw	$at,32352($a0)
    # Line 1162
    lui	$v0,0x1
    # Line 1182
    lw	$s2,32228($a0)
    # Line 1162
    move	$s0,$a0
    addiu	$v0,$v0,15452
    # Line 1183
    lbu	$v1,32219($a0)
    # Line 1162
    addu	$gp,$t9,$v0
    # Line 1188
    beqz	$at,.L0da3d194
    # Line 1183
    sd	$v1,720($sp)
    # Line 1188
    ld	$a0,720($sp)
    beqz	$a0,.L0da3db54
    # Line 1191
    li	$t3,1
.L0da3d194:
    # Line 1192
    lw	$a1,3420($s0)
    blez	$a1,.L0da3daa4
    # Line 1196
    li	$v0,4
    sw	$v0,28($sp)
    # Line 1195
    li	$a2,6408
    sw	$a2,0($sp)
.L0da3d1ac:
    # Line 1201
    lw	$a5,3416($s0)
    addiu	$a5,$a5,7
    sra	$a5,$a5,0x3
    # Line 1202
    mult	$a5,$v0
    # Line 1204
    ld	$a3,768($sp)
    # Line 1202
    mflo	$a4
    sw	$a4,20($sp)
    # Line 1206
    ld	$a4,720($sp)
    # Line 1201
    sw	$a5,36($sp)
    # Line 1204
    lw	$a3,4($a3)
    # Line 1206
    beqz	$a4,.L0da3d1e4
    # Line 1204
    sw	$a3,4($sp)
    # Line 1206
    dsll32	$a6,$s2,0x9
    bgez	$a6,.L0da3da7c
.L0da3d1e4:
    # Line 1225
    ld	$a7,768($sp)
    lw	$t2,80($a7)
    sw	$t2,80($sp)
    # Line 1226
    lw	$t1,116($a7)
    sw	$t1,116($sp)
    # Line 1227
    lw	$t0,108($a7)
    sw	$t0,108($sp)
    # Line 1228
    lw	$a7,100($a7)
    sw	$a7,100($sp)
.L0da3d208:
    # Line 1230
    ld	$t3,768($sp)
    lw	$t3,84($t3)
    sw	$t3,84($sp)
    lw	$s3,32568($s0)
    bltz	$s3,.L0da3dbd0
    # Line 1233
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
.L0da3d220:
    # Line 1237
    beqz	$s2,.L0da3dc24
    # Line 1249
    andi	$t8,$s2,0x18
    beqz	$t8,.L0da3d240
    sd	$t8,744($sp)
    # Line 1253
    lw	$t9,764($s0)
    lw	$t9,64($t9)
    addiu	$t9,$t9,-1
    sw	$t9,532($sp)
.L0da3d240:
    # Line 1256
    # lw $t9, -23160($gp) # &viceSetIter
    move	$a0,$s0
    addiu	$a2,$sp,504
    bal viceSetIter
    addiu	$a1,$sp,0
    beqz	$v0,.L0da3d9d8
    # Line 1258
    move	$v0,$zero
    # Line 1265
    # lw $t9, -22720($gp) # &vice_sequence
    # Line 1261
    lw	$a1,536($sp)
    # Line 1265
    move	$a0,$s3
    jal	vice_sequence
    # Line 1261
    sd	$a1,608($sp)
    # Line 1265
    bltz	$v0,.L0da3d9f8
    # Line 1274
    lw	$v0,520($sp)
    # Line 1276
    # lw $t9, -23176($gp) # &__viceSetHCoef
    # Line 1274
    sw	$v0,172($sp)
    # Line 1276
    move	$a2,$s2
    addiu	$a1,$sp,0
    # Line 1273
    lw	$at,504($sp)
    # Line 1276
    move	$a0,$s0
    bal __viceSetHCoef
    # Line 1273
    sw	$at,168($sp)
    # Line 1276
    beqz	$v0,.L0da3dab8
    # Line 1281
    nop	# was lw $t9, -22916($gp) # &vice_etc_dramp
    jal	vice_etc_dramp
    move	$a0,$s3
    sd	$v0,736($sp)
    # Line 1283
    lw	$a7,32648($s0)
    # Line 1284
    lui	$a3,0xbe
    # Line 1285
    sw	$a3,8($v0)
    # Line 1284
    ori	$a6,$a3,0x400
    sw	$a6,4($v0)
    # Line 1283
    ori	$a7,$a7,0x4
    sw	$a7,0($v0)
    # Line 1287
    lw	$a0,32640($s0)
    # Line 1297
    ld	$v1,720($sp)
    # Line 1293
    ori	$a5,$a3,0x800
    sw	$a5,1096($a0)
    # Line 1292
    ori	$a4,$a3,0x2000
    sw	$a4,1088($a0)
    # Line 1291
    ori	$a3,$a3,0x1000
    sw	$a3,1072($a0)
    # Line 1289
    lui	$a2,0x9e
    sw	$a2,1028($a0)
    # Line 1288
    lui	$a1,0x80
    sw	$a1,1024($a0)
    # Line 1287
    addiu	$a0,$a0,1024
    # Line 1297
    beqz	$v1,.L0da3db70
    sd	$a0,712($sp)
.L0da3d304:
    sd	$s6,632($sp)
    # Line 1300
    lw	$s6,32344($s0)
    sd	$s7,576($sp)
    sd	$s5,584($sp)
    sd	$s4,592($sp)
    # Line 1302
    ld	$t1,608($sp)
    sd	$s2,560($sp)
    sd	$s1,624($sp)
    sd	$t1,752($sp)
    blez	$t1,.L0da3da1c
    addiu	$s1,$t1,-1
    sd	$s2,560($sp)
    li	$at,1
    sd	$at,552($sp)
    addiu	$t9,$s0,32652
    sd	$t9,704($sp)
    sd	$s7,576($sp)
    sd	$s5,584($sp)
    sd	$s4,592($sp)
    lui	$t8,0x1
    addu	$t8,$s0,$t8
    sd	$t8,688($sp)
    lui	$t3,0x3
    ld	$ra,744($sp)
    and	$t3,$s2,$t3
    sd	$t3,760($sp)
    sltu	$ra,$zero,$ra
    b	.L0da3d580
    sd	$ra,600($sp)
.L0da3d378:
    # Line 1313
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
.L0da3d37c:
    move	$a3,$zero
    # Line 1311
    lw	$s2,32616($s0)
    # Line 1313
    move	$a1,$zero
    move	$a0,$s3
    lw	$a2,32592($s0)
    jal	vice_dmbuf_settlb
    move	$a4,$s2
    # Line 1326
    ld	$v0,744($sp)
    sll	$a1,$s2,0x10
    li	$v1,30
    beqz	$v0,.L0da3d3bc
    lw	$a0,524($sp)
    beq	$s2,$v1,.L0da3d3bc
    nop
    beq	$a0,$a1,.L0da3d8d0
    # Line 1329
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
.L0da3d3bc:
    # Line 1326
    lw	$a6,32352($s0)
.L0da3d3c0:
    # Line 1370
    li	$t0,1
.L0da3d3c4:
    # Line 1368
    li	$t2,6408
    # Line 1362
    lw	$a4,168($sp)
    # Line 1369
    li	$t1,5121
    # Line 1376
    li	$a5,-241
    # Line 1363
    lw	$s2,520($sp)
    # Line 1378
    li	$a3,-769
    # Line 1362
    move	$s7,$a4
    # Line 1372
    ld	$a7,768($sp)
    # Line 1363
    slt	$a2,$s8,$s2
    beqz	$a6,.L0da3d654
    movn	$s2,$s8,$a2
    beqz	$s4,.L0da3d44c
    # Line 1381
    lw	$at,100($sp)
    # Line 1368
    sw	$t2,80($sp)
    # Line 1369
    sw	$t1,84($sp)
    # Line 1370
    sw	$t0,116($sp)
    # Line 1371
    sw	$s5,100($sp)
    # Line 1372
    lwc1	$f1,188($a7)
    swc1	$f1,188($sp)
    # Line 1373
    lwc1	$f0,192($a7)
    swc1	$f0,192($sp)
    # Line 1376
    lw	$a6,32292($s0)
    and	$a5,$a5,$a6
    # Line 1377
    li	$a4,-13
    # Line 1376
    ori	$a5,$a5,0x20
    # Line 1377
    and	$a4,$a4,$a5
    # Line 1374
    sw	$zero,32216($s0)
    # Line 1377
    ori	$a4,$a4,0x8
    # Line 1375
    sw	$zero,32344($s0)
    # Line 1378
    and	$a3,$a3,$a4
    ori	$a3,$a3,0x200
    sw	$a3,32292($s0)
    lw	$a4,168($sp)
    # Line 1381
    lw	$at,100($sp)
.L0da3d44c:
    mult	$at,$a4
    # Line 1380
    lw	$ra,32632($s0)
    # Line 1386
    sw	$s2,172($sp)
    # Line 1385
    addiu	$t3,$s7,1
    # Line 1381
    andi	$t8,$s7,0x1
    movz	$t3,$s7,$t8
    # Line 1385
    sw	$t3,168($sp)
    # Line 1380
    sw	$ra,88($sp)
    sw	$ra,92($sp)
    # Line 1381
    mflo	$t9
    sw	$t9,96($sp)
    # Line 1388
    lw	$t9,32352($s0)
    addiu	$a1,$sp,0
    jal	vice_dmbuf_settlb
    move	$a0,$s0
    # Line 1404
    addiu	$a2,$s2,7
    # Line 1388
    beqz	$v0,.L0da3db38
    # Line 1389
    lwc1	$f4,192($sp)
    beqz	$s1,.L0da3d4bc
    ld	$v0,744($sp)
    beqz	$v0,.L0da3d8c0
    # Line 1396
    mtc1	$s2,$f10
    # Line 1394
    lw	$v1,532($sp)
    subu	$v1,$s2,$v1
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    sub.s	$f2,$f4,$f2
    swc1	$f2,192($sp)
.L0da3d4bc:
    # Line 1404
    addiu	$a0,$s2,14
    slt	$a1,$a2,$zero
    movz	$a0,$a2,$a1
    ld	$a1,712($sp)
    sra	$a0,$a0,0x3
    beqz	$s1,.L0da3d674
    sh	$a0,38($a1)
.L0da3d4d8:
    # Line 1409
    # lw $t9, -22912($gp) # &cacheflush
    li	$a2,3
    ld	$a0,736($sp)
    jal	cacheflush
    li	$a1,16
    # Line 1410
    # lw $t9, -22908($gp) # &vice_put
    move	$a0,$s3
    jal	vice_put
    ld	$a1,704($sp)
    bnez	$v0,.L0da3db00
    # Line 1414
    ld	$a3,720($sp)
    # Line 1488
    ld	$v1,760($sp)
    # Line 1414
    beqz	$a3,.L0da3d688
    ld	$a4,760($sp)
    beqz	$a4,.L0da3d700
    # Line 1421
    li	$ra,1
.L0da3d518:
    # Line 1528
    beqz	$s1,.L0da3d56c
    # Line 1302
    ld	$a6,752($sp)
.L0da3d520:
    # Line 1528
    beqz	$s4,.L0da3d534
    # Line 1541
    ld	$a6,736($sp)
    lw	$a5,32648($s0)
    move	$s4,$zero
    sw	$a5,0($a6)
.L0da3d534:
    lw	$a7,520($sp)
    sra	$a5,$s8,0x1f
    xor	$a4,$s8,$a5
    slt	$a7,$s8,$a7
    subu	$a4,$a4,$a5
    andi	$a4,$a4,0x7
    beqz	$a7,.L0da3d568
    xor	$a4,$a4,$a5
    subu	$a4,$a4,$a5
    # Line 1546
    subu	$a5,$s8,$a4
    # Line 1541
    beqz	$a4,.L0da3d900
    # Line 1546
    addiu	$a5,$a5,8
    sw	$a5,520($sp)
.L0da3d568:
    # Line 1302
    ld	$a6,752($sp)
.L0da3d56c:
    addiu	$a6,$a6,-1
    sd	$s4,552($sp)
    addiu	$s1,$s1,-1
    blez	$a6,.L0da3da1c
    sd	$a6,752($sp)
.L0da3d580:
    # Line 1306
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a0,$s3
    lw	$a4,32620($s0)
    move	$a3,$zero
    lw	$a2,32596($s0)
    jal	vice_dmbuf_settlb
    li	$a1,30
    # Line 1307
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    li	$s5,4
    move	$a0,$s3
    ld	$s4,552($sp)
    li	$a4,1
    move	$a3,$zero
    lw	$a2,32600($s0)
    jal	vice_dmbuf_settlb
    li	$a1,62
    # Line 1309
    ld	$a7,760($sp)
    bnez	$a7,.L0da3d378
    ld	$a4,688($sp)
    lw	$a6,32352($s0)
    # Line 1337
    li	$a7,5
    # Line 1309
    beqz	$a6,.L0da3d8f0
    lw	$a4,-32516($a4)
    beqz	$a4,.L0da3d37c
    # Line 1313
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
.L0da3d5e4:
    # Line 1337
    lw	$a6,32060($s0)
    lw	$a6,0($a6)
    beq	$a6,$s5,.L0da3d5fc
    nop
    bne	$a6,$a7,.L0da3dc08
    nop
.L0da3d5fc:
    # Line 1341
    lw	$s2,36($a4)
    # Line 1342
    slti	$t0,$s2,33
    beqz	$t0,.L0da3dbec
    lw	$s7,28($a4)
    # Line 1352
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a0,$s3
    move	$a1,$zero
    move	$a2,$s7
    move	$a3,$zero
    jal	vice_dmbuf_settlb
    move	$a4,$s2
    # Line 1354
    ld	$t1,744($sp)
    sll	$t8,$s2,0x10
    li	$t2,30
    beqz	$t1,.L0da3d64c
    lw	$t3,524($sp)
    beq	$s2,$t2,.L0da3d64c
    nop
    beq	$t3,$t8,.L0da3d908
    # Line 1357
    nop	# was lw $t9, -22920($gp) # &vice_dmbuf_settlb
.L0da3d64c:
    b	.L0da3d3c0
    lw	$a6,32352($s0)
.L0da3d654:
    # Line 1404
    addiu	$at,$s2,7
    addiu	$t9,$s2,14
    slt	$ra,$at,$zero
    movz	$t9,$at,$ra
    ld	$ra,712($sp)
    sra	$t9,$t9,0x3
    bnez	$s1,.L0da3d4d8
    sh	$t9,38($ra)
.L0da3d674:
    # Line 1407
    ld	$v1,736($sp)
    lw	$v0,0($v1)
    ori	$v0,$v0,0x8
    b	.L0da3d4d8
    sw	$v0,0($v1)
.L0da3d688:
    # Line 1488
    bnez	$v1,.L0da3d518
    # Line 1498
    lw	$a1,532($sp)
    # Line 1501
    ld	$a2,768($sp)
    ld	$a0,744($sp)
    lw	$a3,100($a2)
    # Line 1498
    subu	$a4,$s7,$a1
    movn	$s7,$a4,$a0
    # Line 1501
    mult	$a3,$s7
    # Line 1503
    lw	$a2,96($a2)
    lw	$a4,516($sp)
    # Line 1493
    lw	$a3,544($sp)
    # Line 1492
    lw	$s4,32636($s0)
    # Line 1499
    subu	$a1,$s2,$a1
    movn	$s2,$a1,$a0
    # Line 1493
    sd	$a3,568($sp)
    move	$s5,$a3
    # Line 1501
    mflo	$a3
    # Line 1503
    bne	$a2,$a4,.L0da3d6e8
    # Line 1501
    sd	$a3,696($sp)
    # Line 1503
    ld	$a5,696($sp)
    bne	$a5,$a4,.L0da3d6e8
    nop
    beqz	$s6,.L0da3dc80
    # Line 1505
    ld	$a5,696($sp)
.L0da3d6e8:
    blez	$s2,.L0da3d998
    nop
    b	.L0da3d974
    sd	$zero,728($sp)
    nop
    nop
.L0da3d700:
    # Line 1414
    lw	$a6,32348($s0)
    # Line 1419
    li	$v0,6408
    # Line 1420
    li	$at,5121
    # Line 1423
    ld	$t8,768($sp)
    # Line 1427
    li	$t2,-241
    # Line 1428
    li	$t1,-13
    # Line 1429
    li	$a7,-769
    # Line 1414
    beqz	$a6,.L0da3d518
    # Line 1431
    ld	$v1,768($sp)
    # Line 1414
    beqz	$s4,.L0da3d7b8
    # Line 1453
    lw	$a2,532($sp)
    # Line 1422
    sw	$s5,20($sp)
    # Line 1421
    sw	$ra,36($sp)
    # Line 1420
    sw	$at,4($sp)
    # Line 1419
    sw	$v0,0($sp)
    # Line 1423
    lw	$t9,204($t8)
    sw	$t9,204($sp)
    # Line 1424
    lw	$t8,208($t8)
    sw	$t8,208($sp)
    # Line 1427
    lw	$t3,32292($s0)
    and	$t2,$t2,$t3
    ori	$t2,$t2,0x20
    # Line 1430
    lbu	$t0,32205($s0)
    # Line 1428
    and	$t1,$t1,$t2
    # Line 1426
    sw	$s6,32344($s0)
    # Line 1428
    ori	$t1,$t1,0x8
    # Line 1425
    sw	$zero,32216($s0)
    # Line 1429
    and	$a7,$a7,$t1
    ori	$a7,$a7,0x200
    # Line 1430
    beqz	$t0,.L0da3daec
    # Line 1429
    sw	$a7,32292($s0)
.L0da3d77c:
    # Line 1431
    lwc1	$f6,196($v1)
    swc1	$f6,196($sp)
    # Line 1432
    lwc1	$f5,200($v1)
    swc1	$f5,200($sp)
    # Line 1433
    lwc1	$f4,160($v1)
    swc1	$f4,160($sp)
    # Line 1434
    lwc1	$f3,164($v1)
    swc1	$f3,164($sp)
    # Line 1435
    lw	$a0,236($v1)
    sw	$a0,236($sp)
    # Line 1436
    lw	$v1,240($v1)
    sw	$v1,240($sp)
    # Line 1437
    sw	$zero,32284($s0)
    sw	$zero,32280($s0)
    # Line 1453
    lw	$a2,532($sp)
.L0da3d7b8:
    # Line 1440
    lw	$a4,32636($s0)
    sw	$a4,12($sp)
    # Line 1441
    lw	$a6,168($sp)
    lw	$a5,100($sp)
    # Line 1440
    sw	$a4,8($sp)
    # Line 1441
    mult	$a5,$a6
    # Line 1453
    ld	$a5,600($sp)
    # Line 1451
    ld	$a4,648($sp)
    sw	$a4,180($sp)
    # Line 1453
    movz	$a2,$zero,$a5
    # Line 1454
    subu	$a4,$a4,$a2
    sw	$a4,184($sp)
    sw	$a4,168($sp)
    # Line 1453
    subu	$s2,$s2,$a2
    # Line 1455
    sw	$s2,172($sp)
    # Line 1441
    mflo	$a3
    sw	$a3,16($sp)
    # Line 1455
    lbu	$a1,32205($s0)
    # Line 1459
    mtc1	$s2,$f7
    # Line 1455
    beqz	$a1,.L0da3dadc
    # Line 1458
    mtc1	$a4,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f10,32240($s0)
    mul.s	$f9,$f9,$f10
    trunc.w.s	$f9,$f9
    # Line 1459
    cvt.s.w	$f7,$f7
    # Line 1458
    swc1	$f9,216($sp)
    # Line 1459
    lwc1	$f8,32244($s0)
    mul.s	$f7,$f7,$f8
    trunc.w.s	$f7,$f7
    swc1	$f7,220($sp)
    mfc1	$s7,$f7
.L0da3d838:
    # Line 1462
    lbu	$a7,32209($s0)
    beqz	$a7,.L0da3d84c
    nop
    # Line 1465
    addu	$s7,$s7,$s7
    sw	$s7,220($sp)
.L0da3d84c:
    # Line 1467
    sw	$s2,32276($s0)
    # Line 1470
    lw	$t9,32348($s0)
    # Line 1467
    sw	$a4,32272($s0)
    # Line 1470
    addiu	$a1,$sp,0
    # Line 1468
    lw	$t0,12($sp)
    # Line 1470
    move	$a0,$s0
    jal	vice_dmbuf_settlb
    # Line 1468
    sw	$t0,32288($s0)
    # Line 1470
    beqz	$v0,.L0da3dca0
    nop
    # Line 1471
    lw	$t1,32348($s0)
    bnez	$t1,.L0da3d928
    # Line 1474
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
.L0da3d880:
    beqz	$s1,.L0da3d568
    # Line 1478
    lw	$t9,520($sp)
    # Line 1474
    lbu	$ra,32204($s0)
    # Line 1478
    lw	$t8,208($sp)
    negu	$t3,$s7
    # Line 1481
    lw	$t2,532($sp)
    movz	$t3,$s7,$ra
    # Line 1478
    addu	$t3,$t3,$t8
    ld	$t8,744($sp)
    # Line 1481
    subu	$t2,$t9,$t2
    movz	$t2,$t9,$t8
    # Line 1478
    sw	$t3,208($sp)
    # Line 1485
    bnez	$s1,.L0da3d520
    subu	$s8,$s8,$t2
    b	.L0da3d56c
    # Line 1302
    ld	$a6,752($sp)
.L0da3d8c0:
    # Line 1396
    cvt.s.w	$f10,$f10
    sub.s	$f10,$f4,$f10
    b	.L0da3d4bc
    swc1	$f10,192($sp)
.L0da3d8d0:
    # Line 1329
    move	$a0,$s3
    move	$a1,$s2
    li	$a4,1
    move	$a3,$zero
    jal	__glCrmFlushAndConfirm
    lw	$a2,32592($s0)
    b	.L0da3d3c0
    # Line 1326
    lw	$a6,32352($s0)
.L0da3d8f0:
    bnez	$a4,.L0da3d5e4
    nop
    b	.L0da3d3c4
    # Line 1370
    li	$t0,1
.L0da3d900:
    b	.L0da3d568
    # Line 1548
    sw	$s8,520($sp)
.L0da3d908:
    # Line 1357
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$s7
    move	$a3,$zero
    jalr	$t9
    li	$a4,1
    b	.L0da3d64c
    nop
.L0da3d928:
    # Line 1474
    jalr	$t9
    move	$a0,$s0
    b	.L0da3d880
    nop
    nop
    nop
.L0da3d940:
    # Line 1518
    move	$a0,$s4
    move	$a1,$s5
    jalr	$t9
    move	$a2,$s7
.L0da3d950:
    # Line 1514
    ld	$v0,728($sp)
    # Line 1524
    ld	$v1,768($sp)
    # Line 1523
    lw	$at,516($sp)
    # Line 1524
    lw	$v1,96($v1)
    # Line 1514
    addiu	$v0,$v0,1
    # Line 1523
    addu	$s4,$at,$s4
    # Line 1514
    sd	$v0,728($sp)
    beq	$s2,$v0,.L0da3d998
    # Line 1524
    addu	$s5,$v1,$s5
.L0da3d974:
    # Line 1505
    bnez	$s6,.L0da3d940
    # Line 1518
    move	$t9,$s6
    # Line 1521
    # lw $t9, -22808($gp) # &bcopy
    move	$a0,$s4
    move	$a1,$s5
    jal	bcopy
    ld	$a2,696($sp)
    b	.L0da3d950
    nop
.L0da3d998:
    # Line 1514
    beqz	$s1,.L0da3d568
    ld	$s4,552($sp)
    ld	$a0,568($sp)
    # Line 1530
    lw	$a2,532($sp)
    # Line 1514
    lw	$a5,520($sp)
    # Line 1535
    ld	$a3,768($sp)
    ld	$a4,744($sp)
    lw	$a3,96($a3)
    # Line 1530
    subu	$a2,$a5,$a2
    movz	$a2,$a5,$a4
    # Line 1535
    mult	$a3,$a2
    # Line 1534
    subu	$s8,$s8,$a2
    # Line 1535
    mflo	$a1
    addu	$a0,$a0,$a1
    b	.L0da3d518
    sw	$a0,544($sp)
.L0da3d9d8:
    ld	$s2,656($sp)
    ld	$s8,664($sp)
    ld	$ra,616($sp)
    ld	$s3,640($sp)
    ld	$s0,672($sp)
    # Line 1562
    ld	$gp,680($sp)
    jr	$ra
    addiu	$sp,$sp,784
.L0da3d9f8:
    ld	$s3,640($sp)
    ld	$gp,680($sp)
    ld	$ra,616($sp)
    ld	$s0,672($sp)
    # Line 1267
    move	$v0,$zero
    # Line 1562
    ld	$s2,656($sp)
    ld	$s8,664($sp)
    jr	$ra
    addiu	$sp,$sp,784
.L0da3da1c:
    # Line 1302
    ld	$a4,560($sp)
    andi	$a4,$a4,0xc00
    beqz	$a4,.L0da3da48
    ld	$s3,640($sp)
    # Line 1555
    # lw $t9, -23260($gp) # &returnHistogramMinMax
    ld	$a2,768($sp)
    ld	$a1,560($sp)
    move	$a0,$s0
    bal returnHistogramMinMax
    lw	$a2,84($a2)
    ld	$s3,640($sp)
.L0da3da48:
    ld	$s1,624($sp)
    ld	$s6,632($sp)
    ld	$s7,576($sp)
    ld	$s5,584($sp)
    ld	$s4,592($sp)
    # Line 1562
    ld	$gp,680($sp)
    ld	$ra,616($sp)
    ld	$s0,672($sp)
    li	$v0,1
    ld	$s2,656($sp)
    ld	$s8,664($sp)
    jr	$ra
    addiu	$sp,$sp,784
.L0da3da7c:
    # Line 1206
    lw	$a3,32348($s0)
    beqz	$a3,.L0da3db98
    # Line 1209
    li	$a5,4
    # Line 1211
    sw	$a5,100($sp)
    # Line 1210
    li	$a6,1
    sw	$a6,116($sp)
    # Line 1209
    sw	$a5,108($sp)
    # Line 1208
    li	$a4,6408
    # Line 1211
    b	.L0da3d208
    # Line 1208
    sw	$a4,80($sp)
.L0da3daa4:
    # Line 1199
    li	$v0,1
    sw	$v0,28($sp)
    # Line 1198
    li	$a7,6409
    b	.L0da3d1ac
    sw	$a7,0($sp)
.L0da3dab8:
    ld	$s3,640($sp)
    # Line 1562
    ld	$gp,680($sp)
    ld	$ra,616($sp)
    ld	$s0,672($sp)
    # Line 1278
    move	$v0,$zero
    # Line 1562
    ld	$s2,656($sp)
    ld	$s8,664($sp)
    jr	$ra
    addiu	$sp,$sp,784
.L0da3dadc:
    # Line 1462
    sw	$s2,220($sp)
    move	$s7,$s2
    b	.L0da3d838
    # Line 1461
    sw	$a4,216($sp)
.L0da3daec:
    # Line 1430
    lbu	$t0,32209($s0)
    bnez	$t0,.L0da3d77c
    nop
    b	.L0da3d7b8
    # Line 1453
    lw	$a2,532($sp)
.L0da3db00:
    # Line 1562
    ld	$gp,680($sp)
    ld	$s0,672($sp)
    ld	$s1,624($sp)
    ld	$s2,656($sp)
    ld	$s3,640($sp)
    ld	$s4,592($sp)
    ld	$s5,584($sp)
    ld	$ra,616($sp)
    ld	$s6,632($sp)
    # Line 1411
    move	$v0,$zero
    # Line 1562
    ld	$s7,576($sp)
    ld	$s8,664($sp)
    jr	$ra
    addiu	$sp,$sp,784
.L0da3db38:
    ld	$s6,632($sp)
    ld	$s4,592($sp)
    ld	$s1,624($sp)
    ld	$s5,584($sp)
    # Line 1389
    move	$v0,$zero
    b	.L0da3d9d8
    ld	$s7,576($sp)
.L0da3db54:
    # Line 1191
    sw	$t3,36($sp)
    # Line 1190
    li	$t1,4
    sw	$t1,28($sp)
    # Line 1189
    li	$t2,6408
    sw	$t2,0($sp)
    # Line 1188
    b	.L0da3d1e4
    # Line 1192
    sw	$t1,20($sp)
.L0da3db70:
    # Line 1297
    lui	$t8,0x3
    and	$t8,$s2,$t8
    bnez	$t8,.L0da3d304
    nop
    sd	$s1,624($sp)
    # Line 1298
    ld	$t9,768($sp)
    sd	$s6,632($sp)
    lw	$t9,92($t9)
    b	.L0da3d304
    sw	$t9,544($sp)
.L0da3db98:
    # Line 1211
    lw	$ra,3260($s0)
    blez	$ra,.L0da3dc6c
    # Line 1215
    li	$v0,4
    sw	$v0,108($sp)
    # Line 1214
    li	$at,6408
    sw	$at,80($sp)
.L0da3dbb0:
    # Line 1220
    lw	$a0,3256($s0)
    addiu	$a0,$a0,7
    sra	$a0,$a0,0x3
    # Line 1221
    mult	$a0,$v0
    # Line 1220
    sw	$a0,116($sp)
    # Line 1221
    mflo	$v1
    b	.L0da3d208
    sw	$v1,100($sp)
.L0da3dbd0:
    # Line 1233
    addiu	$t9,$t9,-18624
    bal __glInitSPBuff
    move	$a0,$s0
    beqz	$v0,.L0da3dcbc
    nop
    b	.L0da3d220
    # Line 1234
    lw	$s3,32568($s0)
.L0da3dbec:
    ld	$s6,632($sp)
    ld	$s4,592($sp)
    ld	$s1,624($sp)
    ld	$s5,584($sp)
    # Line 1350
    move	$v0,$zero
    b	.L0da3d9d8
    ld	$s7,576($sp)
.L0da3dc08:
    ld	$s6,632($sp)
    ld	$s4,592($sp)
    ld	$s1,624($sp)
    ld	$s5,584($sp)
    # Line 1339
    move	$v0,$zero
    b	.L0da3d9d8
    ld	$s7,576($sp)
.L0da3dc24:
    # Line 1247
    ld	$a3,648($sp)
    mult	$s8,$a3
    lw	$a1,20($sp)
    mflo	$a2
    nop
    nop
    mult	$a1,$a2
    li	$a0,0x80fc
    # lw $t9, -22808($gp) # &bcopy
    addu	$a0,$a0,$s0
    lw	$a0,0($a0)
    ld	$a1,768($sp)
    lw	$a0,0($a0)
    mflo	$a2
    jal	bcopy
    lw	$a1,92($a1)
    # Line 1249
    b	.L0da3d9d8
    li	$v0,1
.L0da3dc6c:
    # Line 1218
    li	$v0,1
    sw	$v0,108($sp)
    # Line 1217
    li	$a4,6409
    b	.L0da3dbb0
    sw	$a4,80($sp)
.L0da3dc80:
    # Line 1505
    mult	$s2,$a5
    # lw $t9, -22808($gp) # &bcopy
    move	$a0,$s4
    mflo	$a2
    jal	bcopy
    ld	$a1,568($sp)
    b	.L0da3d998
    nop
.L0da3dca0:
    ld	$s6,632($sp)
    ld	$s4,592($sp)
    ld	$s1,624($sp)
    ld	$s5,584($sp)
    # Line 1471
    move	$v0,$zero
    b	.L0da3d9d8
    ld	$s7,576($sp)
.L0da3dcbc:
    # Line 1234
    b	.L0da3d9d8
    move	$v0,$zero
.end viceReadPixels

# Function: viceCopyPixels
# Declared: Line 1566 (Source lines: 1567-1583)
# Address: 0x0da3dcd0 - 0x0da3dd38 (Size: 104 bytes, Frame: 32)
.globl viceCopyPixels
.ent viceCopyPixels
viceCopyPixels:
    # Line 1574
    li	$v0,1
    sw	$v0,32216($a0)
    # Line 1576
    lw	$at,32292($a0)
    # Line 1575
    lbu	$a2,30652($a0)
    # Line 1567
    lui	$v1,0x1
    # Line 1575
    sb	$a2,32211($a0)
    # Line 1567
    addiu	$sp,$sp,-32
    addiu	$v1,$v1,12476
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 1578
    # lw $t9, -23204($gp) # &viceReadPixels
    # Line 1567
    sd	$ra,8($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    # Line 1578
    bal viceReadPixels
    # Line 1576
    sw	$at,0($sp)
    # Line 1583
    ld	$gp,24($sp)
    # Line 1581
    sb	$zero,32211($s8)
    # Line 1580
    sw	$zero,32216($s8)
    ld	$ra,8($sp)
    # Line 1582
    lw	$a0,0($sp)
    # Line 1583
    andi	$v0,$v0,0xff
    # Line 1582
    sw	$a0,32292($s8)
    # Line 1583
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end viceCopyPixels

# Function: viceCopySubImage
# Declared: Line 1588 (Source lines: 1589-1606)
# Address: 0x0da3dd40 - 0x0da3de08 (Size: 200 bytes, Frame: 48)
.ent viceCopySubImage
viceCopySubImage:
    # Line 1589
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a1
    lw	$v0,352($a1)
    li	$v1,1
    lui	$at,0x1
    sd	$s2,16($sp)
    move	$s2,$a0
    addiu	$at,$at,12364
    sd	$gp,0($sp)
    beq	$v0,$v1,.L0da3dd88
    addu	$gp,$t9,$at
    # Line 1606
    ld	$gp,0($sp)
    # Line 1593
    move	$v0,$zero
    # Line 1606
    ld	$s0,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3dd88:
    sd	$s1,24($sp)
    # Line 1596
    lw	$s1,172($a1)
    blez	$s1,.L0da3ddec
    nop
    sd	$ra,32($sp)
    lw	$a3,92($a1)
    lw	$a2,12($a1)
    nop
    nop
    nop
.L0da3ddb0:
    # Line 1597
    lw	$t9,360($s0)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s0
    # Line 1600
    lw	$a4,12($s0)
    # Line 1602
    lw	$a5,92($s0)
    lw	$a3,96($s0)
    # Line 1596
    addiu	$s1,$s1,-1
    # Line 1600
    lw	$a2,16($s0)
    # Line 1602
    addu	$a3,$a3,$a5
    sw	$a3,92($s0)
    # Line 1600
    addu	$a2,$a2,$a4
    # Line 1596
    bgtz	$s1,.L0da3ddb0
    # Line 1600
    sw	$a2,12($s0)
    ld	$ra,32($sp)
.L0da3ddec:
    ld	$s1,24($sp)
    # Line 1606
    ld	$gp,0($sp)
    li	$v0,1
    ld	$s0,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end viceCopySubImage

# Function: viceCopyImage
# Declared: Line 1610 (Source lines: 1611-1626)
# Address: 0x0da3de10 - 0x0da3de80 (Size: 112 bytes, Frame: 32)
.globl viceCopyImage
.ent viceCopyImage
viceCopyImage:
    # Line 1618
    lbu	$v0,32205($a0)
    # Line 1619
    sb	$zero,32205($a0)
    # Line 1617
    li	$at,1
    sw	$at,32216($a0)
    # Line 1611
    addiu	$sp,$sp,-32
    # Line 1618
    sd	$v0,24($sp)
    # Line 1611
    lui	$a2,0x1
    sd	$s8,8($sp)
    addiu	$a2,$a2,12156
    sd	$gp,16($sp)
    addu	$gp,$t9,$a2
    # Line 1622
    # lw $t9, -23212($gp) # &viceDrawPixels
    # Line 1621
    la	$v1,sub_0da40000
    # Line 1611
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 1622
    nop
    # Line 1621
    addiu	$v1,$v1,-8896
    # Line 1622
    bal viceDrawPixels
    # Line 1621
    sw	$v1,32348($a0)
    # Line 1626
    ld	$gp,16($sp)
    # Line 1624
    sw	$zero,32216($s8)
    ld	$ra,0($sp)
    # Line 1625
    ld	$a3,24($sp)
    # Line 1626
    andi	$v0,$v0,0xff
    # Line 1625
    sb	$a3,32205($s8)
    # Line 1626
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end viceCopyImage

# Function: viceRGBtoRGBA
# Declared: Line 1631 (Source lines: 1634-1769)
# Address: 0x0da3de80 - 0x0da3e2b0 (Size: 1072 bytes, Frame: 144)
.globl viceRGBtoRGBA
.ent viceRGBtoRGBA
viceRGBtoRGBA:
    # Line 1634
    addiu	$sp,$sp,-144
    sd	$a1,128($sp)
    # Line 1645
    lw	$v0,16($a1)
    sd	$s6,56($sp)
    sd	$ra,48($sp)
    # Line 1646
    mult	$a2,$v0
    sd	$s0,40($sp)
    sd	$s5,32($sp)
    # Line 1647
    lw	$a5,168($a1)
    lw	$a4,28($a1)
    sd	$s7,24($sp)
    # Line 1634
    sd	$s2,64($sp)
    # Line 1646
    mflo	$s2
    nop
    nop
    # Line 1647
    mult	$a4,$a5
    sd	$s8,16($sp)
    # Line 1634
    lui	$a2,0x1
    sd	$s1,80($sp)
    addiu	$a2,$a2,12044
    sd	$gp,88($sp)
    addu	$gp,$t9,$a2
    # Line 1653
    lw	$at,-22348($gp)
    # Line 1634
    move	$s1,$a3
    sd	$s4,72($sp)
    move	$s4,$a0
    # Line 1645
    sd	$v0,96($sp)
    # Line 1647
    mflo	$v1
    subu	$v0,$v0,$v1
    # Line 1653
    beqz	$at,.L0da3df08
    sd	$v0,136($sp)
    slti	$a6,$s2,16384
    beqz	$a6,.L0da3df44
    # Line 1657
    nop	# was lw $t9, -22916($gp) # &vice_etc_dramp
.L0da3df08:
    # Line 1654
    move	$v0,$zero
    sd	$s3,0($sp)
.L0da3df10:
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s6,56($sp)
    ld	$s4,72($sp)
    ld	$s0,40($sp)
    ld	$s1,80($sp)
    ld	$s5,32($sp)
    ld	$ra,48($sp)
    ld	$s7,24($sp)
    ld	$s8,16($sp)
    # Line 1769
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da3df44:
    # Line 1657
    jal	vice_etc_dramp
    lw	$a0,32576($a0)
    lui	$a0,0x3
    slt	$a7,$a0,$s2
    # Line 1688
    lui	$a1,0x1
    # Line 1671
    mtc1	$a0,$f0
    ld	$t2,96($sp)
    # Line 1657
    ld	$t0,136($sp)
    # Line 1688
    addu	$a1,$s4,$a1
    # Line 1657
    beqz	$a7,.L0da3dfbc
    # Line 1671
    mtc1	$t2,$f1
    # Line 1657
    beqz	$t0,.L0da3e270
    sd	$v0,120($sp)
    # Line 1672
    ld	$t3,128($sp)
    # Line 1671
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$t8,$f0
    mult	$t8,$t2
    # Line 1672
    lw	$t3,168($t3)
    # Line 1671
    mflo	$s0
    nop
    nop
    # Line 1672
    mult	$t3,$t8
    # Line 1671
    teq	$t2,$zero,0x7
    # Line 1672
    mflo	$t1
    sll	$t1,$t1,0x2
    b	.L0da3dff8
    sd	$t1,8($sp)
.L0da3dfbc:
    # Line 1676
    move	$s0,$s2
    # Line 1677
    srl	$t9,$s2,0x1f
    li	$v1,0xaaaa
    negu	$at,$s2
    dsll	$v1,$v1,0x10
    movz	$at,$s2,$t9
    ori	$v1,$v1,0xaaab
    multu	$at,$v1
    mfhi	$ra
    sra	$ra,$ra,0x1
    negu	$t8,$ra
    sd	$v0,120($sp)
    movz	$t8,$ra,$t9
    sll	$t8,$t8,0x2
    sd	$t8,8($sp)
.L0da3dff8:
    # Line 1688
    addu	$a0,$s2,$s0
    mtc1	$s0,$f2
    addiu	$a0,$a0,-1
    mtc1	$a0,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    teq	$s0,$zero,0x7
    li	$a2,0x8024
    sd	$s3,0($sp)
    move	$s3,$zero
    addu	$a2,$s4,$a2
    beqz	$a0,.L0da3e228
    addiu	$s5,$a0,-1
    sd	$a1,104($sp)
    b	.L0da3e2a0
    sd	$a2,112($sp)
    nop
    nop
    nop
.L0da3e050:
    # Line 1693
    negu	$t2,$s0
    srl	$t0,$s0,0x1f
    li	$t3,0xaaaa
    dsll	$t3,$t3,0x10
    movz	$t2,$s0,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    subu	$s2,$a0,$s0
    sll	$a7,$a7,0x2
.L0da3e084:
    # Line 1726
    move	$a3,$s3
    li	$a1,50
    li	$at,0xffff
    li	$s8,0xffff
    addu	$at,$a7,$at
    addu	$s8,$at,$s8
    slt	$ra,$at,$zero
    # Line 1707
    andi	$s6,$s1,0xfff
    # Line 1726
    movz	$s8,$at,$ra
    sra	$s8,$s8,0x10
    # Line 1707
    addiu	$v1,$s0,4095
    slt	$v0,$v1,$zero
    addiu	$at,$s0,8190
    # Line 1726
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    # Line 1707
    addu	$ra,$s6,$s0
    movz	$at,$v1,$v0
    # Line 1726
    move	$a4,$s8
    # Line 1707
    sra	$at,$at,0xc
    # Line 1726
    lw	$a2,32596($s4)
    # Line 1716
    addiu	$s7,$at,1
    # Line 1707
    sll	$t8,$at,0xc
    # Line 1726
    lw	$a0,32576($s4)
    # Line 1707
    slt	$t8,$t8,$ra
    # Line 1726
    jal	vice_dmbuf_settlb
    movz	$s7,$at,$t8
    bltz	$v0,.L0da3e260
    # Line 1753
    ld	$a0,136($sp)
    # Line 1748
    ld	$a4,8($sp)
    # Line 1752
    ld	$a1,128($sp)
    # Line 1737
    ld	$a5,104($sp)
    # Line 1748
    ld	$v1,120($sp)
    # Line 1746
    sw	$s1,-32656($a5)
    # Line 1745
    sw	$s0,-32648($a5)
    # Line 1744
    sw	$s7,-32660($a5)
    # Line 1742
    li	$a6,32
    sw	$a6,-32652($a5)
    # Line 1741
    sw	$zero,-32668($a5)
    # Line 1739
    li	$a7,84
    sw	$a7,-32672($a5)
    # Line 1738
    li	$t0,0x8100
    sw	$t0,-32676($a5)
    # Line 1737
    li	$t1,1
    sw	$t1,-32716($a5)
    # Line 1751
    sw	$s0,12($v1)
    # Line 1750
    lui	$a2,0xb2
    # Line 1749
    lui	$a3,0x80
    # Line 1750
    sw	$a2,8($v1)
    # Line 1749
    addu	$a3,$s6,$a3
    sw	$a3,4($v1)
    # Line 1748
    sw	$a4,0($v1)
    # Line 1754
    lui	$v0,0x900d
    # Line 1752
    lw	$a1,168($a1)
    # Line 1754
    ori	$v0,$v0,0xbeef
    # Line 1755
    sw	$v0,28($v1)
    # Line 1754
    sw	$v0,24($v1)
    # Line 1753
    sw	$a0,20($v1)
    # Line 1757
    # lw $t9, -22724($gp) # &vice_put_vaddr
    # Line 1752
    sw	$a1,16($v1)
    # Line 1757
    ld	$a1,112($sp)
    jal	vice_put_vaddr
    lw	$a0,32576($s4)
    bltz	$v0,.L0da3e268
    # Line 1688
    li	$t2,-1
    addiu	$s5,$s5,-1
    # Line 1765
    addu	$s1,$s0,$s1
    # Line 1766
    addu	$s3,$s8,$s3
    # Line 1688
    slt	$t3,$s0,$s2
    beq	$s5,$t2,.L0da3e228
    # Line 1701
    mtc1	$s2,$f2
    # Line 1695
    li	$t8,0xaaaa
.L0da3e19c:
    # Line 1701
    ld	$v1,96($sp)
    # Line 1695
    srl	$t1,$s2,0x1f
    # Line 1701
    ld	$a1,128($sp)
    # Line 1695
    ld	$t0,136($sp)
    # Line 1688
    bnez	$t3,.L0da3e050
    move	$a0,$s2
    # Line 1695
    negu	$t3,$s2
    dsll	$t8,$t8,0x10
    ori	$t8,$t8,0xaaab
    movz	$t3,$s2,$t1
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x1
    negu	$a7,$t2
    move	$s0,$s2
    movz	$a7,$t2,$t1
    # Line 1701
    move	$s2,$zero
    # Line 1695
    beqz	$t0,.L0da3e220
    sll	$a7,$a7,0x2
    # Line 1701
    mtc1	$v1,$f3
    cvt.d.w	$f2,$f2
    cvt.d.w	$f3,$f3
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    lw	$a1,168($a1)
    mfc1	$a2,$f2
    mult	$a1,$a2
    teq	$v1,$zero,0x7
    mflo	$v0
    nop
    sll	$v0,$v0,0x2
.L0da3e218:
    b	.L0da3e084
    sd	$v0,8($sp)
.L0da3e220:
    # Line 1698
    b	.L0da3e218
    move	$v0,$a7
.L0da3e228:
    # Line 1769
    ld	$gp,88($sp)
    ld	$s0,40($sp)
    ld	$s1,80($sp)
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s4,72($sp)
    ld	$s5,32($sp)
    ld	$ra,48($sp)
    ld	$s6,56($sp)
    li	$v0,1
    ld	$s7,24($sp)
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da3e260:
    # Line 1728
    b	.L0da3df10
    move	$v0,$zero
.L0da3e268:
    # Line 1759
    b	.L0da3df10
    move	$v0,$zero
.L0da3e270:
    # Line 1667
    mtc1	$a0,$f3
    li	$a3,3
    mtc1	$a3,$f4
    cvt.d.w	$f3,$f3
    cvt.d.w	$f4,$f4
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a2,$f3
    sll	$a2,$a2,0x2
    move	$s0,$a0
    b	.L0da3dff8
    sd	$a2,8($sp)
.L0da3e2a0:
    # Line 1701
    mtc1	$s2,$f2
    # Line 1688
    slt	$t3,$s0,$s2
    b	.L0da3e19c
    # Line 1695
    li	$t8,0xaaaa
.end viceRGBtoRGBA

# Function: gfxmapfile
# Declared: Line 1774 (Source lines: 1775-1798)
# Address: 0x0da3e2b0 - 0x0da3e390 (Size: 224 bytes, Frame: 192)
.globl gfxmapfile
.ent gfxmapfile
gfxmapfile:
    # Line 1775
    addiu	$sp,$sp,-192
    move	$v0,$a1
    sd	$s1,168($sp)
    move	$s1,$a0
    sd	$s0,176($sp)
    lui	$at,0x1
    move	$s0,$a2
    sd	$ra,184($sp)
    addiu	$at,$at,10972
    sd	$gp,160($sp)
    bltz	$a0,.L0da3e360
    addu	$gp,$t9,$at
    # Line 1780
    lw	$a1,0($a2)
    beqz	$a1,.L0da3e328
    sd	$v0,152($sp)
.L0da3e2ec:
    # Line 1793
    # lw $t9, -22824($gp) # &mmap
    move	$a0,$zero
    move	$a5,$zero
    move	$a4,$s1
    li	$a3,2
    jal	mmap
    li	$a2,1
    # Line 1798
    ld	$s0,176($sp)
    # Line 1793
    li	$v1,-1
    # Line 1798
    ld	$s1,168($sp)
    # Line 1793
    beq	$v0,$v1,.L0da3e348
    ld	$ra,184($sp)
    # Line 1798
    ld	$gp,160($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da3e328:
    # Line 1786
    # lw $t9, -22716($gp) # &stat
    ld	$a0,152($sp)
    jal	stat
    addiu	$a1,$sp,0
    bltz	$v0,.L0da3e378
    # Line 1790
    lw	$a1,60($sp)
    b	.L0da3e2ec
    sw	$a1,0($s0)
.L0da3e348:
    # Line 1795
    # lw $t9, -22840($gp) # &perror
    jal	perror
    ld	$a0,152($sp)
    # Line 1796
    # lw $t9, -22752($gp) # &exit
    jal	exit
    li	$a0,1
.L0da3e360:
    # Line 1779
    # lw $t9, -22840($gp) # &perror
    jal	perror
    move	$a0,$a1
    # Line 1780
    # lw $t9, -22752($gp) # &exit
    jal	exit
    li	$a0,1
.L0da3e378:
    # Line 1787
    # lw $t9, -22840($gp) # &perror
    jal	perror
    ld	$a0,152($sp)
    # Line 1788
    # lw $t9, -22752($gp) # &exit
    jal	exit
    li	$a0,1
.end gfxmapfile

# Function: __viceMapCode
# Declared: Line 1802 (Source lines: 1804-1877)
# Address: 0x0da3e390 - 0x0da3e998 (Size: 1544 bytes, Frame: 224)
.globl __viceMapCode
.ent __viceMapCode
__viceMapCode:
    # Line 1804
    addiu	$sp,$sp,-480
    # Line 1805
    sw	$zero,0($sp)
    sd	$ra,472($sp)
    # Line 1804
    lui	$a3,0x1
    sd	$s0,456($sp)
    addiu	$a3,$a3,10748
    sd	$gp,464($sp)
    addu	$gp,$t9,$a3
    # Line 1809
    la	$t8,sub_0da40000
    # lw $t9, -32680($gp) # &sub_0da40000
    la	$t3,sub_0da40000
    la	$t2,sub_0da40000
    la	$t1,sub_0da40000
    la	$t0,sub_0da40000
    la	$a7,sub_0da40000
    la	$a6,sub_0da40000
    la	$a5,sub_0da40000
    la	$a4,sub_0da40000
    la	$s0,sub_0da40000
    la	$a3,sub_0da40000
    addiu	$s0,$s0,11352
    sw	$s0,380($sp)
    la	$s0,sub_0da40000
    addiu	$a3,$a3,11208
    sw	$a3,344($sp)
    la	$a3,sub_0da40000
    addiu	$a4,$a4,11224
    sw	$a4,348($sp)
    la	$a4,sub_0da40000
    addiu	$a5,$a5,11240
    sw	$a5,352($sp)
    la	$a5,sub_0da40000
    addiu	$a6,$a6,11256
    sw	$a6,356($sp)
    la	$a6,sub_0da40000
    addiu	$a7,$a7,11272
    sw	$a7,360($sp)
    la	$a7,sub_0da40000
    addiu	$t0,$t0,11288
    sw	$t0,364($sp)
    la	$t0,sub_0da40000
    addiu	$t1,$t1,11304
    sw	$t1,368($sp)
    la	$t1,sub_0da40000
    addiu	$t2,$t2,11320
    sw	$t2,372($sp)
    la	$t2,sub_0da40000
    addiu	$t3,$t3,11336
    sw	$t3,376($sp)
    la	$t3,sub_0da40000
    addiu	$t9,$t9,11384
    sw	$t9,388($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t8,$t8,11368
    sw	$t8,384($sp)
    la	$t8,sub_0da40000
    addiu	$t9,$t9,11128
    sw	$t9,324($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t8,$t8,11112
    sw	$t8,320($sp)
    la	$t8,sub_0da40000
    addiu	$t3,$t3,11080
    sw	$t3,312($sp)
    la	$t3,sub_0da40000
    addiu	$t2,$t2,11064
    sw	$t2,308($sp)
    la	$t2,sub_0da40000
    addiu	$t1,$t1,11048
    sw	$t1,304($sp)
    la	$t1,sub_0da40000
    addiu	$t0,$t0,11032
    sw	$t0,300($sp)
    la	$t0,sub_0da40000
    addiu	$a7,$a7,11016
    sw	$a7,296($sp)
    la	$a7,sub_0da40000
    addiu	$a6,$a6,11000
    sw	$a6,292($sp)
    la	$a6,sub_0da40000
    addiu	$a5,$a5,10984
    sw	$a5,288($sp)
    la	$a5,sub_0da40000
    addiu	$a4,$a4,10968
    sw	$a4,284($sp)
    la	$a4,sub_0da40000
    addiu	$a3,$a3,10952
    sw	$a3,280($sp)
    la	$a3,sub_0da40000
    addiu	$s0,$s0,11096
    sw	$s0,316($sp)
    la	$s0,sub_0da40000
    addiu	$a3,$a3,10696
    sw	$a3,216($sp)
    la	$a3,sub_0da40000
    addiu	$s0,$s0,10840
    sw	$s0,252($sp)
    la	$s0,sub_0da40000
    addiu	$a4,$a4,10712
    sw	$a4,220($sp)
    la	$a4,sub_0da40000
    addiu	$a5,$a5,10728
    sw	$a5,224($sp)
    la	$a5,sub_0da40000
    addiu	$a6,$a6,10744
    sw	$a6,228($sp)
    la	$a6,sub_0da40000
    addiu	$a7,$a7,10760
    sw	$a7,232($sp)
    la	$a7,sub_0da40000
    addiu	$t0,$t0,10776
    sw	$t0,236($sp)
    la	$t0,sub_0da40000
    addiu	$t1,$t1,10792
    sw	$t1,240($sp)
    la	$t1,sub_0da40000
    addiu	$t2,$t2,10808
    sw	$t2,244($sp)
    la	$t2,sub_0da40000
    addiu	$t3,$t3,10824
    sw	$t3,248($sp)
    la	$t3,sub_0da40000
    addiu	$t8,$t8,10856
    sw	$t8,256($sp)
    la	$t8,sub_0da40000
    addiu	$t9,$t9,10872
    sw	$t9,260($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t8,$t8,10600
    sw	$t8,192($sp)
    la	$t8,sub_0da40000
    addiu	$t9,$t9,10616
    sw	$t9,196($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t3,$t3,10568
    sw	$t3,184($sp)
    la	$t3,sub_0da40000
    addiu	$t2,$t2,10552
    sw	$t2,180($sp)
    la	$t2,sub_0da40000
    addiu	$t1,$t1,10536
    sw	$t1,176($sp)
    la	$t1,sub_0da40000
    addiu	$t0,$t0,10520
    sw	$t0,172($sp)
    la	$t0,sub_0da40000
    addiu	$a7,$a7,10504
    sw	$a7,168($sp)
    la	$a7,sub_0da40000
    addiu	$a6,$a6,10488
    sw	$a6,164($sp)
    la	$a6,sub_0da40000
    addiu	$a5,$a5,10472
    sw	$a5,160($sp)
    la	$a5,sub_0da40000
    addiu	$a4,$a4,10456
    sw	$a4,156($sp)
    la	$a4,sub_0da40000
    addiu	$s0,$s0,10584
    sw	$s0,188($sp)
    la	$s0,sub_0da40000
    addiu	$a3,$a3,10440
    sw	$a3,152($sp)
    la	$a3,sub_0da40000
    addiu	$s0,$s0,10328
    sw	$s0,124($sp)
    la	$s0,sub_0da40000
    addiu	$a3,$a3,10184
    sw	$a3,88($sp)
    la	$a3,sub_0da40000
    addiu	$a4,$a4,10200
    sw	$a4,92($sp)
    la	$a4,sub_0da40000
    addiu	$a5,$a5,10216
    sw	$a5,96($sp)
    la	$a5,sub_0da40000
    addiu	$a6,$a6,10232
    sw	$a6,100($sp)
    la	$a6,sub_0da40000
    addiu	$a7,$a7,10248
    sw	$a7,104($sp)
    la	$a7,sub_0da40000
    addiu	$t0,$t0,10264
    sw	$t0,108($sp)
    la	$t0,sub_0da40000
    addiu	$t1,$t1,10280
    sw	$t1,112($sp)
    la	$t1,sub_0da40000
    addiu	$t2,$t2,10296
    sw	$t2,116($sp)
    la	$t2,sub_0da40000
    addiu	$t3,$t3,10312
    sw	$t3,120($sp)
    la	$t3,sub_0da40000
    addiu	$t9,$t9,10360
    sw	$t9,132($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t8,$t8,10344
    sw	$t8,128($sp)
    la	$t8,sub_0da40000
    addiu	$t9,$t9,10104
    sw	$t9,68($sp)
    addiu	$t8,$t8,10088
    sw	$t8,64($sp)
    addiu	$t3,$t3,10056
    sw	$t3,56($sp)
    addiu	$t2,$t2,10040
    sw	$t2,52($sp)
    addiu	$t1,$t1,10024
    sw	$t1,48($sp)
    addiu	$t0,$t0,10008
    sw	$t0,44($sp)
    addiu	$a7,$a7,9992
    sw	$a7,40($sp)
    addiu	$a6,$a6,9976
    sw	$a6,36($sp)
    addiu	$a5,$a5,9960
    sw	$a5,32($sp)
    addiu	$a4,$a4,9944
    sw	$a4,28($sp)
    addiu	$a3,$a3,9928
    sw	$a3,24($sp)
    addiu	$s0,$s0,10072
    sw	$s0,60($sp)
    la	$v0,sub_0da40000
    la	$at,sub_0da40000
    la	$v1,sub_0da40000
    la	$a2,sub_0da40000
    addiu	$v1,$v1,11432
    sw	$v1,400($sp)
    la	$v1,sub_0da40000
    addiu	$a2,$a2,11448
    sw	$a2,404($sp)
    la	$a2,sub_0da40000
    addiu	$at,$at,11400
    sw	$at,392($sp)
    la	$at,sub_0da40000
    addiu	$v0,$v0,11416
    sw	$v0,396($sp)
    la	$v0,sub_0da40000
    addiu	$at,$at,11144
    sw	$at,328($sp)
    la	$at,sub_0da40000
    addiu	$v0,$v0,11160
    sw	$v0,332($sp)
    la	$v0,sub_0da40000
    addiu	$a2,$a2,11192
    sw	$a2,340($sp)
    la	$a2,sub_0da40000
    addiu	$v1,$v1,11176
    sw	$v1,336($sp)
    la	$v1,sub_0da40000
    addiu	$a2,$a2,10936
    sw	$a2,276($sp)
    la	$a2,sub_0da40000
    addiu	$v1,$v1,10920
    sw	$v1,272($sp)
    la	$v1,sub_0da40000
    addiu	$v0,$v0,10904
    sw	$v0,268($sp)
    la	$v0,sub_0da40000
    addiu	$at,$at,10888
    sw	$at,264($sp)
    la	$at,sub_0da40000
    addiu	$v0,$v0,10648
    sw	$v0,204($sp)
    la	$v0,sub_0da40000
    addiu	$at,$at,10632
    sw	$at,200($sp)
    la	$at,sub_0da40000
    addiu	$v1,$v1,10664
    sw	$v1,208($sp)
    la	$v1,sub_0da40000
    addiu	$a2,$a2,10680
    sw	$a2,212($sp)
    la	$a2,sub_0da40000
    addiu	$v1,$v1,10408
    sw	$v1,144($sp)
    la	$v1,sub_0da40000
    addiu	$a2,$a2,10424
    sw	$a2,148($sp)
    la	$a2,sub_0da40000
    addiu	$at,$at,10376
    sw	$at,136($sp)
    la	$at,sub_0da40000
    addiu	$v0,$v0,10392
    sw	$v0,140($sp)
    la	$v0,sub_0da40000
    addiu	$at,$at,10120
    sw	$at,72($sp)
    la	$at,sub_0da40000
    addiu	$v0,$v0,10136
    sw	$v0,76($sp)
    la	$v0,sub_0da40000
    addiu	$a2,$a2,10168
    sw	$a2,84($sp)
    la	$a2,sub_0da40000
    addiu	$v1,$v1,10152
    sw	$v1,80($sp)
    la	$v1,sub_0da40000
    addiu	$a2,$a2,9912
    sw	$a2,20($sp)
    addiu	$v1,$v1,9896
    sw	$v1,16($sp)
    # Line 1804
    move	$s0,$a1
    # Line 1809
    addiu	$v0,$v0,9880
    sw	$v0,12($sp)
    # Line 1804
    move	$v0,$a0
    # Line 1809
    addiu	$at,$at,9864
    sw	$at,8($sp)
    la	$a4,sub_0da40000
    la	$a1,sub_0da40000
    la	$a3,sub_0da40000
    addiu	$a1,$a1,11496
    sw	$a1,416($sp)
    # Line 1843
    sll	$a2,$v0,0x2
    # lw $t9, -23224($gp) # &vice_gfxfile
    addiu	$a0,$sp,8
    # Line 1809
    addiu	$a3,$a3,11480
    sw	$a3,412($sp)
    # Line 1843
    addu	$a0,$a0,$a2
    # Line 1809
    addiu	$a4,$a4,11464
    sw	$a4,408($sp)
    # Line 1843
    bal vice_gfxfile
    lw	$a0,0($a0)
    # Line 1845
    # lw $t9, -22828($gp) # &open
    # Line 1843
    move	$a0,$v0
    sd	$v0,440($sp)
    # Line 1845
    jal	open
    move	$a1,$zero
    li	$a5,-1
    beq	$v0,$a5,.L0da3e918
    sd	$v0,448($sp)
    # Line 1850
    # lw $t9, -23188($gp) # &gfxmapfile
    ld	$a0,448($sp)
    ld	$a1,440($sp)
    bal gfxmapfile
    addiu	$a2,$sp,0
    # Line 1852
    lw	$a6,4200($s0)
    lw	$t0,8($v0)
    sll	$a6,$a6,0x2
    sll	$t0,$t0,0x2
    andi	$a7,$a6,0xffff
    sd	$a7,424($sp)
    addu	$a7,$a7,$t0
    slti	$a7,$a7,4097
    ld	$ra,472($sp)
    bnez	$a7,.L0da3e930
    # Line 1850
    sd	$v0,432($sp)
    # Line 1857
    li	$v0,-1
    # Line 1877
    ld	$gp,464($sp)
    ld	$s0,456($sp)
    jr	$ra
    addiu	$sp,$sp,480
.L0da3e918:
    ld	$ra,472($sp)
    # Line 1847
    li	$v0,-1
    # Line 1877
    ld	$gp,464($sp)
    ld	$s0,456($sp)
    jr	$ra
    addiu	$sp,$sp,480
.L0da3e930:
    # Line 1862
    # lw $t9, -22748($gp) # &vice_loadmspcode
    lw	$a3,0($sp)
    ld	$a1,432($sp)
    addu	$a2,$a6,$s0
    lw	$a0,4112($s0)
    jal	vice_loadmspcode
    addiu	$a2,$a2,16
    # Line 1867
    lw	$a4,4200($s0)
    ld	$a0,432($sp)
    # Line 1869
    # lw $t9, -22816($gp) # &munmap
    # Line 1867
    lw	$a3,8($a0)
    addu	$a3,$a3,$a4
    sw	$a3,4200($s0)
    # Line 1869
    jal	munmap
    lw	$a1,0($sp)
    # Line 1873
    # lw $t9, -22820($gp) # &close
    jal	close
    ld	$a0,448($sp)
    # Line 1877
    ld	$gp,464($sp)
    ld	$ra,472($sp)
    ld	$v0,424($sp)
    ld	$s0,456($sp)
    addiu	$sp,$sp,480
    addiu	$v0,$v0,8192
    jr	$ra
    sll	$v0,$v0,0x10
.end __viceMapCode

# Function: __viceLoadCSBCode
# Declared: Line 1881 (Source lines: 1883-1942)
# Address: 0x0da3e9a0 - 0x0da3ec00 (Size: 608 bytes, Frame: 32)
.globl __viceLoadCSBCode
.ent __viceLoadCSBCode
__viceLoadCSBCode:
    # Line 1889
    lw	$a4,4176($a1)
    # Line 1883
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 1887
    sll	$a6,$a0,0x1
    # Line 1885
    lw	$s1,4124($a1)
    # Line 1887
    slt	$a6,$a2,$a6
    sw	$a6,4144($a1)
    # Line 1889
    lw	$a7,4172($a1)
    # Line 1883
    sd	$s0,16($sp)
    # Line 1889
    li	$a5,1
    # Line 1883
    lui	$at,0x1
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$at,$at,9196
    sd	$gp,0($sp)
    # Line 1889
    beq	$a7,$a5,.L0da3ea3c
    # Line 1883
    addu	$gp,$t9,$at
.L0da3e9e4:
    # Line 1904
    beq	$a4,$a5,.L0da3eaa4
    nop
.L0da3e9ec:
    # Line 1905
    lw	$a7,4120($s0)
    beq	$a7,$a5,.L0da3eae0
    # Line 1929
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 1931
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,4
    ld	$ra,24($sp)
    move	$a1,$v0
.L0da3ea10:
    # Line 1942
    ld	$gp,0($sp)
    # Line 1934
    sw	$zero,4140($s0)
    # Line 1936
    lw	$v0,4148($s0)
    # Line 1942
    ld	$s0,16($sp)
    sltiu	$t0,$s1,1
    ld	$s1,8($sp)
    addiu	$sp,$sp,32
    lui	$t1,0xffff
    # Line 1936
    or	$v0,$v0,$a1
    # Line 1942
    jr	$ra
    movn	$v0,$t1,$t0
.L0da3ea3c:
    # Line 1889
    beq	$a4,$a5,.L0da3eaf8
    lw	$a0,4140($a1)
.L0da3ea44:
    # Line 1896
    beqz	$a0,.L0da3e9e4
    nop
    lw	$v1,4120($s0)
    beq	$v1,$a5,.L0da3eb30
    # Line 1898
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 1900
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,2
    ld	$ra,24($sp)
    li	$a0,1
    move	$a1,$v0
.L0da3ea74:
    # Line 1942
    ld	$gp,0($sp)
    # Line 1934
    sw	$zero,4140($s0)
    # Line 1902
    sw	$a0,4128($s0)
    # Line 1936
    lw	$v0,4148($s0)
    # Line 1942
    ld	$s0,16($sp)
    sltiu	$a2,$s1,1
    ld	$s1,8($sp)
    addiu	$sp,$sp,32
    lui	$a3,0xffff
    # Line 1936
    or	$v0,$v0,$a1
    # Line 1942
    jr	$ra
    movn	$v0,$a3,$a2
.L0da3eaa4:
    # Line 1904
    beqz	$a6,.L0da3e9ec
    nop
    lw	$v1,4120($s0)
    beq	$v1,$a5,.L0da3eb4c
    # Line 1921
    lw	$a0,4116($s0)
    # Line 1917
    beq	$a7,$a5,.L0da3ebd0
    # Line 1921
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    beqz	$a0,.L0da3eb80
    # Line 1925
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,6
    ld	$ra,24($sp)
    b	.L0da3ea10
    move	$a1,$v0
.L0da3eae0:
    # Line 1929
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,10
    ld	$ra,24($sp)
    b	.L0da3ea10
    move	$a1,$v0
.L0da3eaf8:
    # Line 1889
    beqz	$a0,.L0da3e9e4
    nop
    beqz	$a6,.L0da3ea44
    nop
    lw	$a1,4120($a1)
    beq	$a1,$a5,.L0da3ebb8
    # Line 1892
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 1894
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a0,$a5
    bal __viceMapCode
    move	$a1,$s0
    ld	$ra,24($sp)
    b	.L0da3ea10
    move	$a1,$v0
.L0da3eb30:
    # Line 1898
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,8
    li	$a0,1
    ld	$ra,24($sp)
    b	.L0da3ea74
    move	$a1,$v0
.L0da3eb4c:
    # Line 1904
    beq	$a7,$a5,.L0da3ebe8
    # Line 1907
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    lw	$a2,4116($s0)
    beqz	$a2,.L0da3eb9c
    # Line 1913
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,12
    ld	$ra,24($sp)
    move	$a1,$v0
.L0da3eb74:
    # Line 1917
    li	$s1,1
    b	.L0da3ea10
    sw	$zero,4124($s0)
.L0da3eb80:
    # Line 1923
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,5
    ld	$ra,24($sp)
    b	.L0da3ea10
    move	$a1,$v0
.L0da3eb9c:
    # Line 1910
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,11
    ld	$ra,24($sp)
    b	.L0da3eb74
    move	$a1,$v0
.L0da3ebb8:
    # Line 1892
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,7
    ld	$ra,24($sp)
    b	.L0da3ea10
    move	$a1,$v0
.L0da3ebd0:
    # Line 1921
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,3
    ld	$ra,24($sp)
    b	.L0da3ea10
    move	$a1,$v0
.L0da3ebe8:
    # Line 1907
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,9
    ld	$ra,24($sp)
    b	.L0da3ea10
    move	$a1,$v0
.end __viceLoadCSBCode

# Function: __viceSetHCoef
# Declared: Line 1952 (Source lines: 1954-2673)
# Address: 0x0da3ec00 - 0x0da405d0 (Size: 6608 bytes, Frame: 192)
.globl __viceSetHCoef
.ent __viceSetHCoef
__viceSetHCoef:
    # Line 1954
    addiu	$sp,$sp,-4416
    sd	$ra,4360($sp)
    sd	$s1,4368($sp)
    sd	$s0,4344($sp)
    # Line 1964
    sw	$zero,32648($a0)
    # Line 1968
    lw	$a3,32640($a0)
    sw	$a3,0($sp)
    # Line 1969
    lw	$a3,32640($a0)
    sd	$gp,4352($sp)
    # Line 1954
    lui	$v1,0x1
    addiu	$v1,$v1,8588
    # Line 1969
    addiu	$a3,$a3,1024
    sw	$a3,4($sp)
    # Line 1954
    addu	$gp,$t9,$v1
    # Line 1970
    lw	$v0,32640($a0)
    # Line 1973
    # lw $t9, -22804($gp) # &bzero
    # Line 1970
    addiu	$v0,$v0,4096
    sw	$v0,8($sp)
    # Line 1971
    lw	$at,32640($a0)
    # Line 1954
    move	$s0,$a1
    # Line 1973
    li	$a1,160
    # Line 1954
    sd	$s2,4336($sp)
    move	$s2,$a2
    # Line 1971
    addiu	$at,$at,2048
    sw	$at,12($sp)
    # Line 1954
    move	$s1,$a0
    # Line 1973
    jal	bzero
    lw	$a0,32640($a0)
    # Line 1976
    lw	$v0,4($sp)
    sh	$zero,54($v0)
    # Line 1978
    lw	$at,4($sp)
    sh	$zero,70($at)
    # Line 1981
    lw	$ra,32568($s1)
    sw	$ra,4112($sp)
    # Line 1983
    lw	$t8,32228($s1)
    lui	$t9,0x40
    and	$t8,$t8,$t9
    sw	$t8,4116($sp)
    # Line 1984
    li	$a1,1
    sw	$a1,4120($sp)
    # Line 1985
    sw	$zero,4128($sp)
    # Line 1986
    sw	$zero,4132($sp)
    # Line 1987
    sw	$zero,4136($sp)
    # Line 1988
    sw	$a1,4140($sp)
    # Line 1989
    sw	$zero,4144($sp)
    # Line 1991
    sw	$zero,4148($sp)
    # Line 1992
    sw	$zero,4152($sp)
    # Line 1993
    sw	$zero,4156($sp)
    # Line 1994
    sw	$zero,4160($sp)
    # Line 1996
    lw	$t3,0($sp)
    sw	$t3,4164($sp)
    # Line 1997
    addiu	$t3,$t3,80
    sw	$t3,4168($sp)
    # Line 1999
    lw	$t2,36($s0)
    sw	$t2,4172($sp)
    # Line 2000
    lw	$t1,116($s0)
    sw	$t1,4176($sp)
    # Line 2001
    lw	$t0,28($s0)
    sw	$t0,4180($sp)
    # Line 2003
    lw	$a7,0($s0)
    sw	$a7,4192($sp)
    # Line 2004
    lw	$a6,80($s0)
    sw	$a6,4196($sp)
    # Line 2006
    sw	$zero,4200($sp)
    # Line 2012
    lw	$a5,4($sp)
    # Line 2007
    sw	$a1,4204($sp)
    # Line 2012
    sh	$zero,62($a5)
    lw	$a4,4176($sp)
    li	$v0,5122
    beq	$a1,$a4,.L0da3f934
    lw	$a0,4($sp)
    # Line 2022
    li	$v1,0xffff
    sh	$v1,60($a0)
.L0da3ed24:
    lw	$a0,84($s0)
    beq	$v0,$a0,.L0da3f95c
.L0da3ed2c:
    # Line 2034
    lw	$a3,4($sp)
    li	$a2,32767
    sh	$a2,56($a3)
    # Line 2035
    lw	$a1,4($sp)
    li	$a0,0x8000
    sh	$a0,58($a1)
    # Line 2037
    lw	$v0,0($s0)
    li	$a1,6407
    beq	$a1,$v0,.L0da3edb4
    li	$a4,6408
    beq	$v0,$a4,.L0da3edb8
    # Line 2041
    lw	$t1,4($sp)
    # Line 2037
    beq	$a0,$v0,.L0da3edb4
    li	$a5,6409
    beq	$v0,$a5,.L0da3eee0
    # Line 2046
    lw	$t1,4($sp)
    # Line 2037
    li	$a6,6410
    beq	$v0,$a6,.L0da3eee0
    # Line 2046
    lw	$t1,4($sp)
    # Line 2524
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2051
    move	$v0,$zero
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3ed98:
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3edb4:
    # Line 2041
    lw	$t1,4($sp)
.L0da3edb8:
    li	$a2,8
    sh	$a2,8($t1)
    lw	$t0,4($sp)
    sh	$a2,38($t0)
    # Line 2042
    lw	$a7,4($sp)
    li	$a5,7
    sw	$a5,12($a7)
.L0da3edd4:
    # Line 2054
    lw	$t3,4($sp)
    lw	$v0,12($t3)
    lw	$v1,4172($sp)
    mult	$v0,$v1
    lw	$ra,28($s0)
    lw	$at,168($s0)
    mflo	$t8
    nop
    nop
    mult	$ra,$at
    mflo	$t9
    nop
    nop
    mult	$t8,$t9
    mflo	$t2
    sw	$t2,12($t3)
    # Line 2055
    lw	$t0,28($s0)
    lw	$t1,168($s0)
    mult	$t0,$t1
    lw	$a6,4172($sp)
    mflo	$a7
    nop
    nop
    mult	$a6,$a7
    lw	$a4,4($sp)
    mflo	$a3
    sw	$a3,20($a4)
    # Line 2056
    lw	$v0,28($s0)
    lw	$v1,4172($sp)
    mult	$v0,$v1
    lw	$v0,4($sp)
    mflo	$at
    sll	$at,$at,0x4
    sh	$at,32($v0)
    # Line 2057
    lw	$ra,0($sp)
    lw	$t9,28($s0)
    sh	$t9,116($ra)
    # Line 2059
    lw	$t8,0($sp)
    li	$t2,16
    sh	$t2,112($t8)
    lw	$t3,0($sp)
    sh	$t2,114($t3)
    sw	$t2,4188($sp)
    sw	$t2,4184($sp)
    # Line 2061
    lw	$v0,80($s0)
    beq	$a1,$v0,.L0da3ef04
    # Line 2065
    lw	$t3,4($sp)
    # Line 2061
    li	$a3,6408
    beq	$v0,$a3,.L0da3ef04
    # Line 2065
    lw	$t3,4($sp)
    # Line 2061
    beq	$a0,$v0,.L0da3ef04
    # Line 2065
    lw	$t3,4($sp)
    # Line 2061
    li	$a4,6409
    beq	$v0,$a4,.L0da3f94c
    # Line 2070
    lw	$t8,4($sp)
    # Line 2061
    li	$a6,6410
    beq	$v0,$a6,.L0da3f94c
    # Line 2070
    lw	$t8,4($sp)
    # Line 2524
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2075
    move	$v0,$zero
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
    # Line 2046
    lw	$t1,4($sp)
.L0da3eee0:
    li	$a2,8
    sh	$a2,8($t1)
    lw	$t0,4($sp)
    sh	$a2,38($t0)
    # Line 2047
    lw	$a7,4($sp)
    li	$a5,7
    # Line 2048
    b	.L0da3edd4
    # Line 2047
    sw	$a5,12($a7)
    # Line 2065
    lw	$t3,4($sp)
.L0da3ef04:
    sh	$a2,10($t3)
    # Line 2066
    lw	$t2,4($sp)
    sw	$a5,16($t2)
.L0da3ef10:
    # Line 2076
    andi	$t8,$s2,0x18
    beqz	$t8,.L0da3ef50
    sd	$t8,4328($sp)
    # Line 2079
    lw	$at,0($sp)
    lhu	$ra,114($at)
    sra	$ra,$ra,0x1
    andi	$ra,$ra,0xffff
    sh	$ra,114($at)
    sw	$ra,4188($sp)
    # Line 2080
    lw	$t9,764($s1)
    lw	$ra,4($sp)
    lw	$t9,68($t9)
    lhu	$at,8($ra)
    addu	$t9,$t9,$at
    addiu	$t9,$t9,-1
    sh	$t9,8($ra)
.L0da3ef50:
    # Line 2083
    lw	$a5,4($sp)
    lw	$a4,0($sp)
    lhu	$a5,8($a5)
    lhu	$a6,112($a4)
    multu	$a5,$a6
    mflo	$a3
    sh	$a3,112($a4)
    lw	$a0,0($sp)
    # Line 2084
    lw	$a1,4($sp)
    # Line 2083
    lhu	$a2,112($a0)
    sw	$a2,4184($sp)
    # Line 2084
    lhu	$a1,10($a1)
    lhu	$a2,114($a0)
    multu	$a1,$a2
    mflo	$v1
    sh	$v1,114($a0)
    lw	$v0,0($sp)
    # Line 2086
    lw	$t1,4($sp)
    # Line 2084
    lhu	$v0,114($v0)
    sw	$v0,4188($sp)
    # Line 2086
    lw	$ra,16($t1)
    lw	$at,4176($sp)
    mult	$ra,$at
    lw	$t8,108($s0)
    lw	$t9,168($s0)
    mflo	$t2
    nop
    nop
    mult	$t8,$t9
    mflo	$t3
    nop
    nop
    mult	$t2,$t3
    mflo	$t0
    sw	$t0,16($t1)
    # Line 2087
    lw	$a6,108($s0)
    lw	$a7,168($s0)
    mult	$a6,$a7
    lw	$a4,4176($sp)
    mflo	$a5
    nop
    nop
    mult	$a4,$a5
    lw	$a3,4($sp)
    mflo	$a2
    sw	$a2,24($a3)
    # Line 2088
    lw	$a0,108($s0)
    lw	$a1,4176($sp)
    mult	$a0,$a1
    lw	$a0,4($sp)
    # Line 2096
    # lw $t9, -23184($gp) # &__viceMapCode
    # Line 2088
    mflo	$v1
    sll	$v1,$v1,0x4
    sh	$v1,34($a0)
    # Line 2089
    lw	$v0,0($sp)
    # Line 2096
    addiu	$a1,$sp,0
    # Line 2089
    lw	$at,108($s0)
    # Line 2096
    move	$a0,$zero
    bal __viceMapCode
    # Line 2089
    sh	$at,118($v0)
    # Line 2096
    lui	$a6,0x2000
    bne	$v0,$a6,.L0da3f98c
    nop
    # Line 2097
    lw	$t0,0($s0)
    li	$a7,6407
    beq	$a7,$t0,.L0da3fdc4
    # Line 2115
    nop	# was lw $t9, -23156($gp) # &viceLateLumaConvert
.L0da3f05c:
    move	$a0,$s1
    move	$a1,$s0
    bal viceLateLumaConvert
    move	$a2,$s2
    andi	$t1,$v0,0xff
    # Line 2117
    beqz	$t1,.L0da3fcd0
    # Line 2115
    sd	$t1,4304($sp)
.L0da3f078:
    # Line 2151
    andi	$t2,$s2,0x2
.L0da3f07c:
    beqz	$t2,.L0da3f2dc
    nop
    # Line 2166
    lwc1	$f3,640($s1)
    # Line 2164
    lw	$t9,4184($sp)
    lw	$t8,4180($sp)
    # Line 2166
    swc1	$f3,4208($sp)
    # Line 2164
    mult	$t8,$t9
    # Line 2167
    lwc1	$f2,644($s1)
    swc1	$f2,4212($sp)
    # Line 2168
    lwc1	$f1,648($s1)
    # Line 2171
    # lw $t9, -23168($gp) # &ScaleInRange
    # Line 2168
    swc1	$f1,4216($sp)
    # Line 2164
    mflo	$t3
    # Line 2169
    lwc1	$f0,652($s1)
    # Line 2164
    srl	$t3,$t3,0x5
    addiu	$t3,$t3,-1
    # Line 2171
    addiu	$a1,$sp,4208
    # Line 2169
    swc1	$f0,4220($sp)
    # Line 2164
    sll	$t3,$t3,0x8
    # Line 2171
    addiu	$a0,$sp,0
    bal ScaleInRange
    sd	$t3,4312($sp)
    # Line 2177
    lw	$at,4120($sp)
    # Line 2181
    andi	$a2,$s2,0xfff
    # Line 2177
    li	$ra,1
    # Line 2181
    # lw $t9, -23180($gp) # &__viceLoadCSBCode
    li	$v0,32767
    # Line 2177
    sltiu	$at,$at,1
    # Line 2181
    addiu	$a1,$sp,0
    # Line 2177
    movn	$ra,$v0,$at
    sd	$ra,4400($sp)
    # Line 2181
    bal __viceLoadCSBCode
    li	$a0,2
    lw	$a6,4204($sp)
    lw	$a5,4($sp)
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a6
    sw	$v0,80($a5)
    # Line 2183
    lw	$a4,4204($sp)
    lw	$a3,4($sp)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    ld	$a4,4312($sp)
    lw	$a2,80($a3)
    or	$a2,$a2,$a4
    sw	$a2,80($a3)
    # Line 2187
    lw	$a1,4204($sp)
    lw	$v1,4($sp)
    addiu	$a1,$a1,1
    sll	$a2,$a1,0x2
    sw	$a1,4204($sp)
    addu	$v1,$v1,$a2
    lw	$v1,76($v1)
    lui	$v0,0xffff
    and	$v1,$v0,$v1
    beq	$v0,$v1,.L0da3ff94
    ld	$a0,4400($sp)
    # Line 2199
    lw	$t1,4120($sp)
    # Line 2190
    lw	$t0,4172($sp)
    li	$v0,255
    li	$a7,1
    xor	$a7,$a7,$t0
    # Line 2199
    li	$t0,32767
    # Line 2190
    sltiu	$a7,$a7,1
    # Line 2199
    beqz	$t1,.L0da3f18c
    # Line 2190
    movz	$v0,$t0,$a7
    # Line 2199
    lw	$t1,4124($sp)
    beqz	$t1,.L0da3feac
.L0da3f18c:
    # Line 2212
    lwc1	$f4,4208($sp)
    sd	$zero,4320($sp)
.L0da3f194:
    # Line 2219
    dsll32	$ra,$a0,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f9
    cvt.s.l	$f9,$f9
    mul.s	$f8,$f9,$f4
    ldc1	$f6,_lit8_3fe0000000000000
    cvt.d.s	$f8,$f8
    # Line 2220
    dsll32	$t9,$v0,0x0
    # Line 2219
    add.d	$f8,$f8,$f6
    # Line 2220
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f7
    # Line 2219
    trunc.w.d	$f8,$f8
    lw	$t8,4164($sp)
    mfc1	$t3,$f8
    # Line 2220
    cvt.s.l	$f7,$f7
    # Line 2219
    sh	$t3,0($t8)
    # Line 2220
    lwc1	$f14,660($s1)
    mul.s	$f14,$f14,$f7
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f6
    trunc.w.d	$f14,$f14
    lw	$t2,4164($sp)
    mfc1	$t1,$f14
    sh	$t1,2($t2)
    # Line 2222
    lwc1	$f13,4212($sp)
    mul.s	$f13,$f13,$f9
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f6
    trunc.w.d	$f13,$f13
    lw	$t0,4164($sp)
    mfc1	$a7,$f13
    sh	$a7,4($t0)
    # Line 2223
    lwc1	$f12,664($s1)
    mul.s	$f12,$f12,$f7
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f6
    trunc.w.d	$f12,$f12
    lw	$a6,4164($sp)
    mfc1	$a5,$f12
    sh	$a5,6($a6)
    # Line 2225
    lwc1	$f11,4216($sp)
    mul.s	$f11,$f11,$f9
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f6
    trunc.w.d	$f11,$f11
    lw	$a4,4164($sp)
    mfc1	$a3,$f11
    sh	$a3,8($a4)
    # Line 2226
    lwc1	$f10,668($s1)
    mul.s	$f10,$f10,$f7
    cvt.d.s	$f10,$f10
    add.d	$f10,$f10,$f6
    trunc.w.d	$f10,$f10
    lw	$a2,4164($sp)
    mfc1	$a1,$f10
    sh	$a1,10($a2)
    # Line 2228
    lwc1	$f8,4220($sp)
    mul.s	$f8,$f8,$f9
    cvt.d.s	$f8,$f8
    add.d	$f8,$f8,$f6
    trunc.w.d	$f8,$f8
    lw	$v1,4164($sp)
    mfc1	$at,$f8
    sh	$at,12($v1)
    # Line 2229
    lwc1	$f5,672($s1)
    mul.s	$f5,$f5,$f7
    cvt.d.s	$f5,$f5
    add.d	$f5,$f5,$f6
    trunc.w.d	$f5,$f5
    lw	$ra,4164($sp)
    mfc1	$t9,$f5
    sh	$t9,14($ra)
    # Line 2231
    lw	$t8,32648($s1)
    ori	$t8,$t8,0x80
    sw	$t8,32648($s1)
    # Line 2233
    lw	$t3,4148($sp)
    # Line 2232
    lw	$t2,4164($sp)
    # Line 2233
    addiu	$t3,$t3,1
    sw	$t3,4148($sp)
    # Line 2232
    addiu	$t2,$t2,16
    # Line 2233
    b	.L0da3f2e0
    # Line 2232
    sw	$t2,4164($sp)
.L0da3f2dc:
    sd	$zero,4320($sp)
.L0da3f2e0:
    # Line 2233
    andi	$at,$s2,0x4
    beqz	$at,.L0da3f320
    # Line 2241
    ld	$a0,4328($sp)
    # Line 2238
    # lw $t9, -23304($gp) # &viceColorTable
    addiu	$a1,$s1,5372
    addiu	$a0,$sp,0
    # Line 2237
    andi	$v0,$s2,0xfff
    slti	$v0,$v0,8
    # Line 2238
    bal viceColorTable
    # Line 2237
    sw	$v0,4144($sp)
    # Line 2238
    beqz	$v0,.L0da3ff74
    nop
    # Line 2241
    lw	$v1,32648($s1)
    ori	$v1,$v1,0x20
    sw	$v1,32648($s1)
    ld	$a0,4328($sp)
.L0da3f320:
    beqz	$a0,.L0da3f384
    # Line 2260
    andi	$a5,$s2,0x20
    # Line 2248
    lw	$a3,4($sp)
    lhu	$a2,32($a3)
    sra	$a2,$a2,0x1
    sh	$a2,32($a3)
    # Line 2249
    lw	$a3,4($sp)
    lhu	$a1,34($a3)
    andi	$a4,$s2,0x8
    sra	$a1,$a1,0x1
    andi	$a2,$s2,0xfff
    beqz	$a4,.L0da3fe80
    sh	$a1,34($a3)
    # Line 2252
    slti	$a3,$a2,16
    sw	$a3,4144($sp)
.L0da3f35c:
    # Line 2256
    # lw $t9, -23264($gp) # &viceConvolve
    lw	$a1,764($s1)
    bal viceConvolve
    addiu	$a0,$sp,0
    beqz	$v0,.L0da3fe8c
    nop
    # Line 2260
    lw	$a4,32648($s1)
    ori	$a4,$a4,0x10
    sw	$a4,32648($s1)
    andi	$a5,$s2,0x20
.L0da3f384:
    beqz	$a5,.L0da3f5ec
    # Line 2341
    andi	$t1,$s2,0x40
    # Line 2274
    lwc1	$f13,680($s1)
    # Line 2272
    lw	$t0,0($sp)
    lw	$a7,4180($sp)
    lhu	$t0,114($t0)
    # Line 2274
    swc1	$f13,4224($sp)
    # Line 2272
    mult	$a7,$t0
    # Line 2275
    lwc1	$f12,684($s1)
    swc1	$f12,4228($sp)
    # Line 2276
    lwc1	$f11,688($s1)
    # Line 2279
    # lw $t9, -23168($gp) # &ScaleInRange
    # Line 2276
    swc1	$f11,4232($sp)
    # Line 2272
    mflo	$a6
    # Line 2277
    lwc1	$f10,692($s1)
    # Line 2272
    srl	$a6,$a6,0x5
    addiu	$a6,$a6,-1
    # Line 2279
    addiu	$a1,$sp,4224
    # Line 2277
    swc1	$f10,4236($sp)
    # Line 2272
    sll	$a6,$a6,0x8
    # Line 2279
    addiu	$a0,$sp,0
    bal ScaleInRange
    sd	$a6,4296($sp)
    # Line 2285
    lw	$t2,4120($sp)
    # Line 2289
    andi	$a2,$s2,0xfff
    # Line 2285
    li	$t1,1
    # Line 2289
    # lw $t9, -23180($gp) # &__viceLoadCSBCode
    # Line 2285
    li	$t3,32767
    sltiu	$t2,$t2,1
    # Line 2289
    addiu	$a1,$sp,0
    # Line 2285
    movn	$t1,$t3,$t2
    # Line 2289
    li	$a0,32
    bal __viceLoadCSBCode
    sd	$t1,4288($sp)
    lw	$a0,4204($sp)
    lw	$v1,4($sp)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    sw	$v0,80($v1)
    # Line 2291
    lw	$v0,4204($sp)
    lw	$at,4($sp)
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    ld	$v0,4296($sp)
    lw	$ra,80($at)
    or	$ra,$ra,$v0
    sw	$ra,80($at)
    # Line 2295
    lw	$t9,4204($sp)
    lw	$t8,4($sp)
    addiu	$t9,$t9,1
    sll	$ra,$t9,0x2
    sw	$t9,4204($sp)
    addu	$t8,$t8,$ra
    lw	$t8,76($t8)
    lui	$t3,0xffff
    and	$t8,$t3,$t8
    beq	$t3,$t8,.L0da400e0
    # Line 2307
    ld	$a3,4320($sp)
    # Line 2298
    lw	$a2,4172($sp)
    li	$v0,255
    li	$a1,1
    xor	$a1,$a1,$a2
    # Line 2307
    li	$a2,32767
    # Line 2298
    sltiu	$a1,$a1,1
    # Line 2307
    bnez	$a3,.L0da3f9ac
    # Line 2298
    movz	$v0,$a2,$a1
    # Line 2307
    lw	$a3,4120($sp)
    beqz	$a3,.L0da400f8
    lw	$a4,4124($sp)
    beqz	$a4,.L0da401bc
    lwc1	$f4,4224($sp)
.L0da3f4a0:
    # Line 2327
    ld	$t0,4288($sp)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f18
    cvt.s.l	$f18,$f18
    mul.s	$f17,$f18,$f4
    ldc1	$f15,_lit8_3fe0000000000000
    cvt.d.s	$f17,$f17
    # Line 2328
    dsll32	$a7,$v0,0x0
    # Line 2327
    add.d	$f17,$f17,$f15
    # Line 2328
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f16
    # Line 2327
    trunc.w.d	$f17,$f17
    lw	$a6,4164($sp)
    mfc1	$a5,$f17
    # Line 2328
    cvt.s.l	$f16,$f16
    # Line 2327
    sh	$a5,0($a6)
    # Line 2328
    lwc1	$f27,696($s1)
    mul.s	$f27,$f27,$f16
    cvt.d.s	$f27,$f27
    add.d	$f27,$f27,$f15
    trunc.w.d	$f27,$f27
    lw	$a4,4164($sp)
    mfc1	$a3,$f27
    sh	$a3,2($a4)
    # Line 2330
    lwc1	$f25,4228($sp)
    mul.s	$f25,$f25,$f18
    cvt.d.s	$f25,$f25
    add.d	$f25,$f25,$f15
    trunc.w.d	$f25,$f25
    lw	$a2,4164($sp)
    mfc1	$a1,$f25
    sh	$a1,4($a2)
    # Line 2331
    lwc1	$f23,700($s1)
    mul.s	$f23,$f23,$f16
    cvt.d.s	$f23,$f23
    add.d	$f23,$f23,$f15
    trunc.w.d	$f23,$f23
    lw	$a0,4164($sp)
    mfc1	$v1,$f23
    sh	$v1,6($a0)
    # Line 2333
    lwc1	$f21,4232($sp)
    mul.s	$f21,$f21,$f18
    cvt.d.s	$f21,$f21
    add.d	$f21,$f21,$f15
    trunc.w.d	$f21,$f21
    lw	$at,4164($sp)
    mfc1	$ra,$f21
    sh	$ra,8($at)
    # Line 2334
    lwc1	$f19,704($s1)
    mul.s	$f19,$f19,$f16
    cvt.d.s	$f19,$f19
    add.d	$f19,$f19,$f15
    trunc.w.d	$f19,$f19
    lw	$t9,4164($sp)
    mfc1	$t8,$f19
    sh	$t8,10($t9)
    # Line 2336
    lwc1	$f17,4236($sp)
    mul.s	$f17,$f17,$f18
    cvt.d.s	$f17,$f17
    add.d	$f17,$f17,$f15
    trunc.w.d	$f17,$f17
    lw	$t3,4164($sp)
    mfc1	$t2,$f17
    sh	$t2,12($t3)
    # Line 2337
    lwc1	$f14,708($s1)
    mul.s	$f14,$f14,$f16
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f15
    trunc.w.d	$f14,$f14
    lw	$t1,4164($sp)
    mfc1	$t0,$f14
    sh	$t0,14($t1)
    # Line 2339
    lw	$a7,32648($s1)
    ori	$a7,$a7,0x80
    sw	$a7,32648($s1)
    # Line 2341
    lw	$a6,4148($sp)
    # Line 2340
    lw	$a5,4164($sp)
    # Line 2341
    addiu	$a6,$a6,1
    sw	$a6,4148($sp)
    # Line 2340
    addiu	$a5,$a5,16
    sw	$a5,4164($sp)
    # Line 2341
    andi	$t1,$s2,0x40
.L0da3f5ec:
    beqz	$t1,.L0da3f628
    # Line 2349
    andi	$t8,$s2,0x80
    # Line 2346
    # lw $t9, -23304($gp) # &viceColorTable
    addiu	$a1,$s1,5532
    addiu	$a0,$sp,0
    # Line 2345
    andi	$t2,$s2,0xfff
    slti	$t2,$t2,128
    # Line 2346
    bal viceColorTable
    # Line 2345
    sw	$t2,4144($sp)
    # Line 2346
    beqz	$v0,.L0da400f0
    nop
    # Line 2349
    lw	$t3,32648($s1)
    ori	$t3,$t3,0x20
    sw	$t3,32648($s1)
    andi	$t8,$s2,0x80
.L0da3f628:
    beqz	$t8,.L0da3f64c
    # Line 2359
    nop	# was lw $t9, -23320($gp) # &viceColorMatrix
    # Line 2358
    andi	$ra,$s2,0xfff
    slti	$ra,$ra,256
    sw	$ra,4144($sp)
    # Line 2359
    addiu	$a0,$sp,0
    bal viceColorMatrix
    lw	$a1,29688($s1)
    beqz	$v0,.L0da40120
.L0da3f64c:
    # Line 2360
    andi	$at,$s2,0x100
    beqz	$at,.L0da3f8b8
    # Line 2441
    andi	$a4,$s2,0x200
    # Line 2374
    lwc1	$f25,712($s1)
    # Line 2372
    lw	$a0,0($sp)
    lw	$v1,4180($sp)
    lhu	$a0,114($a0)
    # Line 2374
    swc1	$f25,4240($sp)
    # Line 2372
    mult	$v1,$a0
    # Line 2375
    lwc1	$f23,716($s1)
    swc1	$f23,4244($sp)
    # Line 2376
    lwc1	$f21,720($s1)
    # Line 2379
    # lw $t9, -23168($gp) # &ScaleInRange
    # Line 2376
    swc1	$f21,4248($sp)
    # Line 2372
    mflo	$v0
    # Line 2377
    lwc1	$f19,724($s1)
    # Line 2372
    srl	$v0,$v0,0x5
    addiu	$v0,$v0,-1
    # Line 2379
    addiu	$a1,$sp,4240
    # Line 2377
    swc1	$f19,4252($sp)
    # Line 2372
    sll	$v0,$v0,0x8
    # Line 2379
    addiu	$a0,$sp,0
    bal ScaleInRange
    sd	$v0,4280($sp)
    # Line 2385
    lw	$a4,4120($sp)
    # Line 2389
    andi	$a2,$s2,0xfff
    # Line 2385
    li	$a3,1
    # Line 2389
    # lw $t9, -23180($gp) # &__viceLoadCSBCode
    # Line 2385
    li	$a5,32767
    sltiu	$a4,$a4,1
    # Line 2389
    addiu	$a1,$sp,0
    # Line 2385
    movn	$a3,$a5,$a4
    # Line 2389
    li	$a0,256
    bal __viceLoadCSBCode
    sd	$a3,4272($sp)
    lw	$t8,4204($sp)
    lw	$t3,4($sp)
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    sw	$v0,80($t3)
    # Line 2391
    lw	$t2,4204($sp)
    lw	$t1,4($sp)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    ld	$t2,4280($sp)
    lw	$t0,80($t1)
    or	$t0,$t0,$t2
    sw	$t0,80($t1)
    # Line 2395
    lw	$a7,4204($sp)
    lw	$a6,4($sp)
    addiu	$a7,$a7,1
    sll	$t0,$a7,0x2
    sw	$a7,4204($sp)
    addu	$a6,$a6,$t0
    lw	$a6,76($a6)
    lui	$a5,0xffff
    and	$a6,$a5,$a6
    beq	$a5,$a6,.L0da40128
    # Line 2407
    ld	$at,4320($sp)
    # Line 2398
    lw	$ra,4172($sp)
    li	$v0,255
    li	$t9,1
    xor	$t9,$t9,$ra
    # Line 2407
    li	$ra,32767
    # Line 2398
    sltiu	$t9,$t9,1
    # Line 2407
    bnez	$at,.L0da3fcb0
    # Line 2398
    movz	$v0,$ra,$t9
    # Line 2407
    lw	$at,4120($sp)
    beqz	$at,.L0da4029c
    lw	$v1,4124($sp)
    beqz	$v1,.L0da40338
    lwc1	$f4,4240($sp)
.L0da3f76c:
    # Line 2427
    ld	$a3,4272($sp)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f1
    cvt.s.l	$f1,$f1
    mul.s	$f0,$f1,$f4
    ldc1	$f29,_lit8_3fe0000000000000
    cvt.d.s	$f0,$f0
    # Line 2428
    dsll32	$a2,$v0,0x0
    # Line 2427
    add.d	$f0,$f0,$f29
    # Line 2428
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f31
    # Line 2427
    trunc.w.d	$f0,$f0
    lw	$a1,4164($sp)
    mfc1	$a0,$f0
    # Line 2428
    cvt.s.l	$f31,$f31
    # Line 2427
    sh	$a0,0($a1)
    # Line 2428
    lwc1	$f7,728($s1)
    mul.s	$f7,$f7,$f31
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f29
    trunc.w.d	$f7,$f7
    lw	$v1,4164($sp)
    mfc1	$at,$f7
    sh	$at,2($v1)
    # Line 2430
    lwc1	$f6,4244($sp)
    mul.s	$f6,$f6,$f1
    cvt.d.s	$f6,$f6
    add.d	$f6,$f6,$f29
    trunc.w.d	$f6,$f6
    lw	$ra,4164($sp)
    mfc1	$t9,$f6
    sh	$t9,4($ra)
    # Line 2431
    lwc1	$f5,732($s1)
    mul.s	$f5,$f5,$f31
    cvt.d.s	$f5,$f5
    add.d	$f5,$f5,$f29
    trunc.w.d	$f5,$f5
    lw	$t8,4164($sp)
    mfc1	$t3,$f5
    sh	$t3,6($t8)
    # Line 2433
    lwc1	$f3,4248($sp)
    mul.s	$f3,$f3,$f1
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f29
    trunc.w.d	$f3,$f3
    lw	$t2,4164($sp)
    mfc1	$t1,$f3
    sh	$t1,8($t2)
    # Line 2434
    lwc1	$f2,736($s1)
    mul.s	$f2,$f2,$f31
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f29
    trunc.w.d	$f2,$f2
    lw	$t0,4164($sp)
    mfc1	$a7,$f2
    sh	$a7,10($t0)
    # Line 2436
    lwc1	$f0,4252($sp)
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f29
    trunc.w.d	$f0,$f0
    lw	$a6,4164($sp)
    mfc1	$a5,$f0
    sh	$a5,12($a6)
    # Line 2437
    lwc1	$f27,740($s1)
    mul.s	$f27,$f27,$f31
    cvt.d.s	$f27,$f27
    add.d	$f27,$f27,$f29
    trunc.w.d	$f27,$f27
    lw	$a4,4164($sp)
    mfc1	$a3,$f27
    sh	$a3,14($a4)
    # Line 2439
    lw	$a2,32648($s1)
    ori	$a2,$a2,0x80
    sw	$a2,32648($s1)
    # Line 2441
    lw	$a1,4148($sp)
    # Line 2440
    lw	$a0,4164($sp)
    # Line 2441
    addiu	$a1,$a1,1
    sw	$a1,4148($sp)
    # Line 2440
    addiu	$a0,$a0,16
    sw	$a0,4164($sp)
    # Line 2441
    andi	$a4,$s2,0x200
.L0da3f8b8:
    beqz	$a4,.L0da3f8f4
    # Line 2449
    andi	$v0,$s2,0x400
    # Line 2446
    # lw $t9, -23304($gp) # &viceColorTable
    addiu	$a1,$s1,5692
    addiu	$a0,$sp,0
    # Line 2445
    andi	$a5,$s2,0xfff
    slti	$a5,$a5,1024
    # Line 2446
    bal viceColorTable
    # Line 2445
    sw	$a5,4144($sp)
    # Line 2446
    beqz	$v0,.L0da40294
    nop
    # Line 2449
    lw	$a6,32648($s1)
    ori	$a6,$a6,0x20
    sw	$a6,32648($s1)
    andi	$v0,$s2,0x400
.L0da3f8f4:
    beqz	$v0,.L0da3f9cc
    # Line 2464
    lw	$a1,4($sp)
    # Line 2461
    # lw $t9, -23248($gp) # &viceHistogram
    sd	$v0,4392($sp)
    addiu	$a1,$s1,640
    addiu	$a0,$sp,0
    # Line 2453
    sw	$zero,4156($sp)
    # Line 2460
    andi	$a7,$s2,0xfff
    slti	$a7,$a7,4096
    # Line 2461
    bal viceHistogram
    # Line 2460
    sw	$a7,4144($sp)
    # Line 2462
    lw	$t0,32648($s1)
    ld	$v0,4392($sp)
    ori	$t0,$t0,0x40
    b	.L0da3f9d0
    sw	$t0,32648($s1)
.L0da3f934:
    # Line 2012
    lw	$t1,4($s0)
    beq	$v0,$t1,.L0da3fe68
    # Line 2020
    li	$t2,255
    b	.L0da3ed24
    sh	$t2,60($a0)
    # Line 2070
    lw	$t8,4($sp)
.L0da3f94c:
    sh	$a2,10($t8)
    # Line 2071
    lw	$t3,4($sp)
    # Line 2072
    b	.L0da3ef10
    # Line 2071
    sw	$a5,16($t3)
.L0da3f95c:
    # Line 2025
    lw	$v1,4($sp)
    lhu	$a0,60($v1)
    srl	$v0,$a0,0x1f
    addu	$v0,$v0,$a0
    sra	$v0,$v0,0x1
    sh	$v0,60($v1)
    # Line 2026
    lw	$ra,4($sp)
    lhu	$at,60($ra)
    li	$t9,-1
    subu	$t9,$t9,$at
    b	.L0da3ed2c
    sh	$t9,62($ra)
.L0da3f98c:
    # Line 2524
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2097
    move	$v0,$zero
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3f9ac:
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2324
    move	$v0,$zero
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3f9cc:
    # Line 2464
    sh	$zero,70($a1)
.L0da3f9d0:
    andi	$a2,$s2,0x800
    beqz	$a2,.L0da3f9f8
    # Line 2479
    lui	$a5,0x3
    # Line 2469
    li	$a4,1
    sw	$a4,4144($sp)
    # Line 2470
    lw	$a3,32648($s1)
    ori	$a3,$a3,0x400
    beqz	$v0,.L0da402e4
    sw	$a3,32648($s1)
    # Line 2479
    lui	$a5,0x3
.L0da3f9f8:
    and	$a5,$s2,$a5
    beqz	$a5,.L0da3fa14
    # Line 2492
    lw	$t2,4204($sp)
    # Line 2484
    lw	$a6,32648($s1)
    ori	$a6,$a6,0x1000
    sw	$a6,32648($s1)
    # Line 2492
    lw	$t2,4204($sp)
.L0da3fa14:
    lw	$t1,4($sp)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lw	$t0,76($t1)
    ori	$t0,$t0,0x8000
    sw	$t0,76($t1)
    # Line 2498
    lw	$a7,0($s0)
    li	$a0,6409
    beq	$a0,$a7,.L0da3ff5c
    # Line 2516
    lw	$v0,4204($sp)
.L0da3fa3c:
    # Line 2515
    slti	$t3,$v0,12
.L0da3fa40:
    beqz	$t3,.L0da3fc90
    # Line 2520
    lw	$a7,4($sp)
    # Line 2531
    addiu	$a6,$s1,32652
    # lw $t9, -22744($gp) # &vice_msp_code_to_etc
    # Line 2520
    addiu	$a4,$v0,-1
    # Line 2531
    addiu	$a5,$sp,16
    # Line 2520
    sll	$a4,$a4,0x10
    sw	$a4,80($a7)
    # Line 2531
    move	$a4,$zero
    li	$a2,8192
    lw	$a3,4200($sp)
    li	$a1,8192
    lw	$a0,4112($sp)
    jal	vice_msp_code_to_etc
    sll	$a3,$a3,0x2
    # Line 2536
    # lw $t9, -23172($gp) # &viceCoefFmt
    lw	$a1,4192($sp)
    bal viceCoefFmt
    addiu	$a0,$sp,0
    # Line 2541
    lw	$t9,4($sp)
    lhu	$t0,32($t9)
    lw	$ra,20($t9)
    mtc1	$t0,$f4
    mtc1	$ra,$f3
    cvt.d.w	$f4,$f4
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$t8,$f3
    sh	$t8,36($t9)
    # Line 2543
    lw	$t2,4($sp)
    lw	$t3,172($s0)
    lhu	$a5,38($t2)
    mtc1	$t3,$f2
    mtc1	$a5,$f3
    cvt.d.w	$f2,$f2
    cvt.d.w	$f3,$f3
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$t1,$f2
    sh	$t1,38($t2)
    # Line 2545
    lw	$a7,0($s0)
    li	$a6,6409
    # Line 2541
    teq	$t0,$zero,0x7
    # Line 2545
    beq	$a6,$a7,.L0da40174
    # Line 2543
    teq	$a5,$zero,0x7
    # Line 2549
    lw	$v0,4128($sp)
.L0da3fafc:
    li	$at,1
    beq	$at,$v0,.L0da40100
    # Line 2553
    lw	$a0,4($sp)
.L0da3fb08:
    li	$v1,0x8000
    sh	$v1,40($a0)
.L0da3fb10:
    # Line 2555
    lw	$a2,4($sp)
    sh	$zero,42($a2)
    # Line 2557
    lw	$a1,4132($sp)
    beqz	$a1,.L0da401a0
    andi	$a3,$s2,0xfff
.L0da3fb24:
    beqz	$a3,.L0da40288
    lw	$a0,4($sp)
    # Line 2561
    li	$a4,0x8380
    sh	$a4,44($a0)
.L0da3fb34:
    # Line 2569
    lw	$a6,4($sp)
    sh	$zero,46($a6)
    lw	$a0,4($sp)
    lhu	$a5,70($a0)
    lhu	$v0,54($a0)
    lhu	$a2,78($a0)
    addu	$a5,$a5,$v0
    addu	$a5,$a2,$a5
    addiu	$a5,$a5,128
    sltiu	$a5,$a5,2049
    beqz	$a5,.L0da400e8
    nop
    # Line 2582
    beqz	$a2,.L0da40280
    li	$a5,0x9700
    # Line 2585
    subu	$a1,$a5,$a2
    # Line 2586
    sh	$a1,76($a0)
    lw	$a0,4($sp)
    lhu	$v0,54($a0)
.L0da3fb7c:
    beqz	$v0,.L0da3fc38
    nop
    # Line 2590
    subu	$a1,$a1,$v0
    # Line 2591
    sh	$a1,52($a0)
    # Line 2592
    lw	$t3,0($sp)
    lhu	$t2,82($t3)
    addu	$t2,$a1,$t2
    sh	$t2,82($t3)
    # Line 2593
    lw	$t2,0($sp)
    lhu	$t1,86($t2)
    addu	$t1,$a1,$t1
    sh	$t1,86($t2)
    # Line 2594
    lw	$t1,0($sp)
    lhu	$t0,90($t1)
    addu	$t0,$a1,$t0
    sh	$t0,90($t1)
    # Line 2595
    lw	$t0,0($sp)
    # Line 2600
    andi	$t1,$s2,0x44
    li	$t2,68
    # Line 2595
    lhu	$a7,94($t0)
    addu	$a7,$a1,$a7
    # Line 2600
    beq	$t1,$t2,.L0da3fbf4
    # Line 2595
    sh	$a7,94($t0)
    # Line 2600
    andi	$t3,$s2,0x204
    li	$t8,516
    beq	$t3,$t8,.L0da3fbf4
    andi	$t9,$s2,0x240
    li	$ra,576
    bne	$t9,$ra,.L0da3fc38
    # Line 2606
    lw	$a0,4($sp)
.L0da3fbf4:
    # Line 2603
    lw	$a2,0($sp)
    lhu	$a0,98($a2)
    addu	$a0,$a1,$a0
    sh	$a0,98($a2)
    # Line 2604
    lw	$a0,0($sp)
    lhu	$v1,102($a0)
    addu	$v1,$a1,$v1
    sh	$v1,102($a0)
    # Line 2605
    lw	$v1,0($sp)
    lhu	$v0,106($v1)
    addu	$v0,$a1,$v0
    sh	$v0,106($v1)
    # Line 2606
    lw	$v0,0($sp)
    lhu	$at,110($v0)
    addu	$at,$a1,$at
    sh	$at,110($v0)
    lw	$a0,4($sp)
.L0da3fc38:
    lhu	$a2,70($a0)
    beqz	$a2,.L0da40000
    nop
    # Line 2612
    lw	$v0,1272($s1)
    sltiu	$a3,$v0,6409
    bnez	$a3,.L0da400bc
    sltiu	$a2,$v0,6407
    sltiu	$a4,$v0,6410
    bnez	$a4,.L0da3ff9c
    # Line 2615
    li	$a2,1
    # Line 2612
    li	$a5,0x8000
    sltu	$a5,$v0,$a5
    bnez	$a5,.L0da403e0
    li	$at,6410
    li	$a6,0x8000
    sltu	$a6,$a6,$v0
    beqz	$a6,.L0da40278
    li	$a7,0x8049
    beq	$v0,$a7,.L0da3ff9c
    # Line 2615
    li	$a2,1
    # Line 2622
    b	.L0da3ff9c
    lw	$a2,4256($sp)
.L0da3fc90:
    # Line 2524
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    move	$v0,$zero
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3fcb0:
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2424
    move	$v0,$zero
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3fcd0:
    # Line 2117
    lw	$v0,4192($sp)
    li	$a1,6408
    beq	$a1,$v0,.L0da3f078
    li	$t0,0x8000
    beq	$t0,$v0,.L0da3f078
    # Line 2127
    li	$a7,4
    sw	$a7,4180($sp)
    # Line 2126
    sw	$a1,4192($sp)
    # Line 2122
    li	$a3,1
    sw	$a3,4128($sp)
    # Line 2128
    lw	$t0,0($sp)
    # Line 2121
    lw	$a6,4184($sp)
    # Line 2128
    sh	$a7,116($t0)
    # Line 2131
    lw	$a4,4172($sp)
    # Line 2121
    addiu	$a2,$a6,7
    slt	$a5,$a6,$zero
    movz	$a2,$a6,$a5
    # Line 2129
    andi	$a0,$s2,0xfff
    # Line 2131
    lw	$v0,4176($sp)
    # Line 2121
    sra	$a2,$a2,0x3
    # Line 2129
    sltiu	$a0,$a0,1
    sw	$a0,4144($sp)
    # Line 2131
    beq	$a3,$a4,.L0da40130
    # Line 2121
    sll	$a2,$a2,0x8
    # Line 2138
    li	$t1,1
.L0da3fd34:
    bne	$v0,$t1,.L0da3fd48
    # Line 2142
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 2138
    bnez	$a0,.L0da40464
    # Line 2139
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 2142
    # lw $t9, -23184($gp) # &__viceMapCode
.L0da3fd48:
    addiu	$a1,$sp,0
    li	$a0,102
    bal __viceMapCode
    sd	$a2,4384($sp)
    lw	$t3,4204($sp)
    lw	$t2,4($sp)
    sll	$t3,$t3,0x2
    ld	$a0,4384($sp)
    addu	$t2,$t2,$t3
    sw	$v0,80($t2)
.L0da3fd70:
    # Line 2147
    lw	$v1,4204($sp)
    lw	$v0,4($sp)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 2145
    sw	$zero,4140($sp)
    # Line 2147
    lw	$at,80($v0)
    or	$at,$at,$a0
    sw	$at,80($v0)
    # Line 2151
    lw	$ra,4204($sp)
    lw	$t9,4($sp)
    addiu	$ra,$ra,1
    sll	$at,$ra,0x2
    addu	$t9,$t9,$at
    sw	$ra,4204($sp)
    lw	$t9,76($t9)
    lui	$t8,0xffff
    and	$t9,$t8,$t9
    bne	$t8,$t9,.L0da3f07c
    andi	$t2,$s2,0x2
    # Line 2152
    b	.L0da3ed98
    move	$v0,$zero
.L0da3fdc4:
    # Line 2103
    lw	$a6,32648($s1)
    ori	$a6,$a6,0x2000
    sw	$a6,32648($s1)
    # Line 2107
    lw	$a5,4184($sp)
    # Line 2106
    li	$a6,4
    # Line 2107
    sll	$a5,$a5,0x2
    # Line 2106
    sw	$a6,4180($sp)
    # Line 2107
    addiu	$a2,$a5,63
    slt	$a4,$a5,$zero
    # Line 2109
    addiu	$a1,$sp,0
    # lw $t9, -23184($gp) # &__viceMapCode
    # Line 2107
    movz	$a2,$a5,$a4
    # Line 2105
    li	$a3,6408
    sw	$a3,4192($sp)
    # Line 2107
    sra	$a2,$a2,0x6
    # Line 2104
    li	$a3,1
    sw	$a3,4136($sp)
    # Line 2107
    sll	$a2,$a2,0x8
    # Line 2109
    li	$a0,98
    bal __viceMapCode
    sd	$a2,4264($sp)
    lw	$t8,4204($sp)
    lw	$t3,4($sp)
    ld	$t2,4264($sp)
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    or	$t2,$v0,$t2
    sw	$t2,80($t3)
    # Line 2111
    lw	$t1,4204($sp)
    lw	$t0,4($sp)
    addiu	$t1,$t1,1
    sll	$t2,$t1,0x2
    sw	$t1,4204($sp)
    addu	$t0,$t0,$t2
    lw	$t0,76($t0)
    lui	$a7,0xffff
    and	$t0,$a7,$t0
    bne	$a7,$t0,.L0da3f05c
    # Line 2115
    nop	# was lw $t9, -23156($gp) # &viceLateLumaConvert
    # Line 2112
    b	.L0da3ed98
    move	$v0,$zero
.L0da3fe68:
    # Line 2016
    li	$at,32640
    sh	$at,60($a0)
    # Line 2017
    lw	$ra,4($sp)
    li	$t9,127
    b	.L0da3ed24
    sh	$t9,62($ra)
.L0da3fe80:
    # Line 2254
    slti	$v0,$a2,32
    b	.L0da3f35c
    sw	$v0,4144($sp)
.L0da3fe8c:
    # Line 2524
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2258
    move	$v0,$zero
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3feac:
    # Line 2200
    lwc1	$f15,4208($sp)
    trunc.w.s	$f15,$f15
    lw	$a7,0($sp)
    mfc1	$a6,$f15
    sh	$a6,128($a7)
    # Line 2201
    lwc1	$f14,4212($sp)
    trunc.w.s	$f14,$f14
    lw	$a5,0($sp)
    mfc1	$a4,$f14
    sh	$a4,132($a5)
    # Line 2202
    lwc1	$f13,4216($sp)
    trunc.w.s	$f13,$f13
    lw	$a3,0($sp)
    mfc1	$a2,$f13
    sh	$a2,136($a3)
    # Line 2203
    lwc1	$f12,4220($sp)
    trunc.w.s	$f12,$f12
    lw	$a1,0($sp)
    mfc1	$a0,$f12
    sh	$a0,140($a1)
    # Line 2205
    lwc1	$f4,4208($sp)
    # Line 2206
    lwc1	$f6,4212($sp)
    # Line 2208
    lwc1	$f10,4220($sp)
    # Line 2207
    lwc1	$f8,4216($sp)
    # Line 2205
    trunc.w.s	$f5,$f4
    # Line 2206
    trunc.w.s	$f7,$f6
    # Line 2208
    trunc.w.s	$f11,$f10
    # Line 2207
    trunc.w.s	$f9,$f8
    # Line 2208
    cvt.s.w	$f11,$f11
    # Line 2207
    cvt.s.w	$f9,$f9
    # Line 2206
    cvt.s.w	$f7,$f7
    # Line 2205
    cvt.s.w	$f5,$f5
    # Line 2212
    li	$v1,1
    sd	$v1,4320($sp)
    # Line 2208
    sub.s	$f10,$f10,$f11
    # Line 2207
    sub.s	$f8,$f8,$f9
    # Line 2208
    swc1	$f10,4220($sp)
    # Line 2206
    sub.s	$f6,$f6,$f7
    # Line 2207
    swc1	$f8,4216($sp)
    # Line 2205
    sub.s	$f4,$f4,$f5
    # Line 2206
    swc1	$f6,4212($sp)
    move	$a0,$t0
    # Line 2212
    b	.L0da3f194
    # Line 2205
    swc1	$f4,4208($sp)
.L0da3ff5c:
    # Line 2498
    lw	$t0,80($s0)
    li	$t1,6408
    beq	$t0,$t1,.L0da403f4
    ld	$v0,4304($sp)
    # Line 2516
    b	.L0da3fa3c
    lw	$v0,4204($sp)
.L0da3ff74:
    # Line 2524
    ld	$gp,4352($sp)
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2239
    move	$v0,$zero
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da3ff94:
    # Line 2188
    b	.L0da3ed98
    move	$v0,$zero
.L0da3ff9c:
    # Line 2628
    lw	$t8,1248($s1)
    mult	$t8,$a2
    mflo	$t3
    addu	$t3,$t3,$t3
    subu	$a1,$a1,$t3
    # Line 2629
    sh	$a1,68($a0)
    lw	$t2,4($sp)
    lhu	$t2,54($t2)
    beqz	$t2,.L0da402a4
    lw	$v0,0($sp)
    # Line 2637
    lhu	$v1,98($v0)
    addu	$v1,$a1,$v1
    sh	$v1,98($v0)
    # Line 2638
    lw	$v1,0($sp)
    lhu	$at,102($v1)
    addu	$at,$a1,$at
    sh	$at,102($v1)
    # Line 2639
    lw	$at,0($sp)
    lhu	$ra,106($at)
    addu	$ra,$a1,$ra
    sh	$ra,106($at)
    # Line 2640
    lw	$ra,0($sp)
    lhu	$t9,110($ra)
    addu	$t9,$a1,$t9
    sh	$t9,110($ra)
.L0da40000:
    lw	$a0,32648($s1)
    andi	$a0,$a0,0x400
    beqz	$a0,.L0da40024
    # Line 2654
    lw	$t0,0($sp)
    # Line 2647
    lw	$a2,4($sp)
    lui	$a1,0xbe
    ori	$a1,$a1,0x2800
    sw	$a1,28($a2)
    # Line 2654
    lw	$t0,0($sp)
.L0da40024:
    lhu	$t1,112($t0)
    lhu	$t2,116($t0)
    mult	$t1,$t2
    mflo	$a7
    sh	$a7,120($t0)
    # Line 2655
    lw	$a4,0($sp)
    lhu	$a5,114($a4)
    lhu	$a6,118($a4)
    mult	$a5,$a6
    mflo	$a3
    sh	$a3,122($a4)
    # Line 2663
    lw	$a2,4116($sp)
    beqz	$a2,.L0da400a0
    # Line 2524
    ld	$gp,4352($sp)
    # Line 2663
    lw	$t3,28($s0)
    li	$t8,1
    bne	$t3,$t8,.L0da400a0
    # Line 2524
    ld	$gp,4352($sp)
    # Line 2663
    lw	$t9,36($s0)
    li	$ra,2
    bne	$t9,$ra,.L0da400a0
    # Line 2524
    ld	$gp,4352($sp)
    # Line 2663
    lw	$at,108($s0)
    move	$v0,$t8
    bne	$at,$v0,.L0da400a0
    # Line 2524
    ld	$gp,4352($sp)
    # Line 2663
    lw	$v1,116($s0)
    move	$a0,$v0
    beq	$v1,$a0,.L0da40570
    # Line 2668
    lw	$t3,4($sp)
.L0da4009c:
    # Line 2524
    ld	$gp,4352($sp)
.L0da400a0:
    ld	$ra,4360($sp)
    ld	$s0,4344($sp)
    # Line 2673
    li	$v0,1
    # Line 2524
    ld	$s1,4368($sp)
    ld	$s2,4336($sp)
    jr	$ra
    addiu	$sp,$sp,4416
.L0da400bc:
    # Line 2612
    bnez	$a2,.L0da40268
    li	$t8,6406
    sltiu	$a3,$v0,6408
    bnez	$a3,.L0da40278
    li	$a4,6408
    beq	$v0,$a4,.L0da40278
    nop
    # Line 2622
    b	.L0da3ff9c
    lw	$a2,4256($sp)
.L0da400e0:
    # Line 2296
    b	.L0da3ed98
    move	$v0,$zero
.L0da400e8:
    # Line 2579
    b	.L0da3ed98
    move	$v0,$zero
.L0da400f0:
    # Line 2347
    b	.L0da3ed98
    move	$v0,$zero
.L0da400f8:
    b	.L0da3f4a0
    # Line 2320
    lwc1	$f4,4224($sp)
.L0da40100:
    # Line 2549
    lw	$a5,32648($s1)
    andi	$a5,$a5,0x2000
    bnez	$a5,.L0da3fb08
    # Line 2553
    lw	$a0,4($sp)
    # Line 2550
    lw	$a7,4($sp)
    li	$a6,0x8380
    b	.L0da3fb10
    sh	$a6,40($a7)
.L0da40120:
    # Line 2360
    b	.L0da3ed98
    move	$v0,$zero
.L0da40128:
    # Line 2396
    b	.L0da3ed98
    move	$v0,$zero
.L0da40130:
    move	$t0,$a3
    # Line 2131
    beq	$v0,$t0,.L0da4052c
    lw	$a1,4140($sp)
.L0da4013c:
    # Line 2135
    beqz	$a1,.L0da3fd34
    # Line 2138
    li	$t1,1
    # Line 2136
    # lw $t9, -23184($gp) # &__viceMapCode
    addiu	$a1,$sp,0
    li	$a0,100
    bal __viceMapCode
    sd	$a2,4384($sp)
    lw	$t2,4204($sp)
    lw	$t1,4($sp)
    sll	$t2,$t2,0x2
    ld	$a0,4384($sp)
    addu	$t1,$t1,$t2
    b	.L0da3fd70
    sw	$v0,80($t1)
.L0da40174:
    # Line 2545
    lw	$t3,80($s0)
    li	$t8,6408
    bne	$t3,$t8,.L0da3fafc
    # Line 2549
    lw	$v0,4128($sp)
    # Line 2545
    ld	$t9,4304($sp)
    bnez	$t9,.L0da3fafc
    # Line 2549
    lw	$v0,4128($sp)
    # Line 2547
    lw	$at,4($sp)
    li	$ra,0x8600
    b	.L0da3fb10
    sh	$ra,40($at)
.L0da401a0:
    # Line 2557
    lw	$v1,0($s0)
    li	$v0,6409
    beq	$v0,$v1,.L0da4050c
.L0da401ac:
    # Line 2566
    lw	$a1,4($sp)
.L0da401b0:
    li	$a0,0x8000
    b	.L0da3fb34
    sh	$a0,44($a1)
.L0da401bc:
    # Line 2308
    trunc.w.s	$f15,$f4
    lw	$t3,0($sp)
    mfc1	$t2,$f15
    sh	$t2,128($t3)
    # Line 2309
    lwc1	$f14,4228($sp)
    trunc.w.s	$f14,$f14
    lw	$t1,0($sp)
    mfc1	$t0,$f14
    sh	$t0,132($t1)
    # Line 2310
    lwc1	$f13,4232($sp)
    trunc.w.s	$f13,$f13
    lw	$a7,0($sp)
    mfc1	$a6,$f13
    sh	$a6,136($a7)
    # Line 2311
    lwc1	$f12,4236($sp)
    trunc.w.s	$f12,$f12
    lw	$a5,0($sp)
    mfc1	$a4,$f12
    sh	$a4,140($a5)
    # Line 2313
    lwc1	$f4,4224($sp)
    # Line 2314
    lwc1	$f6,4228($sp)
    # Line 2316
    lwc1	$f10,4236($sp)
    # Line 2315
    lwc1	$f8,4232($sp)
    # Line 2313
    trunc.w.s	$f5,$f4
    # Line 2314
    trunc.w.s	$f7,$f6
    # Line 2316
    trunc.w.s	$f11,$f10
    # Line 2315
    trunc.w.s	$f9,$f8
    # Line 2316
    cvt.s.w	$f11,$f11
    # Line 2315
    cvt.s.w	$f9,$f9
    # Line 2314
    cvt.s.w	$f7,$f7
    # Line 2320
    li	$a3,1
    sd	$a3,4320($sp)
    # Line 2313
    cvt.s.w	$f5,$f5
    # Line 2320
    sd	$a2,4288($sp)
    # Line 2316
    sub.s	$f10,$f10,$f11
    # Line 2315
    sub.s	$f8,$f8,$f9
    # Line 2316
    swc1	$f10,4236($sp)
    # Line 2314
    sub.s	$f6,$f6,$f7
    # Line 2315
    swc1	$f8,4232($sp)
    # Line 2313
    sub.s	$f4,$f4,$f5
    # Line 2314
    swc1	$f6,4228($sp)
    # Line 2320
    b	.L0da3f4a0
    # Line 2313
    swc1	$f4,4224($sp)
.L0da40268:
    # Line 2612
    beq	$v0,$t8,.L0da40278
    nop
    b	.L0da3ff9c
    # Line 2622
    lw	$a2,4256($sp)
.L0da40278:
    b	.L0da3ff9c
    li	$a2,4
.L0da40280:
    b	.L0da3fb7c
    move	$a1,$a5
.L0da40288:
    li	$t9,0x8000
    b	.L0da3fb34
    # Line 2563
    sh	$t9,44($a0)
.L0da40294:
    # Line 2447
    b	.L0da3ed98
    move	$v0,$zero
.L0da4029c:
    b	.L0da3f76c
    # Line 2420
    lwc1	$f4,4240($sp)
.L0da402a4:
    # Line 2632
    lhu	$a0,82($v0)
    addu	$a0,$a1,$a0
    sh	$a0,82($v0)
    # Line 2633
    lw	$a0,0($sp)
    lhu	$v1,86($a0)
    addu	$v1,$a1,$v1
    sh	$v1,86($a0)
    # Line 2634
    lw	$v1,0($sp)
    lhu	$at,90($v1)
    addu	$at,$a1,$at
    sh	$at,90($v1)
    # Line 2635
    lw	$at,0($sp)
    lhu	$ra,94($at)
    addu	$ra,$a1,$ra
    b	.L0da40000
    sh	$ra,94($at)
.L0da402e4:
    # Line 2477
    # lw $t9, -23252($gp) # &__viceLoadMNMCode
    bal __viceLoadMNMCode
    addiu	$a0,$sp,0
    lw	$a5,4204($sp)
    lw	$a4,4($sp)
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    sw	$v0,80($a4)
    # Line 2478
    lw	$a3,4204($sp)
    lw	$a2,4($sp)
    addiu	$a3,$a3,1
    sll	$a4,$a3,0x2
    addu	$a2,$a2,$a4
    sw	$a3,4204($sp)
    lw	$a2,76($a2)
    lui	$a1,0xffff
    and	$a2,$a1,$a2
    bne	$a1,$a2,.L0da3f9f8
    # Line 2479
    lui	$a5,0x3
    b	.L0da3ed98
    move	$v0,$zero
.L0da40338:
    # Line 2408
    trunc.w.s	$f15,$f4
    lw	$ra,0($sp)
    mfc1	$t9,$f15
    sh	$t9,128($ra)
    # Line 2409
    lwc1	$f14,4244($sp)
    trunc.w.s	$f14,$f14
    lw	$t8,0($sp)
    mfc1	$t3,$f14
    sh	$t3,132($t8)
    # Line 2410
    lwc1	$f13,4248($sp)
    trunc.w.s	$f13,$f13
    lw	$t2,0($sp)
    mfc1	$t1,$f13
    sh	$t1,136($t2)
    # Line 2411
    lwc1	$f12,4252($sp)
    trunc.w.s	$f12,$f12
    lw	$t0,0($sp)
    mfc1	$a7,$f12
    sh	$a7,140($t0)
    # Line 2413
    lwc1	$f4,4240($sp)
    # Line 2414
    lwc1	$f6,4244($sp)
    # Line 2416
    lwc1	$f10,4252($sp)
    # Line 2415
    lwc1	$f8,4248($sp)
    # Line 2413
    trunc.w.s	$f5,$f4
    # Line 2414
    trunc.w.s	$f7,$f6
    # Line 2416
    trunc.w.s	$f11,$f10
    # Line 2415
    trunc.w.s	$f9,$f8
    # Line 2416
    cvt.s.w	$f11,$f11
    # Line 2415
    cvt.s.w	$f9,$f9
    # Line 2414
    cvt.s.w	$f7,$f7
    # Line 2413
    cvt.s.w	$f5,$f5
    # Line 2420
    li	$a6,32767
    sd	$a6,4272($sp)
    # Line 2416
    sub.s	$f10,$f10,$f11
    # Line 2415
    sub.s	$f8,$f8,$f9
    # Line 2416
    swc1	$f10,4252($sp)
    # Line 2414
    sub.s	$f6,$f6,$f7
    # Line 2415
    swc1	$f8,4248($sp)
    # Line 2413
    sub.s	$f4,$f4,$f5
    # Line 2414
    swc1	$f6,4244($sp)
    # Line 2420
    b	.L0da3f76c
    # Line 2413
    swc1	$f4,4240($sp)
.L0da403e0:
    xor	$at,$v0,$at
    # Line 2622
    lw	$a2,4256($sp)
    # Line 2617
    li	$v1,2
    b	.L0da3ff9c
    movz	$a2,$v1,$at
.L0da403f4:
    # Line 2498
    beqz	$v0,.L0da40568
    # Line 2501
    lw	$a1,4188($sp)
    lw	$a0,4176($sp)
    addiu	$v0,$a1,7
    slt	$v1,$a1,$zero
    movz	$v0,$a1,$v1
    li	$v1,1
    sra	$v0,$v0,0x3
    bne	$v1,$a0,.L0da40490
    sll	$v0,$v0,0x8
    # Line 2504
    lw	$a2,4172($sp)
    li	$a3,2
    bne	$a2,$a3,.L0da40438
    # Line 2507
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 2504
    andi	$a4,$s2,0xfff
    beqz	$a4,.L0da405a0
    # Line 2507
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
.L0da40438:
    addiu	$a1,$sp,0
    li	$a0,99
    bal __viceMapCode
    sd	$v0,4376($sp)
    lw	$a6,4204($sp)
    lw	$a5,4($sp)
    sll	$a6,$a6,0x2
    ld	$a0,4376($sp)
    addu	$a5,$a5,$a6
    b	.L0da404bc
    sw	$v0,80($a5)
.L0da40464:
    # Line 2139
    addiu	$a1,$sp,0
    li	$a0,101
    bal __viceMapCode
    sd	$a2,4384($sp)
    lw	$t0,4204($sp)
    lw	$a7,4($sp)
    sll	$t0,$t0,0x2
    ld	$a0,4384($sp)
    addu	$a7,$a7,$t0
    b	.L0da3fd70
    sw	$v0,80($a7)
.L0da40490:
    # Line 2509
    # lw $t9, -23184($gp) # &__viceMapCode
    addiu	$a1,$sp,0
    li	$a0,102
    bal __viceMapCode
    sd	$v0,4376($sp)
    lw	$t2,4204($sp)
    lw	$t1,4($sp)
    sll	$t2,$t2,0x2
    ld	$a0,4376($sp)
    addu	$t1,$t1,$t2
    sw	$v0,80($t1)
.L0da404bc:
    # Line 2511
    lw	$a2,4204($sp)
    lw	$a1,4($sp)
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$v1,80($a1)
    or	$v1,$v1,$a0
    sw	$v1,80($a1)
    # Line 2515
    lw	$v0,4204($sp)
    lw	$t8,4($sp)
    addiu	$v0,$v0,1
    sll	$t9,$v0,0x2
    addu	$t8,$t8,$t9
    sw	$v0,4204($sp)
    lw	$t8,76($t8)
    lui	$t3,0xffff
    and	$t8,$t3,$t8
    bne	$t3,$t8,.L0da3fa40
    slti	$t3,$v0,12
    # Line 2516
    b	.L0da3ed98
    move	$v0,$zero
.L0da4050c:
    # Line 2557
    lw	$a3,80($s0)
    li	$a4,6408
    bne	$a3,$a4,.L0da401ac
    ld	$a5,4304($sp)
    bnez	$a5,.L0da3fb24
    andi	$a3,$s2,0xfff
    b	.L0da401b0
    # Line 2566
    lw	$a1,4($sp)
.L0da4052c:
    # Line 2131
    beqz	$a1,.L0da3fd34
    # Line 2138
    li	$t1,1
    # Line 2131
    beqz	$a0,.L0da4013c
    # Line 2133
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    addiu	$a1,$sp,0
    li	$a0,99
    bal __viceMapCode
    sd	$a2,4384($sp)
    lw	$a7,4204($sp)
    lw	$a6,4($sp)
    sll	$a7,$a7,0x2
    ld	$a0,4384($sp)
    addu	$a6,$a6,$a7
    b	.L0da3fd70
    sw	$v0,80($a6)
.L0da40568:
    b	.L0da3fa3c
    # Line 2516
    lw	$v0,4204($sp)
.L0da40570:
    # Line 2668
    lw	$t2,16($t3)
    addu	$t2,$t2,$t2
    sw	$t2,16($t3)
    # Line 2669
    lw	$t2,4($sp)
    lw	$t1,24($t2)
    addu	$t1,$t1,$t1
    sw	$t1,24($t2)
    # Line 2670
    lw	$t1,4($sp)
    lhu	$t0,34($t1)
    addu	$t0,$t0,$t0
    b	.L0da4009c
    sh	$t0,34($t1)
.L0da405a0:
    # Line 2505
    # lw $t9, -23184($gp) # &__viceMapCode
    addiu	$a1,$sp,0
    li	$a0,101
    bal __viceMapCode
    sd	$v0,4376($sp)
    lw	$t8,4204($sp)
    lw	$t3,4($sp)
    sll	$t8,$t8,0x2
    ld	$a0,4376($sp)
    addu	$t3,$t3,$t8
    b	.L0da404bc
    sw	$v0,80($t3)
.end __viceSetHCoef

# Function: viceCoefFmt
# Declared: Line 2692 (Source lines: 2694-2745)
# Address: 0x0da405d0 - 0x0da407e8 (Size: 536 bytes, Frame: 0)
.globl viceCoefFmt
.ent viceCoefFmt
viceCoefFmt:
    # Line 2694
    li	$at,0x8000
    # Line 2718
    li	$t1,6410
    # Line 2694
    bne	$a1,$at,.L0da4070c
    # Line 2726
    li	$a5,6409
    # Line 2697
    lw	$a1,0($a0)
    # Line 2708
    lw	$a7,24($a1)
    # Line 2707
    lw	$t0,20($a1)
    # Line 2705
    lw	$t1,44($a1)
    # Line 2704
    lw	$t2,32($a1)
    # Line 2708
    lw	$t3,40($a1)
    # Line 2707
    lw	$t8,36($a1)
    # Line 2705
    lw	$t9,60($a1)
    # Line 2704
    lw	$at,48($a1)
    # Line 2706
    sw	$at,60($a1)
    # Line 2705
    sw	$t9,48($a1)
    # Line 2709
    sw	$t8,40($a1)
    # Line 2708
    sw	$t3,36($a1)
    # Line 2706
    sw	$t2,44($a1)
    # Line 2705
    sw	$t1,32($a1)
    # Line 2709
    sw	$t0,24($a1)
    # Line 2708
    sw	$a7,20($a1)
    # Line 2707
    lw	$a6,68($a1)
    # Line 2708
    lw	$a5,72($a1)
    # Line 2704
    lw	$a4,64($a1)
    # Line 2705
    lw	$a2,76($a1)
    # Line 2707
    lw	$v1,52($a1)
    # Line 2708
    lw	$v0,56($a1)
    sw	$v0,52($a1)
    # Line 2705
    lw	$v0,12($a1)
    # Line 2709
    sw	$v1,56($a1)
    # Line 2704
    lw	$v1,0($a1)
    # Line 2705
    sw	$a2,64($a1)
    # Line 2708
    lw	$a2,8($a1)
    # Line 2706
    sw	$a4,76($a1)
    # Line 2707
    lw	$a4,4($a1)
    # Line 2708
    sw	$a5,68($a1)
    # Line 2705
    lw	$a5,28($a1)
    # Line 2709
    sw	$a6,72($a1)
    # Line 2704
    lw	$a6,16($a1)
    # Line 2706
    sw	$a6,28($a1)
    # Line 2705
    sw	$a5,16($a1)
    # Line 2709
    sw	$a4,8($a1)
    # Line 2708
    sw	$a2,4($a1)
    # Line 2706
    sw	$v1,12($a1)
    # Line 2705
    sw	$v0,0($a1)
    # Line 2717
    lw	$a1,0($a0)
    # Line 2720
    lh	$t1,76($a1)
    # Line 2719
    lh	$t2,50($a1)
    # Line 2720
    lh	$t3,74($a1)
    # Line 2719
    lh	$t8,52($a1)
    # Line 2720
    lh	$t9,72($a1)
    # Line 2719
    lh	$at,54($a1)
    # Line 2720
    lh	$v0,70($a1)
    # Line 2719
    lh	$v1,56($a1)
    # Line 2720
    lh	$a0,68($a1)
    # Line 2719
    lh	$a2,58($a1)
    # Line 2720
    lh	$a5,66($a1)
    # Line 2719
    lh	$a6,60($a1)
    # Line 2721
    sh	$a6,66($a1)
    # Line 2720
    sh	$a5,60($a1)
    # Line 2721
    sh	$a2,68($a1)
    # Line 2720
    sh	$a0,58($a1)
    # Line 2721
    sh	$v1,70($a1)
    # Line 2720
    sh	$v0,56($a1)
    # Line 2721
    sh	$at,72($a1)
    # Line 2720
    sh	$t9,54($a1)
    # Line 2721
    sh	$t8,74($a1)
    # Line 2720
    sh	$t3,52($a1)
    # Line 2721
    sh	$t2,76($a1)
    # Line 2720
    sh	$t1,50($a1)
    # Line 2719
    lh	$t0,62($a1)
    # Line 2720
    lh	$a7,64($a1)
    sh	$a7,62($a1)
    lh	$a7,78($a1)
    # Line 2721
    sh	$t0,64($a1)
    # Line 2719
    lh	$t0,48($a1)
    # Line 2721
    sh	$t0,78($a1)
    # Line 2745
    jr	$ra
    # Line 2720
    sh	$a7,48($a1)
.L0da4070c:
    # Line 2718
    bne	$a1,$t1,.L0da4076c
    nop
    # Line 2725
    lw	$a1,0($a0)
    # Line 2727
    lw	$t2,0($a1)
    # Line 2728
    lw	$t3,4($a1)
    # Line 2727
    lw	$t8,16($a1)
    # Line 2728
    lw	$t9,20($a1)
    # Line 2727
    lw	$at,32($a1)
    # Line 2728
    lw	$v0,36($a1)
    # Line 2727
    lw	$v1,48($a1)
    # Line 2728
    lw	$a0,52($a1)
    # Line 2727
    lw	$a2,64($a1)
    # Line 2728
    lw	$a4,68($a1)
    sw	$a4,72($a1)
    # Line 2727
    sw	$a2,76($a1)
    # Line 2728
    sw	$a0,56($a1)
    # Line 2727
    sw	$v1,60($a1)
    # Line 2728
    sw	$v0,40($a1)
    # Line 2727
    sw	$at,44($a1)
    # Line 2728
    sw	$t9,24($a1)
    # Line 2727
    sw	$t8,28($a1)
    # Line 2728
    sw	$t3,8($a1)
    # Line 2745
    jr	$ra
    # Line 2727
    sw	$t2,12($a1)
.L0da4076c:
    # Line 2726
    bne	$a1,$a5,.L0da407e0
    nop
    # Line 2734
    lw	$a1,0($a0)
    # Line 2736
    lw	$a6,0($a1)
    lw	$a7,16($a1)
    lw	$t0,32($a1)
    lw	$t1,48($a1)
    lw	$t2,64($a1)
    sw	$t2,76($a1)
    sw	$t2,72($a1)
    sw	$t2,68($a1)
    sw	$t1,60($a1)
    sw	$t1,56($a1)
    sw	$t1,52($a1)
    sw	$t0,44($a1)
    sw	$t0,40($a1)
    sw	$t0,36($a1)
    sw	$a7,28($a1)
    sw	$a7,24($a1)
    sw	$a7,20($a1)
    sw	$a6,12($a1)
    sw	$a6,8($a1)
    sw	$a6,4($a1)
    # Line 2740
    lw	$t8,0($a0)
    # Line 2741
    lw	$t3,128($t8)
    sw	$t3,140($t8)
    sw	$t3,136($t8)
    # Line 2745
    jr	$ra
    # Line 2741
    sw	$t3,132($t8)
.L0da407e0:
    # Line 2745
    jr	$ra
    nop
.end viceCoefFmt

# Function: FilterInRange
# Declared: Line 2756 (Source lines: 2758-2769)
# Address: 0x0da407f0 - 0x0da40884 (Size: 148 bytes, Frame: 0)
.ent FilterInRange
FilterInRange:
    # Line 2758
    lw	$a2,68($a0)
    lw	$a1,64($a0)
    # Line 2763
    mult	$a1,$a2
    # Line 2758
    lw	$v1,0($a0)
    li	$a3,0x8012
    # Line 2761
    addu	$a1,$a1,$a2
    # Line 2765
    lw	$at,12($a0)
    xor	$v1,$v1,$a3
    # Line 2763
    mflo	$v0
    nop
    movz	$v0,$a1,$v1
    # Line 2765
    mult	$at,$v0
    mflo	$a4
    ldc1	$f6,_lit8_bff0000000000000
    lw	$a2,80($a0)
    blez	$a4,.L0da40874
    # Line 2767
    move	$v0,$zero
    # Line 2765
    ldc1	$f5,_lit8_3ff0000000000000
    sll	$a3,$a4,0x2
    addu	$a3,$a2,$a3
    nop
    nop
    nop
    # Line 2767
    lwc1	$f4,0($a2)
.L0da40850:
    cvt.d.s	$f4,$f4
    c.lt.d	$f5,$f4
    bc1t	.L0da4087c
    nop
    c.lt.d $f4,$f6
    bc1t .L0da4087c
    # Line 2766
    addiu	$a2,$a2,4
    bnel	$a2,$a3,.L0da40850
    # Line 2767
    lwc1	$f4,0($a2)
.L0da40874:
    # Line 2769
    jr	$ra
    li	$v0,1
.L0da4087c:
    jr	$ra
    nop
.end FilterInRange

# Function: MatrixInRange
# Declared: Line 2778 (Source lines: 2780-2785)
# Address: 0x0da40890 - 0x0da408d8 (Size: 72 bytes, Frame: 0)
.ent MatrixInRange
MatrixInRange:
    # Line 2780
    ldc1	$f6,_lit8_bff0000000000000
    move	$a2,$a0
    ldc1	$f5,_lit8_3ff0000000000000
    addiu	$a3,$a0,64
.L0da408a0:
    # Line 2783
    lwc1	$f4,0($a2)
    cvt.d.s	$f4,$f4
    c.lt.d	$f5,$f4
    bc1t	.L0da408d0
    nop
    c.lt.d $f4,$f6
    bc1t .L0da408d0
    # Line 2782
    addiu	$a2,$a2,4
    bne	$a2,$a3,.L0da408a0
    nop
    # Line 2785
    jr	$ra
    li	$v0,1
.L0da408d0:
    jr	$ra
    # Line 2783
    move	$v0,$zero
.end MatrixInRange

# Function: ScaleInRange
# Declared: Line 2804 (Source lines: 2806-2838)
# Address: 0x0da408e0 - 0x0da40b9c (Size: 700 bytes, Frame: 0)
.globl ScaleInRange
.ent ScaleInRange
ScaleInRange:
    # Line 2810
    sw	$zero,4124($a0)
    # Line 2809
    sw	$zero,4120($a0)
    # Line 2806
    lui	$v0,0x1
    # Line 2818
    lwc1	$f5,0($a1)
    # Line 2806
    addiu	$v0,$v0,1196
    addu	$at,$t9,$v0
    # Line 2818
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f8,$f5
    c.lt.d	$f4,$f8
    li	$a5,1
    movf	$a5,$zero,$fcc0
    beqz	$a5,.L0da40aa8
    # Line 2809
    move	$a4,$zero
    # Line 2818
    trunc.w.s	$f0,$f5
.L0da40918:
    cvt.s.w	$f0,$f0
    c.eq.s $f0,$f5
    bc1f .L0da40a4c
    # Line 2822
    li	$v1,1
.L0da40928:
    # Line 2818
    lwc1	$f5,4($a1)
    cvt.d.s	$f6,$f5
    c.lt.d $f4,$f6
    li	$a7,1
    movf	$a7,$zero,$fcc2
    beqz	$a7,.L0da40ac0
    ldc1	$f7,_lit8_bff0000000000000
    trunc.w.s	$f1,$f5
.L0da40948:
    cvt.s.w	$f1,$f1
    c.eq.s $f1,$f5
    bc1f .L0da40a4c
    # Line 2822
    li	$v1,1
.L0da40958:
    # Line 2818
    lwc1	$f5,8($a1)
    cvt.d.s	$f7,$f5
    c.lt.d $f4,$f7
    li	$a6,1
    movf	$a6,$zero,$fcc4
    beqz	$a6,.L0da40ad4
    ldc1	$f9,_lit8_bff0000000000000
    trunc.w.s	$f2,$f5
.L0da40978:
    cvt.s.w	$f2,$f2
    c.eq.s $f2,$f5
    bc1f .L0da40a4c
    # Line 2822
    li	$v1,1
.L0da40988:
    # Line 2818
    lwc1	$f9,12($a1)
    cvt.d.s	$f5,$f9
    c.lt.d $f4,$f5
    bc1t .L0da409a8
    ldc1	$f3,_lit8_bff0000000000000
    c.lt.d $f5,$f3
    bc1f .L0da409bc
    nop
.L0da409a8:
    trunc.w.s	$f5,$f9
    cvt.s.w	$f5,$f5
    c.eq.s	$f5,$f9
    bc1f	.L0da40a4c
    # Line 2822
    li	$v1,1
.L0da409bc:
    # Line 2831
    beqz	$a5,.L0da40b1c
    ldc1	$f9,_lit8_bff0000000000000
.L0da409c4:
    li	$a5,1
    sw	$a5,4120($a0)
    # Line 2832
    lwc1	$f6,4($a1)
    cvt.d.s	$f6,$f6
    c.lt.d $f4,$f6
    bc1t .L0da409f0
    # Line 2831
    li	$a4,1
    # Line 2832
    ldc1	$f9,_lit8_bff0000000000000
    c.lt.d $f6,$f9
    bc1f .L0da40a5c
    move	$a6,$a5
.L0da409f0:
    sw	$a5,4120($a0)
    # Line 2833
    lwc1	$f7,8($a1)
    cvt.d.s	$f7,$f7
    c.lt.d $f4,$f7
    # Line 2834
    ldc1	$f6,_lit8_bff0000000000000
    # Line 2833
    bc1t .L0da40a1c
    # Line 2832
    li	$a4,1
    # Line 2833
    ldc1	$f9,_lit8_bff0000000000000
    c.lt.d $f7,$f9
    bc1f .L0da40af4
    nop
.L0da40a1c:
    sw	$a5,4120($a0)
    # Line 2834
    lwc1	$f5,12($a1)
    cvt.d.s	$f5,$f5
    c.lt.d $f4,$f5
    bc1t .L0da40a40
    # Line 2833
    li	$a4,1
    # Line 2834
    c.lt.d $f5,$f6
    bc1f .L0da40a98
    nop
.L0da40a40:
    b	.L0da40aa0
    sw	$a5,4120($a0)
    # Line 2822
    li	$v1,1
.L0da40a4c:
    # Line 2838
    jr	$ra
    # Line 2822
    sw	$v1,4120($a0)
.L0da40a54:
    # Line 2838
    jr	$ra
    nop
.L0da40a5c:
    # Line 2832
    lwc1	$f7,8($a1)
    cvt.d.s	$f7,$f7
    c.lt.d $f4,$f7
    movf	$a6,$zero,$fcc7
.L0da40a6c:
    # Line 2833
    beqz	$a6,.L0da40ae8
    li	$a5,1
.L0da40a74:
    sw	$a5,4120($a0)
    # Line 2834
    lwc1	$f5,12($a1)
    cvt.d.s	$f5,$f5
    c.lt.d	$f4,$f5
    bc1t	.L0da40b80
    # Line 2833
    li	$a4,1
    # Line 2834
    c.lt.d $f5,$f9
    bc1t .L0da40b80
    nop
.L0da40a98:
    # Line 2836
    bnez	$a4,.L0da40a54
    li	$a5,1
.L0da40aa0:
    # Line 2838
    jr	$ra
    # Line 2837
    sw	$a5,4124($a0)
.L0da40aa8:
    # Line 2818
    ldc1	$f6,_lit8_bff0000000000000
    c.lt.d $f8,$f6
    bc1f .L0da40928
    nop
    b	.L0da40918
    trunc.w.s	$f0,$f5
.L0da40ac0:
    c.lt.d $f6,$f7
    bc1f .L0da40958
    nop
    b	.L0da40948
    trunc.w.s	$f1,$f5
.L0da40ad4:
    c.lt.d $f7,$f9
    bc1f .L0da40988
    nop
    b	.L0da40978
    trunc.w.s	$f2,$f5
.L0da40ae8:
    # Line 2833
    c.lt.d $f7,$f9
    bc1t .L0da40a74
    li	$a5,1
.L0da40af4:
    # Line 2834
    lwc1	$f5,12($a1)
    cvt.d.s	$f5,$f5
    c.lt.d $f4,$f5
    bc1t .L0da40b14
    li	$a1,1
    c.lt.d $f5,$f9
    bc1f .L0da40a98
    nop
.L0da40b14:
    # Line 2838
    jr	$ra
    # Line 2834
    sw	$a1,4120($a0)
.L0da40b1c:
    # Line 2831
    c.lt.d	$f8,$f9
    bc1t	.L0da409c4
    # Line 2832
    li	$a5,1
    beqz	$a7,.L0da40b88
    nop
    sw	$a5,4120($a0)
.L0da40b34:
    # Line 2833
    lwc1	$f7,8($a1)
    cvt.d.s	$f7,$f7
    c.lt.d $f4,$f7
    bc1t .L0da40b54
    # Line 2832
    li	$a4,1
    # Line 2833
    c.lt.d $f7,$f9
    bc1f .L0da40af4
    nop
.L0da40b54:
    sw	$a5,4120($a0)
    # Line 2834
    lwc1	$f5,12($a1)
    cvt.d.s	$f5,$f5
    c.lt.d $f4,$f5
    bc1t .L0da40b78
    # Line 2833
    li	$a4,1
    # Line 2834
    c.lt.d $f5,$f9
    bc1f .L0da40a98
    nop
.L0da40b78:
    # Line 2838
    jr	$ra
    # Line 2834
    sw	$a5,4120($a0)
.L0da40b80:
    # Line 2838
    jr	$ra
    # Line 2834
    sw	$a5,4120($a0)
.L0da40b88:
    # Line 2832
    c.lt.d $f6,$f9
    bc1f .L0da40a6c
    nop
    b	.L0da40b34
    sw	$a5,4120($a0)
.end ScaleInRange

# Function: XferModesInRange
# Declared: Line 2846 (Source lines: 2848-2849)
# Address: 0x0da40ba0 - 0x0da40c1c (Size: 124 bytes, Frame: 32)
.ent XferModesInRange
XferModesInRange:
    # Line 2848
    addiu	$sp,$sp,-32
    # Line 2849
    andi	$at,$a1,0x18
    # Line 2848
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 2849
    beqz	$at,.L0da40bd4
    sd	$ra,8($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t9,$t9,2032
    sd	$a1,16($sp)
    bal viceCoefFmt
    lw	$a0,764($a0)
    beqz	$v0,.L0da40c08
    ld	$a1,16($sp)
.L0da40bd4:
    andi	$ra,$a1,0x80
    beqz	$ra,.L0da40bf8
    ld	$ra,8($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t9,$t9,2192
    bal viceCoefFmt
    lw	$a0,29688($s0)
    beqz	$v0,.L0da40c08
    ld	$ra,8($sp)
.L0da40bf8:
    li	$v0,0x1
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da40c08:
    ld	$ra,8($sp)
    li	$v0,0x0
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end XferModesInRange

# Function: viceCheckRequest
# Declared: Line 2863 (Source lines: 2865-3064)
# Address: 0x0da40c20 - 0x0da4122c (Size: 1548 bytes, Frame: 192)
.globl viceCheckRequest
.ent viceCheckRequest
viceCheckRequest:
    # Line 2875
    lw	$a5,764($a0)
    # Line 2865
    addiu	$sp,$sp,-64
    sd	$s1,0($sp)
    # Line 2882
    lw	$s1,1796($a0)
    # Line 2865
    sd	$s2,8($sp)
    # Line 2881
    lw	$s2,1792($a0)
    sd	$s4,32($sp)
    sd	$ra,56($sp)
    # Line 2888
    lbu	$at,1364($a0)
    # Line 2865
    sd	$s0,16($sp)
    lui	$v0,0x1
    move	$s0,$a0
    sd	$s3,48($sp)
    addiu	$v0,$v0,364
    sd	$gp,24($sp)
    # Line 2888
    beqz	$at,.L0da4119c
    # Line 2865
    addu	$gp,$t9,$v0
    # Line 2888
    dsll32	$v1,$s2,0x2
    bgez	$v1,.L0da411b8
    nop
    dsll32	$a0,$s2,0x3
    bgez	$a0,.L0da4116c
    nop
    lbu	$a1,1280($s0)
    beqz	$a1,.L0da4116c
    nop
    # Line 2895
    lw	$a4,32232($s0)
.L0da40c8c:
    # Line 2901
    lw	$a0,1248($s0)
    beqz	$a0,.L0da411a4
    dsll32	$a2,$s2,0x3
    bgez	$a2,.L0da411b0
    # Line 2913
    move	$s4,$zero
    # Line 2902
    ori	$a4,$a4,0x400
    # Line 2903
    blez	$a0,.L0da40d14
    # Line 2902
    sw	$a4,32232($s0)
    # Line 2903
    slti	$a3,$a0,257
    beqz	$a3,.L0da40d14
    nop
    # Line 2904
    lbu	$a6,1280($s0)
    lw	$a1,32228($s0)
    ori	$a1,$a1,0x400
    beqz	$a6,.L0da40ce4
    sw	$a1,32228($s0)
    sd	$a5,40($sp)
    # Line 2906
    lui	$a2,0x1
    # Line 2907
    or	$a3,$a2,$a1
    sw	$a3,32228($s0)
    # Line 2906
    or	$a2,$a2,$a4
    sw	$a2,32232($s0)
.L0da40ce4:
    # Line 2910
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    sd	$a5,40($sp)
    jal	__glElementsPerGroup
    lw	$a0,1276($s0)
    lw	$t8,1248($s0)
    mult	$t8,$v0
    ld	$a5,40($sp)
    li	$s3,1
    mflo	$s4
    lw	$a4,32232($s0)
    b	.L0da40d20
    addu	$s4,$s4,$s4
.L0da40d14:
    # Line 2913
    sw	$zero,32228($s0)
    move	$s4,$zero
    move	$s3,$zero
.L0da40d20:
    # Line 2916
    lw	$a0,5764($s0)
    li	$t0,6409
    xor	$a1,$t0,$a0
    li	$a7,6408
    li	$a6,6410
    # Line 2920
    lw	$a3,5704($s0)
    # Line 2916
    xor	$a2,$a7,$a0
    xor	$t1,$a6,$a0
    sltiu	$a2,$a2,1
    sltiu	$t1,$t1,1
    sltiu	$a1,$a1,1
    or	$a2,$a2,$t1
    # Line 2920
    beqz	$a3,.L0da40dc8
    # Line 2916
    or	$a1,$a1,$a2
    # Line 2920
    andi	$t1,$s1,0x4
    beqz	$t1,.L0da40dc8
    nop
    # Line 2922
    ori	$a4,$a4,0x200
    # Line 2923
    blez	$a3,.L0da40dc4
    # Line 2922
    sw	$a4,32232($s0)
    # Line 2923
    slti	$t2,$a3,257
    beqz	$t2,.L0da40dc4
    nop
    beqz	$a1,.L0da40dc4
    # Line 2927
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 2925
    lw	$t3,32228($s0)
    sd	$a5,40($sp)
    # Line 2926
    addiu	$s3,$s3,1
    # Line 2925
    ori	$t3,$t3,0x200
    # Line 2927
    jal	__glElementsPerGroup
    # Line 2925
    sw	$t3,32228($s0)
    # Line 2927
    lw	$t9,5704($s0)
    mult	$t9,$v0
    li	$a6,6410
    li	$a7,6408
    ld	$a5,40($sp)
    li	$t0,6409
    mflo	$t8
    lw	$a4,32232($s0)
    b	.L0da40dc8
    addu	$s4,$s4,$t8
.L0da40dc4:
    # Line 2930
    sw	$zero,32228($s0)
.L0da40dc8:
    # Line 2923
    lbu	$ra,30645($s0)
    beqz	$ra,.L0da40de8
    nop
    # Line 2935
    lw	$at,32228($s0)
    # Line 2934
    ori	$a4,$a4,0x100
    sw	$a4,32232($s0)
    # Line 2935
    ori	$at,$at,0x100
    sw	$at,32228($s0)
.L0da40de8:
    lw	$v0,30636($s0)
    li	$v1,0x8421
    beq	$v0,$v1,.L0da40e0c
    nop
    # Line 2942
    lw	$a0,32228($s0)
    # Line 2940
    ori	$a4,$a4,0x80
    sw	$a4,32232($s0)
    # Line 2942
    ori	$a0,$a0,0x80
    sw	$a0,32228($s0)
.L0da40e0c:
    # Line 2947
    lw	$a0,5604($s0)
    xor	$a1,$t0,$a0
    # Line 2951
    lw	$a3,5544($s0)
    # Line 2947
    xor	$a2,$a7,$a0
    xor	$t1,$a6,$a0
    sltiu	$a2,$a2,1
    sltiu	$t1,$t1,1
    sltiu	$a1,$a1,1
    or	$a2,$a2,$t1
    # Line 2951
    beqz	$a3,.L0da40ea8
    # Line 2947
    or	$a1,$a1,$a2
    # Line 2951
    andi	$t1,$s1,0x2
    beqz	$t1,.L0da40ea8
    nop
    # Line 2953
    ori	$a4,$a4,0x40
    # Line 2954
    blez	$a3,.L0da40ea4
    # Line 2953
    sw	$a4,32232($s0)
    # Line 2954
    slti	$t2,$a3,257
    beqz	$t2,.L0da40ea4
    nop
    beqz	$a1,.L0da40ea4
    # Line 2958
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 2956
    lw	$t3,32228($s0)
    sd	$a5,40($sp)
    # Line 2957
    addiu	$s3,$s3,1
    # Line 2956
    ori	$t3,$t3,0x40
    # Line 2958
    jal	__glElementsPerGroup
    # Line 2956
    sw	$t3,32228($s0)
    # Line 2958
    lw	$t9,5544($s0)
    mult	$t9,$v0
    li	$a6,6410
    li	$a7,6408
    ld	$a5,40($sp)
    li	$t0,6409
    mflo	$t8
    lw	$a4,32232($s0)
    b	.L0da40ea8
    addu	$s4,$s4,$t8
.L0da40ea4:
    # Line 2961
    sw	$zero,32228($s0)
.L0da40ea8:
    # Line 2965
    lw	$a0,0($a5)
    beqz	$a0,.L0da40ec4
    li	$ra,0x8011
    beq	$a0,$ra,.L0da40ff8
    li	$a1,0x8012
    beq	$a1,$a0,.L0da40ffc
    # Line 2974
    lwc1	$f4,_lit_3f800000
.L0da40ec4:
    # Line 3005
    lw	$a0,5444($s0)
    xor	$a1,$t0,$a0
    # Line 3009
    lw	$a3,5384($s0)
    # Line 3005
    xor	$a2,$a7,$a0
    xor	$a5,$a6,$a0
    sltiu	$a2,$a2,1
    sltiu	$a5,$a5,1
    sltiu	$a1,$a1,1
    or	$a2,$a2,$a5
    # Line 3009
    beqz	$a3,.L0da40f4c
    # Line 3005
    or	$a1,$a1,$a2
    # Line 3009
    andi	$a5,$s1,0x1
    beqz	$a5,.L0da40f4c
    nop
    # Line 3010
    ori	$a4,$a4,0x4
    # Line 3011
    blez	$a3,.L0da40f48
    # Line 3010
    sw	$a4,32232($s0)
    # Line 3011
    slti	$a6,$a3,257
    beqz	$a6,.L0da40f48
    nop
    beqz	$a1,.L0da40f48
    # Line 3014
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 3012
    lw	$a7,32228($s0)
    # Line 3013
    addiu	$s3,$s3,1
    # Line 3012
    ori	$a7,$a7,0x4
    # Line 3014
    jal	__glElementsPerGroup
    # Line 3012
    sw	$a7,32228($s0)
    # Line 3014
    lw	$t1,5384($s0)
    mult	$t1,$v0
    mflo	$t0
    lw	$a4,32232($s0)
    b	.L0da40f4c
    addu	$s4,$s4,$t0
.L0da40f48:
    # Line 3017
    sw	$zero,32228($s0)
.L0da40f4c:
    # Line 3019
    lbu	$t2,760($s0)
    beqz	$t2,.L0da410d4
    # Line 3040
    mtc1	$zero,$f4
    # Line 3038
    sw	$zero,32228($s0)
    # Line 3022
    ori	$a4,$a4,0x4
    sw	$a4,32232($s0)
.L0da40f64:
    # Line 3058
    slti	$t3,$s3,3
.L0da40f68:
    beqz	$t3,.L0da40fb8
    ld	$s3,48($sp)
    slti	$t8,$s4,2049
    beqz	$t8,.L0da40fb8
    ld	$s3,48($sp)
    lw	$a1,32228($s0)
    bne	$a4,$a1,.L0da40fb8
    ld	$s3,48($sp)
    # lw $t9, -32680($gp) # &sub_0da40000
    ld	$s2,8($sp)
    ld	$s3,48($sp)
    addiu	$t9,$t9,2976
    ld	$s4,32($sp)
    ld	$s1,0($sp)
    bal ScaleInRange
    move	$a0,$s0
    bnez	$v0,.L0da40fe8
    ld	$ra,56($sp)
    lw	$a4,32232($s0)
    ld	$s3,48($sp)
.L0da40fb8:
    ld	$s4,32($sp)
    # Line 3064
    ld	$gp,24($sp)
    ld	$s1,0($sp)
    ld	$s2,8($sp)
    # Line 3062
    lbu	$at,30524($s0)
    ld	$ra,56($sp)
    # Line 3061
    sw	$zero,32228($s0)
    # Line 3062
    or	$at,$at,$a4
    sw	$at,32232($s0)
    # Line 3064
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40fe8:
    ld	$s0,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40ff8:
    # Line 2974
    lwc1	$f4,_lit_3f800000
.L0da40ffc:
    lwc1	$f0,680($s0)
    # Line 2968
    li	$a3,8
    # Line 2974
    lwc1	$f1,684($s0)
    # Line 2968
    xor	$v0,$a1,$a0
    li	$t1,16
    # Line 2974
    c.eq.s	$f0,$f4
    lwc1	$f3,692($s0)
    # Line 2968
    move	$v1,$t1
    sltiu	$v0,$v0,1
    # Line 2974
    lwc1	$f2,688($s0)
    # Line 2968
    movz	$a3,$v1,$v0
    # Line 2973
    or	$a4,$a4,$a3
    # Line 2974
    bc1f	.L0da4109c
    # Line 2973
    sw	$a4,32232($s0)
    # Line 2974
    c.eq.s $f1,$f4
    bc1f .L0da4109c
    nop
    c.eq.s $f2,$f4
    bc1f .L0da4109c
    nop
    c.eq.s $f3,$f4
    bc1f .L0da4109c
    nop
    lwc1	$f5,696($s0)
    mtc1	$zero,$f4
    c.eq.s $f5,$f4
    bc1f .L0da4109c
    nop
    lwc1	$f6,700($s0)
    c.eq.s $f6,$f4
    bc1f .L0da4109c
    nop
    lwc1	$f7,704($s0)
    c.eq.s $f7,$f4
    bc1f .L0da4109c
    nop
    lwc1	$f8,708($s0)
    c.eq.s $f8,$f4
    bc1t .L0da410a4
    nop
.L0da4109c:
    # Line 2982
    ori	$a4,$a4,0x20
    sw	$a4,32232($s0)
.L0da410a4:
    # Line 2985
    lw	$a0,64($a5)
    li	$a1,3
    beq	$a0,$a1,.L0da41208
    lw	$t2,68($a5)
    li	$a1,5
.L0da410b8:
    beq	$a0,$a1,.L0da41218
    nop
    li	$a1,7
.L0da410c4:
    beq	$a0,$a1,.L0da411c0
    nop
.L0da410cc:
    b	.L0da40ec4
    # Line 2999
    sw	$zero,32228($s0)
.L0da410d4:
    # Line 3040
    lwc1	$f9,660($s0)
    c.eq.s	$f9,$f4
    lwc1	$f12,672($s0)
    lwc1	$f11,668($s0)
    bc1f	.L0da41154
    lwc1	$f10,664($s0)
    c.eq.s $f10,$f4
    bc1f .L0da41154
    nop
    c.eq.s $f11,$f4
    bc1f .L0da41154
    nop
    c.eq.s $f12,$f4
    bc1f .L0da41154
    nop
    lwc1	$f13,640($s0)
    lwc1	$f4,3544($s0)
    c.eq.s $f13,$f4
    bc1f .L0da41154
    nop
    lwc1	$f14,644($s0)
    c.eq.s $f14,$f4
    bc1f .L0da41154
    nop
    lwc1	$f15,648($s0)
    c.eq.s $f15,$f4
    bc1f .L0da41154
    nop
    lwc1	$f16,652($s0)
    c.eq.s $f16,$f4
    bc1t .L0da40f68
    # Line 3058
    slti	$t3,$s3,3
.L0da41154:
    # Line 3051
    lw	$v1,32228($s0)
    # Line 3043
    ori	$a4,$a4,0x2
    sw	$a4,32232($s0)
    # Line 3051
    ori	$v1,$v1,0x2
    b	.L0da40f64
    sw	$v1,32228($s0)
.L0da4116c:
    # Line 2893
    lw	$a6,32228($s0)
    lbu	$a0,1376($s0)
    # Line 2892
    lw	$a4,32232($s0)
    # Line 2893
    ori	$a6,$a6,0x800
    sw	$a6,32228($s0)
    # Line 2892
    ori	$a4,$a4,0x800
    # Line 2893
    beqz	$a0,.L0da40c8c
    # Line 2892
    sw	$a4,32232($s0)
    # Line 2895
    lui	$a7,0x2
    or	$a4,$a4,$a7
    b	.L0da40c8c
    sw	$a4,32232($s0)
.L0da4119c:
    b	.L0da40c8c
    lw	$a4,32232($a0)
.L0da411a4:
    # Line 2913
    move	$s4,$zero
    b	.L0da40d20
    move	$s3,$zero
.L0da411b0:
    b	.L0da40d20
    move	$s3,$zero
.L0da411b8:
    # Line 2895
    b	.L0da40c8c
    lw	$a4,32232($a0)
.L0da411c0:
    # Line 2985
    lw	$t2,68($a5)
    bne	$t2,$a1,.L0da410cc
    dsll32	$t3,$s2,0x3
.L0da411cc:
    bltz	$t3,.L0da410cc
    # Line 2989
    andi	$t8,$a4,0x20
    lw	$a1,32228($s0)
    or	$a1,$a1,$a3
    beqz	$t8,.L0da411ec
    sw	$a1,32228($s0)
    # Line 2991
    ori	$a2,$a1,0x20
    sw	$a2,32228($s0)
.L0da411ec:
    # Line 2994
    bne	$t1,$a3,.L0da40ec4
    nop
    lw	$a3,64($a5)
    slti	$a3,$a3,4
    # Line 2996
    addiu	$t1,$s4,512
    b	.L0da40ec4
    movz	$s4,$t1,$a3
.L0da41208:
    # Line 2985
    bne	$t2,$a1,.L0da410b8
    li	$a1,5
    b	.L0da411cc
    dsll32	$t3,$s2,0x3
.L0da41218:
    lw	$t3,68($a5)
    bne	$t3,$a1,.L0da410c4
    li	$a1,7
    b	.L0da411cc
    dsll32	$t3,$s2,0x3
.end viceCheckRequest

# Function: viceSetIter
# Declared: Line 3085 (Source lines: 3087-3188)
# Address: 0x0da41230 - 0x0da415d4 (Size: 932 bytes, Frame: 32)
.globl viceSetIter
.ent viceSetIter
viceSetIter:
    # Line 3089
    sw	$zero,36($a2)
    # Line 3087
    addiu	$sp,$sp,-32
    # Line 3091
    lw	$a4,168($a1)
    # Line 3089
    move	$a5,$zero
    # Line 3087
    sd	$s1,8($sp)
    move	$s1,$a0
    lui	$at,0x1
    # Line 3091
    slti	$v0,$a4,16
    # Line 3087
    sd	$s0,16($sp)
    move	$s0,$a2
    addiu	$at,$at,-1188
    sd	$gp,0($sp)
    # Line 3091
    bnez	$v0,.L0da41418
    # Line 3087
    addu	$gp,$t9,$at
    # Line 3091
    lw	$v0,172($a1)
    slti	$v0,$v0,8
    bnez	$v0,.L0da41418
    # Line 3099
    move	$a2,$a4
    sra	$a0,$a4,0x1f
    xor	$v1,$a4,$a0
    subu	$v1,$v1,$a0
    andi	$v1,$v1,0xf
    xor	$v1,$v1,$a0
    subu	$v1,$v1,$a0
    beqz	$v1,.L0da412c0
    sw	$a4,4($s0)
    # Line 3101
    lw	$a2,168($a1)
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    andi	$a2,$a2,0xf
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    subu	$a2,$a4,$a2
    addiu	$a2,$a2,16
    sw	$a2,4($s0)
.L0da412c0:
    # Line 3103
    sw	$a2,8($s0)
    sw	$a2,12($s0)
    sw	$a2,0($s0)
    # Line 3105
    lw	$a0,172($a1)
    sra	$a4,$a0,0x1f
    xor	$a3,$a0,$a4
    subu	$a3,$a3,$a4
    andi	$a3,$a3,0x7
    xor	$a3,$a3,$a4
    subu	$a3,$a3,$a4
    # Line 3103
    move	$a6,$a2
    # Line 3105
    beqz	$a3,.L0da4131c
    sw	$a0,16($s0)
    # Line 3107
    lw	$a2,172($a1)
    sra	$a3,$a2,0x1f
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    andi	$a2,$a2,0x7
    xor	$a2,$a2,$a3
    subu	$a2,$a2,$a3
    subu	$a0,$a0,$a2
    addiu	$a0,$a0,8
    sw	$a0,16($s0)
.L0da4131c:
    # Line 3110
    lw	$v0,36($a1)
    lw	$at,28($a1)
    mult	$at,$v0
    mflo	$t9
    nop
    nop
    mult	$a6,$t9
    mflo	$a7
    sw	$a7,8($s0)
    # Line 3111
    lw	$t8,116($a1)
    lw	$t3,108($a1)
    mult	$t3,$t8
    mflo	$t2
    nop
    nop
    mult	$a6,$t2
    mflo	$t0
    nop
    nop
    # Line 3113
    mult	$a7,$a0
    mflo	$a2
    nop
    nop
    # Line 3114
    mult	$t0,$a0
    lui	$a3,0x3c
    mflo	$a4
    # Line 3125
    mtc1	$a7,$f2
    # Line 3111
    sw	$t0,12($s0)
    # Line 3114
    addu	$t1,$a2,$a4
    li	$t3,-8
    # Line 3113
    sw	$a2,20($s0)
    # Line 3114
    slt	$a3,$a3,$t1
    lui	$t2,0x1e
    # Line 3131
    mtc1	$t0,$f4
    # Line 3114
    sw	$a4,24($s0)
    slt	$v1,$a4,$a2
    beqz	$a3,.L0da414ac
    lw	$t1,28($s0)
    beqz	$v1,.L0da41430
    sd	$ra,24($sp)
    # Line 3125
    mtc1	$t2,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a0,$f1
    and	$a0,$t3,$a0
    # Line 3127
    subu	$t8,$a0,$t1
    mult	$a7,$t8
    mflo	$a3
    # Line 3128
    addu	$a4,$a2,$a3
    mtc1	$a3,$f1
    addiu	$a4,$a4,-1
    mtc1	$a4,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    # Line 3125
    teq	$a7,$zero,0x7
    # Line 3126
    sw	$a0,16($s0)
    # Line 3128
    teq	$a3,$zero,0x7
    trunc.w.d	$f0,$f0
    b	.L0da41488
    swc1	$f0,32($s0)
.L0da41418:
    # Line 3188
    ld	$gp,0($sp)
    # Line 3093
    move	$v0,$zero
    # Line 3188
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41430:
    # Line 3131
    mtc1	$t2,$f3
    cvt.d.w	$f4,$f4
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a0,$f3
    and	$a0,$t3,$a0
    # Line 3133
    subu	$t8,$a0,$t1
    mult	$t0,$t8
    mflo	$a2
    # Line 3134
    addu	$a3,$a4,$a2
    mtc1	$a2,$f3
    addiu	$a3,$a3,-1
    mtc1	$a3,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    # Line 3131
    teq	$t0,$zero,0x7
    # Line 3132
    sw	$a0,16($s0)
    # Line 3134
    trunc.w.d	$f2,$f2
    teq	$a2,$zero,0x7
    swc1	$f2,32($s0)
.L0da41488:
    # Line 3136
    mult	$a7,$a0
    mflo	$a2
    nop
    nop
    # Line 3137
    mult	$t0,$a0
    # Line 3136
    sw	$a2,20($s0)
    # Line 3137
    mflo	$a4
    b	.L0da414b8
    sw	$a4,24($s0)
.L0da414ac:
    # Line 3140
    li	$a3,1
    sw	$a3,32($s0)
    sd	$ra,24($sp)
.L0da414b8:
    # Line 3153
    lw	$t0,32228($s1)
    dsll32	$t0,$t0,0x9
    li	$a3,2
    bgez	$t0,.L0da414d8
    li	$a0,1
    lw	$t1,28($a1)
    beq	$t1,$a0,.L0da41578
    lw	$v1,36($a1)
.L0da414d8:
    # Line 3169
    lw	$t2,32616($s1)
    # Line 3170
    lw	$t8,32628($s1)
    # Line 3169
    li	$a0,-1
    # Line 3170
    lw	$t3,32624($s1)
    # Line 3169
    lw	$at,32620($s1)
    beq	$t2,$a0,.L0da41560
    # Line 3170
    slt	$t8,$t8,$a4
    slt	$t3,$t3,$a2
.L0da414f8:
    bnez	$t3,.L0da41544
    # Line 3173
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 3170
    bnez	$t8,.L0da41544
    # Line 3173
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
.L0da41508:
    # Line 3178
    beqz	$a5,.L0da41524
    # Line 3181
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
.L0da41510:
    addiu	$t9,$t9,-17760
    move	$a0,$s1
    bal vice_gfxfile
    move	$a1,$s0
    beqz	$v0,.L0da415ac
.L0da41524:
    ld	$ra,24($sp)
    # Line 3188
    ld	$gp,0($sp)
    li	$v0,1
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
    # Line 3173
    # lw $t9, -32680($gp) # &sub_0da40000
.L0da41544:
    addiu	$t9,$t9,-18032
    bal vice_gfxfile
    addiu	$a0,$s1,32568
    # Line 3174
    li	$ra,1
    sw	$ra,36($s0)
    b	.L0da41510
    # Line 3181
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
.L0da41560:
    # Line 3169
    bne	$at,$a0,.L0da414f8
    # Line 3170
    slt	$t3,$t3,$a2
    # Line 3178
    li	$v0,1
    sw	$v0,36($s0)
    b	.L0da41508
    li	$a5,1
.L0da41578:
    # Line 3153
    bne	$v1,$a3,.L0da414d8
    nop
    lw	$t0,108($a1)
    bne	$t0,$a0,.L0da414d8
    nop
    lw	$t1,116($a1)
    bne	$t1,$a0,.L0da414d8
    nop
    # Line 3160
    sw	$a2,24($s0)
    # Line 3159
    sw	$a7,12($s0)
    # Line 3160
    move	$a4,$a2
    b	.L0da414d8
    # Line 3158
    sw	$a6,4($s0)
.L0da415ac:
    # Line 3183
    # lw $t9, -23220($gp) # &viceCloseDev
    bal viceCloseDev
    move	$a0,$s1
    ld	$ra,24($sp)
    # Line 3188
    ld	$gp,0($sp)
    # Line 3184
    move	$v0,$zero
    # Line 3188
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end viceSetIter

# Function: viceLateLumaConvert
# Declared: Line 3202 (Source lines: 3204-3314)
# Address: 0x0da415e0 - 0x0da4182c (Size: 588 bytes, Frame: 0)
.globl viceLateLumaConvert
.ent viceLateLumaConvert
viceLateLumaConvert:
    # Line 3204
    lw	$v1,0($a1)
    lw	$a1,80($a1)
    lui	$v0,0x1
    # Line 3278
    li	$t0,6409
    # Line 3204
    addiu	$v0,$v0,-2132
    beq	$v1,$a1,.L0da41814
    addu	$at,$t9,$v0
    # Line 3212
    lui	$v1,0x20
    beq	$a2,$v1,.L0da4181c
    # Line 3217
    move	$v0,$zero
    # Line 3247
    dmtc1	$zero,$f13
    # Line 3217
    andi	$a1,$a2,0x2
    # Line 3240
    ldc1	$f10,_lit8_3ff0000000000000
    # Line 3231
    dmtc1	$zero,$f7
    # Line 3224
    ldc1	$f3,_lit8_3ff0000000000000
    # Line 3217
    beqz	$a1,.L0da41698
    # Line 3234
    li	$a5,1
    # Line 3224
    lwc1	$f4,640($a0)
    lwc1	$f0,644($a0)
    c.eq.s	$f0,$f4
    lwc1	$f2,652($a0)
    li	$a5,1
    bc1f	.L0da4165c
    lwc1	$f1,648($a0)
    c.eq.s $f1,$f4
    bc1f .L0da4165c
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f3
    bc1t .L0da41824
    nop
.L0da4165c:
    move	$a5,$zero
    # Line 3231
    lwc1	$f4,660($a0)
.L0da41664:
    lwc1	$f3,664($a0)
    c.eq.s $f3,$f4
    bc1f .L0da41694
    lwc1	$f5,668($a0)
    c.eq.s $f5,$f4
    bc1f .L0da41694
    nop
    lwc1	$f6,672($a0)
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f7
    bc1t .L0da4169c
    # Line 3234
    andi	$a3,$a2,0x20
.L0da41694:
    # Line 3231
    move	$a5,$zero
.L0da41698:
    # Line 3234
    andi	$a3,$a2,0x20
.L0da4169c:
    beqz	$a3,.L0da41718
    # Line 3250
    andi	$a4,$a2,0x100
    # Line 3240
    lwc1	$f4,680($a0)
    lwc1	$f7,684($a0)
    c.eq.s $f7,$f4
    lwc1	$f9,692($a0)
    bc1f .L0da416d8
    lwc1	$f8,688($a0)
    c.eq.s $f8,$f4
    bc1f .L0da416d8
    nop
    cvt.d.s	$f9,$f9
    c.eq.d	$f9,$f10
    bc1t	.L0da416dc
    nop
.L0da416d8:
    move	$a5,$zero
.L0da416dc:
    # Line 3247
    lwc1	$f4,696($a0)
    lwc1	$f10,700($a0)
    c.eq.s $f10,$f4
    lwc1	$f12,708($a0)
    bc1f .L0da41710
    lwc1	$f11,704($a0)
    c.eq.s $f11,$f4
    bc1f .L0da41710
    nop
    cvt.d.s	$f12,$f12
    c.eq.d $f12,$f13
    bc1t .L0da41718
    # Line 3250
    andi	$a4,$a2,0x100
.L0da41710:
    # Line 3247
    move	$a5,$zero
    # Line 3250
    andi	$a4,$a2,0x100
.L0da41718:
    # Line 3256
    ldc1	$f16,_lit8_3ff0000000000000
    # Line 3250
    beqz	$a4,.L0da41794
    # Line 3263
    dmtc1	$zero,$f19
    # Line 3256
    lwc1	$f4,712($a0)
    lwc1	$f13,716($a0)
    c.eq.s $f13,$f4
    # Line 3263
    lwc1	$f17,736($a0)
    # Line 3256
    bc1f .L0da4175c
    # Line 3263
    lwc1	$f18,740($a0)
    # Line 3256
    lwc1	$f14,720($a0)
    c.eq.s $f14,$f4
    bc1f .L0da4175c
    lwc1	$f15,724($a0)
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f16
    bc1t .L0da41760
    nop
.L0da4175c:
    move	$a5,$zero
.L0da41760:
    # Line 3263
    lwc1	$f4,728($a0)
    lwc1	$f16,732($a0)
    c.eq.s $f16,$f4
    bc1f .L0da41790
    nop
    c.eq.s	$f17,$f4
    bc1f	.L0da41790
    nop
    cvt.d.s	$f18,$f18
    c.eq.d $f18,$f19
    bc1t .L0da41798
    # Line 3278
    andi	$a6,$a2,0x18
.L0da41790:
    # Line 3263
    move	$a5,$zero
.L0da41794:
    # Line 3278
    andi	$a6,$a2,0x18
.L0da41798:
    beqz	$a6,.L0da417b0
    nop
    lw	$a7,764($a0)
    lw	$a7,8($a7)
    xor	$a7,$a7,$t0
    movn	$a5,$zero,$a7
.L0da417b0:
    # Line 3291
    andi	$t0,$a2,0x4
    beqz	$t0,.L0da417d0
    # Line 3297
    andi	$t3,$a2,0x40
    # Line 3291
    lw	$t1,5380($a0)
    li	$t2,6409
    xor	$t1,$t1,$t2
    movn	$a5,$zero,$t1
    # Line 3297
    andi	$t3,$a2,0x40
.L0da417d0:
    beqz	$t3,.L0da417ec
    # Line 3303
    andi	$v0,$a2,0x200
    # Line 3297
    lw	$t8,5540($a0)
    li	$t9,6409
    xor	$t8,$t8,$t9
    movn	$a5,$zero,$t8
    # Line 3303
    andi	$v0,$a2,0x200
.L0da417ec:
    beqz	$v0,.L0da41808
    # Line 3314
    andi	$v0,$a5,0xff
    # Line 3303
    lw	$v1,5700($a0)
    li	$a1,6409
    xor	$v1,$v1,$a1
    movn	$a5,$zero,$v1
    # Line 3314
    andi	$v0,$a5,0xff
.L0da41808:
    andi	$a2,$a2,0x80
    jr	$ra
    movn	$v0,$zero,$a2
.L0da41814:
    jr	$ra
    # Line 3212
    li	$v0,1
.L0da4181c:
    # Line 3314
    jr	$ra
    nop
.L0da41824:
    b	.L0da41664
    # Line 3231
    lwc1	$f4,660($a0)
.end viceLateLumaConvert

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

