# fn_803D5090 - helper (0x18C) - dispatches via __ptmf_scall through lbl_804B0168 (a PTMF table, previously mis-flagged as a candidate vtable)
.section extab, "a"
.balign 4
.global etb_8000FA1C
etb_8000FA1C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000FA1C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F8AC
eti_8001F8AC:
    .4byte fn_803D5090
    .4byte 0x0000018C
    .4byte etb_8000FA1C
.size eti_8001F8AC, 12

.text
.balign 4
.global fn_803D5090

fn_803D5090:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x2174(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803D50BC
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    lbz 4, 0x2170(31)
    bl fn_80431174
L_803D50BC:
    lbz 0, 0x216c(31)
    cmplwi 0, 0x0
    .4byte 0x41820070 # beq .L_803D5134
    cmplwi 0, 0x2
    .4byte 0x41820068 # beq .L_803D5134
    cmplwi 0, 0x1
    .4byte 0x41820060 # beq .L_803D5134
    cmplwi 0, 0x3
    .4byte 0x41820058 # beq .L_803D5134
    lis 3, lbl_8051C1A0@ha
    addi 3, 3, lbl_8051C1A0@l
    lbz 0, 0x1ff5(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803D50FC
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_803D5134
L_803D50FC:
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_803D5134
    lbz 0, 0x216e(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803D5134
    lbz 0, 0x1b4(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803D5134
    li 3, 0x5
    li 0, 0x1
    stb 3, 0x216c(31)
    stb 0, 0x2175(31)
L_803D5134:
    lbz 0, 0x216c(31)
    cmplwi 0, 0x18
    .4byte 0x40800020 # bge .L_803D515C
    mulli 5, 0, 0xc
    lis 4, lbl_804B0168@ha
    .4byte 0x806D91F8 # lwz r3, lbl_8053ADB8@sda21(r0)
    addi 0, 4, lbl_804B0168@l
    add 12, 0, 5
    bl __ptmf_scall
    nop
L_803D515C:
    mr 3, 31
    bl fn_803D4DB0
    lis 3, lbl_8051C1A0@ha
    li 0, 0x2
    addi 3, 3, lbl_8051C1A0@l
    stb 0, 0x1ff5(3)
    lbz 0, 0x2174(31)
    cmplwi 0, 0x2
    .4byte 0x40820048 # bne .L_803D51C4
    lbz 3, 0x2173(31)
    cmplwi 3, 0x48
    .4byte 0x40810010 # ble .L_803D5198
    li 0, 0x50
    stb 0, 0x2173(31)
    .4byte 0x4800000C # b .L_803D51A0
L_803D5198:
    addi 0, 3, 0x8
    stb 0, 0x2173(31)
L_803D51A0:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804317AC
    cmpwi 3, 0x0
    .4byte 0x4182005C # beq .L_803D5208
    li 3, 0x50
    li 0, 0x1
    stb 3, 0x2173(31)
    stb 0, 0x2174(31)
    .4byte 0x48000048 # b .L_803D5208
L_803D51C4:
    cmplwi 0, 0x3
    .4byte 0x40820040 # bne .L_803D5208
    lbz 3, 0x2173(31)
    cmplwi 3, 0x8
    .4byte 0x40800010 # bge .L_803D51E4
    li 0, 0x0
    stb 0, 0x2173(31)
    .4byte 0x4800000C # b .L_803D51EC
L_803D51E4:
    subi 0, 3, 0x8
    stb 0, 0x2173(31)
L_803D51EC:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5208
    li 0, 0x0
    stb 0, 0x2173(31)
    stb 0, 0x2174(31)
L_803D5208:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

