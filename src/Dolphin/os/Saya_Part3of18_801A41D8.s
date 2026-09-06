# SAYA cluster, part 3/18 (Track A byte-match + overview - 1316B). One
# of 4 state-handler bodies invoked by the master dispatcher
# fn_801A6160 (landed alongside). Uses the global PRNG advance, effect
# spawn fn_8013CC50, fn_801F0E34/fn_801F3780/fn_801F37AC/fn_801F4694/
# fn_801F666C/ClassifyBamAngleToQuadrant/SpatialRegistry_GetBase, player-position fn_8023E724,
# per-room config GetRoomConfigRecord, plus unfamiliar fn_80235B68/8023AD54/
# 8023B358/8023B5B4.
.section extab, "a"
.balign 4
.global etb_800079B4
etb_800079B4:
    .4byte 0x384A0000
    .4byte 0x00000000
.size etb_800079B4, 8

.section extabindex, "a"
.balign 4
.global eti_8001480C
eti_8001480C:
    .4byte fn_801A41D8
    .4byte 0x00000524
    .4byte etb_800079B4
.size eti_8001480C, 12

.text
.balign 4
.global fn_801A41D8

fn_801A41D8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 25, 0x44(1)
    mr 27, 3
    mr 3, 4
    lwz 4, 0x4(27)
    bl fn_8023AD54
    mr. 30, 3
    .4byte 0x4080000C # bge .L_801A4210
    li 3, 0x0
    .4byte 0x480004D4 # b .L_801A46E0
L_801A4210:
    lwz 28, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_801A4244
    lfs 1, 0x14(27)
    .4byte 0xC002B63C # lfs f0, lbl_8053E5DC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801A4244
    li 3, 0x0
    .4byte 0x480004A0 # b .L_801A46E0
L_801A4244:
    mr 3, 30
    bl fn_8023B358
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x41820010 # beq .L_801A4270
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801A4278
L_801A4270:
    li 3, 0x0
    .4byte 0x4800046C # b .L_801A46E0
L_801A4278:
    lhz 0, 0x94(31)
    li 26, 0x0
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801A4294
    lwz 0, 0xb0(27)
    extrwi 29, 0, 8, 8
    .4byte 0x48000010 # b .L_801A42A0
L_801A4294:
    lwz 0, 0xb0(27)
    li 26, 0x1
    clrlwi 29, 0, 24
L_801A42A0:
    cmpwi 29, 0x0
    .4byte 0x4082000C # bne .L_801A42B0
    li 3, 0x0
    .4byte 0x48000434 # b .L_801A46E0
L_801A42B0:
    cmpwi 30, 0x0
    li 28, 0x0
    .4byte 0x41800008 # blt .L_801A42C0
    .4byte 0x93CD8540 # stw r30, lbl_8053A100@sda21(r0)
L_801A42C0:
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    cmpwi 26, 0x0
    .4byte 0x40820210 # bne .L_801A44E8
    cmpwi 29, 0x6
    .4byte 0x40820084 # bne .L_801A4364
    lfs 3, 0xc(27)
    lis 3, lbl_80534C00@ha
    lfs 2, 0xc(31)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x10(27)
    li 25, 0x0
    lfs 0, 0x10(31)
    fsubs 2, 3, 2
    li 29, 0x4
    fsubs 0, 1, 0
    fneg 1, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B640 # lfs f0, lbl_8053E5E0@sda21(r0)
    lwz 26, 0x98(27)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    xori 0, 26, 0x1
    cmpw 0, 3
    .4byte 0x41820008 # beq .L_801A4348
    li 25, 0x1
L_801A4348:
    clrlwi. 0, 25, 24
    .4byte 0x40820008 # bne .L_801A4354
    li 29, 0x1
L_801A4354:
    lwz 0, 0xa4(27)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801A4364
    li 29, 0x1
L_801A4364:
    cmplwi 29, 0x7
    .4byte 0x4181001C # bgt .L_801A4384
    lis 3, jumptable_804A2D54@ha
    slwi 0, 29, 2
    addi 3, 3, jumptable_804A2D54@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
L_801A4384:
    li 25, 0x0
    li 27, 0x0
L_801A438C:
    mr 3, 25
    bl fn_8023B358
    mr. 26, 3
    .4byte 0x4180001C # blt .L_801A43B4
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801A43B4
    stw 27, 0x108(3)
L_801A43B4:
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFD0 # blt .L_801A438C
    li 28, 0xff
    .4byte 0x48000318 # b .L_801A46DC
    lfs 1, 0x14(27)
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4082009C # bne .L_801A4470
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC062B630 # lfs f3, lbl_8053E5D0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B648 # lfs f0, lbl_8053E5E8@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC022B644 # lfs f1, lbl_8053E5E4@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 4, 0x40(27)
    srwi 0, 0, 9
    lfs 2, 0x3c(27)
    oris 0, 0, 0x3f80
    stfs 4, 0x1c(1)
    stw 0, 0x8(1)
    lfs 4, 0x8(1)
    stfs 2, 0x18(1)
    fsubs 4, 4, 3
    psq_l 2, 0x18(1), 0, 0
    fnmsubs 0, 0, 4, 3
    psq_st 2, 0x3c(27), 0, 0
    fadds 2, 1, 0
    stfs 2, 0x44(27)
    lfs 1, 0x10(27)
    lfs 0, 0xc(27)
    stfs 1, 0x10(1)
    lfs 1, 0x14(27)
    stfs 0, 0xc(1)
    lfs 0, 0x44(27)
    psq_l 3, 0xc(1), 0, 0
    fadds 0, 1, 0
    stfs 2, 0x20(1)
    psq_st 3, 0xc(27), 0, 0
    stfs 0, 0x14(1)
    stfs 0, 0x14(27)
L_801A4470:
    li 0, 0x0
    mr 3, 27
    stw 0, 0xd8(27)
    li 4, 0x12c
    stw 0, 0xdc(27)
    stw 0, 0x108(31)
    bl fn_801F3780
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x21
    li 5, 0x0
    bl fn_801F0E34
    li 28, 0x32
    .4byte 0x48000238 # b .L_801A46DC
    li 0, 0x0
    li 28, 0xff
    stb 0, 0x11c(31)
    stw 0, 0x108(27)
    .4byte 0x48000224 # b .L_801A46DC
    li 0, 0x0
    mr 3, 27
    stb 0, 0x11c(31)
    stw 30, 0x10c(27)
    bl fn_801F4694
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480001F8 # b .L_801A46DC
L_801A44E8:
    cmpwi 29, 0x9
    .4byte 0x40820070 # bne .L_801A455C
    mr 3, 30
    li 29, 0x4
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 30
    lfs 0, 0xc(27)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(27)
    fneg 1, 31
    addi 3, 3, lbl_80534C00@l
    fsubs 0, 0, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B640 # lfs f0, lbl_8053E5E0@sda21(r0)
    lwz 26, 0x98(27)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    cmpw 26, 3
    .4byte 0x41820008 # beq .L_801A455C
    li 29, 0x5
L_801A455C:
    cmplwi 29, 0x12
    .4byte 0x418100B0 # bgt .L_801A4610
    lis 3, jumptable_804A2D08@ha
    slwi 0, 29, 2
    addi 3, 3, jumptable_804A2D08@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    li 28, 0xff
    stw 0, 0x108(27)
    .4byte 0x480000F0 # b .L_801A4678
    lwz 26, 0x108(27)
    mr 3, 30
    bl fn_8023B5B4
    li 0, 0x0
    subf. 3, 3, 26
    stb 0, 0x11c(31)
    .4byte 0x41810020 # bgt .L_801A45C4
    stw 0, 0x108(27)
    mr 3, 30
    lwz 4, 0x198(27)
    bl fn_80235B68
    stw 30, 0x10c(27)
    li 28, 0x14
    .4byte 0x480000B8 # b .L_801A4678
L_801A45C4:
    stw 3, 0x108(27)
    li 28, 0xa
    .4byte 0x480000AC # b .L_801A4678
    li 25, 0x0
    li 28, 0x0
L_801A45D8:
    mr 3, 25
    bl fn_8023B358
    mr. 26, 3
    .4byte 0x41800020 # blt .L_801A4604
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    mr 31, 3
    .4byte 0x41820008 # beq .L_801A4604
    stw 28, 0x108(3)
L_801A4604:
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFCC # blt .L_801A45D8
L_801A4610:
    li 28, 0xff
    .4byte 0x48000064 # b .L_801A4678
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    li 5, 0x24a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    li 5, 0x24b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    li 28, 0xff
    stb 0, 0x11c(31)
    stb 0, 0x11c(27)
L_801A4678:
    cmpwi 28, 0x0
    .4byte 0x41820060 # beq .L_801A46DC
    subi 0, 29, 0x1
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_801A4694
    cmpwi 29, 0x5
    .4byte 0x4082004C # bne .L_801A46DC
L_801A4694:
    psq_l 1, 0xc(27), 0, 0
    addi 5, 1, 0x24
    lfs 0, 0x14(27)
    mr 3, 27
    li 4, 0x0
    li 6, 0x3
    stfs 0, 0x2c(1)
    li 7, 0x0
    li 8, -0x1
    psq_st 1, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(5), 1, 0
    bl fn_801F37AC
L_801A46DC:
    mr 3, 28
L_801A46E0:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 25, 0x44(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

