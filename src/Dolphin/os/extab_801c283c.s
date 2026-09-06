.section extab, "a"
.balign 4
.global etb_80008078
etb_80008078:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008078, 8

.global etb_80008080
etb_80008080:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008080, 8

.global etb_80008088
etb_80008088:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008088, 8

.global etb_80008090
etb_80008090:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008090, 8

.global etb_80008098
etb_80008098:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008098, 8

.global etb_800080A0
etb_800080A0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800080A0, 8

.section extabindex, "a"
.balign 4
.global eti_80015214
eti_80015214:
    .4byte fn_801C283C
    .4byte 0x00000124
    .4byte etb_80008078
.size eti_80015214, 12

.global eti_80015220
eti_80015220:
    .4byte fn_801C2960
    .4byte 0x00000124
    .4byte etb_80008080
.size eti_80015220, 12

.global eti_8001522C
eti_8001522C:
    .4byte fn_801C2A84
    .4byte 0x00000170
    .4byte etb_80008088
.size eti_8001522C, 12

.global eti_80015238
eti_80015238:
    .4byte fn_801C2BF4
    .4byte 0x0000014C
    .4byte etb_80008090
.size eti_80015238, 12

.global eti_80015244
eti_80015244:
    .4byte fn_801C2D84
    .4byte 0x000000EC
    .4byte etb_80008098
.size eti_80015244, 12

.global eti_80015250
eti_80015250:
    .4byte fn_801C2E70
    .4byte 0x00000064
    .4byte etb_800080A0
.size eti_80015250, 12

.text
.balign 4
.global fn_801C283C
.global fn_801C2960
.global fn_801C2A84
.global fn_801C2BF4
.global fn_801C2D40
.global fn_801C2D84
.global fn_801C2E70

fn_801C283C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0xd
    .4byte 0x418200F4 # beq .L_801C294C
    .4byte 0x40800018 # bge .L_801C2874
    cmpwi 0, 0x3
    .4byte 0x40800020 # bge .L_801C2884
    cmpwi 0, 0x0
    .4byte 0x408000E0 # bge .L_801C294C
    .4byte 0x4800008C # b .L_801C28FC
L_801C2874:
    cmpwi 0, 0x17
    .4byte 0x418200D4 # beq .L_801C294C
    .4byte 0x48000080 # b .L_801C28FC
    .4byte 0x480000CC # b .L_801C294C
L_801C2884:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182009C # beq .L_801C2928
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801C28B4
    li 0, 0x1
    .4byte 0xC002BE64 # lfs f0, lbl_8053EE04@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801C28B4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0xc(31)
    lwz 4, 0x24(3)
    lfs 2, 0x10(31)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_801C2928
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stw 3, 0x7f8(4)
    stfs 1, 0x7fc(4)
    stfs 2, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000030 # b .L_801C2928
L_801C28FC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x179(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801C2928
    li 0, 0x1
    stb 0, 0x178(3)
L_801C2928:
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x8
    lfs 0, 0x14(31)
    psq_st 1, 0x14(1), 0, 0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    stfs 0, 0x1c(1)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    bl fn_8043E7CC
L_801C294C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801C2960:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    rlwinm 0, 0, 0, 7, 5
    stw 0, 0x230(3)
    lwz 0, 0x248(3)
    cmpwi 0, 0x21
    .4byte 0x4182002C # beq .L_801C29B4
    .4byte 0x408000E4 # bge .L_801C2A70
    cmpwi 0, 0x10
    .4byte 0x41820008 # beq .L_801C299C
    .4byte 0x480000D8 # b .L_801C2A70
L_801C299C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 8, 8
    .4byte 0x408200CC # bne .L_801C2A70
    addi 3, 31, 0x4ec
    bl fn_80214AF8
    .4byte 0x480000C0 # b .L_801C2A70
L_801C29B4:
    bl fn_8021D020
    clrlwi. 0, 3, 24
    .4byte 0x418200A8 # beq .L_801C2A64
    lwz 0, 0x564(31)
    cmpwi 0, 0x2
    .4byte 0x4182007C # beq .L_801C2A44
    .4byte 0x40800014 # bge .L_801C29E0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801C29EC
    .4byte 0x4080005C # bge .L_801C2A34
    .4byte 0x48000094 # b .L_801C2A70
L_801C29E0:
    cmpwi 0, 0x4
    .4byte 0x4080008C # bge .L_801C2A70
    .4byte 0x4800006C # b .L_801C2A54
L_801C29EC:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x40820014 # bne .L_801C2A08
    mr 3, 31
    li 4, 0x29
    bl fn_801C3B7C
    .4byte 0x4800006C # b .L_801C2A70
L_801C2A08:
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x41820014 # beq .L_801C2A24
    mr 3, 31
    li 4, 0x1
    bl fn_8021CDE4
    .4byte 0x48000050 # b .L_801C2A70
L_801C2A24:
    mr 3, 31
    li 4, 0x2
    bl fn_8021CDE4
    .4byte 0x48000040 # b .L_801C2A70
L_801C2A34:
    mr 3, 31
    li 4, 0x2
    bl fn_8021CDE4
    .4byte 0x48000030 # b .L_801C2A70
L_801C2A44:
    mr 3, 31
    li 4, 0x3
    bl fn_8021CDE4
    .4byte 0x48000020 # b .L_801C2A70
L_801C2A54:
    mr 3, 31
    li 4, 0x29
    bl fn_801C3B7C
    .4byte 0x48000010 # b .L_801C2A70
L_801C2A64:
    mr 3, 31
    li 4, 0x1b
    bl fn_801C3B7C
L_801C2A70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C2A84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x2f
    .4byte 0x4182001C # beq .L_801C2ABC
    .4byte 0x4080002C # bge .L_801C2AD0
    cmpwi 0, 0x1b
    .4byte 0x40800024 # bge .L_801C2AD0
    cmpwi 0, 0x17
    .4byte 0x40800008 # bge .L_801C2ABC
    .4byte 0x48000018 # b .L_801C2AD0
L_801C2ABC:
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000114 # b .L_801C2BE0
L_801C2AD0:
    lwz 4, 0x230(31)
    clrlwi 3, 4, 29
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_801C2AF4
    mr 3, 31
    bl fn_801CE32C
    .4byte 0x48000014 # b .L_801C2B04
L_801C2AF4:
    rlwinm. 0, 4, 0, 30, 30
    .4byte 0x4082000C # bne .L_801C2B04
    mr 3, 31
    bl fn_801CE5D4
L_801C2B04:
    addi 3, 31, 0x4ec
    bl fn_80214CE4
    addi 3, 31, 0x4ec
    bl fn_80214994
    lwz 0, 0x524(31)
    clrlwi. 0, 0, 31
    .4byte 0x418200C4 # beq .L_801C2BE0
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x408200B4 # bne .L_801C2BE0
    lfs 1, 0x14(31)
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200A0 # bne .L_801C2BE0
    lwz 0, 0x248(31)
    cmpwi 0, 0x17
    .4byte 0x40800028 # bge .L_801C2B74
    cmpwi 0, 0xa
    .4byte 0x41820038 # beq .L_801C2B8C
    .4byte 0x40800010 # bge .L_801C2B68
    cmpwi 0, 0x0
    .4byte 0x40800080 # bge .L_801C2BE0
    .4byte 0x48000028 # b .L_801C2B8C
L_801C2B68:
    cmpwi 0, 0xf
    .4byte 0x40800020 # bge .L_801C2B8C
    .4byte 0x48000070 # b .L_801C2BE0
L_801C2B74:
    cmpwi 0, 0x29
    .4byte 0x41820068 # beq .L_801C2BE0
    .4byte 0x40800010 # bge .L_801C2B8C
    cmpwi 0, 0x1b
    .4byte 0x40800008 # bge .L_801C2B8C
    .4byte 0x48000058 # b .L_801C2BE0
L_801C2B8C:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x40820044 # bne .L_801C2BE0
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0xad
    .4byte 0x4182002C # beq .L_801C2BE0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 5, 0x4(31)
    li 6, 0xad
    bl fn_802A381C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x8a
    li 5, 0x0
    bl fn_801F0E34
L_801C2BE0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C2BF4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x14
    .4byte 0x41820020 # beq .L_801C2C28
    .4byte 0x40800010 # bge .L_801C2C1C
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_801C2C28
    .4byte 0x48000024 # b .L_801C2C3C
L_801C2C1C:
    cmpwi 0, 0x1e
    .4byte 0x41820008 # beq .L_801C2C28
    .4byte 0x48000018 # b .L_801C2C3C
L_801C2C28:
    lfs 1, 0x44(3)
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(3)
    .4byte 0x480000F8 # b .L_801C2D30
L_801C2C3C:
    lfs 2, 0x254(3)
    cmpwi 0, 0x20
    fmr 3, 2
    .4byte 0x41820014 # beq .L_801C2C5C
    .4byte 0x40800078 # bge .L_801C2CC4
    cmpwi 0, 0x11
    .4byte 0x4182003C # beq .L_801C2C90
    .4byte 0x4800006C # b .L_801C2CC4
L_801C2C5C:
    lfs 1, 0x14(3)
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200B4 # bne .L_801C2D20
    lfs 0, 0x3c(3)
    .4byte 0xC022BE6C # lfs f1, lbl_8053EE0C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(3)
    lfs 0, 0x40(3)
    fmuls 0, 0, 1
    stfs 0, 0x40(3)
    .4byte 0x48000094 # b .L_801C2D20
L_801C2C90:
    lha 0, 0x33c(3)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    add 4, 4, 0
    lfs 1, 0x4(4)
    fmuls 0, 0, 2
    stfs 0, 0x3c(3)
    lfs 0, 0x254(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(3)
    .4byte 0x48000060 # b .L_801C2D20
L_801C2CC4:
    cmpwi 0, 0x1c
    .4byte 0x4082002C # bne .L_801C2CF4
    lbz 0, 0x34d(3)
    cmpwi 0, 0x8
    .4byte 0x41820014 # beq .L_801C2CE8
    .4byte 0x40800018 # bge .L_801C2CF0
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801C2CE8
    .4byte 0x4800000C # b .L_801C2CF0
L_801C2CE8:
    .4byte 0xC062BE68 # lfs f3, lbl_8053EE08@sda21(r0)
    .4byte 0x48000008 # b .L_801C2CF4
L_801C2CF0:
    .4byte 0xC062BE70 # lfs f3, lbl_8053EE10@sda21(r0)
L_801C2CF4:
    lha 0, 0x33c(3)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    add 4, 4, 0
    lfs 2, 0x4(4)
    fmuls 1, 0, 3
    fmuls 0, 2, 3
    stfs 1, 0x3c(3)
    stfs 0, 0x40(3)
L_801C2D20:
    lwz 12, 0x0(3)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
L_801C2D30:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C2D40:
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_801C2D58
    lwz 0, 0xf8(3)
    cmpwi 0, 0x2
    beqlr
L_801C2D58:
    lfs 1, 0x44(3)
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    .4byte 0xC042C01C # lfs f2, lbl_8053EFBC@sda21(r0)
    fadds 0, 1, 0
    fneg 1, 2
    stfs 0, 0x44(3)
    lfs 0, 0x44(3)
    fcmpo cr0, 0, 1
    bgelr
    stfs 1, 0x44(3)
    blr

fn_801C2D84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801CE2BC
    lbz 3, 0x59c(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801C2DB0
    subi 0, 3, 0x1
    stb 0, 0x59c(31)
L_801C2DB0:
    lwz 0, 0x564(31)
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_801C2DF0
    lhz 0, 0x59e(31)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_801C2DF0
    lwz 0, 0x248(31)
    cmpwi 0, 0x2e
    .4byte 0x41820014 # beq .L_801C2DE4
    .4byte 0x4080001C # bge .L_801C2DF0
    cmpwi 0, 0x10
    .4byte 0x41820008 # beq .L_801C2DE4
    .4byte 0x48000010 # b .L_801C2DF0
L_801C2DE4:
    lhz 3, 0x59e(31)
    subi 0, 3, 0x1
    sth 0, 0x59e(31)
L_801C2DF0:
    lwz 0, 0x248(31)
    cmpwi 0, 0x27
    .4byte 0x40800064 # bge .L_801C2E5C
    cmpwi 0, 0x24
    .4byte 0x40800008 # bge .L_801C2E08
    .4byte 0x48000058 # b .L_801C2E5C
L_801C2E08:
    lwz 0, 0x340(31)
    cmpwi 0, 0x9
    .4byte 0x4082004C # bne .L_801C2E5C
    lbz 0, 0x34d(31)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_801C2E5C
    lwz 0, 0x350(31)
    cmpwi 0, 0x5
    .4byte 0x40820034 # bne .L_801C2E5C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc4
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc5
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0x4ec
    bl fn_80214578
L_801C2E5C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C2E70:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x98(3)
    stb 0, 0x34c(3)
    lwz 0, 0x248(3)
    cmpwi 0, 0x13
    .4byte 0x40820010 # bne .L_801C2EA4
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x41810018 # bgt .L_801C2EB8
L_801C2EA4:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x4082000C # bne .L_801C2EB8
    addi 3, 31, 0x340
    bl fn_800FE8C0
L_801C2EB8:
    addi 3, 31, 0x528
    bl fn_80216A8C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

