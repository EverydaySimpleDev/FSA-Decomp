# Unnamed actor cluster, part 4/5 (340B). update()-related - uses the
# confirmed generic FourCC actor dispatcher fn_801F9484,
# fn_801F666C/SpatialRegistry_GetBase/fn_8022ADE4, plus unfamiliar fn_8043A450.
.section extab, "a"
.balign 4
.global etb_80007BDC
etb_80007BDC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007BDC, 8

.section extabindex, "a"
.balign 4
.global eti_80014B48
eti_80014B48:
    .4byte fn_801B3B7C
    .4byte 0x00000154
    .4byte etb_80007BDC
.size eti_80014B48, 12

.text
.balign 4
.global fn_801B3B7C

fn_801B3B7C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC022BA14 # lfs f1, lbl_8053E9B4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x5
    .4byte 0xC002B9A4 # lfs f0, lbl_8053E944@sda21(r0)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x988D9030 # stb r4, lbl_8053ABF0@sda21(r0)
    stfs 1, 0x80(3)
    .4byte 0xC022BA18 # lfs f1, lbl_8053E9B8@sda21(r0)
    stfs 0, 0x84(3)
    .4byte 0xC002B9AC # lfs f0, lbl_8053E94C@sda21(r0)
    stfs 1, 0x88(3)
    stfs 0, 0x8c(3)
    stw 4, 0x30c(3)
    stw 4, 0x310(3)
    stw 4, 0x314(3)
    stw 4, 0x318(3)
    stw 4, 0x31c(3)
    stw 4, 0x300(3)
    stw 4, 0x304(3)
    stw 4, 0x308(3)
    lwz 3, 0x90(3)
    clrlwi 3, 3, 29
    stw 3, 0x330(30)
    stw 0, 0x328(30)
    bl SpatialRegistry_GetBase
    lis 4, 0x4c49
    lwz 5, 0x4(30)
    addi 4, 4, 0x4d54
    addi 6, 30, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x324(30)
    li 0, 0x1
    stb 0, 0x11e(30)
    bl fn_8022ADE4
    lwz 31, 0x324(30)
    cmpwi 31, 0x0
    .4byte 0x41800030 # blt .L_801B3C5C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_801B3C5C
    lwz 4, 0x328(30)
    lwz 0, 0x198(30)
    .4byte 0xC002B9D0 # lfs f0, lbl_8053E970@sda21(r0)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    stw 4, 0x24c(3)
L_801B3C5C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x6
    li 5, 0x3
    bl fn_8043A450
    li 0, 0x1
    .4byte 0xC002B994 # lfs f0, lbl_8053E934@sda21(r0)
    stw 0, 0x320(30)
    li 0, 0x0
    stfs 0, 0x33c(30)
    stfs 0, 0x338(30)
    stfs 0, 0x334(30)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    lfs 0, 0x10(30)
    stfs 0, 0x340(30)
    .4byte 0x900D902C # stw r0, lbl_8053ABEC@sda21(r0)
    stb 0, 0x2fc(30)
    stb 0, 0x32d(30)
    stb 0, 0x32c(30)
    stb 0, 0x1a8(30)
    .4byte 0x980D9028 # stb r0, lbl_8053ABE8@sda21(r0)
    stw 0, 0x2f8(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

