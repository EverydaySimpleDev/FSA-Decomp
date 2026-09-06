# Unnamed actor cluster, part 3/5 (Track A byte-match + overview -
# 0x1190=4496B, the LARGEST piece of this actor). update() core. Uses
# the confirmed effect spawn fn_8013CC50, knockback fn_801F3D94, ease
# fn_801F71A4, the existing-instance-by-FourCC lookup fn_801F2718, the
# player validity/position family fn_8023DE58/fn_8023E724/Player_GetCapabilityFlagByIndex,
# the per-room config family GetRoomConfigRecord/fn_802D79A4/fn_802D79E8,
# fn_801EEC98/fn_801F0E34/fn_801F2618/fn_801F666C/SpatialRegistry_GetBase, sound
# fn_80458FF0, plus an extensive set of unfamiliar helpers
# (fn_800FDEA0/800FE3EC/80138A30/8022ADCC/8022ADE4/8022D534/8022DCD8/
# 8022EA0C/80230188/80236B50/802DCD0C) not chased further given size.
.section extab, "a"
.balign 4
.global etb_80007BD4
etb_80007BD4:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80007BD4, 8

.section extabindex, "a"
.balign 4
.global eti_80014B3C
eti_80014B3C:
    .4byte fn_801B29EC
    .4byte 0x00001190
    .4byte etb_80007BD4
.size eti_80014B3C, 12

.text
.balign 4
.global fn_801B29EC

fn_801B29EC:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stmw 26, 0x88(1)
    mr 29, 3
    lis 3, lbl_804A3660@ha
    lwz 30, 0x4(29)
    addi 31, 3, lbl_804A3660@l
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801B2A28
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801B2A2C
L_801B2A28:
    addi 3, 3, 0xdc
L_801B2A2C:
    lwz 0, 0x0(3)
    lwz 5, 0x4(3)
    lwz 4, 0x8(3)
    lwz 3, 0xc(3)
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    stw 0, 0x5c(1)
    stfs 0, 0x50(1)
    stfs 0, 0x54(1)
    stfs 0, 0x58(1)
    lwz 0, 0x4(29)
    stw 5, 0x60(1)
    stw 4, 0x64(1)
    stw 3, 0x68(1)
    stw 0, 0x14(1)
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x0
    .4byte 0xC022B990 # lfs f1, lbl_8053E930@sda21(r0)
    .4byte 0xC042B994 # lfs f2, lbl_8053E934@sda21(r0)
    bl fn_802D79E8
    li 26, 0x0
L_801B2A80:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801B2AA8
    bl GetRoomConfigRecord
    .4byte 0xC042B990 # lfs f2, lbl_8053E930@sda21(r0)
    mr 4, 26
    .4byte 0xC022B998 # lfs f1, lbl_8053E938@sda21(r0)
    fmr 3, 2
    bl fn_802D79A4
L_801B2AA8:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFD0 # blt .L_801B2A80
    lwz 0, 0x2f8(29)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_801B2AF0
    psq_l 2, 0xc(29), 0, 0
    addi 4, 1, 0x38
    lfs 0, 0x14(29)
    addi 3, 29, 0x230
    .4byte 0xC022B99C # lfs f1, lbl_8053E93C@sda21(r0)
    addi 5, 1, 0x50
    psq_st 2, 0x0(4), 0, 0
    addi 6, 1, 0x14
    addi 7, 1, 0x8
    li 8, 0x200
    stfs 0, 0x40(1)
    bl fn_800FDEA0
L_801B2AF0:
    mr 3, 29
    li 4, 0x1
    bl fn_801F3D94
    lfs 1, 0x334(29)
    addi 3, 29, 0x3c
    .4byte 0xC042B9A0 # lfs f2, lbl_8053E940@sda21(r0)
    .4byte 0xC062B990 # lfs f3, lbl_8053E930@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x338(29)
    addi 3, 29, 0x40
    .4byte 0xC042B9A0 # lfs f2, lbl_8053E940@sda21(r0)
    .4byte 0xC062B990 # lfs f3, lbl_8053E930@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(29), 0, 0
    mr 3, 29
    psq_l 0, 0x3c(29), 0, 0
    addi 6, 1, 0x1c
    addi 7, 1, 0x18
    li 5, 0x0
    ps_add 0, 1, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    lwz 4, 0x198(29)
    bl fn_801EEC98
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    stfs 0, 0x4c(1)
    stfs 0, 0x48(1)
    stfs 0, 0x44(1)
    lwz 0, 0x2f8(29)
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_801B2B94
    mr 3, 29
    addi 4, 1, 0x44
    li 5, 0x0
    bl fn_801F2618
L_801B2B94:
    li 0, 0x2710
    stw 0, 0x108(29)
    lwz 0, 0x308(29)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801B2BB4
    lwz 0, 0x2f8(29)
    cmpwi 0, 0x7
    .4byte 0x40820270 # bne .L_801B2E20
L_801B2BB4:
    lwz 0, 0x2f8(29)
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_801B2BD0
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_801B2BD0
    cmpwi 0, 0x7
    .4byte 0x40820254 # bne .L_801B2E20
L_801B2BD0:
    lwz 0, 0x314(29)
    cmpwi 0, 0x0
    .4byte 0x40820230 # bne .L_801B2E08
    bl SpatialRegistry_GetBase
    lwz 30, 0x1008(3)
    li 26, 0x0
    mr 27, 26
    stb 26, 0x32c(29)
    .4byte 0x48000210 # b .L_801B2E00
L_801B2BF4:
    bl SpatialRegistry_GetBase
    addi 0, 27, 0x8
    lwzx 28, 3, 0
    cmplwi 28, 0x0
    .4byte 0x418201F4 # beq .L_801B2DF8
    lbz 0, 0x1a8(28)
    cmplwi 0, 0x1
    .4byte 0x408201E8 # bne .L_801B2DF8
    .4byte 0xC022B9A4 # lfs f1, lbl_8053E944@sda21(r0)
    .4byte 0xC002B9A8 # lfs f0, lbl_8053E948@sda21(r0)
    stfs 1, 0x60(29)
    .4byte 0xC022B9AC # lfs f1, lbl_8053E94C@sda21(r0)
    stfs 0, 0x64(29)
    .4byte 0xC002B9B0 # lfs f0, lbl_8053E950@sda21(r0)
    stfs 1, 0x68(29)
    stfs 0, 0x6c(29)
    lwz 0, 0x308(29)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B2C74
    lwz 4, 0x1a0(28)
    mr 3, 29
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_801B2C74
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    li 0, 0xb
    stfs 0, 0x334(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 0, 0x2f8(29)
    .4byte 0x48000198 # b .L_801B2E08
L_801B2C74:
    lwz 0, 0x2f8(29)
    cmpwi 0, 0x7
    .4byte 0x4182013C # beq .L_801B2DB8
    lwz 3, 0x1a0(28)
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5448
    .4byte 0x4182016C # beq .L_801B2DF8
    .4byte 0xC022B9B4 # lfs f1, lbl_8053E954@sda21(r0)
    mr 3, 29
    .4byte 0xC002B9B8 # lfs f0, lbl_8053E958@sda21(r0)
    stfs 1, 0x60(29)
    .4byte 0xC022B9BC # lfs f1, lbl_8053E95C@sda21(r0)
    stfs 0, 0x64(29)
    .4byte 0xC002B9C0 # lfs f0, lbl_8053E960@sda21(r0)
    stfs 1, 0x68(29)
    stfs 0, 0x6c(29)
    lwz 4, 0x1a0(28)
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x41800138 # blt .L_801B2DF8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002B990 # lfs f0, lbl_8053E930@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B99C # lfs f2, lbl_8053E93C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x78(1)
    lwz 3, 0x7c(1)
    addi 0, 3, 0x14
    stw 0, 0x304(29)
    lwz 0, 0x2f8(29)
    cmpwi 0, 0x6
    .4byte 0x41820064 # beq .L_801B2D88
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xb5
    li 5, 0x0
    bl fn_801F0E34
    lfs 1, 0xc(29)
    addi 4, 1, 0x6c
    .4byte 0xC002B9C4 # lfs f0, lbl_8053E964@sda21(r0)
    li 5, 0x33b
    stfs 1, 0x6c(1)
    li 6, 0x0
    .4byte 0xC022B990 # lfs f1, lbl_8053E930@sda21(r0)
    li 7, 0x1
    lfs 2, 0x10(29)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x70(1)
    fsubs 0, 2, 0
    lfs 2, 0x14(29)
    stfs 2, 0x74(1)
    stfs 0, 0x70(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
L_801B2D88:
    lwz 4, 0x98(29)
    li 3, 0x1
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    li 0, 0x6
    stw 4, 0x1c(1)
    stfs 0, 0x334(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stb 3, 0x32d(29)
    stw 0, 0x2f8(29)
    .4byte 0x48000054 # b .L_801B2E08
L_801B2DB8:
    .4byte 0xC022B9C8 # lfs f1, lbl_8053E968@sda21(r0)
    mr 3, 29
    .4byte 0xC002B9B8 # lfs f0, lbl_8053E958@sda21(r0)
    stfs 1, 0x60(29)
    .4byte 0xC022B9CC # lfs f1, lbl_8053E96C@sda21(r0)
    stfs 0, 0x64(29)
    .4byte 0xC002B9C0 # lfs f0, lbl_8053E960@sda21(r0)
    stfs 1, 0x68(29)
    stfs 0, 0x6c(29)
    lwz 4, 0x1a0(28)
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_801B2DF8
    li 0, 0x1
    stb 0, 0x32c(29)
    .4byte 0x48000014 # b .L_801B2E08
L_801B2DF8:
    addi 27, 27, 0x4
    addi 26, 26, 0x1
L_801B2E00:
    cmpw 26, 30
    .4byte 0x4180FDF0 # blt .L_801B2BF4
L_801B2E08:
    lwz 3, 0x314(29)
    addi 0, 3, 0x1
    stw 0, 0x314(29)
    lwz 0, 0x314(29)
    clrlwi 0, 0, 30
    stw 0, 0x314(29)
L_801B2E20:
    .4byte 0xC022B9A4 # lfs f1, lbl_8053E944@sda21(r0)
    .4byte 0xC002B9A8 # lfs f0, lbl_8053E948@sda21(r0)
    stfs 1, 0x60(29)
    .4byte 0xC022B9AC # lfs f1, lbl_8053E94C@sda21(r0)
    stfs 0, 0x64(29)
    .4byte 0xC002B9B0 # lfs f0, lbl_8053E950@sda21(r0)
    stfs 1, 0x68(29)
    stfs 0, 0x6c(29)
    lwz 0, 0x324(29)
    cmpwi 0, 0x0
    .4byte 0x41800064 # blt .L_801B2EAC
    .4byte 0x806D902C # lwz r3, lbl_8053ABEC@sda21(r0)
    li 0, 0x0
    lwz 4, 0x328(29)
    srawi 3, 3, 2
    addze 3, 3
    add 3, 4, 3
    stw 3, 0x328(29)
    .4byte 0x900D902C # stw r0, lbl_8053ABEC@sda21(r0)
    lwz 0, 0x328(29)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_801B2E80
    li 0, 0x5
    stw 0, 0x328(29)
L_801B2E80:
    bl SpatialRegistry_GetBase
    lwz 4, 0x324(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_801B2EAC
    lwz 4, 0x328(29)
    lwz 0, 0x198(29)
    .4byte 0xC002B9D0 # lfs f0, lbl_8053E970@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
L_801B2EAC:
    lwz 0, 0x2f8(29)
    cmplwi 0, 0x13
    .4byte 0x41810BFC # bgt .L_801B3AB0
    lis 3, jumptable_804A36EC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A36EC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    psq_l 1, 0xc(29), 0, 0
    addi 5, 1, 0x2c
    lfs 0, 0x14(29)
    addi 3, 29, 0x230
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x34(1)
    lwz 4, 0x330(29)
    lwz 6, 0x4(29)
    bl fn_800FE3EC
    clrlwi. 0, 3, 24
    .4byte 0x41820BB8 # beq .L_801B3AB0
    li 0, -0x1
    li 3, 0x0
    stw 0, 0x310(29)
    li 0, 0x2
    stb 3, 0x2fc(29)
    stb 3, 0x32d(29)
    lfs 0, 0x10(29)
    stfs 0, 0x340(29)
    stw 3, 0x31c(29)
    stw 0, 0x2f8(29)
    lis 4, 0x5a44
    mr 3, 29
    addi 4, 4, 0x434f
    bl fn_801F2718
    mr. 26, 3
    .4byte 0x41800100 # blt .L_801B3038
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200EC # beq .L_801B3038
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_801B3038
    li 0, 0x1
    stw 0, 0x25c(3)
    psq_l 0, 0xc(29), 0, 0
    lfs 2, 0x14(29)
    psq_st 0, 0x20(1), 0, 0
    lfs 1, 0x20(1)
    lfs 0, 0x24(1)
    stfs 1, 0x26c(3)
    stfs 0, 0x270(3)
    stfs 2, 0x274(3)
    stw 26, 0x310(29)
    lwz 0, 0x250(3)
    stfs 2, 0x28(1)
    cmpwi 0, 0x4
    .4byte 0x41820020 # beq .L_801B2FB4
    .4byte 0x40800010 # bge .L_801B2FA8
    cmpwi 0, 0x2
    .4byte 0x41820034 # beq .L_801B2FD4
    .4byte 0x48000064 # b .L_801B3008
L_801B2FA8:
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_801B2FC0
    .4byte 0x48000058 # b .L_801B3008
L_801B2FB4:
    li 0, 0x3
    stw 0, 0x2f8(29)
    .4byte 0x48000AF4 # b .L_801B3AB0
L_801B2FC0:
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x318(29)
    stw 0, 0x2f8(29)
    .4byte 0x48000AE0 # b .L_801B3AB0
L_801B2FD4:
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    li 3, 0x64
    li 0, 0x7
    stfs 0, 0x334(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    lwz 4, 0x98(29)
    slwi 4, 4, 3
    stw 4, 0x320(29)
    stw 3, 0x304(29)
    stw 0, 0x2f8(29)
    .4byte 0x48000AAC # b .L_801B3AB0
L_801B3008:
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_801B302C
    stw 0, 0x98(29)
    li 0, 0x5
    lwz 3, 0x98(29)
    slwi 3, 3, 3
    stw 3, 0x320(29)
    stw 0, 0x300(29)
L_801B302C:
    li 0, 0x5
    stw 0, 0x2f8(29)
    .4byte 0x48000A7C # b .L_801B3AB0
L_801B3038:
    .4byte 0xC062B994 # lfs f3, lbl_8053E934@sda21(r0)
    lfs 0, 0x48(1)
    fcmpu cr0, 3, 0
    .4byte 0x4082003C # bne .L_801B3080
    lwz 0, 0x308(29)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_801B30A0
    lfs 1, 0x10(29)
    .4byte 0xC002B9C4 # lfs f0, lbl_8053E964@sda21(r0)
    lfs 2, 0x340(29)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800038 # bge .L_801B30A0
    stfs 3, 0x3c(29)
    li 0, 0x1
    stfs 3, 0x334(29)
    stb 0, 0x2fc(29)
    .4byte 0x48000024 # b .L_801B30A0
L_801B3080:
    lfs 0, 0x10(29)
    stfs 0, 0x340(29)
    lbz 0, 0x2fc(29)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801B30A0
    li 0, 0xb
    stw 0, 0x2f8(29)
    .4byte 0x48000A14 # b .L_801B3AB0
L_801B30A0:
    .4byte 0xC022B9D4 # lfs f1, lbl_8053E974@sda21(r0)
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    stfs 1, 0x338(29)
    lfs 1, 0x50(1)
    stfs 1, 0x334(29)
    lfs 1, 0x50(1)
    fcmpu cr0, 1, 0
    .4byte 0x41820054 # beq .L_801B3110
    lfs 2, 0xc(29)
    lfs 1, 0x18(29)
    .4byte 0xC002B9D8 # lfs f0, lbl_8053E978@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820028 # bne .L_801B3108
    lwz 3, 0x31c(29)
    addi 0, 3, 0x1
    stw 0, 0x31c(29)
    lwz 0, 0x31c(29)
    cmpwi 0, 0xa
    .4byte 0x40810018 # ble .L_801B3110
    li 0, 0x0
    stw 0, 0x2f8(29)
    .4byte 0x4800000C # b .L_801B3110
L_801B3108:
    li 0, 0x0
    stw 0, 0x31c(29)
L_801B3110:
    li 0, 0x1
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    stw 0, 0x98(29)
    lfs 1, 0x334(29)
    fcmpo cr0, 1, 0
    .4byte 0x4081098C # ble .L_801B3AB0
    li 0, 0x0
    stw 0, 0x98(29)
    .4byte 0x48000980 # b .L_801B3AB0
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    li 3, 0x0
    li 0, 0x4
    stfs 0, 0x33c(29)
    stfs 0, 0x338(29)
    stfs 0, 0x334(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 3, 0x304(29)
    stw 0, 0x2f8(29)
    lwz 27, 0x310(29)
    cmpwi 27, 0x0
    .4byte 0x41800948 # blt .L_801B3AB0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200C0 # beq .L_801B323C
    lfs 1, 0xc(3)
    .4byte 0xC002B9AC # lfs f0, lbl_8053E94C@sda21(r0)
    stfs 1, 0x6c(1)
    fadds 1, 1, 0
    .4byte 0xC002B9DC # lfs f0, lbl_8053E97C@sda21(r0)
    lfs 2, 0x10(3)
    stfs 2, 0x70(1)
    lfs 2, 0x14(3)
    stfs 2, 0x74(1)
    stfs 1, 0x6c(1)
    lfs 2, 0xc(29)
    fsubs 2, 2, 1
    fabs 2, 2
    frsp 2, 2
    fcmpo cr0, 2, 0
    .4byte 0x40810040 # ble .L_801B31FC
    .4byte 0xC042B9E0 # lfs f2, lbl_8053E980@sda21(r0)
    addi 3, 29, 0xc
    .4byte 0xC062B9E4 # lfs f3, lbl_8053E984@sda21(r0)
    bl fn_801F71A4
    li 0, 0x0
    stw 0, 0x98(29)
    lfs 1, 0xc(29)
    lfs 0, 0x6c(1)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801B31F0
    li 0, 0x1
    stw 0, 0x98(29)
L_801B31F0:
    li 0, 0x14
    stw 0, 0x304(29)
    .4byte 0x480008B8 # b .L_801B3AB0
L_801B31FC:
    stfs 1, 0xc(29)
    li 0, 0x3
    .4byte 0xC002B9E8 # lfs f0, lbl_8053E988@sda21(r0)
    stw 0, 0x98(29)
    stfs 0, 0x338(29)
    lwz 0, 0x304(29)
    cmpwi 0, 0x0
    .4byte 0x40820898 # bne .L_801B3AB0
    lfs 1, 0x48(1)
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800888 # bge .L_801B3AB0
    li 0, 0x0
    stb 0, 0x11c(3)
    stw 0, 0x2f8(29)
    .4byte 0x48000878 # b .L_801B3AB0
L_801B323C:
    li 0, 0x0
    stw 0, 0x2f8(29)
    .4byte 0x4800086C # b .L_801B3AB0
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    li 3, 0x0
    li 0, 0x6
    stfs 0, 0x334(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stb 3, 0x32d(29)
    stw 0, 0x2f8(29)
    lbz 0, 0x32d(29)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801B3294
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801B3294
    stw 0, 0x98(29)
    lwz 0, 0x98(29)
    slwi 0, 0, 3
    stw 0, 0x320(29)
L_801B3294:
    .4byte 0xC062B994 # lfs f3, lbl_8053E934@sda21(r0)
    lfs 0, 0x48(1)
    fcmpu cr0, 3, 0
    .4byte 0x4082003C # bne .L_801B32DC
    lwz 0, 0x308(29)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_801B32FC
    lfs 1, 0x10(29)
    .4byte 0xC002B9C4 # lfs f0, lbl_8053E964@sda21(r0)
    lfs 2, 0x340(29)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800038 # bge .L_801B32FC
    stfs 3, 0x3c(29)
    li 0, 0x1
    stfs 3, 0x334(29)
    stb 0, 0x2fc(29)
    .4byte 0x48000024 # b .L_801B32FC
L_801B32DC:
    lfs 0, 0x10(29)
    stfs 0, 0x340(29)
    lbz 0, 0x2fc(29)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801B32FC
    li 0, 0xb
    stw 0, 0x2f8(29)
    .4byte 0x480007B8 # b .L_801B3AB0
L_801B32FC:
    li 0, 0x5
    stw 0, 0x300(29)
    lbz 0, 0x32d(29)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_801B3334
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x41800798 # blt .L_801B3AB0
    lwz 0, 0x304(29)
    cmpwi 0, 0x0
    .4byte 0x4082078C # bne .L_801B3AB0
    li 0, 0x1
    stw 0, 0x2f8(29)
    .4byte 0x48000780 # b .L_801B3AB0
L_801B3334:
    lwz 27, 0x310(29)
    cmpwi 27, 0x0
    .4byte 0x41800030 # blt .L_801B336C
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801B3360
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x41820754 # beq .L_801B3AB0
L_801B3360:
    li 0, 0x1
    stw 0, 0x2f8(29)
    .4byte 0x48000748 # b .L_801B3AB0
L_801B336C:
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x4180073C # blt .L_801B3AB0
    lfs 1, 0x18(1)
    .4byte 0xC002B9EC # lfs f0, lbl_8053E98C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080072C # bge .L_801B3AB0
    lwz 0, 0x304(29)
    cmpwi 0, 0x0
    .4byte 0x40820720 # bne .L_801B3AB0
    li 0, 0x1
    stw 0, 0x2f8(29)
    .4byte 0x48000714 # b .L_801B3AB0
    lwz 0, 0x304(29)
    cmpwi 0, 0x0
    .4byte 0x40820708 # bne .L_801B3AB0
    lbz 0, 0x32c(29)
    cmplwi 0, 0x1
    .4byte 0x418206FC # beq .L_801B3AB0
    lwz 27, 0x310(29)
    cmpwi 27, 0x0
    .4byte 0x41800020 # blt .L_801B33E0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801B33E0
    li 0, 0x0
    stb 0, 0x11c(3)
L_801B33E0:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x22
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 3, -0x1
    li 0, 0x1
    stw 3, 0x310(29)
    stw 0, 0x2f8(29)
    .4byte 0x480006A8 # b .L_801B3AB0
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    stfs 0, 0x33c(29)
    stfs 0, 0x338(29)
    stfs 0, 0x334(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_801B3444
    stw 0, 0x98(29)
    lwz 0, 0x98(29)
    slwi 0, 0, 3
    stw 0, 0x320(29)
L_801B3444:
    li 31, 0x0
    li 30, 0x0
L_801B344C:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820180 # beq .L_801B35D8
    lwz 28, 0x4(29)
    mr 3, 31
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x4082016C # bne .L_801B35D8
    mr 3, 31
    bl fn_8022EA0C
    cmpw 31, 3
    .4byte 0x4082015C # bne .L_801B35D8
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082014C # bne .L_801B35D8
    mr 3, 31
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x4082013C # bne .L_801B35D8
    mr 3, 31
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4082012C # bne .L_801B35D8
    mr 3, 31
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x4082011C # bne .L_801B35D8
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 31
    lfs 0, 0xc(29)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(29)
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801B3544
    frsqrte 1, 4
    .4byte 0xC862B9F0 # lfd f3, lbl_8053E990@sda21(r0)
    .4byte 0xC842B9F8 # lfd f2, lbl_8053E998@sda21(r0)
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
    .4byte 0x48000088 # b .L_801B35C8
L_801B3544:
    .4byte 0xC802BA00 # lfd f0, lbl_8053E9A0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801B355C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801B35C8
L_801B355C:
    stfs 4, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801B3584
    .4byte 0x40800040 # bge .L_801B35B4
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801B359C
    .4byte 0x48000034 # b .L_801B35B4
L_801B3584:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B3594
    li 0, 0x1
    .4byte 0x48000028 # b .L_801B35B8
L_801B3594:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801B35B8
L_801B359C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B35AC
    li 0, 0x5
    .4byte 0x48000010 # b .L_801B35B8
L_801B35AC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801B35B8
L_801B35B4:
    li 0, 0x4
L_801B35B8:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801B35C8
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801B35C8:
    .4byte 0xC002BA08 # lfs f0, lbl_8053E9A8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800008 # bge .L_801B35D8
    addi 30, 30, 0x1
L_801B35D8:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE6C # blt .L_801B344C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 30, 3
    .4byte 0x418004C0 # blt .L_801B3AB0
    lwz 0, 0x1c(1)
    cmpwi 0, 0x0
    .4byte 0x418004B4 # blt .L_801B3AB0
    lfs 1, 0x18(1)
    .4byte 0xC002BA0C # lfs f0, lbl_8053E9AC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418104A4 # bgt .L_801B3AB0
    li 0, 0x9
    stw 0, 0x2f8(29)
    lwz 27, 0x310(29)
    cmpwi 27, 0x0
    .4byte 0x41800490 # blt .L_801B3AB0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182047C # beq .L_801B3AB0
    lfs 1, 0xc(3)
    .4byte 0xC002B9AC # lfs f0, lbl_8053E94C@sda21(r0)
    stfs 1, 0x6c(1)
    fadds 1, 1, 0
    .4byte 0xC002B9DC # lfs f0, lbl_8053E97C@sda21(r0)
    lfs 2, 0x10(3)
    stfs 2, 0x70(1)
    lfs 2, 0x14(3)
    stfs 2, 0x74(1)
    stfs 1, 0x6c(1)
    lfs 2, 0xc(29)
    fsubs 2, 2, 1
    fabs 2, 2
    frsp 2, 2
    fcmpo cr0, 2, 0
    .4byte 0x40810040 # ble .L_801B36B4
    .4byte 0xC042B9E0 # lfs f2, lbl_8053E980@sda21(r0)
    addi 3, 29, 0xc
    .4byte 0xC062B9E4 # lfs f3, lbl_8053E984@sda21(r0)
    bl fn_801F71A4
    li 0, 0x0
    stw 0, 0x98(29)
    lfs 1, 0xc(29)
    lfs 0, 0x6c(1)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801B36A8
    li 0, 0x1
    stw 0, 0x98(29)
L_801B36A8:
    li 0, 0x64
    stw 0, 0x304(29)
    .4byte 0x48000400 # b .L_801B3AB0
L_801B36B4:
    stfs 1, 0xc(29)
    li 0, 0x3
    .4byte 0xC002B990 # lfs f0, lbl_8053E930@sda21(r0)
    stw 0, 0x98(29)
    stfs 0, 0x338(29)
    lwz 0, 0x304(29)
    cmpwi 0, 0x0
    .4byte 0x408203E0 # bne .L_801B3AB0
    .4byte 0xC022B9C4 # lfs f1, lbl_8053E964@sda21(r0)
    lfs 0, 0x68(1)
    lfs 2, 0x10(29)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x408103C8 # ble .L_801B3AB0
    li 0, 0x0
    stb 0, 0x11c(3)
    bl fn_8022ADCC
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    li 0, 0xa
    stfs 0, 0x33c(29)
    stfs 0, 0x338(29)
    stfs 0, 0x334(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 0, 0x2f8(29)
    .4byte 0x48000394 # b .L_801B3AB0
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x41820384 # beq .L_801B3AB0
    bl fn_8022ADE4
    li 0, 0x0
    stw 0, 0x2f8(29)
    .4byte 0x48000374 # b .L_801B3AB0
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    lis 4, 0x4
    mr 3, 29
    li 5, 0x0
    stfs 0, 0x334(29)
    addi 4, 4, 0xb6
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    bl fn_801F0E34
    .4byte 0xC002BA10 # lfs f0, lbl_8053E9B0@sda21(r0)
    li 0, 0xc
    stfs 0, 0x44(29)
    stw 0, 0x2f8(29)
    .4byte 0x48000338 # b .L_801B3AB0
    lfs 1, 0x14(29)
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_801B37A0
    lfs 1, 0x44(29)
    .4byte 0xC002B990 # lfs f0, lbl_8053E930@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
    .4byte 0x48000314 # b .L_801B3AB0
L_801B37A0:
    stfs 0, 0x14(29)
    stfs 0, 0x44(29)
    lwz 3, 0x328(29)
    subi 0, 3, 0x1
    stw 0, 0x328(29)
    lwz 0, 0x328(29)
    cmpwi 0, 0x0
    .4byte 0x40810070 # ble .L_801B382C
    li 0, 0x12c
    stw 0, 0x308(29)
    lwz 27, 0x310(29)
    cmpwi 27, 0x0
    .4byte 0x41800038 # blt .L_801B3808
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801B3808
    lwz 0, 0x250(3)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_801B3808
    li 3, 0x1
    li 0, 0x7
    stb 3, 0x32c(29)
    stw 0, 0x2f8(29)
    .4byte 0x480002AC # b .L_801B3AB0
L_801B3808:
    lbz 0, 0x2fc(29)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801B3820
    li 0, 0x0
    stw 0, 0x2f8(29)
    .4byte 0x48000294 # b .L_801B3AB0
L_801B3820:
    li 0, 0x1
    stw 0, 0x2f8(29)
    .4byte 0x48000288 # b .L_801B3AB0
L_801B382C:
    li 0, 0xd
    stw 0, 0x2f8(29)
    .4byte 0x4800027C # b .L_801B3AB0
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x30c(29)
    mr 3, 29
    addi 4, 4, 0xb7
    li 5, 0x0
    stw 0, 0x310(29)
    stw 0, 0x314(29)
    stw 0, 0x318(29)
    stw 0, 0x31c(29)
    stw 0, 0x300(29)
    stw 0, 0x304(29)
    stw 0, 0x308(29)
    bl fn_801F0E34
    li 0, 0x4
    addi 4, 31, 0x0
    li 5, 0x0
    mtctr 0
L_801B3880:
    lwz 3, 0x98(29)
    lwz 0, 0x0(4)
    cmpw 3, 0
    .4byte 0x4082001C # bne .L_801B38A8
    stw 5, 0x30c(29)
    li 3, 0x8
    li 0, 0xe
    stw 3, 0x300(29)
    stw 0, 0x2f8(29)
    .4byte 0x4800020C # b .L_801B3AB0
L_801B38A8:
    addi 4, 4, 0x4
    addi 5, 5, 0x1
    .4byte 0x4200FFD0 # bdnz .L_801B3880
    .4byte 0x480001FC # b .L_801B3AB0
    lwz 0, 0x300(29)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_801B3928
    lwz 4, 0x30c(29)
    li 0, 0x8
    addi 3, 31, 0x0
    addi 4, 4, 0x1
    stw 4, 0x30c(29)
    lwz 4, 0x30c(29)
    clrlwi 4, 4, 30
    stw 4, 0x30c(29)
    stw 0, 0x300(29)
    lwz 0, 0x30c(29)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x98(29)
    lwz 3, 0x310(29)
    addi 0, 3, 0x1
    stw 0, 0x310(29)
    lwz 0, 0x310(29)
    cmpwi 0, 0xc
    .4byte 0x4180001C # blt .L_801B3928
    lwz 0, 0x98(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801B3928
    li 0, 0xf
    stw 0, 0x2f8(29)
    .4byte 0x4800018C # b .L_801B3AB0
L_801B3928:
    lwz 0, 0x98(29)
    slwi 0, 0, 3
    stw 0, 0x320(29)
    .4byte 0x4800017C # b .L_801B3AB0
    li 0, 0x0
    addi 4, 31, 0x24
    stw 0, 0x30c(29)
    addi 3, 31, 0x10
    li 0, 0x10
    lwz 5, 0x30c(29)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x300(29)
    lwz 4, 0x30c(29)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x320(29)
    stw 0, 0x2f8(29)
    lwz 0, 0x300(29)
    cmpwi 0, 0x0
    .4byte 0x40820138 # bne .L_801B3AB0
    lwz 3, 0x30c(29)
    addi 0, 3, 0x1
    stw 0, 0x30c(29)
    lwz 0, 0x30c(29)
    cmpwi 0, 0x4
    .4byte 0x40810020 # ble .L_801B39B0
    li 0, 0x0
    li 3, 0x1
    stw 0, 0x30c(29)
    li 0, 0x11
    .4byte 0x986D9030 # stb r3, lbl_8053ABF0@sda21(r0)
    stw 0, 0x2f8(29)
    .4byte 0x48000104 # b .L_801B3AB0
L_801B39B0:
    slwi 0, 0, 2
    addi 3, 31, 0x24
    lwzx 0, 3, 0
    addi 3, 31, 0x10
    stw 0, 0x300(29)
    lwz 0, 0x30c(29)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x320(29)
    .4byte 0x480000DC # b .L_801B3AB0
    .4byte 0x880D9028 # lbz r0, lbl_8053ABE8@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x408200D0 # bne .L_801B3AB0
    li 3, 0x0
    li 0, 0x12
    .4byte 0x986D9028 # stb r3, lbl_8053ABE8@sda21(r0)
    .4byte 0x986D9030 # stb r3, lbl_8053ABF0@sda21(r0)
    stw 0, 0x2f8(29)
    .4byte 0x480000B8 # b .L_801B3AB0
    li 0, 0x4
    addi 4, 31, 0x24
    stw 0, 0x30c(29)
    addi 3, 31, 0x10
    li 0, 0x13
    lwz 5, 0x30c(29)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x300(29)
    lwz 4, 0x30c(29)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x320(29)
    stw 0, 0x2f8(29)
    lwz 0, 0x300(29)
    cmpwi 0, 0x0
    .4byte 0x40820074 # bne .L_801B3AB0
    lwz 3, 0x328(29)
    addi 0, 3, 0x1
    stw 0, 0x328(29)
    lwz 0, 0x328(29)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_801B3A60
    li 0, 0x5
    stw 0, 0x328(29)
L_801B3A60:
    lwz 3, 0x30c(29)
    subi 0, 3, 0x1
    stw 0, 0x30c(29)
    lwz 0, 0x30c(29)
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_801B3A8C
    li 3, 0x5
    li 0, 0x1
    stw 3, 0x328(29)
    stw 0, 0x2f8(29)
    .4byte 0x48000028 # b .L_801B3AB0
L_801B3A8C:
    slwi 0, 0, 2
    addi 3, 31, 0x24
    lwzx 0, 3, 0
    addi 3, 31, 0x10
    stw 0, 0x300(29)
    lwz 0, 0x30c(29)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x320(29)
L_801B3AB0:
    lwz 0, 0x2f8(29)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_801B3AE4
    cmpwi 0, 0x4
    .4byte 0x41820024 # beq .L_801B3AE4
    cmpwi 0, 0x6
    .4byte 0x4182001C # beq .L_801B3AE4
    cmpwi 0, 0xc
    .4byte 0x41820014 # beq .L_801B3AE4
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_801B3AE4
    cmpwi 0, 0xa
    .4byte 0x40820044 # bne .L_801B3B24
L_801B3AE4:
    lwz 0, 0x300(29)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B3B24
    lwz 4, 0x98(29)
    li 0, 0x5
    lwz 3, 0x30c(29)
    slwi 4, 4, 3
    add 3, 4, 3
    stw 3, 0x320(29)
    stw 0, 0x300(29)
    lwz 3, 0x30c(29)
    addi 0, 3, 0x1
    stw 0, 0x30c(29)
    lwz 0, 0x30c(29)
    clrlwi 0, 0, 29
    stw 0, 0x30c(29)
L_801B3B24:
    lwz 3, 0x300(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B3B38
    subi 0, 3, 0x1
    stw 0, 0x300(29)
L_801B3B38:
    lwz 3, 0x304(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B3B4C
    subi 0, 3, 0x1
    stw 0, 0x304(29)
L_801B3B4C:
    lwz 3, 0x308(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B3B60
    subi 0, 3, 0x1
    stw 0, 0x308(29)
L_801B3B60:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    lmw 26, 0x88(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

