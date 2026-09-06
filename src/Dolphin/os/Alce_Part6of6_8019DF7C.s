# ALCE cluster, part 6/6 (448B). setParams - branches on the spawn
# parameter (this->0x238) across a small range (0/1/4/other), defaulting
# state (this->0x230/0x248); for 2 of the branches, looks up a per-room
# record via lbl_8053AD70 + fn_8037AE00 and sets a global one-shot flag
# lbl_8053ABB0.
.section extab, "a"
.balign 4
.global etb_800078D4
etb_800078D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800078D4, 8

.section extabindex, "a"
.balign 4
.global eti_800146BC
eti_800146BC:
    .4byte fn_8019DF7C
    .4byte 0x000001C0
    .4byte etb_800078D4
.size eti_800146BC, 12

.text
.balign 4
.global fn_8019DF7C

fn_8019DF7C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804C1E30@ha
    .4byte 0xC002B4A0 # lfs f0, lbl_8053E440@sda21(r0)
    stw 0, 0x14(1)
    addi 4, 4, lbl_804C1E30@l
    li 0, 0x80
    stw 31, 0xc(1)
    mr 31, 3
    addi 5, 4, 0x0
    addi 6, 4, 0x3000
    addi 4, 4, 0x4000
    mtctr 0
L_8019DFB0:
    stfs 0, 0x8(5)
    li 0, -0x1
    li 3, 0x0
    stfs 0, 0x4(5)
    stfs 0, 0x0(5)
    stfs 0, 0x14(5)
    stfs 0, 0x10(5)
    stfs 0, 0xc(5)
    stfs 0, 0x20(5)
    stfs 0, 0x1c(5)
    stfs 0, 0x18(5)
    stfs 0, 0x2c(5)
    stfs 0, 0x28(5)
    stfs 0, 0x24(5)
    stfs 0, 0x38(5)
    stfs 0, 0x34(5)
    stfs 0, 0x30(5)
    stfs 0, 0x44(5)
    stw 0, 0x0(6)
    stb 3, 0x0(4)
    stfs 0, 0x40(5)
    stw 0, 0x4(6)
    stb 3, 0x1(4)
    stfs 0, 0x3c(5)
    stw 0, 0x8(6)
    stb 3, 0x2(4)
    stfs 0, 0x50(5)
    stw 0, 0xc(6)
    stb 3, 0x3(4)
    stfs 0, 0x4c(5)
    stw 0, 0x10(6)
    stb 3, 0x4(4)
    stfs 0, 0x48(5)
    stw 0, 0x14(6)
    stb 3, 0x5(4)
    stfs 0, 0x5c(5)
    stw 0, 0x18(6)
    stb 3, 0x6(4)
    stfs 0, 0x58(5)
    stfs 0, 0x54(5)
    addi 5, 5, 0x60
    stw 0, 0x1c(6)
    addi 6, 6, 0x20
    stb 3, 0x7(4)
    addi 4, 4, 0x8
    .4byte 0x4200FF4C # bdnz .L_8019DFB0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 26
    stw 0, 0x234(31)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    stw 3, 0x254(31)
    stw 3, 0x258(31)
    stw 3, 0x25c(31)
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
    stw 3, 0x244(31)
    stw 3, 0x260(31)
    stw 3, 0x264(31)
    .4byte 0x880D8FF0 # lbz r0, lbl_8053ABB0@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8019E0C0
    stb 3, 0x11c(31)
    .4byte 0x4800006C # b .L_8019E128
L_8019E0C0:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8019E0F0
    .4byte 0x40800010 # bge .L_8019E0DC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8019E0E8
    .4byte 0x48000050 # b .L_8019E128
L_8019E0DC:
    cmpwi 0, 0x4
    .4byte 0x40800048 # bge .L_8019E128
    .4byte 0x48000028 # b .L_8019E10C
L_8019E0E8:
    stw 3, 0x230(31)
    .4byte 0x4800003C # b .L_8019E128
L_8019E0F0:
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    li 0, 0x1
    .4byte 0x980D8FF0 # stb r0, lbl_8053ABB0@sda21(r0)
    stw 0, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000020 # b .L_8019E128
L_8019E10C:
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    li 3, 0x1
    li 0, 0x3
    .4byte 0x986D8FF0 # stb r3, lbl_8053ABB0@sda21(r0)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
L_8019E128:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

