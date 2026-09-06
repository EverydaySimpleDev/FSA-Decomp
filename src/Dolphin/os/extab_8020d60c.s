# Fresh-gap-hunt batch 23 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80009F20
etb_80009F20:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009F20, 8

.section extabindex, "a"
.balign 4
.global eti_800179F8
eti_800179F8:
    .4byte fn_8020D60C
    .4byte 0x00000050
    .4byte etb_80009F20
.size eti_800179F8, 12

.text
.balign 4
.global fn_8020D60C
.global fn_8020D65C
.global fn_8020D660
.global fn_8020D690

fn_8020D60C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, fn_8020D65C@ha
    li 5, 0x0
    stw 0, 0x14(1)
    addi 4, 4, fn_8020D65C@l
    li 6, 0x18
    li 7, 0x50
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x4
    bl __construct_array
    li 0, 0x0
    mr 3, 31
    stw 0, 0x0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020D65C:
    blr

fn_8020D660:
    lbz 0, 0x0(3)
    li 5, 0x0
    xori 0, 0, 0x1
    stb 0, 0x0(3)
    lbz 0, 0x1(3)
    xori 0, 0, 0x1
    stb 0, 0x1(3)
    lbz 0, 0x0(3)
    mulli 4, 0, 0x784
    addi 0, 4, 0x4
    stwx 5, 3, 0
    blr

fn_8020D690:
    li 4, 0x0
    li 0, 0x1
    stb 4, 0x0(3)
    stb 0, 0x1(3)
    stw 4, 0x4(3)
    stw 4, 0x788(3)
    blr

