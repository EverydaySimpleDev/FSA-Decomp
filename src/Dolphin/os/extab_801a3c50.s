# SAYA (vtable lbl_804A2E30, ctor fn_80201010) cluster, part 1/18
# (172B). Small wrapper - calls fn_801F4694.
.section extab, "a"
.balign 4
.global etb_800079A4
etb_800079A4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800079A4, 8

.section extabindex, "a"
.balign 4
.global eti_800147F4
eti_800147F4:
    .4byte fn_801A3C50
    .4byte 0x000000AC
    .4byte etb_800079A4
.size eti_800147F4, 12

.text
.balign 4
.global fn_801A3C50

fn_801A3C50:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002B62C # lfs f0, lbl_8053E5CC@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC022B628 # lfs f1, lbl_8053E5C8@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    stw 0, 0x108(3)
    stw 31, 0x10c(3)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stw 31, 0xa0(3)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x48(30), 0, 0
    stfs 0, 0x50(3)
    stw 0, 0xd8(3)
    stw 0, 0xdc(3)
    stw 0, 0xa4(3)
    bl fn_801F4694
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x41800010 # blt .L_801A3CC4
    li 0, 0x1e
    stw 0, 0xa8(30)
    .4byte 0x4800000C # b .L_801A3CCC
L_801A3CC4:
    li 0, 0x23
    stw 0, 0xa8(30)
L_801A3CCC:
    .4byte 0x93ED8540 # stw r31, lbl_8053A100@sda21(r0)
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

