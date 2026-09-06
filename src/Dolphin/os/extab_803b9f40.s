# fn_803B9F40 - helper (0xA40, largest piece in this cluster)
.section extab, "a"
.balign 4
.global etb_8000F6DC
etb_8000F6DC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000F6DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F414
eti_8001F414:
    .4byte fn_803B9F40
    .4byte 0x00000A40
    .4byte etb_8000F6DC
.size eti_8001F414, 12

.text
.balign 4
.global fn_803B9F40

fn_803B9F40:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    mr 30, 3
    stw 29, 0x74(1)
L_803B9F5C:
    addi 3, 30, 0x1fd4
    bl OSLockMutex
    .4byte 0x48000010 # b .L_803B9F74
L_803B9F68:
    addi 3, 30, 0x1fec
    addi 4, 30, 0x1fd4
    bl OSWaitCond
L_803B9F74:
    lwz 0, 0x1fcc(30)
    cmpwi 0, 0x0
    .4byte 0x4182FFEC # beq .L_803B9F68
    cmpwi 0, 0x4
    .4byte 0x41820630 # beq .L_803BA5B4
    .4byte 0x4080001C # bge .L_803B9FA4
    cmpwi 0, 0x2
    .4byte 0x418201A4 # beq .L_803BA134
    .4byte 0x4080031C # bge .L_803BA2B0
    cmpwi 0, 0x1
    .4byte 0x40800018 # bge .L_803B9FB4
    .4byte 0x480009CC # b .L_803BA96C
L_803B9FA4:
    cmpwi 0, 0x6
    .4byte 0x418209B4 # beq .L_803BA95C
    .4byte 0x408009C0 # bge .L_803BA96C
    .4byte 0x480006B8 # b .L_803BA668
L_803B9FB4:
    lis 4, lbl_80476568@ha
    lbz 3, 0x1ff4(30)
    addi 4, 4, lbl_80476568@l
    addi 5, 1, 0x54
    bl fn_80057588
    mr. 29, 3
    .4byte 0x408200D0 # bne .L_803BA09C
    addi 3, 1, 0x54
    addi 4, 30, 0x20
    addi 5, 30, 0x280
    li 6, 0x258
    li 7, 0x1d4c
    bl fn_803BAEF4
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_803B9FFC
    li 0, 0x3
    stw 0, 0x1fd0(30)
    .4byte 0x48000098 # b .L_803BA090
L_803B9FFC:
    cmpwi 29, -0x5
    .4byte 0x41820048 # beq .L_803BA048
    .4byte 0x40800028 # bge .L_803BA02C
    cmpwi 29, -0xd
    .4byte 0x41820070 # beq .L_803BA07C
    .4byte 0x40800010 # bge .L_803BA020
    cmpwi 29, -0x80
    .4byte 0x41820030 # beq .L_803BA048
    .4byte 0x48000074 # b .L_803BA090
L_803BA020:
    cmpwi 29, -0x6
    .4byte 0x4080003C # bge .L_803BA060
    .4byte 0x48000068 # b .L_803BA090
L_803BA02C:
    cmpwi 29, 0x0
    .4byte 0x41820030 # beq .L_803BA060
    .4byte 0x4080005C # bge .L_803BA090
    cmpwi 29, -0x3
    .4byte 0x41820018 # beq .L_803BA054
    .4byte 0x40800050 # bge .L_803BA090
    .4byte 0x48000044 # b .L_803BA088
L_803BA048:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000040 # b .L_803BA090
L_803BA054:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000034 # b .L_803BA090
L_803BA060:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_803BA090
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000018 # b .L_803BA090
L_803BA07C:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x4800000C # b .L_803BA090
L_803BA088:
    li 0, 0x2
    stw 0, 0x1fd0(30)
L_803BA090:
    addi 3, 1, 0x54
    bl fn_800576A4
    .4byte 0x480008D4 # b .L_803BA96C
L_803BA09C:
    cmpwi 29, -0x5
    .4byte 0x41820048 # beq .L_803BA0E8
    .4byte 0x40800028 # bge .L_803BA0CC
    cmpwi 29, -0xd
    .4byte 0x41820070 # beq .L_803BA11C
    .4byte 0x40800010 # bge .L_803BA0C0
    cmpwi 29, -0x80
    .4byte 0x41820030 # beq .L_803BA0E8
    .4byte 0x480008B0 # b .L_803BA96C
L_803BA0C0:
    cmpwi 29, -0x6
    .4byte 0x4080003C # bge .L_803BA100
    .4byte 0x480008A4 # b .L_803BA96C
L_803BA0CC:
    cmpwi 29, 0x0
    .4byte 0x41820030 # beq .L_803BA100
    .4byte 0x40800898 # bge .L_803BA96C
    cmpwi 29, -0x3
    .4byte 0x41820018 # beq .L_803BA0F4
    .4byte 0x4080088C # bge .L_803BA96C
    .4byte 0x48000044 # b .L_803BA128
L_803BA0E8:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x4800087C # b .L_803BA96C
L_803BA0F4:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000870 # b .L_803BA96C
L_803BA100:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820860 # beq .L_803BA96C
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000854 # b .L_803BA96C
L_803BA11C:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x48000848 # b .L_803BA96C
L_803BA128:
    li 0, 0x2
    stw 0, 0x1fd0(30)
    .4byte 0x4800083C # b .L_803BA96C
L_803BA134:
    lwz 0, 0x1fd0(30)
    cmpwi 0, 0x1
    .4byte 0x40820830 # bne .L_803BA96C
    lis 4, lbl_80476568@ha
    lbz 3, 0x1ff4(30)
    addi 4, 4, lbl_80476568@l
    addi 5, 1, 0x40
    bl fn_80057588
    mr. 29, 3
    .4byte 0x408200C0 # bne .L_803BA218
    addi 3, 1, 0x40
    bl fn_803BAE68
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_803BA178
    li 0, 0x3
    stw 0, 0x1fd0(30)
    .4byte 0x48000098 # b .L_803BA20C
L_803BA178:
    cmpwi 29, -0x5
    .4byte 0x41820048 # beq .L_803BA1C4
    .4byte 0x40800028 # bge .L_803BA1A8
    cmpwi 29, -0xd
    .4byte 0x41820070 # beq .L_803BA1F8
    .4byte 0x40800010 # bge .L_803BA19C
    cmpwi 29, -0x80
    .4byte 0x41820030 # beq .L_803BA1C4
    .4byte 0x48000074 # b .L_803BA20C
L_803BA19C:
    cmpwi 29, -0x6
    .4byte 0x4080003C # bge .L_803BA1DC
    .4byte 0x48000068 # b .L_803BA20C
L_803BA1A8:
    cmpwi 29, 0x0
    .4byte 0x41820030 # beq .L_803BA1DC
    .4byte 0x4080005C # bge .L_803BA20C
    cmpwi 29, -0x3
    .4byte 0x41820018 # beq .L_803BA1D0
    .4byte 0x40800050 # bge .L_803BA20C
    .4byte 0x48000044 # b .L_803BA204
L_803BA1C4:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000040 # b .L_803BA20C
L_803BA1D0:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000034 # b .L_803BA20C
L_803BA1DC:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_803BA20C
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000018 # b .L_803BA20C
L_803BA1F8:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x4800000C # b .L_803BA20C
L_803BA204:
    li 0, 0x2
    stw 0, 0x1fd0(30)
L_803BA20C:
    addi 3, 1, 0x40
    bl fn_800576A4
    .4byte 0x48000758 # b .L_803BA96C
L_803BA218:
    cmpwi 29, -0x5
    .4byte 0x41820048 # beq .L_803BA264
    .4byte 0x40800028 # bge .L_803BA248
    cmpwi 29, -0xd
    .4byte 0x41820070 # beq .L_803BA298
    .4byte 0x40800010 # bge .L_803BA23C
    cmpwi 29, -0x80
    .4byte 0x41820030 # beq .L_803BA264
    .4byte 0x48000734 # b .L_803BA96C
L_803BA23C:
    cmpwi 29, -0x6
    .4byte 0x4080003C # bge .L_803BA27C
    .4byte 0x48000728 # b .L_803BA96C
L_803BA248:
    cmpwi 29, 0x0
    .4byte 0x41820030 # beq .L_803BA27C
    .4byte 0x4080071C # bge .L_803BA96C
    cmpwi 29, -0x3
    .4byte 0x41820018 # beq .L_803BA270
    .4byte 0x40800710 # bge .L_803BA96C
    .4byte 0x48000044 # b .L_803BA2A4
L_803BA264:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000700 # b .L_803BA96C
L_803BA270:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x480006F4 # b .L_803BA96C
L_803BA27C:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x418206E4 # beq .L_803BA96C
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x480006D8 # b .L_803BA96C
L_803BA298:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x480006CC # b .L_803BA96C
L_803BA2A4:
    li 0, 0x2
    stw 0, 0x1fd0(30)
    .4byte 0x480006C0 # b .L_803BA96C
L_803BA2B0:
    lwz 0, 0x1fd0(30)
    cmpwi 0, 0x2
    .4byte 0x408200D8 # bne .L_803BA390
    lis 4, lbl_80476568@ha
    lbz 3, 0x1ff4(30)
    addi 4, 4, lbl_80476568@l
    addi 6, 1, 0x2c
    li 5, 0x6000
    bl fn_80057A48
    mr. 31, 3
    .4byte 0x40820010 # bne .L_803BA2E8
    li 0, 0x1
    stw 0, 0x1fd0(30)
    .4byte 0x480000AC # b .L_803BA390
L_803BA2E8:
    cmpwi 31, -0x7
    .4byte 0x40820010 # bne .L_803BA2FC
    li 0, 0x1
    stw 0, 0x1fd0(30)
    .4byte 0x48000098 # b .L_803BA390
L_803BA2FC:
    cmpwi 31, -0x5
    .4byte 0x41820048 # beq .L_803BA348
    .4byte 0x40800028 # bge .L_803BA32C
    cmpwi 31, -0xd
    .4byte 0x41820070 # beq .L_803BA37C
    .4byte 0x40800010 # bge .L_803BA320
    cmpwi 31, -0x80
    .4byte 0x41820030 # beq .L_803BA348
    .4byte 0x48000074 # b .L_803BA390
L_803BA320:
    cmpwi 31, -0x6
    .4byte 0x4080003C # bge .L_803BA360
    .4byte 0x48000068 # b .L_803BA390
L_803BA32C:
    cmpwi 31, 0x0
    .4byte 0x41820030 # beq .L_803BA360
    .4byte 0x4080005C # bge .L_803BA390
    cmpwi 31, -0x3
    .4byte 0x41820018 # beq .L_803BA354
    .4byte 0x40800050 # bge .L_803BA390
    .4byte 0x48000044 # b .L_803BA388
L_803BA348:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000040 # b .L_803BA390
L_803BA354:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000034 # b .L_803BA390
L_803BA360:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_803BA390
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000018 # b .L_803BA390
L_803BA37C:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x4800000C # b .L_803BA390
L_803BA388:
    li 0, 0x2
    stw 0, 0x1fd0(30)
L_803BA390:
    lwz 0, 0x1fd0(30)
    cmpwi 0, 0x1
    .4byte 0x40820184 # bne .L_803BA51C
    lis 4, lbl_80476568@ha
    lbz 3, 0x1ff4(30)
    addi 4, 4, lbl_80476568@l
    addi 5, 1, 0x2c
    bl fn_80057588
    mr. 31, 3
    .4byte 0x408200D0 # bne .L_803BA484
    addi 3, 1, 0x2c
    addi 4, 30, 0x20
    addi 5, 30, 0x280
    li 6, 0x258
    li 7, 0x1d4c
    bl fn_803BBF08
    mr. 31, 3
    .4byte 0x4182009C # beq .L_803BA470
    cmpwi 31, -0x5
    .4byte 0x41820048 # beq .L_803BA424
    .4byte 0x40800028 # bge .L_803BA408
    cmpwi 31, -0xd
    .4byte 0x41820070 # beq .L_803BA458
    .4byte 0x40800010 # bge .L_803BA3FC
    cmpwi 31, -0x80
    .4byte 0x41820030 # beq .L_803BA424
    .4byte 0x48000080 # b .L_803BA478
L_803BA3FC:
    cmpwi 31, -0x6
    .4byte 0x4080003C # bge .L_803BA43C
    .4byte 0x48000074 # b .L_803BA478
L_803BA408:
    cmpwi 31, 0x0
    .4byte 0x41820030 # beq .L_803BA43C
    .4byte 0x40800068 # bge .L_803BA478
    cmpwi 31, -0x3
    .4byte 0x41820018 # beq .L_803BA430
    .4byte 0x4080005C # bge .L_803BA478
    .4byte 0x48000044 # b .L_803BA464
L_803BA424:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x4800004C # b .L_803BA478
L_803BA430:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000040 # b .L_803BA478
L_803BA43C:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820030 # beq .L_803BA478
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000024 # b .L_803BA478
L_803BA458:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x48000018 # b .L_803BA478
L_803BA464:
    li 0, 0x2
    stw 0, 0x1fd0(30)
    .4byte 0x4800000C # b .L_803BA478
L_803BA470:
    li 0, 0x4
    stw 0, 0x1fd0(30)
L_803BA478:
    addi 3, 1, 0x2c
    bl fn_800576A4
    .4byte 0x480004EC # b .L_803BA96C
L_803BA484:
    cmpwi 31, -0x5
    .4byte 0x41820048 # beq .L_803BA4D0
    .4byte 0x40800028 # bge .L_803BA4B4
    cmpwi 31, -0xd
    .4byte 0x41820070 # beq .L_803BA504
    .4byte 0x40800010 # bge .L_803BA4A8
    cmpwi 31, -0x80
    .4byte 0x41820030 # beq .L_803BA4D0
    .4byte 0x480004C8 # b .L_803BA96C
L_803BA4A8:
    cmpwi 31, -0x6
    .4byte 0x4080003C # bge .L_803BA4E8
    .4byte 0x480004BC # b .L_803BA96C
L_803BA4B4:
    cmpwi 31, 0x0
    .4byte 0x41820030 # beq .L_803BA4E8
    .4byte 0x408004B0 # bge .L_803BA96C
    cmpwi 31, -0x3
    .4byte 0x41820018 # beq .L_803BA4DC
    .4byte 0x408004A4 # bge .L_803BA96C
    .4byte 0x48000044 # b .L_803BA510
L_803BA4D0:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000494 # b .L_803BA96C
L_803BA4DC:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000488 # b .L_803BA96C
L_803BA4E8:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820478 # beq .L_803BA96C
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x4800046C # b .L_803BA96C
L_803BA504:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x48000460 # b .L_803BA96C
L_803BA510:
    li 0, 0x2
    stw 0, 0x1fd0(30)
    .4byte 0x48000454 # b .L_803BA96C
L_803BA51C:
    cmpwi 31, -0x5
    .4byte 0x41820048 # beq .L_803BA568
    .4byte 0x40800028 # bge .L_803BA54C
    cmpwi 31, -0xd
    .4byte 0x41820070 # beq .L_803BA59C
    .4byte 0x40800010 # bge .L_803BA540
    cmpwi 31, -0x80
    .4byte 0x41820030 # beq .L_803BA568
    .4byte 0x48000430 # b .L_803BA96C
L_803BA540:
    cmpwi 31, -0x6
    .4byte 0x4080003C # bge .L_803BA580
    .4byte 0x48000424 # b .L_803BA96C
L_803BA54C:
    cmpwi 31, 0x0
    .4byte 0x41820030 # beq .L_803BA580
    .4byte 0x40800418 # bge .L_803BA96C
    cmpwi 31, -0x3
    .4byte 0x41820018 # beq .L_803BA574
    .4byte 0x4080040C # bge .L_803BA96C
    .4byte 0x48000044 # b .L_803BA5A8
L_803BA568:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x480003FC # b .L_803BA96C
L_803BA574:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x480003F0 # b .L_803BA96C
L_803BA580:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x418203E0 # beq .L_803BA96C
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x480003D4 # b .L_803BA96C
L_803BA59C:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x480003C8 # b .L_803BA96C
L_803BA5A8:
    li 0, 0x2
    stw 0, 0x1fd0(30)
    .4byte 0x480003BC # b .L_803BA96C
L_803BA5B4:
    lbz 3, 0x1ff4(30)
    bl fn_80057210
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_803BA5D0
    li 0, 0x5
    stw 0, 0x1fd0(30)
    .4byte 0x480003A0 # b .L_803BA96C
L_803BA5D0:
    cmpwi 3, -0x5
    .4byte 0x41820048 # beq .L_803BA61C
    .4byte 0x40800028 # bge .L_803BA600
    cmpwi 3, -0xd
    .4byte 0x41820070 # beq .L_803BA650
    .4byte 0x40800010 # bge .L_803BA5F4
    cmpwi 3, -0x80
    .4byte 0x41820030 # beq .L_803BA61C
    .4byte 0x4800037C # b .L_803BA96C
L_803BA5F4:
    cmpwi 3, -0x6
    .4byte 0x4080003C # bge .L_803BA634
    .4byte 0x48000370 # b .L_803BA96C
L_803BA600:
    cmpwi 3, 0x0
    .4byte 0x41820030 # beq .L_803BA634
    .4byte 0x40800364 # bge .L_803BA96C
    cmpwi 3, -0x3
    .4byte 0x41820018 # beq .L_803BA628
    .4byte 0x40800358 # bge .L_803BA96C
    .4byte 0x48000044 # b .L_803BA65C
L_803BA61C:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000348 # b .L_803BA96C
L_803BA628:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x4800033C # b .L_803BA96C
L_803BA634:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x4182032C # beq .L_803BA96C
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000320 # b .L_803BA96C
L_803BA650:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x48000314 # b .L_803BA96C
L_803BA65C:
    li 0, 0x2
    stw 0, 0x1fd0(30)
    .4byte 0x48000308 # b .L_803BA96C
L_803BA668:
    lbz 3, 0x1ff4(30)
    addi 4, 1, 0x10
    addi 5, 1, 0x14
    bl fn_80056080
    cmpwi 3, -0x2
    .4byte 0x40820010 # bne .L_803BA68C
    li 0, 0xa
    stw 0, 0x1fd0(30)
    .4byte 0x480002E4 # b .L_803BA96C
L_803BA68C:
    lwz 0, 0x14(1)
    cmpwi 0, 0x2000
    .4byte 0x41820010 # beq .L_803BA6A4
    li 0, 0xb
    stw 0, 0x1fd0(30)
    .4byte 0x480002CC # b .L_803BA96C
L_803BA6A4:
    lis 4, lbl_80512180@ha
    lbz 3, 0x1ff4(30)
    addi 4, 4, lbl_80512180@l
    li 5, 0x0
    bl fn_800568E4
    cmpwi 3, -0x5
    .4byte 0x41820044 # beq .L_803BA700
    .4byte 0x40800028 # bge .L_803BA6E8
    cmpwi 3, -0xd
    .4byte 0x4182007C # beq .L_803BA744
    .4byte 0x40800010 # bge .L_803BA6DC
    cmpwi 3, -0x80
    .4byte 0x4182002C # beq .L_803BA700
    .4byte 0x4800007C # b .L_803BA754
L_803BA6DC:
    cmpwi 3, -0x6
    .4byte 0x4080003C # bge .L_803BA71C
    .4byte 0x48000070 # b .L_803BA754
L_803BA6E8:
    cmpwi 3, 0x0
    .4byte 0x41820030 # beq .L_803BA71C
    .4byte 0x40800064 # bge .L_803BA754
    cmpwi 3, -0x3
    .4byte 0x41820018 # beq .L_803BA710
    .4byte 0x48000058 # b .L_803BA754
L_803BA700:
    li 0, 0xc
    li 3, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x4800004C # b .L_803BA758
L_803BA710:
    li 3, 0x0
    stw 3, 0x1fd0(30)
    .4byte 0x48000040 # b .L_803BA758
L_803BA71C:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_803BA734
    li 3, 0x1
    .4byte 0x48000028 # b .L_803BA758
L_803BA734:
    li 0, 0x7
    li 3, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000018 # b .L_803BA758
L_803BA744:
    li 0, 0x6
    li 3, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000008 # b .L_803BA758
L_803BA754:
    li 3, 0x0
L_803BA758:
    clrlwi. 0, 3, 24
    .4byte 0x41820210 # beq .L_803BA96C
    lis 4, lbl_80476568@ha
    lbz 3, 0x1ff4(30)
    addi 4, 4, lbl_80476568@l
    addi 5, 1, 0x18
    bl fn_80057588
    cmpwi 3, 0x0
    .4byte 0x40820014 # bne .L_803BA78C
    addi 3, 1, 0x18
    bl fn_800576A4
    li 0, 0x1
    .4byte 0x4800009C # b .L_803BA824
L_803BA78C:
    cmpwi 3, -0x5
    .4byte 0x41820048 # beq .L_803BA7D8
    .4byte 0x40800028 # bge .L_803BA7BC
    cmpwi 3, -0xd
    .4byte 0x41820070 # beq .L_803BA80C
    .4byte 0x40800010 # bge .L_803BA7B0
    cmpwi 3, -0x80
    .4byte 0x41820030 # beq .L_803BA7D8
    .4byte 0x48000074 # b .L_803BA820
L_803BA7B0:
    cmpwi 3, -0x6
    .4byte 0x4080003C # bge .L_803BA7F0
    .4byte 0x48000068 # b .L_803BA820
L_803BA7BC:
    cmpwi 3, 0x0
    .4byte 0x41820030 # beq .L_803BA7F0
    .4byte 0x4080005C # bge .L_803BA820
    cmpwi 3, -0x3
    .4byte 0x41820018 # beq .L_803BA7E4
    .4byte 0x40800050 # bge .L_803BA820
    .4byte 0x48000044 # b .L_803BA818
L_803BA7D8:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000040 # b .L_803BA820
L_803BA7E4:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000034 # b .L_803BA820
L_803BA7F0:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_803BA820
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000018 # b .L_803BA820
L_803BA80C:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x4800000C # b .L_803BA820
L_803BA818:
    li 0, 0x2
    stw 0, 0x1fd0(30)
L_803BA820:
    li 0, 0x0
L_803BA824:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_803BA838
    li 0, 0x1
    stw 0, 0x1fd0(30)
    .4byte 0x48000138 # b .L_803BA96C
L_803BA838:
    lbz 3, 0x1ff4(30)
    addi 4, 1, 0x8
    addi 5, 1, 0xc
    bl fn_80053330
    cmpwi 3, 0x0
    .4byte 0x418200A0 # beq .L_803BA8EC
    cmpwi 3, -0x5
    .4byte 0x41820048 # beq .L_803BA89C
    .4byte 0x40800028 # bge .L_803BA880
    cmpwi 3, -0xd
    .4byte 0x41820070 # beq .L_803BA8D0
    .4byte 0x40800010 # bge .L_803BA874
    cmpwi 3, -0x80
    .4byte 0x41820030 # beq .L_803BA89C
    .4byte 0x48000074 # b .L_803BA8E4
L_803BA874:
    cmpwi 3, -0x6
    .4byte 0x4080003C # bge .L_803BA8B4
    .4byte 0x48000068 # b .L_803BA8E4
L_803BA880:
    cmpwi 3, 0x0
    .4byte 0x41820030 # beq .L_803BA8B4
    .4byte 0x4080005C # bge .L_803BA8E4
    cmpwi 3, -0x3
    .4byte 0x41820018 # beq .L_803BA8A8
    .4byte 0x40800050 # bge .L_803BA8E4
    .4byte 0x48000044 # b .L_803BA8DC
L_803BA89C:
    li 0, 0xc
    stw 0, 0x1fd0(30)
    .4byte 0x48000040 # b .L_803BA8E4
L_803BA8A8:
    li 0, 0x0
    stw 0, 0x1fd0(30)
    .4byte 0x48000034 # b .L_803BA8E4
L_803BA8B4:
    lbz 3, 0x1ff4(30)
    bl fn_80055F28
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_803BA8E4
    li 0, 0x7
    stw 0, 0x1fd0(30)
    .4byte 0x48000018 # b .L_803BA8E4
L_803BA8D0:
    li 0, 0x6
    stw 0, 0x1fd0(30)
    .4byte 0x4800000C # b .L_803BA8E4
L_803BA8DC:
    li 0, 0x2
    stw 0, 0x1fd0(30)
L_803BA8E4:
    li 0, 0x3
    .4byte 0x48000030 # b .L_803BA918
L_803BA8EC:
    lwz 0, 0x8(1)
    cmpwi 0, 0x6000
    .4byte 0x4080000C # bge .L_803BA900
    li 0, 0x1
    .4byte 0x4800001C # b .L_803BA918
L_803BA900:
    lwz 0, 0xc(1)
    cmpwi 0, 0x1
    .4byte 0x4080000C # bge .L_803BA914
    li 0, 0x2
    .4byte 0x48000008 # b .L_803BA918
L_803BA914:
    li 0, 0x0
L_803BA918:
    cmpwi 0, 0x2
    .4byte 0x41820034 # beq .L_803BA950
    .4byte 0x4080004C # bge .L_803BA96C
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_803BA938
    .4byte 0x40800018 # bge .L_803BA944
    .4byte 0x4800003C # b .L_803BA96C
    .4byte 0x48000038 # b .L_803BA96C
L_803BA938:
    li 0, 0x2
    stw 0, 0x1fd0(30)
    .4byte 0x4800002C # b .L_803BA96C
L_803BA944:
    li 0, 0x8
    stw 0, 0x1fd0(30)
    .4byte 0x48000020 # b .L_803BA96C
L_803BA950:
    li 0, 0x9
    stw 0, 0x1fd0(30)
    .4byte 0x48000014 # b .L_803BA96C
L_803BA95C:
    lbz 3, 0x1ff4(30)
    bl fn_800569C8
    li 0, 0x0
    stw 0, 0x1fd0(30)
L_803BA96C:
    li 0, 0x0
    addi 3, 30, 0x1fd4
    stw 0, 0x1fcc(30)
    bl OSUnlockMutex
    .4byte 0x4BFFF5E0 # b .L_803B9F5C

