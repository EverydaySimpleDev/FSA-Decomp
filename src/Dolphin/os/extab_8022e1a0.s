# Fresh-gap-hunt batch 17 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000AA58
etb_8000AA58:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA58, 8

.global etb_8000AA60
etb_8000AA60:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA60, 8

.global etb_8000AA68
etb_8000AA68:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000AA68, 8

.global etb_8000AA70
etb_8000AA70:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AA70, 8

.section extabindex, "a"
.balign 4
.global eti_80018A90
eti_80018A90:
    .4byte fn_8022E1A0
    .4byte 0x0000009C
    .4byte etb_8000AA58
.size eti_80018A90, 12

.global eti_80018A9C
eti_80018A9C:
    .4byte fn_8022E23C
    .4byte 0x0000009C
    .4byte etb_8000AA60
.size eti_80018A9C, 12

.global eti_80018AA8
eti_80018AA8:
    .4byte fn_8022E2D8
    .4byte 0x000000C4
    .4byte etb_8000AA68
.size eti_80018AA8, 12

.global eti_80018AB4
eti_80018AB4:
    .4byte fn_8022E39C
    .4byte 0x0000009C
    .4byte etb_8000AA70
.size eti_80018AB4, 12

.text
.balign 4
.global fn_8022E1A0
.global fn_8022E23C
.global fn_8022E2D8
.global fn_8022E39C

fn_8022E1A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022E1C0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022E22C
L_8022E1C0:
    .4byte 0x4082000C # bne .L_8022E1CC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E20C
L_8022E1CC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E1DC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E20C
L_8022E1DC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E1EC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E20C
L_8022E1EC:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E208
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E20C
L_8022E208:
    lbz 0, 0xcac(5)
L_8022E20C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022E228
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8025AA24
    .4byte 0x48000008 # b .L_8022E22C
L_8022E228:
    li 3, 0x0
L_8022E22C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022E23C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022E25C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022E2C8
L_8022E25C:
    .4byte 0x4082000C # bne .L_8022E268
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E2A8
L_8022E268:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E278
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E2A8
L_8022E278:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E288
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E2A8
L_8022E288:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E2A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E2A8
L_8022E2A4:
    lbz 0, 0xcac(5)
L_8022E2A8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022E2C4
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8025AA8C
    .4byte 0x48000008 # b .L_8022E2C8
L_8022E2C4:
    li 3, 0x0
L_8022E2C8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022E2D8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_8022E380
    li 30, 0x0
    li 31, 0x0
L_8022E308:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E31C
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022E358
L_8022E31C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022E32C
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022E358
L_8022E32C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022E33C
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022E358
L_8022E33C:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E354
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E358
L_8022E354:
    lbz 0, 0xcac(4)
L_8022E358:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022E370
    addi 0, 31, 0x4
    mr 4, 29
    lwzx 3, 3, 0
    bl ClaimField_0x11f4
L_8022E370:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF8C # blt .L_8022E308
L_8022E380:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022E39C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022E3BC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022E428
L_8022E3BC:
    .4byte 0x4082000C # bne .L_8022E3C8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E408
L_8022E3C8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022E3D8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E408
L_8022E3D8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022E3E8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E408
L_8022E3E8:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E404
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E408
L_8022E404:
    lbz 0, 0xcac(5)
L_8022E408:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022E424
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl ClaimField_0x11f4
    .4byte 0x48000008 # b .L_8022E428
L_8022E424:
    li 3, 0x0
L_8022E428:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

