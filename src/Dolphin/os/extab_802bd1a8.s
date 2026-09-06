# Dispatch-cross-check bundle: 7 real FourCC actor vtable bodies
# (lbl_804A8A50/8AC8/8B20/8B78/8BD0/8C28/8C80, ctors already landed)
# plus their shared helper/update functions, landed as ONE
# byte-contiguous 38-function, 0x446C-byte Track-A bundle
# (0x802BD1A8-0x802C1614). Found+verified via spanwalk.py (stopped
# exactly at the pre-existing extab_802c1614.s boundary) and
# resolvefiles.py. See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000C8FC
etb_8000C8FC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C8FC, 8

.global etb_8000C904
etb_8000C904:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C904, 8

.global etb_8000C90C
etb_8000C90C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C90C, 8

.global etb_8000C914
etb_8000C914:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C914, 8

.global etb_8000C91C
etb_8000C91C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C91C, 8

.global etb_8000C924
etb_8000C924:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_8000C924, 8

.global etb_8000C92C
etb_8000C92C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C92C, 8

.global etb_8000C934
etb_8000C934:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C934, 8

.global etb_8000C93C
etb_8000C93C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C93C, 8

.global etb_8000C944
etb_8000C944:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C944, 8

.global etb_8000C94C
etb_8000C94C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C94C, 8

.global etb_8000C954
etb_8000C954:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000C954, 8

.global etb_8000C95C
etb_8000C95C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C95C, 8

.global etb_8000C964
etb_8000C964:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C964, 8

.global etb_8000C96C
etb_8000C96C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C96C, 8

.global etb_8000C974
etb_8000C974:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C974, 8

.global etb_8000C97C
etb_8000C97C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C97C, 8

.global etb_8000C984
etb_8000C984:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000C984, 8

.global etb_8000C98C
etb_8000C98C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C98C, 8

.global etb_8000C994
etb_8000C994:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C994, 8

.global etb_8000C99C
etb_8000C99C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C99C, 8

.global etb_8000C9A4
etb_8000C9A4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C9A4, 8

.global etb_8000C9AC
etb_8000C9AC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C9AC, 8

.global etb_8000C9B4
etb_8000C9B4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C9B4, 8

.global etb_8000C9BC
etb_8000C9BC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000C9BC, 8

.global etb_8000C9C4
etb_8000C9C4:
    .4byte 0x508A0000
    .4byte 0x00000000
.size etb_8000C9C4, 8

.global etb_8000C9CC
etb_8000C9CC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C9CC, 8

.global etb_8000C9D4
etb_8000C9D4:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000C9D4, 8

.global etb_8000C9DC
etb_8000C9DC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C9DC, 8

.global etb_8000C9E4
etb_8000C9E4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C9E4, 8

.global etb_8000C9EC
etb_8000C9EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C9EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001B6F4
eti_8001B6F4:
    .4byte fn_802BD1A8
    .4byte 0x000000B4
    .4byte etb_8000C8FC
.size eti_8001B6F4, 12

.global eti_8001B700
eti_8001B700:
    .4byte fn_802BD25C
    .4byte 0x00000440
    .4byte etb_8000C904
.size eti_8001B700, 12

.global eti_8001B70C
eti_8001B70C:
    .4byte fn_802BD69C
    .4byte 0x00000224
    .4byte etb_8000C90C
.size eti_8001B70C, 12

.global eti_8001B718
eti_8001B718:
    .4byte fn_802BD8C0
    .4byte 0x00000060
    .4byte etb_8000C914
.size eti_8001B718, 12

.global eti_8001B724
eti_8001B724:
    .4byte fn_802BD924
    .4byte 0x0000039C
    .4byte etb_8000C91C
.size eti_8001B724, 12

.global eti_8001B730
eti_8001B730:
    .4byte fn_802BDCC0
    .4byte 0x00000348
    .4byte etb_8000C924
.size eti_8001B730, 12

.global eti_8001B73C
eti_8001B73C:
    .4byte fn_802BE008
    .4byte 0x00000170
    .4byte etb_8000C92C
.size eti_8001B73C, 12

.global eti_8001B748
eti_8001B748:
    .4byte fn_802BE178
    .4byte 0x00000224
    .4byte etb_8000C934
.size eti_8001B748, 12

.global eti_8001B754
eti_8001B754:
    .4byte fn_802BE39C
    .4byte 0x00000060
    .4byte etb_8000C93C
.size eti_8001B754, 12

.global eti_8001B760
eti_8001B760:
    .4byte fn_802BE400
    .4byte 0x00000228
    .4byte etb_8000C944
.size eti_8001B760, 12

.global eti_8001B76C
eti_8001B76C:
    .4byte fn_802BE6D4
    .4byte 0x00000224
    .4byte etb_8000C94C
.size eti_8001B76C, 12

.global eti_8001B778
eti_8001B778:
    .4byte fn_802BE8F8
    .4byte 0x000000E8
    .4byte etb_8000C954
.size eti_8001B778, 12

.global eti_8001B784
eti_8001B784:
    .4byte fn_802BE9E0
    .4byte 0x00000320
    .4byte etb_8000C95C
.size eti_8001B784, 12

.global eti_8001B790
eti_8001B790:
    .4byte fn_802BED00
    .4byte 0x00000094
    .4byte etb_8000C964
.size eti_8001B790, 12

.global eti_8001B79C
eti_8001B79C:
    .4byte fn_802BEE18
    .4byte 0x00000224
    .4byte etb_8000C96C
.size eti_8001B79C, 12

.global eti_8001B7A8
eti_8001B7A8:
    .4byte fn_802BF03C
    .4byte 0x00000060
    .4byte etb_8000C974
.size eti_8001B7A8, 12

.global eti_8001B7B4
eti_8001B7B4:
    .4byte fn_802BF0A0
    .4byte 0x0000010C
    .4byte etb_8000C97C
.size eti_8001B7B4, 12

.global eti_8001B7C0
eti_8001B7C0:
    .4byte fn_802BF1AC
    .4byte 0x00000040
    .4byte etb_8000C984
.size eti_8001B7C0, 12

.global eti_8001B7CC
eti_8001B7CC:
    .4byte fn_802BF1EC
    .4byte 0x00000224
    .4byte etb_8000C98C
.size eti_8001B7CC, 12

.global eti_8001B7D8
eti_8001B7D8:
    .4byte fn_802BF410
    .4byte 0x00000060
    .4byte etb_8000C994
.size eti_8001B7D8, 12

.global eti_8001B7E4
eti_8001B7E4:
    .4byte fn_802BF474
    .4byte 0x00000358
    .4byte etb_8000C99C
.size eti_8001B7E4, 12

.global eti_8001B7F0
eti_8001B7F0:
    .4byte fn_802BF7CC
    .4byte 0x0000018C
    .4byte etb_8000C9A4
.size eti_8001B7F0, 12

.global eti_8001B7FC
eti_8001B7FC:
    .4byte fn_802BF958
    .4byte 0x00000224
    .4byte etb_8000C9AC
.size eti_8001B7FC, 12

.global eti_8001B808
eti_8001B808:
    .4byte fn_802BFB7C
    .4byte 0x00000060
    .4byte etb_8000C9B4
.size eti_8001B808, 12

.global eti_8001B814
eti_8001B814:
    .4byte fn_802BFBDC
    .4byte 0x00000354
    .4byte etb_8000C9BC
.size eti_8001B814, 12

.global eti_8001B820
eti_8001B820:
    .4byte fn_802BFF30
    .4byte 0x00000348
    .4byte etb_8000C9C4
.size eti_8001B820, 12

.global eti_8001B82C
eti_8001B82C:
    .4byte fn_802C0278
    .4byte 0x000002F8
    .4byte etb_8000C9CC
.size eti_8001B82C, 12

.global eti_8001B838
eti_8001B838:
    .4byte fn_802C0570
    .4byte 0x0000026C
    .4byte etb_8000C9D4
.size eti_8001B838, 12

.global eti_8001B844
eti_8001B844:
    .4byte fn_802C07DC
    .4byte 0x00000704
    .4byte etb_8000C9DC
.size eti_8001B844, 12

.global eti_8001B850
eti_8001B850:
    .4byte fn_802C0F20
    .4byte 0x000004D0
    .4byte etb_8000C9E4
.size eti_8001B850, 12

.global eti_8001B85C
eti_8001B85C:
    .4byte fn_802C13F0
    .4byte 0x00000224
    .4byte etb_8000C9EC
.size eti_8001B85C, 12

.text
.balign 4
.global fn_802BD1A8
.global fn_802BD25C
.global fn_802BD69C
.global fn_802BD8C0
.global fn_802BD920
.global fn_802BD924
.global fn_802BDCC0
.global fn_802BE008
.global fn_802BE178
.global fn_802BE39C
.global fn_802BE3FC
.global fn_802BE400
.global fn_802BE628
.global fn_802BE6D4
.global fn_802BE8F8
.global fn_802BE9E0
.global fn_802BED00
.global fn_802BED94
.global fn_802BEE18
.global fn_802BF03C
.global fn_802BF09C
.global fn_802BF0A0
.global fn_802BF1AC
.global fn_802BF1EC
.global fn_802BF410
.global fn_802BF470
.global fn_802BF474
.global fn_802BF7CC
.global fn_802BF958
.global fn_802BFB7C
.global fn_802BFBDC
.global fn_802BFF30
.global fn_802C0278
.global fn_802C0570
.global fn_802C07DC
.global fn_802C0EE0
.global fn_802C0F20
.global fn_802C13F0

fn_802BD1A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182007C # beq .L_802BD240
    lis 3, lbl_804A8A50@ha
    addi 0, 3, lbl_804A8A50@l
    stw 0, 0x0(30)
    lwz 3, 0x230(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802BD1E4
    bl fn_801EE434
L_802BD1E4:
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802BD1F4
    bl fn_801EE434
L_802BD1F4:
    lwz 3, 0x238(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802BD204
    bl fn_801EE434
L_802BD204:
    lwz 3, 0x23c(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802BD214
    bl fn_801EE434
L_802BD214:
    bl GetRoomConfigRecord
    lwz 4, 0x26c(30)
    li 5, 0x0
    bl fn_802D73CC
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BD240
    mr 3, 30
    bl dtor_80084580
L_802BD240:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BD25C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 22
    stw 0, 0x250(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 26
    stw 0, 0x98(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x258(3)
    lwz 0, 0x258(3)
    cmpwi 0, 0xf
    .4byte 0x4082000C # bne .L_802BD2AC
    li 0, -0x1
    stw 0, 0x258(31)
L_802BD2AC:
    li 0, 0x0
    stb 0, 0x290(31)
    stw 0, 0x294(31)
    stw 0, 0x27c(31)
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_802BD2E4
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802BD2E8
L_802BD2E4:
    addi 4, 3, 0xdc
L_802BD2E8:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0x25c(31)
    stw 0, 0x260(31)
    lwz 3, 0x8(4)
    lwz 0, 0xc(4)
    stw 3, 0x264(31)
    stw 0, 0x268(31)
    lfs 1, 0xc(31)
    lfs 0, 0x25c(31)
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x270(31)
    lfs 1, 0x10(31)
    lfs 0, 0x260(31)
    fsubs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x274(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_802BD358
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000014 # b .L_802BD368
L_802BD358:
    cmpwi 0, 0x200
    .4byte 0x4180000C # blt .L_802BD368
    li 0, 0x1ff
    stw 0, 0x270(31)
L_802BD368:
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_802BD380
    li 0, 0x0
    stw 0, 0x274(31)
    .4byte 0x48000014 # b .L_802BD390
L_802BD380:
    cmpwi 0, 0x200
    .4byte 0x4180000C # blt .L_802BD390
    li 0, 0x1ff
    stw 0, 0x274(31)
L_802BD390:
    lwz 4, 0x270(31)
    lwz 3, 0x274(31)
    rlwinm 0, 4, 0, 23, 23
    rlwimi 0, 3, 1, 22, 22
    rlwimi 0, 3, 0, 24, 27
    rlwimi 0, 4, 28, 28, 31
    stw 0, 0x26c(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_802BD3D0
    .4byte 0x408202C4 # bne .L_802BD67C
    bl GetRoomConfigRecord
    lwz 4, 0x26c(31)
    bl fn_802D7384
    clrlwi. 0, 3, 24
    .4byte 0x408202B0 # bne .L_802BD67C
L_802BD3D0:
    .4byte 0xC002DC30 # lfs f0, lbl_80540BD0@sda21(r0)
    addi 3, 31, 0xc
    .4byte 0xC042DC34 # lfs f2, lbl_80540BD4@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022DC38 # lfs f1, lbl_80540BD8@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002DC28 # lfs f0, lbl_80540BC8@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 4, 0x4(31)
    bl fn_80226850
    sth 3, 0x29c(31)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800250 # bge .L_802BD668
    li 0, 0x0
    stw 0, 0x240(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x3
    .4byte 0x408200B4 # bne .L_802BD4E0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x19f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x1a0
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x1a1
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC3C # lfs f1, lbl_80540BDC@sda21(r0)
    li 5, 0x54d
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000BC # b .L_802BD598
L_802BD4E0:
    cmpwi 0, 0x6
    .4byte 0x418200B4 # beq .L_802BD598
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x349
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x34a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x34b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC18 # lfs f1, lbl_80540BB8@sda21(r0)
    li 5, 0x54d
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x1
    li 0, 0xa
    stb 3, 0x290(31)
    stw 0, 0x294(31)
L_802BD598:
    lwz 0, 0x90(31)
    extrwi. 0, 0, 4, 16
    .4byte 0x40820010 # bne .L_802BD5B0
    li 0, 0x1e
    stw 0, 0x254(31)
    .4byte 0x48000070 # b .L_802BD61C
L_802BD5B0:
    slwi 0, 0, 1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x15
    .4byte 0x4080005C # bge .L_802BD61C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002DC18 # lfs f0, lbl_80540BB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042DC24 # lfs f2, lbl_80540BC4@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    clrlwi 0, 0, 29
    stw 0, 0x27c(31)
L_802BD61C:
    li 0, 0x0
    stb 0, 0x278(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820048 # bne .L_802BD684
    lhz 3, 0x29c(31)
    bl fn_801EE3C0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_802BD684
    bl GetRoomConfigRecord
    lwz 4, 0x26c(31)
    li 5, 0x1
    bl fn_802D73CC
    .4byte 0x48000020 # b .L_802BD684
L_802BD668:
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x240(31)
    stw 0, 0x280(31)
    .4byte 0x4800000C # b .L_802BD684
L_802BD67C:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802BD684:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802BD69C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2968@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2968@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD6EC
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
L_802BD6EC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD724
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
L_802BD724:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD75C
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
L_802BD75C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD794
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
L_802BD794:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD7CC
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
L_802BD7CC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD804
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
L_802BD804:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD83C
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
L_802BD83C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD874
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
L_802BD874:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BD8AC
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
L_802BD8AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BD8C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802BD904
    lis 5, lbl_804A8AC8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8AC8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BD904
    mr 3, 30
    bl dtor_80084580
L_802BD904:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BD920:
    blr

fn_802BD924:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lbz 0, 0x250(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_802BD964
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 0, 0x1
    lwz 3, 0x58(3)
    stw 3, 0x24c(31)
    stb 0, 0x250(31)
    .4byte 0x48000344 # b .L_802BDCA4
L_802BD964:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820338 # beq .L_802BDCA4
    .4byte 0x40800334 # bge .L_802BDCA4
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802BD980
    .4byte 0x48000328 # b .L_802BDCA4
L_802BD980:
    lwz 0, 0x234(31)
    cmpwi 0, 0x6
    .4byte 0x40800018 # bge .L_802BD9A0
    cmpwi 0, 0x2
    .4byte 0x40800140 # bge .L_802BDAD0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802BD9AC
    .4byte 0x48000308 # b .L_802BDCA4
L_802BD9A0:
    cmpwi 0, 0xa
    .4byte 0x40800300 # bge .L_802BDCA4
    .4byte 0x480001B8 # b .L_802BDB60
L_802BD9AC:
    bl SpatialRegistry_GetBase
    lbz 0, 0x305c(3)
    cmplwi 0, 0x1
    .4byte 0x408200CC # bne .L_802BDA84
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_802BD9EC
    cmpwi 0, 0x1
    .4byte 0x408202D8 # bne .L_802BDCA4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408202BC # bne .L_802BDCA4
L_802BD9EC:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802BDA20
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
L_802BDA20:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802BDA34
    li 0, 0x1
    stw 0, 0x230(31)
L_802BDA34:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_802BDA68
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x24c(31)
    lwz 0, 0x58(3)
    cmplw 4, 0
    .4byte 0x41820254 # beq .L_802BDCA4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000240 # b .L_802BDCA4
L_802BDA68:
    cmpwi 0, 0x2
    .4byte 0x40820238 # bne .L_802BDCA4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000224 # b .L_802BDCA4
L_802BDA84:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x40820218 # bne .L_802BDCA4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201F8 # bne .L_802BDCA4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x480001D8 # b .L_802BDCA4
L_802BDAD0:
    li 30, 0x0
    li 29, 0x0
L_802BDAD8:
    mr 3, 29
    bl fn_8023E724
    lfs 2, 0x0(3)
    li 0, 0x0
    lfs 0, 0x23c(31)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802BDB28
    lfs 1, 0x4(3)
    lfs 0, 0x240(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802BDB28
    lfs 0, 0x244(31)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802BDB28
    lfs 0, 0x248(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802BDB28
    li 0, 0x1
L_802BDB28:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802BDB4C
    mr 3, 29
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x40820008 # bne .L_802BDB4C
    li 30, 0x1
L_802BDB4C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_802BDAD8
    clrlwi. 0, 30, 24
    .4byte 0x41820148 # beq .L_802BDCA4
L_802BDB60:
    bl SpatialRegistry_GetBase
    lwz 4, 0x4(31)
    addi 5, 31, 0x23c
    bl fn_801F75B4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200E4 # bne .L_802BDC5C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_802BDBAC
    cmpwi 0, 0x1
    .4byte 0x40820118 # bne .L_802BDCA4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408200FC # bne .L_802BDCA4
L_802BDBAC:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x4182001C # beq .L_802BDBEC
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_802BDBEC
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_802BDBEC
    cmpwi 0, 0x8
    .4byte 0x40820010 # bne .L_802BDBF8
L_802BDBEC:
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
L_802BDBF8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802BDC0C
    li 0, 0x1
    stw 0, 0x230(31)
L_802BDC0C:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_802BDC40
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x24c(31)
    lwz 0, 0x58(3)
    cmplw 4, 0
    .4byte 0x4182007C # beq .L_802BDCA4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000068 # b .L_802BDCA4
L_802BDC40:
    cmpwi 0, 0x2
    .4byte 0x40820060 # bne .L_802BDCA4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x4800004C # b .L_802BDCA4
L_802BDC5C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x40820040 # bne .L_802BDCA4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802BDCA4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802BDCA4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802BDCC0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 31, 3
    lwz 30, 0x4(3)
    cmpwi 30, 0x8
    .4byte 0x40800040 # bge .L_802BDD38
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_802BDD10
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_802BDD14
L_802BDD10:
    addi 4, 3, 0xdc
L_802BDD14:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0x23c(31)
    stw 0, 0x240(31)
    lwz 3, 0x8(4)
    lwz 0, 0xc(4)
    stw 3, 0x244(31)
    stw 0, 0x248(31)
    .4byte 0x480002A4 # b .L_802BDFD8
L_802BDD38:
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lfs 1, 0x8(1)
    bl __cvt_fp2unsigned
    lfs 1, 0xc(1)
    clrrwi 30, 3, 3
    bl __cvt_fp2unsigned
    lis 0, 0x4330
    clrrwi 29, 3, 3
    stw 30, 0x1c(1)
    li 28, 0x0
    .4byte 0xC002DC40 # lfs f0, lbl_80540BE0@sda21(r0)
    stw 0, 0x18(1)
    .4byte 0xC862DC50 # lfd f3, lbl_80540BF0@sda21(r0)
    lfd 1, 0x18(1)
    stw 29, 0x24(1)
    fsubs 2, 1, 3
    .4byte 0xC3E2DC44 # lfs f31, lbl_80540BE4@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3C2DC48 # lfs f30, lbl_80540BE8@sda21(r0)
    lfd 1, 0x20(1)
    stfs 2, 0x8(1)
    fsubs 1, 1, 3
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
L_802BDDA4:
    lfs 0, 0x8(1)
    fcmpo cr0, 0, 31
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_802BDDBC
    stfs 31, 0x8(1)
    .4byte 0x48000044 # b .L_802BDDFC
L_802BDDBC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800014 # blt .L_802BDDE4
    cmplwi 0, 0x10
    .4byte 0x4080000C # bge .L_802BDDE4
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_802BDDFC
L_802BDDE4:
    lfs 0, 0x8(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x40
    fadds 0, 0, 30
    stfs 0, 0x8(1)
    .4byte 0x4180FFAC # blt .L_802BDDA4
L_802BDDFC:
    lis 0, 0x4330
    lfs 2, 0x8(1)
    stw 30, 0x24(1)
    li 28, 0x0
    .4byte 0xC822DC50 # lfd f1, lbl_80540BF0@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3C2DC48 # lfs f30, lbl_80540BE8@sda21(r0)
    lfd 0, 0x20(1)
    stfs 2, 0x244(31)
    fsubs 0, 0, 1
    stfs 0, 0x8(1)
L_802BDE28:
    lfs 0, 0x8(1)
    fcmpo cr0, 0, 30
    .4byte 0x40800010 # bge .L_802BDE40
    .4byte 0xC002DC40 # lfs f0, lbl_80540BE0@sda21(r0)
    stfs 0, 0x8(1)
    .4byte 0x48000058 # b .L_802BDE94
L_802BDE40:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800028 # blt .L_802BDE7C
    cmplwi 0, 0x10
    .4byte 0x40800020 # bge .L_802BDE7C
    clrlwi. 0, 3, 31
    .4byte 0x41820018 # beq .L_802BDE7C
    lfs 1, 0x8(1)
    .4byte 0xC002DC48 # lfs f0, lbl_80540BE8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800001C # b .L_802BDE94
L_802BDE7C:
    lfs 0, 0x8(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x40
    fsubs 0, 0, 30
    stfs 0, 0x8(1)
    .4byte 0x4180FF98 # blt .L_802BDE28
L_802BDE94:
    lis 0, 0x4330
    lfs 2, 0x8(1)
    stw 30, 0x24(1)
    li 28, 0x0
    .4byte 0xC862DC50 # lfd f3, lbl_80540BF0@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC002DC40 # lfs f0, lbl_80540BE0@sda21(r0)
    lfd 1, 0x20(1)
    stfs 2, 0x23c(31)
    fsubs 2, 1, 3
    .4byte 0xC3C2DC44 # lfs f30, lbl_80540BE4@sda21(r0)
    stw 29, 0x1c(1)
    .4byte 0xC3E2DC48 # lfs f31, lbl_80540BE8@sda21(r0)
    stw 0, 0x18(1)
    lfd 1, 0x18(1)
    stfs 2, 0x8(1)
    fsubs 1, 1, 3
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
L_802BDEE0:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_802BDEF8
    stfs 30, 0xc(1)
    .4byte 0x48000044 # b .L_802BDF38
L_802BDEF8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800014 # blt .L_802BDF20
    cmplwi 0, 0x10
    .4byte 0x4080000C # bge .L_802BDF20
    clrlwi. 0, 3, 31
    .4byte 0x4082001C # bne .L_802BDF38
L_802BDF20:
    lfs 0, 0xc(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x40
    fadds 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FFAC # blt .L_802BDEE0
L_802BDF38:
    lis 0, 0x4330
    lfs 2, 0xc(1)
    stw 29, 0x24(1)
    li 28, 0x0
    .4byte 0xC822DC50 # lfd f1, lbl_80540BF0@sda21(r0)
    stw 0, 0x20(1)
    .4byte 0xC3E2DC48 # lfs f31, lbl_80540BE8@sda21(r0)
    lfd 0, 0x20(1)
    stfs 2, 0x248(31)
    fsubs 0, 0, 1
    stfs 0, 0xc(1)
L_802BDF64:
    lfs 0, 0xc(1)
    fcmpo cr0, 0, 31
    .4byte 0x40800010 # bge .L_802BDF7C
    .4byte 0xC002DC40 # lfs f0, lbl_80540BE0@sda21(r0)
    stfs 0, 0xc(1)
    .4byte 0x48000058 # b .L_802BDFD0
L_802BDF7C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x8
    .4byte 0x41800028 # blt .L_802BDFB8
    cmplwi 0, 0x10
    .4byte 0x40800020 # bge .L_802BDFB8
    clrlwi. 0, 3, 31
    .4byte 0x41820018 # beq .L_802BDFB8
    lfs 1, 0xc(1)
    .4byte 0xC002DC48 # lfs f0, lbl_80540BE8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800001C # b .L_802BDFD0
L_802BDFB8:
    lfs 0, 0xc(1)
    addi 28, 28, 0x1
    cmpwi 28, 0x40
    fsubs 0, 0, 31
    stfs 0, 0xc(1)
    .4byte 0x4180FF98 # blt .L_802BDF64
L_802BDFD0:
    lfs 0, 0xc(1)
    stfs 0, 0x240(31)
L_802BDFD8:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 0, 0x64(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802BE008:
    stwu 1, -0x30(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x34(1)
    stw 5, 0x230(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 27
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 20
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 4, 0, 5, 5
    addi 0, 4, 0x1
    stw 0, 0x258(3)
    lwz 0, 0x90(3)
    extrwi 4, 0, 5, 10
    addi 0, 4, 0x1
    stw 0, 0x25c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 15
    stw 0, 0x254(3)
    stb 5, 0x250(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x6
    .4byte 0x40800018 # bge .L_802BE084
    cmpwi 0, 0x4
    .4byte 0x408000F0 # bge .L_802BE164
    cmpwi 0, 0x2
    .4byte 0x40800018 # bge .L_802BE094
    .4byte 0x480000E8 # b .L_802BE168
L_802BE084:
    cmpwi 0, 0xa
    .4byte 0x408000E0 # bge .L_802BE168
    cmpwi 0, 0x8
    .4byte 0x408000D4 # bge .L_802BE164
L_802BE094:
    lwz 4, 0x258(3)
    lis 6, 0x4330
    lwz 7, 0x25c(3)
    neg 0, 4
    xoris 5, 4, 0x8000
    xoris 4, 0, 0x8000
    neg 0, 7
    stw 4, 0x1c(1)
    xoris 0, 0, 0x8000
    xoris 4, 7, 0x8000
    .4byte 0xC862DC58 # lfd f3, lbl_80540BF8@sda21(r0)
    stw 6, 0x18(1)
    .4byte 0xC082DC48 # lfs f4, lbl_80540BE8@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x24(1)
    fsubs 1, 0, 3
    stw 6, 0x20(1)
    lfd 0, 0x20(1)
    fmuls 1, 4, 1
    stw 5, 0x14(1)
    fsubs 0, 0, 3
    stw 6, 0x10(1)
    lfd 2, 0x10(1)
    fmuls 0, 4, 0
    stfs 1, 0x23c(3)
    fsubs 1, 2, 3
    stw 4, 0xc(1)
    stw 6, 0x8(1)
    fmuls 2, 4, 1
    lfd 1, 0x8(1)
    stfs 0, 0x240(3)
    fsubs 0, 1, 3
    stfs 2, 0x244(3)
    fmuls 0, 4, 0
    stfs 0, 0x248(3)
    lfs 1, 0x23c(3)
    lfs 0, 0xc(3)
    fadds 0, 1, 0
    stfs 0, 0x23c(3)
    lfs 1, 0x240(3)
    lfs 0, 0x10(3)
    fadds 0, 1, 0
    stfs 0, 0x240(3)
    lfs 1, 0x244(3)
    lfs 0, 0xc(3)
    fadds 0, 1, 0
    stfs 0, 0x244(3)
    lfs 1, 0x248(3)
    lfs 0, 0x10(3)
    fadds 0, 1, 0
    stfs 0, 0x248(3)
    .4byte 0x48000008 # b .L_802BE168
L_802BE164:
    bl fn_802BDCC0
L_802BE168:
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802BE178:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2A68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2A68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE1C8
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
L_802BE1C8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE200
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
L_802BE200:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE238
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
L_802BE238:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE270
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
L_802BE270:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE2A8
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
L_802BE2A8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE2E0
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
L_802BE2E0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE318
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
L_802BE318:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE350
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
L_802BE350:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE388
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
L_802BE388:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BE39C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802BE3E0
    lis 5, lbl_804A8B20@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8B20@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BE3E0
    mr 3, 30
    bl dtor_80084580
L_802BE3E0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BE3FC:
    blr

fn_802BE400:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820078 # beq .L_802BE494
    .4byte 0x40800010 # bge .L_802BE430
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802BE43C
    .4byte 0x480001E8 # b .L_802BE614
L_802BE430:
    cmpwi 0, 0x3
    .4byte 0x408001E0 # bge .L_802BE614
    .4byte 0x480001D8 # b .L_802BE610
L_802BE43C:
    bl GetRoomConfigRecord
    lwz 4, 0x240(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x418201C8 # beq .L_802BE614
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x418001B4 # blt .L_802BE614
    cmpwi 0, 0x5
    .4byte 0x418101AC # bgt .L_802BE614
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    bl fn_802D75BC
    clrlwi. 0, 3, 24
    .4byte 0x40820198 # bne .L_802BE614
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xa
    lwz 5, 0x234(31)
    bl fn_80134DE4
    .4byte 0x48000184 # b .L_802BE614
L_802BE494:
    bl GetRoomConfigRecord
    lwz 4, 0x16c(31)
    bl fn_802D75BC
    clrlwi. 0, 3, 24
    .4byte 0x408200C4 # bne .L_802BE568
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x418000A8 # blt .L_802BE558
    cmpwi 0, 0x5
    .4byte 0x418100A0 # bgt .L_802BE558
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    lfs 1, 0x248(31)
    .4byte 0xC042DC60 # lfs f2, lbl_80540C00@sda21(r0)
    bl fn_802D79E8
    lwz 3, 0x24c(31)
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820070 # bne .L_802BE558
    lwz 0, 0x250(31)
    stw 0, 0x24c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x4
    .4byte 0x40820030 # bne .L_802BE52C
    lfs 2, 0x248(31)
    .4byte 0xC022DC64 # lfs f1, lbl_80540C04@sda21(r0)
    .4byte 0xC002DC68 # lfs f0, lbl_80540C08@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x248(31)
    lfs 1, 0x248(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820038 # bne .L_802BE558
    stfs 0, 0x248(31)
    .4byte 0x48000030 # b .L_802BE558
L_802BE52C:
    cmpwi 0, 0x5
    .4byte 0x40820028 # bne .L_802BE558
    lfs 0, 0x248(31)
    .4byte 0xC022DC64 # lfs f1, lbl_80540C04@sda21(r0)
    fsubs 0, 0, 1
    stfs 0, 0x248(31)
    lfs 0, 0x248(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802BE558
    stfs 1, 0x248(31)
L_802BE558:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_802BE570
L_802BE568:
    li 0, 0x0
    stw 0, 0x238(31)
L_802BE570:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082009C # bne .L_802BE614
    lwz 0, 0x23c(31)
    cmpwi 0, 0x6
    .4byte 0x40820064 # bne .L_802BE5E8
    lwz 0, 0x234(31)
    stw 0, 0x238(31)
    lwz 0, 0x244(31)
    xori 0, 0, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_802BE5C8
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000050 # b .L_802BE614
L_802BE5C8:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000030 # b .L_802BE614
L_802BE5E8:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_802BE614
L_802BE610:
    bl fn_801F3518
L_802BE614:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BE628:
    lwz 6, 0x90(3)
    lis 4, lbl_8046D448@ha
    li 5, 0x0
    li 0, 0x1
    clrlwi 6, 6, 14
    addi 4, 4, lbl_8046D448@l
    stw 6, 0x234(3)
    lwz 6, 0x90(3)
    extrwi 6, 6, 3, 10
    stw 6, 0x23c(3)
    lwz 6, 0x90(3)
    extrwi 6, 6, 5, 5
    stw 6, 0x240(3)
    lwz 6, 0x90(3)
    extrwi 6, 6, 1, 13
    stw 6, 0x254(3)
    stw 5, 0x244(3)
    lwz 5, 0x234(3)
    stw 5, 0x238(3)
    lwz 5, 0x23c(3)
    slwi 5, 5, 2
    lfsx 0, 4, 5
    stfs 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x250(3)
    lwz 0, 0x23c(3)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_802BE6A0
    cmpwi 0, 0x5
    .4byte 0x4082002C # bne .L_802BE6C8
L_802BE6A0:
    lis 4, 0x6666
    lwz 0, 0x238(3)
    addi 4, 4, 0x6667
    mulhw 0, 4, 0
    srawi 0, 0, 1
    srwi 4, 0, 31
    add 0, 0, 4
    stw 0, 0x24c(3)
    lwz 0, 0x24c(3)
    stw 0, 0x250(3)
L_802BE6C8:
    li 0, 0x0
    stw 0, 0x230(3)
    blr

fn_802BE6D4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2B68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2B68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE724
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
L_802BE724:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE75C
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
L_802BE75C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE794
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
L_802BE794:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE7CC
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
L_802BE7CC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE804
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
L_802BE804:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE83C
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
L_802BE83C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE874
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
L_802BE874:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE8AC
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
L_802BE8AC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BE8E4
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
L_802BE8E4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BE8F8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x250(3)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_802BE94C
    lfs 2, 0x254(3)
    .4byte 0xC022DC70 # lfs f1, lbl_80540C10@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810028 # ble .L_802BE944
    .4byte 0xC002DC74 # lfs f0, lbl_80540C14@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x254(3)
    lfs 0, 0x254(3)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820038 # bne .L_802BE970
    stfs 1, 0x254(3)
    .4byte 0x48000030 # b .L_802BE970
L_802BE944:
    stfs 1, 0x254(3)
    .4byte 0x48000028 # b .L_802BE970
L_802BE94C:
    lfs 1, 0x254(3)
    .4byte 0xC002DC78 # lfs f0, lbl_80540C18@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_802BE96C
    .4byte 0xC002DC74 # lfs f0, lbl_80540C14@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x254(3)
    .4byte 0x48000008 # b .L_802BE970
L_802BE96C:
    stfs 0, 0x254(3)
L_802BE970:
    .4byte 0xC062DC7C # lfs f3, lbl_80540C1C@sda21(r0)
    li 8, 0x0
    lfs 2, 0x10(3)
    li 0, 0x80
    lfs 0, 0xc(3)
    addi 5, 1, 0x10
    fadds 4, 3, 2
    lfs 1, 0x254(3)
    fadds 2, 3, 0
    .4byte 0xC002DC70 # lfs f0, lbl_80540C10@sda21(r0)
    stb 8, 0xc(1)
    addi 6, 1, 0x8
    stfs 2, 0x10(1)
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    stfs 4, 0x14(1)
    stfs 0, 0x18(1)
    stb 8, 0xd(1)
    lwz 4, 0x4(3)
    stb 8, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(7)
    bl fn_80158B5C
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802BE9E0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 3, 0x248(3)
    cmpwi 3, 0x0
    .4byte 0x40820030 # bne .L_802BEA2C
    lwz 5, 0x23c(31)
    cmplwi 5, 0x0
    .4byte 0x4182002C # beq .L_802BEA34
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(31)
    .4byte 0x4800000C # b .L_802BEA34
L_802BEA2C:
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_802BEA34:
    lfs 6, 0x60(31)
    .4byte 0xC042DC7C # lfs f2, lbl_80540C1C@sda21(r0)
    stfs 6, 0x10(1)
    lfs 3, 0x64(31)
    stfs 3, 0x14(1)
    lfs 5, 0x68(31)
    stfs 5, 0x18(1)
    lfs 4, 0x6c(31)
    stfs 4, 0x1c(1)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    fadds 7, 2, 1
    fadds 0, 2, 0
    fadds 2, 3, 7
    stfs 7, 0xc(1)
    fadds 3, 6, 0
    fadds 1, 5, 0
    stfs 0, 0x8(1)
    fadds 0, 4, 7
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820158 # beq .L_802BEBF0
    .4byte 0x40800250 # bge .L_802BECEC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802BEAAC
    .4byte 0x48000244 # b .L_802BECEC
L_802BEAAC:
    lhz 0, 0x94(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_802BEAE8
    lwz 4, 0x4(31)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023AB94
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_802BEAE8
    lis 4, 0x4649
    mr 3, 31
    addi 4, 4, 0x5245
    bl fn_801F2718
    cmpwi 3, 0x0
    .4byte 0x41800208 # blt .L_802BECEC
L_802BEAE8:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x3d
    .4byte 0x4182001C # beq .L_802BEB18
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x1de
    .4byte 0x408201D8 # bne .L_802BECEC
L_802BEB18:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC80 # lfs f1, lbl_80540C20@sda21(r0)
    li 5, 0xbd
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC80 # lfs f1, lbl_80540C20@sda21(r0)
    li 5, 0x54a
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(31)
    mr 3, 31
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0xc
    stw 0, 0xb0(31)
    lwz 5, 0x23c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802BEBD0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(31)
L_802BEBD0:
    li 4, 0x1
    li 0, 0x0
    stw 4, 0x230(31)
    lwz 3, 0x244(31)
    stw 3, 0x24c(31)
    stw 4, 0x250(31)
    sth 0, 0x94(31)
    .4byte 0x48000100 # b .L_802BECEC
L_802BEBF0:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_802BEC04
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_802BEC04:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802BEC38
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x408200C4 # bne .L_802BECEC
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x408200B8 # bne .L_802BECEC
L_802BEC38:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022DC80 # lfs f1, lbl_80540C20@sda21(r0)
    li 5, 0x57
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x23c(31)
    li 0, 0x28
    stw 0, 0x248(31)
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802BEC94
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(31)
L_802BEC94:
    lwz 5, 0x238(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802BECBC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x238(31)
L_802BECBC:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0xd
    li 0, 0x0
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    stw 0, 0x250(31)
L_802BECEC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802BED00:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182005C # beq .L_802BED78
    lis 3, lbl_804A8B78@ha
    addi 0, 3, lbl_804A8B78@l
    stw 0, 0x0(30)
    lwz 3, 0x234(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802BED3C
    bl fn_801EE434
L_802BED3C:
    lwz 3, 0x238(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802BED4C
    bl fn_801EE434
L_802BED4C:
    lwz 3, 0x23c(30)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802BED5C
    bl fn_801EE434
L_802BED5C:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BED78
    mr 3, 30
    bl dtor_80084580
L_802BED78:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BED94:
    lwz 5, 0x90(3)
    li 4, 0xd
    li 0, 0x0
    .4byte 0xC082DC7C # lfs f4, lbl_80540C1C@sda21(r0)
    extrwi 5, 5, 5, 5
    .4byte 0xC042DC84 # lfs f2, lbl_80540C24@sda21(r0)
    stw 5, 0x240(3)
    .4byte 0xC022DC88 # lfs f1, lbl_80540C28@sda21(r0)
    lwz 5, 0x90(3)
    .4byte 0xC002DC70 # lfs f0, lbl_80540C10@sda21(r0)
    clrlwi 5, 5, 20
    stw 5, 0x244(3)
    stw 4, 0xb0(3)
    sth 0, 0x94(3)
    stw 0, 0x230(3)
    lfs 3, 0xc(3)
    fadds 3, 3, 4
    stfs 3, 0xc(3)
    lfs 3, 0x10(3)
    fadds 3, 3, 4
    stfs 3, 0x10(3)
    stfs 2, 0x60(3)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    stw 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x250(3)
    stfs 0, 0x254(3)
    blr

fn_802BEE18:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2C68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2C68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEE68
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
L_802BEE68:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEEA0
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
L_802BEEA0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEED8
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
L_802BEED8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEF10
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
L_802BEF10:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEF48
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
L_802BEF48:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEF80
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
L_802BEF80:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEFB8
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
L_802BEFB8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BEFF0
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
L_802BEFF0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF028
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
L_802BF028:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BF03C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802BF080
    lis 5, lbl_804A8BD0@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8BD0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BF080
    mr 3, 30
    bl dtor_80084580
L_802BF080:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BF09C:
    blr

fn_802BF0A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x418200B4 # beq .L_802BF174
    .4byte 0x408000D0 # bge .L_802BF194
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802BF0D4
    .4byte 0x480000C4 # b .L_802BF194
L_802BF0D4:
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802BF0FC
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_802BF194
L_802BF0FC:
    li 3, 0x64
    bl fn_801CD664
    lis 4, lbl_8046D460@ha
    clrlslwi 0, 3, 30, 2
    addi 3, 4, lbl_8046D460@l
    lwz 4, 0x90(30)
    lwzx 0, 3, 0
    srw 0, 4, 0
    clrlwi 31, 0, 27
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802BF14C
    mr 3, 30
    bl fn_801F3668
    .4byte 0x4800004C # b .L_802BF194
L_802BF14C:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802BF160
    li 0, 0x1
    stw 0, 0x230(30)
    .4byte 0x48000038 # b .L_802BF194
L_802BF160:
    cmpwi 0, 0x2
    .4byte 0x40820030 # bne .L_802BF194
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000024 # b .L_802BF194
L_802BF174:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802BF194
    li 0, 0x0
    stw 0, 0x230(30)
L_802BF194:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BF1AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    lwz 4, 0x90(3)
    clrlwi 4, 4, 27
    stw 4, 0x234(3)
    stw 0, 0x230(3)
    lwz 12, 0x0(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BF1EC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2D68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2D68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF23C
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
L_802BF23C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF274
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
L_802BF274:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF2AC
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
L_802BF2AC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF2E4
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
L_802BF2E4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF31C
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
L_802BF31C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF354
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
L_802BF354:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF38C
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
L_802BF38C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF3C4
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
L_802BF3C4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF3FC
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
L_802BF3FC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BF410:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802BF454
    lis 5, lbl_804A8C28@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8C28@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BF454
    mr 3, 30
    bl dtor_80084580
L_802BF454:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BF470:
    blr

fn_802BF474:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8046D470@ha
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 29, 3
    addi 31, 4, lbl_8046D470@l
    lwz 0, 0x90(3)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802BF4B8
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820304 # bne .L_802BF7B8
L_802BF4B8:
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x408202F0 # bne .L_802BF7B0
    lwz 0, 0x234(29)
    cmpwi 0, 0x2
    .4byte 0x41820068 # beq .L_802BF534
    .4byte 0x40800014 # bge .L_802BF4E4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BF4F0
    .4byte 0x40800030 # bge .L_802BF50C
    .4byte 0x48000254 # b .L_802BF734
L_802BF4E4:
    cmpwi 0, 0x4
    .4byte 0x4080024C # bge .L_802BF734
    .4byte 0x480001BC # b .L_802BF6A8
L_802BF4F0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 6, 0x30
    lwz 4, 0x4(29)
    lwz 3, 0x20(3)
    lwz 5, 0x24c(29)
    bl fn_802F9974
    .4byte 0x4800022C # b .L_802BF734
L_802BF50C:
    lwz 0, 0x23c(29)
    addi 6, 31, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    slwi 0, 0, 1
    lwz 4, 0x4(29)
    lwz 3, 0x20(3)
    lwz 5, 0x24c(29)
    lhzx 6, 6, 0
    bl fn_802F9974
    .4byte 0x48000204 # b .L_802BF734
L_802BF534:
    lwz 30, 0x4(29)
    li 28, 0x8
    cmpwi 30, 0x8
    .4byte 0x40800008 # bge .L_802BF548
    li 28, 0x1
L_802BF548:
    bl GetRoomConfigRecord
    lwz 5, 0x254(29)
    addi 4, 30, 0x1
    bl fn_802D7B34
    clrlwi. 0, 3, 16
    lwz 30, 0x24c(29)
    .4byte 0x408200C0 # bne .L_802BF620
    lwz 0, 0x240(29)
    addi 3, 31, 0x28
    slwi 0, 0, 1
    lhzx 27, 3, 0
    cmplwi 27, 0xa0
    .4byte 0x4080001C # bge .L_802BF594
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    subi 6, 27, 0x26
    lwz 5, 0x254(29)
    bl fn_802D7BE8
    .4byte 0x48000018 # b .L_802BF5A8
L_802BF594:
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    subi 6, 27, 0xa6
    lwz 5, 0x254(29)
    bl fn_802D7BE8
L_802BF5A8:
    lwz 0, 0x240(29)
    addi 4, 31, 0x28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    clrlwi 27, 28, 24
    slwi 0, 0, 1
    lwz 7, 0x4(29)
    lwz 3, 0x20(3)
    mr 5, 30
    lhzx 6, 4, 0
    add 4, 7, 27
    bl fn_802F9974
    subi 0, 30, 0x10
    rlwinm 3, 30, 0, 23, 23
    rlwinm 0, 0, 0, 23, 23
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_802BF5F0
    subi 30, 30, 0x110
    .4byte 0x48000008 # b .L_802BF5F4
L_802BF5F0:
    subi 30, 30, 0x10
L_802BF5F4:
    lwz 0, 0x240(29)
    addi 4, 31, 0xc
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 30
    slwi 0, 0, 1
    lwz 7, 0x4(29)
    lwz 3, 0x20(3)
    lhzx 6, 4, 0
    add 4, 7, 27
    bl fn_802F9974
    .4byte 0x48000070 # b .L_802BF68C
L_802BF620:
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 0, 31, 0x44
    clrlslwi 27, 3, 16, 2
    lwz 7, 0x4(29)
    add 4, 0, 27
    clrlwi 28, 28, 24
    lwz 3, 0x20(5)
    mr 5, 30
    lhz 6, 0x2(4)
    add 4, 7, 28
    bl fn_802F9974
    subi 0, 30, 0x10
    rlwinm 3, 30, 0, 23, 23
    rlwinm 0, 0, 0, 23, 23
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_802BF668
    subi 30, 30, 0x110
    .4byte 0x48000008 # b .L_802BF66C
L_802BF668:
    subi 30, 30, 0x10
L_802BF66C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0x44
    lwz 0, 0x4(29)
    mr 5, 30
    lwz 3, 0x20(3)
    lhzx 6, 4, 27
    add 4, 0, 28
    bl fn_802F9974
L_802BF68C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 6, 0x17
    lwz 4, 0x4(29)
    lwz 3, 0x20(3)
    lwz 5, 0x24c(29)
    bl fn_802F9974
    .4byte 0x48000090 # b .L_802BF734
L_802BF6A8:
    lwz 0, 0x244(29)
    cmpwi 0, 0x3
    .4byte 0x41820030 # beq .L_802BF6E0
    .4byte 0x4080001C # bge .L_802BF6D0
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_802BF6F0
    .4byte 0x40800040 # bge .L_802BF700
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_802BF6E0
    .4byte 0x48000068 # b .L_802BF734
L_802BF6D0:
    cmpwi 0, 0x5
    .4byte 0x4182004C # beq .L_802BF720
    .4byte 0x4080005C # bge .L_802BF734
    .4byte 0x48000034 # b .L_802BF710
L_802BF6E0:
    mr 3, 29
    li 4, 0x3
    bl fn_801F0D20
    .4byte 0x48000048 # b .L_802BF734
L_802BF6F0:
    mr 3, 29
    li 4, 0x42
    bl fn_801F0D20
    .4byte 0x48000038 # b .L_802BF734
L_802BF700:
    mr 3, 29
    li 4, 0x6
    bl fn_801F0D20
    .4byte 0x48000028 # b .L_802BF734
L_802BF710:
    mr 3, 29
    li 4, 0x61
    bl fn_801F0D20
    .4byte 0x48000018 # b .L_802BF734
L_802BF720:
    mr 3, 29
    li 4, 0x61
    bl fn_801F0D20
    mr 3, 29
    bl fn_801F3668
L_802BF734:
    lbz 0, 0x260(29)
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_802BF7A4
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DC90 # lfs f1, lbl_80540C30@sda21(r0)
    li 5, 0x564
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DC94 # lfs f1, lbl_80540C34@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
L_802BF7A4:
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x4800000C # b .L_802BF7B8
L_802BF7B0:
    subi 0, 3, 0x1
    stw 0, 0x248(29)
L_802BF7B8:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802BF7CC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 26
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 22
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 18
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 14
    stw 0, 0x240(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 10
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 5, 5
    .4byte 0x41820010 # beq .L_802BF834
    li 0, 0x1
    stb 0, 0x260(31)
    .4byte 0x4800000C # b .L_802BF83C
L_802BF834:
    li 0, 0x0
    stb 0, 0x260(31)
L_802BF83C:
    lfs 1, 0x10(31)
    addi 3, 1, 0x8
    lfs 0, 0xc(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    stw 3, 0x24c(31)
    li 0, 0x0
    stw 0, 0x248(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820080 # beq .L_802BF8EC
    .4byte 0x40800010 # bge .L_802BF880
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BF88C
    .4byte 0x480000A8 # b .L_802BF924
L_802BF880:
    cmpwi 0, 0x4
    .4byte 0x408000A0 # bge .L_802BF924
    .4byte 0x48000088 # b .L_802BF910
L_802BF88C:
    bl GetRoomConfigRecord
    lwz 0, 0x24c(31)
    addi 6, 31, 0x250
    lwz 4, 0x4(31)
    addi 7, 31, 0x258
    clrlwi 5, 0, 16
    bl fn_802D4874
    bl GetRoomConfigRecord
    lwz 0, 0x24c(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D4ADC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_802BF924
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 6, 0x10
    lwz 4, 0x4(31)
    lwz 3, 0x20(3)
    lwz 5, 0x24c(31)
    bl fn_802F9974
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800003C # b .L_802BF924
L_802BF8EC:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    addi 6, 31, 0x250
    lwz 0, 0x24c(31)
    addi 7, 31, 0x258
    addi 4, 4, 0x1
    clrlwi 5, 0, 16
    bl fn_802D4768
    .4byte 0x48000018 # b .L_802BF924
L_802BF910:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802BF924
    li 0, 0x32
    stw 0, 0x248(31)
L_802BF924:
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_802BF944
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802BF944:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802BF958:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2E68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2E68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF9A8
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
L_802BF9A8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BF9E0
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
L_802BF9E0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BFA18
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
L_802BFA18:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BFA50
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
L_802BFA50:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BFA88
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
L_802BFA88:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BFAC0
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
L_802BFAC0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BFAF8
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
L_802BFAF8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BFB30
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
L_802BFB30:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802BFB68
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
L_802BFB68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BFB7C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_802BFBC0
    lis 5, lbl_804A8C80@ha
    li 4, 0x0
    addi 0, 5, lbl_804A8C80@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_802BFBC0
    mr 3, 30
    bl dtor_80084580
L_802BFBC0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802BFBDC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lwz 3, 0x258(3)
    cmpwi 3, 0x0
    .4byte 0x408202F8 # bne .L_802BFF04
    lwz 31, 0x198(28)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 30
    mr 6, 31
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802BFC50
    li 3, 0x1
    .4byte 0x480002C4 # b .L_802BFF10
L_802BFC50:
    mr 3, 30
    mr 4, 29
    bl fn_8022461C
    clrlwi 31, 3, 16
    mr 3, 30
    mr 4, 29
    bl fn_80226850
    clrlwi 3, 3, 16
    cmpwi 3, 0x230
    .4byte 0x4182000C # beq .L_802BFC80
    cmpwi 3, 0x231
    .4byte 0x4082000C # bne .L_802BFC88
L_802BFC80:
    li 3, 0x0
    .4byte 0x4800028C # b .L_802BFF10
L_802BFC88:
    subi 0, 3, 0x19e
    cmplwi 0, 0x1
    .4byte 0x408100F4 # ble .L_802BFD84
    subi 0, 3, 0x350
    cmplwi 0, 0x1
    .4byte 0x408100E8 # ble .L_802BFD84
    subi 0, 3, 0x342
    cmplwi 0, 0x1
    .4byte 0x408100DC # ble .L_802BFD84
    subi 0, 3, 0x345
    cmplwi 0, 0x1
    .4byte 0x408100D0 # ble .L_802BFD84
    subi 0, 3, 0x355
    cmplwi 0, 0x1
    .4byte 0x408100C4 # ble .L_802BFD84
    subi 0, 3, 0x2ee
    cmplwi 0, 0x1
    .4byte 0x408100B8 # ble .L_802BFD84
    subi 0, 3, 0x2fe
    cmplwi 0, 0x1
    .4byte 0x408100AC # ble .L_802BFD84
    subi 0, 3, 0x338
    cmplwi 0, 0x1
    .4byte 0x408100A0 # ble .L_802BFD84
    subi 0, 3, 0x32a
    cmplwi 0, 0x1
    .4byte 0x40810094 # ble .L_802BFD84
    subi 0, 3, 0x32d
    cmplwi 0, 0x1
    .4byte 0x40810088 # ble .L_802BFD84
    subi 0, 3, 0x33d
    cmplwi 0, 0x1
    .4byte 0x4081007C # ble .L_802BFD84
    subi 0, 3, 0x2ce
    cmplwi 0, 0x1
    .4byte 0x40810070 # ble .L_802BFD84
    subi 0, 3, 0x2de
    cmplwi 0, 0x1
    .4byte 0x40810064 # ble .L_802BFD84
    subi 0, 3, 0x3b0
    cmplwi 0, 0x1
    .4byte 0x40810058 # ble .L_802BFD84
    subi 0, 3, 0x3a2
    cmplwi 0, 0x1
    .4byte 0x4081004C # ble .L_802BFD84
    subi 0, 3, 0x3a5
    cmplwi 0, 0x1
    .4byte 0x40810040 # ble .L_802BFD84
    cmpwi 3, 0x3b6
    .4byte 0x41820038 # beq .L_802BFD84
    subi 0, 3, 0x398
    cmplwi 0, 0x1
    .4byte 0x4081002C # ble .L_802BFD84
    subi 0, 3, 0x38a
    cmplwi 0, 0x1
    .4byte 0x40810020 # ble .L_802BFD84
    cmpwi 3, 0x39d
    .4byte 0x41820018 # beq .L_802BFD84
    subi 0, 3, 0x38d
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802BFD84
    cmpwi 3, 0x39e
    .4byte 0x4082000C # bne .L_802BFD8C
L_802BFD84:
    li 3, 0x1
    .4byte 0x48000188 # b .L_802BFF10
L_802BFD8C:
    cmpwi 31, 0x0
    .4byte 0x4182017C # beq .L_802BFF0C
    cmpwi 31, 0x4
    .4byte 0x41820174 # beq .L_802BFF0C
    cmpwi 31, 0x5
    .4byte 0x4182016C # beq .L_802BFF0C
    cmpwi 31, 0x6
    .4byte 0x41820164 # beq .L_802BFF0C
    cmpwi 31, 0x7
    .4byte 0x4182015C # beq .L_802BFF0C
    cmpwi 31, 0x2
    .4byte 0x41820154 # beq .L_802BFF0C
    cmpwi 31, 0x3
    .4byte 0x4182014C # beq .L_802BFF0C
    cmpwi 31, 0x50
    .4byte 0x41820144 # beq .L_802BFF0C
    cmpwi 31, 0xe
    .4byte 0x4182013C # beq .L_802BFF0C
    cmpwi 31, 0xc
    .4byte 0x41820134 # beq .L_802BFF0C
    cmpwi 31, 0x2c
    .4byte 0x4182012C # beq .L_802BFF0C
    cmpwi 31, 0x2d
    .4byte 0x41820124 # beq .L_802BFF0C
    cmpwi 31, 0x2e
    .4byte 0x4182011C # beq .L_802BFF0C
    cmpwi 31, 0x2f
    .4byte 0x41820114 # beq .L_802BFF0C
    cmpwi 31, 0x20
    .4byte 0x4182010C # beq .L_802BFF0C
    cmpwi 31, 0xd
    .4byte 0x41820104 # beq .L_802BFF0C
    cmpwi 31, 0x39
    .4byte 0x418200FC # beq .L_802BFF0C
    cmpwi 31, 0x3a
    .4byte 0x418200F4 # beq .L_802BFF0C
    cmpwi 31, 0x3b
    .4byte 0x418200EC # beq .L_802BFF0C
    cmpwi 31, 0x4c
    .4byte 0x418200E4 # beq .L_802BFF0C
    cmpwi 31, 0x4d
    .4byte 0x418200DC # beq .L_802BFF0C
    cmpwi 31, 0x4e
    .4byte 0x418200D4 # beq .L_802BFF0C
    cmpwi 31, 0x4f
    .4byte 0x418200CC # beq .L_802BFF0C
    cmpwi 31, 0x24
    .4byte 0x418200C4 # beq .L_802BFF0C
    subi 0, 31, 0x10
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_802BFE60
    cmpwi 31, 0x13
    .4byte 0x40820014 # bne .L_802BFE70
L_802BFE60:
    li 0, 0x78
    li 3, 0x0
    stw 0, 0x258(28)
    .4byte 0x480000A4 # b .L_802BFF10
L_802BFE70:
    mr 3, 30
    mr 4, 29
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3a
    .4byte 0x4182001C # beq .L_802BFEA0
    mr 3, 30
    mr 4, 29
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3d
    .4byte 0x4082000C # bne .L_802BFEA8
L_802BFEA0:
    li 3, 0x0
    .4byte 0x4800006C # b .L_802BFF10
L_802BFEA8:
    cmpwi 31, 0x25
    .4byte 0x40820018 # bne .L_802BFEC4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000050 # b .L_802BFF10
L_802BFEC4:
    cmpwi 31, 0x26
    .4byte 0x4082001C # bne .L_802BFEE4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000030 # b .L_802BFF10
L_802BFEE4:
    cmpwi 31, 0x22
    .4byte 0x40820014 # bne .L_802BFEFC
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802BFF0C
L_802BFEFC:
    li 3, 0x1
    .4byte 0x48000010 # b .L_802BFF10
L_802BFF04:
    subi 0, 3, 0x1
    stw 0, 0x258(28)
L_802BFF0C:
    li 3, 0x0
L_802BFF10:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802BFF30:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 22, 0x28(1)
    mr 25, 4
    mr 24, 3
    mr 22, 25
    mr 26, 22
    mr 3, 22
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802BFF7C
    mr 3, 22
    bl fn_8022F3DC
    mr 26, 3
L_802BFF7C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802BFFA4
    mr 3, 26
    bl fn_802308E0
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_802BFFC0
    li 3, 0x0
    .4byte 0x480002B4 # b .L_802C0254
L_802BFFA4:
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802BFFB8
    li 3, 0x0
    .4byte 0x480002A0 # b .L_802C0254
L_802BFFB8:
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
L_802BFFC0:
    lwz 0, 0x23c(24)
    lwz 4, 0x238(24)
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_802BFFD4
    addi 4, 4, 0xb
L_802BFFD4:
    lis 3, lbl_8046D4F0@ha
    .4byte 0xC3C2DC98 # lfs f30, lbl_80540C38@sda21(r0)
    .4byte 0xC3E2DC9C # lfs f31, lbl_80540C3C@sda21(r0)
    slwi 30, 4, 2
    addi 31, 3, lbl_8046D4F0@l
    slwi 28, 25, 26
    li 27, 0x0
    li 29, 0x0
L_802BFFF4:
    mr 3, 27
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    psq_st 0, 0x1c(1), 0, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lfs 1, 0x1c(1)
    lfs 0, 0x20(1)
    fadds 1, 30, 1
    stfs 2, 0x18(1)
    fsubs 0, 0, 31
    stfs 2, 0x24(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820148 # bne .L_802C017C
    mr 3, 27
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200A0 # bne .L_802C00E8
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x408201AC # bne .L_802C0204
    cmpw 27, 25
    .4byte 0x40820044 # bne .L_802C00A4
    lwzx 0, 31, 30
    mr 3, 27
    add 22, 0, 28
    add 22, 29, 22
    bl fn_8023DE58
    mr 23, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 23
    mr 7, 22
    addi 6, 1, 0x10
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000164 # b .L_802C0204
L_802C00A4:
    lwzx 0, 31, 30
    mr 3, 27
    add 4, 0, 28
    addis 23, 4, 0x3000
    add 23, 29, 23
    bl fn_8023DE58
    mr 22, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 22
    mr 7, 23
    addi 6, 1, 0x10
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000120 # b .L_802C0204
L_802C00E8:
    cmpw 27, 26
    .4byte 0x40820118 # bne .L_802C0204
    cmpw 27, 25
    .4byte 0x40820044 # bne .L_802C0138
    lwzx 0, 31, 30
    mr 3, 27
    add 23, 0, 28
    add 23, 29, 23
    bl fn_8023DE58
    mr 22, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 22
    mr 7, 23
    addi 6, 1, 0x10
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000D0 # b .L_802C0204
L_802C0138:
    lwzx 0, 31, 30
    mr 3, 27
    add 4, 0, 28
    addis 23, 4, 0x3000
    add 23, 29, 23
    bl fn_8023DE58
    mr 22, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 22
    mr 7, 23
    addi 6, 1, 0x10
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800008C # b .L_802C0204
L_802C017C:
    cmpw 27, 25
    .4byte 0x40820044 # bne .L_802C01C4
    lwzx 0, 31, 30
    mr 3, 27
    add 23, 0, 28
    add 23, 29, 23
    bl fn_8023DE58
    mr 22, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 22
    mr 7, 23
    addi 6, 1, 0x10
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000044 # b .L_802C0204
L_802C01C4:
    lwzx 0, 31, 30
    mr 3, 27
    add 4, 0, 28
    addis 23, 4, 0x3000
    add 23, 29, 23
    bl fn_8023DE58
    mr 22, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 22
    mr 7, 23
    addi 6, 1, 0x10
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802C0204:
    addi 27, 27, 0x1
    addis 29, 29, 0x100
    cmpwi 27, 0x4
    .4byte 0x4180FDE4 # blt .L_802BFFF4
    lwz 0, 0x244(24)
    cmpwi 0, 0x0
    .4byte 0x41800034 # blt .L_802C0250
    lwz 23, 0x270(24)
    lwz 22, 0x264(24)
    lwz 3, 0x268(24)
    lwz 0, 0x26c(24)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 4, 22
    mr 6, 23
    addi 5, 1, 0x8
    li 7, 0x0
    bl fn_802D6F38
L_802C0250:
    li 3, 0x1
L_802C0254:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 22, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_802C0278:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x418202C8 # beq .L_802C055C
    lwz 4, 0x4(31)
    cmpwi 4, 0x0
    .4byte 0x40820198 # bne .L_802C0438
    li 0, -0x1
    addi 9, 1, 0x18
    stw 0, 0x28(1)
    li 10, 0x0
    stw 0, 0x2c(1)
    .4byte 0x48000064 # b .L_802C031C
L_802C02BC:
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
L_802C031C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802C02BC
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x28(1)
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    stw 5, 0x2c(1)
    stw 5, 0x30(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stb 4, 0x37(1)
    stb 4, 0x38(1)
    stb 5, 0x39(1)
    stb 5, 0x3a(1)
    stb 5, 0x3b(1)
    stb 5, 0x3c(1)
    stb 5, 0x3d(1)
    stb 4, 0x3e(1)
    stw 3, 0x40(1)
    stb 4, 0x44(1)
    stb 5, 0x45(1)
    stb 5, 0x46(1)
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 0, 0x50(1)
    lwz 0, 0x24c(31)
    stb 0, 0x2b(1)
    lfs 1, 0x14(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820030 # beq .L_802C03D4
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    lis 3, lbl_8046D54C@ha
    lwz 5, 0x238(31)
    addi 4, 3, lbl_8046D54C@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x40
    addi 6, 1, 0x18
    li 7, 0x0
    bl fn_801F06F0
    .4byte 0x48000150 # b .L_802C0520
L_802C03D4:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x40820030 # bne .L_802C040C
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    lis 3, lbl_8046D54C@ha
    lwz 5, 0x238(31)
    addi 4, 3, lbl_8046D54C@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x20c
    addi 6, 1, 0x18
    li 7, 0x0
    bl fn_801F06F0
    .4byte 0x48000118 # b .L_802C0520
L_802C040C:
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    lis 3, lbl_8046D54C@ha
    lwz 5, 0x238(31)
    addi 4, 3, lbl_8046D54C@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x182
    addi 6, 1, 0x18
    li 7, 0x0
    bl fn_801F06F0
    .4byte 0x480000EC # b .L_802C0520
L_802C0438:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_802C0450
    .4byte 0x418200DC # beq .L_802C0520
    clrlwi. 0, 0, 30
    .4byte 0x408200D4 # bne .L_802C0520
L_802C0450:
    lwz 0, 0x254(31)
    cmpwi 0, 0x78
    .4byte 0x40800014 # bge .L_802C046C
    cmpwi 0, 0x0
    .4byte 0x418200C0 # beq .L_802C0520
    clrlwi. 0, 0, 30
    .4byte 0x408200B8 # bne .L_802C0520
L_802C046C:
    lfs 1, 0x14(31)
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820038 # beq .L_802C04B0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x238(31)
    lwz 3, 0x198(31)
    addi 6, 6, 0x40
    bl fn_803075AC
    .4byte 0x48000074 # b .L_802C0520
L_802C04B0:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_802C04F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x238(31)
    lwz 3, 0x198(31)
    addi 6, 6, 0x20c
    bl fn_803075AC
    .4byte 0x48000034 # b .L_802C0520
L_802C04F0:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x238(31)
    lwz 3, 0x198(31)
    addi 6, 6, 0x182
    bl fn_803075AC
L_802C0520:
    li 7, 0x0
    li 0, 0x80
    stb 7, 0x14(1)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    addi 6, 1, 0x10
    stb 7, 0x15(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0x16(1)
    .4byte 0xC022DCA4 # lfs f1, lbl_80540C44@sda21(r0)
    stb 0, 0x17(1)
    lwz 0, 0x14(1)
    stw 0, 0x10(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_802C055C:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802C0570:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC022DCA8 # lfs f1, lbl_80540C48@sda21(r0)
    li 4, -0x1
    stw 0, 0x54(1)
    .4byte 0xC002DCAC # lfs f0, lbl_80540C4C@sda21(r0)
    stmw 24, 0x30(1)
    mr 26, 3
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    psq_l 1, 0xc(26), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    bl fn_801F2740
    clrlwi. 31, 3, 24
    mr 30, 3
    .4byte 0x418201C0 # beq .L_802C077C
    li 29, 0x1
    li 28, 0x0
L_802C05C8:
    clrlwi 0, 29, 24
    and. 0, 31, 0
    .4byte 0x4182019C # beq .L_802C076C
    mr 3, 28
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 4, 0x8(3)
    mr 3, 28
    psq_st 0, 0x8(1), 0, 0
    lfs 3, 0xc(26)
    lfs 2, 0x8(1)
    lfs 1, 0x10(26)
    lfs 0, 0xc(1)
    fsubs 2, 3, 2
    stfs 4, 0x10(1)
    fsubs 0, 1, 0
    fabs 1, 2
    fabs 0, 0
    frsp 1, 1
    frsp 0, 0
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x20(1)
    stfd 0, 0x28(1)
    lwz 24, 0x24(1)
    lwz 27, 0x2c(1)
    bl fn_80230CFC
    cmpwi 24, 0x0
    mr 25, 3
    .4byte 0x41800014 # blt .L_802C0650
    cmpwi 24, 0xf
    .4byte 0x4181000C # bgt .L_802C0650
    cmpwi 25, 0x0
    .4byte 0x4182000C # beq .L_802C0658
L_802C0650:
    cmpwi 25, 0x1
    .4byte 0x40820070 # bne .L_802C06C4
L_802C0658:
    lfs 2, 0xc(26)
    lfs 0, 0x8(1)
    fcmpo cr0, 2, 0
    .4byte 0x40810034 # ble .L_802C0698
    subfic 3, 24, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DCB8 # lfd f1, lbl_80540C58@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0xc(26)
    .4byte 0x48000030 # b .L_802C06C4
L_802C0698:
    subfic 3, 24, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DCB8 # lfd f1, lbl_80540C58@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0xc(26)
L_802C06C4:
    lwz 24, 0x4(26)
    bl GetRoomConfigRecord
    addis 4, 24, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_802C076C
    cmpwi 27, 0x0
    .4byte 0x41800014 # blt .L_802C06F8
    cmpwi 27, 0xf
    .4byte 0x4181000C # bgt .L_802C06F8
    cmpwi 25, 0x3
    .4byte 0x4182000C # beq .L_802C0700
L_802C06F8:
    cmpwi 25, 0x2
    .4byte 0x40820070 # bne .L_802C076C
L_802C0700:
    lfs 2, 0x10(26)
    lfs 0, 0xc(1)
    fcmpo cr0, 2, 0
    .4byte 0x40810034 # ble .L_802C0740
    subfic 3, 27, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DCB8 # lfd f1, lbl_80540C58@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x10(26)
    .4byte 0x48000030 # b .L_802C076C
L_802C0740:
    subfic 3, 27, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x28(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DCB8 # lfd f1, lbl_80540C58@sda21(r0)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0x10(26)
L_802C076C:
    addi 28, 28, 0x1
    clrlslwi 29, 29, 25, 1
    cmpwi 28, 0x4
    .4byte 0x4180FE50 # blt .L_802C05C8
L_802C077C:
    clrlwi. 0, 30, 24
    .4byte 0x41820030 # beq .L_802C07B0
    mr 3, 26
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802C07B0
    psq_l 1, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0xc(26), 0, 0
    stfs 0, 0x14(26)
L_802C07B0:
    .4byte 0xC022DCB0 # lfs f1, lbl_80540C50@sda21(r0)
    .4byte 0xC002DCB4 # lfs f0, lbl_80540C54@sda21(r0)
    stfs 1, 0x60(26)
    stfs 1, 0x64(26)
    stfs 0, 0x68(26)
    stfs 0, 0x6c(26)
    lmw 24, 0x30(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802C07DC:
    stwu 1, -0x60(1)
    mflr 0
    .4byte 0xC022DCA0 # lfs f1, lbl_80540C40@sda21(r0)
    li 5, 0x0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    mr 30, 3
    stw 29, 0x54(1)
    lfs 6, 0x10(3)
    addi 3, 1, 0x34
    lfs 2, 0xc(30)
    lfs 0, 0x60(30)
    stfs 0, 0x34(1)
    fadds 4, 0, 2
    lfs 0, 0x64(30)
    stfs 0, 0x38(1)
    fadds 3, 0, 6
    lfs 0, 0x68(30)
    stfs 0, 0x3c(1)
    fadds 2, 0, 2
    lfs 5, 0x6c(30)
    fadds 0, 5, 6
    stfs 5, 0x40(1)
    stfs 4, 0x34(1)
    stfs 3, 0x38(1)
    stfs 2, 0x3c(1)
    stfs 0, 0x40(1)
    lwz 4, 0x4(30)
    bl fn_8023AF14
    lwz 0, 0x248(30)
    mr 31, 3
    cmpwi 0, 0x0
    .4byte 0x41820084 # beq .L_802C08E4
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_802C0894
    lwz 3, 0x24c(30)
    subi 0, 3, 0x8
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3c
    .4byte 0x40800038 # bge .L_802C08BC
    li 0, 0x0
    stw 0, 0x250(30)
    .4byte 0x4800002C # b .L_802C08BC
L_802C0894:
    lwz 3, 0x24c(30)
    addi 0, 3, 0x8
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0xff
    .4byte 0x41800014 # blt .L_802C08BC
    li 3, 0xff
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x250(30)
L_802C08BC:
    lwz 3, 0x248(30)
    subi 0, 3, 0x1
    stw 0, 0x248(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_802C08E4
    li 3, 0xff
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x250(30)
L_802C08E4:
    lwz 0, 0x230(30)
    cmpwi 0, 0x2
    .4byte 0x4182050C # beq .L_802C0DF8
    .4byte 0x40800010 # bge .L_802C0900
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802C090C
    .4byte 0x480004A8 # b .L_802C0DA4
L_802C0900:
    cmpwi 0, 0x4
    .4byte 0x408004A0 # bge .L_802C0DA4
    .4byte 0x48000540 # b .L_802C0E48
L_802C090C:
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408200A8 # bne .L_802C09EC
    lfs 0, 0x14(30)
    .4byte 0xC042DCA0 # lfs f2, lbl_80540C40@sda21(r0)
    fcmpo cr0, 0, 2
    .4byte 0x4081007C # ble .L_802C09D0
    lfs 1, 0x44(30)
    mr 3, 30
    .4byte 0xC002DCC0 # lfs f0, lbl_80540C60@sda21(r0)
    addi 4, 1, 0x28
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
    stfs 2, 0x28(1)
    stfs 2, 0x2c(1)
    stfs 2, 0x30(1)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_802C0A34
    lfs 1, 0x28(1)
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_802C09AC
    lfs 1, 0x3c(30)
    .4byte 0xC002DCC4 # lfs f0, lbl_80540C64@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x3c(30)
L_802C09AC:
    lfs 1, 0x2c(1)
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4182007C # beq .L_802C0A34
    lfs 1, 0x40(30)
    .4byte 0xC002DCC4 # lfs f0, lbl_80540C64@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x40(30)
    .4byte 0x48000068 # b .L_802C0A34
L_802C09D0:
    cror eq, lt, eq
    .4byte 0x40820060 # bne .L_802C0A34
    stfs 2, 0x14(30)
    stfs 2, 0x44(30)
    stfs 2, 0x40(30)
    stfs 2, 0x3c(30)
    .4byte 0x4800004C # b .L_802C0A34
L_802C09EC:
    mr 3, 30
    addi 4, 1, 0x1c
    li 5, 0x0
    bl fn_801F2618
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802C0A24
    .4byte 0xC022DCA0 # lfs f1, lbl_80540C40@sda21(r0)
    lfs 0, 0x20(1)
    fcmpu cr0, 1, 0
    .4byte 0x41820010 # beq .L_802C0A24
    stfs 1, 0x44(30)
    stfs 1, 0x40(30)
    stfs 1, 0x3c(30)
L_802C0A24:
    lfs 1, 0x40(30)
    .4byte 0xC002DCC8 # lfs f0, lbl_80540C68@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(30)
L_802C0A34:
    mr 3, 30
    bl fn_802C0570
    cmpwi 31, 0x0
    .4byte 0x41800160 # blt .L_802C0BA0
    mr 3, 31
    bl fn_8022C0A0
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_802C0A90
    mr 3, 31
    bl fn_8023E8F0
    clrlwi. 0, 3, 24
    .4byte 0x41820140 # beq .L_802C0BA0
    mr 3, 30
    mr 4, 31
    bl fn_802BFF30
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820128 # bne .L_802C0BA0
    li 3, 0x0
    li 0, 0x1
    stw 3, 0xb0(30)
    stw 0, 0x230(30)
    .4byte 0x48000438 # b .L_802C0EC4
L_802C0A90:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820104 # bne .L_802C0BA0
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_802C0AC0
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408200E4 # bne .L_802C0BA0
L_802C0AC0:
    stw 31, 0x260(30)
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C0AE0
    mr 3, 31
    bl fn_8022F3DC
    stw 3, 0x260(30)
L_802C0AE0:
    bl GetRoomConfigRecord
    lwz 4, 0x260(30)
    li 5, 0x151
    li 6, 0x0
    bl fn_802D46D8
    clrlwi. 0, 3, 24
    .4byte 0x408200A8 # bne .L_802C0BA0
    bl fn_802DE7CC
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_802C0BA0
    stw 31, 0x25c(30)
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4182000C # beq .L_802C0B24
    lwz 0, 0x260(30)
    stw 0, 0x25c(30)
L_802C0B24:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_802C0B6C
    lwz 3, 0x260(30)
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_802C0BA0
    lwz 3, 0x25c(30)
    li 6, 0x0
    lwz 4, 0x4(30)
    li 7, 0x0
    lwz 5, 0x198(30)
    bl fn_8022FE80
    li 0, 0x2
    stw 0, 0x230(30)
    .4byte 0x4800035C # b .L_802C0EC4
L_802C0B6C:
    bl fn_8023077C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_802C0BA0
    lwz 3, 0x25c(30)
    li 6, 0x0
    lwz 4, 0x4(30)
    li 7, 0x0
    lwz 5, 0x198(30)
    bl fn_8022FE80
    li 0, 0x2
    stw 0, 0x230(30)
    .4byte 0x48000328 # b .L_802C0EC4
L_802C0BA0:
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x3
    .4byte 0x41820014 # beq .L_802C0BC8
    cmplwi 0, 0xe
    .4byte 0x4182000C # beq .L_802C0BC8
    cmplwi 0, 0xd
    .4byte 0x40820148 # bne .L_802C0D0C
L_802C0BC8:
    clrlwi 0, 3, 16
    cmplwi 0, 0xe
    .4byte 0x408200EC # bne .L_802C0CBC
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802C0C48
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000BC # b .L_802C0D00
L_802C0C48:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_802C0D00
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000048 # b .L_802C0D00
L_802C0CBC:
    cmplwi 0, 0xd
    .4byte 0x40820040 # bne .L_802C0D00
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022DC98 # lfs f1, lbl_80540C38@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
L_802C0D00:
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x480001BC # b .L_802C0EC4
L_802C0D0C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x408201AC # bne .L_802C0EC4
    lwz 3, 0x254(30)
    subi 0, 3, 0x1
    stw 0, 0x254(30)
    lwz 0, 0x254(30)
    cmpwi 0, 0x78
    .4byte 0x41810194 # bgt .L_802C0EC4
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_802C0D64
    lwz 3, 0x24c(30)
    subi 0, 3, 0x8
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3c
    .4byte 0x40800038 # bge .L_802C0D8C
    li 0, 0x0
    stw 0, 0x250(30)
    .4byte 0x4800002C # b .L_802C0D8C
L_802C0D64:
    lwz 3, 0x24c(30)
    addi 0, 3, 0x8
    stw 0, 0x24c(30)
    lwz 0, 0x24c(30)
    cmpwi 0, 0xff
    .4byte 0x41800014 # blt .L_802C0D8C
    li 3, 0xff
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x250(30)
L_802C0D8C:
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x40820130 # bne .L_802C0EC4
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000124 # b .L_802C0EC4
L_802C0DA4:
    li 0, 0x0
    stb 0, 0x11c(30)
    lwz 0, 0x234(30)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802C0DC4
    mr 3, 30
    bl fn_801F35AC
    .4byte 0x48000104 # b .L_802C0EC4
L_802C0DC4:
    lwz 31, 0x270(30)
    lwz 29, 0x264(30)
    lwz 3, 0x268(30)
    lwz 0, 0x26c(30)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 4, 29
    mr 6, 31
    addi 5, 1, 0x8
    li 7, 0x0
    bl fn_802D6F38
    .4byte 0x480000D0 # b .L_802C0EC4
L_802C0DF8:
    lwz 3, 0x25c(30)
    li 6, 0x0
    lwz 4, 0x4(30)
    li 7, 0x0
    lwz 5, 0x198(30)
    bl fn_8022FE80
    lwz 5, 0x198(30)
    addi 7, 1, 0x10
    lwz 6, 0x4(30)
    li 4, 0x151
    psq_l 1, 0xc(30), 0, 0
    li 8, 0x4
    lfs 0, 0x14(30)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x18(1)
    lwz 3, 0x25c(30)
    bl fn_8038AD24
    li 0, 0x3
    stw 0, 0x230(30)
    .4byte 0x48000080 # b .L_802C0EC4
L_802C0E48:
    lwz 3, 0x25c(30)
    li 6, 0x0
    lwz 4, 0x4(30)
    li 7, 0x0
    lwz 5, 0x198(30)
    bl fn_8022FE80
    lwz 3, 0x25c(30)
    lwz 4, 0x198(30)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_802C0EC4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_802C0EA8
    lwz 3, 0x260(30)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_802C0EC4
    li 0, 0x0
    stw 0, 0x230(30)
    .4byte 0x48000020 # b .L_802C0EC4
L_802C0EA8:
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C0EC4
    li 0, 0x0
    stw 0, 0x230(30)
L_802C0EC4:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802C0EE0:
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    li 0, 0x0
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    stw 0, 0x248(3)
    lwz 0, 0x254(3)
    cmpwi 0, 0xb4
    .4byte 0x4080000C # bge .L_802C0F0C
    li 0, 0xb4
    stw 0, 0x254(3)
L_802C0F0C:
    li 4, 0xff
    li 0, 0x1
    stw 4, 0x24c(3)
    stw 0, 0x250(3)
    blr

fn_802C0F20:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    stw 28, 0x70(1)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    stw 0, 0x238(3)
    lwz 0, 0x238(3)
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_802C0F60
    cmpwi 0, 0x16
    .4byte 0x40820038 # bne .L_802C0F94
L_802C0F60:
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x23c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 20
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 10
    stw 0, 0x244(31)
    .4byte 0x48000048 # b .L_802C0FD8
L_802C0F94:
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x23c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 20
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 15
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 10
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_802C0FD8
    li 0, -0x1
    stw 0, 0x244(31)
L_802C0FD8:
    lis 0, 0x2
    stw 0, 0xb0(31)
    lwz 0, 0x90(31)
    stw 0, 0x264(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x268(31)
    stfs 1, 0x26c(31)
    bl GetRoomConfigRecord
    lwz 29, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0x14(3)
    lwz 3, 0x244(31)
    clrlslwi 0, 0, 24, 16
    lwz 4, 0x4(31)
    rlwimi 0, 3, 24, 0, 7
    .4byte 0xC062DCB0 # lfs f3, lbl_80540C50@sda21(r0)
    rlwimi 0, 29, 8, 16, 23
    .4byte 0xC042DCB4 # lfs f2, lbl_80540C54@sda21(r0)
    rlwimi 0, 4, 0, 24, 31
    .4byte 0xC022DCA8 # lfs f1, lbl_80540C48@sda21(r0)
    stw 0, 0x270(31)
    .4byte 0xC002DCAC # lfs f0, lbl_80540C4C@sda21(r0)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802C1070
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802C1070
    cmpwi 0, 0x3
    .4byte 0x408202C4 # bne .L_802C1330
L_802C1070:
    li 3, 0x0
    stw 3, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_802C1088
    stw 3, 0x234(31)
L_802C1088:
    lwz 0, 0x234(31)
    cmpwi 0, 0x3
    .4byte 0x408200B4 # bne .L_802C1144
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_802C10FC
    li 3, 0x2
    bl fn_801CD664
    addi 0, 3, 0x1
    .4byte 0xC042DCA0 # lfs f2, lbl_80540C40@sda21(r0)
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x5c(1)
    .4byte 0xC822DCB8 # lfd f1, lbl_80540C58@sda21(r0)
    stw 0, 0x58(1)
    lfd 0, 0x58(1)
    stfs 2, 0x3c(1)
    fsubs 0, 0, 1
    stfs 2, 0x44(1)
    fneg 0, 0
    stfs 0, 0x40(1)
    psq_l 0, 0x3c(1), 0, 0
    psq_st 0, 0x3c(31), 0, 0
    stfs 2, 0x44(31)
    .4byte 0x48000164 # b .L_802C125C
L_802C10FC:
    li 3, 0x3
    bl fn_801CD664
    addi 0, 3, 0x1
    .4byte 0xC042DCA0 # lfs f2, lbl_80540C40@sda21(r0)
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x5c(1)
    .4byte 0xC822DCB8 # lfd f1, lbl_80540C58@sda21(r0)
    stw 0, 0x58(1)
    lfd 0, 0x58(1)
    stfs 2, 0x30(1)
    fsubs 0, 0, 1
    stfs 2, 0x34(1)
    psq_l 1, 0x30(1), 0, 0
    stfs 0, 0x38(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x4800011C # b .L_802C125C
L_802C1144:
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_802C11D0
    li 3, 0x3
    bl fn_801CD664
    addi 29, 3, 0x1
    li 3, 0x5
    bl fn_801CD664
    subi 0, 3, 0x2
    lis 3, 0x4330
    xoris 4, 0, 0x8000
    xoris 0, 29, 0x8000
    stw 4, 0x5c(1)
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    stw 3, 0x58(1)
    .4byte 0xC842DCB8 # lfd f2, lbl_80540C58@sda21(r0)
    lfd 1, 0x58(1)
    .4byte 0xC062DCCC # lfs f3, lbl_80540C6C@sda21(r0)
    fsubs 1, 1, 2
    stw 0, 0x64(1)
    stw 3, 0x60(1)
    fmuls 1, 3, 1
    stfs 0, 0x28(1)
    lfd 0, 0x60(1)
    stfs 1, 0x24(1)
    fsubs 0, 0, 2
    psq_l 1, 0x24(1), 0, 0
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x2c(1)
    stfs 0, 0x44(31)
    .4byte 0x48000090 # b .L_802C125C
L_802C11D0:
    li 3, 0x3
    bl fn_801CD664
    addi 29, 3, 0x2
    li 3, 0x5
    bl fn_801CD664
    subi 30, 3, 0x2
    li 3, 0x5
    bl fn_801CD664
    subi 0, 3, 0x2
    lis 4, 0x4330
    xoris 0, 0, 0x8000
    xoris 3, 30, 0x8000
    stw 0, 0x64(1)
    xoris 0, 29, 0x8000
    .4byte 0xC862DCB8 # lfd f3, lbl_80540C58@sda21(r0)
    stw 4, 0x60(1)
    .4byte 0xC082DCCC # lfs f4, lbl_80540C6C@sda21(r0)
    lfd 0, 0x60(1)
    stw 3, 0x5c(1)
    fsubs 1, 0, 3
    stw 4, 0x58(1)
    lfd 0, 0x58(1)
    fmuls 2, 4, 1
    stw 0, 0x6c(1)
    fsubs 0, 0, 3
    stw 4, 0x68(1)
    fmuls 1, 4, 0
    lfd 0, 0x68(1)
    stfs 2, 0x18(1)
    fsubs 0, 0, 3
    stfs 1, 0x1c(1)
    psq_l 1, 0x18(1), 0, 0
    stfs 0, 0x20(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_802C125C:
    mr 3, 31
    addi 4, 1, 0x48
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802C12B4
    lfs 1, 0x48(1)
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_802C1294
    lfs 1, 0x3c(31)
    .4byte 0xC002DCC4 # lfs f0, lbl_80540C64@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x3c(31)
L_802C1294:
    lfs 1, 0x4c(1)
    .4byte 0xC002DCA0 # lfs f0, lbl_80540C40@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_802C12B4
    lfs 1, 0x40(31)
    .4byte 0xC002DCC4 # lfs f0, lbl_80540C64@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x40(31)
L_802C12B4:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_802C1324
    bl GetRoomConfigRecord
    lwz 28, 0x18(3)
    bl GetRoomConfigRecord
    lfs 1, 0xc(31)
    lfs 0, 0x10(31)
    lwz 0, 0x14(3)
    stfs 1, 0x10(1)
    lwz 3, 0x244(31)
    clrlslwi 29, 0, 24, 16
    stfs 0, 0x14(1)
    rlwimi 29, 3, 24, 0, 7
    lwz 4, 0x4(31)
    rlwimi 29, 28, 8, 16, 23
    lwz 30, 0x90(31)
    lwz 3, 0x10(1)
    rlwimi 29, 4, 0, 24, 31
    lwz 0, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 4, 30
    mr 6, 29
    addi 5, 1, 0x8
    li 7, 0x1
    bl fn_802D6F38
L_802C1324:
    li 0, 0x96
    stw 0, 0x248(31)
    .4byte 0x48000010 # b .L_802C133C
L_802C1330:
    li 0, 0x0
    stw 0, 0x230(31)
    stw 0, 0x248(31)
L_802C133C:
    li 0, 0xff
    li 3, 0x1
    stw 0, 0x24c(31)
    li 0, 0x0
    li 4, 0xb4
    stw 3, 0x250(31)
    stw 0, 0x258(31)
    stw 4, 0x254(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_802C1388
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C1380
    stw 4, 0x254(31)
    .4byte 0x4800000C # b .L_802C1388
L_802C1380:
    li 0, 0x258
    stw 0, 0x254(31)
L_802C1388:
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_802C13D0
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    .4byte 0xC042DCA0 # lfs f2, lbl_80540C40@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stfs 2, 0x14(31)
    lfs 1, 0x40(31)
    lfs 0, 0x44(31)
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    stfs 2, 0x44(31)
L_802C13D0:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 28, 0x70(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802C13F0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D2F68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D2F68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C1440
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
L_802C1440:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C1478
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
L_802C1478:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C14B0
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
L_802C14B0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C14E8
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
L_802C14E8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C1520
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
L_802C1520:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C1558
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
L_802C1558:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C1590
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
L_802C1590:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C15C8
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
L_802C15C8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802C1600
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
L_802C1600:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802BD69C
    .4byte fn_802BE178
    .4byte fn_802BE6D4
    .4byte fn_802BEE18
    .4byte fn_802BF1EC
    .4byte fn_802BF958
    .4byte fn_802C13F0

