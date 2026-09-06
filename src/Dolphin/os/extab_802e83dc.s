# fn_802E83DC - actor @lbl_804A9FB0: main per-frame update() (0x688, largest piece)
# State-machine driver on this->0x244 (states 0-4+). State 0 seeds a
# two-region search box (this->0x60/0x64/0x68/0x6c, both centered on
# position +/- a radius) used by fn_802E7DB8/fn_802E80A0 (called directly
# from later states to locate the nearest "KEY0" actor). Also reuses several
# player-state helpers (fn_8023AF14, fn_8023B0F4, fn_8023EE28/EEB4/EF50),
# spawns effects via fn_8013CC50 x4, dispatches "KMRI"-style FourCC messages
# via fn_801F9484 x2, and notifies via fn_801F0E34 x3 + GetRoomConfigRecord (per-
# room config) x4. Track A: byte-match verified, structural overview per the
# large/complex-function exception - this actor appears to search for and
# consume/react to a nearby key actor, plausibly a lock or key-gated door
# variant distinct from the already-landed KEY0/DOOR pair.
.section extab, "a"
.balign 4
.global etb_8000D0DC
etb_8000D0DC:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000D0DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C27C
eti_8001C27C:
    .4byte fn_802E83DC
    .4byte 0x00000688
    .4byte etb_8000D0DC
.size eti_8001C27C, 12

.text
.balign 4
.global fn_802E83DC

fn_802E83DC:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 30, 3
    lwz 0, 0x244(3)
    cmpwi 0, 0x2
    .4byte 0x418204C0 # beq .L_802E88D4
    .4byte 0x40800014 # bge .L_802E842C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802E8438
    .4byte 0x40800474 # bge .L_802E8898
    .4byte 0x4800060C # b .L_802E8A34
L_802E842C:
    cmpwi 0, 0x4
    .4byte 0x40800604 # bge .L_802E8A34
    .4byte 0x48000510 # b .L_802E8944
L_802E8438:
    .4byte 0xC002E2EC # lfs f0, lbl_8054128C@sda21(r0)
    addi 3, 1, 0x2c
    .4byte 0xC062E2F0 # lfs f3, lbl_80541290@sda21(r0)
    li 5, 0x0
    stfs 0, 0x80(30)
    .4byte 0xC042E2F4 # lfs f2, lbl_80541294@sda21(r0)
    stfs 0, 0x84(30)
    .4byte 0xC002E2F8 # lfs f0, lbl_80541298@sda21(r0)
    stfs 3, 0x88(30)
    .4byte 0xC022E2C8 # lfs f1, lbl_80541268@sda21(r0)
    stfs 3, 0x8c(30)
    lwz 4, 0x80(30)
    lwz 0, 0x84(30)
    stw 4, 0x2c(1)
    stw 0, 0x30(1)
    lfs 6, 0x2c(1)
    lwz 4, 0x88(30)
    lwz 0, 0x8c(30)
    lfs 5, 0x30(1)
    stw 4, 0x34(1)
    stw 0, 0x38(1)
    lfs 4, 0x34(1)
    lfs 31, 0xc(30)
    lfs 30, 0x10(30)
    lfs 3, 0x38(1)
    fadds 6, 6, 31
    fadds 5, 5, 30
    fadds 4, 4, 31
    fadds 3, 3, 30
    stfs 6, 0x2c(1)
    stfs 5, 0x30(1)
    stfs 4, 0x34(1)
    stfs 3, 0x38(1)
    stfs 2, 0x60(30)
    stfs 2, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x2c(1)
    fadds 4, 0, 31
    lfs 0, 0x64(30)
    stfs 0, 0x30(1)
    fadds 3, 0, 30
    lfs 0, 0x68(30)
    stfs 0, 0x34(1)
    fadds 2, 0, 31
    lfs 5, 0x6c(30)
    fadds 0, 5, 30
    stfs 5, 0x38(1)
    stfs 4, 0x2c(1)
    stfs 3, 0x30(1)
    stfs 2, 0x34(1)
    stfs 0, 0x38(1)
    lwz 4, 0x4(30)
    bl fn_8023AF14
    stw 3, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x418000E0 # blt .L_802E8600
    lwz 0, 0x234(30)
    cmplwi 0, 0x0
    .4byte 0x408200BC # bne .L_802E85E8
    lfs 3, 0x14(30)
    addi 4, 1, 0x14
    lfs 2, 0x10(30)
    li 5, 0x2a7
    lfs 0, 0xc(30)
    li 6, 0x1
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 7, 0x0
    stfs 0, 0x14(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x18(1)
    stfs 3, 0x1c(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    stw 3, 0x234(30)
    li 4, 0x9
    li 5, 0x0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134DE4
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x1
    .4byte 0x40820058 # bne .L_802E85E8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_802E85E8
    bl GetRoomConfigRecord
    lwz 4, 0x250(30)
    li 5, 0x24e
    li 6, 0x0
    bl fn_802D46D8
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_802E85E8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x24e
    lwz 5, 0x250(30)
    li 6, 0x0
    bl fn_8043D67C
    bl GetRoomConfigRecord
    lwz 4, 0x250(30)
    li 5, 0x24e
    li 6, 0x1
    bl fn_802D46D8
L_802E85E8:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x50
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000034 # b .L_802E8630
L_802E8600:
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_802E8618
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x230(30)
L_802E8618:
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_802E8630
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x234(30)
L_802E8630:
    mr 3, 30
    bl fn_802E7DB8
    lwz 0, 0x244(30)
    cmpwi 0, 0x1
    .4byte 0x4182024C # beq .L_802E888C
    .4byte 0xC022E2C0 # lfs f1, lbl_80541260@sda21(r0)
    li 31, 0x0
    .4byte 0xC002E2FC # lfs f0, lbl_8054129C@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022E2C4 # lfs f1, lbl_80541264@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002E300 # lfs f0, lbl_805412A0@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x2c(1)
    fadds 3, 0, 31
    lfs 0, 0x64(30)
    stfs 0, 0x30(1)
    fadds 2, 0, 30
    lfs 0, 0x68(30)
    stfs 0, 0x34(1)
    fadds 1, 0, 31
    lfs 4, 0x6c(30)
    fadds 0, 4, 30
    stfs 4, 0x38(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x30(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
L_802E86A8:
    lwz 5, 0x4(30)
    mr 3, 31
    .4byte 0xC022E2C8 # lfs f1, lbl_80541268@sda21(r0)
    addi 4, 1, 0x2c
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201B8 # bne .L_802E8880
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x408201A4 # bne .L_802E8880
    mr 3, 31
    bl fn_8023EF50
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x41820184 # beq .L_802E8880
    lwz 0, 0x280(28)
    cmpwi 0, 0x6
    .4byte 0x40820178 # bne .L_802E8880
    psq_l 1, 0xc(28), 0, 0
    li 3, 0x1
    lfs 0, 0x14(28)
    li 0, 0x14
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    stw 3, 0x244(30)
    stw 0, 0x24c(30)
    lwz 29, 0x4(30)
    cmpwi 29, 0x8
    .4byte 0x4180002C # blt .L_802E8760
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 29
    addi 4, 4, 0x5249
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000108 # b .L_802E8864
L_802E8760:
    psq_l 1, 0x20(1), 0, 0
    lfs 0, 0x28(1)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E8780
    bl fn_801EE434
L_802E8780:
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E8790
    bl fn_801EE434
L_802E8790:
    lwz 3, 0x238(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E87A0
    bl fn_801EE434
L_802E87A0:
    lwz 3, 0x23c(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E87B0
    bl fn_801EE434
L_802E87B0:
    lwz 3, 0x240(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E87C0
    bl fn_801EE434
L_802E87C0:
    li 0, 0x0
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    stw 0, 0x230(30)
    addi 4, 1, 0x8
    li 5, 0x85
    li 6, 0x0
    stw 0, 0x234(30)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stw 0, 0x238(30)
    li 10, 0x1
    stw 0, 0x23c(30)
    stw 0, 0x240(30)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x8
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 5, 0x86
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x8
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 5, 0x87
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x69
    li 5, 0x0
    bl fn_801F0E34
L_802E8864:
    mr 3, 28
    bl fn_802C5284
    mr 3, 31
    bl fn_8023EE28
    mr 3, 30
    bl fn_801F34DC
    .4byte 0x48000010 # b .L_802E888C
L_802E8880:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE20 # blt .L_802E86A8
L_802E888C:
    mr 3, 30
    bl fn_802E80A0
    .4byte 0x480001A0 # b .L_802E8A34
L_802E8898:
    lwz 4, 0x24c(30)
    cmpwi 4, 0x0
    .4byte 0x40820028 # bne .L_802E88C8
    li 0, 0x2
    lis 4, 0x3
    stw 0, 0x24c(30)
    addi 4, 4, 0x4f
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x2
    stw 0, 0x244(30)
    .4byte 0x48000170 # b .L_802E8A34
L_802E88C8:
    subi 0, 4, 0x1
    stw 0, 0x24c(30)
    .4byte 0x48000164 # b .L_802E8A34
L_802E88D4:
    lwz 3, 0x24c(30)
    subi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x4082014C # bne .L_802E8A34
    lwz 0, 0x248(30)
    lis 3, lbl_8046F270@ha
    lwz 4, 0x90(30)
    addi 3, 3, lbl_8046F270@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    clrrwi 3, 4, 8
    or 29, 3, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x4349
    lwz 5, 0x4(30)
    mr 7, 29
    addi 6, 30, 0xc
    addi 4, 4, 0x5243
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 3, 0x3
    li 0, 0x3c
    stw 3, 0x244(30)
    stw 0, 0x24c(30)
    .4byte 0x480000F4 # b .L_802E8A34
L_802E8944:
    lwz 4, 0x24c(30)
    subi 0, 4, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_802E8A34
    li 4, 0x3
    bl fn_801F0D20
    lwz 5, 0x230(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802E898C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(30)
L_802E898C:
    lwz 5, 0x234(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802E89B4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(30)
L_802E89B4:
    lwz 5, 0x238(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802E89DC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x238(30)
L_802E89DC:
    lwz 5, 0x23c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802E8A04
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(30)
L_802E8A04:
    lwz 5, 0x240(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802E8A2C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x240(30)
L_802E8A2C:
    li 0, 0x0
    stb 0, 0x11c(30)
L_802E8A34:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 0, 0x74(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

