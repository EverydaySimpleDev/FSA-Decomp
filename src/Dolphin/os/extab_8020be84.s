.section extab, "a"
.balign 4
.global etb_80009E90
etb_80009E90:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009E90, 8

.global etb_80009E98
etb_80009E98:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009E98, 8

.global etb_80009EA0
etb_80009EA0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80009EA0, 8

.global etb_80009EA8
etb_80009EA8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80009EA8, 8

.global etb_80009EB0
etb_80009EB0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009EB0, 8

.global etb_80009EB8
etb_80009EB8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80009EB8, 8

.global etb_80009EC0
etb_80009EC0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009EC0, 8

.global etb_80009EC8
etb_80009EC8:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80009EC8, 8

.global etb_80009ED0
etb_80009ED0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009ED0, 8

.section extabindex, "a"
.balign 4
.global eti_80017920
eti_80017920:
    .4byte fn_8020BE84
    .4byte 0x00000224
    .4byte etb_80009E90
.size eti_80017920, 12

.global eti_8001792C
eti_8001792C:
    .4byte fn_8020C0A8
    .4byte 0x00000090
    .4byte etb_80009E98
.size eti_8001792C, 12

.global eti_80017938
eti_80017938:
    .4byte fn_8020C138
    .4byte 0x00000134
    .4byte etb_80009EA0
.size eti_80017938, 12

.global eti_80017944
eti_80017944:
    .4byte fn_8020C26C
    .4byte 0x000000A0
    .4byte etb_80009EA8
.size eti_80017944, 12

.global eti_80017950
eti_80017950:
    .4byte fn_8020C30C
    .4byte 0x00000068
    .4byte etb_80009EB0
.size eti_80017950, 12

.global eti_8001795C
eti_8001795C:
    .4byte fn_8020C374
    .4byte 0x0000005C
    .4byte etb_80009EB8
.size eti_8001795C, 12

.global eti_80017968
eti_80017968:
    .4byte fn_8020C3D0
    .4byte 0x00000318
    .4byte etb_80009EC0
.size eti_80017968, 12

.global eti_80017974
eti_80017974:
    .4byte fn_8020C6E8
    .4byte 0x00000190
    .4byte etb_80009EC8
.size eti_80017974, 12

.global eti_80017980
eti_80017980:
    .4byte fn_8020C878
    .4byte 0x000001BC
    .4byte etb_80009ED0
.size eti_80017980, 12

.text
.balign 4
.global fn_8020BE84
.global fn_8020C0A8
.global fn_8020C138
.global fn_8020C26C
.global fn_8020C30C
.global fn_8020C374
.global fn_8020C3D0
.global fn_8020C6E8
.global fn_8020C878

fn_8020BE84:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CB5B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CB5B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020BED4
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
L_8020BED4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020BF0C
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
L_8020BF0C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020BF44
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
L_8020BF44:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020BF7C
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
L_8020BF7C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020BFB4
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
L_8020BFB4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020BFEC
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
L_8020BFEC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020C024
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
L_8020C024:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020C05C
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
L_8020C05C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020C094
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
L_8020C094:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020C0A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_8020C11C
    lis 3, lbl_804A5F40@ha
    addi 0, 3, lbl_804A5F40@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_8020C10C
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8020C100
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_8020C100
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_8020C100:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_8020C10C:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8020C11C
    mr 3, 30
    bl dtor_80084580
L_8020C11C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020C138:
    stwu 1, -0x50(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_8020C1BC
L_8020C15C:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_8020C1BC:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8020C15C
    li 10, 0x0
    li 9, 0x1
    li 11, -0x1
    li 8, 0x3
    li 5, 0x2
    li 0, 0x4
    .4byte 0xC022CA48 # lfs f1, lbl_8053F9E8@sda21(r0)
    lis 4, lbl_8046A3AC@ha
    stw 11, 0x18(1)
    addi 4, 4, lbl_8046A3AC@l
    fmr 2, 1
    addi 6, 1, 0x8
    stw 10, 0x1c(1)
    li 7, 0x0
    stw 10, 0x20(1)
    stb 10, 0x24(1)
    stb 10, 0x25(1)
    stb 10, 0x26(1)
    stb 9, 0x27(1)
    stb 9, 0x28(1)
    stb 10, 0x29(1)
    stb 10, 0x2a(1)
    stb 10, 0x2b(1)
    stb 10, 0x2c(1)
    stb 10, 0x2d(1)
    stb 9, 0x2e(1)
    stw 8, 0x30(1)
    stb 9, 0x34(1)
    stb 10, 0x35(1)
    stb 10, 0x36(1)
    stw 11, 0x38(1)
    stw 10, 0x3c(1)
    stw 5, 0x40(1)
    stb 0, 0xa(1)
    lwz 5, 0x280(3)
    addi 5, 5, 0x2c9
    bl fn_801F06F0
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8020C26C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 30, 3
    mr 27, 4
    mr 28, 5
    li 29, 0x0
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x41820008 # beq .L_8020C29C
    .4byte 0x3BA2CA40 # li r29, lbl_8053F9E0@sda21
L_8020C29C:
    mr 3, 28
    mr 4, 27
    li 31, 0x1
    li 5, 0x0
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_8020C2F4
    lwz 30, 0x198(30)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 27
    lbz 0, 0x1(3)
    mr 5, 28
    mr 6, 30
    mr 7, 29
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8020C2F4
    li 31, 0x0
L_8020C2F4:
    mr 3, 31
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020C30C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x4082000C # bne .L_8020C338
    bl fn_801CE32C
    .4byte 0x48000028 # b .L_8020C35C
L_8020C338:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8020C35C
    mr 3, 30
    bl fn_801CE5D4
L_8020C35C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020C374:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8052EBC0@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_8052EBC0@l
    lha 0, 0x2ae(3)
    lfs 0, 0x254(3)
    rlwinm 0, 0, 30, 18, 28
    lfsx 2, 4, 0
    add 4, 4, 0
    lfs 1, 0x4(4)
    fmuls 2, 2, 0
    fmuls 0, 1, 0
    stfs 2, 0x3c(3)
    stfs 0, 0x40(3)
    lwz 12, 0x0(3)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020C3D0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 4
    bl fn_8020C6E8
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x418200A8 # beq .L_8020C4A0
    .4byte 0x40800010 # bge .L_8020C40C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8020C418
    .4byte 0x48000288 # b .L_8020C690
L_8020C40C:
    cmpwi 0, 0x3
    .4byte 0x40800280 # bge .L_8020C690
    .4byte 0x48000208 # b .L_8020C61C
L_8020C418:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x4180026C # blt .L_8020C690
    li 3, 0x29
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002CA4C # lfs f0, lbl_8053F9EC@sda21(r0)
    stw 0, 0x250(31)
    li 4, -0x1
    li 0, 0x0
    mr 3, 31
    stfs 0, 0x258(31)
    stw 4, 0x2a8(31)
    stb 0, 0x2ac(31)
    bl fn_801CF144
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8020C474
    mr 3, 31
    li 4, 0x3
    bl fn_801CF720
    stw 3, 0x98(31)
    .4byte 0x48000010 # b .L_8020C480
L_8020C474:
    mr 3, 31
    bl fn_801CF6B8
    stw 3, 0x98(31)
L_8020C480:
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x2ae(31)
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480001F4 # b .L_8020C690
L_8020C4A0:
    clrlwi. 0, 30, 24
    .4byte 0x41820068 # beq .L_8020C50C
    mr 3, 31
    bl fn_801CF144
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_8020C4EC
    lwz 5, 0x98(31)
    cmpwi 5, 0x3
    .4byte 0x40820018 # bne .L_8020C4D8
    mr 3, 31
    li 4, 0x3
    bl fn_801CF720
    stw 3, 0x98(31)
    .4byte 0x48000028 # b .L_8020C4FC
L_8020C4D8:
    mr 3, 31
    li 4, 0x3
    bl fn_801CF798
    stw 3, 0x98(31)
    .4byte 0x48000014 # b .L_8020C4FC
L_8020C4EC:
    lwz 4, 0x98(31)
    mr 3, 31
    bl fn_801CF720
    stw 3, 0x98(31)
L_8020C4FC:
    lwz 3, 0x250(31)
    addi 0, 3, 0xa
    stw 0, 0x250(31)
    .4byte 0x48000104 # b .L_8020C60C
L_8020C50C:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418000F4 # blt .L_8020C60C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022CA48 # lfs f1, lbl_8053F9E8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002CA50 # lfs f0, lbl_8053F9F0@sda21(r0)
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
    .4byte 0x40800038 # bge .L_8020C598
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x28
    .4byte 0xC002CA54 # lfs f0, lbl_8053F9F4@sda21(r0)
    stw 0, 0x250(31)
    li 3, -0x1
    li 0, 0x0
    stfs 0, 0x258(31)
    stw 3, 0x2a8(31)
    stb 0, 0x2ac(31)
    stw 0, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000078 # b .L_8020C60C
L_8020C598:
    li 3, 0x29
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002CA4C # lfs f0, lbl_8053F9EC@sda21(r0)
    stw 0, 0x250(31)
    li 4, -0x1
    li 0, 0x0
    mr 3, 31
    stfs 0, 0x258(31)
    stw 4, 0x2a8(31)
    stb 0, 0x2ac(31)
    bl fn_801CF144
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8020C5E4
    mr 3, 31
    li 4, 0x3
    bl fn_801CF720
    stw 3, 0x98(31)
    .4byte 0x48000010 # b .L_8020C5F0
L_8020C5E4:
    mr 3, 31
    bl fn_801CF6B8
    stw 3, 0x98(31)
L_8020C5F0:
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x2ae(31)
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
L_8020C60C:
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x2ae(31)
    .4byte 0x48000078 # b .L_8020C690
L_8020C61C:
    lwz 4, 0x2a8(31)
    mr 3, 31
    bl fn_801D0280
    addi 0, 3, -0x8000
    sth 0, 0x2ae(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820048 # beq .L_8020C690
    mr 3, 31
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8020C670
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8020C690
L_8020C670:
    lha 0, 0x2ae(31)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_8020C688
    li 0, 0x4000
    sth 0, 0x2ae(31)
    .4byte 0x4800000C # b .L_8020C690
L_8020C688:
    li 0, -0x4000
    sth 0, 0x2ae(31)
L_8020C690:
    mr 3, 31
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8020C6D0
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_8020C6D0
    addi 3, 31, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8020C6D0
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x4f
    li 5, 0x0
    bl fn_801F0E34
L_8020C6D0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020C6E8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 0, 0x230(3)
    mr 31, 3
    li 29, -0x1
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820080 # beq .L_8020C79C
    lis 3, lbl_80539D40@ha
    li 30, 0x0
    lfs 31, lbl_80539D40@l(3)
L_8020C72C:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_8020C790
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8020C790
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_8020C790
    lwz 28, 0x4(31)
    mr 3, 30
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820024 # bne .L_8020C790
    mr 3, 31
    mr 4, 30
    addi 5, 31, 0xc
    bl fn_801D0DA0
    fcmpo cr0, 1, 31
    .4byte 0x4080000C # bge .L_8020C790
    fmr 31, 1
    mr 29, 30
L_8020C790:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF94 # blt .L_8020C72C
L_8020C79C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x40820074 # bne .L_8020C818
    cmpwi 29, 0x0
    .4byte 0x40800038 # bge .L_8020C7E4
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x28
    .4byte 0xC002CA54 # lfs f0, lbl_8053F9F4@sda21(r0)
    stw 0, 0x250(31)
    li 3, -0x1
    li 0, 0x0
    stfs 0, 0x258(31)
    stw 3, 0x2a8(31)
    stb 0, 0x2ac(31)
    stw 0, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000070 # b .L_8020C850
L_8020C7E4:
    lbz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x40820020 # bne .L_8020C80C
    lwz 0, 0x2a8(31)
    cmpw 0, 29
    .4byte 0x41820058 # beq .L_8020C850
    stw 29, 0x2a8(31)
    li 0, 0x5a
    stb 0, 0x2ac(31)
    .4byte 0x48000048 # b .L_8020C850
L_8020C80C:
    subi 0, 3, 0x1
    stb 0, 0x2ac(31)
    .4byte 0x4800003C # b .L_8020C850
L_8020C818:
    cmpwi 29, 0x0
    .4byte 0x4180002C # blt .L_8020C848
    stw 29, 0x2a8(31)
    li 0, 0x5a
    .4byte 0xC002CA58 # lfs f0, lbl_8053F9F8@sda21(r0)
    li 3, 0x0
    stb 0, 0x2ac(31)
    li 0, 0x2
    stfs 0, 0x258(31)
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x4800000C # b .L_8020C850
L_8020C848:
    li 0, 0x0
    stb 0, 0x2ac(31)
L_8020C850:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8020C878:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_8020C8AC
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_8020C8AC:
    lis 3, 0x3
    addi 0, 3, 0x1101
    stw 0, 0xb0(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_8020C8E4
    mr 3, 31
    bl fn_801CF144
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8020C8E4
    mr 3, 31
    li 4, 0x3
    bl fn_801CF720
    stw 3, 0x98(31)
L_8020C8E4:
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x2ae(31)
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x194(31)
    li 3, 0x3d
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x28
    .4byte 0xC002CA54 # lfs f0, lbl_8053F9F4@sda21(r0)
    stw 0, 0x250(31)
    addi 3, 31, 0x270
    .4byte 0x388D85B8 # li r4, lbl_8053A178@sda21
    li 5, 0x1
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x418200C8 # beq .L_8020CA1C
    mr 3, 31
    addi 5, 31, 0xc
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8020C988
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000098 # b .L_8020CA1C
L_8020C988:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8020C9A0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8020C9A4
L_8020C9A0:
    addi 3, 3, 0xdc
L_8020C9A4:
    lfs 4, 0xc(31)
    li 0, 0x0
    lfs 0, 0x80(31)
    lfs 2, 0x88(31)
    fadds 1, 0, 4
    lfs 0, 0x0(3)
    lfs 3, 0x8c(31)
    fadds 4, 2, 4
    lfs 5, 0x10(31)
    lfs 2, 0x84(31)
    fcmpo cr0, 1, 0
    fadds 3, 3, 5
    fadds 1, 2, 5
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_8020CA0C
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8020CA0C
    lfs 0, 0x8(3)
    fcmpo cr0, 4, 0
    .4byte 0x40800014 # bge .L_8020CA0C
    lfs 0, 0xc(3)
    fcmpo cr0, 3, 0
    .4byte 0x40800008 # bge .L_8020CA0C
    li 0, 0x1
L_8020CA0C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8020CA1C
    mr 3, 31
    bl fn_801F3668
L_8020CA1C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8020BE84
