# fn_80393BF4 - actor@lbl_804AF490: main update()-ish function (0x31C)
# Extreme player-validity density (fn_8023E724 x14), plus fn_802DE814 and
# room-notify fn_801F0D20. Track A: byte-match verified, structural
# overview per the large/complex-function exception - given the heavy
# player-tracking and the earlier reward-spawn calls in this cluster, this
# actor is plausibly a multi-player reward/puzzle-completion set-piece.
.section extab, "a"
.balign 4
.global etb_8000EF70
etb_8000EF70:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000EF70, 8

.section extabindex, "a"
.balign 4
.global eti_8001EDCC
eti_8001EDCC:
    .4byte fn_80393BF4
    .4byte 0x0000031C
    .4byte etb_8000EF70
.size eti_8001EDCC, 12

.text
.balign 4
.global fn_80393BF4

fn_80393BF4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stfd 30, 0x10(1)
    psq_st 30, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    lwz 0, 0x90(3)
    mr 30, 3
    clrlwi 0, 0, 16
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 8, 8
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    srwi 0, 0, 24
    stw 0, 0x234(3)
    lwz 3, 0x238(3)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fsubs 0, 0, 1
    stfs 0, 0x248(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 2, 0x4(3)
    lis 3, lbl_80529DEC@ha
    lfs 1, 0x10(30)
    addi 3, 3, lbl_80529DEC@l
    .4byte 0xC0020228 # lfs f0, lbl_805431C8@sda21(r0)
    addi 31, 3, 0x1f4
    fsubs 1, 1, 2
    fsubs 0, 1, 0
    stfs 0, 0x24c(30)
    lwz 0, 0x23c(30)
    stw 0, 0x240(30)
    lwz 0, 0x238(30)
    slwi 0, 0, 1
    lhzx 0, 31, 0
    stw 0, 0x244(30)
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80393CB0
    cmpwi 0, 0x4
    .4byte 0x408200A0 # bne .L_80393D4C
L_80393CB0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80393CCC
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80393CD4
L_80393CCC:
    li 0, 0x0
    stb 0, 0x11c(30)
L_80393CD4:
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80393CEC
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000014 # b .L_80393CFC
L_80393CEC:
    cmpwi 0, 0x64
    .4byte 0x4180000C # blt .L_80393CFC
    li 0, 0x64
    stw 0, 0x23c(30)
L_80393CFC:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80393D20
    .4byte 0xC022021C # lfs f1, lbl_805431BC@sda21(r0)
    .4byte 0xC002022C # lfs f0, lbl_805431CC@sda21(r0)
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 1, 0x44(30)
    .4byte 0x48000014 # b .L_80393D30
L_80393D20:
    .4byte 0xC002021C # lfs f0, lbl_805431BC@sda21(r0)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
L_80393D30:
    li 0, 0x5a
    stw 0, 0x230(30)
    lwz 0, 0x238(30)
    lwz 3, 0x240(30)
    slwi 0, 0, 1
    sthx 3, 31, 0
    .4byte 0x480001A0 # b .L_80393EE8
L_80393D4C:
    cmpwi 0, 0x1
    .4byte 0x40820030 # bne .L_80393D80
    .4byte 0xC022021C # lfs f1, lbl_805431BC@sda21(r0)
    li 0, 0x5a
    .4byte 0xC0020220 # lfs f0, lbl_805431C0@sda21(r0)
    mr 3, 30
    stfs 1, 0x3c(30)
    li 4, 0x41
    stfs 0, 0x40(30)
    stfs 1, 0x44(30)
    stw 0, 0x230(30)
    bl fn_801F0D20
    .4byte 0x4800016C # b .L_80393EE8
L_80393D80:
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_80393DBC
    lwz 0, 0x23c(30)
    cmpwi 0, 0xc
    .4byte 0x4180000C # blt .L_80393D9C
    li 0, 0x0
    stb 0, 0x11c(30)
L_80393D9C:
    .4byte 0xC022021C # lfs f1, lbl_805431BC@sda21(r0)
    li 0, 0x5a
    .4byte 0xC002022C # lfs f0, lbl_805431CC@sda21(r0)
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 1, 0x44(30)
    stw 0, 0x230(30)
    .4byte 0x48000130 # b .L_80393EE8
L_80393DBC:
    cmpwi 0, 0x3
    .4byte 0x40820048 # bne .L_80393E08
    li 0, 0x257
    stw 0, 0x230(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 30, 0x8(3)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC0020224 # lfs f0, lbl_805431C4@sda21(r0)
    lwz 3, 0x238(30)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    stfs 31, 0x10(30)
    stfs 30, 0x14(30)
    .4byte 0x480000E4 # b .L_80393EE8
L_80393E08:
    cmpwi 0, 0x5
    .4byte 0x40820048 # bne .L_80393E54
    li 0, 0x1a3
    stw 0, 0x230(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 31, 0x8(3)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC0020224 # lfs f0, lbl_805431C4@sda21(r0)
    lwz 3, 0x238(30)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    stfs 30, 0x10(30)
    stfs 31, 0x14(30)
    .4byte 0x48000098 # b .L_80393EE8
L_80393E54:
    cmpwi 0, 0x6
    .4byte 0x40820048 # bne .L_80393EA0
    li 0, 0x12b
    stw 0, 0x230(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 31, 0x8(3)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC0020224 # lfs f0, lbl_805431C4@sda21(r0)
    lwz 3, 0x238(30)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    stfs 30, 0x10(30)
    stfs 31, 0x14(30)
    .4byte 0x4800004C # b .L_80393EE8
L_80393EA0:
    cmpwi 0, 0x7
    .4byte 0x40820044 # bne .L_80393EE8
    li 0, 0xb3
    stw 0, 0x230(30)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 31, 0x8(3)
    lwz 3, 0x238(30)
    bl fn_8023E724
    lfs 1, 0x4(3)
    .4byte 0xC0020224 # lfs f0, lbl_805431C4@sda21(r0)
    lwz 3, 0x238(30)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    stfs 30, 0x10(30)
    stfs 31, 0x14(30)
L_80393EE8:
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    psq_l 30, 0x18(1), 0, 0
    lfd 30, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x34(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

