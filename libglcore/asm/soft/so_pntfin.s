# Source: ../soft/so_pntfin.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntfin.c
# Total Functions: 2

.text

# Function: __glBeginPoints
# Declared: Line 24 (Source lines: 25-32)
# Address: 0x0d9f8270 - 0x0d9f82a0 (Size: 48 bytes, Frame: 0)
.globl __glBeginPoints
.ent __glBeginPoints
__glBeginPoints:
    # Line 29
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 25
    lui	$a1,0x6
    # Line 28
    lw	$a2,11952($a0)
    # Line 25
    addiu	$a1,$a1,-29924
    # Line 28
    sw	$a2,11948($a0)
    # Line 25
    addu	$at,$t9,$a1
    # Line 30
    la	$v0,__glEndPoints
    # Line 31
    la	$v1,__glNop
    sw	$v1,12020($a0)
    # Line 32
    jr	$ra
    # Line 30
    sw	$v0,12068($a0)
.end __glBeginPoints

# Function: __glEndPoints
# Declared: Line 34 (Source lines: 35-38)
# Address: 0x0d9f82a0 - 0x0d9f82c0 (Size: 32 bytes, Frame: 0)
.globl __glEndPoints
.ent __glEndPoints
__glEndPoints:
    # Line 35
    lui	$a1,0x6
    addiu	$a1,$a1,-29972
    addu	$at,$t9,$a1
    # Line 36
    la	$v0,__glNop
    # Line 37
    la	$v1,__glEndPrim
    sw	$v1,12068($a0)
    # Line 38
    jr	$ra
    # Line 36
    sw	$v0,11948($a0)
.end __glEndPoints

