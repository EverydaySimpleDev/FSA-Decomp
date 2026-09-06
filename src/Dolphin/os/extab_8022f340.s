# Fresh-gap-hunt batch 24 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000AA98
etb_8000AA98:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA98, 8

.section extabindex, "a"
.balign 4
.global eti_80018AF0
eti_80018AF0:
    .4byte fn_8022F340
    .4byte 0x0000009C
    .4byte etb_8000AA98
.size eti_80018AF0, 12

.text
.balign 4
.global fn_8022F340

fn_8022F340:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F360
    li 3, -0x1
    .4byte 0x48000070 # b .L_8022F3CC
L_8022F360:
    .4byte 0x4082000C # bne .L_8022F36C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F3AC
L_8022F36C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F37C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F3AC
L_8022F37C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F38C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F3AC
L_8022F38C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022F3A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F3AC
L_8022F3A8:
    lbz 0, 0xcac(4)
L_8022F3AC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F3C8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80240628
    .4byte 0x48000008 # b .L_8022F3CC
L_8022F3C8:
    li 3, -0x1
L_8022F3CC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

