# SAYA cluster, part 2/18 (Track A byte-match + overview - 1244B).
# draw()-related - builds transform matrices via the confirmed
# Nintendo SDK PSMTXScale/PSMTXTrans.
.section extab, "a"
.balign 4
.global etb_800079AC
etb_800079AC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800079AC, 8

.section extabindex, "a"
.balign 4
.global eti_80014800
eti_80014800:
    .4byte fn_801A3CFC
    .4byte 0x000004DC
    .4byte etb_800079AC
.size eti_80014800, 12

.text
.balign 4
.global fn_801A3CFC

fn_801A3CFC:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    mr 31, 3
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801A3D88
L_801A3D28:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801A3D88:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801A3D28
    .4byte 0x880D9008 # lbz r0, lbl_8053ABC8@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    extsb. 0, 0
    stw 7, 0x18(1)
    stw 6, 0x1c(1)
    stw 6, 0x20(1)
    stb 6, 0x24(1)
    stb 6, 0x25(1)
    stb 6, 0x26(1)
    stb 5, 0x27(1)
    stb 5, 0x28(1)
    stb 6, 0x29(1)
    stb 6, 0x2a(1)
    stb 6, 0x2b(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 5, 0x2e(1)
    stw 4, 0x30(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 3, 0x40(1)
    .4byte 0x40820008 # bne .L_801A3E0C
    .4byte 0x98AD9008 # stb r5, lbl_8053ABC8@sda21(r0)
L_801A3E0C:
    lwz 0, 0x8(1)
    lwz 3, 0xc(1)
    stw 0, 0x120(31)
    lwz 0, 0x10(1)
    stw 3, 0x124(31)
    lwz 3, 0x14(1)
    stw 0, 0x128(31)
    lbz 0, 0x18(1)
    stw 3, 0x12c(31)
    lbz 3, 0x19(1)
    stb 0, 0x130(31)
    lbz 0, 0x1a(1)
    stb 3, 0x131(31)
    lbz 3, 0x1b(1)
    stb 0, 0x132(31)
    lbz 0, 0x1c(1)
    stb 3, 0x133(31)
    lbz 3, 0x1d(1)
    stb 0, 0x134(31)
    lbz 0, 0x1e(1)
    stb 3, 0x135(31)
    lbz 3, 0x1f(1)
    stb 0, 0x136(31)
    lwz 0, 0x20(1)
    stb 3, 0x137(31)
    lbz 3, 0x24(1)
    stw 0, 0x138(31)
    lbz 0, 0x25(1)
    stb 3, 0x13c(31)
    lbz 3, 0x26(1)
    stb 0, 0x13d(31)
    lbz 0, 0x27(1)
    stb 3, 0x13e(31)
    lbz 3, 0x28(1)
    stb 0, 0x13f(31)
    lbz 0, 0x29(1)
    stb 3, 0x140(31)
    lbz 3, 0x2a(1)
    stb 0, 0x141(31)
    lbz 0, 0x2b(1)
    stb 3, 0x142(31)
    lbz 3, 0x2c(1)
    stb 0, 0x143(31)
    lbz 0, 0x2d(1)
    stb 3, 0x144(31)
    lbz 3, 0x2e(1)
    stb 0, 0x145(31)
    lwz 0, 0x30(1)
    stb 3, 0x146(31)
    lbz 3, 0x34(1)
    stw 0, 0x148(31)
    lbz 0, 0x35(1)
    stb 3, 0x14c(31)
    lbz 3, 0x36(1)
    stb 0, 0x14d(31)
    lwz 0, 0x38(1)
    stb 3, 0x14e(31)
    lwz 3, 0x3c(1)
    stw 0, 0x150(31)
    lwz 0, 0x40(1)
    stw 3, 0x154(31)
    stw 0, 0x158(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x0
    .4byte 0x41800144 # blt .L_801A4050
    .4byte 0xC002B630 # lfs f0, lbl_8053E5D0@sda21(r0)
    lfs 1, 0x48(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820134 # beq .L_801A4050
    lfs 2, 0x4c(31)
    li 0, 0x8
    lis 3, lbl_804C6640@ha
    stw 0, 0x38(1)
    fmr 3, 2
    addi 3, 3, lbl_804C6640@l
    bl PSMTXScale
    lis 3, lbl_804C6640@ha
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    addi 3, 3, lbl_804C6640@l
    lwz 5, 0x8(1)
    stfs 0, 0xc(3)
    lwz 4, 0xc(1)
    stfs 0, 0x1c(3)
    lwz 0, 0x10(1)
    stfs 0, 0x2c(3)
    lwz 6, 0x14(1)
    stw 5, 0x120(31)
    lbz 5, 0x18(1)
    stw 4, 0x124(31)
    lbz 4, 0x19(1)
    stw 0, 0x128(31)
    lbz 0, 0x1a(1)
    stw 6, 0x12c(31)
    lbz 6, 0x1b(1)
    stb 5, 0x130(31)
    lbz 5, 0x1c(1)
    stb 4, 0x131(31)
    lbz 4, 0x1d(1)
    stb 0, 0x132(31)
    lbz 0, 0x1e(1)
    stb 6, 0x133(31)
    lbz 6, 0x1f(1)
    stb 5, 0x134(31)
    lbz 5, 0x24(1)
    stb 4, 0x135(31)
    lbz 4, 0x25(1)
    stb 0, 0x136(31)
    lbz 0, 0x26(1)
    stb 6, 0x137(31)
    lbz 7, 0x27(1)
    stw 3, 0x138(31)
    lbz 6, 0x28(1)
    stb 5, 0x13c(31)
    lbz 5, 0x29(1)
    stb 4, 0x13d(31)
    lbz 4, 0x2a(1)
    stb 0, 0x13e(31)
    lbz 0, 0x2b(1)
    stb 7, 0x13f(31)
    lbz 7, 0x2c(1)
    stb 6, 0x140(31)
    lbz 6, 0x2d(1)
    stb 5, 0x141(31)
    lbz 5, 0x2e(1)
    stb 4, 0x142(31)
    lwz 4, 0x30(1)
    stb 0, 0x143(31)
    lbz 0, 0x34(1)
    stb 7, 0x144(31)
    lbz 7, 0x35(1)
    stb 6, 0x145(31)
    lbz 6, 0x36(1)
    stb 5, 0x146(31)
    lwz 5, 0x38(1)
    stw 4, 0x148(31)
    lwz 4, 0x3c(1)
    stb 0, 0x14c(31)
    lwz 0, 0x40(1)
    stb 7, 0x14d(31)
    stb 6, 0x14e(31)
    stw 5, 0x150(31)
    stw 4, 0x154(31)
    stw 3, 0x20(1)
    stw 0, 0x158(31)
    .4byte 0x48000178 # b .L_801A41C4
L_801A4050:
    lwz 0, 0xa4(31)
    cmpwi 0, 0x0
    .4byte 0x4182016C # beq .L_801A41C4
    .4byte 0xC022B634 # lfs f1, lbl_8053E5D4@sda21(r0)
    lis 3, lbl_804C6640@ha
    addi 3, 3, lbl_804C6640@l
    fmr 2, 1
    fmr 3, 1
    bl PSMTXTrans
    lwz 0, 0xa4(31)
    cmpwi 0, 0x64
    .4byte 0x40800048 # bge .L_801A40C4
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820024 # bne .L_801A40A8
    lis 3, lbl_804C6640@ha
    .4byte 0xC022B630 # lfs f1, lbl_8053E5D0@sda21(r0)
    addi 3, 3, lbl_804C6640@l
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    stfs 1, 0xc(3)
    stfs 0, 0x1c(3)
    stfs 0, 0x2c(3)
    .4byte 0x48000020 # b .L_801A40C4
L_801A40A8:
    lis 3, lbl_804C6640@ha
    .4byte 0xC022B638 # lfs f1, lbl_8053E5D8@sda21(r0)
    addi 3, 3, lbl_804C6640@l
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    stfs 1, 0xc(3)
    stfs 0, 0x1c(3)
    stfs 0, 0x2c(3)
L_801A40C4:
    lwz 4, 0x8(1)
    lis 3, lbl_804C6640@ha
    addi 0, 3, lbl_804C6640@l
    lwz 3, 0xc(1)
    stw 4, 0x120(31)
    lwz 4, 0x10(1)
    stw 3, 0x124(31)
    lwz 3, 0x14(1)
    stw 4, 0x128(31)
    lbz 4, 0x18(1)
    stw 3, 0x12c(31)
    lbz 3, 0x19(1)
    stb 4, 0x130(31)
    lbz 4, 0x1a(1)
    stb 3, 0x131(31)
    lbz 3, 0x1b(1)
    stb 4, 0x132(31)
    lbz 4, 0x1c(1)
    stb 3, 0x133(31)
    lbz 3, 0x1d(1)
    stb 4, 0x134(31)
    lbz 4, 0x1e(1)
    stb 3, 0x135(31)
    lbz 3, 0x1f(1)
    stb 4, 0x136(31)
    lbz 5, 0x24(1)
    stb 3, 0x137(31)
    lbz 4, 0x25(1)
    stw 0, 0x138(31)
    lbz 3, 0x26(1)
    stb 5, 0x13c(31)
    lbz 5, 0x27(1)
    stb 4, 0x13d(31)
    lbz 4, 0x28(1)
    stb 3, 0x13e(31)
    lbz 3, 0x29(1)
    stb 5, 0x13f(31)
    lbz 5, 0x2a(1)
    stb 4, 0x140(31)
    lbz 4, 0x2b(1)
    stb 3, 0x141(31)
    lbz 3, 0x2c(1)
    stb 5, 0x142(31)
    lbz 5, 0x2d(1)
    stb 4, 0x143(31)
    lbz 4, 0x2e(1)
    stb 3, 0x144(31)
    lwz 3, 0x30(1)
    stb 5, 0x145(31)
    lbz 5, 0x34(1)
    stb 4, 0x146(31)
    lbz 4, 0x35(1)
    stw 3, 0x148(31)
    lbz 3, 0x36(1)
    stb 5, 0x14c(31)
    lwz 5, 0x38(1)
    stb 4, 0x14d(31)
    lwz 4, 0x3c(1)
    stb 3, 0x14e(31)
    lwz 3, 0x40(1)
    stw 5, 0x150(31)
    stw 4, 0x154(31)
    stw 0, 0x20(1)
    stw 3, 0x158(31)
L_801A41C4:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

