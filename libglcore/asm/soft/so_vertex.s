# Source: ../soft/so_vertex.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vertex.c
# Total Functions: 4

.text

# Function: __glClipCheckAll2
# Declared: Line 135 (Source lines: 136-139)
# Address: 0x0da34ba0 - 0x0da34be8 (Size: 72 bytes, Frame: 16)
.globl __glClipCheckAll2
.ent __glClipCheckAll2
__glClipCheckAll2:
    # Line 137
    mtc1	$zero,$f1
    # Line 136
    lui	$v1,0x2
    # Line 137
    swc1	$f1,24($a1)
    # Line 136
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,-15892
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 139
    # lw $t9, -23548($gp) # &__glClipCheckAll
    # Line 138
    lwc1	$f0,3544($a0)
    # Line 136
    sd	$ra,0($sp)
    move	$v0,$a0
    # Line 139
    nop
    bal __glClipCheckAll
    # Line 138
    swc1	$f0,28($a1)
    ld	$ra,0($sp)
    # Line 139
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glClipCheckAll2

# Function: __glClipCheckAll3
# Declared: Line 142 (Source lines: 143-145)
# Address: 0x0da34bf0 - 0x0da34c30 (Size: 64 bytes, Frame: 16)
.globl __glClipCheckAll3
.ent __glClipCheckAll3
__glClipCheckAll3:
    # Line 143
    lui	$v1,0x2
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,-15972
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 145
    # lw $t9, -23548($gp) # &__glClipCheckAll
    # Line 144
    lwc1	$f0,3544($a0)
    # Line 143
    sd	$ra,0($sp)
    move	$v0,$a0
    # Line 145
    nop
    bal __glClipCheckAll
    # Line 144
    swc1	$f0,28($a1)
    ld	$ra,0($sp)
    # Line 145
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glClipCheckAll3

# Function: __glClipCheckAll
# Declared: Line 250 (Source lines: 251-343)
# Address: 0x0da34c30 - 0x0da34dac (Size: 380 bytes, Frame: 32)
.globl __glClipCheckAll
.ent __glClipCheckAll
__glClipCheckAll:
    # Line 251
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$gp,24($sp)
    addiu	$at,$at,-16036
    addu	$gp,$t9,$at
    # Line 257
    lw	$t9,12($a1)
    # Line 251
    sd	$s0,8($sp)
    # Line 257
    li	$a2,16
    # Line 251
    move	$s0,$a1
    sd	$s7,16($sp)
    # Line 257
    nop
    # Line 251
    sd	$ra,0($sp)
    # Line 257
    jalr	$t9
    # Line 251
    move	$s7,$a0
    # Line 265
    lwc1	$f0,124($s0)
    # Line 266
    lwc1	$f9,3544($s7)
    div.s	$f9,$f9,$f0
    # Line 267
    lwc1	$f12,112($s0)
    # Line 269
    neg.s	$f1,$f0
    c.lt.s $f12,$f1
    # Line 268
    lwc1	$f10,116($s0)
    # Line 269
    li	$a3,1
    c.lt.s $f0,$f12
    movf	$a3,$zero,$fcc5
    ld	$ra,0($sp)
    # Line 273
    ori	$a2,$a3,0x2
    # Line 288
    lwc1	$f4,108($s0)
    # Line 273
    c.lt.s $f10,$f1
    movf	$a2,$a3,$fcc4
    # Line 269
    lwc1	$f11,120($s0)
    # Line 274
    ori	$a1,$a2,0x4
    # Line 288
    lwc1	$f5,104($s0)
    # Line 274
    c.lt.s $f0,$f10
    movf	$a1,$a2,$fcc3
    # Line 275
    ori	$a0,$a1,0x8
    # Line 278
    swc1	$f9,140($s0)
    # Line 275
    c.lt.s $f11,$f1
    movf	$a0,$a1,$fcc2
    # Line 287
    lw	$a2,1804($s7)
    # Line 288
    mtc1	$zero,$f8
    lwc1	$f7,100($s0)
    # Line 276
    ori	$v1,$a0,0x10
    # Line 288
    li	$a4,64
    lwc1	$f6,96($s0)
    # Line 276
    c.lt.s	$f0,$f11
    movf	$v1,$a0,$fcc1
    # Line 288
    lw	$a3,1748($s7)
    # Line 277
    ori	$v0,$v1,0x20
    # Line 288
    beqz	$a2,.L0da34d44
    movf	$v0,$v1,$fcc0
    nop
    nop
.L0da34d00:
    andi	$a5,$a2,0x1
    # Line 302
    srl	$a2,$a2,0x1
    # Line 288
    beqz	$a5,.L0da34d38
    # Line 299
    or	$a6,$a4,$v0
    # Line 288
    lwc1	$f13,4($a3)
    lwc1	$f14,0($a3)
    lwc1	$f15,8($a3)
    mul.s	$f13,$f13,$f7
    madd.s	$f13,$f13,$f14,$f6
    lwc1	$f14,12($a3)
    madd.s	$f13,$f13,$f15,$f5
    madd.s	$f13,$f13,$f14,$f4
    c.lt.s $f13,$f8
    movt	$v0,$a6,$fcc6
.L0da34d38:
    # Line 304
    addiu	$a3,$a3,16
    bnez	$a2,.L0da34d00
    # Line 303
    sll	$a4,$a4,0x1
.L0da34d44:
    # Line 304
    beqz	$v0,.L0da34d5c
    # Line 343
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s7,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da34d5c:
    # Line 318
    lwc1	$f17,1720($s7)
    # Line 317
    lwc1	$f19,1736($s7)
    # Line 316
    lwc1	$f18,1728($s7)
    # Line 318
    mul.s	$f17,$f17,$f12
    # Line 317
    mul.s	$f19,$f19,$f11
    lwc1	$f16,1740($s7)
    # Line 316
    mul.s	$f18,$f18,$f10
    lwc1	$f15,1732($s7)
    # Line 317
    madd.s	$f16,$f16,$f9,$f19
    # Line 318
    lwc1	$f14,1724($s7)
    # Line 316
    madd.s	$f15,$f15,$f9,$f18
    # Line 318
    madd.s	$f14,$f14,$f9,$f17
    # Line 343
    ld	$gp,24($sp)
    ld	$s7,16($sp)
    # Line 320
    swc1	$f16,136($s0)
    # Line 319
    swc1	$f15,132($s0)
    # Line 318
    swc1	$f14,128($s0)
    # Line 343
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glClipCheckAll

# Function: __glGenericPickVertexProcs
# Declared: Line 650 (Source lines: 651-804)
# Address: 0x0da34db0 - 0x0da35014 (Size: 612 bytes, Frame: 0)
.globl __glGenericPickVertexProcs
.ent __glGenericPickVertexProcs
__glGenericPickVertexProcs:
    # Line 658
    lw	$v1,1804($a0)
    # Line 657
    lw	$a5,29660($a0)
    # Line 651
    lui	$v0,0x2
    # Line 652
    lw	$a4,1792($a0)
    # Line 651
    addiu	$v0,$v0,-16420
    # Line 658
    lw	$a3,240($a5)
    beqz	$v1,.L0da34f00
    # Line 651
    addu	$at,$t9,$v0
    # Line 675
    la	$a6,__glClipCheckAll
    sw	$a6,11932($a0)
    # Line 674
    la	$a5,__glClipCheckAll3
    sw	$a5,11928($a0)
    # Line 673
    la	$a3,__glClipCheckAll2
    sw	$a3,11924($a0)
    # Line 672
    la	$a2,__glMipsClipCheckAll
    sw	$a2,11944($a0)
    # Line 671
    la	$a1,__glMipsClipCheckAll3
    sw	$a1,11940($a0)
    # Line 670
    la	$v1,__glMipsClipCheckAll2
    sw	$v1,11936($a0)
.L0da34e00:
    # Line 707
    lw	$a3,28080($a0)
    beqz	$a3,.L0da34fb4
    # Line 768
    li	$a6,9218
    # Line 740
    li	$a7,9
    beq	$a3,$a7,.L0da34f6c
    dsll32	$t8,$a4,0x9
    # Line 751
    la	$t2,__glValidateVertex4
.L0da34e1c:
    sw	$t2,11984($a0)
    # Line 750
    la	$t1,__glValidateVertex3
    sw	$t1,11980($a0)
    # Line 749
    la	$t0,__glValidateVertex2
    sw	$t0,11976($a0)
.L0da34e30:
    # Line 751
    lw	$t3,3204($a0)
    li	$t8,7169
    beq	$t3,$t8,.L0da34f9c
    # Line 771
    li	$t1,9218
    # Line 767
    lbu	$v1,3220($a0)
    # Line 776
    li	$t8,9218
    # Line 765
    li	$v0,2
    # Line 758
    li	$a3,1
    andi	$t9,$a4,0x40
    # Line 767
    beqz	$v1,.L0da34fe0
    movz	$a3,$v0,$t9
    lbu	$a1,28216($a0)
    beqz	$a1,.L0da34ed8
    # Line 781
    li	$v1,9218
    # Line 768
    dsll32	$a2,$a4,0xd
    # Line 776
    dsll32	$t2,$a4,0xb
    # Line 768
    bgez	$a2,.L0da34e88
    ori	$a3,$a3,0x4
    lw	$a5,1984($a0)
    xor	$a5,$a5,$a6
    # Line 771
    ori	$a6,$a3,0x1
    movz	$a3,$a6,$a5
.L0da34e88:
    dsll32	$a7,$a4,0xc
    bgez	$a7,.L0da34ea4
    nop
    lw	$t0,2108($a0)
    xor	$t0,$t0,$t1
    # Line 776
    ori	$t1,$a3,0x1
    movz	$a3,$t1,$t0
.L0da34ea4:
    bgez	$t2,.L0da34ec0
    # Line 781
    dsll32	$t9,$a4,0xa
    # Line 776
    lw	$t3,2232($a0)
    xor	$t3,$t3,$t8
    # Line 781
    ori	$t8,$a3,0x1
    movz	$a3,$t8,$t3
    dsll32	$t9,$a4,0xa
.L0da34ec0:
    bgez	$t9,.L0da34ed8
    nop
    lw	$v0,2356($a0)
    xor	$v0,$v0,$v1
    # Line 786
    ori	$v1,$a3,0x1
    movz	$a3,$v1,$v0
.L0da34ed8:
    lw	$a1,31496($a0)
    andi	$a1,$a1,0x1
    beqz	$a1,.L0da34fc8
    sll	$a4,$a3,0x2
    # Line 795
    la	$a2,sub_0da50000
    addiu	$a2,$a2,-29872
    addu	$a2,$a4,$a2
    lw	$a2,0($a2)
    # Line 804
    jr	$ra
    # Line 795
    sw	$a2,11920($a0)
.L0da34f00:
    # Line 682
    sltiu	$a7,$a3,2
    # Line 675
    beqz	$a3,.L0da35004
    # Line 705
    la	$t1,__glMipsClipCheckSafe2
    # Line 682
    bnez	$a7,.L0da34f44
    # Line 688
    la	$a3,__glMipsClipCheckFrustum
    # Line 682
    lwc1	$f1,_lit_3f800000
    lwc1	$f4,232($a5)
    lwc1	$f0,_lit_bf800000
    c.le.s	$f0,$f4
    # Line 684
    la	$t0,__glMipsClipCheckFrustum2D
    # Line 682
    bc1f	.L0da34f44
    # Line 684
    la	$a5,__glMipsClipCheckFrustum_W
    # Line 682
    c.le.s $f4,$f1
    bc1f .L0da34f44
    nop
    # Line 684
    b	.L0da34f4c
    sw	$t0,11936($a0)
.L0da34f44:
    la	$a5,__glMipsClipCheckFrustum_W
    # Line 686
    sw	$a5,11936($a0)
.L0da34f4c:
    # Line 688
    sw	$a5,11940($a0)
.L0da34f50:
    # Line 707
    la	$t3,__glMipsClipCheckSafe4
    # Line 694
    sw	$a3,11944($a0)
    # Line 705
    sw	$t1,11924($a0)
    # Line 707
    sw	$t3,11932($a0)
    # Line 706
    la	$t2,__glMipsClipCheckSafe3
    b	.L0da34e00
    sw	$t2,11928($a0)
.L0da34f6c:
    # Line 740
    bltz	$t8,.L0da34e1c
    # Line 751
    la	$t2,__glValidateVertex4
    # Line 740
    lbu	$t9,1413($a0)
    bnez	$t9,.L0da34e1c
    # Line 751
    la	$t2,__glValidateVertex4
    # Line 746
    la	$a1,__glValidateLitVertex4
    sw	$a1,11984($a0)
    # Line 745
    la	$v1,__glValidateLitVertex3
    sw	$v1,11980($a0)
    # Line 744
    la	$v0,__glValidateLitVertex2
    # Line 746
    b	.L0da34e30
    # Line 744
    sw	$v0,11976($a0)
.L0da34f9c:
    # Line 751
    lbu	$a2,3221($a0)
    # Line 756
    la	$a3,__glSaveCIAll
    # Line 751
    beqz	$a2,.L0da34ffc
    # Line 758
    la	$t0,__glSaveCAll
    # Line 804
    jr	$ra
    # Line 756
    sw	$a3,11920($a0)
.L0da34fb4:
    # Line 733
    la	$a5,__glNop
    # Line 737
    sw	$a5,11984($a0)
    # Line 735
    sw	$a5,11980($a0)
    # Line 737
    b	.L0da34e30
    # Line 733
    sw	$a5,11976($a0)
.L0da34fc8:
    # Line 793
    la	$a6,sub_0da50000
    addiu	$a6,$a6,-29904
    addu	$a6,$a4,$a6
    lw	$a6,0($a6)
    # Line 804
    jr	$ra
    # Line 793
    sw	$a6,11920($a0)
.L0da34fe0:
    # Line 800
    la	$a7,sub_0da50000
    sll	$t0,$a3,0x2
    addiu	$a7,$a7,-29920
    addu	$a7,$a7,$t0
    lw	$a7,0($a7)
    # Line 804
    jr	$ra
    # Line 800
    sw	$a7,11920($a0)
.L0da34ffc:
    # Line 804
    jr	$ra
    # Line 758
    sw	$t0,11920($a0)
.L0da35004:
    # Line 688
    la	$a3,__glMipsClipCheckFrustum
    # Line 691
    sw	$a3,11940($a0)
    b	.L0da34f50
    # Line 690
    sw	$a3,11936($a0)
.end __glGenericPickVertexProcs

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

