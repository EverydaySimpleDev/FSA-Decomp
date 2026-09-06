.text
.balign 4
.global fn_8006B334
.global fn_8006B414
.global fn_8006B4E8
.global vprintf
.global fn_8006B5F4
.global fn_8006B6D4
.global __FileWrite
.global __pformatter
.global float2str
.global fn_8006C628
.global double2hex
.global longlong2str_8006CA8C
.global long2str_8006CDA0
.global parse_format_8006CFF8

fn_8006B334:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stmw 25, 0x84(1)
    mr 25, 3
    mr 26, 4
    .4byte 0x40860024 # bne cr1, .L_8006B370
    stfd 1, 0x28(1)
    stfd 2, 0x30(1)
    stfd 3, 0x38(1)
    stfd 4, 0x40(1)
    stfd 5, 0x48(1)
    stfd 6, 0x50(1)
    stfd 7, 0x58(1)
    stfd 8, 0x60(1)
L_8006B370:
    addi 29, 1, 0xa8
    addi 30, 1, 0x8
    lis 28, 0x200
    li 31, -0x1
    li 12, 0x0
    lis 11, fn_8006B6D4@ha
    stw 4, 0xc(1)
    addi 27, 1, 0x74
    addi 0, 11, fn_8006B6D4@l
    addi 4, 1, 0x68
    stw 3, 0x8(1)
    mr 3, 0
    stw 5, 0x10(1)
    mr 5, 26
    stw 6, 0x14(1)
    mr 6, 27
    stw 7, 0x18(1)
    stw 8, 0x1c(1)
    stw 9, 0x20(1)
    stw 10, 0x24(1)
    stw 28, 0x74(1)
    stw 29, 0x78(1)
    stw 30, 0x7c(1)
    stw 25, 0x68(1)
    stw 31, 0x6c(1)
    stw 12, 0x70(1)
    bl __pformatter
    cmplwi 25, 0x0
    .4byte 0x41820020 # beq .L_8006B400
    li 0, -0x1
    li 4, -0x2
    cmplw 3, 0
    .4byte 0x40800008 # bge .L_8006B3F8
    mr 4, 3
L_8006B3F8:
    li 0, 0x0
    stbx 0, 25, 4
L_8006B400:
    lmw 25, 0x84(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8006B414:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stmw 26, 0x88(1)
    mr 26, 3
    mr 27, 4
    .4byte 0x40860024 # bne cr1, .L_8006B450
    stfd 1, 0x28(1)
    stfd 2, 0x30(1)
    stfd 3, 0x38(1)
    stfd 4, 0x40(1)
    stfd 5, 0x48(1)
    stfd 6, 0x50(1)
    stfd 7, 0x58(1)
    stfd 8, 0x60(1)
L_8006B450:
    addi 30, 1, 0xa8
    addi 31, 1, 0x8
    lis 29, 0x300
    li 12, 0x0
    lis 11, fn_8006B6D4@ha
    stw 4, 0xc(1)
    addi 28, 1, 0x74
    addi 4, 1, 0x68
    stw 6, 0x14(1)
    addi 0, 11, fn_8006B6D4@l
    mr 6, 28
    stw 3, 0x8(1)
    mr 3, 0
    stw 5, 0x10(1)
    stw 7, 0x18(1)
    stw 8, 0x1c(1)
    stw 9, 0x20(1)
    stw 10, 0x24(1)
    stw 29, 0x74(1)
    stw 30, 0x78(1)
    stw 31, 0x7c(1)
    stw 26, 0x68(1)
    stw 27, 0x6c(1)
    stw 12, 0x70(1)
    bl __pformatter
    cmplwi 26, 0x0
    .4byte 0x4182001C # beq .L_8006B4D4
    cmplw 3, 27
    subi 4, 27, 0x1
    .4byte 0x40800008 # bge .L_8006B4CC
    mr 4, 3
L_8006B4CC:
    li 0, 0x0
    stbx 0, 26, 4
L_8006B4D4:
    lmw 26, 0x88(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8006B4E8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    mr 31, 4
    addi 4, 1, 0x8
    stw 30, 0x18(1)
    mr 30, 3
    lis 3, fn_8006B6D4@ha
    stw 30, 0x8(1)
    addi 3, 3, fn_8006B6D4@l
    stw 31, 0xc(1)
    stw 0, 0x10(1)
    bl __pformatter
    cmplwi 30, 0x0
    .4byte 0x4182001C # beq .L_8006B544
    cmplw 3, 31
    subi 4, 31, 0x1
    .4byte 0x40800008 # bge .L_8006B53C
    mr 4, 3
L_8006B53C:
    li 0, 0x0
    stbx 0, 30, 4
L_8006B544:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

vprintf:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, __files@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    addi 4, 5, __files@l
    stw 29, 0x14(1)
    addi 31, 4, 0x50
    mr 29, 3
    li 4, -0x1
    mr 3, 31
    bl fwide
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8006B5A4
    li 3, -0x1
    .4byte 0x48000038 # b .L_8006B5D8
L_8006B5A4:
    li 3, 0x2
    bl __begin_critical_region
    lis 3, __FileWrite@ha
    mr 4, 31
    addi 3, 3, __FileWrite@l
    mr 5, 29
    mr 6, 30
    bl __pformatter
    mr 0, 3
    li 3, 0x2
    mr 31, 0
    bl __end_critical_region
    mr 3, 31
L_8006B5D8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8006B5F4:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 4
    stw 30, 0x78(1)
    mr 30, 3
    .4byte 0x40860024 # bne cr1, .L_8006B634
    stfd 1, 0x28(1)
    stfd 2, 0x30(1)
    stfd 3, 0x38(1)
    stfd 4, 0x40(1)
    stfd 5, 0x48(1)
    stfd 6, 0x50(1)
    stfd 7, 0x58(1)
    stfd 8, 0x60(1)
L_8006B634:
    stw 3, 0x8(1)
    mr 3, 30
    stw 4, 0xc(1)
    li 4, -0x1
    stw 5, 0x10(1)
    stw 6, 0x14(1)
    stw 7, 0x18(1)
    stw 8, 0x1c(1)
    stw 9, 0x20(1)
    stw 10, 0x24(1)
    bl fwide
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8006B670
    li 3, -0x1
    .4byte 0x48000050 # b .L_8006B6BC
L_8006B670:
    li 3, 0x2
    bl __begin_critical_region
    addi 5, 1, 0x88
    addi 0, 1, 0x8
    lis 4, 0x200
    lis 3, __FileWrite@ha
    stw 4, 0x68(1)
    addi 6, 1, 0x68
    addi 3, 3, __FileWrite@l
    mr 4, 30
    stw 5, 0x6c(1)
    mr 5, 31
    stw 0, 0x70(1)
    bl __pformatter
    mr 0, 3
    li 3, 0x2
    mr 31, 0
    bl __end_critical_region
    mr 3, 31
L_8006B6BC:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8006B6D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x8(3)
    lwz 6, 0x4(30)
    add 0, 3, 5
    cmplw 0, 6
    subf 31, 3, 6
    .4byte 0x41810008 # bgt .L_8006B708
    mr 31, 5
L_8006B708:
    lwz 0, 0x0(30)
    mr 5, 31
    add 3, 0, 3
    bl memcpy
    lwz 0, 0x8(30)
    li 3, 0x1
    add 0, 0, 31
    stw 0, 0x8(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

__FileWrite:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 5
    stw 30, 0x8(1)
    mr 30, 3
    mr 3, 4
    li 4, 0x1
    mr 6, 30
    bl fwrite
    cmplw 31, 3
    .4byte 0x4082000C # bne .L_8006B77C
    mr 3, 30
    .4byte 0x48000008 # b .L_8006B780
L_8006B77C:
    li 3, 0x0
L_8006B780:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

__pformatter:
    stwu 1, -0x2c0(1)
    mflr 0
    stw 0, 0x2c4(1)
    li 0, 0x20
    stmw 19, 0x28c(1)
    mr 31, 3
    mr 30, 4
    mr 29, 6
    mr 26, 5
    addi 24, 1, 0x27c
    addi 21, 1, 0x27b
    li 27, 0x0
    stb 0, 0x9(1)
    .4byte 0x4800071C # b .L_8006BEE8
L_8006B7D0:
    mr 3, 26
    li 4, 0x25
    bl strchr
    mr. 25, 3
    .4byte 0x4082003C # bne .L_8006B81C
    mr 3, 26
    bl strlen
    mr. 5, 3
    add 27, 27, 5
    .4byte 0x41820700 # beq .L_8006BEF4
    mr 12, 31
    mr 3, 30
    mr 4, 26
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x408206E4 # bne .L_8006BEF4
    li 3, -0x1
    .4byte 0x480006E0 # b .L_8006BEF8
L_8006B81C:
    subf. 5, 26, 25
    add 27, 27, 5
    .4byte 0x41820028 # beq .L_8006B84C
    mr 12, 31
    mr 3, 30
    mr 4, 26
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8006B84C
    li 3, -0x1
    .4byte 0x480006B0 # b .L_8006BEF8
L_8006B84C:
    mr 3, 25
    mr 4, 29
    addi 5, 1, 0x6c
    bl parse_format_8006CFF8
    lbz 0, 0x71(1)
    mr 26, 3
    cmpwi 0, 0x68
    .4byte 0x41820500 # beq .L_8006BD68
    .4byte 0x40800060 # bge .L_8006B8CC
    cmpwi 0, 0x58
    .4byte 0x418201B0 # beq .L_8006BA24
    .4byte 0x40800030 # bge .L_8006B8A8
    cmpwi 0, 0x41
    .4byte 0x4182030C # beq .L_8006BB8C
    .4byte 0x40800010 # bge .L_8006B894
    cmpwi 0, 0x25
    .4byte 0x418204C8 # beq .L_8006BD54
    .4byte 0x480004D8 # b .L_8006BD68
L_8006B894:
    cmpwi 0, 0x48
    .4byte 0x408004D0 # bge .L_8006BD68
    cmpwi 0, 0x45
    .4byte 0x40800280 # bge .L_8006BB20
    .4byte 0x480004C4 # b .L_8006BD68
L_8006B8A8:
    cmpwi 0, 0x63
    .4byte 0x41820488 # beq .L_8006BD34
    .4byte 0x40800010 # bge .L_8006B8C0
    cmpwi 0, 0x61
    .4byte 0x418202D4 # beq .L_8006BB8C
    .4byte 0x480004AC # b .L_8006BD68
L_8006B8C0:
    cmpwi 0, 0x65
    .4byte 0x4080025C # bge .L_8006BB20
    .4byte 0x48000060 # b .L_8006B928
L_8006B8CC:
    cmpwi 0, 0x74
    .4byte 0x41820498 # beq .L_8006BD68
    .4byte 0x40800030 # bge .L_8006B904
    cmpwi 0, 0x6f
    .4byte 0x41820148 # beq .L_8006BA24
    .4byte 0x40800018 # bge .L_8006B8F8
    cmpwi 0, 0x6e
    .4byte 0x408003E8 # bge .L_8006BCD0
    cmpwi 0, 0x6a
    .4byte 0x40800478 # bge .L_8006BD68
    .4byte 0x48000034 # b .L_8006B928
L_8006B8F8:
    cmpwi 0, 0x73
    .4byte 0x408002FC # bge .L_8006BBF8
    .4byte 0x48000468 # b .L_8006BD68
L_8006B904:
    cmpwi 0, 0x78
    .4byte 0x4182011C # beq .L_8006BA24
    .4byte 0x40800010 # bge .L_8006B91C
    cmpwi 0, 0x76
    .4byte 0x40800454 # bge .L_8006BD68
    .4byte 0x4800010C # b .L_8006BA24
L_8006B91C:
    cmpwi 0, 0xff
    .4byte 0x41820448 # beq .L_8006BD68
    .4byte 0x48000444 # b .L_8006BD68
L_8006B928:
    lbz 0, 0x70(1)
    cmplwi 0, 0x3
    .4byte 0x40820018 # bne .L_8006B948
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 28, 0x0(3)
    .4byte 0x48000034 # b .L_8006B978
L_8006B948:
    cmplwi 0, 0x4
    .4byte 0x4082001C # bne .L_8006B968
    mr 3, 29
    li 4, 0x2
    bl __va_arg
    lwz 22, 0x0(3)
    lwz 23, 0x4(3)
    .4byte 0x48000014 # b .L_8006B978
L_8006B968:
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 28, 0x0(3)
L_8006B978:
    lbz 3, 0x70(1)
    cmplwi 3, 0x2
    .4byte 0x4082000C # bne .L_8006B98C
    extsh 0, 28
    mr 28, 0
L_8006B98C:
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8006B99C
    extsb 0, 28
    mr 28, 0
L_8006B99C:
    cmplwi 3, 0x4
    .4byte 0x40820044 # bne .L_8006B9E4
    lwz 9, 0x6c(1)
    mr 4, 23
    lwz 8, 0x70(1)
    mr 3, 22
    lwz 7, 0x74(1)
    mr 5, 24
    lwz 0, 0x78(1)
    addi 6, 1, 0x5c
    stw 9, 0x5c(1)
    stw 8, 0x60(1)
    stw 7, 0x64(1)
    stw 0, 0x68(1)
    bl longlong2str_8006CA8C
    mr. 20, 3
    .4byte 0x4182038C # beq .L_8006BD68
    .4byte 0x4800003C # b .L_8006BA1C
L_8006B9E4:
    lwz 8, 0x6c(1)
    mr 3, 28
    lwz 7, 0x70(1)
    mr 4, 24
    lwz 6, 0x74(1)
    addi 5, 1, 0x4c
    lwz 0, 0x78(1)
    stw 8, 0x4c(1)
    stw 7, 0x50(1)
    stw 6, 0x54(1)
    stw 0, 0x58(1)
    bl long2str_8006CDA0
    mr. 20, 3
    .4byte 0x41820350 # beq .L_8006BD68
L_8006BA1C:
    subf 25, 20, 21
    .4byte 0x48000388 # b .L_8006BDA8
L_8006BA24:
    lbz 0, 0x70(1)
    cmplwi 0, 0x3
    .4byte 0x40820018 # bne .L_8006BA44
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 28, 0x0(3)
    .4byte 0x48000034 # b .L_8006BA74
L_8006BA44:
    cmplwi 0, 0x4
    .4byte 0x4082001C # bne .L_8006BA64
    mr 3, 29
    li 4, 0x2
    bl __va_arg
    lwz 22, 0x0(3)
    lwz 23, 0x4(3)
    .4byte 0x48000014 # b .L_8006BA74
L_8006BA64:
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 28, 0x0(3)
L_8006BA74:
    lbz 3, 0x70(1)
    cmplwi 3, 0x2
    .4byte 0x4082000C # bne .L_8006BA88
    clrlwi 0, 28, 16
    mr 28, 0
L_8006BA88:
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8006BA98
    clrlwi 0, 28, 24
    mr 28, 0
L_8006BA98:
    cmplwi 3, 0x4
    .4byte 0x40820044 # bne .L_8006BAE0
    lwz 9, 0x6c(1)
    mr 4, 23
    lwz 8, 0x70(1)
    mr 3, 22
    lwz 7, 0x74(1)
    mr 5, 24
    lwz 0, 0x78(1)
    addi 6, 1, 0x3c
    stw 9, 0x3c(1)
    stw 8, 0x40(1)
    stw 7, 0x44(1)
    stw 0, 0x48(1)
    bl longlong2str_8006CA8C
    mr. 20, 3
    .4byte 0x41820290 # beq .L_8006BD68
    .4byte 0x4800003C # b .L_8006BB18
L_8006BAE0:
    lwz 8, 0x6c(1)
    mr 3, 28
    lwz 7, 0x70(1)
    mr 4, 24
    lwz 6, 0x74(1)
    addi 5, 1, 0x2c
    lwz 0, 0x78(1)
    stw 8, 0x2c(1)
    stw 7, 0x30(1)
    stw 6, 0x34(1)
    stw 0, 0x38(1)
    bl long2str_8006CDA0
    mr. 20, 3
    .4byte 0x41820254 # beq .L_8006BD68
L_8006BB18:
    subf 25, 20, 21
    .4byte 0x4800028C # b .L_8006BDA8
L_8006BB20:
    lbz 0, 0x70(1)
    cmplwi 0, 0x5
    .4byte 0x40820018 # bne .L_8006BB40
    mr 3, 29
    li 4, 0x3
    bl __va_arg
    lfd 1, 0x0(3)
    .4byte 0x48000014 # b .L_8006BB50
L_8006BB40:
    mr 3, 29
    li 4, 0x3
    bl __va_arg
    lfd 1, 0x0(3)
L_8006BB50:
    lwz 7, 0x6c(1)
    mr 3, 24
    lwz 6, 0x70(1)
    addi 4, 1, 0x1c
    lwz 5, 0x74(1)
    lwz 0, 0x78(1)
    stw 7, 0x1c(1)
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 0, 0x28(1)
    bl float2str
    mr. 20, 3
    .4byte 0x418201E8 # beq .L_8006BD68
    subf 25, 20, 21
    .4byte 0x48000220 # b .L_8006BDA8
L_8006BB8C:
    lbz 0, 0x70(1)
    cmplwi 0, 0x5
    .4byte 0x40820018 # bne .L_8006BBAC
    mr 3, 29
    li 4, 0x3
    bl __va_arg
    lfd 1, 0x0(3)
    .4byte 0x48000014 # b .L_8006BBBC
L_8006BBAC:
    mr 3, 29
    li 4, 0x3
    bl __va_arg
    lfd 1, 0x0(3)
L_8006BBBC:
    lwz 7, 0x6c(1)
    mr 3, 24
    lwz 6, 0x70(1)
    addi 4, 1, 0xc
    lwz 5, 0x74(1)
    lwz 0, 0x78(1)
    stw 7, 0xc(1)
    stw 6, 0x10(1)
    stw 5, 0x14(1)
    stw 0, 0x18(1)
    bl double2hex
    mr. 20, 3
    .4byte 0x4182017C # beq .L_8006BD68
    subf 25, 20, 21
    .4byte 0x480001B4 # b .L_8006BDA8
L_8006BBF8:
    lbz 0, 0x70(1)
    cmplwi 0, 0x6
    .4byte 0x4082003C # bne .L_8006BC3C
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 4, 0x0(3)
    cmplwi 4, 0x0
    .4byte 0x40820008 # bne .L_8006BC20
    .4byte 0x388D8170 # li r4, "@wstringBase0_80539D30"@sda21
L_8006BC20:
    addi 3, 1, 0x7c
    li 5, 0x200
    bl wcstombs
    cmpwi 3, 0x0
    .4byte 0x41800138 # blt .L_8006BD68
    addi 20, 1, 0x7c
    .4byte 0x48000014 # b .L_8006BC4C
L_8006BC3C:
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 20, 0x0(3)
L_8006BC4C:
    cmplwi 20, 0x0
    .4byte 0x4082000C # bne .L_8006BC5C
    lis 3, "@stringBase0_8045DE30"@ha
    addi 20, 3, "@stringBase0_8045DE30"@l
L_8006BC5C:
    lbz 0, 0x6f(1)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8006BC90
    lbz 0, 0x6e(1)
    lbz 25, 0x0(20)
    addi 20, 20, 0x1
    cmplwi 0, 0x0
    .4byte 0x41820130 # beq .L_8006BDA8
    lwz 0, 0x78(1)
    cmpw 25, 0
    .4byte 0x40810124 # ble .L_8006BDA8
    mr 25, 0
    .4byte 0x4800011C # b .L_8006BDA8
L_8006BC90:
    lbz 0, 0x6e(1)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8006BCC0
    lwz 25, 0x78(1)
    mr 3, 20
    li 4, 0x0
    mr 5, 25
    bl memchr
    cmplwi 3, 0x0
    .4byte 0x418200F4 # beq .L_8006BDA8
    subf 25, 20, 3
    .4byte 0x480000EC # b .L_8006BDA8
L_8006BCC0:
    mr 3, 20
    bl strlen
    mr 25, 3
    .4byte 0x480000DC # b .L_8006BDA8
L_8006BCD0:
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lbz 0, 0x70(1)
    lwz 3, 0x0(3)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_8006BD14
    .4byte 0x40800010 # bge .L_8006BCFC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8006BD0C
    .4byte 0x480001F0 # b .L_8006BEE8
L_8006BCFC:
    cmpwi 0, 0x4
    .4byte 0x41820024 # beq .L_8006BD24
    .4byte 0x408001E4 # bge .L_8006BEE8
    .4byte 0x48000014 # b .L_8006BD1C
L_8006BD0C:
    stw 27, 0x0(3)
    .4byte 0x480001D8 # b .L_8006BEE8
L_8006BD14:
    sth 27, 0x0(3)
    .4byte 0x480001D0 # b .L_8006BEE8
L_8006BD1C:
    stw 27, 0x0(3)
    .4byte 0x480001C8 # b .L_8006BEE8
L_8006BD24:
    stw 27, 0x4(3)
    srawi 0, 27, 31
    stw 0, 0x0(3)
    .4byte 0x480001B8 # b .L_8006BEE8
L_8006BD34:
    mr 3, 29
    addi 20, 1, 0x7c
    li 4, 0x1
    bl __va_arg
    lwz 0, 0x0(3)
    li 25, 0x1
    stb 0, 0x7c(1)
    .4byte 0x48000058 # b .L_8006BDA8
L_8006BD54:
    li 0, 0x25
    addi 20, 1, 0x7c
    stb 0, 0x7c(1)
    li 25, 0x1
    .4byte 0x48000044 # b .L_8006BDA8
L_8006BD68:
    mr 3, 25
    bl strlen
    mr. 5, 3
    add 27, 27, 5
    .4byte 0x41820028 # beq .L_8006BDA0
    mr 12, 31
    mr 3, 30
    mr 4, 25
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8006BDA0
    li 3, -0x1
    .4byte 0x4800015C # b .L_8006BEF8
L_8006BDA0:
    mr 3, 27
    .4byte 0x48000154 # b .L_8006BEF8
L_8006BDA8:
    lbz 0, 0x6c(1)
    mr 19, 25
    cmplwi 0, 0x0
    .4byte 0x418200B0 # beq .L_8006BE64
    cmplwi 0, 0x2
    li 0, 0x20
    .4byte 0x40820008 # bne .L_8006BDC8
    li 0, 0x30
L_8006BDC8:
    stb 0, 0x9(1)
    lbz 0, 0x0(20)
    extsb 0, 0
    cmpwi 0, 0x2b
    .4byte 0x41820014 # beq .L_8006BDEC
    cmpwi 0, 0x2d
    .4byte 0x4182000C # beq .L_8006BDEC
    cmpwi 0, 0x20
    .4byte 0x40820070 # bne .L_8006BE58
L_8006BDEC:
    lbz 0, 0x9(1)
    cmpwi 0, 0x30
    .4byte 0x40820064 # bne .L_8006BE58
    mr 12, 31
    mr 3, 30
    mr 4, 20
    li 5, 0x1
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8006BE20
    li 3, -0x1
    .4byte 0x480000DC # b .L_8006BEF8
L_8006BE20:
    addi 20, 20, 0x1
    subi 25, 25, 0x1
    .4byte 0x48000030 # b .L_8006BE58
L_8006BE2C:
    mr 12, 31
    mr 3, 30
    addi 4, 1, 0x9
    li 5, 0x1
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8006BE54
    li 3, -0x1
    .4byte 0x480000A8 # b .L_8006BEF8
L_8006BE54:
    addi 19, 19, 0x1
L_8006BE58:
    lwz 0, 0x74(1)
    cmpw 19, 0
    .4byte 0x4180FFCC # blt .L_8006BE2C
L_8006BE64:
    cmpwi 25, 0x0
    .4byte 0x4182002C # beq .L_8006BE94
    mr 12, 31
    mr 3, 30
    mr 4, 20
    mr 5, 25
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8006BE94
    li 3, -0x1
    .4byte 0x48000068 # b .L_8006BEF8
L_8006BE94:
    lbz 0, 0x6c(1)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_8006BEE4
    li 20, 0x20
    .4byte 0x48000034 # b .L_8006BED8
L_8006BEA8:
    mr 12, 31
    mr 3, 30
    stb 20, 0x8(1)
    addi 4, 1, 0x8
    li 5, 0x1
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8006BED4
    li 3, -0x1
    .4byte 0x48000028 # b .L_8006BEF8
L_8006BED4:
    addi 19, 19, 0x1
L_8006BED8:
    lwz 0, 0x74(1)
    cmpw 19, 0
    .4byte 0x4180FFC8 # blt .L_8006BEA8
L_8006BEE4:
    add 27, 27, 19
L_8006BEE8:
    lbz 0, 0x0(26)
    extsb. 0, 0
    .4byte 0x4082F8E0 # bne .L_8006B7D0
L_8006BEF4:
    mr 3, 27
L_8006BEF8:
    lmw 19, 0x28c(1)
    lwz 0, 0x2c4(1)
    mtlr 0
    addi 1, 1, 0x2c0
    blr

float2str:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    lwz 0, 0xc(4)
    stfd 31, 0x48(1)
    fmr 31, 1
    cmpwi 0, 0x1fd
    stw 31, 0x44(1)
    stw 30, 0x40(1)
    stw 29, 0x3c(1)
    mr 29, 4
    stw 28, 0x38(1)
    mr 28, 3
    .4byte 0x4081000C # ble .L_8006BF4C
    li 3, 0x0
    .4byte 0x480006BC # b .L_8006C604
L_8006BF4C:
    li 3, 0x0
    li 0, 0x20
    stb 3, 0x8(1)
    addi 3, 1, 0x8
    addi 4, 1, 0xc
    sth 0, 0xa(1)
    bl fn_80068304
    lbz 0, 0x10(1)
    addi 31, 1, 0x11
    add 5, 31, 0
    .4byte 0x4800001C # b .L_8006BF90
L_8006BF78:
    lbz 4, 0x10(1)
    lha 3, 0xe(1)
    subi 4, 4, 0x1
    addi 0, 3, 0x1
    stb 4, 0x10(1)
    sth 0, 0xe(1)
L_8006BF90:
    lbz 0, 0x10(1)
    cmplwi 0, 0x1
    .4byte 0x40810010 # ble .L_8006BFA8
    lbzu 0, -0x1(5)
    cmpwi 0, 0x30
    .4byte 0x4182FFD4 # beq .L_8006BF78
L_8006BFA8:
    lbz 0, 0x11(1)
    cmpwi 0, 0x49
    .4byte 0x4182002C # beq .L_8006BFDC
    .4byte 0x40800010 # bge .L_8006BFC4
    cmpwi 0, 0x30
    .4byte 0x41820014 # beq .L_8006BFD0
    .4byte 0x4800016C # b .L_8006C12C
L_8006BFC4:
    cmpwi 0, 0x4e
    .4byte 0x418200BC # beq .L_8006C084
    .4byte 0x48000160 # b .L_8006C12C
L_8006BFD0:
    li 0, 0x0
    sth 0, 0xe(1)
    .4byte 0x48000154 # b .L_8006C12C
L_8006BFDC:
    .4byte 0xC8028488 # lfd f0, lbl_8053B428@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800050 # bge .L_8006C034
    lis 3, lbl_80497CF0@ha
    lbz 0, 0x5(29)
    addi 3, 3, lbl_80497CF0@l
    subi 28, 28, 0x5
    lbzx 0, 3, 0
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x4182001C # beq .L_8006C01C
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x1
    bl strcpy
    .4byte 0x48000064 # b .L_8006C07C
L_8006C01C:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x6
    bl strcpy
    .4byte 0x4800004C # b .L_8006C07C
L_8006C034:
    lis 3, lbl_80497CF0@ha
    lbz 0, 0x5(29)
    addi 3, 3, lbl_80497CF0@l
    subi 28, 28, 0x4
    lbzx 0, 3, 0
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x4182001C # beq .L_8006C068
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0xb
    bl strcpy
    .4byte 0x48000018 # b .L_8006C07C
L_8006C068:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0xf
    bl strcpy
L_8006C07C:
    mr 3, 28
    .4byte 0x48000584 # b .L_8006C604
L_8006C084:
    lbz 0, 0xc(1)
    extsb. 0, 0
    .4byte 0x41820050 # beq .L_8006C0DC
    lis 3, lbl_80497CF0@ha
    lbz 0, 0x5(29)
    addi 3, 3, lbl_80497CF0@l
    subi 28, 28, 0x5
    lbzx 0, 3, 0
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x4182001C # beq .L_8006C0C4
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x13
    bl strcpy
    .4byte 0x48000064 # b .L_8006C124
L_8006C0C4:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x18
    bl strcpy
    .4byte 0x4800004C # b .L_8006C124
L_8006C0DC:
    lis 3, lbl_80497CF0@ha
    lbz 0, 0x5(29)
    addi 3, 3, lbl_80497CF0@l
    subi 28, 28, 0x4
    lbzx 0, 3, 0
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x4182001C # beq .L_8006C110
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x1d
    bl strcpy
    .4byte 0x48000018 # b .L_8006C124
L_8006C110:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 28
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x21
    bl strcpy
L_8006C124:
    mr 3, 28
    .4byte 0x480004DC # b .L_8006C604
L_8006C12C:
    lha 5, 0xe(1)
    li 3, 0x0
    lbz 4, 0x10(1)
    subi 30, 28, 0x1
    lbz 0, 0x5(29)
    add 4, 4, 5
    subi 4, 4, 0x1
    cmpwi 0, 0x65
    sth 4, 0xe(1)
    stb 3, -0x1(28)
    .4byte 0x418200F4 # beq .L_8006C248
    .4byte 0x40800028 # bge .L_8006C180
    cmpwi 0, 0x46
    .4byte 0x4182024C # beq .L_8006C3AC
    .4byte 0x40800010 # bge .L_8006C174
    cmpwi 0, 0x45
    .4byte 0x408000DC # bge .L_8006C248
    .4byte 0x48000490 # b .L_8006C600
L_8006C174:
    cmpwi 0, 0x48
    .4byte 0x40800488 # bge .L_8006C600
    .4byte 0x48000014 # b .L_8006C190
L_8006C180:
    cmpwi 0, 0x67
    .4byte 0x4182000C # beq .L_8006C190
    .4byte 0x40800478 # bge .L_8006C600
    .4byte 0x48000220 # b .L_8006C3AC
L_8006C190:
    lbz 0, 0x10(1)
    lwz 4, 0xc(29)
    cmpw 0, 4
    .4byte 0x4081000C # ble .L_8006C1A8
    addi 3, 1, 0xc
    bl fn_8006C628
L_8006C1A8:
    lha 4, 0xe(1)
    cmpwi 4, -0x4
    .4byte 0x41800010 # blt .L_8006C1C0
    lwz 3, 0xc(29)
    cmpw 4, 3
    .4byte 0x41800050 # blt .L_8006C20C
L_8006C1C0:
    lbz 0, 0x3(29)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006C1DC
    lwz 3, 0xc(29)
    subi 0, 3, 0x1
    stw 0, 0xc(29)
    .4byte 0x48000010 # b .L_8006C1E8
L_8006C1DC:
    lbz 3, 0x10(1)
    subi 0, 3, 0x1
    stw 0, 0xc(29)
L_8006C1E8:
    lbz 0, 0x5(29)
    cmplwi 0, 0x67
    .4byte 0x40820010 # bne .L_8006C200
    li 0, 0x65
    stb 0, 0x5(29)
    .4byte 0x4800004C # b .L_8006C248
L_8006C200:
    li 0, 0x45
    stb 0, 0x5(29)
    .4byte 0x48000040 # b .L_8006C248
L_8006C20C:
    lbz 0, 0x3(29)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006C228
    addi 0, 4, 0x1
    subf 0, 0, 3
    stw 0, 0xc(29)
    .4byte 0x48000188 # b .L_8006C3AC
L_8006C228:
    lbz 0, 0x10(1)
    addi 3, 4, 0x1
    subf. 0, 3, 0
    stw 0, 0xc(29)
    .4byte 0x40800174 # bge .L_8006C3AC
    li 0, 0x0
    stw 0, 0xc(29)
    .4byte 0x48000168 # b .L_8006C3AC
L_8006C248:
    lwz 3, 0xc(29)
    lbz 0, 0x10(1)
    addi 4, 3, 0x1
    cmpw 0, 4
    .4byte 0x4081000C # ble .L_8006C264
    addi 3, 1, 0xc
    bl fn_8006C628
L_8006C264:
    lha 6, 0xe(1)
    li 8, 0x2b
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_8006C27C
    neg 6, 6
    li 8, 0x2d
L_8006C27C:
    lis 3, 0x6666
    li 7, 0x0
    addi 5, 3, 0x6667
    .4byte 0x48000038 # b .L_8006C2C0
L_8006C28C:
    mulhw 0, 5, 6
    addi 7, 7, 0x1
    srawi 3, 0, 2
    srwi 4, 3, 31
    srawi 0, 0, 2
    add 3, 3, 4
    mulli 4, 3, 0xa
    srwi 3, 0, 31
    subf 4, 4, 6
    add 6, 0, 3
    addi 0, 4, 0x30
    stb 0, -0x1(30)
    subi 30, 30, 0x1
L_8006C2C0:
    cmpwi 6, 0x0
    .4byte 0x4082FFC8 # bne .L_8006C28C
    cmpwi 7, 0x2
    .4byte 0x4180FFC0 # blt .L_8006C28C
    lbz 0, 0x5(29)
    stb 8, -0x1(30)
    lwz 3, 0xc(29)
    stbu 0, -0x2(30)
    subf 0, 30, 28
    add 0, 3, 0
    cmpwi 0, 0x1fd
    .4byte 0x4081000C # ble .L_8006C2F8
    li 3, 0x0
    .4byte 0x48000310 # b .L_8006C604
L_8006C2F8:
    lbz 4, 0x10(1)
    addi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x40800020 # bge .L_8006C324
    addi 3, 3, 0x2
    li 0, 0x30
    subf 3, 4, 3
    .4byte 0x48000008 # b .L_8006C31C
L_8006C318:
    stbu 0, -0x1(30)
L_8006C31C:
    subic. 3, 3, 0x1
    .4byte 0x4082FFF8 # bne .L_8006C318
L_8006C324:
    lbz 3, 0x10(1)
    add 4, 31, 3
    .4byte 0x4800000C # b .L_8006C338
L_8006C330:
    lbzu 0, -0x1(4)
    stbu 0, -0x1(30)
L_8006C338:
    subic. 3, 3, 0x1
    .4byte 0x4082FFF4 # bne .L_8006C330
    lwz 0, 0xc(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8006C358
    lbz 0, 0x3(29)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8006C360
L_8006C358:
    li 0, 0x2e
    stbu 0, -0x1(30)
L_8006C360:
    lbz 0, 0x11(1)
    stbu 0, -0x1(30)
    lbz 0, 0xc(1)
    extsb. 0, 0
    .4byte 0x41820010 # beq .L_8006C380
    li 0, 0x2d
    stbu 0, -0x1(30)
    .4byte 0x48000284 # b .L_8006C600
L_8006C380:
    lbz 0, 0x1(29)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8006C398
    li 0, 0x2b
    stbu 0, -0x1(30)
    .4byte 0x4800026C # b .L_8006C600
L_8006C398:
    cmplwi 0, 0x2
    .4byte 0x40820264 # bne .L_8006C600
    li 0, 0x20
    stbu 0, -0x1(30)
    .4byte 0x48000258 # b .L_8006C600
L_8006C3AC:
    lha 0, 0xe(1)
    lbz 4, 0x10(1)
    subf 3, 0, 4
    subic. 7, 3, 0x1
    .4byte 0x40800008 # bge .L_8006C3C4
    li 7, 0x0
L_8006C3C4:
    lwz 0, 0xc(29)
    cmpw 7, 0
    .4byte 0x4081002C # ble .L_8006C3F8
    subf 0, 0, 7
    addi 3, 1, 0xc
    subf 4, 0, 4
    bl fn_8006C628
    lha 3, 0xe(1)
    lbz 0, 0x10(1)
    subf 3, 3, 0
    subic. 7, 3, 0x1
    .4byte 0x40800008 # bge .L_8006C3F8
    li 7, 0x0
L_8006C3F8:
    lha 3, 0xe(1)
    addic. 6, 3, 0x1
    .4byte 0x40800008 # bge .L_8006C408
    li 6, 0x0
L_8006C408:
    add 0, 6, 7
    cmpwi 0, 0x1fd
    .4byte 0x4081000C # ble .L_8006C41C
    li 3, 0x0
    .4byte 0x480001EC # b .L_8006C604
L_8006C41C:
    lwz 0, 0xc(29)
    li 4, 0x30
    lbz 5, 0x10(1)
    subf. 3, 7, 0
    add 5, 31, 5
    .4byte 0x40810048 # ble .L_8006C478
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820030 # beq .L_8006C46C
L_8006C440:
    stb 4, -0x1(30)
    stb 4, -0x2(30)
    stb 4, -0x3(30)
    stb 4, -0x4(30)
    stb 4, -0x5(30)
    stb 4, -0x6(30)
    stb 4, -0x7(30)
    stbu 4, -0x8(30)
    .4byte 0x4200FFE0 # bdnz .L_8006C440
    andi. 3, 3, 0x7
    .4byte 0x41820010 # beq .L_8006C478
L_8006C46C:
    mtctr 3
L_8006C470:
    stbu 4, -0x1(30)
    .4byte 0x4200FFFC # bdnz .L_8006C470
L_8006C478:
    li 3, 0x0
    .4byte 0x48000010 # b .L_8006C48C
L_8006C480:
    lbzu 0, -0x1(5)
    addi 3, 3, 0x1
    stbu 0, -0x1(30)
L_8006C48C:
    cmpw 3, 7
    .4byte 0x40800010 # bge .L_8006C4A0
    lbz 0, 0x10(1)
    cmpw 3, 0
    .4byte 0x4180FFE4 # blt .L_8006C480
L_8006C4A0:
    cmpw 3, 7
    subf 3, 3, 7
    li 4, 0x30
    .4byte 0x40800048 # bge .L_8006C4F4
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820030 # beq .L_8006C4E8
L_8006C4BC:
    stb 4, -0x1(30)
    stb 4, -0x2(30)
    stb 4, -0x3(30)
    stb 4, -0x4(30)
    stb 4, -0x5(30)
    stb 4, -0x6(30)
    stb 4, -0x7(30)
    stbu 4, -0x8(30)
    .4byte 0x4200FFE0 # bdnz .L_8006C4BC
    andi. 3, 3, 0x7
    .4byte 0x41820010 # beq .L_8006C4F4
L_8006C4E8:
    mtctr 3
L_8006C4EC:
    stbu 4, -0x1(30)
    .4byte 0x4200FFFC # bdnz .L_8006C4EC
L_8006C4F4:
    lwz 0, 0xc(29)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8006C50C
    lbz 0, 0x3(29)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8006C514
L_8006C50C:
    li 0, 0x2e
    stbu 0, -0x1(30)
L_8006C514:
    cmpwi 6, 0x0
    .4byte 0x418200A0 # beq .L_8006C5B8
    li 4, 0x0
    li 3, 0x30
    .4byte 0x4800000C # b .L_8006C530
L_8006C528:
    stbu 3, -0x1(30)
    addi 4, 4, 0x1
L_8006C530:
    lbz 0, 0x10(1)
    subf 0, 0, 6
    cmpw 4, 0
    .4byte 0x4180FFEC # blt .L_8006C528
    cmpw 4, 6
    subf 3, 4, 6
    .4byte 0x40800078 # bge .L_8006C5C0
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820050 # beq .L_8006C5A4
L_8006C558:
    lbz 0, -0x1(5)
    stb 0, -0x1(30)
    lbz 0, -0x2(5)
    stb 0, -0x2(30)
    lbz 0, -0x3(5)
    stb 0, -0x3(30)
    lbz 0, -0x4(5)
    stb 0, -0x4(30)
    lbz 0, -0x5(5)
    stb 0, -0x5(30)
    lbz 0, -0x6(5)
    stb 0, -0x6(30)
    lbz 0, -0x7(5)
    stb 0, -0x7(30)
    lbzu 0, -0x8(5)
    stbu 0, -0x8(30)
    .4byte 0x4200FFC0 # bdnz .L_8006C558
    andi. 3, 3, 0x7
    .4byte 0x41820020 # beq .L_8006C5C0
L_8006C5A4:
    mtctr 3
L_8006C5A8:
    lbzu 0, -0x1(5)
    stbu 0, -0x1(30)
    .4byte 0x4200FFF8 # bdnz .L_8006C5A8
    .4byte 0x4800000C # b .L_8006C5C0
L_8006C5B8:
    li 0, 0x30
    stbu 0, -0x1(30)
L_8006C5C0:
    lbz 0, 0xc(1)
    extsb. 0, 0
    .4byte 0x41820010 # beq .L_8006C5D8
    li 0, 0x2d
    stbu 0, -0x1(30)
    .4byte 0x4800002C # b .L_8006C600
L_8006C5D8:
    lbz 0, 0x1(29)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8006C5F0
    li 0, 0x2b
    stbu 0, -0x1(30)
    .4byte 0x48000014 # b .L_8006C600
L_8006C5F0:
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8006C600
    li 0, 0x20
    stbu 0, -0x1(30)
L_8006C600:
    mr 3, 30
L_8006C604:
    lwz 0, 0x54(1)
    lfd 31, 0x48(1)
    lwz 31, 0x44(1)
    lwz 30, 0x40(1)
    lwz 29, 0x3c(1)
    lwz 28, 0x38(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8006C628:
    cmpwi 4, 0x0
    .4byte 0x40800020 # bge .L_8006C64C
L_8006C630:
    li 0, 0x0
    li 4, 0x1
    sth 0, 0x2(3)
    li 0, 0x30
    stb 4, 0x4(3)
    stb 0, 0x5(3)
    blr
L_8006C64C:
    lbz 7, 0x4(3)
    cmpw 4, 7
    bgelr
    add 6, 3, 4
    lbz 5, 0x5(6)
    addi 8, 6, 0x5
    subi 0, 5, 0x30
    extsb 6, 0
    cmpwi 6, 0x5
    .4byte 0x40820040 # bne .L_8006C6B0
    add 5, 3, 7
    addi 5, 5, 0x5
L_8006C67C:
    subi 5, 5, 0x1
    cmplw 5, 8
    .4byte 0x40810010 # ble .L_8006C694
    lbz 0, 0x0(5)
    cmpwi 0, 0x30
    .4byte 0x4182FFEC # beq .L_8006C67C
L_8006C694:
    cmplw 5, 8
    .4byte 0x40820010 # bne .L_8006C6A8
    lbz 0, -0x1(8)
    clrlwi 5, 0, 31
    .4byte 0x4800006C # b .L_8006C710
L_8006C6A8:
    li 5, 0x1
    .4byte 0x48000064 # b .L_8006C710
L_8006C6B0:
    li 0, 0x5
    xor 0, 6, 0
    srawi 5, 0, 1
    and 0, 0, 6
    subf 0, 0, 5
    srwi 5, 0, 31
    .4byte 0x48000048 # b .L_8006C710
L_8006C6CC:
    lbzu 0, -0x1(8)
    add 5, 0, 5
    subi 0, 5, 0x30
    extsb 7, 0
    xor 0, 7, 6
    srawi 5, 0, 1
    and 0, 0, 7
    subf 0, 0, 5
    srwi. 5, 0, 31
    .4byte 0x4082000C # bne .L_8006C6FC
    extsb. 0, 7
    .4byte 0x4082000C # bne .L_8006C704
L_8006C6FC:
    subi 4, 4, 0x1
    .4byte 0x48000014 # b .L_8006C714
L_8006C704:
    addi 0, 7, 0x30
    stb 0, 0x0(8)
    .4byte 0x48000010 # b .L_8006C71C
L_8006C710:
    li 6, 0x9
L_8006C714:
    cmpwi 4, 0x0
    .4byte 0x4082FFB4 # bne .L_8006C6CC
L_8006C71C:
    cmpwi 5, 0x0
    .4byte 0x41820024 # beq .L_8006C744
    lha 5, 0x2(3)
    li 4, 0x1
    li 0, 0x31
    addi 5, 5, 0x1
    sth 5, 0x2(3)
    stb 4, 0x4(3)
    stb 0, 0x5(3)
    blr
L_8006C744:
    cmpwi 4, 0x0
    .4byte 0x4182FEE8 # beq .L_8006C630
    stb 4, 0x4(3)
    blr

double2hex:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    lwz 0, 0xc(4)
    stw 31, 0x7c(1)
    mr 31, 4
    cmpwi 0, 0x1fd
    stw 30, 0x78(1)
    mr 30, 3
    stfd 1, 0x8(1)
    stfd 1, 0x18(1)
    .4byte 0x4081000C # ble .L_8006C78C
    li 3, 0x0
    .4byte 0x480002EC # b .L_8006CA74
L_8006C78C:
    li 3, 0x0
    li 0, 0x20
    stb 3, 0x10(1)
    addi 3, 1, 0x10
    addi 4, 1, 0x40
    sth 0, 0x12(1)
    bl fn_80068304
    lbz 0, 0x45(1)
    cmplwi 0, 0x49
    .4byte 0x40820094 # bne .L_8006C844
    lha 0, 0x18(1)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820044 # beq .L_8006C800
    lbz 0, 0x5(31)
    subi 30, 30, 0x5
    cmplwi 0, 0x41
    .4byte 0x4082001C # bne .L_8006C7E8
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x1
    bl strcpy
    .4byte 0x48000058 # b .L_8006C83C
L_8006C7E8:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x6
    bl strcpy
    .4byte 0x48000040 # b .L_8006C83C
L_8006C800:
    lbz 0, 0x5(31)
    subi 30, 30, 0x4
    cmplwi 0, 0x41
    .4byte 0x4082001C # bne .L_8006C828
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0xb
    bl strcpy
    .4byte 0x48000018 # b .L_8006C83C
L_8006C828:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0xf
    bl strcpy
L_8006C83C:
    mr 3, 30
    .4byte 0x48000234 # b .L_8006CA74
L_8006C844:
    cmplwi 0, 0x4e
    .4byte 0x40820094 # bne .L_8006C8DC
    lbz 0, 0x8(1)
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x41820044 # beq .L_8006C898
    lbz 0, 0x5(31)
    subi 30, 30, 0x5
    cmplwi 0, 0x41
    .4byte 0x4082001C # bne .L_8006C880
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x13
    bl strcpy
    .4byte 0x48000058 # b .L_8006C8D4
L_8006C880:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x18
    bl strcpy
    .4byte 0x48000040 # b .L_8006C8D4
L_8006C898:
    lbz 0, 0x5(31)
    subi 30, 30, 0x4
    cmplwi 0, 0x41
    .4byte 0x4082001C # bne .L_8006C8C0
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x1d
    bl strcpy
    .4byte 0x48000018 # b .L_8006C8D4
L_8006C8C0:
    lis 4, "@stringBase0_8045DE30"@ha
    mr 3, 30
    addi 4, 4, "@stringBase0_8045DE30"@l
    addi 4, 4, 0x21
    bl strcpy
L_8006C8D4:
    mr 3, 30
    .4byte 0x4800019C # b .L_8006CA74
L_8006C8DC:
    li 8, 0x0
    li 9, 0x1
    lha 0, 0x18(1)
    li 7, 0x64
    stb 9, 0x30(1)
    mr 4, 30
    extrwi 0, 0, 11, 17
    addi 5, 1, 0x20
    extsh 3, 0
    stb 9, 0x31(1)
    subi 3, 3, 0x3ff
    stb 8, 0x32(1)
    stb 8, 0x33(1)
    lwz 6, 0x30(1)
    stb 8, 0x34(1)
    stb 7, 0x35(1)
    lwz 0, 0x34(1)
    stw 8, 0x38(1)
    stw 9, 0x3c(1)
    stw 6, 0x20(1)
    stw 0, 0x24(1)
    stw 8, 0x28(1)
    stw 9, 0x2c(1)
    bl long2str_8006CDA0
    lbz 0, 0x5(31)
    cmplwi 0, 0x61
    .4byte 0x40820014 # bne .L_8006C958
    li 0, 0x70
    subi 4, 3, 0x1
    stb 0, -0x1(3)
    .4byte 0x48000010 # b .L_8006C964
L_8006C958:
    li 0, 0x50
    subi 4, 3, 0x1
    stb 0, -0x1(3)
L_8006C964:
    lwz 8, 0xc(31)
    addi 6, 1, 0x8
    mtctr 8
    cmpwi 8, 0x1
    .4byte 0x4180006C # blt .L_8006C9E0
L_8006C978:
    srwi 5, 8, 31
    clrlwi 0, 8, 31
    add 3, 5, 8
    srawi 3, 3, 1
    xor 0, 0, 5
    addi 3, 3, 0x1
    lbzx 7, 6, 3
    subf. 0, 5, 0
    extrwi 0, 7, 4, 24
    extsb 3, 0
    .4byte 0x41820008 # beq .L_8006C9A8
    clrlwi 3, 7, 28
L_8006C9A8:
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x4080000C # bge .L_8006C9BC
    addi 0, 3, 0x30
    .4byte 0x4800001C # b .L_8006C9D4
L_8006C9BC:
    lbz 0, 0x5(31)
    cmplwi 0, 0x61
    .4byte 0x4082000C # bne .L_8006C9D0
    addi 0, 3, 0x57
    .4byte 0x48000008 # b .L_8006C9D4
L_8006C9D0:
    addi 0, 3, 0x37
L_8006C9D4:
    stbu 0, -0x1(4)
    subi 8, 8, 0x1
    .4byte 0x4200FF9C # bdnz .L_8006C978
L_8006C9E0:
    lwz 0, 0xc(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8006C9F8
    lbz 0, 0x3(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8006CA00
L_8006C9F8:
    li 0, 0x2e
    stbu 0, -0x1(4)
L_8006CA00:
    lbz 0, 0x5(31)
    li 3, 0x31
    stb 3, -0x1(4)
    cmplwi 0, 0x61
    .4byte 0x40820010 # bne .L_8006CA20
    li 0, 0x78
    stbu 0, -0x2(4)
    .4byte 0x4800000C # b .L_8006CA28
L_8006CA20:
    li 0, 0x58
    stbu 0, -0x2(4)
L_8006CA28:
    lha 0, 0x18(1)
    li 3, 0x30
    stbu 3, -0x1(4)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820010 # beq .L_8006CA48
    li 0, 0x2d
    stbu 0, -0x1(4)
    .4byte 0x4800002C # b .L_8006CA70
L_8006CA48:
    lbz 0, 0x1(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8006CA60
    li 0, 0x2b
    stbu 0, -0x1(4)
    .4byte 0x48000014 # b .L_8006CA70
L_8006CA60:
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8006CA70
    li 0, 0x20
    stbu 0, -0x1(4)
L_8006CA70:
    mr 3, 4
L_8006CA74:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

longlong2str_8006CA8C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stmw 22, 0x8(1)
    mr 23, 5
    xor 5, 4, 0
    mr 24, 6
    mr 30, 4
    mr 31, 3
    subi 27, 23, 0x1
    li 25, 0x0
    li 26, 0x0
    stb 0, -0x1(23)
    xor 0, 3, 0
    or. 0, 5, 0
    .4byte 0x40820030 # bne .L_8006CAFC
    lwz 0, 0xc(24)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8006CAFC
    lbz 0, 0x3(24)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8006CAF4
    lbz 0, 0x5(24)
    cmplwi 0, 0x6f
    .4byte 0x4182000C # beq .L_8006CAFC
L_8006CAF4:
    mr 3, 27
    .4byte 0x48000294 # b .L_8006CD8C
L_8006CAFC:
    lbz 5, 0x5(24)
    subi 0, 5, 0x58
    cmplwi 0, 0x20
    .4byte 0x4181008C # bgt .L_8006CB94
    lis 5, "@1248_80497FF0"@ha
    slwi 0, 0, 2
    addi 5, 5, "@1248_80497FF0"@l
    lwzx 0, 5, 0
    mtctr 0
    bctr
    li 0, 0x0
    xoris 5, 3, 0x8000
    xoris 3, 0, 0x8000
    li 28, 0xa
    subfc 0, 0, 4
    li 29, 0x0
    subfe 3, 3, 5
    subfe 3, 5, 5
    neg. 3, 3
    .4byte 0x4182004C # beq .L_8006CB94
    subfic 30, 30, 0x0
    li 25, 0x1
    subfze 31, 31
    .4byte 0x4800003C # b .L_8006CB94
    li 0, 0x0
    li 28, 0x8
    stb 0, 0x1(24)
    li 29, 0x0
    .4byte 0x48000028 # b .L_8006CB94
    li 0, 0x0
    li 28, 0xa
    stb 0, 0x1(24)
    li 29, 0x0
    .4byte 0x48000014 # b .L_8006CB94
    li 0, 0x0
    li 28, 0x10
    stb 0, 0x1(24)
    li 29, 0x0
L_8006CB94:
    mr 3, 31
    mr 4, 30
    mr 5, 29
    mr 6, 28
    bl __mod2u
    mr 22, 4
    mr 3, 31
    mr 4, 30
    mr 5, 29
    mr 6, 28
    bl __div2u
    cmpwi 22, 0xa
    mr 30, 4
    mr 31, 3
    .4byte 0x4080000C # bge .L_8006CBD8
    addi 0, 22, 0x30
    .4byte 0x4800001C # b .L_8006CBF0
L_8006CBD8:
    lbz 0, 0x5(24)
    cmplwi 0, 0x78
    .4byte 0x4082000C # bne .L_8006CBEC
    addi 0, 22, 0x57
    .4byte 0x48000008 # b .L_8006CBF0
L_8006CBEC:
    addi 0, 22, 0x37
L_8006CBF0:
    li 4, 0x0
    stbu 0, -0x1(27)
    xor 3, 30, 4
    addi 26, 26, 0x1
    xor 0, 31, 4
    or. 0, 3, 0
    .4byte 0x4082FF8C # bne .L_8006CB94
    li 3, 0x8
    xor 0, 29, 4
    xor 3, 28, 3
    or. 0, 3, 0
    .4byte 0x40820028 # bne .L_8006CC44
    lbz 0, 0x3(24)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8006CC44
    lbz 0, 0x0(27)
    cmpwi 0, 0x30
    .4byte 0x41820010 # beq .L_8006CC44
    li 0, 0x30
    addi 26, 26, 0x1
    stbu 0, -0x1(27)
L_8006CC44:
    lbz 0, 0x0(24)
    cmplwi 0, 0x2
    .4byte 0x4082005C # bne .L_8006CCA8
    lwz 0, 0x8(24)
    cmpwi 25, 0x0
    stw 0, 0xc(24)
    .4byte 0x40820010 # bne .L_8006CC6C
    lbz 0, 0x1(24)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8006CC78
L_8006CC6C:
    lwz 3, 0xc(24)
    subi 0, 3, 0x1
    stw 0, 0xc(24)
L_8006CC78:
    li 3, 0x10
    li 0, 0x0
    xor 3, 28, 3
    xor 0, 29, 0
    or. 0, 3, 0
    .4byte 0x4082001C # bne .L_8006CCA8
    lbz 0, 0x3(24)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8006CCA8
    lwz 3, 0xc(24)
    subi 0, 3, 0x2
    stw 0, 0xc(24)
L_8006CCA8:
    lwz 3, 0xc(24)
    subf 0, 27, 23
    add 0, 3, 0
    cmpwi 0, 0x1fd
    .4byte 0x4081000C # ble .L_8006CCC4
    li 3, 0x0
    .4byte 0x480000CC # b .L_8006CD8C
L_8006CCC4:
    cmpw 26, 3
    subf 3, 26, 3
    li 4, 0x30
    .4byte 0x40800048 # bge .L_8006CD18
    srwi. 0, 3, 3
    mtctr 0
    .4byte 0x41820030 # beq .L_8006CD0C
L_8006CCE0:
    stb 4, -0x1(27)
    stb 4, -0x2(27)
    stb 4, -0x3(27)
    stb 4, -0x4(27)
    stb 4, -0x5(27)
    stb 4, -0x6(27)
    stb 4, -0x7(27)
    stbu 4, -0x8(27)
    .4byte 0x4200FFE0 # bdnz .L_8006CCE0
    andi. 3, 3, 0x7
    .4byte 0x41820010 # beq .L_8006CD18
L_8006CD0C:
    mtctr 3
L_8006CD10:
    stbu 4, -0x1(27)
    .4byte 0x4200FFFC # bdnz .L_8006CD10
L_8006CD18:
    li 3, 0x10
    li 0, 0x0
    xor 3, 28, 3
    xor 0, 29, 0
    or. 0, 3, 0
    .4byte 0x40820020 # bne .L_8006CD4C
    lbz 0, 0x3(24)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006CD4C
    lbz 3, 0x5(24)
    li 0, 0x30
    stb 3, -0x1(27)
    stbu 0, -0x2(27)
L_8006CD4C:
    cmpwi 25, 0x0
    .4byte 0x41820010 # beq .L_8006CD60
    li 0, 0x2d
    stbu 0, -0x1(27)
    .4byte 0x4800002C # b .L_8006CD88
L_8006CD60:
    lbz 0, 0x1(24)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8006CD78
    li 0, 0x2b
    stbu 0, -0x1(27)
    .4byte 0x48000014 # b .L_8006CD88
L_8006CD78:
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8006CD88
    li 0, 0x20
    stbu 0, -0x1(27)
L_8006CD88:
    mr 3, 27
L_8006CD8C:
    lmw 22, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

long2str_8006CDA0:
    li 6, 0x0
    cmpwi 3, 0x0
    stb 6, -0x1(4)
    subi 6, 4, 0x1
    li 8, 0x0
    li 7, 0x0
    .4byte 0x40820030 # bne .L_8006CDE8
    lwz 9, 0xc(5)
    cmpwi 9, 0x0
    .4byte 0x40820024 # bne .L_8006CDE8
    lbz 9, 0x3(5)
    cmplwi 9, 0x0
    .4byte 0x41820010 # beq .L_8006CDE0
    lbz 9, 0x5(5)
    cmplwi 9, 0x6f
    .4byte 0x4182000C # beq .L_8006CDE8
L_8006CDE0:
    mr 3, 6
    blr
L_8006CDE8:
    lbz 9, 0x5(5)
    subi 10, 9, 0x58
    cmplwi 10, 0x20
    .4byte 0x41810060 # bgt .L_8006CE54
    lis 9, jumptable_80498074@ha
    slwi 10, 10, 2
    addi 9, 9, jumptable_80498074@l
    lwzx 9, 9, 10
    mtctr 9
    bctr
    cmpwi 3, 0x0
    li 0, 0xa
    .4byte 0x4080003C # bge .L_8006CE54
    neg 3, 3
    li 8, 0x1
    .4byte 0x48000030 # b .L_8006CE54
    li 9, 0x0
    li 0, 0x8
    stb 9, 0x1(5)
    .4byte 0x48000020 # b .L_8006CE54
    li 9, 0x0
    li 0, 0xa
    stb 9, 0x1(5)
    .4byte 0x48000010 # b .L_8006CE54
    li 9, 0x0
    li 0, 0x10
    stb 9, 0x1(5)
L_8006CE54:
    lbz 9, 0x5(5)
L_8006CE58:
    divwu 10, 3, 0
    mullw 10, 10, 0
    subf 10, 10, 3
    divwu 3, 3, 0
    cmpwi 10, 0xa
    .4byte 0x4080000C # bge .L_8006CE78
    addi 10, 10, 0x30
    .4byte 0x48000018 # b .L_8006CE8C
L_8006CE78:
    cmplwi 9, 0x78
    .4byte 0x4082000C # bne .L_8006CE88
    addi 10, 10, 0x57
    .4byte 0x48000008 # b .L_8006CE8C
L_8006CE88:
    addi 10, 10, 0x37
L_8006CE8C:
    cmplwi 3, 0x0
    stb 10, -0x1(6)
    subi 6, 6, 0x1
    addi 7, 7, 0x1
    .4byte 0x4082FFBC # bne .L_8006CE58
    cmplwi 0, 0x8
    .4byte 0x40820028 # bne .L_8006CECC
    lbz 3, 0x3(5)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8006CECC
    lbz 3, 0x0(6)
    cmpwi 3, 0x30
    .4byte 0x41820010 # beq .L_8006CECC
    li 3, 0x30
    addi 7, 7, 0x1
    stbu 3, -0x1(6)
L_8006CECC:
    lbz 3, 0x0(5)
    cmplwi 3, 0x2
    .4byte 0x4082004C # bne .L_8006CF20
    lwz 3, 0x8(5)
    cmpwi 8, 0x0
    stw 3, 0xc(5)
    .4byte 0x40820010 # bne .L_8006CEF4
    lbz 3, 0x1(5)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8006CF00
L_8006CEF4:
    lwz 3, 0xc(5)
    subi 3, 3, 0x1
    stw 3, 0xc(5)
L_8006CF00:
    cmplwi 0, 0x10
    .4byte 0x4082001C # bne .L_8006CF20
    lbz 3, 0x3(5)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8006CF20
    lwz 3, 0xc(5)
    subi 3, 3, 0x2
    stw 3, 0xc(5)
L_8006CF20:
    lwz 9, 0xc(5)
    subf 3, 6, 4
    add 3, 9, 3
    cmpwi 3, 0x1fd
    .4byte 0x4081000C # ble .L_8006CF3C
    li 3, 0x0
    blr
L_8006CF3C:
    cmpw 7, 9
    subf 4, 7, 9
    li 7, 0x30
    .4byte 0x40800048 # bge .L_8006CF90
    srwi. 3, 4, 3
    mtctr 3
    .4byte 0x41820030 # beq .L_8006CF84
L_8006CF58:
    stb 7, -0x1(6)
    stb 7, -0x2(6)
    stb 7, -0x3(6)
    stb 7, -0x4(6)
    stb 7, -0x5(6)
    stb 7, -0x6(6)
    stb 7, -0x7(6)
    stbu 7, -0x8(6)
    .4byte 0x4200FFE0 # bdnz .L_8006CF58
    andi. 4, 4, 0x7
    .4byte 0x41820010 # beq .L_8006CF90
L_8006CF84:
    mtctr 4
L_8006CF88:
    stbu 7, -0x1(6)
    .4byte 0x4200FFFC # bdnz .L_8006CF88
L_8006CF90:
    cmplwi 0, 0x10
    .4byte 0x40820020 # bne .L_8006CFB4
    lbz 0, 0x3(5)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006CFB4
    lbz 3, 0x5(5)
    li 0, 0x30
    stb 3, -0x1(6)
    stbu 0, -0x2(6)
L_8006CFB4:
    cmpwi 8, 0x0
    .4byte 0x41820010 # beq .L_8006CFC8
    li 0, 0x2d
    stbu 0, -0x1(6)
    .4byte 0x4800002C # b .L_8006CFF0
L_8006CFC8:
    lbz 0, 0x1(5)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8006CFE0
    li 0, 0x2b
    stbu 0, -0x1(6)
    .4byte 0x48000014 # b .L_8006CFF0
L_8006CFE0:
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_8006CFF0
    li 0, 0x20
    stbu 0, -0x1(6)
L_8006CFF0:
    mr 3, 6
    blr

parse_format_8006CFF8:
    stwu 1, -0x30(1)
    mflr 0
    li 7, 0x0
    lbz 6, 0x1(3)
    stw 0, 0x34(1)
    li 0, 0x1
    extsb 6, 6
    stw 31, 0x2c(1)
    cmpwi 6, 0x25
    addi 31, 3, 0x1
    stw 30, 0x28(1)
    mr 30, 5
    stw 29, 0x24(1)
    mr 29, 4
    stb 7, 0x9(1)
    stb 0, 0x8(1)
    stb 7, 0xa(1)
    stb 7, 0xb(1)
    stb 7, 0xc(1)
    stw 7, 0x10(1)
    stw 7, 0x14(1)
    .4byte 0x40820028 # bne .L_8006D074
    stb 6, 0xd(1)
    addi 3, 31, 0x1
    lwz 4, 0x8(1)
    lwz 0, 0xc(1)
    stw 4, 0x0(30)
    stw 0, 0x4(30)
    stw 7, 0x8(30)
    stw 7, 0xc(30)
    .4byte 0x48000470 # b .L_8006D4E0
L_8006D074:
    subi 0, 6, 0x20
    li 4, 0x1
    cmplwi 0, 0x10
    .4byte 0x41810070 # bgt .L_8006D0F0
    lis 3, jumptable_804981D8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804981D8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    stb 0, 0x8(1)
    .4byte 0x48000050 # b .L_8006D0F4
    li 0, 0x1
    stb 0, 0x9(1)
    .4byte 0x48000044 # b .L_8006D0F4
    lbz 0, 0x9(1)
    cmplwi 0, 0x1
    .4byte 0x41820038 # beq .L_8006D0F4
    li 0, 0x2
    stb 0, 0x9(1)
    .4byte 0x4800002C # b .L_8006D0F4
    li 0, 0x1
    stb 0, 0xb(1)
    .4byte 0x48000020 # b .L_8006D0F4
    lbz 0, 0x8(1)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8006D0F4
    li 0, 0x2
    stb 0, 0x8(1)
    .4byte 0x48000008 # b .L_8006D0F4
L_8006D0F0:
    li 4, 0x0
L_8006D0F4:
    cmpwi 4, 0x0
    .4byte 0x41820010 # beq .L_8006D108
    lbzu 6, 0x1(31)
    extsb 6, 6
    .4byte 0x4BFFFF70 # b .L_8006D074
L_8006D108:
    cmpwi 6, 0x2a
    .4byte 0x4082003C # bne .L_8006D148
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 0, 0x0(3)
    cmpwi 0, 0x0
    stw 0, 0x10(1)
    .4byte 0x40800014 # bge .L_8006D13C
    neg 0, 0
    li 3, 0x0
    stb 3, 0x8(1)
    stw 0, 0x10(1)
L_8006D13C:
    lbzu 6, 0x1(31)
    extsb 6, 6
    .4byte 0x4800003C # b .L_8006D180
L_8006D148:
    lis 3, lbl_80497CF0@ha
    addi 3, 3, lbl_80497CF0@l
    .4byte 0x48000020 # b .L_8006D170
L_8006D154:
    lwz 0, 0x10(1)
    mulli 0, 0, 0xa
    add 4, 6, 0
    lbzu 6, 0x1(31)
    subi 0, 4, 0x30
    stw 0, 0x10(1)
    extsb 6, 6
L_8006D170:
    clrlwi 0, 6, 24
    lbzx 0, 3, 0
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x4082FFD8 # bne .L_8006D154
L_8006D180:
    lwz 5, 0x10(1)
    cmpwi 5, 0x1fd
    .4byte 0x40810030 # ble .L_8006D1B8
    li 0, 0xff
    lwz 4, 0x8(1)
    stb 0, 0xd(1)
    addi 3, 31, 0x1
    lwz 0, 0x14(1)
    stw 4, 0x0(30)
    lwz 4, 0xc(1)
    stw 4, 0x4(30)
    stw 5, 0x8(30)
    stw 0, 0xc(30)
    .4byte 0x4800032C # b .L_8006D4E0
L_8006D1B8:
    cmpwi 6, 0x2e
    .4byte 0x40820084 # bne .L_8006D240
    lbzu 6, 0x1(31)
    li 0, 0x1
    stb 0, 0xa(1)
    extsb 6, 6
    cmpwi 6, 0x2a
    .4byte 0x40820034 # bne .L_8006D208
    mr 3, 29
    li 4, 0x1
    bl __va_arg
    lwz 0, 0x0(3)
    cmpwi 0, 0x0
    stw 0, 0x14(1)
    .4byte 0x4080000C # bge .L_8006D1FC
    li 0, 0x0
    stb 0, 0xa(1)
L_8006D1FC:
    lbzu 6, 0x1(31)
    extsb 6, 6
    .4byte 0x4800003C # b .L_8006D240
L_8006D208:
    lis 3, lbl_80497CF0@ha
    addi 3, 3, lbl_80497CF0@l
    .4byte 0x48000020 # b .L_8006D230
L_8006D214:
    lwz 0, 0x14(1)
    mulli 0, 0, 0xa
    add 4, 6, 0
    lbzu 6, 0x1(31)
    subi 0, 4, 0x30
    stw 0, 0x14(1)
    extsb 6, 6
L_8006D230:
    clrlwi 0, 6, 24
    lbzx 0, 3, 0
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x4082FFD8 # bne .L_8006D214
L_8006D240:
    cmpwi 6, 0x68
    li 4, 0x1
    .4byte 0x41820020 # beq .L_8006D268
    .4byte 0x40800010 # bge .L_8006D25C
    cmpwi 6, 0x4c
    .4byte 0x41820068 # beq .L_8006D2BC
    .4byte 0x48000070 # b .L_8006D2C8
L_8006D25C:
    cmpwi 6, 0x6c
    .4byte 0x41820030 # beq .L_8006D290
    .4byte 0x48000064 # b .L_8006D2C8
L_8006D268:
    lbz 0, 0x1(31)
    li 3, 0x2
    stb 3, 0xc(1)
    extsb 0, 0
    cmpwi 0, 0x68
    .4byte 0x40820050 # bne .L_8006D2CC
    stb 4, 0xc(1)
    mr 6, 0
    addi 31, 31, 0x1
    .4byte 0x48000040 # b .L_8006D2CC
L_8006D290:
    lbz 0, 0x1(31)
    li 3, 0x3
    stb 3, 0xc(1)
    extsb 3, 0
    cmpwi 3, 0x6c
    .4byte 0x40820028 # bne .L_8006D2CC
    li 0, 0x4
    mr 6, 3
    stb 0, 0xc(1)
    addi 31, 31, 0x1
    .4byte 0x48000014 # b .L_8006D2CC
L_8006D2BC:
    li 0, 0x5
    stb 0, 0xc(1)
    .4byte 0x48000008 # b .L_8006D2CC
L_8006D2C8:
    li 4, 0x0
L_8006D2CC:
    cmpwi 4, 0x0
    .4byte 0x4182000C # beq .L_8006D2DC
    lbzu 6, 0x1(31)
    extsb 6, 6
L_8006D2DC:
    subi 0, 6, 0x41
    stb 6, 0xd(1)
    cmplwi 0, 0x37
    .4byte 0x418101CC # bgt .L_8006D4B4
    lis 3, jumptable_804980F8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804980F8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lbz 0, 0xc(1)
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_8006D31C
    li 0, 0xff
    stb 0, 0xd(1)
    .4byte 0x480001A4 # b .L_8006D4BC
L_8006D31C:
    lbz 0, 0xa(1)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8006D334
    li 0, 0x1
    stw 0, 0x14(1)
    .4byte 0x4800018C # b .L_8006D4BC
L_8006D334:
    lbz 0, 0x8(1)
    cmplwi 0, 0x2
    .4byte 0x40820180 # bne .L_8006D4BC
    li 0, 0x1
    stb 0, 0x8(1)
    .4byte 0x48000174 # b .L_8006D4BC
    lbz 0, 0xc(1)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8006D360
    cmplwi 0, 0x4
    .4byte 0x40820010 # bne .L_8006D36C
L_8006D360:
    li 0, 0xff
    stb 0, 0xd(1)
    .4byte 0x48000154 # b .L_8006D4BC
L_8006D36C:
    lbz 0, 0xa(1)
    cmplwi 0, 0x0
    .4byte 0x40820148 # bne .L_8006D4BC
    li 0, 0x6
    stw 0, 0x14(1)
    .4byte 0x4800013C # b .L_8006D4BC
    lbz 0, 0xa(1)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8006D398
    li 0, 0xd
    stw 0, 0x14(1)
L_8006D398:
    lbz 0, 0xc(1)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_8006D3B4
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_8006D3B4
    cmplwi 0, 0x1
    .4byte 0x4082010C # bne .L_8006D4BC
L_8006D3B4:
    li 0, 0xff
    stb 0, 0xd(1)
    .4byte 0x48000100 # b .L_8006D4BC
    lwz 0, 0x14(1)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8006D3D4
    li 0, 0x1
    stw 0, 0x14(1)
L_8006D3D4:
    lbz 0, 0xc(1)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_8006D3F0
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_8006D3F0
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8006D3FC
L_8006D3F0:
    li 0, 0xff
    stb 0, 0xd(1)
    .4byte 0x480000C4 # b .L_8006D4BC
L_8006D3FC:
    lbz 0, 0xa(1)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_8006D4BC
    li 0, 0x6
    stw 0, 0x14(1)
    .4byte 0x480000AC # b .L_8006D4BC
    li 5, 0x78
    li 4, 0x1
    li 3, 0x3
    li 0, 0x8
    stb 5, 0xd(1)
    stb 4, 0xb(1)
    stb 3, 0xc(1)
    stw 0, 0x14(1)
    .4byte 0x48000088 # b .L_8006D4BC
    lbz 3, 0xc(1)
    cmplwi 3, 0x3
    .4byte 0x40820010 # bne .L_8006D450
    li 0, 0x6
    stb 0, 0xc(1)
    .4byte 0x48000070 # b .L_8006D4BC
L_8006D450:
    lbz 0, 0xa(1)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8006D464
    cmplwi 3, 0x0
    .4byte 0x4182005C # beq .L_8006D4BC
L_8006D464:
    li 0, 0xff
    stb 0, 0xd(1)
    .4byte 0x48000050 # b .L_8006D4BC
    lbz 0, 0xc(1)
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_8006D488
    li 0, 0x6
    stb 0, 0xc(1)
    .4byte 0x48000038 # b .L_8006D4BC
L_8006D488:
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8006D4BC
    li 0, 0xff
    stb 0, 0xd(1)
    .4byte 0x48000024 # b .L_8006D4BC
    lbz 0, 0xc(1)
    cmplwi 0, 0x5
    .4byte 0x40820018 # bne .L_8006D4BC
    li 0, 0xff
    stb 0, 0xd(1)
    .4byte 0x4800000C # b .L_8006D4BC
L_8006D4B4:
    li 0, 0xff
    stb 0, 0xd(1)
L_8006D4BC:
    lwz 4, 0x8(1)
    addi 3, 31, 0x1
    lwz 0, 0xc(1)
    stw 4, 0x0(30)
    lwz 4, 0x10(1)
    stw 0, 0x4(30)
    lwz 0, 0x14(1)
    stw 4, 0x8(30)
    stw 0, 0xc(30)
L_8006D4E0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

