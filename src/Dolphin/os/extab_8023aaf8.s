# Fresh-gap-hunt batch 19 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B058
etb_8000B058:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B058, 8

.global etb_8000B060
etb_8000B060:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B060, 8

.section extabindex, "a"
.balign 4
.global eti_80019390
eti_80019390:
    .4byte fn_8023AAF8
    .4byte 0x0000009C
    .4byte etb_8000B058
.size eti_80019390, 12

.global eti_8001939C
eti_8001939C:
    .4byte fn_8023AB94
    .4byte 0x000000E0
    .4byte etb_8000B060
.size eti_8001939C, 12

.text
.balign 4
.global fn_8023AAF8
.global fn_8023AB94

fn_8023AAF8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x810D90D0 # lwz r8, lbl_8053AC90@sda21(r0)
    cmplwi 8, 0x0
    .4byte 0x4082000C # bne .L_8023AB18
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023AB84
L_8023AB18:
    .4byte 0x4082000C # bne .L_8023AB24
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023AB64
L_8023AB24:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023AB34
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023AB64
L_8023AB34:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023AB44
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023AB64
L_8023AB44:
    slwi 0, 3, 2
    add 7, 8, 0
    lwz 7, 0x4(7)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8023AB60
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023AB64
L_8023AB60:
    lbz 0, 0xcac(7)
L_8023AB64:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023AB80
    slwi 0, 3, 2
    add 3, 8, 0
    lwz 3, 0x4(3)
    bl fn_80256F44
    .4byte 0x48000008 # b .L_8023AB84
L_8023AB80:
    li 3, 0x0
L_8023AB84:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023AB94:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023ABC4
    li 3, -0x1
    .4byte 0x480000A0 # b .L_8023AC60
L_8023ABC4:
    li 30, 0x0
    li 31, 0x0
L_8023ABCC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023ABE0
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023AC1C
L_8023ABE0:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023ABF0
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023AC1C
L_8023ABF0:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023AC00
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023AC1C
L_8023AC00:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023AC18
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023AC1C
L_8023AC18:
    lbz 0, 0xcac(4)
L_8023AC1C:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8023AC4C
    addi 0, 31, 0x4
    mr 4, 27
    lwzx 3, 3, 0
    mr 5, 28
    mr 6, 29
    bl fn_802570BC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023AC4C
    mr 3, 30
    .4byte 0x48000018 # b .L_8023AC60
L_8023AC4C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_8023ABCC
    li 3, -0x1
L_8023AC60:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

