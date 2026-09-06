.section extab, "a"
.balign 4
.global etb_8000A6F0
etb_8000A6F0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A6F0, 8

.global etb_8000A6F8
etb_8000A6F8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A6F8, 8

.global etb_8000A700
etb_8000A700:
    .4byte 0x090A0000
    .4byte 0x00000000
.size etb_8000A700, 8

.global etb_8000A708
etb_8000A708:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000A708, 8

.section extabindex, "a"
.balign 4
.global eti_80018574
eti_80018574:
    .4byte fn_80223608
    .4byte 0x0000005C
    .4byte etb_8000A6F0
.size eti_80018574, 12

.global eti_80018580
eti_80018580:
    .4byte fn_80223664
    .4byte 0x00000268
    .4byte etb_8000A6F8
.size eti_80018580, 12

.global eti_8001858C
eti_8001858C:
    .4byte fn_802238CC
    .4byte 0x0000020C
    .4byte etb_8000A700
.size eti_8001858C, 12

.global eti_80018598
eti_80018598:
    .4byte fn_80223AD8
    .4byte 0x0000043C
    .4byte etb_8000A708
.size eti_80018598, 12

.text
.balign 4
.global fn_80223608
.global fn_80223664
.global fn_802238CC
.global fn_80223AD8

fn_80223608:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80221210
    lwz 3, 0x2bc(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x2c0(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80223664:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    lwz 0, 0x248(3)
    cmplwi 0, 0x8
    .4byte 0x41810224 # bgt .L_802238B0
    lis 4, jumptable_804A6DA4@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A6DA4@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_80221408
    .4byte 0x48000204 # b .L_802238B0
    bl fn_80221334
    .4byte 0x480001FC # b .L_802238B0
    bl fn_802212AC
    .4byte 0x480001F4 # b .L_802238B0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x418001E8 # blt .L_802238B0
    li 4, 0x5
    bl fn_80223AD8
    .4byte 0x480001DC # b .L_802238B0
    li 4, 0x78
    bl fn_802216E8
    lfs 1, 0x14(31)
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408201C0 # bne .L_802238B0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_80223710
    mr 3, 31
    li 4, 0x5
    bl fn_80223AD8
    .4byte 0x480001A4 # b .L_802238B0
L_80223710:
    .4byte 0xC002CED0 # lfs f0, lbl_8053FE70@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000198 # b .L_802238B0
    lis 3, 0x4
    lwz 4, 0x4(31)
    addi 30, 3, 0xe7
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x40820010 # bne .L_80223748
    lis 3, 0x4
    addi 30, 3, 0xe8
    .4byte 0x48000040 # b .L_80223784
L_80223748:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80224B88
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80223768
    lis 3, 0x4
    addi 30, 3, 0xe9
    .4byte 0x48000020 # b .L_80223784
L_80223768:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80224E88
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80223784
    lis 3, 0x4
    addi 30, 3, 0xea
L_80223784:
    mr 3, 31
    mr 4, 30
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_802238CC
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081010C # ble .L_802238B0
    clrlwi. 0, 29, 24
    .4byte 0x41820104 # beq .L_802238B0
    lwz 3, 0x2bc(31)
    bl fn_801EE434
    lwz 3, 0x2c0(31)
    bl fn_801EE434
    li 0, 0x0
    mr 3, 31
    stw 0, 0x2bc(31)
    li 4, 0x6
    stw 0, 0x2c0(31)
    bl fn_80223AD8
    .4byte 0x480000D8 # b .L_802238B0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408100CC # ble .L_802238B0
    lfs 1, 0x14(31)
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200B8 # bne .L_802238B0
    li 4, 0x7
    bl fn_80223AD8
    .4byte 0x480000AC # b .L_802238B0
    lwz 4, 0x24c(31)
    cmpwi 4, 0x7b
    .4byte 0x41800048 # blt .L_80223858
    lwz 0, 0x2b8(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80223838
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2b8(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2b8(31)
L_80223838:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xe
    bl fn_801CDC8C
    mr 3, 31
    li 4, 0x8
    bl fn_80223AD8
    .4byte 0x4800005C # b .L_802238B0
L_80223858:
    lis 3, 0x2aab
    subi 0, 3, 0x5555
    mulhw 3, 0, 4
    srwi 0, 3, 31
    add 0, 3, 0
    mulli 0, 0, 0x6
    subf. 0, 0, 4
    .4byte 0x4082003C # bne .L_802238B0
    lwz 3, 0x98(31)
    bl fn_801CD30C
    stw 3, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    lwz 4, 0x98(31)
    bl fn_801D22DC
    .4byte 0x48000018 # b .L_802238B0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1e
    .4byte 0x4180000C # blt .L_802238B0
    li 4, 0x1
    bl fn_8022149C
L_802238B0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802238CC:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    mr 31, 3
    .4byte 0xC3E2CF68 # lfs f31, lbl_8053FF08@sda21(r0)
    .4byte 0xC3A2CF6C # lfs f29, lbl_8053FF0C@sda21(r0)
    lwz 0, 0x248(3)
    fmr 30, 31
    fmr 28, 29
    cmpwi 0, 0x5
    .4byte 0x408200AC # bne .L_802239C4
    .4byte 0xC3E2CF70 # lfs f31, lbl_8053FF10@sda21(r0)
    .4byte 0xC3A2CF74 # lfs f29, lbl_8053FF14@sda21(r0)
    lwz 0, 0x98(31)
    fmr 30, 31
    fmr 28, 29
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_80223990
    .4byte 0x40800014 # bge .L_8022394C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80223958
    .4byte 0x40800030 # bge .L_80223974
    .4byte 0x4800007C # b .L_802239C4
L_8022394C:
    cmpwi 0, 0x4
    .4byte 0x40800074 # bge .L_802239C4
    .4byte 0x48000058 # b .L_802239AC
L_80223958:
    .4byte 0xC022CF78 # lfs f1, lbl_8053FF18@sda21(r0)
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    fadds 31, 31, 1
    fadds 30, 30, 0
    fadds 29, 29, 1
    fadds 28, 28, 0
    .4byte 0x48000054 # b .L_802239C4
L_80223974:
    .4byte 0xC022CF80 # lfs f1, lbl_8053FF20@sda21(r0)
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    fadds 31, 31, 1
    fadds 30, 30, 0
    fadds 29, 29, 1
    fadds 28, 28, 0
    .4byte 0x48000038 # b .L_802239C4
L_80223990:
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    .4byte 0xC002CF78 # lfs f0, lbl_8053FF18@sda21(r0)
    fadds 31, 31, 1
    fadds 30, 30, 0
    fadds 29, 29, 1
    fadds 28, 28, 0
    .4byte 0x4800001C # b .L_802239C4
L_802239AC:
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    .4byte 0xC002CF80 # lfs f0, lbl_8053FF20@sda21(r0)
    fadds 31, 31, 1
    fadds 30, 30, 0
    fadds 29, 29, 1
    fadds 28, 28, 0
L_802239C4:
    fsubs 0, 29, 31
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x408100D4 # ble .L_80223AA4
    fsubs 0, 28, 30
    fcmpo cr0, 0, 1
    .4byte 0x408100C8 # ble .L_80223AA4
    lfs 0, 0xc(31)
    addi 4, 1, 0x2c
    lfs 2, 0x10(31)
    li 5, -0x1
    fadds 31, 31, 0
    lwz 6, 0x4(31)
    fadds 30, 30, 2
    stfs 1, 0x34(1)
    fadds 29, 29, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    fadds 28, 28, 2
    stfs 31, 0x2c(1)
    li 7, 0x0
    li 8, 0x0
    stfs 30, 0x30(1)
    bl fn_802A20F0
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    addi 4, 1, 0x20
    lwz 6, 0x4(31)
    li 5, -0x1
    stfs 29, 0x20(1)
    li 7, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 8, 0x0
    stfs 30, 0x24(1)
    stfs 0, 0x28(1)
    bl fn_802A20F0
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    addi 4, 1, 0x14
    lwz 6, 0x4(31)
    li 5, -0x1
    stfs 29, 0x14(1)
    li 7, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 8, 0x0
    stfs 28, 0x18(1)
    stfs 0, 0x1c(1)
    bl fn_802A20F0
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    addi 4, 1, 0x8
    lwz 6, 0x4(31)
    li 5, -0x1
    stfs 31, 0x8(1)
    li 7, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 8, 0x0
    stfs 28, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_802A20F0
L_80223AA4:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lwz 0, 0x84(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80223AD8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 31, 4
    mr 30, 3
    cmpwi 31, 0x6
    .4byte 0x41820098 # beq .L_80223B9C
    .4byte 0x40800010 # bge .L_80223B18
    cmpwi 31, 0x5
    .4byte 0x40800014 # bge .L_80223B24
    .4byte 0x480003D0 # b .L_80223EE4
L_80223B18:
    cmpwi 31, 0x9
    .4byte 0x408003C8 # bge .L_80223EE4
    .4byte 0x48000348 # b .L_80223E68
L_80223B24:
    .4byte 0xC002CF84 # lfs f0, lbl_8053FF24@sda21(r0)
    addi 3, 30, 0x270
    li 5, 0x2
    stfs 0, 0x258(30)
    lwz 4, 0x98(30)
    addi 4, 4, 0x14
    bl fn_801D22A0
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022CF68 # lfs f1, lbl_8053FF08@sda21(r0)
    li 5, 0x116
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2bc(30)
    addi 4, 30, 0xc
    .4byte 0xC022CF68 # lfs f1, lbl_8053FF08@sda21(r0)
    li 5, 0x115
    lwz 3, 0x4(30)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2c0(30)
    .4byte 0x4800034C # b .L_80223EE4
L_80223B9C:
    .4byte 0xC062CF7C # lfs f3, lbl_8053FF1C@sda21(r0)
    lis 3, lbl_80539D44@ha
    .4byte 0xC022CF88 # lfs f1, lbl_8053FF28@sda21(r0)
    stfs 3, 0x258(30)
    lfs 0, 0x3c(30)
    lfs 2, 0x40(30)
    fneg 0, 0
    fneg 2, 2
    stfs 0, 0x3c(30)
    stfs 2, 0x40(30)
    stfs 3, 0x44(30)
    psq_l 2, 0x3c(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 2, 2, 2
    lfs 6, 0x44(30)
    fmuls 0, 1, 0
    ps_madd 6, 6, 6, 2
    ps_sum0 6, 6, 2, 2
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80223C40
    fcmpo cr0, 6, 3
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80223C04
    fmr 4, 6
    .4byte 0x48000028 # b .L_80223C28
L_80223C04:
    frsqrte 3, 6
    .4byte 0xC042CF8C # lfs f2, lbl_8053FF2C@sda21(r0)
    .4byte 0xC002CF90 # lfs f0, lbl_8053FF30@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 0, 2, 0
    fmr 4, 0
L_80223C28:
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 4
    ps_muls0 0, 0, 4
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
L_80223C40:
    .4byte 0xC0A2CF94 # lfs f5, lbl_8053FF34@sda21(r0)
    addi 3, 30, 0x270
    psq_l 0, 0x3c(30), 0, 0
    li 5, 0x0
    psq_l 1, 0x44(30), 1, 0
    li 6, 0x0
    ps_muls0 2, 0, 5
    .4byte 0xC002CF98 # lfs f0, lbl_8053FF38@sda21(r0)
    ps_muls0 1, 1, 5
    psq_st 2, 0x3c(30), 0, 0
    psq_st 1, 0x44(30), 1, 0
    stfs 0, 0x44(30)
    lwz 4, 0x98(30)
    addi 4, 4, 0xc
    bl fn_801D22DC
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4082004C # bne .L_80223CD4
    bl SpatialRegistry_GetBase
    lis 4, 0x4c46
    lwz 5, 0x4(30)
    addi 4, 4, 0x474e
    bl fn_801F7884
    mr. 29, 3
    .4byte 0x41800030 # blt .L_80223CD4
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80223CD4
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x20
    lfs 0, 0x14(30)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x28(1)
    bl fn_8036D858
L_80223CD4:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xeb
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x98(30)
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    cmpwi 0, 0x2
    stfs 1, 0x44(1)
    stfs 1, 0x48(1)
    stfs 1, 0x4c(1)
    .4byte 0x4080003C # bge .L_80223D3C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80223D10
    .4byte 0x48000030 # b .L_80223D3C
L_80223D10:
    .4byte 0xC002CF70 # lfs f0, lbl_8053FF10@sda21(r0)
    stfs 1, 0x44(1)
    stfs 0, 0x48(1)
    stfs 1, 0x4c(1)
    bl GetRoomConfigRecord
    lwz 4, 0x4(30)
    li 5, 0x0
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    .4byte 0xC042CF98 # lfs f2, lbl_8053FF38@sda21(r0)
    bl fn_802D79E8
    .4byte 0x4800001C # b .L_80223D54
L_80223D3C:
    bl GetRoomConfigRecord
    lwz 4, 0x4(30)
    li 5, 0x0
    .4byte 0xC022CF98 # lfs f1, lbl_8053FF38@sda21(r0)
    .4byte 0xC042CF7C # lfs f2, lbl_8053FF1C@sda21(r0)
    bl fn_802D79E8
L_80223D54:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    lfs 1, 0x40(30)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x3c(30)
    fneg 4, 1
    .4byte 0xC042CF7C # lfs f2, lbl_8053FF1C@sda21(r0)
    fneg 3, 0
    .4byte 0xC022CF88 # lfs f1, lbl_8053FF28@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    stfs 4, 0x3c(1)
    fmuls 0, 1, 0
    stfs 3, 0x38(1)
    psq_l 1, 0x38(1), 0, 0
    stfs 2, 0x40(1)
    ps_mul 1, 1, 1
    ps_madd 4, 2, 2, 1
    ps_sum0 4, 4, 1, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80223E00
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80223DC4
    fmr 31, 4
    .4byte 0x48000028 # b .L_80223DE8
L_80223DC4:
    frsqrte 3, 4
    .4byte 0xC042CF8C # lfs f2, lbl_8053FF2C@sda21(r0)
    .4byte 0xC002CF90 # lfs f0, lbl_8053FF30@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80223DE8:
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_80223E00:
    lfs 0, 0x14(30)
    addi 4, 1, 0x2c
    psq_l 1, 0xc(30), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x44(1), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x4c(1), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0x0(4), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    stfs 0, 0x34(1)
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x408000A0 # bge .L_80223EE4
    .4byte 0xC022CF68 # lfs f1, lbl_8053FF08@sda21(r0)
    addi 6, 1, 0x38
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 5, 0x3
    fmr 2, 1
    lwz 3, 0x20(3)
    bl fn_802F601C
    .4byte 0x48000080 # b .L_80223EE4
L_80223E68:
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    addi 3, 30, 0x270
    li 5, 0x0
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    lwz 4, 0x98(30)
    bl fn_801D22A0
    cmpwi 31, 0x7
    .4byte 0x40820054 # bne .L_80223EE4
    psq_l 2, 0xc(30), 0, 0
    addi 4, 1, 0x14
    lfs 0, 0x14(30)
    li 5, 0x565
    .4byte 0xC022CF8C # lfs f1, lbl_8053FF2C@sda21(r0)
    li 6, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x1c(1)
    li 10, 0x1
    lwz 3, 0x4(30)
    bl fn_8013CC50
    stw 3, 0x2b8(30)
    lis 4, 0x4
    mr 3, 30
    li 5, 0x0
    addi 4, 4, 0xe
    bl fn_801F0E34
L_80223EE4:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

