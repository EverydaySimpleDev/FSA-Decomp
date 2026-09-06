# fn_80391D44 - actor@lbl_804AF490: helper function (0x214)
# Calls the heavily-shared fn_80455770 (x3) and fn_8023BC38.
.section extab, "a"
.balign 4
.global etb_8000EF40
etb_8000EF40:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000EF40, 8

.section extabindex, "a"
.balign 4
.global eti_8001ED84
eti_8001ED84:
    .4byte fn_80391D44
    .4byte 0x00000214
    .4byte etb_8000EF40
.size eti_8001ED84, 12

.text
.balign 4
.global fn_80391D44

fn_80391D44:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    lwz 3, 0x238(3)
    bl fn_8023BC38
    lis 4, 0x8889
    subi 0, 4, 0x7777
    mulhw 0, 0, 3
    add 0, 0, 3
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 3, 0, 3
    addi 4, 3, 0x1
    cmpwi 4, 0xa
    .4byte 0x40800090 # bge .L_80391E14
    lwz 0, 0x4(31)
    lfs 2, 0xc(31)
    lfs 1, 0x10(31)
    cmpwi 0, 0x8
    lfs 0, 0x14(31)
    stfs 2, 0x68(1)
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    .4byte 0x4080019C # bge .L_80391F44
    lwz 8, 0x238(31)
    .4byte 0x38C201E4 # li r6, lbl_80543184@sda21
    .4byte 0x386201E0 # li r3, lbl_80543180@sda21
    .4byte 0x38A201DC # li r5, lbl_8054317C@sda21
    lbzx 7, 6, 8
    li 0, 0xff
    lbzx 6, 5, 8
    frsp 3, 0
    lbzx 3, 3, 8
    addi 5, 1, 0x38
    stb 6, 0x1c(1)
    addi 6, 1, 0x10
    psq_l 2, 0x68(1), 0, 0
    stb 3, 0x1d(1)
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x1e(1)
    .4byte 0xC02201EC # lfs f1, lbl_8054318C@sda21(r0)
    stb 0, 0x1f(1)
    lwz 0, 0x1c(1)
    psq_st 2, 0x5c(1), 0, 0
    stfs 0, 0x64(1)
    psq_st 2, 0x0(5), 0, 0
    stfs 3, 0x40(1)
    stw 0, 0x10(1)
    bl fn_80455770
    .4byte 0x48000134 # b .L_80391F44
L_80391E14:
    lfs 2, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    lfs 1, 0x10(31)
    fsubs 0, 2, 0
    stfs 2, 0x68(1)
    cmpwi 0, 0x8
    lfs 2, 0x14(31)
    stfs 1, 0x6c(1)
    stfs 2, 0x70(1)
    stfs 0, 0x68(1)
    .4byte 0x4080006C # bge .L_80391EAC
    lwz 6, 0x238(31)
    .4byte 0x38A201E4 # li r5, lbl_80543184@sda21
    .4byte 0x388201DC # li r4, lbl_8054317C@sda21
    .4byte 0x386201E0 # li r3, lbl_80543180@sda21
    lbzx 7, 5, 6
    li 0, 0xff
    lbzx 4, 4, 6
    frsp 3, 2
    lbzx 3, 3, 6
    addi 5, 1, 0x2c
    stb 4, 0x18(1)
    addi 6, 1, 0xc
    psq_l 0, 0x68(1), 0, 0
    stb 3, 0x19(1)
    li 4, 0x1
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x1a(1)
    .4byte 0xC02201EC # lfs f1, lbl_8054318C@sda21(r0)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    psq_st 0, 0x50(1), 0, 0
    stfs 2, 0x58(1)
    psq_st 0, 0x0(5), 0, 0
    stfs 3, 0x34(1)
    stw 0, 0xc(1)
    bl fn_80455770
L_80391EAC:
    lfs 2, 0xc(31)
    .4byte 0xC00201F0 # lfs f0, lbl_80543190@sda21(r0)
    lwz 0, 0x4(31)
    lfs 1, 0x10(31)
    fadds 0, 2, 0
    stfs 2, 0x68(1)
    cmpwi 0, 0x8
    lfs 2, 0x14(31)
    stfs 1, 0x6c(1)
    stfs 2, 0x70(1)
    stfs 0, 0x68(1)
    .4byte 0x4080006C # bge .L_80391F44
    lwz 6, 0x238(31)
    .4byte 0x38A201E4 # li r5, lbl_80543184@sda21
    .4byte 0x388201DC # li r4, lbl_8054317C@sda21
    .4byte 0x386201E0 # li r3, lbl_80543180@sda21
    lbzx 7, 5, 6
    li 0, 0xff
    lbzx 4, 4, 6
    frsp 3, 2
    lbzx 3, 3, 6
    addi 5, 1, 0x20
    stb 4, 0x14(1)
    addi 6, 1, 0x8
    psq_l 0, 0x68(1), 0, 0
    stb 3, 0x15(1)
    li 4, 0x0
    .4byte 0x806D9390 # lwz r3, lbl_8053AF50@sda21(r0)
    stb 7, 0x16(1)
    .4byte 0xC02201EC # lfs f1, lbl_8054318C@sda21(r0)
    stb 0, 0x17(1)
    lwz 0, 0x14(1)
    psq_st 0, 0x44(1), 0, 0
    stfs 2, 0x4c(1)
    psq_st 0, 0x0(5), 0, 0
    stfs 3, 0x28(1)
    stw 0, 0x8(1)
    bl fn_80455770
L_80391F44:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

