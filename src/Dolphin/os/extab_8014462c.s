.section extab, "a"
.balign 4
.global etb_80006CCC
etb_80006CCC:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80006CCC, 8

.section extabindex, "a"
.balign 4
.global eti_800136C0
eti_800136C0:
    .4byte fn_8014462C
    .4byte 0x00000970
    .4byte etb_80006CCC
.size eti_800136C0, 12

# fn_8014462C - BZBR's ("Buzz Blob") real update(), survey-level (162
# instructions). Opens with the CONFIRMED validity gate fn_801F3D94(1)
# (same one KETH/ZLDA use) - if invalid, resets to a dormant float-
# default state via fn_801F2618 and returns early. Otherwise: decrements
# 4 independent cooldown timers (this->0x234/238/23c/240) if positive,
# integrates position via paired-single ops (this->0xc/0x14 +=
# this->0x3c/0x44, the standard velocity-integration idiom), then
# branches on this->0x230: state 4 skips straight to a shared tail
# (converted/attacking pose, matches draw()'s own state-4 special case -
# see extab_80144194.s). Otherwise computes a facing/direction code via
# the CONFIRMED fn_8022461C helper (same one KETH uses) and, if it
# equals a specific value (0xe), fires an effect via the CONFIRMED
# fn_801F0E34 handle-notify helper and transitions to state 4 - this
# looks like the trigger for FSALib's documented "jumps towards player"
# Options behavior, though the exact bit this->0x90's single-bit gate
# (checked later at `this->0x90==1`, alongside a `this->0x240==0`
# cooldown) maps to in FSALib's bitOffset/bitSize terms was not
# confirmed. That gate leads into a player-registry lookup via the
# CONFIRMED fn_8023E724 accessor (same subsystem KETH/ZLDA use to track
# nearby players) plus fn_801EEC98/fn_8023E854 (not individually
# decompiled). Many more calls in the remainder (fn_801EE8F4,
# fn_801F23BC, fn_801F2618, fn_801F285C, fn_801F2DB4, fn_801F2FAC,
# fn_801F3668, fn_80238548, fn_8023B004) were not individually traced -
# several match KETH's own update() call graph closely (fn_801F2DB4,
# fn_801F2FAC, fn_801F3D94 are the exact same companion-lookup/validity-
# gate shape KETH's "BMTY" companion logic uses), suggesting Buzz Blob
# may spawn/track its own internal companion object the same way.
.text
.balign 4
.global fn_8014462C

fn_8014462C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    mr 31, 3
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820028 # beq .L_80144684
    .4byte 0xC002A03C # lfs f0, lbl_8053CFDC@sda21(r0)
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    bl fn_801F2618
    .4byte 0x480008F8 # b .L_80144F78
L_80144684:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80144698
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80144698:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801446AC
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801446AC:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801446C0
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_801446C0:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801446D4
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_801446D4:
    addi 3, 31, 0xc
    psq_l 0, 0x3c(31), 0, 0
    psq_l 1, 0x0(3), 0, 0
    li 30, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820224 # beq .L_80144928
    lwz 4, 0x4(31)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xe
    .4byte 0x40820024 # bne .L_8014473C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480001F0 # b .L_80144928
L_8014473C:
    lfs 3, 0x60(31)
    addi 3, 1, 0x4c
    stfs 3, 0x4c(1)
    lfs 2, 0x64(31)
    stfs 2, 0x50(1)
    lfs 1, 0x68(31)
    stfs 1, 0x54(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x58(1)
    lfs 5, 0x10(31)
    lfs 4, 0xc(31)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x50(1)
    stfs 3, 0x4c(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    lwz 4, 0x4(31)
    bl fn_8023B004
    mr. 30, 3
    .4byte 0x418000A8 # blt .L_8014483C
    bl fn_8023E854
    clrlwi. 0, 3, 24
    .4byte 0x4082009C # bne .L_8014483C
    lfs 3, 0x54(1)
    mr 3, 30
    lfs 1, 0x4c(1)
    addi 5, 1, 0x38
    lfs 4, 0x58(1)
    li 4, 0x1
    lfs 0, 0x50(1)
    fsubs 1, 1, 3
    .4byte 0xC042A040 # lfs f2, lbl_8053CFE0@sda21(r0)
    li 6, 0xa
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    bl fn_80238548
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    li 4, 0x0
    li 3, 0x4
    .4byte 0xC002A038 # lfs f0, lbl_8053CFD8@sda21(r0)
    stfs 1, 0x258(31)
    li 0, 0x3
    stfs 1, 0x25c(31)
    stfs 1, 0x260(31)
    stw 4, 0x244(31)
    stw 3, 0x23c(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stfs 1, 0x258(31)
    stfs 1, 0x25c(31)
    stfs 1, 0x260(31)
    stw 0, 0x230(31)
L_8014483C:
    li 30, 0x0
L_80144840:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    mr. 29, 3
    .4byte 0x41800094 # blt .L_801448F0
    bl fn_8023E854
    clrlwi. 0, 3, 24
    .4byte 0x40820080 # bne .L_801448E8
    lfs 1, 0x10(31)
    mr 3, 29
    lfs 0, 0xc(31)
    addi 5, 1, 0x30
    li 4, 0x1
    li 6, 0xa
    stfs 0, 0x30(1)
    stfs 1, 0x34(1)
    bl fn_80238548
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x41820044 # beq .L_801448F0
    li 0, 0x0
    li 3, 0x4
    stw 0, 0x244(31)
    li 0, 0x3
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
    stw 3, 0x23c(31)
    .4byte 0xC002A03C # lfs f0, lbl_8053CFDC@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_801448F0
L_801448E8:
    mr 3, 31
    bl fn_801F2FAC
L_801448F0:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF48 # blt .L_80144840
    lis 4, 0x4e55
    mr 3, 31
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    mr 30, 3
L_80144928:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820348 # beq .L_80144C78
    .4byte 0x40800014 # bge .L_80144948
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80144958
    .4byte 0x408002DC # bge .L_80144C1C
    .4byte 0x480005E4 # b .L_80144F28
L_80144948:
    cmpwi 0, 0x4
    .4byte 0x41820544 # beq .L_80144E90
    .4byte 0x408005D8 # bge .L_80144F28
    .4byte 0x480004D4 # b .L_80144E28
L_80144958:
    clrlwi. 0, 30, 24
    .4byte 0x40820010 # bne .L_8014496C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408201B8 # bne .L_80144B20
L_8014496C:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002A03C # lfs f0, lbl_8053CFDC@sda21(r0)
    lwz 5, 0xb4(8)
    mr 3, 31
    .4byte 0xC042A044 # lfs f2, lbl_8053CFE4@sda21(r0)
    addi 4, 1, 0x40
    mullw 7, 5, 0
    li 5, 0x0
    li 6, 0x0
    addis 7, 7, 0x3c6f
    subi 0, 7, 0xca1
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 7, 0x64(1)
    addi 0, 7, 0x32
    stw 0, 0x238(31)
    bl fn_801EE8F4
    .4byte 0xC3E2A048 # lfs f31, lbl_8053CFE8@sda21(r0)
    lis 3, 0x19
    psq_l 1, 0x40(1), 0, 0
    addi 4, 3, 0x660d
    psq_l 0, 0x48(1), 1, 0
    ps_muls0 2, 1, 31
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    ps_muls0 1, 0, 31
    .4byte 0xC062A03C # lfs f3, lbl_8053CFDC@sda21(r0)
    .4byte 0xC002A040 # lfs f0, lbl_8053CFE0@sda21(r0)
    psq_st 2, 0x40(1), 0, 0
    psq_st 1, 0x48(1), 1, 0
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 1, 0x40(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 2, 0x1c(1)
    fsubs 2, 2, 3
    fmadds 1, 31, 2, 1
    stfs 1, 0x3c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 3
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80144A88
    lfs 1, 0x3c(31)
    .4byte 0xC002A04C # lfs f0, lbl_8053CFEC@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x3c(31)
L_80144A88:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC062A03C # lfs f3, lbl_8053CFDC@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC082A048 # lfs f4, lbl_8053CFE8@sda21(r0)
    mullw 3, 0, 4
    .4byte 0xC002A040 # lfs f0, lbl_8053CFE0@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 1, 0x44(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 2, 2, 3
    fmadds 1, 4, 2, 1
    stfs 1, 0x40(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 1, 1, 3
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80144B20
    lfs 1, 0x40(31)
    .4byte 0xC002A04C # lfs f0, lbl_8053CFEC@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
L_80144B20:
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x40820400 # bne .L_80144F28
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408203F4 # bne .L_80144F28
    .4byte 0xC002A038 # lfs f0, lbl_8053CFD8@sda21(r0)
    li 0, -0x1
    li 4, 0x0
    stw 0, 0x28(1)
    mr 3, 31
    addi 5, 1, 0x8
    sth 4, 0x8(1)
    addi 6, 1, 0x24
    addi 7, 1, 0x2c
    addi 8, 1, 0x28
    stfs 0, 0x2c(1)
    li 9, 0x0
    li 10, 0x0
    stw 0, 0x24(1)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lwz 0, 0x24(1)
    cmpwi 0, 0x0
    .4byte 0x418003A8 # blt .L_80144F28
    lwz 3, 0x28(1)
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    .4byte 0xC002A050 # lfs f0, lbl_8053CFF0@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x4180002C # blt .L_80144BD4
    lwz 3, 0x28(1)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(31)
    .4byte 0xC002A050 # lfs f0, lbl_8053CFF0@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800358 # bge .L_80144F28
L_80144BD4:
    lwz 3, 0x28(1)
    bl fn_8023E724
    lwz 4, 0x4(31)
    mr 6, 3
    mr 3, 31
    addi 5, 31, 0xc
    addi 7, 31, 0x80
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x40820324 # bne .L_80144F28
    lwz 3, 0x24(1)
    li 0, 0x1
    stw 3, 0x98(31)
    stw 0, 0x230(31)
    .4byte 0x48000310 # b .L_80144F28
L_80144C1C:
    .4byte 0xC002A038 # lfs f0, lbl_8053CFD8@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_80144C54
    .4byte 0x40800028 # bge .L_80144C60
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80144C48
    .4byte 0x4800001C # b .L_80144C60
L_80144C48:
    li 0, 0x0
    stw 0, 0x244(31)
    .4byte 0x48000018 # b .L_80144C68
L_80144C54:
    li 0, 0x2
    stw 0, 0x244(31)
    .4byte 0x4800000C # b .L_80144C68
L_80144C60:
    li 0, 0x1
    stw 0, 0x244(31)
L_80144C68:
    li 3, 0x14
    li 0, 0x2
    stw 3, 0x240(31)
    stw 0, 0x230(31)
L_80144C78:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x418200DC # beq .L_80144D5C
    .4byte 0xC022A054 # lfs f1, lbl_8053CFF4@sda21(r0)
    addi 3, 31, 0x258
    .4byte 0xC042A058 # lfs f2, lbl_8053CFF8@sda21(r0)
    .4byte 0xC062A05C # lfs f3, lbl_8053CFFC@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022A060 # lfs f1, lbl_8053D000@sda21(r0)
    addi 3, 31, 0x25c
    .4byte 0xC042A058 # lfs f2, lbl_8053CFF8@sda21(r0)
    .4byte 0xC062A05C # lfs f3, lbl_8053CFFC@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x40820274 # bne .L_80144F28
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820060 # beq .L_80144D20
    .4byte 0x40800014 # bge .L_80144CD8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80144CE4
    .4byte 0x40800030 # bge .L_80144D00
    .4byte 0x48000254 # b .L_80144F28
L_80144CD8:
    cmpwi 0, 0x4
    .4byte 0x4080024C # bge .L_80144F28
    .4byte 0x4800005C # b .L_80144D3C
L_80144CE4:
    .4byte 0xC002A064 # lfs f0, lbl_8053D004@sda21(r0)
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002A068 # lfs f0, lbl_8053D008@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x4800022C # b .L_80144F28
L_80144D00:
    .4byte 0xC002A064 # lfs f0, lbl_8053D004@sda21(r0)
    .4byte 0xC022A038 # lfs f1, lbl_8053CFD8@sda21(r0)
    fneg 2, 0
    .4byte 0xC002A068 # lfs f0, lbl_8053D008@sda21(r0)
    stfs 2, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x4800020C # b .L_80144F28
L_80144D20:
    .4byte 0xC002A038 # lfs f0, lbl_8053CFD8@sda21(r0)
    .4byte 0xC022A064 # lfs f1, lbl_8053D004@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002A068 # lfs f0, lbl_8053D008@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480001F0 # b .L_80144F28
L_80144D3C:
    .4byte 0xC002A064 # lfs f0, lbl_8053D004@sda21(r0)
    .4byte 0xC042A038 # lfs f2, lbl_8053CFD8@sda21(r0)
    fneg 1, 0
    .4byte 0xC002A068 # lfs f0, lbl_8053D008@sda21(r0)
    stfs 2, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480001D0 # b .L_80144F28
L_80144D5C:
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    addi 3, 31, 0x258
    .4byte 0xC042A058 # lfs f2, lbl_8053CFF8@sda21(r0)
    .4byte 0xC062A05C # lfs f3, lbl_8053CFFC@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    addi 3, 31, 0x25c
    .4byte 0xC042A058 # lfs f2, lbl_8053CFF8@sda21(r0)
    .4byte 0xC062A05C # lfs f3, lbl_8053CFFC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x14(31)
    .4byte 0xC002A038 # lfs f0, lbl_8053CFD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_80144DA8
    lfs 1, 0x44(31)
    .4byte 0xC002A040 # lfs f0, lbl_8053CFE0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x48000184 # b .L_80144F28
L_80144DA8:
    stfs 0, 0x14(31)
    lis 3, 0x19
    .4byte 0xC042A03C # lfs f2, lbl_8053CFDC@sda21(r0)
    addi 3, 3, 0x660d
    stfs 0, 0x44(31)
    li 0, 0x0
    .4byte 0xC022A044 # lfs f1, lbl_8053CFE4@sda21(r0)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 2, 0x258(31)
    stfs 2, 0x25c(31)
    stfs 2, 0x260(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    addi 3, 3, 0x1e
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000104 # b .L_80144F28
L_80144E28:
    lfs 1, 0x14(31)
    .4byte 0xC002A038 # lfs f0, lbl_8053CFD8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_80144E4C
    lfs 1, 0x44(31)
    .4byte 0xC002A040 # lfs f0, lbl_8053CFE0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x4800000C # b .L_80144E54
L_80144E4C:
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_80144E54:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408200CC # bne .L_80144F28
    lwz 3, 0x244(31)
    li 0, 0x4
    addi 3, 3, 0x1
    stw 3, 0x244(31)
    stw 0, 0x23c(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0xa
    .4byte 0x408100AC # ble .L_80144F28
    li 0, 0x0
    stw 0, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x4800009C # b .L_80144F28
L_80144E90:
    lfs 1, 0x254(31)
    .4byte 0xC042A058 # lfs f2, lbl_8053CFF8@sda21(r0)
    .4byte 0xC002A06C # lfs f0, lbl_8053D00C@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x254(31)
    lfs 1, 0x250(31)
    fsubs 0, 1, 0
    stfs 0, 0x250(31)
    lfs 0, 0x250(31)
    fcmpo cr0, 0, 2
    .4byte 0x40800070 # bge .L_80144F28
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A03C # lfs f1, lbl_8053CFDC@sda21(r0)
    li 5, 0x2aa
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_801F3668
L_80144F28:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x41820048 # beq .L_80144F78
    cmpwi 0, 0x1
    .4byte 0x41820040 # beq .L_80144F78
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_80144F78
    cmpwi 0, 0x4
    .4byte 0x41820030 # beq .L_80144F78
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_80144F78
    li 0, 0x8
    stw 0, 0x234(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    clrlwi 0, 0, 30
    stw 0, 0x244(31)
L_80144F78:
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

