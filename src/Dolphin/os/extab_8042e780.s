# fn_8042E780: trivial accessor (lwz this->0x8; blr), unclear class.
# fn_8042E788: standard 9-guard/9-target __sinit static-object registration thunk.
# fn_8042E964..fn_8042EAE4: the 9 guarded ctors, each a trivial wrapper calling
# shared no-arg base ctor fn_80028974(this) - identical shape, 9 lbl_804B21xx
# .bss targets (not vtables - past .data's end at 0x804B2140).
.section extab, "a"
.balign 4
.global etb_80010B4C
etb_80010B4C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B4C, 8

.global etb_80010B54
etb_80010B54:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B54, 8

.global etb_80010B5C
etb_80010B5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B5C, 8

.global etb_80010B64
etb_80010B64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B64, 8

.global etb_80010B6C
etb_80010B6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B6C, 8

.global etb_80010B74
etb_80010B74:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B74, 8

.global etb_80010B7C
etb_80010B7C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B7C, 8

.global etb_80010B84
etb_80010B84:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B84, 8

.global etb_80010B8C
etb_80010B8C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B8C, 8

.global etb_80010B94
etb_80010B94:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010B94, 8

.section extabindex, "a"
.balign 4
.global eti_80020B48
eti_80020B48:
    .4byte fn_8042E788
    .4byte 0x000001DC
    .4byte etb_80010B4C
.size eti_80020B48, 12

.global eti_80020B54
eti_80020B54:
    .4byte fn_8042E964
    .4byte 0x00000030
    .4byte etb_80010B54
.size eti_80020B54, 12

.global eti_80020B60
eti_80020B60:
    .4byte fn_8042E994
    .4byte 0x00000030
    .4byte etb_80010B5C
.size eti_80020B60, 12

.global eti_80020B6C
eti_80020B6C:
    .4byte fn_8042E9C4
    .4byte 0x00000030
    .4byte etb_80010B64
.size eti_80020B6C, 12

.global eti_80020B78
eti_80020B78:
    .4byte fn_8042E9F4
    .4byte 0x00000030
    .4byte etb_80010B6C
.size eti_80020B78, 12

.global eti_80020B84
eti_80020B84:
    .4byte fn_8042EA24
    .4byte 0x00000030
    .4byte etb_80010B74
.size eti_80020B84, 12

.global eti_80020B90
eti_80020B90:
    .4byte fn_8042EA54
    .4byte 0x00000030
    .4byte etb_80010B7C
.size eti_80020B90, 12

.global eti_80020B9C
eti_80020B9C:
    .4byte fn_8042EA84
    .4byte 0x00000030
    .4byte etb_80010B84
.size eti_80020B9C, 12

.global eti_80020BA8
eti_80020BA8:
    .4byte fn_8042EAB4
    .4byte 0x00000030
    .4byte etb_80010B8C
.size eti_80020BA8, 12

.global eti_80020BB4
eti_80020BB4:
    .4byte fn_8042EAE4
    .4byte 0x00000030
    .4byte etb_80010B94
.size eti_80020BB4, 12

.text
.balign 4
.global fn_8042E780
.global fn_8042E788
.global fn_8042E964
.global fn_8042E994
.global fn_8042E9C4
.global fn_8042E9F4
.global fn_8042EA24
.global fn_8042EA54
.global fn_8042EA84
.global fn_8042EAB4
.global fn_8042EAE4

fn_8042E780:
    lwz 3, 0x8(3)
    blr

fn_8042E788:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8052A540@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_8052A540@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E7D0
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_8042EAE4
    lis 4, fn_80021D0C@ha
    addi 5, 31, 0x199c
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8042E7D0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E800
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_8042EAB4
    lis 4, fn_80021CB8@ha
    addi 5, 31, 0x19a8
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8042E800:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E830
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_8042EA84
    lis 4, fn_80021C64@ha
    addi 5, 31, 0x19b4
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8042E830:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E860
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_8042EA54
    lis 4, fn_80021C10@ha
    addi 5, 31, 0x19c0
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8042E860:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E890
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_8042EA24
    lis 4, fn_80021BBC@ha
    addi 5, 31, 0x19cc
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8042E890:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E8C0
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_8042E9F4
    lis 4, fn_80021B68@ha
    addi 5, 31, 0x19d8
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8042E8C0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E8F0
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_8042E9C4
    lis 4, fn_80021B14@ha
    addi 5, 31, 0x19e4
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8042E8F0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E920
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_8042E994
    lis 4, fn_80021AC0@ha
    addi 5, 31, 0x19f0
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8042E920:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_8042E950
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_8042E964
    lis 4, fn_80021A6C@ha
    addi 5, 31, 0x19fc
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8042E950:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E964:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E994:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E9C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042E9F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EA24:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EA54:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EA84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EAB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8042EAE4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80028974
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8042E788

