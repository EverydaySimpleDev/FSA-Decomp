# fn_8045589C (dtor) + fn_80455930 (real ctor, direct vtable-install) - a
# DIFFERENT class from the "attachment resolver" family (vtable
# lbl_804B1E1C, does NOT reuse lbl_804AF86C). The ctor placement-
# constructs a 128-element array (this+0x30, stride 0x14, via the shared
# __construct_array array-ctor idiom) then iterates a name-tag table
# (lbl_804B1DF0, .rodata) resolving each tag via fn_804030C4 and
# allocating+placement-constructing a 0x168-byte sub-object per tag
# (fn_80084370 + fn_80097800) - a "named resource pool/cache" pattern,
# distinct from the joint-lookup shape used elsewhere in this gap.
.section extab, "a"
.balign 4
.global etb_800115CC
etb_800115CC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800115CC, 8

.global etb_800115D4
etb_800115D4:
    .4byte 0x38080000
    .4byte 0x0000007C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A800019
    .4byte dtor_80084580
.size etb_800115D4, 24

.section extabindex, "a"
.balign 4
.global eti_8002155C
eti_8002155C:
    .4byte fn_8045589C
    .4byte 0x00000094
    .4byte etb_800115CC
.size eti_8002155C, 12

.global eti_80021568
eti_80021568:
    .4byte fn_80455930
    .4byte 0x00000144
    .4byte etb_800115D4
.size eti_80021568, 12

.text
.balign 4
.global fn_8045589C
.global fn_80455930

fn_8045589C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820064 # beq .L_80455918
    lis 3, lbl_804B1E1C@ha
    mr 30, 27
    addi 0, 3, lbl_804B1E1C@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
L_804558D0:
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804558F0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804558F0:
    addi 29, 29, 0x1
    stwu 31, 0x4(30)
    cmpwi 29, 0xb
    .4byte 0x4180FFD4 # blt .L_804558D0
    li 3, 0x0
    extsh. 0, 28
    .4byte 0x906D9390 # stw r3, lbl_8053AF50@sda21(r0)
    .4byte 0x4081000C # ble .L_80455918
    mr 3, 27
    bl dtor_80084580
L_80455918:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80455930:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_804B1E1C@ha
    li 5, 0x0
    stw 0, 0x34(1)
    addi 0, 4, lbl_804B1E1C@l
    li 6, 0x14
    li 7, 0x80
    stmw 25, 0x14(1)
    mr 26, 3
    lis 3, SetSentinelField_0xc@ha
    addi 4, 3, SetSentinelField_0xc@l
    addi 3, 26, 0x30
    stw 0, 0x0(26)
    bl __construct_array
    lis 3, lbl_804B1DF0@ha
    mr 29, 26
    addi 30, 3, lbl_804B1DF0@l
    li 27, 0x0
    lis 31, 0x5449
L_80455980:
    lwz 4, 0x0(30)
    addi 3, 31, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 28, 0
    bl fn_80084370
    mr. 25, 3
    .4byte 0x4182000C # beq .L_804559AC
    mr 4, 28
    bl fn_80097800
L_804559AC:
    addi 27, 27, 0x1
    stwu 25, 0x4(29)
    cmpwi 27, 0xb
    addi 30, 30, 0x4
    .4byte 0x4180FFC4 # blt .L_80455980
    li 0, 0x4
    mr 4, 26
    li 3, 0x0
    mtctr 0
L_804559D0:
    stb 3, 0x41(4)
    stb 3, 0x55(4)
    stb 3, 0x69(4)
    stb 3, 0x7d(4)
    stb 3, 0x91(4)
    stb 3, 0xa5(4)
    stb 3, 0xb9(4)
    stb 3, 0xcd(4)
    stb 3, 0xe1(4)
    stb 3, 0xf5(4)
    stb 3, 0x109(4)
    stb 3, 0x11d(4)
    stb 3, 0x131(4)
    stb 3, 0x145(4)
    stb 3, 0x159(4)
    stb 3, 0x16d(4)
    stb 3, 0x181(4)
    stb 3, 0x195(4)
    stb 3, 0x1a9(4)
    stb 3, 0x1bd(4)
    stb 3, 0x1d1(4)
    stb 3, 0x1e5(4)
    stb 3, 0x1f9(4)
    stb 3, 0x20d(4)
    stb 3, 0x221(4)
    stb 3, 0x235(4)
    stb 3, 0x249(4)
    stb 3, 0x25d(4)
    stb 3, 0x271(4)
    stb 3, 0x285(4)
    stb 3, 0x299(4)
    stb 3, 0x2ad(4)
    addi 4, 4, 0x280
    .4byte 0x4200FF7C # bdnz .L_804559D0
    .4byte 0x934D9390 # stw r26, lbl_8053AF50@sda21(r0)
    mr 3, 26
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

