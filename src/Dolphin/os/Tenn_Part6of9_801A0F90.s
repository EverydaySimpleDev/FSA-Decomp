# TENN cluster, part 6/9 (Track A byte-match + overview - 2088B).
# update() state handler #2 - uses the existing-instance-by-FourCC
# lookup fn_801F2718, the player validity/position family
# fn_8023DE58/fn_8023E724/Player_GetCapabilityFlagByIndex, fn_801F0E34/fn_801F666C/
# fn_801F71A4/SpatialRegistry_GetBase, plus several unfamiliar helpers
# (fn_80138A30/fn_801EEC98/fn_801F2740/fn_801F285C/fn_801F2B7C/
# fn_8022F3DC/fn_80230188/fn_80230FD0/fn_802353AC/fn_8023B6CC/
# fn_8023CBC0/fn_8030C210).
.section extab, "a"
.balign 4
.global etb_80007964
etb_80007964:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80007964, 8

.section extabindex, "a"
.balign 4
.global eti_80014794
eti_80014794:
    .4byte fn_801A0F90
    .4byte 0x00000828
    .4byte etb_80007964
.size eti_80014794, 12

.text
.balign 4
.global fn_801A0F90

fn_801A0F90:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 30, 3
    li 31, 0x0
    addi 4, 30, 0xc
    psq_l 0, 0x3c(30), 0, 0
    psq_l 1, 0x0(4), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x230(30)
    cmpwi 0, 0x10
    .4byte 0x41820558 # beq .L_801A1548
    .4byte 0x40800014 # bge .L_801A1008
    cmpwi 0, 0xe
    .4byte 0x41820018 # beq .L_801A1014
    .4byte 0x4080001C # bge .L_801A101C
    .4byte 0x48000664 # b .L_801A1668
L_801A1008:
    cmpwi 0, 0x12
    .4byte 0x4080065C # bge .L_801A1668
    .4byte 0x480005D4 # b .L_801A15E4
L_801A1014:
    li 0, 0xf
    stw 0, 0x230(30)
L_801A101C:
    lfs 0, 0x3c(30)
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082005C # bne .L_801A1084
    lfs 0, 0x40(30)
    fcmpu cr0, 0, 1
    .4byte 0x40820050 # bne .L_801A1084
    lfs 0, 0x14(30)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801A1070
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    .4byte 0xC002B578 # lfs f0, lbl_8053E518@sda21(r0)
    stfs 1, 0x14(30)
    stfs 0, 0x44(30)
    .4byte 0x480005FC # b .L_801A1668
L_801A1070:
    lfs 1, 0x44(30)
    .4byte 0xC002B5A4 # lfs f0, lbl_8053E544@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
    .4byte 0x480005E8 # b .L_801A1668
L_801A1084:
    lfs 1, 0x14(30)
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801A10C0
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    stfs 1, 0x14(30)
    stfs 0, 0x44(30)
    .4byte 0x48000014 # b .L_801A10D0
L_801A10C0:
    lfs 1, 0x44(30)
    .4byte 0xC002B5A8 # lfs f0, lbl_8053E548@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
L_801A10D0:
    .4byte 0xC022B560 # lfs f1, lbl_8053E500@sda21(r0)
    addi 3, 30, 0x14
    .4byte 0xC042B5A8 # lfs f2, lbl_8053E548@sda21(r0)
    .4byte 0xC062B558 # lfs f3, lbl_8053E4F8@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x4082057C # bne .L_801A1668
    .4byte 0xC022B5AC # lfs f1, lbl_8053E54C@sda21(r0)
    mr 3, 30
    .4byte 0xC002B5B0 # lfs f0, lbl_8053E550@sda21(r0)
    li 4, -0x1
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    bl fn_801F2740
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_801A119C
    li 3, 0x0
    .4byte 0x4800000C # b .L_801A112C
L_801A1124:
    srawi 0, 0, 1
    addi 3, 3, 0x1
L_801A112C:
    cmpwi 0, 0x0
    .4byte 0x4181FFF4 # bgt .L_801A1124
    subic. 3, 3, 0x1
    .4byte 0x40800008 # bge .L_801A1140
    li 3, 0x0
L_801A1140:
    lwz 0, 0x264(30)
    cmpw 0, 3
    .4byte 0x41820014 # beq .L_801A115C
    bl fn_8022F3DC
    lwz 0, 0x264(30)
    cmpw 0, 3
    .4byte 0x40820044 # bne .L_801A119C
L_801A115C:
    mr 3, 30
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801A119C
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x4d
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    li 31, 0x1
    .4byte 0x980D9005 # stb r0, lbl_8053ABC5@sda21(r0)
    .4byte 0x480004D0 # b .L_801A1668
L_801A119C:
    .4byte 0xC022B5B4 # lfs f1, lbl_8053E554@sda21(r0)
    mr 3, 30
    .4byte 0xC002B59C # lfs f0, lbl_8053E53C@sda21(r0)
    li 4, 0x0
    stfs 1, 0x60(30)
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    bl fn_801F285C
    stw 3, 0x278(30)
    lwz 3, 0x278(30)
    cmpwi 3, 0x0
    .4byte 0x41800490 # blt .L_801A1668
    lwz 0, 0x264(30)
    cmpw 0, 3
    .4byte 0x41820014 # beq .L_801A11F8
    bl fn_8022F3DC
    lwz 0, 0x264(30)
    cmpw 0, 3
    .4byte 0x40820474 # bne .L_801A1668
L_801A11F8:
    lwz 3, 0x278(30)
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_801A120C
    li 0, -0x1
    .4byte 0x48000028 # b .L_801A1230
L_801A120C:
    bl fn_8023CBC0
    clrlwi 0, 3, 16
    cmplwi 0, 0x43
    .4byte 0x41800014 # blt .L_801A122C
    cmplwi 0, 0x6f
    .4byte 0x4080000C # bge .L_801A122C
    li 0, 0x1
    .4byte 0x48000008 # b .L_801A1230
L_801A122C:
    li 0, 0x0
L_801A1230:
    cmpwi 0, 0x0
    .4byte 0x40820434 # bne .L_801A1668
    .4byte 0xC3ED8538 # lfs f31, lbl_8053A0F8@sda21(r0)
    lwz 3, 0x264(30)
    bl fn_802353AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801A1254
    .4byte 0xC002B5B8 # lfs f0, lbl_8053E558@sda21(r0)
    fmuls 31, 31, 0
L_801A1254:
    lwz 3, 0x264(30)
    addi 0, 3, 0x1
    stw 0, 0x264(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x264(30)
    cmpw 0, 3
    .4byte 0x4180000C # blt .L_801A127C
    li 0, 0x0
    stw 0, 0x264(30)
L_801A127C:
    lwz 3, 0x248(30)
    addi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 3, 0x278(30)
    bl fn_8023B6CC
    lis 4, 0x2
    lwz 3, 0x278(30)
    addi 4, 4, 0x3f
    bl fn_80230FD0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x248(30)
    cmpw 0, 3
    .4byte 0x40800174 # bge .L_801A1424
    lwz 3, 0x264(30)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820280 # beq .L_801A1540
    lwz 29, 0x4(30)
    lwz 3, 0x264(30)
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x4082026C # bne .L_801A1540
    lwz 3, 0x264(30)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082025C # bne .L_801A1540
    lwz 4, 0x198(30)
    mr 3, 30
    lwz 9, 0x264(30)
    addi 5, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B55C # lfs f1, lbl_8053E4FC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B5A4 # lfs f0, lbl_8053E544@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801A1364
    lhz 3, 0x8(1)
    subi 0, 3, 0x600
    sth 0, 0x8(1)
    .4byte 0x48000010 # b .L_801A1370
L_801A1364:
    lhz 3, 0x8(1)
    addi 0, 3, 0x600
    sth 0, 0x8(1)
L_801A1370:
    lhz 5, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    li 0, 0x1e
    rlwinm 3, 5, 30, 18, 28
    lfsx 0, 4, 3
    fmuls 0, 31, 0
    stfs 0, 0x3c(30)
    lhz 3, 0x8(1)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmuls 0, 31, 0
    stfs 0, 0x40(30)
    stw 0, 0x23c(30)
    lwz 29, 0x320(30)
    cmpwi 29, 0x0
    .4byte 0x4180018C # blt .L_801A1540
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820178 # beq .L_801A1540
    lwz 4, 0x254(3)
    addi 0, 4, 0x1
    stw 0, 0x254(3)
    lwz 0, 0x254(3)
    cmpwi 0, 0x3e7
    .4byte 0x4081000C # ble .L_801A13EC
    li 0, 0x3e7
    stw 0, 0x254(3)
L_801A13EC:
    lwz 4, 0x26c(3)
    addi 0, 4, 0x1
    stw 0, 0x26c(3)
    lwz 0, 0x26c(3)
    cmpwi 0, 0x3e7
    .4byte 0x4081000C # ble .L_801A140C
    li 0, 0x3e7
    stw 0, 0x26c(3)
L_801A140C:
    lwz 0, 0x254(3)
    cmpwi 0, 0x3e7
    .4byte 0x40810254 # ble .L_801A1668
    li 0, 0x3e7
    stw 0, 0x254(3)
    .4byte 0x48000248 # b .L_801A1668
L_801A1424:
    lwz 29, 0x320(30)
    cmpwi 29, 0x0
    .4byte 0x41800114 # blt .L_801A1540
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820100 # beq .L_801A1540
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x248(30)
    stw 0, 0x264(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40810044 # ble .L_801A14A4
    lwz 3, 0x254(29)
    addi 0, 3, 0x1
    stw 0, 0x254(29)
    lwz 0, 0x254(29)
    cmpwi 0, 0x3e7
    .4byte 0x4081000C # ble .L_801A1484
    li 0, 0x3e7
    stw 0, 0x254(29)
L_801A1484:
    lwz 3, 0x26c(29)
    addi 0, 3, 0x1
    stw 0, 0x26c(29)
    lwz 0, 0x26c(29)
    cmpwi 0, 0x3e7
    .4byte 0x4081000C # ble .L_801A14A4
    li 0, 0x3e7
    stw 0, 0x26c(29)
L_801A14A4:
    li 3, 0x0
    bl fn_8023E724
    li 3, 0x0
    bl fn_8023E724
    lwz 0, 0x278(30)
    cmpwi 0, 0x0
    .4byte 0x41800084 # blt .L_801A1540
    lfs 3, 0xc(29)
    lis 3, lbl_80534C00@ha
    lfs 1, 0xc(30)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x10(29)
    lfs 0, 0x10(30)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002B598 # lfs f0, lbl_8053E538@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC04D8538 # lfs f2, lbl_8053A0F8@sda21(r0)
    fmuls 0, 1, 0
    li 0, 0x10
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 5, 0x14(1)
    rlwinm 3, 5, 30, 18, 28
    sth 5, 0x8(1)
    lfsx 0, 4, 3
    fmuls 0, 2, 0
    stfs 0, 0x3c(30)
    lhz 3, 0x8(1)
    .4byte 0xC02D8538 # lfs f1, lbl_8053A0F8@sda21(r0)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(30)
    stw 0, 0x230(30)
    .4byte 0x4800012C # b .L_801A1668
L_801A1540:
    li 31, 0x1
    .4byte 0x48000124 # b .L_801A1668
L_801A1548:
    lis 4, 0x5445
    mr 3, 30
    addi 4, 4, 0x4e4e
    bl fn_801F2718
    lfs 1, 0x14(30)
    mr 29, 3
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801A1598
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    stfs 1, 0x14(30)
    stfs 0, 0x44(30)
    .4byte 0x48000014 # b .L_801A15A8
L_801A1598:
    lfs 1, 0x44(30)
    .4byte 0xC002B5A8 # lfs f0, lbl_8053E548@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
L_801A15A8:
    .4byte 0x880D9004 # lbz r0, lbl_8053ABC4@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x408200B8 # bne .L_801A1668
    cmpwi 29, 0x0
    .4byte 0x418000B0 # blt .L_801A1668
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182009C # beq .L_801A1668
    li 4, 0x1
    li 0, 0xe
    stw 4, 0x258(3)
    stw 0, 0x230(30)
    .4byte 0x48000088 # b .L_801A1668
L_801A15E4:
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    addi 3, 30, 0x340
    .4byte 0xC042B5A4 # lfs f2, lbl_8053E544@sda21(r0)
    .4byte 0xC062B578 # lfs f3, lbl_8053E518@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x14(30)
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801A1634
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    stfs 1, 0x14(30)
    stfs 0, 0x44(30)
    .4byte 0x48000014 # b .L_801A1644
L_801A1634:
    lfs 1, 0x44(30)
    .4byte 0xC002B5A4 # lfs f0, lbl_8053E544@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
L_801A1644:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801A1660
    lfs 1, 0x340(30)
    .4byte 0xC002B55C # lfs f0, lbl_8053E4FC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801A1668
L_801A1660:
    li 0, 0x0
    stb 0, 0x11c(30)
L_801A1668:
    lwz 0, 0x230(30)
    cmpwi 0, 0x11
    .4byte 0x418200D0 # beq .L_801A1740
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_801A16A4
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_801A16A4
    .4byte 0xC022B5BC # lfs f1, lbl_8053E55C@sda21(r0)
    addi 3, 30, 0xc
    lwz 4, 0x4(30)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_801A1740
L_801A16A4:
    li 0, 0x32
    stw 0, 0x23c(30)
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41820044 # beq .L_801A16F8
    lwz 29, 0x320(30)
    cmpwi 29, 0x0
    .4byte 0x41800038 # blt .L_801A16F8
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801A16F8
    lwz 0, 0x264(30)
    stw 0, 0x268(3)
    lwz 0, 0x264(30)
    slwi 0, 0, 2
    add 4, 3, 0
    lwz 3, 0x28c(4)
    addi 0, 3, 0x1
    stw 0, 0x28c(4)
L_801A16F8:
    lfs 1, 0x3c(30)
    lis 4, 0x3
    .4byte 0xC042B5A0 # lfs f2, lbl_8053E540@sda21(r0)
    mr 3, 30
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    addi 4, 4, 0x4d
    fmuls 1, 1, 2
    li 5, 0x0
    stfs 1, 0x3c(30)
    lfs 1, 0x40(30)
    fmuls 1, 1, 2
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    bl fn_801F0E34
    li 3, 0x1
    li 0, 0x11
    .4byte 0x906D9000 # stw r3, lbl_8053ABC0@sda21(r0)
    stw 0, 0x230(30)
L_801A1740:
    lwz 3, 0x238(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A1754
    subi 0, 3, 0x1
    stw 0, 0x238(30)
L_801A1754:
    lwz 3, 0x23c(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A1768
    subi 0, 3, 0x1
    stw 0, 0x23c(30)
L_801A1768:
    addi 4, 30, 0x8
    lwz 3, 0x240(30)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A1780
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_801A1780:
    lwz 3, 0x23c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A1794
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_801A1794:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

