# fn_803B950C - helper (0xC8)
.section extab, "a"
.balign 4
.global etb_8000F66C
etb_8000F66C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000F66C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F36C
eti_8001F36C:
    .4byte fn_803B950C
    .4byte 0x000000C8
    .4byte etb_8000F66C
.size eti_8001F36C, 12

.text
.balign 4
.global fn_803B950C

fn_803B950C:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0xc8
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 4
    li 4, 0x0
    bl memset
    mr 3, 30
    li 4, 0x0
    li 5, 0x9c4
    bl memset
    li 3, 0x1
    li 0, 0x32
    stb 3, 0x5c(31)
    stb 0, 0x59(31)
    lwz 0, 0x8(31)
    ori 0, 0, 0x4
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    ori 0, 0, 0x40
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    ori 0, 0, 0x400
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    ori 0, 0, 0x4000
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    oris 0, 0, 0x4
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    oris 0, 0, 0x40
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    oris 0, 0, 0x400
    stw 0, 0x8(31)
    lwz 0, 0x8(31)
    oris 0, 0, 0x2000
    stw 0, 0x8(31)
    stb 3, 0x68(31)
    stb 3, 0x69(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

