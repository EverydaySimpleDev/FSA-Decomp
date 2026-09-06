# 901KB-gap non-actor manager block: 7 function(s), 944 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011214
etb_80011214:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80011214, 8

.global etb_8001121C
etb_8001121C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8001121C, 8

.global etb_80011224
etb_80011224:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011224, 8

.global etb_8001122C
etb_8001122C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001122C, 8

.section extabindex, "a"
.balign 4
.global eti_80021118
eti_80021118:
    .4byte fn_804432DC
    .4byte 0x000001B8
    .4byte etb_80011214
.size eti_80021118, 12

.global eti_80021124
eti_80021124:
    .4byte fn_804434B8
    .4byte 0x00000100
    .4byte etb_8001121C
.size eti_80021124, 12

.global eti_80021130
eti_80021130:
    .4byte fn_804435E4
    .4byte 0x00000054
    .4byte etb_80011224
.size eti_80021130, 12

.global eti_8002113C
eti_8002113C:
    .4byte fn_80443638
    .4byte 0x00000050
    .4byte etb_8001122C
.size eti_8002113C, 12

.text
.balign 4
.global fn_804432DC
.global fn_80443494
.global fn_804434B8
.global fn_804435B8
.global fn_804435E4
.global fn_80443638
.global fn_80443688

fn_804432DC:
    stwu 1, -0x20(1)
    mflr 0
    clrlwi 7, 4, 24
    lis 8, lbl_8048FB88@ha
    stw 0, 0x24(1)
    cmplwi 7, 0x8
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    addi 30, 8, lbl_8048FB88@l
    .4byte 0x40800174 # bge .L_80443478
    lbz 0, 0x15(31)
    cmplwi 0, 0x3
    .4byte 0x40820168 # bne .L_80443478
    stb 4, 0x14(31)
    cmplwi 7, 0x0
    sth 5, 0x10(31)
    sth 6, 0x12(31)
    .4byte 0x40820068 # bne .L_8044338C
    lwz 3, 0x8(31)
    li 0, 0x0
    .4byte 0xC0220DC0 # lfs f1, lbl_80543D60@sda21(r0)
    sth 0, 0x20(3)
    fmr 2, 1
    lwz 3, 0x8(31)
    sth 0, 0x22(3)
    lwz 3, 0x8(31)
    sth 0, 0x24(3)
    lwz 3, 0x8(31)
    bl fn_80402E08
    .4byte 0xC0220DC4 # lfs f1, lbl_80543D64@sda21(r0)
    lwz 3, 0x8(31)
    fmr 2, 1
    bl fn_80402CE0
    lwz 3, 0x8(31)
    li 4, 0x1
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0xc(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    stb 0, 0x15(31)
    .4byte 0x480000F0 # b .L_80443478
L_8044338C:
    cmplwi 7, 0x7
    .4byte 0x40820030 # bne .L_804433C0
    lwz 3, 0x8(31)
    li 5, 0x0
    li 4, 0x1
    li 0, 0x2
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0xc(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    stb 0, 0x15(31)
    .4byte 0x480000BC # b .L_80443478
L_804433C0:
    lwz 3, 0x8(31)
    lis 0, 0x4330
    li 6, 0x0
    addi 5, 30, 0x1c
    sth 6, 0x20(3)
    addi 4, 30, 0x2c
    .4byte 0xC8420DC8 # lfd f2, lbl_80543D68@sda21(r0)
    lwz 3, 0x8(31)
    stw 0, 0x8(1)
    sth 6, 0x22(3)
    lwz 3, 0x8(31)
    stw 0, 0x10(1)
    sth 6, 0x24(3)
    lbz 0, 0x14(31)
    lwz 3, 0x8(31)
    slwi 0, 0, 1
    lhax 5, 5, 0
    lhax 0, 4, 0
    xoris 4, 5, 0x8000
    xoris 0, 0, 0x8000
    stw 4, 0xc(1)
    stw 0, 0x14(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 1, 1, 2
    fsubs 2, 0, 2
    bl fn_80402E08
    lbz 0, 0x14(31)
    addi 4, 30, 0x0
    lwz 3, 0x8(31)
    slwi 0, 0, 2
    lfs 0, 0x18(3)
    lfsx 1, 4, 0
    fdivs 1, 1, 0
    fmr 2, 1
    bl fn_80402CE0
    lwz 3, 0x8(31)
    li 5, 0x1
    li 4, 0x0
    li 0, 0x2
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    lwz 3, 0xc(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    stb 0, 0x15(31)
L_80443478:
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80443494:
    lha 4, 0x12(3)
    cmpwi 4, 0x0
    .4byte 0x40810010 # ble .L_804434AC
    subi 0, 4, 0x1
    sth 0, 0x12(3)
    blr
L_804434AC:
    li 0, 0x3
    stb 0, 0x15(3)
    blr

fn_804434B8:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8048FB88@ha
    .4byte 0xC8420DC8 # lfd f2, lbl_80543D68@sda21(r0)
    stw 0, 0x24(1)
    lis 0, 0x4330
    .4byte 0xC0220DC0 # lfs f1, lbl_80543D60@sda21(r0)
    li 5, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    addi 30, 4, lbl_8048FB88@l
    addi 6, 30, 0x1c
    li 4, 0x1e
    lha 3, 0x10(3)
    stw 0, 0x8(1)
    addi 3, 3, 0x1
    sth 3, 0x10(31)
    lbz 3, 0x14(31)
    slwi 0, 3, 1
    lwz 3, 0x8(31)
    lhax 0, 6, 0
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 2, 0, 2
    bl fn_80402B10
    lbz 4, 0x14(31)
    lis 0, 0x4330
    addi 3, 30, 0x2c
    stw 0, 0x10(1)
    slwi 0, 4, 1
    .4byte 0xC8420DC8 # lfd f2, lbl_80543D68@sda21(r0)
    lhax 0, 3, 0
    li 4, 0x1e
    lwz 3, 0x8(31)
    li 5, 0x0
    xoris 0, 0, 0x8000
    .4byte 0xC0220DC0 # lfs f1, lbl_80543D60@sda21(r0)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 2, 0, 2
    bl fn_80402940
    lbz 0, 0x14(31)
    addi 5, 30, 0x0
    lwz 3, 0x8(31)
    li 4, 0x1e
    slwi 0, 0, 2
    .4byte 0xC0220DC4 # lfs f1, lbl_80543D64@sda21(r0)
    lfs 2, 0x18(3)
    lfsx 0, 5, 0
    fdivs 2, 0, 2
    bl fn_8040271C
    lha 0, 0x10(31)
    cmpwi 0, 0x1e
    .4byte 0x4180000C # blt .L_804435A0
    li 0, 0x2
    stb 0, 0x15(31)
L_804435A0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804435B8:
    lha 4, 0x10(3)
    cmpwi 4, 0x0
    .4byte 0x40810010 # ble .L_804435D0
    subi 0, 4, 0x1
    sth 0, 0x10(3)
    blr
L_804435D0:
    li 4, 0x0
    li 0, 0x1
    sth 4, 0x10(3)
    stb 0, 0x15(3)
    blr

fn_804435E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x15(3)
    cmplwi 0, 0x3
    .4byte 0x41820024 # beq .L_80443624
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220DC0 # lfs f1, lbl_80543D60@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_80443624:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80443638:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 4, 0x15(3)
    subfic 3, 4, 0x3
    subi 0, 4, 0x3
    or 0, 3, 0
    srwi. 0, 0, 31
    .4byte 0x41820020 # beq .L_80443678
    mulli 5, 4, 0xc
    lis 4, lbl_804B1AC4@ha
    .4byte 0x806D9330 # lwz r3, lbl_8053AEF0@sda21(r0)
    addi 0, 4, lbl_804B1AC4@l
    add 12, 0, 5
    bl __ptmf_scall
    nop
L_80443678:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80443688:
    blr

