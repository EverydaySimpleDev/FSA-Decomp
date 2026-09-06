# GRVE cluster, part 3/4 (Track A byte-match + overview - 920B).
# update()-related. Uses fn_801F0D20/fn_801F0E34 plus an extensive set
# of unfamiliar helpers (fn_80230CFC/8023513C/80239558/80239914/
# 8023AF14/8029E050/802A3948) not chased further.
.section extab, "a"
.balign 4
.global etb_8000CE9C
etb_8000CE9C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CE9C, 8

.section extabindex, "a"
.balign 4
.global eti_8001BF64
eti_8001BF64:
    .4byte fn_802DFD90
    .4byte 0x00000398
    .4byte etb_8000CE9C
.size eti_8001BF64, 12

.text
.balign 4
.global fn_802DFD90

fn_802DFD90:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x4080001C # bge .L_802DFDD0
    .4byte 0xC042E1EC # lfs f2, lbl_8054118C@sda21(r0)
    lfs 1, 0xc(31)
    lfs 0, 0x10(31)
    fadds 1, 2, 1
    fadds 5, 2, 0
    .4byte 0x4800000C # b .L_802DFDD8
L_802DFDD0:
    lfs 1, 0xc(31)
    lfs 5, 0x10(31)
L_802DFDD8:
    lfs 0, 0x60(31)
    addi 3, 1, 0x8
    stfs 0, 0x8(1)
    fadds 3, 0, 1
    lfs 0, 0x64(31)
    stfs 0, 0xc(1)
    fadds 2, 0, 5
    lfs 0, 0x68(31)
    stfs 0, 0x10(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(31)
    fadds 0, 4, 5
    stfs 4, 0x14(1)
    stfs 3, 0x8(1)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    lwz 5, 0x198(31)
    bl fn_80239558
    lwz 0, 0x230(31)
    mr 30, 3
    cmpwi 0, 0x2
    .4byte 0x418201A4 # beq .L_802DFFE8
    .4byte 0x40800014 # bge .L_802DFE5C
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802DFE6C
    .4byte 0x408000E0 # bge .L_802DFF34
    .4byte 0x480002B4 # b .L_802E010C
L_802DFE5C:
    cmpwi 0, 0x4
    .4byte 0x4182028C # beq .L_802E00EC
    .4byte 0x408002A8 # bge .L_802E010C
    .4byte 0x480001C8 # b .L_802E0030
L_802DFE6C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    .4byte 0xC022E1F0 # lfs f1, lbl_80541190@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    cmpwi 30, 0x0
    mr 29, 3
    .4byte 0x4180002C # blt .L_802DFEB4
    mr 3, 30
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x4082001C # bne .L_802DFEB4
    li 0, 0x1
    .4byte 0xC002E1F0 # lfs f0, lbl_80541190@sda21(r0)
    stw 0, 0x230(31)
    stw 30, 0x238(31)
    stfs 0, 0x23c(31)
    .4byte 0x4800025C # b .L_802E010C
L_802DFEB4:
    cmpwi 29, 0x0
    .4byte 0x41800254 # blt .L_802E010C
    mr 3, 29
    bl fn_8023513C
    clrlwi. 0, 3, 24
    .4byte 0x41820244 # beq .L_802E010C
    mr 3, 29
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x40820234 # bne .L_802E010C
    stw 29, 0x238(31)
    li 0, 0x2
    .4byte 0xC062E1F0 # lfs f3, lbl_80541190@sda21(r0)
    .4byte 0xC042E1EC # lfs f2, lbl_8054118C@sda21(r0)
    stfs 3, 0x23c(31)
    .4byte 0xC002E1F4 # lfs f0, lbl_80541194@sda21(r0)
    stw 0, 0x230(31)
    psq_l 4, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    psq_st 4, 0x240(31), 0, 0
    stfs 1, 0x248(31)
    lfs 1, 0xc(31)
    fadds 1, 1, 2
    stfs 1, 0xc(31)
    lfs 1, 0x10(31)
    fadds 1, 1, 2
    stfs 1, 0x10(31)
    stfs 0, 0x60(31)
    stfs 0, 0x64(31)
    stfs 2, 0x68(31)
    stfs 3, 0x6c(31)
    .4byte 0x480001DC # b .L_802E010C
L_802DFF34:
    cmpwi 30, 0x0
    .4byte 0x41800090 # blt .L_802DFFC8
    lwz 0, 0x238(31)
    cmpw 0, 30
    .4byte 0x40820084 # bne .L_802DFFC8
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x40820078 # bne .L_802DFFC8
    lfs 2, 0x23c(31)
    .4byte 0xC022E1E8 # lfs f1, lbl_80541188@sda21(r0)
    .4byte 0xC002E1F8 # lfs f0, lbl_80541198@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x23c(31)
    lfs 1, 0x23c(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820198 # bne .L_802E010C
    li 0, 0x2
    .4byte 0xC062E1EC # lfs f3, lbl_8054118C@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0xC022E1F4 # lfs f1, lbl_80541194@sda21(r0)
    psq_l 4, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC002E1F0 # lfs f0, lbl_80541190@sda21(r0)
    psq_st 4, 0x240(31), 0, 0
    stfs 2, 0x248(31)
    lfs 2, 0xc(31)
    fadds 2, 2, 3
    stfs 2, 0xc(31)
    lfs 2, 0x10(31)
    fadds 2, 2, 3
    stfs 2, 0x10(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 3, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000148 # b .L_802E010C
L_802DFFC8:
    lwz 0, 0x238(31)
    cmpw 0, 30
    .4byte 0x4182013C # beq .L_802E010C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000128 # b .L_802E010C
L_802DFFE8:
    lwz 0, 0x234(31)
    lis 3, lbl_8046E9B0@ha
    addi 4, 3, lbl_8046E9B0@l
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    slwi 0, 0, 3
    lwz 5, 0x4(31)
    add 9, 4, 0
    lhzx 6, 4, 0
    lhz 7, 0x2(9)
    addi 4, 31, 0x240
    lhz 8, 0x4(9)
    lhz 9, 0x6(9)
    bl fn_8029E050
    li 0, 0x3
    .4byte 0xC002E1F0 # lfs f0, lbl_80541190@sda21(r0)
    stw 0, 0x230(31)
    stfs 0, 0x23c(31)
    .4byte 0x480000E0 # b .L_802E010C
L_802E0030:
    lfs 0, 0x23c(31)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlwi. 0, 0, 30
    .4byte 0x40820018 # bne .L_802E005C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0xe
    li 5, 0x0
    bl fn_801F0E34
L_802E005C:
    lfs 0, 0x23c(31)
    .4byte 0xC842E200 # lfd f2, lbl_805411A0@sda21(r0)
    .4byte 0xC022E1EC # lfs f1, lbl_8054118C@sda21(r0)
    fadd 0, 0, 2
    frsp 0, 0
    stfs 0, 0x23c(31)
    lfs 0, 0x10(31)
    fsub 0, 0, 2
    frsp 0, 0
    stfs 0, 0x10(31)
    lfs 0, 0x23c(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x4082007C # bne .L_802E010C
    lfs 0, 0x10(31)
    addi 4, 31, 0x240
    li 7, 0x266
    fsubs 0, 0, 1
    stfs 0, 0x244(31)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 5, 0x238(31)
    lwz 6, 0x4(31)
    bl fn_802A3948
    lfs 1, 0x240(31)
    addi 4, 31, 0x240
    .4byte 0xC002E1EC # lfs f0, lbl_8054118C@sda21(r0)
    li 7, 0x269
    fadds 0, 1, 0
    stfs 0, 0x240(31)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 5, 0x238(31)
    lwz 6, 0x4(31)
    bl fn_802A3948
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000024 # b .L_802E010C
L_802E00EC:
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802E0104
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
L_802E0104:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802E010C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

