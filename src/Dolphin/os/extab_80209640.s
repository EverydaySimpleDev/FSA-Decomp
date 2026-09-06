# Fresh project-wide gap hunt continuation: 18 functions, 6,776 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80009DC0
etb_80009DC0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009DC0, 8

.global etb_80009DC8
etb_80009DC8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009DC8, 8

.global etb_80009DD0
etb_80009DD0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009DD0, 8

.global etb_80009DD8
etb_80009DD8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009DD8, 8

.global etb_80009DE0
etb_80009DE0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009DE0, 8

.global etb_80009DE8
etb_80009DE8:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80009DE8, 8

.global etb_80009DF0
etb_80009DF0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80009DF0, 8

.global etb_80009DF8
etb_80009DF8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80009DF8, 8

.global etb_80009E00
etb_80009E00:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80009E00, 8

.global etb_80009E08
etb_80009E08:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009E08, 8

.global etb_80009E10
etb_80009E10:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009E10, 8

.global etb_80009E18
etb_80009E18:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009E18, 8

.section extabindex, "a"
.balign 4
.global eti_800177E8
eti_800177E8:
    .4byte fn_802099F0
    .4byte 0x00000224
    .4byte etb_80009DC0
.size eti_800177E8, 12

.global eti_800177F4
eti_800177F4:
    .4byte fn_80209C14
    .4byte 0x00000090
    .4byte etb_80009DC8
.size eti_800177F4, 12

.global eti_80017800
eti_80017800:
    .4byte fn_80209CA4
    .4byte 0x00000050
    .4byte etb_80009DD0
.size eti_80017800, 12

.global eti_8001780C
eti_8001780C:
    .4byte fn_80209D54
    .4byte 0x00000268
    .4byte etb_80009DD8
.size eti_8001780C, 12

.global eti_80017818
eti_80017818:
    .4byte fn_80209FBC
    .4byte 0x0000004C
    .4byte etb_80009DE0
.size eti_80017818, 12

.global eti_80017824
eti_80017824:
    .4byte fn_8020A018
    .4byte 0x000000D0
    .4byte etb_80009DE8
.size eti_80017824, 12

.global eti_80017830
eti_80017830:
    .4byte fn_8020A0E8
    .4byte 0x00000034
    .4byte etb_80009DF0
.size eti_80017830, 12

.global eti_8001783C
eti_8001783C:
    .4byte fn_8020A11C
    .4byte 0x000001A4
    .4byte etb_80009DF8
.size eti_8001783C, 12

.global eti_80017848
eti_80017848:
    .4byte fn_8020A2C0
    .4byte 0x000000C4
    .4byte etb_80009E00
.size eti_80017848, 12

.global eti_80017854
eti_80017854:
    .4byte fn_8020A384
    .4byte 0x000006F4
    .4byte etb_80009E08
.size eti_80017854, 12

.global eti_80017860
eti_80017860:
    .4byte fn_8020AA78
    .4byte 0x000003B4
    .4byte etb_80009E10
.size eti_80017860, 12

.global eti_8001786C
eti_8001786C:
    .4byte fn_8020AE50
    .4byte 0x00000268
    .4byte etb_80009E18
.size eti_8001786C, 12

.text
.balign 4
.global fn_80209640
.global fn_802099F0
.global fn_80209C14
.global fn_80209CA4
.global fn_80209CF4
.global fn_80209D20
.global fn_80209D44
.global fn_80209D54
.global fn_80209FBC
.global fn_8020A008
.global fn_8020A018
.global fn_8020A0E8
.global fn_8020A11C
.global fn_8020A2C0
.global fn_8020A384
.global fn_8020AA78
.global fn_8020AE2C
.global fn_8020AE50

fn_80209640:
    lwz 0, 0x0(3)
    lfs 0, 0x4(3)
    cmpwi 0, 0x2
    lfs 1, 0x8(3)
    .4byte 0x418201B0 # beq .L_80209800
    .4byte 0x40800014 # bge .L_80209668
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80209678
    .4byte 0x4080009C # bge .L_802096FC
    .4byte 0x48000358 # b .L_802099BC
L_80209668:
    cmpwi 0, 0x4
    .4byte 0x41820320 # beq .L_8020998C
    .4byte 0x4080034C # bge .L_802099BC
    .4byte 0x48000214 # b .L_80209888
L_80209678:
    lwz 0, 0xc(3)
    li 5, 0x0
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820034 # beq .L_802096BC
    lfs 3, 0x4(3)
    .4byte 0xC042C97C # lfs f2, lbl_8053F91C@sda21(r0)
    fadds 2, 3, 2
    stfs 2, 0x4(3)
    lfs 2, 0x4(3)
    lfs 3, 0x1c(3)
    fcmpo cr0, 2, 3
    cror eq, gt, eq
    .4byte 0x4082003C # bne .L_802096E8
    stfs 3, 0x4(3)
    li 5, 0x1
    .4byte 0x48000030 # b .L_802096E8
L_802096BC:
    lfs 3, 0x4(3)
    .4byte 0xC042C97C # lfs f2, lbl_8053F91C@sda21(r0)
    fsubs 2, 3, 2
    stfs 2, 0x4(3)
    lfs 2, 0x4(3)
    lfs 3, 0x14(3)
    fcmpo cr0, 2, 3
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802096E8
    stfs 3, 0x4(3)
    li 5, 0x1
L_802096E8:
    clrlwi. 0, 5, 24
    .4byte 0x418202D0 # beq .L_802099BC
    li 0, 0x1
    stw 0, 0x0(3)
    .4byte 0x480002C4 # b .L_802099BC
L_802096FC:
    lwz 0, 0xc(3)
    li 8, 0x0
    lha 6, 0x10(3)
    lha 5, 0x12(3)
    cntlzw 7, 0
    extrwi. 0, 7, 8, 19
    add 5, 6, 5
    srwi 7, 7, 5
    sth 5, 0x10(3)
    .4byte 0x41820034 # beq .L_80209754
    lha 0, 0x10(3)
    cmpwi 0, 0x0
    .4byte 0x41810054 # bgt .L_80209780
    lha 0, 0x12(3)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_80209748
    li 0, -0x8000
    sth 0, 0x10(3)
    .4byte 0x48000008 # b .L_8020974C
L_80209748:
    sth 8, 0x10(3)
L_8020974C:
    li 8, 0x1
    .4byte 0x48000030 # b .L_80209780
L_80209754:
    lha 0, 0x10(3)
    cmpwi 0, 0x0
    .4byte 0x41800024 # blt .L_80209780
    lha 0, 0x12(3)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80209774
    sth 8, 0x10(3)
    .4byte 0x4800000C # b .L_8020977C
L_80209774:
    li 0, -0x8000
    sth 0, 0x10(3)
L_8020977C:
    li 8, 0x1
L_80209780:
    lha 5, 0x10(3)
    lis 6, lbl_8052EBC0@ha
    clrlwi. 0, 7, 24
    .4byte 0xC042C998 # lfs f2, lbl_8053F938@sda21(r0)
    addi 6, 6, lbl_8052EBC0@l
    rlwinm 7, 5, 30, 18, 28
    add 5, 6, 7
    lfsx 4, 6, 7
    lfs 3, 0x4(5)
    fmuls 4, 4, 2
    fmuls 3, 3, 2
    .4byte 0x41820018 # beq .L_802097C4
    lfs 2, 0x1c(3)
    stfs 2, 0x4(3)
    lfs 2, 0x20(3)
    stfs 2, 0x8(3)
    .4byte 0x48000014 # b .L_802097D4
L_802097C4:
    lfs 2, 0x14(3)
    stfs 2, 0x4(3)
    lfs 2, 0x18(3)
    stfs 2, 0x8(3)
L_802097D4:
    lfs 2, 0x4(3)
    clrlwi. 0, 8, 24
    fadds 2, 2, 4
    stfs 2, 0x4(3)
    lfs 2, 0x8(3)
    fadds 2, 2, 3
    stfs 2, 0x8(3)
    .4byte 0x418201CC # beq .L_802099BC
    li 0, 0x2
    stw 0, 0x0(3)
    .4byte 0x480001C0 # b .L_802099BC
L_80209800:
    lwz 5, 0xc(3)
    li 6, 0x0
    neg 0, 5
    or 0, 0, 5
    srwi. 0, 0, 31
    .4byte 0x41820034 # beq .L_80209848
    lfs 3, 0x4(3)
    .4byte 0xC042C97C # lfs f2, lbl_8053F91C@sda21(r0)
    fadds 2, 3, 2
    stfs 2, 0x4(3)
    lfs 2, 0x4(3)
    lfs 3, 0x1c(3)
    fcmpo cr0, 2, 3
    cror eq, gt, eq
    .4byte 0x4082003C # bne .L_80209874
    stfs 3, 0x4(3)
    li 6, 0x1
    .4byte 0x48000030 # b .L_80209874
L_80209848:
    lfs 3, 0x4(3)
    .4byte 0xC042C97C # lfs f2, lbl_8053F91C@sda21(r0)
    fsubs 2, 3, 2
    stfs 2, 0x4(3)
    lfs 2, 0x4(3)
    lfs 3, 0x14(3)
    fcmpo cr0, 2, 3
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80209874
    stfs 3, 0x4(3)
    li 6, 0x1
L_80209874:
    clrlwi. 0, 6, 24
    .4byte 0x41820144 # beq .L_802099BC
    li 0, 0x3
    stw 0, 0x0(3)
    .4byte 0x48000138 # b .L_802099BC
L_80209888:
    lwz 7, 0xc(3)
    li 8, 0x0
    lha 5, 0x10(3)
    neg 6, 7
    lha 0, 0x12(3)
    or 6, 6, 7
    add 0, 5, 0
    srwi. 7, 6, 31
    sth 0, 0x10(3)
    .4byte 0x41820034 # beq .L_802098E0
    lha 0, 0x10(3)
    cmpwi 0, 0x0
    .4byte 0x41810054 # bgt .L_8020990C
    lha 0, 0x12(3)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_802098D4
    li 0, -0x8000
    sth 0, 0x10(3)
    .4byte 0x48000008 # b .L_802098D8
L_802098D4:
    sth 8, 0x10(3)
L_802098D8:
    li 8, 0x1
    .4byte 0x48000030 # b .L_8020990C
L_802098E0:
    lha 0, 0x10(3)
    cmpwi 0, 0x0
    .4byte 0x41800024 # blt .L_8020990C
    lha 0, 0x12(3)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80209900
    sth 8, 0x10(3)
    .4byte 0x4800000C # b .L_80209908
L_80209900:
    li 0, -0x8000
    sth 0, 0x10(3)
L_80209908:
    li 8, 0x1
L_8020990C:
    lha 0, 0x10(3)
    lis 5, lbl_8052EBC0@ha
    addi 6, 5, lbl_8052EBC0@l
    .4byte 0xC042C998 # lfs f2, lbl_8053F938@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    cmplwi 7, 0x0
    add 5, 6, 0
    lfsx 4, 6, 0
    lfs 3, 0x4(5)
    fmuls 4, 4, 2
    fmuls 3, 3, 2
    .4byte 0x41820018 # beq .L_80209950
    lfs 2, 0x1c(3)
    stfs 2, 0x4(3)
    lfs 2, 0x20(3)
    stfs 2, 0x8(3)
    .4byte 0x48000014 # b .L_80209960
L_80209950:
    lfs 2, 0x14(3)
    stfs 2, 0x4(3)
    lfs 2, 0x18(3)
    stfs 2, 0x8(3)
L_80209960:
    lfs 2, 0x4(3)
    clrlwi. 0, 8, 24
    fadds 2, 2, 4
    stfs 2, 0x4(3)
    lfs 2, 0x8(3)
    fadds 2, 2, 3
    stfs 2, 0x8(3)
    .4byte 0x41820040 # beq .L_802099BC
    li 0, 0x4
    stw 0, 0x0(3)
    .4byte 0x48000034 # b .L_802099BC
L_8020998C:
    lwz 0, 0xc(3)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802099AC
    lfs 3, 0x4(3)
    .4byte 0xC042C97C # lfs f2, lbl_8053F91C@sda21(r0)
    fadds 2, 3, 2
    stfs 2, 0x4(3)
    .4byte 0x48000014 # b .L_802099BC
L_802099AC:
    lfs 3, 0x4(3)
    .4byte 0xC042C97C # lfs f2, lbl_8053F91C@sda21(r0)
    fsubs 2, 3, 2
    stfs 2, 0x4(3)
L_802099BC:
    cmplwi 4, 0x0
    beqlr
    lfs 2, 0x4(3)
    stfs 2, 0x0(4)
    lfs 2, 0x8(3)
    stfs 2, 0x4(4)
    lfs 2, 0x0(4)
    fsubs 0, 2, 0
    stfs 0, 0x0(4)
    lfs 0, 0x4(4)
    fsubs 0, 0, 1
    stfs 0, 0x4(4)
    blr

fn_802099F0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CB3B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CB3B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209A40
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
L_80209A40:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209A78
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
L_80209A78:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209AB0
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
L_80209AB0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209AE8
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
L_80209AE8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209B20
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
L_80209B20:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209B58
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
L_80209B58:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209B90
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
L_80209B90:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209BC8
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
L_80209BC8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80209C00
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
L_80209C00:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80209C14:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_80209C88
    lis 3, lbl_804A5D60@ha
    addi 0, 3, lbl_804A5D60@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_80209C78
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_80209C6C
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_80209C6C
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_80209C6C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_80209C78:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80209C88
    mr 3, 30
    bl dtor_80084580
L_80209C88:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80209CA4:
    stwu 1, -0x10(1)
    mflr 0
    mr 8, 4
    mr 4, 5
    stw 0, 0x14(1)
    mr 5, 6
    li 6, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80209CE0
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 25, 23
    stw 0, 0x230(31)
L_80209CE0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80209CF4:
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    bnelr
    lwz 0, 0x230(3)
    lfs 1, 0x0(4)
    ori 0, 0, 0x8000
    lfs 0, 0x4(4)
    stw 0, 0x230(3)
    stfs 1, 0x2c8(3)
    stfs 0, 0x2cc(3)
    blr

fn_80209D20:
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    bnelr
    lwz 0, 0x230(3)
    ori 0, 0, 0x4000
    stw 0, 0x230(3)
    stw 4, 0x2ac(3)
    stb 5, 0x2b0(3)
    blr

fn_80209D44:
    lwz 0, 0x230(3)
    ori 0, 0, 0x2000
    stw 0, 0x230(3)
    blr

fn_80209D54:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC022C9C0 # lfs f1, lbl_8053F960@sda21(r0)
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    lis 3, lbl_80539D44@ha
    stw 30, 0x78(1)
    psq_l 3, 0x54(31), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    lfs 2, 0x5c(31)
    fmuls 0, 1, 0
    ps_madd 2, 2, 2, 3
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820204 # bne .L_80209FA4
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80209E1C
L_80209DBC:
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
L_80209E1C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80209DBC
    li 6, 0x0
    li 5, 0x1
    .4byte 0xC022C9C4 # lfs f1, lbl_8053F964@sda21(r0)
    li 7, -0x1
    stb 6, 0x54(1)
    li 4, 0x3
    li 3, 0x2
    addi 0, 1, 0x8
    stb 6, 0x55(1)
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 6, 0x50(1)
    stb 6, 0x56(1)
    stb 5, 0x57(1)
    stb 5, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 6, 0x5b(1)
    stb 6, 0x5c(1)
    stb 6, 0x5d(1)
    stb 5, 0x5e(1)
    stw 4, 0x60(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stw 7, 0x68(1)
    stw 6, 0x6c(1)
    stw 3, 0x70(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lfs 3, 0x5c(31)
    lfs 2, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 1, 0x10(1)
    stfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x20(1)
    stfs 1, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 3, 0x30(1)
    stw 0, 0x50(1)
    lwz 0, 0x230(31)
    lwz 3, 0x280(31)
    rlwinm. 0, 0, 0, 24, 24
    addi 30, 3, 0x2c9
    .4byte 0x4082002C # bne .L_80209F1C
    .4byte 0xC022C9C8 # lfs f1, lbl_8053F968@sda21(r0)
    lis 3, lbl_8046A354@ha
    addi 4, 3, lbl_8046A354@l
    mr 5, 30
    fmr 2, 1
    mr 3, 31
    addi 6, 1, 0x38
    li 7, 0x7
    bl fn_801F06F0
    .4byte 0x4800008C # b .L_80209FA4
L_80209F1C:
    lwz 0, 0x138(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80209F4C
    lis 4, lbl_8046A354@ha
    lwz 3, 0x4(31)
    addi 7, 4, lbl_8046A354@l
    mr 8, 30
    addi 4, 31, 0xc
    addi 5, 1, 0x38
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
L_80209F4C:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80209FA4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046A354@ha
    addi 5, 3, lbl_8046A354@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022C9C8 # lfs f1, lbl_8053F968@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x38
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80209FA4:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80209FBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80209FEC
    lhz 4, 0x94(31)
    bl fn_802075D8
L_80209FEC:
    mr 3, 31
    bl fn_801F4F28
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020A008:
    lwz 0, 0x230(3)
    ori 0, 0, 0x80
    stw 0, 0x230(3)
    blr

fn_8020A018:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC042C9C4 # lfs f2, lbl_8053F964@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810078 # ble .L_8020A0C4
    lfs 1, 0x6c(28)
    lfs 0, 0x64(28)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810064 # ble .L_8020A0C4
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 30, 3
    .4byte 0x41800048 # blt .L_8020A0C4
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(28)
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820034 # beq .L_8020A0C4
    mr 3, 30
    bl fn_8023E724
    mr 31, 3
    mr 3, 30
    bl fn_8023B6CC
    lhz 4, 0x94(28)
    mr 6, 3
    lwz 8, 0x8(1)
    mr 3, 29
    mr 5, 30
    mr 7, 31
    bl fn_80207830
L_8020A0C4:
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020A0E8:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, 0x4e55
    li 6, 0x0
    stw 0, 0x14(1)
    addi 5, 5, 0x4c4c
    lwz 4, 0x1a0(3)
    bl fn_801F2DB4
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020A11C:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC042C9C4 # lfs f2, lbl_8053F964@sda21(r0)
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 27, 3
    lfs 1, 0x78(3)
    lfs 0, 0x70(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4182001C # beq .L_8020A164
    lfs 1, 0x7c(27)
    lfs 0, 0x74(27)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8020A16C
L_8020A164:
    li 3, 0x0
    .4byte 0x48000144 # b .L_8020A2AC
L_8020A16C:
    li 0, -0x1
    addi 4, 1, 0x20
    stw 0, 0x8(1)
    li 30, 0x0
    li 29, 0x0
    bl fn_801F317C
    lwz 4, 0x4(27)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AE34
    mr. 31, 3
    .4byte 0x41800014 # blt .L_8020A1AC
    li 4, 0x0
    bl fn_801CC820
    mr 30, 3
    .4byte 0x48000074 # b .L_8020A21C
L_8020A1AC:
    lwz 4, 0x4(27)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AA18
    mr. 31, 3
    .4byte 0x4180000C # blt .L_8020A1CC
    li 29, 0x1
    .4byte 0x48000054 # b .L_8020A21C
L_8020A1CC:
    lwz 4, 0x4(27)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AC74
    mr. 31, 3
    .4byte 0x41800018 # blt .L_8020A1F8
    addi 4, 1, 0xc
    addi 6, 1, 0x8
    li 5, 0x0
    bl fn_801CC538
    .4byte 0x48000028 # b .L_8020A21C
L_8020A1F8:
    lwz 4, 0x4(27)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AD54
    mr. 31, 3
    .4byte 0x41800010 # blt .L_8020A21C
    addi 4, 1, 0x8
    li 5, 0x0
    bl fn_801CC640
L_8020A21C:
    cmpwi 31, 0x0
    li 28, 0x0
    .4byte 0x41800084 # blt .L_8020A2A8
    clrlwi. 0, 29, 24
    .4byte 0x41820020 # beq .L_8020A24C
    mr 4, 31
    addi 3, 27, 0x1dc
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8020A274
    li 28, 0x1
    .4byte 0x4800002C # b .L_8020A274
L_8020A24C:
    clrlwi. 0, 30, 24
    .4byte 0x40820020 # bne .L_8020A270
    lwz 4, 0x8(1)
    cmpwi 4, 0x0
    .4byte 0x41800018 # blt .L_8020A274
    addi 3, 27, 0x1dc
    bl fn_801EAC54
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8020A274
L_8020A270:
    li 28, 0x1
L_8020A274:
    clrlwi. 0, 28, 24
    .4byte 0x41820030 # beq .L_8020A2A8
    lfs 2, 0xc(1)
    addi 4, 1, 0x14
    lfs 1, 0x10(1)
    li 5, 0x0
    .4byte 0xC002C9CC # lfs f0, lbl_8053F96C@sda21(r0)
    li 6, 0x0
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x4(27)
    bl fn_801CB538
L_8020A2A8:
    mr 3, 28
L_8020A2AC:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8020A2C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmplwi 0, 0x9
    .4byte 0x41810084 # bgt .L_8020A358
    lis 4, jumptable_804A5E04@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A5E04@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    .4byte 0xC042C9D0 # lfs f2, lbl_8053F970@sda21(r0)
    .4byte 0xC022C018 # lfs f1, lbl_8053EFB8@sda21(r0)
    lfs 0, 0x44(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x44(3)
    .4byte 0x48000070 # b .L_8020A374
    lwz 0, 0x278(3)
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_8020A324
    .4byte 0x40800024 # bge .L_8020A338
    cmpwi 0, 0x2
    .4byte 0x41820008 # beq .L_8020A324
    .4byte 0x48000018 # b .L_8020A338
L_8020A324:
    lfs 0, 0x2b4(3)
    stfs 0, 0x3c(3)
    lfs 0, 0x2b8(3)
    stfs 0, 0x40(3)
    .4byte 0x48000010 # b .L_8020A344
L_8020A338:
    .4byte 0xC002C9C4 # lfs f0, lbl_8053F964@sda21(r0)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
L_8020A344:
    lfs 1, 0x44(3)
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(3)
    .4byte 0x48000020 # b .L_8020A374
L_8020A358:
    .4byte 0xC002C9C4 # lfs f0, lbl_8053F964@sda21(r0)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    lwz 12, 0x0(3)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
L_8020A374:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020A384:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182004C # beq .L_8020A3EC
    lwz 0, 0x248(31)
    cmpwi 0, 0xb
    .4byte 0x40800010 # bge .L_8020A3BC
    cmpwi 0, 0x8
    .4byte 0x41820038 # beq .L_8020A3EC
    .4byte 0x48000010 # b .L_8020A3C8
L_8020A3BC:
    cmpwi 0, 0xd
    .4byte 0x40800008 # bge .L_8020A3C8
    .4byte 0x48000028 # b .L_8020A3EC
L_8020A3C8:
    lwz 0, 0x278(31)
    cmpwi 0, 0x6
    .4byte 0x4182001C # beq .L_8020A3EC
    .4byte 0x4080000C # bge .L_8020A3E0
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_8020A3EC
L_8020A3E0:
    mr 3, 31
    li 4, 0xb
    bl fn_8020AA78
L_8020A3EC:
    lwz 0, 0x248(31)
    cmplwi 0, 0xc
    .4byte 0x41810670 # bgt .L_8020AA64
    lis 3, jumptable_804A5E2C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A5E2C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081064C # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182063C # beq .L_8020AA64
    .4byte 0xC022C9D4 # lfs f1, lbl_8053F974@sda21(r0)
    mr 3, 31
    .4byte 0xC002C9D8 # lfs f0, lbl_8053F978@sda21(r0)
    li 4, 0x1
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    bl fn_8020AA78
    .4byte 0x480005F4 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408105E8 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418205D8 # beq .L_8020AA64
    lwz 0, 0x278(31)
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_8020A4D0
    .4byte 0x40800010 # bge .L_8020A4AC
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_8020A4B8
    .4byte 0x480005BC # b .L_8020AA64
L_8020A4AC:
    cmpwi 0, 0x4
    .4byte 0x408005B4 # bge .L_8020AA64
    .4byte 0x48000034 # b .L_8020A4E8
L_8020A4B8:
    addi 3, 31, 0x270
    li 4, 0x2
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000598 # b .L_8020AA64
L_8020A4D0:
    addi 3, 31, 0x270
    li 4, 0x3
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000580 # b .L_8020AA64
L_8020A4E8:
    mr 3, 31
    li 4, 0x2
    bl fn_8020AA78
    .4byte 0x48000570 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810564 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820554 # beq .L_8020AA64
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8020A52C
    bl fn_80207ECC
L_8020A52C:
    mr 3, 31
    li 4, 0x7
    bl fn_8020AA78
    .4byte 0x4800052C # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810520 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820510 # beq .L_8020AA64
    mr 3, 31
    li 4, 0x4
    bl fn_8020AA78
    .4byte 0x48000500 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408104F4 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418204E4 # beq .L_8020AA64
    mr 3, 31
    li 4, 0x5
    bl fn_8020AA78
    .4byte 0x480004D4 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408104C8 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418204B8 # beq .L_8020AA64
    lwz 0, 0x278(31)
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_8020A5F0
    .4byte 0x40800010 # bge .L_8020A5CC
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_8020A5D8
    .4byte 0x4800049C # b .L_8020AA64
L_8020A5CC:
    cmpwi 0, 0x4
    .4byte 0x40800494 # bge .L_8020AA64
    .4byte 0x48000034 # b .L_8020A608
L_8020A5D8:
    addi 3, 31, 0x270
    li 4, 0x2
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000478 # b .L_8020AA64
L_8020A5F0:
    addi 3, 31, 0x270
    li 4, 0x3
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000460 # b .L_8020AA64
L_8020A608:
    .4byte 0xC022C9D4 # lfs f1, lbl_8053F974@sda21(r0)
    .4byte 0xC002C9D8 # lfs f0, lbl_8053F978@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8020A658
    bl fn_80207ECC
L_8020A658:
    mr 3, 31
    li 4, 0x7
    bl fn_8020AA78
    .4byte 0x48000400 # b .L_8020AA64
    lwz 0, 0x278(31)
    cmpwi 0, 0x5
    .4byte 0x408203F4 # bne .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x418203E4 # beq .L_8020AA64
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x41820014 # beq .L_8020A6A0
    mr 3, 31
    li 4, 0x7
    bl fn_8020AA78
    .4byte 0x480003C8 # b .L_8020AA64
L_8020A6A0:
    rlwinm. 0, 3, 0, 16, 16
    .4byte 0x418203C0 # beq .L_8020AA64
    mr 3, 31
    li 4, 0x9
    bl fn_8020AA78
    .4byte 0x480003B0 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408103A4 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820394 # beq .L_8020AA64
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x41820068 # beq .L_8020A744
    .4byte 0x40800014 # bge .L_8020A6F4
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_8020A700
    .4byte 0x40800040 # bge .L_8020A72C
    .4byte 0x48000374 # b .L_8020AA64
L_8020A6F4:
    cmpwi 0, 0x5
    .4byte 0x4080036C # bge .L_8020AA64
    .4byte 0x48000060 # b .L_8020A75C
L_8020A700:
    addi 3, 31, 0x270
    li 4, 0x2
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x36
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800033C # b .L_8020AA64
L_8020A72C:
    addi 3, 31, 0x270
    li 4, 0x3
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000324 # b .L_8020AA64
L_8020A744:
    addi 3, 31, 0x270
    li 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800030C # b .L_8020AA64
L_8020A75C:
    lbz 3, 0x2b1(31)
    subi 0, 3, 0x1
    stb 0, 0x2b1(31)
    lbz 0, 0x2b1(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_8020A7C4
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_8020A7B4
    bl fn_80207E58
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8020A7A4
    mr 3, 31
    li 4, 0xb
    bl fn_8020AA78
    .4byte 0x480002C4 # b .L_8020AA64
L_8020A7A4:
    mr 3, 31
    li 4, 0x6
    bl fn_8020AA78
    .4byte 0x480002B4 # b .L_8020AA64
L_8020A7B4:
    mr 3, 31
    li 4, 0xb
    bl fn_8020AA78
    .4byte 0x480002A4 # b .L_8020AA64
L_8020A7C4:
    addi 3, 31, 0x270
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800028C # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810280 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820270 # beq .L_8020AA64
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x41820068 # beq .L_8020A868
    .4byte 0x40800014 # bge .L_8020A818
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_8020A824
    .4byte 0x40800040 # bge .L_8020A850
    .4byte 0x48000250 # b .L_8020AA64
L_8020A818:
    cmpwi 0, 0x5
    .4byte 0x40800248 # bge .L_8020AA64
    .4byte 0x48000060 # b .L_8020A880
L_8020A824:
    addi 3, 31, 0x270
    li 4, 0x2
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x36
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000218 # b .L_8020AA64
L_8020A850:
    addi 3, 31, 0x270
    li 4, 0x3
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000200 # b .L_8020AA64
L_8020A868:
    addi 3, 31, 0x270
    li 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480001E8 # b .L_8020AA64
L_8020A880:
    lbz 3, 0x2b1(31)
    subi 0, 3, 0x1
    stb 0, 0x2b1(31)
    lbz 0, 0x2b1(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8020A8A8
    mr 3, 31
    li 4, 0xb
    bl fn_8020AA78
    .4byte 0x480001C0 # b .L_8020AA64
L_8020A8A8:
    addi 3, 31, 0x270
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480001A8 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081019C # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182018C # beq .L_8020AA64
    lwz 0, 0x278(31)
    cmpwi 0, 0x3
    .4byte 0x41820064 # beq .L_8020A948
    .4byte 0x40800010 # bge .L_8020A8F8
    cmpwi 0, 0x1
    .4byte 0x41820014 # beq .L_8020A904
    .4byte 0x48000170 # b .L_8020AA64
L_8020A8F8:
    cmpwi 0, 0x6
    .4byte 0x41820034 # beq .L_8020A930
    .4byte 0x48000164 # b .L_8020AA64
L_8020A904:
    addi 3, 31, 0x270
    li 4, 0x6
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x39
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000138 # b .L_8020AA64
L_8020A930:
    addi 3, 31, 0x270
    li 4, 0x3
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000120 # b .L_8020AA64
L_8020A948:
    mr 3, 31
    li 4, 0xa
    bl fn_8020AA78
    .4byte 0x48000110 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810104 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418200F4 # beq .L_8020AA64
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8020A98C
    bl fn_80207E24
L_8020A98C:
    mr 3, 31
    li 4, 0x6
    bl fn_8020AA78
    .4byte 0x480000CC # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408100C0 # ble .L_8020AA64
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_8020AA64
    mr 3, 31
    li 4, 0xc
    bl fn_8020AA78
    .4byte 0x480000A0 # b .L_8020AA64
    lwz 0, 0x24c(31)
    cmpwi 0, 0xc
    .4byte 0x4180002C # blt .L_8020A9FC
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8020A9F0
    li 0, 0x0
    stb 0, 0x11c(3)
L_8020A9F0:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800006C # b .L_8020AA64
L_8020A9FC:
    subfic 3, 0, 0xc
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x8(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842C9E0 # lfd f2, lbl_8053F980@sda21(r0)
    stw 4, 0xc(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x8(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8020AA38
    .4byte 0xC002C9C4 # lfs f0, lbl_8053F964@sda21(r0)
    stfs 0, 0x54(31)
    .4byte 0x48000020 # b .L_8020AA54
L_8020AA38:
    .4byte 0xC022C9C8 # lfs f1, lbl_8053F968@sda21(r0)
    .4byte 0xC002C9C4 # lfs f0, lbl_8053F964@sda21(r0)
    fdivs 2, 1, 2
    lfs 1, 0x54(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x54(31)
L_8020AA54:
    lfs 0, 0x54(31)
    stfs 0, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x5c(31)
L_8020AA64:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020AA78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820028 # beq .L_8020AAC4
    cmpwi 31, 0xb
    .4byte 0x40800010 # bge .L_8020AAB4
    cmpwi 31, 0x8
    .4byte 0x41820018 # beq .L_8020AAC4
    .4byte 0x48000364 # b .L_8020AE14
L_8020AAB4:
    cmpwi 31, 0xd
    .4byte 0x4080035C # bge .L_8020AE14
    .4byte 0x48000008 # b .L_8020AAC4
    .4byte 0x48000354 # b .L_8020AE14
L_8020AAC4:
    cmplwi 31, 0xc
    .4byte 0x41810340 # bgt .L_8020AE08
    lis 3, jumptable_804A5E60@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A5E60@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC002C9C4 # lfs f0, lbl_8053F964@sda21(r0)
    stfs 0, 0x2b4(30)
    stfs 0, 0x2b8(30)
    stfs 0, 0x2bc(30)
    .4byte 0x48000300 # b .L_8020AE08
    addi 3, 30, 0x270
    li 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480002E8 # b .L_8020AE08
    addi 3, 30, 0x270
    li 4, 0x8
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480002D0 # b .L_8020AE08
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    .4byte 0xC082C9E8 # lfs f4, lbl_8053F988@sda21(r0)
    lfs 2, 0x2c0(30)
    fneg 0, 0
    .4byte 0xC022C9F0 # lfs f1, lbl_8053F990@sda21(r0)
    lfs 3, 0x2c4(30)
    fmuls 2, 4, 2
    fmuls 0, 1, 0
    .4byte 0xC022C9EC # lfs f1, lbl_8053F98C@sda21(r0)
    fmuls 3, 4, 3
    stfs 2, 0x2b4(30)
    fmuls 0, 1, 0
    stfs 3, 0x2b8(30)
    stfs 0, 0x2bc(30)
    .4byte 0x48000280 # b .L_8020AE08
    addi 3, 30, 0x270
    li 4, 0x5
    li 5, 0x2
    bl fn_801D22A0
    .4byte 0x4800026C # b .L_8020AE08
    lwz 0, 0x230(30)
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x0
    rlwinm 0, 0, 0, 18, 16
    li 6, 0x0
    stw 0, 0x230(30)
    lwz 0, 0x2ac(30)
    stw 0, 0x98(30)
    bl fn_801D22DC
    .4byte 0xC022C9C4 # lfs f1, lbl_8053F964@sda21(r0)
    stfs 1, 0x2b4(30)
    stfs 1, 0x2b8(30)
    lwz 0, 0x98(30)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_8020AC20
    .4byte 0x40800014 # bge .L_8020ABF4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8020AC00
    .4byte 0x40800024 # bge .L_8020AC10
    .4byte 0x4800004C # b .L_8020AC3C
L_8020ABF4:
    cmpwi 0, 0x4
    .4byte 0x40800044 # bge .L_8020AC3C
    .4byte 0x48000034 # b .L_8020AC30
L_8020AC00:
    .4byte 0xC002C9F4 # lfs f0, lbl_8053F994@sda21(r0)
    stfs 0, 0x2b4(30)
    stfs 1, 0x2b8(30)
    .4byte 0x48000030 # b .L_8020AC3C
L_8020AC10:
    .4byte 0xC002C9F8 # lfs f0, lbl_8053F998@sda21(r0)
    stfs 0, 0x2b4(30)
    stfs 1, 0x2b8(30)
    .4byte 0x48000020 # b .L_8020AC3C
L_8020AC20:
    stfs 1, 0x2b4(30)
    .4byte 0xC002C9F4 # lfs f0, lbl_8053F994@sda21(r0)
    stfs 0, 0x2b8(30)
    .4byte 0x48000010 # b .L_8020AC3C
L_8020AC30:
    stfs 1, 0x2b4(30)
    .4byte 0xC002C9F8 # lfs f0, lbl_8053F998@sda21(r0)
    stfs 0, 0x2b8(30)
L_8020AC3C:
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    .4byte 0xC022C9F0 # lfs f1, lbl_8053F990@sda21(r0)
    fneg 0, 0
    .4byte 0xC042C9EC # lfs f2, lbl_8053F98C@sda21(r0)
    fmuls 0, 1, 0
    fmuls 0, 2, 0
    stfs 0, 0x2bc(30)
    lbz 0, 0x2b0(30)
    stb 0, 0x2b1(30)
    lbz 0, 0x2b1(30)
    cmplwi 0, 0x1
    .4byte 0x408001A0 # bge .L_8020AE08
    li 0, 0x1
    stb 0, 0x2b1(30)
    .4byte 0x48000194 # b .L_8020AE08
    lwz 0, 0x230(30)
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x0
    rlwinm 0, 0, 0, 19, 17
    li 6, 0x0
    stw 0, 0x230(30)
    bl fn_801D22DC
    .4byte 0xC022C9C4 # lfs f1, lbl_8053F964@sda21(r0)
    mr 3, 30
    addi 4, 30, 0xc
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800018 # blt .L_8020ACC4
    mr 3, 30
    bl fn_801D0280
    addi 0, 3, -0x8000
    extsh 0, 0
    .4byte 0x48000010 # b .L_8020ACD0
L_8020ACC4:
    lis 3, 0x1
    bl fn_801CD664
    extsh 0, 3
L_8020ACD0:
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfsx 4, 3, 0
    fneg 0, 0
    add 3, 3, 0
    .4byte 0xC042C9FC # lfs f2, lbl_8053F99C@sda21(r0)
    .4byte 0xC022C9F0 # lfs f1, lbl_8053F990@sda21(r0)
    li 0, 0x3
    lfs 3, 0x4(3)
    fmuls 4, 4, 2
    fmuls 0, 1, 0
    .4byte 0xC022C9EC # lfs f1, lbl_8053F98C@sda21(r0)
    fmuls 2, 3, 2
    stfs 4, 0x2b4(30)
    fmuls 0, 1, 0
    stfs 2, 0x2b8(30)
    stfs 0, 0x2bc(30)
    stb 0, 0x2b1(30)
    .4byte 0x480000E8 # b .L_8020AE08
    lwz 0, 0x230(30)
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x0
    rlwinm 0, 0, 0, 17, 15
    li 6, 0x0
    stw 0, 0x230(30)
    bl fn_801D22DC
    lfs 2, 0x2c8(30)
    lfs 1, 0xc(30)
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    fsubs 3, 2, 1
    .4byte 0xC0A2CA00 # lfs f5, lbl_8053F9A0@sda21(r0)
    lfs 4, 0x2cc(30)
    fneg 0, 0
    lfs 2, 0x10(30)
    .4byte 0xC022CA04 # lfs f1, lbl_8053F9A4@sda21(r0)
    fsubs 4, 4, 2
    .4byte 0xC042C9EC # lfs f2, lbl_8053F98C@sda21(r0)
    fmuls 3, 5, 3
    fmuls 0, 1, 0
    fmuls 1, 5, 4
    stfs 3, 0x2b4(30)
    fmuls 0, 2, 0
    stfs 1, 0x2b8(30)
    stfs 0, 0x2bc(30)
    .4byte 0x4800007C # b .L_8020AE08
    addi 3, 30, 0x270
    li 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000064 # b .L_8020AE08
    addi 3, 30, 0x270
    li 4, 0x9
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x38
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022C9C8 # lfs f1, lbl_8053F968@sda21(r0)
    .4byte 0xC002CA08 # lfs f0, lbl_8053F9A8@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_8020AE08:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
L_8020AE14:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020AE2C:
    lfs 1, 0x24(3)
    lfs 0, 0xc(3)
    lfs 3, 0x28(3)
    lfs 2, 0x10(3)
    fsubs 0, 1, 0
    fsubs 1, 3, 2
    stfs 0, 0x2c0(3)
    stfs 1, 0x2c4(3)
    blr

fn_8020AE50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    bl fn_801D0ED0
    .4byte 0xC042C9C8 # lfs f2, lbl_8053F968@sda21(r0)
    lis 3, 0x5
    .4byte 0xC022CA08 # lfs f1, lbl_8053F9A8@sda21(r0)
    addi 4, 3, 0x303
    stfs 2, 0x60(31)
    li 3, 0x2
    li 0, 0x1
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 4, 0xb0(31)
    stw 3, 0x98(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x80
    stw 3, 0x230(31)
    stb 0, 0x194(31)
    lwz 0, 0x90(31)
    stw 0, 0x2a8(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    lis 4, lbl_804A5D38@ha
    mr 30, 3
    addi 4, 4, lbl_804A5D38@l
    addi 3, 31, 0x270
    li 5, 0xa
    bl fn_801D2608
    lwz 0, 0x340(30)
    cmpwi 0, 0x3
    .4byte 0x418200A4 # beq .L_8020AFB4
    .4byte 0x40800170 # bge .L_8020B084
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8020AF28
    .4byte 0x40800060 # bge .L_8020AF80
    .4byte 0x48000160 # b .L_8020B084
L_8020AF28:
    li 0, 0x6
    addi 3, 31, 0x270
    stw 0, 0x248(31)
    li 4, 0x5
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC022C9D4 # lfs f1, lbl_8053F974@sda21(r0)
    .4byte 0xC002C9D8 # lfs f0, lbl_8053F978@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    .4byte 0x48000108 # b .L_8020B084
L_8020AF80:
    li 0, 0x0
    addi 3, 31, 0x270
    stw 0, 0x248(31)
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000D4 # b .L_8020B084
L_8020AFB4:
    li 0, 0x3
    addi 3, 31, 0x270
    stw 0, 0x248(31)
    li 4, 0x7
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022C9C4 # lfs f1, lbl_8053F964@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    mr. 4, 3
    .4byte 0x41800018 # blt .L_8020B010
    mr 3, 31
    bl fn_801D0280
    addi 0, 3, -0x8000
    extsh 0, 0
    .4byte 0x48000010 # b .L_8020B01C
L_8020B010:
    lis 3, 0x1
    bl fn_801CD664
    extsh 0, 3
L_8020B01C:
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC022C9D0 # lfs f1, lbl_8053F970@sda21(r0)
    addi 4, 3, lbl_8052EBC0@l
    fneg 0, 0
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 5, 4, 0
    .4byte 0xC062CA0C # lfs f3, lbl_8053F9AC@sda21(r0)
    fmuls 0, 1, 0
    .4byte 0xC022CA10 # lfs f1, lbl_8053F9B0@sda21(r0)
    fmuls 5, 5, 3
    lfs 4, 0x4(3)
    fmuls 0, 1, 0
    .4byte 0xC042C9EC # lfs f2, lbl_8053F98C@sda21(r0)
    fmuls 1, 4, 3
    stfs 5, 0x2b4(31)
    fmuls 0, 2, 0
    stfs 1, 0x2b8(31)
    stfs 0, 0x2bc(31)
    lfs 0, 0x2b4(31)
    stfs 0, 0x3c(31)
    lfs 0, 0x2b8(31)
    stfs 0, 0x40(31)
    lfs 0, 0x2bc(31)
    stfs 0, 0x44(31)
L_8020B084:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x24c(31)
    .4byte 0xC002C9C4 # lfs f0, lbl_8053F964@sda21(r0)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802099F0

