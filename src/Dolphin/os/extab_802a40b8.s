# MAJOR DISCOVERY: found via a whole-DOL dispatch-table cross-check
# (scanned every actor ctor already landed in src/ that calls the base
# Actor ctor Actor_ctor, extracted which vtable it installs, then
# checked whether that vtable's dtor slot is landed - 153 total misses
# found across ~0x8010D000-0x8037D000, this being the first).
# 11-function dtk-fused bundle (0x802A40B8-0x802A6A4C, ~10.4KB), Track A
# (structural overview, matching the size/complexity precedent of the
# other large bundles in this project).
# Vtable body for a real FourCC actor (vtable lbl_804A7E58) whose ctor
# (fn_80203DEC, already landed - calls base ctor Actor_ctor then installs
# this vtable) sits in the actor-ctor-dispatch region. Confirmed vtable
# layout: dtor (fn_802A40B8), a custom slot at +0x20 (fn_802A4118), update
# (fn_802A4190, real slot +0x14), another custom slot at +0xc
# (fn_802A4404) - the REST of the vtable (+0x18 onward) uses the confirmed
# universal shared-Actor-default methods (already landed elsewhere).
# fn_802A4654/802A4780/802A4A4C(0x1A9C, the largest function in this
# bundle)/802A64E8/802A6600 are NOT vtable slots for this OR the next
# actor - they sit contiguously between this actor's static-init
# (fn_802A4430) and the next actor's dtor, and are almost certainly
# private (non-virtual) helper methods this actor's vtable methods call
# internally. Landed as one bundle since the whole span is 100%
# byte-contiguous from this dtor to the next actor's dtor - not
# field-mapped or semantically named beyond what's stated here. Needs
# -mgekko (uses psq_l/psq_st).
.section extab, "a"
.balign 4
.global etb_8000C43C
etb_8000C43C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C43C, 8

.global etb_8000C444
etb_8000C444:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C444, 8

.global etb_8000C44C
etb_8000C44C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C44C, 8

.global etb_8000C454
etb_8000C454:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C454, 8

.global etb_8000C45C
etb_8000C45C:
    .4byte 0x390A0000
    .4byte 0x00000000
.size etb_8000C45C, 8

.global etb_8000C464
etb_8000C464:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_8000C464, 8

.global etb_8000C46C
etb_8000C46C:
    .4byte 0x708A0000
    .4byte 0x00000000
.size etb_8000C46C, 8

.global etb_8000C474
etb_8000C474:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000C474, 8

.global etb_8000C47C
etb_8000C47C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C47C, 8

.global etb_8000C484
etb_8000C484:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C484, 8

.section extabindex, "a"
.balign 4
.global eti_8001B004
eti_8001B004:
    .4byte fn_802A40B8
    .4byte 0x00000060
    .4byte etb_8000C43C
.size eti_8001B004, 12

.global eti_8001B010
eti_8001B010:
    .4byte fn_802A4118
    .4byte 0x00000078
    .4byte etb_8000C444
.size eti_8001B010, 12

.global eti_8001B01C
eti_8001B01C:
    .4byte fn_802A4190
    .4byte 0x00000274
    .4byte etb_8000C44C
.size eti_8001B01C, 12

.global eti_8001B028
eti_8001B028:
    .4byte fn_802A4430
    .4byte 0x00000224
    .4byte etb_8000C454
.size eti_8001B028, 12

.global eti_8001B034
eti_8001B034:
    .4byte fn_802A4654
    .4byte 0x0000012C
    .4byte etb_8000C45C
.size eti_8001B034, 12

.global eti_8001B040
eti_8001B040:
    .4byte fn_802A4780
    .4byte 0x000002CC
    .4byte etb_8000C464
.size eti_8001B040, 12

.global eti_8001B04C
eti_8001B04C:
    .4byte fn_802A4A4C
    .4byte 0x00001A9C
    .4byte etb_8000C46C
.size eti_8001B04C, 12

.global eti_8001B058
eti_8001B058:
    .4byte fn_802A64E8
    .4byte 0x00000118
    .4byte etb_8000C474
.size eti_8001B058, 12

.global eti_8001B064
eti_8001B064:
    .4byte fn_802A6600
    .4byte 0x00000228
    .4byte etb_8000C47C
.size eti_8001B064, 12

.global eti_8001B070
eti_8001B070:
    .4byte fn_802A6828
    .4byte 0x00000224
    .4byte etb_8000C484
.size eti_8001B070, 12

.text
.balign 4
.global fn_802A40B8
.global fn_802A4118
.global fn_802A4190
.global fn_802A4404
.global fn_802A4430
.global fn_802A4654
.global fn_802A4780
.global fn_802A4A4C
.global fn_802A64E8
.global fn_802A6600
.global fn_802A6828

fn_802A40B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802A40FC
    lis 5, lbl_804A7E58@ha
    li 4, 0x0
    addi 0, 5, lbl_804A7E58@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802A40FC
    mr 3, 30
    bl dtor_80084580
L_802A40FC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A4118:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022D800 # lfs f1, lbl_805407A0@sda21(r0)
    lis 4, lbl_8046C640@ha
    stw 0, 0x24(1)
    addi 4, 4, lbl_8046C640@l
    fmr 2, 1
    li 5, 0x31
    stw 31, 0x1c(1)
    mr 31, 3
    li 6, 0x0
    li 7, 0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x31
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A4190:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    lfs 6, 0x10(3)
    cmpwi 0, 0x1
    lfs 5, 0xc(3)
    .4byte 0x418201A8 # beq .L_802A435C
    .4byte 0x408001FC # bge .L_802A43B4
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802A41C8
    .4byte 0x480001F0 # b .L_802A43B4
L_802A41C8:
    .4byte 0xC022D804 # lfs f1, lbl_805407A4@sda21(r0)
    lfs 0, 0x14(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820010 # bne .L_802A41E4
    lfs 0, 0x44(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820058 # beq .L_802A4238
L_802A41E4:
    psq_l 2, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    .4byte 0xC022D808 # lfs f1, lbl_805407A8@sda21(r0)
    ps_add 2, 2, 0
    .4byte 0xC002D804 # lfs f0, lbl_805407A4@sda21(r0)
    psq_st 2, 0xc(31), 0, 0
    psq_l 3, 0x14(31), 1, 0
    psq_l 2, 0x44(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x14(31), 1, 0
    lfs 2, 0x44(31)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802A4238
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_802A4238:
    lfs 0, 0x60(31)
    addi 3, 1, 0x14
    .4byte 0xC022D804 # lfs f1, lbl_805407A4@sda21(r0)
    li 5, 0x1
    stfs 0, 0x14(1)
    fadds 4, 0, 5
    lfs 0, 0x64(31)
    stfs 0, 0x18(1)
    fadds 3, 0, 6
    lfs 0, 0x68(31)
    stfs 0, 0x1c(1)
    fadds 2, 0, 5
    lfs 5, 0x6c(31)
    fadds 0, 5, 6
    stfs 5, 0x20(1)
    stfs 4, 0x14(1)
    stfs 3, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    stw 3, 0x238(31)
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4180011C # blt .L_802A43B4
    bl fn_8023ED8C
    clrlwi. 0, 3, 24
    .4byte 0x40820110 # bne .L_802A43B4
    lwz 3, 0x238(31)
    bl fn_8023EBB8
    clrlwi. 0, 3, 24
    .4byte 0x40820100 # bne .L_802A43B4
    lfs 1, 0x14(31)
    .4byte 0xC002D804 # lfs f0, lbl_805407A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200EC # bne .L_802A43B4
    lwz 3, 0x238(31)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 3, 0x8(3)
    psq_st 0, 0x24(1), 0, 0
    .4byte 0xC042D80C # lfs f2, lbl_805407AC@sda21(r0)
    lfs 0, 0x24(1)
    lfs 1, 0x28(1)
    fadds 2, 2, 0
    .4byte 0xC002D810 # lfs f0, lbl_805407B0@sda21(r0)
    stfs 3, 0x2c(1)
    fsubs 0, 1, 0
    stfs 2, 0xc(31)
    stfs 0, 0x10(31)
    lwz 3, 0x238(31)
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200A0 # bne .L_802A43B4
    bl SpatialRegistry_GetBase
    lwz 0, 0x238(31)
    lis 4, 0x494d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5550
    slwi 6, 0, 24
    slwi 0, 0, 26
    addis 7, 6, 0x80
    li 8, -0x1
    add 7, 7, 0
    addi 6, 31, 0xc
    li 9, -0x1
    addi 7, 7, 0x14
    bl fn_801F9484
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800005C # b .L_802A43B4
L_802A435C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_802A43A0
    lwz 3, 0x238(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802A43A0
    lwz 3, 0x238(31)
    li 4, 0x0
    bl fn_80230224
    lwz 0, 0x90(31)
    li 4, 0x0
    clrlwi 3, 0, 28
    bl fn_80230224
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000018 # b .L_802A43B4
L_802A43A0:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802A43B4
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_802A43B4:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_802A43F0
    lfs 2, 0x10(31)
    addi 4, 1, 0x8
    lfs 0, 0x14(31)
    lfs 1, 0xc(31)
    fsubs 2, 2, 0
    .4byte 0xC002D804 # lfs f0, lbl_805407A4@sda21(r0)
    stfs 1, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_802A43F0:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802A4404:
    .4byte 0xC042D814 # lfs f2, lbl_805407B4@sda21(r0)
    li 0, 0x0
    .4byte 0xC022D818 # lfs f1, lbl_805407B8@sda21(r0)
    stfs 2, 0x60(3)
    .4byte 0xC002D804 # lfs f0, lbl_805407A4@sda21(r0)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 0, 0x44(3)
    stw 0, 0x230(3)
    blr

fn_802A4430:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0A68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0A68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A4480
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
L_802A4480:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A44B8
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
L_802A44B8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A44F0
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
L_802A44F0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A4528
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
L_802A4528:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A4560
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
L_802A4560:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A4598
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
L_802A4598:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A45D0
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
L_802A45D0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A4608
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
L_802A4608:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A4640
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
L_802A4640:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A4654:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    mr 29, 3
    lis 4, lbl_8046C658@ha
    lis 3, lbl_8046C6C8@ha
    lfs 30, 0xc(29)
    lfs 29, 0x10(29)
    addi 25, 4, lbl_8046C658@l
    lfs 28, 0x14(29)
    addi 27, 3, lbl_8046C6C8@l
    .4byte 0xCBE2D820 # lfd f31, lbl_805407C0@sda21(r0)
    li 30, 0x0
    li 31, 0x0
    lis 26, 0x4330
    lis 28, 0x3
L_802A46B8:
    lwz 0, 0x234(29)
    mr 3, 29
    stw 26, 0x8(1)
    addi 4, 28, 0x84
    slwi 0, 0, 4
    li 5, 0x0
    add 6, 25, 0
    stw 26, 0x10(1)
    lwzx 0, 6, 31
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 31
    fadds 0, 30, 0
    stfs 0, 0xc(29)
    lwz 0, 0x234(29)
    slwi 0, 0, 4
    add 6, 27, 0
    lwzx 0, 6, 31
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fadds 0, 29, 0
    stfs 0, 0x10(29)
    bl fn_801F0E34
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 29, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF7C # blt .L_802A46B8
    stfs 30, 0xc(29)
    stfs 29, 0x10(29)
    stfs 28, 0x14(29)
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802A4780:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stmw 24, 0x70(1)
    mr 26, 3
    lis 3, lbl_8046C658@ha
    lwz 0, 0x230(26)
    addi 30, 3, lbl_8046C658@l
    cmpwi 0, 0x2
    .4byte 0x41800284 # blt .L_802A4A30
    cmpwi 0, 0x9
    .4byte 0x4080027C # bge .L_802A4A30
    li 0, -0x1
    addi 9, 1, 0x20
    stw 0, 0x30(1)
    li 10, 0x0
    stw 0, 0x34(1)
    .4byte 0x48000064 # b .L_802A4830
L_802A47D0:
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
L_802A4830:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802A47D0
    li 28, 0x0
    li 4, 0x1
    li 5, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0x30(1)
    .4byte 0xCBE2D820 # lfd f31, lbl_805407C0@sda21(r0)
    addi 31, 30, 0x70
    stw 28, 0x34(1)
    addi 25, 30, 0x0
    li 27, 0x0
    lis 24, 0x4330
    stw 28, 0x38(1)
    stb 28, 0x3c(1)
    stb 28, 0x3d(1)
    stb 28, 0x3e(1)
    stb 4, 0x3f(1)
    stb 4, 0x40(1)
    stb 28, 0x41(1)
    stb 28, 0x42(1)
    stb 28, 0x43(1)
    stb 28, 0x44(1)
    stb 28, 0x45(1)
    stb 4, 0x46(1)
    stw 3, 0x48(1)
    stb 4, 0x4c(1)
    stb 28, 0x4d(1)
    stb 28, 0x4e(1)
    stw 5, 0x50(1)
    stw 28, 0x54(1)
    stw 0, 0x58(1)
L_802A48B8:
    li 0, -0x1
    stw 24, 0x60(1)
    stb 0, 0x3d(1)
    lwz 0, 0x234(26)
    lwz 4, 0x250(26)
    slwi 0, 0, 4
    stw 24, 0x68(1)
    add 0, 0, 28
    lfs 3, 0x10(26)
    lwzx 3, 31, 0
    addi 29, 4, 0x10d
    lwzx 0, 25, 0
    xoris 3, 3, 0x8000
    lfs 1, 0xc(26)
    xoris 0, 0, 0x8000
    stw 3, 0x64(1)
    lfs 4, 0x14(26)
    stw 0, 0x6c(1)
    lfd 2, 0x60(1)
    lfd 0, 0x68(1)
    fsubs 2, 2, 31
    stfs 4, 0x1c(1)
    fsubs 0, 0, 31
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x18(1)
    stfs 0, 0x14(1)
    lwz 0, 0x4(26)
    cmpwi 0, 0x8
    .4byte 0x4080004C # bge .L_802A4978
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    addi 4, 3, 0x4220
    addi 5, 30, 0x1bc
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 29
    fmr 2, 1
    addi 7, 1, 0x20
    lwz 3, 0x20(4)
    addi 4, 1, 0x14
    bl fn_802F86CC
L_802A4978:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FF34 # blt .L_802A48B8
    mr 25, 26
    mr 27, 26
    li 28, 0x0
L_802A4994:
    lwz 0, 0x254(25)
    cmpwi 0, 0x0
    .4byte 0x41800080 # blt .L_802A4A1C
    li 0, -0x1
    stb 0, 0x3d(1)
    lwz 3, 0x250(26)
    lfs 2, 0x26c(27)
    lfs 1, 0x268(27)
    addi 24, 3, 0x10a
    lfs 0, 0x264(27)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 2, 0x10(1)
    lwz 0, 0x4(26)
    cmpwi 0, 0x8
    .4byte 0x4080004C # bge .L_802A4A1C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x534f
    addi 4, 3, 0x4220
    addi 5, 30, 0x1bc
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 24
    fmr 2, 1
    addi 7, 1, 0x20
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_802A4A1C:
    addi 28, 28, 0x1
    addi 27, 27, 0xc
    cmpwi 28, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FF68 # blt .L_802A4994
L_802A4A30:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    lmw 24, 0x70(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_802A4A4C:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stmw 18, 0x78(1)
    mr 31, 3
    lis 4, lbl_8046C658@ha
    lwz 0, 0x230(3)
    addi 30, 4, lbl_8046C658@l
    cmplwi 0, 0xa
    .4byte 0x41811734 # bgt .L_802A61B4
    lis 4, jumptable_804A7F08@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A7F08@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x41820178 # beq .L_802A4C1C
    .4byte 0x40800010 # bge .L_802A4AB8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802A4AC4
    .4byte 0x48001700 # b .L_802A61B4
L_802A4AB8:
    cmpwi 0, 0x3
    .4byte 0x408016F8 # bge .L_802A61B4
    .4byte 0x480002BC # b .L_802A4D7C
L_802A4AC4:
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x1
    .4byte 0x408216E4 # bne .L_802A61B4
    lfs 0, 0x14(31)
    addi 20, 30, 0x0
    .4byte 0xCBC2D820 # lfd f30, lbl_805407C0@sda21(r0)
    addi 18, 30, 0x70
    stfs 0, 0x60(1)
    li 22, 0x0
    li 21, 0x0
    lis 19, 0x4330
L_802A4AF4:
    lwz 0, 0x234(31)
    addi 4, 1, 0x58
    stw 19, 0x68(1)
    li 5, 0x202
    slwi 0, 0, 4
    lfs 3, 0xc(31)
    add 0, 0, 21
    stw 19, 0x70(1)
    lwzx 3, 20, 0
    li 6, 0x1
    lwzx 0, 18, 0
    li 7, 0x0
    xoris 3, 3, 0x8000
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stw 3, 0x6c(1)
    xoris 0, 0, 0x8000
    li 8, 0x0
    li 9, 0x0
    lfd 0, 0x68(1)
    li 10, 0x1
    stw 0, 0x74(1)
    fsubs 2, 0, 30
    lfd 0, 0x70(1)
    fadds 2, 3, 2
    fsubs 0, 0, 30
    stfs 2, 0x58(1)
    lfs 2, 0x10(31)
    fadds 0, 2, 0
    stfs 0, 0x5c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x203
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x204
    li 6, 0x0
    li 7, -0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x205
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x3c
    addi 22, 22, 0x1
    stw 0, 0x30c(31)
    li 0, 0x0
    cmpwi 22, 0x4
    addi 21, 21, 0x4
    stb 0, 0x310(31)
    .4byte 0x4180FEF0 # blt .L_802A4AF4
    li 3, 0xa
    li 0, 0x1
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x4800159C # b .L_802A61B4
L_802A4C1C:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41821584 # beq .L_802A61B4
    lfs 0, 0x14(31)
    li 22, 0x0
    .4byte 0xCBC2D820 # lfd f30, lbl_805407C0@sda21(r0)
    mr 21, 22
    stfs 0, 0x60(1)
    addi 20, 30, 0x0
    addi 18, 30, 0x70
    lis 19, 0x4330
L_802A4C54:
    lwz 0, 0x234(31)
    addi 4, 1, 0x58
    stw 19, 0x70(1)
    li 5, 0x202
    slwi 0, 0, 4
    lfs 3, 0xc(31)
    add 0, 0, 21
    stw 19, 0x68(1)
    lwzx 3, 20, 0
    li 6, 0x1
    lwzx 0, 18, 0
    li 7, 0x0
    xoris 3, 3, 0x8000
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stw 3, 0x74(1)
    xoris 0, 0, 0x8000
    li 8, 0x0
    li 9, 0x0
    lfd 0, 0x70(1)
    li 10, 0x1
    stw 0, 0x6c(1)
    fsubs 2, 0, 30
    lfd 0, 0x68(1)
    fadds 2, 3, 2
    fsubs 0, 0, 30
    stfs 2, 0x58(1)
    lfs 2, 0x10(31)
    fadds 0, 2, 0
    stfs 0, 0x5c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x203
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x204
    li 6, 0x0
    li 7, -0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x205
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x3c
    addi 22, 22, 0x1
    stw 0, 0x30c(31)
    li 0, 0x0
    cmpwi 22, 0x4
    addi 21, 21, 0x4
    stb 0, 0x310(31)
    .4byte 0x4180FEF0 # blt .L_802A4C54
    li 3, 0xa
    li 0, 0x1
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x4800143C # b .L_802A61B4
L_802A4D7C:
    lfs 0, 0x14(31)
    li 22, 0x0
    .4byte 0xCBC2D820 # lfd f30, lbl_805407C0@sda21(r0)
    mr 21, 22
    stfs 0, 0x60(1)
    addi 20, 30, 0x0
    addi 18, 30, 0x70
    lis 19, 0x4330
L_802A4D9C:
    lwz 0, 0x234(31)
    addi 4, 1, 0x58
    stw 19, 0x70(1)
    li 5, 0x202
    slwi 0, 0, 4
    lfs 3, 0xc(31)
    add 0, 0, 21
    stw 19, 0x68(1)
    lwzx 3, 20, 0
    li 6, 0x1
    lwzx 0, 18, 0
    li 7, 0x0
    xoris 3, 3, 0x8000
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stw 3, 0x74(1)
    xoris 0, 0, 0x8000
    li 8, 0x0
    li 9, 0x0
    lfd 0, 0x70(1)
    li 10, 0x1
    stw 0, 0x6c(1)
    fsubs 2, 0, 30
    lfd 0, 0x68(1)
    fadds 2, 3, 2
    fsubs 0, 0, 30
    stfs 2, 0x58(1)
    lfs 2, 0x10(31)
    fadds 0, 2, 0
    stfs 0, 0x5c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x203
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x204
    li 6, 0x0
    li 7, -0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x205
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x3c
    addi 22, 22, 0x1
    stw 0, 0x30c(31)
    li 0, 0x0
    cmpwi 22, 0x4
    addi 21, 21, 0x4
    stb 0, 0x310(31)
    .4byte 0x4180FEF0 # blt .L_802A4D9C
    li 3, 0xa
    li 0, 0x1
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x480012F4 # b .L_802A61B4
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408212CC # bne .L_802A61B4
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x418200F4 # beq .L_802A4FE8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_802A4FE8
    li 3, 0x64
    bl fn_801CD664
    cmpwi 3, 0x21
    lis 4, 0x4352
    addi 18, 4, 0x544c
    li 19, 0x0
    .4byte 0x40800018 # bge .L_802A4F38
    lis 4, 0x5255
    lis 3, 0x1c
    addi 18, 4, 0x5059
    addi 19, 3, 0x7
    .4byte 0x48000018 # b .L_802A4F4C
L_802A4F38:
    cmpwi 3, 0x42
    .4byte 0x40800010 # bge .L_802A4F4C
    lis 3, 0x4842
    li 19, 0x9
    addi 18, 3, 0x4d42
L_802A4F4C:
    lwz 0, 0x234(31)
    addi 4, 30, 0x130
    addi 3, 30, 0x118
    .4byte 0xC022D82C # lfs f1, lbl_805407CC@sda21(r0)
    slwi 0, 0, 2
    lfs 0, 0x14(31)
    lfs 3, 0x10(31)
    lfsx 2, 4, 0
    fadds 4, 1, 0
    lfs 1, 0xc(31)
    lfsx 0, 3, 0
    fadds 2, 3, 2
    stfs 4, 0x44(1)
    fadds 0, 1, 0
    stfs 2, 0x40(1)
    stfs 0, 0x3c(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 4, 18
    mr 7, 19
    addi 6, 1, 0x3c
    bl fn_801F8544
    subis 0, 18, 0x4842
    mr 18, 3
    cmplwi 0, 0x4d42
    .4byte 0x40820038 # bne .L_802A4FE8
    bl SpatialRegistry_GetBase
    mr 4, 18
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_802A4FE8
    .4byte 0xC022D830 # lfs f1, lbl_805407D0@sda21(r0)
    .4byte 0xC002D834 # lfs f0, lbl_805407D4@sda21(r0)
    stfs 1, 0x30(1)
    stfs 1, 0x34(1)
    psq_l 1, 0x30(1), 0, 0
    stfs 0, 0x38(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_802A4FE8:
    bl GetRoomConfigRecord
    lwz 4, 0x240(31)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    li 0, 0x2
    li 3, 0xe6
    stw 0, 0x230(31)
    li 0, 0x12c
    stw 3, 0x31c(31)
    stw 0, 0x244(31)
    .4byte 0x480011A0 # b .L_802A61B4
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40821178 # bne .L_802A61B4
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x4800116C # b .L_802A61B4
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    lfs 0, 0x14(31)
    li 18, 0x0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stfs 0, 0x60(1)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820598 # bne .L_802A560C
    bl fn_80138A30
    li 20, 0x0
    .4byte 0xCBE2D820 # lfd f31, lbl_805407C0@sda21(r0)
    stb 20, 0x8(1)
    mr 27, 20
    mr 28, 31
    mr 29, 31
    stb 20, 0x9(1)
    clrlwi 22, 3, 24
    addi 21, 1, 0x8
    addi 26, 30, 0x0
    stb 20, 0xa(1)
    addi 24, 30, 0x70
    lis 25, 0x4330
    stb 20, 0xb(1)
L_802A50B4:
    lwz 3, 0x234(31)
    li 0, -0x1
    lfs 4, 0xc(31)
    li 19, 0x0
    slwi 3, 3, 4
    lfs 5, 0x10(31)
    add 3, 3, 27
    lfs 0, 0x60(31)
    lwzx 4, 26, 3
    lwzx 3, 24, 3
    stfs 0, 0x48(1)
    xoris 4, 4, 0x8000
    xoris 3, 3, 0x8000
    lfs 2, 0x64(31)
    stw 4, 0x74(1)
    stw 25, 0x70(1)
    stfs 2, 0x4c(1)
    lfd 3, 0x70(1)
    lfs 1, 0x68(31)
    fsubs 3, 3, 31
    stw 3, 0x6c(1)
    stw 25, 0x68(1)
    fadds 6, 4, 3
    lfd 3, 0x68(1)
    stfs 1, 0x50(1)
    fsubs 4, 3, 31
    lfs 3, 0x6c(31)
    fadds 0, 0, 6
    fadds 1, 1, 6
    fadds 4, 5, 4
    stfs 3, 0x54(1)
    stfs 0, 0x48(1)
    fadds 2, 2, 4
    fadds 0, 3, 4
    stfs 1, 0x50(1)
    stfs 2, 0x4c(1)
    stfs 0, 0x54(1)
    stw 0, 0x254(28)
    .4byte 0x480000CC # b .L_802A5218
L_802A5150:
    mr 3, 19
    bl fn_8022EA0C
    lwz 5, 0x4(31)
    addi 4, 1, 0x48
    .4byte 0xC022D830 # lfs f1, lbl_805407D0@sda21(r0)
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_802A5214
    mr 3, 19
    bl fn_8022EA0C
    stw 3, 0x254(28)
    mr 3, 19
    li 23, 0x1
    bl fn_8022EA0C
    lwz 4, 0x234(31)
    lis 0, 0x4330
    addi 6, 1, 0x8
    addi 5, 30, 0x0
    slwi 4, 4, 4
    stw 0, 0x70(1)
    add 4, 4, 27
    .4byte 0xC862D820 # lfd f3, lbl_805407C0@sda21(r0)
    lwzx 5, 5, 4
    addi 4, 30, 0x70
    lfs 2, 0xc(31)
    addi 18, 18, 0x1
    xoris 5, 5, 0x8000
    stw 0, 0x68(1)
    .4byte 0xC002D830 # lfs f0, lbl_805407D0@sda21(r0)
    stw 5, 0x74(1)
    lfd 1, 0x70(1)
    stbx 23, 6, 3
    fsubs 1, 1, 3
    fadds 1, 2, 1
    stfs 1, 0x264(29)
    lwz 0, 0x234(31)
    lfs 2, 0x10(31)
    slwi 0, 0, 4
    add 0, 0, 27
    lwzx 0, 4, 0
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 1, 0x68(1)
    fsubs 1, 1, 3
    fadds 1, 2, 1
    stfs 1, 0x268(29)
    stfs 0, 0x26c(29)
    .4byte 0x48000010 # b .L_802A5220
L_802A5214:
    addi 19, 19, 0x1
L_802A5218:
    cmpw 19, 22
    .4byte 0x4180FF34 # blt .L_802A5150
L_802A5220:
    addi 20, 20, 0x1
    addi 28, 28, 0x4
    cmpwi 20, 0x4
    addi 29, 29, 0xc
    addi 27, 27, 0x4
    .4byte 0x4180FE80 # blt .L_802A50B4
    clrlwi 0, 18, 24
    cmplw 22, 0
    .4byte 0x40820F74 # bne .L_802A61B4
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820F68 # beq .L_802A61B4
    li 9, 0x0
    li 3, 0x0
    mr 10, 9
    mr 4, 9
L_802A5260:
    lbz 0, 0x0(21)
    cmplwi 0, 0x0
    .4byte 0x408200C8 # bne .L_802A5330
    subfic 0, 10, 0x4
    add 5, 31, 4
    mtctr 0
    cmpwi 10, 0x4
    .4byte 0x40800024 # bge .L_802A52A0
L_802A5280:
    lwz 0, 0x254(5)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_802A52A0
    addi 5, 5, 0x4
    addi 10, 10, 0x1
    addi 3, 3, 0xc
    addi 4, 4, 0x4
    .4byte 0x4200FFE4 # bdnz .L_802A5280
L_802A52A0:
    addi 5, 4, 0x254
    lis 0, 0x4330
    stwx 9, 31, 5
    add 8, 31, 3
    addi 7, 30, 0x0
    .4byte 0xC842D820 # lfd f2, lbl_805407C0@sda21(r0)
    lwz 6, 0x234(31)
    addi 5, 30, 0x70
    stw 0, 0x70(1)
    addi 10, 10, 0x1
    slwi 6, 6, 4
    lfs 1, 0xc(31)
    add 6, 6, 4
    stw 0, 0x68(1)
    lwzx 0, 7, 6
    addi 3, 3, 0xc
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x264(8)
    lwz 0, 0x234(31)
    lfs 1, 0x10(31)
    slwi 0, 0, 4
    add 0, 0, 4
    addi 4, 4, 0x4
    lwzx 0, 5, 0
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 0, 0x68(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x268(8)
    lfs 0, 0x14(31)
    stfs 0, 0x26c(8)
L_802A5330:
    addi 9, 9, 0x1
    addi 21, 21, 0x1
    cmpwi 9, 0x4
    .4byte 0x4180FF24 # blt .L_802A5260
    mr 18, 31
    mr 19, 31
    li 20, 0x0
L_802A534C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 3, 0x254(18)
    lbz 4, 0x82(4)
    slw 0, 0, 3
    clrlwi 0, 0, 24
    and 4, 4, 0
    neg 0, 4
    or 0, 0, 4
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802A5384
    li 4, 0x0
    bl fn_802382D0
L_802A5384:
    lwz 3, 0x254(18)
    addi 4, 19, 0x264
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 20, 20, 0x1
    addi 19, 19, 0xc
    cmpwi 20, 0x4
    addi 18, 18, 0x4
    .4byte 0x4180FF98 # blt .L_802A534C
    li 0, 0x0
    li 3, 0x190
    stw 0, 0x248(31)
    li 0, 0x4
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x10
    stb 0, 0xdc(3)
    bl GetRoomConfigRecord
    li 4, 0x1e
    bl fn_802D7970
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_801365C8
    lfs 0, 0x14(31)
    li 20, 0x0
    .4byte 0xCBC2D820 # lfd f30, lbl_805407C0@sda21(r0)
    mr 27, 31
    stfs 0, 0x60(1)
    mr 28, 20
    addi 26, 30, 0x0
    addi 24, 30, 0x70
    addi 23, 30, 0x184
    lis 25, 0x4330
L_802A5438:
    lwz 5, 0x2b4(27)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802A5460
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2b4(27)
L_802A5460:
    lwz 5, 0x2c4(27)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802A5488
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2c4(27)
L_802A5488:
    lwz 0, 0x234(31)
    addi 4, 1, 0x58
    stw 25, 0x70(1)
    li 6, 0x1
    slwi 0, 0, 4
    lfs 3, 0xc(31)
    add 0, 0, 28
    stw 25, 0x68(1)
    lwzx 3, 26, 0
    li 7, 0x0
    lwzx 0, 24, 0
    li 8, 0x0
    xoris 3, 3, 0x8000
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stw 3, 0x74(1)
    xoris 0, 0, 0x8000
    li 9, 0x0
    li 10, 0x1
    lfd 0, 0x70(1)
    stw 0, 0x6c(1)
    fsubs 2, 0, 30
    lfd 0, 0x68(1)
    fadds 2, 3, 2
    fsubs 0, 0, 30
    stfs 2, 0x58(1)
    lfs 2, 0x10(31)
    fadds 0, 2, 0
    stfs 0, 0x5c(1)
    lwz 0, 0x254(27)
    lwz 3, 0x4(31)
    mulli 0, 0, 0x6
    lhzx 5, 23, 0
    bl fn_8013CC50
    stw 3, 0x2d4(27)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 6, 0x1
    lwz 0, 0x254(27)
    li 7, 0x0
    lwz 3, 0x4(31)
    li 8, 0x0
    mulli 5, 0, 0x6
    li 9, 0x0
    li 10, 0x1
    addi 0, 5, 0x2
    lhzx 5, 23, 0
    bl fn_8013CC50
    stw 3, 0x2e4(27)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 6, 0x1
    lwz 0, 0x254(27)
    li 7, 0x0
    lwz 3, 0x4(31)
    li 8, 0x0
    mulli 5, 0, 0x6
    li 9, 0x0
    li 10, 0x1
    addi 0, 5, 0x4
    lhzx 5, 23, 0
    bl fn_8013CC50
    stw 3, 0x2f4(27)
    mr 3, 20
    bl fn_8023EE28
    addi 20, 20, 0x1
    addi 28, 28, 0x4
    cmpwi 20, 0x4
    addi 27, 27, 0x4
    .4byte 0x4180FEA0 # blt .L_802A5438
    bl SpatialRegistry_GetBase
    li 21, 0x0
    lwz 19, 0x1008(3)
    mr 20, 21
    mr 18, 21
    .4byte 0x48000040 # b .L_802A55F0
L_802A55B4:
    bl SpatialRegistry_GetBase
    addi 0, 20, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_802A55E8
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x424f
    cmplwi 0, 0x4d45
    .4byte 0x41820010 # beq .L_802A55E4
    subis 0, 4, 0x534d
    cmplwi 0, 0x5249
    .4byte 0x40820008 # bne .L_802A55E8
L_802A55E4:
    stb 18, 0x11c(3)
L_802A55E8:
    addi 20, 20, 0x4
    addi 21, 21, 0x1
L_802A55F0:
    cmpw 21, 19
    .4byte 0x4180FFC0 # blt .L_802A55B4
    li 3, 0xa
    li 0, 0xff
    stw 3, 0x304(31)
    stw 0, 0x308(31)
    .4byte 0x48000BAC # b .L_802A61B4
L_802A560C:
    .4byte 0xCBE2D820 # lfd f31, lbl_805407C0@sda21(r0)
    addi 23, 30, 0x0
    addi 25, 30, 0x70
    li 26, 0x0
    lis 24, 0x4330
    .4byte 0x480004DC # b .L_802A5AFC
L_802A5624:
    lwz 0, 0x234(31)
    slwi 22, 26, 2
    lfs 5, 0xc(31)
    addi 3, 1, 0x48
    slwi 0, 0, 4
    lfs 6, 0x10(31)
    add 0, 0, 22
    lfs 0, 0x60(31)
    lwzx 4, 23, 0
    li 5, 0x0
    lwzx 0, 25, 0
    stfs 0, 0x48(1)
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    .4byte 0xC022D830 # lfs f1, lbl_805407D0@sda21(r0)
    lfs 3, 0x64(31)
    stw 4, 0x74(1)
    stw 24, 0x70(1)
    stfs 3, 0x4c(1)
    lfd 4, 0x70(1)
    lfs 2, 0x68(31)
    fsubs 4, 4, 31
    stw 0, 0x6c(1)
    stw 24, 0x68(1)
    fadds 7, 5, 4
    lfd 4, 0x68(1)
    stfs 2, 0x50(1)
    fsubs 5, 4, 31
    lfs 4, 0x6c(31)
    fadds 0, 0, 7
    fadds 2, 2, 7
    fadds 5, 6, 5
    stfs 4, 0x54(1)
    stfs 0, 0x48(1)
    fadds 3, 3, 5
    fadds 0, 4, 5
    stfs 2, 0x50(1)
    stfs 3, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 4, 0x4(31)
    bl fn_8023AF14
    addi 21, 22, 0x254
    stwx 3, 31, 21
    li 3, 0x0
    bl fn_8022EA0C
    lwzx 0, 31, 21
    cmpw 0, 3
    .4byte 0x40820418 # bne .L_802A5AF8
    lwz 3, 0x234(31)
    lis 4, 0x4330
    mulli 0, 26, 0xc
    addi 6, 30, 0x0
    slwi 5, 3, 4
    stw 4, 0x70(1)
    .4byte 0xC862D820 # lfd f3, lbl_805407C0@sda21(r0)
    addi 3, 30, 0x70
    add 5, 5, 22
    lfs 2, 0xc(31)
    lwzx 5, 6, 5
    add 6, 31, 0
    stw 4, 0x68(1)
    clrlwi 19, 26, 24
    xoris 0, 5, 0x8000
    .4byte 0xC002D830 # lfs f0, lbl_805407D0@sda21(r0)
    stw 0, 0x74(1)
    li 4, 0x0
    lfd 1, 0x70(1)
    fsubs 1, 1, 3
    fadds 1, 2, 1
    stfs 1, 0x264(6)
    lwz 0, 0x234(31)
    lfs 2, 0x10(31)
    slwi 0, 0, 4
    add 0, 0, 22
    lwzx 0, 3, 0
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 1, 0x68(1)
    fsubs 1, 1, 3
    fadds 1, 2, 1
    stfs 1, 0x268(6)
    stfs 0, 0x26c(6)
    lwzx 3, 31, 21
    bl fn_802382D0
    li 18, 0x0
    li 26, 0x0
L_802A577C:
    mr 3, 26
    bl fn_802300EC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802A579C
    clrlwi 3, 18, 24
    addi 0, 3, 0x1
    clrlwi 18, 0, 24
L_802A579C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFD8 # blt .L_802A577C
    clrlwi 0, 18, 24
    cmplwi 0, 0x4
    .4byte 0x40820348 # bne .L_802A5AF8
    li 20, 0x0
    clrlslwi 3, 19, 24, 2
    mr 21, 20
    mr 26, 31
    mr 27, 20
    mr 28, 31
    addi 29, 3, 0x254
L_802A57D0:
    lwzx 0, 31, 29
    cmpw 21, 0
    .4byte 0x40820008 # bne .L_802A57E0
    addi 21, 21, 0x1
L_802A57E0:
    cmpw 20, 19
    .4byte 0x41820084 # beq .L_802A5868
    stw 21, 0x254(26)
    lis 0, 0x4330
    addi 5, 30, 0x0
    .4byte 0xC842D820 # lfd f2, lbl_805407C0@sda21(r0)
    lwz 4, 0x234(31)
    addi 3, 30, 0x70
    stw 0, 0x70(1)
    addi 21, 21, 0x1
    slwi 4, 4, 4
    lfs 1, 0xc(31)
    add 4, 4, 27
    stw 0, 0x68(1)
    lwzx 0, 5, 4
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 0, 0x70(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x264(28)
    lwz 0, 0x234(31)
    lfs 1, 0x10(31)
    slwi 0, 0, 4
    add 0, 0, 27
    lwzx 0, 3, 0
    xoris 0, 0, 0x8000
    stw 0, 0x6c(1)
    lfd 0, 0x68(1)
    fsubs 0, 0, 2
    fadds 0, 1, 0
    stfs 0, 0x268(28)
    lfs 0, 0x14(31)
    stfs 0, 0x26c(28)
L_802A5868:
    lwz 3, 0x254(26)
    bl fn_80230AD4
    lwz 3, 0x254(26)
    addi 4, 28, 0x264
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 20, 20, 0x1
    addi 27, 27, 0x4
    cmpwi 20, 0x4
    addi 28, 28, 0xc
    addi 26, 26, 0x4
    .4byte 0x4180FF2C # blt .L_802A57D0
    li 0, 0x0
    li 3, 0x190
    stw 0, 0x248(31)
    li 0, 0x4
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x10
    stb 0, 0xdc(3)
    bl GetRoomConfigRecord
    li 4, 0x1e
    bl fn_802D7970
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_801365C8
    lfs 0, 0x14(31)
    li 20, 0x0
    .4byte 0xCBC2D820 # lfd f30, lbl_805407C0@sda21(r0)
    mr 22, 31
    stfs 0, 0x60(1)
    mr 21, 20
    addi 29, 30, 0x0
    addi 27, 30, 0x70
    addi 26, 30, 0x184
    lis 28, 0x4330
L_802A5928:
    lwz 5, 0x2b4(22)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802A5950
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2b4(22)
L_802A5950:
    lwz 5, 0x2c4(22)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802A5978
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2c4(22)
L_802A5978:
    lwz 0, 0x234(31)
    addi 4, 1, 0x58
    stw 28, 0x70(1)
    li 6, 0x1
    slwi 0, 0, 4
    lfs 3, 0xc(31)
    add 0, 0, 21
    stw 28, 0x68(1)
    lwzx 3, 29, 0
    li 7, -0x1
    lwzx 0, 27, 0
    li 8, 0x0
    xoris 3, 3, 0x8000
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stw 3, 0x74(1)
    xoris 0, 0, 0x8000
    li 9, 0x0
    li 10, 0x1
    lfd 0, 0x70(1)
    stw 0, 0x6c(1)
    fsubs 2, 0, 30
    lfd 0, 0x68(1)
    fadds 2, 3, 2
    fsubs 0, 0, 30
    stfs 2, 0x58(1)
    lfs 2, 0x10(31)
    fadds 0, 2, 0
    stfs 0, 0x5c(1)
    lwz 0, 0x254(22)
    lwz 3, 0x4(31)
    mulli 0, 0, 0x6
    lhzx 5, 26, 0
    bl fn_8013CC50
    stw 3, 0x2d4(22)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 6, 0x1
    lwz 0, 0x254(22)
    li 7, -0x1
    lwz 3, 0x4(31)
    li 8, 0x0
    mulli 5, 0, 0x6
    li 9, 0x0
    li 10, 0x1
    addi 0, 5, 0x2
    lhzx 5, 26, 0
    bl fn_8013CC50
    stw 3, 0x2e4(22)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 6, 0x1
    lwz 0, 0x254(22)
    li 7, 0x1
    lwz 3, 0x4(31)
    li 8, 0x0
    mulli 5, 0, 0x6
    li 9, 0x0
    li 10, 0x1
    addi 0, 5, 0x4
    lhzx 5, 26, 0
    bl fn_8013CC50
    stw 3, 0x2f4(22)
    mr 3, 20
    bl fn_8023EE28
    addi 20, 20, 0x1
    addi 21, 21, 0x4
    cmpwi 20, 0x4
    addi 22, 22, 0x4
    .4byte 0x4180FEA0 # blt .L_802A5928
    bl SpatialRegistry_GetBase
    li 26, 0x0
    lwz 19, 0x1008(3)
    mr 20, 26
    mr 18, 26
    .4byte 0x48000040 # b .L_802A5AE0
L_802A5AA4:
    bl SpatialRegistry_GetBase
    addi 0, 20, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_802A5AD8
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x424f
    cmplwi 0, 0x4d45
    .4byte 0x41820010 # beq .L_802A5AD4
    subis 0, 4, 0x534d
    cmplwi 0, 0x5249
    .4byte 0x40820008 # bne .L_802A5AD8
L_802A5AD4:
    stb 18, 0x11c(3)
L_802A5AD8:
    addi 20, 20, 0x4
    addi 26, 26, 0x1
L_802A5AE0:
    cmpw 26, 19
    .4byte 0x4180FFC0 # blt .L_802A5AA4
    li 3, 0xa
    li 0, 0xff
    stw 3, 0x304(31)
    stw 0, 0x308(31)
L_802A5AF8:
    addi 26, 26, 0x1
L_802A5AFC:
    cmpwi 26, 0x4
    .4byte 0x4180FB24 # blt .L_802A5624
    .4byte 0x480006B0 # b .L_802A61B4
    lwz 3, 0x304(31)
    cmpwi 3, 0x0
    .4byte 0x408201CC # bne .L_802A5CDC
    lwz 3, 0x308(31)
    subi 0, 3, 0x1
    stw 0, 0x308(31)
    lwz 0, 0x308(31)
    cmpwi 0, 0x0
    .4byte 0x4182009C # beq .L_802A5BC4
    li 0, 0x2
    mr 3, 31
    li 5, 0x0
    mtctr 0
L_802A5B3C:
    lwz 4, 0x2d4(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_802A5B50
    lwz 0, 0x308(31)
    stb 0, 0xbb(4)
L_802A5B50:
    lwz 4, 0x2e4(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_802A5B64
    lwz 0, 0x308(31)
    stb 0, 0xbb(4)
L_802A5B64:
    lwz 4, 0x2f4(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_802A5B78
    lwz 0, 0x308(31)
    stb 0, 0xbb(4)
L_802A5B78:
    lwz 4, 0x2d8(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_802A5B8C
    lwz 0, 0x308(31)
    stb 0, 0xbb(4)
L_802A5B8C:
    lwz 4, 0x2e8(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_802A5BA0
    lwz 0, 0x308(31)
    stb 0, 0xbb(4)
L_802A5BA0:
    lwz 4, 0x2f8(3)
    cmplwi 4, 0x0
    .4byte 0x4182000C # beq .L_802A5BB4
    lwz 0, 0x308(31)
    stb 0, 0xbb(4)
L_802A5BB4:
    addi 3, 3, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FF80 # bdnz .L_802A5B3C
    .4byte 0x48000124 # b .L_802A5CE4
L_802A5BC4:
    li 0, 0x2
    mr 5, 31
    li 7, 0x0
    mtctr 0
L_802A5BD4:
    lwz 6, 0x2d4(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802A5BFC
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x2d4(5)
L_802A5BFC:
    lwz 6, 0x2e4(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802A5C24
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x2e4(5)
L_802A5C24:
    lwz 6, 0x2f4(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802A5C4C
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x2f4(5)
L_802A5C4C:
    lwz 6, 0x2d8(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802A5C74
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x2d8(5)
L_802A5C74:
    lwz 6, 0x2e8(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802A5C9C
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x2e8(5)
L_802A5C9C:
    lwz 6, 0x2f8(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_802A5CC4
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x2f8(5)
L_802A5CC4:
    addi 5, 5, 0x8
    addi 7, 7, 0x1
    .4byte 0x4200FF08 # bdnz .L_802A5BD4
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_802A5CE4
L_802A5CDC:
    subi 0, 3, 0x1
    stw 0, 0x304(31)
L_802A5CE4:
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820194 # bne .L_802A5E8C
    lwz 4, 0x248(31)
    addi 3, 30, 0x148
    mr 19, 31
    mr 20, 31
    addi 0, 4, 0x1
    li 21, 0x0
    stw 0, 0x248(31)
    lis 18, 0x1
    lwz 0, 0x248(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x244(31)
L_802A5D2C:
    lwz 3, 0x254(19)
    cmpwi 3, 0x0
    .4byte 0x4180003C # blt .L_802A5D70
    lwz 5, 0x248(31)
    addi 4, 20, 0x264
    li 6, 0xff
    li 7, -0x80
    addi 5, 5, 0xdb
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802A5D70
    lwz 3, 0x254(19)
    addi 4, 18, 0x1
    bl fn_80230FD0
L_802A5D70:
    addi 21, 21, 0x1
    addi 20, 20, 0xc
    cmpwi 21, 0x4
    addi 19, 19, 0x4
    .4byte 0x4180FFAC # blt .L_802A5D2C
    li 0, 0x2
    stw 0, 0x244(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x40820420 # bne .L_802A61B4
    mr 18, 31
    mr 19, 31
    li 20, 0x0
L_802A5DA4:
    lwz 0, 0x254(18)
    cmpwi 0, 0x0
    .4byte 0x418000B4 # blt .L_802A5E60
    lfs 3, 0x268(19)
    addi 4, 1, 0x24
    .4byte 0xC042D838 # lfs f2, lbl_805407D8@sda21(r0)
    li 5, 0xcb
    .4byte 0xC022D83C # lfs f1, lbl_805407DC@sda21(r0)
    li 6, 0x1
    lfs 0, 0x264(19)
    fsubs 2, 3, 2
    lfs 3, 0x26c(19)
    li 7, 0x0
    fadds 0, 1, 0
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stfs 2, 0x28(1)
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x24(1)
    li 10, 0x1
    stfs 3, 0x2c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lfs 3, 0x268(19)
    addi 4, 1, 0x18
    .4byte 0xC042D838 # lfs f2, lbl_805407D8@sda21(r0)
    li 5, 0xcc
    .4byte 0xC022D83C # lfs f1, lbl_805407DC@sda21(r0)
    li 6, 0x1
    lfs 0, 0x264(19)
    fsubs 2, 3, 2
    lfs 3, 0x26c(19)
    li 7, 0x0
    fadds 0, 1, 0
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stfs 2, 0x1c(1)
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x18(1)
    li 10, 0x1
    stfs 3, 0x20(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lis 4, 0x2
    lwz 3, 0x254(18)
    addi 4, 4, 0xe
    bl fn_80230FD0
L_802A5E60:
    addi 20, 20, 0x1
    addi 19, 19, 0xc
    cmpwi 20, 0x4
    addi 18, 18, 0x4
    .4byte 0x4180FF34 # blt .L_802A5DA4
    li 3, 0x82
    li 0, 0x6
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    bl fn_80133B58
    .4byte 0x4800032C # b .L_802A61B4
L_802A5E8C:
    cmpwi 0, 0x17c
    .4byte 0x40800324 # bge .L_802A61B4
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820318 # bne .L_802A61B4
    li 18, 0x0
L_802A5EA4:
    mr 3, 18
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802A5EBC
    mr 3, 18
    bl fn_80230AD4
L_802A5EBC:
    addi 18, 18, 0x1
    cmpwi 18, 0x4
    .4byte 0x4180FFE0 # blt .L_802A5EA4
    .4byte 0x480002EC # b .L_802A61B4
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x46
    .4byte 0x408202D4 # bne .L_802A61B4
    lwz 5, 0x2b4(31)
    li 3, 0x1
    li 0, 0x0
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_802A5F0C
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2b4(31)
L_802A5F0C:
    lwz 5, 0x2b8(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_802A5F2C
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2b8(31)
L_802A5F2C:
    lwz 5, 0x2bc(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_802A5F4C
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2bc(31)
L_802A5F4C:
    lwz 5, 0x2c0(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_802A5F6C
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2c0(31)
L_802A5F6C:
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x48000240 # b .L_802A61B4
    lwz 3, 0x244(31)
    li 23, 0x0
    .4byte 0xCBE2D820 # lfd f31, lbl_805407C0@sda21(r0)
    mr 21, 23
    subi 0, 3, 0x1
    mr 22, 31
    stw 0, 0x244(31)
    addi 26, 30, 0x0
    addi 28, 30, 0x70
    addi 29, 30, 0x19c
    lfs 0, 0x14(31)
    lis 27, 0x4330
    stfs 0, 0x60(1)
L_802A5FAC:
    lwz 0, 0x234(31)
    addi 4, 1, 0x58
    stw 27, 0x70(1)
    li 6, 0x1
    slwi 0, 0, 4
    lfs 3, 0xc(31)
    add 0, 0, 21
    stw 27, 0x68(1)
    lwzx 3, 26, 0
    li 7, 0x0
    lwzx 0, 28, 0
    li 8, 0x0
    xoris 3, 3, 0x8000
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stw 3, 0x74(1)
    xoris 0, 0, 0x8000
    li 9, 0x0
    li 10, 0x1
    lfd 0, 0x70(1)
    stw 0, 0x6c(1)
    fsubs 2, 0, 31
    lfd 0, 0x68(1)
    fadds 2, 3, 2
    fsubs 0, 0, 31
    stfs 2, 0x58(1)
    lfs 2, 0x10(31)
    fadds 0, 2, 0
    stfs 0, 0x5c(1)
    lwz 0, 0x254(22)
    lwz 3, 0x4(31)
    slwi 0, 0, 3
    lhzx 5, 29, 0
    bl fn_8013CC50
    lwz 0, 0x254(22)
    addi 4, 1, 0x58
    lwz 3, 0x4(31)
    li 6, 0x1
    slwi 5, 0, 3
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    addi 0, 5, 0x2
    li 7, 0x0
    lhzx 5, 29, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x254(22)
    addi 4, 1, 0x58
    lwz 3, 0x4(31)
    li 6, 0x1
    slwi 5, 0, 3
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    addi 0, 5, 0x4
    li 7, 0x0
    lhzx 5, 29, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x254(22)
    addi 4, 1, 0x58
    lwz 3, 0x4(31)
    li 6, 0x1
    slwi 5, 0, 3
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    addi 0, 5, 0x6
    li 7, 0x0
    lhzx 5, 29, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 23, 23, 0x1
    addi 22, 22, 0x4
    cmpwi 23, 0x4
    addi 21, 21, 0x4
    .4byte 0x4180FED0 # blt .L_802A5FAC
    li 0, 0x1e
    lis 3, 0x2
    stw 0, 0x304(31)
    addi 4, 3, 0x23
    li 3, 0x0
    bl fn_80230FD0
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x480000B4 # b .L_802A61B4
    lwz 3, 0x304(31)
    subi 0, 3, 0x1
    stw 0, 0x304(31)
    lwz 0, 0x304(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_802A6164
    mr 18, 31
    mr 19, 31
    li 20, 0x0
L_802A6128:
    lwz 3, 0x254(19)
    addi 4, 18, 0x264
    li 5, 0x121
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 20, 20, 0x1
    addi 19, 19, 0x4
    cmpwi 20, 0x4
    addi 18, 18, 0xc
    .4byte 0x4180FFD0 # blt .L_802A6128
    li 0, 0x9
    stw 0, 0x230(31)
L_802A6164:
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_802A61B4
    li 3, 0xa
    li 0, 0x78
    stw 3, 0x230(31)
    stw 0, 0x244(31)
    .4byte 0x48000028 # b .L_802A61B4
    lwz 3, 0x244(31)
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802A61B4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xa
    bl fn_801367E0
L_802A61B4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41800114 # blt .L_802A62D0
    lwz 0, 0x314(31)
    cmpwi 0, 0x0
    .4byte 0x41820108 # beq .L_802A62D0
    lwz 3, 0x31c(31)
    subi 0, 3, 0x1
    stw 0, 0x31c(31)
    lwz 0, 0x31c(31)
    cmpwi 0, 0x0
    .4byte 0x408200F0 # bne .L_802A62D0
    lwz 3, 0x234(31)
    lis 4, 0x4330
    lwz 0, 0x318(31)
    addi 5, 30, 0x70
    slwi 6, 3, 4
    addi 3, 30, 0x0
    slwi 0, 0, 2
    stw 4, 0x70(1)
    add 0, 6, 0
    .4byte 0xC882D820 # lfd f4, lbl_805407C0@sda21(r0)
    lwzx 5, 5, 0
    lwzx 0, 3, 0
    xoris 3, 5, 0x8000
    stw 4, 0x68(1)
    xoris 0, 0, 0x8000
    lfs 5, 0x10(31)
    stw 3, 0x74(1)
    lfs 2, 0xc(31)
    stw 0, 0x6c(1)
    lfd 0, 0x70(1)
    lfd 1, 0x68(1)
    fsubs 3, 0, 4
    .4byte 0xC002D830 # lfs f0, lbl_805407D0@sda21(r0)
    fsubs 1, 1, 4
    stfs 0, 0x14(1)
    fadds 3, 5, 3
    fadds 0, 2, 1
    stfs 3, 0x10(1)
    stfs 0, 0xc(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(31)
    addi 4, 4, 0x5259
    addi 6, 1, 0xc
    li 7, 0x30
    bl fn_801F8544
    lwz 3, 0x314(31)
    subi 0, 3, 0x1
    stw 0, 0x314(31)
    lwz 0, 0x314(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_802A62A8
    lis 4, lbl_80529DEC@ha
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x33a
    lbz 6, 0x24f(5)
    li 5, 0x0
    bl fn_8043D67C
L_802A62A8:
    lwz 3, 0x318(31)
    addi 0, 3, 0x1
    stw 0, 0x318(31)
    lwz 0, 0x318(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_802A62C8
    li 0, 0x0
    stw 0, 0x318(31)
L_802A62C8:
    li 0, 0x14
    stw 0, 0x31c(31)
L_802A62D0:
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_802A6310
    li 0, 0x9
    stw 0, 0x24c(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_802A6310
    li 0, 0x0
    stw 0, 0x250(31)
L_802A6310:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41800098 # blt .L_802A63B0
    lwz 0, 0x234(31)
    lis 5, 0x4330
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 6, 30, 0xe0
    slwi 0, 0, 3
    stw 5, 0x70(1)
    add 4, 6, 0
    lwzx 6, 6, 0
    lwz 0, 0x4(4)
    xoris 4, 6, 0x8000
    lwz 6, 0x24(3)
    xoris 3, 0, 0x8000
    stw 4, 0x74(1)
    lbz 0, 0x7f5(6)
    stw 3, 0x6c(1)
    .4byte 0xC862D820 # lfd f3, lbl_805407C0@sda21(r0)
    cmplwi 0, 0x0
    stw 5, 0x68(1)
    lfd 1, 0x70(1)
    lfd 0, 0x68(1)
    fsubs 2, 1, 3
    lfs 4, 0xc(31)
    fsubs 0, 0, 3
    lfs 1, 0x10(31)
    fadds 2, 4, 2
    fadds 1, 1, 0
    .4byte 0x4082002C # bne .L_802A63B0
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(6)
    li 0, 0x0
    .4byte 0xC002D830 # lfs f0, lbl_805407D0@sda21(r0)
    stw 3, 0x7f8(6)
    stfs 2, 0x7fc(6)
    stfs 1, 0x800(6)
    stfs 0, 0x804(6)
    stb 0, 0x7f6(6)
L_802A63B0:
    lwz 0, 0x30c(31)
    cmpwi 0, 0x0
    .4byte 0x40820100 # bne .L_802A64B8
    lbz 0, 0x310(31)
    cmplwi 0, 0x0
    .4byte 0x408200F4 # bne .L_802A64B8
    lfs 0, 0x14(31)
    li 23, 0x0
    .4byte 0xCBE2D820 # lfd f31, lbl_805407C0@sda21(r0)
    mr 21, 23
    stfs 0, 0x60(1)
    mr 22, 31
    addi 20, 30, 0x0
    addi 18, 30, 0x70
    lis 19, 0x4330
L_802A63EC:
    lwz 0, 0x234(31)
    addi 4, 1, 0x58
    stw 19, 0x70(1)
    li 5, 0x200
    slwi 0, 0, 4
    lfs 3, 0xc(31)
    add 0, 0, 21
    stw 19, 0x68(1)
    lwzx 3, 20, 0
    li 6, 0x1
    lwzx 0, 18, 0
    li 7, 0x0
    xoris 3, 3, 0x8000
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    stw 3, 0x74(1)
    xoris 0, 0, 0x8000
    li 8, 0x0
    li 9, 0x0
    lfd 0, 0x70(1)
    li 10, 0x1
    stw 0, 0x6c(1)
    fsubs 2, 0, 31
    lfd 0, 0x68(1)
    fadds 2, 3, 2
    fsubs 0, 0, 31
    stfs 2, 0x58(1)
    lfs 2, 0x10(31)
    fadds 0, 2, 0
    stfs 0, 0x5c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2b4(22)
    addi 4, 1, 0x58
    .4byte 0xC022D828 # lfs f1, lbl_805407C8@sda21(r0)
    li 5, 0x201
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 23, 23, 0x1
    stw 3, 0x2c4(22)
    cmpwi 23, 0x4
    addi 21, 21, 0x4
    addi 22, 22, 0x4
    .4byte 0x4180FF44 # blt .L_802A63EC
    li 0, 0x1
    stb 0, 0x310(31)
    .4byte 0x48000010 # b .L_802A64C4
L_802A64B8:
    lwz 3, 0x30c(31)
    subi 0, 3, 0x1
    stw 0, 0x30c(31)
L_802A64C4:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    lmw 18, 0x78(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_802A64E8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200D0 # beq .L_802A65DC
    lis 3, lbl_804A7EB0@ha
    mr 31, 28
    addi 0, 3, lbl_804A7EB0@l
    li 30, 0x0
    stw 0, 0x0(28)
L_802A6524:
    lwz 0, 0x2b4(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802A6540
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2b4(31)
    bl fn_800EC240
L_802A6540:
    lwz 0, 0x2c4(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802A655C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2c4(31)
    bl fn_800EC240
L_802A655C:
    lwz 0, 0x2d4(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802A6578
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2d4(31)
    bl fn_800EC240
L_802A6578:
    lwz 0, 0x2e4(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802A6594
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2e4(31)
    bl fn_800EC240
L_802A6594:
    lwz 0, 0x2f4(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802A65B0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2f4(31)
    bl fn_800EC240
L_802A65B0:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF68 # blt .L_802A6524
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_802A65DC
    mr 3, 28
    bl dtor_80084580
L_802A65DC:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A6600:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC042D840 # lfs f2, lbl_805407E0@sda21(r0)
    li 5, 0x0
    stw 0, 0x24(1)
    li 4, 0x9
    .4byte 0xC022D844 # lfs f1, lbl_805407E4@sda21(r0)
    li 0, 0x1
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC002D830 # lfs f0, lbl_805407D0@sda21(r0)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    stfs 2, 0x60(3)
    li 3, -0x1
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stw 5, 0x230(31)
    stfs 0, 0x44(31)
    stw 4, 0x24c(31)
    stw 5, 0x250(31)
    stw 3, 0x2a4(31)
    stw 3, 0x254(31)
    stw 5, 0x2b4(31)
    stw 5, 0x2c4(31)
    stw 5, 0x2d4(31)
    stw 5, 0x2e4(31)
    stw 5, 0x2f4(31)
    stfs 0, 0x264(31)
    stfs 0, 0x268(31)
    stfs 0, 0x26c(31)
    stw 3, 0x2a8(31)
    stw 3, 0x258(31)
    stw 5, 0x2b8(31)
    stw 5, 0x2c8(31)
    stw 5, 0x2d8(31)
    stw 5, 0x2e8(31)
    stw 5, 0x2f8(31)
    stfs 0, 0x270(31)
    stfs 0, 0x274(31)
    stfs 0, 0x278(31)
    stw 3, 0x2ac(31)
    stw 3, 0x25c(31)
    stw 5, 0x2bc(31)
    stw 5, 0x2cc(31)
    stw 5, 0x2dc(31)
    stw 5, 0x2ec(31)
    stw 5, 0x2fc(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    stw 3, 0x2b0(31)
    stw 3, 0x260(31)
    stw 5, 0x2c0(31)
    stw 5, 0x2d0(31)
    stw 5, 0x2e0(31)
    stw 5, 0x2f0(31)
    stw 5, 0x300(31)
    stfs 0, 0x288(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x290(31)
    stw 5, 0x304(31)
    stw 5, 0x30c(31)
    stb 0, 0x310(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 27
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 10
    stw 0, 0x23c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    stw 0, 0x234(31)
    lwz 3, 0x90(31)
    extrwi. 0, 3, 1, 24
    extrwi 3, 3, 5, 20
    .4byte 0x41820014 # beq .L_802A6758
    lfs 1, 0xc(31)
    .4byte 0xC002D848 # lfs f0, lbl_805407E8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
L_802A6758:
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x41820014 # beq .L_802A6770
    lfs 1, 0x10(31)
    .4byte 0xC002D848 # lfs f0, lbl_805407E8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
L_802A6770:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D752C
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    bl fn_8022ADE4
    li 29, 0x0
    li 28, 0x0
    li 30, 0x1
L_802A6798:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 28
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802A67CC
    mr 3, 28
    bl fn_80236228
    add 29, 29, 3
L_802A67CC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_802A6798
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x314(31)
    stw 3, 0x318(31)
    stw 0, 0x31c(31)
L_802A67EC:
    cmpwi 29, 0x3e8
    .4byte 0x41800018 # blt .L_802A6808
    lwz 3, 0x314(31)
    subi 29, 29, 0x3e8
    addi 0, 3, 0x1
    stw 0, 0x314(31)
    .4byte 0x4BFFFFE8 # b .L_802A67EC
L_802A6808:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A6828:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0B68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0B68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A6878
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
L_802A6878:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A68B0
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
L_802A68B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A68E8
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
L_802A68E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A6920
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
L_802A6920:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A6958
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
L_802A6958:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A6990
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
L_802A6990:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A69C8
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
L_802A69C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A6A00
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
L_802A6A00:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A6A38
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
L_802A6A38:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802A4430
    .4byte fn_802A6828

