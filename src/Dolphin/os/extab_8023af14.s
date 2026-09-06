# Fresh-gap-hunt batch 17 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000B080
etb_8000B080:
    .4byte 0x28480000
    .4byte 0x00000000
.size etb_8000B080, 8

.global etb_8000B088
etb_8000B088:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B088, 8

.global etb_8000B090
etb_8000B090:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B090, 8

.section extabindex, "a"
.balign 4
.global eti_800193CC
eti_800193CC:
    .4byte fn_8023AF14
    .4byte 0x000000F0
    .4byte etb_8000B080
.size eti_800193CC, 12

.global eti_800193D8
eti_800193D8:
    .4byte fn_8023B004
    .4byte 0x000000F0
    .4byte etb_8000B088
.size eti_800193D8, 12

.global eti_800193E4
eti_800193E4:
    .4byte fn_8023B0F4
    .4byte 0x0000009C
    .4byte etb_8000B090
.size eti_800193E4, 12

.text
.balign 4
.global fn_8023AF14
.global fn_8023B004
.global fn_8023B0F4

fn_8023AF14:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x28(1)
    fmr 31, 1
    stmw 27, 0x14(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023AF4C
    li 3, -0x1
    .4byte 0x480000A4 # b .L_8023AFEC
L_8023AF4C:
    li 30, 0x0
    li 31, 0x0
L_8023AF54:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023AF68
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023AFA4
L_8023AF68:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023AF78
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023AFA4
L_8023AF78:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023AF88
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023AFA4
L_8023AF88:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023AFA0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023AFA4
L_8023AFA0:
    lbz 0, 0xcac(4)
L_8023AFA4:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_8023AFD8
    addi 0, 31, 0x4
    fmr 1, 31
    lwzx 3, 3, 0
    mr 4, 27
    mr 5, 28
    mr 6, 29
    bl fn_802730D8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023AFD8
    mr 3, 30
    .4byte 0x48000018 # b .L_8023AFEC
L_8023AFD8:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF70 # blt .L_8023AF54
    li 3, -0x1
L_8023AFEC:
    lfd 31, 0x28(1)
    lmw 27, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8023B004:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023B03C
    li 3, -0x1
    .4byte 0x4800009C # b .L_8023B0D4
L_8023B03C:
    li 30, 0x0
    li 31, 0x0
L_8023B044:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023B058
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023B094
L_8023B058:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023B068
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023B094
L_8023B068:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023B078
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023B094
L_8023B078:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B090
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B094
L_8023B090:
    lbz 0, 0xcac(4)
L_8023B094:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8023B0C0
    addi 0, 31, 0x4
    mr 4, 28
    lwzx 3, 3, 0
    mr 5, 29
    bl fn_802732C4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8023B0C0
    mr 3, 30
    .4byte 0x48000018 # b .L_8023B0D4
L_8023B0C0:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF78 # blt .L_8023B044
    li 3, -0x1
L_8023B0D4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023B0F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x810D90D0 # lwz r8, lbl_8053AC90@sda21(r0)
    cmplwi 8, 0x0
    .4byte 0x4082000C # bne .L_8023B114
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023B180
L_8023B114:
    .4byte 0x4082000C # bne .L_8023B120
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B160
L_8023B120:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B130
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B160
L_8023B130:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B140
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B160
L_8023B140:
    slwi 0, 3, 2
    add 7, 8, 0
    lwz 7, 0x4(7)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8023B15C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B160
L_8023B15C:
    lbz 0, 0xcac(7)
L_8023B160:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023B17C
    slwi 0, 3, 2
    add 3, 8, 0
    lwz 3, 0x4(3)
    bl fn_802730D8
    .4byte 0x48000008 # b .L_8023B180
L_8023B17C:
    li 3, 0x0
L_8023B180:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

