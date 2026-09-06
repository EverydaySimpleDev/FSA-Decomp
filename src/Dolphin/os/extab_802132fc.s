.section extab, "a"
.balign 4
.global etb_8000A0F8
etb_8000A0F8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A0F8, 8

.global etb_8000A100
etb_8000A100:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A100, 8

.global etb_8000A108
etb_8000A108:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A108, 8

.section extabindex, "a"
.balign 4
.global eti_80017CBC
eti_80017CBC:
    .4byte fn_802132FC
    .4byte 0x00000174
    .4byte etb_8000A0F8
.size eti_80017CBC, 12

.global eti_80017CC8
eti_80017CC8:
    .4byte fn_80213470
    .4byte 0x00000304
    .4byte etb_8000A100
.size eti_80017CC8, 12

.global eti_80017CD4
eti_80017CD4:
    .4byte fn_80213774
    .4byte 0x00000338
    .4byte etb_8000A108
.size eti_80017CD4, 12

.text
.balign 4
.global fn_802132FC
.global fn_80213470
.global fn_80213774

fn_802132FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x4
    .4byte 0x40820034 # bne .L_8021334C
    lwz 0, 0x278(31)
    cmpwi 0, 0x1
    .4byte 0x40820028 # bne .L_8021334C
    addi 3, 31, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8021334C
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x35
    li 5, 0x0
    bl fn_801F0E34
L_8021334C:
    mr 3, 31
    bl fn_801CE4BC
    lwz 0, 0x248(31)
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_80213370
    .4byte 0x408000FC # bge .L_8021345C
    cmpwi 0, 0x3
    .4byte 0x41820008 # beq .L_80213370
    .4byte 0x480000F0 # b .L_8021345C
L_80213370:
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80213380
    .4byte 0x48000020 # b .L_8021339C
L_80213380:
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    .4byte 0xC002CBB8 # lfs f0, lbl_8053FB58@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000034 # b .L_802133CC
L_8021339C:
    lfs 3, 0x54(31)
    .4byte 0xC002CBC0 # lfs f0, lbl_8053FB60@sda21(r0)
    lfs 4, 0x58(31)
    fmuls 1, 0, 3
    .4byte 0xC042CBBC # lfs f2, lbl_8053FB5C@sda21(r0)
    fmuls 0, 0, 4
    fmuls 3, 2, 3
    stfs 1, 0x60(31)
    fmuls 1, 2, 4
    stfs 0, 0x64(31)
    stfs 3, 0x68(31)
    stfs 1, 0x6c(31)
L_802133CC:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802133E4
    li 0, 0x0
    stw 0, 0xb0(31)
    .4byte 0x4800007C # b .L_8021345C
L_802133E4:
    lfs 1, 0x68(31)
    lfs 0, 0x60(31)
    .4byte 0xC042CBB4 # lfs f2, lbl_8053FB54@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810044 # ble .L_8021343C
    lfs 1, 0x6c(31)
    lfs 0, 0x64(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810030 # ble .L_8021343C
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_8021342C
    lis 3, 0x4
    addi 0, 3, 0x4
    stw 0, 0xb0(31)
    .4byte 0x48000034 # b .L_8021345C
L_8021342C:
    lis 3, 0x1
    addi 0, 3, 0x1101
    stw 0, 0xb0(31)
    .4byte 0x48000024 # b .L_8021345C
L_8021343C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820010 # beq .L_80213454
    li 0, 0x0
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_8021345C
L_80213454:
    li 0, 0x1000
    stw 0, 0xb0(31)
L_8021345C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80213470:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x4080000C # bge .L_80213498
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_802134A4
L_80213498:
    mr 3, 31
    li 4, 0x0
    bl fn_801F2B20
L_802134A4:
    lwz 0, 0x248(31)
    cmplwi 0, 0x6
    .4byte 0x418102B4 # bgt .L_80213760
    lis 3, jumptable_804A63E4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A63E4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820290 # beq .L_80213760
    mr 3, 31
    li 4, 0x0
    bl fn_80213774
    .4byte 0x48000280 # b .L_80213760
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_80213500
    mr 3, 31
    li 4, 0x0
    bl fn_80213774
    .4byte 0x48000264 # b .L_80213760
L_80213500:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800254 # blt .L_80213760
    mr 3, 31
    li 4, 0x3
    bl fn_80213774
    .4byte 0x48000244 # b .L_80213760
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810238 # ble .L_80213760
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820228 # beq .L_80213760
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_80213558
    mr 3, 31
    li 4, 0x6
    bl fn_80213774
    .4byte 0x4800020C # b .L_80213760
L_80213558:
    mr 3, 31
    li 4, 0x4
    bl fn_80213774
    .4byte 0x480001FC # b .L_80213760
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_80213584
    mr 3, 31
    li 4, 0x6
    bl fn_80213774
    .4byte 0x480001E0 # b .L_80213760
L_80213584:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418001D0 # blt .L_80213760
    addi 3, 31, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x418201C0 # beq .L_80213760
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x35
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x5
    bl fn_80213774
    .4byte 0x4800019C # b .L_80213760
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_802135E4
    mr 3, 31
    li 4, 0x6
    bl fn_80213774
    .4byte 0x48000180 # b .L_80213760
L_802135E4:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810174 # ble .L_80213760
    lwz 4, 0x27c(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    addi 3, 31, 0x294
    subi 0, 4, 0x2
    .4byte 0xC822CBD0 # lfd f1, lbl_8053FB70@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 1, 0, 1
    bl fn_800C3638
    cmpwi 3, 0x0
    .4byte 0x41820038 # beq .L_80213658
    lis 4, 0x4152
    .4byte 0xC022CBC4 # lfs f1, lbl_8053FB64@sda21(r0)
    .4byte 0xC042CBC8 # lfs f2, lbl_8053FB68@sda21(r0)
    mr 3, 31
    addi 4, 4, 0x5348
    bl fn_801CECF4
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80213658
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x31
    li 5, 0x0
    bl fn_801F0E34
L_80213658:
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_80213760
    mr 3, 31
    li 4, 0x6
    bl fn_80213774
    .4byte 0x480000EC # b .L_80213760
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810040 # ble .L_802136C0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_802136C0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820014 # beq .L_802136B0
    mr 3, 31
    li 4, 0x0
    bl fn_80213774
    .4byte 0x480000B4 # b .L_80213760
L_802136B0:
    mr 3, 31
    li 4, 0x2
    bl fn_80213774
    .4byte 0x480000A4 # b .L_80213760
L_802136C0:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x10
    .4byte 0x40820098 # bne .L_80213760
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 3, 0x0
    .4byte 0x41820054 # beq .L_8021374C
    lfs 0, 0x54(31)
    stfs 0, 0x98(3)
    lfs 0, 0x58(31)
    stfs 0, 0x9c(3)
    lfs 0, 0x5c(31)
    stfs 0, 0xa0(3)
    lfs 1, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x2c(4)
    lwz 0, 0x4(4)
    stw 0, 0x8(1)
    lbz 0, 0x8(1)
    lbz 4, 0x9(1)
    stb 0, 0xb8(3)
    lbz 0, 0xa(1)
    stb 4, 0xb9(3)
    stb 0, 0xba(3)
L_8021374C:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x34
    li 5, 0x0
    bl fn_801F0E34
L_80213760:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80213774:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 4
    cmpwi 30, 0x4
    .4byte 0x41820174 # beq .L_80213908
    .4byte 0x4080001C # bge .L_802137B4
    cmpwi 30, 0x2
    .4byte 0x41820050 # beq .L_802137F0
    .4byte 0x408000A0 # bge .L_80213844
    cmpwi 30, 0x0
    .4byte 0x40800018 # bge .L_802137C4
    .4byte 0x4800024C # b .L_802139FC
L_802137B4:
    cmpwi 30, 0x6
    .4byte 0x41820200 # beq .L_802139B8
    .4byte 0x40800240 # bge .L_802139FC
    .4byte 0x480001B0 # b .L_80213970
L_802137C4:
    .4byte 0x40820010 # bne .L_802137D4
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 18, 16
    stw 0, 0x230(31)
L_802137D4:
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    .4byte 0xC002CBB8 # lfs f0, lbl_8053FB58@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000210 # b .L_802139FC
L_802137F0:
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    .4byte 0xC002CBB8 # lfs f0, lbl_8053FB58@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8021381C
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_80213830
L_8021381C:
    li 3, 0x15
    bl fn_801CD664
    addi 0, 3, 0xa
    stw 0, 0x250(31)
    .4byte 0x480001D0 # b .L_802139FC
L_80213830:
    li 3, 0x79
    bl fn_801CD664
    addi 0, 3, 0x3c
    stw 0, 0x250(31)
    .4byte 0x480001BC # b .L_802139FC
L_80213844:
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0xC002CBB8 # lfs f0, lbl_8053FB58@sda21(r0)
    li 4, 0x0
    stfs 1, 0x60(31)
    li 5, 0x0
    li 6, 0x0
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801D22DC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CBA8 # lfs f1, lbl_8053FB48@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 3, 0x0
    .4byte 0x41820054 # beq .L_802138F0
    lfs 0, 0x54(31)
    stfs 0, 0x98(3)
    lfs 0, 0x58(31)
    stfs 0, 0x9c(3)
    lfs 0, 0x5c(31)
    stfs 0, 0xa0(3)
    lfs 1, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x2c(4)
    lwz 0, 0x4(4)
    stw 0, 0x8(1)
    lbz 0, 0x8(1)
    lbz 4, 0x9(1)
    stb 0, 0xb8(3)
    lbz 0, 0xa(1)
    stb 4, 0xb9(3)
    stb 0, 0xba(3)
L_802138F0:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x33
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000F8 # b .L_802139FC
L_80213908:
    lfs 3, 0x54(31)
    li 3, 0x3d
    .4byte 0xC002CBC0 # lfs f0, lbl_8053FB60@sda21(r0)
    lfs 4, 0x58(31)
    fmuls 1, 0, 3
    .4byte 0xC042CBBC # lfs f2, lbl_8053FB5C@sda21(r0)
    fmuls 0, 0, 4
    fmuls 3, 2, 3
    stfs 1, 0x60(31)
    fmuls 1, 2, 4
    stfs 0, 0x64(31)
    stfs 3, 0x68(31)
    stfs 1, 0x6c(31)
    bl fn_801CD664
    addi 0, 3, 0x1e
    addi 3, 31, 0x270
    stw 0, 0x250(31)
    li 4, 0x1
    li 5, 0x2
    bl fn_801D22A0
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x35
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000090 # b .L_802139FC
L_80213970:
    lfs 3, 0x54(31)
    addi 3, 31, 0x270
    .4byte 0xC002CBC0 # lfs f0, lbl_8053FB60@sda21(r0)
    li 4, 0x2
    lfs 4, 0x58(31)
    li 5, 0x0
    fmuls 1, 0, 3
    .4byte 0xC042CBBC # lfs f2, lbl_8053FB5C@sda21(r0)
    fmuls 0, 0, 4
    li 6, 0x0
    fmuls 3, 2, 3
    stfs 1, 0x60(31)
    fmuls 1, 2, 4
    stfs 0, 0x64(31)
    stfs 3, 0x68(31)
    stfs 1, 0x6c(31)
    bl fn_801D22DC
    .4byte 0x48000048 # b .L_802139FC
L_802139B8:
    lfs 3, 0x54(31)
    addi 3, 31, 0x270
    .4byte 0xC002CBC0 # lfs f0, lbl_8053FB60@sda21(r0)
    li 4, 0x3
    lfs 4, 0x58(31)
    li 5, 0x0
    fmuls 1, 0, 3
    .4byte 0xC042CBBC # lfs f2, lbl_8053FB5C@sda21(r0)
    fmuls 0, 0, 4
    li 6, 0x0
    fmuls 3, 2, 3
    stfs 1, 0x60(31)
    fmuls 1, 2, 4
    stfs 0, 0x64(31)
    stfs 3, 0x68(31)
    stfs 1, 0x6c(31)
    bl fn_801D22DC
L_802139FC:
    li 3, 0x0
    stw 3, 0x24c(31)
    stw 30, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80213A1C
    stw 3, 0xb0(31)
    .4byte 0x4800007C # b .L_80213A94
L_80213A1C:
    lfs 1, 0x68(31)
    lfs 0, 0x60(31)
    .4byte 0xC042CBB4 # lfs f2, lbl_8053FB54@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810044 # ble .L_80213A74
    lfs 1, 0x6c(31)
    lfs 0, 0x64(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810030 # ble .L_80213A74
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_80213A64
    lis 3, 0x4
    addi 0, 3, 0x4
    stw 0, 0xb0(31)
    .4byte 0x48000034 # b .L_80213A94
L_80213A64:
    lis 3, 0x1
    addi 0, 3, 0x1101
    stw 0, 0xb0(31)
    .4byte 0x48000024 # b .L_80213A94
L_80213A74:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820010 # beq .L_80213A8C
    li 0, 0x0
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_80213A94
L_80213A8C:
    li 0, 0x1000
    stw 0, 0xb0(31)
L_80213A94:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

