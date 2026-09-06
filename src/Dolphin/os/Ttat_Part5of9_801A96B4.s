# TTAT cluster, part 5/9 (Track A byte-match + overview - 1600B).
# update() state handler #1 - uses the confirmed full-teardown
# fn_800EC240, handle-resolve fn_8013C824, effect spawn/sync
# fn_8013CB44/fn_8013CC50, fn_801F2618/fn_801F2B7C/fn_801F666C/
# SpatialRegistry_GetBase, fn_8030C210, sound fn_80458FF0.
.section extab, "a"
.balign 4
.global etb_80007A7C
etb_80007A7C:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80007A7C, 8

.section extabindex, "a"
.balign 4
.global eti_80014938
eti_80014938:
    .4byte fn_801A96B4
    .4byte 0x00000640
    .4byte etb_80007A7C
.size eti_80014938, 12

.text
.balign 4
.global fn_801A96B4

fn_801A96B4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 26, 0x28(1)
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 27, 3
    .4byte 0xC3E2B740 # lfs f31, lbl_8053E6E0@sda21(r0)
    addi 4, 27, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
    .4byte 0xC022B74C # lfs f1, lbl_8053E6EC@sda21(r0)
    .4byte 0xC002B750 # lfs f0, lbl_8053E6F0@sda21(r0)
    stfs 1, 0x80(27)
    stfs 1, 0x84(27)
    stfs 0, 0x88(27)
    stfs 0, 0x8c(27)
    lwz 0, 0x240(27)
    lwz 3, 0x250(27)
    cmpw 0, 3
    .4byte 0x4182007C # beq .L_801A9784
    cmpwi 3, 0x0
    .4byte 0x40810074 # ble .L_801A9784
    li 0, 0x32
    stw 0, 0x238(27)
    lwz 0, 0x250(27)
    stw 0, 0x240(27)
    lwz 0, 0x2b8(27)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801A9748
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2b8(27)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2b8(27)
L_801A9748:
    lwz 0, 0x250(27)
    .4byte 0x38AD8548 # li r5, lbl_8053A108@sda21
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    subfic 0, 0, 0x4
    .4byte 0xC022B748 # lfs f1, lbl_8053E6E8@sda21(r0)
    slwi 0, 0, 1
    li 6, 0x0
    lhzx 5, 5, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2b8(27)
L_801A9784:
    lwz 3, 0x2b8(27)
    addi 4, 27, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x250(27)
    cmpwi 0, 0x2
    .4byte 0x41820040 # beq .L_801A97E4
    .4byte 0x40800014 # bge .L_801A97BC
    cmpwi 0, 0x0
    .4byte 0x4182004C # beq .L_801A97FC
    .4byte 0x4080003C # bge .L_801A97F0
    .4byte 0x4800007C # b .L_801A9834
L_801A97BC:
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_801A97CC
    .4byte 0x40800070 # bge .L_801A9834
    .4byte 0x48000010 # b .L_801A97D8
L_801A97CC:
    li 0, 0x100
    stw 0, 0x248(27)
    .4byte 0x48000060 # b .L_801A9834
L_801A97D8:
    li 0, 0x200
    stw 0, 0x248(27)
    .4byte 0x48000054 # b .L_801A9834
L_801A97E4:
    li 0, 0x300
    stw 0, 0x248(27)
    .4byte 0x48000048 # b .L_801A9834
L_801A97F0:
    li 0, 0x400
    stw 0, 0x248(27)
    .4byte 0x4800003C # b .L_801A9834
L_801A97FC:
    lwz 0, 0x230(27)
    cmpwi 0, 0x4
    .4byte 0x41820030 # beq .L_801A9834
    lwz 0, 0x2b8(27)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801A982C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2b8(27)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2b8(27)
L_801A982C:
    li 0, 0x3
    stw 0, 0x230(27)
L_801A9834:
    lwz 0, 0x230(27)
    cmpwi 0, 0x4
    .4byte 0x41820244 # beq .L_801A9A80
    cmpwi 0, 0x3
    .4byte 0x4182023C # beq .L_801A9A80
    lwz 0, 0x238(27)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_801A98BC
    lwz 0, 0x244(27)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_801A9890
    lwz 3, 0x248(27)
    lis 0, 0x4330
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822B768 # lfd f1, lbl_8053E708@sda21(r0)
    stw 0, 0x14(1)
    lfs 2, 0x2b4(27)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0x2b4(27)
    .4byte 0x48000030 # b .L_801A98BC
L_801A9890:
    lwz 3, 0x248(27)
    lis 0, 0x4330
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822B768 # lfd f1, lbl_8053E708@sda21(r0)
    stw 0, 0x14(1)
    lfs 2, 0x2b4(27)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x2b4(27)
L_801A98BC:
    mr 31, 27
    mr 30, 27
    li 28, 0x0
    li 29, 0x0
L_801A98CC:
    lwz 26, 0x270(31)
    cmpwi 26, 0x0
    .4byte 0x418200D4 # beq .L_801A99A8
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200C0 # beq .L_801A99A8
    lbz 0, 0x26c(27)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_801A9908
    li 4, 0x1
    li 0, 0x32
    stb 4, 0x26c(3)
    stw 0, 0x238(27)
L_801A9908:
    lfs 1, 0x2b4(27)
    lis 4, lbl_8052EBC0@ha
    lfs 0, 0xc(27)
    lis 5, 0x4330
    fctiwz 2, 1
    clrlwi 6, 29, 16
    stfs 0, 0x280(30)
    addi 0, 4, lbl_8052EBC0@l
    .4byte 0xC822B768 # lfd f1, lbl_8053E708@sda21(r0)
    stfd 2, 0x10(1)
    lfs 0, 0x10(27)
    lwz 7, 0x14(1)
    stfs 0, 0x284(30)
    add 7, 7, 6
    .4byte 0xC042B754 # lfs f2, lbl_8053E6F4@sda21(r0)
    clrlwi 4, 7, 16
    lfs 3, 0x14(27)
    addis 6, 4, 0x1
    stw 5, 0x18(1)
    addi 6, 6, -0x8000
    rlwinm 4, 7, 30, 18, 28
    xoris 5, 6, 0x8000
    stfs 3, 0x288(30)
    add 4, 0, 4
    stw 5, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    stfs 0, 0x2b4(3)
    lfs 1, 0x0(4)
    lfs 0, 0x280(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x280(30)
    lfs 1, 0x4(4)
    lfs 0, 0x284(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x284(30)
    psq_l 1, 0x280(30), 0, 0
    lfs 0, 0x288(30)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
L_801A99A8:
    lwz 0, 0x250(27)
    cmpwi 0, 0x3
    .4byte 0x41820028 # beq .L_801A99D8
    .4byte 0x40800014 # bge .L_801A99C8
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_801A99E8
    .4byte 0x40800020 # bge .L_801A99E0
    .4byte 0x48000028 # b .L_801A99EC
L_801A99C8:
    cmpwi 0, 0x5
    .4byte 0x40800020 # bge .L_801A99EC
    .4byte 0xC3E2B758 # lfs f31, lbl_8053E6F8@sda21(r0)
    .4byte 0x48000018 # b .L_801A99EC
L_801A99D8:
    .4byte 0xC3E2B748 # lfs f31, lbl_8053E6E8@sda21(r0)
    .4byte 0x48000010 # b .L_801A99EC
L_801A99E0:
    .4byte 0xC3E2B75C # lfs f31, lbl_8053E6FC@sda21(r0)
    .4byte 0x48000008 # b .L_801A99EC
L_801A99E8:
    .4byte 0xC3E2B760 # lfs f31, lbl_8053E700@sda21(r0)
L_801A99EC:
    lwz 0, 0x238(27)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_801A9A2C
    lhz 0, 0x2b2(27)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 31, 0
    stfs 0, 0x3c(27)
    lhz 0, 0x2b2(27)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 31, 0
    stfs 0, 0x40(27)
L_801A9A2C:
    addi 28, 28, 0x1
    addi 30, 30, 0xc
    cmpwi 28, 0x4
    addi 29, 29, 0x4000
    addi 31, 31, 0x4
    .4byte 0x4180FE8C # blt .L_801A98CC
    li 0, 0x0
    mr 3, 27
    stb 0, 0x26c(27)
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    psq_l 1, 0xc(27), 0, 0
    psq_l 0, 0x3c(27), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(27), 0, 0
    psq_l 1, 0x14(27), 1, 0
    psq_l 0, 0x44(27), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(27), 1, 0
    bl fn_801F2B7C
L_801A9A80:
    lwz 0, 0x254(27)
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_801A9AEC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_801A9AEC
    lwz 0, 0x258(27)
    cmpwi 0, 0x5
    .4byte 0x4182002C # beq .L_801A9AD0
    .4byte 0x800D9010 # lwz r0, lbl_8053ABD0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_801A9AD0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000040 # b .L_801A9B0C
L_801A9AD0:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000024 # b .L_801A9B0C
L_801A9AEC:
    lwz 3, 0x254(27)
    addi 0, 3, 0x1
    stw 0, 0x254(27)
    lwz 0, 0x254(27)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_801A9B0C
    li 0, 0x2
    stw 0, 0x254(27)
L_801A9B0C:
    lwz 0, 0x230(27)
    cmpwi 0, 0x2
    .4byte 0x41820098 # beq .L_801A9BAC
    .4byte 0x40800014 # bge .L_801A9B2C
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801A9B3C
    .4byte 0x40800020 # bge .L_801A9B44
    .4byte 0x480001B0 # b .L_801A9CD8
L_801A9B2C:
    cmpwi 0, 0x4
    .4byte 0x4182012C # beq .L_801A9C5C
    .4byte 0x408001A4 # bge .L_801A9CD8
    .4byte 0x48000100 # b .L_801A9C38
L_801A9B3C:
    li 0, 0x1
    stw 0, 0x230(27)
L_801A9B44:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002B748 # lfs f0, lbl_8053E6E8@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x2
    .4byte 0xC042B760 # lfs f2, lbl_8053E700@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 3, 0x1c(1)
    stw 3, 0x244(27)
    lwz 3, 0x244(27)
    clrlwi 3, 3, 31
    stw 3, 0x244(27)
    stw 0, 0x230(27)
L_801A9BAC:
    mr 3, 27
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_801A9C04
    .4byte 0xC002B740 # lfs f0, lbl_8053E6E0@sda21(r0)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    lwz 0, 0x244(27)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801A9BF0
    lhz 3, 0x2b2(27)
    subi 0, 3, 0x4000
    sth 0, 0x2b2(27)
    .4byte 0x48000010 # b .L_801A9BFC
L_801A9BF0:
    lhz 3, 0x2b2(27)
    addi 0, 3, 0x4000
    sth 0, 0x2b2(27)
L_801A9BFC:
    li 0, 0x1
    stw 0, 0x230(27)
L_801A9C04:
    lwz 0, 0x238(27)
    cmpwi 0, 0x0
    .4byte 0x418200CC # beq .L_801A9CD8
    .4byte 0xC002B740 # lfs f0, lbl_8053E6E0@sda21(r0)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    lwz 0, 0x238(27)
    cmpwi 0, 0x1
    .4byte 0x408200B0 # bne .L_801A9CD8
    li 0, 0x1
    stw 0, 0x230(27)
    .4byte 0x480000A4 # b .L_801A9CD8
L_801A9C38:
    li 3, 0x0
    .4byte 0xC002B740 # lfs f0, lbl_8053E6E0@sda21(r0)
    stw 3, 0x234(27)
    li 0, 0x4
    stw 3, 0x244(27)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    stw 0, 0x230(27)
L_801A9C5C:
    lwz 0, 0x234(27)
    cmpwi 0, 0x0
    .4byte 0x40820074 # bne .L_801A9CD8
    lwz 0, 0x244(27)
    cmpwi 0, 0x3
    .4byte 0x4081001C # ble .L_801A9C8C
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000050 # b .L_801A9CD8
L_801A9C8C:
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 26, 0x270(3)
    cmpwi 26, 0x0
    .4byte 0x4180003C # blt .L_801A9CD8
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_801A9CD8
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0xa
    stw 0, 0x234(27)
    lwz 3, 0x244(27)
    addi 0, 3, 0x1
    stw 0, 0x244(27)
L_801A9CD8:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 26, 0x28(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

