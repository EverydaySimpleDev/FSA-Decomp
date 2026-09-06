# Dispatch-cross-check singleton: 1 real FourCC actor vtable body
# (dtor fn_8015B420, ctor fn_8015B768 already landed) plus 1 helper
# function, landed as ONE byte-contiguous 3-function, 1,388-byte
# Track-A bundle (0x8015B420-0x8015B98C). Found+verified via
# spanwalk.py and resolvefiles.py. .ctors placement
# (0x8045BF40-0x8045BF44) found by direct whole-table scan,
# independently re-verified after an earlier same-session
# automated-scan false-positive was caught (see
# project_fsa_dispatch_crosscheck_discovery.md).

.section extab, "a"
.balign 4
.global etb_80006F8C
etb_80006F8C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006F8C, 8

.global etb_80006F94
etb_80006F94:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006F94, 8

.global etb_80006F9C
etb_80006F9C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006F9C, 8

.section extabindex, "a"
.balign 4
.global eti_80013AE0
eti_80013AE0:
    .4byte fn_8015B420
    .4byte 0x0000007C
    .4byte etb_80006F8C
.size eti_80013AE0, 12

.global eti_80013AEC
eti_80013AEC:
    .4byte fn_8015B49C
    .4byte 0x000002CC
    .4byte etb_80006F94
.size eti_80013AEC, 12

.global eti_80013AF8
eti_80013AF8:
    .4byte fn_8015B768
    .4byte 0x00000224
    .4byte etb_80006F9C
.size eti_80013AF8, 12

.text
.balign 4
.global fn_8015B420
.global fn_8015B49C
.global fn_8015B768

fn_8015B420:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820044 # beq .L_8015B480
    lis 3, lbl_804A01D0@ha
    addi 0, 3, lbl_804A01D0@l
    stw 0, 0x0(30)
    lwz 3, 0x2a8(30)
    bl fn_801EE434
    lwz 3, 0x2ac(30)
    bl fn_801EE434
    lwz 3, 0x2b0(30)
    bl fn_801EE434
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8015B480
    mr 3, 30
    bl dtor_80084580
L_8015B480:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8015B49C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC002A50C # lfs f0, lbl_8053D4AC@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x1a
    stw 31, 0xc(1)
    mr 31, 3
    lwz 5, 0x90(3)
    li 3, -0x1
    clrlwi 5, 5, 20
    stw 5, 0x234(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 2, 6
    stw 5, 0x250(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 2, 4
    stw 5, 0x24c(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 3
    stw 5, 0x254(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 8
    stw 5, 0x268(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 9
    stw 5, 0x26c(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 10
    stw 5, 0x270(31)
    lwz 5, 0x90(31)
    srwi 5, 5, 31
    stw 5, 0x258(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 1
    stw 5, 0x25c(31)
    lwz 5, 0x90(31)
    extrwi 5, 5, 1, 2
    stw 5, 0x264(31)
    stw 4, 0x2a8(31)
    stw 4, 0x2ac(31)
    stw 4, 0x2b0(31)
    stw 3, 0x290(31)
    stw 4, 0x244(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 0, 0x240(31)
    stfs 0, 0x29c(31)
    stfs 0, 0x2a0(31)
    stfs 0, 0x2a4(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8015B58C
    li 0, 0x5a
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_8015B594
L_8015B58C:
    li 0, 0x2d
    stw 0, 0x238(31)
L_8015B594:
    li 0, 0x0
    stw 0, 0x288(31)
    lwz 3, 0x250(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x27c(31), 0, 0
    stfs 0, 0x284(31)
    lwz 0, 0x250(31)
    stw 0, 0x274(31)
    lwz 3, 0x250(31)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8015B5D8
    lwz 3, 0x250(31)
    bl fn_8022F3DC
    stw 3, 0x274(31)
L_8015B5D8:
    li 0, 0xa
    stw 0, 0x28c(31)
    lwz 4, 0x234(31)
    cmpwi 4, 0xc
    .4byte 0x40800018 # bge .L_8015B600
    cmpwi 4, 0x4
    .4byte 0x40800044 # bge .L_8015B634
    cmpwi 4, 0x0
    .4byte 0x40800014 # bge .L_8015B60C
    .4byte 0x480000B4 # b .L_8015B6B0
L_8015B600:
    cmpwi 4, 0x2e
    .4byte 0x41820074 # beq .L_8015B678
    .4byte 0x480000A8 # b .L_8015B6B0
L_8015B60C:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4082009C # bne .L_8015B6B0
    lis 3, lbl_804A0170@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804A0170@l
    lwz 3, 0x274(31)
    lwzx 4, 4, 0
    bl fn_802362C4
    .4byte 0x48000080 # b .L_8015B6B0
L_8015B634:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_8015B660
    lis 3, lbl_804A0170@ha
    slwi 0, 4, 2
    addi 5, 3, lbl_804A0170@l
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lwz 4, 0x274(31)
    li 6, 0x0
    lwzx 5, 5, 0
    bl fn_8043D874
L_8015B660:
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_8015B6B0
    li 0, 0x2
    stw 0, 0x28c(31)
    .4byte 0x4800003C # b .L_8015B6B0
L_8015B678:
    .4byte 0xC022A4E0 # lfs f1, lbl_8053D480@sda21(r0)
    lfs 0, 0x284(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x4242
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d42
    addi 6, 31, 0xc
    lis 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x290(31)
L_8015B6B0:
    li 3, 0x0
    stw 3, 0x230(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820084 # bne .L_8015B744
    lwz 0, 0x28c(31)
    cmpwi 0, 0x2
    .4byte 0x41820048 # beq .L_8015B714
    bl SpatialRegistry_GetBase
    lis 4, 0x5354
    lwz 5, 0x4(31)
    addi 4, 4, 0x504e
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x260(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x96(3)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8015B748
    li 0, 0x0
    stw 0, 0x260(31)
    .4byte 0x48000038 # b .L_8015B748
L_8015B714:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8015B730
    li 0, 0x2d
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_8015B738
L_8015B730:
    li 0, 0xa
    stw 0, 0x28c(31)
L_8015B738:
    li 0, 0x0
    stw 0, 0x260(31)
    .4byte 0x48000008 # b .L_8015B748
L_8015B744:
    stw 3, 0x260(31)
L_8015B748:
    li 0, -0x1
    stw 0, 0x278(31)
    stw 0, 0x294(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8015B768:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BFCA0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BFCA0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B7B8
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
L_8015B7B8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B7F0
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
L_8015B7F0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B828
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
L_8015B828:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B860
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
L_8015B860:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B898
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
L_8015B898:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B8D0
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
L_8015B8D0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B908
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
L_8015B908:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B940
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
L_8015B940:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8015B978
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
L_8015B978:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8015B768

