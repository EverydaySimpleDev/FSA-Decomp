# Fresh-gap-hunt batch 20 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008D0C
etb_80008D0C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008D0C, 8

.global etb_80008D14
etb_80008D14:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008D14, 8

.section extabindex, "a"
.balign 4
.global eti_8001636C
eti_8001636C:
    .4byte fn_801ED828
    .4byte 0x000000C8
    .4byte etb_80008D0C
.size eti_8001636C, 12

.global eti_80016378
eti_80016378:
    .4byte fn_801ED8F0
    .4byte 0x00000078
    .4byte etb_80008D14
.size eti_80016378, 12

.text
.balign 4
.global fn_801ED828
.global fn_801ED8F0

fn_801ED828:
    stwu 1, -0x20(1)
    mflr 0
    lhz 5, 0x0(3)
    stw 0, 0x24(1)
    cmplwi 5, 0x0
    .4byte 0x418200A4 # beq .L_801ED8E0
    li 0, 0x3
    li 6, 0x0
    li 3, 0x1e
    mtctr 0
L_801ED850:
    cmpw 3, 5
    .4byte 0x41810080 # bgt .L_801ED8D4
    addi 4, 6, 0x1
    mulli 0, 4, 0x3c
    cmpw 5, 0
    .4byte 0x41810070 # bgt .L_801ED8D4
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x8(1)
    li 5, 0xff
    lwz 3, 0x4(3)
    li 6, 0x0
    stw 0, 0x10(1)
    li 7, 0x1
    lhz 0, 0x6(3)
    li 8, 0x0
    lhz 3, 0x4(3)
    xoris 0, 0, 0x8000
    .4byte 0xC842C760 # lfd f2, lbl_8053F700@sda21(r0)
    xoris 3, 3, 0x8000
    stw 0, 0x14(1)
    .4byte 0xC082C754 # lfs f4, lbl_8053F6F4@sda21(r0)
    stw 3, 0xc(1)
    lfd 0, 0x10(1)
    lfd 1, 0x8(1)
    fsubs 0, 0, 2
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    fsubs 1, 1, 2
    .4byte 0xC062C770 # lfs f3, lbl_8053F710@sda21(r0)
    fmuls 2, 4, 0
    fmuls 1, 4, 1
    bl fn_8043CB24
    .4byte 0x48000010 # b .L_801ED8E0
L_801ED8D4:
    addi 3, 3, 0x3c
    addi 6, 6, 0x1
    .4byte 0x4200FF74 # bdnz .L_801ED850
L_801ED8E0:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801ED8F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lhz 4, 0x0(3)
    cmplwi 4, 0x0
    .4byte 0x41820048 # beq .L_801ED954
    lis 3, 0x8889
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 0, 0, 4
    .4byte 0x40820014 # bne .L_801ED948
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3f
    li 5, -0x1
    bl fn_80458880
L_801ED948:
    lhz 3, 0x0(31)
    subi 0, 3, 0x1
    sth 0, 0x0(31)
L_801ED954:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

