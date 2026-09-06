.section extab, "a"
.balign 4
.global etb_80009D18
etb_80009D18:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009D18, 8

.global etb_80009D20
etb_80009D20:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009D20, 8

.global etb_80009D28
etb_80009D28:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80009D28, 8

.global etb_80009D30
etb_80009D30:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009D30, 8

.global etb_80009D38
etb_80009D38:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80009D38, 8

.global etb_80009D40
etb_80009D40:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_80009D40, 8

.global etb_80009D48
etb_80009D48:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_80009D48, 8

.global etb_80009D50
etb_80009D50:
    .4byte 0x390A0000
    .4byte 0x00000000
.size etb_80009D50, 8

.global etb_80009D58
etb_80009D58:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009D58, 8

.global etb_80009D60
etb_80009D60:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009D60, 8

.global etb_80009D68
etb_80009D68:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009D68, 8

.global etb_80009D70
etb_80009D70:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_80009D70, 8

.section extabindex, "a"
.balign 4
.global eti_800176EC
eti_800176EC:
    .4byte fn_80207B60
    .4byte 0x00000224
    .4byte etb_80009D18
.size eti_800176EC, 12

.global eti_800176F8
eti_800176F8:
    .4byte fn_80207D84
    .4byte 0x000000A0
    .4byte etb_80009D20
.size eti_800176F8, 12

.global eti_80017704
eti_80017704:
    .4byte fn_80207E24
    .4byte 0x00000034
    .4byte etb_80009D28
.size eti_80017704, 12

.global eti_80017710
eti_80017710:
    .4byte fn_80207E58
    .4byte 0x00000074
    .4byte etb_80009D30
.size eti_80017710, 12

.global eti_8001771C
eti_8001771C:
    .4byte fn_80207ECC
    .4byte 0x00000034
    .4byte etb_80009D38
.size eti_8001771C, 12

.global eti_80017728
eti_80017728:
    .4byte fn_80207F14
    .4byte 0x00000330
    .4byte etb_80009D40
.size eti_80017728, 12

.global eti_80017734
eti_80017734:
    .4byte fn_80208244
    .4byte 0x000002DC
    .4byte etb_80009D48
.size eti_80017734, 12

.global eti_80017740
eti_80017740:
    .4byte fn_80208520
    .4byte 0x00000314
    .4byte etb_80009D50
.size eti_80017740, 12

.global eti_8001774C
eti_8001774C:
    .4byte fn_80208834
    .4byte 0x00000080
    .4byte etb_80009D58
.size eti_8001774C, 12

.global eti_80017758
eti_80017758:
    .4byte fn_802088B4
    .4byte 0x00000070
    .4byte etb_80009D60
.size eti_80017758, 12

.global eti_80017764
eti_80017764:
    .4byte fn_80208924
    .4byte 0x00000048
    .4byte etb_80009D68
.size eti_80017764, 12

.global eti_80017770
eti_80017770:
    .4byte fn_8020896C
    .4byte 0x00000274
    .4byte etb_80009D70
.size eti_80017770, 12

.text
.balign 4
.global fn_80207B60
.global fn_80207D84
.global fn_80207E24
.global fn_80207E58
.global fn_80207ECC
.global fn_80207F00
.global fn_80207F14
.global fn_80208244
.global fn_80208520
.global fn_80208834
.global fn_802088B4
.global fn_80208924
.global fn_8020896C

fn_80207B60:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CB1B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CB1B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207BB0
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
L_80207BB0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207BE8
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
L_80207BE8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207C20
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
L_80207C20:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207C58
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
L_80207C58:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207C90
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
L_80207C90:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207CC8
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
L_80207CC8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207D00
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
L_80207D00:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207D38
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
L_80207D38:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80207D70
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
L_80207D70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80207D84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820068 # beq .L_80207E08
    lis 3, lbl_804A5BD8@ha
    addi 0, 3, lbl_804A5BD8@l
    stw 0, 0x0(30)
    .4byte 0x41820048 # beq .L_80207DF8
    lis 3, lbl_804A5B28@ha
    addi 0, 3, lbl_804A5B28@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_80207DF8
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_80207DEC
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_80207DEC
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_80207DEC:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_80207DF8:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80207E08
    mr 3, 30
    bl dtor_80084580
L_80207E08:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80207E24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x4
    .4byte 0x41820008 # beq .L_80207E40
    .4byte 0x4800000C # b .L_80207E48
L_80207E40:
    li 4, 0x2
    bl fn_80208244
L_80207E48:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80207E58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    lwz 0, 0x248(3)
    cmpwi 0, 0x6
    .4byte 0x4182003C # beq .L_80207EB0
    .4byte 0x4080003C # bge .L_80207EB4
    cmpwi 0, 0x3
    .4byte 0x41820008 # beq .L_80207E88
    .4byte 0x48000030 # b .L_80207EB4
L_80207E88:
    lbz 0, 0x34a(3)
    cmplwi 0, 0xa
    .4byte 0x41800014 # blt .L_80207EA4
    li 4, 0x6
    bl fn_80208244
    li 31, 0x1
    .4byte 0x48000014 # b .L_80207EB4
L_80207EA4:
    li 4, 0x2
    bl fn_80208244
    .4byte 0x48000008 # b .L_80207EB4
L_80207EB0:
    li 31, 0x1
L_80207EB4:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80207ECC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_80207EE8
    .4byte 0x4800000C # b .L_80207EF0
L_80207EE8:
    li 4, 0x3
    bl fn_80208244
L_80207EF0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80207F00:
    .4byte 0xC002C940 # lfs f0, lbl_8053F8E0@sda21(r0)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    blr

fn_80207F14:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 26, 0x28(1)
    mr 30, 3
    bl fn_80207A60
    lwz 0, 0x248(30)
    cmpwi 0, 0x2
    .4byte 0x41820298 # beq .L_802081DC
    .4byte 0x408002D8 # bge .L_80208220
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80207F5C
    .4byte 0x480002CC # b .L_80208220
    .4byte 0x480002C8 # b .L_80208220
L_80207F5C:
    lbz 4, 0x344(30)
    lis 3, 0x4330
    lwz 0, 0x340(30)
    li 31, 0x0
    stw 4, 0x1c(1)
    .4byte 0xC822C950 # lfd f1, lbl_8053F8F0@sda21(r0)
    cmpwi 0, 0x2
    stw 3, 0x18(1)
    .4byte 0xC042C944 # lfs f2, lbl_8053F8E4@sda21(r0)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 31, 2, 0
    .4byte 0x41820064 # beq .L_80207FF0
    .4byte 0x40800014 # bge .L_80207FA4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80207FB0
    .4byte 0x4080001C # bge .L_80207FB8
    .4byte 0x48000114 # b .L_802080B4
L_80207FA4:
    cmpwi 0, 0x4
    .4byte 0x4080010C # bge .L_802080B4
    .4byte 0x480000CC # b .L_80208078
L_80207FB0:
    li 31, 0x1
    .4byte 0x48000100 # b .L_802080B4
L_80207FB8:
    mr 29, 31
L_80207FBC:
    fmr 1, 31
    mr 3, 30
    mr 4, 29
    addi 5, 30, 0xc
    bl fn_801D08B4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80207FE0
    li 31, 0x1
    .4byte 0x480000D8 # b .L_802080B4
L_80207FE0:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD4 # blt .L_80207FBC
    .4byte 0x480000C8 # b .L_802080B4
L_80207FF0:
    mr 27, 31
L_80207FF4:
    li 0, 0x1
    lbz 3, 0x345(30)
    slw 26, 0, 27
    and. 0, 3, 26
    .4byte 0x4182003C # beq .L_80208040
    mr 3, 30
    mr 4, 27
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_80208068
    fmr 1, 31
    mr 3, 30
    mr 4, 27
    addi 5, 30, 0xc
    bl fn_801D0D50
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_80208068
    li 31, 0x1
    .4byte 0x48000078 # b .L_802080B4
L_80208040:
    fmr 1, 31
    mr 3, 30
    mr 4, 27
    addi 5, 30, 0xc
    bl fn_801D08B4
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80208068
    lbz 0, 0x345(30)
    or 0, 0, 26
    stb 0, 0x345(30)
L_80208068:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80207FF4
    .4byte 0x48000040 # b .L_802080B4
L_80208078:
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    lhz 0, 0x346(30)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x40820020 # bne .L_802080B0
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_80226850
    lhz 0, 0x348(30)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41820008 # beq .L_802080B4
L_802080B0:
    li 31, 0x1
L_802080B4:
    clrlwi. 0, 31, 24
    .4byte 0x41820168 # beq .L_80208220
    mr 3, 30
    bl fn_801F3604
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    .4byte 0xC3E2C940 # lfs f31, lbl_8053F8E0@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    fmr 30, 31
    stfs 0, 0x10(1)
    lwz 0, 0x2ac(30)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_80208110
    .4byte 0x4080003C # bge .L_80208124
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802080F8
    .4byte 0x48000030 # b .L_80208124
L_802080F8:
    lfs 1, 0x8(1)
    .4byte 0xC002C948 # lfs f0, lbl_8053F8E8@sda21(r0)
    .4byte 0xC3E2C944 # lfs f31, lbl_8053F8E4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000018 # b .L_80208124
L_80208110:
    lfs 1, 0xc(1)
    .4byte 0xC002C948 # lfs f0, lbl_8053F8E8@sda21(r0)
    .4byte 0xC3C2C944 # lfs f30, lbl_8053F8E4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_80208124:
    mr 26, 30
    li 29, 0x0
    lis 31, 0x464f
L_80208130:
    lwz 0, 0x340(30)
    lwz 28, 0x198(30)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80208148
    addi 27, 30, 0xc
    .4byte 0x48000008 # b .L_8020814C
L_80208148:
    addi 27, 1, 0x8
L_8020814C:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(30)
    mr 6, 27
    mr 7, 28
    addi 4, 31, 0x534c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2b0(26)
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(26)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_802081A4
    sth 29, 0x94(3)
    lwz 0, 0x340(30)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_802081A4
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0x24(3), 0, 0
    stfs 0, 0x2c(3)
L_802081A4:
    lfs 1, 0x8(1)
    addi 29, 29, 0x1
    lfs 0, 0xc(1)
    cmpwi 29, 0x4
    fadds 1, 1, 31
    addi 26, 26, 0x24
    fadds 0, 0, 30
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x4180FF68 # blt .L_80208130
    mr 3, 30
    li 4, 0x1
    bl fn_80208244
    .4byte 0x48000048 # b .L_80208220
L_802081DC:
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800038 # blt .L_80208220
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x40820020 # bne .L_80208214
    lbz 0, 0x34a(30)
    cmplwi 0, 0x5
    .4byte 0x41800014 # blt .L_80208214
    mr 3, 30
    li 4, 0x4
    bl fn_80208244
    .4byte 0x48000010 # b .L_80208220
L_80208214:
    mr 3, 30
    li 4, 0x3
    bl fn_80208244
L_80208220:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 26, 0x28(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80208244:
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
    cmpwi 31, 0x3
    .4byte 0x41820040 # beq .L_802082B0
    .4byte 0x40800014 # bge .L_80208288
    cmpwi 31, 0x1
    .4byte 0x41820274 # beq .L_802084F0
    .4byte 0x4080001C # bge .L_8020829C
    .4byte 0x4800026C # b .L_802084F0
L_80208288:
    cmpwi 31, 0x8
    .4byte 0x40800264 # bge .L_802084F0
    cmpwi 31, 0x5
    .4byte 0x4080025C # bge .L_802084F0
    .4byte 0x480001D4 # b .L_8020846C
L_8020829C:
    li 3, 0x79
    bl fn_801CD664
    addi 0, 3, 0x3c
    stw 0, 0x250(30)
    .4byte 0x48000244 # b .L_802084F0
L_802082B0:
    .4byte 0xC3E2C940 # lfs f31, lbl_8053F8E0@sda21(r0)
    li 28, 0x0
    mr 29, 28
    mr 27, 30
    fmr 30, 31
L_802082C4:
    lbz 0, 0x2b4(27)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_80208310
    lbz 0, 0x2d0(27)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80208310
    lwz 26, 0x2b0(27)
    cmpwi 26, 0x0
    .4byte 0x4180002C # blt .L_80208310
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80208310
    lfs 1, 0xc(3)
    addi 28, 28, 0x1
    lfs 0, 0x10(3)
    fadds 31, 31, 1
    fadds 30, 30, 0
L_80208310:
    addi 29, 29, 0x1
    addi 27, 27, 0x24
    cmpwi 29, 0x4
    .4byte 0x4180FFA8 # blt .L_802082C4
    cmpwi 28, 0x0
    .4byte 0x4081003C # ble .L_80208360
    xoris 3, 28, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    .4byte 0xC822C960 # lfd f1, lbl_8053F900@sda21(r0)
    stw 0, 0x28(1)
    .4byte 0xC042C958 # lfs f2, lbl_8053F8F8@sda21(r0)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fmuls 1, 31, 0
    fmuls 0, 30, 0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    .4byte 0x48000014 # b .L_80208370
L_80208360:
    lfs 0, 0xc(30)
    stfs 0, 0xc(1)
    lfs 0, 0x10(30)
    stfs 0, 0x10(1)
L_80208370:
    .4byte 0xC022C940 # lfs f1, lbl_8053F8E0@sda21(r0)
    mr 3, 30
    addi 4, 1, 0xc
    bl fn_801D05F8
    mr. 5, 3
    .4byte 0x40800014 # bge .L_80208398
    li 3, 0x4
    bl fn_801CD664
    mr 29, 3
    .4byte 0x48000064 # b .L_802083F8
L_80208398:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022C958 # lfs f1, lbl_8053F8F8@sda21(r0)
    lwz 3, 0xb4(4)
    li 6, 0x0
    .4byte 0xC002C95C # lfs f0, lbl_8053F8FC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802083E8
    li 6, 0x1
L_802083E8:
    mr 3, 30
    addi 4, 1, 0xc
    bl fn_801D0020
    mr 29, 3
L_802083F8:
    li 3, 0x3
    bl fn_801CD664
    addi 3, 3, 0x1
    lbz 0, 0x34a(30)
    clrlwi 3, 3, 24
    mr 27, 30
    add 0, 0, 3
    li 26, 0x0
    stb 0, 0x34a(30)
    mr 28, 3
L_80208420:
    lbz 0, 0x2b4(27)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80208458
    lbz 0, 0x2d0(27)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80208458
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(27)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80208458
    mr 4, 29
    mr 5, 28
    bl fn_80209D20
L_80208458:
    addi 26, 26, 0x1
    addi 27, 27, 0x24
    cmpwi 26, 0x4
    .4byte 0x4180FFBC # blt .L_80208420
    .4byte 0x48000088 # b .L_802084F0
L_8020846C:
    addi 4, 1, 0x1c
    addi 5, 1, 0x14
    bl fn_80208520
    li 26, 0x0
    mr 27, 30
L_80208480:
    lbz 0, 0x2b4(27)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_802084B4
    lbz 0, 0x2d0(27)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_802084B4
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(27)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_802084B4
    addi 4, 1, 0x1c
    bl fn_80209CF4
L_802084B4:
    lfs 3, 0x1c(1)
    addi 26, 26, 0x1
    lfs 2, 0x14(1)
    cmpwi 26, 0x4
    lfs 1, 0x20(1)
    addi 27, 27, 0x24
    lfs 0, 0x18(1)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    .4byte 0x4180FFA0 # blt .L_80208480
    lwz 0, 0x230(30)
    ori 0, 0, 0x2000
    stw 0, 0x230(30)
L_802084F0:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80208520:
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
    stmw 25, 0x24(1)
    mr 29, 3
    mr 30, 4
    lwz 0, 0x2ac(3)
    mr 31, 5
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8020857C
    .4byte 0xC022C940 # lfs f1, lbl_8053F8E0@sda21(r0)
    .4byte 0xC002C944 # lfs f0, lbl_8053F8E4@sda21(r0)
    stfs 1, 0x0(31)
    stfs 0, 0x4(31)
    .4byte 0x48000014 # b .L_8020858C
L_8020857C:
    .4byte 0xC022C944 # lfs f1, lbl_8053F8E4@sda21(r0)
    .4byte 0xC002C940 # lfs f0, lbl_8053F8E0@sda21(r0)
    stfs 1, 0x0(31)
    stfs 0, 0x4(31)
L_8020858C:
    .4byte 0xC3C2C940 # lfs f30, lbl_8053F8E0@sda21(r0)
    li 27, 0x0
    mr 28, 27
    mr 26, 29
    fmr 29, 30
L_802085A0:
    lbz 0, 0x2b4(26)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_802085EC
    lbz 0, 0x2d0(26)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_802085EC
    lwz 25, 0x2b0(26)
    cmpwi 25, 0x0
    .4byte 0x4180002C # blt .L_802085EC
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_802085EC
    lfs 1, 0xc(3)
    addi 27, 27, 0x1
    lfs 0, 0x10(3)
    fadds 30, 30, 1
    fadds 29, 29, 0
L_802085EC:
    addi 28, 28, 0x1
    addi 26, 26, 0x24
    cmpwi 28, 0x4
    .4byte 0x4180FFA8 # blt .L_802085A0
    cmpwi 27, 0x0
    .4byte 0x40810034 # ble .L_80208634
    xoris 3, 27, 0x8000
    lis 0, 0x4330
    stw 3, 0x1c(1)
    .4byte 0xC822C960 # lfd f1, lbl_8053F900@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC042C958 # lfs f2, lbl_8053F8F8@sda21(r0)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fmuls 31, 30, 0
    fmuls 30, 29, 0
    .4byte 0x4800000C # b .L_8020863C
L_80208634:
    lfs 31, 0xc(29)
    lfs 30, 0x10(29)
L_8020863C:
    .4byte 0xC3A2C940 # lfs f29, lbl_8053F8E0@sda21(r0)
    li 28, 0x0
    mr 27, 28
    mr 26, 29
    fmr 28, 29
L_80208650:
    lbz 0, 0x2b4(26)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8020869C
    lbz 0, 0x2d0(26)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_8020869C
    lwz 25, 0x2b0(26)
    cmpwi 25, 0x0
    .4byte 0x4180002C # blt .L_8020869C
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8020869C
    lfs 1, 0xc(3)
    addi 28, 28, 0x1
    lfs 0, 0x10(3)
    fadds 29, 29, 1
    fadds 28, 28, 0
L_8020869C:
    addi 27, 27, 0x1
    addi 26, 26, 0x24
    cmpwi 27, 0x4
    .4byte 0x4180FFA8 # blt .L_80208650
    cmpwi 28, 0x0
    .4byte 0x4081003C # ble .L_802086EC
    xoris 3, 28, 0x8000
    lis 0, 0x4330
    stw 3, 0x1c(1)
    .4byte 0xC822C960 # lfd f1, lbl_8053F900@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC042C958 # lfs f2, lbl_8053F8F8@sda21(r0)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fmuls 1, 29, 0
    fmuls 0, 28, 0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    .4byte 0x48000014 # b .L_802086FC
L_802086EC:
    lfs 0, 0xc(29)
    stfs 0, 0xc(1)
    lfs 0, 0x10(29)
    stfs 0, 0x10(1)
L_802086FC:
    .4byte 0xC022C940 # lfs f1, lbl_8053F8E0@sda21(r0)
    mr 3, 29
    addi 4, 1, 0xc
    bl fn_801D05F8
    mr. 5, 3
    .4byte 0x40800010 # bge .L_80208720
    li 3, 0x4
    bl fn_801CD664
    .4byte 0x48000060 # b .L_8020877C
L_80208720:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022C958 # lfs f1, lbl_8053F8F8@sda21(r0)
    lwz 3, 0xb4(4)
    li 6, 0x0
    .4byte 0xC002C95C # lfs f0, lbl_8053F8FC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80208770
    li 6, 0x1
L_80208770:
    mr 3, 29
    addi 4, 1, 0xc
    bl fn_801D0020
L_8020877C:
    bl fn_801CD354
    .4byte 0xC022C940 # lfs f1, lbl_8053F8E0@sda21(r0)
    cmpwi 3, 0x2
    fmr 2, 1
    .4byte 0x4182003C # beq .L_802087C8
    .4byte 0x40800014 # bge .L_802087A4
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_802087B0
    .4byte 0x40800020 # bge .L_802087BC
    .4byte 0x4800003C # b .L_802087DC
L_802087A4:
    cmpwi 3, 0x4
    .4byte 0x40800034 # bge .L_802087DC
    .4byte 0x48000028 # b .L_802087D4
L_802087B0:
    .4byte 0xC002C968 # lfs f0, lbl_8053F908@sda21(r0)
    fadds 1, 1, 0
    .4byte 0x48000024 # b .L_802087DC
L_802087BC:
    .4byte 0xC002C968 # lfs f0, lbl_8053F908@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0x48000018 # b .L_802087DC
L_802087C8:
    .4byte 0xC002C968 # lfs f0, lbl_8053F908@sda21(r0)
    fadds 2, 1, 0
    .4byte 0x4800000C # b .L_802087DC
L_802087D4:
    .4byte 0xC002C968 # lfs f0, lbl_8053F908@sda21(r0)
    fsubs 2, 1, 0
L_802087DC:
    fadds 0, 31, 1
    .4byte 0xC082C96C # lfs f4, lbl_8053F90C@sda21(r0)
    lfs 1, 0x0(31)
    fadds 2, 30, 2
    lfs 3, 0x4(31)
    fnmsubs 0, 4, 1, 0
    fnmsubs 1, 4, 3, 2
    stfs 0, 0x0(30)
    stfs 1, 0x4(30)
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80208834:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_80208860
    li 4, 0x7
    bl fn_80208244
L_80208860:
    li 30, 0x0
L_80208864:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8020888C
    lwz 4, 0x2b8(31)
    addi 6, 31, 0x2c0
    lwz 5, 0x2bc(31)
    lwz 7, 0x2cc(31)
    bl fn_80209CA4
L_8020888C:
    addi 30, 30, 0x1
    addi 31, 31, 0x24
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_80208864
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802088B4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_802088E0
    li 4, 0x5
    bl fn_80208244
L_802088E0:
    li 30, 0x0
L_802088E4:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802088FC
    bl fn_80209D44
L_802088FC:
    addi 30, 30, 0x1
    addi 31, 31, 0x24
    cmpwi 30, 0x4
    .4byte 0x4180FFDC # blt .L_802088E4
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80208924:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x4(3)
    addi 3, 31, 0xc
    bl fn_8022461C
    sth 3, 0x346(31)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_80226850
    sth 3, 0x348(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020896C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stmw 26, 0x18(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 30
    stw 0, 0x2ac(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x2
    .4byte 0x4080000C # bge .L_802089B4
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_802089C0
L_802089B4:
    li 3, 0x2
    bl fn_801CD664
    stw 3, 0x2ac(31)
L_802089C0:
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 26
    cmpwi 0, 0x3
    .4byte 0x4081000C # ble .L_802089D8
    li 0, 0x3
    .4byte 0x48000010 # b .L_802089E4
L_802089D8:
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802089E4
    li 0, 0x0
L_802089E4:
    stw 0, 0x340(31)
    li 5, 0x0
    .4byte 0xC042C958 # lfs f2, lbl_8053F8F8@sda21(r0)
    li 4, 0x2
    lwz 3, 0x90(31)
    li 0, 0x3e8
    .4byte 0xC022C970 # lfs f1, lbl_8053F910@sda21(r0)
    extrwi 3, 3, 8, 16
    stb 3, 0x344(31)
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
    stw 5, 0xb0(31)
    stw 4, 0x98(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x380
    stw 3, 0x230(31)
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    stw 0, 0x244(31)
    lwz 0, 0x340(31)
    cmpwi 0, 0x0
    .4byte 0x4082012C # bne .L_80208B9C
    stw 4, 0x248(31)
    li 3, 0x79
    bl fn_801CD664
    addi 0, 3, 0x3c
    mr 3, 31
    stw 0, 0x250(31)
    bl fn_801F3604
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    .4byte 0xC3E2C940 # lfs f31, lbl_8053F8E0@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    fmr 30, 31
    stfs 0, 0x10(1)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_80208ADC
    .4byte 0x4080003C # bge .L_80208AF0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80208AC4
    .4byte 0x48000030 # b .L_80208AF0
L_80208AC4:
    lfs 1, 0x8(1)
    .4byte 0xC002C948 # lfs f0, lbl_8053F8E8@sda21(r0)
    .4byte 0xC3E2C944 # lfs f31, lbl_8053F8E4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000018 # b .L_80208AF0
L_80208ADC:
    lfs 1, 0xc(1)
    .4byte 0xC002C948 # lfs f0, lbl_8053F8E8@sda21(r0)
    .4byte 0xC3C2C944 # lfs f30, lbl_8053F8E4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_80208AF0:
    mr 26, 31
    li 29, 0x0
    lis 30, 0x464f
L_80208AFC:
    lwz 0, 0x340(31)
    lwz 28, 0x198(31)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_80208B14
    addi 27, 31, 0xc
    .4byte 0x48000008 # b .L_80208B18
L_80208B14:
    addi 27, 1, 0x8
L_80208B18:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 6, 27
    mr 7, 28
    addi 4, 30, 0x534c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2b0(26)
    bl SpatialRegistry_GetBase
    lwz 4, 0x2b0(26)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80208B70
    sth 29, 0x94(3)
    lwz 0, 0x340(31)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_80208B70
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0x24(3), 0, 0
    stfs 0, 0x2c(3)
L_80208B70:
    lfs 1, 0x8(1)
    addi 29, 29, 0x1
    lfs 0, 0xc(1)
    cmpwi 29, 0x4
    fadds 1, 1, 31
    addi 26, 26, 0x24
    fadds 0, 0, 30
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x4180FF68 # blt .L_80208AFC
    .4byte 0x48000010 # b .L_80208BA8
L_80208B9C:
    stw 5, 0x248(31)
    li 0, -0x1
    stw 0, 0x250(31)
L_80208BA8:
    li 0, 0x0
    .4byte 0xC002C940 # lfs f0, lbl_8053F8E0@sda21(r0)
    stw 0, 0x24c(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lmw 26, 0x18(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80207B60
