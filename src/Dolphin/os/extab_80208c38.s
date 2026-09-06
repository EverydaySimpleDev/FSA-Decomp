.section extab, "a"
.balign 4
.global etb_80009D80
etb_80009D80:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009D80, 8

.global etb_80009D88
etb_80009D88:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009D88, 8

.global etb_80009D90
etb_80009D90:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009D90, 8

.global etb_80009D98
etb_80009D98:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009D98, 8

.global etb_80009DA0
etb_80009DA0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009DA0, 8

.global etb_80009DA8
etb_80009DA8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009DA8, 8

.global etb_80009DB0
etb_80009DB0:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_80009DB0, 8

.section extabindex, "a"
.balign 4
.global eti_80017788
eti_80017788:
    .4byte fn_80208C38
    .4byte 0x00000224
    .4byte etb_80009D80
.size eti_80017788, 12

.global eti_80017794
eti_80017794:
    .4byte fn_80208E5C
    .4byte 0x000000A0
    .4byte etb_80009D88
.size eti_80017794, 12

.global eti_800177A0
eti_800177A0:
    .4byte fn_80208EFC
    .4byte 0x00000118
    .4byte etb_80009D90
.size eti_800177A0, 12

.global eti_800177AC
eti_800177AC:
    .4byte fn_80209014
    .4byte 0x00000150
    .4byte etb_80009D98
.size eti_800177AC, 12

.global eti_800177B8
eti_800177B8:
    .4byte fn_80209164
    .4byte 0x00000088
    .4byte etb_80009DA0
.size eti_800177B8, 12

.global eti_800177C4
eti_800177C4:
    .4byte fn_802091EC
    .4byte 0x00000078
    .4byte etb_80009DA8
.size eti_800177C4, 12

.global eti_800177D0
eti_800177D0:
    .4byte fn_80209280
    .4byte 0x00000344
    .4byte etb_80009DB0
.size eti_800177D0, 12

.text
.balign 4
.global fn_80208C38
.global fn_80208E5C
.global fn_80208EFC
.global fn_80209014
.global fn_80209164
.global fn_802091EC
.global fn_80209264
.global fn_80209280

fn_80208C38:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CB2B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CB2B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208C88
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
L_80208C88:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208CC0
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
L_80208CC0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208CF8
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
L_80208CF8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208D30
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
L_80208D30:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208D68
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
L_80208D68:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208DA0
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
L_80208DA0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208DD8
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
L_80208DD8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208E10
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
L_80208E10:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80208E48
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
L_80208E48:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80208E5C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820068 # beq .L_80208EE0
    lis 3, lbl_804A5C88@ha
    addi 0, 3, lbl_804A5C88@l
    stw 0, 0x0(30)
    .4byte 0x41820048 # beq .L_80208ED0
    lis 3, lbl_804A5B28@ha
    addi 0, 3, lbl_804A5B28@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_80208ED0
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_80208EC4
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_80208EC4
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_80208EC4:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_80208ED0:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80208EE0
    mr 3, 30
    bl dtor_80084580
L_80208EE0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80208EFC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_80208F50
    .4byte 0x40800010 # bge .L_80208F34
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_80208F3C
    .4byte 0x480000C8 # b .L_80208FF8
L_80208F34:
    cmpwi 0, 0x4
    .4byte 0x408000C0 # bge .L_80208FF8
L_80208F3C:
    .4byte 0xC002C978 # lfs f0, lbl_8053F918@sda21(r0)
    stfs 0, 0x3c(29)
    stfs 0, 0x40(29)
    stfs 0, 0x44(29)
    .4byte 0x480000AC # b .L_80208FF8
L_80208F50:
    lwz 0, 0x344(29)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80208F84
    addi 3, 29, 0x34c
    addi 4, 1, 0x8
    bl fn_80209640
    lfs 2, 0xc(1)
    lfs 1, 0x8(1)
    .4byte 0xC002C978 # lfs f0, lbl_8053F918@sda21(r0)
    stfs 1, 0x3c(29)
    stfs 2, 0x40(29)
    stfs 0, 0x44(29)
    .4byte 0x4800003C # b .L_80208FBC
L_80208F84:
    lwz 0, 0x340(29)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80208FA8
    .4byte 0xC022C97C # lfs f1, lbl_8053F91C@sda21(r0)
    .4byte 0xC002C978 # lfs f0, lbl_8053F918@sda21(r0)
    stfs 1, 0x3c(29)
    stfs 0, 0x40(29)
    stfs 0, 0x44(29)
    .4byte 0x48000018 # b .L_80208FBC
L_80208FA8:
    .4byte 0xC022C980 # lfs f1, lbl_8053F920@sda21(r0)
    .4byte 0xC002C978 # lfs f0, lbl_8053F918@sda21(r0)
    stfs 1, 0x3c(29)
    stfs 0, 0x40(29)
    stfs 0, 0x44(29)
L_80208FBC:
    li 31, 0x0
    mr 30, 29
L_80208FC4:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80208FE8
    psq_l 1, 0x3c(29), 0, 0
    lfs 0, 0x44(29)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_80208FE8:
    addi 31, 31, 0x1
    addi 30, 30, 0x24
    cmpwi 31, 0x4
    .4byte 0x4180FFD0 # blt .L_80208FC4
L_80208FF8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80209014:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    bl fn_80207A60
    lwz 0, 0x248(29)
    cmpwi 0, 0x1
    .4byte 0x41820094 # beq .L_802090D0
    .4byte 0x40800108 # bge .L_80209148
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80209054
    .4byte 0x480000FC # b .L_80209148
    .4byte 0x480000F8 # b .L_80209148
L_80209054:
    lwz 0, 0x348(29)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80209070
    lwz 3, 0x24c(29)
    lwz 0, 0x250(29)
    cmpw 3, 0
    .4byte 0x40800020 # bge .L_8020908C
L_80209070:
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200C0 # beq .L_80209148
L_8020908C:
    li 30, 0x0
    mr 31, 29
L_80209094:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802090AC
    bl fn_8020B500
L_802090AC:
    addi 30, 30, 0x1
    addi 31, 31, 0x24
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_80209094
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(29)
    stw 0, 0x248(29)
    .4byte 0x4800007C # b .L_80209148
L_802090D0:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_802090E8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802090EC
L_802090E8:
    addi 3, 3, 0xdc
L_802090EC:
    lfs 0, 0x0(3)
    .4byte 0xC022C984 # lfs f1, lbl_8053F924@sda21(r0)
    lfs 2, 0xc(29)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x41800014 # blt .L_80209114
    lfs 0, 0x8(3)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810038 # ble .L_80209148
L_80209114:
    li 31, 0x0
    stb 31, 0x11c(29)
    mr 30, 31
L_80209120:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80209138
    stb 31, 0x11c(3)
L_80209138:
    addi 30, 30, 0x1
    addi 29, 29, 0x24
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_80209120
L_80209148:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80209164:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_80209194
    li 4, 0x0
    li 0, 0x3
    stw 4, 0x24c(3)
    stw 0, 0x248(3)
L_80209194:
    li 30, 0x0
    mr 31, 3
L_8020919C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_802091C4
    lwz 4, 0x2b8(31)
    addi 6, 31, 0x2c0
    lwz 5, 0x2bc(31)
    lwz 7, 0x2cc(31)
    bl fn_8020B3E4
L_802091C4:
    addi 30, 30, 0x1
    addi 31, 31, 0x24
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_8020919C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802091EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_8020921C
    li 4, 0x0
    li 0, 0x2
    stw 4, 0x24c(3)
    stw 0, 0x248(3)
L_8020921C:
    li 30, 0x0
    mr 31, 3
L_80209224:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8020923C
    bl fn_8020B434
L_8020923C:
    addi 30, 30, 0x1
    addi 31, 31, 0x24
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_80209224
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80209264:
    lfs 0, 0x24(3)
    stfs 0, 0xc(3)
    lfs 0, 0x28(3)
    stfs 0, 0x10(3)
    lfs 0, 0x2c(3)
    stfs 0, 0x14(3)
    blr

fn_80209280:
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
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 30
    stw 0, 0x2ac(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x2
    .4byte 0x4080000C # bge .L_802092D4
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_802092E0
L_802092D4:
    li 3, 0x2
    bl fn_801CD664
    stw 3, 0x2ac(31)
L_802092E0:
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 26
    stw 0, 0x340(31)
    lwz 0, 0x340(31)
    cmpwi 0, 0x2
    .4byte 0x4080000C # bge .L_80209300
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_8020930C
L_80209300:
    li 3, 0x2
    bl fn_801CD664
    stw 3, 0x340(31)
L_8020930C:
    lwz 0, 0x90(31)
    li 6, 0x0
    .4byte 0xC042C988 # lfs f2, lbl_8053F928@sda21(r0)
    li 5, 0x2
    extrwi 0, 0, 1, 23
    .4byte 0xC022C98C # lfs f1, lbl_8053F92C@sda21(r0)
    stw 0, 0x344(31)
    li 4, 0x3e8
    li 0, 0x1
    li 3, 0x4b1
    lwz 7, 0x90(31)
    srwi 7, 7, 27
    stw 7, 0x348(31)
    stfs 2, 0x60(31)
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
    stw 6, 0xb0(31)
    stw 5, 0x98(31)
    lwz 5, 0x230(31)
    ori 5, 5, 0x380
    stw 5, 0x230(31)
    stw 4, 0x108(31)
    lwz 4, 0x108(31)
    stw 4, 0x244(31)
    stb 0, 0x194(31)
    stw 6, 0x248(31)
    stw 6, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x258
    .4byte 0xC002C978 # lfs f0, lbl_8053F918@sda21(r0)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 3, 0x340(31)
    neg 0, 3
    or 0, 0, 3
    srwi 29, 0, 31
    bl GetRoomConfigRecord
    lfs 3, 0xd0(3)
    cmpwi 29, 0x1
    lfs 2, 0xd8(3)
    li 0, 0x0
    lfs 1, 0xcc(3)
    lfs 0, 0xd4(3)
    fadds 2, 3, 2
    .4byte 0xC062C990 # lfs f3, lbl_8053F930@sda21(r0)
    fadds 0, 1, 0
    stw 0, 0x34c(31)
    fmuls 4, 3, 2
    fmuls 2, 3, 0
    .4byte 0x41820028 # beq .L_80209430
    .4byte 0x40800034 # bge .L_80209440
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_8020941C
    .4byte 0x48000028 # b .L_80209440
L_8020941C:
    lfs 1, 0xcc(3)
    .4byte 0xC002C994 # lfs f0, lbl_8053F934@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x350(31)
    .4byte 0x48000014 # b .L_80209440
L_80209430:
    .4byte 0xC022C994 # lfs f1, lbl_8053F934@sda21(r0)
    lfs 0, 0xd4(3)
    fadds 0, 1, 0
    stfs 0, 0x350(31)
L_80209440:
    .4byte 0xC002C998 # lfs f0, lbl_8053F938@sda21(r0)
    li 3, -0x8000
    cmpwi 29, 0x0
    li 0, 0x64
    fsubs 0, 4, 0
    stfs 0, 0x354(31)
    stw 29, 0x358(31)
    sth 3, 0x35c(31)
    sth 0, 0x35e(31)
    .4byte 0x40820010 # bne .L_80209474
    lha 0, 0x35e(31)
    neg 0, 0
    sth 0, 0x35e(31)
L_80209474:
    .4byte 0xC002C99C # lfs f0, lbl_8053F93C@sda21(r0)
    addic. 0, 1, 0x8
    fsubs 1, 2, 0
    fadds 0, 0, 2
    stfs 1, 0x360(31)
    stfs 4, 0x364(31)
    stfs 0, 0x368(31)
    stfs 4, 0x36c(31)
    .4byte 0x41820014 # beq .L_802094A8
    lfs 1, 0x350(31)
    lfs 0, 0x354(31)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_802094A8:
    lfs 0, 0x8(1)
    stfs 0, 0x24(31)
    lwz 0, 0x344(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802094C4
    lfs 0, 0xc(1)
    stfs 0, 0x28(31)
L_802094C4:
    .4byte 0xC022C9A0 # lfs f1, lbl_8053F940@sda21(r0)
    .4byte 0xC3E2C978 # lfs f31, lbl_8053F918@sda21(r0)
    stfs 1, 0x2c(31)
    fmr 30, 31
    psq_l 2, 0x24(31), 0, 0
    lfs 0, 0x2c(31)
    psq_st 2, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_80209514
    .4byte 0x40800034 # bge .L_80209524
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80209500
    .4byte 0x48000028 # b .L_80209524
L_80209500:
    lfs 0, 0x10(1)
    .4byte 0xC3E2C9A4 # lfs f31, lbl_8053F944@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x10(1)
    .4byte 0x48000014 # b .L_80209524
L_80209514:
    lfs 0, 0x14(1)
    .4byte 0xC3C2C9A4 # lfs f30, lbl_8053F944@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x14(1)
L_80209524:
    mr 28, 31
    li 29, 0x0
    lis 30, 0x464f
L_80209530:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x4252
    lwz 7, 0x198(31)
    addi 6, 1, 0x10
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2b0(28)
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(28)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8020956C
    sth 29, 0x94(3)
L_8020956C:
    lfs 1, 0x10(1)
    addi 29, 29, 0x1
    lfs 0, 0x14(1)
    cmpwi 29, 0x4
    fadds 1, 1, 31
    addi 28, 28, 0x24
    fadds 0, 0, 30
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    .4byte 0x4180FFA0 # blt .L_80209530
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


.section .ctors, "a"
.balign 4
    .4byte fn_80208C38
