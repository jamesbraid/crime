# Source: ../CRIME/crm_store.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_store.c
# Total Functions: 6

.text

# Function: crmDoDepthStore
# Declared: Line 23 (Source lines: 24-32)
# Address: 0x0d96dee0 - 0x0d96df58 (Size: 120 bytes, Frame: 32)
.ent crmDoDepthStore
crmDoDepthStore:
    # Line 29
    lw	$a3,8($a1)
    sll	$a3,$a3,0x6
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f3
    # Line 24
    addiu	$sp,$sp,-32
    # Line 29
    cvt.d.l	$f3,$f3
    sdc1	$f3,0($sp)
    ldc1	$f2,0($sp)
    # Line 25
    lw	$at,0($a0)
    sd	$gp,24($sp)
    # Line 27
    lw	$v1,32188($at)
    # Line 29
    trunc.l.d	$f2,$f2
    sdc1	$f2,8($sp)
    lw	$a2,32184($at)
    ldc1	$f1,8($sp)
    ldc1	$f0,8($sp)
    # Line 24
    lui	$v0,0xe
    # Line 29
    sdc1	$f1,8648($a2)
    # Line 24
    addiu	$v0,$v0,11948
    # Line 29
    sdc1	$f0,8648($v1)
    # Line 24
    addu	$gp,$t9,$v0
    # Line 31
    lw	$t9,12612($at)
    # Line 24
    sd	$ra,16($sp)
    # Line 31
    jalr	$t9
    nop
    ld	$ra,16($sp)
    # Line 32
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end crmDoDepthStore

# Function: crmDoDoubleStore
# Declared: Line 35 (Source lines: 36-42)
# Address: 0x0d96df60 - 0x0d96dfbc (Size: 92 bytes, Frame: 32)
.ent crmDoDoubleStore
crmDoDoubleStore:
    # Line 36
    addiu	$sp,$sp,-32
    # Line 37
    lw	$a0,0($a0)
    sd	$a0,24($sp)
    # Line 36
    lui	$at,0xe
    # Line 38
    lw	$a0,30656($a0)
    sd	$gp,16($sp)
    # Line 36
    addiu	$at,$at,11820
    addu	$gp,$t9,$at
    # Line 39
    lw	$t9,164($a0)
    # Line 36
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 39
    jalr	$t9
    # Line 36
    move	$s8,$a1
    # Line 40
    ld	$a0,24($sp)
    lw	$a0,30660($a0)
    # Line 41
    lw	$t9,164($a0)
    jalr	$t9
    move	$a1,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 42
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end crmDoDoubleStore

# Function: crmDoDoubleStore_S
# Declared: Line 45 (Source lines: 46-63)
# Address: 0x0d96dfc0 - 0x0d96e048 (Size: 136 bytes, Frame: 48)
.ent crmDoDoubleStore_S
crmDoDoubleStore_S:
    # Line 46
    addiu	$sp,$sp,-48
    sd	$ra,0($sp)
    # Line 47
    lw	$a0,0($a0)
    sd	$a0,40($sp)
    # Line 50
    lw	$a3,32184($a0)
    lw	$a2,32188($a0)
    # Line 53
    sw	$zero,8680($a3)
    sw	$zero,8680($a2)
    # Line 46
    lui	$at,0xe
    # Line 55
    lw	$a0,30656($a0)
    sd	$gp,16($sp)
    # Line 46
    addiu	$at,$at,11724
    addu	$gp,$t9,$at
    # Line 56
    lw	$t9,164($a0)
    # Line 46
    sd	$s8,8($sp)
    # Line 50
    sd	$a3,32($sp)
    # Line 46
    move	$s8,$a1
    # Line 56
    jalr	$t9
    # Line 50
    sd	$a2,24($sp)
    # Line 59
    ld	$a2,24($sp)
    # Line 58
    ld	$a0,40($sp)
    # Line 59
    ld	$a3,32($sp)
    # Line 58
    lh	$a1,1674($a0)
    # Line 59
    sw	$a1,8680($a3)
    sw	$a1,8680($a2)
    # Line 61
    lw	$a0,30660($a0)
    # Line 62
    lw	$t9,164($a0)
    jalr	$t9
    move	$a1,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 63
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end crmDoDoubleStore_S

# Function: crmDoDoubleStore_D
# Declared: Line 66 (Source lines: 67-88)
# Address: 0x0d96e050 - 0x0d96e178 (Size: 296 bytes, Frame: 192)
.ent crmDoDoubleStore_D
crmDoDoubleStore_D:
    # Line 67
    addiu	$sp,$sp,-64
    sd	$ra,56($sp)
    sd	$s0,32($sp)
    # Line 68
    lw	$s0,0($a0)
    # Line 67
    sd	$s8,24($sp)
    # Line 70
    lw	$a5,32088($s0)
    sw	$a5,0($sp)
    # Line 71
    lw	$s8,0($sp)
    sd	$gp,48($sp)
    # Line 67
    sd	$s1,40($sp)
    lui	$at,0xe
    # Line 71
    sll	$s8,$s8,0x1e
    # Line 67
    move	$s1,$a1
    addiu	$at,$at,11580
    # Line 71
    lw	$a4,32188($s0)
    # Line 67
    addu	$gp,$t9,$at
    # Line 71
    bltz	$s8,.L0d96e148
    lw	$a3,32184($s0)
.L0d96e098:
    # Line 77
    lw	$ra,8($s1)
    sll	$ra,$ra,0x6
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f3
    cvt.d.l	$f3,$f3
    sdc1	$f3,8($sp)
    ldc1	$f2,8($sp)
    trunc.l.d	$f2,$f2
    sdc1	$f2,16($sp)
    ldc1	$f1,16($sp)
    ldc1	$f0,16($sp)
    sdc1	$f1,8648($a3)
    sdc1	$f0,8648($a4)
    # Line 79
    lw	$a0,30656($s0)
    # Line 80
    lw	$t9,164($a0)
    jalr	$t9
    move	$a1,$s1
    bltz	$s8,.L0d96e114
    nop
.L0d96e0e8:
    # Line 86
    lw	$a0,30660($s0)
    # Line 87
    lw	$t9,164($a0)
    ld	$s8,24($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$ra,56($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    # Line 88
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d96e114:
    # Line 83
    lw	$a1,32088($s0)
    lw	$at,32092($s0)
    ori	$a1,$a1,0x2
    beq	$at,$a1,.L0d96e0e8
    sw	$a1,32088($s0)
    # Line 84
    lw	$a5,32184($s0)
    sw	$a1,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    b	.L0d96e0e8
    sw	$a2,32092($s0)
.L0d96e148:
    # Line 74
    lw	$a6,32092($s0)
    li	$a1,-3
    and	$a1,$a5,$a1
    beq	$a6,$a1,.L0d96e098
    sw	$a1,32088($s0)
    # Line 75
    sw	$a1,8216($a3)
    lw	$a6,32188($s0)
    lw	$a5,32088($s0)
    sw	$a5,8216($a6)
    lw	$a2,32088($s0)
    b	.L0d96e098
    sw	$a2,32092($s0)
.end crmDoDoubleStore_D

# Function: crmDoDoubleStore_SD
# Declared: Line 91 (Source lines: 92-120)
# Address: 0x0d96e180 - 0x0d96e2d0 (Size: 336 bytes, Frame: 208)
.ent crmDoDoubleStore_SD
crmDoDoubleStore_SD:
    # Line 92
    addiu	$sp,$sp,-80
    sd	$ra,72($sp)
    sd	$gp,64($sp)
    sd	$s1,56($sp)
    sd	$s3,32($sp)
    sd	$s2,24($sp)
    sd	$s0,48($sp)
    # Line 93
    lw	$s0,0($a0)
    # Line 92
    sd	$s8,40($sp)
    # Line 95
    lw	$at,32088($s0)
    sw	$at,0($sp)
    # Line 100
    lw	$s8,0($sp)
    # Line 97
    lw	$s2,32184($s0)
    lw	$s3,32188($s0)
    # Line 92
    lui	$at,0xe
    # Line 100
    sll	$s8,$s8,0x1e
    # Line 92
    move	$s1,$a1
    # Line 100
    sw	$zero,8680($s2)
    # Line 92
    addiu	$at,$at,11276
    # Line 100
    sw	$zero,8680($s3)
    bltz	$s8,.L0d96e298
    # Line 92
    addu	$gp,$t9,$at
.L0d96e1d8:
    # Line 106
    lw	$v0,8($s1)
    sll	$v0,$v0,0x6
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f3
    cvt.d.l	$f3,$f3
    sdc1	$f3,8($sp)
    ldc1	$f2,8($sp)
    trunc.l.d	$f2,$f2
    sdc1	$f2,16($sp)
    ldc1	$f1,16($sp)
    ldc1	$f0,16($sp)
    sdc1	$f1,8648($s2)
    sdc1	$f0,8648($s3)
    # Line 108
    lw	$a0,30656($s0)
    # Line 109
    lw	$t9,164($a0)
    jalr	$t9
    move	$a1,$s1
    # Line 111
    lh	$v1,1674($s0)
    # Line 112
    sw	$v1,8680($s2)
    bltz	$s8,.L0d96e264
    sw	$v1,8680($s3)
.L0d96e230:
    # Line 118
    lw	$a0,30660($s0)
    # Line 119
    lw	$t9,164($a0)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    ld	$s8,40($sp)
    jalr	$t9
    move	$a1,$s1
    ld	$ra,72($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    # Line 120
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d96e264:
    # Line 115
    lw	$a1,32088($s0)
    lw	$a0,32092($s0)
    ori	$a1,$a1,0x2
    beq	$a0,$a1,.L0d96e230
    sw	$a1,32088($s0)
    # Line 116
    lw	$a5,32184($s0)
    sw	$a1,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    b	.L0d96e230
    sw	$a2,32092($s0)
.L0d96e298:
    # Line 103
    lw	$a1,32088($s0)
    lw	$a6,32092($s0)
    li	$a2,-3
    and	$a1,$a1,$a2
    beq	$a6,$a1,.L0d96e1d8
    sw	$a1,32088($s0)
    # Line 104
    lw	$a6,32184($s0)
    sw	$a1,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    b	.L0d96e1d8
    sw	$a3,32092($s0)
.end crmDoDoubleStore_SD

# Function: __glCrmGenericPickStoreProcs
# Declared: Line 123 (Source lines: 124-158)
# Address: 0x0d96e2d0 - 0x0d96e3b0 (Size: 224 bytes, Frame: 0)
.globl __glCrmGenericPickStoreProcs
.ent __glCrmGenericPickStoreProcs
__glCrmGenericPickStoreProcs:
    # Line 127
    lw	$a3,1888($a0)
    li	$v1,1032
    # Line 124
    lui	$v0,0xe
    # Line 127
    li	$a1,1029
    # Line 124
    addiu	$v0,$v0,10940
    # Line 125
    lw	$a4,30436($a0)
    # Line 127
    beq	$a3,$v1,.L0d96e338
    # Line 124
    addu	$at,$t9,$v0
    # Line 127
    beqz	$a3,.L0d96e318
    # Line 147
    andi	$a2,$a4,0x4
    # Line 127
    li	$v1,1028
    beq	$a3,$v1,.L0d96e318
    # Line 147
    andi	$a2,$a4,0x4
    # Line 127
    beq	$a3,$a1,.L0d96e318
    # Line 147
    andi	$a2,$a4,0x4
.L0d96e30c:
    # Line 158
    jr	$ra
    nop
.L0d96e314:
    # Line 147
    andi	$a2,$a4,0x4
.L0d96e318:
    # Line 151
    la	$a4,sub_0d970000
    # Line 147
    beqz	$a2,.L0d96e37c
    # Line 151
    addiu	$a4,$a4,-8480
    # Line 152
    lw	$a3,11760($a0)
    # Line 151
    sw	$a4,12608($a0)
    # Line 152
    lw	$a3,164($a3)
    # Line 158
    jr	$ra
    # Line 152
    sw	$a3,12612($a0)
.L0d96e338:
    # Line 129
    lbu	$a5,30652($a0)
    # Line 130
    li	$a7,4
    li	$a6,36
    andi	$a3,$a4,0x24
    # Line 129
    beqz	$a5,.L0d96e314
    # Line 130
    li	$t0,32
    beq	$a3,$a6,.L0d96e3a4
    # Line 133
    nop	# was lw $t9, -32732($gp) # &sub_0d970000
    # Line 130
    beq	$a3,$a7,.L0d96e38c
    # Line 136
    la	$t3,sub_0d970000
    # Line 130
    beq	$a3,$t0,.L0d96e398
    # Line 138
    la	$t8,sub_0d970000
    # Line 130
    bnez	$a3,.L0d96e30c
    # Line 141
    la	$t1,sub_0d970000
    addiu	$t1,$t1,-8352
    # Line 158
    jr	$ra
    # Line 141
    sw	$t1,12608($a0)
.L0d96e37c:
    # Line 154
    lw	$t2,11760($a0)
    lw	$t2,164($t2)
    # Line 158
    jr	$ra
    # Line 154
    sw	$t2,12608($a0)
.L0d96e38c:
    # Line 136
    addiu	$t3,$t3,-8112
    sw	$t3,12608($a0)
    # Line 138
    la	$t8,sub_0d970000
.L0d96e398:
    addiu	$t8,$t8,-8256
    # Line 158
    jr	$ra
    # Line 138
    sw	$t8,12608($a0)
.L0d96e3a4:
    # Line 133
    addiu	$t9,$t9,-7808
    # Line 158
    jr	$ra
    # Line 133
    sw	$t9,12608($a0)
.end __glCrmGenericPickStoreProcs

