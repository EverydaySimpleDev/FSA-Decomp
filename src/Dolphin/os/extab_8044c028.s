# 901KB-gap non-actor manager block: 3 function(s), 420 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800114BC
etb_800114BC:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800114BC, 8

.global etb_800114C4
etb_800114C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800114C4, 8

.section extabindex, "a"
.balign 4
.global eti_80021424
eti_80021424:
    .4byte fn_8044C038
    .4byte 0x00000114
    .4byte etb_800114BC
.size eti_80021424, 12

.global eti_80021430
eti_80021430:
    .4byte fn_8044C14C
    .4byte 0x00000080
    .4byte etb_800114C4
.size eti_80021430, 12

.text
.balign 4
.global fn_8044C028
.global fn_8044C038
.global fn_8044C14C

fn_8044C028:
    li 0, 0x1
    stb 0, 0x18(3)
    stfs 1, 0x14(3)
    blr

fn_8044C038:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x18(3)
    cmplwi 0, 0x0
    .4byte 0x418200D4 # beq .L_8044C130
    lwz 3, 0x8(31)
    lis 4, 0x5470
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 4, 0x5470
    lwz 3, 0x8(31)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    lfs 2, 0xc(31)
    lfs 0, 0x14(31)
    lwz 12, 0x10(12)
    fsubs 2, 2, 0
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x5470
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 4, 0x5470
    lwz 3, 0x8(31)
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    lfs 2, 0x10(31)
    lfs 0, 0x14(31)
    lwz 12, 0x10(12)
    fsubs 2, 2, 0
    mtctr 12
    bctrl
L_8044C130:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044C14C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x18(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8044C1B8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220E28 # lfs f1, lbl_80543DC8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 3, 0x8(31)
    li 0, 0x1
    .4byte 0xC0220E28 # lfs f1, lbl_80543DC8@sda21(r0)
    stb 0, 0x100(3)
    fmr 2, 1
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 3, 0x8(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    li 0, 0x0
    stb 0, 0x18(31)
L_8044C1B8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

