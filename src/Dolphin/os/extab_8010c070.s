# Fresh project-wide gap hunt continuation: 6 functions, 5,936 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80005C3C
etb_80005C3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005C3C, 8

.global etb_80005C44
etb_80005C44:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80005C44, 8

.global etb_80005C4C
etb_80005C4C:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80005C4C, 8

.global etb_80005C54
etb_80005C54:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005C54, 8

.global etb_80005C5C
etb_80005C5C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005C5C, 8

.global etb_80005C64
etb_80005C64:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80005C64, 8

.section extabindex, "a"
.balign 4
.global eti_800120A0
eti_800120A0:
    .4byte fn_8010C070
    .4byte 0x00000224
    .4byte etb_80005C3C
.size eti_800120A0, 12

.global eti_800120AC
eti_800120AC:
    .4byte fn_8010C294
    .4byte 0x00000450
    .4byte etb_80005C44
.size eti_800120AC, 12

.global eti_800120B8
eti_800120B8:
    .4byte fn_8010C6E4
    .4byte 0x00000360
    .4byte etb_80005C4C
.size eti_800120B8, 12

.global eti_800120C4
eti_800120C4:
    .4byte fn_8010CA44
    .4byte 0x00000B18
    .4byte etb_80005C54
.size eti_800120C4, 12

.global eti_800120D0
eti_800120D0:
    .4byte fn_8010D55C
    .4byte 0x00000194
    .4byte etb_80005C5C
.size eti_800120D0, 12

.global eti_800120DC
eti_800120DC:
    .4byte fn_8010D6F0
    .4byte 0x000000B0
    .4byte etb_80005C64
.size eti_800120DC, 12

.text
.balign 4
.global fn_8010C070
.global fn_8010C294
.global fn_8010C6E4
.global fn_8010CA44
.global fn_8010D55C
.global fn_8010D6F0

fn_8010C070:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BBBF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BBBF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C0C0
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
L_8010C0C0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C0F8
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
L_8010C0F8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C130
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
L_8010C130:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C168
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
L_8010C168:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C1A0
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
L_8010C1A0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C1D8
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
L_8010C1D8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C210
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
L_8010C210:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C248
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
L_8010C248:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8010C280
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
L_8010C280:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010C294:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 27, 0x4c(1)
    mr 31, 4
    cmplwi 31, 0xd
    mr 30, 3
    .4byte 0x4181040C # bgt .L_8010C6BC
    lis 4, jumptable_8049D074@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_8049D074@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(30)
    stw 0, 0x254(30)
    .4byte 0x480003E0 # b .L_8010C6BC
    li 0, 0x0
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    stw 0, 0x248(30)
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x14
    stw 0, 0x24c(30)
    addi 8, 1, 0x10
    li 10, 0x2
    sth 0, 0x8(1)
    stw 0, 0xc(1)
    stw 0, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x198(30)
    lwz 9, 0x23c(30)
    bl fn_801EEC98
    lhz 0, 0x8(1)
    sth 0, 0x230(30)
    .4byte 0x48000394 # b .L_8010C6BC
    li 0, 0x0
    stb 0, 0x2ae(30)
    stb 0, 0x2af(30)
    stb 0, 0x2ad(30)
    .4byte 0x48000380 # b .L_8010C6BC
    .4byte 0xC00294F4 # lfs f0, lbl_8053C494@sda21(r0)
    stfs 0, 0x264(30)
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x4081036C # ble .L_8010C6BC
    lwz 3, 0x25c(30)
    cmpwi 3, 0x0
    .4byte 0x40810360 # ble .L_8010C6BC
    lbz 0, 0x2ae(30)
    clrlwi 3, 3, 24
    cmplw 3, 0
    .4byte 0x40800350 # bge .L_8010C6BC
    stb 3, 0x2af(30)
    .4byte 0x48000348 # b .L_8010C6BC
    lfs 0, 0x44(30)
    psq_l 2, 0x3c(30), 0, 0
    fneg 1, 0
    .4byte 0xC0029534 # lfs f0, lbl_8053C4D4@sda21(r0)
    ps_neg 2, 2
    frsp 3, 1
    stfs 1, 0x20(1)
    psq_st 2, 0x3c(30), 0, 0
    stfs 3, 0x44(30)
    psq_st 2, 0x18(1), 0, 0
    psq_st 2, 0x30(1), 0, 0
    stfs 3, 0x38(1)
    stfs 0, 0x44(30)
    bl GetRoomConfigRecord
    lwz 4, 0x4(30)
    li 5, 0x0
    .4byte 0xC0229538 # lfs f1, lbl_8053C4D8@sda21(r0)
    .4byte 0xC04294F0 # lfs f2, lbl_8053C490@sda21(r0)
    bl fn_802D79E8
    lwz 3, 0x374(30)
    cmplwi 3, 0x0
    .4byte 0x418202F0 # beq .L_8010C6BC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x480002E0 # b .L_8010C6BC
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    li 0, 0x0
    stfs 0, 0x264(30)
    stw 0, 0x244(30)
    .4byte 0x480002CC # b .L_8010C6BC
    li 0, 0x0
    stw 0, 0x248(30)
    .4byte 0x480002C0 # b .L_8010C6BC
    lwz 0, 0xc8(30)
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    stw 0, 0x23c(30)
    stfs 0, 0x264(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    .4byte 0x480002A0 # b .L_8010C6BC
    lfs 1, 0x3c(30)
    li 0, 0x0
    .4byte 0xC042953C # lfs f2, lbl_8053C4DC@sda21(r0)
    addi 3, 30, 0x274
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    li 4, 0x1
    fmuls 1, 1, 2
    li 5, 0x0
    li 6, 0x0
    stfs 1, 0x3c(30)
    lfs 1, 0x40(30)
    fmuls 1, 1, 2
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0xd8(30)
    bl fn_801D22DC
    lwz 3, 0x4(30)
    cmpwi 3, 0x0
    .4byte 0x40820254 # bne .L_8010C6BC
    lfs 1, 0x260(30)
    addi 4, 30, 0xc
    li 5, 0x93
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x378(30)
    addi 4, 30, 0xc
    li 5, 0x94
    li 6, 0x1
    lwz 3, 0x4(30)
    li 7, 0x0
    lfs 1, 0x260(30)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x37c(30)
    .4byte 0x480001FC # b .L_8010C6BC
    lwz 0, 0x100(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8010C4E8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x100(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x100(30)
L_8010C4E8:
    lwz 0, 0x104(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8010C50C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x104(30)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x104(30)
L_8010C50C:
    lwz 3, 0x374(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8010C524
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
L_8010C524:
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x24
    lfs 0, 0x14(30)
    li 5, 0x44a
    .4byte 0xC0429500 # lfs f2, lbl_8053C4A0@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x2c(1)
    li 10, 0x1
    lfs 0, 0x28(1)
    lfs 1, 0x260(30)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x28(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x24
    lfs 1, 0x260(30)
    li 5, 0x44b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x24
    lfs 1, 0x260(30)
    li 5, 0x44c
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x77
    li 5, 0x0
    bl fn_801F0E34
    lfs 0, 0x260(30)
    stfs 0, 0x270(30)
    .4byte 0x480000E4 # b .L_8010C6BC
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stfs 0, 0x14(30)
    lwz 0, 0x234(30)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8010C604
    .4byte 0x40800038 # bge .L_8010C634
    .4byte 0x48000034 # b .L_8010C634
L_8010C604:
    li 4, 0x3
    bl fn_801F0D20
    bl SpatialRegistry_GetBase
    lis 4, 0x4b45
    lwz 5, 0x4(30)
    addi 4, 4, 0x5930
    addi 6, 30, 0xc
    lis 7, 0x6000
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000084 # b .L_8010C6B4
L_8010C634:
    lfs 1, 0x270(30)
    li 4, 0x0
    .4byte 0xC0029504 # lfs f0, lbl_8053C4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8010C654
    li 4, 0x2
    .4byte 0x48000018 # b .L_8010C668
L_8010C654:
    .4byte 0xC0029508 # lfs f0, lbl_8053C4A8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8010C668
    li 4, 0x1
L_8010C668:
    lwz 0, 0x258(30)
    cmpwi 0, 0x1
    .4byte 0x41800008 # blt .L_8010C678
    li 4, 0x1
L_8010C678:
    lis 3, lbl_80464328@ha
    slwi 27, 4, 2
    addi 28, 3, lbl_80464328@l
    lis 29, 0x5255
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(30)
    addi 4, 29, 0x5059
    lwzx 7, 28, 27
    addi 6, 30, 0xc
    bl fn_801F8544
    mr. 27, 3
    .4byte 0x41800010 # blt .L_8010C6B4
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
L_8010C6B4:
    mr 3, 30
    bl fn_801F3668
L_8010C6BC:
    stw 31, 0x238(30)
    addi 3, 30, 0x274
    .4byte 0xC02294F0 # lfs f1, lbl_8053C490@sda21(r0)
    bl fn_801D1F14
    lmw 27, 0x4c(1)
    li 3, 0x1
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8010C6E4:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stw 31, 0xec(1)
    stw 30, 0xe8(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0xa4
    stw 0, 0xb4(1)
    li 10, 0x0
    stw 0, 0xb8(1)
    .4byte 0x48000064 # b .L_8010C780
L_8010C720:
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
L_8010C780:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8010C720
    li 10, 0x0
    li 5, -0x1
    li 4, 0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0xb4(1)
    addi 9, 1, 0x68
    stw 10, 0xb8(1)
    stw 10, 0xbc(1)
    stb 10, 0xc0(1)
    stb 10, 0xc1(1)
    stb 10, 0xc2(1)
    stb 4, 0xc3(1)
    stb 4, 0xc4(1)
    stb 10, 0xc5(1)
    stb 10, 0xc6(1)
    stb 10, 0xc7(1)
    stb 10, 0xc8(1)
    stb 10, 0xc9(1)
    stb 4, 0xca(1)
    stw 3, 0xcc(1)
    stb 4, 0xd0(1)
    stb 10, 0xd1(1)
    stb 10, 0xd2(1)
    stw 5, 0xd4(1)
    stw 10, 0xd8(1)
    stw 0, 0xdc(1)
    stw 5, 0x78(1)
    stw 5, 0x7c(1)
    .4byte 0x48000064 # b .L_8010C864
L_8010C804:
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
L_8010C864:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8010C804
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x78(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC0229540 # lfs f1, lbl_8053C4E0@sda21(r0)
    stw 6, 0x7c(1)
    lfs 0, lbl_80539D44@l(3)
    stw 6, 0x80(1)
    fmuls 0, 1, 0
    stb 6, 0x84(1)
    stb 6, 0x85(1)
    stb 6, 0x86(1)
    stb 5, 0x87(1)
    stb 5, 0x88(1)
    stb 6, 0x89(1)
    stb 6, 0x8a(1)
    stb 6, 0x8b(1)
    stb 6, 0x8c(1)
    stb 6, 0x8d(1)
    stb 5, 0x8e(1)
    stw 4, 0x90(1)
    stb 5, 0x94(1)
    stb 6, 0x95(1)
    stb 6, 0x96(1)
    stw 7, 0x98(1)
    stw 6, 0x9c(1)
    stw 0, 0xa0(1)
    psq_l 2, 0x54(31), 0, 0
    lfs 31, 0x5c(31)
    ps_mul 2, 2, 2
    ps_madd 1, 31, 31, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4182008C # beq .L_8010C990
    .4byte 0xC06294F0 # lfs f3, lbl_8053C490@sda21(r0)
    addi 3, 1, 0x38
    .4byte 0xC0229538 # lfs f1, lbl_8053C4D8@sda21(r0)
    addi 0, 1, 0x8
    stfs 3, 0x44(1)
    stfs 3, 0x54(1)
    stfs 3, 0x64(1)
    lfs 4, 0x58(31)
    lfs 2, 0x54(31)
    stfs 2, 0x38(1)
    stfs 3, 0x3c(1)
    stfs 3, 0x40(1)
    stfs 3, 0x48(1)
    stfs 4, 0x4c(1)
    stfs 3, 0x50(1)
    stfs 3, 0x58(1)
    stfs 3, 0x5c(1)
    stfs 31, 0x60(1)
    stw 3, 0xbc(1)
    lfs 0, 0x260(31)
    fmuls 0, 1, 0
    stfs 3, 0x14(1)
    stfs 3, 0x34(1)
    stfs 0, 0x24(1)
    stfs 2, 0x8(1)
    stfs 3, 0xc(1)
    stfs 3, 0x10(1)
    stfs 3, 0x18(1)
    stfs 4, 0x1c(1)
    stfs 3, 0x20(1)
    stfs 3, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 31, 0x30(1)
    stw 0, 0x80(1)
L_8010C990:
    li 0, 0x80
    lis 3, lbl_80464334@ha
    stb 0, 0x7b(1)
    addi 7, 3, lbl_80464334@l
    addi 4, 31, 0xc
    addi 5, 1, 0x68
    lwz 8, 0x284(31)
    li 6, 0x407
    lwz 3, 0x4(31)
    li 9, 0x0
    addi 8, 8, 0x165
    bl fn_801EF830
    lwz 0, 0x4(31)
    addi 30, 31, 0xc
    lwz 3, 0x284(31)
    cmpwi 0, 0x8
    addi 31, 3, 0x165
    .4byte 0x40800050 # bge .L_8010CA24
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464334@ha
    addi 5, 3, lbl_80464334@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0229534 # lfs f1, lbl_8053C4D4@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 30
    fmr 2, 1
    addi 7, 1, 0xa4
    lwz 3, 0x20(6)
    mr 6, 31
    bl fn_802F86CC
L_8010CA24:
    psq_l 31, 0xf8(1), 0, 0
    lwz 0, 0x104(1)
    lfd 31, 0xf0(1)
    lwz 31, 0xec(1)
    lwz 30, 0xe8(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_8010CA44:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stw 31, 0xbc(1)
    stw 30, 0xb8(1)
    mr 30, 3
    bl fn_801F5930
    .4byte 0xC0029534 # lfs f0, lbl_8053C4D4@sda21(r0)
    stfs 0, 0x26c(30)
    lfs 1, 0x60(30)
    stfs 1, 0xa0(1)
    lfs 4, 0x64(30)
    stfs 4, 0xa4(1)
    lfs 2, 0x68(30)
    stfs 2, 0xa8(1)
    lfs 3, 0x6c(30)
    stfs 3, 0xac(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0xa0(1)
    lfs 2, 0x10(30)
    fadds 1, 4, 2
    stfs 0, 0xa8(1)
    fadds 0, 3, 2
    stfs 1, 0xa4(1)
    stfs 0, 0xac(1)
    lwz 0, 0x238(30)
    cmpwi 0, 0xc
    .4byte 0x41820030 # beq .L_8010CAE8
    cmpwi 0, 0xd
    .4byte 0x41820028 # beq .L_8010CAE8
    lwz 4, 0x4(30)
    addi 3, 1, 0xa0
    addi 5, 1, 0x2c
    bl fn_8023AB94
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8010CAE8
    mr 3, 30
    li 4, 0xc
    bl fn_8010C294
L_8010CAE8:
    lwz 0, 0x238(30)
    cmplwi 0, 0xd
    .4byte 0x41810A34 # bgt .L_8010D524
    lis 3, jumptable_8049D0AC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D0AC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 4, 0x4e55
    mr 3, 30
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    mr 3, 30
    addi 5, 1, 0xc
    addi 6, 1, 0x28
    stfs 0, 0x26c(30)
    addi 7, 1, 0x20
    addi 8, 1, 0x24
    li 9, 0x0
    lwz 4, 0x198(30)
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x24(1)
    cmpwi 0, 0x0
    .4byte 0x418009CC # blt .L_8010D524
    lfs 1, 0x20(1)
    .4byte 0xC0029524 # lfs f0, lbl_8053C4C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408009BC # bge .L_8010D524
    stw 0, 0x23c(30)
    mr 3, 30
    li 4, 0x1
    bl fn_8010C294
    .4byte 0x480009A8 # b .L_8010D524
    .4byte 0xC0029544 # lfs f0, lbl_8053C4E4@sda21(r0)
    stfs 0, 0x26c(30)
    lwz 3, 0x24c(30)
    addi 0, 3, 0x1
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x32
    .4byte 0x41800988 # blt .L_8010D524
    mr 3, 30
    li 4, 0x2
    bl fn_8010C294
    .4byte 0x48000978 # b .L_8010D524
    lwz 9, 0x23c(30)
    cmpwi 9, 0x0
    .4byte 0x4180023C # blt .L_8010CDF4
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    li 0, 0x0
    sth 0, 0xa(1)
    mr 3, 30
    addi 5, 1, 0xa
    addi 6, 1, 0x14
    stw 0, 0x14(1)
    addi 7, 1, 0x1c
    addi 8, 1, 0x18
    li 10, 0x2
    stw 0, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 4, 0x198(30)
    bl fn_801EEC98
    lhz 3, 0xa(1)
    lis 4, lbl_8052EBC0@ha
    lha 0, 0x230(30)
    addi 4, 4, lbl_8052EBC0@l
    addi 31, 4, 0x4
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    subf 0, 3, 0
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 31, 0
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_8010CC4C
    .4byte 0xC0229520 # lfs f1, lbl_8053C4C0@sda21(r0)
    lfsx 0, 4, 0
    fmuls 0, 1, 0
    fabs 0, 0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 3, 0xb4(1)
    addi 0, 3, 0x64
    extsh 5, 0
    .4byte 0x48000008 # b .L_8010CC50
L_8010CC4C:
    li 5, 0x2bc
L_8010CC50:
    lhz 0, 0xa(1)
    addi 3, 30, 0x230
    extsh 4, 0
    bl fn_801CD930
    lfs 1, 0x1c(1)
    .4byte 0xC0029524 # lfs f0, lbl_8053C4C4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8010CC88
    .4byte 0xC0229518 # lfs f1, lbl_8053C4B8@sda21(r0)
    addi 3, 30, 0x264
    .4byte 0xC0429528 # lfs f2, lbl_8053C4C8@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000014 # b .L_8010CC98
L_8010CC88:
    .4byte 0xC022952C # lfs f1, lbl_8053C4CC@sda21(r0)
    addi 3, 30, 0x264
    .4byte 0xC0429530 # lfs f2, lbl_8053C4D0@sda21(r0)
    bl fn_801CD950
L_8010CC98:
    lha 0, 0x230(30)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    lfs 2, 0x264(30)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    lfsx 1, 4, 0
    addi 3, 30, 0x3c
    fmuls 1, 2, 1
    stfs 1, 0x3c(30)
    lha 0, 0x230(30)
    lfs 2, 0x264(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 31, 0
    fmuls 1, 2, 1
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x0(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x8(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    bl PSVECMag
    .4byte 0xC0429518 # lfs f2, lbl_8053C4B8@sda21(r0)
    .4byte 0xC0029534 # lfs f0, lbl_8053C4D4@sda21(r0)
    fdivs 1, 1, 2
    stfs 1, 0x26c(30)
    lfs 1, 0x26c(30)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8010CD24
    stfs 0, 0x26c(30)
L_8010CD24:
    lwz 3, 0x4(30)
    cmpwi 3, 0x0
    .4byte 0x408200B4 # bne .L_8010CDE0
    lwz 0, 0x374(30)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8010CD64
    .4byte 0xC02294F4 # lfs f1, lbl_8053C494@sda21(r0)
    addi 4, 30, 0xc
    li 5, 0x3d3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x374(30)
L_8010CD64:
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x40
    lfs 0, 0x14(30)
    li 5, 0x0
    .4byte 0xC04294F8 # lfs f2, lbl_8053C498@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    stfs 0, 0x48(1)
    lfs 1, 0x260(30)
    lfs 0, 0x10(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x44(1)
    lwz 3, 0x374(30)
    bl fn_8013CB44
    lwz 3, 0x374(30)
    li 0, 0x80
    .4byte 0xC00294FC # lfs f0, lbl_8053C49C@sda21(r0)
    stb 0, 0xbb(3)
    lfs 1, 0x264(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8010CDD0
    lwz 3, 0x374(30)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x48000014 # b .L_8010CDE0
L_8010CDD0:
    lwz 3, 0x374(30)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_8010CDE0:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x7b
    li 5, 0x0
    bl fn_801F0E34
L_8010CDF4:
    .4byte 0xC0429514 # lfs f2, lbl_8053C4B4@sda21(r0)
    lfs 0, 0x264(30)
    .4byte 0xC0229518 # lfs f1, lbl_8053C4B8@sda21(r0)
    fmuls 2, 2, 0
    lfs 3, 0x260(30)
    .4byte 0xC0029504 # lfs f0, lbl_8053C4A4@sda21(r0)
    fdivs 1, 2, 1
    fadds 1, 3, 1
    stfs 1, 0x260(30)
    lfs 1, 0x260(30)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8010CE2C
    stfs 0, 0x260(30)
L_8010CE2C:
    .4byte 0xC022951C # lfs f1, lbl_8053C4BC@sda21(r0)
    lis 3, 0x4e55
    lfs 0, 0x260(30)
    addi 4, 3, 0x4c4c
    mr 3, 30
    li 6, 0x0
    fmuls 0, 1, 0
    mr 5, 4
    fneg 1, 0
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x80(30)
    lfs 0, 0x64(30)
    stfs 0, 0x84(30)
    lfs 0, 0x68(30)
    stfs 0, 0x88(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x8c(30)
    bl fn_801F2DB4
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8010CECC
    mr 3, 30
    li 4, 0x7
    bl fn_8010C294
L_8010CECC:
    mr 3, 30
    addi 4, 1, 0x94
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820644 # beq .L_8010D524
    mr 3, 30
    li 4, 0x5
    bl fn_8010C294
    .4byte 0x48000634 # b .L_8010D524
    psq_l 1, 0xc(30), 0, 0
    addi 5, 1, 0x70
    lfs 0, 0x14(30)
    addi 3, 30, 0x2ac
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x78(1)
    lwz 4, 0x258(30)
    lwz 6, 0x4(30)
    bl fn_800FE3EC
    mr 3, 30
    li 4, 0x4
    bl fn_8010C294
    .4byte 0x48000600 # b .L_8010D524
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x4081015C # ble .L_8010D08C
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    addi 4, 1, 0x64
    .4byte 0xC02294F4 # lfs f1, lbl_8053C494@sda21(r0)
    addi 3, 30, 0x2ac
    stfs 0, 0x58(1)
    addi 5, 1, 0x58
    addi 6, 1, 0x10
    addi 7, 1, 0x8
    stfs 0, 0x5c(1)
    li 8, 0x200
    stfs 0, 0x60(1)
    lwz 0, 0x4(30)
    stw 0, 0x10(1)
    psq_l 2, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 2, 0x0(4), 0, 0
    stfs 0, 0x6c(1)
    bl fn_800FDEA0
    lfs 0, 0x58(1)
    addi 4, 30, 0xc
    stfs 0, 0x3c(30)
    lfs 0, 0x5c(1)
    stfs 0, 0x40(30)
    lfs 0, 0x60(1)
    stfs 0, 0x44(30)
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x4(30)
    cmpwi 3, 0x0
    .4byte 0x408200B0 # bne .L_8010D078
    lwz 0, 0x374(30)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8010CFFC
    .4byte 0xC02294F4 # lfs f1, lbl_8053C494@sda21(r0)
    li 5, 0x3d3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x374(30)
L_8010CFFC:
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x34
    lfs 0, 0x14(30)
    li 5, 0x0
    .4byte 0xC04294F8 # lfs f2, lbl_8053C498@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    stfs 0, 0x3c(1)
    lfs 1, 0x260(30)
    lfs 0, 0x10(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x38(1)
    lwz 3, 0x374(30)
    bl fn_8013CB44
    lwz 3, 0x374(30)
    li 0, 0x80
    .4byte 0xC00294FC # lfs f0, lbl_8053C49C@sda21(r0)
    stb 0, 0xbb(3)
    lfs 1, 0x264(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8010D068
    lwz 3, 0x374(30)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x48000014 # b .L_8010D078
L_8010D068:
    lwz 3, 0x374(30)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
L_8010D078:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x7b
    li 5, 0x0
    bl fn_801F0E34
L_8010D08C:
    lis 4, 0x4e55
    mr 3, 30
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    .4byte 0x4800046C # b .L_8010D524
    .4byte 0xC022950C # lfs f1, lbl_8053C4AC@sda21(r0)
    addi 3, 30, 0x44
    .4byte 0xC0429510 # lfs f2, lbl_8053C4B0@sda21(r0)
    bl fn_801CD950
    psq_l 2, 0xc(30), 0, 0
    psq_l 1, 0x3c(30), 0, 0
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(30), 0, 0
    psq_l 2, 0x14(30), 1, 0
    psq_l 1, 0x44(30), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(30), 1, 0
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8010D110
    stfs 0, 0x14(30)
    li 0, 0x1
    stfs 0, 0x44(30)
    .4byte 0x48000008 # b .L_8010D114
L_8010D110:
    li 0, 0x0
L_8010D114:
    clrlwi. 0, 0, 24
    .4byte 0x4182040C # beq .L_8010D524
    mr 3, 30
    li 4, 0x6
    bl fn_8010C294
    .4byte 0x480003FC # b .L_8010D524
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    lis 3, 0x4e55
    addi 4, 3, 0x4c4c
    mr 3, 30
    stfs 0, 0x26c(30)
    mr 5, 4
    li 6, 0x0
    bl fn_801F2DB4
    lwz 4, 0x4(30)
    addi 3, 1, 0xa0
    lwz 5, 0x198(30)
    bl fn_80239914
    lwz 3, 0x244(30)
    addi 0, 3, 0x1
    stw 0, 0x244(30)
    lwz 0, 0x244(30)
    cmpwi 0, 0xb4
    .4byte 0x418003B4 # blt .L_8010D524
    mr 3, 30
    li 4, 0x0
    bl fn_8010C294
    .4byte 0x480003A4 # b .L_8010D524
    lwz 3, 0x248(30)
    addi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x3c
    .4byte 0x40810020 # ble .L_8010D1B8
    mr 3, 30
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    li 0, 0x3c
    stw 0, 0x248(30)
L_8010D1B8:
    mr 3, 30
    addi 4, 1, 0x88
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8010D1E0
    mr 3, 30
    li 4, 0x5
    bl fn_8010C294
    .4byte 0x48000348 # b .L_8010D524
L_8010D1E0:
    .4byte 0xC0229548 # lfs f1, lbl_8053C4E8@sda21(r0)
    addi 3, 30, 0x264
    .4byte 0xC042954C # lfs f2, lbl_8053C4EC@sda21(r0)
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8010D204
    mr 3, 30
    li 4, 0x2
    bl fn_8010C294
L_8010D204:
    lha 0, 0x230(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x264(30)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    lfsx 1, 3, 0
    addi 4, 30, 0xc
    fmuls 1, 2, 1
    stfs 1, 0x3c(30)
    lha 0, 0x230(30)
    lfs 2, 0x264(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmuls 1, 2, 1
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x4(30)
    cmpwi 3, 0x0
    .4byte 0x408202B0 # bne .L_8010D524
    lwz 0, 0x374(30)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8010D2A8
    .4byte 0xC02294F4 # lfs f1, lbl_8053C494@sda21(r0)
    li 5, 0x3d3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x374(30)
L_8010D2A8:
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x4c
    lfs 0, 0x14(30)
    li 5, 0x0
    .4byte 0xC04294F8 # lfs f2, lbl_8053C498@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    stfs 0, 0x54(1)
    lfs 1, 0x260(30)
    lfs 0, 0x10(30)
    fmadds 0, 2, 1, 0
    stfs 0, 0x50(1)
    lwz 3, 0x374(30)
    bl fn_8013CB44
    lwz 3, 0x374(30)
    li 0, 0x80
    .4byte 0xC00294FC # lfs f0, lbl_8053C49C@sda21(r0)
    stb 0, 0xbb(3)
    lfs 1, 0x264(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8010D314
    lwz 3, 0x374(30)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x48000214 # b .L_8010D524
L_8010D314:
    lwz 3, 0x374(30)
    lwz 0, 0xf4(3)
    clrrwi 0, 0, 1
    stw 0, 0xf4(3)
    .4byte 0x48000200 # b .L_8010D524
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    stfs 0, 0x26c(30)
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8010D36C
    lwz 3, 0xc8(30)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    stfs 0, 0xc(30)
    lfs 0, 0x4(3)
    stfs 0, 0x10(30)
    lfs 0, 0x8(3)
    stfs 0, 0x14(30)
    lwz 3, 0xc8(30)
    bl fn_8023DE58
    stw 3, 0x4(30)
    .4byte 0x480001BC # b .L_8010D524
L_8010D36C:
    mr 3, 30
    li 4, 0x9
    bl fn_8010C294
    .4byte 0x480001AC # b .L_8010D524
    lwz 4, 0x114(30)
    mr 3, 30
    lwz 5, 0x23c(30)
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8010D3C4
    mr 3, 30
    li 4, 0x0
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8010D3C4
    mr 3, 30
    addi 4, 1, 0x7c
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8010D3D4
L_8010D3C4:
    mr 3, 30
    li 4, 0xa
    bl fn_8010C294
    .4byte 0x48000154 # b .L_8010D524
L_8010D3D4:
    .4byte 0xC022950C # lfs f1, lbl_8053C4AC@sda21(r0)
    addi 3, 30, 0x44
    .4byte 0xC0429510 # lfs f2, lbl_8053C4B0@sda21(r0)
    bl fn_801CD950
    psq_l 2, 0xc(30), 0, 0
    psq_l 1, 0x3c(30), 0, 0
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(30), 0, 0
    psq_l 2, 0x14(30), 1, 0
    psq_l 1, 0x44(30), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(30), 1, 0
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8010D428
    stfs 0, 0x14(30)
    li 0, 0x1
    stfs 0, 0x44(30)
    .4byte 0x48000008 # b .L_8010D42C
L_8010D428:
    li 0, 0x0
L_8010D42C:
    clrlwi. 0, 0, 24
    .4byte 0x418200F4 # beq .L_8010D524
    mr 3, 30
    li 4, 0xa
    bl fn_8010C294
    .4byte 0x480000E4 # b .L_8010D524
    lwz 4, 0x4(30)
    addi 3, 1, 0xa0
    lwz 5, 0x198(30)
    bl fn_80239914
    addi 3, 30, 0x274
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_8010D524
    .4byte 0xC022950C # lfs f1, lbl_8053C4AC@sda21(r0)
    addi 3, 30, 0x44
    .4byte 0xC0429510 # lfs f2, lbl_8053C4B0@sda21(r0)
    bl fn_801CD950
    psq_l 2, 0xc(30), 0, 0
    psq_l 1, 0x3c(30), 0, 0
    .4byte 0xC00294F0 # lfs f0, lbl_8053C490@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(30), 0, 0
    psq_l 2, 0x14(30), 1, 0
    psq_l 1, 0x44(30), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(30), 1, 0
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8010D4B8
    stfs 0, 0x14(30)
    li 0, 0x1
    stfs 0, 0x44(30)
    .4byte 0x48000008 # b .L_8010D4BC
L_8010D4B8:
    li 0, 0x0
L_8010D4BC:
    clrlwi. 0, 0, 24
    .4byte 0x41820064 # beq .L_8010D524
    mr 3, 30
    li 4, 0xb
    bl fn_8010C294
    .4byte 0x48000054 # b .L_8010D524
    lwz 4, 0x4(30)
    addi 3, 1, 0xa0
    lwz 5, 0x198(30)
    bl fn_80239914
    .4byte 0x48000040 # b .L_8010D524
    li 0, 0x0
    addi 3, 1, 0xa0
    stb 0, 0x11d(30)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239914
    lwz 3, 0x250(30)
    addi 0, 3, 0x1
    stw 0, 0x250(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x5a
    .4byte 0x41800010 # blt .L_8010D524
    mr 3, 30
    li 4, 0xd
    bl fn_8010C294
L_8010D524:
    lfs 0, 0x260(30)
    addi 3, 30, 0x274
    stfs 0, 0x54(30)
    stfs 0, 0x58(30)
    stfs 0, 0x5c(30)
    lfs 0, 0x26c(30)
    stfs 0, 0x2a4(30)
    bl fn_801D1C18
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8010D55C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8010D594
    .4byte 0x4800001C # b .L_8010D5AC
L_8010D594:
    .4byte 0xC0029504 # lfs f0, lbl_8053C4A4@sda21(r0)
    stfs 0, 0x260(31)
    lfs 0, 0x260(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
L_8010D5AC:
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 16
    stw 0, 0x258(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 8
    stw 0, 0x25c(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40810030 # ble .L_8010D5FC
    .4byte 0xC0229504 # lfs f1, lbl_8053C4A4@sda21(r0)
    lfs 0, 0x260(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_8010D5FC
    .4byte 0xC0229550 # lfs f1, lbl_8053C4F0@sda21(r0)
    .4byte 0xC0029500 # lfs f0, lbl_8053C4A0@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800001C # b .L_8010D614
L_8010D5FC:
    .4byte 0xC0229554 # lfs f1, lbl_8053C4F4@sda21(r0)
    .4byte 0xC002951C # lfs f0, lbl_8053C4BC@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8010D614:
    lfs 0, 0x60(31)
    lis 3, 0xa04
    li 9, 0x3e8
    li 8, 0x1
    stfs 0, 0x70(31)
    li 7, 0x2
    li 6, 0x3
    addi 0, 3, 0x304
    lfs 0, 0x64(31)
    addi 3, 31, 0x274
    .4byte 0x388D8328 # li r4, lbl_80539EE8@sda21
    li 5, 0x2
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
    stw 9, 0x108(31)
    stw 8, 0xb8(31)
    stw 7, 0xf8(31)
    stw 6, 0xbc(31)
    stw 8, 0x1a4(31)
    stw 7, 0x118(31)
    stw 7, 0x114(31)
    lwz 6, 0x98(31)
    stw 6, 0x240(31)
    stw 0, 0xb0(31)
    bl fn_801D2608
    addi 3, 31, 0x274
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02294F0 # lfs f1, lbl_8053C490@sda21(r0)
    addi 3, 31, 0x274
    bl fn_801D1F14
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_8010D6DC
    mr 3, 31
    li 4, 0x3
    bl fn_8010C294
L_8010D6DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8010D6F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820078 # beq .L_8010D784
    lis 3, lbl_8049D020@ha
    addi 0, 3, lbl_8049D020@l
    stw 0, 0x0(30)
    lwz 3, 0x374(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x374(30)
    lwz 3, 0x378(30)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x378(30)
    lwz 3, 0x37c(30)
    bl fn_801EE434
    li 3, 0x0
    addic. 0, 30, 0x274
    stw 3, 0x37c(30)
    .4byte 0x41820018 # beq .L_8010D768
    addic. 0, 30, 0x298
    .4byte 0x41820010 # beq .L_8010D768
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x298(30)
L_8010D768:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8010D784
    mr 3, 30
    bl dtor_80084580
L_8010D784:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8010C070

