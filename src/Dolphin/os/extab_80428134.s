# fn_80428134 - helper (0xC8), calls into the fused bundle below.
.section extab, "a"
.balign 4
.global etb_80010774
etb_80010774:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010774, 8

.section extabindex, "a"
.balign 4
.global eti_80020584
eti_80020584:
    .4byte fn_80428134
    .4byte 0x000000C8
    .4byte etb_80010774
.size eti_80020584, 12

.text
.balign 4
.global fn_80428134

fn_80428134:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    .4byte 0x880D92FD # lbz r0, lbl_8053AEBD@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8042815C
    bl fn_804287DC
    cmpwi 3, 0x5
    .4byte 0x4082000C # bne .L_80428164
L_8042815C:
    li 3, 0x0
    .4byte 0x48000088 # b .L_804281E8
L_80428164:
    lis 3, lbl_8052AAD0@ha
    addi 3, 3, lbl_8052AAD0@l
    lbz 0, 0xa0(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_804281A4
    lwz 4, 0xf8(3)
    cmplwi 4, 0x0
    .4byte 0x41820024 # beq .L_804281A4
    lwz 4, 0xc(4)
    lwz 0, 0xc0(3)
    lwz 3, 0x50(3)
    add 4, 4, 0
    divwu 0, 4, 3
    mullw 0, 0, 3
    subf 31, 0, 4
    .4byte 0x4800000C # b .L_804281AC
L_804281A4:
    li 3, -0x1
    .4byte 0x48000040 # b .L_804281E8
L_804281AC:
    bl fn_804287EC
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_804281C0
    li 3, 0x0
    .4byte 0x4800002C # b .L_804281E8
L_804281C0:
    cmplwi 3, 0x1
    .4byte 0x4181000C # bgt .L_804281D0
    li 3, 0x0
    .4byte 0x4800001C # b .L_804281E8
L_804281D0:
    subi 4, 3, 0x1
    subfc 0, 4, 31
    addze 3, 4
    subf 0, 31, 4
    subf 3, 3, 4
    andc 3, 0, 3
L_804281E8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

