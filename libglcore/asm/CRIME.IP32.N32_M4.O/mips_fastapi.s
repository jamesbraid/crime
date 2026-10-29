# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips_fastapi.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 8

.text

# Function: __glim_Color3f
# Declared: Line 83 (Source lines: 83-90)
# Address: 0x0d932b50 - 0x0d932b70 (Size: 32 bytes, Frame: 0)
.globl __glim_Color3f
.ent __glim_Color3f
__glim_Color3f:
    # Line 83
    lw	$a0,4112($zero)
    # Line 84
    lui	$v0,0x3f80
    # Line 85
    lw	$t9,12000($a0)
    # Line 86
    swc1	$f12,432($a0)
    # Line 87
    swc1	$f13,436($a0)
    # Line 88
    swc1	$f14,440($a0)
    # Line 89
    jr	$t9
    # Line 90
    sw	$v0,444($a0)
.end __glim_Color3f

# Function: __glim_Color3fv
# Declared: Line 113 (Source lines: 113-124)
# Address: 0x0d932b70 - 0x0d932ba0 (Size: 48 bytes, Frame: 0)
.globl __glim_Color3fv
.ent __glim_Color3fv
__glim_Color3fv:
    # Line 113
    lw	$v1,4112($zero)
    # Line 114
    lwc1	$f0,0($a0)
    # Line 115
    lwc1	$f1,4($a0)
    # Line 116
    lwc1	$f2,8($a0)
    # Line 117
    lui	$a0,0x3f80
    # Line 118
    lw	$t9,12000($v1)
    # Line 119
    swc1	$f0,432($v1)
    # Line 120
    swc1	$f1,436($v1)
    # Line 121
    swc1	$f2,440($v1)
    # Line 122
    sw	$a0,444($v1)
    # Line 123
    jr	$t9
    # Line 124
    move	$a0,$v1
.end __glim_Color3fv

# Function: __glim_Color4f
# Declared: Line 140 (Source lines: 140-147)
# Address: 0x0d932ba0 - 0x0d932bc0 (Size: 32 bytes, Frame: 0)
.globl __glim_Color4f
.ent __glim_Color4f
__glim_Color4f:
    # Line 140
    lw	$a0,4112($zero)
    # Line 141
    nop
    # Line 142
    lw	$t9,12000($a0)
    # Line 143
    swc1	$f12,432($a0)
    # Line 144
    swc1	$f13,436($a0)
    # Line 145
    swc1	$f14,440($a0)
    # Line 146
    jr	$t9
    # Line 147
    swc1	$f15,444($a0)
.end __glim_Color4f

# Function: __glim_Color4fv
# Declared: Line 163 (Source lines: 163-174)
# Address: 0x0d932bc0 - 0x0d932bf0 (Size: 48 bytes, Frame: 0)
.globl __glim_Color4fv
.ent __glim_Color4fv
__glim_Color4fv:
    # Line 163
    lw	$a1,4112($zero)
    # Line 164
    lwc1	$f3,0($a0)
    # Line 165
    lwc1	$f4,4($a0)
    # Line 166
    lwc1	$f5,8($a0)
    # Line 167
    lwc1	$f6,12($a0)
    # Line 168
    lw	$t9,12000($a1)
    # Line 169
    swc1	$f3,432($a1)
    # Line 170
    swc1	$f4,436($a1)
    # Line 171
    swc1	$f5,440($a1)
    # Line 172
    swc1	$f6,444($a1)
    # Line 173
    jr	$t9
    # Line 174
    move	$a0,$a1
.end __glim_Color4fv

# Function: __glim_Normal3f
# Declared: Line 197 (Source lines: 197-202)
# Address: 0x0d932bf0 - 0x0d932c08 (Size: 24 bytes, Frame: 0)
.globl __glim_Normal3f
.ent __glim_Normal3f
__glim_Normal3f:
    # Line 197
    lw	$a2,4112($zero)
    # Line 198
    nop
    # Line 199
    swc1	$f12,208($a2)
    # Line 200
    swc1	$f13,212($a2)
    # Line 201
    jr	$ra
    # Line 202
    swc1	$f14,216($a2)
.end __glim_Normal3f

# Function: __glim_Normal3fv
# Declared: Line 229 (Source lines: 229-236)
# Address: 0x0d932c08 - 0x0d932c28 (Size: 32 bytes, Frame: 0)
.globl __glim_Normal3fv
.ent __glim_Normal3fv
__glim_Normal3fv:
    # Line 229
    lw	$a3,4112($zero)
    # Line 230
    lwc1	$f7,0($a0)
    # Line 231
    lwc1	$f8,4($a0)
    # Line 232
    lwc1	$f9,8($a0)
    # Line 233
    swc1	$f7,208($a3)
    # Line 234
    swc1	$f8,212($a3)
    # Line 235
    jr	$ra
    # Line 236
    swc1	$f9,216($a3)
.end __glim_Normal3fv

# Function: __glim_TexCoord2f
# Declared: Line 257 (Source lines: 257-263)
# Address: 0x0d932c28 - 0x0d932c44 (Size: 28 bytes, Frame: 0)
.globl __glim_TexCoord2f
.ent __glim_TexCoord2f
__glim_TexCoord2f:
    # Line 257
    lw	$t0,4112($zero)
    # Line 258
    lui	$t1,0x3f80
    # Line 259
    swc1	$f12,224($t0)
    # Line 260
    swc1	$f13,228($t0)
    # Line 261
    sw	$zero,232($t0)
    # Line 262
    jr	$ra
    # Line 263
    sw	$t1,236($t0)
.end __glim_TexCoord2f

# Function: __glim_TexCoord2fv
# Declared: Line 285 (Source lines: 285-293)
# Address: 0x0d932c44 - 0x0d932c68 (Size: 36 bytes, Frame: 0)
.globl __glim_TexCoord2fv
.ent __glim_TexCoord2fv
__glim_TexCoord2fv:
    # Line 285
    lw	$t2,4112($zero)
    # Line 286
    lwc1	$f10,0($a0)
    # Line 287
    lwc1	$f11,4($a0)
    # Line 288
    lui	$t3,0x3f80
    # Line 289
    swc1	$f10,224($t2)
    # Line 290
    swc1	$f11,228($t2)
    # Line 291
    sw	$zero,232($t2)
    # Line 292
    jr	$ra
    # Line 293
    sw	$t3,236($t2)
.end __glim_TexCoord2fv

