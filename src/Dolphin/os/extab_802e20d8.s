# Unnamed actor cluster, part 3/4 (Track A byte-match + overview -
# 1136B). Uses the confirmed NAVI sway utility fn_801F3668, the
# spatial-registry bulk-find fn_801F7818, the generic FourCC actor
# dispatcher fn_801F9484, fn_801F666C/SpatialRegistry_GetBase, and the per-room
# config accessor GetRoomConfigRecord.
.section extab, "a"
.balign 4
.global etb_8000CF44
etb_8000CF44:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_8000CF44, 8

.section extabindex, "a"
.balign 4
.global eti_8001C048
eti_8001C048:
    .4byte fn_802E20D8
    .4byte 0x00000470
    .4byte etb_8000CF44
.size eti_8001C048, 12

.text
.balign 4
.global fn_802E20D8

fn_802E20D8:
    stwu 1, -0x1070(1)
    mflr 0
    stw 0, 0x1074(1)
    li 0, 0x1068
    stfd 31, 0x1060(1)
    psq_stx 31, 1, 0, 0, 0
    stmw 26, 0x1048(1)
    mr 26, 3
    lwz 27, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_802E2110
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802E2114
L_802E2110:
    addi 3, 3, 0xdc
L_802E2114:
    lwz 0, 0x230(26)
    li 31, 0x0
    lwz 6, 0x0(3)
    li 30, 0x0
    lwz 5, 0x4(3)
    cmpwi 0, 0x1
    lwz 4, 0x8(3)
    lwz 3, 0xc(3)
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 4, 0x28(1)
    stw 3, 0x2c(1)
    .4byte 0x418200E4 # beq .L_802E2228
    .4byte 0x40800010 # bge .L_802E2158
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802E2164
    .4byte 0x480003D4 # b .L_802E2528
L_802E2158:
    cmpwi 0, 0x3
    .4byte 0x408003CC # bge .L_802E2528
    .4byte 0x48000394 # b .L_802E24F4
L_802E2164:
    .4byte 0x800D90F0 # lwz r0, lbl_8053ACB0@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x418200B4 # beq .L_802E2220
    lis 3, lbl_804D4768@ha
    li 30, 0x0
    addi 28, 3, lbl_804D4768@l
    li 27, -0x1
L_802E2180:
    lwz 29, 0x0(28)
    cmpwi 29, 0x0
    .4byte 0x41800084 # blt .L_802E220C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820070 # bne .L_802E220C
    .4byte 0x806D90F0 # lwz r3, lbl_8053ACB0@sda21(r0)
    stw 27, 0x0(28)
    subic. 0, 3, 0x1
    .4byte 0x900D90F0 # stw r0, lbl_8053ACB0@sda21(r0)
    .4byte 0x4082005C # bne .L_802E220C
    bl SpatialRegistry_GetBase
    lis 4, 0x4745
    lwz 5, 0x4(26)
    addi 4, 4, 0x4e32
    addi 6, 1, 0x30
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0x30
    li 0, 0x1
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_802E2200
L_802E21E4:
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802E21F8
    .4byte 0x41820008 # beq .L_802E21F8
    stw 0, 0x230(3)
L_802E21F8:
    addi 4, 4, 0x4
    .4byte 0x4200FFE8 # bdnz .L_802E21E4
L_802E2200:
    li 0, 0x1
    stw 0, 0x230(26)
    .4byte 0x48000320 # b .L_802E2528
L_802E220C:
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x50
    .4byte 0x4180FF68 # blt .L_802E2180
    .4byte 0x4800030C # b .L_802E2528
L_802E2220:
    li 0, 0x1
    stw 0, 0x230(26)
L_802E2228:
    li 0, 0x0
    lfs 31, 0x24(1)
    stw 0, 0x240(26)
L_802E2234:
    lwz 0, 0x244(26)
    li 29, 0x1
    add 6, 0, 31
    lbz 0, 0x1(6)
    lbz 3, 0x0(6)
    slwi 0, 0, 16
    lbz 4, 0x2(6)
    rlwimi 0, 3, 24, 0, 7
    lbz 5, 0x3(6)
    rlwimi 0, 4, 8, 16, 23
    or 28, 5, 0
    subis 0, 28, 0x2020
    cmplwi 0, 0x2020
    .4byte 0x40820058 # bne .L_802E22C0
    lhz 3, 0x24c(26)
    li 31, 0x0
    li 29, 0x0
    addi 0, 3, 0x2
    sth 0, 0x24c(26)
    lwz 3, 0x240(26)
    addi 0, 3, 0x1
    stw 0, 0x240(26)
    lhz 0, 0x24c(26)
    lhz 3, 0x24e(26)
    cmplw 0, 3
    .4byte 0x4082FF9C # bne .L_802E2234
    cmplwi 0, 0x40
    li 30, 0x1
    .4byte 0x40820010 # bne .L_802E22B4
    mr 3, 26
    bl fn_801F3668
    .4byte 0x48000048 # b .L_802E22F8
L_802E22B4:
    addi 0, 3, 0x8
    sth 0, 0x24e(26)
    .4byte 0x4800003C # b .L_802E22F8
L_802E22C0:
    lwz 0, 0x23c(26)
    cmpwi 0, 0x2
    .4byte 0x40800018 # bge .L_802E22E0
    lhz 3, 0x24c(26)
    lbz 0, 0x6(6)
    cmpw 3, 0
    .4byte 0x41820020 # beq .L_802E22F8
    .4byte 0x48000014 # b .L_802E22F0
L_802E22E0:
    lhz 3, 0x24c(26)
    lbz 0, 0x5(6)
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_802E22F8
L_802E22F0:
    addi 31, 31, 0xb
    .4byte 0x4BFFFF40 # b .L_802E2234
L_802E22F8:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x408201E8 # bne .L_802E24E8
    lwz 0, 0x244(26)
    add 6, 0, 31
    addi 31, 31, 0xb
    lbz 0, 0x8(6)
    lbz 5, 0x4(6)
    lbz 3, 0x7(6)
    slwi 0, 0, 16
    lbz 4, 0x9(6)
    cmplwi 5, 0x0
    rlwimi 0, 3, 24, 0, 7
    lbz 3, 0xa(6)
    rlwimi 0, 4, 8, 16, 23
    lbz 8, 0x5(6)
    lbz 7, 0x6(6)
    or 27, 3, 0
    .4byte 0x40820014 # bne .L_802E2354
    fmr 6, 31
    lfs 5, 0x20(1)
    li 29, 0x0
    .4byte 0x48000014 # b .L_802E2364
L_802E2354:
    .4byte 0xC0C2E218 # lfs f6, lbl_805411B8@sda21(r0)
    clrlwi 3, 5, 24
    addi 29, 3, 0x7
    fmr 5, 6
L_802E2364:
    lwz 3, 0x23c(26)
    cmpwi 3, 0x2
    .4byte 0x408000A0 # bge .L_802E240C
    lwz 0, 0x240(26)
    lis 4, lbl_8046E9D8@ha
    slwi 6, 3, 3
    lis 3, 0x4330
    addi 5, 4, lbl_8046E9D8@l
    slwi 4, 0, 1
    add 5, 5, 6
    clrlwi 0, 8, 16
    lhzx 4, 5, 4
    stw 3, 0x1030(1)
    .4byte 0xC002E218 # lfs f0, lbl_805411B8@sda21(r0)
    stw 4, 0x1034(1)
    .4byte 0xC862E220 # lfd f3, lbl_805411C0@sda21(r0)
    lfd 1, 0x1030(1)
    stw 0, 0x103c(1)
    fsubs 2, 1, 3
    .4byte 0xC082E21C # lfs f4, lbl_805411BC@sda21(r0)
    stw 3, 0x1038(1)
    lfd 1, 0x1038(1)
    fmadds 2, 4, 2, 6
    stfs 0, 0x1c(1)
    fsubs 0, 1, 3
    stfs 2, 0x18(1)
    fmadds 0, 4, 0, 5
    stfs 0, 0x14(1)
    bl SpatialRegistry_GetBase
    mr 4, 28
    mr 5, 29
    mr 7, 27
    addi 6, 1, 0x14
    li 8, 0x0
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x800D90F0 # lwz r0, lbl_8053ACB0@sda21(r0)
    lis 4, lbl_804D4768@ha
    addi 4, 4, lbl_804D4768@l
    slwi 0, 0, 2
    stwx 3, 4, 0
    .4byte 0x4800009C # b .L_802E24A4
L_802E240C:
    lwz 0, 0x240(26)
    lis 4, lbl_8046E9D8@ha
    slwi 6, 3, 3
    lis 3, 0x4330
    addi 5, 4, lbl_8046E9D8@l
    slwi 4, 0, 1
    add 5, 5, 6
    clrlwi 0, 7, 16
    lhzx 4, 5, 4
    stw 3, 0x1038(1)
    .4byte 0xC002E218 # lfs f0, lbl_805411B8@sda21(r0)
    stw 4, 0x103c(1)
    .4byte 0xC862E220 # lfd f3, lbl_805411C0@sda21(r0)
    lfd 1, 0x1038(1)
    stw 0, 0x1034(1)
    fsubs 2, 1, 3
    .4byte 0xC082E21C # lfs f4, lbl_805411BC@sda21(r0)
    stw 3, 0x1030(1)
    lfd 1, 0x1030(1)
    fmadds 2, 4, 2, 5
    stfs 0, 0x10(1)
    fsubs 0, 1, 3
    stfs 2, 0x8(1)
    fmadds 0, 4, 0, 6
    stfs 0, 0xc(1)
    bl SpatialRegistry_GetBase
    mr 4, 28
    mr 5, 29
    mr 7, 27
    addi 6, 1, 0x8
    li 8, 0x0
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x800D90F0 # lwz r0, lbl_8053ACB0@sda21(r0)
    lis 4, lbl_804D4768@ha
    addi 4, 4, lbl_804D4768@l
    slwi 0, 0, 2
    stwx 3, 4, 0
L_802E24A4:
    .4byte 0x808D90F0 # lwz r4, lbl_8053ACB0@sda21(r0)
    lis 3, lbl_804D4768@ha
    addi 3, 3, lbl_804D4768@l
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_802E24DC
    addi 0, 4, 0x1
    cmpwi 0, 0x50
    .4byte 0x900D90F0 # stw r0, lbl_8053ACB0@sda21(r0)
    .4byte 0x41800010 # blt .L_802E24DC
    mr 3, 26
    bl fn_801F3668
    .4byte 0x48000010 # b .L_802E24E8
L_802E24DC:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x4082FD50 # bne .L_802E2234
L_802E24E8:
    li 0, 0x0
    stw 0, 0x230(26)
    .4byte 0x48000038 # b .L_802E2528
L_802E24F4:
    lwz 0, 0x90(26)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_802E2520
    mr 3, 26
    lwz 12, 0x0(26)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802E2528
L_802E2520:
    li 0, 0x1
    stw 0, 0x230(26)
L_802E2528:
    li 0, 0x1068
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x1060(1)
    lmw 26, 0x1048(1)
    lwz 0, 0x1074(1)
    mtlr 0
    addi 1, 1, 0x1070
    blr

