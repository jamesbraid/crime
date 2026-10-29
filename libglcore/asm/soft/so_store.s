# Source: ../soft/so_store.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_store.c
# Total Functions: 11

.text

# Function: __glDoStore_ASD
# Declared: Line 26 (Source lines: 27-61)
# Address: 0x0da069d0 - 0x0da06b20 (Size: 336 bytes, Frame: 192)
.globl __glDoStore_ASD
.ent __glDoStore_ASD
__glDoStore_ASD:
    # Line 27
    addiu	$sp,$sp,-64
    sd	$s2,40($sp)
    sd	$s0,32($sp)
    # Line 31
    lw	$s0,0($a0)
    # Line 33
    lw	$s2,0($a1)
    # Line 37
    lw	$v0,29700($s0)
    # Line 27
    sd	$s1,24($sp)
    # Line 34
    lw	$s1,4($a1)
    # Line 27
    lui	$at,0x5
    # Line 37
    slt	$v0,$s2,$v0
    sd	$gp,48($sp)
    # Line 27
    addiu	$at,$at,-23620
    addu	$gp,$t9,$at
    # Line 37
    bnez	$v0,.L0da06ad0
    lw	$a3,29712($s0)
    lw	$v1,29704($s0)
    slt	$v1,$s1,$v1
    bnez	$v1,.L0da06ad0
    nop
    lw	$a2,29708($s0)
    slt	$a2,$s2,$a2
    beqz	$a2,.L0da06ad0
    slt	$a3,$s1,$a3
    beqz	$a3,.L0da06ad0
    nop
    # Line 39
    lwc1	$f1,3720($s0)
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$a4,30748($s0)
    mfc1	$a5,$f0
    addu	$a4,$a4,$a5
    lbu	$a4,0($a4)
    sd	$a1,8($sp)
    beqz	$a4,.L0da06ad0
    sd	$a0,16($sp)
    # Line 47
    lw	$t9,31208($s0)
    move	$a2,$s1
    move	$a1,$s2
    sd	$ra,56($sp)
    addiu	$a0,$s0,31108
    jalr	$t9
    sd	$a0,0($sp)
    beqz	$v0,.L0da06b04
    nop
    # Line 52
    lw	$t9,31344($s0)
    ld	$a3,8($sp)
    move	$a2,$s1
    move	$a1,$s2
    addiu	$a0,$s0,31228
    jalr	$t9
    lw	$a3,8($a3)
    beqz	$v0,.L0da06ae8
    ld	$a5,0($sp)
    # Line 57
    lw	$t9,31220($s0)
    move	$a0,$a5
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    # Line 60
    lw	$t9,12612($s0)
    ld	$a0,16($sp)
    jalr	$t9
    ld	$a1,8($sp)
    ld	$ra,56($sp)
.L0da06ad0:
    ld	$s1,24($sp)
    ld	$s0,32($sp)
    ld	$s2,40($sp)
    # Line 61
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da06ae8:
    # Line 54
    lw	$t9,31216($s0)
    move	$a0,$a5
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s1
    b	.L0da06ad0
    ld	$ra,56($sp)
.L0da06b04:
    # Line 49
    lw	$t9,31212($s0)
    move	$a1,$s2
    ld	$a0,0($sp)
    jalr	$t9
    move	$a2,$s1
    b	.L0da06ad0
    ld	$ra,56($sp)
.end __glDoStore_ASD

# Function: __glDoStore_AS
# Declared: Line 67 (Source lines: 68-96)
# Address: 0x0da06b20 - 0x0da06c30 (Size: 272 bytes, Frame: 192)
.globl __glDoStore_AS
.ent __glDoStore_AS
__glDoStore_AS:
    # Line 68
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 72
    lw	$s0,0($a0)
    # Line 74
    lw	$a2,0($a1)
    # Line 78
    lw	$v0,29700($s0)
    # Line 68
    sd	$s1,24($sp)
    # Line 75
    lw	$s1,4($a1)
    # Line 68
    lui	$at,0x5
    # Line 78
    slt	$v0,$a2,$v0
    sd	$gp,40($sp)
    # Line 68
    addiu	$at,$at,-23956
    addu	$gp,$t9,$at
    # Line 78
    bnez	$v0,.L0da06c00
    lw	$a4,29712($s0)
    lw	$v1,29704($s0)
    slt	$v1,$s1,$v1
    bnez	$v1,.L0da06c00
    nop
    lw	$a3,29708($s0)
    slt	$a3,$a2,$a3
    beqz	$a3,.L0da06c00
    slt	$a4,$s1,$a4
    beqz	$a4,.L0da06c00
    nop
    # Line 80
    lwc1	$f1,3720($s0)
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$a5,30748($s0)
    mfc1	$a6,$f0
    addu	$a5,$a5,$a6
    lbu	$a5,0($a5)
    sd	$a1,8($sp)
    sd	$a0,16($sp)
    beqz	$a5,.L0da06c00
    sd	$a2,0($sp)
    # Line 88
    lw	$t9,31208($s0)
    ld	$a1,0($sp)
    move	$a2,$s1
    sd	$ra,56($sp)
    addiu	$a0,$s0,31108
    jalr	$t9
    sd	$a0,48($sp)
    ld	$a5,0($sp)
    beqz	$v0,.L0da06c14
    ld	$a6,48($sp)
    # Line 93
    lw	$t9,31220($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    # Line 95
    lw	$t9,12612($s0)
    ld	$a0,16($sp)
    jalr	$t9
    ld	$a1,8($sp)
    ld	$ra,56($sp)
.L0da06c00:
    ld	$s1,24($sp)
    ld	$s0,32($sp)
    # Line 96
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da06c14:
    # Line 90
    lw	$t9,31212($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    b	.L0da06c00
    ld	$ra,56($sp)
.end __glDoStore_AS

# Function: __glDoStore_AD
# Declared: Line 102 (Source lines: 103-129)
# Address: 0x0da06c30 - 0x0da06d00 (Size: 208 bytes, Frame: 48)
.globl __glDoStore_AD
.ent __glDoStore_AD
__glDoStore_AD:
    # Line 103
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 107
    lw	$s0,0($a0)
    # Line 109
    lw	$a5,0($a1)
    # Line 113
    lw	$v0,29700($s0)
    # Line 110
    lw	$a2,4($a1)
    # Line 103
    lui	$at,0x5
    addiu	$at,$at,-24228
    # Line 113
    lw	$a4,29712($s0)
    slt	$v0,$a5,$v0
    sd	$gp,24($sp)
    # Line 103
    addu	$gp,$t9,$at
    # Line 113
    lw	$a3,29708($s0)
    bnez	$v0,.L0da06cf0
    slt	$a4,$a2,$a4
    lw	$v1,29704($s0)
    slt	$v1,$a2,$v1
    bnez	$v1,.L0da06cf0
    slt	$a3,$a5,$a3
    beqz	$a3,.L0da06cf0
    nop
    beqz	$a4,.L0da06cf0
    nop
    # Line 115
    lwc1	$f1,3720($s0)
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$a6,30748($s0)
    mfc1	$a7,$f0
    addu	$a6,$a6,$a7
    lbu	$a6,0($a6)
    sd	$a1,0($sp)
    beqz	$a6,.L0da06cf0
    sd	$a0,8($sp)
    # Line 123
    lw	$t9,31344($s0)
    ld	$a3,0($sp)
    move	$a1,$a5
    sd	$ra,32($sp)
    addiu	$a0,$s0,31228
    jalr	$t9
    lw	$a3,8($a3)
    beqz	$v0,.L0da06cf0
    ld	$ra,32($sp)
    # Line 128
    lw	$t9,12612($s0)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,0($sp)
    ld	$ra,32($sp)
.L0da06cf0:
    ld	$s0,16($sp)
    # Line 129
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoStore_AD

# Function: __glDoStore_SD
# Declared: Line 135 (Source lines: 136-164)
# Address: 0x0da06d00 - 0x0da06e28 (Size: 296 bytes, Frame: 192)
.globl __glDoStore_SD
.ent __glDoStore_SD
__glDoStore_SD:
    # Line 136
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    # Line 140
    lw	$s0,0($a0)
    # Line 142
    lw	$a2,0($a1)
    # Line 146
    lw	$v0,29700($s0)
    # Line 136
    sd	$s1,32($sp)
    # Line 143
    lw	$s1,4($a1)
    # Line 136
    lui	$at,0x5
    # Line 146
    slt	$v0,$a2,$v0
    sd	$gp,48($sp)
    # Line 136
    addiu	$at,$at,-24436
    addu	$gp,$t9,$at
    # Line 146
    bnez	$v0,.L0da06ddc
    lw	$a4,29712($s0)
    lw	$v1,29704($s0)
    slt	$v1,$s1,$v1
    bnez	$v1,.L0da06ddc
    nop
    lw	$a3,29708($s0)
    slt	$a3,$a2,$a3
    beqz	$a3,.L0da06ddc
    slt	$a4,$s1,$a4
    sd	$a0,24($sp)
    sd	$a1,16($sp)
    beqz	$a4,.L0da06ddc
    sd	$a2,0($sp)
    # Line 151
    lw	$t9,31208($s0)
    ld	$a1,0($sp)
    move	$a2,$s1
    sd	$ra,56($sp)
    addiu	$a0,$s0,31108
    jalr	$t9
    sd	$a0,8($sp)
    beqz	$v0,.L0da06e0c
    nop
    # Line 156
    lw	$t9,31344($s0)
    ld	$a3,16($sp)
    move	$a2,$s1
    ld	$a1,0($sp)
    addiu	$a0,$s0,31228
    jalr	$t9
    lw	$a3,8($a3)
    ld	$a5,0($sp)
    beqz	$v0,.L0da06df0
    ld	$a6,8($sp)
    # Line 161
    lw	$t9,31220($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    # Line 163
    lw	$t9,12612($s0)
    ld	$a0,24($sp)
    jalr	$t9
    ld	$a1,16($sp)
    ld	$ra,56($sp)
.L0da06ddc:
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 164
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da06df0:
    # Line 158
    lw	$t9,31216($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    b	.L0da06ddc
    ld	$ra,56($sp)
.L0da06e0c:
    # Line 153
    lw	$t9,31212($s0)
    ld	$a0,8($sp)
    ld	$a1,0($sp)
    jalr	$t9
    move	$a2,$s1
    b	.L0da06ddc
    ld	$ra,56($sp)
.end __glDoStore_SD

# Function: __glDoStore_A
# Declared: Line 170 (Source lines: 171-193)
# Address: 0x0da06e30 - 0x0da06ed0 (Size: 160 bytes, Frame: 16)
.globl __glDoStore_A
.ent __glDoStore_A
__glDoStore_A:
    # Line 175
    lw	$a3,0($a0)
    # Line 177
    lw	$a5,0($a1)
    # Line 181
    lw	$v0,29700($a3)
    # Line 178
    lw	$a4,4($a1)
    # Line 171
    addiu	$sp,$sp,-16
    lui	$at,0x5
    addiu	$at,$at,-24740
    # Line 181
    lw	$a2,29708($a3)
    slt	$v0,$a5,$v0
    sd	$gp,0($sp)
    # Line 171
    addu	$gp,$t9,$at
    # Line 181
    slt	$a2,$a5,$a2
    bnez	$v0,.L0da06ec4
    lw	$a5,29712($a3)
    lw	$v1,29704($a3)
    slt	$v1,$a4,$v1
    bnez	$v1,.L0da06ec4
    slt	$a5,$a4,$a5
    beqz	$a2,.L0da06ec4
    nop
    beqz	$a5,.L0da06ec4
    nop
    # Line 183
    lwc1	$f1,3720($a3)
    lwc1	$f0,24($a1)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    lw	$a6,30748($a3)
    mfc1	$a7,$f0
    addu	$a6,$a6,$a7
    lbu	$a6,0($a6)
    beqz	$a6,.L0da06ec4
    nop
    # Line 192
    lw	$t9,12612($a3)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    ld	$ra,8($sp)
.L0da06ec4:
    # Line 193
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDoStore_A

# Function: __glDoStore_S
# Declared: Line 199 (Source lines: 200-223)
# Address: 0x0da06ed0 - 0x0da06fb8 (Size: 232 bytes, Frame: 192)
.globl __glDoStore_S
.ent __glDoStore_S
__glDoStore_S:
    # Line 200
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 204
    lw	$s0,0($a0)
    # Line 206
    lw	$a2,0($a1)
    # Line 210
    lw	$v0,29700($s0)
    # Line 200
    sd	$s1,24($sp)
    # Line 207
    lw	$s1,4($a1)
    # Line 200
    lui	$at,0x5
    # Line 210
    slt	$v0,$a2,$v0
    sd	$gp,40($sp)
    # Line 200
    addiu	$at,$at,-24900
    addu	$gp,$t9,$at
    # Line 210
    bnez	$v0,.L0da06f88
    lw	$a4,29712($s0)
    lw	$v1,29704($s0)
    slt	$v1,$s1,$v1
    bnez	$v1,.L0da06f88
    nop
    lw	$a3,29708($s0)
    slt	$a3,$a2,$a3
    beqz	$a3,.L0da06f88
    slt	$a4,$s1,$a4
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    beqz	$a4,.L0da06f88
    sd	$a2,0($sp)
    # Line 215
    lw	$t9,31208($s0)
    ld	$a1,0($sp)
    move	$a2,$s1
    sd	$ra,56($sp)
    addiu	$a0,$s0,31108
    jalr	$t9
    sd	$a0,48($sp)
    ld	$a5,0($sp)
    beqz	$v0,.L0da06f9c
    ld	$a6,48($sp)
    # Line 220
    lw	$t9,31220($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    # Line 222
    lw	$t9,12612($s0)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,16($sp)
    ld	$ra,56($sp)
.L0da06f88:
    ld	$s1,24($sp)
    ld	$s0,32($sp)
    # Line 223
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da06f9c:
    # Line 217
    lw	$t9,31212($s0)
    move	$a0,$a6
    move	$a1,$a5
    jalr	$t9
    move	$a2,$s1
    b	.L0da06f88
    ld	$ra,56($sp)
.end __glDoStore_S

# Function: __glDoStore_D
# Declared: Line 229 (Source lines: 230-251)
# Address: 0x0da06fc0 - 0x0da07068 (Size: 168 bytes, Frame: 48)
.globl __glDoStore_D
.ent __glDoStore_D
__glDoStore_D:
    # Line 230
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 234
    lw	$s0,0($a0)
    # Line 236
    lw	$a5,0($a1)
    # Line 240
    lw	$v0,29700($s0)
    # Line 237
    lw	$a2,4($a1)
    # Line 230
    lui	$at,0x5
    addiu	$at,$at,-25140
    # Line 240
    lw	$a4,29712($s0)
    slt	$v0,$a5,$v0
    sd	$gp,24($sp)
    # Line 230
    addu	$gp,$t9,$at
    # Line 240
    lw	$a3,29708($s0)
    bnez	$v0,.L0da07058
    slt	$a4,$a2,$a4
    lw	$v1,29704($s0)
    slt	$v1,$a2,$v1
    bnez	$v1,.L0da07058
    slt	$a3,$a5,$a3
    beqz	$a3,.L0da07058
    nop
    sd	$a0,8($sp)
    beqz	$a4,.L0da07058
    sd	$a1,0($sp)
    # Line 245
    lw	$t9,31344($s0)
    ld	$a3,0($sp)
    move	$a1,$a5
    sd	$ra,32($sp)
    addiu	$a0,$s0,31228
    jalr	$t9
    lw	$a3,8($a3)
    beqz	$v0,.L0da07058
    ld	$ra,32($sp)
    # Line 250
    lw	$t9,12612($s0)
    ld	$a0,8($sp)
    jalr	$t9
    ld	$a1,0($sp)
    ld	$ra,32($sp)
.L0da07058:
    ld	$s0,16($sp)
    # Line 251
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glDoStore_D

# Function: __glDoStore
# Declared: Line 257 (Source lines: 258-274)
# Address: 0x0da07070 - 0x0da070ec (Size: 124 bytes, Frame: 16)
.globl __glDoStore
.ent __glDoStore
__glDoStore:
    # Line 262
    lw	$a3,0($a0)
    # Line 264
    lw	$a5,0($a1)
    # Line 268
    lw	$v0,29700($a3)
    # Line 265
    lw	$a4,4($a1)
    # Line 258
    addiu	$sp,$sp,-16
    lui	$at,0x5
    addiu	$at,$at,-25316
    # Line 268
    lw	$a2,29708($a3)
    slt	$v0,$a5,$v0
    sd	$gp,0($sp)
    # Line 258
    addu	$gp,$t9,$at
    # Line 268
    slt	$a2,$a5,$a2
    bnez	$v0,.L0da070c8
    lw	$a5,29712($a3)
    lw	$v1,29704($a3)
    slt	$v1,$a4,$v1
    bnez	$v1,.L0da070c8
    slt	$a5,$a4,$a5
    beqz	$a2,.L0da070c8
    nop
    bnez	$a5,.L0da070d4
    nop
.L0da070c8:
    # Line 274
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da070d4:
    # Line 273
    lw	$t9,12612($a3)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0da070c8
    ld	$ra,8($sp)
.end __glDoStore

# Function: __glDoNullStore
# Declared: Line 292 (Source lines: 294-294)
# Address: 0x0da070f0 - 0x0da070f8 (Size: 8 bytes, Frame: 0)
.globl __glDoNullStore
.ent __glDoNullStore
__glDoNullStore:
    # Line 294
    jr	$ra
    nop
.end __glDoNullStore

# Function: __glDoDoubleStore
# Declared: Line 296 (Source lines: 297-303)
# Address: 0x0da07100 - 0x0da0715c (Size: 92 bytes, Frame: 32)
.globl __glDoDoubleStore
.ent __glDoDoubleStore
__glDoDoubleStore:
    # Line 297
    addiu	$sp,$sp,-32
    # Line 298
    lw	$a0,0($a0)
    sd	$a0,24($sp)
    # Line 297
    lui	$at,0x5
    # Line 299
    lw	$a0,30656($a0)
    sd	$gp,16($sp)
    # Line 297
    addiu	$at,$at,-25460
    addu	$gp,$t9,$at
    # Line 300
    lw	$t9,164($a0)
    # Line 297
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 300
    jalr	$t9
    # Line 297
    move	$s8,$a1
    # Line 301
    ld	$a0,24($sp)
    lw	$a0,30660($a0)
    # Line 302
    lw	$t9,164($a0)
    jalr	$t9
    move	$a1,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 303
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDoDoubleStore

# Function: __glGenericPickStoreProcs
# Declared: Line 310 (Source lines: 311-363)
# Address: 0x0da07160 - 0x0da072c8 (Size: 360 bytes, Frame: 0)
.globl __glGenericPickStoreProcs
.ent __glGenericPickStoreProcs
__glGenericPickStoreProcs:
    # Line 313
    lw	$a5,30436($a0)
    # Line 315
    move	$a3,$zero
    # Line 311
    lui	$v0,0x5
    # Line 315
    andi	$v1,$a5,0x200
    # Line 324
    li	$t3,1036
    # Line 311
    addiu	$v0,$v0,-25556
    # Line 315
    beqz	$v1,.L0da07278
    # Line 311
    addu	$at,$t9,$v0
    # Line 315
    lbu	$v1,3220($a0)
    li	$a3,1
    movz	$a3,$zero,$v1
    # Line 324
    li	$t9,1032
.L0da07190:
    # Line 319
    andi	$a1,$a5,0x4
    # Line 324
    lw	$a4,1888($a0)
    # Line 316
    andi	$a7,$a5,0x20
    # Line 324
    li	$a5,1034
    # Line 319
    ori	$a2,$a3,0x2
    # Line 324
    sltiu	$a6,$a4,1033
    sltiu	$t8,$a4,1030
    movz	$a2,$a3,$a7
    # Line 322
    ori	$a3,$a2,0x4
    # Line 324
    bnez	$a6,.L0da071ec
    movz	$a3,$a2,$a1
    sltiu	$t1,$a4,1035
    sltiu	$t0,$a4,1034
    bnez	$t0,.L0da07244
    sltiu	$t2,$a4,1036
    bnez	$t1,.L0da07280
    nop
    bnez	$t2,.L0da07244
    nop
    bne	$a4,$t3,.L0da07270
    nop
    b	.L0da07244
    nop
.L0da071ec:
    sltiu	$a5,$a4,1029
    bnez	$a5,.L0da07234
    sltiu	$a1,$a4,1028
    bnez	$t8,.L0da07244
    nop
    bne	$a4,$t9,.L0da07270
    nop
    lbu	$v0,30652($a0)
    # Line 332
    la	$a2,__glDoDoubleStore
    # Line 331
    sll	$a1,$a3,0x2
    # Line 324
    beqz	$v0,.L0da07244
    # Line 331
    la	$v1,sub_0da40000
    addiu	$v1,$v1,32216
    # Line 332
    sw	$a2,12612($a0)
    # Line 331
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    # Line 363
    jr	$ra
    # Line 331
    sw	$v1,12608($a0)
.L0da07234:
    # Line 324
    bnez	$a1,.L0da07290
    nop
    beqz	$a5,.L0da07270
    nop
.L0da07244:
    # Line 340
    beqz	$a3,.L0da072b8
    # Line 358
    la	$a4,sub_0da40000
    sll	$a3,$a3,0x2
    addiu	$a4,$a4,32216
    # Line 359
    lw	$a2,11760($a0)
    # Line 358
    addu	$a3,$a4,$a3
    lw	$a3,0($a3)
    sw	$a3,12608($a0)
    # Line 359
    lw	$a2,164($a2)
    # Line 363
    jr	$ra
    # Line 359
    sw	$a2,12612($a0)
.L0da07270:
    # Line 363
    jr	$ra
    nop
.L0da07278:
    b	.L0da07190
    # Line 324
    li	$t9,1032
.L0da07280:
    bne	$a4,$a5,.L0da07270
    nop
    b	.L0da07244
    nop
.L0da07290:
    bnez	$a4,.L0da07270
    # Line 326
    la	$a6,sub_0da40000
    # Line 327
    la	$t0,__glDoNullStore
    # Line 326
    sll	$a7,$a3,0x2
    addiu	$a6,$a6,32216
    # Line 327
    sw	$t0,12612($a0)
    # Line 326
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    # Line 363
    jr	$ra
    # Line 326
    sw	$a6,12608($a0)
.L0da072b8:
    # Line 356
    lw	$a7,11760($a0)
    lw	$a7,164($a7)
    # Line 363
    jr	$ra
    # Line 356
    sw	$a7,12608($a0)
.end __glGenericPickStoreProcs

