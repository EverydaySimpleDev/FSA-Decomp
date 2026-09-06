.section extab, "a"
.balign 4
.global etb_8000A1D0
etb_8000A1D0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A1D0, 8

.global etb_8000A1D8
etb_8000A1D8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000A1D8, 8

.global etb_8000A1E0
etb_8000A1E0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A1E0, 8

.global etb_8000A1E8
etb_8000A1E8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A1E8, 8

.global etb_8000A1F0
etb_8000A1F0:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A1F0, 8

.global etb_8000A1F8
etb_8000A1F8:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A1F8, 8

.global etb_8000A200
etb_8000A200:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A200, 8

.global etb_8000A208
etb_8000A208:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A208, 8

.global etb_8000A210
etb_8000A210:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A210, 8

.global etb_8000A218
etb_8000A218:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A218, 8

.global etb_8000A220
etb_8000A220:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A220, 8

.global etb_8000A228
etb_8000A228:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000A228, 8

.global etb_8000A230
etb_8000A230:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000A230, 8

.section extabindex, "a"
.balign 4
.global eti_80017E00
eti_80017E00:
    .4byte fn_80215870
    .4byte 0x00000224
    .4byte etb_8000A1D0
.size eti_80017E00, 12

.global eti_80017E0C
eti_80017E0C:
    .4byte fn_80215A94
    .4byte 0x000000D8
    .4byte etb_8000A1D8
.size eti_80017E0C, 12

.global eti_80017E18
eti_80017E18:
    .4byte fn_80215B6C
    .4byte 0x00000060
    .4byte etb_8000A1E0
.size eti_80017E18, 12

.global eti_80017E24
eti_80017E24:
    .4byte fn_80215BCC
    .4byte 0x000000A0
    .4byte etb_8000A1E8
.size eti_80017E24, 12

.global eti_80017E30
eti_80017E30:
    .4byte fn_80215C6C
    .4byte 0x000000CC
    .4byte etb_8000A1F0
.size eti_80017E30, 12

.global eti_80017E3C
eti_80017E3C:
    .4byte fn_80215DB8
    .4byte 0x00000060
    .4byte etb_8000A1F8
.size eti_80017E3C, 12

.global eti_80017E48
eti_80017E48:
    .4byte fn_80215E18
    .4byte 0x00000030
    .4byte etb_8000A200
.size eti_80017E48, 12

.global eti_80017E54
eti_80017E54:
    .4byte fn_80215ECC
    .4byte 0x00000064
    .4byte etb_8000A208
.size eti_80017E54, 12

.global eti_80017E60
eti_80017E60:
    .4byte fn_80215F30
    .4byte 0x00000088
    .4byte etb_8000A210
.size eti_80017E60, 12

.global eti_80017E6C
eti_80017E6C:
    .4byte fn_80215FB8
    .4byte 0x00000054
    .4byte etb_8000A218
.size eti_80017E6C, 12

.global eti_80017E78
eti_80017E78:
    .4byte fn_8021600C
    .4byte 0x00000060
    .4byte etb_8000A220
.size eti_80017E78, 12

.global eti_80017E84
eti_80017E84:
    .4byte fn_8021606C
    .4byte 0x00000088
    .4byte etb_8000A228
.size eti_80017E84, 12

.global eti_80017E90
eti_80017E90:
    .4byte fn_802160F4
    .4byte 0x00000084
    .4byte etb_8000A230
.size eti_80017E90, 12

.text
.balign 4
.global fn_80215870
.global fn_80215A94
.global fn_80215B6C
.global fn_80215BCC
.global fn_80215C6C
.global fn_80215D38
.global fn_80215D8C
.global fn_80215DB8
.global fn_80215E18
.global fn_80215E48
.global fn_80215E58
.global fn_80215E98
.global fn_80215ECC
.global fn_80215F30
.global fn_80215FB8
.global fn_8021600C
.global fn_8021606C
.global fn_802160F4

fn_80215870:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CD438@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CD438@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802158C0
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
L_802158C0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802158F8
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
L_802158F8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80215930
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
L_80215930:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80215968
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
L_80215968:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802159A0
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
L_802159A0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802159D8
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
L_802159D8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80215A10
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
L_80215A10:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80215A48
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
L_80215A48:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80215A80
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
L_80215A80:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80215A94:
    stwu 1, -0x20(1)
    mflr 0
    lwz 6, 0x0(3)
    stw 0, 0x24(1)
    cmpwi 6, 0x2
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, -0x1
    stw 28, 0x10(1)
    .4byte 0x4180008C # blt .L_80215B48
    mr 5, 3
    li 4, 0x0
    mtctr 6
    cmpwi 6, 0x0
    .4byte 0x4081001C # ble .L_80215AEC
L_80215AD4:
    lwz 0, 0x8(5)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80215AE4
    addi 4, 4, 0x1
L_80215AE4:
    addi 5, 5, 0x24
    .4byte 0x4200FFEC # bdnz .L_80215AD4
L_80215AEC:
    subi 0, 6, 0x1
    cmpw 0, 4
    .4byte 0x40820054 # bne .L_80215B48
    lwz 31, 0x0(3)
    mr 30, 3
    li 28, 0x0
    .4byte 0x4800003C # b .L_80215B40
L_80215B08:
    lwz 0, 0x8(30)
    srwi 0, 0, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x40820020 # bne .L_80215B38
    mr 3, 28
    bl fn_8023DE58
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80215B38
    mr 29, 28
    .4byte 0x48000014 # b .L_80215B48
L_80215B38:
    addi 30, 30, 0x24
    addi 28, 28, 0x1
L_80215B40:
    cmpw 28, 31
    .4byte 0x4180FFC4 # blt .L_80215B08
L_80215B48:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80215B6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    mulli 0, 4, 0x24
    add 4, 3, 0
    lwz 0, 0x8(4)
    cmpwi 0, 0x0
    .4byte 0x41800034 # blt .L_80215BBC
    cmpwi 0, 0x4
    .4byte 0x4080002C # bge .L_80215BBC
    lis 3, lbl_8046A590@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_8046A590@l
    lwzx 5, 3, 0
    cmpwi 5, 0x0
    .4byte 0x40810014 # ble .L_80215BBC
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 6, 0x0
    lwz 4, 0x4(4)
    bl fn_8043D874
L_80215BBC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80215BCC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mulli 31, 4, 0x24
    stw 30, 0x8(1)
    mr 30, 3
    add 3, 30, 31
    lbz 0, 0x1c(3)
    cmplwi 0, 0x0
    .4byte 0x41820060 # beq .L_80215C54
    addi 3, 31, 0x1c
    add 3, 30, 3
    bl fn_801ED7B0
    clrlwi. 0, 3, 24
    .4byte 0x4082004C # bne .L_80215C54
    lis 4, lbl_8050EC80@ha
    add 3, 30, 31
    addi 6, 4, lbl_8050EC80@l
    lbz 5, 0x24(3)
    lwz 0, 0x10(6)
    lbz 4, 0x25(3)
    mulli 0, 0, 0xc8
    add 3, 6, 0
    stb 5, 0x79(3)
    lwz 0, 0x10(6)
    mulli 0, 0, 0xc8
    add 3, 6, 0
    stb 4, 0x78(3)
    bl GetRoomConfigRecord
    add 5, 30, 31
    li 4, 0x1
    lwz 5, 0x4(5)
    bl fn_802D7844
L_80215C54:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80215C6C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mulli 30, 4, 0x24
    stw 29, 0x14(1)
    mr 29, 3
    add 3, 29, 30
    lbz 0, 0x1c(3)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_80215D18
    addi 3, 30, 0x1c
    add 3, 29, 3
    bl fn_801ED7B0
    clrlwi. 0, 3, 24
    .4byte 0x40820068 # bne .L_80215D18
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 4, 0x79(3)
    lbz 5, 0x78(3)
    cmplwi 4, 0x0
    .4byte 0x40820014 # bne .L_80215CE8
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80215CE8
    li 31, 0x1
    .4byte 0x48000034 # b .L_80215D18
L_80215CE8:
    add 3, 29, 30
    lbz 0, 0x24(3)
    lbz 3, 0x25(3)
    cmplw 0, 4
    .4byte 0x4180001C # blt .L_80215D14
    clrlwi 0, 0, 24
    cmplw 0, 4
    .4byte 0x40820014 # bne .L_80215D18
    clrlwi 0, 3, 24
    cmplw 0, 5
    .4byte 0x40800008 # bge .L_80215D18
L_80215D14:
    li 31, 0x1
L_80215D18:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80215D38:
    lwz 0, 0x0(3)
    li 5, 0x1
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_80215D84
L_80215D4C:
    lbz 0, 0xc(3)
    li 4, 0x0
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80215D6C
    lbz 0, 0xe(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_80215D6C
    li 4, 0x1
L_80215D6C:
    clrlwi. 0, 4, 24
    .4byte 0x4082000C # bne .L_80215D7C
    li 5, 0x0
    .4byte 0x4800000C # b .L_80215D84
L_80215D7C:
    addi 3, 3, 0x24
    .4byte 0x4200FFCC # bdnz .L_80215D4C
L_80215D84:
    mr 3, 5
    blr

fn_80215D8C:
    mulli 0, 4, 0x24
    add 3, 3, 0
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    bnelr
    lbz 0, 0xd(3)
    cmplwi 0, 0x0
    bnelr
    li 0, 0x1
    stb 0, 0xd(3)
    blr

fn_80215DB8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    mr 31, 29
    .4byte 0x48000014 # b .L_80215DF0
L_80215DE0:
    addi 3, 31, 0x4
    bl fn_80215E18
    addi 31, 31, 0x24
    addi 30, 30, 0x1
L_80215DF0:
    lwz 0, 0x0(29)
    cmpw 30, 0
    .4byte 0x4180FFE8 # blt .L_80215DE0
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80215E18:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 3
    stw 0, 0x14(1)
    lwz 4, 0x0(3)
    addi 3, 5, 0x8
    lwz 5, 0x4(5)
    bl fn_802162B8
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80215E48:
    mulli 0, 4, 0x24
    add 3, 3, 0
    lwz 3, 0x8(3)
    blr

fn_80215E58:
    lwz 0, 0x0(3)
    li 5, -0x1
    li 6, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_80215E90
L_80215E70:
    lwz 0, 0x8(3)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_80215E84
    mr 5, 6
    .4byte 0x48000010 # b .L_80215E90
L_80215E84:
    addi 3, 3, 0x24
    addi 6, 6, 0x1
    .4byte 0x4200FFE4 # bdnz .L_80215E70
L_80215E90:
    mr 3, 5
    blr

fn_80215E98:
    lwz 0, 0x0(3)
    li 4, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_80215EC4
L_80215EAC:
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80215EBC
    addi 4, 4, 0x1
L_80215EBC:
    addi 3, 3, 0x24
    .4byte 0x4200FFEC # bdnz .L_80215EAC
L_80215EC4:
    mr 3, 4
    blr

fn_80215ECC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0x0(3)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
    .4byte 0x4800001C # b .L_80215F0C
L_80215EF4:
    lwz 4, 0x4(30)
    addi 3, 30, 0x1c
    lwz 5, 0x8(30)
    bl fn_801ED3DC
    addi 30, 30, 0x24
    addi 29, 29, 0x1
L_80215F0C:
    cmpw 29, 31
    .4byte 0x4180FFE4 # blt .L_80215EF4
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80215F30:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(4)
    cmpwi 0, 0x9
    .4byte 0x41820018 # beq .L_80215F70
    cmpwi 0, 0xb
    .4byte 0x41820010 # beq .L_80215F70
    li 3, 0xa
    bl fn_801CD664
    stb 3, 0xa0(29)
L_80215F70:
    mr 31, 29
    li 30, 0x0
    .4byte 0x48000018 # b .L_80215F90
L_80215F7C:
    lbz 4, 0xa0(29)
    addi 3, 31, 0x1c
    bl fn_801ED458
    addi 31, 31, 0x24
    addi 30, 30, 0x1
L_80215F90:
    lwz 0, 0x0(29)
    cmpw 30, 0
    .4byte 0x4180FFE4 # blt .L_80215F7C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80215FB8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mulli 31, 4, 0x24
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 3
    addi 3, 31, 0x1c
    add 3, 29, 3
    bl fn_801ED5C8
    add 3, 29, 31
    stw 30, 0x8(3)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021600C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    mr 31, 29
    .4byte 0x48000014 # b .L_80216044
L_80216034:
    addi 3, 31, 0x1c
    bl Hrmn_DeactivateSlot
    addi 31, 31, 0x24
    addi 30, 30, 0x1
L_80216044:
    lwz 0, 0x0(29)
    cmpw 30, 0
    .4byte 0x4180FFE8 # blt .L_80216034
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021606C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0x0(3)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    li 28, 0x0
    .4byte 0x48000030 # b .L_802160C8
L_8021609C:
    lwz 0, 0x8(30)
    cmpwi 0, 0x0
    .4byte 0x4080001C # bge .L_802160C0
    addi 3, 30, 0x1c
    bl fn_801ED7B0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802160C0
    li 29, 0x1
    .4byte 0x48000014 # b .L_802160D0
L_802160C0:
    addi 30, 30, 0x24
    addi 28, 28, 0x1
L_802160C8:
    cmpw 28, 31
    .4byte 0x4180FFD0 # blt .L_8021609C
L_802160D0:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802160F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    li 28, 0x0
    li 30, -0x1
    mr 29, 27
    li 31, 0x0
    .4byte 0x48000030 # b .L_80216148
L_8021611C:
    stw 28, 0x4(29)
    addi 3, 29, 0x10
    stw 30, 0x8(29)
    stb 31, 0xc(29)
    stb 31, 0xd(29)
    stb 31, 0xe(29)
    bl Hrmn_InitSlotStateType3
    addi 3, 29, 0x1c
    bl Hrmn_ActivateSlotA
    addi 29, 29, 0x24
    addi 28, 28, 0x1
L_80216148:
    lwz 0, 0x0(27)
    cmpw 28, 0
    .4byte 0x4180FFCC # blt .L_8021611C
    addi 3, 27, 0x94
    bl Hrmn_InitSlotStateType0xc
    li 0, 0x0
    stb 0, 0xa0(27)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80215870
