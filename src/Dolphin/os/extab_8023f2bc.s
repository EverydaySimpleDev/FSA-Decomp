.section extab, "a"
.balign 4
.global etb_8000B230
etb_8000B230:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000B230, 8

.global etb_8000B238
etb_8000B238:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B238, 8

.global etb_8000B240
etb_8000B240:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B240, 8

.global etb_8000B248
etb_8000B248:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B248, 8

.global etb_8000B250
etb_8000B250:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B250, 8

.global etb_8000B258
etb_8000B258:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B258, 8

.global etb_8000B260
etb_8000B260:
    .4byte 0x20080000
    .4byte 0x0000006C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_8000B260, 24

.section extabindex, "a"
.balign 4
.global eti_80019654
eti_80019654:
    .4byte fn_8023F2BC
    .4byte 0x000000D4
    .4byte etb_8000B230
.size eti_80019654, 12

.global eti_80019660
eti_80019660:
    .4byte fn_8023F390
    .4byte 0x00000334
    .4byte etb_8000B238
.size eti_80019660, 12

.global eti_8001966C
eti_8001966C:
    .4byte fn_8023F6C4
    .4byte 0x00000064
    .4byte etb_8000B240
.size eti_8001966C, 12

.global eti_80019678
eti_80019678:
    .4byte fn_8023F728
    .4byte 0x00000064
    .4byte etb_8000B248
.size eti_80019678, 12

.global eti_80019684
eti_80019684:
    .4byte fn_8023F78C
    .4byte 0x0000006C
    .4byte etb_8000B250
.size eti_80019684, 12

.global eti_80019690
eti_80019690:
    .4byte fn_8023F7F8
    .4byte 0x000000B8
    .4byte etb_8000B258
.size eti_80019690, 12

.global eti_8001969C
eti_8001969C:
    .4byte fn_8023F8B0
    .4byte 0x000000D4
    .4byte etb_8000B260
.size eti_8001969C, 12

.text
.balign 4
.global fn_8023F2BC
.global fn_8023F390
.global fn_8023F6C4
.global fn_8023F728
.global fn_8023F78C
.global fn_8023F7F8
.global fn_8023F8B0

fn_8023F2BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x1
    stw 30, 0x18(1)
    li 30, 0xc
    stw 29, 0x14(1)
    li 29, 0x3
L_8023F2E0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 31, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x40820024 # bne .L_8023F318
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F30C
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F314
L_8023F30C:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
L_8023F314:
    bl fn_80264998
L_8023F318:
    subic. 29, 29, 0x1
    subi 30, 30, 0x4
    .4byte 0x4080FFC0 # bge .L_8023F2E0
    li 29, 0x3
    li 30, 0xc
    li 31, 0x1
L_8023F330:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 31, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820024 # beq .L_8023F368
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F35C
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F364
L_8023F35C:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
L_8023F364:
    bl fn_80264998
L_8023F368:
    subic. 29, 29, 0x1
    subi 30, 30, 0x4
    .4byte 0x4080FFC0 # bge .L_8023F330
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023F390:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    li 30, 0x0
L_8023F3AC:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F3C0
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F3C8
L_8023F3C0:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
L_8023F3C8:
    bl fn_80253E6C
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8023F3AC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x418202C4 # beq .L_8023F6AC
    li 30, 0x0
    li 31, 0x0
L_8023F3F4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F408
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F410
L_8023F408:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
L_8023F410:
    bl fn_80252FC0
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8023F3F4
    li 6, 0x0
    li 0, 0x2
    mr 4, 6
    li 7, 0x0
    mr 3, 6
    mtctr 0
L_8023F43C:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023F450
    li 5, 0x0
    .4byte 0x4800000C # b .L_8023F458
L_8023F450:
    addi 0, 6, 0x4
    lwzx 5, 5, 0
L_8023F458:
    stb 4, 0x434(5)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023F470
    li 5, 0x0
    .4byte 0x4800000C # b .L_8023F478
L_8023F470:
    addi 0, 6, 0x4
    lwzx 5, 5, 0
L_8023F478:
    stb 3, 0x435(5)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023F490
    li 5, 0x0
    .4byte 0x4800000C # b .L_8023F498
L_8023F490:
    addi 0, 6, 0x8
    lwzx 5, 5, 0
L_8023F498:
    stb 4, 0x434(5)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023F4B0
    li 5, 0x0
    .4byte 0x4800000C # b .L_8023F4B8
L_8023F4B0:
    addi 0, 6, 0x8
    lwzx 5, 5, 0
L_8023F4B8:
    stb 3, 0x435(5)
    addi 6, 6, 0x8
    addi 7, 7, 0x1
    .4byte 0x4200FF78 # bdnz .L_8023F43C
    bl fn_80232A0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8023F4E0
    bl fn_80231DE4
L_8023F4E0:
    li 30, 0x0
    li 31, 0x0
L_8023F4E8:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F4FC
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F504
L_8023F4FC:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
L_8023F504:
    bl EmptyHook_80252FBC
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8023F4E8
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4182018C # beq .L_8023F6AC
    li 31, 0x0
    mr 30, 31
L_8023F52C:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F540
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023F57C
L_8023F540:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8023F550
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023F57C
L_8023F550:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8023F560
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023F57C
L_8023F560:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023F578
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023F57C
L_8023F578:
    lbz 0, 0xcac(4)
L_8023F57C:
    clrlwi. 0, 0, 24
    .4byte 0x41820110 # beq .L_8023F690
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F594
    li 3, 0x0
    .4byte 0x48000068 # b .L_8023F5F8
L_8023F594:
    .4byte 0x4082000C # bne .L_8023F5A0
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023F5DC
L_8023F5A0:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8023F5B0
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023F5DC
L_8023F5B0:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8023F5C0
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023F5DC
L_8023F5C0:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023F5D8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023F5DC
L_8023F5D8:
    lbz 0, 0xcac(4)
L_8023F5DC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8023F5EC
    li 3, 0x1
    .4byte 0x48000010 # b .L_8023F5F8
L_8023F5EC:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    bl fn_80240670
L_8023F5F8:
    clrlwi. 0, 3, 24
    .4byte 0x40820094 # bne .L_8023F690
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F614
    li 0, 0x0
    .4byte 0x48000068 # b .L_8023F678
L_8023F614:
    .4byte 0x4082000C # bne .L_8023F620
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023F65C
L_8023F620:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8023F630
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023F65C
L_8023F630:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8023F640
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023F65C
L_8023F640:
    addi 0, 30, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023F658
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023F65C
L_8023F658:
    lbz 0, 0xcac(4)
L_8023F65C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8023F66C
    li 0, 0x0
    .4byte 0x48000010 # b .L_8023F678
L_8023F66C:
    addi 0, 30, 0x4
    lwzx 3, 3, 0
    lwz 0, 0x3b4(3)
L_8023F678:
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_8023F690
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80457DFC
    .4byte 0x48000020 # b .L_8023F6AC
L_8023F690:
    addi 31, 31, 0x1
    addi 30, 30, 0x4
    cmpwi 31, 0x4
    .4byte 0x4180FE90 # blt .L_8023F52C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80457DFC
L_8023F6AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023F6C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    li 30, 0x0
L_8023F6E0:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F6F4
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F6FC
L_8023F6F4:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
L_8023F6FC:
    bl fn_80254660
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8023F6E0
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023F728:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    li 30, 0x0
L_8023F744:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F758
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F760
L_8023F758:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
L_8023F760:
    bl fn_802544B0
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8023F744
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023F78C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    li 30, 0x0
L_8023F7A8:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023F7BC
    li 3, 0x0
    .4byte 0x4800000C # b .L_8023F7C4
L_8023F7BC:
    addi 0, 31, 0x4
    lwzx 3, 3, 0
L_8023F7C4:
    bl fn_80254744
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_8023F7A8
    li 0, -0x1
    .4byte 0x900D85D0 # stw r0, lbl_8053A190@sda21(r0)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023F7F8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x41820070 # beq .L_8023F88C
    lis 3, lbl_804A6F28@ha
    li 4, 0x0
    addi 0, 3, lbl_804A6F28@l
    stw 0, 0x0(28)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_8045815C
    li 30, 0x0
    mr 31, 28
L_8023F840:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8023F864
    .4byte 0x41820018 # beq .L_8023F864
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8023F864:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_8023F840
    li 3, 0x0
    extsh. 0, 29
    .4byte 0x906D90D0 # stw r3, lbl_8053AC90@sda21(r0)
    .4byte 0x4081000C # ble .L_8023F88C
    mr 3, 28
    bl dtor_80084580
L_8023F88C:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023F8B0:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804A6F28@ha
    li 5, 0x0
    stw 0, 0x24(1)
    addi 0, 4, lbl_804A6F28@l
    li 6, 0xc
    li 7, 0x4
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lis 3, fn_8003B2CC@ha
    stw 28, 0x10(1)
    addi 4, 3, fn_8003B2CC@l
    addi 3, 29, 0x14
    stw 0, 0x0(29)
    bl __construct_array
    .4byte 0x93AD90D0 # stw r29, lbl_8053AC90@sda21(r0)
    mr 31, 29
    li 30, 0x0
L_8023F904:
    li 3, 0x13bc
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_8023F91C
    mr 4, 30
    bl fn_80255B28
L_8023F91C:
    addi 30, 30, 0x1
    stwu 28, 0x4(31)
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_8023F904
    li 0, 0x0
    li 4, 0x0
    stw 0, 0x68(29)
    stb 0, 0x6c(29)
    stb 0, 0x6d(29)
    stb 0, 0x6e(29)
    stb 0, 0x6f(29)
    stb 0, 0x70(29)
    stb 0, 0x71(29)
    stb 0, 0x72(29)
    stb 0, 0x73(29)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_8045815C
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

