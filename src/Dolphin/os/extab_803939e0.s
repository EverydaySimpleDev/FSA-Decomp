# fn_803939E0 - actor@lbl_804AF490: vtable-slot function (0x214)
# Player-validity checks (fn_8023E724 x3), calls fn_80393514 and
# fn_8023BC38/fn_80230188.
.section extab, "a"
.balign 4
.global etb_8000EF68
etb_8000EF68:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000EF68, 8

.section extabindex, "a"
.balign 4
.global eti_8001EDC0
eti_8001EDC0:
    .4byte fn_803939E0
    .4byte 0x00000214
    .4byte etb_8000EF68
.size eti_8001EDC0, 12

.text
.balign 4
.global fn_803939E0

fn_803939E0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x234(3)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_80393A18
    cmpwi 3, 0x4
    .4byte 0x40820010 # bne .L_80393A24
L_80393A18:
    mr 3, 31
    bl fn_80393514
    .4byte 0x480001B0 # b .L_80393BD0
L_80393A24:
    cmpwi 3, 0x1
    .4byte 0x408200A0 # bne .L_80393AC8
    lwz 0, 0x230(31)
    cmpwi 0, 0x50
    .4byte 0x41800074 # blt .L_80393AA8
    subfic 0, 0, 0x5a
    lis 3, 0x51ec
    mullw 4, 0, 0
    lis 0, 0x4330
    subi 3, 3, 0x7ae1
    stw 0, 0x8(1)
    .4byte 0xC8220200 # lfd f1, lbl_805431A0@sda21(r0)
    .4byte 0xC0420210 # lfs f2, lbl_805431B0@sda21(r0)
    mulhw 0, 3, 4
    .4byte 0xC062020C # lfs f3, lbl_805431AC@sda21(r0)
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    fmuls 0, 3, 0
    stfs 0, 0x40(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_80393AA8:
    lwz 3, 0x230(31)
    subi 0, 3, 0x1
    cmpwi 3, 0x0
    stw 0, 0x230(31)
    .4byte 0x40820118 # bne .L_80393BD0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800010C # b .L_80393BD0
L_80393AC8:
    cmpwi 3, 0x2
    .4byte 0x40820088 # bne .L_80393B54
    lis 3, 0x8889
    lwz 5, 0x230(31)
    subi 0, 3, 0x7777
    .4byte 0xC0220208 # lfs f1, lbl_805431A8@sda21(r0)
    mulhw 0, 0, 5
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    add 0, 0, 5
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 0, 0, 4
    mulli 0, 0, 0x3c
    subf 0, 0, 5
    clrlslwi 0, 0, 26, 8
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x3c(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 3, 0x230(31)
    subi 0, 3, 0x1
    cmpwi 3, 0x0
    stw 0, 0x230(31)
    .4byte 0x4082008C # bne .L_80393BD0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000080 # b .L_80393BD0
L_80393B54:
    cmpwi 3, 0x3
    .4byte 0x41820018 # beq .L_80393B70
    subi 0, 3, 0x5
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80393B70
    cmpwi 3, 0x7
    .4byte 0x40820064 # bne .L_80393BD0
L_80393B70:
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 30, 0x8(3)
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC0020224 # lfs f0, lbl_805431C4@sda21(r0)
    lwz 3, 0x238(31)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(31)
    stfs 31, 0x10(31)
    stfs 30, 0x14(31)
    lwz 3, 0x238(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80393BD0
    lwz 3, 0x238(31)
    bl fn_8023BC38
    cmpwi 3, 0x0
    .4byte 0x4181000C # bgt .L_80393BD0
    li 0, 0x0
    stb 0, 0x11c(31)
L_80393BD0:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 0, 0x44(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

