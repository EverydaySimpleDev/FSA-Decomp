# Fresh project-wide gap hunt continuation: 13 functions, 5,460 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80005EA0
etb_80005EA0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005EA0, 8

.global etb_80005EA8
etb_80005EA8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005EA8, 8

.global etb_80005EB0
etb_80005EB0:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80005EB0, 8

.global etb_80005EB8
etb_80005EB8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005EB8, 8

.global etb_80005EC0
etb_80005EC0:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80005EC0, 8

.global etb_80005EC8
etb_80005EC8:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80005EC8, 8

.global etb_80005ED0
etb_80005ED0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005ED0, 8

.global etb_80005ED8
etb_80005ED8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005ED8, 8

.global etb_80005EE0
etb_80005EE0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005EE0, 8

.global etb_80005EE8
etb_80005EE8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80005EE8, 8

.global etb_80005EF0
etb_80005EF0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005EF0, 8

.section extabindex, "a"
.balign 4
.global eti_80012364
eti_80012364:
    .4byte fn_80115694
    .4byte 0x00000224
    .4byte etb_80005EA0
.size eti_80012364, 12

.global eti_80012370
eti_80012370:
    .4byte fn_801158B8
    .4byte 0x000001C4
    .4byte etb_80005EA8
.size eti_80012370, 12

.global eti_8001237C
eti_8001237C:
    .4byte fn_80115A7C
    .4byte 0x00000148
    .4byte etb_80005EB0
.size eti_8001237C, 12

.global eti_80012388
eti_80012388:
    .4byte fn_80115BC4
    .4byte 0x000001C8
    .4byte etb_80005EB8
.size eti_80012388, 12

.global eti_80012394
eti_80012394:
    .4byte fn_80115D8C
    .4byte 0x00000210
    .4byte etb_80005EC0
.size eti_80012394, 12

.global eti_800123A0
eti_800123A0:
    .4byte fn_80115F9C
    .4byte 0x0000031C
    .4byte etb_80005EC8
.size eti_800123A0, 12

.global eti_800123AC
eti_800123AC:
    .4byte fn_801162E0
    .4byte 0x00000178
    .4byte etb_80005ED0
.size eti_800123AC, 12

.global eti_800123B8
eti_800123B8:
    .4byte fn_80116458
    .4byte 0x000001C4
    .4byte etb_80005ED8
.size eti_800123B8, 12

.global eti_800123C4
eti_800123C4:
    .4byte fn_8011661C
    .4byte 0x000003CC
    .4byte etb_80005EE0
.size eti_800123C4, 12

.global eti_800123D0
eti_800123D0:
    .4byte fn_801169E8
    .4byte 0x00000120
    .4byte etb_80005EE8
.size eti_800123D0, 12

.global eti_800123DC
eti_800123DC:
    .4byte fn_80116B08
    .4byte 0x000000E0
    .4byte etb_80005EF0
.size eti_800123DC, 12

.text
.balign 4
.global fn_80115694
.global fn_801158B8
.global fn_80115A7C
.global fn_80115BC4
.global fn_80115D8C
.global fn_80115F9C
.global fn_801162B8
.global fn_801162D8
.global fn_801162E0
.global fn_80116458
.global fn_8011661C
.global fn_801169E8
.global fn_80116B08

fn_80115694:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC1F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC1F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801156E4
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
L_801156E4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011571C
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
L_8011571C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80115754
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
L_80115754:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011578C
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
L_8011578C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801157C4
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
L_801157C4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801157FC
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
L_801157FC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80115834
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
L_80115834:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011586C
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
L_8011586C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801158A4
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
L_801158A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801158B8:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x44
    stw 31, 0x8c(1)
    mr 31, 3
    stw 0, 0x54(1)
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_80115944
L_801158E4:
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
L_80115944:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801158E4
    .4byte 0xC0229730 # lfs f1, lbl_8053C6D0@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    fmr 2, 1
    stw 7, 0x54(1)
    fmr 3, 1
    addi 3, 1, 0x14
    stw 6, 0x58(1)
    stw 6, 0x5c(1)
    stb 6, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stb 6, 0x67(1)
    stb 6, 0x68(1)
    stb 6, 0x69(1)
    stb 5, 0x6a(1)
    stw 4, 0x6c(1)
    stb 5, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stw 7, 0x74(1)
    stw 6, 0x78(1)
    stw 0, 0x7c(1)
    bl PSMTXTrans
    .4byte 0xC0229730 # lfs f1, lbl_8053C6D0@sda21(r0)
    li 7, 0x0
    .4byte 0xC0429734 # lfs f2, lbl_8053C6D4@sda21(r0)
    li 3, 0x1
    .4byte 0xC0029738 # lfs f0, lbl_8053C6D8@sda21(r0)
    addi 5, 1, 0x14
    li 6, 0xff
    li 0, 0x3
    stfs 2, 0x14(1)
    addi 4, 1, 0x8
    stfs 1, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 1, 0x38(1)
    stfs 2, 0x3c(1)
    stb 7, 0x58(1)
    stb 7, 0x59(1)
    stb 7, 0x5a(1)
    stb 6, 0x5b(1)
    stw 5, 0x5c(1)
    stb 3, 0x60(1)
    stb 0, 0x61(1)
    stb 3, 0x71(1)
    psq_l 2, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
    psq_st 2, 0x0(4), 0, 0
    stfs 1, 0x10(1)
    lwz 0, 0x4(31)
    lwz 5, 0x32c(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80115A68
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 6, 1, 0x44
    lwz 3, 0x20(3)
    bl fn_802F745C
L_80115A68:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80115A7C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    .4byte 0xC3C29730 # lfs f30, lbl_8053C6D0@sda21(r0)
    mr 29, 3
    .4byte 0xC3E2973C # lfs f31, lbl_8053C6DC@sda21(r0)
    addi 31, 1, 0x8
    li 30, 0x0
L_80115AB8:
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 31
    lfs 0, 0x8(3)
    mr 3, 29
    addi 5, 1, 0x14
    psq_st 1, 0x0(31), 0, 0
    stfs 0, 0x10(1)
    bl fn_80115BC4
    psq_l 3, 0x8(1), 0, 0
    psq_l 2, 0x14(1), 0, 0
    psq_l 1, 0x10(1), 1, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 2, 3, 2
    ps_add 0, 1, 0
    psq_st 2, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 3, 0x8(1)
    lfs 2, 0xc(29)
    lfs 1, 0xc(1)
    lfs 0, 0x10(29)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fmuls 1, 2, 2
    fmuls 0, 0, 0
    fadds 1, 1, 0
    fcmpo cr0, 1, 30
    .4byte 0x4081000C # ble .L_80115B34
    frsqrte 0, 1
    fmuls 1, 0, 1
L_80115B34:
    fcmpo cr0, 1, 31
    cror eq, lt, eq
    .4byte 0x40820038 # bne .L_80115B74
    .4byte 0xC0029740 # lfs f0, lbl_8053C6E0@sda21(r0)
    mr 3, 30
    lwz 5, 0x280(29)
    addi 4, 1, 0x8
    fctiwz 0, 0
    li 7, -0x80
    addi 5, 5, 0x3b5
    li 8, -0x80
    li 9, 0x1
    stfd 0, 0x20(1)
    lwz 6, 0x24(1)
    bl fn_80230498
    .4byte 0x48000010 # b .L_80115B80
L_80115B74:
    mr 3, 30
    addi 4, 1, 0x8
    bl fn_8023DFF4
L_80115B80:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF30 # blt .L_80115AB8
    addi 3, 29, 0x270
    bl fn_801D1C18
    li 3, 0x1
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x64(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80115BC4:
    stwu 1, -0x30(1)
    mflr 0
    lfs 3, 0x8(4)
    .4byte 0xC0C29730 # lfs f6, lbl_8053C6D0@sda21(r0)
    .4byte 0xC0429744 # lfs f2, lbl_8053C6E4@sda21(r0)
    stw 0, 0x34(1)
    fcmpo cr0, 3, 2
    stw 31, 0x2c(1)
    mr 31, 5
    stfs 6, 0x14(1)
    stfs 6, 0x18(1)
    stfs 6, 0x1c(1)
    cror eq, lt, eq
    .4byte 0x40820140 # bne .L_80115D38
    lfs 5, 0x0(4)
    lfs 4, 0xc(3)
    lfs 3, 0x4(4)
    lfs 2, 0x10(3)
    fsubs 4, 5, 4
    fsubs 2, 3, 2
    fmuls 3, 4, 4
    fmuls 2, 2, 2
    fadds 8, 3, 2
    fcmpo cr0, 8, 6
    .4byte 0x4081000C # ble .L_80115C30
    frsqrte 2, 8
    fmuls 8, 2, 8
L_80115C30:
    .4byte 0xC042973C # lfs f2, lbl_8053C6DC@sda21(r0)
    fcmpo cr0, 8, 2
    cror eq, lt, eq
    .4byte 0x408200FC # bne .L_80115D38
    fsubs 4, 8, 2
    .4byte 0xC0629748 # lfs f3, lbl_8053C6E8@sda21(r0)
    .4byte 0xC0429738 # lfs f2, lbl_8053C6D8@sda21(r0)
    fmuls 7, 4, 3
    fcmpo cr0, 7, 2
    .4byte 0x4081000C # ble .L_80115C60
    fmr 7, 2
    .4byte 0x48000014 # b .L_80115C70
L_80115C60:
    .4byte 0xC0429730 # lfs f2, lbl_8053C6D0@sda21(r0)
    fcmpo cr0, 7, 2
    .4byte 0x40800008 # bge .L_80115C70
    fmr 7, 2
L_80115C70:
    psq_l 3, 0xc(3), 0, 0
    lis 5, lbl_80539D44@ha
    psq_l 2, 0x0(4), 0, 0
    .4byte 0xC0829730 # lfs f4, lbl_8053C6D0@sda21(r0)
    ps_sub 10, 3, 2
    psq_l 6, 0x14(3), 1, 0
    psq_l 5, 0x8(4), 1, 0
    .4byte 0xC0629754 # lfs f3, lbl_8053C6F4@sda21(r0)
    ps_mul 12, 10, 10
    lfs 2, lbl_80539D44@l(5)
    ps_sub 9, 6, 5
    .4byte 0xC0C29750 # lfs f6, lbl_8053C6F0@sda21(r0)
    .4byte 0xC0A2974C # lfs f5, lbl_8053C6EC@sda21(r0)
    fmuls 2, 3, 2
    ps_madd 11, 4, 4, 12
    psq_st 9, 0x1c(1), 1, 0
    fmadds 5, 7, 6, 5
    psq_st 10, 0x14(1), 0, 0
    ps_sum0 11, 11, 12, 12
    stfs 4, 0x1c(1)
    fcmpo cr0, 11, 2
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_80115D18
    fcmpo cr0, 11, 4
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80115CE0
    fmr 0, 11
    .4byte 0x48000024 # b .L_80115D00
L_80115CE0:
    frsqrte 4, 11
    .4byte 0xC0429758 # lfs f2, lbl_8053C6F8@sda21(r0)
    frsp 4, 4
    fmuls 3, 4, 4
    fmuls 4, 6, 4
    fnmsubs 2, 11, 3, 2
    fmuls 2, 4, 2
    fmr 0, 2
L_80115D00:
    psq_l 2, 0x14(1), 0, 0
    psq_l 3, 0x1c(1), 1, 0
    ps_muls0 2, 2, 0
    ps_muls0 0, 3, 0
    psq_st 2, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_80115D18:
    fsubs 1, 8, 5
    psq_l 2, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    fsel 1, 1, 5, 8
    ps_muls0 2, 2, 1
    ps_muls0 0, 0, 1
    psq_st 2, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_80115D38:
    addi 5, 1, 0x8
    bl fn_80115D8C
    lfs 0, 0x14(1)
    lfs 1, 0x18(1)
    stfs 0, 0x0(31)
    lfs 0, 0x1c(1)
    stfs 1, 0x4(31)
    stfs 0, 0x8(31)
    psq_l 1, 0x0(31), 0, 0
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(31), 0, 0
    psq_l 1, 0x8(31), 1, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(31), 1, 0
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80115D8C:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    .4byte 0xC0829730 # lfs f4, lbl_8053C6D0@sda21(r0)
    mr 30, 4
    mr 31, 5
    lfs 1, 0x8(4)
    stfs 4, 0x0(5)
    mr 29, 3
    .4byte 0xC0029744 # lfs f0, lbl_8053C6E4@sda21(r0)
    stfs 4, 0x4(5)
    fcmpo cr0, 1, 0
    stfs 4, 0x8(5)
    cror eq, lt, eq
    .4byte 0x40820180 # bne .L_80115F68
    lfs 0, 0x0(30)
    lfs 3, 0xc(29)
    lfs 1, 0x4(30)
    lfs 2, 0x10(29)
    fsubs 5, 0, 3
    .4byte 0xC002975C # lfs f0, lbl_8053C6FC@sda21(r0)
    fsubs 3, 1, 2
    fmuls 2, 5, 5
    fmuls 1, 3, 3
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082014C # bne .L_80115F68
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80539D44@ha
    addi 4, 4, lbl_8052EBC0@l
    .4byte 0xC0229754 # lfs f1, lbl_8053C6F4@sda21(r0)
    lfs 6, 0x3e84(4)
    lfs 0, lbl_80539D44@l(3)
    fmuls 2, 3, 6
    lfs 7, 0x3e80(4)
    fmuls 0, 1, 0
    fmuls 3, 3, 7
    fmadds 30, 5, 7, 2
    fmsubs 31, 5, 6, 3
    fmuls 1, 30, 30
    fmadds 29, 31, 31, 1
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_80115E70
    fmr 31, 4
    .4byte 0xC3C29760 # lfs f30, lbl_8053C700@sda21(r0)
    .4byte 0x480000B4 # b .L_80115F20
L_80115E70:
    fcmpo cr0, 29, 4
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80115E84
    fmr 0, 29
    .4byte 0x48000028 # b .L_80115EA8
L_80115E84:
    frsqrte 3, 29
    .4byte 0xC0429750 # lfs f2, lbl_8053C6F0@sda21(r0)
    .4byte 0xC0029758 # lfs f0, lbl_8053C6F8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 29, 1, 0
    fmuls 0, 2, 0
    fmuls 0, 29, 0
L_80115EA8:
    stfs 0, 0x8(1)
    addi 3, 1, 0x8
    .4byte 0xC0229764 # lfs f1, lbl_8053C704@sda21(r0)
    .4byte 0xC0429768 # lfs f2, lbl_8053C708@sda21(r0)
    bl fn_801CD950
    lis 3, lbl_80539D44@ha
    .4byte 0xC0229754 # lfs f1, lbl_8053C6F4@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_80115F14
    .4byte 0xC0029730 # lfs f0, lbl_8053C6D0@sda21(r0)
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80115EEC
    .4byte 0x48000024 # b .L_80115F0C
L_80115EEC:
    frsqrte 3, 29
    .4byte 0xC0429750 # lfs f2, lbl_8053C6F0@sda21(r0)
    .4byte 0xC0029758 # lfs f0, lbl_8053C6F8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 29, 1, 0
    fmuls 29, 2, 0
L_80115F0C:
    fmuls 31, 31, 29
    fmuls 30, 30, 29
L_80115F14:
    lfs 0, 0x8(1)
    fmuls 31, 31, 0
    fmuls 30, 30, 0
L_80115F20:
    lfs 1, 0xc(29)
    lfs 0, 0x10(29)
    fadds 3, 31, 1
    lfs 1, 0x8(30)
    fadds 4, 30, 0
    psq_l 2, 0x0(30), 0, 0
    stfs 1, 0x14(1)
    psq_l 0, 0x8(30), 1, 0
    stfs 3, 0xc(1)
    psq_l 1, 0x14(1), 1, 0
    stfs 4, 0x10(1)
    ps_sub 1, 1, 0
    .4byte 0xC002976C # lfs f0, lbl_8053C70C@sda21(r0)
    psq_l 3, 0xc(1), 0, 0
    ps_sub 2, 3, 2
    psq_st 2, 0x0(31), 0, 0
    psq_st 1, 0x8(31), 1, 0
    stfs 0, 0x8(31)
L_80115F68:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x64(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80115F9C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 4
    cmplwi 31, 0xb
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    .4byte 0x418102D0 # bgt .L_80116294
    lis 4, jumptable_8049D9A0@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_8049D9A0@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 4, 0x4(30)
    addi 3, 30, 0x2a8
    addi 5, 30, 0x308
    bl fn_801EB710
    .4byte 0x480002A4 # b .L_80116294
    .4byte 0xC0029740 # lfs f0, lbl_8053C6E0@sda21(r0)
    li 4, 0x5
    li 5, 0x0
    stfs 0, 0x300(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134DE4
    .4byte 0x48000288 # b .L_80116294
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x4800027C # b .L_80116294
    .4byte 0xC0029730 # lfs f0, lbl_8053C6D0@sda21(r0)
    li 28, 0x0
    lis 29, 0x1
    stfs 0, 0x40(30)
L_8011602C:
    mr 3, 28
    addi 4, 29, 0x3
    bl fn_80230FD0
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFEC # blt .L_8011602C
    .4byte 0x48000250 # b .L_80116294
    li 0, 0x1
    .4byte 0xC0229738 # lfs f1, lbl_8053C6D8@sda21(r0)
    stb 0, 0x11d(30)
    addi 4, 30, 0xc
    li 5, 0x228
    li 6, 0x1
    lwz 3, 0x4(30)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x314(30)
    addi 4, 30, 0xc
    .4byte 0xC0229738 # lfs f1, lbl_8053C6D8@sda21(r0)
    li 5, 0x229
    lwz 3, 0x4(30)
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x318(30)
    lis 4, 0x4
    mr 3, 30
    li 5, 0x0
    addi 4, 4, 0x89
    bl fn_801F0E34
    .4byte 0x480001D8 # b .L_80116294
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0x41
    bl fn_801F0E34
    .4byte 0x480001C4 # b .L_80116294
    li 0, 0x0
    stb 0, 0x11d(30)
    lwz 3, 0x314(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x314(30)
    lwz 3, 0x318(30)
    bl fn_801EE434
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x318(30)
    li 0, 0x1
    .4byte 0xC0029730 # lfs f0, lbl_8053C6D0@sda21(r0)
    mr 3, 30
    stb 0, 0x304(30)
    addi 4, 4, 0xba
    li 5, 0x0
    stfs 0, 0x300(30)
    bl fn_801F0E34
    .4byte 0x48000174 # b .L_80116294
    bl fn_80119DD0
    li 4, 0x78
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x46
    li 10, 0x0
    bl fn_80119998
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 4, 4, 0x4556
    bl fn_801F7A08
    mr 29, 3
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820128 # beq .L_80116294
    bl fn_802B3A3C
    .4byte 0x48000120 # b .L_80116294
    li 3, 0x1
    lis 0, 0x4330
    stb 3, 0x11d(30)
    li 3, 0x0
    .4byte 0xC0029730 # lfs f0, lbl_8053C6D0@sda21(r0)
    li 6, 0x1
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    li 7, 0x0
    stw 0, 0x20(1)
    lwz 4, 0x4(4)
    stw 0, 0x28(1)
    lhz 0, 0x6(4)
    lhz 4, 0x4(4)
    xoris 0, 0, 0x8000
    .4byte 0xC8A29788 # lfd f5, lbl_8053C728@sda21(r0)
    xoris 4, 4, 0x8000
    stw 0, 0x2c(1)
    .4byte 0xC0629750 # lfs f3, lbl_8053C6F0@sda21(r0)
    stw 4, 0x24(1)
    lfd 1, 0x28(1)
    lfd 4, 0x20(1)
    fsubs 2, 1, 5
    .4byte 0xC0229744 # lfs f1, lbl_8053C6E4@sda21(r0)
    fsubs 4, 4, 5
    stfs 0, 0x1c(1)
    lwz 4, 0x4(30)
    fmsubs 0, 2, 3, 1
    fmuls 1, 4, 3
    lwz 5, 0x198(30)
    stfs 0, 0x18(1)
    stfs 1, 0x14(1)
    bl fn_8022FE80
    lwz 5, 0x4(30)
    addi 6, 1, 0x8
    psq_l 1, 0x14(1), 0, 0
    li 3, 0x0
    lfs 0, 0x1c(1)
    li 4, 0x4b4
    psq_st 1, 0x0(6), 0, 0
    li 7, 0x62
    stfs 0, 0x10(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_80116294
    bl fn_8011921C
    bl fn_80118454
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x6c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000050 # b .L_80116294
    lis 4, lbl_8050EC80@ha
    lis 3, lbl_80529DEC@ha
    addi 8, 4, lbl_8050EC80@l
    li 4, 0x6
    lwz 5, 0x10(8)
    addi 6, 3, lbl_80529DEC@l
    li 0, 0x0
    stb 4, 0x237(6)
    mulli 7, 5, 0xc8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stw 0, 0x118(6)
    li 4, 0x6
    li 5, 0x0
    add 8, 8, 7
    lbz 7, 0x85(8)
    stw 0, 0x11c(6)
    ori 0, 7, 0x1
    stb 0, 0x85(8)
    bl fn_80136798
L_80116294:
    stw 31, 0x230(30)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801162B8:
    lwz 0, 0x230(3)
    cmpwi 0, 0xb
    .4byte 0x41820008 # beq .L_801162C8
    .4byte 0x4800000C # b .L_801162D0
L_801162C8:
    li 3, 0x1
    blr
L_801162D0:
    li 3, 0x0
    blr

fn_801162D8:
    lwz 3, 0x230(3)
    blr

fn_801162E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x40820144 # bne .L_80116444
    bl fn_8011921C
    lis 4, lbl_804649A4@ha
    lwz 5, 0x8(3)
    addi 3, 4, lbl_804649A4@l
    lwz 0, 0x4(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80116330
    mr 3, 31
    li 4, 0x1
    bl fn_80115F9C
    .4byte 0x48000118 # b .L_80116444
L_80116330:
    lwz 0, 0x8(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011634C
    mr 3, 31
    li 4, 0x2
    bl fn_80115F9C
    .4byte 0x480000FC # b .L_80116444
L_8011634C:
    lwz 0, 0xc(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80116368
    mr 3, 31
    li 4, 0x3
    bl fn_80115F9C
    .4byte 0x480000E0 # b .L_80116444
L_80116368:
    lwz 0, 0x10(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80116384
    mr 3, 31
    li 4, 0x4
    bl fn_80115F9C
    .4byte 0x480000C4 # b .L_80116444
L_80116384:
    lwz 0, 0x14(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_801163A0
    mr 3, 31
    li 4, 0x5
    bl fn_80115F9C
    .4byte 0x480000A8 # b .L_80116444
L_801163A0:
    lwz 0, 0x18(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_801163BC
    mr 3, 31
    li 4, 0x6
    bl fn_80115F9C
    .4byte 0x4800008C # b .L_80116444
L_801163BC:
    lwz 0, 0x1c(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_801163D8
    mr 3, 31
    li 4, 0x7
    bl fn_80115F9C
    .4byte 0x48000070 # b .L_80116444
L_801163D8:
    lwz 0, 0x20(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_801163F4
    mr 3, 31
    li 4, 0x8
    bl fn_80115F9C
    .4byte 0x48000054 # b .L_80116444
L_801163F4:
    lwz 0, 0x24(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_80116410
    mr 3, 31
    li 4, 0x9
    bl fn_80115F9C
    .4byte 0x48000038 # b .L_80116444
L_80116410:
    lwz 0, 0x28(3)
    cmpw 5, 0
    .4byte 0x40820014 # bne .L_8011642C
    mr 3, 31
    li 4, 0xa
    bl fn_80115F9C
    .4byte 0x4800001C # b .L_80116444
L_8011642C:
    lwz 0, 0x2c(3)
    cmpw 5, 0
    .4byte 0x40820010 # bne .L_80116444
    mr 3, 31
    li 4, 0xb
    bl fn_80115F9C
L_80116444:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80116458:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0xa
    .4byte 0x41800008 # blt .L_8011647C
    bl fn_801158B8
L_8011647C:
    mr 3, 31
    bl fn_8010DF58
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_801164FC
L_8011649C:
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
L_801164FC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8011649C
    li 0, -0x1
    li 7, 0x0
    stw 0, 0x68(1)
    li 6, 0x1
    li 5, 0x3
    li 4, 0x2
    li 3, 0x8
    stw 0, 0x48(1)
    .4byte 0xC0229730 # lfs f1, lbl_8053C6D0@sda21(r0)
    addi 0, 1, 0x8
    stw 7, 0x4c(1)
    .4byte 0xC0029790 # lfs f0, lbl_8053C730@sda21(r0)
    stw 7, 0x50(1)
    stb 7, 0x54(1)
    stb 7, 0x55(1)
    stb 7, 0x56(1)
    stb 6, 0x57(1)
    stb 6, 0x58(1)
    stb 7, 0x59(1)
    stb 7, 0x5a(1)
    stb 7, 0x5b(1)
    stb 7, 0x5c(1)
    stb 7, 0x5d(1)
    stb 6, 0x5e(1)
    stw 5, 0x60(1)
    stb 6, 0x64(1)
    stb 7, 0x65(1)
    stb 7, 0x66(1)
    stw 7, 0x6c(1)
    stw 4, 0x70(1)
    stw 3, 0x68(1)
    lbz 3, 0x234(31)
    stb 3, 0x4b(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    stw 0, 0x50(1)
    lwz 0, 0x254(31)
    cmpwi 0, 0x4
    .4byte 0x40800038 # bge .L_80116608
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 5, 0x31c(3)
    cmplwi 5, 0x0
    .4byte 0x41820024 # beq .L_80116608
    lwz 0, 0x4(31)
    addi 4, 31, 0xc
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80116608
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 6, 1, 0x38
    lwz 3, 0x20(3)
    bl fn_802F745C
L_80116608:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8011661C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_8010DF78
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41800090 # blt .L_801166CC
    cmpwi 0, 0xa
    .4byte 0x41810088 # bgt .L_801166CC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8011666C
    li 0, 0x1
    .4byte 0xC0029794 # lfs f0, lbl_8053C734@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_8011666C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_l 0, 0xc(31), 0, 0
    lwz 4, 0x24(3)
    lfs 2, 0x14(31)
    lbz 0, 0x7f5(4)
    psq_st 0, 0x8(1), 0, 0
    cmplwi 0, 0x0
    stfs 2, 0x10(1)
    .4byte 0x40820030 # bne .L_801166CC
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 1, 0x8(1)
    stw 3, 0x7f8(4)
    lfs 0, 0xc(1)
    stfs 1, 0x7fc(4)
    stfs 0, 0x800(4)
    stfs 2, 0x804(4)
    stb 0, 0x7f6(4)
L_801166CC:
    lwz 0, 0x230(31)
    cmplwi 0, 0xb
    .4byte 0x41810284 # bgt .L_80116958
    lis 3, jumptable_8049D9D0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D9D0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 2, 0x28(31)
    lfs 1, 0x10(31)
    .4byte 0xC0029770 # lfs f0, lbl_8053C710@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_80116720
    .4byte 0xC0229774 # lfs f1, lbl_8053C714@sda21(r0)
    addi 3, 31, 0x40
    .4byte 0xC0429778 # lfs f2, lbl_8053C718@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000014 # b .L_80116730
L_80116720:
    .4byte 0xC0229730 # lfs f1, lbl_8053C6D0@sda21(r0)
    addi 3, 31, 0x40
    .4byte 0xC042977C # lfs f2, lbl_8053C71C@sda21(r0)
    bl fn_801CD950
L_80116730:
    lfs 2, 0x10(31)
    lfs 1, 0x28(31)
    .4byte 0xC0029780 # lfs f0, lbl_8053C720@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_80116754
    bl fn_8011921C
    bl fn_801183BC
L_80116754:
    mr 3, 31
    bl fn_80115A7C
    .4byte 0x480001FC # b .L_80116958
    mr 3, 31
    bl fn_80115A7C
    .4byte 0x480001F0 # b .L_80116958
    lbz 3, 0x234(31)
    cmplwi 3, 0xfe
    .4byte 0x40800020 # bge .L_80116794
    addi 0, 3, 0x5
    stb 0, 0x234(31)
    lbz 0, 0x234(31)
    cmplwi 0, 0xfe
    .4byte 0x4180000C # blt .L_80116794
    li 0, 0xfe
    stb 0, 0x234(31)
L_80116794:
    .4byte 0x880D8ECA # lbz r0, lbl_8053AA8A@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_801167B0
    li 3, 0x0
    li 0, 0x1
    .4byte 0xB06D8EC8 # sth r3, lbl_8053AA88@sda21(r0)
    .4byte 0x980D8ECA # stb r0, lbl_8053AA8A@sda21(r0)
L_801167B0:
    .4byte 0xA80D8EC8 # lha r0, lbl_8053AA88@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0429784 # lfs f2, lbl_8053C724@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC0029764 # lfs f0, lbl_8053C704@sda21(r0)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(31)
    .4byte 0xA86D8EC8 # lha r3, lbl_8053AA88@sda21(r0)
    addi 0, 3, 0x1f4
    .4byte 0xB00D8EC8 # sth r0, lbl_8053AA88@sda21(r0)
    lwz 3, 0x314(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80116800
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_80116800:
    lwz 3, 0x318(31)
    cmplwi 3, 0x0
    .4byte 0x41820150 # beq .L_80116958
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x48000138 # b .L_80116958
    .4byte 0x880D8ECA # lbz r0, lbl_8053AA8A@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_80116840
    li 3, 0x0
    li 0, 0x1
    .4byte 0xB06D8EC8 # sth r3, lbl_8053AA88@sda21(r0)
    .4byte 0x980D8ECA # stb r0, lbl_8053AA8A@sda21(r0)
L_80116840:
    .4byte 0xA80D8EC8 # lha r0, lbl_8053AA88@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0429784 # lfs f2, lbl_8053C724@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC0029764 # lfs f0, lbl_8053C704@sda21(r0)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(31)
    .4byte 0xA86D8EC8 # lha r3, lbl_8053AA88@sda21(r0)
    addi 0, 3, 0x1f4
    .4byte 0xB00D8EC8 # sth r0, lbl_8053AA88@sda21(r0)
    lwz 3, 0x314(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80116890
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_80116890:
    lwz 3, 0x318(31)
    cmplwi 3, 0x0
    .4byte 0x418200C0 # beq .L_80116958
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    .4byte 0x480000A8 # b .L_80116958
    lbz 3, 0x234(31)
    cmplwi 3, 0x0
    .4byte 0x4182009C # beq .L_80116958
    subi 0, 3, 0x5
    stb 0, 0x234(31)
    lbz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_80116958
    li 0, 0x0
    stb 0, 0x234(31)
    .4byte 0x4800007C # b .L_80116958
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x8ac
    .4byte 0x41820020 # beq .L_8011690C
    .4byte 0x40800010 # bge .L_80116900
    cmpwi 0, 0x889
    .4byte 0x41820014 # beq .L_8011690C
    .4byte 0x48000024 # b .L_80116920
L_80116900:
    cmpwi 0, 0x8ca
    .4byte 0x41820008 # beq .L_8011690C
    .4byte 0x48000018 # b .L_80116920
L_8011690C:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x6b
    li 5, 0x0
    bl fn_801F0E34
L_80116920:
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80116958
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
L_80116958:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x6
    .4byte 0x4181001C # bgt .L_8011699C
    lfs 0, 0xc(31)
    stfs 0, 0x308(31)
    lfs 0, 0x10(31)
    stfs 0, 0x30c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x310(31)
L_8011699C:
    addi 3, 31, 0x2a8
    addi 4, 31, 0x308
    bl fn_801EB418
    addi 3, 31, 0x2a8
    bl fn_801EB648
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801169CC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x51
    li 5, 0x0
    bl fn_801F0E34
L_801169CC:
    addi 3, 31, 0x238
    bl fn_801D1C18
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801169E8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    bl fn_8010DF98
    lis 3, lbl_8049D930@ha
    mr 29, 27
    addi 30, 3, lbl_8049D930@l
    li 28, 0x0
    lis 31, 0x5449
L_80116A14:
    lwz 4, 0x0(30)
    addi 3, 31, 0x4d47
    bl fn_804032E8
    addi 28, 28, 0x1
    stw 3, 0x31c(29)
    cmpwi 28, 0x4
    addi 30, 30, 0x4
    addi 29, 29, 0x4
    .4byte 0x4180FFE0 # blt .L_80116A14
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464A14@ha
    addi 5, 3, lbl_80464A14@l
    lis 4, 0x3f3f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    stw 3, 0x32c(27)
    li 0, 0x0
    .4byte 0xC0229764 # lfs f1, lbl_8053C704@sda21(r0)
    addi 3, 27, 0x238
    .4byte 0xC0029730 # lfs f0, lbl_8053C6D0@sda21(r0)
    .4byte 0x388D8348 # li r4, lbl_80539F08@sda21
    stfs 1, 0x14(27)
    li 5, 0x1
    stfs 0, 0x44(27)
    stfs 0, 0x40(27)
    stfs 0, 0x3c(27)
    stb 0, 0x11d(27)
    bl fn_801D2608
    addi 3, 27, 0x238
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229730 # lfs f1, lbl_8053C6D0@sda21(r0)
    addi 3, 27, 0x238
    bl fn_801D1F14
    addi 3, 27, 0x270
    .4byte 0x388D8348 # li r4, lbl_80539F08@sda21
    li 5, 0x1
    bl fn_801D2608
    addi 3, 27, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229730 # lfs f1, lbl_8053C6D0@sda21(r0)
    addi 3, 27, 0x270
    bl fn_801D1F14
    psq_l 1, 0xc(27), 0, 0
    lfs 0, 0x14(27)
    psq_st 1, 0x308(27), 0, 0
    stfs 0, 0x310(27)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80116B08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x418200A8 # beq .L_80116BCC
    lis 3, lbl_8049D940@ha
    li 0, 0x0
    addi 3, 3, lbl_8049D940@l
    stw 3, 0x0(30)
    stw 0, 0x31c(30)
    stw 0, 0x320(30)
    stw 0, 0x324(30)
    stw 0, 0x328(30)
    stw 0, 0x32c(30)
    lwz 3, 0x314(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x314(30)
    lwz 3, 0x318(30)
    bl fn_801EE434
    li 0, 0x0
    addi 3, 30, 0x2a8
    stw 0, 0x318(30)
    li 4, -0x1
    bl dtor_801EB8CC
    addic. 0, 30, 0x270
    .4byte 0x41820018 # beq .L_80116B94
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_80116B94
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_80116B94:
    addic. 0, 30, 0x238
    .4byte 0x41820018 # beq .L_80116BB0
    addic. 0, 30, 0x25c
    .4byte 0x41820010 # beq .L_80116BB0
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x25c(30)
L_80116BB0:
    mr 3, 30
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80116BCC
    mr 3, 30
    bl dtor_80084580
L_80116BCC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80115694

