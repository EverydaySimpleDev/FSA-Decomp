# fn_803B93E8 - helper (0xDC)
.section extab, "a"
.balign 4
.global etb_8000F65C
etb_8000F65C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000F65C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F354
eti_8001F354:
    .4byte fn_803B93E8
    .4byte 0x000000DC
    .4byte etb_8000F65C
.size eti_8001F354, 12

.text
.balign 4
.global fn_803B93E8

fn_803B93E8:
    stwu 1, -0xaa0(1)
    mflr 0
    mulli 7, 6, 0xc8
    stw 0, 0xaa4(1)
    addi 3, 1, 0x8
    stw 31, 0xa9c(1)
    mulli 0, 6, 0x9c4
    stw 30, 0xa98(1)
    add 30, 4, 7
    add 31, 5, 0
    li 4, 0x0
    li 5, 0xc8
    bl memset
    addi 3, 1, 0xd0
    li 4, 0x0
    li 5, 0x9c4
    bl memset
    lwz 0, 0x10(1)
    li 10, 0x1
    li 9, 0x32
    stb 10, 0x64(1)
    ori 0, 0, 0x4
    mr 3, 30
    stw 0, 0x10(1)
    ori 0, 0, 0x40
    ori 6, 0, 0x400
    addi 4, 1, 0x8
    stw 0, 0x10(1)
    ori 0, 6, 0x4000
    oris 8, 0, 0x4
    li 5, 0xc8
    stw 6, 0x10(1)
    oris 7, 8, 0x40
    oris 6, 7, 0x400
    stw 0, 0x10(1)
    oris 0, 6, 0x2000
    stw 8, 0x10(1)
    stw 7, 0x10(1)
    stw 6, 0x10(1)
    stb 9, 0x61(1)
    stw 0, 0x10(1)
    stb 10, 0x70(1)
    stb 10, 0x71(1)
    bl memcpy
    mr 3, 31
    addi 4, 1, 0xd0
    li 5, 0x9c4
    bl memcpy
    lwz 0, 0xaa4(1)
    li 3, 0x0
    lwz 31, 0xa9c(1)
    lwz 30, 0xa98(1)
    mtlr 0
    addi 1, 1, 0xaa0
    blr

