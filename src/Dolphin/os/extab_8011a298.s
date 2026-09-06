.section extab, "a"
.balign 4
.global etb_80006090
etb_80006090:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006090, 8

.global etb_80006098
etb_80006098:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006098, 8

.global etb_800060A0
etb_800060A0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800060A0, 8

.global etb_800060A8
etb_800060A8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800060A8, 8

.global etb_800060B0
etb_800060B0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800060B0, 8

.global etb_800060B8
etb_800060B8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800060B8, 8

.global etb_800060C0
etb_800060C0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800060C0, 8

.section extabindex, "a"
.balign 4
.global eti_800125BC
eti_800125BC:
    .4byte fn_8011A298
    .4byte 0x00000224
    .4byte etb_80006090
.size eti_800125BC, 12

.global eti_800125C8
eti_800125C8:
    .4byte fn_8011A4BC
    .4byte 0x000005F4
    .4byte etb_80006098
.size eti_800125C8, 12

.global eti_800125D4
eti_800125D4:
    .4byte fn_8011AAD0
    .4byte 0x00000260
    .4byte etb_800060A0
.size eti_800125D4, 12

.global eti_800125E0
eti_800125E0:
    .4byte fn_8011AD30
    .4byte 0x00000020
    .4byte etb_800060A8
.size eti_800125E0, 12

.global eti_800125EC
eti_800125EC:
    .4byte fn_8011AD50
    .4byte 0x0000024C
    .4byte etb_800060B0
.size eti_800125EC, 12

.global eti_800125F8
eti_800125F8:
    .4byte fn_8011AF9C
    .4byte 0x00000080
    .4byte etb_800060B8
.size eti_800125F8, 12

.global eti_80012604
eti_80012604:
    .4byte fn_8011B01C
    .4byte 0x000000C0
    .4byte etb_800060C0
.size eti_80012604, 12

.text
.balign 4
.global fn_8011A298
.global fn_8011A4BC
.global fn_8011AAB0
.global fn_8011AAC8
.global fn_8011AAD0
.global fn_8011AD30
.global fn_8011AD50
.global fn_8011AF9C
.global fn_8011B01C

fn_8011A298:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC660@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC660@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A2E8
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
L_8011A2E8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A320
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
L_8011A320:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A358
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
L_8011A358:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A390
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
L_8011A390:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A3C8
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
L_8011A3C8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A400
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
L_8011A400:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A438
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
L_8011A438:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A470
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
L_8011A470:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011A4A8
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
L_8011A4A8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011A4BC:
    stwu 1, -0x20(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x418202E0 # beq .L_8011A7A8
    .4byte 0x408005A4 # bge .L_8011AA70
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_8011A4DC
    .4byte 0x48000598 # b .L_8011AA70
L_8011A4DC:
    lwz 4, 0x240(3)
    subi 0, 4, 0x1
    stw 0, 0x240(3)
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8011A4FC
    li 0, 0x0
    stw 0, 0x240(3)
L_8011A4FC:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x8(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0xc(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x8(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A538
    li 0, 0xff
    stb 0, 0x244(3)
    .4byte 0x48000050 # b .L_8011A584
L_8011A538:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x244(3)
    fdivs 3, 0, 1
    stw 5, 0x8(1)
    subfic 0, 4, 0xff
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0xc(1)
    stw 5, 0x10(1)
    lfd 2, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stb 0, 0x244(3)
L_8011A584:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A5C0
    li 0, 0xff
    stb 0, 0x245(3)
    .4byte 0x48000050 # b .L_8011A60C
L_8011A5C0:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x245(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    subfic 0, 4, 0xff
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x245(3)
L_8011A60C:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A648
    li 0, 0xff
    stb 0, 0x246(3)
    .4byte 0x48000050 # b .L_8011A694
L_8011A648:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x246(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    subfic 0, 4, 0xff
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x246(3)
L_8011A694:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A6D0
    li 0, 0x0
    stb 0, 0x247(3)
    .4byte 0x48000050 # b .L_8011A71C
L_8011A6D0:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x247(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    neg 0, 4
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x247(3)
L_8011A71C:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A758
    li 0, 0xff
    stb 0, 0x248(3)
    .4byte 0x4800031C # b .L_8011AA70
L_8011A758:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x248(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    subfic 0, 4, 0xff
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x248(3)
    .4byte 0x480002CC # b .L_8011AA70
L_8011A7A8:
    lwz 4, 0x240(3)
    subi 0, 4, 0x1
    stw 0, 0x240(3)
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8011A7C8
    li 0, 0x0
    stw 0, 0x240(3)
L_8011A7C8:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A804
    li 0, 0x9f
    stb 0, 0x244(3)
    .4byte 0x48000050 # b .L_8011A850
L_8011A804:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x244(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    subfic 0, 4, 0x9f
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x244(3)
L_8011A850:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A88C
    li 0, 0xaf
    stb 0, 0x245(3)
    .4byte 0x48000050 # b .L_8011A8D8
L_8011A88C:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x245(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    subfic 0, 4, 0xaf
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x245(3)
L_8011A8D8:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A914
    li 0, 0xff
    stb 0, 0x246(3)
    .4byte 0x48000050 # b .L_8011A960
L_8011A914:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x246(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    subfic 0, 4, 0xff
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x246(3)
L_8011A960:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011A99C
    li 0, 0x0
    stb 0, 0x247(3)
    .4byte 0x48000050 # b .L_8011A9E8
L_8011A99C:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x247(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    neg 0, 4
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x247(3)
L_8011A9E8:
    lwz 0, 0x240(3)
    lis 5, 0x4330
    lis 4, lbl_80539D44@ha
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8829820 # lfd f4, lbl_8053C7C0@sda21(r0)
    stw 0, 0x1c(1)
    lfs 0, lbl_80539D44@l(4)
    lfd 1, 0x18(1)
    fsubs 1, 1, 4
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8011AA24
    li 0, 0xff
    stb 0, 0x248(3)
    .4byte 0x48000050 # b .L_8011AA70
L_8011AA24:
    .4byte 0xC0029818 # lfs f0, lbl_8053C7B8@sda21(r0)
    lbz 4, 0x248(3)
    fdivs 3, 0, 1
    stw 5, 0x18(1)
    subfic 0, 4, 0xff
    .4byte 0xC8229828 # lfd f1, lbl_8053C7C8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    stw 5, 0x10(1)
    lfd 2, 0x18(1)
    lfd 0, 0x10(1)
    fsubs 2, 2, 4
    fsubs 0, 0, 1
    fmadds 0, 3, 2, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0x248(3)
L_8011AA70:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lbz 0, 0x244(3)
    lwz 4, 0x2c(4)
    stb 0, 0x4(4)
    lbz 0, 0x245(3)
    stb 0, 0x5(4)
    lbz 0, 0x246(3)
    stb 0, 0x6(4)
    lbz 0, 0x247(3)
    stb 0, 0x7(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lbz 0, 0x248(3)
    lwz 3, 0x2c(4)
    stb 0, 0xc(3)
    addi 1, 1, 0x20
    blr

fn_8011AAB0:
    lwz 4, 0x234(3)
    subfic 3, 4, 0x3
    subi 0, 4, 0x3
    or 0, 3, 0
    srwi 3, 0, 31
    blr

fn_8011AAC8:
    lwz 3, 0x234(3)
    blr

fn_8011AAD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x41820230 # beq .L_8011AD1C
    .4byte 0x40800014 # bge .L_8011AB04
    cmpwi 0, 0x0
    .4byte 0x41820058 # beq .L_8011AB50
    .4byte 0x40800200 # bge .L_8011ACFC
    .4byte 0x4800021C # b .L_8011AD1C
L_8011AB04:
    cmpwi 0, 0x4
    .4byte 0x41820214 # beq .L_8011AD1C
    .4byte 0x40800210 # bge .L_8011AD1C
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x78
    .4byte 0x41800200 # blt .L_8011AD1C
    bl fn_8011921C
    li 4, 0x0
    bl fn_801184F0
    bl GetRoomConfigRecord
    lwz 4, 0x238(31)
    lwz 5, 0x23c(31)
    bl fn_802D9FF4
    bl GetRoomConfigRecord
    bl fn_802DA8DC
    li 0, 0x4
    stw 0, 0x234(31)
    .4byte 0x480001D0 # b .L_8011AD1C
L_8011AB50:
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x47e
    .4byte 0x418001C0 # blt .L_8011AD1C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4d7
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4d8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4d9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4da
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4db
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4dc
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4dd
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8011ACB0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4de
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x24c(31)
L_8011ACB0:
    lwz 0, 0x250(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8011ACE8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x4df
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x250(31)
L_8011ACE8:
    li 3, 0xb4
    li 0, 0x1
    stw 3, 0x240(31)
    stw 0, 0x234(31)
    .4byte 0x48000024 # b .L_8011AD1C
L_8011ACFC:
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x794
    .4byte 0x41800014 # blt .L_8011AD1C
    li 3, 0x78
    li 0, 0x2
    stw 3, 0x240(31)
    stw 0, 0x234(31)
L_8011AD1C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011AD30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8010DF58
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011AD50:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_8010DF78
    bl fn_801902C0
    li 0, 0x1
    stb 0, 0x7a8(3)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_8011AD8C
    .4byte 0x408001D4 # bge .L_8011AF54
    .4byte 0x480001D0 # b .L_8011AF54
    .4byte 0x480001CC # b .L_8011AF54
L_8011AD8C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_8011AE1C
    lwz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8011ADE0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x111
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x254(31)
L_8011ADE0:
    lwz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_8011AE6C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229818 # lfs f1, lbl_8053C7B8@sda21(r0)
    li 5, 0x112
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x258(31)
    .4byte 0x48000054 # b .L_8011AE6C
L_8011AE1C:
    lwz 5, 0x254(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8011AE44
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x254(31)
L_8011AE44:
    lwz 5, 0x258(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8011AE6C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x258(31)
L_8011AE6C:
    bl fn_8011921C
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_8011AF54
    lfs 2, 0x60(31)
    addi 3, 1, 0x8
    .4byte 0xC0229830 # lfs f1, lbl_8053C7D0@sda21(r0)
    li 5, 0x0
    stfs 2, 0x8(1)
    lfs 5, 0x64(31)
    stfs 5, 0xc(1)
    lfs 3, 0x68(31)
    stfs 3, 0x10(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x14(1)
    lfs 0, 0xc(31)
    fadds 2, 2, 0
    fadds 0, 3, 0
    stfs 2, 0x8(1)
    lfs 3, 0x10(31)
    fadds 2, 5, 3
    stfs 0, 0x10(1)
    fadds 0, 4, 3
    stfs 2, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8011AEE8
    li 5, 0x0
    .4byte 0x48000024 # b .L_8011AF08
L_8011AEE8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 5, 0x1
    slw 0, 5, 3
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820008 # bne .L_8011AF08
    li 5, 0x0
L_8011AF08:
    clrlwi. 0, 5, 24
    .4byte 0x41820048 # beq .L_8011AF54
    bl fn_8011921C
    mr 4, 31
    bl fn_8011888C
    bl fn_8011921C
    li 4, 0xe
    bl fn_801186B0
    bl fn_80119DD0
    li 4, 0xb4
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x1
    li 9, 0x3c
    li 10, 0x0
    bl fn_80119998
    li 0, 0x3
    stw 0, 0x234(31)
L_8011AF54:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8011AF78
    li 0, 0x1
    .4byte 0xC0029834 # lfs f0, lbl_8053C7D4@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_8011AF78:
    addi 3, 31, 0x25c
    bl fn_801D1C18
    mr 3, 31
    bl fn_8011A4BC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8011AF9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF98
    lwz 0, 0x90(31)
    addi 3, 31, 0x25c
    .4byte 0x388D8358 # li r4, lbl_80539F18@sda21
    li 5, 0x1
    clrlwi 0, 0, 28
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    stw 0, 0x23c(31)
    bl fn_801D2608
    addi 3, 31, 0x25c
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229830 # lfs f1, lbl_8053C7D0@sda21(r0)
    addi 3, 31, 0x25c
    bl fn_801D1F14
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011B01C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820088 # beq .L_8011B0C0
    lis 3, lbl_8049DB30@ha
    addi 0, 3, lbl_8049DB30@l
    stw 0, 0x0(30)
    lwz 3, 0x24c(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x24c(30)
    lwz 3, 0x250(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x250(30)
    lwz 3, 0x254(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x254(30)
    lwz 3, 0x258(30)
    bl fn_801EE434
    li 3, 0x0
    addic. 0, 30, 0x25c
    stw 3, 0x258(30)
    .4byte 0x41820018 # beq .L_8011B0A4
    addic. 0, 30, 0x280
    .4byte 0x41820010 # beq .L_8011B0A4
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x280(30)
L_8011B0A4:
    mr 3, 30
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011B0C0
    mr 3, 30
    bl dtor_80084580
L_8011B0C0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8011A298
