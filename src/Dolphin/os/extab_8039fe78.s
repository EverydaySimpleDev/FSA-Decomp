# fn_8039FE78 - component D: vtable-slot function (0x2a30, 2nd-largest piece in this gap)
.section extab, "a"
.balign 4
.global etb_8000F214
etb_8000F214:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000F214, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF70
eti_8001EF70:
    .4byte fn_8039FE78
    .4byte 0x00002A30
    .4byte etb_8000F214
.size eti_8001EF70, 12

.text
.balign 4
.global fn_8039FE78

fn_8039FE78:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 26, 0x38(1)
    mr 31, 3
    mr 29, 4
    mr 30, 5
    lwz 3, 0x60(3)
    bl fn_803A313C
    clrlwi. 0, 3, 24
    .4byte 0x408214D0 # bne .L_803A1370
    lis 4, 0x2
    addi 0, 4, 0x1b
    cmpw 29, 0
    .4byte 0x418203B0 # beq .L_803A0260
    .4byte 0x40800150 # bge .L_803A0004
    addi 0, 4, 0x9
    cmpw 29, 0
    .4byte 0x4182033C # beq .L_803A01FC
    .4byte 0x408000A8 # bge .L_8039FF6C
    cmpw 29, 4
    .4byte 0x41820294 # beq .L_803A0160
    .4byte 0x40800058 # bge .L_8039FF28
    lis 3, 0x1
    addi 0, 3, 0xb
    cmpw 29, 0
    .4byte 0x4080001C # bge .L_8039FEFC
    cmpwi 29, 0x0
    .4byte 0x41820250 # beq .L_803A0138
    .4byte 0x418029A4 # blt .L_803A2890
    cmpw 29, 3
    .4byte 0x40800254 # bge .L_803A0148
    .4byte 0x48002998 # b .L_803A2890
L_8039FEFC:
    addi 0, 3, 0x10
    cmpw 29, 0
    .4byte 0x40800014 # bge .L_8039FF18
    addi 0, 3, 0xd
    cmpw 29, 0
    .4byte 0x40802980 # bge .L_803A2890
    .4byte 0x4800023C # b .L_803A0150
L_8039FF18:
    addi 0, 3, 0x14
    cmpw 29, 0
    .4byte 0x40802970 # bge .L_803A2890
    .4byte 0x48000234 # b .L_803A0158
L_8039FF28:
    addi 0, 4, 0x5
    cmpw 29, 0
    .4byte 0x41820440 # beq .L_803A0370
    .4byte 0x40800024 # bge .L_8039FF58
    addi 0, 4, 0x3
    cmpw 29, 0
    .4byte 0x41820358 # beq .L_803A0298
    .4byte 0x4080041C # bge .L_803A0360
    addi 0, 4, 0x2
    cmpw 29, 0
    .4byte 0x40800310 # bge .L_803A0260
    .4byte 0x48000244 # b .L_803A0198
L_8039FF58:
    addi 0, 4, 0x7
    cmpw 29, 0
    .4byte 0x4182044C # beq .L_803A03AC
    .4byte 0x4080048C # bge .L_803A03F0
    .4byte 0x48000410 # b .L_803A0378
L_8039FF6C:
    addi 0, 4, 0x12
    cmpw 29, 0
    .4byte 0x418201FC # beq .L_803A0170
    .4byte 0x40800048 # bge .L_8039FFC0
    addi 0, 4, 0xe
    cmpw 29, 0
    .4byte 0x418206D4 # beq .L_803A0658
    .4byte 0x40800024 # bge .L_8039FFAC
    addi 0, 4, 0xc
    cmpw 29, 0
    .4byte 0x418202DC # beq .L_803A0270
    .4byte 0x408004EC # bge .L_803A0484
    addi 0, 4, 0xb
    cmpw 29, 0
    .4byte 0x40800358 # bge .L_803A02FC
    .4byte 0x480001C8 # b .L_803A0170
L_8039FFAC:
    addi 0, 4, 0x10
    cmpw 29, 0
    .4byte 0x4182072C # beq .L_803A06E0
    .4byte 0x40800200 # bge .L_803A01B8
    .4byte 0x480006EC # b .L_803A06A8
L_8039FFC0:
    addi 0, 4, 0x17
    cmpw 29, 0
    .4byte 0x41820B18 # beq .L_803A0AE0
    .4byte 0x40800024 # bge .L_8039FFF0
    addi 0, 4, 0x15
    cmpw 29, 0
    .4byte 0x41820AB8 # beq .L_803A0A90
    .4byte 0x40800AE8 # bge .L_803A0AC4
    addi 0, 4, 0x14
    cmpw 29, 0
    .4byte 0x40800288 # bge .L_803A0270
    .4byte 0x480002CC # b .L_803A02B8
L_8039FFF0:
    addi 0, 4, 0x19
    cmpw 29, 0
    .4byte 0x41820168 # beq .L_803A0160
    .4byte 0x40800244 # bge .L_803A0240
    .4byte 0x48000B58 # b .L_803A0B58
L_803A0004:
    addi 0, 4, 0x2e
    cmpw 29, 0
    .4byte 0x4182100C # beq .L_803A1018
    .4byte 0x4080009C # bge .L_803A00AC
    addi 0, 4, 0x24
    cmpw 29, 0
    .4byte 0x41820DF0 # beq .L_803A0E0C
    .4byte 0x40800048 # bge .L_803A0068
    addi 0, 4, 0x20
    cmpw 29, 0
    .4byte 0x41820BD0 # beq .L_803A0BFC
    .4byte 0x40800024 # bge .L_803A0054
    addi 0, 4, 0x1e
    cmpw 29, 0
    .4byte 0x41820BB0 # beq .L_803A0BEC
    .4byte 0x40800BB4 # bge .L_803A0BF4
    addi 0, 4, 0x1d
    cmpw 29, 0
    .4byte 0x40800B4C # bge .L_803A0B98
    .4byte 0x480002F0 # b .L_803A0340
L_803A0054:
    addi 0, 4, 0x22
    cmpw 29, 0
    .4byte 0x41820C10 # beq .L_803A0C6C
    .4byte 0x40800D3C # bge .L_803A0D9C
    .4byte 0x48000BBC # b .L_803A0C20
L_803A0068:
    addi 0, 4, 0x28
    cmpw 29, 0
    .4byte 0x41820F1C # beq .L_803A0F8C
    .4byte 0x40800018 # bge .L_803A008C
    addi 0, 4, 0x26
    cmpw 29, 0
    .4byte 0x41820EC0 # beq .L_803A0F40
    .4byte 0x40800EF4 # bge .L_803A0F78
    .4byte 0x48000E94 # b .L_803A0F1C
L_803A008C:
    addi 0, 4, 0x2c
    cmpw 29, 0
    .4byte 0x41820F20 # beq .L_803A0FB4
    .4byte 0x40800F68 # bge .L_803A1000
    addi 0, 4, 0x2b
    cmpw 29, 0
    .4byte 0x40800EFC # bge .L_803A0FA0
    .4byte 0x48000EF0 # b .L_803A0F98
L_803A00AC:
    lis 3, 0x3
    addi 0, 3, 0x2
    cmpw 29, 0
    .4byte 0x41821190 # beq .L_803A1248
    .4byte 0x40800044 # bge .L_803A0100
    addi 0, 4, 0x33
    cmpw 29, 0
    .4byte 0x418210F8 # beq .L_803A11C0
    .4byte 0x40800024 # bge .L_803A00F0
    addi 0, 4, 0x31
    cmpw 29, 0
    .4byte 0x41821008 # beq .L_803A10E0
    .4byte 0x4080103C # bge .L_803A1118
    addi 0, 4, 0x30
    cmpw 29, 0
    .4byte 0x40800FB0 # bge .L_803A1098
    .4byte 0x48000FA4 # b .L_803A1090
L_803A00F0:
    cmpw 29, 3
    .4byte 0x41821118 # beq .L_803A120C
    .4byte 0x40801148 # bge .L_803A1240
    .4byte 0x48002794 # b .L_803A2890
L_803A0100:
    addi 0, 3, 0x6
    cmpw 29, 0
    .4byte 0x418211E4 # beq .L_803A12EC
    .4byte 0x40800018 # bge .L_803A0124
    addi 0, 3, 0x4
    cmpw 29, 0
    .4byte 0x41821198 # beq .L_803A12B0
    .4byte 0x408011C8 # bge .L_803A12E4
    .4byte 0x4800115C # b .L_803A127C
L_803A0124:
    addi 0, 3, 0x8
    cmpw 29, 0
    .4byte 0x41821218 # beq .L_803A1344
    .4byte 0x40802760 # bge .L_803A2890
    .4byte 0x480011E4 # b .L_803A1318
L_803A0138:
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x58(31)
    .4byte 0x48002750 # b .L_803A2894
L_803A0148:
    li 3, 0x1
    .4byte 0x48002748 # b .L_803A2894
L_803A0150:
    li 3, 0x1
    .4byte 0x48002740 # b .L_803A2894
L_803A0158:
    li 3, 0x1
    .4byte 0x48002738 # b .L_803A2894
L_803A0160:
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x48002728 # b .L_803A2894
L_803A0170:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x48002700 # b .L_803A2894
L_803A0198:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x480026E0 # b .L_803A2894
L_803A01B8:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x4800269C # b .L_803A2894
L_803A01FC:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x48002658 # b .L_803A2894
L_803A0240:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x48002638 # b .L_803A2894
L_803A0260:
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x48002628 # b .L_803A2894
L_803A0270:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x48002600 # b .L_803A2894
L_803A0298:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x480025E0 # b .L_803A2894
L_803A02B8:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x4800259C # b .L_803A2894
L_803A02FC:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x48002558 # b .L_803A2894
L_803A0340:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x48002538 # b .L_803A2894
L_803A0360:
    lhz 0, 0x0(30)
    li 3, 0x1
    stw 0, 0x4c(31)
    .4byte 0x48002528 # b .L_803A2894
L_803A0370:
    li 3, 0x1
    .4byte 0x48002520 # b .L_803A2894
L_803A0378:
    lbz 0, 0x1(30)
    lbz 3, 0x0(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803A0398
    li 4, 0x1
    li 5, 0xff
    bl fn_8018E8DC
    .4byte 0x48000010 # b .L_803A03A4
L_803A0398:
    li 4, 0x0
    li 5, 0xff
    bl fn_8018E8DC
L_803A03A4:
    li 3, 0x1
    .4byte 0x480024EC # b .L_803A2894
L_803A03AC:
    lwz 4, 0x1(30)
    lwz 0, 0x5(30)
    lbz 3, 0x0(30)
    stw 4, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_803A03DC
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A03E8
L_803A03DC:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A03E8:
    li 3, 0x1
    .4byte 0x480024A8 # b .L_803A2894
L_803A03F0:
    lbz 28, 0x0(30)
    li 0, 0x0
    lbz 29, 0x1(30)
    cmpwi 28, 0x0
    lbz 31, 0x2(30)
    lbz 30, 0x3(30)
    .4byte 0x41820010 # beq .L_803A0418
    cmplwi 29, 0x1
    .4byte 0x40820008 # bne .L_803A0418
    li 0, 0x1
L_803A0418:
    clrlwi 3, 0, 24
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_803A0450
    cmpwi 28, 0x0
    li 0, 0x0
    .4byte 0x41820010 # beq .L_803A0440
    cmplwi 29, 0x0
    .4byte 0x40820008 # bne .L_803A0440
    li 0, 0x1
L_803A0440:
    clrlwi 3, 0, 24
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_803A047C
L_803A0450:
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_803A046C
    mr 3, 31
    li 4, 0x1
    li 5, 0xff
    bl fn_8018E8DC
    .4byte 0x48000014 # b .L_803A047C
L_803A046C:
    mr 3, 31
    li 4, 0x0
    li 5, 0xff
    bl fn_8018E8DC
L_803A047C:
    li 3, 0x1
    .4byte 0x48002414 # b .L_803A2894
L_803A0484:
    lbz 3, 0x5(30)
    lwz 0, 0x0(30)
    cmplwi 3, 0x5
    lbz 27, 0x4(30)
    stw 0, 0x8(1)
    lbz 28, 0x6(30)
    .4byte 0x408200BC # bne .L_803A0558
    li 29, 0x0
L_803A04A4:
    mr 3, 29
    bl fn_8018A614
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_803A0548
    cmplwi 27, 0x0
    .4byte 0x4082002C # bne .L_803A04E4
    lwz 4, 0x8(1)
    cmpwi 4, 0x64
    .4byte 0x41800014 # blt .L_803A04D8
    mr 3, 29
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000074 # b .L_803A0548
L_803A04D8:
    mr 3, 29
    bl fn_802362C4
    .4byte 0x48000068 # b .L_803A0548
L_803A04E4:
    cmplwi 28, 0x0
    .4byte 0x40820034 # bne .L_803A051C
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A050C
    mr 3, 29
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000040 # b .L_803A0548
L_803A050C:
    mr 3, 29
    neg 4, 0
    bl fn_802362C4
    .4byte 0x48000030 # b .L_803A0548
L_803A051C:
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A053C
    mr 3, 29
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000010 # b .L_803A0548
L_803A053C:
    mr 3, 29
    neg 4, 0
    bl fn_8023619C
L_803A0548:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF54 # blt .L_803A04A4
    .4byte 0x480000FC # b .L_803A0650
L_803A0558:
    cmpwi 3, 0x3
    .4byte 0x4182003C # beq .L_803A0598
    .4byte 0x40800014 # bge .L_803A0574
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_803A0580
    .4byte 0x40800020 # bge .L_803A058C
    .4byte 0x48000040 # b .L_803A05B0
L_803A0574:
    cmpwi 3, 0x5
    .4byte 0x40800038 # bge .L_803A05B0
    .4byte 0x48000028 # b .L_803A05A4
L_803A0580:
    li 0, 0x0
    stw 0, 0xc(1)
    .4byte 0x48000034 # b .L_803A05BC
L_803A058C:
    li 0, 0x1
    stw 0, 0xc(1)
    .4byte 0x48000028 # b .L_803A05BC
L_803A0598:
    li 0, 0x2
    stw 0, 0xc(1)
    .4byte 0x4800001C # b .L_803A05BC
L_803A05A4:
    li 0, 0x3
    stw 0, 0xc(1)
    .4byte 0x48000010 # b .L_803A05BC
L_803A05B0:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    stw 3, 0xc(1)
L_803A05BC:
    cmplwi 27, 0x0
    .4byte 0x4082002C # bne .L_803A05EC
    lwz 4, 0x8(1)
    cmpwi 4, 0x64
    .4byte 0x41800014 # blt .L_803A05E0
    lwz 3, 0xc(1)
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000074 # b .L_803A0650
L_803A05E0:
    lwz 3, 0xc(1)
    bl fn_802362C4
    .4byte 0x48000068 # b .L_803A0650
L_803A05EC:
    cmplwi 28, 0x0
    .4byte 0x40820034 # bne .L_803A0624
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A0614
    lwz 3, 0xc(1)
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000040 # b .L_803A0650
L_803A0614:
    lwz 3, 0xc(1)
    neg 4, 0
    bl fn_802362C4
    .4byte 0x48000030 # b .L_803A0650
L_803A0624:
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A0644
    lwz 3, 0xc(1)
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000010 # b .L_803A0650
L_803A0644:
    lwz 3, 0xc(1)
    neg 4, 0
    bl fn_8023619C
L_803A0650:
    li 3, 0x1
    .4byte 0x48002240 # b .L_803A2894
L_803A0658:
    lbz 29, 0x0(30)
    cmplwi 29, 0x0
    .4byte 0x4082002C # bne .L_803A068C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_80237810
    mr 29, 3
    lwz 3, 0x60(31)
    bl fn_803A30BC
    mr 4, 29
    li 5, 0x0
    bl fn_80236554
    .4byte 0x48000018 # b .L_803A06A0
L_803A068C:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlslwi 4, 29, 24, 2
    li 5, 0x0
    bl fn_80236554
L_803A06A0:
    li 3, 0x1
    .4byte 0x480021F0 # b .L_803A2894
L_803A06A8:
    lbz 29, 0x0(30)
    cmplwi 29, 0x0
    .4byte 0x40820018 # bne .L_803A06C8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    li 4, 0x180
    bl fn_80237524
    .4byte 0x48000014 # b .L_803A06D8
L_803A06C8:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 4, 29, 24
    bl fn_80237524
L_803A06D8:
    li 3, 0x1
    .4byte 0x480021B8 # b .L_803A2894
L_803A06E0:
    lbz 29, 0x0(30)
    lwz 0, 0x5(30)
    lwz 3, 0x1(30)
    cmplwi 29, 0x10
    stw 0, 0xc(1)
    lbz 30, 0x9(30)
    stw 3, 0x8(1)
    stw 0, 0x10(1)
    .4byte 0x4181037C # bgt .L_803A0A7C
    lis 3, jumptable_804AF668@ha
    slwi 0, 29, 2
    addi 3, 3, jumptable_804AF668@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x40820348 # bne .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EF50
    bl fn_8015445C
    mr 27, 3
    bl fn_803A3220
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_803A0764
    cmplwi 29, 0x0
    .4byte 0x4182004C # beq .L_803A07AC
L_803A0764:
    mr 3, 27
    bl fn_803A3220
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803A077C
    cmplwi 29, 0x1
    .4byte 0x41820034 # beq .L_803A07AC
L_803A077C:
    mr 3, 27
    bl fn_803A3220
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_803A0794
    cmplwi 29, 0x2
    .4byte 0x4182001C # beq .L_803A07AC
L_803A0794:
    mr 3, 27
    bl fn_803A3220
    cmpwi 3, 0x9
    .4byte 0x408202DC # bne .L_803A0A7C
    cmplwi 29, 0x10
    .4byte 0x408202D4 # bne .L_803A0A7C
L_803A07AC:
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x418202C4 # beq .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480002B0 # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x424f
    cmplwi 0, 0x5244
    .4byte 0x40820294 # bne .L_803A0A7C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820284 # beq .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x48000270 # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x5354
    cmplwi 0, 0x4f4e
    .4byte 0x40820254 # bne .L_803A0A7C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820244 # beq .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x48000230 # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x40820214 # bne .L_803A0A7C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820204 # beq .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480001F0 # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4e49
    cmplwi 0, 0x5741
    .4byte 0x408201D4 # bne .L_803A0A7C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x418201C4 # beq .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480001B0 # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4752
    cmplwi 0, 0x4153
    .4byte 0x40820194 # bne .L_803A0A7C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820184 # beq .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x48000170 # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x5455
    cmplwi 0, 0x424f
    .4byte 0x40820154 # bne .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8023EF50
    bl fn_8022EA0C
    bl fn_8015445C
    mr 27, 3
    bl fn_801544C8
    extrwi. 0, 3, 5, 20
    .4byte 0x4082000C # bne .L_803A0958
    cmplwi 29, 0xa
    .4byte 0x4182003C # beq .L_803A0990
L_803A0958:
    mr 3, 27
    bl fn_801544C8
    extrwi 0, 3, 5, 20
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803A0974
    cmplwi 29, 0x8
    .4byte 0x41820020 # beq .L_803A0990
L_803A0974:
    mr 3, 27
    bl fn_801544C8
    extrwi 0, 3, 5, 20
    cmplwi 0, 0x2
    .4byte 0x408200F8 # bne .L_803A0A7C
    cmplwi 29, 0x9
    .4byte 0x408200F0 # bne .L_803A0A7C
L_803A0990:
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x418200E0 # beq .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480000CC # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x504c
    cmplwi 0, 0x4159
    .4byte 0x408200B0 # bne .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_803A09F0
    cmplwi 29, 0xb
    .4byte 0x41820064 # beq .L_803A0A50
L_803A09F0:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803A0A10
    cmplwi 29, 0xc
    .4byte 0x41820044 # beq .L_803A0A50
L_803A0A10:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_803A0A30
    cmplwi 29, 0xd
    .4byte 0x41820024 # beq .L_803A0A50
L_803A0A30:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x3
    .4byte 0x40820038 # bne .L_803A0A7C
    cmplwi 29, 0xe
    .4byte 0x40820030 # bne .L_803A0A7C
L_803A0A50:
    lwz 0, 0x8(1)
    stw 0, 0x10(1)
    .4byte 0x48000024 # b .L_803A0A7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_803A0A7C
    lwz 0, 0x8(1)
    stw 0, 0x10(1)
L_803A0A7C:
    lwz 3, 0x60(31)
    lwz 4, 0x10(1)
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x48001E08 # b .L_803A2894
L_803A0A90:
    lbz 27, 0x4(30)
    lwz 0, 0x0(30)
    cmplwi 27, 0x0
    stw 0, 0x8(1)
    .4byte 0x4082000C # bne .L_803A0AAC
    lwz 3, 0x60(31)
    bl fn_803A30B0
L_803A0AAC:
    lwz 3, 0x60(31)
    mr 4, 27
    lwz 5, 0x8(1)
    bl fn_803A30A4
    li 3, 0x1
    .4byte 0x48001DD4 # b .L_803A2894
L_803A0AC4:
    lwz 3, 0x60(31)
    bl fn_803A309C
    lbz 4, 0x0(30)
    li 5, 0x0
    bl fn_8045B030
    li 3, 0x1
    .4byte 0x48001DB8 # b .L_803A2894
L_803A0AE0:
    lbz 29, 0x0(30)
    bl fn_80154744
    clrlwi 4, 29, 24
    lis 0, 0x4330
    stw 4, 0x24(1)
    .4byte 0xC8420298 # lfd f2, lbl_80543238@sda21(r0)
    stw 0, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 3, 0x2c(1)
    addi 27, 3, 0x1
    cmpw 27, 4
    .4byte 0x40810008 # ble .L_803A0B24
    mr 27, 4
L_803A0B24:
    lwz 3, 0x60(31)
    bl fn_803A3094
    bl fn_803846A4
    stw 3, 0x8(1)
    add 3, 3, 27
    stw 3, 0x8(1)
    bl fn_803846BC
    mr 4, 3
    lwz 3, 0x60(31)
    stw 4, 0xc(1)
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x48001D40 # b .L_803A2894
L_803A0B58:
    lwz 5, 0x0(30)
    lwz 4, 0x4(30)
    lwz 3, 0x8(30)
    lwz 0, 0xc(30)
    stw 5, 0x8(1)
    stw 4, 0xc(1)
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    bl fn_8018E89C
    slwi 0, 3, 2
    addi 4, 1, 0x4
    lwz 3, 0x60(31)
    lwzx 4, 4, 0
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x48001D00 # b .L_803A2894
L_803A0B98:
    lwz 3, 0x0(30)
    lwz 4, 0x4(30)
    lwz 0, 0x8(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 4, 0xc(1)
    stw 0, 0x10(1)
    bl fn_803A30BC
    bl fn_80236100
    lwz 0, 0x8(1)
    cmpw 3, 0
    .4byte 0x41800014 # blt .L_803A0BD8
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A0BE4
L_803A0BD8:
    lwz 3, 0x60(31)
    lwz 4, 0x10(1)
    bl fn_803A30DC
L_803A0BE4:
    li 3, 0x1
    .4byte 0x48001CAC # b .L_803A2894
L_803A0BEC:
    li 3, 0x1
    .4byte 0x48001CA4 # b .L_803A2894
L_803A0BF4:
    li 3, 0x1
    .4byte 0x48001C9C # b .L_803A2894
L_803A0BFC:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    slwi 0, 3, 2
    lwz 3, 0x60(31)
    lwzx 4, 30, 0
    stw 4, 0x8(1)
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x48001C78 # b .L_803A2894
L_803A0C20:
    lwz 0, 0x0(30)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_803A3200
    mr 29, 3
    bl fn_803A3210
    mr 4, 29
    bl fn_8019CE40
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_803A0C58
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A0C64
L_803A0C58:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A0C64:
    li 3, 0x1
    .4byte 0x48001C2C # b .L_803A2894
L_803A0C6C:
    lbz 3, 0x0(30)
    lhz 28, 0x1(30)
    cmplwi 3, 0x5
    lbz 0, 0x3(30)
    .4byte 0x40820094 # bne .L_803A0D10
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_803A0CCC
    mr 4, 28
    li 3, 0x0
    li 5, 0x1
    bl fn_803A31AC
    mr 4, 28
    li 3, 0x1
    li 5, 0x1
    bl fn_803A31AC
    mr 4, 28
    li 3, 0x2
    li 5, 0x1
    bl fn_803A31AC
    mr 4, 28
    li 3, 0x3
    li 5, 0x1
    bl fn_803A31AC
    .4byte 0x480000CC # b .L_803A0D94
L_803A0CCC:
    mr 4, 28
    li 3, 0x0
    li 5, 0x0
    bl fn_803A31AC
    mr 4, 28
    li 3, 0x1
    li 5, 0x0
    bl fn_803A31AC
    mr 4, 28
    li 3, 0x2
    li 5, 0x0
    bl fn_803A31AC
    mr 4, 28
    li 3, 0x3
    li 5, 0x0
    bl fn_803A31AC
    .4byte 0x48000088 # b .L_803A0D94
L_803A0D10:
    cmplwi 3, 0x1
    .4byte 0x41800044 # blt .L_803A0D58
    cmplwi 3, 0x4
    .4byte 0x4181003C # bgt .L_803A0D58
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803A0D40
    subi 0, 3, 0x1
    mr 4, 28
    clrlwi 3, 0, 24
    li 5, 0x1
    bl fn_803A31AC
    .4byte 0x48000058 # b .L_803A0D94
L_803A0D40:
    subi 0, 3, 0x1
    mr 4, 28
    clrlwi 3, 0, 24
    li 5, 0x0
    bl fn_803A31AC
    .4byte 0x48000040 # b .L_803A0D94
L_803A0D58:
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_803A0D7C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 3, 3, 24
    mr 4, 28
    li 5, 0x1
    bl fn_803A31AC
    .4byte 0x4800001C # b .L_803A0D94
L_803A0D7C:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 3, 3, 24
    mr 4, 28
    li 5, 0x0
    bl fn_803A31AC
L_803A0D94:
    li 3, 0x1
    .4byte 0x48001AFC # b .L_803A2894
L_803A0D9C:
    lbz 3, 0x0(30)
    lwz 4, 0x3(30)
    lwz 0, 0x7(30)
    cmplwi 3, 0x1
    stw 4, 0x8(1)
    lhz 27, 0x1(30)
    stw 0, 0xc(1)
    .4byte 0x41800014 # blt .L_803A0DCC
    cmplwi 3, 0x4
    .4byte 0x4181000C # bgt .L_803A0DCC
    subi 3, 3, 0x1
    .4byte 0x48000010 # b .L_803A0DD8
L_803A0DCC:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 3, 3, 24
L_803A0DD8:
    mr 4, 27
    bl fn_803A3168
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_803A0DF8
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A0E04
L_803A0DF8:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A0E04:
    li 3, 0x1
    .4byte 0x48001A8C # b .L_803A2894
L_803A0E0C:
    lbz 29, 0x0(30)
    lbz 27, 0x1(30)
    cmpwi 29, 0x5
    lbz 28, 0x2(30)
    .4byte 0x41820020 # beq .L_803A0E3C
    .4byte 0x40800028 # bge .L_803A0E48
    cmpwi 29, 0x1
    .4byte 0x40800008 # bge .L_803A0E30
    .4byte 0x4800001C # b .L_803A0E48
L_803A0E30:
    subi 0, 29, 0x1
    stw 0, 0x8(1)
    .4byte 0x4800001C # b .L_803A0E54
L_803A0E3C:
    li 0, 0x5
    stw 0, 0x8(1)
    .4byte 0x48000010 # b .L_803A0E54
L_803A0E48:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    stw 3, 0x8(1)
L_803A0E54:
    cmplwi 28, 0x1
    .4byte 0x40820014 # bne .L_803A0E6C
    lis 3, lbl_80475D24@ha
    addi 3, 3, lbl_80475D24@l
    lbzx 0, 3, 27
    .4byte 0x48000010 # b .L_803A0E78
L_803A0E6C:
    lis 3, lbl_80475D44@ha
    addi 3, 3, lbl_80475D44@l
    lbzx 0, 3, 27
L_803A0E78:
    li 26, 0x0
    clrlwi 28, 0, 24
L_803A0E80:
    mr 3, 26
    bl fn_8018A614
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_803A0F08
    lwz 0, 0x8(1)
    cmplw 26, 0
    .4byte 0x4182000C # beq .L_803A0EA4
    cmplwi 29, 0x5
    .4byte 0x40820068 # bne .L_803A0F08
L_803A0EA4:
    mr 3, 26
    bl fn_8022EA0C
    slwi 0, 3, 12
    mr 3, 26
    ori 27, 0, 0x100
    or 27, 27, 28
    bl fn_8022EA0C
    bl fn_8023E724
    mr 30, 3
    mr 3, 26
    bl fn_8022EA0C
    bl fn_8023DE58
    lis 7, 0x544b
    mr 4, 3
    addi 3, 7, 0x5241
    mr 5, 30
    mr 6, 27
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    mr 0, 3
    lwz 3, 0x60(31)
    mr 5, 0
    mr 4, 26
    bl fn_803A3084
L_803A0F08:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF70 # blt .L_803A0E80
    li 3, 0x1
    .4byte 0x4800197C # b .L_803A2894
L_803A0F1C:
    lwz 5, 0x0(30)
    li 4, 0x0
    lwz 3, 0x60(31)
    stw 5, 0x8(1)
    bl fn_803A30A4
    lwz 3, 0x60(31)
    bl fn_803A30B0
    li 3, 0x1
    .4byte 0x48001958 # b .L_803A2894
L_803A0F40:
    lwz 0, 0x0(30)
    lbz 27, 0x4(30)
    stw 0, 0x8(1)
    lbz 28, 0x5(30)
    bl fn_803A300C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_803A0F70
    lwz 3, 0x60(31)
    mr 5, 27
    lwz 4, 0x8(1)
    mr 6, 28
    bl fn_803944C8
L_803A0F70:
    li 3, 0x1
    .4byte 0x48001920 # b .L_803A2894
L_803A0F78:
    lwz 3, 0x60(31)
    bl fn_803A3078
    bl fn_803A2FFC
    li 3, 0x1
    .4byte 0x4800190C # b .L_803A2894
L_803A0F8C:
    bl fn_803A2FEC
    li 3, 0x1
    .4byte 0x48001900 # b .L_803A2894
L_803A0F98:
    li 3, 0x1
    .4byte 0x480018F8 # b .L_803A2894
L_803A0FA0:
    lwz 3, 0x60(31)
    lbz 4, 0x0(30)
    bl fn_803A3070
    li 3, 0x1
    .4byte 0x480018E4 # b .L_803A2894
L_803A0FB4:
    lwz 3, 0x0(30)
    lwz 0, 0x4(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 0, 0xc(1)
    bl fn_803A30BC
    bl fn_8013997C
    clrlwi 0, 3, 24
    cmplwi 0, 0x2
    .4byte 0x40820014 # bne .L_803A0FEC
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A0FF8
L_803A0FEC:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A0FF8:
    li 3, 0x1
    .4byte 0x48001898 # b .L_803A2894
L_803A1000:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    li 3, 0x1
    .4byte 0x48001880 # b .L_803A2894
L_803A1018:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    cmpwi 3, 0x0
    .4byte 0x41800064 # blt .L_803A1088
    lwz 3, 0x60(31)
    bl fn_803A30BC
    cmpwi 3, 0x4
    .4byte 0x40800054 # bge .L_803A1088
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8018A614
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_803A1088
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8013997C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_803A1088
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800014 # blt .L_803A1088
    lwz 3, 0x60(31)
    bl fn_803A30BC
    li 4, 0x0
    bl fn_80230E1C
L_803A1088:
    li 3, 0x1
    .4byte 0x48001808 # b .L_803A2894
L_803A1090:
    li 3, 0x1
    .4byte 0x48001800 # b .L_803A2894
L_803A1098:
    lwz 3, 0x0(30)
    lwz 0, 0x4(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 0, 0xc(1)
    bl fn_803A30BC
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x41820014 # beq .L_803A10CC
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A10D8
L_803A10CC:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A10D8:
    li 3, 0x1
    .4byte 0x480017B8 # b .L_803A2894
L_803A10E0:
    lbz 0, 0x0(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_803A10F4
    bl fn_803A3144
    .4byte 0x48000020 # b .L_803A1110
L_803A10F4:
    clrlslwi 0, 0, 24, 2
    .4byte 0x38820230 # li r4, lbl_805431D0@sda21
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 5, 0x1
    lwzx 4, 4, 0
    li 6, 0x0
    bl fn_80458FF0
L_803A1110:
    li 3, 0x1
    .4byte 0x48001780 # b .L_803A2894
L_803A1118:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_802373EC
    cmpwi 3, 0x0
    .4byte 0x4182008C # beq .L_803A11B8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_802373EC
    mr 29, 3
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023725C
    slwi 0, 3, 22
    lwz 3, 0x60(31)
    or 30, 0, 29
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023E724
    mr 29, 3
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023DE58
    lis 7, 0x4c53
    mr 4, 3
    addi 3, 7, 0x5449
    mr 5, 29
    mr 6, 30
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    li 4, 0x0
    li 5, 0x1
    bl fn_802372F8
L_803A11B8:
    li 3, 0x1
    .4byte 0x480016D8 # b .L_803A2894
L_803A11C0:
    lwz 3, 0x0(30)
    lwz 0, 0x4(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 0, 0xc(1)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x40820014 # bne .L_803A11F8
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A1204
L_803A11F8:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A1204:
    li 3, 0x1
    .4byte 0x4800168C # b .L_803A2894
L_803A120C:
    lwz 3, 0x60(31)
    bl fn_803A3068
    extsh 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3068
    lbz 4, 0x0(30)
    extsh 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48001658 # b .L_803A2894
L_803A1240:
    li 3, 0x1
    .4byte 0x48001650 # b .L_803A2894
L_803A1248:
    lwz 3, 0x60(31)
    bl fn_803A3060
    extsh 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3060
    lbz 4, 0x0(30)
    extsh 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x4800161C # b .L_803A2894
L_803A127C:
    lwz 3, 0x60(31)
    bl fn_803A3058
    mr 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3058
    lbz 4, 0x0(30)
    mr 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x480015E8 # b .L_803A2894
L_803A12B0:
    lwz 3, 0x60(31)
    bl fn_803A3050
    mr 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3050
    lbz 4, 0x0(30)
    mr 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x480015B4 # b .L_803A2894
L_803A12E4:
    li 3, 0x1
    .4byte 0x480015AC # b .L_803A2894
L_803A12EC:
    bl fn_803A3034
    clrlwi 4, 3, 16
    mr 3, 31
    bl fn_803A2E48
    bl fn_803A3034
    clrlwi 5, 3, 16
    mr 3, 31
    li 4, 0x4
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48001580 # b .L_803A2894
L_803A1318:
    bl fn_803A3018
    clrlwi 4, 3, 16
    mr 3, 31
    bl fn_803A2E48
    bl fn_803A3018
    clrlwi 5, 3, 16
    mr 3, 31
    li 4, 0x4
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48001554 # b .L_803A2894
L_803A1344:
    bl fn_803A2FE0
    mr 4, 3
    mr 3, 31
    bl fn_803A2E48
    bl fn_803A2FE0
    mr 5, 3
    mr 3, 31
    li 4, 0x6
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48001528 # b .L_803A2894
L_803A1370:
    lis 4, 0x2
    addi 0, 4, 0x1a
    cmpw 29, 0
    .4byte 0x418203A0 # beq .L_803A171C
    .4byte 0x40800164 # bge .L_803A14E4
    addi 0, 4, 0x8
    cmpw 29, 0
    .4byte 0x41820584 # beq .L_803A1910
    .4byte 0x408000BC # bge .L_803A144C
    lis 3, 0x1
    addi 0, 3, 0x14
    cmpw 29, 0
    .4byte 0x40800060 # bge .L_803A1400
    addi 0, 3, 0x7
    cmpw 29, 0
    .4byte 0x40800028 # bge .L_803A13D4
    cmpw 29, 3
    .4byte 0x40800010 # bge .L_803A13C4
    cmpwi 29, 0x0
    .4byte 0x41820270 # beq .L_803A162C
    .4byte 0x480014D0 # b .L_803A2890
L_803A13C4:
    addi 0, 3, 0x4
    cmpw 29, 0
    .4byte 0x40800298 # bge .L_803A1664
    .4byte 0x4800026C # b .L_803A163C
L_803A13D4:
    addi 0, 3, 0xd
    cmpw 29, 0
    .4byte 0x40800014 # bge .L_803A13F0
    addi 0, 3, 0xb
    cmpw 29, 0
    .4byte 0x4080027C # bge .L_803A1664
    .4byte 0x48000264 # b .L_803A1650
L_803A13F0:
    addi 0, 3, 0x10
    cmpw 29, 0
    .4byte 0x40800280 # bge .L_803A1678
    .4byte 0x48001494 # b .L_803A2890
L_803A1400:
    addi 0, 4, 0x3
    cmpw 29, 0
    .4byte 0x418203B0 # beq .L_803A17B8
    .4byte 0x40800020 # bge .L_803A142C
    addi 0, 4, 0x1
    cmpw 29, 0
    .4byte 0x418202A0 # beq .L_803A16B8
    .4byte 0x40800364 # bge .L_803A1780
    cmpw 29, 4
    .4byte 0x4080025C # bge .L_803A1680
    .4byte 0x48001468 # b .L_803A2890
L_803A142C:
    addi 0, 4, 0x6
    cmpw 29, 0
    .4byte 0x41820464 # beq .L_803A1898
    .4byte 0x40800494 # bge .L_803A18CC
    addi 0, 4, 0x5
    cmpw 29, 0
    .4byte 0x4080044C # bge .L_803A1890
    .4byte 0x48000438 # b .L_803A1880
L_803A144C:
    addi 0, 4, 0x11
    cmpw 29, 0
    .4byte 0x41820284 # beq .L_803A16D8
    .4byte 0x40800048 # bge .L_803A14A0
    addi 0, 4, 0xd
    cmpw 29, 0
    .4byte 0x41820540 # beq .L_803A19A4
    .4byte 0x40800024 # bge .L_803A148C
    addi 0, 4, 0xb
    cmpw 29, 0
    .4byte 0x418203C8 # beq .L_803A183C
    .4byte 0x40800318 # bge .L_803A1790
    addi 0, 4, 0xa
    cmpw 29, 0
    .4byte 0x4080020C # bge .L_803A1690
    .4byte 0x480002B4 # b .L_803A173C
L_803A148C:
    addi 0, 4, 0xf
    cmpw 29, 0
    .4byte 0x41820734 # beq .L_803A1BC8
    .4byte 0x40800768 # bge .L_803A1C00
    .4byte 0x480006DC # b .L_803A1B78
L_803A14A0:
    addi 0, 4, 0x16
    cmpw 29, 0
    .4byte 0x41820B24 # beq .L_803A1FCC
    .4byte 0x40800024 # bge .L_803A14D0
    addi 0, 4, 0x14
    cmpw 29, 0
    .4byte 0x418202D8 # beq .L_803A1790
    .4byte 0x40800AF4 # bge .L_803A1FB0
    addi 0, 4, 0x13
    cmpw 29, 0
    .4byte 0x40800310 # bge .L_803A17D8
    .4byte 0x480001C4 # b .L_803A1690
L_803A14D0:
    addi 0, 4, 0x18
    cmpw 29, 0
    .4byte 0x41820BA0 # beq .L_803A2078
    .4byte 0x408001A4 # bge .L_803A1680
    .4byte 0x48000B20 # b .L_803A2000
L_803A14E4:
    addi 0, 4, 0x2d
    cmpw 29, 0
    .4byte 0x41821034 # beq .L_803A2520
    .4byte 0x4080009C # bge .L_803A158C
    addi 0, 4, 0x23
    cmpw 29, 0
    .4byte 0x41820DC0 # beq .L_803A22BC
    .4byte 0x40800048 # bge .L_803A1548
    addi 0, 4, 0x1f
    cmpw 29, 0
    .4byte 0x41820C08 # beq .L_803A2114
    .4byte 0x40800024 # bge .L_803A1534
    addi 0, 4, 0x1d
    cmpw 29, 0
    .4byte 0x41820B9C # beq .L_803A20B8
    .4byte 0x40800BEC # bge .L_803A210C
    addi 0, 4, 0x1c
    cmpw 29, 0
    .4byte 0x408002F0 # bge .L_803A181C
    .4byte 0x48000250 # b .L_803A1780
L_803A1534:
    addi 0, 4, 0x21
    cmpw 29, 0
    .4byte 0x41820C04 # beq .L_803A2140
    .4byte 0x40800C4C # bge .L_803A218C
    .4byte 0x48000BD8 # b .L_803A211C
L_803A1548:
    addi 0, 4, 0x28
    cmpw 29, 0
    .4byte 0x41820F5C # beq .L_803A24AC
    .4byte 0x40800024 # bge .L_803A1578
    addi 0, 4, 0x26
    cmpw 29, 0
    .4byte 0x41820F00 # beq .L_803A2460
    .4byte 0x40800F34 # bge .L_803A2498
    addi 0, 4, 0x25
    cmpw 29, 0
    .4byte 0x40800ECC # bge .L_803A243C
    .4byte 0x48000DB8 # b .L_803A232C
L_803A1578:
    addi 0, 4, 0x2b
    cmpw 29, 0
    .4byte 0x41820F40 # beq .L_803A24C0
    .4byte 0x40800F50 # bge .L_803A24D4
    .4byte 0x48000F30 # b .L_803A24B8
L_803A158C:
    lis 3, 0x3
    addi 0, 3, 0x1
    cmpw 29, 0
    .4byte 0x418211C8 # beq .L_803A2760
    .4byte 0x4080004C # bge .L_803A15E8
    addi 0, 4, 0x32
    cmpw 29, 0
    .4byte 0x41821090 # beq .L_803A2638
    .4byte 0x40800024 # bge .L_803A15D0
    addi 0, 4, 0x30
    cmpw 29, 0
    .4byte 0x41821000 # beq .L_803A25B8
    .4byte 0x40801044 # bge .L_803A2600
    addi 0, 4, 0x2f
    cmpw 29, 0
    .4byte 0x40800FE8 # bge .L_803A25B0
    .4byte 0x48000F6C # b .L_803A2538
L_803A15D0:
    cmpw 29, 3
    .4byte 0x40801158 # bge .L_803A272C
    addi 0, 4, 0x34
    cmpw 29, 0
    .4byte 0x408012B0 # bge .L_803A2890
    .4byte 0x480010FC # b .L_803A26E0
L_803A15E8:
    addi 0, 3, 0x6
    cmpw 29, 0
    .4byte 0x4182121C # beq .L_803A280C
    .4byte 0x40800024 # bge .L_803A1618
    addi 0, 3, 0x4
    cmpw 29, 0
    .4byte 0x418211D0 # beq .L_803A27D0
    .4byte 0x40801200 # bge .L_803A2804
    addi 0, 3, 0x3
    cmpw 29, 0
    .4byte 0x4080118C # bge .L_803A279C
    .4byte 0x48001154 # b .L_803A2768
L_803A1618:
    addi 0, 3, 0x8
    cmpw 29, 0
    .4byte 0x41821244 # beq .L_803A2864
    .4byte 0x4080126C # bge .L_803A2890
    .4byte 0x48001210 # b .L_803A2838
L_803A162C:
    li 0, 0x1
    li 3, 0x1
    stw 0, 0x58(31)
    .4byte 0x4800125C # b .L_803A2894
L_803A163C:
    lwz 4, 0x50(31)
    li 3, 0x1
    addi 0, 4, 0x4
    stw 0, 0x50(31)
    .4byte 0x48001248 # b .L_803A2894
L_803A1650:
    lwz 4, 0x50(31)
    li 3, 0x1
    addi 0, 4, 0x4
    stw 0, 0x50(31)
    .4byte 0x48001234 # b .L_803A2894
L_803A1664:
    lwz 4, 0x50(31)
    li 3, 0x1
    addi 0, 4, 0x2
    stw 0, 0x50(31)
    .4byte 0x48001220 # b .L_803A2894
L_803A1678:
    li 3, 0x1
    .4byte 0x48001218 # b .L_803A2894
L_803A1680:
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x48001208 # b .L_803A2894
L_803A1690:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x480011E0 # b .L_803A2894
L_803A16B8:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x480011C0 # b .L_803A2894
L_803A16D8:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x4800117C # b .L_803A2894
L_803A171C:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x4800115C # b .L_803A2894
L_803A173C:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30F0
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x48001118 # b .L_803A2894
L_803A1780:
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x48001108 # b .L_803A2894
L_803A1790:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    bl fn_803A3114
    li 3, 0x1
    .4byte 0x480010E0 # b .L_803A2894
L_803A17B8:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x480010C0 # b .L_803A2894
L_803A17D8:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30E4
    li 3, 0x1
    .4byte 0x4800107C # b .L_803A2894
L_803A181C:
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x4800105C # b .L_803A2894
L_803A183C:
    lwz 3, 0x60(31)
    bl fn_803A310C
    mr 4, 3
    lwz 3, 0x60(31)
    lwz 5, 0x0(30)
    bl fn_803A30FC
    lwz 3, 0x60(31)
    lwz 4, 0x0(30)
    bl fn_803A30DC
    lwz 3, 0x60(31)
    bl fn_803A3114
    lwz 3, 0x60(31)
    bl fn_803A30C4
    lwz 3, 0x60(31)
    bl fn_803A30D0
    li 3, 0x1
    .4byte 0x48001018 # b .L_803A2894
L_803A1880:
    lhz 0, 0x0(30)
    li 3, 0x1
    stw 0, 0x4c(31)
    .4byte 0x48001008 # b .L_803A2894
L_803A1890:
    li 3, 0x1
    .4byte 0x48001000 # b .L_803A2894
L_803A1898:
    lbz 0, 0x1(30)
    lbz 3, 0x0(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803A18B8
    li 4, 0x1
    li 5, 0xff
    bl fn_8018E8DC
    .4byte 0x48000010 # b .L_803A18C4
L_803A18B8:
    li 4, 0x0
    li 5, 0xff
    bl fn_8018E8DC
L_803A18C4:
    li 3, 0x1
    .4byte 0x48000FCC # b .L_803A2894
L_803A18CC:
    lwz 4, 0x1(30)
    lwz 0, 0x5(30)
    lbz 3, 0x0(30)
    stw 4, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_803A18FC
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A1908
L_803A18FC:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A1908:
    li 3, 0x1
    .4byte 0x48000F88 # b .L_803A2894
L_803A1910:
    lbz 28, 0x0(30)
    li 0, 0x0
    lbz 27, 0x1(30)
    cmpwi 28, 0x0
    lbz 29, 0x2(30)
    lbz 30, 0x3(30)
    .4byte 0x41820010 # beq .L_803A1938
    cmplwi 27, 0x1
    .4byte 0x40820008 # bne .L_803A1938
    li 0, 0x1
L_803A1938:
    clrlwi 3, 0, 24
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x4082002C # bne .L_803A1970
    cmpwi 28, 0x0
    li 0, 0x0
    .4byte 0x41820010 # beq .L_803A1960
    cmplwi 27, 0x0
    .4byte 0x40820008 # bne .L_803A1960
    li 0, 0x1
L_803A1960:
    clrlwi 3, 0, 24
    bl fn_8018E930
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_803A199C
L_803A1970:
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_803A198C
    mr 3, 29
    li 4, 0x1
    li 5, 0xff
    bl fn_8018E8DC
    .4byte 0x48000014 # b .L_803A199C
L_803A198C:
    mr 3, 29
    li 4, 0x0
    li 5, 0xff
    bl fn_8018E8DC
L_803A199C:
    li 3, 0x1
    .4byte 0x48000EF4 # b .L_803A2894
L_803A19A4:
    lbz 3, 0x5(30)
    lwz 0, 0x0(30)
    cmplwi 3, 0x5
    lbz 27, 0x4(30)
    stw 0, 0x8(1)
    lbz 28, 0x6(30)
    .4byte 0x408200BC # bne .L_803A1A78
    li 26, 0x0
L_803A19C4:
    mr 3, 26
    bl fn_8018A614
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_803A1A68
    cmplwi 27, 0x0
    .4byte 0x4082002C # bne .L_803A1A04
    lwz 4, 0x8(1)
    cmpwi 4, 0x64
    .4byte 0x41800014 # blt .L_803A19F8
    mr 3, 26
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000074 # b .L_803A1A68
L_803A19F8:
    mr 3, 26
    bl fn_802362C4
    .4byte 0x48000068 # b .L_803A1A68
L_803A1A04:
    cmplwi 28, 0x0
    .4byte 0x40820034 # bne .L_803A1A3C
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A1A2C
    mr 3, 26
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000040 # b .L_803A1A68
L_803A1A2C:
    mr 3, 26
    neg 4, 0
    bl fn_802362C4
    .4byte 0x48000030 # b .L_803A1A68
L_803A1A3C:
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A1A5C
    mr 3, 26
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000010 # b .L_803A1A68
L_803A1A5C:
    mr 3, 26
    neg 4, 0
    bl fn_8023619C
L_803A1A68:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF54 # blt .L_803A19C4
    .4byte 0x480000FC # b .L_803A1B70
L_803A1A78:
    cmpwi 3, 0x3
    .4byte 0x4182003C # beq .L_803A1AB8
    .4byte 0x40800014 # bge .L_803A1A94
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_803A1AA0
    .4byte 0x40800020 # bge .L_803A1AAC
    .4byte 0x48000040 # b .L_803A1AD0
L_803A1A94:
    cmpwi 3, 0x5
    .4byte 0x40800038 # bge .L_803A1AD0
    .4byte 0x48000028 # b .L_803A1AC4
L_803A1AA0:
    li 0, 0x0
    stw 0, 0xc(1)
    .4byte 0x48000034 # b .L_803A1ADC
L_803A1AAC:
    li 0, 0x1
    stw 0, 0xc(1)
    .4byte 0x48000028 # b .L_803A1ADC
L_803A1AB8:
    li 0, 0x2
    stw 0, 0xc(1)
    .4byte 0x4800001C # b .L_803A1ADC
L_803A1AC4:
    li 0, 0x3
    stw 0, 0xc(1)
    .4byte 0x48000010 # b .L_803A1ADC
L_803A1AD0:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    stw 3, 0xc(1)
L_803A1ADC:
    cmplwi 27, 0x0
    .4byte 0x4082002C # bne .L_803A1B0C
    lwz 4, 0x8(1)
    cmpwi 4, 0x64
    .4byte 0x41800014 # blt .L_803A1B00
    lwz 3, 0xc(1)
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000074 # b .L_803A1B70
L_803A1B00:
    lwz 3, 0xc(1)
    bl fn_802362C4
    .4byte 0x48000068 # b .L_803A1B70
L_803A1B0C:
    cmplwi 28, 0x0
    .4byte 0x40820034 # bne .L_803A1B44
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A1B34
    lwz 3, 0xc(1)
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000040 # b .L_803A1B70
L_803A1B34:
    lwz 3, 0xc(1)
    neg 4, 0
    bl fn_802362C4
    .4byte 0x48000030 # b .L_803A1B70
L_803A1B44:
    lwz 0, 0x8(1)
    cmpwi 0, 0x64
    .4byte 0x41800018 # blt .L_803A1B64
    lwz 3, 0xc(1)
    neg 4, 0
    li 5, 0x0
    bl fn_803A3228
    .4byte 0x48000010 # b .L_803A1B70
L_803A1B64:
    lwz 3, 0xc(1)
    neg 4, 0
    bl fn_8023619C
L_803A1B70:
    li 3, 0x1
    .4byte 0x48000D20 # b .L_803A2894
L_803A1B78:
    lbz 29, 0x0(30)
    cmplwi 29, 0x0
    .4byte 0x4082002C # bne .L_803A1BAC
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_80237810
    mr 29, 3
    lwz 3, 0x60(31)
    bl fn_803A30BC
    mr 4, 29
    li 5, 0x0
    bl fn_80236554
    .4byte 0x48000018 # b .L_803A1BC0
L_803A1BAC:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlslwi 4, 29, 24, 2
    li 5, 0x0
    bl fn_80236554
L_803A1BC0:
    li 3, 0x1
    .4byte 0x48000CD0 # b .L_803A2894
L_803A1BC8:
    lbz 29, 0x0(30)
    cmplwi 29, 0x0
    .4byte 0x40820018 # bne .L_803A1BE8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    li 4, 0x180
    bl fn_80237524
    .4byte 0x48000014 # b .L_803A1BF8
L_803A1BE8:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 4, 29, 24
    bl fn_80237524
L_803A1BF8:
    li 3, 0x1
    .4byte 0x48000C98 # b .L_803A2894
L_803A1C00:
    lbz 29, 0x0(30)
    lwz 0, 0x5(30)
    lwz 3, 0x1(30)
    cmplwi 29, 0x10
    stw 0, 0xc(1)
    lbz 30, 0x9(30)
    stw 3, 0x8(1)
    stw 0, 0x10(1)
    .4byte 0x4181037C # bgt .L_803A1F9C
    lis 3, jumptable_804AF624@ha
    slwi 0, 29, 2
    addi 3, 3, jumptable_804AF624@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x40820348 # bne .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EF50
    bl fn_8015445C
    mr 26, 3
    bl fn_803A3220
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_803A1C84
    cmplwi 29, 0x0
    .4byte 0x4182004C # beq .L_803A1CCC
L_803A1C84:
    mr 3, 26
    bl fn_803A3220
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803A1C9C
    cmplwi 29, 0x1
    .4byte 0x41820034 # beq .L_803A1CCC
L_803A1C9C:
    mr 3, 26
    bl fn_803A3220
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_803A1CB4
    cmplwi 29, 0x2
    .4byte 0x4182001C # beq .L_803A1CCC
L_803A1CB4:
    mr 3, 26
    bl fn_803A3220
    cmpwi 3, 0x9
    .4byte 0x408202DC # bne .L_803A1F9C
    cmplwi 29, 0x10
    .4byte 0x408202D4 # bne .L_803A1F9C
L_803A1CCC:
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x418202C4 # beq .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480002B0 # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x424f
    cmplwi 0, 0x5244
    .4byte 0x40820294 # bne .L_803A1F9C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820284 # beq .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x48000270 # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x5354
    cmplwi 0, 0x4f4e
    .4byte 0x40820254 # bne .L_803A1F9C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820244 # beq .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x48000230 # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x40820214 # bne .L_803A1F9C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820204 # beq .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480001F0 # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4e49
    cmplwi 0, 0x5741
    .4byte 0x408201D4 # bne .L_803A1F9C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x418201C4 # beq .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480001B0 # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x4752
    cmplwi 0, 0x4153
    .4byte 0x40820194 # bne .L_803A1F9C
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x41820184 # beq .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x48000170 # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x5455
    cmplwi 0, 0x424f
    .4byte 0x40820154 # bne .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EF50
    bl fn_8015445C
    mr 26, 3
    bl fn_801544C8
    extrwi. 0, 3, 5, 20
    .4byte 0x4082000C # bne .L_803A1E78
    cmplwi 29, 0xa
    .4byte 0x4182003C # beq .L_803A1EB0
L_803A1E78:
    mr 3, 26
    bl fn_801544C8
    extrwi 0, 3, 5, 20
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_803A1E94
    cmplwi 29, 0x8
    .4byte 0x41820020 # beq .L_803A1EB0
L_803A1E94:
    mr 3, 26
    bl fn_801544C8
    extrwi 0, 3, 5, 20
    cmplwi 0, 0x2
    .4byte 0x408200F8 # bne .L_803A1F9C
    cmplwi 29, 0x9
    .4byte 0x408200F0 # bne .L_803A1F9C
L_803A1EB0:
    lwz 0, 0x8(1)
    cmplwi 30, 0x0
    stw 0, 0x10(1)
    .4byte 0x418200E0 # beq .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    .4byte 0x480000CC # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EEB4
    subis 0, 3, 0x504c
    cmplwi 0, 0x4159
    .4byte 0x408200B0 # bne .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_803A1F10
    cmplwi 29, 0xb
    .4byte 0x41820064 # beq .L_803A1F70
L_803A1F10:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803A1F30
    cmplwi 29, 0xc
    .4byte 0x41820044 # beq .L_803A1F70
L_803A1F30:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_803A1F50
    cmplwi 29, 0xd
    .4byte 0x41820024 # beq .L_803A1F70
L_803A1F50:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023ECF0
    cmpwi 3, 0x3
    .4byte 0x40820038 # bne .L_803A1F9C
    cmplwi 29, 0xe
    .4byte 0x40820030 # bne .L_803A1F9C
L_803A1F70:
    lwz 0, 0x8(1)
    stw 0, 0x10(1)
    .4byte 0x48000024 # b .L_803A1F9C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_803A1F9C
    lwz 0, 0x8(1)
    stw 0, 0x10(1)
L_803A1F9C:
    lwz 3, 0x60(31)
    lwz 4, 0x10(1)
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x480008E8 # b .L_803A2894
L_803A1FB0:
    lwz 5, 0x0(30)
    lwz 3, 0x60(31)
    stw 5, 0x8(1)
    lbz 4, 0x4(30)
    bl fn_803A30A4
    li 3, 0x1
    .4byte 0x480008CC # b .L_803A2894
L_803A1FCC:
    lbz 27, 0x0(30)
    cmplwi 27, 0x5
    .4byte 0x40810024 # ble .L_803A1FF8
    clrlwi 0, 27, 24
    cmplwi 0, 0xb
    .4byte 0x41820018 # beq .L_803A1FF8
    lwz 3, 0x60(31)
    bl fn_803A309C
    mr 4, 27
    li 5, 0x0
    bl fn_8045B030
L_803A1FF8:
    li 3, 0x1
    .4byte 0x48000898 # b .L_803A2894
L_803A2000:
    lbz 29, 0x0(30)
    bl fn_80154744
    clrlwi 4, 29, 24
    lis 0, 0x4330
    stw 4, 0x2c(1)
    .4byte 0xC8420298 # lfd f2, lbl_80543238@sda21(r0)
    stw 0, 0x28(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    addi 28, 3, 0x1
    cmpw 28, 4
    .4byte 0x40810008 # ble .L_803A2044
    mr 28, 4
L_803A2044:
    lwz 3, 0x60(31)
    bl fn_803A3094
    bl fn_803846A4
    stw 3, 0x8(1)
    add 3, 3, 28
    stw 3, 0x8(1)
    bl fn_803846BC
    mr 4, 3
    lwz 3, 0x60(31)
    stw 4, 0xc(1)
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x48000820 # b .L_803A2894
L_803A2078:
    lwz 5, 0x0(30)
    lwz 4, 0x4(30)
    lwz 3, 0x8(30)
    lwz 0, 0xc(30)
    stw 5, 0x8(1)
    stw 4, 0xc(1)
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    bl fn_8018E89C
    slwi 0, 3, 2
    addi 4, 1, 0x4
    lwz 3, 0x60(31)
    lwzx 4, 4, 0
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x480007E0 # b .L_803A2894
L_803A20B8:
    lwz 3, 0x0(30)
    lwz 4, 0x4(30)
    lwz 0, 0x8(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 4, 0xc(1)
    stw 0, 0x10(1)
    bl fn_803A30BC
    bl fn_80236100
    lwz 0, 0x8(1)
    cmpw 3, 0
    .4byte 0x41800014 # blt .L_803A20F8
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A2104
L_803A20F8:
    lwz 3, 0x60(31)
    lwz 4, 0x10(1)
    bl fn_803A30DC
L_803A2104:
    li 3, 0x1
    .4byte 0x4800078C # b .L_803A2894
L_803A210C:
    li 3, 0x1
    .4byte 0x48000784 # b .L_803A2894
L_803A2114:
    li 3, 0x1
    .4byte 0x4800077C # b .L_803A2894
L_803A211C:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    slwi 0, 3, 2
    lwz 3, 0x60(31)
    lwzx 4, 30, 0
    stw 4, 0x8(1)
    bl fn_803A30DC
    li 3, 0x1
    .4byte 0x48000758 # b .L_803A2894
L_803A2140:
    lwz 0, 0x0(30)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_803A3200
    mr 29, 3
    bl fn_803A3210
    mr 4, 29
    bl fn_8019CE40
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_803A2178
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A2184
L_803A2178:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A2184:
    li 3, 0x1
    .4byte 0x4800070C # b .L_803A2894
L_803A218C:
    lbz 3, 0x0(30)
    lhz 27, 0x1(30)
    cmplwi 3, 0x5
    lbz 0, 0x3(30)
    .4byte 0x40820094 # bne .L_803A2230
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_803A21EC
    mr 4, 27
    li 3, 0x0
    li 5, 0x1
    bl fn_803A31AC
    mr 4, 27
    li 3, 0x1
    li 5, 0x1
    bl fn_803A31AC
    mr 4, 27
    li 3, 0x2
    li 5, 0x1
    bl fn_803A31AC
    mr 4, 27
    li 3, 0x3
    li 5, 0x1
    bl fn_803A31AC
    .4byte 0x480000CC # b .L_803A22B4
L_803A21EC:
    mr 4, 27
    li 3, 0x0
    li 5, 0x0
    bl fn_803A31AC
    mr 4, 27
    li 3, 0x1
    li 5, 0x0
    bl fn_803A31AC
    mr 4, 27
    li 3, 0x2
    li 5, 0x0
    bl fn_803A31AC
    mr 4, 27
    li 3, 0x3
    li 5, 0x0
    bl fn_803A31AC
    .4byte 0x48000088 # b .L_803A22B4
L_803A2230:
    cmplwi 3, 0x1
    .4byte 0x41800044 # blt .L_803A2278
    cmplwi 3, 0x4
    .4byte 0x4181003C # bgt .L_803A2278
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803A2260
    subi 0, 3, 0x1
    mr 4, 27
    clrlwi 3, 0, 24
    li 5, 0x1
    bl fn_803A31AC
    .4byte 0x48000058 # b .L_803A22B4
L_803A2260:
    subi 0, 3, 0x1
    mr 4, 27
    clrlwi 3, 0, 24
    li 5, 0x0
    bl fn_803A31AC
    .4byte 0x48000040 # b .L_803A22B4
L_803A2278:
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_803A229C
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 3, 3, 24
    mr 4, 27
    li 5, 0x1
    bl fn_803A31AC
    .4byte 0x4800001C # b .L_803A22B4
L_803A229C:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 3, 3, 24
    mr 4, 27
    li 5, 0x0
    bl fn_803A31AC
L_803A22B4:
    li 3, 0x1
    .4byte 0x480005DC # b .L_803A2894
L_803A22BC:
    lbz 3, 0x0(30)
    lwz 4, 0x3(30)
    lwz 0, 0x7(30)
    cmplwi 3, 0x1
    stw 4, 0x8(1)
    lhz 27, 0x1(30)
    stw 0, 0xc(1)
    .4byte 0x41800014 # blt .L_803A22EC
    cmplwi 3, 0x4
    .4byte 0x4181000C # bgt .L_803A22EC
    subi 3, 3, 0x1
    .4byte 0x48000010 # b .L_803A22F8
L_803A22EC:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    clrlwi 3, 3, 24
L_803A22F8:
    mr 4, 27
    bl fn_803A3168
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_803A2318
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A2324
L_803A2318:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A2324:
    li 3, 0x1
    .4byte 0x4800056C # b .L_803A2894
L_803A232C:
    lbz 29, 0x0(30)
    lbz 27, 0x1(30)
    cmpwi 29, 0x5
    lbz 28, 0x2(30)
    .4byte 0x41820020 # beq .L_803A235C
    .4byte 0x40800028 # bge .L_803A2368
    cmpwi 29, 0x1
    .4byte 0x40800008 # bge .L_803A2350
    .4byte 0x4800001C # b .L_803A2368
L_803A2350:
    subi 0, 29, 0x1
    stw 0, 0x8(1)
    .4byte 0x4800001C # b .L_803A2374
L_803A235C:
    li 0, 0x5
    stw 0, 0x8(1)
    .4byte 0x48000010 # b .L_803A2374
L_803A2368:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    stw 3, 0x8(1)
L_803A2374:
    cmplwi 28, 0x1
    .4byte 0x40820014 # bne .L_803A238C
    lis 3, lbl_80475D24@ha
    addi 3, 3, lbl_80475D24@l
    lbzx 0, 3, 27
    .4byte 0x48000010 # b .L_803A2398
L_803A238C:
    lis 3, lbl_80475D44@ha
    addi 3, 3, lbl_80475D44@l
    lbzx 0, 3, 27
L_803A2398:
    li 26, 0x0
    clrlwi 28, 0, 24
L_803A23A0:
    mr 3, 26
    bl fn_8018A614
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_803A2428
    lwz 0, 0x8(1)
    cmplw 26, 0
    .4byte 0x4182000C # beq .L_803A23C4
    cmplwi 29, 0x5
    .4byte 0x40820068 # bne .L_803A2428
L_803A23C4:
    mr 3, 26
    bl fn_8022EA0C
    slwi 0, 3, 12
    mr 3, 26
    ori 27, 0, 0x100
    or 27, 27, 28
    bl fn_8022EA0C
    bl fn_8023E724
    mr 30, 3
    mr 3, 26
    bl fn_8022EA0C
    bl fn_8023DE58
    lis 7, 0x544b
    mr 4, 3
    addi 3, 7, 0x5241
    mr 5, 30
    mr 6, 27
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    mr 0, 3
    lwz 3, 0x60(31)
    mr 5, 0
    mr 4, 26
    bl fn_803A3084
L_803A2428:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF70 # blt .L_803A23A0
    li 3, 0x1
    .4byte 0x4800045C # b .L_803A2894
L_803A243C:
    lwz 5, 0x0(30)
    li 4, 0x0
    lwz 3, 0x60(31)
    stw 5, 0x8(1)
    bl fn_803A30A4
    lwz 3, 0x60(31)
    bl fn_803A30B0
    li 3, 0x1
    .4byte 0x48000438 # b .L_803A2894
L_803A2460:
    lwz 0, 0x0(30)
    lbz 27, 0x4(30)
    stw 0, 0x8(1)
    lbz 28, 0x5(30)
    bl fn_803A300C
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_803A2490
    lwz 3, 0x60(31)
    mr 5, 27
    lwz 4, 0x8(1)
    mr 6, 28
    bl fn_803944C8
L_803A2490:
    li 3, 0x1
    .4byte 0x48000400 # b .L_803A2894
L_803A2498:
    lwz 3, 0x60(31)
    bl fn_803A3078
    bl fn_803A2FFC
    li 3, 0x1
    .4byte 0x480003EC # b .L_803A2894
L_803A24AC:
    bl fn_803A2FEC
    li 3, 0x1
    .4byte 0x480003E0 # b .L_803A2894
L_803A24B8:
    li 3, 0x1
    .4byte 0x480003D8 # b .L_803A2894
L_803A24C0:
    lwz 3, 0x60(31)
    lbz 4, 0x0(30)
    bl fn_803A3070
    li 3, 0x1
    .4byte 0x480003C4 # b .L_803A2894
L_803A24D4:
    lwz 3, 0x0(30)
    lwz 0, 0x4(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 0, 0xc(1)
    bl fn_803A30BC
    bl fn_8013997C
    clrlwi 0, 3, 24
    cmplwi 0, 0x2
    .4byte 0x40820014 # bne .L_803A250C
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A2518
L_803A250C:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A2518:
    li 3, 0x1
    .4byte 0x48000378 # b .L_803A2894
L_803A2520:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023EE28
    li 3, 0x1
    .4byte 0x48000360 # b .L_803A2894
L_803A2538:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    cmpwi 3, 0x0
    .4byte 0x41800064 # blt .L_803A25A8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    cmpwi 3, 0x4
    .4byte 0x40800054 # bge .L_803A25A8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8018A614
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_803A25A8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8013997C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_803A25A8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800014 # blt .L_803A25A8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    li 4, 0x0
    bl fn_80230E1C
L_803A25A8:
    li 3, 0x1
    .4byte 0x480002E8 # b .L_803A2894
L_803A25B0:
    li 3, 0x1
    .4byte 0x480002E0 # b .L_803A2894
L_803A25B8:
    lwz 3, 0x0(30)
    lwz 0, 0x4(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 0, 0xc(1)
    bl fn_803A30BC
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x41820014 # beq .L_803A25EC
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A25F8
L_803A25EC:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A25F8:
    li 3, 0x1
    .4byte 0x48000298 # b .L_803A2894
L_803A2600:
    lbz 0, 0x0(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_803A2614
    bl fn_803A3144
    .4byte 0x48000020 # b .L_803A2630
L_803A2614:
    clrlslwi 0, 0, 24, 2
    .4byte 0x38820230 # li r4, lbl_805431D0@sda21
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 5, 0x1
    lwzx 4, 4, 0
    li 6, 0x0
    bl fn_80458FF0
L_803A2630:
    li 3, 0x1
    .4byte 0x48000260 # b .L_803A2894
L_803A2638:
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_802373EC
    cmpwi 3, 0x0
    .4byte 0x4182008C # beq .L_803A26D8
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_802373EC
    mr 29, 3
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023725C
    slwi 0, 3, 22
    lwz 3, 0x60(31)
    or 30, 0, 29
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023E724
    mr 29, 3
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_8023DE58
    lis 7, 0x4c53
    mr 4, 3
    addi 3, 7, 0x5449
    mr 5, 29
    mr 6, 30
    li 7, -0x1
    li 8, -0x1
    bl fn_80154310
    lwz 3, 0x60(31)
    bl fn_803A30BC
    bl fn_8022EA0C
    li 4, 0x0
    li 5, 0x1
    bl fn_802372F8
L_803A26D8:
    li 3, 0x1
    .4byte 0x480001B8 # b .L_803A2894
L_803A26E0:
    lwz 3, 0x0(30)
    lwz 0, 0x4(30)
    stw 3, 0x8(1)
    lwz 3, 0x60(31)
    stw 0, 0xc(1)
    bl fn_803A30BC
    bl fn_8022EA0C
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x40820014 # bne .L_803A2718
    lwz 3, 0x60(31)
    lwz 4, 0x8(1)
    bl fn_803A30DC
    .4byte 0x48000010 # b .L_803A2724
L_803A2718:
    lwz 3, 0x60(31)
    lwz 4, 0xc(1)
    bl fn_803A30DC
L_803A2724:
    li 3, 0x1
    .4byte 0x4800016C # b .L_803A2894
L_803A272C:
    lwz 3, 0x60(31)
    bl fn_803A3068
    extsh 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3068
    lbz 4, 0x0(30)
    extsh 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48000138 # b .L_803A2894
L_803A2760:
    li 3, 0x1
    .4byte 0x48000130 # b .L_803A2894
L_803A2768:
    lwz 3, 0x60(31)
    bl fn_803A3060
    extsh 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3060
    lbz 4, 0x0(30)
    extsh 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x480000FC # b .L_803A2894
L_803A279C:
    lwz 3, 0x60(31)
    bl fn_803A3058
    mr 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3058
    lbz 4, 0x0(30)
    mr 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x480000C8 # b .L_803A2894
L_803A27D0:
    lwz 3, 0x60(31)
    bl fn_803A3050
    mr 4, 3
    mr 3, 31
    bl fn_803A2E48
    lwz 3, 0x60(31)
    bl fn_803A3050
    lbz 4, 0x0(30)
    mr 5, 3
    mr 3, 31
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48000094 # b .L_803A2894
L_803A2804:
    li 3, 0x1
    .4byte 0x4800008C # b .L_803A2894
L_803A280C:
    bl fn_803A3034
    clrlwi 4, 3, 16
    mr 3, 31
    bl fn_803A2E48
    bl fn_803A3034
    clrlwi 5, 3, 16
    mr 3, 31
    li 4, 0x4
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48000060 # b .L_803A2894
L_803A2838:
    bl fn_803A3018
    clrlwi 4, 3, 16
    mr 3, 31
    bl fn_803A2E48
    bl fn_803A3018
    clrlwi 5, 3, 16
    mr 3, 31
    li 4, 0x4
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48000034 # b .L_803A2894
L_803A2864:
    bl fn_803A2FE0
    mr 4, 3
    mr 3, 31
    bl fn_803A2E48
    bl fn_803A2FE0
    mr 5, 3
    mr 3, 31
    li 4, 0x6
    bl fn_803A2CB0
    li 3, 0x1
    .4byte 0x48000008 # b .L_803A2894
L_803A2890:
    li 3, 0x0
L_803A2894:
    lmw 26, 0x38(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

