# 901KB-gap non-actor manager block: 4 functions, 8,768 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000F254
etb_8000F254:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000F254, 8

.global etb_8000F25C
etb_8000F25C:
    .4byte 0x2A0A0000
    .4byte 0x00000000
.size etb_8000F25C, 8

.global etb_8000F264
etb_8000F264:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000F264, 8

.section extabindex, "a"
.balign 4
.global eti_8001EFD0
eti_8001EFD0:
    .4byte fn_803A34A0
    .4byte 0x00001038
    .4byte etb_8000F254
.size eti_8001EFD0, 12

.global eti_8001EFDC
eti_8001EFDC:
    .4byte fn_803A44D8
    .4byte 0x00000EA8
    .4byte etb_8000F25C
.size eti_8001EFDC, 12

.global eti_8001EFE8
eti_8001EFE8:
    .4byte fn_803A5380
    .4byte 0x00000344
    .4byte etb_8000F264
.size eti_8001EFE8, 12

.text
.balign 4
.global fn_803A3484
.global fn_803A34A0
.global fn_803A44D8
.global fn_803A5380

fn_803A3484:
    .4byte 0x806D91C8 # lwz r3, lbl_8053AD88@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_803A3498
    lwz 3, 0x154(3)
    blr
L_803A3498:
    li 3, 0x1
    blr

fn_803A34A0:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    stw 28, 0x80(1)
    lha 0, 0x6c(3)
    cmpwi 0, 0x0
    .4byte 0x41820374 # beq .L_803A383C
    lwz 3, 0x48(31)
    bl fn_80427D60
    lha 0, 0x6c(31)
    mr 30, 3
    li 29, 0x0
    cmpwi 0, 0x2
    .4byte 0x40820164 # bne .L_803A3648
    lwz 3, 0x48(31)
    lwz 12, 0x18(3)
    mtctr 12
    bctrl
    lwz 4, 0x48(31)
    mr 28, 3
    lwz 12, 0x10(4)
    mtctr 12
    bctrl
    lha 4, 0x80(31)
    subf 28, 3, 28
    cmpwi 4, 0x0
    .4byte 0x4182000C # beq .L_803A3524
    addi 0, 4, 0x1
    sth 0, 0x80(31)
L_803A3524:
    cmpwi 28, 0x96
    .4byte 0x41800068 # blt .L_803A3590
    lwz 3, 0x48(31)
    lwz 12, 0x18(3)
    mtctr 12
    bctrl
    cmplw 3, 28
    .4byte 0x40810050 # ble .L_803A3590
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x6
    .4byte 0x41820024 # beq .L_803A3578
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x6
    li 6, 0x0
    bl fn_80458FF0
    lha 3, 0x80(31)
    addi 0, 3, 0x1
    sth 0, 0x80(31)
L_803A3578:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x250(3)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_803A3590
    li 29, 0x1
L_803A3590:
    cmpwi 28, 0xc8
    .4byte 0x41800074 # blt .L_803A3608
    lwz 3, 0x48(31)
    lwz 12, 0x18(3)
    mtctr 12
    bctrl
    cmplw 3, 28
    .4byte 0x4081005C # ble .L_803A3608
    lwz 0, 0x44(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A3608
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0x60
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0x60(1)
    li 5, 0x48e
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x64(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x68(1)
    bl fn_8013CC50
    stw 3, 0x44(31)
    lwz 3, 0x44(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A3608:
    cmpwi 28, 0xc9
    .4byte 0x41800058 # blt .L_803A3664
    lwz 3, 0x48(31)
    lwz 12, 0x18(3)
    mtctr 12
    bctrl
    cmplw 3, 28
    .4byte 0x40810040 # ble .L_803A3664
    lis 3, lbl_80529DEC@ha
    li 4, 0x1
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x0
    stb 4, 0x249(3)
    li 29, 0x1
    sth 0, 0x80(31)
    .4byte 0x48000020 # b .L_803A3664
L_803A3648:
    lwz 3, 0x48(31)
    lwz 12, 0x10(3)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x40820008 # bne .L_803A3664
    li 29, 0x1
L_803A3664:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418200D4 # beq .L_803A374C
    lha 0, 0x6c(31)
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_803A36AC
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x249(3)
    lha 0, 0x6a(31)
    cmpwi 0, 0x78
    .4byte 0x4080000C # bge .L_803A36AC
    li 0, 0x99
    sth 0, 0x6a(31)
L_803A36AC:
    lwz 3, 0x48(31)
    bl fn_80427D94
    lha 0, 0x6c(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_803A36CC
    li 0, 0x0
    stw 0, 0x58(31)
    .4byte 0x48000024 # b .L_803A36EC
L_803A36CC:
    lwz 3, 0x58(31)
    addi 0, 3, 0x1
    stw 0, 0x58(31)
    lwz 0, 0x58(31)
    cmpwi 0, 0x2
    .4byte 0x4180000C # blt .L_803A36EC
    li 0, 0x0
    stw 0, 0x58(31)
L_803A36EC:
    li 0, 0x0
    sth 0, 0x6c(31)
    sth 0, 0x7a(31)
    sth 0, 0x7e(31)
    stb 0, 0x14d(31)
    stw 0, 0x5c(31)
    sth 0, 0x7c(31)
    sth 0, 0x80(31)
    stw 0, 0x60(31)
    stw 0, 0x64(31)
    lha 0, 0x6e(31)
    cmpwi 0, 0x3
    .4byte 0x4182082C # beq .L_803A3F48
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x6
    .4byte 0x41820818 # beq .L_803A3F48
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x6
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000800 # b .L_803A3F48
L_803A374C:
    clrlwi. 0, 29, 24
    .4byte 0x4082001C # bne .L_803A376C
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_803A376C
    cmpwi 30, 0x0
    .4byte 0x408207E0 # bne .L_803A3F48
L_803A376C:
    lha 0, 0x6c(31)
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_803A379C
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x249(3)
    lha 0, 0x6a(31)
    cmpwi 0, 0x78
    .4byte 0x4080000C # bge .L_803A379C
    li 0, 0x99
    sth 0, 0x6a(31)
L_803A379C:
    lwz 3, 0x48(31)
    bl fn_80427D94
    lha 0, 0x6c(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_803A37BC
    li 0, 0x0
    stw 0, 0x58(31)
    .4byte 0x48000024 # b .L_803A37DC
L_803A37BC:
    lwz 3, 0x58(31)
    addi 0, 3, 0x1
    stw 0, 0x58(31)
    lwz 0, 0x58(31)
    cmpwi 0, 0x2
    .4byte 0x4180000C # blt .L_803A37DC
    li 0, 0x0
    stw 0, 0x58(31)
L_803A37DC:
    li 0, 0x0
    sth 0, 0x6c(31)
    sth 0, 0x7a(31)
    sth 0, 0x7e(31)
    stb 0, 0x14d(31)
    stw 0, 0x5c(31)
    sth 0, 0x7c(31)
    sth 0, 0x80(31)
    stw 0, 0x60(31)
    stw 0, 0x64(31)
    lha 0, 0x6e(31)
    cmpwi 0, 0x3
    .4byte 0x4182073C # beq .L_803A3F48
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x6
    .4byte 0x41820728 # beq .L_803A3F48
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x6
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000710 # b .L_803A3F48
L_803A383C:
    lha 4, 0x6e(31)
    cmpwi 4, 0x1
    .4byte 0x41820058 # beq .L_803A389C
    .4byte 0x40800010 # bge .L_803A3858
    cmpwi 4, 0x0
    .4byte 0x40800014 # bge .L_803A3864
    .4byte 0x48000090 # b .L_803A38E4
L_803A3858:
    cmpwi 4, 0x3
    .4byte 0x40800088 # bge .L_803A38E4
    .4byte 0x4800005C # b .L_803A38BC
L_803A3864:
    lfs 2, 0x4c(31)
    .4byte 0xC0220350 # lfs f1, lbl_805432F0@sda21(r0)
    .4byte 0xC0020354 # lfs f0, lbl_805432F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x4c(31)
    lfs 1, 0x4c(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820060 # bne .L_803A38E4
    stfs 0, 0x4c(31)
    lha 3, 0x6e(31)
    addi 0, 3, 0x1
    sth 0, 0x6e(31)
    .4byte 0x4800004C # b .L_803A38E4
L_803A389C:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x238(3)
    cmplwi 0, 0x4
    .4byte 0x40820038 # bne .L_803A38E4
    addi 0, 4, 0x1
    sth 0, 0x6e(31)
    .4byte 0x4800002C # b .L_803A38E4
L_803A38BC:
    lfs 2, 0x4c(31)
    .4byte 0xC0220350 # lfs f1, lbl_805432F0@sda21(r0)
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x4c(31)
    lfs 1, 0x4c(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_803A38E4
    stfs 0, 0x4c(31)
L_803A38E4:
    lis 3, lbl_80529DEC@ha
    addi 30, 3, lbl_80529DEC@l
    lbz 0, 0x238(30)
    cmplwi 0, 0x1
    .4byte 0x40820188 # bne .L_803A3A7C
    li 3, 0x0
    bl fn_80075400
    subis 0, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_803A3948
    lha 3, 0x78(31)
    addi 0, 3, 0x1
    sth 0, 0x78(31)
    lha 0, 0x78(31)
    cmpwi 0, 0x30
    .4byte 0x41800030 # blt .L_803A3950
    lis 3, lbl_80529DEC@ha
    li 5, 0xff
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x1
    stb 5, 0x238(30)
    li 3, 0x0
    stb 0, 0x226(4)
    bl OSSetProgressiveMode
    .4byte 0x4800000C # b .L_803A3950
L_803A3948:
    li 0, 0x0
    sth 0, 0x78(31)
L_803A3950:
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309A00
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_803A39D0
    lha 3, 0x76(31)
    addi 0, 3, 0x1
    sth 0, 0x76(31)
    lha 0, 0x76(31)
    cmpwi 0, 0x30
    .4byte 0x41800054 # blt .L_803A39D8
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x40820010 # bne .L_803A39A0
    li 0, 0x2
    stb 0, 0x238(30)
    .4byte 0x48000024 # b .L_803A39C0
L_803A39A0:
    lis 3, lbl_80529DEC@ha
    li 5, 0xff
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x1
    stb 5, 0x238(30)
    li 3, 0x0
    stb 0, 0x226(4)
    bl OSSetProgressiveMode
L_803A39C0:
    li 0, 0x0
    sth 0, 0x74(31)
    sth 0, 0x76(31)
    .4byte 0x4800000C # b .L_803A39D8
L_803A39D0:
    li 0, 0x0
    sth 0, 0x76(31)
L_803A39D8:
    lbz 0, 0x238(30)
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_803A3A7C
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_803A3A7C
    lha 3, 0x74(31)
    cmpwi 3, 0x3
    .4byte 0x4080004C # bge .L_803A3A54
    addi 0, 3, 0x1
    sth 0, 0x74(31)
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x41820024 # beq .L_803A3A40
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x200
    bl fn_80309D24
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_803A3A7C
L_803A3A40:
    li 3, 0x2
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x74(31)
    .4byte 0x4800002C # b .L_803A3A7C
L_803A3A54:
    lis 3, lbl_80529DEC@ha
    li 5, 0xff
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x1
    stb 5, 0x238(30)
    li 3, 0x0
    stb 0, 0x226(4)
    bl OSSetProgressiveMode
    li 0, 0x0
    sth 0, 0x74(31)
L_803A3A7C:
    lbz 0, 0x238(30)
    cmplwi 0, 0xff
    .4byte 0x408201E8 # bne .L_803A3C6C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x249(3)
    cmplwi 0, 0x0
    .4byte 0x418201A4 # beq .L_803A3C3C
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_803A3AD4
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_803A3B38
L_803A3AD4:
    lha 0, 0x82(31)
    cmpwi 0, 0x0
    .4byte 0x4181005C # bgt .L_803A3B38
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, 0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_803A3B38
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    li 0, 0x2
    li 4, 0x3c
    stw 0, 0x154(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
    lis 3, lbl_80529DEC@ha
    li 4, 0x3c
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x3
    stw 4, 0x1a0(3)
    sth 0, 0x6e(31)
    .4byte 0x48000414 # b .L_803A3F48
L_803A3B38:
    lwz 4, 0x60(31)
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    addi 0, 4, 0x1
    stw 0, 0x60(31)
    lha 3, 0x236(3)
    lwz 4, 0x60(31)
    addi 0, 3, 0x1d10
    cmpw 4, 0
    .4byte 0x40820014 # bne .L_803A3B70
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    .4byte 0x480003DC # b .L_803A3F48
L_803A3B70:
    addi 0, 3, 0x1d4c
    cmpw 4, 0
    .4byte 0x418003D0 # blt .L_803A3F48
    lwz 3, 0x48(31)
    lwz 4, 0x58(31)
    bl fn_80427DB4
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_803A3B9C
    li 0, 0x1
    sth 0, 0x6c(31)
    .4byte 0x480003B0 # b .L_803A3F48
L_803A3B9C:
    lwz 3, 0x48(31)
    bl fn_80427D94
    lha 0, 0x6c(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_803A3BBC
    li 0, 0x0
    stw 0, 0x58(31)
    .4byte 0x48000024 # b .L_803A3BDC
L_803A3BBC:
    lwz 3, 0x58(31)
    addi 0, 3, 0x1
    stw 0, 0x58(31)
    lwz 0, 0x58(31)
    cmpwi 0, 0x2
    .4byte 0x4180000C # blt .L_803A3BDC
    li 0, 0x0
    stw 0, 0x58(31)
L_803A3BDC:
    li 0, 0x0
    sth 0, 0x6c(31)
    sth 0, 0x7a(31)
    sth 0, 0x7e(31)
    stb 0, 0x14d(31)
    stw 0, 0x5c(31)
    sth 0, 0x7c(31)
    sth 0, 0x80(31)
    stw 0, 0x60(31)
    stw 0, 0x64(31)
    lha 0, 0x6e(31)
    cmpwi 0, 0x3
    .4byte 0x4182033C # beq .L_803A3F48
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x6
    .4byte 0x41820328 # beq .L_803A3F48
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x6
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000310 # b .L_803A3F48
L_803A3C3C:
    lwz 3, 0x48(31)
    li 4, 0x3
    bl fn_80427DB4
    cmpwi 3, 0x0
    .4byte 0x418202FC # beq .L_803A3F48
    lis 3, lbl_80529DEC@ha
    li 4, 0x0
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x2
    stb 4, 0x250(3)
    sth 0, 0x6c(31)
    .4byte 0x480002E0 # b .L_803A3F48
L_803A3C6C:
    cmplwi 0, 0xb
    .4byte 0x418102D8 # bgt .L_803A3F48
    lis 3, jumptable_804AF82C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF82C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 2, 0x50(31)
    .4byte 0xC0220350 # lfs f1, lbl_805432F0@sda21(r0)
    .4byte 0xC0020354 # lfs f0, lbl_805432F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x50(31)
    lfs 1, 0x50(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082029C # bne .L_803A3F48
    stfs 0, 0x50(31)
    li 0, 0x3
    stb 0, 0x238(30)
    .4byte 0x4800028C # b .L_803A3F48
    lha 4, 0x74(31)
    li 3, 0x0
    addi 0, 4, 0x1
    sth 0, 0x74(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_803A3CF8
    lha 0, 0x74(31)
    cmpwi 0, 0x258
    .4byte 0x41800010 # blt .L_803A3D04
L_803A3CF8:
    li 0, 0x4
    stb 0, 0x238(30)
    .4byte 0x48000068 # b .L_803A3D68
L_803A3D04:
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803A3D38
    li 3, 0x1
    li 0, 0x1e
    stb 3, 0x14c(31)
    sth 0, 0x72(31)
    .4byte 0x48000034 # b .L_803A3D68
L_803A3D38:
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_803A3D68
    li 3, 0x0
    li 0, 0x1e
    stb 3, 0x14c(31)
    sth 0, 0x72(31)
L_803A3D68:
    lha 3, 0x72(31)
    addi 0, 3, 0x1
    sth 0, 0x72(31)
    lha 0, 0x72(31)
    cmpwi 0, 0x3c
    .4byte 0x408101CC # ble .L_803A3F48
    li 0, 0x0
    sth 0, 0x72(31)
    .4byte 0x480001C0 # b .L_803A3F48
    lha 0, 0x6e(31)
    cmpwi 0, 0x2
    .4byte 0x408201B4 # bne .L_803A3F48
    lfs 2, 0x50(31)
    .4byte 0xC0220350 # lfs f1, lbl_805432F0@sda21(r0)
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x50(31)
    lfs 1, 0x50(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820190 # bne .L_803A3F48
    stfs 0, 0x50(31)
    lbz 0, 0x14c(31)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_803A3E08
    li 0, 0x0
    sth 0, 0x72(31)
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x40820018 # bne .L_803A3DF4
    li 0, 0x6
    li 3, 0x1
    stb 0, 0x238(30)
    bl OSSetProgressiveMode
    .4byte 0x48000158 # b .L_803A3F48
L_803A3DF4:
    li 0, 0x5
    li 3, 0x1
    stb 0, 0x238(30)
    bl OSSetProgressiveMode
    .4byte 0x48000144 # b .L_803A3F48
L_803A3E08:
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x40820020 # bne .L_803A3E30
    li 3, 0x9
    li 0, 0x0
    stb 3, 0x238(30)
    li 3, 0x0
    sth 0, 0x6e(31)
    bl OSSetProgressiveMode
    .4byte 0x4800011C # b .L_803A3F48
L_803A3E30:
    li 3, 0x9
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x6e(31)
    .4byte 0x48000108 # b .L_803A3F48
    li 0, 0x7
    stb 0, 0x238(30)
    .4byte 0x480000FC # b .L_803A3F48
    li 0, 0x8
    stb 0, 0x238(30)
    .4byte 0x480000F0 # b .L_803A3F48
    lha 5, 0x72(31)
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    addi 0, 5, 0x1
    sth 0, 0x72(31)
    lbz 0, 0x251(4)
    cmplwi 0, 0x5a
    .4byte 0x408100D0 # ble .L_803A3F48
    lha 0, 0x72(31)
    cmpwi 0, 0x5a
    .4byte 0x418000C4 # blt .L_803A3F48
    li 3, 0x9
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x6e(31)
    stb 0, 0x251(4)
    .4byte 0x480000AC # b .L_803A3F48
    lfs 2, 0x50(31)
    .4byte 0xC0220350 # lfs f1, lbl_805432F0@sda21(r0)
    .4byte 0xC0020354 # lfs f0, lbl_805432F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x50(31)
    lfs 1, 0x50(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820088 # bne .L_803A3F48
    stfs 0, 0x50(31)
    li 3, 0xa
    li 0, 0x0
    stb 3, 0x238(30)
    sth 0, 0x72(31)
    .4byte 0x48000070 # b .L_803A3F48
    lha 3, 0x72(31)
    addi 0, 3, 0x1
    sth 0, 0x72(31)
    lha 0, 0x72(31)
    cmpwi 0, 0x78
    .4byte 0x41800058 # blt .L_803A3F48
    .4byte 0xC002033C # lfs f0, lbl_805432DC@sda21(r0)
    li 0, 0xb
    stfs 0, 0x50(31)
    stb 0, 0x238(30)
    .4byte 0x48000044 # b .L_803A3F48
    lfs 2, 0x50(31)
    .4byte 0xC0220350 # lfs f1, lbl_805432F0@sda21(r0)
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x50(31)
    lfs 1, 0x50(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820020 # bne .L_803A3F48
    lis 3, lbl_80529DEC@ha
    stfs 0, 0x50(31)
    li 4, 0xff
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 4, 0x238(30)
    stb 0, 0x226(3)
L_803A3F48:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x238(3)
    cmplwi 0, 0xff
    .4byte 0x408204B8 # bne .L_803A4410
    lwz 3, 0x5c(31)
    addi 0, 3, 0x1
    stw 0, 0x5c(31)
    lwz 0, 0x5c(31)
    cmpwi 0, 0x1
    .4byte 0x4082010C # bne .L_803A407C
    lwz 0, 0x28(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A3FCC
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0x54
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0x54(1)
    li 5, 0x493
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x58(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x5c(1)
    bl fn_8013CC50
    stw 3, 0x28(31)
    lwz 3, 0x28(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A3FCC:
    lwz 0, 0x2c(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A4024
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0x48
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0x48(1)
    li 5, 0x494
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x4c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x50(1)
    bl fn_8013CC50
    stw 3, 0x2c(31)
    lwz 3, 0x2c(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A4024:
    lwz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A407C
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0x3c
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0x3c(1)
    li 5, 0x495
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x40(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x44(1)
    bl fn_8013CC50
    stw 3, 0x30(31)
    lwz 3, 0x30(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A407C:
    lha 0, 0x6c(31)
    cmpwi 0, 0x0
    .4byte 0x41820080 # beq .L_803A4104
    mr 29, 31
    li 30, 0x0
    li 28, 0x0
L_803A4094:
    lwz 0, 0x28(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803A40B4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x28(29)
    bl fn_800EC240
    stw 28, 0x28(29)
L_803A40B4:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180FFD4 # blt .L_803A4094
    mr 29, 31
    li 30, 0x0
    li 28, 0x0
L_803A40D0:
    lwz 0, 0x34(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803A40F0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x34(29)
    bl fn_800EC240
    stw 28, 0x34(29)
L_803A40F0:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_803A40D0
    .4byte 0x48000310 # b .L_803A4410
L_803A4104:
    lwz 3, 0x5c(31)
    cmpwi 3, 0x37
    .4byte 0x41800220 # blt .L_803A432C
    subic. 28, 3, 0x37
    .4byte 0x40820164 # bne .L_803A4278
    lwz 0, 0x34(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A4170
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0x30
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0x30(1)
    li 5, 0x490
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x34(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x38(1)
    bl fn_8013CC50
    stw 3, 0x34(31)
    lwz 3, 0x34(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A4170:
    lwz 0, 0x38(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A41C8
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0x24
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0x24(1)
    li 5, 0x48f
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x28(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x2c(1)
    bl fn_8013CC50
    stw 3, 0x38(31)
    lwz 3, 0x38(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A41C8:
    lwz 0, 0x3c(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A4220
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0x18
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0x18(1)
    li 5, 0x492
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x1c(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x20(1)
    bl fn_8013CC50
    stw 3, 0x3c(31)
    lwz 3, 0x3c(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A4220:
    lwz 0, 0x40(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803A4278
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    addi 4, 1, 0xc
    .4byte 0xC0220344 # lfs f1, lbl_805432E4@sda21(r0)
    li 3, 0x0
    stfs 0, 0xc(1)
    li 5, 0x491
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x10(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x14(1)
    bl fn_8013CC50
    stw 3, 0x40(31)
    lwz 3, 0x40(31)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803A4278:
    lwz 4, 0x24(31)
    lha 0, 0x6(4)
    cmpw 28, 0
    .4byte 0x40800028 # bge .L_803A42AC
    xoris 3, 28, 0x8000
    lis 0, 0x4330
    stw 3, 0x74(1)
    .4byte 0xC8220348 # lfd f1, lbl_805432E8@sda21(r0)
    stw 0, 0x70(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
    .4byte 0x48000090 # b .L_803A4338
L_803A42AC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020344 # lfs f0, lbl_805432E4@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0420358 # lfs f2, lbl_805432F8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lwz 3, 0x24(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    lha 3, 0x6(3)
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x70(1)
    lwz 0, 0x74(1)
    add 3, 0, 3
    addi 0, 3, 0x190
    cmpw 28, 0
    .4byte 0x4180000C # blt .L_803A431C
    li 0, 0x0
    stw 0, 0x5c(31)
L_803A431C:
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    lwz 3, 0x24(31)
    stfs 0, 0x8(3)
    .4byte 0x48000010 # b .L_803A4338
L_803A432C:
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    lwz 3, 0x24(31)
    stfs 0, 0x8(3)
L_803A4338:
    lwz 3, 0x4(31)
    bl fn_8009DB58
    li 29, 0x0
    mr 28, 31
L_803A4348:
    lwz 5, 0x28(28)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_803A4398
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_803A4378
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_803A4378
    li 4, 0x1
L_803A4378:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_803A4398
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x28(28)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x28(28)
L_803A4398:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFA4 # blt .L_803A4348
    li 29, 0x0
    mr 28, 31
L_803A43B0:
    lwz 5, 0x34(28)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_803A4400
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_803A43E0
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_803A43E0
    li 4, 0x1
L_803A43E0:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_803A4400
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x34(28)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x34(28)
L_803A4400:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFA4 # blt .L_803A43B0
L_803A4410:
    lwz 5, 0x44(31)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_803A4460
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_803A4440
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_803A4440
    li 4, 0x1
L_803A4440:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_803A4460
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x44(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x44(31)
L_803A4460:
    lbz 0, 0x150(31)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803A44A8
    lha 3, 0x6a(31)
    addi 0, 3, 0x1
    sth 0, 0x6a(31)
    lha 0, 0x6a(31)
    cmpwi 0, 0x9a
    .4byte 0x41800028 # blt .L_803A44A8
    lha 3, 0x68(31)
    subi 0, 3, 0xa
    sth 0, 0x68(31)
    lha 0, 0x68(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_803A44A8
    li 0, 0x0
    sth 0, 0x68(31)
    stb 0, 0x150(31)
L_803A44A8:
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x250(3)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    lwz 28, 0x80(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_803A44D8:
    stwu 1, -0x1d0(1)
    mflr 0
    stw 0, 0x1d4(1)
    stfd 31, 0x1c0(1)
    psq_st 31, 0x1c8(1), 0, 0
    stfd 30, 0x1b0(1)
    psq_st 30, 0x1b8(1), 0, 0
    stfd 29, 0x1a0(1)
    psq_st 29, 0x1a8(1), 0, 0
    stfd 28, 0x190(1)
    psq_st 28, 0x198(1), 0, 0
    stfd 27, 0x180(1)
    psq_st 27, 0x188(1), 0, 0
    stfd 26, 0x170(1)
    psq_st 26, 0x178(1), 0, 0
    stfd 25, 0x160(1)
    psq_st 25, 0x168(1), 0, 0
    stfd 24, 0x150(1)
    psq_st 24, 0x158(1), 0, 0
    stmw 27, 0x13c(1)
    li 5, 0x0
    lis 4, lbl_80529DEC@ha
    stb 5, 0x50(1)
    addi 4, 4, lbl_80529DEC@l
    .4byte 0x80CD8E88 # lwz r6, lbl_8053AA48@sda21(r0)
    mr 31, 3
    stb 5, 0x51(1)
    .4byte 0xC3E20340 # lfs f31, lbl_805432E0@sda21(r0)
    stb 5, 0x52(1)
    stb 5, 0x53(1)
    lwz 0, 0x50(1)
    stw 0, 0x54(1)
    lbz 3, 0x54(1)
    lbz 0, 0x55(1)
    stb 3, 0x8(6)
    lbz 3, 0x56(1)
    stb 0, 0x9(6)
    lbz 0, 0x57(1)
    stb 3, 0xa(6)
    stb 0, 0xb(6)
    lwz 3, 0x1a0(4)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_803A4590
    subi 0, 3, 0x1
    stw 0, 0x1a0(4)
    .4byte 0x48000008 # b .L_803A4594
L_803A4590:
    stw 5, 0x1a0(4)
L_803A4594:
    lha 0, 0x6c(31)
    cmpwi 0, 0x0
    .4byte 0x418202E8 # beq .L_803A4884
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B438
    lwz 3, 0x48(31)
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_80427D2C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x249(3)
    cmplwi 0, 0x0
    .4byte 0x41820D5C # beq .L_803A532C
    lha 0, 0x80(31)
    cmpwi 0, 0x0
    .4byte 0x41820D50 # beq .L_803A532C
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_803A4618
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_803A46F0
L_803A4618:
    lha 0, 0x82(31)
    cmpwi 0, 0x0
    .4byte 0x408200D0 # bne .L_803A46F0
    lis 4, lbl_8050DB0C@ha
    lha 3, 0x7c(31)
    addi 4, 4, lbl_8050DB0C@l
    lha 6, 0x29c(4)
    addi 0, 3, 0x1
    lha 5, 0x29e(4)
    slwi 4, 6, 1
    sth 0, 0x7c(31)
    lha 3, 0x7c(31)
    cmpw 3, 4
    .4byte 0x4181008C # bgt .L_803A46D8
    cmpw 3, 6
    subf 5, 6, 3
    .4byte 0x40800008 # bge .L_803A4660
    subf 5, 3, 6
L_803A4660:
    lis 3, lbl_8050DB0C@ha
    lis 4, 0x4330
    addi 3, 3, lbl_8050DB0C@l
    stw 4, 0xf8(1)
    lha 0, 0x2a0(3)
    mullw 3, 5, 5
    .4byte 0xC8620348 # lfd f3, lbl_805432E8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC0020354 # lfs f0, lbl_805432F4@sda21(r0)
    stw 0, 0xfc(1)
    .4byte 0xC0420344 # lfs f2, lbl_805432E4@sda21(r0)
    lfd 1, 0xf8(1)
    mullw 0, 6, 6
    xoris 3, 3, 0x8000
    stw 4, 0x100(1)
    fsubs 1, 1, 3
    stw 3, 0x104(1)
    fdivs 4, 1, 0
    xoris 0, 0, 0x8000
    lfd 1, 0x100(1)
    stw 0, 0x10c(1)
    stw 4, 0x108(1)
    lfd 0, 0x108(1)
    fsubs 2, 2, 4
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    fmuls 1, 2, 1
    fdivs 0, 1, 0
    fadds 31, 4, 0
    .4byte 0x4800001C # b .L_803A46F0
L_803A46D8:
    add 0, 5, 4
    .4byte 0xC3E20344 # lfs f31, lbl_805432E4@sda21(r0)
    cmpw 3, 0
    .4byte 0x4180000C # blt .L_803A46F0
    li 0, 0x0
    sth 0, 0x7c(31)
L_803A46F0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0x4(31)
    lis 4, 0x506e
    addi 6, 4, 0x7464
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x4c(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x108(1)
    lwz 4, 0x10c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x676f
    lis 4, 0x5074
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6c6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x676f
    lis 4, 0x5074
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 12, 0x0(3)
    addi 6, 5, 0x7431
    addi 5, 4, 0x7373
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x14e(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x104(1)
    .4byte 0xC82203A8 # lfd f1, lbl_80543348@sda21(r0)
    stw 0, 0x100(1)
    lwz 12, 0x24(12)
    lfd 0, 0x100(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 12, 0x0(3)
    addi 6, 5, 0x7432
    addi 5, 4, 0x7373
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x14f(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x114(1)
    .4byte 0xC82203A8 # lfd f1, lbl_80543348@sda21(r0)
    stw 0, 0x110(1)
    lwz 12, 0x24(12)
    lfd 0, 0x110(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x118(1)
    lwz 4, 0x11c(1)
    mtctr 12
    bctrl
    .4byte 0xC0220340 # lfs f1, lbl_805432E0@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x48000AAC # b .L_803A532C
L_803A4884:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 4, 0x238(3)
    cmplwi 4, 0xff
    .4byte 0x408204BC # bne .L_803A4D58
    lbz 0, 0x249(3)
    cmplwi 0, 0x0
    .4byte 0x418204B0 # beq .L_803A4D58
    lwz 0, 0x154(31)
    cmpwi 0, 0x1
    .4byte 0x40820160 # bne .L_803A4A14
    .4byte 0xC002035C # lfs f0, lbl_805432FC@sda21(r0)
    stfs 0, 0x58(1)
    stfs 0, 0x5c(1)
    stfs 0, 0x60(1)
    bl fn_8013C824
    lwz 29, 0xc(3)
    addi 3, 1, 0x94
    bl PSMTXIdentity
    addi 28, 1, 0xc4
    mr 3, 28
    bl PSMTXIdentity
    addi 3, 1, 0x64
    bl PSMTXIdentity
    addi 3, 1, 0x64
    bl fn_8013AC54
    addi 3, 1, 0x64
    addi 4, 1, 0x94
    bl PSMTXCopy
    .4byte 0xC0A20338 # lfs f5, lbl_805432D8@sda21(r0)
    mr 3, 28
    .4byte 0xC0420340 # lfs f2, lbl_805432E0@sda21(r0)
    fmr 6, 5
    .4byte 0xC0220360 # lfs f1, lbl_80543300@sda21(r0)
    fmr 3, 2
    .4byte 0xC0820364 # lfs f4, lbl_80543304@sda21(r0)
    fmr 7, 5
    fmr 8, 5
    bl C_MTXLightOrtho
    addi 3, 31, 0x11c
    addi 0, 31, 0x134
    stw 3, 0x8(1)
    addi 3, 1, 0x64
    .4byte 0xC022035C # lfs f1, lbl_805432FC@sda21(r0)
    addi 7, 31, 0x90
    stw 0, 0xc(1)
    addi 8, 31, 0x84
    addi 9, 31, 0x88
    addi 10, 31, 0x8c
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 5, 0x1
    li 6, 0x1
    lwz 4, 0x5c(4)
    bl fn_8016D398
    .4byte 0xC3020344 # lfs f24, lbl_805432E4@sda21(r0)
    mr 28, 31
    .4byte 0xC3220340 # lfs f25, lbl_805432E0@sda21(r0)
    li 27, 0x0
    .4byte 0xC3420368 # lfs f26, lbl_80543308@sda21(r0)
    lis 30, 0x4330
    .4byte 0xC362036C # lfs f27, lbl_8054330C@sda21(r0)
    .4byte 0xC3820374 # lfs f28, lbl_80543314@sda21(r0)
    .4byte 0xCBA20348 # lfd f29, lbl_805432E8@sda21(r0)
    .4byte 0xC3C20370 # lfs f30, lbl_80543310@sda21(r0)
L_803A498C:
    xoris 0, 27, 0x8000
    lwz 3, 0x104(28)
    stw 0, 0x11c(1)
    addi 4, 1, 0x58
    addi 5, 1, 0x64
    stw 30, 0x118(1)
    lfd 0, 0x118(1)
    stfs 24, 0x64(1)
    fsubs 0, 0, 29
    stfs 25, 0x68(1)
    fnmsubs 0, 28, 0, 30
    stfs 25, 0x6c(1)
    stfs 26, 0x70(1)
    stfs 25, 0x74(1)
    stfs 25, 0x78(1)
    stfs 24, 0x7c(1)
    stfs 27, 0x80(1)
    stfs 25, 0x84(1)
    stfs 24, 0x88(1)
    stfs 25, 0x8c(1)
    stfs 0, 0x90(1)
    bl fn_8013ABCC
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x6
    .4byte 0x4180FF9C # blt .L_803A498C
    bl fn_8013AB2C
    mr 3, 29
    li 4, 0x0
    bl fn_800EBEF8
    mr 3, 29
    addi 4, 1, 0x94
    li 5, 0x0
    bl fn_800EBF88
L_803A4A14:
    lbz 0, 0x150(31)
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_803A4A74
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0x20(31)
    lha 0, 0x68(31)
    lwz 12, 0x0(3)
    clrlwi 4, 0, 24
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x20(31)
    li 4, 0x0
    .4byte 0xC0220378 # lfs f1, lbl_80543318@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC062037C # lfs f3, lbl_8054331C@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC0820380 # lfs f4, lbl_80543320@sda21(r0)
    mtctr 12
    bctrl
L_803A4A74:
    lha 0, 0x6e(31)
    cmpwi 0, 0x1
    .4byte 0x40820114 # bne .L_803A4B90
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_803A4AB8
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsSlotFlagged
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_803A4B90
L_803A4AB8:
    lha 0, 0x82(31)
    cmpwi 0, 0x0
    .4byte 0x408200D0 # bne .L_803A4B90
    lis 4, lbl_8050DB0C@ha
    lha 3, 0x7c(31)
    addi 4, 4, lbl_8050DB0C@l
    lha 6, 0x29c(4)
    addi 0, 3, 0x1
    lha 5, 0x29e(4)
    slwi 4, 6, 1
    sth 0, 0x7c(31)
    lha 3, 0x7c(31)
    cmpw 3, 4
    .4byte 0x4181008C # bgt .L_803A4B78
    cmpw 3, 6
    subf 5, 6, 3
    .4byte 0x40800008 # bge .L_803A4B00
    subf 5, 3, 6
L_803A4B00:
    lis 3, lbl_8050DB0C@ha
    lis 4, 0x4330
    addi 3, 3, lbl_8050DB0C@l
    stw 4, 0x118(1)
    lha 0, 0x2a0(3)
    mullw 3, 5, 5
    .4byte 0xC8620348 # lfd f3, lbl_805432E8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC0020354 # lfs f0, lbl_805432F4@sda21(r0)
    stw 0, 0x11c(1)
    .4byte 0xC0420344 # lfs f2, lbl_805432E4@sda21(r0)
    lfd 1, 0x118(1)
    mullw 0, 6, 6
    xoris 3, 3, 0x8000
    stw 4, 0x110(1)
    fsubs 1, 1, 3
    stw 3, 0x114(1)
    fdivs 4, 1, 0
    xoris 0, 0, 0x8000
    lfd 1, 0x110(1)
    stw 0, 0x10c(1)
    stw 4, 0x108(1)
    lfd 0, 0x108(1)
    fsubs 2, 2, 4
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    fmuls 1, 2, 1
    fdivs 0, 1, 0
    fadds 31, 4, 0
    .4byte 0x4800001C # b .L_803A4B90
L_803A4B78:
    add 0, 5, 4
    .4byte 0xC3E20344 # lfs f31, lbl_805432E4@sda21(r0)
    cmpw 3, 0
    .4byte 0x4180000C # blt .L_803A4B90
    li 0, 0x0
    sth 0, 0x7c(31)
L_803A4B90:
    lwz 3, 0x4(31)
    lis 4, 0x506e
    addi 6, 4, 0x7464
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x4c(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x118(1)
    lwz 4, 0x11c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x676f
    lis 4, 0x5074
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6c6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x4c(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x110(1)
    lwz 4, 0x114(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x676f
    lis 4, 0x5074
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x4c(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x108(1)
    lwz 4, 0x10c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 12, 0x0(3)
    addi 6, 5, 0x7431
    addi 5, 4, 0x7373
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x14e(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x104(1)
    .4byte 0xC82203A8 # lfd f1, lbl_80543348@sda21(r0)
    stw 0, 0x100(1)
    lwz 12, 0x24(12)
    lfd 0, 0x100(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 12, 0x0(3)
    addi 6, 5, 0x7432
    addi 5, 4, 0x7373
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x14f(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x124(1)
    .4byte 0xC82203A8 # lfd f1, lbl_80543348@sda21(r0)
    stw 0, 0x120(1)
    lwz 12, 0x24(12)
    lfd 0, 0x120(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x128(1)
    lwz 4, 0x12c(1)
    mtctr 12
    bctrl
    .4byte 0xC0220340 # lfs f1, lbl_805432E0@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lha 3, 0x82(31)
    cmpwi 3, 0x0
    .4byte 0x408105F4 # ble .L_803A532C
    .4byte 0xC0220354 # lfs f1, lbl_805432F4@sda21(r0)
    lfs 0, 0x4c(31)
    fcmpu cr0, 1, 0
    .4byte 0x408205E4 # bne .L_803A532C
    subi 0, 3, 0x1
    sth 0, 0x82(31)
    .4byte 0x480005D8 # b .L_803A532C
L_803A4D58:
    cmpwi 4, 0x9
    .4byte 0x41820330 # beq .L_803A508C
    .4byte 0x40800024 # bge .L_803A4D84
    cmpwi 4, 0x5
    .4byte 0x40800010 # bge .L_803A4D78
    cmpwi 4, 0x2
    .4byte 0x40800020 # bge .L_803A4D90
    .4byte 0x480003D8 # b .L_803A514C
L_803A4D78:
    cmpwi 4, 0x7
    .4byte 0x408003D0 # bge .L_803A514C
    .4byte 0x480002F0 # b .L_803A5070
L_803A4D84:
    cmpwi 4, 0xc
    .4byte 0x408003C4 # bge .L_803A514C
    .4byte 0x48000314 # b .L_803A50A0
L_803A4D90:
    lfs 0, 0x50(31)
    lwz 3, 0xc(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x128(1)
    lwz 12, 0x24(12)
    lwz 4, 0x12c(1)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    li 4, 0x0
    .4byte 0xC0220384 # lfs f1, lbl_80543324@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420388 # lfs f2, lbl_80543328@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    lha 0, 0x72(31)
    cmpwi 0, 0x1e
    .4byte 0x4080002C # bge .L_803A4E10
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x124(1)
    .4byte 0xC8420348 # lfd f2, lbl_805432E8@sda21(r0)
    stw 0, 0x120(1)
    .4byte 0xC002038C # lfs f0, lbl_8054332C@sda21(r0)
    lfd 1, 0x120(1)
    fsubs 1, 1, 2
    fdivs 2, 1, 0
    .4byte 0x48000030 # b .L_803A4E3C
L_803A4E10:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x11c(1)
    .4byte 0xC8420348 # lfd f2, lbl_805432E8@sda21(r0)
    stw 0, 0x118(1)
    .4byte 0xC0620390 # lfs f3, lbl_80543330@sda21(r0)
    lfd 1, 0x118(1)
    .4byte 0xC002038C # lfs f0, lbl_8054332C@sda21(r0)
    fsubs 1, 1, 2
    fsubs 1, 3, 1
    fdivs 2, 1, 0
L_803A4E3C:
    .4byte 0xC0220354 # lfs f1, lbl_805432F4@sda21(r0)
    .4byte 0xC0020358 # lfs f0, lbl_805432F8@sda21(r0)
    fmuls 1, 1, 2
    lbz 0, 0x14c(31)
    fmuls 0, 0, 2
    cmplwi 0, 0x0
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x110(1)
    stfd 0, 0x108(1)
    lwz 27, 0x114(1)
    lwz 28, 0x10c(1)
    .4byte 0x408200B8 # bne .L_803A4F24
    li 0, 0x0
    li 6, 0xff
    li 3, 0xc8
    stb 6, 0x40(1)
    addi 4, 1, 0x4c
    addi 5, 1, 0x44
    stb 3, 0x41(1)
    stb 0, 0x42(1)
    stb 6, 0x43(1)
    lwz 3, 0x40(1)
    stb 27, 0x48(1)
    stb 28, 0x49(1)
    stb 0, 0x4a(1)
    stb 0, 0x4b(1)
    lwz 0, 0x48(1)
    stw 3, 0x44(1)
    stw 0, 0x4c(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 6, 0xa0
    li 3, 0xff
    stb 6, 0x30(1)
    addi 4, 1, 0x3c
    addi 5, 1, 0x34
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 3, 0x33(1)
    lwz 3, 0x30(1)
    stb 0, 0x38(1)
    stb 0, 0x39(1)
    stb 0, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 0, 0x38(1)
    stw 3, 0x34(1)
    stw 0, 0x3c(1)
    lwz 3, 0x1c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x480000B4 # b .L_803A4FD4
L_803A4F24:
    li 0, 0x0
    li 6, 0xa0
    li 3, 0xff
    stb 6, 0x20(1)
    addi 4, 1, 0x2c
    addi 5, 1, 0x24
    stb 6, 0x21(1)
    stb 6, 0x22(1)
    stb 3, 0x23(1)
    lwz 3, 0x20(1)
    stb 0, 0x28(1)
    stb 0, 0x29(1)
    stb 0, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stw 3, 0x24(1)
    stw 0, 0x2c(1)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 0, 0x0
    li 6, 0xff
    li 3, 0xc8
    stb 6, 0x10(1)
    addi 4, 1, 0x1c
    addi 5, 1, 0x14
    stb 3, 0x11(1)
    stb 0, 0x12(1)
    stb 6, 0x13(1)
    lwz 3, 0x10(1)
    stb 27, 0x18(1)
    stb 28, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 3, 0x14(1)
    stw 0, 0x1c(1)
    lwz 3, 0x1c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
L_803A4FD4:
    lfs 0, 0x50(31)
    lwz 3, 0x18(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x128(1)
    lwz 12, 0x24(12)
    lwz 4, 0x12c(1)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    li 4, 0x0
    .4byte 0xC0220394 # lfs f1, lbl_80543334@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420398 # lfs f2, lbl_80543338@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    lfs 0, 0x50(31)
    lwz 3, 0x1c(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x120(1)
    lwz 12, 0x24(12)
    lwz 4, 0x124(1)
    mtctr 12
    bctrl
    lwz 3, 0x1c(31)
    li 4, 0x0
    .4byte 0xC022039C # lfs f1, lbl_8054333C@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420398 # lfs f2, lbl_80543338@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x480002C0 # b .L_803A532C
L_803A5070:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013AB00
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x251(3)
    .4byte 0x480002A4 # b .L_803A532C
L_803A508C:
    bl OSGetProgressiveMode
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_803A50A0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013AAD4
L_803A50A0:
    lbz 0, 0x14c(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_803A50FC
    lfs 0, 0x50(31)
    lwz 3, 0x14(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x128(1)
    lwz 12, 0x24(12)
    lwz 4, 0x12c(1)
    mtctr 12
    bctrl
    lwz 3, 0x14(31)
    li 4, 0x0
    .4byte 0xC02203A0 # lfs f1, lbl_80543340@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC04203A4 # lfs f2, lbl_80543344@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x48000234 # b .L_803A532C
L_803A50FC:
    lfs 0, 0x50(31)
    lwz 3, 0x10(31)
    fctiwz 0, 0
    lwz 12, 0x0(3)
    stfd 0, 0x128(1)
    lwz 12, 0x24(12)
    lwz 4, 0x12c(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    li 4, 0x0
    .4byte 0xC02203A0 # lfs f1, lbl_80543340@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC04203A4 # lfs f2, lbl_80543344@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x480001E4 # b .L_803A532C
L_803A514C:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x249(3)
    cmplwi 0, 0x0
    .4byte 0x418201D0 # beq .L_803A532C
    lwz 3, 0x4(31)
    lis 4, 0x506e
    addi 6, 4, 0x7464
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x4c(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x128(1)
    lwz 4, 0x12c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x676f
    lis 4, 0x5074
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6c6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x4c(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x120(1)
    lwz 4, 0x124(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x676f
    lis 4, 0x5074
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x4c(31)
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x118(1)
    lwz 4, 0x11c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 12, 0x0(3)
    addi 6, 5, 0x7431
    addi 5, 4, 0x7373
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x14e(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x114(1)
    .4byte 0xC84203A8 # lfd f2, lbl_80543348@sda21(r0)
    stw 0, 0x110(1)
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    lfd 1, 0x110(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x108(1)
    lwz 4, 0x10c(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7472
    lis 4, 0x7072
    lwz 12, 0x0(3)
    addi 6, 5, 0x7432
    addi 5, 4, 0x7373
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x14f(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x104(1)
    .4byte 0xC84203A8 # lfd f2, lbl_80543348@sda21(r0)
    stw 0, 0x100(1)
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    lfd 1, 0x100(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xf8(1)
    lwz 4, 0xfc(1)
    mtctr 12
    bctrl
    .4byte 0xC0220340 # lfs f1, lbl_805432E0@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lha 3, 0x82(31)
    cmpwi 3, 0x0
    .4byte 0x4081001C # ble .L_803A532C
    .4byte 0xC0220354 # lfs f1, lbl_805432F4@sda21(r0)
    lfs 0, 0x4c(31)
    fcmpu cr0, 1, 0
    .4byte 0x4082000C # bne .L_803A532C
    subi 0, 3, 0x1
    sth 0, 0x82(31)
L_803A532C:
    psq_l 31, 0x1c8(1), 0, 0
    lfd 31, 0x1c0(1)
    psq_l 30, 0x1b8(1), 0, 0
    lfd 30, 0x1b0(1)
    psq_l 29, 0x1a8(1), 0, 0
    lfd 29, 0x1a0(1)
    psq_l 28, 0x198(1), 0, 0
    lfd 28, 0x190(1)
    psq_l 27, 0x188(1), 0, 0
    lfd 27, 0x180(1)
    psq_l 26, 0x178(1), 0, 0
    lfd 26, 0x170(1)
    psq_l 25, 0x168(1), 0, 0
    lfd 25, 0x160(1)
    psq_l 24, 0x158(1), 0, 0
    lfd 24, 0x150(1)
    lmw 27, 0x13c(1)
    lwz 0, 0x1d4(1)
    mtlr 0
    addi 1, 1, 0x1d0
    blr

fn_803A5380:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    lis 5, lbl_80475F58@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_80529DEC@l
    stw 31, 0xc(1)
    addi 31, 5, lbl_80475F58@l
    stw 30, 0x8(1)
    mr 30, 3
    lbz 0, 0x242(4)
    cmplwi 0, 0x0
    .4byte 0x40820210 # bne .L_803A55C0
    li 0, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 0, 0x242(4)
    lwz 3, 0x20(3)
    bl fn_802FF798
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0xfc
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x114
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x7000
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x12c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x144
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x4000
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x12c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x154
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x12c
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x2364(3)
L_803A55C0:
    li 0, 0x1
    lis 3, lbl_80529DEC@ha
    stw 0, 0x154(30)
    li 4, 0x0
    .4byte 0xC0020340 # lfs f0, lbl_805432E0@sda21(r0)
    li 0, 0x3c
    stb 4, 0x14c(30)
    addi 31, 3, lbl_80529DEC@l
    stfs 0, 0x50(30)
    stfs 0, 0x4c(30)
    sth 4, 0x6e(30)
    sth 4, 0x72(30)
    sth 4, 0x7a(30)
    sth 4, 0x7e(30)
    stb 4, 0x14d(30)
    sth 4, 0x74(30)
    sth 4, 0x76(30)
    sth 4, 0x78(30)
    stw 4, 0x60(30)
    stw 4, 0x64(30)
    sth 4, 0x6c(30)
    stw 4, 0x5c(30)
    sth 4, 0x7c(30)
    sth 4, 0x80(30)
    sth 0, 0x82(30)
    stw 4, 0x54(30)
    lbz 0, 0x249(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803A563C
    sth 4, 0x68(30)
    .4byte 0x4800000C # b .L_803A5644
L_803A563C:
    li 0, 0xff
    sth 0, 0x68(30)
L_803A5644:
    li 6, 0x0
    li 5, 0x78
    sth 6, 0x6a(30)
    li 4, 0x3c
    li 0, 0x1
    addi 3, 30, 0x90
    stb 6, 0x150(30)
    stw 5, 0x84(30)
    stw 4, 0x88(30)
    stb 0, 0x8c(30)
    bl fn_8016ED88
    lbz 0, 0x249(31)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_803A56AC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x6
    .4byte 0x41820018 # beq .L_803A56A4
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x6
    li 6, 0x0
    bl fn_80458FF0
L_803A56A4:
    li 0, 0x3c
    sth 0, 0x82(30)
L_803A56AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

