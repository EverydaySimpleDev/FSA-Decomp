.section extab, "a"
.balign 4
.global etb_80008CF4
etb_80008CF4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008CF4, 8

.global etb_80008CFC
etb_80008CFC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008CFC, 8

.global etb_80008D04
etb_80008D04:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008D04, 8

.section extabindex, "a"
.balign 4
.global eti_80016348
eti_80016348:
    .4byte fn_801ED1B8
    .4byte 0x00000224
    .4byte etb_80008CF4
.size eti_80016348, 12

.global eti_80016354
eti_80016354:
    .4byte fn_801ED458
    .4byte 0x00000170
    .4byte etb_80008CFC
.size eti_80016354, 12

.global eti_80016360
eti_80016360:
    .4byte fn_801ED5C8
    .4byte 0x000001D0
    .4byte etb_80008D04
.size eti_80016360, 12

.text
.balign 4
.global fn_801ED1B8
.global fn_801ED3DC
.global fn_801ED458
.global fn_801ED5C8

fn_801ED1B8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CA7D8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CA7D8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED208
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
L_801ED208:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED240
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
L_801ED240:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED278
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
L_801ED278:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED2B0
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
L_801ED2B0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED2E8
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
L_801ED2E8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED320
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
L_801ED320:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED358
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
L_801ED358:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED390
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
L_801ED390:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801ED3C8
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
L_801ED3C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801ED3DC:
    .4byte 0x814D9338 # lwz r10, lbl_8053AEF8@sda21(r0)
    li 8, 0x1
    slw 0, 8, 4
    lbz 7, 0x8(3)
    lbz 9, 0x44(10)
    clrlwi 0, 0, 24
    lbz 6, 0x9(3)
    cmpwi 5, 0x0
    or 0, 9, 0
    stb 0, 0x44(10)
    .4byte 0x800D9338 # lwz r0, lbl_8053AEF8@sda21(r0)
    add 3, 0, 4
    stb 7, 0x3c(3)
    .4byte 0x800D9338 # lwz r0, lbl_8053AEF8@sda21(r0)
    add 3, 0, 4
    stb 6, 0x38(3)
    bltlr
    cmpwi 5, 0x4
    bgelr
    .4byte 0x80CD9338 # lwz r6, lbl_8053AEF8@sda21(r0)
    addi 0, 4, 0x4
    slw 0, 8, 0
    addi 5, 5, 0x1
    lbz 3, 0x44(6)
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x44(6)
    .4byte 0x800D9338 # lwz r0, lbl_8053AEF8@sda21(r0)
    add 3, 0, 4
    stb 5, 0x40(3)
    blr

fn_801ED458:
    stwu 1, -0x20(1)
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4082015C # bne .L_801ED5C0
    lwz 5, 0x4(3)
    addi 0, 5, 0x1
    stw 0, 0x4(3)
    lwz 6, 0x4(3)
    cmpwi 6, 0x1c20
    .4byte 0x41800028 # blt .L_801ED4A4
    li 0, 0x1
    li 5, 0x1c20
    stb 0, 0x0(3)
    li 4, 0x77
    li 0, 0x63
    stw 5, 0x4(3)
    stb 4, 0x8(3)
    stb 0, 0x9(3)
    .4byte 0x48000120 # b .L_801ED5C0
L_801ED4A4:
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x40820114 # bne .L_801ED5C0
    .4byte 0x408200C8 # bne .L_801ED578
    lis 5, 0x8889
    li 0, 0x77
    subi 5, 5, 0x7777
    mulhw 5, 5, 6
    add 5, 5, 6
    srawi 5, 5, 5
    srwi 6, 5, 31
    add 5, 5, 6
    clrlwi 5, 5, 24
    cmplwi 5, 0x77
    .4byte 0x41810008 # bgt .L_801ED4E4
    mr 0, 5
L_801ED4E4:
    stb 0, 0x8(3)
    lis 5, 0x8889
    lis 0, 0x4330
    .4byte 0xC842C760 # lfd f2, lbl_8053F700@sda21(r0)
    lwz 6, 0x4(3)
    subi 5, 5, 0x7777
    stw 0, 0x8(1)
    mulhw 0, 5, 6
    .4byte 0xC062C750 # lfs f3, lbl_8053F6F0@sda21(r0)
    .4byte 0xC002C75C # lfs f0, lbl_8053F6FC@sda21(r0)
    add 0, 0, 6
    srawi 0, 0, 5
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0x3c
    subf 0, 0, 6
    mulli 0, 0, 0x64
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801ED54C
    .4byte 0xC002C754 # lfs f0, lbl_8053F6F4@sda21(r0)
    .4byte 0x48000008 # b .L_801ED550
L_801ED54C:
    .4byte 0xC002C758 # lfs f0, lbl_8053F6F8@sda21(r0)
L_801ED550:
    fadds 0, 1, 0
    li 5, 0x63
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 6, 0x14(1)
    clrlwi 0, 6, 24
    cmplwi 0, 0x63
    .4byte 0x41810008 # bgt .L_801ED574
    mr 5, 6
L_801ED574:
    stb 5, 0x9(3)
L_801ED578:
    lis 5, 0x6666
    lbz 6, 0x9(3)
    addi 0, 5, 0x6667
    mulhw 0, 0, 6
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 6
    cmpwi 0, 0x9
    .4byte 0x41820020 # beq .L_801ED5C0
    clrlwi 5, 4, 24
    clrlwi 0, 4, 31
    srwi 4, 5, 31
    xor 0, 0, 4
    subf 0, 4, 0
    add 0, 6, 0
    stb 0, 0x9(3)
L_801ED5C0:
    addi 1, 1, 0x20
    blr

fn_801ED5C8:
    .4byte 0xC002C768 # lfs f0, lbl_8053F708@sda21(r0)
    stwu 1, -0x20(1)
    fcmpu cr0, 0, 1
    .4byte 0x418201B4 # beq .L_801ED788
    lwz 4, 0x4(3)
    li 0, 0x1
    subi 4, 4, 0x1
    stw 4, 0x4(3)
    lbz 4, 0x0(3)
    cmplwi 4, 0x0
    .4byte 0x408200CC # bne .L_801ED6BC
    lis 4, 0x8889
    lwz 5, 0x4(3)
    subi 6, 4, 0x7777
    li 4, 0x77
    mulhw 6, 6, 5
    add 5, 6, 5
    srawi 5, 5, 5
    srwi 6, 5, 31
    add 5, 5, 6
    clrlwi 5, 5, 24
    cmplwi 5, 0x77
    .4byte 0x41810008 # bgt .L_801ED628
    mr 4, 5
L_801ED628:
    stb 4, 0x8(3)
    lis 5, 0x8889
    lis 4, 0x4330
    .4byte 0xC862C760 # lfd f3, lbl_8053F700@sda21(r0)
    lwz 6, 0x4(3)
    subi 5, 5, 0x7777
    stw 4, 0x8(1)
    mulhw 4, 5, 6
    .4byte 0xC082C750 # lfs f4, lbl_8053F6F0@sda21(r0)
    .4byte 0xC002C75C # lfs f0, lbl_8053F6FC@sda21(r0)
    add 4, 4, 6
    srawi 4, 4, 5
    srwi 5, 4, 31
    add 4, 4, 5
    mulli 4, 4, 0x3c
    subf 4, 4, 6
    mulli 4, 4, 0x64
    xoris 4, 4, 0x8000
    stw 4, 0xc(1)
    lfd 2, 0x8(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_801ED690
    .4byte 0xC002C754 # lfs f0, lbl_8053F6F4@sda21(r0)
    .4byte 0x48000008 # b .L_801ED694
L_801ED690:
    .4byte 0xC002C758 # lfs f0, lbl_8053F6F8@sda21(r0)
L_801ED694:
    fadds 0, 2, 0
    li 5, 0x63
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 6, 0x14(1)
    clrlwi 4, 6, 24
    cmplwi 4, 0x63
    .4byte 0x41810008 # bgt .L_801ED6B8
    mr 5, 6
L_801ED6B8:
    stb 5, 0x9(3)
L_801ED6BC:
    .4byte 0xC002C768 # lfs f0, lbl_8053F708@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801ED6D0
    fmr 1, 0
    .4byte 0x48000014 # b .L_801ED6E0
L_801ED6D0:
    .4byte 0xC002C75C # lfs f0, lbl_8053F6FC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801ED6E0
    fmr 1, 0
L_801ED6E0:
    .4byte 0xC002C76C # lfs f0, lbl_8053F70C@sda21(r0)
    .4byte 0xC042C750 # lfs f2, lbl_8053F6F0@sda21(r0)
    fmuls 1, 0, 1
    .4byte 0xC002C75C # lfs f0, lbl_8053F6FC@sda21(r0)
    lbz 5, 0x9(3)
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801ED708
    .4byte 0xC002C754 # lfs f0, lbl_8053F6F4@sda21(r0)
    .4byte 0x48000008 # b .L_801ED70C
L_801ED708:
    .4byte 0xC002C758 # lfs f0, lbl_8053F6F8@sda21(r0)
L_801ED70C:
    fadds 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    add 4, 5, 4
    stb 4, 0x9(3)
    lbz 4, 0x9(3)
    cmplwi 4, 0x63
    .4byte 0x40810048 # ble .L_801ED774
    subi 4, 4, 0x64
    stb 4, 0x9(3)
    lbz 4, 0x8(3)
    addi 4, 4, 0x1
    stb 4, 0x8(3)
    lbz 4, 0x8(3)
    cmplwi 4, 0x77
    .4byte 0x40810028 # ble .L_801ED774
    li 0, 0x1
    li 6, 0x1c20
    stb 0, 0x0(3)
    li 5, 0x77
    li 4, 0x63
    li 0, 0x0
    stw 6, 0x4(3)
    stb 5, 0x8(3)
    stb 4, 0x9(3)
L_801ED774:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_801ED788
    lwz 4, 0x4(3)
    addi 0, 4, 0x1
    stw 0, 0x4(3)
L_801ED788:
    li 0, 0x1
    stb 0, 0x0(3)
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801ED1B8
