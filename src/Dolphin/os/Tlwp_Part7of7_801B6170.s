# TLWP cluster, part 7/7 (672B). setParams-like - calls the confirmed
# effect spawn fn_8013CC50 and the per-room config accessor
# GetRoomConfigRecord.
.section extab, "a"
.balign 4
.global etb_80007C3C
etb_80007C3C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007C3C, 8

.section extabindex, "a"
.balign 4
.global eti_80014BD8
eti_80014BD8:
    .4byte fn_801B6170
    .4byte 0x000002A0
    .4byte etb_80007C3C
.size eti_80014BD8, 12

.text
.balign 4
.global fn_801B6170

fn_801B6170:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC002BADC # lfs f0, lbl_8053EA7C@sda21(r0)
    stw 0, 0x44(1)
    li 0, 0x0
    .4byte 0xC062BAE0 # lfs f3, lbl_8053EA80@sda21(r0)
    stw 31, 0x3c(1)
    mr 31, 3
    .4byte 0xC042BAE4 # lfs f2, lbl_8053EA84@sda21(r0)
    stw 30, 0x38(1)
    .4byte 0xC022BA9C # lfs f1, lbl_8053EA3C@sda21(r0)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    stfs 0, 0x60(3)
    stfs 0, 0x64(3)
    .4byte 0xC002BA70 # lfs f0, lbl_8053EA10@sda21(r0)
    stfs 3, 0x68(3)
    stfs 3, 0x6c(3)
    stfs 2, 0x80(3)
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    stw 0, 0x294(3)
    stw 0, 0x298(3)
    stw 0, 0x29c(3)
    stw 0, 0x2a0(3)
    stw 0, 0x2a4(3)
    stw 0, 0x2a8(3)
    stw 0, 0x2ac(3)
    stw 0, 0x2b0(3)
    stw 0, 0x2b4(3)
    stw 0, 0x2b8(3)
    stw 0, 0x2bc(3)
    stw 0, 0x2c0(3)
    stw 0, 0x2c4(3)
    stw 0, 0x2c8(3)
    stw 0, 0x2cc(3)
    stw 0, 0x2d0(3)
    stw 0, 0x2d4(3)
    stw 0, 0x2d8(3)
    stw 0, 0x2dc(3)
    stw 0, 0x2e0(3)
    stw 0, 0x2e4(3)
    stw 0, 0x2e8(3)
    stw 0, 0x2ec(3)
    .4byte 0x980D9038 # stb r0, lbl_8053ABF8@sda21(r0)
    stfs 0, 0x25c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    stw 0, 0x250(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x254(3)
    lwz 0, 0x250(3)
    cmpwi 0, 0x0
    .4byte 0x408200EC # bne .L_801B6350
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x408200E0 # bne .L_801B6350
    bl GetRoomConfigRecord
    lis 4, lbl_804A37E0@ha
    lwz 6, 0xcc(3)
    lwz 5, 0xd0(3)
    addi 30, 4, lbl_804A37E0@l
    lwz 4, 0xd4(3)
    mr 29, 31
    lwz 0, 0xd8(3)
    li 28, 0x0
    stw 6, 0x14(1)
    lfs 7, 0xc(31)
    stw 5, 0x18(1)
    lfs 3, 0x14(1)
    stw 4, 0x1c(1)
    lfs 8, 0x18(1)
    stw 0, 0x20(1)
    lfs 1, 0x1c(1)
    stfs 7, 0x8(1)
    lfs 0, 0x20(1)
    fsubs 2, 1, 3
    lfs 6, 0x10(31)
    .4byte 0xC082BAE8 # lfs f4, lbl_8053EA88@sda21(r0)
    fsubs 0, 0, 8
    stfs 6, 0xc(1)
    fmadds 3, 4, 2, 3
    .4byte 0xC022BAEC # lfs f1, lbl_8053EA8C@sda21(r0)
    lfs 5, 0x14(31)
    fmadds 2, 4, 0, 8
    .4byte 0xC002BAF0 # lfs f0, lbl_8053EA90@sda21(r0)
    fadds 1, 7, 1
    stfs 3, 0x8(1)
    fadds 0, 6, 0
    stfs 2, 0xc(1)
    stfs 5, 0x10(1)
    stfs 7, 0x8(1)
    stfs 6, 0xc(1)
    stfs 5, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801B6310:
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    lhz 5, 0x0(30)
    li 6, 0x0
    .4byte 0xC022BA70 # lfs f1, lbl_8053EA10@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    stw 3, 0x2a0(29)
    cmpwi 28, 0x14
    addi 30, 30, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180FFC4 # blt .L_801B6310
L_801B6350:
    li 3, 0x0
    .4byte 0xC002BA78 # lfs f0, lbl_8053EA18@sda21(r0)
    stw 3, 0x24c(31)
    lfs 1, 0xc(31)
    stfs 1, 0x264(31)
    lfs 1, 0x10(31)
    stfs 1, 0x268(31)
    lfs 1, 0x14(31)
    stfs 1, 0x26c(31)
    lfs 1, 0xc(31)
    stfs 1, 0x270(31)
    lfs 1, 0x10(31)
    stfs 1, 0x274(31)
    lfs 1, 0x14(31)
    stfs 1, 0x278(31)
    lfs 1, 0xc(31)
    stfs 1, 0x27c(31)
    lfs 1, 0x10(31)
    stfs 1, 0x280(31)
    lfs 1, 0x14(31)
    stfs 1, 0x284(31)
    lfs 1, 0xc(31)
    stfs 1, 0x288(31)
    lfs 1, 0x10(31)
    stfs 1, 0x28c(31)
    lfs 1, 0x14(31)
    stfs 1, 0x290(31)
    stfs 0, 0x258(31)
    sth 3, 0x260(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B63E0
    li 0, 0x3
    .4byte 0x900D8558 # stw r0, lbl_8053A118@sda21(r0)
    stw 3, 0x230(31)
    .4byte 0x48000014 # b .L_801B63F0
L_801B63E0:
    .4byte 0xC002BAB8 # lfs f0, lbl_8053EA58@sda21(r0)
    li 0, 0x8
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
L_801B63F0:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

