.section extab, "a"
.balign 4
.global etb_8000A404
etb_8000A404:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A404, 8

.global etb_8000A40C
etb_8000A40C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A40C, 8

.global etb_8000A414
etb_8000A414:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A414, 8

.global etb_8000A41C
etb_8000A41C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A41C, 8

.global etb_8000A424
etb_8000A424:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A424, 8

.global etb_8000A42C
etb_8000A42C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A42C, 8

.section extabindex, "a"
.balign 4
.global eti_80018130
eti_80018130:
    .4byte fn_8021C090
    .4byte 0x00000224
    .4byte etb_8000A404
.size eti_80018130, 12

.global eti_8001813C
eti_8001813C:
    .4byte fn_8021C2B4
    .4byte 0x000001B4
    .4byte etb_8000A40C
.size eti_8001813C, 12

.global eti_80018148
eti_80018148:
    .4byte fn_8021C468
    .4byte 0x00000148
    .4byte etb_8000A414
.size eti_80018148, 12

.global eti_80018154
eti_80018154:
    .4byte fn_8021C5B0
    .4byte 0x00000074
    .4byte etb_8000A41C
.size eti_80018154, 12

.global eti_80018160
eti_80018160:
    .4byte fn_8021C624
    .4byte 0x00000224
    .4byte etb_8000A424
.size eti_80018160, 12

.global eti_8001816C
eti_8001816C:
    .4byte fn_8021CBC0
    .4byte 0x00000224
    .4byte etb_8000A42C
.size eti_8001816C, 12

.text
.balign 4
.global fn_8021C090
.global fn_8021C2B4
.global fn_8021C468
.global fn_8021C5B0
.global fn_8021C624
.global fn_8021C848
.global fn_8021C9C4
.global fn_8021CA70
.global fn_8021CB18
.global fn_8021CBA0
.global fn_8021CBC0

fn_8021C090:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CE040@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CE040@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C0E0
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
L_8021C0E0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C118
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
L_8021C118:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C150
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
L_8021C150:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C188
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
L_8021C188:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C1C0
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
L_8021C1C0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C1F8
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
L_8021C1F8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C230
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
L_8021C230:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C268
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
L_8021C268:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C2A0
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
L_8021C2A0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021C2B4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    li 30, 0x0
L_8021C2D0:
    lbz 0, 0x0(31)
    cmplwi 0, 0x0
    .4byte 0x41820168 # beq .L_8021C440
    lbz 0, 0x1(31)
    cmplwi 0, 0x0
    .4byte 0x4082015C # bne .L_8021C440
    lfs 2, 0x2c(31)
    .4byte 0xC022CD58 # lfs f1, lbl_8053FCF8@sda21(r0)
    .4byte 0xC002CD5C # lfs f0, lbl_8053FCFC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x2c(31)
    psq_l 2, 0x18(31), 0, 0
    psq_l 1, 0x24(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0x18(31), 0, 0
    psq_l 2, 0x20(31), 1, 0
    psq_l 1, 0x2c(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x20(31), 1, 0
    lfs 1, 0x20(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8021C334
    stfs 0, 0x20(31)
    stfs 0, 0x2c(31)
L_8021C334:
    addi 3, 31, 0x30
    bl fn_8021C848
    clrlwi. 0, 3, 24
    .4byte 0x418200E0 # beq .L_8021C420
    lwz 0, 0x30(31)
    cmpwi 0, 0x1
    .4byte 0x41820098 # beq .L_8021C3E4
    .4byte 0x40800010 # bge .L_8021C360
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021C36C
    .4byte 0x480000C4 # b .L_8021C420
L_8021C360:
    cmpwi 0, 0x3
    .4byte 0x408000BC # bge .L_8021C420
    .4byte 0x480000B0 # b .L_8021C418
L_8021C36C:
    addi 3, 31, 0x30
    li 4, 0x1
    bl fn_8021CA70
    addi 3, 31, 0x30
    bl fn_8021CB18
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC822CD70 # lfd f1, lbl_8053FD10@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC062CD60 # lfs f3, lbl_8053FD00@sda21(r0)
    lfd 0, 0x8(1)
    lfs 2, 0x10(31)
    fsubs 5, 0, 1
    lfs 1, 0x8(31)
    .4byte 0xC002CD68 # lfs f0, lbl_8053FD08@sda21(r0)
    fsubs 2, 2, 1
    lfs 4, 0x14(31)
    fdivs 6, 3, 5
    lfs 3, 0xc(31)
    .4byte 0xC022CD64 # lfs f1, lbl_8053FD04@sda21(r0)
    fsubs 3, 4, 3
    fmuls 2, 6, 2
    fmuls 0, 0, 5
    fmuls 3, 6, 3
    stfs 2, 0x24(31)
    fmuls 0, 1, 0
    stfs 3, 0x28(31)
    stfs 0, 0x2c(31)
    .4byte 0x48000040 # b .L_8021C420
L_8021C3E4:
    lfs 1, 0x20(31)
    .4byte 0xC002CD5C # lfs f0, lbl_8053FCFC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_8021C420
    addi 3, 31, 0x30
    li 4, 0x2
    bl fn_8021CA70
    .4byte 0xC002CD5C # lfs f0, lbl_8053FCFC@sda21(r0)
    stfs 0, 0x24(31)
    stfs 0, 0x28(31)
    stfs 0, 0x2c(31)
    .4byte 0x4800000C # b .L_8021C420
L_8021C418:
    li 0, 0x1
    stb 0, 0x1(31)
L_8021C420:
    lwz 3, 0x4(31)
    addi 4, 31, 0x18
    lwz 5, 0x34(31)
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8021C440:
    addi 30, 30, 0x1
    addi 31, 31, 0x48
    cmpwi 30, 0x4
    .4byte 0x4180FE84 # blt .L_8021C2D0
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8021C468:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    li 29, 0x0
L_8021C488:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200E8 # beq .L_8021C57C
    mr 3, 29
    bl fn_8023E724
    mr 31, 3
    bl fn_801C0D70
    mr 4, 31
    addi 5, 1, 0x8
    bl fn_801C0FEC
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_8021C57C
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x0(30)
    stb 0, 0x1(30)
    stw 29, 0x4(30)
    lwz 3, 0x4(30)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x8(30)
    lfs 0, 0x4(3)
    stfs 0, 0xc(30)
    lfs 0, 0x8(1)
    stfs 0, 0x10(30)
    lfs 0, 0xc(1)
    stfs 0, 0x14(30)
    lwz 3, 0x4(30)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lis 4, lbl_80534C00@ha
    .4byte 0xC002CD5C # lfs f0, lbl_8053FCFC@sda21(r0)
    addi 0, 4, lbl_80534C00@l
    stfs 1, 0x18(30)
    lfs 1, 0x4(3)
    stfs 1, 0x1c(30)
    lfs 1, 0x8(3)
    mr 3, 0
    stfs 1, 0x20(30)
    stfs 0, 0x24(30)
    stfs 0, 0x28(30)
    stfs 0, 0x2c(30)
    lfs 3, 0x8(30)
    lfs 1, 0x10(30)
    lfs 2, 0xc(30)
    lfs 0, 0x14(30)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002CD78 # lfs f0, lbl_8053FD18@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    mr 4, 3
    addi 3, 30, 0x30
    bl fn_8021C9C4
    .4byte 0x4800000C # b .L_8021C584
L_8021C57C:
    li 0, 0x1
    stb 0, 0x1(30)
L_8021C584:
    addi 29, 29, 0x1
    addi 30, 30, 0x48
    cmpwi 29, 0x4
    .4byte 0x4180FEF8 # blt .L_8021C488
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8021C5B0:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC002CD5C # lfs f0, lbl_8053FCFC@sda21(r0)
    stw 0, 0x14(1)
    li 0, -0x1
    stw 31, 0xc(1)
    mr 31, 3
    stb 4, 0x0(3)
    addi 3, 31, 0x30
    stb 4, 0x1(31)
    stw 0, 0x4(31)
    stfs 0, 0x8(31)
    stfs 0, 0xc(31)
    stfs 0, 0x10(31)
    stfs 0, 0x14(31)
    stfs 0, 0x18(31)
    stfs 0, 0x1c(31)
    stfs 0, 0x20(31)
    stfs 0, 0x24(31)
    stfs 0, 0x28(31)
    stfs 0, 0x2c(31)
    bl fn_8021CBA0
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021C624:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CE140@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CE140@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C674
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
L_8021C674:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C6AC
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
L_8021C6AC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C6E4
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
L_8021C6E4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C71C
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
L_8021C71C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C754
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
L_8021C754:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C78C
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
L_8021C78C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C7C4
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
L_8021C7C4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C7FC
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
L_8021C7FC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021C834
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
L_8021C834:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8021C848:
    lbz 0, 0x14(3)
    lis 4, lbl_8046A688@ha
    addi 6, 4, lbl_8046A688@l
    cmplwi 0, 0x0
    .4byte 0x408200D8 # bne .L_8021C930
    lwz 0, 0x0(3)
    li 5, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8021C890
    .4byte 0x40800010 # bge .L_8021C87C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021C888
    .4byte 0x48000024 # b .L_8021C89C
L_8021C87C:
    cmpwi 0, 0x3
    .4byte 0x4080001C # bge .L_8021C89C
    .4byte 0x48000014 # b .L_8021C898
L_8021C888:
    li 5, 0x1
    .4byte 0x48000010 # b .L_8021C89C
L_8021C890:
    li 5, 0x7
    .4byte 0x48000008 # b .L_8021C89C
L_8021C898:
    li 5, 0x2
L_8021C89C:
    lwz 4, 0xc(3)
    li 7, 0x0
    addi 0, 4, 0x1
    stw 0, 0xc(3)
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8021C8DC
    .4byte 0x40800010 # bge .L_8021C8C8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021C8D4
    .4byte 0x48000024 # b .L_8021C8E8
L_8021C8C8:
    cmpwi 0, 0x3
    .4byte 0x4080001C # bge .L_8021C8E8
    .4byte 0x48000014 # b .L_8021C8E4
L_8021C8D4:
    .4byte 0x38E2CD80 # li r7, lbl_8053FD20@sda21
    .4byte 0x48000010 # b .L_8021C8E8
L_8021C8DC:
    addi 7, 6, 0x0
    .4byte 0x48000008 # b .L_8021C8E8
L_8021C8E4:
    .4byte 0x38E2CD84 # li r7, lbl_8053FD24@sda21
L_8021C8E8:
    lwz 0, 0x8(3)
    lwz 4, 0xc(3)
    slwi 0, 0, 2
    lwzx 0, 7, 0
    cmpw 4, 0
    .4byte 0x41800034 # blt .L_8021C930
    li 0, 0x0
    stw 0, 0xc(3)
    lwz 4, 0x8(3)
    addi 0, 4, 0x1
    stw 0, 0x8(3)
    lwz 4, 0x8(3)
    cmpw 4, 5
    .4byte 0x41800014 # blt .L_8021C930
    subi 4, 4, 0x1
    li 0, 0x1
    stw 4, 0x8(3)
    stb 0, 0x14(3)
L_8021C930:
    lwz 0, 0x0(3)
    li 4, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820040 # beq .L_8021C97C
    .4byte 0x40800010 # bge .L_8021C950
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021C95C
    .4byte 0x4800006C # b .L_8021C9B8
L_8021C950:
    cmpwi 0, 0x3
    .4byte 0x40800064 # bge .L_8021C9B8
    .4byte 0x48000044 # b .L_8021C99C
L_8021C95C:
    lwz 5, 0x10(3)
    addi 4, 6, 0x1c
    lwz 0, 0x8(3)
    slwi 5, 5, 2
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 4, 4, 0
    .4byte 0x48000040 # b .L_8021C9B8
L_8021C97C:
    lwz 5, 0x10(3)
    addi 4, 6, 0x2c
    lwz 0, 0x8(3)
    mulli 5, 5, 0x1c
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 4, 4, 0
    .4byte 0x48000020 # b .L_8021C9B8
L_8021C99C:
    lwz 5, 0x10(3)
    addi 4, 6, 0x9c
    lwz 0, 0x8(3)
    slwi 5, 5, 3
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 4, 4, 0
L_8021C9B8:
    stw 4, 0x4(3)
    lbz 3, 0x14(3)
    blr

fn_8021C9C4:
    stw 4, 0x10(3)
    li 5, 0x0
    lis 4, lbl_8046A688@ha
    stw 5, 0x0(3)
    addi 4, 4, lbl_8046A688@l
    stw 5, 0x8(3)
    stw 5, 0xc(3)
    stb 5, 0x14(3)
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x41820040 # beq .L_8021CA2C
    .4byte 0x40800010 # bge .L_8021CA00
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021CA0C
    .4byte 0x4800006C # b .L_8021CA68
L_8021CA00:
    cmpwi 0, 0x3
    .4byte 0x40800064 # bge .L_8021CA68
    .4byte 0x48000044 # b .L_8021CA4C
L_8021CA0C:
    lwz 5, 0x10(3)
    addi 4, 4, 0x1c
    lwz 0, 0x8(3)
    slwi 5, 5, 2
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 5, 4, 0
    .4byte 0x48000040 # b .L_8021CA68
L_8021CA2C:
    lwz 5, 0x10(3)
    addi 4, 4, 0x2c
    lwz 0, 0x8(3)
    mulli 5, 5, 0x1c
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 5, 4, 0
    .4byte 0x48000020 # b .L_8021CA68
L_8021CA4C:
    lwz 5, 0x10(3)
    addi 4, 4, 0x9c
    lwz 0, 0x8(3)
    slwi 5, 5, 3
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 5, 4, 0
L_8021CA68:
    stw 5, 0x4(3)
    blr

fn_8021CA70:
    stw 4, 0x0(3)
    li 5, 0x0
    lis 4, lbl_8046A688@ha
    stw 5, 0x8(3)
    addi 4, 4, lbl_8046A688@l
    stw 5, 0xc(3)
    stb 5, 0x14(3)
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x41820040 # beq .L_8021CAD4
    .4byte 0x40800010 # bge .L_8021CAA8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021CAB4
    .4byte 0x4800006C # b .L_8021CB10
L_8021CAA8:
    cmpwi 0, 0x3
    .4byte 0x40800064 # bge .L_8021CB10
    .4byte 0x48000044 # b .L_8021CAF4
L_8021CAB4:
    lwz 5, 0x10(3)
    addi 4, 4, 0x1c
    lwz 0, 0x8(3)
    slwi 5, 5, 2
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 5, 4, 0
    .4byte 0x48000040 # b .L_8021CB10
L_8021CAD4:
    lwz 5, 0x10(3)
    addi 4, 4, 0x2c
    lwz 0, 0x8(3)
    mulli 5, 5, 0x1c
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 5, 4, 0
    .4byte 0x48000020 # b .L_8021CB10
L_8021CAF4:
    lwz 5, 0x10(3)
    addi 4, 4, 0x9c
    lwz 0, 0x8(3)
    slwi 5, 5, 3
    slwi 0, 0, 2
    add 0, 5, 0
    lwzx 5, 4, 0
L_8021CB10:
    stw 5, 0x4(3)
    blr

fn_8021CB18:
    lwz 0, 0x0(3)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8021CB4C
    .4byte 0x40800010 # bge .L_8021CB38
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021CB44
    blr
L_8021CB38:
    cmpwi 0, 0x3
    bgelr
    .4byte 0x4800004C # b .L_8021CB8C
L_8021CB44:
    .4byte 0x8062CD80 # lwz r3, lbl_8053FD20@sda21(r0)
    blr
L_8021CB4C:
    lis 3, lbl_8046A688@ha
    addi 5, 3, lbl_8046A688@l
    lwz 4, 0x0(5)
    lwz 3, 0x4(5)
    lwz 0, 0x8(5)
    add 3, 4, 3
    lwz 4, 0xc(5)
    add 3, 3, 0
    lwz 0, 0x10(5)
    add 3, 3, 4
    lwz 4, 0x14(5)
    add 3, 3, 0
    lwz 0, 0x18(5)
    add 3, 3, 4
    add 3, 3, 0
    blr
L_8021CB8C:
    .4byte 0x3862CD84 # li r3, lbl_8053FD24@sda21
    .4byte 0x8082CD84 # lwz r4, lbl_8053FD24@sda21(r0)
    lwz 0, 0x4(3)
    add 3, 4, 0
    blr

fn_8021CBA0:
    li 0, 0x0
    stw 0, 0x0(3)
    stw 0, 0x4(3)
    stw 0, 0x8(3)
    stw 0, 0xc(3)
    stw 0, 0x10(3)
    stb 0, 0x14(3)
    blr

fn_8021CBC0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CE240@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CE240@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CC10
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
L_8021CC10:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CC48
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
L_8021CC48:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CC80
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
L_8021CC80:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CCB8
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
L_8021CCB8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CCF0
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
L_8021CCF0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CD28
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
L_8021CD28:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CD60
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
L_8021CD60:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CD98
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
L_8021CD98:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8021CDD0
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
L_8021CDD0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8021C090
    .4byte fn_8021C624
    .4byte fn_8021CBC0
