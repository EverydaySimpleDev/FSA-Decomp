# Fresh project-wide gap hunt continuation: 15 functions, 8,900 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80006BB4
etb_80006BB4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006BB4, 8

.global etb_80006BBC
etb_80006BBC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006BBC, 8

.global etb_80006BC4
etb_80006BC4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006BC4, 8

.global etb_80006BCC
etb_80006BCC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006BCC, 8

.global etb_80006BD4
etb_80006BD4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006BD4, 8

.global etb_80006BDC
etb_80006BDC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006BDC, 8

.global etb_80006BE4
etb_80006BE4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80006BE4, 8

.global etb_80006BEC
etb_80006BEC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006BEC, 8

.global etb_80006BF4
etb_80006BF4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006BF4, 8

.global etb_80006BFC
etb_80006BFC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006BFC, 8

.global etb_80006C04
etb_80006C04:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006C04, 8

.global etb_80006C0C
etb_80006C0C:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80006C0C, 8

.global etb_80006C14
etb_80006C14:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006C14, 8

.global etb_80006C1C
etb_80006C1C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006C1C, 8

.section extabindex, "a"
.balign 4
.global eti_8001351C
eti_8001351C:
    .4byte fn_8013D6E4
    .4byte 0x00000224
    .4byte etb_80006BB4
.size eti_8001351C, 12

.global eti_80013528
eti_80013528:
    .4byte fn_8013D908
    .4byte 0x00000108
    .4byte etb_80006BBC
.size eti_80013528, 12

.global eti_80013534
eti_80013534:
    .4byte fn_8013DA10
    .4byte 0x0000011C
    .4byte etb_80006BC4
.size eti_80013534, 12

.global eti_80013540
eti_80013540:
    .4byte fn_8013DB2C
    .4byte 0x000000F0
    .4byte etb_80006BCC
.size eti_80013540, 12

.global eti_8001354C
eti_8001354C:
    .4byte fn_8013DC1C
    .4byte 0x00000028
    .4byte etb_80006BD4
.size eti_8001354C, 12

.global eti_80013558
eti_80013558:
    .4byte fn_8013DC44
    .4byte 0x000001A8
    .4byte etb_80006BDC
.size eti_80013558, 12

.global eti_80013564
eti_80013564:
    .4byte fn_8013DDEC
    .4byte 0x0000158C
    .4byte etb_80006BE4
.size eti_80013564, 12

.global eti_80013570
eti_80013570:
    .4byte fn_8013F378
    .4byte 0x0000006C
    .4byte etb_80006BEC
.size eti_80013570, 12

.global eti_8001357C
eti_8001357C:
    .4byte fn_8013F3E4
    .4byte 0x000001A0
    .4byte etb_80006BF4
.size eti_8001357C, 12

.global eti_80013588
eti_80013588:
    .4byte fn_8013F588
    .4byte 0x00000028
    .4byte etb_80006BFC
.size eti_80013588, 12

.global eti_80013594
eti_80013594:
    .4byte fn_8013F5B0
    .4byte 0x0000010C
    .4byte etb_80006C0C
.size eti_80013594, 12

.global eti_800135A0
eti_800135A0:
    .4byte fn_8013F6BC
    .4byte 0x0000003C
    .4byte etb_80006C14
.size eti_800135A0, 12

.global eti_800135AC
eti_800135AC:
    .4byte fn_8013F6F8
    .4byte 0x00000060
    .4byte etb_80006C1C
.size eti_800135AC, 12

.global eti_800135B8
eti_800135B8:
    .4byte fn_8013F758
    .4byte 0x00000250
    .4byte etb_80006C04
.size eti_800135B8, 12

.text
.balign 4
.global fn_8013D6E4
.global fn_8013D908
.global fn_8013DA10
.global fn_8013DB2C
.global fn_8013DC1C
.global fn_8013DC44
.global fn_8013DDEC
.global fn_8013F378
.global fn_8013F3E4
.global fn_8013F584
.global fn_8013F588
.global fn_8013F5B0
.global fn_8013F6BC
.global fn_8013F6F8
.global fn_8013F758

fn_8013D6E4:
    stwu 1, -0x140(1)
    mflr 0
    stw 0, 0x144(1)
    stw 31, 0x13c(1)
    mr 31, 3
    stw 30, 0x138(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134CC8
    clrlwi. 0, 3, 24
    .4byte 0x408201E8 # bne .L_8013D8F0
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 3, 1, 0x68
    lwz 5, 0x24(4)
    lwz 4, 0xe4(5)
    lwz 0, 0xe8(5)
    stw 4, 0xc8(1)
    stw 0, 0xcc(1)
    lwz 4, 0xec(5)
    lwz 0, 0xf0(5)
    stw 4, 0xd0(1)
    stw 0, 0xd4(1)
    lwz 4, 0xf4(5)
    lwz 0, 0xf8(5)
    stw 4, 0xd8(1)
    stw 0, 0xdc(1)
    lwz 4, 0xfc(5)
    lwz 0, 0x100(5)
    stw 4, 0xe0(1)
    stw 0, 0xe4(1)
    lwz 4, 0x104(5)
    lwz 0, 0x108(5)
    stw 4, 0xe8(1)
    stw 0, 0xec(1)
    lwz 4, 0x10c(5)
    lwz 0, 0x110(5)
    stw 4, 0xf0(1)
    stw 0, 0xf4(1)
    lwz 4, 0x114(5)
    lwz 0, 0x118(5)
    stw 4, 0xf8(1)
    stw 0, 0xfc(1)
    lwz 4, 0x11c(5)
    lwz 0, 0x120(5)
    stw 4, 0x100(1)
    stw 0, 0x104(1)
    lwz 4, 0x124(5)
    lwz 0, 0x128(5)
    stw 4, 0x108(1)
    stw 0, 0x10c(1)
    lwz 4, 0x12c(5)
    lwz 0, 0x130(5)
    stw 4, 0x110(1)
    stw 0, 0x114(1)
    lwz 4, 0x134(5)
    lwz 0, 0x138(5)
    stw 4, 0x118(1)
    stw 0, 0x11c(1)
    lwz 4, 0x13c(5)
    lwz 0, 0x140(5)
    stw 4, 0x120(1)
    stw 0, 0x124(1)
    bl PSMTXIdentity
    addi 30, 1, 0x98
    mr 3, 30
    bl PSMTXIdentity
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B438
    lwz 3, 0xc(31)
    addi 4, 1, 0xc8
    li 5, 0x0
    bl fn_800EBF88
    lwz 3, 0xc(31)
    addi 4, 1, 0xc8
    li 5, 0x3
    bl fn_800EBF88
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x34(3)
    li 8, 0x0
    lwz 6, 0x20(3)
    lbz 6, 0x0(6)
    bl fn_800929D4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    addi 3, 1, 0x8
    bl PSMTXIdentity
    addi 3, 1, 0x38
    bl PSMTXIdentity
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x68
    lwz 3, 0x10(3)
    addi 3, 3, 0x80
    bl PSMTXCopy
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0A29E70 # lfs f5, lbl_8053CE10@sda21(r0)
    mr 3, 30
    lwz 5, 0x4(5)
    .4byte 0xC0229E60 # lfs f1, lbl_8053CE00@sda21(r0)
    fmr 6, 5
    lhz 0, 0x4(5)
    fmr 7, 5
    lhz 5, 0x6(5)
    fmr 3, 1
    xoris 0, 0, 0x8000
    xoris 5, 5, 0x8000
    stw 4, 0x128(1)
    .4byte 0xC8829E78 # lfd f4, lbl_8053CE18@sda21(r0)
    fmr 8, 5
    stw 5, 0x12c(1)
    lfd 0, 0x128(1)
    stw 0, 0x134(1)
    fsubs 2, 0, 4
    stw 4, 0x130(1)
    lfd 0, 0x130(1)
    fsubs 4, 0, 4
    bl C_MTXLightOrtho
    lwz 3, 0xc(31)
    addi 4, 1, 0x68
    li 5, 0x5
    bl fn_800EBF88
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B438
    li 3, 0x0
    bl fn_8005F50C
    lwz 3, 0xc(31)
    addi 4, 1, 0xc8
    li 5, 0x1
    bl fn_800EBF88
L_8013D8F0:
    lwz 0, 0x144(1)
    lwz 31, 0x13c(1)
    lwz 30, 0x138(1)
    mtlr 0
    addi 1, 1, 0x140
    blr

fn_8013D908:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(4)
    mr 3, 4
    lwz 4, 0xe4(5)
    lwz 0, 0xe8(5)
    stw 4, 0x8(1)
    stw 0, 0xc(1)
    lwz 4, 0xec(5)
    lwz 0, 0xf0(5)
    stw 4, 0x10(1)
    stw 0, 0x14(1)
    lwz 4, 0xf4(5)
    lwz 0, 0xf8(5)
    stw 4, 0x18(1)
    stw 0, 0x1c(1)
    lwz 4, 0xfc(5)
    lwz 0, 0x100(5)
    stw 4, 0x20(1)
    stw 0, 0x24(1)
    lwz 4, 0x104(5)
    lwz 0, 0x108(5)
    stw 4, 0x28(1)
    stw 0, 0x2c(1)
    lwz 4, 0x10c(5)
    lwz 0, 0x110(5)
    stw 4, 0x30(1)
    stw 0, 0x34(1)
    lwz 4, 0x114(5)
    lwz 0, 0x118(5)
    stw 4, 0x38(1)
    stw 0, 0x3c(1)
    lwz 4, 0x11c(5)
    lwz 0, 0x120(5)
    stw 4, 0x40(1)
    stw 0, 0x44(1)
    lwz 4, 0x124(5)
    lwz 0, 0x128(5)
    stw 4, 0x48(1)
    stw 0, 0x4c(1)
    lwz 4, 0x12c(5)
    lwz 0, 0x130(5)
    stw 4, 0x50(1)
    stw 0, 0x54(1)
    lwz 4, 0x134(5)
    lwz 0, 0x138(5)
    stw 4, 0x58(1)
    stw 0, 0x5c(1)
    lwz 4, 0x13c(5)
    lwz 0, 0x140(5)
    stw 4, 0x60(1)
    stw 0, 0x64(1)
    bl fn_8013B438
    lwz 3, 0xc(31)
    addi 4, 1, 0x8
    li 5, 0x7
    bl fn_800EBF88
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8013DA10:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134CC8
    clrlwi. 0, 3, 24
    .4byte 0x408200E8 # bne .L_8013DB18
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x24(3)
    lwz 4, 0xe4(5)
    lwz 0, 0xe8(5)
    stw 4, 0x8(1)
    stw 0, 0xc(1)
    lwz 4, 0xec(5)
    lwz 0, 0xf0(5)
    stw 4, 0x10(1)
    stw 0, 0x14(1)
    lwz 4, 0xf4(5)
    lwz 0, 0xf8(5)
    stw 4, 0x18(1)
    stw 0, 0x1c(1)
    lwz 4, 0xfc(5)
    lwz 0, 0x100(5)
    stw 4, 0x20(1)
    stw 0, 0x24(1)
    lwz 4, 0x104(5)
    lwz 0, 0x108(5)
    stw 4, 0x28(1)
    stw 0, 0x2c(1)
    lwz 4, 0x10c(5)
    lwz 0, 0x110(5)
    stw 4, 0x30(1)
    stw 0, 0x34(1)
    lwz 4, 0x114(5)
    lwz 0, 0x118(5)
    stw 4, 0x38(1)
    stw 0, 0x3c(1)
    lwz 4, 0x11c(5)
    lwz 0, 0x120(5)
    stw 4, 0x40(1)
    stw 0, 0x44(1)
    lwz 4, 0x124(5)
    lwz 0, 0x128(5)
    stw 4, 0x48(1)
    stw 0, 0x4c(1)
    lwz 4, 0x12c(5)
    lwz 0, 0x130(5)
    stw 4, 0x50(1)
    stw 0, 0x54(1)
    lwz 4, 0x134(5)
    lwz 0, 0x138(5)
    stw 4, 0x58(1)
    stw 0, 0x5c(1)
    lwz 4, 0x13c(5)
    lwz 0, 0x140(5)
    stw 4, 0x60(1)
    stw 0, 0x64(1)
    bl fn_8013B438
    li 3, 0x0
    bl fn_8005F50C
    lwz 3, 0xc(31)
    addi 4, 1, 0x8
    li 5, 0x9
    bl fn_800EBF88
L_8013DB18:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8013DB2C:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stw 31, 0xdc(1)
    stw 30, 0xd8(1)
    mr 30, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134CC8
    clrlwi. 0, 3, 24
    .4byte 0x408200B4 # bne .L_8013DC04
    addi 3, 1, 0x68
    bl PSMTXIdentity
    addi 31, 1, 0x98
    mr 3, 31
    bl PSMTXIdentity
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    addi 3, 1, 0x8
    bl PSMTXIdentity
    addi 3, 1, 0x38
    bl PSMTXIdentity
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x68
    lwz 3, 0x10(3)
    addi 3, 3, 0x80
    bl PSMTXCopy
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0A29E70 # lfs f5, lbl_8053CE10@sda21(r0)
    mr 3, 31
    lwz 5, 0x4(5)
    .4byte 0xC0229E60 # lfs f1, lbl_8053CE00@sda21(r0)
    fmr 6, 5
    lhz 0, 0x4(5)
    fmr 7, 5
    lhz 5, 0x6(5)
    fmr 3, 1
    xoris 0, 0, 0x8000
    xoris 5, 5, 0x8000
    stw 4, 0xc8(1)
    .4byte 0xC8829E78 # lfd f4, lbl_8053CE18@sda21(r0)
    fmr 8, 5
    stw 5, 0xcc(1)
    lfd 0, 0xc8(1)
    stw 0, 0xd4(1)
    fsubs 2, 0, 4
    stw 4, 0xd0(1)
    lfd 0, 0xd0(1)
    fsubs 4, 0, 4
    bl C_MTXLightOrtho
    lwz 3, 0xc(30)
    addi 4, 1, 0x68
    li 5, 0x4
    bl fn_800EBF88
L_8013DC04:
    lwz 0, 0xe4(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_8013DC1C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0xa
    stw 0, 0x14(1)
    lwz 3, 0xc(3)
    bl fn_800EBEF8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013DC44:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013DCC0
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8013DCA8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8013DCA8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8013DCA8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8013DCA8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8013DCA8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8013DCAC
L_8013DCA8:
    li 0, 0x1
L_8013DCAC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013DD14
L_8013DCC0:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8013DD00
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8013DD00
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8013DD00
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8013DD00
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8013DD00
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8013DD00
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8013DD04
L_8013DD00:
    li 0, 0x1
L_8013DD04:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013DD14:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8013DD40
    lwz 0, 0x4c(4)
    cmpwi 0, 0xc
    .4byte 0x4182001C # beq .L_8013DD40
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8013DD44
    li 31, 0x1
    .4byte 0x48000008 # b .L_8013DD44
L_8013DD40:
    li 31, 0x1
L_8013DD44:
    clrlwi. 0, 31, 24
    .4byte 0x41820074 # beq .L_8013DDBC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4182004C # beq .L_8013DDA4
    lwz 3, 0xc(30)
    li 4, 0x0
    bl fn_800EBEF8
    lwz 3, 0xc(30)
    li 4, 0x1
    bl fn_800EBEF8
    lwz 3, 0xc(30)
    li 4, 0x2
    bl fn_800EBEF8
    lwz 3, 0xc(30)
    li 4, 0x4
    bl fn_800EBEF8
    lwz 3, 0xc(30)
    li 4, 0x5
    bl fn_800EBEF8
    lwz 3, 0xc(30)
    li 4, 0x6
    bl fn_800EBEF8
L_8013DDA4:
    lwz 3, 0xc(30)
    li 4, 0x7
    bl fn_800EBEF8
    lwz 3, 0xc(30)
    li 4, 0x8
    bl fn_800EBEF8
L_8013DDBC:
    lwz 3, 0xc(30)
    li 4, 0x3
    bl fn_800EBEF8
    lwz 3, 0xc(30)
    li 4, 0x9
    bl fn_800EBEF8
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013DDEC:
    stwu 1, -0x150(1)
    mflr 0
    stw 0, 0x154(1)
    stmw 27, 0x13c(1)
    mr 31, 3
    lwz 3, 0xc(3)
    bl fn_800EC188
    li 0, 0x0
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013DE54
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013DE54:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x128
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x347
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x128(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x12c(1)
    li 9, 0x0
    stfs 0, 0x130(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x347
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013DF24
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013DF24:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x11c
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x346
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x11c(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x120(1)
    li 9, 0x0
    stfs 0, 0x124(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x346
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013DFF4
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013DFF4:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x110
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x345
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x110(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x114(1)
    li 9, 0x0
    stfs 0, 0x118(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x345
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E0C4
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E0C4:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x104
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x357
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x104(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x108(1)
    li 9, 0x0
    stfs 0, 0x10c(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x357
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E194
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E194:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xf8
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x358
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0xf8(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xfc(1)
    li 9, 0x0
    stfs 0, 0x100(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x358
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E264
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E264:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xec
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x348
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0xec(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xf0(1)
    li 9, 0x0
    stfs 0, 0xf4(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x348
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E334
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E334:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xe0
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x35c
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0xe0(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xe4(1)
    li 9, 0x0
    stfs 0, 0xe8(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x35c
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E404
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E404:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xd4
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x54d
    slwi 3, 0, 2
    li 6, 0x1
    stfs 0, 0xd4(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xd8(1)
    li 9, 0x0
    stfs 0, 0xdc(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x54d
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E4D4
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E4D4:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xc8
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x349
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0xc8(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xcc(1)
    li 9, 0x0
    stfs 0, 0xd0(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x349
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E5A4
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E5A4:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xbc
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x34a
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0xbc(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xc0(1)
    li 9, 0x0
    stfs 0, 0xc4(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x34a
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E674
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E674:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xb0
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x34b
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0xb0(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xb4(1)
    li 9, 0x0
    stfs 0, 0xb8(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x34b
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E744
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E744:
    lwz 0, 0x410c(31)
    addi 4, 1, 0xa4
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x34c
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0xa4(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xa8(1)
    li 9, 0x0
    stfs 0, 0xac(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 0, 0x0
    li 5, 0x34c
    li 4, 0x1
    lwzx 3, 31, 30
    stw 0, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 5, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 4, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E818
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E818:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x98
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x34d
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x98(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x9c(1)
    li 9, 0x0
    stfs 0, 0xa0(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 0, 0x0
    li 5, 0x34d
    li 4, 0x1
    lwzx 3, 31, 30
    stw 0, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 5, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 4, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E8EC
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E8EC:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x8c
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x354
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x8c(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x90(1)
    li 9, 0x0
    stfs 0, 0x94(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x354
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013E9BC
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013E9BC:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x80
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x355
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x80(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x84(1)
    li 9, 0x0
    stfs 0, 0x88(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x355
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013EA8C
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013EA8C:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x74
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x356
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x74(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x78(1)
    li 9, 0x0
    stfs 0, 0x7c(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x356
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013EB5C
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013EB5C:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x68
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x351
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x68(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x6c(1)
    li 9, 0x0
    stfs 0, 0x70(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x351
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013EC2C
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013EC2C:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x5c
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x352
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x5c(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x60(1)
    li 9, 0x0
    stfs 0, 0x64(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x352
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013ECFC
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013ECFC:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x50
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x353
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x50(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x54(1)
    li 9, 0x0
    stfs 0, 0x58(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x353
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013EDCC
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013EDCC:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x44
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x34e
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x44(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x48(1)
    li 9, 0x0
    stfs 0, 0x4c(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x34e
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013EE9C
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013EE9C:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x38
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x34f
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x38(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x3c(1)
    li 9, 0x0
    stfs 0, 0x40(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x34f
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013EF6C
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013EF6C:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x2c
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x350
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x2c(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x30(1)
    li 9, 0x0
    stfs 0, 0x34(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x350
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013F03C
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013F03C:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x20
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x359
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x20(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x24(1)
    li 9, 0x0
    stfs 0, 0x28(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x359
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013F10C
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013F10C:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x14
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x35a
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x14(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0x18(1)
    li 9, 0x0
    stfs 0, 0x1c(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    li 5, 0x0
    li 4, 0x35a
    lwzx 3, 31, 30
    stw 5, 0x24(3)
    lwzx 3, 31, 30
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 3, 31, 0
    sth 4, 0x4074(3)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 5, 0x40a8(3)
    lwz 3, 0x410c(31)
    addi 0, 3, 0x1
    stw 0, 0x410c(31)
    .4byte 0x880D8F5C # lbz r0, lbl_8053AB1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082003C # bne .L_8013F1DC
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F15C@ha
    addi 0, 4, lbl_80498978@l
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 0, 3, lbl_8049F15C@l
    lis 4, fn_8013C86C@ha
    lis 3, lbl_804BEC44@ha
    .4byte 0x900D8F60 # stw r0, lbl_8053AB20@sda21(r0)
    addi 5, 3, lbl_804BEC44@l
    addi 4, 4, fn_8013C86C@l
    .4byte 0x386D8F60 # li r3, lbl_8053AB20@sda21
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F5C # stb r0, lbl_8053AB1C@sda21(r0)
L_8013F1DC:
    lwz 0, 0x410c(31)
    addi 4, 1, 0x8
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    li 5, 0x35b
    slwi 3, 0, 2
    li 6, 0x0
    stfs 0, 0x8(1)
    addi 30, 3, 0x4010
    li 7, 0x0
    .4byte 0x390D8F60 # li r8, lbl_8053AB20@sda21
    stfs 0, 0xc(1)
    li 9, 0x0
    stfs 0, 0x10(1)
    lwz 3, 0xc(31)
    bl fn_800EBE1C
    stwx 3, 31, 30
    lis 3, lbl_80529DEC@ha
    li 6, 0x0
    li 5, 0x35b
    lwzx 4, 31, 30
    addi 3, 3, lbl_80529DEC@l
    stw 6, 0x24(4)
    lwzx 4, 31, 30
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    lwz 0, 0x410c(31)
    slwi 0, 0, 1
    add 4, 31, 0
    sth 5, 0x4074(4)
    lwz 0, 0x410c(31)
    slwi 0, 0, 2
    add 4, 31, 0
    stw 6, 0x40a8(4)
    lwz 4, 0x410c(31)
    addi 0, 4, 0x1
    stw 0, 0x410c(31)
    lwz 28, 0x10(3)
    cmplwi 28, 0x0
    .4byte 0x41820054 # beq .L_8013F2CC
    lis 3, lbl_8049F118@ha
    li 27, 0x0
    addi 29, 3, lbl_8049F118@l
    lis 30, 0x5449
L_8013F28C:
    mr 3, 28
    addi 4, 30, 0x4d47
    lwz 12, 0x0(28)
    lwz 5, 0x0(29)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr. 4, 3
    .4byte 0x41820010 # beq .L_8013F2BC
    lwz 3, 0x8(31)
    lwz 5, 0x4(29)
    bl fn_800F37E8
L_8013F2BC:
    addi 27, 27, 0x1
    addi 29, 29, 0x8
    cmpwi 27, 0x5
    .4byte 0x4180FFC4 # blt .L_8013F28C
L_8013F2CC:
    li 0, 0x20
    mr 4, 31
    li 3, 0x0
    mtctr 0
L_8013F2DC:
    sth 3, 0x12(4)
    sth 3, 0x22(4)
    sth 3, 0x32(4)
    sth 3, 0x42(4)
    sth 3, 0x52(4)
    sth 3, 0x62(4)
    sth 3, 0x72(4)
    sth 3, 0x82(4)
    sth 3, 0x92(4)
    sth 3, 0xa2(4)
    sth 3, 0xb2(4)
    sth 3, 0xc2(4)
    sth 3, 0xd2(4)
    sth 3, 0xe2(4)
    sth 3, 0xf2(4)
    sth 3, 0x102(4)
    sth 3, 0x112(4)
    sth 3, 0x122(4)
    sth 3, 0x132(4)
    sth 3, 0x142(4)
    sth 3, 0x152(4)
    sth 3, 0x162(4)
    sth 3, 0x172(4)
    sth 3, 0x182(4)
    sth 3, 0x192(4)
    sth 3, 0x1a2(4)
    sth 3, 0x1b2(4)
    sth 3, 0x1c2(4)
    sth 3, 0x1d2(4)
    sth 3, 0x1e2(4)
    sth 3, 0x1f2(4)
    sth 3, 0x202(4)
    addi 4, 4, 0x200
    .4byte 0x4200FF7C # bdnz .L_8013F2DC
    lmw 27, 0x13c(1)
    lwz 0, 0x154(1)
    mtlr 0
    addi 1, 1, 0x150
    blr

fn_8013F378:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820034 # beq .L_8013F3C8
    lis 3, lbl_8049F178@ha
    li 4, 0x0
    addi 0, 3, lbl_8049F178@l
    stw 0, 0x0(30)
    lwz 3, 0xc(30)
    bl fn_800EC2BC
    lwz 3, 0x4(30)
    bl fn_8008383C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8013F3C8
    mr 3, 30
    bl dtor_80084580
L_8013F3C8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013F3E4:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_8049F178@ha
    li 6, 0x10
    stw 0, 0x24(1)
    addi 0, 5, lbl_8049F178@l
    lis 5, lbl_80465980@ha
    li 7, 0x400
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, fn_8013F584@ha
    stw 30, 0x18(1)
    addi 30, 5, lbl_80465980@l
    li 5, 0x0
    stw 29, 0x14(1)
    mr 29, 4
    stw 0, 0x0(31)
    addi 0, 3, fn_8013F584@l
    mr 4, 0
    addi 3, 31, 0x10
    bl __construct_array
    mr 4, 29
    li 3, -0x1
    li 5, 0x0
    bl fn_80084BAC
    stw 3, 0x4(31)
    li 3, 0x14
    li 5, 0x0
    lwz 4, 0x4(31)
    bl fn_8008440C
    mr. 29, 3
    .4byte 0x4182003C # beq .L_8013F49C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    addi 5, 30, 0xb8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 5, 0x4(31)
    mr 4, 3
    mr 3, 29
    bl fn_800F3750
    mr 29, 3
L_8013F49C:
    stw 29, 0x8(31)
    addi 3, 30, 0xc8
    crclr 6
    bl OSReport
    lwz 4, 0x4(31)
    li 3, 0x30
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820020 # beq .L_8013F4E0
    lwz 6, 0x4(31)
    li 4, 0x1c00
    li 5, 0x200
    li 7, 0xb
    li 8, 0x8
    bl fn_800EBA98
    mr 0, 3
L_8013F4E0:
    stw 0, 0xc(31)
    li 5, 0x0
    lwz 3, 0xc(31)
    lwz 4, 0x8(31)
    bl fn_800EC2AC
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 5, 30, 0xe8
    lwz 3, 0x8(31)
    lwz 4, 0x34(4)
    lwz 4, 0x20(4)
    bl fn_800F37E8
    lwz 3, 0x4(31)
    bl fn_80084D84
    li 0, 0xc8
    li 9, 0xfa
    stb 0, 0x4110(31)
    li 8, 0xac
    li 7, 0xae
    li 6, 0xb4
    stb 9, 0x4111(31)
    li 5, 0xd2
    li 4, 0xe6
    li 0, 0xf0
    stb 8, 0x4112(31)
    mr 3, 31
    stb 9, 0x4113(31)
    stb 7, 0x4114(31)
    stb 8, 0x4115(31)
    stb 6, 0x4116(31)
    stb 5, 0x4117(31)
    stb 4, 0x4118(31)
    stb 0, 0x4119(31)
    stb 6, 0x411a(31)
    stb 0, 0x411b(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8013F584:
    blr

fn_8013F588:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x28(3)
    bl fn_8013C958
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013F5B0:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 30, 4
    .4byte 0xC0429E80 # lfs f2, lbl_8053CE20@sda21(r0)
    addi 3, 1, 0x14
    lwz 4, 0x28(5)
    fmr 3, 2
    .4byte 0xC0229E64 # lfs f1, lbl_8053CE04@sda21(r0)
    lwz 4, 0xc(4)
    lwz 31, 0x20(4)
    psq_l 8, 0x184(31), 0, 0
    psq_l 7, 0x18c(31), 0, 0
    psq_l 6, 0x194(31), 0, 0
    psq_l 5, 0x19c(31), 0, 0
    psq_l 4, 0x1a4(31), 0, 0
    psq_l 0, 0x1ac(31), 0, 0
    psq_st 8, 0x44(1), 0, 0
    psq_st 7, 0x4c(1), 0, 0
    psq_st 6, 0x54(1), 0, 0
    psq_st 5, 0x5c(1), 0, 0
    psq_st 4, 0x64(1), 0, 0
    psq_st 0, 0x6c(1), 0, 0
    bl PSMTXScale
    addi 3, 1, 0x44
    addi 4, 1, 0x14
    mr 5, 3
    bl PSMTXConcat
    lfs 2, 0xa4(30)
    addi 3, 1, 0x14
    lfs 1, 0xa8(30)
    lfs 0, 0xac(30)
    stfs 1, 0xc(1)
    .4byte 0xC3E29E84 # lfs f31, lbl_8053CE24@sda21(r0)
    stfs 2, 0x8(1)
    .4byte 0xC0229E60 # lfs f1, lbl_8053CE00@sda21(r0)
    stfs 0, 0x10(1)
    psq_l 2, 0x8(1), 0, 0
    psq_l 0, 0x10(1), 1, 0
    ps_muls0 2, 2, 31
    ps_muls0 0, 0, 31
    psq_st 2, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 2, 0xc(1)
    stfs 1, 0x8(1)
    lfs 3, 0x10(1)
    bl PSMTXTrans
    addi 3, 1, 0x44
    addi 4, 1, 0x14
    mr 5, 3
    bl PSMTXConcat
    addi 3, 1, 0x44
    addi 4, 31, 0x184
    bl PSMTXCopy
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8013F6BC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x28(3)
    lwz 3, 0x24(3)
    lwz 4, 0xc(4)
    addi 3, 3, 0xe4
    lwz 4, 0x20(4)
    addi 4, 4, 0x184
    bl PSMTXCopy
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013F6F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8013F73C
    lis 5, lbl_8049F184@ha
    li 4, 0x0
    addi 0, 5, lbl_8049F184@l
    stw 0, 0x0(30)
    bl fn_800EB208
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8013F73C
    mr 3, 30
    bl dtor_80084580
L_8013F73C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013F758:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80498978@ha
    lis 3, lbl_8049F184@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_80498978@l
    lis 4, lbl_804BEC38@ha
    stw 31, 0xc(1)
    addi 31, 4, lbl_804BEC38@l
    addi 5, 31, 0x0
    .4byte 0x900D8F58 # stw r0, lbl_8053AB18@sda21(r0)
    addi 0, 3, lbl_8049F184@l
    lis 3, fn_8013F6F8@ha
    .4byte 0x900D8F58 # stw r0, lbl_8053AB18@sda21(r0)
    addi 4, 3, fn_8013F6F8@l
    .4byte 0x386D8F58 # li r3, lbl_8053AB18@sda21
    bl __register_global_object
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F7D4
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8013F7D4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F80C
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8013F80C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F844
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8013F844:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F87C
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8013F87C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F8B4
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8013F8B4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F8EC
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8013F8EC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F924
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8013F924:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F95C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8013F95C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013F994
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x78
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8013F994:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8013F758

