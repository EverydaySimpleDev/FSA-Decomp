# Fresh-gap-hunt batch 24 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008D74
etb_80008D74:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008D74, 8

.section extabindex, "a"
.balign 4
.global eti_80016408
eti_80016408:
    .4byte fn_801EF510
    .4byte 0x00000064
    .4byte etb_80008D74
.size eti_80016408, 12

.text
.balign 4
.global fn_801EF510

fn_801EF510:
    stwu 1, -0x50(1)
    mflr 0
    lis 4, lbl_80469FC8@ha
    stw 0, 0x54(1)
    addi 4, 4, lbl_80469FC8@l
    li 0, 0x8
    addi 6, 1, 0x4
    subi 5, 4, 0x4
    mtctr 0
L_801EF534:
    lwz 4, 0x4(5)
    lwzu 0, 0x8(5)
    stw 4, 0x4(6)
    stwu 0, 0x8(6)
    .4byte 0x4200FFF0 # bdnz .L_801EF534
    lwz 0, 0x4(5)
    lis 4, 0x4e55
    addi 4, 4, 0x4c4c
    stw 0, 0x4(6)
    mr 5, 4
    addi 6, 1, 0x8
    bl fn_801F2DB4
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

