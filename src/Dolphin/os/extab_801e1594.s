/*
 * TINK (vtable lbl_804A51E4) - fn_801E1594(this, newState). The shared
 * state-ENTRY handler: a 19-way jumptable (jumptable_804A5320) on newState
 * performing per-state setup (resolving an anchor point either from a
 * stored offset via fn_8023E724, or from whichever of the 3 tracked
 * targets resolves first via the spatial registry; a "reaction distance"
 * check against the confirmed room-config record GetRoomConfigRecord deciding
 * this->0xc/0x98 (facing pair); queuing rail-history appends via
 * fn_801D22DC/fn_801D22A0; and per-state calls into fn_8020D2AC/
 * fn_80218538/fn_801F0E34/fn_8020D16C/fn_8020CFC4, all still unconfirmed
 * anim/sound/pose setters). Every path converges on a shared tail that
 * unconditionally commits the transition: this->0x24c = 0;
 * this->0x248 = newState. Called throughout fn_801DEA70/fn_801E002C/
 * fn_801E0CF4/fn_801E1300 as TINK's single state-transition primitive
 * (directly analogous to SLK2's fn_801C3B7C).
 */
.section extab, "a"
.balign 4
.global etb_80008958
etb_80008958:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_80008958, 8

.section extabindex, "a"
.balign 4
.global eti_80015E38
eti_80015E38:
    .4byte fn_801E1594
    .4byte 0x00000520
    .4byte etb_80008958
.size eti_80015E38, 12

.text
.balign 4
.global fn_801E1594

fn_801E1594:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 31, 4
    mr 30, 3
    cmplwi 31, 0x12
    .4byte 0x418104AC # bgt .L_801E1A78
    lis 4, jumptable_804A5320@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_804A5320@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_801E1E08
    .4byte 0x4800048C # b .L_801E1A78
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x40820174 # bne .L_801E176C
    cmpwi 31, 0x1
    .4byte 0x4082016C # bne .L_801E176C
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x41820020 # beq .L_801E162C
    lwz 3, 0x2a8(30)
    bl fn_8023E724
    lfs 30, 0x0(3)
    lwz 3, 0x2a8(30)
    bl fn_8023E724
    lfs 31, 0x4(3)
    .4byte 0x48000068 # b .L_801E1690
L_801E162C:
    lwz 28, 0x2ac(30)
    li 3, 0x0
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801E1648
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
L_801E1648:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E1668
    lwz 28, 0x2b0(30)
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801E1668
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
L_801E1668:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E1688
    lwz 28, 0x2b4(30)
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801E1688
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
L_801E1688:
    lfs 30, 0xc(3)
    lfs 31, 0x10(3)
L_801E1690:
    lwz 28, 0x4(30)
    li 29, 0x0
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_801E16AC
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E16B0
L_801E16AC:
    addi 3, 3, 0xdc
L_801E16B0:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 30, 0
    .4byte 0x40800008 # bge .L_801E16D0
    li 29, 0x1
L_801E16D0:
    clrlwi. 0, 29, 24
    .4byte 0x4182003C # beq .L_801E1710
    lwz 28, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_801E16F0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E16F4
L_801E16F0:
    addi 3, 3, 0xdc
L_801E16F4:
    .4byte 0xC022C504 # lfs f1, lbl_8053F4A4@sda21(r0)
    li 0, 0x1
    lfs 0, 0x8(3)
    fadds 0, 1, 0
    stfs 0, 0xc(30)
    stw 0, 0x98(30)
    .4byte 0x48000038 # b .L_801E1744
L_801E1710:
    lwz 28, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_801E1728
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E172C
L_801E1728:
    addi 3, 3, 0xdc
L_801E172C:
    lfs 1, 0x0(3)
    li 0, 0x0
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(30)
    stw 0, 0x98(30)
L_801E1744:
    stfs 31, 0x10(30)
    lis 3, 0x5
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    addi 0, 3, 0x1303
    stfs 0, 0x14(30)
    lfs 1, 0x10(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2c4(30)
    stfs 1, 0x2c8(30)
    stw 0, 0xb0(30)
L_801E176C:
    li 0, -0x1
    stw 0, 0x250(30)
    lwz 0, 0x2bc(30)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801E178C
    .4byte 0xC002C4F0 # lfs f0, lbl_8053F490@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x48000024 # b .L_801E17AC
L_801E178C:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820010 # beq .L_801E17A4
    .4byte 0xC002C4F0 # lfs f0, lbl_8053F490@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x4800000C # b .L_801E17AC
L_801E17A4:
    .4byte 0xC002C51C # lfs f0, lbl_8053F4BC@sda21(r0)
    stfs 0, 0x258(30)
L_801E17AC:
    lwz 0, 0x248(30)
    cmpwi 0, 0xd
    .4byte 0x40820020 # bne .L_801E17D4
    lwz 4, 0x98(30)
    addi 3, 30, 0x270
    li 5, 0x0
    li 6, 0x0
    addi 4, 4, 0xd
    bl fn_801D22DC
    .4byte 0x480002A8 # b .L_801E1A78
L_801E17D4:
    lwz 4, 0x98(30)
    addi 3, 30, 0x270
    li 5, 0x2
    bl fn_801D22A0
    .4byte 0x48000294 # b .L_801E1A78
    li 0, -0x1
    .4byte 0xC002C51C # lfs f0, lbl_8053F4BC@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    lwz 0, 0x2ac(30)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_801E1820
    lwz 4, 0x98(30)
    addi 3, 30, 0x270
    li 5, 0x2
    li 6, 0x0
    addi 4, 4, 0xf
    bl fn_801D22DC
    .4byte 0x4800025C # b .L_801E1A78
L_801E1820:
    lwz 4, 0x98(30)
    addi 3, 30, 0x270
    li 5, 0x2
    bl fn_801D22A0
    .4byte 0x48000248 # b .L_801E1A78
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 4, 0x2
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000220 # b .L_801E1A78
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0x5a
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    li 0, 0x2d
    mr 3, 30
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    sth 0, 0x2ce(30)
    bl fn_8020D2AC
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x408201E8 # bne .L_801E1A78
    mr 3, 30
    bl fn_80218538
    clrlwi. 0, 3, 24
    .4byte 0x418201D8 # beq .L_801E1A78
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x70
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001C0 # b .L_801E1A78
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 5, 0x0
    li 6, 0x0
    stfs 0, 0x258(30)
    lwz 4, 0x98(30)
    addi 4, 4, 0x3
    bl fn_801D22DC
    .4byte 0x48000194 # b .L_801E1A78
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 4, 0x5
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800016C # b .L_801E1A78
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 4, 0x6
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000144 # b .L_801E1A78
    bl fn_8020D16C
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 4, 0x7
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000118 # b .L_801E1A78
    li 0, 0x2
    li 3, 0x259
    stw 0, 0x98(30)
    bl fn_801CD664
    addi 0, 3, 0x12c
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 5, 0x0
    li 6, 0x0
    stfs 0, 0x258(30)
    lwz 4, 0x98(30)
    addi 4, 4, 0x8
    bl fn_801D22DC
    .4byte 0x480000DC # b .L_801E1A78
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 4, 0xc
    li 5, 0x0
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480000B4 # b .L_801E1A78
    bl fn_8020CFC4
    .4byte 0xC042C4E0 # lfs f2, lbl_8053F480@sda21(r0)
    li 7, 0x0
    .4byte 0xC022C520 # lfs f1, lbl_8053F4C0@sda21(r0)
    li 0, -0x1
    stfs 2, 0x40(30)
    addi 3, 30, 0x270
    .4byte 0xC002C524 # lfs f0, lbl_8053F4C4@sda21(r0)
    li 4, 0x6
    stfs 2, 0x3c(30)
    li 5, 0x0
    li 6, 0x0
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stw 7, 0xb0(30)
    stw 0, 0x250(30)
    stfs 2, 0x254(30)
    stfs 2, 0x258(30)
    bl fn_801D22DC
    .4byte 0x4800003C # b .L_801E1A78
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x270
    li 5, 0x2
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    lwz 4, 0x98(30)
    bl fn_801D22A0
    .4byte 0x48000014 # b .L_801E1A78
    lis 4, 0x5
    li 5, 0x0
    addi 4, 4, 0x1d
    bl fn_801F0E34
L_801E1A78:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x44(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

