# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME/crm_pointasm.ma
# Category: CRIME
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glCrmRenderPointRGBA
# Declared: Line 46 (Source lines: 46-79)
# Address: 0x0d95e250 - 0x0d95e2d8 (Size: 136 bytes, Frame: 0)
.globl __glCrmRenderPointRGBA
.ent __glCrmRenderPointRGBA
__glCrmRenderPointRGBA:
    # Line 46
    lw	$v0,8($a1)
    # Line 47
    ldc1	$f0,128($a1)
    # Line 48
    lwc1	$f1,0($v0)
    # Line 49
    lwc1	$f2,4($v0)
    # Line 50
    lwc1	$f3,8($v0)
    # Line 51
    lwc1	$f4,12($v0)
    # Line 52
    trunc.w.s	$f1,$f1
    # Line 53
    lw	$a1,32184($a0)
    # Line 54
    trunc.w.s	$f2,$f2
    # Line 55
    lw	$a3,32100($a0)
    # Line 56
    trunc.w.s	$f3,$f3
    # Line 57
    lw	$t1,32096($a0)
    # Line 58
    trunc.w.s	$f4,$f4
    # Line 59
    sdc1	$f0,8320($a1)
    # Line 60
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 61
    beq	$a3,$t1,.L0d95e2a8
    # Line 62
    nop
    # Line 63
    lw	$t3,32188($a0)
    # Line 64
    sw	$a3,8288($a1)
    # Line 65
    sw	$a3,8288($t3)
    # Line 66
    sw	$a3,32096($a0)
.L0d95e2a8:
    # Line 68
    mfc1	$a4,$f1
    # Line 69
    mfc1	$a5,$f2
    # Line 70
    mfc1	$a6,$f3
    # Line 71
    mfc1	$a7,$f4
    # Line 72
    sll	$a4,$a4,0x18
    # Line 73
    sll	$a5,$a5,0x10
    # Line 74
    sll	$a6,$a6,0x8
    # Line 75
    or	$a7,$a7,$a4
    # Line 76
    or	$a7,$a7,$a5
    # Line 77
    or	$a7,$a7,$a6
    # Line 78
    jr	$ra
    # Line 79
    sw	$a7,10448($a1)
.end __glCrmRenderPointRGBA

# Function: __glCrmRenderPointDepthRGBA
# Declared: Line 92 (Source lines: 92-135)
# Address: 0x0d95e2d8 - 0x0d95e380 (Size: 168 bytes, Frame: 0)
.globl __glCrmRenderPointDepthRGBA
.ent __glCrmRenderPointDepthRGBA
__glCrmRenderPointDepthRGBA:
    # Line 92
    lwc1	$f5,136($a1)
    # Line 93
    lwc1	$f6,32024($a0)
    # Line 94
    lw	$t8,32100($a0)
    # Line 95
    lw	$t9,32096($a0)
    # Line 96
    lw	$v0,32184($a0)
    # Line 97
    ldc1	$f7,128($a1)
    # Line 98
    mul.s	$f5,$f5,$f6
    # Line 99
    beq	$t8,$t9,.L0d95e30c
    # Line 100
    sdc1	$f7,8320($v0)
    # Line 101
    lw	$v1,32188($a0)
    # Line 102
    sw	$t8,8288($v0)
    # Line 103
    sw	$t8,8288($v1)
    # Line 104
    sw	$t8,32096($a0)
.L0d95e30c:
    # Line 107
    addiu	$a2,$a0,32767
    lw	$a2,125($a2)
    # Line 108
    lw	$a3,8($a1)
    # Line 109
    andi	$a2,$a2,0x2
    # Line 110
    trunc.l.s	$f5,$f5
    # Line 111
    bnez	$a2,.L0d95e378
    # Line 112
    lwc1	$f8,0($a3)
    # Line 113
    lwc1	$f9,4($a3)
    # Line 114
    lwc1	$f10,8($a3)
    # Line 115
    lwc1	$f11,12($a3)
    # Line 116
    trunc.w.s	$f8,$f8
    # Line 117
    trunc.w.s	$f9,$f9
    # Line 118
    trunc.w.s	$f10,$f10
    # Line 119
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 120
    trunc.w.s	$f11,$f11
    # Line 121
    mfc1	$a5,$f8
    # Line 122
    mfc1	$a6,$f9
    # Line 123
    mfc1	$a7,$f10
    # Line 124
    mfc1	$t8,$f11
    # Line 125
    sll	$a5,$a5,0x18
    # Line 126
    sll	$a6,$a6,0x10
    # Line 127
    sll	$a7,$a7,0x8
    # Line 128
    or	$t8,$t8,$a5
    # Line 129
    or	$t8,$t8,$a6
    # Line 130
    or	$t8,$t8,$a7
    # Line 131
    sw	$t8,8400($v0)
.L0d95e378:
    # Line 134
    jr	$ra
    # Line 135
    sdc1	$f5,10696($v0)
.end __glCrmRenderPointDepthRGBA

