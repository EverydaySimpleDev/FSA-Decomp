# 901KB-gap non-actor manager block: 8 functions, 10,680 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800105EC
etb_800105EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800105EC, 8

.global etb_800105F4
etb_800105F4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_800105F4, 8

.global etb_800105FC
etb_800105FC:
    .4byte 0x484A0000
    .4byte 0x00000000
.size etb_800105FC, 8

.global etb_80010604
etb_80010604:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_80010604, 8

.global etb_8001060C
etb_8001060C:
    .4byte 0x500A0000
    .4byte 0x00000000
.size etb_8001060C, 8

.global etb_80010614
etb_80010614:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_80010614, 8

.global etb_8001061C
etb_8001061C:
    .4byte 0x40080000
    .4byte 0x00000000
.size etb_8001061C, 8

.global etb_80010624
etb_80010624:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_80010624, 8

.section extabindex, "a"
.balign 4
.global eti_80020410
eti_80020410:
    .4byte fn_80421438
    .4byte 0x00000224
    .4byte etb_800105EC
.size eti_80020410, 12

.global eti_8002041C
eti_8002041C:
    .4byte fn_8042165C
    .4byte 0x000003D8
    .4byte etb_800105F4
.size eti_8002041C, 12

.global eti_80020428
eti_80020428:
    .4byte fn_80421A34
    .4byte 0x00000344
    .4byte etb_800105FC
.size eti_80020428, 12

.global eti_80020434
eti_80020434:
    .4byte fn_80421D78
    .4byte 0x000003E4
    .4byte etb_80010604
.size eti_80020434, 12

.global eti_80020440
eti_80020440:
    .4byte fn_8042215C
    .4byte 0x000006C8
    .4byte etb_8001060C
.size eti_80020440, 12

.global eti_8002044C
eti_8002044C:
    .4byte fn_80422824
    .4byte 0x00000A24
    .4byte etb_80010614
.size eti_8002044C, 12

.global eti_80020458
eti_80020458:
    .4byte fn_80423248
    .4byte 0x000005BC
    .4byte etb_8001061C
.size eti_80020458, 12

.global eti_80020464
eti_80020464:
    .4byte fn_80423804
    .4byte 0x000005EC
    .4byte etb_80010624
.size eti_80020464, 12

.text
.balign 4
.global fn_80421438
.global fn_8042165C
.global fn_80421A34
.global fn_80421D78
.global fn_8042215C
.global fn_80422824
.global fn_80423248
.global fn_80423804

fn_80421438:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052A340@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8052A340@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80421488
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
L_80421488:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804214C0
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
L_804214C0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804214F8
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
L_804214F8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80421530
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
L_80421530:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80421568
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
L_80421568:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804215A0
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
L_804215A0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_804215D8
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
L_804215D8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80421610
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
L_80421610:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80421648
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
L_80421648:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042165C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stmw 26, 0x18(1)
    mr 27, 3
    li 29, 0x0
    sth 0, 0x1f0(3)
    lis 3, lbl_8048E1B8@ha
    addi 31, 3, lbl_8048E1B8@l
    sth 0, 0x1f2(27)
    sth 0, 0x1f4(27)
    sth 0, 0x1f6(27)
L_80421690:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 26, 0, 29
    lbz 3, 0x82(3)
    clrlwi 0, 26, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x4182012C # beq .L_804217E0
    mr 3, 29
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x4082011C # bne .L_804217E0
    li 0, 0x0
    clrlwi 3, 26, 16
    cmpw 0, 29
    .4byte 0x41820010 # beq .L_804216E4
    lhz 0, 0x1f0(27)
    or 0, 0, 3
    sth 0, 0x1f0(27)
L_804216E4:
    li 0, 0x1
    cmpw 0, 29
    .4byte 0x41820010 # beq .L_804216FC
    lhz 0, 0x1f2(27)
    or 0, 0, 3
    sth 0, 0x1f2(27)
L_804216FC:
    li 0, 0x2
    cmpw 0, 29
    .4byte 0x41820010 # beq .L_80421714
    lhz 0, 0x1f4(27)
    or 0, 0, 3
    sth 0, 0x1f4(27)
L_80421714:
    li 0, 0x3
    cmpw 0, 29
    .4byte 0x41820010 # beq .L_8042172C
    lhz 0, 0x1f6(27)
    or 0, 0, 3
    sth 0, 0x1f6(27)
L_8042172C:
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x408000A8 # bge .L_804217E0
    mr 3, 29
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    addi 7, 1, 0x8
    li 6, 0x0
    lwz 3, 0x24(5)
    li 5, 0x0
    bl fn_8030C5F0
    addi 28, 31, 0xff8
    addi 26, 31, 0xfd0
    li 30, 0x0
L_8042176C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lfs 1, 0x0(26)
    lfs 2, 0x0(28)
    lfs 3, 0x8(1)
    lfs 4, 0xc(1)
    .4byte 0xC0A20AA0 # lfs f5, lbl_80543A40@sda21(r0)
    bl fn_8043DF24
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_804217CC
    li 0, 0x1
    lhz 4, 0x1f0(27)
    slw 0, 0, 30
    clrlwi 3, 0, 16
    or 0, 4, 3
    sth 0, 0x1f0(27)
    lhz 0, 0x1f2(27)
    or 0, 0, 3
    sth 0, 0x1f2(27)
    lhz 0, 0x1f4(27)
    or 0, 0, 3
    sth 0, 0x1f4(27)
    lhz 0, 0x1f6(27)
    or 0, 0, 3
    sth 0, 0x1f6(27)
L_804217CC:
    addi 30, 30, 0x1
    addi 26, 26, 0x4
    cmpwi 30, 0xa
    addi 28, 28, 0x4
    .4byte 0x4180FF90 # blt .L_8042176C
L_804217E0:
    addi 5, 29, 0x24d
    lbzx 0, 27, 5
    cmplwi 0, 0xff
    .4byte 0x41820094 # beq .L_80421880
    li 4, 0x0
    li 3, 0x1
    cmpw 4, 29
    .4byte 0x41820018 # beq .L_80421814
    slw 0, 3, 0
    lhz 4, 0x1f0(27)
    clrlwi 0, 0, 16
    or 0, 4, 0
    sth 0, 0x1f0(27)
L_80421814:
    li 4, 0x1
    cmpw 4, 29
    .4byte 0x4182001C # beq .L_80421838
    lbzx 0, 27, 5
    lhz 4, 0x1f2(27)
    slw 0, 3, 0
    clrlwi 0, 0, 16
    or 0, 4, 0
    sth 0, 0x1f2(27)
L_80421838:
    li 4, 0x2
    cmpw 4, 29
    .4byte 0x4182001C # beq .L_8042185C
    lbzx 0, 27, 5
    lhz 4, 0x1f4(27)
    slw 0, 3, 0
    clrlwi 0, 0, 16
    or 0, 4, 0
    sth 0, 0x1f4(27)
L_8042185C:
    li 4, 0x3
    cmpw 4, 29
    .4byte 0x4182001C # beq .L_80421880
    lbzx 0, 27, 5
    lhz 4, 0x1f6(27)
    slw 0, 3, 0
    clrlwi 0, 0, 16
    or 0, 4, 0
    sth 0, 0x1f6(27)
L_80421880:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE08 # blt .L_80421690
    mr 30, 27
    mr 29, 27
    addi 31, 31, 0x1020
    li 28, 0x0
L_8042189C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 28
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820154 # beq .L_80421A08
    mr 3, 28
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x40820144 # bne .L_80421A08
    mr 3, 28
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800134 # bge .L_80421A08
    li 0, 0xa
    mr 5, 31
    li 6, 0x0
    li 3, 0x1
    mtctr 0
L_804218EC:
    lbz 0, 0x0(5)
    lhz 4, 0x1f0(30)
    slw 0, 3, 0
    clrlwi 0, 0, 16
    and. 0, 4, 0
    .4byte 0x40820098 # bne .L_80421998
    add 5, 27, 28
    lbzx 3, 31, 6
    lbz 0, 0x251(5)
    cmplw 0, 3
    .4byte 0x41820090 # beq .L_804219A4
    lbz 0, 0x24d(5)
    cmplwi 0, 0xff
    .4byte 0x40820084 # bne .L_804219A4
    stb 3, 0x24d(5)
    li 0, 0x0
    li 4, 0x1
    stw 0, 0x198(29)
    lbz 0, 0x24d(5)
    lhz 3, 0x1f0(27)
    slw 0, 4, 0
    clrlwi 0, 0, 16
    or 0, 3, 0
    sth 0, 0x1f0(27)
    lbz 0, 0x24d(5)
    lhz 3, 0x1f2(27)
    slw 0, 4, 0
    clrlwi 0, 0, 16
    or 0, 3, 0
    sth 0, 0x1f2(27)
    lbz 0, 0x24d(5)
    lhz 3, 0x1f4(27)
    slw 0, 4, 0
    clrlwi 0, 0, 16
    or 0, 3, 0
    sth 0, 0x1f4(27)
    lbz 0, 0x24d(5)
    lhz 3, 0x1f6(27)
    slw 0, 4, 0
    clrlwi 0, 0, 16
    or 0, 3, 0
    sth 0, 0x1f6(27)
    .4byte 0x48000010 # b .L_804219A4
L_80421998:
    addi 5, 5, 0x1
    addi 6, 6, 0x1
    .4byte 0x4200FF4C # bdnz .L_804218EC
L_804219A4:
    add 4, 27, 28
    lbz 0, 0x24d(4)
    cmplwi 0, 0xff
    .4byte 0x41820030 # beq .L_804219E0
    lwz 3, 0x198(29)
    addi 0, 3, 0x1
    stw 0, 0x198(29)
    lwz 0, 0x198(29)
    cmpwi 0, 0x3c
    .4byte 0x41800040 # blt .L_80421A08
    lbz 3, 0x24d(4)
    li 0, 0xff
    stb 3, 0x251(4)
    stb 0, 0x24d(4)
    .4byte 0x4800002C # b .L_80421A08
L_804219E0:
    lwz 3, 0x198(29)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80421A08
    addi 0, 3, 0x1
    stw 0, 0x198(29)
    lwz 0, 0x198(29)
    cmpwi 0, 0x78
    .4byte 0x4180000C # blt .L_80421A08
    li 0, 0x0
    stw 0, 0x198(29)
L_80421A08:
    addi 28, 28, 0x1
    addi 30, 30, 0x2
    cmpwi 28, 0x4
    addi 29, 29, 0x4
    addi 31, 31, 0xa
    .4byte 0x4180FE80 # blt .L_8042189C
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80421A34:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stmw 23, 0x4c(1)
    mr 30, 3
    li 0, 0x1
    slw 0, 0, 4
    lbz 3, 0x25d(3)
    slwi 8, 4, 2
    lis 6, lbl_8048E1B8@ha
    clrlwi 0, 0, 24
    add 7, 30, 8
    addi 31, 6, lbl_8048E1B8@l
    and. 0, 3, 0
    lfs 2, 0x118(7)
    .4byte 0x4082003C # bne .L_80421AB4
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40810014 # ble .L_80421A98
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x118(7)
    .4byte 0x48000008 # b .L_80421A9C
L_80421A98:
    stfs 0, 0x118(7)
L_80421A9C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 6, 0x1
    lwz 0, 0x20(3)
    add 3, 0, 4
    stb 6, 0x217(3)
    .4byte 0x48000094 # b .L_80421B44
L_80421AB4:
    lis 3, lbl_80529DEC@ha
    addi 0, 3, lbl_80529DEC@l
    add 3, 0, 8
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_80421B24
    .4byte 0xC0220AA8 # lfs f1, lbl_80543A48@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_80421AFC
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x118(7)
    lfs 0, 0x118(7)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820054 # bne .L_80421B44
    stfs 1, 0x118(7)
    .4byte 0x4800004C # b .L_80421B44
L_80421AFC:
    .4byte 0x40800048 # bge .L_80421B44
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x118(7)
    lfs 0, 0x118(7)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_80421B44
    stfs 1, 0x118(7)
    .4byte 0x48000024 # b .L_80421B44
L_80421B24:
    .4byte 0xC0020AAC # lfs f0, lbl_80543A4C@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80421B40
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x118(7)
    .4byte 0x48000008 # b .L_80421B44
L_80421B40:
    stfs 0, 0x118(7)
L_80421B44:
    lfs 0, 0x118(7)
    fcmpu cr0, 2, 0
    .4byte 0x4082000C # bne .L_80421B58
    clrlwi. 0, 5, 24
    .4byte 0x41820208 # beq .L_80421D5C
L_80421B58:
    .4byte 0xCBE20AB0 # lfd f31, lbl_80543A50@sda21(r0)
    addi 28, 31, 0xc68
    addi 27, 31, 0xce8
    addi 26, 31, 0xca8
    addi 25, 31, 0xd28
    add 24, 30, 8
    li 23, 0x0
    lis 29, 0x4330
L_80421B78:
    lwz 3, 0x8(24)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21c(30)
    lwz 12, 0x0(3)
    stw 0, 0xc(1)
    lfs 0, 0x118(24)
    stw 29, 0x8(1)
    lwz 12, 0x24(12)
    lfd 1, 0x8(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(24)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21d(30)
    lwz 12, 0x0(3)
    stw 0, 0x1c(1)
    lfs 0, 0x118(24)
    stw 29, 0x18(1)
    lwz 12, 0x24(12)
    lfd 1, 0x18(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(24)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21e(30)
    lwz 12, 0x0(3)
    stw 0, 0x2c(1)
    lfs 0, 0x118(24)
    stw 29, 0x28(1)
    lwz 12, 0x24(12)
    lfd 1, 0x28(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    lwz 3, 0x8(24)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21f(30)
    lwz 12, 0x0(3)
    stw 0, 0x3c(1)
    lfs 0, 0x118(24)
    stw 29, 0x38(1)
    lwz 12, 0x24(12)
    lfd 1, 0x38(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 27, 27, 0x8
    cmpwi 23, 0x8
    addi 26, 26, 0x8
    addi 25, 25, 0x8
    addi 28, 28, 0x8
    .4byte 0x4180FE98 # blt .L_80421B78
    .4byte 0xCBE20AB0 # lfd f31, lbl_80543A50@sda21(r0)
    addi 25, 31, 0xfa0
    li 23, 0x0
    lis 31, 0x4330
L_80421CF4:
    lwz 3, 0x2c(24)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 23, 0x247
    lwz 12, 0x0(3)
    lbzx 0, 30, 0
    stw 31, 0x40(1)
    lfs 0, 0x118(24)
    stw 0, 0x44(1)
    lwz 12, 0x24(12)
    lfd 1, 0x40(1)
    fsubs 1, 1, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 25, 25, 0x8
    cmpwi 23, 0x6
    .4byte 0x4180FF9C # blt .L_80421CF4
L_80421D5C:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    lmw 23, 0x4c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80421D78:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 28, 4
    mr 27, 3
    mr 3, 28
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x0
    .4byte 0x40810380 # ble .L_80422120
    mr 3, 28
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x12c
    .4byte 0x4080036C # bge .L_80422120
    mr 3, 28
    bl fn_8022EA0C
    bl fn_802366CC
    lis 4, 0x8889
    add 30, 27, 28
    subi 4, 4, 0x7777
    lbz 0, 0x25e(30)
    mulhw 4, 4, 3
    add 3, 4, 3
    srawi 3, 3, 5
    srwi 4, 3, 31
    add 3, 3, 4
    addi 29, 3, 0x1
    cmpw 29, 0
    .4byte 0x4182033C # beq .L_8042212C
    cmpwi 29, 0x63
    .4byte 0x40810008 # ble .L_80421E00
    li 29, 0x63
L_80421E00:
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_80421E0C
    li 29, 0x0
L_80421E0C:
    cmpwi 29, 0xa
    .4byte 0x40800128 # bge .L_80421F38
    lis 3, lbl_804B1434@ha
    lis 5, 0x5449
    slwi 0, 29, 2
    addi 4, 3, lbl_804B1434@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    slwi 0, 28, 2
    mr 5, 3
    add 26, 27, 0
    lis 4, lbl_8048F158@ha
    lwz 3, 0x2c(26)
    mr 24, 5
    lwzu 5, lbl_8048F158@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(26)
    lis 4, lbl_8048F158@ha
    addi 4, 4, lbl_8048F158@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(26)
    lis 4, lbl_8048F158@ha
    addi 25, 4, lbl_8048F158@l
    lwz 12, 0x0(3)
    lwz 5, 0x10(25)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(25)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x40820238 # bne .L_80422118
    lwz 3, 0x2c(26)
    lwz 5, 0x10(25)
    lwz 12, 0x0(3)
    lwz 6, 0x14(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, lbl_8048F158@ha
    stb 0, 0xb0(3)
    addi 4, 4, lbl_8048F158@l
    lwz 5, 0x18(4)
    lwz 3, 0x2c(26)
    lwz 6, 0x1c(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480001E4 # b .L_80422118
L_80421F38:
    lis 4, 0x6666
    lis 3, lbl_804B1434@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B1434@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    slwi 0, 28, 2
    mr 5, 3
    add 31, 27, 0
    lis 4, lbl_8048F158@ha
    lwz 3, 0x2c(31)
    mr 24, 5
    lwzu 5, lbl_8048F158@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 4, lbl_8048F158@ha
    addi 4, 4, lbl_8048F158@l
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1434@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B1434@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 29
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 24, 3
    lwz 3, 0x2c(31)
    lis 4, lbl_8048F158@ha
    lwz 12, 0x0(3)
    addi 25, 4, lbl_8048F158@l
    lwz 5, 0x10(25)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(25)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 4, lbl_8048F158@ha
    addi 26, 4, lbl_8048F158@l
    lwz 12, 0x0(3)
    lwz 5, 0x18(26)
    lwz 12, 0x3c(12)
    lwz 6, 0x1c(26)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lwz 5, 0x10(25)
    lwz 12, 0x0(3)
    lwz 6, 0x14(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80422118
    lwz 3, 0x2c(31)
    lwz 5, 0x10(25)
    lwz 12, 0x0(3)
    lwz 6, 0x14(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x18(26)
    stb 0, 0xb0(3)
    lwz 6, 0x1c(26)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80422118:
    stb 29, 0x25e(30)
    .4byte 0x48000010 # b .L_8042212C
L_80422120:
    add 3, 27, 28
    li 0, 0x0
    stb 0, 0x25e(3)
L_8042212C:
    slwi 0, 28, 1
    add 4, 27, 0
    lha 3, 0x208(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80422148
    subi 0, 3, 0x1
    sth 0, 0x208(4)
L_80422148:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8042215C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 22, 0x8(1)
    mr 22, 4
    lis 4, lbl_8048E1B8@ha
    mr 23, 3
    slwi 0, 22, 1
    add 26, 23, 0
    addi 4, 4, lbl_8048E1B8@l
    lha 0, 0x1e8(26)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_804221B8
    mr 3, 22
    bl fn_80237774
    slwi 24, 22, 2
    add 4, 23, 24
    stw 3, 0x1a8(4)
    mr 3, 22
    bl fn_80237810
    add 4, 23, 24
    stw 3, 0x1c8(4)
    .4byte 0x4800065C # b .L_80422810
L_804221B8:
    slwi 5, 22, 2
    add 3, 23, 5
    lwz 25, 0x1c8(3)
    lwz 22, 0x1a8(3)
    cmpwi 25, 0x20
    .4byte 0x40810008 # ble .L_804221D4
    li 25, 0x20
L_804221D4:
    cmpwi 25, 0x0
    .4byte 0x40800008 # bge .L_804221E0
    li 25, 0x0
L_804221E0:
    cmpw 25, 22
    .4byte 0x40800008 # bge .L_804221EC
    mr 22, 25
L_804221EC:
    cmpwi 22, 0x0
    .4byte 0x40800008 # bge .L_804221F8
    li 22, 0x0
L_804221F8:
    addi 31, 4, 0xc68
    addi 30, 4, 0xce8
    addi 29, 4, 0xca8
    addi 28, 4, 0xd28
    addi 27, 5, 0x8
    li 24, 0x0
L_80422210:
    cmpwi 22, 0x4
    .4byte 0x41800138 # blt .L_8042234C
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    .4byte 0xC0420AA0 # lfs f2, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    .4byte 0xC0420AA0 # lfs f2, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwzx 3, 23, 27
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
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    subi 22, 22, 0x4
    .4byte 0x480004A0 # b .L_804227E8
L_8042234C:
    cmpwi 22, 0x0
    .4byte 0x408200F0 # bne .L_80422440
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    cmpwi 25, 0x0
    stb 0, 0xb0(3)
    .4byte 0x40810054 # ble .L_804223F4
    lwzx 3, 23, 27
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
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    .4byte 0x480003F4 # b .L_804227E4
L_804223F4:
    lwzx 3, 23, 27
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
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480003A8 # b .L_804227E4
L_80422440:
    cmpwi 22, 0x1
    .4byte 0x40820134 # bne .L_80422578
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820AAC # lfs f4, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820AAC # lfs f4, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwzx 3, 23, 27
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
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    .4byte 0x48000270 # b .L_804227E4
L_80422578:
    cmpwi 22, 0x2
    .4byte 0x40820134 # bne .L_804226B0
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620AAC # lfs f3, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620AAC # lfs f3, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwzx 3, 23, 27
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
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
    .4byte 0x48000138 # b .L_804227E4
L_804226B0:
    cmpwi 22, 0x3
    .4byte 0x40820130 # bne .L_804227E4
    lwzx 3, 23, 27
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x4(30)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(31)
    stb 0, 0xb0(3)
    lwz 6, 0x4(31)
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420AAC # lfs f2, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwzx 3, 23, 27
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420AAC # lfs f2, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwzx 3, 23, 27
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
    lwzx 3, 23, 27
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 25, 25, 0x4
    stb 0, 0xb0(3)
L_804227E4:
    li 22, 0x0
L_804227E8:
    addi 24, 24, 0x1
    addi 30, 30, 0x8
    cmpwi 24, 0x8
    addi 29, 29, 0x8
    addi 28, 28, 0x8
    addi 31, 31, 0x8
    .4byte 0x4180FA10 # blt .L_80422210
    lha 3, 0x1e8(26)
    subi 0, 3, 0x1
    sth 0, 0x1e8(26)
L_80422810:
    lmw 22, 0x8(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80422824:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stmw 20, 0xd0(1)
    mr 31, 3
    li 23, 0x0
    li 22, 0x0
    lbz 3, 0x256(3)
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_80422864
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x40820014 # bne .L_80422864
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x4082000C # bne .L_80422864
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x418209D4 # beq .L_80423234
L_80422864:
    lbz 0, 0x25b(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8042287C
    li 0, 0x1
    stb 0, 0x25b(31)
    .4byte 0x480009BC # b .L_80423234
L_8042287C:
    lis 3, lbl_8048EF20@ha
    addi 25, 1, 0xb8
    addi 24, 3, lbl_8048EF20@l
    addi 26, 1, 0xa8
    lis 3, lbl_8050EC80@ha
    mr 29, 25
    mr 28, 26
    mr 27, 24
    addi 30, 3, lbl_8050EC80@l
    li 21, 0x0
L_804228A4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    li 0, 0x1
    stw 4, 0x0(29)
    slw 0, 0, 21
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    stw 4, 0x0(28)
    and. 0, 3, 0
    .4byte 0x41820074 # beq .L_8042293C
    lwz 4, 0x10(30)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lbz 0, 0x89(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80422914
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_80422938
L_80422914:
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80422938:
    addi 23, 23, 0x1
L_8042293C:
    addi 21, 21, 0x1
    addi 28, 28, 0x4
    cmpwi 21, 0x4
    addi 27, 27, 0x8
    addi 29, 29, 0x4
    .4byte 0x4180FF54 # blt .L_804228A4
L_80422954:
    mr 21, 26
    li 30, -0x1389
    li 29, 0x0
    li 27, 0x0
    .4byte 0x48000034 # b .L_80422998
L_80422968:
    lwz 0, 0x0(21)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80422990
    mr 3, 27
    bl fn_80237774
    cmpw 30, 3
    .4byte 0x40800010 # bge .L_80422990
    mr 3, 27
    bl fn_80237774
    mr 30, 3
L_80422990:
    addi 21, 21, 0x4
    addi 27, 27, 0x1
L_80422998:
    cmpw 27, 23
    .4byte 0x4180FFCC # blt .L_80422968
    mr 27, 26
    mr 28, 25
    li 20, 0x0
    li 21, 0x1
    .4byte 0x48000038 # b .L_804229E8
L_804229B4:
    lwz 0, 0x0(27)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_804229DC
    mr 3, 20
    bl fn_80237774
    cmpw 30, 3
    .4byte 0x40820010 # bne .L_804229DC
    stw 22, 0x0(28)
    addi 29, 29, 0x1
    stw 21, 0x0(27)
L_804229DC:
    addi 27, 27, 0x4
    addi 28, 28, 0x4
    addi 20, 20, 0x1
L_804229E8:
    cmpw 20, 23
    .4byte 0x4180FFC8 # blt .L_804229B4
    add 22, 22, 29
    cmpw 22, 23
    .4byte 0x4180FF5C # blt .L_80422954
    lis 3, lbl_8048EF40@ha
    li 21, 0x0
    addi 27, 3, lbl_8048EF40@l
    .4byte 0x48000824 # b .L_8042322C
L_80422A0C:
    lwz 0, 0x0(25)
    cmpwi 0, 0x2
    .4byte 0x41820430 # beq .L_80422E44
    .4byte 0x40800014 # bge .L_80422A2C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80422A38
    .4byte 0x4080021C # bge .L_80422C40
    .4byte 0x480007F4 # b .L_8042321C
L_80422A2C:
    cmpwi 0, 0x4
    .4byte 0x408007EC # bge .L_8042321C
    .4byte 0x480005FC # b .L_80423030
L_80422A38:
    li 0, 0xff
    lwz 5, 0x0(27)
    stb 0, 0xa0(1)
    lwz 6, 0x4(27)
    stb 0, 0xa1(1)
    stb 0, 0xa2(1)
    stb 0, 0xa3(1)
    lwz 0, 0xa0(1)
    stw 0, 0xa4(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xa4
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 22, 0xff
    li 9, 0x12
    li 10, 0xb9
    li 5, 0x9d
    li 6, 0x10
    li 8, 0x54
    li 7, 0xd8
    li 4, 0x3a
    li 0, 0x16
    lwz 12, 0x0(3)
    stb 22, 0x80(1)
    lwz 12, 0x3c(12)
    stb 5, 0x81(1)
    lwz 5, 0x0(27)
    stb 6, 0x82(1)
    lwz 6, 0x4(27)
    stb 22, 0x83(1)
    lwz 11, 0x80(1)
    stb 10, 0x88(1)
    stb 8, 0x89(1)
    stb 9, 0x8a(1)
    stb 22, 0x8b(1)
    lwz 8, 0x88(1)
    stb 7, 0x90(1)
    stb 4, 0x91(1)
    stb 0, 0x92(1)
    stb 22, 0x93(1)
    lwz 4, 0x90(1)
    stb 10, 0x98(1)
    stb 9, 0x99(1)
    stb 9, 0x9a(1)
    stb 22, 0x9b(1)
    lwz 0, 0x98(1)
    stw 11, 0x84(1)
    stw 8, 0x8c(1)
    stw 4, 0x94(1)
    stw 0, 0x9c(1)
    mtctr 12
    bctrl
    lbz 4, 0x9c(1)
    lbz 0, 0x9d(1)
    stb 4, 0x150(3)
    lbz 4, 0x9e(1)
    stb 0, 0x151(3)
    lbz 0, 0x9f(1)
    stb 4, 0x152(3)
    lbz 4, 0x94(1)
    stb 0, 0x153(3)
    lbz 0, 0x95(1)
    stb 4, 0x154(3)
    lbz 4, 0x96(1)
    stb 0, 0x155(3)
    lbz 0, 0x97(1)
    stb 4, 0x156(3)
    lbz 4, 0x8c(1)
    stb 0, 0x157(3)
    lbz 0, 0x8d(1)
    stb 4, 0x158(3)
    lbz 4, 0x8e(1)
    stb 0, 0x159(3)
    lbz 0, 0x8f(1)
    stb 4, 0x15a(3)
    lbz 4, 0x84(1)
    stb 0, 0x15b(3)
    lbz 0, 0x85(1)
    stb 4, 0x15c(3)
    lbz 4, 0x86(1)
    stb 0, 0x15d(3)
    lbz 0, 0x87(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    .4byte 0xC0420AA0 # lfs f2, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    .4byte 0xC0420AA0 # lfs f2, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    .4byte 0x480005E0 # b .L_8042321C
L_80422C40:
    li 0, 0xff
    lwz 5, 0x0(27)
    stb 0, 0x78(1)
    lwz 6, 0x4(27)
    stb 0, 0x79(1)
    stb 0, 0x7a(1)
    stb 0, 0x7b(1)
    lwz 0, 0x78(1)
    stw 0, 0x7c(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x7c
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 11, 0xff
    li 9, 0xf2
    li 7, 0x48
    li 0, 0x9
    li 5, 0xfc
    li 6, 0x21
    li 8, 0xab
    li 4, 0x24
    lwz 12, 0x0(3)
    stb 5, 0x58(1)
    lwz 12, 0x3c(12)
    stb 11, 0x59(1)
    lwz 5, 0x0(27)
    stb 6, 0x5a(1)
    lwz 6, 0x4(27)
    stb 11, 0x5b(1)
    lwz 10, 0x58(1)
    stb 9, 0x60(1)
    stb 8, 0x61(1)
    stb 4, 0x62(1)
    stb 11, 0x63(1)
    lwz 8, 0x60(1)
    stb 9, 0x68(1)
    stb 7, 0x69(1)
    stb 0, 0x6a(1)
    stb 11, 0x6b(1)
    lwz 4, 0x68(1)
    stb 9, 0x70(1)
    stb 7, 0x71(1)
    stb 0, 0x72(1)
    stb 11, 0x73(1)
    lwz 0, 0x70(1)
    stw 10, 0x5c(1)
    stw 8, 0x64(1)
    stw 4, 0x6c(1)
    stw 0, 0x74(1)
    mtctr 12
    bctrl
    lbz 4, 0x74(1)
    lbz 0, 0x75(1)
    stb 4, 0x150(3)
    lbz 4, 0x76(1)
    stb 0, 0x151(3)
    lbz 0, 0x77(1)
    stb 4, 0x152(3)
    lbz 4, 0x6c(1)
    stb 0, 0x153(3)
    lbz 0, 0x6d(1)
    stb 4, 0x154(3)
    lbz 4, 0x6e(1)
    stb 0, 0x155(3)
    lbz 0, 0x6f(1)
    stb 4, 0x156(3)
    lbz 4, 0x64(1)
    stb 0, 0x157(3)
    lbz 0, 0x65(1)
    stb 4, 0x158(3)
    lbz 4, 0x66(1)
    stb 0, 0x159(3)
    lbz 0, 0x67(1)
    stb 4, 0x15a(3)
    lbz 4, 0x5c(1)
    stb 0, 0x15b(3)
    lbz 0, 0x5d(1)
    stb 4, 0x15c(3)
    lbz 4, 0x5e(1)
    stb 0, 0x15d(3)
    lbz 0, 0x5f(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420AAC # lfs f2, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420AAC # lfs f2, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    .4byte 0x480003DC # b .L_8042321C
L_80422E44:
    li 3, 0xff
    li 0, 0x77
    stb 3, 0x50(1)
    lwz 5, 0x0(27)
    stb 3, 0x51(1)
    lwz 6, 0x4(27)
    stb 0, 0x52(1)
    stb 3, 0x53(1)
    lwz 0, 0x50(1)
    stw 0, 0x54(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 0, 0xff
    stb 0, 0x30(1)
    lwz 12, 0x0(3)
    stb 0, 0x31(1)
    lwz 12, 0x3c(12)
    stb 0, 0x32(1)
    lwz 5, 0x0(27)
    stb 0, 0x33(1)
    lwz 6, 0x4(27)
    lwz 8, 0x30(1)
    stb 0, 0x38(1)
    stb 0, 0x39(1)
    stb 0, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 7, 0x38(1)
    stb 0, 0x40(1)
    stb 0, 0x41(1)
    stb 0, 0x42(1)
    stb 0, 0x43(1)
    lwz 4, 0x40(1)
    stb 0, 0x48(1)
    stb 0, 0x49(1)
    stb 0, 0x4a(1)
    stb 0, 0x4b(1)
    lwz 0, 0x48(1)
    stw 8, 0x34(1)
    stw 7, 0x3c(1)
    stw 4, 0x44(1)
    stw 0, 0x4c(1)
    mtctr 12
    bctrl
    lbz 4, 0x4c(1)
    lbz 0, 0x4d(1)
    stb 4, 0x150(3)
    lbz 4, 0x4e(1)
    stb 0, 0x151(3)
    lbz 0, 0x4f(1)
    stb 4, 0x152(3)
    lbz 4, 0x44(1)
    stb 0, 0x153(3)
    lbz 0, 0x45(1)
    stb 4, 0x154(3)
    lbz 4, 0x46(1)
    stb 0, 0x155(3)
    lbz 0, 0x47(1)
    stb 4, 0x156(3)
    lbz 4, 0x3c(1)
    stb 0, 0x157(3)
    lbz 0, 0x3d(1)
    stb 4, 0x158(3)
    lbz 4, 0x3e(1)
    stb 0, 0x159(3)
    lbz 0, 0x3f(1)
    stb 4, 0x15a(3)
    lbz 4, 0x34(1)
    stb 0, 0x15b(3)
    lbz 0, 0x35(1)
    stb 4, 0x15c(3)
    lbz 4, 0x36(1)
    stb 0, 0x15d(3)
    lbz 0, 0x37(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620AAC # lfs f3, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620AAC # lfs f3, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    .4byte 0x480001F0 # b .L_8042321C
L_80423030:
    li 3, 0xff
    li 4, 0xd8
    li 0, 0xa1
    stb 4, 0x28(1)
    lwz 5, 0x0(27)
    stb 3, 0x29(1)
    lwz 6, 0x4(27)
    stb 0, 0x2a(1)
    stb 3, 0x2b(1)
    lwz 0, 0x28(1)
    stw 0, 0x2c(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x2c
    lwz 12, 0x12c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 0, 0xff
    stb 0, 0x8(1)
    lwz 12, 0x0(3)
    stb 0, 0x9(1)
    lwz 12, 0x3c(12)
    stb 0, 0xa(1)
    lwz 5, 0x0(27)
    stb 0, 0xb(1)
    lwz 6, 0x4(27)
    lwz 8, 0x8(1)
    stb 0, 0x10(1)
    stb 0, 0x11(1)
    stb 0, 0x12(1)
    stb 0, 0x13(1)
    lwz 7, 0x10(1)
    stb 0, 0x18(1)
    stb 0, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 4, 0x18(1)
    stb 0, 0x20(1)
    stb 0, 0x21(1)
    stb 0, 0x22(1)
    stb 0, 0x23(1)
    lwz 0, 0x20(1)
    stw 8, 0xc(1)
    stw 7, 0x14(1)
    stw 4, 0x1c(1)
    stw 0, 0x24(1)
    mtctr 12
    bctrl
    lbz 4, 0x24(1)
    lbz 0, 0x25(1)
    stb 4, 0x150(3)
    lbz 4, 0x26(1)
    stb 0, 0x151(3)
    lbz 0, 0x27(1)
    stb 4, 0x152(3)
    lbz 4, 0x1c(1)
    stb 0, 0x153(3)
    lbz 0, 0x1d(1)
    stb 4, 0x154(3)
    lbz 4, 0x1e(1)
    stb 0, 0x155(3)
    lbz 0, 0x1f(1)
    stb 4, 0x156(3)
    lbz 4, 0x14(1)
    stb 0, 0x157(3)
    lbz 0, 0x15(1)
    stb 4, 0x158(3)
    lbz 4, 0x16(1)
    stb 0, 0x159(3)
    lbz 0, 0x17(1)
    stb 4, 0x15a(3)
    lbz 4, 0xc(1)
    stb 0, 0x15b(3)
    lbz 0, 0xd(1)
    stb 4, 0x15c(3)
    lbz 4, 0xe(1)
    stb 0, 0x15d(3)
    lbz 0, 0xf(1)
    stb 4, 0x15e(3)
    lwz 5, 0x0(24)
    stb 0, 0x15f(3)
    lwz 6, 0x4(24)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820AAC # lfs f4, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820AAC # lfs f4, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
L_8042321C:
    addi 25, 25, 0x4
    addi 27, 27, 0x8
    addi 24, 24, 0x8
    addi 21, 21, 0x1
L_8042322C:
    cmpw 21, 23
    .4byte 0x4180F7DC # blt .L_80422A0C
L_80423234:
    lmw 20, 0xd0(1)
    lwz 0, 0x104(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_80423248:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, 0x1
    stmw 24, 0x20(1)
    mr 27, 4
    mr 26, 3
    lis 4, lbl_8048E1B8@ha
    slw 0, 0, 27
    clrlwi 0, 0, 24
    addi 31, 4, lbl_8048E1B8@l
    lbz 3, 0x257(3)
    and. 0, 3, 0
    .4byte 0x41820574 # beq .L_804237F0
    lis 3, lbl_80529DEC@ha
    slwi 0, 27, 2
    addi 3, 3, lbl_80529DEC@l
    li 28, 0x0
    add 3, 3, 0
    lwz 0, 0xe8(3)
    cmpwi 0, 0x270f
    mr 29, 0
    .4byte 0x40810008 # ble .L_804232A8
    li 29, 0x270f
L_804232A8:
    cmpwi 29, 0x0
    .4byte 0x40800194 # bge .L_80423440
    mulli 30, 27, 0x28
    addi 0, 31, 0xa28
    li 24, 0x0
    add 25, 0, 30
    mr 28, 25
L_804232C4:
    li 0, 0x0
    li 7, 0xff
    li 4, 0x55
    li 3, 0x41
    stb 7, 0x10(1)
    lwz 5, 0x0(28)
    stb 4, 0x11(1)
    lwz 6, 0x4(28)
    stb 3, 0x12(1)
    stb 7, 0x13(1)
    lwz 3, 0x10(1)
    stb 0, 0x18(1)
    stb 0, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 3, 0x14(1)
    stw 0, 0x1c(1)
    lwz 3, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x1c
    addi 5, 1, 0x14
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 28, 28, 0x8
    cmpwi 24, 0x5
    .4byte 0x4180FF80 # blt .L_804232C4
    cmpwi 29, -0x1388
    .4byte 0x40800008 # bge .L_80423354
    li 29, -0x1388
L_80423354:
    mulli 29, 29, -0x1
    lis 3, 0x5449
    addi 4, 31, 0x1058
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(26)
    mr 24, 0
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xac8
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xa28
    add 4, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    li 4, 0x1
    addi 0, 31, 0xac8
    stb 4, 0xb0(3)
    add 4, 0, 30
    lwz 5, 0x20(4)
    lwz 3, 0x4(26)
    lwz 6, 0x24(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    li 28, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000C0 # b .L_804234FC
L_80423440:
    mulli 25, 27, 0x28
    addi 0, 31, 0xa28
    li 24, 0x0
    add 30, 0, 25
L_80423450:
    lwz 0, 0x210(26)
    lwz 5, 0x0(30)
    stw 0, 0x8(1)
    lwz 6, 0x4(30)
    lwz 0, 0x214(26)
    stw 0, 0xc(1)
    lwz 3, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 30, 30, 0x8
    cmpwi 24, 0x5
    .4byte 0x4180FFB0 # blt .L_80423450
    lwz 3, 0x4(26)
    addi 0, 31, 0xa28
    add 4, 0, 25
    lwz 12, 0x0(3)
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    li 4, 0x0
    addi 0, 31, 0xac8
    stb 4, 0xb0(3)
    add 4, 0, 25
    lwz 5, 0x20(4)
    lwz 3, 0x4(26)
    lwz 6, 0x24(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_804234FC:
    lis 4, 0x1062
    lis 3, lbl_804B1434@ha
    addi 0, 4, 0x4dd3
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B1434@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 6
    srawi 0, 0, 6
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0x3e8
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 29, 5, 29
    bl fn_804030C4
    mr 24, 3
    lwz 3, 0x4(26)
    mulli 27, 27, 0x28
    addi 30, 31, 0xa28
    lwz 12, 0x0(3)
    slwi 25, 28, 3
    add 30, 30, 27
    lwz 12, 0x3c(12)
    add 6, 30, 25
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 31, 31, 0xac8
    add 31, 31, 27
    lwz 12, 0x0(3)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x51ec
    lis 3, lbl_804B1434@ha
    subi 0, 4, 0x7ae1
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B1434@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 5
    srawi 0, 0, 5
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0x64
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 29, 5, 29
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(26)
    addi 0, 28, 0x1
    lwz 12, 0x0(3)
    slwi 25, 0, 3
    add 6, 30, 25
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1434@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B1434@l
    addi 3, 5, 0x4d47
    srawi 6, 0, 2
    srawi 0, 0, 2
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    add 6, 6, 7
    mulli 5, 0, 0xa
    slwi 0, 6, 2
    lwzx 4, 4, 0
    subf 29, 5, 29
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(26)
    addi 0, 28, 0x2
    lwz 12, 0x0(3)
    slwi 25, 0, 3
    add 6, 30, 25
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1434@ha
    lis 5, 0x5449
    slwi 0, 29, 2
    addi 4, 3, lbl_804B1434@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(26)
    addi 0, 28, 0x3
    lwz 12, 0x0(3)
    slwi 25, 0, 3
    add 6, 30, 25
    lwz 12, 0x3c(12)
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    add 6, 31, 25
    lwz 5, 0x0(6)
    lwz 12, 0x0(3)
    lwz 6, 0x4(6)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_804237F0:
    lmw 24, 0x20(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80423804:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x1
    stmw 24, 0x10(1)
    mr 28, 4
    mr 25, 3
    lis 4, lbl_8048E1B8@ha
    slw 0, 0, 28
    clrlwi 0, 0, 24
    addi 26, 4, lbl_8048E1B8@l
    lbz 3, 0x256(3)
    and. 0, 3, 0
    .4byte 0x418205A4 # beq .L_80423DDC
    mr 3, 28
    bl fn_80237810
    lis 4, lbl_80529DEC@ha
    mr 27, 3
    addi 4, 4, lbl_80529DEC@l
    slwi 0, 28, 2
    add 3, 4, 0
    cmpwi 27, 0x20
    lwz 0, 0xd8(3)
    mr 24, 0
    .4byte 0x40810008 # ble .L_8042386C
    li 27, 0x20
L_8042386C:
    cmpwi 27, 0x0
    .4byte 0x40800008 # bge .L_80423878
    li 27, 0x0
L_80423878:
    cmpw 27, 0
    .4byte 0x40800008 # bge .L_80423884
    mr 24, 27
L_80423884:
    cmpwi 24, 0x0
    .4byte 0x40800008 # bge .L_80423890
    li 24, 0x0
L_80423890:
    slwi 3, 28, 6
    addi 0, 26, 0x228
    addi 30, 26, 0x328
    addi 29, 26, 0x428
    addi 28, 26, 0x528
    add 31, 0, 3
    add 30, 30, 3
    add 29, 29, 3
    add 28, 28, 3
    li 26, 0x0
L_804238B8:
    cmpwi 24, 0x4
    .4byte 0x418000F0 # blt .L_804239AC
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    .4byte 0xC0420AA0 # lfs f2, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    .4byte 0xC0420AA0 # lfs f2, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 1
    fmr 3, 2
    fmr 4, 2
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
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
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    subi 24, 24, 0x4
    .4byte 0x48000418 # b .L_80423DC0
L_804239AC:
    cmpwi 24, 0x0
    .4byte 0x40820140 # bne .L_80423AF0
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    .4byte 0xC0A20AAC # lfs f5, lbl_80543A4C@sda21(r0)
    lwz 12, 0x104(12)
    fmr 2, 1
    fmr 3, 1
    fmr 4, 1
    fmr 6, 5
    fmr 7, 5
    fmr 8, 5
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    .4byte 0xC0A20AAC # lfs f5, lbl_80543A4C@sda21(r0)
    lwz 12, 0x104(12)
    fmr 2, 1
    fmr 3, 1
    fmr 4, 1
    fmr 6, 5
    fmr 7, 5
    fmr 8, 5
    mtctr 12
    bctrl
    cmpwi 27, 0x0
    .4byte 0x40810054 # ble .L_80423AA4
    lwz 3, 0x4(25)
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
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    .4byte 0x4800031C # b .L_80423DBC
L_80423AA4:
    lwz 3, 0x4(25)
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
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480002D0 # b .L_80423DBC
L_80423AF0:
    cmpwi 24, 0x1
    .4byte 0x408200EC # bne .L_80423BE0
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820AAC # lfs f4, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0820AAC # lfs f4, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 4
    fmr 2, 1
    fmr 3, 1
    fmr 6, 4
    fmr 7, 4
    fmr 8, 4
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
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
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    .4byte 0x480001E0 # b .L_80423DBC
L_80423BE0:
    cmpwi 24, 0x2
    .4byte 0x408200EC # bne .L_80423CD0
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620AAC # lfs f3, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0620AAC # lfs f3, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 3
    fmr 2, 1
    fmr 4, 1
    fmr 6, 3
    fmr 7, 3
    fmr 8, 3
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
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
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
    .4byte 0x480000F0 # b .L_80423DBC
L_80423CD0:
    cmpwi 24, 0x3
    .4byte 0x408200E8 # bne .L_80423DBC
    lwz 3, 0x4(25)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420AAC # lfs f2, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    .4byte 0xC0420AAC # lfs f2, lbl_80543A4C@sda21(r0)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 12, 0x104(12)
    fmr 5, 2
    fmr 3, 1
    fmr 4, 1
    fmr 6, 2
    fmr 7, 2
    fmr 8, 2
    mtctr 12
    bctrl
    lwz 3, 0x4(25)
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
    lwz 3, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    subi 27, 27, 0x4
    stb 0, 0xb0(3)
L_80423DBC:
    li 24, 0x0
L_80423DC0:
    addi 26, 26, 0x1
    addi 30, 30, 0x8
    cmpwi 26, 0x8
    addi 29, 29, 0x8
    addi 28, 28, 0x8
    addi 31, 31, 0x8
    .4byte 0x4180FAE0 # blt .L_804238B8
L_80423DDC:
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80421438

