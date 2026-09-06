# Fresh project-wide gap hunt continuation: 40 functions, 17,764 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_8000D62C
etb_8000D62C:
    .4byte 0x580A0000
    .4byte 0x00000000
.size etb_8000D62C, 8

.global etb_8000D634
etb_8000D634:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D634, 8

.global etb_8000D63C
etb_8000D63C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D63C, 8

.global etb_8000D644
etb_8000D644:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D644, 8

.global etb_8000D64C
etb_8000D64C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D64C, 8

.global etb_8000D654
etb_8000D654:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D654, 8

.global etb_8000D65C
etb_8000D65C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D65C, 8

.global etb_8000D664
etb_8000D664:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D664, 8

.global etb_8000D66C
etb_8000D66C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000D66C, 8

.global etb_8000D674
etb_8000D674:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D674, 8

.global etb_8000D67C
etb_8000D67C:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000D67C, 8

.global etb_8000D684
etb_8000D684:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D684, 8

.global etb_8000D68C
etb_8000D68C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D68C, 8

.global etb_8000D694
etb_8000D694:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D694, 8

.global etb_8000D69C
etb_8000D69C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D69C, 8

.global etb_8000D6A4
etb_8000D6A4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D6A4, 8

.global etb_8000D6AC
etb_8000D6AC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D6AC, 8

.global etb_8000D6B4
etb_8000D6B4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000D6B4, 8

.global etb_8000D6BC
etb_8000D6BC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D6BC, 8

.global etb_8000D6C4
etb_8000D6C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D6C4, 8

.global etb_8000D6CC
etb_8000D6CC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D6CC, 8

.global etb_8000D6D4
etb_8000D6D4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D6D4, 8

.global etb_8000D6DC
etb_8000D6DC:
    .4byte 0x110A0000
    .4byte 0x00000000
.size etb_8000D6DC, 8

.global etb_8000D6E4
etb_8000D6E4:
    .4byte 0x61CA0000
    .4byte 0x00000000
.size etb_8000D6E4, 8

.global etb_8000D6EC
etb_8000D6EC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000D6EC, 8

.global etb_8000D6F4
etb_8000D6F4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000D6F4, 8

.global etb_8000D6FC
etb_8000D6FC:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_8000D6FC, 8

.global etb_8000D704
etb_8000D704:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D704, 8

.global etb_8000D70C
etb_8000D70C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000D70C, 8

.global etb_8000D714
etb_8000D714:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D714, 8

.global etb_8000D71C
etb_8000D71C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D71C, 8

.global etb_8000D724
etb_8000D724:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D724, 8

.global etb_8000D72C
etb_8000D72C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D72C, 8

.section extabindex, "a"
.balign 4
.global eti_8001CA14
eti_8001CA14:
    .4byte fn_8030A43C
    .4byte 0x000006B8
    .4byte etb_8000D62C
.size eti_8001CA14, 12

.global eti_8001CA20
eti_8001CA20:
    .4byte fn_8030ABFC
    .4byte 0x00000050
    .4byte etb_8000D634
.size eti_8001CA20, 12

.global eti_8001CA2C
eti_8001CA2C:
    .4byte fn_8030AC60
    .4byte 0x00000224
    .4byte etb_8000D63C
.size eti_8001CA2C, 12

.global eti_8001CA38
eti_8001CA38:
    .4byte fn_8030AE84
    .4byte 0x0000008C
    .4byte etb_8000D644
.size eti_8001CA38, 12

.global eti_8001CA44
eti_8001CA44:
    .4byte fn_8030AF10
    .4byte 0x00000174
    .4byte etb_8000D64C
.size eti_8001CA44, 12

.global eti_8001CA50
eti_8001CA50:
    .4byte fn_8030B084
    .4byte 0x0000008C
    .4byte etb_8000D654
.size eti_8001CA50, 12

.global eti_8001CA5C
eti_8001CA5C:
    .4byte fn_8030B110
    .4byte 0x000000D8
    .4byte etb_8000D65C
.size eti_8001CA5C, 12

.global eti_8001CA68
eti_8001CA68:
    .4byte fn_8030B1E8
    .4byte 0x00000388
    .4byte etb_8000D664
.size eti_8001CA68, 12

.global eti_8001CA74
eti_8001CA74:
    .4byte fn_8030B570
    .4byte 0x00000204
    .4byte etb_8000D66C
.size eti_8001CA74, 12

.global eti_8001CA80
eti_8001CA80:
    .4byte fn_8030B774
    .4byte 0x00000208
    .4byte etb_8000D674
.size eti_8001CA80, 12

.global eti_8001CA8C
eti_8001CA8C:
    .4byte fn_8030B97C
    .4byte 0x000003C0
    .4byte etb_8000D67C
.size eti_8001CA8C, 12

.global eti_8001CA98
eti_8001CA98:
    .4byte fn_8030BD3C
    .4byte 0x00000074
    .4byte etb_8000D684
.size eti_8001CA98, 12

.global eti_8001CAA4
eti_8001CAA4:
    .4byte fn_8030BDB0
    .4byte 0x00000048
    .4byte etb_8000D68C
.size eti_8001CAA4, 12

.global eti_8001CAB0
eti_8001CAB0:
    .4byte fn_8030BE34
    .4byte 0x00000224
    .4byte etb_8000D694
.size eti_8001CAB0, 12

.global eti_8001CABC
eti_8001CABC:
    .4byte fn_8030C2A8
    .4byte 0x000000D8
    .4byte etb_8000D69C
.size eti_8001CABC, 12

.global eti_8001CAC8
eti_8001CAC8:
    .4byte fn_8030C380
    .4byte 0x00000120
    .4byte etb_8000D6A4
.size eti_8001CAC8, 12

.global eti_8001CAD4
eti_8001CAD4:
    .4byte fn_8030C4A0
    .4byte 0x00000150
    .4byte etb_8000D6AC
.size eti_8001CAD4, 12

.global eti_8001CAE0
eti_8001CAE0:
    .4byte fn_8030C5F0
    .4byte 0x000001D4
    .4byte etb_8000D6B4
.size eti_8001CAE0, 12

.global eti_8001CAEC
eti_8001CAEC:
    .4byte fn_8030C7C4
    .4byte 0x00000098
    .4byte etb_8000D6BC
.size eti_8001CAEC, 12

.global eti_8001CAF8
eti_8001CAF8:
    .4byte fn_8030C85C
    .4byte 0x000000CC
    .4byte etb_8000D6C4
.size eti_8001CAF8, 12

.global eti_8001CB04
eti_8001CB04:
    .4byte fn_8030C928
    .4byte 0x000000BC
    .4byte etb_8000D6CC
.size eti_8001CB04, 12

.global eti_8001CB10
eti_8001CB10:
    .4byte fn_8030C9E4
    .4byte 0x0000012C
    .4byte etb_8000D6D4
.size eti_8001CB10, 12

.global eti_8001CB1C
eti_8001CB1C:
    .4byte fn_8030CB10
    .4byte 0x00000208
    .4byte etb_8000D6DC
.size eti_8001CB1C, 12

.global eti_8001CB28
eti_8001CB28:
    .4byte fn_8030CD18
    .4byte 0x00001008
    .4byte etb_8000D6E4
.size eti_8001CB28, 12

.global eti_8001CB34
eti_8001CB34:
    .4byte fn_8030DD20
    .4byte 0x00000048
    .4byte etb_8000D6EC
.size eti_8001CB34, 12

.global eti_8001CB40
eti_8001CB40:
    .4byte fn_8030DD68
    .4byte 0x00000024
    .4byte etb_8000D6F4
.size eti_8001CB40, 12

.global eti_8001CB4C
eti_8001CB4C:
    .4byte fn_8030DD8C
    .4byte 0x0000025C
    .4byte etb_8000D6FC
.size eti_8001CB4C, 12

.global eti_8001CB58
eti_8001CB58:
    .4byte fn_8030DFE8
    .4byte 0x00000168
    .4byte etb_8000D704
.size eti_8001CB58, 12

.global eti_8001CB64
eti_8001CB64:
    .4byte fn_8030E154
    .4byte 0x00000468
    .4byte etb_8000D70C
.size eti_8001CB64, 12

.global eti_8001CB70
eti_8001CB70:
    .4byte fn_8030E5BC
    .4byte 0x00000114
    .4byte etb_8000D714
.size eti_8001CB70, 12

.global eti_8001CB7C
eti_8001CB7C:
    .4byte fn_8030E6D0
    .4byte 0x00000048
    .4byte etb_8000D71C
.size eti_8001CB7C, 12

.global eti_8001CB88
eti_8001CB88:
    .4byte fn_8030E718
    .4byte 0x00000064
    .4byte etb_8000D724
.size eti_8001CB88, 12

.global eti_8001CB94
eti_8001CB94:
    .4byte fn_8030E77C
    .4byte 0x00000224
    .4byte etb_8000D72C
.size eti_8001CB94, 12

.text
.balign 4
.global fn_8030A43C
.global fn_8030AAF4
.global fn_8030AB38
.global fn_8030ABFC
.global fn_8030AC4C
.global fn_8030AC60
.global fn_8030AE84
.global fn_8030AF10
.global fn_8030B084
.global fn_8030B110
.global fn_8030B1E8
.global fn_8030B570
.global fn_8030B774
.global fn_8030B97C
.global fn_8030BD3C
.global fn_8030BDB0
.global fn_8030BDF8
.global fn_8030BE34
.global fn_8030C058
.global fn_8030C210
.global fn_8030C2A8
.global fn_8030C380
.global fn_8030C4A0
.global fn_8030C5F0
.global fn_8030C7C4
.global fn_8030C85C
.global fn_8030C928
.global fn_8030C9E4
.global fn_8030CB10
.global fn_8030CD18
.global fn_8030DD20
.global fn_8030DD68
.global fn_8030DD8C
.global fn_8030DFE8
.global fn_8030E150
.global fn_8030E154
.global fn_8030E5BC
.global fn_8030E6D0
.global fn_8030E718
.global fn_8030E77C

fn_8030A43C:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_804DB798@ha
    stw 0, 0x44(1)
    stmw 21, 0x14(1)
    mr 22, 3
    addi 28, 4, lbl_804DB798@l
    li 23, 0x0
    mr 27, 22
    li 24, 0x0
    .4byte 0x3BCD9174 # li r30, lbl_8053AD34@sda21
    .4byte 0x3BAD9178 # li r29, lbl_8053AD38@sda21
    lwz 0, 0x4(3)
    lis 3, lbl_80506DE8@ha
    addi 26, 3, lbl_80506DE8@l
    stw 0, 0x14(22)
    lwz 0, 0x84(22)
    stw 0, 0x94(22)
    lwz 0, 0x24(22)
    stw 0, 0x84(22)
    lwz 0, 0x8(22)
    stw 0, 0x18(22)
    lwz 0, 0x88(22)
    stw 0, 0x98(22)
    lwz 0, 0x28(22)
    stw 0, 0x88(22)
    lwz 0, 0xc(22)
    stw 0, 0x1c(22)
    lwz 0, 0x8c(22)
    stw 0, 0x9c(22)
    lwz 0, 0x2c(22)
    stw 0, 0x8c(22)
    lwz 0, 0x10(22)
    stw 0, 0x20(22)
    lwz 0, 0x90(22)
    stw 0, 0xa0(22)
    lwz 0, 0x30(22)
    stw 0, 0x90(22)
L_8030A4D4:
    li 0, 0x0
    add 25, 22, 24
    stb 0, 0x0(30)
    stb 0, 0x0(29)
    lbz 3, 0xdc(25)
    cmplwi 3, 0x3
    .4byte 0x4080000C # bge .L_8030A4F8
    addi 0, 3, 0x1
    stb 0, 0xdc(25)
L_8030A4F8:
    lbz 3, 0xe0(25)
    cmplwi 3, 0x3
    .4byte 0x4080000C # bge .L_8030A50C
    addi 0, 3, 0x1
    stb 0, 0xe0(25)
L_8030A50C:
    lbz 0, 0xd1(28)
    cmplwi 0, 0x0
    .4byte 0x40820594 # bne .L_8030AAA8
    lwz 0, 0x54(28)
    stw 0, 0xc4(27)
    lbz 0, 0xd3(28)
    stb 0, 0xd4(25)
    lbz 0, 0xd8(28)
    stb 0, 0xd8(25)
    lwz 3, 0xc4(27)
    subis 0, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x408201D4 # bne .L_8030A710
    lbz 0, 0xd4(25)
    cmpwi 0, 0x3
    .4byte 0x4182018C # beq .L_8030A6D4
    .4byte 0x408001B8 # bge .L_8030A704
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030A55C
    .4byte 0x480001AC # b .L_8030A704
L_8030A55C:
    lbz 0, 0xd8(25)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8030A57C
    mr 3, 28
    li 4, 0x7
    li 5, 0x1
    bl OSSendMessage
    .4byte 0x48000530 # b .L_8030AAA8
L_8030A57C:
    .4byte 0x80AD8F30 # lwz r5, lbl_8053AAF0@sda21(r0)
    li 3, 0x4
    lbz 4, 0x78(5)
    subi 0, 4, 0x4
    orc 3, 4, 3
    srwi 0, 0, 1
    subf 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_8030A5AC
    lbz 0, 0x60(5)
    cmplwi 0, 0x0
    .4byte 0x41820120 # beq .L_8030A6C8
L_8030A5AC:
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    lbz 5, 0xd6(28)
    mr 4, 26
    lbzx 0, 3, 0
    addi 3, 28, 0x68
    stb 5, 0x0(30)
    lwz 31, 0x60(28)
    slwi 5, 0, 2
    bl memcpy
    mr 3, 28
    li 4, 0xa
    li 5, 0x1
    bl OSSendMessage
    lbz 0, 0x0(30)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_8030A6C8
    rlwinm 3, 31, 0, 16, 23
    rlwimi 3, 31, 16, 24, 31
    bl fn_803006E8
    clrlwi 0, 31, 24
    cmplw 0, 3
    .4byte 0x408200C4 # bne .L_8030A6C8
    extrwi 0, 31, 1, 11
    extrwi 3, 31, 1, 9
    neg 4, 0
    li 10, 0x8
    neg 11, 3
    li 0, 0x2
    and 12, 0, 4
    extrwi 8, 31, 1, 22
    extrwi 0, 31, 1, 8
    and 10, 10, 11
    neg 9, 0
    neg 11, 8
    li 0, 0x4
    rlwimi 12, 31, 11, 31, 31
    and 21, 0, 9
    extrwi 7, 31, 1, 23
    or 0, 10, 12
    li 10, 0x40
    extrwi 6, 31, 1, 12
    neg 9, 7
    li 8, 0x20
    or 0, 21, 0
    and 10, 10, 11
    neg 7, 6
    extrwi 5, 31, 1, 13
    and 9, 8, 9
    or 0, 10, 0
    li 6, 0x1000
    neg 8, 5
    li 5, 0x400
    and 10, 6, 7
    extrwi 4, 31, 1, 15
    or 0, 9, 0
    extrwi 3, 31, 1, 14
    neg 7, 4
    li 6, 0x100
    and 8, 5, 8
    or 0, 10, 0
    neg 5, 3
    li 4, 0x200
    or 3, 8, 0
    and 6, 6, 7
    and 4, 4, 5
    extrwi 0, 31, 1, 16
    or 3, 6, 3
    or 3, 4, 3
    stw 3, 0x4(27)
    stb 0, 0xe6(25)
L_8030A6C8:
    li 0, 0x0
    stb 0, 0xdc(25)
    .4byte 0x480003D8 # b .L_8030AAA8
L_8030A6D4:
    li 0, 0x0
    stw 0, 0x54(28)
    lwz 0, 0x20(28)
    cmplwi 0, 0x7
    .4byte 0x408203C4 # bne .L_8030AAA8
    lwz 3, 0xb4(27)
    li 0, -0x1
    cmplw 3, 0
    .4byte 0x408003B4 # bge .L_8030AAA8
    addi 0, 3, 0x1
    stw 0, 0xb4(27)
    .4byte 0x480003A8 # b .L_8030AAA8
L_8030A704:
    li 0, 0x0
    stw 0, 0x54(28)
    .4byte 0x4800039C # b .L_8030AAA8
L_8030A710:
    cmplwi 3, 0x0
    .4byte 0x40820030 # bne .L_8030A744
    li 3, 0x0
    stw 3, 0x4(27)
    lwz 0, 0x20(28)
    cmplwi 0, 0x7
    .4byte 0x41820008 # beq .L_8030A730
    stw 3, 0xb4(27)
L_8030A730:
    mr 3, 28
    li 4, 0x6
    li 5, 0x1
    bl OSSendMessage
    .4byte 0x48000368 # b .L_8030AAA8
L_8030A744:
    li 0, 0x0
    stw 0, 0xb4(27)
    lbz 0, 0xde(28)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8030A760
    li 0, 0x1
    stb 0, 0xdd(28)
L_8030A760:
    li 21, 0x0
    cmpwi 24, 0x0
    stw 21, 0x4(27)
    .4byte 0x40820008 # bne .L_8030A774
    .4byte 0x48000038 # b .L_8030A7A8
L_8030A774:
    cmpwi 24, 0x1
    .4byte 0x4082000C # bne .L_8030A784
    li 21, 0x1
    .4byte 0x48000028 # b .L_8030A7A8
L_8030A784:
    cmpwi 24, 0x2
    .4byte 0x4082000C # bne .L_8030A794
    li 21, 0x2
    .4byte 0x48000018 # b .L_8030A7A8
L_8030A794:
    cmpwi 24, 0x3
    .4byte 0x4082000C # bne .L_8030A7A4
    li 21, 0x3
    .4byte 0x48000008 # b .L_8030A7A8
L_8030A7A4:
    li 21, -0x3e7
L_8030A7A8:
    mr 3, 21
    bl fn_8008E328
    mr. 31, 3
    .4byte 0x418202F4 # beq .L_8030AAA8
    mulli 4, 21, 0xc
    lis 3, lbl_8052EA28@ha
    addi 0, 3, lbl_8052EA28@l
    add 3, 0, 4
    lbz 0, 0xa(3)
    extsb. 0, 0
    .4byte 0x4182000C # beq .L_8030A7DC
    .4byte 0x408002C0 # bge .L_8030AA94
    .4byte 0x480002BC # b .L_8030AA94
L_8030A7DC:
    li 0, 0x1
    stb 0, 0x0(29)
    lwz 0, 0x18(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_8030A800
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8030A810
L_8030A800:
    lfs 1, 0x48(31)
    .4byte 0xC002E6E8 # lfs f0, lbl_80541688@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8030A81C
L_8030A810:
    lwz 0, 0x4(27)
    ori 0, 0, 0x1
    stw 0, 0x4(27)
L_8030A81C:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820014 # beq .L_8030A838
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8030A848
L_8030A838:
    lfs 1, 0x48(31)
    .4byte 0xC002E6EC # lfs f0, lbl_8054168C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8030A854
L_8030A848:
    lwz 0, 0x4(27)
    ori 0, 0, 0x2
    stw 0, 0x4(27)
L_8030A854:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x41820014 # beq .L_8030A870
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8030A880
L_8030A870:
    lfs 1, 0x4c(31)
    .4byte 0xC002E6E8 # lfs f0, lbl_80541688@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8030A88C
L_8030A880:
    lwz 0, 0x4(27)
    ori 0, 0, 0x4
    stw 0, 0x4(27)
L_8030A88C:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820014 # beq .L_8030A8A8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8030A8B8
L_8030A8A8:
    lfs 1, 0x4c(31)
    .4byte 0xC002E6EC # lfs f0, lbl_8054168C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8030A8C4
L_8030A8B8:
    lwz 0, 0x4(27)
    ori 0, 0, 0x8
    stw 0, 0x4(27)
L_8030A8C4:
    lwz 3, 0x18(31)
    rlwinm. 0, 3, 0, 21, 21
    .4byte 0x40820070 # bne .L_8030A93C
    clrlwi. 0, 3, 31
    .4byte 0x41820014 # beq .L_8030A8E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_8030A93C
L_8030A8E8:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820014 # beq .L_8030A904
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8030A93C
L_8030A904:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x41820014 # beq .L_8030A920
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8030A93C
L_8030A920:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820020 # beq .L_8030A948
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136320
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8030A948
L_8030A93C:
    lwz 0, 0x4(27)
    ori 0, 0, 0x400
    stw 0, 0x4(27)
L_8030A948:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 20, 20
    .4byte 0x41820010 # beq .L_8030A960
    lwz 0, 0x4(27)
    ori 0, 0, 0x40
    stw 0, 0x4(27)
L_8030A960:
    lbz 0, 0xe5(22)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8030A994
    lfs 1, 0x2c(31)
    .4byte 0xC002E6EC # lfs f0, lbl_8054168C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8030A988
    li 0, 0x1
    stb 0, 0xe5(22)
    .4byte 0x48000034 # b .L_8030A9B8
L_8030A988:
    li 0, 0x0
    stb 0, 0xe5(22)
    .4byte 0x48000028 # b .L_8030A9B8
L_8030A994:
    lfs 1, 0x2c(31)
    .4byte 0xC002E6F0 # lfs f0, lbl_80541690@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8030A9B0
    li 0, 0x1
    stb 0, 0xe5(22)
    .4byte 0x4800000C # b .L_8030A9B8
L_8030A9B0:
    li 0, 0x0
    stb 0, 0xe5(22)
L_8030A9B8:
    lbz 0, 0xe5(22)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8030A9D0
    lwz 0, 0x4(27)
    ori 0, 0, 0x20
    stw 0, 0x4(27)
L_8030A9D0:
    lbz 0, 0xe4(22)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8030AA04
    lfs 1, 0x28(31)
    .4byte 0xC002E6EC # lfs f0, lbl_8054168C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8030A9F8
    li 0, 0x1
    stb 0, 0xe4(22)
    .4byte 0x48000034 # b .L_8030AA28
L_8030A9F8:
    li 0, 0x0
    stb 0, 0xe4(22)
    .4byte 0x48000028 # b .L_8030AA28
L_8030AA04:
    lfs 1, 0x28(31)
    .4byte 0xC002E6F0 # lfs f0, lbl_80541690@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8030AA20
    li 0, 0x1
    stb 0, 0xe4(22)
    .4byte 0x4800000C # b .L_8030AA28
L_8030AA20:
    li 0, 0x0
    stb 0, 0xe4(22)
L_8030AA28:
    lbz 0, 0xe4(22)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8030AA40
    lwz 0, 0x4(27)
    ori 0, 0, 0x40
    stw 0, 0x4(27)
L_8030AA40:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820010 # beq .L_8030AA58
    lwz 0, 0x4(27)
    ori 0, 0, 0x100
    stw 0, 0x4(27)
L_8030AA58:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 22, 22
    .4byte 0x41820010 # beq .L_8030AA70
    lwz 0, 0x4(27)
    ori 0, 0, 0x200
    stw 0, 0x4(27)
L_8030AA70:
    lwz 0, 0x18(31)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x41820010 # beq .L_8030AA88
    lwz 0, 0x4(27)
    ori 0, 0, 0x1000
    stw 0, 0x4(27)
L_8030AA88:
    li 0, 0x0
    stb 0, 0xe0(25)
    .4byte 0x48000018 # b .L_8030AAA8
L_8030AA94:
    li 3, 0x0
    lis 0, 0x8000
    srw 0, 0, 24
    stw 3, 0x54(28)
    or 23, 23, 0
L_8030AAA8:
    addi 24, 24, 0x1
    addi 29, 29, 0x1
    cmpwi 24, 0x4
    addi 28, 28, 0xe0
    addi 27, 27, 0x4
    addi 26, 26, 0x68
    addi 30, 30, 0x1
    .4byte 0x4180FA10 # blt .L_8030A4D4
    cmplwi 23, 0x0
    .4byte 0x4182000C # beq .L_8030AAD8
    mr 3, 23
    bl fn_8004E3B0
L_8030AAD8:
    mr 3, 22
    bl fn_8030A078
    lmw 21, 0x14(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8030AAF4:
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8030AB04
    li 3, 0x0
    blr
L_8030AB04:
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_8030AB14
    li 3, 0x1
    blr
L_8030AB14:
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_8030AB24
    li 3, 0x2
    blr
L_8030AB24:
    cmpwi 3, 0x3
    li 3, -0x3e7
    bnelr
    li 3, 0x3
    blr

fn_8030AB38:
    li 0, 0x2
    mr 5, 3
    li 9, 0x0
    .4byte 0x38CD9178 # li r6, lbl_8053AD38@sda21
    .4byte 0x38ED9174 # li r7, lbl_8053AD34@sda21
    mtctr 0
L_8030AB50:
    li 4, 0x0
    add 8, 3, 9
    stw 4, 0x4(5)
    li 0, 0x3
    addi 9, 9, 0x1
    stw 4, 0x14(5)
    stw 4, 0x24(5)
    stw 4, 0x34(5)
    stw 4, 0x84(5)
    stw 4, 0x94(5)
    stw 4, 0xa4(5)
    stb 4, 0x0(6)
    stb 4, 0x0(7)
    stw 4, 0xc4(5)
    stb 0, 0xd4(8)
    stb 4, 0xd8(8)
    stb 4, 0xdc(8)
    stb 4, 0xe0(8)
    add 8, 3, 9
    addi 9, 9, 0x1
    stw 4, 0xb4(5)
    stw 4, 0x8(5)
    stw 4, 0x18(5)
    stw 4, 0x28(5)
    stw 4, 0x38(5)
    stw 4, 0x88(5)
    stw 4, 0x98(5)
    stw 4, 0xa8(5)
    stb 4, 0x1(6)
    addi 6, 6, 0x2
    stb 4, 0x1(7)
    addi 7, 7, 0x2
    stw 4, 0xc8(5)
    stb 0, 0xd4(8)
    stb 4, 0xd8(8)
    stb 4, 0xdc(8)
    stb 4, 0xe0(8)
    stw 4, 0xb8(5)
    addi 5, 5, 0x8
    .4byte 0x4200FF64 # bdnz .L_8030AB50
    stb 4, 0xe4(3)
    stb 4, 0xe5(3)
    blr

fn_8030ABFC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820024 # beq .L_8030AC34
    lis 5, lbl_804AA8C8@ha
    extsh. 0, 4
    addi 4, 5, lbl_804AA8C8@l
    li 0, 0x0
    stw 4, 0x0(31)
    .4byte 0x900D9170 # stw r0, lbl_8053AD30@sda21(r0)
    .4byte 0x40810008 # ble .L_8030AC34
    bl dtor_80084580
L_8030AC34:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030AC4C:
    lis 4, lbl_804AA8C8@ha
    addi 0, 4, lbl_804AA8C8@l
    stw 0, 0x0(3)
    .4byte 0x906D9170 # stw r3, lbl_8053AD30@sda21(r0)
    blr

fn_8030AC60:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805076E8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805076E8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030ACB0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x10
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8030ACB0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030ACE8
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x1c
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8030ACE8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030AD20
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x28
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8030AD20:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030AD58
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x34
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8030AD58:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030AD90
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x40
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8030AD90:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030ADC8
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x4c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8030ADC8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030AE00
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x58
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8030AE00:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030AE38
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x64
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8030AE38:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030AE70
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x70
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8030AE70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030AE84:
    stwu 1, -0x30(1)
    lis 5, 0x4330
    .4byte 0xC822E6F8 # lfd f1, lbl_80541698@sda21(r0)
    lwz 0, 0x290(3)
    stw 5, 0x8(1)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    stw 5, 0x10(1)
    fsubs 0, 0, 1
    stw 5, 0x18(1)
    stfs 0, 0x0(4)
    lwz 0, 0x294(3)
    stw 5, 0x20(1)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x4(4)
    lwz 5, 0x290(3)
    addi 0, 5, 0xf0
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
    lwz 3, 0x294(3)
    addi 0, 3, 0xa0
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(4)
    addi 1, 1, 0x30
    blr

fn_8030AF10:
    cmpwi 4, 0x8
    stwu 1, -0x10(1)
    .4byte 0x41800010 # blt .L_8030AF28
    lwz 0, 0x28c(3)
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_8030AF30
L_8030AF28:
    li 3, 0x0
    .4byte 0x48000150 # b .L_8030B07C
L_8030AF30:
    clrlwi. 0, 6, 24
    .4byte 0x41820094 # beq .L_8030AFC8
    lfs 0, 0x8(5)
    lwz 4, 0x290(3)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    cmpw 0, 4
    .4byte 0x4080000C # bge .L_8030AF5C
    li 3, 0x0
    .4byte 0x48000124 # b .L_8030B07C
L_8030AF5C:
    lfs 0, 0x0(5)
    addi 0, 4, 0xf0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    cmpw 4, 0
    .4byte 0x4081000C # ble .L_8030AF80
    li 3, 0x0
    .4byte 0x48000100 # b .L_8030B07C
L_8030AF80:
    lfs 0, 0xc(5)
    lwz 3, 0x294(3)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    cmpw 0, 3
    .4byte 0x4080000C # bge .L_8030AFA4
    li 3, 0x0
    .4byte 0x480000DC # b .L_8030B07C
L_8030AFA4:
    lfs 0, 0x4(5)
    addi 0, 3, 0xa0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    cmpw 3, 0
    .4byte 0x408100BC # ble .L_8030B078
    li 3, 0x0
    .4byte 0x480000B8 # b .L_8030B07C
L_8030AFC8:
    lfs 0, 0x0(5)
    lwz 4, 0x290(3)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 6, 0xc(1)
    cmpw 6, 4
    .4byte 0x41800010 # blt .L_8030AFF0
    addi 0, 4, 0xf0
    cmpw 6, 0
    .4byte 0x4081000C # ble .L_8030AFF8
L_8030AFF0:
    li 3, 0x0
    .4byte 0x48000088 # b .L_8030B07C
L_8030AFF8:
    lfs 0, 0x8(5)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 6, 0xc(1)
    cmpw 6, 4
    .4byte 0x4180000C # blt .L_8030B018
    cmpw 6, 0
    .4byte 0x4081000C # ble .L_8030B020
L_8030B018:
    li 3, 0x0
    .4byte 0x48000060 # b .L_8030B07C
L_8030B020:
    lfs 0, 0x4(5)
    lwz 3, 0x294(3)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    cmpw 4, 3
    .4byte 0x41800010 # blt .L_8030B048
    addi 0, 3, 0xa0
    cmpw 4, 0
    .4byte 0x4081000C # ble .L_8030B050
L_8030B048:
    li 3, 0x0
    .4byte 0x48000030 # b .L_8030B07C
L_8030B050:
    lfs 0, 0xc(5)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    cmpw 4, 3
    .4byte 0x4180000C # blt .L_8030B070
    cmpw 4, 0
    .4byte 0x4081000C # ble .L_8030B078
L_8030B070:
    li 3, 0x0
    .4byte 0x48000008 # b .L_8030B07C
L_8030B078:
    li 3, 0x1
L_8030B07C:
    addi 1, 1, 0x10
    blr

fn_8030B084:
    cmpwi 4, 0x8
    stwu 1, -0x10(1)
    .4byte 0x41800010 # blt .L_8030B09C
    lwz 0, 0x28c(3)
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_8030B0A4
L_8030B09C:
    li 3, 0x0
    .4byte 0x48000068 # b .L_8030B108
L_8030B0A4:
    lfs 0, 0x0(5)
    lwz 4, 0x290(3)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 6, 0xc(1)
    cmpw 6, 4
    .4byte 0x41800010 # blt .L_8030B0CC
    addi 0, 4, 0xf0
    cmpw 6, 0
    .4byte 0x4081000C # ble .L_8030B0D4
L_8030B0CC:
    li 3, 0x0
    .4byte 0x48000038 # b .L_8030B108
L_8030B0D4:
    lfs 0, 0x4(5)
    lwz 3, 0x294(3)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    cmpw 4, 3
    .4byte 0x41800010 # blt .L_8030B0FC
    addi 0, 3, 0xa0
    cmpw 4, 0
    .4byte 0x4081000C # ble .L_8030B104
L_8030B0FC:
    li 3, 0x0
    .4byte 0x48000008 # b .L_8030B108
L_8030B104:
    li 3, 0x1
L_8030B108:
    addi 1, 1, 0x10
    blr

fn_8030B110:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x288(3)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8030B150
    lwz 0, 0x28c(29)
    cmpw 30, 0
    .4byte 0x4182000C # beq .L_8030B158
L_8030B150:
    li 3, 0x0
    .4byte 0x48000078 # b .L_8030B1CC
L_8030B158:
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8030B168
    li 3, 0x1
    .4byte 0x48000068 # b .L_8030B1CC
L_8030B168:
    lfs 0, 0x0(31)
    lwz 0, 0x2a4(29)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    cmpw 3, 0
    .4byte 0x41800010 # blt .L_8030B190
    lwz 0, 0x2a0(29)
    cmpw 3, 0
    .4byte 0x4081000C # ble .L_8030B198
L_8030B190:
    li 3, 0x0
    .4byte 0x48000038 # b .L_8030B1CC
L_8030B198:
    lfs 0, 0x4(31)
    lwz 0, 0x2ac(29)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    cmpw 3, 0
    .4byte 0x41800010 # blt .L_8030B1C0
    lwz 0, 0x2a8(29)
    cmpw 3, 0
    .4byte 0x4081000C # ble .L_8030B1C8
L_8030B1C0:
    li 3, 0x0
    .4byte 0x48000008 # b .L_8030B1CC
L_8030B1C8:
    li 3, 0x1
L_8030B1CC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8030B1E8:
    stwu 1, -0x90(1)
    clrlwi 7, 4, 24
    lbz 0, 0x2bc(3)
    cmplw 7, 0
    .4byte 0x41820074 # beq .L_8030B26C
    clrlwi. 0, 5, 24
    .4byte 0x4182000C # beq .L_8030B20C
    cmplwi 0, 0x6
    .4byte 0x40820020 # bne .L_8030B228
L_8030B20C:
    li 4, 0x0
    li 0, 0xff
    sth 4, 0x2b8(3)
    sth 4, 0x2ba(3)
    stb 0, 0x2bc(3)
    stb 4, 0x284(3)
    .4byte 0x480000A0 # b .L_8030B2C4
L_8030B228:
    cmplwi 0, 0x4
    .4byte 0x40820010 # bne .L_8030B23C
    li 0, 0x60
    sth 0, 0x2b8(3)
    .4byte 0x48000020 # b .L_8030B258
L_8030B23C:
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_8030B250
    li 0, 0x3
    sth 0, 0x2b8(3)
    .4byte 0x4800000C # b .L_8030B258
L_8030B250:
    li 0, 0x8
    sth 0, 0x2b8(3)
L_8030B258:
    li 0, 0x0
    sth 0, 0x2ba(3)
    stb 4, 0x2bc(3)
    stb 5, 0x284(3)
    .4byte 0x4800005C # b .L_8030B2C4
L_8030B26C:
    clrlwi 7, 5, 24
    cmplwi 7, 0x6
    .4byte 0x41820050 # beq .L_8030B2C4
    lbz 0, 0x284(3)
    cmplw 7, 0
    .4byte 0x41820044 # beq .L_8030B2C4
    cmplwi 7, 0x4
    .4byte 0x40820010 # bne .L_8030B298
    li 0, 0x60
    sth 0, 0x2b8(3)
    .4byte 0x48000020 # b .L_8030B2B4
L_8030B298:
    cmplwi 7, 0x5
    .4byte 0x40820010 # bne .L_8030B2AC
    li 0, 0x3
    sth 0, 0x2b8(3)
    .4byte 0x4800000C # b .L_8030B2B4
L_8030B2AC:
    li 0, 0x8
    sth 0, 0x2b8(3)
L_8030B2B4:
    li 0, 0x0
    sth 0, 0x2ba(3)
    stb 4, 0x2bc(3)
    stb 5, 0x284(3)
L_8030B2C4:
    lhz 5, 0x2b8(3)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8030B2D8
    li 3, 0x0
    .4byte 0x48000294 # b .L_8030B568
L_8030B2D8:
    lbz 0, 0x284(3)
    cmpwi 0, 0x4
    .4byte 0x41820068 # beq .L_8030B348
    .4byte 0x40800014 # bge .L_8030B2F8
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_8030B304
    .4byte 0x40800030 # bge .L_8030B320
    .4byte 0x48000054 # b .L_8030B348
L_8030B2F8:
    cmpwi 0, 0x6
    .4byte 0x4080004C # bge .L_8030B348
    .4byte 0x48000038 # b .L_8030B338
L_8030B304:
    subfic 0, 6, 0x160
    lha 4, 0x2ba(3)
    mulli 0, 0, 0x7
    add 4, 0, 4
    addi 0, 4, 0xc0
    sth 0, 0x2ba(3)
    .4byte 0x48000040 # b .L_8030B35C
L_8030B320:
    mulli 0, 6, 0x7
    lha 4, 0x2ba(3)
    add 4, 0, 4
    addi 0, 4, 0xc0
    sth 0, 0x2ba(3)
    .4byte 0x48000028 # b .L_8030B35C
L_8030B338:
    lha 4, 0x2ba(3)
    addi 0, 4, 0x120
    sth 0, 0x2ba(3)
    .4byte 0x48000018 # b .L_8030B35C
L_8030B348:
    lha 4, 0x2ba(3)
    clrlslwi 0, 5, 16, 4
    add 4, 0, 4
    addi 0, 4, 0x100
    sth 0, 0x2ba(3)
L_8030B35C:
    lis 4, lbl_8052EBC0@ha
    li 6, 0x14
    mr 5, 3
    lha 7, 0x2ba(3)
    addi 4, 4, lbl_8052EBC0@l
    .4byte 0xC802E700 # lfd f0, lbl_805416A0@sda21(r0)
    lis 0, 0x4330
    mtctr 6
L_8030B37C:
    lhz 10, 0x2b8(3)
    clrlwi 8, 7, 16
    srawi 9, 8, 5
    extsh 6, 7
    stw 0, 0x8(1)
    slwi 12, 9, 3
    addi 8, 6, 0x200
    stw 10, 0xc(1)
    extsh 9, 8
    clrlwi 9, 9, 16
    addi 8, 6, 0x400
    lfd 1, 0x8(1)
    extsh 10, 8
    srawi 11, 9, 5
    addi 8, 6, 0x600
    fsubs 2, 1, 0
    lfsx 1, 4, 12
    extsh 9, 8
    addi 8, 6, 0x800
    stw 0, 0x18(1)
    slwi 11, 11, 3
    fmuls 1, 2, 1
    stw 0, 0x28(1)
    rlwinm 10, 10, 30, 18, 28
    rlwinm 9, 9, 30, 18, 28
    stw 0, 0x38(1)
    rlwinm 8, 8, 30, 18, 28
    fctiwz 1, 1
    stw 0, 0x48(1)
    stfd 1, 0x10(1)
    lwz 12, 0x14(1)
    stw 12, 0x4(5)
    lhz 12, 0x2b8(3)
    lfsx 1, 4, 11
    stw 12, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 0
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x20(1)
    lwz 11, 0x24(1)
    stw 11, 0x8(5)
    lhz 11, 0x2b8(3)
    lfsx 1, 4, 10
    stw 11, 0x2c(1)
    lfd 2, 0x28(1)
    fsubs 2, 2, 0
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x30(1)
    lwz 10, 0x34(1)
    stw 10, 0xc(5)
    lhz 10, 0x2b8(3)
    lfsx 1, 4, 9
    stw 10, 0x3c(1)
    lfd 2, 0x38(1)
    fsubs 2, 2, 0
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x40(1)
    lwz 9, 0x44(1)
    stw 9, 0x10(5)
    lhz 9, 0x2b8(3)
    lfsx 1, 4, 8
    stw 9, 0x4c(1)
    lfd 2, 0x48(1)
    fsubs 2, 2, 0
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 8, 0x54(1)
    stw 8, 0x14(5)
    lhz 10, 0x2b8(3)
    addi 8, 6, 0xa00
    extsh 9, 8
    stw 0, 0x58(1)
    addi 8, 6, 0xc00
    addi 6, 6, 0xe00
    stw 10, 0x5c(1)
    rlwinm 9, 9, 30, 18, 28
    lfsx 1, 4, 9
    rlwinm 8, 8, 30, 18, 28
    lfd 2, 0x58(1)
    rlwinm 6, 6, 30, 18, 28
    stw 0, 0x68(1)
    addi 7, 7, 0x1000
    fsubs 2, 2, 0
    stw 0, 0x78(1)
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x60(1)
    lwz 9, 0x64(1)
    stw 9, 0x18(5)
    lhz 9, 0x2b8(3)
    lfsx 1, 4, 8
    stw 9, 0x6c(1)
    lfd 2, 0x68(1)
    fsubs 2, 2, 0
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x70(1)
    lwz 8, 0x74(1)
    stw 8, 0x1c(5)
    lhz 8, 0x2b8(3)
    lfsx 1, 4, 6
    stw 8, 0x7c(1)
    lfd 2, 0x78(1)
    fsubs 2, 2, 0
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x80(1)
    lwz 6, 0x84(1)
    stwu 6, 0x20(5)
    .4byte 0x4200FE3C # bdnz .L_8030B37C
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030B558
    cmplwi 0, 0x4
    .4byte 0x40820010 # bne .L_8030B564
L_8030B558:
    lhz 4, 0x2b8(3)
    subi 0, 4, 0x1
    sth 0, 0x2b8(3)
L_8030B564:
    addi 3, 3, 0x4
L_8030B568:
    addi 1, 1, 0x90
    blr

fn_8030B570:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr 28, 3
    mr 29, 4
    mr 30, 5
    lwz 3, 0x288(3)
    bl fn_8022EA0C
    mr 31, 3
    bl fn_80234950
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8030B5A8
    lwz 31, 0x2b4(28)
L_8030B5A8:
    mr 3, 31
    bl fn_8023DE58
    lwz 0, 0x28c(28)
    cmpw 0, 3
    .4byte 0x41820008 # beq .L_8030B5C0
    lwz 31, 0x2b0(28)
L_8030B5C0:
    mr 3, 31
    bl fn_8023DE58
    lwz 0, 0x28c(28)
    cmpw 0, 3
    .4byte 0x41820008 # beq .L_8030B5D8
    lwz 31, 0x288(28)
L_8030B5D8:
    mr 3, 31
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800064 # blt .L_8030B648
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x0(3)
    mr 3, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 25, 0xc(1)
    bl fn_8023E724
    lfs 0, 0x4(3)
    mr 3, 31
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 26, 0x14(1)
    bl fn_80234ECC
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_8030B6B8
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x8(3)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    subf 26, 0, 26
    .4byte 0x48000074 # b .L_8030B6B8
L_8030B648:
    bl GetRoomConfigRecord
    mr 27, 3
    bl GetRoomConfigRecord
    mr 26, 3
    mr 3, 31
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xcc(27)
    lfs 0, 0xdc(26)
    fsubs 1, 2, 1
    fadds 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 25, 0x14(1)
    bl GetRoomConfigRecord
    mr 26, 3
    bl GetRoomConfigRecord
    mr 27, 3
    mr 3, 31
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0xd0(26)
    lfs 0, 0xe0(27)
    fsubs 1, 2, 1
    fadds 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 26, 0xc(1)
L_8030B6B8:
    lwz 3, 0x2a0(28)
    addi 0, 25, 0x78
    subi 26, 26, 0x50
    subi 25, 25, 0x78
    cmpw 0, 3
    .4byte 0x4180000C # blt .L_8030B6D8
    subi 25, 3, 0xf0
    .4byte 0x48000014 # b .L_8030B6E8
L_8030B6D8:
    lwz 0, 0x2a4(28)
    cmpw 25, 0
    .4byte 0x41810008 # bgt .L_8030B6E8
    mr 25, 0
L_8030B6E8:
    lwz 3, 0x2a8(28)
    addi 0, 26, 0xa0
    cmpw 0, 3
    .4byte 0x4180000C # blt .L_8030B700
    subi 26, 3, 0xa0
    .4byte 0x48000014 # b .L_8030B710
L_8030B700:
    lwz 0, 0x2ac(28)
    cmpw 26, 0
    .4byte 0x41810008 # bgt .L_8030B710
    mr 26, 0
L_8030B710:
    lwz 3, 0x298(28)
    lwz 0, 0x29c(28)
    add. 25, 25, 3
    add 26, 26, 0
    .4byte 0x4080000C # bge .L_8030B72C
    li 25, 0x0
    .4byte 0x48000010 # b .L_8030B738
L_8030B72C:
    cmpwi 25, 0x110
    .4byte 0x40810008 # ble .L_8030B738
    li 25, 0x110
L_8030B738:
    cmpwi 26, 0x0
    .4byte 0x4080000C # bge .L_8030B748
    li 26, 0x0
    .4byte 0x48000010 # b .L_8030B754
L_8030B748:
    cmpwi 26, 0x160
    .4byte 0x40810008 # ble .L_8030B754
    li 26, 0x160
L_8030B754:
    stw 25, 0x0(29)
    mr 3, 31
    stw 26, 0x0(30)
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8030B774:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 3, 0x288(3)
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418201D4 # beq .L_8030B968
    lwz 3, 0x288(31)
    bl fn_8023DE58
    lwz 0, 0x28c(31)
    cmpw 0, 3
    .4byte 0x41820018 # beq .L_8030B7C0
    lwz 3, 0x288(31)
    bl fn_8023DE58
    stw 3, 0x28c(31)
    mr 3, 31
    bl fn_8030B97C
L_8030B7C0:
    mr 3, 31
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    bl fn_8030B570
    stw 3, 0x2b4(31)
    lwz 3, 0x2b4(31)
    lwz 0, 0x2b0(31)
    cmpw 3, 0
    .4byte 0x41820178 # beq .L_8030B958
    lwz 3, 0x294(31)
    lis 4, 0x4330
    lwz 0, 0x8(1)
    lwz 5, 0x290(31)
    subf 0, 3, 0
    lwz 3, 0xc(1)
    xoris 0, 0, 0x8000
    stw 4, 0x18(1)
    subf 3, 5, 3
    .4byte 0xC882E6F8 # lfd f4, lbl_80541698@sda21(r0)
    stw 0, 0x1c(1)
    xoris 0, 3, 0x8000
    .4byte 0xC022E708 # lfs f1, lbl_805416A8@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 0, 0, 4
    stw 4, 0x10(1)
    lfd 3, 0x10(1)
    fmuls 2, 0, 0
    fsubs 5, 3, 4
    fmadds 6, 5, 5, 2
    fcmpo cr0, 6, 1
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8030B84C
    fmr 2, 6
    .4byte 0x48000028 # b .L_8030B870
L_8030B84C:
    frsqrte 4, 6
    .4byte 0xC062E70C # lfs f3, lbl_805416AC@sda21(r0)
    .4byte 0xC022E710 # lfs f1, lbl_805416B0@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 1, 6, 2, 1
    fmuls 1, 3, 1
    fmuls 2, 6, 1
L_8030B870:
    .4byte 0xC022E714 # lfs f1, lbl_805416B4@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x408100C4 # ble .L_8030B93C
    lis 3, lbl_80539D44@ha
    .4byte 0xC042E718 # lfs f2, lbl_805416B8@sda21(r0)
    lfs 1, lbl_80539D44@l(3)
    fmuls 1, 2, 1
    fcmpo cr0, 6, 1
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_8030B8D4
    .4byte 0xC022E708 # lfs f1, lbl_805416A8@sda21(r0)
    fcmpo cr0, 6, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8030B8AC
    .4byte 0x48000024 # b .L_8030B8CC
L_8030B8AC:
    frsqrte 4, 6
    .4byte 0xC062E70C # lfs f3, lbl_805416AC@sda21(r0)
    .4byte 0xC022E710 # lfs f1, lbl_805416B0@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 1, 6, 2, 1
    fmuls 6, 3, 1
L_8030B8CC:
    fmuls 5, 5, 6
    fmuls 0, 0, 6
L_8030B8D4:
    lwz 3, 0x290(31)
    lis 0, 0x4330
    stw 0, 0x18(1)
    xoris 3, 3, 0x8000
    .4byte 0xC842E6F8 # lfd f2, lbl_80541698@sda21(r0)
    stw 3, 0x1c(1)
    .4byte 0xC062E714 # lfs f3, lbl_805416B4@sda21(r0)
    lfd 1, 0x18(1)
    stw 0, 0x20(1)
    fsubs 1, 1, 2
    fmadds 1, 3, 5, 1
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x290(31)
    lwz 0, 0x294(31)
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 1, 0x20(1)
    fsubs 1, 1, 2
    fmadds 0, 3, 0, 1
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    stw 0, 0x294(31)
    .4byte 0x48000030 # b .L_8030B968
L_8030B93C:
    lwz 0, 0xc(1)
    stw 0, 0x290(31)
    lwz 0, 0x8(1)
    stw 0, 0x294(31)
    lwz 0, 0x2b4(31)
    stw 0, 0x2b0(31)
    .4byte 0x48000014 # b .L_8030B968
L_8030B958:
    lwz 0, 0xc(1)
    stw 0, 0x290(31)
    lwz 0, 0x8(1)
    stw 0, 0x294(31)
L_8030B968:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8030B97C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 28, 3
    lwz 3, 0x288(3)
    bl fn_8023DE58
    mr 31, 3
    cmpwi 31, 0x8
    .4byte 0x40800008 # bge .L_8030B9B8
    li 31, 0x8
L_8030B9B8:
    lwz 3, 0x288(28)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lfs 1, 0x8(1)
    bl __cvt_fp2unsigned
    lfs 1, 0xc(1)
    clrrwi 30, 3, 3
    bl __cvt_fp2unsigned
    lis 0, 0x4330
    clrrwi 29, 3, 3
    stw 30, 0x1c(1)
    li 27, 0x0
    .4byte 0xC002E708 # lfs f0, lbl_805416A8@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC862E700 # lfd f3, lbl_805416A0@sda21(r0)
    lfd 1, 0x18(1)
    stw 29, 0x24(1)
    fsubs 2, 1, 3
    .4byte 0xC3E2E71C # lfs f31, lbl_805416BC@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3C2E720 # lfs f30, lbl_805416C0@sda21(r0)
    lfd 1, 0x20(1)
    stfs 2, 0x8(1)
    fsubs 1, 1, 3
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
L_8030BA2C:
    lfs 0, 0x8(1)
    fcmpo cr0, 0, 31
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8030BA44
    stfs 31, 0x8(1)
    .4byte 0x48000044 # b .L_8030BA84
L_8030BA44:
    mr 4, 31
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800014 # blt .L_8030BA6C
    cmplwi 0, 0x10
    .4byte 0x4080000C # bge .L_8030BA6C
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_8030BA84
L_8030BA6C:
    lfs 0, 0x8(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fadds 0, 0, 30
    stfs 0, 0x8(1)
    .4byte 0x4180FFAC # blt .L_8030BA2C
L_8030BA84:
    lfs 0, 0x8(1)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x2a0(28)
    lwz 0, 0x2a0(28)
    cmpwi 0, 0xf0
    .4byte 0x4080000C # bge .L_8030BAAC
    li 0, 0xf0
    stw 0, 0x2a0(28)
L_8030BAAC:
    lis 0, 0x4330
    stw 30, 0x24(1)
    .4byte 0xC822E700 # lfd f1, lbl_805416A0@sda21(r0)
    li 27, 0x0
    stw 0, 0x20(1)
    .4byte 0xC3C2E720 # lfs f30, lbl_805416C0@sda21(r0)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(1)
L_8030BAD0:
    lfs 0, 0x8(1)
    fcmpo cr0, 0, 30
    .4byte 0x40800010 # bge .L_8030BAE8
    .4byte 0xC002E708 # lfs f0, lbl_805416A8@sda21(r0)
    stfs 0, 0x8(1)
    .4byte 0x48000058 # b .L_8030BB3C
L_8030BAE8:
    mr 4, 31
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800028 # blt .L_8030BB24
    cmplwi 0, 0x10
    .4byte 0x40800020 # bge .L_8030BB24
    clrlwi. 0, 3, 31
    .4byte 0x41820018 # beq .L_8030BB24
    lfs 1, 0x8(1)
    .4byte 0xC002E720 # lfs f0, lbl_805416C0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800001C # b .L_8030BB3C
L_8030BB24:
    lfs 0, 0x8(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fsubs 0, 0, 30
    stfs 0, 0x8(1)
    .4byte 0x4180FF98 # blt .L_8030BAD0
L_8030BB3C:
    lfs 0, 0x8(1)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x2a4(28)
    lwz 0, 0x2a4(28)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8030BB64
    li 0, 0x0
    stw 0, 0x2a4(28)
L_8030BB64:
    lwz 0, 0x2a4(28)
    lwz 3, 0x2a0(28)
    subf 0, 0, 3
    cmpwi 0, 0xf0
    .4byte 0x4080000C # bge .L_8030BB80
    subi 0, 3, 0xf0
    stw 0, 0x2a4(28)
L_8030BB80:
    lis 0, 0x4330
    .4byte 0xC002E708 # lfs f0, lbl_805416A8@sda21(r0)
    stw 30, 0x24(1)
    li 27, 0x0
    .4byte 0xC862E700 # lfd f3, lbl_805416A0@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3C2E71C # lfs f30, lbl_805416BC@sda21(r0)
    lfd 1, 0x20(1)
    stw 29, 0x1c(1)
    fsubs 2, 1, 3
    .4byte 0xC3E2E720 # lfs f31, lbl_805416C0@sda21(r0)
    stw 0, 0x18(1)
    lfd 1, 0x18(1)
    stfs 2, 0x8(1)
    fsubs 1, 1, 3
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
L_8030BBC4:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8030BBDC
    stfs 30, 0xc(1)
    .4byte 0x48000044 # b .L_8030BC1C
L_8030BBDC:
    mr 4, 31
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800014 # blt .L_8030BC04
    cmplwi 0, 0x10
    .4byte 0x4080000C # bge .L_8030BC04
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_8030BC1C
L_8030BC04:
    lfs 0, 0xc(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fadds 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FFAC # blt .L_8030BBC4
L_8030BC1C:
    lfs 0, 0xc(1)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x2a8(28)
    lwz 0, 0x2a8(28)
    cmpwi 0, 0xa0
    .4byte 0x4080000C # bge .L_8030BC44
    li 0, 0xa0
    stw 0, 0x2a8(28)
L_8030BC44:
    lis 0, 0x4330
    stw 29, 0x24(1)
    .4byte 0xC822E700 # lfd f1, lbl_805416A0@sda21(r0)
    li 27, 0x0
    stw 0, 0x20(1)
    .4byte 0xC3E2E720 # lfs f31, lbl_805416C0@sda21(r0)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(1)
L_8030BC68:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 31
    .4byte 0x40800010 # bge .L_8030BC80
    .4byte 0xC002E708 # lfs f0, lbl_805416A8@sda21(r0)
    stfs 0, 0xc(1)
    .4byte 0x48000058 # b .L_8030BCD4
L_8030BC80:
    mr 4, 31
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800028 # blt .L_8030BCBC
    cmplwi 0, 0x10
    .4byte 0x40800020 # bge .L_8030BCBC
    clrlwi. 0, 3, 31
    .4byte 0x41820018 # beq .L_8030BCBC
    lfs 1, 0xc(1)
    .4byte 0xC002E720 # lfs f0, lbl_805416C0@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800001C # b .L_8030BCD4
L_8030BCBC:
    lfs 0, 0xc(1)
    addi 27, 27, 0x1
    cmpwi 27, 0x40
    fsubs 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FF98 # blt .L_8030BC68
L_8030BCD4:
    lfs 0, 0xc(1)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x2ac(28)
    lwz 0, 0x2ac(28)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8030BCFC
    li 0, 0x0
    stw 0, 0x2ac(28)
L_8030BCFC:
    lwz 0, 0x2ac(28)
    lwz 3, 0x2a8(28)
    subf 0, 0, 3
    cmpwi 0, 0xa0
    .4byte 0x4080000C # bge .L_8030BD18
    subi 0, 3, 0xa0
    stw 0, 0x2ac(28)
L_8030BD18:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8030BD3C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 4, 0x288(3)
    lwz 0, 0x2b0(3)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8030BD68
    lwz 0, 0x288(31)
    stw 0, 0x2b0(31)
L_8030BD68:
    mr 3, 4
    bl fn_8023DE58
    stw 3, 0x28c(31)
    mr 3, 31
    bl fn_8030B97C
    mr 3, 31
    addi 4, 31, 0x290
    addi 5, 31, 0x294
    bl fn_8030B570
    stw 3, 0x2b4(31)
    li 0, 0x0
    stw 0, 0x298(31)
    stw 0, 0x29c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030BDB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8030BDE0
    lis 5, lbl_804AA8D8@ha
    extsh. 0, 4
    addi 0, 5, lbl_804AA8D8@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8030BDE0
    bl dtor_80084580
L_8030BDE0:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030BDF8:
    lis 4, lbl_804AA8D8@ha
    li 5, 0x0
    addi 0, 4, lbl_804AA8D8@l
    li 4, -0x1
    stw 0, 0x0(3)
    li 0, 0xff
    stw 5, 0x28c(3)
    stw 4, 0x2b4(3)
    stw 4, 0x2b0(3)
    stw 4, 0x288(3)
    sth 5, 0x2b8(3)
    sth 5, 0x2ba(3)
    stb 0, 0x2bc(3)
    stb 5, 0x284(3)
    blr

fn_8030BE34:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805077F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805077F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030BE84
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8030BE84:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030BEBC
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8030BEBC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030BEF4
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8030BEF4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030BF2C
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8030BF2C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030BF64
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8030BF64:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030BF9C
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8030BF9C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030BFD4
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8030BFD4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030C00C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8030C00C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030C044
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8030C044:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030C058:
    lwz 5, 0x7f0(3)
    li 6, 0x0
    addi 0, 5, 0x1
    cmpwi 0, 0x80
    .4byte 0x408001A0 # bge .L_8030C208
    lfs 2, 0x0(4)
    li 0, 0x0
    lfs 3, 0x154(3)
    fcmpo cr0, 2, 3
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8030C0B4
    lfs 1, 0x4(4)
    lfs 0, 0x158(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8030C0B4
    lfs 0, 0x15c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8030C0B4
    lfs 0, 0x160(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8030C0B4
    li 0, 0x1
L_8030C0B4:
    clrlwi. 0, 0, 24
    .4byte 0x41820150 # beq .L_8030C208
    lfs 4, 0x8(4)
    li 0, 0x0
    fcmpo cr0, 4, 3
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8030C100
    lfs 1, 0xc(4)
    lfs 0, 0x158(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8030C100
    lfs 0, 0x15c(3)
    fcmpo cr0, 4, 0
    .4byte 0x40800014 # bge .L_8030C100
    lfs 0, 0x160(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8030C100
    li 0, 0x1
L_8030C100:
    clrlwi. 0, 0, 24
    .4byte 0x41820104 # beq .L_8030C208
    cmpwi 5, 0x80
    lfs 1, 0x4(4)
    .4byte 0x40800070 # bge .L_8030C180
    fcmpo cr0, 2, 3
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8030C150
    lfs 0, 0x158(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8030C150
    lfs 0, 0x15c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8030C150
    lfs 0, 0x160(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8030C150
    li 0, 0x1
L_8030C150:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8030C180
    mulli 5, 5, 0xc
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    addi 5, 5, 0x1f0
    add 5, 3, 5
    stfs 2, 0x0(5)
    stfs 1, 0x4(5)
    stfs 0, 0x8(5)
    lwz 5, 0x7f0(3)
    addi 0, 5, 0x1
    stw 0, 0x7f0(3)
L_8030C180:
    lwz 5, 0x7f0(3)
    lfs 1, 0x8(4)
    cmpwi 5, 0x80
    lfs 2, 0xc(4)
    .4byte 0x40800074 # bge .L_8030C204
    lfs 0, 0x154(3)
    li 0, 0x0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8030C1D4
    lfs 0, 0x158(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8030C1D4
    lfs 0, 0x15c(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8030C1D4
    lfs 0, 0x160(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_8030C1D4
    li 0, 0x1
L_8030C1D4:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8030C204
    mulli 4, 5, 0xc
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    addi 4, 4, 0x1f0
    add 4, 3, 4
    stfs 1, 0x0(4)
    stfs 2, 0x4(4)
    stfs 0, 0x8(4)
    lwz 4, 0x7f0(3)
    addi 0, 4, 0x1
    stw 0, 0x7f0(3)
L_8030C204:
    li 6, 0x1
L_8030C208:
    clrlwi 3, 6, 24
    blr

fn_8030C210:
    lwz 5, 0x7f0(3)
    li 6, 0x0
    cmpwi 5, 0x80
    .4byte 0x40800084 # bge .L_8030C2A0
    lfs 2, 0x0(4)
    li 0, 0x0
    lfs 0, 0x154(3)
    lfs 1, 0x4(4)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8030C268
    lfs 0, 0x158(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8030C268
    lfs 0, 0x15c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8030C268
    lfs 0, 0x160(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8030C268
    li 0, 0x1
L_8030C268:
    clrlwi. 0, 0, 24
    .4byte 0x41820034 # beq .L_8030C2A0
    mulli 5, 5, 0xc
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    li 6, 0x1
    addi 4, 5, 0x1f0
    add 4, 3, 4
    stfs 2, 0x0(4)
    stfs 1, 0x4(4)
    stfs 0, 0x8(4)
    lwz 4, 0x7f0(3)
    addi 0, 4, 0x1
    stw 0, 0x7f0(3)
L_8030C2A0:
    clrlwi 3, 6, 24
    blr

fn_8030C2A8:
    stwu 1, -0x40(1)
    mflr 0
    li 5, 0x1
    li 6, 0x0
    stw 0, 0x44(1)
    addi 7, 1, 0x8
    stw 31, 0x3c(1)
    mr 31, 3
    bl fn_8030C5F0
    lwz 4, 0x144(31)
    lis 5, 0x4330
    stw 5, 0x18(1)
    li 3, 0x0
    addi 0, 4, 0xe
    .4byte 0xC842E730 # lfd f2, lbl_805416D0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 1, 0x8(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820070 # bne .L_8030C36C
    lwz 4, 0x14c(31)
    stw 5, 0x20(1)
    subi 0, 4, 0xe
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800050 # bge .L_8030C36C
    lwz 4, 0x148(31)
    stw 5, 0x28(1)
    addi 0, 4, 0xe
    lfs 1, 0xc(1)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8030C36C
    lwz 4, 0x150(31)
    stw 5, 0x30(1)
    subi 0, 4, 0xe
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8030C36C
    li 3, 0x1
L_8030C36C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8030C380:
    stwu 1, -0x40(1)
    lis 5, 0x4330
    .4byte 0xC0E2E728 # lfs f7, lbl_805416C8@sda21(r0)
    .4byte 0x80CD8DC0 # lwz r6, lbl_8053A980@sda21(r0)
    lfs 5, 0x164(3)
    lwz 6, 0x4(6)
    lfs 0, 0x16c(3)
    lhz 0, 0x4(6)
    fsubs 0, 0, 5
    lhz 6, 0x6(6)
    xoris 0, 0, 0x8000
    lfs 4, 0x168(3)
    stw 0, 0x14(1)
    xoris 0, 6, 0x8000
    fmuls 1, 7, 0
    lfs 0, 0x170(3)
    stw 5, 0x10(1)
    fsubs 3, 0, 4
    .4byte 0xC8C2E740 # lfd f6, lbl_805416E0@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 0, 0, 6
    stw 5, 0x8(1)
    fmuls 3, 7, 3
    lfd 2, 0x8(1)
    fdivs 0, 1, 0
    stw 5, 0x28(1)
    stw 5, 0x18(1)
    stw 5, 0x30(1)
    stw 5, 0x20(1)
    fsubs 2, 2, 6
    fadds 0, 5, 0
    fdivs 1, 3, 2
    stfs 0, 0x0(4)
    fadds 1, 4, 1
    stfs 1, 0x4(4)
    stfs 7, 0x8(4)
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lfs 9, 0x164(3)
    lwz 5, 0x4(5)
    lfs 0, 0x16c(3)
    lhz 0, 0x4(5)
    lhz 5, 0x6(5)
    fsubs 1, 0, 9
    xoris 0, 0, 0x8000
    lfs 8, 0x168(3)
    xoris 5, 5, 0x8000
    stw 0, 0x2c(1)
    lfs 2, 0x170(3)
    stw 5, 0x1c(1)
    lfd 0, 0x28(1)
    fsubs 4, 2, 8
    lfd 3, 0x18(1)
    fsubs 2, 0, 6
    stw 0, 0x34(1)
    fsubs 5, 3, 6
    stw 5, 0x24(1)
    lfd 0, 0x30(1)
    fmuls 1, 2, 1
    lfd 3, 0x20(1)
    fmuls 4, 5, 4
    fsubs 0, 0, 6
    fsubs 2, 3, 6
    fdivs 0, 1, 0
    fdivs 1, 4, 2
    fadds 0, 9, 0
    fadds 1, 8, 1
    stfs 0, 0xc(4)
    stfs 1, 0x10(4)
    stfs 7, 0x14(4)
    addi 1, 1, 0x40
    blr

fn_8030C4A0:
    clrlwi. 0, 5, 24
    stwu 1, -0x30(1)
    .4byte 0x418200B8 # beq .L_8030C560
    lwz 5, 0x144(3)
    lis 7, 0x4330
    lwz 8, 0x148(3)
    stw 5, 0x1c(1)
    lwz 0, 0x14c(3)
    stw 7, 0x18(1)
    .4byte 0xC8A2E730 # lfd f5, lbl_805416D0@sda21(r0)
    subf 0, 5, 0
    lfd 0, 0x18(1)
    lwz 5, 0x150(3)
    stw 8, 0xc(1)
    fsubs 0, 0, 5
    lfs 1, 0x0(4)
    subf 5, 8, 5
    stw 7, 0x8(1)
    lfs 7, 0x164(3)
    fsubs 2, 1, 0
    lfd 1, 0x8(1)
    lfs 0, 0x16c(3)
    stw 0, 0x24(1)
    fsubs 3, 1, 5
    fsubs 1, 0, 7
    lfs 0, 0x4(4)
    stw 7, 0x20(1)
    lfs 6, 0x168(3)
    fsubs 4, 0, 3
    lfs 3, 0x170(3)
    lfd 0, 0x20(1)
    fmuls 2, 2, 1
    fsubs 3, 3, 6
    stw 5, 0x14(1)
    fsubs 1, 0, 5
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    stw 7, 0x10(1)
    fmuls 4, 4, 3
    lfd 3, 0x10(1)
    fdivs 1, 2, 1
    fsubs 2, 3, 5
    fadds 1, 7, 1
    fdivs 2, 4, 2
    stfs 1, 0x0(6)
    fadds 1, 6, 2
    stfs 1, 0x4(6)
    stfs 0, 0x8(6)
    .4byte 0x4800008C # b .L_8030C5E8
L_8030C560:
    .4byte 0x80ED8DC0 # lwz r7, lbl_8053A980@sda21(r0)
    lis 5, 0x4330
    lfs 8, 0x164(3)
    lwz 7, 0x4(7)
    lfs 0, 0x16c(3)
    lhz 0, 0x4(7)
    lhz 7, 0x6(7)
    fsubs 0, 0, 8
    xoris 0, 0, 0x8000
    lfs 1, 0x0(4)
    stw 0, 0x1c(1)
    xoris 0, 7, 0x8000
    lfs 7, 0x168(3)
    stw 5, 0x18(1)
    fmuls 2, 1, 0
    lfs 0, 0x170(3)
    stw 0, 0x24(1)
    .4byte 0xC882E740 # lfd f4, lbl_805416E0@sda21(r0)
    fsubs 5, 0, 7
    stw 5, 0x20(1)
    lfd 0, 0x18(1)
    lfs 6, 0x4(4)
    fsubs 1, 0, 4
    lfd 3, 0x20(1)
    fmuls 5, 6, 5
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    fsubs 3, 3, 4
    fdivs 1, 2, 1
    fdivs 2, 5, 3
    fadds 1, 8, 1
    fadds 2, 7, 2
    stfs 1, 0x0(6)
    stfs 2, 0x4(6)
    stfs 0, 0x8(6)
L_8030C5E8:
    addi 1, 1, 0x30
    blr

fn_8030C5F0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 7
    stw 30, 0x48(1)
    mr 30, 6
    stw 29, 0x44(1)
    mr 29, 5
    addi 5, 1, 0x8
    stw 28, 0x40(1)
    mr 28, 3
    addi 3, 28, 0x74
    bl PSMTXMultVec
    lfs 5, 0xc(1)
    clrlwi. 0, 30, 24
    lfs 1, 0xb8(28)
    lfs 0, 0xa8(28)
    fmuls 2, 5, 1
    lfs 4, 0x8(1)
    fmuls 0, 5, 0
    lfs 3, 0xb4(28)
    lfs 1, 0xa4(28)
    fmadds 2, 4, 3, 2
    fmadds 0, 4, 1, 0
    lfs 5, 0x10(1)
    lfs 3, 0xbc(28)
    lfs 1, 0xac(28)
    fmadds 2, 5, 3, 2
    .4byte 0xC082E738 # lfs f4, lbl_805416D8@sda21(r0)
    fmadds 0, 5, 1, 0
    lfs 3, 0xc0(28)
    lfs 1, 0xb0(28)
    fmadds 3, 4, 3, 2
    fmadds 0, 4, 1, 0
    .4byte 0x41820024 # beq .L_8030C6A0
    fadds 1, 4, 0
    .4byte 0xC042E748 # lfs f2, lbl_805416E8@sda21(r0)
    fsubs 0, 4, 3
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x0(31)
    stfs 0, 0x4(31)
    .4byte 0x48000100 # b .L_8030C79C
L_8030C6A0:
    clrlwi. 0, 29, 24
    .4byte 0x4182008C # beq .L_8030C730
    lwz 4, 0x144(28)
    lis 0, 0x4330
    lwz 3, 0x14c(28)
    fadds 1, 4, 0
    .4byte 0xC042E748 # lfs f2, lbl_805416E8@sda21(r0)
    fsubs 0, 4, 3
    subf 3, 4, 3
    stw 0, 0x18(1)
    .4byte 0xC862E730 # lfd f3, lbl_805416D0@sda21(r0)
    stw 3, 0x1c(1)
    fmuls 4, 2, 1
    fmuls 2, 2, 0
    lfd 0, 0x18(1)
    stw 4, 0x24(1)
    fsubs 1, 0, 3
    stw 0, 0x20(1)
    lfd 0, 0x20(1)
    stw 0, 0x28(1)
    fsubs 0, 0, 3
    stw 0, 0x30(1)
    fmadds 0, 4, 1, 0
    stfs 0, 0x0(31)
    lwz 3, 0x148(28)
    lwz 0, 0x150(28)
    stw 3, 0x34(1)
    subf 0, 3, 0
    stw 0, 0x2c(1)
    lfd 0, 0x30(1)
    lfd 1, 0x28(1)
    fsubs 0, 0, 3
    fsubs 1, 1, 3
    fmadds 0, 2, 1, 0
    stfs 0, 0x4(31)
    .4byte 0x48000070 # b .L_8030C79C
L_8030C730:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x30(1)
    fadds 1, 4, 0
    lwz 3, 0x4(3)
    fsubs 0, 4, 3
    .4byte 0xC082E748 # lfs f4, lbl_805416E8@sda21(r0)
    lhz 3, 0x4(3)
    .4byte 0xC842E740 # lfd f2, lbl_805416E0@sda21(r0)
    fmuls 3, 4, 1
    xoris 3, 3, 0x8000
    stw 0, 0x28(1)
    fmuls 1, 4, 0
    stw 3, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    stfs 0, 0x0(31)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lwz 3, 0x4(3)
    lhz 0, 0x6(3)
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    stfs 0, 0x4(31)
L_8030C79C:
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    stfs 0, 0x8(31)
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8030C7C4:
    stwu 1, -0x20(1)
    lis 6, 0x4330
    .4byte 0xC0A2E748 # lfs f5, lbl_805416E8@sda21(r0)
    li 0, 0x1
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    fmuls 2, 5, 1
    lfs 3, 0x0(4)
    lwz 7, 0x4(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 5, 0x6(7)
    fsubs 0, 3, 2
    lhz 7, 0x4(7)
    fadds 6, 3, 2
    xoris 5, 5, 0x8000
    lwz 3, 0x24(3)
    stw 5, 0xc(1)
    xoris 5, 7, 0x8000
    .4byte 0xC882E740 # lfd f4, lbl_805416E0@sda21(r0)
    stw 6, 0x8(1)
    lfs 7, 0x4(4)
    lfd 2, 0x8(1)
    stw 5, 0x14(1)
    fsubs 3, 2, 4
    stw 6, 0x10(1)
    lfd 2, 0x10(1)
    fmuls 1, 1, 3
    stfs 0, 0x180(3)
    fsubs 0, 2, 4
    fdivs 0, 1, 0
    fmuls 1, 5, 0
    fsubs 0, 7, 1
    fadds 1, 7, 1
    stfs 0, 0x184(3)
    stfs 6, 0x188(3)
    stfs 1, 0x18c(3)
    stb 0, 0x17e(3)
    addi 1, 1, 0x20
    blr

fn_8030C85C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stb 4, 0x1e8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235c(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030C890
    stb 4, 0x2360(3)
L_8030C890:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235d(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030C8A8
    stb 4, 0x2361(3)
L_8030C8A8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235e(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030C8C0
    stb 4, 0x2362(3)
L_8030C8C0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030C8D8
    stb 4, 0x2363(3)
L_8030C8D8:
    bl GetRoomConfigRecord
    bl fn_802DCDF4
    lfs 1, 0x190(31)
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    stfs 1, 0x154(31)
    lfs 1, 0x194(31)
    stfs 1, 0x158(31)
    lfs 1, 0x198(31)
    stfs 1, 0x15c(31)
    lfs 1, 0x19c(31)
    stfs 1, 0x160(31)
    stfs 0, 0x1b8(31)
    stfs 0, 0x1b4(31)
    stfs 0, 0x1c0(31)
    stfs 0, 0x1bc(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030C928:
    stwu 1, -0x20(1)
    lfs 0, 0x0(4)
    lfs 2, 0x4(4)
    stfs 0, 0x190(3)
    lfs 0, 0x4(4)
    lfs 1, 0x8(4)
    stfs 0, 0x194(3)
    lfs 0, 0xc(4)
    stfs 1, 0x198(3)
    lfs 1, 0x0(4)
    stfs 0, 0x19c(3)
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x8(1)
    lwz 3, 0x20(3)
    stfs 2, 0xc(1)
    lbz 0, 0x235c(3)
    psq_l 3, 0x8(1), 0, 0
    stb 0, 0x2360(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x10(1)
    lwz 3, 0x20(3)
    lbz 0, 0x235d(3)
    stb 0, 0x2361(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235e(3)
    stb 0, 0x2362(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235f(3)
    stb 0, 0x2363(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    addi 4, 3, 0x2368
    addi 3, 3, 0x2374
    psq_l 2, 0x0(4), 0, 0
    lfs 1, 0x8(4)
    psq_st 2, 0x0(3), 0, 0
    stfs 1, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    addi 3, 3, 0x2368
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    addi 1, 1, 0x20
    blr

fn_8030C9E4:
    stwu 1, -0x20(1)
    mflr 0
    li 6, 0x0
    .4byte 0xC002E74C # lfs f0, lbl_805416EC@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x1
    lis 5, lbl_804AA8E8@ha
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    addi 7, 30, 0x1a0
    stb 0, 0x1e8(3)
    li 0, 0x1e
    addi 8, 30, 0x1b0
    stw 0, 0x1ec(3)
    addi 0, 5, lbl_804AA8E8@l
    stb 6, 0x7f5(3)
    li 6, 0x0
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    lwz 5, 0x174(3)
    mulli 5, 5, 0x24
    add 5, 0, 5
    bl fn_8030CD18
    lfs 0, 0x0(31)
    lfs 2, 0x4(31)
    stfs 0, 0x190(30)
    lfs 0, 0x4(31)
    lfs 1, 0x8(31)
    stfs 0, 0x194(30)
    lfs 0, 0xc(31)
    stfs 1, 0x198(30)
    lfs 1, 0x0(31)
    stfs 0, 0x19c(30)
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x8(1)
    lwz 3, 0x20(3)
    stfs 2, 0xc(1)
    lbz 0, 0x235c(3)
    psq_l 3, 0x8(1), 0, 0
    stb 0, 0x2360(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x10(1)
    lwz 3, 0x20(3)
    lbz 0, 0x235d(3)
    stb 0, 0x2361(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235e(3)
    stb 0, 0x2362(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235f(3)
    stb 0, 0x2363(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    addi 4, 3, 0x2368
    addi 3, 3, 0x2374
    psq_l 2, 0x0(4), 0, 0
    lfs 1, 0x8(4)
    psq_st 2, 0x0(3), 0, 0
    stfs 1, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    addi 3, 3, 0x2368
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8030CB10:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    .4byte 0xC042E738 # lfs f2, lbl_805416D8@sda21(r0)
    frsp 0, 1
    .4byte 0xC0A2E728 # lfs f5, lbl_805416C8@sda21(r0)
    mr 30, 3
    stfs 2, 0x4(3)
    mr 31, 4
    fneg 7, 0
    stfs 5, 0x8(3)
    addi 3, 30, 0x34
    lfs 6, 0x4(4)
    stfs 5, 0xc(30)
    lfs 3, 0xc(4)
    stfs 5, 0x10(30)
    fadds 8, 6, 3
    lfs 4, 0x0(4)
    .4byte 0xC122E748 # lfs f9, lbl_805416E8@sda21(r0)
    fsubs 3, 3, 6
    lfs 0, 0x8(4)
    stfs 5, 0x14(30)
    fadds 6, 4, 0
    fsubs 4, 0, 4
    .4byte 0xC002E74C # lfs f0, lbl_805416EC@sda21(r0)
    fmuls 10, 9, 8
    stfs 2, 0x18(30)
    fmuls 8, 9, 6
    stfs 0, 0x1c(30)
    fmuls 29, 9, 4
    .4byte 0xC0C2E750 # lfs f6, lbl_805416F0@sda21(r0)
    stfs 5, 0x20(30)
    fmuls 28, 9, 3
    frsp 0, 7
    stfs 5, 0x24(30)
    fneg 31, 29
    stfs 2, 0x28(30)
    fneg 30, 28
    fmr 2, 28
    stfs 1, 0x10(1)
    fmr 3, 31
    fmr 4, 29
    stfs 5, 0x2c(30)
    fmr 1, 30
    stfs 8, 0x8(1)
    stfs 10, 0xc(1)
    psq_l 8, 0x8(1), 0, 0
    stfs 5, 0x30(30)
    ps_neg 8, 8
    stfs 7, 0x10(1)
    psq_st 8, 0x8(1), 0, 0
    lfs 8, 0x8(1)
    lfs 7, 0xc(1)
    stfs 8, 0x10(30)
    stfs 7, 0x20(30)
    stfs 0, 0x30(30)
    bl PSMTXLightFrustum
    addi 3, 30, 0x4
    addi 4, 30, 0xe4
    bl PSMTXCopy
    .4byte 0xC0A2E748 # lfs f5, lbl_805416E8@sda21(r0)
    fmr 1, 28
    fmr 2, 30
    addi 3, 30, 0x114
    fmr 3, 31
    fmr 4, 29
    fmr 6, 5
    fmr 7, 5
    fmr 8, 5
    bl C_MTXLightOrtho
    psq_l 2, 0x4(30), 0, 0
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x14(30), 0, 0
    psq_l 6, 0x1c(30), 0, 0
    psq_l 5, 0x24(30), 0, 0
    psq_l 4, 0x2c(30), 0, 0
    lfs 3, 0x0(31)
    psq_st 2, 0x74(30), 0, 0
    lfs 2, 0x4(31)
    psq_st 1, 0x7c(30), 0, 0
    lfs 1, 0x8(31)
    psq_st 0, 0x84(30), 0, 0
    lfs 0, 0xc(31)
    psq_st 6, 0x8c(30), 0, 0
    psq_st 5, 0x94(30), 0, 0
    psq_st 4, 0x9c(30), 0, 0
    psq_l 11, 0x34(30), 0, 0
    psq_l 10, 0x3c(30), 0, 0
    psq_l 9, 0x44(30), 0, 0
    psq_l 8, 0x4c(30), 0, 0
    psq_l 7, 0x54(30), 0, 0
    psq_l 6, 0x5c(30), 0, 0
    psq_l 5, 0x64(30), 0, 0
    psq_l 4, 0x6c(30), 0, 0
    psq_st 11, 0xa4(30), 0, 0
    psq_st 10, 0xac(30), 0, 0
    psq_st 9, 0xb4(30), 0, 0
    psq_st 8, 0xbc(30), 0, 0
    psq_st 7, 0xc4(30), 0, 0
    psq_st 6, 0xcc(30), 0, 0
    psq_st 5, 0xd4(30), 0, 0
    psq_st 4, 0xdc(30), 0, 0
    stfs 3, 0x164(30)
    stfs 2, 0x168(30)
    stfs 1, 0x16c(30)
    stfs 0, 0x170(30)
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x64(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8030CD18:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stfd 25, 0x80(1)
    psq_st 25, 0x88(1), 0, 0
    stmw 20, 0x50(1)
    .4byte 0x812D8DC0 # lwz r9, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    mr 22, 3
    stw 0, 0x38(1)
    lwz 3, 0x4(9)
    mr 23, 4
    stw 0, 0x40(1)
    mr 24, 5
    lhz 0, 0x4(3)
    mr 25, 6
    lhz 3, 0x6(3)
    mr 26, 7
    xoris 0, 0, 0x8000
    .4byte 0xC862E740 # lfd f3, lbl_805416E0@sda21(r0)
    xoris 3, 3, 0x8000
    stw 0, 0x44(1)
    lfs 4, 0x1d4(22)
    mr 27, 8
    stw 3, 0x3c(1)
    li 30, 0x1
    lfd 0, 0x40(1)
    li 29, 0x0
    lfd 1, 0x38(1)
    fsubs 0, 0, 3
    .4byte 0xC042E728 # lfs f2, lbl_805416C8@sda21(r0)
    fsubs 1, 1, 3
    fcmpo cr0, 4, 2
    fdivs 25, 1, 0
    .4byte 0x40800010 # bge .L_8030CDE0
    lfs 0, 0x0(24)
    stfs 0, 0x1d4(22)
    .4byte 0x48000048 # b .L_8030CE24
L_8030CDE0:
    lfs 0, 0x0(24)
    .4byte 0xC022E754 # lfs f1, lbl_805416F4@sda21(r0)
    fsubs 0, 0, 4
    fmuls 1, 1, 0
    fcmpo cr0, 1, 2
    .4byte 0x40800018 # bge .L_8030CE0C
    .4byte 0xC002E758 # lfs f0, lbl_805416F8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_8030CE1C
    fmr 1, 0
    .4byte 0x48000014 # b .L_8030CE1C
L_8030CE0C:
    .4byte 0xC002E75C # lfs f0, lbl_805416FC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8030CE1C
    fmr 1, 0
L_8030CE1C:
    fadds 0, 4, 1
    stfs 0, 0x1d4(22)
L_8030CE24:
    lfs 3, 0x1d8(22)
    .4byte 0xC042E728 # lfs f2, lbl_805416C8@sda21(r0)
    fcmpo cr0, 3, 2
    .4byte 0x40800010 # bge .L_8030CE40
    lfs 0, 0x4(24)
    stfs 0, 0x1d8(22)
    .4byte 0x48000048 # b .L_8030CE84
L_8030CE40:
    lfs 0, 0x4(24)
    .4byte 0xC022E754 # lfs f1, lbl_805416F4@sda21(r0)
    fsubs 0, 0, 3
    fmuls 1, 1, 0
    fcmpo cr0, 1, 2
    .4byte 0x40800018 # bge .L_8030CE6C
    .4byte 0xC002E758 # lfs f0, lbl_805416F8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_8030CE7C
    fmr 1, 0
    .4byte 0x48000014 # b .L_8030CE7C
L_8030CE6C:
    .4byte 0xC002E75C # lfs f0, lbl_805416FC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8030CE7C
    fmr 1, 0
L_8030CE7C:
    fadds 0, 3, 1
    stfs 0, 0x1d8(22)
L_8030CE84:
    cmplwi 25, 0x0
    .4byte 0x418200B0 # beq .L_8030CF38
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    lfs 0, 0x0(25)
    fcmpu cr0, 1, 0
    .4byte 0x40820028 # bne .L_8030CEC0
    lfs 0, 0x8(25)
    fcmpu cr0, 1, 0
    .4byte 0x4082001C # bne .L_8030CEC0
    lfs 0, 0x4(25)
    fcmpu cr0, 1, 0
    .4byte 0x40820010 # bne .L_8030CEC0
    lfs 0, 0xc(25)
    fcmpu cr0, 1, 0
    .4byte 0x4182007C # beq .L_8030CF38
L_8030CEC0:
    lbz 0, 0x7f4(22)
    lwz 29, 0x7f0(22)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_8030CF40
    lwz 0, 0x7f8(22)
    cmpwi 0, 0x4
    .4byte 0x40820024 # bne .L_8030CEFC
    lfs 28, 0x800(22)
    li 30, 0x0
    lfs 31, 0x7fc(22)
    fmr 29, 28
    fmr 30, 31
    fmr 27, 28
    fmr 26, 28
    .4byte 0x48000028 # b .L_8030CF20
L_8030CEFC:
    cmpwi 0, 0x5
    .4byte 0x40820020 # bne .L_8030CF20
    lfs 27, 0x80c(22)
    li 30, 0x0
    lfs 26, 0x814(22)
    fmr 28, 27
    lfs 31, 0x808(22)
    fmr 29, 26
    lfs 30, 0x810(22)
L_8030CF20:
    li 0, 0x0
    stw 0, 0x1c4(22)
    stw 0, 0x1c8(22)
    stw 0, 0x1cc(22)
    stw 0, 0x1d0(22)
    .4byte 0x4800000C # b .L_8030CF40
L_8030CF38:
    li 0, 0x0
    stb 0, 0x7f4(22)
L_8030CF40:
    mr 31, 22
    addi 21, 29, 0x4
    li 28, 0x0
    .4byte 0x480002A4 # b .L_8030D1F0
L_8030CF50:
    lbz 0, 0x7f4(22)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8030CF88
    lwz 0, 0x7f8(22)
    cmpwi 0, 0x0
    .4byte 0x41800024 # blt .L_8030CF88
    cmpw 0, 28
    .4byte 0x4082000C # bne .L_8030CF78
    cmpwi 28, 0x4
    .4byte 0x41800014 # blt .L_8030CF88
L_8030CF78:
    cmpwi 0, 0x6
    .4byte 0x4082026C # bne .L_8030D1E8
    cmpwi 28, 0x4
    .4byte 0x41800264 # blt .L_8030D1E8
L_8030CF88:
    cmpwi 28, 0x4
    .4byte 0x40800124 # bge .L_8030D0B0
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182024C # beq .L_8030D1E8
    mr 3, 28
    bl fn_8023DE58
    lbz 0, 0x20(24)
    mr 20, 3
    cmplwi 0, 0x0
    .4byte 0x418200B4 # beq .L_8030D068
    li 3, 0x0
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820020 # bne .L_8030CFE4
    lbz 0, 0x1e8(22)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8030CFE4
    li 3, 0x0
    bl fn_80234134
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_8030D068
L_8030CFE4:
    cmpwi 28, 0x0
    .4byte 0x40820024 # bne .L_8030D00C
    li 3, 0x0
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820040 # bne .L_8030D038
    li 3, 0x0
    bl fn_80234134
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8030D038
L_8030D00C:
    lbz 0, 0x1e8(22)
    cmplwi 0, 0x0
    .4byte 0x418201D4 # beq .L_8030D1E8
    li 3, 0x0
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x408201C4 # bne .L_8030D1E8
    li 3, 0x0
    bl fn_8022EA0C
    cmpw 28, 3
    .4byte 0x408201B4 # bne .L_8030D1E8
L_8030D038:
    cmpwi 20, 0x8
    .4byte 0x41810018 # bgt .L_8030D054
    mr 3, 28
    bl fn_8023E3B8
    lfs 1, 0x0(3)
    lfs 2, 0x4(3)
    .4byte 0x48000128 # b .L_8030D178
L_8030D054:
    mr 3, 28
    bl fn_8023E32C
    lfs 1, 0x0(3)
    lfs 2, 0x4(3)
    .4byte 0x48000114 # b .L_8030D178
L_8030D068:
    cmpwi 20, 0x8
    .4byte 0x41810018 # bgt .L_8030D084
    mr 3, 28
    bl fn_8023E3B8
    lfs 1, 0x0(3)
    lfs 2, 0x4(3)
    .4byte 0x480000F8 # b .L_8030D178
L_8030D084:
    cmpwi 28, 0x0
    .4byte 0x41820014 # beq .L_8030D09C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820150 # beq .L_8030D1E8
L_8030D09C:
    mr 3, 28
    bl fn_8023E32C
    lfs 1, 0x0(3)
    lfs 2, 0x4(3)
    .4byte 0x480000CC # b .L_8030D178
L_8030D0B0:
    lbz 0, 0x20(24)
    cmplwi 0, 0x0
    .4byte 0x418200B8 # beq .L_8030D170
    clrlwi. 0, 30, 24
    .4byte 0x408200B0 # bne .L_8030D170
    lfs 2, 0x1d4(22)
    lfs 1, 0x8(24)
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    fsubs 3, 2, 1
    lfs 1, 0x1c0(31)
    lfs 2, 0x1c4(31)
    fcmpu cr0, 0, 3
    .4byte 0x41820098 # beq .L_8030D178
    fcmpo cr0, 1, 31
    .4byte 0x40800020 # bge .L_8030D108
    fsubs 0, 31, 3
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8030D100
    fadds 1, 1, 3
    .4byte 0x4800002C # b .L_8030D128
L_8030D100:
    fmr 1, 31
    .4byte 0x48000024 # b .L_8030D128
L_8030D108:
    fcmpo cr0, 1, 30
    .4byte 0x4081001C # ble .L_8030D128
    fadds 0, 30, 3
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8030D124
    fsubs 1, 1, 3
    .4byte 0x48000008 # b .L_8030D128
L_8030D124:
    fmr 1, 30
L_8030D128:
    fcmpo cr0, 2, 28
    .4byte 0x40800020 # bge .L_8030D14C
    fsubs 0, 28, 3
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_8030D144
    fadds 2, 2, 3
    .4byte 0x48000038 # b .L_8030D178
L_8030D144:
    fmr 2, 28
    .4byte 0x48000030 # b .L_8030D178
L_8030D14C:
    fcmpo cr0, 2, 29
    .4byte 0x40810028 # ble .L_8030D178
    fadds 0, 29, 3
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_8030D168
    fsubs 2, 2, 3
    .4byte 0x48000014 # b .L_8030D178
L_8030D168:
    fmr 2, 29
    .4byte 0x4800000C # b .L_8030D178
L_8030D170:
    lfs 1, 0x1c0(31)
    lfs 2, 0x1c4(31)
L_8030D178:
    clrlwi. 0, 30, 24
    .4byte 0x41820024 # beq .L_8030D1A0
    fmr 31, 1
    li 30, 0x0
    fmr 30, 1
    fmr 28, 2
    fmr 29, 2
    fmr 27, 2
    fmr 26, 2
    .4byte 0x4800004C # b .L_8030D1E8
L_8030D1A0:
    fcmpo cr0, 31, 1
    .4byte 0x40810008 # ble .L_8030D1AC
    fmr 31, 1
L_8030D1AC:
    fcmpo cr0, 28, 2
    .4byte 0x40810008 # ble .L_8030D1B8
    fmr 28, 2
L_8030D1B8:
    fcmpo cr0, 27, 2
    .4byte 0x40810008 # ble .L_8030D1C4
    fmr 27, 2
L_8030D1C4:
    fcmpo cr0, 30, 1
    .4byte 0x40800008 # bge .L_8030D1D0
    fmr 30, 1
L_8030D1D0:
    fcmpo cr0, 29, 2
    .4byte 0x40800008 # bge .L_8030D1DC
    fmr 29, 2
L_8030D1DC:
    fcmpo cr0, 26, 2
    .4byte 0x40800008 # bge .L_8030D1E8
    fmr 26, 2
L_8030D1E8:
    addi 31, 31, 0xc
    addi 28, 28, 0x1
L_8030D1F0:
    cmpw 28, 21
    .4byte 0x4180FD5C # blt .L_8030CF50
    lbz 0, 0x7f5(22)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8030D22C
    lfs 27, 0x4(23)
    lfs 2, 0x0(24)
    lfs 26, 0xc(23)
    lfs 1, 0x0(23)
    fadds 28, 27, 2
    lfs 0, 0x8(23)
    fsubs 29, 26, 2
    fadds 31, 1, 2
    fsubs 30, 0, 2
    .4byte 0x4800000C # b .L_8030D234
L_8030D22C:
    li 0, -0x1
    stw 0, 0x838(22)
L_8030D234:
    lbz 0, 0x7f4(22)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8030D248
    li 0, -0x1
    stw 0, 0x83c(22)
L_8030D248:
    cmplwi 25, 0x0
    .4byte 0x418206EC # beq .L_8030D938
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    lfs 2, 0x0(25)
    fcmpu cr0, 1, 2
    .4byte 0x40820028 # bne .L_8030D284
    lfs 0, 0x8(25)
    fcmpu cr0, 1, 0
    .4byte 0x4082001C # bne .L_8030D284
    lfs 0, 0x4(25)
    fcmpu cr0, 1, 0
    .4byte 0x40820010 # bne .L_8030D284
    lfs 0, 0xc(25)
    fcmpu cr0, 1, 0
    .4byte 0x418206B8 # beq .L_8030D938
L_8030D284:
    lbz 0, 0x7f4(22)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8030D298
    cmpwi 29, 0x0
    .4byte 0x4081000C # ble .L_8030D2A0
L_8030D298:
    .4byte 0xC062E728 # lfs f3, lbl_805416C8@sda21(r0)
    .4byte 0x48000008 # b .L_8030D2A4
L_8030D2A0:
    lfs 3, 0x14(24)
L_8030D2A4:
    fcmpo cr0, 31, 2
    .4byte 0x4081001C # ble .L_8030D2C4
    fadds 0, 2, 3
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_8030D2C0
    fmr 31, 2
    .4byte 0x48000008 # b .L_8030D2C4
L_8030D2C0:
    fsubs 31, 31, 3
L_8030D2C4:
    lfs 1, 0x8(25)
    fcmpo cr0, 30, 1
    .4byte 0x4080001C # bge .L_8030D2E8
    fsubs 0, 1, 3
    fcmpo cr0, 30, 0
    .4byte 0x4081000C # ble .L_8030D2E4
    fmr 30, 1
    .4byte 0x48000008 # b .L_8030D2E8
L_8030D2E4:
    fadds 30, 30, 3
L_8030D2E8:
    lfs 1, 0x4(25)
    fcmpo cr0, 28, 1
    .4byte 0x4081001C # ble .L_8030D30C
    fadds 0, 1, 3
    fcmpo cr0, 28, 0
    .4byte 0x4080000C # bge .L_8030D308
    fmr 28, 1
    .4byte 0x48000008 # b .L_8030D30C
L_8030D308:
    fsubs 28, 28, 3
L_8030D30C:
    lfs 1, 0xc(25)
    fcmpo cr0, 29, 1
    .4byte 0x4080001C # bge .L_8030D330
    fsubs 0, 1, 3
    fcmpo cr0, 29, 0
    .4byte 0x4081000C # ble .L_8030D32C
    fmr 29, 1
    .4byte 0x48000008 # b .L_8030D330
L_8030D32C:
    fadds 29, 29, 3
L_8030D330:
    lbz 0, 0x7f5(22)
    li 5, 0x0
    cmplwi 0, 0x0
    .4byte 0x4182013C # beq .L_8030D478
    lwz 0, 0x838(22)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_8030D374
    li 0, 0x46
    stw 0, 0x838(22)
    lfs 0, 0x0(25)
    stfs 0, 0x818(22)
    lfs 0, 0x4(25)
    stfs 0, 0x81c(22)
    lfs 0, 0x8(25)
    stfs 0, 0x820(22)
    lfs 0, 0xc(25)
    stfs 0, 0x824(22)
L_8030D374:
    lwz 0, 0x838(22)
    cmpwi 0, 0x0
    .4byte 0x408100FC # ble .L_8030D478
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x44(1)
    .4byte 0xC822E740 # lfd f1, lbl_805416E0@sda21(r0)
    stw 0, 0x40(1)
    .4byte 0xC042E764 # lfs f2, lbl_80541704@sda21(r0)
    lfd 0, 0x40(1)
    .4byte 0xC062E760 # lfs f3, lbl_80541700@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    fmuls 1, 2, 1
    fmuls 2, 3, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_8030D3BC
    fneg 2, 2
L_8030D3BC:
    .4byte 0xC002E768 # lfs f0, lbl_80541708@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022E748 # lfs f1, lbl_805416E8@sda21(r0)
    fmuls 0, 0, 2
    addi 4, 3, 0x4
    .4byte 0xC042E738 # lfs f2, lbl_805416D8@sda21(r0)
    .4byte 0xC062E764 # lfs f3, lbl_80541704@sda21(r0)
    fctiwz 4, 0
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    stfd 4, 0x38(1)
    lwz 0, 0x3c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 4, 4, 0
    fmadds 1, 1, 4, 1
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8030D40C
    fneg 1, 1
L_8030D40C:
    .4byte 0xC002E768 # lfs f0, lbl_80541708@sda21(r0)
    li 5, 0x1
    lwz 3, 0x838(22)
    fmuls 1, 0, 1
    .4byte 0xC082E748 # lfs f4, lbl_805416E8@sda21(r0)
    subi 0, 3, 0x1
    .4byte 0xC002E738 # lfs f0, lbl_805416D8@sda21(r0)
    lfs 7, 0x818(22)
    fctiwz 1, 1
    lfs 5, 0x81c(22)
    lfs 3, 0x820(22)
    stfd 1, 0x48(1)
    lfs 1, 0x824(22)
    lwz 3, 0x4c(1)
    clrlslwi 3, 3, 21, 3
    lfsx 2, 4, 3
    fmadds 8, 4, 2, 4
    stw 0, 0x838(22)
    fsubs 9, 0, 8
    fmuls 6, 31, 8
    fmuls 4, 28, 8
    fmuls 2, 30, 8
    fmuls 0, 29, 8
    fmadds 31, 7, 9, 6
    fmadds 28, 5, 9, 4
    fmadds 30, 3, 9, 2
    fmadds 29, 1, 9, 0
L_8030D478:
    clrlwi. 0, 5, 24
    .4byte 0x40820154 # bne .L_8030D5D0
    lbz 0, 0x7f4(22)
    cmplwi 0, 0x0
    .4byte 0x41820148 # beq .L_8030D5D0
    lbz 0, 0x7f6(22)
    cmplwi 0, 0x0
    .4byte 0x4182013C # beq .L_8030D5D0
    lwz 0, 0x83c(22)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_8030D4CC
    li 0, 0x28
    stw 0, 0x83c(22)
    lfs 0, 0x0(25)
    stfs 0, 0x828(22)
    lfs 0, 0x4(25)
    stfs 0, 0x82c(22)
    lfs 0, 0x8(25)
    stfs 0, 0x830(22)
    lfs 0, 0xc(25)
    stfs 0, 0x834(22)
L_8030D4CC:
    lwz 0, 0x83c(22)
    cmpwi 0, 0x0
    .4byte 0x408100FC # ble .L_8030D5D0
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x4c(1)
    .4byte 0xC822E740 # lfd f1, lbl_805416E0@sda21(r0)
    stw 0, 0x48(1)
    .4byte 0xC042E764 # lfs f2, lbl_80541704@sda21(r0)
    lfd 0, 0x48(1)
    .4byte 0xC062E76C # lfs f3, lbl_8054170C@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    fmuls 1, 2, 1
    fmuls 2, 3, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_8030D514
    fneg 2, 2
L_8030D514:
    .4byte 0xC002E768 # lfs f0, lbl_80541708@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022E748 # lfs f1, lbl_805416E8@sda21(r0)
    fmuls 0, 0, 2
    addi 4, 3, 0x4
    .4byte 0xC042E738 # lfs f2, lbl_805416D8@sda21(r0)
    .4byte 0xC062E764 # lfs f3, lbl_80541704@sda21(r0)
    fctiwz 4, 0
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    stfd 4, 0x40(1)
    lwz 0, 0x44(1)
    clrlslwi 0, 0, 21, 3
    lfsx 4, 4, 0
    fmadds 1, 1, 4, 1
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8030D564
    fneg 1, 1
L_8030D564:
    .4byte 0xC002E768 # lfs f0, lbl_80541708@sda21(r0)
    li 5, 0x1
    lwz 3, 0x83c(22)
    fmuls 1, 0, 1
    .4byte 0xC082E748 # lfs f4, lbl_805416E8@sda21(r0)
    subi 0, 3, 0x1
    .4byte 0xC002E738 # lfs f0, lbl_805416D8@sda21(r0)
    lfs 7, 0x828(22)
    fctiwz 1, 1
    lfs 5, 0x82c(22)
    lfs 3, 0x830(22)
    stfd 1, 0x38(1)
    lfs 1, 0x834(22)
    lwz 3, 0x3c(1)
    clrlslwi 3, 3, 21, 3
    lfsx 2, 4, 3
    fmadds 8, 4, 2, 4
    stw 0, 0x83c(22)
    fsubs 9, 0, 8
    fmuls 6, 31, 8
    fmuls 4, 28, 8
    fmuls 2, 30, 8
    fmuls 0, 29, 8
    fmadds 31, 7, 9, 6
    fmadds 28, 5, 9, 4
    fmadds 30, 3, 9, 2
    fmadds 29, 1, 9, 0
L_8030D5D0:
    clrlwi. 0, 5, 24
    .4byte 0x40820364 # bne .L_8030D938
    lfs 0, 0x0(25)
    addi 7, 1, 0x28
    lfs 2, 0x8(25)
    fsubs 4, 0, 31
    lfs 0, 0x4(25)
    lfs 1, 0xc(25)
    fsubs 3, 30, 2
    fsubs 2, 0, 28
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    frsp 5, 4
    stfs 4, 0x28(1)
    fsubs 1, 29, 1
    stfs 3, 0x2c(1)
    fcmpo cr0, 5, 0
    stfs 2, 0x30(1)
    stfs 1, 0x34(1)
    .4byte 0x40810008 # ble .L_8030D620
    fmr 0, 5
L_8030D620:
    lfs 5, 0x2c(1)
    fcmpo cr0, 5, 0
    .4byte 0x40810008 # ble .L_8030D630
    fmr 0, 5
L_8030D630:
    lfs 5, 0x8(7)
    fcmpo cr0, 5, 0
    .4byte 0x40810008 # ble .L_8030D640
    fmr 0, 5
L_8030D640:
    lfs 5, 0xc(7)
    fcmpo cr0, 5, 0
    .4byte 0x40810008 # ble .L_8030D650
    fmr 0, 5
L_8030D650:
    .4byte 0xC0A2E728 # lfs f5, lbl_805416C8@sda21(r0)
    lfs 1, 0x28(1)
    fcmpo cr0, 1, 5
    .4byte 0x40800008 # bge .L_8030D664
    fmr 5, 1
L_8030D664:
    lfs 1, 0x2c(1)
    fcmpo cr0, 1, 5
    .4byte 0x40800008 # bge .L_8030D674
    fmr 5, 1
L_8030D674:
    lfs 1, 0x8(7)
    fcmpo cr0, 1, 5
    .4byte 0x40800008 # bge .L_8030D684
    fmr 5, 1
L_8030D684:
    lfs 1, 0xc(7)
    fcmpo cr0, 1, 5
    .4byte 0x40800008 # bge .L_8030D694
    fmr 5, 1
L_8030D694:
    li 0, 0x4
    mr 4, 7
    mr 5, 22
    addi 6, 1, 0x18
    .4byte 0xC062E728 # lfs f3, lbl_805416C8@sda21(r0)
    li 8, 0x0
    mtctr 0
L_8030D6B0:
    lfs 4, 0x0(4)
    fcmpo cr0, 4, 3
    .4byte 0x40800074 # bge .L_8030D72C
    lwz 0, 0x1c4(5)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8030D6E0
    xori 0, 8, 0x1
    addi 3, 1, 0x28
    slwi 0, 0, 2
    lfsx 1, 3, 0
    fcmpo cr0, 1, 3
    .4byte 0x40810048 # ble .L_8030D724
L_8030D6E0:
    xori 0, 8, 0x1
    addi 3, 1, 0x28
    slwi 0, 0, 2
    .4byte 0xC022E754 # lfs f1, lbl_805416F4@sda21(r0)
    lfsx 2, 3, 0
    fcmpo cr0, 2, 1
    .4byte 0x40800018 # bge .L_8030D710
    lfs 1, 0x10(24)
    fmuls 1, 1, 4
    fdivs 1, 1, 5
    stfs 1, 0x0(6)
    .4byte 0x48000024 # b .L_8030D730
L_8030D710:
    lfs 1, 0xc(24)
    fmuls 1, 1, 4
    fdivs 1, 1, 5
    stfs 1, 0x0(6)
    .4byte 0x48000010 # b .L_8030D730
L_8030D724:
    stfs 3, 0x0(6)
    .4byte 0x48000008 # b .L_8030D730
L_8030D72C:
    stfs 3, 0x0(6)
L_8030D730:
    lwz 3, 0x1c4(5)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8030D744
    subi 0, 3, 0x1
    stw 0, 0x1c4(5)
L_8030D744:
    addi 4, 4, 0x4
    addi 5, 5, 0x4
    addi 6, 6, 0x4
    addi 8, 8, 0x1
    .4byte 0x4200FF5C # bdnz .L_8030D6B0
    .4byte 0xC062E728 # lfs f3, lbl_805416C8@sda21(r0)
    lfs 1, 0x28(1)
    lfs 2, 0xc(24)
    fcmpo cr0, 1, 3
    lwz 3, 0x18(24)
    .4byte 0x40810024 # ble .L_8030D790
    fmuls 1, 2, 1
    lwz 0, 0x1c4(22)
    cmpw 0, 3
    fdivs 1, 1, 0
    stfs 1, 0x8(1)
    .4byte 0x40800010 # bge .L_8030D794
    stw 3, 0x1c4(22)
    .4byte 0x48000008 # b .L_8030D794
L_8030D790:
    stfs 3, 0x8(1)
L_8030D794:
    lfs 1, 0x2c(1)
    fcmpo cr0, 1, 3
    .4byte 0x40810024 # ble .L_8030D7C0
    fmuls 1, 2, 1
    lwz 0, 0x1c8(22)
    cmpw 0, 3
    fdivs 1, 1, 0
    stfs 1, 0xc(1)
    .4byte 0x40800010 # bge .L_8030D7C4
    stw 3, 0x1c8(22)
    .4byte 0x48000008 # b .L_8030D7C4
L_8030D7C0:
    stfs 3, 0xc(1)
L_8030D7C4:
    lfs 1, 0x8(7)
    fcmpo cr0, 1, 3
    .4byte 0x40810024 # ble .L_8030D7F0
    fmuls 1, 2, 1
    lwz 0, 0x1cc(22)
    cmpw 0, 3
    fdivs 1, 1, 0
    stfs 1, 0x10(1)
    .4byte 0x40800010 # bge .L_8030D7F4
    stw 3, 0x1cc(22)
    .4byte 0x48000008 # b .L_8030D7F4
L_8030D7F0:
    stfs 3, 0x10(1)
L_8030D7F4:
    lfs 1, 0xc(7)
    fcmpo cr0, 1, 3
    .4byte 0x40810024 # ble .L_8030D820
    fmuls 1, 2, 1
    lwz 0, 0x1d0(22)
    cmpw 0, 3
    fdivs 1, 1, 0
    stfs 1, 0x14(1)
    .4byte 0x40800010 # bge .L_8030D824
    stw 3, 0x1d0(22)
    .4byte 0x48000008 # b .L_8030D824
L_8030D820:
    stfs 3, 0x14(1)
L_8030D824:
    lfs 3, 0x0(25)
    lfs 0, 0x1c(24)
    fsubs 2, 31, 3
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    fmuls 2, 0, 2
    fcmpo cr0, 2, 1
    .4byte 0x4080001C # bge .L_8030D858
    lfs 1, 0x8(1)
    fneg 1, 1
    fcmpo cr0, 2, 1
    .4byte 0x4080001C # bge .L_8030D868
    fmr 2, 1
    .4byte 0x48000014 # b .L_8030D868
L_8030D858:
    lfs 1, 0x18(1)
    fcmpo cr0, 2, 1
    .4byte 0x40810008 # ble .L_8030D868
    fmr 2, 1
L_8030D868:
    lfs 4, 0x8(25)
    fadds 31, 3, 2
    lfs 3, 0x1c(1)
    fsubs 2, 30, 4
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    fneg 3, 3
    lfs 5, 0xc(1)
    fmuls 2, 0, 2
    fcmpo cr0, 2, 1
    .4byte 0x40800014 # bge .L_8030D8A0
    fcmpo cr0, 2, 3
    .4byte 0x40800018 # bge .L_8030D8AC
    fmr 2, 3
    .4byte 0x48000010 # b .L_8030D8AC
L_8030D8A0:
    fcmpo cr0, 2, 5
    .4byte 0x40810008 # ble .L_8030D8AC
    fmr 2, 5
L_8030D8AC:
    lfs 5, 0x4(25)
    fadds 30, 4, 2
    lfs 3, 0x10(1)
    fsubs 2, 28, 5
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    fneg 3, 3
    lfs 4, 0x20(1)
    fmuls 2, 0, 2
    fcmpo cr0, 2, 1
    .4byte 0x40800014 # bge .L_8030D8E4
    fcmpo cr0, 2, 3
    .4byte 0x40800018 # bge .L_8030D8F0
    fmr 2, 3
    .4byte 0x48000010 # b .L_8030D8F0
L_8030D8E4:
    fcmpo cr0, 2, 4
    .4byte 0x40810008 # ble .L_8030D8F0
    fmr 2, 4
L_8030D8F0:
    lfs 4, 0xc(25)
    fadds 28, 5, 2
    lfs 3, 0x24(1)
    fsubs 2, 29, 4
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    fneg 3, 3
    lfs 5, 0x14(1)
    fmuls 0, 0, 2
    fcmpo cr0, 0, 1
    .4byte 0x40800014 # bge .L_8030D928
    fcmpo cr0, 0, 3
    .4byte 0x40800018 # bge .L_8030D934
    fmr 0, 3
    .4byte 0x48000010 # b .L_8030D934
L_8030D928:
    fcmpo cr0, 0, 5
    .4byte 0x40810008 # ble .L_8030D934
    fmr 0, 5
L_8030D934:
    fadds 29, 4, 0
L_8030D938:
    lbz 0, 0x840(22)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_8030D988
    .4byte 0xC002E738 # lfs f0, lbl_805416D8@sda21(r0)
    lfs 8, 0x854(22)
    lfs 3, 0x848(22)
    fsubs 4, 0, 8
    lfs 1, 0x850(22)
    lfs 7, 0x844(22)
    lfs 5, 0x84c(22)
    fmuls 2, 28, 4
    fmuls 0, 29, 4
    fmuls 6, 31, 4
    fmuls 4, 30, 4
    fmadds 28, 3, 8, 2
    fmadds 29, 1, 8, 0
    fmadds 31, 7, 8, 6
    fmr 27, 28
    fmr 26, 29
    fmadds 30, 5, 8, 4
L_8030D988:
    cmplwi 25, 0x0
    .4byte 0x41820014 # beq .L_8030D9A0
    stfs 31, 0x0(25)
    stfs 28, 0x4(25)
    stfs 30, 0x8(25)
    stfs 29, 0xc(25)
L_8030D9A0:
    lfs 1, 0x1d4(22)
    lfs 0, 0x0(23)
    fsubs 31, 31, 1
    fsubs 28, 28, 1
    fadds 30, 30, 1
    fcmpo cr0, 31, 0
    fadds 29, 29, 1
    .4byte 0x40800008 # bge .L_8030D9C4
    fmr 31, 0
L_8030D9C4:
    lfs 1, 0x4(23)
    fcmpo cr0, 28, 1
    .4byte 0x40800008 # bge .L_8030D9D4
    fmr 28, 1
L_8030D9D4:
    lfs 2, 0x8(23)
    fcmpo cr0, 30, 2
    .4byte 0x40810008 # ble .L_8030D9E4
    fmr 30, 2
L_8030D9E4:
    lfs 3, 0xc(23)
    fcmpo cr0, 29, 3
    .4byte 0x40810008 # ble .L_8030D9F4
    fmr 29, 3
L_8030D9F4:
    .4byte 0xC082E770 # lfs f4, lbl_80541710@sda21(r0)
    fsubs 5, 30, 31
    lfs 6, 0x1d8(22)
    fmuls 7, 4, 6
    fcmpo cr0, 5, 7
    .4byte 0x40800040 # bge .L_8030DA48
    fadds 4, 30, 31
    .4byte 0xC0A2E748 # lfs f5, lbl_805416E8@sda21(r0)
    fmuls 4, 5, 4
    fsubs 31, 4, 6
    fadds 30, 4, 6
    fcmpo cr0, 31, 0
    .4byte 0x40800010 # bge .L_8030DA34
    fsubs 4, 0, 31
    fmr 31, 0
    fadds 30, 30, 4
L_8030DA34:
    fcmpo cr0, 30, 2
    .4byte 0x40810010 # ble .L_8030DA48
    fsubs 4, 30, 2
    fmr 30, 2
    fsubs 31, 31, 4
L_8030DA48:
    fsubs 5, 29, 28
    fmuls 4, 7, 25
    fcmpo cr0, 5, 4
    .4byte 0x40800044 # bge .L_8030DA98
    fadds 4, 29, 28
    .4byte 0xC0A2E748 # lfs f5, lbl_805416E8@sda21(r0)
    fmuls 6, 6, 25
    fmuls 4, 5, 4
    fsubs 28, 4, 6
    fadds 29, 4, 6
    fcmpo cr0, 28, 1
    .4byte 0x40800010 # bge .L_8030DA84
    fsubs 4, 1, 28
    fmr 28, 1
    fadds 29, 29, 4
L_8030DA84:
    fcmpo cr0, 29, 3
    .4byte 0x40810010 # ble .L_8030DA98
    fsubs 4, 29, 3
    fmr 29, 3
    fsubs 28, 28, 4
L_8030DA98:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x48(1)
    fsubs 7, 29, 28
    lwz 3, 0x4(3)
    fsubs 8, 2, 0
    stw 0, 0x40(1)
    lhz 4, 0x6(3)
    lhz 5, 0x4(3)
    xoris 0, 4, 0x8000
    .4byte 0xC8C2E740 # lfd f6, lbl_805416E0@sda21(r0)
    xoris 3, 5, 0x8000
    stw 0, 0x44(1)
    stw 3, 0x4c(1)
    lfd 4, 0x40(1)
    lfd 5, 0x48(1)
    fsubs 4, 4, 6
    fsubs 5, 5, 6
    fmuls 4, 8, 4
    fmuls 5, 7, 5
    fcmpo cr0, 5, 4
    .4byte 0x40810020 # ble .L_8030DB0C
    .4byte 0xC0C2E748 # lfs f6, lbl_805416E8@sda21(r0)
    fadds 5, 28, 29
    fmuls 4, 6, 8
    fmuls 5, 6, 5
    fmuls 4, 25, 4
    fsubs 28, 5, 4
    fadds 29, 5, 4
L_8030DB0C:
    lis 3, 0x4330
    xoris 4, 4, 0x8000
    xoris 0, 5, 0x8000
    stw 4, 0x4c(1)
    .4byte 0xC8C2E740 # lfd f6, lbl_805416E0@sda21(r0)
    fsubs 7, 30, 31
    stw 3, 0x48(1)
    fsubs 8, 29, 28
    lfd 4, 0x48(1)
    stw 0, 0x44(1)
    fsubs 5, 4, 6
    stw 3, 0x40(1)
    lfd 4, 0x40(1)
    fmuls 5, 7, 5
    fsubs 4, 4, 6
    fmuls 4, 8, 4
    fcmpo cr0, 5, 4
    .4byte 0x40810064 # ble .L_8030DBB4
    .4byte 0xC0C2E748 # lfs f6, lbl_805416E8@sda21(r0)
    fadds 5, 28, 29
    fmuls 4, 6, 7
    fmuls 5, 6, 5
    fmuls 4, 4, 25
    fsubs 28, 5, 4
    fadds 29, 5, 4
    fcmpo cr0, 28, 1
    .4byte 0x4080001C # bge .L_8030DB90
    fsubs 4, 1, 28
    fmr 28, 1
    fadds 29, 29, 4
    fcmpo cr0, 29, 3
    .4byte 0x40810008 # ble .L_8030DB90
    fmr 29, 3
L_8030DB90:
    fcmpo cr0, 29, 3
    .4byte 0x4081007C # ble .L_8030DC10
    fsubs 4, 29, 3
    fmr 29, 3
    fsubs 28, 28, 4
    fcmpo cr0, 28, 1
    .4byte 0x40800068 # bge .L_8030DC10
    fmr 28, 1
    .4byte 0x48000060 # b .L_8030DC10
L_8030DBB4:
    .4byte 0xC0C2E748 # lfs f6, lbl_805416E8@sda21(r0)
    fadds 5, 31, 30
    fmuls 4, 6, 8
    fmuls 5, 6, 5
    fdivs 4, 4, 25
    fsubs 31, 5, 4
    fadds 30, 5, 4
    fcmpo cr0, 31, 0
    .4byte 0x4080001C # bge .L_8030DBF0
    fsubs 4, 0, 31
    fmr 31, 0
    fadds 30, 30, 4
    fcmpo cr0, 30, 2
    .4byte 0x40810008 # ble .L_8030DBF0
    fmr 30, 2
L_8030DBF0:
    fcmpo cr0, 30, 2
    .4byte 0x4081001C # ble .L_8030DC10
    fsubs 4, 30, 2
    fmr 30, 2
    fsubs 31, 31, 4
    fcmpo cr0, 31, 0
    .4byte 0x40800008 # bge .L_8030DC10
    fmr 31, 0
L_8030DC10:
    lfs 4, 0x1dc(22)
    lfs 5, 0x1e0(22)
    fadds 31, 31, 4
    fadds 28, 28, 5
    fadds 30, 30, 4
    fcmpo cr0, 31, 0
    fadds 29, 29, 5
    .4byte 0x40800010 # bge .L_8030DC3C
    fsubs 4, 0, 31
    fmr 31, 0
    fadds 30, 30, 4
L_8030DC3C:
    fcmpo cr0, 28, 1
    .4byte 0x40800010 # bge .L_8030DC50
    fsubs 4, 1, 28
    fmr 28, 1
    fadds 29, 29, 4
L_8030DC50:
    fcmpo cr0, 30, 2
    .4byte 0x40810024 # ble .L_8030DC78
    fsubs 4, 30, 2
    fmr 30, 2
    fsubs 31, 31, 4
    fcmpo cr0, 31, 0
    .4byte 0x40800010 # bge .L_8030DC78
    fsubs 0, 0, 31
    fadds 31, 31, 0
    fadds 30, 2, 0
L_8030DC78:
    fcmpo cr0, 29, 3
    .4byte 0x40810024 # ble .L_8030DCA0
    fsubs 0, 29, 3
    fmr 29, 3
    fsubs 28, 28, 0
    fcmpo cr0, 28, 1
    .4byte 0x40800010 # bge .L_8030DCA0
    fsubs 0, 1, 28
    fadds 28, 28, 0
    fadds 29, 3, 0
L_8030DCA0:
    cmplwi 26, 0x0
    .4byte 0x41820014 # beq .L_8030DCB8
    stfs 31, 0x0(26)
    stfs 28, 0x4(26)
    stfs 30, 0x8(26)
    stfs 29, 0xc(26)
L_8030DCB8:
    cmplwi 27, 0x0
    .4byte 0x41820018 # beq .L_8030DCD4
    fadds 1, 27, 26
    .4byte 0xC042E748 # lfs f2, lbl_805416E8@sda21(r0)
    .4byte 0xC002E774 # lfs f0, lbl_80541714@sda21(r0)
    fmadds 0, 2, 1, 0
    stfs 0, 0x0(27)
L_8030DCD4:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    psq_l 25, 0x88(1), 0, 0
    lfd 25, 0x80(1)
    lmw 20, 0x50(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_8030DD20:
    stwu 1, -0x40(1)
    mflr 0
    addi 3, 3, 0x74
    stw 0, 0x44(1)
    addi 5, 1, 0x8
    bl PSMTXConcat
    li 3, 0x1b
    bl fn_8005FE94
    addi 3, 1, 0x8
    li 4, 0x1b
    bl fn_8005FDF4
    addi 3, 1, 0x8
    li 4, 0x1b
    bl fn_8005FE44
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8030DD68:
    stwu 1, -0x10(1)
    mflr 0
    li 3, 0x18
    stw 0, 0x14(1)
    bl fn_8005FE94
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030DD8C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lfs 4, 0x0(4)
    mr 29, 3
    .4byte 0xC102E778 # lfs f8, lbl_80541718@sda21(r0)
    mr 30, 5
    stfs 4, 0x164(3)
    addi 3, 29, 0xa4
    lfs 0, 0x4(4)
    fneg 9, 8
    lfs 1, 0x8(4)
    stfs 0, 0x168(29)
    lfs 0, 0xc(4)
    stfs 1, 0x16c(29)
    .4byte 0xC0E2E738 # lfs f7, lbl_805416D8@sda21(r0)
    stfs 0, 0x170(29)
    .4byte 0xC0A2E728 # lfs f5, lbl_805416C8@sda21(r0)
    stfs 7, 0x74(29)
    lfs 2, 0x8(4)
    stfs 5, 0x78(29)
    fadds 3, 4, 2
    lfs 0, 0xc(4)
    stfs 5, 0x7c(29)
    fsubs 2, 2, 4
    .4byte 0xC082E748 # lfs f4, lbl_805416E8@sda21(r0)
    stfs 5, 0x80(29)
    fmuls 31, 4, 2
    lfs 2, 0x4(4)
    stfs 5, 0x84(29)
    fmuls 10, 4, 3
    fadds 3, 2, 0
    .4byte 0xC022E74C # lfs f1, lbl_805416EC@sda21(r0)
    stfs 7, 0x88(29)
    fsubs 2, 0, 2
    fmuls 11, 4, 3
    .4byte 0xC0C2E77C # lfs f6, lbl_8054171C@sda21(r0)
    stfs 1, 0x8c(29)
    fneg 30, 31
    fmuls 28, 4, 2
    stfs 5, 0x90(29)
    frsp 0, 9
    stfs 5, 0x94(29)
    fneg 29, 28
    fmr 3, 30
    stfs 7, 0x98(29)
    fmr 2, 28
    fmr 4, 31
    stfs 10, 0x8(1)
    fmr 1, 29
    stfs 11, 0xc(1)
    psq_l 7, 0x8(1), 0, 0
    stfs 5, 0x9c(29)
    ps_neg 7, 7
    stfs 8, 0x10(1)
    psq_st 7, 0x8(1), 0, 0
    stfs 5, 0xa0(29)
    lfs 8, 0x8(1)
    lfs 7, 0xc(1)
    stfs 8, 0x80(29)
    stfs 7, 0x90(29)
    stfs 9, 0x10(1)
    stfs 0, 0xa0(29)
    bl PSMTXLightFrustum
    clrlwi. 0, 30, 24
    .4byte 0x41820038 # beq .L_8030DEF4
    addi 3, 29, 0x74
    addi 4, 29, 0xe4
    bl PSMTXCopy
    .4byte 0xC0A2E748 # lfs f5, lbl_805416E8@sda21(r0)
    fmr 1, 28
    fmr 2, 29
    addi 3, 29, 0x114
    fmr 3, 30
    fmr 4, 31
    fmr 6, 5
    fmr 7, 5
    fmr 8, 5
    bl C_MTXLightOrtho
L_8030DEF4:
    addi 3, 29, 0xa4
    li 4, 0x1
    bl fn_8005FCC4
    addi 3, 29, 0x74
    li 4, 0x18
    bl fn_8005FDF4
    addi 3, 29, 0x74
    li 4, 0x18
    bl fn_8005FE44
    li 3, 0x18
    bl fn_8005FE94
    lwz 6, 0x144(29)
    lis 0, 0x4330
    lwz 4, 0x14c(29)
    lwz 5, 0x148(29)
    lwz 3, 0x150(29)
    subf 30, 6, 4
    stw 6, 0x1c(1)
    subf 31, 5, 3
    .4byte 0xC882E730 # lfd f4, lbl_805416D0@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC0A2E728 # lfs f5, lbl_805416C8@sda21(r0)
    lfd 0, 0x18(1)
    stw 5, 0x24(1)
    fsubs 1, 0, 4
    .4byte 0xC0C2E738 # lfs f6, lbl_805416D8@sda21(r0)
    stw 0, 0x20(1)
    lfd 0, 0x20(1)
    stw 30, 0x2c(1)
    fsubs 2, 0, 4
    stw 0, 0x28(1)
    lfd 0, 0x28(1)
    stw 31, 0x34(1)
    fsubs 3, 0, 4
    stw 0, 0x30(1)
    lfd 0, 0x30(1)
    fsubs 4, 0, 4
    bl fn_8006000C
    lwz 3, 0x144(29)
    mr 5, 30
    lwz 4, 0x148(29)
    mr 6, 31
    bl fn_800600C0
    .4byte 0xC022E738 # lfs f1, lbl_805416D8@sda21(r0)
    .4byte 0xC042E728 # lfs f2, lbl_805416C8@sda21(r0)
    bl fn_80060054
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x94(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8030DFE8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    clrlwi. 0, 4, 24
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    .4byte 0x41820074 # beq .L_8030E07C
    psq_l 5, 0x4(29), 0, 0
    psq_l 4, 0xc(29), 0, 0
    psq_l 3, 0x14(29), 0, 0
    psq_l 2, 0x1c(29), 0, 0
    psq_l 1, 0x24(29), 0, 0
    psq_l 0, 0x2c(29), 0, 0
    psq_st 5, 0x74(29), 0, 0
    psq_st 4, 0x7c(29), 0, 0
    psq_st 3, 0x84(29), 0, 0
    psq_st 2, 0x8c(29), 0, 0
    psq_st 1, 0x94(29), 0, 0
    psq_st 0, 0x9c(29), 0, 0
    psq_l 7, 0x34(29), 0, 0
    psq_l 6, 0x3c(29), 0, 0
    psq_l 5, 0x44(29), 0, 0
    psq_l 4, 0x4c(29), 0, 0
    psq_l 3, 0x54(29), 0, 0
    psq_l 2, 0x5c(29), 0, 0
    psq_l 1, 0x64(29), 0, 0
    psq_l 0, 0x6c(29), 0, 0
    psq_st 7, 0xa4(29), 0, 0
    psq_st 6, 0xac(29), 0, 0
    psq_st 5, 0xb4(29), 0, 0
    psq_st 4, 0xbc(29), 0, 0
    psq_st 3, 0xc4(29), 0, 0
    psq_st 2, 0xcc(29), 0, 0
    psq_st 1, 0xd4(29), 0, 0
    psq_st 0, 0xdc(29), 0, 0
L_8030E07C:
    addi 3, 29, 0xa4
    li 4, 0x1
    bl fn_8005FCC4
    addi 3, 29, 0x74
    li 4, 0x18
    bl fn_8005FDF4
    addi 3, 29, 0x74
    li 4, 0x18
    bl fn_8005FE44
    li 3, 0x18
    bl fn_8005FE94
    lwz 6, 0x144(29)
    lis 0, 0x4330
    lwz 4, 0x14c(29)
    lwz 5, 0x148(29)
    lwz 3, 0x150(29)
    subf 30, 6, 4
    stw 6, 0xc(1)
    subf 31, 5, 3
    .4byte 0xC882E730 # lfd f4, lbl_805416D0@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0A2E728 # lfs f5, lbl_805416C8@sda21(r0)
    lfd 0, 0x8(1)
    stw 5, 0x14(1)
    fsubs 1, 0, 4
    .4byte 0xC0C2E738 # lfs f6, lbl_805416D8@sda21(r0)
    stw 0, 0x10(1)
    lfd 0, 0x10(1)
    stw 30, 0x1c(1)
    fsubs 2, 0, 4
    stw 0, 0x18(1)
    lfd 0, 0x18(1)
    stw 31, 0x24(1)
    fsubs 3, 0, 4
    stw 0, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 4, 0, 4
    bl fn_8006000C
    lwz 3, 0x144(29)
    mr 5, 30
    lwz 4, 0x148(29)
    mr 6, 31
    bl fn_800600C0
    .4byte 0xC022E738 # lfs f1, lbl_805416D8@sda21(r0)
    .4byte 0xC042E728 # lfs f2, lbl_805416C8@sda21(r0)
    bl fn_80060054
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8030E150:
    blr

fn_8030E154:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    mr 31, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lfs 0, 0x154(31)
    stfs 0, 0x30(1)
    lfs 0, 0x158(31)
    stfs 0, 0x34(1)
    lfs 0, 0x15c(31)
    stfs 0, 0x38(1)
    lfs 0, 0x160(31)
    stfs 0, 0x3c(1)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8030E1C4
    lbz 0, 0x179(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8030E1B8
    li 0, 0x3
    stw 0, 0x174(31)
    .4byte 0x48000090 # b .L_8030E244
L_8030E1B8:
    li 0, 0x1
    stw 0, 0x174(31)
    .4byte 0x48000084 # b .L_8030E244
L_8030E1C4:
    lbz 0, 0x179(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8030E1DC
    li 0, 0x3
    stw 0, 0x174(31)
    .4byte 0x4800006C # b .L_8030E244
L_8030E1DC:
    lbz 0, 0x17a(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8030E1F4
    li 0, 0x6
    stw 0, 0x174(31)
    .4byte 0x48000054 # b .L_8030E244
L_8030E1F4:
    lbz 0, 0x178(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8030E20C
    li 0, 0x2
    stw 0, 0x174(31)
    .4byte 0x4800003C # b .L_8030E244
L_8030E20C:
    lbz 0, 0x17b(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8030E224
    li 0, 0x5
    stw 0, 0x174(31)
    .4byte 0x48000024 # b .L_8030E244
L_8030E224:
    lwz 0, 0x7f0(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8030E23C
    li 0, 0x4
    stw 0, 0x174(31)
    .4byte 0x4800000C # b .L_8030E244
L_8030E23C:
    li 0, 0x0
    stw 0, 0x174(31)
L_8030E244:
    li 0, 0x0
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    stb 0, 0x179(31)
    stb 0, 0x178(31)
    stb 0, 0x17a(31)
    stb 0, 0x17b(31)
    lfs 0, 0x1b4(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082002C # bne .L_8030E290
    lfs 0, 0x1b8(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_8030E290
    lfs 0, 0x1bc(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_8030E290
    lfs 0, 0x1c0(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820008 # bne .L_8030E290
    stb 0, 0x7f5(31)
L_8030E290:
    lwz 4, 0x174(31)
    lis 3, lbl_804AA8E8@ha
    lbz 0, 0x17c(31)
    addi 3, 3, lbl_804AA8E8@l
    mulli 4, 4, 0x24
    cmplwi 0, 0x0
    add 5, 3, 4
    .4byte 0x4182003C # beq .L_8030E2E8
    lfs 2, 0x38(1)
    lfs 1, 0x30(1)
    lfs 4, 0x3c(1)
    fsubs 5, 2, 1
    lfs 0, 0x34(1)
    fsubs 6, 4, 0
    fsubs 3, 1, 5
    fadds 1, 2, 5
    fsubs 2, 0, 6
    fadds 0, 4, 6
    stfs 3, 0x30(1)
    stfs 2, 0x34(1)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
L_8030E2E8:
    lbz 0, 0x17d(31)
    cmplwi 0, 0x0
    .4byte 0x40820294 # bne .L_8030E584
    mr 3, 31
    addi 4, 1, 0x30
    addi 6, 31, 0x1b4
    addi 7, 1, 0x40
    addi 8, 1, 0x8
    bl fn_8030CD18
    lbz 0, 0x1e8(31)
    cmplwi 0, 0x0
    .4byte 0x41820158 # beq .L_8030E46C
    lwz 3, 0x1ec(31)
    lis 0, 0x4330
    stw 0, 0x50(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842E740 # lfd f2, lbl_805416E0@sda21(r0)
    stw 0, 0x54(1)
    .4byte 0xC022E780 # lfs f1, lbl_80541720@sda21(r0)
    lfd 0, 0x50(1)
    .4byte 0xC0C2E738 # lfs f6, lbl_805416D8@sda21(r0)
    fsubs 2, 0, 2
    lfs 0, 0x1a0(31)
    lfs 5, 0x40(1)
    lfs 4, 0x44(1)
    fdivs 7, 2, 1
    lfs 3, 0x48(1)
    lfs 2, 0x4c(1)
    lfs 1, 0x8(1)
    fmuls 7, 7, 7
    fsubs 6, 6, 7
    fmuls 0, 6, 0
    fmadds 0, 7, 5, 0
    stfs 0, 0x40(1)
    lfs 0, 0x1a4(31)
    fmuls 0, 6, 0
    fmadds 0, 7, 4, 0
    stfs 0, 0x44(1)
    lfs 0, 0x1a8(31)
    fmuls 0, 6, 0
    fmadds 0, 7, 3, 0
    stfs 0, 0x48(1)
    lfs 0, 0x1ac(31)
    fmuls 0, 6, 0
    fmadds 0, 7, 2, 0
    stfs 0, 0x4c(1)
    lfs 0, 0x1b0(31)
    fmuls 0, 6, 0
    fmadds 0, 7, 1, 0
    stfs 0, 0x8(1)
    lwz 3, 0x1ec(31)
    cmpwi 3, 0x0
    .4byte 0x408200AC # bne .L_8030E464
    li 4, 0x0
    stb 4, 0x1e8(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235c(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030E3DC
    stb 4, 0x2360(3)
L_8030E3DC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235d(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030E3F4
    stb 4, 0x2361(3)
L_8030E3F4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235e(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030E40C
    stb 4, 0x2362(3)
L_8030E40C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    lbz 0, 0x235f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8030E424
    stb 4, 0x2363(3)
L_8030E424:
    bl GetRoomConfigRecord
    bl fn_802DCDF4
    lfs 1, 0x190(31)
    .4byte 0xC002E728 # lfs f0, lbl_805416C8@sda21(r0)
    stfs 1, 0x154(31)
    lfs 1, 0x194(31)
    stfs 1, 0x158(31)
    lfs 1, 0x198(31)
    stfs 1, 0x15c(31)
    lfs 1, 0x19c(31)
    stfs 1, 0x160(31)
    stfs 0, 0x1b8(31)
    stfs 0, 0x1b4(31)
    stfs 0, 0x1c0(31)
    stfs 0, 0x1bc(31)
    .4byte 0x4800000C # b .L_8030E46C
L_8030E464:
    subi 0, 3, 0x1
    stw 0, 0x1ec(31)
L_8030E46C:
    lbz 0, 0x17e(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8030E4C8
    .4byte 0xC022E728 # lfs f1, lbl_805416C8@sda21(r0)
    li 0, 0x0
    .4byte 0xC042E748 # lfs f2, lbl_805416E8@sda21(r0)
    stfs 1, 0x1b8(31)
    .4byte 0xC002E774 # lfs f0, lbl_80541714@sda21(r0)
    stfs 1, 0x1b4(31)
    stfs 1, 0x1c0(31)
    stfs 1, 0x1bc(31)
    lfs 1, 0x180(31)
    stfs 1, 0x40(1)
    lfs 4, 0x184(31)
    stfs 4, 0x44(1)
    lfs 1, 0x188(31)
    stfs 1, 0x48(1)
    lfs 3, 0x18c(31)
    fadds 1, 4, 3
    stfs 3, 0x4c(1)
    fmadds 0, 2, 1, 0
    stfs 0, 0x8(1)
    stb 0, 0x17e(31)
L_8030E4C8:
    lfs 1, 0x8(1)
    mr 3, 31
    addi 4, 1, 0x40
    bl fn_8030CB10
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x50(1)
    addi 4, 1, 0x24
    lwz 3, 0x4(3)
    addi 5, 31, 0x4
    lfs 1, 0x48(1)
    li 6, 0x0
    lhz 0, 0x4(3)
    lfs 0, 0x40(1)
    xoris 0, 0, 0x8000
    .4byte 0xC842E740 # lfd f2, lbl_805416E0@sda21(r0)
    stw 0, 0x54(1)
    fsubs 0, 1, 0
    .4byte 0xC3E2E748 # lfs f31, lbl_805416E8@sda21(r0)
    lfd 1, 0x50(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    stfs 0, 0x858(31)
    lfs 2, 0x8(1)
    lfs 4, 0x44(1)
    lfs 1, 0x48(1)
    lfs 0, 0x40(1)
    stfs 2, 0x20(1)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    stfs 2, 0x14(1)
    psq_l 3, 0x20(1), 1, 0
    psq_l 2, 0x14(1), 1, 0
    stfs 1, 0xc(1)
    ps_add 1, 3, 2
    stfs 4, 0x10(1)
    stfs 0, 0x18(1)
    ps_muls0 3, 1, 31
    psq_l 0, 0xc(1), 0, 0
    stfs 4, 0x1c(1)
    psq_l 2, 0x18(1), 0, 0
    psq_st 1, 0x8(4), 1, 0
    ps_add 0, 2, 0
    psq_st 3, 0x8(4), 1, 0
    ps_muls0 1, 0, 31
    psq_st 0, 0x0(4), 0, 0
    psq_st 1, 0x0(4), 0, 0
    bl fn_80459624
L_8030E584:
    li 0, 0x0
    stw 0, 0x7f0(31)
    stb 0, 0x7f4(31)
    stb 0, 0x7f5(31)
    stb 0, 0x840(31)
    stb 0, 0x17c(31)
    stb 0, 0x17d(31)
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8030E5BC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC082E728 # lfs f4, lbl_805416C8@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC022E784 # lfs f1, lbl_80541724@sda21(r0)
    addi 4, 1, 0x8
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC002E788 # lfs f0, lbl_80541728@sda21(r0)
    stfs 4, 0x154(3)
    .4byte 0xC062E74C # lfs f3, lbl_805416EC@sda21(r0)
    stfs 4, 0x158(3)
    .4byte 0xC042E78C # lfs f2, lbl_8054172C@sda21(r0)
    stfs 1, 0x15c(3)
    .4byte 0xC022E794 # lfs f1, lbl_80541734@sda21(r0)
    stfs 0, 0x160(3)
    .4byte 0xC002E790 # lfs f0, lbl_80541730@sda21(r0)
    stb 0, 0x1e8(3)
    stfs 4, 0x1b8(3)
    stfs 4, 0x1b4(3)
    stfs 4, 0x1c0(3)
    stfs 4, 0x1bc(3)
    stfs 4, 0x1e4(3)
    stfs 4, 0x1e0(3)
    stfs 4, 0x1dc(3)
    stw 0, 0x1c4(3)
    stw 0, 0x1c8(3)
    stw 0, 0x1cc(3)
    stw 0, 0x1d0(3)
    stfs 3, 0x1d4(3)
    stfs 3, 0x1d8(3)
    stfs 4, 0x8(1)
    stfs 4, 0xc(1)
    stfs 2, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_8030CB10
    li 4, 0x0
    li 0, -0x1
    stw 4, 0x7f0(31)
    .4byte 0xC002E738 # lfs f0, lbl_805416D8@sda21(r0)
    stb 4, 0x7f4(31)
    stb 4, 0x7f5(31)
    stw 0, 0x838(31)
    stb 4, 0x7f6(31)
    stw 0, 0x83c(31)
    stb 4, 0x840(31)
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lwz 3, 0x4(3)
    lhz 0, 0x6(3)
    lhz 3, 0x4(3)
    stw 4, 0x144(31)
    stw 4, 0x148(31)
    stw 3, 0x14c(31)
    stw 0, 0x150(31)
    stfs 0, 0x858(31)
    stw 4, 0x174(31)
    stb 4, 0x178(31)
    stb 4, 0x179(31)
    stb 4, 0x17a(31)
    stb 4, 0x17b(31)
    stb 4, 0x17c(31)
    stb 4, 0x17d(31)
    stb 4, 0x17e(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8030E6D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_8030E700
    lis 5, lbl_804AA9E4@ha
    extsh. 0, 4
    addi 0, 5, lbl_804AA9E4@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_8030E700
    bl dtor_80084580
L_8030E700:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030E718:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804AA9E4@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804AA9E4@l
    stw 31, 0xc(1)
    mr 31, 3
    stw 0, 0x0(3)
    addi 3, 31, 0xe4
    bl PSMTXIdentity
    addi 3, 31, 0x114
    bl PSMTXIdentity
    lis 4, fn_8003B2CC@ha
    addi 3, 31, 0x1f0
    addi 4, 4, fn_8003B2CC@l
    li 5, 0x0
    li 6, 0xc
    li 7, 0x80
    bl __construct_array
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030E77C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805078F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805078F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E7CC
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8030E7CC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E804
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8030E804:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E83C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8030E83C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E874
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8030E874:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E8AC
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8030E8AC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E8E4
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8030E8E4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E91C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8030E91C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E954
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8030E954:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030E98C
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8030E98C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8030AC60
    .4byte fn_8030BE34
    .4byte fn_8030E77C

