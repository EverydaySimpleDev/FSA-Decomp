# Fresh-gap-hunt batch 12 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80009CE4
etb_80009CE4:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80009CE4, 8

.global etb_80009CEC
etb_80009CEC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80009CEC, 8

.global etb_80009CF4
etb_80009CF4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80009CF4, 8

.section extabindex, "a"
.balign 4
.global eti_800176BC
eti_800176BC:
    .4byte fn_802075D8
    .4byte 0x00000258
    .4byte etb_80009CE4
.size eti_800176BC, 12

.global eti_800176C8
eti_800176C8:
    .4byte fn_80207830
    .4byte 0x00000230
    .4byte etb_80009CEC
.size eti_800176C8, 12

.global eti_800176D4
eti_800176D4:
    .4byte fn_80207A60
    .4byte 0x00000058
    .4byte etb_80009CF4
.size eti_800176D4, 12

.text
.balign 4
.global fn_802075D8
.global fn_80207830
.global fn_80207A60
.global fn_80207AB8
.global fn_80207ABC

fn_802075D8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    clrlwi 4, 4, 16
    li 0, 0x0
    mulli 28, 4, 0x24
    mr 30, 3
    cmpw 0, 4
    li 0, 0x1
    add 3, 30, 28
    li 31, 0x1
    stb 0, 0x2d0(3)
    .4byte 0x41820014 # beq .L_80207628
    lbz 0, 0x2d0(30)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80207628
    li 31, 0x0
L_80207628:
    li 0, 0x1
    cmpw 0, 4
    .4byte 0x41820014 # beq .L_80207644
    lbz 0, 0x2f4(30)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80207644
    li 31, 0x0
L_80207644:
    li 0, 0x2
    cmpw 0, 4
    .4byte 0x41820014 # beq .L_80207660
    lbz 0, 0x318(30)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80207660
    li 31, 0x0
L_80207660:
    li 0, 0x3
    cmpw 0, 4
    .4byte 0x41820014 # beq .L_8020767C
    lbz 0, 0x33c(30)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_8020767C
    li 31, 0x0
L_8020767C:
    lbz 0, 0x2a8(30)
    cmplwi 0, 0x0
    .4byte 0x41820180 # beq .L_80207804
    li 0, 0x1
    lbz 3, 0x2a9(30)
    slw 0, 0, 4
    and. 0, 3, 0
    .4byte 0x4182016C # beq .L_80207804
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    add 4, 30, 28
    lwz 4, 0x2b0(4)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802076DC
    lfs 0, 0xc(3)
    stfs 0, 0x8(1)
    lfs 0, 0x10(3)
    stfs 0, 0xc(1)
    lfs 0, 0x14(3)
    stfs 0, 0x10(1)
L_802076DC:
    lwz 3, 0x4(30)
    addi 4, 1, 0x8
    li 5, 0x1
    bl fn_801CB434
    add 4, 30, 28
    mr 29, 3
    lwz 27, 0x2b8(4)
    cmpwi 27, 0x0
    .4byte 0x41800108 # blt .L_80207804
    cmpwi 27, 0x4
    .4byte 0x40800100 # bge .L_80207804
    lwz 28, 0x4(30)
    mr 3, 27
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x408200EC # bne .L_80207804
    mr 3, 30
    addi 5, 1, 0x8
    lwz 12, 0x0(30)
    lwz 4, 0x4(30)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_80207804
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x418200B4 # beq .L_80207804
    mr 3, 27
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 27
    lfs 0, 0xc(1)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 3, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x8(1)
    fmuls 2, 31, 31
    .4byte 0xC022C92C # lfs f1, lbl_8053F8CC@sda21(r0)
    fsubs 4, 3, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fmadds 5, 4, 4, 2
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_802077DC
    .4byte 0xC002C930 # lfs f0, lbl_8053F8D0@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802077B4
    .4byte 0x48000024 # b .L_802077D4
L_802077B4:
    frsqrte 3, 5
    .4byte 0xC042C934 # lfs f2, lbl_8053F8D4@sda21(r0)
    .4byte 0xC002C938 # lfs f0, lbl_8053F8D8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 5, 2, 0
L_802077D4:
    fmuls 4, 4, 5
    fmuls 31, 31, 5
L_802077DC:
    .4byte 0xC002C93C # lfs f0, lbl_8053F8DC@sda21(r0)
    lfs 1, 0x44(29)
    fmuls 4, 4, 0
    fmuls 31, 31, 0
    stfs 1, 0x1c(1)
    stfs 4, 0x14(1)
    stfs 31, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    psq_st 0, 0x3c(29), 0, 0
    stfs 1, 0x44(29)
L_80207804:
    clrlwi. 0, 31, 24
    .4byte 0x4182000C # beq .L_80207814
    mr 3, 30
    bl fn_801F3668
L_80207814:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80207830:
    stwu 1, -0x30(1)
    mflr 0
    clrlwi 4, 4, 16
    stw 0, 0x34(1)
    mulli 0, 4, 0x24
    stmw 27, 0x1c(1)
    mr 28, 3
    add 3, 28, 0
    lbz 0, 0x2b4(3)
    cmplwi 0, 0x0
    .4byte 0x408201F4 # bne .L_80207A4C
    li 0, 0x1
    li 10, 0x0
    stb 0, 0x2b4(3)
    cmpw 10, 4
    lfs 2, 0x0(7)
    li 9, 0x1
    stw 5, 0x2b8(3)
    li 5, 0x1
    lfs 1, 0x4(7)
    stw 6, 0x2bc(3)
    lfs 0, 0x8(7)
    stfs 2, 0x2c0(3)
    stfs 1, 0x2c4(3)
    stfs 0, 0x2c8(3)
    stw 8, 0x2cc(3)
    .4byte 0x4182001C # beq .L_802078B4
    lbz 0, 0x2b4(28)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802078B0
    li 9, 0x0
    .4byte 0x48000008 # b .L_802078B4
L_802078B0:
    li 5, 0x0
L_802078B4:
    li 10, 0x1
    cmpw 10, 4
    .4byte 0x4182001C # beq .L_802078D8
    lbz 0, 0x2d8(28)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802078D4
    li 9, 0x0
    .4byte 0x48000008 # b .L_802078D8
L_802078D4:
    li 5, 0x0
L_802078D8:
    li 10, 0x2
    cmpw 10, 4
    .4byte 0x4182001C # beq .L_802078FC
    lbz 0, 0x2fc(28)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802078F8
    li 9, 0x0
    .4byte 0x48000008 # b .L_802078FC
L_802078F8:
    li 5, 0x0
L_802078FC:
    li 10, 0x3
    cmpw 10, 4
    .4byte 0x4182001C # beq .L_80207920
    lbz 0, 0x320(28)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8020791C
    li 9, 0x0
    .4byte 0x48000008 # b .L_80207920
L_8020791C:
    li 5, 0x0
L_80207920:
    clrlwi. 0, 9, 24
    .4byte 0x41820020 # beq .L_80207944
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x3802C928 # li r0, lbl_8053F8C8@sda21
    add 3, 0, 3
    lbz 0, -0x1(3)
    stb 0, 0x2aa(28)
    .4byte 0x4800010C # b .L_80207A4C
L_80207944:
    clrlwi. 0, 5, 24
    .4byte 0x41820104 # beq .L_80207A4C
    lbz 0, 0x2aa(28)
    cmplwi 0, 0x0
    .4byte 0x418200F8 # beq .L_80207A4C
    li 29, 0x1
    stb 29, 0x2a8(28)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x4
    .4byte 0x4182001C # beq .L_80207988
    .4byte 0x4080001C # bge .L_8020798C
    cmpwi 3, 0x3
    .4byte 0x40800008 # bge .L_80207980
    .4byte 0x48000010 # b .L_8020798C
L_80207980:
    li 29, 0x2
    .4byte 0x48000008 # b .L_8020798C
L_80207988:
    li 29, 0x3
L_8020798C:
    li 31, 0x0
    li 4, 0x1
    li 3, 0x2
    li 0, 0x3
    stw 31, 0x8(1)
    addi 27, 1, 0x8
    li 30, 0x4
    stw 4, 0xc(1)
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    .4byte 0x4800007C # b .L_80207A30
L_802079B8:
    mr 3, 30
    bl fn_801CD664
    slwi 0, 3, 2
    lbz 3, 0x2a9(28)
    lwzx 4, 27, 0
    li 0, 0x1
    cmpwi 30, 0x0
    mr 6, 27
    slw 0, 0, 4
    li 5, 0x0
    or 0, 3, 0
    stb 0, 0x2a9(28)
    .4byte 0x40810044 # ble .L_80207A2C
    mtctr 30
    .4byte 0x40810030 # ble .L_80207A20
L_802079F4:
    clrlwi. 0, 5, 24
    .4byte 0x40820018 # bne .L_80207A10
    lwz 0, 0x0(6)
    cmpw 4, 0
    .4byte 0x40820014 # bne .L_80207A18
    li 5, 0x1
    .4byte 0x4800000C # b .L_80207A18
L_80207A10:
    lwz 0, 0x0(6)
    stw 0, -0x4(6)
L_80207A18:
    addi 6, 6, 0x4
    .4byte 0x4200FFD8 # bdnz .L_802079F4
L_80207A20:
    clrlwi. 0, 5, 24
    .4byte 0x41820008 # beq .L_80207A2C
    subi 30, 30, 0x1
L_80207A2C:
    addi 31, 31, 0x1
L_80207A30:
    cmpw 31, 29
    .4byte 0x4180FF84 # blt .L_802079B8
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
L_80207A4C:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80207A60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 4, 0x2aa(3)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_80207AA8
    subi 0, 4, 0x1
    stb 0, 0x2aa(3)
    lbz 0, 0x2aa(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80207AA8
    lbz 0, 0x2a8(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80207AA8
    lwz 12, 0x0(3)
    lwz 12, 0xa4(12)
    mtctr 12
    bctrl
L_80207AA8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80207AB8:
    blr

fn_80207ABC:
    blr

