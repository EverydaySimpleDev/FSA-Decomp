# 901KB-gap non-actor manager block: 7 function(s), 1,508 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011104
etb_80011104:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80011104, 8

.global etb_8001110C
etb_8001110C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8001110C, 8

.global etb_80011114
etb_80011114:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80011114, 8

.global etb_8001111C
etb_8001111C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8001111C, 8

.global etb_80011124
etb_80011124:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80011124, 8

.global etb_8001112C
etb_8001112C:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8001112C, 8

.global etb_80011134
etb_80011134:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011134, 8

.section extabindex, "a"
.balign 4
.global eti_80020FB0
eti_80020FB0:
    .4byte fn_8044094C
    .4byte 0x000002A8
    .4byte etb_80011104
.size eti_80020FB0, 12

.global eti_80020FBC
eti_80020FBC:
    .4byte fn_80440BF4
    .4byte 0x00000078
    .4byte etb_8001110C
.size eti_80020FBC, 12

.global eti_80020FC8
eti_80020FC8:
    .4byte fn_80440C6C
    .4byte 0x00000078
    .4byte etb_80011114
.size eti_80020FC8, 12

.global eti_80020FD4
eti_80020FD4:
    .4byte fn_80440CE4
    .4byte 0x00000094
    .4byte etb_8001111C
.size eti_80020FD4, 12

.global eti_80020FE0
eti_80020FE0:
    .4byte fn_80440D78
    .4byte 0x00000094
    .4byte etb_80011124
.size eti_80020FE0, 12

.global eti_80020FEC
eti_80020FEC:
    .4byte fn_80440E0C
    .4byte 0x000000DC
    .4byte etb_8001112C
.size eti_80020FEC, 12

.global eti_80020FF8
eti_80020FF8:
    .4byte fn_80440EE8
    .4byte 0x00000048
    .4byte etb_80011134
.size eti_80020FF8, 12

.text
.balign 4
.global fn_8044094C
.global fn_80440BF4
.global fn_80440C6C
.global fn_80440CE4
.global fn_80440D78
.global fn_80440E0C
.global fn_80440EE8

fn_8044094C:
    stwu 1, -0x20(1)
    mflr 0
    lis 3, lbl_804B1810@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    addi 28, 3, lbl_804B1810@l
    lis 3, lbl_8052C5D8@ha
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    addi 31, 3, lbl_8052C5D8@l
    lwz 29, 0x90(28)
    addi 11, 28, 0xc0
    extsb. 0, 0
    lwz 30, 0x94(28)
    lwz 12, 0x98(28)
    lwz 10, 0x9c(28)
    lwz 9, 0xa0(28)
    lwz 8, 0xa4(28)
    lwz 7, 0xa8(28)
    lwz 6, 0xac(28)
    lwz 5, 0xb0(28)
    lwz 4, 0xb4(28)
    lwz 3, 0xb8(28)
    lwz 0, 0xbc(28)
    stw 29, 0xc0(28)
    stw 30, 0xc4(28)
    stw 12, 0xc8(28)
    stw 10, 0xc(11)
    stw 9, 0x10(11)
    stw 8, 0x14(11)
    stw 7, 0x18(11)
    stw 6, 0x1c(11)
    stw 5, 0x20(11)
    stw 4, 0x24(11)
    stw 3, 0x28(11)
    stw 0, 0x2c(11)
    .4byte 0x40820030 # bne .L_80440A14
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x28
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80440A14:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440A4C
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x34
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80440A4C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440A84
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x40
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80440A84:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440ABC
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x4c
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80440ABC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440AF4
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x58
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80440AF4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440B2C
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x64
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80440B2C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440B64
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x70
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80440B64:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440B9C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x7c
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80440B9C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80440BD4
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x88
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80440BD4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80440BF4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    .4byte 0x41820030 # beq .L_80440C34
    lwz 3, 0x4(3)
    lis 4, 0x6262
    addi 6, 4, 0x3033
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800002C # b .L_80440C5C
L_80440C34:
    lwz 3, 0x4(3)
    lis 4, 0x6262
    addi 6, 4, 0x3033
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80440C5C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80440C6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    .4byte 0x41820030 # beq .L_80440CAC
    lwz 3, 0x4(3)
    lis 4, 0x6261
    addi 6, 4, 0x3034
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800002C # b .L_80440CD4
L_80440CAC:
    lwz 3, 0x4(3)
    lis 4, 0x6261
    addi 6, 4, 0x3034
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80440CD4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80440CE4:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, 0x6262
    stw 0, 0x14(1)
    addi 6, 5, 0x3033
    li 5, 0x50
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6262
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80440D78:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, 0x6261
    stw 0, 0x14(1)
    addi 6, 5, 0x3034
    li 5, 0x50
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6261
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80440E0C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    fmr 30, 1
    lis 4, lbl_8048FAA8@ha
    .4byte 0xCBE20D90 # lfd f31, lbl_80543D30@sda21(r0)
    addi 30, 4, lbl_8048FAA8@l
    mr 28, 3
    li 29, 0x0
    lis 31, 0x4330
L_80440E54:
    lwz 3, 0x4(28)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0xc
    lwz 12, 0x0(3)
    lbzx 0, 28, 0
    stw 31, 0x8(1)
    lwz 12, 0x24(12)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x7
    .4byte 0x4180FFA0 # blt .L_80440E54
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x54(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80440EE8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220D98 # lfs f1, lbl_80543D38@sda21(r0)
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

.section .ctors, "a"
.balign 4
    .4byte fn_8044094C

