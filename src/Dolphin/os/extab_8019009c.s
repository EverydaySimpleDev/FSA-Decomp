# Fresh project-wide gap hunt continuation: 14 functions, 8,092 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80007744
etb_80007744:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007744, 8

.global etb_8000774C
etb_8000774C:
    .4byte 0x1B4A0000
    .4byte 0x00000000
.size etb_8000774C, 8

.global etb_80007754
etb_80007754:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007754, 8

.global etb_8000775C
etb_8000775C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000775C, 8

.global etb_80007764
etb_80007764:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80007764, 8

.global etb_8000776C
etb_8000776C:
    .4byte 0x40080000
    .4byte 0x000005E0
    .4byte 0x00000018
    .4byte 0x00000604
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A800018
    .4byte dtor_80084580
    .4byte 0x8A800018
    .4byte dtor_80084580
.size etb_8000776C, 40

.global etb_80007794
etb_80007794:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007794, 8

.section extabindex, "a"
.balign 4
.global eti_8001450C
eti_8001450C:
    .4byte fn_8019009C
    .4byte 0x00000224
    .4byte etb_80007744
.size eti_8001450C, 12

.global eti_80014518
eti_80014518:
    .4byte fn_801902D0
    .4byte 0x00000AF8
    .4byte etb_8000774C
.size eti_80014518, 12

.global eti_80014524
eti_80014524:
    .4byte fn_80190DC8
    .4byte 0x000006FC
    .4byte etb_80007754
.size eti_80014524, 12

.global eti_80014530
eti_80014530:
    .4byte fn_801914C4
    .4byte 0x000001D8
    .4byte etb_8000775C
.size eti_80014530, 12

.global eti_8001453C
eti_8001453C:
    .4byte fn_80191744
    .4byte 0x0000009C
    .4byte etb_80007764
.size eti_8001453C, 12

.global eti_80014548
eti_80014548:
    .4byte fn_801917E0
    .4byte 0x00000620
    .4byte etb_8000776C
.size eti_80014548, 12

.global eti_80014554
eti_80014554:
    .4byte fn_80191E14
    .4byte 0x00000224
    .4byte etb_80007794
.size eti_80014554, 12

.text
.balign 4
.global fn_8019009C
.global fn_801902C0
.global fn_801902D0
.global fn_80190DC8
.global fn_801914C4
.global fn_8019169C
.global fn_80191744
.global fn_801917E0
.global fn_80191E00
.global fn_80191E04
.global fn_80191E08
.global fn_80191E0C
.global fn_80191E10
.global fn_80191E14

fn_8019009C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C19C0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C19C0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801900EC
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
L_801900EC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80190124
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
L_80190124:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8019015C
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
L_8019015C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80190194
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
L_80190194:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801901CC
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
L_801901CC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80190204
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
L_80190204:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8019023C
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
L_8019023C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80190274
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
L_80190274:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801902AC
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
L_801902AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801902C0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0x20(3)
    blr

fn_801902D0:
    stwu 1, -0x480(1)
    mflr 0
    stw 0, 0x484(1)
    stfd 31, 0x470(1)
    psq_st 31, 0x478(1), 0, 0
    stfd 30, 0x460(1)
    psq_st 30, 0x468(1), 0, 0
    stfd 29, 0x450(1)
    psq_st 29, 0x458(1), 0, 0
    stfd 28, 0x440(1)
    psq_st 28, 0x448(1), 0, 0
    stfd 27, 0x430(1)
    psq_st 27, 0x438(1), 0, 0
    stfd 26, 0x420(1)
    psq_st 26, 0x428(1), 0, 0
    stfd 25, 0x410(1)
    psq_st 25, 0x418(1), 0, 0
    stfd 24, 0x400(1)
    psq_st 24, 0x408(1), 0, 0
    stfd 23, 0x3f0(1)
    psq_st 23, 0x3f8(1), 0, 0
    stfd 22, 0x3e0(1)
    psq_st 22, 0x3e8(1), 0, 0
    stfd 21, 0x3d0(1)
    psq_st 21, 0x3d8(1), 0, 0
    stfd 20, 0x3c0(1)
    psq_st 20, 0x3c8(1), 0, 0
    stfd 19, 0x3b0(1)
    psq_st 19, 0x3b8(1), 0, 0
    stw 31, 0x3ac(1)
    stw 30, 0x3a8(1)
    stw 29, 0x3a4(1)
    mr 29, 3
    li 31, 0x0
    mr 30, 29
L_8019035C:
    lbz 0, 0x64(30)
    cmplwi 0, 0x0
    .4byte 0x41820138 # beq .L_8019049C
    psq_l 2, 0x8(30), 0, 0
    lfs 1, 0x10(30)
    .4byte 0xC002B268 # lfs f0, lbl_8053E208@sda21(r0)
    psq_st 2, 0xa4(1), 0, 0
    stfs 1, 0xac(1)
    lfs 20, 0x40(30)
    lfs 22, 0x20(30)
    fcmpo cr0, 20, 0
    lfs 21, 0x30(30)
    lwz 3, 0x5c(30)
    lwz 4, 0x60(30)
    .4byte 0x40810014 # ble .L_801903A8
    cmpwi 3, 0x1
    .4byte 0x4080000C # bge .L_801903A8
    addi 3, 3, 0x1
    subi 4, 4, 0x1
L_801903A8:
    slwi 3, 3, 10
    slwi 0, 4, 7
    add 0, 3, 0
    .4byte 0xC002B268 # lfs f0, lbl_8053E208@sda21(r0)
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x394(1)
    addi 3, 1, 0x35c
    .4byte 0xC042B270 # lfs f2, lbl_8053E210@sda21(r0)
    stw 0, 0x390(1)
    .4byte 0xC882B2B0 # lfd f4, lbl_8053E250@sda21(r0)
    fmr 3, 2
    lfd 1, 0x390(1)
    stfs 0, 0x368(1)
    fsubs 31, 1, 4
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    stfs 0, 0x378(1)
    stfs 0, 0x388(1)
    bl PSMTXScale
    addi 3, 1, 0x35c
    addi 4, 30, 0x14
    mr 5, 3
    bl PSMTXConcat
    .4byte 0xC002B268 # lfs f0, lbl_8053E208@sda21(r0)
    .4byte 0xC022B274 # lfs f1, lbl_8053E214@sda21(r0)
    stfs 0, 0x338(1)
    stfs 0, 0x348(1)
    stfs 0, 0x358(1)
    bl sin
    frsp 19, 1
    .4byte 0xC022B274 # lfs f1, lbl_8053E214@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0xC002B268 # lfs f0, lbl_8053E208@sda21(r0)
    fneg 1, 19
    .4byte 0xC042B26C # lfs f2, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x35c
    stfs 19, 0x350(1)
    stfs 2, 0x32c(1)
    mr 5, 3
    addi 4, 1, 0x32c
    stfs 3, 0x340(1)
    stfs 1, 0x344(1)
    stfs 3, 0x354(1)
    stfs 0, 0x34c(1)
    stfs 0, 0x334(1)
    stfs 0, 0x33c(1)
    stfs 0, 0x330(1)
    bl PSMTXConcat
    lfs 0, 0xa4(1)
    fadds 2, 21, 31
    fadds 1, 20, 31
    stfs 22, 0x368(1)
    fneg 0, 0
    addi 4, 1, 0xa4
    stfs 2, 0x378(1)
    addi 5, 1, 0x35c
    stfs 1, 0x388(1)
    stfs 0, 0xa4(1)
    lwz 3, 0x44(30)
    bl fn_8013ABCC
L_8019049C:
    addi 31, 31, 0x1
    addi 30, 30, 0x60
    cmpwi 31, 0x7
    .4byte 0x4180FEB4 # blt .L_8019035C
    lwz 0, 0x2b4(29)
    cmplwi 0, 0x0
    .4byte 0x418200AC # beq .L_80190560
    lbz 0, 0x2c0(29)
    cmplwi 0, 0x0
    .4byte 0x418200A0 # beq .L_80190560
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x2fc
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 1, 0x98(1)
    stfs 1, 0x9c(1)
    stfs 0, 0xa0(1)
    lfs 1, 0x2a8(29)
    lfs 2, 0x2ac(29)
    lfs 3, 0x2b0(29)
    bl PSMTXTrans
    addi 4, 1, 0x98
    .4byte 0xC3C2B27C # lfs f30, lbl_8053E21C@sda21(r0)
    psq_l 1, 0x0(4), 0, 0
    addi 5, 1, 0x2fc
    psq_l 0, 0x8(4), 1, 0
    ps_muls0 4, 1, 30
    lfs 1, 0x318(1)
    ps_muls0 3, 0, 30
    .4byte 0xC042B280 # lfs f2, lbl_8053E220@sda21(r0)
    lfs 0, 0x328(1)
    fadds 1, 1, 2
    fadds 0, 0, 2
    psq_st 4, 0x0(4), 0, 0
    psq_st 3, 0x8(4), 1, 0
    stfs 1, 0x318(1)
    stfs 0, 0x328(1)
    lwz 3, 0x2b8(29)
    bl fn_8013ABCC
    lfs 1, 0x318(1)
    addi 4, 1, 0x98
    .4byte 0xC042B280 # lfs f2, lbl_8053E220@sda21(r0)
    addi 5, 1, 0x2fc
    lfs 0, 0x328(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    stfs 1, 0x318(1)
    stfs 0, 0x328(1)
    lwz 3, 0x2b4(29)
    bl fn_8013ABCC
L_80190560:
    lwz 0, 0x2d0(29)
    cmplwi 0, 0x0
    .4byte 0x418200BC # beq .L_80190624
    lbz 0, 0x2dc(29)
    cmplwi 0, 0x0
    .4byte 0x418200B0 # beq .L_80190624
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x2cc
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 1, 0x8c(1)
    stfs 1, 0x90(1)
    stfs 0, 0x94(1)
    lfs 1, 0x2c4(29)
    lfs 2, 0x2c8(29)
    lfs 3, 0x2cc(29)
    bl PSMTXTrans
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x9
    .4byte 0x40820010 # bne .L_801905C0
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x4182003C # beq .L_801905F8
L_801905C0:
    cmpwi 4, 0x8
    .4byte 0x40820018 # bne .L_801905DC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_801905F8
L_801905DC:
    lfs 1, 0x2e8(1)
    .4byte 0xC042B284 # lfs f2, lbl_8053E224@sda21(r0)
    lfs 0, 0x2f8(1)
    fadds 1, 1, 2
    fadds 0, 0, 2
    stfs 1, 0x2e8(1)
    stfs 0, 0x2f8(1)
L_801905F8:
    addi 4, 1, 0x8c
    .4byte 0xC3A2B27C # lfs f29, lbl_8053E21C@sda21(r0)
    psq_l 1, 0x0(4), 0, 0
    addi 5, 1, 0x2cc
    psq_l 0, 0x8(4), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x0(4), 0, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x2d0(29)
    bl fn_8013ABCC
L_80190624:
    lwz 0, 0x2ec(29)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_801906AC
    lbz 0, 0x2fc(29)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_801906AC
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x29c
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 1, 0x80(1)
    stfs 1, 0x84(1)
    stfs 0, 0x88(1)
    lfs 1, 0x2e0(29)
    lfs 2, 0x2e4(29)
    lfs 3, 0x2e8(29)
    bl PSMTXTrans
    lfs 1, 0x2b8(1)
    addi 4, 1, 0x80
    .4byte 0xC042B288 # lfs f2, lbl_8053E228@sda21(r0)
    addi 5, 1, 0x29c
    lfs 0, 0x2c8(1)
    fsubs 1, 1, 2
    .4byte 0xC382B27C # lfs f28, lbl_8053E21C@sda21(r0)
    fsubs 0, 0, 2
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x8(4), 1, 0
    ps_muls0 3, 3, 28
    ps_muls0 2, 2, 28
    stfs 1, 0x2b8(1)
    stfs 0, 0x2c8(1)
    psq_st 3, 0x0(4), 0, 0
    psq_st 2, 0x8(4), 1, 0
    lwz 3, 0x2ec(29)
    bl fn_8013ABCC
L_801906AC:
    lwz 0, 0x30c(29)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_80190734
    lbz 0, 0x31c(29)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_80190734
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x26c
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 1, 0x74(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    lfs 1, 0x300(29)
    lfs 2, 0x304(29)
    lfs 3, 0x308(29)
    bl PSMTXTrans
    lfs 1, 0x288(1)
    addi 4, 1, 0x74
    .4byte 0xC042B288 # lfs f2, lbl_8053E228@sda21(r0)
    addi 5, 1, 0x26c
    lfs 0, 0x298(1)
    fsubs 1, 1, 2
    .4byte 0xC362B27C # lfs f27, lbl_8053E21C@sda21(r0)
    fsubs 0, 0, 2
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x8(4), 1, 0
    ps_muls0 3, 3, 27
    ps_muls0 2, 2, 27
    stfs 1, 0x288(1)
    stfs 0, 0x298(1)
    psq_st 3, 0x0(4), 0, 0
    psq_st 2, 0x8(4), 1, 0
    lwz 3, 0x30c(29)
    bl fn_8013ABCC
L_80190734:
    lwz 0, 0x32c(29)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_801907BC
    lbz 0, 0x33c(29)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_801907BC
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x23c
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 1, 0x68(1)
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    lfs 1, 0x320(29)
    lfs 2, 0x324(29)
    lfs 3, 0x328(29)
    bl PSMTXTrans
    lfs 1, 0x258(1)
    addi 4, 1, 0x68
    .4byte 0xC042B288 # lfs f2, lbl_8053E228@sda21(r0)
    addi 5, 1, 0x23c
    lfs 0, 0x268(1)
    fsubs 1, 1, 2
    .4byte 0xC342B27C # lfs f26, lbl_8053E21C@sda21(r0)
    fsubs 0, 0, 2
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x8(4), 1, 0
    ps_muls0 3, 3, 26
    ps_muls0 2, 2, 26
    stfs 1, 0x258(1)
    stfs 0, 0x268(1)
    psq_st 3, 0x0(4), 0, 0
    psq_st 2, 0x8(4), 1, 0
    lwz 3, 0x32c(29)
    bl fn_8013ABCC
L_801907BC:
    mr 30, 29
    li 31, 0x0
    .4byte 0x48000080 # b .L_80190844
L_801907C8:
    lwz 0, 0x358(30)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_8019083C
    lfs 1, 0x340(30)
    addi 3, 1, 0x20c
    lfs 2, 0x344(30)
    lfs 3, 0x348(30)
    bl PSMTXTrans
    lfs 2, 0x228(1)
    addi 4, 1, 0x5c
    .4byte 0xC022B288 # lfs f1, lbl_8053E228@sda21(r0)
    addi 5, 1, 0x20c
    lfs 0, 0x238(1)
    fsubs 3, 2, 1
    .4byte 0xC042B28C # lfs f2, lbl_8053E22C@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC002B290 # lfs f0, lbl_8053E230@sda21(r0)
    stfs 3, 0x228(1)
    stfs 1, 0x238(1)
    lfs 1, 0x34c(30)
    fmuls 1, 2, 1
    fdivs 1, 1, 0
    fneg 0, 1
    stfs 1, 0x64(1)
    stfs 1, 0x60(1)
    stfs 1, 0x5c(1)
    stfs 0, 0x64(1)
    lwz 3, 0x358(30)
    bl fn_8013ABCC
L_8019083C:
    addi 30, 30, 0x24
    addi 31, 31, 0x1
L_80190844:
    lwz 0, 0x4a8(29)
    cmpw 31, 0
    .4byte 0x4180FF7C # blt .L_801907C8
    mr 30, 29
    li 31, 0x0
    .4byte 0x480000B8 # b .L_80190910
L_8019085C:
    lwz 0, 0x4c0(30)
    cmplwi 0, 0x0
    .4byte 0x418200A4 # beq .L_80190908
    .4byte 0xC042B26C # lfs f2, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x1dc
    .4byte 0xC022B294 # lfs f1, lbl_8053E234@sda21(r0)
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 2, 0x50(1)
    stfs 1, 0x54(1)
    stfs 0, 0x58(1)
    lfs 1, 0x4ac(30)
    lfs 2, 0x4b0(30)
    lfs 3, 0x4b4(30)
    bl PSMTXTrans
    .4byte 0xC022B274 # lfs f1, lbl_8053E214@sda21(r0)
    bl sin
    frsp 19, 1
    .4byte 0xC022B274 # lfs f1, lbl_8053E214@sda21(r0)
    bl cos
    addi 4, 1, 0x50
    .4byte 0xC002B268 # lfs f0, lbl_8053E208@sda21(r0)
    .4byte 0xC322B298 # lfs f25, lbl_8053E238@sda21(r0)
    frsp 5, 1
    psq_l 3, 0x0(4), 0, 0
    fneg 1, 19
    psq_l 2, 0x8(4), 1, 0
    addi 5, 1, 0x1dc
    ps_muls0 4, 3, 25
    ps_muls0 3, 2, 25
    .4byte 0xC042B26C # lfs f2, lbl_8053E20C@sda21(r0)
    stfs 5, 0x1f0(1)
    stfs 2, 0x1dc(1)
    stfs 1, 0x1f4(1)
    stfs 19, 0x200(1)
    stfs 5, 0x204(1)
    stfs 0, 0x1fc(1)
    stfs 0, 0x1e4(1)
    stfs 0, 0x1ec(1)
    stfs 0, 0x1e0(1)
    psq_st 4, 0x0(4), 0, 0
    psq_st 3, 0x8(4), 1, 0
    lwz 3, 0x4c0(30)
    bl fn_8013ABCC
L_80190908:
    addi 30, 30, 0x28
    addi 31, 31, 0x1
L_80190910:
    lwz 0, 0x5ec(29)
    cmpw 31, 0
    .4byte 0x4180FF44 # blt .L_8019085C
    mr 30, 29
    li 31, 0x0
    .4byte 0x4800009C # b .L_801909C0
L_80190928:
    lwz 0, 0x5fc(30)
    cmplwi 0, 0x0
    .4byte 0x41820088 # beq .L_801909B8
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0x1ac
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 1, 0x44(1)
    stfs 1, 0x48(1)
    stfs 0, 0x4c(1)
    lfs 1, 0x5f0(30)
    lfs 2, 0x5f4(30)
    lfs 3, 0x5f8(30)
    bl PSMTXTrans
    lfs 1, 0x1b8(1)
    addi 4, 1, 0x44
    .4byte 0xC002B288 # lfs f0, lbl_8053E228@sda21(r0)
    addi 5, 1, 0x1ac
    lfs 3, 0x1c8(1)
    fsubs 4, 1, 0
    .4byte 0xC042B29C # lfs f2, lbl_8053E23C@sda21(r0)
    lfs 1, 0x1d8(1)
    fadds 2, 3, 2
    .4byte 0xC002B284 # lfs f0, lbl_8053E224@sda21(r0)
    .4byte 0xC302B27C # lfs f24, lbl_8053E21C@sda21(r0)
    fadds 0, 1, 0
    psq_l 3, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    ps_muls0 3, 3, 24
    stfs 4, 0x1b8(1)
    ps_muls0 1, 1, 24
    stfs 2, 0x1c8(1)
    stfs 0, 0x1d8(1)
    psq_st 3, 0x0(4), 0, 0
    psq_st 1, 0x8(4), 1, 0
    lwz 3, 0x5fc(30)
    bl fn_8013ABCC
L_801909B8:
    addi 30, 30, 0x14
    addi 31, 31, 0x1
L_801909C0:
    lwz 0, 0x618(29)
    cmpw 31, 0
    .4byte 0x4180FF60 # blt .L_80190928
    mr 31, 29
    li 30, 0x0
    .4byte 0x4800021C # b .L_80190BF0
L_801909D8:
    lwz 0, 0x62c(31)
    cmplwi 0, 0x0
    .4byte 0x41820208 # beq .L_80190BE8
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    li 0, -0x1
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    addi 9, 1, 0x140
    stfs 1, 0x38(1)
    li 10, 0x0
    stfs 1, 0x3c(1)
    stfs 0, 0x40(1)
    stw 0, 0x150(1)
    stw 0, 0x154(1)
    .4byte 0x48000064 # b .L_80190A70
L_80190A10:
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
L_80190A70:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80190A10
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x150(1)
    addi 3, 1, 0x17c
    stw 6, 0x154(1)
    stw 6, 0x158(1)
    stb 6, 0x15c(1)
    stb 6, 0x15d(1)
    stb 6, 0x15e(1)
    stb 5, 0x15f(1)
    stb 5, 0x160(1)
    stb 6, 0x161(1)
    stb 6, 0x162(1)
    stb 6, 0x163(1)
    stb 6, 0x164(1)
    stb 6, 0x165(1)
    stb 5, 0x166(1)
    stw 4, 0x168(1)
    stb 5, 0x16c(1)
    stb 6, 0x16d(1)
    stb 6, 0x16e(1)
    stw 7, 0x170(1)
    stw 6, 0x174(1)
    stw 0, 0x178(1)
    lfs 1, 0x61c(31)
    lfs 2, 0x620(31)
    lfs 3, 0x624(31)
    bl PSMTXTrans
    lfs 1, 0x198(1)
    .4byte 0xC042B284 # lfs f2, lbl_8053E224@sda21(r0)
    lfs 0, 0x1a8(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    stfs 1, 0x198(1)
    stfs 0, 0x1a8(1)
    lbz 0, 0x628(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80190B3C
    .4byte 0xC2E2B2A0 # lfs f23, lbl_8053E240@sda21(r0)
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 23
    ps_muls0 0, 0, 23
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_80190B3C:
    lfs 1, 0x61c(31)
    stfs 1, 0x2c(1)
    lfs 2, 0x620(31)
    stfs 2, 0x30(1)
    lfs 0, 0x624(31)
    stfs 0, 0x34(1)
    lbz 0, 0x628(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80190B78
    .4byte 0xC002B28C # lfs f0, lbl_8053E22C@sda21(r0)
    fsubs 1, 1, 0
    fsubs 0, 2, 0
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    .4byte 0x48000018 # b .L_80190B8C
L_80190B78:
    .4byte 0xC002B2A4 # lfs f0, lbl_8053E244@sda21(r0)
    fsubs 1, 1, 0
    fsubs 0, 2, 0
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
L_80190B8C:
    li 0, -0x1
    addi 4, 1, 0x38
    stb 0, 0x15c(1)
    addi 5, 1, 0x17c
    stb 0, 0x15d(1)
    lwz 3, 0x62c(31)
    bl fn_8013ABCC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80467508@ha
    addi 5, 3, lbl_80467508@l
    lis 4, 0x534d
    lwz 3, 0xa4(6)
    addi 4, 4, 0x5020
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 1, 0x2c
    lwz 3, 0x20(6)
    addi 6, 1, 0x140
    bl fn_802F6CF4
L_80190BE8:
    addi 31, 31, 0x18
    addi 30, 30, 0x1
L_80190BF0:
    lwz 0, 0x79c(29)
    cmpw 30, 0
    .4byte 0x4180FDE0 # blt .L_801909D8
    lwz 0, 0x7ac(29)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_80190C70
    lbz 0, 0x7a8(29)
    cmplwi 0, 0x0
    .4byte 0x41820060 # beq .L_80190C70
    bl GetRoomConfigRecord
    mr 4, 3
    lfs 4, 0xcc(3)
    lfs 2, 0xd4(4)
    addi 3, 1, 0x110
    lfs 1, 0xd0(4)
    lfs 0, 0xd8(4)
    fadds 2, 4, 2
    .4byte 0xC062B284 # lfs f3, lbl_8053E224@sda21(r0)
    fadds 0, 1, 0
    .4byte 0xC082B2A8 # lfs f4, lbl_8053E248@sda21(r0)
    fmuls 1, 4, 2
    fmadds 2, 4, 0, 3
    bl PSMTXTrans
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 4, 1, 0x14
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    addi 5, 1, 0x110
    stfs 1, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x7ac(29)
    bl fn_8013ABCC
L_80190C70:
    lwz 0, 0x7c4(29)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_80190CF4
    lwz 4, 0x7bc(29)
    cmpwi 4, 0x0
    .4byte 0x40810070 # ble .L_80190CF4
    lwz 3, 0x7c8(29)
    lha 0, 0x6(3)
    cmpw 4, 0
    .4byte 0x40800060 # bge .L_80190CF4
    bl GetRoomConfigRecord
    mr 4, 3
    lfs 4, 0xcc(3)
    lfs 2, 0xd4(4)
    addi 3, 1, 0xe0
    lfs 1, 0xd0(4)
    lfs 0, 0xd8(4)
    fadds 2, 4, 2
    .4byte 0xC062B284 # lfs f3, lbl_8053E224@sda21(r0)
    fadds 0, 1, 0
    .4byte 0xC082B2A8 # lfs f4, lbl_8053E248@sda21(r0)
    fmuls 1, 4, 2
    fmadds 2, 4, 0, 3
    bl PSMTXTrans
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    addi 5, 1, 0xe0
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x7c4(29)
    bl fn_8013ABCC
L_80190CF4:
    lwz 0, 0x7e0(29)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_80190D44
    lbz 0, 0x7ec(29)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_80190D44
    .4byte 0xC022B26C # lfs f1, lbl_8053E20C@sda21(r0)
    addi 3, 1, 0xb0
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stfs 1, 0x20(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    lfs 1, 0x7d0(29)
    lfs 2, 0x7d4(29)
    lfs 3, 0x7d8(29)
    bl PSMTXTrans
    lwz 3, 0x7e0(29)
    addi 4, 1, 0x20
    addi 5, 1, 0xb0
    bl fn_8013ABCC
L_80190D44:
    psq_l 31, 0x478(1), 0, 0
    lfd 31, 0x470(1)
    psq_l 30, 0x468(1), 0, 0
    lfd 30, 0x460(1)
    psq_l 29, 0x458(1), 0, 0
    lfd 29, 0x450(1)
    psq_l 28, 0x448(1), 0, 0
    lfd 28, 0x440(1)
    psq_l 27, 0x438(1), 0, 0
    lfd 27, 0x430(1)
    psq_l 26, 0x428(1), 0, 0
    lfd 26, 0x420(1)
    psq_l 25, 0x418(1), 0, 0
    lfd 25, 0x410(1)
    psq_l 24, 0x408(1), 0, 0
    lfd 24, 0x400(1)
    psq_l 23, 0x3f8(1), 0, 0
    lfd 23, 0x3f0(1)
    psq_l 22, 0x3e8(1), 0, 0
    lfd 22, 0x3e0(1)
    psq_l 21, 0x3d8(1), 0, 0
    lfd 21, 0x3d0(1)
    psq_l 20, 0x3c8(1), 0, 0
    lfd 20, 0x3c0(1)
    psq_l 19, 0x3b8(1), 0, 0
    lfd 19, 0x3b0(1)
    lwz 31, 0x3ac(1)
    lwz 30, 0x3a8(1)
    lwz 0, 0x484(1)
    lwz 29, 0x3a4(1)
    mtlr 0
    addi 1, 1, 0x480
    blr

fn_80190DC8:
    stwu 1, -0x40(1)
    li 5, 0x7
    mr 4, 3
    lwz 0, 0x4(3)
    mtctr 5
L_80190DDC:
    lwz 7, 0x48(4)
    cmplwi 7, 0x0
    .4byte 0x4182010C # beq .L_80190EF0
    lbz 5, 0x64(4)
    cmplwi 5, 0x0
    .4byte 0x41820100 # beq .L_80190EF0
    lha 6, 0x6(7)
    lis 8, 0x4330
    stw 8, 0x10(1)
    divw 5, 0, 6
    .4byte 0xC842B2B0 # lfd f2, lbl_8053E250@sda21(r0)
    .4byte 0xC002B268 # lfs f0, lbl_8053E208@sda21(r0)
    mullw 5, 5, 6
    subf 5, 5, 0
    xoris 5, 5, 0x8000
    stw 5, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    stfs 1, 0x8(7)
    lfs 3, 0x50(4)
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x40820094 # bne .L_80190EC8
    fcmpu cr0, 0, 3
    .4byte 0x40820014 # bne .L_80190E50
    .4byte 0xC002B2B8 # lfs f0, lbl_8053E258@sda21(r0)
    lwz 5, 0x4c(4)
    stfs 0, 0x8(5)
    .4byte 0x480000A4 # b .L_80190EF0
L_80190E50:
    .4byte 0xC002B26C # lfs f0, lbl_8053E20C@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x4080001C # bge .L_80190E74
    .4byte 0xC022B2BC # lfs f1, lbl_8053E25C@sda21(r0)
    .4byte 0xC002B2B8 # lfs f0, lbl_8053E258@sda21(r0)
    lwz 5, 0x4c(4)
    fmadds 0, 1, 3, 0
    stfs 0, 0x8(5)
    .4byte 0x48000080 # b .L_80190EF0
L_80190E74:
    lwz 7, 0x58(4)
    lis 5, 0x51ec
    subi 6, 5, 0x7ae1
    stw 8, 0x10(1)
    addi 5, 7, 0x1
    stw 5, 0x58(4)
    lwz 8, 0x58(4)
    lwz 5, 0x4c(4)
    mulhw 6, 6, 8
    srawi 6, 6, 6
    srwi 7, 6, 31
    add 6, 6, 7
    mulli 6, 6, 0xc8
    subf 6, 6, 8
    addi 6, 6, 0x191
    xoris 6, 6, 0x8000
    stw 6, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    stfs 0, 0x8(5)
    .4byte 0x4800002C # b .L_80190EF0
L_80190EC8:
    lwz 5, 0x54(4)
    cmpwi 5, 0x0
    .4byte 0x41800020 # blt .L_80190EF0
    xoris 6, 5, 0x8000
    stw 8, 0x10(1)
    lwz 5, 0x4c(4)
    stw 6, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    stfs 0, 0x8(5)
L_80190EF0:
    addi 4, 4, 0x60
    .4byte 0x4200FEE8 # bdnz .L_80190DDC
    lwz 6, 0x2bc(3)
    cmplwi 6, 0x0
    .4byte 0x41820040 # beq .L_80190F40
    lbz 4, 0x2c0(3)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_80190F40
    lha 5, 0x6(6)
    lis 4, 0x4330
    stw 4, 0x10(1)
    divw 4, 0, 5
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    mullw 4, 4, 5
    subf 4, 4, 0
    xoris 4, 4, 0x8000
    stw 4, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(6)
L_80190F40:
    lwz 6, 0x2d8(3)
    cmplwi 6, 0x0
    .4byte 0x41820040 # beq .L_80190F88
    lbz 4, 0x2dc(3)
    cmplwi 4, 0x0
    .4byte 0x41820034 # beq .L_80190F88
    lha 5, 0x6(6)
    lis 4, 0x4330
    stw 4, 0x10(1)
    divw 4, 0, 5
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    mullw 4, 4, 5
    subf 4, 4, 0
    xoris 4, 4, 0x8000
    stw 4, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(6)
L_80190F88:
    lwz 5, 0x2f0(3)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_80190FB0
    lbz 4, 0x2fc(3)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80190FB0
    .4byte 0xC022B2C0 # lfs f1, lbl_8053E260@sda21(r0)
    lfs 0, 0x2f4(3)
    fmuls 0, 1, 0
    stfs 0, 0x8(5)
L_80190FB0:
    lwz 5, 0x310(3)
    cmplwi 5, 0x0
    .4byte 0x41820048 # beq .L_80191000
    lbz 4, 0x31c(3)
    cmplwi 4, 0x0
    .4byte 0x4182003C # beq .L_80191000
    .4byte 0xC022B2C4 # lfs f1, lbl_8053E264@sda21(r0)
    lis 4, 0x4330
    lfs 0, 0x314(3)
    stw 4, 0x18(1)
    fmuls 0, 1, 0
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    xoris 4, 4, 0x8000
    stw 4, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(5)
L_80191000:
    lwz 7, 0x330(3)
    cmplwi 7, 0x0
    .4byte 0x41820090 # beq .L_80191098
    lbz 4, 0x33c(3)
    cmplwi 4, 0x0
    .4byte 0x41820084 # beq .L_80191098
    lfs 1, 0x334(3)
    .4byte 0xC002B26C # lfs f0, lbl_8053E20C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080001C # bge .L_80191040
    .4byte 0xC002B2C0 # lfs f0, lbl_8053E260@sda21(r0)
    li 4, 0x0
    fmuls 0, 0, 1
    stfs 0, 0x8(7)
    stw 4, 0x338(3)
    .4byte 0x4800005C # b .L_80191098
L_80191040:
    lis 4, 0x8889
    lwz 6, 0x338(3)
    subi 5, 4, 0x7777
    lis 4, 0x4330
    mulhw 5, 5, 6
    stw 4, 0x18(1)
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    add 4, 5, 6
    srawi 4, 4, 6
    srwi 5, 4, 31
    add 4, 4, 5
    mulli 4, 4, 0x78
    subf 4, 4, 6
    addi 4, 4, 0x79
    xoris 4, 4, 0x8000
    stw 4, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(7)
    lwz 4, 0x338(3)
    addi 4, 4, 0x1
    stw 4, 0x338(3)
L_80191098:
    mr 7, 3
    li 9, 0x0
    .4byte 0x480000A8 # b .L_80191148
L_801910A4:
    lwz 8, 0x35c(7)
    cmplwi 8, 0x0
    .4byte 0x41820094 # beq .L_80191140
    lis 4, 0x4330
    xoris 5, 0, 0x8000
    stw 5, 0x1c(1)
    .4byte 0xC882B2B0 # lfd f4, lbl_8053E250@sda21(r0)
    stw 4, 0x18(1)
    lfs 1, 0x354(7)
    lfd 0, 0x18(1)
    lha 5, 0x6(8)
    fsubs 3, 0, 4
    stw 4, 0x20(1)
    .4byte 0xC042B2CC # lfs f2, lbl_8053E26C@sda21(r0)
    .4byte 0xC002B2C8 # lfs f0, lbl_8053E268@sda21(r0)
    fmuls 1, 3, 1
    stw 4, 0x30(1)
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 6, 0x14(1)
    divw 4, 6, 5
    mullw 4, 4, 5
    subf 4, 4, 6
    xoris 4, 4, 0x8000
    stw 4, 0x24(1)
    lfd 1, 0x20(1)
    fsubs 1, 1, 4
    stfs 1, 0x8(8)
    lfs 1, 0x350(7)
    lwz 4, 0x360(7)
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 5, 0x2c(1)
    xoris 5, 5, 0x8000
    stw 5, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 4
    stfs 0, 0x8(4)
L_80191140:
    addi 7, 7, 0x24
    addi 9, 9, 0x1
L_80191148:
    lwz 4, 0x4a8(3)
    cmpw 9, 4
    .4byte 0x4180FF54 # blt .L_801910A4
    mr 7, 3
    li 9, 0x0
    .4byte 0x480000A0 # b .L_801911FC
L_80191160:
    lwz 8, 0x4c4(7)
    cmplwi 8, 0x0
    .4byte 0x4182008C # beq .L_801911F4
    lha 6, 0x6(8)
    lis 4, 0x4330
    stw 4, 0x30(1)
    divw 5, 0, 6
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    stw 4, 0x28(1)
    stw 4, 0x20(1)
    mullw 4, 5, 6
    subf 4, 4, 0
    xoris 4, 4, 0x8000
    stw 4, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(8)
    lfs 0, 0x4bc(7)
    lwz 4, 0x4c8(7)
    stfs 0, 0x8(4)
    lwz 6, 0x4cc(7)
    lha 5, 0x6(6)
    divw 4, 0, 5
    mullw 4, 4, 5
    subf 4, 4, 0
    xoris 4, 4, 0x8000
    stw 4, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(6)
    lwz 5, 0x4b8(7)
    lwz 4, 0x4d0(7)
    xoris 5, 5, 0x8000
    stw 5, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_801911F4:
    addi 7, 7, 0x28
    addi 9, 9, 0x1
L_801911FC:
    lwz 4, 0x5ec(3)
    cmpw 9, 4
    .4byte 0x4180FF5C # blt .L_80191160
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    mr 7, 3
    li 9, 0x0
    lis 5, 0x4330
    .4byte 0x48000040 # b .L_80191258
L_8019121C:
    lwz 8, 0x600(7)
    cmplwi 8, 0x0
    .4byte 0x4182002C # beq .L_80191250
    lha 6, 0x6(8)
    stw 5, 0x30(1)
    divw 4, 0, 6
    mullw 4, 4, 6
    subf 4, 4, 0
    xoris 4, 4, 0x8000
    stw 4, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(8)
L_80191250:
    addi 7, 7, 0x14
    addi 9, 9, 0x1
L_80191258:
    lwz 4, 0x618(3)
    cmpw 9, 4
    .4byte 0x4180FFBC # blt .L_8019121C
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    mr 7, 3
    li 9, 0x0
    lis 5, 0x4330
    .4byte 0x48000040 # b .L_801912B4
L_80191278:
    lwz 8, 0x630(7)
    cmplwi 8, 0x0
    .4byte 0x4182002C # beq .L_801912AC
    lha 6, 0x6(8)
    stw 5, 0x30(1)
    divw 4, 0, 6
    mullw 4, 4, 6
    subf 4, 4, 0
    xoris 4, 4, 0x8000
    stw 4, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(8)
L_801912AC:
    addi 7, 7, 0x18
    addi 9, 9, 0x1
L_801912B4:
    lwz 4, 0x79c(3)
    cmpw 9, 4
    .4byte 0x4180FFBC # blt .L_80191278
    lwz 6, 0x7b0(3)
    cmplwi 6, 0x0
    .4byte 0x41820134 # beq .L_801913FC
    lbz 4, 0x7a8(3)
    cmplwi 4, 0x0
    .4byte 0x41820128 # beq .L_801913FC
    lha 5, 0x6(6)
    lis 4, 0x4330
    stw 4, 0x30(1)
    divw 4, 0, 5
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    mullw 4, 4, 5
    subf 0, 4, 0
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(6)
    lwz 4, 0x7a4(3)
    cmpwi 4, 0x0
    .4byte 0x40810010 # ble .L_80191320
    subi 0, 4, 0x1
    stw 0, 0x7a4(3)
    .4byte 0x48000080 # b .L_8019139C
L_80191320:
    lwz 4, 0x7b4(3)
    lwz 5, 0x7a0(3)
    lha 0, 0x6(4)
    cmpw 5, 0
    .4byte 0x40800010 # bge .L_80191340
    addi 0, 5, 0x1
    stw 0, 0x7a0(3)
    .4byte 0x48000060 # b .L_8019139C
L_80191340:
    li 0, 0x0
    lis 4, 0x19
    stw 0, 0x7a0(3)
    addi 0, 4, 0x660d
    .4byte 0xC002B26C # lfs f0, lbl_8053E20C@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042B2D0 # lfs f2, lbl_8053E270@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    stw 0, 0x7a4(3)
L_8019139C:
    lwz 4, 0x7a0(3)
    cmpwi 4, 0x0
    .4byte 0x40820030 # bne .L_801913D4
    lwz 4, 0x7b4(3)
    lis 0, 0x4330
    stw 0, 0x30(1)
    lha 0, 0x6(4)
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
    .4byte 0x4800002C # b .L_801913FC
L_801913D4:
    subi 4, 4, 0x1
    lis 0, 0x4330
    xoris 4, 4, 0x8000
    stw 0, 0x30(1)
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    stw 4, 0x34(1)
    lwz 4, 0x7b4(3)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_801913FC:
    lwz 4, 0x7c8(3)
    cmplwi 4, 0x0
    .4byte 0x4182005C # beq .L_80191460
    lbz 0, 0x7c0(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8019142C
    lwz 5, 0x7bc(3)
    cmpwi 5, 0x0
    .4byte 0x4081001C # ble .L_80191438
    lha 0, 0x6(4)
    cmpw 5, 0
    .4byte 0x40800010 # bge .L_80191438
L_8019142C:
    lwz 4, 0x7bc(3)
    addi 0, 4, 0x1
    stw 0, 0x7bc(3)
L_80191438:
    lwz 4, 0x7bc(3)
    lis 0, 0x4330
    stw 0, 0x30(1)
    xoris 0, 4, 0x8000
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    stw 0, 0x34(1)
    lwz 4, 0x7c8(3)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
L_80191460:
    lwz 5, 0x7e4(3)
    cmplwi 5, 0x0
    .4byte 0x41820054 # beq .L_801914BC
    lbz 0, 0x7ec(3)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_801914BC
    lwz 4, 0x7dc(3)
    lis 0, 0x4330
    stw 0, 0x30(1)
    xoris 4, 4, 0x8000
    .4byte 0xC822B2B0 # lfd f1, lbl_8053E250@sda21(r0)
    stw 4, 0x34(1)
    lfd 0, 0x30(1)
    stw 0, 0x28(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(5)
    lwz 0, 0x7dc(3)
    lwz 3, 0x7e8(3)
    xoris 0, 0, 0x8000
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(3)
L_801914BC:
    addi 1, 1, 0x40
    blr

fn_801914C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80191538
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80191520
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80191520
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80191520
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80191520
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80191520
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80191524
L_80191520:
    li 0, 0x1
L_80191524:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8019158C
L_80191538:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_80191578
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_80191578
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_80191578
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_80191578
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_80191578
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_80191578
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8019157C
L_80191578:
    li 0, 0x1
L_8019157C:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8019158C:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_801915A4
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x408200DC # bne .L_8019167C
L_801915A4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x408200CC # bne .L_8019167C
    lbz 0, 0x96(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_8019167C
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_80191608
    bl fn_80239D38
    clrlwi. 0, 3, 24
    .4byte 0x408200A8 # bne .L_8019167C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_801915F0
    li 0, 0x1
    .4byte 0x48000014 # b .L_80191600
L_801915F0:
    lbz 0, 0x88(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_80191600:
    clrlwi. 0, 0, 24
    .4byte 0x40820078 # bne .L_8019167C
L_80191608:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x240(3)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_8019167C
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    lbz 0, 0x5d(3)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_8019167C
    li 0, 0x0
    stb 0, 0x64(31)
    stb 0, 0xc4(31)
    stb 0, 0x124(31)
    stb 0, 0x184(31)
    stb 0, 0x1e4(31)
    stb 0, 0x244(31)
    stb 0, 0x2a4(31)
    stb 0, 0x2c0(31)
    stb 0, 0x2dc(31)
    stb 0, 0x2fc(31)
    stb 0, 0x31c(31)
    stb 0, 0x33c(31)
    stw 0, 0x4a8(31)
    stw 0, 0x5ec(31)
    stw 0, 0x618(31)
    stw 0, 0x79c(31)
    stb 0, 0x7a8(31)
    stb 0, 0x7c0(31)
    stb 0, 0x7ec(31)
L_8019167C:
    lwz 3, 0x4(31)
    addi 0, 3, 0x1
    stw 0, 0x4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8019169C:
    li 4, 0x0
    .4byte 0xC002B278 # lfs f0, lbl_8053E218@sda21(r0)
    stb 4, 0x64(3)
    li 0, 0x12c
    stfs 0, 0x50(3)
    stw 4, 0x58(3)
    stb 4, 0xc4(3)
    stfs 0, 0xb0(3)
    stw 4, 0xb8(3)
    stb 4, 0x124(3)
    stfs 0, 0x110(3)
    stw 4, 0x118(3)
    stb 4, 0x184(3)
    stfs 0, 0x170(3)
    stw 4, 0x178(3)
    stb 4, 0x1e4(3)
    stfs 0, 0x1d0(3)
    stw 4, 0x1d8(3)
    stb 4, 0x244(3)
    stfs 0, 0x230(3)
    stw 4, 0x238(3)
    stb 4, 0x2a4(3)
    stfs 0, 0x290(3)
    stw 4, 0x298(3)
    stb 4, 0x2c0(3)
    stb 4, 0x2dc(3)
    stb 4, 0x2fc(3)
    stb 4, 0x31c(3)
    stb 4, 0x33c(3)
    stw 4, 0x338(3)
    stw 4, 0x4a8(3)
    stw 4, 0x5ec(3)
    stw 4, 0x618(3)
    stw 4, 0x79c(3)
    stb 4, 0x7a8(3)
    stw 0, 0x7a4(3)
    stw 4, 0x7a0(3)
    stb 4, 0x7c0(3)
    stw 4, 0x7bc(3)
    stb 4, 0x7ec(3)
    stw 4, 0x4(3)
    blr

fn_80191744:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820064 # beq .L_801917C4
    lwz 3, 0x7cc(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80191788
    .4byte 0x41820018 # beq .L_80191788
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_80191788:
    lwz 3, 0x7b8(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_801917AC
    .4byte 0x41820018 # beq .L_801917AC
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_801917AC:
    lwz 3, 0x0(30)
    bl fn_8008383C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801917C4
    mr 3, 30
    bl dtor_80084580
L_801917C4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801917E0:
    stwu 1, -0xa0(1)
    mflr 0
    lis 5, fn_80191E10@ha
    lis 6, lbl_80467508@ha
    stw 0, 0xa4(1)
    li 7, 0x7
    stmw 24, 0x80(1)
    mr 28, 3
    mr 29, 4
    addi 4, 5, fn_80191E10@l
    addi 30, 6, lbl_80467508@l
    addi 3, 28, 0x8
    li 5, 0x0
    li 6, 0x60
    bl __construct_array
    lis 4, fn_80191E0C@ha
    addi 3, 28, 0x340
    addi 4, 4, fn_80191E0C@l
    li 5, 0x0
    li 6, 0x24
    li 7, 0xa
    bl __construct_array
    lis 4, fn_80191E08@ha
    addi 3, 28, 0x4ac
    addi 4, 4, fn_80191E08@l
    li 5, 0x0
    li 6, 0x28
    li 7, 0x8
    bl __construct_array
    lis 4, fn_80191E04@ha
    addi 3, 28, 0x5f0
    addi 4, 4, fn_80191E04@l
    li 5, 0x0
    li 6, 0x14
    li 7, 0x2
    bl __construct_array
    lis 4, fn_80191E00@ha
    addi 3, 28, 0x61c
    addi 4, 4, fn_80191E00@l
    li 5, 0x0
    li 6, 0x18
    li 7, 0x10
    bl __construct_array
    mr 4, 29
    li 3, -0x1
    li 5, 0x0
    bl fn_80084BAC
    stw 3, 0x0(28)
    lwz 3, 0x0(28)
    bl fn_8008382C
    lis 3, lbl_80529DEC@ha
    mr 27, 28
    addi 31, 3, lbl_80529DEC@l
    li 25, 0x0
    lis 26, 0x4a33
L_801918BC:
    addi 3, 1, 0x60
    addi 4, 30, 0x10
    addi 5, 25, 0x1
    crclr 6
    bl fn_8006B334
    addi 3, 1, 0x40
    addi 4, 30, 0x20
    addi 5, 25, 0x1
    crclr 6
    bl fn_8006B334
    addi 3, 1, 0x20
    addi 4, 30, 0x30
    addi 5, 25, 0x1
    crclr 6
    bl fn_8006B334
    lwz 3, 0x10(31)
    addi 4, 26, 0x4420
    addi 5, 1, 0x60
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_8019194C
    addi 3, 1, 0x60
    addi 4, 30, 0x40
    crclr 6
    bl fn_8006B334
    addi 3, 1, 0x40
    addi 4, 30, 0x50
    crclr 6
    bl fn_8006B334
    addi 3, 1, 0x20
    addi 4, 30, 0x60
    crclr 6
    bl fn_8006B334
L_8019194C:
    addi 0, 27, 0x44
    addi 5, 27, 0x48
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 27, 0x4c
    addi 4, 1, 0x60
    stw 5, 0xc(1)
    addi 5, 1, 0x40
    addi 7, 1, 0x20
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x2024
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 25, 25, 0x1
    addi 27, 27, 0x60
    cmpwi 25, 0x7
    .4byte 0x4180FF1C # blt .L_801918BC
    addi 0, 28, 0x2b4
    addi 3, 28, 0x2bc
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0x70
    addi 5, 30, 0x7c
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x2024
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 3, 28, 0x2b8
    li 0, 0x0
    stw 3, 0x8(1)
    addi 4, 30, 0x88
    li 5, 0x0
    li 6, 0x0
    stw 0, 0xc(1)
    li 7, 0x0
    li 8, 0x0
    lis 9, 0x2024
    stw 0, 0x10(1)
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 0, 28, 0x2d0
    addi 3, 28, 0x2d8
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0x94
    addi 5, 30, 0xa0
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x2024
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 0, 28, 0x2ec
    addi 3, 28, 0x2f0
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0xac
    addi 5, 30, 0xbc
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 0, 28, 0x30c
    addi 3, 28, 0x310
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0xcc
    addi 5, 30, 0xe0
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 0, 28, 0x32c
    addi 3, 28, 0x330
    stw 0, 0x8(1)
    li 0, 0x0
    addi 4, 30, 0xf4
    addi 5, 30, 0x104
    stw 3, 0xc(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 0, 0x10(1)
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    mr 27, 28
    li 25, 0x0
    li 26, 0x0
L_80191B44:
    addi 0, 27, 0x358
    addi 3, 27, 0x35c
    stw 0, 0x8(1)
    addi 0, 27, 0x360
    addi 4, 30, 0x114
    addi 5, 30, 0x120
    stw 3, 0xc(1)
    addi 7, 30, 0x12c
    li 6, 0x0
    li 8, 0x0
    stw 26, 0x10(1)
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 26, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 25, 25, 0x1
    addi 27, 27, 0x24
    cmpwi 25, 0xa
    .4byte 0x4180FFB0 # blt .L_80191B44
    lis 3, lbl_80529DEC@ha
    mr 27, 28
    addi 26, 3, lbl_80529DEC@l
    li 25, 0x0
L_80191BA8:
    addi 0, 27, 0x4c0
    addi 4, 27, 0x4c4
    stw 0, 0x8(1)
    addi 7, 27, 0x4c8
    addi 3, 27, 0x4cc
    addi 0, 27, 0x4d0
    stw 4, 0xc(1)
    addi 4, 30, 0x138
    addi 5, 30, 0x14c
    addi 6, 30, 0x160
    stw 7, 0x10(1)
    addi 7, 30, 0x178
    addi 8, 30, 0x18c
    lis 9, 0x2024
    stw 3, 0x14(1)
    stw 0, 0x18(1)
    lwz 3, 0x14(26)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 25, 25, 0x1
    addi 27, 27, 0x28
    cmpwi 25, 0x8
    .4byte 0x4180FFA8 # blt .L_80191BA8
    mr 25, 28
    li 24, 0x0
    li 27, 0x0
L_80191C10:
    addi 3, 25, 0x5fc
    addi 0, 25, 0x600
    stw 3, 0x8(1)
    addi 4, 30, 0x1a4
    addi 5, 30, 0x1b4
    li 6, 0x0
    stw 0, 0xc(1)
    li 7, 0x0
    li 8, 0x0
    lis 9, 0x124
    stw 27, 0x10(1)
    stw 27, 0x14(1)
    stw 27, 0x18(1)
    lwz 3, 0x14(26)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 24, 24, 0x1
    addi 25, 25, 0x14
    cmpwi 24, 0x2
    .4byte 0x4180FFB4 # blt .L_80191C10
    mr 25, 28
    li 24, 0x0
    li 27, 0x0
L_80191C6C:
    addi 3, 25, 0x62c
    addi 0, 25, 0x630
    stw 3, 0x8(1)
    addi 4, 30, 0x1c4
    addi 5, 30, 0x1d4
    li 6, 0x0
    stw 0, 0xc(1)
    li 7, 0x0
    li 8, 0x0
    lis 9, 0x24
    stw 27, 0x10(1)
    stw 27, 0x14(1)
    stw 27, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 24, 24, 0x1
    addi 25, 25, 0x18
    cmpwi 24, 0x10
    .4byte 0x4180FFB4 # blt .L_80191C6C
    addi 0, 28, 0x7ac
    addi 5, 28, 0x7b0
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 28, 0x7b4
    addi 4, 30, 0x1e4
    stw 5, 0xc(1)
    addi 5, 30, 0x1f8
    addi 7, 30, 0x20c
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x24
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 0, 28, 0x7c4
    li 3, 0x0
    stw 0, 0x8(1)
    addi 0, 28, 0x7c8
    addi 4, 30, 0x220
    addi 7, 30, 0x234
    stw 3, 0xc(1)
    li 5, 0x0
    li 6, 0x0
    li 8, 0x0
    stw 3, 0x10(1)
    lis 9, 0x1022
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    addi 0, 28, 0x7e0
    addi 5, 28, 0x7e4
    stw 0, 0x8(1)
    li 3, 0x0
    addi 0, 28, 0x7e8
    addi 4, 30, 0x248
    stw 5, 0xc(1)
    addi 5, 30, 0x258
    addi 7, 30, 0x268
    li 6, 0x0
    stw 3, 0x10(1)
    li 8, 0x0
    lis 9, 0x1024
    stw 0, 0x14(1)
    stw 3, 0x18(1)
    lwz 3, 0x10(31)
    lwz 10, 0x0(28)
    bl fn_8016A3BC
    lwz 3, 0x0(28)
    bl fn_80084D84
    mr 3, 29
    bl fn_8008382C
    li 3, 0x5c
    bl fn_80084370
    mr. 24, 3
    .4byte 0x41820014 # beq .L_80191DC0
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_80191DC0:
    stw 24, 0x7b8(28)
    li 3, 0x5c
    bl fn_80084370
    mr. 24, 3
    .4byte 0x41820014 # beq .L_80191DE4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_80191DE4:
    stw 24, 0x7cc(28)
    mr 3, 28
    lmw 24, 0x80(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80191E00:
    blr

fn_80191E04:
    blr

fn_80191E08:
    blr

fn_80191E0C:
    blr

fn_80191E10:
    blr

fn_80191E14:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C1AC0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C1AC0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191E64
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
L_80191E64:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191E9C
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
L_80191E9C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191ED4
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
L_80191ED4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191F0C
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
L_80191F0C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191F44
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
L_80191F44:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191F7C
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
L_80191F7C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191FB4
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
L_80191FB4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80191FEC
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
L_80191FEC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80192024
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
L_80192024:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8019009C
    .4byte fn_80191E14

