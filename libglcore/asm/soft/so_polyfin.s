# Source: ../soft/so_polyfin.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyfin.c
# Total Functions: 29

.text

# Function: __glMatValidateVbuf0N
# Declared: Line 33 (Source lines: 34-43)
# Address: 0x0d9fd3c0 - 0x0d9fd478 (Size: 184 bytes, Frame: 48)
.globl __glMatValidateVbuf0N
.ent __glMatValidateVbuf0N
__glMatValidateVbuf0N:
    # Line 34
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 38
    lw	$s1,28088($a0)
    # Line 40
    lw	$a1,12688($a0)
    # Line 34
    sd	$s0,24($sp)
    # Line 40
    addiu	$s0,$a0,12712
    # Line 34
    sd	$s2,32($sp)
    lui	$v0,0x5
    # Line 40
    sltu	$at,$s0,$a1
    # Line 34
    move	$s2,$a0
    sd	$ra,0($sp)
    addiu	$v0,$v0,14796
    sd	$gp,8($sp)
    # Line 40
    bnez	$at,.L0d9fd438
    # Line 34
    addu	$gp,$t9,$v0
    b	.L0d9fd460
    # Line 43
    ld	$gp,8($sp)
    nop
    nop
    nop
.L0d9fd410:
    # Line 41
    lw	$t9,12($s0)
    move	$a0,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s1
    # Line 40
    lw	$a1,12688($s2)
    addiu	$s0,$s0,192
    sltu	$v1,$s0,$a1
    beqz	$v1,.L0d9fd45c
    nop
.L0d9fd438:
    lw	$a0,0($s0)
    nor	$a0,$a0,$zero
    and	$a0,$s1,$a0
    bnez	$a0,.L0d9fd410
    nop
    addiu	$s0,$s0,192
    sltu	$a2,$s0,$a1
    bnez	$a2,.L0d9fd438
    nop
.L0d9fd45c:
    # Line 43
    ld	$gp,8($sp)
.L0d9fd460:
    ld	$ra,0($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMatValidateVbuf0N

# Function: __glMatValidateVbuf0V1
# Declared: Line 48 (Source lines: 49-60)
# Address: 0x0d9fd480 - 0x0d9fd508 (Size: 136 bytes, Frame: 32)
.globl __glMatValidateVbuf0V1
.ent __glMatValidateVbuf0V1
__glMatValidateVbuf0V1:
    # Line 53
    lw	$at,12712($a0)
    # Line 49
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 53
    lw	$s1,28088($a0)
    nor	$at,$at,$zero
    # Line 49
    sd	$s0,0($sp)
    lui	$v0,0x5
    # Line 53
    and	$at,$s1,$at
    # Line 49
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,14604
    sd	$gp,16($sp)
    # Line 53
    beqz	$at,.L0d9fd4c8
    # Line 49
    addu	$gp,$t9,$v0
    # Line 56
    lw	$t9,12724($s0)
    move	$a2,$s1
    jalr	$t9
    addiu	$a1,$s0,12712
.L0d9fd4c8:
    # Line 58
    lw	$a1,12692($s0)
    lw	$v0,0($a1)
    nor	$v0,$v0,$zero
    and	$v0,$s1,$v0
    beqz	$v0,.L0d9fd4f4
    ld	$ra,24($sp)
    # Line 59
    lw	$t9,12($a1)
    move	$a0,$s0
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
.L0d9fd4f4:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 60
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMatValidateVbuf0V1

# Function: __glMatValidateV1
# Declared: Line 65 (Source lines: 66-74)
# Address: 0x0d9fd510 - 0x0d9fd55c (Size: 76 bytes, Frame: 16)
.globl __glMatValidateV1
.ent __glMatValidateV1
__glMatValidateV1:
    # Line 72
    lw	$a1,12692($a0)
    lw	$at,0($a1)
    # Line 70
    lw	$a2,28088($a0)
    # Line 66
    addiu	$sp,$sp,-16
    # Line 72
    nor	$at,$at,$zero
    # Line 66
    lui	$v0,0x5
    # Line 72
    and	$at,$a2,$at
    sd	$ra,8($sp)
    # Line 66
    addiu	$v0,$v0,14460
    sd	$gp,0($sp)
    # Line 72
    beqz	$at,.L0d9fd54c
    # Line 66
    addu	$gp,$t9,$v0
    # Line 73
    lw	$t9,12($a1)
    jalr	$t9
    nop
.L0d9fd54c:
    ld	$ra,8($sp)
    # Line 74
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glMatValidateV1

# Function: __glMatValidateV1V2
# Declared: Line 79 (Source lines: 80-91)
# Address: 0x0d9fd560 - 0x0d9fd5e8 (Size: 136 bytes, Frame: 32)
.globl __glMatValidateV1V2
.ent __glMatValidateV1V2
__glMatValidateV1V2:
    # Line 80
    addiu	$sp,$sp,-32
    # Line 86
    lw	$a1,12692($a0)
    # Line 80
    sd	$s1,8($sp)
    # Line 86
    lw	$at,0($a1)
    # Line 84
    lw	$s1,28088($a0)
    # Line 86
    nor	$at,$at,$zero
    # Line 80
    sd	$s0,0($sp)
    lui	$v0,0x5
    # Line 86
    and	$at,$s1,$at
    # Line 80
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,14380
    sd	$gp,16($sp)
    # Line 86
    beqz	$at,.L0d9fd5a8
    # Line 80
    addu	$gp,$t9,$v0
    # Line 87
    lw	$t9,12($a1)
    jalr	$t9
    move	$a2,$s1
.L0d9fd5a8:
    # Line 89
    lw	$a1,12696($s0)
    lw	$v0,0($a1)
    nor	$v0,$v0,$zero
    and	$v0,$s1,$v0
    beqz	$v0,.L0d9fd5d4
    ld	$ra,24($sp)
    # Line 90
    lw	$t9,12($a1)
    move	$a0,$s0
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
.L0d9fd5d4:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 91
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMatValidateV1V2

# Function: __glMatValidateV1V2V3
# Declared: Line 96 (Source lines: 97-111)
# Address: 0x0d9fd5f0 - 0x0d9fd6a0 (Size: 176 bytes, Frame: 32)
.globl __glMatValidateV1V2V3
.ent __glMatValidateV1V2V3
__glMatValidateV1V2V3:
    # Line 97
    addiu	$sp,$sp,-32
    # Line 103
    lw	$a1,12692($a0)
    # Line 97
    sd	$s0,0($sp)
    # Line 103
    lw	$at,0($a1)
    # Line 101
    lw	$s0,28088($a0)
    # Line 103
    nor	$at,$at,$zero
    # Line 97
    sd	$s1,8($sp)
    lui	$v0,0x5
    # Line 103
    and	$at,$s0,$at
    # Line 97
    move	$s1,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,14236
    sd	$gp,16($sp)
    # Line 103
    beqz	$at,.L0d9fd638
    # Line 97
    addu	$gp,$t9,$v0
    # Line 104
    lw	$t9,12($a1)
    jalr	$t9
    move	$a2,$s0
.L0d9fd638:
    # Line 106
    lw	$a1,12696($s1)
    lw	$v0,0($a1)
    nor	$v0,$v0,$zero
    and	$v0,$s0,$v0
    beqz	$v0,.L0d9fd660
    nop
    # Line 107
    lw	$t9,12($a1)
    move	$a0,$s1
    jalr	$t9
    move	$a2,$s0
.L0d9fd660:
    # Line 109
    lw	$a1,12700($s1)
    lw	$v1,0($a1)
    nor	$v1,$v1,$zero
    and	$v1,$s0,$v1
    beqz	$v1,.L0d9fd68c
    ld	$ra,24($sp)
    # Line 110
    lw	$t9,12($a1)
    move	$a0,$s1
    jalr	$t9
    move	$a2,$s0
    ld	$ra,24($sp)
.L0d9fd68c:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 111
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMatValidateV1V2V3

# Function: __glMatValidateV2V3
# Declared: Line 116 (Source lines: 117-128)
# Address: 0x0d9fd6a0 - 0x0d9fd728 (Size: 136 bytes, Frame: 32)
.globl __glMatValidateV2V3
.ent __glMatValidateV2V3
__glMatValidateV2V3:
    # Line 117
    addiu	$sp,$sp,-32
    # Line 123
    lw	$a1,12696($a0)
    # Line 117
    sd	$s1,8($sp)
    # Line 123
    lw	$at,0($a1)
    # Line 121
    lw	$s1,28088($a0)
    # Line 123
    nor	$at,$at,$zero
    # Line 117
    sd	$s0,0($sp)
    lui	$v0,0x5
    # Line 123
    and	$at,$s1,$at
    # Line 117
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,14060
    sd	$gp,16($sp)
    # Line 123
    beqz	$at,.L0d9fd6e8
    # Line 117
    addu	$gp,$t9,$v0
    # Line 124
    lw	$t9,12($a1)
    jalr	$t9
    move	$a2,$s1
.L0d9fd6e8:
    # Line 126
    lw	$a1,12700($s0)
    lw	$v0,0($a1)
    nor	$v0,$v0,$zero
    and	$v0,$s1,$v0
    beqz	$v0,.L0d9fd714
    ld	$ra,24($sp)
    # Line 127
    lw	$t9,12($a1)
    move	$a0,$s0
    jalr	$t9
    move	$a2,$s1
    ld	$ra,24($sp)
.L0d9fd714:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 128
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMatValidateV2V3

# Function: OtherTFanVertex
# Declared: Line 166 (Source lines: 167-198)
# Address: 0x0d9fd730 - 0x0d9fd7c0 (Size: 144 bytes, Frame: 16)
.ent OtherTFanVertex
OtherTFanVertex:
    # Line 175
    sb	$zero,29848($a0)
    # Line 171
    lw	$a3,12692($a0)
    # Line 176
    li	$a5,1
    sb	$a5,184($a1)
    # Line 177
    sw	$a1,28072($a0)
    # Line 180
    sw	$a1,12692($a0)
    # Line 181
    sw	$a3,12688($a0)
    # Line 184
    lw	$a6,4($a1)
    lw	$a7,4($a3)
    # Line 167
    addiu	$sp,$sp,-16
    # Line 184
    lw	$a5,12716($a0)
    # Line 167
    lui	$at,0x5
    # Line 184
    or	$a4,$a6,$a7
    # Line 167
    addiu	$at,$at,13916
    # Line 184
    or	$a4,$a5,$a4
    sd	$gp,0($sp)
    # Line 167
    addu	$gp,$t9,$at
    sd	$ra,8($sp)
    # Line 184
    beqz	$a4,.L0d9fd7ac
    and	$t0,$a6,$a7
    and	$t0,$a5,$t0
    beqz	$t0,.L0d9fd798
    ld	$ra,8($sp)
.L0d9fd78c:
    # Line 198
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9fd798:
    # Line 192
    lw	$t9,12088($a0)
    jalr	$t9
    addiu	$a2,$a0,12712
    b	.L0d9fd78c
    ld	$ra,8($sp)
.L0d9fd7ac:
    # Line 196
    lw	$t9,12076($a0)
    jalr	$t9
    addiu	$a2,$a0,12712
    b	.L0d9fd78c
    ld	$ra,8($sp)
.end OtherTFanVertex

# Function: SecondTFanVertex
# Declared: Line 200 (Source lines: 201-207)
# Address: 0x0d9fd7c0 - 0x0d9fd7f8 (Size: 56 bytes, Frame: 0)
.ent SecondTFanVertex
SecondTFanVertex:
    # Line 202
    li	$a3,1
    sb	$a3,184($a1)
    # Line 201
    lui	$a2,0x5
    # Line 204
    sw	$a1,12692($a0)
    # Line 201
    addiu	$a2,$a2,13772
    # Line 203
    addiu	$a3,$a1,192
    sw	$a3,12688($a0)
    # Line 201
    addu	$at,$t9,$a2
    # Line 206
    la	$v1,__glMatValidateVbuf0V1
    # Line 205
    la	$v0,sub_0da00000
    # Line 206
    sw	$v1,12020($a0)
    # Line 205
    addiu	$v0,$v0,-10448
    # Line 207
    jr	$ra
    # Line 205
    sw	$v0,11948($a0)
.end SecondTFanVertex

# Function: FirstTFanVertex
# Declared: Line 209 (Source lines: 210-214)
# Address: 0x0d9fd800 - 0x0d9fd82c (Size: 44 bytes, Frame: 0)
.ent FirstTFanVertex
FirstTFanVertex:
    # Line 210
    lui	$a3,0x5
    addiu	$a3,$a3,13708
    # Line 211
    li	$a2,1
    sb	$a2,184($a1)
    # Line 210
    addu	$at,$t9,$a3
    # Line 213
    la	$v0,sub_0da00000
    # Line 212
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 213
    addiu	$v0,$v0,-10304
    # Line 214
    jr	$ra
    # Line 213
    sw	$v0,11948($a0)
.end FirstTFanVertex

# Function: __glBeginTFan
# Declared: Line 216 (Source lines: 217-222)
# Address: 0x0d9fd830 - 0x0d9fd864 (Size: 52 bytes, Frame: 0)
.globl __glBeginTFan
.ent __glBeginTFan
__glBeginTFan:
    # Line 217
    lui	$a1,0x5
    # Line 221
    li	$a2,1
    sb	$a2,30522($a0)
    # Line 217
    addiu	$a1,$a1,13660
    # Line 218
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 217
    addu	$at,$t9,$a1
    # Line 220
    la	$v1,__glMatValidateVbuf0N
    # Line 219
    la	$v0,sub_0da00000
    # Line 220
    sw	$v1,12020($a0)
    # Line 219
    addiu	$v0,$v0,-10240
    # Line 222
    jr	$ra
    # Line 219
    sw	$v0,11948($a0)
.end __glBeginTFan

# Function: SecondTStripVertex
# Declared: Line 381 (Source lines: 382-388)
# Address: 0x0d9fd870 - 0x0d9fd8a4 (Size: 52 bytes, Frame: 0)
.ent SecondTStripVertex
SecondTStripVertex:
    # Line 383
    li	$a2,1
    sb	$a2,184($a1)
    # Line 385
    sw	$a1,12692($a0)
    # Line 384
    addiu	$a1,$a1,192
    sw	$a1,12688($a0)
    # Line 382
    lui	$v1,0x5
    # Line 386
    lw	$a1,11968($a0)
    # Line 382
    addiu	$v1,$v1,13596
    # Line 386
    sw	$a1,11948($a0)
    # Line 382
    addu	$at,$t9,$v1
    # Line 387
    la	$v0,__glMatValidateV1V2
    # Line 388
    jr	$ra
    # Line 387
    sw	$v0,12020($a0)
.end SecondTStripVertex

# Function: FirstTStripVertex
# Declared: Line 390 (Source lines: 391-396)
# Address: 0x0d9fd8b0 - 0x0d9fd8e0 (Size: 48 bytes, Frame: 0)
.ent FirstTStripVertex
FirstTStripVertex:
    # Line 391
    lui	$a2,0x5
    # Line 392
    li	$a3,1
    sb	$a3,184($a1)
    # Line 391
    addiu	$a2,$a2,13532
    # Line 394
    sw	$a1,12696($a0)
    # Line 391
    addu	$at,$t9,$a2
    # Line 395
    la	$v0,sub_0da00000
    # Line 393
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 395
    addiu	$v0,$v0,-10128
    # Line 396
    jr	$ra
    # Line 395
    sw	$v0,11948($a0)
.end FirstTStripVertex

# Function: __glBeginTStrip
# Declared: Line 398 (Source lines: 399-404)
# Address: 0x0d9fd8e0 - 0x0d9fd914 (Size: 52 bytes, Frame: 0)
.globl __glBeginTStrip
.ent __glBeginTStrip
__glBeginTStrip:
    # Line 399
    lui	$a1,0x5
    # Line 403
    li	$a2,1
    sb	$a2,30522($a0)
    # Line 399
    addiu	$a1,$a1,13484
    # Line 400
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 399
    addu	$at,$t9,$a1
    # Line 402
    la	$v1,__glMatValidateVbuf0N
    # Line 401
    la	$v0,sub_0da00000
    # Line 402
    sw	$v1,12020($a0)
    # Line 401
    addiu	$v0,$v0,-10064
    # Line 404
    jr	$ra
    # Line 401
    sw	$v0,11948($a0)
.end __glBeginTStrip

# Function: ThirdTrianglesVertex
# Declared: Line 419 (Source lines: 420-449)
# Address: 0x0d9fd920 - 0x0d9fd9b8 (Size: 152 bytes, Frame: 16)
.ent ThirdTrianglesVertex
ThirdTrianglesVertex:
    # Line 426
    sb	$zero,29848($a0)
    # Line 427
    lbu	$a7,453($a0)
    sb	$a7,184($a1)
    # Line 431
    addiu	$a2,$a0,12712
    # Line 435
    lw	$a7,12716($a0)
    # Line 420
    lui	$a6,0x5
    # Line 431
    sw	$a2,12688($a0)
    # Line 420
    addiu	$sp,$sp,-16
    addiu	$a6,$a6,13420
    sd	$gp,0($sp)
    addu	$gp,$t9,$a6
    # Line 432
    la	$a5,sub_0da00000
    # Line 428
    sw	$a1,28072($a0)
    # Line 432
    addiu	$a5,$a5,-9744
    sw	$a5,11948($a0)
    # Line 435
    lw	$a6,4($a1)
    lw	$a5,12908($a0)
    or	$a4,$a6,$a7
    or	$a4,$a5,$a4
    beqz	$a4,.L0d9fd9a4
    sd	$ra,8($sp)
    and	$t0,$a6,$a7
    and	$t0,$a5,$t0
    beqz	$t0,.L0d9fd990
    ld	$ra,8($sp)
.L0d9fd984:
    # Line 449
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9fd990:
    # Line 443
    lw	$t9,12088($a0)
    jalr	$t9
    addiu	$a3,$a0,12904
    b	.L0d9fd984
    ld	$ra,8($sp)
.L0d9fd9a4:
    # Line 447
    lw	$t9,12072($a0)
    jalr	$t9
    addiu	$a3,$a0,12904
    b	.L0d9fd984
    ld	$ra,8($sp)
.end ThirdTrianglesVertex

# Function: SecondTrianglesVertex
# Declared: Line 451 (Source lines: 452-456)
# Address: 0x0d9fd9c0 - 0x0d9fd9ec (Size: 44 bytes, Frame: 0)
.ent SecondTrianglesVertex
SecondTrianglesVertex:
    # Line 452
    lui	$a3,0x5
    # Line 453
    lbu	$a2,453($a0)
    # Line 452
    addiu	$a3,$a3,13260
    # Line 453
    sb	$a2,184($a1)
    # Line 452
    addu	$at,$t9,$a3
    # Line 455
    la	$v0,sub_0da00000
    # Line 454
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 455
    addiu	$v0,$v0,-9952
    # Line 456
    jr	$ra
    # Line 455
    sw	$v0,11948($a0)
.end SecondTrianglesVertex

# Function: FirstTrianglesVertex
# Declared: Line 458 (Source lines: 459-463)
# Address: 0x0d9fd9f0 - 0x0d9fda1c (Size: 44 bytes, Frame: 0)
.ent FirstTrianglesVertex
FirstTrianglesVertex:
    # Line 459
    lui	$a3,0x5
    # Line 460
    lbu	$a2,453($a0)
    # Line 459
    addiu	$a3,$a3,13212
    # Line 460
    sb	$a2,184($a1)
    # Line 459
    addu	$at,$t9,$a3
    # Line 462
    la	$v0,sub_0da00000
    # Line 461
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 462
    addiu	$v0,$v0,-9792
    # Line 463
    jr	$ra
    # Line 462
    sw	$v0,11948($a0)
.end FirstTrianglesVertex

# Function: __glBeginTriangles
# Declared: Line 465 (Source lines: 466-470)
# Address: 0x0d9fda20 - 0x0d9fda4c (Size: 44 bytes, Frame: 0)
.globl __glBeginTriangles
.ent __glBeginTriangles
__glBeginTriangles:
    # Line 466
    lui	$a1,0x5
    addiu	$a1,$a1,13164
    # Line 467
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 466
    addu	$at,$t9,$a1
    # Line 469
    la	$v1,__glMatValidateVbuf0N
    # Line 468
    la	$v0,sub_0da00000
    # Line 469
    sw	$v1,12020($a0)
    # Line 468
    addiu	$v0,$v0,-9744
    # Line 470
    jr	$ra
    # Line 468
    sw	$v0,11948($a0)
.end __glBeginTriangles

# Function: FourthQStripVertex
# Declared: Line 509 (Source lines: 510-557)
# Address: 0x0d9fda50 - 0x0d9fdb7c (Size: 300 bytes, Frame: 192)
.ent FourthQStripVertex
FourthQStripVertex:
    # Line 520
    sb	$zero,29848($a0)
    # Line 517
    lw	$t8,12700($a0)
    # Line 516
    lw	$t2,12696($a0)
    # Line 515
    lw	$t1,12692($a0)
    # Line 521
    li	$t0,1
    sb	$t0,184($a1)
    # Line 526
    sw	$a1,12696($a0)
    # Line 522
    sw	$a1,28072($a0)
    # Line 527
    sw	$t1,12700($a0)
    # Line 510
    lui	$a7,0x5
    # Line 525
    sw	$t8,12688($a0)
    # Line 510
    addiu	$sp,$sp,-64
    addiu	$a7,$a7,13116
    sd	$gp,48($sp)
    addu	$gp,$t9,$a7
    # Line 529
    la	$a5,__glMatValidateV2V3
    # Line 528
    la	$a6,sub_0da00000
    # Line 529
    sw	$a5,12020($a0)
    # Line 528
    addiu	$a6,$a6,-9344
    sw	$a6,11948($a0)
    # Line 532
    lw	$t0,4($t2)
    lw	$a7,4($t8)
    lw	$a5,4($t1)
    lw	$a6,4($a1)
    or	$a4,$a6,$a5
    or	$a3,$a7,$t0
    or	$a3,$a3,$a4
    # Line 510
    move	$t3,$a1
    sd	$ra,56($sp)
    # Line 532
    beqz	$a3,.L0d9fdb10
    and	$t9,$a7,$t0
    and	$ra,$a6,$a5
    and	$t9,$t9,$ra
    beqz	$t9,.L0d9fdae8
    ld	$ra,56($sp)
.L0d9fdadc:
    # Line 557
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fdae8:
    # Line 543
    sw	$t1,12($sp)
    # Line 544
    # lw $t9, -25232($gp) # &__glDoPolygonClip
    # Line 541
    sw	$t2,4($sp)
    # Line 544
    li	$a2,4
    # Line 542
    sw	$a1,8($sp)
    # Line 544
    addiu	$a1,$sp,0
    bal __glDoPolygonClip
    # Line 540
    sw	$t8,0($sp)
    b	.L0d9fdadc
    ld	$ra,56($sp)
.L0d9fdb10:
    sd	$t2,16($sp)
    sd	$a0,24($sp)
    # Line 550
    ld	$a3,16($sp)
    # Line 551
    ld	$a0,24($sp)
    # Line 550
    sb	$zero,184($a3)
    # Line 551
    lw	$t9,12072($a0)
    sd	$t1,40($sp)
    sd	$a1,32($sp)
    move	$a2,$t8
    jal	__glDoPolygonClip
    ld	$a1,40($sp)
    # Line 554
    ld	$a0,24($sp)
    # Line 552
    ld	$a1,40($sp)
    # Line 553
    ld	$a2,16($sp)
    # Line 552
    sb	$zero,184($a1)
    # Line 553
    li	$at,1
    sb	$at,184($a2)
    # Line 554
    lw	$t9,12072($a0)
    jalr	$t9
    ld	$a3,32($sp)
    ld	$ra,56($sp)
    # Line 555
    ld	$v1,40($sp)
    # Line 557
    ld	$gp,48($sp)
    addiu	$sp,$sp,64
    # Line 555
    li	$v0,1
    # Line 557
    jr	$ra
    # Line 555
    sb	$v0,184($v1)
.end FourthQStripVertex

# Function: ThirdQStripVertex
# Declared: Line 559 (Source lines: 560-566)
# Address: 0x0d9fdb80 - 0x0d9fdbb8 (Size: 56 bytes, Frame: 0)
.ent ThirdQStripVertex
ThirdQStripVertex:
    # Line 561
    li	$a3,1
    sb	$a3,184($a1)
    # Line 560
    lui	$a2,0x5
    # Line 563
    sw	$a1,12692($a0)
    # Line 560
    addiu	$a2,$a2,12812
    # Line 562
    addiu	$a3,$a1,192
    sw	$a3,12688($a0)
    # Line 560
    addu	$at,$t9,$a2
    # Line 565
    la	$v1,__glMatValidateV1V2V3
    # Line 564
    la	$v0,sub_0da00000
    # Line 565
    sw	$v1,12020($a0)
    # Line 564
    addiu	$v0,$v0,-9648
    # Line 566
    jr	$ra
    # Line 564
    sw	$v0,11948($a0)
.end ThirdQStripVertex

# Function: SecondQStripVertex
# Declared: Line 568 (Source lines: 569-574)
# Address: 0x0d9fdbc0 - 0x0d9fdbf0 (Size: 48 bytes, Frame: 0)
.ent SecondQStripVertex
SecondQStripVertex:
    # Line 569
    lui	$a2,0x5
    # Line 570
    li	$a3,1
    sb	$a3,184($a1)
    # Line 569
    addiu	$a2,$a2,12748
    # Line 572
    sw	$a1,12696($a0)
    # Line 569
    addu	$at,$t9,$a2
    # Line 573
    la	$v0,sub_0da00000
    # Line 571
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 573
    addiu	$v0,$v0,-9344
    # Line 574
    jr	$ra
    # Line 573
    sw	$v0,11948($a0)
.end SecondQStripVertex

# Function: FirstQStripVertex
# Declared: Line 576 (Source lines: 577-582)
# Address: 0x0d9fdbf0 - 0x0d9fdc20 (Size: 48 bytes, Frame: 0)
.ent FirstQStripVertex
FirstQStripVertex:
    # Line 577
    lui	$a2,0x5
    # Line 578
    li	$a3,1
    sb	$a3,184($a1)
    # Line 577
    addiu	$a2,$a2,12700
    # Line 580
    sw	$a1,12700($a0)
    # Line 577
    addu	$at,$t9,$a2
    # Line 581
    la	$v0,sub_0da00000
    # Line 579
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 581
    addiu	$v0,$v0,-9280
    # Line 582
    jr	$ra
    # Line 581
    sw	$v0,11948($a0)
.end FirstQStripVertex

# Function: __glBeginQStrip
# Declared: Line 584 (Source lines: 585-590)
# Address: 0x0d9fdc20 - 0x0d9fdc54 (Size: 52 bytes, Frame: 0)
.globl __glBeginQStrip
.ent __glBeginQStrip
__glBeginQStrip:
    # Line 585
    lui	$a1,0x5
    # Line 589
    li	$a2,1
    sb	$a2,30522($a0)
    # Line 585
    addiu	$a1,$a1,12652
    # Line 586
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 585
    addu	$at,$t9,$a1
    # Line 588
    la	$v1,__glMatValidateVbuf0N
    # Line 587
    la	$v0,sub_0da00000
    # Line 588
    sw	$v1,12020($a0)
    # Line 587
    addiu	$v0,$v0,-9232
    # Line 590
    jr	$ra
    # Line 587
    sw	$v0,11948($a0)
.end __glBeginQStrip

# Function: ThirdQuadsVertex
# Declared: Line 650 (Source lines: 651-655)
# Address: 0x0d9fdc60 - 0x0d9fdc88 (Size: 40 bytes, Frame: 0)
.ent ThirdQuadsVertex
ThirdQuadsVertex:
    # Line 652
    lbu	$a2,453($a0)
    # Line 651
    lui	$v1,0x5
    # Line 652
    sb	$a2,184($a1)
    # Line 651
    addiu	$v1,$v1,12588
    # Line 653
    addiu	$a1,$a1,192
    sw	$a1,12688($a0)
    # Line 651
    addu	$at,$t9,$v1
    # Line 654
    la	$v0,__glFourthQuadsVertex
    # Line 655
    jr	$ra
    # Line 654
    sw	$v0,11948($a0)
.end ThirdQuadsVertex

# Function: SecondQuadsVertex
# Declared: Line 657 (Source lines: 658-662)
# Address: 0x0d9fdc90 - 0x0d9fdcbc (Size: 44 bytes, Frame: 0)
.ent SecondQuadsVertex
SecondQuadsVertex:
    # Line 658
    lui	$a3,0x5
    # Line 659
    lbu	$a2,453($a0)
    # Line 658
    addiu	$a3,$a3,12540
    # Line 659
    sb	$a2,184($a1)
    # Line 658
    addu	$at,$t9,$a3
    # Line 661
    la	$v0,sub_0da00000
    # Line 660
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 661
    addiu	$v0,$v0,-9120
    # Line 662
    jr	$ra
    # Line 661
    sw	$v0,11948($a0)
.end SecondQuadsVertex

# Function: __glFirstQuadsVertex
# Declared: Line 664 (Source lines: 665-669)
# Address: 0x0d9fdcc0 - 0x0d9fdcec (Size: 44 bytes, Frame: 0)
.globl __glFirstQuadsVertex
.ent __glFirstQuadsVertex
__glFirstQuadsVertex:
    # Line 665
    lui	$a3,0x5
    # Line 666
    lbu	$a2,453($a0)
    # Line 665
    addiu	$a3,$a3,12492
    # Line 666
    sb	$a2,184($a1)
    # Line 665
    addu	$at,$t9,$a3
    # Line 668
    la	$v0,sub_0da00000
    # Line 667
    addiu	$v1,$a1,192
    sw	$v1,12688($a0)
    # Line 668
    addiu	$v0,$v0,-9072
    # Line 669
    jr	$ra
    # Line 668
    sw	$v0,11948($a0)
.end __glFirstQuadsVertex

# Function: __glBeginQuads
# Declared: Line 671 (Source lines: 672-676)
# Address: 0x0d9fdcf0 - 0x0d9fdd18 (Size: 40 bytes, Frame: 0)
.globl __glBeginQuads
.ent __glBeginQuads
__glBeginQuads:
    # Line 672
    lui	$a1,0x5
    addiu	$a1,$a1,12444
    # Line 673
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 672
    addu	$at,$t9,$a1
    # Line 674
    la	$v0,__glFirstQuadsVertex
    # Line 675
    la	$v1,__glMatValidateVbuf0N
    sw	$v1,12020($a0)
    # Line 676
    jr	$ra
    # Line 674
    sw	$v0,11948($a0)
.end __glBeginQuads

# Function: PolygonVertex
# Declared: Line 680 (Source lines: 681-726)
# Address: 0x0d9fdd20 - 0x0d9fdfac (Size: 652 bytes, Frame: 208)
.ent PolygonVertex
PolygonVertex:
    # Line 682
    lbu	$v1,453($a0)
    # Line 681
    addiu	$sp,$sp,-80
    sd	$s1,56($sp)
    move	$s1,$a1
    sd	$s0,64($sp)
    # Line 682
    addiu	$v0,$a0,27880
    # Line 681
    lui	$at,0x5
    move	$s0,$a0
    # Line 682
    sb	$v1,184($a1)
    # Line 681
    addiu	$at,$at,12396
    sd	$gp,72($sp)
    # Line 682
    bne	$a1,$v0,.L0d9fdf90
    # Line 681
    addu	$gp,$t9,$at
    sd	$s5,40($sp)
    sd	$s4,32($sp)
    sd	$s2,16($sp)
    sd	$s6,8($sp)
    # Line 686
    lbu	$v0,-8($a1)
    # Line 695
    sb	$zero,-8($a1)
    # Line 696
    lw	$t9,12092($a0)
    sd	$s3,0($sp)
    li	$a2,79
    sd	$ra,48($sp)
    addiu	$a1,$a0,12712
    jalr	$t9
    # Line 686
    sd	$v0,24($sp)
    addiu	$a6,$s1,-164
    addiu	$t0,$s0,12932
    li	$a7,0x20
    # Line 706
    li	$a4,48
    addiu	$s4,$s0,12904
    move	$a3,$zero
    addiu	$s3,$s0,12908
    addiu	$t9,$s0,12912
    addiu	$a0,$s1,-180
    addiu	$s2,$s0,12916
    addiu	$a1,$s1,-172
    addiu	$a5,$s0,12924
    addiu	$t1,$s0,12928
    addiu	$t2,$s1,-168
    addiu	$t3,$s0,12920
    # Line 726
    ld	$gp,72($sp)
    addiu	$t8,$s1,-176
    # Line 706
    addiu	$s5,$s1,-192
    # Line 697
    ld	$v1,24($sp)
    addiu	$ra,$s1,-184
    addiu	$s6,$s1,-188
    sb	$v1,-8($s1)
.L0d9fdde0:
    # Line 706
    addu	$v1,$a3,$s5
    addu	$a2,$a3,$s4
    lw	$v1,0($v1)
    addu	$v0,$a3,$s6
    sw	$v1,0($a2)
    addu	$v1,$a3,$s3
    lw	$v0,0($v0)
    addu	$at,$a3,$ra
    sw	$v0,0($v1)
    addu	$v0,$a3,$t9
    lw	$at,0($at)
    addu	$a2,$a3,$a0
    sw	$at,0($v0)
    addu	$at,$a3,$s2
    lw	$a2,0($a2)
    addu	$v1,$a3,$t8
    sw	$a2,0($at)
    addu	$a2,$a3,$t3
    lw	$v1,0($v1)
    addu	$v0,$a3,$a1
    sw	$v1,0($a2)
    addu	$v1,$a3,$a5
    lw	$v0,0($v0)
    addu	$at,$a3,$t2
    sw	$v0,0($v1)
    addu	$v0,$a3,$t1
    lw	$at,0($at)
    addiu	$a4,$a4,-8
    addu	$a2,$a3,$a6
    sw	$at,0($v0)
    addu	$at,$a3,$t0
    lw	$a2,0($a2)
    addu	$a3,$a3,$a7
    bgtz	$a4,.L0d9fdde0
    sw	$a2,0($at)
    addiu	$a7,$s1,28
    addiu	$t1,$s0,13124
    li	$t0,0x20
    addiu	$s6,$s1,4
    # Line 707
    li	$a4,48
    addiu	$s5,$s0,13096
    move	$a3,$zero
    addiu	$s4,$s0,13100
    addiu	$ra,$s0,13104
    addiu	$s2,$s1,8
    addiu	$a0,$s1,12
    addiu	$s3,$s0,13108
    addiu	$a5,$s1,20
    addiu	$a6,$s0,13116
    addiu	$t2,$s0,13120
    addiu	$t3,$s1,24
    addiu	$t8,$s0,13112
    addiu	$t9,$s1,16
    nop
    nop
    nop
.L0d9fdec0:
    addu	$at,$a3,$s1
    addu	$v0,$a3,$s5
    lw	$at,0($at)
    addu	$a2,$a3,$s6
    sw	$at,0($v0)
    addu	$at,$a3,$s4
    lw	$a2,0($a2)
    addu	$a1,$a3,$s2
    sw	$a2,0($at)
    addu	$a2,$a3,$ra
    lw	$a1,0($a1)
    addu	$v1,$a3,$a0
    sw	$a1,0($a2)
    addu	$a1,$a3,$s3
    lw	$v1,0($v1)
    addu	$v0,$a3,$t9
    sw	$v1,0($a1)
    addu	$v1,$a3,$t8
    lw	$v0,0($v0)
    addu	$at,$a3,$a5
    sw	$v0,0($v1)
    addu	$v0,$a3,$a6
    lw	$at,0($at)
    addu	$a2,$a3,$t3
    sw	$at,0($v0)
    addu	$at,$a3,$t2
    lw	$a2,0($a2)
    addiu	$a4,$a4,-8
    addu	$a1,$a3,$a7
    sw	$a2,0($at)
    addu	$a2,$a3,$t1
    lw	$a1,0($a1)
    addu	$a3,$a3,$t0
    bgtz	$a4,.L0d9fdec0
    sw	$a1,0($a2)
    # Line 722
    sb	$zero,12896($s0)
    # Line 716
    addiu	$a0,$s0,13240
    sw	$a0,13104($s0)
    # Line 715
    addiu	$v1,$s0,13048
    sw	$v1,12912($s0)
    # Line 708
    addiu	$v0,$s0,13288
    sw	$v0,12688($s0)
    # Line 726
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,16($sp)
    ld	$s3,0($sp)
    ld	$ra,48($sp)
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9fdf90:
    # Line 724
    addiu	$a1,$a1,192
    sw	$a1,12688($a0)
    # Line 726
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end PolygonVertex

# Function: __glEndPolygon
# Declared: Line 728 (Source lines: 729-744)
# Address: 0x0d9fdfb0 - 0x0d9fe044 (Size: 148 bytes, Frame: 32)
.globl __glEndPolygon
.ent __glEndPolygon
__glEndPolygon:
    # Line 730
    lw	$a3,12688($a0)
    li	$a2,0xaaaa
    subu	$a3,$a3,$a0
    dsll	$a2,$a2,0x10
    addiu	$a3,$a3,-12712
    negu	$a1,$a3
    srl	$v0,$a3,0x1f
    ori	$a2,$a2,0xaaab
    movz	$a1,$a3,$v0
    multu	$a1,$a2
    mfhi	$v1
    sra	$v1,$v1,0x7
    negu	$a2,$v1
    # Line 729
    addiu	$sp,$sp,-32
    # Line 730
    movz	$a2,$v1,$v0
    # Line 729
    lui	$at,0x5
    # Line 730
    slti	$v0,$a2,3
    # Line 729
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,11740
    sd	$gp,0($sp)
    # Line 730
    beqz	$v0,.L0d9fe02c
    # Line 729
    addu	$gp,$t9,$at
.L0d9fe00c:
    # Line 743
    la	$a5,__glEndPrim
    # Line 742
    la	$a4,__glNop
    # Line 744
    ld	$gp,0($sp)
    # Line 743
    sw	$a5,12068($s0)
    # Line 742
    sw	$a4,11948($s0)
    # Line 744
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9fe02c:
    # Line 740
    lw	$t9,12092($s0)
    sd	$ra,16($sp)
    jalr	$t9
    addiu	$a1,$s0,12712
    b	.L0d9fe00c
    ld	$ra,16($sp)
.end __glEndPolygon

# Function: __glBeginPolygon
# Declared: Line 746 (Source lines: 747-762)
# Address: 0x0d9fe050 - 0x0d9fe088 (Size: 56 bytes, Frame: 0)
.globl __glBeginPolygon
.ent __glBeginPolygon
__glBeginPolygon:
    # Line 747
    lui	$a2,0x5
    # Line 750
    addiu	$a3,$a0,12712
    sw	$a3,12688($a0)
    # Line 747
    addiu	$a2,$a2,11580
    # Line 748
    sb	$zero,29848($a0)
    # Line 747
    addu	$at,$t9,$a2
    # Line 752
    la	$v1,__glEndPolygon
    # Line 761
    la	$a1,__glMatValidateVbuf0N
    sw	$a1,12020($a0)
    # Line 751
    la	$v0,sub_0da00000
    # Line 752
    sw	$v1,12068($a0)
    # Line 751
    addiu	$v0,$v0,-8928
    # Line 762
    jr	$ra
    # Line 751
    sw	$v0,11948($a0)
.end __glBeginPolygon

