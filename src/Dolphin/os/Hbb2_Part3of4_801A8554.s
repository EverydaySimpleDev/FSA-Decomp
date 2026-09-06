# HBB2 cluster, part 3/4 (Track A byte-match + overview - 1892B).
# update()/core behavior - uses the confirmed knockback fn_801F3D94,
# the SPECIALIZED reward-spawn dispatcher fn_801F8544 (confirmed via
# GOLD/ALCE/TENN/SAYA), the ease primitive fn_801F71A4, player position
# fn_8023E724, per-room config GetRoomConfigRecord, fn_80138A30/fn_801EEC98/
# fn_801F0E34/fn_801F285C/fn_801F2B7C/fn_801F2FAC/SpatialRegistry_GetBase, plus
# unfamiliar fn_8022CAF8/fn_802DCD0C.
.section extab, "a"
.balign 4
.global etb_80007A4C
etb_80007A4C:
    .4byte 0x214A0000
    .4byte 0x00000000
.size etb_80007A4C, 8

.section extabindex, "a"
.balign 4
.global eti_800148F0
eti_800148F0:
    .4byte fn_801A8554
    .4byte 0x00000764
    .4byte etb_80007A4C
.size eti_800148F0, 12

.text
.balign 4
.global fn_801A8554

fn_801A8554:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stfd 27, 0x20(1)
    psq_st 27, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0xc(1)
    lwz 0, 0x258(3)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_801A85DC
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_801A85DC
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418206A0 # beq .L_801A8C70
    li 0, 0x1
    stw 0, 0x258(31)
L_801A85DC:
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801A8604
    lwz 0, 0x25c(31)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_801A860C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000670 # b .L_801A8C70
L_801A8604:
    li 0, 0x1
    stw 0, 0x25c(31)
L_801A860C:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 8, 1, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x40820084 # bne .L_801A86BC
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_801A86BC
    psq_l 1, 0xc(31), 0, 0
    li 0, 0xd
    lfs 0, 0x14(31)
    addi 3, 31, 0x1d4
    psq_st 1, 0x294(31), 0, 0
    stfs 0, 0x29c(31)
    mtctr 0
L_801A8664:
    lfs 0, 0x288(3)
    stfs 0, 0x294(3)
    lfs 0, 0x28c(3)
    stfs 0, 0x298(3)
    lfs 0, 0x290(3)
    stfs 0, 0x29c(3)
    lfs 0, 0x27c(3)
    stfs 0, 0x288(3)
    lfs 0, 0x280(3)
    stfs 0, 0x28c(3)
    lfs 0, 0x284(3)
    stfs 0, 0x290(3)
    lfs 0, 0x270(3)
    stfs 0, 0x27c(3)
    lfs 0, 0x274(3)
    stfs 0, 0x280(3)
    lfs 0, 0x278(3)
    stfs 0, 0x284(3)
    subi 3, 3, 0x24
    .4byte 0x4200FFB4 # bdnz .L_801A8664
    li 0, 0x3
    stw 0, 0x238(31)
L_801A86BC:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x408101D0 # ble .L_801A8894
    lfs 31, 0xc(31)
    addi 30, 31, 0x1d4
    lfs 30, 0x10(31)
    li 28, 0x27
    lfs 29, 0x14(31)
    .4byte 0xC022B704 # lfs f1, lbl_8053E6A4@sda21(r0)
    .4byte 0xC002B700 # lfs f0, lbl_8053E6A0@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_801A86F4:
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x41800168 # blt .L_801A8864
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0x294(30)
    lwz 3, 0xc(1)
    fsubs 28, 1, 0
    bl fn_8023E724
    lfs 1, 0x298(30)
    lfs 0, 0x29c(30)
    lfs 2, 0x4(3)
    fsubs 0, 1, 0
    lwz 3, 0xc(1)
    fsubs 27, 2, 0
    bl fn_8023E724
    lfs 2, 0x0(3)
    fmuls 1, 27, 27
    .4byte 0xC002B6F0 # lfs f0, lbl_8053E690@sda21(r0)
    stfs 2, 0x288(31)
    fmadds 4, 28, 28, 1
    lfs 1, 0x4(3)
    stfs 1, 0x28c(31)
    fcmpo cr0, 4, 0
    lfs 0, 0x8(3)
    stfs 0, 0x290(31)
    .4byte 0x4081004C # ble .L_801A87A8
    frsqrte 1, 4
    .4byte 0xC862B708 # lfd f3, lbl_8053E6A8@sda21(r0)
    .4byte 0xC842B710 # lfd f2, lbl_8053E6B0@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801A882C
L_801A87A8:
    .4byte 0xC802B718 # lfd f0, lbl_8053E6B8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801A87C0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801A882C
L_801A87C0:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801A87E8
    .4byte 0x40800040 # bge .L_801A8818
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801A8800
    .4byte 0x48000034 # b .L_801A8818
L_801A87E8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A87F8
    li 0, 0x1
    .4byte 0x48000028 # b .L_801A881C
L_801A87F8:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801A881C
L_801A8800:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A8810
    li 0, 0x5
    .4byte 0x48000010 # b .L_801A881C
L_801A8810:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801A881C
L_801A8818:
    li 0, 0x4
L_801A881C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A882C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801A882C:
    .4byte 0xC002B720 # lfs f0, lbl_8053E6C0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800030 # bge .L_801A8864
    lfs 2, 0x298(30)
    mr 3, 31
    lfs 1, 0x294(30)
    li 5, -0x1
    .4byte 0xC002B6F0 # lfs f0, lbl_8053E690@sda21(r0)
    li 6, 0x5
    stfs 1, 0xc(31)
    stfs 2, 0x10(31)
    stfs 0, 0x14(31)
    lwz 4, 0x114(31)
    bl fn_801F2B7C
L_801A8864:
    subic. 28, 28, 0x1
    subi 30, 30, 0xc
    .4byte 0x4181FE88 # bgt .L_801A86F4
    .4byte 0xC022B724 # lfs f1, lbl_8053E6C4@sda21(r0)
    .4byte 0xC002B728 # lfs f0, lbl_8053E6C8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 31, 0xc(31)
    stfs 30, 0x10(31)
    stfs 29, 0x14(31)
L_801A8894:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_801A88B4
    .4byte 0xC022B6F0 # lfs f1, lbl_8053E690@sda21(r0)
    addi 3, 31, 0x274
    .4byte 0xC042B72C # lfs f2, lbl_8053E6CC@sda21(r0)
    .4byte 0xC062B730 # lfs f3, lbl_8053E6D0@sda21(r0)
    bl fn_801F71A4
L_801A88B4:
    mr 3, 31
    li 4, 0x0
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x408203AC # bne .L_801A8C70
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x408100DC # ble .L_801A89AC
    li 28, 0x0
L_801A88D8:
    mr 3, 31
    mr 7, 28
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    mr. 29, 3
    .4byte 0x418000AC # blt .L_801A89A0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x41810024 # bgt .L_801A8928
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x1
    .4byte 0x41820014 # beq .L_801A8928
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x0
    .4byte 0x4082007C # bne .L_801A89A0
L_801A8928:
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_801A89A0
    lwz 3, 0x108(31)
    lwz 0, 0x264(31)
    subfic 3, 3, 0x2710
    subf 0, 3, 0
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x4181002C # bgt .L_801A8980
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x264(31)
    stw 0, 0x230(31)
    .4byte 0x480002F4 # b .L_801A8C70
L_801A8980:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x480002D4 # b .L_801A8C70
L_801A89A0:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF30 # blt .L_801A88D8
L_801A89AC:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x4081004C # ble .L_801A8A00
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820040 # beq .L_801A8A00
    lfs 1, 0x27c(31)
    addi 3, 31, 0xc
    .4byte 0xC042B6F4 # lfs f2, lbl_8053E694@sda21(r0)
    lfs 3, 0x278(31)
    bl fn_801F71A4
    lfs 1, 0x280(31)
    addi 3, 31, 0x10
    .4byte 0xC042B6F4 # lfs f2, lbl_8053E694@sda21(r0)
    lfs 3, 0x278(31)
    bl fn_801F71A4
    .4byte 0xC022B728 # lfs f1, lbl_8053E6C8@sda21(r0)
    addi 3, 31, 0x278
    .4byte 0xC042B72C # lfs f2, lbl_8053E6CC@sda21(r0)
    .4byte 0xC062B6F4 # lfs f3, lbl_8053E694@sda21(r0)
    bl fn_801F71A4
L_801A8A00:
    lfs 1, 0x284(31)
    addi 3, 31, 0x14
    .4byte 0xC042B72C # lfs f2, lbl_8053E6CC@sda21(r0)
    .4byte 0xC062B6F4 # lfs f3, lbl_8053E694@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC002B720 # lfs f0, lbl_8053E6C0@sda21(r0)
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    stfs 0, 0x284(31)
    li 6, 0x1
    bl fn_801F2B7C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xec
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182008C # beq .L_801A8AD8
    .4byte 0x40800010 # bge .L_801A8A60
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801A8A6C
    .4byte 0x480001D4 # b .L_801A8C30
L_801A8A60:
    cmpwi 0, 0x3
    .4byte 0x408001CC # bge .L_801A8C30
    .4byte 0x48000170 # b .L_801A8BD8
L_801A8A6C:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xf
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xa9
    li 5, 0x0
    bl fn_801F0E34
    lwz 9, 0xc(1)
    cmpwi 9, 0x0
    .4byte 0x41800034 # blt .L_801A8AD0
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 31, 0x268
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lhz 3, 0x268(31)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x268(31)
L_801A8AD0:
    li 0, 0x1
    stw 0, 0x230(31)
L_801A8AD8:
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x41800060 # blt .L_801A8B40
    lhz 0, 0x268(31)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 29, 4, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0x270(31)
    fmadds 0, 0, 29, 1
    stfs 0, 0x27c(31)
    lwz 3, 0xc(1)
    bl fn_8023E724
    lhz 0, 0x268(31)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    lfs 2, 0x4(3)
    rlwinm 0, 0, 30, 18, 28
    lfs 1, 0x270(31)
    add 3, 4, 0
    lfs 0, 0x4(3)
    fmadds 0, 1, 0, 2
    stfs 0, 0x280(31)
    .4byte 0x48000048 # b .L_801A8B84
L_801A8B40:
    lhz 0, 0x268(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x270(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x288(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x27c(31)
    lhz 0, 0x268(31)
    lfs 2, 0x270(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x28c(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x280(31)
L_801A8B84:
    lfs 1, 0x280(31)
    .4byte 0xC002B720 # lfs f0, lbl_8053E6C0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x280(31)
    lhz 3, 0x268(31)
    addi 0, 3, 0x200
    sth 0, 0x268(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810088 # bgt .L_801A8C30
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_801A8BCC
    li 0, 0x0
    stw 0, 0x260(31)
L_801A8BCC:
    li 0, 0x6
    stw 0, 0x234(31)
    .4byte 0x4800005C # b .L_801A8C30
L_801A8BD8:
    lfs 1, 0x274(31)
    .4byte 0xC002B6F4 # lfs f0, lbl_8053E694@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080004C # bge .L_801A8C30
    mr 29, 31
    li 28, 0x0
    lis 30, 0x5255
L_801A8BF4:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x5059
    addi 6, 29, 0x294
    li 7, 0x0
    bl fn_801F8544
    addi 28, 28, 0x1
    addi 29, 29, 0xc
    cmpwi 28, 0x28
    .4byte 0x4180FFDC # blt .L_801A8BF4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801A8C30:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A8C44
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801A8C44:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A8C58
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801A8C58:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A8C70
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801A8C70:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    psq_l 27, 0x28(1), 0, 0
    lfd 27, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x74(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

