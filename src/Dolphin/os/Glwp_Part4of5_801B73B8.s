# GLWP cluster, part 4/5 (408B). setParams - calls its shared private
# helper Glwp_GetAmbientEffectGroupByte (landed alongside), player position fn_8023E724,
# plus unfamiliar fn_80119468/fn_80119DD0/fn_8023EE28.
.section extab, "a"
.balign 4
.global etb_80007C7C
etb_80007C7C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007C7C, 8

.section extabindex, "a"
.balign 4
.global eti_80014C38
eti_80014C38:
    .4byte fn_801B73B8
    .4byte 0x00000198
    .4byte etb_80007C7C
.size eti_80014C38, 12

.text
.balign 4
.global fn_801B73B8

fn_801B73B8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022BB40 # lfs f1, lbl_8053EAE0@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002BB44 # lfs f0, lbl_8053EAE4@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    bl Glwp_GetAmbientEffectGroupByte
    clrlwi 0, 3, 24
    lis 3, 0x4330
    stw 0, 0xc(1)
    li 0, 0x0
    .4byte 0xC862BB38 # lfd f3, lbl_8053EAD8@sda21(r0)
    mr 30, 31
    stw 3, 0x8(1)
    li 29, 0x0
    .4byte 0xC022BB48 # lfs f1, lbl_8053EAE8@sda21(r0)
    lfd 2, 0x8(1)
    .4byte 0xC002BB4C # lfs f0, lbl_8053EAEC@sda21(r0)
    fsubs 2, 2, 3
    stfs 2, 0x25c(31)
    lfs 2, 0x25c(31)
    stfs 2, 0x260(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x240(31)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
L_801B7464:
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x0(3)
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    stfs 0, 0x264(30)
    lfs 0, 0x4(3)
    stfs 0, 0x268(30)
    lfs 0, 0x8(3)
    stfs 0, 0x26c(30)
    addi 30, 30, 0xc
    .4byte 0x4180FFD4 # blt .L_801B7464
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x250(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    stw 0, 0x254(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 20
    stw 0, 0x24c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 16
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_801B74D8
    li 0, 0x0
    stw 0, 0x258(31)
L_801B74D8:
    li 3, 0x0
    .4byte 0x986D9040 # stb r3, lbl_8053AC00@sda21(r0)
    stw 3, 0x294(31)
    stw 3, 0x298(31)
    stw 3, 0x29c(31)
    stw 3, 0x2a0(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801B7504
    stw 3, 0x230(31)
    .4byte 0x48000034 # b .L_801B7534
L_801B7504:
    bl fn_80119DD0
    li 4, 0x0
    li 5, 0x0
    bl fn_80119468
    li 30, 0x0
L_801B7518:
    mr 3, 30
    bl fn_8023EE28
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFF0 # blt .L_801B7518
    li 0, 0x6
    stw 0, 0x230(31)
L_801B7534:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

