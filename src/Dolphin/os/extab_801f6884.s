.section extab, "a"
.balign 4
.global etb_80008F24
etb_80008F24:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008F24, 8

.global etb_80008F2C
etb_80008F2C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008F2C, 8

.global etb_80008F34
etb_80008F34:
    .4byte 0x52CA0000
    .4byte 0x00000000
.size etb_80008F34, 8

.section extabindex, "a"
.balign 4
.global eti_80016690
eti_80016690:
    .4byte fn_801F6884
    .4byte 0x0000005C
    .4byte etb_80008F24
.size eti_80016690, 12

.global eti_8001669C
eti_8001669C:
    .4byte fn_801F68E0
    .4byte 0x0000016C
    .4byte etb_80008F2C
.size eti_8001669C, 12

.global eti_800166A8
eti_800166A8:
    .4byte fn_801F6A4C
    .4byte 0x00000700
    .4byte etb_80008F34
.size eti_800166A8, 12

.text
.balign 4
.global fn_801F6884
.global fn_801F68E0
.global fn_801F6A4C

fn_801F6884:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
L_801F68A0:
    mr 3, 31
    li 4, 0x0
    bl fn_80230224
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFEC # blt .L_801F68A0
    li 0, 0x0
    stb 0, 0x3041(30)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F68E0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(4)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801F6924
    li 0, 0x1
    .4byte 0xC002C868 # lfs f0, lbl_8053F808@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801F6924:
    li 30, 0x0
    li 29, 0x0
    li 28, 0x0
L_801F6930:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801F695C
    mr 3, 28
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801F695C
    mr 3, 28
    bl fn_80230C6C
    addi 30, 30, 0x1
L_801F695C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFCC # blt .L_801F6930
    cmpwi 30, 0x0
    .4byte 0x4182000C # beq .L_801F6978
    li 3, 0x0
    .4byte 0x480000B8 # b .L_801F6A2C
L_801F6978:
    li 28, 0x0
    li 30, 0x1
L_801F6980:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801F699C
    slw 0, 30, 28
    or 0, 29, 0
    clrlwi 29, 0, 24
L_801F699C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFDC # blt .L_801F6980
    li 28, 0x0
L_801F69AC:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_801F69FC
    mr 3, 28
    bl fn_802300EC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_801F69FC
    mr 3, 28
    bl fn_8023E854
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_801F69FC
    mr 3, 28
    bl fn_80230AD4
    li 0, 0x1
    lbz 3, 0x3041(31)
    slw 0, 0, 28
    or 0, 3, 0
    stb 0, 0x3041(31)
L_801F69FC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA8 # blt .L_801F69AC
    lbz 3, 0x3041(31)
    clrlwi 0, 29, 24
    cmplw 3, 0
    .4byte 0x40820014 # bne .L_801F6A28
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    li 3, 0x1
    .4byte 0x48000008 # b .L_801F6A2C
L_801F6A28:
    li 3, 0x0
L_801F6A2C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801F6A4C:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stfd 29, 0x100(1)
    psq_st 29, 0x108(1), 0, 0
    stfd 28, 0xf0(1)
    psq_st 28, 0xf8(1), 0, 0
    stfd 27, 0xe0(1)
    psq_st 27, 0xe8(1), 0, 0
    stfd 26, 0xd0(1)
    psq_st 26, 0xd8(1), 0, 0
    stfd 25, 0xc0(1)
    psq_st 25, 0xc8(1), 0, 0
    stfd 24, 0xb0(1)
    psq_st 24, 0xb8(1), 0, 0
    stfd 23, 0xa0(1)
    psq_st 23, 0xa8(1), 0, 0
    stfd 22, 0x90(1)
    psq_st 22, 0x98(1), 0, 0
    stfd 21, 0x80(1)
    psq_st 21, 0x88(1), 0, 0
    stmw 22, 0x58(1)
    mr 22, 3
    li 24, 0x0
    mr 26, 22
    .4byte 0x48000614 # b .L_801F70D4
L_801F6AC4:
    lwz 6, 0x201c(26)
    cmpwi 6, -0x1
    .4byte 0x41820614 # beq .L_801F70E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    cmpwi 6, 0x0
    li 28, 0x0
    lwz 3, 0x4(3)
    lwz 4, 0x8(3)
    .4byte 0x4180009C # blt .L_801F6B80
    lwz 0, 0x2014(4)
    cmpwi 0, 0x0
    .4byte 0x41800038 # blt .L_801F6B28
    slwi 3, 0, 2
    addi 0, 3, 0x8
    lwzx 3, 4, 0
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801F6B28
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801F6B28
    lwz 0, 0x198(3)
    cmpw 6, 0
    .4byte 0x4082000C # bne .L_801F6B28
    mr 28, 3
    .4byte 0x4800005C # b .L_801F6B80
L_801F6B28:
    lwz 0, 0x1008(4)
    mr 5, 4
    li 3, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810044 # ble .L_801F6B80
L_801F6B40:
    lwz 7, 0x8(5)
    cmplwi 7, 0x0
    .4byte 0x4182002C # beq .L_801F6B74
    lbz 0, 0x11c(7)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_801F6B74
    lwz 0, 0x198(7)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_801F6B74
    slwi 3, 3, 2
    addi 0, 3, 0x8
    lwzx 28, 4, 0
    .4byte 0x48000010 # b .L_801F6B80
L_801F6B74:
    addi 5, 5, 0x4
    addi 3, 3, 0x1
    .4byte 0x4200FFC4 # bdnz .L_801F6B40
L_801F6B80:
    cmplwi 28, 0x0
    .4byte 0x41820548 # beq .L_801F70CC
    lbz 0, 0x11c(28)
    cmplwi 0, 0x0
    .4byte 0x4182053C # beq .L_801F70CC
    lwz 6, 0x60(28)
    li 0, -0x1
    lwz 5, 0x64(28)
    li 23, 0x0
    lwz 4, 0x68(28)
    lwz 3, 0x6c(28)
    stw 6, 0x18(1)
    lfs 4, 0xc(28)
    stw 5, 0x1c(1)
    lfs 5, 0x10(28)
    stw 4, 0x20(1)
    lfs 0, 0x18(1)
    stw 3, 0x24(1)
    lfs 2, 0x1c(1)
    fadds 3, 0, 4
    lfs 1, 0x20(1)
    lfs 0, 0x24(1)
    fadds 2, 2, 5
    fadds 1, 1, 4
    stfs 3, 0x18(1)
    fadds 0, 0, 5
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
    stw 0, 0x9c(28)
    .4byte 0x480004C8 # b .L_801F70C0
L_801F6BFC:
    slwi 4, 23, 2
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    addi 0, 4, 0x201c
    li 27, 0x0
    lwzx 4, 22, 0
    lwz 3, 0x4(3)
    cmpwi 4, 0x0
    lwz 5, 0x8(3)
    .4byte 0x4180009C # blt .L_801F6CB8
    lwz 0, 0x2014(5)
    cmpwi 0, 0x0
    .4byte 0x41800038 # blt .L_801F6C60
    slwi 3, 0, 2
    addi 0, 3, 0x8
    lwzx 3, 5, 0
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801F6C60
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801F6C60
    lwz 0, 0x198(3)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_801F6C60
    mr 27, 3
    .4byte 0x4800005C # b .L_801F6CB8
L_801F6C60:
    lwz 0, 0x1008(5)
    mr 6, 5
    li 3, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810044 # ble .L_801F6CB8
L_801F6C78:
    lwz 7, 0x8(6)
    cmplwi 7, 0x0
    .4byte 0x4182002C # beq .L_801F6CAC
    lbz 0, 0x11c(7)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_801F6CAC
    lwz 0, 0x198(7)
    cmpw 4, 0
    .4byte 0x40820014 # bne .L_801F6CAC
    slwi 3, 3, 2
    addi 0, 3, 0x8
    lwzx 27, 5, 0
    .4byte 0x48000010 # b .L_801F6CB8
L_801F6CAC:
    addi 6, 6, 0x4
    addi 3, 3, 0x1
    .4byte 0x4200FFC4 # bdnz .L_801F6C78
L_801F6CB8:
    cmplwi 27, 0x0
    .4byte 0x41820400 # beq .L_801F70BC
    lbz 0, 0x11c(27)
    cmplwi 0, 0x0
    .4byte 0x418203F4 # beq .L_801F70BC
    lwz 3, 0x4(28)
    lwz 0, 0x4(27)
    cmpw 3, 0
    .4byte 0x408203E4 # bne .L_801F70BC
    lwz 3, 0x198(28)
    lwz 0, 0x198(27)
    cmpw 3, 0
    .4byte 0x418203D4 # beq .L_801F70BC
    lwz 3, 0xbc(28)
    lwz 0, 0xbc(27)
    cmpw 3, 0
    .4byte 0x418103C4 # bgt .L_801F70BC
    lwz 0, 0x60(27)
    lwz 5, 0x64(27)
    lwz 4, 0x68(27)
    lwz 3, 0x6c(27)
    stw 0, 0x28(1)
    lwz 0, 0xb8(28)
    stw 5, 0x2c(1)
    clrlwi 0, 0, 24
    lfs 3, 0xc(27)
    stw 4, 0x30(1)
    cmplwi 0, 0x2
    lfs 1, 0x28(1)
    stw 3, 0x34(1)
    lfs 0, 0x30(1)
    fadds 2, 1, 3
    lfs 4, 0x10(27)
    lfs 1, 0x2c(1)
    fadds 25, 0, 3
    lfs 0, 0x34(1)
    fadds 26, 1, 4
    stfs 2, 0x28(1)
    fadds 24, 0, 4
    stfs 25, 0x30(1)
    stfs 26, 0x2c(1)
    stfs 24, 0x34(1)
    .4byte 0x40820098 # bne .L_801F6DF8
    lfs 4, 0x18(1)
    lfs 0, 0x1c(1)
    fcmpo cr0, 4, 2
    lfs 1, 0x20(1)
    lfs 3, 0x24(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F6D84
    fmr 4, 2
L_801F6D84:
    lfs 2, 0x2c(1)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F6D98
    fmr 0, 2
L_801F6D98:
    lfs 2, 0x30(1)
    fcmpo cr0, 1, 2
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F6DAC
    fmr 1, 2
L_801F6DAC:
    lfs 2, 0x34(1)
    fcmpo cr0, 3, 2
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F6DC0
    fmr 3, 2
L_801F6DC0:
    fcmpo cr0, 1, 4
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_801F6DE0
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F6DE0
    li 0, 0x1
L_801F6DE0:
    clrlwi. 0, 0, 24
    .4byte 0x418202D8 # beq .L_801F70BC
    lwz 0, 0x198(27)
    li 23, 0x400
    stw 0, 0x9c(28)
    .4byte 0x480002C8 # b .L_801F70BC
L_801F6DF8:
    frsp 23, 2
    lis 5, lbl_80534C00@ha
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC382C86C # lfs f28, lbl_8053F80C@sda21(r0)
    addi 29, 5, lbl_80534C00@l
    .4byte 0xC3A2C874 # lfs f29, lbl_8053F814@sda21(r0)
    addi 30, 4, 0x660d
    .4byte 0xC3C2C878 # lfs f30, lbl_8053F818@sda21(r0)
    addi 31, 3, lbl_8052EBC0@l
    .4byte 0xC3E2C870 # lfs f31, lbl_8053F810@sda21(r0)
    li 25, 0x0
    .4byte 0x48000214 # b .L_801F703C
L_801F6E2C:
    lwz 0, 0x198(27)
    mr 3, 29
    stw 0, 0x9c(28)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    psq_st 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    lfs 1, 0xc(28)
    lfs 0, 0xc(27)
    lfs 6, 0x60(28)
    fsubs 22, 1, 0
    lfs 5, 0x64(28)
    lfs 4, 0x68(28)
    lfs 3, 0x6c(28)
    lfs 2, 0x10(28)
    fmr 1, 22
    lfs 0, 0x10(27)
    stfs 6, 0x18(1)
    fsubs 21, 2, 0
    stfs 5, 0x1c(1)
    fmr 2, 21
    stfs 4, 0x20(1)
    stfs 3, 0x24(1)
    bl fn_80093340
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    fmuls 0, 1, 28
    lwz 0, 0xb4(5)
    fctiwz 0, 0
    mullw 3, 0, 30
    stfd 0, 0x48(1)
    lwz 4, 0x4c(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 3, 0x38(1)
    srwi 0, 0, 9
    lfs 1, 0x3c(1)
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 30
    fnmsubs 0, 29, 0, 31
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    add 0, 4, 0
    rlwinm 0, 0, 30, 18, 28
    add 3, 31, 0
    lfs 2, 0x0(3)
    lfs 0, 0x4(3)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x38(1)
    stfs 0, 0x3c(1)
    lwz 3, 0x1a0(27)
    subis 0, 3, 0x424f
    cmplwi 0, 0x594f
    .4byte 0x408200A8 # bne .L_801F6FBC
    fmr 1, 22
    lis 3, lbl_80534C00@ha
    fmr 2, 21
    lfs 27, 0x44(28)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002C86C # lfs f0, lbl_8053F80C@sda21(r0)
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80534C00@ha
    fmr 2, 21
    fmuls 0, 1, 0
    addi 0, 4, lbl_8052EBC0@l
    fmr 1, 22
    addi 3, 3, lbl_80534C00@l
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 4, 0x54(1)
    rlwinm 4, 4, 30, 18, 28
    add 4, 0, 4
    lfs 21, 0x4(4)
    bl fn_80093340
    .4byte 0xC002C86C # lfs f0, lbl_8053F80C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC042C87C # lfs f2, lbl_8053F81C@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    fmuls 1, 1, 0
    li 0, 0x1
    fmuls 0, 2, 21
    stfs 27, 0x14(1)
    fctiwz 1, 1
    stfs 0, 0x10(1)
    stfd 1, 0x48(1)
    lwz 4, 0x4c(1)
    rlwinm 4, 4, 30, 18, 28
    lfsx 0, 3, 4
    fmuls 0, 2, 0
    stfs 0, 0xc(1)
    psq_l 0, 0xc(1), 0, 0
    psq_st 0, 0x3c(28), 0, 0
    stfs 27, 0x44(28)
    sth 0, 0x94(27)
L_801F6FBC:
    lwz 4, 0x4(28)
    mr 3, 28
    addi 5, 1, 0x38
    addi 6, 28, 0xc
    addi 7, 28, 0x80
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_801F7038
    psq_l 1, 0x38(1), 0, 0
    addi 25, 25, 0x1
    lfs 0, 0x40(1)
    lfs 3, 0x18(1)
    psq_st 1, 0xc(28), 0, 0
    lfs 2, 0x1c(1)
    stfs 0, 0x14(28)
    lfs 1, 0x20(1)
    lfs 4, 0xc(28)
    lfs 5, 0x10(28)
    lfs 0, 0x24(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
    .4byte 0x48000008 # b .L_801F703C
L_801F7038:
    li 25, 0x64
L_801F703C:
    lfs 3, 0x18(1)
    lfs 0, 0x1c(1)
    fcmpo cr0, 3, 23
    lfs 1, 0x20(1)
    lfs 2, 0x24(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F705C
    fmr 3, 23
L_801F705C:
    fcmpo cr0, 0, 26
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F706C
    fmr 0, 26
L_801F706C:
    fcmpo cr0, 1, 25
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F707C
    fmr 1, 25
L_801F707C:
    fcmpo cr0, 2, 24
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F708C
    fmr 2, 24
L_801F708C:
    fcmpo cr0, 1, 3
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_801F70AC
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F70AC
    li 0, 0x1
L_801F70AC:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_801F70BC
    cmpwi 25, 0x8
    .4byte 0x4180FD74 # blt .L_801F6E2C
L_801F70BC:
    addi 23, 23, 0x1
L_801F70C0:
    lwz 0, 0x301c(22)
    cmpw 23, 0
    .4byte 0x4180FB34 # blt .L_801F6BFC
L_801F70CC:
    addi 26, 26, 0x4
    addi 24, 24, 0x1
L_801F70D4:
    lwz 0, 0x301c(22)
    cmpw 24, 0
    .4byte 0x4081F9E8 # ble .L_801F6AC4
L_801F70E0:
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    psq_l 29, 0x108(1), 0, 0
    lfd 29, 0x100(1)
    psq_l 28, 0xf8(1), 0, 0
    lfd 28, 0xf0(1)
    psq_l 27, 0xe8(1), 0, 0
    lfd 27, 0xe0(1)
    psq_l 26, 0xd8(1), 0, 0
    lfd 26, 0xd0(1)
    psq_l 25, 0xc8(1), 0, 0
    lfd 25, 0xc0(1)
    psq_l 24, 0xb8(1), 0, 0
    lfd 24, 0xb0(1)
    psq_l 23, 0xa8(1), 0, 0
    lfd 23, 0xa0(1)
    psq_l 22, 0x98(1), 0, 0
    lfd 22, 0x90(1)
    psq_l 21, 0x88(1), 0, 0
    lfd 21, 0x80(1)
    lmw 22, 0x58(1)
    lwz 0, 0x134(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

