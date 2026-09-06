# Fresh-gap-hunt batch 18 landing (4 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B0A0
etb_8000B0A0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B0A0, 8

.global etb_8000B0A8
etb_8000B0A8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B0A8, 8

.section extabindex, "a"
.balign 4
.global eti_800193FC
eti_800193FC:
    .4byte fn_8023B484
    .4byte 0x0000009C
    .4byte etb_8000B0A0
.size eti_800193FC, 12

.global eti_80019408
eti_80019408:
    .4byte fn_8023B630
    .4byte 0x0000009C
    .4byte etb_8000B0A8
.size eti_80019408, 12

.text
.balign 4
.global fn_8023B484
.global fn_8023B520
.global fn_8023B5B4
.global fn_8023B630

fn_8023B484:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B4A4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023B510
L_8023B4A4:
    .4byte 0x4082000C # bne .L_8023B4B0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B4F0
L_8023B4B0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B4C0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B4F0
L_8023B4C0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B4D0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B4F0
L_8023B4D0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B4EC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B4F0
L_8023B4EC:
    lbz 0, 0xcac(4)
L_8023B4F0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023B50C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802577E0
    .4byte 0x48000008 # b .L_8023B510
L_8023B50C:
    li 3, 0x0
L_8023B510:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023B520:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B534
    li 3, 0x0
    blr
L_8023B534:
    .4byte 0x4082000C # bne .L_8023B540
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B580
L_8023B540:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B550
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B580
L_8023B550:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B560
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B580
L_8023B560:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B57C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B580
L_8023B57C:
    lbz 0, 0xcac(4)
L_8023B580:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8023B590
    li 3, 0x0
    blr
L_8023B590:
    slwi 0, 3, 2
    li 3, 0x8
    add 4, 5, 0
    lwz 4, 0x4(4)
    lbz 0, 0xb9b(4)
    cmplwi 0, 0x0
    beqlr
    li 3, 0x10
    blr

fn_8023B5B4:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B5C8
    li 3, 0x0
    blr
L_8023B5C8:
    .4byte 0x4082000C # bne .L_8023B5D4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B614
L_8023B5D4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B5E4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B614
L_8023B5E4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B5F4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B614
L_8023B5F4:
    slwi 0, 3, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023B610
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B614
L_8023B610:
    lbz 0, 0xcac(3)
L_8023B614:
    clrlwi 4, 0, 24
    li 0, 0x4
    neg 3, 4
    or 3, 3, 4
    srawi 3, 3, 31
    and 3, 0, 3
    blr

fn_8023B630:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B650
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023B6BC
L_8023B650:
    .4byte 0x4082000C # bne .L_8023B65C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B69C
L_8023B65C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B66C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B69C
L_8023B66C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B67C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B69C
L_8023B67C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B698
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B69C
L_8023B698:
    lbz 0, 0xcac(4)
L_8023B69C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023B6B8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80272184
    .4byte 0x48000008 # b .L_8023B6BC
L_8023B6B8:
    li 3, 0x0
L_8023B6BC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

