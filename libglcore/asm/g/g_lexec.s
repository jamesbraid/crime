# Source: g_lexec.c
# Category: g
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_lexec.c
# Total Functions: 230

.text

# Function: __glle_ListBase
# Declared: Line 38 (Source lines: 39-44)
# Address: 0x0d989c00 - 0x0d989c44 (Size: 68 bytes, Frame: 32)
.globl __glle_ListBase
.ent __glle_ListBase
__glle_ListBase:
    # Line 39
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,29068
    addu	$gp,$t9,$at
    # Line 43
    lw	$t9,4200($zero)
    # Line 39
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 43
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 44
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ListBase

# Function: __glle_Color3bv
# Declared: Line 51 (Source lines: 52-57)
# Address: 0x0d989c50 - 0x0d989c94 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3bv
.ent __glle_Color3bv
__glle_Color3bv:
    # Line 52
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28988
    addu	$gp,$t9,$at
    # Line 56
    lw	$t9,5596($zero)
    # Line 52
    sd	$s8,8($sp)
    # Line 56
    nop
    # Line 52
    sd	$ra,0($sp)
    # Line 56
    jalr	$t9
    # Line 52
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 57
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3bv

# Function: __glle_Color3dv
# Declared: Line 62 (Source lines: 63-68)
# Address: 0x0d989ca0 - 0x0d989ce4 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3dv
.ent __glle_Color3dv
__glle_Color3dv:
    # Line 63
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28908
    addu	$gp,$t9,$at
    # Line 67
    lw	$t9,5604($zero)
    # Line 63
    sd	$s8,8($sp)
    # Line 67
    nop
    # Line 63
    sd	$ra,0($sp)
    # Line 67
    jalr	$t9
    # Line 63
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 68
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3dv

# Function: __glle_Color3fv
# Declared: Line 73 (Source lines: 74-79)
# Address: 0x0d989cf0 - 0x0d989d34 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3fv
.ent __glle_Color3fv
__glle_Color3fv:
    # Line 74
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28828
    addu	$gp,$t9,$at
    # Line 78
    lw	$t9,5612($zero)
    # Line 74
    sd	$s8,8($sp)
    # Line 78
    nop
    # Line 74
    sd	$ra,0($sp)
    # Line 78
    jalr	$t9
    # Line 74
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 79
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3fv

# Function: __glle_Color3iv
# Declared: Line 84 (Source lines: 85-90)
# Address: 0x0d989d40 - 0x0d989d84 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3iv
.ent __glle_Color3iv
__glle_Color3iv:
    # Line 85
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28748
    addu	$gp,$t9,$at
    # Line 89
    lw	$t9,5620($zero)
    # Line 85
    sd	$s8,8($sp)
    # Line 89
    nop
    # Line 85
    sd	$ra,0($sp)
    # Line 89
    jalr	$t9
    # Line 85
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 90
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3iv

# Function: __glle_Color3sv
# Declared: Line 95 (Source lines: 96-101)
# Address: 0x0d989d90 - 0x0d989dd4 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3sv
.ent __glle_Color3sv
__glle_Color3sv:
    # Line 96
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28668
    addu	$gp,$t9,$at
    # Line 100
    lw	$t9,5628($zero)
    # Line 96
    sd	$s8,8($sp)
    # Line 100
    nop
    # Line 96
    sd	$ra,0($sp)
    # Line 100
    jalr	$t9
    # Line 96
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 101
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3sv

# Function: __glle_Color3ubv
# Declared: Line 106 (Source lines: 107-112)
# Address: 0x0d989de0 - 0x0d989e24 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3ubv
.ent __glle_Color3ubv
__glle_Color3ubv:
    # Line 107
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28588
    addu	$gp,$t9,$at
    # Line 111
    lw	$t9,5636($zero)
    # Line 107
    sd	$s8,8($sp)
    # Line 111
    nop
    # Line 107
    sd	$ra,0($sp)
    # Line 111
    jalr	$t9
    # Line 107
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 112
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3ubv

# Function: __glle_Color3uiv
# Declared: Line 117 (Source lines: 118-123)
# Address: 0x0d989e30 - 0x0d989e74 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3uiv
.ent __glle_Color3uiv
__glle_Color3uiv:
    # Line 118
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28508
    addu	$gp,$t9,$at
    # Line 122
    lw	$t9,5644($zero)
    # Line 118
    sd	$s8,8($sp)
    # Line 122
    nop
    # Line 118
    sd	$ra,0($sp)
    # Line 122
    jalr	$t9
    # Line 118
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 123
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3uiv

# Function: __glle_Color3usv
# Declared: Line 128 (Source lines: 129-134)
# Address: 0x0d989e80 - 0x0d989ec4 (Size: 68 bytes, Frame: 32)
.globl __glle_Color3usv
.ent __glle_Color3usv
__glle_Color3usv:
    # Line 129
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28428
    addu	$gp,$t9,$at
    # Line 133
    lw	$t9,5652($zero)
    # Line 129
    sd	$s8,8($sp)
    # Line 133
    nop
    # Line 129
    sd	$ra,0($sp)
    # Line 133
    jalr	$t9
    # Line 129
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 134
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color3usv

# Function: __glle_Color4bv
# Declared: Line 139 (Source lines: 140-145)
# Address: 0x0d989ed0 - 0x0d989f14 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4bv
.ent __glle_Color4bv
__glle_Color4bv:
    # Line 140
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28348
    addu	$gp,$t9,$at
    # Line 144
    lw	$t9,5660($zero)
    # Line 140
    sd	$s8,8($sp)
    # Line 144
    nop
    # Line 140
    sd	$ra,0($sp)
    # Line 144
    jalr	$t9
    # Line 140
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 145
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4bv

# Function: __glle_Color4dv
# Declared: Line 150 (Source lines: 151-156)
# Address: 0x0d989f20 - 0x0d989f64 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4dv
.ent __glle_Color4dv
__glle_Color4dv:
    # Line 151
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28268
    addu	$gp,$t9,$at
    # Line 155
    lw	$t9,5668($zero)
    # Line 151
    sd	$s8,8($sp)
    # Line 155
    nop
    # Line 151
    sd	$ra,0($sp)
    # Line 155
    jalr	$t9
    # Line 151
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 156
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4dv

# Function: __glle_Color4fv
# Declared: Line 161 (Source lines: 162-167)
# Address: 0x0d989f70 - 0x0d989fb4 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4fv
.ent __glle_Color4fv
__glle_Color4fv:
    # Line 162
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28188
    addu	$gp,$t9,$at
    # Line 166
    lw	$t9,5676($zero)
    # Line 162
    sd	$s8,8($sp)
    # Line 166
    nop
    # Line 162
    sd	$ra,0($sp)
    # Line 166
    jalr	$t9
    # Line 162
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 167
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4fv

# Function: __glle_Color4iv
# Declared: Line 172 (Source lines: 173-178)
# Address: 0x0d989fc0 - 0x0d98a004 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4iv
.ent __glle_Color4iv
__glle_Color4iv:
    # Line 173
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28108
    addu	$gp,$t9,$at
    # Line 177
    lw	$t9,5684($zero)
    # Line 173
    sd	$s8,8($sp)
    # Line 177
    nop
    # Line 173
    sd	$ra,0($sp)
    # Line 177
    jalr	$t9
    # Line 173
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 178
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4iv

# Function: __glle_Color4sv
# Declared: Line 183 (Source lines: 184-189)
# Address: 0x0d98a010 - 0x0d98a054 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4sv
.ent __glle_Color4sv
__glle_Color4sv:
    # Line 184
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,28028
    addu	$gp,$t9,$at
    # Line 188
    lw	$t9,5692($zero)
    # Line 184
    sd	$s8,8($sp)
    # Line 188
    nop
    # Line 184
    sd	$ra,0($sp)
    # Line 188
    jalr	$t9
    # Line 184
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 189
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4sv

# Function: __glle_Color4ubv
# Declared: Line 194 (Source lines: 195-200)
# Address: 0x0d98a060 - 0x0d98a0a4 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4ubv
.ent __glle_Color4ubv
__glle_Color4ubv:
    # Line 195
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27948
    addu	$gp,$t9,$at
    # Line 199
    lw	$t9,5700($zero)
    # Line 195
    sd	$s8,8($sp)
    # Line 199
    nop
    # Line 195
    sd	$ra,0($sp)
    # Line 199
    jalr	$t9
    # Line 195
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 200
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4ubv

# Function: __glle_Color4uiv
# Declared: Line 205 (Source lines: 206-211)
# Address: 0x0d98a0b0 - 0x0d98a0f4 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4uiv
.ent __glle_Color4uiv
__glle_Color4uiv:
    # Line 206
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27868
    addu	$gp,$t9,$at
    # Line 210
    lw	$t9,5708($zero)
    # Line 206
    sd	$s8,8($sp)
    # Line 210
    nop
    # Line 206
    sd	$ra,0($sp)
    # Line 210
    jalr	$t9
    # Line 206
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 211
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4uiv

# Function: __glle_Color4usv
# Declared: Line 216 (Source lines: 217-222)
# Address: 0x0d98a100 - 0x0d98a144 (Size: 68 bytes, Frame: 32)
.globl __glle_Color4usv
.ent __glle_Color4usv
__glle_Color4usv:
    # Line 217
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27788
    addu	$gp,$t9,$at
    # Line 221
    lw	$t9,5716($zero)
    # Line 217
    sd	$s8,8($sp)
    # Line 221
    nop
    # Line 217
    sd	$ra,0($sp)
    # Line 221
    jalr	$t9
    # Line 217
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 222
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Color4usv

# Function: __glle_EdgeFlagv
# Declared: Line 227 (Source lines: 228-233)
# Address: 0x0d98a150 - 0x0d98a194 (Size: 68 bytes, Frame: 32)
.globl __glle_EdgeFlagv
.ent __glle_EdgeFlagv
__glle_EdgeFlagv:
    # Line 228
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27708
    addu	$gp,$t9,$at
    # Line 232
    lw	$t9,4216($zero)
    # Line 228
    sd	$s8,8($sp)
    # Line 232
    nop
    # Line 228
    sd	$ra,0($sp)
    # Line 232
    jalr	$t9
    # Line 228
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 233
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EdgeFlagv

# Function: __glle_End
# Declared: Line 237 (Source lines: 238-241)
# Address: 0x0d98a1a0 - 0x0d98a1e0 (Size: 64 bytes, Frame: 32)
.globl __glle_End
.ent __glle_End
__glle_End:
    # Line 238
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27628
    addu	$gp,$t9,$at
    # Line 240
    lw	$t9,4220($zero)
    # Line 238
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 240
    jalr	$t9
    # Line 238
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 241
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_End

# Function: __glle_Indexdv
# Declared: Line 246 (Source lines: 247-252)
# Address: 0x0d98a1e0 - 0x0d98a224 (Size: 68 bytes, Frame: 32)
.globl __glle_Indexdv
.ent __glle_Indexdv
__glle_Indexdv:
    # Line 247
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27564
    addu	$gp,$t9,$at
    # Line 251
    lw	$t9,5724($zero)
    # Line 247
    sd	$s8,8($sp)
    # Line 251
    nop
    # Line 247
    sd	$ra,0($sp)
    # Line 251
    jalr	$t9
    # Line 247
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 252
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Indexdv

# Function: __glle_Indexfv
# Declared: Line 257 (Source lines: 258-263)
# Address: 0x0d98a230 - 0x0d98a274 (Size: 68 bytes, Frame: 32)
.globl __glle_Indexfv
.ent __glle_Indexfv
__glle_Indexfv:
    # Line 258
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27484
    addu	$gp,$t9,$at
    # Line 262
    lw	$t9,5732($zero)
    # Line 258
    sd	$s8,8($sp)
    # Line 262
    nop
    # Line 258
    sd	$ra,0($sp)
    # Line 262
    jalr	$t9
    # Line 258
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 263
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Indexfv

# Function: __glle_Indexiv
# Declared: Line 268 (Source lines: 269-274)
# Address: 0x0d98a280 - 0x0d98a2c4 (Size: 68 bytes, Frame: 32)
.globl __glle_Indexiv
.ent __glle_Indexiv
__glle_Indexiv:
    # Line 269
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27404
    addu	$gp,$t9,$at
    # Line 273
    lw	$t9,5740($zero)
    # Line 269
    sd	$s8,8($sp)
    # Line 273
    nop
    # Line 269
    sd	$ra,0($sp)
    # Line 273
    jalr	$t9
    # Line 269
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 274
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Indexiv

# Function: __glle_Indexsv
# Declared: Line 279 (Source lines: 280-285)
# Address: 0x0d98a2d0 - 0x0d98a314 (Size: 68 bytes, Frame: 32)
.globl __glle_Indexsv
.ent __glle_Indexsv
__glle_Indexsv:
    # Line 280
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27324
    addu	$gp,$t9,$at
    # Line 284
    lw	$t9,5748($zero)
    # Line 280
    sd	$s8,8($sp)
    # Line 284
    nop
    # Line 280
    sd	$ra,0($sp)
    # Line 284
    jalr	$t9
    # Line 280
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 285
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Indexsv

# Function: __glle_Normal3bv
# Declared: Line 290 (Source lines: 291-296)
# Address: 0x0d98a320 - 0x0d98a364 (Size: 68 bytes, Frame: 32)
.globl __glle_Normal3bv
.ent __glle_Normal3bv
__glle_Normal3bv:
    # Line 291
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27244
    addu	$gp,$t9,$at
    # Line 295
    lw	$t9,5764($zero)
    # Line 291
    sd	$s8,8($sp)
    # Line 295
    nop
    # Line 291
    sd	$ra,0($sp)
    # Line 295
    jalr	$t9
    # Line 291
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 296
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Normal3bv

# Function: __glle_Normal3dv
# Declared: Line 301 (Source lines: 302-307)
# Address: 0x0d98a370 - 0x0d98a3b4 (Size: 68 bytes, Frame: 32)
.globl __glle_Normal3dv
.ent __glle_Normal3dv
__glle_Normal3dv:
    # Line 302
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27164
    addu	$gp,$t9,$at
    # Line 306
    lw	$t9,5772($zero)
    # Line 302
    sd	$s8,8($sp)
    # Line 306
    nop
    # Line 302
    sd	$ra,0($sp)
    # Line 306
    jalr	$t9
    # Line 302
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 307
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Normal3dv

# Function: __glle_Normal3fv
# Declared: Line 312 (Source lines: 313-318)
# Address: 0x0d98a3c0 - 0x0d98a404 (Size: 68 bytes, Frame: 32)
.globl __glle_Normal3fv
.ent __glle_Normal3fv
__glle_Normal3fv:
    # Line 313
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27084
    addu	$gp,$t9,$at
    # Line 317
    lw	$t9,5780($zero)
    # Line 313
    sd	$s8,8($sp)
    # Line 317
    nop
    # Line 313
    sd	$ra,0($sp)
    # Line 317
    jalr	$t9
    # Line 313
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 318
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Normal3fv

# Function: __glle_Normal3iv
# Declared: Line 323 (Source lines: 324-329)
# Address: 0x0d98a410 - 0x0d98a454 (Size: 68 bytes, Frame: 32)
.globl __glle_Normal3iv
.ent __glle_Normal3iv
__glle_Normal3iv:
    # Line 324
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,27004
    addu	$gp,$t9,$at
    # Line 328
    lw	$t9,5788($zero)
    # Line 324
    sd	$s8,8($sp)
    # Line 328
    nop
    # Line 324
    sd	$ra,0($sp)
    # Line 328
    jalr	$t9
    # Line 324
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 329
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Normal3iv

# Function: __glle_Normal3sv
# Declared: Line 334 (Source lines: 335-340)
# Address: 0x0d98a460 - 0x0d98a4a4 (Size: 68 bytes, Frame: 32)
.globl __glle_Normal3sv
.ent __glle_Normal3sv
__glle_Normal3sv:
    # Line 335
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26924
    addu	$gp,$t9,$at
    # Line 339
    lw	$t9,5796($zero)
    # Line 335
    sd	$s8,8($sp)
    # Line 339
    nop
    # Line 335
    sd	$ra,0($sp)
    # Line 339
    jalr	$t9
    # Line 335
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 340
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Normal3sv

# Function: __glle_RasterPos2dv
# Declared: Line 345 (Source lines: 346-351)
# Address: 0x0d98a4b0 - 0x0d98a4f4 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos2dv
.ent __glle_RasterPos2dv
__glle_RasterPos2dv:
    # Line 346
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26844
    addu	$gp,$t9,$at
    # Line 350
    lw	$t9,5932($zero)
    # Line 346
    sd	$s8,8($sp)
    # Line 350
    nop
    # Line 346
    sd	$ra,0($sp)
    # Line 350
    jalr	$t9
    # Line 346
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 351
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos2dv

# Function: __glle_RasterPos2fv
# Declared: Line 356 (Source lines: 357-362)
# Address: 0x0d98a500 - 0x0d98a544 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos2fv
.ent __glle_RasterPos2fv
__glle_RasterPos2fv:
    # Line 357
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26764
    addu	$gp,$t9,$at
    # Line 361
    lw	$t9,5940($zero)
    # Line 357
    sd	$s8,8($sp)
    # Line 361
    nop
    # Line 357
    sd	$ra,0($sp)
    # Line 361
    jalr	$t9
    # Line 357
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 362
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos2fv

# Function: __glle_RasterPos2iv
# Declared: Line 367 (Source lines: 368-373)
# Address: 0x0d98a550 - 0x0d98a594 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos2iv
.ent __glle_RasterPos2iv
__glle_RasterPos2iv:
    # Line 368
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26684
    addu	$gp,$t9,$at
    # Line 372
    lw	$t9,5948($zero)
    # Line 368
    sd	$s8,8($sp)
    # Line 372
    nop
    # Line 368
    sd	$ra,0($sp)
    # Line 372
    jalr	$t9
    # Line 368
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 373
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos2iv

# Function: __glle_RasterPos2sv
# Declared: Line 378 (Source lines: 379-384)
# Address: 0x0d98a5a0 - 0x0d98a5e4 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos2sv
.ent __glle_RasterPos2sv
__glle_RasterPos2sv:
    # Line 379
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26604
    addu	$gp,$t9,$at
    # Line 383
    lw	$t9,5956($zero)
    # Line 379
    sd	$s8,8($sp)
    # Line 383
    nop
    # Line 379
    sd	$ra,0($sp)
    # Line 383
    jalr	$t9
    # Line 379
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 384
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos2sv

# Function: __glle_RasterPos3dv
# Declared: Line 389 (Source lines: 390-395)
# Address: 0x0d98a5f0 - 0x0d98a634 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos3dv
.ent __glle_RasterPos3dv
__glle_RasterPos3dv:
    # Line 390
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26524
    addu	$gp,$t9,$at
    # Line 394
    lw	$t9,5964($zero)
    # Line 390
    sd	$s8,8($sp)
    # Line 394
    nop
    # Line 390
    sd	$ra,0($sp)
    # Line 394
    jalr	$t9
    # Line 390
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 395
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos3dv

# Function: __glle_RasterPos3fv
# Declared: Line 400 (Source lines: 401-406)
# Address: 0x0d98a640 - 0x0d98a684 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos3fv
.ent __glle_RasterPos3fv
__glle_RasterPos3fv:
    # Line 401
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26444
    addu	$gp,$t9,$at
    # Line 405
    lw	$t9,5972($zero)
    # Line 401
    sd	$s8,8($sp)
    # Line 405
    nop
    # Line 401
    sd	$ra,0($sp)
    # Line 405
    jalr	$t9
    # Line 401
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 406
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos3fv

# Function: __glle_RasterPos3iv
# Declared: Line 411 (Source lines: 412-417)
# Address: 0x0d98a690 - 0x0d98a6d4 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos3iv
.ent __glle_RasterPos3iv
__glle_RasterPos3iv:
    # Line 412
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26364
    addu	$gp,$t9,$at
    # Line 416
    lw	$t9,5980($zero)
    # Line 412
    sd	$s8,8($sp)
    # Line 416
    nop
    # Line 412
    sd	$ra,0($sp)
    # Line 416
    jalr	$t9
    # Line 412
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 417
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos3iv

# Function: __glle_RasterPos3sv
# Declared: Line 422 (Source lines: 423-428)
# Address: 0x0d98a6e0 - 0x0d98a724 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos3sv
.ent __glle_RasterPos3sv
__glle_RasterPos3sv:
    # Line 423
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26284
    addu	$gp,$t9,$at
    # Line 427
    lw	$t9,5988($zero)
    # Line 423
    sd	$s8,8($sp)
    # Line 427
    nop
    # Line 423
    sd	$ra,0($sp)
    # Line 427
    jalr	$t9
    # Line 423
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 428
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos3sv

# Function: __glle_RasterPos4dv
# Declared: Line 433 (Source lines: 434-439)
# Address: 0x0d98a730 - 0x0d98a774 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos4dv
.ent __glle_RasterPos4dv
__glle_RasterPos4dv:
    # Line 434
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26204
    addu	$gp,$t9,$at
    # Line 438
    lw	$t9,5996($zero)
    # Line 434
    sd	$s8,8($sp)
    # Line 438
    nop
    # Line 434
    sd	$ra,0($sp)
    # Line 438
    jalr	$t9
    # Line 434
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 439
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos4dv

# Function: __glle_RasterPos4fv
# Declared: Line 444 (Source lines: 445-450)
# Address: 0x0d98a780 - 0x0d98a7c4 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos4fv
.ent __glle_RasterPos4fv
__glle_RasterPos4fv:
    # Line 445
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26124
    addu	$gp,$t9,$at
    # Line 449
    lw	$t9,6004($zero)
    # Line 445
    sd	$s8,8($sp)
    # Line 449
    nop
    # Line 445
    sd	$ra,0($sp)
    # Line 449
    jalr	$t9
    # Line 445
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 450
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos4fv

# Function: __glle_RasterPos4iv
# Declared: Line 455 (Source lines: 456-461)
# Address: 0x0d98a7d0 - 0x0d98a814 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos4iv
.ent __glle_RasterPos4iv
__glle_RasterPos4iv:
    # Line 456
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,26044
    addu	$gp,$t9,$at
    # Line 460
    lw	$t9,6012($zero)
    # Line 456
    sd	$s8,8($sp)
    # Line 460
    nop
    # Line 456
    sd	$ra,0($sp)
    # Line 460
    jalr	$t9
    # Line 456
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 461
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos4iv

# Function: __glle_RasterPos4sv
# Declared: Line 466 (Source lines: 467-472)
# Address: 0x0d98a820 - 0x0d98a864 (Size: 68 bytes, Frame: 32)
.globl __glle_RasterPos4sv
.ent __glle_RasterPos4sv
__glle_RasterPos4sv:
    # Line 467
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25964
    addu	$gp,$t9,$at
    # Line 471
    lw	$t9,6020($zero)
    # Line 467
    sd	$s8,8($sp)
    # Line 471
    nop
    # Line 467
    sd	$ra,0($sp)
    # Line 471
    jalr	$t9
    # Line 467
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 472
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_RasterPos4sv

# Function: __glle_Rectdv
# Declared: Line 477 (Source lines: 478-483)
# Address: 0x0d98a870 - 0x0d98a8b8 (Size: 72 bytes, Frame: 32)
.globl __glle_Rectdv
.ent __glle_Rectdv
__glle_Rectdv:
    # Line 478
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25884
    addu	$gp,$t9,$at
    # Line 482
    lw	$t9,6028($zero)
    addiu	$a1,$a0,16
    # Line 478
    sd	$s8,8($sp)
    # Line 482
    nop
    # Line 478
    sd	$ra,0($sp)
    # Line 482
    jalr	$t9
    # Line 478
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 483
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Rectdv

# Function: __glle_Rectfv
# Declared: Line 488 (Source lines: 489-494)
# Address: 0x0d98a8c0 - 0x0d98a908 (Size: 72 bytes, Frame: 32)
.globl __glle_Rectfv
.ent __glle_Rectfv
__glle_Rectfv:
    # Line 489
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25804
    addu	$gp,$t9,$at
    # Line 493
    lw	$t9,6036($zero)
    addiu	$a1,$a0,8
    # Line 489
    sd	$s8,8($sp)
    # Line 493
    nop
    # Line 489
    sd	$ra,0($sp)
    # Line 493
    jalr	$t9
    # Line 489
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 494
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Rectfv

# Function: __glle_Rectiv
# Declared: Line 499 (Source lines: 500-505)
# Address: 0x0d98a910 - 0x0d98a958 (Size: 72 bytes, Frame: 32)
.globl __glle_Rectiv
.ent __glle_Rectiv
__glle_Rectiv:
    # Line 500
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25724
    addu	$gp,$t9,$at
    # Line 504
    lw	$t9,6044($zero)
    addiu	$a1,$a0,8
    # Line 500
    sd	$s8,8($sp)
    # Line 504
    nop
    # Line 500
    sd	$ra,0($sp)
    # Line 504
    jalr	$t9
    # Line 500
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 505
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Rectiv

# Function: __glle_Rectsv
# Declared: Line 510 (Source lines: 511-516)
# Address: 0x0d98a960 - 0x0d98a9a8 (Size: 72 bytes, Frame: 32)
.globl __glle_Rectsv
.ent __glle_Rectsv
__glle_Rectsv:
    # Line 511
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25644
    addu	$gp,$t9,$at
    # Line 515
    lw	$t9,6052($zero)
    addiu	$a1,$a0,4
    # Line 511
    sd	$s8,8($sp)
    # Line 515
    nop
    # Line 511
    sd	$ra,0($sp)
    # Line 515
    jalr	$t9
    # Line 511
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 516
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Rectsv

# Function: __glle_TexCoord1dv
# Declared: Line 521 (Source lines: 522-527)
# Address: 0x0d98a9b0 - 0x0d98a9f4 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord1dv
.ent __glle_TexCoord1dv
__glle_TexCoord1dv:
    # Line 522
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25564
    addu	$gp,$t9,$at
    # Line 526
    lw	$t9,5804($zero)
    # Line 522
    sd	$s8,8($sp)
    # Line 526
    nop
    # Line 522
    sd	$ra,0($sp)
    # Line 526
    jalr	$t9
    # Line 522
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 527
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord1dv

# Function: __glle_TexCoord1fv
# Declared: Line 532 (Source lines: 533-538)
# Address: 0x0d98aa00 - 0x0d98aa44 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord1fv
.ent __glle_TexCoord1fv
__glle_TexCoord1fv:
    # Line 533
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25484
    addu	$gp,$t9,$at
    # Line 537
    lw	$t9,5812($zero)
    # Line 533
    sd	$s8,8($sp)
    # Line 537
    nop
    # Line 533
    sd	$ra,0($sp)
    # Line 537
    jalr	$t9
    # Line 533
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 538
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord1fv

# Function: __glle_TexCoord1iv
# Declared: Line 543 (Source lines: 544-549)
# Address: 0x0d98aa50 - 0x0d98aa94 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord1iv
.ent __glle_TexCoord1iv
__glle_TexCoord1iv:
    # Line 544
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25404
    addu	$gp,$t9,$at
    # Line 548
    lw	$t9,5820($zero)
    # Line 544
    sd	$s8,8($sp)
    # Line 548
    nop
    # Line 544
    sd	$ra,0($sp)
    # Line 548
    jalr	$t9
    # Line 544
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 549
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord1iv

# Function: __glle_TexCoord1sv
# Declared: Line 554 (Source lines: 555-560)
# Address: 0x0d98aaa0 - 0x0d98aae4 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord1sv
.ent __glle_TexCoord1sv
__glle_TexCoord1sv:
    # Line 555
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25324
    addu	$gp,$t9,$at
    # Line 559
    lw	$t9,5828($zero)
    # Line 555
    sd	$s8,8($sp)
    # Line 559
    nop
    # Line 555
    sd	$ra,0($sp)
    # Line 559
    jalr	$t9
    # Line 555
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 560
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord1sv

# Function: __glle_TexCoord2dv
# Declared: Line 565 (Source lines: 566-571)
# Address: 0x0d98aaf0 - 0x0d98ab34 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord2dv
.ent __glle_TexCoord2dv
__glle_TexCoord2dv:
    # Line 566
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25244
    addu	$gp,$t9,$at
    # Line 570
    lw	$t9,5836($zero)
    # Line 566
    sd	$s8,8($sp)
    # Line 570
    nop
    # Line 566
    sd	$ra,0($sp)
    # Line 570
    jalr	$t9
    # Line 566
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 571
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord2dv

# Function: __glle_TexCoord2fv
# Declared: Line 576 (Source lines: 577-582)
# Address: 0x0d98ab40 - 0x0d98ab84 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord2fv
.ent __glle_TexCoord2fv
__glle_TexCoord2fv:
    # Line 577
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25164
    addu	$gp,$t9,$at
    # Line 581
    lw	$t9,5844($zero)
    # Line 577
    sd	$s8,8($sp)
    # Line 581
    nop
    # Line 577
    sd	$ra,0($sp)
    # Line 581
    jalr	$t9
    # Line 577
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 582
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord2fv

# Function: __glle_TexCoord2iv
# Declared: Line 587 (Source lines: 588-593)
# Address: 0x0d98ab90 - 0x0d98abd4 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord2iv
.ent __glle_TexCoord2iv
__glle_TexCoord2iv:
    # Line 588
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25084
    addu	$gp,$t9,$at
    # Line 592
    lw	$t9,5852($zero)
    # Line 588
    sd	$s8,8($sp)
    # Line 592
    nop
    # Line 588
    sd	$ra,0($sp)
    # Line 592
    jalr	$t9
    # Line 588
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 593
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord2iv

# Function: __glle_TexCoord2sv
# Declared: Line 598 (Source lines: 599-604)
# Address: 0x0d98abe0 - 0x0d98ac24 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord2sv
.ent __glle_TexCoord2sv
__glle_TexCoord2sv:
    # Line 599
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,25004
    addu	$gp,$t9,$at
    # Line 603
    lw	$t9,5860($zero)
    # Line 599
    sd	$s8,8($sp)
    # Line 603
    nop
    # Line 599
    sd	$ra,0($sp)
    # Line 603
    jalr	$t9
    # Line 599
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 604
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord2sv

# Function: __glle_TexCoord3dv
# Declared: Line 609 (Source lines: 610-615)
# Address: 0x0d98ac30 - 0x0d98ac74 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord3dv
.ent __glle_TexCoord3dv
__glle_TexCoord3dv:
    # Line 610
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24924
    addu	$gp,$t9,$at
    # Line 614
    lw	$t9,5868($zero)
    # Line 610
    sd	$s8,8($sp)
    # Line 614
    nop
    # Line 610
    sd	$ra,0($sp)
    # Line 614
    jalr	$t9
    # Line 610
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 615
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord3dv

# Function: __glle_TexCoord3fv
# Declared: Line 620 (Source lines: 621-626)
# Address: 0x0d98ac80 - 0x0d98acc4 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord3fv
.ent __glle_TexCoord3fv
__glle_TexCoord3fv:
    # Line 621
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24844
    addu	$gp,$t9,$at
    # Line 625
    lw	$t9,5876($zero)
    # Line 621
    sd	$s8,8($sp)
    # Line 625
    nop
    # Line 621
    sd	$ra,0($sp)
    # Line 625
    jalr	$t9
    # Line 621
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 626
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord3fv

# Function: __glle_TexCoord3iv
# Declared: Line 631 (Source lines: 632-637)
# Address: 0x0d98acd0 - 0x0d98ad14 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord3iv
.ent __glle_TexCoord3iv
__glle_TexCoord3iv:
    # Line 632
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24764
    addu	$gp,$t9,$at
    # Line 636
    lw	$t9,5884($zero)
    # Line 632
    sd	$s8,8($sp)
    # Line 636
    nop
    # Line 632
    sd	$ra,0($sp)
    # Line 636
    jalr	$t9
    # Line 632
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 637
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord3iv

# Function: __glle_TexCoord3sv
# Declared: Line 642 (Source lines: 643-648)
# Address: 0x0d98ad20 - 0x0d98ad64 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord3sv
.ent __glle_TexCoord3sv
__glle_TexCoord3sv:
    # Line 643
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24684
    addu	$gp,$t9,$at
    # Line 647
    lw	$t9,5892($zero)
    # Line 643
    sd	$s8,8($sp)
    # Line 647
    nop
    # Line 643
    sd	$ra,0($sp)
    # Line 647
    jalr	$t9
    # Line 643
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 648
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord3sv

# Function: __glle_TexCoord4dv
# Declared: Line 653 (Source lines: 654-659)
# Address: 0x0d98ad70 - 0x0d98adb4 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord4dv
.ent __glle_TexCoord4dv
__glle_TexCoord4dv:
    # Line 654
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24604
    addu	$gp,$t9,$at
    # Line 658
    lw	$t9,5900($zero)
    # Line 654
    sd	$s8,8($sp)
    # Line 658
    nop
    # Line 654
    sd	$ra,0($sp)
    # Line 658
    jalr	$t9
    # Line 654
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 659
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord4dv

# Function: __glle_TexCoord4fv
# Declared: Line 664 (Source lines: 665-670)
# Address: 0x0d98adc0 - 0x0d98ae04 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord4fv
.ent __glle_TexCoord4fv
__glle_TexCoord4fv:
    # Line 665
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24524
    addu	$gp,$t9,$at
    # Line 669
    lw	$t9,5908($zero)
    # Line 665
    sd	$s8,8($sp)
    # Line 669
    nop
    # Line 665
    sd	$ra,0($sp)
    # Line 669
    jalr	$t9
    # Line 665
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 670
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord4fv

# Function: __glle_TexCoord4iv
# Declared: Line 675 (Source lines: 676-681)
# Address: 0x0d98ae10 - 0x0d98ae54 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord4iv
.ent __glle_TexCoord4iv
__glle_TexCoord4iv:
    # Line 676
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24444
    addu	$gp,$t9,$at
    # Line 680
    lw	$t9,5916($zero)
    # Line 676
    sd	$s8,8($sp)
    # Line 680
    nop
    # Line 676
    sd	$ra,0($sp)
    # Line 680
    jalr	$t9
    # Line 676
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 681
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord4iv

# Function: __glle_TexCoord4sv
# Declared: Line 686 (Source lines: 687-692)
# Address: 0x0d98ae60 - 0x0d98aea4 (Size: 68 bytes, Frame: 32)
.globl __glle_TexCoord4sv
.ent __glle_TexCoord4sv
__glle_TexCoord4sv:
    # Line 687
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24364
    addu	$gp,$t9,$at
    # Line 691
    lw	$t9,5924($zero)
    # Line 687
    sd	$s8,8($sp)
    # Line 691
    nop
    # Line 687
    sd	$ra,0($sp)
    # Line 691
    jalr	$t9
    # Line 687
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 692
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TexCoord4sv

# Function: __glle_Vertex2dv
# Declared: Line 697 (Source lines: 698-703)
# Address: 0x0d98aeb0 - 0x0d98aef4 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex2dv
.ent __glle_Vertex2dv
__glle_Vertex2dv:
    # Line 698
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24284
    addu	$gp,$t9,$at
    # Line 702
    lw	$t9,5500($zero)
    # Line 698
    sd	$s8,8($sp)
    # Line 702
    nop
    # Line 698
    sd	$ra,0($sp)
    # Line 702
    jalr	$t9
    # Line 698
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 703
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex2dv

# Function: __glle_Vertex2fv
# Declared: Line 708 (Source lines: 709-714)
# Address: 0x0d98af00 - 0x0d98af44 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex2fv
.ent __glle_Vertex2fv
__glle_Vertex2fv:
    # Line 709
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24204
    addu	$gp,$t9,$at
    # Line 713
    lw	$t9,5508($zero)
    # Line 709
    sd	$s8,8($sp)
    # Line 713
    nop
    # Line 709
    sd	$ra,0($sp)
    # Line 713
    jalr	$t9
    # Line 709
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 714
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex2fv

# Function: __glle_Vertex2iv
# Declared: Line 719 (Source lines: 720-725)
# Address: 0x0d98af50 - 0x0d98af94 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex2iv
.ent __glle_Vertex2iv
__glle_Vertex2iv:
    # Line 720
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24124
    addu	$gp,$t9,$at
    # Line 724
    lw	$t9,5516($zero)
    # Line 720
    sd	$s8,8($sp)
    # Line 724
    nop
    # Line 720
    sd	$ra,0($sp)
    # Line 724
    jalr	$t9
    # Line 720
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 725
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex2iv

# Function: __glle_Vertex2sv
# Declared: Line 730 (Source lines: 731-736)
# Address: 0x0d98afa0 - 0x0d98afe4 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex2sv
.ent __glle_Vertex2sv
__glle_Vertex2sv:
    # Line 731
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,24044
    addu	$gp,$t9,$at
    # Line 735
    lw	$t9,5524($zero)
    # Line 731
    sd	$s8,8($sp)
    # Line 735
    nop
    # Line 731
    sd	$ra,0($sp)
    # Line 735
    jalr	$t9
    # Line 731
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 736
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex2sv

# Function: __glle_Vertex3dv
# Declared: Line 741 (Source lines: 742-747)
# Address: 0x0d98aff0 - 0x0d98b034 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex3dv
.ent __glle_Vertex3dv
__glle_Vertex3dv:
    # Line 742
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23964
    addu	$gp,$t9,$at
    # Line 746
    lw	$t9,5532($zero)
    # Line 742
    sd	$s8,8($sp)
    # Line 746
    nop
    # Line 742
    sd	$ra,0($sp)
    # Line 746
    jalr	$t9
    # Line 742
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 747
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex3dv

# Function: __glle_Vertex3fv
# Declared: Line 752 (Source lines: 753-758)
# Address: 0x0d98b040 - 0x0d98b084 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex3fv
.ent __glle_Vertex3fv
__glle_Vertex3fv:
    # Line 753
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23884
    addu	$gp,$t9,$at
    # Line 757
    lw	$t9,5540($zero)
    # Line 753
    sd	$s8,8($sp)
    # Line 757
    nop
    # Line 753
    sd	$ra,0($sp)
    # Line 757
    jalr	$t9
    # Line 753
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 758
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex3fv

# Function: __glle_Vertex3iv
# Declared: Line 763 (Source lines: 764-769)
# Address: 0x0d98b090 - 0x0d98b0d4 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex3iv
.ent __glle_Vertex3iv
__glle_Vertex3iv:
    # Line 764
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23804
    addu	$gp,$t9,$at
    # Line 768
    lw	$t9,5548($zero)
    # Line 764
    sd	$s8,8($sp)
    # Line 768
    nop
    # Line 764
    sd	$ra,0($sp)
    # Line 768
    jalr	$t9
    # Line 764
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 769
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex3iv

# Function: __glle_Vertex3sv
# Declared: Line 774 (Source lines: 775-780)
# Address: 0x0d98b0e0 - 0x0d98b124 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex3sv
.ent __glle_Vertex3sv
__glle_Vertex3sv:
    # Line 775
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23724
    addu	$gp,$t9,$at
    # Line 779
    lw	$t9,5556($zero)
    # Line 775
    sd	$s8,8($sp)
    # Line 779
    nop
    # Line 775
    sd	$ra,0($sp)
    # Line 779
    jalr	$t9
    # Line 775
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 780
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex3sv

# Function: __glle_Vertex4dv
# Declared: Line 785 (Source lines: 786-791)
# Address: 0x0d98b130 - 0x0d98b174 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex4dv
.ent __glle_Vertex4dv
__glle_Vertex4dv:
    # Line 786
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23644
    addu	$gp,$t9,$at
    # Line 790
    lw	$t9,5564($zero)
    # Line 786
    sd	$s8,8($sp)
    # Line 790
    nop
    # Line 786
    sd	$ra,0($sp)
    # Line 790
    jalr	$t9
    # Line 786
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 791
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex4dv

# Function: __glle_Vertex4fv
# Declared: Line 796 (Source lines: 797-802)
# Address: 0x0d98b180 - 0x0d98b1c4 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex4fv
.ent __glle_Vertex4fv
__glle_Vertex4fv:
    # Line 797
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23564
    addu	$gp,$t9,$at
    # Line 801
    lw	$t9,5572($zero)
    # Line 797
    sd	$s8,8($sp)
    # Line 801
    nop
    # Line 797
    sd	$ra,0($sp)
    # Line 801
    jalr	$t9
    # Line 797
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 802
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex4fv

# Function: __glle_Vertex4iv
# Declared: Line 807 (Source lines: 808-813)
# Address: 0x0d98b1d0 - 0x0d98b214 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex4iv
.ent __glle_Vertex4iv
__glle_Vertex4iv:
    # Line 808
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23484
    addu	$gp,$t9,$at
    # Line 812
    lw	$t9,5580($zero)
    # Line 808
    sd	$s8,8($sp)
    # Line 812
    nop
    # Line 808
    sd	$ra,0($sp)
    # Line 812
    jalr	$t9
    # Line 808
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 813
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex4iv

# Function: __glle_Vertex4sv
# Declared: Line 818 (Source lines: 819-824)
# Address: 0x0d98b220 - 0x0d98b264 (Size: 68 bytes, Frame: 32)
.globl __glle_Vertex4sv
.ent __glle_Vertex4sv
__glle_Vertex4sv:
    # Line 819
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23404
    addu	$gp,$t9,$at
    # Line 823
    lw	$t9,5588($zero)
    # Line 819
    sd	$s8,8($sp)
    # Line 823
    nop
    # Line 819
    sd	$ra,0($sp)
    # Line 823
    jalr	$t9
    # Line 819
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 824
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Vertex4sv

# Function: __glle_ClipPlane
# Declared: Line 828 (Source lines: 829-834)
# Address: 0x0d98b270 - 0x0d98b2b8 (Size: 72 bytes, Frame: 32)
.globl __glle_ClipPlane
.ent __glle_ClipPlane
__glle_ClipPlane:
    # Line 829
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23324
    addu	$gp,$t9,$at
    # Line 833
    lw	$t9,4224($zero)
    # Line 829
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 833
    lw	$a0,32($a0)
    # Line 829
    sd	$ra,0($sp)
    # Line 833
    jalr	$t9
    move	$a1,$s8
    ld	$ra,0($sp)
    # Line 834
    ld	$gp,16($sp)
    addiu	$v0,$s8,40
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ClipPlane

# Function: __glle_ColorMaterial
# Declared: Line 838 (Source lines: 839-844)
# Address: 0x0d98b2c0 - 0x0d98b308 (Size: 72 bytes, Frame: 32)
.globl __glle_ColorMaterial
.ent __glle_ColorMaterial
__glle_ColorMaterial:
    # Line 839
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23244
    addu	$gp,$t9,$at
    # Line 843
    lw	$t9,4228($zero)
    # Line 839
    move	$s8,$a0
    # Line 843
    lw	$a0,0($a0)
    # Line 839
    sd	$ra,0($sp)
    # Line 843
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 844
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ColorMaterial

# Function: __glle_CullFace
# Declared: Line 848 (Source lines: 849-854)
# Address: 0x0d98b310 - 0x0d98b354 (Size: 68 bytes, Frame: 32)
.globl __glle_CullFace
.ent __glle_CullFace
__glle_CullFace:
    # Line 849
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23164
    addu	$gp,$t9,$at
    # Line 853
    lw	$t9,4232($zero)
    # Line 849
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 853
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 854
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CullFace

# Function: __glle_Fogf
# Declared: Line 858 (Source lines: 859-864)
# Address: 0x0d98b360 - 0x0d98b3a8 (Size: 72 bytes, Frame: 32)
.globl __glle_Fogf
.ent __glle_Fogf
__glle_Fogf:
    # Line 859
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,23084
    addu	$gp,$t9,$at
    # Line 863
    lw	$t9,4236($zero)
    # Line 859
    move	$s8,$a0
    # Line 863
    lw	$a0,0($a0)
    # Line 859
    sd	$ra,0($sp)
    # Line 863
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 864
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Fogf

# Function: __glle_Fogfv
# Declared: Line 868 (Source lines: 869-879)
# Address: 0x0d98b3b0 - 0x0d98b40c (Size: 92 bytes, Frame: 32)
.globl __glle_Fogfv
.ent __glle_Fogfv
__glle_Fogfv:
    # Line 869
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,23004
    addu	$gp,$t9,$at
    # Line 875
    lw	$t9,4240($zero)
    # Line 869
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 875
    lw	$a0,0($a0)
    # Line 869
    sd	$ra,0($sp)
    # Line 875
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 877
    # lw $t9, -24800($gp) # &__glFogfv_size
    jal	__glFogfv_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 879
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_Fogfv

# Function: __glle_Fogi
# Declared: Line 883 (Source lines: 884-889)
# Address: 0x0d98b410 - 0x0d98b458 (Size: 72 bytes, Frame: 32)
.globl __glle_Fogi
.ent __glle_Fogi
__glle_Fogi:
    # Line 884
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,22908
    addu	$gp,$t9,$at
    # Line 888
    lw	$t9,4244($zero)
    # Line 884
    move	$s8,$a0
    # Line 888
    lw	$a0,0($a0)
    # Line 884
    sd	$ra,0($sp)
    # Line 888
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 889
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Fogi

# Function: __glle_Fogiv
# Declared: Line 893 (Source lines: 894-904)
# Address: 0x0d98b460 - 0x0d98b4bc (Size: 92 bytes, Frame: 32)
.globl __glle_Fogiv
.ent __glle_Fogiv
__glle_Fogiv:
    # Line 894
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,22828
    addu	$gp,$t9,$at
    # Line 900
    lw	$t9,4248($zero)
    # Line 894
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 900
    lw	$a0,0($a0)
    # Line 894
    sd	$ra,0($sp)
    # Line 900
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 902
    # lw $t9, -24804($gp) # &__glFogiv_size
    jal	__glFogiv_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 904
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_Fogiv

# Function: __glle_FrontFace
# Declared: Line 908 (Source lines: 909-914)
# Address: 0x0d98b4c0 - 0x0d98b504 (Size: 68 bytes, Frame: 32)
.globl __glle_FrontFace
.ent __glle_FrontFace
__glle_FrontFace:
    # Line 909
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,22732
    addu	$gp,$t9,$at
    # Line 913
    lw	$t9,4252($zero)
    # Line 909
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 913
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 914
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FrontFace

# Function: __glle_Hint
# Declared: Line 918 (Source lines: 919-924)
# Address: 0x0d98b510 - 0x0d98b558 (Size: 72 bytes, Frame: 32)
.globl __glle_Hint
.ent __glle_Hint
__glle_Hint:
    # Line 919
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,22652
    addu	$gp,$t9,$at
    # Line 923
    lw	$t9,4256($zero)
    # Line 919
    move	$s8,$a0
    # Line 923
    lw	$a0,0($a0)
    # Line 919
    sd	$ra,0($sp)
    # Line 923
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 924
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Hint

# Function: __glle_Lightfv
# Declared: Line 929 (Source lines: 930-940)
# Address: 0x0d98b560 - 0x0d98b5c0 (Size: 96 bytes, Frame: 32)
.globl __glle_Lightfv
.ent __glle_Lightfv
__glle_Lightfv:
    # Line 930
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,22572
    addu	$gp,$t9,$at
    # Line 936
    lw	$t9,4264($zero)
    # Line 930
    move	$s0,$a0
    # Line 936
    lw	$a0,0($a0)
    # Line 930
    sd	$ra,0($sp)
    # Line 936
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 938
    # lw $t9, -24796($gp) # &__glLightfv_size
    jal	__glLightfv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 940
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Lightfv

# Function: __glle_Lightiv
# Declared: Line 945 (Source lines: 946-956)
# Address: 0x0d98b5c0 - 0x0d98b620 (Size: 96 bytes, Frame: 32)
.globl __glle_Lightiv
.ent __glle_Lightiv
__glle_Lightiv:
    # Line 946
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,22476
    addu	$gp,$t9,$at
    # Line 952
    lw	$t9,4272($zero)
    # Line 946
    move	$s0,$a0
    # Line 952
    lw	$a0,0($a0)
    # Line 946
    sd	$ra,0($sp)
    # Line 952
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 954
    # lw $t9, -24792($gp) # &__glLightiv_size
    jal	__glLightiv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 956
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Lightiv

# Function: __glle_LightModelfv
# Declared: Line 961 (Source lines: 962-972)
# Address: 0x0d98b620 - 0x0d98b67c (Size: 92 bytes, Frame: 32)
.globl __glle_LightModelfv
.ent __glle_LightModelfv
__glle_LightModelfv:
    # Line 962
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,22380
    addu	$gp,$t9,$at
    # Line 968
    lw	$t9,4280($zero)
    # Line 962
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 968
    lw	$a0,0($a0)
    # Line 962
    sd	$ra,0($sp)
    # Line 968
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 970
    # lw $t9, -24788($gp) # &__glLightModelfv_size
    jal	__glLightModelfv_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 972
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_LightModelfv

# Function: __glle_LightModeliv
# Declared: Line 977 (Source lines: 978-988)
# Address: 0x0d98b680 - 0x0d98b6dc (Size: 92 bytes, Frame: 32)
.globl __glle_LightModeliv
.ent __glle_LightModeliv
__glle_LightModeliv:
    # Line 978
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,22284
    addu	$gp,$t9,$at
    # Line 984
    lw	$t9,4288($zero)
    # Line 978
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 984
    lw	$a0,0($a0)
    # Line 978
    sd	$ra,0($sp)
    # Line 984
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 986
    # lw $t9, -24784($gp) # &__glLightModeliv_size
    jal	__glLightModeliv_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 988
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_LightModeliv

# Function: __glle_LineStipple
# Declared: Line 992 (Source lines: 993-998)
# Address: 0x0d98b6e0 - 0x0d98b728 (Size: 72 bytes, Frame: 32)
.globl __glle_LineStipple
.ent __glle_LineStipple
__glle_LineStipple:
    # Line 993
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,22188
    addu	$gp,$t9,$at
    # Line 997
    lw	$t9,4292($zero)
    # Line 993
    move	$s8,$a0
    # Line 997
    lw	$a0,0($a0)
    # Line 993
    sd	$ra,0($sp)
    # Line 997
    jalr	$t9
    lhu	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 998
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LineStipple

# Function: __glle_LineWidth
# Declared: Line 1002 (Source lines: 1003-1008)
# Address: 0x0d98b730 - 0x0d98b774 (Size: 68 bytes, Frame: 32)
.globl __glle_LineWidth
.ent __glle_LineWidth
__glle_LineWidth:
    # Line 1003
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,22108
    addu	$gp,$t9,$at
    # Line 1007
    lw	$t9,4296($zero)
    lwc1	$f12,0($a0)
    # Line 1003
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1007
    jalr	$t9
    # Line 1003
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1008
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LineWidth

# Function: __glle_Materialfv
# Declared: Line 1013 (Source lines: 1014-1024)
# Address: 0x0d98b780 - 0x0d98b7e0 (Size: 96 bytes, Frame: 32)
.globl __glle_Materialfv
.ent __glle_Materialfv
__glle_Materialfv:
    # Line 1014
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,22028
    addu	$gp,$t9,$at
    # Line 1020
    lw	$t9,4304($zero)
    # Line 1014
    move	$s0,$a0
    # Line 1020
    lw	$a0,0($a0)
    # Line 1014
    sd	$ra,0($sp)
    # Line 1020
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1022
    # lw $t9, -24780($gp) # &__glMaterialfv_size
    jal	__glMaterialfv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1024
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Materialfv

# Function: __glle_Materialiv
# Declared: Line 1029 (Source lines: 1030-1040)
# Address: 0x0d98b7e0 - 0x0d98b840 (Size: 96 bytes, Frame: 32)
.globl __glle_Materialiv
.ent __glle_Materialiv
__glle_Materialiv:
    # Line 1030
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,21932
    addu	$gp,$t9,$at
    # Line 1036
    lw	$t9,4312($zero)
    # Line 1030
    move	$s0,$a0
    # Line 1036
    lw	$a0,0($a0)
    # Line 1030
    sd	$ra,0($sp)
    # Line 1036
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1038
    # lw $t9, -24776($gp) # &__glMaterialiv_size
    jal	__glMaterialiv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1040
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_Materialiv

# Function: __glle_PointSize
# Declared: Line 1044 (Source lines: 1045-1050)
# Address: 0x0d98b840 - 0x0d98b884 (Size: 68 bytes, Frame: 32)
.globl __glle_PointSize
.ent __glle_PointSize
__glle_PointSize:
    # Line 1045
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,21836
    addu	$gp,$t9,$at
    # Line 1049
    lw	$t9,4316($zero)
    lwc1	$f12,0($a0)
    # Line 1045
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1049
    jalr	$t9
    # Line 1045
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1050
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PointSize

# Function: __glle_PolygonMode
# Declared: Line 1054 (Source lines: 1055-1060)
# Address: 0x0d98b890 - 0x0d98b8d8 (Size: 72 bytes, Frame: 32)
.globl __glle_PolygonMode
.ent __glle_PolygonMode
__glle_PolygonMode:
    # Line 1055
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,21756
    addu	$gp,$t9,$at
    # Line 1059
    lw	$t9,4320($zero)
    # Line 1055
    move	$s8,$a0
    # Line 1059
    lw	$a0,0($a0)
    # Line 1055
    sd	$ra,0($sp)
    # Line 1059
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1060
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PolygonMode

# Function: __glle_Scissor
# Declared: Line 1065 (Source lines: 1066-1071)
# Address: 0x0d98b8e0 - 0x0d98b930 (Size: 80 bytes, Frame: 32)
.globl __glle_Scissor
.ent __glle_Scissor
__glle_Scissor:
    # Line 1066
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1070
    lw	$a0,0($a0)
    # Line 1066
    sd	$ra,0($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,21676
    addu	$gp,$t9,$at
    # Line 1070
    lw	$t9,4328($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1071
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Scissor

# Function: __glle_ShadeModel
# Declared: Line 1075 (Source lines: 1076-1081)
# Address: 0x0d98b930 - 0x0d98b974 (Size: 68 bytes, Frame: 32)
.globl __glle_ShadeModel
.ent __glle_ShadeModel
__glle_ShadeModel:
    # Line 1076
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,21596
    addu	$gp,$t9,$at
    # Line 1080
    lw	$t9,4332($zero)
    # Line 1076
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1080
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1081
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ShadeModel

# Function: __glle_TexParameterfv
# Declared: Line 1086 (Source lines: 1087-1097)
# Address: 0x0d98b980 - 0x0d98b9e0 (Size: 96 bytes, Frame: 32)
.globl __glle_TexParameterfv
.ent __glle_TexParameterfv
__glle_TexParameterfv:
    # Line 1087
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,21516
    addu	$gp,$t9,$at
    # Line 1093
    lw	$t9,4340($zero)
    # Line 1087
    move	$s0,$a0
    # Line 1093
    lw	$a0,0($a0)
    # Line 1087
    sd	$ra,0($sp)
    # Line 1093
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1095
    # lw $t9, -24372($gp) # &__glTexParameterfv_size
    jal	__glTexParameterfv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1097
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexParameterfv

# Function: __glle_TexParameteriv
# Declared: Line 1102 (Source lines: 1103-1113)
# Address: 0x0d98b9e0 - 0x0d98ba40 (Size: 96 bytes, Frame: 32)
.globl __glle_TexParameteriv
.ent __glle_TexParameteriv
__glle_TexParameteriv:
    # Line 1103
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,21420
    addu	$gp,$t9,$at
    # Line 1109
    lw	$t9,4348($zero)
    # Line 1103
    move	$s0,$a0
    # Line 1109
    lw	$a0,0($a0)
    # Line 1103
    sd	$ra,0($sp)
    # Line 1109
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1111
    # lw $t9, -24368($gp) # &__glTexParameteriv_size
    jal	__glTexParameteriv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1113
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexParameteriv

# Function: __glle_TexEnvfv
# Declared: Line 1120 (Source lines: 1121-1131)
# Address: 0x0d98ba40 - 0x0d98baa0 (Size: 96 bytes, Frame: 32)
.globl __glle_TexEnvfv
.ent __glle_TexEnvfv
__glle_TexEnvfv:
    # Line 1121
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,21324
    addu	$gp,$t9,$at
    # Line 1127
    lw	$t9,4364($zero)
    # Line 1121
    move	$s0,$a0
    # Line 1127
    lw	$a0,0($a0)
    # Line 1121
    sd	$ra,0($sp)
    # Line 1127
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1129
    # lw $t9, -24348($gp) # &__glTexEnvfv_size
    jal	__glTexEnvfv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1131
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexEnvfv

# Function: __glle_TexEnviv
# Declared: Line 1136 (Source lines: 1137-1147)
# Address: 0x0d98baa0 - 0x0d98bb00 (Size: 96 bytes, Frame: 32)
.globl __glle_TexEnviv
.ent __glle_TexEnviv
__glle_TexEnviv:
    # Line 1137
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,21228
    addu	$gp,$t9,$at
    # Line 1143
    lw	$t9,4372($zero)
    # Line 1137
    move	$s0,$a0
    # Line 1143
    lw	$a0,0($a0)
    # Line 1137
    sd	$ra,0($sp)
    # Line 1143
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1145
    # lw $t9, -24344($gp) # &__glTexEnviv_size
    jal	__glTexEnviv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1147
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexEnviv

# Function: __glle_TexGendv
# Declared: Line 1152 (Source lines: 1153-1163)
# Address: 0x0d98bb00 - 0x0d98bb60 (Size: 96 bytes, Frame: 32)
.globl __glle_TexGendv
.ent __glle_TexGendv
__glle_TexGendv:
    # Line 1153
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,21132
    addu	$gp,$t9,$at
    # Line 1159
    lw	$t9,4380($zero)
    # Line 1153
    move	$s0,$a0
    # Line 1159
    lw	$a0,0($a0)
    # Line 1153
    sd	$ra,0($sp)
    # Line 1159
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1161
    # lw $t9, -24400($gp) # &__glTexGendv_size
    jal	__glTexGendv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1163
    ld	$gp,8($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexGendv

# Function: __glle_TexGenfv
# Declared: Line 1168 (Source lines: 1169-1179)
# Address: 0x0d98bb60 - 0x0d98bbc0 (Size: 96 bytes, Frame: 32)
.globl __glle_TexGenfv
.ent __glle_TexGenfv
__glle_TexGenfv:
    # Line 1169
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,21036
    addu	$gp,$t9,$at
    # Line 1175
    lw	$t9,4388($zero)
    # Line 1169
    move	$s0,$a0
    # Line 1175
    lw	$a0,0($a0)
    # Line 1169
    sd	$ra,0($sp)
    # Line 1175
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1177
    # lw $t9, -24396($gp) # &__glTexGenfv_size
    jal	__glTexGenfv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1179
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexGenfv

# Function: __glle_TexGeniv
# Declared: Line 1184 (Source lines: 1185-1195)
# Address: 0x0d98bbc0 - 0x0d98bc20 (Size: 96 bytes, Frame: 32)
.globl __glle_TexGeniv
.ent __glle_TexGeniv
__glle_TexGeniv:
    # Line 1185
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,20940
    addu	$gp,$t9,$at
    # Line 1191
    lw	$t9,4396($zero)
    # Line 1185
    move	$s0,$a0
    # Line 1191
    lw	$a0,0($a0)
    # Line 1185
    sd	$ra,0($sp)
    # Line 1191
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1193
    # lw $t9, -24392($gp) # &__glTexGeniv_size
    jal	__glTexGeniv_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1195
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_TexGeniv

# Function: __glle_InitNames
# Declared: Line 1202 (Source lines: 1203-1206)
# Address: 0x0d98bc20 - 0x0d98bc60 (Size: 64 bytes, Frame: 32)
.globl __glle_InitNames
.ent __glle_InitNames
__glle_InitNames:
    # Line 1203
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20844
    addu	$gp,$t9,$at
    # Line 1205
    lw	$t9,4412($zero)
    # Line 1203
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1205
    jalr	$t9
    # Line 1203
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1206
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_InitNames

# Function: __glle_LoadName
# Declared: Line 1210 (Source lines: 1211-1216)
# Address: 0x0d98bc60 - 0x0d98bca4 (Size: 68 bytes, Frame: 32)
.globl __glle_LoadName
.ent __glle_LoadName
__glle_LoadName:
    # Line 1211
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20780
    addu	$gp,$t9,$at
    # Line 1215
    lw	$t9,4416($zero)
    # Line 1211
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1215
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1216
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LoadName

# Function: __glle_PassThrough
# Declared: Line 1220 (Source lines: 1221-1226)
# Address: 0x0d98bcb0 - 0x0d98bcf4 (Size: 68 bytes, Frame: 32)
.globl __glle_PassThrough
.ent __glle_PassThrough
__glle_PassThrough:
    # Line 1221
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20700
    addu	$gp,$t9,$at
    # Line 1225
    lw	$t9,4420($zero)
    lwc1	$f12,0($a0)
    # Line 1221
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1225
    jalr	$t9
    # Line 1221
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1226
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PassThrough

# Function: __glle_PopName
# Declared: Line 1230 (Source lines: 1231-1234)
# Address: 0x0d98bd00 - 0x0d98bd40 (Size: 64 bytes, Frame: 32)
.globl __glle_PopName
.ent __glle_PopName
__glle_PopName:
    # Line 1231
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20620
    addu	$gp,$t9,$at
    # Line 1233
    lw	$t9,4424($zero)
    # Line 1231
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1233
    jalr	$t9
    # Line 1231
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1234
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PopName

# Function: __glle_PushName
# Declared: Line 1238 (Source lines: 1239-1244)
# Address: 0x0d98bd40 - 0x0d98bd84 (Size: 68 bytes, Frame: 32)
.globl __glle_PushName
.ent __glle_PushName
__glle_PushName:
    # Line 1239
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20556
    addu	$gp,$t9,$at
    # Line 1243
    lw	$t9,4428($zero)
    # Line 1239
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1243
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1244
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PushName

# Function: __glle_DrawBuffer
# Declared: Line 1248 (Source lines: 1249-1254)
# Address: 0x0d98bd90 - 0x0d98bdd4 (Size: 68 bytes, Frame: 32)
.globl __glle_DrawBuffer
.ent __glle_DrawBuffer
__glle_DrawBuffer:
    # Line 1249
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20476
    addu	$gp,$t9,$at
    # Line 1253
    lw	$t9,4432($zero)
    # Line 1249
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1253
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1254
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_DrawBuffer

# Function: __glle_Clear
# Declared: Line 1258 (Source lines: 1259-1264)
# Address: 0x0d98bde0 - 0x0d98be24 (Size: 68 bytes, Frame: 32)
.globl __glle_Clear
.ent __glle_Clear
__glle_Clear:
    # Line 1259
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20396
    addu	$gp,$t9,$at
    # Line 1263
    lw	$t9,4436($zero)
    # Line 1259
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1263
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1264
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Clear

# Function: __glle_ClearAccum
# Declared: Line 1268 (Source lines: 1269-1274)
# Address: 0x0d98be30 - 0x0d98be80 (Size: 80 bytes, Frame: 32)
.globl __glle_ClearAccum
.ent __glle_ClearAccum
__glle_ClearAccum:
    # Line 1273
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1269
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20316
    addu	$gp,$t9,$at
    # Line 1273
    lw	$t9,4440($zero)
    lwc1	$f12,0($a0)
    # Line 1269
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1273
    jalr	$t9
    # Line 1269
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1274
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ClearAccum

# Function: __glle_ClearIndex
# Declared: Line 1278 (Source lines: 1279-1284)
# Address: 0x0d98be80 - 0x0d98bec4 (Size: 68 bytes, Frame: 32)
.globl __glle_ClearIndex
.ent __glle_ClearIndex
__glle_ClearIndex:
    # Line 1279
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20236
    addu	$gp,$t9,$at
    # Line 1283
    lw	$t9,4444($zero)
    lwc1	$f12,0($a0)
    # Line 1279
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1283
    jalr	$t9
    # Line 1279
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1284
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ClearIndex

# Function: __glle_ClearColor
# Declared: Line 1288 (Source lines: 1289-1294)
# Address: 0x0d98bed0 - 0x0d98bf20 (Size: 80 bytes, Frame: 32)
.globl __glle_ClearColor
.ent __glle_ClearColor
__glle_ClearColor:
    # Line 1293
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1289
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20156
    addu	$gp,$t9,$at
    # Line 1293
    lw	$t9,4448($zero)
    lwc1	$f12,0($a0)
    # Line 1289
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1293
    jalr	$t9
    # Line 1289
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1294
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ClearColor

# Function: __glle_ClearStencil
# Declared: Line 1298 (Source lines: 1299-1304)
# Address: 0x0d98bf20 - 0x0d98bf64 (Size: 68 bytes, Frame: 32)
.globl __glle_ClearStencil
.ent __glle_ClearStencil
__glle_ClearStencil:
    # Line 1299
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,20076
    addu	$gp,$t9,$at
    # Line 1303
    lw	$t9,4452($zero)
    # Line 1299
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1303
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1304
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ClearStencil

# Function: __glle_ClearDepth
# Declared: Line 1308 (Source lines: 1309-1314)
# Address: 0x0d98bf70 - 0x0d98bfb4 (Size: 68 bytes, Frame: 32)
.globl __glle_ClearDepth
.ent __glle_ClearDepth
__glle_ClearDepth:
    # Line 1309
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19996
    addu	$gp,$t9,$at
    # Line 1313
    lw	$t9,4456($zero)
    ldc1	$f12,0($a0)
    # Line 1309
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1313
    jalr	$t9
    # Line 1309
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1314
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ClearDepth

# Function: __glle_StencilMask
# Declared: Line 1318 (Source lines: 1319-1324)
# Address: 0x0d98bfc0 - 0x0d98c004 (Size: 68 bytes, Frame: 32)
.globl __glle_StencilMask
.ent __glle_StencilMask
__glle_StencilMask:
    # Line 1319
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19916
    addu	$gp,$t9,$at
    # Line 1323
    lw	$t9,4460($zero)
    # Line 1319
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1323
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1324
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_StencilMask

# Function: __glle_ColorMask
# Declared: Line 1328 (Source lines: 1329-1334)
# Address: 0x0d98c010 - 0x0d98c060 (Size: 80 bytes, Frame: 32)
.globl __glle_ColorMask
.ent __glle_ColorMask
__glle_ColorMask:
    # Line 1329
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1333
    lbu	$a0,0($a0)
    # Line 1329
    sd	$ra,0($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19836
    addu	$gp,$t9,$at
    # Line 1333
    lw	$t9,4464($zero)
    lbu	$a3,3($s8)
    lbu	$a2,2($s8)
    jalr	$t9
    lbu	$a1,1($s8)
    ld	$ra,0($sp)
    # Line 1334
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ColorMask

# Function: __glle_DepthMask
# Declared: Line 1338 (Source lines: 1339-1344)
# Address: 0x0d98c060 - 0x0d98c0a4 (Size: 68 bytes, Frame: 32)
.globl __glle_DepthMask
.ent __glle_DepthMask
__glle_DepthMask:
    # Line 1339
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19756
    addu	$gp,$t9,$at
    # Line 1343
    lw	$t9,4468($zero)
    # Line 1339
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1343
    jalr	$t9
    lbu	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1344
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_DepthMask

# Function: __glle_IndexMask
# Declared: Line 1348 (Source lines: 1349-1354)
# Address: 0x0d98c0b0 - 0x0d98c0f4 (Size: 68 bytes, Frame: 32)
.globl __glle_IndexMask
.ent __glle_IndexMask
__glle_IndexMask:
    # Line 1349
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19676
    addu	$gp,$t9,$at
    # Line 1353
    lw	$t9,4472($zero)
    # Line 1349
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1353
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1354
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_IndexMask

# Function: __glle_Accum
# Declared: Line 1358 (Source lines: 1359-1364)
# Address: 0x0d98c100 - 0x0d98c148 (Size: 72 bytes, Frame: 32)
.globl __glle_Accum
.ent __glle_Accum
__glle_Accum:
    # Line 1359
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19596
    addu	$gp,$t9,$at
    # Line 1363
    lw	$t9,4476($zero)
    # Line 1359
    move	$s8,$a0
    # Line 1363
    lw	$a0,0($a0)
    # Line 1359
    sd	$ra,0($sp)
    # Line 1363
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 1364
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Accum

# Function: __glle_PopAttrib
# Declared: Line 1372 (Source lines: 1373-1376)
# Address: 0x0d98c150 - 0x0d98c190 (Size: 64 bytes, Frame: 32)
.globl __glle_PopAttrib
.ent __glle_PopAttrib
__glle_PopAttrib:
    # Line 1373
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19516
    addu	$gp,$t9,$at
    # Line 1375
    lw	$t9,4496($zero)
    # Line 1373
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1375
    jalr	$t9
    # Line 1373
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1376
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PopAttrib

# Function: __glle_PushAttrib
# Declared: Line 1380 (Source lines: 1381-1386)
# Address: 0x0d98c190 - 0x0d98c1d4 (Size: 68 bytes, Frame: 32)
.globl __glle_PushAttrib
.ent __glle_PushAttrib
__glle_PushAttrib:
    # Line 1381
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19452
    addu	$gp,$t9,$at
    # Line 1385
    lw	$t9,4500($zero)
    # Line 1381
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1385
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1386
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PushAttrib

# Function: __glle_MapGrid1d
# Declared: Line 1394 (Source lines: 1395-1400)
# Address: 0x0d98c1e0 - 0x0d98c22c (Size: 76 bytes, Frame: 32)
.globl __glle_MapGrid1d
.ent __glle_MapGrid1d
__glle_MapGrid1d:
    # Line 1395
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1399
    lw	$a0,16($a0)
    # Line 1395
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19372
    addu	$gp,$t9,$at
    # Line 1399
    lw	$t9,4520($zero)
    # Line 1395
    sd	$ra,0($sp)
    # Line 1399
    ldc1	$f14,8($s8)
    jalr	$t9
    ldc1	$f13,0($s8)
    ld	$ra,0($sp)
    # Line 1400
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MapGrid1d

# Function: __glle_MapGrid1f
# Declared: Line 1404 (Source lines: 1405-1410)
# Address: 0x0d98c230 - 0x0d98c27c (Size: 76 bytes, Frame: 32)
.globl __glle_MapGrid1f
.ent __glle_MapGrid1f
__glle_MapGrid1f:
    # Line 1405
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1409
    lw	$a0,0($a0)
    # Line 1405
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19292
    addu	$gp,$t9,$at
    # Line 1409
    lw	$t9,4524($zero)
    # Line 1405
    sd	$ra,0($sp)
    # Line 1409
    lwc1	$f14,8($s8)
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 1410
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MapGrid1f

# Function: __glle_MapGrid2d
# Declared: Line 1414 (Source lines: 1415-1421)
# Address: 0x0d98c280 - 0x0d98c2d8 (Size: 88 bytes, Frame: 32)
.globl __glle_MapGrid2d
.ent __glle_MapGrid2d
__glle_MapGrid2d:
    # Line 1415
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1419
    lw	$a0,32($a0)
    # Line 1415
    sd	$ra,0($sp)
    # Line 1419
    ldc1	$f17,24($s8)
    ldc1	$f16,16($s8)
    # Line 1415
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19212
    addu	$gp,$t9,$at
    # Line 1419
    lw	$t9,4528($zero)
    lw	$a3,36($s8)
    ldc1	$f14,8($s8)
    jalr	$t9
    ldc1	$f13,0($s8)
    ld	$ra,0($sp)
    # Line 1421
    ld	$gp,16($sp)
    addiu	$v0,$s8,40
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MapGrid2d

# Function: __glle_MapGrid2f
# Declared: Line 1425 (Source lines: 1426-1432)
# Address: 0x0d98c2e0 - 0x0d98c338 (Size: 88 bytes, Frame: 32)
.globl __glle_MapGrid2f
.ent __glle_MapGrid2f
__glle_MapGrid2f:
    # Line 1426
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1430
    lw	$a0,0($a0)
    # Line 1426
    sd	$ra,0($sp)
    # Line 1430
    lwc1	$f17,20($s8)
    lwc1	$f16,16($s8)
    # Line 1426
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19116
    addu	$gp,$t9,$at
    # Line 1430
    lw	$t9,4532($zero)
    lw	$a3,12($s8)
    lwc1	$f14,8($s8)
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 1432
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MapGrid2f

# Function: __glle_EvalCoord1dv
# Declared: Line 1437 (Source lines: 1438-1443)
# Address: 0x0d98c340 - 0x0d98c384 (Size: 68 bytes, Frame: 32)
.globl __glle_EvalCoord1dv
.ent __glle_EvalCoord1dv
__glle_EvalCoord1dv:
    # Line 1438
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,19020
    addu	$gp,$t9,$at
    # Line 1442
    lw	$t9,4540($zero)
    # Line 1438
    sd	$s8,8($sp)
    # Line 1442
    nop
    # Line 1438
    sd	$ra,0($sp)
    # Line 1442
    jalr	$t9
    # Line 1438
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1443
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalCoord1dv

# Function: __glle_EvalCoord1fv
# Declared: Line 1448 (Source lines: 1449-1454)
# Address: 0x0d98c390 - 0x0d98c3d4 (Size: 68 bytes, Frame: 32)
.globl __glle_EvalCoord1fv
.ent __glle_EvalCoord1fv
__glle_EvalCoord1fv:
    # Line 1449
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18940
    addu	$gp,$t9,$at
    # Line 1453
    lw	$t9,4548($zero)
    # Line 1449
    sd	$s8,8($sp)
    # Line 1453
    nop
    # Line 1449
    sd	$ra,0($sp)
    # Line 1453
    jalr	$t9
    # Line 1449
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1454
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalCoord1fv

# Function: __glle_EvalCoord2dv
# Declared: Line 1459 (Source lines: 1460-1465)
# Address: 0x0d98c3e0 - 0x0d98c424 (Size: 68 bytes, Frame: 32)
.globl __glle_EvalCoord2dv
.ent __glle_EvalCoord2dv
__glle_EvalCoord2dv:
    # Line 1460
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18860
    addu	$gp,$t9,$at
    # Line 1464
    lw	$t9,4556($zero)
    # Line 1460
    sd	$s8,8($sp)
    # Line 1464
    nop
    # Line 1460
    sd	$ra,0($sp)
    # Line 1464
    jalr	$t9
    # Line 1460
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1465
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalCoord2dv

# Function: __glle_EvalCoord2fv
# Declared: Line 1470 (Source lines: 1471-1476)
# Address: 0x0d98c430 - 0x0d98c474 (Size: 68 bytes, Frame: 32)
.globl __glle_EvalCoord2fv
.ent __glle_EvalCoord2fv
__glle_EvalCoord2fv:
    # Line 1471
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18780
    addu	$gp,$t9,$at
    # Line 1475
    lw	$t9,4564($zero)
    # Line 1471
    sd	$s8,8($sp)
    # Line 1475
    nop
    # Line 1471
    sd	$ra,0($sp)
    # Line 1475
    jalr	$t9
    # Line 1471
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1476
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalCoord2fv

# Function: __glle_EvalMesh1
# Declared: Line 1480 (Source lines: 1481-1486)
# Address: 0x0d98c480 - 0x0d98c4cc (Size: 76 bytes, Frame: 32)
.globl __glle_EvalMesh1
.ent __glle_EvalMesh1
__glle_EvalMesh1:
    # Line 1481
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1485
    lw	$a0,0($a0)
    # Line 1481
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18700
    addu	$gp,$t9,$at
    # Line 1485
    lw	$t9,4568($zero)
    # Line 1481
    sd	$ra,0($sp)
    # Line 1485
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1486
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalMesh1

# Function: __glle_EvalPoint1
# Declared: Line 1490 (Source lines: 1491-1496)
# Address: 0x0d98c4d0 - 0x0d98c514 (Size: 68 bytes, Frame: 32)
.globl __glle_EvalPoint1
.ent __glle_EvalPoint1
__glle_EvalPoint1:
    # Line 1491
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18620
    addu	$gp,$t9,$at
    # Line 1495
    lw	$t9,4572($zero)
    # Line 1491
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1495
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1496
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalPoint1

# Function: __glle_EvalMesh2
# Declared: Line 1500 (Source lines: 1501-1507)
# Address: 0x0d98c520 - 0x0d98c574 (Size: 84 bytes, Frame: 32)
.globl __glle_EvalMesh2
.ent __glle_EvalMesh2
__glle_EvalMesh2:
    # Line 1501
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1505
    lw	$a0,0($a0)
    # Line 1501
    sd	$ra,0($sp)
    # Line 1505
    lw	$a4,16($s8)
    # Line 1501
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18540
    addu	$gp,$t9,$at
    # Line 1505
    lw	$t9,4576($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1507
    ld	$gp,16($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalMesh2

# Function: __glle_EvalPoint2
# Declared: Line 1511 (Source lines: 1512-1517)
# Address: 0x0d98c580 - 0x0d98c5c8 (Size: 72 bytes, Frame: 32)
.globl __glle_EvalPoint2
.ent __glle_EvalPoint2
__glle_EvalPoint2:
    # Line 1512
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18444
    addu	$gp,$t9,$at
    # Line 1516
    lw	$t9,4580($zero)
    # Line 1512
    move	$s8,$a0
    # Line 1516
    lw	$a0,0($a0)
    # Line 1512
    sd	$ra,0($sp)
    # Line 1516
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1517
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_EvalPoint2

# Function: __glle_AlphaFunc
# Declared: Line 1521 (Source lines: 1522-1527)
# Address: 0x0d98c5d0 - 0x0d98c618 (Size: 72 bytes, Frame: 32)
.globl __glle_AlphaFunc
.ent __glle_AlphaFunc
__glle_AlphaFunc:
    # Line 1522
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18364
    addu	$gp,$t9,$at
    # Line 1526
    lw	$t9,4584($zero)
    # Line 1522
    move	$s8,$a0
    # Line 1526
    lw	$a0,0($a0)
    # Line 1522
    sd	$ra,0($sp)
    # Line 1526
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 1527
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_AlphaFunc

# Function: __glle_BlendFunc
# Declared: Line 1531 (Source lines: 1532-1537)
# Address: 0x0d98c620 - 0x0d98c668 (Size: 72 bytes, Frame: 32)
.globl __glle_BlendFunc
.ent __glle_BlendFunc
__glle_BlendFunc:
    # Line 1532
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18284
    addu	$gp,$t9,$at
    # Line 1536
    lw	$t9,4588($zero)
    # Line 1532
    move	$s8,$a0
    # Line 1536
    lw	$a0,0($a0)
    # Line 1532
    sd	$ra,0($sp)
    # Line 1536
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1537
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_BlendFunc

# Function: __glle_LogicOp
# Declared: Line 1541 (Source lines: 1542-1547)
# Address: 0x0d98c670 - 0x0d98c6b4 (Size: 68 bytes, Frame: 32)
.globl __glle_LogicOp
.ent __glle_LogicOp
__glle_LogicOp:
    # Line 1542
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18204
    addu	$gp,$t9,$at
    # Line 1546
    lw	$t9,4592($zero)
    # Line 1542
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1546
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1547
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LogicOp

# Function: __glle_StencilFunc
# Declared: Line 1551 (Source lines: 1552-1557)
# Address: 0x0d98c6c0 - 0x0d98c70c (Size: 76 bytes, Frame: 32)
.globl __glle_StencilFunc
.ent __glle_StencilFunc
__glle_StencilFunc:
    # Line 1552
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1556
    lw	$a0,0($a0)
    # Line 1552
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18124
    addu	$gp,$t9,$at
    # Line 1556
    lw	$t9,4596($zero)
    # Line 1552
    sd	$ra,0($sp)
    # Line 1556
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1557
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_StencilFunc

# Function: __glle_StencilOp
# Declared: Line 1561 (Source lines: 1562-1567)
# Address: 0x0d98c710 - 0x0d98c75c (Size: 76 bytes, Frame: 32)
.globl __glle_StencilOp
.ent __glle_StencilOp
__glle_StencilOp:
    # Line 1562
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1566
    lw	$a0,0($a0)
    # Line 1562
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,18044
    addu	$gp,$t9,$at
    # Line 1566
    lw	$t9,4600($zero)
    # Line 1562
    sd	$ra,0($sp)
    # Line 1566
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1567
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_StencilOp

# Function: __glle_DepthFunc
# Declared: Line 1571 (Source lines: 1572-1577)
# Address: 0x0d98c760 - 0x0d98c7a4 (Size: 68 bytes, Frame: 32)
.globl __glle_DepthFunc
.ent __glle_DepthFunc
__glle_DepthFunc:
    # Line 1572
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17964
    addu	$gp,$t9,$at
    # Line 1576
    lw	$t9,4604($zero)
    # Line 1572
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1576
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1577
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_DepthFunc

# Function: __glle_PixelZoom
# Declared: Line 1581 (Source lines: 1582-1587)
# Address: 0x0d98c7b0 - 0x0d98c7f8 (Size: 72 bytes, Frame: 32)
.globl __glle_PixelZoom
.ent __glle_PixelZoom
__glle_PixelZoom:
    # Line 1586
    lwc1	$f13,4($a0)
    # Line 1582
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17884
    addu	$gp,$t9,$at
    # Line 1586
    lw	$t9,4608($zero)
    lwc1	$f12,0($a0)
    # Line 1582
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1586
    jalr	$t9
    # Line 1582
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1587
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PixelZoom

# Function: __glle_PixelTransferf
# Declared: Line 1591 (Source lines: 1592-1597)
# Address: 0x0d98c800 - 0x0d98c848 (Size: 72 bytes, Frame: 32)
.globl __glle_PixelTransferf
.ent __glle_PixelTransferf
__glle_PixelTransferf:
    # Line 1592
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17804
    addu	$gp,$t9,$at
    # Line 1596
    lw	$t9,4612($zero)
    # Line 1592
    move	$s8,$a0
    # Line 1596
    lw	$a0,0($a0)
    # Line 1592
    sd	$ra,0($sp)
    # Line 1596
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 1597
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PixelTransferf

# Function: __glle_PixelTransferi
# Declared: Line 1601 (Source lines: 1602-1607)
# Address: 0x0d98c850 - 0x0d98c898 (Size: 72 bytes, Frame: 32)
.globl __glle_PixelTransferi
.ent __glle_PixelTransferi
__glle_PixelTransferi:
    # Line 1602
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17724
    addu	$gp,$t9,$at
    # Line 1606
    lw	$t9,4616($zero)
    # Line 1602
    move	$s8,$a0
    # Line 1606
    lw	$a0,0($a0)
    # Line 1602
    sd	$ra,0($sp)
    # Line 1606
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1607
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PixelTransferi

# Function: __glle_PixelMapfv
# Declared: Line 1613 (Source lines: 1614-1624)
# Address: 0x0d98c8a0 - 0x0d98c8f8 (Size: 88 bytes, Frame: 32)
.globl __glle_PixelMapfv
.ent __glle_PixelMapfv
__glle_PixelMapfv:
    # Line 1614
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17644
    addu	$gp,$t9,$at
    # Line 1620
    lw	$t9,4628($zero)
    # Line 1614
    move	$s8,$a0
    # Line 1620
    lw	$a0,0($a0)
    # Line 1614
    sd	$ra,0($sp)
    # Line 1620
    addiu	$a2,$s8,8
    jalr	$t9
    lw	$a1,4($s8)
    # Line 1624
    lw	$v0,4($s8)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelMapfv

# Function: __glle_PixelMapuiv
# Declared: Line 1628 (Source lines: 1629-1639)
# Address: 0x0d98c900 - 0x0d98c958 (Size: 88 bytes, Frame: 32)
.globl __glle_PixelMapuiv
.ent __glle_PixelMapuiv
__glle_PixelMapuiv:
    # Line 1629
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17548
    addu	$gp,$t9,$at
    # Line 1635
    lw	$t9,4632($zero)
    # Line 1629
    move	$s8,$a0
    # Line 1635
    lw	$a0,0($a0)
    # Line 1629
    sd	$ra,0($sp)
    # Line 1635
    addiu	$a2,$s8,8
    jalr	$t9
    lw	$a1,4($s8)
    # Line 1639
    lw	$v0,4($s8)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelMapuiv

# Function: __glle_PixelMapusv
# Declared: Line 1643 (Source lines: 1644-1654)
# Address: 0x0d98c960 - 0x0d98c9c4 (Size: 100 bytes, Frame: 32)
.globl __glle_PixelMapusv
.ent __glle_PixelMapusv
__glle_PixelMapusv:
    # Line 1644
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17452
    addu	$gp,$t9,$at
    # Line 1650
    lw	$t9,4636($zero)
    # Line 1644
    move	$s8,$a0
    # Line 1650
    lw	$a0,0($a0)
    # Line 1644
    sd	$ra,0($sp)
    # Line 1650
    addiu	$a2,$s8,8
    jalr	$t9
    lw	$a1,4($s8)
    # Line 1654
    lw	$v0,4($s8)
    addu	$v0,$v0,$v0
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,16($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_PixelMapusv

# Function: __glle_ReadBuffer
# Declared: Line 1658 (Source lines: 1659-1664)
# Address: 0x0d98c9d0 - 0x0d98ca14 (Size: 68 bytes, Frame: 32)
.globl __glle_ReadBuffer
.ent __glle_ReadBuffer
__glle_ReadBuffer:
    # Line 1659
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17340
    addu	$gp,$t9,$at
    # Line 1663
    lw	$t9,4640($zero)
    # Line 1659
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1663
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1664
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ReadBuffer

# Function: __glle_CopyPixels
# Declared: Line 1668 (Source lines: 1669-1675)
# Address: 0x0d98ca20 - 0x0d98ca74 (Size: 84 bytes, Frame: 32)
.globl __glle_CopyPixels
.ent __glle_CopyPixels
__glle_CopyPixels:
    # Line 1669
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1673
    lw	$a0,0($a0)
    # Line 1669
    sd	$ra,0($sp)
    # Line 1673
    lw	$a4,16($s8)
    # Line 1669
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17260
    addu	$gp,$t9,$at
    # Line 1673
    lw	$t9,4644($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1675
    ld	$gp,16($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyPixels

# Function: __glle_DepthRange
# Declared: Line 1711 (Source lines: 1712-1717)
# Address: 0x0d98ca80 - 0x0d98cac8 (Size: 72 bytes, Frame: 32)
.globl __glle_DepthRange
.ent __glle_DepthRange
__glle_DepthRange:
    # Line 1716
    ldc1	$f13,8($a0)
    # Line 1712
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17164
    addu	$gp,$t9,$at
    # Line 1716
    lw	$t9,4776($zero)
    ldc1	$f12,0($a0)
    # Line 1712
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1716
    jalr	$t9
    # Line 1712
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1717
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_DepthRange

# Function: __glle_Frustum
# Declared: Line 1721 (Source lines: 1722-1728)
# Address: 0x0d98cad0 - 0x0d98cb28 (Size: 88 bytes, Frame: 32)
.globl __glle_Frustum
.ent __glle_Frustum
__glle_Frustum:
    # Line 1726
    ldc1	$f17,40($a0)
    ldc1	$f16,32($a0)
    ldc1	$f15,24($a0)
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    # Line 1722
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,17084
    addu	$gp,$t9,$at
    # Line 1726
    lw	$t9,4780($zero)
    ldc1	$f12,0($a0)
    # Line 1722
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1726
    jalr	$t9
    # Line 1722
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1728
    ld	$gp,16($sp)
    addiu	$v0,$s8,48
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Frustum

# Function: __glle_LoadIdentity
# Declared: Line 1732 (Source lines: 1733-1736)
# Address: 0x0d98cb30 - 0x0d98cb70 (Size: 64 bytes, Frame: 32)
.globl __glle_LoadIdentity
.ent __glle_LoadIdentity
__glle_LoadIdentity:
    # Line 1733
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16988
    addu	$gp,$t9,$at
    # Line 1735
    lw	$t9,4784($zero)
    # Line 1733
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1735
    jalr	$t9
    # Line 1733
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1736
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LoadIdentity

# Function: __glle_LoadMatrixf
# Declared: Line 1740 (Source lines: 1741-1746)
# Address: 0x0d98cb70 - 0x0d98cbb4 (Size: 68 bytes, Frame: 32)
.globl __glle_LoadMatrixf
.ent __glle_LoadMatrixf
__glle_LoadMatrixf:
    # Line 1741
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16924
    addu	$gp,$t9,$at
    # Line 1745
    lw	$t9,4788($zero)
    # Line 1741
    sd	$s8,8($sp)
    # Line 1745
    nop
    # Line 1741
    sd	$ra,0($sp)
    # Line 1745
    jalr	$t9
    # Line 1741
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1746
    ld	$gp,16($sp)
    addiu	$v0,$s8,64
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LoadMatrixf

# Function: __glle_LoadMatrixd
# Declared: Line 1750 (Source lines: 1751-1756)
# Address: 0x0d98cbc0 - 0x0d98cc04 (Size: 68 bytes, Frame: 32)
.globl __glle_LoadMatrixd
.ent __glle_LoadMatrixd
__glle_LoadMatrixd:
    # Line 1751
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16844
    addu	$gp,$t9,$at
    # Line 1755
    lw	$t9,4792($zero)
    # Line 1751
    sd	$s8,8($sp)
    # Line 1755
    nop
    # Line 1751
    sd	$ra,0($sp)
    # Line 1755
    jalr	$t9
    # Line 1751
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1756
    ld	$gp,16($sp)
    addiu	$v0,$s8,128
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LoadMatrixd

# Function: __glle_MatrixMode
# Declared: Line 1760 (Source lines: 1761-1766)
# Address: 0x0d98cc10 - 0x0d98cc54 (Size: 68 bytes, Frame: 32)
.globl __glle_MatrixMode
.ent __glle_MatrixMode
__glle_MatrixMode:
    # Line 1761
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16764
    addu	$gp,$t9,$at
    # Line 1765
    lw	$t9,4796($zero)
    # Line 1761
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1765
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1766
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MatrixMode

# Function: __glle_MultMatrixf
# Declared: Line 1770 (Source lines: 1771-1776)
# Address: 0x0d98cc60 - 0x0d98cca4 (Size: 68 bytes, Frame: 32)
.globl __glle_MultMatrixf
.ent __glle_MultMatrixf
__glle_MultMatrixf:
    # Line 1771
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16684
    addu	$gp,$t9,$at
    # Line 1775
    lw	$t9,4800($zero)
    # Line 1771
    sd	$s8,8($sp)
    # Line 1775
    nop
    # Line 1771
    sd	$ra,0($sp)
    # Line 1775
    jalr	$t9
    # Line 1771
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1776
    ld	$gp,16($sp)
    addiu	$v0,$s8,64
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MultMatrixf

# Function: __glle_MultMatrixd
# Declared: Line 1780 (Source lines: 1781-1786)
# Address: 0x0d98ccb0 - 0x0d98ccf4 (Size: 68 bytes, Frame: 32)
.globl __glle_MultMatrixd
.ent __glle_MultMatrixd
__glle_MultMatrixd:
    # Line 1781
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16604
    addu	$gp,$t9,$at
    # Line 1785
    lw	$t9,4804($zero)
    # Line 1781
    sd	$s8,8($sp)
    # Line 1785
    nop
    # Line 1781
    sd	$ra,0($sp)
    # Line 1785
    jalr	$t9
    # Line 1781
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1786
    ld	$gp,16($sp)
    addiu	$v0,$s8,128
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MultMatrixd

# Function: __glle_Ortho
# Declared: Line 1790 (Source lines: 1791-1797)
# Address: 0x0d98cd00 - 0x0d98cd58 (Size: 88 bytes, Frame: 32)
.globl __glle_Ortho
.ent __glle_Ortho
__glle_Ortho:
    # Line 1795
    ldc1	$f17,40($a0)
    ldc1	$f16,32($a0)
    ldc1	$f15,24($a0)
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    # Line 1791
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16524
    addu	$gp,$t9,$at
    # Line 1795
    lw	$t9,4808($zero)
    ldc1	$f12,0($a0)
    # Line 1791
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1795
    jalr	$t9
    # Line 1791
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1797
    ld	$gp,16($sp)
    addiu	$v0,$s8,48
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Ortho

# Function: __glle_PopMatrix
# Declared: Line 1801 (Source lines: 1802-1805)
# Address: 0x0d98cd60 - 0x0d98cda0 (Size: 64 bytes, Frame: 32)
.globl __glle_PopMatrix
.ent __glle_PopMatrix
__glle_PopMatrix:
    # Line 1802
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16428
    addu	$gp,$t9,$at
    # Line 1804
    lw	$t9,4812($zero)
    # Line 1802
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1804
    jalr	$t9
    # Line 1802
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1805
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PopMatrix

# Function: __glle_PushMatrix
# Declared: Line 1809 (Source lines: 1810-1813)
# Address: 0x0d98cda0 - 0x0d98cde0 (Size: 64 bytes, Frame: 32)
.globl __glle_PushMatrix
.ent __glle_PushMatrix
__glle_PushMatrix:
    # Line 1810
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16364
    addu	$gp,$t9,$at
    # Line 1812
    lw	$t9,4816($zero)
    # Line 1810
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1812
    jalr	$t9
    # Line 1810
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1813
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PushMatrix

# Function: __glle_Rotated
# Declared: Line 1817 (Source lines: 1818-1823)
# Address: 0x0d98cde0 - 0x0d98ce30 (Size: 80 bytes, Frame: 32)
.globl __glle_Rotated
.ent __glle_Rotated
__glle_Rotated:
    # Line 1822
    ldc1	$f15,24($a0)
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    # Line 1818
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16300
    addu	$gp,$t9,$at
    # Line 1822
    lw	$t9,4820($zero)
    ldc1	$f12,0($a0)
    # Line 1818
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1822
    jalr	$t9
    # Line 1818
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1823
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Rotated

# Function: __glle_Rotatef
# Declared: Line 1827 (Source lines: 1828-1833)
# Address: 0x0d98ce30 - 0x0d98ce80 (Size: 80 bytes, Frame: 32)
.globl __glle_Rotatef
.ent __glle_Rotatef
__glle_Rotatef:
    # Line 1832
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1828
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16220
    addu	$gp,$t9,$at
    # Line 1832
    lw	$t9,4824($zero)
    lwc1	$f12,0($a0)
    # Line 1828
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1832
    jalr	$t9
    # Line 1828
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1833
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Rotatef

# Function: __glle_Scaled
# Declared: Line 1837 (Source lines: 1838-1843)
# Address: 0x0d98ce80 - 0x0d98cecc (Size: 76 bytes, Frame: 32)
.globl __glle_Scaled
.ent __glle_Scaled
__glle_Scaled:
    # Line 1842
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    # Line 1838
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16140
    addu	$gp,$t9,$at
    # Line 1842
    lw	$t9,4828($zero)
    ldc1	$f12,0($a0)
    # Line 1838
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1842
    jalr	$t9
    # Line 1838
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1843
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Scaled

# Function: __glle_Scalef
# Declared: Line 1847 (Source lines: 1848-1853)
# Address: 0x0d98ced0 - 0x0d98cf1c (Size: 76 bytes, Frame: 32)
.globl __glle_Scalef
.ent __glle_Scalef
__glle_Scalef:
    # Line 1852
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1848
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,16060
    addu	$gp,$t9,$at
    # Line 1852
    lw	$t9,4832($zero)
    lwc1	$f12,0($a0)
    # Line 1848
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1852
    jalr	$t9
    # Line 1848
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1853
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Scalef

# Function: __glle_Translated
# Declared: Line 1857 (Source lines: 1858-1863)
# Address: 0x0d98cf20 - 0x0d98cf6c (Size: 76 bytes, Frame: 32)
.globl __glle_Translated
.ent __glle_Translated
__glle_Translated:
    # Line 1862
    ldc1	$f14,16($a0)
    ldc1	$f13,8($a0)
    # Line 1858
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15980
    addu	$gp,$t9,$at
    # Line 1862
    lw	$t9,4836($zero)
    ldc1	$f12,0($a0)
    # Line 1858
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1862
    jalr	$t9
    # Line 1858
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1863
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Translated

# Function: __glle_Translatef
# Declared: Line 1867 (Source lines: 1868-1873)
# Address: 0x0d98cf70 - 0x0d98cfbc (Size: 76 bytes, Frame: 32)
.globl __glle_Translatef
.ent __glle_Translatef
__glle_Translatef:
    # Line 1872
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1868
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15900
    addu	$gp,$t9,$at
    # Line 1872
    lw	$t9,4840($zero)
    lwc1	$f12,0($a0)
    # Line 1868
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1872
    jalr	$t9
    # Line 1868
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1873
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Translatef

# Function: __glle_Viewport
# Declared: Line 1877 (Source lines: 1878-1883)
# Address: 0x0d98cfc0 - 0x0d98d010 (Size: 80 bytes, Frame: 32)
.globl __glle_Viewport
.ent __glle_Viewport
__glle_Viewport:
    # Line 1878
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1882
    lw	$a0,0($a0)
    # Line 1878
    sd	$ra,0($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15820
    addu	$gp,$t9,$at
    # Line 1882
    lw	$t9,4844($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1883
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Viewport

# Function: __glle_BlendColorEXT
# Declared: Line 1887 (Source lines: 1888-1893)
# Address: 0x0d98d010 - 0x0d98d060 (Size: 80 bytes, Frame: 32)
.globl __glle_BlendColorEXT
.ent __glle_BlendColorEXT
__glle_BlendColorEXT:
    # Line 1892
    lwc1	$f15,12($a0)
    lwc1	$f14,8($a0)
    lwc1	$f13,4($a0)
    # Line 1888
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15740
    addu	$gp,$t9,$at
    # Line 1892
    lw	$t9,4848($zero)
    lwc1	$f12,0($a0)
    # Line 1888
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1892
    jalr	$t9
    # Line 1888
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1893
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_BlendColorEXT

# Function: __glle_BlendEquationEXT
# Declared: Line 1897 (Source lines: 1898-1903)
# Address: 0x0d98d060 - 0x0d98d0a4 (Size: 68 bytes, Frame: 32)
.globl __glle_BlendEquationEXT
.ent __glle_BlendEquationEXT
__glle_BlendEquationEXT:
    # Line 1898
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15660
    addu	$gp,$t9,$at
    # Line 1902
    lw	$t9,4852($zero)
    # Line 1898
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1902
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 1903
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_BlendEquationEXT

# Function: __glle_PolygonOffsetEXT
# Declared: Line 1907 (Source lines: 1908-1913)
# Address: 0x0d98d0b0 - 0x0d98d0f8 (Size: 72 bytes, Frame: 32)
.globl __glle_PolygonOffsetEXT
.ent __glle_PolygonOffsetEXT
__glle_PolygonOffsetEXT:
    # Line 1912
    lwc1	$f13,4($a0)
    # Line 1908
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15580
    addu	$gp,$t9,$at
    # Line 1912
    lw	$t9,4856($zero)
    lwc1	$f12,0($a0)
    # Line 1908
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1912
    jalr	$t9
    # Line 1908
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 1913
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PolygonOffsetEXT

# Function: __glle_ConvolutionParameterfEXT
# Declared: Line 1921 (Source lines: 1922-1927)
# Address: 0x0d98d100 - 0x0d98d14c (Size: 76 bytes, Frame: 32)
.globl __glle_ConvolutionParameterfEXT
.ent __glle_ConvolutionParameterfEXT
__glle_ConvolutionParameterfEXT:
    # Line 1922
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1926
    lw	$a0,0($a0)
    # Line 1922
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15500
    addu	$gp,$t9,$at
    # Line 1926
    lw	$t9,4876($zero)
    # Line 1922
    sd	$ra,0($sp)
    # Line 1926
    lwc1	$f14,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1927
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ConvolutionParameterfEXT

# Function: __glle_ConvolutionParameterfvEXT
# Declared: Line 1931 (Source lines: 1932-1942)
# Address: 0x0d98d150 - 0x0d98d1b0 (Size: 96 bytes, Frame: 32)
.globl __glle_ConvolutionParameterfvEXT
.ent __glle_ConvolutionParameterfvEXT
__glle_ConvolutionParameterfvEXT:
    # Line 1932
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,15420
    addu	$gp,$t9,$at
    # Line 1938
    lw	$t9,4880($zero)
    # Line 1932
    move	$s0,$a0
    # Line 1938
    lw	$a0,0($a0)
    # Line 1932
    sd	$ra,0($sp)
    # Line 1938
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1940
    # lw $t9, -26356($gp) # &__glConvolutionParameterfvEXT_size
    jal	__glConvolutionParameterfvEXT_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1942
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ConvolutionParameterfvEXT

# Function: __glle_ConvolutionParameteriEXT
# Declared: Line 1946 (Source lines: 1947-1952)
# Address: 0x0d98d1b0 - 0x0d98d1fc (Size: 76 bytes, Frame: 32)
.globl __glle_ConvolutionParameteriEXT
.ent __glle_ConvolutionParameteriEXT
__glle_ConvolutionParameteriEXT:
    # Line 1947
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1951
    lw	$a0,0($a0)
    # Line 1947
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15324
    addu	$gp,$t9,$at
    # Line 1951
    lw	$t9,4884($zero)
    # Line 1947
    sd	$ra,0($sp)
    # Line 1951
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1952
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ConvolutionParameteriEXT

# Function: __glle_ConvolutionParameterivEXT
# Declared: Line 1956 (Source lines: 1957-1967)
# Address: 0x0d98d200 - 0x0d98d260 (Size: 96 bytes, Frame: 32)
.globl __glle_ConvolutionParameterivEXT
.ent __glle_ConvolutionParameterivEXT
__glle_ConvolutionParameterivEXT:
    # Line 1957
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,15244
    addu	$gp,$t9,$at
    # Line 1963
    lw	$t9,4888($zero)
    # Line 1957
    move	$s0,$a0
    # Line 1963
    lw	$a0,0($a0)
    # Line 1957
    sd	$ra,0($sp)
    # Line 1963
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 1965
    # lw $t9, -26352($gp) # &__glConvolutionParameterivEXT_size
    jal	__glConvolutionParameterivEXT_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 1967
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ConvolutionParameterivEXT

# Function: __glle_CopyConvolutionFilter1DEXT
# Declared: Line 1971 (Source lines: 1972-1978)
# Address: 0x0d98d260 - 0x0d98d2b4 (Size: 84 bytes, Frame: 32)
.globl __glle_CopyConvolutionFilter1DEXT
.ent __glle_CopyConvolutionFilter1DEXT
__glle_CopyConvolutionFilter1DEXT:
    # Line 1972
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1976
    lw	$a0,0($a0)
    # Line 1972
    sd	$ra,0($sp)
    # Line 1976
    lw	$a4,16($s8)
    # Line 1972
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15148
    addu	$gp,$t9,$at
    # Line 1976
    lw	$t9,4892($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1978
    ld	$gp,16($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyConvolutionFilter1DEXT

# Function: __glle_CopyConvolutionFilter2DEXT
# Declared: Line 1982 (Source lines: 1983-1989)
# Address: 0x0d98d2c0 - 0x0d98d318 (Size: 88 bytes, Frame: 32)
.globl __glle_CopyConvolutionFilter2DEXT
.ent __glle_CopyConvolutionFilter2DEXT
__glle_CopyConvolutionFilter2DEXT:
    # Line 1983
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1987
    lw	$a0,0($a0)
    # Line 1983
    sd	$ra,0($sp)
    # Line 1987
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    # Line 1983
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,15052
    addu	$gp,$t9,$at
    # Line 1987
    lw	$t9,4896($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 1989
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyConvolutionFilter2DEXT

# Function: __glle_HistogramEXT
# Declared: Line 2004 (Source lines: 2005-2010)
# Address: 0x0d98d320 - 0x0d98d370 (Size: 80 bytes, Frame: 32)
.globl __glle_HistogramEXT
.ent __glle_HistogramEXT
__glle_HistogramEXT:
    # Line 2005
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2009
    lw	$a0,0($a0)
    # Line 2005
    sd	$ra,0($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14956
    addu	$gp,$t9,$at
    # Line 2009
    lw	$t9,4944($zero)
    lbu	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2010
    ld	$gp,16($sp)
    addiu	$v0,$s8,16
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_HistogramEXT

# Function: __glle_MinmaxEXT
# Declared: Line 2014 (Source lines: 2015-2020)
# Address: 0x0d98d370 - 0x0d98d3bc (Size: 76 bytes, Frame: 32)
.globl __glle_MinmaxEXT
.ent __glle_MinmaxEXT
__glle_MinmaxEXT:
    # Line 2015
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2019
    lw	$a0,0($a0)
    # Line 2015
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14876
    addu	$gp,$t9,$at
    # Line 2019
    lw	$t9,4948($zero)
    # Line 2015
    sd	$ra,0($sp)
    # Line 2019
    lbu	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2020
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_MinmaxEXT

# Function: __glle_ResetHistogramEXT
# Declared: Line 2024 (Source lines: 2025-2030)
# Address: 0x0d98d3c0 - 0x0d98d404 (Size: 68 bytes, Frame: 32)
.globl __glle_ResetHistogramEXT
.ent __glle_ResetHistogramEXT
__glle_ResetHistogramEXT:
    # Line 2025
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14796
    addu	$gp,$t9,$at
    # Line 2029
    lw	$t9,4952($zero)
    # Line 2025
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2029
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2030
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ResetHistogramEXT

# Function: __glle_ResetMinmaxEXT
# Declared: Line 2034 (Source lines: 2035-2040)
# Address: 0x0d98d410 - 0x0d98d454 (Size: 68 bytes, Frame: 32)
.globl __glle_ResetMinmaxEXT
.ent __glle_ResetMinmaxEXT
__glle_ResetMinmaxEXT:
    # Line 2035
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14716
    addu	$gp,$t9,$at
    # Line 2039
    lw	$t9,4956($zero)
    # Line 2035
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2039
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2040
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ResetMinmaxEXT

# Function: __glle_BindTextureEXT
# Declared: Line 2056 (Source lines: 2057-2062)
# Address: 0x0d98d460 - 0x0d98d4a8 (Size: 72 bytes, Frame: 32)
.globl __glle_BindTextureEXT
.ent __glle_BindTextureEXT
__glle_BindTextureEXT:
    # Line 2057
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14636
    addu	$gp,$t9,$at
    # Line 2061
    lw	$t9,5008($zero)
    # Line 2057
    move	$s8,$a0
    # Line 2061
    lw	$a0,0($a0)
    # Line 2057
    sd	$ra,0($sp)
    # Line 2061
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2062
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_BindTextureEXT

# Function: __glle_PrioritizeTexturesEXT
# Declared: Line 2069 (Source lines: 2070-2083)
# Address: 0x0d98d4b0 - 0x0d98d518 (Size: 104 bytes, Frame: 32)
.globl __glle_PrioritizeTexturesEXT
.ent __glle_PrioritizeTexturesEXT
__glle_PrioritizeTexturesEXT:
    # Line 2077
    lw	$a3,0($a0)
    # Line 2070
    addiu	$sp,$sp,-32
    lui	$a4,0xc
    sd	$gp,16($sp)
    addiu	$a4,$a4,14556
    # Line 2080
    addiu	$a1,$a0,4
    # Line 2070
    addu	$gp,$t9,$a4
    # Line 2080
    lw	$t9,5024($zero)
    # Line 2070
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2077
    sll	$a2,$a3,0x2
    # Line 2080
    move	$a0,$a3
    # Line 2077
    sd	$a2,24($sp)
    # Line 2080
    addu	$a2,$a2,$s8
    # Line 2070
    sd	$ra,0($sp)
    # Line 2080
    jalr	$t9
    addiu	$a2,$a2,4
    # Line 2083
    ld	$v0,24($sp)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    addu	$v0,$v0,$v0
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_PrioritizeTexturesEXT

# Function: __glle_CopyTexImage1DEXT
# Declared: Line 2087 (Source lines: 2088-2094)
# Address: 0x0d98d520 - 0x0d98d57c (Size: 92 bytes, Frame: 32)
.globl __glle_CopyTexImage1DEXT
.ent __glle_CopyTexImage1DEXT
__glle_CopyTexImage1DEXT:
    # Line 2088
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2092
    lw	$a0,0($a0)
    # Line 2088
    sd	$ra,0($sp)
    # Line 2092
    lw	$a6,24($s8)
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    # Line 2088
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14444
    addu	$gp,$t9,$at
    # Line 2092
    lw	$t9,5028($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2094
    ld	$gp,16($sp)
    addiu	$v0,$s8,28
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyTexImage1DEXT

# Function: __glle_CopyTexImage2DEXT
# Declared: Line 2098 (Source lines: 2099-2105)
# Address: 0x0d98d580 - 0x0d98d5e0 (Size: 96 bytes, Frame: 32)
.globl __glle_CopyTexImage2DEXT
.ent __glle_CopyTexImage2DEXT
__glle_CopyTexImage2DEXT:
    # Line 2099
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2103
    lw	$a0,0($a0)
    # Line 2099
    sd	$ra,0($sp)
    # Line 2103
    lw	$a7,28($s8)
    lw	$a6,24($s8)
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    # Line 2099
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14348
    addu	$gp,$t9,$at
    # Line 2103
    lw	$t9,5032($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2105
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyTexImage2DEXT

# Function: __glle_CopyTexSubImage1DEXT
# Declared: Line 2109 (Source lines: 2110-2116)
# Address: 0x0d98d5e0 - 0x0d98d638 (Size: 88 bytes, Frame: 32)
.globl __glle_CopyTexSubImage1DEXT
.ent __glle_CopyTexSubImage1DEXT
__glle_CopyTexSubImage1DEXT:
    # Line 2110
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2114
    lw	$a0,0($a0)
    # Line 2110
    sd	$ra,0($sp)
    # Line 2114
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    # Line 2110
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14252
    addu	$gp,$t9,$at
    # Line 2114
    lw	$t9,5036($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2116
    ld	$gp,16($sp)
    addiu	$v0,$s8,24
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyTexSubImage1DEXT

# Function: __glle_CopyTexSubImage2DEXT
# Declared: Line 2120 (Source lines: 2121-2127)
# Address: 0x0d98d640 - 0x0d98d6a0 (Size: 96 bytes, Frame: 32)
.globl __glle_CopyTexSubImage2DEXT
.ent __glle_CopyTexSubImage2DEXT
__glle_CopyTexSubImage2DEXT:
    # Line 2121
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2125
    lw	$a0,0($a0)
    # Line 2121
    sd	$ra,0($sp)
    # Line 2125
    lw	$a7,28($s8)
    lw	$a6,24($s8)
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    # Line 2121
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,14156
    addu	$gp,$t9,$at
    # Line 2125
    lw	$t9,5040($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2127
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyTexSubImage2DEXT

# Function: __glle_CopyTexSubImage3DEXT
# Declared: Line 2131 (Source lines: 2132-2138)
# Address: 0x0d98d6a0 - 0x0d98d70c (Size: 108 bytes, Frame: 48)
.globl __glle_CopyTexSubImage3DEXT
.ent __glle_CopyTexSubImage3DEXT
__glle_CopyTexSubImage3DEXT:
    # Line 2132
    addiu	$sp,$sp,-48
    sd	$gp,32($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 2136
    lw	$a0,0($a0)
    lw	$a7,28($s8)
    lw	$a6,24($s8)
    lw	$a5,20($s8)
    lw	$a4,16($s8)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    lw	$a1,4($s8)
    # Line 2132
    lui	$at,0xc
    # Line 2136
    lw	$v0,32($s8)
    # Line 2132
    addiu	$at,$at,14060
    # Line 2136
    sw	$v0,4($sp)
    # Line 2132
    addu	$gp,$t9,$at
    # Line 2136
    lw	$t9,5044($zero)
    # Line 2132
    sd	$ra,16($sp)
    # Line 2136
    jalr	$t9
    nop
    ld	$ra,16($sp)
    # Line 2138
    ld	$gp,32($sp)
    addiu	$v0,$s8,36
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glle_CopyTexSubImage3DEXT

# Function: __glle_PolygonOffset
# Declared: Line 2152 (Source lines: 2153-2158)
# Address: 0x0d98d710 - 0x0d98d758 (Size: 72 bytes, Frame: 32)
.globl __glle_PolygonOffset
.ent __glle_PolygonOffset
__glle_PolygonOffset:
    # Line 2157
    lwc1	$f13,4($a0)
    # Line 2153
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13948
    addu	$gp,$t9,$at
    # Line 2157
    lw	$t9,5088($zero)
    lwc1	$f12,0($a0)
    # Line 2153
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 2157
    jalr	$t9
    # Line 2153
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 2158
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PolygonOffset

# Function: __glle_Indexubv
# Declared: Line 2163 (Source lines: 2164-2169)
# Address: 0x0d98d760 - 0x0d98d7a4 (Size: 68 bytes, Frame: 32)
.globl __glle_Indexubv
.ent __glle_Indexubv
__glle_Indexubv:
    # Line 2164
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13868
    addu	$gp,$t9,$at
    # Line 2168
    lw	$t9,5756($zero)
    # Line 2164
    sd	$s8,8($sp)
    # Line 2168
    nop
    # Line 2164
    sd	$ra,0($sp)
    # Line 2168
    jalr	$t9
    # Line 2164
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 2169
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Indexubv

# Function: __glle_SampleMaskSGIS
# Declared: Line 2175 (Source lines: 2176-2181)
# Address: 0x0d98d7b0 - 0x0d98d7f8 (Size: 72 bytes, Frame: 32)
.globl __glle_SampleMaskSGIS
.ent __glle_SampleMaskSGIS
__glle_SampleMaskSGIS:
    # Line 2180
    lbu	$a1,4($a0)
    # Line 2176
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13788
    addu	$gp,$t9,$at
    # Line 2180
    lw	$t9,5100($zero)
    lwc1	$f12,0($a0)
    # Line 2176
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 2180
    jalr	$t9
    # Line 2176
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 2181
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_SampleMaskSGIS

# Function: __glle_SamplePatternSGIS
# Declared: Line 2185 (Source lines: 2186-2191)
# Address: 0x0d98d800 - 0x0d98d844 (Size: 68 bytes, Frame: 32)
.globl __glle_SamplePatternSGIS
.ent __glle_SamplePatternSGIS
__glle_SamplePatternSGIS:
    # Line 2186
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13708
    addu	$gp,$t9,$at
    # Line 2190
    lw	$t9,5104($zero)
    # Line 2186
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2190
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2191
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_SamplePatternSGIS

# Function: __glle_TagSampleBufferSGIX
# Declared: Line 2195 (Source lines: 2196-2199)
# Address: 0x0d98d850 - 0x0d98d890 (Size: 64 bytes, Frame: 32)
.globl __glle_TagSampleBufferSGIX
.ent __glle_TagSampleBufferSGIX
__glle_TagSampleBufferSGIX:
    # Line 2196
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13628
    addu	$gp,$t9,$at
    # Line 2198
    lw	$t9,5108($zero)
    # Line 2196
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 2198
    jalr	$t9
    # Line 2196
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 2199
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TagSampleBufferSGIX

# Function: __glle_DetailTexFuncSGIS
# Declared: Line 2203 (Source lines: 2204-2214)
# Address: 0x0d98d890 - 0x0d98d8e8 (Size: 88 bytes, Frame: 32)
.globl __glle_DetailTexFuncSGIS
.ent __glle_DetailTexFuncSGIS
__glle_DetailTexFuncSGIS:
    # Line 2204
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13564
    addu	$gp,$t9,$at
    # Line 2210
    lw	$t9,5112($zero)
    # Line 2204
    move	$s8,$a0
    # Line 2210
    lw	$a0,0($a0)
    # Line 2204
    sd	$ra,0($sp)
    # Line 2210
    addiu	$a2,$s8,8
    jalr	$t9
    lw	$a1,4($s8)
    # Line 2214
    lw	$v0,4($s8)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_DetailTexFuncSGIS

# Function: __glle_SharpenTexFuncSGIS
# Declared: Line 2219 (Source lines: 2220-2230)
# Address: 0x0d98d8f0 - 0x0d98d948 (Size: 88 bytes, Frame: 32)
.globl __glle_SharpenTexFuncSGIS
.ent __glle_SharpenTexFuncSGIS
__glle_SharpenTexFuncSGIS:
    # Line 2220
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13468
    addu	$gp,$t9,$at
    # Line 2226
    lw	$t9,5120($zero)
    # Line 2220
    move	$s8,$a0
    # Line 2226
    lw	$a0,0($a0)
    # Line 2220
    sd	$ra,0($sp)
    # Line 2226
    addiu	$a2,$s8,8
    jalr	$t9
    lw	$a1,4($s8)
    # Line 2230
    lw	$v0,4($s8)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_SharpenTexFuncSGIS

# Function: __glle_ColorTableParameterfvSGI
# Declared: Line 2236 (Source lines: 2237-2247)
# Address: 0x0d98d950 - 0x0d98d9b0 (Size: 96 bytes, Frame: 32)
.globl __glle_ColorTableParameterfvSGI
.ent __glle_ColorTableParameterfvSGI
__glle_ColorTableParameterfvSGI:
    # Line 2237
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,13372
    addu	$gp,$t9,$at
    # Line 2243
    lw	$t9,5132($zero)
    # Line 2237
    move	$s0,$a0
    # Line 2243
    lw	$a0,0($a0)
    # Line 2237
    sd	$ra,0($sp)
    # Line 2243
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 2245
    # lw $t9, -24772($gp) # &__glColorTableParameterfvSGI_size
    jal	__glColorTableParameterfvSGI_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 2247
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ColorTableParameterfvSGI

# Function: __glle_ColorTableParameterivSGI
# Declared: Line 2251 (Source lines: 2252-2262)
# Address: 0x0d98d9b0 - 0x0d98da10 (Size: 96 bytes, Frame: 32)
.globl __glle_ColorTableParameterivSGI
.ent __glle_ColorTableParameterivSGI
__glle_ColorTableParameterivSGI:
    # Line 2252
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,13276
    addu	$gp,$t9,$at
    # Line 2258
    lw	$t9,5136($zero)
    # Line 2252
    move	$s0,$a0
    # Line 2258
    lw	$a0,0($a0)
    # Line 2252
    sd	$ra,0($sp)
    # Line 2258
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 2260
    # lw $t9, -24768($gp) # &__glColorTableParameterivSGI_size
    jal	__glColorTableParameterivSGI_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 2262
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_ColorTableParameterivSGI

# Function: __glle_CopyColorTableSGI
# Declared: Line 2266 (Source lines: 2267-2273)
# Address: 0x0d98da10 - 0x0d98da64 (Size: 84 bytes, Frame: 32)
.globl __glle_CopyColorTableSGI
.ent __glle_CopyColorTableSGI
__glle_CopyColorTableSGI:
    # Line 2267
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2271
    lw	$a0,0($a0)
    # Line 2267
    sd	$ra,0($sp)
    # Line 2271
    lw	$a4,16($s8)
    # Line 2267
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13180
    addu	$gp,$t9,$at
    # Line 2271
    lw	$t9,5140($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2273
    ld	$gp,16($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyColorTableSGI

# Function: __glle_PixelTexGenSGIX
# Declared: Line 2282 (Source lines: 2283-2288)
# Address: 0x0d98da70 - 0x0d98dab4 (Size: 68 bytes, Frame: 32)
.globl __glle_PixelTexGenSGIX
.ent __glle_PixelTexGenSGIX
__glle_PixelTexGenSGIX:
    # Line 2283
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13084
    addu	$gp,$t9,$at
    # Line 2287
    lw	$t9,5164($zero)
    # Line 2283
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2287
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2288
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PixelTexGenSGIX

# Function: __glle_SpriteParameterfSGIX
# Declared: Line 2292 (Source lines: 2293-2298)
# Address: 0x0d98dac0 - 0x0d98db08 (Size: 72 bytes, Frame: 32)
.globl __glle_SpriteParameterfSGIX
.ent __glle_SpriteParameterfSGIX
__glle_SpriteParameterfSGIX:
    # Line 2293
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,13004
    addu	$gp,$t9,$at
    # Line 2297
    lw	$t9,5168($zero)
    # Line 2293
    move	$s8,$a0
    # Line 2297
    lw	$a0,0($a0)
    # Line 2293
    sd	$ra,0($sp)
    # Line 2297
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 2298
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_SpriteParameterfSGIX

# Function: __glle_SpriteParameterfvSGIX
# Declared: Line 2302 (Source lines: 2303-2313)
# Address: 0x0d98db10 - 0x0d98db6c (Size: 92 bytes, Frame: 32)
.globl __glle_SpriteParameterfvSGIX
.ent __glle_SpriteParameterfvSGIX
__glle_SpriteParameterfvSGIX:
    # Line 2303
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,12924
    addu	$gp,$t9,$at
    # Line 2309
    lw	$t9,5172($zero)
    # Line 2303
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 2309
    lw	$a0,0($a0)
    # Line 2303
    sd	$ra,0($sp)
    # Line 2309
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 2311
    # lw $t9, -24764($gp) # &__glSpriteParameterfvSGIX_size
    jal	__glSpriteParameterfvSGIX_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 2313
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_SpriteParameterfvSGIX

# Function: __glle_SpriteParameteriSGIX
# Declared: Line 2317 (Source lines: 2318-2323)
# Address: 0x0d98db70 - 0x0d98dbb8 (Size: 72 bytes, Frame: 32)
.globl __glle_SpriteParameteriSGIX
.ent __glle_SpriteParameteriSGIX
__glle_SpriteParameteriSGIX:
    # Line 2318
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12828
    addu	$gp,$t9,$at
    # Line 2322
    lw	$t9,5176($zero)
    # Line 2318
    move	$s8,$a0
    # Line 2322
    lw	$a0,0($a0)
    # Line 2318
    sd	$ra,0($sp)
    # Line 2322
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2323
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_SpriteParameteriSGIX

# Function: __glle_SpriteParameterivSGIX
# Declared: Line 2327 (Source lines: 2328-2338)
# Address: 0x0d98dbc0 - 0x0d98dc1c (Size: 92 bytes, Frame: 32)
.globl __glle_SpriteParameterivSGIX
.ent __glle_SpriteParameterivSGIX
__glle_SpriteParameterivSGIX:
    # Line 2328
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,12748
    addu	$gp,$t9,$at
    # Line 2334
    lw	$t9,5180($zero)
    # Line 2328
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 2334
    lw	$a0,0($a0)
    # Line 2328
    sd	$ra,0($sp)
    # Line 2334
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 2336
    # lw $t9, -24760($gp) # &__glSpriteParameterivSGIX_size
    jal	__glSpriteParameterivSGIX_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 2338
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_SpriteParameterivSGIX

# Function: __glle_TexFilterFuncSGIS
# Declared: Line 2343 (Source lines: 2344-2354)
# Address: 0x0d98dc20 - 0x0d98dc7c (Size: 92 bytes, Frame: 32)
.globl __glle_TexFilterFuncSGIS
.ent __glle_TexFilterFuncSGIS
__glle_TexFilterFuncSGIS:
    # Line 2344
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2350
    lw	$a0,0($a0)
    # Line 2344
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12652
    addu	$gp,$t9,$at
    # Line 2350
    lw	$t9,5188($zero)
    # Line 2344
    sd	$ra,0($sp)
    # Line 2350
    lw	$a2,8($s8)
    addiu	$a3,$s8,12
    jalr	$t9
    lw	$a1,4($s8)
    # Line 2354
    lw	$v0,8($s8)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,12
.end __glle_TexFilterFuncSGIS

# Function: __glle_PointParameterfSGIS
# Declared: Line 2358 (Source lines: 2359-2364)
# Address: 0x0d98dc80 - 0x0d98dcc8 (Size: 72 bytes, Frame: 32)
.globl __glle_PointParameterfSGIS
.ent __glle_PointParameterfSGIS
__glle_PointParameterfSGIS:
    # Line 2359
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12556
    addu	$gp,$t9,$at
    # Line 2363
    lw	$t9,5192($zero)
    # Line 2359
    move	$s8,$a0
    # Line 2363
    lw	$a0,0($a0)
    # Line 2359
    sd	$ra,0($sp)
    # Line 2363
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 2364
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PointParameterfSGIS

# Function: __glle_PointParameterfvSGIS
# Declared: Line 2368 (Source lines: 2369-2379)
# Address: 0x0d98dcd0 - 0x0d98dd2c (Size: 92 bytes, Frame: 32)
.globl __glle_PointParameterfvSGIS
.ent __glle_PointParameterfvSGIS
__glle_PointParameterfvSGIS:
    # Line 2369
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,12476
    addu	$gp,$t9,$at
    # Line 2375
    lw	$t9,5196($zero)
    # Line 2369
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 2375
    lw	$a0,0($a0)
    # Line 2369
    sd	$ra,0($sp)
    # Line 2375
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 2377
    # lw $t9, -24756($gp) # &__glPointParameterfvSGIS_size
    jal	__glPointParameterfvSGIS_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 2379
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_PointParameterfvSGIS

# Function: __glle_FogFuncSGIS
# Declared: Line 2383 (Source lines: 2384-2394)
# Address: 0x0d98dd30 - 0x0d98dd84 (Size: 84 bytes, Frame: 32)
.globl __glle_FogFuncSGIS
.ent __glle_FogFuncSGIS
__glle_FogFuncSGIS:
    # Line 2384
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12380
    addu	$gp,$t9,$at
    # Line 2390
    lw	$t9,5200($zero)
    # Line 2384
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2390
    lw	$a0,0($a0)
    # Line 2384
    sd	$ra,0($sp)
    # Line 2390
    jalr	$t9
    addiu	$a1,$s8,4
    # Line 2394
    lw	$v0,0($s8)
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    sll	$v0,$v0,0x3
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_FogFuncSGIS

# Function: __glle_ReadInstrumentsSGIX
# Declared: Line 2401 (Source lines: 2402-2407)
# Address: 0x0d98dd90 - 0x0d98ddd4 (Size: 68 bytes, Frame: 32)
.globl __glle_ReadInstrumentsSGIX
.ent __glle_ReadInstrumentsSGIX
__glle_ReadInstrumentsSGIX:
    # Line 2402
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12284
    addu	$gp,$t9,$at
    # Line 2406
    lw	$t9,5216($zero)
    # Line 2402
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2406
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2407
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ReadInstrumentsSGIX

# Function: __glle_StartInstrumentsSGIX
# Declared: Line 2411 (Source lines: 2412-2415)
# Address: 0x0d98dde0 - 0x0d98de20 (Size: 64 bytes, Frame: 32)
.globl __glle_StartInstrumentsSGIX
.ent __glle_StartInstrumentsSGIX
__glle_StartInstrumentsSGIX:
    # Line 2412
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12204
    addu	$gp,$t9,$at
    # Line 2414
    lw	$t9,5220($zero)
    # Line 2412
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 2414
    jalr	$t9
    # Line 2412
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 2415
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_StartInstrumentsSGIX

# Function: __glle_StopInstrumentsSGIX
# Declared: Line 2419 (Source lines: 2420-2425)
# Address: 0x0d98de20 - 0x0d98de64 (Size: 68 bytes, Frame: 32)
.globl __glle_StopInstrumentsSGIX
.ent __glle_StopInstrumentsSGIX
__glle_StopInstrumentsSGIX:
    # Line 2420
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12140
    addu	$gp,$t9,$at
    # Line 2424
    lw	$t9,5224($zero)
    # Line 2420
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2424
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2425
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_StopInstrumentsSGIX

# Function: __glle_ReferencePlaneSGIX
# Declared: Line 2430 (Source lines: 2431-2436)
# Address: 0x0d98de70 - 0x0d98deb4 (Size: 68 bytes, Frame: 32)
.globl __glle_ReferencePlaneSGIX
.ent __glle_ReferencePlaneSGIX
__glle_ReferencePlaneSGIX:
    # Line 2431
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,12060
    addu	$gp,$t9,$at
    # Line 2435
    lw	$t9,5232($zero)
    # Line 2431
    sd	$s8,8($sp)
    # Line 2435
    nop
    # Line 2431
    sd	$ra,0($sp)
    # Line 2435
    jalr	$t9
    # Line 2431
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 2436
    ld	$gp,16($sp)
    addiu	$v0,$s8,32
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_ReferencePlaneSGIX

# Function: __glle_FrameZoomSGIX
# Declared: Line 2440 (Source lines: 2441-2446)
# Address: 0x0d98dec0 - 0x0d98df04 (Size: 68 bytes, Frame: 32)
.globl __glle_FrameZoomSGIX
.ent __glle_FrameZoomSGIX
__glle_FrameZoomSGIX:
    # Line 2441
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11980
    addu	$gp,$t9,$at
    # Line 2445
    lw	$t9,5236($zero)
    # Line 2441
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2445
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2446
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FrameZoomSGIX

# Function: __glle_DeformSGIX
# Declared: Line 2453 (Source lines: 2454-2459)
# Address: 0x0d98df10 - 0x0d98df54 (Size: 68 bytes, Frame: 32)
.globl __glle_DeformSGIX
.ent __glle_DeformSGIX
__glle_DeformSGIX:
    # Line 2454
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11900
    addu	$gp,$t9,$at
    # Line 2458
    lw	$t9,5252($zero)
    # Line 2454
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2458
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2459
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_DeformSGIX

# Function: __glle_LoadIdentityDeformationMapSGIX
# Declared: Line 2463 (Source lines: 2464-2469)
# Address: 0x0d98df60 - 0x0d98dfa4 (Size: 68 bytes, Frame: 32)
.globl __glle_LoadIdentityDeformationMapSGIX
.ent __glle_LoadIdentityDeformationMapSGIX
__glle_LoadIdentityDeformationMapSGIX:
    # Line 2464
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11820
    addu	$gp,$t9,$at
    # Line 2468
    lw	$t9,5256($zero)
    # Line 2464
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2468
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2469
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LoadIdentityDeformationMapSGIX

# Function: __glle_CopyColorSubTable
# Declared: Line 2480 (Source lines: 2481-2487)
# Address: 0x0d98dfb0 - 0x0d98e004 (Size: 84 bytes, Frame: 32)
.globl __glle_CopyColorSubTable
.ent __glle_CopyColorSubTable
__glle_CopyColorSubTable:
    # Line 2481
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2485
    lw	$a0,0($a0)
    # Line 2481
    sd	$ra,0($sp)
    # Line 2485
    lw	$a4,16($s8)
    # Line 2481
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11740
    addu	$gp,$t9,$at
    # Line 2485
    lw	$t9,5288($zero)
    lw	$a3,12($s8)
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2487
    ld	$gp,16($sp)
    addiu	$v0,$s8,20
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CopyColorSubTable

# Function: __glle_PixelTexGenParameteriSGIS
# Declared: Line 2493 (Source lines: 2494-2499)
# Address: 0x0d98e010 - 0x0d98e058 (Size: 72 bytes, Frame: 32)
.globl __glle_PixelTexGenParameteriSGIS
.ent __glle_PixelTexGenParameteriSGIS
__glle_PixelTexGenParameteriSGIS:
    # Line 2494
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11644
    addu	$gp,$t9,$at
    # Line 2498
    lw	$t9,5300($zero)
    # Line 2494
    move	$s8,$a0
    # Line 2498
    lw	$a0,0($a0)
    # Line 2494
    sd	$ra,0($sp)
    # Line 2498
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2499
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PixelTexGenParameteriSGIS

# Function: __glle_PixelTexGenParameterivSGIS
# Declared: Line 2503 (Source lines: 2504-2514)
# Address: 0x0d98e060 - 0x0d98e0bc (Size: 92 bytes, Frame: 32)
.globl __glle_PixelTexGenParameterivSGIS
.ent __glle_PixelTexGenParameterivSGIS
__glle_PixelTexGenParameterivSGIS:
    # Line 2504
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,11564
    addu	$gp,$t9,$at
    # Line 2510
    lw	$t9,5304($zero)
    # Line 2504
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 2510
    lw	$a0,0($a0)
    # Line 2504
    sd	$ra,0($sp)
    # Line 2510
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 2512
    # lw $t9, -24748($gp) # &__glPixelTexGenParameterivSGIS_size
    jal	__glPixelTexGenParameterivSGIS_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 2514
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_PixelTexGenParameterivSGIS

# Function: __glle_PixelTexGenParameterfSGIS
# Declared: Line 2518 (Source lines: 2519-2524)
# Address: 0x0d98e0c0 - 0x0d98e108 (Size: 72 bytes, Frame: 32)
.globl __glle_PixelTexGenParameterfSGIS
.ent __glle_PixelTexGenParameterfSGIS
__glle_PixelTexGenParameterfSGIS:
    # Line 2519
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11468
    addu	$gp,$t9,$at
    # Line 2523
    lw	$t9,5308($zero)
    # Line 2519
    move	$s8,$a0
    # Line 2523
    lw	$a0,0($a0)
    # Line 2519
    sd	$ra,0($sp)
    # Line 2523
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 2524
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PixelTexGenParameterfSGIS

# Function: __glle_PixelTexGenParameterfvSGIS
# Declared: Line 2528 (Source lines: 2529-2539)
# Address: 0x0d98e110 - 0x0d98e16c (Size: 92 bytes, Frame: 32)
.globl __glle_PixelTexGenParameterfvSGIS
.ent __glle_PixelTexGenParameterfvSGIS
__glle_PixelTexGenParameterfvSGIS:
    # Line 2529
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,11388
    addu	$gp,$t9,$at
    # Line 2535
    lw	$t9,5312($zero)
    # Line 2529
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 2535
    lw	$a0,0($a0)
    # Line 2529
    sd	$ra,0($sp)
    # Line 2535
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 2537
    # lw $t9, -24744($gp) # &__glPixelTexGenParameterfvSGIS_size
    jal	__glPixelTexGenParameterfvSGIS_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 2539
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_PixelTexGenParameterfvSGIS

# Function: __glle_AsyncMarkerSGIX
# Declared: Line 2545 (Source lines: 2546-2551)
# Address: 0x0d98e170 - 0x0d98e1b4 (Size: 68 bytes, Frame: 32)
.globl __glle_AsyncMarkerSGIX
.ent __glle_AsyncMarkerSGIX
__glle_AsyncMarkerSGIX:
    # Line 2546
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11292
    addu	$gp,$t9,$at
    # Line 2550
    lw	$t9,5324($zero)
    # Line 2546
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2550
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2551
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_AsyncMarkerSGIX

# Function: __glle_FragmentColorMaterialSGIX
# Declared: Line 2560 (Source lines: 2561-2566)
# Address: 0x0d98e1c0 - 0x0d98e208 (Size: 72 bytes, Frame: 32)
.globl __glle_FragmentColorMaterialSGIX
.ent __glle_FragmentColorMaterialSGIX
__glle_FragmentColorMaterialSGIX:
    # Line 2561
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11212
    addu	$gp,$t9,$at
    # Line 2565
    lw	$t9,5348($zero)
    # Line 2561
    move	$s8,$a0
    # Line 2565
    lw	$a0,0($a0)
    # Line 2561
    sd	$ra,0($sp)
    # Line 2565
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2566
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FragmentColorMaterialSGIX

# Function: __glle_FragmentLightfSGIX
# Declared: Line 2570 (Source lines: 2571-2576)
# Address: 0x0d98e210 - 0x0d98e25c (Size: 76 bytes, Frame: 32)
.globl __glle_FragmentLightfSGIX
.ent __glle_FragmentLightfSGIX
__glle_FragmentLightfSGIX:
    # Line 2571
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2575
    lw	$a0,0($a0)
    # Line 2571
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,11132
    addu	$gp,$t9,$at
    # Line 2575
    lw	$t9,5352($zero)
    # Line 2571
    sd	$ra,0($sp)
    # Line 2575
    lwc1	$f14,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2576
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FragmentLightfSGIX

# Function: __glle_FragmentLightfvSGIX
# Declared: Line 2580 (Source lines: 2581-2591)
# Address: 0x0d98e260 - 0x0d98e2c0 (Size: 96 bytes, Frame: 32)
.globl __glle_FragmentLightfvSGIX
.ent __glle_FragmentLightfvSGIX
__glle_FragmentLightfvSGIX:
    # Line 2581
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,11052
    addu	$gp,$t9,$at
    # Line 2587
    lw	$t9,5356($zero)
    # Line 2581
    move	$s0,$a0
    # Line 2587
    lw	$a0,0($a0)
    # Line 2581
    sd	$ra,0($sp)
    # Line 2587
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 2589
    # lw $t9, -24732($gp) # &__glFragmentLightfvSGIX_size
    jal	__glFragmentLightfvSGIX_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 2591
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_FragmentLightfvSGIX

# Function: __glle_FragmentLightiSGIX
# Declared: Line 2595 (Source lines: 2596-2601)
# Address: 0x0d98e2c0 - 0x0d98e30c (Size: 76 bytes, Frame: 32)
.globl __glle_FragmentLightiSGIX
.ent __glle_FragmentLightiSGIX
__glle_FragmentLightiSGIX:
    # Line 2596
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2600
    lw	$a0,0($a0)
    # Line 2596
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,10956
    addu	$gp,$t9,$at
    # Line 2600
    lw	$t9,5360($zero)
    # Line 2596
    sd	$ra,0($sp)
    # Line 2600
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2601
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FragmentLightiSGIX

# Function: __glle_FragmentLightivSGIX
# Declared: Line 2605 (Source lines: 2606-2616)
# Address: 0x0d98e310 - 0x0d98e370 (Size: 96 bytes, Frame: 32)
.globl __glle_FragmentLightivSGIX
.ent __glle_FragmentLightivSGIX
__glle_FragmentLightivSGIX:
    # Line 2606
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,10876
    addu	$gp,$t9,$at
    # Line 2612
    lw	$t9,5364($zero)
    # Line 2606
    move	$s0,$a0
    # Line 2612
    lw	$a0,0($a0)
    # Line 2606
    sd	$ra,0($sp)
    # Line 2612
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 2614
    # lw $t9, -24728($gp) # &__glFragmentLightivSGIX_size
    jal	__glFragmentLightivSGIX_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 2616
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_FragmentLightivSGIX

# Function: __glle_FragmentLightModelfSGIX
# Declared: Line 2620 (Source lines: 2621-2626)
# Address: 0x0d98e370 - 0x0d98e3b8 (Size: 72 bytes, Frame: 32)
.globl __glle_FragmentLightModelfSGIX
.ent __glle_FragmentLightModelfSGIX
__glle_FragmentLightModelfSGIX:
    # Line 2621
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,10780
    addu	$gp,$t9,$at
    # Line 2625
    lw	$t9,5368($zero)
    # Line 2621
    move	$s8,$a0
    # Line 2625
    lw	$a0,0($a0)
    # Line 2621
    sd	$ra,0($sp)
    # Line 2625
    jalr	$t9
    lwc1	$f13,4($s8)
    ld	$ra,0($sp)
    # Line 2626
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FragmentLightModelfSGIX

# Function: __glle_FragmentLightModelfvSGIX
# Declared: Line 2630 (Source lines: 2631-2641)
# Address: 0x0d98e3c0 - 0x0d98e41c (Size: 92 bytes, Frame: 32)
.globl __glle_FragmentLightModelfvSGIX
.ent __glle_FragmentLightModelfvSGIX
__glle_FragmentLightModelfvSGIX:
    # Line 2631
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,10700
    addu	$gp,$t9,$at
    # Line 2637
    lw	$t9,5372($zero)
    # Line 2631
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 2637
    lw	$a0,0($a0)
    # Line 2631
    sd	$ra,0($sp)
    # Line 2637
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 2639
    # lw $t9, -24724($gp) # &__glFragmentLightModelfvSGIX_size
    jal	__glFragmentLightModelfvSGIX_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 2641
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_FragmentLightModelfvSGIX

# Function: __glle_FragmentLightModeliSGIX
# Declared: Line 2645 (Source lines: 2646-2651)
# Address: 0x0d98e420 - 0x0d98e468 (Size: 72 bytes, Frame: 32)
.globl __glle_FragmentLightModeliSGIX
.ent __glle_FragmentLightModeliSGIX
__glle_FragmentLightModeliSGIX:
    # Line 2646
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,10604
    addu	$gp,$t9,$at
    # Line 2650
    lw	$t9,5376($zero)
    # Line 2646
    move	$s8,$a0
    # Line 2650
    lw	$a0,0($a0)
    # Line 2646
    sd	$ra,0($sp)
    # Line 2650
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2651
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FragmentLightModeliSGIX

# Function: __glle_FragmentLightModelivSGIX
# Declared: Line 2655 (Source lines: 2656-2666)
# Address: 0x0d98e470 - 0x0d98e4cc (Size: 92 bytes, Frame: 32)
.globl __glle_FragmentLightModelivSGIX
.ent __glle_FragmentLightModelivSGIX
__glle_FragmentLightModelivSGIX:
    # Line 2656
    addiu	$sp,$sp,-32
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,10524
    addu	$gp,$t9,$at
    # Line 2662
    lw	$t9,5380($zero)
    # Line 2656
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 2662
    lw	$a0,0($a0)
    # Line 2656
    sd	$ra,0($sp)
    # Line 2662
    jalr	$t9
    addiu	$a1,$s0,4
    # Line 2664
    # lw $t9, -24720($gp) # &__glFragmentLightModelivSGIX_size
    jal	__glFragmentLightModelivSGIX_size
    lw	$a0,0($s0)
    ld	$ra,0($sp)
    # Line 2666
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,4
.end __glle_FragmentLightModelivSGIX

# Function: __glle_FragmentMaterialfSGIX
# Declared: Line 2670 (Source lines: 2671-2676)
# Address: 0x0d98e4d0 - 0x0d98e51c (Size: 76 bytes, Frame: 32)
.globl __glle_FragmentMaterialfSGIX
.ent __glle_FragmentMaterialfSGIX
__glle_FragmentMaterialfSGIX:
    # Line 2671
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2675
    lw	$a0,0($a0)
    # Line 2671
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,10428
    addu	$gp,$t9,$at
    # Line 2675
    lw	$t9,5384($zero)
    # Line 2671
    sd	$ra,0($sp)
    # Line 2675
    lwc1	$f14,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2676
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FragmentMaterialfSGIX

# Function: __glle_FragmentMaterialfvSGIX
# Declared: Line 2680 (Source lines: 2681-2691)
# Address: 0x0d98e520 - 0x0d98e580 (Size: 96 bytes, Frame: 32)
.globl __glle_FragmentMaterialfvSGIX
.ent __glle_FragmentMaterialfvSGIX
__glle_FragmentMaterialfvSGIX:
    # Line 2681
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,10348
    addu	$gp,$t9,$at
    # Line 2687
    lw	$t9,5388($zero)
    # Line 2681
    move	$s0,$a0
    # Line 2687
    lw	$a0,0($a0)
    # Line 2681
    sd	$ra,0($sp)
    # Line 2687
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 2689
    # lw $t9, -24740($gp) # &__glFragmentMaterialfvSGIX_size
    jal	__glFragmentMaterialfvSGIX_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 2691
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_FragmentMaterialfvSGIX

# Function: __glle_FragmentMaterialiSGIX
# Declared: Line 2695 (Source lines: 2696-2701)
# Address: 0x0d98e580 - 0x0d98e5cc (Size: 76 bytes, Frame: 32)
.globl __glle_FragmentMaterialiSGIX
.ent __glle_FragmentMaterialiSGIX
__glle_FragmentMaterialiSGIX:
    # Line 2696
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2700
    lw	$a0,0($a0)
    # Line 2696
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,10252
    addu	$gp,$t9,$at
    # Line 2700
    lw	$t9,5392($zero)
    # Line 2696
    sd	$ra,0($sp)
    # Line 2700
    lw	$a2,8($s8)
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2701
    ld	$gp,16($sp)
    addiu	$v0,$s8,12
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_FragmentMaterialiSGIX

# Function: __glle_FragmentMaterialivSGIX
# Declared: Line 2705 (Source lines: 2706-2716)
# Address: 0x0d98e5d0 - 0x0d98e630 (Size: 96 bytes, Frame: 32)
.globl __glle_FragmentMaterialivSGIX
.ent __glle_FragmentMaterialivSGIX
__glle_FragmentMaterialivSGIX:
    # Line 2706
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    lui	$at,0xc
    sd	$gp,8($sp)
    addiu	$at,$at,10172
    addu	$gp,$t9,$at
    # Line 2712
    lw	$t9,5396($zero)
    # Line 2706
    move	$s0,$a0
    # Line 2712
    lw	$a0,0($a0)
    # Line 2706
    sd	$ra,0($sp)
    # Line 2712
    addiu	$a2,$s0,8
    jalr	$t9
    lw	$a1,4($s0)
    # Line 2714
    # lw $t9, -24736($gp) # &__glFragmentMaterialivSGIX_size
    jal	__glFragmentMaterialivSGIX_size
    lw	$a0,4($s0)
    ld	$ra,0($sp)
    # Line 2716
    ld	$gp,8($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_FragmentMaterialivSGIX

# Function: __glle_LightEnviSGIX
# Declared: Line 2724 (Source lines: 2725-2730)
# Address: 0x0d98e630 - 0x0d98e678 (Size: 72 bytes, Frame: 32)
.globl __glle_LightEnviSGIX
.ent __glle_LightEnviSGIX
__glle_LightEnviSGIX:
    # Line 2725
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,10076
    addu	$gp,$t9,$at
    # Line 2729
    lw	$t9,5416($zero)
    # Line 2725
    move	$s8,$a0
    # Line 2729
    lw	$a0,0($a0)
    # Line 2725
    sd	$ra,0($sp)
    # Line 2729
    jalr	$t9
    lw	$a1,4($s8)
    ld	$ra,0($sp)
    # Line 2730
    ld	$gp,16($sp)
    addiu	$v0,$s8,8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_LightEnviSGIX

# Function: __glle_TextureColorMaskSGIS
# Declared: Line 2734 (Source lines: 2735-2740)
# Address: 0x0d98e680 - 0x0d98e6d0 (Size: 80 bytes, Frame: 32)
.globl __glle_TextureColorMaskSGIS
.ent __glle_TextureColorMaskSGIS
__glle_TextureColorMaskSGIS:
    # Line 2735
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2739
    lbu	$a0,0($a0)
    # Line 2735
    sd	$ra,0($sp)
    lui	$at,0xc
    sd	$gp,16($sp)
    addiu	$at,$at,9996
    addu	$gp,$t9,$at
    # Line 2739
    lw	$t9,5420($zero)
    lbu	$a3,3($s8)
    lbu	$a2,2($s8)
    jalr	$t9
    lbu	$a1,1($s8)
    ld	$ra,0($sp)
    # Line 2740
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TextureColorMaskSGIS

