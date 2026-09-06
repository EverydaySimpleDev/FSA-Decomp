# fn_803B961C - static global-instance registration (0x324) - constructs one instance via fn_803B9160, standard __register_global_object pattern (11 registrations)
.section extab, "a"
.balign 4
.global etb_8000F67C
etb_8000F67C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000F67C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F384
eti_8001F384:
    .4byte fn_803B961C
    .4byte 0x00000324
    .4byte etb_8000F67C
.size eti_8001F384, 12

.text
.balign 4
.global fn_803B961C

fn_803B961C:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8050EC60@ha
    lis 3, lbl_804AFB30@ha
    stw 0, 0x24(1)
    addi 0, 3, lbl_804AFB30@l
    stmw 27, 0xc(1)
    addi 31, 4, lbl_8050EC60@l
    addi 28, 31, 0x20
    li 30, 0x0
    mr 27, 28
    stw 0, 0x20(31)
    stw 30, 0x10(28)
    stw 30, 0xc(28)
    stw 30, 0x8(28)
L_803B9658:
    addi 29, 28, 0x20
    li 4, 0x0
    mr 3, 29
    li 5, 0xc8
    bl memset
    addi 3, 27, 0x280
    li 4, 0x0
    li 5, 0x9c4
    bl memset
    li 3, 0x1
    addi 30, 30, 0x1
    stb 3, 0x5c(29)
    li 0, 0x32
    cmpwi 30, 0x3
    addi 28, 28, 0xc8
    stb 0, 0x59(29)
    addi 27, 27, 0x9c4
    lwz 0, 0x8(29)
    ori 0, 0, 0x4
    stw 0, 0x8(29)
    lwz 0, 0x8(29)
    ori 0, 0, 0x40
    stw 0, 0x8(29)
    lwz 0, 0x8(29)
    ori 0, 0, 0x400
    stw 0, 0x8(29)
    lwz 0, 0x8(29)
    ori 0, 0, 0x4000
    stw 0, 0x8(29)
    lwz 0, 0x8(29)
    oris 0, 0, 0x4
    stw 0, 0x8(29)
    lwz 0, 0x8(29)
    oris 0, 0, 0x40
    stw 0, 0x8(29)
    lwz 0, 0x8(29)
    oris 0, 0, 0x400
    stw 0, 0x8(29)
    lwz 0, 0x8(29)
    oris 0, 0, 0x2000
    stw 0, 0x8(29)
    stb 3, 0x68(29)
    stb 3, 0x69(29)
    .4byte 0x4180FF54 # blt .L_803B9658
    lis 4, fn_803B94C4@ha
    addi 3, 31, 0x20
    addi 4, 4, fn_803B94C4@l
    addi 5, 31, 0x0
    bl __register_global_object
    addi 3, 31, 0x200c
    bl fn_803B9160
    lis 4, fn_803B95D4@ha
    addi 5, 31, 0x2000
    addi 4, 4, fn_803B95D4@l
    bl __register_global_object
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B976C
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x20e8
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_803B976C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B97A4
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x20f4
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_803B97A4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B97DC
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x2100
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_803B97DC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B9814
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x210c
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_803B9814:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B984C
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x2118
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_803B984C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B9884
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x2124
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_803B9884:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B98BC
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x2130
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_803B98BC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B98F4
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x213c
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_803B98F4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803B992C
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x2148
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_803B992C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_803B961C

