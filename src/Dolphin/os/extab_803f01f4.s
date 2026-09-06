# 901KB-gap non-actor manager block: 36 functions, 50,960 bytes
# (0x803F01F4-0x803FC904), fully contiguous at the extab AND
# extabindex level with the neighboring pre-existing extab_803ee254.s
# and extab_803fc904.s entries (zero gap on either side). Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py (3 fused-dump
# functions). 1 ctor (fn_803F01F4, self-referencing the bundle's own
# first function) placed at 0x8045C57C-0x8045C580, found by direct
# whole-table scan and cross-checked for overlap.

.section extab, "a"
.balign 4
.global etb_8000FE14
etb_8000FE14:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000FE14, 8

.global etb_8000FE1C
etb_8000FE1C:
    .4byte 0x52CA0000
    .4byte 0x00000000
.size etb_8000FE1C, 8

.global etb_8000FE24
etb_8000FE24:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000FE24, 8

.global etb_8000FE2C
etb_8000FE2C:
    .4byte 0x904A0000
    .4byte 0x00000000
.size etb_8000FE2C, 8

.global etb_8000FE34
etb_8000FE34:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000FE34, 8

.global etb_8000FE3C
etb_8000FE3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000FE3C, 8

.global etb_8000FE44
etb_8000FE44:
    .4byte 0x680A0000
    .4byte 0x00000000
.size etb_8000FE44, 8

.global etb_8000FE4C
etb_8000FE4C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FE4C, 8

.global etb_8000FE54
etb_8000FE54:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000FE54, 8

.global etb_8000FE5C
etb_8000FE5C:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_8000FE5C, 8

.global etb_8000FE64
etb_8000FE64:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000FE64, 8

.global etb_8000FE6C
etb_8000FE6C:
    .4byte 0x820A0000
    .4byte 0x00000000
.size etb_8000FE6C, 8

.global etb_8000FE74
etb_8000FE74:
    .4byte 0x394A0000
    .4byte 0x00000000
.size etb_8000FE74, 8

.global etb_8000FE7C
etb_8000FE7C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000FE7C, 8

.global etb_8000FE84
etb_8000FE84:
    .4byte 0x904A0000
    .4byte 0x00000000
.size etb_8000FE84, 8

.global etb_8000FE8C
etb_8000FE8C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000FE8C, 8

.global etb_8000FE94
etb_8000FE94:
    .4byte 0x688A0000
    .4byte 0x00000000
.size etb_8000FE94, 8

.global etb_8000FE9C
etb_8000FE9C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000FE9C, 8

.global etb_8000FEA4
etb_8000FEA4:
    .4byte 0x688A0000
    .4byte 0x00000000
.size etb_8000FEA4, 8

.global etb_8000FEAC
etb_8000FEAC:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000FEAC, 8

.global etb_8000FEB4
etb_8000FEB4:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000FEB4, 8

.global etb_8000FEBC
etb_8000FEBC:
    .4byte 0x508A0000
    .4byte 0x00000000
.size etb_8000FEBC, 8

.global etb_8000FEC4
etb_8000FEC4:
    .4byte 0x688A0000
    .4byte 0x00000000
.size etb_8000FEC4, 8

.global etb_8000FECC
etb_8000FECC:
    .4byte 0x588A0000
    .4byte 0x00000000
.size etb_8000FECC, 8

.global etb_8000FED4
etb_8000FED4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000FED4, 8

.global etb_8000FEDC
etb_8000FEDC:
    .4byte 0x688A0000
    .4byte 0x00000000
.size etb_8000FEDC, 8

.global etb_8000FEE4
etb_8000FEE4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000FEE4, 8

.global etb_8000FEEC
etb_8000FEEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FEEC, 8

.global etb_8000FEF4
etb_8000FEF4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000FEF4, 8

.section extabindex, "a"
.balign 4
.global eti_8001FC90
eti_8001FC90:
    .4byte fn_803F01F4
    .4byte 0x00000860
    .4byte etb_8000FE14
.size eti_8001FC90, 12

.global eti_8001FC9C
eti_8001FC9C:
    .4byte fn_803F0A54
    .4byte 0x000011C4
    .4byte etb_8000FE1C
.size eti_8001FC9C, 12

.global eti_8001FCA8
eti_8001FCA8:
    .4byte fn_803F1C18
    .4byte 0x00000044
    .4byte etb_8000FE24
.size eti_8001FCA8, 12

.global eti_8001FCB4
eti_8001FCB4:
    .4byte fn_803F1C70
    .4byte 0x00000910
    .4byte etb_8000FE2C
.size eti_8001FCB4, 12

.global eti_8001FCC0
eti_8001FCC0:
    .4byte fn_803F267C
    .4byte 0x00000470
    .4byte etb_8000FE34
.size eti_8001FCC0, 12

.global eti_8001FCCC
eti_8001FCCC:
    .4byte fn_803F2AEC
    .4byte 0x0000005C
    .4byte etb_8000FE3C
.size eti_8001FCCC, 12

.global eti_8001FCD8
eti_8001FCD8:
    .4byte fn_803F2B78
    .4byte 0x00000770
    .4byte etb_8000FE44
.size eti_8001FCD8, 12

.global eti_8001FCE4
eti_8001FCE4:
    .4byte fn_803F3324
    .4byte 0x00000268
    .4byte etb_8000FE4C
.size eti_8001FCE4, 12

.global eti_8001FCF0
eti_8001FCF0:
    .4byte fn_803F358C
    .4byte 0x00000024
    .4byte etb_8000FE54
.size eti_8001FCF0, 12

.global eti_8001FCFC
eti_8001FCFC:
    .4byte fn_803F35B0
    .4byte 0x000002F4
    .4byte etb_8000FE5C
.size eti_8001FCFC, 12

.global eti_8001FD08
eti_8001FD08:
    .4byte fn_803F38A4
    .4byte 0x0000087C
    .4byte etb_8000FE64
.size eti_8001FD08, 12

.global eti_8001FD14
eti_8001FD14:
    .4byte fn_803F4120
    .4byte 0x000012F0
    .4byte etb_8000FE6C
.size eti_8001FD14, 12

.global eti_8001FD20
eti_8001FD20:
    .4byte fn_803F5410
    .4byte 0x00000590
    .4byte etb_8000FE74
.size eti_8001FD20, 12

.global eti_8001FD2C
eti_8001FD2C:
    .4byte fn_803F59A0
    .4byte 0x0000006C
    .4byte etb_8000FE7C
.size eti_8001FD2C, 12

.global eti_8001FD38
eti_8001FD38:
    .4byte fn_803F5A0C
    .4byte 0x00001750
    .4byte etb_8000FE84
.size eti_8001FD38, 12

.global eti_8001FD44
eti_8001FD44:
    .4byte fn_803F715C
    .4byte 0x00000110
    .4byte etb_8000FE8C
.size eti_8001FD44, 12

.global eti_8001FD50
eti_8001FD50:
    .4byte fn_803F726C
    .4byte 0x00000DE4
    .4byte etb_8000FE94
.size eti_8001FD50, 12

.global eti_8001FD5C
eti_8001FD5C:
    .4byte fn_803F8050
    .4byte 0x00000304
    .4byte etb_8000FE9C
.size eti_8001FD5C, 12

.global eti_8001FD68
eti_8001FD68:
    .4byte fn_803F8354
    .4byte 0x00000790
    .4byte etb_8000FEA4
.size eti_8001FD68, 12

.global eti_8001FD74
eti_8001FD74:
    .4byte fn_803F8AE4
    .4byte 0x000004D8
    .4byte etb_8000FEAC
.size eti_8001FD74, 12

.global eti_8001FD80
eti_8001FD80:
    .4byte fn_803F8FBC
    .4byte 0x00000480
    .4byte etb_8000FEB4
.size eti_8001FD80, 12

.global eti_8001FD8C
eti_8001FD8C:
    .4byte fn_803F943C
    .4byte 0x00000A6C
    .4byte etb_8000FEBC
.size eti_8001FD8C, 12

.global eti_8001FD98
eti_8001FD98:
    .4byte fn_803F9EA8
    .4byte 0x00000BE0
    .4byte etb_8000FEC4
.size eti_8001FD98, 12

.global eti_8001FDA4
eti_8001FDA4:
    .4byte fn_803FAA88
    .4byte 0x00000C6C
    .4byte etb_8000FECC
.size eti_8001FDA4, 12

.global eti_8001FDB0
eti_8001FDB0:
    .4byte fn_803FB6F4
    .4byte 0x000002F0
    .4byte etb_8000FED4
.size eti_8001FDB0, 12

.global eti_8001FDBC
eti_8001FDBC:
    .4byte fn_803FB9E4
    .4byte 0x00000920
    .4byte etb_8000FEDC
.size eti_8001FDBC, 12

.global eti_8001FDC8
eti_8001FDC8:
    .4byte fn_803FC304
    .4byte 0x00000168
    .4byte etb_8000FEE4
.size eti_8001FDC8, 12

.global eti_8001FDD4
eti_8001FDD4:
    .4byte fn_803FC46C
    .4byte 0x00000178
    .4byte etb_8000FEEC
.size eti_8001FDD4, 12

.global eti_8001FDE0
eti_8001FDE0:
    .4byte fn_803FC5E4
    .4byte 0x00000320
    .4byte etb_8000FEF4
.size eti_8001FDE0, 12

.text
.balign 4
.global fn_803F01F4
.global fn_803F0A54
.global fn_803F1C18
.global fn_803F1C5C
.global fn_803F1C70
.global fn_803F2580
.global fn_803F2660
.global fn_803F267C
.global fn_803F2AEC
.global fn_803F2B48
.global fn_803F2B5C
.global fn_803F2B78
.global fn_803F32E8
.global fn_803F3310
.global fn_803F3324
.global fn_803F358C
.global fn_803F35B0
.global fn_803F38A4
.global fn_803F4120
.global fn_803F5410
.global fn_803F59A0
.global fn_803F5A0C
.global fn_803F715C
.global fn_803F726C
.global fn_803F8050
.global fn_803F8354
.global fn_803F8AE4
.global fn_803F8FBC
.global fn_803F943C
.global fn_803F9EA8
.global fn_803FAA88
.global fn_803FB6F4
.global fn_803FB9E4
.global fn_803FC304
.global fn_803FC46C
.global fn_803FC5E4

fn_803F01F4:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stmw 14, 0x108(1)
    lis 3, lbl_804B06A0@ha
    lis 4, lbl_80528568@ha
    addi 16, 3, lbl_804B06A0@l
    lwz 15, 0x64(16)
    addi 31, 4, lbl_80528568@l
    lwz 17, 0x0(16)
    addi 20, 16, 0xb4
    lwz 0, 0x5c(16)
    stw 15, 0xf4(1)
    lwz 15, 0x68(16)
    stw 0, 0x5c(20)
    lwz 0, 0xf4(1)
    stw 15, 0x8(1)
    lwz 15, 0x6c(16)
    stw 0, 0x64(20)
    lwz 0, 0x8(1)
    stw 15, 0xc(1)
    lwz 15, 0x70(16)
    stw 0, 0x68(20)
    lwz 0, 0xc(1)
    stw 15, 0x10(1)
    lwz 15, 0x74(16)
    stw 0, 0x6c(20)
    lwz 0, 0x10(1)
    stw 15, 0x14(1)
    lwz 15, 0x78(16)
    stw 0, 0x70(20)
    lwz 0, 0x14(1)
    stw 15, 0x18(1)
    lwz 15, 0x7c(16)
    stw 0, 0x74(20)
    lwz 0, 0x18(1)
    stw 15, 0x1c(1)
    lwz 15, 0x80(16)
    stw 0, 0x78(20)
    lwz 0, 0x1c(1)
    stw 15, 0x20(1)
    lwz 15, 0x84(16)
    stw 0, 0x7c(20)
    lwz 0, 0x20(1)
    stw 15, 0x24(1)
    lwz 15, 0x88(16)
    stw 0, 0x80(20)
    lwz 0, 0x24(1)
    stw 15, 0x28(1)
    lwz 15, 0x8c(16)
    stw 0, 0x84(20)
    lwz 0, 0x28(1)
    stw 15, 0x2c(1)
    lwz 15, 0x90(16)
    stw 0, 0x88(20)
    lwz 0, 0x2c(1)
    stw 15, 0x30(1)
    lwz 15, 0x94(16)
    stw 0, 0x8c(20)
    lwz 0, 0x30(1)
    stw 15, 0x34(1)
    lwz 15, 0x98(16)
    stw 0, 0x90(20)
    lwz 0, 0x34(1)
    stw 15, 0x38(1)
    lwz 15, 0x9c(16)
    stw 0, 0x94(20)
    lwz 0, 0x38(1)
    stw 15, 0x3c(1)
    lwz 15, 0xa0(16)
    stw 0, 0x98(20)
    lwz 0, 0x3c(1)
    stw 15, 0x40(1)
    lwz 15, 0xa4(16)
    stw 0, 0x9c(20)
    lwz 0, 0x40(1)
    lwz 18, 0x4(16)
    lwz 19, 0x8(16)
    lwz 21, 0xc(16)
    lwz 22, 0x10(16)
    lwz 23, 0x14(16)
    lwz 24, 0x18(16)
    lwz 25, 0x1c(16)
    lwz 26, 0x20(16)
    lwz 27, 0x24(16)
    lwz 28, 0x28(16)
    lwz 29, 0x2c(16)
    lwz 30, 0x30(16)
    lwz 12, 0x34(16)
    lwz 11, 0x38(16)
    lwz 10, 0x3c(16)
    lwz 9, 0x40(16)
    lwz 8, 0x44(16)
    lwz 7, 0x48(16)
    lwz 6, 0x4c(16)
    lwz 5, 0x50(16)
    lwz 4, 0x54(16)
    lwz 3, 0x58(16)
    lwz 14, 0x60(16)
    stw 0, 0xa0(20)
    mr 0, 15
    stw 15, 0x44(1)
    stw 17, 0xb4(16)
    stw 18, 0xb8(16)
    stw 19, 0xbc(16)
    stw 21, 0xc(20)
    stw 22, 0x10(20)
    stw 23, 0x14(20)
    stw 24, 0x18(20)
    stw 25, 0x1c(20)
    stw 26, 0x20(20)
    stw 27, 0x24(20)
    stw 28, 0x28(20)
    stw 29, 0x2c(20)
    stw 30, 0x30(20)
    stw 12, 0x34(20)
    stw 11, 0x38(20)
    stw 10, 0x3c(20)
    stw 9, 0x40(20)
    stw 8, 0x44(20)
    stw 7, 0x48(20)
    stw 6, 0x4c(20)
    stw 5, 0x50(20)
    stw 4, 0x54(20)
    stw 3, 0x58(20)
    stw 14, 0x60(20)
    stw 0, 0xa4(20)
    lwz 29, 0x1bc(16)
    addi 22, 16, 0x21c
    lwz 0, 0x1b4(16)
    stw 29, 0xf8(1)
    lwz 29, 0x1c0(16)
    stw 0, 0x4c(22)
    lwz 0, 0xf8(1)
    stw 29, 0x48(1)
    lwz 29, 0x1c4(16)
    stw 0, 0x54(22)
    lwz 0, 0x48(1)
    stw 29, 0x4c(1)
    lwz 29, 0x1c8(16)
    stw 0, 0x58(22)
    lwz 0, 0x4c(1)
    stw 29, 0x50(1)
    lwz 29, 0x1cc(16)
    stw 0, 0x5c(22)
    lwz 0, 0x50(1)
    stw 29, 0x54(1)
    lwz 29, 0x1d0(16)
    stw 0, 0x60(22)
    lwz 0, 0x54(1)
    stw 29, 0x58(1)
    lwz 29, 0x1d4(16)
    stw 0, 0x64(22)
    lwz 0, 0x58(1)
    stw 29, 0x5c(1)
    lwz 29, 0x1d8(16)
    stw 0, 0x68(22)
    lwz 0, 0x5c(1)
    stw 29, 0x60(1)
    lwz 29, 0x1dc(16)
    stw 0, 0x6c(22)
    lwz 0, 0x60(1)
    stw 29, 0x64(1)
    lwz 29, 0x1e0(16)
    stw 0, 0x70(22)
    lwz 0, 0x64(1)
    stw 29, 0x68(1)
    lwz 29, 0x1e4(16)
    stw 0, 0x74(22)
    lwz 0, 0x68(1)
    stw 29, 0x6c(1)
    lwz 29, 0x1e8(16)
    stw 0, 0x78(22)
    lwz 0, 0x6c(1)
    stw 29, 0x70(1)
    lwz 29, 0x1ec(16)
    stw 0, 0x7c(22)
    lwz 0, 0x70(1)
    stw 29, 0x74(1)
    lwz 29, 0x1f0(16)
    stw 0, 0x80(22)
    lwz 0, 0x74(1)
    stw 29, 0x78(1)
    lwz 29, 0x1f4(16)
    stw 0, 0x84(22)
    lwz 0, 0x78(1)
    stw 29, 0x7c(1)
    lwz 29, 0x1f8(16)
    stw 0, 0x88(22)
    lwz 0, 0x7c(1)
    stw 29, 0x80(1)
    lwz 29, 0x1fc(16)
    stw 0, 0x8c(22)
    lwz 0, 0x80(1)
    stw 29, 0x84(1)
    lwz 29, 0x200(16)
    stw 0, 0x90(22)
    lwz 0, 0x84(1)
    stw 29, 0x88(1)
    lwz 29, 0x204(16)
    stw 0, 0x94(22)
    lwz 0, 0x88(1)
    stw 29, 0x8c(1)
    lwz 29, 0x208(16)
    stw 0, 0x98(22)
    lwz 0, 0x8c(1)
    stw 29, 0x90(1)
    lwz 29, 0x20c(16)
    stw 0, 0x9c(22)
    lwz 0, 0x90(1)
    lwz 28, 0xa8(16)
    lwz 27, 0xac(16)
    lwz 26, 0xb0(16)
    lwz 25, 0x168(16)
    lwz 24, 0x16c(16)
    lwz 23, 0x170(16)
    lwz 21, 0x174(16)
    lwz 19, 0x178(16)
    lwz 18, 0x17c(16)
    lwz 17, 0x180(16)
    lwz 15, 0x184(16)
    lwz 14, 0x188(16)
    lwz 12, 0x18c(16)
    lwz 11, 0x190(16)
    lwz 10, 0x194(16)
    lwz 9, 0x198(16)
    lwz 8, 0x19c(16)
    lwz 7, 0x1a0(16)
    lwz 6, 0x1a4(16)
    lwz 5, 0x1a8(16)
    lwz 4, 0x1ac(16)
    lwz 3, 0x1b0(16)
    lwz 30, 0x1b8(16)
    stw 0, 0xa0(22)
    mr 0, 29
    stw 29, 0x94(1)
    stw 28, 0xa8(20)
    stw 27, 0xac(20)
    stw 26, 0xb0(20)
    stw 25, 0x21c(16)
    stw 24, 0x220(16)
    stw 23, 0x224(16)
    stw 21, 0xc(22)
    stw 19, 0x10(22)
    stw 18, 0x14(22)
    stw 17, 0x18(22)
    stw 15, 0x1c(22)
    stw 14, 0x20(22)
    stw 12, 0x24(22)
    stw 11, 0x28(22)
    stw 10, 0x2c(22)
    stw 9, 0x30(22)
    stw 8, 0x34(22)
    stw 7, 0x38(22)
    stw 6, 0x3c(22)
    stw 5, 0x40(22)
    stw 4, 0x44(22)
    stw 3, 0x48(22)
    stw 30, 0x50(22)
    stw 0, 0xa4(22)
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    addi 21, 16, 0x384
    lwz 29, 0x324(16)
    extsb. 0, 0
    lwz 0, 0x31c(16)
    stw 29, 0xfc(1)
    lwz 29, 0x328(16)
    stw 0, 0x4c(21)
    lwz 0, 0xfc(1)
    stw 29, 0x98(1)
    lwz 29, 0x32c(16)
    stw 0, 0x54(21)
    lwz 0, 0x98(1)
    stw 29, 0x9c(1)
    lwz 29, 0x330(16)
    stw 0, 0x58(21)
    lwz 0, 0x9c(1)
    stw 29, 0xa0(1)
    lwz 29, 0x334(16)
    stw 0, 0x5c(21)
    lwz 0, 0xa0(1)
    stw 29, 0xa4(1)
    lwz 29, 0x338(16)
    stw 0, 0x60(21)
    lwz 0, 0xa4(1)
    stw 29, 0xa8(1)
    lwz 29, 0x33c(16)
    stw 0, 0x64(21)
    lwz 0, 0xa8(1)
    stw 29, 0xac(1)
    lwz 29, 0x340(16)
    stw 0, 0x68(21)
    lwz 0, 0xac(1)
    stw 29, 0xb0(1)
    lwz 29, 0x344(16)
    stw 0, 0x6c(21)
    lwz 0, 0xb0(1)
    stw 29, 0xb4(1)
    lwz 29, 0x348(16)
    stw 0, 0x70(21)
    lwz 0, 0xb4(1)
    stw 29, 0xb8(1)
    lwz 29, 0x34c(16)
    stw 0, 0x74(21)
    lwz 0, 0xb8(1)
    stw 29, 0xbc(1)
    lwz 29, 0x350(16)
    stw 0, 0x78(21)
    lwz 0, 0xbc(1)
    stw 29, 0xc0(1)
    lwz 29, 0x354(16)
    stw 0, 0x7c(21)
    lwz 0, 0xc0(1)
    stw 29, 0xc4(1)
    lwz 29, 0x358(16)
    stw 0, 0x80(21)
    lwz 0, 0xc4(1)
    stw 29, 0xc8(1)
    lwz 29, 0x35c(16)
    stw 0, 0x84(21)
    lwz 0, 0xc8(1)
    stw 29, 0xcc(1)
    lwz 29, 0x360(16)
    stw 0, 0x88(21)
    lwz 0, 0xcc(1)
    stw 29, 0xd0(1)
    lwz 29, 0x364(16)
    stw 0, 0x8c(21)
    lwz 0, 0xd0(1)
    stw 29, 0xd4(1)
    lwz 29, 0x368(16)
    stw 0, 0x90(21)
    lwz 0, 0xd4(1)
    stw 29, 0xd8(1)
    lwz 29, 0x36c(16)
    stw 0, 0x94(21)
    lwz 0, 0xd8(1)
    stw 29, 0xdc(1)
    lwz 29, 0x370(16)
    stw 0, 0x98(21)
    lwz 0, 0xdc(1)
    stw 29, 0xe0(1)
    lwz 29, 0x374(16)
    stw 0, 0x9c(21)
    lwz 0, 0xe0(1)
    stw 29, 0xe4(1)
    lwz 29, 0x378(16)
    stw 0, 0xa0(21)
    lwz 0, 0xe4(1)
    stw 29, 0xe8(1)
    lwz 29, 0x37c(16)
    stw 0, 0xa4(21)
    lwz 0, 0xe8(1)
    stw 29, 0xec(1)
    lwz 29, 0x380(16)
    stw 0, 0xa8(21)
    lwz 0, 0xec(1)
    lwz 28, 0x210(16)
    lwz 27, 0x214(16)
    lwz 26, 0x218(16)
    lwz 25, 0x2d0(16)
    lwz 24, 0x2d4(16)
    lwz 23, 0x2d8(16)
    lwz 20, 0x2dc(16)
    lwz 19, 0x2e0(16)
    lwz 18, 0x2e4(16)
    lwz 17, 0x2e8(16)
    lwz 15, 0x2ec(16)
    lwz 14, 0x2f0(16)
    lwz 12, 0x2f4(16)
    lwz 11, 0x2f8(16)
    lwz 10, 0x2fc(16)
    lwz 9, 0x300(16)
    lwz 8, 0x304(16)
    lwz 7, 0x308(16)
    lwz 6, 0x30c(16)
    lwz 5, 0x310(16)
    lwz 4, 0x314(16)
    lwz 3, 0x318(16)
    lwz 30, 0x320(16)
    stw 0, 0xac(21)
    mr 0, 29
    stw 29, 0xf0(1)
    stw 28, 0xa8(22)
    stw 27, 0xac(22)
    stw 26, 0xb0(22)
    stw 25, 0x384(16)
    stw 24, 0x388(16)
    stw 23, 0x38c(16)
    stw 20, 0xc(21)
    stw 19, 0x10(21)
    stw 18, 0x14(21)
    stw 17, 0x18(21)
    stw 15, 0x1c(21)
    stw 14, 0x20(21)
    stw 12, 0x24(21)
    stw 11, 0x28(21)
    stw 10, 0x2c(21)
    stw 9, 0x30(21)
    stw 8, 0x34(21)
    stw 7, 0x38(21)
    stw 6, 0x3c(21)
    stw 5, 0x40(21)
    stw 4, 0x44(21)
    stw 3, 0x48(21)
    stw 30, 0x50(21)
    stw 0, 0xb0(21)
    .4byte 0x40820030 # bne .L_803F0880
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
L_803F0880:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F08B8
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
L_803F08B8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F08F0
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
L_803F08F0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F0928
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
L_803F0928:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F0960
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
L_803F0960:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F0998
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
L_803F0998:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F09D0
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
L_803F09D0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F0A08
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
L_803F0A08:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803F0A40
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
L_803F0A40:
    lmw 14, 0x108(1)
    lwz 0, 0x154(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_803F0A54:
    stwu 1, -0x200(1)
    mflr 0
    stw 0, 0x204(1)
    stfd 31, 0x1f0(1)
    psq_st 31, 0x1f8(1), 0, 0
    stfd 30, 0x1e0(1)
    psq_st 30, 0x1e8(1), 0, 0
    stfd 29, 0x1d0(1)
    psq_st 29, 0x1d8(1), 0, 0
    stfd 28, 0x1c0(1)
    psq_st 28, 0x1c8(1), 0, 0
    stfd 27, 0x1b0(1)
    psq_st 27, 0x1b8(1), 0, 0
    stfd 26, 0x1a0(1)
    psq_st 26, 0x1a8(1), 0, 0
    stfd 25, 0x190(1)
    psq_st 25, 0x198(1), 0, 0
    stfd 24, 0x180(1)
    psq_st 24, 0x188(1), 0, 0
    stfd 23, 0x170(1)
    psq_st 23, 0x178(1), 0, 0
    stfd 22, 0x160(1)
    psq_st 22, 0x168(1), 0, 0
    stfd 21, 0x150(1)
    psq_st 21, 0x158(1), 0, 0
    stmw 22, 0x128(1)
    mr 31, 3
    lis 4, lbl_80478A60@ha
    lwz 3, 0xc(3)
    addi 27, 4, lbl_80478A60@l
    lwz 5, 0x708(27)
    lwz 12, 0x0(3)
    lwz 6, 0x70c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 3, 0xb2(3)
    lis 28, 0x4330
    lbz 0, 0x335(31)
    stw 3, 0x10c(1)
    lwz 3, 0x210(31)
    stw 28, 0x108(1)
    .4byte 0xC8420798 # lfd f2, lbl_80543738@sda21(r0)
    cmpwi 3, 0x64
    lfd 0, 0x108(1)
    stw 0, 0x114(1)
    fsubs 1, 0, 2
    stw 28, 0x110(1)
    lfd 0, 0x110(1)
    fsubs 0, 0, 2
    fdivs 1, 1, 0
    .4byte 0x4080034C # bge .L_803F0E6C
    .4byte 0xC0020778 # lfs f0, lbl_80543718@sda21(r0)
    addi 29, 27, 0xec0
    li 25, 0x0
    li 28, 0x0
    fmuls 28, 0, 1
L_803F0B38:
    lwz 0, 0x1ac(31)
    li 3, 0x0
    slwi 0, 0, 5
    add 0, 0, 28
    add 4, 29, 0
    lwz 0, 0x0(4)
    lwz 4, 0x4(4)
    xor 0, 0, 3
    xor 4, 4, 3
    or. 0, 4, 0
    .4byte 0x418202F8 # beq .L_803F0E58
    li 0, -0x1
    addi 10, 1, 0xc8
    stw 0, 0xd8(1)
    stw 0, 0xdc(1)
    .4byte 0x48000064 # b .L_803F0BD8
L_803F0B78:
    clrlwi 0, 3, 24
    addi 8, 3, 0x5
    addi 6, 3, 0x1
    stbx 3, 10, 0
    clrlwi 0, 6, 24
    addi 4, 3, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 3, 0x3
    addi 9, 3, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 3, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 3, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 3, 3, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_803F0BD8:
    clrlwi 0, 3, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803F0B78
    fctiwz 0, 28
    li 7, 0x0
    li 6, 0x1
    li 8, -0x1
    stb 6, 0xee(1)
    li 5, 0x3
    stfd 0, 0x110(1)
    li 3, 0x2
    addi 4, 27, 0xec0
    stw 8, 0xd8(1)
    lwz 0, 0x114(1)
    stw 7, 0xdc(1)
    stw 7, 0xe0(1)
    stb 7, 0xe4(1)
    stb 7, 0xe5(1)
    stb 7, 0xe6(1)
    stb 6, 0xe7(1)
    stb 6, 0xe8(1)
    stb 7, 0xe9(1)
    stb 7, 0xea(1)
    stb 7, 0xeb(1)
    stb 7, 0xec(1)
    stb 7, 0xed(1)
    stw 5, 0xf0(1)
    stb 6, 0xf4(1)
    stb 7, 0xf5(1)
    stb 7, 0xf6(1)
    stw 8, 0xf8(1)
    stw 7, 0xfc(1)
    stw 3, 0x100(1)
    stb 7, 0xee(1)
    stb 0, 0xdb(1)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 28
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 4, 27, 0xec0
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 22, 1, 0
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 28
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    addi 4, 27, 0xec0
    lwz 5, 0x4(5)
    lfs 0, 0x30(3)
    lhz 3, 0x4(5)
    stw 0, 0x108(1)
    fmadds 0, 22, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC042077C # lfs f2, lbl_8054371C@sda21(r0)
    stw 0, 0x10c(1)
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    fmuls 2, 2, 0
    lfd 0, 0x108(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x8(1)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 28
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    addi 4, 27, 0xec0
    lfs 0, 0x24(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 22, 1, 0
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 28
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 8, 0x4330
    lis 5, 0x8889
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 9, 0x4(4)
    subi 0, 5, 0x7777
    lfs 0, 0x34(3)
    lis 4, 0x534f
    lhz 3, 0x6(9)
    addi 7, 25, 0xc
    fmadds 1, 22, 1, 0
    .4byte 0xC0420788 # lfs f2, lbl_80543728@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stw 3, 0x11c(1)
    addi 6, 27, 0x40
    fadds 3, 2, 1
    stw 8, 0x118(1)
    .4byte 0xC0820784 # lfs f4, lbl_80543724@sda21(r0)
    addi 4, 4, 0x4220
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    addi 5, 27, 0xf20
    lfd 1, 0x118(1)
    fmuls 3, 4, 3
    stfs 0, 0x10(1)
    fsubs 0, 1, 2
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stb 7, 0xcf(1)
    fdivs 0, 3, 0
    stfs 0, 0xc(1)
    lwz 8, 0x210(31)
    lwz 3, 0xa4(3)
    mulhw 0, 0, 8
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    add 0, 0, 8
    srawi 0, 0, 4
    srwi 7, 0, 31
    add 0, 0, 7
    mulli 0, 0, 0x1e
    subf 0, 0, 8
    slwi 0, 0, 2
    lwzx 6, 6, 0
    addi 23, 6, 0x10
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 23
    fmr 2, 1
    addi 7, 1, 0xc8
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_803F0E58:
    addi 25, 25, 0x1
    addi 28, 28, 0x8
    cmpwi 25, 0x4
    .4byte 0x4180FCD4 # blt .L_803F0B38
    .4byte 0x48000D44 # b .L_803F1BAC
L_803F0E6C:
    cmpwi 3, 0x70
    .4byte 0x40800520 # bge .L_803F1390
    .4byte 0xC0020778 # lfs f0, lbl_80543718@sda21(r0)
    addi 26, 27, 0xec0
    .4byte 0xC3C2077C # lfs f30, lbl_8054371C@sda21(r0)
    addi 29, 1, 0x8c
    fmuls 0, 0, 1
    .4byte 0xCBA207A0 # lfd f29, lbl_80543740@sda21(r0)
    .4byte 0xC3820794 # lfs f28, lbl_80543734@sda21(r0)
    li 24, 0x3
    .4byte 0xC3220784 # lfs f25, lbl_80543724@sda21(r0)
    li 30, 0x18
    fctiwz 31, 0
    .4byte 0xC3020788 # lfs f24, lbl_80543728@sda21(r0)
    .4byte 0xC2E20780 # lfs f23, lbl_80543720@sda21(r0)
    lis 23, 0x534f
    .4byte 0xC2C2078C # lfs f22, lbl_8054372C@sda21(r0)
    addi 26, 26, 0x18
L_803F0EB4:
    li 0, -0x1
    li 9, 0x0
    stw 0, 0x9c(1)
    stw 0, 0xa0(1)
    .4byte 0x48000064 # b .L_803F0F28
L_803F0EC8:
    clrlwi 0, 9, 24
    addi 7, 9, 0x5
    addi 5, 9, 0x1
    stbx 9, 29, 0
    clrlwi 0, 5, 24
    addi 3, 9, 0x2
    stbx 5, 29, 0
    clrlwi 0, 3, 24
    addi 4, 9, 0x3
    addi 8, 9, 0x4
    stbx 3, 29, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 9, 0x6
    stbx 4, 29, 0
    clrlwi 0, 8, 24
    addi 3, 9, 0x7
    clrlwi 4, 5, 24
    stbx 8, 29, 0
    clrlwi 0, 3, 24
    addi 9, 9, 0x8
    stbx 7, 29, 6
    stbx 5, 29, 4
    stbx 3, 29, 0
L_803F0F28:
    clrlwi 0, 9, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803F0EC8
    stfd 31, 0x118(1)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    stb 5, 0xb2(1)
    li 4, 0x3
    li 3, 0x2
    lwz 0, 0x11c(1)
    stw 7, 0x9c(1)
    stw 6, 0xa0(1)
    stw 6, 0xa4(1)
    stb 6, 0xa8(1)
    stb 6, 0xa9(1)
    stb 6, 0xaa(1)
    stb 5, 0xab(1)
    stb 5, 0xac(1)
    stb 6, 0xad(1)
    stb 6, 0xae(1)
    stb 6, 0xaf(1)
    stb 6, 0xb0(1)
    stb 6, 0xb1(1)
    stw 4, 0xb4(1)
    stb 5, 0xb8(1)
    stb 6, 0xb9(1)
    stb 6, 0xba(1)
    stw 7, 0xbc(1)
    stw 6, 0xc0(1)
    stw 3, 0xc4(1)
    stb 6, 0xb2(1)
    stb 0, 0x9f(1)
    lwz 0, 0x1ac(31)
    cmpwi 0, 0x1
    .4byte 0x41820114 # beq .L_803F10C8
    .4byte 0x408002A4 # bge .L_803F125C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_803F0FC8
    .4byte 0x48000298 # b .L_803F125C
L_803F0FC8:
    lwz 3, 0xc(31)
    srwi 5, 24, 31
    clrlwi 4, 24, 31
    slwi 0, 0, 5
    xor 4, 4, 5
    lwz 12, 0x0(3)
    subf 25, 5, 4
    addi 4, 27, 0xec0
    slwi 22, 25, 3
    lwz 12, 0x3c(12)
    add 0, 0, 22
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 4, 27, 0xec0
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 26, 1, 0
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 22
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    srwi 0, 24, 31
    lfs 0, 0x30(3)
    add 0, 0, 24
    lwz 3, 0xc(31)
    srawi 4, 0, 1
    slwi 0, 25, 1
    add 0, 4, 0
    lwz 12, 0x0(3)
    slwi 4, 0, 3
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    addi 0, 27, 0xec0
    lwz 12, 0x3c(12)
    addi 22, 4, 0x40
    fmadds 27, 26, 1, 0
    add 22, 0, 22
    lwz 5, 0x0(22)
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    fsubs 26, 1, 0
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lfs 0, 0x30(3)
    fmadds 26, 26, 1, 0
    .4byte 0x48000198 # b .L_803F125C
L_803F10C8:
    cmpwi 24, 0x3
    .4byte 0x418200CC # beq .L_803F1198
    lwz 3, 0xc(31)
    slwi 0, 0, 5
    addi 4, 27, 0xec0
    lwz 12, 0x0(3)
    add 0, 0, 30
    add 6, 4, 0
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 4, 27, 0xec0
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 26, 1, 0
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 30
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 0, 0x30(3)
    lwz 3, 0xc(31)
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 12, 0x0(3)
    fmadds 27, 26, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(26)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    fsubs 26, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lfs 0, 0x30(3)
    fmadds 26, 26, 1, 0
    .4byte 0x480000C8 # b .L_803F125C
L_803F1198:
    lwz 3, 0xc(31)
    slwi 5, 0, 5
    addi 4, 27, 0xec0
    lwz 12, 0x0(3)
    addi 0, 5, 0x10
    add 6, 4, 0
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 4, 27, 0xec0
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 26, 1, 0
    lwz 12, 0x0(3)
    slwi 5, 0, 5
    addi 0, 5, 0x10
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 0, 0x30(3)
    lwz 3, 0xc(31)
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 12, 0x0(3)
    fmadds 27, 26, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(26)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    fsubs 26, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lfs 0, 0x30(3)
    fmadds 26, 26, 1, 0
L_803F125C:
    lwz 4, 0x210(31)
    fsubs 2, 26, 27
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    subi 0, 4, 0x64
    stw 28, 0x118(1)
    xoris 0, 0, 0x8000
    lwz 3, 0x4(3)
    stw 0, 0x11c(1)
    lhz 0, 0x4(3)
    lfd 0, 0x118(1)
    xoris 0, 0, 0x8000
    stw 28, 0x110(1)
    fsubs 0, 0, 29
    lwz 5, 0x40(26)
    stw 0, 0x114(1)
    lwz 6, 0x44(26)
    fdivs 1, 0, 28
    lfd 0, 0x110(1)
    fmadds 1, 2, 1, 27
    fsubs 0, 0, 29
    fmuls 1, 30, 1
    fdivs 0, 1, 0
    stfs 0, 0x8(1)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0xc(31)
    fsubs 21, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    addi 0, 24, 0xc
    lfs 0, 0x34(3)
    addi 5, 27, 0xf20
    lwz 3, 0x4(4)
    addi 4, 23, 0x4220
    fmadds 0, 21, 23, 0
    stw 28, 0x108(1)
    lhz 6, 0x6(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    xoris 6, 6, 0x8000
    fadds 1, 24, 0
    stw 6, 0x10c(1)
    lfd 0, 0x108(1)
    fmuls 1, 25, 1
    stfs 22, 0x10(1)
    fsubs 0, 0, 29
    stb 0, 0x93(1)
    fdivs 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x8c
    fmr 2, 1
    li 6, 0x10
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
    subic. 24, 24, 0x1
    subi 26, 26, 0x8
    subi 30, 30, 0x8
    .4byte 0x4080FB2C # bge .L_803F0EB4
    .4byte 0x48000820 # b .L_803F1BAC
L_803F1390:
    cmpwi 3, 0xd4
    .4byte 0x408002F8 # bge .L_803F168C
    .4byte 0xC0020778 # lfs f0, lbl_80543718@sda21(r0)
    lis 3, 0x8889
    .4byte 0xC3C2077C # lfs f30, lbl_8054371C@sda21(r0)
    addi 26, 27, 0xec0
    fmuls 0, 0, 1
    .4byte 0xC3A20780 # lfs f29, lbl_80543720@sda21(r0)
    .4byte 0xCB8207A0 # lfd f28, lbl_80543740@sda21(r0)
    addi 29, 1, 0x50
    .4byte 0xC3020784 # lfs f24, lbl_80543724@sda21(r0)
    subi 30, 3, 0x7777
    fctiwz 31, 0
    .4byte 0xC2E20788 # lfs f23, lbl_80543728@sda21(r0)
    .4byte 0xC2C2078C # lfs f22, lbl_8054372C@sda21(r0)
    addi 23, 27, 0x40
    li 24, 0x0
    lis 25, 0x534f
L_803F13D8:
    li 0, -0x1
    li 9, 0x0
    stw 0, 0x60(1)
    stw 0, 0x64(1)
    .4byte 0x48000064 # b .L_803F144C
L_803F13EC:
    clrlwi 0, 9, 24
    addi 7, 9, 0x5
    addi 5, 9, 0x1
    stbx 9, 29, 0
    clrlwi 0, 5, 24
    addi 3, 9, 0x2
    stbx 5, 29, 0
    clrlwi 0, 3, 24
    addi 4, 9, 0x3
    addi 8, 9, 0x4
    stbx 3, 29, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 9, 0x6
    stbx 4, 29, 0
    clrlwi 0, 8, 24
    addi 3, 9, 0x7
    clrlwi 4, 5, 24
    stbx 8, 29, 0
    clrlwi 0, 3, 24
    addi 9, 9, 0x8
    stbx 7, 29, 6
    stbx 5, 29, 4
    stbx 3, 29, 0
L_803F144C:
    clrlwi 0, 9, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803F13EC
    stfd 31, 0x118(1)
    li 8, 0x0
    li 7, 0x1
    li 9, -0x1
    stb 7, 0x76(1)
    li 4, 0x3
    li 3, 0x2
    lwz 0, 0x11c(1)
    stw 9, 0x60(1)
    lwz 5, 0x40(26)
    stw 8, 0x64(1)
    lwz 6, 0x44(26)
    stw 8, 0x68(1)
    stb 8, 0x6c(1)
    stb 8, 0x6d(1)
    stb 8, 0x6e(1)
    stb 7, 0x6f(1)
    stb 7, 0x70(1)
    stb 8, 0x71(1)
    stb 8, 0x72(1)
    stb 8, 0x73(1)
    stb 8, 0x74(1)
    stb 8, 0x75(1)
    stw 4, 0x78(1)
    stb 7, 0x7c(1)
    stb 8, 0x7d(1)
    stb 8, 0x7e(1)
    stw 9, 0x80(1)
    stw 8, 0x84(1)
    stw 3, 0x88(1)
    stb 8, 0x76(1)
    stb 0, 0x63(1)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    fsubs 21, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 0, 0x30(3)
    lwz 3, 0x4(4)
    fmadds 0, 21, 29, 0
    stw 28, 0x110(1)
    lhz 0, 0x4(3)
    lwz 5, 0x40(26)
    xoris 0, 0, 0x8000
    fmuls 1, 30, 0
    stw 0, 0x114(1)
    lwz 6, 0x44(26)
    lfd 0, 0x110(1)
    fsubs 0, 0, 28
    fdivs 0, 1, 0
    stfs 0, 0x8(1)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0xc(31)
    fsubs 21, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 0, 0x34(3)
    lwz 3, 0x4(4)
    fmadds 0, 21, 29, 0
    stw 28, 0x108(1)
    lhz 0, 0x6(3)
    xoris 0, 0, 0x8000
    fadds 1, 23, 0
    stw 0, 0x10c(1)
    lfd 0, 0x108(1)
    fmuls 1, 24, 1
    stfs 22, 0x10(1)
    fsubs 0, 0, 28
    fdivs 0, 1, 0
    stfs 0, 0xc(1)
    lwz 0, 0x1ac(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_803F1600
    srwi 4, 24, 31
    clrlwi 0, 24, 31
    xor 0, 0, 4
    add 3, 4, 24
    subf 0, 4, 0
    srawi 3, 3, 1
    slwi 0, 0, 1
    add 3, 3, 0
    addi 0, 3, 0xc
    stb 0, 0x57(1)
    .4byte 0x4800000C # b .L_803F1608
L_803F1600:
    addi 0, 24, 0xc
    stb 0, 0x57(1)
L_803F1608:
    lwz 7, 0x210(31)
    addi 4, 25, 0x4220
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    addi 5, 27, 0xf20
    mulhw 0, 30, 7
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    add 0, 0, 7
    lwz 12, 0x18(12)
    srawi 0, 0, 4
    srwi 6, 0, 31
    add 0, 0, 6
    mulli 0, 0, 0x1e
    subf 0, 0, 7
    slwi 0, 0, 2
    lwzx 6, 23, 0
    addi 22, 6, 0x10
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 22
    fmr 2, 1
    addi 7, 1, 0x50
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x4
    .4byte 0x4180FD54 # blt .L_803F13D8
    .4byte 0x48000524 # b .L_803F1BAC
L_803F168C:
    .4byte 0xC0020778 # lfs f0, lbl_80543718@sda21(r0)
    addi 26, 27, 0xec0
    .4byte 0xC3A2077C # lfs f29, lbl_8054371C@sda21(r0)
    addi 30, 1, 0x14
    fmuls 0, 0, 1
    .4byte 0xCBC207A0 # lfd f30, lbl_80543740@sda21(r0)
    .4byte 0xC3E20794 # lfs f31, lbl_80543734@sda21(r0)
    li 24, 0x3
    .4byte 0xC2C20784 # lfs f22, lbl_80543724@sda21(r0)
    li 29, 0x18
    fctiwz 28, 0
    .4byte 0xC2E20788 # lfs f23, lbl_80543728@sda21(r0)
    .4byte 0xC3020780 # lfs f24, lbl_80543720@sda21(r0)
    lis 25, 0x534f
    .4byte 0xC322078C # lfs f25, lbl_8054372C@sda21(r0)
    addi 26, 26, 0x18
L_803F16CC:
    li 0, -0x1
    li 9, 0x0
    stw 0, 0x24(1)
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_803F1740
L_803F16E0:
    clrlwi 0, 9, 24
    addi 7, 9, 0x5
    addi 5, 9, 0x1
    stbx 9, 30, 0
    clrlwi 0, 5, 24
    addi 3, 9, 0x2
    stbx 5, 30, 0
    clrlwi 0, 3, 24
    addi 4, 9, 0x3
    addi 8, 9, 0x4
    stbx 3, 30, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 9, 0x6
    stbx 4, 30, 0
    clrlwi 0, 8, 24
    addi 3, 9, 0x7
    clrlwi 4, 5, 24
    stbx 8, 30, 0
    clrlwi 0, 3, 24
    addi 9, 9, 0x8
    stbx 7, 30, 6
    stbx 5, 30, 4
    stbx 3, 30, 0
L_803F1740:
    clrlwi 0, 9, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803F16E0
    stfd 28, 0x118(1)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    stb 5, 0x3a(1)
    li 4, 0x3
    li 3, 0x2
    lwz 0, 0x11c(1)
    stw 7, 0x24(1)
    stw 6, 0x28(1)
    stw 6, 0x2c(1)
    stb 6, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stb 6, 0x37(1)
    stb 6, 0x38(1)
    stb 6, 0x39(1)
    stw 4, 0x3c(1)
    stb 5, 0x40(1)
    stb 6, 0x41(1)
    stb 6, 0x42(1)
    stw 7, 0x44(1)
    stw 6, 0x48(1)
    stw 3, 0x4c(1)
    stb 6, 0x3a(1)
    stb 0, 0x27(1)
    lwz 0, 0x1ac(31)
    cmpwi 0, 0x1
    .4byte 0x41820114 # beq .L_803F18E0
    .4byte 0x408002AC # bge .L_803F1A7C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_803F17E0
    .4byte 0x480002A0 # b .L_803F1A7C
L_803F17E0:
    srwi 4, 24, 31
    clrlwi 0, 24, 31
    xor 0, 0, 4
    lwz 3, 0xc(31)
    subf 23, 4, 0
    add 0, 4, 24
    srawi 5, 0, 1
    lwz 12, 0x0(3)
    slwi 4, 23, 1
    addi 0, 27, 0xec0
    add 4, 5, 4
    lwz 12, 0x3c(12)
    slwi 4, 4, 3
    addi 22, 4, 0x40
    add 22, 0, 22
    lwz 5, 0x0(22)
    lwz 6, 0x4(22)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    fsubs 21, 1, 0
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x30(3)
    slwi 22, 23, 3
    lwz 3, 0xc(31)
    addi 4, 27, 0xec0
    lwz 0, 0x1ac(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    add 0, 0, 22
    lwz 12, 0x3c(12)
    add 6, 4, 0
    fmadds 27, 21, 1, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 4, 27, 0xec0
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 21, 1, 0
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 22
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lfs 0, 0x30(3)
    fmadds 26, 21, 1, 0
    .4byte 0x480001A0 # b .L_803F1A7C
L_803F18E0:
    cmpwi 24, 0x3
    .4byte 0x418200D0 # beq .L_803F19B4
    lwz 3, 0xc(31)
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    fsubs 21, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x30(3)
    addi 4, 27, 0xec0
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    add 0, 0, 29
    lwz 12, 0x3c(12)
    add 6, 4, 0
    fmadds 27, 21, 1, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 4, 27, 0xec0
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 21, 1, 0
    lwz 12, 0x0(3)
    slwi 0, 0, 5
    add 0, 0, 29
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lfs 0, 0x30(3)
    fmadds 26, 21, 1, 0
    .4byte 0x480000CC # b .L_803F1A7C
L_803F19B4:
    lwz 3, 0xc(31)
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    fsubs 21, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x30(3)
    addi 4, 27, 0xec0
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    lwz 12, 0x0(3)
    slwi 5, 0, 5
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    addi 0, 5, 0x10
    lwz 12, 0x3c(12)
    add 6, 4, 0
    fmadds 27, 21, 1, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    addi 4, 27, 0xec0
    lfs 0, 0x20(3)
    lwz 3, 0xc(31)
    lwz 0, 0x1ac(31)
    fsubs 21, 1, 0
    lwz 12, 0x0(3)
    slwi 5, 0, 5
    addi 0, 5, 0x10
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lfs 0, 0x30(3)
    fmadds 26, 21, 1, 0
L_803F1A7C:
    lwz 4, 0x210(31)
    fsubs 2, 26, 27
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    subi 0, 4, 0xd4
    stw 28, 0x118(1)
    xoris 0, 0, 0x8000
    lwz 3, 0x4(3)
    stw 0, 0x11c(1)
    lhz 0, 0x4(3)
    lfd 0, 0x118(1)
    xoris 0, 0, 0x8000
    stw 28, 0x110(1)
    fsubs 0, 0, 30
    lwz 5, 0x40(26)
    stw 0, 0x114(1)
    lwz 6, 0x44(26)
    fdivs 1, 0, 31
    lfd 0, 0x110(1)
    fmadds 1, 2, 1, 27
    fsubs 0, 0, 30
    fmuls 1, 29, 1
    fdivs 0, 1, 0
    stfs 0, 0x8(1)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0xc(31)
    fsubs 21, 1, 0
    lwz 5, 0x40(26)
    lwz 12, 0x0(3)
    lwz 6, 0x44(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    addi 0, 24, 0xc
    lfs 0, 0x34(3)
    addi 5, 27, 0xf20
    lwz 3, 0x4(4)
    addi 4, 25, 0x4220
    fmadds 0, 21, 24, 0
    stw 28, 0x108(1)
    lhz 6, 0x6(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    xoris 6, 6, 0x8000
    fadds 1, 23, 0
    stw 6, 0x10c(1)
    lfd 0, 0x108(1)
    fmuls 1, 22, 1
    stfs 25, 0x10(1)
    fsubs 0, 0, 30
    stb 0, 0x1b(1)
    fdivs 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x14
    fmr 2, 1
    li 6, 0x10
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
    subic. 24, 24, 0x1
    subi 29, 29, 0x8
    subi 26, 26, 0x8
    .4byte 0x4080FB24 # bge .L_803F16CC
L_803F1BAC:
    psq_l 31, 0x1f8(1), 0, 0
    lfd 31, 0x1f0(1)
    psq_l 30, 0x1e8(1), 0, 0
    lfd 30, 0x1e0(1)
    psq_l 29, 0x1d8(1), 0, 0
    lfd 29, 0x1d0(1)
    psq_l 28, 0x1c8(1), 0, 0
    lfd 28, 0x1c0(1)
    psq_l 27, 0x1b8(1), 0, 0
    lfd 27, 0x1b0(1)
    psq_l 26, 0x1a8(1), 0, 0
    lfd 26, 0x1a0(1)
    psq_l 25, 0x198(1), 0, 0
    lfd 25, 0x190(1)
    psq_l 24, 0x188(1), 0, 0
    lfd 24, 0x180(1)
    psq_l 23, 0x178(1), 0, 0
    lfd 23, 0x170(1)
    psq_l 22, 0x168(1), 0, 0
    lfd 22, 0x160(1)
    psq_l 21, 0x158(1), 0, 0
    lfd 21, 0x150(1)
    lmw 22, 0x128(1)
    lwz 0, 0x204(1)
    mtlr 0
    addi 1, 1, 0x200
    blr

fn_803F1C18:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x58(3)
    bl fn_8043670C
    lwz 3, 0x1c4(31)
    li 0, 0xc
    stw 3, 0x1c8(31)
    stw 0, 0x1c4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803F1C5C:
    lwz 4, 0x1c4(3)
    li 0, 0xb
    stw 4, 0x1c8(3)
    stw 0, 0x1c4(3)
    blr

fn_803F1C70:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stmw 14, 0x38(1)
    lis 4, lbl_80478A60@ha
    mr 15, 3
    addi 0, 4, lbl_80478A60@l
    lis 5, 0x51ec
    stw 0, 0x20(1)
    mr 6, 0
    mr 3, 0
    lis 4, lbl_804B0EE8@ha
    addi 0, 6, 0xb60
    addi 25, 6, 0xea8
    addi 14, 6, 0xa58
    addi 23, 6, 0xa78
    addi 22, 6, 0xa18
    addi 21, 6, 0xa38
    addi 20, 6, 0x9d8
    addi 19, 6, 0x9f8
    lwz 6, 0x20(1)
    addi 17, 3, 0x998
    stw 0, 0x1c(1)
    lis 3, 0x6666
    addi 0, 6, 0xc20
    mr 24, 15
    stw 0, 0x18(1)
    addi 0, 6, 0xce0
    mr 18, 17
    li 16, 0x0
    stw 0, 0x14(1)
    addi 0, 6, 0xda0
    stw 0, 0x10(1)
    subi 0, 5, 0x7ae1
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B0EE8@l
    stw 0, 0x28(1)
    addi 0, 3, 0x6667
    stw 0, 0x2c(1)
L_803F1D14:
    cmpwi 16, 0x1
    .4byte 0x41800060 # blt .L_803F1D78
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 16, 0
    .4byte 0x4081002C # ble .L_803F1D54
    lwz 3, 0x10(15)
    lwz 5, -0x8(25)
    lwz 12, 0x0(3)
    lwz 6, -0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_803F1D78
L_803F1D54:
    lwz 3, 0x10(15)
    lwz 5, -0x8(25)
    lwz 12, 0x0(3)
    lwz 6, -0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F1D78:
    mr 3, 16
    bl fn_80403414
    stw 3, 0x1e0(24)
    mr 3, 16
    bl fn_804033D4
    stw 3, 0x1f0(24)
    mr 3, 16
    bl fn_8040336C
    stw 3, 0x200(24)
    lwz 3, 0x1e0(24)
    bl fn_80403070
    lwz 0, 0x24(1)
    mr 26, 3
    lis 3, 0x5449
    mulhw 0, 0, 26
    addi 3, 3, 0x4d47
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 0, 0, 4
    lwz 4, 0x28(1)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x10(15)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 0, 0x24(1)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    mulhw 0, 0, 26
    srawi 0, 0, 5
    srwi 4, 0, 31
    add 0, 0, 4
    mulli 0, 0, 0x64
    subf 4, 0, 26
    lwz 0, 0x2c(1)
    mulhw 0, 0, 4
    srawi 0, 0, 2
    srwi 4, 0, 31
    add 0, 0, 4
    lwz 4, 0x28(1)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(15)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 0, 0x2c(1)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    mulhw 0, 0, 26
    srawi 0, 0, 2
    srwi 4, 0, 31
    add 0, 0, 4
    lwz 4, 0x28(1)
    mulli 0, 0, 0xa
    subf 0, 0, 26
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x10(15)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x1f0(24)
    bl fn_8040305C
    lwz 29, 0x1c(1)
    subi 31, 3, 0x1
    lwz 28, 0x18(1)
    li 30, 0x0
    lwz 27, 0x14(1)
    lwz 26, 0x10(1)
L_803F1FB4:
    cmpw 30, 31
    .4byte 0x40800098 # bge .L_803F2050
    lwz 3, 0x10(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800012C # b .L_803F2178
L_803F2050:
    .4byte 0x40820098 # bne .L_803F20E8
    lwz 3, 0x10(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000094 # b .L_803F2178
L_803F20E8:
    lwz 3, 0x10(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F2178:
    addi 30, 30, 0x1
    addi 28, 28, 0x8
    cmpwi 30, 0x6
    addi 27, 27, 0x8
    addi 26, 26, 0x8
    addi 29, 29, 0x8
    .4byte 0x4180FE24 # blt .L_803F1FB4
    lwz 3, 0x10(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 16, 16, 0x1
    stb 0, 0xb0(3)
    cmpwi 16, 0x4
    lwz 3, 0x1c(1)
    addi 25, 25, 0x8
    addi 24, 24, 0x4
    addi 14, 14, 0x8
    addi 3, 3, 0x30
    addi 23, 23, 0x8
    stw 3, 0x1c(1)
    addi 22, 22, 0x8
    lwz 3, 0x18(1)
    addi 21, 21, 0x8
    addi 20, 20, 0x8
    addi 19, 19, 0x8
    addi 3, 3, 0x30
    addi 18, 18, 0x8
    stw 3, 0x18(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x30
    stw 3, 0x14(1)
    lwz 3, 0x10(1)
    addi 3, 3, 0x30
    stw 3, 0x10(1)
    .4byte 0x4180FB00 # blt .L_803F1D14
    lwz 3, 0x60(15)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0xC04207B4 # lfs f2, lbl_80543754@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x60(15)
    li 0, 0x0
    mr 14, 15
    mr 19, 15
    sth 0, 0x22(3)
    li 20, 0x0
    lwz 3, 0x20(1)
    addi 16, 3, 0x958
    addi 18, 3, 0x978
L_803F224C:
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 20, 0
    .4byte 0x41810020 # bgt .L_803F2278
    lwz 3, 0x64(14)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0xC04207B8 # lfs f2, lbl_80543758@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x64(14)
    li 0, 0x0
    sth 0, 0x22(3)
L_803F2278:
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 20, 0
    .4byte 0x41810010 # bgt .L_803F2294
    li 0, 0x3
    stw 0, 0x1b0(14)
    .4byte 0x4800000C # b .L_803F229C
L_803F2294:
    li 0, 0x4
    stw 0, 0x1b0(14)
L_803F229C:
    li 0, 0x1e
    stw 0, 0x1d0(14)
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 20, 0
    .4byte 0x41810164 # bgt .L_803F2414
    lwz 0, 0x1b0(14)
    cmpwi 0, 0x3
    .4byte 0x40800074 # bge .L_803F2330
    lwz 3, 0x10(15)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000154 # b .L_803F2480
L_803F2330:
    .4byte 0x40820074 # bne .L_803F23A4
    lwz 3, 0x10(15)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000E0 # b .L_803F2480
L_803F23A4:
    lwz 3, 0x10(15)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000070 # b .L_803F2480
L_803F2414:
    lwz 3, 0x10(15)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F2480:
    lwz 21, 0x1b0(14)
    cmpwi 21, 0x3
    .4byte 0x41810080 # bgt .L_803F2508
    lwz 3, 0x10(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    slwi 0, 21, 1
    .4byte 0x38820770 # li r4, lbl_80543710@sda21
    lhax 4, 4, 0
    lis 0, 0x4330
    lwz 12, 0x0(3)
    fmr 1, 31
    xoris 4, 4, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    stw 4, 0xc(1)
    lwz 12, 0x10(12)
    lfd 0, 0x8(1)
    fsubs 2, 0, 2
    mtctr 12
    bctrl
L_803F2508:
    li 0, 0x0
    addi 20, 20, 0x1
    sth 0, 0x240(19)
    cmpwi 20, 0x4
    addi 17, 17, 0x8
    addi 19, 19, 0x2
    stw 0, 0x1d0(14)
    addi 14, 14, 0x4
    addi 16, 16, 0x8
    addi 18, 18, 0x8
    .4byte 0x4180FD1C # blt .L_803F224C
    lwz 3, 0x74(15)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0xC04207B4 # lfs f2, lbl_80543754@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x74(15)
    li 4, 0x0
    li 0, 0xa
    sth 4, 0x22(3)
    sth 4, 0x24c(15)
    lwz 3, 0x1c4(15)
    stw 3, 0x1c8(15)
    stw 0, 0x1c4(15)
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    lmw 14, 0x38(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803F2580:
    li 4, 0x0
    li 0, 0x5
    sth 4, 0x240(3)
    stw 0, 0x1d0(3)
    lwz 0, 0x1a8(3)
    cmpwi 0, 0x0
    .4byte 0x408200B4 # bne .L_803F264C
    li 0, 0x4
    li 5, 0x0
    mtctr 0
L_803F25A8:
    lwz 6, 0x1ac(3)
    addi 0, 6, 0x2
    cmpw 5, 0
    .4byte 0x40800054 # bge .L_803F2608
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    li 8, 0x1
    slw 6, 8, 5
    li 0, 0x3
    lbz 9, 0x82(10)
    clrlwi 7, 6, 24
    slw 6, 0, 4
    slw 0, 8, 4
    or 7, 9, 7
    stb 7, 0x82(10)
    clrlwi 6, 6, 24
    clrlwi 0, 0, 24
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lbz 7, 0x83(8)
    andc 6, 7, 6
    stb 6, 0x83(8)
    lbz 6, 0x83(8)
    or 0, 6, 0
    stb 0, 0x83(8)
    .4byte 0x4800003C # b .L_803F2640
L_803F2608:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 6, 0, 5
    lbz 7, 0x82(8)
    clrlwi 6, 6, 24
    li 0, 0x3
    andc 6, 7, 6
    stb 6, 0x82(8)
    slw 0, 0, 4
    clrlwi 0, 0, 24
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lbz 6, 0x83(7)
    andc 0, 6, 0
    stb 0, 0x83(7)
L_803F2640:
    addi 4, 4, 0x2
    addi 5, 5, 0x1
    .4byte 0x4200FF60 # bdnz .L_803F25A8
L_803F264C:
    lwz 4, 0x1c4(3)
    li 0, 0x9
    stw 4, 0x1c8(3)
    stw 0, 0x1c4(3)
    blr

fn_803F2660:
    li 4, 0x0
    li 0, 0x8
    sth 4, 0x240(3)
    lwz 4, 0x1c4(3)
    stw 4, 0x1c8(3)
    stw 0, 0x1c4(3)
    blr

fn_803F267C:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, 0x616e
    lis 5, lbl_80478A60@ha
    stw 0, 0x24(1)
    addi 6, 4, 0x3031
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    addi 30, 5, lbl_80478A60@l
    li 5, 0x5468
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 3, 0xc(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 0, 3
    lwz 3, 0xc(31)
    lis 4, 0x7461
    li 5, 0x5473
    lwz 12, 0x0(3)
    mr 29, 0
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 0, 3
    lwz 3, 0xc(31)
    lis 5, 0x6c65
    lis 4, 0x54
    lwz 12, 0x0(3)
    mr 28, 0
    addi 6, 5, 0x3031
    addi 5, 4, 0x7275
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 0, 3
    mr 3, 28
    mr 28, 0
    li 4, 0x11b
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    mr 3, 29
    li 4, 0xac
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    mr 3, 28
    li 4, 0xf7
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x1ac(31)
    cmpwi 0, 0x0
    .4byte 0x40820090 # bne .L_803F280C
    lis 3, 0x5449
    addi 4, 30, 0xf30
    addi 3, 3, 0x4d47
    bl fn_804031C4
    mr 0, 3
    lwz 3, 0xc(31)
    lis 4, 0x6f70
    li 5, 0x506e
    lwz 12, 0x0(3)
    mr 28, 0
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x506e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x48000120 # b .L_803F2928
L_803F280C:
    cmpwi 0, 0x1
    .4byte 0x40820090 # bne .L_803F28A0
    lis 3, 0x5449
    addi 4, 30, 0xf44
    addi 3, 3, 0x4d47
    bl fn_804031C4
    mr 0, 3
    lwz 3, 0xc(31)
    lis 4, 0x6f70
    li 5, 0x506e
    lwz 12, 0x0(3)
    mr 28, 0
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x506e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x4800008C # b .L_803F2928
L_803F28A0:
    lis 3, 0x5449
    addi 4, 30, 0xf58
    addi 3, 3, 0x4d47
    bl fn_804031C4
    mr 0, 3
    lwz 3, 0xc(31)
    lis 4, 0x6f70
    li 5, 0x506e
    lwz 12, 0x0(3)
    mr 28, 0
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x506e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_803F2928:
    .4byte 0xC04207B4 # lfs f2, lbl_80543754@sda21(r0)
    lis 4, 0x6262
    lis 3, 0x506d
    .4byte 0xC02207BC # lfs f1, lbl_8054375C@sda21(r0)
    stfs 2, 0x164(31)
    addi 6, 4, 0x3037
    .4byte 0xC00207C0 # lfs f0, lbl_80543760@sda21(r0)
    addi 5, 3, 0x6261
    stfs 2, 0x168(31)
    stfs 1, 0x184(31)
    stfs 1, 0x188(31)
    stfs 1, 0x18c(31)
    stfs 0, 0x198(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x160(31)
    lfs 0, 0x164(31)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x15c(31)
    mtctr 12
    bctrl
    lwz 3, 0x74(31)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 2, 0x168(31)
    bl fn_80402E08
    lwz 3, 0xc(31)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x16c(31)
    lfs 0, 0x184(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x178(31)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6e62
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x170(31)
    lfs 0, 0x188(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x17c(31)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x174(31)
    lfs 0, 0x18c(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x180(31)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6b6b
    lis 4, 0x506c
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6962
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x190(31)
    lfs 0, 0x198(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x194(31)
    mtctr 12
    bctrl
    li 3, 0x0
    li 0, 0x7
    stw 3, 0x1d0(31)
    sth 3, 0x240(31)
    stw 3, 0x210(31)
    lwz 3, 0x1c4(31)
    stw 3, 0x1c8(31)
    stw 0, 0x1c4(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803F2AEC:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0xc4
    li 6, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 5, 0x1ac(31)
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    addi 0, 5, 0x2
    clrlwi 5, 0, 24
    bl fn_80431A9C
    li 3, 0x0
    li 0, 0x6
    stb 3, 0x25c(31)
    lwz 3, 0x1c4(31)
    stw 3, 0x1c8(31)
    stw 0, 0x1c4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803F2B48:
    lwz 4, 0x1c4(3)
    li 0, 0x5
    stw 4, 0x1c8(3)
    stw 0, 0x1c4(3)
    blr

fn_803F2B5C:
    li 4, 0x0
    li 0, 0x4
    sth 4, 0x240(3)
    lwz 4, 0x1c4(3)
    stw 4, 0x1c8(3)
    stw 0, 0x1c4(3)
    blr

fn_803F2B78:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 19, 0xc(1)
    mr 22, 3
    lis 3, lbl_80478A60@ha
    addi 31, 3, lbl_80478A60@l
    lwz 0, 0x1ac(22)
    cmpwi 0, 0x0
    .4byte 0x40820090 # bne .L_803F2C2C
    lis 3, 0x5449
    addi 4, 31, 0xf30
    addi 3, 3, 0x4d47
    bl fn_804031C4
    mr 0, 3
    lwz 3, 0x8(22)
    lis 4, 0x746e
    li 5, 0x50
    lwz 12, 0x0(3)
    mr 20, 0
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 20
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(22)
    lis 4, 0x746e
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 20
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x48000120 # b .L_803F2D48
L_803F2C2C:
    cmpwi 0, 0x1
    .4byte 0x40820090 # bne .L_803F2CC0
    lis 3, 0x5449
    addi 4, 31, 0xf44
    addi 3, 3, 0x4d47
    bl fn_804031C4
    mr 0, 3
    lwz 3, 0x8(22)
    lis 4, 0x746e
    li 5, 0x50
    lwz 12, 0x0(3)
    mr 20, 0
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 20
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(22)
    lis 4, 0x746e
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 20
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x4800008C # b .L_803F2D48
L_803F2CC0:
    lis 3, 0x5449
    addi 4, 31, 0xf58
    addi 3, 3, 0x4d47
    bl fn_804031C4
    mr 0, 3
    lwz 3, 0x8(22)
    lis 4, 0x746e
    li 5, 0x50
    lwz 12, 0x0(3)
    mr 20, 0
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 20
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(22)
    lis 4, 0x746e
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 20
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_803F2D48:
    lwz 3, 0x8(22)
    lis 4, 0x6b67
    addi 6, 4, 0x3031
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 0, 3
    lwz 3, 0x8(22)
    lis 4, 0x6b67
    li 5, 0x5474
    lwz 12, 0x0(3)
    mr 20, 0
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 0, 3
    mr 3, 20
    mr 20, 0
    li 4, 0x3f
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    mr 3, 20
    li 4, 0x3f
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0xC00207C4 # lfs f0, lbl_80543764@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0x9c(22)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6461
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x98(22)
    lfs 0, 0x9c(22)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x94(22)
    mtctr 12
    bctrl
    .4byte 0xC00207C8 # lfs f0, lbl_80543768@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0xa8(22)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6461
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xa4(22)
    lfs 0, 0xa8(22)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xa0(22)
    mtctr 12
    bctrl
    .4byte 0xC00207B4 # lfs f0, lbl_80543754@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0xb4(22)
    addi 6, 4, 0x3036
    addi 5, 3, 0x6461
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xb0(22)
    lfs 0, 0xb4(22)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xac(22)
    mtctr 12
    bctrl
    .4byte 0xC00207B4 # lfs f0, lbl_80543754@sda21(r0)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    stfs 0, 0xb8(22)
    lwz 3, 0x74(22)
    lfs 2, 0xb8(22)
    bl fn_80402E08
    .4byte 0xC00207CC # lfs f0, lbl_8054376C@sda21(r0)
    lis 4, 0x626b
    lis 3, 0x5070
    stfs 0, 0xdc(22)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6c6c
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xcc(22)
    lfs 0, 0xdc(22)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xbc(22)
    mtctr 12
    bctrl
    .4byte 0xC00207CC # lfs f0, lbl_8054376C@sda21(r0)
    lis 4, 0x626b
    lis 3, 0x5070
    stfs 0, 0xe0(22)
    addi 6, 4, 0x3132
    addi 5, 3, 0x6c6c
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd0(22)
    lfs 0, 0xe0(22)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc0(22)
    mtctr 12
    bctrl
    .4byte 0xC00207CC # lfs f0, lbl_8054376C@sda21(r0)
    lis 4, 0x626b
    lis 3, 0x5070
    stfs 0, 0xe4(22)
    addi 6, 4, 0x3232
    addi 5, 3, 0x6c6c
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd4(22)
    lfs 0, 0xe4(22)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc4(22)
    mtctr 12
    bctrl
    .4byte 0xC00207CC # lfs f0, lbl_8054376C@sda21(r0)
    lis 4, 0x626b
    lis 3, 0x5070
    stfs 0, 0xe8(22)
    addi 6, 4, 0x3332
    addi 5, 3, 0x6c6c
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd8(22)
    lfs 0, 0xe8(22)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc8(22)
    mtctr 12
    bctrl
    mr 24, 22
    addi 30, 31, 0x7f8
    addi 29, 31, 0x818
    addi 28, 31, 0x838
    addi 27, 31, 0x858
    addi 26, 31, 0x898
    addi 25, 31, 0x878
    addi 31, 31, 0x918
    li 23, 0x0
L_803F3020:
    lwz 3, 0x1ac(22)
    addi 0, 3, 0x1
    cmpw 23, 0
    .4byte 0x41810118 # bgt .L_803F3144
    lwz 3, 0x8(22)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 21, 0x1
    addi 20, 26, 0x10
    stb 21, 0xb0(3)
    li 19, 0x2
L_803F30C8:
    lwz 3, 0x8(22)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 19, 19, 0x1
    stb 21, 0xb0(3)
    cmpwi 19, 0x4
    addi 20, 20, 0x8
    .4byte 0x4180FFD4 # blt .L_803F30C8
    lwz 3, 0x8(22)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x38(24)
    lha 0, 0x6(3)
    stw 0, 0x220(24)
    lwz 3, 0x48(24)
    lha 0, 0x6(3)
    stw 0, 0x230(24)
    .4byte 0x48000108 # b .L_803F3248
L_803F3144:
    lwz 3, 0x8(22)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(29)
    stb 0, 0xb0(3)
    lwz 6, 0x4(29)
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x8(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 21, 0x0
    addi 20, 26, 0x10
    stb 21, 0xb0(3)
    li 19, 0x2
L_803F31DC:
    lwz 3, 0x8(22)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 19, 19, 0x1
    stb 21, 0xb0(3)
    cmpwi 19, 0x4
    addi 20, 20, 0x8
    .4byte 0x4180FFD4 # blt .L_803F31DC
    lwz 3, 0x8(22)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x80
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x220(24)
    stw 0, 0x230(24)
L_803F3248:
    lwz 3, 0x8(22)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    li 4, 0x0
    cmpwi 23, 0x4
    stb 4, 0xb0(3)
    addi 30, 30, 0x8
    addi 29, 29, 0x8
    addi 28, 28, 0x8
    addi 27, 27, 0x8
    addi 26, 26, 0x20
    addi 25, 25, 0x8
    addi 24, 24, 0x4
    addi 31, 31, 0x8
    .4byte 0x4180FD8C # blt .L_803F3020
    sth 4, 0x240(22)
    li 3, -0x1
    li 0, 0x3
    sth 4, 0x248(22)
    sth 4, 0x24a(22)
    stb 4, 0x25b(22)
    sth 3, 0x24e(22)
    sth 3, 0x250(22)
    stw 4, 0x210(22)
    stw 4, 0x214(22)
    stw 4, 0x218(22)
    stw 4, 0x21c(22)
    lwz 3, 0x1c4(22)
    stw 3, 0x1c8(22)
    stw 0, 0x1c4(22)
    lmw 19, 0xc(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803F32E8:
    li 5, 0x0
    li 4, 0x5
    stw 5, 0x210(3)
    li 0, 0x2
    sth 5, 0x240(3)
    stw 4, 0x1d0(3)
    lwz 4, 0x1c4(3)
    stw 4, 0x1c8(3)
    stw 0, 0x1c4(3)
    blr

fn_803F3310:
    lwz 4, 0x1c4(3)
    li 0, 0x1
    stw 4, 0x1c8(3)
    stw 0, 0x1c4(3)
    blr

fn_803F3324:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x6262
    .4byte 0xC00207D0 # lfs f0, lbl_80543770@sda21(r0)
    stw 0, 0x14(1)
    addi 6, 4, 0x3037
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, 0x506d
    stfs 0, 0x110(31)
    addi 5, 3, 0x6261
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x10c(31)
    lfs 0, 0x110(31)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x108(31)
    mtctr 12
    bctrl
    .4byte 0xC00207C8 # lfs f0, lbl_80543768@sda21(r0)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    stfs 0, 0x114(31)
    lwz 3, 0x74(31)
    lfs 2, 0x114(31)
    bl fn_80402E08
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    lis 4, 0x7062
    lis 3, 0x50
    stfs 0, 0x130(31)
    addi 6, 4, 0x3038
    addi 5, 3, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x118(31)
    lfs 0, 0x130(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x124(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    lis 4, 0x7062
    lis 3, 0x50
    stfs 0, 0x134(31)
    addi 6, 4, 0x3132
    addi 5, 3, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x11c(31)
    lfs 0, 0x134(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x128(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    lis 4, 0x7062
    lis 3, 0x50
    stfs 0, 0x138(31)
    addi 6, 4, 0x3136
    addi 5, 3, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x120(31)
    lfs 0, 0x138(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x12c(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D8 # lfs f0, lbl_80543778@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0x144(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x13c(31)
    lfs 0, 0x144(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x140(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D8 # lfs f0, lbl_80543778@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0x158(31)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x148(31)
    lfs 0, 0x158(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x14c(31)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x150(31)
    lfs 0, 0x158(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x154(31)
    mtctr 12
    bctrl
    li 3, 0x0
    stw 3, 0x210(31)
    stw 3, 0x1d0(31)
    sth 3, 0x240(31)
    lwz 0, 0x1c4(31)
    stw 0, 0x1c8(31)
    stw 3, 0x1c4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803F358C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x58(3)
    bl fn_80436668
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803F35B0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 25, 0x34(1)
    lis 4, lbl_80478A60@ha
    mr 25, 3
    addi 3, 4, lbl_80478A60@l
    li 26, 0x0
    mr 31, 25
    mr 27, 25
    addi 30, 3, 0x978
    addi 29, 3, 0x998
    addi 28, 3, 0x9b8
L_803F35F4:
    lwz 3, 0x1d0(31)
    cmpwi 3, 0x1e
    .4byte 0x40800030 # bge .L_803F362C
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207DC # lfs f0, lbl_8054377C@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 31, 1, 0
    .4byte 0x48000038 # b .L_803F3660
L_803F362C:
    subi 3, 3, 0x1e
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207DC # lfs f0, lbl_8054377C@sda21(r0)
    .4byte 0xC0620790 # lfs f3, lbl_80543730@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 31, 3, 0
L_803F3660:
    lwz 3, 0x1ac(25)
    addi 0, 3, 0x1
    cmpw 26, 0
    .4byte 0x4181010C # bgt .L_803F3778
    lwz 0, 0x1b0(31)
    cmpwi 0, 0x4
    .4byte 0x40800044 # bge .L_803F36BC
    lwz 3, 0x10(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC00207E0 # lfs f0, lbl_80543780@sda21(r0)
    lwz 12, 0x0(3)
    fmuls 0, 0, 31
    lwz 12, 0x24(12)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_803F36BC:
    lwz 0, 0x1b0(31)
    cmpwi 0, 0x3
    .4byte 0x408200B4 # bne .L_803F3778
    lwz 3, 0x10(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x25a(25)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0xc(1)
    .4byte 0xC8220798 # lfd f1, lbl_80543738@sda21(r0)
    stw 0, 0x8(1)
    lwz 12, 0x24(12)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(25)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x25a(25)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8220798 # lfd f1, lbl_80543738@sda21(r0)
    stw 0, 0x18(1)
    lwz 12, 0x24(12)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
L_803F3778:
    lwz 0, 0x1c4(25)
    cmpwi 0, 0xa
    .4byte 0x418200C0 # beq .L_803F3840
    lha 3, 0x240(27)
    cmpwi 3, 0x5
    subfic 0, 3, 0xa
    .4byte 0x40800008 # bge .L_803F3798
    mr 0, 3
L_803F3798:
    mullw 4, 0, 0
    lis 0, 0x4330
    lwz 3, 0x10(25)
    stw 0, 0x20(1)
    lwz 12, 0x0(3)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    xoris 0, 4, 0x8000
    .4byte 0xC06207E4 # lfs f3, lbl_80543784@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC00207E8 # lfs f0, lbl_80543788@sda21(r0)
    lfd 1, 0x20(1)
    lwz 12, 0x3c(12)
    fsubs 1, 1, 2
    lwz 5, 0x0(29)
    lwz 6, 0x4(29)
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    lfs 0, 0x1a0(25)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    lwz 0, 0x1b0(31)
    cmpwi 0, 0x3
    .4byte 0x41800014 # blt .L_803F3840
    fmr 2, 30
    lwz 3, 0x64(31)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    bl fn_80402E08
L_803F3840:
    addi 26, 26, 0x1
    addi 30, 30, 0x8
    cmpwi 26, 0x4
    addi 29, 29, 0x8
    addi 28, 28, 0x8
    addi 27, 27, 0x2
    addi 31, 31, 0x4
    .4byte 0x4180FD98 # blt .L_803F35F4
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x10(25)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 25, 0x34(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803F38A4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 4, 0x1c4(3)
    cmpwi 4, 0x9
    .4byte 0x41820094 # beq .L_803F396C
    lwz 3, 0x1d0(31)
    cmpwi 3, 0x1e
    .4byte 0x40800030 # bge .L_803F3914
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x18(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207DC # lfs f0, lbl_8054377C@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 2, 1, 0
    .4byte 0x48000038 # b .L_803F3948
L_803F3914:
    subi 3, 3, 0x1e
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x18(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207DC # lfs f0, lbl_8054377C@sda21(r0)
    .4byte 0xC0620790 # lfs f3, lbl_80543730@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 2, 3, 0
L_803F3948:
    lbz 3, 0x259(31)
    lis 0, 0x4330
    stw 0, 0x18(1)
    .4byte 0xC8220798 # lfd f1, lbl_80543738@sda21(r0)
    stw 3, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 31, 2, 0
    .4byte 0x4800008C # b .L_803F39F4
L_803F396C:
    lwz 0, 0x1cc(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_803F3980
    .4byte 0xC3E2078C # lfs f31, lbl_8054372C@sda21(r0)
    .4byte 0x48000078 # b .L_803F39F4
L_803F3980:
    lwz 3, 0x1d0(31)
    cmpwi 3, 0xf
    .4byte 0x40800030 # bge .L_803F39B8
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x18(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207EC # lfs f0, lbl_8054378C@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 1, 1, 0
    .4byte 0x48000038 # b .L_803F39EC
L_803F39B8:
    subi 3, 3, 0xf
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x18(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207EC # lfs f0, lbl_8054378C@sda21(r0)
    .4byte 0xC0620790 # lfs f3, lbl_80543730@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x1c(1)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 1, 3, 0
L_803F39EC:
    .4byte 0xC00207F0 # lfs f0, lbl_80543790@sda21(r0)
    fmuls 31, 0, 1
L_803F39F4:
    cmpwi 4, 0x8
    .4byte 0x41820024 # beq .L_803F3A1C
    cmpwi 4, 0x9
    .4byte 0x40820034 # bne .L_803F3A34
    lwz 0, 0x1cc(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_803F3A34
    lha 0, 0x240(31)
    cmpwi 0, 0xa
    .4byte 0x4181001C # bgt .L_803F3A34
L_803F3A1C:
    lha 0, 0x240(31)
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_803F3A2C
    .4byte 0x48000010 # b .L_803F3A38
L_803F3A2C:
    subfic 0, 0, 0xa
    .4byte 0x48000008 # b .L_803F3A38
L_803F3A34:
    li 0, 0x0
L_803F3A38:
    mullw 3, 0, 0
    lis 0, 0x4330
    lwz 4, 0x1a8(31)
    stw 0, 0x18(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    cmpwi 4, 0x0
    xoris 0, 3, 0x8000
    .4byte 0xC06207E4 # lfs f3, lbl_80543784@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC00207E8 # lfs f0, lbl_80543788@sda21(r0)
    lfd 1, 0x18(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 30, 1, 0
    .4byte 0x408201A8 # bne .L_803F3C18
    lwz 3, 0xc(31)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x6162
    lwz 3, 0xc(31)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 0, 0xfc(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6e62
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x6e62
    lwz 3, 0xc(31)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 2, 0x100(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 4, 0x7562
    lwz 3, 0xc(31)
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 2, 0x104(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x726f
    lwz 3, 0xc(31)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 0, 0xf8(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    .4byte 0x4800040C # b .L_803F4020
L_803F3C18:
    cmpwi 4, 0x1
    .4byte 0x40820208 # bne .L_803F3E24
    lwz 3, 0xc(31)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x6162
    lwz 3, 0xc(31)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 2, 0xfc(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6e62
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x6e62
    lwz 3, 0xc(31)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 0, 0x100(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 4, 0x7562
    lwz 3, 0xc(31)
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 2, 0x104(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x4(3)
    lis 5, 0x6e62
    lwz 3, 0xc(31)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x726f
    lfs 0, 0xf8(31)
    lis 4, 0x5073
    lwz 3, 0xc(31)
    addi 6, 5, 0x3032
    fadds 0, 0, 1
    addi 5, 4, 0x6375
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    fsubs 30, 0, 29
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x726f
    lwz 3, 0xc(31)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000200 # b .L_803F4020
L_803F3E24:
    lwz 3, 0xc(31)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x6162
    lwz 3, 0xc(31)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 2, 0xfc(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6e62
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x6e62
    lwz 3, 0xc(31)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 2, 0x100(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 4, 0x7562
    lwz 3, 0xc(31)
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 0, 0x104(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x4(3)
    lis 4, 0x7562
    lwz 3, 0xc(31)
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x726f
    lfs 0, 0xf8(31)
    lis 4, 0x5073
    lwz 3, 0xc(31)
    addi 6, 5, 0x3032
    fadds 0, 0, 1
    addi 5, 4, 0x6375
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    fsubs 29, 0, 29
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lis 5, 0x726f
    lwz 3, 0xc(31)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 29
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803F4020:
    lwz 3, 0xc(31)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0xc(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0xC042078C # lfs f2, lbl_8054372C@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC022077C # lfs f1, lbl_8054371C@sda21(r0)
    li 5, 0x1
    .4byte 0xC0020784 # lfs f0, lbl_80543724@sda21(r0)
    stfs 2, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_8013B414
    mr 3, 31
    bl fn_803F0A54
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 0, 0x64(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803F4120:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stfd 31, 0x140(1)
    psq_st 31, 0x148(1), 0, 0
    stfd 30, 0x130(1)
    psq_st 30, 0x138(1), 0, 0
    stfd 29, 0x120(1)
    psq_st 29, 0x128(1), 0, 0
    stfd 28, 0x110(1)
    psq_st 28, 0x118(1), 0, 0
    stfd 27, 0x100(1)
    psq_st 27, 0x108(1), 0, 0
    stfd 26, 0xf0(1)
    psq_st 26, 0xf8(1), 0, 0
    stfd 25, 0xe0(1)
    psq_st 25, 0xe8(1), 0, 0
    stfd 24, 0xd0(1)
    psq_st 24, 0xd8(1), 0, 0
    stmw 16, 0x90(1)
    lis 4, lbl_80478A60@ha
    mr 30, 3
    addi 31, 4, lbl_80478A60@l
    li 23, 0x0
    mr 17, 30
    addi 18, 31, 0x858
    addi 19, 31, 0x7f8
    addi 20, 31, 0x818
    addi 21, 31, 0x838
L_803F4194:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    addi 0, 23, 0x4
    li 4, 0x1
    slw 22, 4, 0
    lbz 3, 0x82(3)
    clrlwi 0, 22, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820218 # beq .L_803F43D4
    lwz 0, 0x210(17)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_803F41E4
    lbz 3, 0x25b(30)
    slw 0, 4, 23
    li 16, 0x0
    andc 0, 3, 0
    stb 0, 0x25b(30)
    .4byte 0x4800011C # b .L_803F42FC
L_803F41E4:
    cmpwi 0, 0x24
    .4byte 0x40800044 # bge .L_803F422C
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x60(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207F4 # lfs f0, lbl_80543794@sda21(r0)
    .4byte 0xC06207B8 # lfs f3, lbl_80543758@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x64(1)
    lfd 1, 0x60(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 16, 0x6c(1)
    .4byte 0x480000D4 # b .L_803F42FC
L_803F422C:
    lha 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_803F4248
    lbz 3, 0x25b(30)
    slw 0, 4, 23
    or 0, 3, 0
    stb 0, 0x25b(30)
L_803F4248:
    li 0, 0x1
    lbz 3, 0x25b(30)
    slw 0, 0, 23
    and. 0, 3, 0
    .4byte 0x418200A0 # beq .L_803F42F8
    lha 3, 0x248(30)
    cmpwi 3, 0x32
    .4byte 0x40800048 # bge .L_803F42AC
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x68(1)
    .4byte 0xC86207A0 # lfd f3, lbl_80543740@sda21(r0)
    .4byte 0xC02207FC # lfs f1, lbl_8054379C@sda21(r0)
    .4byte 0xC08207F8 # lfs f4, lbl_80543798@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC00207B8 # lfs f0, lbl_80543758@sda21(r0)
    stw 0, 0x6c(1)
    lfd 2, 0x68(1)
    fsubs 2, 2, 3
    fdivs 1, 2, 1
    fmadds 0, 4, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 16, 0x64(1)
    .4byte 0x48000054 # b .L_803F42FC
L_803F42AC:
    subi 3, 3, 0x32
    lis 0, 0x4330
    subfic 3, 3, 0x32
    stw 0, 0x68(1)
    mullw 0, 3, 3
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC04207FC # lfs f2, lbl_8054379C@sda21(r0)
    .4byte 0xC02207F8 # lfs f1, lbl_80543798@sda21(r0)
    .4byte 0xC00207B8 # lfs f0, lbl_80543758@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 3, 0x68(1)
    fsubs 3, 3, 4
    fdivs 2, 3, 2
    fmadds 0, 1, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 16, 0x64(1)
    .4byte 0x48000008 # b .L_803F42FC
L_803F42F8:
    li 16, 0x96
L_803F42FC:
    lwz 3, 0x8(30)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 16
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lbz 3, 0x25b(30)
    and. 0, 3, 22
    .4byte 0x41820334 # beq .L_803F4668
    andc 0, 3, 22
    lwz 5, 0x0(19)
    stb 0, 0x25b(30)
    lwz 6, 0x4(19)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x253(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x254(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x255(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000298 # b .L_803F4668
L_803F43D4:
    lwz 3, 0x8(30)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    mr 3, 23
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x418201A8 # beq .L_803F45C4
    lbz 3, 0x25b(30)
    and. 0, 3, 22
    .4byte 0x40820018 # bne .L_803F4440
    lha 0, 0x24a(30)
    cmpwi 0, 0x32
    .4byte 0x4082000C # bne .L_803F4440
    or 0, 3, 22
    stb 0, 0x25b(30)
L_803F4440:
    lbz 0, 0x25b(30)
    and. 0, 0, 22
    .4byte 0x41820220 # beq .L_803F4668
    lha 3, 0x24a(30)
    cmpwi 3, 0x32
    .4byte 0x40800030 # bge .L_803F4484
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x68(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207FC # lfs f0, lbl_8054379C@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x6c(1)
    lfd 1, 0x68(1)
    fsubs 1, 1, 2
    fdivs 24, 1, 0
    .4byte 0x48000038 # b .L_803F44B8
L_803F4484:
    subi 3, 3, 0x32
    lis 0, 0x4330
    subfic 3, 3, 0x32
    stw 0, 0x68(1)
    mullw 0, 3, 3
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207FC # lfs f0, lbl_8054379C@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 1, 0x68(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmr 24, 0
L_803F44B8:
    lwz 3, 0x8(30)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x253(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x6c(1)
    .4byte 0xC8220798 # lfd f1, lbl_80543738@sda21(r0)
    stw 0, 0x68(1)
    lwz 12, 0x24(12)
    lfd 0, 0x68(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 24
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 4, 0x64(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x254(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x74(1)
    .4byte 0xC8220798 # lfd f1, lbl_80543738@sda21(r0)
    stw 0, 0x70(1)
    lwz 12, 0x24(12)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 24
    fctiwz 0, 0
    stfd 0, 0x78(1)
    lwz 4, 0x7c(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x255(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x84(1)
    .4byte 0xC8220798 # lfd f1, lbl_80543738@sda21(r0)
    stw 0, 0x80(1)
    lwz 12, 0x24(12)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 24
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 4, 0x8c(1)
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_803F4668
L_803F45C4:
    lbz 3, 0x25b(30)
    and. 0, 3, 22
    .4byte 0x4182009C # beq .L_803F4668
    andc 0, 3, 22
    lwz 5, 0x0(19)
    stb 0, 0x25b(30)
    lwz 6, 0x4(19)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x253(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x254(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0x255(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_803F4668:
    addi 23, 23, 0x1
    addi 18, 18, 0x8
    cmpwi 23, 0x4
    addi 19, 19, 0x8
    addi 20, 20, 0x8
    addi 21, 21, 0x8
    addi 17, 17, 0x4
    .4byte 0x4180FB10 # blt .L_803F4194
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(30)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x1c4(30)
    cmpwi 0, 0x3
    .4byte 0x4182018C # beq .L_803F4834
    lwz 0, 0x220(30)
    cmpwi 0, 0x0
    .4byte 0x408200BC # bne .L_803F4770
    lwz 0, 0x224(30)
    cmpwi 0, 0x0
    .4byte 0x408200B0 # bne .L_803F4770
    lwz 0, 0x228(30)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_803F4770
    lwz 0, 0x22c(30)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_803F4770
    lwz 3, 0x1ac(30)
    li 4, 0x1
    lha 8, 0x24e(30)
    addic. 9, 3, 0x1
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    mr 7, 8
    addi 0, 9, 0x1
    mtctr 0
    .4byte 0x4180004C # blt .L_803F4748
L_803F4700:
    addi 7, 7, 0x1
    extsh 0, 7
    cmpw 0, 9
    .4byte 0x40810008 # ble .L_803F4714
    li 7, 0x0
L_803F4714:
    extsh 3, 7
    lbz 5, 0x82(6)
    addi 0, 3, 0x4
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 5, 0
    .4byte 0x40820008 # bne .L_803F4734
    .4byte 0x4800001C # b .L_803F474C
L_803F4734:
    cmpw 3, 8
    .4byte 0x4082000C # bne .L_803F4744
    li 7, -0x1
    .4byte 0x4800000C # b .L_803F474C
L_803F4744:
    .4byte 0x4200FFBC # bdnz .L_803F4700
L_803F4748:
    li 7, -0x1
L_803F474C:
    sth 7, 0x24e(30)
    lha 0, 0x24e(30)
    cmpwi 0, -0x1
    .4byte 0x41820018 # beq .L_803F4770
    slwi 0, 0, 2
    add 4, 30, 0
    lwz 3, 0x220(4)
    addi 0, 3, 0x1
    stw 0, 0x220(4)
L_803F4770:
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x408200BC # bne .L_803F4834
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x408200B0 # bne .L_803F4834
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_803F4834
    lwz 0, 0x23c(30)
    cmpwi 0, 0x0
    .4byte 0x40820098 # bne .L_803F4834
    lwz 3, 0x1ac(30)
    li 4, 0x1
    lha 8, 0x250(30)
    addic. 9, 3, 0x1
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    mr 7, 8
    addi 0, 9, 0x1
    mtctr 0
    .4byte 0x4180004C # blt .L_803F480C
L_803F47C4:
    addi 7, 7, 0x1
    extsh 0, 7
    cmpw 0, 9
    .4byte 0x40810008 # ble .L_803F47D8
    li 7, 0x0
L_803F47D8:
    extsh 3, 7
    lbz 5, 0x82(6)
    addi 0, 3, 0x4
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 5, 0
    .4byte 0x40820008 # bne .L_803F47F8
    .4byte 0x4800001C # b .L_803F4810
L_803F47F8:
    cmpw 3, 8
    .4byte 0x4082000C # bne .L_803F4808
    li 7, -0x1
    .4byte 0x4800000C # b .L_803F4810
L_803F4808:
    .4byte 0x4200FFBC # bdnz .L_803F47C4
L_803F480C:
    li 7, -0x1
L_803F4810:
    sth 7, 0x250(30)
    lha 0, 0x250(30)
    cmpwi 0, -0x1
    .4byte 0x41820018 # beq .L_803F4834
    slwi 0, 0, 2
    add 4, 30, 0
    lwz 3, 0x230(4)
    addi 0, 3, 0x1
    stw 0, 0x230(4)
L_803F4834:
    .4byte 0xC3620780 # lfs f27, lbl_80543720@sda21(r0)
    mr 23, 30
    addi 24, 31, 0x918
    addi 25, 31, 0x938
    addi 26, 31, 0x898
    li 27, 0x0
    lis 17, 0x5f30
    lis 18, 0x4e55
    lis 19, 0x7461
    lis 20, 0x4e
    lis 21, 0x6161
    lis 22, 0x50
    lis 29, 0x6179
    lis 28, 0x4e64
    .4byte 0x4800062C # b .L_803F4E98
L_803F4870:
    lwz 3, 0x220(23)
    cmpwi 3, 0x0
    .4byte 0x41820184 # beq .L_803F49FC
    addi 0, 3, 0x1
    stw 0, 0x220(23)
    lwz 3, 0x38(23)
    lwz 4, 0x220(23)
    lha 0, 0x6(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_803F48A0
    li 0, 0x0
    stw 0, 0x220(23)
L_803F48A0:
    lwz 5, 0x220(23)
    lis 0, 0x4330
    lis 4, 0x5f30
    lis 3, 0x4e55
    xoris 5, 5, 0x8000
    stw 0, 0x88(1)
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    addi 6, 4, 0x3031
    stw 5, 0x8c(1)
    addi 5, 3, 0x4c4c
    lwz 3, 0x38(23)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x18(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
    lha 0, 0x24e(30)
    cmpw 27, 0
    .4byte 0x40820104 # bne .L_803F49FC
    lwz 3, 0x38(23)
    lwz 4, 0x220(23)
    lha 3, 0x6(3)
    subi 3, 3, 0xa
    cmpw 4, 3
    .4byte 0x408200EC # bne .L_803F49FC
    lwz 5, 0x1ac(30)
    mr 4, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 8, 0x1
    addic. 5, 5, 0x1
    addi 6, 5, 0x1
    mtctr 6
    .4byte 0x4180004C # blt .L_803F497C
L_803F4934:
    addi 4, 4, 0x1
    extsh 6, 4
    cmpw 6, 5
    .4byte 0x40810008 # ble .L_803F4948
    li 4, 0x0
L_803F4948:
    extsh 7, 4
    lbz 9, 0x82(3)
    addi 6, 7, 0x4
    slw 6, 8, 6
    clrlwi 6, 6, 24
    and. 6, 9, 6
    .4byte 0x40820008 # bne .L_803F4968
    .4byte 0x4800001C # b .L_803F4980
L_803F4968:
    cmpw 7, 0
    .4byte 0x4082000C # bne .L_803F4978
    li 4, -0x1
    .4byte 0x4800000C # b .L_803F4980
L_803F4978:
    .4byte 0x4200FFBC # bdnz .L_803F4934
L_803F497C:
    li 4, -0x1
L_803F4980:
    extsh 3, 4
    cmpwi 3, -0x1
    .4byte 0x41820074 # beq .L_803F49FC
    cmpw 0, 3
    .4byte 0x4182006C # beq .L_803F49FC
    slwi 0, 3, 2
    sth 4, 0x24e(30)
    add 7, 30, 0
    lis 0, 0x4330
    lwz 5, 0x220(7)
    lis 4, 0x5f30
    lis 3, 0x4e55
    stw 0, 0x88(1)
    addi 0, 5, 0x1
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    stw 0, 0x220(7)
    addi 6, 4, 0x3031
    addi 5, 3, 0x4c4c
    lwz 0, 0x220(7)
    lwz 3, 0x38(23)
    xoris 0, 0, 0x8000
    stw 0, 0x8c(1)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x18(7)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
L_803F49FC:
    lwz 3, 0x230(23)
    cmpwi 3, 0x0
    .4byte 0x41820184 # beq .L_803F4B88
    addi 0, 3, 0x1
    stw 0, 0x230(23)
    lwz 3, 0x48(23)
    lwz 4, 0x230(23)
    lha 0, 0x6(3)
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_803F4A2C
    li 0, 0x0
    stw 0, 0x230(23)
L_803F4A2C:
    lwz 5, 0x230(23)
    lis 0, 0x4330
    lis 4, 0x6179
    lis 3, 0x4e64
    xoris 5, 5, 0x8000
    stw 0, 0x88(1)
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    addi 6, 4, 0x3030
    stw 5, 0x8c(1)
    addi 5, 3, 0x6174
    lwz 3, 0x48(23)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x28(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
    lha 0, 0x250(30)
    cmpw 27, 0
    .4byte 0x40820104 # bne .L_803F4B88
    lwz 3, 0x48(23)
    lwz 4, 0x230(23)
    lha 3, 0x6(3)
    subi 3, 3, 0xa
    cmpw 4, 3
    .4byte 0x408200EC # bne .L_803F4B88
    lwz 5, 0x1ac(30)
    mr 4, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 8, 0x1
    addic. 5, 5, 0x1
    addi 6, 5, 0x1
    mtctr 6
    .4byte 0x4180004C # blt .L_803F4B08
L_803F4AC0:
    addi 4, 4, 0x1
    extsh 6, 4
    cmpw 6, 5
    .4byte 0x40810008 # ble .L_803F4AD4
    li 4, 0x0
L_803F4AD4:
    extsh 7, 4
    lbz 9, 0x82(3)
    addi 6, 7, 0x4
    slw 6, 8, 6
    clrlwi 6, 6, 24
    and. 6, 9, 6
    .4byte 0x40820008 # bne .L_803F4AF4
    .4byte 0x4800001C # b .L_803F4B0C
L_803F4AF4:
    cmpw 7, 0
    .4byte 0x4082000C # bne .L_803F4B04
    li 4, -0x1
    .4byte 0x4800000C # b .L_803F4B0C
L_803F4B04:
    .4byte 0x4200FFBC # bdnz .L_803F4AC0
L_803F4B08:
    li 4, -0x1
L_803F4B0C:
    extsh 3, 4
    cmpwi 3, -0x1
    .4byte 0x41820074 # beq .L_803F4B88
    cmpw 0, 3
    .4byte 0x4182006C # beq .L_803F4B88
    slwi 0, 3, 2
    sth 4, 0x250(30)
    add 7, 30, 0
    lis 0, 0x4330
    lwz 5, 0x230(7)
    lis 4, 0x6179
    lis 3, 0x4e64
    stw 0, 0x88(1)
    addi 0, 5, 0x1
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    stw 0, 0x230(7)
    addi 6, 4, 0x3030
    addi 5, 3, 0x6174
    lwz 0, 0x230(7)
    lwz 3, 0x48(23)
    xoris 0, 0, 0x8000
    stw 0, 0x8c(1)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x28(7)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
L_803F4B88:
    lwz 3, 0x18(23)
    addi 6, 17, 0x3031
    addi 5, 18, 0x4c4c
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x8(30)
    fsubs 26, 1, 0
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 16, 3
    lwz 3, 0x8(30)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 25, 0x0(3)
    addi 6, 17, 0x3031
    lwz 3, 0x8(30)
    addi 5, 18, 0x4c4c
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x28(16)
    addi 6, 17, 0x3031
    lfs 0, 0x20(16)
    addi 5, 18, 0x4c4c
    lfs 2, 0x0(3)
    fsubs 0, 1, 0
    lwz 3, 0x18(23)
    fadds 1, 2, 25
    lwz 12, 0x0(3)
    fsubs 0, 0, 26
    lwz 12, 0x3c(12)
    fmadds 24, 0, 27, 1
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x8(30)
    fsubs 26, 1, 0
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 16, 3
    lwz 3, 0x8(30)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 25, 0x4(3)
    addi 6, 17, 0x3031
    lwz 3, 0x8(30)
    addi 5, 18, 0x4c4c
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x2c(16)
    addi 6, 17, 0x3031
    lfs 0, 0x24(16)
    addi 5, 18, 0x4c4c
    lfs 2, 0x4(3)
    fsubs 0, 1, 0
    lwz 3, 0x18(23)
    fadds 1, 2, 25
    lwz 12, 0x0(3)
    fsubs 0, 0, 26
    lwz 12, 0x3c(12)
    fmadds 25, 0, 27, 1
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 24
    fmr 2, 25
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 25, 0x0(3)
    addi 6, 19, 0x3033
    lwz 3, 0x8(30)
    addi 5, 20, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    addi 6, 21, 0x3030
    lwz 3, 0x28(23)
    addi 5, 22, 0x6363
    fadds 24, 0, 25
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 26, 0x4(3)
    lwz 3, 0x8(30)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 25, 0x4(3)
    addi 6, 19, 0x3033
    lwz 3, 0x8(30)
    addi 5, 20, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x8(30)
    fadds 25, 0, 25
    lwz 5, 0x8(26)
    lwz 12, 0x0(3)
    lwz 6, 0xc(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 6, 29, 0x3030
    lwz 3, 0x28(23)
    addi 5, 28, 0x6174
    fadds 0, 0, 25
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    fsubs 25, 0, 26
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 24
    fmr 2, 25
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x28(23)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x1c4(30)
    cmpwi 0, 0x3
    .4byte 0x4182003C # beq .L_803F4E84
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 0, 27, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x4082001C # bne .L_803F4E84
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x18(23)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_803F4E84:
    addi 23, 23, 0x4
    addi 24, 24, 0x8
    addi 25, 25, 0x8
    addi 26, 26, 0x20
    addi 27, 27, 0x1
L_803F4E98:
    lwz 3, 0x1ac(30)
    addi 0, 3, 0x1
    cmpw 27, 0
    .4byte 0x4081F9CC # ble .L_803F4870
    .4byte 0xC042078C # lfs f2, lbl_8054372C@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC0220800 # lfs f1, lbl_805437A0@sda21(r0)
    li 5, 0x1
    .4byte 0xC0020804 # lfs f0, lbl_805437A4@sda21(r0)
    stfs 2, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_8013B414
    .4byte 0xC3220800 # lfs f25, lbl_805437A0@sda21(r0)
    mr 24, 30
    .4byte 0xC3420780 # lfs f26, lbl_80543720@sda21(r0)
    mr 26, 30
    .4byte 0xCB6207A0 # lfd f27, lbl_80543740@sda21(r0)
    addi 28, 31, 0x7d8
    .4byte 0xC3820804 # lfs f28, lbl_805437A4@sda21(r0)
    addi 27, 31, 0x4d0
    .4byte 0xC3A20788 # lfs f29, lbl_80543728@sda21(r0)
    addi 29, 1, 0x24
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    li 25, 0x0
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    lis 23, 0x4330
L_803F4F0C:
    li 0, -0x1
    li 9, 0x0
    stw 0, 0x34(1)
    stw 0, 0x38(1)
    .4byte 0x48000064 # b .L_803F4F80
L_803F4F20:
    clrlwi 0, 9, 24
    addi 7, 9, 0x5
    addi 5, 9, 0x1
    stbx 9, 29, 0
    clrlwi 0, 5, 24
    addi 3, 9, 0x2
    stbx 5, 29, 0
    clrlwi 0, 3, 24
    addi 4, 9, 0x3
    addi 8, 9, 0x4
    stbx 3, 29, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 9, 0x6
    stbx 4, 29, 0
    clrlwi 0, 8, 24
    addi 3, 9, 0x7
    clrlwi 4, 5, 24
    stbx 8, 29, 0
    clrlwi 0, 3, 24
    addi 9, 9, 0x8
    stbx 7, 29, 6
    stbx 5, 29, 4
    stbx 3, 29, 0
L_803F4F80:
    clrlwi 0, 9, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803F4F20
    li 7, 0x1
    li 8, 0x0
    stb 7, 0x4a(1)
    li 9, -0x1
    addi 0, 25, 0xc
    li 4, 0x3
    li 3, 0x2
    stw 9, 0x34(1)
    lwz 5, 0x0(28)
    stw 8, 0x38(1)
    lwz 6, 0x4(28)
    stw 8, 0x3c(1)
    stb 8, 0x40(1)
    stb 8, 0x41(1)
    stb 8, 0x42(1)
    stb 7, 0x43(1)
    stb 7, 0x44(1)
    stb 8, 0x45(1)
    stb 8, 0x46(1)
    stb 8, 0x47(1)
    stb 8, 0x48(1)
    stb 8, 0x49(1)
    stw 4, 0x4c(1)
    stb 7, 0x50(1)
    stb 8, 0x51(1)
    stb 8, 0x52(1)
    stw 9, 0x54(1)
    stw 8, 0x58(1)
    stw 3, 0x5c(1)
    stb 0, 0x2b(1)
    stb 8, 0x4a(1)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x8(30)
    fsubs 24, 1, 0
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 0, 0x30(3)
    lwz 3, 0x4(4)
    fmadds 0, 24, 26, 0
    stw 23, 0x88(1)
    lhz 0, 0x4(3)
    lwz 5, 0x0(28)
    xoris 0, 0, 0x8000
    fmuls 1, 25, 0
    stw 0, 0x8c(1)
    lwz 6, 0x4(28)
    lfd 0, 0x88(1)
    fsubs 0, 0, 27
    fdivs 0, 1, 0
    stfs 0, 0x18(1)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x8(30)
    fsubs 24, 1, 0
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 0, 0x34(3)
    lwz 3, 0x4(4)
    fmadds 0, 24, 26, 0
    stw 23, 0x80(1)
    lhz 0, 0x6(3)
    lwz 5, 0x0(27)
    xoris 0, 0, 0x8000
    fadds 1, 29, 0
    stw 0, 0x84(1)
    lwz 6, 0x4(27)
    lfd 0, 0x80(1)
    fmuls 1, 28, 1
    stfs 30, 0x20(1)
    fsubs 0, 0, 27
    fdivs 0, 1, 0
    stfs 0, 0x1c(1)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xb2(3)
    addi 0, 25, 0x4
    lbz 5, 0x2ee(24)
    li 3, 0x1
    stw 4, 0x7c(1)
    slw 0, 3, 0
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    clrlwi 0, 0, 24
    stw 23, 0x78(1)
    lbz 3, 0x82(4)
    lfd 0, 0x78(1)
    stw 5, 0x74(1)
    and. 0, 3, 0
    fsubs 1, 0, 31
    stw 23, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 31
    fdivs 1, 1, 0
    .4byte 0x41820010 # beq .L_803F516C
    lwz 17, 0x210(26)
    cmpwi 17, 0x0
    .4byte 0x408200A4 # bne .L_803F520C
L_803F516C:
    lwz 3, 0x1ac(30)
    addi 0, 3, 0x1
    cmpw 25, 0
    .4byte 0x40810030 # ble .L_803F51A8
    .4byte 0xC0020808 # lfs f0, lbl_805437A8@sda21(r0)
    li 0, 0x80
    stb 0, 0x34(1)
    fmuls 0, 0, 1
    stb 0, 0x35(1)
    fctiwz 0, 0
    stb 0, 0x36(1)
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stb 0, 0x37(1)
    .4byte 0x4800001C # b .L_803F51C0
L_803F51A8:
    .4byte 0xC0020778 # lfs f0, lbl_80543718@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stb 0, 0x37(1)
L_803F51C0:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    addi 4, 3, 0x4220
    addi 5, 31, 0xf20
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x24
    fmr 2, 1
    li 6, 0x10
    lwz 3, 0x20(4)
    addi 4, 1, 0x18
    bl fn_802F86CC
    .4byte 0x48000174 # b .L_803F537C
L_803F520C:
    .4byte 0xC0020778 # lfs f0, lbl_80543718@sda21(r0)
    cmpwi 17, 0xa
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stb 0, 0x37(1)
    .4byte 0x4181004C # bgt .L_803F5274
    lwz 3, 0xa4(4)
    lis 4, 0x534f
    addi 4, 4, 0x4220
    addi 5, 31, 0xf20
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x24
    fmr 2, 1
    li 6, 0xdb
    lwz 3, 0x20(4)
    addi 4, 1, 0x18
    bl fn_802F86CC
    .4byte 0x4800010C # b .L_803F537C
L_803F5274:
    cmpwi 17, 0x24
    .4byte 0x4181005C # bgt .L_803F52D4
    lwz 3, 0xa4(4)
    lis 4, 0x534f
    addi 4, 4, 0x4220
    addi 5, 31, 0xf20
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    subi 4, 17, 0xa
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    srwi 0, 4, 31
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    add 0, 0, 4
    fmr 2, 1
    mr 5, 3
    lwz 3, 0x20(6)
    srawi 6, 0, 1
    addi 4, 1, 0x18
    addi 7, 1, 0x24
    addi 6, 6, 0xdb
    bl fn_802F86CC
    .4byte 0x480000AC # b .L_803F537C
L_803F52D4:
    cmpwi 17, 0x64
    .4byte 0x4080004C # bge .L_803F5324
    lwz 3, 0xa4(4)
    lis 4, 0x534f
    addi 4, 4, 0x4220
    addi 5, 31, 0xf20
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x24
    fmr 2, 1
    li 6, 0xe8
    lwz 3, 0x20(4)
    addi 4, 1, 0x18
    bl fn_802F86CC
    .4byte 0x4800005C # b .L_803F537C
L_803F5324:
    lwz 3, 0xa4(4)
    slwi 6, 17, 2
    lis 4, 0x534f
    addi 5, 31, 0x40
    lwz 12, 0x0(3)
    subi 0, 6, 0x190
    lwzx 6, 5, 0
    addi 4, 4, 0x4220
    lwz 12, 0x18(12)
    addi 5, 31, 0xf20
    addi 16, 6, 0x10
    mtctr 12
    bctrl
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 16
    fmr 2, 1
    addi 7, 1, 0x24
    lwz 3, 0x20(4)
    addi 4, 1, 0x18
    bl fn_802F86CC
L_803F537C:
    addi 25, 25, 0x1
    addi 27, 27, 0x48
    cmpwi 25, 0x4
    addi 24, 24, 0x9
    addi 26, 26, 0x4
    addi 28, 28, 0x8
    .4byte 0x4180FB78 # blt .L_803F4F0C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 0, 0x1c4(30)
    cmpwi 0, 0x6
    .4byte 0x4082000C # bne .L_803F53B4
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804316EC
L_803F53B4:
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    psq_l 31, 0x148(1), 0, 0
    lfd 31, 0x140(1)
    psq_l 30, 0x138(1), 0, 0
    lfd 30, 0x130(1)
    psq_l 29, 0x128(1), 0, 0
    lfd 29, 0x120(1)
    psq_l 28, 0x118(1), 0, 0
    lfd 28, 0x110(1)
    psq_l 27, 0x108(1), 0, 0
    lfd 27, 0x100(1)
    psq_l 26, 0xf8(1), 0, 0
    lfd 26, 0xf0(1)
    psq_l 25, 0xe8(1), 0, 0
    lfd 25, 0xe0(1)
    psq_l 24, 0xd8(1), 0, 0
    lfd 24, 0xd0(1)
    lmw 16, 0x90(1)
    lwz 0, 0x154(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_803F5410:
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
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    mr 25, 3
    lis 3, lbl_80478A60@ha
    lwz 4, 0x1c4(25)
    addi 31, 3, lbl_80478A60@l
    cmpwi 4, 0x2
    .4byte 0x41820094 # beq .L_803F54F0
    lwz 3, 0x1d0(25)
    cmpwi 3, 0x1e
    .4byte 0x40800030 # bge .L_803F5498
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207DC # lfs f0, lbl_8054377C@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 3, 1, 0
    .4byte 0x48000038 # b .L_803F54CC
L_803F5498:
    subi 3, 3, 0x1e
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207DC # lfs f0, lbl_8054377C@sda21(r0)
    .4byte 0xC0620790 # lfs f3, lbl_80543730@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 3, 3, 0
L_803F54CC:
    lbz 3, 0x258(25)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8220798 # lfd f1, lbl_80543738@sda21(r0)
    stw 3, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 30, 3, 0
    .4byte 0x48000078 # b .L_803F5564
L_803F54F0:
    lwz 3, 0x1d0(25)
    cmpwi 3, 0xf
    .4byte 0x40800030 # bge .L_803F5528
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207EC # lfs f0, lbl_8054378C@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 3, 1, 0
    .4byte 0x48000038 # b .L_803F555C
L_803F5528:
    subi 3, 3, 0xf
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC00207EC # lfs f0, lbl_8054378C@sda21(r0)
    .4byte 0xC0620790 # lfs f3, lbl_80543730@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 3, 3, 0
L_803F555C:
    .4byte 0xC00207F0 # lfs f0, lbl_80543790@sda21(r0)
    fmuls 30, 0, 3
L_803F5564:
    cmpwi 4, 0x1
    .4byte 0x41820018 # beq .L_803F5580
    cmpwi 4, 0x2
    .4byte 0x40820028 # bne .L_803F5598
    lha 0, 0x240(25)
    cmpwi 0, 0xa
    .4byte 0x4181001C # bgt .L_803F5598
L_803F5580:
    lha 0, 0x240(25)
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_803F5590
    .4byte 0x48000010 # b .L_803F559C
L_803F5590:
    subfic 0, 0, 0xa
    .4byte 0x48000008 # b .L_803F559C
L_803F5598:
    li 0, 0x0
L_803F559C:
    mullw 3, 0, 0
    lis 0, 0x4330
    .4byte 0xC002080C # lfs f0, lbl_805437AC@sda21(r0)
    mr 30, 25
    stw 0, 0x8(1)
    addi 29, 31, 0xe60
    xoris 0, 3, 0x8000
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    stw 0, 0xc(1)
    fmuls 31, 0, 3
    .4byte 0xC06207E4 # lfs f3, lbl_80543784@sda21(r0)
    addi 28, 31, 0xe78
    lfd 1, 0x8(1)
    addi 27, 31, 0xe90
    .4byte 0xC00207E8 # lfs f0, lbl_80543788@sda21(r0)
    fsubs 1, 1, 2
    li 26, 0x0
    fmuls 1, 3, 1
    fdivs 27, 1, 0
L_803F55E8:
    lwz 0, 0x1ac(25)
    cmpw 26, 0
    .4byte 0x40820218 # bne .L_803F5808
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 28, 0x0(3)
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 28
    lfs 0, 0x124(30)
    lwz 12, 0x10(12)
    fadds 2, 0, 27
    mtctr 12
    bctrl
    cmpwi 26, 0x0
    .4byte 0x40820074 # bne .L_803F56C8
    lwz 3, 0x4(25)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 28, 0x0(3)
    lis 5, 0x726f
    lwz 3, 0x4(25)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 28
    lfs 0, 0xf0(25)
    lwz 12, 0x10(12)
    fadds 2, 0, 27
    mtctr 12
    bctrl
    .4byte 0x480000C0 # b .L_803F5784
L_803F56C8:
    lwz 3, 0x4(25)
    lwz 5, 0xe60(31)
    lwz 12, 0x0(3)
    lwz 6, 0xe64(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 28, 0x4(3)
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x726f
    lfs 0, 0xf0(25)
    lis 4, 0x5073
    lwz 3, 0x4(25)
    addi 6, 5, 0x3032
    fadds 0, 0, 1
    addi 5, 4, 0x6375
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    fsubs 28, 0, 28
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 5, 0x726f
    lwz 3, 0x4(25)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    fmr 2, 28
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803F5784:
    lwz 3, 0x4(25)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    .4byte 0x480000A4 # b .L_803F58A8
L_803F5808:
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lwz 3, 0x4(25)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 2, 0x124(30)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F58A8:
    addi 26, 26, 0x1
    addi 29, 29, 0x8
    cmpwi 26, 0x3
    addi 28, 28, 0x8
    addi 27, 27, 0x8
    addi 30, 30, 0x4
    .4byte 0x4180FD28 # blt .L_803F55E8
    lwz 3, 0x4(25)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 30
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 30
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(25)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803F59A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x58(3)
    bl fn_804366B8
    cmpwi 3, 0x0
    .4byte 0x41820038 # beq .L_803F59F8
    lbz 0, 0x25e(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803F59E0
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x1cc(31)
    stb 0, 0x25e(31)
L_803F59E0:
    li 0, 0x0
    li 4, 0xb
    stw 0, 0x1a8(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803F59F8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803F5A0C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stmw 14, 0x38(1)
    lis 4, lbl_80478A60@ha
    mr 15, 3
    addi 3, 4, lbl_80478A60@l
    li 16, 0x0
    addi 0, 3, 0xa58
    mr 25, 15
    stw 0, 0x2c(1)
    addi 0, 3, 0xa78
    addi 19, 3, 0x958
    addi 18, 3, 0x978
    stw 0, 0x28(1)
    addi 0, 3, 0xa18
    addi 17, 3, 0x998
    mr 24, 15
    stw 0, 0x24(1)
    addi 0, 3, 0xa38
    mr 23, 19
    mr 22, 18
    stw 0, 0x20(1)
    addi 0, 3, 0xb60
    mr 21, 17
    addi 14, 3, 0x9d8
    stw 0, 0x1c(1)
    addi 0, 3, 0xc20
    addi 20, 3, 0x9f8
    stw 0, 0x18(1)
    addi 0, 3, 0xce0
    stw 0, 0x14(1)
    addi 0, 3, 0xda0
    stw 0, 0x10(1)
L_803F5A9C:
    lha 3, 0x240(25)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_803F5AC4
    addi 0, 3, 0x1
    sth 0, 0x240(25)
    lha 0, 0x240(25)
    cmpwi 0, 0xa
    .4byte 0x4180000C # blt .L_803F5AC4
    li 0, 0x0
    sth 0, 0x240(25)
L_803F5AC4:
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 16, 0
    .4byte 0x418115C8 # bgt .L_803F7098
    mr 3, 16
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1000
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182039C # beq .L_803F5E8C
    lwz 0, 0x1b0(15)
    cmpwi 0, 0x4
    .4byte 0x408200A4 # bne .L_803F5BA0
    lwz 0, 0x1b4(15)
    cmpwi 0, 0x4
    .4byte 0x40820098 # bne .L_803F5BA0
    lwz 0, 0x1b8(15)
    cmpwi 0, 0x4
    .4byte 0x4082008C # bne .L_803F5BA0
    lwz 0, 0x1bc(15)
    cmpwi 0, 0x4
    .4byte 0x40820080 # bne .L_803F5BA0
    li 0, 0x0
    li 4, 0x0
    stw 0, 0x1a8(15)
    li 0, 0x1
    lwz 3, 0x1ac(15)
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5B44
    sth 0, 0x240(15)
L_803F5B44:
    lwz 3, 0x1ac(15)
    li 4, 0x1
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5B58
    sth 0, 0x242(15)
L_803F5B58:
    lwz 3, 0x1ac(15)
    li 4, 0x2
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5B6C
    sth 0, 0x244(15)
L_803F5B6C:
    lwz 3, 0x1ac(15)
    li 4, 0x3
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5B80
    sth 0, 0x246(15)
L_803F5B80:
    lbz 0, 0x25e(15)
    cmplwi 0, 0x0
    .4byte 0x408202F0 # bne .L_803F5E78
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x1cc(15)
    stb 0, 0x25e(15)
    .4byte 0x480002DC # b .L_803F5E78
L_803F5BA0:
    mr 14, 15
    mr 16, 15
    li 20, 0x0
L_803F5BAC:
    lwz 0, 0x1b0(14)
    cmpwi 0, 0x4
    .4byte 0x418202A4 # beq .L_803F5E58
    lwz 4, 0x1e0(14)
    mr 3, 20
    bl fn_804034D4
    lwz 4, 0x1f0(14)
    mr 3, 20
    bl fn_80403494
    lwz 4, 0x200(14)
    mr 3, 20
    bl fn_80403454
    li 0, 0x4
    li 3, 0x1
    stw 0, 0x1b0(14)
    li 0, 0x1e
    sth 3, 0x240(16)
    stw 0, 0x1d0(14)
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 20, 0
    .4byte 0x41810164 # bgt .L_803F5D64
    lwz 0, 0x1b0(14)
    cmpwi 0, 0x3
    .4byte 0x40800074 # bge .L_803F5C80
    lwz 3, 0x10(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000154 # b .L_803F5DD0
L_803F5C80:
    .4byte 0x40820074 # bne .L_803F5CF4
    lwz 3, 0x10(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000E0 # b .L_803F5DD0
L_803F5CF4:
    lwz 3, 0x10(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000070 # b .L_803F5DD0
L_803F5D64:
    lwz 3, 0x10(15)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F5DD0:
    lwz 21, 0x1b0(14)
    cmpwi 21, 0x3
    .4byte 0x41810080 # bgt .L_803F5E58
    lwz 3, 0x10(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(15)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    slwi 0, 21, 1
    .4byte 0x38820770 # li r4, lbl_80543710@sda21
    lhax 4, 4, 0
    lis 0, 0x4330
    lwz 12, 0x0(3)
    fmr 1, 31
    xoris 4, 4, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    stw 4, 0xc(1)
    lwz 12, 0x10(12)
    lfd 0, 0x8(1)
    fsubs 2, 0, 2
    mtctr 12
    bctrl
L_803F5E58:
    addi 20, 20, 0x1
    addi 16, 16, 0x2
    cmpwi 20, 0x4
    addi 19, 19, 0x8
    addi 18, 18, 0x8
    addi 17, 17, 0x8
    addi 14, 14, 0x4
    .4byte 0x4180FD38 # blt .L_803F5BAC
L_803F5E78:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480012B8 # b .L_803F7140
L_803F5E8C:
    mr 3, 16
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820920 # beq .L_803F67C8
    lwz 0, 0x1b0(15)
    cmpwi 0, 0x4
    .4byte 0x408200B4 # bne .L_803F5F68
    lwz 0, 0x1b4(15)
    cmpwi 0, 0x4
    .4byte 0x408200A8 # bne .L_803F5F68
    lwz 0, 0x1b8(15)
    cmpwi 0, 0x4
    .4byte 0x4082009C # bne .L_803F5F68
    lwz 0, 0x1bc(15)
    cmpwi 0, 0x4
    .4byte 0x40820090 # bne .L_803F5F68
    li 0, 0x0
    li 4, 0x0
    stw 0, 0x1a8(15)
    li 0, 0x1
    lwz 3, 0x1ac(15)
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5EFC
    sth 0, 0x240(15)
L_803F5EFC:
    lwz 3, 0x1ac(15)
    li 4, 0x1
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5F10
    sth 0, 0x242(15)
L_803F5F10:
    lwz 3, 0x1ac(15)
    li 4, 0x2
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5F24
    sth 0, 0x244(15)
L_803F5F24:
    lwz 3, 0x1ac(15)
    li 4, 0x3
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F5F38
    sth 0, 0x246(15)
L_803F5F38:
    lbz 0, 0x25e(15)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803F5F54
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x1cc(15)
    stb 0, 0x25e(15)
L_803F5F54:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48001134 # b .L_803F7098
L_803F5F68:
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x3
    .4byte 0x40820370 # bne .L_803F62E0
    lwz 4, 0x1e0(24)
    mr 3, 16
    bl fn_804034D4
    lwz 4, 0x1f0(24)
    mr 3, 16
    bl fn_80403494
    lwz 4, 0x200(24)
    mr 3, 16
    bl fn_80403454
    li 0, 0x4
    li 3, 0x1
    stw 0, 0x1b0(24)
    li 0, 0x1e
    sth 3, 0x240(25)
    stw 0, 0x1d0(24)
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 16, 0
    .4byte 0x41810164 # bgt .L_803F6120
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x3
    .4byte 0x40800074 # bge .L_803F603C
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000154 # b .L_803F618C
L_803F603C:
    .4byte 0x40820074 # bne .L_803F60B0
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000E0 # b .L_803F618C
L_803F60B0:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000070 # b .L_803F618C
L_803F6120:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F618C:
    lwz 26, 0x1b0(24)
    cmpwi 26, 0x3
    .4byte 0x41810080 # bgt .L_803F6214
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    slwi 0, 26, 1
    .4byte 0x38820770 # li r4, lbl_80543710@sda21
    lhax 4, 4, 0
    lis 0, 0x4330
    lwz 12, 0x0(3)
    fmr 1, 31
    xoris 4, 4, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    stw 4, 0xc(1)
    lwz 12, 0x10(12)
    lfd 0, 0x8(1)
    fsubs 2, 0, 2
    mtctr 12
    bctrl
L_803F6214:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    lwz 0, 0x1b0(15)
    cmpwi 0, 0x4
    .4byte 0x40820E6C # bne .L_803F7098
    lwz 0, 0x1b4(15)
    cmpwi 0, 0x4
    .4byte 0x40820E60 # bne .L_803F7098
    lwz 0, 0x1b8(15)
    cmpwi 0, 0x4
    .4byte 0x40820E54 # bne .L_803F7098
    lwz 0, 0x1bc(15)
    cmpwi 0, 0x4
    .4byte 0x40820E48 # bne .L_803F7098
    li 0, 0x0
    li 4, 0x0
    stw 0, 0x1a8(15)
    li 0, 0x1
    lwz 3, 0x1ac(15)
    addi 3, 3, 0x1
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F6278
    sth 0, 0x240(15)
L_803F6278:
    lwz 3, 0x1ac(15)
    li 4, 0x1
    addi 3, 3, 0x1
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F6290
    sth 0, 0x242(15)
L_803F6290:
    lwz 3, 0x1ac(15)
    li 4, 0x2
    addi 3, 3, 0x1
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F62A8
    sth 0, 0x244(15)
L_803F62A8:
    lwz 3, 0x1ac(15)
    li 4, 0x3
    addi 3, 3, 0x1
    cmpw 4, 3
    .4byte 0x41810008 # bgt .L_803F62C0
    sth 0, 0x246(15)
L_803F62C0:
    lbz 0, 0x25e(15)
    cmplwi 0, 0x0
    .4byte 0x40820E78 # bne .L_803F7140
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x1cc(15)
    stb 0, 0x25e(15)
    .4byte 0x48000E64 # b .L_803F7140
L_803F62E0:
    .4byte 0x40800DB8 # bge .L_803F7098
    cmpwi 0, 0x1
    .4byte 0x41820278 # beq .L_803F6560
    .4byte 0x40800010 # bge .L_803F62FC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_803F6308
    .4byte 0x48000DA0 # b .L_803F7098
L_803F62FC:
    cmpwi 0, 0x3
    .4byte 0x40800D98 # bge .L_803F7098
    .4byte 0x48000490 # b .L_803F6794
L_803F6308:
    lwz 3, 0x1e0(24)
    addi 0, 3, 0x1
    stw 0, 0x1e0(24)
    lwz 0, 0x1e0(24)
    cmpwi 0, 0x3
    .4byte 0x4081000C # ble .L_803F6328
    li 0, 0x0
    stw 0, 0x1e0(24)
L_803F6328:
    lwz 3, 0x1e0(24)
    bl fn_80403070
    lis 5, 0x51ec
    lis 4, lbl_804B0EE8@ha
    mr 26, 3
    lis 3, 0x5449
    subi 0, 5, 0x7ae1
    addi 4, 4, lbl_804B0EE8@l
    mulhw 0, 0, 26
    addi 3, 3, 0x4d47
    srawi 0, 0, 5
    srwi 5, 0, 31
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x10(15)
    lwz 4, 0x2c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(15)
    lwz 4, 0x28(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, 0x51ec
    lis 4, 0x6666
    subi 0, 3, 0x7ae1
    lis 3, lbl_804B0EE8@ha
    mulhw 0, 0, 26
    lis 5, 0x5449
    addi 6, 4, 0x6667
    addi 4, 3, lbl_804B0EE8@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 5
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0x64
    subf 0, 0, 26
    mulhw 0, 6, 0
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x10(15)
    lwz 4, 0x24(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(15)
    lwz 4, 0x20(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B0EE8@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 26
    addi 4, 3, lbl_804B0EE8@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 26
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x10(15)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(15)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000B3C # b .L_803F7098
L_803F6560:
    lwz 3, 0x1f0(24)
    addi 0, 3, 0x1
    stw 0, 0x1f0(24)
    lwz 0, 0x1f0(24)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_803F6580
    li 0, 0x0
    stw 0, 0x1f0(24)
L_803F6580:
    lwz 3, 0x1f0(24)
    bl fn_8040305C
    lwz 29, 0x1c(1)
    subi 31, 3, 0x1
    lwz 28, 0x18(1)
    li 30, 0x0
    lwz 27, 0x14(1)
    lwz 26, 0x10(1)
L_803F65A0:
    cmpw 30, 31
    .4byte 0x40800098 # bge .L_803F663C
    lwz 3, 0x10(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800012C # b .L_803F6764
L_803F663C:
    .4byte 0x40820098 # bne .L_803F66D4
    lwz 3, 0x10(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000094 # b .L_803F6764
L_803F66D4:
    lwz 3, 0x10(15)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F6764:
    addi 30, 30, 0x1
    addi 28, 28, 0x8
    cmpwi 30, 0x6
    addi 27, 27, 0x8
    addi 26, 26, 0x8
    addi 29, 29, 0x8
    .4byte 0x4180FE24 # blt .L_803F65A0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000908 # b .L_803F7098
L_803F6794:
    lwz 3, 0x200(24)
    addi 0, 3, 0x1
    stw 0, 0x200(24)
    lwz 0, 0x200(24)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_803F67B4
    li 0, 0x0
    stw 0, 0x200(24)
L_803F67B4:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480008D4 # b .L_803F7098
L_803F67C8:
    mr 3, 16
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x200
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182033C # beq .L_803F6B20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x4
    .4byte 0x4082027C # bne .L_803F6A7C
    li 3, 0x3
    li 0, 0x1e
    stw 3, 0x1b0(24)
    stw 0, 0x1d0(24)
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 16, 0
    .4byte 0x41810164 # bgt .L_803F6984
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x3
    .4byte 0x40800074 # bge .L_803F68A0
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000154 # b .L_803F69F0
L_803F68A0:
    .4byte 0x40820074 # bne .L_803F6914
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000E0 # b .L_803F69F0
L_803F6914:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000070 # b .L_803F69F0
L_803F6984:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F69F0:
    lwz 26, 0x1b0(24)
    cmpwi 26, 0x3
    .4byte 0x418106A0 # bgt .L_803F7098
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    slwi 0, 26, 1
    .4byte 0x38820770 # li r4, lbl_80543710@sda21
    lhax 4, 4, 0
    lis 0, 0x4330
    lwz 12, 0x0(3)
    fmr 1, 31
    xoris 4, 4, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    stw 4, 0xc(1)
    lwz 12, 0x10(12)
    lfd 0, 0x8(1)
    fsubs 2, 0, 2
    mtctr 12
    bctrl
    .4byte 0x48000620 # b .L_803F7098
L_803F6A7C:
    lwz 3, 0x1ac(15)
    li 4, 0x0
    li 0, 0x1
    cmpw 4, 3
    .4byte 0x41810014 # bgt .L_803F6AA0
    lwz 3, 0x1b0(15)
    cmpwi 3, 0x4
    .4byte 0x40820008 # bne .L_803F6AA0
    sth 0, 0x240(15)
L_803F6AA0:
    lwz 3, 0x1ac(15)
    li 4, 0x1
    cmpw 4, 3
    .4byte 0x41810014 # bgt .L_803F6AC0
    lwz 3, 0x1b4(15)
    cmpwi 3, 0x4
    .4byte 0x40820008 # bne .L_803F6AC0
    sth 0, 0x242(15)
L_803F6AC0:
    lwz 3, 0x1ac(15)
    li 4, 0x2
    cmpw 4, 3
    .4byte 0x41810014 # bgt .L_803F6AE0
    lwz 3, 0x1b8(15)
    cmpwi 3, 0x4
    .4byte 0x40820008 # bne .L_803F6AE0
    sth 0, 0x244(15)
L_803F6AE0:
    lwz 3, 0x1ac(15)
    li 4, 0x3
    cmpw 4, 3
    .4byte 0x41810014 # bgt .L_803F6B00
    lwz 3, 0x1bc(15)
    cmpwi 3, 0x4
    .4byte 0x40820008 # bne .L_803F6B00
    sth 0, 0x246(15)
L_803F6B00:
    lbz 0, 0x25e(15)
    cmplwi 0, 0x0
    .4byte 0x40820638 # bne .L_803F7140
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x1cc(15)
    stb 0, 0x25e(15)
    .4byte 0x48000624 # b .L_803F7140
L_803F6B20:
    mr 3, 16
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x8
    bl fn_80309D48
    cmplwi 3, 0x0
    .4byte 0x41820298 # beq .L_803F6DD4
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x3
    .4byte 0x40820550 # bne .L_803F7098
    li 3, 0x1
    li 0, 0x1e
    stw 3, 0x1b0(24)
    stw 0, 0x1d0(24)
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 16, 0
    .4byte 0x41810164 # bgt .L_803F6CCC
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x3
    .4byte 0x40800074 # bge .L_803F6BE8
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000154 # b .L_803F6D38
L_803F6BE8:
    .4byte 0x40820074 # bne .L_803F6C5C
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000E0 # b .L_803F6D38
L_803F6C5C:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000070 # b .L_803F6D38
L_803F6CCC:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F6D38:
    lwz 26, 0x1b0(24)
    cmpwi 26, 0x3
    .4byte 0x41810080 # bgt .L_803F6DC0
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    slwi 0, 26, 1
    .4byte 0x38820770 # li r4, lbl_80543710@sda21
    lhax 4, 4, 0
    lis 0, 0x4330
    lwz 12, 0x0(3)
    fmr 1, 31
    xoris 4, 4, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    stw 4, 0xc(1)
    lwz 12, 0x10(12)
    lfd 0, 0x8(1)
    fsubs 2, 0, 2
    mtctr 12
    bctrl
L_803F6DC0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480002C8 # b .L_803F7098
L_803F6DD4:
    mr 3, 16
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x4
    bl fn_80309D48
    cmplwi 3, 0x0
    .4byte 0x418202A8 # beq .L_803F7098
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x1
    .4byte 0x4082029C # bne .L_803F7098
    li 3, 0x3
    li 0, 0x1e
    stw 3, 0x1b0(24)
    stw 0, 0x1d0(24)
    lwz 3, 0x1ac(15)
    addi 0, 3, 0x1
    cmpw 16, 0
    .4byte 0x41810164 # bgt .L_803F6F80
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x3
    .4byte 0x40800074 # bge .L_803F6E9C
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000154 # b .L_803F6FEC
L_803F6E9C:
    .4byte 0x40820074 # bne .L_803F6F10
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000E0 # b .L_803F6FEC
L_803F6F10:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000070 # b .L_803F6FEC
L_803F6F80:
    lwz 3, 0x10(15)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x10(15)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803F6FEC:
    lwz 26, 0x1b0(24)
    cmpwi 26, 0x3
    .4byte 0x41810080 # bgt .L_803F7074
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(15)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    slwi 0, 26, 1
    .4byte 0x38820770 # li r4, lbl_80543710@sda21
    lhax 4, 4, 0
    lis 0, 0x4330
    lwz 12, 0x0(3)
    fmr 1, 31
    xoris 4, 4, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    stw 4, 0xc(1)
    lwz 12, 0x10(12)
    lfd 0, 0x8(1)
    fsubs 2, 0, 2
    mtctr 12
    bctrl
L_803F7074:
    lwz 0, 0x1b0(24)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_803F7088
    li 0, 0x1
    sth 0, 0x240(25)
L_803F7088:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x26
    li 5, -0x1
    bl fn_80458880
L_803F7098:
    lwz 3, 0x1d0(24)
    addi 0, 3, 0x1
    stw 0, 0x1d0(24)
    lwz 0, 0x1d0(24)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_803F70B8
    li 0, 0x0
    stw 0, 0x1d0(24)
L_803F70B8:
    lwz 3, 0x2c(1)
    addi 16, 16, 0x1
    cmpwi 16, 0x4
    addi 24, 24, 0x4
    addi 3, 3, 0x8
    addi 23, 23, 0x8
    stw 3, 0x2c(1)
    addi 22, 22, 0x8
    lwz 3, 0x28(1)
    addi 21, 21, 0x8
    addi 14, 14, 0x8
    addi 20, 20, 0x8
    addi 3, 3, 0x8
    addi 25, 25, 0x2
    stw 3, 0x28(1)
    lwz 3, 0x24(1)
    addi 3, 3, 0x8
    stw 3, 0x24(1)
    lwz 3, 0x20(1)
    addi 3, 3, 0x8
    stw 3, 0x20(1)
    lwz 3, 0x1c(1)
    addi 3, 3, 0x30
    stw 3, 0x1c(1)
    lwz 3, 0x18(1)
    addi 3, 3, 0x30
    stw 3, 0x18(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x30
    stw 3, 0x14(1)
    lwz 3, 0x10(1)
    addi 3, 3, 0x30
    stw 3, 0x10(1)
    .4byte 0x4180E960 # blt .L_803F5A9C
L_803F7140:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    lmw 14, 0x38(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803F715C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 31, 3
    li 28, 0x0
    li 27, 0x0
    li 26, 0x0
    lha 3, 0x24c(3)
    addi 0, 3, 0x1
    sth 0, 0x24c(31)
    lha 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_803F71B0
    lwz 3, 0x60(31)
    li 4, 0x16
    .4byte 0xC02207B4 # lfs f1, lbl_80543754@sda21(r0)
    li 5, 0x0
    .4byte 0xC042078C # lfs f2, lbl_8054372C@sda21(r0)
    bl fn_80402940
    mr 28, 3
L_803F71B0:
    lha 0, 0x24c(31)
    cmpwi 0, 0x10
    .4byte 0x40810020 # ble .L_803F71D8
    lwz 3, 0x74(31)
    li 4, 0x18
    .4byte 0xC02207B4 # lfs f1, lbl_80543754@sda21(r0)
    li 5, 0x0
    .4byte 0xC042078C # lfs f2, lbl_8054372C@sda21(r0)
    bl fn_80402940
    mr 27, 3
L_803F71D8:
    mr 29, 31
    li 25, 0x0
    li 30, 0x4
L_803F71E4:
    lwz 3, 0x1ac(31)
    addi 0, 3, 0x1
    cmpw 25, 0
    .4byte 0x4181002C # bgt .L_803F721C
    lha 0, 0x24c(31)
    cmpw 0, 30
    .4byte 0x40810020 # ble .L_803F721C
    lwz 3, 0x64(29)
    li 4, 0x12
    .4byte 0xC02207B8 # lfs f1, lbl_80543758@sda21(r0)
    li 5, 0x0
    .4byte 0xC042078C # lfs f2, lbl_8054372C@sda21(r0)
    bl fn_80402940
    mr 26, 3
L_803F721C:
    addi 25, 25, 0x1
    addi 29, 29, 0x4
    cmpwi 25, 0x4
    addi 30, 30, 0x5
    .4byte 0x4180FFB8 # blt .L_803F71E4
    clrlwi. 0, 28, 24
    .4byte 0x41820024 # beq .L_803F7258
    clrlwi. 0, 27, 24
    .4byte 0x4182001C # beq .L_803F7258
    clrlwi. 0, 26, 24
    .4byte 0x41820014 # beq .L_803F7258
    lwz 3, 0x1c4(31)
    li 0, 0xb
    stw 3, 0x1c8(31)
    stw 0, 0x1c4(31)
L_803F7258:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_803F726C:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 19, 0x2c(1)
    mr 23, 3
    lis 3, lbl_80478A60@ha
    lwz 0, 0x1ac(23)
    addi 31, 3, lbl_80478A60@l
    cmpwi 0, 0x2
    .4byte 0x41820060 # beq .L_803F7300
    lwz 3, 0x210(23)
    cmpwi 3, 0x64
    .4byte 0x40800010 # bge .L_803F72BC
    li 0, 0x0
    stw 0, 0x210(23)
    .4byte 0x48000048 # b .L_803F7300
L_803F72BC:
    cmpwi 3, 0x70
    .4byte 0x40800010 # bge .L_803F72D0
    addi 0, 3, 0x1
    stw 0, 0x210(23)
    .4byte 0x48000034 # b .L_803F7300
L_803F72D0:
    cmpwi 3, 0xd4
    .4byte 0x40800010 # bge .L_803F72E4
    li 0, 0x70
    stw 0, 0x210(23)
    .4byte 0x48000020 # b .L_803F7300
L_803F72E4:
    addi 0, 3, 0x1
    stw 0, 0x210(23)
    lwz 0, 0x210(23)
    cmpwi 0, 0xe0
    .4byte 0x4180000C # blt .L_803F7300
    li 0, 0x0
    stw 0, 0x210(23)
L_803F7300:
    lha 3, 0x240(23)
    addi 0, 3, 0x1
    sth 0, 0x240(23)
    lha 3, 0x240(23)
    cmpwi 3, 0x14
    .4byte 0x40810188 # ble .L_803F749C
    cmpwi 3, 0x1c
    .4byte 0x40800100 # bge .L_803F741C
    subi 3, 3, 0x14
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x18(1)
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    .4byte 0xC0A207B4 # lfs f5, lbl_80543754@sda21(r0)
    stw 0, 0x20(1)
    xoris 0, 3, 0x8000
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 3, 0x18(1)
    fsubs 3, 3, 4
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfs 2, 0x164(23)
    lha 3, 0x240(23)
    subi 0, 3, 0x14
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F7394
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F73A4
L_803F7394:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F73A4
    fmr 31, 0
L_803F73A4:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x5f0
    li 24, 0x0
    lis 22, 0x4330
L_803F73B4:
    lwz 3, 0xc(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x312
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803F73B4
    .4byte 0x48000084 # b .L_803F749C
L_803F741C:
    .4byte 0xC00207B4 # lfs f0, lbl_80543754@sda21(r0)
    addi 21, 31, 0x5f0
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    stfs 0, 0x164(23)
    lis 22, 0x4330
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
L_803F7438:
    lwz 3, 0xc(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x312
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803F7438
L_803F749C:
    lha 0, 0x240(23)
    cmpwi 0, 0x0
    .4byte 0x4081004C # ble .L_803F74F0
    cmpwi 0, 0xa
    .4byte 0x4080003C # bge .L_803F74E8
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x20(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC0020818 # lfs f0, lbl_805437B8@sda21(r0)
    .4byte 0xC06207B4 # lfs f3, lbl_80543754@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x24(1)
    lfd 1, 0x20(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    stfs 0, 0x168(23)
    .4byte 0x4800000C # b .L_803F74F0
L_803F74E8:
    .4byte 0xC00207B4 # lfs f0, lbl_80543754@sda21(r0)
    stfs 0, 0x168(23)
L_803F74F0:
    lwz 0, 0x1a8(23)
    li 4, 0x0
    addi 29, 1, 0x10
    cmpw 4, 0
    mr 3, 29
    .4byte 0x4182000C # beq .L_803F7510
    sth 4, 0x0(29)
    addi 3, 29, 0x2
L_803F7510:
    lwz 0, 0x1a8(23)
    li 4, 0x1
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_803F7528
    sth 4, 0x0(3)
    addi 3, 3, 0x2
L_803F7528:
    lwz 0, 0x1a8(23)
    li 4, 0x2
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_803F753C
    sth 4, 0x0(3)
L_803F753C:
    lwz 0, 0x1cc(23)
    cmpwi 0, 0x0
    .4byte 0x408201E0 # bne .L_803F7724
    li 30, 0x0
    mr 28, 23
    mr 27, 30
    mr 26, 23
    addi 25, 31, 0x690
    li 24, 0x0
    li 29, 0xa
L_803F7564:
    lha 0, 0x240(23)
    cmpw 0, 30
    .4byte 0x40810190 # ble .L_803F76FC
    cmpw 0, 29
    .4byte 0x40800104 # bge .L_803F7678
    subf 3, 30, 0
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x20(1)
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420818 # lfs f2, lbl_805437B8@sda21(r0)
    .4byte 0xC0A207BC # lfs f5, lbl_8054375C@sda21(r0)
    stw 0, 0x18(1)
    xoris 0, 3, 0x8000
    .4byte 0xC022081C # lfs f1, lbl_805437BC@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 3, 0x20(1)
    fsubs 3, 3, 4
    fdivs 2, 3, 2
    fmuls 2, 5, 2
    stfs 2, 0x184(28)
    lha 0, 0x240(23)
    subf 0, 27, 0
    subfic 0, 0, 0xa
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F75EC
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F75FC
L_803F75EC:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F75FC
    fmr 31, 0
L_803F75FC:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    mr 20, 26
    mr 19, 25
    li 21, 0x0
    lis 22, 0x4330
L_803F7610:
    lwz 3, 0xc(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(20)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 22, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x5
    addi 20, 20, 0x1
    .4byte 0x4180FFA0 # blt .L_803F7610
    .4byte 0x48000088 # b .L_803F76FC
L_803F7678:
    .4byte 0xC00207BC # lfs f0, lbl_8054375C@sda21(r0)
    mr 19, 26
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mr 20, 25
    stfs 0, 0x184(28)
    li 21, 0x0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    lis 22, 0x4330
L_803F7698:
    lwz 3, 0xc(23)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(19)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 22, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x5
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803F7698
L_803F76FC:
    addi 24, 24, 0x1
    addi 29, 29, 0xa
    cmpwi 24, 0x3
    addi 28, 28, 0x4
    addi 27, 27, 0x1e
    addi 26, 26, 0x5
    addi 25, 25, 0x28
    addi 30, 30, 0xa
    .4byte 0x4180FE48 # blt .L_803F7564
    .4byte 0x480003C8 # b .L_803F7AE8
L_803F7724:
    li 26, 0x0
    li 24, 0x0
    mr 28, 26
    li 27, 0xa
L_803F7734:
    lha 0, 0x240(23)
    cmpw 0, 26
    .4byte 0x408101C0 # ble .L_803F78FC
    cmpw 0, 27
    .4byte 0x4080011C # bge .L_803F7860
    subf 0, 26, 0
    lis 5, 0x4330
    mullw 0, 0, 0
    lha 4, 0x0(29)
    stw 5, 0x20(1)
    slwi 3, 4, 2
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420818 # lfs f2, lbl_805437B8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC0A207BC # lfs f5, lbl_8054375C@sda21(r0)
    stw 0, 0x24(1)
    addi 0, 3, 0x184
    .4byte 0xC022081C # lfs f1, lbl_805437BC@sda21(r0)
    lfd 0, 0x20(1)
    stw 5, 0x18(1)
    fsubs 3, 0, 4
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fdivs 2, 3, 2
    fmuls 2, 5, 2
    stfsx 2, 23, 0
    lha 0, 0x240(23)
    subf 0, 28, 0
    subfic 0, 0, 0xa
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F77C8
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F77D8
L_803F77C8:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F77D8
    fmr 31, 0
L_803F77D8:
    mulli 3, 4, 0x5
    addi 20, 31, 0x690
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 21, 0x0
    lis 25, 0x4330
    mulli 0, 4, 0x28
    add 19, 23, 3
    add 20, 20, 0
L_803F77F8:
    lwz 3, 0xc(23)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(19)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 25, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x5
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803F77F8
    .4byte 0x480000A0 # b .L_803F78FC
L_803F7860:
    lha 5, 0x0(29)
    addi 25, 31, 0x690
    .4byte 0xC00207BC # lfs f0, lbl_8054375C@sda21(r0)
    li 21, 0x0
    slwi 4, 5, 2
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mulli 3, 5, 0x5
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    addi 0, 4, 0x184
    stfsx 0, 23, 0
    lis 30, 0x4330
    mulli 0, 5, 0x28
    add 19, 23, 3
    add 25, 25, 0
L_803F7898:
    lwz 3, 0xc(23)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(19)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 30, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 25, 25, 0x8
    cmpwi 21, 0x5
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803F7898
L_803F78FC:
    addi 24, 24, 0x1
    addi 27, 27, 0xa
    cmpwi 24, 0x2
    addi 29, 29, 0x2
    addi 28, 28, 0x1e
    addi 26, 26, 0xa
    .4byte 0x4180FE20 # blt .L_803F7734
    lha 3, 0x240(23)
    cmpwi 3, 0xf
    .4byte 0x408101C8 # ble .L_803F7AE8
    cmpwi 3, 0x17
    .4byte 0x40800120 # bge .L_803F7A48
    subi 0, 3, 0xf
    lis 4, 0x4330
    mullw 3, 0, 0
    lwz 0, 0x1a8(23)
    stw 4, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC0A207BC # lfs f5, lbl_8054375C@sda21(r0)
    stw 3, 0x24(1)
    add 3, 23, 0
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    lfd 0, 0x20(1)
    stw 4, 0x18(1)
    fsubs 3, 0, 4
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfs 2, 0x184(3)
    lha 3, 0x240(23)
    lwz 4, 0x1a8(23)
    subi 0, 3, 0xf
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F79B0
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F79C0
L_803F79B0:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F79C0
    fmr 31, 0
L_803F79C0:
    mulli 3, 4, 0x5
    addi 20, 31, 0x690
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 21, 0x0
    lis 24, 0x4330
    mulli 0, 4, 0x28
    add 19, 23, 3
    add 20, 20, 0
L_803F79E0:
    lwz 3, 0xc(23)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(19)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 24, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x5
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803F79E0
    .4byte 0x480000A4 # b .L_803F7AE8
L_803F7A48:
    lwz 0, 0x1a8(23)
    addi 20, 31, 0x690
    .4byte 0xC00207BC # lfs f0, lbl_8054375C@sda21(r0)
    li 21, 0x0
    slwi 0, 0, 2
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    add 3, 23, 0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    stfs 0, 0x184(3)
    lis 24, 0x4330
    lwz 0, 0x1a8(23)
    mulli 3, 0, 0x5
    mulli 0, 0, 0x28
    add 19, 23, 3
    add 20, 20, 0
L_803F7A84:
    lwz 3, 0xc(23)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(19)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 24, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x5
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803F7A84
L_803F7AE8:
    lha 3, 0x240(23)
    cmpwi 3, 0xf
    .4byte 0x40810188 # ble .L_803F7C78
    cmpwi 3, 0x17
    .4byte 0x40800100 # bge .L_803F7BF8
    subi 3, 3, 0xf
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x20(1)
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    .4byte 0xC0A207C0 # lfs f5, lbl_80543760@sda21(r0)
    stw 0, 0x18(1)
    xoris 0, 3, 0x8000
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 3, 0x20(1)
    fsubs 3, 3, 4
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfs 2, 0x198(23)
    lha 3, 0x240(23)
    subi 0, 3, 0xf
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F7B70
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F7B80
L_803F7B70:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F7B80
    fmr 31, 0
L_803F7B80:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 19, 31, 0x708
    li 21, 0x0
    lis 24, 0x4330
L_803F7B90:
    lwz 3, 0xc(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x335
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x1a
    .4byte 0x4180FFA0 # blt .L_803F7B90
    .4byte 0x48000084 # b .L_803F7C78
L_803F7BF8:
    .4byte 0xC00207C0 # lfs f0, lbl_80543760@sda21(r0)
    addi 19, 31, 0x708
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 21, 0x0
    stfs 0, 0x198(23)
    lis 24, 0x4330
    .4byte 0xC3E2078C # lfs f31, lbl_8054372C@sda21(r0)
L_803F7C14:
    lwz 3, 0xc(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x335
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x1a
    .4byte 0x4180FFA0 # blt .L_803F7C14
L_803F7C78:
    lha 0, 0x240(23)
    cmpwi 0, 0x30
    .4byte 0x418001B0 # blt .L_803F7E30
    lwz 0, 0x1cc(23)
    cmpwi 0, 0x0
    .4byte 0x408200A8 # bne .L_803F7D34
    lwz 0, 0x1c4(23)
    lis 3, lbl_80529DEC@ha
    li 6, 0xd
    li 5, 0x6
    stw 0, 0x1c8(23)
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x0
    stw 6, 0x1c4(23)
    stw 5, 0x350(23)
    stb 0, 0x23e(4)
    lwz 0, 0x1ac(23)
    cmpwi 0, 0x1
    .4byte 0x40820168 # bne .L_803F7E28
    lwz 0, 0x64(4)
    cmpwi 0, -0x1
    .4byte 0x4082015C # bne .L_803F7E28
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    lwz 3, 0xb4(5)
    .4byte 0xC04207A8 # lfs f2, lbl_80543748@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x3
    .4byte 0x41800008 # blt .L_803F7D2C
    li 0, 0x2
L_803F7D2C:
    stw 0, 0x64(4)
    .4byte 0x480000F8 # b .L_803F7E28
L_803F7D34:
    lwz 0, 0x1a8(23)
    cmpwi 0, 0x0
    .4byte 0x408200A8 # bne .L_803F7DE4
    lwz 0, 0x1c4(23)
    lis 3, lbl_80529DEC@ha
    li 6, 0xd
    li 5, 0x6
    stw 0, 0x1c8(23)
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x0
    stw 6, 0x1c4(23)
    stw 5, 0x350(23)
    stb 0, 0x23e(4)
    lwz 0, 0x1ac(23)
    cmpwi 0, 0x1
    .4byte 0x408200B8 # bne .L_803F7E28
    lwz 0, 0x64(4)
    cmpwi 0, -0x1
    .4byte 0x408200AC # bne .L_803F7E28
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    lwz 3, 0xb4(5)
    .4byte 0xC04207A8 # lfs f2, lbl_80543748@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x3
    .4byte 0x41800008 # blt .L_803F7DDC
    li 0, 0x2
L_803F7DDC:
    stw 0, 0x64(4)
    .4byte 0x48000048 # b .L_803F7E28
L_803F7DE4:
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_803F7E0C
    lbz 0, 0x25e(23)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_803F7E28
    li 3, 0xa
    li 0, 0x1
    stw 3, 0x1cc(23)
    stb 0, 0x25e(23)
    .4byte 0x48000020 # b .L_803F7E28
L_803F7E0C:
    lbz 0, 0x25e(23)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803F7E28
    li 3, 0xc
    li 0, 0x1
    stw 3, 0x1cc(23)
    stb 0, 0x25e(23)
L_803F7E28:
    li 0, 0x0
    sth 0, 0x240(23)
L_803F7E30:
    lwz 3, 0x1d0(23)
    addi 0, 3, 0x1
    stw 0, 0x1d0(23)
    lwz 0, 0x1d0(23)
    cmpwi 0, 0x1e
    .4byte 0x4180000C # blt .L_803F7E50
    li 0, 0x0
    stw 0, 0x1d0(23)
L_803F7E50:
    lwz 3, 0xc(23)
    lis 5, 0x6262
    lis 4, 0x506d
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x160(23)
    lfs 0, 0x164(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x15c(23)
    mtctr 12
    bctrl
    lwz 3, 0x74(23)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 2, 0x168(23)
    bl fn_80402E08
    lwz 3, 0xc(23)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x16c(23)
    lfs 0, 0x184(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x178(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 5, 0x6e62
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x170(23)
    lfs 0, 0x188(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x17c(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x174(23)
    lfs 0, 0x18c(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x180(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 5, 0x6b6b
    lis 4, 0x506c
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6962
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x190(23)
    lfs 0, 0x198(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x194(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x726f
    lwz 3, 0xc(23)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 0, 0x1a8(23)
    fmr 2, 31
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lfs 1, 0xf4(23)
    add 4, 23, 0
    lwz 12, 0x10(12)
    lfs 0, 0x184(4)
    fadds 1, 1, 0
    mtctr 12
    bctrl
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 19, 0x2c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_803F8050:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lha 3, 0x240(3)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_803F8090
    addi 0, 3, 0x1
    sth 0, 0x240(31)
    lha 0, 0x240(31)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_803F8090
    li 0, 0x0
    sth 0, 0x240(31)
L_803F8090:
    lwz 3, 0x210(31)
    addi 0, 3, 0x1
    stw 0, 0x210(31)
    lwz 0, 0x210(31)
    cmpwi 0, 0x1e
    .4byte 0x4180000C # blt .L_803F80B0
    li 0, 0x0
    stw 0, 0x210(31)
L_803F80B0:
    lwz 3, 0x1ac(31)
    lwz 4, 0x1c0(31)
    addi 0, 3, 0x2
    cmpw 4, 0
    .4byte 0x41820028 # beq .L_803F80E8
    li 0, 0xff
    lis 3, lbl_804B0BDC@ha
    addi 4, 3, lbl_804B0BDC@l
    stb 0, 0x25c(31)
    mr 3, 31
    addi 12, 4, 0x24
    bl __ptmf_scall
    nop
    .4byte 0x48000238 # b .L_803F831C
L_803F80E8:
    lis 4, lbl_80529DEC@ha
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 30, 4, lbl_80529DEC@l
    li 4, 0x1100
    lbz 5, 0x23d(30)
    addi 5, 5, 0x2
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820108 # beq .L_803F8210
    lwz 0, 0x1a8(31)
    cmpwi 0, 0x3
    .4byte 0x408000E8 # bge .L_803F81FC
    li 0, 0xd
    li 3, 0x0
    stw 0, 0x1cc(31)
    li 0, 0x5
    sth 3, 0x240(31)
    stw 0, 0x1d0(31)
    lwz 0, 0x1a8(31)
    cmpwi 0, 0x0
    .4byte 0x408200B4 # bne .L_803F81EC
    li 0, 0x4
    mr 4, 3
    mtctr 0
L_803F8148:
    lwz 5, 0x1ac(31)
    addi 0, 5, 0x2
    cmpw 3, 0
    .4byte 0x40800054 # bge .L_803F81A8
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    li 7, 0x1
    slw 5, 7, 3
    li 0, 0x3
    lbz 8, 0x82(9)
    clrlwi 6, 5, 24
    slw 5, 0, 4
    slw 0, 7, 4
    or 6, 8, 6
    stb 6, 0x82(9)
    clrlwi 5, 5, 24
    clrlwi 0, 0, 24
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lbz 6, 0x83(7)
    andc 5, 6, 5
    stb 5, 0x83(7)
    lbz 5, 0x83(7)
    or 0, 5, 0
    stb 0, 0x83(7)
    .4byte 0x4800003C # b .L_803F81E0
L_803F81A8:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 5, 0, 3
    lbz 6, 0x82(7)
    clrlwi 5, 5, 24
    li 0, 0x3
    andc 5, 6, 5
    stb 5, 0x82(7)
    slw 0, 0, 4
    clrlwi 0, 0, 24
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lbz 5, 0x83(6)
    andc 0, 5, 0
    stb 0, 0x83(6)
L_803F81E0:
    addi 4, 4, 0x2
    addi 3, 3, 0x1
    .4byte 0x4200FF60 # bdnz .L_803F8148
L_803F81EC:
    lwz 3, 0x1c4(31)
    li 0, 0x9
    stw 3, 0x1c8(31)
    stw 0, 0x1c4(31)
L_803F81FC:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000110 # b .L_803F831C
L_803F8210:
    lbz 5, 0x23d(30)
    li 4, 0x200
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 5, 5, 0x2
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_803F8260
    li 0, 0x0
    lis 3, lbl_804B0BDC@ha
    addi 4, 3, lbl_804B0BDC@l
    stw 0, 0x1cc(31)
    mr 3, 31
    addi 12, 4, 0x6c
    bl __ptmf_scall
    nop
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480000C0 # b .L_803F831C
L_803F8260:
    lbz 5, 0x23d(30)
    li 4, 0x4
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 5, 5, 0x2
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_803F82C0
    lwz 3, 0x1a8(31)
    addi 0, 3, 0x1
    stw 0, 0x1a8(31)
    lwz 0, 0x1a8(31)
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_803F829C
    li 0, 0x0
    stw 0, 0x1a8(31)
L_803F829C:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0x240(31)
    li 4, 0x26
    li 5, -0x1
    stw 0, 0x1d0(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000060 # b .L_803F831C
L_803F82C0:
    lbz 5, 0x23d(30)
    li 4, 0x8
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 5, 5, 0x2
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_803F831C
    lwz 3, 0x1a8(31)
    subi 0, 3, 0x1
    stw 0, 0x1a8(31)
    lwz 0, 0x1a8(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803F82FC
    li 0, 0x2
    stw 0, 0x1a8(31)
L_803F82FC:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0x240(31)
    li 4, 0x26
    li 5, -0x1
    stw 0, 0x1d0(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803F831C:
    lwz 3, 0x1d0(31)
    addi 0, 3, 0x1
    stw 0, 0x1d0(31)
    lwz 0, 0x1d0(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_803F833C
    li 0, 0x0
    stw 0, 0x1d0(31)
L_803F833C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803F8354:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 19, 0x1c(1)
    mr 23, 3
    lis 4, lbl_80478A60@ha
    lha 3, 0x240(3)
    addi 31, 4, lbl_80478A60@l
    addi 0, 3, 0x1
    sth 0, 0x240(23)
    lha 0, 0x240(23)
    cmpwi 0, 0x0
    .4byte 0x40810180 # ble .L_803F8514
    cmpwi 0, 0x19
    .4byte 0x408000F8 # bge .L_803F8494
    subfic 3, 0, 0x19
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC0620820 # lfs f3, lbl_805437C0@sda21(r0)
    .4byte 0xC04207B4 # lfs f2, lbl_80543754@sda21(r0)
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC02207E8 # lfs f1, lbl_80543788@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 4, 0x8(1)
    fsubs 4, 4, 5
    fdivs 3, 4, 3
    fmuls 2, 2, 3
    stfs 2, 0x164(23)
    lha 0, 0x240(23)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F840C
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F841C
L_803F840C:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F841C
    fmr 31, 0
L_803F841C:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x5f0
    li 24, 0x0
    lis 22, 0x4330
L_803F842C:
    lwz 3, 0xc(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x312
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803F842C
    .4byte 0x48000084 # b .L_803F8514
L_803F8494:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 21, 31, 0x5f0
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    stfs 0, 0x164(23)
    lis 22, 0x4330
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
L_803F84B0:
    lwz 3, 0xc(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x312
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803F84B0
L_803F8514:
    lha 3, 0x240(23)
    cmpwi 3, 0x19
    .4byte 0x40810054 # ble .L_803F8570
    cmpwi 3, 0x2d
    .4byte 0x40800044 # bge .L_803F8568
    subi 3, 3, 0x19
    lis 0, 0x4330
    subfic 3, 3, 0x14
    stw 0, 0x10(1)
    mullw 0, 3, 3
    .4byte 0xC86207A0 # lfd f3, lbl_80543740@sda21(r0)
    .4byte 0xC02207D8 # lfs f1, lbl_80543778@sda21(r0)
    .4byte 0xC00207B4 # lfs f0, lbl_80543754@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 3
    fdivs 1, 2, 1
    fmuls 0, 0, 1
    stfs 0, 0x168(23)
    .4byte 0x4800000C # b .L_803F8570
L_803F8568:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 0, 0x168(23)
L_803F8570:
    li 30, 0x0
    mr 27, 23
    mr 28, 30
    mr 26, 23
    addi 25, 31, 0x690
    li 24, 0x0
    li 29, 0xf
L_803F858C:
    lha 0, 0x240(23)
    cmpw 0, 30
    .4byte 0x40810190 # ble .L_803F8724
    cmpw 0, 29
    .4byte 0x40800104 # bge .L_803F86A0
    subf 3, 28, 0
    lis 0, 0x4330
    subfic 3, 3, 0xf
    stw 0, 0x10(1)
    mullw 3, 3, 3
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC06207EC # lfs f3, lbl_8054378C@sda21(r0)
    .4byte 0xC04207BC # lfs f2, lbl_8054375C@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0220824 # lfs f1, lbl_805437C4@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stw 0, 0x14(1)
    lfd 4, 0x10(1)
    fsubs 4, 4, 5
    fdivs 3, 4, 3
    fmuls 2, 2, 3
    stfs 2, 0x184(27)
    lha 0, 0x240(23)
    subf 0, 28, 0
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 2, 0x8(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F8614
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F8624
L_803F8614:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F8624
    fmr 31, 0
L_803F8624:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    mr 20, 26
    mr 19, 25
    li 21, 0x0
    lis 22, 0x4330
L_803F8638:
    lwz 3, 0xc(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(20)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lwz 12, 0x24(12)
    stw 22, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x5
    addi 20, 20, 0x1
    .4byte 0x4180FFA0 # blt .L_803F8638
    .4byte 0x48000088 # b .L_803F8724
L_803F86A0:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    mr 19, 26
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mr 20, 25
    stfs 0, 0x184(27)
    li 21, 0x0
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
    lis 22, 0x4330
L_803F86C0:
    lwz 3, 0xc(23)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(19)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lwz 12, 0x24(12)
    stw 22, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x5
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803F86C0
L_803F8724:
    addi 24, 24, 0x1
    addi 29, 29, 0xa
    cmpwi 24, 0x3
    addi 28, 28, 0xa
    addi 27, 27, 0x4
    addi 26, 26, 0x5
    addi 25, 25, 0x28
    addi 30, 30, 0xa
    .4byte 0x4180FE48 # blt .L_803F858C
    lha 0, 0x240(23)
    cmpwi 0, 0x0
    .4byte 0x40810180 # ble .L_803F88D0
    cmpwi 0, 0xf
    .4byte 0x408000F8 # bge .L_803F8850
    subfic 3, 0, 0xf
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x10(1)
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC06207EC # lfs f3, lbl_8054378C@sda21(r0)
    .4byte 0xC04207C0 # lfs f2, lbl_80543760@sda21(r0)
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC0220824 # lfs f1, lbl_805437C4@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 4, 0x10(1)
    fsubs 4, 4, 5
    fdivs 3, 4, 3
    fmuls 2, 2, 3
    stfs 2, 0x198(23)
    lha 0, 0x240(23)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 2, 0x8(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F87C8
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F87D8
L_803F87C8:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F87D8
    fmr 31, 0
L_803F87D8:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 19, 31, 0x708
    li 21, 0x0
    lis 24, 0x4330
L_803F87E8:
    lwz 3, 0xc(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x335
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x1a
    .4byte 0x4180FFA0 # blt .L_803F87E8
    .4byte 0x48000084 # b .L_803F88D0
L_803F8850:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 19, 31, 0x708
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 21, 0x0
    stfs 0, 0x198(23)
    lis 24, 0x4330
    .4byte 0xC3E20790 # lfs f31, lbl_80543730@sda21(r0)
L_803F886C:
    lwz 3, 0xc(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x335
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x1a
    .4byte 0x4180FFA0 # blt .L_803F886C
L_803F88D0:
    lha 0, 0x240(23)
    cmpwi 0, 0x4b
    .4byte 0x41800020 # blt .L_803F88F8
    li 3, 0x0
    li 0, 0x8
    sth 3, 0x240(23)
    sth 3, 0x240(23)
    lwz 3, 0x1c4(23)
    stw 3, 0x1c8(23)
    stw 0, 0x1c4(23)
L_803F88F8:
    lwz 3, 0xc(23)
    lis 5, 0x6262
    lis 4, 0x506d
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x160(23)
    lfs 0, 0x164(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x15c(23)
    mtctr 12
    bctrl
    lwz 3, 0x74(23)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 2, 0x168(23)
    bl fn_80402E08
    lwz 3, 0xc(23)
    lis 5, 0x6162
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x16c(23)
    lfs 0, 0x184(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x178(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 5, 0x6e62
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x170(23)
    lfs 0, 0x188(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x17c(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x174(23)
    lfs 0, 0x18c(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x180(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 5, 0x6b6b
    lis 4, 0x506c
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6962
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x190(23)
    lfs 0, 0x198(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x194(23)
    mtctr 12
    bctrl
    lwz 3, 0xc(23)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x726f
    lwz 3, 0xc(23)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 2, 31
    lfs 1, 0xf4(23)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 19, 0x1c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803F8AE4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 28, 3
    lbz 0, 0x25c(3)
    cmplwi 0, 0xff
    .4byte 0x4082003C # bne .L_803F8B50
    lwz 5, 0x1ac(28)
    li 4, 0xc4
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    li 6, 0x0
    addi 0, 5, 0x2
    clrlwi 5, 0, 24
    bl fn_80431A9C
    li 3, 0x0
    li 0, 0x6
    stb 3, 0x25c(28)
    lwz 3, 0x1c4(28)
    stw 3, 0x1c8(28)
    stw 0, 0x1c4(28)
    .4byte 0x48000130 # b .L_803F8C7C
L_803F8B50:
    lis 4, lbl_80529DEC@ha
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 29, 4, lbl_80529DEC@l
    li 4, 0x1100
    lbz 5, 0x23d(29)
    addi 5, 5, 0x2
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418200CC # beq .L_803F8C3C
    lwz 3, 0x1ac(28)
    lwz 0, 0x1c0(28)
    addi 4, 3, 0x2
    cmpw 0, 4
    .4byte 0x40820088 # bne .L_803F8C0C
    li 0, 0x0
    mr 29, 28
    stw 0, 0x1a8(28)
    li 30, 0x0
L_803F8B98:
    mr 3, 30
    bl fn_80403414
    stw 3, 0x1e0(29)
    mr 3, 30
    bl fn_804033D4
    stw 3, 0x1f0(29)
    mr 3, 30
    bl fn_8040336C
    addi 30, 30, 0x1
    stw 3, 0x200(29)
    cmpwi 30, 0x4
    addi 29, 29, 0x4
    .4byte 0x4180FFD0 # blt .L_803F8B98
    li 6, 0x1
    li 3, 0x0
    stw 6, 0x1b0(28)
    li 0, 0x4
    li 4, 0xb
    li 5, -0x1
    stw 6, 0x1b4(28)
    stw 6, 0x1b8(28)
    stw 6, 0x1bc(28)
    sth 3, 0x240(28)
    lwz 3, 0x1c4(28)
    stw 3, 0x1c8(28)
    stw 0, 0x1c4(28)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000074 # b .L_803F8C7C
L_803F8C0C:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    clrlwi 5, 4, 24
    li 4, 0xc4
    li 6, 0x0
    bl fn_80431A9C
    li 3, 0x0
    li 0, 0x6
    stb 3, 0x25c(28)
    lwz 3, 0x1c4(28)
    stw 3, 0x1c8(28)
    stw 0, 0x1c4(28)
    .4byte 0x48000044 # b .L_803F8C7C
L_803F8C3C:
    lbz 5, 0x23d(29)
    li 4, 0x200
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 5, 5, 0x2
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_803F8C7C
    lis 4, lbl_804B0BDC@ha
    mr 3, 28
    addi 12, 4, lbl_804B0BDC@l
    bl __ptmf_scall
    nop
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
L_803F8C7C:
    lwz 3, 0x1d0(28)
    addi 0, 3, 0x1
    stw 0, 0x1d0(28)
    lwz 0, 0x1d0(28)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_803F8C9C
    li 0, 0x0
    stw 0, 0x1d0(28)
L_803F8C9C:
    lha 3, 0x248(28)
    addi 0, 3, 0x1
    sth 0, 0x248(28)
    lha 0, 0x248(28)
    cmpwi 0, 0x64
    .4byte 0x4180000C # blt .L_803F8CBC
    li 0, 0x0
    sth 0, 0x248(28)
L_803F8CBC:
    lha 3, 0x24a(28)
    addi 0, 3, 0x1
    sth 0, 0x24a(28)
    lha 0, 0x24a(28)
    cmpwi 0, 0x64
    .4byte 0x4180000C # blt .L_803F8CDC
    li 0, 0x0
    sth 0, 0x24a(28)
L_803F8CDC:
    lis 3, lbl_80479238@ha
    mr 31, 28
    addi 30, 3, lbl_80479238@l
    li 29, 0x0
L_803F8CEC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 0, 29, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820270 # beq .L_803F8F78
    lwz 3, 0x210(31)
    addi 0, 3, 0x1
    stw 0, 0x210(31)
    lwz 0, 0x210(31)
    cmpwi 0, 0x82
    .4byte 0x4180000C # blt .L_803F8D2C
    li 0, 0x64
    stw 0, 0x210(31)
L_803F8D2C:
    lwz 0, 0x210(31)
    cmpwi 0, 0xb
    .4byte 0x40820040 # bne .L_803F8D74
    lwz 5, 0x78(31)
    li 6, 0x0
    lis 3, 0x1
    addi 4, 1, 0xc
    stb 6, 0x44(5)
    addi 0, 3, 0x1
    lwz 3, 0x78(31)
    stb 6, 0x45(3)
    stw 0, 0xc(1)
    lwz 3, 0x78(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000210 # b .L_803F8F80
L_803F8D74:
    cmpwi 0, 0x24
    .4byte 0x40820208 # bne .L_803F8F80
    lwz 3, 0x8(28)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x8(28)
    fsubs 31, 1, 0
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 4, 0x4(4)
    lfs 0, 0x30(3)
    lhz 3, 0x4(4)
    stw 0, 0x28(1)
    fmadds 0, 31, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC0420800 # lfs f2, lbl_805437A0@sda21(r0)
    stw 0, 0x2c(1)
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    fmuls 2, 2, 0
    lfd 0, 0x28(1)
    lwz 5, 0x0(30)
    fsubs 0, 0, 1
    lwz 6, 0x4(30)
    fdivs 0, 2, 0
    stfs 0, 0x88(28)
    lwz 3, 0x8(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x8(28)
    fsubs 31, 1, 0
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 6, 0x4330
    lis 4, 0x2
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 7, 0x4(5)
    li 5, 0x0
    lfs 0, 0x34(3)
    addi 0, 4, 0xe
    lhz 3, 0x6(7)
    addi 4, 1, 0x8
    fmadds 0, 31, 1, 0
    .4byte 0xC0220788 # lfs f1, lbl_80543728@sda21(r0)
    xoris 3, 3, 0x8000
    stw 6, 0x30(1)
    .4byte 0xC0820804 # lfs f4, lbl_805437A4@sda21(r0)
    stw 3, 0x34(1)
    fadds 3, 1, 0
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    lfd 1, 0x30(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 3, 4, 3
    fsubs 1, 1, 2
    fdivs 1, 3, 1
    stfs 1, 0x8c(28)
    stfs 0, 0x90(28)
    lwz 3, 0x78(31)
    stb 5, 0x44(3)
    lwz 3, 0x78(31)
    stb 5, 0x45(3)
    stw 0, 0x8(1)
    lwz 3, 0x78(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lfs 3, 0x8c(28)
    addi 4, 1, 0x1c
    .4byte 0xC0420828 # lfs f2, lbl_805437C8@sda21(r0)
    li 3, 0x0
    .4byte 0xC022082C # lfs f1, lbl_805437CC@sda21(r0)
    li 5, 0xcb
    lfs 0, 0x88(28)
    fsubs 2, 3, 2
    lfs 3, 0x90(28)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    stfs 2, 0x20(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x1c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x24(1)
    bl fn_8013CC50
    lfs 3, 0x8c(28)
    addi 4, 1, 0x10
    .4byte 0xC0420828 # lfs f2, lbl_805437C8@sda21(r0)
    li 3, 0x0
    .4byte 0xC022082C # lfs f1, lbl_805437CC@sda21(r0)
    li 5, 0xcc
    lfs 0, 0x88(28)
    fsubs 2, 3, 2
    lfs 3, 0x90(28)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    stfs 2, 0x14(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x10(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x18(1)
    bl fn_8013CC50
    .4byte 0x4800000C # b .L_803F8F80
L_803F8F78:
    li 0, 0x0
    stw 0, 0x210(31)
L_803F8F80:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FD5C # blt .L_803F8CEC
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803F8FBC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 28, 3
    lbz 0, 0x25c(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_803F9028
    .4byte 0x40800010 # bge .L_803F9000
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_803F900C
    .4byte 0x4800007C # b .L_803F9078
L_803F9000:
    cmpwi 0, 0x4
    .4byte 0x40800074 # bge .L_803F9078
    .4byte 0x4800004C # b .L_803F9054
L_803F900C:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804317AC
    cmpwi 3, 0x0
    .4byte 0x41820104 # beq .L_803F911C
    li 0, 0x1
    stb 0, 0x25c(28)
    .4byte 0x480000F8 # b .L_803F911C
L_803F9028:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x418200E8 # beq .L_803F911C
    li 3, 0x0
    li 0, 0x5
    stb 3, 0x25c(28)
    lwz 3, 0x1c4(28)
    stw 3, 0x1c8(28)
    stw 0, 0x1c4(28)
    .4byte 0x480000CC # b .L_803F911C
L_803F9054:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x418200BC # beq .L_803F911C
    li 3, 0x0
    li 0, 0x2
    stb 3, 0x25c(28)
    stw 0, 0x350(28)
    .4byte 0x480000A8 # b .L_803F911C
L_803F9078:
    lwz 3, 0x1ac(28)
    lwz 4, 0x1c0(28)
    addi 0, 3, 0x2
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_803F90A8
    li 0, 0x2
    li 4, 0xb
    stb 0, 0x25c(28)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000078 # b .L_803F911C
L_803F90A8:
    lis 4, lbl_80529DEC@ha
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 29, 4, lbl_80529DEC@l
    li 4, 0x1100
    lbz 5, 0x23d(29)
    addi 5, 5, 0x2
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_803F90E8
    li 0, 0x2
    li 4, 0xb
    stb 0, 0x25c(28)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000038 # b .L_803F911C
L_803F90E8:
    lbz 5, 0x23d(29)
    li 4, 0x200
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    addi 5, 5, 0x2
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_803F911C
    li 0, 0x2
    li 4, 0xc
    stb 0, 0x25c(28)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803F911C:
    lha 3, 0x248(28)
    addi 0, 3, 0x1
    sth 0, 0x248(28)
    lha 0, 0x248(28)
    cmpwi 0, 0x64
    .4byte 0x4180000C # blt .L_803F913C
    li 0, 0x0
    sth 0, 0x248(28)
L_803F913C:
    lha 3, 0x24a(28)
    addi 0, 3, 0x1
    sth 0, 0x24a(28)
    lha 0, 0x24a(28)
    cmpwi 0, 0x64
    .4byte 0x4180000C # blt .L_803F915C
    li 0, 0x0
    sth 0, 0x24a(28)
L_803F915C:
    lis 3, lbl_80479238@ha
    mr 31, 28
    addi 30, 3, lbl_80479238@l
    li 29, 0x0
L_803F916C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 0, 29, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820270 # beq .L_803F93F8
    lwz 3, 0x210(31)
    addi 0, 3, 0x1
    stw 0, 0x210(31)
    lwz 0, 0x210(31)
    cmpwi 0, 0x82
    .4byte 0x4180000C # blt .L_803F91AC
    li 0, 0x64
    stw 0, 0x210(31)
L_803F91AC:
    lwz 0, 0x210(31)
    cmpwi 0, 0xb
    .4byte 0x40820040 # bne .L_803F91F4
    lwz 5, 0x78(31)
    li 6, 0x0
    lis 3, 0x1
    addi 4, 1, 0xc
    stb 6, 0x44(5)
    addi 0, 3, 0x1
    lwz 3, 0x78(31)
    stb 6, 0x45(3)
    stw 0, 0xc(1)
    lwz 3, 0x78(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000210 # b .L_803F9400
L_803F91F4:
    cmpwi 0, 0x24
    .4byte 0x40820208 # bne .L_803F9400
    lwz 3, 0x8(28)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x8(28)
    fsubs 31, 1, 0
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 4, 0x4(4)
    lfs 0, 0x30(3)
    lhz 3, 0x4(4)
    stw 0, 0x28(1)
    fmadds 0, 31, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC0420800 # lfs f2, lbl_805437A0@sda21(r0)
    stw 0, 0x2c(1)
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    fmuls 2, 2, 0
    lfd 0, 0x28(1)
    lwz 5, 0x0(30)
    fsubs 0, 0, 1
    lwz 6, 0x4(30)
    fdivs 0, 2, 0
    stfs 0, 0x88(28)
    lwz 3, 0x8(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x8(28)
    fsubs 31, 1, 0
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 6, 0x4330
    lis 4, 0x2
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 7, 0x4(5)
    li 5, 0x0
    lfs 0, 0x34(3)
    addi 0, 4, 0xe
    lhz 3, 0x6(7)
    addi 4, 1, 0x8
    fmadds 0, 31, 1, 0
    .4byte 0xC0220788 # lfs f1, lbl_80543728@sda21(r0)
    xoris 3, 3, 0x8000
    stw 6, 0x30(1)
    .4byte 0xC0820804 # lfs f4, lbl_805437A4@sda21(r0)
    stw 3, 0x34(1)
    fadds 3, 1, 0
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    lfd 1, 0x30(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 3, 4, 3
    fsubs 1, 1, 2
    fdivs 1, 3, 1
    stfs 1, 0x8c(28)
    stfs 0, 0x90(28)
    lwz 3, 0x78(31)
    stb 5, 0x44(3)
    lwz 3, 0x78(31)
    stb 5, 0x45(3)
    stw 0, 0x8(1)
    lwz 3, 0x78(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lfs 3, 0x8c(28)
    addi 4, 1, 0x1c
    .4byte 0xC0420828 # lfs f2, lbl_805437C8@sda21(r0)
    li 3, 0x0
    .4byte 0xC022082C # lfs f1, lbl_805437CC@sda21(r0)
    li 5, 0xcb
    lfs 0, 0x88(28)
    fsubs 2, 3, 2
    lfs 3, 0x90(28)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    stfs 2, 0x20(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x1c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x24(1)
    bl fn_8013CC50
    lfs 3, 0x8c(28)
    addi 4, 1, 0x10
    .4byte 0xC0420828 # lfs f2, lbl_805437C8@sda21(r0)
    li 3, 0x0
    .4byte 0xC022082C # lfs f1, lbl_805437CC@sda21(r0)
    li 5, 0xcc
    lfs 0, 0x88(28)
    fsubs 2, 3, 2
    lfs 3, 0x90(28)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    stfs 2, 0x14(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x10(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x18(1)
    bl fn_8013CC50
    .4byte 0x4800000C # b .L_803F9400
L_803F93F8:
    li 0, 0x0
    stw 0, 0x210(31)
L_803F9400:
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FD5C # blt .L_803F916C
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_803F943C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 22, 0x28(1)
    mr 26, 3
    lis 4, lbl_80478A60@ha
    lha 3, 0x240(3)
    addi 31, 4, lbl_80478A60@l
    addi 0, 3, 0x1
    sth 0, 0x240(26)
    lha 0, 0x240(26)
    cmpwi 0, 0x0
    .4byte 0x408102F0 # ble .L_803F976C
    cmpwi 0, 0x8
    .4byte 0x408001E8 # bge .L_803F966C
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x10(1)
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC0820810 # lfs f4, lbl_805437B0@sda21(r0)
    .4byte 0xC0C207C4 # lfs f6, lbl_80543764@sda21(r0)
    xoris 3, 3, 0x8000
    stw 0, 0x18(1)
    .4byte 0xC06207C8 # lfs f3, lbl_80543768@sda21(r0)
    stw 3, 0x14(1)
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0x20(1)
    fsubs 2, 0, 5
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 2, 2, 4
    fmuls 2, 6, 2
    stfs 2, 0x9c(26)
    lha 0, 0x240(26)
    mullw 0, 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 5
    fmuls 2, 2, 4
    fmuls 2, 3, 2
    stfs 2, 0xa8(26)
    lha 0, 0x240(26)
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 5
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F9520
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F9530
L_803F9520:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F9530
    fmr 31, 0
L_803F9530:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 24, 31, 0x3c0
    li 27, 0x0
    lis 25, 0x4330
L_803F9540:
    lwz 3, 0x8(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x2c4
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0x22
    .4byte 0x4180FFA0 # blt .L_803F9540
    lha 3, 0x240(26)
    lis 0, 0x4330
    stw 0, 0x20(1)
    subfic 0, 3, 0x8
    .4byte 0xC86207A0 # lfd f3, lbl_80543740@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 2, 0x20(1)
    fsubs 2, 2, 3
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F95E4
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F95F4
L_803F95E4:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F95F4
    fmr 31, 0
L_803F95F4:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 24, 31, 0x338
    li 27, 0x0
    lis 25, 0x4330
L_803F9604:
    lwz 3, 0x8(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x2af
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0xb
    .4byte 0x4180FFA0 # blt .L_803F9604
    .4byte 0x48000104 # b .L_803F976C
L_803F966C:
    .4byte 0xC02207C4 # lfs f1, lbl_80543764@sda21(r0)
    addi 24, 31, 0x3c0
    .4byte 0xC00207C8 # lfs f0, lbl_80543768@sda21(r0)
    li 27, 0x0
    stfs 1, 0x9c(26)
    lis 25, 0x4330
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    stfs 0, 0xa8(26)
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
L_803F9690:
    lwz 3, 0x8(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x2c4
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0x22
    .4byte 0x4180FFA0 # blt .L_803F9690
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    addi 24, 31, 0x338
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    li 27, 0x0
    lis 25, 0x4330
L_803F9708:
    lwz 3, 0x8(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x2af
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0xb
    .4byte 0x4180FFA0 # blt .L_803F9708
L_803F976C:
    lha 0, 0x240(26)
    cmpwi 0, 0x0
    .4byte 0x408101AC # ble .L_803F9920
    cmpwi 0, 0x8
    .4byte 0x40800120 # bge .L_803F989C
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x20(1)
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0620810 # lfs f3, lbl_805437B0@sda21(r0)
    .4byte 0xC0A207B4 # lfs f5, lbl_80543754@sda21(r0)
    xoris 3, 3, 0x8000
    stw 0, 0x18(1)
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    stw 3, 0x24(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 2, 0x20(1)
    stw 0, 0x10(1)
    fsubs 2, 2, 4
    fmuls 2, 2, 3
    fmuls 2, 5, 2
    stfs 2, 0xb4(26)
    lha 0, 0x240(26)
    mullw 0, 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fmuls 2, 2, 3
    fmuls 2, 5, 2
    stfs 2, 0xb8(26)
    lha 0, 0x240(26)
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F9814
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F9824
L_803F9814:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F9824
    fmr 31, 0
L_803F9824:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 24, 31, 0x390
    li 27, 0x0
    lis 25, 0x4330
L_803F9834:
    lwz 3, 0x8(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x2ba
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0x6
    .4byte 0x4180FFA0 # blt .L_803F9834
    .4byte 0x48000088 # b .L_803F9920
L_803F989C:
    .4byte 0xC00207B4 # lfs f0, lbl_80543754@sda21(r0)
    addi 24, 31, 0x390
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 27, 0x0
    stfs 0, 0xb4(26)
    lis 25, 0x4330
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    stfs 0, 0xb8(26)
L_803F98BC:
    lwz 3, 0x8(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 27, 0x2ba
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0x6
    .4byte 0x4180FFA0 # blt .L_803F98BC
L_803F9920:
    li 30, 0x0
    li 27, 0x0
    mr 28, 30
    li 29, 0x8
L_803F9930:
    lha 0, 0x240(26)
    cmpw 0, 30
    .4byte 0x408101C0 # ble .L_803F9AF8
    cmpw 0, 29
    .4byte 0x4080011C # bge .L_803F9A5C
    subf 0, 28, 0
    lis 4, 0x4330
    mullw 0, 0, 0
    subfic 5, 27, 0x3
    stw 4, 0x20(1)
    slwi 3, 5, 2
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC0A207CC # lfs f5, lbl_8054376C@sda21(r0)
    stw 0, 0x24(1)
    addi 0, 3, 0xdc
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    lfd 0, 0x20(1)
    stw 4, 0x18(1)
    fsubs 3, 0, 4
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfsx 2, 26, 0
    lha 0, 0x240(26)
    subf 0, 28, 0
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F99C4
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F99D4
L_803F99C4:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F99D4
    fmr 31, 0
L_803F99D4:
    mulli 3, 5, 0x9
    addi 22, 31, 0x4d0
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 24, 0x0
    lis 25, 0x4330
    mulli 0, 5, 0x48
    add 23, 26, 3
    add 22, 22, 0
L_803F99F4:
    lwz 3, 0x8(26)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x2ee(23)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 25, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 22, 22, 0x8
    cmpwi 24, 0x9
    addi 23, 23, 0x1
    .4byte 0x4180FFA0 # blt .L_803F99F4
    .4byte 0x480000A0 # b .L_803F9AF8
L_803F9A5C:
    subfic 5, 27, 0x3
    .4byte 0xC00207CC # lfs f0, lbl_8054376C@sda21(r0)
    slwi 4, 5, 2
    addi 23, 31, 0x4d0
    mulli 3, 5, 0x9
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 0, 4, 0xdc
    .4byte 0xC3E2078C # lfs f31, lbl_8054372C@sda21(r0)
    stfsx 0, 26, 0
    li 24, 0x0
    mulli 0, 5, 0x48
    add 22, 26, 3
    lis 25, 0x4330
    add 23, 23, 0
L_803F9A94:
    lwz 3, 0x8(26)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x2ee(22)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 25, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x9
    addi 22, 22, 0x1
    .4byte 0x4180FFA0 # blt .L_803F9A94
L_803F9AF8:
    addi 27, 27, 0x1
    addi 29, 29, 0x5
    cmpwi 27, 0x4
    addi 28, 28, 0x5
    addi 30, 30, 0x5
    .4byte 0x4180FE24 # blt .L_803F9930
    lha 0, 0x240(26)
    cmpwi 0, 0x17
    .4byte 0x41800180 # blt .L_803F9C98
    li 0, 0x4
    li 4, 0x0
    li 3, 0x0
    mtctr 0
L_803F9B2C:
    lwz 5, 0x1ac(26)
    addi 0, 5, 0x2
    cmpw 4, 0
    .4byte 0x40800054 # bge .L_803F9B8C
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    li 7, 0x1
    slw 5, 7, 4
    li 0, 0x3
    lbz 8, 0x82(9)
    clrlwi 6, 5, 24
    slw 5, 0, 3
    slw 0, 7, 3
    or 6, 8, 6
    stb 6, 0x82(9)
    clrlwi 5, 5, 24
    clrlwi 0, 0, 24
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lbz 6, 0x83(7)
    andc 5, 6, 5
    stb 5, 0x83(7)
    lbz 5, 0x83(7)
    or 0, 5, 0
    stb 0, 0x83(7)
    .4byte 0x4800003C # b .L_803F9BC4
L_803F9B8C:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 5, 0, 4
    lbz 6, 0x82(7)
    clrlwi 5, 5, 24
    li 0, 0x3
    andc 5, 6, 5
    stb 5, 0x82(7)
    slw 0, 0, 3
    clrlwi 0, 0, 24
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lbz 5, 0x83(6)
    andc 0, 5, 0
    stb 0, 0x83(6)
L_803F9BC4:
    addi 3, 3, 0x2
    addi 4, 4, 0x1
    .4byte 0x4200FF60 # bdnz .L_803F9B2C
    lwz 3, 0x1ac(26)
    lwz 4, 0x1c0(26)
    addi 0, 3, 0x2
    cmpw 4, 0
    .4byte 0x408200A8 # bne .L_803F9C88
    lwz 0, 0x1c4(26)
    lis 3, lbl_80529DEC@ha
    li 6, 0xd
    li 5, 0x6
    stw 0, 0x1c8(26)
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x0
    stw 6, 0x1c4(26)
    stw 5, 0x350(26)
    stb 0, 0x23e(4)
    lwz 0, 0x1ac(26)
    cmpwi 0, 0x1
    .4byte 0x4082007C # bne .L_803F9C90
    lwz 0, 0x64(4)
    cmpwi 0, -0x1
    .4byte 0x40820070 # bne .L_803F9C90
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    lwz 3, 0xb4(5)
    .4byte 0xC04207A8 # lfs f2, lbl_80543748@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x3
    .4byte 0x41800008 # blt .L_803F9C80
    li 0, 0x2
L_803F9C80:
    stw 0, 0x64(4)
    .4byte 0x4800000C # b .L_803F9C90
L_803F9C88:
    mr 3, 26
    bl fn_803F2B78
L_803F9C90:
    li 0, 0x0
    sth 0, 0x240(26)
L_803F9C98:
    lwz 3, 0x8(26)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x98(26)
    lfs 0, 0x9c(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x94(26)
    mtctr 12
    bctrl
    lwz 3, 0x8(26)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xa4(26)
    lfs 0, 0xa8(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xa0(26)
    mtctr 12
    bctrl
    lwz 3, 0x8(26)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xb0(26)
    lfs 0, 0xb4(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xac(26)
    mtctr 12
    bctrl
    lwz 3, 0x74(26)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 2, 0xb8(26)
    bl fn_80402E08
    lwz 3, 0x8(26)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xcc(26)
    lfs 0, 0xdc(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xbc(26)
    mtctr 12
    bctrl
    lwz 3, 0x8(26)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd0(26)
    lfs 0, 0xe0(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc0(26)
    mtctr 12
    bctrl
    lwz 3, 0x8(26)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3232
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd4(26)
    lfs 0, 0xe4(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc4(26)
    mtctr 12
    bctrl
    lwz 3, 0x8(26)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3332
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd8(26)
    lfs 0, 0xe8(26)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc8(26)
    mtctr 12
    bctrl
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 22, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803F9EA8:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stmw 19, 0x4c(1)
    mr 23, 3
    lis 4, lbl_80478A60@ha
    lha 3, 0x240(3)
    addi 31, 4, lbl_80478A60@l
    addi 0, 3, 0x1
    sth 0, 0x240(23)
    lha 0, 0x240(23)
    cmpwi 0, 0x0
    .4byte 0x408102EC # ble .L_803FA1D4
    cmpwi 0, 0x19
    .4byte 0x408001E8 # bge .L_803FA0D8
    subfic 3, 0, 0x19
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x28(1)
    .4byte 0xC8C207A0 # lfd f6, lbl_80543740@sda21(r0)
    .4byte 0xC0820820 # lfs f4, lbl_805437C0@sda21(r0)
    .4byte 0xC06207C4 # lfs f3, lbl_80543764@sda21(r0)
    stw 0, 0x30(1)
    xoris 3, 3, 0x8000
    .4byte 0xC04207C8 # lfs f2, lbl_80543768@sda21(r0)
    stw 3, 0x2c(1)
    .4byte 0xC02207E8 # lfs f1, lbl_80543788@sda21(r0)
    lfd 0, 0x28(1)
    stw 0, 0x38(1)
    fsubs 5, 0, 6
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fdivs 5, 5, 4
    fmuls 3, 3, 5
    stfs 3, 0x9c(23)
    lha 0, 0x240(23)
    subfic 0, 0, 0x19
    mullw 0, 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 3, 0x30(1)
    fsubs 3, 3, 6
    fdivs 3, 3, 4
    fmuls 2, 2, 3
    stfs 2, 0xa8(23)
    lha 0, 0x240(23)
    xoris 0, 0, 0x8000
    stw 0, 0x3c(1)
    lfd 2, 0x38(1)
    fsubs 2, 2, 6
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803F9F90
    fmr 31, 0
    .4byte 0x48000014 # b .L_803F9FA0
L_803F9F90:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803F9FA0
    fmr 31, 0
L_803F9FA0:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x3c0
    li 24, 0x0
    lis 22, 0x4330
L_803F9FB0:
    lwz 3, 0x8(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2c4
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x38(1)
    lwz 12, 0x24(12)
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x22
    .4byte 0x4180FFA0 # blt .L_803F9FB0
    lha 3, 0x240(23)
    lis 0, 0x4330
    stw 0, 0x38(1)
    xoris 0, 3, 0x8000
    .4byte 0xC86207A0 # lfd f3, lbl_80543740@sda21(r0)
    stw 0, 0x3c(1)
    .4byte 0xC02207E8 # lfs f1, lbl_80543788@sda21(r0)
    lfd 2, 0x38(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fsubs 2, 2, 3
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FA050
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FA060
L_803FA050:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FA060
    fmr 31, 0
L_803FA060:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x338
    li 24, 0x0
    lis 22, 0x4330
L_803FA070:
    lwz 3, 0x8(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2af
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x38(1)
    lwz 12, 0x24(12)
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0xb
    .4byte 0x4180FFA0 # blt .L_803FA070
    .4byte 0x48000100 # b .L_803FA1D4
L_803FA0D8:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 21, 31, 0x3c0
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    stfs 0, 0xa8(23)
    lis 22, 0x4330
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
    stfs 0, 0x9c(23)
L_803FA0F8:
    lwz 3, 0x8(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2c4
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x38(1)
    lwz 12, 0x24(12)
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x22
    .4byte 0x4180FFA0 # blt .L_803FA0F8
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    addi 21, 31, 0x338
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
    li 24, 0x0
    lis 22, 0x4330
L_803FA170:
    lwz 3, 0x8(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2af
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x38(1)
    lwz 12, 0x24(12)
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0xb
    .4byte 0x4180FFA0 # blt .L_803FA170
L_803FA1D4:
    lha 3, 0x240(23)
    cmpwi 3, 0x19
    .4byte 0x408101BC # ble .L_803FA398
    cmpwi 3, 0x2d
    .4byte 0x40800130 # bge .L_803FA314
    subi 3, 3, 0x19
    lis 0, 0x4330
    subfic 3, 3, 0x14
    stw 0, 0x38(1)
    mullw 3, 3, 3
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC08207D8 # lfs f4, lbl_80543778@sda21(r0)
    .4byte 0xC06207B4 # lfs f3, lbl_80543754@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0220830 # lfs f1, lbl_805437D0@sda21(r0)
    xoris 3, 3, 0x8000
    stw 0, 0x28(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stw 3, 0x3c(1)
    lfd 2, 0x38(1)
    fsubs 2, 2, 5
    fdivs 2, 2, 4
    fmuls 2, 3, 2
    stfs 2, 0xb4(23)
    lha 3, 0x240(23)
    subi 0, 3, 0x19
    subfic 0, 0, 0x14
    mullw 0, 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 2, 0x30(1)
    fsubs 2, 2, 5
    fdivs 2, 2, 4
    fmuls 2, 3, 2
    stfs 2, 0xb8(23)
    lha 3, 0x240(23)
    subi 0, 3, 0x19
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 2, 0x28(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FA28C
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FA29C
L_803FA28C:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FA29C
    fmr 31, 0
L_803FA29C:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x390
    li 24, 0x0
    lis 22, 0x4330
L_803FA2AC:
    lwz 3, 0x8(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2ba
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x38(1)
    lwz 12, 0x24(12)
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x6
    .4byte 0x4180FFA0 # blt .L_803FA2AC
    .4byte 0x48000088 # b .L_803FA398
L_803FA314:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 21, 31, 0x390
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    stfs 0, 0xb8(23)
    lis 22, 0x4330
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
    stfs 0, 0xb4(23)
L_803FA334:
    lwz 3, 0x8(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2ba
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x38(1)
    lwz 12, 0x24(12)
    stw 0, 0x3c(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x6
    .4byte 0x4180FFA0 # blt .L_803FA334
L_803FA398:
    li 30, 0x0
    mr 27, 23
    mr 28, 30
    mr 26, 23
    addi 25, 31, 0x4d0
    li 24, 0x0
    li 29, 0xf
L_803FA3B4:
    lha 0, 0x240(23)
    cmpw 0, 30
    .4byte 0x40810190 # ble .L_803FA54C
    cmpw 0, 29
    .4byte 0x40800104 # bge .L_803FA4C8
    subf 3, 28, 0
    lis 0, 0x4330
    subfic 3, 3, 0xf
    stw 0, 0x38(1)
    mullw 3, 3, 3
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC06207EC # lfs f3, lbl_8054378C@sda21(r0)
    .4byte 0xC04207CC # lfs f2, lbl_8054376C@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0220824 # lfs f1, lbl_805437C4@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stw 0, 0x3c(1)
    lfd 4, 0x38(1)
    fsubs 4, 4, 5
    fdivs 3, 4, 3
    fmuls 2, 2, 3
    stfs 2, 0xdc(27)
    lha 0, 0x240(23)
    subf 0, 28, 0
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 2, 0x30(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FA43C
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FA44C
L_803FA43C:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FA44C
    fmr 31, 0
L_803FA44C:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    mr 20, 26
    mr 19, 25
    li 21, 0x0
    lis 22, 0x4330
L_803FA460:
    lwz 3, 0x8(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x2ee(20)
    lwz 12, 0x0(3)
    stw 0, 0x3c(1)
    lwz 12, 0x24(12)
    stw 22, 0x38(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x9
    addi 20, 20, 0x1
    .4byte 0x4180FFA0 # blt .L_803FA460
    .4byte 0x48000088 # b .L_803FA54C
L_803FA4C8:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    mr 19, 26
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    mr 20, 25
    stfs 0, 0xdc(27)
    li 21, 0x0
    .4byte 0xC3E20790 # lfs f31, lbl_80543730@sda21(r0)
    lis 22, 0x4330
L_803FA4E8:
    lwz 3, 0x8(23)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x2ee(19)
    lwz 12, 0x0(3)
    stw 0, 0x3c(1)
    lwz 12, 0x24(12)
    stw 22, 0x38(1)
    lfd 0, 0x38(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x9
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803FA4E8
L_803FA54C:
    addi 24, 24, 0x1
    addi 29, 29, 0x5
    cmpwi 24, 0x4
    addi 28, 28, 0x5
    addi 27, 27, 0x4
    addi 26, 26, 0x9
    addi 25, 25, 0x48
    addi 30, 30, 0x5
    .4byte 0x4180FE48 # blt .L_803FA3B4
    lha 3, 0x248(23)
    addi 0, 3, 0x1
    sth 0, 0x248(23)
    lha 0, 0x248(23)
    cmpwi 0, 0x64
    .4byte 0x4180000C # blt .L_803FA590
    li 0, 0x0
    sth 0, 0x248(23)
L_803FA590:
    mr 25, 23
    addi 26, 31, 0x7d8
    li 24, 0x0
L_803FA59C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 0, 24, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820280 # beq .L_803FA838
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 0, 0xdc(25)
    fcmpu cr0, 1, 0
    .4byte 0x40820270 # bne .L_803FA838
    lwz 3, 0x210(25)
    addi 0, 3, 0x1
    stw 0, 0x210(25)
    lwz 0, 0x210(25)
    cmpwi 0, 0x82
    .4byte 0x4180000C # blt .L_803FA5EC
    li 0, 0x64
    stw 0, 0x210(25)
L_803FA5EC:
    lwz 0, 0x210(25)
    cmpwi 0, 0xb
    .4byte 0x40820040 # bne .L_803FA634
    lwz 5, 0x78(25)
    li 6, 0x0
    lis 3, 0x1
    addi 4, 1, 0xc
    stb 6, 0x44(5)
    addi 0, 3, 0x1
    lwz 3, 0x78(25)
    stb 6, 0x45(3)
    stw 0, 0xc(1)
    lwz 3, 0x78(25)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000210 # b .L_803FA840
L_803FA634:
    cmpwi 0, 0x24
    .4byte 0x40820208 # bne .L_803FA840
    lwz 3, 0x8(23)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x8(23)
    fsubs 30, 1, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 4, 0x4(4)
    lfs 0, 0x30(3)
    lhz 3, 0x4(4)
    stw 0, 0x38(1)
    fmadds 0, 30, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC0420800 # lfs f2, lbl_805437A0@sda21(r0)
    stw 0, 0x3c(1)
    .4byte 0xC82207A0 # lfd f1, lbl_80543740@sda21(r0)
    fmuls 2, 2, 0
    lfd 0, 0x38(1)
    lwz 5, 0x0(26)
    fsubs 0, 0, 1
    lwz 6, 0x4(26)
    fdivs 0, 2, 0
    stfs 0, 0x88(23)
    lwz 3, 0x8(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x8(23)
    fsubs 30, 1, 0
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 6, 0x4330
    lis 4, 0x2
    .4byte 0xC0220780 # lfs f1, lbl_80543720@sda21(r0)
    lwz 7, 0x4(5)
    li 5, 0x0
    lfs 0, 0x34(3)
    addi 0, 4, 0xe
    lhz 3, 0x6(7)
    addi 4, 1, 0x8
    fmadds 0, 30, 1, 0
    .4byte 0xC0220788 # lfs f1, lbl_80543728@sda21(r0)
    xoris 3, 3, 0x8000
    stw 6, 0x30(1)
    .4byte 0xC0820804 # lfs f4, lbl_805437A4@sda21(r0)
    stw 3, 0x34(1)
    fadds 3, 1, 0
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    lfd 1, 0x30(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 3, 4, 3
    fsubs 1, 1, 2
    fdivs 1, 3, 1
    stfs 1, 0x8c(23)
    stfs 0, 0x90(23)
    lwz 3, 0x78(25)
    stb 5, 0x44(3)
    lwz 3, 0x78(25)
    stb 5, 0x45(3)
    stw 0, 0x8(1)
    lwz 3, 0x78(25)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lfs 3, 0x8c(23)
    addi 4, 1, 0x1c
    .4byte 0xC0420828 # lfs f2, lbl_805437C8@sda21(r0)
    li 3, 0x0
    .4byte 0xC022082C # lfs f1, lbl_805437CC@sda21(r0)
    li 5, 0xcb
    lfs 0, 0x88(23)
    fsubs 2, 3, 2
    lfs 3, 0x90(23)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    stfs 2, 0x20(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x1c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x24(1)
    bl fn_8013CC50
    lfs 3, 0x8c(23)
    addi 4, 1, 0x10
    .4byte 0xC0420828 # lfs f2, lbl_805437C8@sda21(r0)
    li 3, 0x0
    .4byte 0xC022082C # lfs f1, lbl_805437CC@sda21(r0)
    li 5, 0xcc
    lfs 0, 0x88(23)
    fsubs 2, 3, 2
    lfs 3, 0x90(23)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220790 # lfs f1, lbl_80543730@sda21(r0)
    stfs 2, 0x14(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x10(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x18(1)
    bl fn_8013CC50
    .4byte 0x4800000C # b .L_803FA840
L_803FA838:
    li 0, 0x0
    stw 0, 0x210(25)
L_803FA840:
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FD4C # blt .L_803FA59C
    lha 0, 0x240(23)
    cmpwi 0, 0x4b
    .4byte 0x4180001C # blt .L_803FA878
    li 3, 0x0
    li 0, 0x5
    sth 3, 0x240(23)
    lwz 3, 0x1c4(23)
    stw 3, 0x1c8(23)
    stw 0, 0x1c4(23)
L_803FA878:
    lwz 3, 0x8(23)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x98(23)
    lfs 0, 0x9c(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x94(23)
    mtctr 12
    bctrl
    lwz 3, 0x8(23)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xa4(23)
    lfs 0, 0xa8(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xa0(23)
    mtctr 12
    bctrl
    lwz 3, 0x8(23)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xb0(23)
    lfs 0, 0xb4(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xac(23)
    mtctr 12
    bctrl
    lwz 3, 0x74(23)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 2, 0xb8(23)
    bl fn_80402E08
    lwz 3, 0x8(23)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xcc(23)
    lfs 0, 0xdc(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xbc(23)
    mtctr 12
    bctrl
    lwz 3, 0x8(23)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd0(23)
    lfs 0, 0xe0(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc0(23)
    mtctr 12
    bctrl
    lwz 3, 0x8(23)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3232
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd4(23)
    lfs 0, 0xe4(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc4(23)
    mtctr 12
    bctrl
    lwz 3, 0x8(23)
    lis 5, 0x626b
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3332
    addi 5, 4, 0x6c6c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xd8(23)
    lfs 0, 0xe8(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0xc8(23)
    mtctr 12
    bctrl
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    lmw 19, 0x4c(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_803FAA88:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 21, 0x34(1)
    mr 24, 3
    addi 26, 1, 0xc
    lwz 0, 0x1ac(3)
    li 5, 0x0
    lis 3, lbl_80478A60@ha
    mr 4, 26
    cmpw 5, 0
    addi 31, 3, lbl_80478A60@l
    .4byte 0x4182000C # beq .L_803FAAD4
    stw 5, 0x0(26)
    addi 4, 26, 0x4
L_803FAAD4:
    lwz 0, 0x1ac(24)
    li 5, 0x1
    cmpw 5, 0
    .4byte 0x4182000C # beq .L_803FAAEC
    stw 5, 0x0(4)
    addi 4, 4, 0x4
L_803FAAEC:
    lwz 0, 0x1ac(24)
    li 5, 0x2
    cmpw 5, 0
    .4byte 0x41820008 # beq .L_803FAB00
    stw 5, 0x0(4)
L_803FAB00:
    lha 3, 0x240(24)
    addi 0, 3, 0x1
    sth 0, 0x240(24)
    lha 3, 0x240(24)
    cmpwi 3, 0x14
    .4byte 0x40810188 # ble .L_803FAC9C
    cmpwi 3, 0x1c
    .4byte 0x40800100 # bge .L_803FAC1C
    subi 3, 3, 0x14
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x18(1)
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    .4byte 0xC0A207D0 # lfs f5, lbl_80543770@sda21(r0)
    stw 0, 0x20(1)
    xoris 0, 3, 0x8000
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 3, 0x18(1)
    fsubs 3, 3, 4
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfs 2, 0x110(24)
    lha 3, 0x240(24)
    subi 0, 3, 0x14
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 2, 0x20(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FAB94
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FABA4
L_803FAB94:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FABA4
    fmr 31, 0
L_803FABA4:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 22, 31, 0xb8
    li 25, 0x0
    lis 23, 0x4330
L_803FABB4:
    lwz 3, 0x4(24)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 25, 0x25f
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 23, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 22, 22, 0x8
    cmpwi 25, 0x14
    .4byte 0x4180FFA0 # blt .L_803FABB4
    .4byte 0x48000084 # b .L_803FAC9C
L_803FAC1C:
    .4byte 0xC00207D0 # lfs f0, lbl_80543770@sda21(r0)
    addi 22, 31, 0xb8
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 25, 0x0
    stfs 0, 0x110(24)
    lis 23, 0x4330
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
L_803FAC38:
    lwz 3, 0x4(24)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 25, 0x25f
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 23, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 22, 22, 0x8
    cmpwi 25, 0x14
    .4byte 0x4180FFA0 # blt .L_803FAC38
L_803FAC9C:
    lha 0, 0x240(24)
    cmpwi 0, 0x0
    .4byte 0x4081004C # ble .L_803FACF0
    cmpwi 0, 0x8
    .4byte 0x4080003C # bge .L_803FACE8
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x20(1)
    .4byte 0xC84207A0 # lfd f2, lbl_80543740@sda21(r0)
    .4byte 0xC0020810 # lfs f0, lbl_805437B0@sda21(r0)
    .4byte 0xC06207C8 # lfs f3, lbl_80543768@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x24(1)
    lfd 1, 0x20(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fmuls 0, 3, 0
    stfs 0, 0x114(24)
    .4byte 0x4800000C # b .L_803FACF0
L_803FACE8:
    .4byte 0xC00207C8 # lfs f0, lbl_80543768@sda21(r0)
    stfs 0, 0x114(24)
L_803FACF0:
    li 29, 0x0
    li 25, 0x0
    mr 27, 29
    li 28, 0x8
L_803FAD00:
    lha 0, 0x240(24)
    cmpw 0, 29
    .4byte 0x408101C0 # ble .L_803FAEC8
    cmpw 0, 28
    .4byte 0x4080011C # bge .L_803FAE2C
    subf 0, 27, 0
    lis 5, 0x4330
    mullw 0, 0, 0
    lwz 4, 0x0(26)
    stw 5, 0x20(1)
    slwi 3, 4, 2
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC0A207D4 # lfs f5, lbl_80543774@sda21(r0)
    stw 0, 0x24(1)
    addi 0, 3, 0x130
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    lfd 0, 0x20(1)
    stw 5, 0x18(1)
    fsubs 3, 0, 4
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfsx 2, 24, 0
    lha 0, 0x240(24)
    subf 0, 27, 0
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FAD94
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FADA4
L_803FAD94:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FADA4
    fmr 31, 0
L_803FADA4:
    mulli 3, 4, 0x6
    addi 21, 31, 0x158
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 30, 0x0
    lis 23, 0x4330
    mulli 0, 4, 0x30
    add 22, 24, 3
    add 21, 21, 0
L_803FADC4:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x273(22)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 23, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 30, 30, 0x1
    addi 21, 21, 0x8
    cmpwi 30, 0x6
    addi 22, 22, 0x1
    .4byte 0x4180FFA0 # blt .L_803FADC4
    .4byte 0x480000A0 # b .L_803FAEC8
L_803FAE2C:
    lwz 5, 0x0(26)
    addi 30, 31, 0x158
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    li 22, 0x0
    slwi 4, 5, 2
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mulli 3, 5, 0x6
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    addi 0, 4, 0x130
    stfsx 0, 24, 0
    lis 23, 0x4330
    mulli 0, 5, 0x30
    add 21, 24, 3
    add 30, 30, 0
L_803FAE64:
    lwz 3, 0x4(24)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x273(21)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 23, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 30, 30, 0x8
    cmpwi 22, 0x6
    addi 21, 21, 0x1
    .4byte 0x4180FFA0 # blt .L_803FAE64
L_803FAEC8:
    addi 25, 25, 0x1
    addi 28, 28, 0x5
    cmpwi 25, 0x2
    addi 27, 27, 0x5
    addi 26, 26, 0x4
    addi 29, 29, 0x5
    .4byte 0x4180FE20 # blt .L_803FAD00
    lha 3, 0x240(24)
    cmpwi 3, 0xf
    .4byte 0x408101C8 # ble .L_803FB0B4
    cmpwi 3, 0x17
    .4byte 0x40800120 # bge .L_803FB014
    subi 0, 3, 0xf
    lis 4, 0x4330
    mullw 3, 0, 0
    lwz 0, 0x1ac(24)
    stw 4, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC0A207D4 # lfs f5, lbl_80543774@sda21(r0)
    stw 3, 0x24(1)
    add 3, 24, 0
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    lfd 0, 0x20(1)
    stw 4, 0x18(1)
    fsubs 3, 0, 4
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfs 2, 0x130(3)
    lha 3, 0x240(24)
    lwz 4, 0x1ac(24)
    subi 0, 3, 0xf
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FAF7C
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FAF8C
L_803FAF7C:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FAF8C
    fmr 31, 0
L_803FAF8C:
    mulli 3, 4, 0x6
    addi 23, 31, 0x158
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 22, 0x0
    lis 25, 0x4330
    mulli 0, 4, 0x30
    add 21, 24, 3
    add 23, 23, 0
L_803FAFAC:
    lwz 3, 0x4(24)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x273(21)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 25, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 23, 23, 0x8
    cmpwi 22, 0x6
    addi 21, 21, 0x1
    .4byte 0x4180FFA0 # blt .L_803FAFAC
    .4byte 0x480000A4 # b .L_803FB0B4
L_803FB014:
    lwz 0, 0x1ac(24)
    addi 23, 31, 0x158
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    li 22, 0x0
    slwi 0, 0, 2
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    add 3, 24, 0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    stfs 0, 0x130(3)
    lis 25, 0x4330
    lwz 0, 0x1ac(24)
    mulli 3, 0, 0x6
    mulli 0, 0, 0x30
    add 21, 24, 3
    add 23, 23, 0
L_803FB050:
    lwz 3, 0x4(24)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x273(21)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 25, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 23, 23, 0x8
    cmpwi 22, 0x6
    addi 21, 21, 0x1
    .4byte 0x4180FFA0 # blt .L_803FB050
L_803FB0B4:
    lha 3, 0x240(24)
    cmpwi 3, 0xf
    .4byte 0x4081027C # ble .L_803FB338
    cmpwi 3, 0x17
    .4byte 0x40800178 # bge .L_803FB23C
    subi 3, 3, 0xf
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x20(1)
    .4byte 0xC88207A0 # lfd f4, lbl_80543740@sda21(r0)
    .4byte 0xC0420810 # lfs f2, lbl_805437B0@sda21(r0)
    .4byte 0xC0A207D8 # lfs f5, lbl_80543778@sda21(r0)
    stw 0, 0x18(1)
    xoris 0, 3, 0x8000
    .4byte 0xC0220814 # lfs f1, lbl_805437B4@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 3, 0x20(1)
    fsubs 3, 3, 4
    fmuls 2, 3, 2
    fmuls 2, 5, 2
    stfs 2, 0x158(24)
    stfs 2, 0x144(24)
    lha 3, 0x240(24)
    subi 0, 3, 0xf
    subfic 0, 0, 0x8
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 4
    fmuls 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FB140
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FB150
L_803FB140:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FB150
    fmr 31, 0
L_803FB150:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x1e8
    li 22, 0x0
    lis 25, 0x4330
L_803FB160:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x285
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x18
    .4byte 0x4180FFA0 # blt .L_803FB160
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x2a8
    li 22, 0x0
    lis 25, 0x4330
L_803FB1D4:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x29d
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x12
    .4byte 0x4180FFA0 # blt .L_803FB1D4
    .4byte 0x48000100 # b .L_803FB338
L_803FB23C:
    .4byte 0xC00207D8 # lfs f0, lbl_80543778@sda21(r0)
    addi 21, 31, 0x1e8
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 22, 0x0
    stfs 0, 0x158(24)
    lis 25, 0x4330
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    stfs 0, 0x144(24)
L_803FB25C:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x285
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x18
    .4byte 0x4180FFA0 # blt .L_803FB25C
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0x2a8
    .4byte 0xC3E2078C # lfs f31, lbl_8054372C@sda21(r0)
    li 22, 0x0
    lis 25, 0x4330
L_803FB2D4:
    lwz 3, 0x4(24)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x29d
    lwz 12, 0x0(3)
    lbzx 0, 24, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x12
    .4byte 0x4180FFA0 # blt .L_803FB2D4
L_803FB338:
    lha 0, 0x240(24)
    cmpwi 0, 0x1c
    .4byte 0x418000F4 # blt .L_803FB434
    lwz 0, 0x1cc(24)
    cmpwi 0, 0xd
    .4byte 0x408200C8 # bne .L_803FB414
    lwz 3, 0x1ac(24)
    lwz 4, 0x1c0(24)
    addi 0, 3, 0x2
    cmpw 4, 0
    .4byte 0x408200A8 # bne .L_803FB408
    lwz 0, 0x1c4(24)
    lis 3, lbl_80529DEC@ha
    li 6, 0xd
    li 5, 0x6
    stw 0, 0x1c8(24)
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x0
    stw 6, 0x1c4(24)
    stw 5, 0x350(24)
    stb 0, 0x23e(4)
    lwz 0, 0x1ac(24)
    cmpwi 0, 0x1
    .4byte 0x408200A0 # bne .L_803FB434
    lwz 0, 0x64(4)
    cmpwi 0, -0x1
    .4byte 0x40820094 # bne .L_803FB434
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    lwz 3, 0xb4(5)
    .4byte 0xC04207A8 # lfs f2, lbl_80543748@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x3
    .4byte 0x41800008 # blt .L_803FB400
    li 0, 0x2
L_803FB400:
    stw 0, 0x64(4)
    .4byte 0x48000030 # b .L_803FB434
L_803FB408:
    mr 3, 24
    bl fn_803F2B78
    .4byte 0x48000024 # b .L_803FB434
L_803FB414:
    li 0, 0x0
    lis 3, lbl_804B0BDC@ha
    addi 4, 3, lbl_804B0BDC@l
    stb 0, 0x25c(24)
    mr 3, 24
    addi 12, 4, 0x24
    bl __ptmf_scall
    nop
L_803FB434:
    lha 0, 0x240(24)
    cmpwi 0, 0x35
    .4byte 0x4180000C # blt .L_803FB448
    li 0, 0x0
    sth 0, 0x240(24)
L_803FB448:
    lwz 3, 0x1d0(24)
    addi 0, 3, 0x1
    stw 0, 0x1d0(24)
    lwz 0, 0x1d0(24)
    cmpwi 0, 0x1e
    .4byte 0x4180000C # blt .L_803FB468
    li 0, 0x0
    stw 0, 0x1d0(24)
L_803FB468:
    lwz 3, 0x4(24)
    lis 5, 0x6262
    lis 4, 0x506d
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x10c(24)
    lfs 0, 0x110(24)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x108(24)
    mtctr 12
    bctrl
    lwz 3, 0x74(24)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 2, 0x114(24)
    bl fn_80402E08
    lwz 3, 0x4(24)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6e6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x118(24)
    lfs 0, 0x130(24)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x128(24)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6e6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x11c(24)
    lfs 0, 0x134(24)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x12c(24)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6e6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x120(24)
    lfs 0, 0x138(24)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x130(24)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x13c(24)
    lfs 0, 0x144(24)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x140(24)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x148(24)
    lfs 0, 0x158(24)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x14c(24)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x150(24)
    lfs 0, 0x158(24)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x154(24)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x726f
    lwz 3, 0x4(24)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 0, 0x1ac(24)
    fmr 2, 31
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lfs 1, 0xec(24)
    add 4, 24, 0
    lwz 12, 0x10(12)
    lfs 0, 0x130(4)
    fadds 1, 1, 0
    mtctr 12
    bctrl
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 21, 0x34(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_803FB6F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lha 3, 0x240(3)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_803FB734
    addi 0, 3, 0x1
    sth 0, 0x240(31)
    lha 0, 0x240(31)
    cmpwi 0, 0xa
    .4byte 0x4081000C # ble .L_803FB734
    li 0, 0x0
    sth 0, 0x240(31)
L_803FB734:
    lwz 3, 0x210(31)
    addi 0, 3, 0x1
    stw 0, 0x210(31)
    lwz 0, 0x210(31)
    cmpwi 0, 0x1e
    .4byte 0x4180000C # blt .L_803FB754
    li 0, 0x0
    stw 0, 0x210(31)
L_803FB754:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182015C # beq .L_803FB8C4
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x1a8(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stb 0, 0x7e(4)
    lwz 4, 0x1ac(31)
    lwz 5, 0x1c0(31)
    addi 0, 4, 0x2
    cmpw 5, 0
    .4byte 0x408200BC # bne .L_803FB84C
    li 0, 0x4
    li 4, 0x0
    mtctr 0
L_803FB7A0:
    lwz 5, 0x1ac(31)
    addi 0, 5, 0x2
    cmpw 4, 0
    .4byte 0x40800054 # bge .L_803FB800
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    li 7, 0x1
    slw 5, 7, 4
    li 0, 0x3
    lbz 8, 0x82(9)
    clrlwi 6, 5, 24
    slw 5, 0, 3
    slw 0, 7, 3
    or 6, 8, 6
    stb 6, 0x82(9)
    clrlwi 5, 5, 24
    clrlwi 0, 0, 24
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lbz 6, 0x83(7)
    andc 5, 6, 5
    stb 5, 0x83(7)
    lbz 5, 0x83(7)
    or 0, 5, 0
    stb 0, 0x83(7)
    .4byte 0x4800003C # b .L_803FB838
L_803FB800:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 5, 0, 4
    lbz 6, 0x82(7)
    clrlwi 5, 5, 24
    li 0, 0x3
    andc 5, 6, 5
    stb 5, 0x82(7)
    slw 0, 0, 3
    clrlwi 0, 0, 24
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lbz 5, 0x83(6)
    andc 0, 5, 0
    stb 0, 0x83(6)
L_803FB838:
    addi 3, 3, 0x2
    addi 4, 4, 0x1
    .4byte 0x4200FF60 # bdnz .L_803FB7A0
    li 0, 0xd
    stw 0, 0x1cc(31)
L_803FB84C:
    li 5, 0x0
    lis 3, lbl_80529DEC@ha
    stw 5, 0x210(31)
    li 4, 0x5
    li 0, 0x2
    addi 30, 3, lbl_80529DEC@l
    sth 5, 0x240(31)
    stw 4, 0x1d0(31)
    lwz 3, 0x1c4(31)
    stw 3, 0x1c8(31)
    stw 0, 0x1c4(31)
    lwz 3, 0x1ac(31)
    lbz 0, 0x23d(30)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_803FB8A8
    li 0, -0x1
    stw 5, 0x140(30)
    mr 3, 30
    stw 5, 0x144(30)
    stw 5, 0x148(30)
    stw 5, 0x14c(30)
    stw 0, 0x64(30)
    bl fn_80403680
L_803FB8A8:
    lwz 0, 0x1ac(31)
    li 4, 0xb
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 5, -0x1
    stb 0, 0x23d(30)
    bl fn_80458880
    .4byte 0x480000EC # b .L_803FB9AC
L_803FB8C4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_803FB8F8
    li 0, 0x2
    li 4, 0xc
    stw 0, 0x350(31)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000B8 # b .L_803FB9AC
L_803FB8F8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x4
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_803FB954
    lwz 3, 0x1ac(31)
    addi 0, 3, 0x1
    stw 0, 0x1ac(31)
    lwz 0, 0x1ac(31)
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_803FB930
    li 0, 0x0
    stw 0, 0x1ac(31)
L_803FB930:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0x240(31)
    li 4, 0x26
    li 5, -0x1
    stw 0, 0x1d0(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800005C # b .L_803FB9AC
L_803FB954:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, 0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_803FB9AC
    lwz 3, 0x1ac(31)
    subi 0, 3, 0x1
    stw 0, 0x1ac(31)
    lwz 0, 0x1ac(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_803FB98C
    li 0, 0x2
    stw 0, 0x1ac(31)
L_803FB98C:
    li 3, 0x1
    li 0, 0x1e
    sth 3, 0x240(31)
    li 4, 0x26
    li 5, -0x1
    stw 0, 0x1d0(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803FB9AC:
    lwz 3, 0x1d0(31)
    addi 0, 3, 0x1
    stw 0, 0x1d0(31)
    lwz 0, 0x1d0(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_803FB9CC
    li 0, 0x0
    stw 0, 0x1d0(31)
L_803FB9CC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803FB9E4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 19, 0x1c(1)
    mr 23, 3
    lis 4, lbl_80478A60@ha
    lha 3, 0x240(3)
    addi 31, 4, lbl_80478A60@l
    addi 0, 3, 0x1
    sth 0, 0x240(23)
    lha 0, 0x240(23)
    cmpwi 0, 0x0
    .4byte 0x40810180 # ble .L_803FBBA4
    cmpwi 0, 0x19
    .4byte 0x408000F8 # bge .L_803FBB24
    subfic 3, 0, 0x19
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC0620820 # lfs f3, lbl_805437C0@sda21(r0)
    .4byte 0xC04207D0 # lfs f2, lbl_80543770@sda21(r0)
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC02207E8 # lfs f1, lbl_80543788@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 4, 0x8(1)
    fsubs 4, 4, 5
    fdivs 3, 4, 3
    fmuls 2, 2, 3
    stfs 2, 0x110(23)
    lha 0, 0x240(23)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FBA9C
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FBAAC
L_803FBA9C:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FBAAC
    fmr 31, 0
L_803FBAAC:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 21, 31, 0xb8
    li 24, 0x0
    lis 22, 0x4330
L_803FBABC:
    lwz 3, 0x4(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x25f
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803FBABC
    .4byte 0x48000084 # b .L_803FBBA4
L_803FBB24:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 21, 31, 0xb8
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    stfs 0, 0x110(23)
    lis 22, 0x4330
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
L_803FBB40:
    lwz 3, 0x4(23)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x25f
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 22, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 21, 21, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803FBB40
L_803FBBA4:
    lha 3, 0x240(23)
    cmpwi 3, 0x19
    .4byte 0x40810054 # ble .L_803FBC00
    cmpwi 3, 0x2d
    .4byte 0x40800044 # bge .L_803FBBF8
    subi 3, 3, 0x19
    lis 0, 0x4330
    subfic 3, 3, 0x14
    stw 0, 0x10(1)
    mullw 0, 3, 3
    .4byte 0xC86207A0 # lfd f3, lbl_80543740@sda21(r0)
    .4byte 0xC02207D8 # lfs f1, lbl_80543778@sda21(r0)
    .4byte 0xC00207C8 # lfs f0, lbl_80543768@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 3
    fdivs 1, 2, 1
    fmuls 0, 0, 1
    stfs 0, 0x114(23)
    .4byte 0x4800000C # b .L_803FBC00
L_803FBBF8:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 0, 0x114(23)
L_803FBC00:
    li 30, 0x0
    mr 27, 23
    mr 28, 30
    mr 26, 23
    addi 25, 31, 0x158
    li 24, 0x0
    li 29, 0xa
L_803FBC1C:
    lha 0, 0x240(23)
    cmpw 0, 30
    .4byte 0x40810190 # ble .L_803FBDB4
    cmpw 0, 29
    .4byte 0x40800104 # bge .L_803FBD30
    subf 3, 28, 0
    lis 0, 0x4330
    subfic 3, 3, 0xa
    stw 0, 0x10(1)
    mullw 3, 3, 3
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC0620818 # lfs f3, lbl_805437B8@sda21(r0)
    .4byte 0xC04207D4 # lfs f2, lbl_80543774@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC022081C # lfs f1, lbl_805437BC@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stw 0, 0x14(1)
    lfd 4, 0x10(1)
    fsubs 4, 4, 5
    fdivs 3, 4, 3
    fmuls 2, 2, 3
    stfs 2, 0x130(27)
    lha 0, 0x240(23)
    subf 0, 28, 0
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 2, 0x8(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FBCA4
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FBCB4
L_803FBCA4:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FBCB4
    fmr 31, 0
L_803FBCB4:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    mr 20, 26
    mr 19, 25
    li 21, 0x0
    lis 22, 0x4330
L_803FBCC8:
    lwz 3, 0x4(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x273(20)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lwz 12, 0x24(12)
    stw 22, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x6
    addi 20, 20, 0x1
    .4byte 0x4180FFA0 # blt .L_803FBCC8
    .4byte 0x48000088 # b .L_803FBDB4
L_803FBD30:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    mr 19, 26
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mr 20, 25
    stfs 0, 0x130(27)
    li 21, 0x0
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
    lis 22, 0x4330
L_803FBD50:
    lwz 3, 0x4(23)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x273(19)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lwz 12, 0x24(12)
    stw 22, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 20, 20, 0x8
    cmpwi 21, 0x6
    addi 19, 19, 0x1
    .4byte 0x4180FFA0 # blt .L_803FBD50
L_803FBDB4:
    addi 24, 24, 0x1
    addi 29, 29, 0x5
    cmpwi 24, 0x3
    addi 28, 28, 0x5
    addi 27, 27, 0x4
    addi 26, 26, 0x6
    addi 25, 25, 0x30
    addi 30, 30, 0x5
    .4byte 0x4180FE48 # blt .L_803FBC1C
    lha 0, 0x240(23)
    cmpwi 0, 0x0
    .4byte 0x40810274 # ble .L_803FC054
    cmpwi 0, 0xf
    .4byte 0x40800170 # bge .L_803FBF58
    subfic 3, 0, 0xf
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x10(1)
    .4byte 0xC8A207A0 # lfd f5, lbl_80543740@sda21(r0)
    .4byte 0xC06207EC # lfs f3, lbl_8054378C@sda21(r0)
    .4byte 0xC04207D8 # lfs f2, lbl_80543778@sda21(r0)
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC0220824 # lfs f1, lbl_805437C4@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    lfd 4, 0x10(1)
    fsubs 4, 4, 5
    fdivs 3, 4, 3
    fmuls 2, 2, 3
    stfs 2, 0x158(23)
    stfs 2, 0x144(23)
    lha 0, 0x240(23)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 2, 0x8(1)
    fsubs 2, 2, 5
    fdivs 31, 2, 1
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_803FBE5C
    fmr 31, 0
    .4byte 0x48000014 # b .L_803FBE6C
L_803FBE5C:
    .4byte 0xC0020790 # lfs f0, lbl_80543730@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40810008 # ble .L_803FBE6C
    fmr 31, 0
L_803FBE6C:
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 19, 31, 0x1e8
    li 21, 0x0
    lis 24, 0x4330
L_803FBE7C:
    lwz 3, 0x4(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x285
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x18
    .4byte 0x4180FFA0 # blt .L_803FBE7C
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 19, 31, 0x2a8
    li 21, 0x0
    lis 24, 0x4330
L_803FBEF0:
    lwz 3, 0x4(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x29d
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x12
    .4byte 0x4180FFA0 # blt .L_803FBEF0
    .4byte 0x48000100 # b .L_803FC054
L_803FBF58:
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 19, 31, 0x1e8
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 21, 0x0
    stfs 0, 0x158(23)
    lis 24, 0x4330
    .4byte 0xC3C20790 # lfs f30, lbl_80543730@sda21(r0)
    stfs 0, 0x144(23)
L_803FBF78:
    lwz 3, 0x4(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x285
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x18
    .4byte 0x4180FFA0 # blt .L_803FBF78
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    addi 19, 31, 0x2a8
    .4byte 0xC3E20790 # lfs f31, lbl_80543730@sda21(r0)
    li 21, 0x0
    lis 24, 0x4330
L_803FBFF0:
    lwz 3, 0x4(23)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x29d
    lwz 12, 0x0(3)
    lbzx 0, 23, 0
    stw 24, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 19, 19, 0x8
    cmpwi 21, 0x12
    .4byte 0x4180FFA0 # blt .L_803FBFF0
L_803FC054:
    lha 0, 0x240(23)
    cmpwi 0, 0x4b
    .4byte 0x4180001C # blt .L_803FC078
    li 3, 0x0
    li 0, 0x1
    sth 3, 0x240(23)
    lwz 3, 0x1c4(23)
    stw 3, 0x1c8(23)
    stw 0, 0x1c4(23)
L_803FC078:
    lwz 3, 0x4(23)
    lis 5, 0x6262
    lis 4, 0x506d
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x10c(23)
    lfs 0, 0x110(23)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x108(23)
    mtctr 12
    bctrl
    lwz 3, 0x74(23)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    lfs 2, 0x114(23)
    bl fn_80402E08
    lwz 3, 0x4(23)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6e6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x118(23)
    lfs 0, 0x130(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x128(23)
    mtctr 12
    bctrl
    lwz 3, 0x4(23)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6e6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x11c(23)
    lfs 0, 0x134(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x12c(23)
    mtctr 12
    bctrl
    lwz 3, 0x4(23)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6e6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x120(23)
    lfs 0, 0x138(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x130(23)
    mtctr 12
    bctrl
    lwz 3, 0x4(23)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x13c(23)
    lfs 0, 0x144(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x140(23)
    mtctr 12
    bctrl
    lwz 3, 0x4(23)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x148(23)
    lfs 0, 0x158(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x14c(23)
    mtctr 12
    bctrl
    lwz 3, 0x4(23)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x150(23)
    lfs 0, 0x158(23)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x154(23)
    mtctr 12
    bctrl
    lwz 3, 0x4(23)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x726f
    lwz 3, 0x4(23)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 0, 0x1ac(23)
    fmr 2, 31
    lwz 12, 0x0(3)
    slwi 0, 0, 2
    lfs 1, 0xec(23)
    add 4, 23, 0
    lwz 12, 0x10(12)
    lfs 0, 0x130(4)
    fadds 1, 1, 0
    mtctr 12
    bctrl
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 19, 0x1c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803FC304:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    stw 0, 0x1c0(3)
L_803FC328:
    lwz 3, 0x1ac(30)
    addi 0, 3, 0x1
    cmpw 31, 0
    .4byte 0x41810074 # bgt .L_803FC3A8
    mr 3, 31
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_803FC384
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 0, 31, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x82(4)
    lwz 3, 0x1c0(30)
    addi 0, 3, 0x1
    stw 0, 0x1c0(30)
    .4byte 0x48000048 # b .L_803FC3C8
L_803FC384:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 0, 31, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    andc 0, 3, 0
    stb 0, 0x82(4)
    .4byte 0x48000024 # b .L_803FC3C8
L_803FC3A8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addi 0, 31, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    andc 0, 3, 0
    stb 0, 0x82(4)
L_803FC3C8:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF58 # blt .L_803FC328
    lbz 0, 0x25e(30)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_803FC3EC
    lwz 0, 0x1c4(30)
    cmpwi 0, 0x4
    .4byte 0x4082006C # bne .L_803FC454
L_803FC3EC:
    lwz 0, 0x1c4(30)
    cmpwi 0, 0xd
    .4byte 0x41820024 # beq .L_803FC418
    mulli 5, 0, 0xc
    lis 4, lbl_804B0D14@ha
    mr 3, 30
    addi 0, 4, lbl_804B0D14@l
    add 12, 0, 5
    bl __ptmf_scall
    nop
    .4byte 0x48000024 # b .L_803FC438
L_803FC418:
    lwz 4, 0x1c8(30)
    lis 3, lbl_804B0D14@ha
    addi 0, 3, lbl_804B0D14@l
    mr 3, 30
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
L_803FC438:
    li 31, 0x0
L_803FC43C:
    lwz 3, 0x78(30)
    bl fn_80456154
    addi 31, 31, 0x1
    addi 30, 30, 0x4
    cmpwi 31, 0x4
    .4byte 0x4180FFEC # blt .L_803FC43C
L_803FC454:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803FC46C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x14(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x1c4(31)
    cmpwi 0, 0xd
    .4byte 0x41820024 # beq .L_803FC4CC
    mulli 5, 0, 0xc
    lis 4, lbl_804B0E4C@ha
    mr 3, 31
    addi 0, 4, lbl_804B0E4C@l
    add 12, 0, 5
    bl __ptmf_scall
    nop
    .4byte 0x48000024 # b .L_803FC4EC
L_803FC4CC:
    lwz 4, 0x1c8(31)
    lis 3, lbl_804B0E4C@ha
    addi 0, 3, lbl_804B0E4C@l
    mr 3, 31
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
L_803FC4EC:
    lbz 0, 0x25e(31)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_803FC5D0
    cmpwi 0, 0x2
    .4byte 0x41820060 # beq .L_803FC55C
    .4byte 0x40800080 # bge .L_803FC580
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_803FC510
    .4byte 0x48000074 # b .L_803FC580
L_803FC510:
    lbz 3, 0x25d(31)
    cmplwi 3, 0xf5
    .4byte 0x41800038 # blt .L_803FC550
    li 0, 0xff
    lis 3, lbl_804B0BDC@ha
    stb 0, 0x25d(31)
    li 4, 0x2
    addi 0, 3, lbl_804B0BDC@l
    mr 3, 31
    stb 4, 0x25e(31)
    lwz 4, 0x1cc(31)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    .4byte 0x48000034 # b .L_803FC580
L_803FC550:
    addi 0, 3, 0xa
    stb 0, 0x25d(31)
    .4byte 0x48000028 # b .L_803FC580
L_803FC55C:
    lbz 3, 0x25d(31)
    cmplwi 3, 0xa
    .4byte 0x41810014 # bgt .L_803FC578
    li 0, 0x0
    stb 0, 0x25d(31)
    stb 0, 0x25e(31)
    .4byte 0x4800000C # b .L_803FC580
L_803FC578:
    subi 0, 3, 0xa
    stb 0, 0x25d(31)
L_803FC580:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0x5c(31)
    lbz 4, 0x25d(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x5c(31)
    li 4, 0x0
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC06207AC # lfs f3, lbl_8054374C@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC08207B0 # lfs f4, lbl_80543750@sda21(r0)
    mtctr 12
    bctrl
L_803FC5D0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803FC5E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 4
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310CC
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_803FC624
    li 0, 0x7
    mr 3, 31
    stw 0, 0x1c4(31)
    bl fn_803F267C
    .4byte 0x480002C4 # b .L_803FC8E4
L_803FC624:
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_803FC69C
    li 3, 0x1
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_803FC69C
    li 0, 0x0
    li 30, 0x2
    stw 0, 0x1ac(31)
L_803FC668:
    mr 3, 30
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_803FC69C
    lwz 3, 0x1ac(31)
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    addi 0, 3, 0x1
    stw 0, 0x1ac(31)
    .4byte 0x4180FFD0 # blt .L_803FC668
L_803FC69C:
    li 0, 0x0
    lis 4, 0x6262
    stw 0, 0x1c4(31)
    lis 3, 0x506d
    .4byte 0xC00207D0 # lfs f0, lbl_80543770@sda21(r0)
    addi 6, 4, 0x3037
    addi 5, 3, 0x6261
    stfs 0, 0x110(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x10c(31)
    lfs 0, 0x110(31)
    lwz 12, 0x10(12)
    fadds 2, 1, 0
    lfs 1, 0x108(31)
    mtctr 12
    bctrl
    .4byte 0xC00207C8 # lfs f0, lbl_80543768@sda21(r0)
    .4byte 0xC022078C # lfs f1, lbl_8054372C@sda21(r0)
    stfs 0, 0x114(31)
    lwz 3, 0x74(31)
    lfs 2, 0x114(31)
    bl fn_80402E08
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    lis 4, 0x7062
    lis 3, 0x50
    stfs 0, 0x130(31)
    addi 6, 4, 0x3038
    addi 5, 3, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x118(31)
    lfs 0, 0x130(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x124(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    lis 4, 0x7062
    lis 3, 0x50
    stfs 0, 0x134(31)
    addi 6, 4, 0x3132
    addi 5, 3, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x11c(31)
    lfs 0, 0x134(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x128(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D4 # lfs f0, lbl_80543774@sda21(r0)
    lis 4, 0x7062
    lis 3, 0x50
    stfs 0, 0x138(31)
    addi 6, 4, 0x3136
    addi 5, 3, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x120(31)
    lfs 0, 0x138(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x12c(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D8 # lfs f0, lbl_80543778@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0x144(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x13c(31)
    lfs 0, 0x144(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x140(31)
    mtctr 12
    bctrl
    .4byte 0xC00207D8 # lfs f0, lbl_80543778@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0x158(31)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x148(31)
    lfs 0, 0x158(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x14c(31)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x150(31)
    lfs 0, 0x158(31)
    lwz 12, 0x10(12)
    fadds 1, 1, 0
    lfs 2, 0x154(31)
    mtctr 12
    bctrl
    li 3, 0x0
    stw 3, 0x210(31)
    stw 3, 0x1d0(31)
    sth 3, 0x240(31)
    lwz 0, 0x1c4(31)
    stw 0, 0x1c8(31)
    stw 3, 0x1c4(31)
L_803FC8E4:
    li 0, 0x4
    stw 0, 0x350(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_803F01F4

