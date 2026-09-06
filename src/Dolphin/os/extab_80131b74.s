# Fresh project-wide gap hunt continuation: 18 functions, 6,976 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80006830
etb_80006830:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006830, 8

.global etb_80006838
etb_80006838:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006838, 8

.global etb_80006840
etb_80006840:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006840, 8

.global etb_80006848
etb_80006848:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006848, 8

.global etb_80006850
etb_80006850:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006850, 8

.global etb_80006858
etb_80006858:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006858, 8

.global etb_80006860
etb_80006860:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006860, 8

.global etb_80006868
etb_80006868:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80006868, 8

.global etb_80006870
etb_80006870:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006870, 8

.global etb_80006878
etb_80006878:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006878, 8

.global etb_80006880
etb_80006880:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006880, 8

.global etb_80006888
etb_80006888:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006888, 8

.global etb_80006890
etb_80006890:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006890, 8

.section extabindex, "a"
.balign 4
.global eti_80013078
eti_80013078:
    .4byte fn_80131B74
    .4byte 0x00000224
    .4byte etb_80006830
.size eti_80013078, 12

.global eti_80013084
eti_80013084:
    .4byte fn_80131D98
    .4byte 0x00000098
    .4byte etb_80006838
.size eti_80013084, 12

.global eti_80013090
eti_80013090:
    .4byte fn_80131E30
    .4byte 0x00000090
    .4byte etb_80006840
.size eti_80013090, 12

.global eti_8001309C
eti_8001309C:
    .4byte fn_80131F0C
    .4byte 0x00000060
    .4byte etb_80006848
.size eti_8001309C, 12

.global eti_800130A8
eti_800130A8:
    .4byte fn_80131F6C
    .4byte 0x0000004C
    .4byte etb_80006850
.size eti_800130A8, 12

.global eti_800130B4
eti_800130B4:
    .4byte fn_80131FB8
    .4byte 0x00000224
    .4byte etb_80006858
.size eti_800130B4, 12

.global eti_800130C0
eti_800130C0:
    .4byte fn_801321E4
    .4byte 0x00000270
    .4byte etb_80006860
.size eti_800130C0, 12

.global eti_800130CC
eti_800130CC:
    .4byte fn_80132454
    .4byte 0x0000068C
    .4byte etb_80006868
.size eti_800130CC, 12

.global eti_800130D8
eti_800130D8:
    .4byte fn_80132B10
    .4byte 0x00000308
    .4byte etb_80006870
.size eti_800130D8, 12

.global eti_800130E4
eti_800130E4:
    .4byte fn_80132E18
    .4byte 0x00000148
    .4byte etb_80006878
.size eti_800130E4, 12

.global eti_800130F0
eti_800130F0:
    .4byte fn_80132F60
    .4byte 0x0000056C
    .4byte etb_80006880
.size eti_800130F0, 12

.global eti_800130FC
eti_800130FC:
    .4byte fn_801334CC
    .4byte 0x00000158
    .4byte etb_80006888
.size eti_800130FC, 12

.global eti_80013108
eti_80013108:
    .4byte fn_80133624
    .4byte 0x00000090
    .4byte etb_80006890
.size eti_80013108, 12

.text
.balign 4
.global fn_80131B74
.global fn_80131D98
.global fn_80131E30
.global fn_80131EC0
.global fn_80131EE4
.global fn_80131EF8
.global fn_80131F0C
.global fn_80131F6C
.global fn_80131FB8
.global fn_801321DC
.global fn_801321E4
.global fn_80132454
.global fn_80132AE0
.global fn_80132B10
.global fn_80132E18
.global fn_80132F60
.global fn_801334CC
.global fn_80133624

fn_80131B74:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BE408@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BE408@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131BC4
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
L_80131BC4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131BFC
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
L_80131BFC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131C34
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
L_80131C34:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131C6C
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
L_80131C6C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131CA4
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
L_80131CA4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131CDC
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
L_80131CDC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131D14
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
L_80131D14:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131D4C
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
L_80131D4C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80131D84
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
L_80131D84:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80131D98:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4f50
    addi 4, 4, 0x474c
    bl fn_801F7A08
    mr. 31, 3
    .4byte 0x4080000C # bge .L_80131DC8
    li 3, 0x0
    .4byte 0x48000058 # b .L_80131E1C
L_80131DC8:
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80131DE4
    li 3, 0x0
    .4byte 0x4800003C # b .L_80131E1C
L_80131DE4:
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4f50
    cmplwi 0, 0x474c
    .4byte 0x4182000C # beq .L_80131DFC
    li 3, 0x0
    .4byte 0x48000024 # b .L_80131E1C
L_80131DFC:
    lwz 12, 0x0(3)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
L_80131E1C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80131E30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x41800010 # blt .L_80131E5C
    lwz 0, 0x0(30)
    cmpw 31, 0
    .4byte 0x4180000C # blt .L_80131E64
L_80131E5C:
    li 3, 0x0
    .4byte 0x48000048 # b .L_80131EA8
L_80131E64:
    bl SpatialRegistry_GetBase
    slwi 0, 31, 2
    add 4, 30, 0
    lwz 4, 0x4(4)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80131E88
    li 3, 0x0
    .4byte 0x48000024 # b .L_80131EA8
L_80131E88:
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4641
    cmplwi 0, 0x5a52
    .4byte 0x41820014 # beq .L_80131EA8
    subis 0, 4, 0x4f50
    cmplwi 0, 0x474c
    .4byte 0x41820008 # beq .L_80131EA8
    li 3, 0x0
L_80131EA8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80131EC0:
    lwz 0, 0x0(3)
    lwz 5, 0x198(4)
    slwi 0, 0, 2
    add 4, 3, 0
    stw 5, 0x4(4)
    lwz 4, 0x0(3)
    addi 0, 4, 0x1
    stw 0, 0x0(3)
    blr

fn_80131EE4:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    blr

fn_80131EF8:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    blr

fn_80131F0C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x880D8F20 # lbz r0, lbl_8053AAE0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820034 # bne .L_80131F54
    li 0, 0x0
    lis 3, lbl_804BE514@ha
    stwu 0, lbl_804BE514@l(3)
    lis 4, fn_80131F6C@ha
    lis 5, lbl_804BE508@ha
    stw 0, 0x4(3)
    addi 4, 4, fn_80131F6C@l
    addi 5, 5, lbl_804BE508@l
    stw 0, 0x8(3)
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D8F20 # stb r0, lbl_8053AAE0@sda21(r0)
L_80131F54:
    lwz 0, 0x14(1)
    lis 3, lbl_804BE514@ha
    addi 3, 3, lbl_804BE514@l
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80131F6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820020 # beq .L_80131FA0
    li 5, 0x0
    extsh. 0, 4
    stw 5, 0x0(31)
    stw 5, 0x4(31)
    stw 5, 0x8(31)
    .4byte 0x40810008 # ble .L_80131FA0
    bl dtor_80084580
L_80131FA0:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80131FB8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BE508@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BE508@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80132008
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_80132008:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80132040
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80132040:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80132078
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_80132078:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801320B0
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801320B0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801320E8
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801320E8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80132120
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80132120:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80132158
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_80132158:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80132190
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80132190:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801321C8
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x78
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801321C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801321DC:
    lwz 3, 0x234(3)
    blr

fn_801321E4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 0, 0x234(3)
    cmplwi 0, 0x1a
    .4byte 0x41810244 # bgt .L_80132440
    lis 4, jumptable_8049EBEC@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_8049EBEC@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 0, 0x238(3)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80132238
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    .4byte 0x4800020C # b .L_80132440
L_80132238:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    .4byte 0xC0029D78 # lfs f0, lbl_8053CD18@sda21(r0)
    lwz 4, 0x24(4)
    stb 5, 0x179(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfs 2, 0x10(3)
    lwz 4, 0x24(4)
    fadds 1, 0, 2
    lfs 3, 0xc(3)
    lbz 0, 0x7f5(4)
    fsubs 0, 2, 0
    cmplwi 0, 0x0
    .4byte 0x408201D4 # bne .L_80132440
    stb 5, 0x7f4(4)
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 3, 0x808(4)
    stfs 0, 0x80c(4)
    stfs 3, 0x810(4)
    stfs 1, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x480001AC # b .L_80132440
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x179(3)
    bl SpatialRegistry_GetBase
    lis 4, 0x4241
    addi 4, 4, 0x5249
    bl fn_801F7A08
    mr. 31, 3
    .4byte 0x41800028 # blt .L_801322E4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801322E4
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
L_801322E4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0xc(1)
    .4byte 0xC0029D78 # lfs f0, lbl_8053CD18@sda21(r0)
    lwz 3, 0x24(3)
    fadds 1, 1, 0
    .4byte 0xC0029D7C # lfs f0, lbl_8053CD1C@sda21(r0)
    lbz 0, 0x840(3)
    lfs 4, 0x8(1)
    cmplwi 0, 0x0
    fadds 3, 0, 1
    fsubs 2, 1, 0
    stfs 1, 0xc(1)
    .4byte 0x4082012C # bne .L_80132440
    li 0, 0x1
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC0029D80 # lfs f0, lbl_8053CD20@sda21(r0)
    stfs 4, 0x844(3)
    stfs 2, 0x848(3)
    stfs 4, 0x84c(3)
    stfs 3, 0x850(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x480000FC # b .L_80132440
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    .4byte 0xC0029D78 # lfs f0, lbl_8053CD18@sda21(r0)
    lwz 4, 0x24(4)
    stb 5, 0x179(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(3)
    lwz 4, 0x24(4)
    fadds 3, 0, 1
    lfs 4, 0xc(3)
    lbz 0, 0x840(4)
    fsubs 2, 1, 0
    cmplwi 0, 0x0
    .4byte 0x408200C4 # bne .L_80132440
    stb 5, 0x840(4)
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    stfs 4, 0x844(4)
    .4byte 0xC0029D80 # lfs f0, lbl_8053CD20@sda21(r0)
    stfs 2, 0x848(4)
    stfs 4, 0x84c(4)
    stfs 3, 0x850(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
    .4byte 0x48000098 # b .L_80132440
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x7f4(3)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_80132440
    li 0, 0x1
    stb 0, 0x7f5(3)
    .4byte 0x48000078 # b .L_80132440
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    .4byte 0x48000064 # b .L_80132440
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x1
    .4byte 0xC0029D78 # lfs f0, lbl_8053CD18@sda21(r0)
    lwz 4, 0x24(4)
    stb 5, 0x179(4)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(3)
    lwz 4, 0x24(4)
    fadds 3, 0, 1
    lfs 4, 0xc(3)
    lbz 0, 0x840(4)
    fsubs 2, 1, 0
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80132440
    stb 5, 0x840(4)
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    stfs 4, 0x844(4)
    .4byte 0xC0029D80 # lfs f0, lbl_8053CD20@sda21(r0)
    stfs 2, 0x848(4)
    stfs 4, 0x84c(4)
    stfs 3, 0x850(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
L_80132440:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80132454:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    mr 31, 3
    cmplwi 4, 0x1a
    stw 4, 0x234(3)
    .4byte 0x41810644 # bgt .L_80132AC0
    lis 5, jumptable_8049EC58@ha
    slwi 0, 4, 2
    addi 4, 5, jumptable_8049EC58@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 5, 0x31
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 5, 0x32
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd9
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480005C4 # b .L_80132AC0
    li 0, -0x1
    stw 0, 0x23c(31)
    .4byte 0x480005B8 # b .L_80132AC0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 5, 0x31
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 5, 0x32
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd9
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000550 # b .L_80132AC0
    psq_l 2, 0xc(31), 0, 0
    addi 4, 1, 0x14
    lfs 0, 0x14(31)
    li 5, 0x184
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 6, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x1c(1)
    li 10, 0x1
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x288(31)
    li 0, 0x1
    lis 4, 0x4
    mr 3, 31
    stb 0, 0x11d(31)
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480004F4 # b .L_80132AC0
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x238(31)
    li 3, 0x2b5
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_80132604
    li 3, 0x2b6
L_80132604:
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    clrlwi 4, 3, 16
    .4byte 0xC0029D84 # lfs f0, lbl_8053CD24@sda21(r0)
    addi 6, 1, 0x44
    stfs 1, 0x44(1)
    li 3, 0x0
    li 7, 0x4022
    stfs 0, 0x48(1)
    stfs 1, 0x4c(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000488 # b .L_80132AC0
    li 4, 0x3b
    bl fn_801F0D20
    .4byte 0x4800047C # b .L_80132AC0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x21
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000460 # b .L_80132AC0
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 6, 1, 0x38
    .4byte 0xC0029D84 # lfs f0, lbl_8053CD24@sda21(r0)
    li 3, 0x0
    stfs 1, 0x38(1)
    li 4, 0x2b0
    li 7, 0x4022
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x48000408 # b .L_80132AC0
    addi 3, 31, 0x250
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xef
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480003D0 # b .L_80132AC0
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC0029D70 # lfs f0, lbl_8053CD10@sda21(r0)
    psq_st 1, 0x50(1), 0, 0
    lfs 1, 0x54(1)
    stfs 2, 0x58(1)
    fsubs 0, 1, 0
    stfs 0, 0x54(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x414c
    lwz 5, 0x4(31)
    addi 4, 4, 0x4345
    addi 6, 1, 0x50
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000388 # b .L_80132AC0
    addi 3, 31, 0x250
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    bl fn_80119DD0
    li 4, 0x3c
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    .4byte 0x48000330 # b .L_80132AC0
    .4byte 0xC0029D50 # lfs f0, lbl_8053CCF0@sda21(r0)
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4241
    addi 4, 4, 0x5249
    bl fn_801F7A08
    mr. 30, 3
    .4byte 0x41800028 # blt .L_801327E0
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801327E0
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
L_801327E0:
    lfs 0, 0xc(1)
    li 30, 0x0
    .4byte 0xC0829D64 # lfs f4, lbl_8053CD04@sda21(r0)
    lfs 2, 0x8(1)
    fadds 3, 0, 4
    .4byte 0xC0229D68 # lfs f1, lbl_8053CD08@sda21(r0)
    .4byte 0xC0029D6C # lfs f0, lbl_8053CD0C@sda21(r0)
    .4byte 0xC3E29D70 # lfs f31, lbl_8053CD10@sda21(r0)
    stfs 3, 0xc(1)
    stfs 2, 0xc(31)
    stfs 3, 0x10(31)
    stfs 1, 0x14(31)
    lfs 2, 0xc(1)
    lfs 1, 0x8(1)
    fadds 2, 2, 4
    fsubs 0, 1, 0
    stfs 2, 0xc(1)
    stfs 0, 0x8(1)
L_80132828:
    lfs 0, 0x8(1)
    mr 3, 30
    li 4, 0x3
    fadds 0, 0, 31
    stfs 0, 0x8(1)
    bl fn_80230BF4
    mr 3, 30
    addi 4, 1, 0x8
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 30
    addi 4, 1, 0x8
    li 5, 0xff
    bl fn_802303FC
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFB0 # blt .L_80132828
    .4byte 0x48000244 # b .L_80132AC0
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 6, 1, 0x2c
    .4byte 0xC0029D84 # lfs f0, lbl_8053CD24@sda21(r0)
    li 3, 0x0
    stfs 1, 0x2c(1)
    li 4, 0x2b8
    li 7, 0x4022
    stfs 0, 0x30(1)
    stfs 1, 0x34(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x480001EC # b .L_80132AC0
    addi 3, 31, 0x250
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xef
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001B4 # b .L_80132AC0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000188 # b .L_80132AC0
    addi 3, 31, 0x250
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    .4byte 0x48000164 # b .L_80132AC0
    addi 3, 31, 0x250
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 6, 1, 0x20
    .4byte 0xC0029D84 # lfs f0, lbl_8053CD24@sda21(r0)
    li 3, 0x0
    stfs 1, 0x20(1)
    li 4, 0x2b9
    li 7, 0x4022
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x480000EC # b .L_80132AC0
    lwz 4, 0x288(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_801329F8
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_801329F8:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 5, 0x31
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 5, 0x32
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd9
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    lis 4, 0x4
    stb 0, 0x11d(31)
    mr 3, 31
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000048 # b .L_80132AC0
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    bl fn_8011921C
    bl fn_80118384
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800002C # b .L_80132AC0
    bl GetRoomConfigRecord
    lwz 4, 0x248(31)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000014 # b .L_80132AC0
    bl fn_8011921C
    bl fn_80118384
    mr 3, 31
    bl fn_801F3668
L_80132AC0:
    psq_l 31, 0x78(1), 0, 0
    lwz 0, 0x84(1)
    lfd 31, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80132AE0:
    lwz 0, 0x234(3)
    cmpwi 0, 0x19
    .4byte 0x40800010 # bge .L_80132AF8
    cmpwi 0, 0x15
    .4byte 0x41820010 # beq .L_80132B00
    .4byte 0x48000014 # b .L_80132B08
L_80132AF8:
    cmpwi 0, 0x1b
    .4byte 0x4080000C # bge .L_80132B08
L_80132B00:
    li 3, 0x1
    blr
L_80132B08:
    li 3, 0x0
    blr

fn_80132B10:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0xe
    .4byte 0x408202D4 # bne .L_80132E04
    bl fn_8011921C
    lwz 4, 0x238(31)
    lwz 0, 0x8(3)
    cmpwi 4, 0x1
    .4byte 0x418201F8 # beq .L_80132D3C
    .4byte 0x408002BC # bge .L_80132E04
    cmpwi 4, 0x0
    .4byte 0x40800008 # bge .L_80132B58
    .4byte 0x480002B0 # b .L_80132E04
L_80132B58:
    lis 3, lbl_80465204@ha
    addi 4, 3, lbl_80465204@l
    lwz 3, 0x14(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132B7C
    mr 3, 31
    li 4, 0x5
    bl fn_80132454
    .4byte 0x4800028C # b .L_80132E04
L_80132B7C:
    lwz 3, 0x18(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132B98
    mr 3, 31
    li 4, 0x6
    bl fn_80132454
    .4byte 0x48000270 # b .L_80132E04
L_80132B98:
    lwz 3, 0x1c(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132BB4
    mr 3, 31
    li 4, 0x7
    bl fn_80132454
    .4byte 0x48000254 # b .L_80132E04
L_80132BB4:
    lwz 3, 0x20(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132BD0
    mr 3, 31
    li 4, 0x8
    bl fn_80132454
    .4byte 0x48000238 # b .L_80132E04
L_80132BD0:
    lwz 3, 0x24(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132BEC
    mr 3, 31
    li 4, 0x9
    bl fn_80132454
    .4byte 0x4800021C # b .L_80132E04
L_80132BEC:
    lwz 3, 0x28(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132C08
    mr 3, 31
    li 4, 0xa
    bl fn_80132454
    .4byte 0x48000200 # b .L_80132E04
L_80132C08:
    lwz 3, 0x2c(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132C24
    mr 3, 31
    li 4, 0xb
    bl fn_80132454
    .4byte 0x480001E4 # b .L_80132E04
L_80132C24:
    lwz 3, 0x30(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132C40
    mr 3, 31
    li 4, 0xc
    bl fn_80132454
    .4byte 0x480001C8 # b .L_80132E04
L_80132C40:
    lwz 3, 0x34(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132C5C
    mr 3, 31
    li 4, 0xd
    bl fn_80132454
    .4byte 0x480001AC # b .L_80132E04
L_80132C5C:
    lwz 3, 0x38(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132C78
    mr 3, 31
    li 4, 0xe
    bl fn_80132454
    .4byte 0x48000190 # b .L_80132E04
L_80132C78:
    lwz 3, 0x3c(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132C94
    mr 3, 31
    li 4, 0xf
    bl fn_80132454
    .4byte 0x48000174 # b .L_80132E04
L_80132C94:
    lwz 3, 0x40(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132CB0
    mr 3, 31
    li 4, 0x10
    bl fn_80132454
    .4byte 0x48000158 # b .L_80132E04
L_80132CB0:
    lwz 3, 0x44(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132CCC
    mr 3, 31
    li 4, 0x11
    bl fn_80132454
    .4byte 0x4800013C # b .L_80132E04
L_80132CCC:
    lwz 3, 0x48(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132CE8
    mr 3, 31
    li 4, 0x12
    bl fn_80132454
    .4byte 0x48000120 # b .L_80132E04
L_80132CE8:
    lwz 3, 0x4c(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132D04
    mr 3, 31
    li 4, 0x13
    bl fn_80132454
    .4byte 0x48000104 # b .L_80132E04
L_80132D04:
    lwz 3, 0x50(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132D20
    mr 3, 31
    li 4, 0x14
    bl fn_80132454
    .4byte 0x480000E8 # b .L_80132E04
L_80132D20:
    lwz 3, 0x54(4)
    cmpw 0, 3
    .4byte 0x408200DC # bne .L_80132E04
    mr 3, 31
    li 4, 0x15
    bl fn_80132454
    .4byte 0x480000CC # b .L_80132E04
L_80132D3C:
    lis 3, lbl_80465204@ha
    addi 4, 3, lbl_80465204@l
    lwz 3, 0x10(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132D60
    mr 3, 31
    li 4, 0x4
    bl fn_80132454
    .4byte 0x480000A8 # b .L_80132E04
L_80132D60:
    lwz 3, 0x14(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132D7C
    mr 3, 31
    li 4, 0x5
    bl fn_80132454
    .4byte 0x4800008C # b .L_80132E04
L_80132D7C:
    lwz 3, 0x18(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132D98
    mr 3, 31
    li 4, 0x6
    bl fn_80132454
    .4byte 0x48000070 # b .L_80132E04
L_80132D98:
    lwz 3, 0x58(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132DB4
    mr 3, 31
    li 4, 0x16
    bl fn_80132454
    .4byte 0x48000054 # b .L_80132E04
L_80132DB4:
    lwz 3, 0x5c(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132DD0
    mr 3, 31
    li 4, 0x13
    bl fn_80132454
    .4byte 0x48000038 # b .L_80132E04
L_80132DD0:
    lwz 3, 0x60(4)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_80132DEC
    mr 3, 31
    li 4, 0x14
    bl fn_80132454
    .4byte 0x4800001C # b .L_80132E04
L_80132DEC:
    lwz 3, 0x64(4)
    cmpw 0, 3
    .4byte 0x40820010 # bne .L_80132E04
    mr 3, 31
    li 4, 0x19
    bl fn_80132454
L_80132E04:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80132E18:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    bl fn_8010DF58
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80132EA8
L_80132E48:
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
L_80132EA8:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80132E48
    li 11, 0x0
    li 10, 0x1
    li 12, -0x1
    li 5, 0x3
    li 0, 0x2
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    stw 12, 0x18(1)
    lis 3, lbl_80465270@ha
    fmr 2, 1
    addi 4, 3, lbl_80465270@l
    stw 11, 0x1c(1)
    mr 3, 31
    addi 6, 1, 0x8
    li 7, 0x407
    stw 11, 0x20(1)
    li 8, 0x0
    li 9, 0x0
    stb 11, 0x24(1)
    stb 11, 0x25(1)
    stb 11, 0x26(1)
    stb 10, 0x27(1)
    stb 10, 0x28(1)
    stb 11, 0x29(1)
    stb 11, 0x2a(1)
    stb 11, 0x2b(1)
    stb 11, 0x2c(1)
    stb 11, 0x2d(1)
    stb 10, 0x2e(1)
    stw 5, 0x30(1)
    stb 10, 0x34(1)
    stb 11, 0x35(1)
    stb 11, 0x36(1)
    stw 12, 0x38(1)
    stw 11, 0x3c(1)
    stw 0, 0x40(1)
    lwz 5, 0x260(31)
    addi 5, 5, 0x2fb
    bl fn_801F02BC
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80132F60:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    bl fn_8010DF78
    lfs 1, 0x60(31)
    mr 3, 31
    stfs 1, 0x50(1)
    lfs 4, 0x64(31)
    stfs 4, 0x54(1)
    lfs 2, 0x68(31)
    stfs 2, 0x58(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x5c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x50(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x58(1)
    fadds 0, 3, 2
    stfs 1, 0x54(1)
    stfs 0, 0x5c(1)
    bl fn_801321E4
    lwz 0, 0x234(31)
    cmplwi 0, 0x1a
    .4byte 0x41810488 # bgt .L_8013345C
    lis 3, jumptable_8049ECC4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049ECC4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_80133024
    .4byte 0x40800460 # bge .L_8013345C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8013300C
    .4byte 0x48000454 # b .L_8013345C
L_8013300C:
    bl fn_8011921C
    bl fn_801183BC
    mr 3, 31
    li 4, 0x4
    bl fn_80132454
    .4byte 0x4800043C # b .L_8013345C
L_80133024:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820420 # beq .L_8013345C
    bl fn_8011921C
    li 4, 0xe
    bl fn_801186B0
    .4byte 0x48000410 # b .L_8013345C
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x28
    .4byte 0x418003F8 # blt .L_8013345C
    psq_l 2, 0xc(31), 0, 0
    addi 4, 1, 0x44
    lfs 0, 0x14(31)
    li 5, 0x184
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 6, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x4c(1)
    li 10, 0x1
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x288(31)
    li 0, 0x1
    lis 4, 0x4
    mr 3, 31
    stb 0, 0x11d(31)
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x2
    bl fn_80132454
    .4byte 0x48000390 # b .L_8013345C
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801330E4
    .4byte 0x40800380 # bge .L_8013345C
    .4byte 0x4800037C # b .L_8013345C
L_801330E4:
    lfs 1, 0x60(31)
    addi 3, 1, 0x1c
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x1c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x20(1)
    lfs 2, 0x68(31)
    stfs 2, 0x24(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x28(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x1c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x24(1)
    fadds 0, 3, 2
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4080000C # bge .L_8013315C
    li 30, -0x1
    .4byte 0x48000070 # b .L_801331C8
L_8013315C:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80133170
    li 30, -0x1
    .4byte 0x4800005C # b .L_801331C8
L_80133170:
    psq_l 0, 0xc(31), 0, 0
    addi 7, 1, 0x38
    lfs 2, 0x14(31)
    mr 3, 30
    psq_st 0, 0x2c(1), 0, 0
    li 4, 0x2b6
    .4byte 0xC0029D74 # lfs f0, lbl_8053CD14@sda21(r0)
    li 8, 0x28
    lfs 1, 0x30(1)
    lwz 5, 0x198(31)
    fsubs 0, 1, 0
    lwz 6, 0x4(31)
    stfs 2, 0x34(1)
    stfs 0, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    stfs 2, 0x40(1)
    psq_st 0, 0x0(7), 0, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801331C4
    .4byte 0x48000008 # b .L_801331C8
L_801331C4:
    li 30, -0x1
L_801331C8:
    cmpwi 30, 0x0
    .4byte 0x41800290 # blt .L_8013345C
    stw 30, 0x23c(31)
    mr 3, 31
    li 4, 0x3
    bl fn_80132454
    .4byte 0x4800027C # b .L_8013345C
    lwz 3, 0x23c(31)
    addi 4, 1, 0x50
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182024C # beq .L_8013345C
    mr 3, 31
    li 4, 0x2
    bl fn_80132454
    .4byte 0x4800023C # b .L_8013345C
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820214 # beq .L_8013345C
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000200 # b .L_8013345C
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf
    .4byte 0x418001E8 # blt .L_8013345C
    li 0, 0x0
    .4byte 0xC0029D50 # lfs f0, lbl_8053CCF0@sda21(r0)
    stw 0, 0x24c(31)
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    stfs 0, 0x18(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4241
    addi 4, 4, 0x5249
    bl fn_801F7A08
    mr. 30, 3
    .4byte 0x41800028 # blt .L_801332CC
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801332CC
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
L_801332CC:
    lfs 3, 0x10(1)
    lis 3, 0x19
    .4byte 0xC0429D54 # lfs f2, lbl_8053CCF4@sda21(r0)
    addi 4, 3, 0x660d
    lfs 1, 0x14(1)
    .4byte 0xC0029D58 # lfs f0, lbl_8053CCF8@sda21(r0)
    fsubs 2, 3, 2
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    fadds 0, 1, 0
    .4byte 0xC0629D60 # lfs f3, lbl_8053CD00@sda21(r0)
    stfs 2, 0x10(1)
    .4byte 0xC0829D5C # lfs f4, lbl_8053CCFC@sda21(r0)
    stfs 0, 0x14(1)
    .4byte 0xC0429D64 # lfs f2, lbl_8053CD04@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 0, 0x10(1)
    srwi 0, 0, 9
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 3
    fmadds 0, 4, 1, 0
    stfs 0, 0x10(1)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 0, 0x14(1)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 3
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x534c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5231
    addi 6, 1, 0x10
    li 7, 0x102
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000C0 # b .L_8013345C
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_8013345C
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000084 # b .L_8013345C
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    .4byte 0x48000078 # b .L_8013345C
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_8013345C
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x4800003C # b .L_8013345C
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8013345C
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
L_8013345C:
    lwz 3, 0x288(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80133490
    lwz 4, 0x4(31)
    addi 3, 1, 0x50
    lwz 5, 0x198(31)
    bl fn_80239914
L_80133490:
    addi 3, 31, 0x250
    bl fn_801D1C18
    lbz 0, 0x11d(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801334B4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_801334B4:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801334CC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_8010DF98
    lwz 0, 0x90(31)
    lis 3, lbl_8049EB80@ha
    addi 4, 3, lbl_8049EB80@l
    .4byte 0xC0229D88 # lfs f1, lbl_8053CD28@sda21(r0)
    clrlwi 0, 0, 31
    .4byte 0xC0029D68 # lfs f0, lbl_8053CD08@sda21(r0)
    stw 0, 0x238(31)
    addi 3, 31, 0x250
    li 5, 0x3
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x248(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x80(31)
    lfs 0, 0x64(31)
    stfs 0, 0x84(31)
    lfs 0, 0x68(31)
    stfs 0, 0x88(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x8c(31)
    bl fn_801D2608
    addi 3, 31, 0x250
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229D50 # lfs f1, lbl_8053CCF0@sda21(r0)
    addi 3, 31, 0x250
    bl fn_801D1F14
    .4byte 0xC0029D68 # lfs f0, lbl_8053CD08@sda21(r0)
    li 0, 0x0
    stfs 0, 0x14(31)
    stb 0, 0x11d(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x40820070 # bne .L_80133610
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80133610
    li 0, 0x1
    addi 4, 1, 0x8
    stb 0, 0x11d(31)
    li 5, 0x184
    .4byte 0xC0229D60 # lfs f1, lbl_8053CD00@sda21(r0)
    li 6, 0x0
    psq_l 2, 0xc(31), 0, 0
    li 7, -0x1
    lfs 0, 0x14(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    psq_st 2, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x288(31)
    mr 3, 31
    li 4, 0x2
    bl fn_80132454
L_80133610:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80133624:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_80133698
    lis 3, lbl_8049EB8C@ha
    addi 0, 3, lbl_8049EB8C@l
    stw 0, 0x0(30)
    lwz 3, 0x288(30)
    bl fn_801EE434
    li 3, 0x0
    addic. 0, 30, 0x250
    stw 3, 0x288(30)
    .4byte 0x41820018 # beq .L_8013367C
    addic. 0, 30, 0x274
    .4byte 0x41820010 # beq .L_8013367C
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x274(30)
L_8013367C:
    mr 3, 30
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80133698
    mr 3, 30
    bl dtor_80084580
L_80133698:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80131B74
    .4byte fn_80131FB8

