# fn_80390EBC - actor@lbl_804AF490: multi-entry-point state-behavior function (0x524)
# Same novel fused shape as actor #1's blobs: internal jumptable dispatch
# whose case-block addresses are ALSO independently referenced by this
# actor's own vtable slots (vt+0xc through vt+0x2c). Calls fn_80396F94 (x3),
# fn_80078E30 (x3), fn_803944EC (x2), fn_80078BAC (x2), fn_803A2F74,
# fn_80396884. Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000EEE8
etb_8000EEE8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000EEE8, 8

.section extabindex, "a"
.balign 4
.global eti_8001ED30
eti_8001ED30:
    .4byte fn_80390EBC
    .4byte 0x00000524
    .4byte etb_8000EEE8
.size eti_8001ED30, 12

.text
.balign 4
.global fn_80390EBC

fn_80390EBC:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    mr 30, 3
    stw 29, 0x64(1)
    lbz 0, 0x24(3)
    cmplwi 0, 0x8
    .4byte 0x4181044C # bgt .L_8039132C
    lis 3, jumptable_804AF49C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF49C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lhz 0, 0x28(30)
    rlwinm 0, 0, 0, 31, 29
    sth 0, 0x28(30)
    .4byte 0x48000424 # b .L_8039132C
    li 0, 0x0
    li 3, -0x1
    stb 0, 0x43(30)
    li 0, 0x1
    stw 3, 0x2c(30)
    lwz 3, 0x4c(30)
    stb 0, 0x1aa(3)
    lha 0, 0x3c(30)
    lwz 3, 0x4c(30)
    sth 0, 0x190(3)
    lha 0, 0x3e(30)
    lwz 3, 0x4c(30)
    sth 0, 0x192(3)
    lwz 0, 0x34(30)
    lwz 3, 0x4c(30)
    stw 0, 0x178(3)
    lwz 0, 0x38(30)
    lwz 3, 0x4c(30)
    stw 0, 0x17c(3)
    lwz 31, 0x4c(30)
    lwz 3, 0x8(31)
    bl fn_80078BAC
    lwz 4, 0x8(31)
    lwz 3, 0x4(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80390F7C
    li 0, 0x0
    stw 0, 0x8(3)
L_80390F7C:
    lwz 3, 0x8(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80390F90
    li 0, 0x0
    stw 0, 0x8(3)
L_80390F90:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x10(4)
    stb 3, 0x1a2(31)
    stb 0, 0x44(30)
    psq_l 1, 0x50(30), 0, 0
    lfs 0, 0x58(30)
    lwz 0, 0x20(30)
    lwz 31, 0x4c(30)
    psq_st 1, 0x38(1), 0, 0
    srwi 4, 0, 16
    clrlwi 5, 0, 16
    stw 0, 0x14c(31)
    stfs 0, 0x40(1)
    lwz 3, 0x8(31)
    psq_st 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    bl fn_80078E30
    psq_l 0, 0x44(1), 0, 0
    li 0, 0x2
    lfs 1, 0x4c(1)
    psq_st 0, 0x98(31), 0, 0
    lfs 0, 0x38(1)
    stfs 1, 0xa0(31)
    lfs 1, 0x3c(1)
    stfs 0, 0xa4(31)
    lfs 0, 0x40(1)
    stfs 1, 0xa8(31)
    stfs 0, 0xac(31)
    stb 0, 0x24(30)
    .4byte 0x48000324 # b .L_8039132C
    lbz 0, 0x25(30)
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_80391024
    lwz 3, 0x4c(30)
    lwz 3, 0x10(3)
    bl fn_803A2F74
L_80391024:
    lwz 3, 0x4c(30)
    bl fn_80396F94
    lwz 3, 0x4c(30)
    li 4, 0x0
    bl fn_8039499C
    lwz 3, 0x4c(30)
    lbz 0, 0x3ae(3)
    stb 0, 0x24(30)
    lwz 3, 0x4c(30)
    addi 0, 3, 0x1ab
    stw 0, 0xc(30)
    .4byte 0x480002DC # b .L_8039132C
    lwz 3, 0x4c(30)
    lwz 0, 0x168(3)
    stw 0, 0x2c(30)
    .4byte 0x480002CC # b .L_8039132C
    lwz 4, 0x4c(30)
    .4byte 0x386D9144 # li r3, lbl_8053AD04@sda21
    lwz 0, 0x168(4)
    stw 0, 0x2c(30)
    lwz 0, 0x18(30)
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x418202AC # beq .L_8039132C
    li 3, 0x0
    li 0, 0x5
    stb 3, 0x43(30)
    stb 0, 0x24(30)
    .4byte 0x48000298 # b .L_8039132C
    lwz 3, 0x4c(30)
    bl fn_80396884
    lwz 3, 0x4c(30)
    lwz 0, 0x168(3)
    stw 0, 0x2c(30)
    .4byte 0x48000280 # b .L_8039132C
    lhz 0, 0x28(30)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x4182001C # beq .L_803910D4
    lis 4, lbl_8050DB0C@ha
    lwz 3, 0x48(30)
    addi 4, 4, lbl_8050DB0C@l
    lfs 1, 0x38(4)
    bl fn_803944EC
    .4byte 0x48000010 # b .L_803910E0
L_803910D4:
    lwz 3, 0x48(30)
    .4byte 0xC02201C8 # lfs f1, lbl_80543168@sda21(r0)
    bl fn_803944EC
L_803910E0:
    li 0, -0x1
    li 4, 0x0
    stw 0, 0x2c(30)
    li 0, 0x1
    li 31, 0x0
    lwz 3, 0x48(30)
    stb 4, 0x1aa(3)
    lha 4, 0x3c(30)
    lwz 3, 0x48(30)
    sth 4, 0x190(3)
    lha 4, 0x3e(30)
    lwz 3, 0x48(30)
    sth 4, 0x192(3)
    lwz 4, 0x34(30)
    lwz 3, 0x48(30)
    stw 4, 0x178(3)
    lwz 4, 0x38(30)
    lwz 3, 0x48(30)
    stw 4, 0x17c(3)
    stb 0, 0x44(30)
    lhz 3, 0x28(30)
    extrwi. 0, 3, 1, 22
    .4byte 0x4182000C # beq .L_80391144
    li 31, 0x1
    .4byte 0x48000010 # b .L_80391150
L_80391144:
    rlwinm. 0, 3, 0, 21, 21
    .4byte 0x41820008 # beq .L_80391150
    li 31, 0x2
L_80391150:
    lwz 29, 0x48(30)
    lwz 3, 0x8(29)
    bl fn_80078BAC
    lwz 3, 0x8(29)
    lwz 4, 0x4(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_80391174
    li 0, 0x0
    stw 0, 0x8(4)
L_80391174:
    lwz 4, 0x8(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_80391188
    li 0, 0x0
    stw 0, 0x8(4)
L_80391188:
    li 0, 0x0
    stw 0, 0x10(3)
    stb 31, 0x1a2(29)
    lwz 29, 0x30(30)
    cmpwi 29, -0x1
    .4byte 0x418200B4 # beq .L_80391250
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_803911D0
    lfs 2, 0xc(3)
    lfs 1, 0x10(3)
    lfs 0, 0x14(3)
    stfs 2, 0x50(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    .4byte 0x4800001C # b .L_803911E8
L_803911D0:
    lfs 2, 0x50(30)
    lfs 1, 0x54(30)
    lfs 0, 0x58(30)
    stfs 2, 0x50(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
L_803911E8:
    lwz 0, 0x20(30)
    psq_l 3, 0x50(30), 0, 0
    lfs 2, 0x58(30)
    srwi 4, 0, 16
    lwz 29, 0x48(30)
    clrlwi 5, 0, 16
    psq_l 1, 0x50(1), 0, 0
    stw 0, 0x14c(29)
    lfs 0, 0x58(1)
    psq_st 1, 0x20(1), 0, 0
    lwz 3, 0x8(29)
    stfs 0, 0x28(1)
    psq_st 3, 0x2c(1), 0, 0
    stfs 2, 0x34(1)
    bl fn_80078E30
    psq_l 0, 0x2c(1), 0, 0
    lfs 1, 0x34(1)
    psq_st 0, 0x98(29), 0, 0
    lfs 0, 0x20(1)
    stfs 1, 0xa0(29)
    lfs 1, 0x24(1)
    stfs 0, 0xa4(29)
    lfs 0, 0x28(1)
    stfs 1, 0xa8(29)
    stfs 0, 0xac(29)
    .4byte 0x48000060 # b .L_803912AC
L_80391250:
    psq_l 1, 0x50(30), 0, 0
    lfs 0, 0x58(30)
    lwz 0, 0x20(30)
    lwz 29, 0x48(30)
    psq_st 1, 0x8(1), 0, 0
    srwi 4, 0, 16
    clrlwi 5, 0, 16
    stw 0, 0x14c(29)
    stfs 0, 0x10(1)
    lwz 3, 0x8(29)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    bl fn_80078E30
    psq_l 0, 0x14(1), 0, 0
    lfs 1, 0x1c(1)
    psq_st 0, 0x98(29), 0, 0
    lfs 0, 0x8(1)
    stfs 1, 0xa0(29)
    lfs 1, 0xc(1)
    stfs 0, 0xa4(29)
    lfs 0, 0x10(1)
    stfs 1, 0xa8(29)
    stfs 0, 0xac(29)
L_803912AC:
    li 0, 0x7
    stb 0, 0x24(30)
    .4byte 0x48000078 # b .L_8039132C
    lwz 3, 0x48(30)
    li 0, 0x7
    stb 0, 0x3ae(3)
    lwz 3, 0x48(30)
    bl fn_80396F94
    lhz 0, 0x28(30)
    ori 0, 0, 0x2
    sth 0, 0x28(30)
    lwz 3, 0x48(30)
    lbz 0, 0x3ae(3)
    stb 0, 0x24(30)
    lbz 0, 0x24(30)
    cmplwi 0, 0x8
    .4byte 0x40820040 # bne .L_8039132C
    lwz 3, 0x48(30)
    lbz 0, 0x3af(3)
    stb 0, 0x40(30)
    .4byte 0x48000030 # b .L_8039132C
    lwz 3, 0x48(30)
    bl fn_80396F94
    lhz 0, 0x28(30)
    ori 0, 0, 0x2
    sth 0, 0x28(30)
    lwz 3, 0x48(30)
    lbz 0, 0x3af(3)
    stb 0, 0x40(30)
    lwz 3, 0x48(30)
    lwz 0, 0x168(3)
    stw 0, 0x2c(30)
L_8039132C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 0, 0x44(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80391384
    lwz 5, 0x48(30)
    lbz 0, 0x3b1(5)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8039135C
    lwz 3, 0x4c(30)
    lbz 0, 0x3b1(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80391384
L_8039135C:
    lbz 0, 0x24(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80391384
    li 4, 0x0
    li 0, 0x1
    stb 4, 0x3b1(5)
    lwz 3, 0x4c(30)
    stb 4, 0x3b1(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 0, 0xe9(3)
L_80391384:
    lbz 0, 0x24(30)
    stb 0, 0x25(30)
    lbz 0, 0x24(30)
    cmplwi 0, 0x6
    .4byte 0x41820014 # beq .L_803913A8
    cmplwi 0, 0x7
    .4byte 0x4182000C # beq .L_803913A8
    cmplwi 0, 0x8
    .4byte 0x40820020 # bne .L_803913C4
L_803913A8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x179(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_803913C4
    li 0, 0x1
    stb 0, 0x17b(3)
L_803913C4:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

