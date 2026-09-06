# SAYA cluster, part 12/18 (Track A byte-match + overview - 780B). The
# REAL update() master dispatcher - calls into all 5 state-handler
# bodies above (fn_801A41D8/fn_801A4754/fn_801A4D74/fn_801A4FB4/
# fn_801A5400) plus the confirmed effect spawn fn_8013CC50, lookup-
# table accessor Warp_GetLookupTableValue, fn_801F2618/fn_801F305C, and an
# unfamiliar fn_802242F4.
.section extab, "a"
.balign 4
.global etb_800079FC
etb_800079FC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800079FC, 8

.section extabindex, "a"
.balign 4
.global eti_80014878
eti_80014878:
    .4byte fn_801A6160
    .4byte 0x0000030C
    .4byte etb_800079FC
.size eti_80014878, 12

.text
.balign 4
.global fn_801A6160

fn_801A6160:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    li 29, 0x0
    lfs 0, 0x70(3)
    stfs 0, 0x40(1)
    lfs 0, 0x74(3)
    stfs 0, 0x44(1)
    lfs 0, 0x78(3)
    stfs 0, 0x48(1)
    lfs 0, 0x7c(3)
    stfs 0, 0x4c(1)
    lfs 2, 0x10(3)
    lfs 1, 0x14(3)
    lfs 0, 0xc(3)
    fsubs 1, 2, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 30, 0xa8(3)
    cmpwi 30, 0x0
    .4byte 0x41820070 # beq .L_801A6230
    cmpwi 30, 0x1e
    .4byte 0x4082003C # bne .L_801A6204
    bl Warp_GetLookupTableValue
    .4byte 0xC002B630 # lfs f0, lbl_8053E5D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801A61E0
    fmr 1, 0
L_801A61E0:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x17c
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801A6204:
    subic. 0, 30, 0x1
    .4byte 0x41810018 # bgt .L_801A6220
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801A6220:
    subi 0, 30, 0x1
    li 3, 0x1
    stw 0, 0xa8(31)
    .4byte 0x48000224 # b .L_801A6450
L_801A6230:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_801A6250
    bl fn_802242F4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801A6250
    li 3, 0x1
    .4byte 0x48000204 # b .L_801A6450
L_801A6250:
    lwz 0, 0xb0(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801A6268
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_801A6270
L_801A6268:
    li 3, 0x0
    .4byte 0x480001E4 # b .L_801A6450
L_801A6270:
    lfs 1, 0x40(1)
    li 0, -0x1
    lfs 4, 0x8(1)
    mr 3, 31
    lfs 0, 0x48(1)
    addi 4, 1, 0x40
    fadds 3, 1, 4
    lfs 2, 0x44(1)
    lfs 5, 0xc(1)
    fadds 1, 0, 4
    lfs 0, 0x4c(1)
    addi 5, 1, 0x8
    fadds 2, 2, 5
    .4byte 0x900D8540 # stw r0, lbl_8053A100@sda21(r0)
    fadds 0, 0, 5
    stfs 3, 0x40(1)
    stfs 2, 0x44(1)
    stfs 1, 0x48(1)
    stfs 0, 0x4c(1)
    bl fn_801A5400
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_801A62D0
    li 29, 0x3
    .4byte 0x48000060 # b .L_801A632C
L_801A62D0:
    mr 3, 31
    addi 4, 1, 0x40
    addi 5, 1, 0x8
    bl fn_801A4D74
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_801A62F0
    li 29, 0x3
    .4byte 0x48000040 # b .L_801A632C
L_801A62F0:
    mr 3, 31
    addi 4, 1, 0x40
    addi 5, 1, 0x8
    bl fn_801A4754
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_801A6310
    li 29, 0x1
    .4byte 0x48000020 # b .L_801A632C
L_801A6310:
    mr 3, 31
    addi 4, 1, 0x40
    addi 5, 1, 0x8
    bl fn_801A41D8
    cmpwi 3, 0x32
    .4byte 0x40820008 # bne .L_801A632C
    li 29, 0x1
L_801A632C:
    cmpwi 3, 0xff
    .4byte 0x4082000C # bne .L_801A633C
    li 3, 0x0
    .4byte 0x48000118 # b .L_801A6450
L_801A633C:
    cmpwi 29, 0x1
    .4byte 0x41810018 # bgt .L_801A6358
    mr 3, 31
    bl fn_801A4FB4
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_801A6358
    li 29, 0x2
L_801A6358:
    lwz 3, 0xa4(31)
    cmpwi 3, 0x0
    .4byte 0x418200DC # beq .L_801A643C
    lfs 0, 0x14(31)
    .4byte 0xC042B634 # lfs f2, lbl_8053E5D4@sda21(r0)
    fcmpo cr0, 0, 2
    .4byte 0x40810054 # ble .L_801A63C4
    lfs 1, 0x40(31)
    lfs 0, 0x3c(31)
    stfs 1, 0x38(1)
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    stfs 0, 0x34(1)
    psq_l 0, 0x34(1), 0, 0
    stfs 2, 0x3c(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 2, 0x44(31)
    lfs 3, 0x10(31)
    lfs 0, 0xc(31)
    lfs 2, 0x14(31)
    stfs 0, 0x28(1)
    fsubs 0, 2, 1
    stfs 3, 0x2c(1)
    psq_l 1, 0x28(1), 0, 0
    stfs 0, 0x30(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x48000024 # b .L_801A63E4
L_801A63C4:
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 1, 0x20(1)
    stfs 0, 0x1c(1)
    psq_l 0, 0x1c(1), 0, 0
    stfs 2, 0x24(1)
    psq_st 0, 0xc(31), 0, 0
    stfs 2, 0x14(31)
L_801A63E4:
    subi 0, 3, 0x1
    mr 3, 31
    stw 0, 0xa4(31)
    li 29, 0x1
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_801A643C
    lwz 0, 0xbc(31)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_801A6428
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    psq_l 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_801A6428:
    mr 3, 31
    li 29, 0x2
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_801A643C:
    cmpwi 29, 0x1
    .4byte 0x4081000C # ble .L_801A644C
    li 0, 0x0
    stw 0, 0xa4(31)
L_801A644C:
    mr 3, 29
L_801A6450:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

