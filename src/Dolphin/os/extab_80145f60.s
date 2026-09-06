# MAJOR: dispatch-cross-check bundle - 3 real FourCC actor vtable
# bodies (ctors already landed: fn_801469A4, fn_8014792C, fn_8014AB08,
# fn_8014DAB0 - 4 sinit entries for 3 dispatch-confirmed actor dtors,
# matching fn_80145F60/fn_80146BC8/fn_8014CF28 territory) plus shared
# helper/update functions, landed as ONE byte-contiguous 32-function,
# ~7,540-byte Track-A bundle (0x80145F60-0x8014DCD4). Found+verified
# via spanwalk.py (full contiguity confirmed, stopping exactly at the
# pre-existing extab_8014dcd4.s boundary) and resolvefiles.py.
# .ctors placement (0x8045BF1C-0x8045BF2C) found by brute-force
# scanning every currently-unclaimed .ctors gap for the exact
# 4-address subsequence. See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_80006D0C
etb_80006D0C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006D0C, 8

.global etb_80006D14
etb_80006D14:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006D14, 8

.global etb_80006D1C
etb_80006D1C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006D1C, 8

.global etb_80006D24
etb_80006D24:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80006D24, 8

.global etb_80006D2C
etb_80006D2C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006D2C, 8

.global etb_80006D34
etb_80006D34:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006D34, 8

.global etb_80006D3C
etb_80006D3C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006D3C, 8

.global etb_80006D44
etb_80006D44:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006D44, 8

.global etb_80006D4C
etb_80006D4C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006D4C, 8

.global etb_80006D54
etb_80006D54:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006D54, 8

.global etb_80006D5C
etb_80006D5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006D5C, 8

.global etb_80006D64
etb_80006D64:
    .4byte 0x43CA0000
    .4byte 0x00000000
.size etb_80006D64, 8

.global etb_80006D6C
etb_80006D6C:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_80006D6C, 8

.global etb_80006D74
etb_80006D74:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006D74, 8

.global etb_80006D7C
etb_80006D7C:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_80006D7C, 8

.global etb_80006D84
etb_80006D84:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80006D84, 8

.global etb_80006D8C
etb_80006D8C:
    .4byte 0x480A0000
    .4byte 0x00000000
.size etb_80006D8C, 8

.global etb_80006D94
etb_80006D94:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006D94, 8

.global etb_80006D9C
etb_80006D9C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006D9C, 8

.global etb_80006DA4
etb_80006DA4:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006DA4, 8

.global etb_80006DAC
etb_80006DAC:
    .4byte 0x198A0000
    .4byte 0x00000000
.size etb_80006DAC, 8

.global etb_80006DB4
etb_80006DB4:
    .4byte 0x30CA0000
    .4byte 0x00000000
.size etb_80006DB4, 8

.global etb_80006DBC
etb_80006DBC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006DBC, 8

.global etb_80006DC4
etb_80006DC4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006DC4, 8

.global etb_80006DCC
etb_80006DCC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006DCC, 8

.global etb_80006DD4
etb_80006DD4:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_80006DD4, 8

.global etb_80006DDC
etb_80006DDC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006DDC, 8

.global etb_80006DE4
etb_80006DE4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80006DE4, 8

.global etb_80006DEC
etb_80006DEC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006DEC, 8

.global etb_80006DF4
etb_80006DF4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006DF4, 8

.section extabindex, "a"
.balign 4
.global eti_80013720
eti_80013720:
    .4byte fn_80145F60
    .4byte 0x00000060
    .4byte etb_80006D0C
.size eti_80013720, 12

.global eti_8001372C
eti_8001372C:
    .4byte fn_80145FC0
    .4byte 0x00000224
    .4byte etb_80006D14
.size eti_8001372C, 12

.global eti_80013738
eti_80013738:
    .4byte fn_801461E4
    .4byte 0x00000180
    .4byte etb_80006D1C
.size eti_80013738, 12

.global eti_80013744
eti_80013744:
    .4byte fn_80146364
    .4byte 0x0000052C
    .4byte etb_80006D24
.size eti_80013744, 12

.global eti_80013750
eti_80013750:
    .4byte fn_801468AC
    .4byte 0x000000F8
    .4byte etb_80006D2C
.size eti_80013750, 12

.global eti_8001375C
eti_8001375C:
    .4byte fn_801469A4
    .4byte 0x00000224
    .4byte etb_80006D34
.size eti_8001375C, 12

.global eti_80013768
eti_80013768:
    .4byte fn_80146BC8
    .4byte 0x00000060
    .4byte etb_80006D3C
.size eti_80013768, 12

.global eti_80013774
eti_80013774:
    .4byte fn_80146C28
    .4byte 0x00000330
    .4byte etb_80006D44
.size eti_80013774, 12

.global eti_80013780
eti_80013780:
    .4byte fn_80146F58
    .4byte 0x000006C8
    .4byte etb_80006D4C
.size eti_80013780, 12

.global eti_8001378C
eti_8001378C:
    .4byte fn_80147620
    .4byte 0x00000214
    .4byte etb_80006D54
.size eti_8001378C, 12

.global eti_80013798
eti_80013798:
    .4byte fn_8014792C
    .4byte 0x00000224
    .4byte etb_80006D5C
.size eti_80013798, 12

.global eti_800137A4
eti_800137A4:
    .4byte fn_80147B50
    .4byte 0x000006CC
    .4byte etb_80006D64
.size eti_800137A4, 12

.global eti_800137B0
eti_800137B0:
    .4byte fn_8014821C
    .4byte 0x000017F4
    .4byte etb_80006D6C
.size eti_800137B0, 12

.global eti_800137BC
eti_800137BC:
    .4byte fn_80149A10
    .4byte 0x000000DC
    .4byte etb_80006D74
.size eti_800137BC, 12

.global eti_800137C8
eti_800137C8:
    .4byte fn_80149AEC
    .4byte 0x000004F0
    .4byte etb_80006D7C
.size eti_800137C8, 12

.global eti_800137D4
eti_800137D4:
    .4byte fn_80149FDC
    .4byte 0x000002F0
    .4byte etb_80006D84
.size eti_800137D4, 12

.global eti_800137E0
eti_800137E0:
    .4byte fn_8014A2CC
    .4byte 0x00000328
    .4byte etb_80006D8C
.size eti_800137E0, 12

.global eti_800137EC
eti_800137EC:
    .4byte fn_8014A5F4
    .4byte 0x00000514
    .4byte etb_80006D94
.size eti_800137EC, 12

.global eti_800137F8
eti_800137F8:
    .4byte fn_8014AB08
    .4byte 0x00000224
    .4byte etb_80006D9C
.size eti_800137F8, 12

.global eti_80013804
eti_80013804:
    .4byte fn_8014AD2C
    .4byte 0x00000288
    .4byte etb_80006DA4
.size eti_80013804, 12

.global eti_80013810
eti_80013810:
    .4byte fn_8014AFB4
    .4byte 0x000004E8
    .4byte etb_80006DAC
.size eti_80013810, 12

.global eti_8001381C
eti_8001381C:
    .4byte fn_8014B49C
    .4byte 0x00001A8C
    .4byte etb_80006DB4
.size eti_8001381C, 12

.global eti_80013828
eti_80013828:
    .4byte fn_8014CF28
    .4byte 0x00000094
    .4byte etb_80006DBC
.size eti_80013828, 12

.global eti_80013834
eti_80013834:
    .4byte fn_8014CFBC
    .4byte 0x00000348
    .4byte etb_80006DC4
.size eti_80013834, 12

.global eti_80013840
eti_80013840:
    .4byte fn_8014D304
    .4byte 0x0000002C
    .4byte etb_80006DCC
.size eti_80013840, 12

.global eti_8001384C
eti_8001384C:
    .4byte fn_8014D330
    .4byte 0x000003AC
    .4byte etb_80006DD4
.size eti_8001384C, 12

.global eti_80013858
eti_80013858:
    .4byte fn_8014D6DC
    .4byte 0x0000018C
    .4byte etb_80006DDC
.size eti_80013858, 12

.global eti_80013864
eti_80013864:
    .4byte fn_8014D868
    .4byte 0x000001B8
    .4byte etb_80006DE4
.size eti_80013864, 12

.global eti_80013870
eti_80013870:
    .4byte fn_8014DA20
    .4byte 0x00000090
    .4byte etb_80006DEC
.size eti_80013870, 12

.global eti_8001387C
eti_8001387C:
    .4byte fn_8014DAB0
    .4byte 0x00000224
    .4byte etb_80006DF4
.size eti_8001387C, 12

.text
.balign 4
.global fn_80145F60
.global fn_80145FC0
.global fn_801461E4
.global fn_80146364
.global fn_80146890
.global fn_801468AC
.global fn_801469A4
.global fn_80146BC8
.global fn_80146C28
.global fn_80146F58
.global fn_80147620
.global fn_80147834
.global fn_8014792C
.global fn_80147B50
.global fn_8014821C
.global fn_80149A10
.global fn_80149AEC
.global fn_80149FDC
.global fn_8014A2CC
.global fn_8014A5F4
.global fn_8014AB08
.global fn_8014AD2C
.global fn_8014AFB4
.global fn_8014B49C
.global fn_8014CF28
.global fn_8014CFBC
.global fn_8014D304
.global fn_8014D330
.global fn_8014D6DC
.global fn_8014D868
.global fn_8014DA20
.global fn_8014DAB0

fn_80145F60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80145FA4
    lis 5, lbl_8049F4F0@ha
    li 4, 0x0
    addi 0, 5, lbl_8049F4F0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80145FA4
    mr 3, 30
    bl dtor_80084580
L_80145FA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80145FC0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    .4byte 0x80C2A0A0 # lwz r6, lbl_8053D040@sda21(r0)
    .4byte 0x8002A0A4 # lwz r0, lbl_8053D044@sda21(r0)
    stw 6, 0x8(1)
    stw 0, 0xc(1)
    lwz 31, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 30
    mr 6, 31
    addi 7, 1, 0x8
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80146034
    li 3, 0x1
    .4byte 0x48000198 # b .L_801461C8
L_80146034:
    mr 3, 30
    mr 4, 29
    bl fn_8022461C
    clrlwi 31, 3, 16
    mr 3, 30
    mr 4, 29
    bl fn_80226850
    subi 0, 31, 0x10
    clrlwi 3, 3, 16
    cmplwi 0, 0x7
    .4byte 0x40810014 # ble .L_80146070
    cmpwi 3, 0x140
    .4byte 0x41800014 # blt .L_80146078
    cmpwi 3, 0x15f
    .4byte 0x4181000C # bgt .L_80146078
L_80146070:
    li 3, 0x0
    .4byte 0x48000154 # b .L_801461C8
L_80146078:
    cmpwi 31, 0x0
    .4byte 0x41820148 # beq .L_801461C4
    cmpwi 31, 0x4
    .4byte 0x41820140 # beq .L_801461C4
    cmpwi 31, 0x5
    .4byte 0x41820138 # beq .L_801461C4
    cmpwi 31, 0x6
    .4byte 0x41820130 # beq .L_801461C4
    cmpwi 31, 0x7
    .4byte 0x41820128 # beq .L_801461C4
    cmpwi 31, 0x2
    .4byte 0x41820120 # beq .L_801461C4
    cmpwi 31, 0x3
    .4byte 0x41820118 # beq .L_801461C4
    cmpwi 31, 0x50
    .4byte 0x41820110 # beq .L_801461C4
    cmpwi 31, 0xe
    .4byte 0x41820108 # beq .L_801461C4
    cmpwi 31, 0xc
    .4byte 0x41820100 # beq .L_801461C4
    cmpwi 31, 0x27
    .4byte 0x418200F8 # beq .L_801461C4
    cmpwi 31, 0x28
    .4byte 0x418200F0 # beq .L_801461C4
    cmpwi 31, 0x29
    .4byte 0x418200E8 # beq .L_801461C4
    cmpwi 31, 0x2a
    .4byte 0x418200E0 # beq .L_801461C4
    cmpwi 31, 0x2b
    .4byte 0x418200D8 # beq .L_801461C4
    cmpwi 31, 0x2c
    .4byte 0x418200D0 # beq .L_801461C4
    cmpwi 31, 0x2d
    .4byte 0x418200C8 # beq .L_801461C4
    cmpwi 31, 0x2e
    .4byte 0x418200C0 # beq .L_801461C4
    cmpwi 31, 0x2f
    .4byte 0x418200B8 # beq .L_801461C4
    cmpwi 31, 0x20
    .4byte 0x418200B0 # beq .L_801461C4
    cmpwi 31, 0xd
    .4byte 0x418200A8 # beq .L_801461C4
    cmpwi 31, 0x39
    .4byte 0x418200A0 # beq .L_801461C4
    cmpwi 31, 0x3a
    .4byte 0x41820098 # beq .L_801461C4
    cmpwi 31, 0x3b
    .4byte 0x41820090 # beq .L_801461C4
    cmpwi 31, 0x4c
    .4byte 0x41820088 # beq .L_801461C4
    cmpwi 31, 0x4d
    .4byte 0x41820080 # beq .L_801461C4
    cmpwi 31, 0x4e
    .4byte 0x41820078 # beq .L_801461C4
    cmpwi 31, 0x4f
    .4byte 0x41820070 # beq .L_801461C4
    cmpwi 31, 0x24
    .4byte 0x41820068 # beq .L_801461C4
    cmpwi 31, 0x23
    .4byte 0x41820060 # beq .L_801461C4
    cmpwi 31, 0x25
    .4byte 0x40820018 # bne .L_80146184
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000048 # b .L_801461C8
L_80146184:
    cmpwi 31, 0x26
    .4byte 0x4082001C # bne .L_801461A4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000028 # b .L_801461C8
L_801461A4:
    cmpwi 31, 0x22
    .4byte 0x40820014 # bne .L_801461BC
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801461C4
L_801461BC:
    li 3, 0x1
    .4byte 0x48000008 # b .L_801461C8
L_801461C4:
    li 3, 0x0
L_801461C8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801461E4:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    mr 31, 3
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_80146270
L_80146210:
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
L_80146270:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80146210
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x3d(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 5, 0x28(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 5, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 5, 0x3e(1)
    stw 6, 0x40(1)
    stw 5, 0x44(1)
    stw 0, 0x48(1)
    stb 4, 0x3d(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x100
    .4byte 0x4080000C # bge .L_801462FC
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820058 # bne .L_80146350
L_801462FC:
    .4byte 0xC022A0A8 # lfs f1, lbl_8053D048@sda21(r0)
    lis 3, lbl_80465BC0@ha
    addi 4, 3, lbl_80465BC0@l
    addi 6, 1, 0x10
    fmr 2, 1
    mr 3, 31
    li 5, 0x2c
    li 7, 0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x2c
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
L_80146350:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80146364:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    lfs 1, 0x10(3)
    lfs 0, 0xc(3)
    stfs 0, 0x10(1)
    stfs 1, 0x14(1)
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801463C4
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_801463C4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480004B0 # b .L_80146870
L_801463C4:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820138 # beq .L_80146524
    .4byte 0x40800014 # bge .L_80146404
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80146414
    .4byte 0x408000A4 # bge .L_801464A0
    .4byte 0x48000434 # b .L_80146834
L_80146404:
    cmpwi 0, 0x4
    .4byte 0x41820278 # beq .L_80146680
    .4byte 0x40800428 # bge .L_80146834
    .4byte 0x480001A0 # b .L_801465B0
L_80146414:
    lfs 2, 0x44(31)
    .4byte 0xC022A0AC # lfs f1, lbl_8053D04C@sda21(r0)
    .4byte 0xC002A0B0 # lfs f0, lbl_8053D050@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800404 # bge .L_80146834
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x238(31)
    addi 0, 3, 0x660d
    .4byte 0xC022A0A8 # lfs f1, lbl_8053D048@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002A0B4 # lfs f0, lbl_8053D054@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8014648C
    li 0, 0x1
    stw 0, 0x238(31)
L_8014648C:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    .4byte 0x48000398 # b .L_80146834
L_801464A0:
    lfs 1, 0x44(31)
    .4byte 0xC002A0B8 # lfs f0, lbl_8053D058@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801464CC
    lwz 3, 0x23c(31)
    addi 0, 3, 0x700
    stw 0, 0x23c(31)
    .4byte 0x48000010 # b .L_801464D8
L_801464CC:
    lwz 3, 0x23c(31)
    subi 0, 3, 0x700
    stw 0, 0x23c(31)
L_801464D8:
    lwz 0, 0x23c(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0xc(31)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002A0B0 # lfs f0, lbl_8053D050@sda21(r0)
    lfsx 1, 3, 0
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082032C # bne .L_80146834
    stfs 0, 0x3c(31)
    li 0, 0x4
    stfs 0, 0x44(31)
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    .4byte 0x48000314 # b .L_80146834
L_80146524:
    lfs 2, 0x40(31)
    .4byte 0xC022A0AC # lfs f1, lbl_8053D04C@sda21(r0)
    .4byte 0xC002A0B0 # lfs f0, lbl_8053D050@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x40(31)
    lfs 1, 0x40(31)
    fcmpo cr0, 1, 0
    .4byte 0x408102F4 # ble .L_80146834
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x238(31)
    addi 0, 3, 0x660d
    .4byte 0xC022A0A8 # lfs f1, lbl_8053D048@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002A0B4 # lfs f0, lbl_8053D054@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8014659C
    li 0, 0x1
    stw 0, 0x238(31)
L_8014659C:
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    .4byte 0x48000288 # b .L_80146834
L_801465B0:
    lfs 2, 0x40(31)
    .4byte 0xC022A0B8 # lfs f1, lbl_8053D058@sda21(r0)
    .4byte 0xC002A0BC # lfs f0, lbl_8053D05C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x40(31)
    lfs 1, 0x40(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_801465D4
    stfs 0, 0x40(31)
L_801465D4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801465F0
    lwz 3, 0x23c(31)
    addi 0, 3, 0x700
    stw 0, 0x23c(31)
    .4byte 0x48000010 # b .L_801465FC
L_801465F0:
    lwz 3, 0x23c(31)
    subi 0, 3, 0x700
    stw 0, 0x23c(31)
L_801465FC:
    lwz 0, 0x23c(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    lfs 2, 0xc(31)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002A0C0 # lfs f0, lbl_8053D060@sda21(r0)
    lfsx 1, 4, 0
    mr 3, 31
    addi 5, 1, 0x24
    fadds 1, 2, 1
    stfs 1, 0xc(31)
    lfs 1, 0xc(31)
    stfs 1, 0x24(1)
    lfs 1, 0x10(31)
    stfs 1, 0x28(1)
    fadds 0, 1, 0
    lfs 1, 0x14(31)
    stfs 1, 0x2c(1)
    stfs 0, 0x28(1)
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201D0 # bne .L_80146834
    .4byte 0xC002A0B0 # lfs f0, lbl_8053D050@sda21(r0)
    li 0, 0x4
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stw 0, 0x230(31)
    .4byte 0x480001B8 # b .L_80146834
L_80146680:
    lfs 0, 0x60(31)
    li 5, 0x1
    lfs 1, 0x10(1)
    stfs 0, 0x30(1)
    lfs 5, 0x14(1)
    fadds 3, 0, 1
    lfs 0, 0x64(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stfs 0, 0x34(1)
    fadds 2, 0, 5
    lfs 0, 0x68(31)
    stfs 0, 0x38(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(31)
    fadds 0, 4, 5
    stfs 4, 0x3c(1)
    stfs 3, 0x30(1)
    stfs 2, 0x34(1)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801466E0
    li 5, 0x0
L_801466E0:
    lwz 4, 0x4(31)
    addi 3, 1, 0x30
    .4byte 0xC022A0B0 # lfs f1, lbl_8053D050@sda21(r0)
    bl fn_8023AF14
    lwz 4, 0x4(31)
    mr 29, 3
    addi 3, 1, 0x30
    addi 5, 1, 0x10
    li 6, 0x1
    bl fn_8023B8E4
    mr. 28, 3
    .4byte 0x40800014 # bge .L_80146720
    lwz 4, 0x4(31)
    addi 3, 1, 0x30
    addi 5, 1, 0x10
    bl fn_8023B768
L_80146720:
    cmpwi 29, 0x0
    .4byte 0x41800048 # blt .L_8014676C
    mr 3, 29
    bl fn_80237810
    mr 30, 3
    mr 3, 29
    bl fn_80237774
    cmpw 3, 30
    .4byte 0x40820010 # bne .L_80146750
    mr 3, 29
    li 4, 0x9
    bl fn_80230EB8
L_80146750:
    mr 3, 29
    li 4, 0x4
    li 5, 0x0
    bl fn_80236554
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000CC # b .L_80146834
L_8014676C:
    cmpwi 28, 0x0
    .4byte 0x41800048 # blt .L_801467B8
    mr 3, 28
    bl fn_80237810
    mr 30, 3
    mr 3, 28
    bl fn_80237774
    cmpw 3, 30
    .4byte 0x40820010 # bne .L_8014679C
    mr 3, 28
    li 4, 0x9
    bl fn_80230EB8
L_8014679C:
    mr 3, 28
    li 4, 0x4
    li 5, 0x0
    bl fn_80236554
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000080 # b .L_80146834
L_801467B8:
    lis 4, 0x5a4c
    mr 3, 31
    addi 4, 4, 0x4432
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x4180002C # blt .L_801467F8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc9
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x4
    li 0, 0x0
    .4byte 0x906D8FDC # stw r3, lbl_8053AB9C@sda21(r0)
    stb 0, 0x11c(31)
    .4byte 0x48000040 # b .L_80146834
L_801467F8:
    lis 4, 0x5a4c
    mr 3, 31
    addi 4, 4, 0x4434
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x41800028 # blt .L_80146834
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc9
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x4
    li 0, 0x0
    .4byte 0x906D902C # stw r3, lbl_8053ABEC@sda21(r0)
    stb 0, 0x11c(31)
L_80146834:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_80146870
    lfs 2, 0x10(31)
    addi 4, 1, 0x18
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002A0B0 # lfs f0, lbl_8053D050@sda21(r0)
    stfs 1, 0x18(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80146870:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80146890:
    .4byte 0xC002A0B0 # lfs f0, lbl_8053D050@sda21(r0)
    li 0, 0x4
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    stw 0, 0x230(3)
    blr

fn_801468AC:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002A0C4 # lfs f0, lbl_8053D064@sda21(r0)
    li 5, 0x0
    stw 0, 0x14(1)
    li 4, 0x3ff
    .4byte 0xC042A0C8 # lfs f2, lbl_8053D068@sda21(r0)
    stw 31, 0xc(1)
    .4byte 0xC022A0CC # lfs f1, lbl_8053D06C@sda21(r0)
    stw 30, 0x8(1)
    mr 30, 3
    lis 3, 0x2
    stfs 0, 0x60(30)
    addi 0, 3, 0x1000
    stfs 0, 0x64(30)
    .4byte 0xC002A0C0 # lfs f0, lbl_8053D060@sda21(r0)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 5, 0x238(30)
    stw 4, 0x234(30)
    lwz 3, 0x90(30)
    clrlwi 3, 3, 30
    stw 3, 0x240(30)
    stw 0, 0xb0(30)
    lwz 0, 0x240(30)
    cmpwi 0, 0x1
    .4byte 0x41820060 # beq .L_80146984
    .4byte 0xC002A0D0 # lfs f0, lbl_8053D070@sda21(r0)
    li 0, 0x0
    stfs 0, 0x44(30)
    stw 0, 0x230(30)
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8014698C
    lfs 2, 0x10(30)
    li 0, 0x2
    lfs 0, 0x14(30)
    .4byte 0xC022A0B0 # lfs f1, lbl_8053D050@sda21(r0)
    fsubs 2, 2, 0
    .4byte 0xC002A0D4 # lfs f0, lbl_8053D074@sda21(r0)
    stfs 2, 0x10(30)
    stfs 1, 0x14(30)
    stfs 1, 0x44(30)
    stfs 0, 0x40(30)
    stw 0, 0x230(30)
    .4byte 0x4800000C # b .L_8014698C
L_80146984:
    li 0, 0x4
    stw 0, 0x230(30)
L_8014698C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801469A4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BF350@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BF350@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801469F4
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
L_801469F4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146A2C
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
L_80146A2C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146A64
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
L_80146A64:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146A9C
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
L_80146A9C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146AD4
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
L_80146AD4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146B0C
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
L_80146B0C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146B44
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
L_80146B44:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146B7C
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
L_80146B7C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80146BB4
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
L_80146BB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80146BC8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80146C0C
    lis 5, lbl_8049F5D8@ha
    li 4, 0x0
    addi 0, 5, lbl_8049F5D8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80146C0C
    mr 3, 30
    bl dtor_80084580
L_80146C0C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80146C28:
    stwu 1, -0x70(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x74(1)
    li 0, -0x1
    addi 9, 1, 0x24
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    stw 0, 0x34(1)
    stw 0, 0x38(1)
    .4byte 0x48000064 # b .L_80146CB8
L_80146C58:
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
L_80146CB8:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80146C58
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x34(1)
    stw 5, 0x38(1)
    stw 5, 0x3c(1)
    stb 5, 0x40(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stb 4, 0x43(1)
    stb 4, 0x44(1)
    stb 5, 0x45(1)
    stb 5, 0x46(1)
    stb 5, 0x47(1)
    stb 5, 0x48(1)
    stb 5, 0x49(1)
    stb 4, 0x4a(1)
    stw 3, 0x4c(1)
    stb 4, 0x50(1)
    stb 5, 0x51(1)
    stb 5, 0x52(1)
    stw 6, 0x54(1)
    stw 5, 0x58(1)
    stw 0, 0x5c(1)
    lwz 0, 0x248(31)
    stb 0, 0x37(1)
    lwz 0, 0x90(31)
    cmpwi 0, 0x3
    .4byte 0x418201D8 # beq .L_80146F14
    .4byte 0x4080001C # bge .L_80146D5C
    cmpwi 0, 0x1
    .4byte 0x41820134 # beq .L_80146E7C
    .4byte 0x40800194 # bge .L_80146EE0
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80146D6C
    .4byte 0x480001E8 # b .L_80146F40
L_80146D5C:
    cmpwi 0, 0x5
    .4byte 0x4182011C # beq .L_80146E7C
    .4byte 0x408001DC # bge .L_80146F40
    .4byte 0x480000E0 # b .L_80146E48
L_80146D6C:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x408200A4 # bne .L_80146E18
    bl GetRoomConfigRecord
    lwz 10, 0xcc(3)
    lis 4, lbl_80465BD8@ha
    lwz 9, 0xd0(3)
    addi 0, 4, lbl_80465BD8@l
    lwz 8, 0xd4(3)
    addi 5, 1, 0x8
    lwz 7, 0xd8(3)
    mr 3, 0
    lfs 1, 0xc(31)
    addi 6, 1, 0x24
    stw 10, 0x14(1)
    li 4, 0x25
    stfs 1, 0x8(1)
    lfs 0, 0x14(1)
    stw 9, 0x18(1)
    lfs 2, 0x10(31)
    fadds 1, 1, 0
    lfs 0, 0x18(1)
    stfs 2, 0xc(1)
    fadds 0, 2, 0
    lfs 2, 0x14(31)
    stw 8, 0x1c(1)
    stw 7, 0x20(1)
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_801EF574
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    lis 3, lbl_80465BEC@ha
    addi 4, 3, lbl_80465BEC@l
    addi 6, 1, 0x24
    fmr 2, 1
    mr 3, 31
    li 5, 0x317
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x4800012C # b .L_80146F40
L_80146E18:
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    lis 3, lbl_80465BD8@ha
    addi 4, 3, lbl_80465BD8@l
    addi 6, 1, 0x24
    fmr 2, 1
    mr 3, 31
    li 5, 0x25
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x480000FC # b .L_80146F40
L_80146E48:
    li 0, 0x11
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    stw 0, 0x54(1)
    lis 3, lbl_80465BD8@ha
    addi 4, 3, lbl_80465BD8@l
    fmr 2, 1
    lwz 5, 0x24c(31)
    mr 3, 31
    addi 6, 1, 0x24
    li 7, -0x1
    addi 5, 5, 0xe5
    bl fn_801F06F0
    .4byte 0x480000C8 # b .L_80146F40
L_80146E7C:
    lwz 0, 0x4(31)
    lwz 3, 0x24c(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x4c
    .4byte 0x408000B4 # bge .L_80146F40
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80465BEC@ha
    addi 5, 3, lbl_80465BEC@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x24
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
    .4byte 0x48000064 # b .L_80146F40
L_80146EE0:
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    lis 3, lbl_80465BEC@ha
    lwz 5, 0x24c(31)
    addi 4, 3, lbl_80465BEC@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x170
    addi 6, 1, 0x24
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000030 # b .L_80146F40
L_80146F14:
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    lis 3, lbl_80465BEC@ha
    addi 4, 3, lbl_80465BEC@l
    li 5, 0x1ba
    fmr 2, 1
    mr 3, 31
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_80146F40:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80146F58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(3)
    lwz 30, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x418202D8 # beq .L_8014727C
    .4byte 0x40800014 # bge .L_80146FBC
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_80146FD0
    .4byte 0x4080019C # bge .L_80147150
    .4byte 0x48000514 # b .L_801474CC
L_80146FBC:
    cmpwi 0, 0x7
    .4byte 0x4080050C # bge .L_801474CC
    cmpwi 0, 0x4
    .4byte 0x40800394 # bge .L_8014735C
    .4byte 0x48000344 # b .L_80147310
L_80146FD0:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80147004
    lwz 0, 0x90(31)
    cmpwi 0, 0x5
    .4byte 0x40820010 # bne .L_80146FF4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480004DC # b .L_801474CC
L_80146FF4:
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    mr 29, 3
L_80147004:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80147018
    cmplwi 0, 0x3
    .4byte 0x40820008 # bne .L_8014701C
L_80147018:
    li 30, -0x1
L_8014701C:
    mr 3, 31
    mr 5, 30
    li 4, -0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_801F2A10
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80147048
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000488 # b .L_801474CC
L_80147048:
    clrlwi. 0, 29, 24
    .4byte 0x40820020 # bne .L_8014706C
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820464 # beq .L_801474CC
L_8014706C:
    lwz 0, 0x90(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80147080
    cmpwi 0, 0x5
    .4byte 0x4082000C # bne .L_80147088
L_80147080:
    clrlwi. 0, 29, 24
    .4byte 0x40820094 # bne .L_80147118
L_80147088:
    clrlwi. 0, 29, 24
    .4byte 0x40820058 # bne .L_801470E4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    li 5, 0x24a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    li 5, 0x24b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_8014710C
L_801470E4:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    li 5, 0x339
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8014710C:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480003B8 # b .L_801474CC
L_80147118:
    mr 3, 31
    lis 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002A0DC # lfs f0, lbl_8053D07C@sda21(r0)
    li 3, 0x0
    li 0, 0x3
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0x240(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000380 # b .L_801474CC
L_80147150:
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0xd1
    bl fn_801F0E34
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x4082008C # bne .L_801471F4
    li 0, 0x64
    stw 0, 0x238(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_801471B8
    .4byte 0x40800014 # bge .L_80147194
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801471A0
    .4byte 0x40800020 # bge .L_801471AC
    .4byte 0x4800003C # b .L_801471CC
L_80147194:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_801471CC
    .4byte 0x48000028 # b .L_801471C4
L_801471A0:
    li 0, 0x3
    stw 0, 0x240(31)
    .4byte 0x48000024 # b .L_801471CC
L_801471AC:
    li 0, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000018 # b .L_801471CC
L_801471B8:
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x4800000C # b .L_801471CC
L_801471C4:
    li 0, 0x2
    stw 0, 0x240(31)
L_801471CC:
    lfs 1, 0x3c(31)
    .4byte 0xC042A0E0 # lfs f2, lbl_8053D080@sda21(r0)
    .4byte 0xC002A0E4 # lfs f0, lbl_8053D084@sda21(r0)
    fmuls 1, 1, 2
    stfs 1, 0x3c(31)
    lfs 1, 0x40(31)
    fmuls 1, 1, 2
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000028 # b .L_80147218
L_801471F4:
    lfs 1, 0x3c(31)
    .4byte 0xC042A0E8 # lfs f2, lbl_8053D088@sda21(r0)
    .4byte 0xC002A0EC # lfs f0, lbl_8053D08C@sda21(r0)
    fmuls 1, 1, 2
    stfs 1, 0x3c(31)
    lfs 1, 0x40(31)
    fmuls 1, 1, 2
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_80147218:
    li 0, 0x0
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    stw 0, 0x108(31)
    addi 4, 31, 0xc
    li 5, 0x117
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A0D8 # lfs f1, lbl_8053D078@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000254 # b .L_801474CC
L_8014727C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_801472C4
    lwz 0, 0x238(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820034 # bne .L_801472C4
    lwz 4, 0x240(31)
    lis 3, lbl_8049F548@ha
    addi 3, 3, lbl_8049F548@l
    addi 0, 4, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    clrlwi 0, 0, 30
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x98(31)
L_801472C4:
    lwz 3, 0x248(31)
    subi 0, 3, 0xa
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801472E4
    li 0, 0x0
    stw 0, 0x248(31)
L_801472E4:
    lfs 2, 0x44(31)
    .4byte 0xC022A0F0 # lfs f1, lbl_8053D090@sda21(r0)
    .4byte 0xC002A0DC # lfs f0, lbl_8053D07C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x408001CC # bge .L_801474CC
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001C0 # b .L_801474CC
L_80147310:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408201B4 # bne .L_801474CC
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_80147348
    li 0, 0x1e
    stw 0, 0x234(31)
    .4byte 0x48000188 # b .L_801474CC
L_80147348:
    cmpwi 0, 0x7
    .4byte 0x41800180 # blt .L_801474CC
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000174 # b .L_801474CC
L_8014735C:
    li 0, 0x0
    stw 0, 0xb0(31)
    lwz 30, 0x258(31)
    cmpwi 30, 0x0
    .4byte 0x41800130 # blt .L_8014749C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x4182011C # beq .L_8014749C
    lwz 3, 0x98(30)
    bl fn_801F6874
    lhz 0, 0x25c(31)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    lfs 1, 0x254(31)
    subf 0, 0, 3
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0xc(31)
    lwz 3, 0x98(30)
    bl fn_801F6874
    lhz 0, 0x25c(31)
    lis 5, lbl_8052EBC0@ha
    lis 4, lbl_80534C00@ha
    lfs 1, 0x254(31)
    subf 0, 0, 3
    addi 5, 5, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    addi 3, 4, lbl_80534C00@l
    add 4, 5, 0
    lfs 0, 0x4(4)
    fmuls 0, 1, 0
    stfs 0, 0x10(31)
    lfs 1, 0xc(31)
    lfs 0, 0xc(30)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lfs 1, 0x10(31)
    lfs 0, 0x10(30)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x14(30)
    stfs 0, 0x14(31)
    lfs 3, 0xc(31)
    lfs 2, 0xc(30)
    lfs 1, 0x10(31)
    lfs 0, 0x10(30)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fneg 1, 2
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002A0F4 # lfs f0, lbl_8053D094@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    lwz 3, 0x240(31)
    cmpwi 3, 0x6
    .4byte 0x40800010 # bge .L_8014746C
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000064 # b .L_801474CC
L_8014746C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x40820058 # bne .L_801474CC
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x14
    .4byte 0x40810040 # ble .L_801474CC
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000034 # b .L_801474CC
L_8014749C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x40820020 # bne .L_801474C4
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    li 7, 0x1
    bl fn_801F8544
L_801474C4:
    li 0, 0x0
    stb 0, 0x11c(31)
L_801474CC:
    lwz 3, 0x234(31)
    li 0, 0x0
    cmpwi 3, 0x0
    .4byte 0x40810028 # ble .L_80147500
    subi 3, 3, 0x1
    stw 3, 0x234(31)
    lwz 3, 0x230(31)
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_80147500
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x40820008 # bne .L_80147500
    stb 0, 0x11c(31)
L_80147500:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x40810028 # ble .L_80147530
    subi 3, 3, 0x1
    stw 3, 0x238(31)
    lwz 3, 0x230(31)
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_80147530
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x40820008 # bne .L_80147530
    stb 0, 0x11c(31)
L_80147530:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x40810028 # ble .L_80147564
    subi 3, 3, 0x1
    stw 3, 0x234(4)
    lwz 3, 0x230(31)
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_80147564
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x40820008 # bne .L_80147564
    stb 0, 0x11c(31)
L_80147564:
    lwz 0, 0x90(31)
    cmpwi 0, 0x3
    .4byte 0x41820098 # beq .L_80147604
    .4byte 0x40800014 # bge .L_80147584
    cmpwi 0, 0x1
    .4byte 0x41820048 # beq .L_801475C0
    .4byte 0x40800014 # bge .L_80147590
    .4byte 0x48000084 # b .L_80147604
L_80147584:
    cmpwi 0, 0x5
    .4byte 0x41820038 # beq .L_801475C0
    .4byte 0x40800078 # bge .L_80147604
L_80147590:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_80147604
    li 0, 0x3
    stw 0, 0x238(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    clrlwi 0, 0, 30
    stw 0, 0x24c(31)
    .4byte 0x48000048 # b .L_80147604
L_801475C0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801475D4
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_801475E0
L_801475D4:
    lwz 0, 0x98(31)
    stw 0, 0x24c(31)
    .4byte 0x48000028 # b .L_80147604
L_801475E0:
    lwz 4, 0x98(31)
    lis 3, lbl_8049F558@ha
    lwz 0, 0x240(31)
    addi 3, 3, lbl_8049F558@l
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x24c(31)
L_80147604:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80147620:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    lwz 31, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 30
    mr 6, 31
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80147680
    li 3, 0x1
    .4byte 0x4800019C # b .L_80147818
L_80147680:
    mr 3, 30
    mr 4, 29
    bl fn_8022461C
    clrlwi 31, 3, 16
    mr 3, 30
    mr 4, 29
    bl fn_80226850
    clrlwi 0, 3, 16
    cmpwi 0, 0x230
    .4byte 0x4182000C # beq .L_801476B0
    cmpwi 0, 0x231
    .4byte 0x4082000C # bne .L_801476B8
L_801476B0:
    li 3, 0x0
    .4byte 0x48000164 # b .L_80147818
L_801476B8:
    cmpwi 31, 0x0
    .4byte 0x41820158 # beq .L_80147814
    cmpwi 31, 0x4
    .4byte 0x41820150 # beq .L_80147814
    cmpwi 31, 0x5
    .4byte 0x41820148 # beq .L_80147814
    cmpwi 31, 0x6
    .4byte 0x41820140 # beq .L_80147814
    cmpwi 31, 0x7
    .4byte 0x41820138 # beq .L_80147814
    cmpwi 31, 0x2
    .4byte 0x41820130 # beq .L_80147814
    cmpwi 31, 0x3
    .4byte 0x41820128 # beq .L_80147814
    cmpwi 31, 0x50
    .4byte 0x41820120 # beq .L_80147814
    cmpwi 31, 0xe
    .4byte 0x41820118 # beq .L_80147814
    cmpwi 31, 0xc
    .4byte 0x41820110 # beq .L_80147814
    cmpwi 31, 0x27
    .4byte 0x41820108 # beq .L_80147814
    cmpwi 31, 0x28
    .4byte 0x41820100 # beq .L_80147814
    cmpwi 31, 0x29
    .4byte 0x418200F8 # beq .L_80147814
    cmpwi 31, 0x2a
    .4byte 0x418200F0 # beq .L_80147814
    cmpwi 31, 0x2b
    .4byte 0x418200E8 # beq .L_80147814
    cmpwi 31, 0x2c
    .4byte 0x418200E0 # beq .L_80147814
    cmpwi 31, 0x2d
    .4byte 0x418200D8 # beq .L_80147814
    cmpwi 31, 0x2e
    .4byte 0x418200D0 # beq .L_80147814
    cmpwi 31, 0x2f
    .4byte 0x418200C8 # beq .L_80147814
    cmpwi 31, 0x20
    .4byte 0x418200C0 # beq .L_80147814
    cmpwi 31, 0xd
    .4byte 0x418200B8 # beq .L_80147814
    cmpwi 31, 0x39
    .4byte 0x418200B0 # beq .L_80147814
    cmpwi 31, 0x3a
    .4byte 0x418200A8 # beq .L_80147814
    cmpwi 31, 0x3b
    .4byte 0x418200A0 # beq .L_80147814
    cmpwi 31, 0x4c
    .4byte 0x41820098 # beq .L_80147814
    cmpwi 31, 0x4d
    .4byte 0x41820090 # beq .L_80147814
    cmpwi 31, 0x4e
    .4byte 0x41820088 # beq .L_80147814
    cmpwi 31, 0x4f
    .4byte 0x41820080 # beq .L_80147814
    cmpwi 31, 0x24
    .4byte 0x41820078 # beq .L_80147814
    cmpwi 0, 0x3a
    .4byte 0x4182000C # beq .L_801477B0
    cmpwi 0, 0x3d
    .4byte 0x4082000C # bne .L_801477B8
L_801477B0:
    li 3, 0x0
    .4byte 0x48000064 # b .L_80147818
L_801477B8:
    cmpwi 31, 0x25
    .4byte 0x40820018 # bne .L_801477D4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000048 # b .L_80147818
L_801477D4:
    cmpwi 31, 0x26
    .4byte 0x4082001C # bne .L_801477F4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000028 # b .L_80147818
L_801477F4:
    cmpwi 31, 0x22
    .4byte 0x40820014 # bne .L_8014780C
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80147814
L_8014780C:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80147818
L_80147814:
    li 3, 0x0
L_80147818:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80147834:
    .4byte 0xC022A0F8 # lfs f1, lbl_8053D098@sda21(r0)
    li 5, 0x0
    .4byte 0xC002A0FC # lfs f0, lbl_8053D09C@sda21(r0)
    li 4, 0x12c
    stfs 1, 0x60(3)
    li 0, 0xff
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 5, 0x240(3)
    stw 5, 0x244(3)
    stw 5, 0x234(3)
    stw 5, 0x238(3)
    stw 5, 0x23c(3)
    stw 5, 0x250(3)
    stw 4, 0x234(3)
    stw 5, 0x98(3)
    stw 5, 0x24c(3)
    stw 0, 0x248(3)
    lwz 0, 0x90(3)
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_801478C4
    .4byte 0xC022A100 # lfs f1, lbl_8053D0A0@sda21(r0)
    .4byte 0xC002A104 # lfs f0, lbl_8053D0A4@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
L_801478C4:
    lwz 0, 0x90(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_80147908
    .4byte 0x40800010 # bge .L_801478E0
    cmpwi 0, 0x1
    .4byte 0x40800024 # bge .L_801478FC
    .4byte 0x48000044 # b .L_80147920
L_801478E0:
    cmpwi 0, 0x5
    .4byte 0x41820008 # beq .L_801478EC
    .4byte 0x48000038 # b .L_80147920
L_801478EC:
    li 4, 0x2710
    li 0, 0x12c
    stw 4, 0x234(3)
    stw 0, 0x23c(3)
L_801478FC:
    li 0, 0x6
    stw 0, 0xb0(3)
    .4byte 0x4800001C # b .L_80147920
L_80147908:
    li 0, 0x3
    .4byte 0xC002A108 # lfs f0, lbl_8053D0A8@sda21(r0)
    stw 0, 0x238(3)
    li 0, 0x7
    stfs 0, 0x14(3)
    stw 0, 0xb0(3)
L_80147920:
    li 0, 0x0
    stw 0, 0x230(3)
    blr

fn_8014792C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BF450@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BF450@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014797C
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
L_8014797C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801479B4
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
L_801479B4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801479EC
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
L_801479EC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80147A24
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
L_80147A24:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80147A5C
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
L_80147A5C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80147A94
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
L_80147A94:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80147ACC
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
L_80147ACC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80147B04
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
L_80147B04:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80147B3C
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
L_80147B3C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80147B50:
    stwu 1, -0x1a0(1)
    mflr 0
    stw 0, 0x1a4(1)
    stfd 31, 0x190(1)
    psq_st 31, 0x198(1), 0, 0
    stfd 30, 0x180(1)
    psq_st 30, 0x188(1), 0, 0
    stfd 29, 0x170(1)
    psq_st 29, 0x178(1), 0, 0
    stfd 28, 0x160(1)
    psq_st 28, 0x168(1), 0, 0
    stfd 27, 0x150(1)
    psq_st 27, 0x158(1), 0, 0
    stfd 26, 0x140(1)
    psq_st 26, 0x148(1), 0, 0
    stfd 25, 0x130(1)
    psq_st 25, 0x138(1), 0, 0
    stfd 24, 0x120(1)
    psq_st 24, 0x128(1), 0, 0
    stfd 23, 0x110(1)
    psq_st 23, 0x118(1), 0, 0
    stfd 22, 0x100(1)
    psq_st 22, 0x108(1), 0, 0
    stfd 21, 0xf0(1)
    psq_st 21, 0xf8(1), 0, 0
    stfd 20, 0xe0(1)
    psq_st 20, 0xe8(1), 0, 0
    stfd 19, 0xd0(1)
    psq_st 19, 0xd8(1), 0, 0
    stfd 18, 0xc0(1)
    psq_st 18, 0xc8(1), 0, 0
    stfd 17, 0xb0(1)
    psq_st 17, 0xb8(1), 0, 0
    stmw 24, 0x90(1)
    li 0, -0x1
    mr 31, 3
    stw 0, 0x48(1)
    addi 9, 1, 0x38
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80147C54
L_80147BF4:
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
L_80147C54:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80147BF4
    li 5, 0x0
    li 4, 0x1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    li 6, -0x1
    stb 5, 0x55(1)
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
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
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    stb 4, 0x55(1)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80147CF0
    cmplwi 0, 0x3
    .4byte 0x40820040 # bne .L_80147D2C
L_80147CF0:
    .4byte 0x800D8F74 # lwz r0, lbl_8053AB34@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40820498 # bne .L_80148190
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    lis 3, lbl_80465D30@ha
    addi 4, 3, lbl_80465D30@l
    li 5, 0x176
    fmr 2, 1
    mr 3, 31
    li 6, 0x0
    li 7, -0x1
    li 8, 0x1
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000468 # b .L_80148190
L_80147D2C:
    lfs 20, 0xc(31)
    lis 0, 0x4330
    lfs 19, 0x10(31)
    lfs 18, 0x14(31)
    lfs 0, 0x314(31)
    stw 0, 0x78(1)
    .4byte 0xC862A120 # lfd f3, lbl_8053D0C0@sda21(r0)
    stfs 0, 0xc(31)
    .4byte 0xC002A118 # lfs f0, lbl_8053D0B8@sda21(r0)
    lfs 2, 0x318(31)
    stfs 2, 0x10(31)
    lfs 2, 0x31c(31)
    stfs 2, 0x14(31)
    lhz 0, 0x2ba(31)
    stw 0, 0x7c(1)
    lfd 2, 0x78(1)
    fsubs 2, 2, 3
    fdivs 22, 2, 0
    bl sin
    frsp 17, 1
    fmr 1, 22
    bl sin
    frsp 26, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl sin
    frsp 21, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl cos
    frsp 27, 1
    fmr 1, 22
    bl cos
    frsp 28, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    lis 3, lbl_8049F698@ha
    lis 5, 0x4445
    fmuls 2, 17, 26
    .4byte 0xC122A114 # lfs f9, lbl_8053D0B4@sda21(r0)
    fmuls 11, 27, 3
    stw 0, 0x50(1)
    fmuls 10, 27, 21
    addi 4, 3, lbl_8049F698@l
    fmuls 1, 17, 21
    addi 3, 5, 0x4754
    fmuls 0, 17, 3
    fmuls 8, 28, 3
    fmuls 7, 28, 21
    fneg 6, 26
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 21, 11
    fmuls 3, 17, 28
    fmadds 2, 11, 26, 1
    fmsubs 1, 10, 26, 0
    fmuls 0, 27, 28
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x8(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x18(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x28(1)
    fmuls 0, 9, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 0, 0x278(31)
    slwi 0, 0, 2
    add 4, 4, 0
    lwz 4, 0x20(4)
    bl fn_804032E8
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x38
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    lis 3, lbl_8049F698@ha
    .4byte 0xC342A110 # lfs f26, lbl_8053D0B0@sda21(r0)
    .4byte 0xCB62A120 # lfd f27, lbl_8053D0C0@sda21(r0)
    addi 26, 31, 0x30
    .4byte 0xC382A118 # lfs f28, lbl_8053D0B8@sda21(r0)
    addi 25, 31, 0x8
    .4byte 0xC3A2A11C # lfs f29, lbl_8053D0BC@sda21(r0)
    addi 28, 1, 0x8
    .4byte 0xCBC2A128 # lfd f30, lbl_8053D0C8@sda21(r0)
    addi 30, 3, lbl_8049F698@l
    .4byte 0xC3E2A114 # lfs f31, lbl_8053D0B4@sda21(r0)
    li 24, 0x4
    lis 27, 0x4330
    lis 29, 0x4445
L_80147EC0:
    subfic 3, 24, 0x6
    xoris 0, 24, 0x8000
    stb 3, 0x55(1)
    fmr 1, 26
    lfs 0, 0x2cc(26)
    stw 0, 0x84(1)
    stfs 0, 0xc(31)
    lfs 0, 0x2d0(26)
    stw 27, 0x80(1)
    stfs 0, 0x10(31)
    lfs 0, 0x2d4(26)
    stw 27, 0x78(1)
    stfs 0, 0x14(31)
    lfd 0, 0x80(1)
    stfs 26, 0x14(1)
    fsubs 0, 0, 30
    stfs 26, 0x24(1)
    stfs 26, 0x34(1)
    fnmsubs 17, 29, 0, 31
    lhz 0, 0x2ae(25)
    stw 0, 0x7c(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 27
    fdivs 21, 0, 28
    bl sin
    frsp 25, 1
    fmr 1, 21
    bl sin
    frsp 24, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl sin
    frsp 23, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl cos
    frsp 22, 1
    fmr 1, 21
    bl cos
    frsp 21, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl cos
    frsp 3, 1
    stw 28, 0x50(1)
    fmuls 7, 21, 23
    addi 3, 29, 0x4754
    fneg 6, 24
    fmuls 10, 22, 3
    fmuls 2, 25, 24
    fmuls 9, 22, 23
    fmuls 1, 25, 23
    fmuls 0, 25, 3
    fmuls 8, 21, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 23, 10
    fmuls 3, 25, 21
    fmadds 2, 10, 24, 1
    fmsubs 1, 9, 24, 0
    fmuls 0, 22, 21
    fmuls 8, 17, 8
    fmuls 7, 17, 7
    fmuls 6, 17, 6
    fmuls 5, 17, 5
    stfs 8, 0x8(1)
    fmuls 4, 17, 4
    fmuls 3, 17, 3
    stfs 7, 0x18(1)
    fmuls 2, 17, 2
    fmuls 1, 17, 1
    stfs 6, 0x28(1)
    fmuls 0, 17, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 0, 0x25c(31)
    slwi 0, 0, 2
    add 4, 30, 0
    lwz 4, 0xc(4)
    bl fn_804032E8
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x38
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
    subic. 24, 24, 0x1
    subi 25, 25, 0x2
    subi 26, 26, 0xc
    .4byte 0x4080FE94 # bge .L_80147EC0
    stfs 20, 0xc(31)
    lis 0, 0x4330
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    li 3, 0x7
    stfs 19, 0x10(31)
    .4byte 0xC862A120 # lfd f3, lbl_8053D0C0@sda21(r0)
    stfs 18, 0x14(31)
    .4byte 0xC002A118 # lfs f0, lbl_8053D0B8@sda21(r0)
    stb 3, 0x55(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lhz 3, 0x284(31)
    stw 0, 0x80(1)
    stw 3, 0x84(1)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fdivs 20, 2, 0
    bl sin
    frsp 17, 1
    fmr 1, 20
    bl sin
    frsp 18, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl sin
    frsp 19, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl cos
    frsp 21, 1
    fmr 1, 20
    bl cos
    frsp 22, 1
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    bl cos
    frsp 3, 1
    addi 0, 1, 0x8
    lis 3, lbl_8049F698@ha
    lis 6, 0x4445
    fmuls 2, 17, 18
    .4byte 0xC122A114 # lfs f9, lbl_8053D0B4@sda21(r0)
    fmuls 11, 21, 3
    stw 0, 0x50(1)
    fmuls 10, 21, 19
    .4byte 0x38AD83A0 # li r5, lbl_80539F60@sda21
    fmuls 1, 17, 19
    addi 4, 3, lbl_8049F698@l
    fmuls 0, 17, 3
    addi 3, 6, 0x4754
    fmuls 8, 22, 3
    fmuls 7, 22, 19
    fneg 6, 18
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 19, 11
    fmuls 3, 17, 22
    fmadds 2, 11, 18, 1
    fmsubs 1, 10, 18, 0
    fmuls 0, 21, 22
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x8(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x18(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x28(1)
    fmuls 0, 9, 0
    stfs 5, 0xc(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x2c(1)
    stfs 2, 0x10(1)
    stfs 1, 0x20(1)
    stfs 0, 0x30(1)
    lwz 0, 0x258(31)
    lbzx 0, 5, 0
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    mr 4, 3
    mr 3, 31
    addi 5, 1, 0x38
    fmr 2, 1
    li 6, -0x1
    fmr 3, 1
    bl fn_801EFD34
L_80148190:
    psq_l 31, 0x198(1), 0, 0
    lfd 31, 0x190(1)
    psq_l 30, 0x188(1), 0, 0
    lfd 30, 0x180(1)
    psq_l 29, 0x178(1), 0, 0
    lfd 29, 0x170(1)
    psq_l 28, 0x168(1), 0, 0
    lfd 28, 0x160(1)
    psq_l 27, 0x158(1), 0, 0
    lfd 27, 0x150(1)
    psq_l 26, 0x148(1), 0, 0
    lfd 26, 0x140(1)
    psq_l 25, 0x138(1), 0, 0
    lfd 25, 0x130(1)
    psq_l 24, 0x128(1), 0, 0
    lfd 24, 0x120(1)
    psq_l 23, 0x118(1), 0, 0
    lfd 23, 0x110(1)
    psq_l 22, 0x108(1), 0, 0
    lfd 22, 0x100(1)
    psq_l 21, 0xf8(1), 0, 0
    lfd 21, 0xf0(1)
    psq_l 20, 0xe8(1), 0, 0
    lfd 20, 0xe0(1)
    psq_l 19, 0xd8(1), 0, 0
    lfd 19, 0xd0(1)
    psq_l 18, 0xc8(1), 0, 0
    lfd 18, 0xc0(1)
    psq_l 17, 0xb8(1), 0, 0
    lfd 17, 0xb0(1)
    lmw 24, 0x90(1)
    lwz 0, 0x1a4(1)
    mtlr 0
    addi 1, 1, 0x1a0
    blr

fn_8014821C:
    stwu 1, -0x20e0(1)
    mflr 0
    stw 0, 0x20e4(1)
    li 0, 0x20d8
    stfd 31, 0x20d0(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x20c8
    stfd 30, 0x20c0(1)
    psq_stx 30, 1, 0, 0, 0
    li 0, 0x20b8
    stfd 29, 0x20b0(1)
    psq_stx 29, 1, 0, 0, 0
    li 0, 0x20a8
    stfd 28, 0x20a0(1)
    psq_stx 28, 1, 0, 0, 0
    stw 31, 0x209c(1)
    stw 30, 0x2098(1)
    stw 29, 0x2094(1)
    stw 28, 0x2090(1)
    mr 29, 3
    li 0, 0x2710
    psq_l 2, 0x3c(29), 0, 0
    lfs 1, 0x44(3)
    lfs 0, 0x60(3)
    psq_st 2, 0x60(1), 0, 0
    stfs 0, 0x50(1)
    lfs 0, 0x64(3)
    stfs 1, 0x68(1)
    stfs 0, 0x54(1)
    lfs 0, 0x68(3)
    stfs 0, 0x58(1)
    lfs 0, 0x6c(3)
    stfs 0, 0x5c(1)
    lfs 1, 0x10(3)
    lfs 0, 0xc(3)
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stw 0, 0x108(3)
    lwz 3, 0x234(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801482C8
    subi 0, 3, 0x1
    stw 0, 0x234(29)
L_801482C8:
    lwz 3, 0x238(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801482DC
    subi 0, 3, 0x1
    stw 0, 0x238(29)
L_801482DC:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801482F0
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
L_801482F0:
    lwz 3, 0x240(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80148304
    subi 0, 3, 0x1
    stw 0, 0x240(29)
L_80148304:
    lwz 3, 0x244(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80148318
    subi 0, 3, 0x1
    stw 0, 0x244(29)
L_80148318:
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014832C
    subi 0, 3, 0x1
    stw 0, 0x248(29)
L_8014832C:
    lwz 3, 0x24c(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80148340
    subi 0, 3, 0x1
    stw 0, 0x24c(29)
L_80148340:
    lwz 3, 0x250(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80148354
    subi 0, 3, 0x1
    stw 0, 0x250(29)
L_80148354:
    lwz 3, 0x254(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80148368
    subi 0, 3, 0x1
    stw 0, 0x254(29)
L_80148368:
    lwz 0, 0x90(29)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8014837C
    cmpwi 0, 0x0
    .4byte 0x408203E0 # bne .L_80148758
L_8014837C:
    lwz 0, 0x254(29)
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_801483D0
    li 0, 0x12c
    mr 30, 29
    stw 0, 0x240(29)
    li 31, 0x0
    li 28, 0x0
    stw 0, 0x250(29)
L_801483A0:
    lwz 0, 0x7c0(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801483C0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x7c0(30)
    bl fn_800EC240
    stw 28, 0x7c0(30)
L_801483C0:
    addi 31, 31, 0x1
    addi 30, 30, 0x4
    cmpwi 31, 0x2
    .4byte 0x4180FFD4 # blt .L_801483A0
L_801483D0:
    mr 3, 29
    bl fn_80149FDC
    .4byte 0xC022A130 # lfs f1, lbl_8053D0D0@sda21(r0)
    li 28, 0x0
    .4byte 0xC002A134 # lfs f0, lbl_8053D0D4@sda21(r0)
    stfs 1, 0x60(29)
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
L_801483F4:
    mr 3, 29
    mr 7, 28
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x418000CC # blt .L_801484DC
    lfs 2, 0x50(1)
    addi 4, 1, 0x30
    lfs 1, 0x38(1)
    lfs 0, 0x58(1)
    fadds 6, 2, 1
    lfs 2, 0x54(1)
    fadds 4, 0, 1
    lfs 1, 0x3c(1)
    lfs 0, 0x5c(1)
    fadds 5, 2, 1
    fadds 3, 0, 1
    .4byte 0xC042A138 # lfs f2, lbl_8053D0D8@sda21(r0)
    fsubs 1, 6, 4
    stfs 6, 0x50(1)
    fsubs 0, 5, 3
    stfs 5, 0x54(1)
    fmadds 1, 2, 1, 4
    stfs 4, 0x58(1)
    fmadds 0, 2, 0, 3
    stfs 3, 0x5c(1)
    stfs 1, 0x30(1)
    stfs 0, 0x34(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801484DC
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801484DC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF10 # blt .L_801483F4
    mr 3, 29
    bl fn_801EF510
    lwz 0, 0x274(29)
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_80148510
    lwz 4, 0x114(29)
    mr 3, 29
    li 5, -0x1
    li 6, 0x2
    bl fn_801F2B7C
L_80148510:
    mr 3, 29
    li 4, 0x0
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820238 # beq .L_80148758
    li 0, 0x4
    stw 0, 0x25c(29)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x408100C8 # ble .L_80148600
    lwz 3, 0x270(29)
    addi 0, 3, 0x1
    stw 0, 0x270(29)
    lwz 0, 0x270(29)
    cmpwi 0, 0x14
    .4byte 0x408200B0 # bne .L_80148600
    lis 3, 0x19
    .4byte 0xC3A2A114 # lfs f29, lbl_8053D0B4@sda21(r0)
    .4byte 0xCB82A128 # lfd f28, lbl_8053D0C8@sda21(r0)
    addi 31, 3, 0x660d
    li 30, 0x0
    lis 28, 0x4330
    .4byte 0x48000074 # b .L_801485E0
L_80148570:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0x207c(1)
    addi 30, 30, 0x1
    lwz 0, 0xb4(4)
    stw 28, 0x2078(1)
    mullw 3, 0, 31
    lfd 0, 0x2078(1)
    fsubs 0, 0, 28
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x28(1)
    lfs 1, 0x28(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x2080(1)
    lwz 0, 0x2084(1)
    stw 0, 0x280(29)
    lwz 0, 0x280(29)
    clrlwi 0, 0, 30
    stw 0, 0x280(29)
L_801485E0:
    lwz 3, 0x280(29)
    lwz 0, 0x278(29)
    cmpw 3, 0
    .4byte 0x4082000C # bne .L_801485F8
    cmpwi 30, 0x64
    .4byte 0x4180FF7C # blt .L_80148570
L_801485F8:
    li 0, 0x15
    stw 0, 0x270(29)
L_80148600:
    li 30, 0x1
    addi 28, 29, 0xc
L_80148608:
    lfs 1, 0xc(29)
    addi 3, 28, 0x2c0
    .4byte 0xC042A114 # lfs f2, lbl_8053D0B4@sda21(r0)
    .4byte 0xC062A13C # lfs f3, lbl_8053D0DC@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x10(29)
    addi 3, 28, 0x2c4
    .4byte 0xC042A114 # lfs f2, lbl_8053D0B4@sda21(r0)
    .4byte 0xC062A13C # lfs f3, lbl_8053D0DC@sda21(r0)
    bl fn_801F71A4
    addi 30, 30, 0x1
    addi 28, 28, 0xc
    cmpwi 30, 0x7
    .4byte 0x4081FFCC # ble .L_80148608
    li 30, 0x0
    li 0, 0x12c
    stw 30, 0x23c(29)
    mr 28, 29
    stw 30, 0x238(29)
    stw 0, 0x240(29)
    stw 0, 0x250(29)
L_8014865C:
    lwz 3, 0x7c0(28)
    addi 4, 29, 0x314
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x2
    .4byte 0x4180FFDC # blt .L_8014865C
    lhz 3, 0x284(29)
    li 4, 0x0
    addi 0, 3, 0x1000
    sth 0, 0x284(29)
    lhz 0, 0x284(29)
    cmplwi 0, 0xf000
    .4byte 0x4181000C # bgt .L_801486A8
    cmplwi 0, 0x1000
    .4byte 0x41810008 # bgt .L_801486AC
L_801486A8:
    li 4, 0x0
L_801486AC:
    cmplwi 0, 0x1000
    .4byte 0x40810010 # ble .L_801486C0
    cmplwi 0, 0x3000
    .4byte 0x41810008 # bgt .L_801486C0
    li 4, 0x1
L_801486C0:
    cmplwi 0, 0x3000
    .4byte 0x40810010 # ble .L_801486D4
    cmplwi 0, 0x5000
    .4byte 0x41810008 # bgt .L_801486D4
    li 4, 0x2
L_801486D4:
    cmplwi 0, 0x5000
    .4byte 0x40810010 # ble .L_801486E8
    cmplwi 0, 0x7000
    .4byte 0x41810008 # bgt .L_801486E8
    li 4, 0x3
L_801486E8:
    cmplwi 0, 0x7000
    .4byte 0x40810010 # ble .L_801486FC
    cmplwi 0, 0x9000
    .4byte 0x41810008 # bgt .L_801486FC
    li 4, 0x4
L_801486FC:
    cmplwi 0, 0x9000
    .4byte 0x40810010 # ble .L_80148710
    cmplwi 0, 0xb000
    .4byte 0x41810008 # bgt .L_80148710
    li 4, 0x5
L_80148710:
    cmplwi 0, 0xb000
    .4byte 0x40810010 # ble .L_80148724
    cmplwi 0, 0xd000
    .4byte 0x41810008 # bgt .L_80148724
    li 4, 0x6
L_80148724:
    cmplwi 0, 0xd000
    .4byte 0x40810010 # ble .L_80148738
    cmplwi 0, 0xf000
    .4byte 0x41810008 # bgt .L_80148738
    li 4, 0x7
L_80148738:
    stw 4, 0x98(29)
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    lhz 0, 0x284(29)
    sth 0, 0x286(29)
    bl fn_801F2618
    .4byte 0x4800126C # b .L_801499C0
L_80148758:
    lwz 0, 0x230(29)
    cmplwi 0, 0x8
    .4byte 0x41811260 # bgt .L_801499C0
    lis 3, jumptable_8049F71C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049F71C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x838D8F78 # lwz r28, lbl_8053AB38@sda21(r0)
    bl SpatialRegistry_GetBase
    lis 4, 0x4447
    mr 5, 28
    addi 4, 4, 0x544c
    addi 6, 1, 0x1078
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0x1078
    .4byte 0x80AD8398 # lwz r5, lbl_80539F58@sda21(r0)
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810038 # ble .L_801487E4
L_801487B0:
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801487DC
    .4byte 0x41820020 # beq .L_801487DC
    lwz 6, 0x198(3)
    cmpw 5, 6
    .4byte 0x41820014 # beq .L_801487DC
    lwz 0, 0x90(3)
    cmplwi 0, 0x3
    .4byte 0x40820008 # bne .L_801487DC
    .4byte 0x90CD839C # stw r6, lbl_80539F5C@sda21(r0)
L_801487DC:
    addi 4, 4, 0x4
    .4byte 0x4200FFD0 # bdnz .L_801487B0
L_801487E4:
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x480011D4 # b .L_801499C0
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x418211C4 # beq .L_801499C0
    bl fn_8022ADE4
    li 3, 0x1
    li 0, 0x0
    .4byte 0x906D8F74 # stw r3, lbl_8053AB34@sda21(r0)
    stw 0, 0x26c(29)
    .4byte 0x838D8F78 # lwz r28, lbl_8053AB38@sda21(r0)
    bl SpatialRegistry_GetBase
    lis 4, 0x4447
    mr 5, 28
    addi 4, 4, 0x544c
    addi 6, 1, 0x78
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0x78
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810030 # ble .L_80148870
L_80148844:
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80148868
    .4byte 0x41820018 # beq .L_80148868
    lwz 0, 0x90(3)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_80148868
    lwz 0, 0x198(3)
    .4byte 0x900D8398 # stw r0, lbl_80539F58@sda21(r0)
L_80148868:
    addi 4, 4, 0x4
    .4byte 0x4200FFD8 # bdnz .L_80148844
L_80148870:
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801488BC
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(29)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(29)
    stfs 0, 0x800(4)
    lfs 0, 0x14(29)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801488BC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801488E0
    li 0, 0x1
    .4byte 0xC002A140 # lfs f0, lbl_8053D0E0@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801488E0:
    lwz 0, 0x26c(29)
    cmpwi 0, 0x12c
    .4byte 0x40810034 # ble .L_8014891C
    li 0, 0x0
    stw 0, 0x26c(29)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x3
    stw 0, 0x230(29)
L_8014891C:
    lwz 3, 0x26c(29)
    addi 0, 3, 0x1
    stw 0, 0x26c(29)
    lwz 0, 0x26c(29)
    cmpwi 0, 0x32
    .4byte 0x41801090 # blt .L_801499C0
    .4byte 0xC022A144 # lfs f1, lbl_8053D0E4@sda21(r0)
    addi 3, 29, 0x294
    .4byte 0xC042A138 # lfs f2, lbl_8053D0D8@sda21(r0)
    .4byte 0xC062A13C # lfs f3, lbl_8053D0DC@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x244(29)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80148974
    li 0, 0x9
    stw 0, 0x244(29)
    lwz 3, 0x25c(29)
    addi 0, 3, 0x1
    stw 0, 0x25c(29)
    lwz 0, 0x25c(29)
    clrlwi 0, 0, 30
    stw 0, 0x25c(29)
L_80148974:
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x4d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_801489BC
    li 0, 0x9
    stw 0, 0x234(29)
    lwz 3, 0x258(29)
    addi 0, 3, 0x1
    stw 0, 0x258(29)
    lwz 0, 0x258(29)
    cmpwi 0, 0x3
    .4byte 0x4081000C # ble .L_801489BC
    li 0, 0x0
    stw 0, 0x258(29)
L_801489BC:
    mr 3, 29
    bl fn_80149AEC
    cmpwi 3, 0x1
    .4byte 0x41820FF8 # beq .L_801499C0
    .4byte 0xC042A130 # lfs f2, lbl_8053D0D0@sda21(r0)
    lis 4, 0x804
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002A134 # lfs f0, lbl_8053D0D4@sda21(r0)
    stfs 2, 0x60(29)
    addi 7, 3, lbl_8052EBC0@l
    addi 0, 4, 0x4
    .4byte 0xC022A148 # lfs f1, lbl_8053D0E8@sda21(r0)
    stfs 2, 0x64(29)
    addi 3, 29, 0x284
    li 5, 0x1
    li 6, 0x200
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
    stw 0, 0xb0(29)
    lwz 9, 0x260(29)
    lhz 4, 0x286(29)
    rlwinm 8, 9, 30, 18, 28
    addi 0, 9, 0x500
    lfsx 0, 7, 8
    addi 4, 4, 0x500
    fmuls 0, 1, 0
    stw 0, 0x260(29)
    fctiwz 0, 0
    stfd 0, 0x2080(1)
    lwz 0, 0x2084(1)
    subf 4, 0, 4
    bl fn_801F714C
    lhz 0, 0x284(29)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0x290(29)
    rlwinm 0, 0, 30, 18, 28
    li 4, 0x0
    lfsx 0, 3, 0
    addi 31, 3, 0x4
    fmuls 0, 1, 0
    stfs 0, 0x2a0(29)
    lhz 0, 0x284(29)
    lfs 0, 0x290(29)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 31, 0
    fmuls 0, 0, 1
    stfs 0, 0x2a4(29)
    lhz 0, 0x284(29)
    cmplwi 0, 0xf000
    .4byte 0x4181000C # bgt .L_80148A90
    cmplwi 0, 0x1000
    .4byte 0x41810008 # bgt .L_80148A94
L_80148A90:
    li 4, 0x0
L_80148A94:
    cmplwi 0, 0x1000
    .4byte 0x40810010 # ble .L_80148AA8
    cmplwi 0, 0x3000
    .4byte 0x41810008 # bgt .L_80148AA8
    li 4, 0x1
L_80148AA8:
    cmplwi 0, 0x3000
    .4byte 0x40810010 # ble .L_80148ABC
    cmplwi 0, 0x5000
    .4byte 0x41810008 # bgt .L_80148ABC
    li 4, 0x2
L_80148ABC:
    cmplwi 0, 0x5000
    .4byte 0x40810010 # ble .L_80148AD0
    cmplwi 0, 0x7000
    .4byte 0x41810008 # bgt .L_80148AD0
    li 4, 0x3
L_80148AD0:
    cmplwi 0, 0x7000
    .4byte 0x40810010 # ble .L_80148AE4
    cmplwi 0, 0x9000
    .4byte 0x41810008 # bgt .L_80148AE4
    li 4, 0x4
L_80148AE4:
    cmplwi 0, 0x9000
    .4byte 0x40810010 # ble .L_80148AF8
    cmplwi 0, 0xb000
    .4byte 0x41810008 # bgt .L_80148AF8
    li 4, 0x5
L_80148AF8:
    cmplwi 0, 0xb000
    .4byte 0x40810010 # ble .L_80148B0C
    cmplwi 0, 0xd000
    .4byte 0x41810008 # bgt .L_80148B0C
    li 4, 0x6
L_80148B0C:
    cmplwi 0, 0xd000
    .4byte 0x40810010 # ble .L_80148B20
    cmplwi 0, 0xf000
    .4byte 0x41810008 # bgt .L_80148B20
    li 4, 0x7
L_80148B20:
    stw 4, 0x98(29)
    addi 3, 29, 0x3c
    lfs 1, 0x2a0(29)
    lfs 2, 0x288(29)
    lfs 3, 0x28c(29)
    bl fn_801F71A4
    lfs 1, 0x2a4(29)
    addi 3, 29, 0x40
    lfs 2, 0x288(29)
    lfs 3, 0x28c(29)
    bl fn_801F71A4
    psq_l 1, 0xc(29), 0, 0
    mr 3, 29
    psq_l 0, 0x3c(29), 0, 0
    li 4, 0x0
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182022C # beq .L_80148DAC
    lhz 3, 0x284(29)
    li 4, 0x0
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x284(29)
    lhz 0, 0x284(29)
    cmplwi 0, 0xf000
    .4byte 0x4181000C # bgt .L_80148BAC
    cmplwi 0, 0x1000
    .4byte 0x41810008 # bgt .L_80148BB0
L_80148BAC:
    li 4, 0x0
L_80148BB0:
    cmplwi 0, 0x1000
    .4byte 0x40810010 # ble .L_80148BC4
    cmplwi 0, 0x3000
    .4byte 0x41810008 # bgt .L_80148BC4
    li 4, 0x1
L_80148BC4:
    cmplwi 0, 0x3000
    .4byte 0x40810010 # ble .L_80148BD8
    cmplwi 0, 0x5000
    .4byte 0x41810008 # bgt .L_80148BD8
    li 4, 0x2
L_80148BD8:
    cmplwi 0, 0x5000
    .4byte 0x40810010 # ble .L_80148BEC
    cmplwi 0, 0x7000
    .4byte 0x41810008 # bgt .L_80148BEC
    li 4, 0x3
L_80148BEC:
    cmplwi 0, 0x7000
    .4byte 0x40810010 # ble .L_80148C00
    cmplwi 0, 0x9000
    .4byte 0x41810008 # bgt .L_80148C00
    li 4, 0x4
L_80148C00:
    cmplwi 0, 0x9000
    .4byte 0x40810010 # ble .L_80148C14
    cmplwi 0, 0xb000
    .4byte 0x41810008 # bgt .L_80148C14
    li 4, 0x5
L_80148C14:
    cmplwi 0, 0xb000
    .4byte 0x40810010 # ble .L_80148C28
    cmplwi 0, 0xd000
    .4byte 0x41810008 # bgt .L_80148C28
    li 4, 0x6
L_80148C28:
    cmplwi 0, 0xd000
    .4byte 0x40810010 # ble .L_80148C3C
    cmplwi 0, 0xf000
    .4byte 0x41810008 # bgt .L_80148C3C
    li 4, 0x7
L_80148C3C:
    stw 4, 0x98(29)
    lwz 3, 0x29c(29)
    lwz 0, 0x98(29)
    cmpw 3, 0
    .4byte 0x408200D8 # bne .L_80148D24
    lwz 0, 0x90(29)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80148C6C
    lhz 3, 0x284(29)
    addi 0, 3, 0x4000
    sth 0, 0x284(29)
    .4byte 0x48000010 # b .L_80148C78
L_80148C6C:
    lhz 3, 0x284(29)
    subi 0, 3, 0x4000
    sth 0, 0x284(29)
L_80148C78:
    lhz 3, 0x284(29)
    li 0, 0x0
    cmplwi 3, 0xf000
    .4byte 0x4181000C # bgt .L_80148C90
    cmplwi 3, 0x1000
    .4byte 0x41810008 # bgt .L_80148C94
L_80148C90:
    li 0, 0x0
L_80148C94:
    cmplwi 3, 0x1000
    .4byte 0x40810010 # ble .L_80148CA8
    cmplwi 3, 0x3000
    .4byte 0x41810008 # bgt .L_80148CA8
    li 0, 0x1
L_80148CA8:
    cmplwi 3, 0x3000
    .4byte 0x40810010 # ble .L_80148CBC
    cmplwi 3, 0x5000
    .4byte 0x41810008 # bgt .L_80148CBC
    li 0, 0x2
L_80148CBC:
    cmplwi 3, 0x5000
    .4byte 0x40810010 # ble .L_80148CD0
    cmplwi 3, 0x7000
    .4byte 0x41810008 # bgt .L_80148CD0
    li 0, 0x3
L_80148CD0:
    cmplwi 3, 0x7000
    .4byte 0x40810010 # ble .L_80148CE4
    cmplwi 3, 0x9000
    .4byte 0x41810008 # bgt .L_80148CE4
    li 0, 0x4
L_80148CE4:
    cmplwi 3, 0x9000
    .4byte 0x40810010 # ble .L_80148CF8
    cmplwi 3, 0xb000
    .4byte 0x41810008 # bgt .L_80148CF8
    li 0, 0x5
L_80148CF8:
    cmplwi 3, 0xb000
    .4byte 0x40810010 # ble .L_80148D0C
    cmplwi 3, 0xd000
    .4byte 0x41810008 # bgt .L_80148D0C
    li 0, 0x6
L_80148D0C:
    cmplwi 3, 0xd000
    .4byte 0x40810010 # ble .L_80148D20
    cmplwi 3, 0xf000
    .4byte 0x41810008 # bgt .L_80148D20
    li 0, 0x7
L_80148D20:
    stw 0, 0x98(29)
L_80148D24:
    lhz 5, 0x284(29)
    lis 3, lbl_8052EBC0@ha
    addi 6, 3, lbl_8052EBC0@l
    lis 4, 0x4
    sth 5, 0x286(29)
    li 0, 0x0
    mr 3, 29
    addi 4, 4, 0xb
    lhz 7, 0x284(29)
    li 5, 0x0
    lfs 1, 0x290(29)
    rlwinm 7, 7, 30, 18, 28
    lfsx 0, 6, 7
    fmuls 0, 1, 0
    stfs 0, 0x2a0(29)
    lhz 6, 0x284(29)
    lfs 1, 0x290(29)
    rlwinm 6, 6, 30, 18, 28
    lfsx 0, 31, 6
    fmuls 0, 1, 0
    stfs 0, 0x2a4(29)
    lfs 0, 0x2a0(29)
    stfs 0, 0x3c(29)
    lfs 0, 0x2a4(29)
    stfs 0, 0x40(29)
    lfs 0, 0x2a8(29)
    stfs 0, 0x44(29)
    lwz 6, 0x298(29)
    stw 6, 0x29c(29)
    lwz 6, 0x98(29)
    stw 6, 0x298(29)
    stw 0, 0x260(29)
    bl fn_801F0E34
    .4byte 0x480001D0 # b .L_80148F78
L_80148DAC:
    li 3, 0x0
    li 0, -0x1
    sth 3, 0x8(1)
    mr 3, 29
    addi 5, 1, 0x8
    addi 6, 1, 0x2c
    stw 0, 0x2c(1)
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    lwz 4, 0x198(29)
    lwz 9, 0x280(29)
    bl fn_801EEC98
    lwz 0, 0x2c(1)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_80148E3C
    lwz 3, 0x280(29)
    cmpwi 3, 0x0
    .4byte 0x41800048 # blt .L_80148E3C
    cmpwi 3, 0x4
    .4byte 0x40800040 # bge .L_80148E3C
    bl fn_8023E724
    lwz 4, 0x4(29)
    mr 6, 3
    mr 3, 29
    addi 5, 29, 0xc
    addi 7, 29, 0x80
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80148E3C
    lhz 0, 0x8(1)
    sth 0, 0x286(29)
    .4byte 0x48000140 # b .L_80148F78
L_80148E3C:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x40820134 # bne .L_80148F78
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081007C # ble .L_80148ED0
    li 30, 0x0
L_80148E5C:
    lwz 0, 0x280(29)
    cmpw 30, 0
    .4byte 0x41820060 # beq .L_80148EC4
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_80148EC4
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_80148EC4
    lwz 28, 0x4(29)
    mr 3, 30
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x4082002C # bne .L_80148EC4
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_80148EC4
    mr 3, 30
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80148EC4
    stw 30, 0x280(29)
    .4byte 0x48000010 # b .L_80148ED0
L_80148EC4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF90 # blt .L_80148E5C
L_80148ED0:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC062A114 # lfs f3, lbl_8053D0B4@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC082A14C # lfs f4, lbl_8053D0EC@sda21(r0)
    mullw 3, 0, 4
    .4byte 0xC042A154 # lfs f2, lbl_8053D0F4@sda21(r0)
    .4byte 0xC002A150 # lfs f0, lbl_8053D0F0@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x24(1)
    lfs 1, 0x24(1)
    fsubs 1, 1, 3
    fmadds 1, 4, 1, 4
    fctiwz 1, 1
    stfd 1, 0x2080(1)
    lwz 0, 0x2084(1)
    stw 0, 0x23c(29)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lhz 3, 0x286(29)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    lfs 1, 0x20(1)
    fsubs 1, 1, 3
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x2078(1)
    lwz 0, 0x207c(1)
    add 0, 3, 0
    sth 0, 0x286(29)
L_80148F78:
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_80148F90
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80148F94
L_80148F90:
    addi 3, 3, 0xdc
L_80148F94:
    lwz 5, 0x0(3)
    lwz 4, 0x4(3)
    lwz 0, 0x8(3)
    lwz 3, 0xc(3)
    lfs 1, 0xc(29)
    stw 5, 0x40(1)
    stfs 1, 0x6c(1)
    lfs 0, 0x40(1)
    stw 4, 0x44(1)
    lfs 2, 0x10(29)
    fsubs 1, 1, 0
    lfs 0, 0x44(1)
    stfs 2, 0x70(1)
    fsubs 0, 2, 0
    lfs 2, 0x14(29)
    stw 0, 0x48(1)
    stfs 2, 0x74(1)
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    lwz 0, 0x90(29)
    stw 3, 0x4c(1)
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_80149034
    .4byte 0x838D8398 # lwz r28, lbl_80539F58@sda21(r0)
    cmpwi 28, 0x0
    .4byte 0x4180003C # blt .L_80149034
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80149034
    psq_l 1, 0x6c(1), 0, 0
    lfs 0, 0x74(1)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80149034
    li 0, 0x4
    stw 0, 0x230(29)
L_80149034:
    lwz 0, 0x90(29)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_80149084
    .4byte 0x838D839C # lwz r28, lbl_80539F5C@sda21(r0)
    cmpwi 28, 0x0
    .4byte 0x4180003C # blt .L_80149084
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_80149084
    psq_l 1, 0x6c(1), 0, 0
    lfs 0, 0x74(1)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80149084
    li 0, 0x4
    stw 0, 0x230(29)
L_80149084:
    mr 3, 29
    li 4, 0x0
    bl fn_8014A2CC
    .4byte 0x48000930 # b .L_801499C0
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    li 3, 0xc8
    .4byte 0xC002A13C # lfs f0, lbl_8053D0DC@sda21(r0)
    li 0, 0x5
    stfs 1, 0x2a8(29)
    stfs 1, 0x2a4(29)
    stfs 1, 0x2a0(29)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    stfs 0, 0x44(29)
    psq_l 1, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    stw 3, 0x248(29)
    stw 0, 0x230(29)
    .4byte 0x480008D8 # b .L_801499C0
    lfs 1, 0x14(29)
    .4byte 0xC002A110 # lfs f0, lbl_8053D0B0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_8014911C
    stfs 0, 0x14(29)
    mr 3, 29
    stfs 0, 0x44(29)
    bl fn_80149AEC
    cmpwi 3, 0x1
    .4byte 0x40820018 # bne .L_8014912C
    .4byte 0x480008A8 # b .L_801499C0
L_8014911C:
    lfs 1, 0x44(29)
    .4byte 0xC002A114 # lfs f0, lbl_8053D0B4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
L_8014912C:
    psq_l 2, 0xc(29), 0, 0
    addi 3, 29, 0x294
    psq_l 0, 0x3c(29), 0, 0
    .4byte 0xC022A110 # lfs f1, lbl_8053D0B0@sda21(r0)
    ps_add 0, 2, 0
    .4byte 0xC042A138 # lfs f2, lbl_8053D0D8@sda21(r0)
    .4byte 0xC062A13C # lfs f3, lbl_8053D0DC@sda21(r0)
    psq_st 0, 0xc(29), 0, 0
    psq_l 4, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 4, 0
    psq_st 0, 0x14(29), 1, 0
    bl fn_801F71A4
    mr 3, 29
    li 4, 0x1
    bl fn_8014A2CC
    lwz 0, 0x248(29)
    cmpwi 0, 0x0
    .4byte 0x4082084C # bne .L_801499C0
    lwz 0, 0x90(29)
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_801491B4
    .4byte 0x838D8398 # lwz r28, lbl_80539F58@sda21(r0)
    cmpwi 28, 0x0
    .4byte 0x41800028 # blt .L_801491B4
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801491B4
    li 4, 0x64
    li 0, 0x0
    stw 4, 0x248(3)
    sth 0, 0x94(3)
L_801491B4:
    lwz 0, 0x90(29)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_801491F0
    .4byte 0x838D839C # lwz r28, lbl_80539F5C@sda21(r0)
    cmpwi 28, 0x0
    .4byte 0x41800028 # blt .L_801491F0
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801491F0
    li 4, 0x64
    li 0, 0x0
    stw 4, 0x248(3)
    sth 0, 0x94(3)
L_801491F0:
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x480007C8 # b .L_801499C0
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80149224
    li 0, 0x0
    li 3, 0x8
    stw 0, 0x238(29)
    li 0, 0x7
    stw 3, 0x260(29)
    stw 0, 0x230(29)
    .4byte 0x480007A0 # b .L_801499C0
L_80149224:
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x40820794 # bne .L_801499C0
    lwz 0, 0x264(29)
    lis 3, 0x19
    addi 11, 3, 0x660d
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    mulli 3, 0, 0xc
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    .4byte 0xC062A15C # lfs f3, lbl_8053D0FC@sda21(r0)
    addi 4, 1, 0x6c
    .4byte 0xC082A158 # lfs f4, lbl_8053D0F8@sda21(r0)
    li 5, 0x68
    addi 3, 3, 0x2c0
    li 6, 0x2
    add 3, 29, 3
    li 7, 0x0
    lfs 0, 0x0(3)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x6c(1)
    lfs 0, 0x4(3)
    stfs 0, 0x70(1)
    lfs 0, 0x8(3)
    stfs 0, 0x74(1)
    lwz 0, 0xb4(12)
    mullw 3, 0, 11
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 2, 0x6c(1)
    srwi 0, 0, 9
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 0, 0x1c(1)
    fsubs 0, 0, 1
    fmuls 0, 3, 0
    fsubs 0, 4, 0
    fadds 0, 2, 0
    stfs 0, 0x6c(1)
    lwz 0, 0xb4(12)
    mullw 3, 0, 11
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(12)
    lwz 0, 0xb4(12)
    lfs 2, 0x70(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 3, 0
    fsubs 0, 4, 0
    fadds 0, 2, 0
    stfs 0, 0x70(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x6c
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    li 5, 0x69
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x260(29)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_80149384
    lwz 3, 0x264(29)
    addi 0, 3, 0x1
    stw 0, 0x264(29)
    lwz 0, 0x264(29)
    cmpwi 0, 0x7
    .4byte 0x41800030 # blt .L_801493A4
    li 0, 0x1
    stw 0, 0x260(29)
    .4byte 0x48000024 # b .L_801493A4
L_80149384:
    lwz 3, 0x264(29)
    subi 0, 3, 0x1
    stw 0, 0x264(29)
    lwz 0, 0x264(29)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_801493A4
    li 0, 0x0
    stw 0, 0x260(29)
L_801493A4:
    li 0, 0x8
    stw 0, 0x238(29)
    .4byte 0x48000614 # b .L_801499C0
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x40820608 # bne .L_801499C0
    li 0, 0x14
    stw 0, 0x238(29)
    lwz 3, 0x260(29)
    subi 0, 3, 0x1
    stw 0, 0x260(29)
    lwz 4, 0x260(29)
    mulli 3, 4, 0xc
    cmpwi 4, 0x7
    addi 3, 3, 0x2c0
    add 3, 29, 3
    lfs 0, 0x0(3)
    stfs 0, 0x6c(1)
    lfs 0, 0x4(3)
    stfs 0, 0x70(1)
    lfs 0, 0x8(3)
    stfs 0, 0x74(1)
    .4byte 0x41820014 # beq .L_80149410
    .4byte 0x408000A4 # bge .L_801494A4
    cmpwi 4, 0x0
    .4byte 0x418201A8 # beq .L_801495B0
    .4byte 0x48000098 # b .L_801494A4
L_80149410:
    lwz 3, 0x4(29)
    addi 4, 1, 0x6c
    .4byte 0xC022A160 # lfs f1, lbl_8053D100@sda21(r0)
    li 5, 0x119
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x6c
    .4byte 0xC022A160 # lfs f1, lbl_8053D100@sda21(r0)
    li 5, 0x11a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x6c
    .4byte 0xC022A160 # lfs f1, lbl_8053D100@sda21(r0)
    li 5, 0x11b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x4
    li 28, 0xa
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000304 # b .L_801497A4
L_801494A4:
    xoris 3, 4, 0x8000
    lis 0, 0x4330
    stw 3, 0x2084(1)
    subfic 28, 4, 0x6
    .4byte 0xC842A128 # lfd f2, lbl_8053D0C8@sda21(r0)
    mr 7, 28
    stw 0, 0x2080(1)
    addi 4, 1, 0x6c
    .4byte 0xC062A11C # lfs f3, lbl_8053D0BC@sda21(r0)
    li 5, 0x119
    lfd 1, 0x2080(1)
    li 6, 0x0
    .4byte 0xC002A114 # lfs f0, lbl_8053D0B4@sda21(r0)
    li 8, 0x0
    fsubs 1, 1, 2
    lwz 3, 0x4(29)
    li 9, 0x0
    li 10, 0x1
    fnmsubs 1, 3, 1, 0
    bl fn_8013CC50
    lwz 3, 0x260(29)
    lis 0, 0x4330
    stw 0, 0x2078(1)
    mr 7, 28
    xoris 0, 3, 0x8000
    .4byte 0xC842A128 # lfd f2, lbl_8053D0C8@sda21(r0)
    stw 0, 0x207c(1)
    addi 4, 1, 0x6c
    .4byte 0xC062A11C # lfs f3, lbl_8053D0BC@sda21(r0)
    li 5, 0x11a
    lfd 1, 0x2078(1)
    li 6, 0x0
    .4byte 0xC002A114 # lfs f0, lbl_8053D0B4@sda21(r0)
    li 8, 0x0
    fsubs 1, 1, 2
    lwz 3, 0x4(29)
    li 9, 0x0
    li 10, 0x1
    fnmsubs 1, 3, 1, 0
    bl fn_8013CC50
    lwz 3, 0x260(29)
    lis 0, 0x4330
    stw 0, 0x2088(1)
    mr 7, 28
    xoris 0, 3, 0x8000
    .4byte 0xC842A128 # lfd f2, lbl_8053D0C8@sda21(r0)
    stw 0, 0x208c(1)
    addi 4, 1, 0x6c
    .4byte 0xC062A11C # lfs f3, lbl_8053D0BC@sda21(r0)
    li 5, 0x11b
    lfd 1, 0x2088(1)
    li 6, 0x0
    .4byte 0xC002A114 # lfs f0, lbl_8053D0B4@sda21(r0)
    li 8, 0x0
    fsubs 1, 1, 2
    lwz 3, 0x4(29)
    li 9, 0x0
    li 10, 0x1
    fnmsubs 1, 3, 1, 0
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x4
    li 28, 0x5
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001F8 # b .L_801497A4
L_801495B0:
    lwz 3, 0x4(29)
    addi 4, 1, 0x6c
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    li 5, 0x119
    li 6, 0x0
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x6c
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    li 5, 0x11a
    li 6, 0x0
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 1, 0x6c
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    li 5, 0x11b
    li 6, 0x0
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 3, 0x19
    .4byte 0xC382A15C # lfs f28, lbl_8053D0FC@sda21(r0)
    .4byte 0xC3A2A114 # lfs f29, lbl_8053D0B4@sda21(r0)
    addi 31, 3, 0x660d
    .4byte 0xC3C2A158 # lfs f30, lbl_8053D0F8@sda21(r0)
    li 30, 0x0
    .4byte 0xC3E2A164 # lfs f31, lbl_8053D104@sda21(r0)
    lis 28, 0x4841
    .4byte 0x480000C0 # b .L_80149708
L_8014964C:
    lfs 0, 0xc(29)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    stfs 0, 0x6c(1)
    lfs 0, 0x10(29)
    stfs 0, 0x70(1)
    lfs 0, 0x14(29)
    stfs 0, 0x74(1)
    lwz 0, 0xb4(4)
    mullw 3, 0, 31
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 1, 0x6c(1)
    srwi 0, 0, 9
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 29
    fnmsubs 0, 28, 0, 30
    fadds 0, 1, 0
    stfs 0, 0x6c(1)
    lwz 0, 0xb4(4)
    mullw 3, 0, 31
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 1, 0x70(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 29
    fnmsubs 0, 28, 0, 30
    fadds 0, 1, 0
    stfs 0, 0x70(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(29)
    addi 4, 28, 0x5254
    addi 6, 1, 0x6c
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 30, 30, 0x1
L_80149708:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(4)
    mullw 3, 0, 31
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 29
    fmuls 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x2088(1)
    lwz 3, 0x208c(1)
    addi 0, 3, 0x1
    cmpw 30, 0
    .4byte 0x4180FEFC # blt .L_8014964C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x806D8F70 # lwz r3, lbl_8053AB30@sda21(r0)
    subic. 0, 3, 0x1
    .4byte 0x900D8F70 # stw r0, lbl_8053AB30@sda21(r0)
    .4byte 0x40820014 # bne .L_80149784
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    bl fn_8022ADCC
L_80149784:
    li 0, 0x0
    lis 4, 0x4
    stb 0, 0x11c(29)
    mr 3, 29
    addi 4, 4, 0x6
    li 28, 0x1e
    li 5, 0x0
    bl fn_801F0E34
L_801497A4:
    bl SpatialRegistry_GetBase
    lwz 0, 0x260(29)
    lis 4, 0x474f
    lwz 5, 0x4(29)
    mr 7, 28
    mulli 6, 0, 0xc
    addi 4, 4, 0x4c44
    li 8, -0x1
    li 9, -0x1
    addi 6, 6, 0x2c0
    add 6, 29, 6
    bl fn_801F9484
    lwz 28, 0x260(29)
    lis 3, lbl_8049F678@ha
    addi 3, 3, lbl_8049F678@l
    slwi 0, 28, 2
    lwzx 3, 3, 0
    cmpwi 3, -0x1
    .4byte 0x41820044 # beq .L_80149830
    .4byte 0x800D8F70 # lwz r0, lbl_8053AB30@sda21(r0)
    mr 30, 3
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8014980C
    cmplwi 3, 0x4
    .4byte 0x40820008 # bne .L_8014980C
    li 30, 0x3
L_8014980C:
    bl SpatialRegistry_GetBase
    mulli 6, 28, 0xc
    lis 4, 0x5255
    lwz 5, 0x4(29)
    mr 7, 30
    addi 4, 4, 0x5059
    addi 6, 6, 0x2c0
    add 6, 29, 6
    bl fn_801F8544
L_80149830:
    lwz 0, 0x260(29)
    lfs 0, 0xc(29)
    mulli 3, 0, 0xc
    addi 3, 3, 0x2c0
    add 3, 29, 3
    stfs 0, 0x0(3)
    lfs 0, 0x10(29)
    stfs 0, 0x4(3)
    lfs 0, 0x14(29)
    stfs 0, 0x8(3)
    .4byte 0x48000168 # b .L_801499C0
    lwz 0, 0x248(29)
    cmpwi 0, 0x0
    .4byte 0x4082015C # bne .L_801499C0
    li 0, 0x300
    addi 4, 1, 0x50
    stw 0, 0xb0(29)
    addi 5, 1, 0x38
    lfs 1, 0x50(1)
    lfs 4, 0x38(1)
    lfs 0, 0x58(1)
    fadds 3, 1, 4
    lfs 2, 0x54(1)
    lfs 5, 0x3c(1)
    fadds 1, 0, 4
    lfs 0, 0x5c(1)
    fadds 2, 2, 5
    fadds 0, 0, 5
    stfs 3, 0x50(1)
    stfs 2, 0x54(1)
    stfs 1, 0x58(1)
    stfs 0, 0x5c(1)
    lwz 3, 0x198(29)
    bl Saya_ForceState3
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_801498C8
    li 0, 0x1
    sth 0, 0x94(29)
L_801498C8:
    li 0, 0x0
    stw 0, 0xb0(29)
    lwz 0, 0x90(29)
    cmpwi 0, 0x2
    .4byte 0x40820070 # bne .L_80149948
    .4byte 0x800D8398 # lwz r0, lbl_80539F58@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40800064 # bge .L_80149948
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081004C # ble .L_80149940
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    lwz 5, 0x4(29)
    addi 4, 4, 0x4c44
    addi 6, 29, 0xc
    li 7, 0x1e
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(29)
    addi 4, 4, 0x5059
    addi 6, 29, 0xc
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80149940:
    li 0, 0x0
    stb 0, 0x11c(29)
L_80149948:
    lwz 0, 0x90(29)
    cmpwi 0, 0x3
    .4byte 0x40820070 # bne .L_801499C0
    .4byte 0x800D839C # lwz r0, lbl_80539F5C@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40800064 # bge .L_801499C0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081004C # ble .L_801499B8
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    lwz 5, 0x4(29)
    addi 4, 4, 0x4c44
    addi 6, 29, 0xc
    li 7, 0x1e
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(29)
    addi 4, 4, 0x5059
    addi 6, 29, 0xc
    li 7, 0x5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_801499B8:
    li 0, 0x0
    stb 0, 0x11c(29)
L_801499C0:
    li 0, 0x20d8
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x20d0(1)
    li 0, 0x20c8
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x20c0(1)
    li 0, 0x20b8
    psq_lx 29, 1, 0, 0, 0
    lfd 29, 0x20b0(1)
    li 0, 0x20a8
    psq_lx 28, 1, 0, 0, 0
    lfd 28, 0x20a0(1)
    lwz 31, 0x209c(1)
    lwz 30, 0x2098(1)
    lwz 29, 0x2094(1)
    lwz 0, 0x20e4(1)
    lwz 28, 0x2090(1)
    mtlr 0
    addi 1, 1, 0x20e0
    blr

fn_80149A10:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x41820094 # beq .L_80149AC8
    lis 3, lbl_8049F6C8@ha
    mr 31, 28
    addi 0, 3, lbl_8049F6C8@l
    li 30, 0x0
    stw 0, 0x0(28)
L_80149A4C:
    lwz 3, 0x798(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0xa
    .4byte 0x4180FFEC # blt .L_80149A4C
    li 30, 0x0
    mr 31, 28
L_80149A6C:
    lwz 3, 0x7c0(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x2
    .4byte 0x4180FFEC # blt .L_80149A6C
    lwz 0, 0x90(28)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80149A98
    li 0, -0x1
    .4byte 0x900D8398 # stw r0, lbl_80539F58@sda21(r0)
L_80149A98:
    lwz 0, 0x90(28)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80149AAC
    li 0, -0x1
    .4byte 0x900D839C # stw r0, lbl_80539F5C@sda21(r0)
L_80149AAC:
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_80149AC8
    mr 3, 28
    bl dtor_80084580
L_80149AC8:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80149AEC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 31, 3
    li 29, 0x0
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80149B4C
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80149B4C
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80149B54
L_80149B4C:
    li 3, 0x0
    .4byte 0x48000454 # b .L_80149FA4
L_80149B54:
    lfs 31, 0xc(31)
    lis 0, 0x804
    lfs 30, 0x10(31)
    li 28, 0x0
    lfs 29, 0x14(31)
    .4byte 0xC022A168 # lfs f1, lbl_8053D108@sda21(r0)
    .4byte 0xC002A158 # lfs f0, lbl_8053D0F8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x314(31)
    stfs 0, 0xc(31)
    lfs 0, 0x318(31)
    stfs 0, 0x10(31)
    lfs 0, 0x31c(31)
    stfs 0, 0x14(31)
    stw 0, 0xb0(31)
L_80149B9C:
    mr 3, 31
    mr 7, 28
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_80149C0C
    lwz 0, 0x278(31)
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80149BD8
    bl fn_8022EA0C
    lwz 0, 0x278(31)
    cmpw 0, 3
    .4byte 0x40820038 # bne .L_80149C0C
L_80149BD8:
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80149C0C
    lwz 0, 0x108(31)
    cmpwi 0, 0x2710
    .4byte 0x4182001C # beq .L_80149C0C
    li 0, 0x0
    .4byte 0xC002A110 # lfs f0, lbl_8053D0B0@sda21(r0)
    stw 0, 0x270(31)
    li 29, 0x1
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_80149C0C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF88 # blt .L_80149B9C
    stfs 31, 0xc(31)
    clrlwi. 0, 29, 24
    stfs 30, 0x10(31)
    stfs 29, 0x14(31)
    .4byte 0x4082000C # bne .L_80149C34
    li 3, 0x0
    .4byte 0x48000374 # b .L_80149FA4
L_80149C34:
    li 30, 0x0
    .4byte 0xC002A110 # lfs f0, lbl_8053D0B0@sda21(r0)
    stw 30, 0x260(31)
    mr 29, 31
    li 28, 0x0
    stw 30, 0x264(31)
    stfs 0, 0x2a8(31)
    stfs 0, 0x2a4(31)
    stfs 0, 0x2a0(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_80149C64:
    lwz 0, 0x7c0(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80149C84
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x7c0(29)
    bl fn_800EC240
    stw 30, 0x7c0(29)
L_80149C84:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FFD4 # blt .L_80149C64
    lwz 3, 0x274(31)
    subi 0, 3, 0x1
    stw 0, 0x274(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x41810144 # bgt .L_80149DEC
    li 0, 0x0
    stw 0, 0xd8(31)
    stw 0, 0xdc(31)
    lwz 0, 0x90(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80149CCC
    li 0, -0x1
    .4byte 0x900D8398 # stw r0, lbl_80539F58@sda21(r0)
L_80149CCC:
    lwz 0, 0x90(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80149CE0
    li 0, -0x1
    .4byte 0x900D839C # stw r0, lbl_80539F5C@sda21(r0)
L_80149CE0:
    li 7, 0x0
    li 4, 0xa8
    stw 7, 0x234(31)
    li 0, 0x2
    mr 6, 7
    mr 5, 31
    stw 7, 0x238(31)
    li 3, 0x1
    stw 7, 0x23c(31)
    stw 7, 0x240(31)
    stw 7, 0x244(31)
    stw 7, 0x248(31)
    stw 7, 0x24c(31)
    stw 7, 0x250(31)
    stw 7, 0x254(31)
    stw 4, 0x23c(31)
    mtctr 0
L_80149D24:
    lwz 4, 0x798(5)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80149D44
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
    stw 7, 0x798(5)
L_80149D44:
    lwz 4, 0x79c(5)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80149D64
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
    stw 7, 0x79c(5)
L_80149D64:
    lwz 4, 0x7a0(5)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80149D84
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
    stw 7, 0x7a0(5)
L_80149D84:
    lwz 4, 0x7a4(5)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80149DA4
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
    stw 7, 0x7a4(5)
L_80149DA4:
    lwz 4, 0x7a8(5)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80149DC4
    lwz 0, 0xf4(4)
    ori 0, 0, 0x1
    stw 0, 0xf4(4)
    stw 3, 0x24(4)
    stw 7, 0x7a8(5)
L_80149DC4:
    addi 5, 5, 0x14
    addi 6, 6, 0x4
    .4byte 0x4200FF58 # bdnz .L_80149D24
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xa8
    li 5, 0x0
    bl fn_80134DE4
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x480001B8 # b .L_80149FA0
L_80149DEC:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80149DFC
    .4byte 0xC002A16C # lfs f0, lbl_8053D10C@sda21(r0)
    stfs 0, 0x290(31)
L_80149DFC:
    li 0, 0x4
    stw 0, 0x25c(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x2
    .4byte 0x408200AC # bne .L_80149EB8
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x40820088 # bne .L_80149EA0
    bl SpatialRegistry_GetBase
    lis 4, 0x4447
    lwz 5, 0x4(31)
    addi 4, 4, 0x544c
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x83AD8398 # lwz r29, lbl_80539F58@sda21(r0)
    cmpwi 29, 0x0
    .4byte 0x41800040 # blt .L_80149E88
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x4182002C # beq .L_80149E88
    bl SpatialRegistry_GetBase
    lis 4, 0x4447
    lwz 5, 0x4(30)
    addi 4, 4, 0x544c
    addi 6, 30, 0xc
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x906D839C # stw r3, lbl_80539F5C@sda21(r0)
L_80149E88:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x23
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000030 # b .L_80149ECC
L_80149EA0:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_80149ECC
L_80149EB8:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
L_80149ECC:
    li 0, 0xa
    mr 3, 31
    mtctr 0
L_80149ED8:
    lfs 0, 0xc(31)
    stfs 0, 0x3d8(3)
    lfs 0, 0x10(31)
    stfs 0, 0x3dc(3)
    lfs 0, 0x14(31)
    stfs 0, 0x3e0(3)
    lfs 0, 0xc(31)
    stfs 0, 0x3e4(3)
    lfs 0, 0x10(31)
    stfs 0, 0x3e8(3)
    lfs 0, 0x14(31)
    stfs 0, 0x3ec(3)
    lfs 0, 0xc(31)
    stfs 0, 0x3f0(3)
    lfs 0, 0x10(31)
    stfs 0, 0x3f4(3)
    lfs 0, 0x14(31)
    stfs 0, 0x3f8(3)
    lfs 0, 0xc(31)
    stfs 0, 0x3fc(3)
    lfs 0, 0x10(31)
    stfs 0, 0x400(3)
    lfs 0, 0x14(31)
    stfs 0, 0x404(3)
    lfs 0, 0xc(31)
    stfs 0, 0x408(3)
    lfs 0, 0x10(31)
    stfs 0, 0x40c(3)
    lfs 0, 0x14(31)
    stfs 0, 0x410(3)
    lfs 0, 0xc(31)
    stfs 0, 0x414(3)
    lfs 0, 0x10(31)
    stfs 0, 0x418(3)
    lfs 0, 0x14(31)
    stfs 0, 0x41c(3)
    lfs 0, 0xc(31)
    stfs 0, 0x420(3)
    lfs 0, 0x10(31)
    stfs 0, 0x424(3)
    lfs 0, 0x14(31)
    stfs 0, 0x428(3)
    lfs 0, 0xc(31)
    stfs 0, 0x42c(3)
    lfs 0, 0x10(31)
    stfs 0, 0x430(3)
    lfs 0, 0x14(31)
    stfs 0, 0x434(3)
    addi 3, 3, 0x60
    .4byte 0x4200FF3C # bdnz .L_80149ED8
L_80149FA0:
    li 3, 0x1
L_80149FA4:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x54(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80149FDC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lwz 3, 0x250(3)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8014A010
    li 3, 0x1
    .4byte 0x480002A0 # b .L_8014A2AC
L_8014A010:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4082010C # bne .L_8014A124
    subfic 3, 3, 0x12c
    lis 0, 0x4330
    stw 3, 0x24c(31)
    .4byte 0xC842A128 # lfd f2, lbl_8053D0C8@sda21(r0)
    lwz 3, 0x24c(31)
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC002A170 # lfs f0, lbl_8053D110@sda21(r0)
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_8014A070
    li 0, 0x8
    stw 0, 0x24c(31)
L_8014A070:
    lwz 3, 0x278(31)
    addi 0, 3, 0x1
    stw 0, 0x278(31)
    lwz 0, 0x278(31)
    clrlwi 0, 0, 30
    stw 0, 0x278(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820094 # beq .L_8014A124
    cmpwi 0, 0x2
    .4byte 0x4182008C # beq .L_8014A124
    lwz 0, 0x278(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8014A0F8
    .4byte 0x40800014 # bge .L_8014A0BC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014A0C8
    .4byte 0x4080002C # bge .L_8014A0E0
    .4byte 0x4800006C # b .L_8014A124
L_8014A0BC:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_8014A124
    .4byte 0x4800004C # b .L_8014A110
L_8014A0C8:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xbb
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000048 # b .L_8014A124
L_8014A0E0:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xbc
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000030 # b .L_8014A124
L_8014A0F8:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xbd
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_8014A124
L_8014A110:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xbe
    li 5, 0x0
    bl fn_801F0E34
L_8014A124:
    lwz 0, 0x250(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8014A138
    li 3, 0x0
    .4byte 0x48000178 # b .L_8014A2AC
L_8014A138:
    lwz 0, 0x27c(31)
    lis 3, 0x19
    .4byte 0xC042A174 # lfs f2, lbl_8053D114@sda21(r0)
    addi 4, 3, 0x660d
    stw 0, 0x278(31)
    li 6, 0x0
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    .4byte 0x48000058 # b .L_8014A1AC
L_8014A158:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 6, 6, 0x1
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x278(31)
    lwz 0, 0x278(31)
    clrlwi 0, 0, 30
    stw 0, 0x278(31)
L_8014A1AC:
    lwz 0, 0x27c(31)
    lwz 3, 0x278(31)
    cmpw 0, 3
    .4byte 0x4082000C # bne .L_8014A1C4
    cmpwi 6, 0x64
    .4byte 0x4180FF98 # blt .L_8014A158
L_8014A1C4:
    li 29, 0x0
    stw 3, 0x27c(31)
    mr 28, 31
    mr 30, 29
L_8014A1D4:
    lwz 0, 0x7c0(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014A1F4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x7c0(28)
    bl fn_800EC240
    stw 30, 0x7c0(28)
L_8014A1F4:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFD4 # blt .L_8014A1D4
    lwz 0, 0x278(31)
    lis 3, lbl_8049F630@ha
    addi 4, 3, lbl_8049F630@l
    lwz 3, 0x4(31)
    slwi 28, 0, 2
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    lhzx 5, 4, 28
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, lbl_8049F630@ha
    stw 3, 0x7c0(31)
    addi 0, 4, lbl_8049F630@l
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    add 4, 0, 28
    lwz 3, 0x4(31)
    lhz 5, 0x2(4)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x7c4(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_8014A2A0
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_8014A2A0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xbf
    li 5, 0x0
    bl fn_801F0E34
L_8014A2A0:
    li 0, 0xe10
    li 3, 0x0
    stw 0, 0x254(31)
L_8014A2AC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8014A2CC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 23, 0x1c(1)
    mr 23, 3
    mr 24, 4
    li 25, 0x0
    lwz 0, 0x274(3)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_8014A2F8
    li 25, 0x7
L_8014A2F8:
    cmpwi 24, 0x0
    addi 4, 23, 0x3a8
    addi 5, 23, 0x9c
    li 6, 0x4e
    .4byte 0x40820048 # bne .L_8014A350
    li 0, 0x4f
    mtctr 0
L_8014A314:
    addi 0, 6, 0x1
    psq_l 1, 0x3d8(4), 0, 0
    mulli 3, 0, 0xc
    lfs 0, 0x3e0(4)
    subi 4, 4, 0xc
    subi 6, 6, 0x1
    addi 3, 3, 0x3d8
    add 3, 23, 3
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    lhz 0, 0x338(5)
    sth 0, 0x33a(5)
    subi 5, 5, 0x2
    .4byte 0x4200FFCC # bdnz .L_8014A314
    .4byte 0x4800001C # b .L_8014A368
L_8014A350:
    li 0, 0x4f
    mtctr 0
L_8014A358:
    lfs 0, 0x3e0(4)
    stfs 0, 0x3ec(4)
    subi 4, 4, 0xc
    .4byte 0x4200FFF4 # bdnz .L_8014A358
L_8014A368:
    cmpwi 24, 0x0
    .4byte 0x40820028 # bne .L_8014A394
    lfs 0, 0xc(23)
    stfs 0, 0x3d8(23)
    lfs 0, 0x10(23)
    stfs 0, 0x3dc(23)
    lfs 0, 0x14(23)
    stfs 0, 0x3e0(23)
    lhz 0, 0x284(23)
    sth 0, 0x338(23)
    .4byte 0x4800000C # b .L_8014A39C
L_8014A394:
    lfs 0, 0x14(23)
    stfs 0, 0x3e0(23)
L_8014A39C:
    lis 3, lbl_8049F640@ha
    mr 30, 23
    addi 31, 3, lbl_8049F640@l
    mr 29, 23
    mr 28, 31
    mr 27, 23
    li 26, 0x0
L_8014A3B8:
    add 0, 25, 26
    cmpwi 24, 0x0
    slwi 0, 0, 2
    lwzx 0, 31, 0
    mulli 4, 0, 0xc
    slwi 3, 0, 1
    addi 0, 3, 0x338
    add 3, 23, 4
    lfs 0, 0x3d8(3)
    stfs 0, 0x2cc(30)
    lfs 0, 0x3dc(3)
    stfs 0, 0x2d0(30)
    lfs 0, 0x3e0(3)
    stfs 0, 0x2d4(30)
    lhzx 0, 23, 0
    sth 0, 0x2ae(29)
    .4byte 0x41820048 # beq .L_8014A440
    lwz 3, 0x0(28)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842A128 # lfd f2, lbl_8053D0C8@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC002A178 # lfs f0, lbl_8053D118@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    mulli 3, 3, 0xc
    addi 0, 3, 0x3e0
    lfsx 0, 23, 0
    stfs 0, 0x2d4(30)
L_8014A440:
    cmpwi 26, 0x5
    .4byte 0x408000A8 # bge .L_8014A4EC
    lwz 8, 0x798(27)
    cmplwi 8, 0x0
    .4byte 0x40820064 # bne .L_8014A4B4
    xoris 3, 26, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    addi 3, 26, 0x1
    mulli 3, 3, 0xc
    .4byte 0xC842A128 # lfd f2, lbl_8053D0C8@sda21(r0)
    stw 0, 0x10(1)
    li 5, 0x11c
    .4byte 0xC062A11C # lfs f3, lbl_8053D0BC@sda21(r0)
    li 6, 0x0
    lfd 1, 0x10(1)
    addi 4, 3, 0x2c0
    .4byte 0xC002A114 # lfs f0, lbl_8053D0B4@sda21(r0)
    add 4, 23, 4
    fsubs 1, 1, 2
    lwz 3, 0x4(23)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    fnmsubs 1, 3, 1, 0
    bl fn_8013CC50
    stw 3, 0x798(27)
    .4byte 0x4800003C # b .L_8014A4EC
L_8014A4B4:
    lfs 0, 0x294(23)
    addi 0, 26, 0x1
    mulli 3, 0, 0xc
    li 5, 0x0
    fctiwz 0, 0
    li 6, 0x0
    li 7, 0x1
    addi 4, 3, 0x2c0
    stfd 0, 0x10(1)
    add 4, 23, 4
    lwz 0, 0x14(1)
    stb 0, 0xbb(8)
    lwz 3, 0x798(27)
    bl fn_8013CB44
L_8014A4EC:
    addi 26, 26, 0x1
    addi 29, 29, 0x2
    cmpwi 26, 0x6
    addi 28, 28, 0x4
    addi 27, 27, 0x4
    addi 30, 30, 0xc
    .4byte 0x4180FEB4 # blt .L_8014A3B8
    lis 3, lbl_8049F640@ha
    slwi 0, 25, 2
    addi 3, 3, lbl_8049F640@l
    mr 25, 23
    addi 26, 3, 0x18
    li 27, 0x0
    lwzx 0, 26, 0
    mulli 4, 0, 0xc
    slwi 0, 0, 1
    add 3, 23, 0
    add 4, 23, 4
    lfs 0, 0x3d8(4)
    stfs 0, 0x314(23)
    lfs 0, 0x3dc(4)
    stfs 0, 0x318(23)
    lfs 0, 0x3e0(4)
    stfs 0, 0x31c(23)
    lhz 0, 0x338(3)
    sth 0, 0x2ba(23)
L_8014A554:
    lwz 3, 0x7c0(25)
    addi 4, 23, 0x314
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    addi 27, 27, 0x1
    addi 25, 25, 0x4
    cmpwi 27, 0x2
    .4byte 0x4180FFDC # blt .L_8014A554
    cmpwi 24, 0x0
    .4byte 0x41820048 # beq .L_8014A5C8
    lwz 3, 0x0(26)
    lis 0, 0x4330
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC842A128 # lfd f2, lbl_8053D0C8@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC002A178 # lfs f0, lbl_8053D118@sda21(r0)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    mulli 0, 3, 0xc
    add 3, 23, 0
    lfs 0, 0x3e0(3)
    stfs 0, 0x31c(23)
L_8014A5C8:
    lfs 0, 0x3d8(23)
    stfs 0, 0x2c0(23)
    lfs 0, 0x3dc(23)
    stfs 0, 0x2c4(23)
    lfs 0, 0x3e0(23)
    stfs 0, 0x2c8(23)
    lmw 23, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8014A5F4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022A168 # lfs f1, lbl_8053D108@sda21(r0)
    li 7, 0x0
    stw 0, 0x24(1)
    li 6, 0x6
    .4byte 0xC002A158 # lfs f0, lbl_8053D0F8@sda21(r0)
    li 5, 0x12c
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC062A17C # lfs f3, lbl_8053D11C@sda21(r0)
    stfs 1, 0x80(31)
    addi 4, 3, 0x660d
    li 3, -0x1
    li 0, 0x1
    stfs 1, 0x84(31)
    .4byte 0xC022A114 # lfs f1, lbl_8053D0B4@sda21(r0)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    .4byte 0xC002A144 # lfs f0, lbl_8053D0E4@sda21(r0)
    stw 7, 0x258(31)
    stw 7, 0x25c(31)
    stw 7, 0x260(31)
    stw 7, 0x264(31)
    stw 7, 0x268(31)
    stw 7, 0x26c(31)
    stw 7, 0x270(31)
    stw 7, 0x234(31)
    stw 7, 0x238(31)
    stw 7, 0x23c(31)
    stw 7, 0x240(31)
    stw 7, 0x244(31)
    stw 7, 0x248(31)
    stw 7, 0x24c(31)
    stw 7, 0x250(31)
    stw 7, 0x254(31)
    stw 6, 0x274(31)
    stw 7, 0x278(31)
    lwz 6, 0x278(31)
    stw 6, 0x280(31)
    stw 5, 0x250(31)
    lwz 5, 0x278(31)
    stw 5, 0x27c(31)
    stw 7, 0x798(31)
    stw 7, 0x79c(31)
    stw 7, 0x7a0(31)
    stw 7, 0x7a4(31)
    stw 7, 0x7a8(31)
    stw 7, 0x7ac(31)
    stw 7, 0x7b0(31)
    stw 7, 0x7b4(31)
    stw 7, 0x7b8(31)
    stw 7, 0x7bc(31)
    stw 7, 0x7c0(31)
    stw 7, 0x7c4(31)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 4, 0x14(1)
    stw 4, 0x98(31)
    lwz 4, 0x98(31)
    stw 4, 0x298(31)
    stw 3, 0x29c(31)
    stfs 0, 0x294(31)
    stb 0, 0x196(31)
    lwz 0, 0x98(31)
    cmplwi 0, 0x7
    .4byte 0x41810068 # bgt .L_8014A79C
    lis 3, jumptable_8049F740@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049F740@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 8, 7
    .4byte 0x48000048 # b .L_8014A79C
    li 8, 0x2000
    .4byte 0x48000040 # b .L_8014A79C
    li 8, 0x4000
    .4byte 0x48000038 # b .L_8014A79C
    li 8, 0x6000
    .4byte 0x48000030 # b .L_8014A79C
    lis 3, 0x1
    addi 8, 3, -0x8000
    .4byte 0x48000024 # b .L_8014A79C
    lis 3, 0x1
    subi 8, 3, 0x6000
    .4byte 0x48000018 # b .L_8014A79C
    lis 3, 0x1
    subi 8, 3, 0x4000
    .4byte 0x4800000C # b .L_8014A79C
    lis 3, 0x1
    subi 8, 3, 0x2000
L_8014A79C:
    sth 8, 0x284(31)
    li 0, 0x2
    mr 4, 31
    mr 5, 31
    lhz 3, 0x284(31)
    sth 3, 0x286(31)
    mtctr 0
L_8014A7B8:
    lfs 0, 0xc(31)
    stfs 0, 0x2c0(4)
    lfs 0, 0x10(31)
    stfs 0, 0x2c4(4)
    lfs 0, 0x14(31)
    stfs 0, 0x2c8(4)
    lhz 0, 0x284(31)
    sth 0, 0x2ac(5)
    lfs 0, 0xc(31)
    stfs 0, 0x2cc(4)
    lfs 0, 0x10(31)
    stfs 0, 0x2d0(4)
    lfs 0, 0x14(31)
    stfs 0, 0x2d4(4)
    lhz 0, 0x284(31)
    sth 0, 0x2ae(5)
    lfs 0, 0xc(31)
    stfs 0, 0x2d8(4)
    lfs 0, 0x10(31)
    stfs 0, 0x2dc(4)
    lfs 0, 0x14(31)
    stfs 0, 0x2e0(4)
    lhz 0, 0x284(31)
    sth 0, 0x2b0(5)
    lfs 0, 0xc(31)
    stfs 0, 0x2e4(4)
    lfs 0, 0x10(31)
    stfs 0, 0x2e8(4)
    lfs 0, 0x14(31)
    stfs 0, 0x2ec(4)
    lhz 0, 0x284(31)
    sth 0, 0x2b2(5)
    lfs 0, 0xc(31)
    stfs 0, 0x2f0(4)
    lfs 0, 0x10(31)
    stfs 0, 0x2f4(4)
    lfs 0, 0x14(31)
    stfs 0, 0x2f8(4)
    addi 4, 4, 0x3c
    lhz 0, 0x284(31)
    sth 0, 0x2b4(5)
    addi 5, 5, 0xa
    .4byte 0x4200FF58 # bdnz .L_8014A7B8
    li 0, 0xa
    mr 3, 31
    mr 4, 31
    mtctr 0
L_8014A874:
    lfs 0, 0xc(31)
    stfs 0, 0x3d8(3)
    lfs 0, 0x10(31)
    stfs 0, 0x3dc(3)
    lfs 0, 0x14(31)
    stfs 0, 0x3e0(3)
    lhz 0, 0x284(31)
    sth 0, 0x338(4)
    lfs 0, 0xc(31)
    stfs 0, 0x3e4(3)
    lfs 0, 0x10(31)
    stfs 0, 0x3e8(3)
    lfs 0, 0x14(31)
    stfs 0, 0x3ec(3)
    lhz 0, 0x284(31)
    sth 0, 0x33a(4)
    lfs 0, 0xc(31)
    stfs 0, 0x3f0(3)
    lfs 0, 0x10(31)
    stfs 0, 0x3f4(3)
    lfs 0, 0x14(31)
    stfs 0, 0x3f8(3)
    lhz 0, 0x284(31)
    sth 0, 0x33c(4)
    lfs 0, 0xc(31)
    stfs 0, 0x3fc(3)
    lfs 0, 0x10(31)
    stfs 0, 0x400(3)
    lfs 0, 0x14(31)
    stfs 0, 0x404(3)
    lhz 0, 0x284(31)
    sth 0, 0x33e(4)
    lfs 0, 0xc(31)
    stfs 0, 0x408(3)
    lfs 0, 0x10(31)
    stfs 0, 0x40c(3)
    lfs 0, 0x14(31)
    stfs 0, 0x410(3)
    lhz 0, 0x284(31)
    sth 0, 0x340(4)
    lfs 0, 0xc(31)
    stfs 0, 0x414(3)
    lfs 0, 0x10(31)
    stfs 0, 0x418(3)
    lfs 0, 0x14(31)
    stfs 0, 0x41c(3)
    lhz 0, 0x284(31)
    sth 0, 0x342(4)
    lfs 0, 0xc(31)
    stfs 0, 0x420(3)
    lfs 0, 0x10(31)
    stfs 0, 0x424(3)
    lfs 0, 0x14(31)
    stfs 0, 0x428(3)
    lhz 0, 0x284(31)
    sth 0, 0x344(4)
    lfs 0, 0xc(31)
    stfs 0, 0x42c(3)
    lfs 0, 0x10(31)
    stfs 0, 0x430(3)
    lfs 0, 0x14(31)
    stfs 0, 0x434(3)
    addi 3, 3, 0x60
    lhz 0, 0x284(31)
    sth 0, 0x346(4)
    addi 4, 4, 0x10
    .4byte 0x4200FEF8 # bdnz .L_8014A874
    li 6, 0x0
    lis 3, 0x804
    stw 6, 0x798(31)
    lis 4, lbl_8052EBC0@ha
    addi 5, 4, lbl_8052EBC0@l
    .4byte 0xC062A180 # lfs f3, lbl_8053D120@sda21(r0)
    stw 6, 0x79c(31)
    addi 0, 3, 0x4
    .4byte 0xC042A110 # lfs f2, lbl_8053D0B0@sda21(r0)
    li 4, 0x2
    stw 6, 0x7a0(31)
    .4byte 0xC022A184 # lfs f1, lbl_8053D124@sda21(r0)
    stw 6, 0x7a4(31)
    .4byte 0xC002A114 # lfs f0, lbl_8053D0B4@sda21(r0)
    stw 6, 0x7a8(31)
    stw 6, 0x7ac(31)
    stw 6, 0x7b0(31)
    stw 6, 0x7b4(31)
    stw 6, 0x7b8(31)
    stw 6, 0x7bc(31)
    stfs 3, 0x290(31)
    lhz 3, 0x284(31)
    lfs 4, 0x290(31)
    rlwinm 3, 3, 30, 18, 28
    lfsx 3, 5, 3
    fmuls 3, 4, 3
    stfs 3, 0x2a0(31)
    lhz 3, 0x284(31)
    lfs 4, 0x290(31)
    rlwinm 3, 3, 30, 18, 28
    add 3, 5, 3
    lfs 3, 0x4(3)
    fmuls 3, 4, 3
    stfs 3, 0x2a4(31)
    stfs 2, 0x2a8(31)
    stfs 1, 0x288(31)
    stfs 0, 0x28c(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 30
    stw 3, 0x90(31)
    sth 6, 0x94(31)
    stw 4, 0xbc(31)
    stw 0, 0xb0(31)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lwz 0, 0x90(31)
    cmpwi 0, 0x2
    .4byte 0x41820084 # beq .L_8014AAC4
    .4byte 0x40800014 # bge .L_8014AA58
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014AA64
    .4byte 0x4080002C # bge .L_8014AA7C
    .4byte 0x480000A0 # b .L_8014AAF4
L_8014AA58:
    cmpwi 0, 0x4
    .4byte 0x40800098 # bge .L_8014AAF4
    .4byte 0x4800006C # b .L_8014AACC
L_8014AA64:
    .4byte 0x806D8F70 # lwz r3, lbl_8053AB30@sda21(r0)
    li 0, 0x0
    addi 3, 3, 0x1
    .4byte 0x906D8F70 # stw r3, lbl_8053AB30@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x4800007C # b .L_8014AAF4
L_8014AA7C:
    li 5, -0x1
    li 0, 0x0
    .4byte 0x90AD8398 # stw r5, lbl_80539F58@sda21(r0)
    li 4, 0x3c
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    .4byte 0x90AD839C # stw r5, lbl_80539F5C@sda21(r0)
    .4byte 0x900D8F74 # stw r0, lbl_8053AB34@sda21(r0)
    lwz 0, 0x4(31)
    .4byte 0x900D8F78 # stw r0, lbl_8053AB38@sda21(r0)
    bl fn_80458F9C
    li 3, 0x0
    li 0, 0x1
    .4byte 0x906D8F70 # stw r3, lbl_8053AB30@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x806D8F70 # lwz r3, lbl_8053AB30@sda21(r0)
    addi 0, 3, 0x1
    .4byte 0x900D8F70 # stw r0, lbl_8053AB30@sda21(r0)
    .4byte 0x48000034 # b .L_8014AAF4
L_8014AAC4:
    lwz 0, 0x4(31)
    .4byte 0x900D8F78 # stw r0, lbl_8053AB38@sda21(r0)
L_8014AACC:
    .4byte 0xC022A130 # lfs f1, lbl_8053D0D0@sda21(r0)
    li 3, 0x14
    .4byte 0xC002A134 # lfs f0, lbl_8053D0D4@sda21(r0)
    li 0, 0x8
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
L_8014AAF4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8014AB08:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BF550@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BF550@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014AB58
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
L_8014AB58:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014AB90
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
L_8014AB90:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014ABC8
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
L_8014ABC8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014AC00
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
L_8014AC00:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014AC38
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
L_8014AC38:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014AC70
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
L_8014AC70:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014ACA8
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
L_8014ACA8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014ACE0
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
L_8014ACE0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014AD18
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
L_8014AD18:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8014AD2C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 3
    mr 3, 29
    bl fn_8022461C
    clrlwi 30, 3, 16
    mr 3, 29
    mr 4, 31
    bl fn_80226850
    subi 0, 30, 0x10
    clrlwi 3, 3, 16
    cmplwi 0, 0x7
    .4byte 0x40810014 # ble .L_8014AD8C
    cmpwi 3, 0x140
    .4byte 0x4180001C # blt .L_8014AD9C
    cmpwi 3, 0x15f
    .4byte 0x41810014 # bgt .L_8014AD9C
L_8014AD8C:
    li 0, 0x1
    li 3, 0x0
    stw 0, 0x264(28)
    .4byte 0x480001FC # b .L_8014AF94
L_8014AD9C:
    cmpwi 30, 0x3
    .4byte 0x40820014 # bne .L_8014ADB4
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x264(28)
    .4byte 0x480001E4 # b .L_8014AF94
L_8014ADB4:
    cmpwi 30, 0xe
    .4byte 0x40820014 # bne .L_8014ADCC
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x264(28)
    .4byte 0x480001CC # b .L_8014AF94
L_8014ADCC:
    cmpwi 30, 0xd
    .4byte 0x4182000C # beq .L_8014ADDC
    cmpwi 30, 0x3b
    .4byte 0x40820014 # bne .L_8014ADEC
L_8014ADDC:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x264(28)
    .4byte 0x480001AC # b .L_8014AF94
L_8014ADEC:
    cmpwi 30, 0x0
    .4byte 0x418201A0 # beq .L_8014AF90
    cmpwi 30, 0x4
    .4byte 0x41820198 # beq .L_8014AF90
    cmpwi 30, 0x5
    .4byte 0x41820190 # beq .L_8014AF90
    cmpwi 30, 0x6
    .4byte 0x41820188 # beq .L_8014AF90
    cmpwi 30, 0x7
    .4byte 0x41820180 # beq .L_8014AF90
    cmpwi 30, 0x2
    .4byte 0x41820178 # beq .L_8014AF90
    cmpwi 30, 0x50
    .4byte 0x41820170 # beq .L_8014AF90
    cmpwi 30, 0xc
    .4byte 0x41820168 # beq .L_8014AF90
    cmpwi 30, 0x27
    .4byte 0x41820160 # beq .L_8014AF90
    cmpwi 30, 0x28
    .4byte 0x41820158 # beq .L_8014AF90
    cmpwi 30, 0x29
    .4byte 0x41820150 # beq .L_8014AF90
    cmpwi 30, 0x2a
    .4byte 0x41820148 # beq .L_8014AF90
    cmpwi 30, 0x2b
    .4byte 0x41820140 # beq .L_8014AF90
    cmpwi 30, 0x2c
    .4byte 0x41820138 # beq .L_8014AF90
    cmpwi 30, 0x2d
    .4byte 0x41820130 # beq .L_8014AF90
    cmpwi 30, 0x2e
    .4byte 0x41820128 # beq .L_8014AF90
    cmpwi 30, 0x2f
    .4byte 0x41820120 # beq .L_8014AF90
    cmpwi 30, 0x20
    .4byte 0x41820118 # beq .L_8014AF90
    cmpwi 30, 0x39
    .4byte 0x41820110 # beq .L_8014AF90
    cmpwi 30, 0x3a
    .4byte 0x41820108 # beq .L_8014AF90
    cmpwi 30, 0x4c
    .4byte 0x41820100 # beq .L_8014AF90
    cmpwi 30, 0x4d
    .4byte 0x418200F8 # beq .L_8014AF90
    cmpwi 30, 0x4e
    .4byte 0x418200F0 # beq .L_8014AF90
    cmpwi 30, 0x4f
    .4byte 0x418200E8 # beq .L_8014AF90
    cmpwi 30, 0x24
    .4byte 0x418200E0 # beq .L_8014AF90
    cmpwi 30, 0x23
    .4byte 0x418200D8 # beq .L_8014AF90
    mr 3, 29
    mr 4, 31
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3a
    .4byte 0x4182001C # beq .L_8014AEEC
    mr 3, 29
    mr 4, 31
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3d
    .4byte 0x40820014 # bne .L_8014AEFC
L_8014AEEC:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x264(28)
    .4byte 0x4800009C # b .L_8014AF94
L_8014AEFC:
    cmpwi 30, 0x25
    .4byte 0x40820030 # bne .L_8014AF30
    lwz 0, 0x264(28)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8014AF28
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8014AF28
    li 3, 0x1
    .4byte 0x48000070 # b .L_8014AF94
L_8014AF28:
    li 3, 0x0
    .4byte 0x48000068 # b .L_8014AF94
L_8014AF30:
    cmpwi 30, 0x26
    .4byte 0x40820030 # bne .L_8014AF64
    lwz 0, 0x264(28)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8014AF5C
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8014AF5C
    li 3, 0x1
    .4byte 0x4800003C # b .L_8014AF94
L_8014AF5C:
    li 3, 0x0
    .4byte 0x48000034 # b .L_8014AF94
L_8014AF64:
    lwz 0, 0x264(28)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8014AF90
    cmpwi 30, 0x22
    .4byte 0x40820014 # bne .L_8014AF88
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8014AF90
L_8014AF88:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8014AF94
L_8014AF90:
    li 3, 0x0
L_8014AF94:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8014AFB4:
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
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    mr 29, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x9
    .4byte 0x41820448 # beq .L_8014B450
    li 0, -0x1
    addi 9, 1, 0x40
    stw 0, 0x50(1)
    li 10, 0x0
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_8014B084
L_8014B024:
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
L_8014B084:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8014B024
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x50(1)
    li 30, 0x0
    li 31, 0x0
    stw 5, 0x54(1)
    stw 5, 0x58(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 5, 0x5e(1)
    stb 4, 0x5f(1)
    stb 4, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 5, 0x65(1)
    stb 4, 0x66(1)
    stw 3, 0x68(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stw 6, 0x70(1)
    stw 5, 0x74(1)
    stw 0, 0x78(1)
    stfs 0, 0x1c(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x3c(1)
L_8014B110:
    mr 3, 30
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8014B124
    addi 31, 31, 0x1
L_8014B124:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE4 # blt .L_8014B110
    cmpwi 31, 0x4
    .4byte 0x40820068 # bne .L_8014B19C
    lwz 0, 0x230(29)
    cmpwi 0, 0x5
    .4byte 0x4082005C # bne .L_8014B19C
    lwz 3, 0x234(29)
    cmpwi 3, 0x0
    .4byte 0x40820048 # bne .L_8014B194
    lwz 3, 0x24c(29)
    addi 0, 3, 0x1
    stw 0, 0x24c(29)
    lwz 0, 0x24c(29)
    cmpwi 0, 0x8
    .4byte 0x40810018 # ble .L_8014B17C
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x24c(29)
    stw 0, 0x234(29)
    .4byte 0x480002D8 # b .L_8014B450
L_8014B17C:
    lis 3, lbl_8049F760@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_8049F760@l
    lwzx 0, 3, 0
    stw 0, 0x234(29)
    .4byte 0x4800000C # b .L_8014B19C
L_8014B194:
    subi 0, 3, 0x1
    stw 0, 0x234(29)
L_8014B19C:
    lwz 0, 0x90(29)
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_8014B1B0
    cmplwi 0, 0x9
    .4byte 0x4082003C # bne .L_8014B1E8
L_8014B1B0:
    lwz 0, 0x230(29)
    cmpwi 0, 0x5
    .4byte 0x41820020 # beq .L_8014B1D8
    lfs 1, 0x274(29)
    li 31, 0x0
    .4byte 0xC002A18C # lfs f0, lbl_8053D12C@sda21(r0)
    lwz 3, 0x24c(29)
    fmuls 29, 1, 0
    addi 30, 3, 0x312
    .4byte 0x48000024 # b .L_8014B1F8
L_8014B1D8:
    lwz 3, 0x24c(29)
    li 31, 0x1
    addi 30, 3, 0xe8
    .4byte 0x48000014 # b .L_8014B1F8
L_8014B1E8:
    lwz 3, 0x24c(29)
    li 31, 0x0
    lfs 29, 0x274(29)
    addi 30, 3, 0xe8
L_8014B1F8:
    lfs 30, 0x278(29)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    bl cos
    frsp 3, 1
    li 0, 0x1
    fmuls 7, 30, 26
    addi 3, 1, 0x10
    fneg 6, 27
    stw 3, 0x58(1)
    fmuls 10, 31, 3
    stb 0, 0x5d(1)
    fmuls 2, 28, 27
    fmuls 9, 31, 26
    stb 0, 0x5c(1)
    fmuls 1, 28, 26
    fmuls 0, 28, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x10(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x20(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x30(1)
    fmuls 0, 29, 0
    stfs 5, 0x14(1)
    stfs 4, 0x24(1)
    stfs 3, 0x34(1)
    stfs 2, 0x18(1)
    stfs 1, 0x28(1)
    stfs 0, 0x38(1)
    lwz 0, 0x90(29)
    cmpwi 0, 0xb
    .4byte 0x4082003C # bne .L_8014B31C
    li 0, 0x0
    addi 5, 29, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x24c(29)
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    addi 6, 6, 0x2d5
    bl fn_803075AC
    .4byte 0x48000138 # b .L_8014B450
L_8014B31C:
    lwz 0, 0x230(29)
    cmpwi 0, 0xa
    .4byte 0x4182000C # beq .L_8014B330
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8014B33C
L_8014B330:
    li 0, 0x0
    stb 0, 0x5d(1)
    stb 0, 0x5c(1)
L_8014B33C:
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8014B36C
    li 0, 0x0
    stb 0, 0x60(1)
    lwz 3, 0xc8(29)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x5d(1)
    lwz 3, 0xc8(29)
    bl fn_8023CA88
    stb 3, 0x5c(1)
L_8014B36C:
    lwz 0, 0x24c(29)
    li 7, -0x1
    cmpwi 0, 0x2
    .4byte 0x40800084 # bge .L_8014B3FC
    lwz 3, 0x230(29)
    cmpwi 3, 0xa
    .4byte 0x41820050 # beq .L_8014B3D4
    cmpwi 3, 0x0
    .4byte 0x41820048 # beq .L_8014B3D4
    cmpwi 3, 0x6
    .4byte 0x41820040 # beq .L_8014B3D4
    cmpwi 3, 0x7
    .4byte 0x41820038 # beq .L_8014B3D4
    cmpwi 3, 0x8
    .4byte 0x41820030 # beq .L_8014B3D4
    lbz 0, 0xc4(29)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8014B3D4
    lwz 0, 0x90(29)
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_8014B3C8
    cmplwi 0, 0x9
    .4byte 0x4082000C # bne .L_8014B3D0
L_8014B3C8:
    li 7, 0x7
    .4byte 0x48000008 # b .L_8014B3D4
L_8014B3D0:
    li 7, 0x0
L_8014B3D4:
    cmpwi 3, 0x5
    .4byte 0x41820024 # beq .L_8014B3FC
    .4byte 0xC022A190 # lfs f1, lbl_8053D130@sda21(r0)
    lis 3, lbl_80465D48@ha
    addi 4, 3, lbl_80465D48@l
    mr 5, 30
    fmr 2, 1
    mr 3, 29
    addi 6, 1, 0x40
    bl fn_801F06F0
L_8014B3FC:
    lbz 0, 0xc4(29)
    li 10, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8014B418
    lwz 0, 0x90(29)
    cmpwi 0, 0xb
    .4byte 0x40820008 # bne .L_8014B41C
L_8014B418:
    li 10, 0x1
L_8014B41C:
    li 3, 0x0
    neg 0, 31
    stw 3, 0x8(1)
    or 0, 0, 31
    srwi 7, 0, 31
    mr 6, 30
    stw 3, 0xc(1)
    addi 5, 29, 0xc
    li 8, 0x2
    li 9, -0x1
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    bl fn_803075AC
L_8014B450:
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
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 0, 0xf4(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_8014B49C:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stmw 26, 0x58(1)
    mr 27, 3
    .4byte 0xC042A18C # lfs f2, lbl_8053D12C@sda21(r0)
    lfs 6, 0x60(3)
    li 30, 0x0
    li 29, 0x0
    li 28, 0x0
    stfs 6, 0x38(1)
    lfs 3, 0x64(3)
    stfs 3, 0x3c(1)
    lfs 4, 0x68(3)
    stfs 4, 0x40(1)
    lfs 1, 0x6c(3)
    stfs 1, 0x44(1)
    lfs 7, 0x10(3)
    lfs 0, 0xc(3)
    fadds 5, 3, 7
    fadds 3, 1, 7
    stfs 0, 0x18(1)
    fadds 6, 6, 0
    fadds 4, 4, 0
    stfs 7, 0x1c(1)
    fsubs 0, 5, 3
    lwz 31, 0x114(3)
    fsubs 1, 6, 4
    fmadds 0, 2, 0, 3
    stfs 6, 0x38(1)
    fmadds 1, 2, 1, 4
    stfs 5, 0x3c(1)
    stfs 4, 0x40(1)
    stfs 3, 0x44(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x9
    .4byte 0x4182014C # beq .L_8014B698
    lbz 0, 0xc4(27)
    cmplwi 0, 0x0
    .4byte 0x41820120 # beq .L_8014B678
    li 0, 0x0
    stw 0, 0x264(27)
    lwz 0, 0x230(27)
    cmpwi 0, 0x5
    .4byte 0x41820074 # beq .L_8014B5E0
    lwz 0, 0x294(27)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8014B5A8
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x274(27)
    li 5, 0x66
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8013CC50
    stw 3, 0x294(27)
L_8014B5A8:
    lwz 0, 0x298(27)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8014B5E0
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x274(27)
    li 5, 0x67
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8013CC50
    stw 3, 0x298(27)
L_8014B5E0:
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x244(27)
    stw 3, 0x240(27)
    stw 0, 0x25c(27)
    lwz 3, 0xc8(27)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    stfs 0, 0xc(27)
    lfs 0, 0x4(3)
    stfs 0, 0x10(27)
    lfs 0, 0x8(3)
    stfs 0, 0x14(27)
    lwz 0, 0x90(27)
    cmplwi 0, 0x8
    .4byte 0x40820044 # bne .L_8014B660
    lwz 26, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014B650
    lfs 1, 0x10(27)
    .4byte 0xC002A194 # lfs f0, lbl_8053D134@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(27)
    .4byte 0x48000014 # b .L_8014B660
L_8014B650:
    lfs 1, 0x14(27)
    .4byte 0xC002A194 # lfs f0, lbl_8053D134@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x14(27)
L_8014B660:
    lwz 3, 0xc8(27)
    bl fn_8023DE58
    stw 3, 0x4(27)
    lwz 0, 0xc8(27)
    stw 0, 0x260(27)
    .4byte 0x48000024 # b .L_8014B698
L_8014B678:
    psq_l 1, 0xc(27), 0, 0
    psq_l 0, 0x3c(27), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(27), 0, 0
    psq_l 1, 0x14(27), 1, 0
    psq_l 0, 0x44(27), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(27), 1, 0
L_8014B698:
    lwz 0, 0x230(27)
    cmplwi 0, 0xa
    .4byte 0x41811218 # bgt .L_8014C8B8
    lis 3, jumptable_8049F7DC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049F7DC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x294(27)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8014B6F4
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x274(27)
    li 5, 0x66
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8013CC50
    stw 3, 0x294(27)
L_8014B6F4:
    lwz 0, 0x298(27)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8014B72C
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x274(27)
    li 5, 0x67
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8013CC50
    stw 3, 0x298(27)
L_8014B72C:
    lfs 0, 0x3c(27)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082001C # bne .L_8014B754
    lfs 0, 0x40(27)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8014B754
    lfs 0, 0x44(27)
    fcmpu cr0, 0, 1
    .4byte 0x41821168 # beq .L_8014C8B8
L_8014B754:
    lwz 26, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8014B78C
    lfs 2, 0x10(27)
    lfs 1, 0x14(27)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(27)
    stfs 0, 0x14(27)
    stfs 0, 0x44(27)
L_8014B78C:
    lwz 0, 0x240(27)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8014B7A0
    li 0, 0x5
    stw 0, 0x240(27)
L_8014B7A0:
    li 0, 0x1
    stw 0, 0x25c(27)
    stw 0, 0x230(27)
    lbz 0, 0xc4(27)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8014B7D4
    lwz 3, 0xc8(27)
    bl fn_8023CB24
    extsb 4, 3
    lwz 3, 0xc8(27)
    addi 29, 4, 0x1
    bl fn_8023CA88
    extsb 28, 3
L_8014B7D4:
    lwz 3, 0x294(27)
    mr 5, 28
    mr 6, 29
    addi 4, 27, 0xc
    li 7, 0x0
    bl fn_8013CB44
    lwz 3, 0x298(27)
    mr 5, 28
    mr 6, 29
    addi 4, 27, 0xc
    li 7, 0x0
    bl fn_8013CB44
    lwz 0, 0x294(27)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014B824
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x3e
    li 5, 0x0
    bl fn_801F0E34
L_8014B824:
    lwz 26, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_8014B8FC
    lwz 0, 0x90(27)
    cmpwi 0, 0x6
    .4byte 0x41820050 # beq .L_8014B898
    lfs 1, 0x44(27)
    .4byte 0xC002A190 # lfs f0, lbl_8053D130@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(27)
    lwz 0, 0x90(27)
    cmpwi 0, 0x9
    .4byte 0x4082001C # bne .L_8014B880
    lfs 1, 0x44(27)
    .4byte 0xC002A198 # lfs f0, lbl_8053D138@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800048 # bge .L_8014B8BC
    stfs 0, 0x44(27)
    .4byte 0x48000040 # b .L_8014B8BC
L_8014B880:
    lfs 1, 0x44(27)
    .4byte 0xC002A19C # lfs f0, lbl_8053D13C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8014B8BC
    stfs 0, 0x44(27)
    .4byte 0x48000028 # b .L_8014B8BC
L_8014B898:
    lfs 2, 0x44(27)
    .4byte 0xC022A1A0 # lfs f1, lbl_8053D140@sda21(r0)
    .4byte 0xC002A19C # lfs f0, lbl_8053D13C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(27)
    lfs 1, 0x44(27)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8014B8BC
    stfs 0, 0x44(27)
L_8014B8BC:
    lfs 0, 0x14(27)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x408000AC # bge .L_8014B974
    lfs 0, 0x44(27)
    fcmpo cr0, 0, 1
    .4byte 0x408000A0 # bge .L_8014B974
    lbz 0, 0xc4(27)
    li 30, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_8014B974
    mr 3, 27
    bl fn_8014D6DC
    cmpwi 3, 0x0
    .4byte 0x40820FC4 # bne .L_8014C8B8
    .4byte 0x4800007C # b .L_8014B974
L_8014B8FC:
    lfs 2, 0x40(27)
    .4byte 0xC022A1A0 # lfs f1, lbl_8053D140@sda21(r0)
    .4byte 0xC002A1A4 # lfs f0, lbl_8053D144@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x40(27)
    lfs 1, 0x40(27)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8014B920
    stfs 0, 0x40(27)
L_8014B920:
    lfs 1, 0x10(27)
    mr 3, 27
    .4byte 0xC002A194 # lfs f0, lbl_8053D134@sda21(r0)
    li 4, 0x0
    lfs 31, 0xc(27)
    li 5, 0x0
    fadds 0, 1, 0
    lfs 30, 0x10(27)
    lfs 29, 0x14(27)
    stfs 0, 0x10(27)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8014B968
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    li 30, 0x1
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
L_8014B968:
    stfs 31, 0xc(27)
    stfs 30, 0x10(27)
    stfs 29, 0x14(27)
L_8014B974:
    cmpwi 30, 0x0
    .4byte 0x41820F40 # beq .L_8014C8B8
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 0, 0x14(27)
    lwz 3, 0x260(27)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8014B9A0
    lis 4, 0x2
    addi 4, 4, 0x6
    bl fn_80230FD0
    .4byte 0x48000018 # b .L_8014B9B4
L_8014B9A0:
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x77
    li 5, 0x0
    bl fn_801F0E34
L_8014B9B4:
    lwz 0, 0x238(27)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_8014B9F0
    li 0, 0x12c
    stw 0, 0x238(27)
    lwz 0, 0x90(27)
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_8014B9E0
    li 0, 0xc8
    stw 0, 0x238(27)
    .4byte 0x48000014 # b .L_8014B9F0
L_8014B9E0:
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_8014B9F0
    li 0, 0x1a4
    stw 0, 0x238(27)
L_8014B9F0:
    li 0, 0x0
    stw 0, 0x254(27)
    lwz 0, 0x90(27)
    cmplwi 0, 0x3
    .4byte 0x408200E8 # bne .L_8014BAE8
    lwz 0, 0x250(27)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_8014BAE8
    .4byte 0xC002A1A8 # lfs f0, lbl_8053D148@sda21(r0)
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC042A190 # lfs f2, lbl_8053D130@sda21(r0)
    stfs 0, 0x44(27)
    addi 5, 4, 0x660d
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC062A1AC # lfs f3, lbl_8053D14C@sda21(r0)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    lwz 3, 0xb4(6)
    mullw 3, 3, 5
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x48(1)
    lwz 3, 0x4c(1)
    rlwinm 3, 3, 30, 18, 28
    lfsx 1, 4, 3
    stfs 1, 0x3c(27)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(6)
    mullw 3, 3, 5
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(6)
    lwz 3, 0xb4(6)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x50(1)
    lwz 3, 0x54(1)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 1, 0x4(3)
    stfs 1, 0x40(27)
    stfs 0, 0x3c(27)
    stfs 0, 0x40(27)
    stfs 0, 0x44(27)
    stw 0, 0x250(27)
    .4byte 0x48000DD4 # b .L_8014C8B8
L_8014BAE8:
    li 0, 0x5
    li 3, 0x1
    stw 0, 0x240(27)
    li 0, 0x3
    stw 3, 0x25c(27)
    stw 0, 0x230(27)
    .4byte 0x48000DB8 # b .L_8014C8B8
    lwz 0, 0x258(27)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8014BB38
    lfs 1, 0x274(27)
    .4byte 0xC002A1B0 # lfs f0, lbl_8053D150@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_8014BB38
    .4byte 0xC042A1B4 # lfs f2, lbl_8053D154@sda21(r0)
    addi 3, 27, 0x274
    .4byte 0xC022A190 # lfs f1, lbl_8053D130@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    .4byte 0x48000D84 # b .L_8014C8B8
L_8014BB38:
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8014BB50
    li 0, 0x1
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stw 0, 0x258(27)
    stfs 0, 0x274(27)
L_8014BB50:
    li 3, 0x2
    li 0, 0x12c
    stw 3, 0x25c(27)
    stw 0, 0x238(27)
    lbz 0, 0xc4(27)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8014BB88
    lwz 3, 0xc8(27)
    bl fn_8023CB24
    extsb 4, 3
    lwz 3, 0xc8(27)
    addi 29, 4, 0x1
    bl fn_8023CA88
    extsb 28, 3
L_8014BB88:
    lwz 3, 0x294(27)
    mr 5, 28
    mr 6, 29
    addi 4, 27, 0xc
    li 7, 0x0
    bl fn_8013CB44
    lwz 3, 0x298(27)
    mr 5, 28
    mr 6, 29
    addi 4, 27, 0xc
    li 7, 0x0
    bl fn_8013CB44
    lwz 0, 0x294(27)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014BBD8
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x3e
    li 5, 0x0
    bl fn_801F0E34
L_8014BBD8:
    lwz 26, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820100 # bne .L_8014BCF0
    lwz 0, 0x26c(27)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8014BC14
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    .4byte 0x48000070 # b .L_8014BC80
L_8014BC14:
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    addi 3, 27, 0x3c
    .4byte 0xC042A1B8 # lfs f2, lbl_8053D158@sda21(r0)
    .4byte 0xC062A1BC # lfs f3, lbl_8053D15C@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    addi 3, 27, 0x40
    .4byte 0xC042A1B8 # lfs f2, lbl_8053D158@sda21(r0)
    .4byte 0xC062A1BC # lfs f3, lbl_8053D15C@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x3c(27)
    .4byte 0xC022A1C0 # lfs f1, lbl_8053D160@sda21(r0)
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800030 # bge .L_8014BC80
    lfs 0, 0x40(27)
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x4080001C # bge .L_8014BC80
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    li 0, 0x0
    stfs 0, 0x3c(27)
    stfs 0, 0x40(27)
    stfs 0, 0x44(27)
    stw 0, 0x26c(27)
L_8014BC80:
    lbz 0, 0xc4(27)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8014BC9C
    mr 3, 27
    bl fn_8014D6DC
    cmpwi 3, 0x0
    .4byte 0x40820C20 # bne .L_8014C8B8
L_8014BC9C:
    lfs 0, 0x3c(27)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082001C # bne .L_8014BCC4
    lfs 0, 0x40(27)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8014BCC4
    lfs 0, 0x44(27)
    fcmpu cr0, 0, 1
    .4byte 0x418200B0 # beq .L_8014BD70
L_8014BCC4:
    lwz 0, 0x90(27)
    cmpwi 0, 0x6
    .4byte 0x418200A4 # beq .L_8014BD70
    lwz 0, 0x230(27)
    cmpwi 0, 0xa
    .4byte 0x41820098 # beq .L_8014BD70
    mr 3, 27
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000084 # b .L_8014BD70
L_8014BCF0:
    lfs 2, 0x40(27)
    .4byte 0xC022A1A0 # lfs f1, lbl_8053D140@sda21(r0)
    .4byte 0xC002A1A4 # lfs f0, lbl_8053D144@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x40(27)
    lfs 1, 0x40(27)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8014BD14
    stfs 0, 0x40(27)
L_8014BD14:
    mr 3, 27
    addi 4, 1, 0x2c
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8014BD70
    lfs 2, 0x30(1)
    .4byte 0xC022A1C4 # lfs f1, lbl_8053D164@sda21(r0)
    .4byte 0xC002A1C8 # lfs f0, lbl_8053D168@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8014BD5C
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    .4byte 0x48000018 # b .L_8014BD70
L_8014BD5C:
    lfs 1, 0x2c(1)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_8014BD70
    stfs 0, 0x3c(27)
L_8014BD70:
    li 26, 0x0
L_8014BD74:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200E0 # beq .L_8014BE60
    lwz 5, 0x4(27)
    mr 3, 26
    addi 4, 1, 0x38
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_8014BE60
    lwz 4, 0x198(27)
    mr 3, 26
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_8014BE60
    li 0, 0x5
    li 4, 0x0
    stw 0, 0x244(27)
    stw 0, 0x240(27)
    stw 4, 0x254(27)
    lwz 0, 0x230(27)
    cmpwi 0, 0xa
    .4byte 0x4082006C # bne .L_8014BE40
    lis 3, 0x7
    addi 0, 3, 0x3308
    stw 0, 0xb0(27)
    stw 4, 0x90(27)
    lwz 0, 0x270(27)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8014BE0C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 27, 0xc
    lwz 5, 0x4(27)
    li 6, 0x59
    bl fn_802A381C
    .4byte 0x48000018 # b .L_8014BE20
L_8014BE0C:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 27, 0xc
    lwz 5, 0x4(27)
    li 6, 0x85
    bl fn_802A381C
L_8014BE20:
    .4byte 0xC042A1CC # lfs f2, lbl_8053D16C@sda21(r0)
    .4byte 0xC022A1D0 # lfs f1, lbl_8053D170@sda21(r0)
    stfs 2, 0x60(27)
    .4byte 0xC002A190 # lfs f0, lbl_8053D130@sda21(r0)
    stfs 2, 0x64(27)
    stfs 1, 0x68(27)
    stfs 1, 0x6c(27)
    stfs 0, 0x274(27)
L_8014BE40:
    lwz 0, 0x90(27)
    cmpwi 0, 0x6
    .4byte 0x4082000C # bne .L_8014BE54
    li 0, 0x0
    stw 0, 0x90(27)
L_8014BE54:
    li 0, 0x3
    stw 0, 0x230(27)
    .4byte 0x48000A5C # b .L_8014C8B8
L_8014BE60:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF0C # blt .L_8014BD74
    .4byte 0x48000A4C # b .L_8014C8B8
    lbz 0, 0xc4(27)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8014BE98
    lwz 3, 0xc8(27)
    bl fn_8023CB24
    extsb 4, 3
    lwz 3, 0xc8(27)
    addi 29, 4, 0x1
    bl fn_8023CA88
    extsb 28, 3
L_8014BE98:
    lwz 3, 0x294(27)
    mr 5, 28
    mr 6, 29
    addi 4, 27, 0xc
    li 7, 0x0
    bl fn_8013CB44
    lwz 3, 0x298(27)
    mr 5, 28
    mr 6, 29
    addi 4, 27, 0xc
    li 7, 0x0
    bl fn_8013CB44
    lwz 0, 0x294(27)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014BEE8
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x3e
    li 5, 0x0
    bl fn_801F0E34
L_8014BEE8:
    lwz 26, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408201CC # bne .L_8014C0CC
    lbz 0, 0xc4(27)
    cmplwi 0, 0x0
    .4byte 0x40820094 # bne .L_8014BFA0
    mr 3, 27
    bl fn_8014D6DC
    cmpwi 3, 0x0
    .4byte 0x4082099C # bne .L_8014C8B8
    lwz 0, 0x260(27)
    cmpwi 0, 0x0
    .4byte 0x41800038 # blt .L_8014BF60
    lwz 0, 0x25c(27)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8014BF60
    lfs 2, 0x44(27)
    .4byte 0xC022A1A0 # lfs f1, lbl_8053D140@sda21(r0)
    .4byte 0xC002A19C # lfs f0, lbl_8053D13C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(27)
    lfs 1, 0x44(27)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8014BF84
    stfs 0, 0x44(27)
    .4byte 0x48000028 # b .L_8014BF84
L_8014BF60:
    lfs 2, 0x44(27)
    .4byte 0xC022A190 # lfs f1, lbl_8053D130@sda21(r0)
    .4byte 0xC002A19C # lfs f0, lbl_8053D13C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(27)
    lfs 1, 0x44(27)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8014BF84
    stfs 0, 0x44(27)
L_8014BF84:
    lwz 0, 0x90(27)
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_8014BFA0
    mr 3, 27
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
L_8014BFA0:
    lfs 2, 0x14(27)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x4080090C # bge .L_8014C8B8
    lfs 0, 0x44(27)
    fcmpo cr0, 0, 1
    .4byte 0x40800900 # bge .L_8014C8B8
    lwz 0, 0x26c(27)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_8014C00C
    .4byte 0xC002A1D4 # lfs f0, lbl_8053D174@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x4080003C # bge .L_8014C00C
    lfs 0, 0x3c(27)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8014BFEC
    lfs 0, 0x40(27)
    fcmpu cr0, 0, 1
    .4byte 0x41820024 # beq .L_8014C00C
L_8014BFEC:
    lwz 4, 0x4(27)
    addi 3, 1, 0x10
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8014C00C
    li 0, 0x1
    stw 0, 0x26c(27)
L_8014C00C:
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 0, 0x14(27)
    stfs 0, 0x44(27)
    lwz 3, 0x260(27)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8014C034
    lis 4, 0x2
    addi 4, 4, 0x6
    bl fn_80230FD0
    .4byte 0x48000018 # b .L_8014C048
L_8014C034:
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x77
    li 5, 0x0
    bl fn_801F0E34
L_8014C048:
    lwz 0, 0x26c(27)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8014C070
    lfs 0, 0x3c(27)
    .4byte 0xC022A1B8 # lfs f1, lbl_8053D158@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(27)
    lfs 0, 0x40(27)
    fmuls 0, 0, 1
    stfs 0, 0x40(27)
L_8014C070:
    lwz 0, 0x25c(27)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8014C09C
    lwz 0, 0x26c(27)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8014C090
    .4byte 0xC002A1D8 # lfs f0, lbl_8053D178@sda21(r0)
    stfs 0, 0x44(27)
L_8014C090:
    li 0, 0x1
    stw 0, 0x25c(27)
    .4byte 0x48000820 # b .L_8014C8B8
L_8014C09C:
    lwz 0, 0x26c(27)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8014C0B8
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
L_8014C0B8:
    li 3, 0x1
    li 0, 0x2
    stw 3, 0x258(27)
    stw 0, 0x230(27)
    .4byte 0x480007F0 # b .L_8014C8B8
L_8014C0CC:
    lbz 0, 0xc4(27)
    cmplwi 0, 0x0
    .4byte 0x408207E4 # bne .L_8014C8B8
    lfs 1, 0x10(27)
    lfs 0, 0x14(27)
    .4byte 0xC042A188 # lfs f2, lbl_8053D128@sda21(r0)
    fsubs 3, 1, 0
    .4byte 0xC022A1DC # lfs f1, lbl_8053D17C@sda21(r0)
    .4byte 0xC002A1A4 # lfs f0, lbl_8053D144@sda21(r0)
    stfs 3, 0x10(27)
    stfs 2, 0x14(27)
    stfs 2, 0x44(27)
    stfs 1, 0x184(27)
    lfs 1, 0x40(27)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8014C118
    .4byte 0xC002A1A0 # lfs f0, lbl_8053D140@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(27)
L_8014C118:
    mr 3, 27
    addi 4, 1, 0x20
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182078C # beq .L_8014C8B8
    lfs 1, 0x24(1)
    .4byte 0xC042A1C4 # lfs f2, lbl_8053D164@sda21(r0)
    .4byte 0xC002A1C8 # lfs f0, lbl_8053D168@sda21(r0)
    fsubs 1, 1, 2
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800054 # bge .L_8014C19C
    lwz 0, 0x25c(27)
    cmpwi 0, 0x2
    .4byte 0x40800024 # bge .L_8014C178
    lfs 1, 0x3c(27)
    li 0, 0x2
    .4byte 0xC002A1C0 # lfs f0, lbl_8053D160@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x3c(27)
    stfs 2, 0x40(27)
    stw 0, 0x25c(27)
    .4byte 0x48000744 # b .L_8014C8B8
L_8014C178:
    li 0, 0x1
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stw 0, 0x258(27)
    li 0, 0x2
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    stw 0, 0x230(27)
    .4byte 0x48000720 # b .L_8014C8B8
L_8014C19C:
    lfs 1, 0x20(1)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820710 # beq .L_8014C8B8
    stfs 0, 0x3c(27)
    .4byte 0x48000708 # b .L_8014C8B8
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x59
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x5a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x5b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x90(27)
    cmpwi 0, 0xb
    .4byte 0x40820010 # bne .L_8014C244
    li 0, 0x0
    stw 0, 0x234(27)
    stw 0, 0x24c(27)
L_8014C244:
    li 0, 0x5
    stw 0, 0x230(27)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 0, 0x3c(27)
    stfs 0, 0x40(27)
    stfs 0, 0x44(27)
    lwz 0, 0x24c(27)
    cmpwi 0, 0x4
    .4byte 0x40800084 # bge .L_8014C2E8
    lwz 0, 0x90(27)
    cmpwi 0, 0x7
    .4byte 0x41820078 # beq .L_8014C2E8
    cmpwi 0, 0xd
    .4byte 0x41820070 # beq .L_8014C2E8
    cmpwi 0, 0xb
    .4byte 0x41820068 # beq .L_8014C2E8
    .4byte 0xC022A1E0 # lfs f1, lbl_8053D180@sda21(r0)
    .4byte 0xC002A1DC # lfs f0, lbl_8053D17C@sda21(r0)
    stfs 1, 0x60(27)
    stfs 1, 0x64(27)
    stfs 0, 0x68(27)
    stfs 0, 0x6c(27)
    lwz 0, 0x90(27)
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_8014C2B0
    cmpwi 0, 0x9
    .4byte 0x4082001C # bne .L_8014C2C8
L_8014C2B0:
    .4byte 0xC022A1E4 # lfs f1, lbl_8053D184@sda21(r0)
    .4byte 0xC002A1E8 # lfs f0, lbl_8053D188@sda21(r0)
    stfs 1, 0x60(27)
    stfs 1, 0x64(27)
    stfs 0, 0x68(27)
    stfs 0, 0x6c(27)
L_8014C2C8:
    mr 3, 27
    mr 4, 31
    li 5, -0x1
    li 6, 0x5
    bl fn_801F2B7C
    mr 3, 27
    li 4, 0x0
    bl fn_801F2B20
L_8014C2E8:
    lwz 0, 0x90(27)
    cmpwi 0, 0xb
    .4byte 0x4182004C # beq .L_8014C33C
    lwz 0, 0x234(27)
    cmpwi 0, 0x0
    .4byte 0x408205BC # bne .L_8014C8B8
    lwz 3, 0x24c(27)
    addi 0, 3, 0x1
    stw 0, 0x24c(27)
    lwz 0, 0x24c(27)
    cmpwi 0, 0x8
    .4byte 0x4081000C # ble .L_8014C320
    li 0, 0x0
    stb 0, 0x11c(27)
L_8014C320:
    lwz 0, 0x24c(27)
    lis 3, lbl_8049F760@ha
    addi 3, 3, lbl_8049F760@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(27)
    .4byte 0x48000580 # b .L_8014C8B8
L_8014C33C:
    lwz 0, 0x234(27)
    cmpwi 0, 0x0
    .4byte 0x40820574 # bne .L_8014C8B8
    lwz 3, 0x24c(27)
    addi 0, 3, 0x1
    stw 0, 0x24c(27)
    lwz 0, 0x24c(27)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8014C368
    li 0, 0x0
    stb 0, 0x11c(27)
L_8014C368:
    li 0, 0x2
    stw 0, 0x234(27)
    .4byte 0x48000548 # b .L_8014C8B8
    lwz 26, 0x4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_8014C3E4
    lwz 0, 0x294(27)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8014C3B4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x294(27)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x294(27)
L_8014C3B4:
    lwz 0, 0x298(27)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8014C3D8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x298(27)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x298(27)
L_8014C3D8:
    li 0, 0x0
    stb 0, 0x11c(27)
    .4byte 0x480004D8 # b .L_8014C8B8
L_8014C3E4:
    lwz 0, 0x290(27)
    cmplwi 0, 0x0
    .4byte 0x40820148 # bne .L_8014C534
    .4byte 0xC002A1EC # lfs f0, lbl_8053D18C@sda21(r0)
    stfs 0, 0x27c(27)
    lwz 0, 0x90(27)
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_8014C40C
    .4byte 0xC002A1F0 # lfs f0, lbl_8053D190@sda21(r0)
    stfs 0, 0x27c(27)
L_8014C40C:
    lfs 0, 0x3c(27)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8014C428
    lfs 0, 0x40(27)
    fcmpu cr0, 0, 1
    .4byte 0x418200E8 # beq .L_8014C50C
L_8014C428:
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x3d4
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x290(27)
    lis 4, 0x3
    mr 3, 27
    li 5, 0x0
    addi 4, 4, 0x22
    bl fn_801F0E34
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4f3
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4f4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4f5
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4f6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_8014C534
L_8014C50C:
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x3d0
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8014C534:
    li 0, 0x0
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stw 0, 0x250(27)
    li 0, 0x6
    lfs 1, 0xc(27)
    stfs 1, 0x284(27)
    lfs 1, 0x10(27)
    stfs 1, 0x288(27)
    lfs 1, 0x14(27)
    stfs 1, 0x28c(27)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    stw 0, 0x230(27)
    lwz 5, 0x294(27)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8014C594
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x294(27)
L_8014C594:
    lwz 5, 0x298(27)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8014C5BC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x298(27)
L_8014C5BC:
    lfs 1, 0x284(27)
    addi 3, 27, 0xc
    .4byte 0xC042A1C0 # lfs f2, lbl_8053D160@sda21(r0)
    .4byte 0xC062A190 # lfs f3, lbl_8053D130@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x288(27)
    addi 3, 27, 0x10
    .4byte 0xC042A1C0 # lfs f2, lbl_8053D160@sda21(r0)
    .4byte 0xC062A190 # lfs f3, lbl_8053D130@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC042A1C0 # lfs f2, lbl_8053D160@sda21(r0)
    addi 3, 27, 0x274
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fmr 3, 2
    bl fn_801F71A4
    lfs 2, 0x278(27)
    .4byte 0xC022A18C # lfs f1, lbl_8053D12C@sda21(r0)
    .4byte 0xC002A1C0 # lfs f0, lbl_8053D160@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x278(27)
    lfs 1, 0x274(27)
    fcmpo cr0, 1, 0
    .4byte 0x408002A4 # bge .L_8014C8B8
    lwz 0, 0x290(27)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8014C654
    lwz 3, 0x250(27)
    addi 0, 3, 0x1
    stw 0, 0x250(27)
    lwz 0, 0x250(27)
    cmpwi 0, 0x28
    .4byte 0x41800280 # blt .L_8014C8B8
    lwz 4, 0x290(27)
    li 0, 0x1
    lwz 3, 0xf4(4)
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8014C654:
    li 0, 0x0
    stb 0, 0x11c(27)
    .4byte 0x4800025C # b .L_8014C8B8
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    .4byte 0xC002A1EC # lfs f0, lbl_8053D18C@sda21(r0)
    stfs 1, 0x14(27)
    stfs 0, 0x27c(27)
    lwz 0, 0x90(27)
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_8014C684
    .4byte 0xC002A1F0 # lfs f0, lbl_8053D190@sda21(r0)
    stfs 0, 0x27c(27)
L_8014C684:
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4f7
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4f8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4f9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(27)
    addi 4, 27, 0xc
    lfs 1, 0x27c(27)
    li 5, 0x4fa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    bl fn_802DEB58
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8014C74C
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_8014C760
L_8014C74C:
    lis 4, 0x5
    mr 3, 27
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
L_8014C760:
    li 0, 0x0
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stw 0, 0x250(27)
    li 0, 0x6
    lfs 1, 0xc(27)
    stfs 1, 0x284(27)
    lfs 1, 0x10(27)
    stfs 1, 0x288(27)
    lfs 1, 0x14(27)
    stfs 1, 0x28c(27)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    stw 0, 0x230(27)
    .4byte 0x48000120 # b .L_8014C8B8
    lwz 26, 0x268(27)
    cmpwi 26, 0x0
    .4byte 0x408000E4 # bge .L_8014C888
    lwz 0, 0x234(27)
    cmpwi 0, 0x0
    .4byte 0x40820108 # bne .L_8014C8B8
    lwz 4, 0x4(27)
    addi 3, 1, 0x38
    .4byte 0xC022A1F4 # lfs f1, lbl_8053D194@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    cmpwi 3, 0x0
    .4byte 0x408000EC # bge .L_8014C8B8
    lwz 0, 0x250(27)
    li 26, 0x2
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_8014C7E4
    li 26, 0x4
L_8014C7E4:
    lwz 0, 0x270(27)
    slwi 0, 0, 8
    or 26, 26, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(27)
    mr 7, 26
    addi 6, 27, 0xc
    addi 4, 4, 0x4d42
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x268(27)
    lwz 0, 0x268(27)
    cmpwi 0, 0x0
    .4byte 0x41800098 # blt .L_8014C8B8
    lwz 0, 0x270(27)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8014C848
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 27, 0xc
    lwz 5, 0x4(27)
    li 6, 0x58
    bl fn_802A381C
    .4byte 0x48000018 # b .L_8014C85C
L_8014C848:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 27, 0xc
    lwz 5, 0x4(27)
    li 6, 0x84
    bl fn_802A381C
L_8014C85C:
    lwz 0, 0x250(27)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8014C87C
    lis 4, 0x3
    mr 3, 27
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
L_8014C87C:
    li 0, 0x1
    stw 0, 0x250(27)
    .4byte 0x48000034 # b .L_8014C8B8
L_8014C888:
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8014C8A8
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8014C8B8
L_8014C8A8:
    li 3, 0x168
    li 0, -0x1
    stw 3, 0x234(27)
    stw 0, 0x268(27)
L_8014C8B8:
    lbz 0, 0x280(27)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8014C8E0
    li 0, 0x0
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stw 0, 0x24c(27)
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    .4byte 0x48000620 # b .L_8014CEFC
L_8014C8E0:
    lbz 0, 0xc4(27)
    li 28, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820508 # bne .L_8014CDF4
    lwz 3, 0x230(27)
    cmpwi 3, 0x5
    .4byte 0x418204FC # beq .L_8014CDF4
    subi 0, 3, 0x1
    cmplwi 0, 0x2
    .4byte 0x40810018 # ble .L_8014C91C
    cmpwi 3, 0xa
    .4byte 0x408204E8 # bne .L_8014CDF4
    lwz 0, 0x258(27)
    cmpwi 0, 0x1
    .4byte 0x408204DC # bne .L_8014CDF4
L_8014C91C:
    lfs 1, 0x14(27)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820010 # beq .L_8014C938
    lwz 0, 0x90(27)
    cmpwi 0, 0x6
    .4byte 0x40820028 # bne .L_8014C95C
L_8014C938:
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4182010C # beq .L_8014CA4C
    .4byte 0xC002A194 # lfs f0, lbl_8053D134@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800100 # bge .L_8014CA4C
    lwz 0, 0x90(27)
    cmpwi 0, 0x6
    .4byte 0x408200F4 # bne .L_8014CA4C
L_8014C95C:
    lwz 0, 0x240(27)
    cmpwi 0, 0x0
    .4byte 0x408200E8 # bne .L_8014CA4C
    lwz 0, 0x244(27)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_8014CA4C
    mr 3, 27
    li 4, -0x1
    bl fn_801F2740
    clrlwi. 0, 3, 24
    li 30, 0x0
    .4byte 0x418200C4 # beq .L_8014CA4C
    li 26, 0x0
    .4byte 0x48000010 # b .L_8014C9A0
L_8014C994:
    extrwi. 3, 3, 7, 24
    .4byte 0x41820008 # beq .L_8014C9A0
    addi 26, 26, 0x1
L_8014C9A0:
    clrlwi. 0, 3, 24
    .4byte 0x4082FFF0 # bne .L_8014C994
    lwz 3, 0x260(27)
    cmpwi 3, 0x0
    .4byte 0x41800098 # blt .L_8014CA48
    cmpw 26, 3
    .4byte 0x41820094 # beq .L_8014CA4C
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_8014C9E4
    mr 3, 26
    bl fn_8022F3DC
    lwz 0, 0x260(27)
    cmpw 0, 3
    .4byte 0x4182003C # beq .L_8014CA14
    li 30, 0x1
    .4byte 0x48000034 # b .L_8014CA14
L_8014C9E4:
    lwz 3, 0x260(27)
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x41820024 # beq .L_8014CA14
    mr 3, 26
    bl fn_8022F3DC
    mr 29, 3
    lwz 3, 0x260(27)
    bl fn_8022F3DC
    cmpw 3, 29
    .4byte 0x41820008 # beq .L_8014CA14
    li 30, 0x1
L_8014CA14:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_8014CA4C
    mr 3, 27
    addi 4, 1, 0x10
    bl fn_801F3128
    mr 3, 26
    mr 4, 31
    addi 5, 1, 0x10
    li 6, 0x5
    bl fn_80238548
    li 28, 0x1
    .4byte 0x48000008 # b .L_8014CA4C
L_8014CA48:
    li 28, 0x1
L_8014CA4C:
    lwz 0, 0x240(27)
    cmpwi 0, 0x0
    .4byte 0x408203A0 # bne .L_8014CDF4
    lwz 0, 0x90(27)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_8014CA6C
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_8014CA78
L_8014CA6C:
    lwz 0, 0x258(27)
    cmpwi 0, 0x1
    .4byte 0x40820254 # bne .L_8014CCC8
L_8014CA78:
    lwz 0, 0x230(27)
    cmpwi 0, 0xa
    .4byte 0x4082002C # bne .L_8014CAAC
    lis 4, 0x4e55
    mr 3, 27
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820228 # beq .L_8014CCC8
    li 28, 0x2
    .4byte 0x48000220 # b .L_8014CCC8
L_8014CAAC:
    lwz 0, 0x248(27)
    cmpwi 0, 0x0
    .4byte 0x40820214 # bne .L_8014CCC8
    lis 4, 0x4842
    mr 3, 27
    addi 4, 4, 0x4d42
    bl fn_801F2718
    lwz 26, 0x4(27)
    mr 29, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820128 # bne .L_8014CC0C
    cmpwi 29, 0x0
    .4byte 0x418000B4 # blt .L_8014CBA0
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201C8 # beq .L_8014CCC8
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8014CB38
    lwz 0, 0x90(3)
    cmplwi 0, 0x1
    .4byte 0x41820028 # beq .L_8014CB40
    lfs 0, 0x14(3)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820018 # bne .L_8014CB40
    lfs 0, 0x14(27)
    fcmpu cr0, 0, 1
    .4byte 0x4182000C # beq .L_8014CB40
L_8014CB38:
    li 28, 0x2
    .4byte 0x48000048 # b .L_8014CB84
L_8014CB40:
    lfs 0, 0x14(3)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820038 # bne .L_8014CB84
    lfs 0, 0x14(27)
    fcmpu cr0, 0, 1
    .4byte 0x4082002C # bne .L_8014CB84
    lis 4, 0x4e55
    lis 5, 0x4842
    mr 3, 27
    li 6, 0x0
    addi 4, 4, 0x4c4c
    addi 5, 5, 0x4d42
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8014CB84
    li 28, 0x2
L_8014CB84:
    .4byte 0xC022A1F8 # lfs f1, lbl_8053D198@sda21(r0)
    .4byte 0xC002A1D8 # lfs f0, lbl_8053D178@sda21(r0)
    stfs 1, 0x60(27)
    stfs 1, 0x64(27)
    stfs 0, 0x68(27)
    stfs 0, 0x6c(27)
    .4byte 0x4800012C # b .L_8014CCC8
L_8014CBA0:
    lis 4, 0x4e55
    mr 3, 27
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8014CBC8
    li 28, 0x2
    .4byte 0x48000104 # b .L_8014CCC8
L_8014CBC8:
    lfs 0, 0x3c(27)
    .4byte 0xC022A188 # lfs f1, lbl_8053D128@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082001C # bne .L_8014CBF0
    lfs 0, 0x40(27)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8014CBF0
    lfs 0, 0x44(27)
    fcmpu cr0, 0, 1
    .4byte 0x418200DC # beq .L_8014CCC8
L_8014CBF0:
    mr 3, 27
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_8014CCC8
    li 28, 0x2
    .4byte 0x480000C0 # b .L_8014CCC8
L_8014CC0C:
    cmpwi 29, 0x0
    .4byte 0x41800068 # blt .L_8014CC78
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200A4 # beq .L_8014CCC8
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8014CC58
    lis 4, 0x4e55
    lis 5, 0x4842
    mr 3, 27
    li 6, 0x0
    addi 4, 4, 0x4c4c
    addi 5, 5, 0x4d42
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8014CC5C
L_8014CC58:
    li 28, 0x2
L_8014CC5C:
    .4byte 0xC022A1F8 # lfs f1, lbl_8053D198@sda21(r0)
    .4byte 0xC002A1D8 # lfs f0, lbl_8053D178@sda21(r0)
    stfs 1, 0x60(27)
    stfs 1, 0x64(27)
    stfs 0, 0x68(27)
    stfs 0, 0x6c(27)
    .4byte 0x48000054 # b .L_8014CCC8
L_8014CC78:
    lis 4, 0x4e55
    mr 3, 27
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8014CCA0
    li 28, 0x2
    .4byte 0x4800002C # b .L_8014CCC8
L_8014CCA0:
    lfs 1, 0x10(27)
    lfs 0, 0x1c(27)
    fcmpu cr0, 1, 0
    .4byte 0x4182001C # beq .L_8014CCC8
    mr 3, 27
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8014CCC8
    li 28, 0x2
L_8014CCC8:
    clrlwi. 0, 28, 24
    .4byte 0x40820020 # bne .L_8014CCEC
    lwz 3, 0x198(27)
    addi 4, 1, 0x38
    addi 5, 1, 0x18
    bl Saya_ForceState3
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_8014CCEC
    li 28, 0x1
L_8014CCEC:
    clrlwi. 0, 28, 24
    .4byte 0x4082005C # bne .L_8014CD4C
    lwz 0, 0x230(27)
    cmpwi 0, 0xa
    .4byte 0x40820050 # bne .L_8014CD4C
    lwz 3, 0x198(27)
    addi 4, 1, 0x38
    addi 5, 1, 0x18
    bl Saya_ForceState2
    cmpwi 3, 0x0
    .4byte 0x40820034 # bne .L_8014CD48
    lwz 3, 0x198(27)
    addi 4, 1, 0x38
    addi 5, 1, 0x18
    bl Saya_ForceState4
    cmpwi 3, 0x0
    .4byte 0x4082001C # bne .L_8014CD48
    lwz 3, 0x198(27)
    addi 4, 1, 0x38
    addi 5, 1, 0x18
    bl Saya_ForceState1
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_8014CD4C
L_8014CD48:
    li 28, 0x1
L_8014CD4C:
    li 26, 0x0
L_8014CD50:
    clrlwi. 0, 28, 24
    .4byte 0x40820028 # bne .L_8014CD7C
    mr 3, 27
    mr 7, 26
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8014CD7C
    li 28, 0x2
L_8014CD7C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFCC # blt .L_8014CD50
    clrlwi. 0, 28, 24
    .4byte 0x40820010 # bne .L_8014CD9C
    lwz 0, 0x108(27)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_8014CDF4
L_8014CD9C:
    lwz 0, 0x230(27)
    cmpwi 0, 0xa
    .4byte 0x4082003C # bne .L_8014CDE0
    lwz 0, 0x270(27)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8014CDCC
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 27, 0xc
    lwz 5, 0x4(27)
    li 6, 0x59
    bl fn_802A381C
    .4byte 0x48000018 # b .L_8014CDE0
L_8014CDCC:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 27, 0xc
    lwz 5, 0x4(27)
    li 6, 0x85
    bl fn_802A381C
L_8014CDE0:
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
L_8014CDF4:
    lwz 0, 0x230(27)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_8014CE08
    cmpwi 0, 0x3
    .4byte 0x40820080 # bne .L_8014CE84
L_8014CE08:
    lwz 0, 0x238(27)
    cmpwi 0, 0x64
    .4byte 0x40800054 # bge .L_8014CE64
    lwz 3, 0x254(27)
    addi 0, 3, 0x1
    stw 0, 0x254(27)
    lwz 0, 0x238(27)
    cmpwi 0, 0x32
    .4byte 0x40800018 # bge .L_8014CE40
    lwz 3, 0x254(27)
    clrlwi. 0, 3, 31
    .4byte 0x4182000C # beq .L_8014CE40
    addi 0, 3, 0x1
    stw 0, 0x254(27)
L_8014CE40:
    lwz 0, 0x254(27)
    clrlwi 0, 0, 29
    stw 0, 0x254(27)
    lwz 0, 0x254(27)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8014CE64
    lwz 0, 0x24c(27)
    xori 0, 0, 0x1
    stw 0, 0x24c(27)
L_8014CE64:
    lwz 0, 0x238(27)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8014CE84
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
L_8014CE84:
    lwz 3, 0x234(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014CE98
    subi 0, 3, 0x1
    stw 0, 0x234(27)
L_8014CE98:
    lwz 3, 0x238(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014CEAC
    subi 0, 3, 0x1
    stw 0, 0x238(27)
L_8014CEAC:
    lwz 3, 0x23c(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014CEC0
    subi 0, 3, 0x1
    stw 0, 0x23c(27)
L_8014CEC0:
    lwz 3, 0x240(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014CED4
    subi 0, 3, 0x1
    stw 0, 0x240(27)
L_8014CED4:
    lwz 3, 0x244(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014CEE8
    subi 0, 3, 0x1
    stw 0, 0x244(27)
L_8014CEE8:
    lwz 3, 0x248(27)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8014CEFC
    subi 0, 3, 0x1
    stw 0, 0x248(27)
L_8014CEFC:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lmw 26, 0x58(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_8014CF28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x4182004C # beq .L_8014CF98
    lis 3, lbl_8049F784@ha
    mr 31, 28
    addi 0, 3, lbl_8049F784@l
    li 30, 0x0
    stw 0, 0x0(28)
L_8014CF64:
    lwz 3, 0x290(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180FFEC # blt .L_8014CF64
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_8014CF98
    mr 3, 28
    bl dtor_80084580
L_8014CF98:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8014CFBC:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC062A1CC # lfs f3, lbl_8053D16C@sda21(r0)
    li 7, 0x0
    stw 0, 0x14(1)
    lis 4, 0x5
    .4byte 0xC042A1D0 # lfs f2, lbl_8053D170@sda21(r0)
    li 6, 0x2
    stw 31, 0xc(1)
    li 5, -0x1
    .4byte 0xC022A190 # lfs f1, lbl_8053D130@sda21(r0)
    addi 0, 4, 0x3308
    stw 30, 0x8(1)
    mr 31, 3
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 3, 0x60(3)
    stfs 3, 0x64(3)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 2, 0x88(3)
    stfs 2, 0x8c(3)
    stw 7, 0x24c(3)
    stw 7, 0x250(3)
    stw 7, 0x254(3)
    stw 7, 0x258(3)
    stw 7, 0x25c(3)
    stw 7, 0x260(3)
    stw 7, 0x264(3)
    stw 7, 0x234(3)
    stw 7, 0x238(3)
    stw 7, 0x23c(3)
    stw 7, 0x240(3)
    stw 7, 0x244(3)
    stw 7, 0x248(3)
    stw 6, 0x108(3)
    stw 7, 0x26c(3)
    stb 7, 0x280(3)
    stfs 1, 0x27c(3)
    stw 7, 0x290(3)
    stw 7, 0x294(3)
    stw 7, 0x298(3)
    stfs 1, 0x274(3)
    stw 5, 0x268(3)
    stw 0, 0xb0(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 23
    stw 0, 0x270(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x90(3)
    sth 7, 0x94(3)
    stw 5, 0x260(3)
    stfs 0, 0x278(3)
    lwz 0, 0x90(3)
    cmplwi 0, 0xd
    .4byte 0x41810118 # bgt .L_8014D1B8
    lis 4, jumptable_8049F808@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_8049F808@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    li 0, 0x14
    stw 0, 0x248(31)
    li 0, 0x12c
    lis 3, 0x7
    stw 0, 0x238(31)
    li 4, 0x2
    addi 0, 3, 0x3308
    stw 4, 0x230(31)
    stw 0, 0xb0(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8014D118
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_8014D118:
    lwz 0, 0x90(31)
    cmplwi 0, 0x8
    .4byte 0x40820024 # bne .L_8014D144
    .4byte 0xC042A1FC # lfs f2, lbl_8053D19C@sda21(r0)
    .4byte 0xC022A200 # lfs f1, lbl_8053D1A0@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002A1D4 # lfs f0, lbl_8053D174@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x274(31)
L_8014D144:
    lwz 0, 0x294(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8014D17C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x274(31)
    li 5, 0x66
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8013CC50
    stw 3, 0x294(31)
L_8014D17C:
    lwz 0, 0x298(31)
    cmplwi 0, 0x0
    .4byte 0x40820168 # bne .L_8014D2EC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x274(31)
    li 5, 0x67
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_8013CC50
    stw 3, 0x298(31)
    .4byte 0x48000138 # b .L_8014D2EC
L_8014D1B8:
    li 0, 0x32
    stw 0, 0x240(31)
    li 0, 0x32
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x9
    .4byte 0x40820024 # bne .L_8014D1F4
    .4byte 0xC042A1FC # lfs f2, lbl_8053D19C@sda21(r0)
    .4byte 0xC022A200 # lfs f1, lbl_8053D1A0@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002A1D4 # lfs f0, lbl_8053D174@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x274(31)
L_8014D1F4:
    lis 3, 0x7
    li 0, 0x0
    addi 3, 3, 0x3308
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x480000E4 # b .L_8014D2EC
    stfs 0, 0x60(31)
    li 0, 0x9
    stfs 0, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 0, 0x274(31)
    stw 7, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x480000C0 # b .L_8014D2EC
    stfs 0, 0x274(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8014D24C
    li 0, 0x1
    stb 0, 0x11f(31)
L_8014D24C:
    .4byte 0xC022A198 # lfs f1, lbl_8053D138@sda21(r0)
    lis 3, 0x5
    .4byte 0xC002A1A4 # lfs f0, lbl_8053D144@sda21(r0)
    addi 3, 3, 0x3303
    stfs 1, 0x60(31)
    li 0, 0xa
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    .4byte 0x48000074 # b .L_8014D2EC
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    .4byte 0x48000060 # b .L_8014D2EC
    li 0, 0x2
    .4byte 0xC002A190 # lfs f0, lbl_8053D130@sda21(r0)
    stw 0, 0x24c(31)
    stfs 0, 0x274(31)
    lwz 0, 0x90(31)
    cmpwi 0, 0xd
    .4byte 0x40820010 # bne .L_8014D2B8
    .4byte 0xC002A1D4 # lfs f0, lbl_8053D174@sda21(r0)
    stfs 0, 0x274(31)
    stfs 0, 0x27c(31)
L_8014D2B8:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lwz 4, 0x24c(31)
    lis 3, lbl_8049F760@ha
    addi 3, 3, lbl_8049F760@l
    li 0, 0x4
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8014D2EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8014D304:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8014D330:
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
    stw 28, 0x30(1)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    mr 31, 3
    li 0, 0x0
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    stw 0, 0xb0(3)
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022A204 # lfs f1, lbl_8053D1A4@sda21(r0)
    .4byte 0xC042A188 # lfs f2, lbl_8053D128@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    li 0, 0x1
    sth 0, 0x94(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_8014D3CC
    cmplwi 0, 0x9
    .4byte 0x4082000C # bne .L_8014D3D4
L_8014D3CC:
    .4byte 0xC002A1D4 # lfs f0, lbl_8053D174@sda21(r0)
    stfs 0, 0x27c(31)
L_8014D3D4:
    lwz 0, 0x294(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8014D3F8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x294(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x294(31)
L_8014D3F8:
    lwz 0, 0x298(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8014D41C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x298(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x298(31)
L_8014D41C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x27c(31)
    li 5, 0x59
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x27c(31)
    li 5, 0x5a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x27c(31)
    li 5, 0x5b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x90(31)
    cmplwi 0, 0x8
    .4byte 0x4182000C # beq .L_8014D4A8
    cmplwi 0, 0x9
    .4byte 0x4082002C # bne .L_8014D4D0
L_8014D4A8:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A190 # lfs f1, lbl_8053D130@sda21(r0)
    li 5, 0x5c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8014D4D0:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    lis 3, lbl_8049F760@ha
    stw 0, 0x24c(31)
    addi 3, 3, lbl_8049F760@l
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    lwz 0, 0x24c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    stfs 0, 0x1c(1)
    stfs 0, 0x18(1)
    stfs 0, 0x14(1)
    lwz 0, 0x90(31)
    cmpwi 0, 0x7
    .4byte 0x41820058 # beq .L_8014D574
    cmpwi 0, 0xd
    .4byte 0x41820050 # beq .L_8014D574
    cmpwi 0, 0xb
    .4byte 0x41820048 # beq .L_8014D574
    .4byte 0xC022A1E0 # lfs f1, lbl_8053D180@sda21(r0)
    .4byte 0xC002A1DC # lfs f0, lbl_8053D17C@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 0, 0x90(31)
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_8014D55C
    cmpwi 0, 0x9
    .4byte 0x4082001C # bne .L_8014D574
L_8014D55C:
    .4byte 0xC022A1E4 # lfs f1, lbl_8053D184@sda21(r0)
    .4byte 0xC002A1E8 # lfs f0, lbl_8053D188@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8014D574:
    lwz 0, 0x90(31)
    cmplwi 0, 0xc
    .4byte 0x41820100 # beq .L_8014D67C
    cmplwi 0, 0x8
    .4byte 0x41820040 # beq .L_8014D5C4
    cmplwi 0, 0x9
    .4byte 0x41820038 # beq .L_8014D5C4
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    addi 7, 1, 0x14
    li 5, 0x0
    bl fn_8029EDB8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_8014D694
    mr 3, 31
    addi 4, 1, 0x14
    bl fn_8014D868
    .4byte 0x480000D4 # b .L_8014D694
L_8014D5C4:
    .4byte 0xC3A2A1DC # lfs f29, lbl_8053D17C@sda21(r0)
    li 29, 0x0
    .4byte 0xCBC2A208 # lfd f30, lbl_8053D1A8@sda21(r0)
    lis 30, 0x4330
    .4byte 0xC3E2A194 # lfs f31, lbl_8053D134@sda21(r0)
L_8014D5D8:
    xoris 0, 29, 0x8000
    stw 30, 0x20(1)
    li 28, 0x0
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 28, 29, 0
L_8014D5F4:
    xoris 0, 28, 0x8000
    lfs 1, 0x10(31)
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    lfs 0, 0xc(31)
    fsubs 1, 1, 31
    stw 30, 0x20(1)
    addi 7, 1, 0x14
    fsubs 0, 0, 31
    lwz 6, 0x4(31)
    lfd 2, 0x20(1)
    lfs 3, 0x14(31)
    li 5, 0x0
    fsubs 2, 2, 30
    fadds 0, 0, 28
    stfs 3, 0x10(1)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    fmadds 1, 29, 2, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_8029EDB8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8014D660
    mr 3, 31
    addi 4, 1, 0x14
    bl fn_8014D868
L_8014D660:
    addi 28, 28, 0x1
    cmpwi 28, 0x2
    .4byte 0x4180FF8C # blt .L_8014D5F4
    addi 29, 29, 0x1
    cmpwi 29, 0x2
    .4byte 0x4180FF64 # blt .L_8014D5D8
    .4byte 0x4800001C # b .L_8014D694
L_8014D67C:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    addi 7, 1, 0x14
    li 5, 0x0
    bl fn_8029EDB8
L_8014D694:
    li 0, 0x5
    stw 0, 0x230(31)
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
    lwz 29, 0x34(1)
    lwz 0, 0x84(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8014D6DC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002A1C0 # lfs f0, lbl_8053D160@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lfs 1, 0x14(3)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8014D708
    li 3, 0x0
    .4byte 0x48000150 # b .L_8014D854
L_8014D708:
    .4byte 0xC062A1F8 # lfs f3, lbl_8053D198@sda21(r0)
    addi 3, 1, 0x8
    .4byte 0xC0A2A1D8 # lfs f5, lbl_8053D178@sda21(r0)
    fmr 4, 3
    lfs 1, 0x10(31)
    fmr 6, 5
    lfs 0, 0xc(31)
    .4byte 0xC042A18C # lfs f2, lbl_8053D12C@sda21(r0)
    fadds 3, 3, 0
    fadds 5, 5, 0
    fadds 4, 4, 1
    fadds 6, 6, 1
    fsubs 1, 3, 5
    fsubs 0, 4, 6
    fmadds 1, 2, 1, 5
    fmadds 0, 2, 0, 6
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x3
    .4byte 0x4082003C # bne .L_8014D79C
    lfs 1, 0xc(31)
    li 0, 0x6
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    li 3, 0x1
    stfs 1, 0x284(31)
    lfs 1, 0x10(31)
    stfs 1, 0x288(31)
    lfs 1, 0x14(31)
    stfs 1, 0x28c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    .4byte 0x480000BC # b .L_8014D854
L_8014D79C:
    cmplwi 0, 0xe
    .4byte 0x40820068 # bne .L_8014D808
    lfs 1, 0xc(31)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    stfs 1, 0x284(31)
    lfs 1, 0x10(31)
    stfs 1, 0x288(31)
    lfs 1, 0x14(31)
    stfs 1, 0x28c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8014D7EC
    bl fn_802DEB58
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8014D7F8
L_8014D7EC:
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8014D800
L_8014D7F8:
    li 0, 0x6
    stw 0, 0x230(31)
L_8014D800:
    li 3, 0x1
    .4byte 0x48000050 # b .L_8014D854
L_8014D808:
    cmplwi 0, 0xd
    .4byte 0x4182000C # beq .L_8014D818
    cmplwi 0, 0x3b
    .4byte 0x4082003C # bne .L_8014D850
L_8014D818:
    lfs 1, 0xc(31)
    li 0, 0x7
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    li 3, 0x1
    stfs 1, 0x284(31)
    lfs 1, 0x10(31)
    stfs 1, 0x288(31)
    lfs 1, 0x14(31)
    stfs 1, 0x28c(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_8014D854
L_8014D850:
    li 3, 0x0
L_8014D854:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8014D868:
    stwu 1, -0x1030(1)
    mflr 0
    stw 0, 0x1034(1)
    stmw 26, 0x1018(1)
    mr 26, 3
    mr 29, 4
    bl SpatialRegistry_GetBase
    lis 4, 0x5741
    lwz 5, 0x4(26)
    addi 4, 4, 0x5250
    addi 6, 1, 0xc
    li 7, -0x1
    bl fn_801F7818
    mr 27, 3
    addi 31, 1, 0xc
    li 30, 0x0
    .4byte 0x4800015C # b .L_8014DA04
L_8014D8AC:
    lwz 4, 0x0(31)
    cmplwi 4, 0x0
    .4byte 0x41820148 # beq .L_8014D9FC
    .4byte 0x41820144 # beq .L_8014D9FC
    lfs 1, 0x10(4)
    lfs 0, 0x4(29)
    lfs 2, 0xc(4)
    fsubs 3, 1, 0
    lfs 1, 0x0(29)
    .4byte 0xC002A188 # lfs f0, lbl_8053D128@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_8014D930
    frsqrte 1, 4
    .4byte 0xC862A210 # lfd f3, lbl_8053D1B0@sda21(r0)
    .4byte 0xC842A218 # lfd f2, lbl_8053D1B8@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_8014D9B4
L_8014D930:
    .4byte 0xC802A220 # lfd f0, lbl_8053D1C0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_8014D948
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_8014D9B4
L_8014D948:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 5, 0x8(1)
    rlwinm 3, 5, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_8014D970
    .4byte 0x40800040 # bge .L_8014D9A0
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8014D988
    .4byte 0x48000034 # b .L_8014D9A0
L_8014D970:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_8014D980
    li 0, 0x1
    .4byte 0x48000028 # b .L_8014D9A4
L_8014D980:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8014D9A4
L_8014D988:
    clrlwi. 0, 5, 9
    .4byte 0x4182000C # beq .L_8014D998
    li 0, 0x5
    .4byte 0x48000010 # b .L_8014D9A4
L_8014D998:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8014D9A4
L_8014D9A0:
    li 0, 0x4
L_8014D9A4:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8014D9B4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_8014D9B4:
    .4byte 0xC002A228 # lfs f0, lbl_8053D1C8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800040 # bge .L_8014D9FC
    lwz 0, 0x90(4)
    addi 26, 4, 0x238
    extrwi. 3, 0, 3, 5
    addi 28, 3, 0x7
    .4byte 0x40820008 # bne .L_8014D9D8
    mr 28, 3
L_8014D9D8:
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    mr 5, 28
    mr 6, 26
    li 7, 0xc
    addi 4, 4, 0x4d42
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8014D9FC:
    addi 31, 31, 0x4
    addi 30, 30, 0x1
L_8014DA04:
    cmpw 30, 27
    .4byte 0x4180FEA4 # blt .L_8014D8AC
    lmw 26, 0x1018(1)
    lwz 0, 0x1034(1)
    mtlr 0
    addi 1, 1, 0x1030
    blr

fn_8014DA20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0xa0(3)
    cmpwi 31, 0x0
    .4byte 0x41800058 # blt .L_8014DA98
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_8014DA98
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x4152
    cmplwi 0, 0x5257
    .4byte 0x40820034 # bne .L_8014DA98
    lwz 3, 0x294(30)
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8013CB44
    lwz 3, 0x298(30)
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8013CB44
L_8014DA98:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8014DAB0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BF650@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BF650@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DB00
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
L_8014DB00:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DB38
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
L_8014DB38:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DB70
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
L_8014DB70:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DBA8
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
L_8014DBA8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DBE0
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
L_8014DBE0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DC18
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
L_8014DC18:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DC50
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
L_8014DC50:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DC88
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
L_8014DC88:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8014DCC0
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
L_8014DCC0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_801469A4
    .4byte fn_8014792C
    .4byte fn_8014AB08
    .4byte fn_8014DAB0

