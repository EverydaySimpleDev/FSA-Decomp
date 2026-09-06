# A TWELFTH sibling of the "weapon/joint-attachment resolver" family
# (vtable lbl_804B1C20, dtor fn_80447B34, real ctor fn_80447C30 - direct
# vtable-install) but with 2 EXTRA methods not seen on prior siblings:
# fn_80447618 (0x340) drives 2 attached sub-objects (this+0x8/0x18) via the
# confirmed spatial cue-manager (lbl_8053AB10) and manager calls
# fn_8043D514/fn_8043D57C/fn_80402E08 (the latter already confirmed as
# "non-actor manager" code from earlier manager-stretch findings).
# fn_80447958 (0x48) queries the cue-manager (fn_8013B490) then compares
# this->0x4 against a threshold via fn_8009D340.
# fn_804479A0 (0x194) iterates 2 slots, clearing a bit on this->0x2c per
# iteration, resolves a "TIMG" 4-char-tag-shaped constant via fn_804030C4,
# then makes 2 chained real virtual calls (vtable slots 0x3c then 0x110)
# on the result - not traced to exact semantics (out of scope).
.section extab, "a"
.balign 4
.global etb_80011344
etb_80011344:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80011344, 8

.global etb_8001134C
etb_8001134C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001134C, 8

.global etb_80011354
etb_80011354:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80011354, 8

.global etb_8001135C
etb_8001135C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8001135C, 8

.global etb_80011364
etb_80011364:
    .4byte 0x20080000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_80011364, 24

.section extabindex, "a"
.balign 4
.global eti_80021280
eti_80021280:
    .4byte fn_80447618
    .4byte 0x00000340
    .4byte etb_80011344
.size eti_80021280, 12

.global eti_8002128C
eti_8002128C:
    .4byte fn_80447958
    .4byte 0x00000048
    .4byte etb_8001134C
.size eti_8002128C, 12

.global eti_80021298
eti_80021298:
    .4byte fn_804479A0
    .4byte 0x00000194
    .4byte etb_80011354
.size eti_80021298, 12

.global eti_800212A4
eti_800212A4:
    .4byte fn_80447B34
    .4byte 0x000000FC
    .4byte etb_8001135C
.size eti_800212A4, 12

.global eti_800212B0
eti_800212B0:
    .4byte fn_80447C30
    .4byte 0x00000158
    .4byte etb_80011364
.size eti_800212B0, 12

.text
.balign 4
.global fn_80447618
.global fn_80447958
.global fn_804479A0
.global fn_80447B34
.global fn_80447C30

fn_80447618:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_80490410@ha
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 28, 3
    addi 30, 4, lbl_80490410@l
    li 29, 0x0
    mr 31, 28
L_8044763C:
    cmpwi 29, 0x2
    .4byte 0x40800038 # bge .L_80447678
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x8(31)
    .4byte 0xC0220DF8 # lfs f1, lbl_80543D98@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x18(31)
    .4byte 0xC0220DF8 # lfs f1, lbl_80543D98@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000034 # b .L_804476A8
L_80447678:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x8(31)
    .4byte 0xC0220DF8 # lfs f1, lbl_80543D98@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x18(31)
    .4byte 0xC0220DF8 # lfs f1, lbl_80543D98@sda21(r0)
    bl fn_80402E08
L_804476A8:
    li 0, 0x1
    lbz 3, 0x2c(28)
    slw 0, 0, 29
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820078 # beq .L_80447734
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_804477A4
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x68(30)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(30)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000074 # b .L_804477A4
L_80447734:
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_804477A4
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x68(30)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(30)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_804477A4:
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820160 # beq .L_80447928
    addi 4, 29, 0x28
    lbzx 0, 28, 4
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_804477E4
    li 0, 0x63
    stbx 0, 28, 4
L_804477E4:
    lis 3, 0x6666
    lbzx 7, 28, 4
    addi 0, 3, 0x6667
    lis 3, lbl_804B1BF8@ha
    mulhw 0, 0, 7
    lis 5, 0x5449
    addi 4, 3, lbl_804B1BF8@l
    addi 3, 5, 0x4d47
    srawi 5, 0, 2
    srwi 6, 5, 31
    srawi 0, 0, 2
    add 6, 5, 6
    srwi 5, 0, 31
    mulli 6, 6, 0xa
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    subf 26, 6, 7
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(28)
    mr 27, 0
    lwz 5, 0x48(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lwz 5, 0x50(30)
    lwz 12, 0x0(3)
    lwz 6, 0x54(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1BF8@ha
    lis 5, 0x5449
    slwi 0, 26, 2
    addi 4, 3, lbl_804B1BF8@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(28)
    lwz 5, 0x58(30)
    lwz 12, 0x0(3)
    lwz 6, 0x5c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lwz 5, 0x60(30)
    lwz 12, 0x0(3)
    lwz 6, 0x64(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_80447928:
    addi 29, 29, 0x1
    addi 30, 30, 0x70
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FD04 # blt .L_8044763C
    li 0, 0x0
    stb 0, 0x2c(28)
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80447958:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220DF8 # lfs f1, lbl_80543D98@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804479A0:
    stwu 1, -0x20(1)
    mflr 0
    lis 5, lbl_80490410@ha
    lis 4, lbl_804B1BF8@ha
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    addi 29, 5, lbl_80490410@l
    mr 26, 3
    addi 31, 4, lbl_804B1BF8@l
    li 27, 0x0
    lis 30, 0x5449
L_804479CC:
    li 0, 0x1
    lbz 4, 0x2c(26)
    slw 0, 0, 27
    addi 3, 30, 0x4d47
    clrlwi 0, 0, 24
    andc 0, 4, 0
    stb 0, 0x2c(26)
    lwz 4, 0x0(31)
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(26)
    mr 28, 0
    lwz 5, 0x48(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4c(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x50(29)
    lwz 12, 0x0(3)
    lwz 6, 0x54(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x58(29)
    lwz 12, 0x0(3)
    lwz 6, 0x5c(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x60(29)
    lwz 12, 0x0(3)
    lwz 6, 0x64(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(26)
    lwz 5, 0x30(29)
    lwz 12, 0x0(3)
    lwz 6, 0x34(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x68(29)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(29)
    lwz 3, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 27, 27, 0x1
    li 0, 0x0
    cmpwi 27, 0x4
    stb 0, 0xb0(3)
    addi 29, 29, 0x70
    .4byte 0x4180FEB0 # blt .L_804479CC
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80447B34:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200B4 # beq .L_80447C0C
    lis 3, lbl_804B1C20@ha
    addi 0, 3, lbl_804B1C20@l
    stw 0, 0x0(28)
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80447B88
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80447B88:
    li 0, 0x0
    mr 31, 28
    stw 0, 0x4(28)
    li 30, 0x0
L_80447B98:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80447BB8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80447BB8:
    li 0, 0x0
    stw 0, 0x8(31)
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80447BE0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80447BE0:
    addi 30, 30, 0x1
    li 3, 0x0
    cmpwi 30, 0x4
    stw 3, 0x18(31)
    addi 31, 31, 0x4
    .4byte 0x4180FFA4 # blt .L_80447B98
    extsh. 0, 29
    .4byte 0x906D9348 # stw r3, lbl_8053AF08@sda21(r0)
    .4byte 0x4081000C # ble .L_80447C0C
    mr 3, 28
    bl dtor_80084580
L_80447C0C:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80447C30:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804B1C20@ha
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B1C20@l
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9348 # stw r31, lbl_8053AF08@sda21(r0)
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_80447C74
    bl fn_8009C4EC
L_80447C74:
    lis 3, lbl_80529DEC@ha
    stw 28, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_80490698@ha
    lwz 6, 0x10(5)
    addi 4, 3, lbl_80490698@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    lis 3, lbl_80490410@ha
    mr 30, 31
    addi 29, 3, lbl_80490410@l
    li 28, 0x0
L_80447CA8:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80447CC4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80447CC4:
    stw 3, 0x8(30)
    lwz 5, 0x30(29)
    lwz 3, 0x4(31)
    lwz 6, 0x34(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80447D0C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80447D0C:
    stw 3, 0x18(30)
    lwz 5, 0x68(29)
    lwz 3, 0x4(31)
    lwz 6, 0x6c(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x18(30)
    bl fn_80402F04
    addi 28, 28, 0x1
    addi 29, 29, 0x70
    cmpwi 28, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FF60 # blt .L_80447CA8
    li 0, 0x0
    mr 3, 31
    stb 0, 0x28(31)
    stb 0, 0x29(31)
    stb 0, 0x2a(31)
    stb 0, 0x2b(31)
    stb 0, 0x2c(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

