# Fresh project-wide gap hunt continuation: 10 functions, 5,224 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80005F3C
etb_80005F3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005F3C, 8

.global etb_80005F44
etb_80005F44:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005F44, 8

.global etb_80005F4C
etb_80005F4C:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_80005F4C, 8

.global etb_80005F54
etb_80005F54:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005F54, 8

.global etb_80005F5C
etb_80005F5C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005F5C, 8

.global etb_80005F64
etb_80005F64:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_80005F64, 8

.global etb_80005F6C
etb_80005F6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005F6C, 8

.global etb_80005F74
etb_80005F74:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80005F74, 8

.section extabindex, "a"
.balign 4
.global eti_800123F4
eti_800123F4:
    .4byte fn_80116C68
    .4byte 0x00000224
    .4byte etb_80005F3C
.size eti_800123F4, 12

.global eti_80012400
eti_80012400:
    .4byte fn_80116E8C
    .4byte 0x000001E8
    .4byte etb_80005F44
.size eti_80012400, 12

.global eti_8001240C
eti_8001240C:
    .4byte fn_80117074
    .4byte 0x00000424
    .4byte etb_80005F4C
.size eti_8001240C, 12

.global eti_80012418
eti_80012418:
    .4byte fn_801174C0
    .4byte 0x00000140
    .4byte etb_80005F54
.size eti_80012418, 12

.global eti_80012424
eti_80012424:
    .4byte fn_80117600
    .4byte 0x000001C0
    .4byte etb_80005F5C
.size eti_80012424, 12

.global eti_80012430
eti_80012430:
    .4byte fn_801177C0
    .4byte 0x00000774
    .4byte etb_80005F64
.size eti_80012430, 12

.global eti_8001243C
eti_8001243C:
    .4byte fn_80117F34
    .4byte 0x000000E4
    .4byte etb_80005F6C
.size eti_8001243C, 12

.global eti_80012448
eti_80012448:
    .4byte fn_80118018
    .4byte 0x000000B8
    .4byte etb_80005F74
.size eti_80012448, 12

.text
.balign 4
.global fn_80116C68
.global fn_80116E8C
.global fn_80117074
.global fn_80117498
.global fn_801174B8
.global fn_801174C0
.global fn_80117600
.global fn_801177C0
.global fn_80117F34
.global fn_80118018

fn_80116C68:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC2F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC2F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116CB8
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80116CB8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116CF0
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80116CF0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116D28
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80116D28:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116D60
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80116D60:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116D98
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_80116D98:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116DD0
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80116DD0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116E08
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80116E08:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116E40
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80116E40:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80116E78
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_80116E78:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80116E8C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x41800040 # blt .L_80116EE8
    cmpwi 0, 0xb
    .4byte 0x41810038 # bgt .L_80116EE8
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x32
    .4byte 0x41800028 # blt .L_80116EE8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80116EE8
    li 0, 0x1
    .4byte 0xC00297A8 # lfs f0, lbl_8053C748@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_80116EE8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x9
    .4byte 0x4182002C # beq .L_80116F1C
    .4byte 0x40800018 # bge .L_80116F0C
    cmpwi 0, 0x3
    .4byte 0x4080010C # bge .L_80117008
    cmpwi 0, 0x0
    .4byte 0x4080015C # bge .L_80117060
    .4byte 0x48000100 # b .L_80117008
L_80116F0C:
    cmpwi 0, 0xc
    .4byte 0x41820150 # beq .L_80117060
    .4byte 0x408000F4 # bge .L_80117008
    .4byte 0x48000088 # b .L_80116FA0
L_80116F1C:
    psq_l 0, 0xc(31), 0, 0
    addi 3, 31, 0x240
    lfs 4, 0x14(31)
    psq_st 0, 0x14(1), 0, 0
    lfs 0, 0x240(31)
    lfs 2, 0x18(1)
    .4byte 0xC02297AC # lfs f1, lbl_8053C74C@sda21(r0)
    fadds 3, 2, 0
    lfs 0, 0x10(31)
    stfs 4, 0x1c(1)
    fadds 1, 1, 0
    .4byte 0xC04297B0 # lfs f2, lbl_8053C750@sda21(r0)
    stfs 3, 0x18(1)
    bl fn_801CD950
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x408200FC # bne .L_80117060
    li 0, 0x1
    lfs 0, 0x14(1)
    stb 0, 0x840(3)
    lfs 2, 0x18(1)
    stfs 0, 0x84c(3)
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    stfs 0, 0x844(3)
    .4byte 0xC00297B8 # lfs f0, lbl_8053C758@sda21(r0)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x480000C4 # b .L_80117060
L_80116FA0:
    psq_l 0, 0xc(31), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 0, 0x8(1), 0, 0
    lwz 3, 0x24(3)
    lfs 1, 0xc(1)
    lfs 0, 0x240(31)
    lbz 0, 0x840(3)
    fadds 3, 1, 0
    lfs 0, 0x14(31)
    cmplwi 0, 0x0
    stfs 0, 0x10(1)
    stfs 3, 0xc(1)
    .4byte 0x40820090 # bne .L_80117060
    li 0, 0x1
    lfs 2, 0x8(1)
    stb 0, 0x840(3)
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    stfs 2, 0x84c(3)
    .4byte 0xC00297B8 # lfs f0, lbl_8053C758@sda21(r0)
    stfs 2, 0x844(3)
    stfs 3, 0x850(3)
    stfs 3, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x4800005C # b .L_80117060
L_80117008:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80117050
    li 0, 0x1
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC00297B8 # lfs f0, lbl_8053C758@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_80117050:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80117060:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80117074:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 31, 4
    mr 30, 3
    cmplwi 31, 0xc
    .4byte 0x418103D0 # bgt .L_80117470
    lis 3, jumptable_8049DA6C@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_8049DA6C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl fn_80119DD0
    li 4, 0x78
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x1
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    bl fn_80234810
    li 3, 0x0
    li 4, 0x0
    bl fn_802382D0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x20
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    lwz 5, 0x2a8(30)
    cmplwi 5, 0x0
    .4byte 0x41820360 # beq .L_80117470
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2a8(30)
    .4byte 0x48000340 # b .L_80117470
    .4byte 0xC00297B4 # lfs f0, lbl_8053C754@sda21(r0)
    stfs 0, 0x280(30)
    .4byte 0x48000334 # b .L_80117470
    mr 26, 30
    addi 28, 1, 0x20
    li 29, 0x0
    .4byte 0x3B6297A0 # li r27, lbl_8053C740@sda21
L_80117150:
    mr 3, 29
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 28
    lfs 0, 0x8(3)
    li 6, 0x0
    lhz 5, 0x0(27)
    li 7, -0x1
    psq_st 1, 0x0(28), 0, 0
    li 8, 0x0
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    li 9, 0x0
    stfs 0, 0x28(1)
    li 10, 0x1
    lwz 3, 0x4(30)
    bl fn_8013CC50
    stw 3, 0x288(26)
    addi 4, 1, 0x20
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    li 5, 0x475
    lwz 3, 0x4(30)
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 29, 29, 0x1
    stw 3, 0x298(26)
    cmpwi 29, 0x4
    addi 27, 27, 0x2
    addi 26, 26, 0x4
    .4byte 0x4180FF80 # blt .L_80117150
    li 26, 0x0
    lis 29, 0x2
L_801171DC:
    mr 3, 26
    addi 4, 29, 0x48
    bl fn_80230FD0
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFEC # blt .L_801171DC
    .4byte 0xC00297BC # lfs f0, lbl_8053C75C@sda21(r0)
    stfs 0, 0x23c(30)
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x4800026C # b .L_80117470
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000260 # b .L_80117470
    .4byte 0xC3C297EC # lfs f30, lbl_8053C78C@sda21(r0)
    addi 28, 1, 0x14
    .4byte 0xC3E297F0 # lfs f31, lbl_8053C790@sda21(r0)
    li 29, 0x0
L_80117224:
    mr 3, 29
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    mr 4, 28
    lfs 3, 0x8(3)
    li 5, 0xcb
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    li 6, 0x0
    psq_st 0, 0x0(28), 0, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    lfs 2, 0x14(1)
    li 10, 0x1
    lfs 0, 0x18(1)
    fadds 2, 2, 30
    stfs 3, 0x1c(1)
    fadds 0, 0, 31
    stfs 2, 0x14(1)
    stfs 0, 0x18(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x14
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    li 5, 0xcc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF78 # blt .L_80117224
    li 6, 0x0
    li 0, 0x2
    mr 7, 30
    li 5, 0x1
    mr 4, 6
    mr 3, 6
    mtctr 0
L_801172CC:
    lwz 8, 0x288(7)
    cmplwi 8, 0x0
    .4byte 0x41820018 # beq .L_801172EC
    lwz 0, 0xf4(8)
    ori 0, 0, 0x1
    stw 0, 0xf4(8)
    stw 5, 0x24(8)
    stw 4, 0x288(7)
L_801172EC:
    lwz 8, 0x298(7)
    cmplwi 8, 0x0
    .4byte 0x41820018 # beq .L_8011730C
    lwz 0, 0xf4(8)
    ori 0, 0, 0x1
    stw 0, 0xf4(8)
    stw 5, 0x24(8)
    stw 3, 0x298(7)
L_8011730C:
    lwz 8, 0x28c(7)
    cmplwi 8, 0x0
    .4byte 0x41820018 # beq .L_8011732C
    lwz 0, 0xf4(8)
    ori 0, 0, 0x1
    stw 0, 0xf4(8)
    stw 5, 0x24(8)
    stw 4, 0x28c(7)
L_8011732C:
    lwz 8, 0x29c(7)
    cmplwi 8, 0x0
    .4byte 0x41820018 # beq .L_8011734C
    lwz 0, 0xf4(8)
    ori 0, 0, 0x1
    stw 0, 0xf4(8)
    stw 5, 0x24(8)
    stw 3, 0x29c(7)
L_8011734C:
    addi 7, 7, 0x8
    addi 6, 6, 0x1
    .4byte 0x4200FF78 # bdnz .L_801172CC
    .4byte 0x48000118 # b .L_80117470
    addi 3, 30, 0x250
    li 4, 0x2
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02297BC # lfs f1, lbl_8053C75C@sda21(r0)
    addi 3, 30, 0x250
    bl fn_801D1F14
    .4byte 0xC00297B4 # lfs f0, lbl_8053C754@sda21(r0)
    li 28, 0x0
    lis 29, 0x2
    stfs 0, 0x280(30)
L_8011738C:
    mr 3, 28
    addi 4, 29, 0x47
    bl fn_80230FD0
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFEC # blt .L_8011738C
    .4byte 0x480000CC # b .L_80117470
    psq_l 1, 0xc(30), 0, 0
    li 28, 0x0
    lfs 0, 0x14(30)
    .4byte 0xC3E297E8 # lfs f31, lbl_8053C788@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
L_801173C0:
    mr 3, 28
    bl fn_8023E724
    lfs 0, 0x0(3)
    addi 4, 1, 0x8
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    li 5, 0x33a
    stfs 0, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    lfs 0, 0x4(3)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0xc(1)
    fadds 0, 0, 31
    lfs 2, 0x8(3)
    stfs 2, 0x10(1)
    stfs 0, 0xc(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA8 # blt .L_801173C0
    li 28, 0x0
    lis 29, 0x1
L_80117424:
    mr 3, 28
    li 4, 0x3
    bl fn_80230BF4
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    mr 3, 28
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 28
    addi 4, 29, 0x15
    bl fn_80230FD0
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFB8 # blt .L_80117424
L_80117470:
    stw 31, 0x234(30)
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80117498:
    lwz 0, 0x234(3)
    cmpwi 0, 0xc
    .4byte 0x41820008 # beq .L_801174A8
    .4byte 0x4800000C # b .L_801174B0
L_801174A8:
    li 3, 0x1
    blr
L_801174B0:
    li 3, 0x0
    blr

fn_801174B8:
    lwz 3, 0x234(3)
    blr

fn_801174C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x4082010C # bne .L_801175EC
    bl fn_8011921C
    lis 4, lbl_80464A7C@ha
    lwz 5, 0x8(3)
    addi 3, 4, lbl_80464A7C@l
    lwz 0, 0x8(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80117510
    mr 3, 31
    li 4, 0x2
    bl fn_80117074
    .4byte 0x480000E0 # b .L_801175EC
L_80117510:
    lwz 0, 0xc(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011752C
    mr 3, 31
    li 4, 0x3
    bl fn_80117074
    .4byte 0x480000C4 # b .L_801175EC
L_8011752C:
    lwz 0, 0x10(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80117548
    mr 3, 31
    li 4, 0x4
    bl fn_80117074
    .4byte 0x480000A8 # b .L_801175EC
L_80117548:
    lwz 0, 0x14(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80117564
    mr 3, 31
    li 4, 0x5
    bl fn_80117074
    .4byte 0x4800008C # b .L_801175EC
L_80117564:
    lwz 0, 0x1c(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80117580
    mr 3, 31
    li 4, 0x7
    bl fn_80117074
    .4byte 0x48000070 # b .L_801175EC
L_80117580:
    lwz 0, 0x20(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011759C
    mr 3, 31
    li 4, 0x8
    bl fn_80117074
    .4byte 0x48000054 # b .L_801175EC
L_8011759C:
    lwz 0, 0x24(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_801175B8
    mr 3, 31
    li 4, 0x9
    bl fn_80117074
    .4byte 0x48000038 # b .L_801175EC
L_801175B8:
    lwz 0, 0x2c(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_801175D4
    mr 3, 31
    li 4, 0xb
    bl fn_80117074
    .4byte 0x4800001C # b .L_801175EC
L_801175D4:
    lwz 0, 0x30(3)
    cmpw 5, 0
    .4byte 0x40820010 # bne .L_801175EC
    mr 3, 31
    li 4, 0xc
    bl fn_80117074
L_801175EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80117600:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    bl fn_8010DF58
    li 0, -0x1
    addi 9, 1, 0x14
    stw 0, 0x24(1)
    li 10, 0x0
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_80117690
L_80117630:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_80117690:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80117630
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x24(1)
    stw 5, 0x28(1)
    stw 5, 0x2c(1)
    stb 5, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 4, 0x33(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stb 5, 0x37(1)
    stb 5, 0x38(1)
    stb 5, 0x39(1)
    stb 4, 0x3a(1)
    stw 3, 0x3c(1)
    stb 4, 0x40(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stw 6, 0x44(1)
    stw 5, 0x48(1)
    stw 0, 0x4c(1)
    lwz 0, 0x138(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80117734
    lis 4, lbl_80464AC0@ha
    lwz 3, 0x4(31)
    addi 7, 4, lbl_80464AC0@l
    addi 5, 1, 0x14
    addi 4, 31, 0xc
    li 6, 0x1
    li 8, 0x179
    li 9, 0x0
    bl fn_801EF830
L_80117734:
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC00297EC # lfs f0, lbl_8053C78C@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_801177AC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464AC0@ha
    addi 5, 3, lbl_80464AC0@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 6, 0x179
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_801177AC:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801177C0:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stmw 26, 0x78(1)
    mr 31, 3
    bl fn_8010DF78
    lfs 1, 0x60(31)
    mr 3, 31
    stfs 1, 0x58(1)
    lfs 4, 0x64(31)
    stfs 4, 0x5c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x60(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x64(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x58(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x60(1)
    fadds 0, 3, 2
    stfs 1, 0x5c(1)
    stfs 0, 0x64(1)
    bl fn_80116E8C
    lwz 0, 0x234(31)
    cmplwi 0, 0xc
    .4byte 0x41810694 # bgt .L_80117ED4
    lis 3, jumptable_8049DAA0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049DAA0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl fn_8011921C
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4082066C # bne .L_80117ED4
    lwz 4, 0x4(31)
    addi 3, 1, 0x58
    lwz 5, 0x198(31)
    bl fn_80239914
    li 30, 0x0
L_80117880:
    mr 3, 30
    bl fn_8023561C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80117898
    li 0, 0x0
    .4byte 0x48000080 # b .L_80117914
L_80117898:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE0 # blt .L_80117880
    li 3, 0x0
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x4182000C # beq .L_801178BC
    li 0, 0x0
    .4byte 0x4800005C # b .L_80117914
L_801178BC:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x14
    addi 8, 1, 0x10
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0xc(1)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801178F4
    li 0, 0x0
    .4byte 0x48000024 # b .L_80117914
L_801178F4:
    lfs 1, 0x14(1)
    .4byte 0xC00297C4 # lfs f0, lbl_8053C764@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80117910
    li 0, 0x1
    .4byte 0x48000008 # b .L_80117914
L_80117910:
    li 0, 0x0
L_80117914:
    clrlwi. 0, 0, 24
    .4byte 0x41820098 # beq .L_801179B0
    lbz 0, 0x231(31)
    cmplwi 0, 0x0
    .4byte 0x408205B0 # bne .L_80117ED4
    bl fn_8023077C
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lbz 0, 0x230(31)
    li 3, 0x4b2
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80117960
    li 3, 0x4b3
L_80117960:
    .4byte 0xC02297BC # lfs f1, lbl_8053C75C@sda21(r0)
    clrlwi 4, 3, 16
    .4byte 0xC00297C0 # lfs f0, lbl_8053C760@sda21(r0)
    addi 6, 1, 0x4c
    stfs 1, 0x4c(1)
    li 3, 0x0
    li 7, 0x22
    stfs 0, 0x50(1)
    stfs 1, 0x54(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x41820538 # beq .L_80117ED4
    mr 3, 31
    li 4, 0x1
    bl fn_80117074
    .4byte 0x48000528 # b .L_80117ED4
L_801179B0:
    li 0, 0x0
    stb 0, 0x231(31)
    .4byte 0x4800051C # b .L_80117ED4
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418204F4 # beq .L_80117ED4
    li 3, 0x0
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x4182007C # beq .L_80117A6C
    .4byte 0x40800078 # bge .L_80117A6C
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_80117A04
    .4byte 0x4800006C # b .L_80117A6C
L_80117A04:
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80388CAC
    li 26, 0x0
L_80117A14:
    mr 3, 26
    li 4, 0x3
    bl fn_80230BF4
    mr 3, 26
    bl fn_8023E724
    mr 4, 3
    mr 3, 26
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFC4 # blt .L_80117A14
    li 3, 0x0
    bl fn_80230534
    bl fn_8011921C
    li 4, 0x2
    bl fn_801186B0
    .4byte 0x4800046C # b .L_80117ED4
L_80117A6C:
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80388CAC
    li 3, 0x0
    bl fn_80230534
    mr 3, 31
    li 4, 0x0
    bl fn_80117074
    li 0, 0x1
    stb 0, 0x230(31)
    stb 0, 0x231(31)
    .4byte 0x4800043C # b .L_80117ED4
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x3c
    .4byte 0x40820094 # bne .L_80117B3C
    li 30, 0x0
    .4byte 0xC00297AC # lfs f0, lbl_8053C74C@sda21(r0)
    stb 30, 0x11d(31)
    lfs 1, 0xc(31)
    stfs 1, 0x244(31)
    lfs 1, 0x10(31)
    stfs 1, 0x248(31)
    lfs 1, 0x14(31)
    stfs 1, 0x24c(31)
    lfs 1, 0x248(31)
    fadds 0, 1, 0
    stfs 0, 0x248(31)
L_80117ADC:
    mr 3, 30
    li 4, 0x2
    bl fn_80230BF4
    mr 3, 30
    addi 4, 31, 0x244
    li 5, 0x31a
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_80117ADC
    addi 3, 31, 0x250
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02297BC # lfs f1, lbl_8053C75C@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    .4byte 0xC00297BC # lfs f0, lbl_8053C75C@sda21(r0)
    stfs 0, 0x280(31)
L_80117B3C:
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x3c
    .4byte 0x4081005C # ble .L_80117BA4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80117B94
    li 0, 0x1
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC00297B8 # lfs f0, lbl_8053C758@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_80117B94:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80117BA4:
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x32
    .4byte 0x41800324 # blt .L_80117ED4
    bl fn_8011921C
    li 0, 0x1
    stb 0, 0x2(3)
    .4byte 0x48000314 # b .L_80117ED4
    lis 3, lbl_80464AB0@ha
    li 28, 0x0
    .4byte 0xC3E297D8 # lfs f31, lbl_8053C778@sda21(r0)
    addi 27, 3, lbl_80464AB0@l
    .4byte 0xCBC297E0 # lfd f30, lbl_8053C780@sda21(r0)
    mr 29, 28
    mr 26, 31
    lis 30, 0x4330
L_80117BE4:
    mr 3, 29
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    addi 3, 31, 0x23c
    .4byte 0xC02297D0 # lfs f1, lbl_8053C770@sda21(r0)
    psq_st 2, 0x40(1), 0, 0
    .4byte 0xC04297D4 # lfs f2, lbl_8053C774@sda21(r0)
    stfs 0, 0x48(1)
    bl fn_801CD950
    lwz 0, 0x0(27)
    addi 3, 1, 0x40
    stw 30, 0x68(1)
    xoris 0, 0, 0x8000
    lfs 1, 0x244(31)
    stw 0, 0x6c(1)
    lfs 2, 0x23c(31)
    lfd 0, 0x68(1)
    stw 0, 0x74(1)
    fsubs 3, 0, 30
    stw 30, 0x70(1)
    lfd 0, 0x70(1)
    fmadds 1, 31, 3, 1
    fsubs 0, 0, 30
    fmuls 2, 2, 0
    bl fn_801CD950
    mr 3, 29
    li 4, 0x2
    bl fn_80230BF4
    lwz 5, 0x260(31)
    mr 3, 29
    addi 4, 1, 0x40
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 3, 0x288(26)
    cmpwi 29, 0x0
    lfs 0, 0x40(1)
    stfs 0, 0xa4(3)
    lfs 0, 0x44(1)
    stfs 0, 0xa8(3)
    lfs 0, 0x48(1)
    stfs 0, 0xac(3)
    lwz 3, 0x298(26)
    lfs 0, 0x40(1)
    stfs 0, 0xa4(3)
    lfs 0, 0x44(1)
    stfs 0, 0xa8(3)
    lfs 0, 0x48(1)
    stfs 0, 0xac(3)
    .4byte 0x40820024 # bne .L_80117CD8
    lfs 2, 0x244(31)
    lfs 1, 0x40(1)
    .4byte 0xC00297DC # lfs f0, lbl_8053C77C@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80117CD8
    li 28, 0x1
L_80117CD8:
    addi 29, 29, 0x1
    addi 26, 26, 0x4
    cmpwi 29, 0x4
    addi 27, 27, 0x4
    .4byte 0x4180FEFC # blt .L_80117BE4
    clrlwi. 0, 28, 24
    .4byte 0x418201E4 # beq .L_80117ED4
    mr 3, 31
    li 4, 0x6
    bl fn_80117074
    .4byte 0x480001D4 # b .L_80117ED4
    li 26, 0x0
    lis 30, 0x1
L_80117D0C:
    mr 3, 26
    bl fn_8023E724
    lwz 5, 0x260(31)
    mr 4, 3
    mr 3, 26
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 0, 0x260(31)
    cmpwi 0, 0xdc
    .4byte 0x40820010 # bne .L_80117D4C
    mr 3, 26
    addi 4, 30, 0x1
    bl fn_80230FD0
L_80117D4C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFB8 # blt .L_80117D0C
    bl fn_8011921C
    lis 4, lbl_80464A7C@ha
    lwz 0, 0x8(3)
    addi 3, 4, lbl_80464A7C@l
    lwz 3, 0x24(3)
    subi 3, 3, 0x1e
    cmpw 3, 0
    .4byte 0x40820160 # bne .L_80117ED4
    bl GetRoomConfigRecord
    lwz 8, 0xcc(3)
    addi 4, 1, 0x34
    lwz 10, 0xd0(3)
    li 5, 0x102
    lwz 11, 0xd4(3)
    li 6, 0x0
    lwz 0, 0xd8(3)
    li 7, 0x0
    stw 8, 0x24(1)
    li 8, 0x0
    .4byte 0xC00297BC # lfs f0, lbl_8053C75C@sda21(r0)
    li 9, 0x0
    stw 10, 0x28(1)
    li 10, 0x1
    lfs 2, 0x24(1)
    stw 11, 0x2c(1)
    lfs 1, 0x28(1)
    stw 0, 0x30(1)
    lfs 5, 0x2c(1)
    lfs 6, 0x30(1)
    fsubs 3, 2, 5
    .4byte 0xC08297B0 # lfs f4, lbl_8053C750@sda21(r0)
    fsubs 2, 1, 6
    stfs 0, 0x3c(1)
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    fmadds 0, 4, 3, 5
    fmadds 2, 4, 2, 6
    stfs 0, 0x34(1)
    stfs 2, 0x38(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x34
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    li 5, 0x103
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x34
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    li 5, 0x104
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x48000084 # b .L_80117ED4
    li 29, 0x0
    .4byte 0xC3C297C8 # lfs f30, lbl_8053C768@sda21(r0)
    .4byte 0xC3E297CC # lfs f31, lbl_8053C76C@sda21(r0)
    mr 28, 29
L_80117E64:
    mr 3, 28
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 1, 0x8(3)
    psq_st 0, 0x18(1), 0, 0
    lfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    fadds 1, 0, 30
    stfs 1, 0x1c(1)
    lfs 0, 0x10(31)
    fadds 0, 31, 0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80117EA4
    stfs 0, 0x1c(1)
    li 29, 0x1
L_80117EA4:
    mr 3, 28
    addi 4, 1, 0x18
    li 5, 0xff
    bl fn_802303FC
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA8 # blt .L_80117E64
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_80117ED4
    mr 3, 31
    li 4, 0xa
    bl fn_80117074
L_80117ED4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4180002C # blt .L_80117F08
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x474
    .4byte 0x41810018 # bgt .L_80117F08
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x7a
    li 5, 0x0
    bl fn_801F0E34
L_80117F08:
    addi 3, 31, 0x250
    bl fn_801D1C18
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    lmw 26, 0x78(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_80117F34:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    bl fn_8010DF98
    lis 4, lbl_8049DA00@ha
    addi 3, 31, 0x250
    addi 4, 4, lbl_8049DA00@l
    li 5, 0x3
    bl fn_801D2608
    addi 3, 31, 0x250
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02297BC # lfs f1, lbl_8053C75C@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    bl GetRoomConfigRecord
    lwz 8, 0xcc(3)
    addi 4, 1, 0x18
    lwz 10, 0xd0(3)
    li 5, 0x33e
    lwz 11, 0xd4(3)
    li 6, 0x0
    lwz 0, 0xd8(3)
    li 7, 0x0
    stw 8, 0x8(1)
    li 8, 0x0
    .4byte 0xC00297BC # lfs f0, lbl_8053C75C@sda21(r0)
    li 9, 0x0
    stw 10, 0xc(1)
    li 10, 0x1
    lfs 2, 0x8(1)
    stw 11, 0x10(1)
    lfs 1, 0xc(1)
    stw 0, 0x14(1)
    lfs 5, 0x10(1)
    lfs 6, 0x14(1)
    fsubs 3, 2, 5
    .4byte 0xC08297B0 # lfs f4, lbl_8053C750@sda21(r0)
    fsubs 2, 1, 6
    stfs 0, 0x20(1)
    .4byte 0xC02297B4 # lfs f1, lbl_8053C754@sda21(r0)
    fmadds 0, 4, 3, 5
    fmadds 2, 4, 2, 6
    stfs 0, 0x18(1)
    stfs 2, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2a8(31)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80118018:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820088 # beq .L_801180B8
    lis 3, lbl_8049DA0C@ha
    mr 30, 27
    addi 0, 3, lbl_8049DA0C@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
L_8011804C:
    lwz 3, 0x288(30)
    bl fn_801EE434
    stw 31, 0x288(30)
    lwz 3, 0x298(30)
    bl fn_801EE434
    stw 31, 0x298(30)
    lwz 3, 0x2a8(27)
    bl fn_801EE434
    addi 29, 29, 0x1
    stw 31, 0x2a8(27)
    cmpwi 29, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FFD0 # blt .L_8011804C
    addic. 0, 27, 0x250
    .4byte 0x41820018 # beq .L_8011809C
    addic. 0, 27, 0x274
    .4byte 0x41820010 # beq .L_8011809C
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x274(27)
L_8011809C:
    mr 3, 27
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_801180B8
    mr 3, 27
    bl dtor_80084580
L_801180B8:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80116C68

