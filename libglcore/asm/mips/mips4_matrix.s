# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips4_matrix.ma
# Category: mips
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glMipsNormalize
# Declared: Line 29 (Source lines: 29-107)
# Address: 0x0d9915a0 - 0x0d991670 (Size: 208 bytes, Frame: 0)
.globl __glMipsNormalize
.ent __glMipsNormalize
__glMipsNormalize:
    # Line 29
    lwc1	$f1,0($a1)
    # Line 30
    lwc1	$f3,4($a1)
    # Line 31
    lwc1	$f5,8($a1)
    # Line 32
    mul.s	$f6,$f1,$f1
    # Line 33
    madd.s	$f6,$f6,$f3,$f3
    # Line 34
    madd.s	$f6,$f6,$f5,$f5
    # Line 46
    lui	$v0,0x3f80
    # Line 47
    lui	$v1,0x5f37
    # Line 48
    mfc1	$a1,$f6
    # Line 49
    addiu	$v1,$v1,23040
    # Line 50
    srl	$a2,$a1,0x1
    # Line 51
    beq	$v0,$a1,.L0d991660
    # Line 52
    subu	$a2,$v1,$a2
    # Line 53
    mtc1	$a2,$f7
    # Line 65
    lui	$a3,0x3d80
    # Line 66
    addiu	$a3,$a3,41
    # Line 67
    mul.s	$f8,$f6,$f7
    # Line 68
    mtc1	$a3,$f9
    # Line 69
    lui	$a7,0x7f80
    # Line 70
    and	$a1,$a1,$a7
    # Line 71
    lui	$t8,0x4040
    # Line 72
    mul.s	$f9,$f7,$f9
    # Line 73
    mtc1	$t8,$f10
    # Line 74
    slt	$a7,$a1,$a7
    # Line 75
    nmsub.s	$f10,$f10,$f8,$f7
    # Line 76
    slt	$a1,$zero,$a1
    # Line 77
    mul.s	$f8,$f8,$f7
    # Line 78
    and	$a1,$a7,$a1
    # Line 79
    beqz	$a1,.L0d991650
    # Line 80
    mul.s	$f9,$f9,$f10
    # Line 81
    lui	$t9,0x4140
    # Line 82
    mul.s	$f8,$f8,$f10
    # Line 83
    mtc1	$t9,$f11
    # Line 84
    mul.s	$f1,$f1,$f9
    # Line 85
    mul.s	$f3,$f3,$f9
    # Line 86
    nmsub.s	$f11,$f11,$f8,$f10
    # Line 87
    mul.s	$f5,$f5,$f9
    # Line 88
    mul.s	$f1,$f1,$f11
    # Line 89
    mul.s	$f3,$f3,$f11
    # Line 90
    mul.s	$f5,$f5,$f11
    # Line 91
    swc1	$f1,0($a0)
    # Line 92
    swc1	$f3,4($a0)
    # Line 93
    jr	$ra
    # Line 94
    swc1	$f5,8($a0)
.L0d991650:
    # Line 97
    sw	$zero,0($a0)
    # Line 98
    sw	$zero,4($a0)
    # Line 99
    jr	$ra
    # Line 100
    sw	$zero,8($a0)
.L0d991660:
    # Line 104
    swc1	$f1,0($a0)
    # Line 105
    swc1	$f3,4($a0)
    # Line 106
    jr	$ra
    # Line 107
    swc1	$f5,8($a0)
.end __glMipsNormalize

