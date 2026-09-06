# 901KB-gap non-actor manager block: 8 functions, 10,636 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010634
etb_80010634:
    .4byte 0x60CA0000
    .4byte 0x00000000
.size etb_80010634, 8

.global etb_8001063C
etb_8001063C:
    .4byte 0x48080000
    .4byte 0x00000000
.size etb_8001063C, 8

.global etb_80010644
etb_80010644:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80010644, 8

.global etb_8001064C
etb_8001064C:
    .4byte 0x48080000
    .4byte 0x00000000
.size etb_8001064C, 8

.global etb_80010654
etb_80010654:
    .4byte 0x704A0000
    .4byte 0x00000000
.size etb_80010654, 8

.global etb_8001065C
etb_8001065C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001065C, 8

.global etb_80010664
etb_80010664:
    .4byte 0x318A0000
    .4byte 0x00000000
.size etb_80010664, 8

.global etb_8001066C
etb_8001066C:
    .4byte 0x804A0000
    .4byte 0x00000000
.size etb_8001066C, 8

.section extabindex, "a"
.balign 4
.global eti_8002047C
eti_8002047C:
    .4byte fn_80424148
    .4byte 0x00000FE0
    .4byte etb_80010634
.size eti_8002047C, 12

.global eti_80020488
eti_80020488:
    .4byte fn_80425128
    .4byte 0x0000010C
    .4byte etb_8001063C
.size eti_80020488, 12

.global eti_80020494
eti_80020494:
    .4byte fn_80425234
    .4byte 0x000001AC
    .4byte etb_80010644
.size eti_80020494, 12

.global eti_800204A0
eti_800204A0:
    .4byte fn_804253E0
    .4byte 0x00000404
    .4byte etb_8001064C
.size eti_800204A0, 12

.global eti_800204AC
eti_800204AC:
    .4byte fn_804257E4
    .4byte 0x00000740
    .4byte etb_80010654
.size eti_800204AC, 12

.global eti_800204B8
eti_800204B8:
    .4byte fn_80425F24
    .4byte 0x00000048
    .4byte etb_8001065C
.size eti_800204B8, 12

.global eti_800204C4
eti_800204C4:
    .4byte fn_80425F6C
    .4byte 0x0000043C
    .4byte etb_80010664
.size eti_800204C4, 12

.global eti_800204D0
eti_800204D0:
    .4byte fn_804263A8
    .4byte 0x0000072C
    .4byte etb_8001066C
.size eti_800204D0, 12

.text
.balign 4
.global fn_80424148
.global fn_80425128
.global fn_80425234
.global fn_804253E0
.global fn_804257E4
.global fn_80425F24
.global fn_80425F6C
.global fn_804263A8

fn_80424148:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stfd 30, 0xf0(1)
    psq_st 30, 0xf8(1), 0, 0
    stfd 29, 0xe0(1)
    psq_st 29, 0xe8(1), 0, 0
    stmw 20, 0xb0(1)
    mr 27, 4
    lis 4, lbl_8048E1B8@ha
    mr 26, 3
    mr 28, 5
    slwi 30, 27, 2
    cmpwi 27, 0x2
    add 29, 26, 30
    addi 31, 4, lbl_8048E1B8@l
    lfs 29, 0x108(29)
    lfs 30, 0x128(29)
    lfs 31, 0x138(29)
    .4byte 0x418000FC # blt .L_80424298
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x50(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x60(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x70(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x80(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x90(29)
    lfs 1, 0xf8(29)
    mr 25, 29
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xa0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xb0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xc0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xd0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xe0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x480000F8 # b .L_8042438C
L_80424298:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x50(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x60(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x70(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x80(29)
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x90(29)
    lfs 1, 0xf8(29)
    mr 25, 29
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xa0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xb0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xc0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xd0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xe0(29)
    lfs 1, 0xf8(25)
    bl fn_80402E08
L_8042438C:
    mr 3, 26
    bl fn_8042165C
    bl fn_8037EB4C
    .4byte 0x808D9310 # lwz r4, lbl_8053AED0@sda21(r0)
    lbz 3, 0xdc(4)
    extrwi. 0, 3, 1, 27
    .4byte 0x41820018 # beq .L_804243BC
    li 0, 0x1
    slw 0, 0, 27
    clrlwi 0, 0, 24
    andc 0, 3, 0
    stb 0, 0xdc(4)
L_804243BC:
    li 0, 0x1
    lbz 3, 0x25d(26)
    slw 0, 0, 27
    clrlwi 4, 0, 24
    and 3, 3, 4
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820038 # beq .L_80424414
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    and. 0, 0, 4
    .4byte 0x40820028 # bne .L_80424414
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80424414
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x85(3)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_80424498
L_80424414:
    lfs 1, 0x108(29)
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80424430
    fsubs 0, 1, 0
    stfs 0, 0x108(29)
    .4byte 0x4800000C # b .L_80424438
L_80424430:
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    stfs 0, 0x108(29)
L_80424438:
    lfs 1, 0x128(29)
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80424454
    fsubs 0, 1, 0
    stfs 0, 0x128(29)
    .4byte 0x4800000C # b .L_8042445C
L_80424454:
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    stfs 0, 0x128(29)
L_8042445C:
    lfs 1, 0x138(29)
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80424478
    fsubs 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x4800000C # b .L_80424480
L_80424478:
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    stfs 0, 0x138(29)
L_80424480:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    lwz 0, 0x20(3)
    add 3, 0, 27
    stb 4, 0x217(3)
    .4byte 0x480001D4 # b .L_80424668
L_80424498:
    lis 3, lbl_80529DEC@ha
    addi 0, 3, lbl_80529DEC@l
    add 3, 0, 30
    lwz 0, 0xd8(3)
    cmpwi 0, 0x0
    .4byte 0x40820144 # bne .L_804245F0
    lfs 2, 0x108(29)
    .4byte 0xC0220AA8 # lfs f1, lbl_80543A48@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_804244E4
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x108(29)
    lfs 0, 0x108(29)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_80424508
    stfs 1, 0x108(29)
    .4byte 0x48000028 # b .L_80424508
L_804244E4:
    .4byte 0x40800024 # bge .L_80424508
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x108(29)
    lfs 0, 0x108(29)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80424508
    stfs 1, 0x108(29)
L_80424508:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 0, 0x20(3)
    add 3, 0, 27
    lbz 0, 0x148(3)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_804245A4
    lfs 1, 0x128(29)
    .4byte 0xC0020ACC # lfs f0, lbl_80543A6C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80424540
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x128(29)
    .4byte 0x4800000C # b .L_80424548
L_80424540:
    .4byte 0xC0020AAC # lfs f0, lbl_80543A4C@sda21(r0)
    stfs 0, 0x128(29)
L_80424548:
    lfs 2, 0x138(29)
    .4byte 0xC0220AA8 # lfs f1, lbl_80543A48@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_8042457C
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x138(29)
    lfs 0, 0x138(29)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408200F8 # bne .L_80424668
    stfs 1, 0x138(29)
    .4byte 0x480000F0 # b .L_80424668
L_8042457C:
    .4byte 0x408000EC # bge .L_80424668
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x138(29)
    lfs 0, 0x138(29)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x408200D0 # bne .L_80424668
    stfs 1, 0x138(29)
    .4byte 0x480000C8 # b .L_80424668
L_804245A4:
    lfs 1, 0x128(29)
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_804245C0
    fsubs 0, 1, 0
    stfs 0, 0x128(29)
    .4byte 0x4800000C # b .L_804245C8
L_804245C0:
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    stfs 0, 0x128(29)
L_804245C8:
    lfs 1, 0x138(29)
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_804245E4
    fsubs 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x48000088 # b .L_80424668
L_804245E4:
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    stfs 0, 0x138(29)
    .4byte 0x4800007C # b .L_80424668
L_804245F0:
    lfs 1, 0x108(29)
    .4byte 0xC0020ACC # lfs f0, lbl_80543A6C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80424610
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x108(29)
    .4byte 0x4800000C # b .L_80424618
L_80424610:
    .4byte 0xC0020AAC # lfs f0, lbl_80543A4C@sda21(r0)
    stfs 0, 0x108(29)
L_80424618:
    lfs 1, 0x128(29)
    .4byte 0xC0020ACC # lfs f0, lbl_80543A6C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80424638
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x128(29)
    .4byte 0x4800000C # b .L_80424640
L_80424638:
    .4byte 0xC0020AAC # lfs f0, lbl_80543A4C@sda21(r0)
    stfs 0, 0x128(29)
L_80424640:
    lfs 1, 0x138(29)
    .4byte 0xC0020ACC # lfs f0, lbl_80543A6C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80424660
    .4byte 0xC0020AA4 # lfs f0, lbl_80543A44@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x138(29)
    .4byte 0x4800000C # b .L_80424668
L_80424660:
    .4byte 0xC0020AAC # lfs f0, lbl_80543A4C@sda21(r0)
    stfs 0, 0x138(29)
L_80424668:
    lfs 0, 0x108(29)
    fcmpu cr0, 29, 0
    .4byte 0x40820024 # bne .L_80424694
    lfs 0, 0x128(29)
    fcmpu cr0, 30, 0
    .4byte 0x40820018 # bne .L_80424694
    lfs 0, 0x138(29)
    fcmpu cr0, 31, 0
    .4byte 0x4082000C # bne .L_80424694
    clrlwi. 0, 28, 24
    .4byte 0x41820A6C # beq .L_804250FC
L_80424694:
    slwi 0, 27, 5
    addi 28, 31, 0x148
    .4byte 0xCBA20AB0 # lfd f29, lbl_80543A50@sda21(r0)
    add 28, 28, 0
    addi 30, 30, 0x108
    li 21, 0x0
    lis 25, 0x4330
L_804246B0:
    lwz 3, 0x4(26)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x218(26)
    lwz 12, 0x0(3)
    stw 0, 0xc(1)
    lfsx 0, 26, 30
    stw 25, 0x8(1)
    lwz 12, 0x24(12)
    lfd 1, 0x8(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 28, 28, 0x8
    cmpwi 21, 0x4
    .4byte 0x4180FFA0 # blt .L_804246B0
    mulli 28, 27, 0x18
    addi 0, 31, 0x1c8
    .4byte 0xCBA20AB0 # lfd f29, lbl_80543A50@sda21(r0)
    li 21, 0x0
    lis 25, 0x4330
    add 24, 0, 28
L_8042472C:
    lwz 3, 0x4(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x219
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x10(1)
    lfsx 0, 26, 30
    stw 0, 0x14(1)
    lwz 12, 0x24(12)
    lfd 1, 0x10(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    addi 24, 24, 0x8
    cmpwi 21, 0x3
    .4byte 0x4180FF9C # blt .L_8042472C
    slwi 3, 27, 6
    addi 0, 31, 0x228
    addi 23, 31, 0x328
    addi 22, 31, 0x428
    addi 21, 31, 0x528
    .4byte 0xCBA20AB0 # lfd f29, lbl_80543A50@sda21(r0)
    add 24, 0, 3
    add 23, 23, 3
    add 22, 22, 3
    add 21, 21, 3
    li 20, 0x0
    lis 25, 0x4330
L_804247C4:
    lwz 3, 0x4(26)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21c(26)
    lwz 12, 0x0(3)
    stw 0, 0x14(1)
    lfsx 0, 26, 30
    stw 25, 0x10(1)
    lwz 12, 0x24(12)
    lfd 1, 0x10(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21d(26)
    lwz 12, 0x0(3)
    stw 0, 0x1c(1)
    lfsx 0, 26, 30
    stw 25, 0x18(1)
    lwz 12, 0x24(12)
    lfd 1, 0x18(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21e(26)
    lwz 12, 0x0(3)
    stw 0, 0x2c(1)
    lfsx 0, 26, 30
    stw 25, 0x28(1)
    lwz 12, 0x24(12)
    lfd 1, 0x28(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x21f(26)
    lwz 12, 0x0(3)
    stw 0, 0x3c(1)
    lfsx 0, 26, 30
    stw 25, 0x38(1)
    lwz 12, 0x24(12)
    lfd 1, 0x38(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 23, 23, 0x8
    cmpwi 20, 0x8
    addi 22, 22, 0x8
    addi 21, 21, 0x8
    addi 24, 24, 0x8
    .4byte 0x4180FE98 # blt .L_804247C4
    addi 21, 31, 0x628
    addi 22, 31, 0x688
    .4byte 0xCBA20AB0 # lfd f29, lbl_80543A50@sda21(r0)
    add 21, 21, 28
    add 22, 22, 28
    li 20, 0x0
    lis 25, 0x4330
L_8042494C:
    lwz 3, 0x4(26)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    add 23, 26, 20
    lwz 12, 0x0(3)
    lbz 0, 0x220(23)
    stw 25, 0x40(1)
    lfsx 0, 26, 30
    stw 0, 0x44(1)
    lwz 12, 0x24(12)
    lfd 1, 0x40(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x223(23)
    lwz 12, 0x0(3)
    stw 0, 0x34(1)
    lfsx 0, 26, 30
    stw 25, 0x30(1)
    lwz 12, 0x24(12)
    lfd 1, 0x30(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 22, 22, 0x8
    cmpwi 20, 0x3
    addi 21, 21, 0x8
    .4byte 0x4180FF44 # blt .L_8042494C
    mulli 3, 27, 0x60
    addi 0, 31, 0x6e8
    addi 22, 31, 0x868
    .4byte 0xCBA20AB0 # lfd f29, lbl_80543A50@sda21(r0)
    li 20, 0x0
    add 21, 0, 3
    add 22, 22, 3
    lis 25, 0x4330
L_80424A2C:
    lwz 3, 0x4(26)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x226(26)
    lwz 12, 0x0(3)
    stw 0, 0x44(1)
    lfsx 0, 26, 30
    stw 25, 0x40(1)
    lwz 12, 0x24(12)
    lfd 1, 0x40(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x227(26)
    lwz 12, 0x0(3)
    stw 0, 0x34(1)
    lfsx 0, 26, 30
    stw 25, 0x30(1)
    lwz 12, 0x24(12)
    lfd 1, 0x30(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 22, 22, 0x8
    cmpwi 20, 0xc
    addi 21, 21, 0x8
    .4byte 0x4180FF48 # blt .L_80424A2C
    lwz 3, 0x4(26)
    slwi 28, 27, 4
    addi 0, 31, 0x9e8
    lwz 12, 0x0(3)
    add 6, 0, 28
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x228(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x44(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x40(1)
    lfs 0, 0x108(29)
    lfd 1, 0x40(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0x9e8
    add 4, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lbz 4, 0x229(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x34(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x30(1)
    lfs 0, 0x108(29)
    lfd 1, 0x30(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    mulli 3, 27, 0x28
    addi 0, 31, 0xa28
    addi 22, 31, 0xac8
    .4byte 0xCBA20AB0 # lfd f29, lbl_80543A50@sda21(r0)
    li 20, 0x0
    add 21, 0, 3
    add 22, 22, 3
    lis 25, 0x4330
L_80424BD4:
    lwz 3, 0x4(26)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x22a(26)
    lwz 12, 0x0(3)
    stw 0, 0x44(1)
    lfsx 0, 26, 30
    stw 25, 0x40(1)
    lwz 12, 0x24(12)
    lfd 1, 0x40(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x22b(26)
    lwz 12, 0x0(3)
    stw 0, 0x34(1)
    lfsx 0, 26, 30
    stw 25, 0x30(1)
    lwz 12, 0x24(12)
    lfd 1, 0x30(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 22, 22, 0x8
    cmpwi 20, 0x5
    addi 21, 21, 0x8
    .4byte 0x4180FF48 # blt .L_80424BD4
    mulli 0, 27, 0x30
    addi 21, 31, 0xb68
    .4byte 0xCBA20AB0 # lfd f29, lbl_80543A50@sda21(r0)
    li 20, 0x0
    lis 25, 0x4330
    add 21, 21, 0
L_80424CA8:
    lwz 3, 0x4(26)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x22c
    lwz 12, 0x0(3)
    lbzx 0, 26, 0
    stw 25, 0x40(1)
    lfsx 0, 26, 30
    stw 0, 0x44(1)
    lwz 12, 0x24(12)
    lfd 1, 0x40(1)
    fsubs 1, 1, 29
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 21, 21, 0x8
    cmpwi 20, 0x6
    .4byte 0x4180FF9C # blt .L_80424CA8
    lwz 3, 0x18(26)
    slwi 30, 27, 3
    addi 0, 31, 0xda8
    lwz 12, 0x0(3)
    add 6, 0, 30
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x232(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x44(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x40(1)
    lfs 0, 0x138(29)
    lfd 1, 0x40(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xdc8
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x233(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x34(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x30(1)
    lfs 0, 0x128(29)
    lfd 1, 0x30(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    lwz 3, 0x18(26)
    addi 0, 31, 0xc28
    add 6, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x234(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x24(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x20(1)
    lfs 0, 0x108(29)
    lfd 1, 0x20(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    lwz 3, 0x18(26)
    addi 0, 31, 0xc28
    add 4, 0, 28
    lwz 12, 0x0(3)
    lwz 5, 0x8(4)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(4)
    mtctr 12
    bctrl
    lbz 4, 0x235(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x10(1)
    lfs 0, 0x108(29)
    lfd 1, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xe28
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x236(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x4c(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x48(1)
    lfs 0, 0x108(29)
    lfd 1, 0x48(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 4, 0x54(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xe48
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x237(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x5c(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x58(1)
    lfs 0, 0x108(29)
    lfd 1, 0x58(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 4, 0x64(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xec8
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x238(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x6c(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x68(1)
    lfs 0, 0x108(29)
    lfd 1, 0x68(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x70(1)
    lwz 4, 0x74(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xee8
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x239(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x7c(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x78(1)
    lfs 0, 0x108(29)
    lfd 1, 0x78(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 4, 0x84(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xf08
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x23a(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x8c(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x88(1)
    lfs 0, 0x108(29)
    lfd 1, 0x88(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 4, 0x94(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    addi 0, 31, 0xf28
    add 6, 0, 30
    lwz 12, 0x0(3)
    lwz 5, 0x0(6)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    lbz 4, 0x23b(26)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x9c(1)
    .4byte 0xC8420AB0 # lfd f2, lbl_80543A50@sda21(r0)
    stw 0, 0x98(1)
    lfs 0, 0x108(29)
    lfd 1, 0x98(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 4, 0xa4(1)
    mtctr 12
    bctrl
L_804250FC:
    psq_l 31, 0x108(1), 0, 0
    lfd 31, 0x100(1)
    psq_l 30, 0xf8(1), 0, 0
    lfd 30, 0xf0(1)
    psq_l 29, 0xe8(1), 0, 0
    lfd 29, 0xe0(1)
    lmw 20, 0xb0(1)
    lwz 0, 0x114(1)
    mtlr 0
    addi 1, 1, 0x110
    blr

fn_80425128:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 26, 3
    addi 29, 4, lbl_80529DEC@l
    li 27, 0x0
    mr 30, 26
    mr 31, 29
L_80425150:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 28, 0, 27
    lbz 3, 0x82(3)
    clrlwi 0, 28, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820098 # beq .L_8042520C
    mr 3, 27
    bl fn_80237774
    stw 3, 0xd8(31)
    mr 25, 29
    addi 24, 31, 0xd8
    li 23, 0x0
L_80425190:
    cmpw 23, 27
    .4byte 0x4182002C # beq .L_804251C0
    mr 3, 23
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_804251C0
    mr 3, 23
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082000C # bne .L_804251C0
    lwz 0, 0x0(24)
    stw 0, 0xd8(25)
L_804251C0:
    addi 23, 23, 0x1
    addi 25, 25, 0x4
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_80425190
    lbz 5, 0x256(26)
    clrlwi 4, 28, 24
    li 0, 0x0
    mr 3, 27
    or 4, 5, 4
    stb 4, 0x256(26)
    stw 0, 0x168(30)
    bl fn_80236100
    stw 3, 0xe8(31)
    clrlwi 3, 28, 24
    li 0, 0x0
    lbz 4, 0x257(26)
    or 3, 4, 3
    stb 3, 0x257(26)
    stw 0, 0x178(30)
L_8042520C:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FF34 # blt .L_80425150
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80425234:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 4
    mr 28, 3
    mr 29, 5
    mr 30, 6
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80425274
    mr 3, 27
    bl fn_8022F3DC
    mr 31, 3
    .4byte 0x48000008 # b .L_80425278
L_80425274:
    mr 31, 27
L_80425278:
    clrlwi. 0, 30, 24
    .4byte 0x41820040 # beq .L_804252BC
    mr 3, 31
    bl fn_80236100
    add 0, 29, 3
    cmpwi 0, 0x270f
    .4byte 0x40810014 # ble .L_804252A4
    mr 3, 31
    bl fn_80236228
    subfic 29, 3, 0x270f
    .4byte 0x4800006C # b .L_8042530C
L_804252A4:
    cmpwi 0, -0x1388
    .4byte 0x40800064 # bge .L_8042530C
    mr 3, 31
    bl fn_80236228
    subfic 29, 3, -0x1388
    .4byte 0x48000054 # b .L_8042530C
L_804252BC:
    mr 3, 31
    bl fn_80236228
    add 0, 29, 3
    cmpwi 0, 0x270f
    .4byte 0x40810014 # ble .L_804252E0
    mr 3, 31
    bl fn_80236228
    subfic 29, 3, 0x270f
    .4byte 0x48000030 # b .L_8042530C
L_804252E0:
    cmpwi 0, 0x0
    .4byte 0x40800028 # bge .L_8042530C
    mr 3, 31
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x4181000C # bgt .L_80425300
    li 29, 0x0
    .4byte 0x48000010 # b .L_8042530C
L_80425300:
    mr 3, 31
    bl fn_80236228
    neg 29, 3
L_8042530C:
    cmpwi 29, 0x3e8
    .4byte 0x4080000C # bge .L_8042531C
    cmpwi 29, -0x3e8
    .4byte 0x41810040 # bgt .L_80425358
L_8042531C:
    srawi 0, 29, 31
    lis 3, 0x51ec
    xor 4, 0, 29
    slwi 5, 27, 1
    subf 4, 0, 4
    subi 0, 3, 0x7ae1
    mulhw 4, 0, 4
    add 3, 28, 5
    li 0, 0x0
    srawi 4, 4, 5
    srwi 5, 4, 31
    add 4, 4, 5
    sth 4, 0x1f8(3)
    sth 0, 0x200(3)
    .4byte 0x48000014 # b .L_80425368
L_80425358:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x34
    bl fn_80230FD0
L_80425368:
    clrlwi. 0, 30, 24
    .4byte 0x41820014 # beq .L_80425380
    mr 3, 31
    mr 4, 29
    bl fn_8023619C
    .4byte 0x48000010 # b .L_8042538C
L_80425380:
    mr 3, 31
    mr 4, 29
    bl fn_802362C4
L_8042538C:
    mr 3, 31
    bl fn_80236100
    lis 4, lbl_80529DEC@ha
    slwi 6, 31, 2
    addi 4, 4, lbl_80529DEC@l
    li 0, 0x1
    add 5, 4, 6
    add 4, 28, 6
    stw 3, 0xe8(5)
    li 3, 0x0
    slw 0, 0, 31
    stw 3, 0x178(4)
    clrlwi 0, 0, 24
    lbz 3, 0x257(28)
    or 0, 3, 0
    stb 0, 0x257(28)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804253E0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 26, 4
    lis 4, lbl_80529DEC@ha
    mr 25, 3
    addi 0, 4, lbl_80529DEC@l
    slwi 30, 26, 2
    add 29, 0, 30
    mr 3, 26
    lwzu 27, 0xd8(29)
    bl fn_80237774
    cmpw 27, 3
    .4byte 0x408000F8 # bge .L_80425510
    add 31, 25, 30
    lwz 3, 0x168(31)
    addi 0, 3, 0x1
    stw 0, 0x168(31)
    lwz 0, 0x168(31)
    cmpwi 0, 0xa
    .4byte 0x418001F4 # blt .L_80425628
    lwz 4, 0x0(29)
    lis 3, lbl_80529DEC@ha
    addi 27, 3, lbl_80529DEC@l
    li 24, 0x0
    addi 0, 4, 0x1
    add 3, 27, 30
    stw 0, 0x0(29)
    addi 28, 3, 0xd8
L_80425458:
    cmpw 24, 26
    .4byte 0x4182002C # beq .L_80425488
    mr 3, 24
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80425488
    mr 3, 24
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082000C # bne .L_80425488
    lwz 0, 0x0(28)
    stw 0, 0xd8(27)
L_80425488:
    addi 24, 24, 0x1
    addi 27, 27, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FFC4 # blt .L_80425458
    li 0, 0x1
    lbz 5, 0x256(25)
    slw 3, 0, 26
    li 0, 0x0
    clrlwi 4, 3, 24
    mr 3, 26
    or 5, 5, 4
    li 4, 0x9
    stb 5, 0x256(25)
    stw 0, 0x168(31)
    bl fn_80230EB8
    lis 3, lbl_8050DB0C@ha
    slwi 0, 26, 1
    addi 3, 3, lbl_8050DB0C@l
    add 6, 25, 30
    add 4, 25, 0
    lha 5, 0x74(3)
    lha 0, 0x76(3)
    mr 3, 26
    mullw 5, 5, 0
    addi 0, 5, 0x1e
    sth 0, 0x1e8(4)
    lwz 0, 0x1a8(6)
    stw 0, 0x1b8(6)
    lwz 0, 0x0(29)
    stw 0, 0x1a8(6)
    bl fn_80237810
    add 4, 25, 30
    stw 3, 0x1c8(4)
    .4byte 0x4800011C # b .L_80425628
L_80425510:
    lwz 27, 0x0(29)
    mr 3, 26
    bl fn_80237774
    cmpw 27, 3
    .4byte 0x408100FC # ble .L_8042561C
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 31, 3, lbl_80529DEC@l
    add 28, 25, 30
    slw 27, 0, 26
    lbz 3, 0x24a(31)
    clrlwi 0, 27, 24
    or 0, 3, 0
    stb 0, 0x24a(31)
    lwz 3, 0x168(28)
    addi 0, 3, 0x1
    stw 0, 0x168(28)
    lwz 0, 0x168(28)
    cmpwi 0, 0xa
    .4byte 0x41800074 # blt .L_804255D0
    lwz 4, 0x0(29)
    add 3, 31, 30
    li 23, 0x0
    subi 0, 4, 0x1
    addi 24, 3, 0xd8
    stw 0, 0x0(29)
L_80425578:
    cmpw 23, 26
    .4byte 0x4182002C # beq .L_804255A8
    mr 3, 23
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_804255A8
    mr 3, 23
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082000C # bne .L_804255A8
    lwz 0, 0x0(24)
    stw 0, 0xd8(31)
L_804255A8:
    addi 23, 23, 0x1
    addi 31, 31, 0x4
    cmpwi 23, 0x4
    .4byte 0x4180FFC4 # blt .L_80425578
    lbz 4, 0x256(25)
    clrlwi 3, 27, 24
    li 0, 0x0
    or 3, 4, 3
    stb 3, 0x256(25)
    stw 0, 0x168(28)
L_804255D0:
    lis 3, lbl_8050DB0C@ha
    slwi 0, 26, 1
    addi 3, 3, lbl_8050DB0C@l
    add 6, 25, 30
    add 4, 25, 0
    lha 5, 0x74(3)
    lha 0, 0x76(3)
    mr 3, 26
    mullw 5, 5, 0
    addi 0, 5, 0x1e
    sth 0, 0x1e8(4)
    lwz 0, 0x1a8(6)
    stw 0, 0x1b8(6)
    lwz 0, 0x0(29)
    stw 0, 0x1a8(6)
    bl fn_80237810
    add 4, 25, 30
    stw 3, 0x1c8(4)
    .4byte 0x48000010 # b .L_80425628
L_8042561C:
    add 3, 25, 30
    li 0, 0x0
    stw 0, 0x168(3)
L_80425628:
    lis 4, lbl_80529DEC@ha
    mr 3, 26
    addi 0, 4, lbl_80529DEC@l
    add 27, 0, 30
    lwzu 28, 0xe8(27)
    bl fn_80236100
    cmpw 28, 3
    .4byte 0x4080008C # bge .L_804256D0
    add 24, 25, 30
    lwz 3, 0x178(24)
    addi 0, 3, 0x1
    stw 0, 0x178(24)
    lwz 0, 0x178(24)
    cmpwi 0, 0x2
    .4byte 0x41800118 # blt .L_80425778
    lwz 4, 0x0(27)
    mr 3, 26
    addi 0, 4, 0x2
    stw 0, 0x0(27)
    lwz 28, 0x0(27)
    bl fn_80236100
    cmpw 28, 3
    .4byte 0x41800020 # blt .L_804256A0
    mr 3, 26
    bl fn_80236100
    stw 3, 0x0(27)
    mr 3, 26
    li 4, 0x51
    bl fn_80230EB8
    .4byte 0x48000010 # b .L_804256AC
L_804256A0:
    mr 3, 26
    li 4, 0x4
    bl fn_80230EB8
L_804256AC:
    li 0, 0x1
    lbz 4, 0x257(25)
    slw 3, 0, 26
    li 0, 0x0
    clrlwi 3, 3, 24
    or 3, 4, 3
    stb 3, 0x257(25)
    stw 0, 0x178(24)
    .4byte 0x480000AC # b .L_80425778
L_804256D0:
    lwz 28, 0x0(27)
    mr 3, 26
    bl fn_80236100
    cmpw 28, 3
    .4byte 0x4081008C # ble .L_8042576C
    add 24, 25, 30
    lwz 3, 0x178(24)
    addi 0, 3, 0x1
    stw 0, 0x178(24)
    lwz 0, 0x178(24)
    cmpwi 0, 0x2
    .4byte 0x4180007C # blt .L_80425778
    lwz 4, 0x0(27)
    mr 3, 26
    subi 0, 4, 0x2
    stw 0, 0x0(27)
    lwz 28, 0x0(27)
    bl fn_80236100
    cmpw 28, 3
    .4byte 0x40800020 # bge .L_8042573C
    mr 3, 26
    bl fn_80236100
    stw 3, 0x0(27)
    mr 3, 26
    li 4, 0x51
    bl fn_80230EB8
    .4byte 0x48000010 # b .L_80425748
L_8042573C:
    mr 3, 26
    li 4, 0x4e
    bl fn_80230EB8
L_80425748:
    li 0, 0x1
    lbz 4, 0x257(25)
    slw 3, 0, 26
    li 0, 0x0
    clrlwi 3, 3, 24
    or 3, 4, 3
    stb 3, 0x257(25)
    stw 0, 0x178(24)
    .4byte 0x48000010 # b .L_80425778
L_8042576C:
    add 3, 25, 30
    li 0, 0x0
    stw 0, 0x178(3)
L_80425778:
    slwi 0, 26, 1
    add 24, 25, 0
    lha 4, 0x1f8(24)
    cmpwi 4, 0x0
    .4byte 0x40810048 # ble .L_804257D0
    lha 3, 0x200(24)
    cmpwi 3, 0x0
    .4byte 0x40820034 # bne .L_804257C8
    subi 0, 4, 0x1
    lis 4, 0x2
    sth 0, 0x1f8(24)
    mr 3, 26
    addi 4, 4, 0x34
    bl fn_80230FD0
    lha 0, 0x1f8(24)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_804257D0
    li 0, 0xc
    sth 0, 0x200(24)
    .4byte 0x4800000C # b .L_804257D0
L_804257C8:
    subi 0, 3, 0x1
    sth 0, 0x200(24)
L_804257D0:
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_804257E4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 18, 0x28(1)
    lis 5, lbl_8048E1B8@ha
    lis 4, lbl_80529DEC@ha
    addi 5, 5, lbl_8048E1B8@l
    mr 31, 3
    addi 21, 5, 0xdc8
    addi 24, 4, lbl_80529DEC@l
    mr 27, 21
    addi 28, 5, 0xda8
    addi 26, 5, 0xde8
    addi 25, 5, 0xec8
    addi 23, 5, 0x148
    li 20, 0x0
    li 29, 0x0
L_80425830:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 22, 0, 20
    lbz 0, 0x82(3)
    clrlwi 30, 22, 24
    and 4, 0, 30
    neg 0, 4
    or 0, 0, 4
    srwi. 0, 0, 31
    .4byte 0x40820014 # bne .L_80425868
    lbz 0, 0x25d(31)
    andc 0, 0, 30
    stb 0, 0x25d(31)
    .4byte 0x48000078 # b .L_804258DC
L_80425868:
    .4byte 0x80AD9310 # lwz r5, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdd(5)
    and 4, 0, 30
    neg 0, 4
    or 0, 0, 4
    srwi. 0, 0, 31
    .4byte 0x41820028 # beq .L_804258A8
    lbz 4, 0x25c(31)
    and. 0, 4, 30
    .4byte 0x4082001C # bne .L_804258A8
    or 0, 4, 30
    stb 0, 0x25c(31)
    lbz 0, 0x25d(31)
    or 0, 0, 30
    stb 0, 0x25d(31)
    .4byte 0x48000038 # b .L_804258DC
L_804258A8:
    lbz 0, 0xdc(5)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x41820014 # beq .L_804258C4
    lbz 0, 0x25d(31)
    andc 0, 0, 30
    stb 0, 0x25d(31)
    .4byte 0x4800001C # b .L_804258DC
L_804258C4:
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x40820010 # bne .L_804258DC
    lbz 0, 0x25d(31)
    andc 0, 0, 30
    stb 0, 0x25d(31)
L_804258DC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x82(3)
    and. 0, 0, 30
    .4byte 0x41820360 # beq .L_80425C48
    mr 3, 31
    mr 4, 20
    bl fn_804253E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    sraw 0, 0, 29
    clrlwi 0, 0, 30
    cmplwi 0, 0x1
    .4byte 0x4082011C # bne .L_80425A28
    mr 3, 20
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4180008C # blt .L_804259A8
    lbz 3, 0x258(31)
    and. 0, 3, 30
    .4byte 0x40820100 # bne .L_80425A28
    clrlwi 0, 22, 24
    lwz 5, 0x0(28)
    or 0, 3, 0
    lwz 6, 0x4(28)
    stb 0, 0x258(31)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000084 # b .L_80425A28
L_804259A8:
    lbz 3, 0x258(31)
    and. 0, 3, 30
    .4byte 0x41820078 # beq .L_80425A28
    andc 0, 3, 30
    lwz 5, 0x0(28)
    stb 0, 0x258(31)
    lwz 6, 0x4(28)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(27)
    stb 0, 0xb0(3)
    lwz 6, 0x4(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80425A28:
    mr 3, 31
    mr 4, 20
    bl fn_80423DF0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    sraw 0, 0, 29
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x408200B4 # bne .L_80425AFC
    lbz 0, 0x25a(31)
    and. 0, 0, 30
    .4byte 0x4082004C # bne .L_80425AA0
    mr 3, 20
    bl fn_8023BD70
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_80425AFC
    lbz 3, 0x25a(31)
    clrlwi 0, 22, 24
    lwz 5, 0x0(25)
    or 0, 3, 0
    lwz 6, 0x4(25)
    stb 0, 0x25a(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000060 # b .L_80425AFC
L_80425AA0:
    mr 3, 20
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80425ACC
    lbz 0, 0x255(31)
    and. 0, 0, 30
    .4byte 0x41820034 # beq .L_80425AFC
L_80425ACC:
    lbz 0, 0x25a(31)
    lwz 5, 0x0(25)
    andc 0, 0, 30
    lwz 6, 0x4(25)
    stb 0, 0x25a(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80425AFC:
    lbz 0, 0x255(31)
    and. 0, 0, 30
    .4byte 0x4182012C # beq .L_80425C30
    lwz 18, 0x108(24)
    cmpwi 18, 0x180
    .4byte 0x40810008 # ble .L_80425B18
    li 18, 0x180
L_80425B18:
    cmpwi 18, 0x0
    .4byte 0x40800008 # bge .L_80425B24
    li 18, 0x0
L_80425B24:
    li 19, 0x0
    mr 30, 23
L_80425B2C:
    cmpwi 18, 0x60
    .4byte 0x41800068 # blt .L_80425B98
    lwz 3, 0x4(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 22, 3
    lwz 3, 0x4(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x2c(22)
    lfs 0, 0x24(22)
    lwz 12, 0x18(12)
    fsubs 2, 1, 0
    lfs 1, 0xf4(31)
    mtctr 12
    bctrl
    subi 18, 18, 0x60
    .4byte 0x4800008C # b .L_80425C20
L_80425B98:
    lwz 3, 0x4(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 22, 3
    lwz 3, 0x4(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    xoris 4, 18, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    lwz 12, 0x0(3)
    stw 0, 0x8(1)
    .4byte 0xC8420AC0 # lfd f2, lbl_80543A60@sda21(r0)
    lfd 0, 0x8(1)
    .4byte 0xC0220AC8 # lfs f1, lbl_80543A68@sda21(r0)
    fsubs 3, 0, 2
    lfs 4, 0xf4(31)
    lfs 2, 0x2c(22)
    lfs 0, 0x24(22)
    fdivs 1, 3, 1
    lwz 12, 0x18(12)
    fmuls 1, 4, 1
    fsubs 2, 2, 0
    mtctr 12
    bctrl
    li 18, 0x0
L_80425C20:
    addi 19, 19, 0x1
    addi 30, 30, 0x8
    cmpwi 19, 0x4
    .4byte 0x4180FF00 # blt .L_80425B2C
L_80425C30:
    mr 3, 31
    mr 4, 20
    bl fn_80423248
    mr 3, 31
    mr 4, 20
    bl fn_80423804
L_80425C48:
    addi 20, 20, 0x1
    addi 28, 28, 0x8
    cmpwi 20, 0x4
    addi 27, 27, 0x8
    addi 26, 26, 0x8
    addi 25, 25, 0x8
    addi 24, 24, 0x4
    addi 23, 23, 0x20
    addi 29, 29, 0x2
    .4byte 0x4180FBC4 # blt .L_80425830
    mr 3, 31
    bl fn_80422824
    mr 22, 31
    li 23, 0x0
    li 20, 0x0
L_80425C84:
    mr 3, 31
    mr 4, 23
    li 5, 0x0
    bl fn_80424148
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 0, 23, 0x148
    lwz 3, 0x20(3)
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x41820150 # beq .L_80425DF8
    lwz 3, 0x4(31)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 3, 0x4(31)
    fctiwz 0, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    stfd 0, 0x8(1)
    lwz 12, 0x3c(12)
    lwz 18, 0xc(1)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x4(31)
    fctiwz 0, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    stfd 0, 0x10(1)
    lwz 12, 0x3c(12)
    lwz 19, 0x14(1)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 3, 0x4(31)
    fsubs 31, 1, 0
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 2, 0x2c(3)
    fctiwz 0, 31
    lfs 1, 0x24(3)
    cmpwi 23, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fsubs 1, 2, 1
    stfd 0, 0x18(1)
    lwz 3, 0x20(3)
    lwz 0, 0x1c(1)
    add 3, 3, 20
    fctiwz 0, 1
    stw 18, 0x1d0(3)
    stw 19, 0x1d4(3)
    stfd 0, 0x20(1)
    stw 0, 0x1d8(3)
    lwz 0, 0x24(1)
    stw 0, 0x1dc(3)
    .4byte 0x4182000C # beq .L_80425DA0
    cmpwi 23, 0x2
    .4byte 0x40820030 # bne .L_80425DCC
L_80425DA0:
    lfs 1, 0xf8(22)
    .4byte 0xC0020AD0 # lfs f0, lbl_80543A70@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80425DC0
    .4byte 0xC0020AD4 # lfs f0, lbl_80543A74@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xf8(22)
    .4byte 0x4800009C # b .L_80425E58
L_80425DC0:
    .4byte 0xC0020AD8 # lfs f0, lbl_80543A78@sda21(r0)
    stfs 0, 0xf8(22)
    .4byte 0x48000090 # b .L_80425E58
L_80425DCC:
    lfs 1, 0xf8(22)
    .4byte 0xC0020ADC # lfs f0, lbl_80543A7C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_80425DEC
    .4byte 0xC0020AD4 # lfs f0, lbl_80543A74@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xf8(22)
    .4byte 0x48000070 # b .L_80425E58
L_80425DEC:
    .4byte 0xC0020AE0 # lfs f0, lbl_80543A80@sda21(r0)
    stfs 0, 0xf8(22)
    .4byte 0x48000064 # b .L_80425E58
L_80425DF8:
    cmpwi 23, 0x0
    .4byte 0x4182000C # beq .L_80425E08
    cmpwi 23, 0x2
    .4byte 0x4082002C # bne .L_80425E30
L_80425E08:
    lfs 1, 0xf8(22)
    .4byte 0xC0020AD4 # lfs f0, lbl_80543A74@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80425E24
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    stfs 0, 0xf8(22)
    .4byte 0x48000038 # b .L_80425E58
L_80425E24:
    fsubs 0, 1, 0
    stfs 0, 0xf8(22)
    .4byte 0x4800002C # b .L_80425E58
L_80425E30:
    lfs 1, 0xf8(22)
    .4byte 0xC0020AE4 # lfs f0, lbl_80543A84@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_80425E4C
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    stfs 0, 0xf8(22)
    .4byte 0x48000010 # b .L_80425E58
L_80425E4C:
    .4byte 0xC0020AD4 # lfs f0, lbl_80543A74@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xf8(22)
L_80425E58:
    addi 23, 23, 0x1
    addi 20, 20, 0x10
    cmpwi 23, 0x4
    addi 22, 22, 0x4
    addi 21, 21, 0x8
    .4byte 0x4180FE18 # blt .L_80425C84
    li 18, 0x0
    li 20, 0x1
L_80425E78:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 20, 18
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_80425EA8
    mr 3, 31
    mr 4, 18
    bl fn_8042215C
    mr 3, 31
    mr 4, 18
    bl fn_80421D78
L_80425EA8:
    addi 18, 18, 0x1
    cmpwi 18, 0x4
    .4byte 0x4180FFC8 # blt .L_80425E78
    li 18, 0x0
    li 20, 0x1
L_80425EBC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 20, 18
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820014 # beq .L_80425EE4
    mr 3, 31
    mr 4, 18
    li 5, 0x0
    bl fn_80421A34
L_80425EE4:
    addi 18, 18, 0x1
    cmpwi 18, 0x4
    .4byte 0x4180FFD0 # blt .L_80425EBC
    lwz 3, 0xf0(31)
    bl fn_80441490
    li 0, 0x0
    stb 0, 0x255(31)
    stb 0, 0x256(31)
    stb 0, 0x257(31)
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 18, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80425F24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x18(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80425F6C:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stmw 26, 0x68(1)
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    mr 26, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    lwz 7, 0x4(5)
    lis 3, lbl_8050DB0C@ha
    lwz 6, 0x24(6)
    addi 30, 3, lbl_8050DB0C@l
    lhz 5, 0x4(7)
    lis 3, lbl_8050EC80@ha
    lhz 0, 0x6(7)
    mr 29, 26
    xoris 5, 5, 0x8000
    stw 4, 0x38(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8620AC0 # lfd f3, lbl_80543A60@sda21(r0)
    stw 5, 0x3c(1)
    mr 28, 26
    lfs 4, 0x858(6)
    addi 31, 3, lbl_8050EC80@l
    lfd 0, 0x38(1)
    li 27, 0x0
    stw 0, 0x44(1)
    fsubs 2, 0, 3
    lfs 5, 0x40(30)
    stw 4, 0x40(1)
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    lfd 1, 0x40(1)
    fdivs 2, 2, 4
    fsubs 1, 1, 3
    fmuls 29, 5, 2
    fdivs 1, 1, 4
    fmuls 28, 5, 1
    fadds 31, 0, 29
    fadds 30, 0, 28
L_80426038:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x418202D8 # beq .L_80426328
    mr 3, 27
    bl fn_8022EA0C
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x408002C4 # bge .L_80426328
    lha 0, 0x1e8(29)
    cmpwi 0, 0x0
    .4byte 0x40810148 # ble .L_804261B8
    lwz 4, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lbz 0, 0x89(3)
    cmplwi 0, 0x0
    .4byte 0x41820128 # beq .L_804261B8
    mr 3, 27
    bl fn_8022EA0C
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    addi 7, 1, 0x28
    li 6, 0x0
    lwz 3, 0x24(5)
    li 5, 0x0
    bl fn_8030C5F0
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 6, 0x4330
    lha 0, 0x4e(30)
    addi 4, 1, 0x18
    lwz 7, 0x4(3)
    xoris 5, 0, 0x8000
    stw 6, 0x58(1)
    lhz 0, 0x6(7)
    lhz 7, 0x4(7)
    xoris 0, 0, 0x8000
    lwz 3, 0x4c(26)
    stw 0, 0x5c(1)
    xoris 7, 7, 0x8000
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    .4byte 0xC9220AC0 # lfd f9, lbl_80543A60@sda21(r0)
    lfd 1, 0x58(1)
    stw 7, 0x3c(1)
    fsubs 1, 1, 9
    lfs 2, 0x2c(1)
    stw 6, 0x38(1)
    lfs 6, 0x28(1)
    fdivs 3, 2, 1
    lfd 5, 0x38(1)
    stw 0, 0x54(1)
    .4byte 0xC0E20AB8 # lfs f7, lbl_80543A58@sda21(r0)
    stw 6, 0x50(1)
    .4byte 0xC0220AE8 # lfs f1, lbl_80543A88@sda21(r0)
    fsubs 5, 5, 9
    lfd 4, 0x50(1)
    stw 7, 0x44(1)
    fmuls 3, 28, 3
    fsubs 4, 4, 9
    .4byte 0xC0420AEC # lfs f2, lbl_80543A8C@sda21(r0)
    fdivs 6, 6, 5
    stw 6, 0x40(1)
    lfd 8, 0x40(1)
    stw 5, 0x4c(1)
    stw 6, 0x48(1)
    lfd 5, 0x48(1)
    stfs 0, 0x18(1)
    fsubs 8, 8, 9
    fmuls 6, 29, 6
    stfs 0, 0x1c(1)
    fsubs 5, 5, 9
    fnmsubs 0, 4, 7, 3
    fnmsubs 26, 8, 7, 6
    stfs 31, 0x20(1)
    fadds 27, 5, 0
    stfs 30, 0x24(1)
    bl fn_800938EC
    lwz 3, 0x4c(26)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    fmr 1, 26
    lwz 3, 0x8(28)
    fmr 2, 27
    lwz 4, 0x4c(26)
    bl fn_8009D340
    li 0, 0x0
    sth 0, 0x208(29)
    .4byte 0x48000174 # b .L_80426328
L_804261B8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_804261D0
    li 0, 0x1
    .4byte 0x48000014 # b .L_804261E0
L_804261D0:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_804261E0:
    clrlwi. 0, 0, 24
    .4byte 0x40820144 # bne .L_80426328
    mr 3, 27
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x0
    .4byte 0x40810130 # ble .L_80426328
    mr 3, 27
    bl fn_8022EA0C
    bl fn_802366CC
    cmpwi 3, 0x12c
    .4byte 0x4080011C # bge .L_80426328
    mr 3, 27
    bl fn_8022EA0C
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    addi 7, 1, 0x28
    li 6, 0x0
    lwz 3, 0x24(5)
    li 5, 0x0
    bl fn_8030C5F0
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 6, 0x4330
    lha 0, 0x4e(30)
    addi 4, 1, 0x8
    lwz 7, 0x4(3)
    xoris 5, 0, 0x8000
    stw 6, 0x38(1)
    lhz 0, 0x6(7)
    lhz 7, 0x4(7)
    xoris 0, 0, 0x8000
    lwz 3, 0x4c(26)
    stw 0, 0x3c(1)
    xoris 7, 7, 0x8000
    .4byte 0xC0020AA0 # lfs f0, lbl_80543A40@sda21(r0)
    .4byte 0xC9220AC0 # lfd f9, lbl_80543A60@sda21(r0)
    lfd 1, 0x38(1)
    stw 7, 0x54(1)
    fsubs 1, 1, 9
    lfs 2, 0x2c(1)
    stw 6, 0x50(1)
    lfs 6, 0x28(1)
    fdivs 3, 2, 1
    lfd 5, 0x50(1)
    stw 0, 0x44(1)
    .4byte 0xC0E20AB8 # lfs f7, lbl_80543A58@sda21(r0)
    stw 6, 0x40(1)
    .4byte 0xC0220AE8 # lfs f1, lbl_80543A88@sda21(r0)
    fsubs 5, 5, 9
    lfd 4, 0x40(1)
    stw 7, 0x5c(1)
    fmuls 3, 28, 3
    fsubs 4, 4, 9
    .4byte 0xC0420AEC # lfs f2, lbl_80543A8C@sda21(r0)
    fdivs 6, 6, 5
    stw 6, 0x58(1)
    lfd 8, 0x58(1)
    stw 5, 0x4c(1)
    stw 6, 0x48(1)
    lfd 5, 0x48(1)
    stfs 0, 0x8(1)
    fsubs 8, 8, 9
    fmuls 6, 29, 6
    stfs 0, 0xc(1)
    fsubs 5, 5, 9
    fnmsubs 0, 4, 7, 3
    fnmsubs 27, 8, 7, 6
    stfs 31, 0x10(1)
    fadds 26, 5, 0
    stfs 30, 0x14(1)
    bl fn_800938EC
    lwz 3, 0x4c(26)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    fmr 1, 27
    lwz 3, 0x2c(28)
    fmr 2, 26
    lwz 4, 0x4c(26)
    bl fn_8009D340
L_80426328:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x4
    addi 29, 29, 0x2
    .4byte 0x4180FD00 # blt .L_80426038
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(26)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 3, 0xf0(26)
    bl fn_8044148C
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    lmw 26, 0x68(1)
    lwz 0, 0xe4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_804263A8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stmw 16, 0x10(1)
    mr 31, 3
    lis 4, lbl_80529DEC@ha
    lis 3, lbl_8048E1B8@ha
    .4byte 0xC3E20AA0 # lfs f31, lbl_80543A40@sda21(r0)
    addi 30, 4, lbl_80529DEC@l
    mr 28, 31
    mr 27, 31
    addi 29, 3, lbl_8048E1B8@l
    li 17, 0x0
L_804263E4:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 3, 0, 17
    lbz 0, 0x82(6)
    clrlwi 4, 3, 24
    and 3, 0, 4
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x40820014 # bne .L_8042641C
    lbz 0, 0x25d(31)
    andc 0, 0, 4
    stb 0, 0x25d(31)
    .4byte 0x48000078 # b .L_80426490
L_8042641C:
    .4byte 0x80AD9310 # lwz r5, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdd(5)
    and 3, 0, 4
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820028 # beq .L_8042645C
    lbz 3, 0x25c(31)
    and. 0, 3, 4
    .4byte 0x4082001C # bne .L_8042645C
    or 0, 3, 4
    stb 0, 0x25c(31)
    lbz 0, 0x25d(31)
    or 0, 0, 4
    stb 0, 0x25d(31)
    .4byte 0x48000038 # b .L_80426490
L_8042645C:
    lbz 0, 0xdc(5)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x41820014 # beq .L_80426478
    lbz 0, 0x25d(31)
    andc 0, 0, 4
    stb 0, 0x25d(31)
    .4byte 0x4800001C # b .L_80426490
L_80426478:
    lwz 0, 0x4c(6)
    cmpwi 0, 0xb
    .4byte 0x40820010 # bne .L_80426490
    lbz 0, 0x25d(31)
    andc 0, 0, 4
    stb 0, 0x25d(31)
L_80426490:
    mr 3, 17
    bl fn_80237774
    stw 3, 0xd8(30)
    mr 3, 17
    bl fn_80236100
    stw 3, 0xe8(30)
    mr 3, 17
    bl fn_802375B0
    stw 3, 0x108(30)
    li 0, 0x180
    li 18, 0x0
    add 3, 31, 17
    stw 0, 0x158(28)
    li 0, 0xff
    addi 30, 30, 0x4
    stw 18, 0x168(28)
    stw 18, 0x178(28)
    stw 18, 0x188(28)
    stfs 31, 0xf8(28)
    stfs 31, 0x108(28)
    stfs 31, 0x118(28)
    stfs 31, 0x128(28)
    stfs 31, 0x138(28)
    stb 17, 0x251(3)
    addi 17, 17, 0x1
    cmpwi 17, 0x4
    stb 0, 0x24d(3)
    sth 18, 0x1f0(27)
    stw 18, 0x198(28)
    stw 18, 0x1a8(28)
    stw 18, 0x1b8(28)
    stw 18, 0x1c8(28)
    sth 18, 0x1e8(27)
    sth 18, 0x1f8(27)
    sth 18, 0x200(27)
    stw 18, 0x1d8(28)
    addi 28, 28, 0x4
    sth 18, 0x208(27)
    addi 27, 27, 0x2
    .4byte 0x4180FEB8 # blt .L_804263E4
    li 16, 0x1
L_80426534:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 16, 18
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820014 # beq .L_8042655C
    mr 3, 31
    mr 4, 18
    li 5, 0x1
    bl fn_80421A34
L_8042655C:
    addi 18, 18, 0x1
    cmpwi 18, 0x4
    .4byte 0x4180FFD0 # blt .L_80426534
    li 4, 0xf
    addi 17, 29, 0xd68
    stb 4, 0x255(31)
    lis 3, lbl_8050EC80@ha
    li 21, 0x0
    li 0, -0x2
    stb 4, 0x256(31)
    mr 27, 17
    addi 28, 29, 0xda8
    addi 26, 29, 0xdc8
    stb 4, 0x257(31)
    addi 25, 29, 0xde8
    addi 24, 29, 0xe28
    addi 23, 29, 0xe68
    stb 21, 0x258(31)
    addi 22, 29, 0xe88
    addi 20, 29, 0xe08
    addi 19, 29, 0xea8
    stb 21, 0x259(31)
    addi 18, 29, 0xec8
    addi 30, 3, lbl_8050EC80@l
    li 16, 0x0
    stb 21, 0x25a(31)
    stb 21, 0x25b(31)
    stw 0, 0x148(31)
    stw 0, 0x14c(31)
    stw 0, 0x150(31)
    stw 0, 0x154(31)
L_804265D8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 16
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820240 # beq .L_80426830
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(24)
    stb 0, 0xb0(3)
    lwz 6, 0x4(24)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(23)
    stb 0, 0xb0(3)
    lwz 6, 0x4(23)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, lbl_8050EC80@ha
    stb 0, 0xb0(3)
    addi 0, 4, lbl_8050EC80@l
    lwz 3, 0x10(30)
    mulli 3, 3, 0xc8
    add 3, 0, 3
    lbz 0, 0x89(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80426714
    lwz 3, 0x4(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000028 # b .L_80426738
L_80426714:
    lwz 3, 0x4(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80426738:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x83(3)
    sraw 0, 0, 21
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x40820074 # bne .L_804267C0
    lwz 3, 0x4(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(19)
    stb 0, 0xb0(3)
    lwz 6, 0x4(19)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480001DC # b .L_80426998
L_804267C0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(19)
    stb 0, 0xb0(3)
    lwz 6, 0x4(19)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800016C # b .L_80426998
L_80426830:
    lwz 3, 0x18(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(28)
    stb 0, 0xb0(3)
    lwz 6, 0x4(28)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(26)
    stb 0, 0xb0(3)
    lwz 6, 0x4(26)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(20)
    stb 0, 0xb0(3)
    lwz 6, 0x4(20)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(24)
    stb 0, 0xb0(3)
    lwz 6, 0x4(24)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(23)
    stb 0, 0xb0(3)
    lwz 6, 0x4(23)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(19)
    stb 0, 0xb0(3)
    lwz 6, 0x4(19)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(18)
    stb 0, 0xb0(3)
    lwz 6, 0x4(18)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80426998:
    addi 16, 16, 0x1
    addi 28, 28, 0x8
    cmpwi 16, 0x4
    addi 26, 26, 0x8
    addi 25, 25, 0x8
    addi 24, 24, 0x8
    addi 23, 23, 0x8
    addi 22, 22, 0x8
    addi 21, 21, 0x2
    addi 20, 20, 0x8
    addi 19, 19, 0x8
    addi 18, 18, 0x8
    addi 27, 27, 0x8
    .4byte 0x4180FC0C # blt .L_804265D8
    lis 3, lbl_804B145C@ha
    addi 19, 29, 0xd88
    li 20, 0x0
    lis 18, 0x5449
    addi 16, 3, lbl_804B145C@l
L_804269E4:
    lwz 4, 0x0(16)
    addi 3, 18, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x18(31)
    mr 21, 0
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 21
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 21
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 19, 19, 0x8
    cmpwi 20, 0x4
    addi 17, 17, 0x8
    .4byte 0x4180FF74 # blt .L_804269E4
    li 17, 0x0
    li 16, 0x1
L_80426A7C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 16, 17
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820014 # beq .L_80426AA4
    mr 3, 31
    mr 4, 17
    li 5, 0x1
    bl fn_80424148
L_80426AA4:
    addi 17, 17, 0x1
    cmpwi 17, 0x4
    .4byte 0x4180FFD0 # blt .L_80426A7C
    lwz 3, 0xf0(31)
    bl fn_8044172C
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    lmw 16, 0x10(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

