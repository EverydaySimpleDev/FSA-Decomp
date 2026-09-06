# 901KB-gap non-actor manager block: 7 functions, 7,388 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000FAB4
etb_8000FAB4:
    .4byte 0x410A0000
    .4byte 0x00000000
.size etb_8000FAB4, 8

.global etb_8000FABC
etb_8000FABC:
    .4byte 0x50CA0000
    .4byte 0x00000000
.size etb_8000FABC, 8

.global etb_8000FAC4
etb_8000FAC4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FAC4, 8

.global etb_8000FACC
etb_8000FACC:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000FACC, 8

.global etb_8000FAD4
etb_8000FAD4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000FAD4, 8

.global etb_8000FADC
etb_8000FADC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000FADC, 8

.global etb_8000FAE4
etb_8000FAE4:
    .4byte 0x700A0000
    .4byte 0x00000000
.size etb_8000FAE4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F960
eti_8001F960:
    .4byte fn_803D7098
    .4byte 0x00000518
    .4byte etb_8000FAB4
.size eti_8001F960, 12

.global eti_8001F96C
eti_8001F96C:
    .4byte fn_803D75B0
    .4byte 0x00000D3C
    .4byte etb_8000FABC
.size eti_8001F96C, 12

.global eti_8001F978
eti_8001F978:
    .4byte fn_803D82EC
    .4byte 0x00000078
    .4byte etb_8000FAC4
.size eti_8001F978, 12

.global eti_8001F984
eti_8001F984:
    .4byte fn_803D8364
    .4byte 0x0000030C
    .4byte etb_8000FACC
.size eti_8001F984, 12

.global eti_8001F990
eti_8001F990:
    .4byte fn_803D8670
    .4byte 0x000000A8
    .4byte etb_8000FAD4
.size eti_8001F990, 12

.global eti_8001F99C
eti_8001F99C:
    .4byte fn_803D8718
    .4byte 0x000000A8
    .4byte etb_8000FADC
.size eti_8001F99C, 12

.global eti_8001F9A8
eti_8001F9A8:
    .4byte fn_803D87C0
    .4byte 0x000005B4
    .4byte etb_8000FAE4
.size eti_8001F9A8, 12

.text
.balign 4
.global fn_803D7098
.global fn_803D75B0
.global fn_803D82EC
.global fn_803D8364
.global fn_803D8670
.global fn_803D8718
.global fn_803D87C0

fn_803D7098:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stmw 24, 0x10(1)
    mr 27, 3
    li 31, 0x0
    lwz 3, 0x60(3)
    li 30, 0x0
    li 29, 0x0
    li 28, 0x0
    addi 0, 3, 0x1
    stw 0, 0x60(27)
    lwz 0, 0x60(27)
    cmpwi 0, 0x4
    .4byte 0x40810020 # ble .L_803D7110
    lwz 3, 0x30(27)
    li 4, 0x16
    .4byte 0xC0220590 # lfs f1, lbl_80543530@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420594 # lfs f2, lbl_80543534@sda21(r0)
    bl fn_80402940
    mr 31, 3
L_803D7110:
    lwz 0, 0x60(27)
    cmpwi 0, 0x10
    .4byte 0x40810020 # ble .L_803D7138
    lwz 3, 0x48(27)
    li 4, 0x18
    .4byte 0xC0220590 # lfs f1, lbl_80543530@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420594 # lfs f2, lbl_80543534@sda21(r0)
    bl fn_80402940
    mr 30, 3
L_803D7138:
    lwz 0, 0x60(27)
    cmpwi 0, 0x0
    .4byte 0x40810038 # ble .L_803D7178
    li 25, 0x0
    mr 26, 27
L_803D714C:
    lwz 3, 0x34(26)
    li 4, 0x16
    .4byte 0xC0220598 # lfs f1, lbl_80543538@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420594 # lfs f2, lbl_80543534@sda21(r0)
    bl fn_80402940
    addi 25, 25, 0x1
    mr 29, 3
    cmpwi 25, 0x4
    addi 26, 26, 0x4
    .4byte 0x4180FFD8 # blt .L_803D714C
L_803D7178:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803D7190
    li 28, 0x1
    .4byte 0x4800004C # b .L_803D71D8
L_803D7190:
    mr 25, 27
    li 24, 0x0
    li 26, 0x0
L_803D719C:
    lwz 0, 0x60(27)
    cmpw 0, 26
    .4byte 0x40810020 # ble .L_803D71C4
    lwz 3, 0x24(25)
    li 4, 0x10
    .4byte 0xC022059C # lfs f1, lbl_8054353C@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420594 # lfs f2, lbl_80543534@sda21(r0)
    bl fn_80402940
    mr 28, 3
L_803D71C4:
    addi 24, 24, 0x1
    addi 25, 25, 0x4
    cmpwi 24, 0x2
    addi 26, 26, 0x5
    .4byte 0x4180FFC8 # blt .L_803D719C
L_803D71D8:
    clrlwi. 0, 31, 24
    .4byte 0x418203A0 # beq .L_803D757C
    clrlwi. 0, 30, 24
    .4byte 0x41820398 # beq .L_803D757C
    clrlwi. 0, 29, 24
    .4byte 0x41820390 # beq .L_803D757C
    clrlwi. 0, 28, 24
    .4byte 0x41820388 # beq .L_803D757C
    lwz 3, 0x2c(27)
    li 5, 0x1
    li 4, 0x0
    li 0, 0x3
    lwz 3, 0x4(3)
    stb 5, 0xb0(3)
    stb 4, 0x78(27)
    lbz 3, 0x78(27)
    stb 3, 0x79(27)
    sth 4, 0x6e(27)
    stb 0, 0x7a(27)
    stb 5, 0x7f(27)
    sth 5, 0x70(27)
    lha 25, 0x68(27)
    extsh. 0, 25
    .4byte 0x41800348 # blt .L_803D757C
    cmpwi 25, 0x4
    .4byte 0x40800340 # bge .L_803D757C
    lha 26, 0x6a(27)
    extsh. 0, 26
    .4byte 0x41800334 # blt .L_803D757C
    lwz 3, 0x4(27)
    lis 4, lbl_80477180@ha
    lwzu 5, lbl_80477180@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 28, 0x0(3)
    lis 4, lbl_80477408@ha
    lwz 3, 0x4(27)
    lwzu 5, lbl_80477408@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, lbl_80477180@ha
    lwz 3, 0x4(27)
    slwi 5, 25, 7
    addi 4, 4, lbl_80477180@l
    slwi 0, 26, 3
    lwz 12, 0x0(3)
    add 4, 4, 5
    add 4, 4, 0
    fadds 31, 0, 28
    lwz 12, 0x3c(12)
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 28, 0x0(3)
    lis 4, lbl_80477408@ha
    lwz 3, 0x4(27)
    addi 0, 4, lbl_80477408@l
    lha 4, 0x68(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 4, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x616b
    lwz 3, 0x8(27)
    lis 4, 0x50
    fadds 30, 0, 28
    addi 6, 5, 0x3030
    lwz 12, 0x0(3)
    addi 5, 4, 0x306b
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x0(3)
    lis 4, lbl_80477408@ha
    lwz 3, 0x4(27)
    lwzu 5, lbl_80477408@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 28, 0x0(3)
    lis 5, 0x7461
    lwz 3, 0x4(27)
    lis 4, 0x4e
    addi 6, 5, 0x3033
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, lbl_80477180@ha
    lwz 3, 0x4(27)
    lwzu 5, lbl_80477180@l(4)
    fadds 28, 0, 28
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, lbl_80477180@ha
    lwzu 5, lbl_80477180@l(3)
    fadds 0, 0, 28
    lwz 6, 0x4(3)
    fsubs 0, 0, 29
    fadds 0, 0, 30
    fsubs 0, 0, 31
    stfs 0, 0x58(27)
    lwz 3, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 28, 0x4(3)
    lis 4, lbl_80477408@ha
    lwz 3, 0x4(27)
    lwzu 5, lbl_80477408@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, lbl_80477180@ha
    lwz 3, 0x4(27)
    addi 4, 4, lbl_80477180@l
    lha 5, 0x68(27)
    fadds 28, 0, 28
    lha 0, 0x6a(27)
    lwz 12, 0x0(3)
    slwi 5, 5, 7
    add 4, 4, 5
    slwi 0, 0, 3
    add 4, 4, 0
    lwz 12, 0x3c(12)
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 29, 0x4(3)
    lis 4, lbl_80477408@ha
    lwz 3, 0x4(27)
    addi 0, 4, lbl_80477408@l
    lha 4, 0x68(27)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    add 4, 0, 4
    lwz 12, 0x3c(12)
    lwz 5, 0x0(4)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x616b
    lwz 3, 0x8(27)
    lis 4, 0x50
    fadds 29, 0, 29
    addi 6, 5, 0x3030
    lwz 12, 0x0(3)
    addi 5, 4, 0x306b
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 4, lbl_80477408@ha
    lwz 3, 0x4(27)
    lwzu 5, lbl_80477408@l(4)
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(27)
    lis 4, 0x4e
    addi 6, 5, 0x3033
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, lbl_80477180@ha
    lwz 3, 0x4(27)
    lwzu 5, lbl_80477180@l(4)
    fadds 31, 0, 31
    lwz 12, 0x0(3)
    lwz 6, 0x4(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    fadds 0, 0, 31
    fsubs 0, 0, 30
    fadds 0, 0, 29
    fsubs 0, 0, 28
    stfs 0, 0x5c(27)
    lwz 3, 0x44(27)
    lfs 1, 0x58(27)
    lfs 2, 0x5c(27)
    bl fn_80402E08
L_803D757C:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    lmw 24, 0x10(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_803D75B0:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stmw 22, 0x98(1)
    mr 30, 3
    lis 3, lbl_80476F80@ha
    lbz 0, 0x80(30)
    addi 31, 3, lbl_80476F80@l
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803D75FC
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    lbz 4, 0x78(30)
    bl fn_80431174
L_803D75FC:
    lbz 0, 0x7f(30)
    cmpwi 0, 0x2
    .4byte 0x41820164 # beq .L_803D7768
    .4byte 0x40800014 # bge .L_803D761C
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_803D762C
    .4byte 0x40800024 # bge .L_803D7638
    .4byte 0x480002B4 # b .L_803D78CC
L_803D761C:
    cmpwi 0, 0x4
    .4byte 0x4182024C # beq .L_803D786C
    .4byte 0x408002A8 # bge .L_803D78CC
    .4byte 0x48000184 # b .L_803D77AC
L_803D762C:
    mr 3, 30
    bl fn_803D7098
    .4byte 0x48000298 # b .L_803D78CC
L_803D7638:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_803D7688
    lbz 3, 0x78(30)
    cmplwi 3, 0x0
    .4byte 0x41820274 # beq .L_803D78CC
    subi 3, 3, 0x1
    li 0, 0x1
    stb 3, 0x78(30)
    li 4, 0x26
    li 5, -0x1
    lbz 3, 0x78(30)
    stb 3, 0x79(30)
    sth 0, 0x6e(30)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000248 # b .L_803D78CC
L_803D7688:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_803D76D8
    lbz 3, 0x78(30)
    cmplwi 3, 0x1
    .4byte 0x40800224 # bge .L_803D78CC
    addi 3, 3, 0x1
    li 0, 0x1
    stb 3, 0x78(30)
    li 4, 0x26
    li 5, -0x1
    lbz 3, 0x78(30)
    stb 3, 0x79(30)
    sth 0, 0x6e(30)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480001F8 # b .L_803D78CC
L_803D76D8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x418201E0 # beq .L_803D78CC
    li 3, 0x0
    li 0, 0x2
    sth 3, 0x72(30)
    stb 0, 0x7a(30)
    lbz 0, 0x78(30)
    stb 0, 0x79(30)
    lbz 0, 0x78(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_803D7730
    li 0, 0x8
    li 4, 0xb
    stb 0, 0x76(30)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000030 # b .L_803D775C
L_803D7730:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    addi 6, 30, 0x78
    li 4, 0x10b
    li 5, 0x0
    bl fn_80431A9C
    li 0, 0x2
    li 4, 0xc
    stb 0, 0x7f(30)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803D775C:
    li 0, 0x1
    sth 0, 0x6e(30)
    .4byte 0x48000168 # b .L_803D78CC
L_803D7768:
    lbz 3, 0x81(30)
    cmplwi 3, 0x48
    .4byte 0x40810010 # ble .L_803D7780
    li 0, 0x50
    stb 0, 0x81(30)
    .4byte 0x4800000C # b .L_803D7788
L_803D7780:
    addi 0, 3, 0x8
    stb 0, 0x81(30)
L_803D7788:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804317AC
    cmpwi 3, 0x0
    .4byte 0x41820138 # beq .L_803D78CC
    li 3, 0x50
    li 0, 0x3
    stb 3, 0x81(30)
    stb 0, 0x7f(30)
    .4byte 0x48000124 # b .L_803D78CC
L_803D77AC:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    lbz 4, 0x78(30)
    bl fn_80431174
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x2
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803D77F8
    lbz 0, 0x78(30)
    cmplwi 0, 0x0
    .4byte 0x408200F4 # bne .L_803D78CC
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x78(30)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x480000D8 # b .L_803D78CC
L_803D77F8:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1
    li 5, -0x1
    bl fn_80309A9C
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_803D7838
    lbz 0, 0x78(30)
    cmplwi 0, 0x1
    .4byte 0x408200B4 # bne .L_803D78CC
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x78(30)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000098 # b .L_803D78CC
L_803D7838:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1100
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820080 # beq .L_803D78CC
    li 0, 0x4
    li 4, 0xb
    stb 0, 0x7f(30)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x48000064 # b .L_803D78CC
L_803D786C:
    lbz 3, 0x81(30)
    cmplwi 3, 0x8
    .4byte 0x40800010 # bge .L_803D7884
    li 0, 0x0
    stb 0, 0x81(30)
    .4byte 0x4800000C # b .L_803D788C
L_803D7884:
    subi 0, 3, 0x8
    stb 0, 0x81(30)
L_803D788C:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x41820034 # beq .L_803D78CC
    li 0, 0x0
    stb 0, 0x81(30)
    lbz 0, 0x78(30)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_803D78C4
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310BC
    li 0, 0x7
    stb 0, 0x76(30)
    .4byte 0x4800000C # b .L_803D78CC
L_803D78C4:
    li 0, 0x1
    stb 0, 0x7f(30)
L_803D78CC:
    lha 0, 0x70(30)
    cmpwi 0, 0x0
    .4byte 0x41820834 # beq .L_803D8108
    lwz 3, 0x64(30)
    addi 0, 3, 0x1
    stw 0, 0x64(30)
    lwz 0, 0x64(30)
    cmpwi 0, 0x8c
    .4byte 0x4180000C # blt .L_803D78F8
    li 0, 0x14
    stw 0, 0x64(30)
L_803D78F8:
    lbz 0, 0x7e(30)
    cmplwi 0, 0x0
    .4byte 0x408204EC # bne .L_803D7DEC
    lwz 3, 0x64(30)
    cmpwi 3, 0x14
    .4byte 0x41810388 # bgt .L_803D7C94
    lha 0, 0x6a(30)
    cmpwi 0, 0x0
    .4byte 0x418004D4 # blt .L_803D7DEC
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x74(1)
    lis 4, 0x6b61
    lwz 3, 0x8(30)
    addi 6, 4, 0x3030
    stw 0, 0x70(1)
    li 5, 0x5030
    .4byte 0xC84205B8 # lfd f2, lbl_80543558@sda21(r0)
    lfd 1, 0x70(1)
    .4byte 0xC00205A0 # lfs f0, lbl_80543540@sda21(r0)
    fsubs 1, 1, 2
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    fdivs 30, 1, 0
    mtctr 12
    bctrl
    lbz 4, 0x7b(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x7c(1)
    .4byte 0xC82205C0 # lfd f1, lbl_80543560@sda21(r0)
    stw 0, 0x78(1)
    lwz 12, 0x24(12)
    lfd 0, 0x78(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 4, 0x84(1)
    mtctr 12
    bctrl
    lwz 3, 0x4(30)
    addi 4, 31, 0x0
    lha 5, 0x68(30)
    lha 0, 0x6a(30)
    lwz 12, 0x0(3)
    slwi 5, 5, 7
    slwi 0, 0, 3
    add 0, 5, 0
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x18
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lwz 0, 0x18(1)
    addi 4, 31, 0x0
    stw 0, 0x1c(1)
    lwz 3, 0x4(30)
    lha 5, 0x68(30)
    lha 0, 0x6a(30)
    lwz 12, 0x0(3)
    slwi 5, 5, 7
    slwi 0, 0, 3
    add 0, 5, 0
    lwz 12, 0x3c(12)
    add 6, 4, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x20
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lwz 0, 0x20(1)
    lis 3, 0x6b61
    addi 6, 3, 0x3030
    li 5, 0x5030
    stw 0, 0x24(1)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(30)
    li 7, -0x1
    lha 5, 0x68(30)
    addi 4, 31, 0x0
    lha 0, 0x6a(30)
    lwz 12, 0x0(3)
    slwi 5, 5, 7
    slwi 0, 0, 3
    stw 7, 0x5c(1)
    add 0, 5, 0
    lwz 12, 0x3c(12)
    add 6, 4, 0
    stw 7, 0x60(1)
    lwz 5, 0x0(6)
    stw 7, 0x64(1)
    lwz 6, 0x4(6)
    stw 7, 0x68(1)
    mtctr 12
    bctrl
    lbz 12, 0x150(3)
    lis 4, 0x6b61
    lbz 22, 0x151(3)
    addi 6, 4, 0x3030
    lbz 23, 0x152(3)
    li 5, 0x5030
    lbz 8, 0x153(3)
    lbz 24, 0x154(3)
    lbz 25, 0x155(3)
    lbz 26, 0x156(3)
    lbz 7, 0x157(3)
    lbz 27, 0x158(3)
    lbz 28, 0x159(3)
    lbz 29, 0x15a(3)
    lbz 4, 0x15b(3)
    lbz 11, 0x15c(3)
    lbz 10, 0x15d(3)
    lbz 9, 0x15e(3)
    lbz 0, 0x15f(3)
    lwz 3, 0x8(30)
    stb 12, 0x5c(1)
    lwz 12, 0x0(3)
    stb 22, 0x5d(1)
    lwz 12, 0x3c(12)
    stb 23, 0x5e(1)
    stb 8, 0x5f(1)
    lwz 8, 0x5c(1)
    stb 24, 0x60(1)
    stb 25, 0x61(1)
    stb 26, 0x62(1)
    stb 7, 0x63(1)
    lwz 7, 0x60(1)
    stb 27, 0x64(1)
    stb 28, 0x65(1)
    stb 29, 0x66(1)
    stb 4, 0x67(1)
    lwz 4, 0x64(1)
    stb 11, 0x68(1)
    stb 10, 0x69(1)
    stb 9, 0x6a(1)
    stb 0, 0x6b(1)
    lwz 0, 0x68(1)
    stw 8, 0x4c(1)
    stw 7, 0x50(1)
    stw 4, 0x54(1)
    stw 0, 0x58(1)
    mtctr 12
    bctrl
    lwz 0, 0x4c(1)
    lis 5, 0x6172
    lwz 7, 0x50(1)
    lis 4, 0x50
    stw 0, 0x8(1)
    addi 6, 5, 0x6c69
    lwz 8, 0x54(1)
    addi 5, 4, 0x7374
    lbz 4, 0x8(1)
    stw 7, 0xc(1)
    lbz 0, 0x9(1)
    stb 4, 0x150(3)
    lbz 4, 0xa(1)
    stb 0, 0x151(3)
    lbz 0, 0xb(1)
    stb 4, 0x152(3)
    lbz 4, 0xc(1)
    stb 0, 0x153(3)
    lbz 0, 0xd(1)
    stb 4, 0x154(3)
    lbz 4, 0xe(1)
    stb 0, 0x155(3)
    lbz 0, 0xf(1)
    stw 8, 0x10(1)
    lwz 8, 0x58(1)
    stb 4, 0x156(3)
    lbz 4, 0x10(1)
    stb 0, 0x157(3)
    lbz 0, 0x11(1)
    stb 4, 0x158(3)
    lbz 7, 0x12(1)
    stw 8, 0x14(1)
    lbz 4, 0x13(1)
    stb 0, 0x159(3)
    lbz 0, 0x14(1)
    stb 7, 0x15a(3)
    lbz 7, 0x15(1)
    stb 4, 0x15b(3)
    lbz 4, 0x16(1)
    stb 0, 0x15c(3)
    lbz 0, 0x17(1)
    stb 7, 0x15d(3)
    stb 4, 0x15e(3)
    stb 0, 0x15f(3)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x7d(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x8c(1)
    .4byte 0xC82205C0 # lfd f1, lbl_80543560@sda21(r0)
    stw 0, 0x88(1)
    lwz 12, 0x24(12)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 4, 0x94(1)
    mtctr 12
    bctrl
    .4byte 0x4800015C # b .L_803D7DEC
L_803D7C94:
    cmpwi 3, 0x28
    .4byte 0x4181014C # bgt .L_803D7DE4
    subi 3, 3, 0x14
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x90(1)
    .4byte 0xC84205B8 # lfd f2, lbl_80543558@sda21(r0)
    addi 23, 31, 0x200
    stw 3, 0x94(1)
    li 24, 0x0
    .4byte 0xC00205A0 # lfs f0, lbl_80543540@sda21(r0)
    lfd 1, 0x90(1)
    fsubs 1, 1, 2
    fdivs 30, 1, 0
L_803D7CCC:
    li 25, 0x0
    mr 22, 23
L_803D7CD4:
    lwz 3, 0x4(30)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_803D7D54
    lwz 3, 0x4(30)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x7c(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x94(1)
    .4byte 0xC82205C0 # lfd f1, lbl_80543560@sda21(r0)
    stw 0, 0x90(1)
    lwz 12, 0x24(12)
    lfd 0, 0x90(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 4, 0x8c(1)
    mtctr 12
    bctrl
L_803D7D54:
    addi 25, 25, 0x1
    addi 22, 22, 0x8
    cmpwi 25, 0x10
    .4byte 0x4180FF74 # blt .L_803D7CD4
    addi 24, 24, 0x1
    addi 23, 23, 0x80
    cmpwi 24, 0x4
    .4byte 0x4180FF5C # blt .L_803D7CCC
    lha 0, 0x6a(30)
    cmpwi 0, 0x0
    .4byte 0x41800070 # blt .L_803D7DEC
    lwz 3, 0x8(30)
    lis 5, 0x616b
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3030
    addi 5, 4, 0x306b
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0x7c(30)
    lis 0, 0x4330
    lwz 12, 0x0(3)
    stw 4, 0x94(1)
    .4byte 0xC82205C0 # lfd f1, lbl_80543560@sda21(r0)
    stw 0, 0x90(1)
    lwz 12, 0x24(12)
    lfd 0, 0x90(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 4, 0x8c(1)
    mtctr 12
    bctrl
    .4byte 0x4800000C # b .L_803D7DEC
L_803D7DE4:
    li 0, 0x1
    stb 0, 0x7e(30)
L_803D7DEC:
    lha 0, 0x6a(30)
    cmpwi 0, 0x0
    .4byte 0x41800314 # blt .L_803D8108
    lwz 3, 0x8(30)
    lis 4, 0x6b61
    addi 6, 4, 0x3030
    li 5, 0x5030
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x6b61
    lfs 0, 0x20(3)
    addi 6, 4, 0x3030
    lwz 3, 0x8(30)
    li 5, 0x5030
    fsubs 30, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x616b
    lwz 3, 0x8(30)
    lis 4, 0x50
    addi 6, 5, 0x3030
    lwz 12, 0x0(3)
    addi 5, 4, 0x306b
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 3, 0x6b61
    lfs 0, 0x58(30)
    addi 6, 3, 0x3030
    lwz 3, 0x8(30)
    li 5, 0x5030
    fadds 1, 0, 1
    .4byte 0xC00205A4 # lfs f0, lbl_80543544@sda21(r0)
    lwz 12, 0x0(3)
    fadds 1, 1, 31
    lwz 12, 0x3c(12)
    fmadds 29, 30, 0, 1
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x6b61
    lfs 0, 0x24(3)
    addi 6, 4, 0x3030
    lwz 3, 0x8(30)
    li 5, 0x5030
    fsubs 30, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x616b
    lwz 3, 0x8(30)
    lis 4, 0x50
    addi 6, 5, 0x3030
    lwz 12, 0x0(3)
    addi 5, 4, 0x306b
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lfs 0, 0x5c(30)
    lwz 0, 0x64(30)
    fadds 1, 0, 1
    .4byte 0xC00205A4 # lfs f0, lbl_80543544@sda21(r0)
    cmpwi 0, 0x50
    fadds 1, 1, 31
    fmadds 30, 30, 0, 1
    .4byte 0x4082005C # bne .L_803D7F84
    lwz 0, 0x54(30)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_803D7F84
    .4byte 0xC0020594 # lfs f0, lbl_80543534@sda21(r0)
    addi 4, 1, 0x40
    stfs 29, 0x40(1)
    li 3, 0x0
    .4byte 0xC02205A8 # lfs f1, lbl_80543548@sda21(r0)
    li 5, 0x4d0
    stfs 30, 0x44(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x48(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x54(30)
    lwz 3, 0x54(30)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_803D7F84:
    lwz 5, 0x64(30)
    lis 0, 0x4330
    lis 4, 0x616b
    lis 3, 0x50
    xoris 5, 5, 0x8000
    stw 0, 0x90(1)
    .4byte 0xC82205B8 # lfd f1, lbl_80543558@sda21(r0)
    addi 6, 4, 0x3030
    stw 5, 0x94(1)
    addi 5, 3, 0x306b
    lwz 3, 0x10(30)
    lfd 0, 0x90(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80096B84
    lwz 0, 0x64(30)
    cmpwi 0, 0x1
    .4byte 0x408100CC # ble .L_803D80A8
    cmpwi 0, 0x14
    .4byte 0x408000C4 # bge .L_803D80A8
    lwz 0, 0x4c(30)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_803D8030
    .4byte 0xC0020594 # lfs f0, lbl_80543534@sda21(r0)
    addi 4, 1, 0x34
    stfs 29, 0x34(1)
    li 3, 0x0
    .4byte 0xC02205A8 # lfs f1, lbl_80543548@sda21(r0)
    li 5, 0x4cf
    stfs 30, 0x38(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x3c(1)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x4c(30)
L_803D8030:
    lwz 3, 0x4c(30)
    .4byte 0xC0020594 # lfs f0, lbl_80543534@sda21(r0)
    stfs 29, 0xa4(3)
    stfs 30, 0xa8(3)
    stfs 0, 0xac(3)
    lwz 0, 0x64(30)
    cmpwi 0, 0x13
    .4byte 0x40820084 # bne .L_803D80D0
    lwz 0, 0x50(30)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_803D80D0
    stfs 29, 0x28(1)
    addi 4, 1, 0x28
    .4byte 0xC02205A8 # lfs f1, lbl_80543548@sda21(r0)
    li 3, 0x0
    stfs 30, 0x2c(1)
    li 5, 0x4d1
    li 6, 0x0
    li 7, 0x0
    stfs 0, 0x30(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x50(30)
    lwz 3, 0x50(30)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x4800002C # b .L_803D80D0
L_803D80A8:
    lwz 5, 0x4c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_803D80D0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x4c(30)
L_803D80D0:
    lwz 0, 0x64(30)
    cmpwi 0, 0x14
    .4byte 0x41800030 # blt .L_803D8108
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x94(1)
    .4byte 0xC82205B8 # lfd f1, lbl_80543558@sda21(r0)
    stw 0, 0x90(1)
    lwz 3, 0x18(30)
    lfd 0, 0x90(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
    lwz 3, 0x8(30)
    bl fn_8009DB58
L_803D8108:
    lha 3, 0x68(30)
    extsh. 0, 3
    .4byte 0x418000B4 # blt .L_803D81C4
    cmpwi 3, 0x4
    .4byte 0x408000AC # bge .L_803D81C4
    lha 3, 0x74(30)
    addi 0, 3, 0x1
    sth 0, 0x74(30)
    lha 0, 0x74(30)
    cmpwi 0, 0x78
    .4byte 0x4180000C # blt .L_803D813C
    li 0, 0x0
    sth 0, 0x74(30)
L_803D813C:
    lha 0, 0x74(30)
    cmpwi 0, 0x3c
    subfic 29, 0, 0x78
    .4byte 0x40800008 # bge .L_803D8150
    mr 29, 0
L_803D8150:
    lwz 3, 0x4(30)
    addi 0, 31, 0x400
    lha 4, 0x68(30)
    lwz 12, 0x0(3)
    slwi 4, 4, 3
    lwz 12, 0x3c(12)
    add 6, 0, 4
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    xoris 4, 29, 0x8000
    lis 0, 0x4330
    stw 4, 0x94(1)
    lwz 12, 0x0(3)
    stw 0, 0x90(1)
    .4byte 0xC84205B8 # lfd f2, lbl_80543558@sda21(r0)
    lfd 1, 0x90(1)
    .4byte 0xC00205B0 # lfs f0, lbl_80543550@sda21(r0)
    fsubs 1, 1, 2
    .4byte 0xC04205AC # lfs f2, lbl_8054354C@sda21(r0)
    lwz 12, 0x24(12)
    fdivs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 4, 0x8c(1)
    mtctr 12
    bctrl
L_803D81C4:
    lbz 0, 0x80(30)
    cmplwi 0, 0x2
    .4byte 0x40820048 # bne .L_803D8214
    lbz 3, 0x81(30)
    cmplwi 3, 0x48
    .4byte 0x40810010 # ble .L_803D81E8
    li 0, 0x50
    stb 0, 0x81(30)
    .4byte 0x4800000C # b .L_803D81F0
L_803D81E8:
    addi 0, 3, 0x8
    stb 0, 0x81(30)
L_803D81F0:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804317AC
    cmpwi 3, 0x0
    .4byte 0x4182005C # beq .L_803D8258
    li 3, 0x50
    li 0, 0x1
    stb 3, 0x81(30)
    stb 0, 0x80(30)
    .4byte 0x48000048 # b .L_803D8258
L_803D8214:
    cmplwi 0, 0x3
    .4byte 0x40820040 # bne .L_803D8258
    lbz 3, 0x81(30)
    cmplwi 3, 0x8
    .4byte 0x40800010 # bge .L_803D8234
    li 0, 0x0
    stb 0, 0x81(30)
    .4byte 0x4800000C # b .L_803D823C
L_803D8234:
    subi 0, 3, 0x8
    stb 0, 0x81(30)
L_803D823C:
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_80431740
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D8258
    li 0, 0x0
    stb 0, 0x81(30)
    stb 0, 0x80(30)
L_803D8258:
    li 23, 0x1
    addi 22, 30, 0x4
L_803D8260:
    lwz 5, 0x4c(22)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_803D82B0
    lwz 0, 0xf4(5)
    li 4, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_803D8290
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_803D8290
    li 4, 0x1
L_803D8290:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_803D82B0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x4c(22)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x4c(22)
L_803D82B0:
    addi 23, 23, 0x1
    addi 22, 22, 0x4
    cmpwi 23, 0x3
    .4byte 0x4180FFA4 # blt .L_803D8260
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    lmw 22, 0x98(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_803D82EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0x1c(31)
    lbz 4, 0x77(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x1c(31)
    li 4, 0x0
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC06205C8 # lfs f3, lbl_80543568@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC08205CC # lfs f4, lbl_8054356C@sda21(r0)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803D8364:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 3, 0x7f(3)
    cmplwi 3, 0x1
    .4byte 0x4182001C # beq .L_803D83AC
    subi 0, 3, 0x2
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_803D83AC
    cmplwi 3, 0x4
    .4byte 0x408202A4 # bne .L_803D864C
L_803D83AC:
    lha 3, 0x6e(31)
    .4byte 0xC3E20594 # lfs f31, lbl_80543534@sda21(r0)
    extsh. 0, 3
    .4byte 0x40810078 # ble .L_803D8430
    cmpwi 3, 0x1
    .4byte 0x4082000C # bne .L_803D83CC
    li 0, 0x1e
    sth 0, 0x6c(31)
L_803D83CC:
    lha 4, 0x6e(31)
    cmpwi 4, 0x5
    subfic 0, 4, 0xa
    .4byte 0x40800008 # bge .L_803D83E0
    mr 0, 4
L_803D83E0:
    mullw 3, 0, 0
    lis 0, 0x4330
    stw 0, 0x8(1)
    cmpwi 4, 0xa
    .4byte 0xC84205B8 # lfd f2, lbl_80543558@sda21(r0)
    .4byte 0xC06205D0 # lfs f3, lbl_80543570@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC00205D4 # lfs f0, lbl_80543574@sda21(r0)
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 31, 1, 0
    .4byte 0x40800014 # bge .L_803D8428
    lha 3, 0x6e(31)
    addi 0, 3, 0x1
    sth 0, 0x6e(31)
    .4byte 0x4800000C # b .L_803D8430
L_803D8428:
    li 0, 0x0
    sth 0, 0x6e(31)
L_803D8430:
    lha 3, 0x6c(31)
    addi 0, 3, 0x1
    sth 0, 0x6c(31)
    lha 0, 0x6c(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_803D8450
    li 0, 0x0
    sth 0, 0x6c(31)
L_803D8450:
    lbz 0, 0x7f(31)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_803D846C
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_803D846C
    cmplwi 0, 0x4
    .4byte 0x4082005C # bne .L_803D84C4
L_803D846C:
    lwz 3, 0x20(31)
    lbz 4, 0x81(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x20(31)
    li 4, 0x0
    .4byte 0xC02205D8 # lfs f1, lbl_80543578@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC06205DC # lfs f3, lbl_8054357C@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC08205E0 # lfs f4, lbl_80543580@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804316EC
    .4byte 0xC3C205E4 # lfs f30, lbl_80543584@sda21(r0)
    .4byte 0x48000120 # b .L_803D85E0
L_803D84C4:
    lha 3, 0x6c(31)
    cmpwi 3, 0x1e
    .4byte 0x40800038 # bge .L_803D8504
    mullw 3, 3, 3
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC84205B8 # lfd f2, lbl_80543558@sda21(r0)
    .4byte 0xC00205E8 # lfs f0, lbl_80543588@sda21(r0)
    .4byte 0xC06205E4 # lfs f3, lbl_80543584@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 30, 3, 0
    .4byte 0x48000040 # b .L_803D8540
L_803D8504:
    subi 3, 3, 0x1e
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x8(1)
    .4byte 0xC84205B8 # lfd f2, lbl_80543558@sda21(r0)
    .4byte 0xC00205E8 # lfs f0, lbl_80543588@sda21(r0)
    .4byte 0xC06205A8 # lfs f3, lbl_80543548@sda21(r0)
    .4byte 0xC08205E4 # lfs f4, lbl_80543584@sda21(r0)
    xoris 0, 3, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fsubs 0, 3, 0
    fmuls 30, 4, 0
L_803D8540:
    lbz 0, 0x79(31)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_803D8580
    fmr 2, 31
    lwz 3, 0x2c(31)
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    bl fn_80402E08
    fmr 2, 31
    lwz 3, 0x24(31)
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    bl fn_80402E08
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    lwz 3, 0x28(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0x48000044 # b .L_803D85C0
L_803D8580:
    lwz 4, 0x28(31)
    fmr 2, 31
    lwz 3, 0x24(31)
    lfs 1, 0x8(4)
    lfs 0, 0x8(3)
    lwz 3, 0x2c(31)
    fsubs 1, 1, 0
    bl fn_80402E08
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    lwz 3, 0x24(31)
    fmr 2, 1
    bl fn_80402E08
    fmr 2, 31
    lwz 3, 0x28(31)
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    bl fn_80402E08
L_803D85C0:
    .4byte 0xC0020594 # lfs f0, lbl_80543534@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x40820018 # bne .L_803D85E0
    lbz 0, 0x79(31)
    lbz 3, 0x78(31)
    cmplw 0, 3
    .4byte 0x41820008 # beq .L_803D85E0
    stb 3, 0x79(31)
L_803D85E0:
    lwz 3, 0x2c(31)
    fctiwz 0, 30
    lwz 3, 0x4(3)
    stfd 0, 0x8(1)
    lwz 12, 0x0(3)
    lwz 4, 0xc(1)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    fctiwz 0, 30
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440EE8
L_803D864C:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 0, 0x44(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_803D8670:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 3, 0x1c(31)
    lbz 4, 0x77(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x1c(31)
    li 4, 0x0
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC06205C8 # lfs f3, lbl_80543568@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC08205CC # lfs f4, lbl_8054356C@sda21(r0)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803D8718:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x76(3)
    cmpwi 0, 0x5
    .4byte 0x41820048 # beq .L_803D8774
    .4byte 0x40800010 # bge .L_803D8740
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_803D87AC
    .4byte 0x48000074 # b .L_803D87B0
L_803D8740:
    cmpwi 0, 0x7
    .4byte 0x4080006C # bge .L_803D87B0
    lbz 4, 0x77(3)
    cmplwi 4, 0xf5
    .4byte 0x41800018 # blt .L_803D8768
    li 4, 0xff
    li 0, 0x5
    stb 4, 0x77(3)
    stb 0, 0x76(3)
    .4byte 0x4800004C # b .L_803D87B0
L_803D8768:
    addi 0, 4, 0xa
    stb 0, 0x77(3)
    .4byte 0x48000040 # b .L_803D87B0
L_803D8774:
    lbz 4, 0x77(3)
    cmplwi 4, 0xa
    .4byte 0x41810024 # bgt .L_803D87A0
    li 0, 0x0
    li 5, 0x1
    stb 0, 0x77(3)
    li 0, 0x2
    .4byte 0x808D91A8 # lwz r4, lbl_8053AD68@sda21(r0)
    stb 5, 0x1d(4)
    stb 0, 0x76(3)
    .4byte 0x48000014 # b .L_803D87B0
L_803D87A0:
    subi 0, 4, 0xa
    stb 0, 0x77(3)
    .4byte 0x48000008 # b .L_803D87B0
L_803D87AC:
    bl fn_803D75B0
L_803D87B0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803D87C0:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_80476F80@ha
    stw 0, 0x44(1)
    stmw 18, 0x8(1)
    mr 18, 3
    addi 29, 4, lbl_80476F80@l
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310CC
    addi 19, 29, 0x420
    addi 20, 29, 0x438
    addi 21, 29, 0x450
    li 22, 0x0
L_803D87F4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    subi 0, 3, 0x1
    cmpw 22, 0
    .4byte 0x41800074 # blt .L_803D8878
    lwz 3, 0x4(18)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(20)
    stb 0, 0xb0(3)
    lwz 6, 0x4(20)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000070 # b .L_803D88E4
L_803D8878:
    lwz 3, 0x4(18)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(20)
    stb 0, 0xb0(3)
    lwz 6, 0x4(20)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(21)
    stb 0, 0xb0(3)
    lwz 6, 0x4(21)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_803D88E4:
    addi 22, 22, 0x1
    addi 20, 20, 0x8
    cmpwi 22, 0x3
    addi 21, 21, 0x8
    addi 19, 19, 0x8
    .4byte 0x4180FEFC # blt .L_803D87F4
    lis 3, lbl_80529DEC@ha
    addi 23, 29, 0x468
    addi 30, 3, lbl_80529DEC@l
    addi 22, 29, 0x400
    mr 24, 30
    addi 21, 29, 0x0
    addi 20, 29, 0x200
    li 19, 0x0
L_803D891C:
    li 0, 0x1
    lbz 3, 0x243(30)
    slw 0, 0, 19
    lwz 27, 0x140(24)
    clrlwi 31, 0, 24
    and 3, 3, 31
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820054 # beq .L_803D8994
    sth 19, 0x68(18)
    lwz 5, 0x0(23)
    lwz 3, 0x4(18)
    lwz 6, 0x4(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800004C # b .L_803D89DC
L_803D8994:
    lwz 3, 0x4(18)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(22)
    stb 0, 0xb0(3)
    lwz 6, 0x4(22)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803D89DC:
    mr 26, 21
    mr 25, 20
    li 28, 0x0
L_803D89E8:
    cmpw 28, 27
    .4byte 0x408000F8 # bge .L_803D8AE4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x82(3)
    and. 0, 0, 31
    .4byte 0x418200E8 # beq .L_803D8AE4
    lbz 0, 0x243(30)
    and. 0, 0, 31
    .4byte 0x41820060 # beq .L_803D8A68
    subi 0, 27, 0x1
    cmpw 28, 0
    .4byte 0x40820054 # bne .L_803D8A68
    sth 28, 0x6a(18)
    lwz 5, 0x0(26)
    lwz 3, 0x4(18)
    lwz 6, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x480000C8 # b .L_803D8B2C
L_803D8A68:
    lwz 3, 0x4(18)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800004C # b .L_803D8B2C
L_803D8AE4:
    lwz 3, 0x4(18)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(25)
    stb 0, 0xb0(3)
    lwz 6, 0x4(25)
    lwz 3, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803D8B2C:
    addi 28, 28, 0x1
    addi 25, 25, 0x8
    cmpwi 28, 0x10
    addi 26, 26, 0x8
    .4byte 0x4180FEAC # blt .L_803D89E8
    addi 19, 19, 0x1
    addi 23, 23, 0x8
    cmpwi 19, 0x4
    addi 22, 22, 0x8
    addi 21, 21, 0x80
    addi 20, 20, 0x80
    addi 24, 24, 0x4
    .4byte 0x4180FDC0 # blt .L_803D891C
    lwz 3, 0x8(18)
    lis 5, 0x616b
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3030
    addi 5, 4, 0x306b
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(18)
    lis 4, 0x6b61
    addi 6, 4, 0x3030
    li 5, 0x5030
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(18)
    lis 5, 0x6172
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x6c69
    addi 5, 4, 0x7374
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x30(18)
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    .4byte 0xC0420590 # lfs f2, lbl_80543530@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x30(18)
    li 0, 0x0
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    sth 0, 0x22(3)
    .4byte 0xC0420590 # lfs f2, lbl_80543530@sda21(r0)
    lwz 3, 0x48(18)
    bl fn_80402E08
    lwz 3, 0x48(18)
    li 19, 0x0
    mr 20, 18
    li 21, 0x0
    sth 19, 0x22(3)
L_803D8C44:
    lwz 3, 0x34(20)
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    .4byte 0xC0420598 # lfs f2, lbl_80543538@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x34(20)
    addi 21, 21, 0x1
    cmpwi 21, 0x4
    addi 20, 20, 0x4
    sth 19, 0x22(3)
    .4byte 0x4180FFDC # blt .L_803D8C44
    lis 3, 0x5449
    addi 4, 29, 0x4a8
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    mr 4, 0
    bl fn_80440D78
    lis 3, 0x5449
    addi 4, 29, 0x4bc
    addi 3, 3, 0x4d47
    bl fn_804030C4
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    li 4, 0x0
    bl fn_80440BF4
    lwz 3, 0x2c(18)
    li 0, 0x0
    li 4, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x2c(18)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(18)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    mr 19, 18
    li 20, 0x0
    li 18, 0x0
L_803D8D18:
    lwz 3, 0x24(19)
    .4byte 0xC0220594 # lfs f1, lbl_80543534@sda21(r0)
    .4byte 0xC042059C # lfs f2, lbl_8054353C@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x24(19)
    addi 20, 20, 0x1
    cmpwi 20, 0x2
    addi 19, 19, 0x4
    sth 18, 0x22(3)
    .4byte 0x4180FFDC # blt .L_803D8D18
    li 0, 0x0
    lis 3, 0x100
    stb 0, 0x243(30)
    addi 4, 3, 0x5
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    lmw 18, 0x8(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

