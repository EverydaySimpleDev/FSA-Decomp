# fn_803BA980 - helper (0x9C)
.section extab, "a"
.balign 4
.global etb_8000F6E4
etb_8000F6E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F6E4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F420
eti_8001F420:
    .4byte fn_803BA980
    .4byte 0x0000009C
    .4byte etb_8000F6E4
.size eti_8001F420, 12

.text
.balign 4
.global fn_803BA980

fn_803BA980:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80053128
    li 4, 0x0
    li 0, 0x2
    stb 4, 0x1ff4(31)
    addi 3, 31, 0x1fd4
    stw 4, 0x1fcc(31)
    stw 4, 0x1fd0(31)
    stb 0, 0x1ff5(31)
    bl OSInitMutex
    addi 3, 31, 0x1fec
    bl OSInitCond
    bl OSGetCurrentThread
    bl OSGetThreadPriority
    lis 6, lbl_80511E60@ha
    lis 5, lbl_80510E60@ha
    lis 4, fn_803BAA64@ha
    addi 8, 3, 0x1
    addi 0, 6, lbl_80511E60@l
    addi 5, 5, lbl_80510E60@l
    addi 6, 5, 0x1000
    addi 4, 4, fn_803BAA64@l
    mr 3, 0
    li 5, 0x0
    li 7, 0x1000
    li 9, 0x1
    bl OSCreateThread
    lis 3, lbl_80511E60@ha
    addi 3, 3, lbl_80511E60@l
    bl OSResumeThread
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

