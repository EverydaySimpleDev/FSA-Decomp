# fn_804460AC (dtor) + fn_804461D0 (real ctor, direct vtable-install) - a
# TENTH sibling of the "weapon/joint-attachment resolver" family (vtable
# lbl_804B1BB0, a SHORT variant - the DOL read runs past its end into
# adjacent .rodata after only ~4 slots). Reuses the shared lbl_804AF86C
# component, same shape as the other siblings.
.section extab, "a"
.balign 4
.global etb_800112DC
etb_800112DC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_800112DC, 8

.global etb_800112E4
etb_800112E4:
    .4byte 0x20080000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_800112E4, 24

.section extabindex, "a"
.balign 4
.global eti_80021214
eti_80021214:
    .4byte fn_804460AC
    .4byte 0x00000124
    .4byte etb_800112DC
.size eti_80021214, 12

.global eti_80021220
eti_80021220:
    .4byte fn_804461D0
    .4byte 0x000001C4
    .4byte etb_800112E4
.size eti_80021220, 12

.text
.balign 4
.global fn_804460AC
.global fn_804461D0

fn_804460AC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200DC # beq .L_804461AC
    lis 3, lbl_804B1BB0@ha
    addi 0, 3, lbl_804B1BB0@l
    stw 0, 0x0(28)
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80446100
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80446100:
    li 0, 0x0
    mr 31, 28
    stw 0, 0x4(28)
    li 30, 0x0
L_80446110:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80446130
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80446130:
    li 0, 0x0
    stw 0, 0x8(31)
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80446158
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80446158:
    li 0, 0x0
    stw 0, 0x18(31)
    lwz 3, 0x28(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80446180
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80446180:
    addi 30, 30, 0x1
    li 3, 0x0
    cmpwi 30, 0x4
    stw 3, 0x28(31)
    addi 31, 31, 0x4
    .4byte 0x4180FF7C # blt .L_80446110
    extsh. 0, 29
    .4byte 0x906D9338 # stw r3, lbl_8053AEF8@sda21(r0)
    .4byte 0x4081000C # ble .L_804461AC
    mr 3, 28
    bl dtor_80084580
L_804461AC:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804461D0:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804B1BB0@ha
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B1BB0@l
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    li 3, 0x118
    stw 0, 0x0(28)
    .4byte 0x938D9338 # stw r28, lbl_8053AEF8@sda21(r0)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_80446214
    bl fn_8009C4EC
L_80446214:
    lis 3, lbl_80529DEC@ha
    stw 29, 0x4(28)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_80490020@ha
    lwz 6, 0x10(5)
    addi 4, 3, lbl_80490020@l
    lwz 3, 0x4(28)
    lis 5, 0x110
    bl fn_8009C69C
    lis 3, lbl_8048FC08@ha
    mr 31, 28
    addi 30, 3, lbl_8048FC08@l
    li 29, 0x0
L_80446248:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80446264
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80446264:
    stw 3, 0x8(31)
    lwz 5, 0x8(30)
    lwz 3, 0x4(28)
    lwz 6, 0xc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804462AC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804462AC:
    stw 3, 0x18(31)
    lwz 5, 0x40(30)
    lwz 3, 0x4(28)
    lwz 6, 0x44(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x18(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804462F4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804462F4:
    stw 3, 0x28(31)
    lwz 5, 0xb8(30)
    lwz 3, 0x4(28)
    lwz 6, 0xbc(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(31)
    bl fn_80402F04
    addi 29, 29, 0x1
    addi 30, 30, 0xc0
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FF18 # blt .L_80446248
    li 4, 0x0
    li 0, 0x1
    stb 4, 0x38(28)
    mr 3, 28
    stb 4, 0x3c(28)
    stb 0, 0x40(28)
    stb 4, 0x39(28)
    stb 4, 0x3d(28)
    stb 0, 0x41(28)
    stb 4, 0x3a(28)
    stb 4, 0x3e(28)
    stb 0, 0x42(28)
    stb 4, 0x3b(28)
    stb 4, 0x3f(28)
    stb 0, 0x43(28)
    stb 4, 0x44(28)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

