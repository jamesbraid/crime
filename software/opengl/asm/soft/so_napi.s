# Source: ../soft/so_napi.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_napi.c
# Total Functions: 8

.text

# Function: __glim_Normal3d
# Declared: Line 21 (Source lines: 23-28)
# Address: 0x0d9f49d0 - 0x0d9f49f0 (Size: 32 bytes, Frame: 0)
.globl __glim_Normal3d
.ent __glim_Normal3d
__glim_Normal3d:
    # Line 23
    lw	$at,4112($zero)
    # Line 27
    cvt.s.d	$f2,$f14
    # Line 26
    cvt.s.d	$f1,$f13
    # Line 27
    swc1	$f2,216($at)
    # Line 25
    cvt.s.d	$f0,$f12
    # Line 26
    swc1	$f1,212($at)
    # Line 28
    jr	$ra
    # Line 25
    swc1	$f0,208($at)
.end __glim_Normal3d

# Function: __glim_Normal3dv
# Declared: Line 30 (Source lines: 32-41)
# Address: 0x0d9f49f0 - 0x0d9f4a1c (Size: 44 bytes, Frame: 0)
.globl __glim_Normal3dv
.ent __glim_Normal3dv
__glim_Normal3dv:
    # Line 32
    lw	$at,4112($zero)
    # Line 37
    ldc1	$f2,16($a0)
    # Line 36
    ldc1	$f1,8($a0)
    # Line 38
    ldc1	$f0,0($a0)
    # Line 40
    cvt.s.d	$f2,$f2
    # Line 39
    cvt.s.d	$f1,$f1
    # Line 40
    swc1	$f2,216($at)
    # Line 38
    cvt.s.d	$f0,$f0
    # Line 39
    swc1	$f1,212($at)
    # Line 41
    jr	$ra
    # Line 38
    swc1	$f0,208($at)
.end __glim_Normal3dv

# Function: __glim_Normal3b
# Declared: Line 67 (Source lines: 69-74)
# Address: 0x0d9f4a20 - 0x0d9f4a74 (Size: 84 bytes, Frame: 0)
.globl __glim_Normal3b
.ent __glim_Normal3b
__glim_Normal3b:
    # Line 71
    sll	$v0,$a0,0x1
    # Line 73
    sll	$a2,$a2,0x1
    # Line 72
    sll	$v1,$a1,0x1
    # Line 73
    addiu	$a2,$a2,1
    # Line 72
    addiu	$v1,$v1,1
    # Line 73
    mtc1	$a2,$f3
    # Line 71
    addiu	$v0,$v0,1
    # Line 72
    mtc1	$v1,$f2
    # Line 69
    lw	$at,4112($zero)
    # Line 71
    mtc1	$v0,$f0
    # Line 73
    cvt.s.w	$f3,$f3
    # Line 71
    lwc1	$f1,3552($at)
    # Line 72
    cvt.s.w	$f2,$f2
    # Line 71
    cvt.s.w	$f0,$f0
    # Line 73
    mul.s	$f3,$f3,$f1
    # Line 72
    mul.s	$f2,$f2,$f1
    # Line 73
    swc1	$f3,216($at)
    # Line 71
    mul.s	$f0,$f0,$f1
    # Line 72
    swc1	$f2,212($at)
    # Line 74
    jr	$ra
    # Line 71
    swc1	$f0,208($at)
.end __glim_Normal3b

# Function: __glim_Normal3bv
# Declared: Line 76 (Source lines: 78-83)
# Address: 0x0d9f4a80 - 0x0d9f4ae0 (Size: 96 bytes, Frame: 0)
.globl __glim_Normal3bv
.ent __glim_Normal3bv
__glim_Normal3bv:
    # Line 80
    lb	$a1,0($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    # Line 78
    lw	$at,4112($zero)
    # Line 80
    cvt.s.w	$f3,$f3
    lwc1	$f1,3552($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,208($at)
    # Line 81
    lb	$v1,1($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,212($at)
    # Line 82
    lb	$v0,2($a0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    # Line 83
    jr	$ra
    # Line 82
    swc1	$f0,216($at)
.end __glim_Normal3bv

# Function: __glim_Normal3s
# Declared: Line 85 (Source lines: 87-92)
# Address: 0x0d9f4ae0 - 0x0d9f4b34 (Size: 84 bytes, Frame: 0)
.globl __glim_Normal3s
.ent __glim_Normal3s
__glim_Normal3s:
    # Line 89
    sll	$v0,$a0,0x1
    # Line 91
    sll	$a2,$a2,0x1
    # Line 90
    sll	$v1,$a1,0x1
    # Line 91
    addiu	$a2,$a2,1
    # Line 90
    addiu	$v1,$v1,1
    # Line 91
    mtc1	$a2,$f3
    # Line 89
    addiu	$v0,$v0,1
    # Line 90
    mtc1	$v1,$f2
    # Line 87
    lw	$at,4112($zero)
    # Line 89
    mtc1	$v0,$f0
    # Line 91
    cvt.s.w	$f3,$f3
    # Line 89
    lwc1	$f1,3560($at)
    # Line 90
    cvt.s.w	$f2,$f2
    # Line 89
    cvt.s.w	$f0,$f0
    # Line 91
    mul.s	$f3,$f3,$f1
    # Line 90
    mul.s	$f2,$f2,$f1
    # Line 91
    swc1	$f3,216($at)
    # Line 89
    mul.s	$f0,$f0,$f1
    # Line 90
    swc1	$f2,212($at)
    # Line 92
    jr	$ra
    # Line 89
    swc1	$f0,208($at)
.end __glim_Normal3s

# Function: __glim_Normal3sv
# Declared: Line 94 (Source lines: 96-101)
# Address: 0x0d9f4b40 - 0x0d9f4ba0 (Size: 96 bytes, Frame: 0)
.globl __glim_Normal3sv
.ent __glim_Normal3sv
__glim_Normal3sv:
    # Line 98
    lh	$a1,0($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f3
    # Line 96
    lw	$at,4112($zero)
    # Line 98
    cvt.s.w	$f3,$f3
    lwc1	$f1,3560($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,208($at)
    # Line 99
    lh	$v1,2($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,212($at)
    # Line 100
    lh	$v0,4($a0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    mul.s	$f0,$f0,$f1
    # Line 101
    jr	$ra
    # Line 100
    swc1	$f0,216($at)
.end __glim_Normal3sv

# Function: __glim_Normal3i
# Declared: Line 103 (Source lines: 104-111)
# Address: 0x0d9f4ba0 - 0x0d9f4bfc (Size: 92 bytes, Frame: 0)
.globl __glim_Normal3i
.ent __glim_Normal3i
__glim_Normal3i:
    # Line 110
    mtc1	$a2,$f3
    # Line 104
    lui	$v1,0x6
    # Line 109
    mtc1	$a1,$f2
    # Line 104
    addiu	$v1,$v1,-15892
    # Line 108
    mtc1	$a0,$f4
    # Line 104
    addu	$at,$t9,$v1
    # Line 110
    cvt.s.w	$f3,$f3
    # Line 108
    lwc1	$f5,_lit_40000000
    # Line 109
    cvt.s.w	$f2,$f2
    # Line 108
    cvt.s.w	$f4,$f4
    lwc1	$f1,_lit_3f800000
    # Line 110
    madd.s	$f3,$f1,$f3,$f5
    # Line 105
    lw	$v0,4112($zero)
    # Line 109
    madd.s	$f2,$f1,$f2,$f5
    # Line 108
    madd.s	$f1,$f1,$f4,$f5
    lwc1	$f0,3568($v0)
    # Line 110
    mul.s	$f3,$f0,$f3
    # Line 109
    mul.s	$f2,$f0,$f2
    # Line 110
    swc1	$f3,216($v0)
    # Line 108
    mul.s	$f0,$f0,$f1
    # Line 109
    swc1	$f2,212($v0)
    # Line 111
    jr	$ra
    # Line 108
    swc1	$f0,208($v0)
.end __glim_Normal3i

# Function: __glim_Normal3iv
# Declared: Line 113 (Source lines: 114-121)
# Address: 0x0d9f4c00 - 0x0d9f4c68 (Size: 104 bytes, Frame: 0)
.globl __glim_Normal3iv
.ent __glim_Normal3iv
__glim_Normal3iv:
    # Line 118
    lw	$a3,0($a0)
    mtc1	$a3,$f5
    # Line 114
    lui	$a2,0x6
    addiu	$a2,$a2,-15988
    addu	$at,$t9,$a2
    # Line 118
    cvt.s.w	$f5,$f5
    lwc1	$f3,_lit_40000000
    lwc1	$f1,_lit_3f800000
    madd.s	$f5,$f1,$f5,$f3
    # Line 115
    lw	$v0,4112($zero)
    # Line 118
    lwc1	$f0,3568($v0)
    mul.s	$f5,$f0,$f5
    swc1	$f5,208($v0)
    # Line 119
    lw	$a1,4($a0)
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    madd.s	$f4,$f1,$f4,$f3
    mul.s	$f4,$f0,$f4
    swc1	$f4,212($v0)
    # Line 120
    lw	$v1,8($a0)
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    madd.s	$f1,$f1,$f2,$f3
    mul.s	$f0,$f0,$f1
    # Line 121
    jr	$ra
    # Line 120
    swc1	$f0,216($v0)
.end __glim_Normal3iv

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

