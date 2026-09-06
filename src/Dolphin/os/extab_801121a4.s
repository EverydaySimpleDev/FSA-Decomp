.section extab, "a"
.balign 4
.global etb_80005DBC
etb_80005DBC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005DBC, 8

.global etb_80005DC4
etb_80005DC4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005DC4, 8

.global etb_80005DCC
etb_80005DCC:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80005DCC, 8

.global etb_80005DD4
etb_80005DD4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005DD4, 8

.global etb_80005DDC
etb_80005DDC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005DDC, 8

.global etb_80005DE4
etb_80005DE4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005DE4, 8

.global etb_80005DEC
etb_80005DEC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005DEC, 8

.global etb_80005DF4
etb_80005DF4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005DF4, 8

.global etb_80005DFC
etb_80005DFC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005DFC, 8

.section extabindex, "a"
.balign 4
.global eti_80012268
eti_80012268:
    .4byte fn_801121A4
    .4byte 0x00000224
    .4byte etb_80005DBC
.size eti_80012268, 12

.global eti_80012274
eti_80012274:
    .4byte fn_80112654
    .4byte 0x00000494
    .4byte etb_80005DC4
.size eti_80012274, 12

.global eti_80012280
eti_80012280:
    .4byte fn_80112AE8
    .4byte 0x000001A4
    .4byte etb_80005DCC
.size eti_80012280, 12

.global eti_8001228C
eti_8001228C:
    .4byte fn_80112C9C
    .4byte 0x000001CC
    .4byte etb_80005DD4
.size eti_8001228C, 12

.global eti_80012298
eti_80012298:
    .4byte fn_80112E68
    .4byte 0x00000160
    .4byte etb_80005DDC
.size eti_80012298, 12

.global eti_800122A4
eti_800122A4:
    .4byte fn_80112FC8
    .4byte 0x00000390
    .4byte etb_80005DE4
.size eti_800122A4, 12

.global eti_800122B0
eti_800122B0:
    .4byte fn_80113358
    .4byte 0x00000068
    .4byte etb_80005DEC
.size eti_800122B0, 12

.global eti_800122BC
eti_800122BC:
    .4byte fn_801133C0
    .4byte 0x0000006C
    .4byte etb_80005DF4
.size eti_800122BC, 12

.global eti_800122C8
eti_800122C8:
    .4byte fn_8011342C
    .4byte 0x000000B0
    .4byte etb_80005DFC
.size eti_800122C8, 12

.text
.balign 4
.global fn_801121A4
.global fn_801123C8
.global fn_80112654
.global fn_80112AE8
.global fn_80112C8C
.global fn_80112C94
.global fn_80112C9C
.global fn_80112E68
.global fn_80112FC8
.global fn_80113358
.global fn_801133C0
.global fn_8011342C

fn_801121A4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BBFF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BBFF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801121F4
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
L_801121F4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011222C
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
L_8011222C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80112264
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
L_80112264:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011229C
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
L_8011229C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801122D4
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
L_801122D4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011230C
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
L_8011230C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80112344
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
L_80112344:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011237C
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
L_8011237C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801123B4
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
L_801123B4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801123C8:
    cmpwi 3, 0x3
    .4byte 0x4182015C # beq .L_80112528
    .4byte 0x4080001C # bge .L_801123EC
    cmpwi 3, 0x1
    .4byte 0x41820088 # beq .L_80112460
    .4byte 0x408000E8 # bge .L_801124C4
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_801123FC
    .4byte 0x48000208 # b .L_801125F0
L_801123EC:
    cmpwi 3, 0x5
    .4byte 0x41820200 # beq .L_801125F0
    .4byte 0x408001FC # bge .L_801125F0
    .4byte 0x48000194 # b .L_8011258C
L_801123FC:
    cmpwi 4, 0x3
    .4byte 0x41820048 # beq .L_80112448
    .4byte 0x4080001C # bge .L_80112420
    cmpwi 4, 0x1
    .4byte 0x4182002C # beq .L_80112438
    .4byte 0x40800030 # bge .L_80112440
    cmpwi 4, 0x0
    .4byte 0x40800018 # bge .L_80112430
    .4byte 0x4800003C # b .L_80112458
L_80112420:
    cmpwi 4, 0x5
    .4byte 0x41820034 # beq .L_80112458
    .4byte 0x40800030 # bge .L_80112458
    .4byte 0x48000024 # b .L_80112450
L_80112430:
    li 3, 0x2fd
    blr
L_80112438:
    li 3, 0x307
    blr
L_80112440:
    li 3, 0x301
    blr
L_80112448:
    li 3, 0x2ff
    blr
L_80112450:
    li 3, 0x305
    blr
L_80112458:
    li 3, 0x303
    blr
L_80112460:
    cmpwi 4, 0x3
    .4byte 0x41820048 # beq .L_801124AC
    .4byte 0x4080001C # bge .L_80112484
    cmpwi 4, 0x1
    .4byte 0x4182002C # beq .L_8011249C
    .4byte 0x40800030 # bge .L_801124A4
    cmpwi 4, 0x0
    .4byte 0x40800018 # bge .L_80112494
    .4byte 0x4800003C # b .L_801124BC
L_80112484:
    cmpwi 4, 0x5
    .4byte 0x41820034 # beq .L_801124BC
    .4byte 0x40800030 # bge .L_801124BC
    .4byte 0x48000024 # b .L_801124B4
L_80112494:
    li 3, 0x2fe
    blr
L_8011249C:
    li 3, 0x308
    blr
L_801124A4:
    li 3, 0x302
    blr
L_801124AC:
    li 3, 0x300
    blr
L_801124B4:
    li 3, 0x306
    blr
L_801124BC:
    li 3, 0x304
    blr
L_801124C4:
    cmpwi 4, 0x3
    .4byte 0x41820048 # beq .L_80112510
    .4byte 0x4080001C # bge .L_801124E8
    cmpwi 4, 0x1
    .4byte 0x4182002C # beq .L_80112500
    .4byte 0x40800030 # bge .L_80112508
    cmpwi 4, 0x0
    .4byte 0x40800018 # bge .L_801124F8
    .4byte 0x4800003C # b .L_80112520
L_801124E8:
    cmpwi 4, 0x5
    .4byte 0x41820034 # beq .L_80112520
    .4byte 0x40800030 # bge .L_80112520
    .4byte 0x48000024 # b .L_80112518
L_801124F8:
    li 3, 0x2cf
    blr
L_80112500:
    li 3, 0x2de
    blr
L_80112508:
    li 3, 0x2d5
    blr
L_80112510:
    li 3, 0x2d2
    blr
L_80112518:
    li 3, 0x2db
    blr
L_80112520:
    li 3, 0x2d8
    blr
L_80112528:
    cmpwi 4, 0x3
    .4byte 0x41820048 # beq .L_80112574
    .4byte 0x4080001C # bge .L_8011254C
    cmpwi 4, 0x1
    .4byte 0x4182002C # beq .L_80112564
    .4byte 0x40800030 # bge .L_8011256C
    cmpwi 4, 0x0
    .4byte 0x40800018 # bge .L_8011255C
    .4byte 0x4800003C # b .L_80112584
L_8011254C:
    cmpwi 4, 0x5
    .4byte 0x41820034 # beq .L_80112584
    .4byte 0x40800030 # bge .L_80112584
    .4byte 0x48000024 # b .L_8011257C
L_8011255C:
    li 3, 0x2d0
    blr
L_80112564:
    li 3, 0x2df
    blr
L_8011256C:
    li 3, 0x2d6
    blr
L_80112574:
    li 3, 0x2d3
    blr
L_8011257C:
    li 3, 0x2dc
    blr
L_80112584:
    li 3, 0x2d9
    blr
L_8011258C:
    cmpwi 4, 0x3
    .4byte 0x41820048 # beq .L_801125D8
    .4byte 0x4080001C # bge .L_801125B0
    cmpwi 4, 0x1
    .4byte 0x4182002C # beq .L_801125C8
    .4byte 0x40800030 # bge .L_801125D0
    cmpwi 4, 0x0
    .4byte 0x40800018 # bge .L_801125C0
    .4byte 0x4800003C # b .L_801125E8
L_801125B0:
    cmpwi 4, 0x5
    .4byte 0x41820034 # beq .L_801125E8
    .4byte 0x40800030 # bge .L_801125E8
    .4byte 0x48000024 # b .L_801125E0
L_801125C0:
    li 3, 0x2d1
    blr
L_801125C8:
    li 3, 0x2e0
    blr
L_801125D0:
    li 3, 0x2d7
    blr
L_801125D8:
    li 3, 0x2d4
    blr
L_801125E0:
    li 3, 0x2dd
    blr
L_801125E8:
    li 3, 0x2da
    blr
L_801125F0:
    cmpwi 4, 0x3
    .4byte 0x41820048 # beq .L_8011263C
    .4byte 0x4080001C # bge .L_80112614
    cmpwi 4, 0x1
    .4byte 0x4182002C # beq .L_8011262C
    .4byte 0x40800030 # bge .L_80112634
    cmpwi 4, 0x0
    .4byte 0x40800018 # bge .L_80112624
    .4byte 0x4800003C # b .L_8011264C
L_80112614:
    cmpwi 4, 0x5
    .4byte 0x41820034 # beq .L_8011264C
    .4byte 0x40800030 # bge .L_8011264C
    .4byte 0x48000024 # b .L_80112644
L_80112624:
    li 3, 0x2e4
    blr
L_8011262C:
    li 3, 0x2e9
    blr
L_80112634:
    li 3, 0x2e6
    blr
L_8011263C:
    li 3, 0x2e5
    blr
L_80112644:
    li 3, 0x2e8
    blr
L_8011264C:
    li 3, 0x2e7
    blr

fn_80112654:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    cmplwi 31, 0xf
    stw 30, 0x18(1)
    mr 30, 3
    .4byte 0x41810458 # bgt .L_80112ACC
    lis 3, jumptable_8049D7A0@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_8049D7A0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x234(30)
    li 3, 0x0
    bl fn_801123C8
    mr 5, 3
    lwz 3, 0x4(30)
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x298(30)
    li 3, 0x1
    lwz 4, 0x234(30)
    bl fn_801123C8
    mr 5, 3
    lwz 3, 0x4(30)
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x29c(30)
    addi 3, 30, 0x260
    li 4, 0xa
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 30, 0x260
    bl fn_801D1F14
    .4byte 0x480003AC # b .L_80112ACC
    lwz 4, 0x234(30)
    li 3, 0x2
    bl fn_801123C8
    mr 5, 3
    lwz 3, 0x4(30)
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x234(30)
    li 3, 0x3
    bl fn_801123C8
    mr 5, 3
    lwz 3, 0x4(30)
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x234(30)
    li 3, 0x4
    bl fn_801123C8
    mr 5, 3
    lwz 3, 0x4(30)
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x234(30)
    li 3, 0x5
    bl fn_801123C8
    mr 5, 3
    lwz 3, 0x4(30)
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    addi 4, 30, 0xc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a0(30)
    .4byte 0x480002D4 # b .L_80112ACC
    addi 3, 30, 0x260
    li 4, 0x8
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 30, 0x260
    bl fn_801D1F14
    .4byte 0x480002B0 # b .L_80112ACC
    lwz 5, 0x298(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80112848
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x298(30)
L_80112848:
    lwz 5, 0x29c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80112870
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x29c(30)
L_80112870:
    lwz 5, 0x2a0(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80112898
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2a0(30)
L_80112898:
    addi 3, 30, 0x260
    li 4, 0xb
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 30, 0x260
    bl fn_801D1F14
    .4byte 0x48000214 # b .L_80112ACC
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x8
    lfs 3, 0x14(30)
    li 5, 0x33b
    .4byte 0xC00296A8 # lfs f0, lbl_8053C648@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x0
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    li 8, 0x0
    lfs 2, 0xc(1)
    li 9, 0x0
    stfs 3, 0x10(1)
    li 10, 0x1
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    .4byte 0x480001C8 # b .L_80112ACC
    lwz 0, 0x234(30)
    cmpwi 0, 0x3
    .4byte 0x41820078 # beq .L_80112988
    .4byte 0x4080001C # bge .L_80112930
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_80112958
    .4byte 0x40800050 # bge .L_80112970
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80112940
    .4byte 0x480000A0 # b .L_801129CC
L_80112930:
    cmpwi 0, 0x5
    .4byte 0x41820084 # beq .L_801129B8
    .4byte 0x40800094 # bge .L_801129CC
    .4byte 0x48000064 # b .L_801129A0
L_80112940:
    addi 3, 30, 0x260
    li 4, 0x1
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000078 # b .L_801129CC
L_80112958:
    addi 3, 30, 0x260
    li 4, 0x1
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000060 # b .L_801129CC
L_80112970:
    addi 3, 30, 0x260
    li 4, 0x3
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000048 # b .L_801129CC
L_80112988:
    addi 3, 30, 0x260
    li 4, 0x3
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000030 # b .L_801129CC
L_801129A0:
    addi 3, 30, 0x260
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000018 # b .L_801129CC
L_801129B8:
    addi 3, 30, 0x260
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
L_801129CC:
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 30, 0x260
    bl fn_801D1F14
    .4byte 0x480000F4 # b .L_80112ACC
    addi 3, 30, 0x260
    li 4, 0x3
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 30, 0x260
    bl fn_801D1F14
    .4byte 0x480000D0 # b .L_80112ACC
    addi 3, 30, 0x260
    li 4, 0x6
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 30, 0x260
    bl fn_801D1F14
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    li 5, 0xc1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    li 5, 0xc2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    li 5, 0xc3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    li 5, 0xc4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800000C # b .L_80112ACC
    li 0, 0x1
    stb 0, 0x230(30)
L_80112ACC:
    stw 31, 0x238(30)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80112AE8:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    mr 29, 3
    .4byte 0xC00296AC # lfs f0, lbl_8053C64C@sda21(r0)
    lfs 1, 0x248(3)
    addi 3, 1, 0x50
    fadds 0, 1, 0
    stfs 0, 0x248(29)
    lfs 1, 0xc(29)
    lfs 2, 0x10(29)
    lfs 3, 0x14(29)
    bl PSMTXTrans
    .4byte 0xC0029688 # lfs f0, lbl_8053C628@sda21(r0)
    addi 3, 1, 0x50
    .4byte 0xC04296A4 # lfs f2, lbl_8053C644@sda21(r0)
    addi 4, 1, 0x14
    stfs 0, 0x18(1)
    .4byte 0xC02296B0 # lfs f1, lbl_8053C650@sda21(r0)
    stfs 2, 0x14(1)
    stfs 0, 0x1c(1)
    bl fn_8010F668
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 1, 0x20
    .4byte 0xC00296A4 # lfs f0, lbl_8053C644@sda21(r0)
    addi 4, 1, 0x8
    stfs 1, 0x4c(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x48(1)
    stfs 1, 0x38(1)
    stfs 1, 0x28(1)
    stfs 1, 0x44(1)
    stfs 1, 0x34(1)
    stfs 1, 0x24(1)
    stfs 1, 0x40(1)
    stfs 1, 0x30(1)
    stfs 1, 0x20(1)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 1, 0x248(29)
    bl fn_8010F668
    addi 3, 1, 0x50
    addi 4, 1, 0x20
    mr 5, 3
    bl PSMTXConcat
    lwz 3, 0x244(29)
    addi 0, 3, 0x1
    stw 0, 0x244(29)
    lwz 0, 0x244(29)
    cmpwi 0, 0xc8
    .4byte 0x4180000C # blt .L_80112BD8
    li 0, 0x0
    stw 0, 0x244(29)
L_80112BD8:
    lwz 30, 0x244(29)
    lwz 31, 0x234(29)
    lfs 31, 0x250(29)
    bl fn_801902C0
    mulli 4, 31, 0x60
    addi 4, 4, 0x8
    add 4, 3, 4
    lwz 0, 0x3c(4)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_80112C68
    lbz 0, 0x5c(4)
    cmplwi 0, 0x0
    .4byte 0x40820060 # bne .L_80112C68
    li 3, 0x1
    .4byte 0xC00296B4 # lfs f0, lbl_8053C654@sda21(r0)
    stb 3, 0x5c(4)
    li 0, 0x0
    stfs 31, 0x0(4)
    stfs 31, 0x4(4)
    stfs 31, 0x8(4)
    psq_l 6, 0x50(1), 0, 0
    psq_l 5, 0x58(1), 0, 0
    psq_l 4, 0x60(1), 0, 0
    psq_l 3, 0x68(1), 0, 0
    psq_l 2, 0x70(1), 0, 0
    psq_l 1, 0x78(1), 0, 0
    psq_st 6, 0xc(4), 0, 0
    psq_st 5, 0x14(4), 0, 0
    psq_st 4, 0x1c(4), 0, 0
    psq_st 3, 0x24(4), 0, 0
    psq_st 2, 0x2c(4), 0, 0
    psq_st 1, 0x34(4), 0, 0
    stfs 0, 0x48(4)
    stw 30, 0x4c(4)
    stw 0, 0x54(4)
    stw 3, 0x58(4)
L_80112C68:
    psq_l 31, 0x98(1), 0, 0
    lwz 0, 0xa4(1)
    lfd 31, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80112C8C:
    li 3, 0x1
    blr

fn_80112C94:
    lwz 3, 0x238(3)
    blr

fn_80112C9C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80464678@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 4, lbl_80464678@l
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8011921C
    lwz 0, 0x23c(30)
    lwz 6, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80112CD4
    .4byte 0x48000180 # b .L_80112E50
L_80112CD4:
    addi 5, 31, 0xa4
    lwz 0, 0x8(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112CF4
    mr 3, 30
    li 4, 0x2
    bl fn_80112654
    .4byte 0x48000160 # b .L_80112E50
L_80112CF4:
    lwz 0, 0x234(30)
    addi 3, 31, 0xe4
    lwz 4, 0xc(5)
    slwi 7, 0, 2
    lwzx 0, 3, 7
    add 0, 4, 0
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112D24
    mr 3, 30
    li 4, 0x3
    bl fn_80112654
    .4byte 0x48000130 # b .L_80112E50
L_80112D24:
    lwz 0, 0x10(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112D40
    mr 3, 30
    li 4, 0x4
    bl fn_80112654
    .4byte 0x48000114 # b .L_80112E50
L_80112D40:
    lwz 0, 0x14(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112D5C
    mr 3, 30
    li 4, 0x5
    bl fn_80112654
    .4byte 0x480000F8 # b .L_80112E50
L_80112D5C:
    lwz 0, 0x18(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112D78
    mr 3, 30
    li 4, 0x6
    bl fn_80112654
    .4byte 0x480000DC # b .L_80112E50
L_80112D78:
    lwz 0, 0x1c(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112D94
    mr 3, 30
    li 4, 0x7
    bl fn_80112654
    .4byte 0x480000C0 # b .L_80112E50
L_80112D94:
    lwz 0, 0x20(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112DB0
    mr 3, 30
    li 4, 0x8
    bl fn_80112654
    .4byte 0x480000A4 # b .L_80112E50
L_80112DB0:
    addi 3, 31, 0x114
    lwz 4, 0x24(5)
    lwzx 0, 3, 7
    add 0, 4, 0
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112DD8
    mr 3, 30
    li 4, 0x9
    bl fn_80112654
    .4byte 0x4800007C # b .L_80112E50
L_80112DD8:
    lwz 0, 0x28(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112DF4
    mr 3, 30
    li 4, 0xa
    bl fn_80112654
    .4byte 0x48000060 # b .L_80112E50
L_80112DF4:
    lwz 0, 0x2c(5)
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112E10
    mr 3, 30
    li 4, 0xb
    bl fn_80112654
    .4byte 0x48000044 # b .L_80112E50
L_80112E10:
    addi 3, 31, 0xfc
    lwz 4, 0x30(5)
    lwzx 0, 3, 7
    add 0, 4, 0
    cmpw 6, 0
    .4byte 0x40820014 # bne .L_80112E38
    mr 3, 30
    li 4, 0xc
    bl fn_80112654
    .4byte 0x4800001C # b .L_80112E50
L_80112E38:
    lwz 0, 0x38(5)
    cmpw 6, 0
    .4byte 0x40820010 # bne .L_80112E50
    mr 3, 30
    li 4, 0xf
    bl fn_80112654
L_80112E50:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80112E68:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    bl fn_8010DF58
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4082012C # bne .L_80112FB4
    lwz 4, 0x234(31)
    li 0, -0x1
    lis 3, lbl_80464704@ha
    addi 10, 1, 0x8
    slwi 4, 4, 2
    stw 0, 0x18(1)
    addi 3, 3, lbl_80464704@l
    li 11, 0x0
    stw 0, 0x1c(1)
    lwzx 0, 3, 4
    .4byte 0x48000064 # b .L_80112F18
L_80112EB8:
    clrlwi 3, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 3
    clrlwi 3, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 3
    clrlwi 3, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 3
    clrlwi 3, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 3
    clrlwi 3, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 3
    clrlwi 3, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 3
L_80112F18:
    clrlwi 3, 11, 24
    cmplwi 3, 0x10
    .4byte 0x4180FF98 # blt .L_80112EB8
    li 10, 0x0
    li 9, 0x1
    li 11, -0x1
    li 8, 0x3
    li 5, 0x2
    .4byte 0xC02296A4 # lfs f1, lbl_8053C644@sda21(r0)
    stw 11, 0x18(1)
    lis 3, lbl_804647B0@ha
    fmr 2, 1
    addi 4, 3, lbl_804647B0@l
    stw 10, 0x1c(1)
    mr 3, 31
    addi 6, 1, 0x8
    li 7, 0x7
    stw 10, 0x20(1)
    stb 10, 0x24(1)
    stb 10, 0x25(1)
    stb 10, 0x26(1)
    stb 9, 0x27(1)
    stb 9, 0x28(1)
    stb 10, 0x29(1)
    stb 10, 0x2a(1)
    stb 10, 0x2b(1)
    stb 10, 0x2c(1)
    stb 10, 0x2d(1)
    stb 9, 0x2e(1)
    stw 8, 0x30(1)
    stb 9, 0x34(1)
    stb 10, 0x35(1)
    stb 10, 0x36(1)
    stw 11, 0x38(1)
    stw 10, 0x3c(1)
    stw 5, 0x40(1)
    lwz 5, 0x270(31)
    add 5, 0, 5
    bl fn_801F06F0
L_80112FB4:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80112FC8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    bl fn_8010DF78
    lfs 1, 0x60(31)
    stfs 1, 0x20(1)
    lfs 4, 0x64(31)
    stfs 4, 0x24(1)
    lfs 2, 0x68(31)
    stfs 2, 0x28(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80113044
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80113054
L_80113044:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    bl fn_80239914
L_80113054:
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x4180001C # blt .L_80113078
    cmpwi 0, 0x5
    .4byte 0x41810014 # bgt .L_80113078
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80113078:
    lwz 0, 0x238(31)
    cmplwi 0, 0xf
    .4byte 0x418102A0 # bgt .L_80113320
    lis 3, jumptable_8049D7E0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D7E0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 29, 3
    .4byte 0x41800260 # blt .L_80113320
    cmpwi 29, 0x4
    .4byte 0x40800258 # bge .L_80113320
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 29
    lbz 4, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x4182023C # beq .L_80113320
    psq_l 0, 0xc(31), 0, 0
    addi 7, 1, 0x8
    lfs 2, 0x14(31)
    li 4, 0x23e
    psq_st 0, 0x14(1), 0, 0
    li 8, 0x20
    .4byte 0xC00296B8 # lfs f0, lbl_8053C658@sda21(r0)
    lfs 1, 0x18(1)
    lwz 5, 0x198(31)
    fadds 0, 1, 0
    lwz 6, 0x4(31)
    stfs 2, 0x1c(1)
    stfs 0, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    stfs 2, 0x10(1)
    psq_st 0, 0x0(7), 0, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418201F0 # beq .L_80113320
    stw 29, 0x240(31)
    mr 3, 31
    li 4, 0x1
    bl fn_80112654
    .4byte 0x480001DC # b .L_80113320
    lwz 3, 0x240(31)
    addi 4, 1, 0x20
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x240(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418201AC # beq .L_80113320
    li 0, -0x1
    mr 3, 31
    stw 0, 0x240(31)
    li 4, 0x0
    bl fn_80112654
    .4byte 0x48000194 # b .L_80113320
    addi 3, 31, 0x260
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x41820184 # beq .L_80113320
    lwz 0, 0x268(31)
    cmpwi 0, 0xa
    .4byte 0x40820178 # bne .L_80113320
    addi 3, 31, 0x260
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 31, 0x260
    bl fn_801D1F14
    .4byte 0x48000154 # b .L_80113320
    addi 3, 31, 0x260
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x41820144 # beq .L_80113320
    lwz 0, 0x268(31)
    cmpwi 0, 0xa
    .4byte 0x40820138 # bne .L_80113320
    addi 3, 31, 0x260
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 31, 0x260
    bl fn_801D1F14
    .4byte 0x48000114 # b .L_80113320
    lfs 2, 0x248(31)
    addi 3, 31, 0x24c
    .4byte 0xC0029690 # lfs f0, lbl_8053C630@sda21(r0)
    .4byte 0xC0229694 # lfs f1, lbl_8053C634@sda21(r0)
    fadds 0, 2, 0
    .4byte 0xC0429698 # lfs f2, lbl_8053C638@sda21(r0)
    stfs 0, 0x248(31)
    bl fn_801CD950
    lfs 3, 0x254(31)
    lis 3, lbl_80534C00@ha
    lfs 1, 0xc(31)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x258(31)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC042969C # lfs f2, lbl_8053C63C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    lfs 0, 0x24c(31)
    fmuls 1, 1, 2
    addi 3, 31, 0xc
    fctiwz 1, 1
    stfd 1, 0x30(1)
    lwz 0, 0x34(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    add 4, 4, 0
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 1, 0x24c(31)
    lfs 0, 0x4(4)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
    lfs 1, 0x254(31)
    lfs 2, 0x3c(31)
    bl fn_801CD950
    lfs 1, 0x258(31)
    mr 29, 3
    lfs 2, 0x40(31)
    addi 3, 31, 0x10
    bl fn_801CD950
    .4byte 0xC0229698 # lfs f1, lbl_8053C638@sda21(r0)
    mr 30, 3
    .4byte 0xC04296A0 # lfs f2, lbl_8053C640@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801CD950
    cmpwi 29, 0x0
    .4byte 0x40820014 # bne .L_801132E8
    cmpwi 30, 0x0
    .4byte 0x4082000C # bne .L_801132E8
    li 0, 0x1
    .4byte 0x48000008 # b .L_801132EC
L_801132E8:
    li 0, 0x0
L_801132EC:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_80113320
    mr 3, 31
    li 4, 0xd
    bl fn_80112654
    .4byte 0x48000020 # b .L_80113320
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 31, 0x250
    .4byte 0xC042968C # lfs f2, lbl_8053C62C@sda21(r0)
    bl fn_801CD950
    .4byte 0x4800000C # b .L_80113320
    li 0, 0x0
    stb 0, 0x11d(31)
L_80113320:
    addi 3, 31, 0x260
    bl fn_801D1C18
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8011333C
    mr 3, 31
    bl fn_80112AE8
L_8011333C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80113358:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x444d
    addi 4, 4, 0x474c
    bl fn_801F7A08
    mr 31, 3
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801133A8
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x254(30), 0, 0
    stfs 0, 0x25c(30)
L_801133A8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801133C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF98
    lwz 0, 0x90(31)
    lis 3, lbl_8049D710@ha
    addi 4, 3, lbl_8049D710@l
    li 5, 0xc
    clrlwi 0, 0, 27
    addi 3, 31, 0x260
    stw 0, 0x234(31)
    bl fn_801D2608
    addi 3, 31, 0x260
    li 4, 0x5
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229688 # lfs f1, lbl_8053C628@sda21(r0)
    addi 3, 31, 0x260
    bl fn_801D1F14
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011342C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820078 # beq .L_801134C0
    lis 3, lbl_8049D740@ha
    addi 0, 3, lbl_8049D740@l
    stw 0, 0x0(30)
    lwz 3, 0x298(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x298(30)
    lwz 3, 0x29c(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x29c(30)
    lwz 3, 0x2a0(30)
    bl fn_801EE434
    li 3, 0x0
    addic. 0, 30, 0x260
    stw 3, 0x2a0(30)
    .4byte 0x41820018 # beq .L_801134A4
    addic. 0, 30, 0x284
    .4byte 0x41820010 # beq .L_801134A4
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x284(30)
L_801134A4:
    mr 3, 30
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801134C0
    mr 3, 30
    bl dtor_80084580
L_801134C0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801121A4
