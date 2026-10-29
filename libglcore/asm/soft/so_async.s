# Source: ../soft/so_async.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_async.c
# Total Functions: 9

.text

# Function: __glInitAsyncState
# Declared: Line 30 (Source lines: 31-63)
# Address: 0x0d9bcbc0 - 0x0d9bcc7c (Size: 188 bytes, Frame: 48)
.globl __glInitAsyncState
.ent __glInitAsyncState
__glInitAsyncState:
    # Line 31
    lui	$at,0x9
    addiu	$sp,$sp,-48
    addiu	$at,$at,16844
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 38
    # lw $t9, -25416($gp) # &__glNamesNewArray
    # Line 31
    sd	$ra,8($sp)
    # Line 38
    li	$a1,2
    # Line 31
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 38
    jal	__glNamesNewArray
    sd	$s1,24($sp)
    # Line 42
    lw	$t9,4($s0)
    # Line 38
    move	$s1,$v0
    # Line 42
    li	$a2,8
    li	$a1,1
    # Line 40
    sw	$v0,6068($s0)
    # Line 42
    move	$a0,$s0
    jalr	$t9
    sd	$s8,32($sp)
    # Line 44
    # lw $t9, -25404($gp) # &__glNamesNewData
    # Line 42
    move	$s8,$v0
    # Line 44
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    jal	__glNamesNewData
    move	$a3,$v0
    # Line 62
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    # Line 47
    la	$v1,__glFreeAsyncMarker
    sw	$v1,4($s8)
    # Line 50
    sw	$s8,6064($s0)
    # Line 49
    sw	$zero,6060($s0)
    # Line 62
    li	$a3,1
    move	$a2,$zero
    # Line 53
    lw	$v0,0($s8)
    # Line 62
    move	$a1,$s1
    move	$a0,$s0
    # Line 53
    addiu	$v0,$v0,1
    # Line 62
    jal	__glNamesDeleteRange
    # Line 53
    sw	$v0,0($s8)
    ld	$s0,0($sp)
    ld	$ra,8($sp)
    ld	$s1,24($sp)
    ld	$s8,32($sp)
    # Line 63
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glInitAsyncState

# Function: __glFreeAsyncState
# Declared: Line 65 (Source lines: 66-77)
# Address: 0x0d9bcc80 - 0x0d9bccb4 (Size: 52 bytes, Frame: 16)
.globl __glFreeAsyncState
.ent __glFreeAsyncState
__glFreeAsyncState:
    # Line 66
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,16652
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 76
    # lw $t9, -25408($gp) # &__glNamesFreeArray
    # Line 66
    sd	$ra,0($sp)
    # Line 76
    jal	__glNamesFreeArray
    lw	$a1,6068($a0)
    ld	$ra,0($sp)
    # Line 77
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFreeAsyncState

# Function: __glim_GenAsyncMarkersSGIX
# Declared: Line 79 (Source lines: 80-100)
# Address: 0x0d9bccc0 - 0x0d9bcd64 (Size: 164 bytes, Frame: 16)
.globl __glim_GenAsyncMarkersSGIX
.ent __glim_GenAsyncMarkersSGIX
__glim_GenAsyncMarkersSGIX:
    # Line 80
    move	$a2,$a0
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x9
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,16588
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9bcd28
    addu	$gp,$t9,$v1
    # Line 87
    bltz	$a0,.L0d9bcd48
    # Line 91
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 92
    bnez	$a0,.L0d9bcd0c
    # Line 98
    nop	# was lw $t9, -25384($gp) # &__glNamesGenRange
    # Line 95
    move	$v0,$zero
    # Line 100
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bcd0c:
    # Line 98
    lw	$a0,4112($zero)
    jal	__glNamesGenRange
    lw	$a1,6068($a0)
    ld	$ra,8($sp)
    # Line 100
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bcd28:
    # Line 85
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 100
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bcd48:
    # Line 91
    jalr	$t9
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 92
    move	$v0,$zero
    # Line 100
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GenAsyncMarkersSGIX

# Function: __glim_IsAsyncMarkerSGIX
# Declared: Line 103 (Source lines: 104-116)
# Address: 0x0d9bcd70 - 0x0d9bcddc (Size: 108 bytes, Frame: 16)
.globl __glim_IsAsyncMarkerSGIX
.ent __glim_IsAsyncMarkerSGIX
__glim_IsAsyncMarkerSGIX:
    # Line 104
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x9
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,16412
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9bcdbc
    addu	$gp,$t9,$v1
    # Line 114
    # lw $t9, -25376($gp) # &__glNamesIsName
    lw	$a0,4112($zero)
    jal	__glNamesIsName
    lw	$a1,6068($a0)
    ld	$ra,8($sp)
    # Line 116
    andi	$v0,$v0,0xff
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bcdbc:
    # Line 109
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 116
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_IsAsyncMarkerSGIX

# Function: __glim_AsyncMarkerSGIX
# Declared: Line 119 (Source lines: 120-190)
# Address: 0x0d9bcde0 - 0x0d9bcf74 (Size: 404 bytes, Frame: 192)
.globl __glim_AsyncMarkerSGIX
.ent __glim_AsyncMarkerSGIX
__glim_AsyncMarkerSGIX:
    # Line 120
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 126
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 120
    sd	$s1,40($sp)
    # Line 126
    li	$v0,1
    # Line 120
    lui	$v1,0x9
    move	$s1,$a0
    sd	$ra,56($sp)
    addiu	$v1,$v1,16300
    sd	$gp,48($sp)
    # Line 126
    beq	$at,$v0,.L0d9bcf40
    # Line 120
    addu	$gp,$t9,$v1
    # Line 129
    lw	$a0,6060($s0)
    lw	$a1,6068($s0)
    beq	$a0,$s1,.L0d9bce90
    sd	$a1,24($sp)
    # Line 137
    # lw $t9, -25392($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    lw	$a1,6064($s0)
    lw	$a2,6064($s0)
    lw	$a2,0($a2)
    slti	$a2,$a2,2
    bnez	$a2,.L0d9bcea8
    # Line 142
    nop	# was lw $t9, -25380($gp) # &__glNamesDeleteRange
    # Line 148
    # lw $t9, -25400($gp) # &__glNamesLockData
.L0d9bce4c:
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glNamesLockData
    move	$a2,$s1
    beqz	$v0,.L0d9bcec4
    move	$a0,$v0
    # Line 181
    lw	$a3,0($v0)
    addiu	$a3,$a3,1
    sw	$a3,0($v0)
.L0d9bce70:
    # Line 190
    ld	$gp,48($sp)
    # Line 188
    sw	$a0,6064($s0)
    ld	$ra,56($sp)
    # Line 187
    sw	$s1,6060($s0)
    # Line 190
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9bce90:
    ld	$ra,56($sp)
.L0d9bce94:
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9bcea8:
    # Line 142
    move	$a0,$s0
    ld	$a1,24($sp)
    li	$a3,1
    jalr	$t9
    lw	$a2,6060($s0)
    b	.L0d9bce4c
    # Line 148
    nop	# was lw $t9, -25400($gp) # &__glNamesLockData
.L0d9bcec4:
    # Line 154
    # lw $t9, -25376($gp) # &__glNamesIsName
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glNamesIsName
    move	$a2,$s1
    # Line 156
    lw	$t9,4($s0)
    li	$a2,8
    li	$a1,1
    move	$a0,$s0
    # Line 154
    andi	$a4,$v0,0xff
    # Line 156
    jalr	$t9
    sd	$a4,0($sp)
    # Line 158
    # lw $t9, -25404($gp) # &__glNamesNewData
    # Line 156
    sd	$v0,16($sp)
    move	$a3,$v0
    sd	$v0,8($sp)
    # Line 158
    move	$a0,$s0
    ld	$a1,24($sp)
    jal	__glNamesNewData
    move	$a2,$s1
    # Line 161
    ld	$a7,16($sp)
    ld	$t0,0($sp)
    lw	$a6,0($a7)
    addiu	$a6,$a6,1
    beqz	$t0,.L0d9bcf54
    sw	$a6,0($a7)
    ld	$a0,8($sp)
.L0d9bcf30:
    # Line 176
    ld	$t0,16($sp)
    la	$a7,__glFreeAsyncMarker
    b	.L0d9bce70
    sw	$a7,4($t0)
.L0d9bcf40:
    # Line 126
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bce94
    ld	$ra,56($sp)
.L0d9bcf54:
    # Line 174
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    move	$a0,$s0
    move	$a2,$s1
    ld	$a1,24($sp)
    jal	__glNamesDeleteRange
    li	$a3,1
    b	.L0d9bcf30
    ld	$a0,8($sp)
.end __glim_AsyncMarkerSGIX

# Function: __glim_DeleteAsyncMarkersSGIX
# Declared: Line 192 (Source lines: 193-210)
# Address: 0x0d9bcf80 - 0x0d9bd000 (Size: 128 bytes, Frame: 16)
.globl __glim_DeleteAsyncMarkersSGIX
.ent __glim_DeleteAsyncMarkersSGIX
__glim_DeleteAsyncMarkersSGIX:
    # Line 193
    move	$a3,$a1
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x9
    move	$a2,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,15884
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9bcfdc
    addu	$gp,$t9,$v1
    # Line 199
    bltz	$a1,.L0d9bcff0
    # Line 203
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 204
    beqz	$a1,.L0d9bcfd0
    ld	$ra,8($sp)
    # Line 209
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    lw	$a0,4112($zero)
    jal	__glNamesDeleteRange
    lw	$a1,6068($a0)
    ld	$ra,8($sp)
.L0d9bcfd0:
    # Line 210
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9bcfdc:
    # Line 197
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bcfd0
    ld	$ra,8($sp)
.L0d9bcff0:
    # Line 203
    jalr	$t9
    li	$a0,1281
    b	.L0d9bcfd0
    ld	$ra,8($sp)
.end __glim_DeleteAsyncMarkersSGIX

# Function: __glim_FinishAsyncSGIX
# Declared: Line 240 (Source lines: 241-261)
# Address: 0x0d9bd000 - 0x0d9bd0b8 (Size: 184 bytes, Frame: 32)
.globl __glim_FinishAsyncSGIX
.ent __glim_FinishAsyncSGIX
__glim_FinishAsyncSGIX:
    # Line 241
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    # Line 244
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 241
    sd	$s1,8($sp)
    # Line 244
    li	$v0,1
    # Line 241
    lui	$v1,0x9
    move	$s1,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,15756
    sd	$gp,0($sp)
    # Line 244
    beq	$at,$v0,.L0d9bd090
    # Line 241
    addu	$gp,$t9,$v1
    # Line 247
    lw	$t9,6072($s0)
    lw	$t9,1156($t9)
    jalr	$t9
    nop
    beqz	$v0,.L0d9bd068
    move	$a0,$v0
.L0d9bd04c:
    ld	$ra,24($sp)
    # Line 261
    ld	$gp,0($sp)
    move	$v0,$a0
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bd068:
    # Line 255
    lw	$t9,6072($s0)
    lw	$t9,312($t9)
    jalr	$t9
    nop
    # Line 258
    lw	$t9,6072($s0)
    lw	$t9,1156($t9)
    jalr	$t9
    move	$a0,$s1
    b	.L0d9bd04c
    move	$a0,$v0
.L0d9bd090:
    # Line 244
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # Line 261
    ld	$gp,0($sp)
    # Line 244
    move	$v0,$zero
    # Line 261
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_FinishAsyncSGIX

# Function: __glFreeAsyncMarker
# Declared: Line 267 (Source lines: 268-270)
# Address: 0x0d9bd0c0 - 0x0d9bd0f4 (Size: 52 bytes, Frame: 16)
.globl __glFreeAsyncMarker
.ent __glFreeAsyncMarker
__glFreeAsyncMarker:
    # Line 268
    addiu	$sp,$sp,-16
    lui	$at,0x9
    sd	$gp,8($sp)
    addiu	$at,$at,15564
    addu	$gp,$t9,$at
    # Line 269
    lw	$t9,12($a0)
    # Line 268
    sd	$ra,0($sp)
    # Line 269
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 270
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFreeAsyncMarker

# Function: __glDisposeAsyncMarker
# Declared: Line 276 (Source lines: 277-283)
# Address: 0x0d9bd100 - 0x0d9bd134 (Size: 52 bytes, Frame: 16)
.globl __glDisposeAsyncMarker
.ent __glDisposeAsyncMarker
__glDisposeAsyncMarker:
    # Line 277
    addiu	$sp,$sp,-16
    lui	$at,0x9
    sd	$gp,8($sp)
    addiu	$at,$at,15500
    addu	$gp,$t9,$at
    # Line 282
    lw	$t9,4($a1)
    # Line 277
    sd	$ra,0($sp)
    # Line 282
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 283
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glDisposeAsyncMarker

