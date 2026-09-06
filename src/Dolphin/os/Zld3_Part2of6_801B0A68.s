# ZLD3 cluster, part 2/6 (Track A byte-match + overview -
# 0x1598=5528B, the LARGEST piece of this actor). update() core. Uses
# the confirmed effect spawn/sync fn_8013CB44/fn_8013CC50, ease
# fn_801F71A4, the player validity/position family fn_8023DE58/
# fn_8023E724/Player_GetCapabilityFlagByIndex, the per-room config family GetRoomConfigRecord/
# fn_802D79E8/fn_802D8050/fn_802D9FF4/fn_802DBD60, its own private
# helpers fn_801B2000/Zld3_AdvanceAnimPhase (landed alongside), fn_801F0E34/
# fn_801F6884/fn_801F68E0/SpatialRegistry_GetBase, sound fn_80458FF0, plus
# unfamiliar fn_80119998/fn_80119DD0/fn_8022FE80/fn_80230498/
# fn_80230BF4/fn_80388CAC/fn_8038AD24.
.section extab, "a"
.balign 4
.global etb_80007B9C
etb_80007B9C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80007B9C, 8

.section extabindex, "a"
.balign 4
.global eti_80014AE8
eti_80014AE8:
    .4byte fn_801B0A68
    .4byte 0x00001598
    .4byte etb_80007B9C
.size eti_80014AE8, 12

.text
.balign 4
.global fn_801B0A68

fn_801B0A68:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 31, 3
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801B0AA4
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_801B0AA8
L_801B0AA4:
    addi 6, 3, 0xdc
L_801B0AA8:
    lwz 7, 0x230(31)
    lwz 5, 0x0(6)
    lwz 4, 0x4(6)
    cmpwi 7, 0x0
    lwz 3, 0x8(6)
    lwz 0, 0xc(6)
    stw 5, 0x38(1)
    stw 4, 0x3c(1)
    stw 3, 0x40(1)
    stw 0, 0x44(1)
    .4byte 0x41820084 # beq .L_801B0B54
    cmpwi 7, 0x1
    .4byte 0x4182007C # beq .L_801B0B54
    cmpwi 7, 0x2
    .4byte 0x41820074 # beq .L_801B0B54
    cmpwi 7, 0x3
    .4byte 0x4182006C # beq .L_801B0B54
    cmpwi 7, 0x4
    .4byte 0x41820064 # beq .L_801B0B54
    cmpwi 7, 0x5
    .4byte 0x4182005C # beq .L_801B0B54
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    .4byte 0xC042B944 # lfs f2, lbl_8053E8E4@sda21(r0)
    bl fn_802D79E8
    lfs 1, 0xc(31)
    .4byte 0xC002B944 # lfs f0, lbl_8053E8E4@sda21(r0)
    stfs 1, 0x2c(1)
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x14(31)
    stfs 0, 0x10(31)
    stfs 0, 0xc(31)
    lfs 0, 0x2c(1)
    stfs 0, 0xc(31)
    lfs 0, 0x30(1)
    stfs 0, 0x10(31)
    lfs 0, 0x34(1)
    stfs 0, 0x14(31)
L_801B0B54:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x41820014 # beq .L_801B0B70
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_801B0B70
    cmpwi 0, 0xa
    .4byte 0x40820090 # bne .L_801B0BFC
L_801B0B70:
    lfs 1, 0xc(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801B0BD8
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x2c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x30(1)
    stfs 0, 0x800(4)
    lfs 0, 0x34(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B0BD8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B0BFC
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B0BFC:
    lwz 0, 0x230(31)
    cmplwi 0, 0x17
    .4byte 0x41811390 # bgt .L_801B1F94
    lis 3, jumptable_804A3600@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3600@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41821368 # beq .L_801B1F94
    li 29, 0x0
L_801B0C34:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_801B0CE0
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x4082008C # bne .L_801B0CE0
    mr 3, 29
    bl fn_8023E724
    xoris 5, 29, 0x8000
    lis 0, 0x4330
    lfs 0, 0x0(3)
    addi 4, 1, 0x2c
    stw 5, 0x4c(1)
    li 5, 0x3e
    .4byte 0xC822B980 # lfd f1, lbl_8053E920@sda21(r0)
    li 6, 0xff
    stw 0, 0x48(1)
    li 7, -0x80
    .4byte 0xC042B954 # lfs f2, lbl_8053E8F4@sda21(r0)
    li 8, -0x80
    stfs 0, 0x2c(1)
    li 9, 0x1
    lfd 0, 0x48(1)
    lfs 3, 0x4(3)
    fsubs 1, 0, 1
    .4byte 0xC002B950 # lfs f0, lbl_8053E8F0@sda21(r0)
    stfs 3, 0x30(1)
    lfs 3, 0x8(3)
    fmadds 0, 2, 1, 0
    mr 3, 29
    stfs 3, 0x34(1)
    stfs 0, 0x2c(1)
    bl fn_80230498
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x4(3)
    mr 3, 29
    li 4, 0x2
    stfs 0, 0x268(31)
    bl fn_80230BF4
L_801B0CE0:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF4C # blt .L_801B0C34
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x250(31)
    li 0, 0x1
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x48001290 # b .L_801B1F94
    .4byte 0xC022B958 # lfs f1, lbl_8053E8F8@sda21(r0)
    mr 3, 31
    li 4, 0x0
    bl fn_801B2000
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x3c
    .4byte 0x41801268 # blt .L_801B1F94
    li 0, 0x3d
    stw 0, 0x244(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_801B0D84
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 1, 0x38(1)
    stw 3, 0x7f8(4)
    lfs 0, 0x3c(1)
    stfs 1, 0x808(4)
    lfs 1, 0x40(1)
    stfs 0, 0x80c(4)
    lfs 0, 0x44(1)
    stfs 1, 0x810(4)
    stfs 0, 0x814(4)
    stb 0, 0x7f6(4)
L_801B0D84:
    .4byte 0xC022B95C # lfs f1, lbl_8053E8FC@sda21(r0)
    mr 3, 31
    li 4, 0x1
    bl fn_801B2000
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x418211F8 # beq .L_801B1F94
    li 3, 0x0
    li 0, 0x2
    stb 3, 0x258(31)
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0xC022B958 # lfs f1, lbl_8053E8F8@sda21(r0)
    mr 3, 31
    li 4, 0x1
    bl fn_801B2000
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x1e
    .4byte 0x40820084 # bne .L_801B0E5C
    lfs 1, 0xc(31)
    lis 4, 0x4
    .4byte 0xC002B954 # lfs f0, lbl_8053E8F4@sda21(r0)
    mr 3, 31
    stfs 1, 0x2c(1)
    addi 4, 4, 0xb5
    li 5, 0x0
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x2c
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    li 5, 0x33b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0xf
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x3
    stw 0, 0x250(31)
L_801B0E5C:
    lfs 1, 0xc(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801B0EC4
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x2c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x30(1)
    stfs 0, 0x800(4)
    lfs 0, 0x34(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B0EC4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B0EE8
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B0EE8:
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x418210A4 # beq .L_801B1F94
    .4byte 0xC022B958 # lfs f1, lbl_8053E8F8@sda21(r0)
    mr 3, 31
    li 4, 0x0
    bl fn_801B2000
    lwz 0, 0x244(31)
    cmpwi 0, 0x1e
    .4byte 0x41801088 # blt .L_801B1F94
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    lfs 1, 0xc(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B0F8C
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B0F8C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B0FB0
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B0FB0:
    lbz 0, 0x259(31)
    cmplwi 0, 0x0
    .4byte 0x41820FDC # beq .L_801B1F94
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x3c
    .4byte 0x41800FC4 # blt .L_801B1F94
    li 0, 0x3c
    .4byte 0xC022B944 # lfs f1, lbl_8053E8E4@sda21(r0)
    stw 0, 0x244(31)
    li 3, 0x0
    .4byte 0xC002B964 # lfs f0, lbl_8053E904@sda21(r0)
    li 6, 0x0
    stfs 1, 0x30(1)
    li 7, 0x0
    stfs 1, 0x34(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 5, 0x198(31)
    addi 7, 1, 0x20
    lwz 6, 0x4(31)
    li 3, 0x0
    psq_l 1, 0x2c(1), 0, 0
    li 4, 0x2d6
    lfs 0, 0x34(1)
    li 8, 0x4102
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x28(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820F58 # beq .L_801B1F94
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000F4C # b .L_801B1F94
    lfs 1, 0xc(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B10B8
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B10B8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B10DC
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B10DC:
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820E90 # beq .L_801B1F94
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x3c
    .4byte 0x40800098 # bge .L_801B11C4
    lfs 1, 0xc(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B119C
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B119C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820DE8 # bne .L_801B1F94
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
    .4byte 0x48000DD4 # b .L_801B1F94
L_801B11C4:
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x244(31)
    mr 3, 31
    addi 4, 4, 0xb5
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 1, 0x2c
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    li 5, 0x33b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    bl GetRoomConfigRecord
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    li 0, 0x6
    stw 0, 0x230(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x78
    .4byte 0x40800098 # bge .L_801B12D0
    lfs 1, 0xc(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B12A8
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B12A8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820CDC # bne .L_801B1F94
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
    .4byte 0x48000CC8 # b .L_801B1F94
L_801B12D0:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x22
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 3, 0x0
    li 0, 0x7
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    lfs 0, 0x264(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x2c(1)
    lfs 0, 0x268(31)
    stfs 0, 0x30(1)
    lfs 0, 0x26c(31)
    stfs 0, 0x34(1)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801B1354
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x2c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x30(1)
    stfs 0, 0x800(4)
    lfs 0, 0x34(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B1354:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1378
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1378:
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x12c
    .4byte 0x41800C08 # blt .L_801B1F94
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x78
    .4byte 0x41800BE0 # blt .L_801B1F94
    li 0, 0x78
    .4byte 0xC022B944 # lfs f1, lbl_8053E8E4@sda21(r0)
    stw 0, 0x244(31)
    li 3, 0x0
    .4byte 0xC002B964 # lfs f0, lbl_8053E904@sda21(r0)
    li 6, 0x0
    stfs 1, 0x30(1)
    li 7, 0x0
    stfs 1, 0x34(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 5, 0x198(31)
    addi 7, 1, 0x14
    lwz 6, 0x4(31)
    li 3, 0x0
    psq_l 1, 0x2c(1), 0, 0
    li 4, 0x2d7
    lfs 0, 0x34(1)
    li 8, 0x4102
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x1c(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820B74 # beq .L_801B1F94
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x48000B60 # b .L_801B1F94
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820B34 # beq .L_801B1F94
    li 0, 0xa
    stw 0, 0x230(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x3c
    .4byte 0x41800B14 # blt .L_801B1F94
    li 0, 0x0
    li 3, 0x4
    stw 0, 0x244(31)
    li 0, 0xb
    lfs 0, 0xc(31)
    stfs 0, 0x270(31)
    lfs 0, 0x10(31)
    stfs 0, 0x274(31)
    lfs 0, 0x14(31)
    stfs 0, 0x278(31)
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x48000AE0 # b .L_801B1F94
    lfs 1, 0x270(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x274(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x278(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801B1520
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x2c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x30(1)
    stfs 0, 0x800(4)
    lfs 0, 0x34(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B1520:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1544
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1544:
    lbz 0, 0x259(31)
    cmplwi 0, 0x0
    .4byte 0x41820A48 # beq .L_801B1F94
    li 0, 0x1
    li 3, 0x0
    stw 0, 0x250(31)
    li 0, 0xc
    stw 3, 0x244(31)
    stb 3, 0x258(31)
    stw 0, 0x230(31)
    .4byte 0xC022B958 # lfs f1, lbl_8053E8F8@sda21(r0)
    mr 3, 31
    li 4, 0x1
    bl fn_801B2000
    .4byte 0xC022B954 # lfs f1, lbl_8053E8F4@sda21(r0)
    addi 3, 31, 0x10
    lfs 0, 0x10(31)
    .4byte 0xC042B968 # lfs f2, lbl_8053E908@sda21(r0)
    fadds 1, 1, 0
    .4byte 0xC062B940 # lfs f3, lbl_8053E8E0@sda21(r0)
    bl fn_801F71A4
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0xf0
    .4byte 0x40800094 # bge .L_801B1640
    lfs 1, 0x270(31)
    .4byte 0xC002B948 # lfs f0, lbl_8053E8E8@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x274(31)
    stfs 1, 0x30(1)
    fsubs 0, 1, 0
    lfs 1, 0x278(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801B1618
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x2c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x30(1)
    stfs 0, 0x800(4)
    lfs 0, 0x34(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B1618:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x4082096C # bne .L_801B1F94
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
    .4byte 0x48000958 # b .L_801B1F94
L_801B1640:
    li 3, 0x0
    li 0, 0xd
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    lfs 0, 0x264(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x2c(1)
    lfs 0, 0x268(31)
    stfs 0, 0x30(1)
    lfs 0, 0x26c(31)
    stfs 0, 0x34(1)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801B16AC
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x2c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x30(1)
    stfs 0, 0x800(4)
    lfs 0, 0x34(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B16AC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B16D0
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B16D0:
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x78
    .4byte 0x418008B0 # blt .L_801B1F94
    bl fn_80119DD0
    li 4, 0x64
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x65
    li 10, 0x0
    bl fn_80119998
    bl GetRoomConfigRecord
    li 4, 0x10
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    li 3, 0x64
    li 0, 0xe
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    lfs 0, 0x264(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x2c(1)
    lfs 0, 0x268(31)
    stfs 0, 0x30(1)
    lfs 0, 0x26c(31)
    stfs 0, 0x34(1)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801B178C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x2c(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x30(1)
    stfs 0, 0x800(4)
    lfs 0, 0x34(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B178C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B17B0
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B17B0:
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408007D0 # bge .L_801B1F94
    bl GetRoomConfigRecord
    li 4, 0x8
    li 5, 0x0
    bl fn_802D9FF4
    bl GetRoomConfigRecord
    bl fn_802DBD60
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480007AC # b .L_801B1F94
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x4182079C # beq .L_801B1F94
    li 0, 0x10
    stw 0, 0x230(31)
    lfs 1, 0x264(31)
    .4byte 0xC002B96C # lfs f0, lbl_8053E90C@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x268(31)
    stfs 1, 0x30(1)
    fadds 0, 1, 0
    lfs 1, 0x26c(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B1870
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B1870:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1894
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1894:
    li 3, 0xc8
    li 0, 0x11
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    lfs 1, 0x264(31)
    .4byte 0xC002B96C # lfs f0, lbl_8053E90C@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x268(31)
    stfs 1, 0x30(1)
    fadds 0, 1, 0
    lfs 1, 0x26c(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B1910
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B1910:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1934
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1934:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820658 # bne .L_801B1F94
    .4byte 0xC022B944 # lfs f1, lbl_8053E8E4@sda21(r0)
    li 3, 0x0
    .4byte 0xC002B964 # lfs f0, lbl_8053E904@sda21(r0)
    li 6, 0x0
    stfs 1, 0x30(1)
    li 7, 0x0
    stfs 1, 0x34(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 5, 0x198(31)
    addi 7, 1, 0x8
    lwz 6, 0x4(31)
    li 3, 0x0
    psq_l 1, 0x2c(1), 0, 0
    li 4, 0x2e1
    lfs 0, 0x34(1)
    li 8, 0x4102
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418205F4 # beq .L_801B1F94
    li 0, 0x12
    stw 0, 0x230(31)
    .4byte 0x480005E8 # b .L_801B1F94
    lfs 1, 0x264(31)
    .4byte 0xC002B96C # lfs f0, lbl_8053E90C@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x268(31)
    stfs 1, 0x30(1)
    fadds 0, 1, 0
    lfs 1, 0x26c(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B1A1C
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B1A1C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1A40
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1A40:
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182052C # beq .L_801B1F94
    bl fn_80119DD0
    li 4, 0x32
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x33
    li 10, 0x0
    bl fn_80119998
    li 3, 0x64
    li 0, 0x13
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    lfs 1, 0x264(31)
    .4byte 0xC002B96C # lfs f0, lbl_8053E90C@sda21(r0)
    stfs 1, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x268(31)
    stfs 1, 0x30(1)
    fadds 0, 1, 0
    lfs 1, 0x26c(31)
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B1B0C
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x2c(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x30(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B1B0C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1B30
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1B30:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082045C # bne .L_801B1F94
    bl GetRoomConfigRecord
    li 4, 0x9
    li 5, 0x0
    bl fn_802D9FF4
    bl GetRoomConfigRecord
    bl fn_802DBD60
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000438 # b .L_801B1F94
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820428 # beq .L_801B1F94
    li 3, 0x0
    bl fn_8023E724
    lfs 0, 0x4(3)
    li 3, 0x96
    li 0, 0x15
    stfs 0, 0x268(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B1BD8
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x264(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x268(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B1BD8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1BFC
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1BFC:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820390 # bne .L_801B1F94
    lfs 0, 0x264(31)
    .4byte 0xC022B970 # lfs f1, lbl_8053E910@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0xC002B940 # lfs f0, lbl_8053E8E0@sda21(r0)
    lfs 2, 0x268(31)
    stfs 2, 0x280(31)
    lfs 2, 0x26c(31)
    stfs 2, 0x284(31)
    lfs 2, 0x280(31)
    fadds 1, 2, 1
    stfs 1, 0x280(31)
    stfs 0, 0x25c(31)
    lwz 0, 0x2b8(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_801B1C70
    lwz 3, 0x4(31)
    addi 4, 31, 0x27c
    .4byte 0xC022B974 # lfs f1, lbl_8053E914@sda21(r0)
    li 5, 0x224
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2b8(31)
L_801B1C70:
    lwz 0, 0x2bc(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_801B1CA8
    lwz 3, 0x4(31)
    addi 4, 31, 0x27c
    .4byte 0xC022B974 # lfs f1, lbl_8053E914@sda21(r0)
    li 5, 0x225
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2bc(31)
L_801B1CA8:
    lwz 0, 0x2b8(31)
    cmplwi 0, 0x0
    .4byte 0x418202E4 # beq .L_801B1F94
    lwz 0, 0x2bc(31)
    cmplwi 0, 0x0
    .4byte 0x418202D8 # beq .L_801B1F94
    lfs 0, 0xc(31)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    stfs 0, 0x2c(1)
    addi 4, 4, 0xba
    lfs 0, 0x10(31)
    stfs 0, 0x30(1)
    lfs 0, 0x14(31)
    stfs 0, 0x34(1)
    lfs 0, 0x27c(31)
    stfs 0, 0xc(31)
    lfs 0, 0x280(31)
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    bl fn_801F0E34
    lfs 0, 0x2c(1)
    li 0, 0x16
    stfs 0, 0xc(31)
    lfs 0, 0x30(1)
    stfs 0, 0x10(31)
    lfs 0, 0x34(1)
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B1D6C
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x264(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x268(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B1D6C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1D90
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1D90:
    lwz 6, 0x244(31)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x1
    addi 4, 4, 0x58
    stw 0, 0x244(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2c(1)
    lfs 0, 0x10(31)
    stfs 0, 0x30(1)
    lfs 0, 0x14(31)
    stfs 0, 0x34(1)
    lfs 0, 0x27c(31)
    stfs 0, 0xc(31)
    lfs 0, 0x280(31)
    stfs 0, 0x10(31)
    lfs 0, 0x284(31)
    stfs 0, 0x14(31)
    bl fn_801F0E34
    lfs 0, 0x2c(1)
    mr 30, 31
    li 29, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x30(1)
    stfs 0, 0x10(31)
    lfs 0, 0x34(1)
    stfs 0, 0x14(31)
L_801B1E00:
    lwz 3, 0x2b8(30)
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_801B1E3C
    addi 4, 31, 0x27c
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lfs 0, 0x25c(31)
    lwz 3, 0x2b8(30)
    stfs 0, 0x98(3)
    stfs 0, 0x9c(3)
    stfs 0, 0xa0(3)
    stfs 0, 0xb0(3)
    stfs 0, 0xb4(3)
L_801B1E3C:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFB8 # blt .L_801B1E00
    lwz 4, 0x244(31)
    addi 3, 31, 0x27c
    .4byte 0xC082B978 # lfs f4, lbl_8053E918@sda21(r0)
    addi 0, 4, 0x1
    .4byte 0xC042B974 # lfs f2, lbl_8053E914@sda21(r0)
    stw 0, 0x244(31)
    .4byte 0xC062B97C # lfs f3, lbl_8053E91C@sda21(r0)
    lfs 1, 0x268(31)
    lfs 0, 0x264(31)
    fadds 31, 4, 1
    fsubs 1, 0, 4
    bl fn_801F71A4
    fmr 1, 31
    .4byte 0xC042B974 # lfs f2, lbl_8053E914@sda21(r0)
    .4byte 0xC062B97C # lfs f3, lbl_8053E91C@sda21(r0)
    addi 3, 31, 0x280
    bl fn_801F71A4
    lwz 0, 0x244(31)
    cmpwi 0, 0x2bc
    .4byte 0x418000FC # blt .L_801B1F94
    bl fn_80119DD0
    li 4, 0x64
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x65
    li 10, 0x0
    bl fn_80119998
    li 0, 0xc8
    li 3, 0x0
    stw 0, 0x238(31)
    li 0, 0x17
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_801B1F28
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x22
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    bl GetRoomConfigRecord
    li 4, 0x9
    li 5, 0x2
    bl fn_802D9FF4
    bl GetRoomConfigRecord
    bl fn_802DBD60
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000070 # b .L_801B1F94
L_801B1F28:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801B1F70
    li 0, 0x1
    .4byte 0xC022B940 # lfs f1, lbl_8053E8E0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002B960 # lfs f0, lbl_8053E900@sda21(r0)
    lfs 2, 0x264(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x268(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B1F70:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B1F94
    li 0, 0x1
    .4byte 0xC002B94C # lfs f0, lbl_8053E8EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B1F94:
    lwz 4, 0x250(31)
    mr 3, 31
    bl Zld3_AdvanceAnimPhase
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B1FB4
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801B1FB4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B1FC8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801B1FC8:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B1FDC
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_801B1FDC:
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

