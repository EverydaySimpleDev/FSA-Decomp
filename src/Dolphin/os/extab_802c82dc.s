.section extab, "a"
.balign 4
.global etb_8000CABC
etb_8000CABC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CABC, 8

.global etb_8000CAC4
etb_8000CAC4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000CAC4, 8

.global etb_8000CACC
etb_8000CACC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CACC, 8

.global etb_8000CAD4
etb_8000CAD4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CAD4, 8

.section extabindex, "a"
.balign 4
.global eti_8001B994
eti_8001B994:
    .4byte fn_802C82DC
    .4byte 0x00000224
    .4byte etb_8000CABC
.size eti_8001B994, 12

.global eti_8001B9A0
eti_8001B9A0:
    .4byte fn_802C8530
    .4byte 0x00000178
    .4byte etb_8000CAC4
.size eti_8001B9A0, 12

.global eti_8001B9AC
eti_8001B9AC:
    .4byte fn_802C86A8
    .4byte 0x00000350
    .4byte etb_8000CACC
.size eti_8001B9AC, 12

.global eti_8001B9B8
eti_8001B9B8:
    .4byte fn_802C89FC
    .4byte 0x00000464
    .4byte etb_8000CAD4
.size eti_8001B9B8, 12

.text
.balign 4
.global fn_802C82DC
.global fn_802C8500
.global fn_802C8530
.global fn_802C86A8
.global fn_802C89F8
.global fn_802C89FC

fn_802C82DC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3168@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3168@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C832C
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
L_802C832C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C8364
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
L_802C8364:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C839C
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
L_802C839C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C83D4
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
L_802C83D4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C840C
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
L_802C840C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C8444
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
L_802C8444:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C847C
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
L_802C847C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C84B4
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
L_802C84B4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C84EC
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
L_802C84EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802C8500:
    fsubs 1, 1, 2
    fneg 0, 3
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802C8528
    fcmpo cr0, 1, 3
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802C8528
    li 3, 0x1
    blr
L_802C8528:
    li 3, 0x0
    blr

fn_802C8530:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    li 29, -0x1
    stw 28, 0x20(1)
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802C8578
    li 3, 0x0
    .4byte 0x48000114 # b .L_802C8688
L_802C8578:
    lis 30, 0x4b45
L_802C857C:
    bl SpatialRegistry_GetBase
    mr 5, 29
    addi 4, 30, 0x5930
    bl fn_801F78F4
    mr. 29, 3
    .4byte 0x4080000C # bge .L_802C859C
    li 3, 0x0
    .4byte 0x480000F0 # b .L_802C8688
L_802C859C:
    lwz 0, 0x198(31)
    cmpw 29, 0
    .4byte 0x4182FFD8 # beq .L_802C857C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x4182FFC4 # beq .L_802C857C
    lwz 3, 0x4(31)
    lwz 0, 0x4(28)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    cmpw 3, 0
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x4082FFA4 # bne .L_802C857C
    lwz 12, 0x0(31)
    mr 3, 31
    .4byte 0xC062DDB8 # lfs f3, lbl_80540D58@sda21(r0)
    lfs 0, 0xc(31)
    lwz 12, 0x5c(12)
    fadds 1, 3, 0
    lfs 2, 0x8(1)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182FF78 # beq .L_802C857C
    lwz 12, 0x0(31)
    mr 3, 31
    .4byte 0xC062DDB8 # lfs f3, lbl_80540D58@sda21(r0)
    lfs 0, 0x10(31)
    lwz 12, 0x5c(12)
    fadds 1, 3, 0
    lfs 2, 0xc(1)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182FF4C # beq .L_802C857C
    mr 3, 31
    lfs 1, 0x14(31)
    lwz 12, 0x0(31)
    lfs 2, 0x10(1)
    lwz 12, 0x5c(12)
    .4byte 0xC062DDB8 # lfs f3, lbl_80540D58@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182FF24 # beq .L_802C857C
    lwz 4, 0x4(31)
    mr 3, 28
    addi 5, 31, 0xc
    bl fn_802C1970
    clrlwi. 0, 3, 24
    .4byte 0x4182FF0C # beq .L_802C857C
    mr 3, 28
    bl fn_802C2B64
    li 3, 0x1
    .4byte 0x48000008 # b .L_802C8688
    .4byte 0x4BFFFEF4 # b .L_802C8578
L_802C8688:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802C86A8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr 29, 3
    lbz 0, 0x24c(3)
    cmplwi 0, 0x0
    .4byte 0x4182030C # beq .L_802C89DC
    lwz 3, 0x4(29)
    cmpwi 3, 0x8
    .4byte 0x41800064 # blt .L_802C8740
    .4byte 0xC042DDB8 # lfs f2, lbl_80540D58@sda21(r0)
    lis 3, lbl_8046D808@ha
    lfs 1, 0xc(29)
    addi 3, 3, lbl_8046D808@l
    .4byte 0xC002DDBC # lfs f0, lbl_80540D5C@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x8(1)
    lfs 1, 0x10(29)
    fadds 1, 2, 1
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    lwz 0, 0x244(29)
    slwi 0, 0, 2
    lwzx 31, 3, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(29)
    mr 7, 31
    addi 6, 1, 0x8
    addi 4, 4, 0x5249
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000244 # b .L_802C8980
L_802C8740:
    lwz 0, 0x244(29)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_802C879C
    .4byte 0xC022DDC0 # lfs f1, lbl_80540D60@sda21(r0)
    addi 4, 29, 0xc
    li 5, 0x564
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480001E8 # b .L_802C8980
L_802C879C:
    cmpwi 0, 0x1
    .4byte 0x4082007C # bne .L_802C881C
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    addi 4, 29, 0xc
    li 5, 0x59
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0x5a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0x5b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000168 # b .L_802C8980
L_802C881C:
    cmpwi 0, 0x2
    .4byte 0x4082010C # bne .L_802C892C
    bl GetRoomConfigRecord
    lwz 0, 0x40(3)
    cmpwi 0, 0x11
    .4byte 0x40820080 # bne .L_802C88B0
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0xad
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0xb1
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0xb2
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000D4 # b .L_802C8980
L_802C88B0:
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0xad
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0xaf
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0xb0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000058 # b .L_802C8980
L_802C892C:
    cmpwi 0, 0x3
    .4byte 0x40820050 # bne .L_802C8980
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    addi 4, 29, 0xc
    li 5, 0x99
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DDC4 # lfs f1, lbl_80540D64@sda21(r0)
    li 5, 0x9a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C8980:
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_802C89DC
    lwz 0, 0x240(29)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802C89AC
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
L_802C89AC:
    lwz 0, 0x240(29)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802C89C4
    mr 3, 29
    li 4, 0x42
    bl fn_801F0D20
L_802C89C4:
    lwz 0, 0x240(29)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802C89DC
    mr 3, 29
    li 4, 0x3
    bl fn_801F0D20
L_802C89DC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802C89F8:
    blr

fn_802C89FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    srwi. 0, 0, 27
    .4byte 0x40820228 # bne .L_802C8C40
    .4byte 0xC042DDC8 # lfs f2, lbl_80540D68@sda21(r0)
    addi 3, 1, 0x8
    .4byte 0xC002DDCC # lfs f0, lbl_80540D6C@sda21(r0)
    li 5, 0x0
    stfs 2, 0x60(31)
    .4byte 0xC022DDBC # lfs f1, lbl_80540D5C@sda21(r0)
    stfs 2, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 6, 0x10(31)
    lfs 2, 0xc(31)
    lfs 0, 0x60(31)
    stfs 0, 0x8(1)
    fadds 4, 0, 2
    lfs 0, 0x64(31)
    stfs 0, 0xc(1)
    fadds 3, 0, 6
    lfs 0, 0x68(31)
    stfs 0, 0x10(1)
    fadds 2, 0, 2
    lfs 5, 0x6c(31)
    fadds 0, 5, 6
    stfs 5, 0x14(1)
    stfs 4, 0x8(1)
    stfs 3, 0xc(1)
    stfs 2, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182015C # beq .L_802C8BF4
    .4byte 0x408003B0 # bge .L_802C8E4C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802C8AAC
    .4byte 0x480003A4 # b .L_802C8E4C
L_802C8AAC:
    cmpwi 3, 0x0
    .4byte 0x4180039C # blt .L_802C8E4C
    lwz 0, 0x234(31)
    cmpwi 0, 0x30
    .4byte 0x4182000C # beq .L_802C8AC8
    cmpwi 0, 0x10
    .4byte 0x40820028 # bne .L_802C8AEC
L_802C8AC8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    clrlwi 6, 0, 16
    lwz 4, 0x4(31)
    lbz 0, 0x256(31)
    lwz 3, 0x20(3)
    lwz 5, 0x250(31)
    add 4, 4, 0
    bl fn_802F9974
    .4byte 0x480000BC # b .L_802C8BA4
L_802C8AEC:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_802C8B28
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0xb8
    add 6, 6, 0
    bl fn_802A3948
    .4byte 0x48000080 # b .L_802C8BA4
L_802C8B28:
    cmplwi 0, 0xdc
    .4byte 0x40820028 # bne .L_802C8B54
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x9e
    add 6, 6, 0
    bl fn_802A3948
    .4byte 0x48000054 # b .L_802C8BA4
L_802C8B54:
    cmplwi 0, 0xdd
    .4byte 0x40820028 # bne .L_802C8B80
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x20
    add 6, 6, 0
    bl fn_802A3948
    .4byte 0x48000028 # b .L_802C8BA4
L_802C8B80:
    lwz 0, 0x234(31)
    addi 4, 31, 0xc
    lwz 8, 0x4(31)
    li 5, 0x0
    lbz 6, 0x256(31)
    clrlwi 7, 0, 16
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    add 6, 8, 6
    bl fn_802A3948
L_802C8BA4:
    mr 3, 31
    li 4, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802C8BE8
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000268 # b .L_802C8E4C
L_802C8BE8:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800025C # b .L_802C8E4C
L_802C8BF4:
    cmpwi 3, 0x0
    .4byte 0x40800254 # bge .L_802C8E4C
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lhz 7, 0x254(31)
    add 6, 6, 0
    bl fn_802A3884
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000210 # b .L_802C8E4C
L_802C8C40:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820204 # beq .L_802C8E4C
    .4byte 0x40800014 # bge .L_802C8C60
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802C8C6C
    .4byte 0x40800170 # bge .L_802C8DC8
    .4byte 0x480001F0 # b .L_802C8E4C
L_802C8C60:
    cmpwi 0, 0x4
    .4byte 0x408001E8 # bge .L_802C8E4C
    .4byte 0x480001BC # b .L_802C8E24
L_802C8C6C:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201C8 # bne .L_802C8E4C
    lwz 0, 0x234(31)
    cmpwi 0, 0x30
    .4byte 0x4182000C # beq .L_802C8C9C
    cmpwi 0, 0x10
    .4byte 0x40820028 # bne .L_802C8CC0
L_802C8C9C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    clrlwi 6, 0, 16
    lwz 4, 0x4(31)
    lbz 0, 0x256(31)
    lwz 3, 0x20(3)
    lwz 5, 0x250(31)
    add 4, 4, 0
    bl fn_802F9974
    .4byte 0x480000BC # b .L_802C8D78
L_802C8CC0:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_802C8CFC
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0xb8
    add 6, 6, 0
    bl fn_802A3948
    .4byte 0x48000080 # b .L_802C8D78
L_802C8CFC:
    cmplwi 0, 0xdc
    .4byte 0x40820028 # bne .L_802C8D28
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x9e
    add 6, 6, 0
    bl fn_802A3948
    .4byte 0x48000054 # b .L_802C8D78
L_802C8D28:
    cmplwi 0, 0xdd
    .4byte 0x40820028 # bne .L_802C8D54
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x20
    add 6, 6, 0
    bl fn_802A3948
    .4byte 0x48000028 # b .L_802C8D78
L_802C8D54:
    lwz 0, 0x234(31)
    addi 4, 31, 0xc
    lwz 8, 0x4(31)
    li 5, 0x0
    lbz 6, 0x256(31)
    clrlwi 7, 0, 16
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    add 6, 8, 6
    bl fn_802A3948
L_802C8D78:
    mr 3, 31
    li 4, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802C8DBC
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000094 # b .L_802C8E4C
L_802C8DBC:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000088 # b .L_802C8E4C
L_802C8DC8:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820070 # bne .L_802C8E4C
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lhz 7, 0x254(31)
    add 6, 6, 0
    bl fn_802A3884
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x4800002C # b .L_802C8E4C
L_802C8E24:
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    lbz 0, 0x256(31)
    li 5, 0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lhz 7, 0x254(31)
    add 6, 6, 0
    bl fn_802A3884
    li 0, 0x0
    stw 0, 0x230(31)
L_802C8E4C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_802C82DC
