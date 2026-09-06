# Fresh-gap-hunt batch 12 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A670
etb_8000A670:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A670, 8

.global etb_8000A678
etb_8000A678:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A678, 8

.global etb_8000A680
etb_8000A680:
    .4byte 0x324A0000
    .4byte 0x00000000
.size etb_8000A680, 8

.section extabindex, "a"
.balign 4
.global eti_800184B4
eti_800184B4:
    .4byte fn_802224D0
    .4byte 0x00000198
    .4byte etb_8000A670
.size eti_800184B4, 12

.global eti_800184C0
eti_800184C0:
    .4byte fn_80222668
    .4byte 0x000000C8
    .4byte etb_8000A678
.size eti_800184C0, 12

.global eti_800184CC
eti_800184CC:
    .4byte fn_80222730
    .4byte 0x000002BC
    .4byte etb_8000A680
.size eti_800184CC, 12

.text
.balign 4
.global fn_802224D0
.global fn_80222668
.global fn_80222730

fn_802224D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmplwi 0, 0x7
    .4byte 0x41810168 # bgt .L_80222654
    lis 4, jumptable_804A6C14@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A6C14@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_80221408
    .4byte 0x48000148 # b .L_80222654
    bl fn_80221334
    .4byte 0x48000140 # b .L_80222654
    bl fn_802212AC
    .4byte 0x48000138 # b .L_80222654
    lwz 4, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 4, 0
    .4byte 0x41800128 # blt .L_80222654
    li 4, 0x5
    bl fn_80222668
    .4byte 0x4800011C # b .L_80222654
    li 4, 0x78
    bl fn_802216E8
    lfs 1, 0x14(31)
    .4byte 0xC002CF20 # lfs f0, lbl_8053FEC0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820100 # bne .L_80222654
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_80222574
    mr 3, 31
    li 4, 0x5
    bl fn_80222668
    .4byte 0x480000E4 # b .L_80222654
L_80222574:
    .4byte 0xC002CED0 # lfs f0, lbl_8053FE70@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x480000D8 # b .L_80222654
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810024 # ble .L_802225AC
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802225AC
    mr 3, 31
    li 4, 0x6
    bl fn_80222668
    .4byte 0x480000AC # b .L_80222654
L_802225AC:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x19
    .4byte 0x408200A0 # bne .L_80222654
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc6
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000088 # b .L_80222654
    lwz 0, 0x24c(31)
    cmpwi 0, 0xa
    .4byte 0x4180007C # blt .L_80222654
    lis 4, 0x6666
    lwz 5, 0x2bc(31)
    addi 0, 4, 0x6667
    mulhw 0, 0, 5
    srawi 0, 0, 2
    srwi 4, 0, 31
    add 0, 0, 4
    mulli 0, 0, 0xa
    subf. 0, 0, 5
    .4byte 0x40820034 # bne .L_80222634
    lwz 4, 0x2b8(31)
    addi 0, 4, 0x1
    stw 0, 0x2b8(31)
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x3
    .4byte 0x41800010 # blt .L_80222628
    li 4, 0x7
    bl fn_80222668
    .4byte 0x48000030 # b .L_80222654
L_80222628:
    li 4, 0x3
    bl fn_80222668
    .4byte 0x48000024 # b .L_80222654
L_80222634:
    li 4, 0x6
    bl fn_80222668
    .4byte 0x48000018 # b .L_80222654
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x4180000C # blt .L_80222654
    li 4, 0x1
    bl fn_8022149C
L_80222654:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80222668:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmpwi 31, 0x5
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x41820044 # beq .L_802226CC
    .4byte 0x40800010 # bge .L_8022269C
    cmpwi 31, 0x3
    .4byte 0x41820018 # beq .L_802226AC
    .4byte 0x48000074 # b .L_8022270C
L_8022269C:
    cmpwi 31, 0x7
    .4byte 0x41820058 # beq .L_802226F8
    .4byte 0x40800068 # bge .L_8022270C
    .4byte 0x4800003C # b .L_802226E4
L_802226AC:
    li 0, 0x78
    addi 3, 30, 0x270
    stw 0, 0x250(30)
    li 5, 0x0
    li 6, 0x0
    lwz 4, 0x98(30)
    bl fn_801D22DC
    .4byte 0x48000044 # b .L_8022270C
L_802226CC:
    addi 3, 30, 0x270
    li 4, 0x1b
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800002C # b .L_8022270C
L_802226E4:
    bl fn_80222730
    lwz 3, 0x2bc(30)
    addi 0, 3, 0x1
    stw 0, 0x2bc(30)
    .4byte 0x48000018 # b .L_8022270C
L_802226F8:
    lwz 4, 0x98(30)
    addi 3, 30, 0x270
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
L_8022270C:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80222730:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stfd 25, 0x70(1)
    psq_st 25, 0x78(1), 0, 0
    stfd 24, 0x60(1)
    psq_st 24, 0x68(1), 0, 0
    stfd 23, 0x50(1)
    psq_st 23, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 27, 3
    lwz 28, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_802227A4
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802227A8
L_802227A4:
    addi 4, 3, 0xdc
L_802227A8:
    lfs 1, 0x8(4)
    lis 3, 0x19
    lfs 0, 0x0(4)
    addi 30, 3, 0x660d
    .4byte 0xC0A2CF24 # lfs f5, lbl_8053FEC4@sda21(r0)
    li 28, 0x0
    fsubs 2, 1, 0
    .4byte 0xC002CF30 # lfs f0, lbl_8053FED0@sda21(r0)
    lfs 1, 0xc(4)
    lis 31, 0x4f4b
    lfs 6, 0x4(4)
    fmuls 7, 5, 2
    .4byte 0xC062CF2C # lfs f3, lbl_8053FECC@sda21(r0)
    fsubs 2, 1, 6
    lfs 1, 0xc(27)
    fmuls 0, 0, 7
    .4byte 0xC082CF28 # lfs f4, lbl_8053FEC8@sda21(r0)
    fadds 2, 3, 2
    .4byte 0xC362CF34 # lfs f27, lbl_8053FED4@sda21(r0)
    fsubs 26, 6, 3
    .4byte 0xC382CF38 # lfs f28, lbl_8053FED8@sda21(r0)
    fctiwz 0, 0
    .4byte 0xC3A2CF3C # lfs f29, lbl_8053FEDC@sda21(r0)
    fadds 24, 4, 2
    .4byte 0xC3C2CF40 # lfs f30, lbl_8053FEE0@sda21(r0)
    fnmsubs 25, 5, 7, 1
    .4byte 0xC3E2CF20 # lfs f31, lbl_8053FEC0@sda21(r0)
    stfd 0, 0x30(1)
    .4byte 0xC2E2CF4C # lfs f23, lbl_8053FEEC@sda21(r0)
    lwz 3, 0x34(1)
    addi 29, 3, 0x1
    .4byte 0x48000164 # b .L_80222988
L_80222828:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 30
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(5)
    srwi 4, 3, 9
    mullw 3, 0, 30
    oris 0, 4, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 0, 0, 29
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    fmsubs 0, 28, 0, 29
    srwi 0, 0, 9
    stfs 31, 0x28(1)
    oris 0, 0, 0x3f80
    fmuls 0, 27, 0
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fadds 0, 26, 0
    fsubs 1, 1, 29
    stfs 0, 0x24(1)
    fmsubs 0, 28, 1, 29
    fmuls 0, 30, 0
    fadds 0, 25, 0
    stfs 0, 0x20(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(27)
    addi 4, 31, 0x544d
    addi 6, 1, 0x20
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 26, 3
    .4byte 0x418000B0 # blt .L_80222980
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182009C # beq .L_80222980
    li 0, 0x2
    .4byte 0xC062CF20 # lfs f3, lbl_8053FEC0@sda21(r0)
    stw 0, 0x98(3)
    lis 4, 0x19
    addi 4, 4, 0x660d
    .4byte 0xC082CF3C # lfs f4, lbl_8053FEDC@sda21(r0)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    .4byte 0xC022CF38 # lfs f1, lbl_8053FED8@sda21(r0)
    lwz 5, 0xb4(6)
    .4byte 0xC042CF48 # lfs f2, lbl_8053FEE8@sda21(r0)
    mullw 4, 5, 4
    .4byte 0xC002CF44 # lfs f0, lbl_8053FEE4@sda21(r0)
    stfs 3, 0x14(1)
    stfs 3, 0x1c(1)
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 5, 0x8(1)
    fsubs 5, 5, 4
    fmsubs 1, 1, 5, 4
    fmadds 0, 2, 1, 0
    stfs 0, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
    stb 0, 0x194(3)
    lfs 0, 0x40(3)
    fdivs 0, 4, 0
    fmuls 0, 24, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    stw 0, 0x23c(3)
L_80222980:
    fadds 25, 25, 23
    addi 28, 28, 0x1
L_80222988:
    cmpw 28, 29
    .4byte 0x4180FE9C # blt .L_80222828
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    psq_l 25, 0x78(1), 0, 0
    lfd 25, 0x70(1)
    psq_l 24, 0x68(1), 0, 0
    lfd 24, 0x60(1)
    psq_l 23, 0x58(1), 0, 0
    lfd 23, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0xe4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

