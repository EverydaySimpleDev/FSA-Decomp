# SAYA cluster, part 9/18 (Track A byte-match + overview - 1100B).
# Fourth state handler / validity-check body - the player validity
# family fn_8023DE58/Player_GetCapabilityFlagByIndex, plus fn_801F3780 and unfamiliar
# fn_8023725C/8023A478/8023A51C. Not directly called by the master
# dispatcher's own bl list captured elsewhere but sits in the same
# family (called by fn_801A6160).
.section extab, "a"
.balign 4
.global etb_800079E4
etb_800079E4:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_800079E4, 8

.section extabindex, "a"
.balign 4
.global eti_80014854
eti_80014854:
    .4byte fn_801A4FB4
    .4byte 0x0000044C
    .4byte etb_800079E4
.size eti_80014854, 12

.text
.balign 4
.global fn_801A4FB4

fn_801A4FB4:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    lwz 0, 0xb0(3)
    mr 30, 3
    extrwi. 31, 0, 4, 16
    .4byte 0x4082000C # bne .L_801A4FF8
    li 3, 0x0
    .4byte 0x480003DC # b .L_801A53D0
L_801A4FF8:
    lbz 0, 0xd4(30)
    cmplwi 0, 0x0
    .4byte 0x408201D8 # bne .L_801A51D8
    .4byte 0xC3E2B634 # lfs f31, lbl_8053E5D4@sda21(r0)
    li 28, 0x0
L_801A500C:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418201B4 # beq .L_801A51CC
    lwz 29, 0x4(30)
    mr 3, 28
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x408201A0 # bne .L_801A51CC
    mr 3, 28
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820190 # beq .L_801A51CC
    lfs 1, 0x14(30)
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x40820180 # bne .L_801A51CC
    mr 3, 28
    bl fn_8023725C
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_801A5068
    .4byte 0xC3E2B658 # lfs f31, lbl_8053E5F8@sda21(r0)
    .4byte 0x48000018 # b .L_801A507C
L_801A5068:
    mr 3, 28
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x40820008 # bne .L_801A507C
    .4byte 0xC3E2B65C # lfs f31, lbl_8053E5FC@sda21(r0)
L_801A507C:
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810148 # ble .L_801A51CC
    mr 3, 28
    bl fn_8023A478
    lfs 1, 0x0(3)
    mr 3, 28
    lfs 0, 0xc(30)
    fsubs 30, 1, 0
    bl fn_8023A478
    lfs 2, 0x4(3)
    lfs 1, 0x10(30)
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fmadds 4, 30, 30, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801A510C
    frsqrte 1, 4
    .4byte 0xC862B660 # lfd f3, lbl_8053E600@sda21(r0)
    .4byte 0xC842B668 # lfd f2, lbl_8053E608@sda21(r0)
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
    .4byte 0x48000088 # b .L_801A5190
L_801A510C:
    .4byte 0xC802B670 # lfd f0, lbl_8053E610@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801A5124
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801A5190
L_801A5124:
    stfs 4, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801A514C
    .4byte 0x40800040 # bge .L_801A517C
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801A5164
    .4byte 0x48000034 # b .L_801A517C
L_801A514C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A515C
    li 0, 0x1
    .4byte 0x48000028 # b .L_801A5180
L_801A515C:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801A5180
L_801A5164:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A5174
    li 0, 0x5
    .4byte 0x48000010 # b .L_801A5180
L_801A5174:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801A5180
L_801A517C:
    li 0, 0x4
L_801A5180:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A5190
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801A5190:
    fcmpo cr0, 4, 31
    .4byte 0x41800010 # blt .L_801A51A4
    .4byte 0xC002B65C # lfs f0, lbl_8053E5FC@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x4082002C # bne .L_801A51CC
L_801A51A4:
    li 0, 0x1
    cmpwi 28, 0x0
    stb 0, 0xd4(30)
    .4byte 0x41800008 # blt .L_801A51B8
    .4byte 0x938D8540 # stw r28, lbl_8053A100@sda21(r0)
L_801A51B8:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
L_801A51CC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FE38 # blt .L_801A500C
L_801A51D8:
    lbz 0, 0xd4(30)
    .4byte 0xC062B634 # lfs f3, lbl_8053E5D4@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x4082010C # bne .L_801A52F0
    cmpwi 31, 0x2
    .4byte 0x41820070 # beq .L_801A525C
    .4byte 0x40800010 # bge .L_801A5200
    cmpwi 31, 0x1
    .4byte 0x40800014 # bge .L_801A520C
    .4byte 0x480000C8 # b .L_801A52C4
L_801A5200:
    cmpwi 31, 0x4
    .4byte 0x408000C0 # bge .L_801A52C4
    .4byte 0x480000A0 # b .L_801A52A8
L_801A520C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B648 # lfs f2, lbl_8053E5E8@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC062B678 # lfs f3, lbl_8053E618@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 1
    fnmsubs 0, 2, 0, 1
    fadds 3, 3, 0
    .4byte 0x4800006C # b .L_801A52C4
L_801A525C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042B648 # lfs f2, lbl_8053E5E8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 1
    fnmsubs 0, 2, 0, 1
    fadds 3, 2, 0
    .4byte 0x48000020 # b .L_801A52C4
L_801A52A8:
    lwz 3, 0x108(30)
    subic. 0, 3, 0xa
    .4byte 0x4181000C # bgt .L_801A52BC
    li 0, 0x0
    stw 0, 0x108(30)
L_801A52BC:
    li 0, 0x0
    stb 0, 0xd4(30)
L_801A52C4:
    lfs 1, 0x40(30)
    frsp 2, 3
    lfs 0, 0x3c(30)
    li 0, 0x2
    stfs 1, 0x48(1)
    stfs 0, 0x44(1)
    psq_l 0, 0x44(1), 0, 0
    stfs 3, 0x4c(1)
    psq_st 0, 0x3c(30), 0, 0
    stfs 2, 0x44(30)
    stb 0, 0xd4(30)
L_801A52F0:
    lbz 0, 0xd4(30)
    cmplwi 0, 0x2
    .4byte 0x408200D4 # bne .L_801A53CC
    lfs 1, 0x10(30)
    lfs 0, 0xc(30)
    stfs 1, 0x3c(1)
    lfs 1, 0x14(30)
    stfs 0, 0x38(1)
    lfs 0, 0x44(30)
    psq_l 3, 0x38(1), 0, 0
    fadds 4, 1, 0
    .4byte 0xC042B67C # lfs f2, lbl_8053E61C@sda21(r0)
    psq_st 3, 0xc(30), 0, 0
    .4byte 0xC022B634 # lfs f1, lbl_8053E5D4@sda21(r0)
    stfs 4, 0x14(30)
    lfs 5, 0x40(30)
    lfs 0, 0x3c(30)
    lfs 3, 0x44(30)
    stfs 0, 0x2c(1)
    fsubs 2, 3, 2
    stfs 5, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    stfs 4, 0x40(1)
    psq_st 0, 0x3c(30), 0, 0
    stfs 2, 0x44(30)
    lfs 0, 0x14(30)
    stfs 2, 0x34(1)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820068 # bne .L_801A53CC
    lfs 2, 0x40(30)
    li 0, 0x0
    lfs 0, 0x3c(30)
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    psq_l 0, 0x20(1), 0, 0
    stfs 1, 0x28(1)
    psq_st 0, 0x3c(30), 0, 0
    stfs 1, 0x44(30)
    lfs 2, 0x10(30)
    lfs 0, 0xc(30)
    stfs 2, 0x18(1)
    stfs 0, 0x14(1)
    psq_l 0, 0x14(1), 0, 0
    stfs 1, 0x1c(1)
    psq_st 0, 0xc(30), 0, 0
    stfs 1, 0x14(30)
    stb 0, 0xd4(30)
    lwz 0, 0xb0(30)
    extrwi 0, 0, 8, 8
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_801A53CC
    mr 3, 30
    li 4, 0x12c
    bl fn_801F3780
L_801A53CC:
    lbz 3, 0xd4(30)
L_801A53D0:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0x84(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

