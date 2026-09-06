# 901KB-gap non-actor manager block: 35 functions, 6,168 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800101A4
etb_800101A4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800101A4, 8

.global etb_800101AC
etb_800101AC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800101AC, 8

.global etb_800101B4
etb_800101B4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800101B4, 8

.global etb_800101BC
etb_800101BC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800101BC, 8

.global etb_800101C4
etb_800101C4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800101C4, 8

.global etb_800101CC
etb_800101CC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800101CC, 8

.global etb_800101D4
etb_800101D4:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_800101D4, 8

.global etb_800101DC
etb_800101DC:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800101DC, 8

.global etb_800101E4
etb_800101E4:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800101E4, 8

.global etb_800101EC
etb_800101EC:
    .4byte 0x098A0000
    .4byte 0x00000000
.size etb_800101EC, 8

.global etb_800101F4
etb_800101F4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800101F4, 8

.global etb_800101FC
etb_800101FC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800101FC, 8

.global etb_80010204
etb_80010204:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80010204, 8

.global etb_8001020C
etb_8001020C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8001020C, 8

.global etb_80010214
etb_80010214:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010214, 8

.global etb_8001021C
etb_8001021C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001021C, 8

.global etb_80010224
etb_80010224:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010224, 8

.global etb_8001022C
etb_8001022C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001022C, 8

.global etb_80010234
etb_80010234:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010234, 8

.global etb_8001023C
etb_8001023C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001023C, 8

.global etb_80010244
etb_80010244:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010244, 8

.global etb_8001024C
etb_8001024C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001024C, 8

.global etb_80010254
etb_80010254:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010254, 8

.global etb_8001025C
etb_8001025C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001025C, 8

.global etb_80010264
etb_80010264:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010264, 8

.section extabindex, "a"
.balign 4
.global eti_8001FF0C
eti_8001FF0C:
    .4byte fn_80401FEC
    .4byte 0x00000068
    .4byte etb_800101A4
.size eti_8001FF0C, 12

.global eti_8001FF18
eti_8001FF18:
    .4byte fn_80402054
    .4byte 0x00000128
    .4byte etb_800101AC
.size eti_8001FF18, 12

.global eti_8001FF24
eti_8001FF24:
    .4byte fn_8040217C
    .4byte 0x00000254
    .4byte etb_800101B4
.size eti_8001FF24, 12

.global eti_8001FF30
eti_8001FF30:
    .4byte fn_804023D0
    .4byte 0x0000008C
    .4byte etb_800101BC
.size eti_8001FF30, 12

.global eti_8001FF3C
eti_8001FF3C:
    .4byte fn_8040245C
    .4byte 0x000001CC
    .4byte etb_800101C4
.size eti_8001FF3C, 12

.global eti_8001FF48
eti_8001FF48:
    .4byte fn_80402628
    .4byte 0x000000F4
    .4byte etb_800101CC
.size eti_8001FF48, 12

.global eti_8001FF54
eti_8001FF54:
    .4byte fn_8040271C
    .4byte 0x00000224
    .4byte etb_800101D4
.size eti_8001FF54, 12

.global eti_8001FF60
eti_8001FF60:
    .4byte fn_80402940
    .4byte 0x000001D0
    .4byte etb_800101DC
.size eti_8001FF60, 12

.global eti_8001FF6C
eti_8001FF6C:
    .4byte fn_80402B10
    .4byte 0x000001D0
    .4byte etb_800101E4
.size eti_8001FF6C, 12

.global eti_8001FF78
eti_8001FF78:
    .4byte fn_80402CE0
    .4byte 0x00000128
    .4byte etb_800101EC
.size eti_8001FF78, 12

.global eti_8001FF84
eti_8001FF84:
    .4byte fn_80402E08
    .4byte 0x00000068
    .4byte etb_800101F4
.size eti_8001FF84, 12

.global eti_8001FF90
eti_8001FF90:
    .4byte fn_80402E70
    .4byte 0x00000094
    .4byte etb_800101FC
.size eti_8001FF90, 12

.global eti_8001FF9C
eti_8001FF9C:
    .4byte fn_80402F04
    .4byte 0x000000B8
    .4byte etb_80010204
.size eti_8001FF9C, 12

.global eti_8001FFA8
eti_8001FFA8:
    .4byte fn_80402FBC
    .4byte 0x000000A0
    .4byte etb_8001020C
.size eti_8001FFA8, 12

.global eti_8001FFB4
eti_8001FFB4:
    .4byte fn_80403084
    .4byte 0x00000040
    .4byte etb_80010214
.size eti_8001FFB4, 12

.global eti_8001FFC0
eti_8001FFC0:
    .4byte fn_804030C4
    .4byte 0x00000040
    .4byte etb_8001021C
.size eti_8001FFC0, 12

.global eti_8001FFCC
eti_8001FFCC:
    .4byte fn_80403104
    .4byte 0x00000040
    .4byte etb_80010224
.size eti_8001FFCC, 12

.global eti_8001FFD8
eti_8001FFD8:
    .4byte fn_80403144
    .4byte 0x00000040
    .4byte etb_8001022C
.size eti_8001FFD8, 12

.global eti_8001FFE4
eti_8001FFE4:
    .4byte fn_80403184
    .4byte 0x00000040
    .4byte etb_80010234
.size eti_8001FFE4, 12

.global eti_8001FFF0
eti_8001FFF0:
    .4byte fn_804031C4
    .4byte 0x00000040
    .4byte etb_8001023C
.size eti_8001FFF0, 12

.global eti_8001FFFC
eti_8001FFFC:
    .4byte fn_80403204
    .4byte 0x00000040
    .4byte etb_80010244
.size eti_8001FFFC, 12

.global eti_80020008
eti_80020008:
    .4byte fn_80403244
    .4byte 0x00000040
    .4byte etb_8001024C
.size eti_80020008, 12

.global eti_80020014
eti_80020014:
    .4byte fn_80403284
    .4byte 0x00000064
    .4byte etb_80010254
.size eti_80020014, 12

.global eti_80020020
eti_80020020:
    .4byte fn_804032E8
    .4byte 0x00000040
    .4byte etb_8001025C
.size eti_80020020, 12

.global eti_8002002C
eti_8002002C:
    .4byte fn_80403328
    .4byte 0x00000044
    .4byte etb_80010264
.size eti_8002002C, 12

.text
.balign 4
.global fn_80401FEC
.global fn_80402054
.global fn_8040217C
.global fn_804023D0
.global fn_8040245C
.global fn_80402628
.global fn_8040271C
.global fn_80402940
.global fn_80402B10
.global fn_80402CE0
.global fn_80402E08
.global fn_80402E70
.global fn_80402F04
.global fn_80402FBC
.global fn_8040305C
.global fn_80403070
.global fn_80403084
.global fn_804030C4
.global fn_80403104
.global fn_80403144
.global fn_80403184
.global fn_804031C4
.global fn_80403204
.global fn_80403244
.global fn_80403284
.global fn_804032E8
.global fn_80403328
.global fn_8040336C
.global fn_804033D4
.global fn_80403414
.global fn_80403454
.global fn_80403494
.global fn_804034D4
.global fn_80403514
.global fn_80403680

fn_80401FEC:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80528980@ha
    lis 7, fn_80402054@ha
    stw 0, 0x14(1)
    addi 0, 7, fn_80402054@l
    mr 8, 3
    li 7, 0x1000
    stw 31, 0xc(1)
    addi 31, 6, lbl_80528980@l
    addi 6, 31, 0x320
    li 9, 0x1
    .4byte 0x90AD9234 # stw r5, lbl_8053ADF4@sda21(r0)
    addi 3, 31, 0x0
    addi 5, 31, 0x1320
    addi 6, 6, 0x1000
    .4byte 0x908D9230 # stw r4, lbl_8053ADF0@sda21(r0)
    mr 4, 0
    bl OSCreateThread
    addi 3, 31, 0x0
    bl OSResumeThread
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80402054:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    mr 30, 3
    bl OSGetCurrentThread
    mr 4, 3
    addi 3, 1, 0xc
    li 5, 0x0
    bl fn_800855CC
    addi 3, 1, 0xc
    li 4, -0x1
    bl fn_80085674
    .4byte 0x480000BC # b .L_80402148
    .4byte 0x480000A8 # b .L_80402138
L_80402094:
    addi 3, 30, 0x24
    bl OSLockMutex
    li 4, 0x0
    lwz 5, 0x3c(30)
    mr 3, 4
    .4byte 0x4800005C # b .L_80402104
L_804020AC:
    cmplw 5, 31
    .4byte 0x4082004C # bne .L_804020FC
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_804020D8
    lwz 0, 0x0(5)
    stw 0, 0x0(4)
    lwz 0, 0x40(30)
    cmplw 0, 5
    .4byte 0x40820030 # bne .L_804020FC
    stw 4, 0x40(30)
    .4byte 0x48000028 # b .L_804020FC
L_804020D8:
    lwz 4, 0x3c(30)
    lwz 0, 0x40(30)
    cmplw 4, 0
    .4byte 0x40820010 # bne .L_804020F4
    stw 3, 0x3c(30)
    stw 3, 0x40(30)
    .4byte 0x4800000C # b .L_804020FC
L_804020F4:
    lwz 0, 0x0(5)
    stw 0, 0x3c(30)
L_804020FC:
    mr 4, 5
    lwz 5, 0x0(5)
L_80402104:
    cmplwi 5, 0x0
    .4byte 0x4082FFA4 # bne .L_804020AC
    addi 3, 30, 0x24
    bl OSUnlockMutex
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl OSSendMessage
    lwz 3, 0x8(1)
    lwz 12, 0x8(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
L_80402138:
    lwz 31, 0x3c(30)
    cmplwi 31, 0x0
    stw 31, 0x8(1)
    .4byte 0x4082FF50 # bne .L_80402094
L_80402148:
    mr 3, 30
    li 4, 0x0
    li 5, 0x1
    bl OSReceiveMessage
    cmpwi 3, 0x0
    .4byte 0x4082FFDC # bne .L_80402138
    lwz 0, 0x94(1)
    li 3, 0x0
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8040217C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80528980@ha
    li 5, 0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80528980@l
    addi 3, 31, 0x1320
    mr 4, 3
    addi 4, 4, 0x20
    bl OSInitMessageQueue
    addi 3, 31, 0x1320
    addi 3, 3, 0x24
    bl OSInitMutex
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    addi 3, 31, 0x1320
    li 4, 0x0
    extsb. 0, 0
    stw 4, 0x3c(3)
    stw 4, 0x40(3)
    .4byte 0x40820030 # bne .L_804021FC
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x1364
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_804021FC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80402234
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x1370
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80402234:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8040226C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x137c
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8040226C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804022A4
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x1388
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_804022A4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804022DC
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x1394
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_804022DC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80402314
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x13a0
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80402314:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8040234C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x13ac
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8040234C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80402384
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x13b8
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80402384:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804023BC
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x13c4
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_804023BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804023D0:
    stwu 1, -0x30(1)
    mflr 0
    lis 7, 0x4330
    clrlwi 8, 5, 24
    stw 0, 0x34(1)
    .4byte 0xC84208C0 # lfd f2, lbl_80543860@sda21(r0)
    lwz 6, 0x4(3)
    lbz 0, 0x28(3)
    mr 3, 4
    lbz 5, 0xb2(6)
    lwz 12, 0x0(4)
    stw 5, 0x14(1)
    lwz 12, 0x24(12)
    stw 7, 0x10(1)
    lfd 0, 0x10(1)
    stw 0, 0x1c(1)
    fsubs 1, 0, 2
    stw 7, 0x18(1)
    lfd 0, 0x18(1)
    stw 8, 0xc(1)
    fsubs 0, 0, 2
    stw 7, 0x8(1)
    fdivs 0, 1, 0
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8040245C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    extsh 0, 4
    lha 8, 0x26(3)
    addi 8, 8, 0x1
    sth 8, 0x26(3)
    lha 8, 0x26(3)
    cmpw 8, 0
    .4byte 0x4180000C # blt .L_8040248C
    li 0, 0x0
    sth 0, 0x26(3)
L_8040248C:
    clrlwi 0, 7, 24
    cmplwi 0, 0x1
    .4byte 0x408200BC # bne .L_80402550
    extsh 7, 4
    lha 8, 0x26(3)
    srwi 0, 7, 31
    add 0, 0, 7
    srawi 0, 0, 1
    cmpw 8, 0
    .4byte 0x4080004C # bge .L_804024FC
    lis 4, 0x4330
    xoris 0, 7, 0x8000
    mullw 7, 8, 8
    stw 0, 0x14(1)
    .4byte 0xC84208D0 # lfd f2, lbl_80543870@sda21(r0)
    stw 4, 0x10(1)
    .4byte 0xC00208C8 # lfs f0, lbl_80543868@sda21(r0)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    xoris 0, 7, 0x8000
    stw 0, 0xc(1)
    stw 4, 0x8(1)
    fmuls 0, 1, 0
    lfd 1, 0x8(1)
    fmuls 0, 0, 0
    fsubs 1, 1, 2
    fdivs 3, 1, 0
    .4byte 0x480000BC # b .L_804025B4
L_804024FC:
    lis 4, 0x4330
    subf 8, 0, 8
    xoris 0, 7, 0x8000
    stw 4, 0x8(1)
    mullw 7, 8, 8
    .4byte 0xC84208D0 # lfd f2, lbl_80543870@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC00208C8 # lfs f0, lbl_80543868@sda21(r0)
    lfd 1, 0x8(1)
    stw 4, 0x10(1)
    fsubs 1, 1, 2
    xoris 0, 7, 0x8000
    stw 0, 0x14(1)
    .4byte 0xC06208CC # lfs f3, lbl_8054386C@sda21(r0)
    fmuls 4, 1, 0
    lfd 0, 0x10(1)
    fsubs 1, 0, 2
    fmuls 0, 4, 4
    fdivs 0, 1, 0
    fsubs 3, 3, 0
    .4byte 0x48000068 # b .L_804025B4
L_80402550:
    extsh 7, 4
    lha 8, 0x26(3)
    srwi 0, 7, 31
    add 0, 0, 7
    subf 7, 8, 7
    srawi 0, 0, 1
    cmpw 8, 0
    .4byte 0x40800008 # bge .L_80402574
    mr 7, 8
L_80402574:
    extsh 0, 4
    lis 4, 0x4330
    xoris 0, 0, 0x8000
    xoris 7, 7, 0x8000
    stw 0, 0xc(1)
    .4byte 0xC86208D0 # lfd f3, lbl_80543870@sda21(r0)
    stw 4, 0x8(1)
    .4byte 0xC00208C8 # lfs f0, lbl_80543868@sda21(r0)
    lfd 1, 0x8(1)
    stw 7, 0x14(1)
    fsubs 1, 1, 3
    stw 4, 0x10(1)
    lfd 2, 0x10(1)
    fmuls 0, 1, 0
    fsubs 1, 2, 3
    fdivs 3, 1, 0
L_804025B4:
    clrlwi 5, 5, 24
    clrlwi 0, 6, 24
    subf 4, 5, 0
    lis 0, 0x4330
    xoris 4, 4, 0x8000
    lwz 3, 0x4(3)
    stw 4, 0x14(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    .4byte 0xC84208D0 # lfd f2, lbl_80543870@sda21(r0)
    lfd 0, 0x10(1)
    stw 5, 0xc(1)
    .4byte 0xC82208C0 # lfd f1, lbl_80543860@sda21(r0)
    fsubs 2, 0, 2
    stw 0, 0x8(1)
    lwz 12, 0x24(12)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 0, 0x24(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80402628:
    stwu 1, -0x30(1)
    mflr 0
    extsh 7, 4
    stw 0, 0x34(1)
    subi 0, 7, 0x1
    lha 8, 0x26(3)
    cmpw 8, 0
    .4byte 0x408000A0 # bge .L_804026E4
    addi 0, 8, 0x1
    lis 8, 0x4330
    sth 0, 0x26(3)
    xoris 7, 7, 0x8000
    clrlwi 4, 5, 24
    clrlwi 0, 6, 24
    lha 5, 0x26(3)
    subf 0, 4, 0
    xoris 0, 0, 0x8000
    lwz 3, 0x4(3)
    xoris 5, 5, 0x8000
    stw 8, 0x8(1)
    lwz 12, 0x0(3)
    stw 5, 0xc(1)
    .4byte 0xC88208D0 # lfd f4, lbl_80543870@sda21(r0)
    lfd 0, 0x8(1)
    stw 7, 0x14(1)
    fsubs 2, 0, 4
    .4byte 0xC82208C0 # lfd f1, lbl_80543860@sda21(r0)
    stw 8, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    stw 0, 0x1c(1)
    fsubs 0, 0, 4
    stw 8, 0x18(1)
    fdivs 3, 2, 0
    lfd 2, 0x18(1)
    stw 4, 0x24(1)
    stw 8, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    .4byte 0x48000028 # b .L_80402708
L_804026E4:
    sth 4, 0x22(3)
    mr 4, 6
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 3, 0x1
    .4byte 0x48000008 # b .L_8040270C
L_80402708:
    li 3, 0x0
L_8040270C:
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8040271C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stfd 27, 0x20(1)
    psq_st 27, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    extsh 5, 4
    lha 3, 0x24(3)
    subi 0, 5, 0x1
    fmr 27, 2
    cmpw 3, 0
    .4byte 0x408000F0 # bge .L_8040285C
    addi 0, 3, 0x1
    lis 4, 0x4330
    sth 0, 0x24(31)
    mullw 0, 5, 5
    .4byte 0xC8C208D0 # lfd f6, lbl_80543870@sda21(r0)
    fsubs 3, 27, 1
    lha 5, 0x24(31)
    lwz 3, 0x4(31)
    stw 4, 0x10(1)
    mullw 5, 5, 5
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfs 2, 0x28(3)
    lfd 0, 0x10(1)
    stw 4, 0x8(1)
    xoris 0, 5, 0x8000
    fsubs 4, 0, 6
    stw 0, 0xc(1)
    lfs 0, 0x20(3)
    lfd 5, 0x8(1)
    fsubs 31, 2, 0
    fsubs 0, 5, 6
    fdivs 0, 0, 4
    fmadds 27, 0, 3, 1
    bl fn_80095FB4
    lwz 4, 0x4(31)
    lfs 30, 0x0(3)
    lfs 1, 0x2c(4)
    mr 3, 4
    lfs 0, 0x24(4)
    fsubs 29, 1, 0
    bl fn_80095FB4
    lfs 28, 0x4(3)
    lwz 3, 0x4(31)
    lfs 1, 0x18(31)
    lwz 12, 0x0(3)
    lfs 0, 0x1c(31)
    fmuls 1, 1, 27
    lwz 12, 0x18(12)
    fmuls 2, 0, 27
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    .4byte 0xC0A208C8 # lfs f5, lbl_80543868@sda21(r0)
    lfs 2, 0x28(3)
    lfs 1, 0x20(3)
    fmadds 3, 5, 31, 30
    lwz 12, 0x0(3)
    fmadds 0, 5, 29, 28
    fsubs 4, 2, 1
    lfs 2, 0x2c(3)
    lfs 1, 0x24(3)
    lwz 12, 0x10(12)
    fsubs 2, 2, 1
    fnmsubs 1, 5, 4, 3
    fnmsubs 2, 5, 2, 0
    mtctr 12
    bctrl
    .4byte 0x480000A8 # b .L_80402900
L_8040285C:
    sth 4, 0x24(31)
    lwz 3, 0x4(31)
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    fsubs 28, 1, 0
    bl fn_80095FB4
    lwz 4, 0x4(31)
    lfs 29, 0x0(3)
    lfs 1, 0x2c(4)
    mr 3, 4
    lfs 0, 0x24(4)
    fsubs 30, 1, 0
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lwz 3, 0x4(31)
    lfs 1, 0x18(31)
    lwz 12, 0x0(3)
    lfs 0, 0x1c(31)
    fmuls 1, 1, 27
    lwz 12, 0x18(12)
    fmuls 2, 0, 27
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    .4byte 0xC0A208C8 # lfs f5, lbl_80543868@sda21(r0)
    lfs 2, 0x28(3)
    lfs 1, 0x20(3)
    fmadds 3, 5, 28, 29
    lwz 12, 0x0(3)
    fmadds 0, 5, 30, 31
    fsubs 4, 2, 1
    lfs 2, 0x2c(3)
    lfs 1, 0x24(3)
    lwz 12, 0x10(12)
    fsubs 2, 2, 1
    fnmsubs 1, 5, 4, 3
    fnmsubs 2, 5, 2, 0
    mtctr 12
    bctrl
    li 3, 0x1
    .4byte 0x48000008 # b .L_80402904
L_80402900:
    li 3, 0x0
L_80402904:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    psq_l 27, 0x28(1), 0, 0
    lfd 27, 0x20(1)
    lwz 0, 0x74(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80402940:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    extsh 6, 4
    lha 3, 0x22(3)
    subi 0, 6, 0x1
    cmpw 3, 0
    .4byte 0x40800138 # bge .L_80402AA4
    addi 3, 3, 0x1
    clrlwi. 0, 5, 24
    sth 3, 0x22(31)
    .4byte 0x40820048 # bne .L_804029C4
    lha 4, 0x22(31)
    lis 3, 0x4330
    mullw 0, 6, 6
    stw 3, 0x8(1)
    .4byte 0xC88208D0 # lfd f4, lbl_80543870@sda21(r0)
    stw 3, 0x10(1)
    mullw 3, 4, 4
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    fsubs 0, 0, 4
    lfd 3, 0x8(1)
    fsubs 3, 3, 4
    fdivs 4, 3, 0
    .4byte 0x48000098 # b .L_80402A58
L_804029C4:
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80402A08
    lha 4, 0x22(31)
    lis 3, 0x4330
    xoris 0, 6, 0x8000
    stw 3, 0x10(1)
    xoris 4, 4, 0x8000
    .4byte 0xC88208D0 # lfd f4, lbl_80543870@sda21(r0)
    stw 4, 0x14(1)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 3, 0, 4
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 4
    fdivs 4, 3, 0
    .4byte 0x48000054 # b .L_80402A58
L_80402A08:
    lha 4, 0x22(31)
    lis 3, 0x4330
    mullw 0, 6, 6
    fmr 0, 1
    subf 4, 4, 6
    fmr 1, 2
    stw 3, 0x10(1)
    .4byte 0xC88208D0 # lfd f4, lbl_80543870@sda21(r0)
    mullw 4, 4, 4
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    fmr 2, 0
    stw 3, 0x8(1)
    xoris 0, 4, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x8(1)
    lfd 3, 0x10(1)
    fsubs 0, 0, 4
    fsubs 3, 3, 4
    fdivs 4, 3, 0
L_80402A58:
    fsubs 0, 2, 1
    lwz 3, 0x4(31)
    lfs 2, 0x14(31)
    lfs 3, 0x2c(3)
    fmadds 0, 4, 0, 1
    lfs 1, 0x24(3)
    .4byte 0xC08208C8 # lfs f4, lbl_80543868@sda21(r0)
    fsubs 1, 3, 1
    fadds 0, 2, 0
    fnmsubs 31, 4, 1, 0
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 31
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000050 # b .L_80402AF0
L_80402AA4:
    sth 4, 0x22(31)
    .4byte 0xC08208C8 # lfs f4, lbl_80543868@sda21(r0)
    lwz 3, 0x4(31)
    lfs 0, 0x14(31)
    lfs 3, 0x2c(3)
    lfs 1, 0x24(3)
    fadds 0, 0, 2
    fsubs 1, 3, 1
    fnmsubs 31, 4, 1, 0
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 31
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 3, 0x1
    .4byte 0x48000008 # b .L_80402AF4
L_80402AF0:
    li 3, 0x0
L_80402AF4:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80402B10:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    extsh 6, 4
    lha 3, 0x20(3)
    subi 0, 6, 0x1
    cmpw 3, 0
    .4byte 0x40800138 # bge .L_80402C74
    addi 3, 3, 0x1
    clrlwi. 0, 5, 24
    sth 3, 0x20(31)
    .4byte 0x40820048 # bne .L_80402B94
    lha 4, 0x20(31)
    lis 3, 0x4330
    mullw 0, 6, 6
    stw 3, 0x8(1)
    .4byte 0xC88208D0 # lfd f4, lbl_80543870@sda21(r0)
    stw 3, 0x10(1)
    mullw 3, 4, 4
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    fsubs 0, 0, 4
    lfd 3, 0x8(1)
    fsubs 3, 3, 4
    fdivs 4, 3, 0
    .4byte 0x48000098 # b .L_80402C28
L_80402B94:
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_80402BD8
    lha 4, 0x20(31)
    lis 3, 0x4330
    xoris 0, 6, 0x8000
    stw 3, 0x10(1)
    xoris 4, 4, 0x8000
    .4byte 0xC88208D0 # lfd f4, lbl_80543870@sda21(r0)
    stw 4, 0x14(1)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 3, 0, 4
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 4
    fdivs 4, 3, 0
    .4byte 0x48000054 # b .L_80402C28
L_80402BD8:
    lha 4, 0x20(31)
    lis 3, 0x4330
    mullw 0, 6, 6
    fmr 0, 1
    subf 4, 4, 6
    fmr 1, 2
    stw 3, 0x10(1)
    .4byte 0xC88208D0 # lfd f4, lbl_80543870@sda21(r0)
    mullw 4, 4, 4
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    fmr 2, 0
    stw 3, 0x8(1)
    xoris 0, 4, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x8(1)
    lfd 3, 0x10(1)
    fsubs 0, 0, 4
    fsubs 3, 3, 4
    fdivs 4, 3, 0
L_80402C28:
    fsubs 0, 2, 1
    lwz 3, 0x4(31)
    lfs 2, 0x10(31)
    lfs 3, 0x28(3)
    fmadds 0, 4, 0, 1
    lfs 1, 0x20(3)
    .4byte 0xC08208C8 # lfs f4, lbl_80543868@sda21(r0)
    fsubs 1, 3, 1
    fadds 0, 2, 0
    fnmsubs 31, 4, 1, 0
    bl fn_80095FB4
    lfs 2, 0x4(3)
    fmr 1, 31
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000050 # b .L_80402CC0
L_80402C74:
    sth 4, 0x20(31)
    .4byte 0xC08208C8 # lfs f4, lbl_80543868@sda21(r0)
    lwz 3, 0x4(31)
    lfs 0, 0x10(31)
    lfs 3, 0x28(3)
    lfs 1, 0x20(3)
    fadds 0, 0, 2
    fsubs 1, 3, 1
    fnmsubs 31, 4, 1, 0
    bl fn_80095FB4
    lfs 2, 0x4(3)
    fmr 1, 31
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 3, 0x1
    .4byte 0x48000008 # b .L_80402CC4
L_80402CC0:
    li 3, 0x0
L_80402CC4:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80402CE0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stfd 27, 0x20(1)
    psq_st 27, 0x28(1), 0, 0
    stfd 26, 0x10(1)
    psq_st 26, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x4(3)
    fmr 26, 1
    lfs 1, 0x28(3)
    fmr 27, 2
    lfs 0, 0x20(3)
    fsubs 31, 1, 0
    bl fn_80095FB4
    lwz 4, 0x4(31)
    lfs 30, 0x0(3)
    lfs 1, 0x2c(4)
    mr 3, 4
    lfs 0, 0x24(4)
    fsubs 29, 1, 0
    bl fn_80095FB4
    lfs 28, 0x4(3)
    lwz 3, 0x4(31)
    lfs 1, 0x18(31)
    lwz 12, 0x0(3)
    lfs 0, 0x1c(31)
    fmuls 1, 1, 26
    lwz 12, 0x18(12)
    fmuls 2, 0, 27
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    .4byte 0xC0A208C8 # lfs f5, lbl_80543868@sda21(r0)
    lfs 2, 0x28(3)
    lfs 1, 0x20(3)
    fmadds 3, 5, 31, 30
    lwz 12, 0x0(3)
    fmadds 0, 5, 29, 28
    fsubs 4, 2, 1
    lfs 2, 0x2c(3)
    lfs 1, 0x24(3)
    lwz 12, 0x10(12)
    fsubs 2, 2, 1
    fnmsubs 1, 5, 4, 3
    fnmsubs 2, 5, 2, 0
    mtctr 12
    bctrl
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    psq_l 27, 0x28(1), 0, 0
    lfd 27, 0x20(1)
    psq_l 26, 0x18(1), 0, 0
    lfd 26, 0x10(1)
    lwz 0, 0x74(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80402E08:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0A208C8 # lfs f5, lbl_80543868@sda21(r0)
    stw 0, 0x14(1)
    lwz 4, 0x4(3)
    lfs 3, 0x10(3)
    lfs 0, 0x14(3)
    mr 3, 4
    fadds 3, 3, 1
    lfs 4, 0x28(4)
    lfs 1, 0x20(4)
    fadds 0, 0, 2
    lfs 2, 0x2c(4)
    fsubs 4, 4, 1
    lfs 1, 0x24(4)
    lwz 12, 0x0(4)
    fsubs 2, 2, 1
    lwz 12, 0x10(12)
    fnmsubs 1, 5, 4, 3
    fnmsubs 2, 5, 2, 0
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80402E70:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lfs 0, 0x0(3)
    stfs 0, 0x8(31)
    lwz 3, 0x4(31)
    bl fn_80095FB4
    lfs 0, 0x4(3)
    .4byte 0xC04208C8 # lfs f2, lbl_80543868@sda21(r0)
    stfs 0, 0xc(31)
    lwz 3, 0x4(31)
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    fsubs 0, 1, 0
    stfs 0, 0x18(31)
    lwz 3, 0x4(31)
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    fsubs 0, 1, 0
    stfs 0, 0x1c(31)
    lfs 1, 0x18(31)
    lfs 0, 0x8(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    lfs 1, 0x1c(31)
    lfs 0, 0xc(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80402F04:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    stw 31, 0x4(3)
    mr 3, 31
    bl fn_80095FB4
    lfs 0, 0x0(3)
    mr 3, 31
    stfs 0, 0x8(30)
    bl fn_80095FB4
    lfs 0, 0x4(3)
    li 0, 0x0
    .4byte 0xC04208C8 # lfs f2, lbl_80543868@sda21(r0)
    stfs 0, 0xc(30)
    lfs 1, 0x28(31)
    lfs 0, 0x20(31)
    fsubs 0, 1, 0
    stfs 0, 0x18(30)
    lfs 1, 0x2c(31)
    lfs 0, 0x24(31)
    fsubs 0, 1, 0
    stfs 0, 0x1c(30)
    lfs 1, 0x18(30)
    lfs 0, 0x8(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(30)
    lfs 1, 0x1c(30)
    lfs 0, 0xc(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(30)
    lbz 3, 0xb2(31)
    stb 3, 0x28(30)
    sth 0, 0x20(30)
    sth 0, 0x22(30)
    sth 0, 0x24(30)
    sth 0, 0x26(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80402FBC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl fn_8022F340
    psq_l 4, 0x0(31), 0, 0
    mulli 5, 3, 0xc
    lfs 3, 0x8(31)
    lis 4, lbl_80529DEC@ha
    psq_st 4, 0x8(1), 0, 0
    mr 3, 30
    addi 0, 4, lbl_80529DEC@l
    lfs 2, 0x8(1)
    add 4, 0, 5
    lfs 1, 0xc(1)
    frsp 0, 3
    stfs 2, 0x1c4(4)
    stfs 1, 0x1c8(4)
    psq_st 4, 0x14(1), 0, 0
    stfs 3, 0x1c(1)
    stfs 3, 0x10(1)
    stfs 0, 0x1cc(4)
    bl fn_8022F340
    lis 4, lbl_80529DEC@ha
    li 0, 0x1
    addi 4, 4, lbl_80529DEC@l
    slw 0, 0, 3
    lbz 3, 0x236(4)
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x236(4)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8040305C:
    lis 4, lbl_8048C170@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_8048C170@l
    lwzx 3, 3, 0
    blr

fn_80403070:
    lis 4, lbl_8048C160@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_8048C160@l
    lwzx 3, 3, 0
    blr

fn_80403084:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x4c(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804030C4:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x20(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80403104:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x3c(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80403144:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x38(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80403184:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x34(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804031C4:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x28(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80403204:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x24(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80403244:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x18(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80403284:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    mr 5, 3
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 4, lbl_80529DEC@l
    lis 4, 0x3f3f
    lwz 3, 0x10(31)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804032E8:
    stwu 1, -0x10(1)
    mflr 0
    lis 6, lbl_80529DEC@ha
    mr 5, 4
    stw 0, 0x14(1)
    addi 6, 6, lbl_80529DEC@l
    mr 4, 3
    lwz 3, 0x10(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80403328:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    mr 5, 3
    stw 0, 0x14(1)
    addi 3, 4, lbl_80529DEC@l
    lis 4, 0x3f3f
    lwz 3, 0x10(3)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8040336C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_804033BC
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x118(4)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_804033A4
    lwz 0, 0x11c(4)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_804033A4
    li 3, 0x0
    blr
L_804033A4:
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_80529DEC@l
    add 3, 3, 0
    lwz 3, 0x88(3)
    blr
L_804033BC:
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_80529DEC@l
    add 3, 3, 0
    lwz 3, 0xb8(3)
    blr

fn_804033D4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_804033FC
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_80529DEC@l
    add 3, 3, 0
    lwz 3, 0x78(3)
    blr
L_804033FC:
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_80529DEC@l
    add 3, 3, 0
    lwz 3, 0xa8(3)
    blr

fn_80403414:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8040343C
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_80529DEC@l
    add 3, 3, 0
    lwz 3, 0x68(3)
    blr
L_8040343C:
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 4, lbl_80529DEC@l
    add 3, 3, 0
    lwz 3, 0x98(3)
    blr

fn_80403454:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8040347C
    lis 5, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 5, lbl_80529DEC@l
    add 3, 3, 0
    stw 4, 0x88(3)
    blr
L_8040347C:
    lis 5, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 5, lbl_80529DEC@l
    add 3, 3, 0
    stw 4, 0xb8(3)
    blr

fn_80403494:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_804034BC
    lis 5, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 5, lbl_80529DEC@l
    add 3, 3, 0
    stw 4, 0x78(3)
    blr
L_804034BC:
    lis 5, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 5, lbl_80529DEC@l
    add 3, 3, 0
    stw 4, 0xa8(3)
    blr

fn_804034D4:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_804034FC
    lis 5, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 5, lbl_80529DEC@l
    add 3, 3, 0
    stw 4, 0x68(3)
    blr
L_804034FC:
    lis 5, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 3, 5, lbl_80529DEC@l
    add 3, 3, 0
    stw 4, 0x98(3)
    blr

fn_80403514:
    li 8, 0x0
    lis 4, lbl_8050EC80@ha
    stw 8, 0x118(3)
    addi 4, 4, lbl_8050EC80@l
    li 10, 0x0
    stw 8, 0x11c(3)
    lwz 9, 0x10(4)
L_80403530:
    li 0, 0x4
    mr 7, 8
    li 11, 0x0
    mtctr 0
L_80403540:
    cmpwi 10, 0x0
    .4byte 0x4180000C # blt .L_80403550
    cmpwi 10, 0x7
    .4byte 0x4081000C # ble .L_80403558
L_80403550:
    li 0, 0x0
    .4byte 0x48000048 # b .L_8040359C
L_80403558:
    cmpwi 11, 0x0
    .4byte 0x4180000C # blt .L_80403568
    cmpwi 11, 0x3
    .4byte 0x4081000C # ble .L_80403570
L_80403568:
    li 0, 0x0
    .4byte 0x48000030 # b .L_8040359C
L_80403570:
    mulli 5, 9, 0xc8
    lis 4, lbl_8050EC80@ha
    li 6, 0x1
    addi 0, 4, lbl_8050EC80@l
    add 4, 0, 5
    slw 5, 6, 7
    lwz 0, 0x28(4)
    and 4, 5, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
L_8040359C:
    cmpwi 0, 0x0
    .4byte 0x408200C0 # bne .L_80403660
    stw 10, 0x118(3)
    stw 11, 0x11c(3)
    lwz 4, 0x118(3)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_804035C4
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820090 # beq .L_80403650
L_804035C4:
    cmpwi 4, 0x1
    .4byte 0x40820010 # bne .L_804035D8
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182007C # beq .L_80403650
L_804035D8:
    cmpwi 4, 0x2
    .4byte 0x40820010 # bne .L_804035EC
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820068 # beq .L_80403650
L_804035EC:
    cmpwi 4, 0x3
    .4byte 0x40820010 # bne .L_80403600
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80403650
L_80403600:
    cmpwi 4, 0x4
    .4byte 0x40820010 # bne .L_80403614
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820040 # beq .L_80403650
L_80403614:
    cmpwi 4, 0x5
    .4byte 0x40820010 # bne .L_80403628
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_80403650
L_80403628:
    cmpwi 4, 0x6
    .4byte 0x40820010 # bne .L_8040363C
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_80403650
L_8040363C:
    cmpwi 4, 0x7
    bnelr
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    bnelr
L_80403650:
    lwz 4, 0x11c(3)
    addi 0, 4, 0x1
    stw 0, 0x11c(3)
    blr
L_80403660:
    addi 7, 7, 0x1
    addi 11, 11, 0x1
    .4byte 0x4200FED8 # bdnz .L_80403540
    addi 10, 10, 0x1
    addi 8, 8, 0x4
    cmpwi 10, 0x8
    .4byte 0x4180FEB8 # blt .L_80403530
    blr

fn_80403680:
    li 0, 0x4
    mr 8, 3
    .4byte 0xC00208D8 # lfs f0, lbl_80543878@sda21(r0)
    mr 9, 3
    mtctr 0
L_80403694:
    li 7, 0x0
    li 6, 0x1
    stw 7, 0x68(8)
    li 5, 0x2
    li 4, 0x4
    li 0, 0x80
    stw 6, 0x78(8)
    stw 5, 0x88(8)
    stw 7, 0x98(8)
    stw 6, 0xa8(8)
    stw 5, 0xb8(8)
    stw 7, 0xe8(8)
    stw 4, 0xd8(8)
    stw 4, 0xc8(8)
    stw 0, 0x108(8)
    stw 7, 0xf8(8)
    stw 7, 0x130(8)
    stw 7, 0x140(8)
    stw 7, 0x150(8)
    stw 7, 0x160(8)
    stw 7, 0x170(8)
    stw 7, 0x180(8)
    stw 7, 0x190(8)
    addi 8, 8, 0x4
    stfs 0, 0x1c4(9)
    stfs 0, 0x1c8(9)
    stfs 0, 0x1cc(9)
    addi 9, 9, 0xc
    .4byte 0x4200FF90 # bdnz .L_80403694
    stw 7, 0x1b4(3)
    li 4, -0x1
    li 0, 0xff
    stw 7, 0x180(3)
    stw 7, 0x1b8(3)
    stw 7, 0x184(3)
    stw 7, 0x1bc(3)
    stw 7, 0x188(3)
    stw 7, 0x1c0(3)
    stw 7, 0x18c(3)
    stw 7, 0x1b0(3)
    stb 7, 0x214(3)
    stb 7, 0x215(3)
    stw 4, 0x64(3)
    stw 4, 0x1a8(3)
    stw 4, 0x1a4(3)
    stb 7, 0x236(3)
    stw 7, 0x118(3)
    stw 7, 0x11c(3)
    stw 7, 0x120(3)
    stw 7, 0x124(3)
    stw 7, 0x128(3)
    stw 7, 0x12c(3)
    stb 7, 0x239(3)
    stw 7, 0x1ac(3)
    stb 7, 0x253(3)
    stb 7, 0x254(3)
    stb 7, 0x237(3)
    stb 0, 0x1fc(3)
    stb 0, 0x1fd(3)
    stb 0, 0x1fe(3)
    stb 0, 0x1ff(3)
    stb 0, 0x200(3)
    stb 0, 0x201(3)
    stb 0, 0x202(3)
    stb 0, 0x203(3)
    stb 0, 0x204(3)
    stb 0, 0x205(3)
    stb 0, 0x206(3)
    stb 0, 0x207(3)
    stb 0, 0x208(3)
    stb 0, 0x209(3)
    stb 0, 0x20a(3)
    stb 0, 0x20b(3)
    stb 0, 0x20c(3)
    stb 0, 0x20d(3)
    stb 0, 0x20e(3)
    stb 0, 0x20f(3)
    stb 0, 0x210(3)
    stb 0, 0x211(3)
    stb 0, 0x212(3)
    stb 0, 0x213(3)
    stb 7, 0x242(3)
    stb 7, 0x243(3)
    stb 7, 0x23e(3)
    stb 7, 0x240(3)
    stb 7, 0x24a(3)
    stb 7, 0x24b(3)
    stb 7, 0x24e(3)
    stb 7, 0x24f(3)
    stb 7, 0x24d(3)
    stb 7, 0x252(3)
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8040217C

