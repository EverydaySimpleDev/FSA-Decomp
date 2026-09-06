# fn_803CE9EC - helper (0x4E8) - uses __ptmf_scall to dispatch through the PTMF table
.section extab, "a"
.balign 4
.global etb_8000F8F4
etb_8000F8F4:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F8F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F738
eti_8001F738:
    .4byte fn_803CE9EC
    .4byte 0x000004E8
    .4byte etb_8000F8F4
.size eti_8001F738, 12

.text
.balign 4
.global fn_803CE9EC

fn_803CE9EC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    li 0, 0x3
    stw 0, 0x1a8(3)
    lbz 0, 0x116(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803CEA2C
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    lbz 4, 0x114(30)
    bl fn_80431174
L_803CEA2C:
    lis 3, lbl_8051C1A0@ha
    addi 31, 3, lbl_8051C1A0@l
    lbz 0, 0x1ff5(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803CEA48
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_803CEA80
L_803CEA48:
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_803CEA80
    lbz 0, 0x113(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803CEA80
    lbz 0, 0x117(30)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803CEA80
    lbz 3, 0x110(30)
    li 0, 0x1
    stb 3, 0x112(30)
    stb 0, 0x110(30)
L_803CEA80:
    lbz 0, 0x116(30)
    cmplwi 0, 0x2
    .4byte 0x40800024 # bge .L_803CEAAC
    lbz 4, 0x110(30)
    lis 3, lbl_804AFD70@ha
    addi 0, 3, lbl_804AFD70@l
    .4byte 0x806D91F0 # lwz r3, lbl_8053ADB0@sda21(r0)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
L_803CEAAC:
    lbz 3, 0x110(30)
    lbz 0, 0x111(30)
    cmplw 3, 0
    .4byte 0x41820040 # beq .L_803CEAF8
    stb 3, 0x111(30)
    lbz 0, 0x110(30)
    cmplwi 0, 0x25
    .4byte 0x41810030 # bgt .L_803CEAF8
    lis 3, jumptable_804AFFA0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AFFA0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    stb 0, 0x1a5(30)
    .4byte 0x4800000C # b .L_803CEAF8
    li 0, 0x1
    stb 0, 0x1a5(30)
L_803CEAF8:
    lbz 3, 0x1a5(30)
    lbz 0, 0x1a6(30)
    cmplw 3, 0
    .4byte 0x41820010 # beq .L_803CEB14
    li 0, 0x2
    stb 0, 0x1a4(30)
    .4byte 0x48000018 # b .L_803CEB28
L_803CEB14:
    lbz 0, 0x1a4(30)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_803CEB28
    li 0, 0x1
    stb 0, 0x1a4(30)
L_803CEB28:
    lbz 0, 0x1a4(30)
    cmpwi 0, 0x2
    .4byte 0x41820110 # beq .L_803CEC40
    .4byte 0x40800238 # bge .L_803CED6C
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_803CEB44
    .4byte 0x4800022C # b .L_803CED6C
L_803CEB44:
    lis 4, lbl_8050DB0C@ha
    lha 3, 0xde(30)
    addi 4, 4, lbl_8050DB0C@l
    lha 4, 0x160(4)
    addi 0, 3, 0x1
    sth 0, 0xde(30)
    lha 0, 0xde(30)
    cmpw 0, 4
    .4byte 0x408000A0 # bge .L_803CEC04
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8A204C8 # lfd f5, lbl_80543468@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC04204C0 # lfs f2, lbl_80543460@sda21(r0)
    mullw 0, 4, 4
    xoris 3, 3, 0x8000
    stw 3, 0xc(1)
    .4byte 0xC00204BC # lfs f0, lbl_8054345C@sda21(r0)
    lfd 1, 0x8(1)
    lwz 3, 0x58(30)
    xoris 0, 0, 0x8000
    fsubs 4, 1, 5
    stw 0, 0x14(1)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfd 3, 0x10(1)
    fsubs 3, 3, 5
    fdivs 31, 4, 3
    fmadds 2, 2, 31, 0
    bl fn_80402E08
    lwz 3, 0x58(30)
    lis 0, 0x4330
    stw 0, 0x18(1)
    lbz 0, 0x28(3)
    lwz 3, 0x4(3)
    stw 0, 0x1c(1)
    lwz 12, 0x0(3)
    .4byte 0xC82204D0 # lfd f1, lbl_80543470@sda21(r0)
    lfd 0, 0x18(1)
    lwz 12, 0x24(12)
    fsubs 0, 0, 1
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    .4byte 0x4800016C # b .L_803CED6C
L_803CEC04:
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    sth 4, 0xde(30)
    fmr 2, 1
    lwz 3, 0x58(30)
    bl fn_80402E08
    lwz 4, 0x58(30)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x1a4(30)
    .4byte 0x48000130 # b .L_803CED6C
L_803CEC40:
    lis 4, lbl_8050DB0C@ha
    lha 3, 0xde(30)
    addi 4, 4, lbl_8050DB0C@l
    lha 4, 0x160(4)
    subi 0, 3, 0x1
    sth 0, 0xde(30)
    lha 3, 0xde(30)
    extsh. 0, 3
    .4byte 0x408100A0 # ble .L_803CED00
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x20(1)
    .4byte 0xC8A204C8 # lfd f5, lbl_80543468@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC04204C0 # lfs f2, lbl_80543460@sda21(r0)
    mullw 0, 4, 4
    xoris 3, 3, 0x8000
    stw 3, 0x24(1)
    .4byte 0xC00204BC # lfs f0, lbl_8054345C@sda21(r0)
    lfd 1, 0x20(1)
    lwz 3, 0x58(30)
    xoris 0, 0, 0x8000
    fsubs 4, 1, 5
    stw 0, 0x1c(1)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    lfd 3, 0x18(1)
    fsubs 3, 3, 5
    fdivs 31, 4, 3
    fmadds 2, 2, 31, 0
    bl fn_80402E08
    lwz 3, 0x58(30)
    lis 0, 0x4330
    stw 0, 0x10(1)
    lbz 0, 0x28(3)
    lwz 3, 0x4(3)
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    .4byte 0xC82204D0 # lfd f1, lbl_80543470@sda21(r0)
    lfd 0, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 0, 0, 1
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    .4byte 0x48000070 # b .L_803CED6C
L_803CED00:
    li 0, 0x0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    sth 0, 0xde(30)
    .4byte 0xC04204BC # lfs f2, lbl_8054345C@sda21(r0)
    lwz 3, 0x58(30)
    bl fn_80402E08
    lwz 3, 0x58(30)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lbz 0, 0x1a5(30)
    stb 0, 0x1a6(30)
    lbz 0, 0x1a5(30)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803CED58
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    li 4, 0x1
    bl fn_80440BF4
    .4byte 0x48000010 # b .L_803CED64
L_803CED58:
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    li 4, 0x0
    bl fn_80440BF4
L_803CED64:
    li 0, 0x1
    stb 0, 0x1a4(30)
L_803CED6C:
    lwz 0, 0x7c(30)
    lwz 3, 0x80(30)
    cmplw 0, 3
    .4byte 0x418200A0 # beq .L_803CEE18
    lbz 0, 0x116(30)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_803CEE08
    stw 3, 0x7c(30)
    lwz 4, 0x7c(30)
    cmplwi 4, 0x0
    .4byte 0x41820084 # beq .L_803CEE18
    cmplwi 4, 0x50
    .4byte 0x4182002C # beq .L_803CEDC8
    cmplwi 4, 0x53
    .4byte 0x41820024 # beq .L_803CEDC8
    cmplwi 4, 0x57
    .4byte 0x4182001C # beq .L_803CEDC8
    cmplwi 4, 0x5c
    .4byte 0x41820014 # beq .L_803CEDC8
    cmplwi 4, 0x84
    .4byte 0x4182000C # beq .L_803CEDC8
    cmplwi 4, 0x256
    .4byte 0x40820020 # bne .L_803CEDE4
L_803CEDC8:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    addi 6, 30, 0x114
    li 5, 0x0
    bl fn_80431A9C
    li 0, 0x0
    stb 0, 0x1a3(30)
    .4byte 0x4800001C # b .L_803CEDFC
L_803CEDE4:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    li 5, 0x0
    li 6, 0x0
    bl fn_80431A9C
    li 0, 0x0
    stb 0, 0x1a3(30)
L_803CEDFC:
    li 0, 0x2
    stb 0, 0x116(30)
    .4byte 0x48000014 # b .L_803CEE18
L_803CEE08:
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803CEE18
    li 0, 0x3
    stb 0, 0x116(30)
L_803CEE18:
    lbz 0, 0x116(30)
    cmplwi 0, 0x2
    .4byte 0x40820048 # bne .L_803CEE68
    lbz 3, 0x1a3(30)
    cmplwi 3, 0x48
    .4byte 0x40810010 # ble .L_803CEE3C
    li 0, 0x50
    stb 0, 0x1a3(30)
    .4byte 0x4800000C # b .L_803CEE44
L_803CEE3C:
    addi 0, 3, 0x8
    stb 0, 0x1a3(30)
L_803CEE44:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804317AC
    cmpwi 3, 0x0
    .4byte 0x4182005C # beq .L_803CEEAC
    li 3, 0x50
    li 0, 0x1
    stb 3, 0x1a3(30)
    stb 0, 0x116(30)
    .4byte 0x48000048 # b .L_803CEEAC
L_803CEE68:
    cmplwi 0, 0x3
    .4byte 0x40820040 # bne .L_803CEEAC
    lbz 3, 0x1a3(30)
    cmplwi 3, 0x8
    .4byte 0x40800010 # bge .L_803CEE88
    li 0, 0x0
    stb 0, 0x1a3(30)
    .4byte 0x4800000C # b .L_803CEE90
L_803CEE88:
    subi 0, 3, 0x8
    stb 0, 0x1a3(30)
L_803CEE90:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_803CEEAC
    li 0, 0x0
    stb 0, 0x1a3(30)
    stb 0, 0x116(30)
L_803CEEAC:
    li 0, 0x2
    stb 0, 0x1ff5(31)
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

