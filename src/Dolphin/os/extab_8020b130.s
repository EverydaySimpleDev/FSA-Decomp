.section extab, "a"
.balign 4
.global etb_80009E28
etb_80009E28:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009E28, 8

.global etb_80009E30
etb_80009E30:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80009E30, 8

.global etb_80009E38
etb_80009E38:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009E38, 8

.global etb_80009E40
etb_80009E40:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009E40, 8

.global etb_80009E48
etb_80009E48:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009E48, 8

.global etb_80009E50
etb_80009E50:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009E50, 8

.global etb_80009E58
etb_80009E58:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009E58, 8

.global etb_80009E60
etb_80009E60:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80009E60, 8

.global etb_80009E68
etb_80009E68:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009E68, 8

.global etb_80009E70
etb_80009E70:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80009E70, 8

.global etb_80009E78
etb_80009E78:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009E78, 8

.global etb_80009E80
etb_80009E80:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009E80, 8

.section extabindex, "a"
.balign 4
.global eti_80017884
eti_80017884:
    .4byte fn_8020B130
    .4byte 0x00000224
    .4byte etb_80009E28
.size eti_80017884, 12

.global eti_80017890
eti_80017890:
    .4byte fn_8020B354
    .4byte 0x00000090
    .4byte etb_80009E30
.size eti_80017890, 12

.global eti_8001789C
eti_8001789C:
    .4byte fn_8020B3E4
    .4byte 0x00000050
    .4byte etb_80009E38
.size eti_8001789C, 12

.global eti_800178A8
eti_800178A8:
    .4byte fn_8020B434
    .4byte 0x000000CC
    .4byte etb_80009E40
.size eti_800178A8, 12

.global eti_800178B4
eti_800178B4:
    .4byte fn_8020B558
    .4byte 0x000001F4
    .4byte etb_80009E48
.size eti_800178B4, 12

.global eti_800178C0
eti_800178C0:
    .4byte fn_8020B74C
    .4byte 0x0000004C
    .4byte etb_80009E50
.size eti_800178C0, 12

.global eti_800178CC
eti_800178CC:
    .4byte fn_8020B798
    .4byte 0x000000A0
    .4byte etb_80009E58
.size eti_800178CC, 12

.global eti_800178D8
eti_800178D8:
    .4byte fn_8020B848
    .4byte 0x000000D0
    .4byte etb_80009E60
.size eti_800178D8, 12

.global eti_800178E4
eti_800178E4:
    .4byte fn_8020B918
    .4byte 0x00000140
    .4byte etb_80009E68
.size eti_800178E4, 12

.global eti_800178F0
eti_800178F0:
    .4byte fn_8020BA58
    .4byte 0x000001D4
    .4byte etb_80009E70
.size eti_800178F0, 12

.global eti_800178FC
eti_800178FC:
    .4byte fn_8020BC30
    .4byte 0x000000B4
    .4byte etb_80009E78
.size eti_800178FC, 12

.global eti_80017908
eti_80017908:
    .4byte fn_8020BD00
    .4byte 0x00000140
    .4byte etb_80009E80
.size eti_80017908, 12

.text
.balign 4
.global fn_8020B130
.global fn_8020B354
.global fn_8020B3E4
.global fn_8020B434
.global fn_8020B500
.global fn_8020B558
.global fn_8020B74C
.global fn_8020B798
.global fn_8020B838
.global fn_8020B848
.global fn_8020B918
.global fn_8020BA58
.global fn_8020BC2C
.global fn_8020BC30
.global fn_8020BCE4
.global fn_8020BD00

fn_8020B130:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CB4B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CB4B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B180
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
L_8020B180:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B1B8
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
L_8020B1B8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B1F0
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
L_8020B1F0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B228
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
L_8020B228:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B260
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
L_8020B260:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B298
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
L_8020B298:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B2D0
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
L_8020B2D0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B308
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
L_8020B308:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020B340
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
L_8020B340:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020B354:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_8020B3C8
    lis 3, lbl_804A5E98@ha
    addi 0, 3, lbl_804A5E98@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_8020B3B8
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_8020B3AC
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_8020B3AC
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_8020B3AC:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_8020B3B8:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8020B3C8
    mr 3, 30
    bl dtor_80084580
L_8020B3C8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020B3E4:
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
    .4byte 0x41820010 # beq .L_8020B420
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 25, 23
    stw 0, 0x230(31)
L_8020B420:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020B434:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x4082009C # bne .L_8020B4EC
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0xd8
    bl fn_801F0E34
    .4byte 0xC002CA18 # lfs f0, lbl_8053F9B8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 5, 3, lbl_8052EBC0@l
    .4byte 0xC042CA1C # lfs f2, lbl_8053F9BC@sda21(r0)
    stfs 0, 0x60(31)
    li 3, 0x0
    .4byte 0xC022CA20 # lfs f1, lbl_8053F9C0@sda21(r0)
    li 0, 0x2
    stfs 0, 0x64(31)
    .4byte 0xC002CA24 # lfs f0, lbl_8053F9C4@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    lfs 2, 0x60(31)
    stfs 2, 0x70(31)
    lfs 2, 0x64(31)
    stfs 2, 0x74(31)
    lfs 2, 0x68(31)
    stfs 2, 0x78(31)
    lfs 2, 0x6c(31)
    stfs 2, 0x7c(31)
    lhz 4, 0x94(31)
    clrlslwi 4, 4, 30, 14
    subi 4, 4, 0x6000
    rlwinm 4, 4, 30, 18, 28
    lfsx 3, 5, 4
    add 4, 5, 4
    lfs 2, 0x4(4)
    fmuls 3, 3, 1
    fmuls 1, 2, 1
    stfs 3, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
L_8020B4EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020B500:
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    bnelr
    .4byte 0xC022CA28 # lfs f1, lbl_8053F9C8@sda21(r0)
    li 4, 0x0
    .4byte 0xC002CA2C # lfs f0, lbl_8053F9CC@sda21(r0)
    li 0, 0x1
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    lfs 0, 0x60(3)
    stfs 0, 0x70(3)
    lfs 0, 0x64(3)
    stfs 0, 0x74(3)
    lfs 0, 0x68(3)
    stfs 0, 0x78(3)
    lfs 0, 0x6c(3)
    stfs 0, 0x7c(3)
    stw 4, 0x24c(3)
    stw 0, 0x248(3)
    blr

fn_8020B558:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x418201BC # beq .L_8020B734
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_8020B5F4
L_8020B594:
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
L_8020B5F4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8020B594
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x24(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 5, 0x25(1)
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    lwz 0, 0x230(31)
    lwz 3, 0x280(31)
    rlwinm. 0, 0, 0, 24, 24
    addi 30, 3, 0x2bf
    .4byte 0x4082002C # bne .L_8020B6AC
    .4byte 0xC022CA18 # lfs f1, lbl_8053F9B8@sda21(r0)
    lis 3, lbl_8046A384@ha
    addi 4, 3, lbl_8046A384@l
    mr 5, 30
    fmr 2, 1
    mr 3, 31
    addi 6, 1, 0x8
    li 7, 0x7
    bl fn_801F06F0
    .4byte 0x4800008C # b .L_8020B734
L_8020B6AC:
    lwz 0, 0x138(31)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8020B6DC
    lis 4, lbl_8046A384@ha
    lwz 3, 0x4(31)
    addi 7, 4, lbl_8046A384@l
    mr 8, 30
    addi 4, 31, 0xc
    addi 5, 1, 0x8
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
L_8020B6DC:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8020B734
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046A384@ha
    addi 5, 3, lbl_8046A384@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022CA18 # lfs f1, lbl_8053F9B8@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x8
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_8020B734:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8020B74C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8020B77C
    lhz 4, 0x94(31)
    bl fn_802075D8
L_8020B77C:
    mr 3, 31
    bl fn_801F4F28
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020B798:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x41820068 # beq .L_8020B820
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_8020B7D4
    addi 5, 3, 0xcc
    .4byte 0x48000008 # b .L_8020B7D8
L_8020B7D4:
    addi 5, 3, 0xdc
L_8020B7D8:
    lfs 2, 0x10(30)
    addi 4, 1, 0x8
    lfs 0, 0x14(30)
    lfs 1, 0xc(30)
    fsubs 2, 2, 0
    .4byte 0xC002CA24 # lfs f0, lbl_8053F9C4@sda21(r0)
    stfs 1, 0x8(1)
    .4byte 0xC022CA30 # lfs f1, lbl_8053F9D0@sda21(r0)
    stfs 2, 0xc(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x10(1)
    lfs 0, 0x4(5)
    fadds 1, 1, 0
    fsubs 0, 1, 2
    fsel 0, 0, 1, 2
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8020B820:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020B838:
    lwz 0, 0x230(3)
    ori 0, 0, 0x80
    stw 0, 0x230(3)
    blr

fn_8020B848:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC042CA24 # lfs f2, lbl_8053F9C4@sda21(r0)
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
    .4byte 0x40810078 # ble .L_8020B8F4
    lfs 1, 0x6c(28)
    lfs 0, 0x64(28)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810064 # ble .L_8020B8F4
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 30, 3
    .4byte 0x41800048 # blt .L_8020B8F4
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(28)
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820034 # beq .L_8020B8F4
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
L_8020B8F4:
    lwz 0, 0x24(1)
    li 3, 0x0
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020B918:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC042CA24 # lfs f2, lbl_8053F9C4@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100F0 # ble .L_8020BA38
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100DC # ble .L_8020BA38
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(29)
    mr 4, 29
    .4byte 0xC022CA34 # lfs f1, lbl_8053F9D4@sda21(r0)
    bl fn_801F82CC
    mr. 31, 3
    .4byte 0x418000C0 # blt .L_8020BA38
    lwz 0, 0x198(29)
    cmpw 31, 0
    .4byte 0x418200B4 # beq .L_8020BA38
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x418200A0 # beq .L_8020BA38
    lwz 31, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8020B9D8
    lfs 1, 0x14(29)
    .4byte 0xC002CA38 # lfs f0, lbl_8053F9D8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8020B9D8
    mr 3, 30
    bl fn_801CC8E4
    clrlwi. 0, 3, 24
    .4byte 0x40820064 # bne .L_8020BA38
L_8020B9D8:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_8020BA30
    psq_l 1, 0xc(29), 0, 0
    addi 7, 1, 0x8
    lfs 0, 0x14(29)
    stfs 0, 0x10(1)
    psq_st 1, 0x0(7), 0, 0
    psq_l 2, 0x8(7), 1, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(7), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(7), 1, 0
    lhz 4, 0x94(29)
    lwz 5, 0x110(30)
    lwz 6, 0x118(30)
    lwz 8, 0x168(30)
    bl fn_80207830
L_8020BA30:
    li 0, 0x1
    stb 0, 0x164(30)
L_8020BA38:
    lwz 0, 0x34(1)
    li 3, 0x0
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8020BA58:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC042CA24 # lfs f2, lbl_8053F9C4@sda21(r0)
    stw 0, 0x84(1)
    stmw 26, 0x68(1)
    mr 26, 3
    lfs 1, 0x78(3)
    lfs 0, 0x70(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4182001C # beq .L_8020BAA0
    lfs 1, 0x7c(26)
    lfs 0, 0x74(26)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8020BAA8
L_8020BAA0:
    li 3, 0x0
    .4byte 0x48000174 # b .L_8020BC18
L_8020BAA8:
    stfs 2, 0x44(1)
    addi 4, 1, 0x34
    li 30, 0x0
    li 29, 0x0
    stfs 2, 0x48(1)
    stfs 2, 0x4c(1)
    bl fn_801F317C
    lwz 4, 0x4(26)
    addi 3, 1, 0x34
    addi 5, 1, 0x8
    bl fn_8023AE34
    mr. 31, 3
    .4byte 0x41800014 # blt .L_8020BAEC
    addi 4, 1, 0x44
    bl fn_801CC820
    mr 30, 3
    .4byte 0x48000058 # b .L_8020BB40
L_8020BAEC:
    lwz 4, 0x4(26)
    addi 3, 1, 0x34
    addi 5, 1, 0x8
    bl fn_8023AC74
    mr. 31, 3
    .4byte 0x4180001C # blt .L_8020BB1C
    addi 4, 1, 0x8
    addi 5, 1, 0x50
    li 6, 0x0
    bl fn_801CC538
    mr 29, 3
    .4byte 0x48000028 # b .L_8020BB40
L_8020BB1C:
    lwz 4, 0x4(26)
    addi 3, 1, 0x34
    addi 5, 1, 0x8
    bl fn_8023AD54
    mr. 31, 3
    .4byte 0x41800010 # blt .L_8020BB40
    addi 5, 1, 0x44
    li 4, 0x0
    bl fn_801CC640
L_8020BB40:
    cmpwi 31, 0x0
    li 28, 0x0
    .4byte 0x418000CC # blt .L_8020BC14
    li 28, 0x1
    bl SpatialRegistry_GetBase
    lwz 4, 0x2a8(26)
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x418200B4 # beq .L_8020BC14
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    clrlwi. 0, 29, 24
    lfs 0, 0x8(3)
    li 8, 0x0
    psq_st 1, 0x28(1), 0, 0
    stfs 0, 0x30(1)
    .4byte 0x41820020 # beq .L_8020BBA4
    lfs 2, 0x50(1)
    lfs 1, 0x54(1)
    lfs 0, 0x58(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    .4byte 0x4800005C # b .L_8020BBFC
L_8020BBA4:
    lfs 0, 0x14(26)
    clrlwi. 0, 30, 24
    psq_l 1, 0xc(26), 0, 0
    stfs 0, 0x18(1)
    psq_l 3, 0x44(1), 0, 0
    psq_l 2, 0x18(1), 1, 0
    psq_l 0, 0x4c(1), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x10(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x1c(1), 0, 0
    psq_st 0, 0x18(1), 1, 0
    lfs 1, 0x1c(1)
    lfs 2, 0x18(1)
    lfs 0, 0x20(1)
    psq_st 3, 0x10(1), 0, 0
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 2, 0x30(1)
    .4byte 0x41820008 # beq .L_8020BBFC
    li 8, 0x3
L_8020BBFC:
    lhz 4, 0x94(26)
    mr 3, 27
    mr 5, 31
    addi 7, 1, 0x28
    li 6, 0x4
    bl fn_80207830
L_8020BC14:
    mr 3, 28
L_8020BC18:
    lmw 26, 0x68(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8020BC2C:
    blr

fn_8020BC30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_8020BC5C
    .4byte 0x40800078 # bge .L_8020BCCC
    .4byte 0x48000074 # b .L_8020BCCC
L_8020BC5C:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_8020BC74
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8020BC78
L_8020BC74:
    addi 3, 3, 0xdc
L_8020BC78:
    lfs 0, 0x0(3)
    .4byte 0xC022CA34 # lfs f1, lbl_8053F9D4@sda21(r0)
    lfs 2, 0xc(30)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x41800038 # blt .L_8020BCC4
    lfs 0, 0x4(3)
    lfs 3, 0x10(30)
    fsubs 0, 0, 1
    fcmpo cr0, 3, 0
    .4byte 0x41800024 # blt .L_8020BCC4
    lfs 0, 0x8(3)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x41810014 # bgt .L_8020BCC4
    lfs 0, 0xc(3)
    fadds 0, 1, 0
    fcmpo cr0, 3, 0
    .4byte 0x4081000C # ble .L_8020BCCC
L_8020BCC4:
    li 0, 0x0
    stb 0, 0x11c(30)
L_8020BCCC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020BCE4:
    lfs 0, 0x24(3)
    stfs 0, 0xc(3)
    lfs 0, 0x28(3)
    stfs 0, 0x10(3)
    lfs 0, 0x2c(3)
    stfs 0, 0x14(3)
    blr

fn_8020BD00:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_801D0ED0
    .4byte 0xC062CA18 # lfs f3, lbl_8053F9B8@sda21(r0)
    lis 3, 0x5
    .4byte 0xC042CA1C # lfs f2, lbl_8053F9BC@sda21(r0)
    addi 9, 3, 0x3
    stfs 3, 0x60(30)
    li 8, 0x2
    li 7, 0x1
    li 6, 0x0
    stfs 3, 0x64(30)
    li 0, -0x1
    .4byte 0xC002CA24 # lfs f0, lbl_8053F9C4@sda21(r0)
    addi 3, 30, 0x270
    stfs 2, 0x68(30)
    .4byte 0x388D85B0 # li r4, lbl_8053A170@sda21
    li 5, 0x1
    stfs 2, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 3, 0x80(30)
    stfs 3, 0x84(30)
    stfs 2, 0x88(30)
    stfs 2, 0x8c(30)
    stw 9, 0xb0(30)
    stw 8, 0x98(30)
    lwz 8, 0x230(30)
    ori 8, 8, 0x80
    stw 8, 0x230(30)
    stb 7, 0x194(30)
    lwz 7, 0x90(30)
    stw 7, 0x2a8(30)
    stw 6, 0x248(30)
    stw 6, 0x24c(30)
    stw 0, 0x250(30)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    bl fn_801D2608
    addi 3, 30, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_8020BDF0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8020BDF4
L_8020BDF0:
    addi 3, 3, 0xdc
L_8020BDF4:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    lfs 3, 0x4(3)
    lfs 2, 0xc(3)
    fadds 1, 1, 0
    .4byte 0xC082CA3C # lfs f4, lbl_8053F9DC@sda21(r0)
    fadds 2, 3, 2
    .4byte 0xC002CA24 # lfs f0, lbl_8053F9C4@sda21(r0)
    fmuls 1, 4, 1
    fmuls 2, 4, 2
    stfs 1, 0xc(30)
    stfs 2, 0x10(30)
    stfs 0, 0x14(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8020B130
