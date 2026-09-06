# 901KB-gap non-actor manager block: 8 functions, 7,128 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800115F4
etb_800115F4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800115F4, 8

.global etb_800115FC
etb_800115FC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800115FC, 8

.global etb_80011604
etb_80011604:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80011604, 8

.global etb_8001160C
etb_8001160C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001160C, 8

.global etb_80011614
etb_80011614:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80011614, 8

.global etb_8001161C
etb_8001161C:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_8001161C, 8

.section extabindex, "a"
.balign 4
.global eti_80021580
eti_80021580:
    .4byte fn_80455CA4
    .4byte 0x0000029C
    .4byte etb_800115F4
.size eti_80021580, 12

.global eti_8002158C
eti_8002158C:
    .4byte fn_80455F40
    .4byte 0x00000190
    .4byte etb_800115FC
.size eti_8002158C, 12

.global eti_80021598
eti_80021598:
    .4byte fn_804560D0
    .4byte 0x00000050
    .4byte etb_80011604
.size eti_80021598, 12

.global eti_800215A4
eti_800215A4:
    .4byte fn_80456120
    .4byte 0x00000034
    .4byte etb_8001160C
.size eti_800215A4, 12

.global eti_800215B0
eti_800215B0:
    .4byte fn_804561D8
    .4byte 0x0000015C
    .4byte etb_80011614
.size eti_800215B0, 12

.global eti_800215BC
eti_800215BC:
    .4byte fn_80456334
    .4byte 0x0000150C
    .4byte etb_8001161C
.size eti_800215BC, 12

.text
.balign 4
.global fn_80455CA4
.global fn_80455F40
.global fn_804560D0
.global fn_80456120
.global fn_80456154
.global fn_804561D8
.global fn_80456334
.global fn_80457840

fn_80455CA4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0220EC8 # lfs f1, lbl_80543E68@sda21(r0)
    stw 0, 0x24(1)
    lfs 4, 0x0(5)
    stw 31, 0x1c(1)
    mr 31, 6
    fcmpo cr0, 4, 1
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x4080002C # bge .L_80455D08
    lwz 3, 0x0(29)
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800263B4
    lwz 3, 0x0(29)
    li 4, 0x0
    .4byte 0xC0220ECC # lfs f1, lbl_80543E6C@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x4800021C # b .L_80455F20
L_80455D08:
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40810030 # ble .L_80455D40
    lwz 3, 0x0(29)
    fmr 1, 0
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800263B4
    lwz 3, 0x0(29)
    li 4, 0x0
    .4byte 0xC0220ECC # lfs f1, lbl_80543E6C@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x480001E4 # b .L_80455F20
L_80455D40:
    lfs 5, 0x4(30)
    fcmpo cr0, 5, 1
    .4byte 0x40800030 # bge .L_80455D78
    lwz 3, 0x0(29)
    fmr 1, 4
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800263B4
    lwz 3, 0x0(29)
    li 4, 0x0
    .4byte 0xC0220ECC # lfs f1, lbl_80543E6C@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x480001AC # b .L_80455F20
L_80455D78:
    fcmpo cr0, 5, 0
    .4byte 0x40810030 # ble .L_80455DAC
    lwz 3, 0x0(29)
    fmr 1, 4
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800263B4
    lwz 3, 0x0(29)
    li 4, 0x0
    .4byte 0xC0220ECC # lfs f1, lbl_80543E6C@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x48000178 # b .L_80455F20
L_80455DAC:
    .4byte 0xC0020ED4 # lfs f0, lbl_80543E74@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4180000C # blt .L_80455DC0
    fcmpo cr0, 5, 0
    .4byte 0x4080005C # bge .L_80455E18
L_80455DC0:
    fcmpo cr0, 4, 5
    .4byte 0xC0420ED8 # lfs f2, lbl_80543E78@sda21(r0)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80455DD4
    .4byte 0x48000008 # b .L_80455DD8
L_80455DD4:
    fmr 4, 5
L_80455DD8:
    .4byte 0xC0220ECC # lfs f1, lbl_80543E6C@sda21(r0)
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    fmadds 1, 2, 4, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_80455DF0
    fmr 1, 0
L_80455DF0:
    lwz 3, 0x0(29)
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800262AC
    lwz 3, 0x0(29)
    li 4, 0x0
    lfs 1, 0x0(30)
    addi 3, 3, 0x48
    bl fn_800263B4
    .4byte 0x4800010C # b .L_80455F20
L_80455E18:
    .4byte 0xC0020EDC # lfs f0, lbl_80543E7C@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4181000C # bgt .L_80455E2C
    fcmpo cr0, 5, 0
    .4byte 0x40810064 # ble .L_80455E8C
L_80455E2C:
    fcmpo cr0, 4, 5
    .4byte 0xC0620ED8 # lfs f3, lbl_80543E78@sda21(r0)
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80455E44
    .4byte 0x48000008 # b .L_80455E48
L_80455E44:
    fmr 4, 5
L_80455E48:
    fsubs 2, 0, 4
    .4byte 0xC0220ECC # lfs f1, lbl_80543E6C@sda21(r0)
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    fmadds 1, 3, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_80455E64
    fmr 1, 0
L_80455E64:
    lwz 3, 0x0(29)
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800262AC
    lwz 3, 0x0(29)
    li 4, 0x0
    lfs 1, 0x0(30)
    addi 3, 3, 0x48
    bl fn_800263B4
    .4byte 0x48000098 # b .L_80455F20
L_80455E8C:
    lwz 3, 0x0(29)
    fmr 1, 4
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800263B4
    lbz 0, 0x1(31)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_80455F20
    lwz 3, 0x0(31)
    subis 0, 3, 0x3
    cmplwi 0, 0x9
    .4byte 0x41820068 # beq .L_80455F20
    cmplwi 0, 0x51
    .4byte 0x41820060 # beq .L_80455F20
    cmplwi 0, 0x4b
    .4byte 0x41820058 # beq .L_80455F20
    subis 0, 3, 0x5
    cmplwi 0, 0x6d
    .4byte 0x4182004C # beq .L_80455F20
    lbz 0, 0x44(28)
    cmplwi 0, 0x1
    .4byte 0x41820040 # beq .L_80455F20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lbz 0, 0x6(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80455F0C
    lwz 3, 0x0(29)
    li 4, 0x0
    .4byte 0xC0220EE0 # lfs f1, lbl_80543E80@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x48000018 # b .L_80455F20
L_80455F0C:
    lwz 3, 0x0(29)
    li 4, 0x0
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
L_80455F20:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80455F40:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x4182015C # beq .L_804560B8
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x41820150 # beq .L_804560B8
    lwz 12, 0x0(3)
    lwz 12, 0x20(12)
    mtctr 12
    bctrl
    lbz 0, 0x44(30)
    mr 31, 3
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_80456024
    li 4, 0xa
    li 5, 0x1
    bl fn_800380C4
    lbz 0, 0x45(30)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_80455FB8
    .4byte 0x40800008 # bge .L_80455FAC
    .4byte 0x48000058 # b .L_80456000
L_80455FAC:
    cmpwi 0, 0x4
    .4byte 0x40800050 # bge .L_80456000
    .4byte 0x48000028 # b .L_80455FDC
L_80455FB8:
    mr 3, 31
    li 4, 0x9
    li 5, 0x78
    bl fn_800380C4
    mr 3, 31
    li 4, 0xb
    li 5, 0x0
    bl fn_800380C4
    .4byte 0x480000E0 # b .L_804560B8
L_80455FDC:
    mr 3, 31
    li 4, 0xb
    li 5, 0x1
    bl fn_800380C4
    mr 3, 31
    li 4, 0x9
    li 5, 0x3c
    bl fn_800380C4
    .4byte 0x480000BC # b .L_804560B8
L_80456000:
    mr 3, 31
    li 4, 0x9
    li 5, 0x0
    bl fn_800380C4
    mr 3, 31
    li 4, 0xb
    li 5, 0x0
    bl fn_800380C4
    .4byte 0x48000098 # b .L_804560B8
L_80456024:
    li 4, 0xa
    li 5, 0x0
    bl fn_800380C4
    lbz 0, 0x45(30)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_80456050
    .4byte 0x40800008 # bge .L_80456044
    .4byte 0x48000058 # b .L_80456098
L_80456044:
    cmpwi 0, 0x4
    .4byte 0x40800050 # bge .L_80456098
    .4byte 0x48000028 # b .L_80456074
L_80456050:
    mr 3, 31
    li 4, 0x9
    li 5, 0x78
    bl fn_800380C4
    mr 3, 31
    li 4, 0xb
    li 5, 0x0
    bl fn_800380C4
    .4byte 0x48000048 # b .L_804560B8
L_80456074:
    mr 3, 31
    li 4, 0xb
    li 5, 0x1
    bl fn_800380C4
    mr 3, 31
    li 4, 0x9
    li 5, 0x3c
    bl fn_800380C4
    .4byte 0x48000024 # b .L_804560B8
L_80456098:
    mr 3, 31
    li 4, 0x9
    li 5, 0x0
    bl fn_800380C4
    mr 3, 31
    li 4, 0xb
    li 5, 0x0
    bl fn_800380C4
L_804560B8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804560D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x0(4)
    addi 4, 1, 0x8
    .4byte 0x80AD93C0 # lwz r5, lbl_8053AF80@sda21(r0)
    lwz 0, 0x18(3)
    lwz 3, 0x40(5)
    stw 0, 0x8(1)
    lwz 12, 0x0(3)
    lwz 12, 0x50(12)
    mtctr 12
    bctrl
    rlwinm 0, 3, 0, 16, 16
    cntlzw 0, 0
    srwi 3, 0, 5
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80456120:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stb 0, 0x31(3)
    lwz 12, 0x8(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80456154:
    lwz 4, 0x34(3)
    cmplwi 4, 0x0
    .4byte 0x41820028 # beq .L_80456184
    lfs 0, 0x0(4)
    addi 0, 3, 0x38
    stfs 0, 0x38(3)
    lfs 0, 0x4(4)
    stfs 0, 0x3c(3)
    lfs 0, 0x8(4)
    stfs 0, 0x40(3)
    stw 0, 0x14(3)
    .4byte 0x4800000C # b .L_8045618C
L_80456184:
    li 0, 0x0
    stw 0, 0x14(3)
L_8045618C:
    lwz 4, 0x14(3)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_804561AC
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 0, 0x4(4)
    lwz 4, 0x14(3)
    stfs 1, 0x8(4)
L_804561AC:
    lbz 4, 0x50(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_804561C0
    subi 0, 4, 0x1
    stb 0, 0x50(3)
L_804561C0:
    lbz 4, 0x51(3)
    cmplwi 4, 0x0
    beqlr
    subi 0, 4, 0x1
    stb 0, 0x51(3)
    blr

fn_804561D8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 30, 7
    lwz 0, 0x0(4)
    stb 30, 0x44(3)
    mr 29, 5
    mr 28, 3
    mr 5, 6
    stw 0, 0x8(1)
    addi 4, 1, 0x8
    bl fn_80456334
    mr 31, 3
    lwz 3, 0x0(3)
    cmplwi 3, 0x0
    .4byte 0x418200E0 # beq .L_8045630C
    clrlwi 0, 29, 24
    cmpwi 0, 0x3
    .4byte 0x41820038 # beq .L_80456270
    .4byte 0x40800040 # bge .L_8045627C
    cmpwi 0, 0x2
    .4byte 0x40800020 # bge .L_80456264
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80456258
    .4byte 0x4800002C # b .L_8045627C
    .4byte 0x48000028 # b .L_8045627C
L_80456258:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    .4byte 0xC3E20ECC # lfs f31, lbl_80543E6C@sda21(r0)
    .4byte 0x48000024 # b .L_80456284
L_80456264:
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    .4byte 0xC3E20ECC # lfs f31, lbl_80543E6C@sda21(r0)
    .4byte 0x48000018 # b .L_80456284
L_80456270:
    .4byte 0xC0220EC8 # lfs f1, lbl_80543E68@sda21(r0)
    .4byte 0xC3E20ECC # lfs f31, lbl_80543E6C@sda21(r0)
    .4byte 0x4800000C # b .L_80456284
L_8045627C:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    .4byte 0xC3E20EC8 # lfs f31, lbl_80543E68@sda21(r0)
L_80456284:
    addi 3, 3, 0x48
    li 4, 0x0
    bl fn_800263B4
    clrlwi. 0, 30, 24
    .4byte 0x4182001C # beq .L_804562B0
    lwz 3, 0x0(31)
    li 4, 0x0
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x48000018 # b .L_804562C4
L_804562B0:
    lwz 3, 0x0(31)
    fmr 1, 31
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800262AC
L_804562C4:
    lbz 0, 0x44(28)
    cmplwi 0, 0x1
    .4byte 0x41820040 # beq .L_8045630C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lbz 0, 0x6(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_804562F8
    lwz 3, 0x0(31)
    li 4, 0x0
    .4byte 0xC0220EE0 # lfs f1, lbl_80543E80@sda21(r0)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x48000018 # b .L_8045630C
L_804562F8:
    lwz 3, 0x0(31)
    fmr 1, 31
    li 4, 0x0
    addi 3, 3, 0x48
    bl fn_800262AC
L_8045630C:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80456334:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stfd 31, 0x140(1)
    psq_st 31, 0x148(1), 0, 0
    stmw 26, 0x128(1)
    mr 29, 3
    mr 30, 4
    lbz 0, 0x31(3)
    mr 31, 5
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8045636C
    li 3, 0x0
    .4byte 0x480014BC # b .L_80457824
L_8045636C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lbz 0, 0x89(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80456384
    li 3, 0x0
    .4byte 0x480014A4 # b .L_80457824
L_80456384:
    lis 4, 0x5
    lwz 5, 0x0(30)
    addi 0, 4, 0x1e
    lwz 28, 0x40(3)
    cmpw 5, 0
    lbz 26, 0x1(30)
    lwz 27, 0x34(3)
    .4byte 0x40800038 # bge .L_804563D8
    lis 3, 0x4
    addi 0, 3, 0x70
    cmpw 5, 0
    .4byte 0x41820054 # beq .L_80456404
    .4byte 0x40800014 # bge .L_804563C8
    addi 0, 3, 0x3e
    cmpw 5, 0
    .4byte 0x41820044 # beq .L_80456404
    .4byte 0x48000190 # b .L_80456554
L_804563C8:
    addi 0, 4, 0x18
    cmpw 5, 0
    .4byte 0x40800034 # bge .L_80456404
    .4byte 0x48000180 # b .L_80456554
L_804563D8:
    addi 0, 4, 0x57
    cmpw 5, 0
    .4byte 0x41820024 # beq .L_80456404
    .4byte 0x40800170 # bge .L_80456554
    addi 0, 4, 0x55
    cmpw 5, 0
    .4byte 0x40800164 # bge .L_80456554
    addi 0, 4, 0x50
    cmpw 5, 0
    .4byte 0x40800008 # bge .L_80456404
    .4byte 0x48000154 # b .L_80456554
L_80456404:
    lis 4, 0x4
    mr 3, 27
    addi 0, 4, 0x3e
    addi 4, 1, 0xe0
    stw 0, 0xe0(1)
    bl fn_80023274
    lis 4, 0x4
    mr 3, 27
    addi 0, 4, 0x70
    addi 4, 1, 0xdc
    stw 0, 0xdc(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x18
    addi 4, 1, 0xd8
    stw 0, 0xd8(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x19
    addi 4, 1, 0xd4
    stw 0, 0xd4(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x1a
    addi 4, 1, 0xd0
    stw 0, 0xd0(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x1b
    addi 4, 1, 0xcc
    stw 0, 0xcc(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x1c
    addi 4, 1, 0xc8
    stw 0, 0xc8(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x1d
    addi 4, 1, 0xc4
    stw 0, 0xc4(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x50
    addi 4, 1, 0xc0
    stw 0, 0xc0(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x51
    addi 4, 1, 0xbc
    stw 0, 0xbc(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x52
    addi 4, 1, 0xb8
    stw 0, 0xb8(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x53
    addi 4, 1, 0xb4
    stw 0, 0xb4(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x54
    addi 4, 1, 0xb0
    stw 0, 0xb0(1)
    bl fn_80023274
    lis 4, 0x5
    mr 3, 27
    addi 0, 4, 0x57
    addi 4, 1, 0xac
    stw 0, 0xac(1)
    bl fn_80023274
L_80456554:
    lis 5, 0x3
    lwz 0, 0x0(30)
    addi 3, 5, 0x34
    .4byte 0xC3E20EC8 # lfs f31, lbl_80543E68@sda21(r0)
    cmpw 0, 3
    .4byte 0x418202B8 # beq .L_80456820
    .4byte 0x40800158 # bge .L_804566C4
    addi 3, 5, 0x3
    cmpw 0, 3
    .4byte 0x418202A8 # beq .L_80456820
    .4byte 0x4080009C # bge .L_80456618
    lis 4, 0x2
    addi 3, 4, 0x11
    cmpw 0, 3
    .4byte 0x41820294 # beq .L_80456820
    .4byte 0x40800048 # bge .L_804565D8
    addi 3, 4, 0xb
    cmpw 0, 3
    .4byte 0x41820284 # beq .L_80456820
    .4byte 0x4080001C # bge .L_804565BC
    cmpwi 0, 0x7
    .4byte 0x41820278 # beq .L_80456820
    .4byte 0x40800824 # bge .L_80456DD0
    cmpwi 0, 0x4
    .4byte 0x4182026C # beq .L_80456820
    .4byte 0x48000818 # b .L_80456DD0
L_804565BC:
    addi 3, 4, 0xf
    cmpw 0, 3
    .4byte 0x4080080C # bge .L_80456DD0
    addi 3, 4, 0xd
    cmpw 0, 3
    .4byte 0x40800250 # bge .L_80456820
    .4byte 0x480007FC # b .L_80456DD0
L_804565D8:
    addi 3, 4, 0x38
    cmpw 0, 3
    .4byte 0x4182044C # beq .L_80456A2C
    .4byte 0x40800024 # bge .L_80456608
    addi 3, 4, 0x28
    cmpw 0, 3
    .4byte 0x41820230 # beq .L_80456820
    .4byte 0x408007DC # bge .L_80456DD0
    addi 3, 4, 0x23
    cmpw 0, 3
    .4byte 0x41820378 # beq .L_80456978
    .4byte 0x480007CC # b .L_80456DD0
L_80456608:
    addi 3, 5, 0x1
    cmpw 0, 3
    .4byte 0x418202D0 # beq .L_804568E0
    .4byte 0x480007BC # b .L_80456DD0
L_80456618:
    addi 3, 5, 0x21
    cmpw 0, 3
    .4byte 0x41820374 # beq .L_80456994
    .4byte 0x40800060 # bge .L_80456684
    addi 3, 5, 0x10
    cmpw 0, 3
    .4byte 0x418201F0 # beq .L_80456820
    .4byte 0x40800034 # bge .L_80456668
    addi 3, 5, 0x9
    cmpw 0, 3
    .4byte 0x41820790 # beq .L_80456DD0
    .4byte 0x40800014 # bge .L_80456658
    addi 3, 5, 0x6
    cmpw 0, 3
    .4byte 0x408001D0 # bge .L_80456820
    .4byte 0x4800077C # b .L_80456DD0
L_80456658:
    addi 3, 5, 0xb
    cmpw 0, 3
    .4byte 0x40800770 # bge .L_80456DD0
    .4byte 0x480001BC # b .L_80456820
L_80456668:
    addi 3, 5, 0x17
    cmpw 0, 3
    .4byte 0x40800760 # bge .L_80456DD0
    addi 3, 5, 0x15
    cmpw 0, 3
    .4byte 0x408001A4 # bge .L_80456820
    .4byte 0x48000750 # b .L_80456DD0
L_80456684:
    addi 3, 5, 0x2b
    cmpw 0, 3
    .4byte 0x418203B8 # beq .L_80456A44
    .4byte 0x40800024 # bge .L_804566B4
    addi 3, 5, 0x26
    cmpw 0, 3
    .4byte 0x41820184 # beq .L_80456820
    .4byte 0x40800730 # bge .L_80456DD0
    addi 3, 5, 0x25
    cmpw 0, 3
    .4byte 0x408002B0 # bge .L_8045695C
    .4byte 0x48000720 # b .L_80456DD0
L_804566B4:
    addi 3, 5, 0x2f
    cmpw 0, 3
    .4byte 0x41820248 # beq .L_80456904
    .4byte 0x48000710 # b .L_80456DD0
L_804566C4:
    lis 6, 0x4
    addi 4, 6, 0xa4
    cmpw 0, 4
    .4byte 0x418203A8 # beq .L_80456A78
    .4byte 0x408000AC # bge .L_80456780
    addi 3, 6, 0x10
    cmpw 0, 3
    .4byte 0x41820140 # beq .L_80456820
    .4byte 0x4080005C # bge .L_80456740
    addi 3, 6, 0x2
    cmpw 0, 3
    .4byte 0x40800024 # bge .L_80456714
    addi 4, 5, 0x6a
    cmpw 0, 4
    .4byte 0x418205B0 # beq .L_80456CAC
    .4byte 0x408006D0 # bge .L_80456DD0
    addi 3, 5, 0x5a
    cmpw 0, 3
    .4byte 0x41820478 # beq .L_80456B84
    .4byte 0x480006C0 # b .L_80456DD0
L_80456714:
    addi 3, 6, 0x9
    cmpw 0, 3
    .4byte 0x40800014 # bge .L_80456730
    addi 3, 6, 0x4
    cmpw 0, 3
    .4byte 0x408006A8 # bge .L_80456DD0
    .4byte 0x480000F4 # b .L_80456820
L_80456730:
    addi 3, 6, 0xb
    cmpw 0, 3
    .4byte 0x40800698 # bge .L_80456DD0
    .4byte 0x480000E4 # b .L_80456820
L_80456740:
    addi 3, 6, 0x62
    cmpw 0, 3
    .4byte 0x418202CC # beq .L_80456A14
    .4byte 0x40800024 # bge .L_80456770
    addi 3, 6, 0x46
    cmpw 0, 3
    .4byte 0x418202A4 # beq .L_804569FC
    .4byte 0x40800674 # bge .L_80456DD0
    addi 3, 6, 0x3c
    cmpw 0, 3
    .4byte 0x4182024C # beq .L_804569B4
    .4byte 0x48000664 # b .L_80456DD0
L_80456770:
    addi 3, 6, 0x79
    cmpw 0, 3
    .4byte 0x418202E8 # beq .L_80456A60
    .4byte 0x48000654 # b .L_80456DD0
L_80456780:
    lis 5, 0x5
    addi 3, 5, 0x1f
    cmpw 0, 3
    .4byte 0x41820624 # beq .L_80456DB0
    .4byte 0x40800044 # bge .L_804567D4
    addi 4, 6, 0xd9
    cmpw 0, 4
    .4byte 0x41820318 # beq .L_80456AB4
    .4byte 0x40800024 # bge .L_804567C4
    addi 3, 6, 0xd4
    cmpw 0, 3
    .4byte 0x41820074 # beq .L_80456820
    .4byte 0x40800620 # bge .L_80456DD0
    addi 3, 6, 0xd0
    cmpw 0, 3
    .4byte 0x418205D0 # beq .L_80456D8C
    .4byte 0x48000610 # b .L_80456DD0
L_804567C4:
    addi 3, 5, 0x6
    cmpw 0, 3
    .4byte 0x41820208 # beq .L_804569D4
    .4byte 0x48000600 # b .L_80456DD0
L_804567D4:
    addi 3, 5, 0x4f
    cmpw 0, 3
    .4byte 0x41820044 # beq .L_80456820
    .4byte 0x40800030 # bge .L_80456810
    addi 3, 5, 0x36
    cmpw 0, 3
    .4byte 0x40800014 # bge .L_80456800
    addi 3, 5, 0x2f
    cmpw 0, 3
    .4byte 0x41820028 # beq .L_80456820
    .4byte 0x480005D4 # b .L_80456DD0
L_80456800:
    addi 3, 5, 0x3a
    cmpw 0, 3
    .4byte 0x408005C8 # bge .L_80456DD0
    .4byte 0x48000014 # b .L_80456820
L_80456810:
    addi 3, 5, 0x55
    cmpw 0, 3
    .4byte 0x41820400 # beq .L_80456C18
    .4byte 0x480005B4 # b .L_80456DD0
L_80456820:
    mulli 3, 26, 0x6c
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    addi 5, 3, 0x14
    add 5, 27, 5
    lwz 6, 0x58(5)
    .4byte 0x48000048 # b .L_8045687C
L_80456838:
    lwz 4, 0x0(6)
    lwz 3, 0x28(4)
    cmplw 3, 0
    .4byte 0x40820034 # bne .L_80456878
    lwz 3, 0x48(4)
    cmplwi 3, 0x0
    .4byte 0x40820028 # bne .L_80456878
    fadds 31, 31, 1
    lwz 3, 0x68(5)
    fctiwz 0, 31
    stfd 0, 0x120(1)
    lwz 4, 0x124(1)
    cmpw 4, 3
    .4byte 0x4081000C # ble .L_80456878
    li 3, 0x0
    .4byte 0x48000FB0 # b .L_80457824
L_80456878:
    lwz 6, 0xc(6)
L_8045687C:
    cmplwi 6, 0x0
    .4byte 0x4082FFB8 # bne .L_80456838
    .4byte 0xC0020EC8 # lfs f0, lbl_80543E68@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x41820544 # beq .L_80456DD0
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    lwz 5, 0x58(5)
    fadds 0, 0, 31
    lwz 3, 0x0(30)
    fdivs 1, 31, 0
    .4byte 0x48000030 # b .L_804568D4
L_804568A8:
    lwz 4, 0x0(5)
    lwz 0, 0x28(4)
    cmplw 0, 3
    .4byte 0x4082001C # bne .L_804568D0
    lwz 0, 0x48(4)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_804568D0
    lfs 0, 0x4c(4)
    fmuls 0, 0, 1
    stfs 0, 0x4c(4)
L_804568D0:
    lwz 5, 0xc(5)
L_804568D4:
    cmplwi 5, 0x0
    .4byte 0x4082FFD0 # bne .L_804568A8
    .4byte 0x480004F4 # b .L_80456DD0
L_804568E0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lbz 0, 0x6b(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_804568F8
    li 3, 0x0
    .4byte 0x48000F30 # b .L_80457824
L_804568F8:
    li 0, 0x3
    stb 0, 0x6b(3)
    .4byte 0x480004D0 # b .L_80456DD0
L_80456904:
    lwz 3, 0x34(29)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80456934
    lfs 0, 0x0(3)
    addi 0, 29, 0x38
    stfs 0, 0x38(29)
    lfs 0, 0x4(3)
    stfs 0, 0x3c(29)
    lfs 0, 0x8(3)
    stfs 0, 0x40(29)
    stw 0, 0x14(29)
    .4byte 0x4800000C # b .L_8045693C
L_80456934:
    li 0, 0x0
    stw 0, 0x14(29)
L_8045693C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x14(29)
    lwz 3, 0x28(3)
    bl fn_80026100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 0, 0x1
    stb 0, 0x75(3)
    .4byte 0x48000478 # b .L_80456DD0
L_8045695C:
    stw 3, 0xa8(1)
    mr 3, 27
    addi 4, 1, 0xa8
    bl fn_80023274
    li 0, 0x0
    stw 0, 0x14(29)
    .4byte 0x4800045C # b .L_80456DD0
L_80456978:
    stw 3, 0xa4(1)
    mr 3, 27
    addi 4, 1, 0xa4
    bl fn_80023274
    li 0, 0x0
    stw 0, 0x14(29)
    .4byte 0x48000440 # b .L_80456DD0
L_80456994:
    lbz 0, 0x50(29)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_804569A8
    li 3, 0x0
    .4byte 0x48000E80 # b .L_80457824
L_804569A8:
    li 0, 0x8
    stb 0, 0x50(29)
    .4byte 0x48000420 # b .L_80456DD0
L_804569B4:
    lbz 0, 0x51(29)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_804569C8
    li 3, 0x0
    .4byte 0x48000E60 # b .L_80457824
L_804569C8:
    li 0, 0x8
    stb 0, 0x51(29)
    .4byte 0x48000400 # b .L_80456DD0
L_804569D4:
    lbz 0, 0x52(29)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_804569F0
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x52(29)
    .4byte 0x48000E38 # b .L_80457824
L_804569F0:
    li 0, 0x1
    stb 0, 0x52(29)
    .4byte 0x480003D8 # b .L_80456DD0
L_804569FC:
    addi 0, 6, 0x45
    mr 3, 27
    stw 0, 0xa0(1)
    addi 4, 1, 0xa0
    bl fn_80023274
    .4byte 0x480003C0 # b .L_80456DD0
L_80456A14:
    addi 0, 6, 0x61
    mr 3, 27
    stw 0, 0x9c(1)
    addi 4, 1, 0x9c
    bl fn_80023274
    .4byte 0x480003A8 # b .L_80456DD0
L_80456A2C:
    addi 0, 5, 0x2b
    mr 3, 27
    stw 0, 0x98(1)
    addi 4, 1, 0x98
    bl fn_80023274
    .4byte 0x48000390 # b .L_80456DD0
L_80456A44:
    lis 4, 0x2
    mr 3, 27
    addi 0, 4, 0x38
    addi 4, 1, 0x94
    stw 0, 0x94(1)
    bl fn_80023274
    .4byte 0x48000374 # b .L_80456DD0
L_80456A60:
    addi 0, 6, 0x78
    mr 3, 27
    stw 0, 0x90(1)
    addi 4, 1, 0x90
    bl fn_80023274
    .4byte 0x4800035C # b .L_80456DD0
L_80456A78:
    lwz 3, 0x54(29)
    subis 0, 3, 0x4
    cmplwi 0, 0xa4
    .4byte 0x4082001C # bne .L_80456AA0
    addi 3, 6, 0xa5
    stw 3, 0x54(29)
    lwz 0, 0x54(29)
    stw 3, 0x8c(1)
    stw 0, 0x0(30)
    .4byte 0x48000334 # b .L_80456DD0
L_80456AA0:
    stw 4, 0x54(29)
    lwz 0, 0x54(29)
    stw 4, 0x88(1)
    stw 0, 0x0(30)
    .4byte 0x48000320 # b .L_80456DD0
L_80456AB4:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 0, 0x70(3)
    cmpwi 0, 0x3
    .4byte 0x4182005C # beq .L_80456B1C
    .4byte 0x4080001C # bge .L_80456AE0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_80456AFC
    .4byte 0x4080003C # bge .L_80456B0C
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80456AF0
    .4byte 0x48000070 # b .L_80456B4C
L_80456AE0:
    cmpwi 0, 0x5
    .4byte 0x41820058 # beq .L_80456B3C
    .4byte 0x40800064 # bge .L_80456B4C
    .4byte 0x48000040 # b .L_80456B2C
L_80456AF0:
    stw 4, 0x84(1)
    stw 4, 0x0(30)
    .4byte 0x48000064 # b .L_80456B5C
L_80456AFC:
    addi 0, 6, 0xda
    stw 0, 0x80(1)
    stw 0, 0x0(30)
    .4byte 0x48000054 # b .L_80456B5C
L_80456B0C:
    addi 0, 6, 0xdb
    stw 0, 0x7c(1)
    stw 0, 0x0(30)
    .4byte 0x48000044 # b .L_80456B5C
L_80456B1C:
    addi 0, 6, 0xdc
    stw 0, 0x78(1)
    stw 0, 0x0(30)
    .4byte 0x48000034 # b .L_80456B5C
L_80456B2C:
    addi 0, 6, 0xdd
    stw 0, 0x74(1)
    stw 0, 0x0(30)
    .4byte 0x48000024 # b .L_80456B5C
L_80456B3C:
    addi 0, 6, 0xde
    stw 0, 0x70(1)
    stw 0, 0x0(30)
    .4byte 0x48000014 # b .L_80456B5C
L_80456B4C:
    lis 3, 0x4
    addi 0, 3, 0xd9
    stw 0, 0x6c(1)
    stw 0, 0x0(30)
L_80456B5C:
    .4byte 0x808D93C0 # lwz r4, lbl_8053AF80@sda21(r0)
    lwz 3, 0x70(4)
    addi 0, 3, 0x1
    stw 0, 0x70(4)
    lwz 0, 0x70(4)
    cmplwi 0, 0x5
    .4byte 0x4081025C # ble .L_80456DD0
    li 0, 0x0
    stw 0, 0x70(4)
    .4byte 0x48000250 # b .L_80456DD0
L_80456B84:
    .4byte 0x880D9398 # lbz r0, lbl_8053AF58@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_80456BA4
    .4byte 0x386D939C # li r3, lbl_8053AF5C@sda21
    li 4, 0x0
    bl fn_80093338
    li 0, 0x1
    .4byte 0x980D9398 # stb r0, lbl_8053AF58@sda21(r0)
L_80456BA4:
    lis 3, 0x19
    .4byte 0x808D939C # lwz r4, lbl_8053AF5C@sda21(r0)
    addi 0, 3, 0x660d
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    mullw 3, 4, 0
    .4byte 0xC0620EE8 # lfs f3, lbl_80543E88@sda21(r0)
    .4byte 0xC0020EEC # lfs f0, lbl_80543E8C@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    srwi 0, 3, 9
    .4byte 0x906D939C # stw r3, lbl_8053AF5C@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fcmpo cr0, 1, 0
    .4byte 0x408001E8 # bge .L_80456DD0
    lis 4, 0x3
    mr 3, 29
    addi 0, 4, 0x28
    addi 4, 1, 0x68
    stw 0, 0x68(1)
    lwz 12, 0x8(29)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 3, 0x0
    .4byte 0x48000C10 # b .L_80457824
L_80456C18:
    .4byte 0x880D93A0 # lbz r0, lbl_8053AF60@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_80456C38
    .4byte 0x386D93A4 # li r3, lbl_8053AF64@sda21
    li 4, 0x0
    bl fn_80093338
    li 0, 0x1
    .4byte 0x980D93A0 # stb r0, lbl_8053AF60@sda21(r0)
L_80456C38:
    lis 3, 0x19
    .4byte 0x808D93A4 # lwz r4, lbl_8053AF64@sda21(r0)
    addi 0, 3, 0x660d
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    mullw 3, 4, 0
    .4byte 0xC0620EE8 # lfs f3, lbl_80543E88@sda21(r0)
    .4byte 0xC0020EEC # lfs f0, lbl_80543E8C@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    srwi 0, 3, 9
    .4byte 0x906D93A4 # stw r3, lbl_8053AF64@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800154 # bge .L_80456DD0
    lis 4, 0x5
    mr 3, 29
    addi 0, 4, 0x56
    addi 4, 1, 0x64
    stw 0, 0x64(1)
    lwz 12, 0x8(29)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    li 3, 0x0
    .4byte 0x48000B7C # b .L_80457824
L_80456CAC:
    lwz 3, 0x58(29)
    addi 0, 5, 0x6c
    cmpw 3, 0
    .4byte 0x4182009C # beq .L_80456D54
    .4byte 0x40800014 # bge .L_80456CD0
    cmpw 3, 4
    .4byte 0x41820024 # beq .L_80456CE8
    .4byte 0x40800058 # bge .L_80456D20
    .4byte 0x48000104 # b .L_80456DD0
L_80456CD0:
    addi 0, 5, 0x6e
    cmpw 3, 0
    .4byte 0x408000F8 # bge .L_80456DD0
    stw 4, 0x60(1)
    stw 4, 0x58(29)
    .4byte 0x480000EC # b .L_80456DD0
L_80456CE8:
    addi 0, 5, 0x6b
    mr 3, 29
    stw 0, 0x5c(1)
    addi 4, 1, 0x5c
    lwz 12, 0x8(29)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    li 3, 0x0
    addi 0, 4, 0x6b
    stw 0, 0x58(1)
    stw 0, 0x58(29)
    .4byte 0x48000B08 # b .L_80457824
L_80456D20:
    stw 0, 0x54(1)
    mr 3, 29
    addi 4, 1, 0x54
    lwz 12, 0x8(29)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    li 3, 0x0
    addi 0, 4, 0x6c
    stw 0, 0x50(1)
    stw 0, 0x58(29)
    .4byte 0x48000AD4 # b .L_80457824
L_80456D54:
    addi 0, 5, 0x6d
    mr 3, 29
    stw 0, 0x4c(1)
    addi 4, 1, 0x4c
    lwz 12, 0x8(29)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    li 3, 0x0
    addi 0, 4, 0x6d
    stw 0, 0x48(1)
    stw 0, 0x58(29)
    .4byte 0x48000A9C # b .L_80457824
L_80456D8C:
    addi 0, 6, 0xce
    mr 3, 29
    stw 0, 0x44(1)
    addi 4, 1, 0x44
    lwz 12, 0x8(29)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000024 # b .L_80456DD0
L_80456DB0:
    addi 0, 5, 0x20
    mr 3, 29
    stw 0, 0x40(1)
    addi 4, 1, 0x40
    lwz 12, 0x8(29)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_80456DD0:
    lwz 3, 0x34(29)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80456E00
    lfs 0, 0x0(3)
    addi 0, 29, 0x38
    stfs 0, 0x38(29)
    lfs 0, 0x4(3)
    stfs 0, 0x3c(29)
    lfs 0, 0x8(3)
    stfs 0, 0x40(29)
    stw 0, 0x14(29)
    .4byte 0x4800000C # b .L_80456E08
L_80456E00:
    li 0, 0x0
    stw 0, 0x14(29)
L_80456E08:
    psq_l 1, 0x38(29), 0, 0
    addi 3, 1, 0x108
    lfs 0, 0x40(29)
    addi 4, 1, 0x114
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x110(1)
    bl fn_8045BA84
    lwz 3, 0x14(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80456E44
    lfs 1, 0x4(3)
    lfs 0, 0x8(3)
    stfs 0, 0x4(3)
    lwz 3, 0x14(29)
    stfs 1, 0x8(3)
L_80456E44:
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    lwz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80456E60
    li 3, 0x0
    .4byte 0x480009C8 # b .L_80457824
L_80456E60:
    lwz 0, 0x0(30)
    mr 3, 28
    addi 4, 1, 0x3c
    stw 0, 0x3c(1)
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820518 # beq .L_8045739C
    lwz 0, 0x0(30)
    mr 3, 29
    addi 4, 1, 0x38
    stw 0, 0x38(1)
    bl fn_80026060
    mr. 28, 3
    .4byte 0x40820348 # bne .L_804571E8
    mr 3, 29
    bl fn_800260B8
    mr. 28, 3
    .4byte 0x4082001C # bne .L_80456ECC
    lwz 0, 0x0(30)
    mr 3, 29
    addi 4, 1, 0x34
    stw 0, 0x34(1)
    bl fn_8003F3C8
    mr 28, 3
L_80456ECC:
    cmplwi 28, 0x0
    .4byte 0x41820310 # beq .L_804571E0
    lwz 0, 0x0(30)
    mr 3, 27
    mr 5, 28
    addi 4, 1, 0x30
    stw 0, 0x30(1)
    lwz 6, 0x14(29)
    bl fn_80023750
    lwz 5, 0x0(28)
    cmplwi 5, 0x0
    .4byte 0x418202D4 # beq .L_804571CC
    lwz 0, 0x14(29)
    cmplwi 0, 0x0
    .4byte 0x418200B0 # beq .L_80456FB4
    lwz 7, 0x0(30)
    subis 4, 7, 0x3
    cmplwi 4, 0x1e
    .4byte 0x41820060 # beq .L_80456F74
    cmplwi 4, 0x3c
    .4byte 0x41820058 # beq .L_80456F74
    cmplwi 4, 0x1f
    .4byte 0x41820050 # beq .L_80456F74
    cmplwi 4, 0x30
    .4byte 0x41820048 # beq .L_80456F74
    subis 3, 7, 0x5
    cmplwi 3, 0x27
    .4byte 0x4182003C # beq .L_80456F74
    subi 0, 3, 0x78
    cmplwi 0, 0x1
    .4byte 0x40810030 # ble .L_80456F74
    subi 0, 7, 0x4f
    cmplwi 0, 0x1
    .4byte 0x40810024 # ble .L_80456F74
    cmplwi 4, 0x74
    .4byte 0x4182001C # beq .L_80456F74
    cmplwi 3, 0x3b
    .4byte 0x41820014 # beq .L_80456F74
    cmplwi 4, 0x32
    .4byte 0x4182000C # beq .L_80456F74
    cmplwi 26, 0x6
    .4byte 0x40820018 # bne .L_80456F88
L_80456F74:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    addi 3, 5, 0x48
    li 4, 0x0
    bl fn_800263B4
    .4byte 0x48000040 # b .L_80456FC4
L_80456F88:
    lfs 0, 0x11c(1)
    addi 5, 1, 0xfc
    psq_l 1, 0x114(1), 0, 0
    mr 3, 29
    stfs 0, 0x104(1)
    mr 4, 28
    addi 6, 1, 0x2c
    psq_st 1, 0x0(5), 0, 0
    stw 7, 0x2c(1)
    bl fn_80455CA4
    .4byte 0x48000014 # b .L_80456FC4
L_80456FB4:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    addi 3, 5, 0x48
    li 4, 0x0
    bl fn_800263B4
L_80456FC4:
    .4byte 0xC0020EC8 # lfs f0, lbl_80543E68@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x4182001C # beq .L_80456FE8
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    lwz 3, 0x0(28)
    fadds 0, 0, 31
    lfs 1, 0x3c(3)
    fdivs 0, 1, 0
    stfs 0, 0x3c(3)
L_80456FE8:
    lis 4, 0x4
    lwz 5, 0x0(30)
    addi 0, 4, 0xa3
    cmpw 5, 0
    .4byte 0x41820080 # beq .L_80457078
    .4byte 0x40800048 # bge .L_80457044
    lis 3, 0x3
    addi 0, 3, 0x73
    cmpw 5, 0
    .4byte 0x41820084 # beq .L_80457090
    .4byte 0x40800024 # bge .L_80457034
    addi 0, 3, 0x3e
    cmpw 5, 0
    .4byte 0x41820074 # beq .L_80457090
    .4byte 0x40800114 # bge .L_80457134
    addi 0, 3, 0x2d
    cmpw 5, 0
    .4byte 0x41820064 # beq .L_80457090
    .4byte 0x48000104 # b .L_80457134
L_80457034:
    addi 0, 4, 0x2f
    cmpw 5, 0
    .4byte 0x418200DC # beq .L_80457118
    .4byte 0x480000F4 # b .L_80457134
L_80457044:
    lis 3, 0x5
    addi 0, 3, 0xb
    cmpw 5, 0
    .4byte 0x41820040 # beq .L_80457090
    .4byte 0x40800014 # bge .L_80457068
    addi 0, 4, 0xc1
    cmpw 5, 0
    .4byte 0x41820030 # beq .L_80457090
    .4byte 0x480000D0 # b .L_80457134
L_80457068:
    addi 0, 3, 0x10
    cmpw 5, 0
    .4byte 0x41820020 # beq .L_80457090
    .4byte 0x480000C0 # b .L_80457134
L_80457078:
    lwz 3, 0x0(28)
    li 4, 0x0
    lfs 1, 0x4c(29)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x480000A8 # b .L_80457134
L_80457090:
    .4byte 0x880D93A8 # lbz r0, lbl_8053AF68@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_804570B0
    .4byte 0x386D93AC # li r3, lbl_8053AF6C@sda21
    li 4, 0x0
    bl fn_80093338
    li 0, 0x1
    .4byte 0x980D93A8 # stb r0, lbl_8053AF68@sda21(r0)
L_804570B0:
    lis 3, 0x19
    .4byte 0x808D93AC # lwz r4, lbl_8053AF6C@sda21(r0)
    addi 0, 3, 0x660d
    lis 5, lbl_80539D44@ha
    mullw 3, 4, 0
    .4byte 0xC0820ED0 # lfs f4, lbl_80543E70@sda21(r0)
    lfs 0, lbl_80539D44@l(5)
    li 4, 0x0
    .4byte 0xC0220EF0 # lfs f1, lbl_80543E90@sda21(r0)
    fsubs 2, 4, 0
    addis 3, 3, 0x3c6f
    .4byte 0xC0620EF4 # lfs f3, lbl_80543E94@sda21(r0)
    subi 3, 3, 0xca1
    srwi 0, 3, 9
    .4byte 0x906D93AC # stw r3, lbl_8053AF6C@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lwz 3, 0x0(28)
    lfs 0, 0xc(1)
    addi 3, 3, 0x48
    fsubs 0, 0, 4
    fmuls 0, 1, 0
    fnmsubs 0, 3, 2, 0
    fadds 1, 4, 0
    bl fn_80026304
    .4byte 0x48000020 # b .L_80457134
L_80457118:
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    li 4, 0x0
    lfs 0, 0x48(29)
    lwz 3, 0x0(28)
    fadds 1, 1, 0
    addi 3, 3, 0x48
    bl fn_80026304
L_80457134:
    lwz 4, 0x0(28)
    li 3, 0x1
    stw 3, 0x10(4)
    lbz 0, 0x1d(4)
    rlwimi 0, 3, 7, 24, 24
    stb 0, 0x1d(4)
    lbz 0, 0x1d(4)
    rlwimi 0, 3, 6, 25, 25
    stb 0, 0x1d(4)
    lwz 4, 0x0(28)
    cmplwi 4, 0x0
    .4byte 0x4182006C # beq .L_804571CC
    cmplwi 31, 0x0
    .4byte 0x41820064 # beq .L_804571CC
    .4byte 0xC0220EC8 # lfs f1, lbl_80543E68@sda21(r0)
    stfs 1, 0x24(4)
    .4byte 0x41820040 # beq .L_804571B4
    lfs 0, 0x24(4)
    lis 0, 0x4330
    .4byte 0xC0620ED0 # lfs f3, lbl_80543E70@sda21(r0)
    stw 31, 0x30(4)
    .4byte 0xC8220F08 # lfd f1, lbl_80543EA8@sda21(r0)
    fsubs 2, 3, 0
    lwz 3, 0x30(4)
    stw 0, 0x120(1)
    stw 3, 0x124(1)
    lfd 0, 0x120(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x28(4)
    stfs 3, 0x2c(4)
    .4byte 0x4800001C # b .L_804571CC
L_804571B4:
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    li 0, 0x0
    stfs 0, 0x24(4)
    stfs 1, 0x28(4)
    stw 0, 0x30(4)
    stfs 1, 0x2c(4)
L_804571CC:
    mr 3, 29
    mr 4, 28
    bl fn_80455F40
    mr 3, 28
    .4byte 0x48000648 # b .L_80457824
L_804571E0:
    li 3, 0x0
    .4byte 0x48000640 # b .L_80457824
L_804571E8:
    lwz 3, 0x0(28)
    lwz 0, 0x10(3)
    cmplwi 0, 0x1
    .4byte 0x4080000C # bge .L_80457200
    li 0, 0x1
    stw 0, 0x10(3)
L_80457200:
    lwz 4, 0x14(29)
    cmplwi 4, 0x0
    .4byte 0x4182002C # beq .L_80457234
    lwz 3, 0x0(28)
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80457234
    lfs 0, 0x0(4)
    stfs 0, 0x4(3)
    lfs 0, 0x4(4)
    stfs 0, 0x8(3)
    lfs 0, 0x8(4)
    stfs 0, 0xc(3)
L_80457234:
    lwz 5, 0x0(28)
    cmplwi 5, 0x0
    .4byte 0x4182014C # beq .L_80457388
    lwz 0, 0x14(29)
    cmplwi 0, 0x0
    .4byte 0x418200B0 # beq .L_804572F8
    lwz 7, 0x0(30)
    subis 4, 7, 0x3
    cmplwi 4, 0x1e
    .4byte 0x41820060 # beq .L_804572B8
    cmplwi 4, 0x3c
    .4byte 0x41820058 # beq .L_804572B8
    cmplwi 4, 0x1f
    .4byte 0x41820050 # beq .L_804572B8
    cmplwi 4, 0x30
    .4byte 0x41820048 # beq .L_804572B8
    subis 3, 7, 0x5
    cmplwi 3, 0x27
    .4byte 0x4182003C # beq .L_804572B8
    subi 0, 3, 0x78
    cmplwi 0, 0x1
    .4byte 0x40810030 # ble .L_804572B8
    subi 0, 7, 0x4f
    cmplwi 0, 0x1
    .4byte 0x40810024 # ble .L_804572B8
    cmplwi 4, 0x74
    .4byte 0x4182001C # beq .L_804572B8
    cmplwi 3, 0x3b
    .4byte 0x41820014 # beq .L_804572B8
    cmplwi 4, 0x32
    .4byte 0x4182000C # beq .L_804572B8
    cmplwi 26, 0x6
    .4byte 0x40820018 # bne .L_804572CC
L_804572B8:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    addi 3, 5, 0x48
    li 4, 0x0
    bl fn_800263B4
    .4byte 0x48000040 # b .L_80457308
L_804572CC:
    lfs 0, 0x11c(1)
    addi 5, 1, 0xf0
    psq_l 1, 0x114(1), 0, 0
    mr 3, 29
    stfs 0, 0xf8(1)
    mr 4, 28
    addi 6, 1, 0x28
    psq_st 1, 0x0(5), 0, 0
    stw 7, 0x28(1)
    bl fn_80455CA4
    .4byte 0x48000014 # b .L_80457308
L_804572F8:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    addi 3, 5, 0x48
    li 4, 0x0
    bl fn_800263B4
L_80457308:
    .4byte 0xC0020EC8 # lfs f0, lbl_80543E68@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x4182001C # beq .L_8045732C
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    lwz 3, 0x0(28)
    fadds 0, 0, 31
    lfs 1, 0x3c(3)
    fdivs 0, 1, 0
    stfs 0, 0x3c(3)
L_8045732C:
    lis 3, 0x4
    lwz 4, 0x0(30)
    addi 0, 3, 0xa3
    cmpw 4, 0
    .4byte 0x41820018 # beq .L_80457354
    .4byte 0x40800048 # bge .L_80457388
    addi 0, 3, 0x2f
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_8045736C
    .4byte 0x48000038 # b .L_80457388
L_80457354:
    lwz 3, 0x0(28)
    li 4, 0x0
    lfs 1, 0x4c(29)
    addi 3, 3, 0x48
    bl fn_800262AC
    .4byte 0x48000020 # b .L_80457388
L_8045736C:
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    li 4, 0x0
    lfs 0, 0x48(29)
    lwz 3, 0x0(28)
    fadds 1, 1, 0
    addi 3, 3, 0x48
    bl fn_80026304
L_80457388:
    mr 3, 29
    mr 4, 28
    bl fn_80455F40
    mr 3, 28
    .4byte 0x4800048C # b .L_80457824
L_8045739C:
    lwz 0, 0x0(30)
    mr 3, 29
    addi 4, 1, 0x24
    stw 0, 0x24(1)
    bl fn_80026060
    mr. 28, 3
    .4byte 0x40820010 # bne .L_804573C4
    mr 3, 29
    bl fn_800260B8
    mr 28, 3
L_804573C4:
    cmplwi 28, 0x0
    .4byte 0x4082001C # bne .L_804573E4
    lwz 0, 0x0(30)
    mr 3, 29
    addi 4, 1, 0x20
    stw 0, 0x20(1)
    bl fn_8003F3C8
    mr 28, 3
L_804573E4:
    cmplwi 28, 0x0
    .4byte 0x41820438 # beq .L_80457820
    lwz 0, 0x0(30)
    mr 3, 27
    mr 5, 28
    addi 4, 1, 0x1c
    stw 0, 0x1c(1)
    lwz 6, 0x14(29)
    bl fn_80023750
    lwz 6, 0x0(28)
    cmplwi 6, 0x0
    .4byte 0x418203BC # beq .L_804577CC
    lwz 0, 0x14(29)
    cmplwi 0, 0x0
    .4byte 0x41820160 # beq .L_8045757C
    lwz 7, 0x0(30)
    subis 5, 7, 0x3
    cmplwi 5, 0x36
    .4byte 0x41820058 # beq .L_80457484
    cmplwi 5, 0x3d
    .4byte 0x41820050 # beq .L_80457484
    cmplwi 5, 0x90
    .4byte 0x41820048 # beq .L_80457484
    cmplwi 5, 0x5c
    .4byte 0x41820040 # beq .L_80457484
    cmplwi 5, 0x31
    .4byte 0x41820038 # beq .L_80457484
    cmplwi 5, 0x79
    .4byte 0x41820030 # beq .L_80457484
    subis 4, 7, 0x5
    cmplwi 4, 0x57
    .4byte 0x41820024 # beq .L_80457484
    cmplwi 5, 0x86
    .4byte 0x4182001C # beq .L_80457484
    cmplwi 4, 0x76
    .4byte 0x41820014 # beq .L_80457484
    cmplwi 5, 0x70
    .4byte 0x4182000C # beq .L_80457484
    cmplwi 26, 0x6
    .4byte 0x40820018 # bne .L_80457498
L_80457484:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    addi 3, 6, 0x48
    li 4, 0x0
    bl fn_800263B4
    .4byte 0x480000F8 # b .L_8045758C
L_80457498:
    subis 3, 7, 0x4
    cmplwi 3, 0x57
    .4byte 0x41820060 # beq .L_80457500
    cmplwi 5, 0x3
    .4byte 0x41820058 # beq .L_80457500
    subi 0, 5, 0x15
    cmplwi 0, 0x1
    .4byte 0x4081004C # ble .L_80457500
    cmplwi 5, 0x61
    .4byte 0x41820044 # beq .L_80457500
    cmplwi 3, 0x30
    .4byte 0x4182003C # beq .L_80457500
    cmplwi 5, 0x8f
    .4byte 0x41820034 # beq .L_80457500
    subi 0, 5, 0x7
    cmplwi 0, 0x2
    .4byte 0x40810028 # ble .L_80457500
    subi 0, 3, 0x63
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80457500
    cmplwi 3, 0x88
    .4byte 0x41820014 # beq .L_80457500
    cmplwi 4, 0x1b
    .4byte 0x4182000C # beq .L_80457500
    cmplwi 4, 0x50
    .4byte 0x40820054 # bne .L_80457550
L_80457500:
    lfs 0, 0x114(1)
    .4byte 0xC0220EC8 # lfs f1, lbl_80543E68@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_80457520
    addi 3, 6, 0x48
    li 4, 0x0
    bl fn_800263B4
    .4byte 0x48000070 # b .L_8045758C
L_80457520:
    .4byte 0xC0220ED0 # lfs f1, lbl_80543E70@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810014 # ble .L_8045753C
    addi 3, 6, 0x48
    li 4, 0x0
    bl fn_800263B4
    .4byte 0x48000054 # b .L_8045758C
L_8045753C:
    fmr 1, 0
    addi 3, 6, 0x48
    li 4, 0x0
    bl fn_800263B4
    .4byte 0x48000040 # b .L_8045758C
L_80457550:
    lfs 0, 0x11c(1)
    addi 5, 1, 0xe4
    psq_l 1, 0x114(1), 0, 0
    mr 3, 29
    stfs 0, 0xec(1)
    mr 4, 28
    addi 6, 1, 0x18
    psq_st 1, 0x0(5), 0, 0
    stw 7, 0x18(1)
    bl fn_80455CA4
    .4byte 0x48000014 # b .L_8045758C
L_8045757C:
    .4byte 0xC0220EE4 # lfs f1, lbl_80543E84@sda21(r0)
    addi 3, 6, 0x48
    li 4, 0x0
    bl fn_800263B4
L_8045758C:
    .4byte 0xC0020EC8 # lfs f0, lbl_80543E68@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x4182003C # beq .L_804575D0
    .4byte 0xC0220EF8 # lfs f1, lbl_80543E98@sda21(r0)
    fcmpo cr0, 31, 1
    .4byte 0x40810018 # ble .L_804575B8
    lwz 3, 0x0(28)
    lfs 0, 0x3c(3)
    fdivs 0, 0, 1
    stfs 0, 0x3c(3)
    .4byte 0x4800001C # b .L_804575D0
L_804575B8:
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    lwz 3, 0x0(28)
    fadds 0, 0, 31
    lfs 1, 0x3c(3)
    fdivs 0, 1, 0
    stfs 0, 0x3c(3)
L_804575D0:
    lis 3, 0x4
    lwz 4, 0x0(30)
    addi 0, 3, 0xd8
    cmpw 4, 0
    .4byte 0x418200CC # beq .L_804576AC
    .4byte 0x40800068 # bge .L_8045764C
    addi 0, 3, 0x4e
    cmpw 4, 0
    .4byte 0x418200BC # beq .L_804576AC
    .4byte 0x40800028 # bge .L_8045761C
    addi 0, 3, 0x7
    cmpw 4, 0
    .4byte 0x418200AC # beq .L_804576AC
    .4byte 0x4080015C # bge .L_80457760
    lis 3, 0x3
    addi 0, 3, 0x37
    cmpw 4, 0
    .4byte 0x41820098 # beq .L_804576AC
    .4byte 0x48000148 # b .L_80457760
L_8045761C:
    addi 0, 3, 0x9c
    cmpw 4, 0
    .4byte 0x4182013C # beq .L_80457760
    .4byte 0x40800014 # bge .L_8045763C
    addi 0, 3, 0x9a
    cmpw 4, 0
    .4byte 0x40800118 # bge .L_8045774C
    .4byte 0x48000128 # b .L_80457760
L_8045763C:
    addi 0, 3, 0x9f
    cmpw 4, 0
    .4byte 0x4080011C # bge .L_80457760
    .4byte 0x480000EC # b .L_80457734
L_8045764C:
    lis 3, 0x5
    addi 0, 3, 0x2c
    cmpw 4, 0
    .4byte 0x41820054 # beq .L_804576AC
    .4byte 0x40800024 # bge .L_80457680
    addi 0, 3, 0x11
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_804576AC
    .4byte 0x408000F4 # bge .L_80457760
    addi 0, 3, 0xc
    cmpw 4, 0
    .4byte 0x41820034 # beq .L_804576AC
    .4byte 0x480000E4 # b .L_80457760
L_80457680:
    addi 0, 3, 0x70
    cmpw 4, 0
    .4byte 0x41820024 # beq .L_804576AC
    .4byte 0x408000D4 # bge .L_80457760
    addi 0, 3, 0x48
    cmpw 4, 0
    .4byte 0x408000C8 # bge .L_80457760
    addi 0, 3, 0x46
    cmpw 4, 0
    .4byte 0x40800008 # bge .L_804576AC
    .4byte 0x480000B8 # b .L_80457760
L_804576AC:
    .4byte 0x880D93B0 # lbz r0, lbl_8053AF70@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_804576CC
    .4byte 0x386D93B4 # li r3, lbl_8053AF74@sda21
    li 4, 0x0
    bl fn_80093338
    li 0, 0x1
    .4byte 0x980D93B0 # stb r0, lbl_8053AF70@sda21(r0)
L_804576CC:
    lis 3, 0x19
    .4byte 0x808D93B4 # lwz r4, lbl_8053AF74@sda21(r0)
    addi 0, 3, 0x660d
    lis 5, lbl_80539D44@ha
    mullw 3, 4, 0
    .4byte 0xC0820ED0 # lfs f4, lbl_80543E70@sda21(r0)
    lfs 0, lbl_80539D44@l(5)
    li 4, 0x0
    .4byte 0xC0220EF0 # lfs f1, lbl_80543E90@sda21(r0)
    fsubs 2, 4, 0
    addis 3, 3, 0x3c6f
    .4byte 0xC0620EF4 # lfs f3, lbl_80543E94@sda21(r0)
    subi 3, 3, 0xca1
    srwi 0, 3, 9
    .4byte 0x906D93B4 # stw r3, lbl_8053AF74@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lwz 3, 0x0(28)
    lfs 0, 0x8(1)
    addi 3, 3, 0x48
    fsubs 0, 0, 4
    fmuls 0, 1, 0
    fnmsubs 0, 3, 2, 0
    fadds 1, 4, 0
    bl fn_80026304
    .4byte 0x48000030 # b .L_80457760
L_80457734:
    lwz 3, 0x0(28)
    li 4, 0x0
    .4byte 0xC0220EFC # lfs f1, lbl_80543E9C@sda21(r0)
    addi 3, 3, 0x48
    bl fn_80026304
    .4byte 0x48000018 # b .L_80457760
L_8045774C:
    lwz 3, 0x0(28)
    li 4, 0x0
    .4byte 0xC0220F00 # lfs f1, lbl_80543EA0@sda21(r0)
    addi 3, 3, 0x48
    bl fn_80026304
L_80457760:
    cmplwi 31, 0x0
    .4byte 0x41820068 # beq .L_804577CC
    lwz 4, 0x0(28)
    .4byte 0xC0220EC8 # lfs f1, lbl_80543E68@sda21(r0)
    stfs 1, 0x24(4)
    .4byte 0x41820040 # beq .L_804577B4
    lfs 0, 0x24(4)
    lis 0, 0x4330
    .4byte 0xC0620ED0 # lfs f3, lbl_80543E70@sda21(r0)
    stw 31, 0x30(4)
    .4byte 0xC8220F08 # lfd f1, lbl_80543EA8@sda21(r0)
    fsubs 2, 3, 0
    lwz 3, 0x30(4)
    stw 0, 0x120(1)
    stw 3, 0x124(1)
    lfd 0, 0x120(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x28(4)
    stfs 3, 0x2c(4)
    .4byte 0x4800001C # b .L_804577CC
L_804577B4:
    .4byte 0xC0020ED0 # lfs f0, lbl_80543E70@sda21(r0)
    li 0, 0x0
    stfs 0, 0x24(4)
    stfs 1, 0x28(4)
    stw 0, 0x30(4)
    stfs 1, 0x2c(4)
L_804577CC:
    lwz 3, 0x0(30)
    subis 0, 3, 0x3
    cmplwi 0, 0x3
    .4byte 0x41820040 # beq .L_80457818
    cmplwi 0, 0x7
    .4byte 0x41820038 # beq .L_80457818
    cmplwi 0, 0x15
    .4byte 0x41820030 # beq .L_80457818
    cmplwi 0, 0x8
    .4byte 0x41820028 # beq .L_80457818
    cmplwi 0, 0x16
    .4byte 0x41820020 # beq .L_80457818
    cmplwi 0, 0x8f
    .4byte 0x41820018 # beq .L_80457818
    cmplwi 0, 0x9
    .4byte 0x41820010 # beq .L_80457818
    mr 3, 29
    mr 4, 28
    bl fn_80455F40
L_80457818:
    mr 3, 28
    .4byte 0x48000008 # b .L_80457824
L_80457820:
    li 3, 0x0
L_80457824:
    psq_l 31, 0x148(1), 0, 0
    lfd 31, 0x140(1)
    lmw 26, 0x128(1)
    lwz 0, 0x154(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_80457840:
    cmplwi 4, 0x0
    stw 4, 0x34(3)
    .4byte 0x41820028 # beq .L_80457870
    lfs 0, 0x0(4)
    addi 0, 3, 0x38
    stfs 0, 0x38(3)
    lfs 0, 0x4(4)
    stfs 0, 0x3c(3)
    lfs 0, 0x8(4)
    stfs 0, 0x40(3)
    stw 0, 0x14(3)
    blr
L_80457870:
    li 0, 0x0
    stw 0, 0x14(3)
    blr

