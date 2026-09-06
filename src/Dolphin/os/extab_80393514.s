# fn_80393514 - actor@lbl_804AF490: helper function (0x438)
# Player-validity heavy (fn_8023E724 x9), spatial-registry scan
# (SpatialRegistry_GetBase x6), reward-spawn dispatcher (fn_801F8544 x3, confirmed
# specialized reward-spawn from earlier project work), effect spawn
# (fn_8013CC50 x2).
.section extab, "a"
.balign 4
.global etb_8000EF58
etb_8000EF58:
    .4byte 0x504A0000
    .4byte 0x00000000
.size etb_8000EF58, 8

.section extabindex, "a"
.balign 4
.global eti_8001EDA8
eti_8001EDA8:
    .4byte fn_80393514
    .4byte 0x00000438
    .4byte etb_8000EF58
.size eti_8001EDA8, 12

.text
.balign 4
.global fn_80393514

fn_80393514:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stmw 22, 0x78(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x5a
    .4byte 0x408200EC # bne .L_80393624
    lis 4, lbl_80475738@ha
    lwz 3, 0x4(31)
    addi 22, 4, lbl_80475738@l
    addi 4, 31, 0xc
    lwz 0, 0x0(22)
    li 5, 0xcb
    lwz 23, 0x4(22)
    li 6, 0x0
    stw 0, 0x44(1)
    li 7, 0x0
    lwz 24, 0x8(22)
    li 8, 0x0
    lwz 25, 0xc(22)
    li 9, 0x0
    lwz 26, 0x10(22)
    li 10, 0x1
    lwz 27, 0x14(22)
    lwz 28, 0x18(22)
    lwz 29, 0x1c(22)
    lwz 30, 0x20(22)
    lwz 12, 0x24(22)
    lwz 11, 0x28(22)
    lwz 0, 0x2c(22)
    stw 23, 0x48(1)
    lfs 1, 0x44(1)
    stw 24, 0x4c(1)
    stw 25, 0x50(1)
    stw 26, 0x54(1)
    stw 27, 0x58(1)
    stw 28, 0x5c(1)
    stw 29, 0x60(1)
    stw 30, 0x64(1)
    stw 12, 0x68(1)
    stw 11, 0x6c(1)
    stw 0, 0x70(1)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x44(1)
    li 5, 0xcc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x23c(31)
    li 0, 0x9
    cmpwi 3, 0xa
    .4byte 0x40800008 # bge .L_80393608
    subi 0, 3, 0x1
L_80393608:
    lis 3, lbl_80475710@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_80475710@l
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwzx 4, 4, 0
    li 5, -0x1
    bl fn_80458880
L_80393624:
    lis 3, 0x8889
    lwz 4, 0x230(31)
    subi 3, 3, 0x7777
    lwz 0, 0x234(31)
    mulhw 3, 3, 4
    cmpwi 0, 0x0
    add 0, 3, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf 0, 0, 4
    slwi 0, 0, 10
    extsh 0, 0
    .4byte 0x40820044 # bne .L_803936A0
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 0, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0220208 # lfs f1, lbl_805431A8@sda21(r0)
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
    .4byte 0x48000060 # b .L_803936FC
L_803936A0:
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 0, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0420208 # lfs f2, lbl_805431A8@sda21(r0)
    lfsx 1, 3, 0
    lfs 0, 0x248(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x248(31)
    lfs 0, 0x24c(31)
    fsubs 0, 0, 2
    stfs 0, 0x24c(31)
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0x248(31)
    fadds 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x24c(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
L_803936FC:
    lwz 3, 0x230(31)
    subi 0, 3, 0x1
    cmpwi 3, 0x0
    stw 0, 0x230(31)
    .4byte 0x40820224 # bne .L_80393930
    lis 3, 0x6666
    lwz 4, 0x240(31)
    addi 5, 3, 0x6667
    lwz 0, 0x244(31)
    mulhw 3, 5, 4
    srawi 3, 3, 2
    mulhw 0, 5, 0
    srwi 4, 3, 31
    add 4, 3, 4
    srawi 0, 0, 2
    srwi 3, 0, 31
    add 3, 0, 3
    cmpw 4, 3
    addi 24, 3, 0x1
    .4byte 0x40810148 # ble .L_80393890
    subf 23, 3, 4
    li 25, 0x0
    .4byte 0x48000134 # b .L_80393888
L_80393758:
    cmpwi 24, 0x3
    li 26, -0x1
    .4byte 0x40800010 # bge .L_80393770
    cmpwi 24, 0x1
    .4byte 0x40800014 # bge .L_8039377C
    .4byte 0x480000A8 # b .L_80393814
L_80393770:
    cmpwi 24, 0x6
    .4byte 0x408000A0 # bge .L_80393814
    .4byte 0x48000050 # b .L_803937C8
L_8039377C:
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 31, 0x4(3)
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC0020218 # lfs f0, lbl_805431B8@sda21(r0)
    stfs 1, 0x38(1)
    stfs 31, 0x3c(1)
    stfs 0, 0x40(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x38
    li 7, 0x2
    bl fn_801F8544
    mr 26, 3
    .4byte 0x48000080 # b .L_80393844
L_803937C8:
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 31, 0x4(3)
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC0020218 # lfs f0, lbl_805431B8@sda21(r0)
    stfs 1, 0x2c(1)
    stfs 31, 0x30(1)
    stfs 0, 0x34(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x2c
    li 7, 0x3
    bl fn_801F8544
    mr 26, 3
    .4byte 0x48000034 # b .L_80393844
L_80393814:
    lwz 3, 0x238(31)
    bl fn_8023E724
    mr 22, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(31)
    mr 6, 22
    li 7, 0x0
    addi 4, 4, 0x5259
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80393844:
    cmpwi 26, 0x0
    .4byte 0x41800038 # blt .L_80393880
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80393880
    .4byte 0xC022021C # lfs f1, lbl_805431BC@sda21(r0)
    .4byte 0xC0020220 # lfs f0, lbl_805431C0@sda21(r0)
    stfs 1, 0x20(1)
    stfs 1, 0x24(1)
    psq_l 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_80393880:
    addi 24, 24, 0x1
    addi 25, 25, 0x1
L_80393888:
    cmpw 25, 23
    .4byte 0x4180FECC # blt .L_80393758
L_80393890:
    lwz 0, 0x240(31)
    cmpwi 0, 0xf
    .4byte 0x41800090 # blt .L_80393928
    lwz 0, 0x244(31)
    cmpwi 0, 0xf
    .4byte 0x40800084 # bge .L_80393928
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 31, 0x4(3)
    lwz 3, 0x238(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC0020218 # lfs f0, lbl_805431B8@sda21(r0)
    stfs 1, 0x14(1)
    stfs 31, 0x18(1)
    stfs 0, 0x1c(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x14
    li 7, 0x2
    bl fn_801F8544
    mr. 22, 3
    .4byte 0x41800038 # blt .L_80393928
    bl SpatialRegistry_GetBase
    mr 4, 22
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80393928
    .4byte 0xC022021C # lfs f1, lbl_805431BC@sda21(r0)
    .4byte 0xC0020220 # lfs f0, lbl_805431C0@sda21(r0)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_80393928:
    li 0, 0x0
    stb 0, 0x11c(31)
L_80393930:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    lmw 22, 0x78(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

