# Source: ../soft/so_clip.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_clip.c
# Total Functions: 21

.text

# Function: Clip
# Declared: Line 82 (Source lines: 84-86)
# Address: 0x0d9c9940 - 0x0d9c99ac (Size: 108 bytes, Frame: 0)
.ent Clip
Clip:
    # Line 85
    lwc1	$f7,124($a2)
    lwc1	$f8,124($a1)
    sub.s	$f8,$f8,$f7
    # Line 84
    lui	$v0,0x8
    # Line 85
    madd.s	$f7,$f7,$f15,$f8
    # Line 84
    addiu	$v0,$v0,29772
    addu	$at,$t9,$v0
    # Line 85
    lwc1	$f6,_lit_3f800000
    div.s	$f6,$f6,$f7
    swc1	$f7,124($a0)
    swc1	$f6,140($a0)
    lwc1	$f4,112($a2)
    lwc1	$f5,112($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,112($a0)
    lwc1	$f2,116($a2)
    lwc1	$f3,116($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,116($a0)
    lwc1	$f0,120($a2)
    lwc1	$f1,120($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 86
    jr	$ra
    # Line 85
    swc1	$f0,120($a0)
.end Clip

# Function: ClipC
# Declared: Line 88 (Source lines: 90-93)
# Address: 0x0d9c99b0 - 0x0d9c9a6c (Size: 188 bytes, Frame: 0)
.ent ClipC
ClipC:
    # Line 91
    lwc1	$f16,124($a2)
    lwc1	$f17,124($a1)
    sub.s	$f17,$f17,$f16
    # Line 90
    lui	$v0,0x8
    # Line 91
    madd.s	$f16,$f16,$f15,$f17
    # Line 90
    addiu	$v0,$v0,29660
    addu	$at,$t9,$v0
    # Line 91
    lwc1	$f14,_lit_3f800000
    div.s	$f14,$f14,$f16
    swc1	$f16,124($a0)
    swc1	$f14,140($a0)
    lwc1	$f12,112($a2)
    lwc1	$f13,112($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,112($a0)
    lwc1	$f10,116($a2)
    lwc1	$f11,116($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,116($a0)
    lwc1	$f8,120($a2)
    lwc1	$f9,120($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,120($a0)
    # Line 92
    lwc1	$f6,144($a2)
    lwc1	$f7,144($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,144($a0)
    lwc1	$f4,148($a2)
    lwc1	$f5,148($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,148($a0)
    lwc1	$f2,152($a2)
    lwc1	$f3,152($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,152($a0)
    lwc1	$f0,156($a2)
    lwc1	$f1,156($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 93
    jr	$ra
    # Line 92
    swc1	$f0,156($a0)
.end ClipC

# Function: ClipI
# Declared: Line 95 (Source lines: 97-100)
# Address: 0x0d9c9a70 - 0x0d9c9af0 (Size: 128 bytes, Frame: 0)
.ent ClipI
ClipI:
    # Line 98
    lwc1	$f9,124($a2)
    lwc1	$f10,124($a1)
    sub.s	$f10,$f10,$f9
    # Line 97
    lui	$v0,0x8
    # Line 98
    madd.s	$f9,$f9,$f15,$f10
    # Line 97
    addiu	$v0,$v0,29468
    addu	$at,$t9,$v0
    # Line 98
    lwc1	$f8,_lit_3f800000
    div.s	$f8,$f8,$f9
    swc1	$f9,124($a0)
    swc1	$f8,140($a0)
    lwc1	$f6,112($a2)
    lwc1	$f7,112($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,112($a0)
    lwc1	$f4,116($a2)
    lwc1	$f5,116($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,116($a0)
    lwc1	$f2,120($a2)
    lwc1	$f3,120($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,120($a0)
    # Line 99
    lwc1	$f0,144($a2)
    lwc1	$f1,144($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 100
    jr	$ra
    # Line 99
    swc1	$f0,144($a0)
.end ClipI

# Function: ClipBC
# Declared: Line 102 (Source lines: 104-108)
# Address: 0x0d9c9af0 - 0x0d9c9bfc (Size: 268 bytes, Frame: 0)
.ent ClipBC
ClipBC:
    # Line 105
    lwc1	$f29,124($a2)
    lwc1	$f31,124($a1)
    sub.s	$f31,$f31,$f29
    # Line 104
    lui	$v0,0x8
    # Line 105
    madd.s	$f29,$f29,$f15,$f31
    # Line 104
    addiu	$v0,$v0,29340
    addu	$at,$t9,$v0
    # Line 105
    lwc1	$f27,_lit_3f800000
    div.s	$f27,$f27,$f29
    swc1	$f29,124($a0)
    swc1	$f27,140($a0)
    lwc1	$f23,112($a2)
    lwc1	$f25,112($a1)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f15,$f25
    swc1	$f23,112($a0)
    lwc1	$f19,116($a2)
    lwc1	$f21,116($a1)
    sub.s	$f21,$f21,$f19
    madd.s	$f19,$f19,$f15,$f21
    swc1	$f19,116($a0)
    lwc1	$f17,120($a2)
    lwc1	$f18,120($a1)
    sub.s	$f18,$f18,$f17
    madd.s	$f17,$f17,$f15,$f18
    swc1	$f17,120($a0)
    # Line 106
    lwc1	$f14,144($a2)
    lwc1	$f16,144($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,144($a0)
    lwc1	$f12,148($a2)
    lwc1	$f13,148($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,148($a0)
    lwc1	$f10,152($a2)
    lwc1	$f11,152($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,152($a0)
    lwc1	$f8,156($a2)
    lwc1	$f9,156($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,156($a0)
    # Line 107
    lwc1	$f6,160($a2)
    lwc1	$f7,160($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,160($a0)
    lwc1	$f4,164($a2)
    lwc1	$f5,164($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,164($a0)
    lwc1	$f2,168($a2)
    lwc1	$f3,168($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,168($a0)
    lwc1	$f0,172($a2)
    lwc1	$f1,172($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 108
    jr	$ra
    # Line 107
    swc1	$f0,172($a0)
.end ClipBC

# Function: ClipBI
# Declared: Line 110 (Source lines: 112-116)
# Address: 0x0d9c9c00 - 0x0d9c9c94 (Size: 148 bytes, Frame: 0)
.ent ClipBI
ClipBI:
    # Line 113
    lwc1	$f11,124($a2)
    lwc1	$f12,124($a1)
    sub.s	$f12,$f12,$f11
    # Line 112
    lui	$v0,0x8
    # Line 113
    madd.s	$f11,$f11,$f15,$f12
    # Line 112
    addiu	$v0,$v0,29068
    addu	$at,$t9,$v0
    # Line 113
    lwc1	$f10,_lit_3f800000
    div.s	$f10,$f10,$f11
    swc1	$f11,124($a0)
    swc1	$f10,140($a0)
    lwc1	$f8,112($a2)
    lwc1	$f9,112($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,112($a0)
    lwc1	$f6,116($a2)
    lwc1	$f7,116($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,116($a0)
    lwc1	$f4,120($a2)
    lwc1	$f5,120($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,120($a0)
    # Line 114
    lwc1	$f2,144($a2)
    lwc1	$f3,144($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,144($a0)
    # Line 115
    lwc1	$f0,160($a2)
    lwc1	$f1,160($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 116
    jr	$ra
    # Line 115
    swc1	$f0,160($a0)
.end ClipBI

# Function: ClipT
# Declared: Line 118 (Source lines: 120-123)
# Address: 0x0d9c9ca0 - 0x0d9c9d5c (Size: 188 bytes, Frame: 0)
.ent ClipT
ClipT:
    # Line 121
    lwc1	$f16,124($a2)
    lwc1	$f17,124($a1)
    sub.s	$f17,$f17,$f16
    # Line 120
    lui	$v0,0x8
    # Line 121
    madd.s	$f16,$f16,$f15,$f17
    # Line 120
    addiu	$v0,$v0,28908
    addu	$at,$t9,$v0
    # Line 121
    lwc1	$f14,_lit_3f800000
    div.s	$f14,$f14,$f16
    swc1	$f16,124($a0)
    swc1	$f14,140($a0)
    lwc1	$f12,112($a2)
    lwc1	$f13,112($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,112($a0)
    lwc1	$f10,116($a2)
    lwc1	$f11,116($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,116($a0)
    lwc1	$f8,120($a2)
    lwc1	$f9,120($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,120($a0)
    # Line 122
    lwc1	$f6,48($a2)
    lwc1	$f7,48($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,48($a0)
    lwc1	$f4,52($a2)
    lwc1	$f5,52($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f3,56($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,56($a0)
    lwc1	$f0,60($a2)
    lwc1	$f1,60($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 123
    jr	$ra
    # Line 122
    swc1	$f0,60($a0)
.end ClipT

# Function: ClipIT
# Declared: Line 125 (Source lines: 127-131)
# Address: 0x0d9c9d60 - 0x0d9c9e30 (Size: 208 bytes, Frame: 0)
.ent ClipIT
ClipIT:
    # Line 128
    lwc1	$f18,124($a2)
    lwc1	$f19,124($a1)
    sub.s	$f19,$f19,$f18
    # Line 127
    lui	$v0,0x8
    # Line 128
    madd.s	$f18,$f18,$f15,$f19
    # Line 127
    addiu	$v0,$v0,28716
    addu	$at,$t9,$v0
    # Line 128
    lwc1	$f17,_lit_3f800000
    div.s	$f17,$f17,$f18
    swc1	$f18,124($a0)
    swc1	$f17,140($a0)
    lwc1	$f14,112($a2)
    lwc1	$f16,112($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,112($a0)
    lwc1	$f12,116($a2)
    lwc1	$f13,116($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,116($a0)
    lwc1	$f10,120($a2)
    lwc1	$f11,120($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,120($a0)
    # Line 129
    lwc1	$f8,144($a2)
    lwc1	$f9,144($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,144($a0)
    # Line 130
    lwc1	$f6,48($a2)
    lwc1	$f7,48($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,48($a0)
    lwc1	$f4,52($a2)
    lwc1	$f5,52($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f3,56($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,56($a0)
    lwc1	$f0,60($a2)
    lwc1	$f1,60($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 131
    jr	$ra
    # Line 130
    swc1	$f0,60($a0)
.end ClipIT

# Function: ClipBIT
# Declared: Line 133 (Source lines: 135-140)
# Address: 0x0d9c9e30 - 0x0d9c9f14 (Size: 228 bytes, Frame: 0)
.ent ClipBIT
ClipBIT:
    # Line 136
    lwc1	$f21,124($a2)
    lwc1	$f23,124($a1)
    sub.s	$f23,$f23,$f21
    # Line 135
    lui	$v0,0x8
    # Line 136
    madd.s	$f21,$f21,$f15,$f23
    # Line 135
    addiu	$v0,$v0,28508
    addu	$at,$t9,$v0
    # Line 136
    lwc1	$f19,_lit_3f800000
    div.s	$f19,$f19,$f21
    swc1	$f21,124($a0)
    swc1	$f19,140($a0)
    lwc1	$f17,112($a2)
    lwc1	$f18,112($a1)
    sub.s	$f18,$f18,$f17
    madd.s	$f17,$f17,$f15,$f18
    swc1	$f17,112($a0)
    lwc1	$f14,116($a2)
    lwc1	$f16,116($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,116($a0)
    lwc1	$f12,120($a2)
    lwc1	$f13,120($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,120($a0)
    # Line 137
    lwc1	$f10,144($a2)
    lwc1	$f11,144($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,144($a0)
    # Line 138
    lwc1	$f8,160($a2)
    lwc1	$f9,160($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,160($a0)
    # Line 139
    lwc1	$f6,48($a2)
    lwc1	$f7,48($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,48($a0)
    lwc1	$f4,52($a2)
    lwc1	$f5,52($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f3,56($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,56($a0)
    lwc1	$f0,60($a2)
    lwc1	$f1,60($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 140
    jr	$ra
    # Line 139
    swc1	$f0,60($a0)
.end ClipBIT

# Function: ClipCT
# Declared: Line 142 (Source lines: 144-148)
# Address: 0x0d9c9f20 - 0x0d9ca02c (Size: 268 bytes, Frame: 0)
.ent ClipCT
ClipCT:
    # Line 145
    lwc1	$f29,124($a2)
    lwc1	$f31,124($a1)
    sub.s	$f31,$f31,$f29
    # Line 144
    lui	$v0,0x8
    # Line 145
    madd.s	$f29,$f29,$f15,$f31
    # Line 144
    addiu	$v0,$v0,28268
    addu	$at,$t9,$v0
    # Line 145
    lwc1	$f27,_lit_3f800000
    div.s	$f27,$f27,$f29
    swc1	$f29,124($a0)
    swc1	$f27,140($a0)
    lwc1	$f23,112($a2)
    lwc1	$f25,112($a1)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f15,$f25
    swc1	$f23,112($a0)
    lwc1	$f19,116($a2)
    lwc1	$f21,116($a1)
    sub.s	$f21,$f21,$f19
    madd.s	$f19,$f19,$f15,$f21
    swc1	$f19,116($a0)
    lwc1	$f17,120($a2)
    lwc1	$f18,120($a1)
    sub.s	$f18,$f18,$f17
    madd.s	$f17,$f17,$f15,$f18
    swc1	$f17,120($a0)
    # Line 146
    lwc1	$f14,144($a2)
    lwc1	$f16,144($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,144($a0)
    lwc1	$f12,148($a2)
    lwc1	$f13,148($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,148($a0)
    lwc1	$f10,152($a2)
    lwc1	$f11,152($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,152($a0)
    lwc1	$f8,156($a2)
    lwc1	$f9,156($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,156($a0)
    # Line 147
    lwc1	$f6,48($a2)
    lwc1	$f7,48($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,48($a0)
    lwc1	$f4,52($a2)
    lwc1	$f5,52($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f3,56($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,56($a0)
    lwc1	$f0,60($a2)
    lwc1	$f1,60($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 148
    jr	$ra
    # Line 147
    swc1	$f0,60($a0)
.end ClipCT

# Function: ClipBCT
# Declared: Line 150 (Source lines: 152-157)
# Address: 0x0d9ca030 - 0x0d9ca18c (Size: 348 bytes, Frame: 0)
.ent ClipBCT
ClipBCT:
    # Line 153
    lwc1	$f6,124($a2)
    lwc1	$f7,124($a1)
    sub.s	$f7,$f7,$f6
    # Line 152
    lui	$v0,0x8
    # Line 153
    madd.s	$f6,$f6,$f15,$f7
    # Line 152
    addiu	$v0,$v0,27996
    addu	$at,$t9,$v0
    # Line 153
    lwc1	$f5,_lit_3f800000
    div.s	$f5,$f5,$f6
    swc1	$f6,124($a0)
    swc1	$f5,140($a0)
    lwc1	$f3,112($a2)
    lwc1	$f4,112($a1)
    sub.s	$f4,$f4,$f3
    madd.s	$f3,$f3,$f15,$f4
    swc1	$f3,112($a0)
    lwc1	$f1,116($a2)
    lwc1	$f2,116($a1)
    sub.s	$f2,$f2,$f1
    madd.s	$f1,$f1,$f15,$f2
    swc1	$f1,116($a0)
    lwc1	$f31,120($a2)
    lwc1	$f0,120($a1)
    sub.s	$f0,$f0,$f31
    madd.s	$f31,$f31,$f15,$f0
    swc1	$f31,120($a0)
    # Line 154
    lwc1	$f27,144($a2)
    lwc1	$f29,144($a1)
    sub.s	$f29,$f29,$f27
    madd.s	$f27,$f27,$f15,$f29
    swc1	$f27,144($a0)
    lwc1	$f23,148($a2)
    lwc1	$f25,148($a1)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f15,$f25
    swc1	$f23,148($a0)
    lwc1	$f19,152($a2)
    lwc1	$f21,152($a1)
    sub.s	$f21,$f21,$f19
    madd.s	$f19,$f19,$f15,$f21
    swc1	$f19,152($a0)
    lwc1	$f17,156($a2)
    lwc1	$f18,156($a1)
    sub.s	$f18,$f18,$f17
    madd.s	$f17,$f17,$f15,$f18
    swc1	$f17,156($a0)
    # Line 155
    lwc1	$f14,160($a2)
    lwc1	$f16,160($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,160($a0)
    lwc1	$f12,164($a2)
    lwc1	$f13,164($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,164($a0)
    lwc1	$f10,168($a2)
    lwc1	$f11,168($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,168($a0)
    lwc1	$f8,172($a2)
    lwc1	$f9,172($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,172($a0)
    # Line 156
    lwc1	$f6,48($a2)
    lwc1	$f7,48($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,48($a0)
    lwc1	$f4,52($a2)
    lwc1	$f5,52($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f3,56($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,56($a0)
    lwc1	$f0,60($a2)
    lwc1	$f1,60($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 157
    jr	$ra
    # Line 156
    swc1	$f0,60($a0)
.end ClipBCT

# Function: ClipF
# Declared: Line 159 (Source lines: 161-164)
# Address: 0x0d9ca190 - 0x0d9ca238 (Size: 168 bytes, Frame: 0)
.ent ClipF
ClipF:
    # Line 162
    lwc1	$f7,124($a2)
    lwc1	$f8,124($a1)
    sub.s	$f8,$f8,$f7
    # Line 161
    lui	$v1,0x8
    # Line 162
    madd.s	$f7,$f7,$f15,$f8
    # Line 161
    addiu	$v1,$v1,27644
    addu	$at,$t9,$v1
    # Line 162
    lwc1	$f6,_lit_3f800000
    div.s	$f6,$f6,$f7
    swc1	$f7,124($a0)
    swc1	$f6,140($a0)
    lwc1	$f4,112($a2)
    lwc1	$f5,112($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,112($a0)
    lwc1	$f2,116($a2)
    lwc1	$f3,116($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,116($a0)
    lwc1	$f0,120($a2)
    lwc1	$f1,120($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,120($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca220
    nop
    # Line 163
    lwc1	$f9,176($a2)
    lwc1	$f10,176($a1)
    sub.s	$f10,$f10,$f9
    madd.s	$f9,$f9,$f15,$f10
    # Line 164
    jr	$ra
    # Line 163
    swc1	$f9,176($a0)
.L0d9ca220:
    lwc1	$f11,104($a2)
    lwc1	$f12,104($a1)
    sub.s	$f12,$f12,$f11
    madd.s	$f11,$f11,$f15,$f12
    # Line 164
    jr	$ra
    # Line 163
    swc1	$f11,104($a0)
.end ClipF

# Function: ClipIF
# Declared: Line 166 (Source lines: 168-172)
# Address: 0x0d9ca240 - 0x0d9ca2fc (Size: 188 bytes, Frame: 0)
.ent ClipIF
ClipIF:
    # Line 169
    lwc1	$f9,124($a2)
    lwc1	$f10,124($a1)
    sub.s	$f10,$f10,$f9
    # Line 168
    lui	$v1,0x8
    # Line 169
    madd.s	$f9,$f9,$f15,$f10
    # Line 168
    addiu	$v1,$v1,27468
    addu	$at,$t9,$v1
    # Line 169
    lwc1	$f8,_lit_3f800000
    div.s	$f8,$f8,$f9
    swc1	$f9,124($a0)
    swc1	$f8,140($a0)
    lwc1	$f6,112($a2)
    lwc1	$f7,112($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,112($a0)
    lwc1	$f4,116($a2)
    lwc1	$f5,116($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,116($a0)
    lwc1	$f2,120($a2)
    lwc1	$f3,120($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,120($a0)
    # Line 170
    lwc1	$f0,144($a2)
    lwc1	$f1,144($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,144($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca2e4
    nop
    # Line 171
    lwc1	$f11,176($a2)
    lwc1	$f12,176($a1)
    sub.s	$f12,$f12,$f11
    madd.s	$f11,$f11,$f15,$f12
    # Line 172
    jr	$ra
    # Line 171
    swc1	$f11,176($a0)
.L0d9ca2e4:
    lwc1	$f13,104($a2)
    lwc1	$f14,104($a1)
    sub.s	$f14,$f14,$f13
    madd.s	$f13,$f13,$f15,$f14
    # Line 172
    jr	$ra
    # Line 171
    swc1	$f13,104($a0)
.end ClipIF

# Function: ClipBIF
# Declared: Line 174 (Source lines: 176-181)
# Address: 0x0d9ca300 - 0x0d9ca3d0 (Size: 208 bytes, Frame: 0)
.ent ClipBIF
ClipBIF:
    # Line 177
    lwc1	$f11,124($a2)
    lwc1	$f12,124($a1)
    sub.s	$f12,$f12,$f11
    # Line 176
    lui	$v1,0x8
    # Line 177
    madd.s	$f11,$f11,$f15,$f12
    # Line 176
    addiu	$v1,$v1,27276
    addu	$at,$t9,$v1
    # Line 177
    lwc1	$f10,_lit_3f800000
    div.s	$f10,$f10,$f11
    swc1	$f11,124($a0)
    swc1	$f10,140($a0)
    lwc1	$f8,112($a2)
    lwc1	$f9,112($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,112($a0)
    lwc1	$f6,116($a2)
    lwc1	$f7,116($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,116($a0)
    lwc1	$f4,120($a2)
    lwc1	$f5,120($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,120($a0)
    # Line 178
    lwc1	$f2,144($a2)
    lwc1	$f3,144($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,144($a0)
    # Line 179
    lwc1	$f0,160($a2)
    lwc1	$f1,160($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,160($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca3b8
    nop
    # Line 180
    lwc1	$f13,176($a2)
    lwc1	$f14,176($a1)
    sub.s	$f14,$f14,$f13
    madd.s	$f13,$f13,$f15,$f14
    # Line 181
    jr	$ra
    # Line 180
    swc1	$f13,176($a0)
.L0d9ca3b8:
    lwc1	$f16,104($a2)
    lwc1	$f17,104($a1)
    sub.s	$f17,$f17,$f16
    madd.s	$f15,$f16,$f15,$f17
    # Line 181
    jr	$ra
    # Line 180
    swc1	$f15,104($a0)
.end ClipBIF

# Function: ClipCF
# Declared: Line 183 (Source lines: 185-189)
# Address: 0x0d9ca3d0 - 0x0d9ca4c8 (Size: 248 bytes, Frame: 0)
.ent ClipCF
ClipCF:
    # Line 186
    lwc1	$f16,124($a2)
    lwc1	$f17,124($a1)
    sub.s	$f17,$f17,$f16
    # Line 185
    lui	$v1,0x8
    # Line 186
    madd.s	$f16,$f16,$f15,$f17
    # Line 185
    addiu	$v1,$v1,27068
    addu	$at,$t9,$v1
    # Line 186
    lwc1	$f14,_lit_3f800000
    div.s	$f14,$f14,$f16
    swc1	$f16,124($a0)
    swc1	$f14,140($a0)
    lwc1	$f12,112($a2)
    lwc1	$f13,112($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,112($a0)
    lwc1	$f10,116($a2)
    lwc1	$f11,116($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,116($a0)
    lwc1	$f8,120($a2)
    lwc1	$f9,120($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,120($a0)
    # Line 187
    lwc1	$f6,144($a2)
    lwc1	$f7,144($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,144($a0)
    lwc1	$f4,148($a2)
    lwc1	$f5,148($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,148($a0)
    lwc1	$f2,152($a2)
    lwc1	$f3,152($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,152($a0)
    lwc1	$f0,156($a2)
    lwc1	$f1,156($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,156($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca4b0
    nop
    # Line 188
    lwc1	$f18,176($a2)
    lwc1	$f19,176($a1)
    sub.s	$f19,$f19,$f18
    madd.s	$f18,$f18,$f15,$f19
    # Line 189
    jr	$ra
    # Line 188
    swc1	$f18,176($a0)
.L0d9ca4b0:
    lwc1	$f21,104($a2)
    lwc1	$f23,104($a1)
    sub.s	$f23,$f23,$f21
    madd.s	$f21,$f21,$f15,$f23
    # Line 189
    jr	$ra
    # Line 188
    swc1	$f21,104($a0)
.end ClipCF

# Function: ClipBCF
# Declared: Line 191 (Source lines: 193-198)
# Address: 0x0d9ca4d0 - 0x0d9ca618 (Size: 328 bytes, Frame: 0)
.ent ClipBCF
ClipBCF:
    # Line 194
    lwc1	$f29,124($a2)
    lwc1	$f31,124($a1)
    sub.s	$f31,$f31,$f29
    # Line 193
    lui	$v1,0x8
    # Line 194
    madd.s	$f29,$f29,$f15,$f31
    # Line 193
    addiu	$v1,$v1,26812
    addu	$at,$t9,$v1
    # Line 194
    lwc1	$f27,_lit_3f800000
    div.s	$f27,$f27,$f29
    swc1	$f29,124($a0)
    swc1	$f27,140($a0)
    lwc1	$f23,112($a2)
    lwc1	$f25,112($a1)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f15,$f25
    swc1	$f23,112($a0)
    lwc1	$f19,116($a2)
    lwc1	$f21,116($a1)
    sub.s	$f21,$f21,$f19
    madd.s	$f19,$f19,$f15,$f21
    swc1	$f19,116($a0)
    lwc1	$f17,120($a2)
    lwc1	$f18,120($a1)
    sub.s	$f18,$f18,$f17
    madd.s	$f17,$f17,$f15,$f18
    swc1	$f17,120($a0)
    # Line 195
    lwc1	$f14,144($a2)
    lwc1	$f16,144($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,144($a0)
    lwc1	$f12,148($a2)
    lwc1	$f13,148($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,148($a0)
    lwc1	$f10,152($a2)
    lwc1	$f11,152($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,152($a0)
    lwc1	$f8,156($a2)
    lwc1	$f9,156($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,156($a0)
    # Line 196
    lwc1	$f6,160($a2)
    lwc1	$f7,160($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,160($a0)
    lwc1	$f4,164($a2)
    lwc1	$f5,164($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,164($a0)
    lwc1	$f2,168($a2)
    lwc1	$f3,168($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,168($a0)
    lwc1	$f0,172($a2)
    lwc1	$f1,172($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,172($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca600
    nop
    # Line 197
    lwc1	$f0,176($a2)
    lwc1	$f1,176($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    # Line 198
    jr	$ra
    # Line 197
    swc1	$f0,176($a0)
.L0d9ca600:
    lwc1	$f2,104($a2)
    lwc1	$f3,104($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    # Line 198
    jr	$ra
    # Line 197
    swc1	$f2,104($a0)
.end ClipBCF

# Function: ClipFT
# Declared: Line 200 (Source lines: 202-206)
# Address: 0x0d9ca620 - 0x0d9ca718 (Size: 248 bytes, Frame: 0)
.ent ClipFT
ClipFT:
    # Line 203
    lwc1	$f7,124($a2)
    lwc1	$f8,124($a1)
    sub.s	$f8,$f8,$f7
    # Line 202
    lui	$v1,0x8
    # Line 203
    madd.s	$f7,$f7,$f15,$f8
    # Line 202
    addiu	$v1,$v1,26476
    addu	$at,$t9,$v1
    # Line 203
    lwc1	$f6,_lit_3f800000
    div.s	$f6,$f6,$f7
    swc1	$f7,124($a0)
    swc1	$f6,140($a0)
    lwc1	$f4,112($a2)
    lwc1	$f5,112($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,112($a0)
    lwc1	$f2,116($a2)
    lwc1	$f3,116($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,116($a0)
    lwc1	$f0,120($a2)
    lwc1	$f1,120($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,120($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca700
    nop
    # Line 204
    lwc1	$f9,176($a2)
    lwc1	$f10,176($a1)
    sub.s	$f10,$f10,$f9
    madd.s	$f9,$f9,$f15,$f10
    swc1	$f9,176($a0)
.L0d9ca6ac:
    # Line 205
    lwc1	$f18,48($a2)
    lwc1	$f19,48($a1)
    sub.s	$f19,$f19,$f18
    madd.s	$f18,$f18,$f15,$f19
    swc1	$f18,48($a0)
    lwc1	$f16,52($a2)
    lwc1	$f17,52($a1)
    sub.s	$f17,$f17,$f16
    madd.s	$f16,$f16,$f15,$f17
    swc1	$f16,52($a0)
    lwc1	$f13,56($a2)
    lwc1	$f14,56($a1)
    sub.s	$f14,$f14,$f13
    madd.s	$f13,$f13,$f15,$f14
    swc1	$f13,56($a0)
    lwc1	$f11,60($a2)
    lwc1	$f12,60($a1)
    sub.s	$f12,$f12,$f11
    madd.s	$f11,$f11,$f15,$f12
    # Line 206
    jr	$ra
    # Line 205
    swc1	$f11,60($a0)
.L0d9ca700:
    # Line 204
    lwc1	$f21,104($a2)
    lwc1	$f23,104($a1)
    sub.s	$f23,$f23,$f21
    madd.s	$f21,$f21,$f15,$f23
    b	.L0d9ca6ac
    swc1	$f21,104($a0)
.end ClipFT

# Function: ClipIFT
# Declared: Line 208 (Source lines: 210-215)
# Address: 0x0d9ca720 - 0x0d9ca82c (Size: 268 bytes, Frame: 0)
.ent ClipIFT
ClipIFT:
    # Line 211
    lwc1	$f9,124($a2)
    lwc1	$f10,124($a1)
    sub.s	$f10,$f10,$f9
    # Line 210
    lui	$v1,0x8
    # Line 211
    madd.s	$f9,$f9,$f15,$f10
    # Line 210
    addiu	$v1,$v1,26220
    addu	$at,$t9,$v1
    # Line 211
    lwc1	$f8,_lit_3f800000
    div.s	$f8,$f8,$f9
    swc1	$f9,124($a0)
    swc1	$f8,140($a0)
    lwc1	$f6,112($a2)
    lwc1	$f7,112($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,112($a0)
    lwc1	$f4,116($a2)
    lwc1	$f5,116($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,116($a0)
    lwc1	$f2,120($a2)
    lwc1	$f3,120($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,120($a0)
    # Line 212
    lwc1	$f0,144($a2)
    lwc1	$f1,144($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,144($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca814
    nop
    # Line 213
    lwc1	$f11,176($a2)
    lwc1	$f12,176($a1)
    sub.s	$f12,$f12,$f11
    madd.s	$f11,$f11,$f15,$f12
    swc1	$f11,176($a0)
.L0d9ca7c0:
    # Line 214
    lwc1	$f21,48($a2)
    lwc1	$f23,48($a1)
    sub.s	$f23,$f23,$f21
    madd.s	$f21,$f21,$f15,$f23
    swc1	$f21,48($a0)
    lwc1	$f18,52($a2)
    lwc1	$f19,52($a1)
    sub.s	$f19,$f19,$f18
    madd.s	$f18,$f18,$f15,$f19
    swc1	$f18,52($a0)
    lwc1	$f16,56($a2)
    lwc1	$f17,56($a1)
    sub.s	$f17,$f17,$f16
    madd.s	$f16,$f16,$f15,$f17
    swc1	$f16,56($a0)
    lwc1	$f13,60($a2)
    lwc1	$f14,60($a1)
    sub.s	$f14,$f14,$f13
    madd.s	$f13,$f13,$f15,$f14
    # Line 215
    jr	$ra
    # Line 214
    swc1	$f13,60($a0)
.L0d9ca814:
    # Line 213
    lwc1	$f25,104($a2)
    lwc1	$f27,104($a1)
    sub.s	$f27,$f27,$f25
    madd.s	$f25,$f25,$f15,$f27
    b	.L0d9ca7c0
    swc1	$f25,104($a0)
.end ClipIFT

# Function: ClipBIFT
# Declared: Line 217 (Source lines: 219-225)
# Address: 0x0d9ca830 - 0x0d9ca950 (Size: 288 bytes, Frame: 0)
.ent ClipBIFT
ClipBIFT:
    # Line 220
    lwc1	$f11,124($a2)
    lwc1	$f12,124($a1)
    sub.s	$f12,$f12,$f11
    # Line 219
    lui	$v1,0x8
    # Line 220
    madd.s	$f11,$f11,$f15,$f12
    # Line 219
    addiu	$v1,$v1,25948
    addu	$at,$t9,$v1
    # Line 220
    lwc1	$f10,_lit_3f800000
    div.s	$f10,$f10,$f11
    swc1	$f11,124($a0)
    swc1	$f10,140($a0)
    lwc1	$f8,112($a2)
    lwc1	$f9,112($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,112($a0)
    lwc1	$f6,116($a2)
    lwc1	$f7,116($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,116($a0)
    lwc1	$f4,120($a2)
    lwc1	$f5,120($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,120($a0)
    # Line 221
    lwc1	$f2,144($a2)
    lwc1	$f3,144($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,144($a0)
    # Line 222
    lwc1	$f0,160($a2)
    lwc1	$f1,160($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,160($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9ca938
    nop
    # Line 223
    lwc1	$f13,176($a2)
    lwc1	$f14,176($a1)
    sub.s	$f14,$f14,$f13
    madd.s	$f13,$f13,$f15,$f14
    swc1	$f13,176($a0)
.L0d9ca8e4:
    # Line 224
    lwc1	$f25,48($a2)
    lwc1	$f27,48($a1)
    sub.s	$f27,$f27,$f25
    madd.s	$f25,$f25,$f15,$f27
    swc1	$f25,48($a0)
    lwc1	$f21,52($a2)
    lwc1	$f23,52($a1)
    sub.s	$f23,$f23,$f21
    madd.s	$f21,$f21,$f15,$f23
    swc1	$f21,52($a0)
    lwc1	$f18,56($a2)
    lwc1	$f19,56($a1)
    sub.s	$f19,$f19,$f18
    madd.s	$f18,$f18,$f15,$f19
    swc1	$f18,56($a0)
    lwc1	$f16,60($a2)
    lwc1	$f17,60($a1)
    sub.s	$f17,$f17,$f16
    madd.s	$f15,$f16,$f15,$f17
    # Line 225
    jr	$ra
    # Line 224
    swc1	$f15,60($a0)
.L0d9ca938:
    # Line 223
    lwc1	$f29,104($a2)
    lwc1	$f31,104($a1)
    sub.s	$f31,$f31,$f29
    madd.s	$f29,$f29,$f15,$f31
    b	.L0d9ca8e4
    swc1	$f29,104($a0)
.end ClipBIFT

# Function: ClipCFT
# Declared: Line 227 (Source lines: 229-234)
# Address: 0x0d9ca950 - 0x0d9caa98 (Size: 328 bytes, Frame: 0)
.ent ClipCFT
ClipCFT:
    # Line 230
    lwc1	$f16,124($a2)
    lwc1	$f17,124($a1)
    sub.s	$f17,$f17,$f16
    # Line 229
    lui	$v1,0x8
    # Line 230
    madd.s	$f16,$f16,$f15,$f17
    # Line 229
    addiu	$v1,$v1,25660
    addu	$at,$t9,$v1
    # Line 230
    lwc1	$f14,_lit_3f800000
    div.s	$f14,$f14,$f16
    swc1	$f16,124($a0)
    swc1	$f14,140($a0)
    lwc1	$f12,112($a2)
    lwc1	$f13,112($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,112($a0)
    lwc1	$f10,116($a2)
    lwc1	$f11,116($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,116($a0)
    lwc1	$f8,120($a2)
    lwc1	$f9,120($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,120($a0)
    # Line 231
    lwc1	$f6,144($a2)
    lwc1	$f7,144($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,144($a0)
    lwc1	$f4,148($a2)
    lwc1	$f5,148($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,148($a0)
    lwc1	$f2,152($a2)
    lwc1	$f3,152($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,152($a0)
    lwc1	$f0,156($a2)
    lwc1	$f1,156($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,156($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9caa80
    nop
    # Line 232
    lwc1	$f18,176($a2)
    lwc1	$f19,176($a1)
    sub.s	$f19,$f19,$f18
    madd.s	$f18,$f18,$f15,$f19
    swc1	$f18,176($a0)
.L0d9caa2c:
    # Line 233
    lwc1	$f0,48($a2)
    lwc1	$f1,48($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,48($a0)
    lwc1	$f29,52($a2)
    lwc1	$f31,52($a1)
    sub.s	$f31,$f31,$f29
    madd.s	$f29,$f29,$f15,$f31
    swc1	$f29,52($a0)
    lwc1	$f25,56($a2)
    lwc1	$f27,56($a1)
    sub.s	$f27,$f27,$f25
    madd.s	$f25,$f25,$f15,$f27
    swc1	$f25,56($a0)
    lwc1	$f21,60($a2)
    lwc1	$f23,60($a1)
    sub.s	$f23,$f23,$f21
    madd.s	$f21,$f21,$f15,$f23
    # Line 234
    jr	$ra
    # Line 233
    swc1	$f21,60($a0)
.L0d9caa80:
    # Line 232
    lwc1	$f2,104($a2)
    lwc1	$f3,104($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    b	.L0d9caa2c
    swc1	$f2,104($a0)
.end ClipCFT

# Function: ClipBCFT
# Declared: Line 236 (Source lines: 238-244)
# Address: 0x0d9caaa0 - 0x0d9cac38 (Size: 408 bytes, Frame: 0)
.ent ClipBCFT
ClipBCFT:
    # Line 239
    lwc1	$f29,124($a2)
    lwc1	$f31,124($a1)
    sub.s	$f31,$f31,$f29
    # Line 238
    lui	$v1,0x8
    # Line 239
    madd.s	$f29,$f29,$f15,$f31
    # Line 238
    addiu	$v1,$v1,25324
    addu	$at,$t9,$v1
    # Line 239
    lwc1	$f27,_lit_3f800000
    div.s	$f27,$f27,$f29
    swc1	$f29,124($a0)
    swc1	$f27,140($a0)
    lwc1	$f23,112($a2)
    lwc1	$f25,112($a1)
    sub.s	$f25,$f25,$f23
    madd.s	$f23,$f23,$f15,$f25
    swc1	$f23,112($a0)
    lwc1	$f19,116($a2)
    lwc1	$f21,116($a1)
    sub.s	$f21,$f21,$f19
    madd.s	$f19,$f19,$f15,$f21
    swc1	$f19,116($a0)
    lwc1	$f17,120($a2)
    lwc1	$f18,120($a1)
    sub.s	$f18,$f18,$f17
    madd.s	$f17,$f17,$f15,$f18
    swc1	$f17,120($a0)
    # Line 240
    lwc1	$f14,144($a2)
    lwc1	$f16,144($a1)
    sub.s	$f16,$f16,$f14
    madd.s	$f14,$f14,$f15,$f16
    swc1	$f14,144($a0)
    lwc1	$f12,148($a2)
    lwc1	$f13,148($a1)
    sub.s	$f13,$f13,$f12
    madd.s	$f12,$f12,$f15,$f13
    swc1	$f12,148($a0)
    lwc1	$f10,152($a2)
    lwc1	$f11,152($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    swc1	$f10,152($a0)
    lwc1	$f8,156($a2)
    lwc1	$f9,156($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,156($a0)
    # Line 241
    lwc1	$f6,160($a2)
    lwc1	$f7,160($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,160($a0)
    lwc1	$f4,164($a2)
    lwc1	$f5,164($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,164($a0)
    lwc1	$f2,168($a2)
    lwc1	$f3,168($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    swc1	$f2,168($a0)
    lwc1	$f0,172($a2)
    lwc1	$f1,172($a1)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,172($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9cac20
    nop
    # Line 242
    lwc1	$f1,176($a1)
    lwc1	$f0,176($a2)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f15,$f1
    swc1	$f0,176($a0)
.L0d9cabcc:
    # Line 243
    lwc1	$f8,48($a2)
    lwc1	$f9,48($a1)
    sub.s	$f9,$f9,$f8
    madd.s	$f8,$f8,$f15,$f9
    swc1	$f8,48($a0)
    lwc1	$f6,52($a2)
    lwc1	$f7,52($a1)
    sub.s	$f7,$f7,$f6
    madd.s	$f6,$f6,$f15,$f7
    swc1	$f6,52($a0)
    lwc1	$f4,56($a2)
    lwc1	$f5,56($a1)
    sub.s	$f5,$f5,$f4
    madd.s	$f4,$f4,$f15,$f5
    swc1	$f4,56($a0)
    lwc1	$f2,60($a2)
    lwc1	$f3,60($a1)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f15,$f3
    # Line 244
    jr	$ra
    # Line 243
    swc1	$f2,60($a0)
.L0d9cac20:
    # Line 242
    lwc1	$f10,104($a2)
    lwc1	$f11,104($a1)
    sub.s	$f11,$f11,$f10
    madd.s	$f10,$f10,$f15,$f11
    b	.L0d9cabcc
    swc1	$f10,104($a0)
.end ClipBCFT

# Function: __glGenericPickParameterClipProcs
# Declared: Line 255 (Source lines: 256-296)
# Address: 0x0d9cac40 - 0x0d9cad4c (Size: 268 bytes, Frame: 0)
.globl __glGenericPickParameterClipProcs
.ent __glGenericPickParameterClipProcs
__glGenericPickParameterClipProcs:
    # Line 259
    lw	$v1,1792($a0)
    # Line 256
    lui	$v0,0x8
    # Line 259
    andi	$v1,$v1,0x40
    li	$a7,1
    # Line 256
    addiu	$v0,$v0,24908
    # Line 261
    lbu	$a2,3220($a0)
    # Line 259
    beqz	$v1,.L0d9cacec
    # Line 256
    addu	$at,$t9,$v0
    # Line 259
    lbu	$a1,1413($a0)
    beqz	$a1,.L0d9cacec
    nop
.L0d9cac6c:
    # Line 261
    lw	$a5,30436($a0)
    li	$t0,7424
    lw	$a6,1392($a0)
    # Line 292
    la	$t2,sub_0da40000
    # Line 261
    beqz	$a2,.L0d9cacf4
    # Line 284
    andi	$t1,$a5,0x1000
    # Line 264
    beq	$t0,$a6,.L0d9cad34
.L0d9cac88:
    # Line 268
    li	$a3,4
    andi	$a6,$a7,0xff
    li	$t0,2
    move	$a4,$t0
    movz	$a3,$t0,$a6
.L0d9cac9c:
    # Line 284
    dsll32	$a6,$a5,0xe
.L0d9caca0:
    # Line 288
    lbu	$t9,28216($a0)
    # Line 284
    beqz	$t1,.L0d9cad1c
    andi	$a2,$a5,0x2000
    # Line 288
    addiu	$a3,$a3,5
.L0d9cacb0:
    # Line 287
    addiu	$a4,$a4,5
    # Line 292
    addiu	$t8,$a3,10
.L0d9cacb8:
    # Line 291
    addiu	$t3,$a4,10
    movz	$t8,$a3,$t9
    movz	$t3,$a4,$t9
    # Line 294
    sll	$t3,$t3,0x2
    # Line 292
    addiu	$t2,$t2,30920
    # Line 295
    sll	$t8,$t8,0x2
    addu	$t8,$t2,$t8
    # Line 294
    addu	$t2,$t2,$t3
    lw	$t2,0($t2)
    # Line 295
    lw	$t8,0($t8)
    sw	$t8,12096($a0)
    # Line 296
    jr	$ra
    # Line 294
    sw	$t2,12488($a0)
.L0d9cacec:
    b	.L0d9cac6c
    # Line 259
    move	$a7,$zero
.L0d9cacf4:
    # Line 277
    li	$a4,1
    xor	$t9,$t0,$a6
    movz	$a4,$zero,$t9
    li	$a1,1
    li	$v0,3
    andi	$v1,$a7,0xff
    movz	$v0,$a1,$v1
    move	$a3,$zero
    b	.L0d9cac9c
    movn	$a3,$v0,$t9
.L0d9cad1c:
    # Line 284
    beqz	$a2,.L0d9cacb8
    # Line 292
    addiu	$t8,$a3,10
    # Line 284
    bltz	$a6,.L0d9cacb8
    # Line 292
    addiu	$t8,$a3,10
    b	.L0d9cacb0
    # Line 288
    addiu	$a3,$a3,5
.L0d9cad34:
    # Line 264
    andi	$t0,$a5,0x2000
    # Line 268
    move	$a4,$zero
    # Line 264
    bnez	$t0,.L0d9cac88
    # Line 268
    move	$a3,$zero
    b	.L0d9caca0
    # Line 284
    dsll32	$a6,$a5,0xe
.end __glGenericPickParameterClipProcs

.rdata
_lit_3f800000:
    .word 0x3f800000

