# fn_8042829C - helper (0x114), calls into the fused bundle below.
.section extab, "a"
.balign 4
.global etb_80010784
etb_80010784:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010784, 8

.section extabindex, "a"
.balign 4
.global eti_8002059C
eti_8002059C:
    .4byte fn_8042829C
    .4byte 0x00000114
    .4byte etb_80010784
.size eti_8002059C, 12

.text
.balign 4
.global fn_8042829C

fn_8042829C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x800D92F8 # lwz r0, lbl_8053AEB8@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_804282FC
    bl fn_8042E22C
    clrlwi. 0, 3, 24
    .4byte 0x418200E0 # beq .L_8042839C
    li 3, 0x0
    bl fn_8042E204
    .4byte 0x880D92FC # lbz r0, lbl_8053AEBC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_804282DC
    li 3, 0x0
    .4byte 0x480000C8 # b .L_804283A0
L_804282DC:
    bl fn_80428448
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_804282F0
    li 3, 0x0
    .4byte 0x480000B4 # b .L_804283A0
L_804282F0:
    li 0, 0x1
    .4byte 0x900D92F8 # stw r0, lbl_8053AEB8@sda21(r0)
    .4byte 0x480000A4 # b .L_8042839C
L_804282FC:
    cmpwi 0, 0x1
    .4byte 0x40820070 # bne .L_80428370
    bl fn_80428C6C
    cmpwi 3, 0x1
    .4byte 0x4182001C # beq .L_80428328
    .4byte 0x4080008C # bge .L_8042839C
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_80428320
    .4byte 0x48000080 # b .L_8042839C
L_80428320:
    li 3, 0x0
    .4byte 0x4800007C # b .L_804283A0
L_80428328:
    lis 4, lbl_8052AAD0@ha
    lis 3, fn_80428CBC@ha
    addi 4, 4, lbl_8052AAD0@l
    li 0, 0x0
    li 5, 0x1
    stb 0, 0xa2(4)
    addi 3, 3, fn_80428CBC@l
    stb 5, 0xa1(4)
    stw 0, 0xf8(4)
    stw 0, 0xfc(4)
    stw 0, 0xf0(4)
    stw 0, 0xf4(4)
    bl fn_8004BA94
    .4byte 0x906D92D0 # stw r3, lbl_8053AE90@sda21(r0)
    bl fn_80428A28
    li 0, 0x2
    .4byte 0x900D92F8 # stw r0, lbl_8053AEB8@sda21(r0)
    .4byte 0x48000030 # b .L_8042839C
L_80428370:
    bl fn_804287DC
    cmpwi 3, 0x5
    .4byte 0x40820024 # bne .L_8042839C
    bl fn_80428978
    bl fn_80429400
    .4byte 0x806D92EC # lwz r3, lbl_8053AEAC@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80428394
    bl fn_804283B0
L_80428394:
    li 3, 0x0
    .4byte 0x48000008 # b .L_804283A0
L_8042839C:
    li 3, 0x1
L_804283A0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

