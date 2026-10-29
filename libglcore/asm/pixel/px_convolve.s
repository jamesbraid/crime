# Source: ../pixel/px_convolve.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_convolve.c
# Total Functions: 35

.text

# Function: __glRowScaleSumRGBA
# Declared: Line 40 (Source lines: 42-55)
# Address: 0x0d999560 - 0x0d9996a8 (Size: 328 bytes, Frame: 0)
.globl __glRowScaleSumRGBA
.ent __glRowScaleSumRGBA
__glRowScaleSumRGBA:
    # Line 48
    lw	$a5,184($a1)
    # Line 42
    move	$a6,$a3
    # Line 48
    blez	$a5,.L0d9996a0
    # Line 42
    move	$a7,$a4
    sra	$v0,$a5,0x1
    andi	$at,$a5,0x1
    beqz	$at,.L0d9995dc
    # Line 48
    move	$a4,$zero
    # Line 50
    lwc1	$f11,0($a3)
    lwc1	$f10,0($a2)
    lwc1	$f9,0($a7)
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($a7)
    # Line 51
    lwc1	$f8,4($a3)
    lwc1	$f7,4($a2)
    lwc1	$f6,4($a7)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a7)
    # Line 52
    lwc1	$f5,8($a3)
    lwc1	$f4,8($a2)
    lwc1	$f3,8($a7)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($a7)
    # Line 53
    lwc1	$f2,12($a2)
    lwc1	$f1,12($a3)
    lwc1	$f0,12($a7)
    madd.s	$f0,$f0,$f1,$f2
    addiu	$a7,$a7,16
    # Line 49
    li	$a4,1
    # Line 53
    addiu	$a6,$a3,16
    swc1	$f0,-4($a7)
.L0d9995dc:
    move	$a1,$a7
    beqz	$v0,.L0d9996a0
    move	$a3,$a6
    nop
    nop
.L0d9995f0:
    # Line 50
    lwc1	$f8,0($a2)
    lwc1	$f9,0($a3)
    lwc1	$f7,0($a1)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,0($a1)
    # Line 51
    lwc1	$f5,4($a2)
    lwc1	$f6,4($a3)
    lwc1	$f4,4($a1)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,4($a1)
    # Line 52
    lwc1	$f2,8($a2)
    lwc1	$f3,8($a3)
    lwc1	$f1,8($a1)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,8($a1)
    # Line 53
    lwc1	$f31,12($a3)
    lwc1	$f0,12($a2)
    lwc1	$f29,12($a1)
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,12($a1)
    # Line 50
    lwc1	$f25,0($a2)
    lwc1	$f27,16($a3)
    lwc1	$f23,16($a1)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,16($a1)
    # Line 51
    lwc1	$f19,4($a2)
    lwc1	$f21,20($a3)
    lwc1	$f18,20($a1)
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,20($a1)
    # Line 52
    lwc1	$f16,8($a2)
    lwc1	$f17,24($a3)
    lwc1	$f15,24($a1)
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,24($a1)
    # Line 53
    lwc1	$f13,28($a3)
    lwc1	$f14,12($a2)
    lwc1	$f12,28($a1)
    madd.s	$f12,$f12,$f13,$f14
    # Line 49
    addiu	$a4,$a4,2
    # Line 53
    addiu	$a1,$a1,32
    addiu	$a3,$a3,32
    # Line 49
    bne	$a5,$a4,.L0d9995f0
    # Line 53
    swc1	$f12,-4($a1)
.L0d9996a0:
    # Line 55
    jr	$ra
    nop
.end __glRowScaleSumRGBA

# Function: __glRowScaleSumRGB
# Declared: Line 61 (Source lines: 63-77)
# Address: 0x0d9996b0 - 0x0d999838 (Size: 392 bytes, Frame: 0)
.globl __glRowScaleSumRGB
.ent __glRowScaleSumRGB
__glRowScaleSumRGB:
    # Line 69
    lw	$a5,184($a1)
    # Line 63
    move	$a6,$a3
    # Line 69
    blez	$a5,.L0d999830
    # Line 63
    move	$a7,$a4
    andi	$a3,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a3,.L0d999720
    # Line 69
    move	$a1,$zero
.L0d9996d0:
    # Line 71
    lwc1	$f7,0($a2)
    lwc1	$f8,0($a6)
    lwc1	$f6,0($a7)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,0($a7)
    # Line 72
    lwc1	$f4,4($a2)
    lwc1	$f5,4($a6)
    lwc1	$f3,4($a7)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,4($a7)
    # Line 73
    lwc1	$f1,8($a2)
    lwc1	$f2,8($a6)
    lwc1	$f0,8($a7)
    madd.s	$f0,$f0,$f1,$f2
    addiu	$a3,$a3,-1
    # Line 70
    addiu	$a1,$a1,1
    # Line 75
    addiu	$a7,$a7,16
    # Line 74
    addiu	$a6,$a6,16
    bnez	$a3,.L0d9996d0
    # Line 73
    swc1	$f0,-8($a7)
.L0d999720:
    move	$a3,$a7
    beqz	$at,.L0d999830
    move	$a4,$a6
    nop
.L0d999730:
    # Line 71
    lwc1	$f17,0($a2)
    lwc1	$f18,0($a4)
    lwc1	$f16,0($a3)
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,0($a3)
    # Line 72
    lwc1	$f14,4($a2)
    lwc1	$f15,4($a4)
    lwc1	$f13,4($a3)
    madd.s	$f13,$f13,$f14,$f15
    swc1	$f13,4($a3)
    # Line 73
    lwc1	$f11,8($a2)
    lwc1	$f12,8($a4)
    lwc1	$f10,8($a3)
    madd.s	$f10,$f10,$f11,$f12
    swc1	$f10,8($a3)
    # Line 71
    lwc1	$f8,0($a2)
    lwc1	$f9,16($a4)
    lwc1	$f7,16($a3)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,16($a3)
    # Line 72
    lwc1	$f5,4($a2)
    lwc1	$f6,20($a4)
    lwc1	$f4,20($a3)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,20($a3)
    # Line 73
    lwc1	$f2,8($a2)
    lwc1	$f3,24($a4)
    lwc1	$f1,24($a3)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,24($a3)
    # Line 71
    lwc1	$f31,0($a2)
    lwc1	$f0,32($a4)
    lwc1	$f29,32($a3)
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,32($a3)
    # Line 72
    lwc1	$f25,4($a2)
    lwc1	$f27,36($a4)
    lwc1	$f23,36($a3)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,36($a3)
    # Line 73
    lwc1	$f19,8($a2)
    lwc1	$f21,40($a4)
    lwc1	$f18,40($a3)
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,40($a3)
    # Line 71
    lwc1	$f16,0($a2)
    lwc1	$f17,48($a4)
    lwc1	$f15,48($a3)
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,48($a3)
    # Line 72
    lwc1	$f13,4($a2)
    lwc1	$f14,52($a4)
    lwc1	$f12,52($a3)
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,52($a3)
    # Line 73
    lwc1	$f10,8($a2)
    lwc1	$f11,56($a4)
    lwc1	$f9,56($a3)
    madd.s	$f9,$f9,$f10,$f11
    # Line 70
    addiu	$a1,$a1,4
    # Line 75
    addiu	$a3,$a3,64
    # Line 74
    addiu	$a4,$a4,64
    # Line 70
    bne	$a5,$a1,.L0d999730
    # Line 73
    swc1	$f9,-8($a3)
.L0d999830:
    # Line 77
    jr	$ra
    nop
.end __glRowScaleSumRGB

# Function: __glRowScaleSumL
# Declared: Line 83 (Source lines: 85-99)
# Address: 0x0d999840 - 0x0d9999c8 (Size: 392 bytes, Frame: 0)
.globl __glRowScaleSumL
.ent __glRowScaleSumL
__glRowScaleSumL:
    # Line 91
    lw	$a5,184($a1)
    # Line 85
    move	$a6,$a3
    # Line 91
    blez	$a5,.L0d9999c0
    # Line 85
    move	$a7,$a4
    andi	$a3,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a3,.L0d9998b0
    # Line 91
    move	$a1,$zero
.L0d999860:
    # Line 93
    lwc1	$f7,0($a2)
    lwc1	$f8,0($a6)
    lwc1	$f6,0($a7)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,0($a7)
    # Line 94
    lwc1	$f4,0($a2)
    lwc1	$f5,4($a6)
    lwc1	$f3,4($a7)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,4($a7)
    # Line 95
    lwc1	$f1,0($a2)
    lwc1	$f2,8($a6)
    lwc1	$f0,8($a7)
    madd.s	$f0,$f0,$f1,$f2
    addiu	$a3,$a3,-1
    # Line 92
    addiu	$a1,$a1,1
    # Line 97
    addiu	$a7,$a7,16
    # Line 96
    addiu	$a6,$a6,16
    bnez	$a3,.L0d999860
    # Line 95
    swc1	$f0,-8($a7)
.L0d9998b0:
    move	$a3,$a7
    beqz	$at,.L0d9999c0
    move	$a4,$a6
    nop
.L0d9998c0:
    # Line 93
    lwc1	$f17,0($a2)
    lwc1	$f18,0($a4)
    lwc1	$f16,0($a3)
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,0($a3)
    # Line 94
    lwc1	$f14,0($a2)
    lwc1	$f15,4($a4)
    lwc1	$f13,4($a3)
    madd.s	$f13,$f13,$f14,$f15
    swc1	$f13,4($a3)
    # Line 95
    lwc1	$f11,0($a2)
    lwc1	$f12,8($a4)
    lwc1	$f10,8($a3)
    madd.s	$f10,$f10,$f11,$f12
    swc1	$f10,8($a3)
    # Line 93
    lwc1	$f8,0($a2)
    lwc1	$f9,16($a4)
    lwc1	$f7,16($a3)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,16($a3)
    # Line 94
    lwc1	$f5,0($a2)
    lwc1	$f6,20($a4)
    lwc1	$f4,20($a3)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,20($a3)
    # Line 95
    lwc1	$f2,0($a2)
    lwc1	$f3,24($a4)
    lwc1	$f1,24($a3)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,24($a3)
    # Line 93
    lwc1	$f31,0($a2)
    lwc1	$f0,32($a4)
    lwc1	$f29,32($a3)
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,32($a3)
    # Line 94
    lwc1	$f25,0($a2)
    lwc1	$f27,36($a4)
    lwc1	$f23,36($a3)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,36($a3)
    # Line 95
    lwc1	$f19,0($a2)
    lwc1	$f21,40($a4)
    lwc1	$f18,40($a3)
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,40($a3)
    # Line 93
    lwc1	$f16,0($a2)
    lwc1	$f17,48($a4)
    lwc1	$f15,48($a3)
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,48($a3)
    # Line 94
    lwc1	$f13,0($a2)
    lwc1	$f14,52($a4)
    lwc1	$f12,52($a3)
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,52($a3)
    # Line 95
    lwc1	$f10,0($a2)
    lwc1	$f11,56($a4)
    lwc1	$f9,56($a3)
    madd.s	$f9,$f9,$f10,$f11
    # Line 92
    addiu	$a1,$a1,4
    # Line 97
    addiu	$a3,$a3,64
    # Line 96
    addiu	$a4,$a4,64
    # Line 92
    bne	$a5,$a1,.L0d9998c0
    # Line 95
    swc1	$f9,-8($a3)
.L0d9999c0:
    # Line 99
    jr	$ra
    nop
.end __glRowScaleSumL

# Function: __glRowScaleSumLA
# Declared: Line 105 (Source lines: 107-120)
# Address: 0x0d9999d0 - 0x0d999b18 (Size: 328 bytes, Frame: 0)
.globl __glRowScaleSumLA
.ent __glRowScaleSumLA
__glRowScaleSumLA:
    # Line 113
    lw	$a5,184($a1)
    # Line 107
    move	$a6,$a3
    # Line 113
    blez	$a5,.L0d999b10
    # Line 107
    move	$a7,$a4
    sra	$v0,$a5,0x1
    andi	$at,$a5,0x1
    beqz	$at,.L0d999a4c
    # Line 113
    move	$a4,$zero
    # Line 115
    lwc1	$f11,0($a3)
    lwc1	$f10,0($a2)
    lwc1	$f9,0($a7)
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($a7)
    # Line 116
    lwc1	$f8,4($a3)
    lwc1	$f7,0($a2)
    lwc1	$f6,4($a7)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a7)
    # Line 117
    lwc1	$f5,8($a3)
    lwc1	$f4,0($a2)
    lwc1	$f3,8($a7)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($a7)
    # Line 118
    lwc1	$f2,4($a2)
    lwc1	$f1,12($a3)
    lwc1	$f0,12($a7)
    madd.s	$f0,$f0,$f1,$f2
    addiu	$a7,$a7,16
    # Line 114
    li	$a4,1
    # Line 118
    addiu	$a6,$a3,16
    swc1	$f0,-4($a7)
.L0d999a4c:
    move	$a1,$a7
    beqz	$v0,.L0d999b10
    move	$a3,$a6
    nop
    nop
.L0d999a60:
    # Line 115
    lwc1	$f8,0($a2)
    lwc1	$f9,0($a3)
    lwc1	$f7,0($a1)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,0($a1)
    # Line 116
    lwc1	$f5,0($a2)
    lwc1	$f6,4($a3)
    lwc1	$f4,4($a1)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,4($a1)
    # Line 117
    lwc1	$f2,0($a2)
    lwc1	$f3,8($a3)
    lwc1	$f1,8($a1)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,8($a1)
    # Line 118
    lwc1	$f31,12($a3)
    lwc1	$f0,4($a2)
    lwc1	$f29,12($a1)
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,12($a1)
    # Line 115
    lwc1	$f25,0($a2)
    lwc1	$f27,16($a3)
    lwc1	$f23,16($a1)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,16($a1)
    # Line 116
    lwc1	$f19,0($a2)
    lwc1	$f21,20($a3)
    lwc1	$f18,20($a1)
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,20($a1)
    # Line 117
    lwc1	$f16,0($a2)
    lwc1	$f17,24($a3)
    lwc1	$f15,24($a1)
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,24($a1)
    # Line 118
    lwc1	$f13,28($a3)
    lwc1	$f14,4($a2)
    lwc1	$f12,28($a1)
    madd.s	$f12,$f12,$f13,$f14
    # Line 114
    addiu	$a4,$a4,2
    # Line 118
    addiu	$a1,$a1,32
    addiu	$a3,$a3,32
    # Line 114
    bne	$a5,$a4,.L0d999a60
    # Line 118
    swc1	$f12,-4($a1)
.L0d999b10:
    # Line 120
    jr	$ra
    nop
.end __glRowScaleSumLA

# Function: __glRowScaleSumI
# Declared: Line 126 (Source lines: 128-141)
# Address: 0x0d999b20 - 0x0d999c68 (Size: 328 bytes, Frame: 0)
.globl __glRowScaleSumI
.ent __glRowScaleSumI
__glRowScaleSumI:
    # Line 134
    lw	$a5,184($a1)
    # Line 128
    move	$a6,$a3
    # Line 134
    blez	$a5,.L0d999c60
    # Line 128
    move	$a7,$a4
    sra	$v0,$a5,0x1
    andi	$at,$a5,0x1
    beqz	$at,.L0d999b9c
    # Line 134
    move	$a4,$zero
    # Line 136
    lwc1	$f11,0($a3)
    lwc1	$f10,0($a2)
    lwc1	$f9,0($a7)
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($a7)
    # Line 137
    lwc1	$f8,4($a3)
    lwc1	$f7,0($a2)
    lwc1	$f6,4($a7)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a7)
    # Line 138
    lwc1	$f5,8($a3)
    lwc1	$f4,0($a2)
    lwc1	$f3,8($a7)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($a7)
    # Line 139
    lwc1	$f2,0($a2)
    lwc1	$f1,12($a3)
    lwc1	$f0,12($a7)
    madd.s	$f0,$f0,$f1,$f2
    addiu	$a7,$a7,16
    # Line 135
    li	$a4,1
    # Line 139
    addiu	$a6,$a3,16
    swc1	$f0,-4($a7)
.L0d999b9c:
    move	$a1,$a7
    beqz	$v0,.L0d999c60
    move	$a3,$a6
    nop
    nop
.L0d999bb0:
    # Line 136
    lwc1	$f8,0($a2)
    lwc1	$f9,0($a3)
    lwc1	$f7,0($a1)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,0($a1)
    # Line 137
    lwc1	$f5,0($a2)
    lwc1	$f6,4($a3)
    lwc1	$f4,4($a1)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,4($a1)
    # Line 138
    lwc1	$f2,0($a2)
    lwc1	$f3,8($a3)
    lwc1	$f1,8($a1)
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,8($a1)
    # Line 139
    lwc1	$f31,12($a3)
    lwc1	$f0,0($a2)
    lwc1	$f29,12($a1)
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,12($a1)
    # Line 136
    lwc1	$f25,0($a2)
    lwc1	$f27,16($a3)
    lwc1	$f23,16($a1)
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,16($a1)
    # Line 137
    lwc1	$f19,0($a2)
    lwc1	$f21,20($a3)
    lwc1	$f18,20($a1)
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,20($a1)
    # Line 138
    lwc1	$f16,0($a2)
    lwc1	$f17,24($a3)
    lwc1	$f15,24($a1)
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,24($a1)
    # Line 139
    lwc1	$f13,28($a3)
    lwc1	$f14,0($a2)
    lwc1	$f12,28($a1)
    madd.s	$f12,$f12,$f13,$f14
    # Line 135
    addiu	$a4,$a4,2
    # Line 139
    addiu	$a1,$a1,32
    addiu	$a3,$a3,32
    # Line 135
    bne	$a5,$a4,.L0d999bb0
    # Line 139
    swc1	$f12,-4($a1)
.L0d999c60:
    # Line 141
    jr	$ra
    nop
.end __glRowScaleSumI

# Function: __glSpanPostConvScaleBiasRGBA
# Declared: Line 148 (Source lines: 150-184)
# Address: 0x0d999c70 - 0x0d999df8 (Size: 392 bytes, Frame: 0)
.globl __glSpanPostConvScaleBiasRGBA
.ent __glSpanPostConvScaleBiasRGBA
__glSpanPostConvScaleBiasRGBA:
    # Line 165
    lwc1	$f5,692($a0)
    # Line 169
    lwc1	$f12,30752($a0)
    lwc1	$f9,696($a0)
    # Line 173
    lwc1	$f6,30760($a0)
    # Line 175
    lwc1	$f10,30792($a0)
    # Line 171
    lwc1	$f13,30756($a0)
    lwc1	$f8,700($a0)
    # Line 175
    lwc1	$f7,708($a0)
    # Line 173
    lwc1	$f4,704($a0)
    # Line 157
    lw	$a5,184($a1)
    # Line 171
    mul.s	$f8,$f8,$f13
    # Line 164
    lwc1	$f11,688($a0)
    # Line 175
    mul.s	$f7,$f7,$f10
    # Line 150
    move	$a7,$a3
    # Line 163
    lwc1	$f10,684($a0)
    # Line 173
    mul.s	$f4,$f4,$f6
    # Line 150
    move	$a6,$a2
    # Line 162
    lwc1	$f6,680($a0)
    # Line 175
    blez	$a5,.L0d999df0
    # Line 169
    mul.s	$f9,$f9,$f12
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d999d14
    # Line 175
    move	$a1,$zero
.L0d999cd0:
    # Line 179
    lwc1	$f15,0($a6)
    madd.s	$f15,$f9,$f15,$f6
    swc1	$f15,0($a7)
    # Line 180
    lwc1	$f14,4($a6)
    madd.s	$f14,$f8,$f14,$f10
    swc1	$f14,4($a7)
    # Line 181
    lwc1	$f13,8($a6)
    madd.s	$f13,$f4,$f13,$f11
    swc1	$f13,8($a7)
    # Line 182
    lwc1	$f12,12($a6)
    madd.s	$f12,$f7,$f12,$f5
    addiu	$a2,$a2,-1
    # Line 178
    addiu	$a1,$a1,1
    # Line 182
    addiu	$a7,$a7,16
    addiu	$a6,$a6,16
    bnez	$a2,.L0d999cd0
    swc1	$f12,-4($a7)
.L0d999d14:
    move	$a2,$a6
    beqz	$at,.L0d999df0
    move	$a3,$a7
.L0d999d20:
    # Line 179
    lwc1	$f13,0($a2)
    madd.s	$f13,$f9,$f13,$f6
    swc1	$f13,0($a3)
    # Line 180
    lwc1	$f12,4($a2)
    madd.s	$f12,$f8,$f12,$f10
    swc1	$f12,4($a3)
    # Line 181
    lwc1	$f3,8($a2)
    madd.s	$f3,$f4,$f3,$f11
    swc1	$f3,8($a3)
    # Line 182
    lwc1	$f2,12($a2)
    madd.s	$f2,$f7,$f2,$f5
    swc1	$f2,12($a3)
    # Line 179
    lwc1	$f1,16($a2)
    madd.s	$f1,$f9,$f1,$f6
    swc1	$f1,16($a3)
    # Line 180
    lwc1	$f0,20($a2)
    madd.s	$f0,$f8,$f0,$f10
    swc1	$f0,20($a3)
    # Line 181
    lwc1	$f31,24($a2)
    madd.s	$f31,$f4,$f31,$f11
    swc1	$f31,24($a3)
    # Line 182
    lwc1	$f29,28($a2)
    madd.s	$f29,$f7,$f29,$f5
    swc1	$f29,28($a3)
    # Line 179
    lwc1	$f27,32($a2)
    madd.s	$f27,$f9,$f27,$f6
    swc1	$f27,32($a3)
    # Line 180
    lwc1	$f25,36($a2)
    madd.s	$f25,$f8,$f25,$f10
    swc1	$f25,36($a3)
    # Line 181
    lwc1	$f23,40($a2)
    madd.s	$f23,$f4,$f23,$f11
    swc1	$f23,40($a3)
    # Line 182
    lwc1	$f21,44($a2)
    madd.s	$f21,$f7,$f21,$f5
    swc1	$f21,44($a3)
    # Line 179
    lwc1	$f19,48($a2)
    madd.s	$f19,$f9,$f19,$f6
    swc1	$f19,48($a3)
    # Line 180
    lwc1	$f18,52($a2)
    madd.s	$f18,$f8,$f18,$f10
    swc1	$f18,52($a3)
    # Line 181
    lwc1	$f17,56($a2)
    madd.s	$f17,$f4,$f17,$f11
    swc1	$f17,56($a3)
    # Line 182
    lwc1	$f16,60($a2)
    madd.s	$f16,$f7,$f16,$f5
    # Line 178
    addiu	$a1,$a1,4
    # Line 182
    addiu	$a3,$a3,64
    addiu	$a2,$a2,64
    # Line 178
    bne	$a5,$a1,.L0d999d20
    # Line 182
    swc1	$f16,-4($a3)
.L0d999df0:
    # Line 184
    jr	$ra
    nop
.end __glSpanPostConvScaleBiasRGBA

# Function: __glRowSetNoAlpha
# Declared: Line 202 (Source lines: 204-220)
# Address: 0x0d999e00 - 0x0d999ec8 (Size: 200 bytes, Frame: 0)
.globl __glRowSetNoAlpha
.ent __glRowSetNoAlpha
__glRowSetNoAlpha:
    # Line 210
    lw	$a4,184($a1)
    # Line 204
    move	$a5,$a3
    # Line 212
    blez	$a4,.L0d999ec0
    addiu	$a6,$a2,12
    mtc1	$zero,$f4
    andi	$a2,$a4,0x3
    sra	$at,$a4,0x2
    beqz	$a2,.L0d999e4c
    move	$a1,$zero
.L0d999e24:
    # Line 214
    swc1	$f4,0($a5)
    # Line 215
    swc1	$f4,4($a5)
    # Line 216
    swc1	$f4,8($a5)
    addiu	$a2,$a2,-1
    # Line 217
    lwc1	$f0,0($a6)
    # Line 213
    addiu	$a1,$a1,1
    # Line 217
    addiu	$a5,$a5,16
    # Line 218
    addiu	$a6,$a6,16
    bnez	$a2,.L0d999e24
    # Line 217
    swc1	$f0,-4($a5)
.L0d999e4c:
    move	$a2,$a5
    beqz	$at,.L0d999ec0
    move	$a3,$a6
    nop
    nop
.L0d999e60:
    # Line 216
    swc1	$f4,8($a2)
    # Line 215
    swc1	$f4,4($a2)
    # Line 214
    swc1	$f4,0($a2)
    # Line 217
    lwc1	$f5,0($a3)
    # Line 216
    swc1	$f4,24($a2)
    # Line 215
    swc1	$f4,20($a2)
    # Line 214
    swc1	$f4,16($a2)
    # Line 217
    swc1	$f5,12($a2)
    lwc1	$f3,16($a3)
    # Line 216
    swc1	$f4,40($a2)
    # Line 215
    swc1	$f4,36($a2)
    # Line 214
    swc1	$f4,32($a2)
    # Line 217
    swc1	$f3,28($a2)
    lwc1	$f2,32($a3)
    # Line 216
    swc1	$f4,56($a2)
    # Line 215
    swc1	$f4,52($a2)
    # Line 214
    swc1	$f4,48($a2)
    # Line 217
    swc1	$f2,44($a2)
    # Line 213
    addiu	$a1,$a1,4
    # Line 217
    lwc1	$f1,48($a3)
    addiu	$a2,$a2,64
    # Line 218
    addiu	$a3,$a3,64
    # Line 213
    bne	$a4,$a1,.L0d999e60
    # Line 217
    swc1	$f1,-4($a2)
.L0d999ec0:
    # Line 220
    jr	$ra
    nop
.end __glRowSetNoAlpha

# Function: __glRowSetAll
# Declared: Line 223 (Source lines: 225-237)
# Address: 0x0d999ed0 - 0x0d999f14 (Size: 68 bytes, Frame: 0)
.globl __glRowSetAll
.ent __glRowSetAll
__glRowSetAll:
    # Line 230
    lw	$a4,184($a1)
    move	$a1,$zero
    blez	$a4,.L0d999f0c
    # Line 225
    move	$a2,$a3
    # Line 230
    mtc1	$zero,$f4
    nop
    nop
    nop
.L0d999ef0:
    # Line 232
    swc1	$f4,0($a2)
    # Line 233
    swc1	$f4,4($a2)
    # Line 231
    addiu	$a1,$a1,1
    # Line 234
    swc1	$f4,8($a2)
    # Line 235
    swc1	$f4,12($a2)
    # Line 231
    bne	$a4,$a1,.L0d999ef0
    # Line 235
    addiu	$a2,$a2,16
.L0d999f0c:
    # Line 237
    jr	$ra
    nop
.end __glRowSetAll

# Function: __glSpanConvolveReduceRGB
# Declared: Line 246 (Source lines: 248-272)
# Address: 0x0d999f20 - 0x0d99a0b0 (Size: 400 bytes, Frame: 0)
.globl __glSpanConvolveReduceRGB
.ent __glSpanConvolveReduceRGB
__glSpanConvolveReduceRGB:
    # Line 255
    lw	$t2,184($a1)
    # Line 254
    lw	$a6,436($a1)
    # Line 248
    move	$t0,$a2
    move	$a5,$a3
    # Line 258
    blez	$t2,.L0d99a09c
    # Line 254
    lw	$a6,64($a6)
    b	.L0d99a0a4
    # Line 258
    move	$t1,$zero
.L0d999f40:
    # Line 264
    lwc1	$f7,0($a4)
    lwc1	$f8,0($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 265
    lwc1	$f2,4($a4)
    lwc1	$f3,4($a2)
    madd.s	$f6,$f6,$f2,$f3
    swc1	$f6,4($a5)
    # Line 266
    lwc1	$f0,8($a4)
    lwc1	$f1,8($a2)
    madd.s	$f4,$f4,$f0,$f1
    addiu	$a7,$a7,-1
    # Line 263
    addiu	$a3,$a3,1
    # Line 267
    addiu	$a2,$a2,16
    # Line 266
    addiu	$a4,$a4,12
    bnez	$a7,.L0d999f40
    swc1	$f4,8($a5)
.L0d999f84:
    sra	$a7,$a6,0x2
    beqz	$a7,.L0d99a060
    nop
.L0d999f90:
    # Line 264
    lwc1	$f13,0($a4)
    lwc1	$f14,0($a2)
    madd.s	$f5,$f5,$f13,$f14
    swc1	$f5,0($a5)
    # Line 265
    lwc1	$f11,4($a4)
    lwc1	$f12,4($a2)
    madd.s	$f6,$f6,$f11,$f12
    swc1	$f6,4($a5)
    # Line 266
    lwc1	$f9,8($a4)
    lwc1	$f10,8($a2)
    madd.s	$f4,$f4,$f9,$f10
    swc1	$f4,8($a5)
    # Line 264
    lwc1	$f7,12($a4)
    lwc1	$f8,16($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 265
    lwc1	$f7,16($a4)
    lwc1	$f8,20($a2)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a5)
    # Line 266
    lwc1	$f7,20($a4)
    lwc1	$f8,24($a2)
    madd.s	$f4,$f4,$f7,$f8
    swc1	$f4,8($a5)
    # Line 264
    lwc1	$f7,24($a4)
    lwc1	$f8,32($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 265
    lwc1	$f7,28($a4)
    lwc1	$f8,36($a2)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a5)
    # Line 266
    lwc1	$f7,32($a4)
    lwc1	$f8,40($a2)
    madd.s	$f4,$f4,$f7,$f8
    swc1	$f4,8($a5)
    # Line 264
    lwc1	$f7,36($a4)
    lwc1	$f8,48($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 265
    lwc1	$f7,40($a4)
    lwc1	$f8,52($a2)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a5)
    # Line 266
    lwc1	$f7,44($a4)
    lwc1	$f8,56($a2)
    madd.s	$f4,$f4,$f7,$f8
    # Line 263
    addiu	$a3,$a3,4
    # Line 267
    addiu	$a2,$a2,64
    # Line 266
    addiu	$a4,$a4,48
    # Line 263
    bne	$a6,$a3,.L0d999f90
    # Line 266
    swc1	$f4,8($a5)
.L0d99a060:
    # Line 269
    addiu	$a5,$a5,16
    # Line 270
    addiu	$t0,$t0,16
    # Line 260
    beq	$t2,$t1,.L0d99a09c
    # Line 262
    move	$a2,$t0
    # Line 260
    addiu	$t1,$t1,1
.L0d99a074:
    # Line 262
    blez	$a6,.L0d99a060
    # Line 261
    lw	$a4,256($a1)
    # Line 262
    move	$a3,$zero
    lwc1	$f4,8($a5)
    andi	$a7,$a6,0x3
    lwc1	$f6,4($a5)
    bnez	$a7,.L0d999f40
    lwc1	$f5,0($a5)
    b	.L0d999f84
    nop
.L0d99a09c:
    # Line 272
    jr	$ra
    nop
.L0d99a0a4:
    # Line 262
    move	$a2,$t0
    b	.L0d99a074
    # Line 260
    addiu	$t1,$t1,1
.end __glSpanConvolveReduceRGB

# Function: __glSpanConvolveReduceRGBA
# Declared: Line 280 (Source lines: 282-306)
# Address: 0x0d99a0b0 - 0x0d99a294 (Size: 484 bytes, Frame: 0)
.globl __glSpanConvolveReduceRGBA
.ent __glSpanConvolveReduceRGBA
__glSpanConvolveReduceRGBA:
    # Line 289
    lw	$t2,184($a1)
    # Line 288
    lw	$a6,436($a1)
    # Line 282
    move	$t0,$a2
    move	$a5,$a3
    # Line 292
    blez	$t2,.L0d99a280
    # Line 288
    lw	$a6,64($a6)
    b	.L0d99a288
    # Line 292
    move	$t1,$zero
.L0d99a0d0:
    # Line 298
    lwc1	$f10,0($a2)
    lwc1	$f11,0($a4)
    madd.s	$f6,$f6,$f10,$f11
    swc1	$f6,0($a5)
    # Line 299
    lwc1	$f8,4($a2)
    lwc1	$f9,4($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 300
    lwc1	$f2,8($a2)
    lwc1	$f3,8($a4)
    madd.s	$f7,$f7,$f2,$f3
    swc1	$f7,8($a5)
    # Line 301
    lwc1	$f0,12($a2)
    lwc1	$f1,12($a4)
    madd.s	$f5,$f5,$f0,$f1
    addiu	$a7,$a7,-1
    # Line 297
    addiu	$a3,$a3,1
    # Line 301
    addiu	$a2,$a2,16
    addiu	$a4,$a4,16
    bnez	$a7,.L0d99a0d0
    swc1	$f5,12($a5)
.L0d99a124:
    sra	$a7,$a6,0x2
    beqz	$a7,.L0d99a240
    nop
.L0d99a130:
    # Line 298
    lwc1	$f16,0($a2)
    lwc1	$f17,0($a4)
    madd.s	$f6,$f6,$f16,$f17
    swc1	$f6,0($a5)
    # Line 299
    lwc1	$f14,4($a2)
    lwc1	$f15,4($a4)
    madd.s	$f4,$f4,$f14,$f15
    swc1	$f4,4($a5)
    # Line 300
    lwc1	$f12,8($a2)
    lwc1	$f13,8($a4)
    madd.s	$f7,$f7,$f12,$f13
    swc1	$f7,8($a5)
    # Line 301
    lwc1	$f10,12($a2)
    lwc1	$f11,12($a4)
    madd.s	$f5,$f5,$f10,$f11
    swc1	$f5,12($a5)
    # Line 298
    lwc1	$f8,16($a2)
    lwc1	$f9,16($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 299
    lwc1	$f8,20($a2)
    lwc1	$f9,20($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 300
    lwc1	$f8,24($a2)
    lwc1	$f9,24($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 301
    lwc1	$f8,28($a2)
    lwc1	$f9,28($a4)
    madd.s	$f5,$f5,$f8,$f9
    swc1	$f5,12($a5)
    # Line 298
    lwc1	$f8,32($a2)
    lwc1	$f9,32($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 299
    lwc1	$f8,36($a2)
    lwc1	$f9,36($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 300
    lwc1	$f8,40($a2)
    lwc1	$f9,40($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 301
    lwc1	$f8,44($a2)
    lwc1	$f9,44($a4)
    madd.s	$f5,$f5,$f8,$f9
    swc1	$f5,12($a5)
    # Line 298
    lwc1	$f8,48($a2)
    lwc1	$f9,48($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 299
    lwc1	$f8,52($a2)
    lwc1	$f9,52($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 300
    lwc1	$f8,56($a2)
    lwc1	$f9,56($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 301
    lwc1	$f8,60($a2)
    lwc1	$f9,60($a4)
    madd.s	$f5,$f5,$f8,$f9
    # Line 297
    addiu	$a3,$a3,4
    # Line 301
    addiu	$a2,$a2,64
    addiu	$a4,$a4,64
    # Line 297
    bne	$a6,$a3,.L0d99a130
    # Line 301
    swc1	$f5,12($a5)
.L0d99a240:
    # Line 303
    addiu	$a5,$a5,16
    # Line 304
    addiu	$t0,$t0,16
    # Line 294
    beq	$t2,$t1,.L0d99a280
    # Line 296
    move	$a4,$t0
    # Line 294
    addiu	$t1,$t1,1
.L0d99a254:
    # Line 296
    blez	$a6,.L0d99a240
    # Line 295
    lw	$a2,256($a1)
    # Line 296
    move	$a3,$zero
    lwc1	$f5,12($a5)
    lwc1	$f7,8($a5)
    andi	$a7,$a6,0x3
    lwc1	$f4,4($a5)
    bnez	$a7,.L0d99a0d0
    lwc1	$f6,0($a5)
    b	.L0d99a124
    nop
.L0d99a280:
    # Line 306
    jr	$ra
    nop
.L0d99a288:
    # Line 296
    move	$a4,$t0
    b	.L0d99a254
    # Line 294
    addiu	$t1,$t1,1
.end __glSpanConvolveReduceRGBA

# Function: __glSpanConvolveReduceL
# Declared: Line 314 (Source lines: 316-340)
# Address: 0x0d99a2a0 - 0x0d99a430 (Size: 400 bytes, Frame: 0)
.globl __glSpanConvolveReduceL
.ent __glSpanConvolveReduceL
__glSpanConvolveReduceL:
    # Line 323
    lw	$t2,184($a1)
    # Line 322
    lw	$a6,436($a1)
    # Line 316
    move	$t0,$a2
    move	$a5,$a3
    # Line 326
    blez	$t2,.L0d99a41c
    # Line 322
    lw	$a6,64($a6)
    b	.L0d99a424
    # Line 326
    move	$t1,$zero
.L0d99a2c0:
    # Line 332
    lwc1	$f7,0($a4)
    lwc1	$f8,0($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 333
    lwc1	$f2,0($a4)
    lwc1	$f3,4($a2)
    madd.s	$f6,$f6,$f2,$f3
    swc1	$f6,4($a5)
    # Line 334
    lwc1	$f0,0($a4)
    lwc1	$f1,8($a2)
    madd.s	$f4,$f4,$f0,$f1
    addiu	$a7,$a7,-1
    # Line 331
    addiu	$a3,$a3,1
    # Line 335
    addiu	$a2,$a2,16
    # Line 334
    addiu	$a4,$a4,4
    bnez	$a7,.L0d99a2c0
    swc1	$f4,8($a5)
.L0d99a304:
    sra	$a7,$a6,0x2
    beqz	$a7,.L0d99a3e0
    nop
.L0d99a310:
    # Line 332
    lwc1	$f13,0($a4)
    lwc1	$f14,0($a2)
    madd.s	$f5,$f5,$f13,$f14
    swc1	$f5,0($a5)
    # Line 333
    lwc1	$f11,0($a4)
    lwc1	$f12,4($a2)
    madd.s	$f6,$f6,$f11,$f12
    swc1	$f6,4($a5)
    # Line 334
    lwc1	$f9,0($a4)
    lwc1	$f10,8($a2)
    madd.s	$f4,$f4,$f9,$f10
    swc1	$f4,8($a5)
    # Line 332
    lwc1	$f7,4($a4)
    lwc1	$f8,16($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 333
    lwc1	$f7,4($a4)
    lwc1	$f8,20($a2)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a5)
    # Line 334
    lwc1	$f7,4($a4)
    lwc1	$f8,24($a2)
    madd.s	$f4,$f4,$f7,$f8
    swc1	$f4,8($a5)
    # Line 332
    lwc1	$f7,8($a4)
    lwc1	$f8,32($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 333
    lwc1	$f7,8($a4)
    lwc1	$f8,36($a2)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a5)
    # Line 334
    lwc1	$f7,8($a4)
    lwc1	$f8,40($a2)
    madd.s	$f4,$f4,$f7,$f8
    swc1	$f4,8($a5)
    # Line 332
    lwc1	$f7,12($a4)
    lwc1	$f8,48($a2)
    madd.s	$f5,$f5,$f7,$f8
    swc1	$f5,0($a5)
    # Line 333
    lwc1	$f7,12($a4)
    lwc1	$f8,52($a2)
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a5)
    # Line 334
    lwc1	$f7,12($a4)
    lwc1	$f8,56($a2)
    madd.s	$f4,$f4,$f7,$f8
    # Line 331
    addiu	$a3,$a3,4
    # Line 335
    addiu	$a2,$a2,64
    # Line 334
    addiu	$a4,$a4,16
    # Line 331
    bne	$a6,$a3,.L0d99a310
    # Line 334
    swc1	$f4,8($a5)
.L0d99a3e0:
    # Line 337
    addiu	$a5,$a5,16
    # Line 338
    addiu	$t0,$t0,16
    # Line 328
    beq	$t2,$t1,.L0d99a41c
    # Line 330
    move	$a2,$t0
    # Line 328
    addiu	$t1,$t1,1
.L0d99a3f4:
    # Line 330
    blez	$a6,.L0d99a3e0
    # Line 329
    lw	$a4,256($a1)
    # Line 330
    move	$a3,$zero
    lwc1	$f4,8($a5)
    andi	$a7,$a6,0x3
    lwc1	$f6,4($a5)
    bnez	$a7,.L0d99a2c0
    lwc1	$f5,0($a5)
    b	.L0d99a304
    nop
.L0d99a41c:
    # Line 340
    jr	$ra
    nop
.L0d99a424:
    # Line 330
    move	$a2,$t0
    b	.L0d99a3f4
    # Line 328
    addiu	$t1,$t1,1
.end __glSpanConvolveReduceL

# Function: __glSpanConvolveReduceLA
# Declared: Line 349 (Source lines: 351-375)
# Address: 0x0d99a430 - 0x0d99a614 (Size: 484 bytes, Frame: 0)
.globl __glSpanConvolveReduceLA
.ent __glSpanConvolveReduceLA
__glSpanConvolveReduceLA:
    # Line 358
    lw	$t2,184($a1)
    # Line 357
    lw	$a6,436($a1)
    # Line 351
    move	$t0,$a2
    move	$a5,$a3
    # Line 361
    blez	$t2,.L0d99a600
    # Line 357
    lw	$a6,64($a6)
    b	.L0d99a608
    # Line 361
    move	$t1,$zero
.L0d99a450:
    # Line 367
    lwc1	$f10,0($a2)
    lwc1	$f11,0($a4)
    madd.s	$f6,$f6,$f10,$f11
    swc1	$f6,0($a5)
    # Line 368
    lwc1	$f8,0($a2)
    lwc1	$f9,4($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 369
    lwc1	$f2,0($a2)
    lwc1	$f3,8($a4)
    madd.s	$f7,$f7,$f2,$f3
    swc1	$f7,8($a5)
    # Line 370
    lwc1	$f0,4($a2)
    lwc1	$f1,12($a4)
    madd.s	$f5,$f5,$f0,$f1
    addiu	$a7,$a7,-1
    # Line 366
    addiu	$a3,$a3,1
    # Line 370
    addiu	$a2,$a2,8
    addiu	$a4,$a4,16
    bnez	$a7,.L0d99a450
    swc1	$f5,12($a5)
.L0d99a4a4:
    sra	$a7,$a6,0x2
    beqz	$a7,.L0d99a5c0
    nop
.L0d99a4b0:
    # Line 367
    lwc1	$f16,0($a2)
    lwc1	$f17,0($a4)
    madd.s	$f6,$f6,$f16,$f17
    swc1	$f6,0($a5)
    # Line 368
    lwc1	$f14,0($a2)
    lwc1	$f15,4($a4)
    madd.s	$f4,$f4,$f14,$f15
    swc1	$f4,4($a5)
    # Line 369
    lwc1	$f12,0($a2)
    lwc1	$f13,8($a4)
    madd.s	$f7,$f7,$f12,$f13
    swc1	$f7,8($a5)
    # Line 370
    lwc1	$f10,4($a2)
    lwc1	$f11,12($a4)
    madd.s	$f5,$f5,$f10,$f11
    swc1	$f5,12($a5)
    # Line 367
    lwc1	$f8,8($a2)
    lwc1	$f9,16($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 368
    lwc1	$f8,8($a2)
    lwc1	$f9,20($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 369
    lwc1	$f8,8($a2)
    lwc1	$f9,24($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 370
    lwc1	$f8,12($a2)
    lwc1	$f9,28($a4)
    madd.s	$f5,$f5,$f8,$f9
    swc1	$f5,12($a5)
    # Line 367
    lwc1	$f8,16($a2)
    lwc1	$f9,32($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 368
    lwc1	$f8,16($a2)
    lwc1	$f9,36($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 369
    lwc1	$f8,16($a2)
    lwc1	$f9,40($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 370
    lwc1	$f8,20($a2)
    lwc1	$f9,44($a4)
    madd.s	$f5,$f5,$f8,$f9
    swc1	$f5,12($a5)
    # Line 367
    lwc1	$f8,24($a2)
    lwc1	$f9,48($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 368
    lwc1	$f8,24($a2)
    lwc1	$f9,52($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 369
    lwc1	$f8,24($a2)
    lwc1	$f9,56($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 370
    lwc1	$f8,28($a2)
    lwc1	$f9,60($a4)
    madd.s	$f5,$f5,$f8,$f9
    # Line 366
    addiu	$a3,$a3,4
    # Line 370
    addiu	$a2,$a2,32
    addiu	$a4,$a4,64
    # Line 366
    bne	$a6,$a3,.L0d99a4b0
    # Line 370
    swc1	$f5,12($a5)
.L0d99a5c0:
    # Line 372
    addiu	$a5,$a5,16
    # Line 373
    addiu	$t0,$t0,16
    # Line 363
    beq	$t2,$t1,.L0d99a600
    # Line 365
    move	$a4,$t0
    # Line 363
    addiu	$t1,$t1,1
.L0d99a5d4:
    # Line 365
    blez	$a6,.L0d99a5c0
    # Line 364
    lw	$a2,256($a1)
    # Line 365
    move	$a3,$zero
    lwc1	$f5,12($a5)
    lwc1	$f7,8($a5)
    andi	$a7,$a6,0x3
    lwc1	$f4,4($a5)
    bnez	$a7,.L0d99a450
    lwc1	$f6,0($a5)
    b	.L0d99a4a4
    nop
.L0d99a600:
    # Line 375
    jr	$ra
    nop
.L0d99a608:
    # Line 365
    move	$a4,$t0
    b	.L0d99a5d4
    # Line 363
    addiu	$t1,$t1,1
.end __glSpanConvolveReduceLA

# Function: __glSpanConvolveReduceI
# Declared: Line 384 (Source lines: 386-410)
# Address: 0x0d99a620 - 0x0d99a804 (Size: 484 bytes, Frame: 0)
.globl __glSpanConvolveReduceI
.ent __glSpanConvolveReduceI
__glSpanConvolveReduceI:
    # Line 393
    lw	$t2,184($a1)
    # Line 392
    lw	$a6,436($a1)
    # Line 386
    move	$t0,$a2
    move	$a5,$a3
    # Line 396
    blez	$t2,.L0d99a7f0
    # Line 392
    lw	$a6,64($a6)
    b	.L0d99a7f8
    # Line 396
    move	$t1,$zero
.L0d99a640:
    # Line 402
    lwc1	$f10,0($a2)
    lwc1	$f11,0($a4)
    madd.s	$f6,$f6,$f10,$f11
    swc1	$f6,0($a5)
    # Line 403
    lwc1	$f8,0($a2)
    lwc1	$f9,4($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 404
    lwc1	$f2,0($a2)
    lwc1	$f3,8($a4)
    madd.s	$f7,$f7,$f2,$f3
    swc1	$f7,8($a5)
    # Line 405
    lwc1	$f0,0($a2)
    lwc1	$f1,12($a4)
    madd.s	$f5,$f5,$f0,$f1
    addiu	$a7,$a7,-1
    # Line 401
    addiu	$a3,$a3,1
    # Line 405
    addiu	$a2,$a2,4
    addiu	$a4,$a4,16
    bnez	$a7,.L0d99a640
    swc1	$f5,12($a5)
.L0d99a694:
    sra	$a7,$a6,0x2
    beqz	$a7,.L0d99a7b0
    nop
.L0d99a6a0:
    # Line 402
    lwc1	$f16,0($a2)
    lwc1	$f17,0($a4)
    madd.s	$f6,$f6,$f16,$f17
    swc1	$f6,0($a5)
    # Line 403
    lwc1	$f14,0($a2)
    lwc1	$f15,4($a4)
    madd.s	$f4,$f4,$f14,$f15
    swc1	$f4,4($a5)
    # Line 404
    lwc1	$f12,0($a2)
    lwc1	$f13,8($a4)
    madd.s	$f7,$f7,$f12,$f13
    swc1	$f7,8($a5)
    # Line 405
    lwc1	$f10,0($a2)
    lwc1	$f11,12($a4)
    madd.s	$f5,$f5,$f10,$f11
    swc1	$f5,12($a5)
    # Line 402
    lwc1	$f8,4($a2)
    lwc1	$f9,16($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 403
    lwc1	$f8,4($a2)
    lwc1	$f9,20($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 404
    lwc1	$f8,4($a2)
    lwc1	$f9,24($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 405
    lwc1	$f8,4($a2)
    lwc1	$f9,28($a4)
    madd.s	$f5,$f5,$f8,$f9
    swc1	$f5,12($a5)
    # Line 402
    lwc1	$f8,8($a2)
    lwc1	$f9,32($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 403
    lwc1	$f8,8($a2)
    lwc1	$f9,36($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 404
    lwc1	$f8,8($a2)
    lwc1	$f9,40($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 405
    lwc1	$f8,8($a2)
    lwc1	$f9,44($a4)
    madd.s	$f5,$f5,$f8,$f9
    swc1	$f5,12($a5)
    # Line 402
    lwc1	$f8,12($a2)
    lwc1	$f9,48($a4)
    madd.s	$f6,$f6,$f8,$f9
    swc1	$f6,0($a5)
    # Line 403
    lwc1	$f8,12($a2)
    lwc1	$f9,52($a4)
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,4($a5)
    # Line 404
    lwc1	$f8,12($a2)
    lwc1	$f9,56($a4)
    madd.s	$f7,$f7,$f8,$f9
    swc1	$f7,8($a5)
    # Line 405
    lwc1	$f8,12($a2)
    lwc1	$f9,60($a4)
    madd.s	$f5,$f5,$f8,$f9
    # Line 401
    addiu	$a3,$a3,4
    # Line 405
    addiu	$a2,$a2,16
    addiu	$a4,$a4,64
    # Line 401
    bne	$a6,$a3,.L0d99a6a0
    # Line 405
    swc1	$f5,12($a5)
.L0d99a7b0:
    # Line 407
    addiu	$a5,$a5,16
    # Line 408
    addiu	$t0,$t0,16
    # Line 398
    beq	$t2,$t1,.L0d99a7f0
    # Line 400
    move	$a4,$t0
    # Line 398
    addiu	$t1,$t1,1
.L0d99a7c4:
    # Line 400
    blez	$a6,.L0d99a7b0
    # Line 399
    lw	$a2,256($a1)
    # Line 400
    move	$a3,$zero
    lwc1	$f5,12($a5)
    lwc1	$f7,8($a5)
    andi	$a7,$a6,0x3
    lwc1	$f4,4($a5)
    bnez	$a7,.L0d99a640
    lwc1	$f6,0($a5)
    b	.L0d99a694
    nop
.L0d99a7f0:
    # Line 410
    jr	$ra
    nop
.L0d99a7f8:
    # Line 400
    move	$a4,$t0
    b	.L0d99a7c4
    # Line 398
    addiu	$t1,$t1,1
.end __glSpanConvolveReduceI

# Function: __glSpanConvolve1DReduceRGB
# Declared: Line 424 (Source lines: 426-458)
# Address: 0x0d99a810 - 0x0d99a994 (Size: 388 bytes, Frame: 0)
.globl __glSpanConvolve1DReduceRGB
.ent __glSpanConvolve1DReduceRGB
__glSpanConvolve1DReduceRGB:
    # Line 434
    lw	$t2,184($a1)
    # Line 433
    lw	$a5,436($a1)
    # Line 426
    move	$a7,$a2
    move	$t0,$a3
    # Line 437
    blez	$t2,.L0d99a978
    # Line 433
    lw	$a5,64($a5)
    b	.L0d99a980
    # Line 437
    move	$t1,$zero
.L0d99a830:
    # Line 445
    mtc1	$zero,$f4
    move	$a3,$zero
    beqz	$a6,.L0d99a878
    mtc1	$zero,$f6
.L0d99a840:
    # Line 449
    lwc1	$f7,8($a4)
    lwc1	$f8,8($a2)
    # Line 448
    lwc1	$f2,4($a4)
    lwc1	$f3,4($a2)
    # Line 447
    lwc1	$f0,0($a4)
    lwc1	$f1,0($a2)
    addiu	$a6,$a6,-1
    # Line 449
    madd.s	$f4,$f4,$f7,$f8
    # Line 446
    addiu	$a3,$a3,1
    # Line 450
    addiu	$a2,$a2,16
    # Line 448
    madd.s	$f6,$f6,$f2,$f3
    # Line 449
    addiu	$a4,$a4,12
    bnez	$a6,.L0d99a840
    # Line 447
    madd.s	$f5,$f5,$f0,$f1
.L0d99a878:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0d99a930
    nop
    nop
    nop
    nop
.L0d99a890:
    # Line 449
    lwc1	$f18,20($a4)
    lwc1	$f19,24($a2)
    lwc1	$f14,32($a4)
    lwc1	$f17,40($a2)
    lwc1	$f7,44($a4)
    lwc1	$f11,56($a2)
    lwc1	$f21,8($a4)
    lwc1	$f23,8($a2)
    # Line 448
    lwc1	$f12,16($a4)
    lwc1	$f16,20($a2)
    lwc1	$f8,28($a4)
    lwc1	$f13,36($a2)
    # Line 449
    madd.s	$f4,$f4,$f21,$f23
    # Line 448
    lwc1	$f9,40($a4)
    lwc1	$f10,52($a2)
    # Line 449
    madd.s	$f4,$f4,$f18,$f19
    # Line 448
    lwc1	$f19,4($a4)
    lwc1	$f21,4($a2)
    # Line 449
    madd.s	$f4,$f4,$f14,$f17
    # Line 447
    lwc1	$f17,0($a4)
    lwc1	$f18,0($a2)
    # Line 449
    madd.s	$f4,$f4,$f7,$f11
    # Line 447
    lwc1	$f7,12($a4)
    # Line 448
    madd.s	$f6,$f6,$f19,$f21
    # Line 447
    lwc1	$f14,16($a2)
    lwc1	$f11,24($a4)
    madd.s	$f5,$f5,$f17,$f18
    # Line 448
    madd.s	$f6,$f6,$f12,$f16
    # Line 447
    lwc1	$f12,32($a2)
    madd.s	$f5,$f5,$f7,$f14
    lwc1	$f7,36($a4)
    # Line 448
    madd.s	$f6,$f6,$f8,$f13
    # Line 447
    lwc1	$f8,48($a2)
    # Line 446
    addiu	$a3,$a3,4
    # Line 447
    madd.s	$f5,$f5,$f11,$f12
    # Line 450
    addiu	$a2,$a2,64
    # Line 448
    madd.s	$f6,$f6,$f9,$f10
    # Line 449
    addiu	$a4,$a4,48
    # Line 446
    bne	$a5,$a3,.L0d99a890
    # Line 447
    madd.s	$f5,$f5,$f7,$f8
.L0d99a930:
    # Line 452
    swc1	$f5,0($t0)
    # Line 445
    mtc1	$zero,$f5
    # Line 453
    swc1	$f6,4($t0)
    andi	$a6,$a5,0x3
    # Line 439
    addiu	$t1,$t1,1
    # Line 454
    swc1	$f4,8($t0)
    # Line 455
    addiu	$t0,$t0,16
    # Line 456
    addiu	$a7,$a7,16
    # Line 455
    swc1	$f15,-4($t0)
    # Line 439
    beq	$t2,$t1,.L0d99a978
    # Line 445
    move	$a2,$a7
    # Line 444
    lw	$a4,256($a1)
.L0d99a960:
    # Line 445
    bgtz	$a5,.L0d99a830
    # Line 443
    lwc1	$f15,12($a7)
    # Line 446
    mtc1	$zero,$f5
    mtc1	$zero,$f6
    b	.L0d99a930
    mtc1	$zero,$f4
.L0d99a978:
    # Line 458
    jr	$ra
    nop
.L0d99a980:
    # Line 445
    mtc1	$zero,$f5
    andi	$a6,$a5,0x3
    move	$a2,$a7
    b	.L0d99a960
    # Line 444
    lw	$a4,256($a1)
.end __glSpanConvolve1DReduceRGB

# Function: __glSpanConvolve1DReduceRGBA
# Declared: Line 466 (Source lines: 468-500)
# Address: 0x0d99a9a0 - 0x0d99ab54 (Size: 436 bytes, Frame: 0)
.globl __glSpanConvolve1DReduceRGBA
.ent __glSpanConvolve1DReduceRGBA
__glSpanConvolve1DReduceRGBA:
    # Line 476
    lw	$t2,184($a1)
    # Line 475
    lw	$a5,436($a1)
    # Line 468
    move	$a7,$a2
    move	$t0,$a3
    # Line 479
    blez	$t2,.L0d99ab40
    # Line 475
    lw	$a5,64($a5)
    b	.L0d99ab48
    # Line 479
    move	$t1,$zero
.L0d99a9c0:
    # Line 487
    mtc1	$zero,$f7
    mtc1	$zero,$f4
    andi	$a6,$a5,0x3
    mtc1	$zero,$f5
    move	$a3,$zero
    beqz	$a6,.L0d99aa20
    mtc1	$zero,$f6
.L0d99a9dc:
    # Line 492
    lwc1	$f10,12($a2)
    lwc1	$f11,12($a4)
    # Line 491
    lwc1	$f8,8($a2)
    lwc1	$f9,8($a4)
    # Line 490
    lwc1	$f2,4($a2)
    lwc1	$f3,4($a4)
    # Line 489
    lwc1	$f0,0($a2)
    # Line 492
    madd.s	$f7,$f7,$f10,$f11
    # Line 489
    lwc1	$f1,0($a4)
    addiu	$a6,$a6,-1
    # Line 491
    madd.s	$f4,$f4,$f8,$f9
    # Line 488
    addiu	$a3,$a3,1
    # Line 492
    addiu	$a2,$a2,16
    # Line 490
    madd.s	$f5,$f5,$f2,$f3
    # Line 492
    addiu	$a4,$a4,16
    bnez	$a6,.L0d99a9dc
    # Line 489
    madd.s	$f6,$f6,$f0,$f1
.L0d99aa20:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0d99ab00
    nop
    nop
.L0d99aa30:
    # Line 492
    lwc1	$f11,28($a2)
    lwc1	$f29,28($a4)
    lwc1	$f21,44($a2)
    lwc1	$f25,44($a4)
    lwc1	$f15,60($a2)
    lwc1	$f18,60($a4)
    lwc1	$f1,12($a2)
    lwc1	$f2,12($a4)
    # Line 491
    lwc1	$f19,24($a2)
    lwc1	$f27,24($a4)
    lwc1	$f17,40($a2)
    lwc1	$f23,40($a4)
    lwc1	$f8,56($a2)
    lwc1	$f12,56($a4)
    lwc1	$f31,8($a2)
    lwc1	$f0,8($a4)
    # Line 490
    lwc1	$f13,20($a2)
    lwc1	$f16,20($a4)
    lwc1	$f9,36($a2)
    # Line 492
    madd.s	$f7,$f7,$f1,$f2
    # Line 490
    lwc1	$f14,36($a4)
    # Line 491
    madd.s	$f4,$f4,$f31,$f0
    # Line 490
    lwc1	$f10,52($a2)
    # Line 492
    madd.s	$f7,$f7,$f11,$f29
    # Line 490
    lwc1	$f11,52($a4)
    # Line 491
    madd.s	$f4,$f4,$f19,$f27
    # Line 490
    lwc1	$f19,4($a2)
    # Line 492
    madd.s	$f7,$f7,$f21,$f25
    # Line 490
    lwc1	$f21,4($a4)
    # Line 491
    madd.s	$f4,$f4,$f17,$f23
    # Line 489
    lwc1	$f17,0($a2)
    # Line 492
    madd.s	$f7,$f7,$f15,$f18
    # Line 489
    lwc1	$f18,0($a4)
    # Line 491
    madd.s	$f4,$f4,$f8,$f12
    # Line 489
    lwc1	$f8,16($a2)
    # Line 490
    madd.s	$f5,$f5,$f19,$f21
    # Line 489
    lwc1	$f15,16($a4)
    lwc1	$f12,32($a2)
    madd.s	$f6,$f6,$f17,$f18
    # Line 490
    madd.s	$f5,$f5,$f13,$f16
    # Line 489
    lwc1	$f13,32($a4)
    madd.s	$f6,$f6,$f8,$f15
    lwc1	$f8,48($a2)
    # Line 490
    madd.s	$f5,$f5,$f9,$f14
    # Line 489
    lwc1	$f9,48($a4)
    # Line 488
    addiu	$a3,$a3,4
    # Line 489
    madd.s	$f6,$f6,$f12,$f13
    # Line 492
    addiu	$a2,$a2,64
    # Line 490
    madd.s	$f5,$f5,$f10,$f11
    # Line 492
    addiu	$a4,$a4,64
    # Line 488
    bne	$a5,$a3,.L0d99aa30
    # Line 489
    madd.s	$f6,$f6,$f8,$f9
.L0d99ab00:
    # Line 494
    swc1	$f6,0($t0)
    # Line 495
    swc1	$f5,4($t0)
    # Line 481
    addiu	$t1,$t1,1
    # Line 496
    swc1	$f4,8($t0)
    # Line 497
    addiu	$t0,$t0,16
    # Line 498
    addiu	$a7,$a7,16
    # Line 497
    swc1	$f7,-4($t0)
    # Line 481
    beq	$t2,$t1,.L0d99ab40
    # Line 487
    move	$a4,$a7
.L0d99ab24:
    bgtz	$a5,.L0d99a9c0
    # Line 486
    lw	$a2,256($a1)
    # Line 488
    mtc1	$zero,$f6
    mtc1	$zero,$f5
    mtc1	$zero,$f4
    b	.L0d99ab00
    mtc1	$zero,$f7
.L0d99ab40:
    # Line 500
    jr	$ra
    nop
.L0d99ab48:
    # Line 487
    move	$a4,$a7
    b	.L0d99ab24
    nop
.end __glSpanConvolve1DReduceRGBA

# Function: __glSpanConvolve1DReduceL
# Declared: Line 508 (Source lines: 510-542)
# Address: 0x0d99ab60 - 0x0d99acb4 (Size: 340 bytes, Frame: 0)
.globl __glSpanConvolve1DReduceL
.ent __glSpanConvolve1DReduceL
__glSpanConvolve1DReduceL:
    # Line 518
    lw	$t2,184($a1)
    # Line 517
    lw	$a5,436($a1)
    # Line 510
    move	$a7,$a2
    move	$t0,$a3
    # Line 521
    blez	$t2,.L0d99ac98
    # Line 517
    lw	$a5,64($a5)
    b	.L0d99aca0
    # Line 521
    move	$t1,$zero
.L0d99ab80:
    # Line 529
    mtc1	$zero,$f5
    move	$a3,$zero
    beqz	$a6,.L0d99abc0
    mtc1	$zero,$f4
.L0d99ab90:
    # Line 533
    lwc1	$f3,8($a2)
    # Line 531
    lwc1	$f0,0($a4)
    # Line 532
    lwc1	$f2,4($a2)
    # Line 531
    lwc1	$f1,0($a2)
    addiu	$a6,$a6,-1
    # Line 533
    madd.s	$f5,$f5,$f0,$f3
    # Line 530
    addiu	$a3,$a3,1
    # Line 534
    addiu	$a2,$a2,16
    # Line 532
    madd.s	$f4,$f4,$f0,$f2
    # Line 533
    addiu	$a4,$a4,4
    bnez	$a6,.L0d99ab90
    # Line 531
    madd.s	$f6,$f6,$f0,$f1
.L0d99abc0:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0d99ac50
    nop
    nop
.L0d99abd0:
    # Line 533
    lwc1	$f8,8($a2)
    # Line 531
    lwc1	$f12,0($a4)
    # Line 533
    lwc1	$f7,24($a2)
    # Line 531
    lwc1	$f13,4($a4)
    # Line 533
    lwc1	$f9,40($a2)
    madd.s	$f5,$f5,$f12,$f8
    # Line 531
    lwc1	$f10,8($a4)
    # Line 533
    madd.s	$f5,$f5,$f13,$f7
    lwc1	$f8,56($a2)
    # Line 531
    lwc1	$f7,12($a4)
    # Line 533
    madd.s	$f5,$f5,$f10,$f9
    # Line 532
    lwc1	$f16,4($a2)
    # Line 531
    lwc1	$f15,0($a2)
    # Line 533
    madd.s	$f5,$f5,$f7,$f8
    # Line 532
    lwc1	$f9,20($a2)
    madd.s	$f4,$f4,$f12,$f16
    # Line 531
    lwc1	$f14,16($a2)
    # Line 532
    lwc1	$f8,36($a2)
    # Line 531
    madd.s	$f6,$f6,$f12,$f15
    # Line 532
    madd.s	$f4,$f4,$f13,$f9
    # Line 531
    lwc1	$f12,32($a2)
    # Line 532
    lwc1	$f9,52($a2)
    # Line 531
    madd.s	$f6,$f6,$f13,$f14
    # Line 532
    madd.s	$f4,$f4,$f10,$f8
    # Line 531
    lwc1	$f8,48($a2)
    # Line 530
    addiu	$a3,$a3,4
    # Line 531
    madd.s	$f6,$f6,$f10,$f12
    # Line 534
    addiu	$a2,$a2,64
    # Line 532
    madd.s	$f4,$f4,$f7,$f9
    # Line 533
    addiu	$a4,$a4,16
    # Line 530
    bne	$a5,$a3,.L0d99abd0
    # Line 531
    madd.s	$f6,$f6,$f7,$f8
.L0d99ac50:
    # Line 536
    swc1	$f6,0($t0)
    # Line 529
    mtc1	$zero,$f6
    # Line 537
    swc1	$f4,4($t0)
    andi	$a6,$a5,0x3
    # Line 523
    addiu	$t1,$t1,1
    # Line 538
    swc1	$f5,8($t0)
    # Line 539
    addiu	$t0,$t0,16
    # Line 540
    addiu	$a7,$a7,16
    # Line 539
    swc1	$f11,-4($t0)
    # Line 523
    beq	$t2,$t1,.L0d99ac98
    # Line 529
    move	$a2,$a7
    # Line 528
    lw	$a4,256($a1)
.L0d99ac80:
    # Line 529
    bgtz	$a5,.L0d99ab80
    # Line 527
    lwc1	$f11,12($a7)
    # Line 530
    mtc1	$zero,$f6
    mtc1	$zero,$f4
    b	.L0d99ac50
    mtc1	$zero,$f5
.L0d99ac98:
    # Line 542
    jr	$ra
    nop
.L0d99aca0:
    # Line 529
    mtc1	$zero,$f6
    andi	$a6,$a5,0x3
    move	$a2,$a7
    b	.L0d99ac80
    # Line 528
    lw	$a4,256($a1)
.end __glSpanConvolve1DReduceL

# Function: __glSpanConvolve1DReduceLA
# Declared: Line 551 (Source lines: 553-585)
# Address: 0x0d99acc0 - 0x0d99ae54 (Size: 404 bytes, Frame: 0)
.globl __glSpanConvolve1DReduceLA
.ent __glSpanConvolve1DReduceLA
__glSpanConvolve1DReduceLA:
    # Line 561
    lw	$t2,184($a1)
    # Line 560
    lw	$a5,436($a1)
    # Line 553
    move	$a7,$a2
    move	$t0,$a3
    # Line 564
    blez	$t2,.L0d99ae40
    # Line 560
    lw	$a5,64($a5)
    b	.L0d99ae48
    # Line 564
    move	$t1,$zero
.L0d99ace0:
    # Line 572
    mtc1	$zero,$f4
    mtc1	$zero,$f5
    andi	$a6,$a5,0x3
    mtc1	$zero,$f7
    move	$a3,$zero
    beqz	$a6,.L0d99ad38
    mtc1	$zero,$f6
.L0d99acfc:
    # Line 577
    lwc1	$f8,4($a2)
    lwc1	$f9,12($a4)
    # Line 576
    lwc1	$f3,8($a4)
    # Line 574
    lwc1	$f0,0($a2)
    # Line 575
    lwc1	$f2,4($a4)
    # Line 577
    madd.s	$f4,$f4,$f8,$f9
    # Line 574
    lwc1	$f1,0($a4)
    addiu	$a6,$a6,-1
    # Line 576
    madd.s	$f5,$f5,$f0,$f3
    # Line 573
    addiu	$a3,$a3,1
    # Line 577
    addiu	$a2,$a2,8
    # Line 575
    madd.s	$f7,$f7,$f0,$f2
    # Line 577
    addiu	$a4,$a4,16
    bnez	$a6,.L0d99acfc
    # Line 574
    madd.s	$f6,$f6,$f0,$f1
.L0d99ad38:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0d99ae00
    nop
    nop
    nop
    nop
.L0d99ad50:
    # Line 577
    lwc1	$f11,12($a2)
    lwc1	$f17,28($a4)
    lwc1	$f8,20($a2)
    lwc1	$f16,44($a4)
    lwc1	$f10,28($a2)
    lwc1	$f14,60($a4)
    lwc1	$f19,4($a2)
    lwc1	$f21,12($a4)
    # Line 576
    lwc1	$f18,8($a4)
    # Line 574
    lwc1	$f12,0($a2)
    # Line 576
    lwc1	$f9,24($a4)
    # Line 577
    madd.s	$f4,$f4,$f19,$f21
    # Line 574
    lwc1	$f13,8($a2)
    # Line 576
    lwc1	$f15,40($a4)
    madd.s	$f5,$f5,$f12,$f18
    # Line 577
    madd.s	$f4,$f4,$f11,$f17
    # Line 574
    lwc1	$f11,16($a2)
    # Line 576
    madd.s	$f5,$f5,$f13,$f9
    lwc1	$f9,56($a4)
    # Line 577
    madd.s	$f4,$f4,$f8,$f16
    # Line 574
    lwc1	$f8,24($a2)
    # Line 576
    madd.s	$f5,$f5,$f11,$f15
    # Line 575
    lwc1	$f16,4($a4)
    # Line 577
    madd.s	$f4,$f4,$f10,$f14
    # Line 574
    lwc1	$f15,0($a4)
    # Line 576
    madd.s	$f5,$f5,$f8,$f9
    # Line 575
    lwc1	$f10,20($a4)
    madd.s	$f7,$f7,$f12,$f16
    # Line 574
    lwc1	$f14,16($a4)
    # Line 575
    lwc1	$f9,36($a4)
    # Line 574
    madd.s	$f6,$f6,$f12,$f15
    # Line 575
    madd.s	$f7,$f7,$f13,$f10
    # Line 574
    lwc1	$f12,32($a4)
    # Line 575
    lwc1	$f10,52($a4)
    # Line 574
    madd.s	$f6,$f6,$f13,$f14
    # Line 575
    madd.s	$f7,$f7,$f11,$f9
    # Line 574
    lwc1	$f9,48($a4)
    # Line 573
    addiu	$a3,$a3,4
    # Line 574
    madd.s	$f6,$f6,$f11,$f12
    # Line 577
    addiu	$a2,$a2,32
    # Line 575
    madd.s	$f7,$f7,$f8,$f10
    # Line 577
    addiu	$a4,$a4,64
    # Line 573
    bne	$a5,$a3,.L0d99ad50
    # Line 574
    madd.s	$f6,$f6,$f8,$f9
.L0d99ae00:
    # Line 579
    swc1	$f6,0($t0)
    # Line 580
    swc1	$f7,4($t0)
    # Line 566
    addiu	$t1,$t1,1
    # Line 581
    swc1	$f5,8($t0)
    # Line 582
    addiu	$t0,$t0,16
    # Line 583
    addiu	$a7,$a7,16
    # Line 582
    swc1	$f4,-4($t0)
    # Line 566
    beq	$t2,$t1,.L0d99ae40
    # Line 572
    move	$a4,$a7
.L0d99ae24:
    bgtz	$a5,.L0d99ace0
    # Line 571
    lw	$a2,256($a1)
    # Line 573
    mtc1	$zero,$f6
    mtc1	$zero,$f7
    mtc1	$zero,$f5
    b	.L0d99ae00
    mtc1	$zero,$f4
.L0d99ae40:
    # Line 585
    jr	$ra
    nop
.L0d99ae48:
    # Line 572
    move	$a4,$a7
    b	.L0d99ae24
    nop
.end __glSpanConvolve1DReduceLA

# Function: __glSpanConvolve1DReduceI
# Declared: Line 594 (Source lines: 596-628)
# Address: 0x0d99ae60 - 0x0d99afd4 (Size: 372 bytes, Frame: 0)
.globl __glSpanConvolve1DReduceI
.ent __glSpanConvolve1DReduceI
__glSpanConvolve1DReduceI:
    # Line 604
    lw	$t2,184($a1)
    # Line 603
    lw	$a5,436($a1)
    # Line 596
    move	$a7,$a2
    move	$t0,$a3
    # Line 607
    blez	$t2,.L0d99afc0
    # Line 603
    lw	$a5,64($a5)
    b	.L0d99afc8
    # Line 607
    move	$t1,$zero
.L0d99ae80:
    # Line 615
    mtc1	$zero,$f5
    mtc1	$zero,$f4
    andi	$a6,$a5,0x3
    mtc1	$zero,$f6
    move	$a3,$zero
    beqz	$a6,.L0d99aed4
    mtc1	$zero,$f7
.L0d99ae9c:
    # Line 620
    lwc1	$f8,12($a4)
    # Line 617
    lwc1	$f0,0($a2)
    # Line 619
    lwc1	$f3,8($a4)
    # Line 618
    lwc1	$f2,4($a4)
    # Line 620
    madd.s	$f5,$f5,$f0,$f8
    # Line 617
    lwc1	$f1,0($a4)
    addiu	$a6,$a6,-1
    # Line 619
    madd.s	$f4,$f4,$f0,$f3
    # Line 616
    addiu	$a3,$a3,1
    # Line 620
    addiu	$a2,$a2,4
    # Line 618
    madd.s	$f6,$f6,$f0,$f2
    # Line 620
    addiu	$a4,$a4,16
    bnez	$a6,.L0d99ae9c
    # Line 617
    madd.s	$f7,$f7,$f0,$f1
.L0d99aed4:
    sra	$a6,$a5,0x2
    beqz	$a6,.L0d99af80
    nop
.L0d99aee0:
    # Line 620
    lwc1	$f14,28($a4)
    lwc1	$f9,44($a4)
    lwc1	$f10,60($a4)
    lwc1	$f16,12($a4)
    # Line 617
    lwc1	$f12,0($a2)
    # Line 619
    lwc1	$f15,8($a4)
    # Line 617
    lwc1	$f13,4($a2)
    # Line 620
    madd.s	$f5,$f5,$f12,$f16
    # Line 619
    lwc1	$f8,24($a4)
    madd.s	$f4,$f4,$f12,$f15
    # Line 617
    lwc1	$f11,8($a2)
    # Line 620
    madd.s	$f5,$f5,$f13,$f14
    # Line 619
    lwc1	$f14,40($a4)
    madd.s	$f4,$f4,$f13,$f8
    # Line 617
    lwc1	$f8,12($a2)
    # Line 620
    madd.s	$f5,$f5,$f11,$f9
    # Line 619
    lwc1	$f9,56($a4)
    madd.s	$f4,$f4,$f11,$f14
    # Line 618
    lwc1	$f16,4($a4)
    # Line 620
    madd.s	$f5,$f5,$f8,$f10
    # Line 617
    lwc1	$f15,0($a4)
    # Line 619
    madd.s	$f4,$f4,$f8,$f9
    # Line 618
    lwc1	$f10,20($a4)
    madd.s	$f6,$f6,$f12,$f16
    # Line 617
    lwc1	$f14,16($a4)
    # Line 618
    lwc1	$f9,36($a4)
    # Line 617
    madd.s	$f7,$f7,$f12,$f15
    # Line 618
    madd.s	$f6,$f6,$f13,$f10
    # Line 617
    lwc1	$f12,32($a4)
    # Line 618
    lwc1	$f10,52($a4)
    # Line 617
    madd.s	$f7,$f7,$f13,$f14
    # Line 618
    madd.s	$f6,$f6,$f11,$f9
    # Line 617
    lwc1	$f9,48($a4)
    # Line 616
    addiu	$a3,$a3,4
    # Line 617
    madd.s	$f7,$f7,$f11,$f12
    # Line 620
    addiu	$a2,$a2,16
    # Line 618
    madd.s	$f6,$f6,$f8,$f10
    # Line 620
    addiu	$a4,$a4,64
    # Line 616
    bne	$a5,$a3,.L0d99aee0
    # Line 617
    madd.s	$f7,$f7,$f8,$f9
.L0d99af80:
    # Line 622
    swc1	$f7,0($t0)
    # Line 623
    swc1	$f6,4($t0)
    # Line 609
    addiu	$t1,$t1,1
    # Line 624
    swc1	$f4,8($t0)
    # Line 625
    addiu	$t0,$t0,16
    # Line 626
    addiu	$a7,$a7,16
    # Line 625
    swc1	$f5,-4($t0)
    # Line 609
    beq	$t2,$t1,.L0d99afc0
    # Line 615
    move	$a4,$a7
.L0d99afa4:
    bgtz	$a5,.L0d99ae80
    # Line 614
    lw	$a2,256($a1)
    # Line 616
    mtc1	$zero,$f7
    mtc1	$zero,$f6
    mtc1	$zero,$f4
    b	.L0d99af80
    mtc1	$zero,$f5
.L0d99afc0:
    # Line 628
    jr	$ra
    nop
.L0d99afc8:
    # Line 615
    move	$a4,$a7
    b	.L0d99afa4
    nop
.end __glSpanConvolve1DReduceI

# Function: __glSlowPickConvolutionFilter
# Declared: Line 634 (Source lines: 637-678)
# Address: 0x0d99afe0 - 0x0d99b1e0 (Size: 512 bytes, Frame: 208)
.globl __glSlowPickConvolutionFilter
.ent __glSlowPickConvolutionFilter
__glSlowPickConvolutionFilter:
    # Line 637
    move	$t3,$a4
    move	$t8,$a3
    move	$t1,$a2
    addiu	$sp,$sp,-592
    move	$t2,$a1
    # Line 642
    li	$v1,0x8011
    sd	$s1,560($sp)
    # Line 637
    sd	$s0,552($sp)
    # Line 642
    li	$at,0x8010
    # Line 637
    lui	$v0,0xb
    move	$s0,$a0
    # Line 642
    lw	$s1,16($sp)
    # Line 637
    addiu	$v0,$v0,23980
    sd	$gp,544($sp)
    # Line 642
    beq	$a6,$at,.L0d99b1c4
    # Line 637
    addu	$gp,$t9,$v0
    xor	$v1,$a6,$v1
    sd	$ra,568($sp)
    sd	$a7,536($sp)
    # Line 647
    addiu	$a0,$a0,852
    sd	$a5,576($sp)
    movz	$s1,$a0,$v1
.L0d99b038:
    # Line 651
    move	$a0,$s0
    move	$a6,$t3
    # lw $t9, -27696($gp) # &__glInitMemUnpack
    ld	$a7,576($sp)
    move	$a5,$t8
    move	$a4,$zero
    move	$a3,$t1
    move	$a2,$t2
    ld	$a1,536($sp)
    sw	$a1,4($sp)
    jal	__glInitMemUnpack
    addiu	$a1,$sp,24
    # Line 654
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s0
    lw	$a3,80($s1)
    lw	$a2,8($s1)
    jal	__glInitMemLoad
    addiu	$a1,$sp,24
    # Line 655
    lwc1	$f4,16($s1)
    ldc1	$f5,_lit8_3ff0000000000000
    lwc1	$f6,32($s1)
    cvt.d.s	$f0,$f4
    lwc1	$f8,40($s1)
    lwc1	$f7,36($s1)
    c.eq.d	$f0,$f5
    lwc1	$f3,28($s1)
    lwc1	$f2,24($s1)
    # Line 667
    li	$a2,1
    # Line 655
    bc1f	.L0d99b124
    lwc1	$f1,20($s1)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d99b124
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d99b124
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d99b124
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d99b124
    nop
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d99b124
    nop
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d99b124
    nop
    lwc1	$f9,44($s1)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d99b1d8
    nop
.L0d99b124:
    # Line 660
    swc1	$f4,340($sp)
    # Line 661
    lwc1	$f16,20($s1)
    swc1	$f16,344($sp)
    # Line 662
    lwc1	$f15,24($s1)
    swc1	$f15,348($sp)
    # Line 663
    lwc1	$f14,28($s1)
    swc1	$f14,352($sp)
    # Line 664
    lwc1	$f13,32($s1)
    swc1	$f13,356($sp)
    # Line 665
    lwc1	$f12,36($s1)
    swc1	$f12,360($sp)
    # Line 666
    lwc1	$f11,40($s1)
    swc1	$f11,364($sp)
    # Line 667
    lwc1	$f10,44($s1)
    sd	$a2,528($sp)
    swc1	$f10,368($sp)
.L0d99b164:
    # Line 669
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    ld	$s1,560($sp)
    jal	__glInitUnpacker
    addiu	$a1,$sp,24
    # Line 670
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,24
    # Line 675
    sw	$zero,456($sp)
    # Line 674
    sb	$zero,452($sp)
    # Line 677
    # lw $t9, -27716($gp) # &__glGenericPickCopyImage
    # Line 672
    sb	$zero,449($sp)
    # Line 677
    move	$a2,$zero
    addiu	$a1,$sp,24
    # Line 673
    ld	$a3,528($sp)
    # Line 677
    move	$a0,$s0
    jal	__glGenericPickCopyImage
    # Line 673
    sb	$a3,451($sp)
    ld	$ra,568($sp)
    # Line 678
    ld	$gp,544($sp)
    ld	$s0,552($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d99b1c4:
    sd	$ra,568($sp)
    sd	$a7,536($sp)
    # Line 644
    addiu	$s1,$a0,768
    b	.L0d99b038
    sd	$a5,576($sp)
.L0d99b1d8:
    b	.L0d99b164
    # Line 667
    sd	$zero,528($sp)
.end __glSlowPickConvolutionFilter

# Function: __glSlowPickSeparableFilter
# Declared: Line 681 (Source lines: 685-747)
# Address: 0x0d99b1e0 - 0x0d99b4a4 (Size: 708 bytes, Frame: 144)
.globl __glSlowPickSeparableFilter
.ent __glSlowPickSeparableFilter
__glSlowPickSeparableFilter:
    # Line 685
    addiu	$sp,$sp,-656
    sd	$ra,528($sp)
    sd	$s0,520($sp)
    sd	$a6,552($sp)
    move	$a7,$a5
    sd	$a1,544($sp)
    move	$v0,$a1
    sd	$a3,568($sp)
    lui	$t1,0xb
    move	$v1,$a3
    sd	$a4,560($sp)
    addiu	$t1,$t1,23468
    move	$t0,$a4
    sd	$gp,536($sp)
    addu	$gp,$t9,$t1
    # Line 696
    move	$a4,$zero
    li	$a3,1
    # lw $t9, -27696($gp) # &__glInitMemUnpack
    addiu	$a1,$sp,16
    move	$a6,$t0
    # Line 685
    sd	$a2,576($sp)
    # Line 696
    move	$a5,$v1
    move	$a2,$v0
    lbu	$at,663($sp)
    nop
    # Line 685
    move	$s0,$a0
    # Line 696
    jal	__glInitMemUnpack
    sw	$at,4($sp)
    # Line 698
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s0
    lw	$a3,1016($s0)
    lw	$a2,944($s0)
    jal	__glInitMemLoad
    addiu	$a1,$sp,16
    # Line 699
    lwc1	$f4,952($s0)
    lwc1	$f1,956($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    lwc1	$f6,968($s0)
    cvt.d.s	$f0,$f4
    lwc1	$f8,976($s0)
    lwc1	$f7,972($s0)
    c.eq.d	$f0,$f5
    lwc1	$f3,964($s0)
    lwc1	$f2,960($s0)
    bc1f	.L0d99b30c
    sd	$s1,584($sp)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d99b30c
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d99b30c
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d99b30c
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d99b30c
    nop
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d99b30c
    nop
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d99b30c
    nop
    lwc1	$f9,980($s0)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d99b49c
    nop
.L0d99b30c:
    # Line 704
    swc1	$f4,332($sp)
    # Line 705
    lwc1	$f16,956($s0)
    swc1	$f16,336($sp)
    # Line 706
    lwc1	$f15,960($s0)
    swc1	$f15,340($sp)
    # Line 707
    lwc1	$f14,964($s0)
    swc1	$f14,344($sp)
    # Line 708
    lwc1	$f13,968($s0)
    swc1	$f13,348($sp)
    # Line 709
    lwc1	$f12,972($s0)
    swc1	$f12,352($sp)
    # Line 710
    lwc1	$f11,976($s0)
    swc1	$f11,356($sp)
    # Line 711
    lwc1	$f10,980($s0)
    li	$s1,1
    swc1	$f10,360($sp)
.L0d99b34c:
    # Line 713
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 714
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 719
    sw	$zero,448($sp)
    # Line 721
    # lw $t9, -27716($gp) # &__glGenericPickCopyImage
    # Line 718
    sb	$zero,444($sp)
    # Line 721
    move	$a2,$zero
    addiu	$a1,$sp,16
    # Line 717
    sb	$s1,443($sp)
    # Line 721
    move	$a0,$s0
    jal	__glGenericPickCopyImage
    # Line 716
    sb	$zero,441($sp)
    # Line 725
    ld	$a7,552($sp)
    ld	$a6,560($sp)
    ld	$a5,568($sp)
    # lw $t9, -27696($gp) # &__glInitMemUnpack
    move	$a0,$s0
    ld	$a2,576($sp)
    move	$a4,$zero
    li	$a3,1
    lbu	$t2,663($sp)
    addiu	$a1,$sp,16
    jal	__glInitMemUnpack
    sw	$t2,4($sp)
    # Line 726
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,944($s0)
    ld	$a5,544($sp)
    mult	$v0,$a5
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s0
    lw	$a3,1016($s0)
    mflo	$a4
    addiu	$a1,$sp,16
    sll	$a4,$a4,0x2
    lw	$a2,944($s0)
    jal	__glInitMemLoad
    addu	$a3,$a3,$a4
    beqz	$s1,.L0d99b444
    # Line 738
    nop	# was lw $t9, -27532($gp) # &__glInitUnpacker
    # Line 729
    lwc1	$f29,952($s0)
    swc1	$f29,332($sp)
    # Line 730
    lwc1	$f27,956($s0)
    swc1	$f27,336($sp)
    # Line 731
    lwc1	$f25,960($s0)
    swc1	$f25,340($sp)
    # Line 732
    lwc1	$f23,964($s0)
    swc1	$f23,344($sp)
    # Line 733
    lwc1	$f21,968($s0)
    swc1	$f21,348($sp)
    # Line 734
    lwc1	$f19,972($s0)
    swc1	$f19,352($sp)
    # Line 735
    lwc1	$f18,976($s0)
    swc1	$f18,356($sp)
    # Line 736
    lwc1	$f17,980($s0)
    swc1	$f17,360($sp)
    # Line 738
    # lw $t9, -27532($gp) # &__glInitUnpacker
.L0d99b444:
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 739
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 744
    sw	$zero,448($sp)
    # Line 746
    # lw $t9, -27716($gp) # &__glGenericPickCopyImage
    # Line 743
    sb	$zero,444($sp)
    # Line 746
    move	$a2,$zero
    addiu	$a1,$sp,16
    # Line 742
    sb	$s1,443($sp)
    # Line 746
    move	$a0,$s0
    jal	__glGenericPickCopyImage
    # Line 741
    sb	$zero,441($sp)
    ld	$ra,528($sp)
    ld	$s0,520($sp)
    ld	$s1,584($sp)
    # Line 747
    ld	$gp,536($sp)
    jr	$ra
    addiu	$sp,$sp,656
.L0d99b49c:
    b	.L0d99b34c
    # Line 711
    move	$s1,$zero
.end __glSlowPickSeparableFilter

# Function: __glSlowPickGetConvolutionFilter
# Declared: Line 750 (Source lines: 753-781)
# Address: 0x0d99b4b0 - 0x0d99b5c4 (Size: 276 bytes, Frame: 192)
.globl __glSlowPickGetConvolutionFilter
.ent __glSlowPickGetConvolutionFilter
__glSlowPickGetConvolutionFilter:
    # Line 753
    addiu	$sp,$sp,-576
    sd	$s8,528($sp)
    move	$s8,$a2
    sd	$s1,552($sp)
    # Line 757
    li	$at,0x8010
    # Line 753
    lui	$v0,0xb
    sd	$s0,544($sp)
    move	$s0,$a0
    addiu	$v0,$v0,22748
    sd	$gp,536($sp)
    # Line 757
    beq	$a1,$at,.L0d99b5b0
    # Line 753
    addu	$gp,$t9,$v0
    # Line 757
    li	$v1,0x8011
    sd	$a4,520($sp)
    lw	$s1,0($sp)
    sd	$a3,512($sp)
    # Line 762
    addiu	$a0,$a0,852
    xor	$v1,$a1,$v1
    sd	$ra,560($sp)
    movz	$s1,$a0,$v1
.L0d99b500:
    # Line 766
    lw	$a5,80($s1)
    # lw $t9, -27700($gp) # &__glInitMemGet
    lw	$a4,8($s1)
    move	$a0,$s0
    lw	$a3,68($s1)
    lw	$a2,64($s1)
    jal	__glInitMemGet
    addiu	$a1,$sp,8
    # Line 768
    ld	$a7,520($sp)
    # lw $t9, -27692($gp) # &__glInitMemPack
    move	$a0,$s0
    ld	$a6,512($sp)
    move	$a5,$s8
    move	$a4,$zero
    lw	$a3,68($s1)
    lw	$a2,64($s1)
    jal	__glInitMemPack
    addiu	$a1,$sp,8
    # Line 770
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    ld	$s1,552($sp)
    jal	__glInitUnpacker
    addiu	$a1,$sp,8
    # Line 771
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 773
    li	$a3,1
    # Line 777
    sb	$a3,434($sp)
    # Line 776
    sb	$zero,433($sp)
    # Line 779
    # lw $t9, -27716($gp) # &__glGenericPickCopyImage
    # Line 775
    sb	$a3,438($sp)
    # Line 779
    move	$a2,$zero
    addiu	$a1,$sp,8
    # Line 774
    sb	$zero,436($sp)
    # Line 779
    move	$a0,$s0
    jal	__glGenericPickCopyImage
    # Line 773
    sb	$a3,432($sp)
    ld	$ra,560($sp)
    # Line 781
    ld	$gp,536($sp)
    ld	$s0,544($sp)
    ld	$s8,528($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d99b5b0:
    sd	$a4,520($sp)
    sd	$a3,512($sp)
    # Line 759
    addiu	$s1,$a0,768
    b	.L0d99b500
    sd	$ra,560($sp)
.end __glSlowPickGetConvolutionFilter

# Function: __glSlowPickGetSeparableFilter
# Declared: Line 784 (Source lines: 789-817)
# Address: 0x0d99b5d0 - 0x0d99b760 (Size: 400 bytes, Frame: 176)
.globl __glSlowPickGetSeparableFilter
.ent __glSlowPickGetSeparableFilter
__glSlowPickGetSeparableFilter:
    # Line 789
    addiu	$sp,$sp,-560
    sd	$a5,544($sp)
    # Line 795
    lw	$a5,1016($a0)
    # Line 789
    sd	$a4,552($sp)
    # Line 795
    lw	$a4,944($a0)
    # Line 789
    sd	$ra,528($sp)
    lui	$at,0xb
    sd	$s2,504($sp)
    addiu	$at,$at,22460
    sd	$gp,536($sp)
    addu	$gp,$t9,$at
    # Line 795
    # lw $t9, -27700($gp) # &__glInitMemGet
    # Line 789
    move	$s2,$a3
    # Line 795
    li	$a3,1
    # Line 789
    sd	$s0,512($sp)
    move	$s0,$a0
    # Line 795
    addiu	$a1,$sp,0
    # Line 789
    sd	$s1,520($sp)
    # Line 795
    nop
    # Line 789
    move	$s1,$a2
    # Line 795
    jal	__glInitMemGet
    lw	$a2,1000($a0)
    # Line 796
    move	$a0,$s0
    # lw $t9, -27692($gp) # &__glInitMemPack
    move	$a6,$s2
    move	$a5,$s1
    ld	$a7,552($sp)
    move	$a4,$zero
    li	$a3,1
    lw	$a2,1000($s0)
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 797
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 798
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 799
    li	$v0,1
    # Line 803
    sb	$v0,426($sp)
    # Line 802
    sb	$zero,425($sp)
    # Line 804
    # lw $t9, -27716($gp) # &__glGenericPickCopyImage
    # Line 801
    sb	$v0,430($sp)
    # Line 804
    move	$a2,$zero
    addiu	$a1,$sp,0
    # Line 800
    sb	$zero,428($sp)
    # Line 804
    move	$a0,$s0
    jal	__glGenericPickCopyImage
    # Line 799
    sb	$v0,424($sp)
    # Line 806
    lw	$t0,1000($s0)
    lw	$a7,948($s0)
    mult	$a7,$t0
    move	$a0,$s0
    # lw $t9, -27700($gp) # &__glInitMemGet
    li	$a3,1
    lw	$a5,1016($s0)
    mflo	$a6
    lw	$a4,944($s0)
    addiu	$a1,$sp,0
    sll	$a6,$a6,0x2
    lw	$a2,1004($s0)
    jal	__glInitMemGet
    addu	$a5,$a5,$a6
    # Line 808
    move	$a0,$s0
    # lw $t9, -27692($gp) # &__glInitMemPack
    move	$a6,$s2
    move	$a5,$s1
    ld	$a7,544($sp)
    move	$a4,$zero
    li	$a3,1
    lw	$a2,1004($s0)
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 809
    # lw $t9, -27532($gp) # &__glInitUnpacker
    ld	$s2,504($sp)
    move	$a0,$s0
    ld	$s1,520($sp)
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 810
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 814
    li	$t1,1
    sb	$t1,426($sp)
    # Line 815
    # lw $t9, -27716($gp) # &__glGenericPickCopyImage
    # Line 813
    sb	$zero,425($sp)
    # Line 815
    move	$a2,$zero
    addiu	$a1,$sp,0
    # Line 812
    sb	$zero,428($sp)
    # Line 815
    move	$a0,$s0
    jal	__glGenericPickCopyImage
    # Line 811
    sb	$t1,424($sp)
    ld	$ra,528($sp)
    ld	$s0,512($sp)
    # Line 817
    ld	$gp,536($sp)
    jr	$ra
    addiu	$sp,$sp,560
.end __glSlowPickGetSeparableFilter

# Function: __glSlowPickCopyConvolutionFilter1D
# Declared: Line 821 (Source lines: 825-856)
# Address: 0x0d99b760 - 0x0d99b91c (Size: 444 bytes, Frame: 160)
.globl __glSlowPickCopyConvolutionFilter1D
.ent __glSlowPickCopyConvolutionFilter1D
__glSlowPickCopyConvolutionFilter1D:
    # Line 825
    move	$v1,$a5
    # Line 832
    li	$a5,1
    # Line 825
    lui	$a6,0xb
    addiu	$sp,$sp,-544
    addiu	$a6,$a6,22060
    move	$at,$a3
    sd	$gp,528($sp)
    addu	$gp,$t9,$a6
    move	$v0,$a4
    # Line 832
    addiu	$a1,$sp,0
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    move	$a4,$v1
    move	$a3,$v0
    # Line 825
    sd	$s8,520($sp)
    move	$s8,$a2
    # Line 832
    move	$a2,$at
    # Line 825
    sd	$s0,504($sp)
    # Line 832
    nop
    # Line 825
    sd	$ra,512($sp)
    # Line 832
    jal	__glInitReadImageSrcInfo
    # Line 825
    move	$s0,$a0
    # Line 833
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s0
    move	$a2,$s8
    lw	$a3,848($s0)
    jal	__glInitMemLoad
    addiu	$a1,$sp,0
    # Line 834
    lwc1	$f4,784($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    lwc1	$f6,800($s0)
    cvt.d.s	$f0,$f4
    lwc1	$f8,808($s0)
    lwc1	$f7,804($s0)
    c.eq.d	$f0,$f5
    lwc1	$f3,796($s0)
    lwc1	$f2,792($s0)
    # Line 846
    li	$s8,1
    # Line 834
    bc1f	.L0d99b870
    lwc1	$f1,788($s0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d99b870
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d99b870
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d99b870
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d99b870
    nop
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d99b870
    nop
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d99b870
    nop
    lwc1	$f9,812($s0)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d99b914
    nop
.L0d99b870:
    # Line 839
    swc1	$f4,316($sp)
    # Line 840
    lwc1	$f16,788($s0)
    swc1	$f16,320($sp)
    # Line 841
    lwc1	$f15,792($s0)
    swc1	$f15,324($sp)
    # Line 842
    lwc1	$f14,796($s0)
    swc1	$f14,328($sp)
    # Line 843
    lwc1	$f13,800($s0)
    swc1	$f13,332($sp)
    # Line 844
    lwc1	$f12,804($s0)
    swc1	$f12,336($sp)
    # Line 845
    lwc1	$f11,808($s0)
    swc1	$f11,340($sp)
    # Line 846
    lwc1	$f10,812($s0)
    swc1	$f10,344($sp)
.L0d99b8ac:
    # Line 848
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 849
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 854
    # lw $t9, -27808($gp) # &__glClipReadPixels
    addiu	$a1,$sp,0
    # Line 852
    sw	$zero,432($sp)
    # Line 854
    move	$a0,$s0
    jal	__glClipReadPixels
    # Line 851
    sb	$s8,427($sp)
    # Line 854
    beqz	$v0,.L0d99b900
    ld	$ra,512($sp)
    # Line 855
    lw	$t9,12576($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,512($sp)
.L0d99b900:
    ld	$s0,504($sp)
    ld	$s8,520($sp)
    # Line 856
    ld	$gp,528($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0d99b914:
    b	.L0d99b8ac
    # Line 846
    move	$s8,$zero
.end __glSlowPickCopyConvolutionFilter1D

# Function: __glSlowPickCopyConvolutionFilter2D
# Declared: Line 859 (Source lines: 863-895)
# Address: 0x0d99b920 - 0x0d99bae0 (Size: 448 bytes, Frame: 160)
.globl __glSlowPickCopyConvolutionFilter2D
.ent __glSlowPickCopyConvolutionFilter2D
__glSlowPickCopyConvolutionFilter2D:
    # Line 863
    move	$at,$a3
    move	$v0,$a4
    move	$a7,$a6
    lui	$a6,0xb
    addiu	$sp,$sp,-544
    addiu	$a6,$a6,21612
    move	$v1,$a5
    sd	$gp,528($sp)
    addu	$gp,$t9,$a6
    # Line 870
    addiu	$a1,$sp,0
    move	$a5,$a7
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    move	$a4,$v1
    move	$a3,$v0
    # Line 863
    sd	$s8,520($sp)
    move	$s8,$a2
    # Line 870
    move	$a2,$at
    # Line 863
    sd	$s0,504($sp)
    # Line 870
    nop
    # Line 863
    sd	$ra,512($sp)
    # Line 870
    jal	__glInitReadImageSrcInfo
    # Line 863
    move	$s0,$a0
    # Line 871
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s0
    move	$a2,$s8
    lw	$a3,932($s0)
    jal	__glInitMemLoad
    addiu	$a1,$sp,0
    # Line 872
    lwc1	$f4,868($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    lwc1	$f6,884($s0)
    cvt.d.s	$f0,$f4
    lwc1	$f8,892($s0)
    lwc1	$f7,888($s0)
    c.eq.d	$f0,$f5
    lwc1	$f3,880($s0)
    lwc1	$f2,876($s0)
    # Line 884
    li	$s8,1
    # Line 872
    bc1f	.L0d99ba34
    lwc1	$f1,872($s0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d99ba34
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d99ba34
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d99ba34
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d99ba34
    nop
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d99ba34
    nop
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d99ba34
    nop
    lwc1	$f9,896($s0)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d99bad8
    nop
.L0d99ba34:
    # Line 877
    swc1	$f4,316($sp)
    # Line 878
    lwc1	$f16,872($s0)
    swc1	$f16,320($sp)
    # Line 879
    lwc1	$f15,876($s0)
    swc1	$f15,324($sp)
    # Line 880
    lwc1	$f14,880($s0)
    swc1	$f14,328($sp)
    # Line 881
    lwc1	$f13,884($s0)
    swc1	$f13,332($sp)
    # Line 882
    lwc1	$f12,888($s0)
    swc1	$f12,336($sp)
    # Line 883
    lwc1	$f11,892($s0)
    swc1	$f11,340($sp)
    # Line 884
    lwc1	$f10,896($s0)
    swc1	$f10,344($sp)
.L0d99ba70:
    # Line 886
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 887
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 892
    # lw $t9, -27808($gp) # &__glClipReadPixels
    addiu	$a1,$sp,0
    # Line 890
    sw	$zero,432($sp)
    # Line 892
    move	$a0,$s0
    jal	__glClipReadPixels
    # Line 889
    sb	$s8,427($sp)
    # Line 892
    beqz	$v0,.L0d99bac4
    ld	$ra,512($sp)
    # Line 893
    lw	$t9,12576($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,512($sp)
.L0d99bac4:
    ld	$s0,504($sp)
    ld	$s8,520($sp)
    # Line 895
    ld	$gp,528($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0d99bad8:
    b	.L0d99ba70
    # Line 884
    move	$s8,$zero
.end __glSlowPickCopyConvolutionFilter2D

# Function: __glSep2dZoomDrawPixels
# Declared: Line 902 (Source lines: 903-1021)
# Address: 0x0d99bae0 - 0x0d99bfb4 (Size: 1236 bytes, Frame: 0)
.globl __glSep2dZoomDrawPixels
.ent __glSep2dZoomDrawPixels
__glSep2dZoomDrawPixels:
    # Line 903
    lui	$at,0x1
    # Line 911
    lw	$v1,30648($a0)
    # Line 903
    ori	$at,$at,0x90e0
    # Line 921
    lw	$v0,436($a1)
    # Line 903
    subu	$sp,$sp,$at
    move	$a3,$s8
    sd	$a3,80($sp)
    sd	$s1,120($sp)
    sd	$s2,112($sp)
    sd	$s3,88($sp)
    sd	$s4,56($sp)
    sd	$s5,104($sp)
    sd	$s7,40($sp)
    sdc1	$f20,8($sp)
    sdc1	$f22,16($sp)
    # Line 911
    sd	$v1,168($sp)
    # Line 903
    sd	$ra,72($sp)
    sd	$s0,64($sp)
    sd	$s6,48($sp)
    lui	$a2,0xb
    # Line 921
    sd	$v0,184($sp)
    # Line 903
    addiu	$a2,$a2,21164
    sd	$gp,96($sp)
    addu	$gp,$t9,$a2
    # Line 925
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 903
    move	$s6,$a0
    # Line 923
    lw	$v0,68($v0)
    # Line 903
    move	$s0,$a1
    addu	$s8,$sp,$at
    # Line 923
    sd	$v0,176($sp)
    # Line 925
    nop
    # Line 924
    addiu	$at,$s8,-4112
    # Line 925
    jal	__glComputeSpanPixelArray
    # Line 924
    sw	$at,312($a1)
    # Line 930
    lwc1	$f20,200($s0)
    # Line 929
    lwc1	$f22,164($s0)
    # Line 927
    lw	$t0,412($s0)
    # Line 931
    lw	$t1,12($s0)
    sd	$t1,144($sp)
    # Line 933
    ld	$a6,184($sp)
    # Line 932
    lw	$a5,172($s0)
    # Line 926
    lw	$a7,360($s0)
    sd	$a7,192($sp)
    # Line 933
    ld	$a7,176($sp)
    # Line 927
    sd	$t0,128($sp)
    # Line 933
    lw	$a6,80($a6)
    slt	$a4,$a5,$a7
    sw	$a6,256($s0)
    # Line 932
    subu	$a5,$a5,$a7
    addiu	$a5,$a5,1
    # Line 933
    bnez	$a4,.L0d99bf74
    sd	$a5,136($sp)
    # Line 942
    ld	$t3,184($sp)
    lw	$t9,64($t3)
    lw	$t8,12($t3)
    mult	$t8,$t9
    ld	$t2,136($sp)
    lw	$t3,80($t3)
    mflo	$t8
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    blez	$t2,.L0d99bf74
    sd	$t3,152($sp)
    move	$s5,$zero
    li	$s4,1
    lui	$s1,0xfffe
    sd	$zero,32($sp)
    addiu	$t8,$s0,4
    addu	$s1,$s1,$s8
    sd	$t8,160($sp)
    b	.L0d99bc38
    addiu	$s1,$s1,28656
.L0d99bc00:
    # Line 1012
    lw	$a1,16($s0)
    lw	$a2,12($s0)
    ld	$a0,32($sp)
.L0d99bc0c:
    # Line 946
    addiu	$a0,$a0,1
    sd	$a0,32($sp)
    ld	$t9,136($sp)
    # Line 1016
    addu	$ra,$a1,$a2
    sd	$ra,144($sp)
    sw	$ra,12($s0)
    # Line 946
    slt	$t9,$a0,$t9
    # Line 1019
    ld	$at,168($sp)
    # Line 1015
    mov.s	$f20,$f4
    # Line 946
    beqz	$t9,.L0d99bf74
    # Line 1019
    sw	$at,30648($s6)
.L0d99bc38:
    # Line 942
    ld	$at,184($sp)
    ld	$v0,176($sp)
    lw	$at,12($at)
    mult	$at,$v0
    mflo	$ra
    blez	$ra,.L0d99bdec
    nop
    lw	$a2,12($s0)
    b	.L0d99bd0c
    sd	$zero,24($sp)
.L0d99bc60:
    # Line 957
    li	$s3,1
.L0d99bc64:
    ld	$t8,24($sp)
    beqz	$t8,.L0d99bdc4
    # Line 965
    sll	$t9,$s3,0x2
.L0d99bc70:
    addu	$t9,$s0,$t9
    lw	$t9,360($t9)
    move	$a0,$s6
    move	$a1,$s0
    move	$a2,$s2
    jalr	$t9
    move	$a3,$s7
.L0d99bc8c:
    # Line 975
    move	$a0,$s6
    lw	$t9,420($s0)
    move	$a1,$s0
    lui	$a4,0xffff
    ld	$a5,24($sp)
    move	$a3,$s7
    ld	$a2,152($sp)
    addu	$a4,$a4,$s8
    addiu	$a4,$a4,28656
    sll	$a5,$a5,0x2
    jalr	$t9
    addu	$a2,$a2,$a5
    # Line 981
    lw	$a3,12($s0)
    lw	$a2,16($s0)
    ld	$a0,24($sp)
    addu	$a2,$a2,$a3
    sw	$a2,12($s0)
    # Line 983
    lw	$a7,4852($s6)
    mtc1	$a7,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,200($s0)
    # Line 947
    ld	$a6,184($sp)
    ld	$a7,176($sp)
    # Line 983
    add.s	$f0,$f0,$f1
    swc1	$f0,200($s0)
    # Line 947
    lw	$a6,12($a6)
    mult	$a6,$a7
    addu	$a0,$a6,$a0
    mflo	$a5
    slt	$a5,$a0,$a5
    beqz	$a5,.L0d99bdec
    sd	$a0,24($sp)
.L0d99bd0c:
    # Line 950
    sll	$s7,$s4,0xf
    ld	$t9,192($sp)
    move	$a0,$s6
    addu	$s7,$s1,$s7
    move	$a1,$s0
    move	$s2,$s7
    jalr	$t9
    move	$a3,$s7
    lw	$t8,260($s0)
    # Line 954
    ld	$ra,168($sp)
    li	$s3,1
    # Line 950
    beqz	$t8,.L0d99bdb0
    # Line 965
    ld	$a5,24($sp)
    # Line 954
    sw	$ra,30648($s6)
    lw	$t9,260($s0)
    slti	$t9,$t9,2
    # Line 957
    sll	$s7,$s5,0xf
    # Line 954
    bnez	$t9,.L0d99bc60
    # Line 957
    addu	$s7,$s1,$s7
    # Line 954
    ld	$s2,160($sp)
    nop
.L0d99bd60:
    # Line 959
    move	$a1,$s0
    # Line 958
    move	$a3,$s5
    move	$s5,$s4
    move	$s4,$a3
    # Line 959
    sll	$a3,$a3,0xf
    lw	$t9,360($s2)
    move	$a0,$s6
    sll	$s7,$s5,0xf
    addu	$a3,$a3,$s1
    addu	$s7,$s7,$s1
    sd	$a3,200($sp)
    jalr	$t9
    move	$a2,$s7
    # Line 957
    lw	$a4,260($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a4
    bnez	$a4,.L0d99bd60
    addiu	$s2,$s2,4
    b	.L0d99bc64
    ld	$s2,200($sp)
.L0d99bdb0:
    # Line 965
    beqz	$a5,.L0d99bf08
    # Line 973
    move	$a6,$s5
.L0d99bdb8:
    move	$s5,$s4
    b	.L0d99bc8c
    move	$s4,$a6
.L0d99bdc4:
    # Line 964
    move	$a0,$s6
    lw	$t9,416($s0)
    move	$a1,$s0
    lui	$a3,0xffff
    move	$a2,$s2
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0d99bc70
    # Line 965
    sll	$t9,$s3,0x2
.L0d99bdec:
    # Line 986
    lw	$a4,264($s0)
    lw	$a6,260($s0)
    # Line 985
    swc1	$f20,200($s0)
    # Line 986
    slt	$a4,$a6,$a4
    ld	$a5,144($sp)
    beqz	$a4,.L0d99beac
    sw	$a5,12($s0)
    # Line 991
    addiu	$s3,$a6,2
    sll	$s2,$s3,0x2
    move	$a1,$s0
    addu	$s2,$s2,$s0
    move	$a0,$s6
    lui	$a2,0xffff
    lw	$t9,356($s2)
    sll	$s7,$s4,0xf
    addu	$a2,$a2,$s8
    addu	$s7,$s7,$s1
    addiu	$a2,$a2,28656
    jalr	$t9
    move	$a3,$s7
    lw	$t8,264($s0)
    slt	$t8,$t8,$s3
    bnez	$t8,.L0d99be94
    # Line 1000
    ld	$t9,128($sp)
.L0d99be4c:
    # Line 996
    move	$a1,$s0
    # Line 995
    move	$s7,$s5
    move	$s5,$s4
    # Line 996
    move	$a0,$s6
    sll	$a2,$s5,0xf
    lw	$t9,360($s2)
    # Line 995
    move	$s4,$s7
    # Line 996
    sll	$s7,$s7,0xf
    addu	$a2,$s1,$a2
    addu	$s7,$s1,$s7
    jalr	$t9
    move	$a3,$s7
    # Line 994
    lw	$t8,264($s0)
    addiu	$s3,$s3,1
    slt	$t8,$t8,$s3
    beqz	$t8,.L0d99be4c
    addiu	$s2,$s2,4
    # Line 1000
    ld	$t9,128($sp)
.L0d99be94:
    move	$a0,$s6
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s7
    b	.L0d99bec8
    nop
.L0d99beac:
    # Line 1002
    ld	$t9,128($sp)
    move	$a0,$s6
    lui	$a2,0xffff
    move	$a1,$s0
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
.L0d99bec8:
    # Line 1006
    add.s	$f4,$f22,$f20
    # Line 1008
    trunc.w.s	$f2,$f20
    trunc.w.s	$f1,$f4
    mfc1	$a6,$f2
    mfc1	$a3,$f1
    bne	$a6,$a3,.L0d99bc00
    nop
    lw	$a7,172($s0)
    ld	$a4,32($sp)
    slt	$a4,$a4,$a7
    beqz	$a4,.L0d99bf64
    nop
    lw	$a1,16($s0)
    lw	$a2,12($s0)
    b	.L0d99bf38
    ld	$a0,32($sp)
.L0d99bf08:
    # Line 971
    lw	$t9,416($s0)
    move	$a0,$s6
    lui	$a3,0xffff
    move	$a1,$s0
    addu	$a3,$a3,$s8
    lw	$a2,12($s0)
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0d99bdb8
    # Line 973
    move	$a6,$s5
.L0d99bf30:
    # Line 1012
    beqz	$a4,.L0d99bc0c
    nop
.L0d99bf38:
    # Line 1011
    add.s	$f4,$f22,$f4
    # Line 1012
    trunc.w.s	$f3,$f4
    mfc1	$a5,$f3
    # Line 1009
    addu	$a2,$a1,$a2
    # Line 1012
    addiu	$a0,$a0,1
    # Line 1009
    sw	$a2,12($s0)
    # Line 1012
    beq	$a6,$a5,.L0d99bf30
    slt	$a4,$a0,$a7
    sd	$a0,32($sp)
    b	.L0d99bc0c
    ld	$a0,32($sp)
.L0d99bf64:
    lw	$a1,16($s0)
    lw	$a2,12($s0)
    b	.L0d99bc0c
    ld	$a0,32($sp)
.L0d99bf74:
    # Line 1021
    ld	$gp,96($sp)
    ld	$s0,64($sp)
    ld	$s1,120($sp)
    ld	$s2,112($sp)
    ld	$s3,88($sp)
    ld	$s4,56($sp)
    ld	$s5,104($sp)
    ld	$s6,48($sp)
    ld	$s7,40($sp)
    ldc1	$f20,8($sp)
    ld	$ra,72($sp)
    ld	$a6,80($sp)
    ldc1	$f22,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a6
.end __glSep2dZoomDrawPixels

# Function: __glConv2dDrawPixels
# Declared: Line 1029 (Source lines: 1030-1136)
# Address: 0x0d99bfc0 - 0x0d99c474 (Size: 1204 bytes, Frame: 0)
.globl __glConv2dDrawPixels
.ent __glConv2dDrawPixels
__glConv2dDrawPixels:
    # Line 1030
    lui	$at,0x1
    ori	$at,$at,0x90f0
    subu	$sp,$sp,$at
    move	$a5,$s8
    sd	$a5,112($sp)
    sdc1	$f20,24($sp)
    sdc1	$f22,16($sp)
    sd	$ra,104($sp)
    sd	$s0,88($sp)
    sd	$s5,128($sp)
    # Line 1049
    lw	$v1,436($a1)
    # Line 1030
    move	$s5,$a0
    # Line 1038
    lw	$a0,30648($a0)
    # Line 1052
    lw	$a3,12($v1)
    lw	$a4,64($v1)
    # Line 1049
    sd	$v1,144($sp)
    # Line 1051
    lw	$v1,68($v1)
    # Line 1030
    lui	$a2,0xb
    # Line 1052
    mult	$a3,$a4
    # Line 1051
    sd	$v1,200($sp)
    # Line 1030
    addiu	$a2,$a2,19916
    sd	$gp,120($sp)
    addu	$gp,$t9,$a2
    # Line 1054
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 1030
    move	$s0,$a1
    addu	$s8,$sp,$at
    # Line 1038
    sd	$a0,176($sp)
    # Line 1054
    move	$a0,$s5
    # Line 1053
    addiu	$at,$s8,-4112
    sw	$at,312($a1)
    # Line 1052
    mflo	$v0
    # Line 1054
    jal	__glComputeSpanPixelArray
    # Line 1052
    sd	$v0,80($sp)
    # Line 1059
    lwc1	$f20,200($s0)
    # Line 1058
    lwc1	$f22,164($s0)
    sd	$s6,72($sp)
    sd	$s4,64($sp)
    sd	$s3,56($sp)
    sd	$s7,48($sp)
    sd	$s2,40($sp)
    sd	$s1,32($sp)
    # Line 1061
    lw	$t0,12($s0)
    sd	$t0,160($sp)
    # Line 1060
    ld	$a7,200($sp)
    lw	$a6,172($s0)
    # Line 1056
    lw	$t0,412($s0)
    sd	$t0,152($sp)
    # Line 1060
    subu	$a6,$a6,$a7
    # Line 1055
    lw	$a7,360($s0)
    # Line 1060
    addiu	$a6,$a6,1
    sd	$a6,136($sp)
    # Line 1061
    blez	$a6,.L0d99c434
    sd	$a7,192($sp)
    sd	$zero,96($sp)
    move	$s6,$zero
    li	$s4,1
    ld	$s3,80($sp)
    addiu	$t8,$s0,4
    sd	$t8,168($sp)
    lui	$s2,0xffff
    addu	$s2,$s2,$s8
    sll	$s3,$s3,0x2
    sd	$s3,184($sp)
    lw	$s3,8($sp)
    b	.L0d99c108
    addiu	$s2,$s2,-4112
    nop
    nop
.L0d99c0d0:
    # Line 1127
    lw	$a5,16($s0)
    lw	$a1,12($s0)
    ld	$a0,96($sp)
.L0d99c0dc:
    # Line 1065
    addiu	$a0,$a0,1
    sd	$a0,96($sp)
    ld	$t9,136($sp)
    # Line 1130
    addu	$ra,$a5,$a1
    sd	$ra,160($sp)
    sw	$ra,12($s0)
    # Line 1065
    slt	$t9,$a0,$t9
    # Line 1134
    ld	$at,176($sp)
    # Line 1132
    mov.s	$f20,$f4
    # Line 1065
    beqz	$t9,.L0d99c434
    # Line 1134
    sw	$at,30648($s5)
.L0d99c108:
    # Line 1066
    ld	$at,200($sp)
    ld	$ra,144($sp)
    lw	$ra,80($ra)
    blez	$at,.L0d99c2bc
    sw	$ra,256($s0)
    b	.L0d99c19c
    move	$s7,$zero
    nop
    nop
    nop
.L0d99c130:
    # Line 1083
    beqz	$s7,.L0d99c294
    # Line 1090
    ld	$t9,192($sp)
.L0d99c138:
    move	$a0,$s5
    lui	$a3,0xfffe
    move	$a1,$s0
    addu	$a3,$a3,$s8
    lw	$a2,12($s0)
    jalr	$t9
    addiu	$a3,$a3,28656
    # Line 1091
    li	$s3,1
    # Line 1094
    lw	$t1,12($s0)
.L0d99c15c:
    # Line 1096
    ld	$a7,184($sp)
    lw	$a6,256($s0)
    # Line 1094
    lw	$t0,16($s0)
    # Line 1096
    addu	$a6,$a6,$a7
    sw	$a6,256($s0)
    # Line 1094
    addu	$t0,$t0,$t1
    sw	$t0,12($s0)
    # Line 1097
    lw	$a5,4852($s5)
    mtc1	$a5,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,200($s0)
    # Line 1067
    ld	$a4,200($sp)
    addiu	$s7,$s7,1
    # Line 1097
    add.s	$f0,$f0,$f1
    # Line 1067
    beq	$a4,$s7,.L0d99c2bc
    # Line 1097
    swc1	$f0,200($s0)
.L0d99c19c:
    # Line 1066
    lw	$t2,260($s0)
    beqz	$t2,.L0d99c130
    # Line 1070
    ld	$a4,176($sp)
    # Line 1072
    ld	$t9,192($sp)
    move	$a1,$s0
    # Line 1070
    sw	$a4,30648($s5)
    # Line 1072
    move	$a0,$s5
    sll	$a3,$s4,0xf
    lw	$a2,12($s0)
    addu	$a3,$s2,$a3
    jalr	$t9
    sd	$a3,208($sp)
    # Line 1073
    lw	$a5,260($s0)
    slti	$a5,$a5,2
    ld	$s1,168($sp)
    bnez	$a5,.L0d99c22c
    li	$s3,1
.L0d99c1e0:
    # Line 1075
    move	$a1,$s0
    move	$a0,$s5
    # Line 1074
    move	$a3,$s6
    move	$s6,$s4
    # Line 1075
    lw	$t9,360($s1)
    sll	$a2,$s6,0xf
    # Line 1074
    move	$s4,$a3
    # Line 1075
    sll	$a3,$a3,0xf
    addu	$a2,$s2,$a2
    addu	$a3,$s2,$a3
    jalr	$t9
    sd	$a3,216($sp)
    # Line 1073
    lw	$a4,260($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a4
    bnez	$a4,.L0d99c1e0
    addiu	$s1,$s1,4
    ld	$a5,216($sp)
    sd	$a5,208($sp)
.L0d99c22c:
    beqz	$s7,.L0d99c26c
    nop
    # Line 1083
    addiu	$s3,$s3,1
.L0d99c238:
    sll	$t9,$s3,0x2
    addu	$t9,$s0,$t9
    lui	$s1,0xfffe
    lw	$t9,356($t9)
    move	$a1,$s0
    addu	$s1,$s1,$s8
    move	$a0,$s5
    addiu	$s1,$s1,28656
    ld	$a2,208($sp)
    jalr	$t9
    move	$a3,$s1
    b	.L0d99c15c
    # Line 1094
    lw	$t1,12($s0)
.L0d99c26c:
    # Line 1080
    lw	$t9,416($s0)
    move	$a0,$s5
    lui	$a3,0xfffe
    move	$a1,$s0
    addu	$a3,$a3,$s8
    ld	$a2,208($sp)
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0d99c238
    # Line 1083
    addiu	$s3,$s3,1
.L0d99c294:
    # Line 1088
    lw	$t9,416($s0)
    move	$a0,$s5
    lui	$a3,0xfffe
    move	$a1,$s0
    addu	$a3,$a3,$s8
    lw	$a2,12($s0)
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0d99c138
    # Line 1090
    ld	$t9,192($sp)
.L0d99c2bc:
    # Line 1101
    lw	$a0,264($s0)
    lw	$a5,260($s0)
    swc1	$f20,200($s0)
    slt	$a5,$a5,$a0
    ld	$a4,160($sp)
    bnez	$a5,.L0d99c3ec
    # Line 1100
    sw	$a4,12($s0)
.L0d99c2d8:
    # Line 1105
    slt	$a6,$a0,$s3
    bnez	$a6,.L0d99c330
    sll	$s1,$s3,0x2
    addu	$s1,$s0,$s1
    nop
    nop
.L0d99c2f0:
    # Line 1110
    move	$a0,$s5
    move	$a1,$s0
    # Line 1109
    move	$a3,$s6
    move	$s6,$s4
    # Line 1110
    lw	$t9,360($s1)
    # Line 1109
    move	$s4,$a3
    # Line 1110
    sll	$a3,$a3,0xf
    sll	$a2,$s6,0xf
    addu	$a3,$s2,$a3
    jalr	$t9
    addu	$a2,$s2,$a2
    # Line 1108
    lw	$a0,264($s0)
    addiu	$s3,$s3,1
    slt	$a4,$a0,$s3
    beqz	$a4,.L0d99c2f0
    addiu	$s1,$s1,4
.L0d99c330:
    lw	$a5,260($s0)
    bne	$a5,$a0,.L0d99c360
    # Line 1117
    ld	$t9,152($sp)
    # Line 1115
    ld	$t9,152($sp)
    move	$a0,$s5
    lui	$a2,0xfffe
    move	$a1,$s0
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    b	.L0d99c374
    nop
.L0d99c360:
    # Line 1117
    move	$a0,$s5
    move	$a1,$s0
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$s2,$a2
.L0d99c374:
    # Line 1120
    add.s	$f4,$f22,$f20
    # Line 1122
    trunc.w.s	$f2,$f20
    trunc.w.s	$f1,$f4
    mfc1	$a6,$f2
    mfc1	$a3,$f1
    bne	$a6,$a3,.L0d99c0d0
    nop
    lw	$a7,172($s0)
    ld	$a4,96($sp)
    slt	$a4,$a4,$a7
    beqz	$a4,.L0d99c424
    nop
    lw	$a5,16($s0)
    lw	$a1,12($s0)
    b	.L0d99c3bc
    ld	$a0,96($sp)
.L0d99c3b4:
    # Line 1127
    beqz	$t0,.L0d99c0dc
    nop
.L0d99c3bc:
    # Line 1123
    swc1	$f4,200($s0)
    # Line 1126
    add.s	$f4,$f22,$f4
    # Line 1127
    trunc.w.s	$f3,$f4
    mfc1	$t1,$f3
    # Line 1124
    addu	$a1,$a5,$a1
    # Line 1127
    addiu	$a0,$a0,1
    # Line 1124
    sw	$a1,12($s0)
    # Line 1127
    beq	$a6,$t1,.L0d99c3b4
    slt	$t0,$a0,$a7
    sd	$a0,96($sp)
    b	.L0d99c0dc
    ld	$a0,96($sp)
.L0d99c3ec:
    # Line 1105
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$s0,$t9
    move	$a1,$s0
    move	$a0,$s5
    lw	$t9,356($t9)
    sll	$a3,$s4,0xf
    lui	$a2,0xfffe
    addu	$a3,$s2,$a3
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    b	.L0d99c2d8
    lw	$a0,264($s0)
.L0d99c424:
    # Line 1127
    lw	$a5,16($s0)
    lw	$a1,12($s0)
    b	.L0d99c0dc
    ld	$a0,96($sp)
.L0d99c434:
    # Line 1136
    ld	$gp,120($sp)
    ld	$s0,88($sp)
    ld	$s1,32($sp)
    ld	$s2,40($sp)
    ld	$s3,56($sp)
    ld	$s4,64($sp)
    ld	$s5,128($sp)
    ld	$s6,72($sp)
    ld	$s7,48($sp)
    ldc1	$f20,24($sp)
    ld	$ra,104($sp)
    ld	$at,112($sp)
    ldc1	$f22,16($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.end __glConv2dDrawPixels

# Function: __glSep2dDrawPixels
# Declared: Line 1143 (Source lines: 1144-1270)
# Address: 0x0d99c480 - 0x0d99cafc (Size: 1660 bytes, Frame: 0)
.globl __glSep2dDrawPixels
.ent __glSep2dDrawPixels
__glSep2dDrawPixels:
    # Line 1144
    lui	$at,0x1
    ori	$at,$at,0x1110
    subu	$sp,$sp,$at
    move	$a4,$s8
    sd	$a4,88($sp)
    sd	$ra,64($sp)
    sd	$s2,40($sp)
    sd	$s3,56($sp)
    sd	$s6,80($sp)
    sd	$s0,72($sp)
    # Line 1164
    lw	$s0,436($a1)
    # Line 1162
    lw	$s6,1020($a0)
    # Line 1166
    lw	$a3,64($s0)
    lw	$a2,12($s0)
    # Line 1144
    sd	$s5,48($sp)
    lui	$v1,0xb
    # Line 1165
    lw	$s5,68($s0)
    # Line 1144
    addiu	$v1,$v1,18700
    # Line 1166
    mult	$a2,$a3
    sd	$gp,96($sp)
    # Line 1144
    addu	$gp,$t9,$v1
    # Line 1168
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 1144
    addu	$s8,$sp,$at
    # Line 1151
    lw	$a2,30648($a0)
    # Line 1167
    addiu	$at,$s8,-4112
    sw	$at,312($a1)
    # Line 1144
    move	$s3,$a0
    move	$s2,$a1
    # Line 1151
    sd	$a2,136($sp)
    # Line 1168
    nop
    # Line 1166
    mflo	$v0
    # Line 1168
    jal	__glComputeSpanPixelArray
    # Line 1166
    sd	$v0,8($sp)
    # Line 1174
    addiu	$a0,$s5,-1
    sd	$a0,24($sp)
    # Line 1175
    lw	$a7,80($s0)
    # Line 1169
    lw	$t1,360($s2)
    # Line 1170
    lw	$t2,412($s2)
    # Line 1172
    lw	$a6,172($s2)
    # Line 1170
    sd	$t2,120($sp)
    # Line 1169
    sd	$t1,144($sp)
    # Line 1175
    slt	$a5,$a6,$s5
    sw	$a7,256($s2)
    # Line 1172
    subu	$a6,$a6,$s5
    addiu	$a6,$a6,1
    # Line 1175
    bnez	$a5,.L0d99caac
    sd	$a6,128($sp)
    # Line 1185
    blez	$a0,.L0d99cad8
    sd	$s7,216($sp)
    sd	$zero,184($sp)
    li	$at,1
    sd	$at,176($sp)
    sd	$s6,16($sp)
    addiu	$t9,$s2,4
    sd	$t9,112($sp)
    sd	$s4,224($sp)
    sll	$t8,$a0,0xf
    lui	$s7,0xffff
    sd	$s1,232($sp)
    addu	$t8,$t8,$s6
    addu	$s7,$s7,$s8
    sd	$t8,104($sp)
    b	.L0d99c5f0
    addiu	$s7,$s7,-4112
.L0d99c580:
    sd	$v0,192($sp)
.L0d99c584:
    # Line 1200
    lw	$t9,416($s2)
    move	$a0,$s3
    ld	$s1,16($sp)
    move	$a1,$s2
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s1
    # Line 1201
    ld	$t9,192($sp)
    sll	$t9,$t9,0x2
    addu	$t9,$s2,$t9
    lw	$t9,360($t9)
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s1
    # Line 1210
    lw	$v0,12($s2)
.L0d99c5c8:
    lw	$ra,16($s2)
    # Line 1188
    ld	$at,16($sp)
    li	$v1,0x8000
    # Line 1210
    addu	$ra,$ra,$v0
    # Line 1188
    ld	$v0,104($sp)
    addu	$at,$v1,$at
    sd	$at,16($sp)
    beq	$at,$v0,.L0d99c6e4
    # Line 1210
    sw	$ra,12($s2)
    nop
.L0d99c5f0:
    # Line 1185
    lw	$a0,260($s2)
    beqz	$a0,.L0d99c6ac
    # Line 1193
    ld	$s4,176($sp)
    ld	$t9,144($sp)
    move	$a1,$s2
    # Line 1191
    ld	$t8,136($sp)
    # Line 1193
    sll	$s4,$s4,0xf
    move	$a0,$s3
    # Line 1191
    sw	$t8,30648($s3)
    # Line 1193
    addu	$s4,$s7,$s4
    lw	$a2,12($s2)
    jalr	$t9
    move	$a3,$s4
    lw	$t9,260($s2)
    slti	$t9,$t9,2
    li	$ra,1
    # Line 1194
    li	$v0,1
    # Line 1193
    bnez	$t9,.L0d99c580
    ld	$s1,112($sp)
    ld	$s4,184($sp)
    sd	$ra,192($sp)
    nop
    nop
    nop
.L0d99c650:
    # Line 1196
    move	$a1,$s2
    # Line 1195
    ld	$a4,176($sp)
    # Line 1196
    move	$a0,$s3
    # Line 1195
    move	$a3,$s4
    # Line 1196
    lw	$t9,360($s1)
    # Line 1195
    sd	$a3,176($sp)
    # Line 1196
    sll	$a3,$a3,0xf
    # Line 1195
    move	$s4,$a4
    # Line 1196
    addu	$a3,$s7,$a3
    sll	$a2,$s4,0xf
    sd	$a3,152($sp)
    jalr	$t9
    addu	$a2,$s7,$a2
    # Line 1194
    ld	$a5,192($sp)
    lw	$a6,260($s2)
    addiu	$a5,$a5,1
    sd	$a5,192($sp)
    slt	$a5,$a5,$a6
    bnez	$a5,.L0d99c650
    addiu	$s1,$s1,4
    sd	$s4,184($sp)
    b	.L0d99c584
    ld	$s4,152($sp)
.L0d99c6ac:
    # Line 1205
    lw	$t9,416($s2)
    move	$a0,$s3
    ld	$a3,16($sp)
    move	$a1,$s2
    jalr	$t9
    lw	$a2,12($s2)
    # Line 1207
    ld	$t9,144($sp)
    move	$a0,$s3
    lw	$a2,12($s2)
    move	$a1,$s2
    jalr	$t9
    ld	$a3,16($sp)
    b	.L0d99c5c8
    # Line 1210
    lw	$v0,12($s2)
.L0d99c6e4:
    # Line 1214
    ld	$a2,128($sp)
    lw	$a0,436($s2)
    ld	$a1,8($sp)
    lw	$a0,80($a0)
    sll	$a1,$a1,0x2
    blez	$a2,.L0d99ca6c
    addu	$a0,$a0,$a1
    ld	$a1,24($sp)
    ld	$s4,176($sp)
    addiu	$t8,$s2,4
    sd	$t8,112($sp)
    move	$a3,$zero
    move	$a2,$zero
    sd	$a0,208($sp)
    sll	$s4,$s4,0xf
    sd	$s0,200($sp)
    b	.L0d99c968
    addu	$s4,$s7,$s4
    nop
.L0d99c730:
    sd	$t8,192($sp)
.L0d99c734:
    # Line 1228
    lw	$t9,416($s2)
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s0
    # Line 1229
    ld	$t9,192($sp)
    addiu	$t9,$t9,1
    sd	$t9,192($sp)
    sll	$t9,$t9,0x2
    addu	$t9,$s2,$t9
    lw	$t9,356($t9)
    move	$a3,$s0
    move	$a2,$s4
    move	$a1,$s2
    jalr	$t9
    move	$a0,$s3
.L0d99c778:
    # Line 1240
    lw	$t9,416($s2)
    ld	$a2,32($sp)
    move	$a0,$s3
    move	$a1,$s2
    move	$a3,$s4
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$s6,$a2
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    blez	$s5,.L0d99c844
    addiu	$s7,$s7,-4112
    ld	$s7,32($sp)
    move	$s1,$zero
    move	$s0,$s7
    addu	$s7,$s5,$s7
    nop
    nop
.L0d99c7c0:
    # Line 1242
    mtc1	$s5,$f1
    mtc1	$s0,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    ld	$a7,200($sp)
    lw	$a7,12($a7)
    mult	$a7,$s1
    trunc.w.d	$f0,$f0
    mfc1	$a6,$f0
    mflo	$a5
    nop
    nop
    mult	$a6,$s5
    move	$a0,$s3
    move	$a1,$s2
    move	$a4,$s4
    ld	$a2,208($sp)
    teq	$s5,$zero,0x7
    lw	$t9,420($s2)
    mflo	$a3
    sll	$a5,$a5,0x2
    subu	$a3,$s0,$a3
    addu	$a2,$a2,$a5
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$s6,$a3
    # Line 1241
    addiu	$s0,$s0,1
    bne	$s0,$s7,.L0d99c7c0
    addiu	$s1,$s1,1
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,-4112
.L0d99c844:
    ld	$s0,192($sp)
    lw	$t8,264($s2)
    slt	$t8,$t8,$s0
    sll	$s1,$s0,0x2
    bnez	$t8,.L0d99c8b4
    addu	$s1,$s2,$s1
    ld	$s4,176($sp)
.L0d99c860:
    # Line 1252
    ld	$a2,184($sp)
    # Line 1253
    move	$a1,$s2
    move	$a0,$s3
    lw	$t9,360($s1)
    # Line 1252
    move	$a3,$a2
    move	$a2,$s4
    sd	$s4,184($sp)
    # Line 1253
    sll	$a2,$a2,0xf
    # Line 1252
    move	$s4,$a3
    # Line 1253
    sll	$a3,$a3,0xf
    addu	$a2,$s7,$a2
    addu	$a3,$s7,$a3
    jalr	$t9
    sd	$a3,168($sp)
    # Line 1251
    lw	$a3,264($s2)
    addiu	$s0,$s0,1
    slt	$a3,$a3,$s0
    beqz	$a3,.L0d99c860
    addiu	$s1,$s1,4
    sd	$s4,176($sp)
    ld	$s4,168($sp)
.L0d99c8b4:
    # Line 1257
    ld	$t9,120($sp)
    move	$a0,$s3
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s4
    # Line 1261
    ld	$a2,32($sp)
    mtc1	$s5,$f4
    addiu	$a7,$a2,1
    mtc1	$a7,$f3
    cvt.d.w	$f4,$f4
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    # Line 1262
    ld	$a1,24($sp)
    addiu	$a4,$a1,1
    mtc1	$a4,$f2
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f4
    # Line 1261
    trunc.w.d	$f3,$f3
    mfc1	$t9,$f3
    # Line 1264
    lw	$t8,12($s2)
    lw	$t3,16($s2)
    # Line 1261
    mult	$t9,$s5
    # Line 1264
    addu	$t3,$t3,$t8
    sw	$t3,12($s2)
    # Line 1262
    trunc.w.d	$f2,$f2
    # Line 1266
    lw	$t2,4852($s3)
    # Line 1262
    mfc1	$t1,$f2
    # Line 1266
    mtc1	$t2,$f1
    # Line 1261
    mflo	$t0
    nop
    nop
    # Line 1262
    mult	$t1,$s5
    # Line 1216
    ld	$a3,240($sp)
    # Line 1266
    cvt.s.w	$f1,$f1
    lwc1	$f2,200($s2)
    # Line 1262
    teq	$s5,$zero,0x7
    # Line 1216
    ld	$a6,128($sp)
    # Line 1261
    teq	$s5,$zero,0x7
    # Line 1216
    addiu	$a3,$a3,1
    # Line 1266
    add.s	$f1,$f1,$f2
    # Line 1261
    subu	$a2,$a7,$t0
    # Line 1262
    mflo	$a5
    # Line 1266
    swc1	$f1,200($s2)
    # Line 1216
    beq	$a6,$a3,.L0d99ca6c
    # Line 1262
    subu	$a1,$a4,$a5
.L0d99c968:
    sd	$a1,24($sp)
    # Line 1218
    ld	$t8,136($sp)
    sw	$t8,30648($s3)
    lw	$ra,260($s2)
    sd	$a3,240($sp)
    sd	$a2,32($sp)
    sll	$s0,$a1,0xf
    lw	$a4,12($s2)
    beqz	$ra,.L0d99ca30
    addu	$s0,$s6,$s0
    # Line 1221
    ld	$t9,144($sp)
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$a4
    jalr	$t9
    move	$a3,$s4
    lw	$t9,260($s2)
    slti	$t9,$t9,2
    li	$ra,1
    # Line 1222
    li	$t8,1
    # Line 1221
    bnez	$t9,.L0d99c730
    ld	$s1,112($sp)
    sd	$s0,248($sp)
    ld	$s0,184($sp)
    ld	$s4,176($sp)
    sd	$ra,192($sp)
.L0d99c9d0:
    # Line 1224
    move	$a1,$s2
    move	$a0,$s3
    # Line 1223
    move	$a3,$s0
    move	$s0,$s4
    # Line 1224
    lw	$t9,360($s1)
    sll	$a2,$s0,0xf
    # Line 1223
    move	$s4,$a3
    # Line 1224
    sll	$a3,$a3,0xf
    addu	$a2,$s7,$a2
    addu	$a3,$s7,$a3
    jalr	$t9
    sd	$a3,160($sp)
    # Line 1222
    ld	$a4,192($sp)
    lw	$a5,260($s2)
    addiu	$a4,$a4,1
    sd	$a4,192($sp)
    slt	$a4,$a4,$a5
    bnez	$a4,.L0d99c9d0
    addiu	$s1,$s1,4
    sd	$s0,184($sp)
    ld	$s0,248($sp)
    sd	$s4,176($sp)
    b	.L0d99c734
    ld	$s4,160($sp)
.L0d99ca30:
    # Line 1233
    lw	$t9,416($s2)
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$a4
    jalr	$t9
    move	$a3,$s0
    # Line 1235
    ld	$t9,144($sp)
    move	$a0,$s3
    move	$a1,$s2
    lw	$a2,12($s2)
    jalr	$t9
    move	$a3,$s0
    # Line 1236
    li	$a6,1
    b	.L0d99c778
    sd	$a6,192($sp)
.L0d99ca6c:
    ld	$s1,232($sp)
    ld	$s4,224($sp)
    ld	$s7,216($sp)
    # Line 1270
    ld	$gp,96($sp)
    ld	$s0,72($sp)
    ld	$s2,40($sp)
    ld	$s5,48($sp)
    ld	$s6,80($sp)
    # Line 1269
    ld	$t0,136($sp)
    sw	$t0,30648($s3)
    # Line 1270
    ld	$ra,64($sp)
    ld	$a7,88($sp)
    ld	$s3,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a7
.L0d99caac:
    ld	$s2,40($sp)
    ld	$s5,48($sp)
    ld	$s3,56($sp)
    ld	$s0,72($sp)
    ld	$s6,80($sp)
    ld	$ra,64($sp)
    ld	$t1,88($sp)
    ld	$gp,96($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
.L0d99cad8:
    # Line 1188
    sd	$zero,184($sp)
    li	$t8,1
    sd	$t8,176($sp)
    lui	$s7,0xffff
    sd	$s4,224($sp)
    addu	$s7,$s7,$s8
    sd	$s1,232($sp)
    b	.L0d99c6e4
    addiu	$s7,$s7,-4112
.end __glSep2dDrawPixels

# Function: __glConv2dReadPixels
# Declared: Line 1276 (Source lines: 1277-1362)
# Address: 0x0d99cb00 - 0x0d99ce98 (Size: 920 bytes, Frame: 0)
.globl __glConv2dReadPixels
.ent __glConv2dReadPixels
__glConv2dReadPixels:
    # Line 1296
    lw	$a3,356($a1)
    # Line 1277
    lui	$at,0x1
    # Line 1300
    lw	$v0,264($a1)
    # Line 1277
    ori	$at,$at,0x80d0
    # Line 1299
    lw	$v1,172($a1)
    # Line 1277
    subu	$sp,$sp,$at
    move	$a7,$s8
    sd	$a7,64($sp)
    sd	$s0,56($sp)
    sd	$s2,104($sp)
    sd	$s3,88($sp)
    sd	$s4,48($sp)
    sd	$s5,112($sp)
    sd	$s7,96($sp)
    sdc1	$f20,16($sp)
    sd	$ra,72($sp)
    sdc1	$f22,24($sp)
    # Line 1300
    lwc1	$f22,192($a1)
    # Line 1296
    sd	$a3,160($sp)
    sd	$gp,80($sp)
    # Line 1277
    sd	$s1,120($sp)
    # Line 1292
    lw	$a2,436($a1)
    # Line 1277
    sd	$s6,40($sp)
    # Line 1295
    lw	$a5,12($a2)
    lw	$a6,64($a2)
    # Line 1292
    sd	$a2,136($sp)
    # Line 1294
    lw	$a2,68($a2)
    # Line 1295
    mult	$a5,$a6
    # Line 1277
    lui	$a4,0xb
    # Line 1294
    sd	$a2,176($sp)
    # Line 1277
    addiu	$a4,$a4,17036
    # Line 1298
    lw	$a5,4852($a0)
    # Line 1277
    move	$s1,$a1
    addu	$s8,$sp,$at
    # Line 1300
    lw	$at,260($a1)
    # Line 1277
    move	$s6,$a0
    # Line 1284
    lw	$a0,30648($a0)
    # Line 1299
    subu	$v1,$v1,$a2
    # Line 1277
    addu	$gp,$t9,$a4
    # Line 1284
    sd	$a0,168($sp)
    # Line 1299
    addiu	$v1,$v1,1
    # Line 1295
    mflo	$a6
    # Line 1300
    bne	$at,$v0,.L0d99cbbc
    sd	$v1,128($sp)
    # Line 1303
    lw	$t0,92($a1)
    b	.L0d99cbcc
    sd	$t0,184($sp)
.L0d99cbbc:
    lui	$t1,0xffff
    addu	$t1,$t1,$s8
    addiu	$t1,$t1,32752
    sd	$t1,184($sp)
.L0d99cbcc:
    # Line 1305
    ld	$t2,128($sp)
    blez	$t2,.L0d99ce50
    move	$s5,$zero
    mtc1	$a5,$f20
    li	$s4,1
    sd	$zero,144($sp)
    lui	$s2,0xfffe
    sll	$s3,$a6,0x2
    sd	$s3,152($sp)
    addu	$s2,$s2,$s8
    lw	$s3,8($sp)
    addiu	$s2,$s2,32752
    b	.L0d99cc54
    cvt.s.w	$f20,$f20
    nop
    nop
    nop
.L0d99cc10:
    # Line 1351
    move	$a0,$s6
    move	$a1,$s1
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$s2,$a2
.L0d99cc24:
    # Line 1357
    lw	$a6,92($s1)
.L0d99cc28:
    lw	$a5,96($s1)
    # Line 1359
    lwc1	$f22,192($s1)
    # Line 1309
    ld	$a4,144($sp)
    ld	$a3,128($sp)
    addiu	$a4,$a4,1
    sd	$a4,144($sp)
    # Line 1357
    addu	$a5,$a5,$a6
    sw	$a5,92($s1)
    # Line 1359
    add.s	$f22,$f22,$f20
    # Line 1309
    beq	$a3,$a4,.L0d99ce50
    # Line 1359
    swc1	$f22,192($s1)
.L0d99cc54:
    # Line 1310
    ld	$t0,176($sp)
    ld	$a7,136($sp)
    lw	$a7,80($a7)
    blez	$t0,.L0d99cd74
    sw	$a7,256($s1)
    sll	$s7,$s4,0xf
    sd	$zero,32($sp)
    b	.L0d99cccc
    addu	$s7,$s2,$s7
    nop
    # Line 1325
    sll	$t9,$s3,0x2
.L0d99cc80:
    addu	$t9,$s1,$t9
    lw	$t9,360($t9)
    ld	$s0,32($sp)
    move	$a0,$s6
    move	$a1,$s1
    move	$a2,$s7
    jalr	$t9
    ld	$a3,184($sp)
    # Line 1329
    ld	$v0,152($sp)
    lw	$at,256($s1)
    # Line 1328
    lwc1	$f23,192($s1)
    # Line 1311
    ld	$ra,176($sp)
    addiu	$s0,$s0,1
    sd	$s0,32($sp)
    # Line 1329
    addu	$at,$at,$v0
    sw	$at,256($s1)
    # Line 1328
    add.s	$f23,$f23,$f20
    # Line 1311
    beq	$ra,$s0,.L0d99cd70
    # Line 1328
    swc1	$f23,192($s1)
.L0d99cccc:
    # Line 1312
    ld	$t9,160($sp)
    move	$a0,$s6
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s7
    # Line 1315
    ld	$a0,168($sp)
    sw	$a0,30648($s6)
    # Line 1317
    lw	$v1,260($s1)
    move	$s0,$s1
    blez	$v1,.L0d99cd44
    move	$s3,$zero
    nop
    nop
.L0d99cd00:
    # Line 1319
    move	$a1,$s1
    # Line 1318
    move	$s7,$s5
    move	$s5,$s4
    # Line 1319
    move	$a0,$s6
    sll	$a2,$s5,0xf
    lw	$t9,360($s0)
    # Line 1318
    move	$s4,$s7
    # Line 1319
    sll	$s7,$s7,0xf
    addu	$a2,$s2,$a2
    addu	$s7,$s2,$s7
    jalr	$t9
    move	$a3,$s7
    # Line 1317
    lw	$t8,260($s1)
    addiu	$s3,$s3,1
    slt	$t8,$s3,$t8
    bnez	$t8,.L0d99cd00
    addiu	$s0,$s0,4
.L0d99cd44:
    ld	$t9,32($sp)
    bnez	$t9,.L0d99cc80
    # Line 1325
    sll	$t9,$s3,0x2
    # Line 1324
    lw	$t9,416($s1)
    move	$a0,$s6
    move	$a1,$s1
    move	$a2,$s7
    jalr	$t9
    ld	$a3,184($sp)
    b	.L0d99cc80
    # Line 1325
    sll	$t9,$s3,0x2
.L0d99cd70:
    # Line 1311
    addiu	$s3,$s3,1
.L0d99cd74:
    # Line 1331
    lw	$a0,264($s1)
    slt	$a1,$s3,$a0
    bnez	$a1,.L0d99ce14
    swc1	$f22,192($s1)
.L0d99cd84:
    # Line 1334
    beqz	$a1,.L0d99cdd0
    sll	$s0,$s3,0x2
    addu	$s0,$s1,$s0
.L0d99cd90:
    # Line 1340
    move	$a0,$s6
    move	$a1,$s1
    # Line 1339
    move	$a3,$s5
    move	$s5,$s4
    # Line 1340
    lw	$t9,360($s0)
    # Line 1339
    move	$s4,$a3
    # Line 1340
    sll	$a3,$a3,0xf
    sll	$a2,$s5,0xf
    addu	$a3,$s2,$a3
    jalr	$t9
    addu	$a2,$s2,$a2
    # Line 1338
    lw	$a0,264($s1)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a0
    bnez	$a4,.L0d99cd90
    addiu	$s0,$s0,4
.L0d99cdd0:
    bne	$a0,$s3,.L0d99cc24
    nop
    lw	$ra,260($s1)
    sll	$t9,$s3,0x2
    addiu	$at,$a0,-1
    lw	$a3,92($s1)
    addu	$t9,$s1,$t9
    bne	$ra,$at,.L0d99cc10
    lw	$t9,360($t9)
    # Line 1346
    move	$a0,$s6
    lui	$a2,0xffff
    move	$a1,$s1
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    b	.L0d99cc28
    # Line 1357
    lw	$a6,92($s1)
.L0d99ce14:
    # Line 1334
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$s1,$t9
    move	$a1,$s1
    move	$a0,$s6
    lw	$t9,356($t9)
    sll	$a3,$s4,0xf
    lui	$a2,0xffff
    addu	$a3,$s2,$a3
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    lw	$a0,264($s1)
    b	.L0d99cd84
    slt	$a1,$s3,$a0
.L0d99ce50:
    # Line 1362
    ld	$gp,80($sp)
    ld	$s0,56($sp)
    ld	$s1,120($sp)
    ld	$s2,104($sp)
    ld	$s3,88($sp)
    ld	$s4,48($sp)
    ld	$s5,112($sp)
    ld	$s7,96($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,24($sp)
    # Line 1361
    ld	$v0,168($sp)
    sw	$v0,30648($s6)
    # Line 1362
    ld	$ra,72($sp)
    ld	$at,64($sp)
    ld	$s6,40($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.end __glConv2dReadPixels

# Function: __glSep2dReadPixels
# Declared: Line 1368 (Source lines: 1369-1480)
# Address: 0x0d99cea0 - 0x0d99d48c (Size: 1516 bytes, Frame: 0)
.globl __glSep2dReadPixels
.ent __glSep2dReadPixels
__glSep2dReadPixels:
    # Line 1369
    lui	$at,0x1
    # Line 1376
    lw	$v0,30648($a0)
    # Line 1369
    ori	$at,$at,0x120
    # Line 1389
    lw	$v1,356($a1)
    # Line 1369
    subu	$sp,$sp,$at
    # Line 1376
    sd	$v0,128($sp)
    # Line 1369
    sd	$s5,56($sp)
    # Line 1386
    lw	$s5,1020($a0)
    sd	$gp,96($sp)
    # Line 1369
    sd	$s3,64($sp)
    sd	$s2,48($sp)
    # Line 1389
    sd	$v1,120($sp)
    # Line 1369
    sd	$s0,72($sp)
    # Line 1384
    lw	$s0,436($a1)
    # Line 1369
    move	$a4,$s8
    addu	$s8,$sp,$at
    # Line 1392
    lw	$at,172($a1)
    # Line 1388
    lw	$a3,64($s0)
    lw	$a2,12($s0)
    # Line 1369
    sd	$s4,80($sp)
    # Line 1387
    lw	$s4,68($s0)
    # Line 1388
    mult	$a2,$a3
    # Line 1369
    move	$s2,$a1
    move	$s3,$a0
    sd	$a4,88($sp)
    lui	$a4,0xb
    # Line 1395
    lw	$v1,80($s0)
    # Line 1392
    subu	$at,$at,$s4
    # Line 1369
    addiu	$a4,$a4,16108
    # Line 1391
    lw	$a3,4852($a0)
    # Line 1392
    addiu	$at,$at,1
    # Line 1369
    addu	$gp,$t9,$a4
    # Line 1392
    sd	$at,112($sp)
    # Line 1395
    slt	$at,$at,$s4
    # Line 1384
    move	$a2,$s0
    # Line 1395
    sw	$v1,256($a1)
    # Line 1394
    addiu	$v0,$s4,-1
    # Line 1388
    mflo	$a4
    # Line 1395
    bnez	$at,.L0d99d464
    sd	$v0,152($sp)
    sdc1	$f20,224($sp)
    sd	$a4,24($sp)
    sd	$a3,16($sp)
    sd	$s6,256($sp)
    # Line 1405
    lw	$a6,264($a1)
    lw	$a5,260($a1)
    sd	$ra,248($sp)
    sd	$s7,240($sp)
    bne	$a5,$a6,.L0d99cf70
    sd	$s1,232($sp)
    # Line 1408
    b	.L0d99cf7c
    lw	$s6,92($a1)
.L0d99cf70:
    # Line 1410
    lui	$s6,0xffff
    addu	$s6,$s6,$s8
    addiu	$s6,$s6,32752
.L0d99cf7c:
    blez	$s4,.L0d99d0c8
    ld	$ra,16($sp)
    li	$t8,0x8000
    sd	$s5,32($sp)
    lui	$t9,0xffff
    mtc1	$ra,$f20
    sd	$zero,200($sp)
    addu	$t9,$t9,$s8
    sll	$ra,$s4,0xf
    addiu	$t9,$t9,-16
    addu	$ra,$ra,$s5
    sd	$ra,104($sp)
    li	$s7,1
    addu	$t8,$t8,$t9
    sd	$t8,184($sp)
    cvt.s.w	$f20,$f20
    nop
.L0d99cfc0:
    # Line 1414
    ld	$t9,120($sp)
    move	$a0,$s3
    move	$a1,$s2
    jalr	$t9
    ld	$a2,184($sp)
    # Line 1416
    ld	$v1,128($sp)
    sw	$v1,30648($s3)
    # Line 1417
    lw	$v0,260($s2)
    move	$s1,$s2
    blez	$v0,.L0d99d058
    sd	$zero,40($sp)
    nop
.L0d99cff0:
    # Line 1419
    lui	$a3,0xffff
    move	$a1,$s2
    addu	$a3,$a3,$s8
    # Line 1418
    ld	$a2,200($sp)
    # Line 1419
    move	$a0,$s3
    addiu	$a3,$a3,-16
    lw	$t9,360($s1)
    # Line 1418
    move	$a4,$a2
    move	$a2,$s7
    sd	$s7,200($sp)
    # Line 1419
    sll	$a2,$a2,0xf
    # Line 1418
    move	$s7,$a4
    # Line 1419
    sll	$a4,$a4,0xf
    addu	$a2,$a3,$a2
    addu	$a3,$a3,$a4
    jalr	$t9
    sd	$a3,168($sp)
    # Line 1417
    ld	$a3,40($sp)
    lw	$a4,260($s2)
    addiu	$a3,$a3,1
    sd	$a3,40($sp)
    slt	$a3,$a3,$a4
    bnez	$a3,.L0d99cff0
    addiu	$s1,$s1,4
    ld	$a5,168($sp)
    sd	$a5,184($sp)
.L0d99d058:
    # Line 1423
    lw	$t9,416($s2)
    ld	$s1,32($sp)
    move	$a0,$s3
    move	$a1,$s2
    ld	$a2,184($sp)
    jalr	$t9
    move	$a3,$s1
    # Line 1424
    ld	$t9,40($sp)
    sll	$t9,$t9,0x2
    addu	$t9,$s2,$t9
    lw	$t9,360($t9)
    move	$a0,$s3
    move	$a1,$s2
    ld	$a2,184($sp)
    jalr	$t9
    move	$a3,$s1
    # Line 1427
    lwc1	$f21,192($s2)
    # Line 1413
    ld	$ra,104($sp)
    li	$at,0x8000
    addu	$s1,$at,$s1
    sd	$s1,32($sp)
    # Line 1427
    add.s	$f21,$f21,$f20
    # Line 1413
    bne	$s1,$ra,.L0d99cfc0
    # Line 1427
    swc1	$f21,192($s2)
    # Line 1413
    ld	$v0,40($sp)
    lw	$a2,436($s2)
    addiu	$v0,$v0,1
    sw	$v0,8($sp)
.L0d99d0c8:
    # Line 1429
    ld	$t8,112($sp)
    # Line 1413
    lui	$s7,0xffff
    # Line 1429
    ld	$a1,24($sp)
    lw	$a0,80($a2)
    # Line 1413
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,-16
    # Line 1429
    sll	$a1,$a1,0x2
    blez	$t8,.L0d99d420
    addu	$a0,$a0,$a1
    sd	$zero,144($sp)
    sd	$zero,160($sp)
    ld	$a3,16($sp)
    sd	$a0,216($sp)
    lw	$a2,8($sp)
    mtc1	$a3,$f20
    sd	$a2,40($sp)
    sd	$s0,208($sp)
    ld	$s0,40($sp)
    b	.L0d99d2b4
    cvt.s.w	$f20,$f20
    nop
    nop
.L0d99d120:
    # Line 1443
    li	$s1,1
    sd	$zero,200($sp)
.L0d99d128:
    sll	$a4,$s1,0xf
    addu	$a4,$s7,$a4
    beq	$a0,$s0,.L0d99d3f4
    sd	$a4,184($sp)
    # Line 1455
    ld	$t0,160($sp)
.L0d99d13c:
    mtc1	$s4,$f25
    addiu	$t1,$t0,1
    mtc1	$t1,$f23
    cvt.d.w	$f25,$f25
    cvt.d.w	$f23,$f23
    div.d	$f23,$f23,$f25
    # Line 1456
    ld	$a5,152($sp)
    addiu	$a6,$a5,1
    mtc1	$a6,$f21
    cvt.d.w	$f21,$f21
    div.d	$f21,$f21,$f25
    # Line 1455
    trunc.w.d	$f23,$f23
    mfc1	$t9,$f23
    mult	$t9,$s4
    # Line 1456
    trunc.w.d	$f21,$f21
    mfc1	$t8,$f21
    # Line 1455
    mflo	$t2
    nop
    nop
    # Line 1456
    mult	$t8,$s4
    # Line 1463
    ld	$a2,184($sp)
    # Line 1456
    teq	$s4,$zero,0x7
    # Line 1459
    ld	$t3,128($sp)
    # Line 1455
    teq	$s4,$zero,0x7
    # Line 1463
    ld	$t9,120($sp)
    move	$a0,$s3
    move	$a1,$s2
    # Line 1459
    sw	$t3,30648($s3)
    # Line 1455
    subu	$t0,$t1,$t2
    sd	$t0,160($sp)
    # Line 1456
    mflo	$a7
    subu	$a5,$a6,$a7
    # Line 1463
    jalr	$t9
    # Line 1456
    sd	$a5,152($sp)
    # Line 1464
    lw	$ra,260($s2)
    move	$s0,$zero
    blez	$ra,.L0d99d238
    sd	$s1,192($sp)
    move	$s1,$s2
    nop
    nop
.L0d99d1e0:
    # Line 1465
    ld	$a4,192($sp)
    ld	$a2,200($sp)
    # Line 1466
    move	$a1,$s2
    lw	$t9,360($s1)
    # Line 1465
    move	$a3,$a2
    move	$a2,$a4
    # Line 1466
    move	$a0,$s3
    # Line 1465
    sd	$a4,200($sp)
    # Line 1466
    sll	$a2,$a2,0xf
    # Line 1465
    sd	$a3,192($sp)
    # Line 1466
    sll	$a3,$a3,0xf
    addu	$a2,$s7,$a2
    addu	$a3,$s7,$a3
    jalr	$t9
    sd	$a3,176($sp)
    # Line 1464
    lw	$a5,260($s2)
    addiu	$s0,$s0,1
    slt	$a5,$s0,$a5
    bnez	$a5,.L0d99d1e0
    addiu	$s1,$s1,4
    ld	$a6,176($sp)
    sd	$a6,184($sp)
.L0d99d238:
    # Line 1470
    ld	$s1,184($sp)
    lw	$t9,416($s2)
    ld	$a3,152($sp)
    move	$a1,$s2
    move	$a0,$s3
    move	$a2,$s1
    sll	$a3,$a3,0xf
    addu	$a3,$s5,$a3
    jalr	$t9
    sd	$a3,136($sp)
    # Line 1471
    addiu	$s0,$s0,1
    sll	$t9,$s0,0x2
    addu	$t9,$s2,$t9
    lw	$t9,356($t9)
    move	$a2,$s1
    move	$a1,$s2
    ld	$a3,136($sp)
    jalr	$t9
    move	$a0,$s3
    # Line 1474
    lw	$v1,92($s2)
    lw	$v0,96($s2)
    # Line 1477
    lwc1	$f25,192($s2)
    # Line 1431
    ld	$at,144($sp)
    ld	$ra,112($sp)
    addiu	$at,$at,1
    sd	$at,144($sp)
    # Line 1474
    addu	$v0,$v0,$v1
    sw	$v0,92($s2)
    # Line 1477
    add.s	$f25,$f25,$f20
    # Line 1431
    beq	$ra,$at,.L0d99d41c
    # Line 1477
    swc1	$f25,192($s2)
.L0d99d2b4:
    # Line 1433
    lw	$t9,416($s2)
    ld	$a2,160($sp)
    move	$a0,$s3
    move	$a1,$s2
    move	$a3,$s6
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$s5,$a2
    blez	$s4,.L0d99d378
    nop
    ld	$s7,160($sp)
    move	$s1,$zero
    sd	$s0,40($sp)
    move	$s0,$s7
    addu	$s7,$s4,$s7
.L0d99d2f0:
    # Line 1435
    mtc1	$s4,$f29
    mtc1	$s0,$f27
    cvt.d.w	$f29,$f29
    cvt.d.w	$f27,$f27
    div.d	$f27,$f27,$f29
    ld	$a7,208($sp)
    lw	$a7,12($a7)
    mult	$a7,$s1
    trunc.w.d	$f27,$f27
    mfc1	$a6,$f27
    mflo	$a5
    nop
    nop
    mult	$a6,$s4
    move	$a0,$s3
    move	$a1,$s2
    move	$a4,$s6
    ld	$a2,216($sp)
    teq	$s4,$zero,0x7
    lw	$t9,420($s2)
    mflo	$a3
    sll	$a5,$a5,0x2
    subu	$a3,$s0,$a3
    addu	$a2,$a2,$a5
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$s5,$a3
    # Line 1434
    addiu	$s0,$s0,1
    bne	$s0,$s7,.L0d99d2f0
    addiu	$s1,$s1,1
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    ld	$s0,40($sp)
    addiu	$s7,$s7,-16
.L0d99d378:
    lw	$a0,264($s2)
    slt	$t8,$s0,$a0
    sll	$s1,$s0,0x2
    beqz	$t8,.L0d99d120
    addu	$s1,$s2,$s1
    li	$t8,1
    sd	$t8,192($sp)
    sd	$zero,200($sp)
    nop
    nop
.L0d99d3a0:
    # Line 1444
    ld	$a2,200($sp)
    # Line 1445
    move	$a0,$s3
    # Line 1444
    ld	$a4,192($sp)
    # Line 1445
    move	$a1,$s2
    lw	$t9,360($s1)
    # Line 1444
    move	$a3,$a2
    sd	$a3,192($sp)
    move	$a2,$a4
    # Line 1445
    sll	$a3,$a3,0xf
    sll	$a2,$a2,0xf
    addu	$a3,$s7,$a3
    # Line 1444
    sd	$a4,200($sp)
    # Line 1445
    jalr	$t9
    addu	$a2,$s7,$a2
    # Line 1443
    lw	$a0,264($s2)
    addiu	$s0,$s0,1
    slt	$a5,$s0,$a0
    bnez	$a5,.L0d99d3a0
    addiu	$s1,$s1,4
    b	.L0d99d128
    ld	$s1,192($sp)
.L0d99d3f4:
    # Line 1450
    sll	$t9,$s0,0x2
    addu	$t9,$s2,$t9
    lw	$t9,360($t9)
    move	$a0,$s3
    ld	$a2,184($sp)
    move	$a1,$s2
    jalr	$t9
    lw	$a3,92($s2)
    b	.L0d99d13c
    # Line 1455
    ld	$t0,160($sp)
.L0d99d41c:
    sd	$s0,40($sp)
.L0d99d420:
    ld	$s6,256($sp)
    ld	$s7,240($sp)
    ld	$s1,232($sp)
    ldc1	$f20,224($sp)
    # Line 1480
    ld	$gp,96($sp)
    ld	$s0,72($sp)
    ld	$s2,48($sp)
    ld	$s4,80($sp)
    ld	$s5,56($sp)
    # Line 1479
    ld	$v0,128($sp)
    sw	$v0,30648($s3)
    ld	$ra,248($sp)
    # Line 1480
    ld	$at,88($sp)
    ld	$s3,64($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d99d464:
    ld	$s2,48($sp)
    ld	$s5,56($sp)
    ld	$s3,64($sp)
    ld	$s0,72($sp)
    ld	$s4,80($sp)
    ld	$v1,88($sp)
    ld	$gp,96($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glSep2dReadPixels

# Function: __glGetCurrentSetDefaultPixelXferState
# Declared: Line 1483 (Source lines: 1483-1564)
# Address: 0x0d99d490 - 0x0d99d6ec (Size: 604 bytes, Frame: 32)
.globl __glGetCurrentSetDefaultPixelXferState
.ent __glGetCurrentSetDefaultPixelXferState
__glGetCurrentSetDefaultPixelXferState:
    # Line 1483
    addiu	$sp,$sp,-32
    lui	$at,0xb
    sd	$gp,0($sp)
    addiu	$at,$at,14588
    addu	$gp,$t9,$at
    # Line 1488
    lw	$t9,4($a0)
    li	$a2,4
    li	$a1,38
    # Line 1483
    sd	$s0,16($sp)
    # Line 1488
    nop
    # Line 1483
    sd	$ra,8($sp)
    # Line 1488
    jalr	$t9
    # Line 1483
    move	$s0,$a0
    # Line 1489
    lw	$a2,1792($s0)
    # Line 1514
    lwc1	$f0,_lit_3f800000
    # Line 1489
    lui	$a3,0x3e00
    and	$a2,$a2,$a3
    sw	$a2,0($v0)
    # Line 1495
    lw	$a3,1792($s0)
    # Line 1497
    lw	$a0,1796($s0)
    # Line 1495
    nor	$a4,$a2,$zero
    # Line 1518
    mtc1	$zero,$f1
    # Line 1495
    and	$a3,$a3,$a4
    sw	$a3,1792($s0)
    # Line 1488
    move	$a1,$v0
    # Line 1497
    andi	$a0,$a0,0x4007
    sw	$a0,4($v0)
    # Line 1551
    mtc1	$zero,$f13
    # Line 1526
    li	$t1,0x8421
    # Line 1503
    lw	$a3,1796($s0)
    # Line 1527
    li	$a7,16
    li	$t0,5
    # Line 1505
    lbu	$v1,30645($s0)
    # Line 1547
    lwc1	$f12,_lit_3f800000
    # Line 1527
    move	$a6,$zero
    # Line 1503
    nor	$a5,$a0,$zero
    # Line 1505
    addiu	$a4,$v0,12
    # Line 1503
    and	$a3,$a3,$a5
    sw	$a3,1796($s0)
    # Line 1502
    or	$a0,$a0,$a2
    # Line 1505
    beqz	$v1,.L0d99d5a4
    sw	$v1,8($v0)
    # Line 1506
    lwc1	$f9,712($s0)
    swc1	$f9,12($v0)
    # Line 1507
    lwc1	$f8,716($s0)
    swc1	$f8,16($v0)
    # Line 1508
    lwc1	$f7,720($s0)
    swc1	$f7,20($v0)
    # Line 1509
    lwc1	$f6,724($s0)
    swc1	$f6,24($v0)
    # Line 1510
    lwc1	$f5,728($s0)
    swc1	$f5,28($v0)
    # Line 1511
    lwc1	$f4,732($s0)
    swc1	$f4,32($v0)
    # Line 1512
    lwc1	$f3,736($s0)
    swc1	$f3,36($v0)
    # Line 1513
    lwc1	$f2,740($s0)
    swc1	$f2,40($v0)
    # Line 1522
    sb	$zero,30645($s0)
    # Line 1521
    swc1	$f1,740($s0)
    # Line 1520
    swc1	$f1,736($s0)
    # Line 1519
    swc1	$f1,732($s0)
    # Line 1518
    swc1	$f1,728($s0)
    # Line 1517
    swc1	$f0,724($s0)
    # Line 1516
    swc1	$f0,720($s0)
    # Line 1515
    swc1	$f0,716($s0)
    # Line 1523
    ori	$a0,$a0,0x1
    # Line 1513
    addiu	$a4,$v0,44
    # Line 1514
    swc1	$f0,712($s0)
.L0d99d5a4:
    # Line 1525
    lw	$a5,30636($s0)
    # Line 1526
    addiu	$a4,$a4,4
    # Line 1527
    mtc1	$zero,$f5
    lwc1	$f4,_lit_3f800000
    # Line 1526
    beq	$a5,$t1,.L0d99d614
    # Line 1525
    sw	$a5,-4($a4)
    # Line 1527
    lw	$a5,29688($s0)
.L0d99d5c0:
    # Line 1530
    ld	$t9,-22172($gp)
    multu	$a6,$t9
    mfhi	$t3
    subu	$t8,$a6,$t3
    srl	$t8,$t8,0x1
    addu	$t3,$t3,$t8
    srl	$t3,$t3,0x2
    mult	$t3,$t0
    mflo	$t2
    mov.s	$f10,$f4
    # Line 1529
    lwc1	$f11,0($a5)
    # Line 1530
    subu	$t2,$a6,$t2
    # Line 1528
    addiu	$a6,$a6,1
    # Line 1530
    addiu	$a5,$a5,4
    movn.s	$f10,$f5,$t2
    # Line 1529
    swc1	$f11,0($a4)
    addiu	$a4,$a4,4
    # Line 1528
    bne	$a7,$a6,.L0d99d5c0
    # Line 1530
    swc1	$f10,-4($a5)
    # Line 1533
    ori	$a0,$a0,0x1
    # Line 1532
    sw	$t1,30636($s0)
.L0d99d614:
    # Line 1535
    lbu	$ra,30524($s0)
    beqz	$ra,.L0d99d698
    sw	$ra,0($a4)
    # Line 1536
    lbu	$at,760($s0)
    # Line 1556
    ori	$a0,$a0,0x1
    # Line 1536
    beqz	$at,.L0d99d634
    sw	$at,4($a4)
    # Line 1537
    sb	$zero,760($s0)
.L0d99d634:
    # Line 1539
    lwc1	$f23,640($s0)
    swc1	$f23,8($a4)
    # Line 1540
    lwc1	$f21,644($s0)
    swc1	$f21,12($a4)
    # Line 1541
    lwc1	$f19,648($s0)
    swc1	$f19,16($a4)
    # Line 1542
    lwc1	$f18,652($s0)
    swc1	$f18,20($a4)
    # Line 1543
    lwc1	$f17,660($s0)
    swc1	$f17,24($a4)
    # Line 1544
    lwc1	$f16,664($s0)
    swc1	$f16,28($a4)
    # Line 1545
    lwc1	$f15,668($s0)
    swc1	$f15,32($a4)
    # Line 1546
    lwc1	$f14,672($s0)
    swc1	$f14,36($a4)
    # Line 1555
    sb	$zero,30524($s0)
    # Line 1554
    swc1	$f13,672($s0)
    # Line 1553
    swc1	$f13,668($s0)
    # Line 1552
    swc1	$f13,664($s0)
    # Line 1551
    swc1	$f13,660($s0)
    # Line 1550
    swc1	$f12,652($s0)
    # Line 1549
    swc1	$f12,648($s0)
    # Line 1548
    swc1	$f12,644($s0)
    # Line 1547
    swc1	$f12,640($s0)
.L0d99d698:
    # Line 1556
    beqz	$a0,.L0d99d6c8
    # Line 1559
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($s0)
    # Line 1564
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    # Line 1559
    ori	$v0,$v0,0x10
    sw	$v0,11756($s0)
    # Line 1564
    move	$v0,$a1
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d99d6c8:
    # Line 1561
    lw	$t9,12($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1564
    ld	$ra,8($sp)
    # Line 1562
    move	$v0,$zero
    # Line 1564
    ld	$gp,0($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glGetCurrentSetDefaultPixelXferState

# Function: __glRestoreCurrentPixelXferState
# Declared: Line 1567 (Source lines: 1567-1607)
# Address: 0x0d99d6f0 - 0x0d99d850 (Size: 352 bytes, Frame: 16)
.globl __glRestoreCurrentPixelXferState
.ent __glRestoreCurrentPixelXferState
__glRestoreCurrentPixelXferState:
    # Line 1567
    addiu	$sp,$sp,-16
    lui	$at,0xb
    sd	$ra,8($sp)
    addiu	$at,$at,13980
    sd	$gp,0($sp)
    beqz	$a1,.L0d99d840
    addu	$gp,$t9,$at
    # Line 1574
    lw	$a4,1792($a0)
    lw	$a3,0($a1)
    # Line 1575
    lw	$a2,1796($a0)
    # Line 1574
    or	$a3,$a3,$a4
    sw	$a3,1792($a0)
    # Line 1575
    lw	$v1,4($a1)
    or	$v1,$v1,$a2
    sw	$v1,1796($a0)
    # Line 1577
    lbu	$v0,11($a1)
    # Line 1588
    li	$a6,0x8421
    # Line 1577
    addiu	$a3,$a1,12
    # Line 1589
    move	$a4,$zero
    # Line 1577
    beqz	$v0,.L0d99d788
    sb	$v0,30645($a0)
    # Line 1578
    lwc1	$f7,12($a1)
    swc1	$f7,712($a0)
    # Line 1579
    lwc1	$f6,16($a1)
    swc1	$f6,716($a0)
    # Line 1580
    lwc1	$f5,20($a1)
    swc1	$f5,720($a0)
    # Line 1581
    lwc1	$f4,24($a1)
    swc1	$f4,724($a0)
    # Line 1582
    lwc1	$f3,28($a1)
    swc1	$f3,728($a0)
    # Line 1583
    lwc1	$f2,32($a1)
    swc1	$f2,732($a0)
    # Line 1584
    lwc1	$f1,36($a1)
    swc1	$f1,736($a0)
    # Line 1585
    lwc1	$f0,40($a1)
    addiu	$a3,$a1,44
    swc1	$f0,740($a0)
.L0d99d788:
    # Line 1587
    lw	$a7,0($a3)
    sw	$a7,30636($a0)
    # Line 1588
    lw	$a5,0($a3)
    beq	$a5,$a6,.L0d99d7d0
    addiu	$a3,$a3,4
    # Line 1589
    li	$a6,16
    lw	$a5,29688($a0)
    nop
    nop
    nop
.L0d99d7b0:
    # Line 1591
    lwc1	$f9,0($a3)
    swc1	$f9,0($a5)
    # Line 1590
    addiu	$a4,$a4,2
    # Line 1591
    lwc1	$f8,4($a3)
    addiu	$a5,$a5,8
    addiu	$a3,$a3,8
    # Line 1590
    bne	$a6,$a4,.L0d99d7b0
    # Line 1591
    swc1	$f8,-4($a5)
.L0d99d7d0:
    # Line 1594
    lbu	$t0,3($a3)
    beqz	$t0,.L0d99d824
    sb	$t0,30524($a0)
    # Line 1595
    lw	$t1,4($a3)
    sb	$t1,760($a0)
    # Line 1596
    lwc1	$f17,8($a3)
    swc1	$f17,640($a0)
    # Line 1597
    lwc1	$f16,12($a3)
    swc1	$f16,644($a0)
    # Line 1598
    lwc1	$f15,16($a3)
    swc1	$f15,648($a0)
    # Line 1599
    lwc1	$f14,20($a3)
    swc1	$f14,652($a0)
    # Line 1600
    lwc1	$f13,24($a3)
    swc1	$f13,660($a0)
    # Line 1601
    lwc1	$f12,28($a3)
    swc1	$f12,664($a0)
    # Line 1602
    lwc1	$f11,32($a3)
    swc1	$f11,668($a0)
    # Line 1603
    lwc1	$f10,36($a3)
    swc1	$f10,672($a0)
.L0d99d824:
    # Line 1605
    li	$t3,2
    sw	$t3,4120($zero)
    # Line 1606
    lw	$t9,12($a0)
    # Line 1605
    lw	$t2,11756($a0)
    ori	$t2,$t2,0x10
    # Line 1606
    jalr	$t9
    # Line 1605
    sw	$t2,11756($a0)
.L0d99d840:
    ld	$ra,8($sp)
    # Line 1607
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glRestoreCurrentPixelXferState

# Function: __glConv2dCopyPixels
# Declared: Line 1614 (Source lines: 1615-1772)
# Address: 0x0d99d850 - 0x0d99dfd0 (Size: 1920 bytes, Frame: 0)
.globl __glConv2dCopyPixels
.ent __glConv2dCopyPixels
__glConv2dCopyPixels:
    # Line 1615
    lui	$at,0x1
    ori	$at,$at,0x9160
    # Line 1634
    lw	$v1,436($a1)
    # Line 1615
    subu	$sp,$sp,$at
    move	$a2,$s8
    sd	$a2,232($sp)
    sd	$s0,200($sp)
    sd	$ra,208($sp)
    sd	$s2,216($sp)
    sd	$gp,240($sp)
    sd	$s6,224($sp)
    sd	$s1,248($sp)
    lui	$v0,0xb
    addu	$s8,$sp,$at
    # Line 1634
    lbu	$at,224($a1)
    # Line 1615
    addiu	$v0,$v0,13628
    # Line 1634
    sd	$v1,272($sp)
    # Line 1615
    move	$s1,$a1
    move	$s6,$a0
    # Line 1624
    lw	$v1,30648($a0)
    # Line 1615
    addu	$gp,$t9,$v0
    # Line 1634
    beqz	$at,.L0d99dbd4
    # Line 1624
    sd	$v1,304($sp)
    # Line 1646
    lw	$s0,172($a1)
    # Line 1650
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 1645
    lw	$s2,168($a1)
    # Line 1647
    lw	$a0,80($a1)
    # Line 1650
    jal	__glElementsPerGroup
    # Line 1647
    sd	$a0,176($sp)
    # Line 1650
    mult	$s2,$s0
    mflo	$a2
    nop
    nop
    mult	$v0,$a2
    lw	$t9,0($s6)
    move	$a0,$s6
    sd	$s3,168($sp)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0d99dfbc
    move	$s3,$v0
    # Line 1658
    lw	$a5,3660($s6)
    mtc1	$a5,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f0,188($s1)
    lw	$a4,3664($s6)
    sub.s	$f0,$f0,$f1
    lbu	$a3,4848($s6)
    mtc1	$a4,$f5
    trunc.w.s	$f0,$f0
    lwc1	$f4,192($s1)
    cvt.s.w	$f5,$f5
    beqz	$a3,.L0d99dfa8
    mfc1	$a0,$f0
    # Line 1660
    lw	$a6,3704($s6)
    mtc1	$a6,$f2
    sub.s	$f3,$f5,$f4
    lwc1	$f6,_lit_bf800000
    cvt.s.w	$f2,$f2
    add.s	$f3,$f3,$f6
    add.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    ld	$s1,176($sp)
    mfc1	$a1,$f2
.L0d99d954:
    # Line 1665
    lw	$t8,1184($s6)
    sw	$zero,1184($s6)
    ld	$t3,1176($s6)
    sd	$zero,1176($s6)
    ld	$t2,1168($s6)
    sd	$zero,1168($s6)
    ld	$a7,1152($s6)
    sd	$zero,1152($s6)
    ld	$t9,1144($s6)
    sd	$zero,1144($s6)
    ld	$t1,1160($s6)
    sd	$zero,1160($s6)
    # Line 1667
    li	$ra,4
    sw	$ra,1160($s6)
    # Line 1665
    addiu	$t0,$sp,8
    sd	$t9,8($sp)
    sw	$t8,40($t0)
    sd	$t3,32($t0)
    # Line 1669
    # lw $t9, -28408($gp) # &__glim_ReadPixels
    move	$a6,$s3
    li	$a5,5126
    # Line 1665
    sd	$t2,24($t0)
    # Line 1669
    move	$a4,$s1
    move	$a3,$s0
    # Line 1665
    sd	$t1,16($t0)
    # Line 1669
    move	$a2,$s2
    bal __glim_ReadPixels
    # Line 1665
    sd	$a7,8($t0)
    # Line 1671
    ld	$a3,8($sp)
    sd	$a3,1144($s6)
    addiu	$at,$sp,8
    lw	$a2,40($at)
    sw	$a2,1184($s6)
    ld	$a1,32($at)
    sd	$a1,1176($s6)
    ld	$a0,24($at)
    sd	$a0,1168($s6)
    # Line 1673
    lw	$v0,1792($s6)
    # Line 1671
    ld	$v1,16($at)
    sd	$v1,1160($s6)
    # Line 1673
    dsll32	$v1,$v0,0x2
    # Line 1671
    ld	$at,8($at)
    # Line 1673
    bgez	$v1,.L0d99da18
    # Line 1671
    sd	$at,1152($s6)
    # Line 1673
    lbu	$a4,1364($s6)
    beqz	$a4,.L0d99da1c
    dsll32	$a6,$v0,0x3
    lbu	$a5,1376($s6)
    bnez	$a5,.L0d99da3c
.L0d99da18:
    dsll32	$a6,$v0,0x3
.L0d99da1c:
    bgez	$a6,.L0d99da7c
    # Line 1682
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
    # Line 1673
    lw	$a7,1248($s6)
    beqz	$a7,.L0d99da7c
    # Line 1682
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
    # Line 1673
    lbu	$t0,1280($s6)
    beqz	$t0,.L0d99da7c
    # Line 1682
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
.L0d99da3c:
    # Line 1679
    lw	$t9,12($s6)
    move	$a0,$s6
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a1,$s3
    ld	$s0,200($sp)
.L0d99da50:
    ld	$s2,216($sp)
    ld	$s3,168($sp)
    # Line 1772
    ld	$gp,240($sp)
    ld	$s1,248($sp)
    ld	$ra,208($sp)
    ld	$t1,232($sp)
    ld	$s6,224($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
    # Line 1682
    # lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
.L0d99da7c:
    bal __glGetCurrentSetDefaultPixelXferState
    move	$a0,$s6
    # Line 1684
    addiu	$a0,$sp,56
    addiu	$a6,$s6,1188
    sd	$v0,320($sp)
    lw	$t2,1188($s6)
    lw	$a7,1228($s6)
    lw	$a5,1224($s6)
    lw	$a4,1220($s6)
    lw	$a3,1216($s6)
    lw	$v1,1212($s6)
    lw	$at,1208($s6)
    lw	$ra,1204($s6)
    lw	$t9,1200($s6)
    lw	$t8,1196($s6)
    lw	$t3,1192($s6)
    sw	$t3,4($a0)
    sw	$t8,8($a0)
    sw	$t9,12($a0)
    sw	$ra,16($a0)
    sw	$at,20($a0)
    sw	$v1,24($a0)
    sw	$a3,28($a0)
    sw	$a4,32($a0)
    sw	$a5,36($a0)
    sw	$a7,40($a0)
    li	$t0,4
    sw	$t2,56($sp)
    # Line 1691
    # lw $t9, -28412($gp) # &__glim_DrawPixels
    # Line 1687
    sw	$t0,1204($s6)
    # Line 1686
    sw	$s2,1192($s6)
    # Line 1684
    sw	$zero,1228($s6)
    sw	$zero,1224($s6)
    sw	$zero,1220($s6)
    sw	$zero,1216($s6)
    sw	$zero,1212($s6)
    sw	$zero,1208($s6)
    sw	$zero,1200($s6)
    sw	$zero,1196($s6)
    # Line 1690
    ld	$a0,272($sp)
    # Line 1684
    sw	$zero,1188($s6)
    # Line 1690
    lw	$a1,68($a0)
    # Line 1691
    move	$a4,$s3
    li	$a3,5126
    # Line 1689
    lw	$a0,64($a0)
    # Line 1691
    move	$a2,$s1
    # Line 1690
    subu	$a1,$s0,$a1
    # Line 1689
    subu	$a0,$s2,$a0
    # Line 1690
    addiu	$a1,$a1,1
    # Line 1691
    bal __glim_DrawPixels
    # Line 1689
    addiu	$a0,$a0,1
    # Line 1693
    addiu	$a0,$s6,1188
    addiu	$a2,$sp,56
    ld	$v0,320($sp)
    lw	$a1,32($a2)
    lw	$a5,36($a2)
    lw	$a6,40($a2)
    lw	$a7,28($a2)
    lw	$t0,24($a2)
    lw	$t1,20($a2)
    lw	$t2,16($a2)
    lw	$t3,12($a2)
    lw	$t8,8($a2)
    lw	$t9,4($a2)
    lw	$ra,56($sp)
    sw	$ra,1188($s6)
    sw	$t9,1192($s6)
    sw	$t8,1196($s6)
    sw	$t3,1200($s6)
    sw	$t2,1204($s6)
    sw	$t1,1208($s6)
    sw	$t0,1212($s6)
    sw	$a7,1216($s6)
    sw	$a6,1228($s6)
    sw	$a5,1224($s6)
    sw	$a1,1220($s6)
    # Line 1694
    # lw $t9, -28260($gp) # &__glRestoreCurrentPixelXferState
    move	$a0,$s6
    bal __glRestoreCurrentPixelXferState
    move	$a1,$v0
    # Line 1697
    lw	$t9,12($s6)
    move	$a0,$s6
    jal	__glRestoreCurrentPixelXferState
    move	$a1,$s3
    b	.L0d99da50
    ld	$s0,200($sp)
.L0d99dbd4:
    # Line 1702
    ld	$v0,272($sp)
    lw	$a0,64($v0)
    lw	$v1,12($v0)
    mult	$v1,$a0
    sdc1	$f22,136($sp)
    sdc1	$f26,128($sp)
    # Line 1704
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 1701
    lw	$v0,68($v0)
    # Line 1703
    addiu	$at,$s8,-4112
    sw	$at,312($s1)
    # Line 1702
    mflo	$s0
    # Line 1701
    sd	$v0,312($sp)
    # Line 1704
    jal	__glComputeSpanPixelArray
    move	$a0,$s6
    # Line 1712
    lwc1	$f22,200($s1)
    # Line 1710
    lwc1	$f26,164($s1)
    # Line 1709
    lw	$v0,4852($s6)
    sdc1	$f24,112($sp)
    sdc1	$f20,120($sp)
    sd	$s4,160($sp)
    sd	$s3,168($sp)
    sd	$s7,144($sp)
    sd	$s5,152($sp)
    # Line 1713
    ld	$a2,312($sp)
    lw	$a1,172($s1)
    # Line 1707
    lw	$a3,412($s1)
    sd	$a3,256($sp)
    # Line 1713
    subu	$a1,$a1,$a2
    # Line 1706
    lw	$a2,356($s1)
    # Line 1713
    addiu	$a1,$a1,1
    sd	$a1,264($sp)
    blez	$a1,.L0d99df58
    sd	$a2,296($sp)
    sd	$zero,192($sp)
    sll	$s3,$s0,0x2
    sd	$s3,288($sp)
    lw	$s3,104($sp)
    lwc1	$f4,192($s1)
    mtc1	$v0,$f20
    trunc.w.s	$f21,$f22
    move	$s5,$zero
    sdc1	$f24,112($sp)
    lui	$s2,0xffff
    li	$s4,1
    sd	$s7,144($sp)
    addu	$s2,$s2,$s8
    mfc1	$a3,$f21
    addiu	$s2,$s2,-4112
    sd	$a3,280($sp)
    b	.L0d99dcc8
    cvt.s.w	$f20,$f20
.L0d99dca0:
    # Line 1764
    lwc1	$f4,192($s1)
    ld	$v0,192($sp)
.L0d99dca8:
    # Line 1716
    ld	$t8,264($sp)
.L0d99dcac:
    addiu	$v0,$v0,1
    sd	$v0,192($sp)
    slt	$t8,$v0,$t8
    # Line 1768
    swc1	$f22,200($s1)
    # Line 1767
    add.s	$f4,$f4,$f20
    # Line 1716
    beqz	$t8,.L0d99df58
    # Line 1767
    swc1	$f4,192($s1)
.L0d99dcc8:
    # Line 1718
    ld	$ra,312($sp)
    ld	$t9,272($sp)
    lw	$t9,80($t9)
    # Line 1717
    mov.s	$f24,$f4
    # Line 1718
    blez	$ra,.L0d99ddfc
    sw	$t9,256($s1)
    sll	$s7,$s4,0xf
    sd	$zero,184($sp)
    b	.L0d99dd54
    addu	$s7,$s2,$s7
    nop
    nop
    nop
    # Line 1733
    sll	$t9,$s3,0x2
.L0d99dd00:
    addu	$t9,$s1,$t9
    move	$a0,$s6
    lw	$t9,360($t9)
    move	$a1,$s1
    lui	$a3,0xfffe
    move	$a2,$s7
    addu	$a3,$a3,$s8
    ld	$s0,184($sp)
    jalr	$t9
    addiu	$a3,$a3,28656
    # Line 1737
    ld	$a6,288($sp)
    lw	$a5,256($s1)
    # Line 1736
    lwc1	$f23,192($s1)
    # Line 1719
    ld	$a4,312($sp)
    addiu	$s0,$s0,1
    sd	$s0,184($sp)
    # Line 1737
    addu	$a5,$a5,$a6
    sw	$a5,256($s1)
    # Line 1736
    add.s	$f23,$f23,$f20
    # Line 1719
    beq	$a4,$s0,.L0d99ddf8
    # Line 1736
    swc1	$f23,192($s1)
.L0d99dd54:
    # Line 1720
    ld	$t9,296($sp)
    move	$a0,$s6
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s7
    # Line 1723
    ld	$t0,304($sp)
    sw	$t0,30648($s6)
    # Line 1725
    lw	$a7,260($s1)
    move	$s0,$s1
    blez	$a7,.L0d99ddc4
    move	$s3,$zero
.L0d99dd80:
    # Line 1727
    move	$a1,$s1
    # Line 1726
    move	$s7,$s5
    move	$s5,$s4
    # Line 1727
    move	$a0,$s6
    sll	$a2,$s5,0xf
    lw	$t9,360($s0)
    # Line 1726
    move	$s4,$s7
    # Line 1727
    sll	$s7,$s7,0xf
    addu	$a2,$s2,$a2
    addu	$s7,$s2,$s7
    jalr	$t9
    move	$a3,$s7
    # Line 1725
    lw	$t8,260($s1)
    addiu	$s3,$s3,1
    slt	$t8,$s3,$t8
    bnez	$t8,.L0d99dd80
    addiu	$s0,$s0,4
.L0d99ddc4:
    ld	$t9,184($sp)
    bnez	$t9,.L0d99dd00
    # Line 1733
    sll	$t9,$s3,0x2
    # Line 1732
    move	$a0,$s6
    lw	$t9,416($s1)
    move	$a1,$s1
    lui	$a3,0xfffe
    move	$a2,$s7
    addu	$a3,$a3,$s8
    jalr	$t9
    addiu	$a3,$a3,28656
    b	.L0d99dd00
    # Line 1733
    sll	$t9,$s3,0x2
.L0d99ddf8:
    # Line 1719
    addiu	$s3,$s3,1
.L0d99ddfc:
    # Line 1739
    lw	$v0,264($s1)
    slt	$a4,$v0,$s3
    bne	$zero,$a4,.L0d99de90
    swc1	$f24,192($s1)
    # Line 1742
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$s1,$t9
    move	$a1,$s1
    move	$a0,$s6
    lw	$t9,356($t9)
    sll	$a3,$s4,0xf
    lui	$a2,0xfffe
    addu	$a3,$s2,$a3
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    lw	$v0,264($s1)
    slt	$ra,$v0,$s3
    bne	$zero,$ra,.L0d99de90
    sll	$s0,$s3,0x2
    addu	$s0,$s1,$s0
.L0d99de50:
    # Line 1748
    move	$a0,$s6
    move	$a1,$s1
    # Line 1747
    move	$a3,$s5
    move	$s5,$s4
    # Line 1748
    lw	$t9,360($s0)
    # Line 1747
    move	$s4,$a3
    # Line 1748
    sll	$a3,$a3,0xf
    sll	$a2,$s5,0xf
    addu	$a3,$s2,$a3
    jalr	$t9
    addu	$a2,$s2,$a2
    # Line 1746
    lw	$v0,264($s1)
    addiu	$s3,$s3,1
    slt	$a4,$v0,$s3
    beqz	$a4,.L0d99de50
    addiu	$s0,$s0,4
.L0d99de90:
    lw	$a5,260($s1)
    bne	$a5,$v0,.L0d99dec0
    # Line 1756
    ld	$t9,256($sp)
    # Line 1754
    ld	$t9,256($sp)
    move	$a0,$s6
    lui	$a2,0xfffe
    move	$a1,$s1
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,28656
    b	.L0d99ded4
    nop
.L0d99dec0:
    # Line 1756
    move	$a0,$s6
    move	$a1,$s1
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$s2,$a2
.L0d99ded4:
    # Line 1759
    add.s	$f22,$f26,$f22
    # Line 1758
    ld	$a3,280($sp)
    # Line 1760
    trunc.w.s	$f25,$f22
    # Line 1758
    move	$a0,$a3
    # Line 1760
    mfc1	$a3,$f25
    bne	$a3,$a0,.L0d99dca0
    sd	$a3,280($sp)
    lw	$a1,172($s1)
    ld	$a4,192($sp)
    slt	$a4,$a4,$a1
    beqz	$a4,.L0d99df4c
    nop
    lwc1	$f4,192($s1)
    b	.L0d99df1c
    ld	$v0,192($sp)
.L0d99df10:
    # Line 1764
    slt	$a5,$v0,$a1
    beqz	$a5,.L0d99dcac
    # Line 1716
    ld	$t8,264($sp)
.L0d99df1c:
    # Line 1762
    swc1	$f22,200($s1)
    # Line 1763
    add.s	$f22,$f26,$f22
    # Line 1764
    trunc.w.s	$f27,$f22
    mfc1	$a6,$f27
    # Line 1761
    add.s	$f4,$f4,$f20
    swc1	$f4,192($s1)
    # Line 1764
    addiu	$v0,$v0,1
    beq	$a6,$a0,.L0d99df10
    sd	$a6,280($sp)
    sd	$v0,192($sp)
    b	.L0d99dca8
    ld	$v0,192($sp)
.L0d99df4c:
    lwc1	$f4,192($s1)
    b	.L0d99dca8
    ld	$v0,192($sp)
.L0d99df58:
    # Line 1772
    ld	$gp,240($sp)
    ld	$s0,200($sp)
    ld	$s1,248($sp)
    ld	$s2,216($sp)
    ld	$s3,168($sp)
    ld	$s4,160($sp)
    ld	$s5,152($sp)
    ld	$s7,144($sp)
    ldc1	$f20,120($sp)
    ldc1	$f22,136($sp)
    ldc1	$f24,112($sp)
    ldc1	$f26,128($sp)
    # Line 1771
    ld	$t0,304($sp)
    sw	$t0,30648($s6)
    # Line 1772
    ld	$ra,208($sp)
    ld	$a7,232($sp)
    ld	$s6,224($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a7
.L0d99dfa8:
    # Line 1663
    sub.s	$f29,$f4,$f5
    trunc.w.s	$f29,$f29
    ld	$s1,176($sp)
    b	.L0d99d954
    mfc1	$a1,$f29
.L0d99dfbc:
    # Line 1654
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d99da50
    ld	$s0,200($sp)
.end __glConv2dCopyPixels

# Function: __glSep2dCopyPixels
# Declared: Line 1780 (Source lines: 1781-1962)
# Address: 0x0d99dfd0 - 0x0d99e8bc (Size: 2284 bytes, Frame: 0)
.globl __glSep2dCopyPixels
.ent __glSep2dCopyPixels
__glSep2dCopyPixels:
    # Line 1781
    lui	$at,0x1
    ori	$at,$at,0x11a0
    # Line 1789
    lw	$v1,30648($a0)
    # Line 1781
    subu	$sp,$sp,$at
    sd	$s2,184($sp)
    sd	$s1,176($sp)
    # Line 1800
    lw	$s1,172($a1)
    # Line 1781
    sd	$s0,208($sp)
    # Line 1799
    lw	$s0,436($a1)
    # Line 1781
    sd	$s5,192($sp)
    move	$v0,$s8
    # Line 1800
    lw	$s5,68($s0)
    # Line 1781
    move	$s2,$a1
    sd	$s3,200($sp)
    addu	$s8,$sp,$at
    lui	$at,0xb
    sd	$v0,224($sp)
    # Line 1800
    slt	$v0,$s1,$s5
    # Line 1781
    move	$s3,$a0
    # Line 1789
    sd	$v1,264($sp)
    # Line 1781
    addiu	$at,$at,11708
    sd	$gp,216($sp)
    # Line 1800
    bnez	$v0,.L0d99e1f4
    # Line 1781
    addu	$gp,$t9,$at
    # Line 1814
    lbu	$v1,224($a1)
    bnez	$v1,.L0d99e054
    sd	$ra,368($sp)
    lw	$a0,4852($a0)
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,164($a1)
    c.eq.s	$f0,$f1
    bc1t	.L0d99e378
.L0d99e054:
    # Line 1828
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 1823
    lw	$s5,168($s2)
    # Line 1825
    lw	$a0,80($s2)
    # Line 1828
    jal	__glElementsPerGroup
    # Line 1825
    sd	$a0,136($sp)
    # Line 1828
    mult	$s1,$s5
    mflo	$a2
    nop
    nop
    mult	$v0,$a2
    lw	$t9,0($s3)
    move	$a0,$s3
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    beqz	$v0,.L0d99e890
    # Line 1832
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1836
    lw	$a5,3660($s3)
    mtc1	$a5,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f1,188($s2)
    lw	$a4,3664($s3)
    sub.s	$f1,$f1,$f2
    lbu	$a3,4848($s3)
    mtc1	$a4,$f5
    trunc.w.s	$f1,$f1
    lwc1	$f4,192($s2)
    sd	$v0,128($sp)
    cvt.s.w	$f5,$f5
    beqz	$a3,.L0d99e87c
    mfc1	$a0,$f1
    # Line 1838
    lw	$a6,3704($s3)
    mtc1	$a6,$f3
    sub.s	$f6,$f5,$f4
    lwc1	$f7,_lit_bf800000
    cvt.s.w	$f3,$f3
    add.s	$f6,$f6,$f7
    add.s	$f3,$f3,$f6
    trunc.w.s	$f3,$f3
    ld	$s2,136($sp)
    mfc1	$a1,$f3
.L0d99e0f8:
    # Line 1843
    lw	$t8,1184($s3)
    sw	$zero,1184($s3)
    ld	$t3,1176($s3)
    sd	$zero,1176($s3)
    ld	$t2,1168($s3)
    sd	$zero,1168($s3)
    ld	$a7,1152($s3)
    sd	$zero,1152($s3)
    ld	$t9,1144($s3)
    sd	$zero,1144($s3)
    # Line 1847
    ld	$a6,128($sp)
    # Line 1843
    ld	$t1,1160($s3)
    sd	$zero,1160($s3)
    # Line 1845
    li	$ra,4
    sw	$ra,1160($s3)
    # Line 1843
    addiu	$t0,$sp,16
    sd	$t9,16($sp)
    sw	$t8,40($t0)
    sd	$t3,32($t0)
    # Line 1847
    # lw $t9, -28408($gp) # &__glim_ReadPixels
    li	$a5,5126
    # Line 1843
    sd	$t2,24($t0)
    # Line 1847
    move	$a4,$s2
    move	$a3,$s1
    # Line 1843
    sd	$t1,16($t0)
    # Line 1847
    move	$a2,$s5
    bal __glim_ReadPixels
    # Line 1843
    sd	$a7,8($t0)
    # Line 1849
    ld	$a2,16($sp)
    sd	$a2,1144($s3)
    addiu	$at,$sp,16
    lw	$a1,40($at)
    sw	$a1,1184($s3)
    ld	$a0,32($at)
    sd	$a0,1176($s3)
    ld	$v1,24($at)
    sd	$v1,1168($s3)
    # Line 1851
    lw	$a0,1792($s3)
    # Line 1849
    ld	$v0,16($at)
    sd	$v0,1160($s3)
    # Line 1851
    dsll32	$v0,$a0,0x2
    # Line 1849
    ld	$at,8($at)
    # Line 1851
    bgez	$v0,.L0d99e1bc
    # Line 1849
    sd	$at,1152($s3)
    # Line 1851
    lbu	$a3,1364($s3)
    beqz	$a3,.L0d99e1c0
    dsll32	$a5,$a0,0x3
    lbu	$a4,1376($s3)
    bnez	$a4,.L0d99e1e0
.L0d99e1bc:
    dsll32	$a5,$a0,0x3
.L0d99e1c0:
    bgez	$a5,.L0d99e220
    # Line 1860
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
    # Line 1851
    lw	$a6,1248($s3)
    beqz	$a6,.L0d99e220
    # Line 1860
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
    # Line 1851
    lbu	$a7,1280($s3)
    beqz	$a7,.L0d99e220
    # Line 1860
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
.L0d99e1e0:
    # Line 1857
    lw	$t9,12($s3)
    move	$a0,$s3
    jal	__glGetCurrentSetDefaultPixelXferState
    ld	$a1,128($sp)
    ld	$ra,368($sp)
.L0d99e1f4:
    ld	$s1,176($sp)
    ld	$s2,184($sp)
    ld	$s5,192($sp)
    ld	$s3,200($sp)
    ld	$s0,208($sp)
    # Line 1876
    ld	$t0,224($sp)
    ld	$gp,216($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t0
    # Line 1860
    # lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
.L0d99e220:
    bal __glGetCurrentSetDefaultPixelXferState
    move	$a0,$s3
    move	$a0,$v0
    # Line 1862
    addiu	$a2,$sp,64
    addiu	$t0,$s3,1188
    sd	$a0,344($sp)
    lw	$t3,1188($s3)
    lw	$a6,1228($s3)
    lw	$a5,1224($s3)
    lw	$a4,1220($s3)
    lw	$a1,1216($s3)
    lw	$v1,1212($s3)
    lw	$v0,1208($s3)
    lw	$at,1204($s3)
    lw	$ra,1200($s3)
    lw	$t9,1196($s3)
    lw	$t8,1192($s3)
    sw	$t8,4($a2)
    sw	$t9,8($a2)
    sw	$ra,12($a2)
    sw	$at,16($a2)
    sw	$v0,20($a2)
    sw	$v1,24($a2)
    sw	$a1,28($a2)
    sw	$a4,32($a2)
    sw	$a5,36($a2)
    sw	$a6,40($a2)
    li	$t2,4
    sw	$t3,64($sp)
    # Line 1869
    # lw $t9, -28412($gp) # &__glim_DrawPixels
    # Line 1865
    sw	$t2,1204($s3)
    # Line 1864
    sw	$s5,1192($s3)
    # Line 1862
    sw	$zero,1228($s3)
    sw	$zero,1224($s3)
    sw	$zero,1220($s3)
    sw	$zero,1216($s3)
    sw	$zero,1212($s3)
    sw	$zero,1208($s3)
    sw	$zero,1200($s3)
    sw	$zero,1196($s3)
    sw	$zero,1188($s3)
    # Line 1868
    lw	$a1,68($s0)
    # Line 1869
    li	$a3,5126
    # Line 1867
    lw	$a0,64($s0)
    # Line 1869
    move	$a2,$s2
    # Line 1868
    subu	$a1,$s1,$a1
    # Line 1867
    subu	$a0,$s5,$a0
    # Line 1868
    addiu	$a1,$a1,1
    # Line 1869
    ld	$a4,128($sp)
    bal __glim_DrawPixels
    # Line 1867
    addiu	$a0,$a0,1
    # Line 1871
    addiu	$a0,$s3,1188
    addiu	$a3,$sp,64
    ld	$a2,344($sp)
    lw	$a4,32($a3)
    lw	$a5,36($a3)
    lw	$a6,40($a3)
    lw	$a7,28($a3)
    lw	$t2,24($a3)
    lw	$t3,20($a3)
    lw	$t8,16($a3)
    lw	$t9,12($a3)
    lw	$ra,8($a3)
    lw	$at,4($a3)
    lw	$v0,64($sp)
    sw	$v0,1188($s3)
    sw	$at,1192($s3)
    sw	$ra,1196($s3)
    sw	$t9,1200($s3)
    sw	$t8,1204($s3)
    sw	$t3,1208($s3)
    sw	$t2,1212($s3)
    sw	$a7,1216($s3)
    sw	$a6,1228($s3)
    sw	$a5,1224($s3)
    sw	$a4,1220($s3)
    # Line 1872
    # lw $t9, -28260($gp) # &__glRestoreCurrentPixelXferState
    move	$a0,$s3
    bal __glRestoreCurrentPixelXferState
    move	$a1,$a2
    # Line 1875
    lw	$t9,12($s3)
    move	$a0,$s3
    jal	__glRestoreCurrentPixelXferState
    ld	$a1,128($sp)
    b	.L0d99e1f4
    ld	$ra,368($sp)
.L0d99e378:
    # Line 1880
    lw	$a4,64($s0)
    lw	$a3,12($s0)
    mult	$a3,$a4
    sd	$s6,384($sp)
    # Line 1882
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 1879
    lw	$s6,1020($s3)
    # Line 1882
    move	$a0,$s3
    # Line 1881
    addiu	$v1,$s8,-4112
    sw	$v1,312($s2)
    # Line 1880
    mflo	$a2
    # Line 1882
    jal	__glComputeSpanPixelArray
    # Line 1880
    sd	$a2,112($sp)
    sdc1	$f20,336($sp)
    sd	$s4,376($sp)
    sd	$s7,360($sp)
    # Line 1887
    lw	$a0,4852($s3)
    # Line 1890
    addiu	$a6,$s5,-1
    sd	$a6,168($sp)
    # Line 1892
    lw	$a6,80($s0)
    # Line 1884
    lw	$a7,356($s2)
    # Line 1885
    lw	$t0,412($s2)
    sd	$t0,240($sp)
    # Line 1888
    lw	$a5,172($s2)
    # Line 1884
    sd	$a7,256($sp)
    # Line 1892
    sw	$a6,256($s2)
    # Line 1888
    subu	$a5,$a5,$s5
    addiu	$a5,$a5,1
    # Line 1892
    blez	$s5,.L0d99e8a0
    sd	$a5,248($sp)
    sd	$a0,352($sp)
    li	$t9,1
    sd	$t9,312($sp)
    mtc1	$a0,$f20
    lui	$s7,0xffff
    sd	$s6,120($sp)
    li	$s4,0x8000
    addu	$s7,$s7,$s8
    sd	$zero,304($sp)
    sll	$t8,$s5,0xf
    addiu	$s7,$s7,-4112
    addu	$t8,$t8,$s6
    sd	$t8,232($sp)
    addu	$s4,$s4,$s7
    cvt.s.w	$f20,$f20
    nop
    nop
.L0d99e430:
    # Line 1896
    ld	$t9,256($sp)
    move	$a0,$s3
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s4
    # Line 1899
    ld	$at,264($sp)
    sw	$at,30648($s3)
    # Line 1901
    lw	$ra,260($s2)
    move	$s1,$s2
    blez	$ra,.L0d99e4b8
    sd	$zero,144($sp)
    ld	$s4,304($sp)
.L0d99e460:
    # Line 1903
    move	$a1,$s2
    # Line 1902
    ld	$a4,312($sp)
    # Line 1903
    move	$a0,$s3
    # Line 1902
    move	$a3,$s4
    # Line 1903
    lw	$t9,360($s1)
    # Line 1902
    sd	$a3,312($sp)
    # Line 1903
    sll	$a3,$a3,0xf
    # Line 1902
    move	$s4,$a4
    # Line 1903
    addu	$a3,$s7,$a3
    sll	$a2,$s4,0xf
    sd	$a3,288($sp)
    jalr	$t9
    addu	$a2,$s7,$a2
    # Line 1901
    ld	$a5,144($sp)
    lw	$a6,260($s2)
    addiu	$a5,$a5,1
    sd	$a5,144($sp)
    slt	$a5,$a5,$a6
    bnez	$a5,.L0d99e460
    addiu	$s1,$s1,4
    sd	$s4,304($sp)
    ld	$s4,288($sp)
.L0d99e4b8:
    # Line 1907
    lw	$t9,416($s2)
    move	$a0,$s3
    ld	$s1,120($sp)
    move	$a1,$s2
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s1
    # Line 1908
    ld	$t9,144($sp)
    sll	$t9,$t9,0x2
    addu	$t9,$s2,$t9
    lw	$t9,360($t9)
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s1
    # Line 1912
    lwc1	$f21,192($s2)
    # Line 1895
    ld	$ra,232($sp)
    li	$at,0x8000
    addu	$s1,$at,$s1
    sd	$s1,120($sp)
    # Line 1912
    add.s	$f21,$f21,$f20
    # Line 1895
    bne	$s1,$ra,.L0d99e430
    # Line 1912
    swc1	$f21,192($s2)
    # Line 1895
    ld	$v0,144($sp)
    ld	$a0,352($sp)
    addiu	$v0,$v0,1
    sw	$v0,8($sp)
.L0d99e528:
    # Line 1916
    ld	$a1,248($sp)
    lw	$v0,436($s2)
    ld	$v1,112($sp)
    lw	$v0,80($v0)
    sll	$v1,$v1,0x2
    blez	$a1,.L0d99e838
    addu	$v0,$v0,$v1
    sd	$zero,152($sp)
    sd	$zero,160($sp)
    sd	$v0,328($sp)
    ld	$s4,312($sp)
    mtc1	$a0,$f20
    lw	$t8,8($sp)
    sd	$t8,144($sp)
    sd	$s0,320($sp)
    sll	$s4,$s4,0xf
    addu	$s4,$s4,$s7
    cvt.s.w	$f20,$f20
    b	.L0d99e754
    ld	$s0,144($sp)
    nop
    nop
.L0d99e580:
    # Line 1933
    move	$a1,$s2
    # Line 1932
    ld	$a4,312($sp)
    # Line 1933
    move	$a0,$s3
    # Line 1932
    move	$a3,$s4
    # Line 1933
    lw	$t9,360($s1)
    # Line 1932
    sd	$a3,312($sp)
    # Line 1933
    sll	$a3,$a3,0xf
    # Line 1932
    move	$s4,$a4
    # Line 1933
    addu	$a3,$s7,$a3
    sll	$a2,$s4,0xf
    sd	$a3,280($sp)
    jalr	$t9
    addu	$a2,$s7,$a2
    # Line 1931
    lw	$a5,264($s2)
    addiu	$s0,$s0,1
    slt	$a5,$a5,$s0
    beqz	$a5,.L0d99e580
    addiu	$s1,$s1,4
    sd	$s4,304($sp)
    ld	$s4,280($sp)
.L0d99e5d0:
    # Line 1937
    ld	$t9,240($sp)
    move	$a0,$s3
    move	$a1,$s2
    ld	$s0,168($sp)
    jalr	$t9
    move	$a2,$s4
    # Line 1941
    ld	$s1,160($sp)
    mtc1	$s5,$f25
    addiu	$t9,$s1,1
    mtc1	$t9,$f23
    cvt.d.w	$f25,$f25
    cvt.d.w	$f23,$f23
    div.d	$f23,$f23,$f25
    # Line 1942
    addiu	$s0,$s0,1
    mtc1	$s0,$f21
    cvt.d.w	$f21,$f21
    div.d	$f21,$f21,$f25
    # Line 1941
    trunc.w.d	$f23,$f23
    mfc1	$v1,$f23
    mult	$v1,$s5
    # Line 1942
    trunc.w.d	$f21,$f21
    mfc1	$v0,$f21
    # Line 1941
    mflo	$ra
    nop
    nop
    # Line 1942
    mult	$v0,$s5
    teq	$s5,$zero,0x7
    # Line 1941
    teq	$s5,$zero,0x7
    subu	$s1,$t9,$ra
    # Line 1947
    ld	$t9,256($sp)
    move	$a0,$s3
    move	$a1,$s2
    # Line 1945
    ld	$at,264($sp)
    # Line 1947
    move	$a2,$s4
    # Line 1945
    sw	$at,30648($s3)
    # Line 1942
    mflo	$t8
    subu	$s0,$s0,$t8
    # Line 1947
    jalr	$t9
    # Line 1942
    sd	$s0,168($sp)
    # Line 1948
    lw	$a0,260($s2)
    move	$s0,$zero
    blez	$a0,.L0d99e6e4
    sd	$s1,160($sp)
    ld	$s4,312($sp)
    move	$s1,$s2
    nop
    nop
    nop
.L0d99e690:
    # Line 1949
    ld	$a2,304($sp)
    # Line 1950
    move	$a1,$s2
    move	$a0,$s3
    lw	$t9,360($s1)
    # Line 1949
    move	$a3,$a2
    move	$a2,$s4
    sd	$s4,304($sp)
    # Line 1950
    sll	$a2,$a2,0xf
    # Line 1949
    move	$s4,$a3
    # Line 1950
    sll	$a3,$a3,0xf
    addu	$a2,$s7,$a2
    addu	$a3,$s7,$a3
    jalr	$t9
    sd	$a3,296($sp)
    # Line 1948
    lw	$a3,260($s2)
    addiu	$s0,$s0,1
    slt	$a3,$s0,$a3
    bnez	$a3,.L0d99e690
    addiu	$s1,$s1,4
    sd	$s4,312($sp)
    ld	$s4,296($sp)
.L0d99e6e4:
    # Line 1954
    lw	$t9,416($s2)
    ld	$a3,168($sp)
    move	$a2,$s4
    move	$a1,$s2
    move	$a0,$s3
    sll	$a3,$a3,0xf
    addu	$a3,$s6,$a3
    jalr	$t9
    sd	$a3,272($sp)
    # Line 1955
    sll	$t9,$s0,0x2
    addu	$t9,$s2,$t9
    lw	$t9,360($t9)
    ld	$s1,152($sp)
    move	$a0,$s3
    move	$a1,$s2
    move	$a2,$s4
    jalr	$t9
    ld	$a3,272($sp)
    # Line 1960
    lwc1	$f27,200($s2)
    # Line 1959
    lwc1	$f25,192($s2)
    # Line 1918
    ld	$ra,248($sp)
    addiu	$s1,$s1,1
    sd	$s1,152($sp)
    # Line 1960
    add.s	$f27,$f27,$f20
    # Line 1959
    add.s	$f25,$f25,$f20
    # Line 1960
    swc1	$f27,200($s2)
    # Line 1918
    beq	$ra,$s1,.L0d99e834
    # Line 1959
    swc1	$f25,192($s2)
.L0d99e754:
    # Line 1919
    lw	$t9,416($s2)
    ld	$a2,160($sp)
    move	$a0,$s3
    move	$a1,$s2
    move	$a3,$s4
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$s6,$a2
    blez	$s5,.L0d99e818
    nop
    ld	$s7,160($sp)
    move	$s1,$zero
    sd	$s0,144($sp)
    move	$s0,$s7
    addu	$s7,$s5,$s7
.L0d99e790:
    # Line 1921
    mtc1	$s5,$f31
    mtc1	$s0,$f29
    cvt.d.w	$f31,$f31
    cvt.d.w	$f29,$f29
    div.d	$f29,$f29,$f31
    ld	$a7,320($sp)
    lw	$a7,12($a7)
    mult	$a7,$s1
    trunc.w.d	$f29,$f29
    mfc1	$a6,$f29
    mflo	$a5
    nop
    nop
    mult	$a6,$s5
    move	$a0,$s3
    move	$a1,$s2
    move	$a4,$s4
    ld	$a2,328($sp)
    teq	$s5,$zero,0x7
    lw	$t9,420($s2)
    mflo	$a3
    sll	$a5,$a5,0x2
    subu	$a3,$s0,$a3
    addu	$a2,$a2,$a5
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$s6,$a3
    # Line 1920
    addiu	$s0,$s0,1
    bne	$s0,$s7,.L0d99e790
    addiu	$s1,$s1,1
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    ld	$s0,144($sp)
    addiu	$s7,$s7,-4112
.L0d99e818:
    lw	$t8,264($s2)
    slt	$t8,$t8,$s0
    sll	$s1,$s0,0x2
    bnez	$t8,.L0d99e5d0
    addu	$s1,$s2,$s1
    b	.L0d99e580
    ld	$s4,304($sp)
.L0d99e834:
    sd	$s0,144($sp)
.L0d99e838:
    ld	$s6,384($sp)
    ld	$s4,376($sp)
    ld	$s7,360($sp)
    ldc1	$f20,336($sp)
    # Line 1876
    ld	$gp,216($sp)
    ld	$s0,208($sp)
    ld	$s1,176($sp)
    ld	$s2,184($sp)
    ld	$s5,192($sp)
    # Line 1962
    ld	$t9,264($sp)
    sw	$t9,30648($s3)
    ld	$ra,368($sp)
    # Line 1876
    ld	$t8,224($sp)
    ld	$s3,200($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t8
.L0d99e87c:
    # Line 1841
    sub.s	$f31,$f4,$f5
    trunc.w.s	$f31,$f31
    ld	$s2,136($sp)
    b	.L0d99e0f8
    mfc1	$a1,$f31
.L0d99e890:
    # Line 1832
    jalr	$t9
    li	$a0,1285
    b	.L0d99e1f4
    ld	$ra,368($sp)
.L0d99e8a0:
    # Line 1895
    lui	$s7,0xffff
    sd	$zero,304($sp)
    li	$t8,1
    addu	$s7,$s7,$s8
    sd	$t8,312($sp)
    b	.L0d99e528
    addiu	$s7,$s7,-4112
.end __glSep2dCopyPixels

# Function: __glConv2dCopyImage
# Declared: Line 1968 (Source lines: 1969-2063)
# Address: 0x0d99e8c0 - 0x0d99ecbc (Size: 1020 bytes, Frame: 0)
.globl __glConv2dCopyImage
.ent __glConv2dCopyImage
__glConv2dCopyImage:
    # Line 1987
    lw	$a3,360($a1)
    # Line 1969
    lui	$at,0x1
    # Line 1990
    lw	$v0,264($a1)
    # Line 1969
    ori	$at,$at,0x80d0
    # Line 1990
    lw	$v1,172($a1)
    # Line 1969
    subu	$sp,$sp,$at
    move	$a7,$s8
    sd	$a7,88($sp)
    # Line 1987
    sd	$a3,168($sp)
    sd	$ra,64($sp)
    sd	$s7,56($sp)
    sd	$s1,48($sp)
    sd	$gp,96($sp)
    # Line 1969
    sd	$s0,80($sp)
    sd	$s6,72($sp)
    # Line 1983
    lw	$a2,436($a1)
    # Line 1969
    move	$s6,$a0
    # Line 1978
    lw	$a0,30648($a0)
    # Line 1986
    lw	$a5,12($a2)
    lw	$a6,64($a2)
    # Line 1983
    sd	$a2,112($sp)
    # Line 1985
    lw	$a2,68($a2)
    # Line 1986
    mult	$a5,$a6
    # Line 1985
    sd	$a2,160($sp)
    # Line 1969
    lui	$a4,0xb
    # Line 1978
    sd	$a0,152($sp)
    # Line 1969
    addiu	$a4,$a4,9420
    addu	$s8,$sp,$at
    # Line 1990
    lw	$at,260($a1)
    # Line 1969
    move	$s0,$a1
    # Line 1989
    lw	$a5,12($a1)
    # Line 1990
    subu	$v1,$v1,$a2
    # Line 1969
    addu	$gp,$t9,$a4
    # Line 1989
    sd	$a5,128($sp)
    # Line 1990
    addiu	$v1,$v1,1
    # Line 1986
    mflo	$a5
    # Line 1990
    bne	$at,$v0,.L0d99e964
    sd	$v1,104($sp)
    # Line 1993
    lw	$t0,92($a1)
    b	.L0d99e974
    sd	$t0,176($sp)
.L0d99e964:
    lui	$t1,0xffff
    addu	$t1,$t1,$s8
    addiu	$t1,$t1,32752
    sd	$t1,176($sp)
.L0d99e974:
    sd	$s4,40($sp)
    # Line 1995
    ld	$t2,104($sp)
    sd	$s3,32($sp)
    sd	$s5,24($sp)
    blez	$t2,.L0d99ec84
    sd	$s2,16($sp)
    move	$s5,$zero
    li	$s4,1
    sd	$zero,120($sp)
    addiu	$t8,$s0,4
    sd	$t8,136($sp)
    lui	$s2,0xfffe
    sll	$s3,$a5,0x2
    sd	$s3,144($sp)
    addu	$s2,$s2,$s8
    lw	$s3,8($sp)
    b	.L0d99ea20
    addiu	$s2,$s2,32752
    nop
.L0d99e9c0:
    # Line 2051
    sll	$t9,$s3,0x2
    addu	$t9,$s0,$t9
    lw	$t9,360($t9)
    move	$a0,$s6
    move	$a1,$s0
    sll	$a2,$s4,0xf
    jalr	$t9
    addu	$a2,$s2,$a2
.L0d99e9e0:
    # Line 2061
    ld	$a0,152($sp)
.L0d99e9e4:
    # Line 2056
    ld	$v0,128($sp)
    lw	$v1,16($s0)
    # Line 2058
    lw	$a2,92($s0)
    # Line 1998
    ld	$at,120($sp)
    # Line 2058
    lw	$a1,96($s0)
    # Line 1998
    addiu	$at,$at,1
    sd	$at,120($sp)
    # Line 2058
    addu	$a1,$a1,$a2
    sw	$a1,92($s0)
    # Line 1998
    ld	$ra,104($sp)
    # Line 2056
    addu	$v1,$v1,$v0
    sw	$v1,12($s0)
    # Line 2061
    sw	$a0,30648($s6)
    # Line 1998
    beq	$ra,$at,.L0d99ec84
    sd	$v1,128($sp)
.L0d99ea20:
    # Line 1999
    ld	$a1,160($sp)
    ld	$a0,112($sp)
    lw	$a0,80($a0)
    blez	$a1,.L0d99eb98
    sw	$a0,256($s0)
    b	.L0d99ea90
    sd	$zero,184($sp)
    nop
.L0d99ea40:
    # Line 2020
    beqz	$a1,.L0d99eb78
    # Line 2024
    ld	$t9,168($sp)
.L0d99ea48:
    move	$a0,$s6
    lw	$a2,12($s0)
    move	$a1,$s0
    jalr	$t9
    ld	$a3,176($sp)
.L0d99ea5c:
    # Line 2028
    lw	$a6,12($s0)
    lw	$a5,16($s0)
    # Line 2027
    ld	$a3,144($sp)
    lw	$a2,256($s0)
    # Line 2000
    ld	$a4,184($sp)
    # Line 2027
    addu	$a2,$a2,$a3
    # Line 2000
    ld	$a3,160($sp)
    addiu	$a4,$a4,1
    sd	$a4,184($sp)
    # Line 2028
    addu	$a5,$a5,$a6
    sw	$a5,12($s0)
    # Line 2000
    beq	$a3,$a4,.L0d99eb98
    # Line 2027
    sw	$a2,256($s0)
.L0d99ea90:
    # Line 1999
    lw	$a7,260($s0)
    # Line 2020
    li	$s3,1
    # Line 1999
    beqz	$a7,.L0d99ea40
    # Line 2020
    ld	$a1,184($sp)
    # Line 2005
    ld	$t9,168($sp)
    move	$a1,$s0
    # Line 2003
    ld	$t8,152($sp)
    # Line 2005
    sll	$s7,$s4,0xf
    move	$a0,$s6
    # Line 2003
    sw	$t8,30648($s6)
    # Line 2005
    addu	$s7,$s2,$s7
    lw	$a2,12($s0)
    jalr	$t9
    move	$a3,$s7
    # Line 2006
    lw	$t9,260($s0)
    slti	$t9,$t9,2
    ld	$s1,136($sp)
    bnez	$t9,.L0d99eb20
    li	$s3,1
.L0d99eadc:
    # Line 2008
    move	$a1,$s0
    # Line 2007
    move	$s7,$s5
    move	$s5,$s4
    # Line 2008
    move	$a0,$s6
    sll	$a2,$s5,0xf
    lw	$t9,360($s1)
    # Line 2007
    move	$s4,$s7
    # Line 2008
    sll	$s7,$s7,0xf
    addu	$a2,$s2,$a2
    addu	$s7,$s2,$s7
    jalr	$t9
    move	$a3,$s7
    # Line 2006
    lw	$t8,260($s0)
    addiu	$s3,$s3,1
    slt	$t8,$s3,$t8
    bnez	$t8,.L0d99eadc
    addiu	$s1,$s1,4
.L0d99eb20:
    ld	$t9,184($sp)
    beqz	$t9,.L0d99eb58
    nop
    # Line 2015
    addiu	$s3,$s3,1
.L0d99eb30:
    sll	$t9,$s3,0x2
    addu	$t9,$s0,$t9
    lw	$t9,356($t9)
    move	$a2,$s7
    move	$a1,$s0
    ld	$a3,176($sp)
    jalr	$t9
    move	$a0,$s6
    b	.L0d99ea5c
    nop
.L0d99eb58:
    # Line 2013
    lw	$t9,416($s0)
    move	$a0,$s6
    move	$a1,$s0
    move	$a2,$s7
    jalr	$t9
    ld	$a3,176($sp)
    b	.L0d99eb30
    # Line 2015
    addiu	$s3,$s3,1
.L0d99eb78:
    # Line 2022
    lw	$t9,416($s0)
    move	$a0,$s6
    ld	$a3,176($sp)
    move	$a1,$s0
    jalr	$t9
    lw	$a2,12($s0)
    b	.L0d99ea48
    # Line 2024
    ld	$t9,168($sp)
.L0d99eb98:
    # Line 2000
    lw	$a0,264($s0)
    slt	$a1,$s3,$a0
    bnez	$a1,.L0d99ec48
    nop
.L0d99eba8:
    # Line 2033
    beqz	$a1,.L0d99ec00
    sll	$s1,$s3,0x2
    addu	$s1,$s0,$s1
    nop
    nop
    nop
.L0d99ebc0:
    # Line 2039
    move	$a0,$s6
    move	$a1,$s0
    # Line 2038
    move	$a3,$s5
    move	$s5,$s4
    # Line 2039
    lw	$t9,360($s1)
    # Line 2038
    move	$s4,$a3
    # Line 2039
    sll	$a3,$a3,0xf
    sll	$a2,$s5,0xf
    addu	$a3,$s2,$a3
    jalr	$t9
    addu	$a2,$s2,$a2
    # Line 2037
    lw	$a0,264($s0)
    addiu	$s3,$s3,1
    slt	$a4,$s3,$a0
    bnez	$a4,.L0d99ebc0
    addiu	$s1,$s1,4
.L0d99ec00:
    bne	$a0,$s3,.L0d99e9e0
    nop
    lw	$a5,260($s0)
    addiu	$a6,$a0,-1
    bne	$a5,$a6,.L0d99e9c0
    lw	$a3,92($s0)
    # Line 2046
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$s0,$t9
    lw	$t9,356($t9)
    move	$a1,$s0
    lui	$a2,0xffff
    move	$a0,$s6
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    b	.L0d99e9e4
    # Line 2061
    ld	$a0,152($sp)
.L0d99ec48:
    # Line 2033
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    addu	$t9,$s0,$t9
    move	$a1,$s0
    move	$a0,$s6
    lw	$t9,356($t9)
    sll	$a3,$s4,0xf
    lui	$a2,0xffff
    addu	$a3,$s2,$a3
    addu	$a2,$a2,$s8
    jalr	$t9
    addiu	$a2,$a2,32752
    lw	$a0,264($s0)
    b	.L0d99eba8
    slt	$a1,$s3,$a0
.L0d99ec84:
    # Line 2063
    ld	$gp,96($sp)
    ld	$s0,80($sp)
    ld	$s1,48($sp)
    ld	$s2,16($sp)
    ld	$s3,32($sp)
    ld	$s4,40($sp)
    ld	$s5,24($sp)
    ld	$s6,72($sp)
    ld	$ra,64($sp)
    ld	$at,88($sp)
    ld	$s7,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.end __glConv2dCopyImage

# Function: __glSep2dCopyImage
# Declared: Line 2069 (Source lines: 2070-2193)
# Address: 0x0d99ecc0 - 0x0d99f2e8 (Size: 1576 bytes, Frame: 0)
.globl __glSep2dCopyImage
.ent __glSep2dCopyImage
__glSep2dCopyImage:
    # Line 2070
    lui	$at,0x1
    ori	$at,$at,0x110
    # Line 2093
    lw	$v0,360($a1)
    # Line 2070
    subu	$sp,$sp,$at
    sd	$s5,56($sp)
    # Line 2086
    lw	$s5,1020($a0)
    sd	$gp,96($sp)
    # Line 2070
    sd	$s3,64($sp)
    sd	$s2,48($sp)
    # Line 2093
    sd	$v0,136($sp)
    # Line 2078
    lw	$v0,30648($a0)
    # Line 2070
    sd	$s0,72($sp)
    # Line 2088
    lw	$s0,436($a1)
    # Line 2070
    move	$a3,$s8
    addu	$s8,$sp,$at
    # Line 2095
    lw	$at,172($a1)
    # Line 2092
    lw	$a2,64($s0)
    lw	$v1,12($s0)
    # Line 2070
    sd	$s4,80($sp)
    # Line 2091
    lw	$s4,68($s0)
    # Line 2092
    mult	$v1,$a2
    # Line 2070
    move	$s2,$a1
    move	$s3,$a0
    # Line 2078
    sd	$v0,128($sp)
    # Line 2070
    sd	$a3,88($sp)
    lui	$a3,0xb
    # Line 2095
    subu	$at,$at,$s4
    # Line 2097
    addiu	$v0,$s4,-1
    sd	$v0,144($sp)
    # Line 2095
    addiu	$at,$at,1
    # Line 2070
    addiu	$a3,$a3,8396
    # Line 2095
    sd	$at,120($sp)
    # Line 2098
    slt	$at,$at,$s4
    # Line 2070
    addu	$gp,$t9,$a3
    # Line 2088
    move	$a2,$s0
    # Line 2098
    lw	$v1,80($s0)
    # Line 2092
    mflo	$a3
    # Line 2098
    bnez	$at,.L0d99f2c0
    sw	$v1,256($a1)
    sd	$a3,16($sp)
    sd	$s6,240($sp)
    # Line 2107
    lw	$a5,264($a1)
    lw	$a4,260($a1)
    sd	$ra,232($sp)
    sd	$s7,224($sp)
    bne	$a4,$a5,.L0d99ed84
    sd	$s1,216($sp)
    # Line 2110
    b	.L0d99ed90
    lw	$s6,92($a1)
.L0d99ed84:
    # Line 2112
    lui	$s6,0xffff
    addu	$s6,$s6,$s8
    addiu	$s6,$s6,32752
.L0d99ed90:
    blez	$s4,.L0d99ef3c
    # Line 2142
    ld	$t8,120($sp)
    # Line 2112
    sd	$zero,192($sp)
    li	$s7,1
    sd	$s5,24($sp)
    addiu	$t9,$s2,4
    sd	$t9,112($sp)
    sll	$t8,$s4,0xf
    addu	$t8,$t8,$s5
    b	.L0d99eee0
    sd	$t8,104($sp)
    nop
.L0d99edc0:
    # Line 2120
    move	$a1,$s2
    ld	$t9,136($sp)
    lui	$s1,0xffff
    move	$a0,$s3
    # Line 2118
    sw	$t8,30648($s3)
    # Line 2120
    addu	$s1,$s1,$s8
    sll	$a3,$s7,0xf
    lw	$a2,12($s2)
    addiu	$s1,$s1,-16
    addu	$a3,$s1,$a3
    jalr	$t9
    sd	$a3,176($sp)
    # Line 2121
    lw	$t9,260($s2)
    slti	$t9,$t9,2
    ld	$s1,112($sp)
    li	$ra,1
    bnez	$t9,.L0d99ee70
    sd	$ra,32($sp)
.L0d99ee08:
    # Line 2123
    lui	$a3,0xffff
    move	$a1,$s2
    addu	$a3,$a3,$s8
    # Line 2122
    ld	$a2,192($sp)
    # Line 2123
    move	$a0,$s3
    addiu	$a3,$a3,-16
    lw	$t9,360($s1)
    # Line 2122
    move	$a4,$a2
    move	$a2,$s7
    sd	$s7,192($sp)
    # Line 2123
    sll	$a2,$a2,0xf
    # Line 2122
    move	$s7,$a4
    # Line 2123
    sll	$a4,$a4,0xf
    addu	$a2,$a3,$a2
    addu	$a3,$a3,$a4
    jalr	$t9
    sd	$a3,152($sp)
    # Line 2121
    ld	$a3,32($sp)
    lw	$a4,260($s2)
    addiu	$a3,$a3,1
    sd	$a3,32($sp)
    slt	$a3,$a3,$a4
    bnez	$a3,.L0d99ee08
    addiu	$s1,$s1,4
    ld	$a5,152($sp)
    sd	$a5,176($sp)
.L0d99ee70:
    # Line 2127
    lw	$t9,416($s2)
    ld	$s1,24($sp)
    move	$a0,$s3
    move	$a1,$s2
    ld	$a2,176($sp)
    jalr	$t9
    move	$a3,$s1
    # Line 2128
    ld	$t9,32($sp)
    addiu	$t9,$t9,1
    sd	$t9,32($sp)
    sll	$t9,$t9,0x2
    addu	$t9,$s2,$t9
    lw	$t9,356($t9)
    move	$a3,$s1
    move	$a1,$s2
    ld	$a2,176($sp)
    jalr	$t9
    move	$a0,$s3
    # Line 2138
    lw	$v0,12($s2)
.L0d99eebc:
    lw	$ra,16($s2)
    # Line 2115
    ld	$at,24($sp)
    li	$v1,0x8000
    # Line 2138
    addu	$ra,$ra,$v0
    # Line 2115
    ld	$v0,104($sp)
    addu	$at,$v1,$at
    sd	$at,24($sp)
    beq	$at,$v0,.L0d99ef2c
    # Line 2138
    sw	$ra,12($s2)
.L0d99eee0:
    # Line 2112
    lw	$a0,260($s2)
    bnez	$a0,.L0d99edc0
    # Line 2118
    ld	$t8,128($sp)
    # Line 2133
    lw	$t9,416($s2)
    ld	$a3,24($sp)
    move	$a1,$s2
    move	$a0,$s3
    lw	$a2,12($s2)
    # Line 2132
    li	$a4,1
    # Line 2133
    jalr	$t9
    sd	$a4,32($sp)
    # Line 2135
    ld	$t9,136($sp)
    move	$a0,$s3
    lw	$a2,12($s2)
    move	$a1,$s2
    jalr	$t9
    ld	$a3,24($sp)
    b	.L0d99eebc
    # Line 2138
    lw	$v0,12($s2)
.L0d99ef2c:
    # Line 2115
    lw	$a2,436($s2)
    ld	$a5,32($sp)
    sw	$a5,8($sp)
    # Line 2142
    ld	$t8,120($sp)
.L0d99ef3c:
    # Line 2115
    lui	$s7,0xffff
    # Line 2142
    ld	$a1,16($sp)
    lw	$a0,80($a2)
    # Line 2115
    addu	$s7,$s7,$s8
    addiu	$s7,$s7,-16
    # Line 2142
    sll	$a1,$a1,0x2
    blez	$t8,.L0d99f280
    addu	$a0,$a0,$a1
    addiu	$a2,$s2,4
    sd	$a2,112($sp)
    sd	$zero,40($sp)
    sd	$zero,160($sp)
    sd	$a0,208($sp)
    lw	$a3,8($sp)
    sd	$a3,32($sp)
    sd	$s0,200($sp)
    b	.L0d99f110
    ld	$s0,32($sp)
    nop
    nop
    nop
.L0d99ef90:
    # Line 2156
    li	$s1,1
    sd	$zero,192($sp)
.L0d99ef98:
    sll	$a4,$s1,0xf
    addu	$a4,$s7,$a4
    beq	$a0,$s0,.L0d99f254
    sd	$a4,176($sp)
    # Line 2169
    ld	$t0,160($sp)
.L0d99efac:
    mtc1	$s4,$f2
    addiu	$t1,$t0,1
    mtc1	$t1,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    # Line 2170
    ld	$a5,144($sp)
    addiu	$a6,$a5,1
    mtc1	$a6,$f0
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f2
    # Line 2169
    trunc.w.d	$f1,$f1
    mfc1	$t9,$f1
    mult	$t9,$s4
    # Line 2170
    trunc.w.d	$f0,$f0
    mfc1	$t8,$f0
    # Line 2169
    mflo	$t2
    nop
    nop
    # Line 2170
    mult	$t8,$s4
    # Line 2175
    ld	$a3,176($sp)
    # Line 2173
    ld	$t3,128($sp)
    sw	$t3,30648($s3)
    # Line 2175
    move	$a1,$s2
    # Line 2170
    teq	$s4,$zero,0x7
    # Line 2175
    ld	$t9,136($sp)
    move	$a0,$s3
    # Line 2169
    teq	$s4,$zero,0x7
    # Line 2175
    lw	$a2,12($s2)
    # Line 2169
    subu	$t0,$t1,$t2
    sd	$t0,160($sp)
    # Line 2170
    mflo	$a7
    subu	$a5,$a6,$a7
    # Line 2175
    jalr	$t9
    # Line 2170
    sd	$a5,144($sp)
    # Line 2176
    lw	$ra,260($s2)
    slti	$ra,$ra,2
    ld	$a2,176($sp)
    li	$s0,1
    bnez	$ra,.L0d99f0b4
    sd	$s1,184($sp)
    ld	$s1,112($sp)
    nop
    nop
    nop
.L0d99f060:
    # Line 2177
    ld	$a4,184($sp)
    ld	$a2,192($sp)
    # Line 2178
    move	$a1,$s2
    lw	$t9,360($s1)
    # Line 2177
    move	$a3,$a2
    move	$a2,$a4
    # Line 2178
    move	$a0,$s3
    # Line 2177
    sd	$a4,192($sp)
    # Line 2178
    sll	$a2,$a2,0xf
    # Line 2177
    sd	$a3,184($sp)
    # Line 2178
    sll	$a3,$a3,0xf
    addu	$a2,$s7,$a2
    addu	$a3,$s7,$a3
    jalr	$t9
    sd	$a3,168($sp)
    # Line 2176
    lw	$a5,260($s2)
    addiu	$s0,$s0,1
    slt	$a5,$s0,$a5
    bnez	$a5,.L0d99f060
    addiu	$s1,$s1,4
    ld	$a2,168($sp)
.L0d99f0b4:
    # Line 2182
    addiu	$s0,$s0,1
    sll	$t9,$s0,0x2
    ld	$a3,144($sp)
    addu	$t9,$s2,$t9
    lw	$t9,356($t9)
    move	$a1,$s2
    move	$a0,$s3
    sll	$a3,$a3,0xf
    ld	$s1,40($sp)
    jalr	$t9
    addu	$a3,$s5,$a3
    # Line 2188
    lw	$v1,92($s2)
    # Line 2186
    lw	$at,12($s2)
    lw	$ra,16($s2)
    # Line 2188
    lw	$v0,96($s2)
    # Line 2186
    addu	$ra,$ra,$at
    # Line 2145
    ld	$at,120($sp)
    addiu	$s1,$s1,1
    sd	$s1,40($sp)
    # Line 2188
    addu	$v0,$v0,$v1
    sw	$v0,92($s2)
    # Line 2145
    beq	$at,$s1,.L0d99f27c
    # Line 2186
    sw	$ra,12($s2)
.L0d99f110:
    # Line 2147
    lw	$t9,416($s2)
    ld	$a2,160($sp)
    move	$a0,$s3
    move	$a1,$s2
    move	$a3,$s6
    sll	$a2,$a2,0xf
    jalr	$t9
    addu	$a2,$s5,$a2
    blez	$s4,.L0d99f1d8
    nop
    ld	$s7,160($sp)
    move	$s1,$zero
    sd	$s0,32($sp)
    move	$s0,$s7
    addu	$s7,$s4,$s7
    nop
.L0d99f150:
    # Line 2149
    mtc1	$s4,$f3
    mtc1	$s0,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    ld	$a7,200($sp)
    lw	$a7,12($a7)
    mult	$a7,$s1
    trunc.w.d	$f2,$f2
    mfc1	$a6,$f2
    mflo	$a5
    nop
    nop
    mult	$a6,$s4
    move	$a0,$s3
    move	$a1,$s2
    move	$a4,$s6
    ld	$a2,208($sp)
    teq	$s4,$zero,0x7
    lw	$t9,420($s2)
    mflo	$a3
    sll	$a5,$a5,0x2
    subu	$a3,$s0,$a3
    addu	$a2,$a2,$a5
    sll	$a3,$a3,0xf
    jalr	$t9
    addu	$a3,$s5,$a3
    # Line 2148
    addiu	$s0,$s0,1
    bne	$s0,$s7,.L0d99f150
    addiu	$s1,$s1,1
    lui	$s7,0xffff
    addu	$s7,$s7,$s8
    ld	$s0,32($sp)
    addiu	$s7,$s7,-16
.L0d99f1d8:
    lw	$a0,264($s2)
    slt	$t8,$s0,$a0
    sll	$s1,$s0,0x2
    beqz	$t8,.L0d99ef90
    addu	$s1,$s2,$s1
    li	$t8,1
    sd	$t8,184($sp)
    sd	$zero,192($sp)
    nop
    nop
.L0d99f200:
    # Line 2157
    ld	$a2,192($sp)
    # Line 2158
    move	$a0,$s3
    # Line 2157
    ld	$a4,184($sp)
    # Line 2158
    move	$a1,$s2
    lw	$t9,360($s1)
    # Line 2157
    move	$a3,$a2
    sd	$a3,184($sp)
    move	$a2,$a4
    # Line 2158
    sll	$a3,$a3,0xf
    sll	$a2,$a2,0xf
    addu	$a3,$s7,$a3
    # Line 2157
    sd	$a4,192($sp)
    # Line 2158
    jalr	$t9
    addu	$a2,$s7,$a2
    # Line 2156
    lw	$a0,264($s2)
    addiu	$s0,$s0,1
    slt	$a5,$s0,$a0
    bnez	$a5,.L0d99f200
    addiu	$s1,$s1,4
    b	.L0d99ef98
    ld	$s1,184($sp)
.L0d99f254:
    # Line 2163
    sll	$t9,$s0,0x2
    addu	$t9,$s2,$t9
    lw	$t9,360($t9)
    move	$a0,$s3
    ld	$a2,176($sp)
    move	$a1,$s2
    jalr	$t9
    lw	$a3,92($s2)
    b	.L0d99efac
    # Line 2169
    ld	$t0,160($sp)
.L0d99f27c:
    sd	$s0,32($sp)
.L0d99f280:
    ld	$s6,240($sp)
    ld	$s7,224($sp)
    ld	$s1,216($sp)
    # Line 2193
    ld	$gp,96($sp)
    ld	$s0,72($sp)
    ld	$s2,48($sp)
    ld	$s4,80($sp)
    ld	$s5,56($sp)
    # Line 2192
    ld	$v0,128($sp)
    sw	$v0,30648($s3)
    ld	$ra,232($sp)
    # Line 2193
    ld	$at,88($sp)
    ld	$s3,64($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d99f2c0:
    ld	$s2,48($sp)
    ld	$s5,56($sp)
    ld	$s3,64($sp)
    ld	$s0,72($sp)
    ld	$s4,80($sp)
    ld	$v1,88($sp)
    ld	$gp,96($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v1
.end __glSep2dCopyImage

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

