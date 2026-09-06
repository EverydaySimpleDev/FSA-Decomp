.text
.balign 4
.global memmove
.global fn_8006B054
.global fn_8006B100
.global fn_8006B1C0
.global fn_8006B268

memmove:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 5, 0x20
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    xor 6, 31, 4
    cntlzw 0, 6
    slw 0, 31, 0
    srwi 7, 0, 31
    .4byte 0x41800040 # blt .L_8006AFF0
    clrlwi. 0, 6, 30
    .4byte 0x4182001C # beq .L_8006AFD4
    cmpwi 7, 0x0
    .4byte 0x4082000C # bne .L_8006AFCC
    bl fn_8006B100
    .4byte 0x48000020 # b .L_8006AFE8
L_8006AFCC:
    bl fn_8006B054
    .4byte 0x48000018 # b .L_8006AFE8
L_8006AFD4:
    cmpwi 7, 0x0
    .4byte 0x4082000C # bne .L_8006AFE4
    bl fn_8006B268
    .4byte 0x48000008 # b .L_8006AFE8
L_8006AFE4:
    bl fn_8006B1C0
L_8006AFE8:
    mr 3, 31
    .4byte 0x48000054 # b .L_8006B040
L_8006AFF0:
    cmpwi 7, 0x0
    .4byte 0x40820028 # bne .L_8006B01C
    subi 3, 4, 0x1
    subi 4, 31, 0x1
    addi 5, 5, 0x1
    .4byte 0x4800000C # b .L_8006B010
L_8006B008:
    lbzu 0, 0x1(3)
    stbu 0, 0x1(4)
L_8006B010:
    subic. 5, 5, 0x1
    .4byte 0x4082FFF4 # bne .L_8006B008
    .4byte 0x48000024 # b .L_8006B03C
L_8006B01C:
    add 3, 4, 5
    add 4, 31, 5
    addi 5, 5, 0x1
    .4byte 0x4800000C # b .L_8006B034
L_8006B02C:
    lbzu 0, -0x1(3)
    stbu 0, -0x1(4)
L_8006B034:
    subic. 5, 5, 0x1
    .4byte 0x4082FFF4 # bne .L_8006B02C
L_8006B03C:
    mr 3, 31
L_8006B040:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8006B054:
    add 11, 3, 5
    add 10, 4, 5
    clrlwi. 3, 11, 30
    .4byte 0x41820018 # beq .L_8006B078
    subf 5, 3, 5
L_8006B068:
    lbzu 0, -0x1(10)
    subic. 3, 3, 0x1
    stbu 0, -0x1(11)
    .4byte 0x4082FFF4 # bne .L_8006B068
L_8006B078:
    clrlslwi 8, 10, 30, 3
    clrlwi 7, 10, 30
    subfic 9, 8, 0x20
    srwi 6, 5, 3
    subfic 0, 7, 0x4
    add 10, 10, 0
    lwzu 4, -0x4(10)
L_8006B094:
    lwz 0, -0x4(10)
    srw 3, 4, 9
    subic. 6, 6, 0x1
    slw 4, 0, 8
    srw 0, 0, 9
    or 3, 4, 3
    stw 3, -0x4(11)
    lwzu 4, -0x8(10)
    slw 3, 4, 8
    or 0, 3, 0
    stwu 0, -0x8(11)
    .4byte 0x4082FFD4 # bne .L_8006B094
    rlwinm. 0, 5, 0, 29, 29
    .4byte 0x41820018 # beq .L_8006B0E0
    lwzu 3, -0x4(10)
    srw 0, 4, 9
    slw 3, 3, 8
    or 0, 3, 0
    stwu 0, -0x4(11)
L_8006B0E0:
    clrlwi. 5, 5, 30
    beqlr
    add 10, 10, 7
L_8006B0EC:
    lbzu 0, -0x1(10)
    subic. 5, 5, 0x1
    stbu 0, -0x1(11)
    .4byte 0x4082FFF4 # bne .L_8006B0EC
    blr

fn_8006B100:
    neg 0, 3
    subi 8, 4, 0x1
    clrlwi. 6, 0, 30
    subi 3, 3, 0x1
    .4byte 0x41820018 # beq .L_8006B128
    subf 5, 6, 5
L_8006B118:
    lbzu 0, 0x1(8)
    subic. 6, 6, 0x1
    stbu 0, 0x1(3)
    .4byte 0x4082FFF4 # bne .L_8006B118
L_8006B128:
    addi 0, 8, 0x1
    subi 6, 3, 0x3
    clrlwi 9, 0, 30
    srwi 7, 5, 3
    subf 8, 9, 8
    clrlslwi 10, 0, 30, 3
    lwzu 4, 0x1(8)
    subfic 11, 10, 0x20
L_8006B148:
    lwz 3, 0x4(8)
    slw 4, 4, 10
    subic. 7, 7, 0x1
    srw 0, 3, 11
    slw 3, 3, 10
    or 0, 4, 0
    stw 0, 0x4(6)
    lwzu 4, 0x8(8)
    srw 0, 4, 11
    or 0, 3, 0
    stwu 0, 0x8(6)
    .4byte 0x4082FFD4 # bne .L_8006B148
    rlwinm. 0, 5, 0, 29, 29
    .4byte 0x41820018 # beq .L_8006B194
    lwzu 0, 0x4(8)
    slw 3, 4, 10
    srw 0, 0, 11
    or 0, 3, 0
    stwu 0, 0x4(6)
L_8006B194:
    clrlwi. 5, 5, 30
    addi 4, 8, 0x3
    addi 3, 6, 0x3
    beqlr
    subfic 0, 9, 0x4
    subf 4, 0, 4
L_8006B1AC:
    lbzu 0, 0x1(4)
    subic. 5, 5, 0x1
    stbu 0, 0x1(3)
    .4byte 0x4082FFF4 # bne .L_8006B1AC
    blr


fn_8006B1C0:
    add 7, 3, 5
    add 6, 4, 5
    clrlwi. 3, 7, 30
    .4byte 0x41820018 # beq .L_8006B1E4
    subf 5, 3, 5
L_8006B1D4:
    lbzu 0, -0x1(6)
    subic. 3, 3, 0x1
    stbu 0, -0x1(7)
    .4byte 0x4082FFF4 # bne .L_8006B1D4
L_8006B1E4:
    srwi. 4, 5, 5
    .4byte 0x4182004C # beq .L_8006B234
L_8006B1EC:
    lwz 3, -0x4(6)
    subic. 4, 4, 0x1
    lwz 0, -0x8(6)
    stw 3, -0x4(7)
    lwz 3, -0xc(6)
    stw 0, -0x8(7)
    lwz 0, -0x10(6)
    stw 3, -0xc(7)
    lwz 3, -0x14(6)
    stw 0, -0x10(7)
    lwz 0, -0x18(6)
    stw 3, -0x14(7)
    lwz 3, -0x1c(6)
    stw 0, -0x18(7)
    lwzu 0, -0x20(6)
    stw 3, -0x1c(7)
    stwu 0, -0x20(7)
    .4byte 0x4082FFBC # bne .L_8006B1EC
L_8006B234:
    extrwi. 3, 5, 3, 27
    .4byte 0x41820014 # beq .L_8006B24C
L_8006B23C:
    lwzu 0, -0x4(6)
    subic. 3, 3, 0x1
    stwu 0, -0x4(7)
    .4byte 0x4082FFF4 # bne .L_8006B23C
L_8006B24C:
    clrlwi. 5, 5, 30
    beqlr
L_8006B254:
    lbzu 0, -0x1(6)
    subic. 5, 5, 0x1
    stbu 0, -0x1(7)
    .4byte 0x4082FFF4 # bne .L_8006B254
    blr

fn_8006B268:
    neg 0, 3
    subi 4, 4, 0x1
    clrlwi. 6, 0, 30
    subi 3, 3, 0x1
    .4byte 0x41820018 # beq .L_8006B290
    subf 5, 6, 5
L_8006B280:
    lbzu 0, 0x1(4)
    subic. 6, 6, 0x1
    stbu 0, 0x1(3)
    .4byte 0x4082FFF4 # bne .L_8006B280
L_8006B290:
    srwi. 6, 5, 5
    subi 7, 4, 0x3
    subi 4, 3, 0x3
    .4byte 0x4182004C # beq .L_8006B2E8
L_8006B2A0:
    lwz 3, 0x4(7)
    subic. 6, 6, 0x1
    lwz 0, 0x8(7)
    stw 3, 0x4(4)
    lwz 3, 0xc(7)
    stw 0, 0x8(4)
    lwz 0, 0x10(7)
    stw 3, 0xc(4)
    lwz 3, 0x14(7)
    stw 0, 0x10(4)
    lwz 0, 0x18(7)
    stw 3, 0x14(4)
    lwz 3, 0x1c(7)
    stw 0, 0x18(4)
    lwzu 0, 0x20(7)
    stw 3, 0x1c(4)
    stwu 0, 0x20(4)
    .4byte 0x4082FFBC # bne .L_8006B2A0
L_8006B2E8:
    extrwi. 3, 5, 3, 27
    .4byte 0x41820014 # beq .L_8006B300
L_8006B2F0:
    lwzu 0, 0x4(7)
    subic. 3, 3, 0x1
    stwu 0, 0x4(4)
    .4byte 0x4082FFF4 # bne .L_8006B2F0
L_8006B300:
    clrlwi. 5, 5, 30
    addi 6, 7, 0x3
    addi 3, 4, 0x3
    beqlr
L_8006B310:
    lbzu 0, 0x1(6)
    subic. 5, 5, 0x1
    stbu 0, 0x1(3)
    .4byte 0x4082FFF4 # bne .L_8006B310
    blr

