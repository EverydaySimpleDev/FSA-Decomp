.section extab, "a"
.balign 4
.global etb_8000A038
etb_8000A038:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A038, 8

.global etb_8000A040
etb_8000A040:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A040, 8

.global etb_8000A048
etb_8000A048:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A048, 8

.global etb_8000A050
etb_8000A050:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A050, 8

.section extabindex, "a"
.balign 4
.global eti_80017B9C
eti_80017B9C:
    .4byte fn_80210AF8
    .4byte 0x0000003C
    .4byte etb_8000A038
.size eti_80017B9C, 12

.global eti_80017BA8
eti_80017BA8:
    .4byte fn_80210B34
    .4byte 0x00000038
    .4byte etb_8000A040
.size eti_80017BA8, 12

.global eti_80017BB4
eti_80017BB4:
    .4byte fn_80210B6C
    .4byte 0x00000224
    .4byte etb_8000A048
.size eti_80017BB4, 12

.global eti_80017BC0
eti_80017BC0:
    .4byte fn_80210D90
    .4byte 0x00000100
    .4byte etb_8000A050
.size eti_80017BC0, 12

.text
.balign 4
.global fn_80210AF8
.global fn_80210B34
.global fn_80210B6C
.global fn_80210D90
.global fn_80210E90
.global fn_80211000

fn_80210AF8:
    slwi 0, 3, 1
    .4byte 0x3862CB18 # li r3, lbl_8053FAB8@sda21
    add 3, 3, 0
    stwu 1, -0x10(1)
    lbz 3, 0x1(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    extsb 0, 3
    .4byte 0xC822CB50 # lfd f1, lbl_8053FAF0@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 1, 0, 1
    addi 1, 1, 0x10
    blr

fn_80210B34:
    slwi 0, 3, 1
    .4byte 0x3862CB18 # li r3, lbl_8053FAB8@sda21
    lbzx 3, 3, 0
    lis 0, 0x4330
    stwu 1, -0x10(1)
    .4byte 0xC822CB50 # lfd f1, lbl_8053FAF0@sda21(r0)
    stw 0, 0x8(1)
    extsb 0, 3
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 1, 0, 1
    addi 1, 1, 0x10
    blr

fn_80210B6C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CCBB8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CCBB8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210BBC
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
L_80210BBC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210BF4
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
L_80210BF4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210C2C
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
L_80210C2C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210C64
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
L_80210C64:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210C9C
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
L_80210C9C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210CD4
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
L_80210CD4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210D0C
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
L_80210D0C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210D44
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
L_80210D44:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80210D7C
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
L_80210D7C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80210D90:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    oris 0, 0, 0x2
    stw 0, 0x230(3)
    bl fn_801F3604
    lwz 0, 0x248(30)
    cmpwi 0, 0x6
    .4byte 0x4182005C # beq .L_80210E1C
    .4byte 0x40800078 # bge .L_80210E3C
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_80210DD4
    .4byte 0x4800006C # b .L_80210E3C
L_80210DD4:
    lwz 31, 0x388(30)
    cmpwi 31, 0x0
    .4byte 0x4180001C # blt .L_80210DF8
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80210DF8
    bl fn_80212ECC
L_80210DF8:
    lwz 31, 0x2b8(30)
    cmpwi 31, 0x0
    .4byte 0x4182003C # beq .L_80210E3C
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000024 # b .L_80210E3C
L_80210E1C:
    lwz 31, 0x2b8(30)
    cmpwi 31, 0x0
    .4byte 0x41820018 # beq .L_80210E3C
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80210E3C:
    lwz 31, 0x388(30)
    cmpwi 31, 0x0
    .4byte 0x41800024 # blt .L_80210E68
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80210E68
    lwz 0, 0x230(3)
    ori 0, 0, 0x4000
    stw 0, 0x230(3)
L_80210E68:
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80210E90:
    .4byte 0xC0C2CB58 # lfs f6, lbl_8053FAF8@sda21(r0)
    lfs 2, 0x8(4)
    stfs 6, 0x0(5)
    fcmpo cr0, 2, 6
    stfs 6, 0x4(5)
    stfs 6, 0x8(5)
    cror eq, lt, eq
    bnelr
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    beqlr
    .4byte 0xC062CB60 # lfs f3, lbl_8053FB00@sda21(r0)
    lfs 2, 0x54(3)
    .4byte 0xC082CB5C # lfs f4, lbl_8053FAFC@sda21(r0)
    fmuls 3, 3, 2
    .4byte 0xC042CB64 # lfs f2, lbl_8053FB04@sda21(r0)
    fmuls 8, 4, 3
    fcmpo cr0, 8, 2
    blelr
    lfs 5, 0x0(4)
    lfs 4, 0xc(3)
    lfs 3, 0x4(4)
    lfs 2, 0x10(3)
    fsubs 4, 5, 4
    fsubs 2, 3, 2
    fmuls 3, 4, 4
    fmuls 2, 2, 2
    fadds 5, 3, 2
    fcmpo cr0, 5, 6
    .4byte 0x4081000C # ble .L_80210F10
    frsqrte 2, 5
    fmuls 5, 2, 5
L_80210F10:
    .4byte 0xC042CB64 # lfs f2, lbl_8053FB04@sda21(r0)
    fcmpo cr0, 2, 5
    bgelr
    fcmpo cr0, 5, 8
    cror eq, lt, eq
    bnelr
    psq_l 4, 0xc(3), 0, 0
    lis 6, lbl_80539D44@ha
    psq_l 2, 0x0(4), 0, 0
    psq_l 3, 0x14(3), 1, 0
    ps_sub 6, 4, 2
    psq_l 2, 0x8(4), 1, 0
    .4byte 0xC082CB58 # lfs f4, lbl_8053FAF8@sda21(r0)
    ps_sub 2, 3, 2
    .4byte 0xC062CB68 # lfs f3, lbl_8053FB08@sda21(r0)
    psq_st 6, 0x0(5), 0, 0
    psq_st 2, 0x8(5), 1, 0
    stfs 4, 0x8(5)
    psq_l 6, 0x0(5), 0, 0
    lfs 2, lbl_80539D44@l(6)
    ps_mul 6, 6, 6
    lfs 7, 0x8(5)
    fmuls 2, 3, 2
    ps_madd 7, 7, 7, 6
    ps_sum0 7, 7, 6, 6
    fcmpo cr0, 7, 2
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80210FD0
    fcmpo cr0, 7, 4
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80210F94
    fmr 0, 7
    .4byte 0x48000028 # b .L_80210FB8
L_80210F94:
    frsqrte 6, 7
    .4byte 0xC082CB6C # lfs f4, lbl_8053FB0C@sda21(r0)
    .4byte 0xC042CB70 # lfs f2, lbl_8053FB10@sda21(r0)
    frsp 6, 6
    fmuls 3, 6, 6
    fmuls 4, 4, 6
    fnmsubs 2, 7, 3, 2
    fmuls 2, 4, 2
    fmr 0, 2
L_80210FB8:
    psq_l 2, 0x0(5), 0, 0
    psq_l 3, 0x8(5), 1, 0
    ps_muls0 2, 2, 0
    ps_muls0 0, 3, 0
    psq_st 2, 0x0(5), 0, 0
    psq_st 0, 0x8(5), 1, 0
L_80210FD0:
    .4byte 0xC002CB64 # lfs f0, lbl_8053FB04@sda21(r0)
    lfs 4, 0x3a4(3)
    fsubs 0, 5, 0
    psq_l 2, 0x0(5), 0, 0
    psq_l 3, 0x8(5), 1, 0
    fsubs 1, 0, 4
    fsel 1, 1, 4, 0
    ps_muls0 2, 2, 1
    ps_muls0 0, 3, 1
    psq_st 2, 0x0(5), 0, 0
    psq_st 0, 0x8(5), 1, 0
    blr

fn_80211000:
    lfs 1, 0x8(4)
    li 5, 0x0
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082005C # bne .L_80211070
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_80211070
    .4byte 0xC062CB60 # lfs f3, lbl_8053FB00@sda21(r0)
    lfs 2, 0x54(3)
    lfs 1, 0x0(4)
    lfs 0, 0xc(3)
    fmuls 2, 3, 2
    .4byte 0xC062CB5C # lfs f3, lbl_8053FAFC@sda21(r0)
    fsubs 4, 1, 0
    lfs 1, 0x4(4)
    lfs 0, 0x10(3)
    fmuls 3, 3, 2
    fsubs 1, 1, 0
    fmuls 2, 4, 4
    fmuls 0, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80211070
    li 5, 0x1
L_80211070:
    mr 3, 5
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80210B6C
