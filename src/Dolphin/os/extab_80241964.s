# Fresh project-wide gap hunt (beyond the closed 901KB/dispatch-cross-
# check territories): 34 functions, 20,908 bytes, fully contiguous.
# Found+verified via a full-DOL gapcheck.py scan (both real .text
# sections) followed by spanwalk.py/resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000B358
etb_8000B358:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B358, 8

.global etb_8000B360
etb_8000B360:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B360, 8

.global etb_8000B368
etb_8000B368:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B368, 8

.global etb_8000B370
etb_8000B370:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B370, 8

.global etb_8000B378
etb_8000B378:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B378, 8

.global etb_8000B380
etb_8000B380:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B380, 8

.global etb_8000B388
etb_8000B388:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000B388, 8

.global etb_8000B390
etb_8000B390:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B390, 8

.global etb_8000B398
etb_8000B398:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000B398, 8

.global etb_8000B3A0
etb_8000B3A0:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B3A0, 8

.global etb_8000B3A8
etb_8000B3A8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B3A8, 8

.global etb_8000B3B0
etb_8000B3B0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B3B0, 8

.global etb_8000B3B8
etb_8000B3B8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B3B8, 8

.global etb_8000B3C0
etb_8000B3C0:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_8000B3C0, 8

.global etb_8000B3C8
etb_8000B3C8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B3C8, 8

.global etb_8000B3D0
etb_8000B3D0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B3D0, 8

.global etb_8000B3D8
etb_8000B3D8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B3D8, 8

.global etb_8000B3E0
etb_8000B3E0:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B3E0, 8

.global etb_8000B3E8
etb_8000B3E8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B3E8, 8

.global etb_8000B3F0
etb_8000B3F0:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B3F0, 8

.global etb_8000B3F8
etb_8000B3F8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B3F8, 8

.global etb_8000B400
etb_8000B400:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B400, 8

.global etb_8000B408
etb_8000B408:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B408, 8

.global etb_8000B410
etb_8000B410:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B410, 8

.global etb_8000B418
etb_8000B418:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B418, 8

.global etb_8000B420
etb_8000B420:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B420, 8

.global etb_8000B428
etb_8000B428:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B428, 8

.global etb_8000B430
etb_8000B430:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B430, 8

.global etb_8000B438
etb_8000B438:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B438, 8

.global etb_8000B440
etb_8000B440:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B440, 8

.global etb_8000B448
etb_8000B448:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B448, 8

.section extabindex, "a"
.balign 4
.global eti_800197F8
eti_800197F8:
    .4byte fn_80241964
    .4byte 0x000001E0
    .4byte etb_8000B358
.size eti_800197F8, 12

.global eti_80019804
eti_80019804:
    .4byte fn_80241B44
    .4byte 0x0000005C
    .4byte etb_8000B360
.size eti_80019804, 12

.global eti_80019810
eti_80019810:
    .4byte fn_80241BA0
    .4byte 0x00000230
    .4byte etb_8000B368
.size eti_80019810, 12

.global eti_8001981C
eti_8001981C:
    .4byte fn_80241DD0
    .4byte 0x00000058
    .4byte etb_8000B370
.size eti_8001981C, 12

.global eti_80019828
eti_80019828:
    .4byte fn_80241E28
    .4byte 0x0000003C
    .4byte etb_8000B378
.size eti_80019828, 12

.global eti_80019834
eti_80019834:
    .4byte fn_80241E64
    .4byte 0x00000460
    .4byte etb_8000B380
.size eti_80019834, 12

.global eti_80019840
eti_80019840:
    .4byte fn_802422D0
    .4byte 0x00000290
    .4byte etb_8000B388
.size eti_80019840, 12

.global eti_8001984C
eti_8001984C:
    .4byte fn_80242560
    .4byte 0x000000C4
    .4byte etb_8000B390
.size eti_8001984C, 12

.global eti_80019858
eti_80019858:
    .4byte fn_80242624
    .4byte 0x000000BC
    .4byte etb_8000B398
.size eti_80019858, 12

.global eti_80019864
eti_80019864:
    .4byte fn_80242704
    .4byte 0x0000023C
    .4byte etb_8000B3A0
.size eti_80019864, 12

.global eti_80019870
eti_80019870:
    .4byte fn_80242940
    .4byte 0x00000280
    .4byte etb_8000B3A8
.size eti_80019870, 12

.global eti_8001987C
eti_8001987C:
    .4byte fn_80242BC0
    .4byte 0x000000F0
    .4byte etb_8000B3B0
.size eti_8001987C, 12

.global eti_80019888
eti_80019888:
    .4byte fn_80242CB0
    .4byte 0x000000FC
    .4byte etb_8000B3B8
.size eti_80019888, 12

.global eti_80019894
eti_80019894:
    .4byte fn_80242DAC
    .4byte 0x000003E8
    .4byte etb_8000B3C0
.size eti_80019894, 12

.global eti_800198A0
eti_800198A0:
    .4byte fn_80243194
    .4byte 0x00000024
    .4byte etb_8000B3C8
.size eti_800198A0, 12

.global eti_800198AC
eti_800198AC:
    .4byte fn_802431B8
    .4byte 0x00000074
    .4byte etb_8000B3D0
.size eti_800198AC, 12

.global eti_800198B8
eti_800198B8:
    .4byte fn_80243234
    .4byte 0x00000A30
    .4byte etb_8000B3D8
.size eti_800198B8, 12

.global eti_800198C4
eti_800198C4:
    .4byte fn_80243C64
    .4byte 0x000009CC
    .4byte etb_8000B3E0
.size eti_800198C4, 12

.global eti_800198D0
eti_800198D0:
    .4byte fn_80244630
    .4byte 0x000009CC
    .4byte etb_8000B3E8
.size eti_800198D0, 12

.global eti_800198DC
eti_800198DC:
    .4byte fn_80244FFC
    .4byte 0x0000023C
    .4byte etb_8000B3F0
.size eti_800198DC, 12

.global eti_800198E8
eti_800198E8:
    .4byte fn_80245238
    .4byte 0x00000288
    .4byte etb_8000B3F8
.size eti_800198E8, 12

.global eti_800198F4
eti_800198F4:
    .4byte fn_802454C0
    .4byte 0x0000023C
    .4byte etb_8000B400
.size eti_800198F4, 12

.global eti_80019900
eti_80019900:
    .4byte fn_802456FC
    .4byte 0x0000023C
    .4byte etb_8000B408
.size eti_80019900, 12

.global eti_8001990C
eti_8001990C:
    .4byte fn_80245938
    .4byte 0x0000023C
    .4byte etb_8000B410
.size eti_8001990C, 12

.global eti_80019918
eti_80019918:
    .4byte fn_80245B74
    .4byte 0x0000023C
    .4byte etb_8000B418
.size eti_80019918, 12

.global eti_80019924
eti_80019924:
    .4byte fn_80245DB0
    .4byte 0x0000023C
    .4byte etb_8000B420
.size eti_80019924, 12

.global eti_80019930
eti_80019930:
    .4byte fn_80245FEC
    .4byte 0x0000023C
    .4byte etb_8000B428
.size eti_80019930, 12

.global eti_8001993C
eti_8001993C:
    .4byte fn_80246228
    .4byte 0x0000023C
    .4byte etb_8000B430
.size eti_8001993C, 12

.global eti_80019948
eti_80019948:
    .4byte fn_80246464
    .4byte 0x00000250
    .4byte etb_8000B438
.size eti_80019948, 12

.global eti_80019954
eti_80019954:
    .4byte fn_802466B4
    .4byte 0x00000250
    .4byte etb_8000B440
.size eti_80019954, 12

.global eti_80019960
eti_80019960:
    .4byte fn_80246904
    .4byte 0x0000020C
    .4byte etb_8000B448
.size eti_80019960, 12

.text
.balign 4
.global fn_80241964
.global fn_80241B44
.global fn_80241BA0
.global fn_80241DD0
.global fn_80241E28
.global fn_80241E64
.global fn_802422C4
.global fn_802422D0
.global fn_80242560
.global fn_80242624
.global fn_802426E0
.global fn_80242704
.global fn_80242940
.global fn_80242BC0
.global fn_80242CB0
.global fn_80242DAC
.global fn_80243194
.global fn_802431B8
.global fn_8024322C
.global fn_80243234
.global fn_80243C64
.global fn_80244630
.global fn_80244FFC
.global fn_80245238
.global fn_802454C0
.global fn_802456FC
.global fn_80245938
.global fn_80245B74
.global fn_80245DB0
.global fn_80245FEC
.global fn_80246228
.global fn_80246464
.global fn_802466B4
.global fn_80246904

fn_80241964:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    mr 30, 29
    stw 28, 0x10(1)
L_8024198C:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4082000C # bne .L_802419A0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80241A00
L_802419A0:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802419F0
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_802419D4
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_80241A00
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80241A00
L_802419D4:
    lwz 28, 0x4(31)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_80241A00
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80241A00
L_802419F0:
    lwz 0, 0xd60(31)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_80241A00
    addi 29, 29, 0x1
L_80241A00:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_8024198C
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80241A1C
    li 3, 0x1
    .4byte 0x4800010C # b .L_80241B24
L_80241A1C:
    li 30, 0x0
    mr 29, 30
L_80241A24:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_80241A38
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_80241A98
L_80241A38:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80241A88
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_80241A6C
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_80241A98
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_80241A98
L_80241A6C:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_80241A98
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_80241A98
L_80241A88:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_80241A98
    addi 30, 30, 0x1
L_80241A98:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_80241A24
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_80241AB4
    li 3, 0x5
    .4byte 0x4800001C # b .L_80241ACC
L_80241AB4:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80241AC8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80241ACC
L_80241AC8:
    lwz 3, 0x120c(31)
L_80241ACC:
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_80241ADC
    li 3, 0x1
    .4byte 0x4800004C # b .L_80241B24
L_80241ADC:
    li 28, 0x0
L_80241AE0:
    lwz 3, 0x4(31)
    cmpw 28, 3
    .4byte 0x4182002C # beq .L_80241B14
    mr 4, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80241B14
    mr 3, 28
    bl fn_802349EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80241B14
    li 3, 0x0
    .4byte 0x48000014 # b .L_80241B24
L_80241B14:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_80241AE0
    li 3, 0x1
L_80241B24:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80241B44:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800030 # bge .L_80241B88
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lfs 0, 0x164(3)
    stfs 0, 0x0(4)
    lfs 0, 0x168(3)
    stfs 0, 0x4(4)
    lfs 0, 0x16c(3)
    stfs 0, 0x8(4)
    lfs 0, 0x170(3)
    stfs 0, 0xc(4)
    .4byte 0x4800000C # b .L_80241B90
L_80241B88:
    lwz 3, 0xbec(3)
    bl fn_8030AE84
L_80241B90:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80241BA0:
    stwu 1, -0x80(1)
    mflr 0
    cmpwi 4, 0x8
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 5
    .4byte 0x408001D8 # bge .L_80241D90
    clrlwi 0, 6, 24
    cmplwi 0, 0x1
    .4byte 0x408200E8 # bne .L_80241CAC
    lfs 2, 0x4(31)
    addi 4, 1, 0x6c
    lfs 1, 0x0(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x6c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x70(1)
    stfs 0, 0x74(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80241C00
    li 3, 0x1
    .4byte 0x480001C0 # b .L_80241DBC
L_80241C00:
    lfs 2, 0xc(31)
    addi 4, 1, 0x60
    lfs 1, 0x0(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x60(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x64(1)
    stfs 0, 0x68(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80241C38
    li 3, 0x1
    .4byte 0x48000188 # b .L_80241DBC
L_80241C38:
    lfs 2, 0x4(31)
    addi 4, 1, 0x54
    lfs 1, 0x8(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x54(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x58(1)
    stfs 0, 0x5c(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80241C70
    li 3, 0x1
    .4byte 0x48000150 # b .L_80241DBC
L_80241C70:
    lfs 2, 0xc(31)
    addi 4, 1, 0x48
    lfs 1, 0x8(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x48(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x4c(1)
    stfs 0, 0x50(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    .4byte 0x48000114 # b .L_80241DBC
L_80241CAC:
    lfs 2, 0x4(31)
    addi 4, 1, 0x3c
    lfs 1, 0x0(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x3c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x40(1)
    stfs 0, 0x44(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80241CE4
    li 3, 0x0
    .4byte 0x480000DC # b .L_80241DBC
L_80241CE4:
    lfs 2, 0xc(31)
    addi 4, 1, 0x30
    lfs 1, 0x0(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x30(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x34(1)
    stfs 0, 0x38(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80241D1C
    li 3, 0x0
    .4byte 0x480000A4 # b .L_80241DBC
L_80241D1C:
    lfs 2, 0x4(31)
    addi 4, 1, 0x24
    lfs 1, 0x8(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x24(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80241D54
    li 3, 0x0
    .4byte 0x4800006C # b .L_80241DBC
L_80241D54:
    lfs 2, 0xc(31)
    addi 4, 1, 0x18
    lfs 1, 0x8(31)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stfs 1, 0x18(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    .4byte 0x48000030 # b .L_80241DBC
L_80241D90:
    lfs 3, 0x0(31)
    addi 5, 1, 0x8
    lfs 2, 0x4(31)
    lfs 1, 0x8(31)
    lfs 0, 0xc(31)
    stfs 3, 0x8(1)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 3, 0xbec(3)
    bl fn_8030AF10
L_80241DBC:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80241DD0:
    stwu 1, -0x20(1)
    mflr 0
    cmpwi 4, 0x8
    stw 0, 0x24(1)
    .4byte 0x40800018 # bge .L_80241DF8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 5
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    .4byte 0x48000024 # b .L_80241E18
L_80241DF8:
    lfs 0, 0x8(5)
    addi 6, 1, 0x8
    psq_l 1, 0x0(5), 0, 0
    mr 5, 6
    stfs 0, 0x10(1)
    psq_st 1, 0x0(6), 0, 0
    lwz 3, 0xbec(3)
    bl fn_8030B084
L_80241E18:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80241E28:
    stwu 1, -0x20(1)
    mflr 0
    lfs 0, 0x8(5)
    stw 0, 0x24(1)
    addi 6, 1, 0x8
    psq_l 1, 0x0(5), 0, 0
    mr 5, 6
    stfs 0, 0x10(1)
    psq_st 1, 0x0(6), 0, 0
    lwz 3, 0xbec(3)
    bl fn_8030B110
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80241E64:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x1274(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241E9C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1274(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1274(31)
L_80241E9C:
    lwz 0, 0x128c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241EC0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x128c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x128c(31)
L_80241EC0:
    lwz 0, 0x12b0(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241EE4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12b0(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12b0(31)
L_80241EE4:
    lwz 0, 0x12b4(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241F08
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12b4(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12b4(31)
L_80241F08:
    lwz 0, 0x12b8(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241F2C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12b8(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12b8(31)
L_80241F2C:
    lwz 0, 0x12bc(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241F50
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12bc(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12bc(31)
L_80241F50:
    lwz 0, 0x12c4(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241F74
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12c4(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12c4(31)
L_80241F74:
    lwz 0, 0x12c8(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241F98
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12c8(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12c8(31)
L_80241F98:
    lwz 0, 0x12cc(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241FBC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12cc(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12cc(31)
L_80241FBC:
    lwz 0, 0x12e4(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80241FE0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x12e4(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x12e4(31)
L_80241FE0:
    lwz 0, 0x1308(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242004
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1308(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1308(31)
L_80242004:
    lwz 0, 0x132c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242028
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x132c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x132c(31)
L_80242028:
    lwz 0, 0x1350(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8024204C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1350(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1350(31)
L_8024204C:
    lwz 0, 0x1354(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242070
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1354(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1354(31)
L_80242070:
    lwz 0, 0x1358(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242094
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1358(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1358(31)
L_80242094:
    lwz 0, 0x136c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802420B8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x136c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x136c(31)
L_802420B8:
    lwz 0, 0x1370(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802420DC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1370(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1370(31)
L_802420DC:
    lwz 0, 0x135c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242100
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x135c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x135c(31)
L_80242100:
    lwz 0, 0x1368(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242124
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1368(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1368(31)
L_80242124:
    lwz 0, 0x1360(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242148
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1360(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1360(31)
L_80242148:
    lwz 0, 0x1364(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8024216C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1364(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1364(31)
L_8024216C:
    lwz 0, 0x1374(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242190
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1374(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1374(31)
L_80242190:
    lwz 0, 0x1378(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802421B4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1378(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1378(31)
L_802421B4:
    lwz 0, 0x137c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802421D8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x137c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x137c(31)
L_802421D8:
    lwz 0, 0x1380(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802421FC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1380(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1380(31)
L_802421FC:
    lwz 0, 0x1384(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242220
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1384(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1384(31)
L_80242220:
    lwz 0, 0x1388(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242244
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1388(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1388(31)
L_80242244:
    lwz 0, 0x138c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80242268
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x138c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x138c(31)
L_80242268:
    lwz 0, 0x1390(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8024228C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1390(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1390(31)
L_8024228C:
    lwz 0, 0x1394(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802422B0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1394(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1394(31)
L_802422B0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802422C4:
    lwz 3, 0xbf0(3)
    addi 3, 3, 0x14
    blr

fn_802422D0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8024231C
    mr 3, 31
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8024231C
    .4byte 0x806D85D0 # lwz r3, lbl_8053A190@sda21(r0)
    bl fn_8023E724
    mr 4, 3
    mr 3, 31
    bl fn_80270948
    .4byte 0x480000AC # b .L_802423C4
L_8024231C:
    bl GetRoomConfigRecord
    lwz 0, 0x3b4(31)
    lwz 6, 0xcc(3)
    lwz 5, 0xd0(3)
    cmpwi 0, 0x8
    lwz 4, 0xd4(3)
    lwz 0, 0xd8(3)
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 4, 0x28(1)
    stw 0, 0x2c(1)
    .4byte 0x40800054 # bge .L_8024239C
    lfs 2, 0x8(31)
    li 0, 0x0
    lfs 0, 0x20(1)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80242394
    lfs 1, 0xc(31)
    lfs 0, 0x24(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80242394
    lfs 0, 0x28(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80242394
    lfs 0, 0x2c(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80242394
    li 0, 0x1
L_80242394:
    clrlwi. 0, 0, 24
    .4byte 0x4082002C # bne .L_802423C4
L_8024239C:
    .4byte 0x806D85D0 # lwz r3, lbl_8053A190@sda21(r0)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x8(31)
    .4byte 0x806D85D0 # lwz r3, lbl_8053A190@sda21(r0)
    bl fn_8023E724
    lfs 0, 0x4(3)
    li 0, 0x0
    stfs 0, 0xc(31)
    stw 0, 0x3b4(31)
L_802423C4:
    psq_l 2, 0x8(31), 0, 0
    addi 4, 31, 0xcb0
    lfs 0, 0x10(31)
    addi 3, 31, 0xd1c
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    li 0, 0xa
    psq_st 2, 0x2c4(31), 0, 0
    stfs 0, 0x2cc(31)
    psq_l 2, 0x2c4(31), 0, 0
    lfs 0, 0x2cc(31)
    psq_st 2, 0x0(4), 0, 0
    stfs 0, 0xcb8(31)
    psq_l 2, 0x0(4), 0, 0
    lfs 0, 0xcb8(31)
    psq_st 2, 0x0(3), 0, 0
    stfs 0, 0xd24(31)
    stfs 1, 0x344(31)
    stfs 1, 0x348(31)
    stfs 1, 0x34c(31)
    stfs 1, 0x368(31)
    stfs 1, 0x36c(31)
    stfs 1, 0x370(31)
    stw 0, 0xd54(31)
    lbz 0, 0x1216(31)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_802424A0
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80242444
    mr 3, 31
    bl fn_8024B2E0
    .4byte 0x48000060 # b .L_802424A0
L_80242444:
    li 5, 0x0
    li 0, 0x31
    mr 6, 31
    li 4, 0x1
    mr 3, 5
    mtctr 0
L_8024245C:
    lfs 0, 0x8(31)
    stfs 0, 0x38(6)
    lfs 0, 0xc(31)
    stfs 0, 0x3c(6)
    lfs 0, 0x10(31)
    stfs 0, 0x40(6)
    lfs 0, 0x10(31)
    fcmpo cr0, 0, 1
    .4byte 0x40810010 # ble .L_8024248C
    addi 0, 5, 0x284
    stbx 4, 31, 0
    .4byte 0x4800000C # b .L_80242494
L_8024248C:
    addi 0, 5, 0x284
    stbx 3, 31, 0
L_80242494:
    addi 6, 6, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FFC0 # bdnz .L_8024245C
L_802424A0:
    mr 3, 31
    bl fn_8025F500
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_802424F4
    lwz 3, 0xd6c(31)
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x40820038 # bne .L_802424F4
    bl SpatialRegistry_GetBase
    lwz 4, 0xd68(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820070 # beq .L_80242540
    psq_l 1, 0x8(31), 0, 0
    addi 4, 1, 0x14
    lfs 0, 0x10(31)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x1c(1)
    lwz 5, 0x3b4(31)
    bl fn_802C1D30
    .4byte 0x48000050 # b .L_80242540
L_802424F4:
    lwz 30, 0xd88(31)
    cmpwi 30, 0x0
    .4byte 0x41800044 # blt .L_80242540
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80242540
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x40820020 # bne .L_80242540
    psq_l 1, 0x8(31), 0, 0
    addi 4, 1, 0x8
    lfs 0, 0x10(31)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    lwz 5, 0x3b4(31)
    bl fn_802C1D30
L_80242540:
    li 0, 0x5
    stw 0, 0x122c(31)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80242560:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    bl fn_8025F500
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802425B4
    lwz 3, 0xd6c(28)
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x4082001C # bne .L_802425B4
    bl SpatialRegistry_GetBase
    lwz 4, 0xd68(28)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802425B4
    bl fn_802C1778
L_802425B4:
    li 30, -0x1
    lis 31, 0x4b45
L_802425BC:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x5930
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x4180002C # blt .L_802425FC
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr 0, 3
    mr. 29, 0
    .4byte 0x4182FFD4 # beq .L_802425BC
    bl fn_802C1674
    mr 3, 29
    bl fn_802C1778
    .4byte 0x4BFFFFC4 # b .L_802425BC
L_802425FC:
    li 0, 0x3
    stw 0, 0x3b0(28)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80242624:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    li 4, 0x4d
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80242658
    li 0, 0x0
    .4byte 0x48000048 # b .L_8024269C
L_80242658:
    li 3, 0x4d
    li 0, 0x1
    stw 3, 0x1244(30)
    stb 0, 0x124c(30)
    stb 0, 0x124d(30)
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80242698
    lbz 0, 0xcfe(30)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80242698
    lwz 0, 0x1244(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80242698
    li 0, 0x0
    stb 0, 0xcfe(30)
L_80242698:
    li 0, 0x1
L_8024269C:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_802426C4
    lfs 0, 0x0(31)
    li 3, 0x1
    lfs 1, 0x4(31)
    stfs 0, 0x374(30)
    lfs 0, 0x8(31)
    stfs 1, 0x378(30)
    stfs 0, 0x37c(30)
    .4byte 0x48000008 # b .L_802426C8
L_802426C4:
    li 3, 0x0
L_802426C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802426E0:
    lwz 0, 0xd8c(3)
    cmpw 0, 4
    .4byte 0x4182000C # beq .L_802426F4
    li 3, 0x0
    blr
L_802426F4:
    li 0, 0x1
    stb 0, 0xd90(3)
    li 3, 0x1
    blr

fn_80242704:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x1
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    mr 31, 4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(30)
    lbz 3, 0x82(3)
    slw 0, 5, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_8024274C
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8024274C
    .4byte 0x48000144 # b .L_8024288C
L_8024274C:
    li 28, 0x0
    mr 27, 28
L_80242754:
    lwz 0, 0x4(30)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80242768
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_802427C8
L_80242768:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802427B8
    lwz 26, 0xd60(30)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024279C
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_802427C8
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_802427C8
L_8024279C:
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_802427C8
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_802427C8
L_802427B8:
    lwz 0, 0xd60(30)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_802427C8
    addi 28, 28, 0x1
L_802427C8:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80242754
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_802427E4
    li 3, 0x5
    .4byte 0x4800001C # b .L_802427FC
L_802427E4:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802427F8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802427FC
L_802427F8:
    lwz 3, 0x120c(30)
L_802427FC:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_80242880
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024281C
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_80242820
L_8024281C:
    lwz 29, 0x1224(30)
L_80242820:
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80242834
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024286C
L_80242834:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_8024285C
L_80242840:
    lwz 26, 0xd60(30)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80242858
    addi 27, 27, 0x1
L_80242858:
    addi 28, 28, 0x1
L_8024285C:
    lwz 0, 0x4(30)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80242840
    addi 0, 27, 0x1
L_8024286C:
    subf 3, 29, 0
    subf 0, 0, 29
    or 0, 3, 0
    srwi 5, 0, 31
    .4byte 0x48000010 # b .L_8024288C
L_80242880:
    lwz 0, 0xd60(30)
    srwi 0, 0, 31
    xori 5, 0, 0x1
L_8024288C:
    clrlwi. 0, 5, 24
    .4byte 0x4182000C # beq .L_8024289C
    li 3, 0x0
    .4byte 0x48000094 # b .L_8024292C
L_8024289C:
    mr 3, 30
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802428B4
    li 3, 0x0
    .4byte 0x4800007C # b .L_8024292C
L_802428B4:
    mr 3, 30
    li 4, 0x4c
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802428D0
    li 0, 0x0
    .4byte 0x48000048 # b .L_80242914
L_802428D0:
    li 3, 0x4c
    li 0, 0x1
    stw 3, 0x1244(30)
    stb 0, 0x124c(30)
    stb 0, 0x124d(30)
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80242910
    lbz 0, 0xcfe(30)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80242910
    lwz 0, 0x1244(30)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80242910
    li 0, 0x0
    stb 0, 0xcfe(30)
L_80242910:
    li 0, 0x1
L_80242914:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_80242928
    stw 31, 0xd8c(30)
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024292C
L_80242928:
    li 3, 0x0
L_8024292C:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80242940:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x40820250 # bne .L_80242BAC
    lwz 3, 0x1240(31)
    li 0, 0x0
    cmpwi 3, 0x4a
    .4byte 0x4182000C # beq .L_80242978
    cmpwi 3, 0x4b
    .4byte 0x40820008 # bne .L_8024297C
L_80242978:
    li 0, 0x1
L_8024297C:
    clrlwi. 0, 0, 24
    .4byte 0x4182022C # beq .L_80242BAC
    lwz 3, 0xbe4(31)
    cmpwi 3, 0x0
    .4byte 0x408101D4 # ble .L_80242B60
    subi 0, 3, 0x1
    li 4, 0x1
    stw 0, 0xbe4(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_802429C8
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802429C8
    .4byte 0x48000144 # b .L_80242B08
L_802429C8:
    li 29, 0x0
    mr 28, 29
L_802429D0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802429E4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80242A44
L_802429E4:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80242A34
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80242A18
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80242A44
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80242A44
L_80242A18:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80242A44
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80242A44
L_80242A34:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80242A44
    addi 29, 29, 0x1
L_80242A44:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802429D0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80242A60
    li 3, 0x5
    .4byte 0x4800001C # b .L_80242A78
L_80242A60:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80242A74
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80242A78
L_80242A74:
    lwz 3, 0x120c(31)
L_80242A78:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_80242AFC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80242A98
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80242A9C
L_80242A98:
    lwz 30, 0x1224(31)
L_80242A9C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80242AB0
    li 0, 0x0
    .4byte 0x4800003C # b .L_80242AE8
L_80242AB0:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80242AD8
L_80242ABC:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80242AD4
    addi 28, 28, 0x1
L_80242AD4:
    addi 29, 29, 0x1
L_80242AD8:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80242ABC
    addi 0, 28, 0x1
L_80242AE8:
    subf 3, 30, 0
    subf 0, 0, 30
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_80242B08
L_80242AFC:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_80242B08:
    clrlwi. 0, 4, 24
    .4byte 0x40820054 # bne .L_80242B60
    lwz 4, 0xbe4(31)
    cmpwi 4, 0x0
    .4byte 0x40810048 # ble .L_80242B60
    lis 3, 0x8889
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 0, 0, 4
    .4byte 0x40820020 # bne .L_80242B60
    lwz 3, 0x4(31)
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80242B60
    lwz 3, 0x4(31)
    li 4, 0x2
    bl fn_803037D4
L_80242B60:
    lbz 0, 0xbe8(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80242B8C
    lwz 0, 0xbe4(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_80242B8C
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_80242B8C
    mr 3, 31
    bl fn_8028FC2C
L_80242B8C:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80242BAC
    lwz 0, 0xbe4(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80242BAC
    li 0, 0x0
    stw 0, 0xbe4(31)
L_80242BAC:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80242BC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_80242C9C
    lwz 3, 0xbd8(31)
    cmpwi 3, 0x0
    .4byte 0x4081005C # ble .L_80242C44
    subi 0, 3, 0x1
    stw 0, 0xbd8(31)
    lwz 4, 0xbd8(31)
    cmpwi 4, 0x0
    .4byte 0x40810048 # ble .L_80242C44
    lis 3, 0x8889
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 0, 0, 4
    .4byte 0x40820020 # bne .L_80242C44
    lwz 3, 0x4(31)
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80242C44
    lwz 3, 0x4(31)
    li 4, 0x2
    bl fn_803037D4
L_80242C44:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800030 # bge .L_80242C7C
    lbz 0, 0xbdc(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80242C7C
    lwz 0, 0xbd8(31)
    cmpwi 0, 0x0
    .4byte 0x41810018 # bgt .L_80242C7C
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_80242C7C
    mr 3, 31
    bl fn_8028FBA0
L_80242C7C:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80242C9C
    lwz 0, 0xbd8(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80242C9C
    li 0, 0x0
    stw 0, 0xbd8(31)
L_80242C9C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80242CB0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0x43e(3)
    cmplwi 0, 0x1
    .4byte 0x408200CC # bne .L_80242D98
    lwz 3, 0x1240(31)
    li 0, 0x0
    cmpwi 3, 0x0
    .4byte 0x41820034 # beq .L_80242D10
    cmpwi 3, 0x2
    .4byte 0x4182002C # beq .L_80242D10
    cmpwi 3, 0x3
    .4byte 0x41820024 # beq .L_80242D10
    cmpwi 3, 0x4
    .4byte 0x4182001C # beq .L_80242D10
    cmpwi 3, 0x8
    .4byte 0x41820014 # beq .L_80242D10
    cmpwi 3, 0x4a
    .4byte 0x4182000C # beq .L_80242D10
    cmpwi 3, 0x4b
    .4byte 0x40820008 # bne .L_80242D14
L_80242D10:
    li 0, 0x1
L_80242D14:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80242D24
    cmpwi 3, 0x12
    .4byte 0x40820078 # bne .L_80242D98
L_80242D24:
    cmpwi 3, 0x1
    li 0, 0x0
    .4byte 0x41820018 # beq .L_80242D44
    lhz 3, 0x3c4(31)
    cmplwi 3, 0x1bf
    .4byte 0x41800010 # blt .L_80242D48
    cmplwi 3, 0x1c6
    .4byte 0x40800008 # bge .L_80242D48
L_80242D44:
    li 0, 0x1
L_80242D48:
    clrlwi. 0, 0, 24
    .4byte 0x4082004C # bne .L_80242D98
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x40800010 # bge .L_80242D68
    li 0, 0x0
    stb 0, 0x43e(31)
    .4byte 0x48000034 # b .L_80242D98
L_80242D68:
    bl fn_80238430
    lfs 0, 0x0(3)
    addi 4, 1, 0x8
    stfs 0, 0x8(1)
    lfs 0, 0x4(3)
    mr 3, 31
    stfs 0, 0xc(1)
    bl fn_8026E5F8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80242D98
    li 0, 0x0
    stb 0, 0x43e(31)
L_80242D98:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80242DAC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stfd 29, 0x10(1)
    psq_st 29, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 4, 0x3b4(3)
    addi 3, 30, 0x8
    bl fn_80226850
    mr 31, 3
    clrlwi 0, 3, 16
    cmplwi 0, 0xb7
    .4byte 0x40820018 # bne .L_80242E0C
    lfs 1, 0x414(30)
    .4byte 0xC002D098 # lfs f0, lbl_80540038@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x414(30)
    .4byte 0x480001B8 # b .L_80242FC0
L_80242E0C:
    cmplwi 0, 0xb6
    .4byte 0x40820018 # bne .L_80242E28
    lfs 1, 0x414(30)
    .4byte 0xC002D098 # lfs f0, lbl_80540038@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x414(30)
    .4byte 0x4800019C # b .L_80242FC0
L_80242E28:
    cmplwi 0, 0xb5
    .4byte 0x40820018 # bne .L_80242E44
    lfs 1, 0x418(30)
    .4byte 0xC002D098 # lfs f0, lbl_80540038@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x418(30)
    .4byte 0x48000180 # b .L_80242FC0
L_80242E44:
    cmplwi 0, 0xb4
    .4byte 0x40820018 # bne .L_80242E60
    lfs 1, 0x418(30)
    .4byte 0xC002D098 # lfs f0, lbl_80540038@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x418(30)
    .4byte 0x48000164 # b .L_80242FC0
L_80242E60:
    cmplwi 0, 0x98
    .4byte 0x40820018 # bne .L_80242E7C
    lfs 1, 0x414(30)
    .4byte 0xC002D09C # lfs f0, lbl_8054003C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x414(30)
    .4byte 0x48000148 # b .L_80242FC0
L_80242E7C:
    cmplwi 0, 0x97
    .4byte 0x40820018 # bne .L_80242E98
    lfs 1, 0x414(30)
    .4byte 0xC002D09C # lfs f0, lbl_8054003C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x414(30)
    .4byte 0x4800012C # b .L_80242FC0
L_80242E98:
    cmplwi 0, 0x96
    .4byte 0x40820018 # bne .L_80242EB4
    lfs 1, 0x418(30)
    .4byte 0xC002D09C # lfs f0, lbl_8054003C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x418(30)
    .4byte 0x48000110 # b .L_80242FC0
L_80242EB4:
    cmplwi 0, 0x95
    .4byte 0x40820018 # bne .L_80242ED0
    lfs 1, 0x418(30)
    .4byte 0xC002D09C # lfs f0, lbl_8054003C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x418(30)
    .4byte 0x480000F4 # b .L_80242FC0
L_80242ED0:
    addi 3, 30, 0x414
    bl PSVECMag
    fmr 29, 1
    .4byte 0xC002D098 # lfs f0, lbl_80540038@sda21(r0)
    .4byte 0xC042D094 # lfs f2, lbl_80540034@sda21(r0)
    fsubs 29, 29, 0
    fcmpo cr0, 29, 2
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80242F04
    stfs 2, 0x414(30)
    stfs 2, 0x418(30)
    stfs 2, 0x41c(30)
    .4byte 0x4800009C # b .L_80242F9C
L_80242F04:
    psq_l 3, 0x414(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x41c(30)
    ps_mul 3, 3, 3
    .4byte 0xC022D0A0 # lfs f1, lbl_80540040@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80242F84
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80242F48
    fmr 30, 4
    .4byte 0x48000028 # b .L_80242F6C
L_80242F48:
    frsqrte 3, 4
    .4byte 0xC042D0A4 # lfs f2, lbl_80540044@sda21(r0)
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_80242F6C:
    psq_l 1, 0x414(30), 0, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x414(30), 0, 0
    psq_st 0, 0x41c(30), 1, 0
L_80242F84:
    psq_l 1, 0x414(30), 0, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x414(30), 0, 0
    psq_st 0, 0x41c(30), 1, 0
L_80242F9C:
    psq_l 1, 0x8(30), 0, 0
    psq_l 0, 0x414(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(30), 0, 0
    psq_l 1, 0x10(30), 1, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x10(30), 1, 0
    .4byte 0x480001A8 # b .L_80243164
L_80242FC0:
    addi 3, 30, 0x414
    bl PSVECMag
    subi 0, 31, 0x96
    clrlwi 0, 0, 16
    cmplwi 0, 0x2
    .4byte 0x40810010 # ble .L_80242FE4
    clrlwi 0, 31, 16
    cmplwi 0, 0x95
    .4byte 0x408200B8 # bne .L_80243098
L_80242FE4:
    .4byte 0xC002D0AC # lfs f0, lbl_8054004C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820154 # bne .L_80243144
    psq_l 2, 0x414(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x41c(30)
    ps_mul 2, 2, 2
    .4byte 0xC022D0A0 # lfs f1, lbl_80540040@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80243078
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8024303C
    fmr 31, 4
    .4byte 0x48000028 # b .L_80243060
L_8024303C:
    frsqrte 3, 4
    .4byte 0xC042D0A4 # lfs f2, lbl_80540044@sda21(r0)
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80243060:
    psq_l 1, 0x414(30), 0, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x414(30), 0, 0
    psq_st 0, 0x41c(30), 1, 0
L_80243078:
    .4byte 0xC3C2D0AC # lfs f30, lbl_8054004C@sda21(r0)
    psq_l 1, 0x414(30), 0, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x414(30), 0, 0
    psq_st 0, 0x41c(30), 1, 0
    .4byte 0x480000B0 # b .L_80243144
L_80243098:
    .4byte 0xC042D0A4 # lfs f2, lbl_80540044@sda21(r0)
    fcmpo cr0, 1, 2
    cror eq, gt, eq
    .4byte 0x408200A0 # bne .L_80243144
    psq_l 3, 0x414(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x41c(30)
    ps_mul 3, 3, 3
    .4byte 0xC022D0A0 # lfs f1, lbl_80540040@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 29, 29, 3
    fmuls 0, 1, 0
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80243128
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802430F0
    fmr 30, 4
    .4byte 0x48000024 # b .L_80243110
L_802430F0:
    frsqrte 3, 4
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_80243110:
    psq_l 1, 0x414(30), 0, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x414(30), 0, 0
    psq_st 0, 0x41c(30), 1, 0
L_80243128:
    .4byte 0xC3E2D0A4 # lfs f31, lbl_80540044@sda21(r0)
    psq_l 1, 0x414(30), 0, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x414(30), 0, 0
    psq_st 0, 0x41c(30), 1, 0
L_80243144:
    psq_l 1, 0x8(30), 0, 0
    psq_l 0, 0x414(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(30), 0, 0
    psq_l 1, 0x10(30), 1, 0
    psq_l 0, 0x41c(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x10(30), 1, 0
L_80243164:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    psq_l 29, 0x18(1), 0, 0
    lfd 29, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x44(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80243194:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x4(3)
    bl fn_8022E438
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802431B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
L_802431D4:
    mr 3, 31
    bl fn_8023697C
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_80243204
    mr 3, 31
    bl fn_8023697C
    lwz 4, 0x4(30)
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80243204
    li 3, 0x1
    .4byte 0x48000014 # b .L_80243214
L_80243204:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFC8 # blt .L_802431D4
    li 3, 0x0
L_80243214:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024322C:
    lwz 3, 0xd08(3)
    blr

fn_80243234:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lwz 28, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024326C
    li 3, 0x0
    .4byte 0x480009E8 # b .L_80243C50
L_8024326C:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_80243460
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024328C
    li 0, 0x0
    .4byte 0x48000058 # b .L_802432E0
L_8024328C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802432A0
    li 0, 0x0
    .4byte 0x48000044 # b .L_802432E0
L_802432A0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802432B4
    li 0, 0x0
    .4byte 0x48000030 # b .L_802432E0
L_802432B4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802432C8
    li 0, 0x0
    .4byte 0x4800001C # b .L_802432E0
L_802432C8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802432DC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802432E0
L_802432DC:
    li 0, 0x1
L_802432E0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802432F0
    li 0, 0x0
    .4byte 0x48000144 # b .L_80243430
L_802432F0:
    li 29, 0x0
    mr 28, 29
L_802432F8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024330C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024336C
L_8024330C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024335C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80243340
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024336C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024336C
L_80243340:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_8024336C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024336C
L_8024335C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024336C
    addi 29, 29, 0x1
L_8024336C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802432F8
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80243388
    li 3, 0x5
    .4byte 0x4800001C # b .L_802433A0
L_80243388:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024339C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802433A0
L_8024339C:
    lwz 3, 0x120c(31)
L_802433A0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80243418
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802433C0
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_802433C4
L_802433C0:
    lwz 30, 0x1224(31)
L_802433C4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802433D8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80243410
L_802433D8:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80243400
L_802433E4:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802433FC
    addi 28, 28, 0x1
L_802433FC:
    addi 29, 29, 0x1
L_80243400:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802433E4
    addi 0, 28, 0x1
L_80243410:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80243424
L_80243418:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024342C
L_80243424:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243430
L_8024342C:
    li 0, 0x1
L_80243430:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243440
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80243454
L_80243440:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80243454:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418101F8 # bgt .L_80243654
L_80243460:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x1
    .4byte 0x40820200 # bne .L_80243668
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243480
    li 0, 0x0
    .4byte 0x48000058 # b .L_802434D4
L_80243480:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243494
    li 0, 0x0
    .4byte 0x48000044 # b .L_802434D4
L_80243494:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802434A8
    li 0, 0x0
    .4byte 0x48000030 # b .L_802434D4
L_802434A8:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802434BC
    li 0, 0x0
    .4byte 0x4800001C # b .L_802434D4
L_802434BC:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802434D0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802434D4
L_802434D0:
    li 0, 0x1
L_802434D4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802434E4
    li 0, 0x0
    .4byte 0x48000144 # b .L_80243624
L_802434E4:
    li 29, 0x0
    mr 28, 29
L_802434EC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80243500
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80243560
L_80243500:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80243550
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80243534
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80243560
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80243560
L_80243534:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80243560
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80243560
L_80243550:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80243560
    addi 29, 29, 0x1
L_80243560:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802434EC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024357C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80243594
L_8024357C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80243590
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80243594
L_80243590:
    lwz 3, 0x120c(31)
L_80243594:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024360C
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802435B4
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_802435B8
L_802435B4:
    lwz 30, 0x1224(31)
L_802435B8:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802435CC
    li 0, 0x0
    .4byte 0x4800003C # b .L_80243604
L_802435CC:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_802435F4
L_802435D8:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802435F0
    addi 29, 29, 0x1
L_802435F0:
    addi 28, 28, 0x1
L_802435F4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_802435D8
    addi 0, 29, 0x1
L_80243604:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80243618
L_8024360C:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243620
L_80243618:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243624
L_80243620:
    li 0, 0x1
L_80243624:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243634
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80243648
L_80243634:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80243648:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_80243668
L_80243654:
    li 0, 0x3
    li 3, 0x1
    stw 0, 0x3e8(31)
    stw 0, 0x3dc(31)
    .4byte 0x480005EC # b .L_80243C50
L_80243668:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_8024385C
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243688
    li 0, 0x0
    .4byte 0x48000058 # b .L_802436DC
L_80243688:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024369C
    li 0, 0x0
    .4byte 0x48000044 # b .L_802436DC
L_8024369C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802436B0
    li 0, 0x0
    .4byte 0x48000030 # b .L_802436DC
L_802436B0:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802436C4
    li 0, 0x0
    .4byte 0x4800001C # b .L_802436DC
L_802436C4:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802436D8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802436DC
L_802436D8:
    li 0, 0x1
L_802436DC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802436EC
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024382C
L_802436EC:
    li 29, 0x0
    mr 28, 29
L_802436F4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80243708
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80243768
L_80243708:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80243758
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024373C
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80243768
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80243768
L_8024373C:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80243768
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80243768
L_80243758:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80243768
    addi 29, 29, 0x1
L_80243768:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802436F4
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80243784
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024379C
L_80243784:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80243798
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024379C
L_80243798:
    lwz 3, 0x120c(31)
L_8024379C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80243814
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802437BC
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_802437C0
L_802437BC:
    lwz 30, 0x1224(31)
L_802437C0:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802437D4
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024380C
L_802437D4:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_802437FC
L_802437E0:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802437F8
    addi 29, 29, 0x1
L_802437F8:
    addi 28, 28, 0x1
L_802437FC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_802437E0
    addi 0, 29, 0x1
L_8024380C:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80243820
L_80243814:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243828
L_80243820:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024382C
L_80243828:
    li 0, 0x1
L_8024382C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024383C
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80243850
L_8024383C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_80243850:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418103EC # bgt .L_80243C44
L_8024385C:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x1
    .4byte 0x408201EC # bne .L_80243A50
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024387C
    li 0, 0x0
    .4byte 0x48000058 # b .L_802438D0
L_8024387C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243890
    li 0, 0x0
    .4byte 0x48000044 # b .L_802438D0
L_80243890:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802438A4
    li 0, 0x0
    .4byte 0x48000030 # b .L_802438D0
L_802438A4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802438B8
    li 0, 0x0
    .4byte 0x4800001C # b .L_802438D0
L_802438B8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802438CC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802438D0
L_802438CC:
    li 0, 0x1
L_802438D0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802438E0
    li 0, 0x0
    .4byte 0x48000144 # b .L_80243A20
L_802438E0:
    li 29, 0x0
    mr 28, 29
L_802438E8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802438FC
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024395C
L_802438FC:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024394C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80243930
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024395C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024395C
L_80243930:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024395C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024395C
L_8024394C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024395C
    addi 29, 29, 0x1
L_8024395C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802438E8
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80243978
    li 3, 0x5
    .4byte 0x4800001C # b .L_80243990
L_80243978:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024398C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80243990
L_8024398C:
    lwz 3, 0x120c(31)
L_80243990:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80243A08
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802439B0
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_802439B4
L_802439B0:
    lwz 30, 0x1224(31)
L_802439B4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802439C8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80243A00
L_802439C8:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_802439F0
L_802439D4:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802439EC
    addi 29, 29, 0x1
L_802439EC:
    addi 28, 28, 0x1
L_802439F0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_802439D4
    addi 0, 29, 0x1
L_80243A00:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80243A14
L_80243A08:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243A1C
L_80243A14:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243A20
L_80243A1C:
    li 0, 0x1
L_80243A20:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243A30
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80243A44
L_80243A30:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_80243A44:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418001F8 # blt .L_80243C44
L_80243A50:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x3
    .4byte 0x408201F4 # bne .L_80243C4C
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243A70
    li 0, 0x0
    .4byte 0x48000058 # b .L_80243AC4
L_80243A70:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243A84
    li 0, 0x0
    .4byte 0x48000044 # b .L_80243AC4
L_80243A84:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243A98
    li 0, 0x0
    .4byte 0x48000030 # b .L_80243AC4
L_80243A98:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243AAC
    li 0, 0x0
    .4byte 0x4800001C # b .L_80243AC4
L_80243AAC:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243AC0
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243AC4
L_80243AC0:
    li 0, 0x1
L_80243AC4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243AD4
    li 0, 0x0
    .4byte 0x48000144 # b .L_80243C14
L_80243AD4:
    li 29, 0x0
    mr 28, 29
L_80243ADC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80243AF0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80243B50
L_80243AF0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80243B40
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80243B24
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80243B50
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80243B50
L_80243B24:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80243B50
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80243B50
L_80243B40:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80243B50
    addi 29, 29, 0x1
L_80243B50:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80243ADC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80243B6C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80243B84
L_80243B6C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80243B80
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80243B84
L_80243B80:
    lwz 3, 0x120c(31)
L_80243B84:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80243BFC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80243BA4
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80243BA8
L_80243BA4:
    lwz 30, 0x1224(31)
L_80243BA8:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80243BBC
    li 0, 0x0
    .4byte 0x4800003C # b .L_80243BF4
L_80243BBC:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_80243BE4
L_80243BC8:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80243BE0
    addi 29, 29, 0x1
L_80243BE0:
    addi 28, 28, 0x1
L_80243BE4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80243BC8
    addi 0, 29, 0x1
L_80243BF4:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80243C08
L_80243BFC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243C10
L_80243C08:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243C14
L_80243C10:
    li 0, 0x1
L_80243C14:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243C24
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80243C38
L_80243C24:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80243C38:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80243C4C
L_80243C44:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80243C50
L_80243C4C:
    li 3, 0x0
L_80243C50:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80243C64:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243C8C
    li 0, 0x0
    .4byte 0x48000058 # b .L_80243CE0
L_80243C8C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243CA0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80243CE0
L_80243CA0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243CB4
    li 0, 0x0
    .4byte 0x48000030 # b .L_80243CE0
L_80243CB4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243CC8
    li 0, 0x0
    .4byte 0x4800001C # b .L_80243CE0
L_80243CC8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243CDC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243CE0
L_80243CDC:
    li 0, 0x1
L_80243CE0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243CF0
    li 0, 0x0
    .4byte 0x48000144 # b .L_80243E30
L_80243CF0:
    li 29, 0x0
    mr 28, 29
L_80243CF8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80243D0C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80243D6C
L_80243D0C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80243D5C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80243D40
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80243D6C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80243D6C
L_80243D40:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80243D6C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80243D6C
L_80243D5C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80243D6C
    addi 29, 29, 0x1
L_80243D6C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80243CF8
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80243D88
    li 3, 0x5
    .4byte 0x4800001C # b .L_80243DA0
L_80243D88:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80243D9C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80243DA0
L_80243D9C:
    lwz 3, 0x120c(31)
L_80243DA0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80243E18
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80243DC0
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80243DC4
L_80243DC0:
    lwz 30, 0x1224(31)
L_80243DC4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80243DD8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80243E10
L_80243DD8:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80243E00
L_80243DE4:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80243DFC
    addi 28, 28, 0x1
L_80243DFC:
    addi 29, 29, 0x1
L_80243E00:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80243DE4
    addi 0, 28, 0x1
L_80243E10:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80243E24
L_80243E18:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243E2C
L_80243E24:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243E30
L_80243E2C:
    li 0, 0x1
L_80243E30:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243E40
    li 3, 0x0
    .4byte 0x480007E0 # b .L_8024461C
L_80243E40:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_80244034
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243E60
    li 0, 0x0
    .4byte 0x48000058 # b .L_80243EB4
L_80243E60:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243E74
    li 0, 0x0
    .4byte 0x48000044 # b .L_80243EB4
L_80243E74:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80243E88
    li 0, 0x0
    .4byte 0x48000030 # b .L_80243EB4
L_80243E88:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243E9C
    li 0, 0x0
    .4byte 0x4800001C # b .L_80243EB4
L_80243E9C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80243EB0
    li 0, 0x0
    .4byte 0x48000008 # b .L_80243EB4
L_80243EB0:
    li 0, 0x1
L_80243EB4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80243EC4
    li 0, 0x0
    .4byte 0x48000144 # b .L_80244004
L_80243EC4:
    li 29, 0x0
    mr 28, 29
L_80243ECC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80243EE0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80243F40
L_80243EE0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80243F30
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80243F14
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80243F40
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80243F40
L_80243F14:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80243F40
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80243F40
L_80243F30:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80243F40
    addi 29, 29, 0x1
L_80243F40:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80243ECC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80243F5C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80243F74
L_80243F5C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80243F70
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80243F74
L_80243F70:
    lwz 3, 0x120c(31)
L_80243F74:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80243FEC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80243F94
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80243F98
L_80243F94:
    lwz 30, 0x1224(31)
L_80243F98:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80243FAC
    li 0, 0x0
    .4byte 0x4800003C # b .L_80243FE4
L_80243FAC:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_80243FD4
L_80243FB8:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80243FD0
    addi 29, 29, 0x1
L_80243FD0:
    addi 28, 28, 0x1
L_80243FD4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80243FB8
    addi 0, 29, 0x1
L_80243FE4:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80243FF8
L_80243FEC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244000
L_80243FF8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244004
L_80244000:
    li 0, 0x1
L_80244004:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244014
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80244028
L_80244014:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_80244028:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418005E0 # blt .L_80244610
L_80244034:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x1
    .4byte 0x408201EC # bne .L_80244228
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244054
    li 0, 0x0
    .4byte 0x48000058 # b .L_802440A8
L_80244054:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244068
    li 0, 0x0
    .4byte 0x48000044 # b .L_802440A8
L_80244068:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024407C
    li 0, 0x0
    .4byte 0x48000030 # b .L_802440A8
L_8024407C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244090
    li 0, 0x0
    .4byte 0x4800001C # b .L_802440A8
L_80244090:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802440A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802440A8
L_802440A4:
    li 0, 0x1
L_802440A8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802440B8
    li 0, 0x0
    .4byte 0x48000144 # b .L_802441F8
L_802440B8:
    li 29, 0x0
    mr 28, 29
L_802440C0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802440D4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80244134
L_802440D4:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80244124
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80244108
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80244134
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80244134
L_80244108:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80244134
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80244134
L_80244124:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80244134
    addi 29, 29, 0x1
L_80244134:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802440C0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244150
    li 3, 0x5
    .4byte 0x4800001C # b .L_80244168
L_80244150:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80244164
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80244168
L_80244164:
    lwz 3, 0x120c(31)
L_80244168:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802441E0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80244188
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024418C
L_80244188:
    lwz 30, 0x1224(31)
L_8024418C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802441A0
    li 0, 0x0
    .4byte 0x4800003C # b .L_802441D8
L_802441A0:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_802441C8
L_802441AC:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802441C4
    addi 29, 29, 0x1
L_802441C4:
    addi 28, 28, 0x1
L_802441C8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_802441AC
    addi 0, 29, 0x1
L_802441D8:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802441EC
L_802441E0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802441F4
L_802441EC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802441F8
L_802441F4:
    li 0, 0x1
L_802441F8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244208
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_8024421C
L_80244208:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_8024421C:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418103EC # bgt .L_80244610
L_80244228:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x408201EC # bne .L_8024441C
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244248
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024429C
L_80244248:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024425C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024429C
L_8024425C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244270
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024429C
L_80244270:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244284
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024429C
L_80244284:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244298
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024429C
L_80244298:
    li 0, 0x1
L_8024429C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802442AC
    li 0, 0x0
    .4byte 0x48000144 # b .L_802443EC
L_802442AC:
    li 29, 0x0
    mr 28, 29
L_802442B4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802442C8
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80244328
L_802442C8:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80244318
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802442FC
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80244328
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80244328
L_802442FC:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80244328
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80244328
L_80244318:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80244328
    addi 29, 29, 0x1
L_80244328:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802442B4
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244344
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024435C
L_80244344:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80244358
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024435C
L_80244358:
    lwz 3, 0x120c(31)
L_8024435C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802443D4
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024437C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80244380
L_8024437C:
    lwz 30, 0x1224(31)
L_80244380:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80244394
    li 0, 0x0
    .4byte 0x4800003C # b .L_802443CC
L_80244394:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_802443BC
L_802443A0:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802443B8
    addi 29, 29, 0x1
L_802443B8:
    addi 28, 28, 0x1
L_802443BC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_802443A0
    addi 0, 29, 0x1
L_802443CC:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802443E0
L_802443D4:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802443E8
L_802443E0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802443EC
L_802443E8:
    li 0, 0x1
L_802443EC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802443FC
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80244410
L_802443FC:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80244410:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418101F8 # bgt .L_80244610
L_8024441C:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x3
    .4byte 0x408201F4 # bne .L_80244618
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024443C
    li 0, 0x0
    .4byte 0x48000058 # b .L_80244490
L_8024443C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244450
    li 0, 0x0
    .4byte 0x48000044 # b .L_80244490
L_80244450:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244464
    li 0, 0x0
    .4byte 0x48000030 # b .L_80244490
L_80244464:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244478
    li 0, 0x0
    .4byte 0x4800001C # b .L_80244490
L_80244478:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024448C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244490
L_8024448C:
    li 0, 0x1
L_80244490:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802444A0
    li 0, 0x0
    .4byte 0x48000144 # b .L_802445E0
L_802444A0:
    li 29, 0x0
    mr 28, 29
L_802444A8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802444BC
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024451C
L_802444BC:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024450C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802444F0
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024451C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024451C
L_802444F0:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024451C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024451C
L_8024450C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024451C
    addi 29, 29, 0x1
L_8024451C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802444A8
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244538
    li 3, 0x5
    .4byte 0x4800001C # b .L_80244550
L_80244538:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024454C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80244550
L_8024454C:
    lwz 3, 0x120c(31)
L_80244550:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802445C8
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80244570
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80244574
L_80244570:
    lwz 30, 0x1224(31)
L_80244574:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80244588
    li 0, 0x0
    .4byte 0x4800003C # b .L_802445C0
L_80244588:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_802445B0
L_80244594:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802445AC
    addi 29, 29, 0x1
L_802445AC:
    addi 28, 28, 0x1
L_802445B0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80244594
    addi 0, 29, 0x1
L_802445C0:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802445D4
L_802445C8:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802445DC
L_802445D4:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802445E0
L_802445DC:
    li 0, 0x1
L_802445E0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802445F0
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80244604
L_802445F0:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80244604:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80244618
L_80244610:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024461C
L_80244618:
    li 3, 0x0
L_8024461C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80244630:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244658
    li 0, 0x0
    .4byte 0x48000058 # b .L_802446AC
L_80244658:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024466C
    li 0, 0x0
    .4byte 0x48000044 # b .L_802446AC
L_8024466C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244680
    li 0, 0x0
    .4byte 0x48000030 # b .L_802446AC
L_80244680:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244694
    li 0, 0x0
    .4byte 0x4800001C # b .L_802446AC
L_80244694:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802446A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_802446AC
L_802446A8:
    li 0, 0x1
L_802446AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802446BC
    li 0, 0x0
    .4byte 0x48000144 # b .L_802447FC
L_802446BC:
    li 29, 0x0
    mr 28, 29
L_802446C4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802446D8
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80244738
L_802446D8:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80244728
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024470C
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80244738
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80244738
L_8024470C:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80244738
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80244738
L_80244728:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80244738
    addi 29, 29, 0x1
L_80244738:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802446C4
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244754
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024476C
L_80244754:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80244768
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024476C
L_80244768:
    lwz 3, 0x120c(31)
L_8024476C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802447E4
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024478C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80244790
L_8024478C:
    lwz 30, 0x1224(31)
L_80244790:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802447A4
    li 0, 0x0
    .4byte 0x4800003C # b .L_802447DC
L_802447A4:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802447CC
L_802447B0:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802447C8
    addi 28, 28, 0x1
L_802447C8:
    addi 29, 29, 0x1
L_802447CC:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802447B0
    addi 0, 28, 0x1
L_802447DC:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802447F0
L_802447E4:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802447F8
L_802447F0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802447FC
L_802447F8:
    li 0, 0x1
L_802447FC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024480C
    li 3, 0x0
    .4byte 0x480007E0 # b .L_80244FE8
L_8024480C:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_80244A00
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024482C
    li 0, 0x0
    .4byte 0x48000058 # b .L_80244880
L_8024482C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244840
    li 0, 0x0
    .4byte 0x48000044 # b .L_80244880
L_80244840:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244854
    li 0, 0x0
    .4byte 0x48000030 # b .L_80244880
L_80244854:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244868
    li 0, 0x0
    .4byte 0x4800001C # b .L_80244880
L_80244868:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024487C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244880
L_8024487C:
    li 0, 0x1
L_80244880:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244890
    li 0, 0x0
    .4byte 0x48000144 # b .L_802449D0
L_80244890:
    li 29, 0x0
    mr 28, 29
L_80244898:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802448AC
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024490C
L_802448AC:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802448FC
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802448E0
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024490C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024490C
L_802448E0:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024490C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024490C
L_802448FC:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024490C
    addi 29, 29, 0x1
L_8024490C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80244898
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244928
    li 3, 0x5
    .4byte 0x4800001C # b .L_80244940
L_80244928:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024493C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80244940
L_8024493C:
    lwz 3, 0x120c(31)
L_80244940:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802449B8
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80244960
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80244964
L_80244960:
    lwz 30, 0x1224(31)
L_80244964:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80244978
    li 0, 0x0
    .4byte 0x4800003C # b .L_802449B0
L_80244978:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_802449A0
L_80244984:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_8024499C
    addi 29, 29, 0x1
L_8024499C:
    addi 28, 28, 0x1
L_802449A0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80244984
    addi 0, 29, 0x1
L_802449B0:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802449C4
L_802449B8:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802449CC
L_802449C4:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802449D0
L_802449CC:
    li 0, 0x1
L_802449D0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802449E0
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_802449F4
L_802449E0:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_802449F4:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418105E0 # bgt .L_80244FDC
L_80244A00:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x1
    .4byte 0x408201EC # bne .L_80244BF4
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244A20
    li 0, 0x0
    .4byte 0x48000058 # b .L_80244A74
L_80244A20:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244A34
    li 0, 0x0
    .4byte 0x48000044 # b .L_80244A74
L_80244A34:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244A48
    li 0, 0x0
    .4byte 0x48000030 # b .L_80244A74
L_80244A48:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244A5C
    li 0, 0x0
    .4byte 0x4800001C # b .L_80244A74
L_80244A5C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244A70
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244A74
L_80244A70:
    li 0, 0x1
L_80244A74:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244A84
    li 0, 0x0
    .4byte 0x48000144 # b .L_80244BC4
L_80244A84:
    li 29, 0x0
    mr 28, 29
L_80244A8C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80244AA0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80244B00
L_80244AA0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80244AF0
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80244AD4
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80244B00
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80244B00
L_80244AD4:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80244B00
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80244B00
L_80244AF0:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80244B00
    addi 29, 29, 0x1
L_80244B00:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80244A8C
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244B1C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80244B34
L_80244B1C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80244B30
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80244B34
L_80244B30:
    lwz 3, 0x120c(31)
L_80244B34:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80244BAC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80244B54
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80244B58
L_80244B54:
    lwz 30, 0x1224(31)
L_80244B58:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80244B6C
    li 0, 0x0
    .4byte 0x4800003C # b .L_80244BA4
L_80244B6C:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_80244B94
L_80244B78:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80244B90
    addi 29, 29, 0x1
L_80244B90:
    addi 28, 28, 0x1
L_80244B94:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80244B78
    addi 0, 29, 0x1
L_80244BA4:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80244BB8
L_80244BAC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244BC0
L_80244BB8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244BC4
L_80244BC0:
    li 0, 0x1
L_80244BC4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244BD4
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80244BE8
L_80244BD4:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_80244BE8:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418003EC # blt .L_80244FDC
L_80244BF4:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x408201EC # bne .L_80244DE8
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244C14
    li 0, 0x0
    .4byte 0x48000058 # b .L_80244C68
L_80244C14:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244C28
    li 0, 0x0
    .4byte 0x48000044 # b .L_80244C68
L_80244C28:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244C3C
    li 0, 0x0
    .4byte 0x48000030 # b .L_80244C68
L_80244C3C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244C50
    li 0, 0x0
    .4byte 0x4800001C # b .L_80244C68
L_80244C50:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244C64
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244C68
L_80244C64:
    li 0, 0x1
L_80244C68:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244C78
    li 0, 0x0
    .4byte 0x48000144 # b .L_80244DB8
L_80244C78:
    li 29, 0x0
    mr 28, 29
L_80244C80:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80244C94
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80244CF4
L_80244C94:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80244CE4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80244CC8
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80244CF4
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80244CF4
L_80244CC8:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80244CF4
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80244CF4
L_80244CE4:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80244CF4
    addi 29, 29, 0x1
L_80244CF4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80244C80
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244D10
    li 3, 0x5
    .4byte 0x4800001C # b .L_80244D28
L_80244D10:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80244D24
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80244D28
L_80244D24:
    lwz 3, 0x120c(31)
L_80244D28:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80244DA0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80244D48
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80244D4C
L_80244D48:
    lwz 30, 0x1224(31)
L_80244D4C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80244D60
    li 0, 0x0
    .4byte 0x4800003C # b .L_80244D98
L_80244D60:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_80244D88
L_80244D6C:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80244D84
    addi 29, 29, 0x1
L_80244D84:
    addi 28, 28, 0x1
L_80244D88:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80244D6C
    addi 0, 29, 0x1
L_80244D98:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80244DAC
L_80244DA0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244DB4
L_80244DAC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244DB8
L_80244DB4:
    li 0, 0x1
L_80244DB8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244DC8
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80244DDC
L_80244DC8:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80244DDC:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418001F8 # blt .L_80244FDC
L_80244DE8:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x3
    .4byte 0x408201F4 # bne .L_80244FE4
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244E08
    li 0, 0x0
    .4byte 0x48000058 # b .L_80244E5C
L_80244E08:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244E1C
    li 0, 0x0
    .4byte 0x48000044 # b .L_80244E5C
L_80244E1C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80244E30
    li 0, 0x0
    .4byte 0x48000030 # b .L_80244E5C
L_80244E30:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244E44
    li 0, 0x0
    .4byte 0x4800001C # b .L_80244E5C
L_80244E44:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244E58
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244E5C
L_80244E58:
    li 0, 0x1
L_80244E5C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244E6C
    li 0, 0x0
    .4byte 0x48000144 # b .L_80244FAC
L_80244E6C:
    li 29, 0x0
    mr 28, 29
L_80244E74:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80244E88
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80244EE8
L_80244E88:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80244ED8
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80244EBC
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80244EE8
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80244EE8
L_80244EBC:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80244EE8
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80244EE8
L_80244ED8:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80244EE8
    addi 29, 29, 0x1
L_80244EE8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80244E74
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80244F04
    li 3, 0x5
    .4byte 0x4800001C # b .L_80244F1C
L_80244F04:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80244F18
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80244F1C
L_80244F18:
    lwz 3, 0x120c(31)
L_80244F1C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80244F94
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80244F3C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80244F40
L_80244F3C:
    lwz 30, 0x1224(31)
L_80244F40:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80244F54
    li 0, 0x0
    .4byte 0x4800003C # b .L_80244F8C
L_80244F54:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_80244F7C
L_80244F60:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80244F78
    addi 29, 29, 0x1
L_80244F78:
    addi 28, 28, 0x1
L_80244F7C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80244F60
    addi 0, 29, 0x1
L_80244F8C:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80244FA0
L_80244F94:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80244FA8
L_80244FA0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80244FAC
L_80244FA8:
    li 0, 0x1
L_80244FAC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80244FBC
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80244FD0
L_80244FBC:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80244FD0:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80244FE4
L_80244FDC:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80244FE8
L_80244FE4:
    li 3, 0x0
L_80244FE8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80244FFC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245024
    li 0, 0x0
    .4byte 0x48000058 # b .L_80245078
L_80245024:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245038
    li 0, 0x0
    .4byte 0x48000044 # b .L_80245078
L_80245038:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024504C
    li 0, 0x0
    .4byte 0x48000030 # b .L_80245078
L_8024504C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245060
    li 0, 0x0
    .4byte 0x4800001C # b .L_80245078
L_80245060:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245074
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245078
L_80245074:
    li 0, 0x1
L_80245078:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245088
    li 0, 0x0
    .4byte 0x48000144 # b .L_802451C8
L_80245088:
    li 29, 0x0
    mr 28, 29
L_80245090:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802450A4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80245104
L_802450A4:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802450F4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802450D8
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80245104
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80245104
L_802450D8:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80245104
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80245104
L_802450F4:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80245104
    addi 29, 29, 0x1
L_80245104:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80245090
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80245120
    li 3, 0x5
    .4byte 0x4800001C # b .L_80245138
L_80245120:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80245134
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80245138
L_80245134:
    lwz 3, 0x120c(31)
L_80245138:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802451B0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80245158
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024515C
L_80245158:
    lwz 30, 0x1224(31)
L_8024515C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80245170
    li 0, 0x0
    .4byte 0x4800003C # b .L_802451A8
L_80245170:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80245198
L_8024517C:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80245194
    addi 28, 28, 0x1
L_80245194:
    addi 29, 29, 0x1
L_80245198:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8024517C
    addi 0, 28, 0x1
L_802451A8:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802451BC
L_802451B0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802451C4
L_802451BC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802451C8
L_802451C4:
    li 0, 0x1
L_802451C8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802451D8
    li 3, 0x0
    .4byte 0x48000050 # b .L_80245224
L_802451D8:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80245200
    li 3, 0x1
    .4byte 0x48000028 # b .L_80245224
L_80245200:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80245224:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80245238:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245260
    li 0, 0x0
    .4byte 0x48000058 # b .L_802452B4
L_80245260:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245274
    li 0, 0x0
    .4byte 0x48000044 # b .L_802452B4
L_80245274:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245288
    li 0, 0x0
    .4byte 0x48000030 # b .L_802452B4
L_80245288:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024529C
    li 0, 0x0
    .4byte 0x4800001C # b .L_802452B4
L_8024529C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802452B0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802452B4
L_802452B0:
    li 0, 0x1
L_802452B4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802452C4
    li 0, 0x0
    .4byte 0x48000144 # b .L_80245404
L_802452C4:
    li 29, 0x0
    mr 28, 29
L_802452CC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802452E0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80245340
L_802452E0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80245330
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80245314
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80245340
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80245340
L_80245314:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80245340
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80245340
L_80245330:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80245340
    addi 29, 29, 0x1
L_80245340:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802452CC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024535C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80245374
L_8024535C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80245370
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80245374
L_80245370:
    lwz 3, 0x120c(31)
L_80245374:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802453EC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80245394
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80245398
L_80245394:
    lwz 30, 0x1224(31)
L_80245398:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802453AC
    li 0, 0x0
    .4byte 0x4800003C # b .L_802453E4
L_802453AC:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802453D4
L_802453B8:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802453D0
    addi 28, 28, 0x1
L_802453D0:
    addi 29, 29, 0x1
L_802453D4:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802453B8
    addi 0, 28, 0x1
L_802453E4:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802453F8
L_802453EC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245400
L_802453F8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245404
L_80245400:
    li 0, 0x1
L_80245404:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245414
    li 3, 0x0
    .4byte 0x4800009C # b .L_802454AC
L_80245414:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8024543C
    li 3, 0x1
    .4byte 0x48000074 # b .L_802454AC
L_8024543C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80245464
    li 3, 0x1
    .4byte 0x4800004C # b .L_802454AC
L_80245464:
    lwz 27, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_802454A8
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x200
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802454A8
    li 3, 0x1
    .4byte 0x48000008 # b .L_802454AC
L_802454A8:
    li 3, 0x0
L_802454AC:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802454C0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802454E8
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024553C
L_802454E8:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802454FC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024553C
L_802454FC:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245510
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024553C
L_80245510:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245524
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024553C
L_80245524:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245538
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024553C
L_80245538:
    li 0, 0x1
L_8024553C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024554C
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024568C
L_8024554C:
    li 29, 0x0
    mr 28, 29
L_80245554:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80245568
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802455C8
L_80245568:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802455B8
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024559C
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802455C8
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802455C8
L_8024559C:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_802455C8
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802455C8
L_802455B8:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802455C8
    addi 29, 29, 0x1
L_802455C8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80245554
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802455E4
    li 3, 0x5
    .4byte 0x4800001C # b .L_802455FC
L_802455E4:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802455F8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802455FC
L_802455F8:
    lwz 3, 0x120c(31)
L_802455FC:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80245674
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024561C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80245620
L_8024561C:
    lwz 30, 0x1224(31)
L_80245620:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80245634
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024566C
L_80245634:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_8024565C
L_80245640:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80245658
    addi 28, 28, 0x1
L_80245658:
    addi 29, 29, 0x1
L_8024565C:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80245640
    addi 0, 28, 0x1
L_8024566C:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80245680
L_80245674:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245688
L_80245680:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024568C
L_80245688:
    li 0, 0x1
L_8024568C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024569C
    li 3, 0x0
    .4byte 0x48000050 # b .L_802456E8
L_8024569C:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802456B0
    li 3, 0x0
    .4byte 0x4800003C # b .L_802456E8
L_802456B0:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_802456C4
    li 3, 0x0
    .4byte 0x48000028 # b .L_802456E8
L_802456C4:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309A54
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_802456E8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802456FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245724
    li 0, 0x0
    .4byte 0x48000058 # b .L_80245778
L_80245724:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245738
    li 0, 0x0
    .4byte 0x48000044 # b .L_80245778
L_80245738:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024574C
    li 0, 0x0
    .4byte 0x48000030 # b .L_80245778
L_8024574C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245760
    li 0, 0x0
    .4byte 0x4800001C # b .L_80245778
L_80245760:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245774
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245778
L_80245774:
    li 0, 0x1
L_80245778:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245788
    li 0, 0x0
    .4byte 0x48000144 # b .L_802458C8
L_80245788:
    li 29, 0x0
    mr 28, 29
L_80245790:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802457A4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80245804
L_802457A4:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802457F4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802457D8
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80245804
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80245804
L_802457D8:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80245804
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80245804
L_802457F4:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80245804
    addi 29, 29, 0x1
L_80245804:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80245790
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80245820
    li 3, 0x5
    .4byte 0x4800001C # b .L_80245838
L_80245820:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80245834
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80245838
L_80245834:
    lwz 3, 0x120c(31)
L_80245838:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802458B0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80245858
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024585C
L_80245858:
    lwz 30, 0x1224(31)
L_8024585C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80245870
    li 0, 0x0
    .4byte 0x4800003C # b .L_802458A8
L_80245870:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80245898
L_8024587C:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80245894
    addi 28, 28, 0x1
L_80245894:
    addi 29, 29, 0x1
L_80245898:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8024587C
    addi 0, 28, 0x1
L_802458A8:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802458BC
L_802458B0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802458C4
L_802458BC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802458C8
L_802458C4:
    li 0, 0x1
L_802458C8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802458D8
    li 3, 0x0
    .4byte 0x48000050 # b .L_80245924
L_802458D8:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802458EC
    li 3, 0x0
    .4byte 0x4800003C # b .L_80245924
L_802458EC:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80245900
    li 3, 0x0
    .4byte 0x48000028 # b .L_80245924
L_80245900:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80245924:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80245938:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245960
    li 0, 0x0
    .4byte 0x48000058 # b .L_802459B4
L_80245960:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245974
    li 0, 0x0
    .4byte 0x48000044 # b .L_802459B4
L_80245974:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245988
    li 0, 0x0
    .4byte 0x48000030 # b .L_802459B4
L_80245988:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024599C
    li 0, 0x0
    .4byte 0x4800001C # b .L_802459B4
L_8024599C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802459B0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802459B4
L_802459B0:
    li 0, 0x1
L_802459B4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802459C4
    li 0, 0x0
    .4byte 0x48000144 # b .L_80245B04
L_802459C4:
    li 29, 0x0
    mr 28, 29
L_802459CC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802459E0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80245A40
L_802459E0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80245A30
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80245A14
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80245A40
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80245A40
L_80245A14:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80245A40
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80245A40
L_80245A30:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80245A40
    addi 29, 29, 0x1
L_80245A40:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802459CC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80245A5C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80245A74
L_80245A5C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80245A70
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80245A74
L_80245A70:
    lwz 3, 0x120c(31)
L_80245A74:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80245AEC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80245A94
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80245A98
L_80245A94:
    lwz 30, 0x1224(31)
L_80245A98:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80245AAC
    li 0, 0x0
    .4byte 0x4800003C # b .L_80245AE4
L_80245AAC:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80245AD4
L_80245AB8:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80245AD0
    addi 28, 28, 0x1
L_80245AD0:
    addi 29, 29, 0x1
L_80245AD4:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80245AB8
    addi 0, 28, 0x1
L_80245AE4:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80245AF8
L_80245AEC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245B00
L_80245AF8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245B04
L_80245B00:
    li 0, 0x1
L_80245B04:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245B14
    li 3, 0x0
    .4byte 0x48000050 # b .L_80245B60
L_80245B14:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245B28
    li 3, 0x0
    .4byte 0x4800003C # b .L_80245B60
L_80245B28:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80245B3C
    li 3, 0x0
    .4byte 0x48000028 # b .L_80245B60
L_80245B3C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D6C
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80245B60:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80245B74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245B9C
    li 0, 0x0
    .4byte 0x48000058 # b .L_80245BF0
L_80245B9C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245BB0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80245BF0
L_80245BB0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245BC4
    li 0, 0x0
    .4byte 0x48000030 # b .L_80245BF0
L_80245BC4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245BD8
    li 0, 0x0
    .4byte 0x4800001C # b .L_80245BF0
L_80245BD8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245BEC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245BF0
L_80245BEC:
    li 0, 0x1
L_80245BF0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245C00
    li 0, 0x0
    .4byte 0x48000144 # b .L_80245D40
L_80245C00:
    li 29, 0x0
    mr 28, 29
L_80245C08:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80245C1C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80245C7C
L_80245C1C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80245C6C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80245C50
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80245C7C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80245C7C
L_80245C50:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80245C7C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80245C7C
L_80245C6C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80245C7C
    addi 29, 29, 0x1
L_80245C7C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80245C08
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80245C98
    li 3, 0x5
    .4byte 0x4800001C # b .L_80245CB0
L_80245C98:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80245CAC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80245CB0
L_80245CAC:
    lwz 3, 0x120c(31)
L_80245CB0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80245D28
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80245CD0
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80245CD4
L_80245CD0:
    lwz 30, 0x1224(31)
L_80245CD4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80245CE8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80245D20
L_80245CE8:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80245D10
L_80245CF4:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80245D0C
    addi 28, 28, 0x1
L_80245D0C:
    addi 29, 29, 0x1
L_80245D10:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80245CF4
    addi 0, 28, 0x1
L_80245D20:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80245D34
L_80245D28:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245D3C
L_80245D34:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245D40
L_80245D3C:
    li 0, 0x1
L_80245D40:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245D50
    li 3, 0x0
    .4byte 0x48000050 # b .L_80245D9C
L_80245D50:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245D64
    li 3, 0x0
    .4byte 0x4800003C # b .L_80245D9C
L_80245D64:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80245D78
    li 3, 0x0
    .4byte 0x48000028 # b .L_80245D9C
L_80245D78:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309A78
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80245D9C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80245DB0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245DD8
    li 0, 0x0
    .4byte 0x48000058 # b .L_80245E2C
L_80245DD8:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245DEC
    li 0, 0x0
    .4byte 0x48000044 # b .L_80245E2C
L_80245DEC:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245E00
    li 0, 0x0
    .4byte 0x48000030 # b .L_80245E2C
L_80245E00:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245E14
    li 0, 0x0
    .4byte 0x4800001C # b .L_80245E2C
L_80245E14:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245E28
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245E2C
L_80245E28:
    li 0, 0x1
L_80245E2C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245E3C
    li 0, 0x0
    .4byte 0x48000144 # b .L_80245F7C
L_80245E3C:
    li 29, 0x0
    mr 28, 29
L_80245E44:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80245E58
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80245EB8
L_80245E58:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80245EA8
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80245E8C
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80245EB8
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80245EB8
L_80245E8C:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80245EB8
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80245EB8
L_80245EA8:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80245EB8
    addi 29, 29, 0x1
L_80245EB8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80245E44
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80245ED4
    li 3, 0x5
    .4byte 0x4800001C # b .L_80245EEC
L_80245ED4:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80245EE8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80245EEC
L_80245EE8:
    lwz 3, 0x120c(31)
L_80245EEC:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80245F64
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80245F0C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80245F10
L_80245F0C:
    lwz 30, 0x1224(31)
L_80245F10:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80245F24
    li 0, 0x0
    .4byte 0x4800003C # b .L_80245F5C
L_80245F24:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80245F4C
L_80245F30:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80245F48
    addi 28, 28, 0x1
L_80245F48:
    addi 29, 29, 0x1
L_80245F4C:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80245F30
    addi 0, 28, 0x1
L_80245F5C:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80245F70
L_80245F64:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80245F78
L_80245F70:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80245F7C
L_80245F78:
    li 0, 0x1
L_80245F7C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80245F8C
    li 3, 0x0
    .4byte 0x48000050 # b .L_80245FD8
L_80245F8C:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80245FA0
    li 3, 0x0
    .4byte 0x4800003C # b .L_80245FD8
L_80245FA0:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80245FB4
    li 3, 0x0
    .4byte 0x48000028 # b .L_80245FD8
L_80245FB4:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80245FD8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80245FEC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246014
    li 0, 0x0
    .4byte 0x48000058 # b .L_80246068
L_80246014:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246028
    li 0, 0x0
    .4byte 0x48000044 # b .L_80246068
L_80246028:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024603C
    li 0, 0x0
    .4byte 0x48000030 # b .L_80246068
L_8024603C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246050
    li 0, 0x0
    .4byte 0x4800001C # b .L_80246068
L_80246050:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246064
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246068
L_80246064:
    li 0, 0x1
L_80246068:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246078
    li 0, 0x0
    .4byte 0x48000144 # b .L_802461B8
L_80246078:
    li 29, 0x0
    mr 28, 29
L_80246080:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80246094
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802460F4
L_80246094:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802460E4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802460C8
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802460F4
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802460F4
L_802460C8:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_802460F4
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802460F4
L_802460E4:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802460F4
    addi 29, 29, 0x1
L_802460F4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80246080
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80246110
    li 3, 0x5
    .4byte 0x4800001C # b .L_80246128
L_80246110:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80246124
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80246128
L_80246124:
    lwz 3, 0x120c(31)
L_80246128:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802461A0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80246148
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024614C
L_80246148:
    lwz 30, 0x1224(31)
L_8024614C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80246160
    li 0, 0x0
    .4byte 0x4800003C # b .L_80246198
L_80246160:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80246188
L_8024616C:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80246184
    addi 28, 28, 0x1
L_80246184:
    addi 29, 29, 0x1
L_80246188:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8024616C
    addi 0, 28, 0x1
L_80246198:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802461AC
L_802461A0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802461B4
L_802461AC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802461B8
L_802461B4:
    li 0, 0x1
L_802461B8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802461C8
    li 3, 0x0
    .4byte 0x48000050 # b .L_80246214
L_802461C8:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802461DC
    li 3, 0x0
    .4byte 0x4800003C # b .L_80246214
L_802461DC:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_802461F0
    li 3, 0x0
    .4byte 0x48000028 # b .L_80246214
L_802461F0:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80246214:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80246228:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246250
    li 0, 0x0
    .4byte 0x48000058 # b .L_802462A4
L_80246250:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246264
    li 0, 0x0
    .4byte 0x48000044 # b .L_802462A4
L_80246264:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246278
    li 0, 0x0
    .4byte 0x48000030 # b .L_802462A4
L_80246278:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024628C
    li 0, 0x0
    .4byte 0x4800001C # b .L_802462A4
L_8024628C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802462A0
    li 0, 0x0
    .4byte 0x48000008 # b .L_802462A4
L_802462A0:
    li 0, 0x1
L_802462A4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802462B4
    li 0, 0x0
    .4byte 0x48000144 # b .L_802463F4
L_802462B4:
    li 29, 0x0
    mr 28, 29
L_802462BC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802462D0
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80246330
L_802462D0:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80246320
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80246304
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80246330
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80246330
L_80246304:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80246330
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80246330
L_80246320:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80246330
    addi 29, 29, 0x1
L_80246330:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802462BC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024634C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80246364
L_8024634C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80246360
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80246364
L_80246360:
    lwz 3, 0x120c(31)
L_80246364:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802463DC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80246384
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80246388
L_80246384:
    lwz 30, 0x1224(31)
L_80246388:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024639C
    li 0, 0x0
    .4byte 0x4800003C # b .L_802463D4
L_8024639C:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802463C4
L_802463A8:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802463C0
    addi 28, 28, 0x1
L_802463C0:
    addi 29, 29, 0x1
L_802463C4:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802463A8
    addi 0, 28, 0x1
L_802463D4:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802463E8
L_802463DC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802463F0
L_802463E8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802463F4
L_802463F0:
    li 0, 0x1
L_802463F4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246404
    li 3, 0x0
    .4byte 0x48000050 # b .L_80246450
L_80246404:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246418
    li 3, 0x0
    .4byte 0x4800003C # b .L_80246450
L_80246418:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_8024642C
    li 3, 0x0
    .4byte 0x48000028 # b .L_80246450
L_8024642C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80246450:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80246464:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024648C
    li 0, 0x0
    .4byte 0x48000058 # b .L_802464E0
L_8024648C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802464A0
    li 0, 0x0
    .4byte 0x48000044 # b .L_802464E0
L_802464A0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802464B4
    li 0, 0x0
    .4byte 0x48000030 # b .L_802464E0
L_802464B4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802464C8
    li 0, 0x0
    .4byte 0x4800001C # b .L_802464E0
L_802464C8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802464DC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802464E0
L_802464DC:
    li 0, 0x1
L_802464E0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802464F0
    li 0, 0x0
    .4byte 0x48000144 # b .L_80246630
L_802464F0:
    li 29, 0x0
    mr 28, 29
L_802464F8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024650C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024656C
L_8024650C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024655C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80246540
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024656C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024656C
L_80246540:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_8024656C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024656C
L_8024655C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024656C
    addi 29, 29, 0x1
L_8024656C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802464F8
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80246588
    li 3, 0x5
    .4byte 0x4800001C # b .L_802465A0
L_80246588:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024659C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802465A0
L_8024659C:
    lwz 3, 0x120c(31)
L_802465A0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80246618
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802465C0
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_802465C4
L_802465C0:
    lwz 30, 0x1224(31)
L_802465C4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802465D8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80246610
L_802465D8:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80246600
L_802465E4:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802465FC
    addi 28, 28, 0x1
L_802465FC:
    addi 29, 29, 0x1
L_80246600:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802465E4
    addi 0, 28, 0x1
L_80246610:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80246624
L_80246618:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024662C
L_80246624:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246630
L_8024662C:
    li 0, 0x1
L_80246630:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246640
    li 3, 0x0
    .4byte 0x48000064 # b .L_802466A0
L_80246640:
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80246654
    li 3, 0x0
    .4byte 0x48000050 # b .L_802466A0
L_80246654:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246668
    li 3, 0x0
    .4byte 0x4800003C # b .L_802466A0
L_80246668:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_8024667C
    li 3, 0x0
    .4byte 0x48000028 # b .L_802466A0
L_8024667C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x200
    bl fn_80309D24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_802466A0:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802466B4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802466DC
    li 0, 0x0
    .4byte 0x48000058 # b .L_80246730
L_802466DC:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802466F0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80246730
L_802466F0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246704
    li 0, 0x0
    .4byte 0x48000030 # b .L_80246730
L_80246704:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246718
    li 0, 0x0
    .4byte 0x4800001C # b .L_80246730
L_80246718:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024672C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246730
L_8024672C:
    li 0, 0x1
L_80246730:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246740
    li 0, 0x0
    .4byte 0x48000144 # b .L_80246880
L_80246740:
    li 29, 0x0
    mr 28, 29
L_80246748:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024675C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802467BC
L_8024675C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802467AC
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80246790
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802467BC
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802467BC
L_80246790:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_802467BC
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802467BC
L_802467AC:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802467BC
    addi 29, 29, 0x1
L_802467BC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80246748
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802467D8
    li 3, 0x5
    .4byte 0x4800001C # b .L_802467F0
L_802467D8:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802467EC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802467F0
L_802467EC:
    lwz 3, 0x120c(31)
L_802467F0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80246868
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80246810
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80246814
L_80246810:
    lwz 30, 0x1224(31)
L_80246814:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80246828
    li 0, 0x0
    .4byte 0x4800003C # b .L_80246860
L_80246828:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80246850
L_80246834:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_8024684C
    addi 28, 28, 0x1
L_8024684C:
    addi 29, 29, 0x1
L_80246850:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80246834
    addi 0, 28, 0x1
L_80246860:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80246874
L_80246868:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024687C
L_80246874:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246880
L_8024687C:
    li 0, 0x1
L_80246880:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246890
    li 3, 0x0
    .4byte 0x48000064 # b .L_802468F0
L_80246890:
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802468A4
    li 3, 0x0
    .4byte 0x48000050 # b .L_802468F0
L_802468A4:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802468B8
    li 3, 0x0
    .4byte 0x4800003C # b .L_802468F0
L_802468B8:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_802468CC
    li 3, 0x0
    .4byte 0x48000028 # b .L_802468F0
L_802468CC:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x200
    bl fn_80309D6C
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_802468F0:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80246904:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    mr 31, 4
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246930
    li 0, 0x0
    .4byte 0x48000058 # b .L_80246984
L_80246930:
    lbz 0, 0xcee(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246944
    li 0, 0x0
    .4byte 0x48000044 # b .L_80246984
L_80246944:
    lbz 0, 0x1215(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80246958
    li 0, 0x0
    .4byte 0x48000030 # b .L_80246984
L_80246958:
    lbz 0, 0xca0(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024696C
    li 0, 0x0
    .4byte 0x4800001C # b .L_80246984
L_8024696C:
    lbz 0, 0xce9(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246980
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246984
L_80246980:
    li 0, 0x1
L_80246984:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246994
    li 0, 0x0
    .4byte 0x48000144 # b .L_80246AD4
L_80246994:
    li 28, 0x0
    mr 27, 28
L_8024699C:
    lwz 0, 0x4(30)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_802469B0
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80246A10
L_802469B0:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80246A00
    lwz 26, 0xd60(30)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_802469E4
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80246A10
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80246A10
L_802469E4:
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_80246A10
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80246A10
L_80246A00:
    lwz 0, 0xd60(30)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80246A10
    addi 28, 28, 0x1
L_80246A10:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024699C
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80246A2C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80246A44
L_80246A2C:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80246A40
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80246A44
L_80246A40:
    lwz 3, 0x120c(30)
L_80246A44:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80246ABC
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80246A64
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_80246A68
L_80246A64:
    lwz 29, 0x1224(30)
L_80246A68:
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80246A7C
    li 0, 0x0
    .4byte 0x4800003C # b .L_80246AB4
L_80246A7C:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_80246AA4
L_80246A88:
    lwz 26, 0xd60(30)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80246AA0
    addi 27, 27, 0x1
L_80246AA0:
    addi 28, 28, 0x1
L_80246AA4:
    lwz 0, 0x4(30)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80246A88
    addi 0, 27, 0x1
L_80246AB4:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80246AC8
L_80246ABC:
    lbz 0, 0x11ea(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80246AD0
L_80246AC8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80246AD4
L_80246AD0:
    li 0, 0x1
L_80246AD4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80246AE4
    li 3, 0x0
    .4byte 0x4800001C # b .L_80246AFC
L_80246AE4:
    lwz 3, 0x11ec(30)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    mr 5, 31
    bl fn_80309A78
L_80246AFC:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

