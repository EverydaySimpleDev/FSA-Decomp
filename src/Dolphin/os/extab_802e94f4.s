# fn_802E94F4 - ENDM: movement/facing update helper (0x390)
# Uses PSVECMag and fn_80093340 (atan2) plus fn_8030C7C4 (unfamiliar
# math/animation utility) to drive position/facing updates. Track A:
# byte-match verified, structural overview per the large/complex-function
# exception.
.section extab, "a"
.balign 4
.global etb_8000D14C
etb_8000D14C:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000D14C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C324
eti_8001C324:
    .4byte fn_802E94F4
    .4byte 0x00000390
    .4byte etb_8000D14C
.size eti_8001C324, 12

.text
.balign 4
.global fn_802E94F4

fn_802E94F4:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    mr 31, 3
    lbz 0, 0x298(3)
    lfs 30, 0x248(3)
    cmplwi 0, 0x0
    lfs 31, 0x244(3)
    .4byte 0x41820010 # beq .L_802E9540
    stfs 31, 0x250(31)
    stfs 30, 0x254(31)
    .4byte 0x4800018C # b .L_802E96C8
L_802E9540:
    lwz 3, 0x240(31)
    .4byte 0xC002E34C # lfs f0, lbl_805412EC@sda21(r0)
    psq_l 2, 0x3c(3), 0, 0
    lfs 1, 0x44(3)
    psq_st 2, 0x28(1), 0, 0
    stfs 1, 0x30(1)
    lfs 2, 0x250(31)
    lfs 1, 0x254(31)
    fsubs 2, 2, 31
    fsubs 1, 1, 30
    fmuls 2, 2, 2
    fmuls 1, 1, 1
    fadds 29, 2, 1
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802E9584
    .4byte 0x48000028 # b .L_802E95A8
L_802E9584:
    frsqrte 3, 29
    .4byte 0xC042E35C # lfs f2, lbl_805412FC@sda21(r0)
    .4byte 0xC002E360 # lfs f0, lbl_80541300@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 29, 1, 0
    fmuls 0, 2, 0
    fmuls 29, 29, 0
L_802E95A8:
    addi 3, 1, 0x28
    bl PSVECMag
    .4byte 0xC002E364 # lfs f0, lbl_80541304@sda21(r0)
    fmuls 0, 0, 1
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_802E95D8
    stfs 31, 0x250(31)
    li 0, 0x1
    stfs 30, 0x254(31)
    stb 0, 0x298(31)
    .4byte 0x480000F4 # b .L_802E96C8
L_802E95D8:
    .4byte 0xC002E368 # lfs f0, lbl_80541308@sda21(r0)
    fmuls 0, 0, 1
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820034 # bne .L_802E961C
    lfs 0, 0x244(31)
    lfs 1, 0x250(31)
    .4byte 0xC042E35C # lfs f2, lbl_805412FC@sda21(r0)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x250(31)
    lfs 0, 0x248(31)
    lfs 1, 0x254(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x254(31)
    .4byte 0x480000B0 # b .L_802E96C8
L_802E961C:
    .4byte 0xC042E36C # lfs f2, lbl_8054130C@sda21(r0)
    .4byte 0xC002E370 # lfs f0, lbl_80541310@sda21(r0)
    fmuls 1, 2, 29
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_802E965C
    lfs 0, 0x244(31)
    lfs 1, 0x250(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x250(31)
    lfs 0, 0x248(31)
    lfs 1, 0x254(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x254(31)
    .4byte 0x48000070 # b .L_802E96C8
L_802E965C:
    lfs 3, 0x248(31)
    lis 3, lbl_80534C00@ha
    lfs 1, 0x254(31)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x244(31)
    lfs 0, 0x250(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002E374 # lfs f0, lbl_80541314@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042E370 # lfs f2, lbl_80541310@sda21(r0)
    fmuls 1, 1, 0
    lfs 0, 0x250(31)
    fctiwz 1, 1
    stfd 1, 0x38(1)
    lwz 0, 0x3c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x250(31)
    lfsx 1, 4, 0
    lfs 0, 0x254(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x254(31)
L_802E96C8:
    lfs 3, 0x250(31)
    lfs 2, 0x254(31)
    .4byte 0xC022E34C # lfs f1, lbl_805412EC@sda21(r0)
    .4byte 0xC002E358 # lfs f0, lbl_805412F8@sda21(r0)
    fadds 5, 3, 1
    stfs 3, 0x8(1)
    fadds 4, 2, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    .4byte 0xC042E35C # lfs f2, lbl_805412FC@sda21(r0)
    stfs 5, 0x10(1)
    frsp 7, 5
    stfs 4, 0x14(1)
    lwz 4, 0x24(3)
    lfs 6, 0x268(31)
    lwz 3, 0x164(4)
    lwz 0, 0x16c(4)
    stw 3, 0x18(1)
    lwz 3, 0x168(4)
    stw 0, 0x20(1)
    lwz 0, 0x170(4)
    stw 3, 0x1c(1)
    lfs 1, 0x20(1)
    lfs 0, 0x18(1)
    stw 0, 0x24(1)
    fsubs 3, 1, 0
    lfs 0, 0x1c(1)
    lfs 1, 0x24(1)
    stfs 5, 0x8(1)
    fmuls 3, 3, 2
    fsubs 1, 1, 0
    stfs 4, 0xc(1)
    fadds 0, 7, 3
    fmuls 1, 1, 2
    fcmpo cr0, 0, 6
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802E9768
    fsubs 0, 6, 3
    stfs 0, 0x10(1)
    .4byte 0x48000020 # b .L_802E9784
L_802E9768:
    fsubs 0, 7, 3
    lfs 2, 0x260(31)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802E9784
    fadds 0, 2, 3
    stfs 0, 0x10(1)
L_802E9784:
    lfs 3, 0x14(1)
    lfs 2, 0x26c(31)
    fadds 0, 3, 1
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_802E97A8
    fsubs 0, 2, 1
    stfs 0, 0x14(1)
    .4byte 0x48000020 # b .L_802E97C4
L_802E97A8:
    fsubs 0, 3, 1
    lfs 2, 0x264(31)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802E97C4
    fadds 0, 2, 1
    stfs 0, 0x14(1)
L_802E97C4:
    lfs 2, 0x270(31)
    lfs 0, 0x274(31)
    fcmpu cr0, 2, 0
    .4byte 0x4182004C # beq .L_802E981C
    lfs 1, 0x278(31)
    .4byte 0xC002E34C # lfs f0, lbl_805412EC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x270(31)
    lfs 1, 0x278(31)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_802E9808
    lfs 0, 0x270(31)
    lfs 1, 0x274(31)
    fcmpo cr0, 0, 1
    .4byte 0x40800020 # bge .L_802E981C
    stfs 1, 0x270(31)
    .4byte 0x48000018 # b .L_802E981C
L_802E9808:
    lfs 0, 0x270(31)
    lfs 1, 0x274(31)
    fcmpo cr0, 0, 1
    .4byte 0x40810008 # ble .L_802E981C
    stfs 1, 0x270(31)
L_802E981C:
    lfs 0, 0x270(31)
    lis 0, 0x4330
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x10
    fctiwz 0, 0
    stw 0, 0x40(1)
    .4byte 0xC822E350 # lfd f1, lbl_805412F0@sda21(r0)
    lwz 3, 0x24(3)
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x44(1)
    lfd 0, 0x40(1)
    fsubs 1, 0, 1
    bl fn_8030C7C4
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lwz 0, 0x84(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

