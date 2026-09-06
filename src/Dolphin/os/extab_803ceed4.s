# fn_803CEED4 - helper (0x630)
.section extab, "a"
.balign 4
.global etb_8000F8FC
etb_8000F8FC:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000F8FC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F744
eti_8001F744:
    .4byte fn_803CEED4
    .4byte 0x00000630
    .4byte etb_8000F8FC
.size eti_8001F744, 12

.text
.balign 4
.global fn_803CEED4

fn_803CEED4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stfd 30, 0x10(1)
    psq_st 30, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 31, 3
    li 3, 0x0
    lwz 0, 0xb8(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803CEF14
    stw 3, 0xb4(31)
    .4byte 0x480000A8 # b .L_803CEFB8
L_803CEF14:
    lwz 0, 0xbc(31)
    li 3, 0x1
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803CEF2C
    stw 3, 0xb4(31)
    .4byte 0x48000090 # b .L_803CEFB8
L_803CEF2C:
    lwz 0, 0xc0(31)
    li 3, 0x2
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803CEF44
    stw 3, 0xb4(31)
    .4byte 0x48000078 # b .L_803CEFB8
L_803CEF44:
    lwz 0, 0xc4(31)
    li 3, 0x3
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803CEF5C
    stw 3, 0xb4(31)
    .4byte 0x48000060 # b .L_803CEFB8
L_803CEF5C:
    lwz 0, 0xc8(31)
    li 3, 0x4
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803CEF74
    stw 3, 0xb4(31)
    .4byte 0x48000048 # b .L_803CEFB8
L_803CEF74:
    lwz 0, 0xcc(31)
    li 3, 0x5
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803CEF8C
    stw 3, 0xb4(31)
    .4byte 0x48000030 # b .L_803CEFB8
L_803CEF8C:
    lwz 0, 0xd0(31)
    li 3, 0x6
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803CEFA4
    stw 3, 0xb4(31)
    .4byte 0x48000018 # b .L_803CEFB8
L_803CEFA4:
    lwz 0, 0xd4(31)
    li 3, 0x7
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_803CEFB8
    stw 3, 0xb4(31)
L_803CEFB8:
    lwz 0, 0xb4(31)
    cmpwi 0, 0x7
    .4byte 0x40800198 # bge .L_803CF158
    lwz 3, 0x4(31)
    lis 4, lbl_804769D0@ha
    addi 30, 4, lbl_804769D0@l
    lwz 12, 0x0(3)
    lwz 5, 0x20(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(30)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 4, lbl_804769D0@ha
    lwz 3, 0x4(31)
    addi 0, 4, lbl_804769D0@l
    lwz 4, 0xb4(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 4, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(31)
    fsubs 30, 0, 31
    lwz 5, 0x20(30)
    lwz 12, 0x0(3)
    lwz 6, 0x24(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, lbl_804769D0@ha
    lwz 3, 0x4(31)
    addi 0, 4, lbl_804769D0@l
    lwz 4, 0xb4(31)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 4, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6875
    lwz 3, 0x8(31)
    lis 4, 0x50
    fsubs 31, 0, 31
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x88(31)
    lfs 0, 0x94(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 30
    fadds 2, 0, 31
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x8c(31)
    lfs 0, 0x98(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 30
    fadds 2, 0, 31
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x90(31)
    lfs 0, 0x9c(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 30
    fadds 2, 0, 31
    mtctr 12
    bctrl
L_803CF158:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 3, 0x14(31)
    lwz 3, 0x4(3)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820224 # beq .L_803CF3AC
    lwz 3, 0xa8(31)
    lis 4, lbl_8050EC80@ha
    addi 0, 4, lbl_8050EC80@l
    mulli 4, 3, 0xc8
    add 4, 0, 4
    lwz 0, 0x28(4)
    clrlwi. 0, 0, 31
    .4byte 0x41820204 # beq .L_803CF3AC
    li 4, 0x0
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820134 # beq .L_803CF2EC
    lwz 3, 0xa8(31)
    li 4, 0x1
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_803CF2EC
    lwz 3, 0xa8(31)
    li 4, 0x2
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182010C # beq .L_803CF2EC
    lwz 3, 0xa8(31)
    li 4, 0x3
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_803CF2EC
    lwz 3, 0xa8(31)
    li 4, 0x4
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x418200E4 # beq .L_803CF2EC
    lwz 3, 0xa8(31)
    li 4, 0x5
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x418200D0 # beq .L_803CF2EC
    lwz 3, 0xa8(31)
    li 4, 0x6
    bl fn_803B8CAC
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_803CF2EC
    lwz 3, 0x8(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820140 # beq .L_803CF3A0
    lwz 3, 0x8(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480000B8 # b .L_803CF3A0
L_803CF2EC:
    lwz 3, 0x8(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_803CF3A0
    lwz 3, 0x8(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_803CF3A0:
    mr 3, 31
    bl fn_803BE3D8
    .4byte 0x480000B8 # b .L_803CF460
L_803CF3AC:
    lwz 3, 0x8(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_803CF460
    lwz 3, 0x8(31)
    lis 5, 0x6875
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803CF460:
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lbz 0, 0x116(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_803CF4D4
    lwz 3, 0x10(31)
    lbz 4, 0x1a3(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    li 4, 0x0
    .4byte 0xC0220510 # lfs f1, lbl_805434B0@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC0620514 # lfs f3, lbl_805434B4@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0820518 # lfs f4, lbl_805434B8@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804316EC
L_803CF4D4:
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    psq_l 30, 0x18(1), 0, 0
    lfd 30, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x34(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

