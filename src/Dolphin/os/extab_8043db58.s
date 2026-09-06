# 13-function dtk-fused bundle (0x8043DB58-0x8044094C, ~11.7KB), Track A
# (structural overview - not field-by-field, matching the size/complexity
# precedent of extab_804283d4.s's 148-fn bundle).
# A FIFTH, much larger member of the "weapon/joint-attachment resolver"
# family (vtable lbl_804B1920, dtor fn_8043EED8, real ctor fn_8043F504 -
# 0x13EC bytes, direct vtable-install confirmed). Reuses the shared
# lbl_804AF86C component and a joint-name string table (lbl_804B1810,
# .rodata, not a vtable). This class owns MANY more resolved sub-objects
# than its siblings - the dtor releases virtual sub-objects at this+0x290/
# 0x294/0x298/0x2b8 (plus more not traced), and fn_8043DB58 dispatches a
# per-state ("this->0x256") virtual call (vtable slot 0xe4) across 5
# resolved attachment points (this+0x14/0x18/0x1c/0x20/0x24) - consistent
# with a higher-level "which weapon-attachment point is active" driver
# built on top of the same resolver primitives as its 4 siblings.
# Individual helper functions (fn_8043DC98/DF24/DF8C/E398/E7CC/E80C/EDE8/
# EDF8/804408F0/80440928) not traced to the same depth - out of scope for
# this landing; landed on the strength of the confirmed vtable-install,
# confirmed dtor/ctor virtual-release symmetry, and byte-exact build.
.section extab, "a"
.balign 4
.global etb_80010E7C
etb_80010E7C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80010E7C, 8

.global etb_80010E84
etb_80010E84:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010E84, 8

.global etb_80010E8C
etb_80010E8C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010E8C, 8

.global etb_80010E94
etb_80010E94:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_80010E94, 8

.global etb_80010E9C
etb_80010E9C:
    .4byte 0x094A0000
    .4byte 0x00000000
.size etb_80010E9C, 8

.global etb_80010EA4
etb_80010EA4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80010EA4, 8

.global etb_80010EAC
etb_80010EAC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010EAC, 8

.global etb_80010EB4
etb_80010EB4:
    .4byte 0x110A0000
    .4byte 0x00000000
.size etb_80010EB4, 8

.global etb_80010EBC
etb_80010EBC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010EBC, 8

.global etb_80010EC4
etb_80010EC4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80010EC4, 8

.global etb_80010ECC
etb_80010ECC:
    .4byte 0x280A0000
    .4byte 0x000000A8
    .4byte 0x00000120
    .4byte 0x000000E0
    .4byte 0x00000128
    .4byte 0x00000118
    .4byte 0x00000130
    .4byte 0x00000150
    .4byte 0x00000138
    .4byte 0x00000188
    .4byte 0x00000140
    .4byte 0x000001C0
    .4byte 0x00000148
    .4byte 0x000001F8
    .4byte 0x00000150
    .4byte 0x00000230
    .4byte 0x00000158
    .4byte 0x00000268
    .4byte 0x00000160
    .4byte 0x000002A0
    .4byte 0x00000168
    .4byte 0x000002BC
    .4byte 0x00000170
    .4byte 0x000002D4
    .4byte 0x00000178
    .4byte 0x00000300
    .4byte 0x00000180
    .4byte 0x00000334
    .4byte 0x00000188
    .4byte 0x00000360
    .4byte 0x00000190
    .4byte 0x00000948
    .4byte 0x00000198
    .4byte 0x00000978
    .4byte 0x000001A0
    .4byte 0x000009A8
    .4byte 0x000001A8
    .4byte 0x000009D8
    .4byte 0x000001B0
    .4byte 0x00000A08
    .4byte 0x000001B8
    .4byte 0x00000A38
    .4byte 0x000001C0
    .4byte 0x00000A68
    .4byte 0x000001C8
    .4byte 0x00000A98
    .4byte 0x000001D0
    .4byte 0x00000AC8
    .4byte 0x000001D8
    .4byte 0x00000AF8
    .4byte 0x000001E0
    .4byte 0x00000B2C
    .4byte 0x000001E8
    .4byte 0x00000B64
    .4byte 0x000001F0
    .4byte 0x00000B9C
    .4byte 0x000001F8
    .4byte 0x00000BD4
    .4byte 0x00000200
    .4byte 0x00000C04
    .4byte 0x00000208
    .4byte 0x00000D2C
    .4byte 0x00000210
    .4byte 0x00000E54
    .4byte 0x00000218
    .4byte 0x00000F7C
    .4byte 0x00000220
    .4byte 0x000010A4
    .4byte 0x00000228
    .4byte 0x0000137C
    .4byte 0x00000230
    .4byte 0x00000000
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
    .4byte 0x8A80001B
    .4byte dtor_80084580
.size etb_80010ECC, 568

.section extabindex, "a"
.balign 4
.global eti_80020F2C
eti_80020F2C:
    .4byte fn_8043DB58
    .4byte 0x00000140
    .4byte etb_80010E84
.size eti_80020F2C, 12

.global eti_80020F38
eti_80020F38:
    .4byte fn_8043DC98
    .4byte 0x0000028C
    .4byte etb_80010E8C
.size eti_80020F38, 12

.global eti_80020F44
eti_80020F44:
    .4byte fn_8043DF8C
    .4byte 0x0000040C
    .4byte etb_80010E94
.size eti_80020F44, 12

.global eti_80020F50
eti_80020F50:
    .4byte fn_8043E398
    .4byte 0x00000434
    .4byte etb_80010E9C
.size eti_80020F50, 12

.global eti_80020F5C
eti_80020F5C:
    .4byte fn_8043E7CC
    .4byte 0x00000040
    .4byte etb_80010EA4
.size eti_80020F5C, 12

.global eti_80020F68
eti_80020F68:
    .4byte fn_8043E80C
    .4byte 0x000005DC
    .4byte etb_80010EB4
.size eti_80020F68, 12

.global eti_80020F74
eti_80020F74:
    .4byte fn_8043EDF8
    .4byte 0x000000E0
    .4byte etb_80010EBC
.size eti_80020F74, 12

.global eti_80020F80
eti_80020F80:
    .4byte fn_8043EED8
    .4byte 0x0000062C
    .4byte etb_80010EC4
.size eti_80020F80, 12

.global eti_80020F8C
eti_80020F8C:
    .4byte fn_8043F504
    .4byte 0x000013EC
    .4byte etb_80010ECC
.size eti_80020F8C, 12

.global eti_80020F98
eti_80020F98:
    .4byte fn_804408F0
    .4byte 0x00000038
    .4byte etb_80010E7C
.size eti_80020F98, 12

.global eti_80020FA4
eti_80020FA4:
    .4byte fn_80440928
    .4byte 0x00000024
    .4byte etb_80010EAC
.size eti_80020FA4, 12

.text
.balign 4
.global fn_8043DB58
.global fn_8043DC98
.global fn_8043DF24
.global fn_8043DF8C
.global fn_8043E398
.global fn_8043E7CC
.global fn_8043E80C
.global fn_8043EDE8
.global fn_8043EDF8
.global fn_8043EED8
.global fn_8043F504
.global fn_804408F0
.global fn_80440928

fn_8043DB58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lbz 0, 0x256(31)
    cmplwi 0, 0xff
    .4byte 0x41820108 # beq .L_8043DC84
    cmpwi 0, 0x2
    .4byte 0x41820080 # beq .L_8043DC04
    .4byte 0x40800014 # bge .L_8043DB9C
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8043DBAC
    .4byte 0x40800044 # bge .L_8043DBD8
    .4byte 0x480000EC # b .L_8043DC84
L_8043DB9C:
    cmpwi 0, 0x4
    .4byte 0x418200BC # beq .L_8043DC5C
    .4byte 0x408000E0 # bge .L_8043DC84
    .4byte 0x48000088 # b .L_8043DC30
L_8043DBAC:
    lwz 3, 0x14(31)
    li 4, 0x0
    .4byte 0xC0220D50 # lfs f1, lbl_80543CF0@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420D54 # lfs f2, lbl_80543CF4@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x480000B0 # b .L_8043DC84
L_8043DBD8:
    lwz 3, 0x18(31)
    li 4, 0x0
    .4byte 0xC0220D50 # lfs f1, lbl_80543CF0@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420D54 # lfs f2, lbl_80543CF4@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x48000084 # b .L_8043DC84
L_8043DC04:
    lwz 3, 0x1c(31)
    li 4, 0x0
    .4byte 0xC0220D50 # lfs f1, lbl_80543CF0@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420D54 # lfs f2, lbl_80543CF4@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x48000058 # b .L_8043DC84
L_8043DC30:
    lwz 3, 0x20(31)
    li 4, 0x0
    .4byte 0xC0220D50 # lfs f1, lbl_80543CF0@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420D54 # lfs f2, lbl_80543CF4@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
    .4byte 0x4800002C # b .L_8043DC84
L_8043DC5C:
    lwz 3, 0x24(31)
    li 4, 0x0
    .4byte 0xC0220D50 # lfs f1, lbl_80543CF0@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    .4byte 0xC0420D54 # lfs f2, lbl_80543CF4@sda21(r0)
    lwz 12, 0xe4(12)
    mtctr 12
    bctrl
L_8043DC84:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043DC98:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_8043DD48
    lwz 3, 0x290(31)
    bl fn_8041F720
    lwz 3, 0x2b0(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DCD4
    bl fn_8044A024
L_8043DCD4:
    lwz 3, 0x29c(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DCE4
    bl fn_80445CDC
L_8043DCE4:
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DCF4
    bl fn_804482EC
L_8043DCF4:
    lwz 3, 0x2b4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DD04
    bl fn_8044AF90
L_8043DD04:
    lwz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DD14
    bl fn_80449070
L_8043DD14:
    lwz 3, 0x2a4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DD24
    bl fn_80447958
L_8043DD24:
    lwz 3, 0x2a0(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DD34
    bl fn_80446D68
L_8043DD34:
    lwz 3, 0x2b8(31)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8043DD50
    bl fn_8044C14C
    .4byte 0x4800000C # b .L_8043DD50
L_8043DD48:
    lwz 3, 0x294(31)
    bl fn_80425F6C
L_8043DD50:
    lwz 3, 0x2bc(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DD60
    bl fn_804556A4
L_8043DD60:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 24, 30
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 31, 29
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 30, 28
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 29, 27
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 24, 30
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 31, 29
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 30, 28
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    rlwinm 0, 0, 0, 29, 27
    stb 0, 0xdc(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    mr 3, 31
    bl fn_8043BB84
    mr 3, 31
    bl fn_8043ACE4
    mr 3, 31
    bl fn_8043A638
    lwz 3, 0x10(31)
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_8043DE4C
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8043DE4C
    lwz 12, 0x0(3)
    li 4, 0x0
    lfs 1, 0x1c0(31)
    li 5, 0x0
    lwz 12, 0xec(12)
    li 6, 0x0
    lfs 2, 0x1c4(31)
    lfs 3, 0x1c8(31)
    lfs 4, 0x1cc(31)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0x254(31)
L_8043DE4C:
    lwz 0, 0x298(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8043DE60
    .4byte 0x806D9330 # lwz r3, lbl_8053AEF0@sda21(r0)
    bl fn_804435E4
L_8043DE60:
    lbz 0, 0x257(31)
    cmplwi 0, 0x0
    .4byte 0x418200A8 # beq .L_8043DF10
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0xc(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lis 5, lbl_8050DB0C@ha
    lis 4, 0x4330
    addi 6, 5, lbl_8050DB0C@l
    lwz 12, 0x0(3)
    lha 5, 0x2a2(6)
    lha 0, 0x2a4(6)
    xoris 5, 5, 0x8000
    stw 4, 0x8(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8620CF8 # lfd f3, lbl_80543C98@sda21(r0)
    stw 5, 0xc(1)
    lfs 4, 0x110(31)
    lfd 0, 0x8(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 3
    lfs 2, 0x114(31)
    stw 4, 0x10(1)
    lwz 12, 0x10(12)
    lfd 0, 0x10(1)
    fadds 1, 4, 1
    fsubs 0, 0, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0xc(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_8043DF10:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8043DF24:
    .4byte 0xC0C20D5C # lfs f6, lbl_80543CFC@sda21(r0)
    .4byte 0xC1020D58 # lfs f8, lbl_80543CF8@sda21(r0)
    fsubs 0, 1, 6
    fsubs 7, 2, 8
    fadds 6, 6, 1
    fsubs 0, 0, 5
    fadds 1, 8, 2
    fsubs 2, 7, 5
    fcmpo cr0, 3, 0
    fadds 0, 5, 6
    fadds 1, 5, 1
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043DF84
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043DF84
    fcmpo cr0, 4, 2
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043DF84
    fcmpo cr0, 4, 1
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043DF84
    li 3, 0x0
    blr
L_8043DF84:
    li 3, 0x1
    blr

fn_8043DF8C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    .4byte 0xC0020CE8 # lfs f0, lbl_80543C88@sda21(r0)
    fmr 27, 1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fmr 28, 2
    stfs 0, 0x14(1)
    addi 4, 1, 0x14
    addi 7, 1, 0x2c
    stfs 0, 0x18(1)
    li 5, 0x0
    li 6, 0x0
    stfs 0, 0x1c(1)
    lwz 3, 0x24(3)
    bl fn_8030C5F0
    .4byte 0xC0020CE8 # lfs f0, lbl_80543C88@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC0220D20 # lfs f1, lbl_80543CC0@sda21(r0)
    addi 7, 1, 0x20
    stfs 0, 0xc(1)
    li 5, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 6, 0x0
    stfs 1, 0x8(1)
    stfs 0, 0x10(1)
    lwz 3, 0x24(3)
    bl fn_8030C5F0
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lfs 1, 0x20(1)
    lfs 0, 0x2c(1)
    lbz 0, 0x10b(3)
    fsubs 29, 1, 0
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043E084
    lbz 0, 0x10c(3)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8043E084
    lwz 3, 0x64(3)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lfs 1, 0x4(3)
    .4byte 0xC0020D28 # lfs f0, lbl_80543CC8@sda21(r0)
    .4byte 0xC0420D4C # lfs f2, lbl_80543CEC@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC0620D48 # lfs f3, lbl_80543CE8@sda21(r0)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fdivs 1, 1, 0
L_8043E084:
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    .4byte 0xC0020D64 # lfs f0, lbl_80543D04@sda21(r0)
    fadds 4, 2, 1
    .4byte 0xC0220D60 # lfs f1, lbl_80543D00@sda21(r0)
    fsubs 31, 0, 29
    fadds 3, 29, 1
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fcmpo cr0, 27, 31
    fsubs 1, 1, 29
    fadds 0, 29, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E0E4
    fcmpo cr0, 27, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E0E4
    fcmpo cr0, 28, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E0E4
    fcmpo cr0, 28, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E0E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E0E8
L_8043E0E4:
    li 0, 0x1
L_8043E0E8:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E100
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x1
    stb 0, 0xdc(3)
L_8043E100:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    lbz 0, 0x10b(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043E150
    lbz 0, 0x10c(3)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8043E150
    lwz 3, 0x64(3)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lfs 1, 0x4(3)
    .4byte 0xC0020D28 # lfs f0, lbl_80543CC8@sda21(r0)
    .4byte 0xC0420D4C # lfs f2, lbl_80543CEC@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC0620D48 # lfs f3, lbl_80543CE8@sda21(r0)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fdivs 1, 1, 0
L_8043E150:
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    .4byte 0xC0020D6C # lfs f0, lbl_80543D0C@sda21(r0)
    fadds 4, 2, 1
    .4byte 0xC0220D68 # lfs f1, lbl_80543D08@sda21(r0)
    fsubs 30, 0, 29
    fadds 3, 29, 1
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fcmpo cr0, 27, 30
    fsubs 1, 1, 29
    fadds 0, 29, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E1B0
    fcmpo cr0, 27, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E1B0
    fcmpo cr0, 28, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E1B0
    fcmpo cr0, 28, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E1B0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E1B4
L_8043E1B0:
    li 0, 0x1
L_8043E1B4:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E1CC
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x2
    stb 0, 0xdc(3)
L_8043E1CC:
    .4byte 0x83ED9310 # lwz r31, lbl_8053AED0@sda21(r0)
    .4byte 0xC0420CE8 # lfs f2, lbl_80543C88@sda21(r0)
    lbz 0, 0x10b(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043E21C
    lbz 0, 0x10c(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8043E21C
    lwz 3, 0x40(31)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x40(31)
    lfs 2, 0x4(3)
    lfs 0, 0xc(4)
    .4byte 0xC0220D24 # lfs f1, lbl_80543CC4@sda21(r0)
    fsubs 0, 2, 0
    .4byte 0xC0420D48 # lfs f2, lbl_80543CE8@sda21(r0)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fdivs 2, 0, 1
L_8043E21C:
    .4byte 0xC0220D70 # lfs f1, lbl_80543D10@sda21(r0)
    fcmpo cr0, 27, 31
    .4byte 0xC0020D60 # lfs f0, lbl_80543D00@sda21(r0)
    fadds 4, 1, 2
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    fadds 3, 29, 0
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fsubs 1, 1, 29
    fadds 0, 29, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E278
    fcmpo cr0, 27, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E278
    fcmpo cr0, 28, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E278
    fcmpo cr0, 28, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E278
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E27C
L_8043E278:
    li 0, 0x1
L_8043E27C:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E294
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x4
    stb 0, 0xdc(3)
L_8043E294:
    .4byte 0x83ED9310 # lwz r31, lbl_8053AED0@sda21(r0)
    .4byte 0xC0420CE8 # lfs f2, lbl_80543C88@sda21(r0)
    lbz 0, 0x10b(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043E2E4
    lbz 0, 0x10c(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8043E2E4
    lwz 3, 0x40(31)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x40(31)
    lfs 2, 0x4(3)
    lfs 0, 0xc(4)
    .4byte 0xC0220D24 # lfs f1, lbl_80543CC4@sda21(r0)
    fsubs 0, 2, 0
    .4byte 0xC0420D48 # lfs f2, lbl_80543CE8@sda21(r0)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fdivs 2, 0, 1
L_8043E2E4:
    .4byte 0xC0220D70 # lfs f1, lbl_80543D10@sda21(r0)
    fcmpo cr0, 27, 30
    .4byte 0xC0020D68 # lfs f0, lbl_80543D08@sda21(r0)
    fadds 4, 1, 2
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    fadds 3, 29, 0
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fsubs 1, 1, 29
    fadds 0, 29, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E340
    fcmpo cr0, 27, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E340
    fcmpo cr0, 28, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E340
    fcmpo cr0, 28, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E340
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E344
L_8043E340:
    li 0, 0x1
L_8043E344:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E35C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x8
    stb 0, 0xdc(3)
L_8043E35C:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    lwz 0, 0x94(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8043E398:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stfd 27, 0x30(1)
    psq_st 27, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 31, 5
    addi 7, 1, 0x14
    li 5, 0x0
    lwz 3, 0x24(3)
    li 6, 0x0
    bl fn_8030C5F0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    addi 7, 1, 0x8
    li 5, 0x0
    lwz 3, 0x24(3)
    li 6, 0x0
    bl fn_8030C5F0
    lfs 3, 0xc(1)
    lfs 2, 0x18(1)
    lfs 1, 0x8(1)
    lfs 0, 0x14(1)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fabs 1, 2
    fabs 2, 0
    frsp 0, 1
    frsp 31, 2
    fcmpo cr0, 31, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8043E440
    .4byte 0x48000008 # b .L_8043E444
L_8043E440:
    fmr 31, 0
L_8043E444:
    lfs 2, 0x14(1)
    lfs 0, 0x8(1)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lfs 1, 0x18(1)
    fadds 3, 2, 0
    lfs 0, 0xc(1)
    .4byte 0xC0420D18 # lfs f2, lbl_80543CB8@sda21(r0)
    fadds 0, 1, 0
    lbz 0, 0x10b(3)
    fmuls 28, 3, 2
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    cmplwi 0, 0x0
    fmuls 27, 0, 2
    .4byte 0x41820040 # beq .L_8043E4B8
    lbz 0, 0x10c(3)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8043E4B8
    lwz 3, 0x64(3)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lfs 1, 0x4(3)
    .4byte 0xC0020D28 # lfs f0, lbl_80543CC8@sda21(r0)
    .4byte 0xC0420D4C # lfs f2, lbl_80543CEC@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC0620D48 # lfs f3, lbl_80543CE8@sda21(r0)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fdivs 1, 1, 0
L_8043E4B8:
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    .4byte 0xC0020D64 # lfs f0, lbl_80543D04@sda21(r0)
    fadds 4, 2, 1
    .4byte 0xC0220D60 # lfs f1, lbl_80543D00@sda21(r0)
    fsubs 30, 0, 31
    fadds 3, 31, 1
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fcmpo cr0, 28, 30
    fsubs 1, 1, 31
    fadds 0, 31, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E518
    fcmpo cr0, 28, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E518
    fcmpo cr0, 27, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E518
    fcmpo cr0, 27, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E518
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E51C
L_8043E518:
    li 0, 0x1
L_8043E51C:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E534
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x1
    stb 0, 0xdc(3)
L_8043E534:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    lbz 0, 0x10b(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043E584
    lbz 0, 0x10c(3)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8043E584
    lwz 3, 0x64(3)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lfs 1, 0x4(3)
    .4byte 0xC0020D28 # lfs f0, lbl_80543CC8@sda21(r0)
    .4byte 0xC0420D4C # lfs f2, lbl_80543CEC@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC0620D48 # lfs f3, lbl_80543CE8@sda21(r0)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fdivs 1, 1, 0
L_8043E584:
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    .4byte 0xC0020D6C # lfs f0, lbl_80543D0C@sda21(r0)
    fadds 4, 2, 1
    .4byte 0xC0220D68 # lfs f1, lbl_80543D08@sda21(r0)
    fsubs 29, 0, 31
    fadds 3, 31, 1
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fcmpo cr0, 28, 29
    fsubs 1, 1, 31
    fadds 0, 31, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E5E4
    fcmpo cr0, 28, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E5E4
    fcmpo cr0, 27, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E5E4
    fcmpo cr0, 27, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E5E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E5E8
L_8043E5E4:
    li 0, 0x1
L_8043E5E8:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E600
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x2
    stb 0, 0xdc(3)
L_8043E600:
    .4byte 0x83ED9310 # lwz r31, lbl_8053AED0@sda21(r0)
    .4byte 0xC0420CE8 # lfs f2, lbl_80543C88@sda21(r0)
    lbz 0, 0x10b(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043E650
    lbz 0, 0x10c(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8043E650
    lwz 3, 0x40(31)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x40(31)
    lfs 2, 0x4(3)
    lfs 0, 0xc(4)
    .4byte 0xC0220D24 # lfs f1, lbl_80543CC4@sda21(r0)
    fsubs 0, 2, 0
    .4byte 0xC0420D48 # lfs f2, lbl_80543CE8@sda21(r0)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fdivs 2, 0, 1
L_8043E650:
    .4byte 0xC0220D70 # lfs f1, lbl_80543D10@sda21(r0)
    fcmpo cr0, 28, 30
    .4byte 0xC0020D60 # lfs f0, lbl_80543D00@sda21(r0)
    fadds 4, 1, 2
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    fadds 3, 31, 0
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fsubs 1, 1, 31
    fadds 0, 31, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E6AC
    fcmpo cr0, 28, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E6AC
    fcmpo cr0, 27, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E6AC
    fcmpo cr0, 27, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E6AC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E6B0
L_8043E6AC:
    li 0, 0x1
L_8043E6B0:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E6C8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x4
    stb 0, 0xdc(3)
L_8043E6C8:
    .4byte 0x83ED9310 # lwz r31, lbl_8053AED0@sda21(r0)
    .4byte 0xC0420CE8 # lfs f2, lbl_80543C88@sda21(r0)
    lbz 0, 0x10b(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043E718
    lbz 0, 0x10c(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8043E718
    lwz 3, 0x40(31)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x40(31)
    lfs 2, 0x4(3)
    lfs 0, 0xc(4)
    .4byte 0xC0220D24 # lfs f1, lbl_80543CC4@sda21(r0)
    fsubs 0, 2, 0
    .4byte 0xC0420D48 # lfs f2, lbl_80543CE8@sda21(r0)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fdivs 2, 0, 1
L_8043E718:
    .4byte 0xC0220D70 # lfs f1, lbl_80543D10@sda21(r0)
    fcmpo cr0, 28, 29
    .4byte 0xC0020D68 # lfs f0, lbl_80543D08@sda21(r0)
    fadds 4, 1, 2
    .4byte 0xC0420D58 # lfs f2, lbl_80543CF8@sda21(r0)
    fadds 3, 31, 0
    fsubs 1, 4, 2
    fadds 0, 2, 4
    fsubs 1, 1, 31
    fadds 0, 31, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8043E774
    fcmpo cr0, 28, 3
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_8043E774
    fcmpo cr0, 27, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8043E774
    fcmpo cr0, 27, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8043E774
    li 0, 0x0
    .4byte 0x48000008 # b .L_8043E778
L_8043E774:
    li 0, 0x1
L_8043E778:
    clrlwi. 0, 0, 24
    .4byte 0x40820014 # bne .L_8043E790
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x8
    stb 0, 0xdc(3)
L_8043E790:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    psq_l 27, 0x38(1), 0, 0
    lfd 27, 0x30(1)
    lwz 0, 0x84(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8043E7CC:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    li 6, 0x0
    stw 0, 0x24(1)
    addi 7, 1, 0x8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C5F0
    lfs 1, 0x8(1)
    lfs 2, 0xc(1)
    bl fn_80440928
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8043E80C:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stw 31, 0xac(1)
    stw 30, 0xa8(1)
    .4byte 0xC0020D44 # lfs f0, lbl_80543CE4@sda21(r0)
    mr 30, 3
    mr 31, 5
    fcmpu cr0, 0, 3
    mfcr 0
    .4byte 0xC0020D34 # lfs f0, lbl_80543CD4@sda21(r0)
    extrwi 5, 0, 1, 2
    fcmpu cr0, 0, 3
    mfcr 0
    .4byte 0xC0020D40 # lfs f0, lbl_80543CE0@sda21(r0)
    extrwi 3, 0, 1, 2
    fcmpu cr0, 0, 3
    mfcr 0
    extrwi 0, 0, 1, 2
    or 0, 3, 0
    or. 0, 5, 0
    .4byte 0x41820010 # beq .L_8043E890
    .4byte 0xC3A20D74 # lfs f29, lbl_80543D14@sda21(r0)
    fmr 28, 29
    .4byte 0x48000040 # b .L_8043E8CC
L_8043E890:
    .4byte 0xC0020D2C # lfs f0, lbl_80543CCC@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x40810018 # ble .L_8043E8B0
    .4byte 0xC0020D78 # lfs f0, lbl_80543D18@sda21(r0)
    fmuls 0, 0, 3
    fmr 29, 0
    fmr 28, 0
    .4byte 0x48000020 # b .L_8043E8CC
L_8043E8B0:
    fcmpu cr0, 0, 3
    .4byte 0x40820010 # bne .L_8043E8C4
    .4byte 0xC3A20D7C # lfs f29, lbl_80543D1C@sda21(r0)
    fmr 28, 29
    .4byte 0x4800000C # b .L_8043E8CC
L_8043E8C4:
    .4byte 0xC3A20D80 # lfs f29, lbl_80543D20@sda21(r0)
    fmr 28, 29
L_8043E8CC:
    .4byte 0xC0020D84 # lfs f0, lbl_80543D24@sda21(r0)
    cmplwi 4, 0x9
    .4byte 0xC0620D18 # lfs f3, lbl_80543CB8@sda21(r0)
    fadds 1, 0, 1
    fadds 0, 0, 2
    fnmsubs 31, 29, 3, 1
    fnmsubs 30, 28, 3, 0
    .4byte 0x418104C8 # bgt .L_8043EDB0
    lis 3, jumptable_804B1954@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804B1954@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    stw 7, 0x9c(1)
    addi 4, 1, 0xa4
    addi 5, 1, 0x9c
    stw 6, 0xa4(1)
    lwz 3, 0x258(30)
    stw 7, 0x98(1)
    lwz 12, 0x0(3)
    stw 6, 0xa0(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x258(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x258(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000438 # b .L_8043EDB0
    stw 7, 0x8c(1)
    addi 4, 1, 0x94
    addi 5, 1, 0x8c
    stw 6, 0x94(1)
    lwz 3, 0x25c(30)
    stw 7, 0x88(1)
    lwz 12, 0x0(3)
    stw 6, 0x90(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x25c(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x25c(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x480003C0 # b .L_8043EDB0
    stw 7, 0x7c(1)
    addi 4, 1, 0x84
    addi 5, 1, 0x7c
    stw 6, 0x84(1)
    lwz 3, 0x260(30)
    stw 7, 0x78(1)
    lwz 12, 0x0(3)
    stw 6, 0x80(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x260(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x260(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000348 # b .L_8043EDB0
    stw 7, 0x6c(1)
    addi 4, 1, 0x74
    addi 5, 1, 0x6c
    stw 6, 0x74(1)
    lwz 3, 0x264(30)
    stw 7, 0x68(1)
    lwz 12, 0x0(3)
    stw 6, 0x70(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x264(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x264(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x480002D0 # b .L_8043EDB0
    stw 7, 0x5c(1)
    addi 4, 1, 0x64
    addi 5, 1, 0x5c
    stw 6, 0x64(1)
    lwz 3, 0x268(30)
    stw 7, 0x58(1)
    lwz 12, 0x0(3)
    stw 6, 0x60(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x268(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x268(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000258 # b .L_8043EDB0
    stw 7, 0x4c(1)
    addi 4, 1, 0x54
    addi 5, 1, 0x4c
    stw 6, 0x54(1)
    lwz 3, 0x26c(30)
    stw 7, 0x48(1)
    lwz 12, 0x0(3)
    stw 6, 0x50(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x26c(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x26c(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x480001E0 # b .L_8043EDB0
    stw 7, 0x3c(1)
    addi 4, 1, 0x44
    addi 5, 1, 0x3c
    stw 6, 0x44(1)
    lwz 3, 0x270(30)
    stw 7, 0x38(1)
    lwz 12, 0x0(3)
    stw 6, 0x40(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x270(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x270(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000168 # b .L_8043EDB0
    stw 7, 0x2c(1)
    addi 4, 1, 0x34
    addi 5, 1, 0x2c
    stw 6, 0x34(1)
    lwz 3, 0x274(30)
    stw 7, 0x28(1)
    lwz 12, 0x0(3)
    stw 6, 0x30(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x274(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x274(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x480000F0 # b .L_8043EDB0
    stw 7, 0x1c(1)
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    stw 6, 0x24(1)
    lwz 3, 0x278(30)
    stw 7, 0x18(1)
    lwz 12, 0x0(3)
    stw 6, 0x20(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x278(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x278(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000078 # b .L_8043EDB0
    stw 7, 0xc(1)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    stw 6, 0x14(1)
    lwz 3, 0x27c(30)
    stw 7, 0x8(1)
    lwz 12, 0x0(3)
    stw 6, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x27c(30)
    mr 4, 31
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x27c(30)
    fmr 1, 31
    fmr 2, 30
    li 4, 0x0
    lwz 12, 0x0(3)
    fmr 3, 29
    fmr 4, 28
    lwz 12, 0xec(12)
    li 5, 0x0
    li 6, 0x0
    mtctr 12
    bctrl
L_8043EDB0:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    lwz 31, 0xac(1)
    lwz 0, 0xf4(1)
    lwz 30, 0xa8(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_8043EDE8:
    stw 4, 0xe0(3)
    li 0, 0x1e
    stw 0, 0xe4(3)
    blr

fn_8043EDF8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0xdd(3)
    stb 0, 0xdc(3)
    stb 0, 0x255(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_8043EEA8
    lwz 3, 0x290(31)
    bl fn_8041FC2C
    lwz 3, 0x2b0(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043EE44
    bl fn_8044A06C
L_8043EE44:
    lwz 3, 0x29c(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043EE54
    bl fn_80445D24
L_8043EE54:
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043EE64
    bl fn_80448334
L_8043EE64:
    lwz 3, 0x2b4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043EE74
    bl fn_8044AFD8
L_8043EE74:
    lwz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043EE84
    bl fn_804490B8
L_8043EE84:
    lwz 3, 0x2a4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043EE94
    bl fn_804479A0
L_8043EE94:
    lwz 3, 0x2a0(31)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8043EEB0
    bl fn_80446DB0
    .4byte 0x4800000C # b .L_8043EEB0
L_8043EEA8:
    lwz 3, 0x294(31)
    bl fn_804263A8
L_8043EEB0:
    lwz 0, 0x298(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8043EEC4
    .4byte 0x806D9330 # lwz r3, lbl_8053AEF0@sda21(r0)
    bl fn_80443688
L_8043EEC4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043EED8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 31, 3
    mr 30, 4
    .4byte 0x418205FC # beq .L_8043F4EC
    lis 3, lbl_804B1920@ha
    addi 0, 3, lbl_804B1920@l
    stw 0, 0x0(31)
    lwz 3, 0x290(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043EF2C
    .4byte 0x41820018 # beq .L_8043EF24
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043EF24:
    li 0, 0x0
    stw 0, 0x290(31)
L_8043EF2C:
    lwz 3, 0x294(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043EF58
    .4byte 0x41820018 # beq .L_8043EF50
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043EF50:
    li 0, 0x0
    stw 0, 0x294(31)
L_8043EF58:
    lwz 3, 0x298(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043EF84
    .4byte 0x41820018 # beq .L_8043EF7C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043EF7C:
    li 0, 0x0
    stw 0, 0x298(31)
L_8043EF84:
    lwz 3, 0x2b8(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043EFB0
    .4byte 0x41820018 # beq .L_8043EFA8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043EFA8:
    li 0, 0x0
    stw 0, 0x2b8(31)
L_8043EFB0:
    lwz 3, 0x2b0(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043EFDC
    .4byte 0x41820018 # beq .L_8043EFD4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043EFD4:
    li 0, 0x0
    stw 0, 0x2b0(31)
L_8043EFDC:
    lwz 3, 0x29c(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F008
    .4byte 0x41820018 # beq .L_8043F000
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F000:
    li 0, 0x0
    stw 0, 0x29c(31)
L_8043F008:
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F034
    .4byte 0x41820018 # beq .L_8043F02C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F02C:
    li 0, 0x0
    stw 0, 0x2a8(31)
L_8043F034:
    lwz 3, 0x2b4(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F060
    .4byte 0x41820018 # beq .L_8043F058
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F058:
    li 0, 0x0
    stw 0, 0x2b4(31)
L_8043F060:
    lwz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F08C
    .4byte 0x41820018 # beq .L_8043F084
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F084:
    li 0, 0x0
    stw 0, 0x2ac(31)
L_8043F08C:
    lwz 3, 0x2a4(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F0B8
    .4byte 0x41820018 # beq .L_8043F0B0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F0B0:
    li 0, 0x0
    stw 0, 0x2a4(31)
L_8043F0B8:
    lwz 3, 0x2a0(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F0E4
    .4byte 0x41820018 # beq .L_8043F0DC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F0DC:
    li 0, 0x0
    stw 0, 0x2a0(31)
L_8043F0E4:
    lwz 3, 0x2bc(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F110
    .4byte 0x41820018 # beq .L_8043F108
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F108:
    li 0, 0x0
    stw 0, 0x2bc(31)
L_8043F110:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F130
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F130:
    li 0, 0x0
    stw 0, 0x4(31)
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F158
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F158:
    li 0, 0x0
    stw 0, 0x8(31)
    lwz 3, 0xc(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F180
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F180:
    li 29, 0x0
    mr 28, 31
    stw 29, 0xc(31)
    li 27, 0x0
L_8043F190:
    lwz 3, 0x40(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F1B0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F1B0:
    addi 27, 27, 0x1
    stw 29, 0x40(28)
    cmpwi 27, 0xc
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_8043F190
    lwz 3, 0x70(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F1E4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F1E4:
    li 0, 0x0
    stw 0, 0x70(31)
    lwz 3, 0x74(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F20C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F20C:
    li 0, 0x0
    stw 0, 0x74(31)
    lwz 3, 0x258(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F234
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F234:
    li 0, 0x0
    stw 0, 0x258(31)
    lwz 3, 0x25c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F25C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F25C:
    li 0, 0x0
    stw 0, 0x25c(31)
    lwz 3, 0x260(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F284
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F284:
    li 0, 0x0
    stw 0, 0x260(31)
    lwz 3, 0x264(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F2AC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F2AC:
    li 0, 0x0
    stw 0, 0x264(31)
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F2D4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F2D4:
    li 0, 0x0
    stw 0, 0x268(31)
    lwz 3, 0x26c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F2FC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F2FC:
    li 0, 0x0
    stw 0, 0x26c(31)
    lwz 3, 0x270(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F324
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F324:
    li 0, 0x0
    stw 0, 0x270(31)
    lwz 3, 0x274(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F34C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F34C:
    li 0, 0x0
    stw 0, 0x274(31)
    lwz 3, 0x278(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F374
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F374:
    li 0, 0x0
    stw 0, 0x278(31)
    lwz 3, 0x27c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F39C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F39C:
    li 0, 0x0
    stw 0, 0x27c(31)
    lwz 3, 0x280(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F3C4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F3C4:
    li 0, 0x0
    stw 0, 0x280(31)
    lwz 3, 0x284(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F3EC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F3EC:
    li 0, 0x0
    stw 0, 0x284(31)
    lwz 3, 0x288(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F414
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F414:
    li 0, 0x0
    stw 0, 0x288(31)
    lwz 3, 0x28c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F43C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F43C:
    li 29, 0x0
    mr 28, 31
    stw 29, 0x28c(31)
    li 27, 0x0
L_8043F44C:
    lwz 3, 0x14(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F46C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F46C:
    addi 27, 27, 0x1
    stw 29, 0x14(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_8043F44C
    lwz 3, 0x24(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8043F4A0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F4A0:
    li 0, 0x0
    stw 0, 0x24(31)
    lwz 3, 0x10(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8043F4D4
    .4byte 0x41820018 # beq .L_8043F4CC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8043F4CC:
    li 0, 0x0
    stw 0, 0x10(31)
L_8043F4D4:
    li 3, 0x0
    extsh. 0, 30
    .4byte 0x906D9310 # stw r3, lbl_8053AED0@sda21(r0)
    .4byte 0x4081000C # ble .L_8043F4EC
    mr 3, 31
    bl dtor_80084580
L_8043F4EC:
    mr 3, 31
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8043F504:
    stwu 1, -0xd0(1)
    mflr 0
    lis 5, lbl_804B1920@ha
    lis 4, lbl_80529DEC@ha
    stw 0, 0xd4(1)
    addi 0, 5, lbl_804B1920@l
    lis 6, lbl_8048F710@ha
    stmw 27, 0xbc(1)
    mr 31, 3
    addi 3, 4, lbl_80529DEC@l
    addi 30, 6, lbl_8048F710@l
    stw 0, 0x0(31)
    li 0, 0x0
    .4byte 0x93ED9310 # stw r31, lbl_8053AED0@sda21(r0)
    stb 0, 0x24a(3)
    stb 0, 0xdd(31)
    stb 0, 0xdc(31)
    stb 0, 0x10e(31)
    stb 0, 0xde(31)
    stb 0, 0x255(31)
    stb 0, 0x257(31)
    stw 0, 0x290(31)
    stw 0, 0x294(31)
    stw 0, 0x298(31)
    stw 0, 0x29c(31)
    stw 0, 0x2a0(31)
    stw 0, 0x2a4(31)
    stw 0, 0x2a8(31)
    stw 0, 0x2ac(31)
    stw 0, 0x2b0(31)
    stw 0, 0x2b4(31)
    stw 0, 0x2b8(31)
    stw 0, 0x2bc(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820218 # beq .L_8043F7AC
    li 3, 0x29c
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F5AC
    bl fn_80420574
L_8043F5AC:
    lis 3, lbl_80529DEC@ha
    stw 27, 0x290(31)
    addi 29, 3, lbl_80529DEC@l
    lwz 0, 0x118(29)
    cmpwi 0, 0x9
    .4byte 0x40820028 # bne .L_8043F5E8
    lwz 0, 0x11c(29)
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_8043F5E8
    li 3, 0x18
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F5E4
    bl fn_80443760
L_8043F5E4:
    stw 27, 0x298(31)
L_8043F5E8:
    lwz 0, 0x118(29)
    cmpwi 0, 0x8
    .4byte 0x40820030 # bne .L_8043F620
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_8043F620
    li 3, 0x1c
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F61C
    bl fn_8044C260
L_8043F61C:
    stw 27, 0x2b8(31)
L_8043F620:
    lwz 4, 0x118(29)
    cmpwi 4, 0x4
    .4byte 0x40820034 # bne .L_8043F65C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_8043F65C
    li 3, 0x14
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F654
    bl fn_8044A4D4
L_8043F654:
    stw 27, 0x2b0(31)
    .4byte 0x4800016C # b .L_8043F7C4
L_8043F65C:
    cmpwi 4, 0x0
    .4byte 0x40820034 # bne .L_8043F694
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8043F694
    li 3, 0x48
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F68C
    bl fn_804461D0
L_8043F68C:
    stw 27, 0x29c(31)
    .4byte 0x48000134 # b .L_8043F7C4
L_8043F694:
    cmpwi 4, 0x1
    .4byte 0x40820034 # bne .L_8043F6CC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_8043F6CC
    li 3, 0x30
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F6C4
    bl fn_804485C4
L_8043F6C4:
    stw 27, 0x2a8(31)
    .4byte 0x480000FC # b .L_8043F7C4
L_8043F6CC:
    cmpwi 4, 0x1
    .4byte 0x40820034 # bne .L_8043F704
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8043F704
    li 3, 0x30
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F6FC
    bl fn_80447C30
L_8043F6FC:
    stw 27, 0x2a4(31)
    .4byte 0x480000C4 # b .L_8043F7C4
L_8043F704:
    cmpwi 4, 0x2
    .4byte 0x40820034 # bne .L_8043F73C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8043F73C
    li 3, 0x34
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F734
    bl fn_8044728C
L_8043F734:
    stw 27, 0x2a0(31)
    .4byte 0x4800008C # b .L_8043F7C4
L_8043F73C:
    cmpwi 4, 0x4
    .4byte 0x40820034 # bne .L_8043F774
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8043F774
    li 3, 0x18
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F76C
    bl fn_8044B4B8
L_8043F76C:
    stw 27, 0x2b4(31)
    .4byte 0x48000054 # b .L_8043F7C4
L_8043F774:
    cmpwi 4, 0x5
    .4byte 0x4082004C # bne .L_8043F7C4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_8043F7C4
    li 3, 0x34
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F7A4
    bl fn_804495B8
L_8043F7A4:
    stw 27, 0x2ac(31)
    .4byte 0x4800001C # b .L_8043F7C4
L_8043F7AC:
    li 3, 0x264
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F7C0
    bl fn_80426DEC
L_8043F7C0:
    stw 27, 0x294(31)
L_8043F7C4:
    li 3, 0xa30
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F7D8
    bl fn_80455930
L_8043F7D8:
    stw 27, 0x2bc(31)
    li 0, 0x0
    li 3, 0x118
    stb 0, 0x10a(31)
    stw 0, 0xfc(31)
    stw 0, 0xe8(31)
    stw 0, 0x100(31)
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F804
    bl fn_8009C4EC
L_8043F804:
    stw 27, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 29, 3, lbl_80529DEC@l
    addi 4, 30, 0x230
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x20(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F838
    bl fn_8009C4EC
L_8043F838:
    stw 27, 0x8(31)
    addi 4, 30, 0x248
    lis 5, 0x110
    lwz 3, 0x8(31)
    lwz 6, 0x20(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 27, 3
    .4byte 0x41820008 # beq .L_8043F864
    bl fn_8009C4EC
L_8043F864:
    stw 27, 0xc(31)
    addi 4, 30, 0x25c
    lis 5, 0x110
    lwz 3, 0xc(31)
    lwz 6, 0x20(29)
    bl fn_8009C69C
    lwz 3, 0xc(31)
    lis 4, 0x546d
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x546d
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x3162
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5031
    stb 0, 0xb0(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x3562
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5035
    stb 0, 0xb0(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7461
    stb 0, 0xb0(3)
    lis 4, 0x4e
    addi 6, 5, 0x3035
    lwz 3, 0xc(31)
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lis 4, 0x7461
    .4byte 0xC0020D88 # lfs f0, lbl_80543D28@sda21(r0)
    lis 3, 0x4e
    addi 6, 4, 0x3035
    fadds 0, 0, 1
    addi 5, 3, 0x6461
    stfs 0, 0x110(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x3031
    li 0, 0x0
    li 5, 0x5077
    stfs 0, 0x114(31)
    addi 6, 3, 0x3031
    sth 0, 0x106(31)
    sth 0, 0x108(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x3031
    addi 6, 3, 0x3031
    li 5, 0x5077
    stfs 0, 0xec(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 3, 0x6d74
    .4byte 0xC0020CE8 # lfs f0, lbl_80543C88@sda21(r0)
    li 0, 0x0
    stfs 1, 0xf0(31)
    addi 6, 3, 0x3032
    li 5, 0x546d
    stfs 0, 0xf4(31)
    stfs 0, 0xf8(31)
    stb 0, 0x10d(31)
    lwz 3, 0x4(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 29, 0x154(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d74
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x546d
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lis 3, lbl_804AF86C@ha
    mr 28, 31
    addi 29, 3, lbl_804AF86C@l
    li 27, 0x0
L_8043FAD4:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043FAE8
    stw 29, 0x0(3)
L_8043FAE8:
    addi 27, 27, 0x1
    stw 3, 0x40(28)
    cmpwi 27, 0xc
    addi 28, 28, 0x4
    .4byte 0x4180FFDC # blt .L_8043FAD4
    lwz 3, 0x4(31)
    lis 5, 0x776b
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6d6d
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x40(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 5, 0x776b
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6d6d
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3039
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x48(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3038
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x4c(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3037
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3036
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x54(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3035
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x58(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3034
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x5c(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3033
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x60(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3032
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x64(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3031
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x68(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x7470
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x6c(31)
    bl fn_80402F04
    li 0, 0x0
    addi 4, 1, 0xb4
    stw 0, 0xac(1)
    addi 5, 1, 0xac
    stw 0, 0xb4(1)
    lwz 3, 0x6c(31)
    stw 0, 0xa8(1)
    lwz 3, 0x4(3)
    stw 0, 0xb0(1)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043FD64
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8043FD64:
    stw 3, 0x70(31)
    lis 3, 0x6d74
    addi 6, 3, 0x3031
    li 5, 0x546d
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x70(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8043FDB0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8043FDB0:
    stw 3, 0x74(31)
    lis 3, 0x6d74
    addi 6, 3, 0x3032
    li 5, 0x546d
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x74(31)
    bl fn_80402F04
    li 0, 0x0
    mr 28, 31
    sth 0, 0x104(31)
    li 27, 0x0
    stb 0, 0x10b(31)
    stb 0, 0x10c(31)
    stb 0, 0x78(31)
L_8043FDFC:
    lwz 3, 0x40(28)
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    .4byte 0xC0420D24 # lfs f2, lbl_80543CC4@sda21(r0)
    bl fn_80402E08
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0xc
    .4byte 0x4180FFE4 # blt .L_8043FDFC
    lis 3, 0x5449
    addi 4, 30, 0x26c
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 28, 0
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FE4C
    mr 4, 28
    bl fn_80097800
L_8043FE4C:
    lis 3, 0x5449
    stw 27, 0x258(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x280
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FE7C
    mr 4, 28
    bl fn_80097800
L_8043FE7C:
    lis 3, 0x5449
    stw 27, 0x25c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x294
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FEAC
    mr 4, 28
    bl fn_80097800
L_8043FEAC:
    lis 3, 0x5449
    stw 27, 0x260(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x2a8
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FEDC
    mr 4, 28
    bl fn_80097800
L_8043FEDC:
    lis 3, 0x5449
    stw 27, 0x264(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x2bc
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FF0C
    mr 4, 28
    bl fn_80097800
L_8043FF0C:
    lis 3, 0x5449
    stw 27, 0x268(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x2d0
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FF3C
    mr 4, 28
    bl fn_80097800
L_8043FF3C:
    lis 3, 0x5449
    stw 27, 0x26c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x2e4
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FF6C
    mr 4, 28
    bl fn_80097800
L_8043FF6C:
    lis 3, 0x5449
    stw 27, 0x270(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x2f8
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FF9C
    mr 4, 28
    bl fn_80097800
L_8043FF9C:
    lis 3, 0x5449
    stw 27, 0x274(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x30c
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FFCC
    mr 4, 28
    bl fn_80097800
L_8043FFCC:
    lis 3, 0x5449
    stw 27, 0x278(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x320
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_8043FFFC
    mr 4, 28
    bl fn_80097800
L_8043FFFC:
    stw 27, 0x27c(31)
    lis 3, lbl_804B1810@ha
    lis 5, 0x5449
    lwz 4, lbl_804B1810@l(3)
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_80440030
    mr 4, 28
    bl fn_80097800
L_80440030:
    lis 3, lbl_804B1810@ha
    stw 27, 0x280(31)
    addi 3, 3, lbl_804B1810@l
    lis 5, 0x5449
    lwz 4, 0x4(3)
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_80440068
    mr 4, 28
    bl fn_80097800
L_80440068:
    lis 3, lbl_804B1810@ha
    stw 27, 0x284(31)
    addi 3, 3, lbl_804B1810@l
    lis 5, 0x5449
    lwz 4, 0x8(3)
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_804400A0
    mr 4, 28
    bl fn_80097800
L_804400A0:
    lis 3, lbl_804B1810@ha
    stw 27, 0x288(31)
    addi 3, 3, lbl_804B1810@l
    lis 5, 0x5449
    lwz 4, 0xc(3)
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_804400D8
    mr 4, 28
    bl fn_80097800
L_804400D8:
    lis 3, 0x5449
    stw 27, 0x28c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x334
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_80440108
    mr 4, 28
    bl fn_80097800
L_80440108:
    li 8, 0xff
    li 9, 0x0
    li 7, 0xd2
    stb 8, 0xa0(1)
    li 11, 0xd4
    li 10, 0x22
    stb 7, 0xa1(1)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x344
    stw 27, 0x14(31)
    stb 9, 0xa2(1)
    lwz 5, 0x14(31)
    stb 8, 0xa3(1)
    lwz 0, 0xa0(1)
    stb 8, 0x98(1)
    stw 0, 0xa4(1)
    lbz 6, 0xa4(1)
    stb 7, 0x99(1)
    lbz 0, 0xa5(1)
    stb 6, 0x150(5)
    lbz 6, 0xa6(1)
    stb 0, 0x151(5)
    lbz 0, 0xa7(1)
    stb 6, 0x152(5)
    stb 9, 0x9a(1)
    stb 8, 0x9b(1)
    lwz 6, 0x98(1)
    stb 0, 0x153(5)
    stw 6, 0x9c(1)
    lbz 6, 0x9c(1)
    stb 11, 0x90(1)
    lbz 0, 0x9d(1)
    stb 6, 0x154(5)
    lbz 6, 0x9e(1)
    stb 0, 0x155(5)
    lbz 0, 0x9f(1)
    stb 6, 0x156(5)
    stb 10, 0x91(1)
    stb 9, 0x92(1)
    stb 8, 0x93(1)
    lwz 6, 0x90(1)
    stb 0, 0x157(5)
    stw 6, 0x94(1)
    lbz 6, 0x94(1)
    stb 11, 0x88(1)
    lbz 0, 0x95(1)
    stb 6, 0x158(5)
    lbz 6, 0x96(1)
    stb 0, 0x159(5)
    lbz 0, 0x97(1)
    stb 6, 0x15a(5)
    stb 10, 0x89(1)
    stb 9, 0x8a(1)
    stb 8, 0x8b(1)
    lwz 6, 0x88(1)
    stb 0, 0x15b(5)
    stw 6, 0x8c(1)
    lbz 6, 0x8c(1)
    lbz 0, 0x8d(1)
    stb 6, 0x15c(5)
    lbz 6, 0x8e(1)
    stb 0, 0x15d(5)
    lbz 0, 0x8f(1)
    stb 6, 0x15e(5)
    stb 0, 0x15f(5)
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_80440230
    mr 4, 28
    bl fn_80097800
L_80440230:
    li 8, 0xff
    li 9, 0x0
    li 7, 0xd2
    stb 8, 0x80(1)
    li 11, 0xd4
    li 10, 0x22
    stb 7, 0x81(1)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x354
    stw 27, 0x18(31)
    stb 9, 0x82(1)
    lwz 5, 0x18(31)
    stb 8, 0x83(1)
    lwz 0, 0x80(1)
    stb 8, 0x78(1)
    stw 0, 0x84(1)
    lbz 6, 0x84(1)
    stb 7, 0x79(1)
    lbz 0, 0x85(1)
    stb 6, 0x150(5)
    lbz 6, 0x86(1)
    stb 0, 0x151(5)
    lbz 0, 0x87(1)
    stb 6, 0x152(5)
    stb 9, 0x7a(1)
    stb 8, 0x7b(1)
    lwz 6, 0x78(1)
    stb 0, 0x153(5)
    stw 6, 0x7c(1)
    lbz 6, 0x7c(1)
    stb 11, 0x70(1)
    lbz 0, 0x7d(1)
    stb 6, 0x154(5)
    lbz 6, 0x7e(1)
    stb 0, 0x155(5)
    lbz 0, 0x7f(1)
    stb 6, 0x156(5)
    stb 10, 0x71(1)
    stb 9, 0x72(1)
    stb 8, 0x73(1)
    lwz 6, 0x70(1)
    stb 0, 0x157(5)
    stw 6, 0x74(1)
    lbz 6, 0x74(1)
    stb 11, 0x68(1)
    lbz 0, 0x75(1)
    stb 6, 0x158(5)
    lbz 6, 0x76(1)
    stb 0, 0x159(5)
    lbz 0, 0x77(1)
    stb 6, 0x15a(5)
    stb 10, 0x69(1)
    stb 9, 0x6a(1)
    stb 8, 0x6b(1)
    lwz 6, 0x68(1)
    stb 0, 0x15b(5)
    stw 6, 0x6c(1)
    lbz 6, 0x6c(1)
    lbz 0, 0x6d(1)
    stb 6, 0x15c(5)
    lbz 6, 0x6e(1)
    stb 0, 0x15d(5)
    lbz 0, 0x6f(1)
    stb 6, 0x15e(5)
    stb 0, 0x15f(5)
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_80440358
    mr 4, 28
    bl fn_80097800
L_80440358:
    li 8, 0xff
    li 9, 0x0
    li 7, 0xd2
    stb 8, 0x60(1)
    li 11, 0xd4
    li 10, 0x22
    stb 7, 0x61(1)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x364
    stw 27, 0x1c(31)
    stb 9, 0x62(1)
    lwz 5, 0x1c(31)
    stb 8, 0x63(1)
    lwz 0, 0x60(1)
    stb 8, 0x58(1)
    stw 0, 0x64(1)
    lbz 6, 0x64(1)
    stb 7, 0x59(1)
    lbz 0, 0x65(1)
    stb 6, 0x150(5)
    lbz 6, 0x66(1)
    stb 0, 0x151(5)
    lbz 0, 0x67(1)
    stb 6, 0x152(5)
    stb 9, 0x5a(1)
    stb 8, 0x5b(1)
    lwz 6, 0x58(1)
    stb 0, 0x153(5)
    stw 6, 0x5c(1)
    lbz 6, 0x5c(1)
    stb 11, 0x50(1)
    lbz 0, 0x5d(1)
    stb 6, 0x154(5)
    lbz 6, 0x5e(1)
    stb 0, 0x155(5)
    lbz 0, 0x5f(1)
    stb 6, 0x156(5)
    stb 10, 0x51(1)
    stb 9, 0x52(1)
    stb 8, 0x53(1)
    lwz 6, 0x50(1)
    stb 0, 0x157(5)
    stw 6, 0x54(1)
    lbz 6, 0x54(1)
    stb 11, 0x48(1)
    lbz 0, 0x55(1)
    stb 6, 0x158(5)
    lbz 6, 0x56(1)
    stb 0, 0x159(5)
    lbz 0, 0x57(1)
    stb 6, 0x15a(5)
    stb 10, 0x49(1)
    stb 9, 0x4a(1)
    stb 8, 0x4b(1)
    lwz 6, 0x48(1)
    stb 0, 0x15b(5)
    stw 6, 0x4c(1)
    lbz 6, 0x4c(1)
    lbz 0, 0x4d(1)
    stb 6, 0x15c(5)
    lbz 6, 0x4e(1)
    stb 0, 0x15d(5)
    lbz 0, 0x4f(1)
    stb 6, 0x15e(5)
    stb 0, 0x15f(5)
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_80440480
    mr 4, 28
    bl fn_80097800
L_80440480:
    li 8, 0xff
    li 9, 0x0
    li 7, 0xd2
    stb 8, 0x40(1)
    li 11, 0xd4
    li 10, 0x22
    stb 7, 0x41(1)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x374
    stw 27, 0x20(31)
    stb 9, 0x42(1)
    lwz 5, 0x20(31)
    stb 8, 0x43(1)
    lwz 0, 0x40(1)
    stb 8, 0x38(1)
    stw 0, 0x44(1)
    lbz 6, 0x44(1)
    stb 7, 0x39(1)
    lbz 0, 0x45(1)
    stb 6, 0x150(5)
    lbz 6, 0x46(1)
    stb 0, 0x151(5)
    lbz 0, 0x47(1)
    stb 6, 0x152(5)
    stb 9, 0x3a(1)
    stb 8, 0x3b(1)
    lwz 6, 0x38(1)
    stb 0, 0x153(5)
    stw 6, 0x3c(1)
    lbz 6, 0x3c(1)
    stb 11, 0x30(1)
    lbz 0, 0x3d(1)
    stb 6, 0x154(5)
    lbz 6, 0x3e(1)
    stb 0, 0x155(5)
    lbz 0, 0x3f(1)
    stb 6, 0x156(5)
    stb 10, 0x31(1)
    stb 9, 0x32(1)
    stb 8, 0x33(1)
    lwz 6, 0x30(1)
    stb 0, 0x157(5)
    stw 6, 0x34(1)
    lbz 6, 0x34(1)
    stb 11, 0x28(1)
    lbz 0, 0x35(1)
    stb 6, 0x158(5)
    lbz 6, 0x36(1)
    stb 0, 0x159(5)
    lbz 0, 0x37(1)
    stb 6, 0x15a(5)
    stb 10, 0x29(1)
    stb 9, 0x2a(1)
    stb 8, 0x2b(1)
    lwz 6, 0x28(1)
    stb 0, 0x15b(5)
    stw 6, 0x2c(1)
    lbz 6, 0x2c(1)
    lbz 0, 0x2d(1)
    stb 6, 0x15c(5)
    lbz 6, 0x2e(1)
    stb 0, 0x15d(5)
    lbz 0, 0x2f(1)
    stb 6, 0x15e(5)
    stb 0, 0x15f(5)
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_804405A8
    mr 4, 28
    bl fn_80097800
L_804405A8:
    li 9, 0xff
    li 8, 0xaa
    li 7, 0xd2
    stb 9, 0x20(1)
    li 12, 0x4
    li 11, 0x24
    stb 8, 0x21(1)
    li 10, 0x82
    lis 3, 0x5449
    addi 4, 30, 0x280
    stw 27, 0x24(31)
    addi 3, 3, 0x4d47
    stb 7, 0x22(1)
    lwz 5, 0x24(31)
    stb 9, 0x23(1)
    lwz 0, 0x20(1)
    stb 9, 0x18(1)
    stw 0, 0x24(1)
    lbz 6, 0x24(1)
    stb 8, 0x19(1)
    lbz 0, 0x25(1)
    stb 6, 0x150(5)
    lbz 6, 0x26(1)
    stb 0, 0x151(5)
    lbz 0, 0x27(1)
    stb 6, 0x152(5)
    stb 7, 0x1a(1)
    stb 9, 0x1b(1)
    lwz 6, 0x18(1)
    stb 0, 0x153(5)
    stw 6, 0x1c(1)
    lbz 6, 0x1c(1)
    stb 12, 0x10(1)
    lbz 0, 0x1d(1)
    stb 6, 0x154(5)
    lbz 6, 0x1e(1)
    stb 0, 0x155(5)
    lbz 0, 0x1f(1)
    stb 6, 0x156(5)
    stb 11, 0x11(1)
    stb 10, 0x12(1)
    stb 9, 0x13(1)
    lwz 6, 0x10(1)
    stb 0, 0x157(5)
    stw 6, 0x14(1)
    lbz 6, 0x14(1)
    stb 12, 0x8(1)
    lbz 0, 0x15(1)
    stb 6, 0x158(5)
    lbz 6, 0x16(1)
    stb 0, 0x159(5)
    lbz 0, 0x17(1)
    stb 6, 0x15a(5)
    stb 11, 0x9(1)
    stb 10, 0xa(1)
    stb 9, 0xb(1)
    lwz 6, 0x8(1)
    stb 0, 0x15b(5)
    stw 6, 0xc(1)
    lbz 6, 0xc(1)
    lbz 0, 0xd(1)
    stb 6, 0x15c(5)
    lbz 6, 0xe(1)
    stb 0, 0x15d(5)
    lbz 0, 0xf(1)
    stb 6, 0x15e(5)
    stb 0, 0x15f(5)
    bl fn_804030C4
    li 0, 0x2
    mr 5, 31
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    li 7, 0x0
    .4byte 0xC0020D2C # lfs f0, lbl_80543CCC@sda21(r0)
    li 4, 0xff
    li 3, 0x0
    mtctr 0
L_804406D8:
    stfs 1, 0x118(5)
    add 6, 31, 7
    addi 7, 7, 0x1
    stfs 1, 0x140(5)
    stfs 0, 0x168(5)
    stb 4, 0x244(6)
    stb 3, 0x1f4(6)
    stb 3, 0x1fe(6)
    stb 3, 0x208(6)
    stb 3, 0x23a(6)
    stb 3, 0x226(6)
    add 6, 31, 7
    addi 7, 7, 0x1
    stfs 1, 0x11c(5)
    stfs 1, 0x144(5)
    stfs 0, 0x16c(5)
    stb 4, 0x244(6)
    stb 3, 0x1f4(6)
    stb 3, 0x1fe(6)
    stb 3, 0x208(6)
    stb 3, 0x23a(6)
    stb 3, 0x226(6)
    add 6, 31, 7
    addi 7, 7, 0x1
    stfs 1, 0x120(5)
    stfs 1, 0x148(5)
    stfs 0, 0x170(5)
    stb 4, 0x244(6)
    stb 3, 0x1f4(6)
    stb 3, 0x1fe(6)
    stb 3, 0x208(6)
    stb 3, 0x23a(6)
    stb 3, 0x226(6)
    add 6, 31, 7
    addi 7, 7, 0x1
    stfs 1, 0x124(5)
    stfs 1, 0x14c(5)
    stfs 0, 0x174(5)
    stb 4, 0x244(6)
    stb 3, 0x1f4(6)
    stb 3, 0x1fe(6)
    stb 3, 0x208(6)
    stb 3, 0x23a(6)
    stb 3, 0x226(6)
    add 6, 31, 7
    addi 7, 7, 0x1
    stfs 1, 0x128(5)
    stfs 1, 0x150(5)
    stfs 0, 0x178(5)
    addi 5, 5, 0x14
    stb 4, 0x244(6)
    stb 3, 0x1f4(6)
    stb 3, 0x1fe(6)
    stb 3, 0x208(6)
    stb 3, 0x23a(6)
    stb 3, 0x226(6)
    .4byte 0x4200FF20 # bdnz .L_804406D8
    li 3, 0x0
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    stb 3, 0x252(31)
    li 0, 0xff
    .4byte 0xC0020D2C # lfs f0, lbl_80543CCC@sda21(r0)
    stfs 1, 0x190(31)
    stfs 1, 0x1a0(31)
    stfs 0, 0x1b0(31)
    stb 0, 0x24e(31)
    stw 3, 0x1d0(31)
    stfs 1, 0x194(31)
    stfs 1, 0x1a4(31)
    stfs 0, 0x1b4(31)
    stb 0, 0x24f(31)
    stw 3, 0x1d4(31)
    stfs 1, 0x198(31)
    stfs 1, 0x1a8(31)
    stfs 0, 0x1b8(31)
    stb 0, 0x250(31)
    stw 3, 0x1d8(31)
    stfs 1, 0x19c(31)
    stfs 1, 0x1ac(31)
    stfs 0, 0x1bc(31)
    stb 0, 0x251(31)
    stw 3, 0x1dc(31)
    stb 3, 0x253(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_80440888
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x8
    .4byte 0x40820044 # bne .L_80440888
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_80440888
    lis 3, 0x5449
    addi 4, 30, 0x384
    addi 3, 3, 0x4d47
    bl fn_804032E8
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 27, 3
    .4byte 0x4182000C # beq .L_80440880
    mr 4, 28
    bl fn_80097800
L_80440880:
    stw 27, 0x10(31)
    .4byte 0x4800000C # b .L_80440890
L_80440888:
    li 0, 0x0
    stw 0, 0x10(31)
L_80440890:
    .4byte 0xC0020CE8 # lfs f0, lbl_80543C88@sda21(r0)
    li 5, 0xff
    li 4, 0x0
    li 0, 0x1
    stfs 0, 0x1c0(31)
    mr 3, 31
    stfs 0, 0x1c4(31)
    stfs 0, 0x1c8(31)
    stfs 0, 0x1cc(31)
    stb 5, 0x256(31)
    stw 4, 0xe4(31)
    stw 0, 0x1e0(31)
    stb 4, 0x1f0(31)
    stw 0, 0x1e4(31)
    stb 4, 0x1f1(31)
    stw 0, 0x1e8(31)
    stb 4, 0x1f2(31)
    stw 0, 0x1ec(31)
    stb 4, 0x1f3(31)
    lmw 27, 0xbc(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_804408F0:
    stwu 1, -0x20(1)
    mflr 0
    lfs 0, 0x8(3)
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    psq_l 1, 0x0(3), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    bl fn_8043E7CC
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80440928:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043DF8C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

