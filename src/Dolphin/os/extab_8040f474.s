# 901KB-gap non-actor manager block: 6 functions, 10,196 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800103C4
etb_800103C4:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_800103C4, 8

.global etb_800103CC
etb_800103CC:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_800103CC, 8

.global etb_800103D4
etb_800103D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800103D4, 8

.global etb_800103DC
etb_800103DC:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_800103DC, 8

.global etb_800103E4
etb_800103E4:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800103E4, 8

.section extabindex, "a"
.balign 4
.global eti_8002023C
eti_8002023C:
    .4byte fn_8040F480
    .4byte 0x00001434
    .4byte etb_800103C4
.size eti_8002023C, 12

.global eti_80020248
eti_80020248:
    .4byte fn_804108B4
    .4byte 0x00000910
    .4byte etb_800103CC
.size eti_80020248, 12

.global eti_80020254
eti_80020254:
    .4byte fn_804111C4
    .4byte 0x0000006C
    .4byte etb_800103D4
.size eti_80020254, 12

.global eti_80020260
eti_80020260:
    .4byte fn_80411230
    .4byte 0x00000864
    .4byte etb_800103DC
.size eti_80020260, 12

.global eti_8002026C
eti_8002026C:
    .4byte fn_80411A94
    .4byte 0x000001B4
    .4byte etb_800103E4
.size eti_8002026C, 12

.text
.balign 4
.global fn_8040F474
.global fn_8040F480
.global fn_804108B4
.global fn_804111C4
.global fn_80411230
.global fn_80411A94

fn_8040F474:
    .4byte 0x806D9238 # lwz r3, lbl_8053ADF8@sda21(r0)
    lwz 3, 0x668(3)
    blr

fn_8040F480:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, 0x6
    stmw 25, 0x24(1)
    mr 27, 3
    li 28, 0x0
    stw 0, 0x668(3)
    lis 3, lbl_8048C1F8@ha
    addi 29, 3, lbl_8048C1F8@l
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    bl fn_8042EB24
    bl fn_8037AA58
    lis 3, lbl_80529DEC@ha
    addi 30, 3, lbl_80529DEC@l
    lbz 0, 0x237(30)
    cmpwi 0, 0x7
    .4byte 0x41820084 # beq .L_8040F548
    .4byte 0x40800014 # bge .L_8040F4DC
    cmpwi 0, 0x5
    .4byte 0x41820018 # beq .L_8040F4E8
    .4byte 0x4080005C # bge .L_8040F530
    .4byte 0x48000084 # b .L_8040F55C
L_8040F4DC:
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8040F4E8
    .4byte 0x48000078 # b .L_8040F55C
L_8040F4E8:
    lis 4, lbl_80529DEC@ha
    lis 3, lbl_8050EC80@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x11c(4)
    addi 3, 3, lbl_8050EC80@l
    stw 0, 0x348(27)
    lwz 0, 0x118(4)
    stw 0, 0x340(27)
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 0, 0x85(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4082000C # bne .L_8040F528
    li 28, 0x2
    .4byte 0x48000038 # b .L_8040F55C
L_8040F528:
    li 28, 0x0
    .4byte 0x48000030 # b .L_8040F55C
L_8040F530:
    lwz 0, 0x11c(30)
    li 28, 0x2
    stw 0, 0x348(27)
    lwz 0, 0x118(30)
    stw 0, 0x340(27)
    .4byte 0x48000018 # b .L_8040F55C
L_8040F548:
    lwz 0, 0x11c(30)
    li 28, 0x1
    stw 0, 0x348(27)
    lwz 0, 0x118(30)
    stw 0, 0x340(27)
L_8040F55C:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x23f(3)
    cmplwi 0, 0x0
    .4byte 0x4082006C # bne .L_8040F5D8
    mr 3, 27
    bl fn_80404D70
    lbz 0, 0x237(30)
    cmplwi 0, 0x5
    .4byte 0x408203A8 # bne .L_8040F928
    clrlwi. 0, 28, 24
    .4byte 0x408203A0 # bne .L_8040F928
    li 3, 0x7
    bl fn_803B8EBC
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8040F5A8
    li 0, 0x0
    stw 0, 0x340(27)
    .4byte 0x48000028 # b .L_8040F5CC
L_8040F5A8:
    lwz 0, 0x370(27)
    stw 0, 0x340(27)
    lwz 0, 0x340(27)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8040F5CC
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8040F5CC
    li 0, 0x0
    stw 0, 0x340(27)
L_8040F5CC:
    li 0, 0x0
    stw 0, 0x348(27)
    .4byte 0x48000354 # b .L_8040F928
L_8040F5D8:
    li 0, 0xc
    li 31, 0x1
    stw 0, 0x370(27)
L_8040F5E4:
    cmpwi 31, 0x4
    .4byte 0x418201CC # beq .L_8040F7B4
    .4byte 0x4080001C # bge .L_8040F608
    cmpwi 31, 0x2
    .4byte 0x418200A0 # beq .L_8040F694
    .4byte 0x40800140 # bge .L_8040F738
    cmpwi 31, 0x1
    .4byte 0x40800018 # bge .L_8040F618
    .4byte 0x480002F8 # b .L_8040F8FC
L_8040F608:
    cmpwi 31, 0x6
    .4byte 0x41820278 # beq .L_8040F884
    .4byte 0x408002EC # bge .L_8040F8FC
    .4byte 0x4800021C # b .L_8040F830
L_8040F618:
    lwz 3, 0xc(27)
    lis 4, 0x50
    addi 6, 4, 0x3231
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3232
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3233
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800026C # b .L_8040F8FC
L_8040F694:
    lwz 3, 0xc(27)
    lis 4, 0x50
    addi 6, 4, 0x3331
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3332
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3333
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3334
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480001C8 # b .L_8040F8FC
L_8040F738:
    lwz 3, 0xc(27)
    lis 4, 0x50
    addi 6, 4, 0x3431
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3432
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3433
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800014C # b .L_8040F8FC
L_8040F7B4:
    lwz 3, 0xc(27)
    lis 4, 0x50
    addi 6, 4, 0x3531
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3532
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3533
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480000D0 # b .L_8040F8FC
L_8040F830:
    lwz 3, 0xc(27)
    lis 4, 0x50
    addi 6, 4, 0x3631
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3632
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800007C # b .L_8040F8FC
L_8040F884:
    lwz 3, 0xc(27)
    lis 4, 0x50
    addi 6, 4, 0x3731
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3732
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x50
    stb 0, 0xb0(3)
    addi 6, 4, 0x3733
    li 5, 0x0
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8040F8FC:
    addi 31, 31, 0x1
    cmpwi 31, 0x7
    .4byte 0x4180FCE0 # blt .L_8040F5E4
    lwz 3, 0xcc(27)
    clrlwi 0, 28, 24
    cmplwi 0, 0x2
    li 0, 0x1
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    .4byte 0x40820008 # bne .L_8040F928
    li 28, 0x1
L_8040F928:
    lwz 0, 0x340(27)
    cmpwi 0, 0x8
    .4byte 0x40800028 # bge .L_8040F958
    slwi 0, 0, 2
    addi 3, 29, 0x0
    lwzx 4, 3, 0
    addi 3, 27, 0x438
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x48000080 # b .L_8040F9D4
L_8040F958:
    .4byte 0x40820014 # bne .L_8040F96C
    addi 3, 27, 0x438
    .4byte 0x38820980 # li r4, lbl_80543920@sda21
    bl strcpy
    .4byte 0x4800006C # b .L_8040F9D4
L_8040F96C:
    cmpwi 0, 0x9
    .4byte 0x40820014 # bne .L_8040F984
    addi 3, 27, 0x438
    .4byte 0x38820988 # li r4, lbl_80543928@sda21
    bl strcpy
    .4byte 0x48000054 # b .L_8040F9D4
L_8040F984:
    cmpwi 0, 0xa
    .4byte 0x40820014 # bne .L_8040F99C
    addi 3, 27, 0x438
    .4byte 0x38820990 # li r4, lbl_80543930@sda21
    bl strcpy
    .4byte 0x4800003C # b .L_8040F9D4
L_8040F99C:
    cmpwi 0, 0xb
    .4byte 0x40820014 # bne .L_8040F9B4
    addi 3, 27, 0x438
    .4byte 0x38820994 # li r4, lbl_80543934@sda21
    bl strcpy
    .4byte 0x48000024 # b .L_8040F9D4
L_8040F9B4:
    cmpwi 0, 0xc
    .4byte 0x40820014 # bne .L_8040F9CC
    addi 3, 27, 0x438
    .4byte 0x3882099C # li r4, lbl_8054393C@sda21
    bl strcpy
    .4byte 0x4800000C # b .L_8040F9D4
L_8040F9CC:
    li 0, 0x0
    stb 0, 0x438(27)
L_8040F9D4:
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3131
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3132
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    lwz 0, 0x340(27)
    cmpwi 0, 0x8
    .4byte 0x40800028 # bge .L_8040FA5C
    slwi 0, 0, 2
    addi 3, 29, 0x0
    lwzx 4, 3, 0
    addi 3, 27, 0x438
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x48000080 # b .L_8040FAD8
L_8040FA5C:
    .4byte 0x40820014 # bne .L_8040FA70
    addi 3, 27, 0x438
    .4byte 0x38820980 # li r4, lbl_80543920@sda21
    bl strcpy
    .4byte 0x4800006C # b .L_8040FAD8
L_8040FA70:
    cmpwi 0, 0x9
    .4byte 0x40820014 # bne .L_8040FA88
    addi 3, 27, 0x438
    .4byte 0x38820988 # li r4, lbl_80543928@sda21
    bl strcpy
    .4byte 0x48000054 # b .L_8040FAD8
L_8040FA88:
    cmpwi 0, 0xa
    .4byte 0x40820014 # bne .L_8040FAA0
    addi 3, 27, 0x438
    .4byte 0x38820990 # li r4, lbl_80543930@sda21
    bl strcpy
    .4byte 0x4800003C # b .L_8040FAD8
L_8040FAA0:
    cmpwi 0, 0xb
    .4byte 0x40820014 # bne .L_8040FAB8
    addi 3, 27, 0x438
    .4byte 0x38820994 # li r4, lbl_80543934@sda21
    bl strcpy
    .4byte 0x48000024 # b .L_8040FAD8
L_8040FAB8:
    cmpwi 0, 0xc
    .4byte 0x40820014 # bne .L_8040FAD0
    addi 3, 27, 0x438
    .4byte 0x3882099C # li r4, lbl_8054393C@sda21
    bl strcpy
    .4byte 0x4800000C # b .L_8040FAD8
L_8040FAD0:
    li 0, 0x0
    stb 0, 0x438(27)
L_8040FAD8:
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3133
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3134
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x340(27)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8040FB7C
    lis 3, lbl_8050EC80@ha
    li 4, 0x1
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    slw 4, 4, 5
    clrlwi 4, 4, 24
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 0, 0x7a(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000008 # b .L_8040FB80
L_8040FB7C:
    li 0, 0x0
L_8040FB80:
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8040FBD0
    lwz 0, 0x348(27)
    stw 0, 0x34c(27)
    lwz 0, 0x348(27)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8040FBA4
    li 0, 0x2
    stw 0, 0x34c(27)
L_8040FBA4:
    lwz 0, 0x340(27)
    cmpwi 0, 0x7
    .4byte 0x4082002C # bne .L_8040FBD8
    lwz 3, 0x348(27)
    cmpwi 3, 0x2
    .4byte 0x4182000C # beq .L_8040FBC4
    cmpwi 3, 0x3
    .4byte 0x40820018 # bne .L_8040FBD8
L_8040FBC4:
    subi 0, 3, 0x1
    stw 0, 0x34c(27)
    .4byte 0x4800000C # b .L_8040FBD8
L_8040FBD0:
    lwz 0, 0x348(27)
    stw 0, 0x34c(27)
L_8040FBD8:
    lwz 0, 0x340(27)
    cmpwi 0, 0x8
    .4byte 0x418200B0 # beq .L_8040FC90
    cmpwi 0, 0x9
    .4byte 0x418200A8 # beq .L_8040FC90
    cmpwi 0, 0xa
    .4byte 0x418200A0 # beq .L_8040FC90
    cmpwi 0, 0xb
    .4byte 0x41820098 # beq .L_8040FC90
    cmpwi 0, 0xc
    .4byte 0x41820090 # beq .L_8040FC90
    slwi 0, 0, 2
    addi 3, 29, 0x40
    lwzx 4, 3, 0
    addi 3, 27, 0x564
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x340(27)
    addi 4, 29, 0x60
    addi 3, 27, 0x582
    li 5, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x340(27)
    addi 4, 29, 0x80
    addi 3, 27, 0x5a0
    li 5, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x340(27)
    addi 4, 29, 0xa0
    addi 3, 27, 0x5be
    li 5, 0x0
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    li 7, 0x0
    bl fn_803832BC
L_8040FC90:
    lwz 0, 0x340(27)
    mr 3, 27
    stw 0, 0x344(27)
    bl fn_804083D8
    lis 5, lbl_8050EC80@ha
    li 0, 0x8
    mr 3, 27
    mr 4, 27
    addi 31, 5, lbl_8050EC80@l
    li 5, 0x0
    mtctr 0
L_8040FCBC:
    lwz 0, 0x370(27)
    cmpw 5, 0
    .4byte 0x40810024 # ble .L_8040FCE8
    lwz 6, 0x28(3)
    li 0, 0x0
    lwz 6, 0x4(6)
    stb 0, 0xb0(6)
    lwz 6, 0x208(4)
    lwz 6, 0x4(6)
    stb 0, 0xb0(6)
    .4byte 0x48000068 # b .L_8040FD4C
L_8040FCE8:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(6)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_8040FD30
    lwz 0, 0x10(31)
    lis 6, lbl_8050EC80@ha
    li 8, 0x1
    mulli 7, 0, 0xc8
    addi 0, 6, lbl_8050EC80@l
    slw 8, 8, 5
    add 6, 0, 7
    clrlwi 7, 8, 24
    lbz 0, 0x7a(6)
    and 6, 7, 0
    neg 0, 6
    or 0, 0, 6
    srwi 0, 0, 31
    .4byte 0x48000008 # b .L_8040FD34
L_8040FD30:
    li 0, 0x0
L_8040FD34:
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8040FD4C
    lwz 6, 0x208(4)
    li 0, 0x0
    lwz 6, 0x4(6)
    stb 0, 0xb0(6)
L_8040FD4C:
    addi 3, 3, 0x14
    addi 4, 4, 0x4
    addi 5, 5, 0x1
    .4byte 0x4200FF64 # bdnz .L_8040FCBC
    lwz 0, 0x340(27)
    cmpwi 0, 0x8
    .4byte 0x4080005C # bge .L_8040FDC0
    lwz 5, 0x348(27)
    lis 4, 0x4330
    slwi 0, 0, 2
    addi 3, 29, 0x764
    add 0, 5, 0
    stw 4, 0x8(1)
    slwi 0, 0, 2
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    lhax 5, 3, 0
    add 3, 3, 0
    lha 0, 0x2(3)
    xoris 3, 5, 0x8000
    stw 4, 0x10(1)
    xoris 0, 0, 0x8000
    stw 3, 0xc(1)
    stw 0, 0x14(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    stfs 1, 0x394(27)
    stfs 0, 0x398(27)
L_8040FDC0:
    lwz 5, 0x378(27)
    lis 0, 0x4330
    lis 4, 0x7461
    lis 3, 0x4e
    xoris 5, 5, 0x8000
    stw 0, 0x10(1)
    .4byte 0xC8220908 # lfd f1, lbl_805438A8@sda21(r0)
    addi 6, 4, 0x3038
    stw 5, 0x14(1)
    addi 5, 3, 0x6461
    lwz 3, 0x1c(27)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0xc(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
    lwz 3, 0x37c(27)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220908 # lfd f1, lbl_805438A8@sda21(r0)
    stw 0, 0xc(1)
    lwz 3, 0x20(27)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0xc(27)
    bl fn_8009DB58
    clrlwi 0, 28, 24
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8040FE58
    lwz 0, 0x364(27)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_8040FEB0
L_8040FE58:
    li 25, 0x0
    mr 26, 27
L_8040FE60:
    lwz 3, 0xd4(26)
    bl fn_80402E70
    addi 25, 25, 0x1
    addi 26, 26, 0x4
    cmpwi 25, 0x12
    .4byte 0x4180FFEC # blt .L_8040FE60
    lwz 3, 0xc(27)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
L_8040FEB0:
    clrlwi 0, 28, 24
    cmpwi 0, 0x1
    .4byte 0x418201B0 # beq .L_80410068
    .4byte 0x40800010 # bge .L_8040FECC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8040FED8
    .4byte 0x480009D0 # b .L_80410898
L_8040FECC:
    cmpwi 0, 0x3
    .4byte 0x408009C8 # bge .L_80410898
    .4byte 0x480002A8 # b .L_8041017C
L_8040FED8:
    lwz 0, 0x38c(27)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x41820074 # beq .L_8040FF54
    lbz 0, 0x65d(27)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8040FF48
    li 0, 0x3
    mr 5, 27
    mtctr 0
    li 4, 0x0
    li 0, 0x1
L_8040FF04:
    lwz 3, 0x278(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x27c(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x280(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x284(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x288(5)
    addi 5, 5, 0x14
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    .4byte 0x4200FFC0 # bdnz .L_8040FF04
L_8040FF48:
    li 0, 0x0
    stw 0, 0x350(27)
    .4byte 0x48000948 # b .L_80410898
L_8040FF54:
    mr 3, 27
    bl fn_8040873C
    lwz 4, 0x340(27)
    mr 3, 27
    bl fn_80404270
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_8040FFF8
    li 0, 0x10
    stw 0, 0x350(27)
    lbz 0, 0x65d(27)
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_8040FFD8
    li 0, 0x3
    mr 4, 27
    mtctr 0
    li 0, 0x0
L_8040FF94:
    lwz 3, 0x278(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x27c(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x280(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x284(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x288(4)
    addi 4, 4, 0x14
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    .4byte 0x4200FFC0 # bdnz .L_8040FF94
L_8040FFD8:
    lwz 3, 0x4(27)
    li 4, 0x0
    bl fn_804446F0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x56
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480008A4 # b .L_80410898
L_8040FFF8:
    lbz 0, 0x65d(27)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8041005C
    li 0, 0x3
    mr 5, 27
    mtctr 0
    li 4, 0x0
    li 0, 0x1
L_80410018:
    lwz 3, 0x278(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x27c(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x280(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x284(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x288(5)
    addi 5, 5, 0x14
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    .4byte 0x4200FFC0 # bdnz .L_80410018
L_8041005C:
    li 0, 0xf
    stw 0, 0x350(27)
    .4byte 0x48000834 # b .L_80410898
L_80410068:
    mr 3, 27
    bl fn_8040873C
    lwz 4, 0x340(27)
    mr 3, 27
    bl fn_80404270
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_8041010C
    li 0, 0x10
    stw 0, 0x350(27)
    lbz 0, 0x65d(27)
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_804100EC
    li 0, 0x3
    mr 4, 27
    mtctr 0
    li 0, 0x0
L_804100A8:
    lwz 3, 0x278(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x27c(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x280(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x284(4)
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x288(4)
    addi 4, 4, 0x14
    sth 0, 0x26(3)
    stb 0, 0x65d(27)
    .4byte 0x4200FFC0 # bdnz .L_804100A8
L_804100EC:
    lwz 3, 0x4(27)
    li 4, 0x0
    bl fn_804446F0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x56
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000790 # b .L_80410898
L_8041010C:
    lbz 0, 0x65d(27)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_80410170
    li 0, 0x3
    mr 5, 27
    mtctr 0
    li 4, 0x0
    li 0, 0x1
L_8041012C:
    lwz 3, 0x278(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x27c(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x280(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x284(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x288(5)
    addi 5, 5, 0x14
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    .4byte 0x4200FFC0 # bdnz .L_8041012C
L_80410170:
    li 0, 0xf
    stw 0, 0x350(27)
    .4byte 0x48000720 # b .L_80410898
L_8041017C:
    lwz 3, 0x364(27)
    cmpwi 3, 0x0
    .4byte 0x41820250 # beq .L_804103D4
    cmpwi 3, 0x7
    .4byte 0x40800248 # bge .L_804103D4
    subi 3, 3, 0x1
    li 0, 0x3
    stw 3, 0x340(27)
    stw 0, 0x348(27)
    lwz 0, 0x340(27)
    cmpwi 0, 0x8
    .4byte 0x40800028 # bge .L_804101D0
    slwi 0, 0, 2
    addi 3, 29, 0x0
    lwzx 4, 3, 0
    addi 3, 27, 0x438
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x48000080 # b .L_8041024C
L_804101D0:
    .4byte 0x40820014 # bne .L_804101E4
    addi 3, 27, 0x438
    .4byte 0x38820980 # li r4, lbl_80543920@sda21
    bl strcpy
    .4byte 0x4800006C # b .L_8041024C
L_804101E4:
    cmpwi 0, 0x9
    .4byte 0x40820014 # bne .L_804101FC
    addi 3, 27, 0x438
    .4byte 0x38820988 # li r4, lbl_80543928@sda21
    bl strcpy
    .4byte 0x48000054 # b .L_8041024C
L_804101FC:
    cmpwi 0, 0xa
    .4byte 0x40820014 # bne .L_80410214
    addi 3, 27, 0x438
    .4byte 0x38820990 # li r4, lbl_80543930@sda21
    bl strcpy
    .4byte 0x4800003C # b .L_8041024C
L_80410214:
    cmpwi 0, 0xb
    .4byte 0x40820014 # bne .L_8041022C
    addi 3, 27, 0x438
    .4byte 0x38820994 # li r4, lbl_80543934@sda21
    bl strcpy
    .4byte 0x48000024 # b .L_8041024C
L_8041022C:
    cmpwi 0, 0xc
    .4byte 0x40820014 # bne .L_80410244
    addi 3, 27, 0x438
    .4byte 0x3882099C # li r4, lbl_8054393C@sda21
    bl strcpy
    .4byte 0x4800000C # b .L_8041024C
L_80410244:
    li 0, 0x0
    stb 0, 0x438(27)
L_8041024C:
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3131
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3132
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    lwz 0, 0x340(27)
    cmpwi 0, 0x8
    .4byte 0x40800028 # bge .L_804102D4
    slwi 0, 0, 2
    addi 3, 29, 0x0
    lwzx 4, 3, 0
    addi 3, 27, 0x438
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0x48000080 # b .L_80410350
L_804102D4:
    .4byte 0x40820014 # bne .L_804102E8
    addi 3, 27, 0x438
    .4byte 0x38820980 # li r4, lbl_80543920@sda21
    bl strcpy
    .4byte 0x4800006C # b .L_80410350
L_804102E8:
    cmpwi 0, 0x9
    .4byte 0x40820014 # bne .L_80410300
    addi 3, 27, 0x438
    .4byte 0x38820988 # li r4, lbl_80543928@sda21
    bl strcpy
    .4byte 0x48000054 # b .L_80410350
L_80410300:
    cmpwi 0, 0xa
    .4byte 0x40820014 # bne .L_80410318
    addi 3, 27, 0x438
    .4byte 0x38820990 # li r4, lbl_80543930@sda21
    bl strcpy
    .4byte 0x4800003C # b .L_80410350
L_80410318:
    cmpwi 0, 0xb
    .4byte 0x40820014 # bne .L_80410330
    addi 3, 27, 0x438
    .4byte 0x38820994 # li r4, lbl_80543934@sda21
    bl strcpy
    .4byte 0x48000024 # b .L_80410350
L_80410330:
    cmpwi 0, 0xc
    .4byte 0x40820014 # bne .L_80410348
    addi 3, 27, 0x438
    .4byte 0x3882099C # li r4, lbl_8054393C@sda21
    bl strcpy
    .4byte 0x4800000C # b .L_80410350
L_80410348:
    li 0, 0x0
    stb 0, 0x438(27)
L_80410350:
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3133
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    lwz 3, 0x10(27)
    lis 4, 0x6c76
    addi 6, 4, 0x3134
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 27, 0x438
    bl strcpy
    mr 3, 27
    bl fn_8040873C
    .4byte 0xC00208F8 # lfs f0, lbl_80543898@sda21(r0)
    li 3, 0x0
    li 0, 0x4
    stfs 0, 0x39c(27)
    stfs 0, 0x3a0(27)
    stfs 0, 0x3a4(27)
    stw 3, 0x358(27)
    stw 0, 0x350(27)
    .4byte 0x480004C8 # b .L_80410898
L_804103D4:
    lwz 0, 0x10(31)
    lis 3, lbl_8050EC80@ha
    addi 4, 3, lbl_8050EC80@l
    mulli 0, 0, 0xc8
    add 3, 4, 0
    lbz 0, 0x85(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820044 # bne .L_80410434
    lwz 0, 0x28(3)
    clrlwi. 0, 0, 31
    .4byte 0x40820038 # bne .L_80410434
    .4byte 0xC00209A4 # lfs f0, lbl_80543944@sda21(r0)
    mr 3, 27
    stfs 0, 0x39c(27)
    lwz 0, 0x10(31)
    mulli 0, 0, 0xc8
    add 4, 4, 0
    lbz 0, 0x85(4)
    ori 0, 0, 0x2
    stb 0, 0x85(4)
    bl fn_8040873C
    li 0, 0x2
    stw 0, 0x350(27)
    .4byte 0x48000468 # b .L_80410898
L_80410434:
    lwz 0, 0x348(27)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_804104B4
    lbz 0, 0x65d(27)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_804104A4
    li 0, 0x3
    mr 5, 27
    mtctr 0
    li 4, 0x0
    li 0, 0x1
L_80410460:
    lwz 3, 0x278(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x27c(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x280(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x284(5)
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    lwz 3, 0x288(5)
    addi 5, 5, 0x14
    sth 4, 0x26(3)
    stb 0, 0x65d(27)
    .4byte 0x4200FFC0 # bdnz .L_80410460
L_804104A4:
    li 0, 0x1
    stb 0, 0x657(27)
    stw 0, 0x350(27)
    .4byte 0x480003E8 # b .L_80410898
L_804104B4:
    mr 3, 27
    bl fn_8040873C
    lwz 3, 0x340(27)
    cmpwi 3, 0x7
    .4byte 0x408201E0 # bne .L_804106A4
    lwz 0, 0x348(27)
    cmpwi 0, 0x2
    .4byte 0x408200E8 # bne .L_804105B8
    slwi 5, 3, 4
    addi 3, 29, 0x764
    lhax 0, 3, 5
    lis 4, 0x4330
    add 3, 3, 5
    stw 4, 0x10(1)
    xoris 5, 0, 0x8000
    lha 0, 0x2(3)
    stw 5, 0x14(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 1, 0, 2
    stw 4, 0x8(1)
    lfd 0, 0x8(1)
    stfs 1, 0x394(27)
    fsubs 0, 0, 2
    stfs 0, 0x398(27)
    lwz 4, 0x340(27)
    lwz 7, 0x348(27)
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_80410538
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_80410540
L_80410538:
    li 0, 0x0
    .4byte 0x48000054 # b .L_80410590
L_80410540:
    cmpwi 7, 0x0
    .4byte 0x4180000C # blt .L_80410550
    cmpwi 7, 0x3
    .4byte 0x4081000C # ble .L_80410558
L_80410550:
    li 0, 0x0
    .4byte 0x4800003C # b .L_80410590
L_80410558:
    lwz 0, 0x10(31)
    lis 3, lbl_8050EC80@ha
    slwi 5, 4, 2
    li 6, 0x1
    mulli 4, 0, 0xc8
    addi 0, 3, lbl_8050EC80@l
    add 5, 7, 5
    add 3, 0, 4
    slw 4, 6, 5
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80410590:
    cmpwi 0, 0x0
    .4byte 0x408202E8 # bne .L_8041087C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x254(3)
    cmplwi 0, 0x0
    .4byte 0x408202D4 # bne .L_8041087C
    li 0, 0x0
    stw 0, 0x388(27)
    .4byte 0x480002C8 # b .L_8041087C
L_804105B8:
    slwi 3, 3, 2
    lis 4, 0x4330
    addi 0, 3, 0x2
    addi 3, 29, 0x764
    slwi 0, 0, 2
    stw 4, 0x10(1)
    lhax 5, 3, 0
    add 3, 3, 0
    lha 0, 0x2(3)
    xoris 3, 5, 0x8000
    stw 4, 0x8(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    stw 3, 0x14(1)
    stw 0, 0xc(1)
    lfd 1, 0x10(1)
    lfd 0, 0x8(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    stfs 1, 0x394(27)
    stfs 0, 0x398(27)
    lwz 4, 0x340(27)
    lwz 7, 0x348(27)
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_80410624
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_8041062C
L_80410624:
    li 0, 0x0
    .4byte 0x48000054 # b .L_8041067C
L_8041062C:
    cmpwi 7, 0x0
    .4byte 0x4180000C # blt .L_8041063C
    cmpwi 7, 0x3
    .4byte 0x4081000C # ble .L_80410644
L_8041063C:
    li 0, 0x0
    .4byte 0x4800003C # b .L_8041067C
L_80410644:
    lwz 0, 0x10(31)
    lis 3, lbl_8050EC80@ha
    slwi 5, 4, 2
    li 6, 0x1
    mulli 4, 0, 0xc8
    addi 0, 3, lbl_8050EC80@l
    add 5, 7, 5
    add 3, 0, 4
    slw 4, 6, 5
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8041067C:
    cmpwi 0, 0x0
    .4byte 0x408201FC # bne .L_8041087C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x254(3)
    cmplwi 0, 0x0
    .4byte 0x408201E8 # bne .L_8041087C
    li 0, 0x1
    stw 0, 0x388(27)
    .4byte 0x480001DC # b .L_8041087C
L_804106A4:
    lwz 0, 0x348(27)
    cmpwi 0, 0x1
    .4byte 0x408200E8 # bne .L_80410794
    slwi 5, 3, 4
    addi 3, 29, 0x764
    lhax 0, 3, 5
    lis 4, 0x4330
    add 3, 3, 5
    stw 4, 0x10(1)
    xoris 5, 0, 0x8000
    lha 0, 0x2(3)
    stw 5, 0x14(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 1, 0, 2
    stw 4, 0x8(1)
    lfd 0, 0x8(1)
    stfs 1, 0x394(27)
    fsubs 0, 0, 2
    stfs 0, 0x398(27)
    lwz 4, 0x340(27)
    lwz 7, 0x348(27)
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_80410714
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_8041071C
L_80410714:
    li 0, 0x0
    .4byte 0x48000054 # b .L_8041076C
L_8041071C:
    cmpwi 7, 0x0
    .4byte 0x4180000C # blt .L_8041072C
    cmpwi 7, 0x3
    .4byte 0x4081000C # ble .L_80410734
L_8041072C:
    li 0, 0x0
    .4byte 0x4800003C # b .L_8041076C
L_80410734:
    lwz 0, 0x10(31)
    lis 3, lbl_8050EC80@ha
    slwi 5, 4, 2
    li 6, 0x1
    mulli 4, 0, 0xc8
    addi 0, 3, lbl_8050EC80@l
    add 5, 7, 5
    add 3, 0, 4
    slw 4, 6, 5
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8041076C:
    cmpwi 0, 0x0
    .4byte 0x4082010C # bne .L_8041087C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x254(3)
    cmplwi 0, 0x0
    .4byte 0x408200F8 # bne .L_8041087C
    li 0, 0x0
    stw 0, 0x388(27)
    .4byte 0x480000EC # b .L_8041087C
L_80410794:
    slwi 3, 3, 2
    lis 4, 0x4330
    addi 0, 3, 0x1
    addi 3, 29, 0x764
    slwi 0, 0, 2
    stw 4, 0x10(1)
    lhax 5, 3, 0
    add 3, 3, 0
    lha 0, 0x2(3)
    xoris 3, 5, 0x8000
    stw 4, 0x8(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    stw 3, 0x14(1)
    stw 0, 0xc(1)
    lfd 1, 0x10(1)
    lfd 0, 0x8(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    stfs 1, 0x394(27)
    stfs 0, 0x398(27)
    lwz 4, 0x340(27)
    lwz 7, 0x348(27)
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_80410800
    cmpwi 4, 0x7
    .4byte 0x4081000C # ble .L_80410808
L_80410800:
    li 0, 0x0
    .4byte 0x48000054 # b .L_80410858
L_80410808:
    cmpwi 7, 0x0
    .4byte 0x4180000C # blt .L_80410818
    cmpwi 7, 0x3
    .4byte 0x4081000C # ble .L_80410820
L_80410818:
    li 0, 0x0
    .4byte 0x4800003C # b .L_80410858
L_80410820:
    lwz 0, 0x10(31)
    lis 3, lbl_8050EC80@ha
    slwi 5, 4, 2
    li 6, 0x1
    mulli 4, 0, 0xc8
    addi 0, 3, lbl_8050EC80@l
    add 5, 7, 5
    add 3, 0, 4
    slw 4, 6, 5
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80410858:
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_8041087C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x254(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8041087C
    li 0, 0x1
    stw 0, 0x388(27)
L_8041087C:
    li 0, 0x8
    stw 0, 0x350(27)
    lwz 0, 0x388(27)
    cmpwi 0, -0x1
    .4byte 0x4182000C # beq .L_80410898
    li 0, 0x1
    stb 0, 0x664(27)
L_80410898:
    li 0, 0x0
    stb 0, 0x237(30)
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_804108B4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 31, 3
    lis 3, lbl_804B10F8@ha
    lwz 4, 0x350(31)
    addi 0, 3, lbl_804B10F8@l
    .4byte 0x806D9238 # lwz r3, lbl_8053ADF8@sda21(r0)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    lbz 4, 0x659(31)
    lis 3, lbl_804B1230@ha
    addi 0, 3, lbl_804B1230@l
    .4byte 0x806D9238 # lwz r3, lbl_8053ADF8@sda21(r0)
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    mr 3, 31
    bl fn_80408114
    lwz 3, 0x350(31)
    cmpwi 3, 0x2
    .4byte 0x4182003C # beq .L_8041096C
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x40810030 # ble .L_8041096C
    subi 0, 3, 0x6
    cmplwi 0, 0x3
    .4byte 0x40810024 # ble .L_8041096C
    subi 0, 3, 0xf
    cmplwi 0, 0x3
    .4byte 0x40810018 # ble .L_8041096C
    subi 0, 3, 0x14
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8041096C
    cmpwi 3, 0x16
    .4byte 0x4082000C # bne .L_80410974
L_8041096C:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80410978
L_80410974:
    li 0, 0x0
L_80410978:
    clrlwi. 0, 0, 24
    .4byte 0x418200F0 # beq .L_80410A6C
    mr 3, 31
    bl fn_8040732C
    lbz 0, 0x65c(31)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_804109C8
    lfs 2, 0x3fc(31)
    .4byte 0xC02209E8 # lfs f1, lbl_80543988@sda21(r0)
    .4byte 0xC002091C # lfs f0, lbl_805438BC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x3fc(31)
    lfs 1, 0x3fc(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820080 # bne .L_80410A34
    stfs 0, 0x3fc(31)
    li 0, 0x1
    stb 0, 0x65c(31)
    .4byte 0x48000070 # b .L_80410A34
L_804109C8:
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_80410A04
    lfs 2, 0x3fc(31)
    .4byte 0xC02209EC # lfs f1, lbl_8054398C@sda21(r0)
    .4byte 0xC00209F0 # lfs f0, lbl_80543990@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x3fc(31)
    lfs 1, 0x3fc(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820044 # bne .L_80410A34
    stfs 0, 0x3fc(31)
    li 0, 0x2
    stb 0, 0x65c(31)
    .4byte 0x48000034 # b .L_80410A34
L_80410A04:
    lfs 2, 0x3fc(31)
    .4byte 0xC02209EC # lfs f1, lbl_8054398C@sda21(r0)
    .4byte 0xC002091C # lfs f0, lbl_805438BC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x3fc(31)
    lfs 1, 0x3fc(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_80410A34
    stfs 0, 0x3fc(31)
    li 0, 0x1
    stb 0, 0x65c(31)
L_80410A34:
    lfs 2, 0x400(31)
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40800024 # bge .L_80410A64
    .4byte 0xC00209E8 # lfs f0, lbl_80543988@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x400(31)
    lfs 0, 0x400(31)
    fcmpo cr0, 0, 1
    .4byte 0x408100DC # ble .L_80410B34
    stfs 1, 0x400(31)
    .4byte 0x480000D4 # b .L_80410B34
L_80410A64:
    stfs 1, 0x400(31)
    .4byte 0x480000CC # b .L_80410B34
L_80410A6C:
    li 0, 0x0
    .4byte 0xC06208F8 # lfs f3, lbl_80543898@sda21(r0)
    stb 0, 0x65c(31)
    lfs 4, 0x3fc(31)
    fcmpo cr0, 4, 3
    .4byte 0x40810050 # ble .L_80410AD0
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 3, 3, lbl_8050DB0C@l
    stw 0, 0x8(1)
    lha 0, 0x2b2(3)
    .4byte 0xC8220908 # lfd f1, lbl_805438A8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC042091C # lfs f2, lbl_805438BC@sda21(r0)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fsubs 0, 4, 0
    stfs 0, 0x3fc(31)
    lfs 0, 0x3fc(31)
    fcmpo cr0, 0, 3
    .4byte 0x40800010 # bge .L_80410AD4
    stfs 3, 0x3fc(31)
    .4byte 0x48000008 # b .L_80410AD4
L_80410AD0:
    stfs 3, 0x3fc(31)
L_80410AD4:
    lfs 4, 0x400(31)
    .4byte 0xC06208F8 # lfs f3, lbl_80543898@sda21(r0)
    fcmpo cr0, 4, 3
    .4byte 0x40810050 # ble .L_80410B30
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 3, 3, lbl_8050DB0C@l
    stw 0, 0x8(1)
    lha 0, 0x2b2(3)
    .4byte 0xC8220908 # lfd f1, lbl_805438A8@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC042091C # lfs f2, lbl_805438BC@sda21(r0)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fsubs 0, 4, 0
    stfs 0, 0x400(31)
    lfs 0, 0x400(31)
    fcmpo cr0, 0, 3
    .4byte 0x40800010 # bge .L_80410B34
    stfs 3, 0x400(31)
    .4byte 0x48000008 # b .L_80410B34
L_80410B30:
    stfs 3, 0x400(31)
L_80410B34:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x23f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80410B54
    mr 3, 31
    bl fn_80409014
    .4byte 0x48000018 # b .L_80410B68
L_80410B54:
    lwz 0, 0x38c(31)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x4182000C # beq .L_80410B68
    mr 3, 31
    bl fn_80409014
L_80410B68:
    lwz 0, 0x350(31)
    cmpwi 0, 0x16
    .4byte 0x40820030 # bne .L_80410BA0
    li 0, 0x7
    lis 3, lbl_80529DEC@ha
    stw 0, 0x668(31)
    addi 4, 3, lbl_80529DEC@l
    li 0, 0x0
    stb 0, 0x242(4)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stb 0, 0xe9(3)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stw 0, 0x44(3)
    stb 0, 0x242(4)
L_80410BA0:
    lbz 0, 0x65d(31)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80410BDC
    li 29, 0x0
    mr 30, 31
L_80410BB4:
    lwz 3, 0x278(30)
    li 4, 0x14
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0xf
    .4byte 0x4180FFE0 # blt .L_80410BB4
    .4byte 0x48000030 # b .L_80410C08
L_80410BDC:
    li 29, 0x0
    mr 30, 31
L_80410BE4:
    lwz 3, 0x278(30)
    li 4, 0x14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0xf
    .4byte 0x4180FFE0 # blt .L_80410BE4
L_80410C08:
    lbz 0, 0x65e(31)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_80410C5C
    lwz 3, 0x120(31)
    li 4, 0x14
    .4byte 0xC02208FC # lfs f1, lbl_8054389C@sda21(r0)
    li 5, 0x0
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    bl fn_80402940
    li 29, 0x0
    mr 30, 31
L_80410C34:
    lwz 3, 0x120(30)
    li 4, 0x14
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFE0 # blt .L_80410C34
    .4byte 0x48000048 # b .L_80410CA0
L_80410C5C:
    lwz 3, 0x120(31)
    li 4, 0xf
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    li 5, 0x0
    .4byte 0xC04208FC # lfs f2, lbl_8054389C@sda21(r0)
    bl fn_80402940
    li 29, 0x0
    mr 30, 31
L_80410C7C:
    lwz 3, 0x120(30)
    li 4, 0xf
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFE0 # blt .L_80410C7C
L_80410CA0:
    lwz 0, 0x340(31)
    cmpwi 0, 0x8
    .4byte 0x408001F4 # bge .L_80410E9C
    lwz 3, 0x10(31)
    lis 4, lbl_8048C658@ha
    mulli 5, 0, 0x18
    lwz 12, 0x0(3)
    addi 0, 4, lbl_8048C658@l
    lwz 12, 0x3c(12)
    add 4, 0, 5
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 4, lbl_8048C658@ha
    lwz 3, 0x10(31)
    addi 0, 4, lbl_8048C658@l
    lwz 4, 0x340(31)
    lwz 12, 0x0(3)
    mulli 4, 4, 0x18
    lfs 0, 0x408(31)
    lwz 12, 0x3c(12)
    fadds 30, 0, 1
    add 4, 0, 4
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 4, 0x6c76
    lwz 3, 0x10(31)
    addi 6, 4, 0x6375
    lfs 0, 0x404(31)
    li 5, 0x50
    lwz 12, 0x0(3)
    fadds 31, 0, 1
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x350(31)
    cmpwi 3, 0x2
    .4byte 0x4182003C # beq .L_80410DA4
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x40810030 # ble .L_80410DA4
    subi 0, 3, 0x6
    cmplwi 0, 0x3
    .4byte 0x40810024 # ble .L_80410DA4
    subi 0, 3, 0xf
    cmplwi 0, 0x3
    .4byte 0x40810018 # ble .L_80410DA4
    subi 0, 3, 0x14
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80410DA4
    cmpwi 3, 0x16
    .4byte 0x4082000C # bne .L_80410DAC
L_80410DA4:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80410DB0
L_80410DAC:
    li 0, 0x0
L_80410DB0:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_80410DC4
    lha 0, 0x42e(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80410DE4
L_80410DC4:
    lha 3, 0x42e(31)
    addi 0, 3, 0x1
    sth 0, 0x42e(31)
    lha 0, 0x42e(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_80410DE4
    li 0, 0x0
    sth 0, 0x42e(31)
L_80410DE4:
    lha 0, 0x42e(31)
    cmpwi 0, 0x1e
    .4byte 0x40800030 # bge .L_80410E1C
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    .4byte 0xC00209F4 # lfs f0, lbl_80543994@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
    .4byte 0x4800003C # b .L_80410E54
L_80410E1C:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8620908 # lfd f3, lbl_805438A8@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC02209D4 # lfs f1, lbl_80543974@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC00209F4 # lfs f0, lbl_80543994@sda21(r0)
    fsubs 2, 2, 3
    .4byte 0xC062091C # lfs f3, lbl_805438BC@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fdivs 0, 1, 0
    fsubs 30, 3, 0
L_80410E54:
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    addi 6, 4, 0x6375
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    .4byte 0xC00209F8 # lfs f0, lbl_80543998@sda21(r0)
    lwz 12, 0x0(3)
    fmuls 0, 0, 30
    lwz 12, 0x24(12)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    .4byte 0x48000038 # b .L_80410ED0
L_80410E9C:
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    addi 6, 4, 0x6375
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80410ED0:
    lwz 3, 0x350(31)
    lwz 0, 0x354(31)
    cmpw 3, 0
    .4byte 0x4182004C # beq .L_80410F28
    stw 3, 0x354(31)
    lwz 0, 0x350(31)
    cmplwi 0, 0x16
    .4byte 0x4181003C # bgt .L_80410F28
    lis 3, jumptable_804B1294@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B1294@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x4
    stb 0, 0x65f(31)
    .4byte 0x48000018 # b .L_80410F28
    li 0, 0x3
    stb 0, 0x65f(31)
    .4byte 0x4800000C # b .L_80410F28
    li 0, 0x4
    stb 0, 0x65f(31)
L_80410F28:
    lbz 0, 0x65f(31)
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_80410F44
    .4byte 0x41800244 # blt .L_80411178
    cmpwi 0, 0x5
    .4byte 0x4080023C # bge .L_80411178
    .4byte 0x48000100 # b .L_80411040
L_80410F44:
    lis 4, lbl_8050DB0C@ha
    lha 3, 0x430(31)
    addi 4, 4, lbl_8050DB0C@l
    lha 4, 0x160(4)
    addi 0, 3, 0x1
    sth 0, 0x430(31)
    lha 0, 0x430(31)
    cmpw 0, 4
    .4byte 0x408000A0 # bge .L_80411004
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x18(1)
    .4byte 0xC8A20908 # lfd f5, lbl_805438A8@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0420900 # lfs f2, lbl_805438A0@sda21(r0)
    mullw 0, 4, 4
    xoris 3, 3, 0x8000
    stw 3, 0x1c(1)
    .4byte 0xC00208FC # lfs f0, lbl_8054389C@sda21(r0)
    lfd 1, 0x18(1)
    lwz 3, 0x2b4(31)
    xoris 0, 0, 0x8000
    fsubs 4, 1, 5
    stw 0, 0x14(1)
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    lfd 3, 0x10(1)
    fsubs 3, 3, 5
    fdivs 30, 4, 3
    fmadds 2, 2, 30, 0
    bl fn_80402E08
    lwz 3, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x8(1)
    lbz 0, 0x28(3)
    lwz 3, 0x4(3)
    stw 0, 0xc(1)
    lwz 12, 0x0(3)
    .4byte 0xC8220910 # lfd f1, lbl_805438B0@sda21(r0)
    lfd 0, 0x8(1)
    lwz 12, 0x24(12)
    fsubs 0, 0, 1
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    .4byte 0x48000178 # b .L_80411178
L_80411004:
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 4, 0x430(31)
    fmr 2, 1
    lwz 3, 0x2b4(31)
    bl fn_80402E08
    lwz 4, 0x2b4(31)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x65f(31)
    .4byte 0x4800013C # b .L_80411178
L_80411040:
    lis 4, lbl_8050DB0C@ha
    lha 3, 0x430(31)
    addi 4, 4, lbl_8050DB0C@l
    lha 4, 0x160(4)
    subi 0, 3, 0x1
    sth 0, 0x430(31)
    lha 3, 0x430(31)
    extsh. 0, 3
    .4byte 0x408100A0 # ble .L_80411100
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x20(1)
    .4byte 0xC8A20908 # lfd f5, lbl_805438A8@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC0420900 # lfs f2, lbl_805438A0@sda21(r0)
    mullw 0, 4, 4
    xoris 3, 3, 0x8000
    stw 3, 0x24(1)
    .4byte 0xC00208FC # lfs f0, lbl_8054389C@sda21(r0)
    lfd 1, 0x20(1)
    lwz 3, 0x2b4(31)
    xoris 0, 0, 0x8000
    fsubs 4, 1, 5
    stw 0, 0x1c(1)
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    lfd 3, 0x18(1)
    fsubs 3, 3, 5
    fdivs 30, 4, 3
    fmadds 2, 2, 30, 0
    bl fn_80402E08
    lwz 3, 0x2b4(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    lbz 0, 0x28(3)
    lwz 3, 0x4(3)
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    .4byte 0xC8220910 # lfd f1, lbl_805438B0@sda21(r0)
    lfd 0, 0x10(1)
    lwz 12, 0x24(12)
    fsubs 0, 0, 1
    fmuls 0, 30, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    .4byte 0x4800007C # b .L_80411178
L_80411100:
    li 0, 0x0
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 0, 0x430(31)
    .4byte 0xC04208FC # lfs f2, lbl_8054389C@sda21(r0)
    lwz 3, 0x2b4(31)
    bl fn_80402E08
    lwz 3, 0x2b4(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lbz 0, 0x65f(31)
    stb 0, 0x660(31)
    lbz 0, 0x65f(31)
    cmplwi 0, 0x2
    .4byte 0x40820014 # bne .L_80411158
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    li 4, 0x0
    bl fn_80440BF4
    .4byte 0x48000010 # b .L_80411164
L_80411158:
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    li 4, 0x1
    bl fn_80440BF4
L_80411164:
    lbz 0, 0x65f(31)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_80411178
    li 0, 0x1
    stb 0, 0x65f(31)
L_80411178:
    li 29, 0x0
    mr 30, 31
L_80411180:
    lwz 3, 0x2b8(30)
    bl fn_80456154
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFEC # blt .L_80411180
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x64(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_804111C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x350(3)
    cmpwi 0, 0x15
    .4byte 0x40820008 # bne .L_804111E8
    bl fn_8037AA7C
L_804111E8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0x18(31)
    li 0, 0x1
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    stb 0, 0x100(3)
    fmr 2, 1
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 3, 0x18(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80411230:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 30, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 6, 0x340(30)
    cmpwi 6, 0x7
    .4byte 0x408002D8 # bge .L_8041154C
    cmpwi 6, 0x0
    .4byte 0x4180000C # blt .L_80411288
    cmpwi 6, 0x7
    .4byte 0x4081000C # ble .L_80411290
L_80411288:
    li 0, 0x0
    .4byte 0x4800003C # b .L_804112C8
L_80411290:
    lis 3, lbl_8050EC80@ha
    slwi 4, 6, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    addi 4, 4, 0x3
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_804112C8:
    cmpwi 0, 0x0
    .4byte 0x40820280 # bne .L_8041154C
    lwz 3, 0x350(30)
    cmpwi 3, 0x2
    .4byte 0x4182003C # beq .L_80411314
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x40810030 # ble .L_80411314
    subi 0, 3, 0x6
    cmplwi 0, 0x3
    .4byte 0x40810024 # ble .L_80411314
    subi 0, 3, 0xf
    cmplwi 0, 0x3
    .4byte 0x40810018 # ble .L_80411314
    subi 0, 3, 0x14
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80411314
    cmpwi 3, 0x16
    .4byte 0x4082000C # bne .L_8041131C
L_80411314:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80411320
L_8041131C:
    li 0, 0x0
L_80411320:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80411330
    cmpwi 3, 0x13
    .4byte 0x40820220 # bne .L_8041154C
L_80411330:
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80411384
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80411384:
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x65b(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x2c(1)
    .4byte 0xC8420910 # lfd f2, lbl_805438B0@sda21(r0)
    stw 0, 0x28(1)
    lfs 0, 0x3fc(30)
    lfd 1, 0x28(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6875
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x10(30)
    li 5, 0x5070
    fsubs 30, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 5, 0x7461
    lfs 0, 0x20(3)
    lis 4, 0x4e
    lwz 3, 0x10(30)
    addi 6, 5, 0x3036
    fsubs 29, 1, 0
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 4, 0x340(30)
    lis 5, lbl_8048C9DC@ha
    lis 0, 0x4330
    lfs 3, 0x4(3)
    addi 5, 5, lbl_8048C9DC@l
    slwi 3, 4, 2
    add 4, 5, 3
    lwz 3, 0x10(30)
    lha 6, 0x2(4)
    lis 5, 0x7461
    lwz 12, 0x0(3)
    lis 4, 0x4e
    xoris 7, 6, 0x8000
    stw 0, 0x38(1)
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    addi 6, 5, 0x3036
    stw 7, 0x3c(1)
    addi 5, 4, 0x6461
    .4byte 0xC0020928 # lfs f0, lbl_805438C8@sda21(r0)
    lfd 1, 0x38(1)
    lwz 12, 0x3c(12)
    fsubs 1, 1, 2
    fsubs 1, 1, 3
    fnmsubs 31, 30, 0, 1
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 5, 0x340(30)
    lis 4, lbl_8048C9DC@ha
    lis 0, 0x4330
    lfs 3, 0x0(3)
    slwi 5, 5, 2
    addi 3, 4, lbl_8048C9DC@l
    lhax 5, 3, 5
    lis 4, 0x6875
    lwz 3, 0x10(30)
    addi 6, 4, 0x3031
    xoris 4, 5, 0x8000
    stw 0, 0x40(1)
    lwz 12, 0x0(3)
    li 5, 0x5070
    stw 4, 0x44(1)
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    lfd 1, 0x40(1)
    .4byte 0xC0020928 # lfs f0, lbl_805438C8@sda21(r0)
    fsubs 1, 1, 2
    lwz 12, 0x3c(12)
    fsubs 1, 1, 3
    fnmsubs 30, 29, 0, 1
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x4800034C # b .L_80411894
L_8041154C:
    cmpwi 6, 0xa
    .4byte 0x408202F0 # bne .L_80411840
    lwz 0, 0x348(30)
    cmpwi 0, 0x2
    .4byte 0x408202E4 # bne .L_80411840
    lis 3, lbl_80529DEC@ha
    addi 31, 3, lbl_80529DEC@l
    lwz 0, 0x120(31)
    cmpwi 0, 0x7
    .4byte 0x408002D0 # bge .L_80411840
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80411584
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8041158C
L_80411584:
    li 0, 0x0
    .4byte 0x4800003C # b .L_804115C4
L_8041158C:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    addi 4, 4, 0x3
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_804115C4:
    cmpwi 0, 0x0
    .4byte 0x40820278 # bne .L_80411840
    lwz 3, 0x350(30)
    cmpwi 3, 0x2
    .4byte 0x4182003C # beq .L_80411610
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x40810030 # ble .L_80411610
    subi 0, 3, 0x6
    cmplwi 0, 0x3
    .4byte 0x40810024 # ble .L_80411610
    subi 0, 3, 0xf
    cmplwi 0, 0x3
    .4byte 0x40810018 # ble .L_80411610
    subi 0, 3, 0x14
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80411610
    cmpwi 3, 0x16
    .4byte 0x4082000C # bne .L_80411618
L_80411610:
    li 0, 0x1
    .4byte 0x48000008 # b .L_8041161C
L_80411618:
    li 0, 0x0
L_8041161C:
    clrlwi. 0, 0, 24
    .4byte 0x41820220 # beq .L_80411840
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80411678
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80411678:
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x65b(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x44(1)
    .4byte 0xC8420910 # lfd f2, lbl_805438B0@sda21(r0)
    stw 0, 0x40(1)
    lfs 0, 0x3fc(30)
    lfd 1, 0x40(1)
    lwz 12, 0x24(12)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    lwz 29, 0x120(31)
    lwz 12, 0x0(3)
    li 5, 0x5070
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6875
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x10(30)
    li 5, 0x5070
    fsubs 29, 1, 0
    lwz 31, 0x120(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 5, 0x7461
    lfs 0, 0x20(3)
    lis 4, 0x4e
    lwz 3, 0x10(30)
    addi 6, 5, 0x3036
    fsubs 31, 1, 0
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lis 4, lbl_8048C9DC@ha
    lis 0, 0x4330
    addi 5, 4, lbl_8048C9DC@l
    slwi 4, 29, 2
    add 4, 5, 4
    lfs 3, 0x4(3)
    lha 6, 0x2(4)
    lis 5, 0x7461
    lwz 3, 0x10(30)
    lis 4, 0x4e
    xoris 7, 6, 0x8000
    stw 0, 0x30(1)
    lwz 12, 0x0(3)
    addi 6, 5, 0x3036
    stw 7, 0x34(1)
    addi 5, 4, 0x6461
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    lfd 1, 0x30(1)
    .4byte 0xC0020928 # lfs f0, lbl_805438C8@sda21(r0)
    fsubs 1, 1, 2
    lwz 12, 0x3c(12)
    fsubs 1, 1, 3
    fnmsubs 30, 29, 0, 1
    mtctr 12
    bctrl
    bl fn_80095FB4
    lis 4, lbl_8048C9DC@ha
    lis 0, 0x4330
    slwi 5, 31, 2
    lfs 3, 0x0(3)
    addi 4, 4, lbl_8048C9DC@l
    lwz 3, 0x10(30)
    lhax 5, 4, 5
    lis 4, 0x6875
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    xoris 4, 5, 0x8000
    stw 0, 0x28(1)
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    li 5, 0x5070
    stw 4, 0x2c(1)
    .4byte 0xC0020928 # lfs f0, lbl_805438C8@sda21(r0)
    lfd 1, 0x28(1)
    lwz 12, 0x3c(12)
    fsubs 1, 1, 2
    fsubs 1, 1, 3
    fnmsubs 31, 31, 0, 1
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000058 # b .L_80411894
L_80411840:
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_80411894
    lwz 3, 0x10(30)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80411894:
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0xc(30)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x14(30)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x10(30)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    addi 4, 1, 0x18
    .4byte 0xC0220924 # lfs f1, lbl_805438C4@sda21(r0)
    li 5, 0x1
    .4byte 0xC002092C # lfs f0, lbl_805438CC@sda21(r0)
    stfs 2, 0x18(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
    bl fn_8013B414
    lwz 0, 0x340(30)
    cmpwi 0, 0x7
    .4byte 0x40810018 # ble .L_80411928
    cmpwi 0, 0xa
    .4byte 0x408200D8 # bne .L_804119F0
    lwz 0, 0x348(30)
    cmpwi 0, 0x2
    .4byte 0x408200CC # bne .L_804119F0
L_80411928:
    lwz 3, 0x350(30)
    cmpwi 3, 0x2
    .4byte 0x4182003C # beq .L_8041196C
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x40810030 # ble .L_8041196C
    subi 0, 3, 0x6
    cmplwi 0, 0x3
    .4byte 0x40810024 # ble .L_8041196C
    subi 0, 3, 0xf
    cmplwi 0, 0x3
    .4byte 0x40810018 # ble .L_8041196C
    subi 0, 3, 0x14
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8041196C
    cmpwi 3, 0x16
    .4byte 0x4082000C # bne .L_80411974
L_8041196C:
    li 0, 0x1
    .4byte 0x48000008 # b .L_80411978
L_80411974:
    li 0, 0x0
L_80411978:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80411988
    cmpwi 3, 0x13
    .4byte 0x4082006C # bne .L_804119F0
L_80411988:
    lwz 4, 0x358(30)
    mr 3, 30
    addi 0, 4, 0x1
    stw 0, 0x358(30)
    bl fn_804069E8
    lwz 0, 0x350(30)
    cmpwi 0, 0x13
    .4byte 0x4182004C # beq .L_804119F0
    lbz 0, 0x663(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_804119CC
    lwz 4, 0x340(30)
    mr 3, 30
    li 5, 0x1
    subi 4, 4, 0x1
    bl fn_80406634
    .4byte 0x48000028 # b .L_804119F0
L_804119CC:
    mr 3, 30
    bl fn_80405FC0
    lwz 0, 0x350(30)
    cmpwi 0, 0x4
    .4byte 0x40820014 # bne .L_804119F0
    lwz 4, 0x340(30)
    mr 3, 30
    li 5, 0x0
    bl fn_80406634
L_804119F0:
    lwz 0, 0x350(30)
    cmpwi 0, 0x11
    .4byte 0x40820040 # bne .L_80411A38
    lfs 1, 0x3ac(30)
    mr 3, 30
    lfs 2, 0x3b0(30)
    bl fn_80406F68
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC0220924 # lfs f1, lbl_805438C4@sda21(r0)
    li 5, 0x1
    .4byte 0xC002092C # lfs f0, lbl_805438CC@sda21(r0)
    stfs 2, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_8013B414
L_80411A38:
    lwz 0, 0x350(30)
    cmpwi 0, 0x10
    .4byte 0x40820010 # bne .L_80411A50
    lwz 3, 0x4(30)
    bl fn_80444650
    .4byte 0x48000014 # b .L_80411A60
L_80411A50:
    cmpwi 0, 0x12
    .4byte 0x4082000C # bne .L_80411A60
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    bl fn_8042EB98
L_80411A60:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 0, 0x94(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80411A94:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    mr 31, 3
    lis 4, 0x6c76
    lwz 3, 0x10(3)
    fmr 31, 1
    addi 6, 4, 0x3131
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x64b(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0xc(1)
    .4byte 0xC8220910 # lfd f1, lbl_805438B0@sda21(r0)
    stw 0, 0x8(1)
    lwz 12, 0x24(12)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    addi 6, 4, 0x3132
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x64c(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x1c(1)
    .4byte 0xC8220910 # lfd f1, lbl_805438B0@sda21(r0)
    stw 0, 0x18(1)
    lwz 12, 0x24(12)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    addi 6, 4, 0x3133
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x64b(31)
    lis 0, 0x4330
    .4byte 0xC002091C # lfs f0, lbl_805438BC@sda21(r0)
    stw 4, 0x2c(1)
    lwz 12, 0x0(3)
    fsubs 31, 0, 31
    stw 0, 0x28(1)
    .4byte 0xC8220910 # lfd f1, lbl_805438B0@sda21(r0)
    lfd 0, 0x28(1)
    lwz 12, 0x24(12)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    addi 6, 4, 0x3134
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x64c(31)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x3c(1)
    .4byte 0xC8220910 # lfd f1, lbl_805438B0@sda21(r0)
    stw 0, 0x38(1)
    lwz 12, 0x24(12)
    lfd 0, 0x38(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 4, 0x44(1)
    mtctr 12
    bctrl
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

