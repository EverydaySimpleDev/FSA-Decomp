# fn_803A28A8 - component D tail + ~40 tiny bundled accessor/getter functions closing out the whole composite entity (through the tail static-init boundary at 0x803A3260)
.section extab, "a"
.balign 4
.global etb_8000F21C
etb_8000F21C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000F21C, 8

.global etb_8000F224
etb_8000F224:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000F224, 8

.global etb_8000F22C
etb_8000F22C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000F22C, 8

.global etb_8000F234
etb_8000F234:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000F234, 8

.global etb_8000F23C
etb_8000F23C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F23C, 8

.global etb_8000F244
etb_8000F244:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000F244, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF7C
eti_8001EF7C:
    .4byte fn_803A28A8
    .4byte 0x00000184
    .4byte etb_8000F23C
.size eti_8001EF7C, 12

.global eti_8001EF88
eti_8001EF88:
    .4byte fn_803A2A2C
    .4byte 0x00000198
    .4byte etb_8000F244
.size eti_8001EF88, 12

.global eti_8001EF94
eti_8001EF94:
    .4byte fn_803A3144
    .4byte 0x00000024
    .4byte etb_8000F21C
.size eti_8001EF94, 12

.global eti_8001EFA0
eti_8001EFA0:
    .4byte fn_803A3168
    .4byte 0x00000044
    .4byte etb_8000F224
.size eti_8001EFA0, 12

.global eti_8001EFAC
eti_8001EFAC:
    .4byte fn_803A31AC
    .4byte 0x00000054
    .4byte etb_8000F22C
.size eti_8001EFAC, 12

.global eti_8001EFB8
eti_8001EFB8:
    .4byte fn_803A3228
    .4byte 0x00000038
    .4byte etb_8000F234
.size eti_8001EFB8, 12

.text
.balign 4
.global fn_803A28A8
.global fn_803A2A2C
.global fn_803A2BC4
.global fn_803A2BF8
.global fn_803A2C04
.global fn_803A2CB0
.global fn_803A2E48
.global fn_803A2F74
.global fn_803A2FE0
.global fn_803A2FEC
.global fn_803A2FFC
.global fn_803A300C
.global fn_803A3018
.global fn_803A3034
.global fn_803A3050
.global fn_803A3058
.global fn_803A3060
.global fn_803A3068
.global fn_803A3070
.global fn_803A3078
.global fn_803A3084
.global fn_803A3094
.global fn_803A309C
.global fn_803A30A4
.global fn_803A30B0
.global fn_803A30BC
.global fn_803A30C4
.global fn_803A30D0
.global fn_803A30DC
.global fn_803A30E4
.global fn_803A30F0
.global fn_803A30FC
.global fn_803A310C
.global fn_803A3114
.global fn_803A313C
.global fn_803A3144
.global fn_803A3168
.global fn_803A31AC
.global fn_803A3200
.global fn_803A3210
.global fn_803A3220
.global fn_803A3228

fn_803A28A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x60(3)
    lbz 0, 0x1aa(3)
    cmplwi 0, 0x0
    .4byte 0x408200E0 # bne .L_803A29A8
    cmpwi 4, 0xa
    extrwi 0, 4, 8, 16
    extsb 4, 0
    .4byte 0x40820024 # bne .L_803A28FC
    lwz 3, 0x54(31)
    addi 0, 3, 0x1
    stw 0, 0x54(31)
    lwz 0, 0x58(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_803A28FC
    li 0, 0x2
    stw 0, 0x58(31)
L_803A28FC:
    extsb. 0, 4
    .4byte 0x41820010 # beq .L_803A2910
    lwz 3, 0x50(31)
    addi 0, 3, 0x1
    stw 0, 0x50(31)
L_803A2910:
    lwz 3, 0x50(31)
    addi 0, 3, 0x1
    stw 0, 0x50(31)
    lbz 0, 0x5d(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_803A2958
    lwz 3, 0x60(31)
    lwz 3, 0x3b8(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820010 # bne .L_803A2948
    li 0, 0x1
    stw 0, 0x4c(31)
    .4byte 0x48000014 # b .L_803A2958
L_803A2948:
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lha 0, 0x4c(3)
    stw 0, 0x4c(31)
L_803A2958:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x8
    li 5, -0x1
    bl fn_80458880
    lwz 0, 0x58(31)
    cmpwi 0, 0x2
    .4byte 0x4182001C # beq .L_803A298C
    lwz 0, 0x54(31)
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_803A298C
    lwz 0, 0x50(31)
    cmpwi 0, 0xff
    .4byte 0x41800090 # blt .L_803A2A18
L_803A298C:
    lis 3, 0x2
    li 0, 0x8
    subi 3, 3, 0x7961
    stw 3, 0x4c(31)
    lwz 3, 0x60(31)
    stb 0, 0x3ae(3)
    .4byte 0x48000074 # b .L_803A2A18
L_803A29A8:
    cmpwi 4, 0xa
    .4byte 0x40820024 # bne .L_803A29D0
    lwz 3, 0x54(31)
    addi 0, 3, 0x1
    stw 0, 0x54(31)
    lwz 0, 0x58(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_803A29D0
    li 0, 0x2
    stw 0, 0x58(31)
L_803A29D0:
    lwz 3, 0x50(31)
    addi 0, 3, 0x2
    stw 0, 0x50(31)
    lwz 0, 0x58(31)
    cmpwi 0, 0x2
    .4byte 0x4182001C # beq .L_803A2A00
    lwz 0, 0x54(31)
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_803A2A00
    lwz 0, 0x50(31)
    cmpwi 0, 0xff
    .4byte 0x4180001C # blt .L_803A2A18
L_803A2A00:
    lis 3, 0x2
    li 0, 0x3
    subi 3, 3, 0x7961
    stw 3, 0x4c(31)
    lwz 3, 0x60(31)
    stb 0, 0x3ae(3)
L_803A2A18:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803A2A2C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x60(3)
    lbz 0, 0x1aa(4)
    cmplwi 0, 0x0
    .4byte 0x40820144 # bne .L_803A2B90
    lwz 3, 0x4c(31)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_803A2A64
    li 3, 0x1
    .4byte 0x48000150 # b .L_803A2BB0
L_803A2A64:
    subis 0, 3, 0x1
    cmplwi 0, 0x869f
    .4byte 0x40820044 # bne .L_803A2AB0
    lbz 0, 0x19f(4)
    cmplwi 0, 0x0
    .4byte 0x41820134 # beq .L_803A2BAC
    li 5, 0x0
    stw 5, 0x4c(31)
    stw 5, 0x54(31)
    stw 5, 0x50(31)
    stw 5, 0x58(31)
    stb 5, 0x5d(31)
    lwz 4, 0x60(31)
    lwz 3, 0x15c(4)
    addi 0, 3, 0x1
    stw 0, 0x15c(4)
    lwz 3, 0x60(31)
    stb 5, 0x19f(3)
    .4byte 0x48000100 # b .L_803A2BAC
L_803A2AB0:
    subi 0, 3, 0x1
    stw 0, 0x4c(31)
    lbz 0, 0x5c(31)
    cmplwi 0, 0x0
    .4byte 0x408200C4 # bne .L_803A2B84
    lwz 4, 0x60(31)
    lbz 0, 0x19e(4)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_803A2BAC
    lwz 3, 0x3b8(4)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820050 # beq .L_803A2B30
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x40820024 # bne .L_803A2B1C
    lwz 3, 0x60(31)
    lbz 0, 0x1a0(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803A2B1C
    lwz 3, 0x160(3)
    bl fn_8037E7AC
    cmpwi 3, 0x0
    .4byte 0x41820094 # beq .L_803A2BAC
L_803A2B1C:
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x5d(31)
    stw 0, 0x4c(31)
    .4byte 0x48000080 # b .L_803A2BAC
L_803A2B30:
    lwz 3, 0x160(4)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x40820024 # bne .L_803A2B70
    lwz 3, 0x60(31)
    lbz 0, 0x1a0(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803A2B70
    lwz 3, 0x160(3)
    bl fn_8037E7AC
    cmpwi 3, 0x0
    .4byte 0x41820040 # beq .L_803A2BAC
L_803A2B70:
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x5d(31)
    stw 0, 0x4c(31)
    .4byte 0x4800002C # b .L_803A2BAC
L_803A2B84:
    li 0, 0x0
    stb 0, 0x5c(31)
    .4byte 0x48000020 # b .L_803A2BAC
L_803A2B90:
    lwz 3, 0x4c(31)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_803A2BA4
    li 3, 0x1
    .4byte 0x48000010 # b .L_803A2BB0
L_803A2BA4:
    subi 0, 3, 0x1
    stw 0, 0x4c(31)
L_803A2BAC:
    li 3, 0x0
L_803A2BB0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803A2BC4:
    lwz 4, 0x60(3)
    li 0, 0x0
    stb 0, 0x3af(4)
    lwz 3, 0x60(3)
    lbz 0, 0x1aa(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_803A2BEC
    li 0, 0x8
    stb 0, 0x3ae(3)
    blr
L_803A2BEC:
    li 0, 0x3
    stb 0, 0x3ae(3)
    blr

fn_803A2BF8:
    li 0, 0x1
    stb 0, 0x5c(3)
    blr

fn_803A2C04:
    li 6, 0x0
    li 4, 0xff
    stw 6, 0x4c(3)
    li 5, 0x1
    li 0, -0x1
    stw 6, 0x54(3)
    stw 6, 0x50(3)
    stw 6, 0x58(3)
    stb 6, 0x5d(3)
    lwz 7, 0x60(3)
    stw 6, 0x150(7)
    stb 4, 0x19e(7)
    lwz 4, 0x60(3)
    stw 6, 0x15c(4)
    lwz 4, 0x60(3)
    stb 5, 0x3af(4)
    lwz 4, 0x60(3)
    stw 6, 0x16c(4)
    stb 6, 0x1a0(4)
    stb 6, 0x1a1(4)
    stw 0, 0x168(4)
    lwz 4, 0x60(3)
    stw 0, 0x148(4)
    lwz 4, 0x60(3)
    stb 6, 0x1a9(4)
    lwz 4, 0x60(3)
    stw 0, 0x174(4)
    lwz 4, 0x60(3)
    stw 0, 0x13c(4)
    lwz 4, 0x60(3)
    stw 0, 0x140(4)
    lwz 4, 0x60(3)
    stw 0, 0x144(4)
    lwz 3, 0x60(3)
    lbz 0, 0x1aa(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_803A2CA4
    li 0, 0x7
    stb 0, 0x3ae(3)
    blr
L_803A2CA4:
    li 0, 0x2
    stb 0, 0x3ae(3)
    blr

fn_803A2CB0:
    clrlwi 0, 4, 24
    cmplwi 0, 0x9
    .4byte 0x41810180 # bgt .L_803A2E38
    lis 4, jumptable_804AF6AC@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AF6AC@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2CEC
    lwz 4, 0x50(3)
    addi 0, 4, 0xa
    stw 0, 0x50(3)
    .4byte 0x48000150 # b .L_803A2E38
L_803A2CEC:
    lwz 4, 0x50(3)
    addi 0, 4, 0xb
    stw 0, 0x50(3)
    .4byte 0x48000140 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2D14
    lwz 4, 0x50(3)
    addi 0, 4, 0x6
    stw 0, 0x50(3)
    .4byte 0x48000128 # b .L_803A2E38
L_803A2D14:
    lwz 4, 0x50(3)
    addi 0, 4, 0x7
    stw 0, 0x50(3)
    .4byte 0x48000118 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2D3C
    lwz 4, 0x50(3)
    addi 0, 4, 0x6
    stw 0, 0x50(3)
    .4byte 0x48000100 # b .L_803A2E38
L_803A2D3C:
    lwz 4, 0x50(3)
    addi 0, 4, 0x8
    stw 0, 0x50(3)
    .4byte 0x480000F0 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2D64
    lwz 4, 0x50(3)
    addi 0, 4, 0x5
    stw 0, 0x50(3)
    .4byte 0x480000D8 # b .L_803A2E38
L_803A2D64:
    lwz 4, 0x50(3)
    addi 0, 4, 0x6
    stw 0, 0x50(3)
    .4byte 0x480000C8 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2D8C
    lwz 4, 0x50(3)
    addi 0, 4, 0x7
    stw 0, 0x50(3)
    .4byte 0x480000B0 # b .L_803A2E38
L_803A2D8C:
    lwz 4, 0x50(3)
    addi 0, 4, 0x8
    stw 0, 0x50(3)
    .4byte 0x480000A0 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2DB4
    lwz 4, 0x50(3)
    addi 0, 4, 0x6
    stw 0, 0x50(3)
    .4byte 0x48000088 # b .L_803A2E38
L_803A2DB4:
    lwz 4, 0x50(3)
    addi 0, 4, 0x8
    stw 0, 0x50(3)
    .4byte 0x48000078 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2DDC
    lwz 4, 0x50(3)
    addi 0, 4, 0x5
    stw 0, 0x50(3)
    .4byte 0x48000060 # b .L_803A2E38
L_803A2DDC:
    lwz 4, 0x50(3)
    addi 0, 4, 0x6
    stw 0, 0x50(3)
    .4byte 0x48000050 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2E04
    lwz 4, 0x50(3)
    addi 0, 4, 0x7
    stw 0, 0x50(3)
    .4byte 0x48000038 # b .L_803A2E38
L_803A2E04:
    lwz 4, 0x50(3)
    addi 0, 4, 0x8
    stw 0, 0x50(3)
    .4byte 0x48000028 # b .L_803A2E38
    cmpwi 5, 0x1
    .4byte 0x40820014 # bne .L_803A2E2C
    lwz 4, 0x50(3)
    addi 0, 4, 0xc
    stw 0, 0x50(3)
    .4byte 0x48000010 # b .L_803A2E38
L_803A2E2C:
    lwz 4, 0x50(3)
    addi 0, 4, 0xe
    stw 0, 0x50(3)
L_803A2E38:
    lwz 4, 0x50(3)
    addi 0, 4, 0x1
    stw 0, 0x50(3)
    blr

fn_803A2E48:
    cmpwi 4, 0x0
    li 0, 0x0
    .4byte 0x40800014 # bge .L_803A2E64
    lwz 5, 0x50(3)
    mulli 4, 4, -0x1
    addi 5, 5, 0x1
    stw 5, 0x50(3)
L_803A2E64:
    lis 5, 0x68dc
    subi 5, 5, 0x7453
    mulhw 5, 5, 4
    srawi 6, 5, 12
    srwi 7, 6, 31
    srawi 5, 5, 12
    add 6, 6, 7
    mulli 7, 6, 0x2710
    srwi 6, 5, 31
    add. 5, 5, 6
    subf 4, 7, 4
    .4byte 0x41820014 # beq .L_803A2EA4
    lwz 5, 0x50(3)
    li 0, 0x1
    addi 5, 5, 0x1
    stw 5, 0x50(3)
L_803A2EA4:
    lis 5, 0x1062
    addi 5, 5, 0x4dd3
    mulhw 5, 5, 4
    srawi 7, 5, 6
    srawi 5, 5, 6
    srwi 6, 5, 31
    srwi 8, 7, 31
    add 5, 5, 6
    mulli 5, 5, 0x3e8
    add. 6, 7, 8
    subf 4, 5, 4
    .4byte 0x4082000C # bne .L_803A2EDC
    clrlwi. 5, 0, 24
    .4byte 0x41820014 # beq .L_803A2EEC
L_803A2EDC:
    lwz 5, 0x50(3)
    li 0, 0x1
    addi 5, 5, 0x1
    stw 5, 0x50(3)
L_803A2EEC:
    lis 5, 0x51ec
    subi 5, 5, 0x7ae1
    mulhw 5, 5, 4
    srawi 7, 5, 5
    srawi 5, 5, 5
    srwi 6, 5, 31
    srwi 8, 7, 31
    add 5, 5, 6
    mulli 5, 5, 0x64
    add. 6, 7, 8
    subf 4, 5, 4
    .4byte 0x4082000C # bne .L_803A2F24
    clrlwi. 5, 0, 24
    .4byte 0x41820014 # beq .L_803A2F34
L_803A2F24:
    lwz 5, 0x50(3)
    li 0, 0x1
    addi 5, 5, 0x1
    stw 5, 0x50(3)
L_803A2F34:
    lis 5, 0x6666
    addi 5, 5, 0x6667
    mulhw 4, 5, 4
    srawi 4, 4, 2
    srwi 5, 4, 31
    add. 4, 4, 5
    .4byte 0x4082000C # bne .L_803A2F58
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_803A2F64
L_803A2F58:
    lwz 4, 0x50(3)
    addi 0, 4, 0x1
    stw 0, 0x50(3)
L_803A2F64:
    lwz 4, 0x50(3)
    addi 0, 4, 0x1
    stw 0, 0x50(3)
    blr

fn_803A2F74:
    li 8, 0x0
    li 4, 0xff
    stw 8, 0x4c(3)
    li 5, -0x1
    li 0, 0x2
    stw 8, 0x54(3)
    stw 8, 0x50(3)
    stw 8, 0x58(3)
    stb 8, 0x5d(3)
    lwz 7, 0x60(3)
    lwz 6, 0x15c(7)
    addi 6, 6, 0x1
    stw 6, 0x15c(7)
    lwz 6, 0x60(3)
    stw 8, 0x150(6)
    stb 4, 0x19e(6)
    lwz 4, 0x60(3)
    stw 5, 0x148(4)
    lwz 4, 0x60(3)
    stw 5, 0x13c(4)
    lwz 4, 0x60(3)
    stw 5, 0x140(4)
    lwz 4, 0x60(3)
    stw 5, 0x144(4)
    lwz 3, 0x60(3)
    stb 0, 0x3ae(3)
    blr

fn_803A2FE0:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lwz 3, 0x10c(3)
    blr

fn_803A2FEC:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 0, 0x0
    stw 0, 0x44(3)
    blr

fn_803A2FFC:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    li 0, 0x0
    stb 0, 0xe9(3)
    blr

fn_803A300C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    lbz 3, 0xe9(3)
    blr

fn_803A3018:
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lhz 3, 0x36(3)
    blr

fn_803A3034:
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lhz 3, 0x34(3)
    blr

fn_803A3050:
    lwz 3, 0x17c(3)
    blr

fn_803A3058:
    lwz 3, 0x178(3)
    blr

fn_803A3060:
    lha 3, 0x192(3)
    blr

fn_803A3068:
    lha 3, 0x190(3)
    blr

fn_803A3070:
    stw 4, 0x174(3)
    blr

fn_803A3078:
    li 0, 0x0
    stb 0, 0x3b1(3)
    blr

fn_803A3084:
    slwi 0, 4, 2
    add 3, 3, 0
    stw 5, 0x180(3)
    blr

fn_803A3094:
    lwz 3, 0x14c(3)
    blr

fn_803A309C:
    lwz 3, 0x3bc(3)
    blr

fn_803A30A4:
    stw 5, 0x150(3)
    stb 4, 0x19e(3)
    blr

fn_803A30B0:
    li 0, 0x1
    stb 0, 0x1a9(3)
    blr

fn_803A30BC:
    lwz 3, 0x160(3)
    blr

fn_803A30C4:
    li 0, 0x3
    stb 0, 0x1a0(3)
    blr

fn_803A30D0:
    li 0, 0x1
    stb 0, 0x1a1(3)
    blr

fn_803A30DC:
    stw 4, 0x148(3)
    blr

fn_803A30E4:
    li 0, 0x0
    stb 0, 0x1a1(3)
    blr

fn_803A30F0:
    li 0, 0x2
    stb 0, 0x1a0(3)
    blr

fn_803A30FC:
    slwi 0, 4, 2
    add 3, 3, 0
    stw 5, 0x13c(3)
    blr

fn_803A310C:
    lwz 3, 0x16c(3)
    blr

fn_803A3114:
    lbz 0, 0x1a0(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_803A312C
    lwz 4, 0x168(3)
    addi 0, 4, 0x1
    stw 0, 0x168(3)
L_803A312C:
    lwz 4, 0x16c(3)
    addi 0, 4, 0x1
    stw 0, 0x16c(3)
    blr

fn_803A313C:
    lbz 3, 0x1aa(3)
    blr

fn_803A3144:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803A3168:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 31
    bl fn_802D7E5C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803A31AC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl GetRoomConfigRecord
    mr 4, 29
    mr 5, 30
    mr 6, 31
    bl fn_802D7EB0
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803A3200:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    blr

fn_803A3210:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x118(3)
    blr

fn_803A3220:
    lwz 3, 0x280(3)
    blr

fn_803A3228:
    stwu 1, -0x10(1)
    mflr 0
    mr 7, 3
    mr 6, 5
    stw 0, 0x14(1)
    mr 0, 4
    mr 4, 7
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 0
    bl fn_8043D874
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

