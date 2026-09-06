# Fresh project-wide gap hunt continuation: 26 functions, 8,312 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80008BF8
etb_80008BF8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008BF8, 8

.global etb_80008C00
etb_80008C00:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008C00, 8

.global etb_80008C08
etb_80008C08:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008C08, 8

.global etb_80008C10
etb_80008C10:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80008C10, 8

.global etb_80008C18
etb_80008C18:
    .4byte 0x114A0000
    .4byte 0x00000000
.size etb_80008C18, 8

.global etb_80008C20
etb_80008C20:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008C20, 8

.global etb_80008C28
etb_80008C28:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008C28, 8

.global etb_80008C30
etb_80008C30:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80008C30, 8

.global etb_80008C38
etb_80008C38:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80008C38, 8

.global etb_80008C40
etb_80008C40:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_80008C40, 8

.global etb_80008C48
etb_80008C48:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008C48, 8

.global etb_80008C50
etb_80008C50:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008C50, 8

.global etb_80008C58
etb_80008C58:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008C58, 8

.global etb_80008C60
etb_80008C60:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80008C60, 8

.global etb_80008C68
etb_80008C68:
    .4byte 0x394A0000
    .4byte 0x00000000
.size etb_80008C68, 8

.global etb_80008C70
etb_80008C70:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008C70, 8

.global etb_80008C78
etb_80008C78:
    .4byte 0x394A0000
    .4byte 0x00000000
.size etb_80008C78, 8

.global etb_80008C80
etb_80008C80:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008C80, 8

.section extabindex, "a"
.balign 4
.global eti_800161EC
eti_800161EC:
    .4byte fn_801E98D8
    .4byte 0x00000224
    .4byte etb_80008BF8
.size eti_800161EC, 12

.global eti_800161F8
eti_800161F8:
    .4byte fn_801E9AFC
    .4byte 0x00000058
    .4byte etb_80008C00
.size eti_800161F8, 12

.global eti_80016204
eti_80016204:
    .4byte fn_801E9B58
    .4byte 0x000000A8
    .4byte etb_80008C08
.size eti_80016204, 12

.global eti_80016210
eti_80016210:
    .4byte fn_801E9C74
    .4byte 0x00000494
    .4byte etb_80008C10
.size eti_80016210, 12

.global eti_8001621C
eti_8001621C:
    .4byte fn_801EA108
    .4byte 0x000001FC
    .4byte etb_80008C18
.size eti_8001621C, 12

.global eti_80016228
eti_80016228:
    .4byte fn_801EA304
    .4byte 0x00000040
    .4byte etb_80008C20
.size eti_80016228, 12

.global eti_80016234
eti_80016234:
    .4byte fn_801EA344
    .4byte 0x00000040
    .4byte etb_80008C28
.size eti_80016234, 12

.global eti_80016240
eti_80016240:
    .4byte fn_801EA384
    .4byte 0x00000210
    .4byte etb_80008C30
.size eti_80016240, 12

.global eti_8001624C
eti_8001624C:
    .4byte fn_801EA594
    .4byte 0x00000144
    .4byte etb_80008C38
.size eti_8001624C, 12

.global eti_80016258
eti_80016258:
    .4byte fn_801EA75C
    .4byte 0x00000164
    .4byte etb_80008C40
.size eti_80016258, 12

.global eti_80016264
eti_80016264:
    .4byte fn_801EA8E8
    .4byte 0x00000224
    .4byte etb_80008C48
.size eti_80016264, 12

.global eti_80016270
eti_80016270:
    .4byte fn_801EADE8
    .4byte 0x00000224
    .4byte etb_80008C50
.size eti_80016270, 12

.global eti_8001627C
eti_8001627C:
    .4byte fn_801EB00C
    .4byte 0x000001E8
    .4byte etb_80008C58
.size eti_8001627C, 12

.global eti_80016288
eti_80016288:
    .4byte fn_801EB1F4
    .4byte 0x00000224
    .4byte etb_80008C60
.size eti_80016288, 12

.global eti_80016294
eti_80016294:
    .4byte fn_801EB418
    .4byte 0x00000230
    .4byte etb_80008C68
.size eti_80016294, 12

.global eti_800162A0
eti_800162A0:
    .4byte fn_801EB648
    .4byte 0x000000C8
    .4byte etb_80008C70
.size eti_800162A0, 12

.global eti_800162AC
eti_800162AC:
    .4byte fn_801EB710
    .4byte 0x000001BC
    .4byte etb_80008C78
.size eti_800162AC, 12

.global eti_800162B8
eti_800162B8:
    .4byte dtor_801EB8CC
    .4byte 0x00000084
    .4byte etb_80008C80
.size eti_800162B8, 12

.text
.balign 4
.global fn_801E98D8
.global fn_801E9AFC
.global fn_801E9B54
.global fn_801E9B58
.global fn_801E9C00
.global fn_801E9C74
.global fn_801EA108
.global fn_801EA304
.global fn_801EA344
.global fn_801EA384
.global fn_801EA594
.global fn_801EA6D8
.global fn_801EA75C
.global fn_801EA8C0
.global fn_801EA8E8
.global fn_801EAB0C
.global fn_801EAC20
.global fn_801EAC54
.global fn_801EAD68
.global fn_801EADE8
.global fn_801EB00C
.global fn_801EB1F4
.global fn_801EB418
.global fn_801EB648
.global fn_801EB710
.global dtor_801EB8CC

fn_801E98D8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CA258@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CA258@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9928
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
L_801E9928:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9960
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
L_801E9960:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9998
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
L_801E9998:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E99D0
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
L_801E99D0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9A08
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
L_801E9A08:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9A40
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
L_801E9A40:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9A78
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
L_801E9A78:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9AB0
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
L_801E9AB0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E9AE8
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
L_801E9AE8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E9AFC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D9090 # lbz r0, lbl_8053AC50@sda21(r0)
    extsb. 0, 0
    .4byte 0x4082002C # bne .L_801E9B3C
    lis 3, lbl_804CA358@ha
    lis 4, fn_801E9B54@ha
    addi 3, 3, lbl_804CA358@l
    li 5, 0x0
    addi 4, 4, fn_801E9B54@l
    li 6, 0x78
    li 7, 0x2
    bl __construct_array
    li 0, 0x1
    .4byte 0x980D9090 # stb r0, lbl_8053AC50@sda21(r0)
L_801E9B3C:
    lwz 0, 0x14(1)
    lis 3, lbl_804CA358@ha
    addi 3, 3, lbl_804CA358@l
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E9B54:
    blr

fn_801E9B58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl SpatialRegistry_GetBase
    lis 4, lbl_80469C78@ha
    lwz 6, 0x198(30)
    addi 5, 4, lbl_80469C78@l
    .4byte 0xC022C6BC # lfs f1, lbl_8053F65C@sda21(r0)
    mr 4, 30
    bl fn_801F7F58
    mr. 31, 3
    .4byte 0x41800054 # blt .L_801E9BE4
    lwz 0, 0x198(30)
    cmpw 31, 0
    .4byte 0x41820048 # beq .L_801E9BE4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr 0, 3
    mr. 30, 0
    .4byte 0x41820030 # beq .L_801E9BE4
    bl fn_801CC8E4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801E9BCC
    li 31, -0x1
    .4byte 0x4800001C # b .L_801E9BE4
L_801E9BCC:
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x4649
    cmplwi 0, 0x5245
    .4byte 0x4082000C # bne .L_801E9BE4
    mr 3, 30
    bl fn_802BAA00
L_801E9BE4:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E9C00:
    .4byte 0xC022C6C0 # lfs f1, lbl_8053F660@sda21(r0)
    extsh. 0, 3
    .4byte 0xC002C6C4 # lfs f0, lbl_8053F664@sda21(r0)
    li 0, 0x2000
    stfs 1, 0x0(4)
    stfs 0, 0x4(4)
    .4byte 0x40800008 # bge .L_801E9C20
    li 0, -0x2000
L_801E9C20:
    add 0, 3, 0
    lis 3, lbl_8052EBC0@ha
    extsh 0, 0
    lfs 1, 0x4(4)
    neg 0, 0
    addi 3, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    lfs 3, 0x0(4)
    lfsx 0, 3, 0
    add 5, 3, 0
    lfs 2, 0x4(5)
    fmuls 0, 1, 0
    fmsubs 0, 3, 2, 0
    stfs 0, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x4(5)
    lfsx 2, 3, 0
    fmuls 0, 1, 0
    fmadds 0, 3, 2, 0
    stfs 0, 0x4(4)
    blr

fn_801E9C74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 29, 3
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    mr 31, 3
    .4byte 0x41820070 # beq .L_801E9D08
    lwz 0, 0x60(29)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_801E9CB8
    lwz 0, 0xd8(29)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_801E9CBC
L_801E9CB8:
    li 3, 0x1
L_801E9CBC:
    clrlwi 4, 3, 24
    li 3, 0x0
    neg 0, 4
    or 0, 0, 4
    srwi. 0, 0, 31
    mr 26, 0
    .4byte 0x4082001C # bne .L_801E9CF0
    lwz 0, 0x74(29)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_801E9CF0
    lwz 0, 0xec(29)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_801E9CF4
L_801E9CF0:
    li 3, 0x1
L_801E9CF4:
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 30, 0, 31
    .4byte 0x4800004C # b .L_801E9D50
L_801E9D08:
    lbz 0, 0xf0(29)
    li 3, 0x0
    mulli 0, 0, 0x78
    add 5, 29, 0
    lwz 4, 0x60(5)
    neg 0, 4
    andc 0, 0, 4
    srwi. 0, 0, 31
    mr 26, 0
    .4byte 0x40820010 # bne .L_801E9D3C
    lwz 0, 0x74(5)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_801E9D40
L_801E9D3C:
    li 3, 0x1
L_801E9D40:
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 30, 0, 31
L_801E9D50:
    clrlwi. 0, 26, 24
    .4byte 0x4082000C # bne .L_801E9D60
    clrlwi. 0, 30, 24
    .4byte 0x41820398 # beq .L_801EA0F4
L_801E9D60:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B438
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x1
    bl fn_8005F11C
    li 3, 0x0
    bl fn_8005E8B8
    li 3, 0x1
    bl fn_8005B93C
    li 3, 0x0
    bl fn_8005D3C8
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x0
    li 4, 0x3
    bl fn_8005E9E0
    li 3, 0x0
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x0
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    li 4, 0x3
    li 5, 0x0
    bl fn_8005F538
    li 3, 0x1
    bl fn_8005F4E0
    li 3, 0x0
    bl fn_8005F50C
    li 3, 0x2
    bl fn_8005C46C
    li 3, 0x0
    li 4, 0x1
    li 5, 0x0
    li 6, 0x5
    bl fn_8005F48C
    li 3, 0x1
    bl fn_8005F56C
    li 3, 0x2
    li 4, 0xff
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    clrlwi. 0, 26, 24
    .4byte 0x418200AC # beq .L_801E9F2C
    clrlwi. 0, 31, 24
    .4byte 0x41820068 # beq .L_801E9EF0
    lwz 28, 0x60(29)
    mr 26, 29
    li 27, 0x0
    .4byte 0x4800001C # b .L_801E9EB4
L_801E9E9C:
    lwz 3, 0x0(26)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801E9EAC
    bl fn_801E8080
L_801E9EAC:
    addi 26, 26, 0xc
    addi 27, 27, 0x1
L_801E9EB4:
    cmpw 27, 28
    .4byte 0x4180FFE4 # blt .L_801E9E9C
    lwz 28, 0xd8(29)
    mr 26, 29
    li 27, 0x0
    .4byte 0x4800001C # b .L_801E9EE4
L_801E9ECC:
    lwz 3, 0x78(26)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801E9EDC
    bl fn_801E8080
L_801E9EDC:
    addi 26, 26, 0xc
    addi 27, 27, 0x1
L_801E9EE4:
    cmpw 27, 28
    .4byte 0x4180FFE4 # blt .L_801E9ECC
    .4byte 0x48000040 # b .L_801E9F2C
L_801E9EF0:
    lbz 0, 0xf0(29)
    li 27, 0x0
    mulli 0, 0, 0x78
    add 28, 29, 0
    mr 26, 28
    .4byte 0x4800001C # b .L_801E9F20
L_801E9F08:
    lwz 3, 0x0(26)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801E9F18
    bl fn_801E8080
L_801E9F18:
    addi 26, 26, 0xc
    addi 27, 27, 0x1
L_801E9F20:
    lwz 0, 0x60(28)
    cmpw 27, 0
    .4byte 0x4180FFE0 # blt .L_801E9F08
L_801E9F2C:
    clrlwi. 0, 30, 24
    .4byte 0x418201C4 # beq .L_801EA0F4
    li 3, 0x1
    li 4, 0x4
    li 5, 0x5
    li 6, 0x5
    bl fn_8005F48C
    li 3, 0x0
    bl fn_8005F56C
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EEB0
    addi 3, 29, 0x16c
    li 4, 0x0
    bl fn_8005DD00
    addi 3, 29, 0x134
    li 4, 0x0
    bl fn_8005DC74
    clrlwi. 0, 31, 24
    .4byte 0x418200F0 # beq .L_801EA074
    lwz 30, 0x60(29)
    mr 26, 29
    li 27, 0x0
    .4byte 0x4800001C # b .L_801E9FB0
L_801E9F98:
    lwz 3, 0x0(26)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801E9FA8
    bl fn_801E801C
L_801E9FA8:
    addi 26, 26, 0xc
    addi 27, 27, 0x1
L_801E9FB0:
    cmpw 27, 30
    .4byte 0x4180FFE4 # blt .L_801E9F98
    lwz 30, 0x74(29)
    mr 26, 29
    li 28, 0x0
    .4byte 0x48000030 # b .L_801E9FF4
L_801E9FC8:
    lwz 27, 0x64(26)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_801E9FEC
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801E9FEC
    bl fn_801E6DE8
L_801E9FEC:
    addi 26, 26, 0x4
    addi 28, 28, 0x1
L_801E9FF4:
    cmpw 28, 30
    .4byte 0x4180FFD0 # blt .L_801E9FC8
    lwz 30, 0xd8(29)
    mr 26, 29
    li 27, 0x0
    .4byte 0x4800001C # b .L_801EA024
L_801EA00C:
    lwz 3, 0x78(26)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801EA01C
    bl fn_801E801C
L_801EA01C:
    addi 26, 26, 0xc
    addi 27, 27, 0x1
L_801EA024:
    cmpw 27, 30
    .4byte 0x4180FFE4 # blt .L_801EA00C
    lwz 30, 0xec(29)
    mr 26, 29
    li 28, 0x0
    .4byte 0x48000030 # b .L_801EA068
L_801EA03C:
    lwz 27, 0xdc(26)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_801EA060
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801EA060
    bl fn_801E6DE8
L_801EA060:
    addi 26, 26, 0x4
    addi 28, 28, 0x1
L_801EA068:
    cmpw 28, 30
    .4byte 0x4180FFD0 # blt .L_801EA03C
    .4byte 0x48000084 # b .L_801EA0F4
L_801EA074:
    lbz 0, 0xf0(29)
    li 27, 0x0
    mulli 0, 0, 0x78
    add 28, 29, 0
    mr 26, 28
    .4byte 0x4800001C # b .L_801EA0A4
L_801EA08C:
    lwz 3, 0x0(26)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801EA09C
    bl fn_801E801C
L_801EA09C:
    addi 26, 26, 0xc
    addi 27, 27, 0x1
L_801EA0A4:
    lwz 0, 0x60(28)
    cmpw 27, 0
    .4byte 0x4180FFE0 # blt .L_801EA08C
    mr 26, 28
    li 29, 0x0
    .4byte 0x48000030 # b .L_801EA0E8
L_801EA0BC:
    lwz 27, 0x64(26)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_801EA0E0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801EA0E0
    bl fn_801E6DE8
L_801EA0E0:
    addi 26, 26, 0x4
    addi 29, 29, 0x1
L_801EA0E8:
    lwz 0, 0x74(28)
    cmpw 29, 0
    .4byte 0x4180FFCC # blt .L_801EA0BC
L_801EA0F4:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801EA108:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stfd 27, 0x10(1)
    psq_st 27, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0xC3A2C6C0 # lfs f29, lbl_8053F660@sda21(r0)
    fmr 27, 1
    extsh. 0, 5
    .4byte 0xC382C6C8 # lfs f28, lbl_8053F668@sda21(r0)
    fmr 2, 29
    .4byte 0xC082C6CC # lfs f4, lbl_8053F66C@sda21(r0)
    .4byte 0x40800018 # bge .L_801EA174
    fmr 0, 29
    fneg 2, 29
    fmr 29, 28
    fmr 28, 0
    fneg 4, 4
L_801EA174:
    extsh 0, 5
    lis 3, lbl_8052EBC0@ha
    neg 31, 0
    lfs 1, 0x4(4)
    addi 3, 3, lbl_8052EBC0@l
    lfs 0, 0x0(4)
    rlwinm 0, 31, 30, 18, 28
    li 4, 0x0
    addi 30, 3, 0x4
    lfsx 6, 3, 0
    lfsx 5, 30, 0
    li 3, 0x80
    fmuls 3, 2, 6
    li 5, 0x4
    fmuls 2, 2, 5
    fmsubs 3, 4, 5, 3
    fmadds 2, 4, 6, 2
    fadds 31, 0, 3
    fadds 30, 1, 2
    bl fn_8005C24C
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 31, 30, 18, 28
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC082C6D0 # lfs f4, lbl_8053F670@sda21(r0)
    lfsx 6, 30, 0
    lis 3, 0xcc01
    lfsx 7, 4, 0
    fmuls 0, 4, 6
    .4byte 0xC062C6C0 # lfs f3, lbl_8053F660@sda21(r0)
    fmuls 1, 4, 7
    .4byte 0xC0A2C6C4 # lfs f5, lbl_8053F664@sda21(r0)
    .4byte 0xC042C6C8 # lfs f2, lbl_8053F668@sda21(r0)
    fmadds 0, 4, 7, 0
    fmsubs 1, 4, 6, 1
    fadds 0, 30, 0
    fadds 1, 31, 1
    fadds 0, 27, 0
    stfs 1, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 3, -0x8000(3)
    lfsx 6, 30, 0
    lfsx 7, 4, 0
    fmuls 0, 4, 6
    fmuls 1, 4, 7
    fmadds 0, 5, 7, 0
    fmsubs 1, 5, 6, 1
    fadds 0, 30, 0
    fadds 1, 31, 1
    fadds 0, 27, 0
    stfs 1, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 3, -0x8000(3)
    lfsx 3, 30, 0
    lfsx 6, 4, 0
    fmuls 0, 5, 3
    fmuls 1, 5, 6
    fmadds 0, 5, 6, 0
    fmsubs 1, 5, 3, 1
    fadds 0, 30, 0
    fadds 1, 31, 1
    fadds 0, 27, 0
    stfs 1, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 28, -0x8000(3)
    stfs 2, -0x8000(3)
    lfsx 3, 30, 0
    lfsx 6, 4, 0
    fmuls 0, 5, 3
    fmuls 1, 5, 6
    fmadds 0, 4, 6, 0
    fmsubs 1, 4, 3, 1
    fadds 0, 30, 0
    fadds 1, 31, 1
    fadds 0, 27, 0
    stfs 1, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 29, -0x8000(3)
    stfs 2, -0x8000(3)
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    psq_l 27, 0x18(1), 0, 0
    lfd 27, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x64(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801EA304:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x160
    bl fn_8005DD00
    addi 3, 31, 0x114
    li 4, 0x0
    bl fn_8005DC74
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801EA344:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x154
    bl fn_8005DD00
    addi 3, 31, 0xf4
    li 4, 0x0
    bl fn_8005DC74
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801EA384:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    clrlwi. 0, 4, 24
    stmw 26, 0x8(1)
    mr 26, 3
    .4byte 0x4182014C # beq .L_801EA4E8
    lis 3, lbl_804A5610@ha
    mr 30, 26
    addi 28, 3, lbl_804A5610@l
    mr 29, 26
    mr 27, 26
    li 31, 0x0
L_801EA3B8:
    lwz 3, 0x0(28)
    addi 4, 29, 0xf4
    addi 5, 30, 0x154
    bl fn_801CB270
    addi 31, 31, 0x1
    stfs 1, 0x178(27)
    cmpwi 31, 0x3
    addi 30, 30, 0xc
    addi 29, 29, 0x20
    addi 28, 28, 0x4
    addi 27, 27, 0x4
    .4byte 0x4180FFD4 # blt .L_801EA3B8
    li 3, 0x0
    li 0, -0x1
    stb 3, 0xf0(26)
    stw 3, 0x0(26)
    stb 3, 0x4(26)
    stw 0, 0x8(26)
    stw 3, 0xc(26)
    stb 3, 0x10(26)
    stw 0, 0x14(26)
    stw 3, 0x18(26)
    stb 3, 0x1c(26)
    stw 0, 0x20(26)
    stw 3, 0x24(26)
    stb 3, 0x28(26)
    stw 0, 0x2c(26)
    stw 3, 0x30(26)
    stb 3, 0x34(26)
    stw 0, 0x38(26)
    stw 3, 0x3c(26)
    stb 3, 0x40(26)
    stw 0, 0x44(26)
    stw 3, 0x48(26)
    stb 3, 0x4c(26)
    stw 0, 0x50(26)
    stw 3, 0x54(26)
    stb 3, 0x58(26)
    stw 0, 0x5c(26)
    stw 3, 0x60(26)
    stw 0, 0x64(26)
    stw 0, 0x68(26)
    stw 0, 0x6c(26)
    stw 0, 0x70(26)
    stw 3, 0x74(26)
    stw 3, 0x78(26)
    stb 3, 0x7c(26)
    stw 0, 0x80(26)
    stw 3, 0x84(26)
    stb 3, 0x88(26)
    stw 0, 0x8c(26)
    stw 3, 0x90(26)
    stb 3, 0x94(26)
    stw 0, 0x98(26)
    stw 3, 0x9c(26)
    stb 3, 0xa0(26)
    stw 0, 0xa4(26)
    stw 3, 0xa8(26)
    stb 3, 0xac(26)
    stw 0, 0xb0(26)
    stw 3, 0xb4(26)
    stb 3, 0xb8(26)
    stw 0, 0xbc(26)
    stw 3, 0xc0(26)
    stb 3, 0xc4(26)
    stw 0, 0xc8(26)
    stw 3, 0xcc(26)
    stb 3, 0xd0(26)
    stw 0, 0xd4(26)
    stw 3, 0xd8(26)
    stw 0, 0xdc(26)
    stw 0, 0xe0(26)
    stw 0, 0xe4(26)
    stw 0, 0xe8(26)
    stw 3, 0xec(26)
    .4byte 0x4800009C # b .L_801EA580
L_801EA4E8:
    lbz 4, 0xf0(26)
    li 3, 0x0
    li 0, -0x1
    xori 4, 4, 0x1
    stb 4, 0xf0(26)
    lbz 4, 0xf0(26)
    mulli 4, 4, 0x78
    add 4, 26, 4
    stw 3, 0x0(4)
    stb 3, 0x4(4)
    stw 0, 0x8(4)
    stw 3, 0xc(4)
    stb 3, 0x10(4)
    stw 0, 0x14(4)
    stw 3, 0x18(4)
    stb 3, 0x1c(4)
    stw 0, 0x20(4)
    stw 3, 0x24(4)
    stb 3, 0x28(4)
    stw 0, 0x2c(4)
    stw 3, 0x30(4)
    stb 3, 0x34(4)
    stw 0, 0x38(4)
    stw 3, 0x3c(4)
    stb 3, 0x40(4)
    stw 0, 0x44(4)
    stw 3, 0x48(4)
    stb 3, 0x4c(4)
    stw 0, 0x50(4)
    stw 3, 0x54(4)
    stb 3, 0x58(4)
    stw 0, 0x5c(4)
    stw 3, 0x60(4)
    stw 0, 0x64(4)
    stw 0, 0x68(4)
    stw 0, 0x6c(4)
    stw 0, 0x70(4)
    stw 3, 0x74(4)
L_801EA580:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801EA594:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 0, 0x60(3)
    cmpwi 0, 0x0
    .4byte 0x40810104 # ble .L_801EA6BC
L_801EA5BC:
    lwz 0, 0x60(31)
    mr 3, 31
    li 5, 0x0
    li 4, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081008C # ble .L_801EA660
L_801EA5D8:
    lwz 0, 0x8(3)
    cmpwi 0, -0x1
    .4byte 0x40820074 # bne .L_801EA654
    mulli 0, 4, 0xc
    add 5, 31, 0
    lwz 3, 0x0(5)
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_801EA638
    li 0, 0x0
    stb 0, 0x11c(3)
    lwz 3, 0x0(5)
    stb 0, 0x11d(3)
    .4byte 0x48000030 # b .L_801EA638
L_801EA60C:
    addi 0, 4, 0x1
    addi 4, 4, 0x1
    mulli 0, 0, 0xc
    add 3, 31, 0
    lwz 0, 0x0(3)
    stw 0, 0x0(5)
    lbz 0, 0x4(3)
    stb 0, 0x4(5)
    lwz 0, 0x8(3)
    stw 0, 0x8(5)
    addi 5, 5, 0xc
L_801EA638:
    lwz 3, 0x60(31)
    subi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x4180FFC8 # blt .L_801EA60C
    stw 0, 0x60(31)
    li 5, 0x1
    .4byte 0x48000010 # b .L_801EA660
L_801EA654:
    addi 3, 3, 0xc
    addi 4, 4, 0x1
    .4byte 0x4200FF7C # bdnz .L_801EA5D8
L_801EA660:
    clrlwi. 0, 5, 24
    .4byte 0x4082FF58 # bne .L_801EA5BC
    lwz 4, 0x60(31)
    cmpwi 4, 0x1
    .4byte 0x40810018 # ble .L_801EA688
    lis 5, fn_801EA8C0@ha
    mr 3, 31
    addi 6, 5, fn_801EA8C0@l
    li 5, 0xc
    bl qsort
L_801EA688:
    mr 30, 31
    li 29, 0x0
    .4byte 0x48000020 # b .L_801EA6B0
L_801EA694:
    lwz 3, 0x0(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801EA6A8
    lwz 4, 0x8(30)
    bl fn_801E8C74
L_801EA6A8:
    addi 30, 30, 0xc
    addi 29, 29, 0x1
L_801EA6B0:
    lwz 0, 0x60(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_801EA694
L_801EA6BC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801EA6D8:
    clrlwi. 4, 4, 24
    li 7, -0x1
    .4byte 0x40820024 # bne .L_801EA704
    lwz 0, 0x74(3)
    slwi 0, 0, 2
    add 4, 3, 0
    stw 5, 0x64(4)
    lwz 4, 0x74(3)
    addi 0, 4, 0x1
    stw 0, 0x74(3)
    .4byte 0x48000054 # b .L_801EA754
L_801EA704:
    lwz 0, 0x60(3)
    mr 6, 3
    li 8, 0x0
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_801EA754
L_801EA71C:
    lbz 0, 0x4(6)
    cmplw 4, 0
    .4byte 0x40820024 # bne .L_801EA748
    mulli 0, 8, 0xc
    add 4, 3, 0
    stw 5, 0x8(4)
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801EA754
    lwz 7, 0x198(3)
    .4byte 0x48000010 # b .L_801EA754
L_801EA748:
    addi 6, 6, 0xc
    addi 8, 8, 0x1
    .4byte 0x4200FFCC # bdnz .L_801EA71C
L_801EA754:
    mr 3, 7
    blr

fn_801EA75C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 25, 0x24(1)
    mr 26, 3
    mr 25, 4
    mr 27, 5
    mr 28, 6
    mr 29, 7
    mr 30, 8
    mr 4, 26
    li 31, 0x0
    lwz 9, 0x60(3)
    clrlwi 3, 25, 24
    mtctr 9
    cmpwi 9, 0x0
    .4byte 0x4081001C # ble .L_801EA7B8
L_801EA7A0:
    lbz 0, 0x4(4)
    cmplw 3, 0
    .4byte 0x41820010 # beq .L_801EA7B8
    addi 4, 4, 0xc
    addi 31, 31, 0x1
    .4byte 0x4200FFEC # bdnz .L_801EA7A0
L_801EA7B8:
    cmpw 31, 9
    .4byte 0x40800038 # bge .L_801EA7F4
    mulli 3, 31, 0xc
    lwzx 4, 26, 3
    cmplwi 4, 0x0
    .4byte 0x418200E0 # beq .L_801EA8AC
    clrlwi. 0, 27, 24
    .4byte 0x41820008 # beq .L_801EA7DC
    sth 0, 0x94(4)
L_801EA7DC:
    lwzx 3, 26, 3
    mr 4, 28
    mr 5, 29
    mr 6, 30
    bl fn_801E8EB4
    .4byte 0x480000BC # b .L_801EA8AC
L_801EA7F4:
    mulli 0, 9, 0xc
    lfs 2, 0x4(30)
    lfs 1, 0x0(30)
    .4byte 0xC002C6C0 # lfs f0, lbl_8053F660@sda21(r0)
    add 3, 26, 0
    stb 25, 0x4(3)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4653
    mr 5, 29
    addi 4, 4, 0x4f42
    addi 6, 1, 0x8
    clrlwi 7, 25, 24
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 25, 3
    .4byte 0x4180006C # blt .L_801EA8AC
    bl SpatialRegistry_GetBase
    mr 4, 25
    bl fn_801F666C
    lwz 0, 0x60(26)
    mulli 0, 0, 0xc
    stwx 3, 26, 0
    lwz 0, 0x60(26)
    mulli 0, 0, 0xc
    lwzx 0, 26, 0
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_801EA8AC
    clrlwi. 4, 27, 24
    .4byte 0x41820010 # beq .L_801EA884
    mulli 0, 31, 0xc
    lwzx 3, 26, 0
    sth 4, 0x94(3)
L_801EA884:
    lwz 0, 0x60(26)
    mr 4, 28
    mr 5, 29
    mr 6, 30
    mulli 0, 0, 0xc
    lwzx 3, 26, 0
    bl fn_801E8EB4
    lwz 3, 0x60(26)
    addi 0, 3, 0x1
    stw 0, 0x60(26)
L_801EA8AC:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801EA8C0:
    lbz 5, 0x4(3)
    li 3, 0x0
    lbz 0, 0x4(4)
    cmplw 5, 0
    .4byte 0x4080000C # bge .L_801EA8DC
    li 3, -0x1
    blr
L_801EA8DC:
    blelr
    li 3, 0x1
    blr

fn_801EA8E8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CA358@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CA358@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EA938
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x184
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801EA938:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EA970
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x190
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801EA970:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EA9A8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x19c
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801EA9A8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EA9E0
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x1a8
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801EA9E0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAA18
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x1b4
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801EAA18:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAA50
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x1c0
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801EAA50:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAA88
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x1cc
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801EAA88:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAAC0
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x1d8
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801EAAC0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAAF8
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x1e4
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801EAAF8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801EAB0C:
    lbz 4, 0x0(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_801EAB20
    subi 0, 4, 0x1
    stb 0, 0x0(3)
L_801EAB20:
    lbz 4, 0x1(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_801EAB34
    subi 0, 4, 0x1
    stb 0, 0x1(3)
L_801EAB34:
    lbz 4, 0x2(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_801EAB48
    subi 0, 4, 0x1
    stb 0, 0x2(3)
L_801EAB48:
    lbz 4, 0x3(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_801EAB5C
    subi 0, 4, 0x1
    stb 0, 0x3(3)
L_801EAB5C:
    li 0, 0x4
    mr 6, 3
    li 8, 0x0
    li 4, -0x1
    mtctr 0
L_801EAB70:
    addi 7, 8, 0x4
    lbzx 5, 3, 7
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_801EAB98
    subi 0, 5, 0x1
    stbx 0, 3, 7
    lbzx 0, 3, 7
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_801EAB98
    stw 4, 0x14(6)
L_801EAB98:
    addi 7, 8, 0x5
    lbzx 5, 3, 7
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_801EABC0
    subi 0, 5, 0x1
    stbx 0, 3, 7
    lbzx 0, 3, 7
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_801EABC0
    stw 4, 0x18(6)
L_801EABC0:
    addi 7, 8, 0x6
    lbzx 5, 3, 7
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_801EABE8
    subi 0, 5, 0x1
    stbx 0, 3, 7
    lbzx 0, 3, 7
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_801EABE8
    stw 4, 0x1c(6)
L_801EABE8:
    addi 7, 8, 0x7
    lbzx 5, 3, 7
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_801EAC10
    subi 0, 5, 0x1
    stbx 0, 3, 7
    lbzx 0, 3, 7
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_801EAC10
    stw 4, 0x20(6)
L_801EAC10:
    addi 6, 6, 0x10
    addi 8, 8, 0x4
    .4byte 0x4200FF58 # bdnz .L_801EAB70
    blr

fn_801EAC20:
    cmpwi 4, 0x0
    li 5, 0x0
    .4byte 0x41800024 # blt .L_801EAC4C
    cmpwi 4, 0x4
    .4byte 0x4080001C # bge .L_801EAC4C
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801EAC4C
    li 0, 0x18
    li 5, 0x1
    stbx 0, 3, 4
L_801EAC4C:
    mr 3, 5
    blr

fn_801EAC54:
    cmpwi 4, 0x0
    li 8, 0x0
    .4byte 0x41800104 # blt .L_801EAD60
    li 6, 0x0
    .4byte 0x418000B0 # blt .L_801EAD14
    li 0, 0x4
    mr 5, 6
    mr 7, 3
    mtctr 0
L_801EAC78:
    addi 0, 5, 0x4
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801EAC9C
    lwz 0, 0x14(7)
    cmpw 0, 4
    .4byte 0x4082000C # bne .L_801EAC9C
    li 6, 0x1
    .4byte 0x4800007C # b .L_801EAD14
L_801EAC9C:
    addi 0, 5, 0x5
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801EACC0
    lwz 0, 0x18(7)
    cmpw 0, 4
    .4byte 0x4082000C # bne .L_801EACC0
    li 6, 0x1
    .4byte 0x48000058 # b .L_801EAD14
L_801EACC0:
    addi 0, 5, 0x6
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801EACE4
    lwz 0, 0x1c(7)
    cmpw 0, 4
    .4byte 0x4082000C # bne .L_801EACE4
    li 6, 0x1
    .4byte 0x48000034 # b .L_801EAD14
L_801EACE4:
    addi 0, 5, 0x7
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801EAD08
    lwz 0, 0x20(7)
    cmpw 0, 4
    .4byte 0x4082000C # bne .L_801EAD08
    li 6, 0x1
    .4byte 0x48000010 # b .L_801EAD14
L_801EAD08:
    addi 7, 7, 0x10
    addi 5, 5, 0x4
    .4byte 0x4200FF68 # bdnz .L_801EAC78
L_801EAD14:
    clrlwi. 0, 6, 24
    .4byte 0x40820048 # bne .L_801EAD60
    li 0, 0x10
    li 7, 0x0
    mtctr 0
L_801EAD28:
    addi 0, 7, 0x4
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_801EAD58
    add 5, 3, 7
    li 6, 0x18
    slwi 0, 7, 2
    stb 6, 0x4(5)
    add 3, 3, 0
    li 8, 0x1
    stw 4, 0x14(3)
    .4byte 0x4800000C # b .L_801EAD60
L_801EAD58:
    addi 7, 7, 0x1
    .4byte 0x4200FFCC # bdnz .L_801EAD28
L_801EAD60:
    mr 3, 8
    blr

fn_801EAD68:
    li 4, 0x0
    li 0, 0x2
    stb 4, 0x0(3)
    mr 5, 3
    li 7, 0x0
    stb 4, 0x1(3)
    stb 4, 0x2(3)
    stb 4, 0x3(3)
    mtctr 0
    li 0, -0x1
L_801EAD90:
    addi 6, 7, 0x4
    addi 7, 7, 0x8
    add 6, 3, 6
    stb 4, 0x0(6)
    stw 0, 0x14(5)
    stb 4, 0x1(6)
    stw 0, 0x18(5)
    stb 4, 0x2(6)
    stw 0, 0x1c(5)
    stb 4, 0x3(6)
    stw 0, 0x20(5)
    stb 4, 0x4(6)
    stw 0, 0x24(5)
    stb 4, 0x5(6)
    stw 0, 0x28(5)
    stb 4, 0x6(6)
    stw 0, 0x2c(5)
    stb 4, 0x7(6)
    stw 0, 0x30(5)
    addi 5, 5, 0x20
    .4byte 0x4200FFB0 # bdnz .L_801EAD90
    blr

fn_801EADE8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CA5D8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CA5D8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAE38
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
L_801EAE38:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAE70
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
L_801EAE70:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAEA8
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
L_801EAEA8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAEE0
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
L_801EAEE0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAF18
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
L_801EAF18:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAF50
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
L_801EAF50:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAF88
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
L_801EAF88:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAFC0
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
L_801EAFC0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801EAFF8
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
L_801EAFF8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801EB00C:
    stwu 1, -0x30(1)
    mflr 0
    lfs 3, 0x8(4)
    .4byte 0xC0C2C6D8 # lfs f6, lbl_8053F678@sda21(r0)
    lfs 2, 0x14(3)
    stw 0, 0x34(1)
    fcmpo cr0, 3, 2
    stw 31, 0x2c(1)
    mr 31, 5
    stfs 6, 0x14(1)
    stfs 6, 0x18(1)
    stfs 6, 0x1c(1)
    cror eq, lt, eq
    .4byte 0x40820160 # bne .L_801EB1A0
    lfs 5, 0x0(4)
    lfs 4, 0x0(3)
    lfs 3, 0x4(4)
    lfs 2, 0x4(3)
    fsubs 4, 5, 4
    fsubs 2, 3, 2
    fmuls 3, 4, 4
    fmuls 2, 2, 2
    fadds 8, 3, 2
    fcmpo cr0, 8, 6
    .4byte 0x4081000C # ble .L_801EB078
    frsqrte 2, 8
    fmuls 8, 2, 8
L_801EB078:
    lfs 4, 0x18(3)
    fcmpo cr0, 8, 4
    cror eq, lt, eq
    .4byte 0x4082011C # bne .L_801EB1A0
    lfs 2, 0x1c(3)
    .4byte 0xC0C2C6D8 # lfs f6, lbl_8053F678@sda21(r0)
    fcmpu cr0, 4, 2
    .4byte 0x41820018 # beq .L_801EB0AC
    fsubs 2, 2, 4
    .4byte 0xC062C6DC # lfs f3, lbl_8053F67C@sda21(r0)
    fsubs 4, 8, 4
    fdivs 2, 3, 2
    fmuls 6, 4, 2
L_801EB0AC:
    .4byte 0xC042C6DC # lfs f2, lbl_8053F67C@sda21(r0)
    fcmpo cr0, 6, 2
    .4byte 0x4081000C # ble .L_801EB0C0
    fmr 6, 2
    .4byte 0x48000014 # b .L_801EB0D0
L_801EB0C0:
    .4byte 0xC042C6D8 # lfs f2, lbl_8053F678@sda21(r0)
    fcmpo cr0, 6, 2
    .4byte 0x40800008 # bge .L_801EB0D0
    fmr 6, 2
L_801EB0D0:
    psq_l 3, 0x0(3), 0, 0
    lis 5, lbl_80539D44@ha
    psq_l 2, 0x0(4), 0, 0
    .4byte 0xC082C6D8 # lfs f4, lbl_8053F678@sda21(r0)
    ps_sub 10, 3, 2
    psq_l 7, 0x8(3), 1, 0
    psq_l 5, 0x8(4), 1, 0
    .4byte 0xC062C6E0 # lfs f3, lbl_8053F680@sda21(r0)
    ps_mul 12, 10, 10
    lfs 2, lbl_80539D44@l(5)
    ps_sub 9, 7, 5
    lfs 7, 0x20(3)
    lfs 5, 0x24(3)
    fmuls 2, 3, 2
    ps_madd 11, 4, 4, 12
    psq_st 9, 0x1c(1), 1, 0
    fsubs 3, 5, 7
    psq_st 10, 0x14(1), 0, 0
    ps_sum0 11, 11, 12, 12
    fmadds 6, 6, 3, 7
    stfs 4, 0x1c(1)
    fcmpo cr0, 11, 2
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_801EB180
    fcmpo cr0, 11, 4
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801EB144
    fmr 0, 11
    .4byte 0x48000028 # b .L_801EB168
L_801EB144:
    frsqrte 5, 11
    .4byte 0xC082C6E4 # lfs f4, lbl_8053F684@sda21(r0)
    .4byte 0xC042C6E8 # lfs f2, lbl_8053F688@sda21(r0)
    frsp 5, 5
    fmuls 3, 5, 5
    fmuls 4, 4, 5
    fnmsubs 2, 11, 3, 2
    fmuls 2, 4, 2
    fmr 0, 2
L_801EB168:
    psq_l 2, 0x14(1), 0, 0
    psq_l 3, 0x1c(1), 1, 0
    ps_muls0 2, 2, 0
    ps_muls0 0, 3, 0
    psq_st 2, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_801EB180:
    fsubs 1, 8, 6
    psq_l 2, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    fsel 1, 1, 6, 8
    ps_muls0 2, 2, 1
    ps_muls0 0, 0, 1
    psq_st 2, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_801EB1A0:
    addi 5, 1, 0x8
    bl fn_801EB1F4
    lfs 0, 0x14(1)
    lfs 1, 0x18(1)
    stfs 0, 0x0(31)
    lfs 0, 0x1c(1)
    stfs 1, 0x4(31)
    stfs 0, 0x8(31)
    psq_l 1, 0x0(31), 0, 0
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(31), 0, 0
    psq_l 1, 0x8(31), 1, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(31), 1, 0
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801EB1F4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    .4byte 0xC062C6D8 # lfs f3, lbl_8053F678@sda21(r0)
    mr 29, 3
    mr 30, 4
    mr 31, 5
    stfs 3, 0x0(5)
    lfs 1, 0x8(4)
    lfs 0, 0x14(3)
    stfs 3, 0x4(5)
    fcmpo cr0, 1, 0
    stfs 3, 0x8(5)
    cror eq, lt, eq
    .4byte 0x40820194 # bne .L_801EB3E4
    lfs 1, 0x0(30)
    lfs 4, 0x0(29)
    lfs 0, 0x4(30)
    lfs 2, 0x4(29)
    fsubs 5, 1, 4
    lfs 1, 0x1c(29)
    fsubs 4, 0, 2
    fmuls 2, 5, 5
    fmuls 0, 1, 1
    fmuls 1, 4, 4
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082015C # bne .L_801EB3E4
    lha 0, 0x30(29)
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80539D44@ha
    .4byte 0xC022C6E0 # lfs f1, lbl_8053F680@sda21(r0)
    neg 0, 0
    lfs 0, lbl_80539D44@l(3)
    addi 4, 4, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    fmuls 0, 1, 0
    add 3, 4, 0
    lfsx 7, 4, 0
    lfs 6, 0x4(3)
    fmuls 2, 4, 7
    fmuls 1, 4, 6
    fmsubs 31, 5, 6, 2
    fmadds 30, 5, 7, 1
    fmuls 1, 30, 30
    fmadds 29, 31, 31, 1
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801EB2EC
    fmr 31, 3
    .4byte 0xC3C2C6EC # lfs f30, lbl_8053F68C@sda21(r0)
    .4byte 0x480000B4 # b .L_801EB39C
L_801EB2EC:
    fcmpo cr0, 29, 3
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801EB300
    fmr 0, 29
    .4byte 0x48000028 # b .L_801EB324
L_801EB300:
    frsqrte 3, 29
    .4byte 0xC042C6E4 # lfs f2, lbl_8053F684@sda21(r0)
    .4byte 0xC002C6E8 # lfs f0, lbl_8053F688@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 29, 1, 0
    fmuls 0, 2, 0
    fmuls 0, 29, 0
L_801EB324:
    stfs 0, 0x8(1)
    addi 3, 1, 0x8
    lfs 1, 0x1c(29)
    lfs 2, 0x28(29)
    bl fn_801CD950
    lis 3, lbl_80539D44@ha
    .4byte 0xC022C6E0 # lfs f1, lbl_8053F680@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801EB390
    .4byte 0xC002C6D8 # lfs f0, lbl_8053F678@sda21(r0)
    fcmpo cr0, 29, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801EB368
    .4byte 0x48000024 # b .L_801EB388
L_801EB368:
    frsqrte 3, 29
    .4byte 0xC042C6E4 # lfs f2, lbl_8053F684@sda21(r0)
    .4byte 0xC002C6E8 # lfs f0, lbl_8053F688@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 29, 1, 0
    fmuls 29, 2, 0
L_801EB388:
    fmuls 31, 31, 29
    fmuls 30, 30, 29
L_801EB390:
    lfs 0, 0x8(1)
    fmuls 31, 31, 0
    fmuls 30, 30, 0
L_801EB39C:
    lfs 1, 0x0(29)
    lfs 0, 0x4(29)
    fadds 3, 31, 1
    lfs 1, 0x8(30)
    fadds 4, 30, 0
    psq_l 2, 0x0(30), 0, 0
    stfs 1, 0x14(1)
    psq_l 0, 0x8(30), 1, 0
    stfs 3, 0xc(1)
    psq_l 1, 0x14(1), 1, 0
    stfs 4, 0x10(1)
    ps_sub 1, 1, 0
    lfs 0, 0x2c(29)
    psq_l 3, 0xc(1), 0, 0
    ps_sub 2, 3, 2
    psq_st 2, 0x0(31), 0, 0
    psq_st 1, 0x8(31), 1, 0
    stfs 0, 0x8(31)
L_801EB3E4:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x64(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801EB418:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    mr 28, 4
    mr 26, 3
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    lha 3, 0x5e(3)
    addi 0, 3, 0x16a
    sth 0, 0x5e(26)
    lfs 0, 0x54(26)
    lfs 1, 0x58(26)
    fcmpu cr0, 0, 1
    .4byte 0x4182001C # beq .L_801EB4A4
    fcmpo cr0, 0, 1
    .4byte 0xC042C6F0 # lfs f2, lbl_8053F690@sda21(r0)
    .4byte 0x40810008 # ble .L_801EB49C
    .4byte 0xC042C6F4 # lfs f2, lbl_8053F694@sda21(r0)
L_801EB49C:
    addi 3, 26, 0x54
    bl fn_801CD950
L_801EB4A4:
    lbz 0, 0x5c(26)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801EB4C8
    .4byte 0xC022C6D8 # lfs f1, lbl_8053F678@sda21(r0)
    lfs 0, 0x54(26)
    fcmpu cr0, 1, 0
    .4byte 0x40820008 # bne .L_801EB4C8
    li 3, 0x1
L_801EB4C8:
    lfs 0, 0x54(26)
    clrlwi 4, 3, 24
    neg 0, 4
    lis 3, lbl_8052EBC0@ha
    fctiwz 0, 0
    or 0, 0, 4
    .4byte 0xC362C6D8 # lfs f27, lbl_8053F678@sda21(r0)
    mr 29, 26
    lfs 28, 0x8(28)
    srwi 31, 0, 31
    stfd 0, 0x18(1)
    addi 25, 3, lbl_8052EBC0@l
    lfs 29, 0x4(28)
    li 27, 0x0
    lwz 0, 0x1c(1)
    li 30, 0x0
    .4byte 0xC3C2C6F8 # lfs f30, lbl_8053F698@sda21(r0)
    lfs 31, 0x0(28)
    clrlwi 28, 0, 24
L_801EB514:
    lha 0, 0x5e(26)
    add 0, 0, 30
    stfs 28, 0x10(1)
    extsh 0, 0
    neg 0, 0
    rlwinm 0, 0, 30, 18, 28
    add 3, 25, 0
    lfs 2, 0x0(3)
    lfs 3, 0x4(3)
    fmuls 0, 30, 2
    fmuls 1, 30, 3
    fmsubs 0, 27, 3, 0
    fmadds 1, 27, 2, 1
    fadds 0, 31, 0
    fadds 1, 29, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 3, 0x34(29)
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_801EB5A4
    cmplwi 31, 0x0
    .4byte 0x41820020 # beq .L_801EB588
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x34(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x34(29)
    .4byte 0x48000020 # b .L_801EB5A4
L_801EB588:
    lwz 5, 0xc(26)
    addi 4, 1, 0x8
    lwz 6, 0x10(26)
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x34(29)
    stb 28, 0xbb(3)
L_801EB5A4:
    cmpwi 27, 0x0
    .4byte 0x40820050 # bne .L_801EB5F8
    lwz 3, 0x50(26)
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_801EB5F8
    cmplwi 31, 0x0
    .4byte 0x41820020 # beq .L_801EB5DC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x50(26)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x50(26)
    .4byte 0x48000020 # b .L_801EB5F8
L_801EB5DC:
    lwz 5, 0xc(26)
    addi 4, 1, 0x8
    lwz 6, 0x10(26)
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x50(26)
    stb 28, 0xbb(3)
L_801EB5F8:
    addi 27, 27, 0x1
    addi 29, 29, 0x4
    cmpwi 27, 0x7
    addi 30, 30, 0x1f70
    .4byte 0x4180FF0C # blt .L_801EB514
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_801EB648:
    lfs 0, 0x54(3)
    li 4, 0x0
    stwu 1, -0x10(1)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi. 0, 0, 24
    .4byte 0x418200A0 # beq .L_801EB704
    lwz 0, 0x34(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801EB67C
    li 4, 0x1
    .4byte 0x4800008C # b .L_801EB704
L_801EB67C:
    addi 3, 3, 0x4
    lwz 0, 0x34(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801EB694
    li 4, 0x1
    .4byte 0x48000074 # b .L_801EB704
L_801EB694:
    lwz 0, 0x38(3)
    addi 3, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801EB6AC
    li 4, 0x1
    .4byte 0x4800005C # b .L_801EB704
L_801EB6AC:
    lwz 0, 0x38(3)
    addi 3, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801EB6C4
    li 4, 0x1
    .4byte 0x48000044 # b .L_801EB704
L_801EB6C4:
    lwz 0, 0x38(3)
    addi 3, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801EB6DC
    li 4, 0x1
    .4byte 0x4800002C # b .L_801EB704
L_801EB6DC:
    lwz 0, 0x38(3)
    addi 3, 3, 0x4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801EB6F4
    li 4, 0x1
    .4byte 0x48000014 # b .L_801EB704
L_801EB6F4:
    lwz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_801EB704
    li 4, 0x1
L_801EB704:
    mr 3, 4
    addi 1, 1, 0x10
    blr

fn_801EB710:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    lfs 28, 0x0(5)
    mr 29, 3
    lis 3, lbl_8052EBC0@ha
    lfs 29, 0x4(5)
    stfs 28, 0x0(29)
    li 27, 0x0
    lfs 30, 0x8(5)
    mr 30, 4
    stfs 29, 0x4(29)
    mr 26, 29
    .4byte 0xC362C6D8 # lfs f27, lbl_8053F678@sda21(r0)
    addi 28, 3, lbl_8052EBC0@l
    stfs 30, 0x8(29)
    li 31, 0x0
    .4byte 0xC3E2C6F8 # lfs f31, lbl_8053F698@sda21(r0)
    stb 27, 0x5c(29)
    lfs 0, 0x54(29)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlwi 25, 0, 24
L_801EB79C:
    lha 0, 0x5e(29)
    add 0, 0, 27
    stfs 30, 0x10(1)
    extsh 0, 0
    neg 0, 0
    rlwinm 0, 0, 30, 18, 28
    add 3, 28, 0
    lfs 2, 0x0(3)
    lfs 3, 0x4(3)
    fmuls 0, 31, 2
    fmuls 1, 31, 3
    fmsubs 0, 27, 3, 0
    fmadds 1, 27, 2, 1
    fadds 0, 28, 0
    fadds 1, 29, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 0, 0x34(26)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_801EB82C
    addi 0, 31, 0x233
    .4byte 0xC022C6DC # lfs f1, lbl_8053F67C@sda21(r0)
    lwz 6, 0xc(29)
    mr 3, 30
    lwz 7, 0x10(29)
    addi 4, 1, 0x8
    clrlwi 5, 0, 16
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x34(26)
    lwz 3, 0x34(26)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801EB82C
    stb 25, 0xbb(3)
L_801EB82C:
    cmpwi 31, 0x0
    .4byte 0x4082004C # bne .L_801EB87C
    lwz 0, 0x50(29)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_801EB87C
    .4byte 0xC022C6DC # lfs f1, lbl_8053F67C@sda21(r0)
    mr 3, 30
    lwz 6, 0xc(29)
    addi 4, 1, 0x8
    lwz 7, 0x10(29)
    li 5, 0x23a
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x50(29)
    lwz 3, 0x50(29)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801EB87C
    stb 25, 0xbb(3)
L_801EB87C:
    addi 31, 31, 0x1
    addi 26, 26, 0x4
    cmpwi 31, 0x7
    addi 27, 27, 0x1f70
    .4byte 0x4180FF10 # blt .L_801EB79C
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

dtor_801EB8CC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x4182003C # beq .L_801EB92C
    li 30, 0x0
    mr 31, 28
L_801EB8FC:
    lwz 3, 0x34(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x7
    .4byte 0x4180FFEC # blt .L_801EB8FC
    lwz 3, 0x50(28)
    bl fn_801EE434
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_801EB92C
    mr 3, 28
    bl dtor_80084580
L_801EB92C:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_801E98D8
    .4byte fn_801EA8E8
    .4byte fn_801EADE8

