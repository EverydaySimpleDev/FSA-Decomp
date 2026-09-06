# 901KB-gap non-actor manager block: 5 function(s), 5,020 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010C6C
etb_80010C6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010C6C, 8

.global etb_80010C74
etb_80010C74:
    .4byte 0x090A0000
    .4byte 0x00000000
.size etb_80010C74, 8

.global etb_80010C7C
etb_80010C7C:
    .4byte 0x21CA0000
    .4byte 0x00000000
.size etb_80010C7C, 8

.global etb_80010C84
etb_80010C84:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80010C84, 8

.global etb_80010C8C
etb_80010C8C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010C8C, 8

.section extabindex, "a"
.balign 4
.global eti_80020CA4
eti_80020CA4:
    .4byte fn_80432414
    .4byte 0x00000224
    .4byte etb_80010C6C
.size eti_80020CA4, 12

.global eti_80020CB0
eti_80020CB0:
    .4byte fn_80432638
    .4byte 0x00000118
    .4byte etb_80010C74
.size eti_80020CB0, 12

.global eti_80020CBC
eti_80020CBC:
    .4byte fn_80432750
    .4byte 0x000003A8
    .4byte etb_80010C7C
.size eti_80020CBC, 12

.global eti_80020CC8
eti_80020CC8:
    .4byte fn_80432AF8
    .4byte 0x00000C20
    .4byte etb_80010C84
.size eti_80020CC8, 12

.global eti_80020CD4
eti_80020CD4:
    .4byte fn_80433718
    .4byte 0x00000098
    .4byte etb_80010C8C
.size eti_80020CD4, 12

.text
.balign 4
.global fn_80432414
.global fn_80432638
.global fn_80432750
.global fn_80432AF8
.global fn_80433718

fn_80432414:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052BFD8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8052BFD8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80432464
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80432464:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8043249C
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8043249C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804324D4
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_804324D4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8043250C
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8043250C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80432544
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80432544:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8043257C
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8043257C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804325B4
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_804325B4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804325EC
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_804325EC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80432624
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80432624:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80432638:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0xac(3)
    cmplwi 0, 0x0
    .4byte 0x418200A8 # beq .L_8043271C
    lwz 3, 0x18(31)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x18(31)
    lfs 31, 0x0(3)
    lfs 30, 0x8(4)
    lwz 3, 0x4(4)
    bl fn_80095FB4
    lwz 4, 0x18(31)
    lfs 29, 0x4(3)
    lfs 28, 0xc(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lis 4, lbl_8050DB0C@ha
    lis 3, 0x4330
    addi 5, 4, lbl_8050DB0C@l
    stw 3, 0x8(1)
    lha 4, 0x23e(5)
    fsubs 4, 31, 30
    lha 0, 0x240(5)
    fsubs 2, 29, 28
    xoris 4, 4, 0x8000
    stw 3, 0x10(1)
    xoris 0, 0, 0x8000
    stw 4, 0xc(1)
    .4byte 0xC8620C10 # lfd f3, lbl_80543BB0@sda21(r0)
    stw 0, 0x14(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 1, 1, 3
    lwz 3, 0x3c(31)
    fsubs 0, 0, 3
    fadds 1, 4, 1
    fadds 2, 2, 0
    bl fn_80402E08
    .4byte 0xC0220C08 # lfs f1, lbl_80543BA8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0xc(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_8043271C:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lwz 0, 0x64(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80432750:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stfd 26, 0x30(1)
    psq_st 26, 0x38(1), 0, 0
    stfd 25, 0x20(1)
    psq_st 25, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    fmr 28, 1
    mr 31, 3
    fmr 29, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fmr 30, 3
    mr 28, 4
    fmr 31, 4
    bl fn_8013B490
    lbz 0, 0xa4(31)
    cmplwi 0, 0x0
    .4byte 0x408201EC # bne .L_804329B8
    lwz 7, 0x20(31)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    lfs 1, 0x18(7)
    addi 6, 5, 0x3031
    lfs 0, 0x1c(7)
    addi 5, 4, 0x6461
    fdivs 26, 30, 1
    lwz 12, 0x0(3)
    lfs 27, 0x10(7)
    lwz 12, 0x3c(12)
    fdivs 25, 31, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 5, 0x7461
    .4byte 0xC0020C18 # lfs f0, lbl_80543BB8@sda21(r0)
    lis 4, 0x4e
    lwz 3, 0x4(31)
    fadds 1, 27, 1
    fmadds 0, 30, 0, 28
    lwz 7, 0x20(31)
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    fsubs 28, 0, 1
    lfs 27, 0x14(7)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    mr 30, 31
    .4byte 0xC0020C18 # lfs f0, lbl_80543BB8@sda21(r0)
    li 29, 0x0
    fadds 1, 27, 1
    fmadds 0, 31, 0, 29
    fsubs 27, 0, 1
L_80432870:
    fmr 1, 28
    lwz 3, 0x18(30)
    fmr 2, 27
    bl fn_80402E08
    fmr 1, 26
    lwz 3, 0x18(30)
    fmr 2, 25
    bl fn_80402CE0
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD4 # blt .L_80432870
    clrlwi. 0, 28, 24
    .4byte 0x418200BC # beq .L_80432960
    .4byte 0xC0020C1C # lfs f0, lbl_80543BBC@sda21(r0)
    fcmpu cr0, 0, 26
    .4byte 0x408200B0 # bne .L_80432960
    lhz 0, 0x9e(31)
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_804328D0
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_804328D0
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_804328DC
L_804328D0:
    li 0, 0x1
    stb 0, 0xa2(31)
    .4byte 0x4800000C # b .L_804328E4
L_804328DC:
    li 0, 0x0
    stb 0, 0xa2(31)
L_804328E4:
    lbz 3, 0xa2(31)
    lbz 0, 0xa3(31)
    cmplw 3, 0
    .4byte 0x40820048 # bne .L_80432938
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80432910
    li 0, 0x1
    stb 0, 0xb0(3)
L_80432910:
    lbz 0, 0xa2(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80432924
    .4byte 0xC0020C20 # lfs f0, lbl_80543BC0@sda21(r0)
    fadds 27, 27, 0
L_80432924:
    fmr 1, 28
    lwz 3, 0x34(31)
    fmr 2, 27
    bl fn_80402E08
    .4byte 0x48000068 # b .L_8043299C
L_80432938:
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80432954
    li 0, 0x0
    stb 0, 0xb0(3)
L_80432954:
    lbz 0, 0xa2(31)
    stb 0, 0xa3(31)
    .4byte 0x48000040 # b .L_8043299C
L_80432960:
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8043297C
    li 0, 0x0
    stb 0, 0xb0(3)
L_8043297C:
    .4byte 0xC0020C1C # lfs f0, lbl_80543BBC@sda21(r0)
    fcmpu cr0, 0, 26
    .4byte 0x41820018 # beq .L_8043299C
    lbz 0, 0xac(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8043299C
    li 0, 0x0
    stb 0, 0xac(31)
L_8043299C:
    .4byte 0xC0220C08 # lfs f1, lbl_80543BA8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x480000EC # b .L_80432AA0
L_804329B8:
    lwz 7, 0x2c(31)
    lis 5, 0x7461
    lwz 3, 0x8(31)
    lis 4, 0x4e
    lfs 1, 0x18(7)
    addi 6, 5, 0x3031
    lfs 0, 0x1c(7)
    addi 5, 4, 0x6461
    fdivs 25, 30, 1
    lwz 12, 0x0(3)
    lfs 27, 0x10(7)
    lwz 12, 0x3c(12)
    fdivs 26, 31, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 5, 0x7461
    .4byte 0xC0020C18 # lfs f0, lbl_80543BB8@sda21(r0)
    lis 4, 0x4e
    lwz 3, 0x8(31)
    fadds 1, 27, 1
    fmadds 0, 30, 0, 28
    lwz 7, 0x2c(31)
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    fsubs 28, 0, 1
    lfs 27, 0x14(7)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    mr 30, 31
    .4byte 0xC0020C18 # lfs f0, lbl_80543BB8@sda21(r0)
    li 29, 0x0
    fadds 1, 27, 1
    fmadds 0, 31, 0, 29
    fsubs 27, 0, 1
L_80432A58:
    fmr 1, 28
    lwz 3, 0x28(30)
    fmr 2, 27
    bl fn_80402E08
    fmr 1, 25
    lwz 3, 0x28(30)
    fmr 2, 26
    bl fn_80402CE0
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFD4 # blt .L_80432A58
    .4byte 0xC0220C08 # lfs f1, lbl_80543BA8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_80432AA0:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    psq_l 26, 0x38(1), 0, 0
    lfd 26, 0x30(1)
    psq_l 25, 0x28(1), 0, 0
    lfd 25, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x94(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80432AF8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 30, 3
    lwz 3, 0x90(3)
    addi 0, 3, 0x1
    stw 0, 0x90(30)
    lwz 3, 0x94(30)
    addi 0, 3, 0x1
    stw 0, 0x94(30)
    lwz 3, 0x10(30)
    lwz 4, 0x90(30)
    lha 0, 0x6(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_80432B40
    li 0, 0x0
    stw 0, 0x90(30)
L_80432B40:
    lwz 3, 0x90(30)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220C10 # lfd f1, lbl_80543BB0@sda21(r0)
    stw 0, 0xc(1)
    lwz 3, 0x10(30)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x4(30)
    bl fn_8009DB58
    lwz 3, 0x14(30)
    lwz 4, 0x94(30)
    lha 0, 0x6(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_80432B8C
    li 0, 0x0
    stw 0, 0x94(30)
L_80432B8C:
    lwz 3, 0x94(30)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220C10 # lfd f1, lbl_80543BB0@sda21(r0)
    stw 0, 0xc(1)
    lwz 3, 0x14(30)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x8(30)
    bl fn_8009DB58
    li 0, 0x0
    stb 0, 0xac(30)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80432BDC
    li 31, 0x0
    .4byte 0x48000010 # b .L_80432BE8
L_80432BDC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lwz 31, 0x230(3)
L_80432BE8:
    cmpwi 31, 0x0
    .4byte 0x41800B18 # blt .L_80433704
    lwz 0, 0x4c(4)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_80432C04
    li 0, 0x1
    .4byte 0x48000014 # b .L_80432C14
L_80432C04:
    lbz 0, 0x88(4)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_80432C14:
    clrlwi. 0, 0, 24
    .4byte 0x40820388 # bne .L_80432FA0
    mr 3, 31
    bl fn_8022EA0C
    bl fn_80236768
    cmpwi 3, 0x0
    .4byte 0x40810374 # ble .L_80432FA0
    mr 3, 31
    bl fn_8022EA0C
    bl fn_80236768
    cmpwi 3, 0x384
    .4byte 0x40800360 # bge .L_80432FA0
    mr 3, 31
    bl fn_8022EA0C
    bl fn_80236768
    lis 4, 0x8889
    lwz 0, 0x98(30)
    subi 4, 4, 0x7777
    mulhw 4, 4, 3
    add 3, 4, 3
    srawi 3, 3, 5
    srwi 4, 3, 31
    add 3, 3, 4
    addi 31, 3, 0x1
    cmpw 31, 0
    .4byte 0x41820318 # beq .L_80432F90
    cmpwi 31, 0x63
    .4byte 0x40810008 # ble .L_80432C88
    li 31, 0x63
L_80432C88:
    cmpwi 31, 0x0
    .4byte 0x40800008 # bge .L_80432C94
    li 31, 0x0
L_80432C94:
    cmpwi 31, 0xa
    .4byte 0x40800120 # bge .L_80432DB8
    lis 3, lbl_804B1640@ha
    lis 5, 0x5449
    slwi 0, 31, 2
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwzu 5, lbl_8048F438@l(4)
    lwz 12, 0x0(3)
    mr 27, 0
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 4, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 28, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x10(28)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(28)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820230 # bne .L_80432F90
    lwz 3, 0xc(30)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, lbl_8048F438@ha
    stb 0, 0xb0(3)
    addi 4, 4, lbl_8048F438@l
    lwz 5, 0x18(4)
    lwz 3, 0xc(30)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480001DC # b .L_80432F90
L_80432DB8:
    lis 4, 0x6666
    lis 3, lbl_804B1640@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwzu 5, lbl_8048F438@l(4)
    lwz 12, 0x0(3)
    mr 27, 0
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 4, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1640@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 31
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwz 12, 0x0(3)
    addi 29, 4, lbl_8048F438@l
    lwz 5, 0x10(29)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(29)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 28, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x18(28)
    lwz 12, 0x3c(12)
    lwz 6, 0x1c(28)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lwz 5, 0x10(29)
    lwz 12, 0x0(3)
    lwz 6, 0x14(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80432F90
    lwz 3, 0xc(30)
    lwz 5, 0x10(29)
    lwz 12, 0x0(3)
    lwz 6, 0x14(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x18(28)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(28)
    lwz 3, 0xc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80432F90:
    stw 31, 0x98(30)
    li 0, 0x1
    stb 0, 0xac(30)
    .4byte 0x48000768 # b .L_80433704
L_80432FA0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_80432FB8
    li 0, 0x1
    .4byte 0x48000014 # b .L_80432FC8
L_80432FB8:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_80432FC8:
    clrlwi. 0, 0, 24
    .4byte 0x40820388 # bne .L_80433354
    mr 3, 31
    bl fn_8022EA0C
    bl fn_80236630
    cmpwi 3, 0x0
    .4byte 0x40810374 # ble .L_80433354
    mr 3, 31
    bl fn_8022EA0C
    bl fn_80236630
    cmpwi 3, 0x4b0
    .4byte 0x40800360 # bge .L_80433354
    mr 3, 31
    bl fn_8022EA0C
    bl fn_80236630
    lis 4, 0x8889
    lwz 0, 0x98(30)
    subi 4, 4, 0x7777
    mulhw 4, 4, 3
    add 3, 4, 3
    srawi 3, 3, 5
    srwi 4, 3, 31
    add 3, 3, 4
    addi 31, 3, 0x1
    cmpw 31, 0
    .4byte 0x41820318 # beq .L_80433344
    cmpwi 31, 0x63
    .4byte 0x40810008 # ble .L_8043303C
    li 31, 0x63
L_8043303C:
    cmpwi 31, 0x0
    .4byte 0x40800008 # bge .L_80433048
    li 31, 0x0
L_80433048:
    cmpwi 31, 0xa
    .4byte 0x40800120 # bge .L_8043316C
    lis 3, lbl_804B1640@ha
    lis 5, 0x5449
    slwi 0, 31, 2
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwzu 5, lbl_8048F438@l(4)
    lwz 12, 0x0(3)
    mr 27, 0
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 4, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 28, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x10(28)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(28)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820230 # bne .L_80433344
    lwz 3, 0xc(30)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, lbl_8048F438@ha
    stb 0, 0xb0(3)
    addi 4, 4, lbl_8048F438@l
    lwz 5, 0x18(4)
    lwz 3, 0xc(30)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480001DC # b .L_80433344
L_8043316C:
    lis 4, 0x6666
    lis 3, lbl_804B1640@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwzu 5, lbl_8048F438@l(4)
    lwz 12, 0x0(3)
    mr 27, 0
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 4, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1640@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 31
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwz 12, 0x0(3)
    addi 29, 4, lbl_8048F438@l
    lwz 5, 0x10(29)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(29)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 28, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x18(28)
    lwz 12, 0x3c(12)
    lwz 6, 0x1c(28)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lwz 5, 0x10(29)
    lwz 12, 0x0(3)
    lwz 6, 0x14(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80433344
    lwz 3, 0xc(30)
    lwz 5, 0x10(29)
    lwz 12, 0x0(3)
    lwz 6, 0x14(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x18(28)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(28)
    lwz 3, 0xc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80433344:
    stw 31, 0x98(30)
    li 0, 0x1
    stb 0, 0xac(30)
    .4byte 0x480003B4 # b .L_80433704
L_80433354:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_8043336C
    li 0, 0x1
    .4byte 0x48000014 # b .L_8043337C
L_8043336C:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_8043337C:
    clrlwi. 0, 0, 24
    .4byte 0x40820384 # bne .L_80433704
    mr 3, 31
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x0
    .4byte 0x40810370 # ble .L_80433704
    mr 3, 31
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x12c
    .4byte 0x4080035C # bge .L_80433704
    mr 3, 31
    bl fn_8022EA0C
    bl fn_802366CC
    lis 4, 0x8889
    lwz 0, 0x98(30)
    subi 4, 4, 0x7777
    mulhw 4, 4, 3
    add 3, 4, 3
    srawi 3, 3, 5
    srwi 4, 3, 31
    add 3, 3, 4
    addi 31, 3, 0x1
    cmpw 31, 0
    .4byte 0x41820318 # beq .L_804336F8
    cmpwi 31, 0x63
    .4byte 0x40810008 # ble .L_804333F0
    li 31, 0x63
L_804333F0:
    cmpwi 31, 0x0
    .4byte 0x40800008 # bge .L_804333FC
    li 31, 0x0
L_804333FC:
    cmpwi 31, 0xa
    .4byte 0x40800120 # bge .L_80433520
    lis 3, lbl_804B1640@ha
    lis 5, 0x5449
    slwi 0, 31, 2
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwzu 5, lbl_8048F438@l(4)
    lwz 12, 0x0(3)
    mr 27, 0
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 4, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 28, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x10(28)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(28)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820230 # bne .L_804336F8
    lwz 3, 0xc(30)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, lbl_8048F438@ha
    stb 0, 0xb0(3)
    addi 4, 4, lbl_8048F438@l
    lwz 5, 0x18(4)
    lwz 3, 0xc(30)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480001DC # b .L_804336F8
L_80433520:
    lis 4, 0x6666
    lis 3, lbl_804B1640@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwzu 5, lbl_8048F438@l(4)
    lwz 12, 0x0(3)
    mr 27, 0
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 4, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1640@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1640@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 31
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    lwz 12, 0x0(3)
    addi 28, 4, lbl_8048F438@l
    lwz 5, 0x10(28)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(28)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lis 4, lbl_8048F438@ha
    addi 29, 4, lbl_8048F438@l
    lwz 12, 0x0(3)
    lwz 5, 0x18(29)
    lwz 12, 0x3c(12)
    lwz 6, 0x1c(29)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(30)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_804336F8
    lwz 3, 0xc(30)
    lwz 5, 0x10(28)
    lwz 12, 0x0(3)
    lwz 6, 0x14(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x18(29)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(29)
    lwz 3, 0xc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_804336F8:
    stw 31, 0x98(30)
    li 0, 0x1
    stb 0, 0xac(30)
L_80433704:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80433718:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lhz 4, 0xa0(31)
    lhz 0, 0x31dc(3)
    cmplw 4, 0
    .4byte 0x4182005C # beq .L_8043379C
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lhz 0, 0x31dc(3)
    sth 0, 0xa0(31)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lhz 0, 0x31dc(3)
    sth 0, 0x9e(31)
    lhz 0, 0x9e(31)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820028 # beq .L_80433794
    li 0, 0x1
    stb 0, 0xa4(31)
    lhz 0, 0x9e(31)
    clrlwi 0, 0, 17
    sth 0, 0x9e(31)
    bl GetRoomConfigRecord
    lhz 4, 0x9e(31)
    bl fn_802D7870
    .4byte 0x4800000C # b .L_8043379C
L_80433794:
    li 0, 0x0
    stb 0, 0xa4(31)
L_8043379C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80432414

