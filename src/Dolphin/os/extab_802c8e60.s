# Dispatch-cross-check bundle: 4 real FourCC actor vtable bodies
# (lbl_804A8E40/8EA0/8EF8/8F74, ctors already landed) plus shared
# helper/update functions, landed as ONE byte-contiguous 19-function,
# 9060-byte Track-A bundle (0x802C8E60-0x802CB1C4). Found+verified via
# spanwalk.py (stopped exactly at the pre-existing extab_802cb1c4.s
# boundary) and resolvefiles.py. See
# project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000CADC
etb_8000CADC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CADC, 8

.global etb_8000CAE4
etb_8000CAE4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CAE4, 8

.global etb_8000CAEC
etb_8000CAEC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CAEC, 8

.global etb_8000CAF4
etb_8000CAF4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CAF4, 8

.global etb_8000CAFC
etb_8000CAFC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CAFC, 8

.global etb_8000CB04
etb_8000CB04:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CB04, 8

.global etb_8000CB0C
etb_8000CB0C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CB0C, 8

.global etb_8000CB14
etb_8000CB14:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CB14, 8

.global etb_8000CB1C
etb_8000CB1C:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_8000CB1C, 8

.global etb_8000CB24
etb_8000CB24:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000CB24, 8

.global etb_8000CB2C
etb_8000CB2C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CB2C, 8

.global etb_8000CB34
etb_8000CB34:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CB34, 8

.global etb_8000CB3C
etb_8000CB3C:
    .4byte 0x488A0000
    .4byte 0x00000000
.size etb_8000CB3C, 8

.global etb_8000CB44
etb_8000CB44:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000CB44, 8

.global etb_8000CB4C
etb_8000CB4C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CB4C, 8

.global etb_8000CB54
etb_8000CB54:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CB54, 8

.section extabindex, "a"
.balign 4
.global eti_8001B9C4
eti_8001B9C4:
    .4byte fn_802C8E60
    .4byte 0x000000C8
    .4byte etb_8000CADC
.size eti_8001B9C4, 12

.global eti_8001B9D0
eti_8001B9D0:
    .4byte fn_802C8F28
    .4byte 0x0000035C
    .4byte etb_8000CAE4
.size eti_8001B9D0, 12

.global eti_8001B9DC
eti_8001B9DC:
    .4byte fn_802C92D0
    .4byte 0x00000224
    .4byte etb_8000CAEC
.size eti_8001B9DC, 12

.global eti_8001B9E8
eti_8001B9E8:
    .4byte fn_802C94F4
    .4byte 0x00000060
    .4byte etb_8000CAF4
.size eti_8001B9E8, 12

.global eti_8001B9F4
eti_8001B9F4:
    .4byte fn_802C9558
    .4byte 0x00000188
    .4byte etb_8000CAFC
.size eti_8001B9F4, 12

.global eti_8001BA00
eti_8001BA00:
    .4byte fn_802C9720
    .4byte 0x00000224
    .4byte etb_8000CB04
.size eti_8001BA00, 12

.global eti_8001BA0C
eti_8001BA0C:
    .4byte fn_802C9944
    .4byte 0x00000060
    .4byte etb_8000CB0C
.size eti_8001BA0C, 12

.global eti_8001BA18
eti_8001BA18:
    .4byte fn_802C99A4
    .4byte 0x00000228
    .4byte etb_8000CB14
.size eti_8001BA18, 12

.global eti_8001BA24
eti_8001BA24:
    .4byte fn_802C9BCC
    .4byte 0x0000037C
    .4byte etb_8000CB1C
.size eti_8001BA24, 12

.global eti_8001BA30
eti_8001BA30:
    .4byte fn_802C9F48
    .4byte 0x00000118
    .4byte etb_8000CB24
.size eti_8001BA30, 12

.global eti_8001BA3C
eti_8001BA3C:
    .4byte fn_802CA060
    .4byte 0x00000224
    .4byte etb_8000CB2C
.size eti_8001BA3C, 12

.global eti_8001BA48
eti_8001BA48:
    .4byte fn_802CA284
    .4byte 0x00000570
    .4byte etb_8000CB34
.size eti_8001BA48, 12

.global eti_8001BA54
eti_8001BA54:
    .4byte fn_802CA7F4
    .4byte 0x000005BC
    .4byte etb_8000CB3C
.size eti_8001BA54, 12

.global eti_8001BA60
eti_8001BA60:
    .4byte fn_802CADB0
    .4byte 0x00000100
    .4byte etb_8000CB44
.size eti_8001BA60, 12

.global eti_8001BA6C
eti_8001BA6C:
    .4byte fn_802CAEB0
    .4byte 0x000000F0
    .4byte etb_8000CB4C
.size eti_8001BA6C, 12

.global eti_8001BA78
eti_8001BA78:
    .4byte fn_802CAFA0
    .4byte 0x00000224
    .4byte etb_8000CB54
.size eti_8001BA78, 12

.text
.balign 4
.global fn_802C8E60
.global fn_802C8F28
.global fn_802C9284
.global fn_802C92D0
.global fn_802C94F4
.global fn_802C9554
.global fn_802C9558
.global fn_802C96E0
.global fn_802C9720
.global fn_802C9944
.global fn_802C99A4
.global fn_802C9BCC
.global fn_802C9F48
.global fn_802CA060
.global fn_802CA284
.global fn_802CA7F4
.global fn_802CADB0
.global fn_802CAEB0
.global fn_802CAFA0

fn_802C8E60:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr. 29, 3
    .4byte 0x41820088 # beq .L_802C8F08
    lis 3, lbl_804A8E40@ha
    addi 0, 3, lbl_804A8E40@l
    stw 0, 0x0(29)
    lwz 0, 0x23c(29)
    cmpwi 0, 0x2
    .4byte 0x40820054 # bne .L_802C8EEC
    lfs 1, 0x10(29)
    addi 3, 1, 0x8
    lfs 0, 0xc(29)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 4, 0x4(29)
    bl fn_80226BC4
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    clrlwi 5, 31, 16
    bl fn_802D4C10
    mr 31, 3
    cmpwi 31, -0x1
    .4byte 0x41820018 # beq .L_802C8EEC
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    mr 5, 31
    li 6, 0x0
    bl fn_802D7D00
L_802C8EEC:
    mr 3, 29
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_802C8F08
    mr 3, 29
    bl dtor_80084580
L_802C8F08:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802C8F28:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x248(31)
    clrlwi 3, 3, 24
    li 30, 0x0
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C8F64
    li 30, 0x1
    .4byte 0x48000048 # b .L_802C8FA8
L_802C8F64:
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_802C8F7C
    cmplwi 3, 0x3
    .4byte 0x41800038 # blt .L_802C8FA8
    li 30, 0x1
    .4byte 0x48000030 # b .L_802C8FA8
L_802C8F7C:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_802C8F94
    cmplwi 3, 0x4
    .4byte 0x41800020 # blt .L_802C8FA8
    li 30, 0x1
    .4byte 0x48000018 # b .L_802C8FA8
L_802C8F94:
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802C8FA8
    cmplwi 3, 0x2
    .4byte 0x41800008 # blt .L_802C8FA8
    li 30, 0x1
L_802C8FA8:
    lfs 1, 0x10(31)
    addi 3, 1, 0x8
    lfs 0, 0xc(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    stw 3, 0x250(31)
    bl GetRoomConfigRecord
    lwz 0, 0x250(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D4ADC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802C8FF8
    lwz 0, 0x234(31)
    cmpwi 0, 0x30
    .4byte 0x41820008 # beq .L_802C8FF8
    li 30, 0x0
L_802C8FF8:
    cmpwi 30, 0x1
    .4byte 0x41820010 # beq .L_802C900C
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x4082025C # bne .L_802C9264
L_802C900C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_802C903C
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800010 # bge .L_802C9030
    li 0, 0x1
    stb 0, 0x256(31)
    .4byte 0x48000018 # b .L_802C9044
L_802C9030:
    li 0, 0x8
    stb 0, 0x256(31)
    .4byte 0x4800000C # b .L_802C9044
L_802C903C:
    li 0, 0x0
    stb 0, 0x256(31)
L_802C9044:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 5, 5
    .4byte 0x41820010 # beq .L_802C905C
    li 0, 0x1
    stb 0, 0x24c(31)
    .4byte 0x4800000C # b .L_802C9064
L_802C905C:
    li 0, 0x0
    stb 0, 0x24c(31)
L_802C9064:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    lwz 5, 0x250(31)
    bl fn_802F9908
    sth 3, 0x254(31)
    li 0, 0x0
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x30
    .4byte 0x40820080 # bne .L_802C910C
    li 0, 0x2
    stw 0, 0x240(31)
    bl GetRoomConfigRecord
    lwz 0, 0x250(31)
    addi 6, 1, 0x18
    lwz 4, 0x4(31)
    addi 7, 1, 0x10
    clrlwi 5, 0, 16
    bl fn_802D4874
    bl GetRoomConfigRecord
    lwz 0, 0x250(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D4ADC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200D0 # bne .L_802C91A0
    li 0, 0x10
    stw 0, 0x234(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x234(31)
    lwz 7, 0x4(31)
    lbz 4, 0x256(31)
    clrlwi 6, 0, 16
    lwz 3, 0x20(3)
    lwz 5, 0x250(31)
    add 4, 7, 4
    bl fn_802F9974
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000098 # b .L_802C91A0
L_802C910C:
    cmpwi 0, 0x8b
    .4byte 0x4180005C # blt .L_802C916C
    cmpwi 0, 0x8e
    .4byte 0x41810054 # bgt .L_802C916C
    bl GetRoomConfigRecord
    lwz 0, 0x250(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D49A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_802C91A0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x234(31)
    lwz 7, 0x4(31)
    lbz 4, 0x256(31)
    clrlwi 6, 0, 16
    lwz 3, 0x20(3)
    lwz 5, 0x250(31)
    add 4, 7, 4
    bl fn_802F9974
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000038 # b .L_802C91A0
L_802C916C:
    cmpwi 0, 0x17
    .4byte 0x4182000C # beq .L_802C917C
    cmpwi 0, 0x16
    .4byte 0x40820010 # bne .L_802C9188
L_802C917C:
    li 0, 0x2
    stw 0, 0x240(31)
    .4byte 0x4800001C # b .L_802C91A0
L_802C9188:
    cmpwi 0, 0x3ee
    .4byte 0x4182000C # beq .L_802C9198
    cmpwi 0, 0x3ef
    .4byte 0x4082000C # bne .L_802C91A0
L_802C9198:
    li 0, 0x3
    stw 0, 0x240(31)
L_802C91A0:
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x4182002C # beq .L_802C91D4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C91D4
    li 0, 0x0
    stb 0, 0x24c(31)
L_802C91D4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x40820064 # bne .L_802C9240
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_802C9240
    li 0, 0x3
    stw 0, 0x230(31)
    lhz 0, 0x254(31)
    lwz 3, 0x234(31)
    cmpw 0, 3
    .4byte 0x40820018 # bne .L_802C9228
    cmpwi 3, 0x9e
    .4byte 0x41820008 # beq .L_802C9220
    .4byte 0x4800000C # b .L_802C9228
L_802C9220:
    li 0, 0xdc
    sth 0, 0x254(31)
L_802C9228:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x48000030 # b .L_802C926C
L_802C9240:
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_802C926C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    .4byte 0x4800000C # b .L_802C926C
L_802C9264:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802C926C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802C9284:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 22
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 12
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 3, 9
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 3, 6
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 16
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 20
    stw 0, 0x248(3)
    blr

fn_802C92D0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3268@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3268@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9320
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
L_802C9320:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9358
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
L_802C9358:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9390
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
L_802C9390:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C93C8
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
L_802C93C8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9400
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
L_802C9400:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9438
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
L_802C9438:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9470
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
L_802C9470:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C94A8
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
L_802C94A8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C94E0
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
L_802C94E0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802C94F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802C9538
    lis 5, lbl_804A8EA0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8EA0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802C9538
    mr 3, 30
    bl dtor_80084580
L_802C9538:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802C9554:
    blr

fn_802C9558:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x418200A8 # beq .L_802C9620
    .4byte 0x40800010 # bge .L_802C958C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802C9598
    .4byte 0x48000140 # b .L_802C96C8
L_802C958C:
    cmpwi 0, 0x3
    .4byte 0x40800138 # bge .L_802C96C8
    .4byte 0x480000C0 # b .L_802C9654
L_802C9598:
    lwz 30, 0x234(31)
    cmpwi 30, 0x0
    .4byte 0x41820018 # beq .L_802C95B8
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820114 # beq .L_802C96C8
L_802C95B8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200E8 # bne .L_802C96C8
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802C960C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802C960C:
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    stw 0, 0x240(31)
    .4byte 0x480000AC # b .L_802C96C8
L_802C9620:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_802C9648
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000084 # b .L_802C96C8
L_802C9648:
    subi 0, 3, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000078 # b .L_802C96C8
L_802C9654:
    lwz 30, 0x234(31)
    cmpwi 30, 0x0
    .4byte 0x41820018 # beq .L_802C9674
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_802C96C8
L_802C9674:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_802C96C8
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802C96C8
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802C96C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802C96E0:
    lwz 0, 0x90(3)
    li 4, 0x0
    extrwi 0, 0, 5, 5
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 20
    stw 0, 0x23c(3)
    stw 4, 0x240(3)
    lwz 0, 0x23c(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802C9718
    li 0, 0x2
    stw 0, 0x230(3)
    blr
L_802C9718:
    stw 4, 0x230(3)
    blr

fn_802C9720:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3368@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3368@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9770
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
L_802C9770:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C97A8
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
L_802C97A8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C97E0
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
L_802C97E0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9818
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
L_802C9818:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9850
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
L_802C9850:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9888
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
L_802C9888:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C98C0
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
L_802C98C0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C98F8
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
L_802C98F8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C9930
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
L_802C9930:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802C9944:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802C9988
    lis 5, lbl_804A8EF8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8EF8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802C9988
    mr 3, 30
    bl dtor_80084580
L_802C9988:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802C99A4:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x38
    stw 31, 0x8c(1)
    mr 31, 3
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_802C9A30
L_802C99D0:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_802C9A30:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802C99D0
    .4byte 0xC002DDD0 # lfs f0, lbl_80540D70@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    stfs 0, 0x14(1)
    stfs 0, 0x24(1)
    stfs 0, 0x34(1)
    lbz 0, 0x242(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_802C9ACC
    stb 4, 0x54(1)
    stb 4, 0x55(1)
    .4byte 0x4800000C # b .L_802C9AD4
L_802C9ACC:
    stb 6, 0x54(1)
    stb 5, 0x55(1)
L_802C9AD4:
    lwz 4, 0x23c(31)
    lis 9, 0x4330
    lwz 0, 0x238(31)
    lis 3, lbl_8046D818@ha
    xoris 5, 4, 0x8000
    .4byte 0xC022DDD0 # lfs f1, lbl_80540D70@sda21(r0)
    stw 5, 0x7c(1)
    xoris 4, 0, 0x8000
    .4byte 0xC002DDD4 # lfs f0, lbl_80540D74@sda21(r0)
    addi 5, 3, lbl_8046D818@l
    stw 9, 0x78(1)
    lis 3, 0x5449
    .4byte 0xC862DDD8 # lfd f3, lbl_80540D78@sda21(r0)
    addi 0, 1, 0x8
    lfd 2, 0x78(1)
    li 8, 0xff
    stw 4, 0x84(1)
    addi 4, 3, 0x4d47
    fsubs 4, 2, 3
    li 7, 0x0
    stw 9, 0x80(1)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lfd 2, 0x80(1)
    stfs 1, 0xc(1)
    fsubs 2, 2, 3
    stfs 1, 0x10(1)
    stfs 2, 0x8(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 4, 0x30(1)
    lwz 3, 0x244(31)
    stb 8, 0x48(1)
    stb 8, 0x49(1)
    stb 8, 0x4a(1)
    stb 3, 0x4b(1)
    stb 7, 0x4c(1)
    stb 7, 0x4d(1)
    stb 7, 0x4e(1)
    stb 3, 0x4f(1)
    stw 0, 0x50(1)
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802C9BB8
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    addi 6, 1, 0x38
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802C9BB8:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_802C9BCC:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    mr 30, 3
    lfs 1, 0x10(3)
    li 31, 0x0
    lfs 30, 0x64(3)
    lfs 28, 0x6c(3)
    lbz 0, 0x7e(4)
    fadds 30, 30, 1
    lfs 0, 0xc(3)
    fadds 28, 28, 1
    lfs 31, 0x60(3)
    cmplwi 0, 0x1
    lfs 29, 0x68(3)
    fadds 31, 31, 0
    fadds 29, 29, 0
    .4byte 0x4082010C # bne .L_802C9D4C
    li 29, 0x0
L_802C9C48:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 29
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_802C9CD8
    mr 3, 29
    bl fn_8022EA0C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 0, 0x0
    lfs 0, 0x8(3)
    psq_st 1, 0x20(1), 0, 0
    lfs 1, 0x20(1)
    stfs 0, 0x28(1)
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802C9CC8
    lfs 0, 0x24(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802C9CC8
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_802C9CC8
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_802C9CC8
    li 0, 0x1
L_802C9CC8:
    clrlwi. 0, 0, 24
    .4byte 0x41820070 # beq .L_802C9D3C
    li 31, 0x1
    .4byte 0x480000D8 # b .L_802C9DAC
L_802C9CD8:
    mr 3, 29
    bl fn_8022EA0C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 0, 0x0
    lfs 0, 0x8(3)
    psq_st 1, 0x14(1), 0, 0
    lfs 1, 0x14(1)
    stfs 0, 0x1c(1)
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802C9D2C
    lfs 0, 0x18(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802C9D2C
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_802C9D2C
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_802C9D2C
    li 0, 0x1
L_802C9D2C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_802C9D3C
    li 31, 0x1
    .4byte 0x48000074 # b .L_802C9DAC
L_802C9D3C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF04 # blt .L_802C9C48
    .4byte 0x48000064 # b .L_802C9DAC
L_802C9D4C:
    li 3, 0x0
    bl fn_8022EA0C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 0, 0x0
    lfs 0, 0x8(3)
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0x8(1)
    stfs 0, 0x10(1)
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802C9DA0
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802C9DA0
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_802C9DA0
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_802C9DA0
    li 0, 0x1
L_802C9DA0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_802C9DAC
    li 31, 0x1
L_802C9DAC:
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x41820100 # beq .L_802C9EB4
    .4byte 0x40800014 # bge .L_802C9DCC
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802C9DDC
    .4byte 0x4080002C # bge .L_802C9DF0
    .4byte 0x48000144 # b .L_802C9F0C
L_802C9DCC:
    cmpwi 0, 0x4
    .4byte 0x4182013C # beq .L_802C9F0C
    .4byte 0x40800138 # bge .L_802C9F0C
    .4byte 0x480000F0 # b .L_802C9EC8
L_802C9DDC:
    clrlwi. 0, 31, 24
    .4byte 0x4182012C # beq .L_802C9F0C
    li 0, 0x1
    stw 0, 0x230(30)
    .4byte 0x48000120 # b .L_802C9F0C
L_802C9DF0:
    lbz 0, 0x240(30)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_802C9E6C
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DDE0 # lfs f1, lbl_80540D80@sda21(r0)
    li 5, 0x564
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DDD4 # lfs f1, lbl_80540D74@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x240(30)
    stb 0, 0x11c(30)
L_802C9E6C:
    lbz 0, 0x241(30)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_802C9EA0
    lwz 3, 0x244(30)
    subi 0, 3, 0xc
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802C9EA0
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x244(30)
    stw 0, 0x230(30)
L_802C9EA0:
    clrlwi. 0, 31, 24
    .4byte 0x40820068 # bne .L_802C9F0C
    li 0, 0x3
    stw 0, 0x230(30)
    .4byte 0x4800005C # b .L_802C9F0C
L_802C9EB4:
    clrlwi. 0, 31, 24
    .4byte 0x40820054 # bne .L_802C9F0C
    li 0, 0x3
    stw 0, 0x230(30)
    .4byte 0x48000048 # b .L_802C9F0C
L_802C9EC8:
    lbz 0, 0x241(30)
    cmplwi 0, 0xff
    .4byte 0x4181002C # bgt .L_802C9EFC
    lwz 3, 0x244(30)
    addi 0, 3, 0xc
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0xff
    .4byte 0x41800014 # blt .L_802C9EFC
    li 3, 0xff
    li 0, 0x0
    stw 3, 0x244(30)
    stw 0, 0x230(30)
L_802C9EFC:
    clrlwi. 0, 31, 24
    .4byte 0x4182000C # beq .L_802C9F0C
    li 0, 0x1
    stw 0, 0x230(30)
L_802C9F0C:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x84(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802C9F48:
    stwu 1, -0x20(1)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 4, 0, 8, 16
    addi 0, 4, 0x1
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 4, 0, 8, 8
    addi 0, 4, 0x1
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 7, 7
    .4byte 0x41820010 # beq .L_802C9F90
    li 0, 0x1
    stb 0, 0x240(3)
    .4byte 0x4800000C # b .L_802C9F98
L_802C9F90:
    li 0, 0x0
    stb 0, 0x240(3)
L_802C9F98:
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x41820010 # beq .L_802C9FB0
    li 0, 0x1
    stb 0, 0x241(3)
    .4byte 0x4800000C # b .L_802C9FB8
L_802C9FB0:
    li 0, 0x0
    stb 0, 0x241(3)
L_802C9FB8:
    lwz 5, 0x23c(3)
    lis 4, 0x4330
    lwz 0, 0x238(3)
    slwi 5, 5, 3
    stw 4, 0x10(1)
    srawi 5, 5, 1
    slwi 0, 0, 3
    srawi 0, 0, 1
    stw 4, 0x8(1)
    xoris 0, 0, 0x8000
    xoris 4, 5, 0x8000
    stw 0, 0x14(1)
    .4byte 0xC862DDD8 # lfd f3, lbl_80540D78@sda21(r0)
    stw 4, 0xc(1)
    lfd 0, 0x10(1)
    lfd 2, 0x8(1)
    fsubs 0, 0, 3
    .4byte 0xC022DDE4 # lfs f1, lbl_80540D84@sda21(r0)
    fsubs 2, 2, 3
    fsubs 3, 0, 1
    fsubs 2, 2, 1
    fneg 1, 3
    fneg 0, 2
    stfs 1, 0x60(3)
    stfs 0, 0x64(3)
    stfs 3, 0x68(3)
    stfs 2, 0x6c(3)
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 5, 5
    .4byte 0x41820018 # beq .L_802CA044
    li 4, 0x1
    li 0, 0x4
    stb 4, 0x242(3)
    stw 0, 0x230(3)
    .4byte 0x48000010 # b .L_802CA050
L_802CA044:
    li 0, 0x0
    stb 0, 0x242(3)
    stw 0, 0x230(3)
L_802CA050:
    li 0, 0xff
    stw 0, 0x244(3)
    addi 1, 1, 0x20
    blr

fn_802CA060:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3468@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3468@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA0B0
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
L_802CA0B0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA0E8
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
L_802CA0E8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA120
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
L_802CA120:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA158
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
L_802CA158:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA190
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
L_802CA190:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA1C8
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
L_802CA1C8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA200
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
L_802CA200:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA238
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
L_802CA238:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CA270
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
L_802CA270:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CA284:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stw 31, 0xbc(1)
    stw 30, 0xb8(1)
    li 30, 0x0
    stw 29, 0xb4(1)
    mr 29, 3
    mr 31, 29
L_802CA2A8:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31ef(3)
    cmplwi 0, 0x0
    .4byte 0x40820510 # bne .L_802CA7C8
    lwz 0, 0x27c(31)
    cmpwi 0, 0x0
    .4byte 0x41820504 # beq .L_802CA7C8
    li 0, -0x1
    addi 9, 1, 0x68
    stw 0, 0x78(1)
    li 10, 0x0
    stw 0, 0x7c(1)
    .4byte 0x48000064 # b .L_802CA340
L_802CA2E0:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_802CA340:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802CA2E0
    li 7, 0x0
    li 0, 0x1
    li 8, -0x1
    li 6, 0x3
    li 5, 0x2
    stw 8, 0x78(1)
    slw 3, 0, 30
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stw 7, 0x7c(1)
    clrlwi 3, 3, 24
    stw 7, 0x80(1)
    stb 7, 0x84(1)
    stb 7, 0x85(1)
    stb 7, 0x86(1)
    stb 0, 0x87(1)
    stb 0, 0x88(1)
    stb 7, 0x89(1)
    stb 7, 0x8a(1)
    stb 7, 0x8b(1)
    stb 7, 0x8c(1)
    stb 7, 0x8d(1)
    stb 0, 0x8e(1)
    stw 6, 0x90(1)
    stb 0, 0x94(1)
    stb 7, 0x95(1)
    stb 7, 0x96(1)
    stw 8, 0x98(1)
    stw 7, 0x9c(1)
    stw 5, 0xa0(1)
    lbz 4, 0x82(4)
    and 4, 4, 3
    neg 3, 4
    or 3, 3, 4
    srwi 3, 3, 31
    cmplwi 3, 0x1
    .4byte 0x408203F0 # bne .L_802CA7C8
    lwz 3, 0x28c(31)
    cmpwi 3, 0x3
    .4byte 0x41820210 # beq .L_802CA5F4
    .4byte 0x40800014 # bge .L_802CA3FC
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_802CA408
    .4byte 0x40800118 # bge .L_802CA50C
    .4byte 0x480003D0 # b .L_802CA7C8
L_802CA3FC:
    cmpwi 3, 0x9
    .4byte 0x408003C8 # bge .L_802CA7C8
    .4byte 0x480002D8 # b .L_802CA6DC
L_802CA408:
    .4byte 0xC022DDF4 # lfs f1, lbl_80540D94@sda21(r0)
    .4byte 0x3902DDE8 # li r8, lbl_80540D88@sda21
    stb 0, 0x84(1)
    .4byte 0x38E2DDEC # li r7, lbl_80540D8C@sda21
    .4byte 0x38C2DDF0 # li r6, lbl_80540D90@sda21
    addi 5, 30, 0x274
    stfs 1, 0x44(1)
    addi 4, 1, 0x38
    .4byte 0xC002DDF8 # lfs f0, lbl_80540D98@sda21(r0)
    mr 3, 30
    stfs 1, 0x54(1)
    stfs 1, 0x64(1)
    stb 0, 0x85(1)
    stb 0, 0x95(1)
    lwz 0, 0x244(31)
    lbzx 8, 8, 0
    lbzx 7, 7, 0
    lbzx 0, 6, 0
    stb 8, 0x78(1)
    stb 7, 0x79(1)
    stb 0, 0x7a(1)
    lbzx 0, 29, 5
    stb 0, 0x7b(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 1, 0x48(1)
    stfs 0, 0x4c(1)
    stfs 1, 0x50(1)
    stfs 1, 0x58(1)
    stfs 1, 0x5c(1)
    stfs 0, 0x60(1)
    stw 4, 0x80(1)
    bl fn_8022EA0C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lis 4, lbl_804A8F50@ha
    lfs 0, 0x8(3)
    lis 3, 0x5449
    addi 4, 4, lbl_804A8F50@l
    psq_st 1, 0xc(29), 0, 0
    addi 3, 3, 0x4d47
    stfs 0, 0x14(29)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    lfs 2, 0x10(29)
    .4byte 0xC022DDFC # lfs f1, lbl_80540D9C@sda21(r0)
    lfs 3, 0x14(29)
    lfs 0, 0xc(29)
    fsubs 1, 2, 1
    stfs 0, 0x2c(1)
    stfs 1, 0x30(1)
    stfs 3, 0x34(1)
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x408002DC # bge .L_802CA7C8
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x2c
    addi 6, 1, 0x68
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480002C0 # b .L_802CA7C8
L_802CA50C:
    .4byte 0xC022DDF4 # lfs f1, lbl_80540D94@sda21(r0)
    li 8, 0xf2
    li 7, 0x49
    li 6, 0x12
    stfs 1, 0x44(1)
    addi 5, 30, 0x274
    .4byte 0xC002DDF8 # lfs f0, lbl_80540D98@sda21(r0)
    addi 4, 1, 0x38
    stfs 1, 0x54(1)
    mr 3, 30
    stfs 1, 0x64(1)
    stb 0, 0x84(1)
    stb 0, 0x85(1)
    stb 0, 0x95(1)
    stb 8, 0x78(1)
    stb 7, 0x79(1)
    stb 6, 0x7a(1)
    lbzx 0, 29, 5
    stb 0, 0x7b(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 1, 0x48(1)
    stfs 0, 0x4c(1)
    stfs 1, 0x50(1)
    stfs 1, 0x58(1)
    stfs 1, 0x5c(1)
    stfs 0, 0x60(1)
    stw 4, 0x80(1)
    bl fn_8022EA0C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lis 4, lbl_8046D8CC@ha
    lfs 0, 0x8(3)
    lis 3, 0x5449
    addi 4, 4, lbl_8046D8CC@l
    psq_st 1, 0xc(29), 0, 0
    addi 3, 3, 0x4d47
    stfs 0, 0x14(29)
    bl fn_804030C4
    lfs 2, 0x10(29)
    .4byte 0xC022DDFC # lfs f1, lbl_80540D9C@sda21(r0)
    lfs 3, 0x14(29)
    lfs 0, 0xc(29)
    fsubs 1, 2, 1
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    stfs 3, 0x28(1)
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x408001F4 # bge .L_802CA7C8
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x20
    addi 6, 1, 0x68
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480001D8 # b .L_802CA7C8
L_802CA5F4:
    .4byte 0xC022DDF4 # lfs f1, lbl_80540D94@sda21(r0)
    li 8, 0xf2
    li 7, 0x49
    li 6, 0x12
    stfs 1, 0x44(1)
    addi 5, 30, 0x274
    .4byte 0xC002DDF8 # lfs f0, lbl_80540D98@sda21(r0)
    addi 4, 1, 0x38
    stfs 1, 0x54(1)
    mr 3, 30
    stfs 1, 0x64(1)
    stb 0, 0x84(1)
    stb 0, 0x85(1)
    stb 0, 0x95(1)
    stb 8, 0x78(1)
    stb 7, 0x79(1)
    stb 6, 0x7a(1)
    lbzx 0, 29, 5
    stb 0, 0x7b(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 1, 0x48(1)
    stfs 0, 0x4c(1)
    stfs 1, 0x50(1)
    stfs 1, 0x58(1)
    stfs 1, 0x5c(1)
    stfs 0, 0x60(1)
    stw 4, 0x80(1)
    bl fn_8022EA0C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lis 4, lbl_8046D8E0@ha
    lfs 0, 0x8(3)
    lis 3, 0x5449
    addi 4, 4, lbl_8046D8E0@l
    psq_st 1, 0xc(29), 0, 0
    addi 3, 3, 0x4d47
    stfs 0, 0x14(29)
    bl fn_804030C4
    lfs 2, 0x10(29)
    .4byte 0xC022DDFC # lfs f1, lbl_80540D9C@sda21(r0)
    lfs 3, 0x14(29)
    lfs 0, 0xc(29)
    fsubs 1, 2, 1
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    stfs 3, 0x1c(1)
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x4080010C # bge .L_802CA7C8
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x14
    addi 6, 1, 0x68
    lwz 3, 0x20(7)
    bl fn_802F745C
    .4byte 0x480000F0 # b .L_802CA7C8
L_802CA6DC:
    .4byte 0xC022DDF4 # lfs f1, lbl_80540D94@sda21(r0)
    li 6, 0xff
    stb 0, 0x84(1)
    addi 5, 30, 0x274
    .4byte 0xC002DE00 # lfs f0, lbl_80540DA0@sda21(r0)
    addi 4, 1, 0x38
    stfs 1, 0x44(1)
    mr 3, 30
    stfs 1, 0x54(1)
    stfs 1, 0x64(1)
    stb 0, 0x85(1)
    stb 0, 0x95(1)
    stb 6, 0x78(1)
    stb 6, 0x79(1)
    stb 6, 0x7a(1)
    lbzx 0, 29, 5
    stb 0, 0x7b(1)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 1, 0x48(1)
    stfs 0, 0x4c(1)
    stfs 1, 0x50(1)
    stfs 1, 0x58(1)
    stfs 1, 0x5c(1)
    stfs 0, 0x60(1)
    stw 4, 0x80(1)
    bl fn_8022EA0C
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lis 4, lbl_804A8F60@ha
    lfs 0, 0x8(3)
    lis 3, 0x5449
    addi 0, 4, lbl_804A8F60@l
    psq_st 1, 0xc(29), 0, 0
    addi 3, 3, 0x4d47
    stfs 0, 0x14(29)
    lwz 4, 0x28c(31)
    slwi 4, 4, 2
    add 4, 0, 4
    lwz 4, -0x10(4)
    bl fn_804030C4
    lfs 2, 0x10(29)
    .4byte 0xC022DDFC # lfs f1, lbl_80540D9C@sda21(r0)
    lfs 3, 0x14(29)
    lfs 0, 0xc(29)
    fsubs 1, 2, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 3, 0x10(1)
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_802CA7C8
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x8
    addi 6, 1, 0x68
    lwz 3, 0x20(7)
    bl fn_802F745C
L_802CA7C8:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FAD4 # blt .L_802CA2A8
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    lwz 29, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_802CA7F4:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stmw 23, 0x4c(1)
    mr 26, 3
    li 3, 0x0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0xc(26)
    lfs 0, 0x4(3)
    stfs 0, 0x10(26)
    lfs 0, 0x8(3)
    stfs 0, 0x14(26)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408201B8 # bne .L_802CA9FC
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408200B0 # bne .L_802CA900
    addi 30, 1, 0x30
    li 28, 0x0
    mr 27, 30
    .4byte 0x48000018 # b .L_802CA878
L_802CA864:
    mr 3, 28
    bl fn_80236100
    stw 3, 0x0(27)
    addi 27, 27, 0x4
    addi 28, 28, 0x1
L_802CA878:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 28, 3
    .4byte 0x4180FFE0 # blt .L_802CA864
    mr 28, 30
    mr 29, 26
    li 24, 0x0
    .4byte 0x48000058 # b .L_802CA8EC
L_802CA898:
    lwz 23, 0x0(28)
    mr 27, 30
    li 25, 0x0
    li 31, 0x0
    .4byte 0x48000024 # b .L_802CA8CC
L_802CA8AC:
    cmpw 24, 31
    .4byte 0x41820014 # beq .L_802CA8C4
    lwz 0, 0x0(27)
    cmpw 23, 0
    .4byte 0x40800008 # bge .L_802CA8C4
    addi 25, 25, 0x1
L_802CA8C4:
    addi 27, 27, 0x4
    addi 31, 31, 0x1
L_802CA8CC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 31, 3
    .4byte 0x4180FFD4 # blt .L_802CA8AC
    stw 25, 0x244(29)
    addi 28, 28, 0x4
    addi 29, 29, 0x4
    addi 24, 24, 0x1
L_802CA8EC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 24, 3
    .4byte 0x4180FFA0 # blt .L_802CA898
    .4byte 0x48000100 # b .L_802CA9FC
L_802CA900:
    addi 30, 1, 0x20
    li 31, 0x0
    mr 29, 30
    li 28, 0x1
    mr 27, 31
L_802CA914:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 28, 31
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802CA94C
    mr 3, 31
    bl fn_80237774
    stw 3, 0x0(29)
    .4byte 0x48000008 # b .L_802CA950
L_802CA94C:
    stw 27, 0x0(29)
L_802CA950:
    addi 31, 31, 0x1
    addi 29, 29, 0x4
    cmpwi 31, 0x4
    .4byte 0x4180FFB8 # blt .L_802CA914
    li 0, 0x4
    mr 3, 30
    mr 4, 26
    li 5, 0x0
    mtctr 0
L_802CA974:
    li 6, 0x0
    lwz 7, 0x0(3)
    cmpw 5, 6
    .4byte 0x41820014 # beq .L_802CA994
    lwz 0, 0x20(1)
    cmpw 7, 0
    .4byte 0x40800008 # bge .L_802CA994
    li 6, 0x1
L_802CA994:
    li 0, 0x1
    cmpw 5, 0
    .4byte 0x41820014 # beq .L_802CA9B0
    lwz 0, 0x24(1)
    cmpw 7, 0
    .4byte 0x40800008 # bge .L_802CA9B0
    addi 6, 6, 0x1
L_802CA9B0:
    li 0, 0x2
    cmpw 5, 0
    .4byte 0x41820014 # beq .L_802CA9CC
    lwz 0, 0x8(30)
    cmpw 7, 0
    .4byte 0x40800008 # bge .L_802CA9CC
    addi 6, 6, 0x1
L_802CA9CC:
    li 0, 0x3
    cmpw 5, 0
    .4byte 0x41820014 # beq .L_802CA9E8
    lwz 0, 0xc(30)
    cmpw 7, 0
    .4byte 0x40800008 # bge .L_802CA9E8
    addi 6, 6, 0x1
L_802CA9E8:
    stw 6, 0x244(4)
    addi 3, 3, 0x4
    addi 4, 4, 0x4
    addi 5, 5, 0x1
    .4byte 0x4200FF7C # bdnz .L_802CA974
L_802CA9FC:
    lis 3, lbl_8050EC80@ha
    mr 29, 26
    addi 31, 3, lbl_8050EC80@l
    li 28, 0x0
L_802CAA0C:
    lwz 3, 0x244(29)
    lwz 0, 0x254(29)
    cmpw 3, 0
    .4byte 0x41820218 # beq .L_802CAC30
    lbz 0, 0x278(26)
    cmplwi 0, 0x0
    .4byte 0x41820204 # beq .L_802CAC28
    bl fn_8022AF5C
    clrlwi. 0, 3, 24
    .4byte 0x408201F8 # bne .L_802CAC28
    li 27, 0x0
    mr 30, 26
L_802CAA3C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x418201B8 # beq .L_802CAC18
    lbz 5, 0x7f(4)
    cmplwi 5, 0x1
    .4byte 0x40820024 # bne .L_802CAA90
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_802CAAB8
L_802CAA90:
    cmplwi 5, 0x0
    .4byte 0x40820184 # bne .L_802CAC18
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lbz 0, 0x89(3)
    cmplwi 0, 0x0
    .4byte 0x41820164 # beq .L_802CAC18
L_802CAAB8:
    mr 3, 27
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800154 # bge .L_802CAC18
    li 0, 0xb4
    li 4, 0x1
    stw 0, 0x27c(30)
    stw 4, 0x28c(30)
    lwz 3, 0x244(30)
    lwz 0, 0x254(30)
    cmpw 3, 0
    .4byte 0x4080009C # bge .L_802CAB80
    lwz 5, 0x234(30)
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_802CAB0C
    lwz 3, 0xf4(5)
    li 0, 0x0
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 4, 0x24(5)
    stw 0, 0x234(30)
L_802CAB0C:
    lwz 0, 0x234(30)
    cmplwi 0, 0x0
    .4byte 0x40820104 # bne .L_802CAC18
    mr 3, 27
    bl fn_8023E724
    lfs 30, 0x8(3)
    mr 3, 27
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 27
    .4byte 0xC002DDFC # lfs f0, lbl_80540D9C@sda21(r0)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    addi 4, 1, 0x14
    .4byte 0xC022DDF8 # lfs f1, lbl_80540D98@sda21(r0)
    li 3, 0x0
    stfs 0, 0x14(1)
    li 5, 0x3a6
    li 6, 0x0
    li 7, 0x0
    stfs 31, 0x18(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 30, 0x1c(1)
    bl fn_8013CC50
    stw 3, 0x234(30)
    .4byte 0x4800009C # b .L_802CAC18
L_802CAB80:
    .4byte 0x40810098 # ble .L_802CAC18
    lwz 5, 0x234(30)
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_802CABA8
    lwz 3, 0xf4(5)
    li 0, 0x0
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 4, 0x24(5)
    stw 0, 0x234(30)
L_802CABA8:
    lwz 0, 0x234(30)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_802CAC18
    mr 3, 27
    bl fn_8023E724
    lfs 31, 0x8(3)
    mr 3, 27
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 27
    .4byte 0xC002DDFC # lfs f0, lbl_80540D9C@sda21(r0)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 0, 0x0(3)
    addi 4, 1, 0x8
    .4byte 0xC022DDF8 # lfs f1, lbl_80540D98@sda21(r0)
    li 3, 0x0
    stfs 0, 0x8(1)
    li 5, 0x3a5
    li 6, 0x0
    li 7, 0x0
    stfs 30, 0xc(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 31, 0x10(1)
    bl fn_8013CC50
    stw 3, 0x234(30)
L_802CAC18:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FE18 # blt .L_802CAA3C
L_802CAC28:
    lwz 0, 0x244(29)
    stw 0, 0x254(29)
L_802CAC30:
    mr 3, 28
    bl fn_8023BE0C
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802CAC80
    mr 3, 28
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800034 # bge .L_802CAC80
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0xeb
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802CAC80
    li 3, 0x1e
    li 0, 0x2
    stw 3, 0x27c(29)
    stw 0, 0x28c(29)
L_802CAC80:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FD80 # blt .L_802CAA0C
    li 29, 0x0
    mr 27, 26
L_802CAC98:
    addi 28, 29, 0x274
    li 0, 0xff
    stbx 0, 26, 28
    mr 3, 29
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802CACC0
    mr 3, 29
    bl fn_8023BCD4
    stbx 3, 26, 28
L_802CACC0:
    lwz 3, 0x27c(27)
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_802CACD8
    subi 0, 3, 0x1
    stw 0, 0x27c(27)
    .4byte 0x4800000C # b .L_802CACE0
L_802CACD8:
    li 0, 0x0
    stw 0, 0x28c(27)
L_802CACE0:
    lwz 0, 0x28c(27)
    cmpwi 0, 0x1
    .4byte 0x4082006C # bne .L_802CAD54
    lwz 0, 0x234(27)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_802CAD7C
    mr 3, 29
    bl fn_8023E724
    lfs 31, 0x8(3)
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 29
    .4byte 0xC002DDFC # lfs f0, lbl_80540D9C@sda21(r0)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    lwz 3, 0x234(27)
    .4byte 0xC002DDF8 # lfs f0, lbl_80540D98@sda21(r0)
    stfs 1, 0xa4(3)
    stfs 30, 0xa8(3)
    stfs 31, 0xac(3)
    lwz 3, 0x234(27)
    stfs 0, 0x98(3)
    stfs 0, 0x9c(3)
    stfs 0, 0xa0(3)
    stfs 0, 0xb0(3)
    stfs 0, 0xb4(3)
    .4byte 0x4800002C # b .L_802CAD7C
L_802CAD54:
    lwz 5, 0x234(27)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CAD7C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(27)
L_802CAD7C:
    addi 29, 29, 0x1
    addi 27, 27, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF10 # blt .L_802CAC98
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    lmw 23, 0x4c(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_802CADB0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_802CAE04
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_802CAE04
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_802CAE04
    bl fn_802DE814
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802CAE04
    li 0, 0x1
    stb 0, 0x278(31)
    .4byte 0x4800000C # b .L_802CAE0C
L_802CAE04:
    li 0, 0x0
    stb 0, 0x278(31)
L_802CAE0C:
    mr 27, 31
    li 26, 0x0
    li 28, 0x0
    li 29, 0xff
    li 30, 0x1
L_802CAE20:
    stw 28, 0x234(27)
    slw 0, 30, 26
    addi 3, 26, 0x274
    stw 28, 0x244(27)
    clrlwi 0, 0, 24
    stw 28, 0x254(27)
    stbx 29, 31, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820014 # beq .L_802CAE5C
    mr 3, 26
    bl fn_80237774
    stw 3, 0x264(27)
    .4byte 0x48000008 # b .L_802CAE60
L_802CAE5C:
    stw 28, 0x264(27)
L_802CAE60:
    addi 26, 26, 0x1
    addi 27, 27, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFB4 # blt .L_802CAE20
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x27c(31)
    stw 3, 0x28c(31)
    stw 3, 0x280(31)
    stw 3, 0x290(31)
    stw 3, 0x284(31)
    stw 3, 0x294(31)
    stw 3, 0x288(31)
    stw 3, 0x298(31)
    stb 0, 0x11f(31)
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802CAEB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x418200B8 # beq .L_802CAF84
    lis 3, lbl_804A8F74@ha
    addi 0, 3, lbl_804A8F74@l
    stw 0, 0x0(30)
    li 3, 0x1
    li 0, 0x0
    lwz 6, 0x234(30)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_802CAF04
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x234(30)
L_802CAF04:
    lwz 6, 0x238(30)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_802CAF24
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x238(30)
L_802CAF24:
    addi 5, 30, 0x8
    lwz 6, 0x23c(30)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_802CAF48
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x234(5)
L_802CAF48:
    lwz 6, 0x238(5)
    cmplwi 6, 0x0
    .4byte 0x41820018 # beq .L_802CAF68
    lwz 4, 0xf4(6)
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x238(5)
L_802CAF68:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802CAF84
    mr 3, 30
    bl dtor_80084580
L_802CAF84:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CAFA0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3568@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3568@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CAFF0
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
L_802CAFF0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB028
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
L_802CB028:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB060
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
L_802CB060:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB098
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
L_802CB098:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB0D0
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
L_802CB0D0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB108
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
L_802CB108:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB140
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
L_802CB140:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB178
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
L_802CB178:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CB1B0
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
L_802CB1B0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802C92D0
    .4byte fn_802C9720
    .4byte fn_802CA060
    .4byte fn_802CAFA0

