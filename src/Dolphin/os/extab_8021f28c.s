.section extab, "a"
.balign 4
.global etb_8000A4EC
etb_8000A4EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A4EC, 8

.global etb_8000A4F4
etb_8000A4F4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000A4F4, 8

.global etb_8000A4FC
etb_8000A4FC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000A4FC, 8

.global etb_8000A504
etb_8000A504:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A504, 8

.global etb_8000A50C
etb_8000A50C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000A50C, 8

.section extabindex, "a"
.balign 4
.global eti_8001828C
eti_8001828C:
    .4byte fn_8021F28C
    .4byte 0x00000224
    .4byte etb_8000A4EC
.size eti_8001828C, 12

.global eti_80018298
eti_80018298:
    .4byte fn_8021F4B0
    .4byte 0x00000464
    .4byte etb_8000A4F4
.size eti_80018298, 12

.global eti_800182A4
eti_800182A4:
    .4byte fn_8021F924
    .4byte 0x00000088
    .4byte etb_8000A4FC
.size eti_800182A4, 12

.global eti_800182B0
eti_800182B0:
    .4byte fn_8021F9AC
    .4byte 0x0000010C
    .4byte etb_8000A504
.size eti_800182B0, 12

.global eti_800182BC
eti_800182BC:
    .4byte fn_8021FAB8
    .4byte 0x0000008C
    .4byte etb_8000A50C
.size eti_800182BC, 12

.text
.balign 4
.global fn_8021F28C
.global fn_8021F4B0
.global fn_8021F914
.global fn_8021F924
.global fn_8021F9AC
.global fn_8021FAB8

fn_8021F28C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CE640@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CE640@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F2DC
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x20
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8021F2DC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F314
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x2c
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8021F314:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F34C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x38
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8021F34C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F384
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x44
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8021F384:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F3BC
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x50
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8021F3BC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F3F4
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x5c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8021F3F4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F42C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x68
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8021F42C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F464
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x74
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8021F464:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021F49C
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x80
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8021F49C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021F4B0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 30, 3
    li 31, 0x0
    lwz 3, 0x4(3)
    addi 0, 3, 0x1
    stw 0, 0x4(30)
    lwz 0, 0x4(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8021F4E8
    li 0, 0x0
    stw 0, 0x4(30)
L_8021F4E8:
    lwz 0, 0x0(30)
    cmpwi 0, 0x3
    .4byte 0x41820160 # beq .L_8021F650
    .4byte 0x40800014 # bge .L_8021F508
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_8021F518
    .4byte 0x40800130 # bge .L_8021F630
    .4byte 0x480003F8 # b .L_8021F8FC
L_8021F508:
    cmpwi 0, 0x5
    .4byte 0x41820268 # beq .L_8021F774
    .4byte 0x408003EC # bge .L_8021F8FC
    .4byte 0x48000258 # b .L_8021F76C
L_8021F518:
    lwz 0, 0x4(30)
    cmpwi 0, 0xf0
    .4byte 0x41800018 # blt .L_8021F538
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x4(30)
    stw 0, 0x0(30)
    .4byte 0x480003C8 # b .L_8021F8FC
L_8021F538:
    subfic 3, 0, 0xf0
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CE40 # lfd f2, lbl_8053FDE0@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    lfs 3, 0x14(30)
    fsubs 4, 1, 2
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021F574
    stfs 3, 0x8(30)
    .4byte 0x4800001C # b .L_8021F58C
L_8021F574:
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    lfs 1, 0x8(30)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x8(30)
L_8021F58C:
    lis 3, lbl_80539D44@ha
    lfs 3, 0x18(30)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021F5A8
    stfs 3, 0xc(30)
    .4byte 0x4800001C # b .L_8021F5C0
L_8021F5A8:
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    lfs 1, 0xc(30)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0xc(30)
L_8021F5C0:
    lis 3, lbl_80539D44@ha
    lfs 3, 0x1c(30)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021F5DC
    stfs 3, 0x10(30)
    .4byte 0x4800001C # b .L_8021F5F4
L_8021F5DC:
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    lfs 1, 0x10(30)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x10(30)
L_8021F5F4:
    li 29, 0x0
    mr 28, 30
L_8021F5FC:
    lwz 3, 0x34(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021F61C
    addi 4, 30, 0x8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_8021F61C:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFD4 # blt .L_8021F5FC
    .4byte 0x480002D0 # b .L_8021F8FC
L_8021F630:
    lwz 0, 0x4(30)
    cmpwi 0, 0x3c
    .4byte 0x418002C4 # blt .L_8021F8FC
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x4(30)
    stw 0, 0x0(30)
    .4byte 0x480002B0 # b .L_8021F8FC
L_8021F650:
    lwz 0, 0x4(30)
    cmpwi 0, 0x78
    .4byte 0x4180001C # blt .L_8021F674
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x4(30)
    li 31, 0x1
    stw 0, 0x0(30)
    .4byte 0x4800028C # b .L_8021F8FC
L_8021F674:
    subfic 3, 0, 0x78
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CE40 # lfd f2, lbl_8053FDE0@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    lfs 3, 0x20(30)
    fsubs 4, 1, 2
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021F6B0
    stfs 3, 0x8(30)
    .4byte 0x4800001C # b .L_8021F6C8
L_8021F6B0:
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    lfs 1, 0x8(30)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x8(30)
L_8021F6C8:
    lis 3, lbl_80539D44@ha
    lfs 3, 0x24(30)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021F6E4
    stfs 3, 0xc(30)
    .4byte 0x4800001C # b .L_8021F6FC
L_8021F6E4:
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    lfs 1, 0xc(30)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0xc(30)
L_8021F6FC:
    lis 3, lbl_80539D44@ha
    lfs 3, 0x28(30)
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021F718
    stfs 3, 0x10(30)
    .4byte 0x4800001C # b .L_8021F730
L_8021F718:
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    lfs 1, 0x10(30)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x10(30)
L_8021F730:
    li 29, 0x0
    mr 28, 30
L_8021F738:
    lwz 3, 0x34(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021F758
    addi 4, 30, 0x8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_8021F758:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFD4 # blt .L_8021F738
    .4byte 0x48000194 # b .L_8021F8FC
L_8021F76C:
    li 31, 0x1
    .4byte 0x4800018C # b .L_8021F8FC
L_8021F774:
    lwz 0, 0x4(30)
    li 31, 0x1
    cmpwi 0, 0x3c
    .4byte 0x41800050 # blt .L_8021F7D0
    li 28, 0x0
    mr 27, 30
    mr 29, 28
L_8021F790:
    lwz 0, 0x34(27)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8021F7B0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x34(27)
    bl fn_800EC240
    stw 29, 0x34(27)
L_8021F7B0:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0x3
    .4byte 0x4180FFD4 # blt .L_8021F790
    li 0, 0x0
    stw 0, 0x4(30)
    stw 0, 0x0(30)
    .4byte 0x48000130 # b .L_8021F8FC
L_8021F7D0:
    subfic 3, 0, 0x3c
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CE40 # lfd f2, lbl_8053FDE0@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    lfs 3, 0x2c(30)
    fsubs 4, 1, 2
    fcmpo cr0, 4, 0
    .4byte 0x4080000C # bge .L_8021F80C
    stfs 3, 0x10(30)
    .4byte 0x4800001C # b .L_8021F824
L_8021F80C:
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    lfs 1, 0x10(30)
    fdivs 2, 0, 4
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x10(30)
L_8021F824:
    lis 3, lbl_80539D44@ha
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_8021F840
    .4byte 0xC002CE3C # lfs f0, lbl_8053FDDC@sda21(r0)
    stfs 0, 0x30(30)
    .4byte 0x48000020 # b .L_8021F85C
L_8021F840:
    .4byte 0xC022CE38 # lfs f1, lbl_8053FDD8@sda21(r0)
    .4byte 0xC002CE3C # lfs f0, lbl_8053FDDC@sda21(r0)
    fdivs 2, 1, 4
    lfs 1, 0x30(30)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x30(30)
L_8021F85C:
    li 28, 0x0
    mr 27, 30
L_8021F864:
    lwz 3, 0x34(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021F884
    addi 4, 30, 0x8
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_8021F884:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0x3
    .4byte 0x4180FFD4 # blt .L_8021F864
    lwz 3, 0x34(30)
    lfs 0, 0x30(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021F8B8
    stfs 0, 0x98(3)
    stfs 0, 0x9c(3)
    stfs 0, 0xa0(3)
    stfs 0, 0xb0(3)
    stfs 0, 0xb4(3)
L_8021F8B8:
    lwz 3, 0x38(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021F8D8
    stfs 0, 0x98(3)
    stfs 0, 0x9c(3)
    stfs 0, 0xa0(3)
    stfs 0, 0xb0(3)
    stfs 0, 0xb4(3)
L_8021F8D8:
    addi 3, 30, 0x8
    lwz 3, 0x34(3)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8021F8FC
    stfs 0, 0x98(3)
    stfs 0, 0x9c(3)
    stfs 0, 0xa0(3)
    stfs 0, 0xb0(3)
    stfs 0, 0xb4(3)
L_8021F8FC:
    mr 3, 31
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8021F914:
    li 0, 0x0
    stw 0, 0x4(3)
    stw 4, 0x0(3)
    blr

fn_8021F924:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
    mr 30, 28
L_8021F950:
    lwz 0, 0x34(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8021F970
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x34(30)
    bl fn_800EC240
    stw 31, 0x34(30)
L_8021F970:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFD4 # blt .L_8021F950
    li 0, 0x0
    stw 0, 0x4(28)
    stw 0, 0x0(28)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021F9AC:
    stwu 1, -0x20(1)
    mflr 0
    lfs 0, 0x0(4)
    stw 0, 0x24(1)
    li 0, 0x1
    lfs 1, 0x4(4)
    stw 31, 0x1c(1)
    .4byte 0x3BE2CE30 # li r31, lbl_8053FDD0@sda21
    .4byte 0xC042CE48 # lfs f2, lbl_8053FDE8@sda21(r0)
    stw 30, 0x18(1)
    .4byte 0xC062CE50 # lfs f3, lbl_8053FDF0@sda21(r0)
    stw 29, 0x14(1)
    li 29, 0x0
    .4byte 0xC0A2CE4C # lfs f5, lbl_8053FDEC@sda21(r0)
    stw 28, 0x10(1)
    mr 28, 3
    li 3, 0x0
    stfs 0, 0x8(28)
    mr 30, 28
    lfs 0, 0x8(4)
    stfs 1, 0xc(28)
    stfs 0, 0x10(28)
    lfs 1, 0x10(28)
    lfs 4, 0xc(28)
    lfs 0, 0x8(28)
    fadds 2, 2, 1
    .4byte 0xC022CE54 # lfs f1, lbl_8053FDF4@sda21(r0)
    stfs 0, 0x14(28)
    stfs 4, 0x18(28)
    stfs 2, 0x1c(28)
    lfs 2, 0xc(28)
    lfs 4, 0x10(28)
    lfs 0, 0x8(28)
    fadds 2, 3, 2
    fadds 3, 5, 4
    stfs 0, 0x20(28)
    stfs 2, 0x24(28)
    stfs 3, 0x28(28)
    lfs 0, 0x10(28)
    fadds 0, 1, 0
    stfs 0, 0x2c(28)
    stw 3, 0x4(28)
    stw 0, 0x0(28)
L_8021FA58:
    lhz 5, 0x0(31)
    addi 4, 28, 0x8
    lfs 1, 0x30(28)
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 29, 29, 0x1
    stw 3, 0x34(30)
    cmpwi 29, 0x3
    addi 31, 31, 0x2
    addi 30, 30, 0x4
    .4byte 0x4180FFC4 # blt .L_8021FA58
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021FAB8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x4182005C # beq .L_8021FB2C
    li 30, 0x0
    mr 29, 27
    mr 31, 30
L_8021FAE0:
    lwz 0, 0x34(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8021FB00
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x34(29)
    bl fn_800EC240
    stw 31, 0x34(29)
L_8021FB00:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180FFD4 # blt .L_8021FAE0
    li 3, 0x0
    extsh. 0, 28
    stw 3, 0x4(27)
    stw 3, 0x0(27)
    .4byte 0x4081000C # ble .L_8021FB2C
    mr 3, 27
    bl dtor_80084580
L_8021FB2C:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8021F28C
