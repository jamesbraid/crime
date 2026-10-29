# Source: ../soft/so_depthop.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_depthop.c
# Total Functions: 34

.text

# Function: FetchNon32
# Declared: Line 21 (Source lines: 22-53)
# Address: 0x0d9d11d0 - 0x0d9d128c (Size: 188 bytes, Frame: 0)
.ent FetchNon32
FetchNon32:
    # Line 24
    lw	$a6,0($a0)
    # Line 29
    lw	$t8,3664($a6)
    lw	$t3,28($a0)
    subu	$t8,$a2,$t8
    mult	$t3,$t8
    lw	$t0,16($a0)
    mflo	$t2
    lw	$t1,3660($a6)
    sll	$t2,$t2,0x2
    addu	$t0,$t0,$t2
    sll	$t2,$a1,0x2
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t2
    # Line 27
    lw	$a7,92($a0)
    # Line 29
    subu	$t0,$t0,$t1
    lw	$t0,0($t0)
    lw	$v1,80($a0)
    nor	$a1,$a7,$zero
    # Line 22
    lui	$v0,0x8
    # Line 29
    and	$a1,$t0,$a1
    # Line 40
    dmtc1	$zero,$f3
    # Line 22
    addiu	$v0,$v0,-1092
    # Line 26
    lw	$a5,100($a0)
    # Line 29
    beq	$v1,$a1,.L0d9d1274
    # Line 22
    addu	$at,$t9,$v0
    # Line 29
    lui	$t9,0xff00
    # Line 40
    lui	$v0,0x100
    # Line 29
    bne	$a5,$t9,.L0d9d1254
    ldc1	$f1,_lit8_3ff0000000000000
    ldc1	$f0,1640($a6)
    c.eq.d	$f0,$f1
    bc1t	.L0d9d1284
    nop
.L0d9d1254:
    # Line 40
    bne	$a5,$v0,.L0d9d1274
    nop
    ldc1	$f2,1640($a6)
    c.eq.d $f2,$f3
    bc1f .L0d9d1274
    # Line 45
    move	$v0,$zero
    # Line 53
    jr	$ra
    nop
.L0d9d1274:
    lw	$v1,88($a0)
    and	$v0,$t0,$a7
    jr	$ra
    sllv	$v0,$v0,$v1
.L0d9d1284:
    jr	$ra
    # Line 40
    lw	$v0,76($a0)
.end FetchNon32

# Function: Fetch32
# Declared: Line 56 (Source lines: 61-61)
# Address: 0x0d9d1290 - 0x0d9d12d0 (Size: 64 bytes, Frame: 0)
.ent Fetch32
Fetch32:
    # Line 61
    lw	$v1,0($a0)
    lw	$a4,3664($v1)
    lw	$a3,28($a0)
    subu	$a4,$a2,$a4
    mult	$a3,$a4
    lw	$v0,16($a0)
    mflo	$a0
    lw	$v1,3660($v1)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$a0
    subu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.end Fetch32

# Function: StoreNEVER
# Declared: Line 65 (Source lines: 68-68)
# Address: 0x0d9d12d0 - 0x0d9d12d8 (Size: 8 bytes, Frame: 0)
.ent StoreNEVER
StoreNEVER:
    # Line 68
    jr	$ra
    move	$v0,$zero
.end StoreNEVER

# Function: StoreLESS
# Declared: Line 71 (Source lines: 75-83)
# Address: 0x0d9d12e0 - 0x0d9d1348 (Size: 104 bytes, Frame: 0)
.ent StoreLESS
StoreLESS:
    # Line 75
    lw	$a5,0($a0)
    # Line 78
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    sll	$t1,$a1,0x2
    addu	$a6,$a6,$a7
    sll	$t0,$t0,0x2
    # Line 75
    lw	$a7,31316($a5)
    # Line 78
    addu	$a6,$a6,$t1
    # Line 75
    lw	$a5,31308($a5)
    # Line 78
    subu	$a6,$a6,$t0
    # Line 75
    srlv	$a7,$a3,$a7
    # Line 78
    lw	$at,0($a6)
    # Line 75
    addu	$a5,$a5,$a7
    # Line 78
    sltu	$at,$a5,$at
    beqz	$at,.L0d9d1340
    # Line 81
    li	$v0,1
    # Line 83
    jr	$ra
    # Line 80
    sw	$a5,0($a6)
.L0d9d1340:
    # Line 83
    jr	$ra
    move	$v0,$zero
.end StoreLESS

# Function: StoreLESS_s
# Declared: Line 86 (Source lines: 90-98)
# Address: 0x0d9d1350 - 0x0d9d13b8 (Size: 104 bytes, Frame: 0)
.ent StoreLESS_s
StoreLESS_s:
    # Line 90
    lw	$a5,0($a0)
    # Line 93
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    sll	$t1,$a1,0x2
    addu	$a6,$a6,$a7
    sll	$t0,$t0,0x2
    # Line 90
    lw	$a7,31316($a5)
    # Line 93
    addu	$a6,$a6,$t1
    # Line 90
    lw	$a5,31308($a5)
    # Line 93
    subu	$a6,$a6,$t0
    # Line 90
    srlv	$a7,$a3,$a7
    # Line 93
    lw	$at,0($a6)
    # Line 90
    addu	$a5,$a5,$a7
    # Line 93
    slt	$at,$a5,$at
    beqz	$at,.L0d9d13b0
    # Line 96
    li	$v0,1
    # Line 98
    jr	$ra
    # Line 95
    sw	$a5,0($a6)
.L0d9d13b0:
    # Line 98
    jr	$ra
    move	$v0,$zero
.end StoreLESS_s

# Function: StoreEQUAL
# Declared: Line 101 (Source lines: 105-113)
# Address: 0x0d9d13c0 - 0x0d9d1424 (Size: 100 bytes, Frame: 0)
.ent StoreEQUAL
StoreEQUAL:
    # Line 105
    lw	$a5,0($a0)
    # Line 108
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    sll	$a7,$a1,0x2
    sll	$t0,$t0,0x2
    addu	$a6,$a6,$a7
    # Line 105
    lw	$a7,31316($a5)
    lw	$a5,31308($a5)
    # Line 108
    subu	$a6,$a6,$t0
    lw	$at,0($a6)
    # Line 105
    srlv	$a7,$a3,$a7
    addu	$a5,$a5,$a7
    # Line 108
    bne	$at,$a5,.L0d9d141c
    # Line 111
    li	$v0,1
    # Line 113
    jr	$ra
    # Line 110
    sw	$a5,0($a6)
.L0d9d141c:
    # Line 113
    jr	$ra
    move	$v0,$zero
.end StoreEQUAL

# Function: StoreLEQUAL
# Declared: Line 116 (Source lines: 120-128)
# Address: 0x0d9d1430 - 0x0d9d1498 (Size: 104 bytes, Frame: 0)
.ent StoreLEQUAL
StoreLEQUAL:
    # Line 120
    lw	$a5,0($a0)
    # Line 123
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    sll	$a7,$a1,0x2
    sll	$t0,$t0,0x2
    addu	$a6,$a6,$a7
    # Line 120
    lw	$a7,31316($a5)
    lw	$a5,31308($a5)
    # Line 123
    subu	$a6,$a6,$t0
    lw	$at,0($a6)
    # Line 120
    srlv	$a7,$a3,$a7
    addu	$a5,$a5,$a7
    # Line 123
    sltu	$at,$at,$a5
    bnez	$at,.L0d9d1490
    # Line 126
    li	$v0,1
    # Line 128
    jr	$ra
    # Line 125
    sw	$a5,0($a6)
.L0d9d1490:
    # Line 128
    jr	$ra
    move	$v0,$zero
.end StoreLEQUAL

# Function: StoreLEQUAL_s
# Declared: Line 131 (Source lines: 135-143)
# Address: 0x0d9d14a0 - 0x0d9d1508 (Size: 104 bytes, Frame: 0)
.ent StoreLEQUAL_s
StoreLEQUAL_s:
    # Line 135
    lw	$a5,0($a0)
    # Line 138
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    sll	$a7,$a1,0x2
    sll	$t0,$t0,0x2
    addu	$a6,$a6,$a7
    # Line 135
    lw	$a7,31316($a5)
    lw	$a5,31308($a5)
    # Line 138
    subu	$a6,$a6,$t0
    lw	$at,0($a6)
    # Line 135
    srlv	$a7,$a3,$a7
    addu	$a5,$a5,$a7
    # Line 138
    slt	$at,$at,$a5
    bnez	$at,.L0d9d1500
    # Line 141
    li	$v0,1
    # Line 143
    jr	$ra
    # Line 140
    sw	$a5,0($a6)
.L0d9d1500:
    # Line 143
    jr	$ra
    move	$v0,$zero
.end StoreLEQUAL_s

# Function: StoreGREATER
# Declared: Line 146 (Source lines: 150-158)
# Address: 0x0d9d1510 - 0x0d9d1578 (Size: 104 bytes, Frame: 0)
.ent StoreGREATER
StoreGREATER:
    # Line 150
    lw	$a5,0($a0)
    # Line 153
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    sll	$a7,$a1,0x2
    sll	$t0,$t0,0x2
    addu	$a6,$a6,$a7
    # Line 150
    lw	$a7,31316($a5)
    lw	$a5,31308($a5)
    # Line 153
    subu	$a6,$a6,$t0
    lw	$at,0($a6)
    # Line 150
    srlv	$a7,$a3,$a7
    addu	$a5,$a5,$a7
    # Line 153
    sltu	$at,$at,$a5
    beqz	$at,.L0d9d1570
    # Line 156
    li	$v0,1
    # Line 158
    jr	$ra
    # Line 155
    sw	$a5,0($a6)
.L0d9d1570:
    # Line 158
    jr	$ra
    move	$v0,$zero
.end StoreGREATER

# Function: StoreGREATER_s
# Declared: Line 161 (Source lines: 165-173)
# Address: 0x0d9d1580 - 0x0d9d15e8 (Size: 104 bytes, Frame: 0)
.ent StoreGREATER_s
StoreGREATER_s:
    # Line 165
    lw	$a5,0($a0)
    # Line 168
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    sll	$a7,$a1,0x2
    sll	$t0,$t0,0x2
    addu	$a6,$a6,$a7
    # Line 165
    lw	$a7,31316($a5)
    lw	$a5,31308($a5)
    # Line 168
    subu	$a6,$a6,$t0
    lw	$at,0($a6)
    # Line 165
    srlv	$a7,$a3,$a7
    addu	$a5,$a5,$a7
    # Line 168
    slt	$at,$at,$a5
    beqz	$at,.L0d9d15e0
    # Line 171
    li	$v0,1
    # Line 173
    jr	$ra
    # Line 170
    sw	$a5,0($a6)
.L0d9d15e0:
    # Line 173
    jr	$ra
    move	$v0,$zero
.end StoreGREATER_s

# Function: StoreNOTEQUAL
# Declared: Line 176 (Source lines: 180-188)
# Address: 0x0d9d15f0 - 0x0d9d1654 (Size: 100 bytes, Frame: 0)
.ent StoreNOTEQUAL
StoreNOTEQUAL:
    # Line 180
    lw	$a5,0($a0)
    # Line 183
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    sll	$a7,$a1,0x2
    sll	$t0,$t0,0x2
    addu	$a6,$a6,$a7
    # Line 180
    lw	$a7,31316($a5)
    lw	$a5,31308($a5)
    # Line 183
    subu	$a6,$a6,$t0
    lw	$at,0($a6)
    # Line 180
    srlv	$a7,$a3,$a7
    addu	$a5,$a5,$a7
    # Line 183
    beq	$at,$a5,.L0d9d164c
    # Line 186
    li	$v0,1
    # Line 188
    jr	$ra
    # Line 185
    sw	$a5,0($a6)
.L0d9d164c:
    # Line 188
    jr	$ra
    move	$v0,$zero
.end StoreNOTEQUAL

# Function: StoreGEQUAL
# Declared: Line 191 (Source lines: 195-203)
# Address: 0x0d9d1660 - 0x0d9d16c8 (Size: 104 bytes, Frame: 0)
.ent StoreGEQUAL
StoreGEQUAL:
    # Line 195
    lw	$a5,0($a0)
    # Line 198
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    sll	$t1,$a1,0x2
    addu	$a6,$a6,$a7
    sll	$t0,$t0,0x2
    # Line 195
    lw	$a7,31316($a5)
    # Line 198
    addu	$a6,$a6,$t1
    # Line 195
    lw	$a5,31308($a5)
    # Line 198
    subu	$a6,$a6,$t0
    # Line 195
    srlv	$a7,$a3,$a7
    # Line 198
    lw	$at,0($a6)
    # Line 195
    addu	$a5,$a5,$a7
    # Line 198
    sltu	$at,$a5,$at
    bnez	$at,.L0d9d16c0
    # Line 201
    li	$v0,1
    # Line 203
    jr	$ra
    # Line 200
    sw	$a5,0($a6)
.L0d9d16c0:
    # Line 203
    jr	$ra
    move	$v0,$zero
.end StoreGEQUAL

# Function: StoreGEQUAL_s
# Declared: Line 206 (Source lines: 210-218)
# Address: 0x0d9d16d0 - 0x0d9d1738 (Size: 104 bytes, Frame: 0)
.ent StoreGEQUAL_s
StoreGEQUAL_s:
    # Line 210
    lw	$a5,0($a0)
    # Line 213
    lw	$t1,3664($a5)
    lw	$t0,28($a0)
    subu	$t1,$a2,$t1
    mult	$t0,$t1
    lw	$a6,16($a0)
    mflo	$a7
    lw	$t0,3660($a5)
    sll	$a7,$a7,0x2
    sll	$t1,$a1,0x2
    addu	$a6,$a6,$a7
    sll	$t0,$t0,0x2
    # Line 210
    lw	$a7,31316($a5)
    # Line 213
    addu	$a6,$a6,$t1
    # Line 210
    lw	$a5,31308($a5)
    # Line 213
    subu	$a6,$a6,$t0
    # Line 210
    srlv	$a7,$a3,$a7
    # Line 213
    lw	$at,0($a6)
    # Line 210
    addu	$a5,$a5,$a7
    # Line 213
    slt	$at,$a5,$at
    bnez	$at,.L0d9d1730
    # Line 216
    li	$v0,1
    # Line 218
    jr	$ra
    # Line 215
    sw	$a5,0($a6)
.L0d9d1730:
    # Line 218
    jr	$ra
    move	$v0,$zero
.end StoreGEQUAL_s

# Function: StoreALWAYS
# Declared: Line 221 (Source lines: 227-229)
# Address: 0x0d9d1740 - 0x0d9d1794 (Size: 84 bytes, Frame: 0)
.ent StoreALWAYS
StoreALWAYS:
    # Line 227
    lw	$at,0($a0)
    lw	$a5,3664($at)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a2
    sll	$a0,$a2,0x2
    sll	$a1,$a1,0x2
    lw	$v0,3660($at)
    addu	$v1,$v1,$a0
    lw	$a0,31316($at)
    addu	$v1,$v1,$a1
    sll	$a1,$v0,0x2
    # Line 229
    li	$v0,1
    # Line 227
    lw	$at,31308($at)
    subu	$v1,$v1,$a1
    srlv	$a0,$a3,$a0
    addu	$at,$at,$a0
    # Line 229
    jr	$ra
    # Line 227
    sw	$at,0($v1)
.end StoreALWAYS

# Function: StoreLESS_W
# Declared: Line 234 (Source lines: 242-242)
# Address: 0x0d9d17a0 - 0x0d9d17f4 (Size: 84 bytes, Frame: 0)
.ent StoreLESS_W
StoreLESS_W:
    # Line 242
    lw	$v0,0($a0)
    lw	$a5,3664($v0)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a0
    lw	$a2,3660($v0)
    sll	$a0,$a0,0x2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a0
    lw	$a0,31316($v0)
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    lw	$v0,31308($v0)
    subu	$v1,$v1,$a1
    srlv	$a0,$a3,$a0
    lw	$v1,0($v1)
    addu	$v0,$v0,$a0
    jr	$ra
    sltu	$v0,$v0,$v1
.end StoreLESS_W

# Function: StoreLESS_W_s
# Declared: Line 245 (Source lines: 253-253)
# Address: 0x0d9d1800 - 0x0d9d1854 (Size: 84 bytes, Frame: 0)
.ent StoreLESS_W_s
StoreLESS_W_s:
    # Line 253
    lw	$v0,0($a0)
    lw	$a5,3664($v0)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a0
    lw	$a2,3660($v0)
    sll	$a0,$a0,0x2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a0
    lw	$a0,31316($v0)
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    lw	$v0,31308($v0)
    subu	$v1,$v1,$a1
    srlv	$a0,$a3,$a0
    lw	$v1,0($v1)
    addu	$v0,$v0,$a0
    jr	$ra
    slt	$v0,$v0,$v1
.end StoreLESS_W_s

# Function: StoreEQUAL_W
# Declared: Line 256 (Source lines: 264-264)
# Address: 0x0d9d1860 - 0x0d9d18b8 (Size: 88 bytes, Frame: 0)
.ent StoreEQUAL_W
StoreEQUAL_W:
    # Line 264
    lw	$v1,0($a0)
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    lw	$a2,3660($v1)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    sll	$a1,$a2,0x2
    addu	$v0,$v0,$a0
    lw	$a0,31316($v1)
    lw	$v1,31308($v1)
    subu	$v0,$v0,$a1
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    xor	$v0,$v0,$v1
    jr	$ra
    sltiu	$v0,$v0,1
.end StoreEQUAL_W

# Function: StoreLEQUAL_W
# Declared: Line 267 (Source lines: 275-275)
# Address: 0x0d9d18c0 - 0x0d9d1918 (Size: 88 bytes, Frame: 0)
.ent StoreLEQUAL_W
StoreLEQUAL_W:
    # Line 275
    lw	$v1,0($a0)
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    lw	$a2,3660($v1)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    sll	$a1,$a2,0x2
    addu	$v0,$v0,$a0
    lw	$a0,31316($v1)
    lw	$v1,31308($v1)
    subu	$v0,$v0,$a1
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    sltu	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreLEQUAL_W

# Function: StoreLEQUAL_W_s
# Declared: Line 278 (Source lines: 286-286)
# Address: 0x0d9d1920 - 0x0d9d1978 (Size: 88 bytes, Frame: 0)
.ent StoreLEQUAL_W_s
StoreLEQUAL_W_s:
    # Line 286
    lw	$v1,0($a0)
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    lw	$a2,3660($v1)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    sll	$a1,$a2,0x2
    addu	$v0,$v0,$a0
    lw	$a0,31316($v1)
    lw	$v1,31308($v1)
    subu	$v0,$v0,$a1
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    slt	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreLEQUAL_W_s

# Function: StoreGREATER_W
# Declared: Line 289 (Source lines: 297-297)
# Address: 0x0d9d1980 - 0x0d9d19d4 (Size: 84 bytes, Frame: 0)
.ent StoreGREATER_W
StoreGREATER_W:
    # Line 297
    lw	$v1,0($a0)
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    lw	$a2,3660($v1)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    sll	$a1,$a2,0x2
    addu	$v0,$v0,$a0
    lw	$a0,31316($v1)
    lw	$v1,31308($v1)
    subu	$v0,$v0,$a1
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    jr	$ra
    sltu	$v0,$v0,$v1
.end StoreGREATER_W

# Function: StoreGREATER_W_s
# Declared: Line 300 (Source lines: 308-308)
# Address: 0x0d9d19e0 - 0x0d9d1a34 (Size: 84 bytes, Frame: 0)
.ent StoreGREATER_W_s
StoreGREATER_W_s:
    # Line 308
    lw	$v1,0($a0)
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    lw	$a2,3660($v1)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    sll	$a1,$a2,0x2
    addu	$v0,$v0,$a0
    lw	$a0,31316($v1)
    lw	$v1,31308($v1)
    subu	$v0,$v0,$a1
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    jr	$ra
    slt	$v0,$v0,$v1
.end StoreGREATER_W_s

# Function: StoreNOTEQUAL_W
# Declared: Line 312 (Source lines: 320-320)
# Address: 0x0d9d1a40 - 0x0d9d1a98 (Size: 88 bytes, Frame: 0)
.ent StoreNOTEQUAL_W
StoreNOTEQUAL_W:
    # Line 320
    lw	$v1,0($a0)
    lw	$a5,3664($v1)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v0,16($a0)
    mflo	$a0
    lw	$a2,3660($v1)
    sll	$a0,$a0,0x2
    addu	$v0,$v0,$a0
    sll	$a0,$a1,0x2
    sll	$a1,$a2,0x2
    addu	$v0,$v0,$a0
    lw	$a0,31316($v1)
    lw	$v1,31308($v1)
    subu	$v0,$v0,$a1
    lw	$v0,0($v0)
    srlv	$a0,$a3,$a0
    addu	$v1,$v1,$a0
    xor	$v0,$v0,$v1
    jr	$ra
    sltu	$v0,$zero,$v0
.end StoreNOTEQUAL_W

# Function: StoreGEQUAL_W
# Declared: Line 323 (Source lines: 331-331)
# Address: 0x0d9d1aa0 - 0x0d9d1af8 (Size: 88 bytes, Frame: 0)
.ent StoreGEQUAL_W
StoreGEQUAL_W:
    # Line 331
    lw	$v0,0($a0)
    lw	$a5,3664($v0)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a0
    lw	$a2,3660($v0)
    sll	$a0,$a0,0x2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a0
    lw	$a0,31316($v0)
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    lw	$v0,31308($v0)
    subu	$v1,$v1,$a1
    srlv	$a0,$a3,$a0
    lw	$v1,0($v1)
    addu	$v0,$v0,$a0
    sltu	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreGEQUAL_W

# Function: StoreGEQUAL_W_s
# Declared: Line 334 (Source lines: 342-342)
# Address: 0x0d9d1b00 - 0x0d9d1b58 (Size: 88 bytes, Frame: 0)
.ent StoreGEQUAL_W_s
StoreGEQUAL_W_s:
    # Line 342
    lw	$v0,0($a0)
    lw	$a5,3664($v0)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$v1,16($a0)
    mflo	$a0
    lw	$a2,3660($v0)
    sll	$a0,$a0,0x2
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a0
    lw	$a0,31316($v0)
    addu	$v1,$v1,$a1
    sll	$a1,$a2,0x2
    lw	$v0,31308($v0)
    subu	$v1,$v1,$a1
    srlv	$a0,$a3,$a0
    lw	$v1,0($v1)
    addu	$v0,$v0,$a0
    slt	$v0,$v0,$v1
    jr	$ra
    xori	$v0,$v0,0x1
.end StoreGEQUAL_W_s

# Function: StoreALWAYS_W
# Declared: Line 346 (Source lines: 349-349)
# Address: 0x0d9d1b60 - 0x0d9d1b68 (Size: 8 bytes, Frame: 0)
.ent StoreALWAYS_W
StoreALWAYS_W:
    # Line 349
    jr	$ra
    li	$v0,1
.end StoreALWAYS_W

# Function: Clear
# Declared: Line 356 (Source lines: 357-523)
# Address: 0x0d9d1b70 - 0x0d9d22b4 (Size: 1860 bytes, Frame: 48)
.ent Clear
Clear:
    # Line 362
    lw	$a6,76($a0)
    # Line 357
    addiu	$sp,$sp,-48
    # Line 362
    dsll32	$a6,$a6,0x0
    # Line 357
    sd	$s2,24($sp)
    # Line 362
    dsrl32	$a6,$a6,0x0
    # Line 358
    lw	$s2,0($a0)
    # Line 362
    dmtc1	$a6,$f0
    ldc1	$f4,1640($s2)
    cvt.d.l	$f0,$f0
    mul.d	$f0,$f0,$f4
    lbu	$v0,1636($s2)
    trunc.l.d	$f0,$f0
    # Line 357
    lui	$a5,0x8
    addiu	$a5,$a5,-3556
    # Line 362
    dmfc1	$a4,$f0
    sd	$ra,16($sp)
    # Line 357
    addu	$at,$t9,$a5
    # Line 362
    beqz	$v0,.L0d9d1f14
    sll	$a4,$a4,0x0
    # Line 371
    lw	$a6,29708($s2)
    # Line 369
    lw	$a5,29700($s2)
    # Line 373
    subu	$a6,$a6,$a5
    # Line 372
    lw	$ra,29712($s2)
    # Line 373
    beqz	$a6,.L0d9d1f14
    # Line 370
    lw	$a7,29704($s2)
    # Line 373
    subu	$t2,$ra,$a7
    beqz	$t2,.L0d9d1f14
    nop
    # Line 378
    lw	$t1,100($a0)
    lui	$t0,0xff00
    bne	$t1,$t0,.L0d9d1f24
    ldc1	$f1,_lit8_3ff0000000000000
    c.eq.d	$f4,$f1
    sd	$s0,8($sp)
    bc1t	.L0d9d1c10
    sd	$s1,0($sp)
    # Line 383
    li	$t3,1
    sb	$t3,96($a0)
    b	.L0d9d1c14
    li	$a3,1
.L0d9d1c10:
    lbu	$a3,96($a0)
.L0d9d1c14:
    # Line 393
    lw	$t0,88($a0)
    beqz	$a3,.L0d9d1f60
    srlv	$t0,$a4,$t0
    # Line 398
    lw	$a4,92($a0)
    # Line 411
    sb	$zero,96($a0)
    # Line 398
    nor	$a4,$a4,$zero
    sw	$a4,80($a0)
    # Line 414
    lw	$t8,3664($s2)
    lw	$s0,28($a0)
    subu	$t8,$a7,$t8
    mult	$s0,$t8
    lw	$t3,3660($s2)
    # Line 416
    slt	$t1,$a7,$ra
    # Line 414
    lw	$a3,16($a0)
    sll	$t3,$t3,0x2
    mflo	$t8
    # Line 408
    addu	$a4,$a4,$t0
    # Line 414
    sll	$t8,$t8,0x2
    addu	$a3,$a3,$t8
    sll	$t8,$a5,0x2
    # Line 416
    subu	$s0,$s0,$a6
    # Line 414
    addu	$a3,$a3,$t8
    sd	$t2,32($sp)
    # Line 416
    beqz	$t1,.L0d9d1ee8
    # Line 414
    subu	$a3,$a3,$t3
    # Line 416
    li	$a5,-1
    sll	$t8,$s0,0x2
    andi	$t0,$a6,0x3
    sra	$t9,$a6,0x5
    addiu	$t3,$t0,-1
    sra	$s1,$a6,0x2
    addiu	$t1,$t9,-1
    andi	$s1,$s1,0x7
    b	.L0d9d1e44
    addiu	$t2,$s1,-1
.L0d9d1ca0:
    sra	$v0,$a6,0x1
.L0d9d1ca4:
    beqz	$v0,.L0d9d1dbc
    nop
    nop
.L0d9d1cb0:
    # Line 432
    addiu	$a3,$a3,256
    # Line 431
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    sw	$a4,-12($a3)
    sw	$a4,-16($a3)
    # Line 430
    sw	$a4,-20($a3)
    sw	$a4,-24($a3)
    sw	$a4,-28($a3)
    sw	$a4,-32($a3)
    # Line 429
    sw	$a4,-36($a3)
    sw	$a4,-40($a3)
    sw	$a4,-44($a3)
    sw	$a4,-48($a3)
    # Line 428
    sw	$a4,-52($a3)
    sw	$a4,-56($a3)
    sw	$a4,-60($a3)
    sw	$a4,-64($a3)
    # Line 427
    sw	$a4,-68($a3)
    sw	$a4,-72($a3)
    sw	$a4,-76($a3)
    sw	$a4,-80($a3)
    # Line 426
    sw	$a4,-84($a3)
    sw	$a4,-88($a3)
    sw	$a4,-92($a3)
    sw	$a4,-96($a3)
    # Line 425
    sw	$a4,-100($a3)
    sw	$a4,-104($a3)
    sw	$a4,-108($a3)
    sw	$a4,-112($a3)
    # Line 424
    sw	$a4,-116($a3)
    sw	$a4,-120($a3)
    sw	$a4,-124($a3)
    sw	$a4,-128($a3)
    # Line 431
    sw	$a4,-132($a3)
    sw	$a4,-136($a3)
    sw	$a4,-140($a3)
    sw	$a4,-144($a3)
    # Line 430
    sw	$a4,-148($a3)
    sw	$a4,-152($a3)
    sw	$a4,-156($a3)
    sw	$a4,-160($a3)
    # Line 429
    sw	$a4,-164($a3)
    sw	$a4,-168($a3)
    sw	$a4,-172($a3)
    sw	$a4,-176($a3)
    # Line 428
    sw	$a4,-180($a3)
    sw	$a4,-184($a3)
    sw	$a4,-188($a3)
    sw	$a4,-192($a3)
    # Line 427
    sw	$a4,-196($a3)
    sw	$a4,-200($a3)
    sw	$a4,-204($a3)
    sw	$a4,-208($a3)
    # Line 426
    sw	$a4,-212($a3)
    sw	$a4,-216($a3)
    sw	$a4,-220($a3)
    sw	$a4,-224($a3)
    # Line 425
    sw	$a4,-228($a3)
    sw	$a4,-232($a3)
    sw	$a4,-236($a3)
    sw	$a4,-240($a3)
    # Line 424
    sw	$a4,-244($a3)
    sw	$a4,-248($a3)
    # Line 423
    addiu	$a0,$a0,-2
    # Line 424
    sw	$a4,-252($a3)
    # Line 423
    bne	$a0,$a5,.L0d9d1cb0
    # Line 424
    sw	$a4,-256($a3)
.L0d9d1dbc:
    # Line 421
    addiu	$a7,$a7,1
    # Line 435
    bltz	$t2,.L0d9d1dec
    move	$a0,$t2
    nop
    nop
.L0d9d1dd0:
    # Line 437
    addiu	$a3,$a3,16
    # Line 436
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    # Line 435
    addiu	$a0,$a0,-1
    # Line 436
    sw	$a4,-12($a3)
    # Line 435
    bne	$a0,$a5,.L0d9d1dd0
    # Line 436
    sw	$a4,-16($a3)
.L0d9d1dec:
    # Line 440
    bltz	$t3,.L0d9d1e3c
    move	$a0,$t3
    sra	$v1,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0d9d1e14
.L0d9d1e00:
    addiu	$a6,$a6,-1
    addiu	$a0,$a0,-1
    # Line 441
    sw	$a4,0($a3)
    bnez	$a6,.L0d9d1e00
    addiu	$a3,$a3,4
.L0d9d1e14:
    beqz	$v1,.L0d9d1e3c
    nop
    nop
.L0d9d1e20:
    sw	$a4,0($a3)
    sw	$a4,4($a3)
    # Line 440
    addiu	$a0,$a0,-4
    # Line 441
    sw	$a4,8($a3)
    sw	$a4,12($a3)
    # Line 440
    bne	$a0,$a5,.L0d9d1e20
    # Line 441
    addiu	$a3,$a3,16
.L0d9d1e3c:
    # Line 421
    beq	$a7,$ra,.L0d9d1ee8
    # Line 443
    addu	$a3,$t8,$a3
.L0d9d1e44:
    # Line 423
    bltz	$t1,.L0d9d1dbc
    move	$a0,$t1
    move	$a6,$t9
    andi	$a1,$t9,0x1
    beqz	$a1,.L0d9d1ca4
    sra	$v0,$a6,0x1
    # Line 432
    addiu	$a3,$a3,128
    # Line 431
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    sw	$a4,-12($a3)
    sw	$a4,-16($a3)
    # Line 430
    sw	$a4,-20($a3)
    sw	$a4,-24($a3)
    sw	$a4,-28($a3)
    sw	$a4,-32($a3)
    # Line 429
    sw	$a4,-36($a3)
    sw	$a4,-40($a3)
    sw	$a4,-44($a3)
    sw	$a4,-48($a3)
    # Line 428
    sw	$a4,-52($a3)
    sw	$a4,-56($a3)
    sw	$a4,-60($a3)
    sw	$a4,-64($a3)
    # Line 427
    sw	$a4,-68($a3)
    sw	$a4,-72($a3)
    sw	$a4,-76($a3)
    sw	$a4,-80($a3)
    # Line 426
    sw	$a4,-84($a3)
    sw	$a4,-88($a3)
    sw	$a4,-92($a3)
    sw	$a4,-96($a3)
    # Line 425
    sw	$a4,-100($a3)
    sw	$a4,-104($a3)
    sw	$a4,-108($a3)
    sw	$a4,-112($a3)
    # Line 424
    sw	$a4,-116($a3)
    sw	$a4,-120($a3)
    sw	$a4,-124($a3)
    # Line 423
    addiu	$a0,$t1,-1
    b	.L0d9d1ca0
    # Line 424
    sw	$a4,-128($a3)
.L0d9d1ee8:
    # Line 523
    ld	$s0,8($sp)
    # Line 522
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a2,11756($s2)
    # Line 523
    ld	$ra,16($sp)
    ld	$s1,0($sp)
    # Line 522
    ori	$a2,$a2,0x80
    sw	$a2,11756($s2)
    # Line 523
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d1f14:
    ld	$ra,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d1f24:
    # Line 383
    lui	$t0,0x100
    sd	$s0,8($sp)
    bne	$t1,$t0,.L0d9d1f50
    sd	$s1,0($sp)
    dmtc1	$zero,$f2
    c.eq.d $f4,$f2
    bc1t .L0d9d2050
    # Line 389
    li	$t3,1
    sb	$t3,96($a0)
    b	.L0d9d1c14
    li	$a3,1
.L0d9d1f50:
    beqz	$t1,.L0d9d22a8
    # Line 393
    li	$a1,1
    b	.L0d9d1c14
    lbu	$a3,96($a0)
.L0d9d1f60:
    # Line 478
    mult	$a6,$t2
    # Line 454
    lw	$a4,80($a0)
    addu	$a4,$a4,$t1
    # Line 473
    srl	$t9,$a4,0x18
    # Line 478
    mflo	$s1
    # Line 473
    andi	$t9,$t9,0x7f
    # Line 478
    sra	$s1,$s1,0x7
    mult	$s1,$t9
    mtc1	$a6,$f5
    mflo	$t8
    mtc1	$t8,$f4
    cvt.d.w	$f5,$f5
    cvt.d.w	$f4,$f4
    div.d	$f4,$f4,$f5
    # Line 479
    addu	$s1,$s1,$t8
    mtc1	$s1,$f3
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f5
    # Line 478
    trunc.w.d	$f4,$f4
    # Line 479
    trunc.w.d	$f3,$f3
    # Line 478
    mfc1	$s0,$f4
    # Line 479
    teq	$a6,$zero,0x7
    mfc1	$s1,$f3
    # Line 482
    addiu	$t8,$ra,-1
    # Line 478
    addu	$s0,$a7,$s0
    # Line 479
    slt	$t9,$s0,$ra
    addu	$s1,$a7,$s1
    movz	$s0,$t8,$t9
    # Line 482
    slt	$t3,$s1,$ra
    movz	$s1,$t8,$t3
    # Line 478
    teq	$a6,$zero,0x7
    # Line 454
    sw	$a4,80($a0)
    # Line 483
    beq	$s0,$s1,.L0d9d1ee8
    # Line 464
    addu	$a4,$a4,$t0
    # Line 487
    lw	$v0,3664($s2)
    lw	$ra,28($a0)
    subu	$v0,$s0,$v0
    mult	$ra,$v0
    # Line 489
    slt	$t0,$s0,$s1
    # Line 487
    lw	$a3,16($a0)
    mflo	$t1
    # Line 489
    subu	$ra,$ra,$a6
    # Line 487
    sll	$t1,$t1,0x2
    lw	$a7,3660($s2)
    addu	$a3,$a3,$t1
    sll	$t1,$a5,0x2
    addu	$a3,$a3,$t1
    sll	$a7,$a7,0x2
    # Line 489
    beqz	$t0,.L0d9d1ee8
    # Line 487
    subu	$a3,$a3,$a7
    # Line 489
    li	$a5,-1
    sll	$t8,$ra,0x2
    andi	$t0,$a6,0x3
    sra	$t9,$a6,0x5
    addiu	$t3,$t0,-1
    sra	$a7,$a6,0x2
    addiu	$t1,$t9,-1
    andi	$a7,$a7,0x7
    b	.L0d9d2204
    addiu	$t2,$a7,-1
.L0d9d2050:
    b	.L0d9d1c14
    # Line 389
    lbu	$a3,96($a0)
    nop
    nop
.L0d9d2060:
    beqz	$ra,.L0d9d217c
    nop
    nop
    nop
.L0d9d2070:
    # Line 505
    addiu	$a3,$a3,256
    # Line 504
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    sw	$a4,-12($a3)
    sw	$a4,-16($a3)
    # Line 503
    sw	$a4,-20($a3)
    sw	$a4,-24($a3)
    sw	$a4,-28($a3)
    sw	$a4,-32($a3)
    # Line 502
    sw	$a4,-36($a3)
    sw	$a4,-40($a3)
    sw	$a4,-44($a3)
    sw	$a4,-48($a3)
    # Line 501
    sw	$a4,-52($a3)
    sw	$a4,-56($a3)
    sw	$a4,-60($a3)
    sw	$a4,-64($a3)
    # Line 500
    sw	$a4,-68($a3)
    sw	$a4,-72($a3)
    sw	$a4,-76($a3)
    sw	$a4,-80($a3)
    # Line 499
    sw	$a4,-84($a3)
    sw	$a4,-88($a3)
    sw	$a4,-92($a3)
    sw	$a4,-96($a3)
    # Line 498
    sw	$a4,-100($a3)
    sw	$a4,-104($a3)
    sw	$a4,-108($a3)
    sw	$a4,-112($a3)
    # Line 497
    sw	$a4,-116($a3)
    sw	$a4,-120($a3)
    sw	$a4,-124($a3)
    sw	$a4,-128($a3)
    # Line 504
    sw	$a4,-132($a3)
    sw	$a4,-136($a3)
    sw	$a4,-140($a3)
    sw	$a4,-144($a3)
    # Line 503
    sw	$a4,-148($a3)
    sw	$a4,-152($a3)
    sw	$a4,-156($a3)
    sw	$a4,-160($a3)
    # Line 502
    sw	$a4,-164($a3)
    sw	$a4,-168($a3)
    sw	$a4,-172($a3)
    sw	$a4,-176($a3)
    # Line 501
    sw	$a4,-180($a3)
    sw	$a4,-184($a3)
    sw	$a4,-188($a3)
    sw	$a4,-192($a3)
    # Line 500
    sw	$a4,-196($a3)
    sw	$a4,-200($a3)
    sw	$a4,-204($a3)
    sw	$a4,-208($a3)
    # Line 499
    sw	$a4,-212($a3)
    sw	$a4,-216($a3)
    sw	$a4,-220($a3)
    sw	$a4,-224($a3)
    # Line 498
    sw	$a4,-228($a3)
    sw	$a4,-232($a3)
    sw	$a4,-236($a3)
    sw	$a4,-240($a3)
    # Line 497
    sw	$a4,-244($a3)
    sw	$a4,-248($a3)
    # Line 496
    addiu	$a0,$a0,-2
    # Line 497
    sw	$a4,-252($a3)
    # Line 496
    bne	$a0,$a5,.L0d9d2070
    # Line 497
    sw	$a4,-256($a3)
.L0d9d217c:
    # Line 494
    addiu	$s0,$s0,1
    # Line 508
    bltz	$t2,.L0d9d21ac
    move	$a0,$t2
    nop
    nop
.L0d9d2190:
    # Line 510
    addiu	$a3,$a3,16
    # Line 509
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    # Line 508
    addiu	$a0,$a0,-1
    # Line 509
    sw	$a4,-12($a3)
    # Line 508
    bne	$a0,$a5,.L0d9d2190
    # Line 509
    sw	$a4,-16($a3)
.L0d9d21ac:
    # Line 513
    bltz	$t3,.L0d9d21fc
    move	$a0,$t3
    sra	$v0,$t0,0x2
    andi	$a6,$t0,0x3
    beqz	$a6,.L0d9d21d4
.L0d9d21c0:
    addiu	$a6,$a6,-1
    addiu	$a0,$a0,-1
    # Line 514
    sw	$a4,0($a3)
    bnez	$a6,.L0d9d21c0
    addiu	$a3,$a3,4
.L0d9d21d4:
    beqz	$v0,.L0d9d21fc
    nop
    nop
.L0d9d21e0:
    sw	$a4,0($a3)
    sw	$a4,4($a3)
    # Line 513
    addiu	$a0,$a0,-4
    # Line 514
    sw	$a4,8($a3)
    sw	$a4,12($a3)
    # Line 513
    bne	$a0,$a5,.L0d9d21e0
    # Line 514
    addiu	$a3,$a3,16
.L0d9d21fc:
    # Line 494
    beq	$s0,$s1,.L0d9d1ee8
    # Line 516
    addu	$a3,$t8,$a3
.L0d9d2204:
    # Line 496
    bltz	$t1,.L0d9d217c
    move	$a0,$t1
    sra	$ra,$t9,0x1
    andi	$v1,$t9,0x1
    beqz	$v1,.L0d9d2060
    nop
    # Line 505
    addiu	$a3,$a3,128
    # Line 504
    sw	$a4,-4($a3)
    sw	$a4,-8($a3)
    sw	$a4,-12($a3)
    sw	$a4,-16($a3)
    # Line 503
    sw	$a4,-20($a3)
    sw	$a4,-24($a3)
    sw	$a4,-28($a3)
    sw	$a4,-32($a3)
    # Line 502
    sw	$a4,-36($a3)
    sw	$a4,-40($a3)
    sw	$a4,-44($a3)
    sw	$a4,-48($a3)
    # Line 501
    sw	$a4,-52($a3)
    sw	$a4,-56($a3)
    sw	$a4,-60($a3)
    sw	$a4,-64($a3)
    # Line 500
    sw	$a4,-68($a3)
    sw	$a4,-72($a3)
    sw	$a4,-76($a3)
    sw	$a4,-80($a3)
    # Line 499
    sw	$a4,-84($a3)
    sw	$a4,-88($a3)
    sw	$a4,-92($a3)
    sw	$a4,-96($a3)
    # Line 498
    sw	$a4,-100($a3)
    sw	$a4,-104($a3)
    sw	$a4,-108($a3)
    sw	$a4,-112($a3)
    # Line 497
    sw	$a4,-116($a3)
    sw	$a4,-120($a3)
    sw	$a4,-124($a3)
    # Line 496
    addiu	$a0,$t1,-1
    b	.L0d9d2060
    # Line 497
    sw	$a4,-128($a3)
.L0d9d22a8:
    # Line 393
    sb	$a1,96($a0)
    b	.L0d9d1c14
    li	$a3,1
.end Clear

# Function: Fix_zbuffer
# Declared: Line 531 (Source lines: 532-596)
# Address: 0x0d9d22c0 - 0x0d9d2450 (Size: 400 bytes, Frame: 16)
.ent Fix_zbuffer
Fix_zbuffer:
    # Line 544
    lw	$t8,29712($a0)
    # Line 541
    lw	$a7,29700($a0)
    # Line 543
    lw	$t3,29708($a0)
    # Line 542
    lw	$t2,29704($a0)
    # Line 535
    lw	$a5,31328($a0)
    # Line 532
    lui	$v0,0x8
    # Line 545
    subu	$t3,$t3,$a7
    # Line 532
    addiu	$sp,$sp,-16
    # Line 534
    lw	$t0,31320($a0)
    # Line 532
    addiu	$v0,$v0,-5428
    # Line 533
    lw	$a6,31308($a0)
    # Line 545
    beqz	$t3,.L0d9d2398
    # Line 532
    addu	$at,$t9,$v0
    # Line 545
    subu	$t9,$t8,$t2
    beqz	$t9,.L0d9d2398
    # Line 575
    lui	$v0,0xff00
    bne	$a5,$v0,.L0d9d2328
    # Line 577
    lui	$v1,0x100
    # Line 575
    ldc1	$f0,1640($a0)
    ldc1	$f1,_lit8_3ff0000000000000
    c.eq.d	$f0,$f1
    bc1f	.L0d9d2328
    # Line 577
    lui	$v1,0x100
    # Line 576
    b	.L0d9d2344
    or	$t1,$a2,$t0
    # Line 577
    lui	$v1,0x100
.L0d9d2328:
    bne	$a5,$v1,.L0d9d2398
    nop
    ldc1	$f2,1640($a0)
    dmtc1	$zero,$f3
    c.eq.d $f2,$f3
    bc1f .L0d9d2398
    # Line 578
    move	$t1,$a2
.L0d9d2344:
    # Line 584
    lw	$a4,0($a1)
    lw	$v0,3664($a4)
    lw	$a5,28($a1)
    subu	$v0,$t2,$v0
    mult	$a5,$v0
    lw	$a4,3660($a4)
    lw	$a0,16($a1)
    sll	$a4,$a4,0x2
    mflo	$v0
    # Line 586
    slt	$a3,$t2,$t8
    # Line 584
    sll	$v0,$v0,0x2
    addu	$a0,$a0,$v0
    sll	$v0,$a7,0x2
    # Line 586
    subu	$a5,$a5,$t3
    # Line 584
    addu	$a0,$a0,$v0
    sd	$t9,0($sp)
    # Line 586
    beqz	$a3,.L0d9d2398
    # Line 584
    subu	$a0,$a0,$a4
    # Line 586
    sll	$t9,$a5,0x2
    b	.L0d9d2440
    nor	$a7,$t0,$zero
.L0d9d2398:
    # Line 580
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d23a0:
    # Line 593
    sw	$t1,0($a0)
.L0d9d23a4:
    # Line 589
    addiu	$a0,$a0,4
.L0d9d23a8:
    bnez	$v1,.L0d9d23fc
.L0d9d23ac:
    andi	$a1,$t3,0x1
    sra	$v1,$t3,0x1
    # Line 588
    beq	$t2,$t8,.L0d9d2398
    # Line 596
    addu	$a0,$t9,$a0
    # Line 588
    addiu	$t2,$t2,1
.L0d9d23c0:
    beqz	$a1,.L0d9d23a8
    # Line 589
    move	$a5,$t3
    lw	$a1,0($a0)
    and	$a3,$a1,$a7
    addiu	$a5,$a5,-1
    # Line 591
    and	$a4,$a1,$t0
    # Line 589
    bne	$a6,$a3,.L0d9d23a0
    # Line 591
    or	$a4,$a2,$a4
    b	.L0d9d23a4
    sw	$a4,0($a0)
    nop
    nop
.L0d9d23f0:
    # Line 593
    sw	$t1,0($a0)
.L0d9d23f4:
    # Line 589
    beqz	$a5,.L0d9d23ac
    addiu	$a0,$a0,4
.L0d9d23fc:
    lw	$a1,0($a0)
    and	$v0,$a1,$a7
    addiu	$a5,$a5,-2
    # Line 591
    and	$v1,$a1,$t0
    # Line 589
    bne	$a6,$v0,.L0d9d241c
    # Line 591
    or	$v1,$a2,$v1
    b	.L0d9d2420
    sw	$v1,0($a0)
.L0d9d241c:
    # Line 593
    sw	$t1,0($a0)
.L0d9d2420:
    # Line 589
    lw	$a1,4($a0)
    and	$a3,$a1,$a7
    addiu	$a0,$a0,4
    # Line 591
    and	$a4,$a1,$t0
    # Line 589
    bne	$a6,$a3,.L0d9d23f0
    # Line 591
    or	$a4,$a2,$a4
    b	.L0d9d23f4
    sw	$a4,0($a0)
.L0d9d2440:
    andi	$a1,$t3,0x1
    sra	$v1,$t3,0x1
    b	.L0d9d23c0
    # Line 588
    addiu	$t2,$t2,1
.end Fix_zbuffer

# Function: Pick
# Declared: Line 642 (Source lines: 643-646)
# Address: 0x0d9d2450 - 0x0d9d2478 (Size: 40 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 643
    lui	$v1,0x8
    addiu	$v1,$v1,-5828
    addu	$at,$t9,$v1
    # Line 644
    la	$v0,sub_0da40000
    sll	$v1,$a2,0x2
    addiu	$v0,$v0,31064
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 646
    jr	$ra
    # Line 644
    sw	$v0,116($a1)
.end Pick

# Function: Resize
# Declared: Line 650 (Source lines: 651-657)
# Address: 0x0d9d2480 - 0x0d9d24c8 (Size: 72 bytes, Frame: 32)
.ent Resize
Resize:
    # Line 651
    lui	$at,0x8
    addiu	$sp,$sp,-32
    addiu	$at,$at,-5876
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 654
    # lw $t9, -26708($gp) # &__glResizeBuffer
    # Line 651
    sd	$s8,8($sp)
    # Line 654
    nop
    # Line 651
    sd	$ra,0($sp)
    # Line 654
    jal	__glResizeBuffer
    # Line 651
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 657
    ld	$gp,16($sp)
    # Line 656
    li	$v0,1
    sb	$v0,96($s8)
    # Line 657
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end Resize

# Function: MakeCurrent
# Declared: Line 661 (Source lines: 663-695)
# Address: 0x0d9d24d0 - 0x0d9d2598 (Size: 200 bytes, Frame: 48)
.ent MakeCurrent
MakeCurrent:
    # Line 663
    addiu	$sp,$sp,-48
    lui	$at,0x8
    sd	$a2,32($sp)
    addiu	$at,$at,-5956
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 667
    # lw $t9, -26716($gp) # &__glMakeCurrentBuffer
    # Line 663
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$s3,16($sp)
    # Line 667
    nop
    # Line 663
    sd	$ra,8($sp)
    # Line 667
    jal	__glMakeCurrentBuffer
    # Line 663
    move	$s3,$a0
    # Line 667
    lbu	$v0,46($s0)
    ld	$ra,8($sp)
    # Line 695
    ld	$gp,24($sp)
    # Line 679
    lui	$a2,0xff00
    # Line 667
    beqz	$v0,.L0d9d2590
    ld	$a1,32($sp)
    # Line 670
    lw	$a7,20($s0)
    sw	$a7,72($s3)
    # Line 671
    lw	$a6,24($s0)
    sw	$a6,76($s3)
    # Line 672
    lw	$a2,28($s0)
    sw	$a2,80($s3)
    # Line 673
    lw	$a5,32($s0)
    sw	$a5,88($s3)
    # Line 674
    lw	$a4,36($s0)
    sw	$a4,92($s3)
    # Line 675
    lbu	$a3,44($s0)
    sb	$a3,96($s3)
    # Line 676
    lw	$a0,40($s0)
    sw	$a0,100($s3)
    # Line 677
    lbu	$v1,45($s0)
    sb	$v1,104($s3)
.L0d9d2560:
    # Line 679
    lw	$t0,1792($a1)
    andi	$t0,$t0,0x4000
    beqz	$t0,.L0d9d2580
    ld	$s0,0($sp)
    # Line 687
    sw	$a2,84($s3)
    # Line 695
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d2580:
    ld	$s3,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d2590:
    b	.L0d9d2560
    # Line 679
    sw	$a2,80($s3)
.end MakeCurrent

# Function: LoseCurrent
# Declared: Line 697 (Source lines: 698-727)
# Address: 0x0d9d25a0 - 0x0d9d2664 (Size: 196 bytes, Frame: 48)
.ent LoseCurrent
LoseCurrent:
    # Line 700
    lw	$v0,0($a0)
    # Line 698
    lui	$at,0x8
    # Line 700
    lw	$a3,68($a0)
    # Line 698
    addiu	$sp,$sp,-48
    addiu	$at,$at,-6164
    sd	$gp,24($sp)
    # Line 700
    beqz	$v0,.L0d9d2658
    # Line 698
    addu	$gp,$t9,$at
    # Line 704
    lw	$v0,1792($a1)
    sd	$a3,16($sp)
    andi	$v0,$v0,0x4000
    sd	$a0,8($sp)
    beqz	$v0,.L0d9d25ec
    sd	$ra,32($sp)
    # Line 712
    # lw $t9, -23436($gp) # &__glReadjustZCounts
    sd	$a1,0($sp)
    jal	__glReadjustZCounts
    ld	$a0,0($sp)
    ld	$a1,0($sp)
.L0d9d25ec:
    # Line 715
    # lw $t9, -26712($gp) # &__glLoseCurrentBuffer
    jal	__glLoseCurrentBuffer
    ld	$a0,8($sp)
    # Line 727
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 717
    ld	$v1,8($sp)
    ld	$a0,16($sp)
    lw	$a7,72($v1)
    sw	$a7,20($a0)
    # Line 718
    lw	$a6,76($v1)
    sw	$a6,24($a0)
    # Line 719
    lw	$a5,80($v1)
    sw	$a5,28($a0)
    # Line 720
    lw	$a4,88($v1)
    sw	$a4,32($a0)
    # Line 721
    lw	$a3,92($v1)
    sw	$a3,36($a0)
    # Line 722
    lbu	$a2,96($v1)
    sb	$a2,44($a0)
    # Line 723
    lw	$a1,100($v1)
    sw	$a1,40($a0)
    # Line 724
    lbu	$v1,104($v1)
    # Line 726
    li	$a1,1
    sb	$a1,46($a0)
    # Line 727
    addiu	$sp,$sp,48
    jr	$ra
    # Line 724
    sb	$v1,45($a0)
.L0d9d2658:
    # Line 727
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end LoseCurrent

# Function: __glInitDepth24
# Declared: Line 732 (Source lines: 733-756)
# Address: 0x0d9d2670 - 0x0d9d2758 (Size: 232 bytes, Frame: 32)
.globl __glInitDepth24
.ent __glInitDepth24
__glInitDepth24:
    # Line 733
    lui	$at,0x8
    addiu	$sp,$sp,-32
    addiu	$at,$at,-6372
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 734
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 733
    sd	$s8,8($sp)
    # Line 734
    nop
    # Line 733
    sd	$ra,0($sp)
    # Line 734
    jal	__glInitBuffer
    # Line 733
    move	$s8,$a0
    # Line 747
    la	$a5,sub_0d9d0000
    # Line 746
    la	$a4,sub_0d9d0000
    # Line 745
    la	$a3,sub_0d9d0000
    # Line 744
    la	$a2,sub_0d9d0000
    # Line 743
    la	$a1,sub_0d9d0000
    # Line 741
    la	$a0,sub_0d9d0000
    # Line 740
    la	$v1,sub_0d9d0000
    # Line 739
    la	$v0,sub_0d9d0000
    # Line 756
    ld	$gp,16($sp)
    # Line 755
    li	$t8,-1
    sw	$t8,72($s8)
    # Line 753
    sb	$zero,96($s8)
    # Line 751
    lui	$t3,0xff00
    # Line 752
    sw	$t3,100($s8)
    # Line 751
    sw	$t3,80($s8)
    # Line 750
    li	$t2,7
    sw	$t2,88($s8)
    # Line 737
    li	$t1,24
    sw	$t1,12($s8)
    # Line 736
    li	$t0,4
    sw	$t0,24($s8)
    # Line 754
    lui	$a7,0xff
    # Line 749
    lui	$a6,0x7fff
    # Line 754
    ori	$a7,$a7,0xffff
    sw	$a7,92($s8)
    # Line 749
    ori	$a6,$a6,0xff80
    sw	$a6,76($s8)
    # Line 747
    addiu	$a5,$a5,4560
    sw	$a5,128($s8)
    # Line 746
    addiu	$a4,$a4,5952
    sw	$a4,124($s8)
    # Line 745
    addiu	$a3,$a3,7024
    sw	$a3,120($s8)
    # Line 744
    addiu	$a2,$a2,9296
    sw	$a2,112($s8)
    # Line 743
    addiu	$a1,$a1,8896
    sw	$a1,108($s8)
    # Line 741
    addiu	$a0,$a0,9632
    sw	$a0,48($s8)
    ld	$ra,0($sp)
    # Line 740
    addiu	$v1,$v1,9424
    sw	$v1,44($s8)
    # Line 739
    addiu	$v0,$v0,9344
    sw	$v0,56($s8)
    # Line 756
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitDepth24

# Function: __glInitDepth32
# Declared: Line 759 (Source lines: 760-785)
# Address: 0x0d9d2760 - 0x0d9d2844 (Size: 228 bytes, Frame: 32)
.globl __glInitDepth32
.ent __glInitDepth32
__glInitDepth32:
    # Line 760
    lui	$at,0x8
    addiu	$sp,$sp,-32
    addiu	$at,$at,-6612
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 761
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 760
    sd	$s8,8($sp)
    # Line 761
    nop
    # Line 760
    sd	$ra,0($sp)
    # Line 761
    jal	__glInitBuffer
    # Line 760
    move	$s8,$a0
    # Line 763
    la	$a7,__glNop
    # Line 775
    la	$a5,sub_0d9d0000
    # Line 774
    la	$a4,sub_0d9d0000
    # Line 773
    la	$a3,sub_0d9d0000
    # Line 772
    la	$a2,sub_0d9d0000
    # Line 771
    la	$a1,sub_0d9d0000
    # Line 768
    la	$a0,sub_0d9d0000
    # Line 767
    la	$v1,sub_0d9d0000
    # Line 766
    la	$v0,sub_0d9d0000
    # Line 785
    ld	$gp,16($sp)
    # Line 780
    li	$t2,-1
    # Line 784
    sw	$t2,72($s8)
    # Line 782
    li	$t3,1
    sb	$t3,96($s8)
    # Line 781
    sw	$zero,100($s8)
    # Line 780
    sw	$t2,92($s8)
    # Line 779
    sw	$zero,80($s8)
    # Line 778
    sw	$zero,88($s8)
    # Line 764
    li	$t1,32
    sw	$t1,12($s8)
    # Line 763
    li	$t0,4
    sw	$t0,24($s8)
    # Line 777
    lui	$a6,0x7fff
    # Line 783
    sw	$a7,108($s8)
    # Line 777
    ori	$a6,$a6,0xff80
    sw	$a6,76($s8)
    # Line 775
    addiu	$a5,$a5,4816
    sw	$a5,116($s8)
    # Line 774
    addiu	$a4,$a4,4752
    sw	$a4,128($s8)
    # Line 773
    addiu	$a3,$a3,5952
    sw	$a3,124($s8)
    # Line 772
    addiu	$a2,$a2,7024
    sw	$a2,120($s8)
    # Line 771
    addiu	$a1,$a1,9296
    sw	$a1,112($s8)
    # Line 768
    addiu	$a0,$a0,9632
    sw	$a0,48($s8)
    ld	$ra,0($sp)
    # Line 767
    addiu	$v1,$v1,9424
    sw	$v1,44($s8)
    # Line 766
    addiu	$v0,$v0,9344
    sw	$v0,56($s8)
    # Line 785
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitDepth32

# Function: __glInitDepth
# Declared: Line 787 (Source lines: 788-802)
# Address: 0x0d9d2850 - 0x0d9d28fc (Size: 172 bytes, Frame: 32)
.globl __glInitDepth
.ent __glInitDepth
__glInitDepth:
    # Line 788
    addiu	$sp,$sp,-32
    lui	$v0,0x8
    sd	$s0,0($sp)
    addiu	$v0,$v0,-6852
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 791
    # lw $t9, -22904($gp) # &getenv
    la	$at,sub_0da40000
    # Line 788
    move	$s0,$a1
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    # Line 791
    jal	getenv
    addiu	$a0,$at,9080
    bnez	$v0,.L0d9d28dc
    # Line 792
    nop	# was lw $t9, -22904($gp) # &getenv
    # Line 794
    lw	$a0,3244($s0)
.L0d9d2894:
    slti	$v1,$a0,25
    beqz	$v1,.L0d9d28b4
    # Line 798
    nop	# was lw $t9, -26332($gp) # &__glInitDepth24
    move	$a0,$s8
    bal __glInitDepth24
    move	$a1,$s0
    b	.L0d9d28c4
    nop
.L0d9d28b4:
    # Line 800
    # lw $t9, -26328($gp) # &__glInitDepth32
    move	$a0,$s8
    bal __glInitDepth32
    move	$a1,$s0
.L0d9d28c4:
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s8,16($sp)
    # Line 802
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d28dc:
    # Line 792
    la	$a0,sub_0da40000
    jal	__glInitDepth32
    addiu	$a0,$a0,9080
    # lw $t9, -22792($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    b	.L0d9d2894
    move	$a0,$v0
.end __glInitDepth

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

