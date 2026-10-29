# Source: ../CRIME/crm_pixel.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_pixel.c
# Total Functions: 39

.text

# Function: LoadLinearTlb
# Declared: Line 49 (Source lines: 51-123)
# Address: 0x0d952f80 - 0x0d95306c (Size: 236 bytes, Frame: 224)
.ent LoadLinearTlb
LoadLinearTlb:
    # Line 51
    addiu	$sp,$sp,-96
    sd	$s0,24($sp)
    sd	$s3,40($sp)
    lw	$at,-21584($gp)
    move	$s3,$a0
    sd	$s2,32($sp)
    move	$s2,$a1
    move	$s0,$a2
    sd	$s1,16($sp)
    move	$s1,$a3
    beqz	$at,.L0d952fc0
    sd	$ra,48($sp)
    # Line 57
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7240
.L0d952fc0:
    beqz	$s0,.L0d953028
    nop
    # Line 64
    sw	$s1,4($sp)
    # Line 67
    # lw $t9, -31864($gp) # &__glCrmIoctl
    # Line 63
    sw	$s0,0($sp)
    # Line 67
    addiu	$a2,$sp,0
    # Line 65
    andi	$a1,$s2,0x6c
    sw	$a1,8($sp)
    # Line 67
    li	$a1,22021
    jal	__glCrmIoctl
    lw	$a0,31504($s3)
    beqz	$v0,.L0d953020
    # Line 68
    nop	# was lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,7288
    # Line 123
    ld	$s0,24($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    # Line 69
    move	$v0,$zero
    # Line 123
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d953020:
    # Line 73
    bnez	$s1,.L0d953034
    # Line 74
    andi	$a1,$s2,0x4
.L0d953028:
    # Line 73
    move	$s1,$zero
    move	$s0,$zero
    # Line 74
    andi	$a1,$s2,0x4
.L0d953034:
    # Line 123
    ld	$s2,32($sp)
    li	$v0,1
    # Line 74
    beqz	$a1,.L0d953060
    ld	$ra,48($sp)
    # Line 78
    sw	$s1,32332($s3)
    # Line 77
    sw	$s0,32328($s3)
.L0d95304c:
    # Line 123
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d953060:
    # Line 81
    sw	$s1,32340($s3)
    b	.L0d95304c
    # Line 80
    sw	$s0,32336($s3)
.end LoadLinearTlb

# Function: pinBuffer
# Declared: Line 136 (Source lines: 136-145)
# Address: 0x0d953070 - 0x0d9530f4 (Size: 132 bytes, Frame: 16)
.ent pinBuffer
pinBuffer:
    # Line 136
    addiu	$sp,$sp,-16
    la	$a4,errno
    sd	$ra,0($sp)
    # Line 138
    move	$a3,$zero
    # Line 139
    beqz	$a0,.L0d9530c4
    # Line 138
    sw	$zero,0($a4)
    # Line 139
    beqz	$a1,.L0d9530c4
    move	$a4,$zero
.L0d953090:
    beqz	$a4,.L0d9530cc
    nop	# was lw $t9, -22836($gp) # &mpin
.L0d953098:
    # Line 140
    beqz	$a3,.L0d9530b4
    li	$at,22
    beq	$a3,$at,.L0d9530b4
    # Line 141
    nop	# was lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,7320
.L0d9530b4:
    ld	$ra,0($sp)
    # Line 143
    move	$v0,$zero
    # Line 145
    jr	$ra
    addiu	$sp,$sp,16
.L0d9530c4:
    # Line 139
    b	.L0d953090
    li	$a4,1
.L0d9530cc:
    jalr	$t9
    nop
    beqz	$v0,.L0d9530e4
    la	$a3,errno
    b	.L0d953098
    lw	$a3,0($a3)
.L0d9530e4:
    ld	$ra,0($sp)
    # Line 145
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.end pinBuffer

# Function: unpinBuffer
# Declared: Line 148 (Source lines: 148-154)
# Address: 0x0d953100 - 0x0d95313c (Size: 60 bytes, Frame: 16)
.ent unpinBuffer
unpinBuffer:
    # Line 148
    addiu	$sp,$sp,-16
    # Line 149
    beqz	$a0,.L0d953130
    sd	$ra,0($sp)
    beqz	$a1,.L0d953130
    # Line 150
    nop	# was lw $t9, -22832($gp) # &munpin
    jal	munpin
    nop
    beqz	$v0,.L0d953130
    # Line 151
    nop	# was lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,7336
.L0d953130:
    ld	$ra,0($sp)
    # Line 154
    jr	$ra
    addiu	$sp,$sp,16
.end unpinBuffer

# Function: mapScratch
# Declared: Line 157 (Source lines: 157-177)
# Address: 0x0d953140 - 0x0d953220 (Size: 224 bytes, Frame: 32)
.ent mapScratch
mapScratch:
    # Line 157
    addiu	$sp,$sp,-32
    # Line 161
    move	$v0,$zero
    # Line 157
    beqz	$a0,.L0d9531cc
    sd	$a0,8($sp)
    # Line 163
    # lw $t9, -22828($gp) # &open
    la	$a0,sub_0da40000
    li	$a1,2
    sd	$s0,16($sp)
    sd	$ra,24($sp)
    jal	open
    addiu	$a0,$a0,7360
    li	$a1,-1
    beq	$v0,$a1,.L0d9531fc
    move	$s0,$v0
    # Line 165
    # lw $t9, -22824($gp) # &mmap
    move	$a0,$zero
    move	$a5,$zero
    ld	$a1,8($sp)
    move	$a4,$v0
    li	$a3,2
    li	$a2,3
    jal	mmap
    sd	$s1,0($sp)
    # Line 166
    # lw $t9, -22820($gp) # &close
    # Line 165
    move	$s1,$v0
    # Line 166
    jal	close
    move	$a0,$s0
    li	$a2,-1
    ld	$s0,16($sp)
    # Line 177
    move	$v0,$s1
    # Line 166
    beq	$a2,$s1,.L0d9531d4
    ld	$ra,24($sp)
    # Line 170
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9531cc:
    jr	$ra
    addiu	$sp,$sp,32
.L0d9531d4:
    # Line 173
    # lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    ld	$s0,16($sp)
    jal	perror
    addiu	$a0,$a0,7376
    ld	$ra,24($sp)
    # Line 174
    move	$v0,$zero
    # Line 170
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9531fc:
    # Line 169
    # lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    ld	$s0,16($sp)
    jal	perror
    addiu	$a0,$a0,7408
    ld	$ra,24($sp)
    # Line 170
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end mapScratch

# Function: unmapScratch
# Declared: Line 180 (Source lines: 180-182)
# Address: 0x0d953220 - 0x0d953248 (Size: 40 bytes, Frame: 16)
.ent unmapScratch
unmapScratch:
    # Line 180
    addiu	$sp,$sp,-16
    # Line 181
    beqz	$a0,.L0d95323c
    sd	$ra,0($sp)
    beqz	$a1,.L0d95323c
    nop	# was lw $t9, -22816($gp) # &munmap
    jal	munmap
    nop
.L0d95323c:
    ld	$ra,0($sp)
    # Line 182
    jr	$ra
    addiu	$sp,$sp,16
.end unmapScratch

# Function: reallocScratch
# Declared: Line 185 (Source lines: 186-282)
# Address: 0x0d953250 - 0x0d9535f8 (Size: 936 bytes, Frame: 48)
.ent reallocScratch
reallocScratch:
    # Line 186
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s1,16($sp)
    lui	$at,0x10
    move	$s1,$a1
    sd	$ra,32($sp)
    addiu	$at,$at,-9412
    sd	$gp,24($sp)
    blez	$a1,.L0d9533fc
    addu	$gp,$t9,$at
    # Line 216
    lui	$v0,0x2
    slt	$v1,$v0,$a1
    bnez	$v1,.L0d953304
    # Line 259
    lui	$a3,0x1
    # Line 216
    lw	$a0,32320($a0)
    beqz	$a0,.L0d9534d0
    nop
    # Line 221
    lw	$a3,32308($s0)
    addu	$a2,$a3,$a1
    slt	$a1,$v0,$a2
    bnez	$a1,.L0d9533ac
    # Line 225
    andi	$a4,$a2,0x1f
    sw	$a2,32308($s0)
    beqz	$a4,.L0d9532c8
    # Line 224
    addu	$s1,$a3,$a0
    # Line 227
    addiu	$a5,$a2,31
    li	$a6,-32
    and	$a5,$a5,$a6
    sw	$a5,32308($s0)
.L0d9532c8:
    lw	$a7,-21584($gp)
    beqz	$a7,.L0d9532ec
    ld	$ra,32($sp)
    # Line 229
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    move	$a1,$s1
    jal	printf
    addiu	$a0,$a0,7488
    ld	$ra,32($sp)
.L0d9532ec:
    # Line 282
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    # Line 230
    move	$v0,$s1
    # Line 282
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d953304:
    # Line 259
    ori	$a3,$a3,0xffff
    lui	$a4,0xfffe
    addu	$a3,$a1,$a3
    lw	$a1,32304($a0)
    and	$a3,$a3,$a4
    beq	$a3,$a1,.L0d953390
    lw	$a2,32316($a0)
    # Line 265
    beqz	$a2,.L0d953344
    sd	$a3,0($sp)
    beqz	$a1,.L0d953344
    lw	$a4,-21576($gp)
    beqz	$a4,.L0d953518
    # Line 267
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12832
    bal __glCrmPickAllProcs
    move	$a0,$a2
.L0d953344:
    # Line 266
    lw	$ra,-21576($gp)
.L0d953348:
    beqz	$ra,.L0d9534fc
    # Line 273
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12608
    bal __glCrmPickAllProcs
    ld	$a0,0($sp)
    move	$a2,$v0
    sw	$v0,32316($s0)
.L0d953364:
    # Line 277
    ld	$ra,0($sp)
    lw	$at,-21584($gp)
    movz	$ra,$zero,$a2
    beqz	$at,.L0d953390
    sw	$ra,32304($s0)
    # Line 279
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    ld	$a1,0($sp)
    jal	printf
    addiu	$a0,$a0,7616
    lw	$a2,32316($s0)
.L0d953390:
    ld	$s0,8($sp)
.L0d953394:
    ld	$ra,32($sp)
    # Line 282
    move	$v0,$a2
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9533ac:
    # Line 230
    beqz	$a0,.L0d9534dc
    # Line 240
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d9533b4:
    # Line 233
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s0
    lw	$a1,-21584($gp)
    beqz	$a1,.L0d9533dc
    # Line 234
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    lw	$a1,32320($s0)
    jal	printf
    addiu	$a0,$a0,7536
.L0d9533dc:
    # Line 282
    ld	$gp,24($sp)
    # Line 237
    lw	$v0,32320($s0)
    ld	$ra,32($sp)
    # Line 236
    sw	$zero,32308($s0)
    # Line 282
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9533fc:
    # Line 193
    lw	$a2,32316($a0)
    beqz	$a2,.L0d953428
    nop
    lw	$a1,32304($a0)
    beqz	$a1,.L0d953428
    lw	$a3,-21576($gp)
    beqz	$a3,.L0d95352c
    # Line 195
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12832
    bal __glCrmPickAllProcs
    move	$a0,$a2
.L0d953428:
    # Line 201
    sw	$zero,32316($s0)
.L0d95342c:
    # Line 200
    sw	$zero,32304($s0)
    # Line 201
    bgez	$s1,.L0d9534b8
    ld	$ra,32($sp)
    lw	$a0,32320($s0)
    beqz	$a0,.L0d9534ac
    # Line 204
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12544
    bal __glCrmPickAllProcs
    lui	$a1,0x2
    # Line 205
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12160
    move	$a0,$s0
    move	$a3,$zero
    lw	$a2,32320($s0)
    bal __glCrmPickAllProcs
    li	$a1,12
    # Line 207
    # lw $t9, -22812($gp) # &cachectl
    move	$a2,$zero
    lui	$a1,0x2
    jal	cachectl
    lw	$a0,32320($s0)
    beqz	$v0,.L0d95349c
    # Line 211
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 209
    # lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,7456
    # Line 211
    # lw $t9, -32740($gp) # &sub_0d950000
.L0d95349c:
    addiu	$t9,$t9,12832
    lw	$a0,32320($s0)
    bal __glCrmPickAllProcs
    lui	$a1,0x2
.L0d9534ac:
    # Line 214
    sw	$zero,32320($s0)
    # Line 213
    sw	$zero,32308($s0)
    ld	$ra,32($sp)
.L0d9534b8:
    # Line 282
    ld	$gp,24($sp)
    # Line 216
    move	$v0,$zero
    # Line 282
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9534d0:
    # Line 230
    bnez	$a0,.L0d9533b4
    # Line 221
    sw	$zero,32308($s0)
    # Line 240
    # lw $t9, -32740($gp) # &sub_0d950000
.L0d9534dc:
    addiu	$t9,$t9,12608
    bal __glCrmPickAllProcs
    lui	$a0,0x2
    bnez	$v0,.L0d953540
    sw	$v0,32320($s0)
    ld	$s0,8($sp)
    # Line 242
    b	.L0d953394
    move	$a2,$zero
.L0d9534fc:
    # Line 275
    lw	$t9,0($s0)
    move	$a0,$s0
    jal	sub_0d950000
    ld	$a1,0($sp)
    move	$a2,$v0
    b	.L0d953364
    sw	$v0,32316($s0)
.L0d953518:
    # Line 269
    lw	$t9,12($s0)
    jalr	$t9
    move	$a1,$a2
    b	.L0d953348
    # Line 266
    lw	$ra,-21576($gp)
.L0d95352c:
    # Line 197
    lw	$t9,12($s0)
    jalr	$t9
    move	$a1,$a2
    b	.L0d95342c
    # Line 201
    sw	$zero,32316($s0)
.L0d953540:
    # Line 244
    # lw $t9, -22812($gp) # &cachectl
    move	$a0,$v0
    lui	$a1,0x2
    jal	cachectl
    li	$a2,1
    beqz	$v0,.L0d953570
    # Line 248
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 245
    # lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,7584
    # Line 248
    # lw $t9, -32740($gp) # &sub_0d950000
.L0d953570:
    addiu	$t9,$t9,12400
    lui	$a1,0x2
    bal __glCrmPickAllProcs
    lw	$a0,32320($s0)
    # Line 250
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12160
    move	$a0,$s0
    lui	$a3,0x2
    lw	$a2,32320($s0)
    bal __glCrmPickAllProcs
    li	$a1,12
    beqz	$v0,.L0d9535b0
    lw	$a0,32320($s0)
.L0d9535a4:
    ld	$s0,8($sp)
    # Line 259
    b	.L0d953394
    move	$a2,$a0
.L0d9535b0:
    # Line 252
    # lw $t9, -22812($gp) # &cachectl
    lui	$a1,0x2
    jal	cachectl
    move	$a2,$zero
    beqz	$v0,.L0d9535dc
    # Line 256
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 254
    # lw $t9, -22840($gp) # &perror
    la	$a0,sub_0da40000
    jal	perror
    addiu	$a0,$a0,7456
    # Line 256
    # lw $t9, -32740($gp) # &sub_0d950000
.L0d9535dc:
    addiu	$t9,$t9,12832
    lui	$a1,0x2
    bal __glCrmPickAllProcs
    lw	$a0,32320($s0)
    # Line 257
    move	$a0,$zero
    b	.L0d9535a4
    sw	$zero,32320($s0)
.end reallocScratch

# Function: __glCrmPickPixelProcs
# Declared: Line 287 (Source lines: 288-529)
# Address: 0x0d953600 - 0x0d953de4 (Size: 2020 bytes, Frame: 48)
.globl __glCrmPickPixelProcs
.ent __glCrmPickPixelProcs
__glCrmPickPixelProcs:
    # Line 288
    addiu	$sp,$sp,-48
    lui	$at,0x10
    sd	$s2,16($sp)
    addiu	$at,$at,-10356
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 297
    # lw $t9, -25300($gp) # &__glGenericPickPixelProcs
    # Line 288
    sd	$ra,24($sp)
    sd	$s0,32($sp)
    # Line 297
    nop
    # Line 288
    move	$s0,$a0
    # Line 297
    jal	__glGenericPickPixelProcs
    # Line 295
    lw	$s2,11764($a0)
    # Line 297
    lw	$v0,-21584($gp)
    bltz	$v0,.L0d953c90
    sd	$s1,40($sp)
.L0d953640:
    # Line 300
    lw	$v1,-21580($gp)
    bltz	$v1,.L0d953cac
    # Line 303
    nop	# was lw $t9, -22904($gp) # &getenv
.L0d95364c:
    lw	$a0,-21576($gp)
    bltz	$a0,.L0d953cc4
    # Line 306
    nop	# was lw $t9, -22904($gp) # &getenv
.L0d953658:
    lw	$a1,-21572($gp)
    bltz	$a1,.L0d953cdc
    # Line 309
    nop	# was lw $t9, -22904($gp) # &getenv
.L0d953664:
    lw	$a2,-21568($gp)
    bltz	$a2,.L0d953cf4
    # Line 312
    nop	# was lw $t9, -22904($gp) # &getenv
.L0d953670:
    lw	$a3,-21564($gp)
    bltz	$a3,.L0d953b28
    # Line 315
    li	$a5,0x80f4
.L0d95367c:
    # Line 318
    lw	$a0,1236($s0)
    li	$a4,1028
    beq	$a0,$a4,.L0d953c38
    li	$a5,1029
    beq	$a0,$a5,.L0d953c20
    nop
    lw	$a1,11764($s0)
.L0d953698:
    # Line 329
    bne	$a1,$s2,.L0d953ac8
    # Line 331
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
.L0d9536a0:
    # Line 342
    sw	$zero,32228($s0)
    # Line 341
    sw	$zero,32232($s0)
    # Line 339
    lw	$s2,1796($s0)
    # Line 337
    lw	$s1,30436($s0)
    # Line 338
    lw	$a6,1792($s0)
    # Line 342
    move	$a0,$zero
    # Line 346
    beqz	$a3,.L0d9536f0
    # Line 338
    sd	$a6,0($sp)
    # Line 346
    lbu	$a7,3220($s0)
    beqz	$a7,.L0d9536f0
    nop
    lbu	$t0,30524($s0)
    bnez	$t0,.L0d9536e4
    # Line 348
    nop	# was lw $t9, -23164($gp) # &viceCheckRequest
    # Line 346
    lbu	$t1,30528($s0)
    bnez	$t1,.L0d9536f0
    # Line 348
    nop	# was lw $t9, -23164($gp) # &viceCheckRequest
.L0d9536e4:
    jal	viceCheckRequest
    move	$a0,$s0
    lw	$a0,32228($s0)
.L0d9536f0:
    # Line 351
    beqz	$a0,.L0d953bbc
.L0d9536f4:
    # Line 370
    andi	$t2,$s1,0x1000
.L0d9536f8:
    beqz	$t2,.L0d953ae0
    andi	$v1,$s1,0x2000
.L0d953700:
    # Line 373
    sb	$zero,32196($s0)
.L0d953704:
    # Line 387
    andi	$t8,$s1,0x33ac
    # Line 383
    andi	$t3,$s1,0x200c
    sltu	$t3,$zero,$t3
    # Line 387
    beqz	$t8,.L0d953be0
    # Line 383
    sb	$t3,32202($s0)
.L0d953718:
    # Line 387
    li	$a0,1
.L0d95371c:
    # Line 400
    lwc1	$f4,748($s0)
    # Line 401
    mtc1	$zero,$f6
    # Line 399
    lwc1	$f5,744($s0)
    # Line 402
    c.lt.s $f6,$f4
    c.le.s	$f5,$f6
    # Line 387
    sb	$a0,32201($s0)
    # Line 402
    li	$t9,1
    # Line 401
    c.lt.s $f6,$f5
    li	$t8,1
    # Line 402
    movf	$t9,$zero,$fcc2
    sb	$t9,32204($s0)
    # Line 401
    movf	$t8,$zero,$fcc1
    # Line 402
    bc1f	.L0d953758
    # Line 401
    sb	$t8,32203($s0)
    # Line 404
    neg.s	$f5,$f5
.L0d953758:
    c.le.s $f4,$f6
    bc1f .L0d953768
    nop
    # Line 407
    neg.s	$f4,$f4
.L0d953768:
    # Line 412
    trunc.w.s	$f8,$f5
    mfc1	$a0,$f8
    # Line 410
    swc1	$f4,32244($s0)
    # Line 409
    swc1	$f5,32240($s0)
    # Line 413
    blez	$a0,.L0d9537a8
    # Line 412
    swc1	$f8,32256($s0)
    # Line 413
    slti	$ra,$a0,17
    beqz	$ra,.L0d9537a8
    # Line 416
    lwc1	$f7,_lit_3f800000
    # Line 415
    cvt.s.w	$f0,$f8
    # Line 416
    addiu	$v0,$a0,-1
    sw	$v0,32256($s0)
    # Line 414
    li	$at,1
    sw	$at,32264($s0)
    # Line 416
    b	.L0d953800
    # Line 415
    swc1	$f0,32248($s0)
.L0d9537a8:
    # Line 418
    lwc1	$f7,_lit_3f800000
    c.lt.s $f7,$f5
    bc1f .L0d9537c8
    sw	$zero,32256($s0)
    # Line 421
    swc1	$f7,32248($s0)
    # Line 420
    li	$v1,1
    # Line 421
    b	.L0d953800
    # Line 420
    sw	$v1,32264($s0)
.L0d9537c8:
    # Line 423
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f3,$f5
    div.d	$f3,$f1,$f3
    ldc1	$f8,_lit8_3fe0000000000000
    add.d	$f3,$f3,$f8
    trunc.w.d	$f3,$f3
    mfc1	$a0,$f3
    andi	$a0,$a0,0x7ff
    # Line 424
    mtc1	$a0,$f2
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    # Line 423
    sw	$a0,32264($s0)
    # Line 424
    cvt.s.d	$f1,$f1
    swc1	$f1,32248($s0)
.L0d953800:
    # Line 428
    trunc.w.s	$f8,$f4
    mfc1	$a0,$f8
    # Line 429
    blez	$a0,.L0d953838
    # Line 428
    swc1	$f8,32260($s0)
    # Line 429
    slti	$a1,$a0,17
    beqz	$a1,.L0d953838
    nop
    # Line 431
    cvt.s.w	$f9,$f8
    # Line 432
    addiu	$a3,$a0,-1
    sw	$a3,32260($s0)
    # Line 430
    li	$a2,1
    sw	$a2,32268($s0)
    # Line 432
    b	.L0d95388c
    # Line 431
    swc1	$f9,32252($s0)
.L0d953838:
    # Line 434
    c.lt.s $f7,$f4
    bc1f .L0d953854
    sw	$zero,32260($s0)
    # Line 437
    swc1	$f7,32252($s0)
    # Line 436
    li	$a4,1
    # Line 437
    b	.L0d95388c
    # Line 436
    sw	$a4,32268($s0)
.L0d953854:
    # Line 439
    ldc1	$f10,_lit8_3ff0000000000000
    cvt.d.s	$f12,$f4
    div.d	$f12,$f10,$f12
    ldc1	$f13,_lit8_3fe0000000000000
    add.d	$f12,$f12,$f13
    trunc.w.d	$f12,$f12
    mfc1	$a5,$f12
    andi	$a5,$a5,0x7ff
    # Line 440
    mtc1	$a5,$f11
    cvt.d.w	$f11,$f11
    div.d	$f10,$f10,$f11
    # Line 439
    sw	$a5,32268($s0)
    # Line 440
    cvt.s.d	$f10,$f10
    swc1	$f10,32252($s0)
.L0d95388c:
    # Line 444
    c.eq.s $f5,$f7
    bc1f .L0d9538a4
    li	$a0,1
    c.eq.s $f4,$f7
    bc1t .L0d953ad8
    li	$a0,1
.L0d9538a4:
    andi	$a6,$s2,0x20
    beqz	$a6,.L0d953b60
    sb	$a0,32205($s0)
    # Line 447
    li	$a7,1
    sb	$a7,32209($s0)
.L0d9538b8:
    # Line 449
    dsll32	$t0,$s2,0xe
    bgez	$t0,.L0d953b68
    # Line 452
    li	$t1,1
    sb	$t1,32210($s0)
.L0d9538c8:
    # Line 457
    lbu	$a0,761($s0)
    beqz	$a0,.L0d953a80
    nop
.L0d9538d4:
    # Line 465
    beqz	$a0,.L0d953aa4
    # Line 462
    sb	$zero,32199($s0)
.L0d9538dc:
    # Line 470
    sb	$zero,32200($s0)
.L0d9538e0:
    # Line 473
    lbu	$t2,30526($s0)
    beqz	$t2,.L0d95391c
    nop
    lwc1	$f13,656($s0)
    ldc1	$f14,_lit8_4070000000000000
    cvt.d.s	$f13,$f13
    c.eq.d	$f13,$f14
    bc1f	.L0d953940
    nop
    lwc1	$f14,676($s0)
    dmtc1	$zero,$f15
    cvt.d.s	$f14,$f14
    c.eq.d $f14,$f15
    bc1f .L0d953940
    nop
.L0d95391c:
    lbu	$t3,1636($s0)
    beqz	$t3,.L0d953940
    nop
    lw	$t8,1888($s0)
    beqz	$t8,.L0d953c68
    andi	$v0,$s1,0x4
    lbu	$t9,1884($s0)
    beqz	$t9,.L0d953c44
    nop
.L0d953940:
    # Line 484
    sb	$zero,32198($s0)
.L0d953944:
    # Line 486
    lwc1	$f15,660($s0)
    c.eq.s $f15,$f6
    bc1f .L0d9539c8
    nop
    lwc1	$f16,664($s0)
    c.eq.s $f16,$f6
    bc1f .L0d9539c8
    nop
    lwc1	$f17,668($s0)
    c.eq.s $f17,$f6
    bc1f .L0d9539c8
    nop
    lwc1	$f18,640($s0)
    lwc1	$f4,3544($s0)
    c.eq.s $f18,$f4
    bc1f .L0d9539c8
    nop
    lwc1	$f19,644($s0)
    c.eq.s $f19,$f4
    bc1f .L0d9539c8
    nop
    lwc1	$f21,648($s0)
    c.eq.s $f21,$f4
    bc1f .L0d9539c8
    nop
    # Line 489
    lwc1	$f4,652($s0)
    lwc1	$f5,672($s0)
    add.s	$f4,$f4,$f5
    c.lt.s	$f4,$f6
    bc1f	.L0d953d0c
    nop
    # Line 490
    b	.L0d953d18
    nop
.L0d9539c8:
    # Line 492
    lwc1	$f6,_lit_bf800000
    swc1	$f6,32236($s0)
.L0d9539d0:
    # Line 504
    sb	$zero,32212($s0)
    # Line 503
    sw	$zero,32344($s0)
    # Line 502
    sw	$zero,32300($s0)
    # Line 501
    sw	$zero,32296($s0)
    # Line 500
    sw	$zero,32220($s0)
    # Line 499
    sw	$zero,32224($s0)
    # Line 498
    sb	$zero,32206($s0)
    # Line 497
    sw	$zero,32216($s0)
    # Line 509
    la	$a2,__glCrmPickCopyPixels
    sw	$a2,12564($s0)
    # Line 508
    la	$a1,__glCrmPickDrawPixels
    sw	$a1,12560($s0)
    # Line 507
    la	$a0,__glCrmPickReadPixels
    # Line 505
    la	$v1,sub_0d950000
    # Line 509
    lbu	$at,32196($s0)
    # Line 495
    lw	$ra,32292($s0)
    # Line 507
    sw	$a0,12568($s0)
    # Line 505
    addiu	$v1,$v1,12880
    # Line 495
    li	$v0,-3
    # Line 505
    sw	$v1,32324($s0)
    # Line 495
    and	$ra,$ra,$v0
    # Line 496
    li	$v0,-2
    and	$ra,$ra,$v0
    # Line 509
    beqz	$at,.L0d953b70
    # Line 496
    sw	$ra,32292($s0)
    ld	$s1,40($sp)
    # Line 517
    la	$t0,__glCrmSpanRenderDepth2
    # Line 516
    la	$a7,__glCrmSpanRenderDepth
    # Line 515
    la	$a6,__glCrmSpanRenderCI2
    # Line 514
    la	$a5,__glCrmSpanRenderCI
    # Line 513
    la	$a4,__glCrmSpanRenderRGBA2
    # Line 512
    la	$a3,__glCrmSpanRenderRGBA
    # Line 529
    ld	$gp,8($sp)
    ld	$s2,16($sp)
    # Line 517
    sw	$t0,12460($s0)
    # Line 516
    sw	$a7,12456($s0)
    # Line 515
    sw	$a6,12444($s0)
    # Line 514
    sw	$a5,12440($s0)
    # Line 529
    ld	$ra,24($sp)
    # Line 513
    sw	$a4,12452($s0)
    # Line 512
    sw	$a3,12448($s0)
    # Line 529
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d953a80:
    # Line 457
    lw	$t1,752($s0)
    li	$t2,-24
    bne	$t1,$t2,.L0d9538d4
    nop
    lw	$t3,756($s0)
    bnez	$t3,.L0d9538d4
    # Line 460
    li	$t8,1
    # Line 465
    bnez	$a0,.L0d9538dc
    # Line 460
    sb	$t8,32199($s0)
.L0d953aa4:
    # Line 465
    lw	$t9,752($s0)
    li	$ra,24
    bne	$t9,$ra,.L0d9538dc
    nop
    lw	$at,756($s0)
    bnez	$at,.L0d9538dc
    # Line 468
    li	$v0,1
    b	.L0d9538e0
    sb	$v0,32200($s0)
.L0d953ac8:
    # Line 331
    jalr	$t9
    move	$a0,$s0
    b	.L0d9536a0
    lw	$a3,-21564($gp)
.L0d953ad8:
    b	.L0d9538a4
    # Line 444
    move	$a0,$zero
.L0d953ae0:
    # Line 370
    beqz	$v1,.L0d953af4
    nop
    lbu	$a0,3221($s0)
    bnez	$a0,.L0d953700
    nop
.L0d953af4:
    lbu	$a1,28216($s0)
    beqz	$a1,.L0d953b10
    nop
    lw	$a2,32088($s0)
    sll	$a2,$a2,0x10
    bgez	$a2,.L0d953700
    nop
.L0d953b10:
    # Line 375
    lbu	$a3,32011($s0)
    beqz	$a3,.L0d953dd0
.L0d953b18:
    # Line 377
    li	$a4,1
    sb	$a4,32197($s0)
    b	.L0d953704
    # Line 376
    sb	$zero,32196($s0)
.L0d953b28:
    # Line 315
    addu	$a5,$a5,$s0
    lw	$a5,0($a5)
    bltz	$a5,.L0d953b54
    nop	# was lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,7760
    bnez	$v0,.L0d953b58
    move	$a3,$zero
    b	.L0d953b58
    li	$a3,1
.L0d953b54:
    move	$a3,$zero
.L0d953b58:
    b	.L0d95367c
    sw	$a3,-21564($gp)
.L0d953b60:
    b	.L0d9538b8
    # Line 449
    sb	$zero,32209($s0)
.L0d953b68:
    b	.L0d9538c8
    # Line 454
    sb	$zero,32210($s0)
.L0d953b70:
    ld	$s1,40($sp)
    # Line 527
    la	$a6,__glSpanRenderDepth2
    # Line 526
    la	$a5,__glSpanRenderDepth
    # Line 525
    la	$a4,__glSpanRenderCI2
    # Line 524
    la	$a3,__glSpanRenderCI
    # Line 523
    la	$a2,__glSpanRenderRGBA2
    # Line 522
    la	$a1,__glSpanRenderRGBA
    # Line 529
    ld	$gp,8($sp)
    ld	$s2,16($sp)
    # Line 527
    sw	$a6,12460($s0)
    # Line 526
    sw	$a5,12456($s0)
    # Line 525
    sw	$a4,12444($s0)
    # Line 524
    sw	$a3,12440($s0)
    # Line 529
    ld	$ra,24($sp)
    # Line 523
    sw	$a2,12452($s0)
    # Line 522
    sw	$a1,12448($s0)
    # Line 529
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d953bbc:
    # Line 351
    lw	$a7,32232($s0)
    bnez	$a7,.L0d9536f8
    # Line 370
    andi	$t2,$s1,0x1000
    # Line 352
    lbu	$t0,30524($s0)
    beqz	$t0,.L0d953d2c
    andi	$a2,$s2,0x1
.L0d953bd4:
    li	$a0,1
.L0d953bd8:
    b	.L0d9536f4
    sw	$a0,32232($s0)
.L0d953be0:
    # Line 387
    andi	$t1,$s1,0x40
    beqz	$t1,.L0d953c0c
    ld	$t3,0($sp)
    li	$t2,0x80cc
    addu	$t2,$t2,$s0
    lw	$t2,0($t2)
    srl	$t2,$t2,0x2
    andi	$t2,$t2,0x3
    li	$t3,2
    bne	$t2,$t3,.L0d953718
    ld	$t3,0($sp)
.L0d953c0c:
    andi	$t3,$t3,0x4000
    bnez	$t3,.L0d95371c
    li	$a0,1
    b	.L0d95371c
    move	$a0,$zero
.L0d953c20:
    # Line 323
    lbu	$t8,3382($s0)
    beqz	$t8,.L0d953d20
    nop
    # Line 324
    lw	$a1,30660($s0)
    b	.L0d953698
    sw	$a1,11764($s0)
.L0d953c38:
    # Line 320
    lw	$a1,30656($s0)
    b	.L0d953698
    sw	$a1,11764($s0)
.L0d953c44:
    # Line 473
    lbu	$t9,1885($s0)
    bnez	$t9,.L0d953940
    nop
    lbu	$ra,1886($s0)
    bnez	$ra,.L0d953940
    nop
    lbu	$at,1887($s0)
    bnez	$at,.L0d953940
    andi	$v0,$s1,0x4
.L0d953c68:
    beqz	$v0,.L0d953940
    andi	$v1,$s1,0x20
    bnez	$v1,.L0d953940
    nop
    lw	$a0,1632($s0)
    li	$a1,519
    bne	$a0,$a1,.L0d953940
    # Line 482
    li	$a2,1
    b	.L0d953944
    sb	$a2,32198($s0)
.L0d953c90:
    # Line 300
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,7672
    sltu	$a1,$zero,$v0
    b	.L0d953640
    sw	$a1,-21584($gp)
.L0d953cac:
    # Line 303
    la	$a0,sub_0da40000
    jalr	$t9
    addiu	$a0,$a0,7688
    sltu	$a1,$zero,$v0
    b	.L0d95364c
    sw	$a1,-21580($gp)
.L0d953cc4:
    # Line 306
    la	$a0,sub_0da40000
    jalr	$t9
    addiu	$a0,$a0,7704
    sltu	$a1,$zero,$v0
    b	.L0d953658
    sw	$a1,-21576($gp)
.L0d953cdc:
    # Line 309
    la	$a0,sub_0da40000
    jalr	$t9
    addiu	$a0,$a0,7720
    sltiu	$a1,$v0,1
    b	.L0d953664
    sw	$a1,-21572($gp)
.L0d953cf4:
    # Line 312
    la	$a0,sub_0da40000
    jalr	$t9
    addiu	$a0,$a0,7744
    sltu	$a1,$zero,$v0
    b	.L0d953670
    sw	$a1,-21568($gp)
.L0d953d0c:
    # Line 490
    c.lt.s $f7,$f4
    mov.s	$f6,$f4
    movt.s	$f6,$f7,$fcc1
.L0d953d18:
    b	.L0d9539d0
    swc1	$f6,32236($s0)
.L0d953d20:
    # Line 326
    lw	$a1,30656($s0)
    b	.L0d953698
    sw	$a1,11764($s0)
.L0d953d2c:
    # Line 352
    beqz	$a2,.L0d953d40
    nop
    lw	$a3,5384($s0)
    bnez	$a3,.L0d953bd8
    li	$a0,1
.L0d953d40:
    lw	$a4,764($s0)
    lw	$a4,0($a4)
    bnez	$a4,.L0d953bd4
    andi	$a5,$s2,0x2
    beqz	$a5,.L0d953d64
    nop
    lw	$a6,5544($s0)
    bnez	$a6,.L0d953bd8
    li	$a0,1
.L0d953d64:
    lw	$a7,30636($s0)
    li	$t0,0x8421
    bne	$a7,$t0,.L0d953bd8
    li	$a0,1
    lbu	$t1,30645($s0)
    bnez	$t1,.L0d953bd4
    andi	$t2,$s2,0x4
    beqz	$t2,.L0d953d94
    ld	$t8,0($sp)
    lw	$t3,5704($s0)
    bnez	$t3,.L0d953bd4
    ld	$t8,0($sp)
.L0d953d94:
    lui	$t9,0x3000
    and	$t8,$t8,$t9
    beqz	$t8,.L0d953db0
    ld	$at,0($sp)
    lw	$ra,1248($s0)
    bnez	$ra,.L0d953bd4
    ld	$at,0($sp)
.L0d953db0:
    dsll32	$at,$at,0x2
    bgez	$at,.L0d953dc8
    nop
    lbu	$v0,1364($s0)
    bnez	$v0,.L0d953bd8
    li	$a0,1
.L0d953dc8:
    b	.L0d953bd8
    move	$a0,$zero
.L0d953dd0:
    # Line 375
    lbu	$v1,32012($s0)
    bnez	$v1,.L0d953b18
    # Line 380
    li	$a0,1
    b	.L0d953704
    sb	$a0,32196($s0)
.end __glCrmPickPixelProcs

# Function: __glcrmim_DrawPixels
# Declared: Line 532 (Source lines: 534-553)
# Address: 0x0d953df0 - 0x0d953e80 (Size: 144 bytes, Frame: 192)
.globl __glcrmim_DrawPixels
.ent __glcrmim_DrawPixels
__glcrmim_DrawPixels:
    # Line 535
    lw	$a6,4112($zero)
    # Line 539
    sb	$zero,32208($a6)
    # Line 538
    sb	$zero,32207($a6)
    # Line 539
    lw	$at,4120($zero)
    # Line 534
    addiu	$sp,$sp,-64
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,-12388
    sd	$gp,0($sp)
    # Line 539
    bnez	$at,.L0d953e4c
    # Line 534
    addu	$gp,$t9,$v0
    # Line 541
    li	$v1,0x81bb
    # Line 546
    li	$a5,6408
    # Line 541
    beq	$a2,$v1,.L0d953e68
    li	$t1,5121
.L0d953e2c:
    # Line 546
    bne	$a2,$a5,.L0d953e50
    # Line 552
    nop	# was lw $t9, -28412($gp) # &__glim_DrawPixels
    # Line 546
    lui	$a7,0xffff
    ori	$a7,$a7,0x7fcc
    bne	$a3,$a7,.L0d953e4c
    # Line 548
    li	$t0,1
    li	$a3,0x8034
    sb	$t0,32208($a6)
.L0d953e4c:
    # Line 552
    # lw $t9, -28412($gp) # &__glim_DrawPixels
.L0d953e50:
    jal	__glim_DrawPixels
    nop
    ld	$ra,8($sp)
    # Line 553
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d953e68:
    # Line 541
    bne	$a3,$t1,.L0d953e2c
    nop
    # Line 544
    li	$a2,6410
    # Line 542
    li	$t2,1
    # Line 544
    b	.L0d953e4c
    # Line 542
    sb	$t2,32207($a6)
.end __glcrmim_DrawPixels

# Function: __glcrmim_ReadPixels
# Declared: Line 556 (Source lines: 558-577)
# Address: 0x0d953e80 - 0x0d953f0c (Size: 140 bytes, Frame: 208)
.globl __glcrmim_ReadPixels
.ent __glcrmim_ReadPixels
__glcrmim_ReadPixels:
    # Line 559
    lw	$t0,4112($zero)
    # Line 563
    sb	$zero,32208($t0)
    # Line 562
    sb	$zero,32207($t0)
    # Line 563
    lw	$at,4120($zero)
    # Line 558
    addiu	$sp,$sp,-80
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,-12532
    sd	$gp,0($sp)
    # Line 563
    bnez	$at,.L0d953ed8
    # Line 558
    addu	$gp,$t9,$v0
    # Line 565
    li	$v1,0x81bb
    # Line 570
    li	$a7,6408
    # Line 565
    beq	$a4,$v1,.L0d953ef4
    li	$t3,5121
.L0d953ebc:
    # Line 570
    bne	$a4,$a7,.L0d953ed8
    lui	$t1,0xffff
    ori	$t1,$t1,0x7fcc
    bne	$a5,$t1,.L0d953ed8
    # Line 572
    li	$t2,1
    li	$a5,0x8034
    sb	$t2,32208($t0)
.L0d953ed8:
    # Line 576
    # lw $t9, -28408($gp) # &__glim_ReadPixels
    jal	__glim_ReadPixels
    nop
    ld	$ra,8($sp)
    # Line 577
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d953ef4:
    # Line 565
    bne	$a5,$t3,.L0d953ebc
    nop
    # Line 568
    li	$a4,6410
    # Line 566
    li	$t8,1
    # Line 568
    b	.L0d953ed8
    # Line 566
    sb	$t8,32207($t0)
.end __glcrmim_ReadPixels

# Function: __glcrmim_PixelZoom
# Declared: Line 580 (Source lines: 581-609)
# Address: 0x0d953f10 - 0x0d953ff4 (Size: 228 bytes, Frame: 16)
.globl __glcrmim_PixelZoom
.ent __glcrmim_PixelZoom
__glcrmim_PixelZoom:
    # Line 584
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 581
    lui	$at,0x10
    # Line 584
    lw	$a1,4112($zero)
    # Line 581
    addiu	$sp,$sp,-16
    addiu	$at,$at,-12676
    sd	$gp,0($sp)
    # Line 584
    beq	$v0,$v1,.L0d953fdc
    # Line 581
    addu	$gp,$t9,$at
    # Line 586
    mtc1	$zero,$f7
    lwc1	$f4,3676($a1)
    c.lt.s	$f7,$f12
    lwc1	$f5,3540($a1)
    # Line 608
    li	$v1,2
    # Line 596
    c.lt.s $f7,$f13
    # Line 586
    bc1f	.L0d953f64
    div.s	$f6,$f12,$f4
    # Line 594
    add.s	$f0,$f5,$f6
    trunc.w.s	$f0,$f0
    b	.L0d953f70
    mfc1	$a2,$f0
.L0d953f64:
    # Line 596
    sub.s	$f1,$f6,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
.L0d953f70:
    bc1f .L0d953f88
    div.s	$f6,$f13,$f4
    # Line 599
    add.s	$f2,$f5,$f6
    trunc.w.s	$f2,$f2
    b	.L0d953f94
    mfc1	$a3,$f2
.L0d953f88:
    # Line 601
    sub.s	$f3,$f6,$f5
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
.L0d953f94:
    # Line 606
    mtc1	$a2,$f6
    # Line 604
    mtc1	$a3,$f5
    # Line 606
    cvt.s.w	$f6,$f6
    # Line 604
    cvt.s.w	$f5,$f5
    # Line 606
    mul.s	$f6,$f6,$f4
    # Line 604
    mul.s	$f4,$f5,$f4
    # Line 606
    swc1	$f6,744($a1)
    # Line 607
    swc1	$f4,748($a1)
    # Line 608
    sw	$v1,4120($zero)
    lw	$v0,11756($a1)
    # Line 609
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 608
    ori	$v0,$v0,0x10
    # Line 609
    jr	$ra
    # Line 608
    sw	$v0,11756($a1)
.L0d953fd0:
    # Line 609
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d953fdc:
    # Line 584
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d953fd0
    ld	$ra,8($sp)
.end __glcrmim_PixelZoom

# Function: __glCrmPickDrawPixels
# Declared: Line 622 (Source lines: 625-1062)
# Address: 0x0d954000 - 0x0d955114 (Size: 4372 bytes, Frame: 192)
.globl __glCrmPickDrawPixels
.ent __glCrmPickDrawPixels
__glCrmPickDrawPixels:
    # Line 625
    addiu	$sp,$sp,-704
    sd	$s6,552($sp)
    sd	$s4,568($sp)
    sd	$s0,592($sp)
    sd	$s5,584($sp)
    move	$s5,$a1
    # Line 641
    addiu	$a1,$sp,0
    # Line 625
    move	$s0,$a0
    sd	$s8,576($sp)
    move	$s8,$a2
    sd	$s3,544($sp)
    lui	$at,0x10
    move	$s3,$a3
    sd	$s1,600($sp)
    addiu	$at,$at,-12916
    move	$s1,$a4
    sd	$gp,608($sp)
    addu	$gp,$t9,$at
    move	$s4,$a5
    andi	$s6,$a6,0xff
    # Line 641
    # lw $t9, -27844($gp) # &__glInitDrawPixelsInfo
    move	$a6,$a5
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    nop
    # Line 625
    sd	$ra,560($sp)
    # Line 641
    jal	__glInitDrawPixelsInfo
    move	$a2,$s5
    # Line 642
    # lw $t9, -27848($gp) # &__glLoadUnpackModes
    move	$a0,$s0
    move	$a2,$s6
    jal	__glLoadUnpackModes
    addiu	$a1,$sp,0
    sd	$s2,616($sp)
    sd	$s7,624($sp)
    # Line 645
    sw	$s8,32276($s0)
    # Line 644
    sw	$s5,32272($s0)
    # Line 651
    lbu	$v0,32207($s0)
    # Line 646
    lw	$v1,52($sp)
    sw	$v1,32284($s0)
    # Line 651
    beqz	$v0,.L0d954540
    lw	$a0,48($sp)
    andi	$a1,$a0,0x1
    beqz	$a1,.L0d954540
    # Line 652
    addiu	$a2,$a0,1
    sw	$a2,48($sp)
    sw	$a2,32280($s0)
.L0d9540c0:
    # Line 654
    lbu	$a3,32209($s0)
    beqz	$a3,.L0d9540d8
    # Line 657
    lwc1	$f1,_lit_40000000
    lwc1	$f0,164($sp)
    mul.s	$f0,$f0,$f1
    swc1	$f0,164($sp)
.L0d9540d8:
    lw	$a4,1792($s0)
    lui	$a5,0x3e00
    and	$a4,$a4,$a5
    beqz	$a4,.L0d954580
    # Line 666
    nop	# was lw $t9, -27856($gp) # &__glClipDrawPixels
    # Line 664
    # lw $t9, -27820($gp) # &__glInitLateScissor
    move	$a0,$s0
    jal	__glInitLateScissor
    addiu	$a1,$sp,0
    beqz	$v0,.L0d95450c
    nop
    beqz	$s4,.L0d95450c
    nop
.L0d95410c:
    # Line 666
    lbu	$a6,32209($s0)
    beqz	$a6,.L0d954128
    li	$s7,-2
    # Line 669
    lw	$a7,220($sp)
    addiu	$a7,$a7,1
    and	$a7,$s7,$a7
    sw	$a7,220($sp)
.L0d954128:
    # Line 671
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 673
    lw	$a2,32280($s0)
    lw	$t0,20($sp)
    mult	$t0,$a2
    lw	$a4,32284($s0)
    lw	$a7,16($sp)
    mflo	$a5
    nop
    nop
    mult	$a7,$a4
    mflo	$a6
    addu	$a6,$s4,$a6
    addu	$a5,$a5,$a6
    sw	$a5,32288($s0)
    # Line 676
    lw	$a3,52($sp)
    subu	$a3,$a3,$a4
    sw	$a3,32284($s0)
    # Line 677
    lw	$a1,48($sp)
    # Line 693
    lbu	$t1,32205($s0)
    # Line 677
    subu	$a1,$a1,$a2
    sw	$a1,32280($s0)
    # Line 679
    lw	$a5,16($sp)
    # Line 680
    lw	$a0,12($sp)
    # Line 691
    sb	$zero,32212($s0)
    # Line 690
    sw	$zero,32344($s0)
    # Line 689
    lw	$t3,11760($s0)
    sw	$t3,32300($s0)
    # Line 688
    sw	$s1,32220($s0)
    # Line 687
    sw	$zero,32224($s0)
    # Line 683
    lw	$t0,32292($s0)
    # Line 686
    sb	$zero,32206($s0)
    # Line 683
    li	$t2,-3
    # Line 685
    sw	$zero,32216($s0)
    # Line 683
    and	$t0,$t0,$t2
    # Line 684
    and	$t0,$s7,$t0
    # Line 693
    beqz	$t1,.L0d95460c
    # Line 684
    sw	$t0,32292($s0)
.L0d9541c8:
    # Line 693
    la	$t1,crmDrawPixelsXfer2
    sd	$t1,528($sp)
.L0d9541d0:
    # Line 702
    lbu	$t2,32207($s0)
    # Line 701
    lbu	$s2,1188($s0)
    # Line 702
    lw	$t3,31300($s0)
    # Line 700
    li	$t1,1
    # Line 702
    beqz	$t2,.L0d9543a0
    sd	$t3,536($sp)
    # Line 707
    lw	$a6,168($sp)
    # Line 705
    move	$a3,$zero
    slti	$a7,$a1,1
    movz	$a3,$a1,$a7
    # Line 707
    addiu	$a4,$a6,2
    beqz	$a3,.L0d954620
    and	$a4,$s7,$a4
    andi	$t0,$a0,0x3
    beqz	$t0,.L0d954678
    move	$a1,$t0
    # Line 710
    addiu	$a2,$a3,-1
    # Line 713
    addu	$t2,$a4,$a2
    # Line 714
    subu	$a2,$s5,$a2
    # Line 713
    slt	$t2,$s5,$t2
    # Line 714
    and	$a2,$s7,$a2
    # Line 708
    li	$t0,-4
    movz	$a2,$a4,$t2
    and	$t0,$a0,$t0
    # Line 709
    sw	$t0,12($sp)
    # Line 714
    blez	$a2,.L0d95450c
    # Line 708
    move	$a0,$t0
    # Line 714
    beq	$a2,$a6,.L0d954548
    # Line 718
    mtc1	$a2,$f3
    # Line 717
    sw	$a2,168($sp)
    # Line 718
    cvt.s.w	$f3,$f3
    # Line 717
    sw	$a2,180($sp)
    # Line 718
    lwc1	$f4,32240($s0)
    # Line 721
    lwc1	$f5,_lit_3f800000
    # Line 718
    lwc1	$f2,3680($s0)
    madd.s	$f2,$f2,$f3,$f4
    # Line 721
    lwc1	$f6,160($sp)
    lwc1	$f4,196($sp)
    nmsub.s	$f4,$f4,$f5,$f6
    # Line 718
    trunc.w.s	$f2,$f2
    swc1	$f2,216($sp)
    # Line 721
    swc1	$f4,196($sp)
    lbu	$a3,32203($s0)
    # Line 717
    move	$s5,$a2
    # Line 721
    beqz	$a3,.L0d9549c8
    # Line 718
    mfc1	$a3,$f2
    # Line 723
    lwc1	$f5,3540($s0)
    add.s	$f5,$f5,$f4
    trunc.w.s	$f5,$f5
    swc1	$f5,204($sp)
    mfc1	$a2,$f5
.L0d95429c:
    # Line 725
    andi	$a1,$t0,0x3
.L0d9542a0:
    # Line 728
    lw	$a6,240($sp)
    mult	$a3,$a6
    mflo	$a4
    addu	$a4,$a2,$a4
    sw	$a4,212($sp)
.L0d9542b4:
    # Line 731
    bnez	$a1,.L0d954374
    # Line 746
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
    # Line 731
    lw	$a7,32232($s0)
    beqz	$a7,.L0d954918
    mtc1	$zero,$f13
    lw	$t0,32228($s0)
    li	$t2,2
    bne	$t0,$t2,.L0d954374
    # Line 746
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
    # Line 731
    mtc1	$zero,$f6
    lwc1	$f5,32236($s0)
    c.le.s	$f6,$f5
    bc1f	.L0d954374
    # Line 746
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
.L0d9542ec:
    # Line 738
    lwc1	$f4,30792($s0)
    lw	$a3,32188($s0)
    mul.s	$f4,$f4,$f5
.L0d9542f8:
    # Line 739
    trunc.w.s	$f5,$f4
    swc1	$f5,504($sp)
    lw	$ra,32184($s0)
    lw	$t9,504($sp)
    sw	$t9,8400($ra)
    # Line 741
    li	$t8,0x8080
    # Line 739
    lw	$t9,504($sp)
    # Line 741
    addu	$t8,$t8,$s0
    # Line 739
    sw	$t9,8400($a3)
    # Line 741
    sw	$zero,0($t8)
    # Line 756
    lw	$a1,32056($s0)
    lw	$t3,0($a1)
    li	$a2,4
    # Line 743
    li	$a4,0x81bb
    # Line 756
    beq	$t3,$a2,.L0d954a5c
    # Line 744
    sb	$t1,508($sp)
    # Line 756
    li	$at,5121
.L0d95433c:
    beq	$s1,$at,.L0d954a9c
    li	$v0,0x8035
    beq	$s1,$v0,.L0d954aac
    sd	$s2,512($sp)
    li	$v1,5123
    beq	$s1,$v1,.L0d954aec
    li	$a0,5125
    beq	$s1,$a0,.L0d954b68
    li	$a1,0x8034
    beq	$s1,$a1,.L0d954c00
    nop
    b	.L0d9543dc
    li	$s3,0x81bb
    # Line 746
    # lw $t9, -32736($gp) # &sub_0d960000
.L0d954374:
    addiu	$t9,$t9,-21088
    move	$a0,$s0
    bal crmCopyPixelsXferRW
    addiu	$a1,$sp,0
    # Line 752
    sb	$zero,508($sp)
    # Line 750
    lw	$a0,12($sp)
    # Line 749
    lw	$s4,8($sp)
    # Line 748
    lw	$a5,16($sp)
    li	$t1,1
    # Line 747
    lw	$s3,0($sp)
    move	$s6,$t1
.L0d9543a0:
    # Line 756
    lw	$a1,32056($s0)
    lw	$ra,0($a1)
    li	$a2,4
    beq	$ra,$a2,.L0d9546c8
    li	$at,5121
.L0d9543b4:
    beq	$s1,$at,.L0d954740
    li	$v0,0x8035
    beq	$s1,$v0,.L0d954774
    li	$v1,5123
    beq	$s1,$v1,.L0d954860
    # Line 865
    li	$a1,6400
    # Line 756
    li	$a1,5125
    beq	$s1,$a1,.L0d9548bc
    li	$a3,0x8034
    beq	$s1,$a3,.L0d9548fc
.L0d9543dc:
    li	$a4,0x8032
    beq	$s1,$a4,.L0d9548e4
    move	$s7,$zero
    move	$s2,$zero
    li	$a1,6401
.L0d9543f0:
    # Line 1000
    beq	$a1,$s3,.L0d954550
    li	$a5,6402
    beq	$s3,$a5,.L0d954550
    nop
.L0d954400:
    # Line 1008
    beqz	$s2,.L0d954414
    nop
    # Line 1011
    lbu	$a6,30652($s0)
    beqz	$s6,.L0d954854
    sb	$a6,32211($s0)
.L0d954414:
    # Line 1016
    beqz	$s7,.L0d954454
    lw	$a7,-21564($gp)
    beqz	$a7,.L0d954454
    nop
    # Line 1017
    lbu	$t0,32201($s0)
    beqz	$t0,.L0d9545a4
    nop
.L0d954430:
    # Line 1021
    lw	$a1,32056($s0)
    lw	$t2,0($a1)
    beq	$t2,$a2,.L0d95470c
    move	$a0,$t2
.L0d954440:
    # Line 1023
    sw	$s2,32348($s0)
    lw	$a0,0($a1)
.L0d954448:
    # Line 1026
    beq	$a0,$a2,.L0d9545d8
    # Line 1029
    la	$s2,viceDrawPixels
.L0d954450:
    # Line 1031
    sb	$t1,32212($s0)
.L0d954454:
    # Line 1034
    beqz	$s2,.L0d954474
    # Line 1035
    lw	$t3,-21584($gp)
    # Line 1034
    move	$t9,$s2
    move	$a0,$s0
    jal	sub_0d960000
    addiu	$a1,$sp,0
    bnez	$v0,.L0d9544c8
    # Line 1035
    lw	$t3,-21584($gp)
.L0d954474:
    lw	$t8,32228($s0)
    beqz	$t3,.L0d954490
    sd	$t8,520($sp)
    # Line 1036
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7776
.L0d954490:
    # Line 1040
    sb	$zero,32212($s0)
    # Line 1039
    sb	$zero,32211($s0)
    # Line 1041
    beqz	$s2,.L0d9544a8
    # Line 1038
    sw	$zero,32228($s0)
    # Line 1041
    beqz	$s7,.L0d954894
    # Line 1044
    move	$a0,$s0
.L0d9544a8:
    # Line 1042
    # lw $t9, -27812($gp) # &__glGenericPickDrawPixels
    move	$a0,$s0
    jal	__glGenericPickDrawPixels
    addiu	$a1,$sp,0
.L0d9544b8:
    # Line 1047
    li	$a1,6402
    beq	$s3,$a1,.L0d95487c
.L0d9544c0:
    # Line 1051
    ld	$a2,520($sp)
    sw	$a2,32228($s0)
.L0d9544c8:
    # Line 1056
    lbu	$a3,32207($s0)
    # Line 1054
    sb	$zero,32212($s0)
    # Line 1056
    beqz	$a3,.L0d9544e4
    # Line 1053
    sb	$zero,32211($s0)
    # Line 1056
    lbu	$a4,508($sp)
    beqz	$a4,.L0d954934
    nop
.L0d9544e4:
    # Line 1059
    lw	$a5,32316($s0)
.L0d9544e8:
    beqz	$a5,.L0d954510
    ld	$s3,544($sp)
    lw	$a6,32304($s0)
    beqz	$a6,.L0d954510
    ld	$s3,544($sp)
    # Line 1060
    lw	$t9,32324($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$zero
.L0d95450c:
    ld	$s3,544($sp)
.L0d954510:
    ld	$s6,552($sp)
    ld	$s4,568($sp)
    ld	$s2,616($sp)
    ld	$s8,576($sp)
    ld	$s5,584($sp)
    ld	$s0,592($sp)
    ld	$ra,560($sp)
    ld	$s1,600($sp)
    ld	$s7,624($sp)
    # Line 1062
    ld	$gp,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0d954540:
    b	.L0d9540c0
    # Line 654
    sw	$a0,32280($s0)
.L0d954548:
    # Line 723
    b	.L0d9542b4
    andi	$a1,$t0,0x3
.L0d954550:
    # Line 1003
    lbu	$a7,32008($s0)
    beqz	$a7,.L0d954400
    nop
    lbu	$t0,31324($s0)
    bnez	$t0,.L0d954400
    # Line 1005
    nop	# was lw $t9, -31792($gp) # &__glCrmForceNonTagClear
    move	$a0,$s0
    jal	__glCrmForceNonTagClear
    addiu	$a1,$s0,31228
    li	$a2,4
    b	.L0d954400
    li	$t1,1
.L0d954580:
    # Line 666
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,0
    beqz	$v0,.L0d95450c
    nop
    bnez	$s4,.L0d95410c
    nop
    b	.L0d954510
    ld	$s3,544($sp)
.L0d9545a4:
    # Line 1017
    lbu	$t2,32205($s0)
    bnez	$t2,.L0d954430
    nop
    lw	$a1,32056($s0)
    lw	$a0,0($a1)
    beq	$a0,$a2,.L0d9545c8
    li	$t3,5
    bne	$a0,$t3,.L0d954440
    nop
.L0d9545c8:
    # Line 1020
    sw	$s2,32348($s0)
    lw	$a0,0($a1)
    # Line 1026
    bne	$a0,$a2,.L0d954450
    # Line 1029
    la	$s2,viceDrawPixels
.L0d9545d8:
    # Line 1026
    lw	$a3,4($a1)
    lbu	$t8,4($a3)
    beqz	$t8,.L0d954450
    # Line 1029
    la	$s2,viceDrawPixels
    # Line 1026
    lw	$t9,40($a3)
    li	$ra,16
    beq	$t9,$ra,.L0d954604
    nop
    lw	$at,44($a3)
    bnez	$at,.L0d954450
    # Line 1029
    la	$s2,viceDrawPixels
.L0d954604:
    # Line 1027
    b	.L0d954450
    la	$s2,viceDrawPixels2
.L0d95460c:
    # Line 693
    lbu	$v0,32209($s0)
    bnez	$v0,.L0d9541c8
    # Line 696
    la	$v1,crmDrawPixelsXfer
    b	.L0d9541d0
    sd	$v1,528($sp)
.L0d954620:
    # Line 713
    addu	$a1,$a4,$a3
    # Line 714
    subu	$a2,$s5,$a3
    # Line 713
    slt	$a1,$s5,$a1
    # Line 714
    and	$a2,$s7,$a2
    movz	$a2,$a4,$a1
    blez	$a2,.L0d954510
    ld	$s3,544($sp)
    # Line 715
    beq	$a2,$a6,.L0d9548dc
    # Line 718
    mtc1	$a2,$f7
    # Line 717
    sw	$a2,168($sp)
    # Line 718
    cvt.s.w	$f7,$f7
    # Line 717
    sw	$a2,180($sp)
    # Line 718
    lwc1	$f8,32240($s0)
    lwc1	$f6,3680($s0)
    madd.s	$f6,$f6,$f7,$f8
    trunc.w.s	$f6,$f6
    andi	$a1,$a0,0x3
    # Line 717
    move	$s5,$a2
    # Line 718
    swc1	$f6,216($sp)
    mfc1	$a3,$f6
.L0d954670:
    # Line 723
    b	.L0d9542a0
    lw	$a2,204($sp)
.L0d954678:
    # Line 713
    addu	$a7,$a4,$a3
    # Line 714
    subu	$a2,$s5,$a3
    # Line 713
    slt	$a7,$s5,$a7
    # Line 714
    and	$a2,$s7,$a2
    movz	$a2,$a4,$a7
    blez	$a2,.L0d954510
    ld	$s3,544($sp)
    beq	$a2,$a6,.L0d9542b4
    # Line 718
    mtc1	$a2,$f9
    # Line 717
    sw	$a2,168($sp)
    # Line 718
    cvt.s.w	$f9,$f9
    # Line 717
    sw	$a2,180($sp)
    # Line 718
    lwc1	$f10,32240($s0)
    lwc1	$f8,3680($s0)
    madd.s	$f8,$f8,$f9,$f10
    trunc.w.s	$f8,$f8
    # Line 717
    move	$s5,$a2
    # Line 718
    swc1	$f8,216($sp)
    b	.L0d954670
    mfc1	$a3,$f8
.L0d9546c8:
    # Line 756
    lw	$a3,4($a1)
    lbu	$t0,4($a3)
    beqz	$t0,.L0d9543b4
    li	$at,5121
    lw	$t2,40($a3)
    li	$t3,16
    beq	$t2,$t3,.L0d9546f8
    # Line 981
    li	$a1,5122
    # Line 756
    lw	$t8,44($a3)
    bnez	$t8,.L0d9543b4
    li	$at,5121
    # Line 981
    li	$a1,5122
.L0d9546f8:
    beq	$a1,$s1,.L0d954ce4
.L0d9546fc:
    move	$s7,$zero
.L0d954700:
    # Line 999
    move	$s2,$zero
    b	.L0d9543f0
    li	$a1,6401
.L0d95470c:
    # Line 1021
    lw	$a3,4($a1)
    lbu	$t9,4($a3)
    beqz	$t9,.L0d954440
    nop
    lw	$ra,40($a3)
    li	$at,16
    beq	$ra,$at,.L0d954448
    nop
    lw	$v0,44($a3)
    bnez	$v0,.L0d954440
    nop
    b	.L0d954448
    nop
.L0d954740:
    # Line 759
    li	$v1,6400
    beq	$s3,$v1,.L0d954ac0
    li	$a1,6407
    beq	$s3,$a1,.L0d954af8
    li	$a3,6409
    beq	$s3,$a3,.L0d954b94
    li	$a1,6401
    beq	$a1,$s3,.L0d954c50
.L0d954760:
    move	$a3,$zero
    move	$s7,$zero
    sd	$s2,512($sp)
    b	.L0d954788
    move	$s2,$zero
.L0d954774:
    # Line 809
    li	$a1,6401
    sd	$s2,512($sp)
    move	$s2,$zero
    move	$s7,$zero
    li	$a3,1
.L0d954788:
    # Line 811
    li	$a4,6408
    beq	$s3,$a4,.L0d95494c
    li	$a6,0x8000
    beq	$s3,$a6,.L0d9549e0
    li	$a4,0x81bb
.L0d95479c:
    bne	$a4,$s3,.L0d9543f0
    nop
    # Line 841
    lbu	$a7,32196($s0)
    beqz	$a7,.L0d9543f0
    lbu	$t0,508($sp)
    beqz	$t0,.L0d9543f0
    ld	$t2,512($sp)
    bnez	$t2,.L0d9543f0
    or	$t3,$a5,$a0
    andi	$t3,$t3,0x3
    bnez	$t3,.L0d9543f0
    nop
    # Line 844
    lbu	$t8,32205($s0)
    beqz	$t8,.L0d954f54
    # Line 843
    ld	$s2,528($sp)
    # Line 844
    lw	$t9,32264($s0)
    slti	$t9,$t9,16
    beqz	$t9,.L0d954818
    mtc1	$s5,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f13,32240($s0)
    lwc1	$f11,3680($s0)
    madd.s	$f11,$f11,$f12,$f13
    lwc1	$f10,32248($s0)
    mul.s	$f10,$f10,$f12
    trunc.w.s	$f11,$f11
    trunc.w.s	$f10,$f10
    mfc1	$ra,$f11
    mfc1	$at,$f10
    beq	$ra,$at,.L0d954f54
    nop
.L0d954818:
    # Line 849
    lw	$v0,32292($s0)
    li	$v1,-241
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x20
    # Line 850
    li	$v1,-13
    # Line 848
    la	$a0,sub_0d960000
    # Line 850
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x8
    # Line 851
    li	$v1,-769
    # Line 848
    addiu	$a0,$a0,-21856
    sw	$a0,32344($s0)
    # Line 851
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x200
    b	.L0d9543f0
    sw	$v0,32292($s0)
.L0d954854:
    # Line 1013
    lw	$a0,-21580($gp)
    b	.L0d954414
    sb	$a0,32212($s0)
.L0d954860:
    # Line 865
    beq	$s3,$a1,.L0d954b74
    li	$a1,6401
    beq	$a1,$s3,.L0d954c3c
    nop
.L0d954870:
    move	$s2,$zero
.L0d954874:
    # Line 889
    b	.L0d9543f0
    move	$s7,$zero
.L0d95487c:
    # Line 1047
    ld	$a3,536($sp)
    lw	$a2,31300($s0)
    beq	$a2,$a3,.L0d9544c0
    # Line 1049
    ld	$a4,536($sp)
    b	.L0d9544c0
    sw	$a4,31300($s0)
.L0d954894:
    # Line 1044
    move	$a1,$s5
    # lw $t9, -27816($gp) # &__glSlowPickDrawPixels
    move	$a2,$s8
    move	$a3,$s3
    move	$a4,$s1
    move	$a5,$s4
    jal	__glSlowPickDrawPixels
    move	$a6,$s6
    b	.L0d9544b8
    nop
.L0d9548bc:
    # Line 892
    li	$a6,6402
    beq	$s3,$a6,.L0d954c08
    li	$a1,6401
    beq	$a1,$s3,.L0d954cc4
    nop
.L0d9548d0:
    move	$s2,$zero
.L0d9548d4:
    # Line 935
    b	.L0d9543f0
    move	$s7,$zero
.L0d9548dc:
    b	.L0d9542b4
    # Line 723
    andi	$a1,$a0,0x3
.L0d9548e4:
    # Line 965
    li	$a7,6407
    beq	$s3,$a7,.L0d954c6c
    move	$s2,$zero
.L0d9548f0:
    # Line 977
    move	$s7,$zero
    b	.L0d9543f0
    li	$a1,6401
.L0d9548fc:
    # Line 937
    li	$t0,6408
    beq	$s3,$t0,.L0d954c8c
    nop
.L0d954908:
    move	$s2,$zero
.L0d95490c:
    # Line 963
    move	$s7,$zero
    b	.L0d9543f0
    li	$a1,6401
.L0d954918:
    # Line 731
    lwc1	$f5,32236($s0)
    c.le.s $f13,$f5
    bc1t .L0d9542ec
    nop
    # Line 738
    lw	$a3,32188($s0)
    b	.L0d9542f8
    lwc1	$f4,30792($s0)
.L0d954934:
    # Line 1057
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,8($sp)
    b	.L0d9544e8
    # Line 1059
    lw	$a5,32316($s0)
.L0d95494c:
    # Line 813
    lbu	$t2,32196($s0)
    beqz	$t2,.L0d9543f0
    nop
    lw	$t3,32232($s0)
    beqz	$t3,.L0d954970
    or	$t9,$a5,$a0
    lw	$t8,32228($s0)
    beqz	$t8,.L0d9543f0
    or	$t9,$a5,$a0
.L0d954970:
    andi	$t9,$t9,0x3
    bnez	$t9,.L0d9543f0
    nop
    # Line 816
    beqz	$a3,.L0d954e80
    ld	$ra,512($sp)
    beqz	$ra,.L0d954e80
    nop
    # Line 817
    lw	$a0,32292($s0)
    li	$a3,-241
    and	$a0,$a0,$a3
    ori	$a0,$a0,0x30
    sw	$a0,32292($s0)
.L0d9549a0:
    # Line 821
    li	$a4,-13
    and	$a4,$a0,$a4
    # Line 819
    ld	$s2,528($sp)
    # Line 822
    li	$a5,-769
    # Line 821
    ori	$a4,$a4,0x8
    # Line 823
    lw	$s7,32228($s0)
    # Line 822
    and	$a4,$a4,$a5
    ori	$a4,$a4,0x200
    # Line 823
    b	.L0d9543f0
    # Line 822
    sw	$a4,32292($s0)
.L0d9549c8:
    # Line 725
    lwc1	$f14,3680($s0)
    sub.s	$f14,$f4,$f14
    trunc.w.s	$f14,$f14
    swc1	$f14,204($sp)
    b	.L0d95429c
    mfc1	$a2,$f14
.L0d9549e0:
    # Line 827
    lbu	$a6,32196($s0)
    beqz	$a6,.L0d9543f0
    nop
    lw	$a7,32232($s0)
    beqz	$a7,.L0d954a04
    or	$t2,$a5,$a0
    lw	$t0,32228($s0)
    beqz	$t0,.L0d9543f0
    or	$t2,$a5,$a0
.L0d954a04:
    andi	$t2,$t2,0x3
    bnez	$t2,.L0d9543f0
    nop
    # Line 830
    beqz	$a3,.L0d954ed4
    ld	$t3,512($sp)
    beqz	$t3,.L0d954ed4
    nop
    # Line 831
    lw	$a0,32292($s0)
    li	$a3,-241
    and	$a0,$a0,$a3
    ori	$a0,$a0,0x20
    sw	$a0,32292($s0)
.L0d954a34:
    # Line 835
    li	$a4,-13
    and	$a4,$a0,$a4
    # Line 833
    ld	$s2,528($sp)
    # Line 836
    li	$a5,-769
    # Line 835
    ori	$a4,$a4,0x8
    # Line 837
    lw	$s7,32228($s0)
    # Line 836
    and	$a4,$a4,$a5
    ori	$a4,$a4,0x200
    b	.L0d9543f0
    sw	$a4,32292($s0)
.L0d954a5c:
    # Line 756
    lw	$a3,4($a1)
    lbu	$a6,4($a3)
    beqz	$a6,.L0d95433c
    li	$at,5121
    lw	$a7,40($a3)
    li	$t0,16
    beq	$a7,$t0,.L0d954a8c
    # Line 981
    li	$t3,5122
    # Line 756
    lw	$t2,44($a3)
    bnez	$t2,.L0d95433c
    li	$at,5121
    # Line 981
    li	$t3,5122
.L0d954a8c:
    beq	$s1,$t3,.L0d954ecc
    nop
    b	.L0d9546fc
    li	$s3,0x81bb
.L0d954a9c:
    # Line 758
    li	$a1,6401
    li	$s3,0x81bb
    b	.L0d954760
    sd	$s2,512($sp)
.L0d954aac:
    # Line 810
    move	$s7,$zero
    move	$s2,$zero
    li	$a1,6401
    b	.L0d95479c
    li	$s3,0x81bb
.L0d954ac0:
    # Line 761
    lbu	$t8,32196($s0)
    beqz	$t8,.L0d954cf8
    nop
    lbu	$t9,30525($s0)
    beqz	$t9,.L0d954d20
    sd	$s2,512($sp)
    # Line 765
    move	$s2,$zero
.L0d954adc:
    move	$a3,$zero
    move	$s7,$zero
    b	.L0d954788
    li	$a1,6401
.L0d954aec:
    # Line 864
    li	$a1,6401
    b	.L0d954870
    li	$s3,0x81bb
.L0d954af8:
    # Line 769
    lbu	$ra,32196($s0)
    beqz	$ra,.L0d954d04
    # Line 778
    move	$s7,$zero
    # Line 769
    lw	$at,32232($s0)
    beqz	$at,.L0d954b20
    lw	$v1,-21564($gp)
    lw	$v0,32228($s0)
    beqz	$v0,.L0d954d7c
    # Line 778
    move	$s7,$zero
    # Line 769
    lw	$v1,-21564($gp)
.L0d954b20:
    beqz	$v1,.L0d954d88
    sd	$s2,512($sp)
    # Line 771
    ld	$s2,528($sp)
.L0d954b2c:
    # Line 776
    lw	$a1,32292($s0)
    li	$a3,-241
    and	$a1,$a1,$a3
    ori	$a1,$a1,0x20
    # Line 777
    li	$a3,-13
    and	$a1,$a1,$a3
    ori	$a1,$a1,0x8
    # Line 778
    li	$a3,-769
    and	$a1,$a1,$a3
    li	$s7,1
    ori	$a1,$a1,0x200
    sw	$a1,32292($s0)
.L0d954b5c:
    # Line 781
    move	$a3,$zero
    b	.L0d954788
    li	$a1,6401
.L0d954b68:
    # Line 891
    li	$a1,6401
    b	.L0d9548d0
    li	$s3,0x81bb
.L0d954b74:
    # Line 867
    lbu	$a4,32196($s0)
    beqz	$a4,.L0d954d48
    nop
    lbu	$a6,30525($s0)
    beqz	$a6,.L0d954d6c
    nop
    # Line 872
    b	.L0d954874
    move	$s2,$zero
.L0d954b94:
    # Line 783
    lbu	$a7,32196($s0)
    beqz	$a7,.L0d954d50
    # Line 792
    move	$s7,$zero
    # Line 783
    lw	$t0,32232($s0)
    beqz	$t0,.L0d954bbc
    lw	$t3,-21564($gp)
    lw	$t2,32228($s0)
    beqz	$t2,.L0d954e00
    # Line 792
    move	$s7,$zero
    # Line 783
    lw	$t3,-21564($gp)
.L0d954bbc:
    beqz	$t3,.L0d954e18
    sd	$s2,512($sp)
    # Line 785
    ld	$s2,528($sp)
.L0d954bc8:
    # Line 790
    lw	$t8,32292($s0)
    li	$t9,-241
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x20
    # Line 791
    li	$t9,-13
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x8
    # Line 792
    li	$t9,-769
    and	$t8,$t8,$t9
    li	$s7,1
    ori	$t8,$t8,0x200
    sw	$t8,32292($s0)
.L0d954bf8:
    # Line 795
    b	.L0d954788
    move	$a3,$zero
.L0d954c00:
    # Line 937
    b	.L0d954908
    li	$s3,0x81bb
.L0d954c08:
    # Line 894
    lbu	$ra,32008($s0)
    beqz	$ra,.L0d954c28
    nop
    lbu	$at,32198($s0)
    beqz	$at,.L0d954c28
    nop
    beqz	$s2,.L0d954e2c
    or	$a7,$a5,$a0
.L0d954c28:
    # Line 908
    lbu	$v0,30526($s0)
    beqz	$v0,.L0d954e0c
    # Line 912
    ld	$a5,536($sp)
.L0d954c34:
    b	.L0d9548d4
    move	$s2,$zero
.L0d954c3c:
    # Line 876
    lbu	$v1,30527($s0)
    beqz	$v1,.L0d954d5c
    nop
    # Line 884
    b	.L0d954874
    move	$s2,$zero
.L0d954c50:
    # Line 797
    lbu	$a3,30527($s0)
    beqz	$a3,.L0d954da4
    sd	$s2,512($sp)
    # Line 804
    move	$s2,$zero
.L0d954c60:
    # Line 806
    move	$a3,$zero
    b	.L0d954788
    move	$s7,$zero
.L0d954c6c:
    # Line 967
    lbu	$a4,32196($s0)
    beqz	$a4,.L0d954d9c
    nop
    lw	$a5,32232($s0)
    beqz	$a5,.L0d954e98
    nop
    b	.L0d9548f0
    # Line 971
    move	$s2,$zero
.L0d954c8c:
    # Line 939
    lbu	$a6,32196($s0)
    beqz	$a6,.L0d954df0
    nop
    lw	$a7,32232($s0)
    beqz	$a7,.L0d954d10
    nop
    lw	$t0,32228($s0)
    beqz	$t0,.L0d954ec4
    nop
    lbu	$t2,32208($s0)
    beqz	$t2,.L0d954d10
    nop
    # Line 956
    b	.L0d95490c
    move	$s2,$zero
.L0d954cc4:
    # Line 916
    lbu	$t3,32009($s0)
    beqz	$t3,.L0d954df8
    nop
    lbu	$t8,30527($s0)
    beqz	$t8,.L0d954e70
    nop
    # Line 929
    b	.L0d9548d4
    move	$s2,$zero
.L0d954ce4:
    # Line 983
    li	$t9,6409
    beq	$s3,$t9,.L0d954eec
    nop
.L0d954cf0:
    b	.L0d954700
    move	$s7,$zero
.L0d954cf8:
    sd	$s2,512($sp)
    # Line 765
    b	.L0d954adc
    move	$s2,$zero
.L0d954d04:
    sd	$s2,512($sp)
    # Line 778
    b	.L0d954b5c
    move	$s2,$zero
.L0d954d10:
    # Line 939
    beqz	$s2,.L0d954f18
    or	$t0,$a5,$a0
    # Line 956
    b	.L0d95490c
    move	$s2,$zero
.L0d954d20:
    # Line 763
    lw	$ra,32292($s0)
    li	$at,-241
    and	$ra,$ra,$at
    # Line 764
    li	$at,-13
    # Line 762
    ld	$s2,528($sp)
    # Line 764
    and	$ra,$ra,$at
    # Line 765
    li	$at,-769
    and	$ra,$ra,$at
    b	.L0d954adc
    sw	$ra,32292($s0)
.L0d954d48:
    # Line 872
    b	.L0d954874
    move	$s2,$zero
.L0d954d50:
    sd	$s2,512($sp)
    # Line 792
    b	.L0d954bf8
    move	$s2,$zero
.L0d954d5c:
    # Line 876
    beqz	$s2,.L0d954f2c
    or	$t2,$a5,$a0
    # Line 884
    b	.L0d954874
    move	$s2,$zero
.L0d954d6c:
    # Line 867
    beqz	$s2,.L0d954f40
    or	$t3,$a5,$a0
    # Line 872
    b	.L0d954874
    move	$s2,$zero
.L0d954d7c:
    sd	$s2,512($sp)
    b	.L0d954b5c
    # Line 778
    move	$s2,$zero
.L0d954d88:
    # Line 774
    la	$v0,sub_0d960000
    la	$s2,crmDrawPixelsXfer2
    addiu	$v0,$v0,-23008
    b	.L0d954b2c
    sw	$v0,32344($s0)
.L0d954d9c:
    # Line 971
    b	.L0d9548f0
    move	$s2,$zero
.L0d954da4:
    # Line 801
    lw	$v1,32292($s0)
    li	$a4,-241
    # Line 799
    sb	$t1,32206($s0)
    # Line 804
    addiu	$a3,$s0,31108
    # Line 801
    and	$v1,$v1,$a4
    # Line 804
    sw	$a3,32300($s0)
    # Line 802
    li	$a3,-13
    # Line 801
    ori	$v1,$v1,0x20
    # Line 800
    la	$a4,sub_0d960000
    # Line 802
    and	$v1,$v1,$a3
    # Line 804
    la	$s2,crmDrawPixelsXfer2
    # Line 803
    li	$a3,-769
    # Line 802
    ori	$v1,$v1,0x8
    # Line 800
    addiu	$a4,$a4,-19808
    sw	$a4,32344($s0)
    # Line 803
    and	$v1,$v1,$a3
    ori	$v1,$v1,0x200
    # Line 804
    b	.L0d954c60
    # Line 803
    sw	$v1,32292($s0)
.L0d954df0:
    # Line 956
    b	.L0d95490c
    move	$s2,$zero
.L0d954df8:
    # Line 929
    b	.L0d9548d4
    move	$s2,$zero
.L0d954e00:
    sd	$s2,512($sp)
    b	.L0d954bf8
    # Line 792
    move	$s2,$zero
.L0d954e0c:
    # Line 912
    and	$a5,$s7,$a5
    b	.L0d954c34
    sw	$a5,31300($s0)
.L0d954e18:
    # Line 788
    la	$a6,sub_0d960000
    la	$s2,crmDrawPixelsXfer2
    addiu	$a6,$a6,-22384
    b	.L0d954bc8
    sw	$a6,32344($s0)
.L0d954e2c:
    # Line 894
    andi	$a7,$a7,0x3
    bnez	$a7,.L0d954c28
    nop
    # Line 898
    lwc1	$f15,656($s0)
    ldc1	$f16,_lit8_4070000000000000
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f16
    bc1f .L0d954f90
    # Line 897
    sb	$t1,32206($s0)
    # Line 898
    lwc1	$f16,676($s0)
    dmtc1	$zero,$f17
    cvt.d.s	$f16,$f16
    c.eq.d $f16,$f17
    bc1f .L0d954f94
    # Line 903
    la	$ra,sub_0d960000
    # Line 900
    b	.L0d954fa0
    ld	$s2,528($sp)
.L0d954e70:
    # Line 916
    beqz	$s2,.L0d954f7c
    or	$t9,$a5,$a0
    # Line 929
    b	.L0d9548d4
    move	$s2,$zero
.L0d954e80:
    # Line 819
    lw	$a0,32292($s0)
    li	$a3,-241
    and	$a0,$a0,$a3
    ori	$a0,$a0,0x20
    b	.L0d9549a0
    sw	$a0,32292($s0)
.L0d954e98:
    # Line 969
    lw	$a4,32292($s0)
    li	$a5,-241
    and	$a4,$a4,$a5
    # Line 970
    li	$a5,-13
    # Line 969
    ori	$a4,$a4,0x10
    # Line 968
    ld	$s2,528($sp)
    # Line 970
    and	$a4,$a4,$a5
    # Line 971
    li	$a5,-769
    and	$a4,$a4,$a5
    b	.L0d9548f0
    sw	$a4,32292($s0)
.L0d954ec4:
    # Line 956
    b	.L0d95490c
    move	$s2,$zero
.L0d954ecc:
    # Line 983
    b	.L0d954cf0
    li	$s3,0x81bb
.L0d954ed4:
    # Line 833
    lw	$a0,32292($s0)
    li	$a3,-241
    and	$a0,$a0,$a3
    ori	$a0,$a0,0x30
    b	.L0d954a34
    sw	$a0,32292($s0)
.L0d954eec:
    # Line 985
    lw	$a4,32232($s0)
    beqz	$a4,.L0d954f04
    or	$a7,$a5,$a0
    lw	$a6,32228($s0)
    beqz	$a6,.L0d954fd8
    or	$a7,$a5,$a0
.L0d954f04:
    andi	$a7,$a7,0x3
    beqz	$a7,.L0d954fe0
    # Line 989
    li	$v1,2
    b	.L0d954700
    move	$s7,$zero
.L0d954f18:
    # Line 939
    andi	$t0,$t0,0x1
    beqz	$t0,.L0d954ff0
    nop
    b	.L0d95490c
    # Line 956
    move	$s2,$zero
.L0d954f2c:
    # Line 876
    andi	$t2,$t2,0x1
    beqz	$t2,.L0d955030
    nop
    b	.L0d954874
    # Line 884
    move	$s2,$zero
.L0d954f40:
    # Line 867
    andi	$t3,$t3,0x1
    beqz	$t3,.L0d95507c
    nop
    b	.L0d954874
    # Line 872
    move	$s2,$zero
.L0d954f54:
    # Line 853
    lw	$t8,32292($s0)
    ori	$t8,$t8,0xf0
    # Line 854
    li	$t9,-13
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x4
    # Line 855
    li	$t9,-769
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x100
    b	.L0d9543f0
    sw	$t8,32292($s0)
.L0d954f7c:
    # Line 916
    andi	$t9,$t9,0x3
    beqz	$t9,.L0d9550ac
    nop
    b	.L0d9548d4
    # Line 929
    move	$s2,$zero
.L0d954f90:
    # Line 903
    la	$ra,sub_0d960000
.L0d954f94:
    la	$s2,crmDrawPixelsXfer2
    addiu	$ra,$ra,-20800
    sw	$ra,32344($s0)
.L0d954fa0:
    # Line 905
    lw	$at,32292($s0)
    li	$v0,-241
    and	$at,$at,$v0
    ori	$at,$at,0x20
    # Line 906
    li	$v0,-13
    and	$at,$at,$v0
    ori	$at,$at,0x8
    # Line 907
    li	$v0,-769
    # Line 908
    addiu	$v1,$s0,31228
    sw	$v1,32300($s0)
    # Line 907
    and	$at,$at,$v0
    ori	$at,$at,0x200
    # Line 908
    b	.L0d9548d4
    # Line 907
    sw	$at,32292($s0)
.L0d954fd8:
    # Line 989
    b	.L0d954700
    move	$s7,$zero
.L0d954fe0:
    sw	$v1,116($sp)
    li	$s7,1
    b	.L0d954700
    # Line 988
    sw	$a1,84($sp)
.L0d954ff0:
    # Line 939
    lbu	$a0,32208($s0)
    beqz	$a0,.L0d9550f4
    # Line 952
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
.L0d954ffc:
    # Line 954
    lw	$a1,32292($s0)
    li	$a3,-241
    and	$a1,$a1,$a3
    # Line 955
    li	$a3,-13
    # Line 954
    ori	$a1,$a1,0x20
    # Line 955
    and	$a1,$a1,$a3
    # Line 956
    li	$a3,-769
    # Line 955
    ori	$a1,$a1,0x4
    # Line 956
    la	$s2,crmDrawPixelsXfer2
    and	$a1,$a1,$a3
    ori	$a1,$a1,0x100
    b	.L0d95490c
    sw	$a1,32292($s0)
.L0d955030:
    # Line 881
    lw	$a4,32292($s0)
    li	$a6,-241
    # Line 879
    sb	$t1,32206($s0)
    # Line 884
    addiu	$a5,$s0,31108
    # Line 881
    and	$a4,$a4,$a6
    # Line 884
    sw	$a5,32300($s0)
    # Line 882
    li	$a5,-13
    # Line 881
    ori	$a4,$a4,0x20
    # Line 880
    la	$a6,sub_0d960000
    # Line 882
    and	$a4,$a4,$a5
    # Line 884
    la	$s2,crmDrawPixelsXfer2
    # Line 883
    li	$a5,-769
    # Line 882
    ori	$a4,$a4,0x8
    # Line 880
    addiu	$a6,$a6,-18688
    sw	$a6,32344($s0)
    # Line 883
    and	$a4,$a4,$a5
    ori	$a4,$a4,0x200
    # Line 884
    b	.L0d954874
    # Line 883
    sw	$a4,32292($s0)
.L0d95507c:
    # Line 870
    lw	$a7,32292($s0)
    li	$t0,-241
    and	$a7,$a7,$t0
    # Line 871
    li	$t0,-13
    and	$a7,$a7,$t0
    # Line 872
    li	$t0,-769
    # Line 871
    ori	$a7,$a7,0x4
    # Line 869
    ld	$s2,528($sp)
    # Line 872
    and	$a7,$a7,$t0
    ori	$a7,$a7,0x100
    b	.L0d954874
    sw	$a7,32292($s0)
.L0d9550ac:
    # Line 916
    lbu	$t2,32199($s0)
    beqz	$t2,.L0d955100
    # Line 920
    ld	$s2,528($sp)
.L0d9550b8:
    # Line 926
    lw	$t3,32292($s0)
    li	$t8,-241
    and	$t3,$t3,$t8
    ori	$t3,$t3,0x20
    # Line 927
    li	$t9,-13
    # Line 929
    addiu	$t8,$s0,31108
    # Line 927
    and	$t3,$t3,$t9
    # Line 929
    sw	$t8,32300($s0)
    # Line 927
    ori	$t3,$t3,0x8
    # Line 928
    li	$t8,-769
    # Line 925
    sb	$t1,32206($s0)
    # Line 928
    and	$t3,$t3,$t8
    ori	$t3,$t3,0x200
    # Line 929
    b	.L0d9548d4
    # Line 928
    sw	$t3,32292($s0)
.L0d9550f4:
    # Line 952
    addiu	$t9,$t9,-17568
    b	.L0d954ffc
    sw	$t9,32344($s0)
.L0d955100:
    # Line 923
    la	$ra,sub_0d960000
    la	$s2,crmDrawPixelsXfer2
    addiu	$ra,$ra,-18128
    b	.L0d9550b8
    sw	$ra,32344($s0)
.end __glCrmPickDrawPixels

# Function: __glCrmPickReadPixels
# Declared: Line 1075 (Source lines: 1078-1426)
# Address: 0x0d955120 - 0x0d955d34 (Size: 3092 bytes, Frame: 128)
.globl __glCrmPickReadPixels
.ent __glCrmPickReadPixels
__glCrmPickReadPixels:
    # Line 1078
    addiu	$sp,$sp,-640
    sd	$s3,624($sp)
    sd	$s8,568($sp)
    sd	$s7,600($sp)
    sd	$s6,552($sp)
    sd	$s2,560($sp)
    sd	$s4,608($sp)
    move	$s4,$a7
    move	$s2,$a6
    sd	$s1,592($sp)
    move	$s1,$a5
    move	$s6,$a4
    sd	$s5,584($sp)
    move	$s5,$a3
    move	$s7,$a2
    lbu	$at,3536($a0)
    move	$s8,$a1
    sd	$s0,576($sp)
    lui	$v0,0x10
    move	$s0,$a0
    sd	$ra,632($sp)
    addiu	$v0,$v0,-17300
    sd	$gp,616($sp)
    beqz	$at,.L0d95546c
    addu	$gp,$t9,$v0
.L0d955184:
    # Line 1100
    move	$a0,$s0
    move	$a7,$s2
    move	$a6,$s1
    # lw $t9, -27800($gp) # &__glInitReadPixelsInfo
    move	$a5,$s6
    move	$a4,$s5
    move	$a3,$s7
    move	$a2,$s8
    sw	$s4,4($sp)
    jal	__glInitReadPixelsInfo
    addiu	$a1,$sp,24
    lbu	$v1,32210($s0)
    beqz	$v1,.L0d9551cc
    # Line 1109
    nop	# was lw $t9, -27808($gp) # &__glClipReadPixels
    # Line 1107
    lw	$a0,196($sp)
    addu	$a0,$a0,$a0
    sw	$a0,196($sp)
    # Line 1109
    # lw $t9, -27808($gp) # &__glClipReadPixels
.L0d9551cc:
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,24
    lbu	$a1,32210($s0)
    beqz	$a1,.L0d9551f8
    # Line 1111
    lw	$a3,196($sp)
    addiu	$a3,$a3,1
    srl	$a2,$a3,0x1f
    addu	$a2,$a2,$a3
    sra	$a2,$a2,0x1
    sw	$a2,196($sp)
.L0d9551f8:
    lbu	$a4,3536($s0)
    beqz	$a4,.L0d955490
    # Line 1116
    lw	$ra,20($sp)
.L0d955204:
    # Line 1118
    beqz	$v0,.L0d955394
    ld	$s3,624($sp)
    beqz	$s4,.L0d955394
    ld	$s3,624($sp)
    # Line 1125
    lbu	$a5,32207($s0)
    beqz	$a5,.L0d955234
    lw	$v0,152($sp)
    andi	$a6,$v0,0x1
    beqz	$a6,.L0d955238
    # Line 1128
    nop	# was lw $t9, -28080($gp) # &__glInitPacker
    # Line 1126
    addiu	$a7,$v0,1
    sw	$a7,152($sp)
.L0d955234:
    # Line 1128
    # lw $t9, -28080($gp) # &__glInitPacker
.L0d955238:
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,24
    # Line 1147
    lbu	$t1,32207($s0)
    # Line 1130
    lw	$a0,120($sp)
    # Line 1141
    sb	$zero,32212($s0)
    # Line 1140
    sw	$zero,32344($s0)
    # Line 1138
    sw	$zero,32220($s0)
    # Line 1137
    sw	$zero,32224($s0)
    # Line 1136
    sb	$zero,32206($s0)
    # Line 1135
    sw	$zero,32216($s0)
    # Line 1139
    lw	$t2,11764($s0)
    # Line 1133
    lw	$a2,32292($s0)
    # Line 1139
    sw	$t2,32296($s0)
    # Line 1133
    li	$a3,-3
    # Line 1151
    lw	$v0,32060($s0)
    # Line 1133
    and	$a2,$a2,$a3
    # Line 1134
    li	$a3,-2
    and	$a2,$a2,$a3
    sw	$a2,32292($s0)
    # Line 1151
    lw	$t0,0($v0)
    # Line 1147
    li	$a6,0x81bb
    # Line 1151
    li	$a4,4
    # Line 1147
    movn	$s1,$a6,$t1
    # Line 1146
    lw	$a1,116($sp)
    # Line 1151
    beq	$t0,$a4,.L0d9554a8
    # Line 1145
    lbu	$a3,1144($s0)
.L0d9552a4:
    # Line 1151
    li	$a5,5121
    beq	$s2,$a5,.L0d9554ec
    # Line 1155
    li	$t0,6400
    # Line 1151
    li	$a7,0x8035
    beq	$s2,$a7,.L0d955550
    # Line 1198
    li	$v0,6408
    # Line 1151
    li	$t0,5123
    beq	$s2,$t0,.L0d955578
    li	$t1,5125
    beq	$s2,$t1,.L0d9555c4
    li	$t2,0x8034
    beq	$s2,$t2,.L0d9555e0
    # Line 1318
    li	$t3,6408
    # Line 1151
    li	$t3,0x8032
    beq	$s2,$t3,.L0d955624
    # Line 1341
    li	$t8,6407
    # Line 1151
    sd	$zero,544($sp)
    move	$s3,$zero
    li	$v0,6401
.L0d9552f0:
    # Line 1378
    beq	$v0,$s1,.L0d955440
    li	$t8,6402
    beq	$s1,$t8,.L0d955440
.L0d9552fc:
    # Line 1388
    ld	$t9,544($sp)
.L0d955300:
    beqz	$t9,.L0d955348
    lw	$ra,-21564($gp)
    beqz	$ra,.L0d955348
    nop
    # Line 1389
    lw	$v0,32060($s0)
    lw	$v0,0($v0)
    beq	$v0,$a4,.L0d9554a0
    li	$v1,5
    beq	$v0,$v1,.L0d9554a0
    nop
    # Line 1392
    lw	$v0,32056($s0)
    lw	$a0,0($v0)
    beq	$a0,$a4,.L0d955590
    nop
.L0d955338:
    # Line 1394
    sw	$s3,32352($s0)
.L0d95533c:
    # Line 1397
    la	$s3,viceReadPixels
.L0d955340:
    li	$a1,1
    sb	$a1,32212($s0)
.L0d955348:
    # Line 1400
    beqz	$s3,.L0d9553c8
    # Line 1401
    lw	$a4,-21584($gp)
    # Line 1400
    move	$t9,$s3
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,24
    beqz	$v0,.L0d9553c8
    # Line 1401
    lw	$a4,-21584($gp)
.L0d955368:
    # Line 1423
    lw	$a2,32316($s0)
    beqz	$a2,.L0d955390
    # Line 1421
    sb	$zero,32212($s0)
    # Line 1423
    lw	$a3,32304($s0)
    beqz	$a3,.L0d955394
    ld	$s3,624($sp)
    # Line 1424
    lw	$t9,32324($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$zero
.L0d955390:
    ld	$s3,624($sp)
.L0d955394:
    ld	$s6,552($sp)
    ld	$s2,560($sp)
    ld	$s8,568($sp)
    ld	$s0,576($sp)
    ld	$s5,584($sp)
    ld	$s1,592($sp)
    ld	$ra,632($sp)
    ld	$s7,600($sp)
    ld	$s4,608($sp)
    # Line 1426
    ld	$gp,616($sp)
    jr	$ra
    addiu	$sp,$sp,640
    # Line 1401
    lw	$a4,-21584($gp)
.L0d9553c8:
    lw	$a5,32228($s0)
    beqz	$a4,.L0d9553e4
    sd	$a5,536($sp)
    # Line 1403
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7800
.L0d9553e4:
    # Line 1405
    lbu	$a1,32210($s0)
    sb	$zero,32212($s0)
    beqz	$a1,.L0d955404
    # Line 1404
    sw	$zero,32228($s0)
    # Line 1407
    lw	$a2,4852($s0)
    sw	$a2,528($sp)
    # Line 1408
    addu	$a2,$a2,$a2
    sw	$a2,4852($s0)
.L0d955404:
    # Line 1410
    beqz	$s3,.L0d955414
    ld	$a3,544($sp)
    beqz	$a3,.L0d9555f8
    # Line 1413
    move	$a0,$s0
.L0d955414:
    # Line 1411
    # lw $t9, -27776($gp) # &__glGenericPickReadPixels
    move	$a0,$s0
    jal	__glGenericPickReadPixels
    addiu	$a1,$sp,24
    # Line 1416
    lbu	$a5,32210($s0)
.L0d955428:
    ld	$a4,536($sp)
    beqz	$a5,.L0d955368
    sw	$a4,32228($s0)
    # Line 1418
    lw	$a6,528($sp)
    b	.L0d955368
    sw	$a6,4852($s0)
.L0d955440:
    # Line 1381
    lbu	$a7,32008($s0)
    beqz	$a7,.L0d955300
    # Line 1388
    ld	$t9,544($sp)
    # Line 1381
    lbu	$t0,31324($s0)
    bnez	$t0,.L0d9552fc
    # Line 1383
    nop	# was lw $t9, -31792($gp) # &__glCrmForceNonTagClear
    move	$a0,$s0
    jal	__glCrmForceNonTagClear
    addiu	$a1,$s0,31228
    b	.L0d9552fc
    li	$a4,4
.L0d95546c:
    # Line 1098
    lw	$t8,32068($a0)
    # Line 1096
    lw	$t2,3704($a0)
    # Line 1098
    sw	$t8,3704($a0)
    # Line 1097
    lw	$t3,32064($a0)
    # Line 1095
    lw	$t1,3700($a0)
    # Line 1097
    sw	$t3,3700($a0)
    # Line 1096
    sw	$t2,20($sp)
    # Line 1098
    b	.L0d955184
    # Line 1095
    sw	$t1,16($sp)
.L0d955490:
    # Line 1116
    sw	$ra,3704($s0)
    # Line 1115
    lw	$t9,16($sp)
    # Line 1116
    b	.L0d955204
    # Line 1115
    sw	$t9,3700($s0)
.L0d9554a0:
    # Line 1391
    b	.L0d95533c
    sw	$s3,32352($s0)
.L0d9554a8:
    # Line 1151
    lw	$a5,4($v0)
    lbu	$at,4($a5)
    beqz	$at,.L0d9552a4
    nop
    lw	$v0,40($a5)
    li	$v1,16
    beq	$v0,$v1,.L0d9554d4
    # Line 1357
    li	$v0,5122
    # Line 1151
    lw	$a7,44($a5)
    bnez	$a7,.L0d9552a4
    # Line 1357
    li	$v0,5122
.L0d9554d4:
    beq	$v0,$s2,.L0d9557e0
    # Line 1359
    li	$a2,6409
    sd	$zero,544($sp)
.L0d9554e0:
    # Line 1376
    move	$s3,$zero
    b	.L0d9552f0
    li	$v0,6401
.L0d9554ec:
    # Line 1155
    beq	$s1,$t0,.L0d95564c
    li	$t1,6407
    beq	$s1,$t1,.L0d9556c8
    li	$t2,6409
    beq	$s1,$t2,.L0d95572c
    li	$v0,6401
    beq	$v0,$s1,.L0d955760
    move	$s3,$zero
    la	$a5,crmReadPixelsXfer
.L0d955510:
    # Line 1198
    li	$t3,6408
    beq	$s1,$t3,.L0d955668
    li	$t8,0x8000
    bne	$s1,$t8,.L0d955568
    nop
    # Line 1222
    lw	$t9,32232($s0)
    beqz	$t9,.L0d95553c
    or	$at,$a0,$a1
    lw	$ra,32228($s0)
    beqz	$ra,.L0d955978
    or	$at,$a0,$a1
.L0d95553c:
    andi	$at,$at,0x3
    beqz	$at,.L0d9558e0
    # Line 1228
    li	$a3,-241
    b	.L0d9552f0
    # Line 1240
    sd	$zero,544($sp)
.L0d955550:
    # Line 1198
    beq	$s1,$v0,.L0d955694
    li	$v1,0x8000
    beq	$s1,$v1,.L0d9556f8
    move	$s3,$zero
    la	$a5,crmReadPixelsXfer
    li	$v0,6401
.L0d955568:
    beq	$a6,$s1,.L0d955638
    nop
    b	.L0d9552f0
    sd	$zero,544($sp)
.L0d955578:
    # Line 1259
    li	$a5,6400
    beq	$s1,$a5,.L0d9556e4
    move	$s3,$zero
.L0d955584:
    # Line 1273
    sd	$zero,544($sp)
    b	.L0d9552f0
    li	$v0,6401
.L0d955590:
    # Line 1392
    lw	$a0,4($v0)
    lbu	$a6,4($a0)
    beqz	$a6,.L0d955338
    nop
    lw	$a7,40($a0)
    li	$t0,16
    beq	$a7,$t0,.L0d95533c
    nop
    lw	$t1,44($a0)
    bnez	$t1,.L0d955338
    nop
    b	.L0d955340
    # Line 1397
    la	$s3,viceReadPixels
.L0d9555c4:
    # Line 1276
    li	$t2,6402
    beq	$s1,$t2,.L0d955740
    li	$v0,6401
    beq	$v0,$s1,.L0d9557a4
    move	$s3,$zero
.L0d9555d8:
    # Line 1316
    b	.L0d9552f0
    sd	$zero,544($sp)
.L0d9555e0:
    # Line 1318
    beq	$s1,$t3,.L0d955778
    nop
    sd	$zero,544($sp)
    move	$s3,$zero
.L0d9555f0:
    # Line 1339
    b	.L0d9552f0
    li	$v0,6401
.L0d9555f8:
    # Line 1413
    move	$a1,$s8
    move	$a2,$s7
    # lw $t9, -27780($gp) # &__glSlowPickReadPixels
    move	$a3,$s5
    move	$a4,$s6
    move	$a5,$s1
    move	$a6,$s2
    jal	__glSlowPickReadPixels
    move	$a7,$s4
    b	.L0d955428
    # Line 1416
    lbu	$a5,32210($s0)
.L0d955624:
    # Line 1341
    beq	$s1,$t8,.L0d9557cc
    move	$s3,$zero
.L0d95562c:
    # Line 1353
    sd	$zero,544($sp)
    b	.L0d9552f0
    li	$v0,6401
.L0d955638:
    # Line 1244
    lw	$t9,32232($s0)
    beqz	$t9,.L0d9557f0
    nop
.L0d955644:
    # Line 1252
    b	.L0d9552f0
    sd	$zero,544($sp)
.L0d95564c:
    # Line 1157
    lbu	$ra,30525($s0)
    beqz	$ra,.L0d955884
    # Line 1159
    la	$a5,crmReadPixelsXfer
    # Line 1161
    move	$s3,$zero
    la	$a5,crmReadPixelsXfer
.L0d955660:
    b	.L0d955510
    li	$v0,6401
.L0d955668:
    # Line 1200
    lw	$at,32232($s0)
    beqz	$at,.L0d955680
    or	$a3,$a0,$a1
    lw	$v1,32228($s0)
    beqz	$v1,.L0d9558a8
    or	$a3,$a0,$a1
.L0d955680:
    andi	$a3,$a3,0x3
    beqz	$a3,.L0d955844
    # Line 1206
    li	$a3,-241
    b	.L0d9552f0
    # Line 1218
    sd	$zero,544($sp)
.L0d955694:
    # Line 1200
    lw	$a5,32232($s0)
    beqz	$a5,.L0d9556b0
    or	$a7,$a0,$a1
    lw	$a6,32228($s0)
    beqz	$a6,.L0d95596c
    # Line 1218
    move	$s3,$zero
    # Line 1200
    or	$a7,$a0,$a1
.L0d9556b0:
    andi	$a7,$a7,0x3
    beqz	$a7,.L0d9558b0
    # Line 1218
    move	$s3,$zero
    sd	$zero,544($sp)
    b	.L0d9552f0
    li	$v0,6401
.L0d9556c8:
    # Line 1165
    lw	$t0,32232($s0)
    beqz	$t0,.L0d955920
    # Line 1168
    li	$a5,-241
    # Line 1170
    move	$s3,$zero
    la	$a5,crmReadPixelsXfer
.L0d9556dc:
    # Line 1172
    b	.L0d955510
    li	$v0,6401
.L0d9556e4:
    # Line 1261
    lbu	$t1,30525($s0)
    beqz	$t1,.L0d95595c
    nop
    # Line 1267
    b	.L0d955584
    move	$s3,$zero
.L0d9556f8:
    # Line 1222
    lw	$t2,32232($s0)
    beqz	$t2,.L0d955714
    or	$t8,$a0,$a1
    lw	$t3,32228($s0)
    beqz	$t3,.L0d9559e8
    # Line 1240
    move	$s3,$zero
    # Line 1222
    or	$t8,$a0,$a1
.L0d955714:
    andi	$t8,$t8,0x3
    beqz	$t8,.L0d955980
    # Line 1240
    move	$s3,$zero
    sd	$zero,544($sp)
    b	.L0d9552f0
    li	$v0,6401
.L0d95572c:
    # Line 1174
    lw	$t9,32232($s0)
    beqz	$t9,.L0d9559a0
    # Line 1179
    move	$s3,$zero
    b	.L0d955510
    la	$a5,crmReadPixelsXfer
.L0d955740:
    # Line 1278
    lbu	$ra,32008($s0)
    beqz	$ra,.L0d9559e0
    nop
    beqz	$a3,.L0d955a48
    or	$t0,$a0,$a1
    # Line 1292
    move	$s3,$zero
.L0d955758:
    b	.L0d9555d8
    # Line 1298
    li	$v0,6401
.L0d955760:
    # Line 1184
    lbu	$at,30527($s0)
    beqz	$at,.L0d9559f4
    # Line 1188
    li	$a7,-241
    # Line 1191
    move	$s3,$zero
    b	.L0d955510
    la	$a5,crmReadPixelsXfer
.L0d955778:
    # Line 1320
    lw	$v0,32232($s0)
    beqz	$v0,.L0d955790
    nop
    lw	$v1,32228($s0)
    beqz	$v1,.L0d955a74
    nop
.L0d955790:
    beqz	$a3,.L0d955a5c
    or	$t1,$a0,$a1
    # Line 1333
    sd	$zero,544($sp)
    b	.L0d9555f0
    move	$s3,$zero
.L0d9557a4:
    # Line 1302
    lbu	$a5,32009($s0)
    beqz	$a5,.L0d955a40
    nop
    lbu	$a6,32200($s0)
    beqz	$a6,.L0d955a80
    nop
    beqz	$a3,.L0d955aac
    or	$t3,$a0,$a1
    # Line 1310
    b	.L0d9555d8
    move	$s3,$zero
.L0d9557cc:
    # Line 1343
    lw	$a7,32232($s0)
    beqz	$a7,.L0d955a88
    # Line 1345
    li	$t2,-241
    b	.L0d95562c
    # Line 1347
    move	$s3,$zero
.L0d9557e0:
    # Line 1359
    beq	$a2,$s1,.L0d955ac0
    nop
    b	.L0d9554e0
    sd	$zero,544($sp)
.L0d9557f0:
    # Line 1244
    bnez	$a3,.L0d955644
    or	$t0,$a0,$a1
    andi	$t0,$t0,0x3
    bnez	$t0,.L0d955644
    # Line 1248
    li	$t1,-241
    and	$t1,$a2,$t1
    # Line 1249
    li	$t2,-13
    # Line 1248
    ori	$t1,$t1,0x20
    # Line 1250
    move	$s3,$a5
    # Line 1247
    la	$t3,sub_0d960000
    # Line 1249
    and	$t1,$t1,$t2
    # Line 1250
    li	$t2,-769
    # Line 1249
    ori	$t1,$t1,0x8
    # Line 1247
    addiu	$t3,$t3,-21440
    sw	$t3,32344($s0)
    # Line 1250
    and	$t1,$t1,$t2
    ori	$t1,$t1,0x200
    b	.L0d955644
    sw	$t1,32292($s0)
.L0d95583c:
    # Line 1203
    li	$v0,6401
    # Line 1206
    li	$a3,-241
.L0d955844:
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x20
    sw	$a2,32292($s0)
.L0d955850:
    # Line 1208
    li	$a3,-13
    # Line 1210
    lw	$a6,3428($s0)
    # Line 1208
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x8
    # Line 1209
    li	$a3,-769
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x200
    # Line 1210
    beqz	$a6,.L0d955aec
    # Line 1209
    sw	$a2,32292($s0)
.L0d955874:
    # Line 1218
    lw	$a6,32228($s0)
    move	$s3,$a5
    b	.L0d9552f0
    sd	$a6,544($sp)
.L0d955884:
    # Line 1160
    li	$a7,-13
    # Line 1159
    li	$t0,-241
    # Line 1161
    move	$s3,$a5
    # Line 1159
    and	$a2,$a2,$t0
    # Line 1160
    and	$a2,$a2,$a7
    # Line 1161
    li	$a7,-769
    and	$a2,$a2,$a7
    b	.L0d955660
    sw	$a2,32292($s0)
.L0d9558a8:
    # Line 1218
    b	.L0d9552f0
    sd	$zero,544($sp)
.L0d9558b0:
    # Line 1203
    beqz	$a3,.L0d95583c
    la	$a5,crmReadPixelsXfer
    # Line 1204
    li	$a3,-241
    la	$a5,crmReadPixelsXfer
    li	$v0,6401
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x30
    b	.L0d955850
    sw	$a2,32292($s0)
.L0d9558d4:
    # Line 1225
    la	$a5,crmReadPixelsXfer
    li	$v0,6401
    # Line 1228
    li	$a3,-241
.L0d9558e0:
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x30
    sw	$a2,32292($s0)
.L0d9558ec:
    # Line 1230
    li	$a3,-13
    # Line 1232
    lw	$a6,3428($s0)
    # Line 1230
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x8
    # Line 1231
    li	$a3,-769
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x200
    # Line 1232
    beqz	$a6,.L0d955b18
    # Line 1231
    sw	$a2,32292($s0)
.L0d955910:
    # Line 1240
    lw	$a6,32228($s0)
    move	$s3,$a5
    b	.L0d9552f0
    sd	$a6,544($sp)
.L0d955920:
    # Line 1168
    and	$a2,$a2,$a5
    # Line 1167
    la	$a7,sub_0d960000
    # Line 1169
    li	$a5,-13
    # Line 1168
    ori	$a2,$a2,0x20
    # Line 1170
    li	$t0,-769
    # Line 1169
    and	$a2,$a2,$a5
    # Line 1167
    la	$a5,crmReadPixelsXfer
    addiu	$a7,$a7,-22672
    # Line 1169
    ori	$a2,$a2,0x8
    # Line 1167
    sw	$a7,32344($s0)
    # Line 1170
    move	$s3,$a5
    and	$a2,$a2,$t0
    ori	$a2,$a2,0x200
    b	.L0d9556dc
    sw	$a2,32292($s0)
.L0d95595c:
    # Line 1261
    beqz	$a3,.L0d955b48
    or	$t1,$a0,$a1
    # Line 1267
    b	.L0d955584
    move	$s3,$zero
.L0d95596c:
    # Line 1218
    sd	$zero,544($sp)
    b	.L0d9552f0
    li	$v0,6401
.L0d955978:
    # Line 1240
    b	.L0d9552f0
    sd	$zero,544($sp)
.L0d955980:
    # Line 1225
    beqz	$a3,.L0d9558d4
    # Line 1226
    li	$a3,-241
    la	$a5,crmReadPixelsXfer
    li	$v0,6401
    and	$a2,$a2,$a3
    ori	$a2,$a2,0x20
    b	.L0d9558ec
    sw	$a2,32292($s0)
.L0d9559a0:
    # Line 1177
    li	$a5,-241
    and	$a2,$a2,$a5
    # Line 1176
    la	$a7,sub_0d960000
    # Line 1178
    li	$a5,-13
    # Line 1177
    ori	$a2,$a2,0x20
    # Line 1179
    li	$t0,-769
    # Line 1178
    and	$a2,$a2,$a5
    # Line 1176
    la	$a5,crmReadPixelsXfer
    addiu	$a7,$a7,-22048
    # Line 1178
    ori	$a2,$a2,0x8
    # Line 1176
    sw	$a7,32344($s0)
    # Line 1179
    move	$s3,$a5
    and	$a2,$a2,$t0
    ori	$a2,$a2,0x200
    b	.L0d955510
    sw	$a2,32292($s0)
.L0d9559e0:
    # Line 1292
    b	.L0d955758
    move	$s3,$zero
.L0d9559e8:
    # Line 1240
    sd	$zero,544($sp)
    b	.L0d9552f0
    li	$v0,6401
.L0d9559f4:
    # Line 1188
    and	$a2,$a2,$a7
    # Line 1186
    li	$a7,1
    sb	$a7,32206($s0)
    # Line 1187
    la	$a7,sub_0d960000
    # Line 1191
    addiu	$a5,$s0,31108
    sw	$a5,32296($s0)
    # Line 1189
    li	$a5,-13
    # Line 1188
    ori	$a2,$a2,0x20
    # Line 1190
    li	$t0,-769
    # Line 1189
    and	$a2,$a2,$a5
    # Line 1186
    la	$a5,crmReadPixelsXfer
    # Line 1187
    addiu	$a7,$a7,-19248
    # Line 1189
    ori	$a2,$a2,0x8
    # Line 1187
    sw	$a7,32344($s0)
    # Line 1191
    move	$s3,$a5
    # Line 1190
    and	$a2,$a2,$t0
    ori	$a2,$a2,0x200
    # Line 1191
    b	.L0d955510
    # Line 1190
    sw	$a2,32292($s0)
.L0d955a40:
    # Line 1310
    b	.L0d9555d8
    move	$s3,$zero
.L0d955a48:
    # Line 1278
    andi	$t0,$t0,0x3
    beqz	$t0,.L0d955b5c
    nop
    b	.L0d955758
    # Line 1292
    move	$s3,$zero
.L0d955a5c:
    # Line 1320
    andi	$t1,$t1,0x1
    beqz	$t1,.L0d955bf8
    nop
    # Line 1333
    sd	$zero,544($sp)
    b	.L0d9555f0
    move	$s3,$zero
.L0d955a74:
    sd	$zero,544($sp)
    b	.L0d9555f0
    move	$s3,$zero
.L0d955a80:
    # Line 1310
    b	.L0d9555d8
    move	$s3,$zero
.L0d955a88:
    # Line 1345
    and	$t2,$a2,$t2
    ori	$t2,$t2,0x10
    # Line 1346
    li	$t3,-13
    # Line 1347
    la	$s3,crmReadPixelsXfer
    # Line 1346
    and	$t2,$t2,$t3
    # Line 1347
    li	$t3,-769
    and	$t2,$t2,$t3
    b	.L0d95562c
    sw	$t2,32292($s0)
.L0d955aac:
    # Line 1302
    andi	$t3,$t3,0x3
    beqz	$t3,.L0d955c54
    # Line 1306
    li	$a1,-241
    b	.L0d9555d8
    # Line 1310
    move	$s3,$zero
.L0d955ac0:
    # Line 1361
    lw	$t8,32232($s0)
    beqz	$t8,.L0d955ad8
    or	$ra,$a0,$a1
    lw	$t9,32228($s0)
    beqz	$t9,.L0d955c90
    or	$ra,$a0,$a1
.L0d955ad8:
    andi	$ra,$ra,0x3
    beqz	$ra,.L0d955c98
    # Line 1366
    li	$a5,2
    b	.L0d9554e0
    sd	$zero,544($sp)
.L0d955aec:
    # Line 1210
    lw	$at,3416($s0)
    li	$v1,5
    bne	$at,$v1,.L0d955874
    srl	$a0,$a2,0x4
    andi	$a0,$a0,0xf
    li	$a1,3
    beq	$a0,$a1,.L0d955cf0
    # Line 1215
    la	$a1,sub_0d960000
    addiu	$a1,$a1,-24720
    b	.L0d955874
    sw	$a1,32344($s0)
.L0d955b18:
    # Line 1232
    lw	$a3,3416($s0)
    li	$a6,5
    bne	$a3,$a6,.L0d955910
    srl	$a7,$a2,0x4
    andi	$a7,$a7,0xf
    li	$t0,2
    beq	$a7,$t0,.L0d955d00
    # Line 1235
    la	$t3,sub_0d960000
    # Line 1237
    la	$t0,sub_0d960000
    addiu	$t0,$t0,-23872
    b	.L0d955910
    sw	$t0,32344($s0)
.L0d955b48:
    # Line 1261
    andi	$t1,$t1,0x1
    beqz	$t1,.L0d955cb0
    nop
    # Line 1267
    b	.L0d955584
    move	$s3,$zero
.L0d955b5c:
    # Line 1278
    lbu	$t2,30526($s0)
    beqz	$t2,.L0d955cd4
    # Line 1282
    la	$t0,sub_0d960000
    # Line 1284
    lwc1	$f0,656($s0)
    ldc1	$f1,_lit8_3f70000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f1
    bc1f	.L0d955c4c
    # Line 1292
    move	$s3,$zero
    # Line 1284
    lwc1	$f1,676($s0)
    dmtc1	$zero,$f2
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f2
    bc1f .L0d955c4c
    # Line 1292
    move	$s3,$zero
    # Line 1284
    li	$t3,0x80a0
    addu	$t3,$t3,$s0
    lw	$t3,0($t3)
    li	$v0,1
    beq	$t3,$v0,.L0d955bc0
    # Line 1294
    li	$t9,-241
    # Line 1289
    la	$t8,sub_0d960000
    addiu	$t8,$t8,-20368
    sw	$t8,32344($s0)
.L0d955bbc:
    # Line 1294
    li	$t9,-241
.L0d955bc0:
    and	$t9,$a2,$t9
    ori	$t9,$t9,0x20
    # Line 1295
    li	$at,-13
    # Line 1298
    la	$s3,crmReadPixelsXfer
    addiu	$ra,$s0,31228
    # Line 1295
    and	$t9,$t9,$at
    # Line 1298
    sw	$ra,32296($s0)
    # Line 1295
    ori	$t9,$t9,0x8
    # Line 1296
    li	$ra,-769
    # Line 1297
    sb	$v0,32206($s0)
    # Line 1296
    and	$t9,$t9,$ra
    ori	$t9,$t9,0x200
    # Line 1298
    b	.L0d955758
    # Line 1296
    sw	$t9,32292($s0)
.L0d955bf8:
    # Line 1320
    lbu	$ra,32208($s0)
    beqz	$ra,.L0d955ce4
    # Line 1324
    la	$t1,sub_0d960000
.L0d955c04:
    lw	$v1,3428($s0)
    li	$v0,-241
    blez	$v1,.L0d955cc8
    and	$v0,$a2,$v0
    # Line 1327
    ori	$a2,$v0,0x20
    sw	$a2,32292($s0)
.L0d955c1c:
    # Line 1331
    li	$a0,-13
    # Line 1333
    la	$s3,crmReadPixelsXfer
    # Line 1331
    and	$a0,$a2,$a0
    # Line 1333
    lw	$a3,32228($s0)
    # Line 1332
    li	$a1,-769
    # Line 1331
    ori	$a0,$a0,0x4
    # Line 1333
    sd	$a3,544($sp)
    # Line 1332
    and	$a0,$a0,$a1
    ori	$a0,$a0,0x100
    # Line 1333
    b	.L0d9555f0
    # Line 1332
    sw	$a0,32292($s0)
    # Line 1292
    move	$s3,$zero
.L0d955c4c:
    b	.L0d9555d8
    li	$v0,6401
.L0d955c54:
    # Line 1306
    and	$a1,$a2,$a1
    ori	$a1,$a1,0x20
    # Line 1307
    li	$a5,-13
    # Line 1310
    la	$s3,crmReadPixelsXfer
    addiu	$a3,$s0,31108
    # Line 1307
    and	$a1,$a1,$a5
    # Line 1310
    sw	$a3,32296($s0)
    # Line 1307
    ori	$a1,$a1,0x8
    # Line 1308
    li	$a3,-769
    # Line 1309
    li	$a5,1
    sb	$a5,32206($s0)
    # Line 1308
    and	$a1,$a1,$a3
    ori	$a1,$a1,0x200
    # Line 1310
    b	.L0d9555d8
    # Line 1308
    sw	$a1,32292($s0)
.L0d955c90:
    # Line 1366
    b	.L0d9554e0
    sd	$zero,544($sp)
.L0d955c98:
    sw	$a5,60($sp)
    # Line 1365
    sw	$a2,24($sp)
    # Line 1366
    li	$a3,1
    sd	$a3,544($sp)
    b	.L0d9554e0
    # Line 1364
    sw	$v0,28($sp)
.L0d955cb0:
    # Line 1261
    lw	$a6,3412($s0)
    li	$a7,12
    beq	$a6,$a7,.L0d955d0c
    # Line 1265
    li	$t8,-241
    b	.L0d955584
    # Line 1267
    move	$s3,$zero
.L0d955cc8:
    # Line 1329
    ori	$a2,$v0,0x10
    b	.L0d955c1c
    sw	$a2,32292($s0)
.L0d955cd4:
    # Line 1282
    li	$v0,1
    addiu	$t0,$t0,-20736
    b	.L0d955bbc
    sw	$t0,32344($s0)
.L0d955ce4:
    # Line 1324
    addiu	$t1,$t1,-17104
    b	.L0d955c04
    sw	$t1,32344($s0)
.L0d955cf0:
    # Line 1213
    la	$t2,sub_0d960000
    addiu	$t2,$t2,-23872
    b	.L0d955874
    sw	$t2,32344($s0)
.L0d955d00:
    # Line 1235
    addiu	$t3,$t3,-24720
    b	.L0d955910
    sw	$t3,32344($s0)
.L0d955d0c:
    # Line 1265
    and	$t8,$a2,$t8
    # Line 1266
    li	$t9,-13
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x4
    # Line 1267
    li	$t9,-769
    la	$s3,crmReadPixelsXfer
    and	$t8,$t8,$t9
    ori	$t8,$t8,0x100
    b	.L0d955584
    sw	$t8,32292($s0)
.end __glCrmPickReadPixels

# Function: __glCrmPickCopyPixels
# Declared: Line 1429 (Source lines: 1431-1713)
# Address: 0x0d955d40 - 0x0d956904 (Size: 3012 bytes, Frame: 224)
.globl __glCrmPickCopyPixels
.ent __glCrmPickCopyPixels
__glCrmPickCopyPixels:
    # Line 1431
    addiu	$sp,$sp,-608
    sd	$s4,544($sp)
    sd	$s5,552($sp)
    sd	$s3,536($sp)
    sd	$s1,560($sp)
    move	$s1,$a5
    move	$s3,$a4
    sd	$s2,568($sp)
    move	$s2,$a3
    move	$s5,$a2
    lbu	$at,3536($a0)
    move	$s4,$a1
    sd	$s0,576($sp)
    lui	$v0,0x10
    move	$s0,$a0
    sd	$ra,600($sp)
    addiu	$v0,$v0,-20404
    sd	$gp,584($sp)
    beqz	$at,.L0d956268
    addu	$gp,$t9,$v0
.L0d955d90:
    # Line 1447
    move	$a0,$s0
    move	$a6,$s1
    # lw $t9, -27768($gp) # &__glInitCopyPixelsInfo
    move	$a5,$s3
    move	$a4,$s2
    move	$a3,$s5
    move	$a2,$s4
    jal	__glInitCopyPixelsInfo
    addiu	$a1,$sp,8
    # Line 1452
    lbu	$v1,30652($s0)
    beqz	$v1,.L0d955f78
.L0d955dbc:
    # Line 1458
    la	$a5,crmCopyPixelsXferRW
.L0d955dc0:
    # Line 1471
    sb	$zero,32212($s0)
    # Line 1470
    sw	$zero,32344($s0)
    # Line 1469
    sw	$zero,32220($s0)
    # Line 1468
    sw	$zero,32224($s0)
    # Line 1467
    sb	$zero,32206($s0)
    # Line 1466
    sw	$zero,32216($s0)
    # Line 1472
    lw	$a1,11764($s0)
    # Line 1473
    lw	$a0,11760($s0)
    sw	$a0,32300($s0)
    # Line 1464
    lw	$a4,32292($s0)
    # Line 1472
    sw	$a1,32296($s0)
    # Line 1464
    li	$a6,-3
    # Line 1465
    li	$a3,-2
    # Line 1477
    lw	$a2,32060($s0)
    # Line 1464
    and	$a4,$a4,$a6
    # Line 1465
    and	$a3,$a3,$a4
    sw	$a3,32292($s0)
    # Line 1477
    lw	$a1,0($a2)
    li	$a0,4
    beq	$a1,$a0,.L0d956000
    # Line 1475
    lw	$a3,32228($s0)
.L0d955e14:
    # Line 1477
    lw	$a4,32056($s0)
    lw	$a7,0($a4)
    beq	$a7,$a0,.L0d956234
    move	$v0,$a7
    # Line 1479
    li	$t0,6408
.L0d955e28:
    beq	$s1,$t0,.L0d95603c
    li	$t1,6400
    beq	$s1,$t1,.L0d95628c
    li	$t2,6402
    beq	$s1,$t2,.L0d9562c8
    li	$t3,6401
    beq	$s1,$t3,.L0d9563bc
    nop
.L0d955e48:
    # Line 1584
    beq	$v0,$a0,.L0d956338
    # Line 1591
    lw	$t8,-21584($gp)
.L0d955e50:
    beqz	$t8,.L0d955e64
    # Line 1593
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7824
.L0d955e64:
    lbu	$a1,32210($s0)
    beqz	$a1,.L0d9562a8
    # Line 1595
    lw	$a3,180($sp)
    addu	$a3,$a3,$a3
    sw	$a3,180($sp)
    lbu	$a2,32209($s0)
    beqz	$a2,.L0d956454
.L0d955e80:
    # Line 1603
    nop	# was lw $t9, -27772($gp) # &__glClipCopyPixels
.L0d955e84:
    move	$a0,$s0
    jal	__glClipCopyPixels
    addiu	$a1,$sp,8
    lbu	$a4,3536($s0)
    beqz	$a4,.L0d956444
    # Line 1606
    lw	$t1,4($sp)
.L0d955e9c:
    beqz	$v0,.L0d955f28
    nop
    lbu	$a5,32210($s0)
    beqz	$a5,.L0d955eec
    # Line 1611
    lw	$t1,180($sp)
    addiu	$t1,$t1,1
    srl	$t0,$t1,0x1f
    addu	$t0,$t0,$t1
    sra	$t0,$t0,0x1
    sw	$t0,180($sp)
    # Line 1612
    lw	$a6,4852($s0)
    # Line 1613
    addu	$a7,$a6,$a6
    sw	$a7,4852($s0)
    # Line 1614
    lwc1	$f0,172($sp)
    ldc1	$f1,_lit8_4000000000000000
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    # Line 1612
    sw	$a6,512($sp)
    # Line 1614
    cvt.s.d	$f0,$f0
    swc1	$f0,172($sp)
.L0d955eec:
    lbu	$t2,32209($s0)
    beqz	$t2,.L0d955f08
    # Line 1617
    lw	$t8,228($sp)
    li	$t3,-2
    addiu	$t8,$t8,1
    and	$t3,$t3,$t8
    sw	$t3,228($sp)
.L0d955f08:
    # Line 1619
    # lw $t9, -27740($gp) # &__glGenericPickCopyPixels
    move	$a0,$s0
    jal	__glGenericPickCopyPixels
    addiu	$a1,$sp,8
    lbu	$t9,32210($s0)
    beqz	$t9,.L0d955f28
    # Line 1621
    lw	$ra,512($sp)
    sw	$ra,4852($s0)
.L0d955f28:
    # Line 1710
    lw	$at,32316($s0)
.L0d955f2c:
    beqz	$at,.L0d955f54
    ld	$s3,536($sp)
    lw	$v0,32304($s0)
    beqz	$v0,.L0d955f54
    ld	$s3,536($sp)
    # Line 1711
    lw	$t9,32324($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$zero
.L0d955f50:
    ld	$s3,536($sp)
.L0d955f54:
    ld	$s4,544($sp)
    ld	$s5,552($sp)
    ld	$s1,560($sp)
    ld	$ra,600($sp)
    ld	$s2,568($sp)
    ld	$s0,576($sp)
    # Line 1713
    ld	$gp,584($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d955f78:
    # Line 1452
    lbu	$v1,32209($s0)
    bnez	$v1,.L0d955dc0
    # Line 1458
    la	$a5,crmCopyPixelsXferRW
    # Line 1452
    lbu	$a0,32210($s0)
    bnez	$a0,.L0d955dc0
    # Line 1458
    la	$a5,crmCopyPixelsXferRW
    # Line 1452
    lbu	$a1,32205($s0)
    beqz	$a1,.L0d955ff8
    mtc1	$s2,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f2,32240($s0)
    lwc1	$f4,3680($s0)
    madd.s	$f2,$f4,$f3,$f2
    lwc1	$f1,32248($s0)
    mul.s	$f1,$f1,$f3
    trunc.w.s	$f2,$f2
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f2
    mfc1	$a3,$f1
    bne	$a2,$a3,.L0d955dbc
    mtc1	$s3,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f6,32244($s0)
    madd.s	$f6,$f4,$f7,$f6
    lwc1	$f5,32252($s0)
    mul.s	$f5,$f5,$f7
    trunc.w.s	$f6,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a4,$f6
    mfc1	$a5,$f5
    bne	$a4,$a5,.L0d955dc0
    # Line 1458
    la	$a5,crmCopyPixelsXferRW
.L0d955ff8:
    b	.L0d955dc0
    # Line 1460
    la	$a5,crmCopyPixelsXfer
.L0d956000:
    # Line 1477
    lw	$v0,4($a2)
    lbu	$a6,4($v0)
    beqz	$a6,.L0d955e14
    nop
    lw	$a7,40($v0)
    li	$t1,16
    beq	$a7,$t1,.L0d95602c
    nop
    lw	$t0,44($v0)
    bnez	$t0,.L0d955e14
    nop
.L0d95602c:
    # Line 1524
    beq	$a1,$a0,.L0d9565b0
    # Line 1578
    move	$v0,$zero
    b	.L0d956070
    nop
.L0d95603c:
    # Line 1481
    lbu	$t1,32196($s0)
    beqz	$t1,.L0d956580
    nop
    lw	$t2,32232($s0)
    beqz	$t2,.L0d95605c
    # Line 1482
    move	$v0,$a5
    # Line 1481
    beqz	$a3,.L0d956598
    # Line 1482
    move	$v0,$a5
.L0d95605c:
    # Line 1485
    li	$t3,1
    sw	$t3,44($sp)
    sw	$t3,124($sp)
    # Line 1484
    sw	$a0,36($sp)
    sw	$a0,116($sp)
.L0d956070:
    # Line 1524
    beqz	$v0,.L0d95632c
    nop
    # Line 1626
    sw	$zero,140($sp)
    # Line 1627
    sw	$zero,136($sp)
    lbu	$t8,32210($s0)
    beqz	$t8,.L0d9560a4
    # Line 1631
    nop	# was lw $t9, -27808($gp) # &__glClipReadPixels
    sd	$a3,528($sp)
    # Line 1629
    lw	$t9,180($sp)
    sd	$v0,592($sp)
    addu	$t9,$t9,$t9
    sw	$t9,180($sp)
    # Line 1631
    # lw $t9, -27808($gp) # &__glClipReadPixels
.L0d9560a4:
    sd	$a3,528($sp)
    move	$a0,$s0
    sd	$v0,592($sp)
    jal	__glClipReadPixels
    addiu	$a1,$sp,8
    lbu	$ra,32210($s0)
    beqz	$ra,.L0d9560d8
    # Line 1633
    lw	$v1,180($sp)
    addiu	$v1,$v1,1
    srl	$at,$v1,0x1f
    addu	$at,$at,$v1
    sra	$at,$at,0x1
    sw	$at,180($sp)
.L0d9560d8:
    lbu	$a0,3536($s0)
    beqz	$a0,.L0d9564e8
    # Line 1638
    lw	$a7,4($sp)
.L0d9560e4:
    beqz	$v0,.L0d955f50
    # Line 1643
    lw	$a3,136($sp)
    # Line 1644
    lw	$a2,140($sp)
    # Line 1643
    mtc1	$a3,$f11
    # Line 1644
    mtc1	$a2,$f10
    # Line 1643
    cvt.s.w	$f11,$f11
    lwc1	$f12,168($sp)
    # Line 1644
    cvt.s.w	$f10,$f10
    lwc1	$f4,172($sp)
    # Line 1643
    lwc1	$f9,204($sp)
    madd.s	$f9,$f9,$f11,$f12
    # Line 1644
    lwc1	$f8,208($sp)
    madd.s	$f8,$f8,$f10,$f4
    # Line 1643
    swc1	$f9,204($sp)
    # Line 1644
    swc1	$f8,208($sp)
    # Line 1645
    sw	$zero,60($sp)
    # Line 1646
    sw	$zero,56($sp)
    lbu	$a1,32209($s0)
    beqz	$a1,.L0d956144
    # Line 1651
    nop	# was lw $t9, -27856($gp) # &__glClipDrawPixels
    # Line 1649
    lwc1	$f12,_lit_40000000
    mul.s	$f12,$f4,$f12
    swc1	$f12,172($sp)
    # Line 1651
    # lw $t9, -27856($gp) # &__glClipDrawPixels
.L0d956144:
    move	$a0,$s0
    jal	__glClipDrawPixels
    addiu	$a1,$sp,8
    li	$a0,4
    beqz	$v0,.L0d955f50
    ld	$a2,592($sp)
    # Line 1652
    lbu	$a4,32209($s0)
    beqz	$a4,.L0d956180
    # Line 1659
    lw	$t1,60($sp)
    # Line 1655
    lw	$a6,228($sp)
    li	$a5,-2
    addiu	$a6,$a6,1
    and	$a5,$a5,$a6
    sw	$a5,228($sp)
    # Line 1659
    lw	$t1,60($sp)
.L0d956180:
    # Line 1658
    lw	$t0,56($sp)
    # Line 1659
    mtc1	$t1,$f16
    # Line 1658
    mtc1	$t0,$f13
    # Line 1659
    cvt.s.w	$f16,$f16
    lwc1	$f15,200($sp)
    # Line 1658
    cvt.s.w	$f13,$f13
    lwc1	$f14,196($sp)
    # Line 1661
    ld	$a7,528($sp)
    # Line 1659
    sub.s	$f15,$f15,$f16
    # Line 1658
    add.s	$f13,$f13,$f14
    # Line 1659
    swc1	$f15,200($sp)
    # Line 1661
    beqz	$a7,.L0d956214
    # Line 1658
    swc1	$f13,196($sp)
    # Line 1661
    lw	$t2,-21564($gp)
    beqz	$t2,.L0d956218
    # Line 1691
    move	$t9,$a2
    # Line 1663
    lw	$a2,32060($s0)
    lw	$a1,0($a2)
    beq	$a1,$a0,.L0d956410
    # Line 1665
    li	$t3,5
    beq	$a1,$t3,.L0d95643c
    # Line 1670
    la	$a7,crmReadPixelsXfer
    # Line 1672
    la	$t8,crmReadPixelsXfer
    sw	$t8,32352($s0)
.L0d9561e0:
    # Line 1675
    lw	$a4,32056($s0)
    lw	$v0,0($a4)
    beq	$v0,$a0,.L0d9564f8
    nop
.L0d9561f0:
    # Line 1677
    lbu	$t9,32201($s0)
    beqz	$t9,.L0d95652c
    lbu	$a1,32205($s0)
.L0d9561fc:
    # Line 1682
    beqz	$a1,.L0d956568
    # Line 1683
    la	$ra,crmDrawPixelsXfer2
.L0d956204:
    sw	$ra,32348($s0)
.L0d956208:
    # Line 1688
    li	$at,1
    sb	$at,32212($s0)
    la	$a2,viceCopyPixels
.L0d956214:
    # Line 1691
    move	$t9,$a2
.L0d956218:
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,8
    beqz	$v0,.L0d956470
    # Line 1692
    lw	$t2,-21584($gp)
.L0d95622c:
    b	.L0d955f28
    # Line 1707
    sb	$zero,32212($s0)
.L0d956234:
    # Line 1477
    lw	$a6,4($a4)
    lbu	$v1,4($a6)
    beqz	$v1,.L0d955e28
    # Line 1479
    li	$t0,6408
    # Line 1477
    lw	$a7,40($a6)
    li	$t1,16
    beq	$a7,$t1,.L0d95602c
    nop
    lw	$t0,44($a6)
    bnez	$t0,.L0d955e28
    # Line 1479
    li	$t0,6408
    b	.L0d95602c
    nop
.L0d956268:
    # Line 1445
    lw	$t8,32068($a0)
    # Line 1443
    lw	$t2,3704($a0)
    # Line 1445
    sw	$t8,3704($a0)
    # Line 1444
    lw	$t3,32064($a0)
    # Line 1442
    lw	$t1,3700($a0)
    # Line 1444
    sw	$t3,3700($a0)
    # Line 1443
    sw	$t2,4($sp)
    # Line 1445
    b	.L0d955d90
    # Line 1442
    sw	$t1,0($sp)
.L0d95628c:
    # Line 1488
    lbu	$t9,32196($s0)
    beqz	$t9,.L0d956588
    nop
    lbu	$ra,30525($s0)
    # Line 1489
    move	$v0,$zero
    b	.L0d956070
    movz	$v0,$a5,$ra
.L0d9562a8:
    # Line 1597
    lbu	$at,32209($s0)
    beqz	$at,.L0d955e84
    # Line 1603
    nop	# was lw $t9, -27772($gp) # &__glClipCopyPixels
    # Line 1601
    lwc1	$f18,_lit_40000000
    lwc1	$f17,172($sp)
    mul.s	$f17,$f17,$f18
    b	.L0d955e80
    swc1	$f17,172($sp)
.L0d9562c8:
    # Line 1493
    lbu	$a1,32008($s0)
    beqz	$a1,.L0d956590
    nop
    lbu	$v0,32198($s0)
    beqz	$v0,.L0d9565a0
    # Line 1496
    addiu	$a2,$s0,31228
    # Line 1497
    sw	$a2,32300($s0)
    # Line 1496
    sw	$a2,32296($s0)
    # Line 1494
    move	$v0,$a5
    # Line 1495
    li	$v1,1
    sb	$v1,32206($s0)
.L0d9562f4:
    # Line 1499
    beqz	$a1,.L0d956070
    nop
    lbu	$a4,31324($s0)
    bnez	$a4,.L0d956070
    # Line 1501
    nop	# was lw $t9, -31792($gp) # &__glCrmForceNonTagClear
    sd	$a3,528($sp)
    move	$a0,$s0
    sd	$v0,592($sp)
    jal	__glCrmForceNonTagClear
    addiu	$a1,$s0,31228
    ld	$v0,592($sp)
    li	$a0,4
    b	.L0d956070
    ld	$a3,528($sp)
.L0d95632c:
    # Line 1524
    lw	$a4,32056($s0)
    b	.L0d955e48
    lw	$v0,0($a4)
.L0d956338:
    # Line 1584
    lw	$a1,4($a4)
    lbu	$a5,4($a1)
    beqz	$a5,.L0d955e50
    # Line 1591
    lw	$t8,-21584($gp)
    # Line 1584
    lw	$a6,40($a1)
    li	$t1,16
    beq	$a6,$t1,.L0d956364
    nop
    lw	$a7,44($a1)
    bnez	$a7,.L0d955e50
    # Line 1591
    lw	$t8,-21584($gp)
.L0d956364:
    # Line 1584
    lw	$a2,32060($s0)
    lw	$t0,0($a2)
    bne	$t0,$a0,.L0d955e50
    # Line 1591
    lw	$t8,-21584($gp)
    # Line 1584
    lw	$v0,4($a2)
    lbu	$t2,4($v0)
    beqz	$t2,.L0d955e50
    # Line 1591
    lw	$t8,-21584($gp)
    # Line 1584
    lw	$t3,40($v0)
    beq	$t3,$t1,.L0d95639c
    nop
    lw	$t8,44($v0)
    bnez	$t8,.L0d955e50
    # Line 1591
    lw	$t8,-21584($gp)
.L0d95639c:
    # Line 1584
    lbu	$t9,3536($s0)
    beqz	$t9,.L0d956798
.L0d9563a4:
    # Line 1591
    nop	# was lw $t9, -23232($gp) # &viceCopySPBuffer
    move	$a0,$s0
    jal	viceCopySPBuffer
    addiu	$a1,$sp,8
    b	.L0d955f2c
    # Line 1710
    lw	$at,32316($s0)
.L0d9563bc:
    # Line 1505
    lbu	$ra,32009($s0)
    beqz	$ra,.L0d9565a8
    nop
    lbu	$at,30527($s0)
    beqz	$at,.L0d956614
    # Line 1509
    move	$v0,$zero
.L0d9563d4:
    # Line 1511
    lbu	$v1,32008($s0)
    beqz	$v1,.L0d956070
    nop
    lbu	$a1,31324($s0)
    bnez	$a1,.L0d956070
    # Line 1513
    nop	# was lw $t9, -31792($gp) # &__glCrmForceNonTagClear
    sd	$a3,528($sp)
    move	$a0,$s0
    sd	$v0,592($sp)
    jal	__glCrmForceNonTagClear
    addiu	$a1,$s0,31228
    ld	$v0,592($sp)
    li	$a0,4
    b	.L0d956070
    ld	$a3,528($sp)
.L0d956410:
    # Line 1663
    lw	$v0,4($a2)
    lbu	$a3,4($v0)
    beqz	$a3,.L0d95643c
    # Line 1670
    la	$a7,crmReadPixelsXfer
    # Line 1663
    lw	$a4,40($v0)
    li	$a5,16
    beq	$a4,$a5,.L0d95660c
    nop
    lw	$a6,44($v0)
    beqz	$a6,.L0d95660c
    # Line 1670
    la	$a7,crmReadPixelsXfer
.L0d95643c:
    b	.L0d9561e0
    sw	$a7,32352($s0)
.L0d956444:
    # Line 1606
    sw	$t1,3704($s0)
    # Line 1605
    lw	$t0,0($sp)
    # Line 1606
    b	.L0d955e9c
    # Line 1605
    sw	$t0,3700($s0)
.L0d956454:
    # Line 1597
    lwc1	$f19,172($sp)
    ldc1	$f21,_lit8_3fe0000000000000
    cvt.d.s	$f19,$f19
    mul.d	$f19,$f19,$f21
    cvt.s.d	$f19,$f19
    b	.L0d955e80
    swc1	$f19,172($sp)
.L0d956470:
    # Line 1692
    lw	$t3,32228($s0)
    beqz	$t2,.L0d95648c
    sd	$t3,520($sp)
    # Line 1694
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7848
.L0d95648c:
    # Line 1696
    lbu	$a1,32210($s0)
    sb	$zero,32212($s0)
    beqz	$a1,.L0d9564ac
    # Line 1695
    sw	$zero,32228($s0)
    # Line 1698
    lw	$a2,4852($s0)
    sw	$a2,516($sp)
    # Line 1699
    addu	$a2,$a2,$a2
    sw	$a2,4852($s0)
.L0d9564ac:
    # Line 1701
    move	$a0,$s0
    # lw $t9, -27744($gp) # &__glSlowPickCopyPixels
    move	$a1,$s4
    move	$a2,$s5
    move	$a3,$s2
    move	$a4,$s3
    jal	__glSlowPickCopyPixels
    move	$a5,$s1
    # Line 1702
    lbu	$a4,32210($s0)
    ld	$a3,520($sp)
    beqz	$a4,.L0d95622c
    sw	$a3,32228($s0)
    # Line 1704
    lw	$a5,516($sp)
    b	.L0d95622c
    sw	$a5,4852($s0)
.L0d9564e8:
    # Line 1638
    sw	$a7,3704($s0)
    # Line 1637
    lw	$a6,0($sp)
    # Line 1638
    b	.L0d9560e4
    # Line 1637
    sw	$a6,3700($s0)
.L0d9564f8:
    # Line 1675
    lw	$a1,4($a4)
    lbu	$t0,4($a1)
    beqz	$t0,.L0d9561f0
    nop
    lw	$t1,40($a1)
    li	$t2,16
    beq	$t1,$t2,.L0d956524
    nop
    lw	$t3,44($a1)
    bnez	$t3,.L0d9561f0
    nop
.L0d956524:
    # Line 1676
    b	.L0d956208
    sw	$zero,32348($s0)
.L0d95652c:
    # Line 1677
    bnez	$a1,.L0d956204
    # Line 1683
    la	$ra,crmDrawPixelsXfer2
    # Line 1677
    lbu	$t8,32209($s0)
    bnez	$t8,.L0d956204
    # Line 1683
    la	$ra,crmDrawPixelsXfer2
    # Line 1677
    ld	$t9,528($sp)
    andi	$t9,$t9,0x18
    bnez	$t9,.L0d9561fc
    nop
    beq	$v0,$a0,.L0d95655c
    li	$ra,5
    bne	$v0,$ra,.L0d9561fc
.L0d95655c:
    # Line 1681
    la	$at,crmDrawPixelsXfer
    b	.L0d956208
    sw	$at,32348($s0)
.L0d956568:
    # Line 1682
    lbu	$v0,32209($s0)
    bnez	$v0,.L0d956204
    # Line 1683
    la	$ra,crmDrawPixelsXfer2
    # Line 1685
    la	$v1,crmDrawPixelsXfer
    b	.L0d956208
    sw	$v1,32348($s0)
.L0d956580:
    # Line 1482
    b	.L0d95605c
    move	$v0,$zero
.L0d956588:
    # Line 1489
    b	.L0d956070
    move	$v0,$zero
.L0d956590:
    # Line 1497
    b	.L0d9562f4
    move	$v0,$zero
.L0d956598:
    b	.L0d95605c
    # Line 1482
    move	$v0,$zero
.L0d9565a0:
    b	.L0d9562f4
    # Line 1497
    move	$v0,$zero
.L0d9565a8:
    # Line 1509
    b	.L0d9563d4
    move	$v0,$zero
.L0d9565b0:
    # Line 1524
    lw	$v0,4($a2)
    lbu	$a4,4($v0)
    beqz	$a4,.L0d9566b8
    nop
    lw	$a6,40($v0)
    beq	$a6,$t1,.L0d956630
    nop
    lw	$a7,44($v0)
    beqz	$a7,.L0d956630
    nop
.L0d9565d8:
    # Line 1556
    bne	$a1,$a0,.L0d956070
    # Line 1578
    move	$v0,$zero
    # Line 1556
    lw	$v0,4($a2)
    lbu	$a5,4($v0)
    beqz	$a5,.L0d9566b8
    nop
    lw	$a2,40($v0)
    beq	$a2,$t1,.L0d956718
    nop
.L0d9565fc:
    beq	$a1,$a0,.L0d9566c8
    nop
    # Line 1578
    b	.L0d956070
    move	$v0,$zero
.L0d95660c:
    # Line 1664
    b	.L0d9561e0
    sw	$zero,32352($s0)
.L0d956614:
    # Line 1508
    addiu	$t1,$s0,31108
    # Line 1509
    sw	$t1,32300($s0)
    # Line 1506
    move	$v0,$a5
    # Line 1508
    sw	$t1,32296($s0)
    # Line 1507
    li	$t0,1
    # Line 1509
    b	.L0d9563d4
    # Line 1507
    sb	$t0,32206($s0)
.L0d956630:
    # Line 1524
    lw	$a4,32056($s0)
    lw	$t2,0($a4)
    beq	$t2,$a0,.L0d9566e8
    li	$t3,6408
.L0d956640:
    bne	$s1,$t3,.L0d9565d8
    nop
    # Line 1527
    lbu	$t8,32197($s0)
    beqz	$t8,.L0d9567cc
    nop
    lw	$t9,32232($s0)
    beqz	$t9,.L0d956668
    nop
    beqz	$a3,.L0d956828
    nop
.L0d956668:
    # Line 1528
    lw	$ra,4($a4)
    lw	$ra,44($ra)
    move	$v0,$a5
    beq	$ra,$t1,.L0d956820
    li	$a2,1
    # Line 1538
    li	$v1,6409
    sw	$v1,8($sp)
    # Line 1537
    sw	$a2,36($sp)
    # Line 1539
    lui	$at,0x20
    or	$a3,$a3,$at
    sw	$a3,32228($s0)
.L0d956694:
    # Line 1547
    li	$a6,5121
    sw	$a6,92($sp)
    # Line 1546
    sw	$a2,124($sp)
    # Line 1545
    sw	$a0,116($sp)
    # Line 1543
    li	$a5,2
    sw	$a5,44($sp)
    # Line 1542
    li	$a4,5122
    # Line 1547
    b	.L0d956070
    # Line 1542
    sw	$a4,12($sp)
.L0d9566b8:
    # Line 1556
    bne	$a1,$a0,.L0d956070
    # Line 1578
    move	$v0,$zero
    # Line 1556
    lw	$v0,4($a2)
    lbu	$a5,4($v0)
.L0d9566c8:
    beqz	$a5,.L0d9567ac
    nop
    lw	$a2,40($v0)
    beq	$a2,$t1,.L0d9567b8
    nop
    # Line 1563
    lw	$a4,32056($s0)
    b	.L0d955e48
    lw	$v0,0($a4)
.L0d9566e8:
    # Line 1524
    lw	$a6,4($a4)
    lbu	$a7,4($a6)
    beqz	$a7,.L0d956640
    li	$t3,6408
    lw	$t0,40($a6)
    beq	$t0,$t1,.L0d9565d8
    nop
    lw	$t2,44($a6)
    bnez	$t2,.L0d956640
    li	$t3,6408
    b	.L0d9565d8
    nop
.L0d956718:
    # Line 1556
    lw	$t2,44($v0)
    bnez	$t2,.L0d9565fc
    nop
    lw	$a4,32056($s0)
    lw	$t3,0($a4)
    bne	$t3,$a0,.L0d9565fc
    nop
    lw	$a6,4($a4)
    lbu	$t8,4($a6)
    beqz	$t8,.L0d9565fc
    nop
    lw	$t9,40($a6)
    bne	$t9,$t1,.L0d9565fc
    nop
    lw	$ra,44($a6)
    bnez	$ra,.L0d9565fc
    nop
.L0d95675c:
    # Line 1563
    beq	$a1,$a0,.L0d9568c8
.L0d956760:
    # Line 1574
    li	$a1,2
.L0d956764:
    # Line 1578
    sw	$a1,124($sp)
    # Line 1573
    li	$a2,5122
    # Line 1577
    sw	$a2,92($sp)
    # Line 1576
    sw	$a0,116($sp)
    # Line 1574
    sw	$a1,44($sp)
    # Line 1573
    sw	$a2,12($sp)
    # Line 1572
    sw	$a0,36($sp)
.L0d956780:
    # Line 1578
    sw	$a1,124($sp)
    sw	$a1,44($sp)
    sw	$a2,12($sp)
    sw	$a2,92($sp)
    b	.L0d956070
    la	$v0,viceCopyPixels
.L0d956798:
    # Line 1589
    lw	$v0,4($sp)
    sw	$v0,3704($s0)
    # Line 1588
    lw	$at,0($sp)
    # Line 1589
    b	.L0d9563a4
    # Line 1588
    sw	$at,3700($s0)
.L0d9567ac:
    # Line 1563
    lw	$a4,32056($s0)
    b	.L0d955e48
    lw	$v0,0($a4)
.L0d9567b8:
    # Line 1556
    lw	$t2,44($v0)
    beq	$t2,$t1,.L0d95687c
    lw	$a4,32056($s0)
    # Line 1563
    b	.L0d955e48
    lw	$v0,0($a4)
.L0d9567cc:
    # Line 1528
    lw	$v1,4($a4)
    lw	$v1,44($v1)
    beq	$v1,$t1,.L0d9568b8
    li	$a2,1
    # Line 1537
    sw	$a2,36($sp)
    # Line 1539
    lui	$a1,0x20
    # Line 1538
    li	$a4,6409
    sw	$a4,8($sp)
    # Line 1539
    or	$a1,$a3,$a1
    sw	$a1,32228($s0)
.L0d9567f4:
    # Line 1542
    li	$a7,5122
    sw	$a7,12($sp)
    # Line 1543
    li	$a6,2
    sw	$a6,44($sp)
    # Line 1545
    sw	$a0,116($sp)
    # Line 1546
    sw	$a2,124($sp)
    # Line 1547
    li	$a5,5121
    sw	$a5,92($sp)
    # Line 1542
    lw	$a4,32056($s0)
    b	.L0d955e48
    lw	$v0,0($a4)
.L0d956820:
    # Line 1535
    b	.L0d956694
    sw	$a0,36($sp)
.L0d956828:
    # Line 1528
    lw	$t0,4($a4)
    lw	$t0,44($t0)
    beq	$t0,$t1,.L0d9568c0
    li	$a2,1
    # Line 1537
    sw	$a2,36($sp)
    # Line 1539
    lui	$t1,0x20
    # Line 1538
    li	$t2,6409
    sw	$t2,8($sp)
    # Line 1539
    or	$t1,$a3,$t1
    sw	$t1,32228($s0)
.L0d956850:
    # Line 1542
    li	$t9,5122
    sw	$t9,12($sp)
    # Line 1543
    li	$t8,2
    sw	$t8,44($sp)
    # Line 1545
    sw	$a0,116($sp)
    # Line 1546
    sw	$a2,124($sp)
    # Line 1547
    li	$t3,5121
    sw	$t3,92($sp)
    # Line 1542
    lw	$a4,32056($s0)
    b	.L0d955e48
    lw	$v0,0($a4)
.L0d95687c:
    # Line 1556
    lw	$ra,0($a4)
    bne	$ra,$a0,.L0d955e48
    move	$v0,$ra
    lw	$a6,4($a4)
    lbu	$at,4($a6)
    beqz	$at,.L0d955e48
    nop
    lw	$v1,40($a6)
    bne	$v1,$t1,.L0d955e48
    nop
    lw	$a7,44($a6)
    bne	$a7,$t1,.L0d955e48
    nop
    b	.L0d95675c
    nop
.L0d9568b8:
    # Line 1535
    b	.L0d9567f4
    sw	$a0,36($sp)
.L0d9568c0:
    b	.L0d956850
    sw	$a0,36($sp)
.L0d9568c8:
    # Line 1563
    beqz	$a5,.L0d956764
    # Line 1574
    li	$a1,2
    # Line 1563
    bne	$a2,$t1,.L0d956764
    # Line 1574
    li	$a1,2
    # Line 1563
    bnez	$t2,.L0d956760
    # Line 1566
    li	$a1,2
    # Line 1570
    sw	$a1,124($sp)
    # Line 1565
    li	$a2,5122
    # Line 1569
    sw	$a2,92($sp)
    # Line 1564
    li	$t0,1
    # Line 1568
    sw	$t0,116($sp)
    # Line 1566
    sw	$a1,44($sp)
    # Line 1565
    sw	$a2,12($sp)
    # Line 1570
    b	.L0d956780
    # Line 1564
    sw	$t0,36($sp)
.end __glCrmPickCopyPixels

# Function: __glCrmSetupPixelRenderOps
# Declared: Line 1719 (Source lines: 1719-1795)
# Address: 0x0d956910 - 0x0d956cd4 (Size: 964 bytes, Frame: 192)
.globl __glCrmSetupPixelRenderOps
.ent __glCrmSetupPixelRenderOps
__glCrmSetupPixelRenderOps:
    # Line 1719
    addiu	$sp,$sp,-192
    sd	$s1,152($sp)
    # Line 1726
    lw	$v0,30436($a0)
    # Line 1723
    lw	$s1,32188($a0)
    # Line 1719
    sd	$s0,144($sp)
    lui	$at,0x10
    # Line 1726
    andi	$v1,$v0,0x4
    # Line 1723
    lw	$s0,32184($a0)
    # Line 1719
    addiu	$at,$at,-23428
    sd	$gp,160($sp)
    # Line 1726
    beqz	$v1,.L0d956998
    # Line 1719
    addu	$gp,$t9,$at
    # Line 1729
    sd	$zero,0($sp)
    ldc1	$f8,0($sp)
    ldc1	$f7,0($sp)
    sdc1	$f8,8656($s0)
    sdc1	$f7,8656($s1)
    # Line 1730
    sd	$zero,8($sp)
    ldc1	$f6,8($sp)
    ldc1	$f5,8($sp)
    sdc1	$f6,8664($s0)
    sdc1	$f5,8664($s1)
    # Line 1731
    lwc1	$f3,376($a0)
    lwc1	$f4,_lit_42800000
    mul.s	$f3,$f3,$f4
    cvt.d.s	$f3,$f3
    sdc1	$f3,16($sp)
    ldc1	$f2,16($sp)
    trunc.l.d	$f2,$f2
    sdc1	$f2,24($sp)
    ldc1	$f1,24($sp)
    ldc1	$f0,24($sp)
    sdc1	$f1,8648($s0)
    sdc1	$f0,8648($s1)
.L0d956998:
    andi	$v1,$v0,0x2000
    # Line 1749
    lwc1	$f13,_lit_b7000000
    # Line 1746
    mtc1	$zero,$f14
    # Line 1751
    li	$t0,1
    # Line 1756
    li	$t1,1
    # Line 1731
    beqz	$v1,.L0d956a10
    # Line 1746
    lwc1	$f6,_lit_37000000
    # Line 1735
    sw	$zero,32($sp)
    lw	$a6,32($sp)
    sw	$a6,8576($s0)
    lw	$a5,32($sp)
    sw	$a5,8576($s1)
    # Line 1736
    sw	$zero,36($sp)
    lw	$a4,36($sp)
    sw	$a4,8584($s0)
    lw	$a3,36($sp)
    sw	$a3,8584($s1)
    # Line 1737
    lwc1	$f9,416($a0)
    ldc1	$f10,_lit8_406fe00000000000
    cvt.d.s	$f9,$f9
    mul.d	$f9,$f9,$f10
    lwc1	$f10,_lit_45800000
    cvt.s.d	$f9,$f9
    mul.s	$f9,$f9,$f10
    trunc.w.s	$f9,$f9
    swc1	$f9,40($sp)
    lw	$a2,40($sp)
    sw	$a2,8568($s0)
    lw	$a1,40($sp)
    sw	$a1,8568($s1)
.L0d956a10:
    andi	$a7,$v0,0x8
    beqz	$a7,.L0d956c64
    nop
    # Line 1746
    lwc1	$f4,300($a0)
    ldc1	$f11,_lit8_3ff0000000000000
    cvt.d.s	$f10,$f4
    lwc1	$f5,288($a0)
    sd	$s2,184($sp)
    c.eq.d	$f10,$f11
    # Line 1744
    lw	$s2,28208($a0)
    # Line 1758
    lwc1	$f9,292($a0)
    # Line 1746
    bc1t	.L0d956a84
    lw	$v0,232($s2)
    abs.s	$f12,$f4
    c.lt.s $f12,$f6
    bc1f .L0d956a60
    sd	$ra,176($sp)
    c.lt.s $f4,$f14
    movf.s	$f13,$f6,$fcc2
    # Line 1749
    mov.s	$f4,$f13
.L0d956a60:
    # Line 1751
    lwc1	$f6,_lit_3f800000
    div.s	$f6,$f6,$f4
    mul.s	$f15,$f5,$f6
    beq	$v0,$t0,.L0d956a94
    sdc1	$f15,136($sp)
    # Line 1753
    lwc1	$f7,292($a0)
    mul.s	$f7,$f7,$f6
    b	.L0d956a94
    swc1	$f7,44($sp)
.L0d956a84:
    # Line 1756
    sdc1	$f5,136($sp)
    beq	$v0,$t1,.L0d956a94
    sd	$ra,176($sp)
    # Line 1758
    swc1	$f9,44($sp)
.L0d956a94:
    # Line 1762
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    ldc1	$f12,136($sp)
    lw	$t2,4($s2)
    li	$a0,10497
    # Line 1766
    lwc1	$f6,_lit_3f800000
    slti	$t3,$v0,2
    # Line 1762
    beq	$a0,$t2,.L0d956c78
    # Line 1766
    lwc1	$f5,_lit_40e00000
    # Line 1764
    bltz	$v0,.L0d956c98
    nop
    # Line 1766
    beqz	$t3,.L0d956ad0
    nop
    ldc1	$f5,136($sp)
    add.s	$f5,$f5,$f6
.L0d956ad0:
    cvt.d.s	$f4,$f5
.L0d956ad4:
    lw	$t8,232($s2)
    li	$t9,1
    bne	$t8,$t9,.L0d956aec
    ldc1	$f5,_lit8_3ff0000000000000
    b	.L0d956b38
    ld	$s2,184($sp)
.L0d956aec:
    # Line 1774
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f4,168($sp)
    jal	__glFloor
    lwc1	$f12,44($sp)
    lw	$at,8($s2)
    # Line 1778
    lwc1	$f6,_lit_40e00000
    # Line 1774
    li	$ra,10497
    # Line 1778
    lwc1	$f7,_lit_3f800000
    slti	$v1,$v0,2
    # Line 1774
    beq	$ra,$at,.L0d956ca4
    ldc1	$f4,168($sp)
    ld	$s2,184($sp)
    # Line 1776
    bltz	$v0,.L0d956cc8
    nop
    # Line 1778
    beqz	$v1,.L0d956b34
    nop
    lwc1	$f6,44($sp)
    add.s	$f6,$f6,$f7
.L0d956b34:
    cvt.d.s	$f5,$f6
.L0d956b38:
    # Line 1784
    sw	$zero,48($sp)
    lw	$t2,48($sp)
    # Line 1785
    ldc1	$f27,_lit8_42a0000000000000
    # Line 1784
    lw	$t1,48($sp)
    sw	$t2,8500($s0)
    sw	$t1,8500($s1)
    # Line 1785
    mul.d	$f31,$f27,$f4
    sdc1	$f31,56($sp)
    ldc1	$f29,56($sp)
    trunc.l.d	$f29,$f29
    dmfc1	$t0,$f29
    daddiu	$t0,$t0,2048
    sd	$t0,64($sp)
    ldc1	$f21,64($sp)
    # Line 1786
    mul.d	$f27,$f27,$f5
    # Line 1785
    ldc1	$f19,64($sp)
    # Line 1786
    sdc1	$f27,72($sp)
    ldc1	$f25,72($sp)
    trunc.l.d	$f25,$f25
    dmfc1	$a7,$f25
    # Line 1787
    lwc1	$f23,_lit_4e000000
    # Line 1786
    daddiu	$a7,$a7,2048
    sd	$a7,80($sp)
    ldc1	$f18,80($sp)
    ldc1	$f16,80($sp)
    # Line 1787
    swc1	$f23,88($sp)
    lwc1	$f17,88($sp)
    # Line 1795
    ld	$gp,160($sp)
    ld	$ra,176($sp)
    # Line 1785
    sdc1	$f21,8480($s0)
    # Line 1787
    trunc.w.s	$f17,$f17
    # Line 1785
    sdc1	$f19,8480($s1)
    # Line 1786
    sdc1	$f18,8488($s0)
    # Line 1787
    mfc1	$a6,$f17
    # Line 1786
    sdc1	$f16,8488($s1)
    # Line 1787
    addiu	$a6,$a6,2048
    sw	$a6,92($sp)
    lw	$a5,92($sp)
    lw	$a4,92($sp)
    sw	$a5,8496($s0)
    sw	$a4,8496($s1)
    # Line 1788
    sd	$zero,96($sp)
    ldc1	$f15,96($sp)
    ldc1	$f14,96($sp)
    # Line 1789
    sd	$zero,104($sp)
    ldc1	$f13,104($sp)
    ldc1	$f12,104($sp)
    # Line 1790
    sd	$zero,112($sp)
    ldc1	$f11,112($sp)
    ldc1	$f10,112($sp)
    # Line 1791
    sd	$zero,120($sp)
    ldc1	$f9,120($sp)
    ldc1	$f8,120($sp)
    # Line 1792
    sw	$zero,128($sp)
    lw	$a3,128($sp)
    lw	$a2,128($sp)
    # Line 1788
    sdc1	$f15,8504($s0)
    sdc1	$f14,8504($s1)
    # Line 1789
    sdc1	$f13,8512($s0)
    sdc1	$f12,8512($s1)
    # Line 1790
    sdc1	$f11,8520($s0)
    sdc1	$f10,8520($s1)
    # Line 1791
    sdc1	$f9,8528($s0)
    sdc1	$f8,8528($s1)
    # Line 1792
    sw	$a3,8536($s0)
    sw	$a2,8536($s1)
    # Line 1793
    sw	$zero,132($sp)
    lw	$a1,132($sp)
    lw	$a0,132($sp)
    sw	$a1,8540($s0)
    # Line 1795
    ld	$s0,144($sp)
    # Line 1793
    sw	$a0,8540($s1)
    # Line 1795
    ld	$s1,152($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d956c64:
    ld	$s0,144($sp)
    ld	$s1,152($sp)
    ld	$gp,160($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d956c78:
    # Line 1764
    mtc1	$v0,$f6
    cvt.s.w	$f6,$f6
    ldc1	$f4,136($sp)
    lwc1	$f5,_lit_3f800000
    sub.s	$f4,$f4,$f6
    add.s	$f4,$f4,$f5
    b	.L0d956ad4
    cvt.d.s	$f4,$f4
.L0d956c98:
    # Line 1766
    mtc1	$zero,$f5
    b	.L0d956ad0
    nop
.L0d956ca4:
    # Line 1776
    mtc1	$v0,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f5,44($sp)
    lwc1	$f6,_lit_3f800000
    sub.s	$f5,$f5,$f7
    add.s	$f5,$f5,$f6
    ld	$s2,184($sp)
    b	.L0d956b38
    cvt.d.s	$f5,$f5
.L0d956cc8:
    # Line 1778
    mtc1	$zero,$f6
    b	.L0d956b38
    cvt.d.s	$f5,$f6
.end __glCrmSetupPixelRenderOps

# Function: crmFastDoubleStore
# Declared: Line 1799 (Source lines: 1801-1846)
# Address: 0x0d956ce0 - 0x0d956e94 (Size: 436 bytes, Frame: 208)
.ent crmFastDoubleStore
crmFastDoubleStore:
    # Line 1801
    addiu	$sp,$sp,-80
    sd	$s2,48($sp)
    # Line 1808
    lw	$s2,32188($a0)
    # Line 1801
    sd	$s3,40($sp)
    # Line 1810
    lbu	$at,30652($a0)
    # Line 1801
    sd	$s0,32($sp)
    move	$s0,$a0
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 1810
    beqz	$at,.L0d956e04
    # Line 1808
    lw	$s3,32184($a0)
    # Line 1810
    lbu	$v0,32211($a0)
    beqz	$v0,.L0d956e04
    nop
    # Line 1813
    lw	$v0,30656($a0)
    lw	$a1,11760($a0)
    lw	$v1,32088($a0)
    bne	$a1,$v0,.L0d956d3c
    sw	$v1,0($sp)
    sd	$s4,72($sp)
    # Line 1816
    lw	$a3,30660($s0)
    b	.L0d956d44
    sw	$a3,32300($s0)
.L0d956d3c:
    # Line 1818
    sw	$v0,32300($s0)
    sd	$s4,72($sp)
.L0d956d44:
    # Line 1820
    lw	$s4,0($sp)
    # Line 1824
    sll	$v0,$s4,0x1d
    # Line 1820
    andi	$a4,$s4,0x1
    # Line 1824
    sll	$t2,$s4,0x1e
    # Line 1820
    beqz	$a4,.L0d956d70
    sd	$a4,16($sp)
    lh	$a5,1674($s0)
    beqz	$a5,.L0d956d70
    nop
    # Line 1822
    sw	$zero,8680($s3)
    sw	$zero,8680($s2)
.L0d956d70:
    # Line 1824
    bltz	$v0,.L0d956e20
    sd	$ra,56($sp)
.L0d956d78:
    # Line 1828
    sb	$zero,32211($s0)
    # Line 1829
    lwc1	$f0,200($s1)
    # Line 1831
    move	$t9,$a2
    move	$a0,$s0
    sd	$v0,64($sp)
    move	$a1,$s1
    jalr	$t9
    # Line 1829
    sdc1	$f0,8($sp)
    ld	$a0,64($sp)
    ld	$ra,56($sp)
    # Line 1833
    lw	$a7,11760($s0)
    # Line 1836
    ld	$a6,16($sp)
    ldc1	$f1,8($sp)
    # Line 1831
    move	$a1,$v0
    # Line 1833
    sw	$a7,32300($s0)
    # Line 1844
    li	$t1,1
    # Line 1836
    beqz	$a6,.L0d956dd4
    # Line 1834
    swc1	$f1,200($s1)
    # Line 1836
    lh	$v0,1674($s0)
    beqz	$v0,.L0d956dd4
    nop
    # Line 1838
    sw	$v0,8680($s3)
    sw	$v0,8680($s2)
.L0d956dd4:
    # Line 1846
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    andi	$v0,$a1,0xff
    # Line 1840
    bgez	$a0,.L0d956df0
    # Line 1846
    ld	$s1,24($sp)
    # Line 1840
    sll	$t0,$s4,0x1e
    bltz	$t0,.L0d956e60
.L0d956df0:
    ld	$s4,72($sp)
    # Line 1844
    sb	$t1,32211($s0)
    # Line 1846
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d956e04:
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 1811
    move	$v0,$zero
    # Line 1846
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d956e20:
    # Line 1824
    bgez	$t2,.L0d956d78
    nop
    # Line 1825
    lw	$a0,32088($s0)
    lw	$t3,32092($s0)
    li	$a1,-3
    and	$a0,$a0,$a1
    beq	$t3,$a0,.L0d956d78
    sw	$a0,32088($s0)
    # Line 1826
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    b	.L0d956d78
    sw	$a3,32092($s0)
.L0d956e60:
    # Line 1841
    lw	$a0,32088($s0)
    lw	$a7,32092($s0)
    ori	$a0,$a0,0x2
    beq	$a7,$a0,.L0d956df0
    sw	$a0,32088($s0)
    # Line 1842
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    b	.L0d956df0
    sw	$a2,32092($s0)
.end crmFastDoubleStore

# Function: crmDrawPixelsXfer
# Declared: Line 1853 (Source lines: 1854-2083)
# Address: 0x0d956ea0 - 0x0d95786c (Size: 2508 bytes, Frame: 192)
.globl crmDrawPixelsXfer
.ent crmDrawPixelsXfer
crmDrawPixelsXfer:
    # Line 1854
    addiu	$sp,$sp,-320
    sd	$s6,104($sp)
    # Line 1868
    lw	$s6,32188($a0)
    # Line 1854
    sd	$s1,80($sp)
    # Line 1868
    lw	$s1,32184($a0)
    sd	$ra,296($sp)
    sd	$s4,304($sp)
    # Line 1854
    sd	$s3,96($sp)
    # Line 1871
    lbu	$at,32211($a0)
    # Line 1854
    move	$s3,$a1
    sd	$s0,88($sp)
    lui	$v0,0x10
    move	$s0,$a0
    sd	$s2,312($sp)
    addiu	$v0,$v0,-24852
    sd	$gp,72($sp)
    # Line 1871
    beqz	$at,.L0d956f00
    # Line 1854
    addu	$gp,$t9,$v0
    # Line 1871
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,27872
    bal __glCrmSetupPixelRenderOps
    la	$a2,crmDrawPixelsXfer
    beqz	$v0,.L0d957758
    ld	$s2,312($sp)
.L0d956f00:
    # Line 1876
    lw	$s2,216($s3)
    # Line 1877
    lw	$t9,12($s3)
    sd	$t9,168($sp)
    # Line 1880
    lw	$ra,16($s3)
    # Line 1878
    lw	$t8,32292($s0)
    # Line 1880
    sd	$ra,232($sp)
    # Line 1878
    li	$s4,1
    # Line 1875
    lw	$ra,220($s3)
    # Line 1878
    srl	$t8,$t8,0x8
    # Line 1875
    sd	$ra,176($sp)
    # Line 1878
    andi	$t8,$t8,0x3
    # Line 1880
    beqz	$t9,.L0d9575b8
    # Line 1878
    sllv	$s4,$s4,$t8
    # Line 1885
    ld	$at,176($sp)
    beqz	$at,.L0d9576b4
    nop
    beqz	$s2,.L0d9576b4
    # Line 1886
    lw	$v0,-21584($gp)
    beqz	$v0,.L0d956f5c
    # Line 1892
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7896
.L0d956f5c:
    lbu	$a4,32206($s0)
    lw	$a3,32224($s0)
    sltu	$a3,$zero,$a3
    beqz	$a4,.L0d957718
    sll	$a3,$a3,0x12
    # Line 1899
    lw	$a1,0($s3)
    li	$a4,6401
    # Line 1898
    lui	$a2,0x60
    # Line 1899
    beq	$a1,$a4,.L0d9576e0
    # Line 1898
    or	$a2,$a3,$a2
    # Line 1915
    ori	$a6,$a2,0x78
    # Line 1912
    li	$t0,-121
    # Line 1899
    li	$a5,6402
    # Line 1912
    and	$t0,$a2,$t0
    xor	$a5,$a1,$a5
    ori	$a2,$t0,0x38
    sd	$zero,64($sp)
    movn	$a2,$a6,$a5
.L0d956fa4:
    # Line 1924
    lw	$a6,32216($s0)
    beqz	$a6,.L0d957004
    nop
    lw	$a1,32320($s0)
    beqz	$a1,.L0d957004
    ld	$a7,168($sp)
    sltu	$a7,$a7,$a1
    bnez	$a7,.L0d957004
    ld	$t0,168($sp)
    lui	$t1,0x2
    addu	$t1,$a1,$t1
    sltu	$t0,$t0,$t1
    beqz	$t0,.L0d957004
    nop
    # Line 1925
    lw	$a3,32292($s0)
    # Line 1926
    li	$a6,4
    sd	$a6,160($sp)
    # Line 1925
    li	$a4,-7169
    # Line 1926
    li	$a5,12
    sd	$a5,184($sp)
    # Line 1925
    and	$a3,$a3,$a4
    ori	$a3,$a3,0x1000
    # Line 1926
    b	.L0d957028
    # Line 1925
    sw	$a3,32292($s0)
.L0d957004:
    # Line 1928
    lw	$a3,32292($s0)
    # Line 1929
    li	$a5,8
    sd	$a5,184($sp)
    # Line 1928
    li	$a4,-7169
    li	$a7,5
    sd	$a7,160($sp)
    and	$a3,$a3,$a4
    ori	$a3,$a3,0x1400
    sw	$a3,32292($s0)
.L0d957028:
    # Line 1929
    lw	$a6,32092($s0)
    beq	$a6,$a2,.L0d957054
    nop
    # Line 1931
    lw	$t1,32184($s0)
    sw	$a2,0($sp)
    sw	$a2,8216($t1)
    lw	$t0,32188($s0)
    lw	$a7,0($sp)
    sw	$a7,8216($t0)
    lw	$a3,32292($s0)
    sw	$a7,32092($s0)
.L0d957054:
    # Line 1932
    sw	$a3,8192($s1)
    lw	$t3,32292($s0)
    sw	$t3,8192($s6)
    lw	$t2,11760($s0)
    lw	$a1,32300($s0)
    bne	$t2,$a1,.L0d9575e4
    # Line 1937
    ld	$t0,232($sp)
.L0d957070:
    lw	$a5,172($s3)
    mult	$a5,$t0
    mflo	$t9
    nop
    nop
    mult	$s2,$s4
    # Line 1939
    lw	$a3,4($sp)
    lui	$a4,0xff
    lui	$a7,0x3
    ori	$a4,$a4,0xffff
    lw	$a2,204($s3)
    and	$a3,$a3,$a4
    lui	$a4,0x300
    lbu	$ra,32203($s0)
    or	$a3,$a3,$a4
    nor	$a4,$a7,$zero
    lbu	$a5,32204($s0)
    and	$a3,$a3,$a4
    # Line 1937
    mflo	$t2
    sd	$t2,136($sp)
    slt	$t8,$t2,$t0
    # Line 1939
    subu	$t0,$t0,$t2
    # Line 1937
    sd	$t8,128($sp)
    # Line 1939
    subu	$t0,$t9,$t0
    beqz	$ra,.L0d957608
    movz	$t0,$t9,$t8
    # Line 1944
    lui	$a7,0x2
    # Line 1950
    addu	$a6,$a2,$s2
    # Line 1944
    movn	$a7,$zero,$a5
    # Line 1950
    addiu	$a6,$a6,-1
    # Line 1944
    or	$a7,$a3,$a7
    sd	$a7,240($sp)
.L0d9570f0:
    # Line 1953
    ld	$t1,128($sp)
    # Line 1952
    sw	$s4,16($sp)
    # Line 1953
    beqz	$t1,.L0d957124
    sw	$s4,20($sp)
    # Line 1955
    ld	$t9,136($sp)
    ld	$t3,232($sp)
    lui	$t8,0x1
    lw	$t2,20($sp)
    ori	$t8,$t8,0xffff
    subu	$t3,$t3,$t9
    and	$t3,$t3,$t8
    addu	$t2,$t2,$t3
    sw	$t2,20($sp)
.L0d957124:
    # Line 1963
    ld	$ra,160($sp)
    li	$at,5
    beq	$ra,$at,.L0d957624
    # Line 1961
    lw	$s2,208($s3)
    # Line 1973
    sd	$zero,216($sp)
    sd	$zero,56($sp)
    sd	$zero,48($sp)
.L0d957140:
    # Line 1964
    ld	$v0,176($sp)
    blez	$v0,.L0d9574f4
    li	$v0,1
    sd	$v0,120($sp)
    sd	$s7,248($sp)
    ld	$v1,232($sp)
    sd	$s5,264($sp)
    lui	$ra,0x2
    sll	$a3,$a6,0x6
    slt	$ra,$v1,$ra
    sd	$ra,112($sp)
    sll	$a1,$a2,0x6
    sd	$s8,256($sp)
    lui	$s8,0x7
    lui	$a0,0x1
    ld	$at,136($sp)
    ori	$s8,$s8,0xffff
    ori	$a0,$a0,0xf000
    and	$a3,$a3,$s8
    sd	$a3,200($sp)
    slt	$at,$v1,$at
    slt	$v1,$v1,$a0
    sd	$v1,144($sp)
    and	$a1,$a1,$s8
    sd	$a1,208($sp)
    ld	$a1,240($sp)
    xori	$at,$at,0x1
    sd	$at,152($sp)
    li	$s5,1
    b	.L0d95785c
    sw	$a1,4($sp)
    nop
.L0d9571c0:
    # Line 2055
    lw	$v1,8($sp)
    sw	$v1,10400($s1)
    # Line 2058
    ld	$a0,224($sp)
.L0d9571cc:
    # Line 2055
    lbu	$a2,32204($s0)
    # Line 2059
    subu	$s4,$s4,$s7
    movz	$a0,$s7,$a2
    # Line 2062
    ld	$a1,232($sp)
    # Line 2059
    blez	$s4,.L0d957338
    # Line 2058
    addu	$s2,$a0,$s2
    # Line 2062
    addu	$s3,$a1,$s3
    blez	$s4,.L0d957338
.L0d9571ec:
    # Line 2017
    ld	$t1,240($sp)
    # Line 2014
    addu	$a3,$s2,$s7
    # Line 2017
    lw	$a7,4($sp)
    # Line 2014
    subu	$a5,$s2,$s7
    addiu	$a3,$a3,-1
    ld	$a6,240($sp)
    addiu	$a5,$a5,1
    beqz	$s5,.L0d95725c
    movz	$a5,$a3,$a2
    lw	$a4,32096($s0)
    # Line 2018
    ld	$v0,208($sp)
    # Line 2014
    beq	$a4,$a6,.L0d957234
    # Line 2020
    ld	$t9,200($sp)
    # Line 2017
    lw	$t2,32184($s0)
    sw	$t1,8288($t2)
    lw	$t0,32188($s0)
    sw	$a7,8288($t0)
    sw	$a7,32096($s0)
.L0d957234:
    # Line 2018
    sw	$v0,24($sp)
    lw	$at,24($sp)
    lw	$ra,24($sp)
    sw	$at,8320($s1)
    sw	$ra,8320($s6)
    # Line 2020
    sw	$t9,28($sp)
    lw	$t8,28($sp)
    lw	$t3,28($sp)
    sw	$t8,8328($s1)
    sw	$t3,8328($s6)
.L0d95725c:
    # Line 2023
    sll	$a2,$s2,0x6
    and	$a2,$s8,$a2
    sw	$a2,32($sp)
    # Line 2024
    sll	$a1,$a5,0x6
    # Line 2023
    lw	$v1,32($sp)
    # Line 2024
    and	$a1,$s8,$a1
    sw	$a1,36($sp)
    lw	$a0,36($sp)
    sw	$a0,8332($s1)
    beqz	$s5,.L0d9572e0
    # Line 2023
    sw	$v1,8324($s1)
    # Line 2024
    lbu	$a3,32202($s0)
    beqz	$a3,.L0d95729c
    # Line 2028
    nop	# was lw $t9, -31600($gp) # &__glCrmSetupPixelRenderOps
    bal __glCrmSetupPixelRenderOps
    move	$a0,$s0
.L0d95729c:
    lw	$a4,32224($s0)
    # Line 2036
    lw	$t1,20($sp)
    move	$s5,$zero
    # Line 2034
    lw	$t3,16($sp)
    # Line 2028
    beqz	$a4,.L0d9572c8
    # Line 2031
    lui	$a7,0x1f
    sw	$a7,40($sp)
    lw	$a6,40($sp)
    lw	$a5,40($sp)
    sw	$a6,8384($s1)
    sw	$a5,8384($s6)
.L0d9572c8:
    # Line 2034
    sw	$t3,8360($s1)
    lw	$t2,16($sp)
    sw	$t2,8360($s6)
    # Line 2036
    sw	$t1,8364($s1)
    lw	$t0,20($sp)
    sw	$t0,8364($s6)
.L0d9572e0:
    lw	$a2,32224($s0)
    # Line 2045
    lui	$t8,0x1
    ori	$t8,$t8,0xffff
    ld	$t9,216($sp)
    # Line 2036
    beqz	$a2,.L0d9572fc
    # Line 2045
    and	$t8,$t8,$s3
    # Line 2042
    sw	$a2,8388($s1)
.L0d9572fc:
    # Line 2045
    beqz	$t9,.L0d9571c0
    sw	$t8,8($sp)
    # Line 2049
    # lw $t9, -32740($gp) # &sub_0d950000
    ld	$a1,184($sp)
    # Line 2047
    lw	$ra,8($sp)
    # Line 2049
    addiu	$t9,$t9,12160
    move	$a0,$s0
    # Line 2047
    sw	$ra,8352($s1)
    # Line 2049
    move	$a2,$s3
    bal __glCrmPickAllProcs
    ld	$a3,192($sp)
    bnez	$v0,.L0d9571cc
    # Line 2058
    ld	$a0,224($sp)
    # Line 2052
    sd	$zero,120($sp)
    sd	$zero,176($sp)
.L0d957338:
    # Line 2065
    ld	$at,176($sp)
    # Line 2001
    li	$t1,5
    # Line 2065
    blez	$at,.L0d957508
    # Line 1983
    lui	$a3,0x1
    # Line 1981
    ld	$v0,168($sp)
.L0d95734c:
    # Line 2001
    ld	$t0,160($sp)
    ld	$t2,176($sp)
    # Line 1981
    move	$a2,$v0
    # Line 2001
    ld	$ra,160($sp)
    # Line 1981
    move	$s3,$v0
    andi	$v0,$v0,0xfff
    # Line 1983
    ld	$a1,232($sp)
    ld	$a0,144($sp)
    # Line 2001
    li	$at,5
    # Line 1981
    beqz	$v0,.L0d9574a0
    # Line 1983
    mtc1	$a1,$f1
    ld	$v1,232($sp)
    lui	$a4,0x1
    ori	$a4,$a4,0xf000
    blez	$v1,.L0d9573b8
    mtc1	$a4,$f0
    beqz	$a0,.L0d9573bc
    ori	$a3,$a3,0xf000
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a3,$f0
    mult	$a1,$a3
    mflo	$a3
    b	.L0d9573bc
    teq	$a1,$zero,0x7
.L0d9573b8:
    ori	$a3,$a3,0xf000
.L0d9573bc:
    ld	$a4,232($sp)
.L0d9573c0:
    mtc1	$a3,$f1
    mtc1	$a4,$f2
    cvt.d.w	$f1,$f1
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$s4,$f1
    ld	$a5,176($sp)
    li	$a7,1
    slti	$a6,$s4,1
    movn	$s4,$a7,$a6
    slt	$a5,$s4,$a5
    # Line 1991
    addu	$t3,$a3,$a2
    # Line 1983
    teq	$a4,$zero,0x7
    # Line 1993
    ld	$v0,176($sp)
    # Line 1983
    beqz	$a5,.L0d957450
    # Line 1990
    subu	$t2,$t2,$s4
    # Line 1989
    sd	$a3,192($sp)
    # Line 1991
    sd	$t3,168($sp)
    # Line 2001
    bne	$t0,$t1,.L0d957480
    sd	$t2,176($sp)
.L0d957414:
    ld	$t9,216($sp)
    bnez	$t9,.L0d957484
    # Line 2011
    ld	$a1,152($sp)
    # Line 2002
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12160
    ld	$a1,184($sp)
    move	$a0,$s0
    bal __glCrmPickAllProcs
    ld	$a3,192($sp)
    bnez	$v0,.L0d957484
    # Line 2011
    ld	$a1,152($sp)
    # Line 2004
    b	.L0d957508
    sd	$zero,120($sp)
    nop
    nop
.L0d957450:
    # Line 1996
    ld	$a0,136($sp)
    # Line 1994
    ld	$v1,232($sp)
    mult	$v1,$v0
    # Line 1996
    subu	$v1,$v1,$a0
    ld	$a0,128($sp)
    # Line 1994
    mflo	$a1
    # Line 1996
    subu	$v1,$a1,$v1
    # Line 1998
    sd	$zero,176($sp)
    movz	$v1,$a1,$a0
    # Line 1993
    move	$s4,$v0
    # Line 2001
    beq	$ra,$at,.L0d957414
    sd	$v1,192($sp)
.L0d957480:
    # Line 2011
    ld	$a1,152($sp)
.L0d957484:
    li	$s7,1
    blez	$s4,.L0d957338
    movn	$s7,$s4,$a1
    negu	$a2,$s7
    sd	$a2,224($sp)
    b	.L0d9571ec
    lbu	$a2,32204($s0)
.L0d9574a0:
    # Line 1983
    ld	$a3,232($sp)
    ld	$a5,232($sp)
    ld	$a4,112($sp)
    blez	$a3,.L0d9574e4
    lui	$a7,0x2
    beqz	$a4,.L0d9574e4
    mtc1	$a7,$f2
    mtc1	$a5,$f3
    cvt.d.w	$f2,$f2
    cvt.d.w	$f3,$f3
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$a6,$f2
    mult	$a5,$a6
    mflo	$a3
    b	.L0d9574ec
    teq	$a5,$zero,0x7
.L0d9574e4:
    lui	$a3,0x1
    ori	$a3,$a3,0xf000
.L0d9574ec:
    b	.L0d9573c0
    ld	$a4,232($sp)
.L0d9574f4:
    # Line 2065
    li	$a4,1
    sd	$a4,120($sp)
    sd	$s7,248($sp)
    sd	$s5,264($sp)
    sd	$s8,256($sp)
.L0d957508:
    # Line 2067
    ld	$a5,160($sp)
    li	$a6,5
    beq	$a5,$a6,.L0d957660
    nop
.L0d957518:
    # Line 2073
    lw	$a7,32092($s0)
.L0d95751c:
    lw	$a0,32088($s0)
    beq	$a7,$a0,.L0d957548
    # Line 2076
    ld	$t8,64($sp)
    # Line 2075
    lw	$t3,32184($s0)
    sw	$a0,8216($t3)
    lw	$t2,32188($s0)
    lw	$t1,32088($s0)
    sw	$t1,8216($t2)
    lw	$t0,32088($s0)
    sw	$t0,32092($s0)
    # Line 2076
    ld	$t8,64($sp)
.L0d957548:
    beqz	$t8,.L0d957564
    # Line 2079
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    # Line 2076
    lw	$t9,32088($s0)
    sll	$t9,$t9,0x18
    bltz	$t9,.L0d957740
    # Line 2077
    lui	$a7,0x1
.L0d957560:
    # Line 2079
    # lw $t9, -31848($gp) # &__glCrmSetReadBuffer
.L0d957564:
    move	$a0,$s0
    jal	__glCrmSetReadBuffer
    lw	$a1,11764($s0)
    lw	$ra,32300($s0)
    lw	$a1,11760($s0)
    bne	$ra,$a1,.L0d9575f8
    # Line 2081
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    ld	$s4,304($sp)
.L0d957584:
    ld	$s2,312($sp)
    ld	$s5,264($sp)
    ld	$s8,256($sp)
    ld	$s7,248($sp)
    # Line 2083
    ld	$v0,120($sp)
    ld	$gp,72($sp)
    ld	$s0,88($sp)
    ld	$ra,296($sp)
    ld	$s1,80($sp)
    ld	$s3,96($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9575b8:
    ld	$s2,312($sp)
    ld	$s4,304($sp)
    ld	$gp,72($sp)
    ld	$s0,88($sp)
    ld	$ra,296($sp)
    ld	$s1,80($sp)
    # Line 1882
    move	$v0,$zero
    # Line 2083
    ld	$s3,96($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9575e4:
    # Line 1934
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    jal	__glCrmSetDrawBuffer
    move	$a0,$s0
    b	.L0d957070
    # Line 1937
    ld	$t0,232($sp)
.L0d9575f8:
    # Line 2081
    jalr	$t9
    move	$a0,$s0
    b	.L0d957584
    ld	$s4,304($sp)
.L0d957608:
    # Line 1950
    subu	$a6,$a2,$s2
    # Line 1946
    lui	$v1,0x1
    # Line 1950
    addiu	$a6,$a6,1
    # Line 1946
    movz	$v1,$a7,$a5
    or	$v1,$a3,$v1
    b	.L0d9570f0
    sd	$v1,240($sp)
.L0d957624:
    # Line 1963
    lbu	$a7,32212($s0)
    beqz	$a7,.L0d95763c
    lw	$t2,-21572($gp)
    lw	$t1,32216($s0)
    beqz	$t1,.L0d9577b0
    lw	$t2,-21572($gp)
.L0d95763c:
    beqz	$t2,.L0d957788
    # Line 1965
    lw	$t1,-21568($gp)
    sd	$zero,216($sp)
    sd	$zero,56($sp)
    ld	$t3,184($sp)
    sd	$zero,48($sp)
    ori	$t3,$t3,0x20
    b	.L0d957140
    sd	$t3,184($sp)
.L0d957660:
    # Line 2067
    lbu	$t8,32212($s0)
    beqz	$t8,.L0d957678
    # Line 2068
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    # Line 2067
    lw	$t9,32216($s0)
    beqz	$t9,.L0d957518
    # Line 2068
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
.L0d957678:
    jal	__glCrmFlushAndConfirm
    move	$a0,$s0
    # Line 2069
    lw	$ra,-21572($gp)
    beqz	$ra,.L0d9577c0
    # Line 2073
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d95768c:
    ld	$a1,184($sp)
    li	$a3,-97
    addiu	$t9,$t9,12160
    move	$a0,$s0
    and	$a1,$a1,$a3
    lw	$a2,32336($s0)
    bal __glCrmPickAllProcs
    move	$a3,$zero
    b	.L0d95751c
    lw	$a7,32092($s0)
.L0d9576b4:
    ld	$s2,312($sp)
    ld	$s4,304($sp)
    # Line 2083
    ld	$gp,72($sp)
    ld	$s0,88($sp)
    ld	$ra,296($sp)
    ld	$s1,80($sp)
    # Line 1886
    li	$v0,1
    # Line 2083
    ld	$s3,96($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9576e0:
    # Line 1901
    lh	$a1,1674($s0)
    li	$a4,255
    beq	$a1,$a4,.L0d957780
    # Line 1902
    sll	$a5,$a1,0x18
    beqz	$a5,.L0d9577e8
    sd	$a5,64($sp)
    # Line 1907
    ld	$a6,64($sp)
    sw	$a6,8632($s1)
    # Line 1906
    ori	$a2,$a2,0x80
    # Line 1907
    sw	$a6,8632($s6)
.L0d957708:
    # Line 1909
    li	$a3,-121
    and	$a2,$a2,$a3
    b	.L0d956fa4
    ori	$a2,$a2,0x40
.L0d957718:
    # Line 1918
    lw	$a6,32088($s0)
    sw	$a6,0($sp)
    # Line 1922
    lw	$a2,0($sp)
    ld	$a4,-22188($gp)
    lui	$a5,0x20
    or	$a2,$a2,$a5
    and	$a2,$a2,$a4
    sd	$zero,64($sp)
    b	.L0d956fa4
    or	$a2,$a3,$a2
.L0d957740:
    # Line 2077
    addu	$a7,$s0,$a7
    lw	$t0,-32576($a7)
    sw	$t0,8632($s1)
    lw	$a7,-32576($a7)
    b	.L0d957560
    sw	$a7,8632($s6)
.L0d957758:
    ld	$s4,304($sp)
    # Line 2083
    ld	$gp,72($sp)
    ld	$s0,88($sp)
    ld	$ra,296($sp)
    ld	$s1,80($sp)
    # Line 1873
    move	$v0,$zero
    # Line 2083
    ld	$s3,96($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d957780:
    b	.L0d957708
    # Line 1907
    sd	$zero,64($sp)
.L0d957788:
    # Line 1965
    beqz	$t1,.L0d957814
    sd	$t0,272($sp)
    # Line 1968
    li	$t3,1
    sd	$t3,216($sp)
    sd	$zero,56($sp)
    ld	$t2,184($sp)
    sd	$zero,48($sp)
    ori	$t2,$t2,0x60
    b	.L0d957140
    sd	$t2,184($sp)
.L0d9577b0:
    # Line 1973
    sd	$zero,216($sp)
    sd	$zero,56($sp)
    b	.L0d957140
    sd	$zero,48($sp)
.L0d9577c0:
    # Line 2069
    lw	$t8,-21568($gp)
    bnez	$t8,.L0d95768c
    # Line 2073
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 2070
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12544
    ld	$a0,48($sp)
    bal __glCrmPickAllProcs
    ld	$a1,56($sp)
    b	.L0d95768c
    # Line 2073
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d9577e8:
    ld	$s2,312($sp)
    ld	$s4,304($sp)
    # Line 2083
    ld	$gp,72($sp)
    ld	$s0,88($sp)
    ld	$ra,296($sp)
    ld	$s1,80($sp)
    # Line 1904
    li	$v0,1
    # Line 2083
    ld	$s3,96($sp)
    ld	$s6,104($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d957814:
    # Line 1971
    # lw $t9, -32740($gp) # &sub_0d950000
    sd	$a6,280($sp)
    ld	$s3,272($sp)
    addiu	$t9,$t9,12400
    sd	$a2,288($sp)
    ld	$a0,168($sp)
    bal __glCrmPickAllProcs
    move	$a1,$s3
    ld	$a2,288($sp)
    ld	$a6,280($sp)
    # Line 1973
    move	$at,$s3
    # Line 1972
    ld	$ra,168($sp)
    # Line 1973
    sd	$zero,216($sp)
    movz	$at,$zero,$v0
    sd	$at,56($sp)
    movz	$ra,$zero,$v0
    b	.L0d957140
    sd	$ra,48($sp)
.L0d95785c:
    # Line 1983
    lui	$a3,0x1
    # Line 2001
    li	$t1,5
    b	.L0d95734c
    # Line 1981
    ld	$v0,168($sp)
.end crmDrawPixelsXfer

# Function: crmDrawPixelsXfer2
# Declared: Line 2094 (Source lines: 2095-2532)
# Address: 0x0d957870 - 0x0d958b88 (Size: 4888 bytes, Frame: 176)
.globl crmDrawPixelsXfer2
.ent crmDrawPixelsXfer2
crmDrawPixelsXfer2:
    # Line 2095
    addiu	$sp,$sp,-560
    sd	$s8,176($sp)
    # Line 2115
    lw	$s8,32188($a0)
    # Line 2095
    sd	$s1,144($sp)
    # Line 2115
    lw	$s1,32184($a0)
    # Line 2095
    sd	$s4,160($sp)
    # Line 2118
    lbu	$at,32211($a0)
    # Line 2095
    move	$s4,$a1
    sd	$s0,152($sp)
    lui	$v0,0x10
    move	$s0,$a0
    sd	$ra,520($sp)
    addiu	$v0,$v0,-27364
    sd	$gp,168($sp)
    # Line 2118
    beqz	$at,.L0d9578c8
    # Line 2095
    addu	$gp,$t9,$v0
    # Line 2118
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,27872
    bal __glCrmSetupPixelRenderOps
    la	$a2,crmDrawPixelsXfer2
    beqz	$v0,.L0d958810
    nop
.L0d9578c8:
    # Line 2122
    lw	$a7,220($s4)
    # Line 2128
    lw	$a0,16($s4)
    # Line 2124
    lw	$a2,168($s4)
    sd	$a2,312($sp)
    # Line 2128
    sd	$a0,344($sp)
    # Line 2129
    lw	$a1,20($s4)
    # Line 2126
    lw	$ra,12($s4)
    sd	$ra,256($sp)
    # Line 2129
    mult	$a1,$a2
    # Line 2127
    lw	$v0,32292($s0)
    # Line 2125
    lw	$v1,172($s4)
    sd	$v1,280($sp)
    # Line 2127
    srl	$v0,$v0,0x8
    li	$at,1
    # Line 2123
    lw	$v1,216($s4)
    # Line 2127
    andi	$v0,$v0,0x3
    # Line 2123
    sd	$v1,304($sp)
    # Line 2127
    sllv	$at,$at,$v0
    # Line 2129
    mflo	$t0
    beqz	$ra,.L0d9585b4
    sd	$at,296($sp)
    # Line 2134
    beqz	$a7,.L0d958654
    ld	$a3,304($sp)
    beqz	$a3,.L0d958654
    nop
    # Line 2135
    lbu	$a4,32206($s0)
    beqz	$a4,.L0d9586b0
    nop
    # Line 2144
    lw	$v0,0($s4)
    li	$a5,6401
    beq	$v0,$a5,.L0d958678
    # Line 2143
    lui	$a1,0x60
    # Line 2144
    li	$a6,6402
    beq	$v0,$a6,.L0d958780
    lw	$t1,32092($s0)
    # Line 2160
    ori	$v0,$a1,0x78
    beq	$v0,$t1,.L0d958798
    move	$a1,$v0
    sw	$v0,0($sp)
    sd	$zero,128($sp)
.L0d957968:
    # Line 2169
    lw	$t3,32184($s0)
    sw	$a1,8216($t3)
    lw	$t2,32188($s0)
    lw	$t1,0($sp)
    sw	$t1,8216($t2)
    sw	$t1,32092($s0)
.L0d957980:
    # Line 2178
    lw	$t8,32264($s0)
    # Line 2169
    lui	$v1,0x3
    lbu	$v0,32204($s0)
    # Line 2175
    lui	$ra,0x1
    # Line 2178
    slti	$t8,$t8,16
    # Line 2175
    movz	$ra,$v1,$v0
    # Line 2169
    lw	$t9,4($sp)
    lui	$at,0xff
    nor	$v1,$v1,$zero
    ori	$at,$at,0xffff
    and	$t9,$t9,$at
    lui	$at,0x300
    or	$t9,$t9,$at
    # Line 2173
    lui	$at,0x2
    # Line 2169
    lbu	$a1,32203($s0)
    # Line 2173
    movn	$at,$zero,$v0
    # Line 2169
    and	$t9,$t9,$v1
    # Line 2175
    or	$ra,$t9,$ra
    # Line 2173
    or	$t9,$t9,$at
    movz	$t9,$ra,$a1
    # Line 2178
    beqz	$t8,.L0d957a74
    sd	$t9,424($sp)
    ld	$ra,344($sp)
    lui	$t9,0x1
    ori	$t9,$t9,0xf000
    slt	$t9,$t9,$ra
    bnez	$t9,.L0d957a74
    ld	$v0,312($sp)
    mtc1	$v0,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f4,32240($s0)
    lwc1	$f7,3680($s0)
    lwc1	$f6,32248($s0)
    madd.s	$f0,$f7,$f5,$f4
    mul.s	$f5,$f5,$f6
    trunc.w.s	$f1,$f5
    trunc.w.s	$f0,$f0
    mfc1	$ra,$f1
    mfc1	$at,$f0
    bne	$ra,$at,.L0d957a74
    nop
    # Line 2182
    lw	$v1,32344($s0)
    bnez	$v1,.L0d957a3c
    # Line 2178
    li	$v0,1
    # Line 2182
    lbu	$a0,32209($s0)
    beqz	$a0,.L0d958ac8
    nop
.L0d957a3c:
    move	$t0,$zero
.L0d957a40:
    ldc1	$f7,_lit8_3ff0000000000000
    cvt.d.s	$f8,$f4
    c.lt.d	$f7,$f8
    bc1f	.L0d958834
    # Line 2194
    ld	$a0,304($sp)
    # Line 2190
    lwc1	$f9,196($s4)
    # Line 2191
    trunc.w.s	$f10,$f5
    # Line 2190
    trunc.w.s	$f9,$f9
    # Line 2191
    mfc1	$a3,$f10
    sd	$a3,304($sp)
    # Line 2190
    mfc1	$a2,$f9
    # Line 2191
    b	.L0d957a84
    sd	$a2,136($sp)
.L0d957a74:
    # Line 2198
    lw	$a4,204($s4)
    # Line 2178
    move	$v0,$zero
    move	$t0,$zero
    sd	$a4,136($sp)
.L0d957a84:
    # Line 2200
    ld	$a6,304($sp)
    ld	$t2,136($sp)
    andi	$a5,$t0,0xff
    subu	$t1,$t2,$a6
    addu	$a6,$a6,$t2
    addiu	$t1,$t1,1
    addiu	$a6,$a6,-1
    sd	$a5,232($sp)
    movz	$a6,$t1,$a1
    beqz	$a5,.L0d9585fc
    sd	$a6,120($sp)
    lwc1	$f11,32244($s0)
    ldc1	$f10,_lit8_3ff0000000000000
    cvt.d.s	$f11,$f11
    c.lt.d $f10,$f11
    lwc1	$f4,200($s4)
    bc1f .L0d958570
    sd	$s3,528($sp)
    # Line 2204
    trunc.w.s	$f12,$f4
    sdc1	$f20,472($sp)
    sd	$s2,536($sp)
    mfc1	$s3,$f12
.L0d957adc:
    # Line 2217
    andi	$t2,$v0,0xff
    # Line 2214
    move	$s2,$s3
    # Line 2215
    mov.s	$f20,$f4
    # Line 2217
    beqz	$t2,.L0d957af8
    sd	$t2,320($sp)
    lw	$t3,32344($s0)
    beqz	$t3,.L0d957c60
.L0d957af8:
    # Line 2220
    ld	$ra,312($sp)
    lw	$v1,20($s4)
    mult	$v1,$ra
    # Line 2221
    ld	$at,296($sp)
    # Line 2220
    mflo	$v0
    nop
    nop
    # Line 2221
    mult	$ra,$at
    ld	$t8,320($sp)
    # Line 2220
    sd	$v0,328($sp)
    # Line 2221
    mflo	$t9
    beqz	$t8,.L0d9587c4
    sd	$t9,200($sp)
    # Line 2224
    ld	$a0,200($sp)
    sd	$a0,288($sp)
.L0d957b34:
    # Line 2230
    lw	$a1,32216($s0)
    ld	$a2,288($sp)
    beqz	$a1,.L0d9587dc
    sd	$a2,264($sp)
    # Line 2233
    lw	$v0,32320($s0)
    beqz	$v0,.L0d957ba4
    ld	$a3,256($sp)
    sltu	$a3,$a3,$v0
    bnez	$a3,.L0d957ba4
    ld	$a4,256($sp)
    lui	$a5,0x2
    addu	$a5,$a5,$v0
    sltu	$a4,$a4,$a5
    beqz	$a4,.L0d957ba8
    # Line 2252
    ld	$t9,280($sp)
    # Line 2233
    ld	$t1,280($sp)
    ld	$t0,288($sp)
    mult	$t0,$t1
    lw	$a7,32308($s0)
    mflo	$v0
    lui	$a6,0x2
    addu	$a7,$a7,$v0
    slt	$a6,$a6,$a7
    bnez	$a6,.L0d958978
    nop
    # Line 2246
    sd	$zero,88($sp)
    b	.L0d957bd4
    sd	$zero,112($sp)
.L0d957ba4:
    # Line 2252
    ld	$t9,280($sp)
.L0d957ba8:
    ld	$t8,288($sp)
    mult	$t8,$t9
    # Line 2250
    lw	$t3,32304($s0)
    # Line 2252
    sw	$zero,32304($s0)
    # Line 2249
    lw	$t2,32316($s0)
    # Line 2251
    sw	$zero,32316($s0)
    # Line 2250
    sd	$t3,88($sp)
    # Line 2249
    sd	$t2,112($sp)
    # Line 2252
    mflo	$v0
    nop
    nop
.L0d957bd4:
    # Line 2256
    lw	$t9,32324($s0)
    # Line 2255
    lui	$v1,0x2
    slt	$at,$v0,$v1
    # Line 2256
    move	$a0,$s0
    # Line 2255
    movz	$v0,$v1,$at
    sd	$v0,104($sp)
    # Line 2256
    jal	sub_0d950000
    move	$a1,$v0
    beqz	$v0,.L0d958624
    sd	$v0,240($sp)
    # Line 2260
    sw	$v0,20($sp)
    ld	$a1,240($sp)
    # Line 2258
    ld	$a3,288($sp)
    ld	$a4,328($sp)
    # Line 2260
    lw	$a2,-21584($gp)
    # Line 2258
    sw	$a4,16($sp)
    sw	$a3,12($sp)
    # Line 2260
    beqz	$a2,.L0d957c30
    # Line 2258
    sw	$a1,8($sp)
    # Line 2261
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7992
.L0d957c30:
    # Line 2273
    li	$a1,1
    sd	$a1,336($sp)
.L0d957c38:
    # Line 2274
    lw	$v0,32292($s0)
    # Line 2275
    li	$a1,4
    sd	$a1,248($sp)
    # Line 2274
    li	$v1,-7169
    # Line 2275
    li	$a0,12
    sd	$a0,352($sp)
    # Line 2274
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x1000
    # Line 2275
    b	.L0d957d20
    # Line 2274
    sw	$v0,32292($s0)
.L0d957c60:
    # Line 2263
    ld	$t2,296($sp)
    ld	$t1,312($sp)
    mult	$t1,$t2
    # Line 2266
    ld	$t0,280($sp)
    ld	$a3,344($sp)
    # Line 2263
    mflo	$a6
    nop
    nop
    # Line 2266
    mult	$a3,$t0
    # Line 2268
    lw	$a2,-21584($gp)
    # Line 2266
    slt	$a4,$a6,$a3
    # Line 2264
    sd	$a3,264($sp)
    # Line 2268
    subu	$a3,$a3,$a6
    # Line 2266
    mflo	$a5
    # Line 2268
    subu	$a3,$a5,$a3
    # Line 2263
    sd	$a6,200($sp)
    movz	$a3,$a5,$a4
    # Line 2268
    beqz	$a2,.L0d957cbc
    sd	$a3,104($sp)
    # Line 2270
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,7944
.L0d957cbc:
    # Line 2273
    lw	$a1,32216($s0)
    sd	$zero,336($sp)
    sd	$zero,88($sp)
    beqz	$a1,.L0d957cfc
    sd	$zero,112($sp)
    lw	$v0,32320($s0)
    beqz	$v0,.L0d957cfc
    ld	$a2,256($sp)
    sltu	$a2,$a2,$v0
    bnez	$a2,.L0d957cfc
    ld	$a3,256($sp)
    lui	$a4,0x2
    addu	$a4,$v0,$a4
    sltu	$a3,$a3,$a4
    bnez	$a3,.L0d957c38
    nop
.L0d957cfc:
    # Line 2277
    lw	$v0,32292($s0)
    # Line 2278
    li	$a0,8
    sd	$a0,352($sp)
    # Line 2277
    li	$v1,-7169
    li	$a5,5
    sd	$a5,248($sp)
    and	$v0,$v0,$v1
    ori	$v0,$v0,0x1400
    sw	$v0,32292($s0)
.L0d957d20:
    # Line 2280
    sw	$v0,8192($s1)
    lw	$a3,32292($s0)
    sw	$a3,8192($s8)
    lw	$a2,11760($s0)
    lw	$a1,32300($s0)
    bne	$a2,$a1,.L0d9585d8
    # Line 2282
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    ld	$a4,320($sp)
.L0d957d40:
    beqz	$a4,.L0d958870
    # Line 2286
    ld	$t2,296($sp)
    lw	$t1,32264($s0)
    mult	$t1,$t2
    # Line 2312
    ld	$a5,232($sp)
    # Line 2286
    lw	$a7,32256($s0)
    lui	$t0,0x1
    ori	$t0,$t0,0xffff
    mflo	$a6
    sd	$s6,544($sp)
    sll	$a7,$a7,0x1c
    and	$a6,$a6,$t0
    or	$a6,$a6,$a7
    # Line 2312
    beqz	$a5,.L0d9587b4
    # Line 2286
    sw	$a6,32($sp)
.L0d957d7c:
    # Line 2320
    ld	$v1,304($sp)
    # Line 2312
    lw	$a0,32264($s0)
    # Line 2320
    addiu	$v1,$v1,-1
    mult	$a0,$v1
    ld	$at,312($sp)
    mflo	$v0
    subu	$at,$at,$v0
    ld	$v0,296($sp)
    mult	$v0,$at
    # Line 2325
    lw	$t9,32268($s0)
    # Line 2328
    ld	$v1,344($sp)
    addiu	$ra,$t9,-1
    # Line 2320
    mflo	$a1
    nop
    nop
    # Line 2328
    mult	$v1,$ra
    # Line 2325
    ld	$at,200($sp)
    # Line 2330
    lui	$t8,0x1
    # Line 2312
    slti	$a0,$a0,2
    # Line 2325
    subu	$t3,$v1,$at
    movz	$v0,$a1,$a0
    # Line 2322
    slt	$at,$at,$v1
    # Line 2325
    addu	$t3,$v0,$t3
    movz	$t3,$v0,$at
    # Line 2328
    mflo	$ra
    # Line 2330
    lw	$s6,32260($s0)
    # Line 2325
    slti	$t9,$t9,2
    # Line 2328
    addu	$ra,$t3,$ra
    # Line 2330
    ori	$t8,$t8,0xffff
    movz	$t3,$ra,$t9
    sll	$s6,$s6,0x1c
    and	$t3,$t3,$t8
    or	$t3,$t3,$s6
    sw	$t3,36($sp)
    move	$s6,$zero
.L0d957e08:
    # Line 2334
    lbu	$a0,32209($s0)
    lwc1	$f4,164($s4)
    beqz	$a0,.L0d9586e4
    sdc1	$f22,480($sp)
    # Line 2338
    ldc1	$f23,_lit8_3fe0000000000000
    cvt.d.s	$f22,$f4
    mul.d	$f22,$f22,$f23
    cvt.s.d	$f22,$f22
.L0d957e28:
    # Line 2344
    ld	$t0,344($sp)
    lw	$a7,32276($s0)
    mult	$a7,$t0
    # Line 2342
    lw	$a5,236($s4)
    # Line 2343
    ld	$a6,256($sp)
    sd	$a6,400($sp)
    # Line 2349
    ld	$a1,248($sp)
    li	$a2,5
    # Line 2344
    lw	$a3,32288($s0)
    # Line 2342
    sd	$a5,448($sp)
    # Line 2344
    mflo	$a4
    addu	$a3,$a3,$a4
    # Line 2349
    beq	$a1,$a2,.L0d9586ec
    sd	$a3,216($sp)
    # Line 2359
    sd	$zero,416($sp)
    sd	$zero,96($sp)
    sd	$zero,80($sp)
.L0d957e6c:
    # Line 2350
    ld	$t1,280($sp)
    blez	$t1,.L0d958458
    # Line 2501
    li	$a4,1
    sdc1	$f26,456($sp)
    # Line 2350
    lwc1	$f26,_lit_3f800000
    sdc1	$f24,464($sp)
    ldc1	$f24,_lit8_3fe0000000000000
    li	$a4,1
    sd	$a4,272($sp)
    sd	$s7,496($sp)
    sd	$s4,72($sp)
    sd	$s5,504($sp)
    lw	$at,8($sp)
    lw	$a0,12($sp)
    lw	$a3,16($sp)
    sd	$a3,328($sp)
    sd	$a0,288($sp)
    sd	$at,240($sp)
    ld	$v1,448($sp)
    ld	$t2,264($sp)
    ld	$a2,336($sp)
    ld	$a1,200($sp)
    sltu	$a2,$zero,$a2
    sd	$a2,224($sp)
    slt	$a1,$a1,$t2
    sd	$a1,192($sp)
    lui	$v0,0x2
    addu	$v1,$v1,$v1
    sd	$v1,408($sp)
    lui	$t3,0x1
    slt	$v0,$t2,$v0
    sd	$v0,184($sp)
    ori	$t3,$t3,0xf000
    ld	$ra,120($sp)
    slt	$t2,$t2,$t3
    lui	$t9,0x7
    ld	$t8,136($sp)
    sd	$t2,208($sp)
    ori	$t9,$t9,0xffff
    sll	$ra,$ra,0x6
    and	$ra,$ra,$t9
    sd	$ra,392($sp)
    sll	$t8,$t8,0x6
    and	$t8,$t8,$t9
    sd	$t8,384($sp)
    ld	$t8,424($sp)
    li	$s5,1
    b	.L0d957f60
    sw	$t8,4($sp)
.L0d957f30:
    sd	$zero,280($sp)
    # Line 2501
    lw	$a6,20($sp)
.L0d957f38:
    ld	$t0,240($sp)
    ld	$t2,256($sp)
    ld	$t1,400($sp)
    ld	$a7,336($sp)
    ld	$a5,280($sp)
    movz	$t1,$t2,$a7
    sd	$t1,400($sp)
    movn	$a6,$t0,$a7
    blez	$a5,.L0d958470
    sw	$a6,20($sp)
.L0d957f60:
    # Line 2350
    ld	$t3,256($sp)
    lw	$t9,20($sp)
    ld	$t8,224($sp)
    movn	$t3,$t9,$t8
    andi	$t3,$t3,0xfff
    beqz	$t3,.L0d958408
    # Line 2369
    ld	$a1,264($sp)
    ld	$t8,264($sp)
    blez	$t8,.L0d957fd0
    lui	$a3,0x1
    ld	$t9,208($sp)
    beqz	$t9,.L0d957fd0
    lui	$a3,0x1
    ld	$ra,264($sp)
    lui	$v0,0x1
    ori	$v0,$v0,0xf000
    mtc1	$ra,$f27
    mtc1	$v0,$f25
    cvt.d.w	$f27,$f27
    cvt.d.w	$f25,$f25
    div.d	$f25,$f25,$f27
    trunc.w.d	$f25,$f25
    mfc1	$at,$f25
    mult	$ra,$at
    mflo	$a3
    b	.L0d957fd4
    teq	$ra,$zero,0x7
    lui	$a3,0x1
.L0d957fd0:
    ori	$a3,$a3,0xf000
.L0d957fd4:
    # Line 2371
    ld	$t0,264($sp)
.L0d957fd8:
    mtc1	$a3,$f27
    mtc1	$t0,$f29
    cvt.d.w	$f27,$f27
    cvt.d.w	$f29,$f29
    div.d	$f27,$f27,$f29
    trunc.w.d	$f27,$f27
    # Line 2373
    ld	$a6,232($sp)
    # Line 2371
    mfc1	$a7,$f27
    li	$a5,1
    teq	$t0,$zero,0x7
    slt	$a4,$a7,$a5
    # Line 2373
    beqz	$a6,.L0d958050
    # Line 2371
    movn	$a7,$a5,$a4
    # Line 2373
    lwc1	$f4,32252($s0)
    c.lt.s $f4,$f26
    bc1f .L0d958054
    # Line 2376
    ld	$t2,280($sp)
    # Line 2375
    mtc1	$a7,$f29
    cvt.s.w	$f29,$f29
    mul.s	$f29,$f29,$f4
    trunc.w.s	$f29,$f29
    cvt.s.w	$f29,$f29
    div.s	$f29,$f29,$f4
    trunc.w.s	$f29,$f29
    # Line 2376
    ld	$t1,264($sp)
    # Line 2375
    mfc1	$a7,$f29
    # Line 2376
    mult	$t1,$a7
    mflo	$a3
    nop
    nop
.L0d958050:
    ld	$t2,280($sp)
.L0d958054:
    slt	$t2,$a7,$t2
    beqz	$t2,.L0d9580e0
    # Line 2385
    ld	$a0,280($sp)
    # Line 2380
    sd	$a7,440($sp)
    # Line 2381
    sd	$a3,360($sp)
    # Line 2383
    ld	$ra,256($sp)
    # Line 2393
    ld	$t3,248($sp)
    li	$t8,5
    ld	$t9,280($sp)
    # Line 2383
    addu	$ra,$a3,$ra
    sd	$ra,256($sp)
    # Line 2382
    subu	$t9,$t9,$a7
    # Line 2393
    bne	$t3,$t8,.L0d958118
    sd	$t9,280($sp)
.L0d95808c:
    ld	$v1,416($sp)
    bnez	$v1,.L0d958118
    ld	$a3,360($sp)
    ld	$a2,400($sp)
    ld	$at,216($sp)
    # Line 2398
    # lw $t9, -32740($gp) # &sub_0d950000
    # Line 2393
    subu	$at,$at,$a2
    # Line 2398
    addiu	$t9,$t9,12160
    # Line 2393
    slt	$ra,$at,$a3
    # Line 2398
    ld	$a1,352($sp)
    movn	$a3,$at,$ra
    move	$a0,$s0
    bal __glCrmPickAllProcs
    sd	$a3,360($sp)
    bnez	$v0,.L0d95811c
    # Line 2403
    ld	$a4,440($sp)
    # Line 2400
    b	.L0d958470
    sd	$zero,272($sp)
    nop
    nop
    nop
.L0d9580e0:
    # Line 2386
    ld	$a1,264($sp)
    mult	$a1,$a0
    # Line 2388
    ld	$a2,200($sp)
    # Line 2393
    ld	$v0,248($sp)
    # Line 2388
    subu	$a1,$a1,$a2
    ld	$a2,192($sp)
    # Line 2386
    mflo	$a3
    # Line 2390
    sd	$zero,280($sp)
    # Line 2393
    li	$v1,5
    # Line 2388
    subu	$a1,$a3,$a1
    # Line 2385
    sd	$a0,440($sp)
    movz	$a1,$a3,$a2
    # Line 2393
    beq	$v0,$v1,.L0d95808c
    sd	$a1,360($sp)
.L0d958118:
    # Line 2403
    ld	$a4,440($sp)
.L0d95811c:
    blez	$a4,.L0d957f38
    # Line 2501
    lw	$a6,20($sp)
    # Line 2403
    ld	$a6,400($sp)
    ld	$a5,216($sp)
    subu	$a5,$a5,$a6
    b	.L0d9582f0
    sd	$a5,368($sp)
    nop
    nop
.L0d958140:
    # Line 2469
    ld	$a7,416($sp)
    bnez	$a7,.L0d958284
    # Line 2474
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d95814c:
    # Line 2481
    sw	$zero,64($sp)
    lw	$t0,64($sp)
    sw	$t0,10736($s1)
    # Line 2487
    ld	$t2,448($sp)
.L0d95815c:
    # Line 2485
    ld	$s3,408($sp)
    # Line 2481
    lbu	$t1,32209($s0)
    # Line 2487
    addu	$t2,$t2,$s4
    # Line 2489
    ld	$t3,432($sp)
    # Line 2485
    addu	$s3,$s3,$s4
    # Line 2489
    beqz	$s6,.L0d9582e4
    movz	$s3,$t2,$t1
    beq	$t3,$s2,.L0d9582b4
    # Line 2494
    ld	$a0,400($sp)
.L0d958180:
    # Line 2431
    beqz	$s5,.L0d9581dc
    ld	$t9,424($sp)
    lw	$t8,32096($s0)
    # Line 2438
    ld	$a5,384($sp)
    # Line 2431
    beq	$t8,$t9,.L0d9581b4
    # Line 2440
    ld	$a2,392($sp)
    # Line 2437
    lw	$ra,4($sp)
    lw	$v1,32184($s0)
    ld	$v0,424($sp)
    sw	$v0,8288($v1)
    lw	$at,32188($s0)
    sw	$ra,8288($at)
    sw	$ra,32096($s0)
.L0d9581b4:
    # Line 2438
    sw	$a5,48($sp)
    lw	$a4,48($sp)
    lw	$a3,48($sp)
    sw	$a4,8320($s1)
    sw	$a3,8320($s8)
    # Line 2440
    sw	$a2,52($sp)
    lw	$a1,52($sp)
    lw	$a0,52($sp)
    sw	$a1,8328($s1)
    sw	$a0,8328($s8)
.L0d9581dc:
    beqz	$s6,.L0d958370
    # Line 2447
    ld	$t1,440($sp)
    # Line 2444
    move	$s4,$s3
    # Line 2445
    ld	$a6,448($sp)
    addu	$s2,$s2,$a6
.L0d9581f0:
    # Line 2454
    lui	$t1,0x7
    sll	$t3,$s3,0x6
    ori	$t1,$t1,0xffff
    and	$t3,$t1,$t3
    sw	$t3,56($sp)
    # Line 2455
    sll	$t2,$s4,0x6
    # Line 2454
    lw	$a7,56($sp)
    # Line 2455
    and	$t1,$t1,$t2
    sw	$t1,60($sp)
    lw	$t0,60($sp)
    sw	$t0,8332($s1)
    beqz	$s5,.L0d958260
    # Line 2454
    sw	$a7,8324($s1)
    # Line 2455
    lbu	$t2,32202($s0)
    beqz	$t2,.L0d958240
    # Line 2463
    lw	$s5,36($sp)
    # Line 2459
    # lw $t9, -31600($gp) # &__glCrmSetupPixelRenderOps
    bal __glCrmSetupPixelRenderOps
    move	$a0,$s0
    # Line 2463
    lw	$s5,36($sp)
.L0d958240:
    # Line 2461
    lw	$t9,32($sp)
    sw	$t9,8360($s1)
    lw	$t8,32($sp)
    sw	$t8,8360($s8)
    # Line 2463
    sw	$s5,8364($s1)
    lw	$t3,36($sp)
    move	$s5,$zero
    sw	$t3,8364($s8)
.L0d958260:
    beqz	$s7,.L0d958140
    # Line 2469
    lw	$v0,24($sp)
    ld	$ra,416($sp)
    sw	$v0,8352($s1)
    lw	$at,24($sp)
    move	$s7,$zero
    beqz	$ra,.L0d95814c
    sw	$at,8352($s8)
    # Line 2474
    # lw $t9, -32740($gp) # &sub_0d950000
.L0d958284:
    ld	$a1,352($sp)
    addiu	$t9,$t9,12160
    ld	$a2,376($sp)
    move	$a0,$s0
    bal __glCrmPickAllProcs
    ld	$a3,360($sp)
    bnez	$v0,.L0d95815c
    # Line 2487
    ld	$t2,448($sp)
    # Line 2478
    sd	$zero,440($sp)
    sd	$zero,272($sp)
    sd	$zero,280($sp)
.L0d9582b0:
    # Line 2494
    ld	$a0,400($sp)
.L0d9582b4:
    ld	$at,344($sp)
    # Line 2495
    ld	$v0,440($sp)
    # Line 2494
    ld	$ra,368($sp)
    addu	$a1,$at,$a0
    # Line 2495
    addiu	$v1,$v0,-1
    movn	$a0,$a1,$s6
    sd	$a0,400($sp)
    # Line 2494
    subu	$at,$ra,$at
    movn	$v0,$v1,$s6
    sd	$v0,440($sp)
    movn	$ra,$at,$s6
    sd	$ra,368($sp)
.L0d9582e4:
    # Line 2493
    ld	$a2,440($sp)
    blez	$a2,.L0d957f38
    # Line 2501
    lw	$a6,20($sp)
.L0d9582f0:
    # Line 2408
    add.s	$f20,$f20,$f22
    # Line 2412
    ld	$a7,320($sp)
    # Line 2408
    trunc.w.s	$f31,$f20
    # Line 2415
    ld	$a0,400($sp)
    # Line 2408
    ld	$a6,328($sp)
    mfc1	$a3,$f31
    ld	$a5,368($sp)
    ld	$a4,336($sp)
    slt	$a5,$a5,$a6
    beq	$a3,$s2,.L0d9582b0
    sd	$a3,432($sp)
    beqz	$a4,.L0d9583fc
    # Line 2431
    ld	$v1,400($sp)
    # Line 2408
    bnez	$a5,.L0d957f30
    nop
    # Line 2412
    bnez	$a7,.L0d9583cc
    lw	$t9,32344($s0)
    # Line 2415
    beqz	$t9,.L0d958350
    sd	$a0,376($sp)
    # Line 2417
    ld	$a0,400($sp)
    lw	$a1,44($sp)
    jal	sub_0d950000
    ld	$a2,312($sp)
    # Line 2418
    lw	$a0,44($sp)
.L0d958350:
    # Line 2420
    lw	$a1,20($sp)
    # lw $t9, -31576($gp) # &__GL_CRM_SCALE_PIXEL_SPAN
    lw	$a2,40($sp)
    ld	$a3,296($sp)
    bal __GL_CRM_SCALE_PIXEL_SPAN
    ld	$a4,304($sp)
    b	.L0d9583e0
    nop
.L0d958370:
    # Line 2447
    mtc1	$t1,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,32252($s0)
    mul.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f24
    trunc.w.d	$f0,$f0
    mfc1	$t8,$f0
    # Line 2449
    li	$v0,1
    slti	$at,$t8,1
    ld	$t9,448($sp)
    movn	$t8,$v0,$at
    addiu	$ra,$t8,-1
    mult	$t9,$ra
    mflo	$s4
    nop
    nop
    # Line 2450
    mult	$t8,$t9
    # Line 2449
    addu	$s4,$s3,$s4
    # Line 2450
    mflo	$t2
    # Line 2451
    sd	$zero,440($sp)
    b	.L0d9581f0
    # Line 2450
    addu	$s2,$s2,$t2
.L0d9583cc:
    # Line 2423
    lw	$a1,20($sp)
    ld	$a2,312($sp)
    ld	$a0,400($sp)
    jal	__GL_CRM_SCALE_PIXEL_SPAN
    sd	$a0,376($sp)
.L0d9583e0:
    # Line 2429
    ld	$v0,288($sp)
    # Line 2425
    lw	$at,20($sp)
    sw	$at,24($sp)
    # Line 2429
    addu	$at,$v0,$at
    sw	$at,20($sp)
.L0d9583f4:
    b	.L0d958180
    # Line 2431
    li	$s7,1
.L0d9583fc:
    sd	$v1,376($sp)
    b	.L0d9583f4
    sw	$v1,24($sp)
.L0d958408:
    # Line 2369
    blez	$a1,.L0d958448
    ld	$a2,184($sp)
    beqz	$a2,.L0d958448
    lui	$a6,0x2
    ld	$a4,264($sp)
    mtc1	$a6,$f1
    mtc1	$a4,$f2
    cvt.d.w	$f1,$f1
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a5,$f1
    mult	$a4,$a5
    mflo	$a3
    b	.L0d958450
    teq	$a4,$zero,0x7
.L0d958448:
    lui	$a3,0x1
    ori	$a3,$a3,0xf000
.L0d958450:
    b	.L0d957fd8
    # Line 2371
    ld	$t0,264($sp)
.L0d958458:
    # Line 2501
    sd	$a4,272($sp)
    sdc1	$f24,464($sp)
    sdc1	$f26,456($sp)
    sd	$s7,496($sp)
    sd	$s5,504($sp)
    sd	$s4,72($sp)
.L0d958470:
    # Line 2504
    mtc1	$s3,$f2
    ld	$s2,112($sp)
    # Line 2506
    ld	$a5,248($sp)
    # Line 2504
    cvt.s.w	$f2,$f2
    # Line 2506
    ld	$a7,72($sp)
    li	$a6,5
    ld	$s3,88($sp)
    beq	$a5,$a6,.L0d958728
    # Line 2504
    swc1	$f2,200($a7)
.L0d958494:
    # Line 2512
    lw	$t0,32092($s0)
.L0d958498:
    lw	$v0,32088($s0)
    beq	$t0,$v0,.L0d9584c4
    # Line 2515
    ld	$t9,128($sp)
    # Line 2514
    lw	$t8,32184($s0)
    sw	$v0,8216($t8)
    lw	$t3,32188($s0)
    lw	$t2,32088($s0)
    sw	$t2,8216($t3)
    lw	$t1,32088($s0)
    sw	$t1,32092($s0)
    # Line 2515
    ld	$t9,128($sp)
.L0d9584c4:
    beqz	$t9,.L0d9584e0
    # Line 2518
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    # Line 2515
    lw	$ra,32088($s0)
    sll	$ra,$ra,0x18
    bltz	$ra,.L0d9587f8
    # Line 2516
    lui	$t8,0x1
.L0d9584dc:
    # Line 2518
    # lw $t9, -31848($gp) # &__glCrmSetReadBuffer
.L0d9584e0:
    move	$a0,$s0
    jal	__glCrmSetReadBuffer
    lw	$a1,11764($s0)
    lw	$at,32300($s0)
    lw	$a1,11760($s0)
    bne	$at,$a1,.L0d9585e8
    # Line 2520
    ld	$v0,320($sp)
.L0d9584fc:
    beqz	$v0,.L0d9588c8
    nop
.L0d958504:
    # Line 2528
    lw	$v1,32216($s0)
.L0d958508:
    beqz	$v1,.L0d958528
    nop
    beqz	$s2,.L0d958528
    nop
    beqz	$s3,.L0d958528
    nop
    # Line 2530
    sw	$s3,32304($s0)
    # Line 2529
    sw	$s2,32316($s0)
.L0d958528:
    ld	$s3,528($sp)
    ld	$s2,536($sp)
    ld	$s6,544($sp)
    ld	$s5,504($sp)
    ld	$s7,496($sp)
    ldc1	$f22,480($sp)
    ldc1	$f20,472($sp)
    ldc1	$f24,464($sp)
    ldc1	$f26,456($sp)
    # Line 2532
    ld	$v0,272($sp)
    ld	$gp,168($sp)
    ld	$s0,152($sp)
    ld	$ra,520($sp)
    ld	$s1,144($sp)
    ld	$s4,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0d958570:
    # Line 2208
    mtc1	$a7,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f5,32252($s0)
    div.s	$f3,$f3,$f5
    ldc1	$f5,_lit8_3fe0000000000000
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f5
    trunc.w.d	$f3,$f3
    lw	$v1,32276($s0)
    mfc1	$a1,$f3
    # Line 2207
    lw	$s3,208($s4)
    sdc1	$f20,472($sp)
    # Line 2208
    slt	$a0,$v1,$a1
    sd	$s2,536($sp)
    movz	$v1,$a1,$a0
    b	.L0d957adc
    sd	$v1,280($sp)
.L0d9585b4:
    # Line 2532
    ld	$gp,168($sp)
    ld	$s0,152($sp)
    ld	$ra,520($sp)
    ld	$s1,144($sp)
    # Line 2132
    move	$v0,$zero
    # Line 2532
    ld	$s4,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0d9585d8:
    # Line 2282
    jalr	$t9
    move	$a0,$s0
    b	.L0d957d40
    ld	$a4,320($sp)
.L0d9585e8:
    # Line 2520
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    jal	__glCrmSetDrawBuffer
    move	$a0,$s0
    b	.L0d9584fc
    ld	$v0,320($sp)
.L0d9585fc:
    # Line 2209
    lbu	$a0,32209($s0)
    beqz	$a0,.L0d9589f0
    lwc1	$f4,200($s4)
    # Line 2212
    mov.s	$f5,$f4
    sd	$s3,528($sp)
.L0d958610:
    trunc.w.s	$f6,$f5
    sdc1	$f20,472($sp)
    sd	$s2,536($sp)
    b	.L0d957adc
    mfc1	$s3,$f6
.L0d958624:
    ld	$s2,536($sp)
    ld	$s3,528($sp)
    ldc1	$f20,472($sp)
    # Line 2532
    ld	$gp,168($sp)
    ld	$s0,152($sp)
    ld	$ra,520($sp)
    ld	$s1,144($sp)
    # Line 2258
    move	$v0,$zero
    # Line 2532
    ld	$s4,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0d958654:
    ld	$gp,168($sp)
    ld	$s0,152($sp)
    ld	$ra,520($sp)
    ld	$s1,144($sp)
    # Line 2135
    li	$v0,1
    # Line 2532
    ld	$s4,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0d958678:
    # Line 2146
    lh	$v0,1674($s0)
    li	$a2,255
    beq	$v0,$a2,.L0d958a1c
    # Line 2147
    sll	$a3,$v0,0x18
    beqz	$a3,.L0d958aa4
    sd	$a3,128($sp)
    # Line 2152
    ld	$a4,128($sp)
    sw	$a4,8632($s1)
    # Line 2151
    ori	$a1,$a1,0x80
    # Line 2152
    sw	$a4,8632($s8)
.L0d9586a0:
    # Line 2154
    li	$a2,-121
    and	$a1,$a1,$a2
    b	.L0d9586d0
    ori	$a1,$a1,0x40
.L0d9586b0:
    # Line 2163
    lw	$a4,32088($s0)
    sw	$a4,0($sp)
    # Line 2167
    lw	$a1,0($sp)
    ld	$a2,-22188($gp)
    lui	$a3,0x20
    or	$a1,$a1,$a3
    sd	$zero,128($sp)
    and	$a1,$a1,$a2
.L0d9586d0:
    lw	$a5,32092($s0)
    beq	$a5,$a1,.L0d957980
    nop
    b	.L0d957968
    sw	$a1,0($sp)
.L0d9586e4:
    b	.L0d957e28
    # Line 2340
    mov.s	$f22,$f4
.L0d9586ec:
    # Line 2349
    lbu	$a6,32212($s0)
    beqz	$a6,.L0d958704
    lw	$t0,-21572($gp)
    lw	$a7,32216($s0)
    beqz	$a7,.L0d958a54
    lw	$t0,-21572($gp)
.L0d958704:
    beqz	$t0,.L0d958a2c
    # Line 2351
    lw	$t2,-21568($gp)
    sd	$zero,416($sp)
    sd	$zero,96($sp)
    ld	$t1,352($sp)
    sd	$zero,80($sp)
    ori	$t1,$t1,0x20
    b	.L0d957e6c
    sd	$t1,352($sp)
.L0d958728:
    # Line 2506
    lbu	$t2,32212($s0)
    ld	$s2,112($sp)
    beqz	$t2,.L0d958740
    ld	$s3,88($sp)
    lw	$t3,32216($s0)
    beqz	$t3,.L0d958494
.L0d958740:
    # Line 2507
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s0
    # Line 2508
    lw	$t8,-21572($gp)
    beqz	$t8,.L0d958a64
    # Line 2512
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d958758:
    ld	$a1,352($sp)
    li	$a3,-97
    addiu	$t9,$t9,12160
    move	$a0,$s0
    and	$a1,$a1,$a3
    lw	$a2,32336($s0)
    bal __glCrmPickAllProcs
    move	$a3,$zero
    b	.L0d958498
    lw	$t0,32092($s0)
.L0d958780:
    # Line 2157
    ori	$v0,$a1,0x38
    beq	$v0,$t1,.L0d958a24
    move	$a1,$v0
    sw	$v0,0($sp)
    b	.L0d957968
    sd	$zero,128($sp)
.L0d958798:
    # Line 2169
    b	.L0d957980
    sd	$zero,128($sp)
.L0d9587a0:
    # Line 2300
    lw	$a4,32344($s0)
    bnez	$a4,.L0d958a8c
.L0d9587a8:
    # Line 2312
    ld	$a5,232($sp)
    bnez	$a5,.L0d957d7c
    sd	$s6,544($sp)
.L0d9587b4:
    ld	$a6,296($sp)
    # Line 2334
    li	$s6,1
    b	.L0d957e08
    # Line 2333
    sw	$a6,36($sp)
.L0d9587c4:
    # Line 2226
    ld	$t1,296($sp)
    ld	$t0,304($sp)
    mult	$t0,$t1
    mflo	$a7
    b	.L0d957b34
    sd	$a7,288($sp)
.L0d9587dc:
    # Line 2252
    ld	$t3,280($sp)
    ld	$t2,288($sp)
    mult	$t2,$t3
    sd	$zero,112($sp)
    mflo	$v0
    b	.L0d957bd4
    sd	$zero,88($sp)
.L0d9587f8:
    # Line 2516
    addu	$t8,$s0,$t8
    lw	$t9,-32576($t8)
    sw	$t9,8632($s1)
    lw	$t8,-32576($t8)
    b	.L0d9584dc
    sw	$t8,8632($s8)
.L0d958810:
    # Line 2532
    ld	$gp,168($sp)
    ld	$s0,152($sp)
    ld	$ra,520($sp)
    ld	$s1,144($sp)
    # Line 2120
    move	$v0,$zero
    # Line 2532
    ld	$s4,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0d958834:
    # Line 2194
    mtc1	$a0,$f7
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f6
    ldc1	$f8,_lit8_3fe0000000000000
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f8
    trunc.w.d	$f7,$f7
    lw	$t9,32272($s0)
    mfc1	$at,$f7
    # Line 2193
    lw	$v1,204($s4)
    # Line 2194
    slt	$ra,$t9,$at
    # Line 2193
    sd	$v1,136($sp)
    movz	$t9,$at,$ra
    b	.L0d957a84
    sd	$t9,312($sp)
.L0d958870:
    # Line 2294
    lw	$t9,0($s0)
    ld	$a2,296($sp)
    ld	$a1,304($sp)
    move	$a0,$s0
    # Line 2292
    sw	$a2,32($sp)
    # Line 2294
    jal	sub_0d950000
    sll	$a1,$a1,0x2
    # Line 2296
    lwc1	$f4,196($s4)
    # Line 2299
    lw	$t2,240($s4)
    # Line 2296
    trunc.w.s	$f8,$f4
    # Line 2299
    ld	$a2,304($sp)
    # Line 2297
    lw	$t0,204($s4)
    # Line 2296
    mfc1	$a7,$f8
    # Line 2298
    lwc1	$f5,160($s4)
    # Line 2294
    sw	$v0,40($sp)
    # Line 2299
    blez	$a2,.L0d9587a0
    # Line 2297
    subu	$t0,$t0,$a7
    # Line 2299
    ld	$t1,304($sp)
    move	$t9,$zero
    move	$t8,$zero
    b	.L0d95893c
    slt	$t1,$zero,$t1
.L0d9588c8:
    # Line 2523
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,40($sp)
    lw	$t2,32344($s0)
    beqz	$t2,.L0d958504
    nop
    # Line 2525
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,44($sp)
    b	.L0d958508
    # Line 2528
    lw	$v1,32216($s0)
.L0d9588fc:
    # Line 2304
    beqz	$t1,.L0d958934
    nop
.L0d958904:
    # Line 2303
    beqz	$t0,.L0d958960
    addu	$a7,$a7,$t2
    # Line 2307
    subu	$t0,$t0,$t2
.L0d958910:
    # Line 2304
    beq	$t3,$a7,.L0d958934
    nop
    beqz	$t1,.L0d958934
    nop
    # Line 2303
    beqz	$t0,.L0d958a04
    addu	$a7,$a7,$t2
    # Line 2307
    subu	$t0,$t0,$t2
.L0d95892c:
    # Line 2304
    bne	$t3,$a7,.L0d9588fc
    nop
.L0d958934:
    # Line 2300
    beqz	$t1,.L0d9587a0
    addiu	$t8,$t8,1
.L0d95893c:
    # Line 2301
    add.s	$f4,$f4,$f5
    # Line 2302
    trunc.w.s	$f9,$f4
    mfc1	$t3,$f9
    beq	$t3,$a7,.L0d958934
    nop
    bnez	$t1,.L0d958904
    nop
    b	.L0d958934
    nop
.L0d958960:
    # Line 2305
    ld	$t1,304($sp)
    addiu	$v0,$v0,4
    addiu	$t9,$t9,1
    sw	$t8,-4($v0)
    b	.L0d958910
    slt	$t1,$t9,$t1
.L0d958978:
    # Line 2235
    lw	$t9,32324($s0)
    move	$a0,$s0
    sd	$v0,512($sp)
    jalr	$t9
    move	$a1,$zero
    # Line 2236
    ld	$t9,280($sp)
    ld	$t8,344($sp)
    mult	$t8,$t9
    lw	$t2,-21576($gp)
    mflo	$a2
    beqz	$t2,.L0d958b38
    sd	$a2,88($sp)
    # Line 2238
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12608
    sd	$a2,488($sp)
    bal __glCrmPickAllProcs
    move	$a0,$a2
    ld	$a7,488($sp)
    sd	$v0,112($sp)
.L0d9589c4:
    # Line 2242
    # lw $t9, -22808($gp) # &bcopy
    ld	$a0,256($sp)
    ld	$a1,112($sp)
    jal	bcopy
    move	$a2,$a7
    ld	$v0,512($sp)
    # Line 2243
    ld	$at,112($sp)
    sd	$at,256($sp)
    sw	$at,12($s4)
    b	.L0d957bd4
    sw	$at,32288($s0)
.L0d9589f0:
    # Line 2212
    lw	$a0,208($s4)
    mtc1	$a0,$f5
    sd	$s3,528($sp)
    b	.L0d958610
    cvt.s.w	$f5,$f5
.L0d958a04:
    # Line 2305
    ld	$t1,304($sp)
    addiu	$v0,$v0,4
    addiu	$t9,$t9,1
    sw	$t8,-4($v0)
    b	.L0d95892c
    slt	$t1,$t9,$t1
.L0d958a1c:
    b	.L0d9586a0
    # Line 2152
    sd	$zero,128($sp)
.L0d958a24:
    b	.L0d957980
    # Line 2169
    sd	$zero,128($sp)
.L0d958a2c:
    # Line 2351
    beqz	$t2,.L0d958b58
    # Line 2357
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 2354
    li	$t8,1
    sd	$t8,416($sp)
    sd	$zero,96($sp)
    ld	$t3,352($sp)
    sd	$zero,80($sp)
    ori	$t3,$t3,0x60
    b	.L0d957e6c
    sd	$t3,352($sp)
.L0d958a54:
    # Line 2359
    sd	$zero,416($sp)
    sd	$zero,96($sp)
    b	.L0d957e6c
    sd	$zero,80($sp)
.L0d958a64:
    # Line 2508
    lw	$t9,-21568($gp)
    bnez	$t9,.L0d958758
    # Line 2512
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    # Line 2509
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12544
    ld	$a0,80($sp)
    bal __glCrmPickAllProcs
    ld	$a1,96($sp)
    b	.L0d958758
    # Line 2512
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d958a8c:
    # Line 2312
    lw	$t9,0($s0)
    move	$a0,$s0
    jal	sub_0d950000
    ld	$a1,200($sp)
    b	.L0d9587a8
    sw	$v0,44($sp)
.L0d958aa4:
    # Line 2532
    ld	$gp,168($sp)
    ld	$s0,152($sp)
    ld	$ra,520($sp)
    ld	$s1,144($sp)
    li	$v0,1
    ld	$s4,160($sp)
    ld	$s8,176($sp)
    jr	$ra
    addiu	$sp,$sp,560
.L0d958ac8:
    # Line 2182
    lw	$t1,32268($s0)
    slti	$v1,$t1,16
    beqz	$v1,.L0d957a3c
    ld	$a0,344($sp)
    slt	$a0,$a0,$t0
    bnez	$a0,.L0d957a3c
    ld	$a4,344($sp)
    mult	$t1,$a4
    lui	$a3,0x1
    ori	$a3,$a3,0xf000
    mflo	$a2
    slt	$a2,$a2,$a3
    beqz	$a2,.L0d957a3c
    ld	$t0,280($sp)
    mtc1	$t0,$f10
    cvt.s.w	$f10,$f10
    lwc1	$f9,32244($s0)
    lwc1	$f8,32252($s0)
    madd.s	$f9,$f7,$f10,$f9
    mul.s	$f8,$f8,$f10
    trunc.w.s	$f8,$f8
    trunc.w.s	$f9,$f9
    mfc1	$a6,$f8
    mfc1	$a5,$f9
    bne	$a5,$a6,.L0d957a40
    move	$t0,$zero
    b	.L0d957a40
    li	$t0,1
.L0d958b38:
    # Line 2240
    lw	$t9,0($s0)
    move	$a0,$s0
    sd	$a2,488($sp)
    jalr	$t9
    move	$a1,$a2
    ld	$a7,488($sp)
    b	.L0d9589c4
    sd	$v0,112($sp)
.L0d958b58:
    # Line 2357
    addiu	$t9,$t9,12400
    ld	$a0,256($sp)
    bal __glCrmPickAllProcs
    ld	$a1,104($sp)
    # Line 2359
    ld	$at,104($sp)
    # Line 2358
    ld	$ra,256($sp)
    # Line 2359
    sd	$zero,416($sp)
    movz	$at,$zero,$v0
    sd	$at,96($sp)
    movz	$ra,$zero,$v0
    b	.L0d957e6c
    sd	$ra,80($sp)
.end crmDrawPixelsXfer2

# Function: crmReadPixelsXfer
# Declared: Line 2539 (Source lines: 2540-2836)
# Address: 0x0d958b90 - 0x0d9597ac (Size: 3100 bytes, Frame: 224)
.globl crmReadPixelsXfer
.ent crmReadPixelsXfer
crmReadPixelsXfer:
    # Line 2540
    addiu	$sp,$sp,-352
    # Line 2558
    lw	$at,172($a1)
    sd	$at,224($sp)
    # Line 2540
    sd	$s3,152($sp)
    # Line 2559
    lw	$s3,168($a1)
    # Line 2540
    sd	$s7,120($sp)
    # Line 2555
    lw	$s7,32188($a0)
    # Line 2540
    sd	$s0,136($sp)
    # Line 2555
    lw	$s0,32184($a0)
    sd	$s1,304($sp)
    sd	$ra,312($sp)
    # Line 2540
    move	$v0,$a1
    sd	$s4,144($sp)
    lui	$v1,0x10
    move	$s4,$a0
    sd	$s6,336($sp)
    addiu	$v1,$v1,-32260
    sd	$gp,128($sp)
    # Line 2561
    beqz	$at,.L0d95944c
    # Line 2540
    addu	$gp,$t9,$v1
    # Line 2561
    beqz	$s3,.L0d959450
    ld	$s6,336($sp)
    # Line 2562
    lw	$a1,32296($s4)
    lw	$a0,11764($a0)
    bne	$a0,$a1,.L0d959380
    sd	$v0,112($sp)
    # Line 2569
    lw	$v0,32216($s4)
.L0d958bfc:
    li	$a1,3074
    sd	$s5,320($sp)
    beq	$v0,$a1,.L0d959604
    sd	$s2,344($sp)
.L0d958c0c:
    # Line 2575
    lw	$a3,32292($s4)
    srl	$t8,$a3,0x8
    li	$s5,1
    andi	$t8,$t8,0x3
    sllv	$s5,$s5,$t8
    # Line 2576
    mult	$s3,$s5
    mflo	$s2
    # Line 2578
    beqz	$v0,.L0d9593c8
    la	$a4,sub_0d960000
.L0d958c30:
    li	$v0,1
.L0d958c34:
    sd	$s8,328($sp)
.L0d958c38:
    andi	$s8,$v0,0xff
    beqz	$s8,.L0d959618
    # Line 2585
    ld	$a2,112($sp)
.L0d958c44:
    # Line 2596
    beqz	$s8,.L0d9595fc
    # Line 2615
    lw	$a4,12($sp)
.L0d958c4c:
    # Line 2596
    andi	$t9,$s2,0x7
    beqz	$t9,.L0d958c80
    # Line 2607
    ld	$v0,224($sp)
.L0d958c58:
    # Line 2604
    addu	$s2,$s5,$s2
    andi	$ra,$s2,0x7
    # Line 2603
    addiu	$s3,$s3,1
    # Line 2604
    beqz	$ra,.L0d958c7c
    nop
    addu	$s2,$s5,$s2
    andi	$at,$s2,0x7
    bnez	$at,.L0d958c58
    # Line 2603
    addiu	$s3,$s3,1
.L0d958c7c:
    # Line 2607
    ld	$v0,224($sp)
.L0d958c80:
    mult	$s2,$v0
    # Line 2608
    lw	$t9,32324($s4)
    move	$a0,$s4
    # Line 2606
    sw	$s2,8($sp)
    # Line 2607
    mflo	$a1
    # Line 2608
    jalr	$t9
    # Line 2607
    sw	$a1,4($sp)
    # Line 2610
    lw	$a2,32320($s4)
    # Line 2609
    sd	$v0,216($sp)
    # Line 2610
    beqz	$a2,.L0d958d28
    # Line 2608
    sw	$v0,24($sp)
    # Line 2610
    sltu	$a0,$v0,$a2
    bnez	$a0,.L0d958d28
    lui	$a1,0x2
    addu	$a1,$a2,$a1
    sltu	$a1,$v0,$a1
    beqz	$a1,.L0d958d28
    nop
    # Line 2611
    lw	$a2,32292($s4)
    li	$a3,-7169
    and	$a2,$a2,$a3
    # Line 2615
    ld	$a3,216($sp)
    # Line 2611
    li	$a4,4
    sw	$a4,16($sp)
    # Line 2612
    sw	$a4,20($sp)
    # Line 2611
    ori	$a2,$a2,0x1000
    # Line 2615
    bnez	$a3,.L0d958d50
    # Line 2611
    sw	$a2,32292($s4)
.L0d958cf0:
    ld	$s2,344($sp)
    ld	$s6,336($sp)
    ld	$s8,328($sp)
    ld	$s5,320($sp)
    ld	$s1,304($sp)
    # Line 2836
    ld	$gp,128($sp)
    ld	$s0,136($sp)
    ld	$ra,312($sp)
    ld	$s3,152($sp)
    # Line 2619
    move	$v0,$zero
    # Line 2836
    ld	$s4,144($sp)
    ld	$s7,120($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d958d28:
    # Line 2614
    lw	$a5,32292($s4)
    # Line 2615
    sw	$zero,20($sp)
    # Line 2614
    li	$a6,-7169
    li	$a7,5
    sw	$a7,16($sp)
    and	$a5,$a5,$a6
    ori	$a5,$a5,0x1400
    sw	$a5,32292($s4)
.L0d958d48:
    # Line 2615
    ld	$t0,216($sp)
    beqz	$t0,.L0d958cf0
.L0d958d50:
    # Line 2619
    lw	$t1,-21584($gp)
    beqz	$t1,.L0d9594ec
    # Line 2622
    la	$a0,sub_0da40000
    # lw $t9, -22892($gp) # &printf
    la	$t2,sub_0da40000
    la	$a1,sub_0da40000
    addiu	$a0,$a0,8112
    addiu	$t2,$t2,8096
    addiu	$a1,$a1,8080
    jal	printf
    movz	$a1,$t2,$s8
    # Line 2625
    beqz	$s8,.L0d9594fc
    # Line 2633
    lw	$s6,8($sp)
.L0d958d84:
    # Line 2640
    lw	$t3,32092($s4)
.L0d958d88:
    lui	$a2,0x60
    ori	$a2,$a2,0x78
    beq	$a2,$t3,.L0d958db0
    nop
    # Line 2641
    lw	$a4,32184($s4)
    sw	$a2,8216($a4)
    lw	$a3,32188($s4)
    sw	$a2,28($sp)
    sw	$a2,8216($a3)
    sw	$a2,32092($s4)
.L0d958db0:
    lw	$a3,32292($s4)
    srl	$a6,$a3,0x8
    li	$a5,1
    andi	$a6,$a6,0x3
    beq	$a5,$a6,.L0d959560
    lw	$a1,-21584($gp)
.L0d958dc8:
    # Line 2646
    sw	$a3,8200($s0)
    lw	$t9,32292($s4)
    sw	$t9,8200($s7)
    # Line 2651
    ld	$t9,112($sp)
    # Line 2658
    sd	$s2,272($sp)
    # Line 2651
    lwc1	$f1,188($t9)
    # Line 2658
    slt	$a7,$s2,$s6
    sd	$a7,192($sp)
    # Line 2655
    lw	$t0,40($sp)
    # Line 2656
    li	$t2,1
    # Line 2649
    lw	$t3,32($sp)
    lui	$s1,0xff
    # Line 2651
    trunc.w.s	$f1,$f1
    # Line 2649
    lui	$t8,0x300
    ori	$s1,$s1,0xffff
    # Line 2652
    lwc1	$f0,192($t9)
    # Line 2656
    sw	$t2,48($sp)
    # Line 2649
    and	$t3,$t3,$s1
    lui	$s1,0x3
    # Line 2651
    mfc1	$a2,$f1
    # Line 2657
    sw	$t2,52($sp)
    # Line 2655
    andi	$t0,$t0,0xffff
    # Line 2649
    nor	$s1,$s1,$zero
    # Line 2658
    sw	$s5,60($sp)
    # Line 2649
    or	$t3,$t3,$t8
    # Line 2652
    trunc.w.s	$f0,$f0
    # Line 2655
    andi	$t1,$a2,0x7ff
    # Line 2649
    and	$t3,$t3,$s1
    sd	$t3,288($sp)
    # Line 2655
    sll	$t1,$t1,0x10
    # Line 2652
    mfc1	$s1,$f0
    # Line 2655
    or	$t0,$t0,$t1
    # Line 2658
    beqz	$a7,.L0d958e60
    sd	$t0,248($sp)
    # Line 2660
    lw	$ra,60($sp)
    subu	$at,$s6,$s2
    addu	$ra,$ra,$at
    sw	$ra,60($sp)
.L0d958e60:
    # Line 2667
    lw	$v0,16($sp)
    li	$v1,5
    beq	$v0,$v1,.L0d95957c
    nop
    # Line 2677
    sd	$zero,232($sp)
    sd	$zero,104($sp)
    sd	$zero,96($sp)
.L0d958e7c:
    # Line 2668
    ld	$a0,224($sp)
    blez	$a0,.L0d9592a8
    # Line 2778
    li	$a5,1
    # Line 2668
    li	$v0,1
    sd	$v0,176($sp)
    sd	$s8,88($sp)
    lui	$s8,0x7
    sd	$s5,80($sp)
    sll	$a4,$a2,0x6
    ori	$s8,$s8,0xffff
    and	$a4,$a4,$s8
    sd	$a4,256($sp)
    lui	$a3,0x1
    ld	$ra,272($sp)
    ori	$a3,$a3,0xf000
    slt	$a3,$s6,$a3
    sd	$a3,200($sp)
    addu	$a1,$s3,$a2
    ld	$a3,288($sp)
    subu	$at,$s6,$ra
    sd	$at,184($sp)
    lui	$at,0x2
    slt	$ra,$s6,$ra
    slt	$at,$s6,$at
    sd	$at,168($sp)
    addiu	$a1,$a1,-1
    xori	$ra,$ra,0x1
    sd	$ra,208($sp)
    li	$s5,1
    sll	$a1,$a1,0x6
    sw	$a3,32($sp)
    and	$a1,$s8,$a1
    b	.L0d95979c
    sd	$a1,264($sp)
    nop
    nop
    nop
.L0d958f10:
    # Line 2767
    lw	$v1,56($sp)
    sw	$v1,10416($s0)
    # Line 2770
    ld	$a1,280($sp)
.L0d958f1c:
    lbu	$a0,32210($s4)
    subu	$a2,$s1,$a1
    # Line 2772
    subu	$s2,$s2,$a1
    # Line 2771
    addiu	$s1,$a2,-1
    # Line 2770
    subu	$a1,$s3,$a1
    movz	$s1,$a2,$a0
    # Line 2771
    addiu	$s3,$a1,-1
    # Line 2775
    ld	$a2,272($sp)
    # Line 2772
    blez	$s2,.L0d9590ac
    movz	$s3,$a1,$a0
    # Line 2774
    lw	$a4,0($sp)
    addu	$a4,$s6,$a4
    sw	$a4,0($sp)
    # Line 2775
    lw	$a3,0($sp)
    blez	$s2,.L0d9590ac
    addu	$a2,$a2,$a3
.L0d958f5c:
    # Line 2739
    sll	$a3,$s1,0x6
    # Line 2725
    beqz	$s5,.L0d958fbc
    ld	$a6,288($sp)
    lw	$a5,32096($s4)
    # Line 2733
    ld	$v0,256($sp)
    # Line 2725
    beq	$a5,$a6,.L0d958f94
    # Line 2735
    ld	$t9,264($sp)
    # Line 2732
    lw	$a7,32($sp)
    lw	$t2,32184($s4)
    ld	$t1,288($sp)
    sw	$t1,8288($t2)
    lw	$t0,32188($s4)
    sw	$a7,8288($t0)
    sw	$a7,32096($s4)
.L0d958f94:
    # Line 2733
    sw	$v0,64($sp)
    lw	$at,64($sp)
    lw	$ra,64($sp)
    sw	$at,8320($s0)
    sw	$ra,8320($s7)
    # Line 2735
    sw	$t9,68($sp)
    lw	$t8,68($sp)
    lw	$t3,68($sp)
    sw	$t8,8328($s0)
    sw	$t3,8328($s7)
.L0d958fbc:
    # Line 2747
    lw	$a5,60($sp)
    # Line 2739
    and	$a3,$s8,$a3
    sw	$a3,72($sp)
    lw	$v1,72($sp)
    sw	$v1,8324($s0)
    # Line 2740
    sll	$a1,$s3,0x6
    and	$a1,$s8,$a1
    sw	$a1,76($sp)
    lw	$a0,76($sp)
    beqz	$s5,.L0d959018
    sw	$a0,8332($s0)
    # Line 2743
    lw	$t1,48($sp)
    sw	$t1,8360($s0)
    # Line 2745
    lw	$a7,52($sp)
    # Line 2743
    lw	$t0,48($sp)
    sw	$t0,8360($s7)
    # Line 2745
    sw	$a7,8364($s0)
    lw	$a6,52($sp)
    sw	$a6,8364($s7)
    # Line 2747
    sw	$a5,8372($s0)
    lw	$a4,60($sp)
    move	$s5,$zero
    sw	$a4,8372($s7)
.L0d959018:
    lw	$t2,-21584($gp)
    beqz	$t2,.L0d959040
    # Line 2754
    lui	$a3,0xffff
    # Line 2752
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    move	$a3,$s6
    lw	$a1,0($sp)
    jal	printf
    addiu	$a0,$a0,8200
    # Line 2754
    lui	$a3,0xffff
.L0d959040:
    # Line 2757
    lw	$a6,0($sp)
    lui	$a5,0x1
    # Line 2754
    andi	$a4,$s1,0x7ff
    ld	$a1,248($sp)
    andi	$a4,$a4,0xffff
    # Line 2757
    ori	$a5,$a5,0xffff
    ld	$a2,232($sp)
    and	$a5,$a5,$a6
    sw	$a5,56($sp)
    # Line 2754
    and	$a3,$a3,$a1
    or	$a1,$a3,$a4
    sd	$a1,248($sp)
    # Line 2757
    beqz	$a2,.L0d958f10
    # Line 2755
    sw	$a1,8352($s0)
    # Line 2761
    lw	$a2,0($sp)
    # lw $t9, -32740($gp) # &sub_0d950000
    lw	$a1,20($sp)
    # Line 2759
    lw	$ra,56($sp)
    # Line 2761
    addiu	$t9,$t9,12160
    # Line 2759
    sw	$ra,8368($s0)
    # Line 2761
    move	$a0,$s4
    bal __glCrmPickAllProcs
    ld	$a3,240($sp)
    bnez	$v0,.L0d958f1c
    # Line 2770
    ld	$a1,280($sp)
    # Line 2764
    sd	$zero,176($sp)
    sd	$zero,224($sp)
.L0d9590ac:
    # Line 2778
    ld	$at,224($sp)
    # Line 2686
    lui	$a2,0x1
    # Line 2778
    blez	$at,.L0d9592b4
    # Line 2686
    mtc1	$s6,$f3
    # Line 2684
    ld	$v1,216($sp)
.L0d9590c0:
    sw	$v1,0($sp)
    lw	$v0,0($sp)
    # Line 2686
    ld	$a0,200($sp)
    lbu	$a4,32210($s4)
    # Line 2684
    andi	$v0,$v0,0xfff
    # Line 2699
    ld	$t2,216($sp)
    # Line 2689
    li	$s2,1
    # Line 2709
    li	$t0,5
    # Line 2684
    beqz	$v0,.L0d959244
    # Line 2686
    ld	$t8,168($sp)
    blez	$s6,.L0d959128
    lui	$a2,0x1
    beqz	$a0,.L0d95912c
    ori	$a2,$a2,0xf000
    lui	$a2,0x1
    ori	$a2,$a2,0xf000
    mtc1	$a2,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$a1,$f2
    mult	$s6,$a1
    mflo	$a2
    b	.L0d95912c
    teq	$s6,$zero,0x7
.L0d959128:
    ori	$a2,$a2,0xf000
.L0d95912c:
    # Line 2709
    lw	$a7,16($sp)
.L0d959130:
    li	$a0,5
    # Line 2689
    slt	$a5,$a2,$s6
    # Line 2709
    ld	$t1,224($sp)
    # Line 2686
    beqz	$a4,.L0d9591b0
    move	$a3,$a2
    # Line 2689
    ld	$a6,224($sp)
    slti	$a6,$a6,2
    move	$a3,$s6
    bnez	$a6,.L0d9591e8
    movn	$a3,$a2,$a5
.L0d959158:
    # Line 2697
    sd	$a3,240($sp)
    # Line 2699
    addu	$t2,$a3,$t2
    sd	$t2,216($sp)
    # Line 2698
    subu	$t1,$t1,$s2
    # Line 2709
    bne	$a7,$t0,.L0d959218
    sd	$t1,224($sp)
.L0d959170:
    ld	$t8,232($sp)
    bnez	$t8,.L0d959218
    # Line 2710
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    lw	$a1,20($sp)
    addiu	$t9,$t9,12160
    lw	$a2,0($sp)
    move	$a0,$s4
    bal __glCrmPickAllProcs
    ld	$a3,240($sp)
    bnez	$v0,.L0d95921c
    # Line 2715
    ld	$a3,208($sp)
    # Line 2712
    b	.L0d9592b4
    sd	$zero,176($sp)
    nop
    nop
    nop
.L0d9591b0:
    # Line 2691
    mtc1	$s6,$f4
    mtc1	$a2,$f3
    cvt.d.w	$f4,$f4
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$s2,$f3
    ld	$ra,224($sp)
    li	$v0,1
    slti	$at,$s2,1
    movn	$s2,$v0,$at
    slt	$ra,$s2,$ra
    bnez	$ra,.L0d959158
    teq	$s6,$zero,0x7
.L0d9591e8:
    # Line 2701
    ld	$a1,224($sp)
    # Line 2702
    mult	$s6,$a1
    ld	$a3,192($sp)
    # Line 2704
    ld	$a2,184($sp)
    # Line 2709
    lw	$v1,16($sp)
    # Line 2702
    mflo	$a4
    # Line 2704
    subu	$a2,$a4,$a2
    # Line 2706
    sd	$zero,224($sp)
    movz	$a2,$a4,$a3
    # Line 2701
    move	$s2,$a1
    # Line 2709
    beq	$v1,$a0,.L0d959170
    sd	$a2,240($sp)
.L0d959218:
    # Line 2715
    ld	$a3,208($sp)
.L0d95921c:
    beqz	$a3,.L0d959290
    # Line 2722
    ld	$a2,240($sp)
    lw	$a3,0($sp)
    # Line 2721
    sd	$s2,280($sp)
    # Line 2722
    addu	$a2,$a2,$a3
.L0d959230:
    # Line 2725
    blez	$s2,.L0d9590ac
    ld	$s3,280($sp)
    subu	$s3,$s1,$s3
    b	.L0d958f5c
    addiu	$s3,$s3,1
.L0d959244:
    # Line 2686
    blez	$s6,.L0d959284
    nop
    beqz	$t8,.L0d959288
    ori	$a2,$a2,0xf000
    lui	$ra,0x2
    mtc1	$s6,$f5
    mtc1	$ra,$f4
    cvt.d.w	$f5,$f5
    cvt.d.w	$f4,$f4
    div.d	$f4,$f4,$f5
    trunc.w.d	$f4,$f4
    mfc1	$t9,$f4
    mult	$s6,$t9
    mflo	$a2
    b	.L0d959288
    teq	$s6,$zero,0x7
.L0d959284:
    ori	$a2,$a2,0xf000
.L0d959288:
    b	.L0d959130
    # Line 2709
    lw	$a7,16($sp)
.L0d959290:
    # Line 2725
    lw	$a3,0($sp)
    ld	$a2,272($sp)
    li	$a4,1
    sd	$a4,280($sp)
    b	.L0d959230
    addu	$a2,$a2,$a3
.L0d9592a8:
    # Line 2778
    sd	$a5,176($sp)
    sd	$s8,88($sp)
    sd	$s5,80($sp)
.L0d9592b4:
    # Line 2779
    # lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    jal	__glCrmFlushAndConfirm
    move	$a0,$s4
    # Line 2781
    lw	$a6,16($sp)
    li	$a7,5
    beq	$a6,$a7,.L0d9595b4
    nop
.L0d9592d0:
    # Line 2786
    lw	$t0,32092($s4)
.L0d9592d4:
    lw	$v0,32088($s4)
    beq	$t0,$v0,.L0d9592fc
    nop
    # Line 2789
    lw	$t8,32184($s4)
    sw	$v0,8216($t8)
    lw	$t3,32188($s4)
    lw	$t2,32088($s4)
    sw	$t2,8216($t3)
    lw	$t1,32088($s4)
    sw	$t1,32092($s4)
.L0d9592fc:
    lw	$t9,32296($s4)
    lw	$a1,11764($s4)
    bne	$t9,$a1,.L0d959394
    # Line 2794
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
.L0d95930c:
    move	$a0,$s4
    jal	__glCrmSetDrawBuffer
    lw	$a1,11760($s4)
    ld	$ra,176($sp)
    beqz	$ra,.L0d959678
    ld	$s2,344($sp)
    # Line 2797
    lw	$at,32216($s4)
    beqz	$at,.L0d9593a8
    # Line 2800
    lw	$v0,24($sp)
    # Line 2803
    ld	$v1,112($sp)
    # Line 2802
    ld	$a0,80($sp)
    # Line 2803
    sw	$s6,96($v1)
    # Line 2802
    sw	$a0,100($v1)
    # Line 2801
    sw	$v0,92($v1)
    # Line 2800
    sw	$v0,88($v1)
    ld	$s1,304($sp)
.L0d95934c:
    ld	$s5,320($sp)
    ld	$s8,328($sp)
    ld	$s6,336($sp)
    ld	$s2,344($sp)
    # Line 2836
    ld	$gp,128($sp)
    ld	$s0,136($sp)
    ld	$ra,312($sp)
    ld	$s3,152($sp)
    li	$v0,1
    ld	$s4,144($sp)
    ld	$s7,120($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d959380:
    # Line 2569
    # lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    jal	__glCrmSetReadBuffer
    move	$a0,$s4
    b	.L0d958bfc
    lw	$v0,32216($s4)
.L0d959394:
    # Line 2792
    # lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    jal	__glCrmSetReadBuffer
    move	$a0,$s4
    b	.L0d95930c
    # Line 2794
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
.L0d9593a8:
    # Line 2805
    lw	$a1,32344($s4)
    bnez	$a1,.L0d959410
    ld	$t0,88($sp)
    ld	$a2,88($sp)
    bnez	$a2,.L0d95941c
    # Line 2818
    ld	$s6,112($sp)
    b	.L0d95934c
    ld	$s1,304($sp)
.L0d9593c8:
    # Line 2578
    lw	$t9,32344($s4)
    addiu	$a4,$a4,-22672
    beq	$t9,$a4,.L0d958c34
    li	$v0,1
    la	$a5,sub_0d960000
    addiu	$a5,$a5,-22048
    beq	$t9,$a5,.L0d958c34
    li	$v0,1
    la	$a6,sub_0d960000
    addiu	$a6,$a6,-19248
    beq	$t9,$a6,.L0d958c34
    li	$v0,1
    la	$a7,sub_0d960000
    addiu	$a7,$a7,-21440
    beq	$t9,$a7,.L0d958c30
    move	$v0,$zero
    b	.L0d958c38
    sd	$s8,328($sp)
.L0d959410:
    # Line 2805
    beqz	$t0,.L0d959730
    # Line 2816
    ld	$s6,112($sp)
    # Line 2818
    ld	$s6,112($sp)
.L0d95941c:
    lw	$s1,24($sp)
    lw	$s0,92($s6)
    # Line 2816
    lw	$s3,168($s6)
    lw	$s6,96($s6)
.L0d95942c:
    # Line 2822
    ld	$s5,112($sp)
    lw	$s5,172($s5)
    blez	$s5,.L0d9594c8
    ld	$s7,80($sp)
    mult	$s3,$s7
    mflo	$s7
    b	.L0d9594a4
    lw	$t9,32344($s4)
.L0d95944c:
    ld	$s6,336($sp)
.L0d959450:
    ld	$s1,304($sp)
    # Line 2836
    ld	$gp,128($sp)
    ld	$s0,136($sp)
    ld	$ra,312($sp)
    ld	$s3,152($sp)
    # Line 2562
    li	$v0,1
    # Line 2836
    ld	$s4,144($sp)
    ld	$s7,120($sp)
    jr	$ra
    addiu	$sp,$sp,352
    nop
    nop
.L0d959480:
    # Line 2824
    move	$a1,$s0
    jal	__glCrmSetDrawBuffer
    move	$a2,$s3
.L0d95948c:
    # Line 2822
    ld	$t8,272($sp)
    addiu	$s5,$s5,-1
    # Line 2829
    addu	$s0,$s6,$s0
    # Line 2822
    blez	$s5,.L0d9594c8
    # Line 2828
    addu	$s1,$t8,$s1
    # Line 2822
    lw	$t9,32344($s4)
.L0d9594a4:
    bnez	$t9,.L0d959480
    # Line 2824
    move	$a0,$s1
    # Line 2826
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s0
    move	$a1,$s1
    jal	memcpy
    move	$a2,$s7
    b	.L0d95948c
    nop
.L0d9594c8:
    # Line 2822
    ld	$t9,88($sp)
    beqz	$t9,.L0d95934c
    ld	$s1,304($sp)
    # Line 2832
    lw	$t9,32324($s4)
    move	$a0,$s4
    jalr	$t9
    move	$a1,$zero
    b	.L0d95934c
    ld	$s1,304($sp)
.L0d9594ec:
    # Line 2625
    beqz	$s8,.L0d959500
    ld	$ra,112($sp)
    b	.L0d958d84
    # Line 2633
    lw	$s6,8($sp)
.L0d9594fc:
    # Line 2625
    ld	$ra,112($sp)
.L0d959500:
    lw	$ra,80($ra)
    li	$at,6401
    bne	$ra,$at,.L0d958d84
    lw	$s6,8($sp)
    beq	$s2,$s6,.L0d959744
    sd	$s2,272($sp)
    # Line 2627
    ld	$v0,224($sp)
    blez	$v0,.L0d958d84
    ld	$s1,216($sp)
    sd	$zero,160($sp)
    nop
    nop
.L0d959530:
    # Line 2629
    # lw $t9, -22804($gp) # &bzero
    move	$a0,$s1
    jal	bzero
    ld	$a1,272($sp)
    # Line 2628
    ld	$v1,160($sp)
    ld	$a0,224($sp)
    addiu	$v1,$v1,1
    # Line 2630
    addu	$s1,$s6,$s1
    # Line 2628
    bne	$v1,$a0,.L0d959530
    sd	$v1,160($sp)
    b	.L0d958d88
    # Line 2640
    lw	$t3,32092($s4)
.L0d959560:
    # Line 2641
    beqz	$a1,.L0d958dc8
    # Line 2644
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,8152
    b	.L0d958dc8
    lw	$a3,32292($s4)
.L0d95957c:
    # Line 2667
    lbu	$a1,32212($s4)
    beqz	$a1,.L0d959590
    lw	$a3,-21572($gp)
    beqz	$s8,.L0d9596f0
    lw	$a3,-21572($gp)
.L0d959590:
    beqz	$a3,.L0d9596ac
    # Line 2669
    lw	$a1,-21568($gp)
    sd	$zero,232($sp)
    sd	$zero,104($sp)
    lw	$a4,20($sp)
    sd	$zero,96($sp)
    ori	$a4,$a4,0x20
    b	.L0d958e7c
    sw	$a4,20($sp)
.L0d9595b4:
    # Line 2781
    lbu	$a5,32212($s4)
    beqz	$a5,.L0d9595c4
    ld	$a6,88($sp)
    beqz	$a6,.L0d9592d0
.L0d9595c4:
    # Line 2782
    lw	$a7,-21572($gp)
    beqz	$a7,.L0d9596d0
    lw	$a5,-21568($gp)
.L0d9595d0:
    # Line 2786
    # lw $t9, -32740($gp) # &sub_0d950000
.L0d9595d4:
    lw	$a1,20($sp)
    li	$a3,-97
    addiu	$t9,$t9,12160
    move	$a0,$s4
    and	$a1,$a1,$a3
    lw	$a2,32336($s4)
    bal __glCrmPickAllProcs
    move	$a3,$zero
    b	.L0d9592d4
    lw	$t0,32092($s4)
.L0d9595fc:
    b	.L0d958d48
    sd	$a4,216($sp)
.L0d959604:
    # Line 2572
    li	$a5,0x80d0
    addu	$a5,$s4,$a5
    lw	$a5,0($a5)
    b	.L0d958c0c
    sw	$a5,32292($s4)
.L0d959618:
    # Line 2586
    ld	$a4,224($sp)
    # Line 2585
    lw	$s6,96($a2)
    # Line 2586
    mult	$s6,$a4
    # Line 2587
    lw	$a2,92($a2)
    # Line 2588
    sw	$a2,0($sp)
    lw	$a7,0($sp)
    # Line 2586
    mflo	$a1
    # Line 2587
    sd	$a2,216($sp)
    # Line 2588
    addu	$a2,$a1,$a2
    or	$a6,$s2,$s6
    or	$a7,$a7,$a2
    or	$a6,$a6,$a7
    andi	$a6,$a6,0x7
    beqz	$a6,.L0d959700
    # Line 2592
    lw	$a5,-21584($gp)
    beqz	$a5,.L0d959670
    # Line 2596
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    move	$a3,$s6
    lw	$a1,0($sp)
    jal	printf
    addiu	$a0,$a0,8048
.L0d959670:
    b	.L0d958c4c
    li	$s8,1
.L0d959678:
    ld	$s6,336($sp)
    ld	$s8,328($sp)
    ld	$s5,320($sp)
    ld	$s1,304($sp)
    # Line 2836
    ld	$gp,128($sp)
    ld	$s0,136($sp)
    ld	$ra,312($sp)
    ld	$s3,152($sp)
    # Line 2797
    move	$v0,$zero
    # Line 2836
    ld	$s4,144($sp)
    ld	$s7,120($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0d9596ac:
    # Line 2669
    beqz	$a1,.L0d95975c
    # Line 2672
    li	$a4,1
    sd	$a4,232($sp)
    sd	$zero,104($sp)
    lw	$a3,20($sp)
    sd	$zero,96($sp)
    ori	$a3,$a3,0x60
    b	.L0d958e7c
    sw	$a3,20($sp)
.L0d9596d0:
    # Line 2782
    bnez	$a5,.L0d9595d0
    # Line 2783
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,12544
    ld	$a0,96($sp)
    bal __glCrmPickAllProcs
    ld	$a1,104($sp)
    b	.L0d9595d4
    # Line 2786
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d9596f0:
    # Line 2677
    sd	$zero,232($sp)
    sd	$zero,104($sp)
    b	.L0d958e7c
    sd	$zero,96($sp)
.L0d959700:
    # Line 2593
    sw	$zero,20($sp)
    # Line 2592
    li	$v0,5
    sw	$v0,16($sp)
    sw	$s6,8($sp)
    sw	$a1,4($sp)
    ld	$at,216($sp)
    li	$ra,-7169
    sw	$at,12($sp)
    and	$ra,$a3,$ra
    ori	$ra,$ra,0x1400
    b	.L0d958c44
    sw	$ra,32292($s4)
.L0d959730:
    # Line 2816
    lw	$s0,92($s6)
    # Line 2805
    lw	$s3,168($s6)
    lw	$s6,96($s6)
    # Line 2816
    b	.L0d95942c
    move	$s1,$s0
.L0d959744:
    # Line 2633
    # lw $t9, -22804($gp) # &bzero
    ld	$a0,216($sp)
    jal	bzero
    lw	$a1,4($sp)
    b	.L0d958d88
    # Line 2640
    lw	$t3,32092($s4)
.L0d95975c:
    # Line 2675
    # lw $t9, -32740($gp) # &sub_0d950000
    lw	$s2,4($sp)
    addiu	$t9,$t9,12400
    sd	$a2,296($sp)
    ld	$a0,216($sp)
    bal __glCrmPickAllProcs
    move	$a1,$s2
    ld	$a2,296($sp)
    # Line 2677
    move	$at,$s2
    # Line 2676
    ld	$ra,216($sp)
    # Line 2677
    sd	$zero,232($sp)
    movz	$at,$zero,$v0
    sd	$at,104($sp)
    movz	$ra,$zero,$v0
    b	.L0d958e7c
    sd	$ra,96($sp)
.L0d95979c:
    # Line 2686
    mtc1	$s6,$f3
    lui	$a2,0x1
    b	.L0d9590c0
    # Line 2684
    ld	$v1,216($sp)
.end crmReadPixelsXfer

# Function: crmCopyPixelsXfer
# Declared: Line 2844 (Source lines: 2845-3006)
# Address: 0x0d9597b0 - 0x0d959d70 (Size: 1472 bytes, Frame: 192)
.globl crmCopyPixelsXfer
.ent crmCopyPixelsXfer
crmCopyPixelsXfer:
    # Line 2859
    lw	$a3,172($a1)
    # Line 2845
    addiu	$sp,$sp,-192
    sd	$ra,168($sp)
    sd	$s1,96($sp)
    sd	$gp,136($sp)
    sd	$s2,160($sp)
    sd	$s0,104($sp)
    # Line 2862
    lbu	$a4,32203($a0)
    # Line 2845
    sd	$a1,72($sp)
    sd	$s8,152($sp)
    sd	$s3,128($sp)
    # Line 2873
    lbu	$a5,32204($a0)
    # Line 2862
    lw	$v1,204($a1)
    # Line 2845
    sd	$s5,88($sp)
    # Line 2862
    lwc1	$f1,192($a1)
    # Line 2873
    lw	$t8,208($a1)
    # Line 2845
    sd	$s6,144($sp)
    move	$s0,$a0
    # Line 2873
    lw	$s6,220($a1)
    # Line 2845
    lui	$v0,0xf
    # Line 2869
    move	$s3,$v1
    # Line 2845
    sd	$s4,112($sp)
    sd	$s7,120($sp)
    # Line 2876
    move	$s5,$t8
    # Line 2880
    addu	$s7,$s6,$t8
    # Line 2862
    lw	$s4,216($a1)
    # Line 2877
    subu	$s6,$t8,$s6
    # Line 2880
    addiu	$s7,$s7,-1
    # Line 2861
    lwc1	$f0,188($a1)
    # Line 2877
    addiu	$s6,$s6,1
    movz	$s5,$s7,$a5
    # Line 2858
    lw	$s8,168($a1)
    # Line 2873
    subu	$s7,$v1,$s4
    # Line 2870
    addu	$s4,$s4,$v1
    # Line 2883
    lbu	$at,32205($a0)
    # Line 2862
    trunc.w.s	$f1,$f1
    movz	$s6,$t8,$a5
    # Line 2870
    addiu	$s4,$s4,-1
    # Line 2856
    lw	$a1,32188($a0)
    # Line 2861
    trunc.w.s	$f0,$f0
    # Line 2873
    addiu	$s7,$s7,1
    movz	$s4,$v1,$a4
    # Line 2845
    addiu	$v0,$v0,30172
    # Line 2856
    sd	$a1,64($sp)
    # Line 2862
    mfc1	$s2,$f1
    movz	$s3,$s7,$a4
    # Line 2845
    addu	$gp,$t9,$v0
    # Line 2861
    mfc1	$s1,$f0
    # Line 2883
    beqz	$at,.L0d959c58
    # Line 2856
    lw	$s7,32184($a0)
.L0d959878:
    # Line 2883
    li	$a0,1
.L0d95987c:
    # Line 2884
    lbu	$ra,3536($s0)
.L0d959880:
    beqz	$ra,.L0d959948
    nop
    lw	$at,32296($s0)
    lw	$v0,32300($s0)
    beq	$at,$v0,.L0d9598a4
    slt	$a1,$s1,$s3
    lbu	$v1,32206($s0)
    beqz	$v1,.L0d959948
    slt	$a1,$s1,$s3
.L0d9598a4:
    bnez	$a1,.L0d9598b0
    slt	$a2,$s4,$s1
    beqz	$a2,.L0d9598c8
.L0d9598b0:
    addu	$a4,$s8,$s1
    addiu	$a4,$a4,-1
    slt	$a5,$a4,$s3
    bnez	$a5,.L0d959948
    slt	$a5,$s4,$a4
    bnez	$a5,.L0d959948
.L0d9598c8:
    slt	$a6,$s5,$s2
    slt	$a7,$s2,$s6
    subu	$a4,$s2,$a3
    bnez	$a6,.L0d9598e0
    addiu	$a4,$a4,1
    beqz	$a7,.L0d9598f4
.L0d9598e0:
    slt	$a5,$a4,$s6
    slt	$t0,$s5,$a4
    bnez	$t0,.L0d959948
    nop
    bnez	$a5,.L0d959948
.L0d9598f4:
    # Line 2889
    andi	$a6,$a0,0xff
    # Line 2884
    li	$a7,1
    # Line 2889
    beqz	$a6,.L0d95994c
    sd	$a7,56($sp)
    # Line 2890
    # lw $t9, -31580($gp) # &crmCopyPixelsXferRW
    move	$a0,$s0
    bal crmCopyPixelsXferRW
    ld	$a1,72($sp)
    # Line 3006
    ld	$gp,136($sp)
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$s2,160($sp)
    ld	$s3,128($sp)
    ld	$s4,112($sp)
    ld	$s5,88($sp)
    ld	$ra,168($sp)
    ld	$s6,144($sp)
    ld	$s7,120($sp)
    ld	$s8,152($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d959948:
    sd	$zero,56($sp)
.L0d95994c:
    # Line 2890
    lw	$t0,-21584($gp)
    beqz	$t0,.L0d95996c
    # Line 2893
    nop	# was lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    sd	$a3,176($sp)
    jal	printf
    addiu	$a0,$a0,8232
    ld	$a3,176($sp)
.L0d95996c:
    # Line 2896
    ld	$a1,56($sp)
    # Line 2895
    lw	$a2,32264($s0)
    # Line 2931
    subu	$t8,$s2,$a3
    # Line 2896
    lw	$a4,32268($s0)
    andi	$a1,$a1,0xff
    # Line 2927
    addu	$t0,$s8,$s1
    # Line 2896
    sd	$a4,48($sp)
    # Line 2931
    addiu	$t8,$t8,1
    # Line 2927
    addiu	$t0,$t0,-1
    # Line 2896
    beqz	$a1,.L0d959c70
    sd	$a2,40($sp)
    # Line 2906
    slt	$a4,$s5,$s2
    # Line 2910
    move	$t3,$s6
    movn	$s6,$s5,$a4
    movn	$s5,$t3,$a4
    # Line 2896
    slt	$a7,$s1,$s3
    # Line 2901
    move	$t2,$s4
    movn	$s4,$s3,$a7
    movn	$s3,$t2,$a7
    # Line 2912
    subu	$t1,$s2,$a3
    # Line 2913
    li	$a6,3
    # Line 2912
    addiu	$t1,$t1,1
    movn	$s2,$t1,$a4
    # Line 2903
    addu	$t0,$s8,$s1
    move	$a2,$zero
    addiu	$t0,$t0,-1
    movn	$s1,$t0,$a7
    # Line 2906
    li	$t0,1
    # Line 2913
    li	$a5,2
    movz	$a2,$t0,$a7
    movz	$a5,$a6,$a2
    # Line 2919
    sltiu	$a2,$a2,1
    movn	$a2,$a5,$a4
    sd	$a2,80($sp)
.L0d9599f4:
    # Line 2934
    lbu	$t8,32206($s0)
    beqz	$t8,.L0d959cf0
    # Line 2941
    ld	$a3,72($sp)
    lw	$a3,80($a3)
    li	$t9,6401
    beq	$a3,$t9,.L0d959ca8
    # Line 2940
    lui	$a0,0x60
    # Line 2941
    li	$a4,6402
    beq	$a3,$a4,.L0d959ce0
    # Line 2951
    move	$s8,$zero
    # Line 2941
    move	$s8,$zero
.L0d959a20:
    # Line 2955
    ori	$a0,$a0,0x78
.L0d959a24:
    # Line 2962
    lw	$a5,32092($s0)
    beq	$a5,$a0,.L0d959a4c
    nop
    # Line 2964
    lw	$t0,32184($s0)
    sw	$a0,0($sp)
    sw	$a0,8216($t0)
    lw	$a7,32188($s0)
    lw	$a6,0($sp)
    sw	$a6,8216($a7)
    sw	$a6,32092($s0)
.L0d959a4c:
    lw	$t1,11764($s0)
    lw	$a1,32296($s0)
    bne	$t1,$a1,.L0d959c18
    # Line 2967
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    lw	$t2,11760($s0)
.L0d959a60:
    lw	$a1,32300($s0)
    bne	$t2,$a1,.L0d959c28
    # Line 2970
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    # Line 2975
    ld	$a0,80($sp)
.L0d959a70:
    andi	$a0,$a0,0x3
    lw	$t3,32096($s0)
    lui	$a1,0x300
    sll	$a0,$a0,0x10
    or	$a0,$a0,$a1
    beq	$t3,$a0,.L0d959aa8
    # Line 2978
    lui	$a6,0x7
    # Line 2976
    lw	$a2,32184($s0)
    sw	$a0,8288($a2)
    lw	$a1,32188($s0)
    sw	$a0,4($sp)
    sw	$a0,8288($a1)
    sw	$a0,32096($s0)
    # Line 2978
    lui	$a6,0x7
.L0d959aa8:
    ori	$a6,$a6,0xffff
    sll	$t9,$s3,0x6
    and	$t9,$a6,$t9
    sw	$t9,8($sp)
    lw	$t8,8($sp)
    sw	$t8,8320($s7)
    # Line 2979
    sll	$t3,$s5,0x6
    and	$t3,$a6,$t3
    sw	$t3,12($sp)
    lw	$t2,12($sp)
    sw	$t2,8324($s7)
    # Line 2980
    sll	$t1,$s4,0x6
    and	$t1,$a6,$t1
    sw	$t1,16($sp)
    # Line 2981
    sll	$a7,$s6,0x6
    # Line 2980
    lw	$t0,16($sp)
    sw	$t0,8328($s7)
    # Line 2981
    and	$a6,$a6,$a7
    sw	$a6,20($sp)
    # Line 2985
    andi	$a4,$s2,0x7ff
    andi	$a5,$s1,0x7ff
    # Line 2981
    lw	$a7,20($sp)
    # Line 2985
    sll	$a5,$a5,0x10
    lui	$a6,0xffff
    # Line 2981
    sw	$a7,8332($s7)
    # Line 2985
    andi	$a4,$a4,0xffff
    and	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,8352($s7)
    lbu	$a3,32202($s0)
    beqz	$a3,.L0d959b30
    # Line 2988
    nop	# was lw $t9, -31600($gp) # &__glCrmSetupPixelRenderOps
    bal __glCrmSetupPixelRenderOps
    move	$a0,$s0
.L0d959b30:
    # Line 2992
    lw	$t8,32260($s0)
    # Line 2991
    ld	$ra,40($sp)
    lw	$at,32256($s0)
    # Line 2992
    ld	$t3,48($sp)
    sll	$t8,$t8,0x1c
    # Line 2993
    ld	$t2,64($sp)
    # Line 2991
    sll	$at,$at,0x1c
    andi	$ra,$ra,0x7ff
    # Line 2992
    andi	$t3,$t3,0x7ff
    # Line 2991
    or	$ra,$ra,$at
    sw	$ra,32($sp)
    # Line 2992
    or	$t3,$t3,$t8
    sw	$t3,36($sp)
    # Line 2993
    lw	$t9,32($sp)
    sw	$t9,8360($s7)
    lw	$t1,32($sp)
    sw	$t1,8360($t2)
    # Line 2994
    lw	$t0,36($sp)
    sw	$t0,10412($s7)
    lw	$a0,32088($s0)
    lw	$a7,32092($s0)
    beq	$a7,$a0,.L0d959ba8
    nop
    # Line 2996
    lw	$a1,32184($s0)
    sw	$a0,8216($a1)
    lw	$v1,32188($s0)
    lw	$v0,32088($s0)
    sw	$v0,8216($v1)
    lw	$at,32088($s0)
    sw	$at,32092($s0)
.L0d959ba8:
    # Line 2997
    beqz	$s8,.L0d959bc0
    nop
    lw	$a2,32088($s0)
    sll	$a2,$a2,0x18
    bltz	$a2,.L0d959d14
    # Line 2998
    lui	$a4,0x1
.L0d959bc0:
    lw	$a3,32296($s0)
    lw	$a1,11764($s0)
    bne	$a3,$a1,.L0d959c38
    # Line 3001
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    lw	$a4,32300($s0)
.L0d959bd4:
    lw	$a1,11760($s0)
    bne	$a4,$a1,.L0d959c48
    # Line 3004
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    # Line 3006
    ld	$gp,136($sp)
.L0d959be4:
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$s2,160($sp)
    ld	$s3,128($sp)
    ld	$s4,112($sp)
    ld	$s5,88($sp)
    ld	$ra,168($sp)
    ld	$s6,144($sp)
    li	$v0,1
    ld	$s7,120($sp)
    ld	$s8,152($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d959c18:
    # Line 2967
    jal	__glCrmSetDrawBuffer
    move	$a0,$s0
    b	.L0d959a60
    lw	$t2,11760($s0)
.L0d959c28:
    # Line 2970
    jalr	$t9
    move	$a0,$s0
    b	.L0d959a70
    # Line 2975
    ld	$a0,80($sp)
.L0d959c38:
    # Line 3001
    jalr	$t9
    move	$a0,$s0
    b	.L0d959bd4
    lw	$a4,32300($s0)
.L0d959c48:
    # Line 3004
    jalr	$t9
    move	$a0,$s0
    b	.L0d959be4
    # Line 3006
    ld	$gp,136($sp)
.L0d959c58:
    # Line 2883
    beqz	$a4,.L0d95987c
    li	$a0,1
    beqz	$a5,.L0d959878
    move	$a0,$zero
    b	.L0d959880
    # Line 2884
    lbu	$ra,3536($s0)
.L0d959c70:
    # Line 2919
    lbu	$a6,32203($s0)
    # Line 2928
    lbu	$t2,32204($s0)
    # Line 2932
    ld	$t1,48($sp)
    movz	$s2,$t8,$t2
    # Line 2928
    ld	$a5,40($sp)
    movz	$s1,$t0,$a6
    # Line 2932
    negu	$t3,$t1
    # Line 2934
    sd	$zero,80($sp)
    # Line 2928
    negu	$a7,$a5
    movz	$t1,$t3,$t2
    sd	$t1,48($sp)
    movz	$a5,$a7,$a6
    b	.L0d9599f4
    sd	$a5,40($sp)
.L0d959ca8:
    # Line 2943
    lh	$a1,1674($s0)
    li	$t9,255
    # Line 2949
    ld	$ra,64($sp)
    # Line 2943
    beq	$a1,$t9,.L0d959d30
    # Line 2949
    move	$s8,$zero
    # Line 2944
    sll	$s8,$a1,0x18
    beqz	$s8,.L0d959d38
    # Line 2948
    ori	$a0,$a0,0x80
    # Line 2949
    sw	$s8,8632($s7)
    sw	$s8,8632($ra)
    # Line 2951
    li	$a1,-121
.L0d959cd4:
    and	$a0,$a1,$a0
    b	.L0d959ce4
    ori	$a0,$a0,0x40
.L0d959ce0:
    li	$a1,-121
.L0d959ce4:
    # Line 2953
    and	$a0,$a1,$a0
    b	.L0d959a20
    ori	$a0,$a0,0x38
.L0d959cf0:
    # Line 2958
    lw	$a3,32088($s0)
    sw	$a3,0($sp)
    # Line 2962
    lw	$a0,0($sp)
    ld	$a1,-22188($gp)
    lui	$a2,0x20
    move	$s8,$zero
    or	$a0,$a0,$a2
    b	.L0d959a24
    and	$a0,$a0,$a1
.L0d959d14:
    # Line 2998
    addu	$a4,$s0,$a4
    lw	$a5,-32576($a4)
    sw	$a5,8632($s7)
    ld	$a5,64($sp)
    lw	$a4,-32576($a4)
    b	.L0d959bc0
    sw	$a4,8632($a5)
.L0d959d30:
    b	.L0d959cd4
    # Line 2951
    li	$a1,-121
.L0d959d38:
    # Line 3006
    ld	$gp,136($sp)
    ld	$s0,104($sp)
    ld	$s1,96($sp)
    ld	$s2,160($sp)
    ld	$s3,128($sp)
    ld	$s4,112($sp)
    ld	$s5,88($sp)
    ld	$ra,168($sp)
    ld	$s6,144($sp)
    # Line 2946
    li	$v0,1
    # Line 3006
    ld	$s7,120($sp)
    ld	$s8,152($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end crmCopyPixelsXfer

# Function: crmCopyPixelsXferRW
# Declared: Line 3015 (Source lines: 3016-3064)
# Address: 0x0d959d70 - 0x0d959f64 (Size: 500 bytes, Frame: 48)
.globl crmCopyPixelsXferRW
.ent crmCopyPixelsXferRW
crmCopyPixelsXferRW:
    # Line 3016
    lui	$v0,0xf
    addiu	$sp,$sp,-48
    addiu	$v0,$v0,28700
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    lw	$at,-21584($gp)
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    beqz	$at,.L0d959db0
    sd	$ra,32($sp)
    # Line 3020
    # lw $t9, -22892($gp) # &printf
    la	$a0,sub_0da40000
    jal	printf
    addiu	$a0,$a0,8280
.L0d959db0:
    # Line 3023
    lbu	$a2,31553($s0)
    lui	$a0,0x1
    li	$a1,1
    addu	$a0,$s0,$a0
    sd	$a0,0($sp)
    lw	$a0,-32560($a0)
    beq	$a1,$a2,.L0d959f20
    sw	$a0,32292($s0)
    # Line 3028
    srl	$a1,$a0,0x2
    srl	$a2,$a0,0x8
    andi	$a2,$a2,0x3
    andi	$a1,$a1,0x3
    sltu	$a2,$a1,$a2
    beqz	$a2,.L0d959e0c
    # Line 3031
    sll	$a3,$a1,0x8
    li	$a2,-769
    and	$a2,$a0,$a2
    or	$a2,$a2,$a3
    # Line 3032
    li	$a3,-3
    and	$a2,$a2,$a3
    # Line 3033
    li	$a3,-2
    and	$a2,$a2,$a3
    sw	$a2,32292($s0)
.L0d959e0c:
    # Line 3036
    # lw $t9, -31588($gp) # &crmReadPixelsXfer
    move	$a1,$s1
    move	$a0,$s0
    li	$a3,1
    bal crmReadPixelsXfer
    # Line 3035
    sw	$a3,32216($s0)
    # Line 3038
    lbu	$a5,31553($s0)
    li	$a4,1
    beq	$a4,$a5,.L0d959ee8
    nop
.L0d959e34:
    # Line 3042
    lw	$t2,88($s1)
    # Line 3044
    lw	$t1,100($s1)
    # Line 3045
    lw	$t0,96($s1)
    sw	$t0,16($s1)
    # Line 3044
    sw	$t1,20($s1)
    # Line 3043
    sw	$t2,12($s1)
    # Line 3042
    sw	$t2,8($s1)
    # Line 3049
    lbu	$a7,32205($s0)
    # Line 3047
    sw	$zero,32344($s0)
    # Line 3048
    lbu	$a6,30652($s0)
    # Line 3049
    bnez	$a7,.L0d959e70
    # Line 3048
    sb	$a6,32211($s0)
    # Line 3049
    lbu	$t3,32209($s0)
    beqz	$t3,.L0d959f50
    # Line 3056
    nop	# was lw $t9, -31596($gp) # &crmDrawPixelsXfer
.L0d959e70:
    # Line 3050
    lw	$at,168($s1)
    sw	$at,32272($s0)
    # Line 3051
    lw	$ra,172($s1)
    # Line 3052
    sw	$zero,32280($s0)
    sw	$zero,32284($s0)
    # Line 3054
    # lw $t9, -31592($gp) # &crmDrawPixelsXfer2
    # Line 3051
    sw	$ra,32276($s0)
    # Line 3054
    move	$a1,$s1
    # Line 3053
    lw	$t8,12($s1)
    # Line 3054
    move	$a0,$s0
    bal crmDrawPixelsXfer2
    # Line 3053
    sw	$t8,32288($s0)
    # Line 3061
    lw	$v0,32316($s0)
.L0d959ea4:
    # Line 3059
    sw	$zero,32216($s0)
    # Line 3061
    lw	$v1,32304($s0)
    beqz	$v0,.L0d959ecc
    # Line 3058
    sb	$zero,32211($s0)
    # Line 3061
    beqz	$v1,.L0d959ed0
    ld	$ra,32($sp)
    # Line 3062
    lw	$t9,32324($s0)
    move	$a0,$s0
    jal	crmDrawPixelsXfer2
    move	$a1,$zero
.L0d959ecc:
    ld	$ra,32($sp)
.L0d959ed0:
    # Line 3064
    ld	$gp,24($sp)
    li	$v0,1
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d959ee8:
    # Line 3038
    lw	$a0,32292($s0)
    srl	$a1,$a0,0x4
    andi	$a1,$a1,0xf
    bnez	$a1,.L0d959e34
    # Line 3040
    ld	$a3,0($sp)
    lw	$a3,-32560($a3)
    srl	$a3,$a3,0x2
    li	$a2,-13
    andi	$a3,$a3,0x3
    and	$a2,$a0,$a2
    sll	$a3,$a3,0x2
    or	$a2,$a2,$a3
    b	.L0d959e34
    sw	$a2,32292($s0)
.L0d959f20:
    # Line 3025
    li	$a4,-769
    and	$a4,$a0,$a4
    # Line 3026
    li	$a5,-13
    # Line 3025
    ori	$a4,$a4,0x200
    # Line 3026
    and	$a4,$a4,$a5
    # Line 3027
    li	$a5,-3
    # Line 3026
    ori	$a4,$a4,0x8
    # Line 3027
    and	$a4,$a4,$a5
    # Line 3028
    li	$a5,-2
    and	$a4,$a4,$a5
    b	.L0d959e0c
    sw	$a4,32292($s0)
.L0d959f50:
    # Line 3056
    move	$a0,$s0
    bal crmDrawPixelsXfer
    move	$a1,$s1
    b	.L0d959ea4
    # Line 3061
    lw	$v0,32316($s0)
.end crmCopyPixelsXferRW

# Function: convertRGBXToRGBA
# Declared: Line 3071 (Source lines: 3074-3102)
# Address: 0x0d959f70 - 0x0d95a2b4 (Size: 836 bytes, Frame: 0)
.ent convertRGBXToRGBA
convertRGBXToRGBA:
    # Line 3074
    bne	$a0,$a1,.L0d959f88
    # Line 3082
    slti	$v0,$a2,9
    # Line 3074
    slti	$a4,$a2,9
    andi	$at,$a0,0x3
    beqz	$at,.L0d95a0c4
    # Line 3082
    slti	$v0,$a2,9
.L0d959f88:
    bnez	$v0,.L0d95a084
    li	$a4,255
.L0d959f90:
    # Line 3087
    lbu	$at,0($a0)
    sb	$at,0($a1)
    lbu	$t9,1($a0)
    sb	$t9,1($a1)
    lbu	$t8,2($a0)
    sb	$t8,2($a1)
    sb	$a4,3($a1)
    # Line 3088
    lbu	$t3,4($a0)
    sb	$t3,4($a1)
    lbu	$t2,5($a0)
    sb	$t2,5($a1)
    lbu	$t1,6($a0)
    sb	$t1,6($a1)
    sb	$a4,7($a1)
    # Line 3089
    lbu	$t0,8($a0)
    sb	$t0,8($a1)
    lbu	$a7,9($a0)
    sb	$a7,9($a1)
    lbu	$a6,10($a0)
    sb	$a6,10($a1)
    sb	$a4,11($a1)
    # Line 3090
    lbu	$a5,12($a0)
    sb	$a5,12($a1)
    lbu	$a3,13($a0)
    sb	$a3,13($a1)
    lbu	$v1,14($a0)
    sb	$v1,14($a1)
    sb	$a4,15($a1)
    # Line 3091
    lbu	$v0,16($a0)
    sb	$v0,16($a1)
    lbu	$at,17($a0)
    sb	$at,17($a1)
    lbu	$t9,18($a0)
    sb	$t9,18($a1)
    sb	$a4,19($a1)
    # Line 3092
    lbu	$t8,20($a0)
    sb	$t8,20($a1)
    lbu	$t3,21($a0)
    sb	$t3,21($a1)
    lbu	$t2,22($a0)
    sb	$t2,22($a1)
    sb	$a4,23($a1)
    # Line 3093
    lbu	$t1,24($a0)
    sb	$t1,24($a1)
    lbu	$t0,25($a0)
    sb	$t0,25($a1)
    lbu	$a7,26($a0)
    sb	$a7,26($a1)
    sb	$a4,27($a1)
    # Line 3094
    lbu	$a6,28($a0)
    sb	$a6,28($a1)
    lbu	$a5,29($a0)
    # Line 3095
    addiu	$a2,$a2,-8
    # Line 3094
    sb	$a5,29($a1)
    # Line 3095
    addiu	$a1,$a1,32
    slti	$a3,$a2,9
    # Line 3094
    lbu	$v1,30($a0)
    sb	$a4,-1($a1)
    # Line 3095
    addiu	$a0,$a0,32
    beqz	$a3,.L0d959f90
    # Line 3094
    sb	$v1,-2($a1)
.L0d95a084:
    # Line 3097
    blez	$a2,.L0d95a0bc
    li	$a4,255
    nop
.L0d95a090:
    # Line 3098
    lbu	$a3,0($a0)
    sb	$a3,0($a1)
    lbu	$v1,1($a0)
    sb	$v1,1($a1)
    # Line 3099
    addiu	$a1,$a1,4
    # Line 3097
    addiu	$a2,$a2,-1
    # Line 3098
    lbu	$v0,2($a0)
    sb	$a4,-1($a1)
    # Line 3099
    addiu	$a0,$a0,4
    # Line 3097
    bgtz	$a2,.L0d95a090
    # Line 3098
    sb	$v0,-2($a1)
.L0d95a0bc:
    # Line 3102
    jr	$ra
    nop
.L0d95a0c4:
    # Line 3074
    bnez	$a4,.L0d95a230
    addiu	$a0,$a2,6
    slti	$a3,$a2,1
    addiu	$a4,$a2,-1
    movz	$a0,$a4,$a3
    sra	$a0,$a0,0x3
    andi	$a5,$a0,0x1
    beqz	$a5,.L0d95a150
    sra	$t9,$a0,0x1
    # Line 3080
    addiu	$a1,$a1,32
    # Line 3076
    lw	$a5,-32($a1)
    lw	$a6,-28($a1)
    # Line 3077
    lw	$a7,-24($a1)
    lw	$t0,-20($a1)
    # Line 3078
    lw	$t1,-16($a1)
    lw	$t2,-12($a1)
    # Line 3079
    lw	$t8,-4($a1)
    lw	$t3,-8($a1)
    ori	$t8,$t8,0xff
    sw	$t8,-4($a1)
    ori	$t3,$t3,0xff
    sw	$t3,-8($a1)
    # Line 3078
    ori	$t2,$t2,0xff
    sw	$t2,-12($a1)
    ori	$t1,$t1,0xff
    sw	$t1,-16($a1)
    # Line 3077
    ori	$t0,$t0,0xff
    sw	$t0,-20($a1)
    ori	$a7,$a7,0xff
    sw	$a7,-24($a1)
    # Line 3076
    ori	$a6,$a6,0xff
    sw	$a6,-28($a1)
    # Line 3080
    addiu	$a2,$a2,-8
    # Line 3076
    ori	$a5,$a5,0xff
    sw	$a5,-32($a1)
.L0d95a150:
    beqz	$t9,.L0d95a230
    nop
    nop
    nop
.L0d95a160:
    # Line 3080
    addiu	$a1,$a1,64
    # Line 3079
    lw	$v0,-4($a1)
    lw	$at,-8($a1)
    ori	$v0,$v0,0xff
    sw	$v0,-4($a1)
    ori	$at,$at,0xff
    sw	$at,-8($a1)
    # Line 3078
    lw	$t9,-12($a1)
    lw	$t8,-16($a1)
    ori	$t9,$t9,0xff
    sw	$t9,-12($a1)
    ori	$t8,$t8,0xff
    sw	$t8,-16($a1)
    # Line 3077
    lw	$t3,-20($a1)
    lw	$t2,-24($a1)
    ori	$t3,$t3,0xff
    sw	$t3,-20($a1)
    ori	$t2,$t2,0xff
    sw	$t2,-24($a1)
    # Line 3076
    lw	$t1,-28($a1)
    lw	$t0,-32($a1)
    ori	$t1,$t1,0xff
    sw	$t1,-28($a1)
    ori	$t0,$t0,0xff
    sw	$t0,-32($a1)
    # Line 3079
    lw	$a7,-36($a1)
    lw	$a6,-40($a1)
    ori	$a7,$a7,0xff
    sw	$a7,-36($a1)
    ori	$a6,$a6,0xff
    sw	$a6,-40($a1)
    # Line 3078
    lw	$a5,-44($a1)
    lw	$a4,-48($a1)
    ori	$a5,$a5,0xff
    sw	$a5,-44($a1)
    ori	$a4,$a4,0xff
    sw	$a4,-48($a1)
    # Line 3077
    lw	$a3,-52($a1)
    lw	$a0,-56($a1)
    ori	$a3,$a3,0xff
    sw	$a3,-52($a1)
    ori	$a0,$a0,0xff
    sw	$a0,-56($a1)
    # Line 3076
    lw	$v1,-60($a1)
    # Line 3080
    addiu	$a2,$a2,-16
    # Line 3076
    lw	$at,-64($a1)
    # Line 3080
    slti	$v0,$a2,9
    # Line 3076
    ori	$v1,$v1,0xff
    sw	$v1,-60($a1)
    ori	$at,$at,0xff
    # Line 3080
    beqz	$v0,.L0d95a160
    # Line 3076
    sw	$at,-64($a1)
.L0d95a230:
    # Line 3082
    blez	$a2,.L0d95a0bc
    li	$a4,1
    slt	$v1,$a2,$a4
    movz	$a4,$a2,$v1
    andi	$a0,$a4,0x3
    beqz	$a0,.L0d95a268
    sra	$a5,$a4,0x2
.L0d95a24c:
    addiu	$a0,$a0,-1
    # Line 3083
    lw	$a3,0($a1)
    # Line 3082
    addiu	$a2,$a2,-1
    # Line 3083
    addiu	$a1,$a1,4
    ori	$a3,$a3,0xff
    bnez	$a0,.L0d95a24c
    sw	$a3,-4($a1)
.L0d95a268:
    beqz	$a5,.L0d95a0bc
    nop
.L0d95a270:
    addiu	$a1,$a1,16
    lw	$a6,-4($a1)
    lw	$t1,-16($a1)
    lw	$a7,-8($a1)
    lw	$t0,-12($a1)
    ori	$a7,$a7,0xff
    sw	$a7,-8($a1)
    # Line 3082
    addiu	$a2,$a2,-4
    # Line 3083
    ori	$t0,$t0,0xff
    sw	$t0,-12($a1)
    ori	$t1,$t1,0xff
    sw	$t1,-16($a1)
    ori	$a6,$a6,0xff
    # Line 3082
    bgtz	$a2,.L0d95a270
    # Line 3083
    sw	$a6,-4($a1)
    b	.L0d95a0bc
    nop
.end convertRGBXToRGBA

# Function: convertXBGRToABGR
# Declared: Line 3104 (Source lines: 3107-3135)
# Address: 0x0d95a2c0 - 0x0d95a614 (Size: 852 bytes, Frame: 0)
.ent convertXBGRToABGR
convertXBGRToABGR:
    # Line 3107
    bne	$a0,$a1,.L0d95a2d4
    slti	$a4,$a2,9
    andi	$at,$a0,0x3
    beqz	$at,.L0d95a414
    addiu	$a6,$a2,-1
.L0d95a2d4:
    # Line 3115
    slti	$v0,$a2,9
    bnez	$v0,.L0d95a3d4
    li	$a4,255
.L0d95a2e0:
    # Line 3120
    sb	$a4,0($a1)
    lbu	$at,1($a0)
    sb	$at,1($a1)
    lbu	$t9,2($a0)
    sb	$t9,2($a1)
    lbu	$t8,3($a0)
    sb	$t8,3($a1)
    # Line 3121
    sb	$a4,4($a1)
    lbu	$t3,5($a0)
    sb	$t3,5($a1)
    lbu	$t2,6($a0)
    sb	$t2,6($a1)
    lbu	$t1,7($a0)
    sb	$t1,7($a1)
    # Line 3122
    sb	$a4,8($a1)
    lbu	$t0,9($a0)
    sb	$t0,9($a1)
    lbu	$a7,10($a0)
    sb	$a7,10($a1)
    lbu	$a6,11($a0)
    sb	$a6,11($a1)
    # Line 3123
    sb	$a4,12($a1)
    lbu	$a5,13($a0)
    sb	$a5,13($a1)
    lbu	$a3,14($a0)
    sb	$a3,14($a1)
    lbu	$v1,15($a0)
    sb	$v1,15($a1)
    # Line 3124
    sb	$a4,16($a1)
    lbu	$v0,17($a0)
    sb	$v0,17($a1)
    lbu	$at,18($a0)
    sb	$at,18($a1)
    lbu	$t9,19($a0)
    sb	$t9,19($a1)
    # Line 3125
    sb	$a4,20($a1)
    lbu	$t8,21($a0)
    sb	$t8,21($a1)
    lbu	$t3,22($a0)
    sb	$t3,22($a1)
    lbu	$t2,23($a0)
    sb	$t2,23($a1)
    # Line 3126
    sb	$a4,24($a1)
    lbu	$t1,25($a0)
    sb	$t1,25($a1)
    lbu	$t0,26($a0)
    sb	$t0,26($a1)
    lbu	$a7,27($a0)
    sb	$a7,27($a1)
    # Line 3127
    sb	$a4,28($a1)
    lbu	$a6,29($a0)
    sb	$a6,29($a1)
    # Line 3128
    addiu	$a2,$a2,-8
    # Line 3127
    lbu	$a5,30($a0)
    # Line 3128
    slti	$a3,$a2,9
    # Line 3127
    sb	$a5,30($a1)
    # Line 3128
    addiu	$a1,$a1,32
    # Line 3127
    lbu	$v1,31($a0)
    # Line 3128
    addiu	$a0,$a0,32
    beqz	$a3,.L0d95a2e0
    # Line 3127
    sb	$v1,-1($a1)
.L0d95a3d4:
    # Line 3130
    blez	$a2,.L0d95a40c
    li	$a4,255
    nop
.L0d95a3e0:
    # Line 3131
    sb	$a4,0($a1)
    lbu	$a3,1($a0)
    sb	$a3,1($a1)
    lbu	$v1,2($a0)
    # Line 3130
    addiu	$a2,$a2,-1
    # Line 3131
    sb	$v1,2($a1)
    # Line 3132
    addiu	$a1,$a1,4
    # Line 3131
    lbu	$v0,3($a0)
    # Line 3132
    addiu	$a0,$a0,4
    # Line 3130
    bgtz	$a2,.L0d95a3e0
    # Line 3131
    sb	$v0,-1($a1)
.L0d95a40c:
    # Line 3135
    jr	$ra
    nop
.L0d95a414:
    # Line 3107
    bnez	$a4,.L0d95a580
    lui	$a0,0xff00
    addiu	$a4,$a2,6
    slti	$a5,$a2,1
    movz	$a4,$a6,$a5
    sra	$a4,$a4,0x3
    andi	$a5,$a4,0x1
    beqz	$a5,.L0d95a4a0
    sra	$v0,$a4,0x1
    # Line 3113
    addiu	$a1,$a1,32
    # Line 3109
    lw	$a7,-32($a1)
    lw	$t0,-28($a1)
    # Line 3110
    lw	$t1,-24($a1)
    lw	$t2,-20($a1)
    # Line 3111
    lw	$t3,-16($a1)
    lw	$t8,-12($a1)
    # Line 3112
    lw	$at,-4($a1)
    lw	$t9,-8($a1)
    or	$at,$a0,$at
    sw	$at,-4($a1)
    or	$t9,$a0,$t9
    sw	$t9,-8($a1)
    # Line 3111
    or	$t8,$a0,$t8
    sw	$t8,-12($a1)
    or	$t3,$a0,$t3
    sw	$t3,-16($a1)
    # Line 3110
    or	$t2,$a0,$t2
    sw	$t2,-20($a1)
    or	$t1,$a0,$t1
    sw	$t1,-24($a1)
    # Line 3109
    or	$t0,$a0,$t0
    sw	$t0,-28($a1)
    # Line 3113
    addiu	$a2,$a2,-8
    # Line 3109
    or	$a7,$a0,$a7
    sw	$a7,-32($a1)
.L0d95a4a0:
    beqz	$v0,.L0d95a580
    nop
    nop
    nop
.L0d95a4b0:
    # Line 3113
    addiu	$a1,$a1,64
    # Line 3112
    lw	$a4,-4($a1)
    lw	$a3,-8($a1)
    or	$a4,$a0,$a4
    sw	$a4,-4($a1)
    or	$a3,$a0,$a3
    sw	$a3,-8($a1)
    # Line 3111
    lw	$v1,-12($a1)
    lw	$v0,-16($a1)
    or	$v1,$a0,$v1
    sw	$v1,-12($a1)
    or	$v0,$a0,$v0
    sw	$v0,-16($a1)
    # Line 3110
    lw	$at,-20($a1)
    lw	$t9,-24($a1)
    or	$at,$a0,$at
    sw	$at,-20($a1)
    or	$t9,$a0,$t9
    sw	$t9,-24($a1)
    # Line 3109
    lw	$t8,-28($a1)
    lw	$t3,-32($a1)
    or	$t8,$a0,$t8
    sw	$t8,-28($a1)
    or	$t3,$a0,$t3
    sw	$t3,-32($a1)
    # Line 3112
    lw	$t2,-36($a1)
    lw	$t1,-40($a1)
    or	$t2,$a0,$t2
    sw	$t2,-36($a1)
    or	$t1,$a0,$t1
    sw	$t1,-40($a1)
    # Line 3111
    lw	$t0,-44($a1)
    lw	$a7,-48($a1)
    or	$t0,$a0,$t0
    sw	$t0,-44($a1)
    or	$a7,$a0,$a7
    sw	$a7,-48($a1)
    # Line 3110
    lw	$a6,-52($a1)
    lw	$a5,-56($a1)
    or	$a6,$a0,$a6
    sw	$a6,-52($a1)
    or	$a5,$a0,$a5
    sw	$a5,-56($a1)
    # Line 3109
    lw	$a4,-60($a1)
    # Line 3113
    addiu	$a2,$a2,-16
    # Line 3109
    lw	$v1,-64($a1)
    # Line 3113
    slti	$a3,$a2,9
    # Line 3109
    or	$a4,$a0,$a4
    sw	$a4,-60($a1)
    or	$v1,$a0,$v1
    # Line 3113
    beqz	$a3,.L0d95a4b0
    # Line 3109
    sw	$v1,-64($a1)
.L0d95a580:
    # Line 3115
    blez	$a2,.L0d95a40c
    lui	$a0,0xff00
    li	$a6,1
    slt	$a5,$a2,$a6
    movz	$a6,$a2,$a5
    andi	$a4,$a6,0x3
    beqz	$a4,.L0d95a5bc
    sra	$t0,$a6,0x2
.L0d95a5a0:
    addiu	$a4,$a4,-1
    # Line 3116
    lw	$a7,0($a1)
    # Line 3115
    addiu	$a2,$a2,-1
    # Line 3116
    addiu	$a1,$a1,4
    or	$a7,$a0,$a7
    bnez	$a4,.L0d95a5a0
    sw	$a7,-4($a1)
.L0d95a5bc:
    beqz	$t0,.L0d95a40c
    nop
    nop
    nop
    nop
.L0d95a5d0:
    addiu	$a1,$a1,16
    lw	$t1,-4($a1)
    lw	$t8,-16($a1)
    lw	$t2,-8($a1)
    lw	$t3,-12($a1)
    or	$t2,$a0,$t2
    sw	$t2,-8($a1)
    # Line 3115
    addiu	$a2,$a2,-4
    # Line 3116
    or	$t3,$a0,$t3
    sw	$t3,-12($a1)
    or	$t8,$a0,$t8
    sw	$t8,-16($a1)
    or	$t1,$a0,$t1
    # Line 3115
    bgtz	$a2,.L0d95a5d0
    # Line 3116
    sw	$t1,-4($a1)
    b	.L0d95a40c
    nop
.end convertXBGRToABGR

# Function: convertRGBUbyteToRGBA
# Declared: Line 3137 (Source lines: 3138-3154)
# Address: 0x0d95a620 - 0x0d95a764 (Size: 324 bytes, Frame: 0)
.ent convertRGBUbyteToRGBA
convertRGBUbyteToRGBA:
    # Line 3138
    slti	$at,$a2,9
    bnez	$at,.L0d95a724
    li	$a4,255
    nop
.L0d95a630:
    # Line 3140
    lbu	$t9,0($a0)
    sb	$t9,0($a1)
    lbu	$t8,1($a0)
    sb	$t8,1($a1)
    lbu	$t3,2($a0)
    sb	$t3,2($a1)
    sb	$a4,3($a1)
    # Line 3141
    lbu	$t2,3($a0)
    sb	$t2,4($a1)
    lbu	$t1,4($a0)
    sb	$t1,5($a1)
    lbu	$t0,5($a0)
    sb	$t0,6($a1)
    sb	$a4,7($a1)
    # Line 3142
    lbu	$a7,6($a0)
    sb	$a7,8($a1)
    lbu	$a6,7($a0)
    sb	$a6,9($a1)
    lbu	$a5,8($a0)
    sb	$a5,10($a1)
    sb	$a4,11($a1)
    # Line 3143
    lbu	$a3,9($a0)
    sb	$a3,12($a1)
    lbu	$v1,10($a0)
    sb	$v1,13($a1)
    lbu	$v0,11($a0)
    sb	$v0,14($a1)
    sb	$a4,15($a1)
    # Line 3144
    lbu	$at,12($a0)
    sb	$at,16($a1)
    lbu	$t9,13($a0)
    sb	$t9,17($a1)
    lbu	$t8,14($a0)
    sb	$t8,18($a1)
    sb	$a4,19($a1)
    # Line 3145
    lbu	$t3,15($a0)
    sb	$t3,20($a1)
    lbu	$t2,16($a0)
    sb	$t2,21($a1)
    lbu	$t1,17($a0)
    sb	$t1,22($a1)
    sb	$a4,23($a1)
    # Line 3146
    lbu	$t0,18($a0)
    sb	$t0,24($a1)
    lbu	$a7,19($a0)
    sb	$a7,25($a1)
    lbu	$a6,20($a0)
    sb	$a6,26($a1)
    sb	$a4,27($a1)
    # Line 3147
    lbu	$a5,21($a0)
    sb	$a5,28($a1)
    lbu	$a3,22($a0)
    # Line 3148
    addiu	$a2,$a2,-8
    # Line 3147
    sb	$a3,29($a1)
    # Line 3148
    addiu	$a1,$a1,32
    slti	$v1,$a2,9
    # Line 3147
    lbu	$v0,23($a0)
    sb	$a4,-1($a1)
    # Line 3148
    addiu	$a0,$a0,24
    beqz	$v1,.L0d95a630
    # Line 3147
    sb	$v0,-2($a1)
.L0d95a724:
    # Line 3150
    blez	$a2,.L0d95a75c
    li	$a4,255
    nop
.L0d95a730:
    # Line 3151
    lbu	$v1,0($a0)
    sb	$v1,0($a1)
    lbu	$v0,1($a0)
    sb	$v0,1($a1)
    # Line 3152
    addiu	$a1,$a1,4
    # Line 3150
    addiu	$a2,$a2,-1
    # Line 3151
    lbu	$at,2($a0)
    sb	$a4,-1($a1)
    # Line 3152
    addiu	$a0,$a0,3
    # Line 3150
    bgtz	$a2,.L0d95a730
    # Line 3151
    sb	$at,-2($a1)
.L0d95a75c:
    # Line 3154
    jr	$ra
    nop
.end convertRGBUbyteToRGBA

# Function: convertRGBAToRGBUbyte
# Declared: Line 3156 (Source lines: 3157-3173)
# Address: 0x0d95a770 - 0x0d95a890 (Size: 288 bytes, Frame: 0)
.ent convertRGBAToRGBUbyte
convertRGBAToRGBUbyte:
    # Line 3157
    slti	$at,$a2,9
    bnez	$at,.L0d95a854
    nop
    nop
.L0d95a780:
    # Line 3159
    lbu	$t3,0($a0)
    sb	$t3,0($a1)
    lbu	$t2,1($a0)
    sb	$t2,1($a1)
    lbu	$t1,2($a0)
    sb	$t1,2($a1)
    # Line 3160
    lbu	$t0,4($a0)
    sb	$t0,3($a1)
    lbu	$a7,5($a0)
    sb	$a7,4($a1)
    lbu	$a6,6($a0)
    sb	$a6,5($a1)
    # Line 3161
    lbu	$a5,8($a0)
    sb	$a5,6($a1)
    lbu	$a4,9($a0)
    sb	$a4,7($a1)
    lbu	$a3,10($a0)
    sb	$a3,8($a1)
    # Line 3162
    lbu	$v1,12($a0)
    sb	$v1,9($a1)
    lbu	$v0,13($a0)
    sb	$v0,10($a1)
    lbu	$at,14($a0)
    sb	$at,11($a1)
    # Line 3163
    lbu	$t9,16($a0)
    sb	$t9,12($a1)
    lbu	$t8,17($a0)
    sb	$t8,13($a1)
    lbu	$t3,18($a0)
    sb	$t3,14($a1)
    # Line 3164
    lbu	$t2,20($a0)
    sb	$t2,15($a1)
    lbu	$t1,21($a0)
    sb	$t1,16($a1)
    lbu	$t0,22($a0)
    sb	$t0,17($a1)
    # Line 3165
    lbu	$a7,24($a0)
    sb	$a7,18($a1)
    lbu	$a6,25($a0)
    sb	$a6,19($a1)
    lbu	$a5,26($a0)
    sb	$a5,20($a1)
    # Line 3166
    lbu	$a4,28($a0)
    sb	$a4,21($a1)
    # Line 3167
    addiu	$a2,$a2,-8
    # Line 3166
    lbu	$a3,29($a0)
    # Line 3167
    slti	$v1,$a2,9
    # Line 3166
    sb	$a3,22($a1)
    # Line 3167
    addiu	$a1,$a1,24
    # Line 3166
    lbu	$v0,30($a0)
    # Line 3167
    addiu	$a0,$a0,32
    beqz	$v1,.L0d95a780
    # Line 3166
    sb	$v0,-1($a1)
.L0d95a854:
    # Line 3169
    blez	$a2,.L0d95a888
    nop
    nop
.L0d95a860:
    # Line 3170
    lbu	$at,0($a0)
    sb	$at,0($a1)
    lbu	$t9,1($a0)
    # Line 3169
    addiu	$a2,$a2,-1
    # Line 3170
    sb	$t9,1($a1)
    # Line 3171
    addiu	$a1,$a1,3
    # Line 3170
    lbu	$t8,2($a0)
    # Line 3171
    addiu	$a0,$a0,4
    # Line 3169
    bgtz	$a2,.L0d95a860
    # Line 3170
    sb	$t8,-1($a1)
.L0d95a888:
    # Line 3173
    jr	$ra
    nop
.end convertRGBAToRGBUbyte

# Function: convertLumaUbyteToRGBA
# Declared: Line 3175 (Source lines: 3176-3192)
# Address: 0x0d95a890 - 0x0d95a9d4 (Size: 324 bytes, Frame: 0)
.ent convertLumaUbyteToRGBA
convertLumaUbyteToRGBA:
    # Line 3176
    slti	$at,$a2,9
    bnez	$at,.L0d95a994
    li	$a4,255
    nop
.L0d95a8a0:
    # Line 3178
    lbu	$t9,0($a0)
    sb	$t9,0($a1)
    lbu	$t8,0($a0)
    sb	$t8,1($a1)
    lbu	$t3,0($a0)
    sb	$t3,2($a1)
    sb	$a4,3($a1)
    # Line 3179
    lbu	$t2,1($a0)
    sb	$t2,4($a1)
    lbu	$t1,1($a0)
    sb	$t1,5($a1)
    lbu	$t0,1($a0)
    sb	$t0,6($a1)
    sb	$a4,7($a1)
    # Line 3180
    lbu	$a7,2($a0)
    sb	$a7,8($a1)
    lbu	$a6,2($a0)
    sb	$a6,9($a1)
    lbu	$a5,2($a0)
    sb	$a5,10($a1)
    sb	$a4,11($a1)
    # Line 3181
    lbu	$a3,3($a0)
    sb	$a3,12($a1)
    lbu	$v1,3($a0)
    sb	$v1,13($a1)
    lbu	$v0,3($a0)
    sb	$v0,14($a1)
    sb	$a4,15($a1)
    # Line 3182
    lbu	$at,4($a0)
    sb	$at,16($a1)
    lbu	$t9,4($a0)
    sb	$t9,17($a1)
    lbu	$t8,4($a0)
    sb	$t8,18($a1)
    sb	$a4,19($a1)
    # Line 3183
    lbu	$t3,5($a0)
    sb	$t3,20($a1)
    lbu	$t2,5($a0)
    sb	$t2,21($a1)
    lbu	$t1,5($a0)
    sb	$t1,22($a1)
    sb	$a4,23($a1)
    # Line 3184
    lbu	$t0,6($a0)
    sb	$t0,24($a1)
    lbu	$a7,6($a0)
    sb	$a7,25($a1)
    lbu	$a6,6($a0)
    sb	$a6,26($a1)
    sb	$a4,27($a1)
    # Line 3185
    lbu	$a5,7($a0)
    sb	$a5,28($a1)
    lbu	$a3,7($a0)
    # Line 3186
    addiu	$a2,$a2,-8
    # Line 3185
    sb	$a3,29($a1)
    # Line 3186
    addiu	$a1,$a1,32
    slti	$v1,$a2,9
    # Line 3185
    lbu	$v0,7($a0)
    sb	$a4,-1($a1)
    # Line 3186
    addiu	$a0,$a0,8
    beqz	$v1,.L0d95a8a0
    # Line 3185
    sb	$v0,-2($a1)
.L0d95a994:
    # Line 3188
    blez	$a2,.L0d95a9cc
    li	$a4,255
    nop
.L0d95a9a0:
    # Line 3189
    lbu	$v1,0($a0)
    sb	$v1,0($a1)
    lbu	$v0,0($a0)
    sb	$v0,1($a1)
    # Line 3190
    addiu	$a1,$a1,4
    # Line 3188
    addiu	$a2,$a2,-1
    # Line 3189
    lbu	$at,0($a0)
    sb	$a4,-1($a1)
    # Line 3190
    addiu	$a0,$a0,1
    # Line 3188
    bgtz	$a2,.L0d95a9a0
    # Line 3189
    sb	$at,-2($a1)
.L0d95a9cc:
    # Line 3192
    jr	$ra
    nop
.end convertLumaUbyteToRGBA

# Function: convertRGBAToLumaUbyte
# Declared: Line 3194 (Source lines: 3195-3201)
# Address: 0x0d95a9e0 - 0x0d95aa98 (Size: 184 bytes, Frame: 0)
.ent convertRGBAToLumaUbyte
convertRGBAToLumaUbyte:
    # Line 3195
    blez	$a2,.L0d95aa90
    move	$a5,$a2
    li	$a4,255
    li	$a6,1
    slt	$v0,$a2,$a6
    movz	$a6,$a2,$v0
    andi	$at,$a6,0x1
    beqz	$at,.L0d95aa30
    sra	$a7,$a6,0x1
    # Line 3197
    lbu	$a3,1($a0)
    lbu	$a2,0($a0)
    lbu	$v1,2($a0)
    addu	$a2,$a2,$a3
    # Line 3196
    addiu	$a5,$a5,-1
    # Line 3197
    addu	$v1,$v1,$a2
    # Line 3199
    addiu	$a1,$a1,1
    # Line 3198
    slt	$a2,$a4,$v1
    # Line 3199
    addiu	$a0,$a0,4
    # Line 3198
    movn	$v1,$a4,$a2
    sb	$v1,-1($a1)
.L0d95aa30:
    beqz	$a7,.L0d95aa90
    move	$a2,$a5
    nop
    nop
.L0d95aa40:
    # Line 3197
    lbu	$t9,1($a0)
    lbu	$t8,0($a0)
    lbu	$t3,2($a0)
    addu	$t8,$t8,$t9
    addu	$t3,$t3,$t8
    # Line 3198
    slt	$t8,$a4,$t3
    movn	$t3,$a4,$t8
    sb	$t3,0($a1)
    # Line 3197
    lbu	$t2,5($a0)
    lbu	$t1,4($a0)
    lbu	$t0,6($a0)
    addu	$t1,$t1,$t2
    addu	$t0,$t0,$t1
    # Line 3196
    addiu	$a2,$a2,-2
    # Line 3198
    slt	$t1,$a4,$t0
    # Line 3199
    addiu	$a1,$a1,2
    # Line 3198
    movn	$t0,$a4,$t1
    # Line 3199
    addiu	$a0,$a0,8
    # Line 3196
    bgtz	$a2,.L0d95aa40
    # Line 3198
    sb	$t0,-1($a1)
.L0d95aa90:
    # Line 3201
    jr	$ra
    nop
.end convertRGBAToLumaUbyte

# Function: convertYCRCBToRGBA
# Declared: Line 3203 (Source lines: 3206-3242)
# Address: 0x0d95aaa0 - 0x0d95ac38 (Size: 408 bytes, Frame: 0)
.ent convertYCRCBToRGBA
convertYCRCBToRGBA:
    # Line 3206
    sra	$a4,$a2,0x1
    li	$t8,1634
    blez	$a4,.L0d95ac30
    li	$t3,255
.L0d95aab0:
    # Line 3212
    lbu	$a2,3($a0)
    # Line 3209
    lbu	$t2,0($a0)
    # Line 3212
    addiu	$a2,$a2,-16
    # Line 3209
    addiu	$t2,$t2,-128
    # Line 3227
    sll	$v1,$a2,0x3
    # Line 3225
    sll	$a6,$t2,0x7
    # Line 3227
    addu	$v1,$v1,$a2
    # Line 3225
    addu	$a6,$a6,$t2
    # Line 3227
    sll	$v1,$v1,0x2
    # Line 3225
    sll	$a6,$a6,0x3
    # Line 3227
    addu	$v1,$v1,$a2
    # Line 3211
    lbu	$t9,2($a0)
    # Line 3225
    addu	$a6,$a6,$t2
    # Line 3227
    sll	$v1,$v1,0x2
    # Line 3225
    sll	$a6,$a6,0x1
    # Line 3227
    addu	$v1,$v1,$a2
    # Line 3210
    lbu	$a2,1($a0)
    # Line 3211
    addiu	$t9,$t9,-128
    # Line 3227
    sll	$v1,$v1,0x3
    # Line 3236
    addu	$a7,$a6,$v1
    # Line 3210
    addiu	$a2,$a2,-16
    # Line 3212
    sll	$at,$a2,0x3
    # Line 3236
    addiu	$a7,$a7,512
    # Line 3212
    mult	$t9,$t8
    # Line 3236
    sra	$a7,$a7,0xa
    slti	$a3,$a7,0
    # Line 3212
    addu	$at,$at,$a2
    sll	$at,$at,0x2
    # Line 3237
    slt	$a5,$t3,$a7
    movn	$a7,$t3,$a5
    # Line 3212
    addu	$at,$at,$a2
    sll	$at,$at,0x2
    movn	$a7,$zero,$a3
    addu	$at,$at,$a2
    mflo	$a3
    sll	$at,$at,0x3
    # Line 3227
    addu	$v0,$a3,$v1
    # Line 3212
    addu	$a3,$at,$a3
    addiu	$a3,$a3,512
    sra	$a3,$a3,0xa
    # Line 3227
    addiu	$v0,$v0,512
    slti	$a2,$a3,0
    sra	$v0,$v0,0xa
    slti	$t0,$v0,0
    # Line 3235
    slt	$t1,$t3,$v0
    movn	$v0,$t3,$t1
    # Line 3224
    slt	$t1,$t3,$a3
    movn	$a3,$t3,$t1
    # Line 3225
    addu	$a6,$at,$a6
    movn	$a3,$zero,$a2
    addiu	$a6,$a6,512
    sra	$a6,$a6,0xa
    movn	$v0,$zero,$t0
    # Line 3226
    slt	$t0,$t3,$a6
    slti	$a5,$a6,0
    movn	$a6,$t3,$t0
    # Line 3224
    sll	$t0,$t2,0x2
    # Line 3240
    addiu	$a1,$a1,8
    movn	$a6,$zero,$a5
    # Line 3224
    subu	$t0,$t0,$t2
    sll	$a5,$t9,0x2
    sll	$t0,$t0,0x3
    subu	$a5,$a5,$t9
    addu	$t0,$t0,$t2
    sll	$a5,$a5,0x2
    sll	$t0,$t0,0x4
    addu	$a5,$a5,$t9
    # Line 3206
    addiu	$a4,$a4,-1
    # Line 3224
    sll	$a5,$a5,0x6
    addu	$t0,$t0,$t2
    # Line 3235
    subu	$v1,$v1,$a5
    # Line 3224
    subu	$at,$at,$a5
    # Line 3235
    subu	$v1,$v1,$t0
    # Line 3238
    sb	$t3,-1($a1)
    # Line 3224
    subu	$at,$at,$t0
    # Line 3235
    addiu	$v1,$v1,512
    # Line 3227
    sb	$t3,-5($a1)
    # Line 3224
    addiu	$at,$at,512
    # Line 3235
    sra	$v1,$v1,0xa
    # Line 3237
    sb	$a7,-2($a1)
    # Line 3224
    sra	$at,$at,0xa
    # Line 3236
    slt	$a2,$t3,$v1
    # Line 3235
    sb	$v0,-4($a1)
    slti	$a5,$v1,0
    # Line 3236
    movn	$v1,$t3,$a2
    # Line 3226
    sb	$a6,-6($a1)
    movn	$v1,$zero,$a5
    # Line 3225
    slt	$a2,$t3,$at
    # Line 3224
    sb	$a3,-8($a1)
    slti	$v0,$at,0
    # Line 3225
    movn	$at,$t3,$a2
    # Line 3236
    sb	$v1,-3($a1)
    movn	$at,$zero,$v0
    # Line 3240
    addiu	$a0,$a0,4
    # Line 3206
    bgtz	$a4,.L0d95aab0
    # Line 3225
    sb	$at,-7($a1)
.L0d95ac30:
    # Line 3242
    jr	$ra
    nop
.end convertYCRCBToRGBA

# Function: convertRGBAToYCRCB
# Declared: Line 3244 (Source lines: 3247-3268)
# Address: 0x0d95ac40 - 0x0d95ad9c (Size: 348 bytes, Frame: 0)
.ent convertRGBAToYCRCB
convertRGBAToYCRCB:
    # Line 3247
    li	$a5,-2
    and	$a5,$a2,$a5
    blez	$a5,.L0d95ad94
    addiu	$a4,$a5,-1
    b	.L0d95ad28
    # Line 3250
    lbu	$a7,1($a0)
    nop
    nop
.L0d95ac60:
    # Line 3259
    lbu	$at,2($a0)
    # Line 3257
    lbu	$v0,0($a0)
    # Line 3263
    addiu	$a1,$a1,3
    # Line 3259
    addu	$at,$t0,$at
    # Line 3258
    lbu	$t9,1($a0)
    # Line 3259
    sra	$at,$at,0x1
    # Line 3257
    addu	$v0,$a6,$v0
    # Line 3258
    addu	$t9,$a7,$t9
    # Line 3257
    sra	$v0,$v0,0x1
    # Line 3262
    subu	$v1,$v0,$at
    # Line 3258
    sra	$t9,$t9,0x1
    # Line 3262
    sll	$t8,$v1,0x3
    subu	$t3,$v0,$t9
    addu	$t8,$t8,$v1
    sll	$t2,$t3,0x2
    sll	$t8,$t8,0x3
    subu	$t2,$t2,$t3
    addu	$t8,$t8,$v1
    sll	$t2,$t2,0x4
    # Line 3260
    subu	$t9,$at,$t9
    # Line 3262
    subu	$t2,$t2,$t3
    # Line 3260
    subu	$at,$at,$v0
    # Line 3262
    sll	$t2,$t2,0x3
    addu	$t2,$t2,$t3
    # Line 3260
    sll	$t3,$t9,0x3
    sll	$t1,$at,0x2
    addu	$t3,$t3,$t9
    addu	$t1,$t1,$at
    sll	$t3,$t3,0x2
    sll	$t1,$t1,0x2
    addu	$t3,$t3,$t9
    subu	$t1,$t1,$at
    sll	$t3,$t3,0x2
    sll	$t1,$t1,0x3
    addu	$t3,$t3,$t9
    # Line 3262
    addu	$t2,$t2,$t8
    # Line 3260
    sll	$t3,$t3,0x1
    # Line 3262
    addiu	$t2,$t2,256
    # Line 3260
    addu	$t1,$t1,$t3
    # Line 3261
    sb	$a3,-2($a1)
    # Line 3262
    sra	$t2,$t2,0xa
    # Line 3260
    addiu	$t1,$t1,256
    # Line 3262
    addiu	$t2,$t2,128
    sb	$t2,-1($a1)
    # Line 3260
    sra	$t1,$t1,0xa
    addiu	$t1,$t1,128
    sb	$t1,-3($a1)
.L0d95ad1c:
    # Line 3247
    blez	$a5,.L0d95ad94
    nop
    # Line 3250
    lbu	$a7,1($a0)
.L0d95ad28:
    # Line 3254
    sll	$t2,$a7,0x7
    addu	$t2,$t2,$a7
    # Line 3249
    lbu	$a6,0($a0)
    # Line 3254
    sll	$t2,$t2,0x2
    # Line 3251
    lbu	$t0,2($a0)
    # Line 3254
    sll	$t1,$a6,0x5
    sll	$a3,$t0,0x2
    addu	$t1,$t1,$a6
    subu	$a3,$a3,$t0
    sll	$t1,$t1,0x3
    # Line 3252
    addiu	$a0,$a0,4
    # Line 3254
    sll	$a3,$a3,0x3
    addu	$a3,$a3,$t0
    subu	$t1,$t1,$a6
    addu	$t1,$t1,$t2
    sll	$a3,$a3,0x2
    # Line 3247
    addiu	$a5,$a5,-1
    # Line 3254
    addu	$a3,$a3,$t1
    andi	$t1,$a4,0x1
    addiu	$a3,$a3,512
    # Line 3247
    addiu	$a4,$a4,-1
    # Line 3254
    sra	$a3,$a3,0xa
    bnez	$t1,.L0d95ac60
    addiu	$a3,$a3,16
    # Line 3265
    sb	$a3,0($a1)
    b	.L0d95ad1c
    addiu	$a1,$a1,1
.L0d95ad94:
    # Line 3268
    jr	$ra
    nop
.end convertRGBAToYCRCB

# Function: convertYCRCBToRGBAImage
# Declared: Line 3270 (Source lines: 3271-3296)
# Address: 0x0d95ada0 - 0x0d95aec0 (Size: 288 bytes, Frame: 208)
.ent convertYCRCBToRGBAImage
convertYCRCBToRGBAImage:
    # Line 3271
    addiu	$sp,$sp,-80
    sd	$s4,16($sp)
    # Line 3275
    lw	$s4,168($a1)
    # Line 3271
    sd	$s5,24($sp)
    # Line 3276
    lw	$s5,172($a1)
    # Line 3280
    mult	$s5,$s4
    sd	$s2,56($sp)
    sd	$s0,48($sp)
    lw	$t9,0($a0)
    sd	$s1,40($sp)
    # Line 3271
    sd	$s3,32($sp)
    move	$s3,$a1
    sd	$ra,8($sp)
    # Line 3280
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    sd	$s5,64($sp)
    move	$s0,$v0
    sd	$v0,0($sp)
    # Line 3281
    lw	$s1,12($s3)
    # Line 3282
    blez	$s5,.L0d95ae74
    move	$s2,$s5
    sll	$s5,$s4,0x2
    nop
.L0d95ae00:
    # Line 3285
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,-21856
    move	$a0,$s1
    move	$a1,$s0
    bal crmCopyPixelsXferRW
    move	$a2,$s4
    # Line 3286
    lw	$ra,16($s3)
    # Line 3284
    addiu	$s2,$s2,-1
    # Line 3287
    addu	$s0,$s5,$s0
    # Line 3284
    bgtz	$s2,.L0d95ae00
    # Line 3286
    addu	$s1,$ra,$s1
    ld	$v0,0($sp)
    ld	$s1,40($sp)
    ld	$s0,48($sp)
    ld	$s4,16($sp)
    ld	$s2,56($sp)
    # Line 3293
    sw	$s5,16($s3)
    # Line 3295
    sw	$v0,12($s3)
    # Line 3294
    sw	$v0,8($s3)
    # Line 3291
    li	$v0,4
    # Line 3292
    sw	$v0,28($s3)
    # Line 3291
    sw	$v0,20($s3)
    ld	$ra,8($sp)
    # Line 3290
    li	$at,6408
    sw	$at,0($s3)
    # Line 3296
    ld	$s3,32($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d95ae74:
    ld	$s2,56($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 3284
    sll	$a1,$s4,0x2
    # Line 3296
    ld	$s4,16($sp)
    ld	$s5,24($sp)
    # Line 3293
    sw	$a1,16($s3)
    # Line 3291
    li	$a0,4
    # Line 3292
    sw	$a0,28($s3)
    # Line 3291
    sw	$a0,20($s3)
    # Line 3290
    li	$v1,6408
    sw	$v1,0($s3)
    # Line 3295
    ld	$a2,0($sp)
    # Line 3296
    ld	$ra,8($sp)
    # Line 3295
    sw	$a2,12($s3)
    # Line 3294
    sw	$a2,8($s3)
    # Line 3296
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end convertYCRCBToRGBAImage

# Function: convertDepthUintToSZ
# Declared: Line 3298 (Source lines: 3299-3301)
# Address: 0x0d95aec0 - 0x0d95aefc (Size: 60 bytes, Frame: 16)
.ent convertDepthUintToSZ
convertDepthUintToSZ:
    # Line 3299
    lui	$a3,0xf
    addiu	$sp,$sp,-16
    addiu	$a3,$a3,24268
    sd	$gp,8($sp)
    addu	$gp,$t9,$a3
    # Line 3300
    # lw $t9, -22808($gp) # &bcopy
    addiu	$a1,$a1,1
    sll	$a2,$a2,0x2
    # Line 3299
    sd	$ra,0($sp)
    # Line 3300
    jal	bcopy
    addiu	$a2,$a2,-1
    ld	$ra,0($sp)
    # Line 3301
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end convertDepthUintToSZ

# Function: convertSZToDepthUint
# Declared: Line 3303 (Source lines: 3304-3320)
# Address: 0x0d95af00 - 0x0d95b068 (Size: 360 bytes, Frame: 0)
.ent convertSZToDepthUint
convertSZToDepthUint:
    # Line 3304
    slti	$at,$a2,9
    bnez	$at,.L0d95b024
    nop
    nop
.L0d95af10:
    # Line 3306
    lbu	$a5,1($a0)
    sb	$a5,0($a1)
    lbu	$a4,2($a0)
    sb	$a4,1($a1)
    lbu	$a3,3($a0)
    sb	$a3,2($a1)
    lbu	$v1,1($a0)
    sb	$v1,3($a1)
    # Line 3307
    lbu	$v0,5($a0)
    sb	$v0,4($a1)
    lbu	$at,6($a0)
    sb	$at,5($a1)
    lbu	$t9,7($a0)
    sb	$t9,6($a1)
    lbu	$t8,5($a0)
    sb	$t8,7($a1)
    # Line 3308
    lbu	$t3,9($a0)
    sb	$t3,8($a1)
    lbu	$t2,10($a0)
    sb	$t2,9($a1)
    lbu	$t1,11($a0)
    sb	$t1,10($a1)
    lbu	$t0,9($a0)
    sb	$t0,11($a1)
    # Line 3309
    lbu	$a7,13($a0)
    sb	$a7,12($a1)
    lbu	$a6,14($a0)
    sb	$a6,13($a1)
    lbu	$a5,15($a0)
    sb	$a5,14($a1)
    lbu	$a4,13($a0)
    sb	$a4,15($a1)
    # Line 3310
    lbu	$a3,17($a0)
    sb	$a3,16($a1)
    lbu	$v1,18($a0)
    sb	$v1,17($a1)
    lbu	$v0,19($a0)
    sb	$v0,18($a1)
    lbu	$at,17($a0)
    sb	$at,19($a1)
    # Line 3311
    lbu	$t9,21($a0)
    sb	$t9,20($a1)
    lbu	$t8,22($a0)
    sb	$t8,21($a1)
    lbu	$t3,23($a0)
    sb	$t3,22($a1)
    lbu	$t2,21($a0)
    sb	$t2,23($a1)
    # Line 3312
    lbu	$t1,25($a0)
    sb	$t1,24($a1)
    lbu	$t0,26($a0)
    sb	$t0,25($a1)
    lbu	$a7,27($a0)
    sb	$a7,26($a1)
    lbu	$a6,25($a0)
    sb	$a6,27($a1)
    # Line 3313
    lbu	$a5,29($a0)
    sb	$a5,28($a1)
    lbu	$a4,30($a0)
    sb	$a4,29($a1)
    # Line 3314
    addiu	$a2,$a2,-8
    # Line 3313
    lbu	$a3,31($a0)
    # Line 3314
    slti	$v1,$a2,9
    # Line 3313
    sb	$a3,30($a1)
    # Line 3314
    addiu	$a1,$a1,32
    # Line 3313
    lbu	$v0,29($a0)
    # Line 3314
    addiu	$a0,$a0,32
    beqz	$v1,.L0d95af10
    # Line 3313
    sb	$v0,-1($a1)
.L0d95b024:
    # Line 3316
    blez	$a2,.L0d95b060
    nop
    nop
.L0d95b030:
    # Line 3317
    lbu	$t1,1($a0)
    sb	$t1,0($a1)
    lbu	$t0,2($a0)
    sb	$t0,1($a1)
    lbu	$a7,3($a0)
    # Line 3316
    addiu	$a2,$a2,-1
    # Line 3317
    sb	$a7,2($a1)
    # Line 3318
    addiu	$a1,$a1,4
    # Line 3317
    lbu	$a6,1($a0)
    # Line 3318
    addiu	$a0,$a0,4
    # Line 3316
    bgtz	$a2,.L0d95b030
    # Line 3317
    sb	$a6,-1($a1)
.L0d95b060:
    # Line 3320
    jr	$ra
    nop
.end convertSZToDepthUint

# Function: convertSZToScaledDepthUint
# Declared: Line 3322 (Source lines: 3323-3338)
# Address: 0x0d95b070 - 0x0d95b298 (Size: 552 bytes, Frame: 0)
.ent convertSZToScaledDepthUint
convertSZToScaledDepthUint:
    # Line 3325
    slti	$at,$a2,9
    # Line 3323
    move	$a4,$a0
    # Line 3325
    bnez	$at,.L0d95b1f8
    # Line 3323
    move	$a5,$a1
    # Line 3325
    addiu	$t0,$a2,-1
    addiu	$a6,$a2,6
    slti	$a7,$a2,1
    movz	$a6,$t0,$a7
    sra	$a6,$a6,0x3
    andi	$v0,$a6,0x1
    lui	$a1,0xff
    beqz	$v0,.L0d95b110
    ori	$a1,$a1,0xffff
    # Line 3329
    lw	$v1,0($a0)
    and	$v1,$a1,$v1
    sw	$v1,0($a5)
    lw	$v0,4($a0)
    and	$v0,$a1,$v0
    sw	$v0,4($a5)
    # Line 3330
    lw	$at,8($a0)
    and	$at,$a1,$at
    sw	$at,8($a5)
    lw	$t9,12($a0)
    and	$t9,$a1,$t9
    sw	$t9,12($a5)
    # Line 3331
    lw	$t8,16($a0)
    and	$t8,$a1,$t8
    sw	$t8,16($a5)
    lw	$t3,20($a0)
    and	$t3,$a1,$t3
    sw	$t3,20($a5)
    # Line 3332
    lw	$t2,24($a0)
    and	$t2,$a1,$t2
    sw	$t2,24($a5)
    lw	$t1,28($a0)
    # Line 3333
    addiu	$a2,$a2,-8
    addiu	$a5,$a5,32
    addiu	$a4,$a0,32
    # Line 3332
    and	$t1,$a1,$t1
    sw	$t1,-4($a5)
.L0d95b110:
    sra	$a0,$a6,0x1
    beqz	$a0,.L0d95b1f8
    move	$a3,$a5
    nop
.L0d95b120:
    # Line 3329
    lw	$a7,0($a4)
    and	$a7,$a1,$a7
    sw	$a7,0($a3)
    lw	$a6,4($a4)
    and	$a6,$a1,$a6
    sw	$a6,4($a3)
    # Line 3330
    lw	$a5,8($a4)
    and	$a5,$a1,$a5
    sw	$a5,8($a3)
    lw	$a0,12($a4)
    and	$a0,$a1,$a0
    sw	$a0,12($a3)
    # Line 3331
    lw	$v1,16($a4)
    and	$v1,$a1,$v1
    sw	$v1,16($a3)
    lw	$v0,20($a4)
    and	$v0,$a1,$v0
    sw	$v0,20($a3)
    # Line 3332
    lw	$at,24($a4)
    and	$at,$a1,$at
    sw	$at,24($a3)
    lw	$t9,28($a4)
    and	$t9,$a1,$t9
    sw	$t9,28($a3)
    # Line 3329
    lw	$t8,32($a4)
    and	$t8,$a1,$t8
    sw	$t8,32($a3)
    lw	$t3,36($a4)
    and	$t3,$a1,$t3
    sw	$t3,36($a3)
    # Line 3330
    lw	$t2,40($a4)
    and	$t2,$a1,$t2
    sw	$t2,40($a3)
    lw	$t1,44($a4)
    and	$t1,$a1,$t1
    sw	$t1,44($a3)
    # Line 3331
    lw	$t0,48($a4)
    and	$t0,$a1,$t0
    sw	$t0,48($a3)
    lw	$a7,52($a4)
    and	$a7,$a1,$a7
    sw	$a7,52($a3)
    # Line 3332
    lw	$a6,56($a4)
    # Line 3333
    addiu	$a2,$a2,-16
    # Line 3332
    and	$a6,$a1,$a6
    sw	$a6,56($a3)
    # Line 3333
    slti	$a6,$a2,9
    # Line 3332
    lw	$a5,60($a4)
    # Line 3333
    addiu	$a3,$a3,64
    addiu	$a4,$a4,64
    # Line 3332
    and	$a5,$a1,$a5
    # Line 3333
    beqz	$a6,.L0d95b120
    # Line 3332
    sw	$a5,-4($a3)
    move	$a5,$a3
.L0d95b1f8:
    # Line 3335
    blez	$a2,.L0d95b290
    li	$a6,1
    slt	$a3,$a2,$a6
    movz	$a6,$a2,$a3
    andi	$a3,$a6,0x3
    lui	$a1,0xff
    ori	$a1,$a1,0xffff
    beqz	$a3,.L0d95b23c
    sra	$t0,$a6,0x2
.L0d95b21c:
    addiu	$a2,$a2,-1
    addiu	$a3,$a3,-1
    # Line 3336
    lw	$a7,0($a4)
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    and	$a7,$a1,$a7
    bnez	$a3,.L0d95b21c
    sw	$a7,-4($a5)
.L0d95b23c:
    beqz	$t0,.L0d95b290
    move	$a3,$a5
    nop
    nop
    nop
.L0d95b250:
    lw	$t8,0($a4)
    and	$t8,$a1,$t8
    sw	$t8,0($a3)
    lw	$t3,4($a4)
    and	$t3,$a1,$t3
    sw	$t3,4($a3)
    lw	$t2,8($a4)
    and	$t2,$a1,$t2
    sw	$t2,8($a3)
    # Line 3335
    addiu	$a2,$a2,-4
    # Line 3336
    lw	$t1,12($a4)
    addiu	$a3,$a3,16
    addiu	$a4,$a4,16
    and	$t1,$a1,$t1
    # Line 3335
    bgtz	$a2,.L0d95b250
    # Line 3336
    sw	$t1,-4($a3)
.L0d95b290:
    # Line 3338
    jr	$ra
    nop
.end convertSZToScaledDepthUint

# Function: convertStencilUbyteToSZ
# Declared: Line 3340 (Source lines: 3341-3353)
# Address: 0x0d95b2a0 - 0x0d95b4c8 (Size: 552 bytes, Frame: 0)
.ent convertStencilUbyteToSZ
convertStencilUbyteToSZ:
    # Line 3341
    slti	$at,$a2,9
    addiu	$a5,$a2,6
    bnez	$at,.L0d95b444
    addiu	$a7,$a2,-1
    slti	$a6,$a2,1
    movz	$a5,$a7,$a6
    sra	$a5,$a5,0x3
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95b31c
    sra	$v1,$a5,0x2
.L0d95b2c8:
    # Line 3343
    lbu	$v0,0($a0)
    sb	$v0,0($a1)
    lbu	$at,1($a0)
    sb	$at,4($a1)
    # Line 3344
    lbu	$t9,2($a0)
    sb	$t9,8($a1)
    lbu	$t8,3($a0)
    sb	$t8,12($a1)
    # Line 3345
    lbu	$t3,4($a0)
    sb	$t3,16($a1)
    lbu	$t2,5($a0)
    sb	$t2,20($a1)
    # Line 3346
    lbu	$t1,6($a0)
    addiu	$a4,$a4,-1
    sb	$t1,24($a1)
    # Line 3347
    addiu	$a2,$a2,-8
    addiu	$a1,$a1,32
    # Line 3346
    lbu	$t0,7($a0)
    # Line 3347
    addiu	$a0,$a0,8
    bnez	$a4,.L0d95b2c8
    # Line 3346
    sb	$t0,-4($a1)
.L0d95b31c:
    beqz	$v1,.L0d95b444
    nop
    nop
    nop
    nop
.L0d95b330:
    # Line 3343
    lbu	$a7,0($a0)
    sb	$a7,0($a1)
    lbu	$a6,1($a0)
    sb	$a6,4($a1)
    # Line 3344
    lbu	$a5,2($a0)
    sb	$a5,8($a1)
    lbu	$a4,3($a0)
    sb	$a4,12($a1)
    # Line 3345
    lbu	$a3,4($a0)
    sb	$a3,16($a1)
    lbu	$v1,5($a0)
    sb	$v1,20($a1)
    # Line 3346
    lbu	$v0,6($a0)
    sb	$v0,24($a1)
    lbu	$at,7($a0)
    sb	$at,28($a1)
    # Line 3343
    lbu	$t9,8($a0)
    sb	$t9,32($a1)
    lbu	$t8,9($a0)
    sb	$t8,36($a1)
    # Line 3344
    lbu	$t3,10($a0)
    sb	$t3,40($a1)
    lbu	$t2,11($a0)
    sb	$t2,44($a1)
    # Line 3345
    lbu	$t1,12($a0)
    sb	$t1,48($a1)
    lbu	$t0,13($a0)
    sb	$t0,52($a1)
    # Line 3346
    lbu	$a7,14($a0)
    sb	$a7,56($a1)
    lbu	$a6,15($a0)
    sb	$a6,60($a1)
    # Line 3343
    lbu	$a5,16($a0)
    sb	$a5,64($a1)
    lbu	$a4,17($a0)
    sb	$a4,68($a1)
    # Line 3344
    lbu	$a3,18($a0)
    sb	$a3,72($a1)
    lbu	$v1,19($a0)
    sb	$v1,76($a1)
    # Line 3345
    lbu	$v0,20($a0)
    sb	$v0,80($a1)
    lbu	$at,21($a0)
    sb	$at,84($a1)
    # Line 3346
    lbu	$t9,22($a0)
    sb	$t9,88($a1)
    lbu	$t8,23($a0)
    sb	$t8,92($a1)
    # Line 3343
    lbu	$t3,24($a0)
    sb	$t3,96($a1)
    lbu	$t2,25($a0)
    sb	$t2,100($a1)
    # Line 3344
    lbu	$t1,26($a0)
    sb	$t1,104($a1)
    lbu	$t0,27($a0)
    sb	$t0,108($a1)
    # Line 3345
    lbu	$a7,28($a0)
    sb	$a7,112($a1)
    lbu	$a6,29($a0)
    sb	$a6,116($a1)
    # Line 3347
    addiu	$a2,$a2,-32
    # Line 3346
    lbu	$a5,30($a0)
    # Line 3347
    slti	$a4,$a2,9
    # Line 3346
    sb	$a5,120($a1)
    # Line 3347
    addiu	$a1,$a1,128
    # Line 3346
    lbu	$a3,31($a0)
    # Line 3347
    addiu	$a0,$a0,32
    beqz	$a4,.L0d95b330
    # Line 3346
    sb	$a3,-4($a1)
.L0d95b444:
    # Line 3349
    blez	$a2,.L0d95b4c0
    li	$a5,1
    slt	$t0,$a2,$a5
    movz	$a5,$a2,$t0
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95b47c
    sra	$t2,$a5,0x2
.L0d95b460:
    addiu	$a4,$a4,-1
    addiu	$a2,$a2,-1
    # Line 3351
    addiu	$a1,$a1,4
    # Line 3350
    lbu	$t1,0($a0)
    addiu	$a0,$a0,1
    bnez	$a4,.L0d95b460
    sb	$t1,-4($a1)
.L0d95b47c:
    beqz	$t2,.L0d95b4c0
    nop
    nop
    nop
    nop
.L0d95b490:
    lbu	$at,0($a0)
    sb	$at,0($a1)
    lbu	$t9,1($a0)
    sb	$t9,4($a1)
    lbu	$t8,2($a0)
    # Line 3349
    addiu	$a2,$a2,-4
    # Line 3350
    sb	$t8,8($a1)
    # Line 3351
    addiu	$a1,$a1,16
    # Line 3350
    lbu	$t3,3($a0)
    addiu	$a0,$a0,4
    # Line 3349
    bgtz	$a2,.L0d95b490
    # Line 3350
    sb	$t3,-4($a1)
.L0d95b4c0:
    # Line 3353
    jr	$ra
    nop
.end convertStencilUbyteToSZ

# Function: convertSZToStencilUbyte
# Declared: Line 3355 (Source lines: 3356-3368)
# Address: 0x0d95b4d0 - 0x0d95b6f8 (Size: 552 bytes, Frame: 0)
.ent convertSZToStencilUbyte
convertSZToStencilUbyte:
    # Line 3356
    slti	$at,$a2,9
    addiu	$a5,$a2,6
    bnez	$at,.L0d95b674
    addiu	$a7,$a2,-1
    slti	$a6,$a2,1
    movz	$a5,$a7,$a6
    sra	$a5,$a5,0x3
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95b54c
    sra	$v1,$a5,0x2
.L0d95b4f8:
    # Line 3358
    lbu	$v0,0($a0)
    sb	$v0,0($a1)
    lbu	$at,4($a0)
    sb	$at,1($a1)
    # Line 3359
    lbu	$t9,8($a0)
    sb	$t9,2($a1)
    lbu	$t8,12($a0)
    sb	$t8,3($a1)
    # Line 3360
    lbu	$t3,16($a0)
    sb	$t3,4($a1)
    lbu	$t2,20($a0)
    sb	$t2,5($a1)
    # Line 3361
    lbu	$t1,24($a0)
    addiu	$a4,$a4,-1
    sb	$t1,6($a1)
    # Line 3362
    addiu	$a2,$a2,-8
    addiu	$a1,$a1,8
    # Line 3361
    lbu	$t0,28($a0)
    # Line 3362
    addiu	$a0,$a0,32
    bnez	$a4,.L0d95b4f8
    # Line 3361
    sb	$t0,-1($a1)
.L0d95b54c:
    beqz	$v1,.L0d95b674
    nop
    nop
    nop
    nop
.L0d95b560:
    # Line 3358
    lbu	$a7,0($a0)
    sb	$a7,0($a1)
    lbu	$a6,4($a0)
    sb	$a6,1($a1)
    # Line 3359
    lbu	$a5,8($a0)
    sb	$a5,2($a1)
    lbu	$a4,12($a0)
    sb	$a4,3($a1)
    # Line 3360
    lbu	$a3,16($a0)
    sb	$a3,4($a1)
    lbu	$v1,20($a0)
    sb	$v1,5($a1)
    # Line 3361
    lbu	$v0,24($a0)
    sb	$v0,6($a1)
    lbu	$at,28($a0)
    sb	$at,7($a1)
    # Line 3358
    lbu	$t9,32($a0)
    sb	$t9,8($a1)
    lbu	$t8,36($a0)
    sb	$t8,9($a1)
    # Line 3359
    lbu	$t3,40($a0)
    sb	$t3,10($a1)
    lbu	$t2,44($a0)
    sb	$t2,11($a1)
    # Line 3360
    lbu	$t1,48($a0)
    sb	$t1,12($a1)
    lbu	$t0,52($a0)
    sb	$t0,13($a1)
    # Line 3361
    lbu	$a7,56($a0)
    sb	$a7,14($a1)
    lbu	$a6,60($a0)
    sb	$a6,15($a1)
    # Line 3358
    lbu	$a5,64($a0)
    sb	$a5,16($a1)
    lbu	$a4,68($a0)
    sb	$a4,17($a1)
    # Line 3359
    lbu	$a3,72($a0)
    sb	$a3,18($a1)
    lbu	$v1,76($a0)
    sb	$v1,19($a1)
    # Line 3360
    lbu	$v0,80($a0)
    sb	$v0,20($a1)
    lbu	$at,84($a0)
    sb	$at,21($a1)
    # Line 3361
    lbu	$t9,88($a0)
    sb	$t9,22($a1)
    lbu	$t8,92($a0)
    sb	$t8,23($a1)
    # Line 3358
    lbu	$t3,96($a0)
    sb	$t3,24($a1)
    lbu	$t2,100($a0)
    sb	$t2,25($a1)
    # Line 3359
    lbu	$t1,104($a0)
    sb	$t1,26($a1)
    lbu	$t0,108($a0)
    sb	$t0,27($a1)
    # Line 3360
    lbu	$a7,112($a0)
    sb	$a7,28($a1)
    lbu	$a6,116($a0)
    sb	$a6,29($a1)
    # Line 3362
    addiu	$a2,$a2,-32
    # Line 3361
    lbu	$a5,120($a0)
    # Line 3362
    slti	$a4,$a2,9
    # Line 3361
    sb	$a5,30($a1)
    # Line 3362
    addiu	$a1,$a1,32
    # Line 3361
    lbu	$a3,124($a0)
    # Line 3362
    addiu	$a0,$a0,128
    beqz	$a4,.L0d95b560
    # Line 3361
    sb	$a3,-1($a1)
.L0d95b674:
    # Line 3364
    blez	$a2,.L0d95b6f0
    li	$a5,1
    slt	$t0,$a2,$a5
    movz	$a5,$a2,$t0
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95b6ac
    sra	$t2,$a5,0x2
.L0d95b690:
    addiu	$a4,$a4,-1
    addiu	$a2,$a2,-1
    # Line 3365
    addiu	$a1,$a1,1
    lbu	$t1,0($a0)
    # Line 3366
    addiu	$a0,$a0,4
    bnez	$a4,.L0d95b690
    # Line 3365
    sb	$t1,-1($a1)
.L0d95b6ac:
    beqz	$t2,.L0d95b6f0
    nop
    nop
    nop
    nop
.L0d95b6c0:
    lbu	$at,0($a0)
    sb	$at,0($a1)
    lbu	$t9,4($a0)
    sb	$t9,1($a1)
    lbu	$t8,8($a0)
    # Line 3364
    addiu	$a2,$a2,-4
    # Line 3365
    sb	$t8,2($a1)
    addiu	$a1,$a1,4
    lbu	$t3,12($a0)
    # Line 3366
    addiu	$a0,$a0,16
    # Line 3364
    bgtz	$a2,.L0d95b6c0
    # Line 3365
    sb	$t3,-1($a1)
.L0d95b6f0:
    # Line 3368
    jr	$ra
    nop
.end convertSZToStencilUbyte

# Function: convertStencilUshortToSZ
# Declared: Line 3370 (Source lines: 3371-3383)
# Address: 0x0d95b700 - 0x0d95b928 (Size: 552 bytes, Frame: 0)
.ent convertStencilUshortToSZ
convertStencilUshortToSZ:
    # Line 3371
    slti	$at,$a2,9
    addiu	$a5,$a2,6
    bnez	$at,.L0d95b8a4
    addiu	$a7,$a2,-1
    slti	$a6,$a2,1
    movz	$a5,$a7,$a6
    sra	$a5,$a5,0x3
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95b77c
    sra	$v1,$a5,0x2
.L0d95b728:
    # Line 3373
    lbu	$v0,1($a0)
    sb	$v0,0($a1)
    lbu	$at,3($a0)
    sb	$at,4($a1)
    # Line 3374
    lbu	$t9,5($a0)
    sb	$t9,8($a1)
    lbu	$t8,7($a0)
    sb	$t8,12($a1)
    # Line 3375
    lbu	$t3,9($a0)
    sb	$t3,16($a1)
    lbu	$t2,11($a0)
    sb	$t2,20($a1)
    # Line 3376
    lbu	$t1,13($a0)
    addiu	$a4,$a4,-1
    sb	$t1,24($a1)
    # Line 3377
    addiu	$a2,$a2,-8
    addiu	$a1,$a1,32
    # Line 3376
    lbu	$t0,15($a0)
    # Line 3377
    addiu	$a0,$a0,16
    bnez	$a4,.L0d95b728
    # Line 3376
    sb	$t0,-4($a1)
.L0d95b77c:
    beqz	$v1,.L0d95b8a4
    nop
    nop
    nop
    nop
.L0d95b790:
    # Line 3373
    lbu	$a7,1($a0)
    sb	$a7,0($a1)
    lbu	$a6,3($a0)
    sb	$a6,4($a1)
    # Line 3374
    lbu	$a5,5($a0)
    sb	$a5,8($a1)
    lbu	$a4,7($a0)
    sb	$a4,12($a1)
    # Line 3375
    lbu	$a3,9($a0)
    sb	$a3,16($a1)
    lbu	$v1,11($a0)
    sb	$v1,20($a1)
    # Line 3376
    lbu	$v0,13($a0)
    sb	$v0,24($a1)
    lbu	$at,15($a0)
    sb	$at,28($a1)
    # Line 3373
    lbu	$t9,17($a0)
    sb	$t9,32($a1)
    lbu	$t8,19($a0)
    sb	$t8,36($a1)
    # Line 3374
    lbu	$t3,21($a0)
    sb	$t3,40($a1)
    lbu	$t2,23($a0)
    sb	$t2,44($a1)
    # Line 3375
    lbu	$t1,25($a0)
    sb	$t1,48($a1)
    lbu	$t0,27($a0)
    sb	$t0,52($a1)
    # Line 3376
    lbu	$a7,29($a0)
    sb	$a7,56($a1)
    lbu	$a6,31($a0)
    sb	$a6,60($a1)
    # Line 3373
    lbu	$a5,33($a0)
    sb	$a5,64($a1)
    lbu	$a4,35($a0)
    sb	$a4,68($a1)
    # Line 3374
    lbu	$a3,37($a0)
    sb	$a3,72($a1)
    lbu	$v1,39($a0)
    sb	$v1,76($a1)
    # Line 3375
    lbu	$v0,41($a0)
    sb	$v0,80($a1)
    lbu	$at,43($a0)
    sb	$at,84($a1)
    # Line 3376
    lbu	$t9,45($a0)
    sb	$t9,88($a1)
    lbu	$t8,47($a0)
    sb	$t8,92($a1)
    # Line 3373
    lbu	$t3,49($a0)
    sb	$t3,96($a1)
    lbu	$t2,51($a0)
    sb	$t2,100($a1)
    # Line 3374
    lbu	$t1,53($a0)
    sb	$t1,104($a1)
    lbu	$t0,55($a0)
    sb	$t0,108($a1)
    # Line 3375
    lbu	$a7,57($a0)
    sb	$a7,112($a1)
    lbu	$a6,59($a0)
    sb	$a6,116($a1)
    # Line 3377
    addiu	$a2,$a2,-32
    # Line 3376
    lbu	$a5,61($a0)
    # Line 3377
    slti	$a4,$a2,9
    # Line 3376
    sb	$a5,120($a1)
    # Line 3377
    addiu	$a1,$a1,128
    # Line 3376
    lbu	$a3,63($a0)
    # Line 3377
    addiu	$a0,$a0,64
    beqz	$a4,.L0d95b790
    # Line 3376
    sb	$a3,-4($a1)
.L0d95b8a4:
    # Line 3379
    blez	$a2,.L0d95b920
    li	$a5,1
    slt	$t0,$a2,$a5
    movz	$a5,$a2,$t0
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95b8dc
    sra	$t2,$a5,0x2
.L0d95b8c0:
    addiu	$a4,$a4,-1
    addiu	$a2,$a2,-1
    # Line 3381
    addiu	$a1,$a1,4
    # Line 3380
    lbu	$t1,1($a0)
    # Line 3381
    addiu	$a0,$a0,2
    bnez	$a4,.L0d95b8c0
    # Line 3380
    sb	$t1,-4($a1)
.L0d95b8dc:
    beqz	$t2,.L0d95b920
    nop
    nop
    nop
    nop
.L0d95b8f0:
    lbu	$at,1($a0)
    sb	$at,0($a1)
    lbu	$t9,3($a0)
    sb	$t9,4($a1)
    lbu	$t8,5($a0)
    # Line 3379
    addiu	$a2,$a2,-4
    # Line 3380
    sb	$t8,8($a1)
    # Line 3381
    addiu	$a1,$a1,16
    # Line 3380
    lbu	$t3,7($a0)
    # Line 3381
    addiu	$a0,$a0,8
    # Line 3379
    bgtz	$a2,.L0d95b8f0
    # Line 3380
    sb	$t3,-4($a1)
.L0d95b920:
    # Line 3383
    jr	$ra
    nop
.end convertStencilUshortToSZ

# Function: convertStencilUintToSZ
# Declared: Line 3385 (Source lines: 3386-3398)
# Address: 0x0d95b930 - 0x0d95bb58 (Size: 552 bytes, Frame: 0)
.ent convertStencilUintToSZ
convertStencilUintToSZ:
    # Line 3386
    slti	$at,$a2,9
    addiu	$a5,$a2,6
    bnez	$at,.L0d95bad4
    addiu	$a7,$a2,-1
    slti	$a6,$a2,1
    movz	$a5,$a7,$a6
    sra	$a5,$a5,0x3
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95b9ac
    sra	$v1,$a5,0x2
.L0d95b958:
    # Line 3388
    lbu	$v0,3($a0)
    sb	$v0,0($a1)
    lbu	$at,7($a0)
    sb	$at,4($a1)
    # Line 3389
    lbu	$t9,11($a0)
    sb	$t9,8($a1)
    lbu	$t8,15($a0)
    sb	$t8,12($a1)
    # Line 3390
    lbu	$t3,19($a0)
    sb	$t3,16($a1)
    lbu	$t2,23($a0)
    sb	$t2,20($a1)
    # Line 3391
    lbu	$t1,27($a0)
    addiu	$a4,$a4,-1
    sb	$t1,24($a1)
    # Line 3392
    addiu	$a2,$a2,-8
    addiu	$a1,$a1,32
    # Line 3391
    lbu	$t0,31($a0)
    # Line 3392
    addiu	$a0,$a0,32
    bnez	$a4,.L0d95b958
    # Line 3391
    sb	$t0,-4($a1)
.L0d95b9ac:
    beqz	$v1,.L0d95bad4
    nop
    nop
    nop
    nop
.L0d95b9c0:
    # Line 3388
    lbu	$a7,3($a0)
    sb	$a7,0($a1)
    lbu	$a6,7($a0)
    sb	$a6,4($a1)
    # Line 3389
    lbu	$a5,11($a0)
    sb	$a5,8($a1)
    lbu	$a4,15($a0)
    sb	$a4,12($a1)
    # Line 3390
    lbu	$a3,19($a0)
    sb	$a3,16($a1)
    lbu	$v1,23($a0)
    sb	$v1,20($a1)
    # Line 3391
    lbu	$v0,27($a0)
    sb	$v0,24($a1)
    lbu	$at,31($a0)
    sb	$at,28($a1)
    # Line 3388
    lbu	$t9,35($a0)
    sb	$t9,32($a1)
    lbu	$t8,39($a0)
    sb	$t8,36($a1)
    # Line 3389
    lbu	$t3,43($a0)
    sb	$t3,40($a1)
    lbu	$t2,47($a0)
    sb	$t2,44($a1)
    # Line 3390
    lbu	$t1,51($a0)
    sb	$t1,48($a1)
    lbu	$t0,55($a0)
    sb	$t0,52($a1)
    # Line 3391
    lbu	$a7,59($a0)
    sb	$a7,56($a1)
    lbu	$a6,63($a0)
    sb	$a6,60($a1)
    # Line 3388
    lbu	$a5,67($a0)
    sb	$a5,64($a1)
    lbu	$a4,71($a0)
    sb	$a4,68($a1)
    # Line 3389
    lbu	$a3,75($a0)
    sb	$a3,72($a1)
    lbu	$v1,79($a0)
    sb	$v1,76($a1)
    # Line 3390
    lbu	$v0,83($a0)
    sb	$v0,80($a1)
    lbu	$at,87($a0)
    sb	$at,84($a1)
    # Line 3391
    lbu	$t9,91($a0)
    sb	$t9,88($a1)
    lbu	$t8,95($a0)
    sb	$t8,92($a1)
    # Line 3388
    lbu	$t3,99($a0)
    sb	$t3,96($a1)
    lbu	$t2,103($a0)
    sb	$t2,100($a1)
    # Line 3389
    lbu	$t1,107($a0)
    sb	$t1,104($a1)
    lbu	$t0,111($a0)
    sb	$t0,108($a1)
    # Line 3390
    lbu	$a7,115($a0)
    sb	$a7,112($a1)
    lbu	$a6,119($a0)
    sb	$a6,116($a1)
    # Line 3392
    addiu	$a2,$a2,-32
    # Line 3391
    lbu	$a5,123($a0)
    # Line 3392
    slti	$a4,$a2,9
    # Line 3391
    sb	$a5,120($a1)
    # Line 3392
    addiu	$a1,$a1,128
    # Line 3391
    lbu	$a3,127($a0)
    # Line 3392
    addiu	$a0,$a0,128
    beqz	$a4,.L0d95b9c0
    # Line 3391
    sb	$a3,-4($a1)
.L0d95bad4:
    # Line 3394
    blez	$a2,.L0d95bb50
    li	$a5,1
    slt	$t0,$a2,$a5
    movz	$a5,$a2,$t0
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d95bb0c
    sra	$t2,$a5,0x2
.L0d95baf0:
    addiu	$a4,$a4,-1
    addiu	$a2,$a2,-1
    # Line 3396
    addiu	$a1,$a1,4
    # Line 3395
    lbu	$t1,3($a0)
    # Line 3396
    addiu	$a0,$a0,4
    bnez	$a4,.L0d95baf0
    # Line 3395
    sb	$t1,-4($a1)
.L0d95bb0c:
    beqz	$t2,.L0d95bb50
    nop
    nop
    nop
    nop
.L0d95bb20:
    lbu	$at,3($a0)
    sb	$at,0($a1)
    lbu	$t9,7($a0)
    sb	$t9,4($a1)
    lbu	$t8,11($a0)
    # Line 3394
    addiu	$a2,$a2,-4
    # Line 3395
    sb	$t8,8($a1)
    # Line 3396
    addiu	$a1,$a1,16
    # Line 3395
    lbu	$t3,15($a0)
    # Line 3396
    addiu	$a0,$a0,16
    # Line 3394
    bgtz	$a2,.L0d95bb20
    # Line 3395
    sb	$t3,-4($a1)
.L0d95bb50:
    # Line 3398
    jr	$ra
    nop
.end convertStencilUintToSZ

# Function: convertRGBA5551To1555
# Declared: Line 3400 (Source lines: 3401-3419)
# Address: 0x0d95bb60 - 0x0d95bd28 (Size: 456 bytes, Frame: 0)
.ent convertRGBA5551To1555
convertRGBA5551To1555:
    # Line 3403
    slti	$at,$a2,9
    # Line 3401
    move	$a4,$a0
    # Line 3403
    bnez	$at,.L0d95bc24
    # Line 3401
    move	$a5,$a1
.L0d95bb70:
    # Line 3405
    lhu	$a0,0($a4)
    sra	$v1,$a0,0x1
    sll	$a0,$a0,0xf
    or	$v1,$v1,$a0
    sh	$v1,0($a5)
    # Line 3406
    lhu	$v0,2($a4)
    sra	$at,$v0,0x1
    sll	$v0,$v0,0xf
    or	$at,$at,$v0
    sh	$at,2($a5)
    # Line 3407
    lhu	$t9,4($a4)
    sra	$t8,$t9,0x1
    sll	$t9,$t9,0xf
    or	$t8,$t8,$t9
    sh	$t8,4($a5)
    # Line 3408
    lhu	$t3,6($a4)
    sra	$t2,$t3,0x1
    sll	$t3,$t3,0xf
    or	$t2,$t2,$t3
    sh	$t2,6($a5)
    # Line 3409
    lhu	$t1,8($a4)
    sra	$t0,$t1,0x1
    sll	$t1,$t1,0xf
    or	$t0,$t0,$t1
    sh	$t0,8($a5)
    # Line 3410
    lhu	$a7,10($a4)
    sra	$a6,$a7,0x1
    sll	$a7,$a7,0xf
    or	$a6,$a6,$a7
    sh	$a6,10($a5)
    # Line 3411
    lhu	$a3,12($a4)
    sra	$a1,$a3,0x1
    sll	$a3,$a3,0xf
    or	$a1,$a1,$a3
    sh	$a1,12($a5)
    # Line 3412
    lhu	$a0,14($a4)
    # Line 3413
    addiu	$a5,$a5,16
    addiu	$a2,$a2,-8
    slti	$v1,$a2,9
    # Line 3412
    sra	$v0,$a0,0x1
    # Line 3413
    addiu	$a4,$a4,16
    # Line 3412
    sll	$a0,$a0,0xf
    or	$v0,$v0,$a0
    # Line 3413
    beqz	$v1,.L0d95bb70
    # Line 3412
    sh	$v0,-2($a5)
.L0d95bc24:
    # Line 3415
    blez	$a2,.L0d95bd20
    li	$a3,1
    slt	$a1,$a2,$a3
    movz	$a3,$a2,$a1
    andi	$a1,$a3,0x7
    beqz	$a1,.L0d95bc68
    sra	$t0,$a3,0x3
.L0d95bc40:
    # Line 3416
    lhu	$a7,0($a4)
    # Line 3415
    addiu	$a2,$a2,-1
    # Line 3417
    addiu	$a4,$a4,2
    addiu	$a1,$a1,-1
    # Line 3416
    sra	$a6,$a7,0x1
    addiu	$a5,$a5,2
    sll	$a7,$a7,0xf
    or	$a6,$a6,$a7
    bnez	$a1,.L0d95bc40
    sh	$a6,-2($a5)
.L0d95bc68:
    beqz	$t0,.L0d95bd20
    nop
.L0d95bc70:
    lhu	$t2,0($a4)
    sra	$t1,$t2,0x1
    sll	$t2,$t2,0xf
    or	$t1,$t1,$t2
    sh	$t1,0($a5)
    lhu	$t0,2($a4)
    sra	$a7,$t0,0x1
    sll	$t0,$t0,0xf
    or	$a7,$a7,$t0
    sh	$a7,2($a5)
    lhu	$a6,4($a4)
    sra	$a3,$a6,0x1
    sll	$a6,$a6,0xf
    or	$a3,$a3,$a6
    sh	$a3,4($a5)
    lhu	$a1,6($a4)
    sra	$a0,$a1,0x1
    sll	$a1,$a1,0xf
    or	$a0,$a0,$a1
    sh	$a0,6($a5)
    lhu	$v1,8($a4)
    sra	$v0,$v1,0x1
    sll	$v1,$v1,0xf
    or	$v0,$v0,$v1
    sh	$v0,8($a5)
    lhu	$at,10($a4)
    sra	$t9,$at,0x1
    sll	$at,$at,0xf
    or	$t9,$t9,$at
    sh	$t9,10($a5)
    lhu	$t8,12($a4)
    sra	$t3,$t8,0x1
    sll	$t8,$t8,0xf
    or	$t3,$t3,$t8
    sh	$t3,12($a5)
    lhu	$t2,14($a4)
    # Line 3417
    addiu	$a4,$a4,16
    # Line 3415
    addiu	$a2,$a2,-8
    # Line 3416
    sra	$t1,$t2,0x1
    addiu	$a5,$a5,16
    sll	$t2,$t2,0xf
    or	$t1,$t1,$t2
    # Line 3415
    bgtz	$a2,.L0d95bc70
    # Line 3416
    sh	$t1,-2($a5)
.L0d95bd20:
    # Line 3419
    jr	$ra
    nop
.end convertRGBA5551To1555

# Function: convertRGBA1555To5551
# Declared: Line 3420 (Source lines: 3421-3440)
# Address: 0x0d95bd30 - 0x0d95bef8 (Size: 456 bytes, Frame: 0)
.ent convertRGBA1555To5551
convertRGBA1555To5551:
    # Line 3423
    slti	$at,$a2,9
    # Line 3421
    move	$a4,$a0
    # Line 3423
    bnez	$at,.L0d95bdf4
    # Line 3421
    move	$a5,$a1
.L0d95bd40:
    # Line 3426
    lhu	$a0,0($a4)
    sra	$v1,$a0,0xf
    sll	$a0,$a0,0x1
    or	$v1,$v1,$a0
    sh	$v1,0($a5)
    # Line 3427
    lhu	$v0,2($a4)
    sra	$at,$v0,0xf
    sll	$v0,$v0,0x1
    or	$at,$at,$v0
    sh	$at,2($a5)
    # Line 3428
    lhu	$t9,4($a4)
    sra	$t8,$t9,0xf
    sll	$t9,$t9,0x1
    or	$t8,$t8,$t9
    sh	$t8,4($a5)
    # Line 3429
    lhu	$t3,6($a4)
    sra	$t2,$t3,0xf
    sll	$t3,$t3,0x1
    or	$t2,$t2,$t3
    sh	$t2,6($a5)
    # Line 3430
    lhu	$t1,8($a4)
    sra	$t0,$t1,0xf
    sll	$t1,$t1,0x1
    or	$t0,$t0,$t1
    sh	$t0,8($a5)
    # Line 3431
    lhu	$a7,10($a4)
    sra	$a6,$a7,0xf
    sll	$a7,$a7,0x1
    or	$a6,$a6,$a7
    sh	$a6,10($a5)
    # Line 3432
    lhu	$a3,12($a4)
    sra	$a1,$a3,0xf
    sll	$a3,$a3,0x1
    or	$a1,$a1,$a3
    sh	$a1,12($a5)
    # Line 3433
    lhu	$a0,14($a4)
    # Line 3434
    addiu	$a5,$a5,16
    addiu	$a2,$a2,-8
    slti	$v1,$a2,9
    # Line 3433
    sra	$v0,$a0,0xf
    # Line 3434
    addiu	$a4,$a4,16
    # Line 3433
    sll	$a0,$a0,0x1
    or	$v0,$v0,$a0
    # Line 3434
    beqz	$v1,.L0d95bd40
    # Line 3433
    sh	$v0,-2($a5)
.L0d95bdf4:
    # Line 3436
    blez	$a2,.L0d95bef0
    li	$a3,1
    slt	$a1,$a2,$a3
    movz	$a3,$a2,$a1
    andi	$a1,$a3,0x7
    beqz	$a1,.L0d95be38
    sra	$t0,$a3,0x3
.L0d95be10:
    # Line 3437
    lhu	$a7,0($a4)
    # Line 3436
    addiu	$a2,$a2,-1
    # Line 3438
    addiu	$a4,$a4,2
    addiu	$a1,$a1,-1
    # Line 3437
    sra	$a6,$a7,0xf
    addiu	$a5,$a5,2
    sll	$a7,$a7,0x1
    or	$a6,$a6,$a7
    bnez	$a1,.L0d95be10
    sh	$a6,-2($a5)
.L0d95be38:
    beqz	$t0,.L0d95bef0
    nop
.L0d95be40:
    lhu	$t2,0($a4)
    sra	$t1,$t2,0xf
    sll	$t2,$t2,0x1
    or	$t1,$t1,$t2
    sh	$t1,0($a5)
    lhu	$t0,2($a4)
    sra	$a7,$t0,0xf
    sll	$t0,$t0,0x1
    or	$a7,$a7,$t0
    sh	$a7,2($a5)
    lhu	$a6,4($a4)
    sra	$a3,$a6,0xf
    sll	$a6,$a6,0x1
    or	$a3,$a3,$a6
    sh	$a3,4($a5)
    lhu	$a1,6($a4)
    sra	$a0,$a1,0xf
    sll	$a1,$a1,0x1
    or	$a0,$a0,$a1
    sh	$a0,6($a5)
    lhu	$v1,8($a4)
    sra	$v0,$v1,0xf
    sll	$v1,$v1,0x1
    or	$v0,$v0,$v1
    sh	$v0,8($a5)
    lhu	$at,10($a4)
    sra	$t9,$at,0xf
    sll	$at,$at,0x1
    or	$t9,$t9,$at
    sh	$t9,10($a5)
    lhu	$t8,12($a4)
    sra	$t3,$t8,0xf
    sll	$t8,$t8,0x1
    or	$t3,$t3,$t8
    sh	$t3,12($a5)
    lhu	$t2,14($a4)
    # Line 3438
    addiu	$a4,$a4,16
    # Line 3436
    addiu	$a2,$a2,-8
    # Line 3437
    sra	$t1,$t2,0xf
    addiu	$a5,$a5,16
    sll	$t2,$t2,0x1
    or	$t1,$t1,$t2
    # Line 3436
    bgtz	$a2,.L0d95be40
    # Line 3437
    sh	$t1,-2($a5)
.L0d95bef0:
    # Line 3440
    jr	$ra
    nop
.end convertRGBA1555To5551

# Function: __GL_CRM_SCALE_PIXEL_SPAN
# Declared: Line 3647 (Source lines: 3649-3705)
# Address: 0x0d95bf00 - 0x0d95c338 (Size: 1080 bytes, Frame: 0)
.globl __GL_CRM_SCALE_PIXEL_SPAN
.ent __GL_CRM_SCALE_PIXEL_SPAN
__GL_CRM_SCALE_PIXEL_SPAN:
    # Line 3649
    li	$at,1
    beq	$a3,$at,.L0d95c098
    # Line 3652
    sra	$a7,$a4,0x3
    # Line 3649
    li	$v0,2
    beq	$a3,$v0,.L0d95c1b8
    # Line 3670
    sra	$t2,$a4,0x3
    # Line 3649
    li	$v1,4
    bne	$a3,$v1,.L0d95c090
    # Line 3688
    sra	$a3,$a4,0x3
    blez	$a3,.L0d95bfe8
    # Line 3700
    li	$a3,-1
    nop
.L0d95bf30:
    # Line 3690
    lw	$t8,0($a2)
    sll	$t8,$t8,0x2
    addu	$t8,$a0,$t8
    lw	$t8,0($t8)
    sw	$t8,0($a1)
    # Line 3691
    lw	$t3,4($a2)
    sll	$t3,$t3,0x2
    addu	$t3,$a0,$t3
    lw	$t3,0($t3)
    sw	$t3,4($a1)
    # Line 3692
    lw	$t2,8($a2)
    sll	$t2,$t2,0x2
    addu	$t2,$a0,$t2
    lw	$t2,0($t2)
    sw	$t2,8($a1)
    # Line 3693
    lw	$t1,12($a2)
    sll	$t1,$t1,0x2
    addu	$t1,$a0,$t1
    lw	$t1,0($t1)
    sw	$t1,12($a1)
    # Line 3694
    lw	$t0,16($a2)
    sll	$t0,$t0,0x2
    addu	$t0,$a0,$t0
    lw	$t0,0($t0)
    sw	$t0,16($a1)
    # Line 3695
    lw	$a7,20($a2)
    sll	$a7,$a7,0x2
    addu	$a7,$a0,$a7
    lw	$a7,0($a7)
    sw	$a7,20($a1)
    # Line 3696
    lw	$a6,24($a2)
    sll	$a6,$a6,0x2
    addu	$a6,$a0,$a6
    lw	$a6,0($a6)
    sw	$a6,24($a1)
    # Line 3697
    lw	$a5,28($a2)
    # Line 3698
    addiu	$a4,$a4,-8
    # Line 3697
    sll	$a5,$a5,0x2
    # Line 3698
    sra	$a6,$a4,0x3
    # Line 3697
    addu	$a5,$a0,$a5
    # Line 3698
    addiu	$a1,$a1,32
    # Line 3697
    lw	$a5,0($a5)
    # Line 3698
    addiu	$a2,$a2,32
    bgtz	$a6,.L0d95bf30
    # Line 3697
    sw	$a5,-4($a1)
    # Line 3700
    li	$a3,-1
.L0d95bfe8:
    move	$a7,$a4
    addiu	$a4,$a4,-1
    beq	$a4,$a3,.L0d95c090
    andi	$a6,$a7,0x3
    beqz	$a6,.L0d95c028
    sra	$at,$a7,0x2
.L0d95c000:
    # Line 3701
    lw	$t9,0($a2)
    sll	$t9,$t9,0x2
    addiu	$a6,$a6,-1
    addu	$t9,$a0,$t9
    # Line 3700
    addiu	$a4,$a4,-1
    # Line 3701
    addiu	$a1,$a1,4
    lw	$t9,0($t9)
    addiu	$a2,$a2,4
    bnez	$a6,.L0d95c000
    sw	$t9,-4($a1)
.L0d95c028:
    beqz	$at,.L0d95c090
    nop
.L0d95c030:
    lw	$a6,0($a2)
    sll	$a6,$a6,0x2
    addu	$a6,$a0,$a6
    lw	$a6,0($a6)
    sw	$a6,0($a1)
    lw	$a5,4($a2)
    sll	$a5,$a5,0x2
    addu	$a5,$a0,$a5
    lw	$a5,0($a5)
    sw	$a5,4($a1)
    lw	$v1,8($a2)
    sll	$v1,$v1,0x2
    addu	$v1,$a0,$v1
    lw	$v1,0($v1)
    sw	$v1,8($a1)
    lw	$v0,12($a2)
    sll	$v0,$v0,0x2
    # Line 3700
    addiu	$a4,$a4,-4
    # Line 3701
    addu	$v0,$a0,$v0
    addiu	$a1,$a1,16
    lw	$v0,0($v0)
    addiu	$a2,$a2,16
    # Line 3700
    bne	$a4,$a3,.L0d95c030
    # Line 3701
    sw	$v0,-4($a1)
.L0d95c090:
    # Line 3705
    jr	$ra
    nop
.L0d95c098:
    # Line 3652
    blez	$a7,.L0d95c134
    # Line 3664
    li	$a3,-1
.L0d95c0a0:
    # Line 3654
    lw	$v0,0($a2)
    addu	$v0,$v0,$a0
    lbu	$v0,0($v0)
    sb	$v0,0($a1)
    # Line 3655
    lw	$at,4($a2)
    addu	$at,$at,$a0
    lbu	$at,0($at)
    sb	$at,1($a1)
    # Line 3656
    lw	$t9,8($a2)
    addu	$t9,$t9,$a0
    lbu	$t9,0($t9)
    sb	$t9,2($a1)
    # Line 3657
    lw	$t8,12($a2)
    addu	$t8,$t8,$a0
    lbu	$t8,0($t8)
    sb	$t8,3($a1)
    # Line 3658
    lw	$t3,16($a2)
    addu	$t3,$t3,$a0
    lbu	$t3,0($t3)
    sb	$t3,4($a1)
    # Line 3659
    lw	$t2,20($a2)
    addu	$t2,$t2,$a0
    lbu	$t2,0($t2)
    sb	$t2,5($a1)
    # Line 3660
    lw	$t1,24($a2)
    addu	$t1,$t1,$a0
    lbu	$t1,0($t1)
    sb	$t1,6($a1)
    # Line 3661
    lw	$t0,28($a2)
    # Line 3662
    addiu	$a4,$a4,-8
    sra	$t1,$a4,0x3
    # Line 3661
    addu	$t0,$t0,$a0
    # Line 3662
    addiu	$a1,$a1,8
    # Line 3661
    lbu	$t0,0($t0)
    # Line 3662
    addiu	$a2,$a2,32
    bgtz	$t1,.L0d95c0a0
    # Line 3661
    sb	$t0,-1($a1)
.L0d95c134:
    # Line 3664
    move	$a6,$a4
    addiu	$a4,$a4,-1
    sra	$a7,$a6,0x1
    beq	$a4,$a3,.L0d95c090
    andi	$v1,$a6,0x1
    beqz	$v1,.L0d95c16c
    nop
    # Line 3665
    lw	$a5,0($a2)
    addu	$a5,$a5,$a0
    addiu	$a1,$a1,1
    lbu	$a5,0($a5)
    # Line 3664
    addiu	$a4,$a4,-1
    # Line 3665
    addiu	$a2,$a2,4
    sb	$a5,-1($a1)
.L0d95c16c:
    beqz	$a7,.L0d95c090
    nop
    nop
    nop
    nop
.L0d95c180:
    lw	$t1,0($a2)
    addu	$t1,$t1,$a0
    lbu	$t1,0($t1)
    sb	$t1,0($a1)
    lw	$t0,4($a2)
    # Line 3664
    addiu	$a4,$a4,-2
    # Line 3665
    addu	$t0,$t0,$a0
    addiu	$a1,$a1,2
    lbu	$t0,0($t0)
    addiu	$a2,$a2,8
    # Line 3664
    bne	$a4,$a3,.L0d95c180
    # Line 3665
    sb	$t0,-1($a1)
    b	.L0d95c090
    nop
.L0d95c1b8:
    # Line 3670
    blez	$t2,.L0d95c278
    # Line 3682
    li	$a3,-1
.L0d95c1c0:
    # Line 3672
    lw	$a5,0($a2)
    addu	$a5,$a5,$a5
    addu	$a5,$a0,$a5
    lhu	$a5,0($a5)
    sh	$a5,0($a1)
    # Line 3673
    lw	$a3,4($a2)
    addu	$a3,$a3,$a3
    addu	$a3,$a0,$a3
    lhu	$a3,0($a3)
    sh	$a3,2($a1)
    # Line 3674
    lw	$v1,8($a2)
    addu	$v1,$v1,$v1
    addu	$v1,$a0,$v1
    lhu	$v1,0($v1)
    sh	$v1,4($a1)
    # Line 3675
    lw	$v0,12($a2)
    addu	$v0,$v0,$v0
    addu	$v0,$a0,$v0
    lhu	$v0,0($v0)
    sh	$v0,6($a1)
    # Line 3676
    lw	$at,16($a2)
    addu	$at,$at,$at
    addu	$at,$a0,$at
    lhu	$at,0($at)
    sh	$at,8($a1)
    # Line 3677
    lw	$t9,20($a2)
    addu	$t9,$t9,$t9
    addu	$t9,$a0,$t9
    lhu	$t9,0($t9)
    sh	$t9,10($a1)
    # Line 3678
    lw	$t8,24($a2)
    addu	$t8,$t8,$t8
    addu	$t8,$a0,$t8
    lhu	$t8,0($t8)
    sh	$t8,12($a1)
    # Line 3679
    lw	$t3,28($a2)
    # Line 3680
    addiu	$a4,$a4,-8
    # Line 3679
    addu	$t3,$t3,$t3
    # Line 3680
    sra	$t8,$a4,0x3
    # Line 3679
    addu	$t3,$a0,$t3
    # Line 3680
    addiu	$a1,$a1,16
    # Line 3679
    lhu	$t3,0($t3)
    # Line 3680
    addiu	$a2,$a2,32
    bgtz	$t8,.L0d95c1c0
    # Line 3679
    sh	$t3,-2($a1)
    # Line 3682
    li	$a3,-1
.L0d95c278:
    move	$a7,$a4
    addiu	$a4,$a4,-1
    sra	$t1,$a7,0x2
    beq	$a4,$a3,.L0d95c090
    andi	$a6,$a7,0x3
    beqz	$a6,.L0d95c2bc
    nop
.L0d95c294:
    # Line 3683
    lw	$t0,0($a2)
    addu	$t0,$t0,$t0
    addiu	$a6,$a6,-1
    addu	$t0,$a0,$t0
    # Line 3682
    addiu	$a4,$a4,-1
    # Line 3683
    addiu	$a1,$a1,2
    lhu	$t0,0($t0)
    addiu	$a2,$a2,4
    bnez	$a6,.L0d95c294
    sh	$t0,-2($a1)
.L0d95c2bc:
    beqz	$t1,.L0d95c090
    nop
    nop
    nop
    nop
.L0d95c2d0:
    lw	$t9,0($a2)
    addu	$t9,$t9,$t9
    addu	$t9,$a0,$t9
    lhu	$t9,0($t9)
    sh	$t9,0($a1)
    lw	$t8,4($a2)
    addu	$t8,$t8,$t8
    addu	$t8,$a0,$t8
    lhu	$t8,0($t8)
    sh	$t8,2($a1)
    lw	$t3,8($a2)
    addu	$t3,$t3,$t3
    addu	$t3,$a0,$t3
    lhu	$t3,0($t3)
    sh	$t3,4($a1)
    lw	$t2,12($a2)
    addu	$t2,$t2,$t2
    # Line 3682
    addiu	$a4,$a4,-4
    # Line 3683
    addu	$t2,$a0,$t2
    addiu	$a1,$a1,8
    lhu	$t2,0($t2)
    addiu	$a2,$a2,16
    # Line 3682
    bne	$a4,$a3,.L0d95c2d0
    # Line 3683
    sh	$t2,-2($a1)
    b	.L0d95c090
    nop
.end __GL_CRM_SCALE_PIXEL_SPAN

.rdata
_lit8_3f70000000000000:
    .word 0x3f700000, 0x00000000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_4070000000000000:
    .word 0x40700000, 0x00000000
_lit8_42a0000000000000:
    .word 0x42a00000, 0x00000000
_lit_37000000:
    .word 0x37000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40e00000:
    .word 0x40e00000
_lit_42800000:
    .word 0x42800000
_lit_45800000:
    .word 0x45800000
_lit_4e000000:
    .word 0x4e000000
_lit_b7000000:
    .word 0xb7000000
_lit_bf800000:
    .word 0xbf800000

