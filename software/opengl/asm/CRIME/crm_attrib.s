# Source: ../CRIME/crm_attrib.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_attrib.c
# Total Functions: 37

.text

# Function: __glcrmim_AlphaFunc
# Declared: Line 35 (Source lines: 36-53)
# Address: 0x0d93bcb0 - 0x0d93bd8c (Size: 220 bytes, Frame: 32)
.globl __glcrmim_AlphaFunc
.ent __glcrmim_AlphaFunc
__glcrmim_AlphaFunc:
    # Line 36
    move	$a2,$a0
    addiu	$sp,$sp,-32
    # Line 37
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 36
    lui	$v1,0x11
    sd	$ra,16($sp)
    # Line 39
    sltiu	$a1,$a2,520
    # Line 36
    addiu	$v1,$v1,20700
    sd	$gp,8($sp)
    # Line 37
    beq	$at,$v0,.L0d93bd78
    # Line 36
    addu	$gp,$t9,$v1
    # Line 39
    sltiu	$a0,$a0,512
    bnez	$a0,.L0d93bd68
    # Line 40
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 39
    beqz	$a1,.L0d93bd64
    sd	$a3,0($sp)
    # Line 43
    mtc1	$zero,$f1
    ld	$a3,0($sp)
    c.lt.s $f13,$f1
    lwc1	$f0,3544($a3)
    movf.s	$f1,$f13,$fcc1
    # Line 49
    # lw $t9, -32000($gp) # &__glCrmPassAlphaFunc
    # Line 43
    c.lt.s	$f0,$f1
    # Line 46
    sw	$a2,1820($a3)
    movf.s	$f0,$f1,$fcc0
    # Line 49
    move	$a0,$a3
    bal __glCrmPassAlphaFunc
    # Line 47
    swc1	$f0,1824($a3)
    # Line 53
    ld	$gp,8($sp)
    # Line 51
    li	$a7,2
    sw	$a7,4120($zero)
    # Line 52
    ld	$a5,0($sp)
    ld	$ra,16($sp)
    lw	$a6,11752($a5)
    # Line 51
    lw	$a4,11756($a5)
    # Line 53
    addiu	$sp,$sp,32
    # Line 52
    ori	$a6,$a6,0x1
    sw	$a6,11752($a5)
    # Line 51
    ori	$a4,$a4,0x1
    # Line 53
    jr	$ra
    # Line 51
    sw	$a4,11756($a5)
.L0d93bd58:
    # Line 53
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93bd64:
    # Line 40
    # lw $t9, -26452($gp) # &__glSetError
.L0d93bd68:
    jal	__glSetError
    li	$a0,1280
    b	.L0d93bd58
    ld	$ra,16($sp)
.L0d93bd78:
    # Line 37
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93bd58
    ld	$ra,16($sp)
.end __glcrmim_AlphaFunc

# Function: __glcrmim_BlendFunc
# Declared: Line 56 (Source lines: 57-101)
# Address: 0x0d93bd90 - 0x0d93bfd8 (Size: 584 bytes, Frame: 16)
.globl __glcrmim_BlendFunc
.ent __glcrmim_BlendFunc
__glcrmim_BlendFunc:
    # Line 57
    addiu	$sp,$sp,-16
    # Line 58
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 57
    lui	$v1,0x11
    move	$a3,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,20476
    sd	$gp,0($sp)
    # Line 58
    beq	$at,$v0,.L0d93bfc4
    # Line 57
    addu	$gp,$t9,$v1
    # Line 60
    sltiu	$a0,$a0,774
    bnez	$a0,.L0d93be10
    sltiu	$t0,$a3,771
    sltiu	$a0,$a3,775
    bnez	$a0,.L0d93be34
    # Line 79
    sltiu	$a0,$a1,772
    # Line 60
    li	$a0,0x8002
    sltu	$a2,$a3,$a0
    bnez	$a2,.L0d93bf34
    sltu	$a5,$a0,$a3
    li	$a0,0x8004
    li	$a2,0x8003
    sltu	$a7,$a0,$a3
    beqz	$a5,.L0d93be30
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d93bfb4
    nop
    beqz	$a7,.L0d93be34
    # Line 79
    sltiu	$a0,$a1,772
    b	.L0d93befc
    # Line 76
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93be10:
    # Line 60
    bnez	$t0,.L0d93bee4
    sltiu	$t1,$a3,772
    bnez	$t1,.L0d93be30
    sltiu	$t2,$a3,773
    bnez	$t2,.L0d93bfa0
    nop
    beqz	$a0,.L0d93befc
    # Line 76
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93be30:
    # Line 79
    sltiu	$a0,$a1,772
.L0d93be34:
    bnez	$a0,.L0d93be7c
    sltiu	$v0,$a1,769
    sltiu	$t3,$a1,773
    bnez	$t3,.L0d93bec0
    li	$a0,0x8002
    sltu	$t8,$a1,$a0
    bnez	$t8,.L0d93bea4
    sltu	$t9,$a0,$a1
    beqz	$t9,.L0d93bec0
    li	$v0,0x8003
    li	$a0,0x8004
    sltu	$ra,$a1,$a0
    bnez	$ra,.L0d93bf80
    sltu	$at,$a0,$a1
    beqz	$at,.L0d93bec4
    # Line 101
    nop	# was lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    b	.L0d93bf24
    # Line 94
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93be7c:
    # Line 79
    bnez	$v0,.L0d93bf0c
    sltiu	$v1,$a1,770
    bnez	$v1,.L0d93bec0
    sltiu	$a2,$a1,771
    bnez	$a2,.L0d93bf70
    li	$at,770
    bnez	$a0,.L0d93bec4
    # Line 101
    nop	# was lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    b	.L0d93bf24
    # Line 94
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bea4:
    # Line 79
    li	$a0,0x8001
    sltu	$a5,$a1,$a0
    li	$ra,773
    bnez	$a5,.L0d93bf60
    sltu	$a6,$a0,$a1
    bnez	$a6,.L0d93bf24
    # Line 94
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bec0:
    # Line 101
    # lw $t9, -31992($gp) # &__glCrmPassBlendFunc
.L0d93bec4:
    # Line 99
    sw	$a1,1832($a4)
    # Line 101
    move	$a0,$a4
    bal __glCrmPassBlendFunc
    # Line 98
    sw	$a3,1828($a4)
    ld	$ra,8($sp)
.L0d93bed8:
    # Line 77
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93bee4:
    # Line 60
    beqz	$a3,.L0d93be30
    sltiu	$a7,$a3,2
    bnez	$a7,.L0d93be30
    li	$t0,770
    beq	$a3,$t0,.L0d93be30
    # Line 76
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93befc:
    jal	__glSetError
    li	$a0,1280
    b	.L0d93bed8
    ld	$ra,8($sp)
.L0d93bf0c:
    # Line 79
    beqz	$a1,.L0d93bec0
    sltiu	$t1,$a1,2
    bnez	$t1,.L0d93bec0
    li	$t2,768
    beq	$a1,$t2,.L0d93bec0
    # Line 94
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bf24:
    jal	__glSetError
    li	$a0,1280
    b	.L0d93bed8
    ld	$ra,8($sp)
.L0d93bf34:
    # Line 60
    sltiu	$t3,$a3,776
    li	$t9,0x8001
    li	$v1,775
    bnez	$t3,.L0d93bf90
    sltiu	$t8,$a3,777
    bnez	$t8,.L0d93be34
    # Line 79
    sltiu	$a0,$a1,772
    # Line 60
    beq	$a3,$t9,.L0d93be34
    # Line 79
    sltiu	$a0,$a1,772
    b	.L0d93befc
    # Line 76
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bf60:
    # Line 79
    beq	$a1,$ra,.L0d93bec4
    # Line 101
    nop	# was lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    b	.L0d93bf24
    # Line 94
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bf70:
    # Line 79
    beq	$a1,$at,.L0d93bec4
    # Line 101
    nop	# was lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    b	.L0d93bf24
    # Line 94
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bf80:
    # Line 79
    beq	$a1,$v0,.L0d93bec4
    # Line 101
    nop	# was lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    b	.L0d93bf24
    # Line 94
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bf90:
    # Line 60
    beq	$a3,$v1,.L0d93be34
    # Line 79
    sltiu	$a0,$a1,772
    b	.L0d93befc
    # Line 76
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bfa0:
    # Line 60
    li	$a0,772
    beq	$a3,$a0,.L0d93be34
    # Line 79
    sltiu	$a0,$a1,772
    b	.L0d93befc
    # Line 76
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bfb4:
    # Line 60
    beq	$a3,$a2,.L0d93be34
    # Line 79
    sltiu	$a0,$a1,772
    b	.L0d93befc
    # Line 76
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93bfc4:
    # Line 58
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93bed8
    ld	$ra,8($sp)
.end __glcrmim_BlendFunc

# Function: __glcrmim_BlendEquationEXT
# Declared: Line 105 (Source lines: 106-135)
# Address: 0x0d93bfe0 - 0x0d93c0f4 (Size: 276 bytes, Frame: 32)
.globl __glcrmim_BlendEquationEXT
.ent __glcrmim_BlendEquationEXT
__glcrmim_BlendEquationEXT:
    # Line 106
    addiu	$sp,$sp,-32
    # Line 109
    li	$a6,0x800b
    li	$a5,0x800a
    # Line 106
    sd	$s0,0($sp)
    # Line 109
    li	$a4,0x8008
    li	$a3,0x8007
    # Line 107
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 106
    lui	$v1,0x11
    # Line 109
    li	$a1,0x8006
    sd	$ra,16($sp)
    # Line 106
    addiu	$v1,$v1,19884
    sd	$gp,8($sp)
    # Line 107
    beq	$at,$v0,.L0d93c0dc
    # Line 106
    addu	$gp,$t9,$v1
    # Line 109
    li	$a2,3057
    beq	$a2,$a0,.L0d93c068
    nop
    beq	$a0,$a1,.L0d93c068
    nop
    beq	$a0,$a3,.L0d93c068
    nop
    beq	$a0,$a4,.L0d93c068
    nop
    beq	$a0,$a5,.L0d93c068
    nop
    beq	$a0,$a6,.L0d93c068
    # Line 118
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d93c0bc
    ld	$ra,16($sp)
.L0d93c068:
    # Line 122
    beq	$a2,$a0,.L0d93c0c8
    sw	$a0,1836($s0)
    # Line 127
    # lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    bal __glCrmPassBlendFunc
    move	$a0,$s0
    lw	$a7,1792($s0)
.L0d93c080:
    andi	$a7,$a7,0x2
    beqz	$a7,.L0d93c094
    # Line 131
    nop	# was lw $t9, -31996($gp) # &__glCrmEnableBlend
    bal __glCrmEnableBlend
    move	$a0,$s0
.L0d93c094:
    # Line 134
    li	$t1,2
    sw	$t1,4120($zero)
    lw	$t0,11756($s0)
    ld	$ra,16($sp)
    # Line 135
    ld	$gp,8($sp)
    # Line 134
    ori	$t0,$t0,0x1
    sw	$t0,11756($s0)
    # Line 135
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93c0bc:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93c0c8:
    # Line 125
    # lw $t9, -31976($gp) # &__glCrmPassLogicOp
    bal __glCrmPassLogicOp
    move	$a0,$s0
    b	.L0d93c080
    # Line 127
    lw	$a7,1792($s0)
.L0d93c0dc:
    # Line 107
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c0bc
    ld	$ra,16($sp)
.end __glcrmim_BlendEquationEXT

# Function: __glcrmim_BlendColorEXT
# Declared: Line 141 (Source lines: 142-164)
# Address: 0x0d93c100 - 0x0d93c1b8 (Size: 184 bytes, Frame: 16)
.globl __glcrmim_BlendColorEXT
.ent __glcrmim_BlendColorEXT
__glcrmim_BlendColorEXT:
    # Line 142
    addiu	$sp,$sp,-16
    # Line 145
    lw	$at,4120($zero)
    lw	$a0,4112($zero)
    li	$v0,1
    # Line 142
    lui	$v1,0x11
    sd	$ra,8($sp)
    addiu	$v1,$v1,19596
    sd	$gp,0($sp)
    # Line 145
    beq	$at,$v0,.L0d93c1a4
    # Line 142
    addu	$gp,$t9,$v1
    # Line 150
    mtc1	$zero,$f4
    # Line 154
    c.lt.s $f14,$f4
    # Line 152
    c.lt.s $f13,$f4
    # Line 150
    c.lt.s $f12,$f4
    # Line 154
    movt.s	$f14,$f4,$fcc7
    # Line 156
    c.lt.s $f15,$f4
    # Line 152
    movt.s	$f13,$f4,$fcc6
    # Line 148
    lwc1	$f3,3544($a0)
    # Line 150
    movt.s	$f12,$f4,$fcc5
    # Line 156
    movf.s	$f4,$f15,$fcc4
    # Line 150
    mov.s	$f0,$f12
    # Line 154
    mov.s	$f2,$f14
    c.lt.s $f3,$f14
    # Line 152
    mov.s	$f1,$f13
    c.lt.s $f3,$f13
    # Line 150
    c.lt.s $f3,$f12
    # Line 154
    movt.s	$f2,$f3,$fcc3
    # Line 156
    c.lt.s	$f3,$f4
    # Line 152
    movt.s	$f1,$f3,$fcc2
    # Line 150
    movt.s	$f0,$f3,$fcc1
    # Line 163
    # lw $t9, -31988($gp) # &__glCrmPassBlendColor
    # Line 156
    movf.s	$f3,$f4,$fcc0
    # Line 161
    swc1	$f3,1852($a0)
    # Line 160
    swc1	$f2,1848($a0)
    # Line 159
    swc1	$f1,1844($a0)
    # Line 163
    bal __glCrmPassBlendColor
    # Line 158
    swc1	$f0,1840($a0)
    ld	$ra,8($sp)
.L0d93c198:
    # Line 164
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c1a4:
    # Line 145
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c198
    ld	$ra,8($sp)
.end __glcrmim_BlendColorEXT

# Function: __glcrmim_ColorMask
# Declared: Line 167 (Source lines: 168-177)
# Address: 0x0d93c1c0 - 0x0d93c22c (Size: 108 bytes, Frame: 16)
.globl __glcrmim_ColorMask
.ent __glcrmim_ColorMask
__glcrmim_ColorMask:
    # Line 168
    addiu	$sp,$sp,-16
    # Line 169
    lw	$at,4120($zero)
    lw	$a6,4112($zero)
    li	$v0,1
    # Line 168
    lui	$v1,0x11
    move	$a5,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,19404
    sd	$gp,0($sp)
    # Line 169
    beq	$at,$v0,.L0d93c218
    # Line 168
    addu	$gp,$t9,$v1
    # Line 174
    sb	$a3,1887($a6)
    # Line 176
    # lw $t9, -31964($gp) # &__glCrmPassColorMask
    # Line 173
    sb	$a2,1886($a6)
    # Line 172
    sb	$a1,1885($a6)
    # Line 176
    move	$a0,$a6
    bal __glCrmPassColorMask
    # Line 171
    sb	$a5,1884($a6)
    ld	$ra,8($sp)
.L0d93c20c:
    # Line 177
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c218:
    # Line 169
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c20c
    ld	$ra,8($sp)
.end __glcrmim_ColorMask

# Function: __glcrmim_ClearDepth
# Declared: Line 183 (Source lines: 184-193)
# Address: 0x0d93c230 - 0x0d93c2b4 (Size: 132 bytes, Frame: 16)
.globl __glcrmim_ClearDepth
.ent __glcrmim_ClearDepth
__glcrmim_ClearDepth:
    # Line 184
    addiu	$sp,$sp,-16
    # Line 185
    lw	$at,4120($zero)
    lw	$a0,4112($zero)
    li	$v0,1
    # Line 184
    lui	$v1,0x11
    sd	$ra,8($sp)
    addiu	$v1,$v1,19292
    sd	$gp,0($sp)
    # Line 185
    beq	$at,$v0,.L0d93c2a0
    # Line 184
    addu	$gp,$t9,$v1
    # Line 189
    dmtc1	$zero,$f1
    c.lt.d $f12,$f1
    ldc1	$f0,_lit8_3ff0000000000000
    movf.d	$f1,$f12,$fcc1
    c.lt.d	$f0,$f1
    # Line 192
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    # Line 189
    movf.d	$f0,$f1,$fcc0
    sdc1	$f0,1640($a0)
    # Line 190
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a1,11756($a0)
    ori	$a1,$a1,0x1
    # Line 192
    jal	__glCrmPassDepthFunc
    # Line 190
    sw	$a1,11756($a0)
    ld	$ra,8($sp)
.L0d93c294:
    # Line 193
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c2a0:
    # Line 185
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c294
    ld	$ra,8($sp)
.end __glcrmim_ClearDepth

# Function: __glcrmim_DepthFunc
# Declared: Line 195 (Source lines: 196-207)
# Address: 0x0d93c2c0 - 0x0d93c35c (Size: 156 bytes, Frame: 16)
.globl __glcrmim_DepthFunc
.ent __glcrmim_DepthFunc
__glcrmim_DepthFunc:
    # Line 196
    move	$a2,$a0
    addiu	$sp,$sp,-16
    # Line 197
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 196
    lui	$v1,0x11
    sd	$ra,8($sp)
    # Line 199
    sltiu	$a1,$a2,520
    # Line 196
    addiu	$v1,$v1,19148
    sd	$gp,0($sp)
    # Line 197
    beq	$at,$v0,.L0d93c348
    # Line 196
    addu	$gp,$t9,$v1
    # Line 199
    sltiu	$a0,$a0,512
    bnez	$a0,.L0d93c304
    # Line 200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 199
    bnez	$a1,.L0d93c31c
    # Line 200
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93c304:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d93c310:
    # Line 207
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c31c:
    # Line 203
    sw	$a2,1632($a3)
    # Line 204
    li	$a4,2
    sw	$a4,4120($zero)
    # Line 206
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    # Line 204
    lw	$a2,11756($a3)
    # Line 206
    move	$a0,$a3
    # Line 204
    ori	$a2,$a2,0x1
    # Line 206
    jal	__glCrmPassDepthFunc
    # Line 204
    sw	$a2,11756($a3)
    b	.L0d93c310
    ld	$ra,8($sp)
.L0d93c348:
    # Line 197
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c310
    ld	$ra,8($sp)
.end __glcrmim_DepthFunc

# Function: __glcrmim_DepthMask
# Declared: Line 209 (Source lines: 210-217)
# Address: 0x0d93c360 - 0x0d93c3d4 (Size: 116 bytes, Frame: 16)
.globl __glcrmim_DepthMask
.ent __glcrmim_DepthMask
__glcrmim_DepthMask:
    # Line 210
    addiu	$sp,$sp,-16
    # Line 211
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 210
    lui	$v1,0x11
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,18988
    sd	$gp,0($sp)
    # Line 211
    beq	$at,$v0,.L0d93c3c0
    # Line 210
    addu	$gp,$t9,$v1
    # Line 213
    sb	$a0,1636($a3)
    # Line 214
    li	$a2,2
    sw	$a2,4120($zero)
    # Line 216
    # lw $t9, -31804($gp) # &__glCrmPassDepthMask
    # Line 214
    lw	$a1,11756($a3)
    # Line 216
    move	$a0,$a3
    # Line 214
    ori	$a1,$a1,0x1
    # Line 216
    jal	__glCrmPassDepthMask
    # Line 214
    sw	$a1,11756($a3)
    ld	$ra,8($sp)
.L0d93c3b4:
    # Line 217
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c3c0:
    # Line 211
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c3b4
    ld	$ra,8($sp)
.end __glcrmim_DepthMask

# Function: __glcrmim_DrawBuffer
# Declared: Line 220 (Source lines: 221-298)
# Address: 0x0d93c3e0 - 0x0d93c7a8 (Size: 968 bytes, Frame: 16)
.globl __glcrmim_DrawBuffer
.ent __glcrmim_DrawBuffer
__glcrmim_DrawBuffer:
    # Line 221
    addiu	$sp,$sp,-16
    # Line 224
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 221
    lui	$v1,0x11
    sd	$ra,8($sp)
    addiu	$v1,$v1,18860
    sd	$gp,0($sp)
    # Line 224
    beq	$at,$v0,.L0d93c794
    # Line 221
    addu	$gp,$t9,$v1
    # Line 226
    sltiu	$a1,$a0,1030
    bnez	$a1,.L0d93c45c
    sltiu	$a3,$a0,1031
    bnez	$a3,.L0d93c4e0
    sltiu	$a4,$a0,1034
    bnez	$a4,.L0d93c4c8
    sltiu	$a5,$a0,1035
    bnez	$a5,.L0d93c440
    sltiu	$a6,$a0,1036
    bnez	$a6,.L0d93c774
    li	$a7,1035
    sltiu	$a7,$a0,1037
    beqz	$a7,.L0d93c5f4
    # Line 278
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93c440:
    # Line 251
    lw	$t1,3296($a2)
.L0d93c444:
    addiu	$t0,$a0,-1033
    slt	$t0,$t0,$t1
    beqz	$t0,.L0d93c5f4
    # Line 278
    nop	# was lw $t9, -26452($gp) # &__glSetError
    b	.L0d93c4f4
    # Line 254
    move	$a3,$a0
.L0d93c45c:
    # Line 226
    sltiu	$t2,$a0,1026
    bnez	$t2,.L0d93c560
    sltiu	$t3,$a0,1027
    bnez	$t3,.L0d93c60c
    sltiu	$t8,$a0,1028
    bnez	$t8,.L0d93c6bc
    sltiu	$t9,$a0,1029
    beqz	$t9,.L0d93c604
    li	$t1,1029
.L0d93c480:
    # Line 229
    lw	$ra,1892($a2)
    beq	$ra,$a0,.L0d93c4a0
    li	$a3,1028
    # Line 288
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($a2)
    ori	$at,$at,0x1
    sw	$at,11756($a2)
.L0d93c4a0:
    # Line 290
    lw	$v1,1888($a2)
    beq	$a3,$v1,.L0d93c550
    sw	$a0,1892($a2)
    # Line 292
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$a0,11756($a2)
    li	$a3,1028
    ori	$a0,$a0,0x1
    b	.L0d93c534
    sw	$a0,11756($a2)
.L0d93c4c8:
    # Line 226
    sltiu	$a3,$a0,1032
    bnez	$a3,.L0d93c660
    li	$v1,1031
    sltiu	$a4,$a0,1033
    beqz	$a4,.L0d93c784
    li	$t0,1033
.L0d93c4e0:
    # Line 233
    lbu	$a5,3222($a2)
    li	$a6,1032
    li	$a3,1028
    sltiu	$a5,$a5,1
    movz	$a3,$a6,$a5
.L0d93c4f4:
    # Line 286
    lw	$a6,1892($a2)
    beq	$a6,$a0,.L0d93c510
    # Line 288
    li	$t0,2
    sw	$t0,4120($zero)
    lw	$a7,11756($a2)
    ori	$a7,$a7,0x1
    sw	$a7,11756($a2)
.L0d93c510:
    # Line 290
    lw	$t1,1888($a2)
    beq	$t1,$a3,.L0d93c550
    sw	$a0,1892($a2)
    # Line 292
    li	$t3,2
    sw	$t3,4120($zero)
    lw	$t2,11756($a2)
    ori	$t2,$t2,0x1
    # Line 293
    beqz	$a3,.L0d93c75c
    # Line 292
    sw	$t2,11756($a2)
.L0d93c534:
    # Line 293
    lw	$t8,1888($a2)
    beqz	$t8,.L0d93c75c
    ld	$ra,8($sp)
    # Line 298
    sw	$a3,1888($a2)
    # Line 279
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c550:
    ld	$ra,8($sp)
.L0d93c554:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c560:
    # Line 226
    sltiu	$t9,$a0,1024
    bnez	$t9,.L0d93c5d0
    sltiu	$ra,$a0,1025
    bnez	$ra,.L0d93c480
    li	$at,1025
    bne	$a0,$at,.L0d93c5d8
    # Line 281
    sltiu	$t0,$a0,1037
    # Line 260
    lbu	$v0,3223($a2)
    beqz	$v0,.L0d93c5f4
    # Line 278
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 263
    lw	$v1,1892($a2)
    beq	$v1,$a0,.L0d93c5a8
    li	$a3,1028
    # Line 288
    li	$a4,2
    sw	$a4,4120($zero)
    lw	$a1,11756($a2)
    ori	$a1,$a1,0x1
    sw	$a1,11756($a2)
.L0d93c5a8:
    # Line 290
    lw	$a5,1888($a2)
    beq	$a3,$a5,.L0d93c550
    sw	$a0,1892($a2)
    # Line 292
    li	$a7,2
    sw	$a7,4120($zero)
    lw	$a6,11756($a2)
    li	$a3,1028
    ori	$a6,$a6,0x1
    b	.L0d93c534
    sw	$a6,11756($a2)
.L0d93c5d0:
    # Line 226
    beqz	$a0,.L0d93c71c
    # Line 281
    sltiu	$t0,$a0,1037
.L0d93c5d8:
    beqz	$t0,.L0d93c5f0
    # Line 284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93c5e0:
    jal	__glSetError
    li	$a0,1280
    b	.L0d93c554
    ld	$ra,8($sp)
.L0d93c5f0:
    # Line 278
    # lw $t9, -26452($gp) # &__glSetError
.L0d93c5f4:
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c554
    ld	$ra,8($sp)
.L0d93c604:
    # Line 226
    bne	$a0,$t1,.L0d93c5d8
    # Line 281
    sltiu	$t0,$a0,1037
.L0d93c60c:
    # Line 241
    lbu	$t2,3222($a2)
    beqz	$t2,.L0d93c5f4
    # Line 278
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 244
    lw	$t3,1892($a2)
    beq	$t3,$a0,.L0d93c638
    li	$a3,1029
    # Line 288
    li	$t9,2
    sw	$t9,4120($zero)
    lw	$t8,11756($a2)
    ori	$t8,$t8,0x1
    sw	$t8,11756($a2)
.L0d93c638:
    # Line 290
    lw	$ra,1888($a2)
    beq	$a3,$ra,.L0d93c550
    sw	$a0,1892($a2)
    # Line 292
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($a2)
    li	$a3,1029
    ori	$at,$at,0x1
    b	.L0d93c534
    sw	$at,11756($a2)
.L0d93c660:
    # Line 226
    bne	$a0,$v1,.L0d93c5d8
    # Line 281
    sltiu	$t0,$a0,1037
    # Line 272
    lbu	$a1,3223($a2)
    beqz	$a1,.L0d93c5f4
    # Line 278
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 275
    lw	$a3,1892($a2)
    beq	$a3,$a0,.L0d93c694
    li	$a3,1032
    # Line 288
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($a2)
    ori	$a4,$a4,0x1
    sw	$a4,11756($a2)
.L0d93c694:
    # Line 290
    lw	$a6,1888($a2)
    beq	$a3,$a6,.L0d93c550
    sw	$a0,1892($a2)
    # Line 292
    li	$t0,2
    sw	$t0,4120($zero)
    lw	$a7,11756($a2)
    li	$a3,1032
    ori	$a7,$a7,0x1
    b	.L0d93c534
    sw	$a7,11756($a2)
.L0d93c6bc:
    # Line 226
    li	$t1,1027
    bne	$a0,$t1,.L0d93c5d8
    # Line 281
    sltiu	$t0,$a0,1037
    # Line 266
    lbu	$t2,3223($a2)
    beqz	$t2,.L0d93c5f4
    # Line 278
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 269
    lw	$t3,1892($a2)
    beq	$t3,$a0,.L0d93c6f4
    li	$a3,1029
    # Line 288
    li	$t9,2
    sw	$t9,4120($zero)
    lw	$t8,11756($a2)
    ori	$t8,$t8,0x1
    sw	$t8,11756($a2)
.L0d93c6f4:
    # Line 290
    lw	$ra,1888($a2)
    beq	$a3,$ra,.L0d93c550
    sw	$a0,1892($a2)
    # Line 292
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($a2)
    li	$a3,1029
    ori	$at,$at,0x1
    b	.L0d93c534
    sw	$at,11756($a2)
.L0d93c71c:
    # Line 226
    lw	$v1,1892($a2)
    beq	$v1,$a0,.L0d93c738
    # Line 288
    li	$a3,2
    sw	$a3,4120($zero)
    lw	$a1,11756($a2)
    ori	$a1,$a1,0x1
    sw	$a1,11756($a2)
.L0d93c738:
    # Line 290
    lw	$a4,1888($a2)
    beqz	$a4,.L0d93c550
    sw	$a0,1892($a2)
    # Line 292
    li	$a6,2
    sw	$a6,4120($zero)
    lw	$a5,11756($a2)
    # Line 293
    move	$a3,$zero
    # Line 292
    ori	$a5,$a5,0x1
    sw	$a5,11756($a2)
.L0d93c75c:
    # Line 296
    # lw $t9, -31964($gp) # &__glCrmPassColorMask
    move	$a0,$a2
    bal __glCrmPassColorMask
    # Line 295
    sw	$a3,1888($a2)
    b	.L0d93c554
    ld	$ra,8($sp)
.L0d93c774:
    # Line 226
    beq	$a0,$a7,.L0d93c440
    nop
    b	.L0d93c5e0
    # Line 284
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93c784:
    # Line 226
    bne	$a0,$t0,.L0d93c5d8
    # Line 281
    sltiu	$t0,$a0,1037
    b	.L0d93c444
    # Line 251
    lw	$t1,3296($a2)
.L0d93c794:
    # Line 224
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c554
    ld	$ra,8($sp)
.end __glcrmim_DrawBuffer

# Function: __glcrmim_ReadBuffer
# Declared: Line 303 (Source lines: 304-360)
# Address: 0x0d93c7b0 - 0x0d93c8f8 (Size: 328 bytes, Frame: 16)
.globl __glcrmim_ReadBuffer
.ent __glcrmim_ReadBuffer
__glcrmim_ReadBuffer:
    # Line 360
    li	$t1,2
    # Line 304
    addiu	$sp,$sp,-16
    # Line 306
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 304
    lui	$v1,0x11
    # Line 319
    li	$a1,1029
    sd	$ra,8($sp)
    # Line 304
    addiu	$v1,$v1,17884
    sd	$gp,0($sp)
    # Line 306
    beq	$at,$v0,.L0d93c8e4
    # Line 304
    addu	$gp,$t9,$v1
    # Line 308
    addiu	$a4,$a0,-1024
    la	$a3,sub_0da40000
    # Line 341
    li	$v0,1029
    # Line 308
    sltiu	$a5,$a4,13
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,16384
    beqz	$a5,.L0d93c814
    addu	$a3,$a3,$a4
    lw	$a4,0($a3)
    # Line 335
    li	$a7,1028
    # Line 347
    li	$ra,1032
    # Line 308
    jr	$a4
    # Line 312
    li	$t2,1028
.L0d93c814:
    # Line 353
    sltiu	$a5,$a0,1037
    beqz	$a5,.L0d93c870
    # Line 356
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d93c864
    ld	$ra,8($sp)
.L0d93c830:
    # Line 332
    lbu	$a6,3223($a2)
    beqz	$a6,.L0d93c874
    # Line 350
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 335
    sw	$a7,1236($a2)
.L0d93c840:
    # Line 359
    sw	$a0,1240($a2)
    # Line 360
    sw	$t1,4120($zero)
    ld	$ra,8($sp)
    lw	$t0,11756($a2)
    # Line 351
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 360
    ori	$t0,$t0,0x10
    # Line 351
    jr	$ra
    # Line 360
    sw	$t0,11756($a2)
.L0d93c864:
    # Line 351
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93c870:
    # Line 350
    # lw $t9, -26452($gp) # &__glSetError
.L0d93c874:
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c864
    ld	$ra,8($sp)
.L0d93c884:
    # Line 313
    b	.L0d93c840
    # Line 312
    sw	$t2,1236($a2)
.L0d93c88c:
    # Line 326
    lw	$t8,3456($a2)
    addiu	$t3,$a0,-1033
    slt	$t3,$t3,$t8
    beqz	$t3,.L0d93c874
    # Line 350
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 330
    b	.L0d93c840
    # Line 329
    sw	$a0,1236($a2)
.L0d93c8a8:
    # Line 344
    lbu	$t9,3223($a2)
    beqz	$t9,.L0d93c874
    # Line 350
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 348
    b	.L0d93c840
    # Line 347
    sw	$ra,1236($a2)
.L0d93c8bc:
    # Line 338
    lbu	$at,3223($a2)
    beqz	$at,.L0d93c874
    # Line 350
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 342
    b	.L0d93c840
    # Line 341
    sw	$v0,1236($a2)
.L0d93c8d0:
    # Line 316
    lbu	$v1,3382($a2)
    beqz	$v1,.L0d93c874
    # Line 350
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 320
    b	.L0d93c840
    # Line 319
    sw	$a1,1236($a2)
.L0d93c8e4:
    # Line 306
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c864
    ld	$ra,8($sp)
.end __glcrmim_ReadBuffer

# Function: __glcrmim_Fogfv
# Declared: Line 366 (Source lines: 367-432)
# Address: 0x0d93c900 - 0x0d93cafc (Size: 508 bytes, Frame: 32)
.globl __glcrmim_Fogfv
.ent __glcrmim_Fogfv
__glcrmim_Fogfv:
    # Line 367
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    move	$a2,$a1
    # Line 368
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a4,1
    # Line 367
    lui	$v0,0x11
    # Line 370
    li	$a7,2917
    sd	$ra,16($sp)
    # Line 367
    addiu	$v0,$v0,17548
    sd	$gp,0($sp)
    # Line 368
    beq	$at,$a4,.L0d93cad4
    # Line 367
    addu	$gp,$t9,$v0
    # Line 370
    li	$v1,2918
    beq	$a0,$v1,.L0d93caac
    li	$a1,2914
    beq	$a0,$a1,.L0d93ca30
    # Line 376
    mtc1	$zero,$f5
    # Line 370
    li	$a3,2916
    beq	$a0,$a3,.L0d93ca4c
    # Line 400
    li	$t0,2048
    # Line 370
    li	$a5,2915
    beq	$a0,$a5,.L0d93ca60
    # Line 400
    li	$a1,2049
    # Line 370
    li	$a6,2913
    beq	$a0,$a6,.L0d93ca74
    nop
    beq	$a0,$a7,.L0d93c984
    # Line 412
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d93c9e8
    ld	$ra,16($sp)
.L0d93c984:
    # Line 400
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    sll	$a0,$a0,0x0
    beq	$a0,$t0,.L0d93c9f8
    nop
    beq	$a0,$a1,.L0d93c9fc
    li	$a1,9729
    beq	$a1,$a0,.L0d93c9fc
    # Line 407
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d93c9e8
    ld	$ra,16($sp)
.L0d93c9bc:
    # Line 427
    swc1	$f1,1620($s0)
.L0d93c9c0:
    # Line 431
    li	$a3,2
.L0d93c9c4:
    sw	$a3,4120($zero)
    lw	$a2,11756($s0)
    ld	$ra,16($sp)
    # Line 432
    ld	$gp,0($sp)
    # Line 431
    ori	$a2,$a2,0x1
    sw	$a2,11756($s0)
    # Line 432
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93c9e8:
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93c9f8:
    # Line 408
    li	$a1,9729
.L0d93c9fc:
    # Line 404
    sw	$a0,1588($s0)
.L0d93ca00:
    # Line 414
    bne	$a1,$a0,.L0d93c9c4
    # Line 431
    li	$a3,2
    # Line 414
    lwc1	$f4,1616($s0)
    lwc1	$f5,1612($s0)
    c.eq.s	$f5,$f4
    bc1t	.L0d93c9bc
    # Line 427
    mtc1	$zero,$f1
    # Line 421
    lwc1	$f2,3544($s0)
    sub.s	$f3,$f4,$f5
    div.s	$f2,$f2,$f3
    b	.L0d93c9c0
    swc1	$f2,1620($s0)
.L0d93ca30:
    # Line 376
    lwc1	$f4,0($a2)
    c.lt.s $f4,$f5
    bc1t .L0d93cae8
    # Line 381
    li	$a1,9729
    lw	$a0,1588($s0)
    b	.L0d93ca00
    # Line 380
    swc1	$f4,1608($s0)
.L0d93ca4c:
    # Line 384
    lwc1	$f6,0($a2)
    # Line 385
    lw	$a0,1588($s0)
    li	$a1,9729
    b	.L0d93ca00
    # Line 384
    swc1	$f6,1616($s0)
.L0d93ca60:
    # Line 388
    lwc1	$f7,0($a2)
    # Line 389
    lw	$a0,1588($s0)
    li	$a1,9729
    b	.L0d93ca00
    # Line 388
    swc1	$f7,1612($s0)
.L0d93ca74:
    # Line 396
    lwc1	$f9,0($a2)
    lw	$a5,3252($s0)
    trunc.w.s	$f9,$f9
    dsllv	$a5,$a4,$a5
    daddiu	$a5,$a5,-1
    mfc1	$a6,$f9
    sll	$a5,$a5,0x0
    and	$a5,$a5,$a6
    mtc1	$a5,$f8
    cvt.s.w	$f8,$f8
    # Line 398
    lw	$a0,1588($s0)
    li	$a1,9729
    b	.L0d93ca00
    # Line 396
    swc1	$f8,1624($s0)
.L0d93caac:
    # Line 372
    # lw $t9, -25836($gp) # &__glClampAndScaleColorf
    move	$a0,$s0
    jal	__glClampAndScaleColorf
    addiu	$a1,$s0,1592
    # Line 373
    # lw $t9, -31968($gp) # &__glCrmPassFog
    bal __glCrmPassFog
    move	$a0,$s0
    li	$a1,9729
    b	.L0d93ca00
    lw	$a0,1588($s0)
.L0d93cad4:
    # Line 368
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93c9e8
    ld	$ra,16($sp)
.L0d93cae8:
    # Line 377
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d93c9e8
    ld	$ra,16($sp)
.end __glcrmim_Fogfv

# Function: __glcrmim_Fogf
# Declared: Line 434 (Source lines: 435-449)
# Address: 0x0d93cb00 - 0x0d93cb80 (Size: 128 bytes, Frame: 32)
.globl __glcrmim_Fogf
.ent __glcrmim_Fogf
__glcrmim_Fogf:
    # Line 435
    addiu	$sp,$sp,-32
    swc1	$f13,24($sp)
    # Line 437
    li	$at,2913
    # Line 435
    lui	$v0,0x11
    sd	$ra,8($sp)
    addiu	$v0,$v0,17036
    sd	$gp,0($sp)
    # Line 437
    beq	$a0,$at,.L0d93cb6c
    # Line 435
    addu	$gp,$t9,$v0
    # Line 437
    li	$v1,2914
    beq	$a0,$v1,.L0d93cb70
    # Line 443
    nop	# was lw $t9, -32064($gp) # &__glcrmim_Fogfv
    # Line 437
    li	$a1,2915
    beq	$a0,$a1,.L0d93cb6c
    li	$a2,2916
    beq	$a0,$a2,.L0d93cb70
    # Line 443
    nop	# was lw $t9, -32064($gp) # &__glcrmim_Fogfv
    # Line 437
    li	$a3,2917
    beq	$a0,$a3,.L0d93cb70
    # Line 443
    nop	# was lw $t9, -32064($gp) # &__glcrmim_Fogfv
    # Line 446
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d93cb60:
    # Line 449
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93cb6c:
    # Line 443
    # lw $t9, -32064($gp) # &__glcrmim_Fogfv
.L0d93cb70:
    bal __glcrmim_Fogfv
    addiu	$a1,$sp,24
    b	.L0d93cb60
    ld	$ra,8($sp)
.end __glcrmim_Fogf

# Function: __glcrmim_Fogiv
# Declared: Line 451 (Source lines: 452-512)
# Address: 0x0d93cb80 - 0x0d93cd80 (Size: 512 bytes, Frame: 32)
.globl __glcrmim_Fogiv
.ent __glcrmim_Fogiv
__glcrmim_Fogiv:
    # Line 452
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    move	$a2,$a1
    # Line 453
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$a5,1
    # Line 452
    lui	$v0,0x11
    # Line 455
    li	$a7,2917
    sd	$ra,16($sp)
    # Line 452
    addiu	$v0,$v0,16908
    sd	$gp,8($sp)
    # Line 453
    beq	$at,$a5,.L0d93cd50
    # Line 452
    addu	$gp,$t9,$v0
    # Line 455
    li	$v1,2918
    beq	$a0,$v1,.L0d93cd2c
    # Line 457
    nop	# was lw $t9, -25824($gp) # &__glClampAndScaleColori
    # Line 455
    li	$a1,2914
    beq	$a0,$a1,.L0d93cca8
    li	$a3,2916
    beq	$a0,$a3,.L0d93ccc8
    # Line 480
    li	$t0,2048
    # Line 455
    li	$a4,2915
    beq	$a0,$a4,.L0d93cce4
    # Line 480
    li	$t1,2049
    # Line 455
    li	$a6,2913
    beq	$a0,$a6,.L0d93cd00
    # Line 480
    li	$a4,9729
    # Line 455
    beq	$a0,$a7,.L0d93cc08
    # Line 492
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d93cc64
    ld	$ra,16($sp)
.L0d93cc08:
    # Line 480
    lw	$a1,0($a2)
    beq	$a1,$t0,.L0d93cc70
    # Line 484
    move	$a0,$a1
    # Line 480
    beq	$a1,$t1,.L0d93cc74
    nop
    beq	$a1,$a4,.L0d93cc74
    # Line 487
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d93cc64
    ld	$ra,16($sp)
.L0d93cc38:
    # Line 507
    swc1	$f0,1620($s0)
.L0d93cc3c:
    # Line 511
    li	$t3,2
.L0d93cc40:
    sw	$t3,4120($zero)
    lw	$t2,11756($s0)
    ld	$ra,16($sp)
    # Line 512
    ld	$gp,8($sp)
    # Line 511
    ori	$t2,$t2,0x1
    sw	$t2,11756($s0)
    # Line 512
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93cc64:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93cc70:
    # Line 488
    li	$a4,9729
.L0d93cc74:
    # Line 484
    sw	$a1,1588($s0)
.L0d93cc78:
    # Line 494
    bne	$a4,$a0,.L0d93cc40
    # Line 511
    li	$t3,2
    # Line 494
    lwc1	$f4,1616($s0)
    lwc1	$f5,1612($s0)
    c.eq.s	$f5,$f4
    bc1t	.L0d93cc38
    # Line 507
    mtc1	$zero,$f0
    # Line 501
    lwc1	$f1,3544($s0)
    sub.s	$f2,$f4,$f5
    div.s	$f1,$f1,$f2
    b	.L0d93cc3c
    swc1	$f1,1620($s0)
.L0d93cca8:
    # Line 461
    lw	$a1,0($a2)
    # Line 466
    li	$a4,9729
    # Line 461
    bltz	$a1,.L0d93cd68
    # Line 465
    mtc1	$a1,$f3
    cvt.s.w	$f3,$f3
    # Line 466
    lw	$a0,1588($s0)
    b	.L0d93cc78
    # Line 465
    swc1	$f3,1608($s0)
.L0d93ccc8:
    # Line 469
    lw	$t8,0($a2)
    mtc1	$t8,$f4
    cvt.s.w	$f4,$f4
    # Line 470
    lw	$a0,1588($s0)
    li	$a4,9729
    b	.L0d93cc78
    # Line 469
    swc1	$f4,1616($s0)
.L0d93cce4:
    # Line 473
    lw	$t9,0($a2)
    mtc1	$t9,$f5
    cvt.s.w	$f5,$f5
    # Line 474
    lw	$a0,1588($s0)
    li	$a4,9729
    b	.L0d93cc78
    # Line 473
    swc1	$f5,1612($s0)
.L0d93cd00:
    # Line 476
    lw	$at,3252($s0)
    lw	$ra,0($a2)
    dsllv	$at,$a5,$at
    daddiu	$at,$at,-1
    and	$ra,$ra,$at
    dmtc1	$ra,$f6
    cvt.s.l	$f6,$f6
    # Line 478
    lw	$a0,1588($s0)
    li	$a4,9729
    b	.L0d93cc78
    # Line 476
    swc1	$f6,1624($s0)
.L0d93cd2c:
    # Line 457
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,1592
    # Line 458
    # lw $t9, -31968($gp) # &__glCrmPassFog
    bal __glCrmPassFog
    move	$a0,$s0
    li	$a4,9729
    b	.L0d93cc78
    lw	$a0,1588($s0)
.L0d93cd50:
    # Line 453
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d93cc64
    ld	$ra,16($sp)
.L0d93cd68:
    # Line 462
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d93cc64
    ld	$ra,16($sp)
.end __glcrmim_Fogiv

# Function: __glcrmim_Fogi
# Declared: Line 514 (Source lines: 515-529)
# Address: 0x0d93cd80 - 0x0d93cdf4 (Size: 116 bytes, Frame: 32)
.globl __glcrmim_Fogi
.ent __glcrmim_Fogi
__glcrmim_Fogi:
    # Line 515
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    # Line 517
    li	$at,2913
    # Line 515
    lui	$v0,0x11
    sw	$a1,28($sp)
    addiu	$v0,$v0,16396
    sd	$gp,0($sp)
    # Line 517
    beq	$a0,$at,.L0d93cde0
    # Line 515
    addu	$gp,$t9,$v0
    # Line 517
    li	$v1,2914
    beq	$a0,$v1,.L0d93cde0
    li	$a1,2915
    beq	$a0,$a1,.L0d93cde0
    li	$a2,2916
    beq	$a0,$a2,.L0d93cde0
    li	$a3,2917
    beq	$a0,$a3,.L0d93cde0
    # Line 526
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d93cdd4:
    # Line 529
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93cde0:
    # Line 523
    # lw $t9, -32056($gp) # &__glcrmim_Fogiv
    bal __glcrmim_Fogiv
    addiu	$a1,$sp,28
    b	.L0d93cdd4
    ld	$ra,8($sp)
.end __glcrmim_Fogi

# Function: __glcrmim_IndexMask
# Declared: Line 532 (Source lines: 533-540)
# Address: 0x0d93ce00 - 0x0d93ce68 (Size: 104 bytes, Frame: 16)
.globl __glcrmim_IndexMask
.ent __glcrmim_IndexMask
__glcrmim_IndexMask:
    # Line 533
    addiu	$sp,$sp,-16
    # Line 534
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 533
    lui	$v1,0x11
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,16268
    sd	$gp,0($sp)
    # Line 534
    beq	$at,$v0,.L0d93ce54
    # Line 533
    addu	$gp,$t9,$v1
    # Line 539
    # lw $t9, -31964($gp) # &__glCrmPassColorMask
    # Line 536
    lw	$a1,30736($a3)
    # Line 539
    move	$a0,$a3
    # Line 536
    and	$a1,$a1,$a2
    # Line 539
    bal __glCrmPassColorMask
    # Line 537
    sw	$a1,1880($a3)
    ld	$ra,8($sp)
.L0d93ce48:
    # Line 540
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93ce54:
    # Line 534
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93ce48
    ld	$ra,8($sp)
.end __glcrmim_IndexMask

# Function: __glcrmim_LogicOp
# Declared: Line 543 (Source lines: 544-554)
# Address: 0x0d93ce70 - 0x0d93cef8 (Size: 136 bytes, Frame: 16)
.globl __glcrmim_LogicOp
.ent __glcrmim_LogicOp
__glcrmim_LogicOp:
    # Line 544
    move	$a2,$a0
    addiu	$sp,$sp,-16
    # Line 545
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 544
    lui	$v1,0x11
    sd	$ra,8($sp)
    # Line 547
    sltiu	$a1,$a2,5392
    # Line 544
    addiu	$v1,$v1,16156
    sd	$gp,0($sp)
    # Line 545
    beq	$at,$v0,.L0d93cee4
    # Line 544
    addu	$gp,$t9,$v1
    # Line 547
    sltiu	$a0,$a0,5376
    bnez	$a0,.L0d93ceb4
    # Line 548
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 547
    bnez	$a1,.L0d93cecc
    # Line 548
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93ceb4:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d93cec0:
    # Line 554
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93cecc:
    # Line 553
    # lw $t9, -31976($gp) # &__glCrmPassLogicOp
    move	$a0,$a3
    bal __glCrmPassLogicOp
    # Line 551
    sw	$a2,1856($a3)
    b	.L0d93cec0
    ld	$ra,8($sp)
.L0d93cee4:
    # Line 545
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93cec0
    ld	$ra,8($sp)
.end __glcrmim_LogicOp

# Function: __glcrmim_ShadeModel
# Declared: Line 556 (Source lines: 557-568)
# Address: 0x0d93cf00 - 0x0d93cf9c (Size: 156 bytes, Frame: 16)
.globl __glcrmim_ShadeModel
.ent __glcrmim_ShadeModel
__glcrmim_ShadeModel:
    # Line 557
    move	$a2,$a0
    addiu	$sp,$sp,-16
    # Line 558
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 557
    lui	$v1,0x11
    sd	$ra,8($sp)
    # Line 560
    sltiu	$a1,$a2,7426
    # Line 557
    addiu	$v1,$v1,16012
    sd	$gp,0($sp)
    # Line 558
    beq	$at,$v0,.L0d93cf88
    # Line 557
    addu	$gp,$t9,$v1
    # Line 560
    sltiu	$a0,$a0,7424
    bnez	$a0,.L0d93cf44
    # Line 561
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 560
    bnez	$a1,.L0d93cf5c
    # Line 561
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93cf44:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d93cf50:
    # Line 568
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93cf5c:
    # Line 564
    sw	$a2,1392($a3)
    # Line 565
    li	$a4,2
    sw	$a4,4120($zero)
    # Line 567
    # lw $t9, -31960($gp) # &__glCrmShadeModel
    # Line 565
    lw	$a2,11756($a3)
    # Line 567
    move	$a0,$a3
    # Line 565
    ori	$a2,$a2,0x1
    # Line 567
    bal __glCrmShadeModel
    # Line 565
    sw	$a2,11756($a3)
    b	.L0d93cf50
    ld	$ra,8($sp)
.L0d93cf88:
    # Line 558
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93cf50
    ld	$ra,8($sp)
.end __glcrmim_ShadeModel

# Function: __glcrmim_PolygonStipple
# Declared: Line 572 (Source lines: 573-592)
# Address: 0x0d93cfa0 - 0x0d93d08c (Size: 236 bytes, Frame: 32)
.globl __glcrmim_PolygonStipple
.ent __glcrmim_PolygonStipple
__glcrmim_PolygonStipple:
    # Line 573
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 576
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 573
    lui	$v1,0x11
    move	$a5,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,15852
    sd	$gp,8($sp)
    # Line 576
    beq	$at,$v0,.L0d93d058
    # Line 573
    addu	$gp,$t9,$v1
    # Line 580
    move	$a0,$s0
    # lw $t9, -25844($gp) # &__glFillImage
    addiu	$a6,$s0,512
    li	$a4,6656
    li	$a3,6400
    li	$a2,32
    jal	__glFillImage
    li	$a1,32
    # Line 581
    lw	$t9,12656($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,-21604($gp)
    bltz	$a0,.L0d93d070
.L0d93d004:
    ld	$ra,16($sp)
    # Line 586
    beqz	$a0,.L0d93d02c
    # Line 591
    li	$a5,2
    # Line 586
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a0,-32608($a2)
    andi	$a1,$a0,0x1
    beqz	$a1,.L0d93d02c
    # Line 588
    ori	$a3,$a0,0x6
    sw	$a3,-32608($a2)
.L0d93d02c:
    # Line 591
    sw	$a5,4120($zero)
    lw	$a4,11756($s0)
    # Line 592
    ld	$gp,8($sp)
    # Line 591
    ori	$a4,$a4,0x4
    sw	$a4,11756($s0)
    # Line 592
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93d04c:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93d058:
    # Line 576
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d93d04c
    ld	$ra,16($sp)
.L0d93d070:
    # Line 584
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,16440
    sltu	$a0,$zero,$v0
    b	.L0d93d004
    sw	$a0,-21604($gp)
.end __glcrmim_PolygonStipple

# Function: __glcrmim_StencilMask
# Declared: Line 597 (Source lines: 598-606)
# Address: 0x0d93d090 - 0x0d93d120 (Size: 144 bytes, Frame: 16)
.globl __glcrmim_StencilMask
.ent __glcrmim_StencilMask
__glcrmim_StencilMask:
    # Line 598
    addiu	$sp,$sp,-16
    # Line 599
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$a4,1
    # Line 598
    lui	$v0,0x11
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v0,$v0,15612
    sd	$gp,0($sp)
    # Line 599
    beq	$at,$a4,.L0d93d10c
    # Line 598
    addu	$gp,$t9,$v0
    # Line 601
    lw	$a5,3248($a3)
    sllv	$a4,$a4,$a5
    # Line 605
    # lw $t9, -31332($gp) # &__glCrmPassStencilMask
    # Line 601
    addiu	$a4,$a4,-1
    and	$a4,$a0,$a4
    sh	$a4,1674($a3)
    # Line 602
    li	$a2,2
    sw	$a2,4120($zero)
    # Line 603
    lw	$a1,11752($a3)
    # Line 602
    lw	$v1,11756($a3)
    # Line 605
    move	$a0,$a3
    # Line 603
    ori	$a1,$a1,0x2
    sw	$a1,11752($a3)
    # Line 602
    ori	$v1,$v1,0x1
    # Line 605
    jal	__glCrmPassStencilMask
    # Line 602
    sw	$v1,11756($a3)
    ld	$ra,8($sp)
.L0d93d100:
    # Line 606
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93d10c:
    # Line 599
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93d100
    ld	$ra,8($sp)
.end __glcrmim_StencilMask

# Function: __glcrmim_StencilFunc
# Declared: Line 608 (Source lines: 609-625)
# Address: 0x0d93d120 - 0x0d93d1f8 (Size: 216 bytes, Frame: 16)
.globl __glcrmim_StencilFunc
.ent __glcrmim_StencilFunc
__glcrmim_StencilFunc:
    # Line 609
    move	$a4,$a0
    addiu	$sp,$sp,-16
    # Line 610
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$a6,1
    # Line 609
    lui	$v0,0x11
    # Line 612
    sltiu	$v1,$a0,512
    sd	$ra,8($sp)
    # Line 609
    addiu	$v0,$v0,15468
    sd	$gp,0($sp)
    # Line 610
    beq	$at,$a6,.L0d93d1e4
    # Line 609
    addu	$gp,$t9,$v0
    # Line 612
    sltiu	$a0,$a0,520
    bnez	$v1,.L0d93d1d4
    # Line 613
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 612
    beqz	$a0,.L0d93d1d4
    # Line 613
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 616
    lw	$t0,3248($a5)
    sllv	$a6,$a6,$t0
    # Line 618
    sw	$a4,1664($a5)
    # Line 616
    slti	$a7,$a1,0
    addiu	$a6,$a6,-1
    # Line 624
    # lw $t9, -31324($gp) # &__glCrmPassStencilMode
    # Line 616
    movn	$a1,$zero,$a7
    # Line 620
    and	$a4,$a6,$a2
    sh	$a4,1672($a5)
    # Line 617
    move	$a7,$a6
    # Line 616
    slt	$t0,$a6,$a1
    movz	$a7,$a1,$t0
    # Line 619
    sh	$a7,1670($a5)
    # Line 621
    li	$a3,2
    sw	$a3,4120($zero)
    # Line 622
    lw	$a2,11752($a5)
    # Line 621
    lw	$a1,11756($a5)
    # Line 624
    move	$a0,$a5
    # Line 622
    ori	$a2,$a2,0x2
    sw	$a2,11752($a5)
    # Line 621
    ori	$a1,$a1,0x1
    # Line 624
    jal	__glCrmPassStencilMode
    # Line 621
    sw	$a1,11756($a5)
    ld	$ra,8($sp)
.L0d93d1c4:
    # Line 625
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 613
    # lw $t9, -26452($gp) # &__glSetError
.L0d93d1d4:
    jal	__glSetError
    li	$a0,1280
    b	.L0d93d1c4
    ld	$ra,8($sp)
.L0d93d1e4:
    # Line 610
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93d1c4
    ld	$ra,8($sp)
.end __glcrmim_StencilFunc

# Function: __glcrmim_StencilOp
# Declared: Line 627 (Source lines: 628-665)
# Address: 0x0d93d200 - 0x0d93d350 (Size: 336 bytes, Frame: 16)
.globl __glcrmim_StencilOp
.ent __glcrmim_StencilOp
__glcrmim_StencilOp:
    # Line 628
    move	$a4,$a0
    addiu	$sp,$sp,-16
    # Line 629
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 628
    lui	$v1,0x11
    # Line 631
    li	$t0,7683
    sd	$ra,8($sp)
    # Line 628
    addiu	$v1,$v1,15244
    sd	$gp,0($sp)
    # Line 629
    beq	$at,$v0,.L0d93d33c
    # Line 628
    addu	$gp,$t9,$v1
    # Line 631
    beqz	$a0,.L0d93d274
    # Line 649
    li	$v1,7682
    # Line 631
    li	$a0,5386
    beq	$a4,$a0,.L0d93d274
    li	$a3,7680
    beq	$a4,$a3,.L0d93d274
    li	$a6,7681
    beq	$a4,$a6,.L0d93d274
    li	$a7,7682
    beq	$a4,$a7,.L0d93d274
    nop
    beq	$a4,$t0,.L0d93d274
    # Line 636
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d93d2f0
    ld	$ra,8($sp)
.L0d93d274:
    # Line 640
    beqz	$a1,.L0d93d2b4
    li	$t1,5386
    beq	$a1,$t1,.L0d93d2b4
    li	$t2,7680
    beq	$a1,$t2,.L0d93d2b4
    li	$t3,7681
    beq	$a1,$t3,.L0d93d2b4
    li	$t8,7682
    beq	$a1,$t8,.L0d93d2b4
    li	$t9,7683
    beq	$a1,$t9,.L0d93d2b4
    # Line 645
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d93d2f0
    ld	$ra,8($sp)
.L0d93d2b4:
    # Line 649
    beqz	$a2,.L0d93d2fc
    li	$ra,5386
    beq	$a2,$ra,.L0d93d2fc
    li	$at,7680
    beq	$a2,$at,.L0d93d2fc
    li	$v0,7681
    beq	$a2,$v0,.L0d93d2fc
    nop
    beq	$a2,$v1,.L0d93d2fc
    li	$a0,7683
    beq	$a2,$a0,.L0d93d2fc
    # Line 654
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d93d2f0:
    # Line 665
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d93d2fc:
    # Line 660
    sw	$a2,1684($a5)
    # Line 659
    sw	$a1,1680($a5)
    # Line 658
    sw	$a4,1676($a5)
    # Line 661
    li	$a3,2
    sw	$a3,4120($zero)
    # Line 662
    lw	$a2,11752($a5)
    # Line 664
    # lw $t9, -31324($gp) # &__glCrmPassStencilMode
    # Line 661
    lw	$a1,11756($a5)
    # Line 664
    move	$a0,$a5
    # Line 662
    ori	$a2,$a2,0x4
    sw	$a2,11752($a5)
    # Line 661
    ori	$a1,$a1,0x1
    # Line 664
    jal	__glCrmPassStencilMode
    # Line 661
    sw	$a1,11756($a5)
    b	.L0d93d2f0
    ld	$ra,8($sp)
.L0d93d33c:
    # Line 629
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93d2f0
    ld	$ra,8($sp)
.end __glcrmim_StencilOp

# Function: __glcrmim_Scissor
# Declared: Line 673 (Source lines: 674-696)
# Address: 0x0d93d350 - 0x0d93d424 (Size: 212 bytes, Frame: 32)
.globl __glcrmim_Scissor
.ent __glcrmim_Scissor
__glcrmim_Scissor:
    # Line 674
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 675
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 674
    lui	$v1,0x11
    move	$a5,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,14908
    sd	$gp,8($sp)
    # Line 675
    beq	$at,$v0,.L0d93d410
    # Line 674
    addu	$gp,$t9,$v1
    # Line 677
    bltz	$a2,.L0d93d400
    # Line 678
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 677
    bltz	$a3,.L0d93d400
    # Line 678
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 683
    lw	$a0,2524($s0)
    lw	$a6,2532($s0)
    lw	$a4,2528($s0)
    bne	$a0,$a5,.L0d93d3cc
    lw	$a7,2536($s0)
    bne	$a4,$a1,.L0d93d3cc
    nop
    bne	$a6,$a2,.L0d93d3cc
    nop
    bne	$a7,$a3,.L0d93d3cc
    ld	$ra,16($sp)
.L0d93d3bc:
    ld	$s0,0($sp)
    # Line 696
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93d3cc:
    # Line 693
    sw	$a3,2536($s0)
    # Line 694
    lw	$t9,11908($s0)
    # Line 692
    sw	$a2,2532($s0)
    # Line 691
    sw	$a1,2528($s0)
    # Line 694
    move	$a0,$s0
    jal	__glSetError
    # Line 690
    sw	$a5,2524($s0)
    # Line 695
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0d93d3bc
    ld	$ra,16($sp)
    # Line 678
    # lw $t9, -26452($gp) # &__glSetError
.L0d93d400:
    jal	__glSetError
    li	$a0,1281
    b	.L0d93d3bc
    ld	$ra,16($sp)
.L0d93d410:
    # Line 675
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d93d3bc
    ld	$ra,16($sp)
.end __glcrmim_Scissor

# Function: __glcrmim_PopAttrib
# Declared: Line 701 (Source lines: 702-968)
# Address: 0x0d93d430 - 0x0d93e38c (Size: 3932 bytes, Frame: 224)
.globl __glcrmim_PopAttrib
.ent __glcrmim_PopAttrib
__glcrmim_PopAttrib:
    # Line 702
    addiu	$sp,$sp,-96
    sd	$s3,0($sp)
    # Line 706
    lw	$s3,4112($zero)
    sd	$s2,40($sp)
    lw	$at,4120($zero)
    sd	$ra,56($sp)
    li	$v0,1
    # Line 702
    lui	$v1,0x11
    sd	$s1,64($sp)
    addiu	$v1,$v1,14684
    sd	$gp,24($sp)
    # Line 706
    beq	$at,$v0,.L0d93e374
    # Line 702
    addu	$gp,$t9,$v1
    # Line 708
    lw	$a0,12676($s3)
    lw	$a1,12672($s3)
    sltu	$a1,$a1,$a0
    beqz	$a1,.L0d93e348
    # Line 967
    nop	# was lw $t9, -26452($gp) # &__glSetError
    sd	$s5,8($sp)
    # Line 711
    lw	$s5,-4($a0)
    sd	$s6,48($sp)
    # Line 713
    lw	$s6,0($s5)
    # Line 714
    andi	$a3,$s6,0x200
    addiu	$a2,$a0,-4
    beqz	$a3,.L0d93d4b8
    sw	$a2,12676($s3)
    # Line 716
    lwc1	$f3,1472($s5)
    swc1	$f3,1648($s3)
    lwc1	$f2,1476($s5)
    swc1	$f2,1652($s3)
    lwc1	$f1,1480($s5)
    swc1	$f1,1656($s3)
    lwc1	$f0,1484($s5)
    swc1	$f0,1660($s3)
.L0d93d4b8:
    andi	$a4,$s6,0x4000
    beqz	$a4,.L0d93d5d8
    # Line 736
    andi	$at,$s6,0x1
    addiu	$a7,$s5,1648
    addiu	$a4,$s3,1824
    li	$a2,0x8
    # Line 719
    addiu	$a6,$s3,1820
    addiu	$a5,$s5,1644
    lw	$t0,1644($s5)
    li	$a0,4
    li	$a1,0x12
    sw	$t0,1820($s3)
    nop
    nop
.L0d93d4f0:
    addu	$t0,$a0,$a5
    addu	$t1,$a0,$a6
    lw	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a7
    sw	$t0,0($t1)
    addu	$t0,$a0,$a4
    lw	$a3,0($a3)
    addu	$a0,$a0,$a2
    bgtz	$a1,.L0d93d4f0
    sw	$a3,0($t0)
    # Line 720
    lw	$t8,1792($s3)
    # Line 728
    # lw $t9, -32004($gp) # &__glCrmEnableAlphaTest
    # Line 720
    li	$ra,-16
    and	$t8,$t8,$ra
    sw	$t8,1792($s3)
    # Line 721
    lw	$ra,1616($s5)
    # Line 726
    lw	$t3,11752($s3)
    # Line 721
    andi	$ra,$ra,0xf
    # Line 723
    lw	$t1,1796($s3)
    # Line 721
    or	$t8,$t8,$ra
    sw	$t8,1792($s3)
    # Line 723
    li	$t2,-2049
    and	$t1,$t1,$t2
    sw	$t1,1796($s3)
    # Line 724
    lw	$t2,1620($s5)
    # Line 728
    move	$a0,$s3
    # Line 726
    ori	$t3,$t3,0x1
    sw	$t3,11752($s3)
    # Line 724
    andi	$t2,$t2,0x800
    or	$t1,$t1,$t2
    # Line 728
    bal __glCrmEnableAlphaTest
    # Line 724
    sw	$t1,1796($s3)
    # Line 729
    # lw $t9, -32000($gp) # &__glCrmPassAlphaFunc
    bal __glCrmPassAlphaFunc
    move	$a0,$s3
    # Line 730
    # lw $t9, -31996($gp) # &__glCrmEnableBlend
    bal __glCrmEnableBlend
    move	$a0,$s3
    # Line 731
    # lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    bal __glCrmPassBlendFunc
    move	$a0,$s3
    # Line 732
    # lw $t9, -31988($gp) # &__glCrmPassBlendColor
    bal __glCrmPassBlendColor
    move	$a0,$s3
    # Line 733
    # lw $t9, -31964($gp) # &__glCrmPassColorMask
    bal __glCrmPassColorMask
    move	$a0,$s3
    # Line 734
    # lw $t9, -31984($gp) # &__glCrmEnableDither
    bal __glCrmEnableDither
    move	$a0,$s3
    # Line 735
    # lw $t9, -31980($gp) # &__glCrmEnableLogicOp
    bal __glCrmEnableLogicOp
    move	$a0,$s3
    # Line 736
    # lw $t9, -31976($gp) # &__glCrmPassLogicOp
    bal __glCrmPassLogicOp
    move	$a0,$s3
    andi	$at,$s6,0x1
.L0d93d5d8:
    beqz	$at,.L0d93d680
    # Line 739
    andi	$ra,$s6,0x100
    li	$a5,2
    li	$a0,34
    move	$a1,$zero
    addiu	$a4,$s3,184
    addiu	$a2,$s5,8
.L0d93d5f4:
    addiu	$a5,$a5,-1
    addu	$v0,$a1,$a2
    addiu	$a0,$a0,-1
    addu	$v1,$a1,$a4
    ld	$v0,0($v0)
    addiu	$a1,$a1,8
    bnez	$a5,.L0d93d5f4
    sd	$v0,0($v1)
    addiu	$t0,$a2,24
    addiu	$a5,$a4,24
    li	$t3,0x20
    addiu	$a6,$a2,8
    addiu	$a7,$a4,8
    addiu	$t1,$a4,16
    addiu	$t2,$a2,16
.L0d93d630:
    addu	$t9,$a1,$a2
    addu	$ra,$a1,$a4
    ld	$t9,0($t9)
    addu	$t8,$a1,$a6
    sd	$t9,0($ra)
    addu	$t9,$a1,$a7
    ld	$t8,0($t8)
    addu	$a3,$a1,$t2
    sd	$t8,0($t9)
    addu	$t8,$a1,$t1
    ld	$a3,0($a3)
    addiu	$a0,$a0,-4
    addu	$v1,$a1,$t0
    sd	$a3,0($t8)
    addu	$a3,$a1,$a5
    ld	$v1,0($v1)
    addu	$a1,$a1,$t3
    bgtz	$a0,.L0d93d630
    sd	$v1,0($a3)
    andi	$ra,$s6,0x100
.L0d93d680:
    beqz	$ra,.L0d93d6dc
    # Line 746
    nop	# was lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    # Line 742
    ld	$a0,1456($s5)
    sd	$a0,1632($s3)
    ld	$v1,1464($s5)
    # Line 743
    lw	$at,1792($s3)
    # Line 742
    sd	$v1,1640($s3)
    # Line 743
    li	$v0,-17
    and	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 744
    lw	$v0,1616($s5)
    # Line 746
    move	$a0,$s3
    # Line 744
    andi	$v0,$v0,0x10
    or	$at,$at,$v0
    # Line 746
    jal	__glCrmPassDepthFunc
    # Line 744
    sw	$at,1792($s3)
    # Line 747
    # lw $t9, -31804($gp) # &__glCrmPassDepthMask
    jal	__glCrmPassDepthMask
    move	$a0,$s3
    # Line 748
    # lw $t9, -31796($gp) # &__glCrmEnableDepthTest
    jal	__glCrmEnableDepthTest
    move	$a0,$s3
    sd	$s7,16($sp)
.L0d93d6dc:
    andi	$a1,$s6,0x2000
    sd	$s7,16($sp)
    beqz	$a1,.L0d93d7a0
    li	$s7,2
    # Line 751
    ld	$a6,1616($s5)
    sd	$a6,1792($s3)
    ld	$a5,1624($s5)
    sd	$a5,1800($s3)
    ld	$a4,1632($s5)
    sd	$a4,1808($s3)
    lw	$a3,1640($s5)
    sw	$a3,1816($s3)
    # Line 752
    sw	$s7,4120($zero)
    # Line 754
    lw	$t9,11792($s3)
    # Line 752
    lw	$a2,11756($s3)
    # Line 754
    move	$a0,$s3
    # Line 752
    ori	$a2,$a2,0x3e
    # Line 754
    jalr	$t9
    # Line 752
    sw	$a2,11756($s3)
    # Line 755
    lw	$t9,12000($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 756
    lw	$t9,11916($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 757
    lw	$t9,11908($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 759
    # lw $t9, -32004($gp) # &__glCrmEnableAlphaTest
    bal __glCrmEnableAlphaTest
    move	$a0,$s3
    # Line 760
    # lw $t9, -31796($gp) # &__glCrmEnableDepthTest
    jal	__glCrmEnableDepthTest
    move	$a0,$s3
    # Line 761
    # lw $t9, -31984($gp) # &__glCrmEnableDither
    bal __glCrmEnableDither
    move	$a0,$s3
    # Line 762
    # lw $t9, -31972($gp) # &__glCrmEnableFogTest
    bal __glCrmEnableFogTest
    move	$a0,$s3
    # Line 763
    # lw $t9, -31328($gp) # &__glCrmEnableStencilTest
    jal	__glCrmEnableStencilTest
    move	$a0,$s3
    # Line 764
    # lw $t9, -31996($gp) # &__glCrmEnableBlend
    bal __glCrmEnableBlend
    move	$a0,$s3
    # Line 765
    # lw $t9, -31980($gp) # &__glCrmEnableLogicOp
    bal __glCrmEnableLogicOp
    move	$a0,$s3
.L0d93d7a0:
    dsll32	$a7,$s6,0xf
    bgez	$a7,.L0d93d834
    # Line 773
    andi	$ra,$s6,0x80
    addiu	$a2,$s5,1760
    addiu	$a4,$s3,1936
    li	$a5,0x8
    # Line 768
    li	$a1,12
    move	$a0,$zero
    addiu	$a6,$s3,1932
    addiu	$a7,$s5,1756
    nop
    nop
.L0d93d7d0:
    addu	$t1,$a0,$a7
    addu	$t2,$a0,$a6
    lw	$t1,0($t1)
    addiu	$a1,$a1,-2
    addu	$t0,$a0,$a2
    sw	$t1,0($t2)
    addu	$t1,$a0,$a4
    lw	$t0,0($t0)
    addu	$a0,$a0,$a5
    bgtz	$a1,.L0d93d7d0
    sw	$t0,0($t1)
    # Line 769
    lui	$ra,0x80
    lw	$t8,1792($s3)
    nor	$t9,$ra,$zero
    and	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 770
    lw	$t9,1616($s5)
    and	$t9,$t9,$ra
    or	$t8,$t8,$t9
    sw	$t8,1792($s3)
    # Line 772
    lw	$t3,1632($s5)
    sw	$t3,1808($s3)
    # Line 773
    lw	$t2,1636($s5)
    sw	$t2,1812($s3)
    andi	$ra,$s6,0x80
.L0d93d834:
    beqz	$ra,.L0d93d8d0
    # Line 781
    andi	$t9,$s6,0x8000
    # Line 776
    addiu	$a1,$s3,1588
    addiu	$a0,$s5,1412
    lw	$t2,1412($s5)
    sw	$t2,1588($s3)
    lw	$t1,1416($s5)
    sw	$t1,1592($s3)
    lw	$t0,1420($s5)
    sw	$t0,1596($s3)
    lw	$a7,1424($s5)
    sw	$a7,1600($s3)
    lw	$a6,1428($s5)
    sw	$a6,1604($s3)
    lw	$a5,1432($s5)
    sw	$a5,1608($s3)
    lw	$a3,1436($s5)
    sw	$a3,1612($s3)
    lw	$v1,1440($s5)
    sw	$v1,1616($s3)
    lw	$v0,1444($s5)
    sw	$v0,1620($s3)
    lw	$at,1448($s5)
    sw	$at,1624($s3)
    # Line 777
    lw	$t3,1792($s3)
    # Line 780
    # lw $t9, -31972($gp) # &__glCrmEnableFogTest
    # Line 777
    li	$t8,-33
    and	$t3,$t3,$t8
    sw	$t3,1792($s3)
    # Line 778
    lw	$t8,1616($s5)
    # Line 780
    move	$a0,$s3
    # Line 778
    andi	$t8,$t8,0x20
    or	$t3,$t3,$t8
    # Line 780
    bal __glCrmEnableFogTest
    # Line 778
    sw	$t3,1792($s3)
    # Line 781
    # lw $t9, -31968($gp) # &__glCrmPassFog
    bal __glCrmPassFog
    move	$a0,$s3
    andi	$t9,$s6,0x8000
.L0d93d8d0:
    beqz	$t9,.L0d93d904
    # Line 784
    andi	$a1,$s6,0x40
    ld	$a0,1720($s5)
    sd	$a0,1896($s3)
    ld	$v1,1728($s5)
    sd	$v1,1904($s3)
    ld	$v0,1736($s5)
    sd	$v0,1912($s3)
    ld	$at,1744($s5)
    sd	$at,1920($s3)
    lw	$ra,1752($s5)
    sw	$ra,1928($s3)
    andi	$a1,$s6,0x40
.L0d93d904:
    beqz	$a1,.L0d93daa8
    # Line 805
    andi	$a7,$s6,0x4
    # Line 787
    lw	$t8,1208($s5)
    sw	$t8,1384($s3)
    # Line 788
    lw	$t3,1212($s5)
    sw	$t3,1388($s3)
    # Line 789
    lw	$t2,1216($s5)
    sw	$t2,1392($s3)
    # Line 790
    lw	$t1,1220($s5)
    sw	$t1,1396($s3)
    lw	$t0,1224($s5)
    sw	$t0,1400($s3)
    lw	$a7,1228($s5)
    sw	$a7,1404($s3)
    lw	$a6,1232($s5)
    sw	$a6,1408($s3)
    lw	$a5,1236($s5)
    sw	$a5,1412($s3)
    lw	$a4,1240($s5)
    sw	$a4,1416($s3)
    lw	$a3,1244($s5)
    # Line 791
    addiu	$a1,$s3,1424
    addiu	$a0,$s5,1248
    # Line 790
    sw	$a3,1420($s3)
    # Line 791
    ld	$t0,1248($s5)
    sd	$t0,1424($s3)
    ld	$a7,1256($s5)
    sd	$a7,1432($s3)
    ld	$a6,1264($s5)
    sd	$a6,1440($s3)
    ld	$a5,1272($s5)
    sd	$a5,1448($s3)
    ld	$a3,1280($s5)
    sd	$a3,1456($s3)
    ld	$v1,1288($s5)
    sd	$v1,1464($s3)
    ld	$v0,1296($s5)
    sd	$v0,1472($s3)
    ld	$at,1304($s5)
    sd	$at,1480($s3)
    ld	$ra,1312($s5)
    sd	$ra,1488($s3)
    ld	$t9,1320($s5)
    sd	$t9,1496($s3)
    # Line 792
    addiu	$a1,$s3,1504
    addiu	$a0,$s5,1328
    ld	$a3,1328($s5)
    sd	$a3,1504($s3)
    ld	$v1,1336($s5)
    sd	$v1,1512($s3)
    ld	$v0,1344($s5)
    sd	$v0,1520($s3)
    ld	$at,1352($s5)
    sd	$at,1528($s3)
    ld	$ra,1360($s5)
    sd	$ra,1536($s3)
    ld	$t9,1368($s5)
    sd	$t9,1544($s3)
    ld	$t8,1376($s5)
    sd	$t8,1552($s3)
    ld	$t3,1384($s5)
    sd	$t3,1560($s3)
    ld	$t2,1392($s5)
    sd	$t2,1568($s3)
    ld	$t1,1400($s5)
    sd	$t1,1576($s3)
    # Line 793
    lw	$a3,3588($s3)
    # lw $t9, -22900($gp) # &memcpy
    sll	$a2,$a3,0x3
    subu	$a2,$a2,$a3
    lw	$a1,1408($s5)
    sll	$a2,$a2,0x2
    lw	$a0,1584($s3)
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 796
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1408($s5)
    # Line 797
    sw	$zero,1408($s5)
    # Line 798
    lw	$a5,1792($s3)
    li	$a6,-193
    and	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 799
    lw	$a6,1616($s5)
    andi	$a6,$a6,0xc0
    or	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 801
    lw	$a4,1624($s5)
    sw	$a4,1800($s3)
    # Line 802
    sw	$s7,4120($zero)
    # Line 803
    lw	$t9,11792($s3)
    # Line 802
    lw	$a3,11756($s3)
    # Line 803
    move	$a0,$s3
    # Line 802
    ori	$a3,$a3,0x20
    # Line 803
    jalr	$t9
    # Line 802
    sw	$a3,11756($s3)
    # Line 804
    lw	$t9,12000($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 805
    # lw $t9, -31960($gp) # &__glCrmShadeModel
    bal __glCrmShadeModel
    move	$a0,$s3
    andi	$a7,$s6,0x4
.L0d93daa8:
    beqz	$a7,.L0d93db0c
    # Line 812
    dsll32	$ra,$s6,0xe
    # Line 808
    lwc1	$f5,292($s5)
    swc1	$f5,468($s3)
    lwc1	$f4,296($s5)
    swc1	$f4,472($s3)
    lw	$t9,300($s5)
    sw	$t9,476($s3)
    lhu	$t8,304($s5)
    sh	$t8,480($s3)
    lh	$t3,306($s5)
    # Line 809
    lw	$t1,1792($s3)
    # Line 808
    sh	$t3,482($s3)
    # Line 809
    li	$t2,-769
    and	$t1,$t1,$t2
    sw	$t1,1792($s3)
    # Line 810
    lw	$t2,1616($s5)
    andi	$t2,$t2,0x300
    or	$t1,$t1,$t2
    sw	$t1,1792($s3)
    # Line 812
    sw	$s7,4120($zero)
    lw	$t0,11756($s3)
    ori	$t0,$t0,0x2
    sw	$t0,11756($s3)
    dsll32	$ra,$s6,0xe
.L0d93db0c:
    bgez	$ra,.L0d93db20
    # Line 815
    andi	$v0,$s6,0x20
    lw	$at,1804($s5)
    sw	$at,1980($s3)
    andi	$v0,$s6,0x20
.L0d93db20:
    beqz	$v0,.L0d93dc24
    addiu	$a1,$s5,472
    addiu	$a7,$s3,648
    li	$a6,0x10
    # Line 818
    addiu	$a4,$s3,640
    addiu	$a5,$s5,464
    ld	$v1,464($s5)
    li	$a2,8
    li	$a0,0xe
    sd	$v1,640($s3)
    nop
    nop
.L0d93db50:
    addu	$t0,$a2,$a5
    addu	$t1,$a2,$a4
    ld	$t0,0($t0)
    addiu	$a0,$a0,-2
    addu	$a3,$a2,$a1
    sd	$t0,0($t1)
    addu	$t0,$a2,$a7
    ld	$a3,0($a3)
    addu	$a2,$a2,$a6
    bgtz	$a0,.L0d93db50
    sd	$a3,0($t0)
    # Line 821
    # lw $t9, -26480($gp) # &__glCopyColorTableScaleBias
    # Line 818
    addu	$t3,$a2,$a5
    addu	$t8,$a2,$a4
    lw	$t3,0($t3)
    sw	$t3,0($t8)
    # Line 819
    lw	$t2,1064($s5)
    sw	$t2,1240($s3)
    # Line 821
    addiu	$a1,$s3,5372
    # Line 820
    lw	$t1,1060($s5)
    # Line 821
    addiu	$a0,$s5,2364
    jal	__glCopyColorTableScaleBias
    # Line 820
    sw	$t1,1236($s3)
    # Line 822
    lui	$v1,0xe00
    lw	$at,1792($s3)
    nor	$v0,$v1,$zero
    and	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 823
    lw	$v0,1616($s5)
    and	$v0,$v0,$v1
    # Line 825
    lui	$v1,0x3000
    # Line 823
    or	$at,$at,$v0
    # Line 825
    nor	$v0,$v1,$zero
    and	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 826
    lw	$v0,1616($s5)
    # Line 828
    ld	$ra,-22308($gp)
    # Line 826
    and	$v0,$v0,$v1
    # Line 828
    lw	$t9,1796($s3)
    # Line 826
    or	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 828
    and	$t9,$t9,$ra
    sw	$t9,1796($s3)
    # Line 829
    lui	$at,0x2
    lw	$ra,1620($s5)
    ori	$at,$at,0xc127
    and	$ra,$ra,$at
    or	$t9,$t9,$ra
    sw	$t9,1796($s3)
    # Line 831
    sw	$s7,4120($zero)
    lw	$t8,11756($s3)
    ori	$t8,$t8,0x10
    sw	$t8,11756($s3)
.L0d93dc24:
    andi	$v1,$s6,0x2
    beqz	$v1,.L0d93dc7c
    # Line 838
    andi	$a4,$s6,0x8
    # Line 834
    lwc1	$f7,280($s5)
    swc1	$f7,456($s3)
    lwc1	$f6,284($s5)
    swc1	$f6,460($s3)
    lw	$a3,288($s5)
    # Line 835
    lw	$a1,1792($s3)
    # Line 834
    sw	$a3,464($s3)
    # Line 835
    li	$a2,-1025
    and	$a1,$a1,$a2
    sw	$a1,1792($s3)
    # Line 836
    lw	$a2,1616($s5)
    andi	$a2,$a2,0x400
    or	$a1,$a1,$a2
    sw	$a1,1792($s3)
    # Line 838
    sw	$s7,4120($zero)
    lw	$a0,11756($s3)
    ori	$a0,$a0,0x8
    sw	$a0,11756($s3)
    andi	$a4,$s6,0x8
.L0d93dc7c:
    beqz	$a4,.L0d93dd18
    # Line 856
    andi	$v1,$s6,0x10
    # Line 848
    ld	$t1,-22300($gp)
    # Line 841
    lw	$v0,308($s5)
    sw	$v0,484($s3)
    lw	$at,312($s5)
    sw	$at,488($s3)
    lw	$ra,316($s5)
    sw	$ra,492($s3)
    lw	$t9,320($s5)
    sw	$t9,496($s3)
    lw	$t8,324($s5)
    sw	$t8,500($s3)
    lw	$t3,328($s5)
    sw	$t3,504($s3)
    lw	$t2,332($s5)
    # Line 848
    lw	$t0,1792($s3)
    # Line 841
    sw	$t2,508($s3)
    # Line 848
    and	$t0,$t0,$t1
    sw	$t0,1792($s3)
    # Line 849
    lui	$t2,0x100
    lw	$t1,1616($s5)
    ori	$t2,$t2,0x3800
    and	$t1,$t1,$t2
    # Line 852
    lw	$a6,1796($s3)
    # Line 849
    or	$t0,$t0,$t1
    sw	$t0,1792($s3)
    # Line 852
    li	$a7,-1537
    and	$a6,$a6,$a7
    sw	$a6,1796($s3)
    # Line 853
    lw	$a7,1620($s5)
    andi	$a7,$a7,0x600
    or	$a6,$a6,$a7
    sw	$a6,1796($s3)
    # Line 856
    sw	$s7,4120($zero)
    lw	$a5,11756($s3)
    ori	$a5,$a5,0x4
    sw	$a5,11756($s3)
    andi	$v1,$s6,0x10
.L0d93dd18:
    beqz	$v1,.L0d93ddac
    # Line 864
    dsll32	$t8,$s6,0xc
    addiu	$a4,$s5,344
    addiu	$a2,$s3,520
    li	$a6,0x10
    # Line 859
    li	$a1,16
    move	$a0,$zero
    addiu	$a5,$s3,512
    addiu	$a7,$s5,336
    nop
.L0d93dd40:
    addu	$t0,$a0,$a7
    addu	$t1,$a0,$a5
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a4
    sd	$t0,0($t1)
    addu	$t0,$a0,$a2
    ld	$a3,0($a3)
    addu	$a0,$a0,$a6
    bgtz	$a1,.L0d93dd40
    sd	$a3,0($t0)
    # Line 860
    lw	$t1,1792($s3)
    # Line 863
    lw	$t9,12656($s3)
    # Line 860
    li	$t2,-8193
    and	$t1,$t1,$t2
    sw	$t1,1792($s3)
    # Line 861
    lw	$t2,1616($s5)
    # Line 863
    move	$a0,$s3
    # Line 861
    andi	$t2,$t2,0x2000
    or	$t1,$t1,$t2
    # Line 863
    jalr	$t9
    # Line 861
    sw	$t1,1792($s3)
    # Line 864
    sw	$s7,4120($zero)
    lw	$t3,11756($s3)
    ori	$t3,$t3,0x4
    sw	$t3,11756($s3)
    dsll32	$t8,$s6,0xc
.L0d93ddac:
    bgez	$t8,.L0d93de10
    # Line 872
    andi	$a3,$s6,0x400
    # Line 871
    lw	$t9,11916($s3)
    # Line 867
    lw	$a2,2348($s5)
    sw	$a2,2524($s3)
    lw	$a1,2352($s5)
    sw	$a1,2528($s3)
    lw	$a0,2356($s5)
    sw	$a0,2532($s3)
    lw	$v1,2360($s5)
    # Line 868
    lw	$at,1792($s3)
    # Line 867
    sw	$v1,2536($s3)
    # Line 868
    li	$v0,-16385
    and	$at,$at,$v0
    sw	$at,1792($s3)
    # Line 869
    lw	$v0,1616($s5)
    # Line 871
    move	$a0,$s3
    # Line 869
    andi	$v0,$v0,0x4000
    or	$at,$at,$v0
    # Line 871
    jalr	$t9
    # Line 869
    sw	$at,1792($s3)
    # Line 872
    lw	$t9,11908($s3)
    jalr	$t9
    move	$a0,$s3
    andi	$a3,$s6,0x400
.L0d93de10:
    beqz	$a3,.L0d93de80
    # Line 881
    nop	# was lw $t9, -31324($gp) # &__glCrmPassStencilMode
    # Line 879
    lw	$a6,11752($s3)
    # Line 875
    ld	$t1,1488($s5)
    sd	$t1,1664($s3)
    ld	$t0,1496($s5)
    sd	$t0,1672($s3)
    ld	$a7,1504($s5)
    # Line 876
    li	$a5,0x8000
    lw	$a4,1792($s3)
    # Line 875
    sd	$a7,1680($s3)
    # Line 876
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    sw	$a4,1792($s3)
    # Line 877
    lw	$a5,1616($s5)
    # Line 881
    move	$a0,$s3
    # Line 879
    ori	$a6,$a6,0x6
    sw	$a6,11752($s3)
    # Line 877
    andi	$a5,$a5,0x8000
    or	$a4,$a4,$a5
    # Line 881
    jal	__glCrmPassStencilMode
    # Line 877
    sw	$a4,1792($s3)
    # Line 882
    # lw $t9, -31328($gp) # &__glCrmEnableStencilTest
    jal	__glCrmEnableStencilTest
    move	$a0,$s3
    # Line 883
    # lw $t9, -31332($gp) # &__glCrmPassStencilMask
    jal	__glCrmPassStencilMask
    move	$a0,$s3
.L0d93de80:
    dsll32	$t2,$s6,0xd
    bgez	$t2,.L0d93e1e0
    addiu	$a2,$s5,1816
    sd	$s4,72($sp)
    addiu	$a4,$s3,1992
    li	$a7,0x10
    # Line 886
    lw	$s4,3604($s3)
    # Line 887
    addiu	$a5,$s3,1984
    addiu	$a6,$s5,1808
    ld	$t3,1808($s5)
    li	$a0,8
    li	$a1,0xe
    sd	$t3,1984($s3)
    nop
    nop
    nop
.L0d93dec0:
    addu	$t0,$a0,$a6
    addu	$t1,$a0,$a5
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a2
    sd	$t0,0($t1)
    addu	$t0,$a0,$a4
    ld	$a3,0($a3)
    addu	$a0,$a0,$a7
    bgtz	$a1,.L0d93dec0
    sd	$a3,0($t0)
    li	$t0,3
    # Line 888
    li	$a7,31
    # Line 887
    addu	$t1,$a0,$a6
    # Line 888
    move	$a1,$zero
    # Line 887
    addu	$t2,$a0,$a5
    lw	$t1,0($t1)
    # Line 888
    addiu	$a4,$s3,2108
    addiu	$a2,$s5,1932
    # Line 887
    sw	$t1,0($t2)
.L0d93df10:
    addiu	$t0,$t0,-1
    # Line 888
    addu	$t2,$a1,$a2
    addiu	$a7,$a7,-1
    addu	$t3,$a1,$a4
    lw	$t2,0($t2)
    addiu	$a1,$a1,4
    bnez	$t0,.L0d93df10
    sw	$t2,0($t3)
    addiu	$t0,$a2,12
    addiu	$a6,$a4,12
    li	$a5,0x10
    addiu	$t8,$a2,4
    addiu	$t1,$a4,4
    addiu	$t2,$a4,8
    addiu	$t3,$a2,8
    move	$a0,$a7
.L0d93df50:
    addu	$v0,$a1,$a2
    addu	$v1,$a1,$a4
    lw	$v0,0($v0)
    addu	$at,$a1,$t8
    sw	$v0,0($v1)
    addu	$v0,$a1,$t1
    lw	$at,0($at)
    addu	$ra,$a1,$t3
    sw	$at,0($v0)
    addu	$at,$a1,$t2
    lw	$ra,0($ra)
    addiu	$a0,$a0,-4
    addu	$t9,$a1,$t0
    sw	$ra,0($at)
    addu	$ra,$a1,$a6
    lw	$t9,0($t9)
    addu	$a1,$a1,$a5
    bgtz	$a0,.L0d93df50
    sw	$t9,0($ra)
    addiu	$a2,$s5,2064
    addiu	$a4,$s3,2240
    li	$a7,0x10
    # Line 889
    addiu	$a6,$s3,2232
    addiu	$a5,$s5,2056
    ld	$v1,2056($s5)
    li	$a0,8
    li	$a1,0xe
    sd	$v1,2232($s3)
.L0d93dfc0:
    addu	$t0,$a0,$a5
    addu	$t1,$a0,$a6
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a0,$a2
    sd	$t0,0($t1)
    addu	$t0,$a0,$a4
    ld	$a3,0($a3)
    addu	$a0,$a0,$a7
    bgtz	$a1,.L0d93dfc0
    sd	$a3,0($t0)
    li	$t0,3
    # Line 890
    li	$a1,31
    # Line 889
    addu	$t1,$a0,$a5
    # Line 890
    move	$a7,$zero
    # Line 889
    addu	$t2,$a0,$a6
    lw	$t1,0($t1)
    # Line 890
    addiu	$a4,$s3,2356
    addiu	$a2,$s5,2180
    # Line 889
    sw	$t1,0($t2)
.L0d93e010:
    addiu	$t0,$t0,-1
    # Line 890
    addu	$t2,$a7,$a2
    addiu	$a1,$a1,-1
    addu	$t3,$a7,$a4
    lw	$t2,0($t2)
    addiu	$a7,$a7,4
    bnez	$t0,.L0d93e010
    sw	$t2,0($t3)
    addiu	$t2,$a2,12
    addiu	$t1,$a4,12
    li	$a5,0x10
    addiu	$t8,$a2,4
    addiu	$t3,$a4,4
    addiu	$a6,$a4,8
    addiu	$t0,$a2,8
    move	$a0,$a7
.L0d93e050:
    addu	$v0,$a0,$a2
    addu	$v1,$a0,$a4
    lw	$v0,0($v0)
    addu	$at,$a0,$t8
    sw	$v0,0($v1)
    addu	$v0,$a0,$t3
    lw	$at,0($at)
    addu	$ra,$a0,$t0
    sw	$at,0($v0)
    addu	$at,$a0,$a6
    lw	$ra,0($ra)
    addiu	$a1,$a1,-4
    addu	$t9,$a0,$t2
    sw	$ra,0($at)
    addu	$ra,$a0,$t1
    lw	$t9,0($t9)
    addu	$a0,$a0,$a5
    bgtz	$a1,.L0d93e050
    sw	$t9,0($ra)
    # Line 892
    lwc1	$f15,2312($s5)
    swc1	$f15,2488($s3)
    # Line 893
    lwc1	$f14,2316($s5)
    swc1	$f14,2492($s3)
    # Line 894
    lwc1	$f13,2320($s5)
    swc1	$f13,2496($s3)
    # Line 895
    lwc1	$f12,2324($s5)
    swc1	$f12,2500($s3)
    # Line 897
    lwc1	$f11,2328($s5)
    swc1	$f11,2504($s3)
    # Line 898
    lwc1	$f10,2332($s5)
    swc1	$f10,2508($s3)
    # Line 899
    lwc1	$f9,2336($s5)
    swc1	$f9,2512($s3)
    # Line 900
    lwc1	$f8,2340($s5)
    # Line 919
    lw	$s2,2480($s3)
    # Line 900
    swc1	$f8,2516($s3)
    # Line 902
    lbu	$a2,2344($s5)
    sb	$a2,2520($s3)
    # Line 903
    lbu	$a1,2345($s5)
    sb	$a1,2521($s3)
    # Line 904
    lbu	$a0,2346($s5)
    sb	$a0,2522($s3)
    # Line 905
    lbu	$v1,2347($s5)
    sb	$v1,2523($s3)
    # Line 920
    beqz	$s4,.L0d93e150
    lw	$s1,2304($s5)
    andi	$a3,$s4,0x1
    sd	$s0,80($sp)
    move	$s0,$zero
    beqz	$a3,.L0d93e138
    move	$a0,$s4
    lw	$a2,216($s1)
    lw	$a4,216($s2)
    bne	$a4,$a2,.L0d93e35c
    # Line 924
    nop	# was lw $t9, -23772($gp) # &__glBindTexture
.L0d93e12c:
    # Line 922
    addiu	$s1,$s1,224
    addiu	$s2,$s2,224
    addiu	$s0,$s0,1
.L0d93e138:
    sra	$a5,$a0,0x1
    bnezl	$a5,.L0d93e310
    # Line 920
    lw	$a2,216($s1)
.L0d93e144:
    # Line 922
    lw	$s1,2304($s5)
    lw	$s2,2480($s3)
    ld	$s0,80($sp)
.L0d93e150:
    # Line 929
    # lw $t9, -22900($gp) # &memcpy
    move	$a0,$s2
    move	$a1,$s1
    sll	$a2,$s4,0x3
    subu	$a2,$a2,$s4
    jal	memcpy
    sll	$a2,$a2,0x5
    # Line 931
    # lw $t9, -22900($gp) # &memcpy
    lw	$a3,3608($s3)
    ld	$s4,72($sp)
    lw	$a1,2308($s5)
    sll	$a2,$a3,0x3
    lw	$a0,2484($s3)
    addu	$a2,$a2,$a3
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 934
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2304($s5)
    # Line 935
    sw	$zero,2304($s5)
    # Line 936
    lw	$t9,12($s3)
    lw	$a1,2308($s5)
    jalr	$t9
    move	$a0,$s3
    # Line 937
    sw	$zero,2308($s5)
    # Line 938
    lui	$a5,0x3fc0
    lw	$a4,1792($s3)
    ori	$a5,$a5,0xffff
    and	$a4,$a4,$a5
    sw	$a4,1792($s3)
    # Line 939
    lw	$a5,1616($s5)
    lui	$a6,0xc03f
    and	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,1792($s3)
.L0d93e1e0:
    andi	$a6,$s6,0x1000
    beqz	$a6,.L0d93e250
    # Line 952
    andi	$a7,$s6,0x800
    # Line 944
    lw	$a0,1748($s3)
    # Line 943
    lw	$a3,1568($s5)
    # Line 944
    # lw $t9, -22900($gp) # &memcpy
    # Line 943
    sw	$a3,1744($s3)
    # Line 944
    lw	$a2,3600($s3)
    lw	$a1,1572($s5)
    jal	memcpy
    sll	$a2,$a2,0x4
    # Line 947
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,1572($s5)
    # Line 948
    sw	$zero,1572($s5)
    # Line 949
    lw	$a5,1792($s3)
    lui	$a7,0x40
    nor	$a6,$a7,$zero
    and	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 950
    lw	$a6,1616($s5)
    and	$a6,$a6,$a7
    or	$a5,$a5,$a6
    sw	$a5,1792($s3)
    # Line 952
    lw	$a4,1628($s5)
    sw	$a4,1804($s3)
    andi	$a7,$s6,0x800
.L0d93e250:
    beqz	$a7,.L0d93e2a0
    ld	$s1,64($sp)
    # Line 956
    # lw $t9, -23448($gp) # &__glUpdateViewportTransform
    # Line 955
    ld	$at,1512($s5)
    sd	$at,1688($s3)
    ld	$ra,1520($s5)
    sd	$ra,1696($s3)
    ld	$t8,1528($s5)
    sd	$t8,1704($s3)
    ld	$t3,1536($s5)
    sd	$t3,1712($s3)
    ld	$t2,1544($s5)
    sd	$t2,1720($s3)
    ld	$t1,1552($s5)
    sd	$t1,1728($s3)
    ld	$t0,1560($s5)
    # Line 956
    move	$a0,$s3
    jal	__glUpdateViewportTransform
    # Line 955
    sd	$t0,1736($s3)
    ld	$s1,64($sp)
.L0d93e2a0:
    ld	$s6,48($sp)
    ld	$s2,40($sp)
    # Line 968
    ld	$gp,24($sp)
    # Line 963
    sw	$zero,0($s5)
    # Line 968
    ld	$s5,8($sp)
    # Line 965
    sw	$s7,4120($zero)
    lw	$v0,11756($s3)
    ld	$ra,56($sp)
    # Line 968
    ld	$s7,16($sp)
    # Line 965
    ori	$v0,$v0,0x1
    sw	$v0,11756($s3)
    # Line 968
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d93e2d8:
    ld	$s2,40($sp)
    ld	$s1,64($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d93e2ec:
    # Line 920
    lw	$a2,440($s1)
.L0d93e2f0:
    lw	$v1,440($s2)
    bne	$v1,$a2,.L0d93e330
    # Line 922
    addiu	$s0,$s0,1
    addiu	$s0,$s0,1
.L0d93e300:
    addiu	$s1,$s1,448
    beq	$s4,$s0,.L0d93e144
    addiu	$s2,$s2,448
    # Line 920
    lw	$a2,216($s1)
.L0d93e310:
    lw	$a0,216($s2)
    beq	$a0,$a2,.L0d93e2ec
    # Line 924
    nop	# was lw $t9, -23772($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0d93e2f0
    # Line 920
    lw	$a2,440($s1)
.L0d93e330:
    # Line 924
    # lw $t9, -23772($gp) # &__glBindTexture
    move	$a0,$s3
    jal	__glBindTexture
    move	$a1,$s0
    b	.L0d93e300
    # Line 922
    addiu	$s0,$s0,1
.L0d93e348:
    ld	$s3,0($sp)
    # Line 967
    jalr	$t9
    li	$a0,1284
    b	.L0d93e2d8
    ld	$ra,56($sp)
.L0d93e35c:
    # Line 924
    move	$a0,$s3
    sd	$s4,32($sp)
    jalr	$t9
    move	$a1,$zero
    b	.L0d93e12c
    ld	$a0,32($sp)
.L0d93e374:
    # Line 706
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s3,0($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d93e2d8
    ld	$ra,56($sp)
.end __glcrmim_PopAttrib

# Function: __glcrmim_Enable
# Declared: Line 973 (Source lines: 974-1203)
# Address: 0x0d93e390 - 0x0d93f214 (Size: 3716 bytes, Frame: 32)
.globl __glcrmim_Enable
.ent __glcrmim_Enable
__glcrmim_Enable:
    # Line 974
    addiu	$sp,$sp,-32
    # Line 975
    lw	$v0,4120($zero)
    # Line 974
    sd	$s0,0($sp)
    # Line 975
    li	$a4,1
    # Line 974
    lui	$at,0x11
    # Line 975
    lw	$s0,4112($zero)
    # Line 974
    addiu	$at,$at,10748
    sd	$gp,8($sp)
    # Line 975
    beq	$v0,$a4,.L0d93e920
    # Line 974
    addu	$gp,$t9,$at
    # Line 985
    sltiu	$v0,$a0,3511
    bnez	$v0,.L0d93e418
    sltiu	$a7,$a0,3169
    sltiu	$v1,$a0,3512
    bnez	$v1,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    # Line 985
    li	$a2,0x8010
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d93e4ec
    sltu	$a3,$a2,$a0
    bnez	$a3,.L0d93e5dc
    li	$a2,0x8077
    lw	$a2,1792($s0)
    dsll32	$a4,$a2,0x6
    bltz	$a4,.L0d93e494
    lui	$a3,0x200
    # Line 1157
    or	$a6,$a3,$a2
    sw	$a6,1792($s0)
    # Line 1158
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a5,11756($s0)
    ori	$a5,$a5,0x10
    # Line 1159
    b	.L0d93e474
    # Line 1158
    sw	$a5,11756($s0)
.L0d93e418:
    # Line 985
    bnez	$a7,.L0d93e4a4
    sltiu	$t0,$a0,3170
    beqz	$t0,.L0d93e538
    sltiu	$v1,$a0,3478
    lw	$a2,1792($s0)
    dsll32	$t1,$a2,0xc
    bltz	$t1,.L0d93e494
    lui	$a3,0x8
    # Line 1076
    li	$a0,2
    # Line 1075
    or	$t2,$a3,$a2
    # Line 1076
    b	.L0d93e474
    # Line 1075
    sw	$t2,1792($s0)
.L0d93e448:
    # Line 985
    bne	$a0,$t3,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1116
    addiu	$a2,$a0,-3504
.L0d93e454:
    lw	$a3,1812($s0)
    sllv	$a2,$a4,$a2
    andi	$a2,$a2,0xffff
    and	$t8,$a3,$a2
    bnez	$t8,.L0d93e494
    # Line 1119
    li	$a0,2
    # Line 1118
    or	$a4,$a3,$a2
    sw	$a4,1812($s0)
.L0d93e474:
    # Line 1203
    sw	$a0,4120($zero)
    lw	$a5,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1203
    ori	$a5,$a5,0x1
    sw	$a5,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93e494:
    ld	$s0,0($sp)
.L0d93e498:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93e4a4:
    # Line 985
    sltiu	$a6,$a0,2929
    bnez	$a6,.L0d93e590
    sltiu	$a7,$a0,2882
    sltiu	$a7,$a0,2930
    beqz	$a7,.L0d93e69c
    sltiu	$t2,$a0,3042
    lw	$a2,1792($s0)
    andi	$t0,$a2,0x10
    bnez	$t0,.L0d93e494
    # Line 1005
    nop	# was lw $t9, -31796($gp) # &__glCrmEnableDepthTest
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1004
    ori	$t1,$a2,0x10
    # Line 1005
    jal	__glCrmEnableDepthTest
    # Line 1004
    sw	$t1,1792($s0)
    ld	$ra,16($sp)
    # Line 1006
    b	.L0d93e474
    li	$a0,2
.L0d93e4ec:
    # Line 985
    sltiu	$t2,$a0,12292
    bnez	$t2,.L0d93e620
    sltiu	$t3,$a0,12293
    bnez	$t3,.L0d93e7bc
    # Line 1087
    addiu	$a3,$a0,-12288
    # Line 985
    sltiu	$t8,$a0,16387
    bnez	$t8,.L0d93e9c0
    sltiu	$t9,$a0,16388
    bnez	$t9,.L0d93e9fc
    sltiu	$a2,$a0,16390
    bnez	$a2,.L0d93f024
    sltiu	$at,$a0,16391
    bnez	$at,.L0d93ea00
    # Line 1095
    addiu	$a3,$a0,-16384
    # Line 985
    li	$v0,16391
    beq	$a0,$v0,.L0d93ea00
    # Line 1095
    addiu	$a3,$a0,-16384
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93e538:
    # Line 985
    bnez	$v1,.L0d93e65c
    sltiu	$a6,$a0,3473
    sltiu	$a1,$a0,3479
    bnez	$a1,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    # Line 985
    sltiu	$a2,$a0,3506
    bnez	$a2,.L0d93ea70
    sltiu	$t2,$a0,3504
    sltiu	$a3,$a0,3507
    bnez	$a3,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    # Line 985
    sltiu	$a2,$a0,3509
    bnez	$a2,.L0d93f050
    sltiu	$t8,$a0,3508
    sltiu	$a5,$a0,3510
    bnez	$a5,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    # Line 985
    li	$a6,3510
    beq	$a0,$a6,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93e590:
    # Line 985
    bnez	$a7,.L0d93e6e0
    sltiu	$v0,$a0,2852
    sltiu	$t0,$a0,2883
    beqz	$t0,.L0d93e884
    sltiu	$v1,$a0,2903
    lw	$a2,1792($s0)
    andi	$t1,$a2,0x2000
    bnez	$t1,.L0d93e494
    # Line 1050
    ori	$t8,$a2,0x2000
    sw	$t8,1792($s0)
    # Line 1051
    li	$t3,2
    sw	$t3,4120($zero)
    lw	$t2,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1051
    ori	$t2,$t2,0x4
    sw	$t2,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93e5dc:
    # Line 985
    sltu	$t9,$a0,$a2
    bnez	$t9,.L0d93e75c
    sltu	$at,$a2,$a0
    beqz	$at,.L0d93eec8
    li	$a2,0x80d0
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0d93ec38
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0d93eef4
    li	$a2,0x80d2
    lw	$a2,1796($s0)
    andi	$a0,$a2,0x1
    bnez	$a0,.L0d93e494
    # Line 1184
    li	$a0,2
    # Line 1183
    ori	$a1,$a2,0x1
    # Line 1184
    b	.L0d93e474
    # Line 1183
    sw	$a1,1796($s0)
.L0d93e620:
    # Line 985
    sltiu	$a2,$a0,10754
    bnez	$a2,.L0d93e7dc
    sltiu	$a2,$a0,3553
    sltiu	$a3,$a0,10755
    beqz	$a3,.L0d93e938
    sltiu	$a2,$a0,12290
    # Line 1129
    lw	$a5,1796($s0)
    ori	$a5,$a5,0x400
    sw	$a5,1796($s0)
    # Line 1130
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a4,11756($s0)
    ori	$a4,$a4,0x4
    # Line 1131
    b	.L0d93e474
    # Line 1130
    sw	$a4,11756($s0)
.L0d93e65c:
    # Line 985
    bnez	$a6,.L0d93e80c
    sltiu	$t0,$a0,3456
    sltiu	$a7,$a0,3474
    bnez	$a7,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    # Line 985
    sltiu	$a2,$a0,3476
    bnez	$a2,.L0d93ed54
    sltiu	$t8,$a0,3475
    sltiu	$t0,$a0,3477
    bnez	$t0,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    # Line 985
    li	$t1,3477
    beq	$a0,$t1,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93e69c:
    # Line 985
    bnez	$t2,.L0d93e840
    sltiu	$t8,$a0,3008
    sltiu	$t3,$a0,3043
    beqz	$t3,.L0d93eacc
    sltiu	$a1,$a0,3089
    lw	$a2,1792($s0)
    andi	$t8,$a2,0x2
    bnez	$t8,.L0d93e494
    # Line 992
    nop	# was lw $t9, -31996($gp) # &__glCrmEnableBlend
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 991
    ori	$at,$a2,0x2
    # Line 992
    bal __glCrmEnableBlend
    # Line 991
    sw	$at,1792($s0)
    ld	$ra,16($sp)
    # Line 993
    b	.L0d93e474
    li	$a0,2
.L0d93e6e0:
    # Line 985
    bnez	$v0,.L0d93e8d4
    sltiu	$a5,$a0,2848
    sltiu	$v1,$a0,2853
    beqz	$v1,.L0d93ebb8
    li	$at,2881
    lw	$a2,1792($s0)
    andi	$a0,$a2,0x100
    bnez	$a0,.L0d93e494
    # Line 1026
    ori	$a3,$a2,0x100
    sw	$a3,1792($s0)
    # Line 1027
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a1,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1027
    ori	$a1,$a1,0x2
    sw	$a1,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93e72c:
    # Line 985
    bne	$a0,$a5,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1106
    addiu	$a3,$a0,-3472
.L0d93e738:
    lw	$a2,1808($s0)
    sllv	$a3,$a4,$a3
    andi	$a3,$a3,0xffff
    and	$a6,$a2,$a3
    bnez	$a6,.L0d93e494
    # Line 1109
    li	$a0,2
    # Line 1108
    or	$a4,$a2,$a3
    # Line 1109
    b	.L0d93e474
    # Line 1108
    sw	$a4,1808($s0)
.L0d93e75c:
    # Line 985
    li	$a2,0x8037
    sltu	$a5,$a0,$a2
    bnez	$a5,.L0d93e978
    sltu	$a6,$a2,$a0
    bnez	$a6,.L0d93ec78
    li	$a2,0x8075
    lw	$a2,1792($s0)
    dsll32	$a7,$a2,0x7
    bltz	$a7,.L0d93e494
    lui	$a3,0x100
    # Line 1121
    or	$t1,$a3,$a2
    sw	$t1,1792($s0)
    # Line 1122
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$t0,11756($s0)
    ori	$t0,$t0,0x4
    # Line 1123
    b	.L0d93e474
    # Line 1122
    sw	$t0,11756($s0)
.L0d93e7a4:
    # Line 985
    sltiu	$t2,$a0,12289
    bnez	$t2,.L0d93e95c
    li	$t9,12288
    beqz	$a2,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93e7b8:
    # Line 1087
    addiu	$a3,$a0,-12288
.L0d93e7bc:
    lw	$a2,1804($s0)
    sllv	$a3,$a4,$a3
    and	$t3,$a3,$a2
    bnez	$t3,.L0d93e494
    # Line 1090
    li	$a0,2
    # Line 1089
    or	$a4,$a3,$a2
    # Line 1090
    b	.L0d93e474
    # Line 1089
    sw	$a4,1804($s0)
.L0d93e7dc:
    # Line 985
    bnez	$a2,.L0d93ea3c
    sltiu	$a5,$a0,3554
    beqz	$a5,.L0d93ed0c
    li	$a7,10753
    lw	$a2,1792($s0)
    dsll32	$a6,$a2,0xe
    bltz	$a6,.L0d93e494
    lui	$a3,0x2
    # Line 1067
    li	$a0,2
    # Line 1066
    or	$a7,$a3,$a2
    # Line 1067
    b	.L0d93e474
    # Line 1066
    sw	$a7,1792($s0)
.L0d93e80c:
    # Line 985
    bnez	$t0,.L0d93ea98
    sltiu	$t9,$a0,3171
    sltiu	$t1,$a0,3457
    beqz	$t1,.L0d93e72c
    li	$a5,3472
    lw	$a2,1792($s0)
    dsll32	$t2,$a2,0x8
    bltz	$t2,.L0d93e494
    lui	$a3,0x80
    # Line 1070
    li	$a0,2
    # Line 1069
    or	$t3,$a3,$a2
    # Line 1070
    b	.L0d93e474
    # Line 1069
    sw	$t3,1792($s0)
.L0d93e840:
    # Line 985
    bnez	$t8,.L0d93eb20
    sltiu	$a5,$a0,2977
    sltiu	$t9,$a0,3009
    beqz	$t9,.L0d93ede4
    li	$a5,3024
    lw	$a2,1792($s0)
    andi	$at,$a2,0x1
    bnez	$at,.L0d93e494
    # Line 988
    nop	# was lw $t9, -32004($gp) # &__glCrmEnableAlphaTest
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 987
    ori	$v0,$a2,0x1
    # Line 988
    bal __glCrmEnableAlphaTest
    # Line 987
    sw	$v0,1792($s0)
    ld	$ra,16($sp)
    # Line 989
    b	.L0d93e474
    li	$a0,2
.L0d93e884:
    # Line 985
    bnez	$v1,.L0d93eb54
    sltiu	$t1,$a0,2896
    sltiu	$a1,$a0,2904
    beqz	$a1,.L0d93ee50
    li	$t3,2912
    lw	$a2,1792($s0)
    andi	$a3,$a2,0x80
    bnezl	$a3,.L0d93e498
    ld	$s0,0($sp)
    # Line 996
    lw	$t9,11792($s0)
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 995
    ori	$a4,$a2,0x80
    # Line 996
    jal	__glCrmEnableAlphaTest
    # Line 995
    sw	$a4,1792($s0)
    # Line 997
    lw	$t9,12000($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0d93e494
    ld	$ra,16($sp)
.L0d93e8d4:
    # Line 985
    bnez	$a5,.L0d93ebf8
    li	$a2,2832
    sltiu	$a6,$a0,2849
    beqz	$a6,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$a7,$a2,0x200
    bnez	$a7,.L0d93e494
    # Line 1022
    ori	$t2,$a2,0x200
    sw	$t2,1792($s0)
    # Line 1023
    li	$t1,2
    sw	$t1,4120($zero)
    lw	$t0,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1023
    ori	$t0,$t0,0x2
    sw	$t0,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93e920:
    # Line 975
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d93e494
    ld	$ra,16($sp)
.L0d93e938:
    # Line 985
    bnez	$a2,.L0d93e7a4
    sltiu	$t3,$a0,12291
    bnez	$t3,.L0d93e7bc
    # Line 1087
    addiu	$a3,$a0,-12288
    # Line 985
    li	$t8,12291
    beq	$a0,$t8,.L0d93e7bc
    # Line 1087
    addiu	$a3,$a0,-12288
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93e95c:
    # Line 985
    beq	$a0,$t9,.L0d93e7b8
.L0d93e960:
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93e964:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d93e494
    ld	$ra,16($sp)
.L0d93e978:
    # Line 985
    li	$a2,0x8024
    sltu	$at,$a0,$a2
    bnez	$at,.L0d93ecc4
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0d93efb0
    li	$a2,0x802e
    lw	$a2,1792($s0)
    dsll32	$v1,$a2,0x3
    bltz	$v1,.L0d93e494
    lui	$a3,0x1000
    # Line 1169
    or	$a4,$a3,$a2
    sw	$a4,1792($s0)
    # Line 1170
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a1,11756($s0)
    ori	$a1,$a1,0x10
    # Line 1171
    b	.L0d93e474
    # Line 1170
    sw	$a1,11756($s0)
.L0d93e9c0:
    # Line 985
    sltiu	$a2,$a0,16385
    bnez	$a2,.L0d93e9ec
    sltiu	$a7,$a0,16384
    sltiu	$a5,$a0,16386
    bnez	$a5,.L0d93ea00
    # Line 1095
    addiu	$a3,$a0,-16384
    # Line 985
    li	$a6,16386
    beq	$a0,$a6,.L0d93ea00
    # Line 1095
    addiu	$a3,$a0,-16384
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93e9ec:
    # Line 985
    bnez	$a7,.L0d93f040
    li	$t3,12293
    beqz	$a2,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93e9fc:
    # Line 1095
    addiu	$a3,$a0,-16384
.L0d93ea00:
    lw	$a2,1800($s0)
    sllv	$a3,$a4,$a3
    and	$t0,$a3,$a2
    bnez	$t0,.L0d93e494
    # Line 1097
    or	$a6,$a3,$a2
    sw	$a6,1800($s0)
    # Line 1098
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1098
    ori	$a4,$a4,0x20
    sw	$a4,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93ea3c:
    # Line 985
    sltiu	$a7,$a0,3552
    bnez	$a7,.L0d93e448
    li	$t3,3512
    beqz	$a2,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$t0,$a2,0xf
    bltz	$t0,.L0d93e494
    lui	$a3,0x1
    # Line 1064
    li	$a0,2
    # Line 1063
    or	$t1,$a3,$a2
    # Line 1064
    b	.L0d93e474
    # Line 1063
    sw	$t1,1792($s0)
.L0d93ea70:
    # Line 985
    bnez	$t2,.L0d93ed38
    sltiu	$t2,$a0,3480
    sltiu	$t3,$a0,3505
    bnez	$t3,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    # Line 985
    li	$t8,3505
    beq	$a0,$t8,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93ea98:
    # Line 985
    bnez	$t9,.L0d93ed6c
    li	$t9,3170
    sltiu	$at,$a0,3172
    beqz	$at,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$v0,$a2,0xa
    bltz	$v0,.L0d93e494
    lui	$a3,0x20
    # Line 1082
    li	$a0,2
    # Line 1081
    or	$v1,$a3,$a2
    # Line 1082
    b	.L0d93e474
    # Line 1081
    sw	$v1,1792($s0)
.L0d93eacc:
    # Line 985
    bnez	$a1,.L0d93ed94
    sltiu	$v1,$a0,3058
    sltiu	$a2,$a0,3090
    beqz	$a2,.L0d93f088
    li	$v0,3168
    lw	$a2,1792($s0)
    andi	$a3,$a2,0x4000
    bnez	$a3,.L0d93e494
    nop
    # Line 1055
    lw	$t9,11916($s0)
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1054
    ori	$a4,$a2,0x4000
    # Line 1055
    jal	__glSetError
    # Line 1054
    sw	$a4,1792($s0)
    # Line 1056
    lw	$t9,11908($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    # Line 1057
    b	.L0d93e474
    li	$a0,2
.L0d93eb20:
    # Line 985
    bnez	$a5,.L0d93ee18
    li	$t0,2960
    sltiu	$a6,$a0,2978
    beqz	$a6,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$a7,$a2,0x9
    bltz	$a7,.L0d93e494
    lui	$a3,0x40
    # Line 1040
    li	$a0,2
    # Line 1039
    or	$t0,$a3,$a2
    # Line 1040
    b	.L0d93e474
    # Line 1039
    sw	$t0,1792($s0)
.L0d93eb54:
    # Line 985
    bnez	$t1,.L0d93ee88
    li	$v0,2884
    sltiu	$t2,$a0,2897
    beqz	$t2,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$t3,$a2,0x40
    bnezl	$t3,.L0d93e498
    ld	$s0,0($sp)
    sd	$ra,16($sp)
    # Line 1016
    ori	$ra,$a2,0x40
    sw	$ra,1792($s0)
    # Line 1017
    li	$t9,2
    sw	$t9,4120($zero)
    # Line 1018
    lw	$t9,11792($s0)
    # Line 1017
    lw	$t8,11756($s0)
    # Line 1018
    move	$a0,$s0
    # Line 1017
    ori	$t8,$t8,0x20
    # Line 1018
    jal	__glSetError
    # Line 1017
    sw	$t8,11756($s0)
    # Line 1019
    lw	$t9,12000($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0d93e494
    ld	$ra,16($sp)
.L0d93ebb8:
    # Line 985
    bne	$a0,$at,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$v0,$a2,0x800
    bnez	$v0,.L0d93e494
    # Line 1046
    ori	$a1,$a2,0x800
    sw	$a1,1792($s0)
    # Line 1047
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$v1,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1047
    ori	$v1,$v1,0x4
    sw	$v1,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93ebf8:
    # Line 985
    bne	$a0,$a2,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$a3,$a2,0x400
    bnez	$a3,.L0d93e494
    # Line 1042
    ori	$a6,$a2,0x400
    sw	$a6,1792($s0)
    # Line 1043
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1043
    ori	$a4,$a4,0x8
    sw	$a4,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93ec38:
    # Line 985
    li	$a2,0x8094
    sltu	$a7,$a0,$a2
    bnez	$a7,.L0d93ef28
    sltu	$t0,$a2,$a0
    bnez	$t0,.L0d93f10c
    li	$t0,0x80bc
    lw	$a2,1796($s0)
    andi	$t1,$a2,0x20
    bnez	$t1,.L0d93e494
    # Line 1201
    ld	$gp,8($sp)
    # Line 1193
    sb	$a4,32209($s0)
    # Line 1192
    ori	$t2,$a2,0x20
    sw	$t2,1796($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93ec78:
    # Line 985
    sltu	$t3,$a0,$a2
    bnez	$t3,.L0d93ef6c
    sltu	$t8,$a2,$a0
    beqz	$t8,.L0d93f1ec
    li	$t9,0x8076
    bne	$a0,$t9,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1201
    ld	$gp,8($sp)
    # Line 1142
    lw	$v1,5356($s0)
    # Line 1141
    lw	$at,5344($s0)
    lui	$v0,0xf
    ori	$v0,$v0,0xf000
    # Line 1142
    ori	$v1,$v1,0x2
    sw	$v1,5356($s0)
    # Line 1141
    or	$at,$at,$v0
    sw	$at,5344($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93ecc4:
    # Line 985
    li	$a2,0x8012
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d93efe8
    sltu	$a3,$a2,$a0
    bnez	$a3,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$a4,$a2,0x4
    bltz	$a4,.L0d93e494
    lui	$a3,0x800
    # Line 1165
    or	$a6,$a3,$a2
    sw	$a6,1792($s0)
    # Line 1166
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a5,11756($s0)
    ori	$a5,$a5,0x10
    # Line 1167
    b	.L0d93e474
    # Line 1166
    sw	$a5,11756($s0)
.L0d93ed0c:
    # Line 985
    bne	$a0,$a7,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1125
    lw	$t1,1796($s0)
    ori	$t1,$t1,0x200
    sw	$t1,1796($s0)
    # Line 1126
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$t0,11756($s0)
    ori	$t0,$t0,0x4
    # Line 1127
    b	.L0d93e474
    # Line 1126
    sw	$t0,11756($s0)
.L0d93ed38:
    # Line 985
    bnez	$t2,.L0d93f068
    li	$t9,3479
    sltiu	$t3,$a0,3481
    bnez	$t3,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93ed54:
    # Line 985
    bnez	$t8,.L0d93f078
    li	$at,3474
    bnez	$a2,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93ed6c:
    # Line 985
    bne	$a0,$t9,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$at,$a2,0xb
    bltz	$at,.L0d93e494
    lui	$a3,0x10
    # Line 1079
    li	$a0,2
    # Line 1078
    or	$v0,$a3,$a2
    # Line 1079
    b	.L0d93e474
    # Line 1078
    sw	$v0,1792($s0)
.L0d93ed94:
    # Line 985
    bnez	$v1,.L0d93f0b0
    li	$a2,3057
    sltiu	$a1,$a0,3059
    beqz	$a1,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1796($s0)
    andi	$a3,$a2,0x800
    bnez	$a3,.L0d93e494
    # Line 1035
    nop	# was lw $t9, -32096($gp) # &__glcrmim_BlendEquationEXT
    li	$a0,3057
    sd	$ra,16($sp)
    # Line 1034
    ori	$a4,$a2,0x800
    # Line 1035
    bal __glcrmim_BlendEquationEXT
    # Line 1034
    sw	$a4,1796($s0)
    # Line 1036
    # lw $t9, -31996($gp) # &__glCrmEnableBlend
    bal __glCrmEnableBlend
    move	$a0,$s0
    ld	$ra,16($sp)
    # Line 1037
    b	.L0d93e474
    li	$a0,2
.L0d93ede4:
    # Line 985
    bne	$a0,$a5,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$a6,$a2,0x8
    bnez	$a6,.L0d93e494
    # Line 1009
    nop	# was lw $t9, -31984($gp) # &__glCrmEnableDither
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1008
    ori	$a7,$a2,0x8
    # Line 1009
    bal __glCrmEnableDither
    # Line 1008
    sw	$a7,1792($s0)
    b	.L0d93e494
    ld	$ra,16($sp)
.L0d93ee18:
    # Line 985
    bne	$a0,$t0,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$t1,$a2,0x8000
    bnez	$t1,.L0d93e494
    # Line 1060
    nop	# was lw $t9, -31328($gp) # &__glCrmEnableStencilTest
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1059
    ori	$t2,$a2,0x8000
    # Line 1060
    jal	__glCrmEnableStencilTest
    # Line 1059
    sw	$t2,1792($s0)
    ld	$ra,16($sp)
    # Line 1061
    b	.L0d93e474
    li	$a0,2
.L0d93ee50:
    # Line 985
    bne	$a0,$t3,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$t8,$a2,0x20
    bnez	$t8,.L0d93e494
    # Line 1013
    nop	# was lw $t9, -31972($gp) # &__glCrmEnableFogTest
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1012
    ori	$at,$a2,0x20
    # Line 1013
    bal __glCrmEnableFogTest
    # Line 1012
    sw	$at,1792($s0)
    ld	$ra,16($sp)
    b	.L0d93e474
    # Line 1013
    li	$a0,2
.L0d93ee88:
    # Line 985
    bne	$a0,$v0,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$v1,$a2,0x1000
    bnez	$v1,.L0d93e494
    # Line 1000
    ori	$a2,$a2,0x1000
    sw	$a2,1792($s0)
    # Line 1001
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$a0,11756($s0)
    # Line 1201
    ld	$gp,8($sp)
    # Line 1001
    ori	$a0,$a0,0x4
    sw	$a0,11756($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93eec8:
    ld	$gp,8($sp)
    # Line 1146
    lw	$a5,5356($s0)
    # Line 1145
    lw	$a3,5344($s0)
    lui	$a4,0xf000
    # Line 1146
    ori	$a5,$a5,0x8
    sw	$a5,5356($s0)
    # Line 1145
    or	$a3,$a3,$a4
    sw	$a3,5344($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93eef4:
    # Line 985
    sltu	$a6,$a0,$a2
    bnez	$a6,.L0d93f0e8
    li	$a5,0x80d1
    sltu	$a7,$a2,$a0
    bnez	$a7,.L0d93f1b8
    li	$a5,0x8568
    lw	$a2,1796($s0)
    andi	$t0,$a2,0x4
    bnez	$t0,.L0d93e494
    # Line 1190
    li	$a0,2
    # Line 1189
    ori	$t1,$a2,0x4
    # Line 1190
    b	.L0d93e474
    # Line 1189
    sw	$t1,1796($s0)
.L0d93ef28:
    # Line 985
    li	$a2,0x8079
    sltu	$t2,$a0,$a2
    bnez	$t2,.L0d93f134
    sltu	$t3,$a2,$a0
    bnez	$t3,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1201
    ld	$gp,8($sp)
    # Line 1154
    lw	$at,5356($s0)
    # Line 1153
    lw	$t8,5344($s0)
    lui	$t9,0x800
    # Line 1154
    ori	$at,$at,0x10
    sw	$at,5356($s0)
    # Line 1153
    or	$t8,$t8,$t9
    sw	$t8,5344($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93ef6c:
    # Line 985
    li	$a2,0x8074
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0d93f16c
    li	$v0,0x806f
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1201
    ld	$gp,8($sp)
    # Line 1134
    lw	$a1,5356($s0)
    # Line 1133
    lw	$a0,5344($s0)
    # Line 1134
    ori	$a1,$a1,0x20
    sw	$a1,5356($s0)
    # Line 1133
    ori	$a0,$a0,0xff
    sw	$a0,5344($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93efb0:
    # Line 985
    bne	$a0,$a2,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$a3,$a2,0x2
    bltz	$a3,.L0d93e494
    lui	$a3,0x2000
    # Line 1173
    or	$a5,$a3,$a2
    sw	$a5,1792($s0)
    # Line 1174
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a4,11756($s0)
    ori	$a4,$a4,0x10
    # Line 1175
    b	.L0d93e474
    # Line 1174
    sw	$a4,11756($s0)
.L0d93efe8:
    # Line 985
    li	$a6,0x8011
    bne	$a0,$a6,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$a7,$a2,0x5
    bltz	$a7,.L0d93e494
    lui	$a3,0x400
    # Line 1161
    or	$t1,$a3,$a2
    sw	$t1,1792($s0)
    # Line 1162
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$t0,11756($s0)
    ori	$t0,$t0,0x10
    # Line 1163
    b	.L0d93e474
    # Line 1162
    sw	$t0,11756($s0)
.L0d93f024:
    # Line 985
    sltiu	$t2,$a0,16389
    bnez	$t2,.L0d93f194
    nop
    bnez	$a2,.L0d93ea00
    # Line 1095
    addiu	$a3,$a0,-16384
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93f040:
    # Line 985
    beq	$a0,$t3,.L0d93e7bc
    # Line 1087
    addiu	$a3,$a0,-12288
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93f050:
    # Line 985
    bnez	$t8,.L0d93f1a8
    li	$a3,3507
    bnez	$a2,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93f068:
    # Line 985
    beq	$a0,$t9,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93f078:
    # Line 985
    beq	$a0,$at,.L0d93e738
    # Line 1106
    addiu	$a3,$a0,-3472
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93f088:
    # Line 985
    bne	$a0,$v0,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$v1,$a2,0xd
    bltz	$v1,.L0d93e494
    lui	$a3,0x4
    # Line 1073
    li	$a0,2
    # Line 1072
    or	$a1,$a3,$a2
    # Line 1073
    b	.L0d93e474
    # Line 1072
    sw	$a1,1792($s0)
.L0d93f0b0:
    # Line 985
    bne	$a0,$a2,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    andi	$a3,$a2,0x4
    bnez	$a3,.L0d93e494
    # Line 1031
    nop	# was lw $t9, -31980($gp) # &__glCrmEnableLogicOp
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1030
    ori	$a4,$a2,0x4
    # Line 1031
    bal __glCrmEnableLogicOp
    # Line 1030
    sw	$a4,1792($s0)
    ld	$ra,16($sp)
    # Line 1032
    b	.L0d93e474
    li	$a0,2
.L0d93f0e8:
    # Line 985
    bne	$a0,$a5,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1796($s0)
    andi	$a6,$a2,0x2
    bnez	$a6,.L0d93e494
    # Line 1187
    li	$a0,2
    # Line 1186
    ori	$a7,$a2,0x2
    # Line 1187
    b	.L0d93e474
    # Line 1186
    sw	$a7,1796($s0)
.L0d93f10c:
    # Line 985
    bne	$a0,$t0,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    lui	$a3,0x8000
    and	$t1,$a3,$a2
    bnez	$t1,.L0d93e494
    # Line 1181
    li	$a0,2
    # Line 1180
    or	$t2,$a3,$a2
    # Line 1181
    b	.L0d93e474
    # Line 1180
    sw	$t2,1792($s0)
.L0d93f134:
    # Line 985
    li	$t3,0x8078
    bne	$a0,$t3,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1201
    ld	$gp,8($sp)
    # Line 1150
    lw	$at,5356($s0)
    # Line 1149
    lw	$t8,5344($s0)
    lui	$t9,0x7f0
    # Line 1150
    ori	$at,$at,0x4
    sw	$at,5356($s0)
    # Line 1149
    or	$t8,$t8,$t9
    sw	$t8,5344($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f16c:
    # Line 985
    bne	$a0,$v0,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1792($s0)
    dsll32	$v1,$a2,0x1
    bltz	$v1,.L0d93e494
    lui	$a3,0x4000
    # Line 1178
    li	$a0,2
    # Line 1177
    or	$a1,$a3,$a2
    # Line 1178
    b	.L0d93e474
    # Line 1177
    sw	$a1,1792($s0)
.L0d93f194:
    # Line 985
    li	$a2,16388
    beq	$a0,$a2,.L0d93ea00
    # Line 1095
    addiu	$a3,$a0,-16384
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93f1a8:
    # Line 985
    beq	$a0,$a3,.L0d93e454
    # Line 1116
    addiu	$a2,$a0,-3504
    b	.L0d93e960
    sd	$ra,16($sp)
.L0d93f1b8:
    # Line 985
    bne	$a0,$a5,.L0d93e964
    # Line 1200
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 985
    lw	$a2,1796($s0)
    dsll32	$a6,$a2,0xe
    bltz	$a6,.L0d93e494
    lui	$a3,0x2
    # Line 1201
    ld	$gp,8($sp)
    # Line 1197
    sb	$a4,32210($s0)
    # Line 1196
    or	$a7,$a3,$a2
    sw	$a7,1796($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f1ec:
    ld	$gp,8($sp)
    # Line 1138
    lw	$t1,5356($s0)
    # Line 1137
    lw	$t0,5344($s0)
    # Line 1138
    ori	$t1,$t1,0x1
    sw	$t1,5356($s0)
    # Line 1137
    ori	$t0,$t0,0xf00
    sw	$t0,5344($s0)
    # Line 1201
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glcrmim_Enable

# Function: __glcrmim_Disable
# Declared: Line 1207 (Source lines: 1208-1435)
# Address: 0x0d93f220 - 0x0d9401f4 (Size: 4052 bytes, Frame: 32)
.globl __glcrmim_Disable
.ent __glcrmim_Disable
__glcrmim_Disable:
    # Line 1208
    addiu	$sp,$sp,-32
    # Line 1209
    lw	$v0,4120($zero)
    # Line 1208
    sd	$s0,0($sp)
    # Line 1209
    li	$a4,1
    # Line 1208
    lui	$at,0x11
    # Line 1209
    lw	$s0,4112($zero)
    # Line 1208
    addiu	$at,$at,7020
    sd	$gp,8($sp)
    # Line 1209
    beq	$v0,$a4,.L0d93f804
    # Line 1208
    addu	$gp,$t9,$at
    # Line 1219
    sltiu	$v0,$a0,3511
    bnez	$v0,.L0d93f2b0
    sltiu	$a7,$a0,3169
    sltiu	$v1,$a0,3512
    bnez	$v1,.L0d93f2f4
    li	$a2,0x8010
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d93f39c
    sltiu	$t2,$a0,12292
    sltu	$a3,$a2,$a0
    bnez	$a3,.L0d93f474
    li	$a2,0x8077
    lw	$a2,1792($s0)
    nor	$a4,$a2,$zero
    dsll32	$a4,$a4,0x6
    bltz	$a4,.L0d93f344
    lui	$a3,0x200
    # Line 1389
    nor	$a6,$a3,$zero
    and	$a6,$a2,$a6
    sw	$a6,1792($s0)
    # Line 1390
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a5,11756($s0)
    ori	$a5,$a5,0x10
    # Line 1391
    b	.L0d93f324
    # Line 1390
    sw	$a5,11756($s0)
.L0d93f2b0:
    # Line 1219
    bnez	$a7,.L0d93f354
    sltiu	$a6,$a0,2929
    sltiu	$t0,$a0,3170
    beqz	$t0,.L0d93f3dc
    sltiu	$v1,$a0,3478
    lw	$a2,1792($s0)
    nor	$t1,$a2,$zero
    dsll32	$t1,$t1,0xc
    bltz	$t1,.L0d93f344
    lui	$a3,0x8
    # Line 1308
    li	$a0,2
    # Line 1307
    nor	$t2,$a3,$zero
    and	$t2,$a2,$t2
    # Line 1308
    b	.L0d93f324
    # Line 1307
    sw	$t2,1792($s0)
.L0d93f2ec:
    # Line 1219
    bne	$a0,$t3,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93f2f4:
    # Line 1348
    lw	$a2,1812($s0)
    addiu	$a3,$a0,-3504
    sllv	$a3,$a4,$a3
    nor	$t8,$a2,$zero
    andi	$t9,$a3,0xffff
    and	$t8,$t8,$t9
    bnez	$t8,.L0d93f344
    # Line 1350
    nor	$a4,$a3,$zero
    andi	$a4,$a4,0xffff
    # Line 1351
    li	$a0,2
    # Line 1350
    and	$a4,$a2,$a4
    sw	$a4,1812($s0)
.L0d93f324:
    # Line 1435
    sw	$a0,4120($zero)
    lw	$a5,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1435
    ori	$a5,$a5,0x1
    sw	$a5,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f344:
    ld	$s0,0($sp)
.L0d93f348:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f354:
    # Line 1219
    bnez	$a6,.L0d93f420
    sltiu	$a7,$a0,2930
    beqz	$a7,.L0d93f530
    sltiu	$t3,$a0,3042
    lw	$a2,1792($s0)
    nor	$t0,$a2,$zero
    andi	$t0,$t0,0x10
    bnez	$t0,.L0d93f344
    # Line 1238
    nop	# was lw $t9, -31796($gp) # &__glCrmEnableDepthTest
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1237
    li	$t1,-17
    and	$t1,$a2,$t1
    # Line 1238
    jal	__glCrmEnableDepthTest
    # Line 1237
    sw	$t1,1792($s0)
    ld	$ra,16($sp)
    # Line 1239
    b	.L0d93f324
    li	$a0,2
.L0d93f39c:
    # Line 1219
    bnez	$t2,.L0d93f4c0
    sltiu	$t3,$a0,12293
    bnez	$t3,.L0d93f670
    sltiu	$t8,$a0,16387
    bnez	$t8,.L0d93f8a8
    sltiu	$t9,$a0,16388
    bnez	$t9,.L0d93f8e0
    sltiu	$a2,$a0,16390
    bnez	$a2,.L0d93ffb4
    sltiu	$at,$a0,16391
    bnez	$at,.L0d93f8e0
    li	$v0,16391
    beq	$a0,$v0,.L0d93f8e0
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93f3dc:
    bnez	$v1,.L0d93f4fc
    sltiu	$a1,$a0,3479
    bnez	$a1,.L0d93f5d8
    sltiu	$a2,$a0,3506
    bnez	$a2,.L0d93f964
    sltiu	$a3,$a0,3507
    bnez	$a3,.L0d93f2f4
    sltiu	$a2,$a0,3509
    bnez	$a2,.L0d93ffe0
    sltiu	$a3,$a0,3508
    sltiu	$a5,$a0,3510
    bnez	$a5,.L0d93f2f4
    li	$a6,3510
    beq	$a0,$a6,.L0d93f2f4
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93f420:
    sltiu	$a7,$a0,2882
    bnez	$a7,.L0d93f57c
    sltiu	$t0,$a0,2883
    beqz	$t0,.L0d93f764
    sltiu	$v1,$a0,2903
    lw	$a2,1792($s0)
    nor	$t1,$a2,$zero
    andi	$t1,$t1,0x2000
    bnez	$t1,.L0d93f344
    # Line 1282
    li	$t8,-8193
    and	$t8,$a2,$t8
    sw	$t8,1792($s0)
    # Line 1283
    li	$t3,2
    sw	$t3,4120($zero)
    lw	$t2,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1283
    ori	$t2,$t2,0x4
    sw	$t2,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f474:
    # Line 1219
    sltu	$t9,$a0,$a2
    bnez	$t9,.L0d93f60c
    sltu	$at,$a2,$a0
    beqz	$at,.L0d93fe30
    li	$a2,0x80d0
    sltu	$v0,$a0,$a2
    bnez	$v0,.L0d93fb50
    sltu	$v1,$a2,$a0
    bnez	$v1,.L0d93fe64
    li	$a2,0x80d2
    lw	$a2,1796($s0)
    nor	$a0,$a2,$zero
    andi	$a0,$a0,0x1
    bnez	$a0,.L0d93f344
    # Line 1416
    li	$a0,2
    # Line 1415
    li	$a1,-2
    and	$a1,$a2,$a1
    # Line 1416
    b	.L0d93f324
    # Line 1415
    sw	$a1,1796($s0)
.L0d93f4c0:
    # Line 1219
    sltiu	$a2,$a0,10754
    bnez	$a2,.L0d93f69c
    sltiu	$a3,$a0,10755
    beqz	$a3,.L0d93f81c
    sltiu	$a2,$a0,12290
    # Line 1361
    lw	$a5,1796($s0)
    li	$a6,-1025
    and	$a5,$a5,$a6
    sw	$a5,1796($s0)
    # Line 1362
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a4,11756($s0)
    ori	$a4,$a4,0x4
    # Line 1363
    b	.L0d93f324
    # Line 1362
    sw	$a4,11756($s0)
.L0d93f4fc:
    # Line 1219
    sltiu	$a7,$a0,3473
    bnez	$a7,.L0d93f6d8
    sltiu	$t0,$a0,3474
    bnez	$t0,.L0d93f5d8
    sltiu	$a2,$a0,3476
    bnez	$a2,.L0d93fc88
    sltiu	$t1,$a0,3477
    bnez	$t1,.L0d93f5d8
    li	$t2,3477
    beq	$a0,$t2,.L0d93f5d8
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93f530:
    bnez	$t3,.L0d93f718
    sltiu	$t8,$a0,3008
    sltiu	$t8,$a0,3043
    beqz	$t8,.L0d93f9c0
    sltiu	$a1,$a0,3089
    lw	$a2,1792($s0)
    nor	$t9,$a2,$zero
    andi	$t9,$t9,0x2
    bnez	$t9,.L0d93f344
    # Line 1226
    nop	# was lw $t9, -31996($gp) # &__glCrmEnableBlend
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1225
    li	$at,-3
    and	$at,$a2,$at
    # Line 1226
    bal __glCrmEnableBlend
    # Line 1225
    sw	$at,1792($s0)
    ld	$ra,16($sp)
    # Line 1227
    b	.L0d93f324
    li	$a0,2
.L0d93f57c:
    # Line 1219
    sltiu	$v0,$a0,2852
    bnez	$v0,.L0d93f7b0
    sltiu	$v1,$a0,2853
    beqz	$v1,.L0d93fabc
    li	$at,2881
    lw	$a2,1792($s0)
    nor	$a0,$a2,$zero
    andi	$a0,$a0,0x100
    bnez	$a0,.L0d93f344
    # Line 1259
    li	$a3,-257
    and	$a3,$a2,$a3
    sw	$a3,1792($s0)
    # Line 1260
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a1,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1260
    ori	$a1,$a1,0x2
    sw	$a1,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f5d0:
    # Line 1219
    bne	$a0,$a5,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93f5d8:
    # Line 1338
    lw	$a2,1808($s0)
    addiu	$a3,$a0,-3472
    sllv	$a3,$a4,$a3
    nor	$a6,$a2,$zero
    andi	$a7,$a3,0xffff
    and	$a6,$a6,$a7
    bnez	$a6,.L0d93f344
    # Line 1340
    nor	$a4,$a3,$zero
    # Line 1341
    li	$a0,2
    # Line 1340
    andi	$a4,$a4,0xffff
    and	$a4,$a2,$a4
    # Line 1341
    b	.L0d93f324
    # Line 1340
    sw	$a4,1808($s0)
.L0d93f60c:
    # Line 1219
    li	$a2,0x8037
    sltu	$a5,$a0,$a2
    bnez	$a5,.L0d93f858
    sltu	$a6,$a2,$a0
    bnez	$a6,.L0d93fb98
    li	$a2,0x8075
    lw	$a2,1792($s0)
    nor	$a7,$a2,$zero
    dsll32	$a7,$a7,0x7
    bltz	$a7,.L0d93f344
    lui	$a3,0x100
    # Line 1353
    nor	$t1,$a3,$zero
    and	$t1,$a2,$t1
    sw	$t1,1792($s0)
    # Line 1354
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$t0,11756($s0)
    ori	$t0,$t0,0x4
    # Line 1355
    b	.L0d93f324
    # Line 1354
    sw	$t0,11756($s0)
.L0d93f65c:
    # Line 1219
    sltiu	$t2,$a0,12289
    bnez	$t2,.L0d93f83c
    li	$t9,12288
    beqz	$a2,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93f670:
    # Line 1319
    lw	$a2,1804($s0)
    addiu	$a3,$a0,-12288
    sllv	$a3,$a4,$a3
    nor	$t3,$a2,$zero
    and	$t3,$a3,$t3
    bnez	$t3,.L0d93f344
    # Line 1322
    li	$a0,2
    # Line 1321
    nor	$a4,$a3,$zero
    and	$a4,$a2,$a4
    # Line 1322
    b	.L0d93f324
    # Line 1321
    sw	$a4,1804($s0)
.L0d93f69c:
    # Line 1219
    sltiu	$a2,$a0,3553
    bnez	$a2,.L0d93f928
    sltiu	$a5,$a0,3554
    beqz	$a5,.L0d93fc3c
    li	$a6,10753
    lw	$a2,1792($s0)
    nor	$a6,$a2,$zero
    dsll32	$a6,$a6,0xe
    bltz	$a6,.L0d93f344
    lui	$a3,0x2
    # Line 1299
    li	$a0,2
    # Line 1298
    nor	$a7,$a3,$zero
    and	$a7,$a2,$a7
    # Line 1299
    b	.L0d93f324
    # Line 1298
    sw	$a7,1792($s0)
.L0d93f6d8:
    # Line 1219
    sltiu	$t0,$a0,3456
    bnez	$t0,.L0d93f988
    sltiu	$t9,$a0,3171
    sltiu	$t1,$a0,3457
    beqz	$t1,.L0d93f5d0
    li	$a5,3472
    lw	$a2,1792($s0)
    nor	$t2,$a2,$zero
    dsll32	$t2,$t2,0x8
    bltz	$t2,.L0d93f344
    lui	$a3,0x80
    # Line 1302
    li	$a0,2
    # Line 1301
    nor	$t3,$a3,$zero
    and	$t3,$a2,$t3
    # Line 1302
    b	.L0d93f324
    # Line 1301
    sw	$t3,1792($s0)
.L0d93f718:
    # Line 1219
    bnez	$t8,.L0d93fa18
    sltiu	$a5,$a0,2977
    sltiu	$t9,$a0,3009
    beqz	$t9,.L0d93fd24
    li	$a5,3024
    lw	$a2,1792($s0)
    nor	$at,$a2,$zero
    andi	$at,$at,0x1
    bnez	$at,.L0d93f344
    # Line 1222
    nop	# was lw $t9, -32004($gp) # &__glCrmEnableAlphaTest
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1221
    li	$v0,-2
    and	$v0,$a2,$v0
    # Line 1222
    bal __glCrmEnableAlphaTest
    # Line 1221
    sw	$v0,1792($s0)
    ld	$ra,16($sp)
    # Line 1223
    b	.L0d93f324
    li	$a0,2
.L0d93f764:
    # Line 1219
    bnez	$v1,.L0d93fa50
    sltiu	$t1,$a0,2896
    sltiu	$a1,$a0,2904
    beqz	$a1,.L0d93fda8
    li	$t3,2912
    lw	$a2,1792($s0)
    nor	$a3,$a2,$zero
    andi	$a3,$a3,0x80
    bnezl	$a3,.L0d93f348
    ld	$s0,0($sp)
    # Line 1230
    lw	$t9,11792($s0)
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1229
    li	$a4,-129
    and	$a4,$a2,$a4
    # Line 1230
    jal	__glCrmEnableAlphaTest
    # Line 1229
    sw	$a4,1792($s0)
    b	.L0d93f344
    ld	$ra,16($sp)
.L0d93f7b0:
    # Line 1219
    sltiu	$a5,$a0,2848
    bnez	$a5,.L0d93fb04
    sltiu	$a6,$a0,2849
    beqz	$a6,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$a7,$a2,$zero
    andi	$a7,$a7,0x200
    bnez	$a7,.L0d93f344
    # Line 1255
    li	$t2,-513
    and	$t2,$a2,$t2
    sw	$t2,1792($s0)
    # Line 1256
    li	$t1,2
    sw	$t1,4120($zero)
    lw	$t0,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1256
    ori	$t0,$t0,0x2
    sw	$t0,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f804:
    # Line 1209
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d93f344
    ld	$ra,16($sp)
.L0d93f81c:
    # Line 1219
    bnez	$a2,.L0d93f65c
    sltiu	$t3,$a0,12291
    bnez	$t3,.L0d93f670
    li	$t8,12291
    beq	$a0,$t8,.L0d93f670
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93f83c:
    beq	$a0,$t9,.L0d93f670
.L0d93f840:
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93f844:
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d93f344
    ld	$ra,16($sp)
.L0d93f858:
    # Line 1219
    li	$a2,0x8024
    sltu	$at,$a0,$a2
    bnez	$at,.L0d93fbec
    sltu	$v0,$a2,$a0
    bnez	$v0,.L0d93ff30
    li	$t0,0x802e
    lw	$a2,1792($s0)
    nor	$v1,$a2,$zero
    dsll32	$v1,$v1,0x3
    bltz	$v1,.L0d93f344
    lui	$a3,0x1000
    # Line 1401
    nor	$a4,$a3,$zero
    and	$a4,$a2,$a4
    sw	$a4,1792($s0)
    # Line 1402
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a1,11756($s0)
    ori	$a1,$a1,0x10
    # Line 1403
    b	.L0d93f324
    # Line 1402
    sw	$a1,11756($s0)
.L0d93f8a8:
    # Line 1219
    sltiu	$a2,$a0,16385
    bnez	$a2,.L0d93f8cc
    sltiu	$a5,$a0,16386
    bnez	$a5,.L0d93f8e0
    li	$a6,16386
    beq	$a0,$a6,.L0d93f8e0
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93f8cc:
    sltiu	$a7,$a0,16384
    bnez	$a7,.L0d93ffd0
    li	$a1,12293
    beqz	$a2,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d93f8e0:
    # Line 1327
    lw	$a2,1800($s0)
    addiu	$a3,$a0,-16384
    sllv	$a3,$a4,$a3
    nor	$t0,$a2,$zero
    and	$t0,$a3,$t0
    bnez	$t0,.L0d93f344
    # Line 1329
    nor	$a6,$a3,$zero
    and	$a6,$a2,$a6
    sw	$a6,1800($s0)
    # Line 1330
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1330
    ori	$a4,$a4,0x20
    sw	$a4,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93f928:
    # Line 1219
    sltiu	$a7,$a0,3552
    bnez	$a7,.L0d93f2ec
    li	$t3,3512
    beqz	$a2,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t0,$a2,$zero
    dsll32	$t0,$t0,0xf
    bltz	$t0,.L0d93f344
    lui	$a3,0x1
    # Line 1296
    li	$a0,2
    # Line 1295
    nor	$t1,$a3,$zero
    and	$t1,$a2,$t1
    # Line 1296
    b	.L0d93f324
    # Line 1295
    sw	$t1,1792($s0)
.L0d93f964:
    # Line 1219
    sltiu	$t2,$a0,3504
    bnez	$t2,.L0d93fc6c
    sltiu	$t3,$a0,3505
    bnez	$t3,.L0d93f2f4
    li	$t8,3505
    beq	$a0,$t8,.L0d93f2f4
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93f988:
    bnez	$t9,.L0d93fca4
    sltiu	$at,$a0,3172
    beqz	$at,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$v0,$a2,$zero
    dsll32	$v0,$v0,0xa
    bltz	$v0,.L0d93f344
    lui	$a3,0x20
    # Line 1314
    li	$a0,2
    # Line 1313
    nor	$v1,$a3,$zero
    and	$v1,$a2,$v1
    # Line 1314
    b	.L0d93f324
    # Line 1313
    sw	$v1,1792($s0)
.L0d93f9c0:
    # Line 1219
    bnez	$a1,.L0d93fcd8
    sltiu	$a2,$a0,3090
    beqz	$a2,.L0d94001c
    li	$a7,3168
    lw	$a2,1792($s0)
    nor	$a3,$a2,$zero
    andi	$a3,$a3,0x4000
    bnez	$a3,.L0d93f344
    nop
    # Line 1287
    lw	$t9,11916($s0)
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1286
    li	$a4,-16385
    and	$a4,$a2,$a4
    # Line 1287
    jal	__glSetError
    # Line 1286
    sw	$a4,1792($s0)
    # Line 1288
    lw	$t9,11908($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    # Line 1289
    b	.L0d93f324
    li	$a0,2
.L0d93fa18:
    # Line 1219
    bnez	$a5,.L0d93fd60
    sltiu	$a6,$a0,2978
    beqz	$a6,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$a7,$a2,$zero
    dsll32	$a7,$a7,0x9
    bltz	$a7,.L0d93f344
    lui	$a3,0x40
    # Line 1272
    li	$a0,2
    # Line 1271
    nor	$t0,$a3,$zero
    and	$t0,$a2,$t0
    # Line 1272
    b	.L0d93f324
    # Line 1271
    sw	$t0,1792($s0)
.L0d93fa50:
    # Line 1219
    bnez	$t1,.L0d93fde8
    li	$v0,2884
    sltiu	$t2,$a0,2897
    beqz	$t2,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t3,$a2,$zero
    andi	$t3,$t3,0x40
    bnezl	$t3,.L0d93f348
    ld	$s0,0($sp)
    sd	$ra,16($sp)
    # Line 1249
    li	$ra,-65
    and	$ra,$a2,$ra
    sw	$ra,1792($s0)
    # Line 1250
    li	$t9,2
    sw	$t9,4120($zero)
    # Line 1251
    lw	$t9,11792($s0)
    # Line 1250
    lw	$t8,11756($s0)
    # Line 1251
    move	$a0,$s0
    # Line 1250
    ori	$t8,$t8,0x20
    # Line 1251
    jal	__glSetError
    # Line 1250
    sw	$t8,11756($s0)
    # Line 1252
    lw	$t9,12000($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0d93f344
    ld	$ra,16($sp)
.L0d93fabc:
    # Line 1219
    bne	$a0,$at,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$v0,$a2,$zero
    andi	$v0,$v0,0x800
    bnez	$v0,.L0d93f344
    # Line 1278
    li	$a1,-2049
    and	$a1,$a2,$a1
    sw	$a1,1792($s0)
    # Line 1279
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$v1,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1279
    ori	$v1,$v1,0x4
    sw	$v1,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93fb04:
    # Line 1219
    li	$a2,2832
    bne	$a0,$a2,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$a3,$a2,$zero
    andi	$a3,$a3,0x400
    bnez	$a3,.L0d93f344
    # Line 1274
    li	$a6,-1025
    and	$a6,$a2,$a6
    sw	$a6,1792($s0)
    # Line 1275
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1275
    ori	$a4,$a4,0x8
    sw	$a4,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93fb50:
    # Line 1219
    li	$a2,0x8094
    sltu	$a7,$a0,$a2
    bnez	$a7,.L0d93fe9c
    sltu	$t0,$a2,$a0
    bnez	$t0,.L0d9400c0
    li	$v1,0x80bc
    lw	$a2,1796($s0)
    nor	$t1,$a2,$zero
    andi	$t1,$t1,0x20
    bnez	$t1,.L0d93f344
    # Line 1433
    ld	$gp,8($sp)
    # Line 1425
    sb	$zero,32209($s0)
    # Line 1424
    li	$t2,-33
    and	$t2,$a2,$t2
    sw	$t2,1796($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93fb98:
    # Line 1219
    sltu	$t3,$a0,$a2
    bnez	$t3,.L0d93fee8
    sltu	$t8,$a2,$a0
    beqz	$t8,.L0d9401c4
    li	$t9,0x8076
    bne	$a0,$t9,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1433
    ld	$gp,8($sp)
    # Line 1374
    lw	$v1,5356($s0)
    # Line 1373
    lui	$v0,0xf
    # Line 1374
    li	$a0,-3
    # Line 1373
    lw	$at,5344($s0)
    ori	$v0,$v0,0xf000
    # Line 1374
    and	$v1,$v1,$a0
    sw	$v1,5356($s0)
    # Line 1373
    nor	$v0,$v0,$zero
    and	$at,$at,$v0
    sw	$at,5344($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93fbec:
    # Line 1219
    li	$a2,0x8012
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0d93ff70
    sltu	$a1,$a2,$a0
    bnez	$a1,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$a3,$a2,$zero
    dsll32	$a3,$a3,0x4
    bltz	$a3,.L0d93f344
    lui	$a3,0x800
    # Line 1397
    nor	$a5,$a3,$zero
    and	$a5,$a2,$a5
    sw	$a5,1792($s0)
    # Line 1398
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a4,11756($s0)
    ori	$a4,$a4,0x10
    # Line 1399
    b	.L0d93f324
    # Line 1398
    sw	$a4,11756($s0)
.L0d93fc3c:
    # Line 1219
    bne	$a0,$a6,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1357
    lw	$t0,1796($s0)
    li	$t1,-513
    and	$t0,$t0,$t1
    sw	$t0,1796($s0)
    # Line 1358
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$a7,11756($s0)
    ori	$a7,$a7,0x4
    # Line 1359
    b	.L0d93f324
    # Line 1358
    sw	$a7,11756($s0)
.L0d93fc6c:
    # Line 1219
    sltiu	$t2,$a0,3480
    bnez	$t2,.L0d93fff8
    sltiu	$t3,$a0,3481
    bnez	$t3,.L0d93f5d8
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93fc88:
    sltiu	$t8,$a0,3475
    bnez	$t8,.L0d94000c
    li	$a6,3474
    bnez	$a2,.L0d93f5d8
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93fca4:
    li	$t9,3170
    bne	$a0,$t9,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$at,$a2,$zero
    dsll32	$at,$at,0xb
    bltz	$at,.L0d93f344
    lui	$a3,0x10
    # Line 1311
    li	$a0,2
    # Line 1310
    nor	$v0,$a3,$zero
    and	$v0,$a2,$v0
    # Line 1311
    b	.L0d93f324
    # Line 1310
    sw	$v0,1792($s0)
.L0d93fcd8:
    # Line 1219
    sltiu	$v1,$a0,3058
    bnez	$v1,.L0d94004c
    sltiu	$a1,$a0,3059
    beqz	$a1,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1796($s0)
    nor	$a3,$a2,$zero
    andi	$a3,$a3,0x800
    bnez	$a3,.L0d93f344
    # Line 1268
    nop	# was lw $t9, -31996($gp) # &__glCrmEnableBlend
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1267
    li	$a4,-2049
    and	$a4,$a2,$a4
    # Line 1268
    bal __glCrmEnableBlend
    # Line 1267
    sw	$a4,1796($s0)
    ld	$ra,16($sp)
    # Line 1269
    b	.L0d93f324
    li	$a0,2
.L0d93fd24:
    # Line 1219
    bne	$a0,$a5,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$a6,$a2,$zero
    andi	$a6,$a6,0x8
    bnez	$a6,.L0d93f344
    # Line 1242
    nop	# was lw $t9, -31984($gp) # &__glCrmEnableDither
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1241
    li	$a7,-9
    and	$a7,$a2,$a7
    # Line 1242
    bal __glCrmEnableDither
    # Line 1241
    sw	$a7,1792($s0)
    b	.L0d93f344
    ld	$ra,16($sp)
.L0d93fd60:
    # Line 1219
    li	$t0,2960
    bne	$a0,$t0,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t1,$a2,$zero
    andi	$t1,$t1,0x8000
    bnez	$t1,.L0d93f344
    # Line 1292
    nop	# was lw $t9, -31328($gp) # &__glCrmEnableStencilTest
    # Line 1291
    li	$t2,0x8000
    # Line 1292
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1291
    nor	$t2,$t2,$zero
    and	$t2,$a2,$t2
    # Line 1292
    jal	__glCrmEnableStencilTest
    # Line 1291
    sw	$t2,1792($s0)
    ld	$ra,16($sp)
    # Line 1293
    b	.L0d93f324
    li	$a0,2
.L0d93fda8:
    # Line 1219
    bne	$a0,$t3,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t8,$a2,$zero
    andi	$t8,$t8,0x20
    bnez	$t8,.L0d93f344
    # Line 1246
    nop	# was lw $t9, -31972($gp) # &__glCrmEnableFogTest
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1245
    li	$at,-33
    and	$at,$a2,$at
    # Line 1246
    bal __glCrmEnableFogTest
    # Line 1245
    sw	$at,1792($s0)
    ld	$ra,16($sp)
    b	.L0d93f324
    # Line 1246
    li	$a0,2
.L0d93fde8:
    # Line 1219
    bne	$a0,$v0,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$v1,$a2,$zero
    andi	$v1,$v1,0x1000
    bnez	$v1,.L0d93f344
    # Line 1233
    li	$a3,-4097
    and	$a2,$a2,$a3
    sw	$a2,1792($s0)
    # Line 1234
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$a0,11756($s0)
    # Line 1433
    ld	$gp,8($sp)
    # Line 1234
    ori	$a0,$a0,0x4
    sw	$a0,11756($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93fe30:
    ld	$gp,8($sp)
    # Line 1378
    lw	$a6,5356($s0)
    li	$a7,-9
    # Line 1377
    lw	$a4,5344($s0)
    lui	$a5,0xfff
    ori	$a5,$a5,0xffff
    # Line 1378
    and	$a6,$a6,$a7
    sw	$a6,5356($s0)
    # Line 1377
    and	$a4,$a4,$a5
    sw	$a4,5344($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93fe64:
    # Line 1219
    sltu	$t0,$a0,$a2
    bnez	$t0,.L0d940090
    sltu	$t1,$a2,$a0
    bnez	$t1,.L0d940188
    li	$at,0x8568
    lw	$a2,1796($s0)
    nor	$t2,$a2,$zero
    andi	$t2,$t2,0x4
    bnez	$t2,.L0d93f344
    # Line 1422
    li	$a0,2
    # Line 1421
    li	$t3,-5
    and	$t3,$a2,$t3
    # Line 1422
    b	.L0d93f324
    # Line 1421
    sw	$t3,1796($s0)
.L0d93fe9c:
    # Line 1219
    li	$a2,0x8079
    sltu	$t8,$a0,$a2
    bnez	$t8,.L0d9400f4
    sltu	$t9,$a2,$a0
    bnez	$t9,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1433
    ld	$gp,8($sp)
    # Line 1386
    lw	$v1,5356($s0)
    li	$a0,-17
    # Line 1385
    lw	$at,5344($s0)
    lui	$v0,0x800
    nor	$v0,$v0,$zero
    # Line 1386
    and	$v1,$v1,$a0
    sw	$v1,5356($s0)
    # Line 1385
    and	$at,$at,$v0
    sw	$at,5344($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93fee8:
    # Line 1219
    li	$a2,0x8074
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d940134
    sltu	$a3,$a2,$a0
    bnez	$a3,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1433
    ld	$gp,8($sp)
    # Line 1366
    lw	$a6,5356($s0)
    li	$a7,-33
    # Line 1365
    lw	$a4,5344($s0)
    li	$a5,-256
    # Line 1366
    and	$a6,$a6,$a7
    sw	$a6,5356($s0)
    # Line 1365
    and	$a4,$a4,$a5
    sw	$a4,5344($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d93ff30:
    # Line 1219
    bne	$a0,$t0,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t1,$a2,$zero
    dsll32	$t1,$t1,0x2
    bltz	$t1,.L0d93f344
    lui	$a3,0x2000
    # Line 1405
    nor	$t3,$a3,$zero
    and	$t3,$a2,$t3
    sw	$t3,1792($s0)
    # Line 1406
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$t2,11756($s0)
    ori	$t2,$t2,0x10
    # Line 1407
    b	.L0d93f324
    # Line 1406
    sw	$t2,11756($s0)
.L0d93ff70:
    # Line 1219
    li	$t8,0x8011
    bne	$a0,$t8,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t9,$a2,$zero
    dsll32	$t9,$t9,0x5
    bltz	$t9,.L0d93f344
    lui	$a3,0x400
    # Line 1393
    nor	$v0,$a3,$zero
    and	$v0,$a2,$v0
    sw	$v0,1792($s0)
    # Line 1394
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$at,11756($s0)
    ori	$at,$at,0x10
    # Line 1395
    b	.L0d93f324
    # Line 1394
    sw	$at,11756($s0)
.L0d93ffb4:
    # Line 1219
    sltiu	$v1,$a0,16389
    bnez	$v1,.L0d940168
    li	$t8,16388
    bnez	$a2,.L0d93f8e0
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93ffd0:
    beq	$a0,$a1,.L0d93f670
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93ffe0:
    bnez	$a3,.L0d940178
    li	$t9,3507
    bnez	$a2,.L0d93f2f4
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d93fff8:
    li	$a5,3479
    beq	$a0,$a5,.L0d93f5d8
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d94000c:
    beq	$a0,$a6,.L0d93f5d8
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d94001c:
    bne	$a0,$a7,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t0,$a2,$zero
    dsll32	$t0,$t0,0xd
    bltz	$t0,.L0d93f344
    lui	$a3,0x4
    # Line 1305
    li	$a0,2
    # Line 1304
    nor	$t1,$a3,$zero
    and	$t1,$a2,$t1
    # Line 1305
    b	.L0d93f324
    # Line 1304
    sw	$t1,1792($s0)
.L0d94004c:
    # Line 1219
    li	$t2,3057
    bne	$a0,$t2,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t3,$a2,$zero
    andi	$t3,$t3,0x4
    bnez	$t3,.L0d93f344
    # Line 1264
    nop	# was lw $t9, -31980($gp) # &__glCrmEnableLogicOp
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 1263
    li	$t8,-5
    and	$t8,$a2,$t8
    # Line 1264
    bal __glCrmEnableLogicOp
    # Line 1263
    sw	$t8,1792($s0)
    ld	$ra,16($sp)
    # Line 1265
    b	.L0d93f324
    li	$a0,2
.L0d940090:
    # Line 1219
    li	$t9,0x80d1
    bne	$a0,$t9,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1796($s0)
    nor	$at,$a2,$zero
    andi	$at,$at,0x2
    bnez	$at,.L0d93f344
    # Line 1419
    li	$a0,2
    # Line 1418
    li	$v0,-3
    and	$v0,$a2,$v0
    # Line 1419
    b	.L0d93f324
    # Line 1418
    sw	$v0,1796($s0)
.L0d9400c0:
    # Line 1219
    bne	$a0,$v1,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$a0,$a2,$zero
    lui	$a1,0x8000
    and	$a0,$a0,$a1
    bnez	$a0,.L0d93f344
    # Line 1412
    lui	$a3,0x7fff
    # Line 1413
    li	$a0,2
    # Line 1412
    ori	$a3,$a3,0xffff
    and	$a3,$a2,$a3
    # Line 1413
    b	.L0d93f324
    # Line 1412
    sw	$a3,1792($s0)
.L0d9400f4:
    # Line 1219
    li	$a4,0x8078
    bne	$a0,$a4,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1433
    ld	$gp,8($sp)
    # Line 1382
    lw	$a7,5356($s0)
    li	$t0,-5
    # Line 1381
    lw	$a5,5344($s0)
    lui	$a6,0x7f0
    nor	$a6,$a6,$zero
    # Line 1382
    and	$a7,$a7,$t0
    sw	$a7,5356($s0)
    # Line 1381
    and	$a5,$a5,$a6
    sw	$a5,5344($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d940134:
    # Line 1219
    li	$t1,0x806f
    bne	$a0,$t1,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1792($s0)
    nor	$t2,$a2,$zero
    dsll32	$t2,$t2,0x1
    bltz	$t2,.L0d93f344
    lui	$a3,0x4000
    # Line 1410
    li	$a0,2
    # Line 1409
    nor	$t3,$a3,$zero
    and	$t3,$a2,$t3
    # Line 1410
    b	.L0d93f324
    # Line 1409
    sw	$t3,1792($s0)
.L0d940168:
    # Line 1219
    beq	$a0,$t8,.L0d93f8e0
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d940178:
    beq	$a0,$t9,.L0d93f2f4
    nop
    b	.L0d93f840
    sd	$ra,16($sp)
.L0d940188:
    bne	$a0,$at,.L0d93f844
    # Line 1432
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1219
    lw	$a2,1796($s0)
    nor	$v0,$a2,$zero
    dsll32	$v0,$v0,0xe
    bltz	$v0,.L0d93f344
    lui	$a0,0x2
    # Line 1433
    ld	$gp,8($sp)
    # Line 1429
    sb	$zero,32210($s0)
    # Line 1428
    nor	$v1,$a0,$zero
    and	$v1,$a2,$v1
    sw	$v1,1796($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9401c4:
    ld	$gp,8($sp)
    # Line 1370
    lw	$a2,5356($s0)
    li	$a3,-2
    # Line 1369
    lw	$a0,5344($s0)
    li	$a1,-3841
    # Line 1370
    and	$a2,$a2,$a3
    sw	$a2,5356($s0)
    # Line 1369
    and	$a0,$a0,$a1
    sw	$a0,5344($s0)
    # Line 1433
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glcrmim_Disable

# Function: __glCrmEnableAlphaTest
# Declared: Line 1440 (Source lines: 1441-1465)
# Address: 0x0d940200 - 0x0d9402a0 (Size: 160 bytes, Frame: 32)
.globl __glCrmEnableAlphaTest
.ent __glCrmEnableAlphaTest
__glCrmEnableAlphaTest:
    # Line 1441
    lbu	$v0,3220($a0)
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s0,0($sp)
    move	$s0,$a0
    addiu	$at,$at,2956
    sd	$gp,8($sp)
    beqz	$v0,.L0d94026c
    addu	$gp,$t9,$at
    # Line 1446
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x1
    beqz	$v0,.L0d94027c
    lw	$a0,32088($a0)
    # Line 1455
    ori	$a0,$a0,0x800
    sw	$a0,32088($s0)
.L0d94023c:
    # Line 1458
    sll	$v1,$a0,0x14
    bltz	$v1,.L0d94028c
    # Line 1462
    nop	# was lw $t9, -32000($gp) # &__glCrmPassAlphaFunc
.L0d940248:
    # Line 1464
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$a0,11756($s0)
    # Line 1465
    ld	$gp,8($sp)
    # Line 1464
    ori	$a0,$a0,0x1
    sw	$a0,11756($s0)
    # Line 1465
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94026c:
    ld	$s0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94027c:
    # Line 1458
    li	$a2,-2049
    and	$a0,$a0,$a2
    b	.L0d94023c
    sw	$a0,32088($s0)
.L0d94028c:
    sd	$ra,16($sp)
    # Line 1462
    bal __glCrmPassAlphaFunc
    move	$a0,$s0
    b	.L0d940248
    ld	$ra,16($sp)
.end __glCrmEnableAlphaTest

# Function: __glCrmPassAlphaFunc
# Declared: Line 1467 (Source lines: 1468-1480)
# Address: 0x0d9402a0 - 0x0d940314 (Size: 116 bytes, Frame: 16)
.globl __glCrmPassAlphaFunc
.ent __glCrmPassAlphaFunc
__glCrmPassAlphaFunc:
    # Line 1468
    lui	$a4,0x11
    addiu	$a4,$a4,2796
    # Line 1478
    lwc1	$f0,1824($a0)
    # Line 1468
    addu	$at,$t9,$a4
    # Line 1478
    lwc1	$f1,_lit_437f0000
    # Line 1477
    lw	$a3,1820($a0)
    # Line 1478
    mul.s	$f0,$f0,$f1
    # Line 1468
    addiu	$sp,$sp,-16
    # Line 1477
    lw	$a1,0($sp)
    addiu	$a3,$a3,-512
    # Line 1478
    trunc.w.s	$f0,$f0
    # Line 1477
    li	$a2,-3841
    andi	$a3,$a3,0xf
    and	$a1,$a1,$a2
    sll	$a3,$a3,0x8
    # Line 1478
    mfc1	$a2,$f0
    # Line 1477
    or	$a1,$a1,$a3
    # Line 1478
    li	$a3,-256
    # Line 1470
    lw	$v1,32188($a0)
    # Line 1478
    and	$a1,$a1,$a3
    andi	$a2,$a2,0xff
    or	$a1,$a1,$a2
    sw	$a1,0($sp)
    # Line 1479
    lw	$a2,32184($a0)
    lw	$v0,0($sp)
    sw	$a1,8600($a2)
    # Line 1480
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1479
    sw	$v0,8600($v1)
.end __glCrmPassAlphaFunc

# Function: __glCrmEnableBlend
# Declared: Line 1484 (Source lines: 1485-1515)
# Address: 0x0d940320 - 0x0d940420 (Size: 256 bytes, Frame: 32)
.globl __glCrmEnableBlend
.ent __glCrmEnableBlend
__glCrmEnableBlend:
    # Line 1485
    lbu	$v0,3220($a0)
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s0,0($sp)
    move	$s0,$a0
    addiu	$at,$at,2668
    sd	$gp,8($sp)
    beqz	$v0,.L0d940390
    addu	$gp,$t9,$at
    # Line 1489
    lw	$v0,1796($a0)
    andi	$v0,$v0,0x800
    beqz	$v0,.L0d9403a0
    lw	$a0,32088($a0)
    # Line 1492
    li	$a1,-1025
    and	$a0,$a0,$a1
    # Line 1493
    ori	$a0,$a0,0x200
    sw	$a0,32088($s0)
.L0d940364:
    # Line 1506
    sll	$a2,$a0,0x15
    bltz	$a2,.L0d9403d0
.L0d94036c:
    # Line 1514
    li	$a4,2
    sw	$a4,4120($zero)
    lw	$a3,11756($s0)
    # Line 1515
    ld	$gp,8($sp)
    # Line 1514
    ori	$a3,$a3,0x1
    sw	$a3,11756($s0)
    # Line 1515
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d940390:
    ld	$s0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9403a0:
    # Line 1493
    lw	$a5,1792($s0)
    andi	$a5,$a5,0x2
    li	$a7,3057
    beqz	$a5,.L0d940408
    # Line 1501
    li	$a1,-513
    # Line 1493
    lw	$a6,1836($s0)
    beq	$a6,$a7,.L0d9403f4
    nop
    # Line 1500
    ori	$a0,$a0,0x400
    # Line 1501
    and	$a0,$a0,$a1
    b	.L0d940364
    sw	$a0,32088($s0)
.L0d9403d0:
    # Line 1510
    # lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    sd	$ra,16($sp)
    bal __glCrmPassBlendFunc
    move	$a0,$s0
    # Line 1511
    # lw $t9, -31988($gp) # &__glCrmPassBlendColor
    bal __glCrmPassBlendColor
    move	$a0,$s0
    b	.L0d94036c
    ld	$ra,16($sp)
.L0d9403f4:
    # Line 1497
    li	$a1,-1025
    and	$a0,$a0,$a1
    # Line 1498
    ori	$a0,$a0,0x200
    b	.L0d940364
    sw	$a0,32088($s0)
.L0d940408:
    # Line 1505
    li	$a2,-1025
    # Line 1506
    li	$a1,-513
    # Line 1505
    and	$a0,$a0,$a2
    # Line 1506
    and	$a0,$a0,$a1
    b	.L0d940364
    sw	$a0,32088($s0)
.end __glCrmEnableBlend

# Function: __glCrmPassBlendFunc
# Declared: Line 1520 (Source lines: 1521-1612)
# Address: 0x0d940420 - 0x0d940778 (Size: 856 bytes, Frame: 32)
.globl __glCrmPassBlendFunc
.ent __glCrmPassBlendFunc
__glCrmPassBlendFunc:
    # Line 1526
    lbu	$t0,3220($a0)
    # Line 1524
    lw	$a7,3268($a0)
    # Line 1521
    addiu	$sp,$sp,-32
    # Line 1526
    lw	$a3,32188($a0)
    beqz	$t0,.L0d940510
    # Line 1524
    slt	$a7,$zero,$a7
    # Line 1531
    lw	$a2,1836($a0)
    li	$t1,0x8006
    beq	$a2,$t1,.L0d9405e0
    li	$t2,0x8007
    beq	$a2,$t2,.L0d9405e8
    li	$t3,0x8008
    beq	$a2,$t3,.L0d94068c
    li	$t8,0x800a
    beq	$a2,$t8,.L0d9406bc
    li	$t9,0x800b
    beq	$a2,$t9,.L0d9406c4
    # Line 1541
    li	$a5,4
    # Line 1531
    li	$at,3057
    beq	$a2,$at,.L0d940510
    lw	$a5,0($sp)
.L0d940474:
    # Line 1546
    lw	$a2,1828($a0)
.L0d940478:
    sltiu	$a4,$a2,774
    bnez	$a4,.L0d940518
    sltiu	$t3,$a2,771
    sltiu	$v0,$a2,775
    beqz	$v0,.L0d940548
    # Line 1552
    li	$a6,2
.L0d940490:
    # Line 1578
    lw	$a2,1832($a0)
.L0d940494:
    sltiu	$t0,$a2,772
    bnez	$t0,.L0d940530
    sltiu	$t9,$a2,769
    sltiu	$v1,$a2,773
    beqz	$v1,.L0d940598
    li	$a4,0x8002
    # Line 1592
    li	$a1,1
    li	$a4,6
    movz	$a4,$a1,$a7
.L0d9404b8:
    # Line 1609
    li	$a7,-3841
.L0d9404bc:
    # Line 1607
    lw	$t0,24($sp)
    li	$t2,-241
    andi	$t1,$a6,0xf
    sll	$t1,$t1,0x4
    and	$t0,$t0,$t2
    or	$t0,$t0,$t1
    # Line 1608
    li	$t1,-16
    andi	$a4,$a4,0xf
    and	$t0,$t0,$t1
    # Line 1609
    andi	$a6,$a5,0xf
    # Line 1608
    or	$a4,$t0,$a4
    # Line 1611
    lw	$a5,32184($a0)
    # Line 1609
    sll	$a6,$a6,0x8
    and	$a4,$a4,$a7
    or	$a4,$a4,$a6
    sw	$a4,24($sp)
    # Line 1611
    sw	$a4,8616($a5)
    lw	$a2,24($sp)
    # Line 1612
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1611
    sw	$a2,8616($a3)
.L0d940510:
    # Line 1612
    jr	$ra
    addiu	$sp,$sp,32
.L0d940518:
    # Line 1546
    bnez	$t3,.L0d94057c
    sltiu	$t8,$a2,772
    beqz	$t8,.L0d94061c
    # Line 1560
    li	$v0,6
    # Line 1558
    b	.L0d940490
    li	$a6,5
.L0d940530:
    # Line 1578
    bnez	$t9,.L0d9405c4
    sltiu	$at,$a2,770
    beqz	$at,.L0d94066c
    sltiu	$a4,$a2,771
    # Line 1586
    b	.L0d9404b8
    li	$a4,3
.L0d940548:
    # Line 1546
    li	$a4,0x8002
    sltu	$v0,$a2,$a4
    bnez	$v0,.L0d9405f0
    sltiu	$t8,$a2,777
    # Line 1575
    li	$t8,11
    # Line 1546
    sltu	$v1,$a4,$a2
    li	$t9,0x8003
    # Line 1573
    li	$at,10
    # Line 1548
    lw	$a6,4($sp)
    # Line 1546
    bnez	$v1,.L0d9406cc
    li	$t0,0x8004
    # Line 1571
    b	.L0d940490
    li	$a6,9
.L0d94057c:
    # Line 1546
    beqz	$a2,.L0d94073c
    # Line 1550
    li	$a6,1
    # Line 1546
    sltiu	$a1,$a2,2
    beqz	$a1,.L0d940694
    li	$t0,770
    # Line 1550
    b	.L0d940494
    # Line 1578
    lw	$a2,1832($a0)
.L0d940598:
    sltu	$t0,$a2,$a4
    bnez	$t0,.L0d940648
    li	$t0,0x8004
    sltu	$t1,$a4,$a2
    # Line 1602
    li	$v1,10
    # Line 1578
    sltu	$a7,$t0,$a2
    # Line 1580
    lw	$a4,8($sp)
    # Line 1578
    bnez	$t1,.L0d940708
    sltu	$a1,$a2,$t0
    # Line 1600
    b	.L0d9404b8
    li	$a4,9
.L0d9405c4:
    # Line 1578
    beqz	$a2,.L0d940748
    # Line 1582
    li	$a4,1
    # Line 1578
    sltiu	$t2,$a2,2
    beqz	$t2,.L0d9406a8
    li	$t1,768
    # Line 1582
    b	.L0d9404bc
    # Line 1609
    li	$a7,-3841
.L0d9405e0:
    b	.L0d940474
    # Line 1533
    move	$a5,$zero
.L0d9405e8:
    # Line 1535
    b	.L0d940474
    li	$a5,1
.L0d9405f0:
    # Line 1546
    sltiu	$t3,$a2,776
    li	$t9,775
    # Line 1569
    li	$v0,8
    # Line 1548
    lw	$a6,4($sp)
    # Line 1546
    bnez	$t3,.L0d9406e8
    li	$at,0x8001
    beqz	$t8,.L0d94075c
    xor	$at,$a2,$at
    # Line 1566
    li	$a6,12
    # Line 1567
    b	.L0d940490
    # Line 1566
    movz	$a6,$zero,$a7
.L0d94061c:
    # Line 1546
    sltiu	$t9,$a2,773
    # Line 1560
    li	$v1,1
    # Line 1546
    li	$at,772
    # Line 1548
    lw	$a6,4($sp)
    # Line 1546
    bnez	$t9,.L0d9406fc
    xor	$at,$a2,$at
    # Line 1563
    li	$at,7
    # Line 1548
    lw	$a6,4($sp)
    # Line 1563
    movz	$at,$zero,$a7
    # Line 1564
    b	.L0d940490
    movn	$a6,$at,$a4
.L0d940648:
    # Line 1578
    li	$t0,0x8001
    sltu	$v0,$a2,$t0
    # Line 1595
    li	$t3,7
    # Line 1598
    li	$a1,8
    # Line 1580
    lw	$a4,8($sp)
    # Line 1578
    bnez	$v0,.L0d940718
    sltu	$v1,$t0,$a2
    # Line 1598
    b	.L0d9404b8
    movz	$a4,$a1,$v1
.L0d94066c:
    # Line 1588
    li	$t9,4
    # Line 1578
    li	$t8,770
    # Line 1580
    lw	$a7,8($sp)
    # Line 1578
    bnez	$a4,.L0d940730
    xor	$t8,$a2,$t8
    # Line 1590
    li	$a4,5
    b	.L0d9404b8
    movz	$a4,$a7,$t0
.L0d94068c:
    # Line 1537
    b	.L0d940474
    li	$a5,2
.L0d940694:
    xor	$t0,$a2,$t0
    # Line 1548
    lw	$a6,4($sp)
    # Line 1556
    li	$t1,4
    b	.L0d940490
    movz	$a6,$t1,$t0
.L0d9406a8:
    # Line 1584
    li	$t2,2
    # Line 1580
    lw	$a4,8($sp)
    xor	$t1,$a2,$t1
    # Line 1584
    b	.L0d9404b8
    movz	$a4,$t2,$t1
.L0d9406bc:
    # Line 1539
    b	.L0d940474
    li	$a5,3
.L0d9406c4:
    # Line 1541
    b	.L0d940478
    # Line 1546
    lw	$a2,1828($a0)
.L0d9406cc:
    xor	$t9,$a2,$t9
    sltu	$t2,$a2,$t0
    bnez	$t2,.L0d940754
    sltu	$t3,$t0,$a2
    # Line 1548
    lw	$a6,4($sp)
    # Line 1575
    b	.L0d940490
    movz	$a6,$t8,$t3
.L0d9406e8:
    xor	$t9,$a2,$t9
    # Line 1548
    lw	$a6,4($sp)
    # Line 1554
    li	$at,3
    b	.L0d940490
    movz	$a6,$at,$t9
.L0d9406fc:
    # Line 1560
    movz	$v0,$v1,$a7
    # Line 1561
    b	.L0d940490
    movz	$a6,$v0,$at
.L0d940708:
    # Line 1578
    bnez	$a1,.L0d940764
    # Line 1604
    li	$t1,11
    b	.L0d9404b8
    movz	$a4,$t1,$a7
.L0d940718:
    # Line 1578
    li	$t2,773
    # Line 1595
    movz	$t3,$zero,$a7
    # Line 1580
    lw	$a4,8($sp)
    xor	$t2,$a2,$t2
    # Line 1596
    b	.L0d9404b8
    movz	$a4,$t3,$t2
.L0d940730:
    # Line 1580
    lw	$a4,8($sp)
    # Line 1588
    b	.L0d9404b8
    movz	$a4,$t9,$t8
.L0d94073c:
    # Line 1548
    move	$a6,$zero
    b	.L0d940494
    # Line 1578
    lw	$a2,1832($a0)
.L0d940748:
    # Line 1580
    move	$a4,$zero
    b	.L0d9404bc
    # Line 1609
    li	$a7,-3841
.L0d940754:
    # Line 1573
    b	.L0d940490
    movz	$a6,$at,$t9
.L0d94075c:
    # Line 1569
    b	.L0d940490
    movz	$a6,$v0,$at
.L0d940764:
    # Line 1578
    li	$v0,0x8003
    # Line 1580
    lw	$a4,8($sp)
    xor	$v0,$a2,$v0
    # Line 1602
    b	.L0d9404b8
    movz	$a4,$v1,$v0
.end __glCrmPassBlendFunc

# Function: __glCrmPassBlendColor
# Declared: Line 1614 (Source lines: 1615-1626)
# Address: 0x0d940780 - 0x0d940810 (Size: 144 bytes, Frame: 0)
.globl __glCrmPassBlendColor
.ent __glCrmPassBlendColor
__glCrmPassBlendColor:
    # Line 1620
    lwc1	$f1,1840($a0)
    # Line 1615
    lui	$v1,0x11
    # Line 1620
    lwc1	$f0,1844($a0)
    # Line 1615
    addiu	$v1,$v1,1548
    # Line 1620
    lwc1	$f2,1848($a0)
    # Line 1615
    addu	$at,$t9,$v1
    # Line 1620
    ldc1	$f4,_lit8_406fe00000000000
    cvt.d.s	$f0,$f0
    lwc1	$f3,1852($a0)
    cvt.d.s	$f1,$f1
    cvt.d.s	$f2,$f2
    mul.d	$f0,$f0,$f4
    cvt.d.s	$f3,$f3
    mul.d	$f1,$f1,$f4
    trunc.l.d	$f0,$f0
    mul.d	$f2,$f2,$f4
    trunc.l.d	$f1,$f1
    mul.d	$f3,$f3,$f4
    dmfc1	$a3,$f0
    trunc.l.d	$f2,$f2
    dmfc1	$a2,$f1
    trunc.l.d	$f3,$f3
    sll	$a3,$a3,0x10
    dmfc1	$v1,$f2
    sll	$a2,$a2,0x18
    dmfc1	$v0,$f3
    sll	$v1,$v1,0x8
    # Line 1625
    lw	$a1,32184($a0)
    # Line 1620
    sll	$v0,$v0,0x0
    or	$a2,$a2,$a3
    or	$v0,$v0,$v1
    # Line 1617
    lw	$v1,32188($a0)
    # Line 1620
    or	$v0,$v0,$a2
    # Line 1625
    sw	$v0,8608($a1)
    # Line 1626
    jr	$ra
    # Line 1625
    sw	$v0,8608($v1)
.end __glCrmPassBlendColor

# Function: __glCrmEnableDither
# Declared: Line 1629 (Source lines: 1630-1645)
# Address: 0x0d940810 - 0x0d94087c (Size: 108 bytes, Frame: 0)
.globl __glCrmEnableDither
.ent __glCrmEnableDither
__glCrmEnableDither:
    # Line 1630
    lw	$at,1792($a0)
    andi	$at,$at,0x8
    beqz	$at,.L0d94086c
    lw	$a2,32088($a0)
    # Line 1634
    ori	$a2,$a2,0x100
    sw	$a2,32088($a0)
.L0d940828:
    # Line 1636
    li	$v1,2
    lw	$v0,4120($zero)
    beq	$v0,$v1,.L0d940864
    nop
    lw	$a1,32092($a0)
    beq	$a1,$a2,.L0d940864
    nop
    # Line 1643
    lw	$a5,32184($a0)
    sw	$a2,8216($a5)
    lw	$a4,32188($a0)
    lw	$a3,32088($a0)
    sw	$a3,8216($a4)
    lw	$a2,32088($a0)
    # Line 1645
    jr	$ra
    # Line 1643
    sw	$a2,32092($a0)
.L0d940864:
    # Line 1645
    jr	$ra
    nop
.L0d94086c:
    # Line 1636
    li	$a6,-257
    and	$a2,$a2,$a6
    b	.L0d940828
    sw	$a2,32088($a0)
.end __glCrmEnableDither

# Function: __glCrmEnableLogicOp
# Declared: Line 1648 (Source lines: 1649-1668)
# Address: 0x0d940880 - 0x0d9408f8 (Size: 120 bytes, Frame: 0)
.globl __glCrmEnableLogicOp
.ent __glCrmEnableLogicOp
__glCrmEnableLogicOp:
    # Line 1649
    lbu	$at,3220($a0)
    bnez	$at,.L0d9408e0
    nop
    # Line 1653
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x4
    # Line 1658
    li	$a1,2
    # Line 1653
    beqz	$v0,.L0d9408e8
    lw	$a2,32088($a0)
    # Line 1656
    ori	$a2,$a2,0x200
    sw	$a2,32088($a0)
.L0d9408a8:
    # Line 1658
    lw	$v1,4120($zero)
    beq	$v1,$a1,.L0d9408e0
    nop
    lw	$a3,32092($a0)
    beq	$a3,$a2,.L0d9408e0
    nop
    # Line 1666
    lw	$a7,32184($a0)
    sw	$a2,8216($a7)
    lw	$a6,32188($a0)
    lw	$a5,32088($a0)
    sw	$a5,8216($a6)
    lw	$a4,32088($a0)
    # Line 1668
    jr	$ra
    # Line 1666
    sw	$a4,32092($a0)
.L0d9408e0:
    # Line 1668
    jr	$ra
    nop
.L0d9408e8:
    # Line 1658
    li	$t0,-513
    and	$a2,$a2,$t0
    b	.L0d9408a8
    sw	$a2,32088($a0)
.end __glCrmEnableLogicOp

# Function: __glCrmPassLogicOp
# Declared: Line 1670 (Source lines: 1671-1717)
# Address: 0x0d940900 - 0x0d940ab4 (Size: 436 bytes, Frame: 16)
.globl __glCrmPassLogicOp
.ent __glCrmPassLogicOp
__glCrmPassLogicOp:
    # Line 1676
    lbu	$v1,3220($a0)
    li	$a1,3057
    # Line 1671
    lui	$v0,0x11
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,1164
    # Line 1673
    lw	$a4,32188($a0)
    # Line 1676
    beqz	$v1,.L0d940938
    # Line 1671
    addu	$at,$t9,$v0
    # Line 1676
    lw	$v1,1836($a0)
    beq	$v1,$a1,.L0d94093c
    # Line 1679
    lw	$a3,0($sp)
    # Line 1676
    lw	$a2,1796($a0)
    andi	$a2,$a2,0x800
    beqz	$a2,.L0d94098c
.L0d940938:
    # Line 1679
    lw	$a3,0($sp)
.L0d94093c:
    lw	$a6,1856($a0)
    la	$a5,sub_0da40000
    addiu	$a6,$a6,-5376
    sltiu	$a7,$a6,16
    addiu	$a5,$a5,16456
    sll	$a6,$a6,0x2
    beqz	$a7,.L0d940974
    addu	$a5,$a5,$a6
    lw	$a7,0($a5)
    jr	$a7
    # Line 1697
    li	$a5,-16
.L0d940968:
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x7
    sw	$a3,0($sp)
.L0d940974:
    # Line 1716
    lw	$a7,32184($a0)
    lw	$a6,0($sp)
    sw	$a3,8624($a7)
    # Line 1717
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1716
    sw	$a6,8624($a4)
.L0d94098c:
    # Line 1717
    jr	$ra
    addiu	$sp,$sp,16
.L0d940994:
    # Line 1683
    li	$t0,-16
    and	$a3,$a3,$t0
    b	.L0d940974
    sw	$a3,0($sp)
.L0d9409a4:
    # Line 1713
    ori	$a3,$a3,0xf
    b	.L0d940974
    sw	$a3,0($sp)
.L0d9409b0:
    # Line 1711
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0xe
    b	.L0d940974
    sw	$a3,0($sp)
.L0d9409c4:
    # Line 1709
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0xd
    b	.L0d940974
    sw	$a3,0($sp)
.L0d9409d8:
    # Line 1707
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0xc
    b	.L0d940974
    sw	$a3,0($sp)
.L0d9409ec:
    # Line 1705
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0xb
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a00:
    # Line 1703
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0xa
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a14:
    # Line 1701
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x9
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a28:
    # Line 1699
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x8
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a3c:
    # Line 1695
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x6
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a50:
    # Line 1693
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x5
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a64:
    # Line 1691
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x4
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a78:
    # Line 1689
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x3
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940a8c:
    # Line 1687
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x2
    b	.L0d940974
    sw	$a3,0($sp)
.L0d940aa0:
    # Line 1685
    li	$a5,-16
    and	$a3,$a3,$a5
    ori	$a3,$a3,0x1
    b	.L0d940974
    sw	$a3,0($sp)
.end __glCrmPassLogicOp

# Function: __glCrmEnableFogTest
# Declared: Line 1724 (Source lines: 1725-1745)
# Address: 0x0d940ac0 - 0x0d940b58 (Size: 152 bytes, Frame: 32)
.globl __glCrmEnableFogTest
.ent __glCrmEnableFogTest
__glCrmEnableFogTest:
    # Line 1733
    lbu	$v0,3221($a0)
    # Line 1725
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,716
    sd	$gp,0($sp)
    # Line 1733
    beqz	$v0,.L0d940b20
    # Line 1725
    addu	$gp,$t9,$at
    # Line 1737
    li	$a1,-16385
.L0d940ae8:
    lw	$a0,32088($s0)
    and	$a0,$a0,$a1
    sw	$a0,32088($s0)
.L0d940af4:
    sll	$a2,$a0,0x11
    bltz	$a2,.L0d940b40
.L0d940afc:
    # Line 1744
    li	$a4,2
    sw	$a4,4120($zero)
    lw	$a3,11756($s0)
    # Line 1745
    ld	$gp,0($sp)
    # Line 1744
    ori	$a3,$a3,0x1
    sw	$a3,11756($s0)
    # Line 1745
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d940b20:
    # Line 1733
    lw	$a5,1792($a0)
    andi	$a5,$a5,0x20
    beqz	$a5,.L0d940ae8
    # Line 1737
    li	$a1,-16385
    # Line 1735
    lw	$a0,32088($a0)
    ori	$a0,$a0,0x4000
    b	.L0d940af4
    sw	$a0,32088($s0)
.L0d940b40:
    # Line 1741
    # lw $t9, -31968($gp) # &__glCrmPassFog
    sd	$ra,16($sp)
    bal __glCrmPassFog
    move	$a0,$s0
    b	.L0d940afc
    ld	$ra,16($sp)
.end __glCrmEnableFogTest

# Function: __glCrmPassFog
# Declared: Line 1747 (Source lines: 1748-1760)
# Address: 0x0d940b60 - 0x0d940bc0 (Size: 96 bytes, Frame: 0)
.globl __glCrmPassFog
.ent __glCrmPassFog
__glCrmPassFog:
    # Line 1748
    lbu	$at,3221($a0)
    beqz	$at,.L0d940b74
    nop
    # Line 1760
    jr	$ra
    nop
.L0d940b74:
    # Line 1754
    lwc1	$f1,1600($a0)
    lwc1	$f2,1596($a0)
    lwc1	$f0,1592($a0)
    trunc.l.s	$f1,$f1
    trunc.l.s	$f2,$f2
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f1
    dmfc1	$v0,$f2
    dmfc1	$a2,$f0
    sll	$v1,$v1,0x8
    # Line 1758
    lw	$a1,32184($a0)
    # Line 1754
    sll	$v0,$v0,0x10
    sll	$a2,$a2,0x18
    or	$v0,$v0,$v1
    # Line 1751
    lw	$v1,32188($a0)
    # Line 1754
    or	$v0,$v0,$a2
    # Line 1758
    sw	$v0,8560($a1)
    # Line 1760
    jr	$ra
    # Line 1758
    sw	$v0,8560($v1)
.end __glCrmPassFog

# Function: __glCrmPassColorMask
# Declared: Line 1763 (Source lines: 1766-1818)
# Address: 0x0d940bc0 - 0x0d940e48 (Size: 648 bytes, Frame: 0)
.globl __glCrmPassColorMask
.ent __glCrmPassColorMask
__glCrmPassColorMask:
    # Line 1766
    lw	$at,1888($a0)
    lw	$a5,32188($a0)
    beqz	$at,.L0d940c74
    lw	$a6,32184($a0)
    lbu	$v0,3220($a0)
    beqz	$v0,.L0d940d70
    # Line 1805
    li	$a7,2
    # Line 1766
    lbu	$v1,1884($a0)
    beqz	$v1,.L0d940d20
    lbu	$a3,1885($a0)
    # Line 1775
    beqz	$a3,.L0d940da0
    lui	$a2,0xff00
    # Line 1788
    lbu	$a3,1886($a0)
.L0d940bf4:
    # Line 1776
    lui	$a1,0xff
    # Line 1788
    beqz	$a3,.L0d940c04
    # Line 1776
    or	$a2,$a2,$a1
.L0d940c00:
    # Line 1777
    ori	$a2,$a2,0xff00
.L0d940c04:
    lw	$a4,3268($a0)
    beqz	$a4,.L0d940d68
    nop
    lbu	$a7,1887($a0)
    beqz	$a7,.L0d940c24
    # Line 1780
    li	$a4,-1
.L0d940c1c:
    # Line 1779
    ori	$a2,$a2,0xff
.L0d940c20:
    # Line 1780
    li	$a4,-1
.L0d940c24:
    # Line 1784
    lui	$t0,0x1
    addu	$t0,$a0,$t0
    # Line 1786
    lw	$a3,-32564($t0)
    srl	$a3,$a3,0x2
    li	$a7,2
    andi	$a3,$a3,0x3
    # Line 1788
    lui	$v1,0xff00
    and	$v1,$a2,$v1
    # Line 1786
    beq	$a7,$a3,.L0d940d30
    # Line 1784
    sw	$a2,-32576($t0)
.L0d940c4c:
    # Line 1786
    beqz	$a3,.L0d940cf8
.L0d940c50:
    li	$t1,1
    beq	$a3,$t1,.L0d940cf8
    move	$a3,$zero
.L0d940c5c:
    # Line 1811
    beqz	$a2,.L0d940c80
    nop
    beq	$a4,$a2,.L0d940c84
    move	$a4,$zero
    b	.L0d940c84
    li	$a4,1
.L0d940c74:
    move	$a3,$zero
    move	$a2,$zero
    li	$a7,2
.L0d940c80:
    move	$a4,$zero
.L0d940c84:
    lw	$t2,32088($a0)
    li	$t8,-129
    andi	$t3,$a4,0x1
    and	$t2,$t2,$t8
    sll	$t3,$t3,0x7
    or	$t2,$t2,$t3
    # Line 1812
    li	$t8,-121
    andi	$t3,$a3,0xf
    and	$t2,$t2,$t8
    sll	$t3,$t3,0x3
    or	$t2,$t2,$t3
    sll	$t3,$t2,0x18
    bltz	$t3,.L0d940d04
    sw	$t2,32088($a0)
    # Line 1817
    sw	$a7,4120($zero)
    lw	$t9,11756($a0)
    ori	$t9,$t9,0x1
    # Line 1818
    jr	$ra
    # Line 1817
    sw	$t9,11756($a0)
.L0d940cd0:
    # Line 1784
    addu	$at,$a0,$at
    # Line 1786
    lw	$a3,-32564($at)
    srl	$a3,$a3,0x2
    li	$a7,2
    andi	$a3,$a3,0x3
    beq	$a7,$a3,.L0d940dc8
    # Line 1784
    sw	$zero,-32576($at)
    # Line 1786
    li	$a4,-1
    bnez	$a3,.L0d940c50
    move	$a2,$zero
.L0d940cf8:
    # Line 1796
    li	$a3,15
    b	.L0d940c5c
    movz	$a3,$zero,$a2
.L0d940d04:
    # Line 1815
    sw	$a2,8632($a6)
    sw	$a2,8632($a5)
    # Line 1817
    sw	$a7,4120($zero)
    lw	$v0,11756($a0)
    ori	$v0,$v0,0x1
    # Line 1818
    jr	$ra
    # Line 1817
    sw	$v0,11756($a0)
.L0d940d20:
    # Line 1788
    beqz	$a3,.L0d940db4
    move	$a2,$zero
    b	.L0d940bf4
    lbu	$a3,1886($a0)
.L0d940d30:
    beqz	$v1,.L0d940dcc
    li	$a3,8
.L0d940d38:
    lui	$t2,0xff
    # Line 1789
    ori	$t1,$a3,0x4
    # Line 1788
    and	$t2,$a2,$t2
    # Line 1790
    andi	$a1,$a2,0xff
    movz	$t1,$a3,$t2
    # Line 1789
    andi	$t0,$a2,0xff00
    # Line 1790
    ori	$a4,$t1,0x2
    # Line 1792
    move	$a2,$zero
    movz	$a4,$t1,$t0
    # Line 1791
    ori	$a3,$a4,0x1
    # Line 1792
    b	.L0d940c80
    movz	$a3,$a4,$a1
.L0d940d68:
    # Line 1779
    b	.L0d940c24
    li	$a4,-256
.L0d940d70:
    # Line 1802
    lw	$t0,3252($a0)
    # Line 1805
    li	$a3,15
    # Line 1802
    li	$a4,1
    # Line 1804
    li	$t3,0x80c0
    # Line 1803
    lw	$a2,1880($a0)
    # Line 1802
    sllv	$a4,$a4,$t0
    # Line 1804
    addu	$t3,$t3,$a0
    # Line 1802
    addiu	$a4,$a4,-1
    # Line 1803
    and	$a2,$a2,$a4
    # Line 1804
    sw	$a2,0($t3)
    b	.L0d940c5c
    # Line 1805
    movz	$a3,$zero,$a2
.L0d940da0:
    # Line 1776
    lbu	$t1,1886($a0)
    beqz	$t1,.L0d940dd4
    nop
    b	.L0d940c04
    # Line 1777
    ori	$a2,$a2,0xff00
.L0d940db4:
    lbu	$t2,1886($a0)
    beqz	$t2,.L0d940df4
    nop
    b	.L0d940c00
    move	$a2,$zero
.L0d940dc8:
    # Line 1788
    move	$a2,$zero
.L0d940dcc:
    b	.L0d940d38
    move	$a3,$zero
.L0d940dd4:
    # Line 1776
    lw	$t3,3268($a0)
    beqz	$t3,.L0d940d68
    nop
    lbu	$t8,1887($a0)
    beqz	$t8,.L0d940e14
    # Line 1784
    lui	$v0,0x1
    # Line 1776
    b	.L0d940c20
    # Line 1779
    ori	$a2,$a2,0xff
.L0d940df4:
    lw	$t9,3268($a0)
    beqz	$t9,.L0d940e38
    nop
    lbu	$at,1887($a0)
    beqz	$at,.L0d940cd0
    # Line 1784
    lui	$at,0x1
    # Line 1779
    b	.L0d940c1c
    move	$a2,$zero
.L0d940e14:
    # Line 1784
    addu	$v0,$a0,$v0
    # Line 1786
    lw	$a3,-32564($v0)
    srl	$a3,$a3,0x2
    li	$a7,2
    andi	$a3,$a3,0x3
    beq	$a7,$a3,.L0d940e40
    # Line 1784
    sw	$a2,-32576($v0)
    # Line 1786
    b	.L0d940c4c
    li	$a4,-1
.L0d940e38:
    b	.L0d940d68
    # Line 1779
    move	$a2,$zero
.L0d940e40:
    # Line 1788
    b	.L0d940d38
    li	$a3,8
.end __glCrmPassColorMask

# Function: __glCrmShadeModel
# Declared: Line 1821 (Source lines: 1822-1830)
# Address: 0x0d940e50 - 0x0d940e84 (Size: 52 bytes, Frame: 0)
.globl __glCrmShadeModel
.ent __glCrmShadeModel
__glCrmShadeModel:
    # Line 1822
    lw	$at,1392($a0)
    li	$v0,7425
    beq	$at,$v0,.L0d940e74
    lw	$a2,32088($a0)
    # Line 1828
    lui	$v1,0x1
    nor	$v1,$v1,$zero
    and	$v1,$a2,$v1
    # Line 1830
    jr	$ra
    # Line 1828
    sw	$v1,32088($a0)
.L0d940e74:
    # Line 1826
    lui	$a1,0x1
    or	$a1,$a2,$a1
    # Line 1830
    jr	$ra
    # Line 1826
    sw	$a1,32088($a0)
.end __glCrmShadeModel

.late_rodata
jtbl_0da44000:
    .word .L0d93c884
    .word .L0d93c830
    .word .L0d93c8d0
    .word .L0d93c8bc
    .word .L0d93c884
    .word .L0d93c8d0
    .word .L0d93c884
    .word .L0d93c8a8
    .word .L0d93c814
    .word .L0d93c88c
    .word .L0d93c88c
    .word .L0d93c88c
    .word .L0d93c88c
jtbl_0da44048:
    .word .L0d940994
    .word .L0d940aa0
    .word .L0d940a8c
    .word .L0d940a78
    .word .L0d940a64
    .word .L0d940a50
    .word .L0d940a3c
    .word .L0d940968
    .word .L0d940a28
    .word .L0d940a14
    .word .L0d940a00
    .word .L0d9409ec
    .word .L0d9409d8
    .word .L0d9409c4
    .word .L0d9409b0
    .word .L0d9409a4

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit_437f0000:
    .word 0x437f0000

