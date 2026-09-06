# fn_80411C48 - actor@lbl_804B1288: destructor (0x6AC)
# Releases 3 effect-handle pairs (fn_800EC240 full teardown + fn_8013C824
# resolve, x3) plus fn_8042EB14.
.section extab, "a"
.balign 4
.global etb_800103EC
etb_800103EC:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_800103EC, 8

.section extabindex, "a"
.balign 4
.global eti_80020278
eti_80020278:
    .4byte fn_80411C48
    .4byte 0x000006AC
    .4byte etb_800103EC
.size eti_80020278, 12

.text
.balign 4
.global fn_80411C48

fn_80411C48:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr. 31, 3
    mr 30, 4
    .4byte 0x4182067C # beq .L_804122DC
    lis 3, lbl_804B1288@ha
    addi 0, 3, lbl_804B1288@l
    stw 0, 0x0(31)
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    bl fn_8042EB14
    li 27, 0x0
    mr 29, 31
L_80411C80:
    lwz 0, 0x2cc(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80411CA4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2cc(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2cc(29)
L_80411CA4:
    lwz 0, 0x2dc(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80411CC8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2dc(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2dc(29)
L_80411CC8:
    lwz 5, 0x2f8(29)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80411CF0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2f8(29)
L_80411CF0:
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80411C80
    mr 28, 31
    li 27, 0x0
    li 29, 0x0
L_80411D0C:
    lwz 0, 0x2ec(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80411D2C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2ec(28)
    bl fn_800EC240
    stw 29, 0x2ec(28)
L_80411D2C:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x3
    .4byte 0x4180FFD4 # blt .L_80411D0C
    lwz 5, 0x308(31)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80411D64
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x308(31)
L_80411D64:
    lwz 5, 0x30c(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_80411D84
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x30c(31)
L_80411D84:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411DA4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411DA4:
    li 0, 0x0
    stw 0, 0x4(31)
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411DCC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411DCC:
    li 0, 0x0
    stw 0, 0x8(31)
    lwz 3, 0xc(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411DF4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411DF4:
    li 0, 0x0
    stw 0, 0xc(31)
    lwz 3, 0x1c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411E1C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411E1C:
    li 0, 0x0
    stw 0, 0x1c(31)
    lwz 3, 0x20(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411E44
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411E44:
    li 0, 0x0
    stw 0, 0x20(31)
    lwz 3, 0x10(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411E6C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411E6C:
    li 0, 0x0
    stw 0, 0x10(31)
    lwz 3, 0x14(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411E94
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411E94:
    li 0, 0x0
    stw 0, 0x14(31)
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411EBC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411EBC:
    li 29, 0x0
    mr 27, 31
    stw 29, 0x18(31)
    li 26, 0x0
L_80411ECC:
    li 25, 0x0
    mr 28, 27
L_80411ED4:
    lwz 3, 0x28(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411EF4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411EF4:
    addi 25, 25, 0x1
    stw 29, 0x28(28)
    cmpwi 25, 0x3
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_80411ED4
    addi 26, 26, 0x1
    addi 27, 27, 0x14
    cmpwi 26, 0x8
    .4byte 0x4180FFB8 # blt .L_80411ECC
    mr 27, 31
    li 25, 0x0
    li 29, 0x0
L_80411F24:
    lwz 3, 0x278(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411F44
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411F44:
    addi 25, 25, 0x1
    stw 29, 0x278(27)
    cmpwi 25, 0xf
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_80411F24
    lwz 3, 0xc8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411F78
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411F78:
    li 0, 0x0
    stw 0, 0xc8(31)
    lwz 3, 0xcc(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411FA0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411FA0:
    li 0, 0x0
    stw 0, 0xcc(31)
    lwz 3, 0xd0(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411FC8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411FC8:
    li 29, 0x0
    mr 27, 31
    stw 29, 0xd0(31)
    li 25, 0x0
L_80411FD8:
    lwz 3, 0xd4(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80411FF8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80411FF8:
    addi 25, 25, 0x1
    stw 29, 0xd4(27)
    cmpwi 25, 0x12
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_80411FD8
    lwz 3, 0x11c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8041202C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8041202C:
    li 29, 0x0
    mr 27, 31
    stw 29, 0x11c(31)
    li 25, 0x0
L_8041203C:
    lwz 3, 0x120(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8041205C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8041205C:
    addi 25, 25, 0x1
    stw 29, 0x120(27)
    cmpwi 25, 0x2
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_8041203C
    mr 27, 31
    li 25, 0x0
    li 29, 0x0
L_8041207C:
    lwz 3, 0x128(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8041209C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8041209C:
    addi 25, 25, 0x1
    stw 29, 0x128(27)
    cmpwi 25, 0x20
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_8041207C
    mr 27, 31
    li 25, 0x0
    li 29, 0x0
L_804120BC:
    lwz 3, 0x1a8(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804120DC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804120DC:
    addi 25, 25, 0x1
    stw 29, 0x1a8(27)
    cmpwi 25, 0x18
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_804120BC
    mr 27, 31
    li 25, 0x0
    li 29, 0x0
L_804120FC:
    lwz 3, 0x208(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8041211C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8041211C:
    addi 25, 25, 0x1
    stw 29, 0x208(27)
    cmpwi 25, 0x8
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_804120FC
    mr 28, 31
    li 25, 0x0
    li 29, 0x0
L_8041213C:
    li 26, 0x0
    mr 27, 28
L_80412144:
    lwz 3, 0x228(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80412164
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80412164:
    addi 26, 26, 0x1
    stw 29, 0x228(27)
    cmpwi 26, 0x2
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_80412144
    addi 25, 25, 0x1
    addi 28, 28, 0x8
    cmpwi 25, 0x2
    .4byte 0x4180FFB8 # blt .L_8041213C
    lwz 3, 0x238(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804121A8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804121A8:
    li 0, 0x0
    stw 0, 0x238(31)
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804121D0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804121D0:
    li 29, 0x0
    mr 27, 31
    stw 29, 0x23c(31)
    li 25, 0x0
L_804121E0:
    lwz 3, 0x240(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80412200
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80412200:
    addi 25, 25, 0x1
    stw 29, 0x240(27)
    cmpwi 25, 0xc
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_804121E0
    lwz 3, 0x270(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80412234
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80412234:
    li 0, 0x0
    stw 0, 0x270(31)
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8041225C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8041225C:
    li 29, 0x0
    mr 27, 31
    stw 29, 0x274(31)
    li 25, 0x0
L_8041226C:
    lwz 3, 0x2b8(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8041228C
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8041228C:
    addi 25, 25, 0x1
    stw 29, 0x2b8(27)
    cmpwi 25, 0x4
    addi 27, 27, 0x4
    .4byte 0x4180FFD0 # blt .L_8041226C
    lwz 3, 0x2c8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804122C0
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_804122C0:
    li 3, 0x0
    extsh. 0, 30
    stw 3, 0x2c8(31)
    .4byte 0x906D9238 # stw r3, lbl_8053ADF8@sda21(r0)
    .4byte 0x4081000C # ble .L_804122DC
    mr 3, 31
    bl dtor_80084580
L_804122DC:
    mr 3, 31
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

