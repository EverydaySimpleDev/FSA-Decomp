.section extab, "a"
.balign 4
.global etb_8000B278
etb_8000B278:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B278, 8

.global etb_8000B280
etb_8000B280:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B280, 8

.global etb_8000B288
etb_8000B288:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B288, 8

.global etb_8000B290
etb_8000B290:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B290, 8

.global etb_8000B298
etb_8000B298:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B298, 8

.global etb_8000B2A0
etb_8000B2A0:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B2A0, 8

.global etb_8000B2A8
etb_8000B2A8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B2A8, 8

.section extabindex, "a"
.balign 4
.global eti_800196A8
eti_800196A8:
    .4byte fn_8023F9B8
    .4byte 0x00000238
    .4byte etb_8000B278
.size eti_800196A8, 12

.global eti_800196B4
eti_800196B4:
    .4byte fn_8023FC5C
    .4byte 0x000002F4
    .4byte etb_8000B280
.size eti_800196B4, 12

.global eti_800196C0
eti_800196C0:
    .4byte fn_8023FF50
    .4byte 0x00000038
    .4byte etb_8000B288
.size eti_800196C0, 12

.global eti_800196CC
eti_800196CC:
    .4byte fn_8023FFC4
    .4byte 0x000001C8
    .4byte etb_8000B290
.size eti_800196CC, 12

.global eti_800196D8
eti_800196D8:
    .4byte fn_8024018C
    .4byte 0x000001C8
    .4byte etb_8000B298
.size eti_800196D8, 12

.global eti_800196E4
eti_800196E4:
    .4byte fn_80240354
    .4byte 0x000001C8
    .4byte etb_8000B2A0
.size eti_800196E4, 12

.global eti_800196F0
eti_800196F0:
    .4byte fn_8024051C
    .4byte 0x0000010C
    .4byte etb_8000B2A8
.size eti_800196F0, 12

.text
.balign 4
.global fn_8023F98C
.global fn_8023F9B0
.global fn_8023F9B8
.global fn_8023FBF0
.global fn_8023FC08
.global fn_8023FC10
.global fn_8023FC24
.global fn_8023FC2C
.global fn_8023FC5C
.global fn_8023FF50
.global fn_8023FF88
.global fn_8023FF90
.global fn_8023FFAC
.global fn_8023FFC4
.global fn_8024018C
.global fn_80240354
.global fn_8024051C
.global fn_80240628

fn_8023F98C:
    li 0, 0x1
    lbz 3, 0x82(3)
    slw 0, 0, 4
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_8023F9B0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    blr

fn_8023F9B8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CF460@ha
    .4byte 0xC002D068 # lfs f0, lbl_80540008@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CF460@l
    addi 3, 31, 0x0
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    stfs 0, 0x0(31)
    extsb. 0, 0
    stfs 0, 0x4(3)
    stfs 0, 0x8(3)
    .4byte 0x40820030 # bne .L_8023FA1C
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8023FA1C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FA54
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8023FA54:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FA8C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8023FA8C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FAC4
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8023FAC4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FAFC
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8023FAFC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FB34
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8023FB34:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FB6C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8023FB6C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FBA4
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8023FBA4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8023FBDC
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8023FBDC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023FBF0:
    lbz 0, 0x42c(3)
    cmplwi 0, 0x0
    beqlr
    li 0, 0x1
    stb 0, 0x42d(3)
    blr

fn_8023FC08:
    lbz 3, 0x42c(3)
    blr

fn_8023FC10:
    lwz 0, 0xca8(3)
    cmpw 0, 4
    bgelr
    stw 4, 0xca8(3)
    blr

fn_8023FC24:
    lwz 3, 0xbec(3)
    blr

fn_8023FC2C:
    lbz 0, 0xd2d(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8023FC40
    li 3, 0x0
    blr
L_8023FC40:
    lbz 0, 0x498(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023FC54
    li 3, 0x0
    blr
L_8023FC54:
    lwz 3, 0x494(3)
    blr

fn_8023FC5C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0xc80(3)
    stmw 26, 0x8(1)
    mr 31, 3
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023FC84
    li 0, 0x0
    .4byte 0x48000058 # b .L_8023FCD8
L_8023FC84:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8023FC98
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023FCD8
L_8023FC98:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8023FCAC
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023FCD8
L_8023FCAC:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023FCC0
    li 0, 0x0
    .4byte 0x4800001C # b .L_8023FCD8
L_8023FCC0:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023FCD4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023FCD8
L_8023FCD4:
    li 0, 0x1
L_8023FCD8:
    clrlwi. 0, 0, 24
    .4byte 0x4182025C # beq .L_8023FF38
    li 30, 0x0
    lwz 28, 0x4(31)
    mr 29, 30
L_8023FCEC:
    cmpw 29, 28
    .4byte 0x4082000C # bne .L_8023FCFC
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8023FD5C
L_8023FCFC:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8023FD4C
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8023FD30
    mr 3, 29
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8023FD5C
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8023FD5C
L_8023FD30:
    lwz 26, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8023FD5C
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8023FD5C
L_8023FD4C:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8023FD5C
    addi 30, 30, 0x1
L_8023FD5C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF88 # blt .L_8023FCEC
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8023FD78
    li 3, 0x5
    .4byte 0x4800001C # b .L_8023FD90
L_8023FD78:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8023FD8C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8023FD90
L_8023FD8C:
    lwz 3, 0x120c(31)
L_8023FD90:
    cmpwi 3, 0x4
    .4byte 0x4082019C # bne .L_8023FF30
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_8023FDC8
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8023FDC8
    .4byte 0x48000140 # b .L_8023FF04
L_8023FDC8:
    li 27, 0x0
    lwz 28, 0x4(31)
    mr 26, 27
L_8023FDD4:
    cmpw 26, 28
    .4byte 0x4082000C # bne .L_8023FDE4
    addi 27, 27, 0x1
    .4byte 0x48000064 # b .L_8023FE44
L_8023FDE4:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8023FE34
    lwz 29, 0xd60(31)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_8023FE18
    mr 3, 26
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x40820038 # bne .L_8023FE44
    addi 27, 27, 0x1
    .4byte 0x48000030 # b .L_8023FE44
L_8023FE18:
    lwz 29, 0x4(31)
    mr 3, 26
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_8023FE44
    addi 27, 27, 0x1
    .4byte 0x48000014 # b .L_8023FE44
L_8023FE34:
    lwz 0, 0xd60(31)
    cmpw 26, 0
    .4byte 0x40820008 # bne .L_8023FE44
    addi 27, 27, 0x1
L_8023FE44:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF88 # blt .L_8023FDD4
    cmpwi 27, 0x1
    .4byte 0x4181000C # bgt .L_8023FE60
    li 3, 0x5
    .4byte 0x4800001C # b .L_8023FE78
L_8023FE60:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8023FE74
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8023FE78
L_8023FE74:
    lwz 3, 0x120c(31)
L_8023FE78:
    cmpwi 3, 0x4
    .4byte 0x4082007C # bne .L_8023FEF8
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8023FE98
    bl fn_80234004
    mr 28, 3
    .4byte 0x48000008 # b .L_8023FE9C
L_8023FE98:
    lwz 28, 0x1224(31)
L_8023FE9C:
    lwz 29, 0xd60(31)
    cmpwi 29, 0x0
    .4byte 0x4080000C # bge .L_8023FEB0
    li 0, 0x0
    .4byte 0x48000038 # b .L_8023FEE4
L_8023FEB0:
    li 26, 0x0
    lwz 30, 0x4(31)
    mr 27, 26
    .4byte 0x4800001C # b .L_8023FED8
L_8023FEC0:
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x40820008 # bne .L_8023FED4
    addi 26, 26, 0x1
L_8023FED4:
    addi 27, 27, 0x1
L_8023FED8:
    cmpw 27, 30
    .4byte 0x4180FFE4 # blt .L_8023FEC0
    addi 0, 26, 0x1
L_8023FEE4:
    subf 3, 28, 0
    subf 0, 0, 28
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_8023FF04
L_8023FEF8:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_8023FF04:
    clrlwi. 0, 4, 24
    .4byte 0x41820028 # beq .L_8023FF30
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8023FF30
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8023FF30
    lbz 0, 0xca0(31)
    extrwi 3, 0, 8, 23
    .4byte 0x48000010 # b .L_8023FF3C
L_8023FF30:
    lbz 3, 0xca0(31)
    .4byte 0x48000008 # b .L_8023FF3C
L_8023FF38:
    li 3, 0x0
L_8023FF3C:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8023FF50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8023FF74
    mr 3, 0
    bl fn_8023BD70
    .4byte 0x48000008 # b .L_8023FF78
L_8023FF74:
    lbz 3, 0x1202(3)
L_8023FF78:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8023FF88:
    lbz 3, 0x1200(3)
    blr

fn_8023FF90:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0xc90(3)
    lfs 0, 0x8(4)
    stfs 1, 0xc94(3)
    stfs 0, 0xc98(3)
    blr

fn_8023FFAC:
    lfs 1, 0xc8c(3)
    .4byte 0xC002D090 # lfs f0, lbl_80540030@sda21(r0)
    fcmpo cr0, 1, 0
    mfcr 0
    srwi 3, 0, 31
    blr

fn_8023FFC4:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_80240008
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80240008
    .4byte 0x48000144 # b .L_80240148
L_80240008:
    li 29, 0x0
    mr 28, 29
L_80240010:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80240024
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80240084
L_80240024:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80240074
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80240058
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80240084
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80240084
L_80240058:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80240084
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80240084
L_80240074:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80240084
    addi 29, 29, 0x1
L_80240084:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80240010
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802400A0
    li 3, 0x5
    .4byte 0x4800001C # b .L_802400B8
L_802400A0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802400B4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802400B8
L_802400B4:
    lwz 3, 0x120c(31)
L_802400B8:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8024013C
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802400D8
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_802400DC
L_802400D8:
    lwz 30, 0x1224(31)
L_802400DC:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802400F0
    li 0, 0x0
    .4byte 0x4800003C # b .L_80240128
L_802400F0:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80240118
L_802400FC:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80240114
    addi 28, 28, 0x1
L_80240114:
    addi 29, 29, 0x1
L_80240118:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802400FC
    addi 0, 28, 0x1
L_80240128:
    subf 3, 30, 0
    subf 0, 0, 30
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_80240148
L_8024013C:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_80240148:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_80240160
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_80236630
    .4byte 0x4800001C # b .L_80240178
L_80240160:
    lbz 0, 0xbe8(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80240174
    lwz 3, 0xbe4(31)
    .4byte 0x48000008 # b .L_80240178
L_80240174:
    li 3, 0x0
L_80240178:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024018C:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_802401D0
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802401D0
    .4byte 0x48000144 # b .L_80240310
L_802401D0:
    li 29, 0x0
    mr 28, 29
L_802401D8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802401EC
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024024C
L_802401EC:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024023C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80240220
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024024C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024024C
L_80240220:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_8024024C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024024C
L_8024023C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024024C
    addi 29, 29, 0x1
L_8024024C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802401D8
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80240268
    li 3, 0x5
    .4byte 0x4800001C # b .L_80240280
L_80240268:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024027C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80240280
L_8024027C:
    lwz 3, 0x120c(31)
L_80240280:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_80240304
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802402A0
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_802402A4
L_802402A0:
    lwz 30, 0x1224(31)
L_802402A4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802402B8
    li 0, 0x0
    .4byte 0x4800003C # b .L_802402F0
L_802402B8:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802402E0
L_802402C4:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802402DC
    addi 28, 28, 0x1
L_802402DC:
    addi 29, 29, 0x1
L_802402E0:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_802402C4
    addi 0, 28, 0x1
L_802402F0:
    subf 3, 30, 0
    subf 0, 0, 30
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_80240310
L_80240304:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_80240310:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_80240328
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_802366CC
    .4byte 0x4800001C # b .L_80240340
L_80240328:
    lbz 0, 0x42c(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024033C
    lwz 3, 0xbe0(31)
    .4byte 0x48000008 # b .L_80240340
L_8024033C:
    li 3, 0x0
L_80240340:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80240354:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(31)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_80240398
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80240398
    .4byte 0x48000144 # b .L_802404D8
L_80240398:
    li 29, 0x0
    mr 28, 29
L_802403A0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802403B4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80240414
L_802403B4:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80240404
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802403E8
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80240414
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80240414
L_802403E8:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80240414
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80240414
L_80240404:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80240414
    addi 29, 29, 0x1
L_80240414:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802403A0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80240430
    li 3, 0x5
    .4byte 0x4800001C # b .L_80240448
L_80240430:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80240444
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80240448
L_80240444:
    lwz 3, 0x120c(31)
L_80240448:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_802404CC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80240468
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024046C
L_80240468:
    lwz 30, 0x1224(31)
L_8024046C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80240480
    li 0, 0x0
    .4byte 0x4800003C # b .L_802404B8
L_80240480:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_802404A8
L_8024048C:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_802404A4
    addi 28, 28, 0x1
L_802404A4:
    addi 29, 29, 0x1
L_802404A8:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8024048C
    addi 0, 28, 0x1
L_802404B8:
    subf 3, 30, 0
    subf 0, 0, 30
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_802404D8
L_802404CC:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_802404D8:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_802404F0
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_80236768
    .4byte 0x4800001C # b .L_80240508
L_802404F0:
    lbz 0, 0xbdc(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80240504
    lwz 3, 0xbd8(31)
    .4byte 0x48000008 # b .L_80240508
L_80240504:
    li 3, 0x0
L_80240508:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024051C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    mr 31, 30
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
L_80240544:
    lwz 0, 0x4(28)
    cmpw 31, 0
    .4byte 0x4082000C # bne .L_80240558
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_802405B8
L_80240558:
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802405A8
    lwz 29, 0xd60(28)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_8024058C
    mr 3, 31
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x40820038 # bne .L_802405B8
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_802405B8
L_8024058C:
    lwz 29, 0x4(28)
    mr 3, 31
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_802405B8
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_802405B8
L_802405A8:
    lwz 0, 0xd60(28)
    cmpw 31, 0
    .4byte 0x40820008 # bne .L_802405B8
    addi 30, 30, 0x1
L_802405B8:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FF84 # blt .L_80240544
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_802405D4
    li 3, 0x5
    .4byte 0x4800001C # b .L_802405EC
L_802405D4:
    lwz 3, 0xd60(28)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802405E8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802405EC
L_802405E8:
    lwz 3, 0x120c(28)
L_802405EC:
    cmpwi 3, 0x4
    .4byte 0x41820018 # beq .L_80240608
    lbz 0, 0x1215(28)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80240608
    li 0, 0x1
    stb 0, 0x43e(28)
L_80240608:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80240628:
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8024063C
    mr 3, 0
    blr
L_8024063C:
    lwz 3, 0x4(3)
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8023F9B8
