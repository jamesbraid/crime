# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips_sspan.ma
# Category: mips
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glStencilTestSpan_asm
# Declared: Line 74 (Source lines: 72-532)
# Address: 0x0d991770 - 0x0d991d30 (Size: 1472 bytes, Frame: 0)
.globl __glStencilTestSpan_asm
.ent __glStencilTestSpan_asm
__glStencilTestSpan_asm:
    # Line 74
    lw	$a1,30248($a0)
    # Line 78
    move	$t0,$zero
    # Line 72
    lw	$v0,30452($a0)
    # Line 79
    addi	$t1,$zero,-1
    # Line 73
    lw	$v1,30472($a0)
    # Line 81
    li	$t3,0
    # Line 75
    lw	$a2,31180($a0)
    # Line 76
    lw	$a3,31184($a0)
    # Line 80
    move	$t2,$a1
.L0d991794:
    # Line 85
    beqz	$t2,.L0d991d04
    # Line 84
    move	$a4,$t2
    # Line 88
    sltiu	$at,$a4,33
    # Line 87
    move	$a5,$zero
    # Line 88
    bnez	$at,.L0d9917b4
    nop
    # Line 90
    b	.L0d9917e8
    # Line 89
    addi	$t2,$t2,-32
.L0d9917b4:
    # Line 103
    la	$at,sub_0da40000
    # Line 97
    addi	$a6,$a4,-1
    # Line 99
    lbu	$a7,0($v0)
    # Line 95
    li	$t3,32
    # Line 102
    sll	$t8,$a6,0x2
    # Line 96
    sub	$t3,$t3,$a4
    # Line 103
    addu	$at,$at,$t8
    # Line 93
    sub	$t2,$t2,$a4
    # Line 103
    lw	$t8,8392($at)
    # Line 100
    sub	$v0,$v0,$t3
    # Line 104
    daddu	$t8,$t8,$gp
    # Line 105
    jr	$t8
    nop
.L0d9917e8:
    # Line 115
    lbu	$t9,0($v0)
    # Line 119
    lbu	$a7,1($v0)
    # Line 116
    add	$a4,$a2,$t9
    # Line 118
    add	$t8,$t9,$a3
    # Line 117
    lbu	$a6,0($a4)
    # Line 120
    bnez	$a6,.L0d991814
    nop
    # Line 123
    lbu	$t9,0($t8)
    # Line 124
    ori	$a5,$a5,0x8000
    # Line 125
    addi	$t0,$t0,1
    # Line 126
    sb	$t9,0($v0)
.L0d991814:
    # Line 129
    add	$a4,$a2,$a7
    # Line 131
    add	$t8,$a7,$a3
    # Line 132
    lbu	$a7,2($v0)
    # Line 130
    lbu	$a6,0($a4)
    # Line 133
    bnez	$a6,.L0d99183c
    nop
    # Line 136
    lbu	$t9,0($t8)
    # Line 137
    ori	$a5,$a5,0x4000
    # Line 138
    addi	$t0,$t0,1
    # Line 139
    sb	$t9,1($v0)
.L0d99183c:
    # Line 141
    add	$a4,$a2,$a7
    # Line 143
    add	$t8,$a7,$a3
    # Line 144
    lbu	$a7,3($v0)
    # Line 142
    lbu	$a6,0($a4)
    # Line 145
    bnez	$a6,.L0d991864
    nop
    # Line 148
    lbu	$t9,0($t8)
    # Line 149
    ori	$a5,$a5,0x2000
    # Line 150
    addi	$t0,$t0,1
    # Line 151
    sb	$t9,2($v0)
.L0d991864:
    # Line 153
    add	$a4,$a2,$a7
    # Line 155
    add	$t8,$a7,$a3
    # Line 156
    lbu	$a7,4($v0)
    # Line 154
    lbu	$a6,0($a4)
    # Line 157
    bnez	$a6,.L0d99188c
    nop
    # Line 160
    lbu	$t9,0($t8)
    # Line 161
    ori	$a5,$a5,0x1000
    # Line 162
    addi	$t0,$t0,1
    # Line 163
    sb	$t9,3($v0)
.L0d99188c:
    # Line 165
    add	$a4,$a2,$a7
    # Line 167
    add	$t8,$a7,$a3
    # Line 168
    lbu	$a7,5($v0)
    # Line 166
    lbu	$a6,0($a4)
    # Line 169
    bnez	$a6,.L0d9918b4
    nop
    # Line 172
    lbu	$t9,0($t8)
    # Line 173
    ori	$a5,$a5,0x800
    # Line 174
    addi	$t0,$t0,1
    # Line 175
    sb	$t9,4($v0)
.L0d9918b4:
    # Line 177
    add	$a4,$a2,$a7
    # Line 179
    add	$t8,$a7,$a3
    # Line 180
    lbu	$a7,6($v0)
    # Line 178
    lbu	$a6,0($a4)
    # Line 181
    bnez	$a6,.L0d9918dc
    nop
    # Line 184
    lbu	$t9,0($t8)
    # Line 185
    ori	$a5,$a5,0x400
    # Line 186
    addi	$t0,$t0,1
    # Line 187
    sb	$t9,5($v0)
.L0d9918dc:
    # Line 189
    add	$a4,$a2,$a7
    # Line 191
    add	$t8,$a7,$a3
    # Line 192
    lbu	$a7,7($v0)
    # Line 190
    lbu	$a6,0($a4)
    # Line 193
    bnez	$a6,.L0d991904
    nop
    # Line 196
    lbu	$t9,0($t8)
    # Line 197
    ori	$a5,$a5,0x200
    # Line 198
    addi	$t0,$t0,1
    # Line 199
    sb	$t9,6($v0)
.L0d991904:
    # Line 201
    add	$a4,$a2,$a7
    # Line 203
    add	$t8,$a7,$a3
    # Line 204
    lbu	$a7,8($v0)
    # Line 202
    lbu	$a6,0($a4)
    # Line 205
    bnez	$a6,.L0d99192c
    nop
    # Line 208
    lbu	$t9,0($t8)
    # Line 209
    ori	$a5,$a5,0x100
    # Line 210
    addi	$t0,$t0,1
    # Line 211
    sb	$t9,7($v0)
.L0d99192c:
    # Line 213
    add	$a4,$a2,$a7
    # Line 215
    add	$t8,$a7,$a3
    # Line 216
    lbu	$a7,9($v0)
    # Line 214
    lbu	$a6,0($a4)
    # Line 217
    bnez	$a6,.L0d991954
    nop
    # Line 220
    lbu	$t9,0($t8)
    # Line 221
    ori	$a5,$a5,0x80
    # Line 222
    addi	$t0,$t0,1
    # Line 223
    sb	$t9,8($v0)
.L0d991954:
    # Line 225
    add	$a4,$a2,$a7
    # Line 227
    add	$t8,$a7,$a3
    # Line 228
    lbu	$a7,10($v0)
    # Line 226
    lbu	$a6,0($a4)
    # Line 229
    bnez	$a6,.L0d99197c
    nop
    # Line 232
    lbu	$t9,0($t8)
    # Line 233
    ori	$a5,$a5,0x40
    # Line 234
    addi	$t0,$t0,1
    # Line 235
    sb	$t9,9($v0)
.L0d99197c:
    # Line 237
    add	$a4,$a2,$a7
    # Line 239
    add	$t8,$a7,$a3
    # Line 240
    lbu	$a7,11($v0)
    # Line 238
    lbu	$a6,0($a4)
    # Line 241
    bnez	$a6,.L0d9919a4
    nop
    # Line 244
    lbu	$t9,0($t8)
    # Line 245
    ori	$a5,$a5,0x20
    # Line 246
    addi	$t0,$t0,1
    # Line 247
    sb	$t9,10($v0)
.L0d9919a4:
    # Line 249
    add	$a4,$a2,$a7
    # Line 251
    add	$t8,$a7,$a3
    # Line 252
    lbu	$a7,12($v0)
    # Line 250
    lbu	$a6,0($a4)
    # Line 253
    bnez	$a6,.L0d9919cc
    nop
    # Line 256
    lbu	$t9,0($t8)
    # Line 257
    ori	$a5,$a5,0x10
    # Line 258
    addi	$t0,$t0,1
    # Line 259
    sb	$t9,11($v0)
.L0d9919cc:
    # Line 261
    add	$a4,$a2,$a7
    # Line 263
    add	$t8,$a7,$a3
    # Line 264
    lbu	$a7,13($v0)
    # Line 262
    lbu	$a6,0($a4)
    # Line 265
    bnez	$a6,.L0d9919f4
    nop
    # Line 268
    lbu	$t9,0($t8)
    # Line 269
    ori	$a5,$a5,0x8
    # Line 270
    addi	$t0,$t0,1
    # Line 271
    sb	$t9,12($v0)
.L0d9919f4:
    # Line 273
    add	$a4,$a2,$a7
    # Line 275
    add	$t8,$a7,$a3
    # Line 276
    lbu	$a7,14($v0)
    # Line 274
    lbu	$a6,0($a4)
    # Line 277
    bnez	$a6,.L0d991a1c
    nop
    # Line 280
    lbu	$t9,0($t8)
    # Line 281
    ori	$a5,$a5,0x4
    # Line 282
    addi	$t0,$t0,1
    # Line 283
    sb	$t9,13($v0)
.L0d991a1c:
    # Line 285
    add	$a4,$a2,$a7
    # Line 287
    add	$t8,$a7,$a3
    # Line 288
    lbu	$a7,15($v0)
    # Line 286
    lbu	$a6,0($a4)
    # Line 289
    bnez	$a6,.L0d991a44
    nop
    # Line 292
    lbu	$t9,0($t8)
    # Line 293
    ori	$a5,$a5,0x2
    # Line 294
    addi	$t0,$t0,1
    # Line 295
    sb	$t9,14($v0)
.L0d991a44:
    # Line 297
    add	$a4,$a2,$a7
    # Line 299
    add	$t8,$a7,$a3
    # Line 300
    lbu	$a7,16($v0)
    # Line 298
    lbu	$a6,0($a4)
    # Line 301
    bnez	$a6,.L0d991a6c
    nop
    # Line 304
    lbu	$t9,0($t8)
    # Line 305
    ori	$a5,$a5,0x1
    # Line 306
    addi	$t0,$t0,1
    # Line 307
    sb	$t9,15($v0)
.L0d991a6c:
    # Line 311
    sll	$a5,$a5,0x10
    # Line 314
    add	$a4,$a2,$a7
    # Line 316
    add	$t8,$a7,$a3
    # Line 317
    lbu	$a7,17($v0)
    # Line 315
    lbu	$a6,0($a4)
    # Line 318
    bnez	$a6,.L0d991a98
    nop
    # Line 321
    lbu	$t9,0($t8)
    # Line 322
    ori	$a5,$a5,0x8000
    # Line 323
    addi	$t0,$t0,1
    # Line 324
    sb	$t9,16($v0)
.L0d991a98:
    # Line 326
    add	$a4,$a2,$a7
    # Line 328
    add	$t8,$a7,$a3
    # Line 329
    lbu	$a7,18($v0)
    # Line 327
    lbu	$a6,0($a4)
    # Line 330
    bnez	$a6,.L0d991ac0
    nop
    # Line 333
    lbu	$t9,0($t8)
    # Line 334
    ori	$a5,$a5,0x4000
    # Line 335
    addi	$t0,$t0,1
    # Line 336
    sb	$t9,17($v0)
.L0d991ac0:
    # Line 338
    add	$a4,$a2,$a7
    # Line 340
    add	$t8,$a7,$a3
    # Line 341
    lbu	$a7,19($v0)
    # Line 339
    lbu	$a6,0($a4)
    # Line 342
    bnez	$a6,.L0d991ae8
    nop
    # Line 345
    lbu	$t9,0($t8)
    # Line 346
    ori	$a5,$a5,0x2000
    # Line 347
    addi	$t0,$t0,1
    # Line 348
    sb	$t9,18($v0)
.L0d991ae8:
    # Line 350
    add	$a4,$a2,$a7
    # Line 352
    add	$t8,$a7,$a3
    # Line 353
    lbu	$a7,20($v0)
    # Line 351
    lbu	$a6,0($a4)
    # Line 354
    bnez	$a6,.L0d991b10
    nop
    # Line 357
    lbu	$t9,0($t8)
    # Line 358
    ori	$a5,$a5,0x1000
    # Line 359
    addi	$t0,$t0,1
    # Line 360
    sb	$t9,19($v0)
.L0d991b10:
    # Line 362
    add	$a4,$a2,$a7
    # Line 364
    add	$t8,$a7,$a3
    # Line 365
    lbu	$a7,21($v0)
    # Line 363
    lbu	$a6,0($a4)
    # Line 366
    bnez	$a6,.L0d991b38
    nop
    # Line 369
    lbu	$t9,0($t8)
    # Line 370
    ori	$a5,$a5,0x800
    # Line 371
    addi	$t0,$t0,1
    # Line 372
    sb	$t9,20($v0)
.L0d991b38:
    # Line 374
    add	$a4,$a2,$a7
    # Line 376
    add	$t8,$a7,$a3
    # Line 377
    lbu	$a7,22($v0)
    # Line 375
    lbu	$a6,0($a4)
    # Line 378
    bnez	$a6,.L0d991b60
    nop
    # Line 381
    lbu	$t9,0($t8)
    # Line 382
    ori	$a5,$a5,0x400
    # Line 383
    addi	$t0,$t0,1
    # Line 384
    sb	$t9,21($v0)
.L0d991b60:
    # Line 386
    add	$a4,$a2,$a7
    # Line 388
    add	$t8,$a7,$a3
    # Line 389
    lbu	$a7,23($v0)
    # Line 387
    lbu	$a6,0($a4)
    # Line 390
    bnez	$a6,.L0d991b88
    nop
    # Line 393
    lbu	$t9,0($t8)
    # Line 394
    ori	$a5,$a5,0x200
    # Line 395
    addi	$t0,$t0,1
    # Line 396
    sb	$t9,22($v0)
.L0d991b88:
    # Line 398
    add	$a4,$a2,$a7
    # Line 400
    add	$t8,$a7,$a3
    # Line 401
    lbu	$a7,24($v0)
    # Line 399
    lbu	$a6,0($a4)
    # Line 402
    bnez	$a6,.L0d991bb0
    nop
    # Line 405
    lbu	$t9,0($t8)
    # Line 406
    ori	$a5,$a5,0x100
    # Line 407
    addi	$t0,$t0,1
    # Line 408
    sb	$t9,23($v0)
.L0d991bb0:
    # Line 410
    add	$a4,$a2,$a7
    # Line 412
    add	$t8,$a7,$a3
    # Line 413
    lbu	$a7,25($v0)
    # Line 411
    lbu	$a6,0($a4)
    # Line 414
    bnez	$a6,.L0d991bd8
    nop
    # Line 417
    lbu	$t9,0($t8)
    # Line 418
    ori	$a5,$a5,0x80
    # Line 419
    addi	$t0,$t0,1
    # Line 420
    sb	$t9,24($v0)
.L0d991bd8:
    # Line 422
    add	$a4,$a2,$a7
    # Line 424
    add	$t8,$a7,$a3
    # Line 425
    lbu	$a7,26($v0)
    # Line 423
    lbu	$a6,0($a4)
    # Line 426
    bnez	$a6,.L0d991c00
    nop
    # Line 429
    lbu	$t9,0($t8)
    # Line 430
    ori	$a5,$a5,0x40
    # Line 431
    addi	$t0,$t0,1
    # Line 432
    sb	$t9,25($v0)
.L0d991c00:
    # Line 434
    add	$a4,$a2,$a7
    # Line 436
    add	$t8,$a7,$a3
    # Line 437
    lbu	$a7,27($v0)
    # Line 435
    lbu	$a6,0($a4)
    # Line 438
    bnez	$a6,.L0d991c28
    nop
    # Line 441
    lbu	$t9,0($t8)
    # Line 442
    ori	$a5,$a5,0x20
    # Line 443
    addi	$t0,$t0,1
    # Line 444
    sb	$t9,26($v0)
.L0d991c28:
    # Line 446
    add	$a4,$a2,$a7
    # Line 448
    add	$t8,$a7,$a3
    # Line 449
    lbu	$a7,28($v0)
    # Line 447
    lbu	$a6,0($a4)
    # Line 450
    bnez	$a6,.L0d991c50
    nop
    # Line 453
    lbu	$t9,0($t8)
    # Line 454
    ori	$a5,$a5,0x10
    # Line 455
    addi	$t0,$t0,1
    # Line 456
    sb	$t9,27($v0)
.L0d991c50:
    # Line 458
    add	$a4,$a2,$a7
    # Line 460
    add	$t8,$a7,$a3
    # Line 461
    lbu	$a7,29($v0)
    # Line 459
    lbu	$a6,0($a4)
    # Line 462
    bnez	$a6,.L0d991c78
    nop
    # Line 465
    lbu	$t9,0($t8)
    # Line 466
    ori	$a5,$a5,0x8
    # Line 467
    addi	$t0,$t0,1
    # Line 468
    sb	$t9,28($v0)
.L0d991c78:
    # Line 470
    add	$a4,$a2,$a7
    # Line 472
    add	$t8,$a7,$a3
    # Line 473
    lbu	$a7,30($v0)
    # Line 471
    lbu	$a6,0($a4)
    # Line 474
    bnez	$a6,.L0d991ca0
    nop
    # Line 477
    lbu	$t9,0($t8)
    # Line 478
    ori	$a5,$a5,0x4
    # Line 479
    addi	$t0,$t0,1
    # Line 480
    sb	$t9,29($v0)
.L0d991ca0:
    # Line 482
    add	$a4,$a2,$a7
    # Line 484
    add	$t8,$a7,$a3
    # Line 485
    lbu	$a7,31($v0)
    # Line 483
    lbu	$a6,0($a4)
    # Line 486
    bnez	$a6,.L0d991cc8
    nop
    # Line 489
    lbu	$t9,0($t8)
    # Line 490
    ori	$a5,$a5,0x2
    # Line 491
    addi	$t0,$t0,1
    # Line 492
    sb	$t9,30($v0)
.L0d991cc8:
    # Line 494
    add	$a4,$a2,$a7
    # Line 496
    add	$t8,$a7,$a3
    # Line 495
    lbu	$a6,0($a4)
    # Line 497
    bnez	$a6,.L0d991cec
    nop
    # Line 500
    lbu	$t9,0($t8)
    # Line 501
    ori	$a5,$a5,0x1
    # Line 502
    addi	$t0,$t0,1
    # Line 503
    sb	$t9,31($v0)
.L0d991cec:
    # Line 507
    sllv	$a5,$a5,$t3
    # Line 506
    addiu	$v0,$v0,32
    # Line 508
    xor	$a5,$a5,$t1
    # Line 510
    addi	$v1,$v1,4
    # Line 511
    b	.L0d991794
    # Line 509
    sw	$a5,-4($v1)
.L0d991d04:
    # Line 516
    bnez	$t0,.L0d991d14
    nop
    # Line 520
    jr	$ra
    # Line 519
    li	$v0,0
.L0d991d14:
    # Line 524
    beq	$t0,$a1,.L0d991d24
    nop
    # Line 526
    jr	$ra
    # Line 525
    li	$v0,1
.L0d991d24:
    # Line 530
    li	$v0,1
    # Line 532
    jr	$ra
    # Line 531
    sb	$v0,30476($a0)
.end __glStencilTestSpan_asm

