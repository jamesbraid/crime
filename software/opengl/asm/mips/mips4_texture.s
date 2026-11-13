# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips4_texture.ma
# Category: mips
# Compiler Options: 
# Total Functions: 3

.text

# Function: __glCalcEyeLinear
# Declared: Line 41 (Source lines: 41-70)
# Address: 0x0d9371a0 - 0x0d937218 (Size: 120 bytes, Frame: 0)
.globl __glCalcEyeLinear
.ent __glCalcEyeLinear
__glCalcEyeLinear:
    # Line 41
    lwc1	$f0,96($a1)
    # Line 42
    addiu	$v0,$a0,1988
    # Line 43
    lwc1	$f1,0($v0)
    # Line 44
    addiu	$v1,$a0,2112
    # Line 45
    lwc1	$f2,0($v1)
    # Line 46
    mul.s	$f3,$f1,$f0
    # Line 47
    lwc1	$f4,100($a1)
    # Line 48
    mul.s	$f5,$f2,$f0
    # Line 49
    lwc1	$f6,4($v0)
    # Line 50
    lwc1	$f7,4($v1)
    # Line 51
    madd.s	$f3,$f3,$f6,$f4
    # Line 52
    lwc1	$f8,104($a1)
    # Line 53
    madd.s	$f5,$f5,$f7,$f4
    # Line 54
    lwc1	$f9,8($v0)
    # Line 55
    lwc1	$f10,8($v1)
    # Line 56
    lw	$a3,29680($a0)
    # Line 57
    madd.s	$f3,$f3,$f9,$f8
    # Line 58
    lwc1	$f11,108($a1)
    # Line 59
    madd.s	$f5,$f5,$f10,$f8
    # Line 60
    lwc1	$f12,12($v0)
    # Line 61
    lwc1	$f13,12($v1)
    # Line 62
    lw	$t9,80($a3)
    # Line 63
    madd.s	$f3,$f3,$f12,$f11
    # Line 64
    addiu	$a0,$a1,48
    # Line 65
    madd.s	$f5,$f5,$f13,$f11
    # Line 66
    addiu	$a2,$a3,0
    # Line 67
    move	$a1,$a0
    # Line 68
    swc1	$f3,0($a1)
    # Line 69
    jr	$t9
    # Line 70
    swc1	$f5,4($a1)
.end __glCalcEyeLinear

# Function: __glCalcObjectLinear
# Declared: Line 82 (Source lines: 82-111)
# Address: 0x0d937218 - 0x0d937290 (Size: 120 bytes, Frame: 0)
.globl __glCalcObjectLinear
.ent __glCalcObjectLinear
__glCalcObjectLinear:
    # Line 82
    lwc1	$f14,16($a1)
    # Line 83
    addiu	$t0,$a0,2004
    # Line 84
    lwc1	$f15,0($t0)
    # Line 85
    addiu	$t1,$a0,2128
    # Line 86
    lwc1	$f16,0($t1)
    # Line 87
    mul.s	$f17,$f15,$f14
    # Line 88
    lwc1	$f18,20($a1)
    # Line 89
    mul.s	$f19,$f16,$f14
    # Line 90
    lwc1	$f0,4($t0)
    # Line 91
    lwc1	$f1,4($t1)
    # Line 92
    madd.s	$f17,$f17,$f0,$f18
    # Line 93
    lwc1	$f2,24($a1)
    # Line 94
    madd.s	$f19,$f19,$f1,$f18
    # Line 95
    lwc1	$f3,8($t0)
    # Line 96
    lwc1	$f4,8($t1)
    # Line 97
    lw	$t2,29680($a0)
    # Line 98
    madd.s	$f17,$f17,$f3,$f2
    # Line 99
    lwc1	$f5,28($a1)
    # Line 100
    madd.s	$f19,$f19,$f4,$f2
    # Line 101
    lwc1	$f6,12($t0)
    # Line 102
    lwc1	$f7,12($t1)
    # Line 103
    lw	$t9,80($t2)
    # Line 104
    madd.s	$f17,$f17,$f6,$f5
    # Line 105
    addiu	$a0,$a1,48
    # Line 106
    madd.s	$f19,$f19,$f7,$f5
    # Line 107
    addiu	$a2,$t2,0
    # Line 108
    move	$a1,$a0
    # Line 109
    swc1	$f17,0($a1)
    # Line 110
    jr	$t9
    # Line 111
    swc1	$f19,4($a1)
.end __glCalcObjectLinear

# Function: __glCalcTexture
# Declared: Line 127 (Source lines: 127-132)
# Address: 0x0d937290 - 0x0d9372a8 (Size: 24 bytes, Frame: 0)
.globl __glCalcTexture
.ent __glCalcTexture
__glCalcTexture:
    # Line 127
    lw	$t3,29680($a0)
    # Line 128
    addiu	$a0,$a1,48
    # Line 129
    lw	$t9,80($t3)
    # Line 130
    addiu	$a2,$t3,0
    # Line 131
    jr	$t9
    # Line 132
    move	$a1,$a0
.end __glCalcTexture

