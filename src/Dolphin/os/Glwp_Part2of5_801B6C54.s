# GLWP cluster, part 2/5 (Track A byte-match + overview - 1744B).
# update() core. Uses the confirmed full-teardown fn_800EC240,
# handle-resolve fn_8013C824, effect spawn fn_8013CC50, the ease
# primitive fn_801F71A4, its own private helper Glwp_GetAmbientEffectGroupByte (landed
# alongside, shared with setParams below), fn_801F0E34/fn_801F6884/
# fn_801F68E0/SpatialRegistry_GetBase, player position fn_8023E724, the per-room
# config family GetRoomConfigRecord/ConfigRecord_SetInstallSettingsByte/fn_802D9FF4, plus an extensive
# set of unfamiliar helpers (fn_80119468/80119DD0/80128C58/80136798/
# 8022EA0C/8022FE80/802372F8/80237524/8037EFB4/80384C58/803865B8/
# 8038AD24) not chased further given the function's size.
.section extab, "a"
.balign 4
.global etb_80007C6C
etb_80007C6C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007C6C, 8

.section extabindex, "a"
.balign 4
.global eti_80014C20
eti_80014C20:
    .4byte fn_801B6C54
    .4byte 0x000006D0
    .4byte etb_80007C6C
.size eti_80014C20, 12

.text
.balign 4
.global fn_801B6C54

fn_801B6C54:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    lwz 0, 0x24c(3)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801B6CA0
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801B6CA0
    lfs 0, 0x260(31)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    bl fn_80128C58
L_801B6CA0:
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x4181061C # bgt .L_801B72C4
    lis 3, jumptable_804A3A30@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3A30@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_801B6CDC
    li 0, 0x0
    .4byte 0x980D9040 # stb r0, lbl_8053AC00@sda21(r0)
    .4byte 0x480005EC # b .L_801B72C4
L_801B6CDC:
    .4byte 0x880D9040 # lbz r0, lbl_8053AC00@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x418205E0 # beq .L_801B72C4
    bl Glwp_GetAmbientEffectGroupByte
    clrlwi 3, 3, 24
    lis 0, 0x4330
    stw 3, 0x24(1)
    .4byte 0xC822BB38 # lfd f1, lbl_8053EAD8@sda21(r0)
    stw 0, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x25c(31)
    lfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x418205A4 # beq .L_801B72C4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 29, 31
    .4byte 0xC002BB20 # lfs f0, lbl_8053EAC0@sda21(r0)
    li 30, 0x0
    lwz 3, 0x24(3)
    lfs 1, 0x10(3)
    lfs 2, 0x20(3)
    fneg 1, 1
    fneg 2, 2
    stfs 1, 0xc(31)
    stfs 2, 0x10(31)
    stfs 0, 0x14(31)
L_801B6D54:
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022BB24 # lfs f1, lbl_8053EAC4@sda21(r0)
    li 5, 0x3ae
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022BB24 # lfs f1, lbl_8053EAC4@sda21(r0)
    li 5, 0x3ac
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 30, 30, 0x1
    stw 3, 0x294(29)
    cmpwi 30, 0x4
    addi 29, 29, 0x4
    .4byte 0x4180FF90 # blt .L_801B6D54
    li 3, 0x78
    li 0, 0x1
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    li 3, 0x0
    bl fn_8022EA0C
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_801B6E08
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x7f4(5)
    stw 3, 0x7f8(5)
    stb 0, 0x7f6(5)
L_801B6E08:
    .4byte 0xC022BB28 # lfs f1, lbl_8053EAC8@sda21(r0)
    addi 3, 31, 0x260
    .4byte 0xC042BB2C # lfs f2, lbl_8053EACC@sda21(r0)
    .4byte 0xC062BB30 # lfs f3, lbl_8053EAD0@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408204A0 # bne .L_801B72C4
    .4byte 0xC022BB20 # lfs f1, lbl_8053EAC0@sda21(r0)
    li 3, 0x0
    .4byte 0xC002BB34 # lfs f0, lbl_8053EAD4@sda21(r0)
    stfs 1, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    bl fn_8022EA0C
    lwz 4, 0x4(31)
    li 6, 0x0
    lwz 5, 0x198(31)
    li 7, 0x0
    bl fn_8022FE80
    lwz 30, 0x198(31)
    li 3, 0x0
    lwz 29, 0x4(31)
    psq_l 1, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    bl fn_8022EA0C
    mr 5, 30
    mr 6, 29
    addi 7, 1, 0x8
    li 4, 0x240
    li 8, 0x4102
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182042C # beq .L_801B72C4
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000420 # b .L_801B72C4
    li 3, 0x0
    bl fn_8022EA0C
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_801B6ED8
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x7f4(5)
    stw 3, 0x7f8(5)
    stb 0, 0x7f6(5)
L_801B6ED8:
    li 3, 0x0
    bl fn_8022EA0C
    lwz 4, 0x4(31)
    li 6, 0x0
    lwz 5, 0x198(31)
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_8022EA0C
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418203C0 # beq .L_801B72C4
    mr 29, 31
    li 28, 0x0
    li 30, 0x0
L_801B6F14:
    lwz 0, 0x294(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801B6F34
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x294(29)
    bl fn_800EC240
    stw 30, 0x294(29)
L_801B6F34:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFD4 # blt .L_801B6F14
    li 3, 0x0
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x41820104 # beq .L_801B7054
    .4byte 0x40800150 # bge .L_801B70A4
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_801B6F64
    .4byte 0x48000144 # b .L_801B70A4
L_801B6F64:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x244(31)
    li 4, 0x180
    bl fn_80237524
    li 0, 0x1
    mr 29, 31
    .4byte 0x980D8EE0 # stb r0, lbl_8053AAA0@sda21(r0)
    li 30, 0x0
    .4byte 0x980D8FD8 # stb r0, lbl_8053AB98@sda21(r0)
    .4byte 0x980D9028 # stb r0, lbl_8053ABE8@sda21(r0)
L_801B6F90:
    mr 3, 30
    bl fn_8023E724
    lfs 0, 0x0(3)
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    stfs 0, 0x264(29)
    lfs 0, 0x4(3)
    stfs 0, 0x268(29)
    lfs 0, 0x8(3)
    stfs 0, 0x26c(29)
    addi 29, 29, 0xc
    .4byte 0x4180FFD4 # blt .L_801B6F90
    li 3, 0x8
    li 0, 0x3f
    stw 3, 0x234(31)
    li 28, 0x0
    stw 0, 0x244(31)
L_801B6FD4:
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022BB24 # lfs f1, lbl_8053EAC4@sda21(r0)
    li 5, 0x489
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022BB24 # lfs f1, lbl_8053EAC4@sda21(r0)
    li 5, 0x551
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF98 # blt .L_801B6FD4
    li 3, 0xf0
    li 0, 0x4
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000054 # b .L_801B70A4
L_801B7054:
    li 28, 0x0
L_801B7058:
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022BB24 # lfs f1, lbl_8053EAC4@sda21(r0)
    li 5, 0x48a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC8 # blt .L_801B7058
    li 3, 0x64
    li 0, 0x3
    stw 3, 0x238(31)
    stw 0, 0x230(31)
L_801B70A4:
    li 3, 0x0
    bl fn_8022EA0C
    lwz 4, 0x198(31)
    bl fn_80384C58
    .4byte 0x48000210 # b .L_801B72C4
    li 3, 0x0
    bl fn_8022EA0C
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_801B70E8
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x7f4(5)
    stw 3, 0x7f8(5)
    stb 0, 0x7f6(5)
L_801B70E8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408201D4 # bne .L_801B72C4
    lfs 1, 0x25c(31)
    addi 3, 31, 0x260
    .4byte 0xC042BB2C # lfs f2, lbl_8053EACC@sda21(r0)
    .4byte 0xC062BB30 # lfs f3, lbl_8053EAD0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x260(31)
    lfs 2, 0x25c(31)
    .4byte 0xC002BB24 # lfs f0, lbl_8053EAC4@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x408001A0 # bge .L_801B72C4
    stfs 2, 0x260(31)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 3, 0x0
    li 0, 0x28
    .4byte 0x986D9040 # stb r3, lbl_8053AC00@sda21(r0)
    stw 0, 0x23c(31)
    stw 3, 0x230(31)
    .4byte 0x4800017C # b .L_801B72C4
    li 3, 0x0
    bl fn_8022EA0C
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_801B717C
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x7f4(5)
    stw 3, 0x7f8(5)
    stb 0, 0x7f6(5)
L_801B717C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x8e
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082012C # bne .L_801B72C4
    bl GetRoomConfigRecord
    lwz 4, 0x250(31)
    lwz 5, 0x254(31)
    bl fn_802D9FF4
    bl fn_80119DD0
    li 4, 0x0
    li 5, 0x1
    bl fn_80119468
    bl GetRoomConfigRecord
    li 4, 0x2
    bl ConfigRecord_SetInstallSettingsByte
    lis 3, lbl_804A39A0@ha
    li 29, 0x0
    addi 30, 3, lbl_804A39A0@l
L_801B71D4:
    lwz 0, 0x258(31)
    mr 3, 29
    li 5, 0x1
    slwi 0, 0, 2
    lwzx 4, 30, 0
    bl fn_802372F8
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE0 # blt .L_801B71D4
    li 3, 0x5
    li 0, 0x1
    stw 3, 0x234(31)
    stw 3, 0x230(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x480000B0 # b .L_801B72C4
    li 3, 0x0
    bl fn_8022EA0C
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    lbz 0, 0x7f5(5)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_801B7248
    li 4, 0x1
    li 0, 0x0
    stb 4, 0x7f4(5)
    stw 3, 0x7f8(5)
    stb 0, 0x7f6(5)
L_801B7248:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_801B726C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xd
    li 5, 0x0
    bl fn_80136798
    li 0, 0x0
    stb 0, 0x11c(31)
L_801B726C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x48000048 # b .L_801B72C4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    li 0, 0x7
    lwz 3, 0x20(3)
    stb 4, 0x216(3)
    stw 0, 0x230(31)
    .4byte 0x4800002C # b .L_801B72C4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    li 0, 0x8
    lwz 3, 0x20(3)
    stb 4, 0x216(3)
    stw 0, 0x230(31)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 0, 0x0
    stb 0, 0x11c(31)
L_801B72C4:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B72D8
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801B72D8:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B72EC
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801B72EC:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B7304
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801B7304:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

