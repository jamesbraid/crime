# Source: ../PIXMAP/pix_cx.c
# Category: PIXMAP
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_cx.c
# Total Functions: 10

.text

# Function: __glPixmapAllocAccum
# Declared: Line 24 (Source lines: 25-28)
# Address: 0x0d993950 - 0x0d993990 (Size: 64 bytes, Frame: 16)
.globl __glPixmapAllocAccum
.ent __glPixmapAllocAccum
__glPixmapAllocAccum:
    # Line 25
    addiu	$sp,$sp,-16
    lui	$v0,0xc
    sd	$gp,8($sp)
    addiu	$v0,$v0,-11204
    addu	$gp,$t9,$v0
    # Line 26
    lw	$t9,31416($a0)
    lw	$a2,3704($a0)
    # Line 25
    move	$at,$a0
    sd	$ra,0($sp)
    move	$a0,$a1
    # Line 26
    jalr	$t9
    lw	$a1,3700($at)
    ld	$ra,0($sp)
    # Line 28
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glPixmapAllocAccum

# Function: ApplyViewport
# Declared: Line 30 (Source lines: 31-52)
# Address: 0x0d993990 - 0x0d993a30 (Size: 160 bytes, Frame: 32)
.ent ApplyViewport
ApplyViewport:
    # Line 31
    lui	$at,0xc
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11268
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 35
    # lw $t9, -23452($gp) # &__glUpdateViewport
    # Line 31
    sd	$s0,16($sp)
    # Line 35
    nop
    # Line 31
    sd	$ra,8($sp)
    # Line 35
    jal	__glUpdateViewport
    # Line 31
    move	$s0,$a0
    # Line 42
    lw	$a2,1688($s0)
    # Line 52
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    # Line 47
    bltz	$a2,.L0d993a20
    # Line 43
    lw	$a1,1692($s0)
    # Line 47
    bltz	$a1,.L0d993a20
    nop
    lw	$v1,1696($s0)
    lw	$v0,3700($s0)
    addu	$v1,$v1,$a2
    slt	$v0,$v0,$v1
    lw	$a0,3704($s0)
    bnez	$v0,.L0d993a20
    lw	$a2,1700($s0)
    addu	$a2,$a2,$a1
    slt	$a0,$a0,$a2
    bnez	$a0,.L0d993a20
    nop
    # Line 52
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    # Line 48
    li	$a3,1
    sb	$a3,29836($s0)
    # Line 52
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d993a20:
    # Line 50
    sb	$zero,29836($s0)
    # Line 52
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end ApplyViewport

# Function: ApplyScissor
# Declared: Line 55 (Source lines: 58-58)
# Address: 0x0d993a30 - 0x0d993a38 (Size: 8 bytes, Frame: 0)
.ent ApplyScissor
ApplyScissor:
    # Line 58
    jr	$ra
    nop
.end ApplyScissor

# Function: Finish
# Declared: Line 61 (Source lines: 64-64)
# Address: 0x0d993a40 - 0x0d993a48 (Size: 8 bytes, Frame: 0)
.ent Finish
Finish:
    # Line 64
    jr	$ra
    nop
.end Finish

# Function: Flush
# Declared: Line 67 (Source lines: 70-70)
# Address: 0x0d993a50 - 0x0d993a58 (Size: 8 bytes, Frame: 0)
.ent Flush
Flush:
    # Line 70
    jr	$ra
    nop
.end Flush

# Function: SwapBuffers
# Declared: Line 73 (Source lines: 76-76)
# Address: 0x0d993a60 - 0x0d993a68 (Size: 8 bytes, Frame: 0)
.ent SwapBuffers
SwapBuffers:
    # Line 76
    jr	$ra
    nop
.end SwapBuffers

# Function: DestroySoftContext
# Declared: Line 78 (Source lines: 79-100)
# Address: 0x0d993a70 - 0x0d993adc (Size: 108 bytes, Frame: 32)
.ent DestroySoftContext
DestroySoftContext:
    # Line 79
    addiu	$sp,$sp,-32
    sd	$s8,16($sp)
    lui	$at,0xc
    # Line 82
    lw	$s8,4112($zero)
    # Line 79
    addiu	$at,$at,-11492
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 87
    # lw $t9, -26952($gp) # &__glFreeAttributeState
    # Line 79
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    # Line 87
    nop
    # Line 79
    move	$s0,$a0
    # Line 87
    jal	__glFreeAttributeState
    # Line 85
    sw	$a0,4112($zero)
    # Line 94
    # lw $t9, -26424($gp) # &__glFreeBufData
    jal	__glFreeBufData
    move	$a0,$s0
    # Line 97
    # lw $t9, -26464($gp) # &__glDestroyContext
    jal	__glDestroyContext
    move	$a0,$s0
    ld	$s0,0($sp)
    ld	$ra,8($sp)
    # Line 100
    ld	$gp,24($sp)
    # Line 99
    sw	$s8,4112($zero)
    # Line 100
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end DestroySoftContext

# Function: InitFnPtrs
# Declared: Line 105 (Source lines: 107-215)
# Address: 0x0d993ae0 - 0x0d993d94 (Size: 692 bytes, Frame: 0)
.ent InitFnPtrs
InitFnPtrs:
    # Line 201
    la	$a4,__glSpanReadDepth
    # Line 202
    la	$a5,__glSpanReadDepth2
    # Line 203
    la	$a6,__glSpanReadStencil
    # Line 204
    la	$a7,__glSpanReadStencil2
    # Line 205
    la	$t0,__glSpanRenderCI
    # Line 206
    la	$t1,__glSpanRenderCI2
    # Line 207
    la	$t2,__glSpanRenderRGBA
    # Line 208
    la	$t3,__glSpanRenderRGBA2
    # Line 209
    la	$t8,__glSpanRenderDepth
    # Line 210
    # lw $t9, -27564($gp) # &__glSpanRenderDepth2
    sw	$t9,12460($a0)
    # Line 192
    # lw $t9, -26524($gp) # &__glColorTableSGI
    # Line 209
    sw	$t8,12456($a0)
    # Line 191
    la	$t8,__gl_varray_funcs
    # Line 208
    sw	$t3,12452($a0)
    # Line 188
    la	$t3,__glGenericPickDepthProcs
    # Line 207
    sw	$t2,12448($a0)
    # Line 187
    la	$t2,__glGenericPickPixelProcs
    # Line 206
    sw	$t1,12444($a0)
    # Line 186
    la	$t1,__glGenericPickVertexProcs
    # Line 205
    sw	$t0,12440($a0)
    # Line 185
    la	$t0,__glGenericPickTriangleProcs
    # Line 204
    sw	$a7,12436($a0)
    # Line 184
    la	$a7,__glPixPickSpanProcs
    # Line 203
    sw	$a6,12432($a0)
    # Line 183
    la	$a6,__glGenericPickMvpMatrixProcs
    # Line 202
    sw	$a5,12428($a0)
    # Line 182
    la	$a5,__glGenericPickInvTransposeProcs
    # Line 201
    sw	$a4,12424($a0)
    # Line 181
    la	$a4,__glGenericPickMatrixProcs
    sw	$a4,11852($a0)
    # Line 159
    la	$a4,__glFirstLinesVertex
    # Line 182
    sw	$a5,11856($a0)
    # Line 160
    la	$a5,__glSecondLinesVertex
    # Line 183
    sw	$a6,11860($a0)
    # Line 161
    la	$a6,__glRasterPos2
    # Line 184
    sw	$a7,11844($a0)
    # Line 162
    la	$a7,__glRasterPos3
    # Line 185
    sw	$t0,11816($a0)
    # Line 163
    la	$t0,__glRasterPos4
    # Line 186
    sw	$t1,11848($a0)
    # Line 169
    la	$t1,__glGenericPickAllProcs
    # Line 187
    sw	$t2,11824($a0)
    # Line 170
    la	$t2,__glGenericPickBlendProcs
    # Line 188
    sw	$t3,11864($a0)
    # Line 171
    la	$t3,__glGenericPickColorMaterialProcs
    # Line 191
    sw	$t8,12660($a0)
    # Line 172
    la	$t8,__glGenericPickFogProcs
    # Line 192
    sw	$t9,12664($a0)
    # Line 173
    # lw $t9, -25296($gp) # &__glGenericPickTransformProcs
    sw	$t9,11804($a0)
    # Line 151
    # lw $t9, -25164($gp) # &__glBeginTriangles
    # Line 172
    sw	$t8,11800($a0)
    # Line 150
    la	$t8,__glBeginTFan
    # Line 171
    sw	$t3,11792($a0)
    # Line 149
    la	$t3,__glBeginTStrip
    # Line 170
    sw	$t2,11788($a0)
    # Line 148
    la	$t2,__glBeginPolygon
    # Line 169
    sw	$t1,11868($a0)
    # Line 147
    la	$t1,__glBeginPoints
    # Line 163
    sw	$t0,12624($a0)
    # Line 146
    la	$t0,__glBeginLines
    # Line 162
    sw	$a7,12620($a0)
    # Line 145
    la	$a7,__glBeginLStrip
    # Line 161
    sw	$a6,12616($a0)
    # Line 144
    la	$a6,__glBeginLLoop
    # Line 160
    sw	$a5,11964($a0)
    # Line 139
    la	$a5,__glMipsNormalize
    # Line 159
    sw	$a4,11960($a0)
    # Line 137
    la	$a4,__glComputeInverseTranspose
    sw	$a4,11900($a0)
    # Line 112
    la	$a4,__glComputeClipBox
    # Line 139
    sw	$a5,11904($a0)
    # Line 115
    la	$a5,__glGenericPickBufferProcs
    # Line 144
    sw	$a6,12036($a0)
    # Line 117
    la	$a6,__glDoEvalCoord1
    # Line 145
    sw	$a7,12040($a0)
    # Line 118
    la	$a7,__glDoEvalCoord2
    # Line 146
    sw	$t0,12032($a0)
    # Line 119
    la	$t0,__glDrawBitmap
    # Line 147
    sw	$t1,12028($a0)
    # Line 120
    la	$t1,__glRect
    # Line 148
    sw	$t2,12064($a0)
    # Line 121
    la	$t2,__glClipPolygon
    # Line 149
    sw	$t3,12048($a0)
    # Line 122
    la	$t3,__glGenericValidate
    # Line 150
    sw	$t8,12052($a0)
    # Line 123
    la	$t8,__glConvertStipple
    # Line 151
    sw	$t9,12044($a0)
    # Line 125
    # lw $t9, -23424($gp) # &__glPushModelViewMatrix
    sw	$t9,11888($a0)
    # Line 123
    sw	$t8,12656($a0)
    # Line 122
    sw	$t3,11784($a0)
    # Line 121
    sw	$t2,12092($a0)
    # Line 120
    sw	$t1,12100($a0)
    # Line 119
    sw	$t0,12508($a0)
    # Line 118
    sw	$a7,11992($a0)
    # Line 117
    sw	$a6,11988($a0)
    # Line 115
    sw	$a5,11836($a0)
    # Line 112
    sw	$a4,11916($a0)
    # Line 198
    la	$a1,__glSpanReadCI2
    # Line 200
    la	$a3,__glSpanReadRGBA2
    # Line 199
    la	$a2,__glSpanReadRGBA
    sw	$a2,12416($a0)
    # Line 179
    la	$a2,__glGenericPickClipProcs
    # Line 200
    sw	$a3,12420($a0)
    # Line 180
    la	$a3,__glGenericPickLineProcs
    # Line 198
    sw	$a1,12412($a0)
    # Line 177
    la	$a1,__glGenericPickTextureProcs
    sw	$a1,11796($a0)
    # Line 156
    la	$a1,__glNop
    # Line 180
    sw	$a3,11812($a0)
    # Line 158
    la	$a3,__glOddTStripVertex
    # Line 179
    sw	$a2,11828($a0)
    # Line 157
    la	$a2,__glEvenTStripVertex
    sw	$a2,11972($a0)
    # Line 131
    la	$a2,__glMakeIdentity
    # Line 158
    sw	$a3,11968($a0)
    # Line 133
    la	$a3,__glMipsMultMatrix
    # Line 156
    sw	$a1,11948($a0)
    # Line 130
    la	$a1,__glInvertTransposeMatrix
    sw	$a1,11876($a0)
    # Line 111
    la	$a1,sub_0d990000
    # Line 133
    sw	$a3,11884($a0)
    # Line 114
    la	$a3,sub_0d990000
    # Line 131
    sw	$a2,11880($a0)
    # Line 113
    la	$a2,sub_0d990000
    # Line 114
    addiu	$a3,$a3,14928
    sw	$a3,11768($a0)
    # Line 113
    addiu	$a2,$a2,14912
    sw	$a2,11772($a0)
    # Line 111
    addiu	$a1,$a1,14896
    sw	$a1,11908($a0)
    # Line 212
    la	$v0,__glSpanRenderStencil2
    # Line 214
    la	$v1,__glPixPickStoreProcs
    # Line 211
    la	$at,__glSpanRenderStencil
    sw	$at,12464($a0)
    # Line 194
    la	$at,__glGenericPickCopyImage
    # Line 214
    sw	$v1,11840($a0)
    # Line 197
    la	$v1,__glSpanReadCI
    # Line 212
    sw	$v0,12468($a0)
    # Line 195
    la	$v0,__glGenericPickReadImage
    sw	$v0,12576($a0)
    # Line 175
    la	$v0,__glGenericPickPointProcs
    # Line 197
    sw	$v1,12408($a0)
    # Line 176
    la	$v1,__glGenericPickRenderBitmapProcs
    # Line 194
    sw	$at,12572($a0)
    # Line 174
    la	$at,__glGenericPickParameterClipProcs
    sw	$at,11832($a0)
    # Line 152
    la	$at,__glBeginQStrip
    # Line 176
    sw	$v1,11820($a0)
    # Line 154
    la	$v1,__glEndPrim
    # Line 175
    sw	$v0,11808($a0)
    # Line 153
    la	$v0,__glBeginQuads
    sw	$v0,12056($a0)
    # Line 127
    la	$v0,__glLoadIdentityModelViewMatrix
    # Line 154
    sw	$v1,12068($a0)
    # Line 129
    la	$v1,__glCopyMatrix
    # Line 152
    sw	$at,12060($a0)
    # Line 126
    la	$at,__glPopModelViewMatrix
    sw	$at,11892($a0)
    # Line 107
    la	$at,sub_0d990000
    # Line 129
    sw	$v1,11872($a0)
    # Line 110
    la	$v1,sub_0d990000
    # Line 127
    sw	$v0,11896($a0)
    # Line 108
    la	$v0,sub_0d990000
    # Line 110
    addiu	$v1,$v1,14736
    sw	$v1,11912($a0)
    # Line 108
    addiu	$v0,$v0,14944
    sw	$v0,124($a0)
    # Line 107
    addiu	$at,$at,14960
    # Line 215
    jr	$ra
    # Line 107
    sw	$at,88($a0)
.end InitFnPtrs

# Function: InitBuffers
# Declared: Line 220 (Source lines: 221-286)
# Address: 0x0d993da0 - 0x0d993ef8 (Size: 344 bytes, Frame: 16)
.ent InitBuffers
InitBuffers:
    # Line 228
    li	$v0,2
    sw	$v0,4120($zero)
    # Line 231
    addiu	$a3,$a0,30664
    sw	$a3,30656($a0)
    lbu	$v0,3222($a0)
    # Line 221
    addiu	$sp,$sp,-16
    # Line 228
    lw	$at,11756($a0)
    # Line 221
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 228
    ori	$at,$at,0xff
    # Line 231
    beqz	$v0,.L0d993e94
    # Line 228
    sw	$at,11756($a0)
    # Line 234
    lbu	$v1,3221($a0)
    addiu	$a0,$a0,30884
    sw	$a0,30660($s0)
    beqz	$v1,.L0d993eb8
    sd	$ra,8($sp)
    # Line 236
    # lw $t9, -28496($gp) # &__glPixInitCI
    move	$a0,$a3
    bal __glPixInitCI
    move	$a1,$s0
    # Line 237
    # lw $t9, -28496($gp) # &__glPixInitCI
    move	$a1,$s0
    bal __glPixInitCI
    lw	$a0,30660($s0)
    # Line 266
    lbu	$a2,3224($s0)
.L0d993e08:
    li	$a3,-1
    sw	$a3,4852($s0)
    # Line 265
    li	$a1,1
    # Line 266
    beqz	$a2,.L0d993e34
    # Line 265
    sb	$a1,4848($s0)
    # Line 270
    # lw $t9, -27196($gp) # &__glInitAccum64
    move	$a1,$s0
    jal	__glInitAccum64
    addiu	$a0,$s0,31360
    # Line 271
    la	$a4,__glPixmapAllocAccum
    sw	$a4,31492($s0)
.L0d993e34:
    lbu	$a5,3225($s0)
    # Line 278
    lui	$a6,0x7fff
    # Line 271
    beqz	$a5,.L0d993e5c
    # Line 278
    ori	$a6,$a6,0xff80
    # Line 275
    # lw $t9, -26328($gp) # &__glInitDepth32
    move	$a1,$s0
    jal	__glInitDepth32
    addiu	$a0,$s0,31228
    b	.L0d993e64
    # Line 278
    lbu	$a7,3226($s0)
.L0d993e5c:
    sw	$a6,31304($s0)
    lbu	$a7,3226($s0)
.L0d993e64:
    beqz	$a7,.L0d993e80
    # Line 285
    nop	# was lw $t9, -23532($gp) # &__glUpdateDepthRange
    # Line 282
    # lw $t9, -24684($gp) # &__glInitStencil8
    move	$a1,$s0
    jal	__glInitStencil8
    addiu	$a0,$s0,31108
    # Line 285
    # lw $t9, -23532($gp) # &__glUpdateDepthRange
.L0d993e80:
    ld	$ra,8($sp)
    move	$a0,$s0
    # Line 286
    ld	$s0,0($sp)
    jr	$t9
    addiu	$sp,$sp,16
.L0d993e94:
    # Line 240
    lbu	$t0,3221($a0)
    beqz	$t0,.L0d993ee0
    sd	$ra,8($sp)
    # Line 244
    # lw $t9, -28496($gp) # &__glPixInitCI
    move	$a0,$a3
    bal __glPixInitCI
    move	$a1,$s0
    b	.L0d993e08
    # Line 266
    lbu	$a2,3224($s0)
.L0d993eb8:
    # Line 239
    # lw $t9, -28476($gp) # &__glPixInitRGB
    move	$a0,$a3
    bal __glPixInitRGB
    move	$a1,$s0
    # Line 240
    # lw $t9, -28476($gp) # &__glPixInitRGB
    move	$a1,$s0
    bal __glPixInitRGB
    lw	$a0,30660($s0)
    b	.L0d993e08
    # Line 266
    lbu	$a2,3224($s0)
.L0d993ee0:
    # Line 246
    # lw $t9, -28476($gp) # &__glPixInitRGB
    move	$a0,$a3
    bal __glPixInitRGB
    move	$a1,$s0
    b	.L0d993e08
    # Line 266
    lbu	$a2,3224($s0)
.end InitBuffers

# Function: __glPixmapMakeCurrent
# Declared: Line 288 (Source lines: 289-404)
# Address: 0x0d993f00 - 0x0d994678 (Size: 1912 bytes, Frame: 128)
.globl __glPixmapMakeCurrent
.ent __glPixmapMakeCurrent
__glPixmapMakeCurrent:
    # Line 294
    addiu	$a5,$a0,7976
    sw	$a5,6072($a0)
    # Line 289
    addiu	$sp,$sp,-128
    sd	$s6,32($sp)
    # Line 294
    sd	$a5,16($sp)
    sd	$s4,40($sp)
    sd	$s3,48($sp)
    sd	$s2,56($sp)
    sd	$ra,72($sp)
    # Line 289
    lui	$at,0xc
    sd	$s0,96($sp)
    addiu	$at,$at,-12660
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    la	$t0,__glPixImmedState
    li	$a7,4
    # Line 295
    li	$a2,236
    sd	$s1,88($sp)
    move	$a3,$zero
    sd	$s5,80($sp)
    move	$a6,$t0
.L0d993f54:
    addiu	$a7,$a7,-1
    addu	$v0,$a3,$a6
    addiu	$a2,$a2,-1
    addu	$v1,$a3,$a5
    ld	$v0,0($v0)
    addiu	$a3,$a3,8
    bnez	$a7,.L0d993f54
    sd	$v0,0($v1)
    addiu	$t9,$a6,56
    addiu	$t2,$a5,56
    li	$t8,0x40
    addiu	$s6,$a6,8
    addiu	$s3,$a5,8
    addiu	$s5,$a5,16
    addiu	$s4,$a6,16
    addiu	$t3,$a6,24
    addiu	$t1,$a5,24
    addiu	$t0,$a6,40
    addiu	$s2,$a5,40
    addiu	$a7,$a5,48
    addiu	$ra,$a6,48
    addiu	$s0,$a5,32
    addiu	$s1,$a6,32
    sd	$a1,8($sp)
    nop
    nop
    nop
.L0d993fc0:
    addu	$a4,$a3,$a6
    addu	$at,$a3,$a5
    ld	$a4,0($a4)
    addu	$a1,$a3,$s6
    sd	$a4,0($at)
    addu	$a4,$a3,$s3
    ld	$a1,0($a1)
    addu	$v1,$a3,$s4
    sd	$a1,0($a4)
    addu	$a1,$a3,$s5
    ld	$v1,0($v1)
    addu	$v0,$a3,$t3
    sd	$v1,0($a1)
    addu	$v1,$a3,$t1
    ld	$v0,0($v0)
    addu	$at,$a3,$s1
    sd	$v0,0($v1)
    addu	$v0,$a3,$s0
    ld	$at,0($at)
    addu	$a4,$a3,$t0
    sd	$at,0($v0)
    addu	$at,$a3,$s2
    ld	$a4,0($a4)
    addu	$a1,$a3,$ra
    sd	$a4,0($at)
    addu	$a4,$a3,$a7
    ld	$a1,0($a1)
    addiu	$a2,$a2,-8
    addu	$v1,$a3,$t9
    sd	$a1,0($a4)
    addu	$a1,$a3,$t2
    ld	$v1,0($v1)
    addu	$a3,$a3,$t8
    bgtz	$a2,.L0d993fc0
    sd	$v1,0($a1)
    # Line 296
    la	$t0,__glPixListCompState
    li	$t1,4
    li	$a3,236
    sd	$s8,64($sp)
    move	$a2,$zero
    addiu	$a7,$a0,6080
    sd	$s7,104($sp)
.L0d994068:
    addiu	$t1,$t1,-1
    addu	$a5,$a2,$t0
    addiu	$a3,$a3,-1
    addu	$a6,$a2,$a7
    ld	$a5,0($a5)
    addiu	$a2,$a2,8
    bnez	$t1,.L0d994068
    sd	$a5,0($a6)
    addiu	$t9,$t0,56
    addiu	$t8,$a7,56
    li	$s5,0x40
    addiu	$ra,$t0,8
    addiu	$s1,$a7,8
    addiu	$s3,$a7,16
    addiu	$s0,$t0,16
    addiu	$t3,$t0,24
    addiu	$t1,$a7,24
    addiu	$t2,$t0,40
    addiu	$s8,$a7,40
    addiu	$s4,$a7,48
    addiu	$s2,$t0,48
    addiu	$s6,$a7,32
    addiu	$s7,$t0,32
    nop
    nop
    nop
.L0d9940d0:
    addu	$a6,$a2,$t0
    addu	$at,$a2,$a7
    ld	$a6,0($a6)
    addu	$a5,$a2,$ra
    sd	$a6,0($at)
    addu	$a6,$a2,$s1
    ld	$a5,0($a5)
    addu	$a4,$a2,$s0
    sd	$a5,0($a6)
    addu	$a5,$a2,$s3
    ld	$a4,0($a4)
    addu	$a1,$a2,$t3
    sd	$a4,0($a5)
    addu	$a4,$a2,$t1
    ld	$a1,0($a1)
    addu	$v1,$a2,$s7
    sd	$a1,0($a4)
    addu	$a1,$a2,$s6
    ld	$v1,0($v1)
    addu	$v0,$a2,$t2
    sd	$v1,0($a1)
    addu	$v1,$a2,$s8
    ld	$v0,0($v0)
    addu	$at,$a2,$s2
    sd	$v0,0($v1)
    addu	$v0,$a2,$s4
    ld	$at,0($at)
    addiu	$a3,$a3,-8
    addu	$a6,$a2,$t9
    sd	$at,0($v0)
    addu	$at,$a2,$t8
    ld	$a6,0($a6)
    addu	$a2,$a2,$s5
    bgtz	$a3,.L0d9940d0
    sd	$a6,0($at)
    # Line 301
    li	$t0,2
    sw	$t0,4120($zero)
    lw	$a7,172($a0)
    lw	$t0,11756($a0)
    sd	$a0,112($sp)
    andi	$a7,$a7,0x4
    ori	$t0,$t0,0x80
    sw	$t0,11756($a0)
    beqz	$a7,.L0d9945f4
    ld	$s6,112($sp)
    # Line 315
    # lw $t9, -26432($gp) # &__glMakeCurrentBuffers
.L0d994188:
    move	$a0,$s6
    jal	__glMakeCurrentBuffers
    addiu	$a1,$sp,0
    andi	$t1,$v0,0xff
    beqz	$t1,.L0d9941b0
    # Line 325
    ld	$t3,8($sp)
    # Line 323
    lw	$t2,31500($s6)
    lw	$t2,28($t2)
    # Line 325
    sw	$t3,30680($s6)
    # Line 326
    sw	$zero,24($t2)
.L0d9941b0:
    # Line 335
    lw	$t8,172($s6)
    andi	$t8,$t8,0x4
    addiu	$t9,$s6,30884
    sw	$t9,30660($s6)
    # Line 334
    addiu	$t3,$s6,30664
    # Line 335
    beqz	$t8,.L0d994610
    # Line 334
    sw	$t3,30656($s6)
    # Line 345
    # lw $t9, -26436($gp) # &__glFindWindowSize
.L0d9941d0:
    jal	__glFindWindowSize
    move	$a0,$s6
    lw	$t9,172($s6)
    andi	$t9,$t9,0x6
    beqz	$t9,.L0d9944a4
    # Line 352
    nop	# was lw $t9, -26468($gp) # &__glSoftResetContext
    # Line 367
    # lw $t9, -32724($gp) # &sub_0d990000
    addiu	$t9,$t9,14736
    bal __glPixmapAllocAccum
    move	$a0,$s6
    # Line 373
    # lw $t9, -26472($gp) # &__glContextSetColorScales
.L0d9941fc:
    jal	__glContextSetColorScales
    move	$a0,$s6
    # Line 378
    lw	$t9,11784($s6)
    jalr	$t9
    move	$a0,$s6
    lw	$ra,4168($zero)
    li	$a5,4
    # Line 397
    move	$a1,$zero
    addiu	$a2,$s6,7976
    # Line 396
    li	$a3,4176
    # Line 378
    beqz	$ra,.L0d994388
    lw	$a0,4988($s6)
    beqz	$a0,.L0d994628
    ld	$s7,104($sp)
    li	$a0,4
    # Line 387
    li	$a2,236
    move	$a1,$zero
    li	$t9,0x40
    # Line 386
    addiu	$at,$s6,9864
    # Line 387
    addiu	$a5,$s6,7976
    addiu	$a3,$s6,6080
    # Line 386
    sw	$at,6072($s6)
    addiu	$s0,$a3,56
    addiu	$ra,$a5,56
.L0d99425c:
    addiu	$a0,$a0,-1
    # Line 387
    addu	$v0,$a1,$a3
    addiu	$a2,$a2,-1
    addu	$v1,$a1,$a5
    ld	$v0,0($v0)
    addiu	$a1,$a1,8
    bnez	$a0,.L0d99425c
    sd	$v0,0($v1)
    addiu	$t2,$a3,32
    addiu	$t3,$a5,32
    addiu	$s1,$a3,48
    addiu	$t8,$a5,48
    addiu	$s2,$a5,40
    addiu	$s3,$a3,40
    addiu	$s4,$a5,24
    addiu	$a6,$a3,24
    addiu	$s5,$a3,16
    addiu	$t1,$a5,16
    addiu	$a7,$a5,8
    addiu	$t0,$a3,8
    nop
.L0d9942b0:
    addu	$a4,$a1,$a3
    addu	$at,$a1,$a5
    ld	$a4,0($a4)
    addu	$a0,$a1,$t0
    sd	$a4,0($at)
    addu	$a4,$a1,$a7
    ld	$a0,0($a0)
    addu	$v1,$a1,$s5
    sd	$a0,0($a4)
    addu	$a0,$a1,$t1
    ld	$v1,0($v1)
    addu	$v0,$a1,$a6
    sd	$v1,0($a0)
    addu	$v1,$a1,$s4
    ld	$v0,0($v0)
    addu	$at,$a1,$t2
    sd	$v0,0($v1)
    addu	$v0,$a1,$t3
    ld	$at,0($at)
    addu	$a4,$a1,$s3
    sd	$at,0($v0)
    addu	$at,$a1,$s2
    ld	$a4,0($a4)
    addu	$a0,$a1,$s1
    sd	$a4,0($at)
    addu	$a4,$a1,$t8
    ld	$a0,0($a0)
    addiu	$a2,$a2,-8
    addu	$v1,$a1,$s0
    sd	$a0,0($a4)
    addu	$a0,$a1,$ra
    ld	$v1,0($v1)
    addu	$a1,$a1,$t9
    bgtz	$a2,.L0d9942b0
    sd	$v1,0($a0)
    ld	$s4,40($sp)
.L0d994340:
    ld	$s8,64($sp)
    ld	$s3,48($sp)
    ld	$s2,56($sp)
    ld	$s7,104($sp)
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s5,80($sp)
    # Line 401
    lw	$a5,172($s6)
    ld	$ra,72($sp)
    # Line 404
    ld	$gp,24($sp)
    # Line 402
    li	$a6,-3
    # Line 401
    ori	$a5,$a5,0x4
    # Line 404
    li	$v0,1
    # Line 402
    and	$a5,$a5,$a6
    sw	$a5,172($s6)
    # Line 404
    ld	$s6,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d994388:
    # Line 389
    beqz	$a0,.L0d9944f4
    # Line 397
    li	$a0,236
    li	$t9,0x40
    li	$a5,4
    # Line 394
    li	$a2,236
    move	$a1,$zero
    # Line 393
    addiu	$a6,$s6,9864
    # Line 394
    li	$a0,4176
    addiu	$a3,$s6,6080
    # Line 393
    sw	$a6,6072($s6)
    addiu	$s0,$a3,56
    addiu	$ra,$a0,56
.L0d9943b8:
    addiu	$a5,$a5,-1
    # Line 394
    addu	$a7,$a1,$a3
    addiu	$a2,$a2,-1
    addu	$t0,$a1,$a0
    ld	$a7,0($a7)
    addiu	$a1,$a1,8
    bnez	$a5,.L0d9943b8
    sd	$a7,0($t0)
    addiu	$t1,$a3,32
    addiu	$t2,$a0,32
    addiu	$t3,$a3,48
    addiu	$t8,$a0,48
    addiu	$s1,$a0,40
    addiu	$s2,$a3,40
    addiu	$s3,$a0,24
    addiu	$s4,$a3,24
    addiu	$a6,$a3,16
    addiu	$a7,$a3,8
    addiu	$a5,$a0,8
    addiu	$t0,$a0,16
    nop
    nop
.L0d994410:
    addu	$a4,$a1,$a3
    addu	$at,$a1,$a0
    ld	$a4,0($a4)
    addu	$v1,$a1,$a7
    sd	$a4,0($at)
    addu	$a4,$a1,$a5
    ld	$v1,0($v1)
    addu	$v0,$a1,$a6
    sd	$v1,0($a4)
    addu	$v1,$a1,$t0
    ld	$v0,0($v0)
    addu	$at,$a1,$s4
    sd	$v0,0($v1)
    addu	$v0,$a1,$s3
    ld	$at,0($at)
    addu	$a4,$a1,$t1
    sd	$at,0($v0)
    addu	$at,$a1,$t2
    ld	$a4,0($a4)
    addu	$v1,$a1,$s2
    sd	$a4,0($at)
    addu	$a4,$a1,$s1
    ld	$v1,0($v1)
    addu	$v0,$a1,$t3
    sd	$v1,0($a4)
    addu	$v1,$a1,$t8
    ld	$v0,0($v0)
    addiu	$a2,$a2,-8
    addu	$at,$a1,$s0
    sd	$v0,0($v1)
    addu	$v0,$a1,$ra
    ld	$at,0($at)
    addu	$a1,$a1,$t9
    bgtz	$a2,.L0d994410
    sd	$at,0($v0)
    b	.L0d994340
    ld	$s4,40($sp)
.L0d9944a4:
    # Line 352
    jalr	$t9
    move	$a0,$s6
    # Line 364
    # lw $t9, -23056($gp) # &__glPixImmedState
    # Line 363
    lw	$s0,3704($s6)
    # Line 364
    lw	$t9,668($t9)
    move	$a1,$zero
    # Line 362
    lw	$s1,3700($s6)
    # Line 364
    move	$a0,$zero
    move	$a3,$s0
    jal	__glPixImmedState
    move	$a2,$s1
    # Line 365
    # lw $t9, -23056($gp) # &__glPixImmedState
    lw	$t9,152($t9)
    move	$a0,$zero
    move	$a1,$zero
    move	$a2,$s1
    jal	__glPixImmedState
    move	$a3,$s0
    b	.L0d9941fc
    # Line 373
    nop	# was lw $t9, -26472($gp) # &__glContextSetColorScales
.L0d9944f4:
    # Line 396
    sw	$a3,6072($s6)
    addiu	$a6,$a3,56
.L0d9944fc:
    addiu	$a5,$a5,-1
    # Line 397
    addu	$ra,$a1,$a2
    addiu	$a0,$a0,-1
    addu	$at,$a1,$a3
    ld	$ra,0($ra)
    addiu	$a1,$a1,8
    bnez	$a5,.L0d9944fc
    sd	$ra,0($at)
    addiu	$s1,$a2,32
    addiu	$t2,$a3,32
    addiu	$t0,$a2,48
    addiu	$t3,$a3,48
    addiu	$t1,$a3,40
    addiu	$t9,$a2,40
    addiu	$s4,$a3,24
    addiu	$a7,$a2,24
    addiu	$s3,$a2,16
    addiu	$s2,$a3,16
    addiu	$s0,$a2,8
    li	$t8,0x40
    addiu	$a5,$a2,56
    addiu	$ra,$a3,8
    nop
    nop
    nop
.L0d994560:
    addu	$a4,$a1,$a2
    addu	$at,$a1,$a3
    ld	$a4,0($a4)
    addu	$v1,$a1,$s0
    sd	$a4,0($at)
    addu	$a4,$a1,$ra
    ld	$v1,0($v1)
    addu	$v0,$a1,$s3
    sd	$v1,0($a4)
    addu	$v1,$a1,$s2
    ld	$v0,0($v0)
    addu	$at,$a1,$a7
    sd	$v0,0($v1)
    addu	$v0,$a1,$s4
    ld	$at,0($at)
    addu	$a4,$a1,$s1
    sd	$at,0($v0)
    addu	$at,$a1,$t2
    ld	$a4,0($a4)
    addu	$v1,$a1,$t9
    sd	$a4,0($at)
    addu	$a4,$a1,$t1
    ld	$v1,0($v1)
    addu	$v0,$a1,$t0
    sd	$v1,0($a4)
    addu	$v1,$a1,$t3
    ld	$v0,0($v0)
    addiu	$a0,$a0,-8
    addu	$at,$a1,$a5
    sd	$v0,0($v1)
    addu	$v0,$a1,$a6
    ld	$at,0($at)
    addu	$a1,$a1,$t8
    bgtz	$a0,.L0d994560
    sd	$at,0($v0)
    b	.L0d994340
    ld	$s4,40($sp)
.L0d9945f4:
    # Line 309
    # lw $t9, -32724($gp) # &sub_0d990000
    ld	$s6,112($sp)
    addiu	$t9,$t9,15776
    bal __glPixmapAllocAccum
    move	$a0,$s6
    b	.L0d994188
    # Line 315
    nop	# was lw $t9, -26432($gp) # &__glMakeCurrentBuffers
.L0d994610:
    # Line 339
    # lw $t9, -32724($gp) # &sub_0d990000
    addiu	$t9,$t9,15072
    bal __glPixmapAllocAccum
    move	$a0,$s6
    b	.L0d9941d0
    # Line 345
    nop	# was lw $t9, -26436($gp) # &__glFindWindowSize
.L0d994628:
    ld	$s0,96($sp)
    ld	$s1,88($sp)
    ld	$s5,80($sp)
    ld	$s8,64($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s4,40($sp)
    # Line 404
    ld	$gp,24($sp)
    # Line 389
    ld	$v0,16($sp)
    # Line 401
    lw	$at,172($s6)
    ld	$ra,72($sp)
    # Line 402
    li	$v1,-3
    # Line 389
    sw	$v0,6072($s6)
    # Line 401
    ori	$at,$at,0x4
    # Line 404
    li	$v0,1
    # Line 402
    and	$at,$at,$v1
    sw	$at,172($s6)
    # Line 404
    ld	$s6,32($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glPixmapMakeCurrent

