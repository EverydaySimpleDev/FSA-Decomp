# fn_803B89D8 - TLK2: vtable-slot function (0x78)
.section extab, "a"
.balign 4
.global etb_8000F644
etb_8000F644:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000F644, 8

.section extabindex, "a"
.balign 4
.global eti_8001F330
eti_8001F330:
    .4byte fn_803B89D8
    .4byte 0x00000078
    .4byte etb_8000F644
.size eti_8001F330, 12

.text
.balign 4
.global fn_803B89D8

fn_803B89D8:
    stwu 1, -0x10(1)
    mflr 0
    mr 7, 3
    lis 3, 0xff00
    stw 0, 0x14(1)
    addi 0, 3, 0xff
    addi 6, 1, 0xc
    lwz 4, 0x90(7)
    stw 0, 0x8(1)
    clrlwi 3, 4, 16
    stw 3, 0x234(7)
    lwz 3, 0x90(7)
    srwi 3, 3, 28
    stb 3, 0x23c(7)
    lwz 3, 0x90(7)
    extrwi 3, 3, 12, 4
    stw 3, 0x238(7)
    stw 0, 0xc(1)
    lfs 3, 0x14(7)
    lwz 3, 0x234(7)
    fmr 4, 3
    lwz 4, 0x238(7)
    lbz 5, 0x23c(7)
    lfs 1, 0xc(7)
    lfs 2, 0x10(7)
    bl fn_8037F2FC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

