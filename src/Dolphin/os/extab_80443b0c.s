# 901KB-gap non-actor manager block: 8 function(s), 3,864 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8001125C
etb_8001125C:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8001125C, 8

.global etb_80011264
etb_80011264:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011264, 8

.global etb_8001126C
etb_8001126C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8001126C, 8

.global etb_80011274
etb_80011274:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011274, 8

.global etb_8001127C
etb_8001127C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001127C, 8

.global etb_80011284
etb_80011284:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011284, 8

.global etb_8001128C
etb_8001128C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001128C, 8

.global etb_80011294
etb_80011294:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80011294, 8

.section extabindex, "a"
.balign 4
.global eti_8002116C
eti_8002116C:
    .4byte fn_80443B0C
    .4byte 0x00000250
    .4byte etb_8001125C
.size eti_8002116C, 12

.global eti_80021178
eti_80021178:
    .4byte fn_80443D5C
    .4byte 0x00000050
    .4byte etb_80011264
.size eti_80021178, 12

.global eti_80021184
eti_80021184:
    .4byte fn_80443DAC
    .4byte 0x000007E4
    .4byte etb_8001126C
.size eti_80021184, 12

.global eti_80021190
eti_80021190:
    .4byte fn_80444590
    .4byte 0x00000050
    .4byte etb_80011274
.size eti_80021190, 12

.global eti_8002119C
eti_8002119C:
    .4byte fn_804445E0
    .4byte 0x00000070
    .4byte etb_8001127C
.size eti_8002119C, 12

.global eti_800211A8
eti_800211A8:
    .4byte fn_80444650
    .4byte 0x00000054
    .4byte etb_80011284
.size eti_800211A8, 12

.global eti_800211B4
eti_800211B4:
    .4byte fn_804446A4
    .4byte 0x0000004C
    .4byte etb_8001128C
.size eti_800211B4, 12

.global eti_800211C0
eti_800211C0:
    .4byte fn_804446F0
    .4byte 0x00000334
    .4byte etb_80011294
.size eti_800211C0, 12

.text
.balign 4
.global fn_80443B0C
.global fn_80443D5C
.global fn_80443DAC
.global fn_80444590
.global fn_804445E0
.global fn_80444650
.global fn_804446A4
.global fn_804446F0

fn_80443B0C:
    stwu 1, -0x20(1)
    mflr 0
    lis 3, lbl_8048FBD0@ha
    stw 0, 0x24(1)
    addi 0, 3, lbl_8048FBD0@l
    stmw 26, 0x8(1)
    mr 28, 5
    mr 26, 4
    mr 27, 6
    mr 5, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xa8(7)
    lis 7, 0x3f3f
    addi 4, 7, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lis 4, 0x68dc
    addi 5, 3, 0x20
    subi 0, 4, 0x7453
    slwi 3, 28, 3
    mulhw 0, 0, 27
    lwz 4, 0x4(5)
    add 3, 5, 3
    lwz 3, 0x10(3)
    li 29, 0x0
    li 28, 0x0
    add 3, 4, 3
    srawi 0, 0, 12
    addi 30, 3, 0x8
    srwi 3, 0, 31
    add 30, 5, 30
    add 31, 0, 3
    .4byte 0x480001A0 # b .L_80443D34
L_80443B98:
    extsb 0, 4
    cmpwi 0, 0x1a
    .4byte 0x40820150 # bne .L_80443CF0
    lbz 0, 0x2(3)
    cmpwi 0, 0x3
    .4byte 0x40820134 # bne .L_80443CE0
    lbz 4, 0x3(3)
    extsb. 0, 4
    .4byte 0x40820010 # bne .L_80443BC8
    lbz 0, 0x4(3)
    cmpwi 0, 0x3
    .4byte 0x41820018 # beq .L_80443BDC
L_80443BC8:
    extsb. 0, 4
    .4byte 0x40820114 # bne .L_80443CE0
    lbz 0, 0x4(3)
    cmpwi 0, 0x4
    .4byte 0x40820108 # bne .L_80443CE0
L_80443BDC:
    cmpwi 27, 0x2710
    mr 4, 27
    .4byte 0x41800030 # blt .L_80443C14
    lis 4, 0x68dc
    addi 0, 31, 0x30
    subi 4, 4, 0x7453
    stbx 0, 26, 28
    mulhw 0, 4, 27
    addi 28, 28, 0x1
    srawi 0, 0, 12
    srwi 4, 0, 31
    add 0, 0, 4
    mulli 0, 0, 0x2710
    subf 4, 0, 27
L_80443C14:
    cmpwi 27, 0x3e8
    .4byte 0x4180003C # blt .L_80443C54
    lis 5, 0x1062
    addi 0, 5, 0x4dd3
    mulhw 0, 0, 4
    srawi 6, 0, 6
    srawi 0, 0, 6
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 5, 0, 5
    add 6, 6, 7
    mulli 5, 5, 0x3e8
    addi 0, 6, 0x30
    stbx 0, 26, 28
    addi 28, 28, 0x1
    subf 4, 5, 4
L_80443C54:
    cmpwi 27, 0x64
    .4byte 0x4180003C # blt .L_80443C94
    lis 5, 0x51ec
    subi 0, 5, 0x7ae1
    mulhw 0, 0, 4
    srawi 6, 0, 5
    srawi 0, 0, 5
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 5, 0, 5
    add 6, 6, 7
    mulli 5, 5, 0x64
    addi 0, 6, 0x30
    stbx 0, 26, 28
    addi 28, 28, 0x1
    subf 4, 5, 4
L_80443C94:
    cmpwi 27, 0xa
    .4byte 0x4180003C # blt .L_80443CD4
    lis 5, 0x6666
    addi 0, 5, 0x6667
    mulhw 0, 0, 4
    srawi 6, 0, 2
    srawi 0, 0, 2
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 5, 0, 5
    add 6, 6, 7
    mulli 5, 5, 0xa
    addi 0, 6, 0x30
    stbx 0, 26, 28
    addi 28, 28, 0x1
    subf 4, 5, 4
L_80443CD4:
    addi 0, 4, 0x30
    stbx 0, 26, 28
    addi 28, 28, 0x1
L_80443CE0:
    lbz 0, 0x1(3)
    extsb 0, 0
    add 29, 29, 0
    .4byte 0x48000048 # b .L_80443D34
L_80443CF0:
    stbx 4, 26, 28
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lbz 0, 0x0(3)
    lwz 3, 0x154(4)
    clrlwi 4, 0, 24
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    addi 29, 29, 0x1
    addi 28, 28, 0x1
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80443D34
    lbzx 0, 30, 29
    addi 29, 29, 0x1
    stbx 0, 26, 28
    addi 28, 28, 0x1
L_80443D34:
    add 3, 30, 29
    lbz 4, 0x0(3)
    extsb. 0, 4
    .4byte 0x4082FE58 # bne .L_80443B98
    stbx 4, 26, 28
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80443D5C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    li 4, 0xa
    stw 0, 0x14(1)
    li 5, 0x0
    .4byte 0xC0420DDC # lfs f2, lbl_80543D7C@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x8(3)
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80443D98
    li 0, 0x4
    stb 0, 0x4d(31)
L_80443D98:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80443DAC:
    stwu 1, -0x60(1)
    mflr 0
    li 4, 0x4
    li 5, -0x1
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182010C # beq .L_80443EE8
    lbz 0, 0x4c(31)
    cmplwi 0, 0x0
    .4byte 0x408203A4 # bne .L_8044418C
    li 0, 0x1
    lis 3, 0x6d6d
    stb 0, 0x4c(31)
    addi 6, 3, 0x3033
    li 5, 0x54
    lwz 0, 0x3c(31)
    stw 0, 0x34(1)
    lwz 0, 0x38(31)
    stw 0, 0x38(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x38
    addi 5, 1, 0x34
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    lwz 0, 0x34(31)
    lis 3, 0x6d6d
    addi 6, 3, 0x3035
    li 5, 0x54
    stw 0, 0x2c(1)
    lwz 0, 0x30(31)
    stw 0, 0x30(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x30
    addi 5, 1, 0x2c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 29, 0x0
    mr 30, 31
L_80443E8C:
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lwz 3, 0x10(30)
    fmr 2, 1
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x6
    .4byte 0x4180FFE4 # blt .L_80443E8C
    li 29, 0x0
    mr 30, 31
L_80443EB4:
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lwz 3, 0x28(30)
    fmr 2, 1
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFE4 # blt .L_80443EB4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480002A8 # b .L_8044418C
L_80443EE8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x8
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182010C # beq .L_80444008
    lbz 0, 0x4c(31)
    cmplwi 0, 0x1
    .4byte 0x40820284 # bne .L_8044418C
    li 0, 0x0
    lis 3, 0x6d6d
    stb 0, 0x4c(31)
    addi 6, 3, 0x3033
    li 5, 0x54
    lwz 0, 0x34(31)
    stw 0, 0x24(1)
    lwz 0, 0x30(31)
    stw 0, 0x28(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x28
    addi 5, 1, 0x24
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    lwz 0, 0x3c(31)
    lis 3, 0x6d6d
    addi 6, 3, 0x3035
    li 5, 0x54
    stw 0, 0x1c(1)
    lwz 0, 0x38(31)
    stw 0, 0x20(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x20
    addi 5, 1, 0x1c
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 29, 0x0
    mr 30, 31
L_80443FAC:
    lwz 3, 0x10(30)
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lfs 2, 0x40(31)
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x6
    .4byte 0x4180FFE4 # blt .L_80443FAC
    li 29, 0x0
    mr 30, 31
L_80443FD4:
    lwz 3, 0x28(30)
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lfs 2, 0x40(31)
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFE4 # blt .L_80443FD4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000188 # b .L_8044418C
L_80444008:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80444068
    lwz 3, 0x8(31)
    li 4, 0x0
    li 0, 0x3
    sth 4, 0x22(3)
    stb 0, 0x4d(31)
    lbz 0, 0x4c(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80444054
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xb
    li 5, -0x1
    bl fn_80458880
    .4byte 0x4800013C # b .L_8044418C
L_80444054:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xc
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000128 # b .L_8044418C
L_80444068:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x200
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820110 # beq .L_8044418C
    li 0, 0x1
    lis 3, 0x6d6d
    stb 0, 0x4c(31)
    addi 6, 3, 0x3033
    li 5, 0x54
    lwz 0, 0x3c(31)
    stw 0, 0x14(1)
    lwz 0, 0x38(31)
    stw 0, 0x18(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x18
    addi 5, 1, 0x14
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    lwz 0, 0x34(31)
    lis 3, 0x6d6d
    addi 6, 3, 0x3035
    li 5, 0x54
    stw 0, 0xc(1)
    lwz 0, 0x30(31)
    stw 0, 0x10(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x10
    addi 5, 1, 0xc
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 29, 0x0
    mr 30, 31
L_80444120:
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lwz 3, 0x10(30)
    fmr 2, 1
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x6
    .4byte 0x4180FFE4 # blt .L_80444120
    li 29, 0x0
    mr 30, 31
L_80444148:
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lwz 3, 0x28(30)
    fmr 2, 1
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFE4 # blt .L_80444148
    lwz 3, 0x8(31)
    li 5, 0x0
    li 0, 0x3
    li 4, 0xc
    sth 5, 0x22(3)
    li 5, -0x1
    stb 0, 0x4d(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_8044418C:
    lwz 3, 0x48(31)
    subic. 0, 3, 0x1
    stw 0, 0x48(31)
    .4byte 0x418103DC # bgt .L_80444574
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 5, 0x19
    lis 4, 0x7572
    lis 3, 0x50
    lwz 7, 0xb4(8)
    addi 0, 5, 0x660d
    .4byte 0xC0020DD4 # lfs f0, lbl_80543D74@sda21(r0)
    addi 6, 4, 0x3031
    mullw 4, 7, 0
    .4byte 0xC0420DD0 # lfs f2, lbl_80543D70@sda21(r0)
    addi 5, 3, 0x6f63
    addis 3, 4, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 3, 0x44(1)
    addi 0, 3, 0xa
    stw 0, 0x48(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820110 # beq .L_80444330
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3035
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3036
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000248 # b .L_80444574
L_80444330:
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820110 # beq .L_8044446C
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3035
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3036
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800010C # b .L_80444574
L_8044446C:
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3035
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3036
    lwz 3, 0x4(31)
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80444574:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80444590:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0220DE0 # lfs f1, lbl_80543D80@sda21(r0)
    li 4, 0x5
    stw 0, 0x14(1)
    li 5, 0x0
    .4byte 0xC0420DD8 # lfs f2, lbl_80543D78@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x8(3)
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_804445CC
    li 0, 0x2
    stb 0, 0x4d(31)
L_804445CC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804445E0:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x10
    li 5, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xc(3)
    lbz 6, 0x28(3)
    bl fn_80402628
    lwz 3, 0x8(31)
    li 4, 0x10
    .4byte 0xC0220DE4 # lfs f1, lbl_80543D84@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420DE0 # lfs f2, lbl_80543D80@sda21(r0)
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8044463C
    lwz 3, 0x8(31)
    li 4, 0x0
    li 0, 0x1
    sth 4, 0x22(3)
    stb 0, 0x4d(31)
L_8044463C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80444650:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x4d(3)
    cmplwi 0, 0x4
    .4byte 0x41820024 # beq .L_80444690
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_80444690:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804446A4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x4d(3)
    cmplwi 0, 0x4
    .4byte 0x41820024 # beq .L_804446DC
    mulli 5, 0, 0xc
    lis 4, lbl_804B1B30@ha
    addi 0, 4, lbl_804B1B30@l
    add 12, 0, 5
    bl __ptmf_scall
    nop
    li 3, 0x0
    .4byte 0x48000008 # b .L_804446E0
L_804446DC:
    li 3, 0x1
L_804446E0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804446F0:
    stwu 1, -0x40(1)
    mflr 0
    li 5, 0x54
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 4
    stw 29, 0x44(3)
    lis 3, 0x6d6d
    addi 6, 3, 0x3031
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 31
    mr 6, 29
    li 5, 0x241
    bl fn_80443B0C
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x3032
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 31
    mr 6, 29
    li 5, 0x241
    bl fn_80443B0C
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x3033
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 31
    mr 6, 29
    li 5, 0x242
    bl fn_80443B0C
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x3034
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 31
    mr 6, 29
    li 5, 0x242
    bl fn_80443B0C
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x3035
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 31
    mr 6, 29
    li 5, 0x243
    bl fn_80443B0C
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x3036
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 31
    mr 6, 29
    li 5, 0x243
    bl fn_80443B0C
    lwz 3, 0x8(31)
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    .4byte 0xC0420DE4 # lfs f2, lbl_80543D84@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x8(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0xc(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 5, 0xc(31)
    li 8, 0x0
    lis 4, 0x19
    lis 3, 0x6d6d
    sth 8, 0x26(5)
    li 7, 0x1
    addi 0, 4, 0x660d
    .4byte 0xC0020DD4 # lfs f0, lbl_80543D74@sda21(r0)
    lwz 4, 0x10(31)
    addi 6, 3, 0x3033
    .4byte 0xC0420DD0 # lfs f2, lbl_80543D70@sda21(r0)
    li 5, 0x54
    lwz 3, 0x4(4)
    stb 7, 0xb0(3)
    lwz 3, 0x14(31)
    lwz 3, 0x4(3)
    stb 7, 0xb0(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 3, 0x24(1)
    addi 0, 3, 0xa
    stw 0, 0x48(31)
    stb 8, 0x4c(31)
    lwz 0, 0x34(31)
    stw 0, 0x14(1)
    lwz 0, 0x30(31)
    stw 0, 0x18(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x18
    addi 5, 1, 0x14
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    lwz 0, 0x3c(31)
    lis 3, 0x6d6d
    addi 6, 3, 0x3035
    li 5, 0x54
    stw 0, 0xc(1)
    lwz 0, 0x38(31)
    stw 0, 0x10(1)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x10
    addi 5, 1, 0xc
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 29, 0x0
    mr 30, 31
L_804449B8:
    lwz 3, 0x10(30)
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lfs 2, 0x40(31)
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x6
    .4byte 0x4180FFE4 # blt .L_804449B8
    li 29, 0x0
    mr 30, 31
L_804449E0:
    lwz 3, 0x28(30)
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    lfs 2, 0x40(31)
    bl fn_80402E08
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x2
    .4byte 0x4180FFE4 # blt .L_804449E0
    li 0, 0x0
    stb 0, 0x4d(31)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

