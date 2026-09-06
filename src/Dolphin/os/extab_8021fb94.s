.section extab, "a"
.balign 4
.global etb_8000A514
etb_8000A514:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A514, 8

.global etb_8000A51C
etb_8000A51C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A51C, 8

.global etb_8000A524
etb_8000A524:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A524, 8

.global etb_8000A52C
etb_8000A52C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A52C, 8

.global etb_8000A534
etb_8000A534:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A534, 8

.global etb_8000A53C
etb_8000A53C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A53C, 8

.global etb_8000A544
etb_8000A544:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A544, 8

.section extabindex, "a"
.balign 4
.global eti_800182C8
eti_800182C8:
    .4byte fn_8021FB94
    .4byte 0x00000224
    .4byte etb_8000A514
.size eti_800182C8, 12

.global eti_800182D4
eti_800182D4:
    .4byte fn_8021FDB8
    .4byte 0x000001FC
    .4byte etb_8000A51C
.size eti_800182D4, 12

.global eti_800182E0
eti_800182E0:
    .4byte fn_8021FFB4
    .4byte 0x00000224
    .4byte etb_8000A524
.size eti_800182E0, 12

.global eti_800182EC
eti_800182EC:
    .4byte fn_802201D8
    .4byte 0x00000058
    .4byte etb_8000A52C
.size eti_800182EC, 12

.global eti_800182F8
eti_800182F8:
    .4byte fn_80220230
    .4byte 0x00000044
    .4byte etb_8000A534
.size eti_800182F8, 12

.global eti_80018304
eti_80018304:
    .4byte fn_80220274
    .4byte 0x00000058
    .4byte etb_8000A53C
.size eti_80018304, 12

.global eti_80018310
eti_80018310:
    .4byte fn_802202CC
    .4byte 0x000000AC
    .4byte etb_8000A544
.size eti_80018310, 12

.text
.balign 4
.global fn_8021FB94
.global fn_8021FDB8
.global fn_8021FFB4
.global fn_802201D8
.global fn_80220230
.global fn_80220274
.global fn_802202CC

fn_8021FB94:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CE760@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CE760@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FBE4
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
L_8021FBE4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FC1C
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
L_8021FC1C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FC54
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
L_8021FC54:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FC8C
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
L_8021FC8C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FCC4
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
L_8021FCC4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FCFC
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
L_8021FCFC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FD34
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
L_8021FD34:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FD6C
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
L_8021FD6C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021FDA4
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
L_8021FDA4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021FDB8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0x2bc(3)
    stw 30, 0x18(1)
    mr 30, 3
    cmpwi 31, 0x0
    .4byte 0x418001C4 # blt .L_8021FF9C
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x418201B0 # beq .L_8021FF9C
    lwz 0, 0x280(30)
    .4byte 0xC022CE58 # lfs f1, lbl_8053FDF8@sda21(r0)
    cmplwi 0, 0x6
    .4byte 0x41810028 # bgt .L_8021FE24
    lis 3, jumptable_804A6808@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A6808@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022CE5C # lfs f1, lbl_8053FDFC@sda21(r0)
    .4byte 0x48000008 # b .L_8021FE24
    .4byte 0xC022CE60 # lfs f1, lbl_8053FE00@sda21(r0)
L_8021FE24:
    lfs 0, 0x14(30)
    lwz 0, 0x90(31)
    fadds 2, 0, 1
    lfs 1, 0x10(30)
    clrlwi 0, 0, 24
    lfs 0, 0xc(30)
    cmpwi 0, 0x4
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    stfs 2, 0x10(1)
    .4byte 0x40800018 # bge .L_8021FE64
    cmpwi 0, 0x2
    .4byte 0x4080007C # bge .L_8021FED0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021FE70
    .4byte 0x4800012C # b .L_8021FF8C
L_8021FE64:
    cmpwi 0, 0x8
    .4byte 0x40800124 # bge .L_8021FF8C
    .4byte 0x480000C4 # b .L_8021FF30
L_8021FE70:
    .4byte 0xC002CE64 # lfs f0, lbl_8053FE04@sda21(r0)
    mr 3, 30
    fsubs 0, 2, 0
    stfs 0, 0x10(1)
    bl fn_801E1D9C
    clrlwi. 0, 3, 24
    .4byte 0x40820104 # bne .L_8021FF8C
    lwz 0, 0x98(30)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8021FEBC
    .4byte 0x408000F4 # bge .L_8021FF8C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8021FEA8
    .4byte 0x480000E8 # b .L_8021FF8C
L_8021FEA8:
    lfs 1, 0x8(1)
    .4byte 0xC002CE64 # lfs f0, lbl_8053FE04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x480000D4 # b .L_8021FF8C
L_8021FEBC:
    lfs 1, 0x8(1)
    .4byte 0xC002CE64 # lfs f0, lbl_8053FE04@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x480000C0 # b .L_8021FF8C
L_8021FED0:
    .4byte 0xC002CE68 # lfs f0, lbl_8053FE08@sda21(r0)
    mr 3, 30
    fsubs 0, 2, 0
    stfs 0, 0x10(1)
    bl fn_801E1D9C
    clrlwi. 0, 3, 24
    .4byte 0x408200A4 # bne .L_8021FF8C
    lwz 0, 0x98(30)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8021FF1C
    .4byte 0x40800094 # bge .L_8021FF8C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8021FF08
    .4byte 0x48000088 # b .L_8021FF8C
L_8021FF08:
    lfs 1, 0x8(1)
    .4byte 0xC002CE64 # lfs f0, lbl_8053FE04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000074 # b .L_8021FF8C
L_8021FF1C:
    lfs 1, 0x8(1)
    .4byte 0xC002CE64 # lfs f0, lbl_8053FE04@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000060 # b .L_8021FF8C
L_8021FF30:
    .4byte 0xC002CE6C # lfs f0, lbl_8053FE0C@sda21(r0)
    mr 3, 30
    fsubs 0, 2, 0
    stfs 0, 0x10(1)
    bl fn_801E1D9C
    clrlwi. 0, 3, 24
    .4byte 0x40820044 # bne .L_8021FF8C
    lwz 0, 0x98(30)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8021FF7C
    .4byte 0x40800034 # bge .L_8021FF8C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8021FF68
    .4byte 0x48000028 # b .L_8021FF8C
L_8021FF68:
    lfs 1, 0x8(1)
    .4byte 0xC002CE64 # lfs f0, lbl_8053FE04@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000014 # b .L_8021FF8C
L_8021FF7C:
    lfs 1, 0x8(1)
    .4byte 0xC002CE64 # lfs f0, lbl_8053FE04@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
L_8021FF8C:
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
L_8021FF9C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021FFB4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CE860@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CE860@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80220004
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
L_80220004:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022003C
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
L_8022003C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80220074
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
L_80220074:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802200AC
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
L_802200AC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802200E4
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
L_802200E4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022011C
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
L_8022011C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80220154
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
L_80220154:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8022018C
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
L_8022018C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802201C4
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
L_802201C4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802201D8:
    stwu 1, -0x10(1)
    mflr 0
    li 7, 0x0
    addi 5, 3, 0xc
    stw 0, 0x14(1)
    li 0, 0x80
    .4byte 0xC022CE70 # lfs f1, lbl_8053FE10@sda21(r0)
    addi 6, 1, 0x8
    stb 7, 0xc(1)
    lwz 4, 0x4(3)
    stb 7, 0xd(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80220230:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D2E70
    lwz 3, 0x2ac(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80220274:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D2FEC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CE74 # lfs f1, lbl_8053FE14@sda21(r0)
    li 5, 0x290
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2ac(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802202CC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820074 # beq .L_8022035C
    lis 3, lbl_804A6828@ha
    addi 0, 3, lbl_804A6828@l
    stw 0, 0x0(30)
    lwz 3, 0x2ac(30)
    bl fn_801EE434
    cmplwi 30, 0x0
    .4byte 0x41820048 # beq .L_8022034C
    lis 3, lbl_804A48B0@ha
    addi 0, 3, lbl_804A48B0@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_8022034C
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_80220340
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_80220340
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_80220340:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_8022034C:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8022035C
    mr 3, 30
    bl dtor_80084580
L_8022035C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8021FB94
    .4byte fn_8021FFB4
