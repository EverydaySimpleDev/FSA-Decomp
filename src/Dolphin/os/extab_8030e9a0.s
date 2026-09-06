# Dispatch-cross-check bundle: 6 real FourCC actor vtable bodies
# (lbl_804AA9F0/AA70/AAE8/AB40/ABA8/AD60, ctors already landed) plus
# shared helper/update functions, landed as ONE byte-contiguous
# 50-function, 32,960-byte Track-A bundle (0x8030E9A0-0x80316A60).
# Found+verified via spanwalk.py (stopped exactly at the pre-existing
# extab_80316a60.s boundary) and resolvefiles.py (1 fused-dump
# function). Only 5 sinit ctors registered here (the 6th actor,
# lbl_804AD60 at fn_803169E0, has no static-init call inside this
# span). See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_8000D734
etb_8000D734:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D734, 8

.global etb_8000D73C
etb_8000D73C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000D73C, 8

.global etb_8000D744
etb_8000D744:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D744, 8

.global etb_8000D74C
etb_8000D74C:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000D74C, 8

.global etb_8000D754
etb_8000D754:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000D754, 8

.global etb_8000D75C
etb_8000D75C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D75C, 8

.global etb_8000D764
etb_8000D764:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D764, 8

.global etb_8000D76C
etb_8000D76C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D76C, 8

.global etb_8000D774
etb_8000D774:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000D774, 8

.global etb_8000D77C
etb_8000D77C:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000D77C, 8

.global etb_8000D784
etb_8000D784:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D784, 8

.global etb_8000D78C
etb_8000D78C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D78C, 8

.global etb_8000D794
etb_8000D794:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D794, 8

.global etb_8000D79C
etb_8000D79C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D79C, 8

.global etb_8000D7A4
etb_8000D7A4:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000D7A4, 8

.global etb_8000D7AC
etb_8000D7AC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D7AC, 8

.global etb_8000D7B4
etb_8000D7B4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D7B4, 8

.global etb_8000D7BC
etb_8000D7BC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D7BC, 8

.global etb_8000D7C4
etb_8000D7C4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D7C4, 8

.global etb_8000D7CC
etb_8000D7CC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D7CC, 8

.global etb_8000D7D4
etb_8000D7D4:
    .4byte 0x220A0000
    .4byte 0x00000000
.size etb_8000D7D4, 8

.global etb_8000D7DC
etb_8000D7DC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D7DC, 8

.global etb_8000D7E4
etb_8000D7E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D7E4, 8

.global etb_8000D7EC
etb_8000D7EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D7EC, 8

.global etb_8000D7F4
etb_8000D7F4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D7F4, 8

.global etb_8000D7FC
etb_8000D7FC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D7FC, 8

.global etb_8000D804
etb_8000D804:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000D804, 8

.global etb_8000D80C
etb_8000D80C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000D80C, 8

.global etb_8000D814
etb_8000D814:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D814, 8

.global etb_8000D81C
etb_8000D81C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D81C, 8

.global etb_8000D824
etb_8000D824:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D824, 8

.global etb_8000D82C
etb_8000D82C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D82C, 8

.global etb_8000D834
etb_8000D834:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D834, 8

.global etb_8000D83C
etb_8000D83C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D83C, 8

.global etb_8000D844
etb_8000D844:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D844, 8

.global etb_8000D84C
etb_8000D84C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D84C, 8

.global etb_8000D854
etb_8000D854:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000D854, 8

.global etb_8000D85C
etb_8000D85C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D85C, 8

.global etb_8000D864
etb_8000D864:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D864, 8

.global etb_8000D86C
etb_8000D86C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D86C, 8

.global etb_8000D874
etb_8000D874:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D874, 8

.global etb_8000D87C
etb_8000D87C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000D87C, 8

.global etb_8000D884
etb_8000D884:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000D884, 8

.section extabindex, "a"
.balign 4
.global eti_8001CBA0
eti_8001CBA0:
    .4byte fn_8030E9A0
    .4byte 0x00000060
    .4byte etb_8000D734
.size eti_8001CBA0, 12

.global eti_8001CBAC
eti_8001CBAC:
    .4byte fn_8030EA2C
    .4byte 0x000001EC
    .4byte etb_8000D73C
.size eti_8001CBAC, 12

.global eti_8001CBB8
eti_8001CBB8:
    .4byte fn_8030EC18
    .4byte 0x000001A4
    .4byte etb_8000D744
.size eti_8001CBB8, 12

.global eti_8001CBC4
eti_8001CBC4:
    .4byte fn_8030EDBC
    .4byte 0x00000C28
    .4byte etb_8000D74C
.size eti_8001CBC4, 12

.global eti_8001CBD0
eti_8001CBD0:
    .4byte fn_8030F9E4
    .4byte 0x00000158
    .4byte etb_8000D754
.size eti_8001CBD0, 12

.global eti_8001CBDC
eti_8001CBDC:
    .4byte fn_8030FB3C
    .4byte 0x00000224
    .4byte etb_8000D75C
.size eti_8001CBDC, 12

.global eti_8001CBE8
eti_8001CBE8:
    .4byte fn_8030FD60
    .4byte 0x00000060
    .4byte etb_8000D764
.size eti_8001CBE8, 12

.global eti_8001CBF4
eti_8001CBF4:
    .4byte fn_8030FDD8
    .4byte 0x000000E0
    .4byte etb_8000D76C
.size eti_8001CBF4, 12

.global eti_8001CC00
eti_8001CC00:
    .4byte fn_8030FEB8
    .4byte 0x00000A4C
    .4byte etb_8000D774
.size eti_8001CC00, 12

.global eti_8001CC0C
eti_8001CC0C:
    .4byte fn_80310904
    .4byte 0x00000198
    .4byte etb_8000D77C
.size eti_8001CC0C, 12

.global eti_8001CC18
eti_8001CC18:
    .4byte fn_80310BC4
    .4byte 0x00000224
    .4byte etb_8000D784
.size eti_8001CC18, 12

.global eti_8001CC24
eti_8001CC24:
    .4byte fn_80310DE8
    .4byte 0x00000060
    .4byte etb_8000D78C
.size eti_8001CC24, 12

.global eti_8001CC30
eti_8001CC30:
    .4byte fn_80310E48
    .4byte 0x00000050
    .4byte etb_8000D794
.size eti_8001CC30, 12

.global eti_8001CC3C
eti_8001CC3C:
    .4byte fn_80310E98
    .4byte 0x000000B8
    .4byte etb_8000D79C
.size eti_8001CC3C, 12

.global eti_8001CC48
eti_8001CC48:
    .4byte fn_80310F50
    .4byte 0x00000078
    .4byte etb_8000D7A4
.size eti_8001CC48, 12

.global eti_8001CC54
eti_8001CC54:
    .4byte fn_80310FC8
    .4byte 0x0000024C
    .4byte etb_8000D7AC
.size eti_8001CC54, 12

.global eti_8001CC60
eti_8001CC60:
    .4byte fn_80311214
    .4byte 0x000002F0
    .4byte etb_8000D7B4
.size eti_8001CC60, 12

.global eti_8001CC6C
eti_8001CC6C:
    .4byte fn_80311578
    .4byte 0x00000224
    .4byte etb_8000D7BC
.size eti_8001CC6C, 12

.global eti_8001CC78
eti_8001CC78:
    .4byte fn_8031179C
    .4byte 0x000004BC
    .4byte etb_8000D7C4
.size eti_8001CC78, 12

.global eti_8001CC84
eti_8001CC84:
    .4byte fn_80311C58
    .4byte 0x00000078
    .4byte etb_8000D7CC
.size eti_8001CC84, 12

.global eti_8001CC90
eti_8001CC90:
    .4byte fn_80311CD0
    .4byte 0x00000628
    .4byte etb_8000D7D4
.size eti_8001CC90, 12

.global eti_8001CC9C
eti_8001CC9C:
    .4byte fn_803122F8
    .4byte 0x00000060
    .4byte etb_8000D7DC
.size eti_8001CC9C, 12

.global eti_8001CCA8
eti_8001CCA8:
    .4byte fn_80312358
    .4byte 0x000000EC
    .4byte etb_8000D7E4
.size eti_8001CCA8, 12

.global eti_8001CCB4
eti_8001CCB4:
    .4byte fn_80312444
    .4byte 0x00000224
    .4byte etb_8000D7EC
.size eti_8001CCB4, 12

.global eti_8001CCC0
eti_8001CCC0:
    .4byte fn_80312668
    .4byte 0x00000060
    .4byte etb_8000D7F4
.size eti_8001CCC0, 12

.global eti_8001CCCC
eti_8001CCCC:
    .4byte fn_803126C8
    .4byte 0x000002E4
    .4byte etb_8000D7FC
.size eti_8001CCCC, 12

.global eti_8001CCD8
eti_8001CCD8:
    .4byte fn_803129AC
    .4byte 0x00000E24
    .4byte etb_8000D804
.size eti_8001CCD8, 12

.global eti_8001CCE4
eti_8001CCE4:
    .4byte fn_803137D0
    .4byte 0x000001B8
    .4byte etb_8000D80C
.size eti_8001CCE4, 12

.global eti_8001CCF0
eti_8001CCF0:
    .4byte fn_803139FC
    .4byte 0x00000224
    .4byte etb_8000D814
.size eti_8001CCF0, 12

.global eti_8001CCFC
eti_8001CCFC:
    .4byte fn_80313C20
    .4byte 0x0000015C
    .4byte etb_8000D81C
.size eti_8001CCFC, 12

.global eti_8001CD08
eti_8001CD08:
    .4byte fn_80313D7C
    .4byte 0x00000568
    .4byte etb_8000D824
.size eti_8001CD08, 12

.global eti_8001CD14
eti_8001CD14:
    .4byte fn_803142E4
    .4byte 0x000003F8
    .4byte etb_8000D82C
.size eti_8001CD14, 12

.global eti_8001CD20
eti_8001CD20:
    .4byte fn_803146DC
    .4byte 0x00000440
    .4byte etb_8000D834
.size eti_8001CD20, 12

.global eti_8001CD2C
eti_8001CD2C:
    .4byte fn_80314B1C
    .4byte 0x00000564
    .4byte etb_8000D83C
.size eti_8001CD2C, 12

.global eti_8001CD38
eti_8001CD38:
    .4byte fn_80315080
    .4byte 0x000003E0
    .4byte etb_8000D844
.size eti_8001CD38, 12

.global eti_8001CD44
eti_8001CD44:
    .4byte fn_80315460
    .4byte 0x00000404
    .4byte etb_8000D84C
.size eti_8001CD44, 12

.global eti_8001CD50
eti_8001CD50:
    .4byte fn_80315864
    .4byte 0x0000041C
    .4byte etb_8000D854
.size eti_8001CD50, 12

.global eti_8001CD5C
eti_8001CD5C:
    .4byte fn_80315C84
    .4byte 0x00000264
    .4byte etb_8000D85C
.size eti_8001CD5C, 12

.global eti_8001CD68
eti_8001CD68:
    .4byte fn_80315EE8
    .4byte 0x00000744
    .4byte etb_8000D864
.size eti_8001CD68, 12

.global eti_8001CD74
eti_8001CD74:
    .4byte fn_8031662C
    .4byte 0x00000128
    .4byte etb_8000D86C
.size eti_8001CD74, 12

.global eti_8001CD80
eti_8001CD80:
    .4byte fn_80316754
    .4byte 0x000000A0
    .4byte etb_8000D874
.size eti_8001CD80, 12

.global eti_8001CD8C
eti_8001CD8C:
    .4byte fn_803167F4
    .4byte 0x000001EC
    .4byte etb_8000D87C
.size eti_8001CD8C, 12

.global eti_8001CD98
eti_8001CD98:
    .4byte fn_803169E0
    .4byte 0x00000080
    .4byte etb_8000D884
.size eti_8001CD98, 12

.text
.balign 4
.global fn_8030E9A0
.global fn_8030EA00
.global fn_8030EA0C
.global fn_8030EA2C
.global fn_8030EC18
.global fn_8030EDBC
.global fn_8030F9E4
.global fn_8030FB3C
.global fn_8030FD60
.global fn_8030FDC0
.global fn_8030FDD8
.global fn_8030FEB8
.global fn_80310904
.global fn_80310A9C
.global fn_80310BC4
.global fn_80310DE8
.global fn_80310E48
.global fn_80310E98
.global fn_80310F50
.global fn_80310FC8
.global fn_80311214
.global fn_80311504
.global fn_80311578
.global fn_8031179C
.global fn_80311C58
.global fn_80311CD0
.global fn_803122F8
.global fn_80312358
.global fn_80312444
.global fn_80312668
.global fn_803126C8
.global fn_803129AC
.global fn_803137D0
.global fn_80313988
.global fn_803139FC
.global fn_80313C20
.global fn_80313D7C
.global fn_803142E4
.global fn_803146DC
.global fn_80314B1C
.global fn_80315080
.global fn_80315460
.global fn_80315864
.global fn_80315C80
.global fn_80315C84
.global fn_80315EE8
.global fn_8031662C
.global fn_80316754
.global fn_803167F4
.global fn_803169E0

fn_8030E9A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8030E9E4
    lis 5, lbl_804AA9F0@ha
    li 4, 0x0
    addi 0, 5, lbl_804AA9F0@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8030E9E4
    mr 3, 30
    bl dtor_80084580
L_8030E9E4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030EA00:
    li 0, 0x7
    stw 0, 0x230(3)
    blr

fn_8030EA0C:
    lwz 0, 0x230(3)
    li 4, 0x6
    xor 0, 4, 0
    srawi 3, 0, 1
    and 0, 0, 4
    subf 0, 0, 3
    srwi 3, 0, 31
    blr

fn_8030EA2C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 3
    lbz 0, 0x245(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030EA64
    li 3, 0x0
    .4byte 0x48000198 # b .L_8030EBF8
L_8030EA64:
    mr 3, 29
    mr 31, 4
    bl fn_8022461C
    clrlwi 30, 3, 16
    mr 3, 29
    mr 4, 31
    bl fn_80226850
    subi 0, 30, 0x10
    clrlwi 3, 3, 16
    cmplwi 0, 0x7
    .4byte 0x40810014 # ble .L_8030EAA0
    cmpwi 3, 0x140
    .4byte 0x4180001C # blt .L_8030EAB0
    cmpwi 3, 0x15f
    .4byte 0x41810014 # bgt .L_8030EAB0
L_8030EAA0:
    li 0, 0x1
    li 3, 0x0
    stb 0, 0x245(28)
    .4byte 0x4800014C # b .L_8030EBF8
L_8030EAB0:
    cmpwi 30, 0x0
    .4byte 0x41820140 # beq .L_8030EBF4
    cmpwi 30, 0x4
    .4byte 0x41820138 # beq .L_8030EBF4
    cmpwi 30, 0x5
    .4byte 0x41820130 # beq .L_8030EBF4
    cmpwi 30, 0x6
    .4byte 0x41820128 # beq .L_8030EBF4
    cmpwi 30, 0x7
    .4byte 0x41820120 # beq .L_8030EBF4
    cmpwi 30, 0x2
    .4byte 0x41820118 # beq .L_8030EBF4
    cmpwi 30, 0x3
    .4byte 0x41820110 # beq .L_8030EBF4
    cmpwi 30, 0xe
    .4byte 0x41820108 # beq .L_8030EBF4
    cmpwi 30, 0x50
    .4byte 0x41820100 # beq .L_8030EBF4
    cmpwi 30, 0xc
    .4byte 0x418200F8 # beq .L_8030EBF4
    cmpwi 30, 0x27
    .4byte 0x418200F0 # beq .L_8030EBF4
    cmpwi 30, 0x28
    .4byte 0x418200E8 # beq .L_8030EBF4
    cmpwi 30, 0x29
    .4byte 0x418200E0 # beq .L_8030EBF4
    cmpwi 30, 0x2a
    .4byte 0x418200D8 # beq .L_8030EBF4
    cmpwi 30, 0x2b
    .4byte 0x418200D0 # beq .L_8030EBF4
    cmpwi 30, 0x2c
    .4byte 0x418200C8 # beq .L_8030EBF4
    cmpwi 30, 0x2d
    .4byte 0x418200C0 # beq .L_8030EBF4
    cmpwi 30, 0x2e
    .4byte 0x418200B8 # beq .L_8030EBF4
    cmpwi 30, 0x2f
    .4byte 0x418200B0 # beq .L_8030EBF4
    cmpwi 30, 0x20
    .4byte 0x418200A8 # beq .L_8030EBF4
    cmpwi 30, 0xd
    .4byte 0x418200A0 # beq .L_8030EBF4
    cmpwi 30, 0x3b
    .4byte 0x41820098 # beq .L_8030EBF4
    cmpwi 30, 0x39
    .4byte 0x41820090 # beq .L_8030EBF4
    cmpwi 30, 0x3a
    .4byte 0x41820088 # beq .L_8030EBF4
    cmpwi 30, 0x4c
    .4byte 0x41820080 # beq .L_8030EBF4
    cmpwi 30, 0x4d
    .4byte 0x41820078 # beq .L_8030EBF4
    cmpwi 30, 0x4e
    .4byte 0x41820070 # beq .L_8030EBF4
    cmpwi 30, 0x4f
    .4byte 0x41820068 # beq .L_8030EBF4
    cmpwi 30, 0x24
    .4byte 0x41820060 # beq .L_8030EBF4
    cmpwi 30, 0x25
    .4byte 0x40820018 # bne .L_8030EBB4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000048 # b .L_8030EBF8
L_8030EBB4:
    cmpwi 30, 0x26
    .4byte 0x4082001C # bne .L_8030EBD4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000028 # b .L_8030EBF8
L_8030EBD4:
    cmpwi 30, 0x22
    .4byte 0x40820014 # bne .L_8030EBEC
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8030EBF4
L_8030EBEC:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8030EBF8
L_8030EBF4:
    li 3, 0x0
L_8030EBF8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8030EC18:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x7
    .4byte 0x41810174 # bgt .L_8030EDA8
    li 0, -0x1
    addi 9, 1, 0x10
    stw 0, 0x20(1)
    li 10, 0x0
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_8030ECB0
L_8030EC50:
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
L_8030ECB0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8030EC50
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x20(1)
    stw 5, 0x24(1)
    stw 5, 0x28(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 5, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 5, 0x3d(1)
    stb 5, 0x3e(1)
    stw 6, 0x40(1)
    stw 5, 0x44(1)
    stw 0, 0x48(1)
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8030ED50
    stb 5, 0x30(1)
    lwz 3, 0xc8(31)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x2d(1)
    lwz 3, 0xc8(31)
    bl fn_8023CA88
    stb 3, 0x2c(1)
L_8030ED50:
    .4byte 0xC022E7A4 # lfs f1, lbl_80541744@sda21(r0)
    lis 3, lbl_804713A8@ha
    lwz 5, 0x24c(31)
    addi 4, 3, lbl_804713A8@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x2ff
    addi 6, 1, 0x10
    li 7, 0x0
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x2ff
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lbz 10, 0xc4(31)
    bl fn_803075AC
L_8030EDA8:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8030EDBC:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stmw 26, 0x78(1)
    mr 30, 3
    lfs 1, 0x60(3)
    stfs 1, 0x68(1)
    lfs 4, 0x64(3)
    stfs 4, 0x6c(1)
    lfs 2, 0x68(3)
    stfs 2, 0x70(1)
    lfs 3, 0x6c(3)
    stfs 3, 0x74(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x68(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x70(1)
    fadds 0, 3, 2
    stfs 1, 0x6c(1)
    stfs 0, 0x74(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x6
    .4byte 0x4181019C # bgt .L_8030EFBC
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x40820190 # bne .L_8030EFBC
    lfs 1, 0x14(30)
    .4byte 0xC002E79C # lfs f0, lbl_8054173C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082017C # bne .L_8030EFBC
    bl SpatialRegistry_GetBase
    lwz 29, 0x1008(3)
    li 26, 0x0
    li 28, 0x0
    .4byte 0x48000160 # b .L_8030EFB4
L_8030EE58:
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    lwzx 31, 3, 0
    cmplwi 31, 0x0
    .4byte 0x41820144 # beq .L_8030EFAC
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x41820138 # beq .L_8030EFAC
    lwz 3, 0x4(31)
    lwz 0, 0x4(30)
    cmpw 3, 0
    .4byte 0x40820128 # bne .L_8030EFAC
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x4f42
    cmplwi 0, 0x4c46
    .4byte 0x40820118 # bne .L_8030EFAC
    mr 3, 31
    addi 4, 1, 0x58
    bl fn_801F31C4
    lwz 0, 0x258(31)
    mr 27, 31
    cmpwi 0, 0xb
    .4byte 0x408200FC # bne .L_8030EFAC
    lfs 3, 0x68(1)
    lfs 4, 0x58(1)
    lfs 0, 0x6c(1)
    fcmpo cr0, 3, 4
    lfs 1, 0x70(1)
    lfs 2, 0x74(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8030EED8
    fmr 3, 4
L_8030EED8:
    lfs 4, 0x5c(1)
    fcmpo cr0, 0, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8030EEEC
    fmr 0, 4
L_8030EEEC:
    lfs 4, 0x60(1)
    fcmpo cr0, 1, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8030EF00
    fmr 1, 4
L_8030EF00:
    lfs 4, 0x64(1)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8030EF14
    fmr 2, 4
L_8030EF14:
    fcmpo cr0, 1, 3
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_8030EF34
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8030EF34
    li 0, 0x1
L_8030EF34:
    clrlwi. 0, 0, 24
    .4byte 0x41820074 # beq .L_8030EFAC
    li 26, -0x1
    lis 29, 0x534d
L_8030EF44:
    bl SpatialRegistry_GetBase
    mr 5, 26
    addi 4, 29, 0x5249
    bl fn_801F78F4
    mr. 28, 3
    mr 26, 28
    .4byte 0x41800034 # blt .L_8030EF90
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    lwz 0, 0x230(3)
    cmpwi 0, 0x8
    .4byte 0x4082FFD0 # bne .L_8030EF44
    lwz 4, 0x110(3)
    lwz 0, 0x110(30)
    cmpw 4, 0
    .4byte 0x4082FFC0 # bne .L_8030EF44
    li 0, 0x9
    stw 0, 0x230(3)
L_8030EF90:
    mr 3, 27
    bl fn_803513C0
    li 0, 0x8
    stw 0, 0x230(30)
    lwz 0, 0x198(31)
    stw 0, 0x240(30)
    .4byte 0x48000014 # b .L_8030EFBC
L_8030EFAC:
    addi 28, 28, 0x4
    addi 26, 26, 0x1
L_8030EFB4:
    cmpw 26, 29
    .4byte 0x4180FEA0 # blt .L_8030EE58
L_8030EFBC:
    lwz 0, 0x230(30)
    cmplwi 0, 0x9
    .4byte 0x41810A0C # bgt .L_8030F9D0
    lis 3, jumptable_804AAA44@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AAA44@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022E7A4 # lfs f1, lbl_80541744@sda21(r0)
    li 5, 0x457
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022E7A4 # lfs f1, lbl_80541744@sda21(r0)
    li 5, 0x458
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x230(30)
    li 0, 0x14
    mr 3, 30
    addi 4, 4, 0x64
    stw 0, 0x238(30)
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800097C # b .L_8030F9D0
    lwz 3, 0x238(30)
    subi 0, 3, 0x1
    stw 0, 0x238(30)
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x41810964 # bgt .L_8030F9D0
    li 0, 0x2
    stw 0, 0x230(30)
    .4byte 0x48000958 # b .L_8030F9D0
    lfs 0, 0x80(30)
    addi 3, 1, 0x18
    lfs 1, 0xc(30)
    lfs 4, 0x88(30)
    lfs 3, 0x84(30)
    fadds 0, 0, 1
    lfs 6, 0x10(30)
    fadds 4, 4, 1
    lfs 5, 0x8c(30)
    fadds 3, 3, 6
    .4byte 0xC042E798 # lfs f2, lbl_80541738@sda21(r0)
    fadds 5, 5, 6
    fsubs 1, 0, 4
    fsubs 0, 3, 5
    fmadds 1, 2, 1, 4
    fmadds 0, 2, 0, 5
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 4, 0x4(30)
    bl fn_802265FC
    clrlwi 4, 3, 16
    cmpwi 4, 0x3
    .4byte 0x41820018 # beq .L_8030F0EC
    subi 0, 4, 0xd
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8030F0EC
    cmpwi 4, 0x3b
    .4byte 0x40820028 # bne .L_8030F110
L_8030F0EC:
    .4byte 0xC002E79C # lfs f0, lbl_8054173C@sda21(r0)
    li 0, 0x6
    li 3, 0x0
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0x230(30)
    stw 4, 0x23c(30)
    .4byte 0x48000008 # b .L_8030F114
L_8030F110:
    li 3, 0x1
L_8030F114:
    clrlwi. 0, 3, 24
    .4byte 0x418208B8 # beq .L_8030F9D0
    lfs 1, 0x60(30)
    li 29, 0x0
    stfs 1, 0x30(1)
    lfs 4, 0x64(30)
    stfs 4, 0x34(1)
    lfs 2, 0x68(30)
    stfs 2, 0x38(1)
    lfs 3, 0x6c(30)
    stfs 3, 0x3c(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x30(1)
    lfs 2, 0x10(30)
    fadds 1, 4, 2
    stfs 0, 0x38(1)
    fadds 0, 3, 2
    stfs 1, 0x34(1)
    stfs 0, 0x3c(1)
L_8030F168:
    addi 28, 29, 0x246
    lbzx 0, 30, 28
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_8030F1B4
    mr 3, 29
    bl fn_8022DB04
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8030F19C
    lwz 28, 0x198(30)
    mr 3, 29
    bl fn_80238CB4
    cmpw 3, 28
    .4byte 0x40820044 # bne .L_8030F1DC
L_8030F19C:
    lwz 5, 0x4(30)
    mr 3, 29
    lwz 6, 0x198(30)
    addi 4, 1, 0x30
    bl fn_80239878
    .4byte 0x4800002C # b .L_8030F1DC
L_8030F1B4:
    lwz 5, 0x4(30)
    mr 3, 29
    .4byte 0xC022E7A0 # lfs f1, lbl_80541740@sda21(r0)
    addi 4, 1, 0x30
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8030F1DC
    li 0, 0x1
    stbx 0, 30, 28
L_8030F1DC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8030F168
    lwz 3, 0x198(30)
    bl fn_80238BC4
    mr. 29, 3
    .4byte 0x4180010C # blt .L_8030F300
    cmpwi 29, 0x4
    .4byte 0x40800104 # bge .L_8030F300
    mulli 28, 29, 0xc
    lis 4, lbl_80471368@ha
    psq_l 3, 0xc(30), 0, 0
    mr 3, 30
    addi 31, 4, lbl_80471368@l
    lfs 2, 0x14(30)
    add 27, 31, 28
    lfsx 0, 31, 28
    lfs 1, 0x4(27)
    mr 26, 27
    stfs 0, 0x4c(1)
    li 4, 0x0
    lfs 0, 0x8(27)
    li 5, 0x0
    stfs 1, 0x50(1)
    addi 26, 26, 0x8
    addi 27, 27, 0x4
    psq_l 1, 0x4c(1), 0, 0
    stfs 0, 0x54(1)
    ps_add 1, 3, 1
    psq_l 0, 0x54(1), 1, 0
    psq_st 3, 0x40(1), 0, 0
    psq_st 1, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    stfs 2, 0x48(1)
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8030F28C
    psq_l 1, 0x40(1), 0, 0
    lfs 0, 0x48(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    .4byte 0x48000748 # b .L_8030F9D0
L_8030F28C:
    psq_l 1, 0x40(1), 0, 0
    addi 3, 1, 0x68
    lfs 0, 0x48(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    lwz 4, 0x4(30)
    lwz 5, 0x198(30)
    bl fn_80239558
    cmpwi 3, 0x0
    .4byte 0x41800720 # blt .L_8030F9D0
    lwz 3, 0x198(30)
    bl fn_80239040
    bl fn_80233DA4
    clrlwi. 0, 3, 24
    .4byte 0x4082070C # bne .L_8030F9D0
    lfsx 0, 31, 28
    li 4, 0x3
    lfs 1, 0x0(27)
    li 3, 0x1
    stfs 0, 0x3c(30)
    li 0, 0x0
    lfs 0, 0x0(26)
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    stw 4, 0x230(30)
    stw 29, 0x234(30)
    stw 3, 0x238(30)
    stb 0, 0x244(30)
    .4byte 0x480006D4 # b .L_8030F9D0
L_8030F300:
    li 26, 0x0
L_8030F304:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_8030F36C
    lwz 5, 0x4(30)
    mr 3, 26
    addi 4, 1, 0x68
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8030F36C
    lwz 4, 0x198(30)
    mr 3, 26
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8030F36C
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x230(30)
    stw 0, 0x238(30)
    stb 0, 0x246(30)
    stb 0, 0x247(30)
    stb 0, 0x248(30)
    stb 0, 0x249(30)
    .4byte 0x48000668 # b .L_8030F9D0
L_8030F36C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF90 # blt .L_8030F304
    .4byte 0x48000658 # b .L_8030F9D0
    psq_l 1, 0xc(30), 0, 0
    li 29, 0x0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lfs 7, 0x60(30)
    stfs 7, 0x68(1)
    lfs 6, 0x64(30)
    stfs 6, 0x6c(1)
    lfs 5, 0x68(30)
    stfs 5, 0x70(1)
    lfs 4, 0x6c(30)
    stfs 4, 0x74(1)
    lfs 0, 0xc(30)
    fadds 3, 7, 0
    fadds 1, 5, 0
    stfs 3, 0x68(1)
    lfs 0, 0x10(30)
    fadds 2, 6, 0
    stfs 7, 0x20(1)
    fadds 0, 4, 0
    stfs 6, 0x24(1)
    stfs 5, 0x28(1)
    stfs 4, 0x2c(1)
    stfs 2, 0x6c(1)
    stfs 1, 0x70(1)
    stfs 0, 0x74(1)
    stfs 3, 0x20(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
L_8030F408:
    addi 26, 29, 0x246
    lbzx 0, 30, 26
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_8030F454
    mr 3, 29
    bl fn_8022DB04
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8030F43C
    lwz 28, 0x198(30)
    mr 3, 29
    bl fn_80238CB4
    cmpw 3, 28
    .4byte 0x40820044 # bne .L_8030F47C
L_8030F43C:
    lwz 5, 0x4(30)
    mr 3, 29
    lwz 6, 0x198(30)
    addi 4, 1, 0x20
    bl fn_80239878
    .4byte 0x4800002C # b .L_8030F47C
L_8030F454:
    lwz 5, 0x4(30)
    mr 3, 29
    .4byte 0xC022E7A0 # lfs f1, lbl_80541740@sda21(r0)
    addi 4, 1, 0x20
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8030F47C
    li 0, 0x1
    stbx 0, 30, 26
L_8030F47C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8030F408
    lbz 0, 0x244(30)
    clrlwi. 0, 0, 27
    .4byte 0x40820018 # bne .L_8030F4A8
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x4
    li 5, 0x0
    bl fn_801F0E34
L_8030F4A8:
    lbz 4, 0x244(30)
    addi 3, 1, 0x10
    .4byte 0xC042E798 # lfs f2, lbl_80541738@sda21(r0)
    addi 0, 4, 0x1
    stb 0, 0x244(30)
    lfs 0, 0x80(30)
    lfs 1, 0xc(30)
    lfs 4, 0x88(30)
    lfs 3, 0x84(30)
    fadds 0, 0, 1
    lfs 6, 0x10(30)
    fadds 4, 4, 1
    lfs 5, 0x8c(30)
    fadds 3, 3, 6
    fadds 5, 5, 6
    fsubs 1, 0, 4
    fsubs 0, 3, 5
    fmadds 1, 2, 1, 4
    fmadds 0, 2, 0, 5
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(30)
    bl fn_802265FC
    clrlwi 4, 3, 16
    cmpwi 4, 0x3
    .4byte 0x41820018 # beq .L_8030F524
    subi 0, 4, 0xd
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8030F524
    cmpwi 4, 0x3b
    .4byte 0x40820028 # bne .L_8030F548
L_8030F524:
    .4byte 0xC002E79C # lfs f0, lbl_8054173C@sda21(r0)
    li 0, 0x6
    li 3, 0x0
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0x230(30)
    stw 4, 0x23c(30)
    .4byte 0x48000008 # b .L_8030F54C
L_8030F548:
    li 3, 0x1
L_8030F54C:
    clrlwi. 0, 3, 24
    .4byte 0x41820480 # beq .L_8030F9D0
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_8030F5E0
    lwz 3, 0x238(30)
    subi 0, 3, 0x1
    stw 0, 0x238(30)
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x41810450 # bgt .L_8030F9D0
    lwz 3, 0x198(30)
    bl fn_80239040
    mr. 26, 3
    .4byte 0x41800050 # blt .L_8030F5E0
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820044 # bne .L_8030F5E0
    mr 3, 26
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_8030F5E0
    lwz 0, 0x234(30)
    lis 3, lbl_80471398@ha
    addi 4, 3, lbl_80471398@l
    mr 3, 26
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8022C52C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8030F5E0
    li 0, 0x1
    stw 0, 0x238(30)
    .4byte 0x480003F4 # b .L_8030F9D0
L_8030F5E0:
    .4byte 0xC002E79C # lfs f0, lbl_8054173C@sda21(r0)
    li 3, 0x2
    li 0, 0x0
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 3, 0x230(30)
    stw 0, 0x238(30)
    stb 0, 0x244(30)
    .4byte 0x480003CC # b .L_8030F9D0
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8030F644
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
    .4byte 0x48000390 # b .L_8030F9D0
L_8030F644:
    lfs 1, 0x3c(30)
    li 0, 0x5
    .4byte 0xC042E7A8 # lfs f2, lbl_80541748@sda21(r0)
    .4byte 0xC002E7AC # lfs f0, lbl_8054174C@sda21(r0)
    fmuls 1, 1, 2
    stfs 1, 0x3c(30)
    lfs 1, 0x40(30)
    fmuls 1, 1, 2
    stfs 1, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0x230(30)
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8030F6B0
    lfs 1, 0x44(30)
    .4byte 0xC002E7B0 # lfs f0, lbl_80541750@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
    .4byte 0x48000014 # b .L_8030F6C0
L_8030F6B0:
    lfs 1, 0x44(30)
    .4byte 0xC002E7B4 # lfs f0, lbl_80541754@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
L_8030F6C0:
    mr 3, 30
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lfs 0, 0x14(30)
    .4byte 0xC022E79C # lfs f1, lbl_8054173C@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x408002F4 # bge .L_8030F9D0
    lfs 0, 0x44(30)
    fcmpo cr0, 0, 1
    .4byte 0x408002E8 # bge .L_8030F9D0
    lfs 0, 0x80(30)
    addi 3, 1, 0x8
    lfs 1, 0xc(30)
    lfs 4, 0x88(30)
    lfs 3, 0x84(30)
    fadds 0, 0, 1
    lfs 6, 0x10(30)
    fadds 4, 4, 1
    lfs 5, 0x8c(30)
    fadds 3, 3, 6
    .4byte 0xC042E798 # lfs f2, lbl_80541738@sda21(r0)
    fadds 5, 5, 6
    fsubs 1, 0, 4
    fsubs 0, 3, 5
    fmadds 1, 2, 1, 4
    fmadds 0, 2, 0, 5
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 4, 0x4(30)
    bl fn_802265FC
    clrlwi 4, 3, 16
    cmpwi 4, 0x3
    .4byte 0x41820018 # beq .L_8030F75C
    subi 0, 4, 0xd
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8030F75C
    cmpwi 4, 0x3b
    .4byte 0x40820028 # bne .L_8030F780
L_8030F75C:
    .4byte 0xC002E79C # lfs f0, lbl_8054173C@sda21(r0)
    li 0, 0x6
    li 3, 0x0
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0x230(30)
    stw 4, 0x23c(30)
    .4byte 0x48000008 # b .L_8030F784
L_8030F780:
    li 3, 0x1
L_8030F784:
    clrlwi. 0, 3, 24
    .4byte 0x41820248 # beq .L_8030F9D0
    .4byte 0xC042E79C # lfs f2, lbl_8054173C@sda21(r0)
    .4byte 0xC022E7B8 # lfs f1, lbl_80541758@sda21(r0)
    stfs 2, 0x14(30)
    stfs 2, 0x44(30)
    lfs 0, 0x3c(30)
    fmuls 0, 0, 1
    stfs 0, 0x3c(30)
    lfs 0, 0x40(30)
    fmuls 0, 0, 1
    stfs 0, 0x40(30)
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_8030F7D8
    .4byte 0xC002E7BC # lfs f0, lbl_8054175C@sda21(r0)
    stfs 0, 0x44(30)
    lwz 3, 0x238(30)
    addi 0, 3, 0x1
    stw 0, 0x238(30)
    .4byte 0x48000020 # b .L_8030F7F4
L_8030F7D8:
    stfs 2, 0x44(30)
    li 3, 0x2
    li 0, 0x0
    stfs 2, 0x40(30)
    stfs 2, 0x3c(30)
    stw 3, 0x230(30)
    stw 0, 0x238(30)
L_8030F7F4:
    li 0, 0x0
    lis 4, 0x5
    stb 0, 0x245(30)
    mr 3, 30
    addi 4, 4, 0x7f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001C0 # b .L_8030F9D0
    psq_l 2, 0xc(30), 0, 0
    psq_l 1, 0x3c(30), 0, 0
    .4byte 0xC002E7C0 # lfs f0, lbl_80541760@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(30), 0, 0
    psq_l 2, 0x14(30), 1, 0
    psq_l 1, 0x44(30), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(30), 1, 0
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    .4byte 0x408000B8 # bge .L_8030F8F8
    lwz 0, 0x23c(30)
    cmpwi 0, 0xe
    .4byte 0x4082002C # bne .L_8030F878
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8030F878
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000078 # b .L_8030F8EC
L_8030F878:
    lwz 0, 0x23c(30)
    cmpwi 0, 0xe
    .4byte 0x4082002C # bne .L_8030F8AC
    bl fn_802DEB58
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8030F8AC
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000044 # b .L_8030F8EC
L_8030F8AC:
    lwz 0, 0x23c(30)
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_8030F8C0
    cmpwi 0, 0x3b
    .4byte 0x4082001C # bne .L_8030F8D8
L_8030F8C0:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_8030F8EC
L_8030F8D8:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x7c
    li 5, 0x0
    bl fn_801F0E34
L_8030F8EC:
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x480000DC # b .L_8030F9D0
L_8030F8F8:
    lfs 1, 0x44(30)
    .4byte 0xC002E7C4 # lfs f0, lbl_80541764@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(30)
    .4byte 0x480000C8 # b .L_8030F9D0
    li 27, 0x0
    li 28, 0x0
    lis 31, 0x4649
L_8030F918:
    lwz 26, 0x110(30)
    bl SpatialRegistry_GetBase
    ori 7, 28, 0x1000
    clrlwi 0, 26, 30
    lwz 5, 0x4(30)
    mr 9, 26
    addi 4, 31, 0x5245
    addi 6, 30, 0xc
    or 7, 7, 0
    li 8, -0x1
    bl fn_801F9484
    addi 27, 27, 0x1
    addi 28, 28, 0x10
    cmplwi 27, 0x4
    .4byte 0x4180FFC8 # blt .L_8030F918
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022E7A4 # lfs f1, lbl_80541744@sda21(r0)
    li 5, 0x95
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022E7A4 # lfs f1, lbl_80541744@sda21(r0)
    li 5, 0x96
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000024 # b .L_8030F9D0
    bl SpatialRegistry_GetBase
    lwz 4, 0x240(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8030F9C8
    bl fn_803511F0
L_8030F9C8:
    li 0, 0x0
    stb 0, 0x11c(30)
L_8030F9D0:
    lmw 26, 0x78(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8030F9E4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    .4byte 0xC002E79C # lfs f0, lbl_8054173C@sda21(r0)
    mr 29, 3
    lis 3, lbl_80471368@ha
    .4byte 0xC062E7C8 # lfs f3, lbl_80541768@sda21(r0)
    stfs 0, 0x3c(29)
    li 5, 0x0
    .4byte 0xC042E7CC # lfs f2, lbl_8054176C@sda21(r0)
    li 4, 0x2
    stfs 0, 0x40(29)
    li 0, -0x1
    .4byte 0xC022E7C0 # lfs f1, lbl_80541760@sda21(r0)
    addi 31, 3, lbl_80471368@l
    stfs 0, 0x44(29)
    li 30, 0x0
    .4byte 0xC002E7D0 # lfs f0, lbl_80541770@sda21(r0)
    stfs 3, 0x60(29)
    .4byte 0xC3E2E7AC # lfs f31, lbl_8054174C@sda21(r0)
    stfs 3, 0x64(29)
    stfs 2, 0x68(29)
    stfs 2, 0x6c(29)
    stfs 1, 0x80(29)
    stfs 1, 0x84(29)
    stfs 0, 0x88(29)
    stfs 0, 0x8c(29)
    stw 5, 0x1a4(29)
    stw 4, 0xb8(29)
    stw 5, 0x230(29)
    stw 5, 0x234(29)
    stw 5, 0x238(29)
    stw 0, 0x240(29)
    stb 5, 0x245(29)
    stb 5, 0x246(29)
    stb 5, 0x247(29)
    stb 5, 0x248(29)
    stb 5, 0x249(29)
    stw 0, 0x23c(29)
    stb 5, 0x244(29)
    stw 5, 0x24c(29)
    stw 5, 0x250(29)
    stw 5, 0x254(29)
    .4byte 0x48000044 # b .L_8030FAE8
L_8030FAA8:
    lwz 3, 0x110(29)
    bl fn_80230CFC
    xori 0, 3, 0x1
    addi 30, 30, 0x1
    mulli 0, 0, 0xc
    lfs 0, 0xc(29)
    cmpwi 30, 0x8
    add 3, 31, 0
    lfs 2, 0x0(3)
    lfs 1, 0x4(3)
    fmadds 0, 31, 2, 0
    stfs 0, 0xc(29)
    lfs 0, 0x10(29)
    fmadds 0, 31, 1, 0
    stfs 0, 0x10(29)
    .4byte 0x4181001C # bgt .L_8030FB00
L_8030FAE8:
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4082FFAC # bne .L_8030FAA8
L_8030FB00:
    .4byte 0xC022E7D4 # lfs f1, lbl_80541774@sda21(r0)
    .4byte 0xC002E7A0 # lfs f0, lbl_80541740@sda21(r0)
    stfs 1, 0x80(29)
    stfs 1, 0x84(29)
    stfs 0, 0x88(29)
    stfs 0, 0x8c(29)
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8030FB3C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_805079F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_805079F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FB8C
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
L_8030FB8C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FBC4
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
L_8030FBC4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FBFC
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
L_8030FBFC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FC34
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
L_8030FC34:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FC6C
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
L_8030FC6C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FCA4
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
L_8030FCA4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FCDC
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
L_8030FCDC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FD14
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
L_8030FD14:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8030FD4C
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
L_8030FD4C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030FD60:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8030FDA4
    lis 5, lbl_804AAA70@ha
    li 4, 0x0
    addi 0, 5, lbl_804AAA70@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8030FDA4
    mr 3, 30
    bl dtor_80084580
L_8030FDA4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030FDC0:
    stw 4, 0x25c(3)
    li 4, 0x3c
    li 0, 0x6
    stw 4, 0x234(3)
    stw 0, 0x230(3)
    blr

fn_8030FDD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x288(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8030FE44
    .4byte 0xC022E7DC # lfs f1, lbl_8054177C@sda21(r0)
    lis 4, lbl_80471420@ha
    lwz 5, 0x240(31)
    addi 4, 4, lbl_80471420@l
    fmr 2, 1
    li 6, 0x0
    addi 5, 5, 0x12c
    li 7, 0x0
    bl fn_801F06F0
    lwz 6, 0x240(31)
    addi 5, 31, 0xc
    lwz 3, 0x198(31)
    li 7, 0x0
    lwz 4, 0x4(31)
    addi 6, 6, 0x12c
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x48000064 # b .L_8030FEA4
L_8030FE44:
    lwz 0, 0x238(31)
    lis 4, lbl_80471420@ha
    .4byte 0xC022E7DC # lfs f1, lbl_8054177C@sda21(r0)
    addi 4, 4, lbl_80471420@l
    lwz 5, 0x240(31)
    slwi 0, 0, 1
    fmr 2, 1
    li 6, 0x0
    add 5, 0, 5
    li 7, 0x0
    addi 5, 5, 0xec
    bl fn_801F06F0
    lwz 0, 0x238(31)
    addi 5, 31, 0xc
    lwz 4, 0x240(31)
    li 7, 0x0
    slwi 0, 0, 1
    lwz 3, 0x198(31)
    add 6, 0, 4
    lwz 4, 0x4(31)
    li 8, 0x0
    li 9, -0x1
    addi 6, 6, 0xec
    bl fn_80307AC8
L_8030FEA4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8030FEB8:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 27, 0x6c(1)
    mr 31, 3
    addi 3, 1, 0x50
    lfs 1, 0x60(31)
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
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lbz 0, 0x288(31)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8030FF60
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x10
    .4byte 0x41800178 # blt .L_803100BC
    li 0, 0x0
    stw 0, 0x244(31)
    lwz 0, 0x240(31)
    xori 0, 0, 0x1
    stw 0, 0x240(31)
    .4byte 0x48000160 # b .L_803100BC
L_8030FF60:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x41810120 # bgt .L_80310088
    li 0, 0x14
    stw 0, 0x23c(31)
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    mr 28, 3
    .4byte 0x4180000C # blt .L_8030FF8C
    bl fn_8022EA0C
    mr 28, 3
L_8030FF8C:
    cmpwi 28, 0x0
    .4byte 0x41800018 # blt .L_8030FFA8
    lwz 29, 0x4(31)
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x4182001C # beq .L_8030FFC0
L_8030FFA8:
    mr 3, 31
    addi 4, 1, 0x44
    addi 5, 1, 0x10
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x48000018 # b .L_8030FFD4
L_8030FFC0:
    mr 3, 31
    addi 4, 1, 0x44
    addi 5, 1, 0x10
    addi 6, 28, 0x1
    bl fn_801EE558
L_8030FFD4:
    lfs 1, 0x10(1)
    .4byte 0xC002E7E0 # lfs f0, lbl_80541780@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_8030FFF4
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x480000A0 # b .L_80310090
L_8030FFF4:
    lfs 1, 0x44(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x48(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E7E4 # lfs f0, lbl_80541784@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80310038
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80310044
L_80310038:
    li 0, 0x3
    stw 0, 0x238(31)
    .4byte 0x48000050 # b .L_80310090
L_80310044:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80310060
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80310060
    li 0, 0x1
    stw 0, 0x238(31)
    .4byte 0x48000034 # b .L_80310090
L_80310060:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8031007C
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8031007C
    li 0, 0x2
    stw 0, 0x238(31)
    .4byte 0x48000018 # b .L_80310090
L_8031007C:
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80310090
L_80310088:
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80310090:
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x14
    .4byte 0x41800018 # blt .L_803100BC
    li 0, 0x0
    stw 0, 0x244(31)
    lwz 0, 0x240(31)
    xori 0, 0, 0x1
    stw 0, 0x240(31)
L_803100BC:
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x4181082C # bgt .L_803108F0
    lis 3, jumptable_804AAAC4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AAAC4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x4(31)
    addi 3, 1, 0x50
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x418007EC # blt .L_803108F0
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418207E0 # beq .L_803108F0
    mr 3, 30
    bl fn_8022F340
    slwi 3, 3, 2
    lwz 0, 0x268(31)
    add 3, 31, 3
    lwz 3, 0x278(3)
    cmplw 3, 0
    .4byte 0x40800070 # bge .L_803101A0
    lbz 0, 0x288(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80310148
    li 4, 0x583
    .4byte 0x4800001C # b .L_80310160
L_80310148:
    lwz 0, 0x264(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8031015C
    li 4, 0x6f5
    .4byte 0x48000008 # b .L_80310160
L_8031015C:
    li 4, 0x6ff
L_80310160:
    lwz 5, 0x198(31)
    addi 7, 1, 0x38
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x28
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x40(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820764 # beq .L_803108F0
    stw 30, 0x248(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000754 # b .L_803108F0
L_803101A0:
    lbz 0, 0x288(31)
    li 4, 0x6fb
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803101B4
    li 4, 0x5af
L_803101B4:
    lwz 5, 0x198(31)
    addi 7, 1, 0x2c
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x28
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x34(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820710 # beq .L_803108F0
    stw 30, 0x248(31)
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000700 # b .L_803108F0
    lwz 3, 0x248(31)
    addi 4, 1, 0x50
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x248(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418206D4 # beq .L_803108F0
    lwz 3, 0x248(31)
    bl fn_8037EFB4
    cmpwi 3, 0x0
    .4byte 0x408200A0 # bne .L_803102CC
    lwz 3, 0x248(31)
    bl fn_80236228
    lwz 0, 0x260(31)
    cmpw 3, 0
    .4byte 0x41800044 # blt .L_80310284
    lbz 0, 0x288(31)
    li 4, 0x700
    lwz 3, 0x248(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8031025C
    li 4, 0x5ac
L_8031025C:
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x4182068C # beq .L_803108F0
    lwz 0, 0x260(31)
    lwz 3, 0x248(31)
    neg 4, 0
    bl fn_802362C4
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000670 # b .L_803108F0
L_80310284:
    lbz 0, 0x288(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80310298
    li 4, 0x5ae
    .4byte 0x4800001C # b .L_803102B0
L_80310298:
    lwz 0, 0x264(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803102AC
    li 4, 0x6f6
    .4byte 0x48000008 # b .L_803102B0
L_803102AC:
    li 4, 0x702
L_803102B0:
    lwz 3, 0x248(31)
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820634 # beq .L_803108F0
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000628 # b .L_803108F0
L_803102CC:
    lbz 0, 0x288(31)
    li 4, 0x701
    lwz 3, 0x248(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803102E4
    li 4, 0x5ad
L_803102E4:
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820604 # beq .L_803108F0
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480005F8 # b .L_803108F0
    lwz 3, 0x248(31)
    addi 4, 1, 0x50
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x248(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418205C8 # beq .L_803108F0
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x480005B4 # b .L_803108F0
    lwz 3, 0x248(31)
    addi 4, 1, 0x50
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x248(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820584 # beq .L_803108F0
    lwz 3, 0x248(31)
    bl fn_8022F340
    stw 3, 0x248(31)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002E7DC # lfs f0, lbl_8054177C@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042E7E8 # lfs f2, lbl_80541788@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 3, 0xb4(4)
    lwz 0, 0x26c(31)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    cmplw 3, 0
    .4byte 0x4181000C # bgt .L_803103E0
    li 5, 0x0
    .4byte 0x48000030 # b .L_8031040C
L_803103E0:
    lwz 0, 0x270(31)
    cmplw 3, 0
    .4byte 0x4181000C # bgt .L_803103F4
    li 5, 0x1
    .4byte 0x4800001C # b .L_8031040C
L_803103F4:
    lwz 0, 0x274(31)
    cmplw 3, 0
    .4byte 0x4181000C # bgt .L_80310408
    li 5, 0x2
    .4byte 0x48000008 # b .L_8031040C
L_80310408:
    li 5, 0x3
L_8031040C:
    lwz 4, 0x264(31)
    lis 3, lbl_804713C0@ha
    addi 0, 3, lbl_804713C0@l
    mr 29, 31
    slwi 3, 4, 2
    li 27, 0x0
    or 5, 5, 3
    mulli 3, 5, 0xc
    add 28, 0, 3
    .4byte 0x4800004C # b .L_8031047C
L_80310434:
    lwz 30, 0x250(29)
    bl SpatialRegistry_GetBase
    slwi 4, 30, 2
    addi 0, 4, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80310470
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474d
    cmplwi 0, 0x5442
    .4byte 0x40820014 # bne .L_80310470
    lwz 4, 0x248(31)
    lwz 5, 0x0(28)
    lwz 6, 0x198(31)
    bl fn_80310F50
L_80310470:
    addi 29, 29, 0x4
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_8031047C:
    lwz 0, 0x24c(31)
    cmpw 27, 0
    .4byte 0x4180FFB0 # blt .L_80310434
    lwz 3, 0x248(31)
    li 0, 0x4
    slwi 3, 3, 2
    add 4, 31, 3
    lwz 3, 0x278(4)
    addi 3, 3, 0x1
    stw 3, 0x278(4)
    stw 0, 0x230(31)
    .4byte 0x48000448 # b .L_803108F0
    lwz 3, 0x248(31)
    bl fn_8022EA0C
    lwz 29, 0x4(31)
    mr 28, 3
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x41820068 # beq .L_8031052C
    mr 28, 31
    li 27, 0x0
    .4byte 0x4800003C # b .L_8031050C
L_803104D4:
    lwz 30, 0x250(28)
    bl SpatialRegistry_GetBase
    slwi 4, 30, 2
    addi 0, 4, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80310504
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474d
    cmplwi 0, 0x5442
    .4byte 0x40820008 # bne .L_80310504
    bl fn_80310E48
L_80310504:
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_8031050C:
    lwz 0, 0x24c(31)
    cmpw 27, 0
    .4byte 0x4180FFC0 # blt .L_803104D4
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x480003C8 # b .L_803108F0
L_8031052C:
    lwz 5, 0x4(31)
    mr 3, 28
    lwz 6, 0x198(31)
    addi 4, 1, 0x50
    li 7, 0x1
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpw 28, 3
    .4byte 0x4082039C # bne .L_803108F0
    mr 3, 28
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4182038C # beq .L_803108F0
    lbz 0, 0x288(31)
    li 4, 0x700
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8031057C
    li 4, 0x5ac
L_8031057C:
    lwz 5, 0x198(31)
    addi 7, 1, 0x20
    lwz 6, 0x4(31)
    mr 3, 28
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x28
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x28(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820348 # beq .L_803108F0
    stw 28, 0x248(31)
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x48000338 # b .L_803108F0
    lwz 3, 0x248(31)
    addi 4, 1, 0x50
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x248(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820308 # beq .L_803108F0
    lwz 3, 0x248(31)
    bl fn_8022F340
    stw 3, 0x248(31)
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x480002F0 # b .L_803108F0
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_8031061C
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x480002D8 # b .L_803108F0
L_8031061C:
    lwz 0, 0x264(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80310678
    lwz 0, 0x25c(31)
    cmpwi 0, 0x2
    .4byte 0x41820040 # beq .L_80310670
    .4byte 0x40800014 # bge .L_80310648
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_80310670
    .4byte 0x40800018 # bge .L_80310658
    .4byte 0x4800002C # b .L_80310670
L_80310648:
    cmpwi 0, 0x4
    .4byte 0x4182001C # beq .L_80310668
    .4byte 0x40800020 # bge .L_80310670
    .4byte 0x4800000C # b .L_80310660
L_80310658:
    li 28, 0x6f8
    .4byte 0x48000064 # b .L_803106C0
L_80310660:
    li 28, 0x6f9
    .4byte 0x4800005C # b .L_803106C0
L_80310668:
    li 28, 0x6fa
    .4byte 0x48000054 # b .L_803106C0
L_80310670:
    li 28, 0x6f7
    .4byte 0x4800004C # b .L_803106C0
L_80310678:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_803106AC
    .4byte 0x40800014 # bge .L_80310698
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_803106BC
    .4byte 0x40800014 # bge .L_803106A4
    .4byte 0x48000028 # b .L_803106BC
L_80310698:
    cmpwi 0, 0x4
    .4byte 0x40800020 # bge .L_803106BC
    .4byte 0x48000014 # b .L_803106B4
L_803106A4:
    li 28, 0x704
    .4byte 0x48000018 # b .L_803106C0
L_803106AC:
    li 28, 0x705
    .4byte 0x48000010 # b .L_803106C0
L_803106B4:
    li 28, 0x706
    .4byte 0x48000008 # b .L_803106C0
L_803106BC:
    li 28, 0x703
L_803106C0:
    lwz 3, 0x248(31)
    bl fn_8022EA0C
    lwz 5, 0x4(31)
    addi 6, 1, 0x14
    psq_l 1, 0xc(31), 0, 0
    mr 30, 3
    lfs 0, 0x14(31)
    mr 4, 28
    li 7, 0x21
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x1c(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418201FC # beq .L_803108F0
    mr 28, 31
    li 27, 0x0
    .4byte 0x4800003C # b .L_8031073C
L_80310704:
    lwz 29, 0x250(28)
    bl SpatialRegistry_GetBase
    slwi 4, 29, 2
    addi 0, 4, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80310734
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474d
    cmplwi 0, 0x5442
    .4byte 0x40820008 # bne .L_80310734
    bl fn_80310E98
L_80310734:
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_8031073C:
    lwz 0, 0x24c(31)
    cmpw 27, 0
    .4byte 0x4180FFC0 # blt .L_80310704
    stw 30, 0x248(31)
    li 3, 0x3c
    li 0, 0x7
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000194 # b .L_803108F0
    lwz 3, 0x248(31)
    addi 4, 1, 0x50
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_80310794
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000160 # b .L_803108F0
L_80310794:
    lwz 3, 0x248(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182014C # beq .L_803108F0
    mr 28, 31
    li 27, 0x0
    .4byte 0x4800003C # b .L_803107EC
L_803107B4:
    lwz 29, 0x250(28)
    bl SpatialRegistry_GetBase
    slwi 4, 29, 2
    addi 0, 4, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803107E4
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474d
    cmplwi 0, 0x5442
    .4byte 0x40820008 # bne .L_803107E4
    bl fn_80310E98
L_803107E4:
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_803107EC:
    lwz 0, 0x24c(31)
    cmpw 27, 0
    .4byte 0x4180FFC0 # blt .L_803107B4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002E7DC # lfs f0, lbl_8054177C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042E7D8 # lfs f2, lbl_80541778@sda21(r0)
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
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_80310878
    .4byte 0x4080003C # bge .L_8031088C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80310864
    .4byte 0x48000030 # b .L_8031088C
    .4byte 0x4800002C # b .L_8031088C
L_80310864:
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    stw 0, 0x250(31)
    stw 3, 0x254(31)
    .4byte 0x48000028 # b .L_8031089C
L_80310878:
    lwz 3, 0x254(31)
    lwz 0, 0x258(31)
    stw 0, 0x254(31)
    stw 3, 0x258(31)
    .4byte 0x48000014 # b .L_8031089C
L_8031088C:
    lwz 3, 0x250(31)
    lwz 0, 0x258(31)
    stw 0, 0x250(31)
    stw 3, 0x258(31)
L_8031089C:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_803108F0
    lwz 3, 0x248(31)
    addi 4, 1, 0x50
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x248(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_803108F0
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x248(31)
    stw 0, 0x230(31)
L_803108F0:
    lmw 27, 0x6c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80310904:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    lwz 30, 0x1008(3)
    mr 28, 31
    li 27, 0x0
    li 26, 0x0
    li 29, 0x0
    .4byte 0x48000044 # b .L_80310974
L_80310934:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_8031096C
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x474d
    cmplwi 0, 0x5442
    .4byte 0x40820018 # bne .L_8031096C
    addi 27, 27, 0x1
    stw 26, 0x250(28)
    cmpwi 27, 0x3
    addi 28, 28, 0x4
    .4byte 0x40800014 # bge .L_8031097C
L_8031096C:
    addi 29, 29, 0x4
    addi 26, 26, 0x1
L_80310974:
    cmpw 26, 30
    .4byte 0x4180FFBC # blt .L_80310934
L_8031097C:
    cmpwi 27, 0x0
    .4byte 0x40820010 # bne .L_80310990
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000FC # b .L_80310A88
L_80310990:
    stw 27, 0x24c(31)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002E7DC # lfs f0, lbl_8054177C@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042E7EC # lfs f2, lbl_8054178C@sda21(r0)
    lwz 3, 0xb4(4)
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
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    cmpwi 0, 0x3
    .4byte 0x4182006C # beq .L_80310A54
    .4byte 0x4080001C # bge .L_80310A08
    cmpwi 0, 0x1
    .4byte 0x41820038 # beq .L_80310A2C
    .4byte 0x40800048 # bge .L_80310A40
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80310A18
    .4byte 0x48000084 # b .L_80310A88
L_80310A08:
    cmpwi 0, 0x5
    .4byte 0x4182007C # beq .L_80310A88
    .4byte 0x40800078 # bge .L_80310A88
    .4byte 0x4800005C # b .L_80310A70
L_80310A18:
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    stw 0, 0x250(31)
    stw 3, 0x254(31)
    .4byte 0x48000060 # b .L_80310A88
L_80310A2C:
    lwz 3, 0x254(31)
    lwz 0, 0x258(31)
    stw 0, 0x254(31)
    stw 3, 0x258(31)
    .4byte 0x4800004C # b .L_80310A88
L_80310A40:
    lwz 3, 0x250(31)
    lwz 0, 0x258(31)
    stw 0, 0x250(31)
    stw 3, 0x258(31)
    .4byte 0x48000038 # b .L_80310A88
L_80310A54:
    lwz 3, 0x250(31)
    lwz 0, 0x254(31)
    stw 0, 0x250(31)
    lwz 0, 0x258(31)
    stw 0, 0x254(31)
    stw 3, 0x258(31)
    .4byte 0x4800001C # b .L_80310A88
L_80310A70:
    lwz 3, 0x250(31)
    lwz 0, 0x258(31)
    stw 0, 0x250(31)
    lwz 0, 0x254(31)
    stw 0, 0x258(31)
    stw 3, 0x254(31)
L_80310A88:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80310A9C:
    .4byte 0xC022E7F0 # lfs f1, lbl_80541790@sda21(r0)
    li 4, 0x0
    .4byte 0xC002E7F4 # lfs f0, lbl_80541794@sda21(r0)
    li 0, -0x1
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 4, 0x230(3)
    stw 4, 0x234(3)
    stw 0, 0x248(3)
    lwz 0, 0x90(3)
    srwi 0, 0, 31
    stw 0, 0x264(3)
    lwz 0, 0x264(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80310AEC
    li 0, 0x12c
    stw 0, 0x260(3)
    .4byte 0x4800000C # b .L_80310AF4
L_80310AEC:
    li 0, 0x64
    stw 0, 0x260(3)
L_80310AF4:
    li 6, 0x0
    li 5, -0x1
    stw 6, 0x24c(3)
    stw 5, 0x250(3)
    stw 5, 0x254(3)
    stw 5, 0x258(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x26c(3)
    lwz 0, 0x90(3)
    lwz 4, 0x26c(3)
    extrwi 0, 0, 4, 24
    add 0, 4, 0
    stw 0, 0x270(3)
    lwz 0, 0x90(3)
    lwz 4, 0x270(3)
    extrwi 0, 0, 4, 20
    add 0, 4, 0
    stw 0, 0x274(3)
    stw 5, 0x25c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 4
    stw 0, 0x268(3)
    stw 6, 0x278(3)
    stw 6, 0x27c(3)
    stw 6, 0x280(3)
    stw 6, 0x284(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_80310B9C
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x118(4)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80310B9C
    lwz 0, 0x11c(4)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80310B9C
    li 0, 0x1
    stb 0, 0x288(3)
    .4byte 0x4800000C # b .L_80310BA4
L_80310B9C:
    li 0, 0x0
    stb 0, 0x288(3)
L_80310BA4:
    li 0, 0x2
    li 4, 0x14
    stw 0, 0x238(3)
    li 0, 0x0
    stw 4, 0x23c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    blr

fn_80310BC4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80507AF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80507AF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310C14
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
L_80310C14:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310C4C
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
L_80310C4C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310C84
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
L_80310C84:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310CBC
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
L_80310CBC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310CF4
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
L_80310CF4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310D2C
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
L_80310D2C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310D64
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
L_80310D64:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310D9C
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
L_80310D9C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80310DD4
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
L_80310DD4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80310DE8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80310E2C
    lis 5, lbl_804AAAE8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AAAE8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80310E2C
    mr 3, 30
    bl dtor_80084580
L_80310E2C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80310E48:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    li 7, 0x10
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 4, 31, 0xc
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 6, 0x4(31)
    bl fn_802A3948
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80310E98:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_80310F18
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x10
    bl fn_802A3948
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x76
    li 5, 0x0
    bl fn_801F0E34
    lfs 0, 0xc(31)
    li 4, 0x0
    li 3, 0x5a
    li 0, 0x2
    stfs 0, 0x248(31)
    lfs 0, 0x10(31)
    stfs 0, 0x24c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x250(31)
    stb 4, 0x254(31)
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_80310F3C
L_80310F18:
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_80310F3C
    lwz 3, 0x234(31)
    li 4, 0x0
    bl fn_8023061C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_80310F3C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80310F50:
    stwu 1, -0x20(1)
    mflr 0
    li 7, 0x30
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    li 5, 0x0
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    addi 4, 28, 0xc
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 6, 0x4(28)
    bl fn_802A3884
    stw 29, 0x234(28)
    li 0, 0x1
    stw 30, 0x238(28)
    stw 31, 0x23c(28)
    stw 0, 0x230(28)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80310FC8:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    mr 30, 3
    lis 3, lbl_80471438@ha
    lwz 0, 0x230(30)
    addi 31, 3, lbl_80471438@l
    cmpwi 0, 0x2
    .4byte 0x4180020C # blt .L_803111FC
    psq_l 1, 0xc(30), 0, 0
    li 0, -0x1
    lfs 0, 0x14(30)
    addi 9, 1, 0x4c
    psq_l 3, 0x248(30), 0, 0
    li 10, 0x0
    lfs 2, 0x250(30)
    psq_st 1, 0x10(1), 0, 0
    psq_st 3, 0xc(30), 0, 0
    stfs 2, 0x14(30)
    stfs 0, 0x18(1)
    stw 0, 0x5c(1)
    stw 0, 0x60(1)
    .4byte 0x48000064 # b .L_8031108C
L_8031102C:
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
L_8031108C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8031102C
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x68(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stb 5, 0x69(1)
    stb 4, 0x6b(1)
    stw 6, 0x5c(1)
    stw 5, 0x60(1)
    stw 5, 0x64(1)
    stb 5, 0x6a(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stb 5, 0x6f(1)
    stb 5, 0x70(1)
    stb 5, 0x71(1)
    stb 4, 0x72(1)
    stw 3, 0x74(1)
    stb 4, 0x78(1)
    stb 5, 0x79(1)
    stb 5, 0x7a(1)
    stw 6, 0x7c(1)
    stw 5, 0x80(1)
    stw 0, 0x84(1)
    stb 4, 0x69(1)
    stb 4, 0x68(1)
    stb 5, 0x6b(1)
    lwz 0, 0x238(30)
    cmpwi 0, 0x4
    .4byte 0x40820074 # bne .L_80311188
    .4byte 0xC022E7F8 # lfs f1, lbl_80541798@sda21(r0)
    addi 3, 1, 0x1c
    fmr 2, 1
    fmr 3, 1
    bl PSMTXScale
    .4byte 0xC022E7FC # lfs f1, lbl_8054179C@sda21(r0)
    addi 0, 1, 0x1c
    stw 0, 0x64(1)
    mr 3, 30
    fmr 2, 1
    addi 4, 31, 0x28
    addi 6, 1, 0x4c
    li 5, 0x45a
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    li 6, 0x11
    li 7, 0x1
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    bl fn_803075AC
    .4byte 0x48000068 # b .L_803111EC
L_80311188:
    .4byte 0xC022E7FC # lfs f1, lbl_8054179C@sda21(r0)
    slwi 0, 0, 2
    addi 4, 31, 0x14
    mr 3, 30
    fmr 2, 1
    lwzx 5, 4, 0
    addi 4, 31, 0x3c
    addi 6, 1, 0x4c
    li 7, -0x1
    bl fn_801F06F0
    li 0, 0x0
    addi 6, 31, 0x14
    stw 0, 0x8(1)
    addi 5, 30, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 0, 0x238(30)
    lwz 3, 0x198(30)
    slwi 0, 0, 2
    lwz 4, 0x4(30)
    lwzx 6, 6, 0
    bl fn_803075AC
L_803111EC:
    psq_l 1, 0x10(1), 0, 0
    lfs 0, 0x18(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
L_803111FC:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80311214:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x418201DC # beq .L_80311410
    .4byte 0x408002B4 # bge .L_803114EC
    cmpwi 0, 0x0
    .4byte 0x418202AC # beq .L_803114EC
    .4byte 0x4080000C # bge .L_80311250
    .4byte 0x480002A4 # b .L_803114EC
    .4byte 0x480002A0 # b .L_803114EC
L_80311250:
    lfs 1, 0x60(31)
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 3, 0x234(31)
    bl fn_8022EA0C
    lwz 4, 0x4(31)
    mr 30, 3
    .4byte 0xC022E800 # lfs f1, lbl_805417A0@sda21(r0)
    addi 3, 1, 0x14
    li 5, 0x0
    bl fn_8023AF14
    cmpw 30, 3
    .4byte 0x40820230 # bne .L_803114EC
    mr 3, 30
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x40820220 # bne .L_803114EC
    mr 3, 30
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x40820210 # bne .L_803114EC
    mr 3, 30
    bl fn_8022F340
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x418201EC # beq .L_803114EC
    mr 3, 30
    bl fn_802300EC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201D8 # bne .L_803114EC
    stw 30, 0x234(31)
    lwz 3, 0x234(31)
    bl fn_802308E0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0xc
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x10
    bl fn_802A3948
    lis 4, 0x2
    lwz 3, 0x234(31)
    addi 4, 4, 0x13
    bl fn_80230FD0
    bl SpatialRegistry_GetBase
    lwz 4, 0x23c(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80311378
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474d
    cmplwi 0, 0x424c
    .4byte 0x4082000C # bne .L_80311378
    lwz 4, 0x238(31)
    bl fn_8030FDC0
L_80311378:
    lwz 3, 0x234(31)
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    addi 4, 1, 0x8
    lfs 3, 0x8(3)
    li 3, 0x0
    .4byte 0xC022E804 # lfs f1, lbl_805417A4@sda21(r0)
    li 0, 0x1
    psq_st 0, 0x0(4), 0, 0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    lfs 2, 0xc(1)
    li 9, 0x1
    stfs 3, 0x10(1)
    lfs 0, 0x8(1)
    fsubs 1, 2, 1
    stfs 0, 0x248(31)
    stfs 1, 0x24c(31)
    stfs 3, 0x250(31)
    stw 3, 0x244(31)
    stb 0, 0x254(31)
    lwz 5, 0x244(31)
    lwz 3, 0x234(31)
    addi 5, 5, 0xed
    bl fn_80230498
    lwz 0, 0x238(31)
    lis 3, lbl_80471438@ha
    addi 4, 3, lbl_80471438@l
    lwz 3, 0x234(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_802362C4
    li 3, 0x5a
    li 0, 0x2
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x480000E0 # b .L_803114EC
L_80311410:
    lwz 0, 0x240(31)
    cmpwi 0, 0x4c
    .4byte 0x41820074 # beq .L_8031148C
    .4byte 0x4080001C # bge .L_80311438
    cmpwi 0, 0x48
    .4byte 0x4182004C # beq .L_80311470
    .4byte 0x408000B8 # bge .L_803114E0
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80311444
    .4byte 0x480000AC # b .L_803114E0
L_80311438:
    cmpwi 0, 0x50
    .4byte 0x41820050 # beq .L_8031148C
    .4byte 0x480000A0 # b .L_803114E0
L_80311444:
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8031145C
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000094 # b .L_803114EC
L_8031145C:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000080 # b .L_803114EC
L_80311470:
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8031148C
    lis 4, 0x1
    lwz 3, 0x234(31)
    addi 4, 4, 0x8
    bl fn_80230FD0
L_8031148C:
    lfs 1, 0x24c(31)
    .4byte 0xC002E808 # lfs f0, lbl_805417A8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x24c(31)
    lbz 0, 0x254(31)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_803114E0
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 3, 0x234(31)
    bl fn_8023E724
    lwz 5, 0x244(31)
    mr 4, 3
    lwz 3, 0x234(31)
    li 6, 0xff
    addi 5, 5, 0xed
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_803114E0:
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_803114EC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80311504:
    lfs 1, 0xc(3)
    li 4, 0x0
    .4byte 0xC002E80C # lfs f0, lbl_805417AC@sda21(r0)
    li 0, -0x1
    .4byte 0xC062E804 # lfs f3, lbl_805417A4@sda21(r0)
    fadds 4, 1, 0
    .4byte 0xC042E810 # lfs f2, lbl_805417B0@sda21(r0)
    .4byte 0xC022E800 # lfs f1, lbl_805417A0@sda21(r0)
    .4byte 0xC002E814 # lfs f0, lbl_805417B4@sda21(r0)
    stfs 4, 0xc(3)
    lfs 4, 0x10(3)
    fadds 3, 4, 3
    stfs 3, 0x10(3)
    stfs 2, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stw 4, 0x230(3)
    stw 0, 0x234(3)
    stw 4, 0x238(3)
    stw 0, 0x23c(3)
    stw 4, 0x240(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x248(3), 0, 0
    stfs 0, 0x250(3)
    stb 4, 0x254(3)
    stw 4, 0x244(3)
    blr

fn_80311578:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80507BF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80507BF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803115C8
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
L_803115C8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80311600
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
L_80311600:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80311638
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
L_80311638:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80311670
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
L_80311670:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803116A8
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
L_803116A8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803116E0
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
L_803116E0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80311718
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
L_80311718:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80311750
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
L_80311750:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80311788
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
L_80311788:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8031179C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
L_803117BC:
    mr 3, 31
    addi 4, 30, 0x230
    addi 6, 1, 0x8
    li 5, 0x0
    bl fn_8023A97C
    clrlwi. 0, 3, 24
    .4byte 0x4182045C # beq .L_80311C30
    addi 3, 1, 0x8
    li 4, 0x0
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x1b0
    .4byte 0x40820444 # bne .L_80311C30
    lbz 0, 0x259(30)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80311844
    lwz 29, 0x250(30)
    cmpw 29, 29
    .4byte 0x41820028 # beq .L_8031182C
    mr 3, 29
    mr 4, 29
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820418 # beq .L_80311C30
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820408 # bne .L_80311C30
L_8031182C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 29
    li 4, 0x826
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x480003F0 # b .L_80311C30
L_80311844:
    lfs 1, 0x8(1)
    bl __cvt_fp2unsigned
    lfs 0, 0x240(30)
    clrrwi 3, 3, 4
    addi 3, 3, 0x8
    lfs 1, 0xc(1)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    subf 29, 0, 3
    bl __cvt_fp2unsigned
    lfs 0, 0x244(30)
    clrrwi 3, 3, 4
    addi 3, 3, 0x8
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    subf 0, 0, 3
    cmpwi 0, -0x30
    .4byte 0x40800048 # bge .L_803118D8
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_803118C0
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820384 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820374 # bne .L_80311C30
L_803118C0:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x825
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x4800035C # b .L_80311C30
L_803118D8:
    cmpwi 0, 0x30
    .4byte 0x40810048 # ble .L_80311924
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_8031190C
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820338 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820328 # bne .L_80311C30
L_8031190C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x826
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000310 # b .L_80311C30
L_80311924:
    cmpwi 29, -0x30
    .4byte 0x40800048 # bge .L_80311970
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311958
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x418202EC # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x408202DC # bne .L_80311C30
L_80311958:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x827
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x480002C4 # b .L_80311C30
L_80311970:
    cmpwi 29, 0x30
    .4byte 0x40810048 # ble .L_803119BC
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_803119A4
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x418202A0 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820290 # bne .L_80311C30
L_803119A4:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x828
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000278 # b .L_80311C30
L_803119BC:
    cmpwi 0, -0x10
    .4byte 0x40800048 # bge .L_80311A08
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_803119F0
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820254 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820244 # bne .L_80311C30
L_803119F0:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x829
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x4800022C # b .L_80311C30
L_80311A08:
    cmpwi 0, 0x10
    .4byte 0x40810048 # ble .L_80311A54
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311A3C
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820208 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x408201F8 # bne .L_80311C30
L_80311A3C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x82a
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x480001E0 # b .L_80311C30
L_80311A54:
    cmpwi 29, -0x10
    .4byte 0x40800048 # bge .L_80311AA0
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311A88
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x418201BC # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x408201AC # bne .L_80311C30
L_80311A88:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x82b
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000194 # b .L_80311C30
L_80311AA0:
    cmpwi 29, 0x10
    .4byte 0x40810048 # ble .L_80311AEC
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311AD4
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820170 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820160 # bne .L_80311C30
L_80311AD4:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x82c
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000148 # b .L_80311C30
L_80311AEC:
    cmpwi 0, -0x8
    .4byte 0x40800048 # bge .L_80311B38
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311B20
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820124 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820114 # bne .L_80311C30
L_80311B20:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x82d
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x480000FC # b .L_80311C30
L_80311B38:
    cmpwi 0, 0x8
    .4byte 0x40810048 # ble .L_80311B84
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311B6C
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x418200D8 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x408200C8 # bne .L_80311C30
L_80311B6C:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x82e
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x480000B0 # b .L_80311C30
L_80311B84:
    cmpwi 29, -0x8
    .4byte 0x40800048 # bge .L_80311BD0
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311BB8
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082007C # bne .L_80311C30
L_80311BB8:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x82f
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000064 # b .L_80311C30
L_80311BD0:
    cmpwi 29, 0x8
    .4byte 0x40810048 # ble .L_80311C1C
    lwz 4, 0x250(30)
    cmpw 31, 4
    .4byte 0x41820024 # beq .L_80311C04
    mr 3, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80311C30
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820030 # bne .L_80311C30
L_80311C04:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 5, 31
    li 4, 0x830
    li 6, 0x0
    bl fn_8043D67C
    .4byte 0x48000018 # b .L_80311C30
L_80311C1C:
    bl GetRoomConfigRecord
    li 4, 0x14
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80311C30:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FB84 # blt .L_803117BC
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80311C58:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022E824 # lfs f1, lbl_805417C4@sda21(r0)
    lis 4, lbl_80471488@ha
    stw 0, 0x24(1)
    addi 4, 4, lbl_80471488@l
    fmr 2, 1
    li 5, 0x386
    stw 31, 0x1c(1)
    mr 31, 3
    li 6, 0x0
    li 7, 0x0
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 6, 0x386
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

fn_80311CD0:
    stwu 1, -0x120(1)
    mflr 0
    stw 0, 0x124(1)
    stfd 31, 0x110(1)
    psq_st 31, 0x118(1), 0, 0
    stfd 30, 0x100(1)
    psq_st 30, 0x108(1), 0, 0
    stfd 29, 0xf0(1)
    psq_st 29, 0xf8(1), 0, 0
    stfd 28, 0xe0(1)
    psq_st 28, 0xe8(1), 0, 0
    stfd 27, 0xd0(1)
    psq_st 27, 0xd8(1), 0, 0
    stfd 26, 0xc0(1)
    psq_st 26, 0xc8(1), 0, 0
    stfd 25, 0xb0(1)
    psq_st 25, 0xb8(1), 0, 0
    stfd 24, 0xa0(1)
    psq_st 24, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    stw 29, 0x94(1)
    stw 28, 0x90(1)
    mr 31, 3
    addi 3, 1, 0x64
    lfs 1, 0x60(31)
    stfs 1, 0x64(1)
    lfs 4, 0x64(31)
    stfs 4, 0x68(1)
    lfs 2, 0x68(31)
    stfs 2, 0x6c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x70(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x64(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x6c(1)
    fadds 0, 3, 2
    stfs 1, 0x68(1)
    stfs 0, 0x70(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 0, 0x24c(31)
    cmpwi 0, 0x2
    .4byte 0x4182036C # beq .L_803120FC
    .4byte 0x40800014 # bge .L_80311DA8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80311DB4
    .4byte 0x408002F4 # bge .L_80312094
    .4byte 0x480004F4 # b .L_80312298
L_80311DA8:
    cmpwi 0, 0x4
    .4byte 0x408004EC # bge .L_80312298
    .4byte 0x480004A8 # b .L_80312258
L_80311DB4:
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 29, 3
    .4byte 0x418004C0 # blt .L_80312298
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418204B4 # beq .L_80312298
    bl GetRoomConfigRecord
    li 4, 0x14
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_80311E40
    lwz 5, 0x198(31)
    addi 7, 1, 0x58
    lwz 6, 0x4(31)
    mr 3, 29
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x834
    lfs 0, 0x14(31)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x60(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x4182046C # beq .L_80312298
    stw 29, 0x254(31)
    li 0, 0x3
    stw 0, 0x24c(31)
    .4byte 0x4800045C # b .L_80312298
L_80311E40:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    lfs 27, 0x230(31)
    lwz 0, 0xb4(4)
    li 30, 0x0
    .4byte 0xC022E818 # lfs f1, lbl_805417B8@sda21(r0)
    mullw 3, 0, 5
    lfs 26, 0x234(31)
    .4byte 0xC002E81C # lfs f0, lbl_805417BC@sda21(r0)
    fadds 27, 27, 1
    lfs 25, 0x238(31)
    lfs 24, 0x23c(31)
    addis 3, 3, 0x3c6f
    .4byte 0xC042E824 # lfs f2, lbl_805417C4@sda21(r0)
    subi 0, 3, 0xca1
    fadds 26, 26, 0
    stw 0, 0xb4(4)
    fsubs 25, 25, 0
    .4byte 0xC062E820 # lfs f3, lbl_805417C0@sda21(r0)
    fsubs 24, 24, 0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    .4byte 0xC022E828 # lfs f1, lbl_805417C8@sda21(r0)
    mullw 3, 0, 5
    .4byte 0xC3C2E82C # lfs f30, lbl_805417CC@sda21(r0)
    oris 0, 4, 0x3f80
    .4byte 0xC3E2E830 # lfs f31, lbl_805417D0@sda21(r0)
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    addis 3, 3, 0x3c6f
    fsubs 0, 0, 2
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    fmadds 28, 3, 0, 27
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmadds 29, 1, 0, 26
L_80311EF0:
    li 28, 0x0
L_80311EF4:
    stfs 28, 0x1c(1)
    addi 3, 1, 0x1c
    li 4, 0x0
    stfs 29, 0x20(1)
    stfs 30, 0x24(1)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x1b0
    .4byte 0x408200AC # bne .L_80311FC0
    lfs 1, 0x1c(1)
    bl __cvt_fp2unsigned
    clrrwi 3, 3, 4
    lis 0, 0x4330
    stw 3, 0x7c(1)
    .4byte 0xC842E838 # lfd f2, lbl_805417D8@sda21(r0)
    stw 0, 0x78(1)
    lfs 1, 0x20(1)
    lfd 0, 0x78(1)
    fsubs 0, 0, 2
    stfs 0, 0x1c(1)
    bl __cvt_fp2unsigned
    clrrwi 3, 3, 4
    lis 0, 0x4330
    stw 3, 0x84(1)
    .4byte 0xC842E838 # lfd f2, lbl_805417D8@sda21(r0)
    stw 0, 0x80(1)
    lfs 0, 0x1c(1)
    lfd 1, 0x80(1)
    fsubs 1, 1, 2
    stfs 1, 0x20(1)
    stfs 0, 0x240(31)
    lfs 0, 0x20(1)
    stfs 0, 0x244(31)
    lfs 0, 0x24(1)
    stfs 0, 0x248(31)
    psq_l 1, 0x1c(1), 0, 0
    lfs 0, 0x24(1)
    psq_st 1, 0x28(1), 0, 0
    stfs 0, 0x30(1)
    psq_st 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    bl GetRoomConfigRecord
    lfs 0, 0x10(1)
    addis 3, 3, 0x1
    lfs 1, 0x14(1)
    li 0, 0x1
    stfs 0, 0x3280(3)
    lfs 0, 0x18(1)
    stfs 1, 0x3284(3)
    stfs 0, 0x3288(3)
    .4byte 0x48000048 # b .L_80312004
L_80311FC0:
    fadds 28, 28, 31
    fcmpo cr0, 28, 25
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80311FD4
    fmr 28, 27
L_80311FD4:
    addi 28, 28, 0x1
    cmpwi 28, 0x1a
    .4byte 0x4180FF18 # blt .L_80311EF4
    fadds 29, 29, 31
    fcmpo cr0, 29, 24
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80311FF4
    fmr 29, 26
L_80311FF4:
    addi 30, 30, 0x1
    cmpwi 30, 0x14
    .4byte 0x4180FEF4 # blt .L_80311EF0
    li 0, 0x0
L_80312004:
    clrlwi. 0, 0, 24
    .4byte 0x40820048 # bne .L_80312050
    lwz 5, 0x198(31)
    addi 7, 1, 0x4c
    lwz 6, 0x4(31)
    mr 3, 29
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x84f
    lfs 0, 0x14(31)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x54(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x4182025C # beq .L_80312298
    stw 29, 0x254(31)
    li 0, 0x3
    stw 0, 0x24c(31)
    .4byte 0x4800024C # b .L_80312298
L_80312050:
    lwz 5, 0x198(31)
    addi 7, 1, 0x40
    lwz 6, 0x4(31)
    mr 3, 29
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x835
    lfs 0, 0x14(31)
    li 8, 0x8
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x48(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820218 # beq .L_80312298
    stw 29, 0x250(31)
    li 0, 0x1
    stw 0, 0x24c(31)
    .4byte 0x48000208 # b .L_80312298
L_80312094:
    lwz 3, 0x250(31)
    addi 4, 1, 0x64
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x250(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418201D8 # beq .L_80312298
    lfs 0, 0x240(31)
    li 4, 0x0
    .4byte 0xC022E840 # lfs f1, lbl_805417E0@sda21(r0)
    li 3, 0x1
    li 0, 0x2
    fadds 0, 0, 1
    stfs 0, 0x240(31)
    lfs 0, 0x244(31)
    fadds 0, 0, 1
    stfs 0, 0x244(31)
    stb 4, 0x258(31)
    stb 3, 0x259(31)
    stw 0, 0x24c(31)
    .4byte 0x480001A0 # b .L_80312298
L_803120FC:
    bl GetRoomConfigRecord
    li 4, 0x14
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8031211C
    mr 3, 31
    bl fn_8031179C
    .4byte 0x48000040 # b .L_80312158
L_8031211C:
    lbz 0, 0x25a(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80312158
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0x240
    li 5, 0x0
    li 6, 0x0
    li 7, 0x7a
    bl fn_802A3948
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3
    li 5, -0x1
    bl fn_80458880
    li 0, 0x1
    stb 0, 0x25a(31)
L_80312158:
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x408200B4 # bne .L_80312214
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 28, 3
    .4byte 0x41800110 # blt .L_80312298
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820104 # beq .L_80312298
    lwz 4, 0x250(31)
    mr 3, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_803121D0
    bl GetRoomConfigRecord
    li 4, 0x14
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803121C8
    li 4, 0x834
    .4byte 0x48000010 # b .L_803121D4
L_803121C8:
    li 4, 0x832
    .4byte 0x48000008 # b .L_803121D4
L_803121D0:
    li 4, 0x833
L_803121D4:
    lwz 5, 0x198(31)
    addi 7, 1, 0x34
    lwz 6, 0x4(31)
    mr 3, 28
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x8
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x3c(1)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_80312298
    stw 28, 0x254(31)
    li 0, 0x1
    stb 0, 0x258(31)
    .4byte 0x48000088 # b .L_80312298
L_80312214:
    lwz 3, 0x254(31)
    addi 4, 1, 0x64
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_80312298
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x254(31)
    stb 0, 0x258(31)
    .4byte 0x48000044 # b .L_80312298
L_80312258:
    lwz 3, 0x254(31)
    addi 4, 1, 0x64
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80312298
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x254(31)
    stw 0, 0x24c(31)
L_80312298:
    psq_l 31, 0x118(1), 0, 0
    lfd 31, 0x110(1)
    psq_l 30, 0x108(1), 0, 0
    lfd 30, 0x100(1)
    psq_l 29, 0xf8(1), 0, 0
    lfd 29, 0xf0(1)
    psq_l 28, 0xe8(1), 0, 0
    lfd 28, 0xe0(1)
    psq_l 27, 0xd8(1), 0, 0
    lfd 27, 0xd0(1)
    psq_l 26, 0xc8(1), 0, 0
    lfd 26, 0xc0(1)
    psq_l 25, 0xb8(1), 0, 0
    lfd 25, 0xb0(1)
    psq_l 24, 0xa8(1), 0, 0
    lfd 24, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    lwz 0, 0x124(1)
    lwz 28, 0x90(1)
    mtlr 0
    addi 1, 1, 0x120
    blr

fn_803122F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8031233C
    lis 5, lbl_804AAB40@ha
    li 4, 0x0
    addi 0, 5, lbl_804AAB40@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8031233C
    mr 3, 30
    bl dtor_80084580
L_8031233C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80312358:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022E844 # lfs f1, lbl_805417E4@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC002E840 # lfs f0, lbl_805417E0@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    bl GetRoomConfigRecord
    lwz 6, 0xcc(3)
    li 4, 0x0
    lwz 5, 0xd0(3)
    li 0, -0x1
    stw 6, 0x230(31)
    stw 5, 0x234(31)
    lwz 5, 0xd4(3)
    lwz 3, 0xd8(3)
    stw 5, 0x238(31)
    stw 3, 0x23c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x240(31)
    lfs 0, 0x10(31)
    stfs 0, 0x244(31)
    lfs 0, 0x14(31)
    stfs 0, 0x248(31)
    stw 4, 0x24c(31)
    stw 0, 0x250(31)
    stw 0, 0x254(31)
    stb 4, 0x258(31)
    stb 4, 0x259(31)
    stb 4, 0x25a(31)
    bl GetRoomConfigRecord
    li 4, 0x14
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8031241C
    bl GetRoomConfigRecord
    mr 4, 3
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addis 4, 4, 0x1
    li 5, 0x0
    li 6, 0x0
    li 7, 0x7a
    addi 4, 4, 0x3280
    bl fn_802A3948
    .4byte 0x48000018 # b .L_80312430
L_8031241C:
    bl GetRoomConfigRecord
    li 4, 0x15
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_80312430:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80312444:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80507CF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80507CF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80312494
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
L_80312494:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803124CC
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
L_803124CC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80312504
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
L_80312504:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031253C
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
L_8031253C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80312574
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
L_80312574:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803125AC
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
L_803125AC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803125E4
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
L_803125E4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8031261C
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
L_8031261C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80312654
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
L_80312654:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80312668:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_803126AC
    lis 5, lbl_804AABA8@ha
    li 4, 0x0
    addi 0, 5, lbl_804AABA8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803126AC
    mr 3, 30
    bl dtor_80084580
L_803126AC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803126C8:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80312758
L_803126F8:
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
L_80312758:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803126F8
    li 4, 0x1
    li 5, 0x0
    stb 4, 0x27(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    stb 5, 0x27(1)
    lwz 3, 0x230(31)
    cmpwi 3, 0x6
    .4byte 0x418000A8 # blt .L_80312880
    cmpwi 3, 0xd
    .4byte 0x408000A0 # bge .L_80312880
    lfs 2, 0x14(31)
    lfs 1, 0x44(31)
    .4byte 0xC002E848 # lfs f0, lbl_805417E8@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x14(31)
    lfs 2, 0x44(31)
    lfs 1, 0x284(31)
    fadds 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820014 # beq .L_80312828
    .4byte 0xC002E84C # lfs f0, lbl_805417EC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_80312834
L_80312828:
    lfs 0, 0x284(31)
    fneg 0, 0
    stfs 0, 0x284(31)
L_80312834:
    lbz 3, 0x28c(31)
    li 5, 0x1
    li 0, 0x0
    .4byte 0xC022E850 # lfs f1, lbl_805417F0@sda21(r0)
    stb 3, 0x1b(1)
    lis 3, lbl_804714C0@ha
    addi 4, 3, lbl_804714C0@l
    fmr 2, 1
    stb 5, 0x24(1)
    mr 3, 31
    addi 6, 1, 0x8
    li 7, -0x1
    stb 5, 0x25(1)
    stb 0, 0x28(1)
    stb 5, 0x35(1)
    lwz 5, 0x234(31)
    addi 5, 5, 0x27b
    bl fn_801F06F0
    .4byte 0x48000118 # b .L_80312994
L_80312880:
    cmpwi 3, 0xd
    .4byte 0x41800110 # blt .L_80312994
    lbz 0, 0x27c(31)
    cmplwi 0, 0x1
    .4byte 0x40820104 # bne .L_80312994
    cmpwi 3, 0xe
    .4byte 0x4180000C # blt .L_803128A4
    cmpwi 3, 0x10
    .4byte 0x41800018 # blt .L_803128B8
L_803128A4:
    cmpwi 3, 0x10
    .4byte 0x4082009C # bne .L_80312944
    lwz 0, 0x238(31)
    cmpwi 0, 0x3c
    .4byte 0x40810090 # ble .L_80312944
L_803128B8:
    lfs 2, 0x14(31)
    lfs 1, 0x44(31)
    .4byte 0xC002E854 # lfs f0, lbl_805417F4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x14(31)
    lfs 2, 0x44(31)
    lfs 1, 0x284(31)
    fadds 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x44(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820014 # beq .L_803128FC
    .4byte 0xC002E858 # lfs f0, lbl_805417F8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_80312908
L_803128FC:
    lfs 0, 0x284(31)
    fneg 0, 0
    stfs 0, 0x284(31)
L_80312908:
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_80312944
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80312944
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x4082000C # bne .L_80312944
    lfs 1, 0x14(31)
    bl Gnef_QueryCueState
L_80312944:
    lwz 0, 0x230(31)
    cmpwi 0, 0x14
    .4byte 0x40800014 # bge .L_80312960
    li 0, 0x0
    li 7, 0x7
    stb 0, 0x28(1)
    .4byte 0x48000014 # b .L_80312970
L_80312960:
    li 0, 0x1
    li 7, -0x1
    stb 0, 0x25(1)
    stb 0, 0x24(1)
L_80312970:
    .4byte 0xC022E850 # lfs f1, lbl_805417F0@sda21(r0)
    lis 3, lbl_804714C0@ha
    lwz 5, 0x234(31)
    addi 4, 3, lbl_804714C0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x27f
    addi 6, 1, 0x8
    bl fn_801F06F0
L_80312994:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803129AC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmplwi 0, 0x16
    .4byte 0x41810BF8 # bgt .L_803135D0
    lis 3, jumptable_804AABFC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AABFC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl GetRoomConfigRecord
    lwz 4, 0x23c(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820BCC # beq .L_803135D0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_80312A34
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    .4byte 0x48000BA0 # b .L_803135D0
L_80312A34:
    lfs 0, 0x25c(31)
    li 30, 0x1
    .4byte 0xC3E2E85C # lfs f31, lbl_805417FC@sda21(r0)
    li 29, 0x0
    stfs 0, 0x20(1)
    lfs 0, 0x260(31)
    stfs 0, 0x24(1)
    lfs 0, 0x264(31)
    stfs 0, 0x28(1)
L_80312A58:
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_80312A6C
    li 30, 0x0
L_80312A6C:
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408200C0 # bne .L_80312B38
    mr 3, 29
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x408200B0 # bne .L_80312B38
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x0
    .4byte 0x41820050 # beq .L_80312AE8
    mr 3, 29
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    mr 3, 29
    bl fn_80230C6C
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_80312B38
    mr 3, 29
    bl fn_8023E724
    mr 5, 3
    mr 3, 29
    addi 6, 1, 0x20
    li 4, 0x0
    li 7, 0x1f
    bl fn_802317F0
    .4byte 0x48000054 # b .L_80312B38
L_80312AE8:
    mr 3, 29
    bl fn_8023188C
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80312B38
    mr 3, 29
    bl fn_80230C6C
    mr 3, 29
    li 4, 0x3
    bl fn_80230BF4
    mr 3, 29
    bl fn_80230AD4
    mr 3, 29
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
    li 0, 0x1
    lwz 3, 0x240(31)
    slw 0, 0, 29
    or 0, 3, 0
    stw 0, 0x240(31)
L_80312B38:
    lfs 0, 0x20(1)
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    fadds 0, 0, 31
    stfs 0, 0x20(1)
    .4byte 0x4180FF0C # blt .L_80312A58
    lbz 0, 0x27e(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_80312BAC
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_80312BAC
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_80312BA4
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 4, 0x8(3)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_80312BA4
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x4082000C # bne .L_80312BA4
    li 0, 0x1
    stb 0, 0x276(4)
L_80312BA4:
    li 0, 0x1
    stb 0, 0x27e(31)
L_80312BAC:
    lwz 0, 0x240(31)
    cmpwi 0, 0xf
    .4byte 0x40820A1C # bne .L_803135D0
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    li 3, 0x2
    li 0, 0x96
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x48000A00 # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x418109E8 # bgt .L_803135D0
    lfs 0, 0x25c(31)
    lis 3, lbl_804AAB98@ha
    addi 3, 3, lbl_804AAB98@l
    stfs 0, 0x20(1)
    lfs 0, 0x260(31)
    stfs 0, 0x24(1)
    lfs 0, 0x264(31)
    stfs 0, 0x28(1)
    lwz 0, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x244(31)
    lwz 3, 0x244(31)
    bl fn_8022EA0C
    stw 3, 0x248(31)
    addi 4, 1, 0x20
    .4byte 0xC042E860 # lfs f2, lbl_80541800@sda21(r0)
    li 5, 0x3f
    lfs 3, 0x20(1)
    li 6, 0xff
    lfs 1, 0x24(1)
    li 7, -0x80
    .4byte 0xC002E864 # lfs f0, lbl_80541804@sda21(r0)
    fadds 2, 3, 2
    li 8, -0x80
    li 9, 0x1
    fsubs 0, 1, 0
    stfs 2, 0x20(1)
    stfs 0, 0x24(1)
    lwz 3, 0x244(31)
    bl fn_80230498
    lwz 3, 0x244(31)
    li 4, 0x3
    bl fn_80230BF4
    li 29, 0x0
L_80312C78:
    lwz 4, 0x244(31)
    cmpw 29, 4
    .4byte 0x41820060 # beq .L_80312CE0
    mr 3, 29
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_80312CE0
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    addi 4, 1, 0x20
    .4byte 0xC002E868 # lfs f0, lbl_80541808@sda21(r0)
    li 5, 0x3f
    stfs 1, 0x20(1)
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    lfs 1, 0x4(3)
    li 9, 0x1
    stfs 1, 0x24(1)
    fadds 0, 1, 0
    lfs 1, 0x8(3)
    mr 3, 29
    stfs 1, 0x28(1)
    stfs 0, 0x24(1)
    bl fn_80230498
L_80312CE0:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF90 # blt .L_80312C78
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 4, 0x1a
    bl fn_8029D898
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_8045815C
    li 3, 0x3
    li 0, 0xa
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x480008BC # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x418108A4 # bgt .L_803135D0
    li 0, 0x48
    stw 0, 0x238(31)
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800088C # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 3, 0x244(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC002E86C # lfs f0, lbl_8054180C@sda21(r0)
    stfs 1, 0x20(1)
    lfs 1, 0x4(3)
    stfs 1, 0x24(1)
    fsubs 0, 1, 0
    lfs 1, 0x8(3)
    stfs 1, 0x28(1)
    stfs 0, 0x24(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810028 # bgt .L_80312DB0
    lwz 3, 0x244(31)
    addi 4, 1, 0x20
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000014 # b .L_80312DC0
L_80312DB0:
    lwz 3, 0x244(31)
    addi 4, 1, 0x20
    li 5, 0xff
    bl fn_802303FC
L_80312DC0:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810808 # bgt .L_803135D0
    li 3, 0x5
    li 0, 0x3c
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    lbz 0, 0xc(3)
    sth 0, 0x282(31)
    sth 0, 0x280(31)
    .4byte 0x480007E0 # b .L_803135D0
    lbz 3, 0x28c(31)
    cmplwi 3, 0xbf
    .4byte 0x40800010 # bge .L_80312E0C
    addi 0, 3, 0x1
    stb 0, 0x28c(31)
    .4byte 0x4800000C # b .L_80312E14
L_80312E0C:
    addi 0, 3, 0x2
    stb 0, 0x28c(31)
L_80312E14:
    lbz 0, 0x28c(31)
    cmplwi 0, 0xff
    .4byte 0x418007B4 # blt .L_803135D0
    li 0, 0xff
    li 3, 0x7
    stb 0, 0x28c(31)
    li 0, 0x3c
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x48000798 # b .L_803135D0
    lwz 3, 0x248(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x248(31)
    cmpw 0, 3
    .4byte 0x4082076C # bne .L_803135D0
    .4byte 0xC022E870 # lfs f1, lbl_80541810@sda21(r0)
    lis 3, lbl_804714A0@ha
    .4byte 0xC002E874 # lfs f0, lbl_80541814@sda21(r0)
    addi 4, 3, lbl_804714A0@l
    stfs 1, 0x14(1)
    mr 3, 0
    addi 7, 1, 0x14
    li 8, 0x4102
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    lwz 0, 0x234(31)
    lwz 5, 0x198(31)
    slwi 0, 0, 2
    lwz 6, 0x4(31)
    lwzx 4, 4, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820724 # beq .L_803135D0
    li 0, 0x9
    stw 0, 0x230(31)
    .4byte 0x48000718 # b .L_803135D0
    lwz 3, 0x248(31)
    li 6, 0x1
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x248(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418206EC # beq .L_803135D0
    li 3, 0xa
    li 0, 0x28
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x480006D8 # b .L_803135D0
    lbz 3, 0x28c(31)
    cmplwi 3, 0x2
    .4byte 0x40810010 # ble .L_80312F14
    subi 0, 3, 0x2
    stb 0, 0x28c(31)
    .4byte 0x480006C0 # b .L_803135D0
L_80312F14:
    li 0, 0x0
    li 3, 0xc
    stb 0, 0x28c(31)
    li 0, 0x1e
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x480006A4 # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4181068C # bgt .L_803135D0
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_80312F84
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 4, 0x8(3)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_80312F84
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x4082000C # bne .L_80312F84
    li 0, 0x1
    stb 0, 0x277(4)
L_80312F84:
    li 0, 0xd
    .4byte 0xC042E868 # lfs f2, lbl_80541808@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0xC022E870 # lfs f1, lbl_80541810@sda21(r0)
    lfs 3, 0x10(31)
    .4byte 0xC002E878 # lfs f0, lbl_80541818@sda21(r0)
    fsubs 2, 3, 2
    stfs 2, 0x10(31)
    stfs 1, 0x14(31)
    stfs 0, 0x44(31)
    .4byte 0x48000624 # b .L_803135D0
    lfs 1, 0x14(31)
    .4byte 0xC002E87C # lfs f0, lbl_8054181C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80312FE0
    stfs 0, 0x14(31)
    li 3, 0xe
    li 0, 0x5a
    .4byte 0xC002E870 # lfs f0, lbl_80541810@sda21(r0)
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    stfs 0, 0x44(31)
L_80312FE0:
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x418005E8 # blt .L_803135D0
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x418205D0 # beq .L_803135D0
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x408205C0 # bne .L_803135D0
    lfs 1, 0x14(31)
    bl Gnef_QueryCueState
    clrlwi. 0, 3, 24
    .4byte 0x418205B0 # beq .L_803135D0
    lfs 2, 0x14(31)
    addi 3, 31, 0x44
    lfs 0, 0x44(31)
    .4byte 0xC022E880 # lfs f1, lbl_80541820@sda21(r0)
    fadds 0, 2, 0
    .4byte 0xC042E884 # lfs f2, lbl_80541824@sda21(r0)
    .4byte 0xC062E888 # lfs f3, lbl_80541828@sda21(r0)
    stfs 0, 0x14(31)
    bl fn_801F71A4
    li 0, 0x1
    stb 0, 0x27c(31)
    .4byte 0x48000580 # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810568 # bgt .L_803135D0
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_803130A8
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 4, 0x8(3)
    cmplwi 4, 0x0
    .4byte 0x4182001C # beq .L_803130A8
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x4082000C # bne .L_803130A8
    li 0, 0x1
    stb 0, 0x278(4)
L_803130A8:
    li 3, 0xf
    li 0, 0x1fe
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x48000518 # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810500 # bgt .L_803135D0
    li 3, 0x10
    li 0, 0xa8
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x480004EC # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 3, 0x244(31)
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC002E86C # lfs f0, lbl_8054180C@sda21(r0)
    stfs 1, 0x20(1)
    lfs 1, 0x4(3)
    stfs 1, 0x24(1)
    fsubs 0, 1, 0
    lfs 1, 0x8(3)
    stfs 1, 0x28(1)
    stfs 0, 0x24(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810028 # bgt .L_80313150
    lwz 3, 0x244(31)
    addi 4, 1, 0x20
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000014 # b .L_80313160
L_80313150:
    lwz 3, 0x244(31)
    addi 4, 1, 0x20
    li 5, 0xff
    bl fn_802303FC
L_80313160:
    lwz 0, 0x238(31)
    cmpwi 0, 0x3c
    .4byte 0x40800468 # bge .L_803135D0
    .4byte 0xC022E88C # lfs f1, lbl_8054182C@sda21(r0)
    addi 3, 31, 0x44
    .4byte 0xC042E890 # lfs f2, lbl_80541830@sda21(r0)
    .4byte 0xC062E880 # lfs f3, lbl_80541820@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x14(31)
    lfs 0, 0x44(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_803131CC
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_803131CC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x4082000C # bne .L_803131CC
    lfs 1, 0x14(31)
    bl Gnef_QueryCueState
L_803131CC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x418103FC # bgt .L_803135D0
    li 3, 0x11
    li 0, 0x3c
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x480003E8 # b .L_803135D0
    lfs 1, 0x14(31)
    lfs 0, 0x44(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_80313238
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80313238
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x4082000C # bne .L_80313238
    lfs 1, 0x14(31)
    bl Gnef_QueryCueState
L_80313238:
    lfs 1, 0x14(31)
    .4byte 0xC002E894 # lfs f0, lbl_80541834@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_80313260
    li 3, 0x13
    li 0, 0x1e
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x48000060 # b .L_803132BC
L_80313260:
    .4byte 0xC002E898 # lfs f0, lbl_80541838@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_803132BC
    lbz 0, 0x27d(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_803132BC
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800038 # blt .L_803132BC
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_803132BC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x40820010 # bne .L_803132BC
    bl Gnef_SetCueFlag
    li 0, 0x1
    stb 0, 0x27d(31)
L_803132BC:
    lbz 0, 0x27d(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_803132E0
    .4byte 0xC022E89C # lfs f1, lbl_8054183C@sda21(r0)
    addi 3, 31, 0x44
    .4byte 0xC042E890 # lfs f2, lbl_80541830@sda21(r0)
    .4byte 0xC062E84C # lfs f3, lbl_805417EC@sda21(r0)
    bl fn_801F71A4
    .4byte 0x480002F4 # b .L_803135D0
L_803132E0:
    .4byte 0xC022E88C # lfs f1, lbl_8054182C@sda21(r0)
    addi 3, 31, 0x44
    .4byte 0xC042E890 # lfs f2, lbl_80541830@sda21(r0)
    .4byte 0xC062E880 # lfs f3, lbl_80541820@sda21(r0)
    bl fn_801F71A4
    .4byte 0x480002DC # b .L_803135D0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x418102C4 # bgt .L_803135D0
    li 3, 0x14
    li 0, 0x5a
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    lwz 3, 0x244(31)
    bl fn_8023E724
    lfs 2, 0x0(3)
    li 0, 0x0
    .4byte 0xC002E898 # lfs f0, lbl_80541838@sda21(r0)
    stfs 2, 0x20(1)
    lfs 1, 0x4(3)
    stfs 1, 0x24(1)
    lfs 1, 0x8(3)
    stfs 1, 0x28(1)
    stfs 2, 0xc(31)
    lfs 1, 0x24(1)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x28(1)
    stfs 0, 0x14(31)
    stw 0, 0x288(31)
    lwz 3, 0x244(31)
    bl fn_8023E724
    lwz 5, 0x288(31)
    mr 4, 3
    lwz 3, 0x244(31)
    li 6, 0xff
    addi 5, 5, 0xed
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000240 # b .L_803135D0
    lwz 0, 0x238(31)
    cmpwi 0, 0x4c
    .4byte 0x41820094 # beq .L_80313430
    .4byte 0x4080001C # bge .L_803133BC
    cmpwi 0, 0x48
    .4byte 0x41820088 # beq .L_80313430
    .4byte 0x408000CC # bge .L_80313478
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_803133C8
    .4byte 0x480000C0 # b .L_80313478
L_803133BC:
    cmpwi 0, 0x50
    .4byte 0x41820060 # beq .L_80313420
    .4byte 0x480000B4 # b .L_80313478
L_803133C8:
    .4byte 0xC022E870 # lfs f1, lbl_80541810@sda21(r0)
    lis 3, lbl_804714B0@ha
    .4byte 0xC002E874 # lfs f0, lbl_80541814@sda21(r0)
    addi 4, 3, lbl_804714B0@l
    stfs 1, 0x8(1)
    addi 6, 1, 0x8
    li 7, 0x4102
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    lwz 0, 0x234(31)
    lwz 3, 0x248(31)
    slwi 0, 0, 2
    lwz 5, 0x4(31)
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80313414
    li 0, 0x15
    stw 0, 0x230(31)
L_80313414:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    .4byte 0x480001B4 # b .L_803135D0
L_80313420:
    lis 4, 0x100
    lwz 3, 0x244(31)
    addi 4, 4, 0x2
    bl fn_80230F44
L_80313430:
    lfs 1, 0x10(31)
    .4byte 0xC002E8A0 # lfs f0, lbl_80541840@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 3, 0x288(31)
    addi 0, 3, 0x1
    stw 0, 0x288(31)
    lwz 3, 0x244(31)
    bl fn_8023E724
    lwz 5, 0x288(31)
    mr 4, 3
    lwz 3, 0x244(31)
    li 6, 0xff
    addi 5, 5, 0xed
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80313478:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    .4byte 0x4800014C # b .L_803135D0
    lwz 3, 0x248(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820138 # beq .L_803135D0
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    lwz 4, 0x234(31)
    bl fn_8037AD70
    li 0, 0x16
    li 29, 0x0
    stw 0, 0x230(31)
L_803134B4:
    lwz 4, 0x244(31)
    cmpw 29, 4
    .4byte 0x4182003C # beq .L_803134F8
    mr 3, 29
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_803134F8
    lwz 3, 0x244(31)
    bl fn_8023E724
    mr 4, 3
    mr 3, 29
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_803134F8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFB4 # blt .L_803134B4
    .4byte 0x480000CC # b .L_803135D0
    li 3, 0x0
    bl fn_80230534
    lwz 3, 0x248(31)
    bl fn_8022CC20
    bl GetRoomConfigRecord
    lwz 0, 0x90(31)
    li 5, 0x1
    li 6, 0xff
    extrwi 4, 0, 5, 7
    bl fn_802D8050
    li 29, 0x0
L_80313534:
    mr 3, 29
    li 4, 0x5
    li 5, 0x1
    bl fn_8022CA6C
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE8 # blt .L_80313534
    bl fn_8022ADCC
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x48000074 # b .L_803135D0
    lfs 1, 0x14(31)
    lfs 0, 0x44(31)
    fadds 0, 1, 0
    stfs 0, 0x14(31)
    lwz 30, 0x278(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_803135AC
    bl SpatialRegistry_GetBase
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x8(3)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_803135AC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x4082000C # bne .L_803135AC
    lfs 1, 0x14(31)
    bl Gnef_QueryCueState
L_803135AC:
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_803135D0
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
L_803135D0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x41800114 # blt .L_803136EC
    cmpwi 0, 0xd
    .4byte 0x41800014 # blt .L_803135F4
    .4byte 0x4082005C # bne .L_80313640
    lbz 0, 0x27c(31)
    cmplwi 0, 0x0
    .4byte 0x40820050 # bne .L_80313640
L_803135F4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x408200C4 # bne .L_803136C8
    li 0, 0x1
    .4byte 0xC022E850 # lfs f1, lbl_805417F0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002E8A4 # lfs f0, lbl_80541844@sda21(r0)
    lfs 2, 0x268(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x26c(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x4800008C # b .L_803136C8
L_80313640:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80313664
    .4byte 0xC002E8A8 # lfs f0, lbl_80541848@sda21(r0)
    .4byte 0xC022E8AC # lfs f1, lbl_8054184C@sda21(r0)
    .4byte 0xC042E8B0 # lfs f2, lbl_80541850@sda21(r0)
    .4byte 0xC062E8B4 # lfs f3, lbl_80541854@sda21(r0)
    .4byte 0x48000014 # b .L_80313674
L_80313664:
    .4byte 0xC002E874 # lfs f0, lbl_80541814@sda21(r0)
    .4byte 0xC022E8B8 # lfs f1, lbl_80541858@sda21(r0)
    .4byte 0xC042E898 # lfs f2, lbl_80541838@sda21(r0)
    .4byte 0xC062E894 # lfs f3, lbl_80541834@sda21(r0)
L_80313674:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 4, 0x268(31)
    lwz 4, 0x24(3)
    lfs 5, 0x26c(31)
    fadds 0, 0, 4
    lbz 0, 0x7f5(4)
    fadds 2, 2, 4
    fadds 1, 1, 5
    cmplwi 0, 0x0
    fadds 3, 3, 5
    .4byte 0x4082002C # bne .L_803136C8
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    stfs 0, 0x808(4)
    stfs 1, 0x80c(4)
    stfs 2, 0x810(4)
    stfs 3, 0x814(4)
    stb 0, 0x7f6(4)
L_803136C8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_803136EC
    li 0, 0x1
    .4byte 0xC002E84C # lfs f0, lbl_805417EC@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_803136EC:
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x41800038 # blt .L_8031372C
    cmpwi 0, 0xc
    .4byte 0x40800030 # bge .L_8031372C
    lhz 3, 0x280(31)
    cmplwi 3, 0x64
    .4byte 0x4081000C # ble .L_80313714
    subi 0, 3, 0x2
    sth 0, 0x280(31)
L_80313714:
    lhz 0, 0x280(31)
    cmplwi 0, 0x64
    .4byte 0x40800064 # bge .L_80313780
    li 0, 0x64
    sth 0, 0x280(31)
    .4byte 0x48000058 # b .L_80313780
L_8031372C:
    cmpwi 0, 0xc
    .4byte 0x41800050 # blt .L_80313780
    lhz 3, 0x280(31)
    lhz 0, 0x282(31)
    cmplw 3, 0
    .4byte 0x4080000C # bge .L_8031374C
    addi 0, 3, 0x2
    sth 0, 0x280(31)
L_8031374C:
    lhz 0, 0x280(31)
    lhz 3, 0x282(31)
    cmplw 0, 3
    .4byte 0x41800028 # blt .L_80313780
    sth 3, 0x280(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 0, 0x280(31)
    lwz 3, 0x2c(3)
    stb 0, 0xc(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 0, 0x280(31)
    lwz 3, 0x2c(3)
    stb 0, 0xe(3)
L_80313780:
    lhz 4, 0x280(31)
    lhz 0, 0x282(31)
    cmplw 4, 0
    .4byte 0x41820020 # beq .L_803137AC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    stb 4, 0xc(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lhz 0, 0x280(31)
    lwz 3, 0x2c(3)
    stb 0, 0xe(3)
L_803137AC:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803137D0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl SpatialRegistry_GetBase
    lwz 30, 0x1008(3)
    li 28, 0x0
    li 29, 0x0
    .4byte 0x48000044 # b .L_80313844
L_80313804:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820028 # beq .L_8031383C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x474e
    cmplwi 0, 0x4546
    .4byte 0x40820018 # bne .L_8031383C
    stw 28, 0x278(31)
    lfs 0, 0xc(4)
    stfs 0, 0xc(31)
    lfs 0, 0x10(4)
    stfs 0, 0x10(31)
L_8031383C:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_80313844:
    cmpw 28, 30
    .4byte 0x4180FFBC # blt .L_80313804
    .4byte 0xC022E8BC # lfs f1, lbl_8054185C@sda21(r0)
    .4byte 0xC002E8C0 # lfs f0, lbl_80541860@sda21(r0)
    stfs 1, 0x24c(31)
    .4byte 0xC022E8C4 # lfs f1, lbl_80541864@sda21(r0)
    stfs 0, 0x250(31)
    .4byte 0xC002E8C8 # lfs f0, lbl_80541868@sda21(r0)
    stfs 1, 0x254(31)
    stfs 0, 0x258(31)
    lfs 1, 0x24c(31)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    stfs 0, 0x24c(31)
    lfs 1, 0x250(31)
    lfs 0, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x250(31)
    lfs 1, 0x254(31)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    stfs 0, 0x254(31)
    lfs 1, 0x258(31)
    lfs 0, 0x10(31)
    fadds 0, 1, 0
    stfs 0, 0x258(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 12
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_803138D0
    lfs 1, 0xc(31)
    .4byte 0xC002E860 # lfs f0, lbl_80541800@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x25c(31)
    .4byte 0x4800002C # b .L_803138F8
L_803138D0:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC822E8D0 # lfd f1, lbl_80541870@sda21(r0)
    stw 0, 0x8(1)
    lfs 2, 0xc(31)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x25c(31)
L_803138F8:
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 20
    extsb. 0, 0
    .4byte 0x40820020 # bne .L_80313924
    .4byte 0xC022E8CC # lfs f1, lbl_8054186C@sda21(r0)
    lfs 0, 0x10(31)
    .4byte 0xC042E864 # lfs f2, lbl_80541804@sda21(r0)
    fadds 0, 1, 0
    fadds 0, 2, 0
    stfs 0, 0x260(31)
    .4byte 0x4800002C # b .L_8031394C
L_80313924:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC822E8D0 # lfd f1, lbl_80541870@sda21(r0)
    stw 0, 0x8(1)
    lfs 2, 0x10(31)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x260(31)
L_8031394C:
    .4byte 0xC022E870 # lfs f1, lbl_80541810@sda21(r0)
    stfs 1, 0x264(31)
    lfs 0, 0xc(31)
    stfs 0, 0x268(31)
    lfs 0, 0x10(31)
    stfs 0, 0x26c(31)
    stfs 1, 0x270(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80313988:
    .4byte 0xC002E8D8 # lfs f0, lbl_80541878@sda21(r0)
    li 7, 0x0
    .4byte 0xC022E870 # lfs f1, lbl_80541810@sda21(r0)
    li 5, 0x78
    stfs 0, 0x14(3)
    li 4, -0x1
    .4byte 0xC002E8DC # lfs f0, lbl_8054187C@sda21(r0)
    li 0, 0xff
    stfs 1, 0x44(3)
    stfs 0, 0x284(3)
    stw 7, 0x230(3)
    lwz 6, 0x90(3)
    clrlwi 6, 6, 30
    stw 6, 0x234(3)
    stw 5, 0x238(3)
    lwz 5, 0x90(3)
    srwi 5, 5, 27
    stw 5, 0x23c(3)
    stw 4, 0x244(3)
    stw 4, 0x248(3)
    stw 7, 0x240(3)
    stw 4, 0x278(3)
    stb 7, 0x27c(3)
    stb 7, 0x27d(3)
    stb 7, 0x27e(3)
    stb 7, 0x28c(3)
    sth 0, 0x280(3)
    sth 0, 0x282(3)
    blr

fn_803139FC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80507DF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80507DF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313A4C
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
L_80313A4C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313A84
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
L_80313A84:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313ABC
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
L_80313ABC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313AF4
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
L_80313AF4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313B2C
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
L_80313B2C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313B64
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
L_80313B64:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313B9C
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
L_80313B9C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313BD4
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
L_80313BD4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80313C0C
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
L_80313C0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80313C20:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    lfs 1, 0x60(3)
    stfs 1, 0x14(1)
    lfs 4, 0x64(3)
    stfs 4, 0x18(1)
    lfs 2, 0x68(3)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(3)
    stfs 3, 0x20(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x41820094 # beq .L_80313D20
    lwz 4, 0x4(29)
    addi 3, 1, 0x14
    lwz 5, 0x198(29)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x418000AC # blt .L_80313D60
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_80313D60
    mr 3, 30
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x40820090 # bne .L_80313D60
    lwz 31, 0x268(29)
    addi 7, 1, 0x8
    lwz 5, 0x198(29)
    mr 3, 30
    lwz 6, 0x4(29)
    mr 4, 31
    psq_l 1, 0xc(29), 0, 0
    li 8, 0x220
    lfs 0, 0x14(29)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_80313D60
    stw 30, 0x254(29)
    li 0, 0x1
    stw 31, 0x268(29)
    stw 0, 0x234(29)
    .4byte 0x48000044 # b .L_80313D60
L_80313D20:
    lwz 3, 0x254(29)
    addi 4, 1, 0x14
    lwz 5, 0x4(29)
    li 7, 0x1
    lwz 6, 0x198(29)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(29)
    lwz 4, 0x198(29)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80313D60
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x254(29)
    stw 0, 0x234(29)
L_80313D60:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80313D7C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    stw 29, 0x44(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_80313EA8
    li 0, 0x14
    stw 0, 0x274(30)
    lwz 3, 0x254(30)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80313DC8
    lwz 29, 0x4(30)
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x4182001C # beq .L_80313DE0
L_80313DC8:
    mr 3, 30
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_80313DF8
L_80313DE0:
    lwz 6, 0x254(30)
    mr 3, 30
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_80313DF8:
    lfs 1, 0x8(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80313E9C
    lfs 1, 0x18(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x1c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80313E4C
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80313E58
L_80313E4C:
    li 0, 0x3
    stw 0, 0x270(30)
    .4byte 0x4800005C # b .L_80313EB0
L_80313E58:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80313E74
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80313E74
    li 0, 0x1
    stw 0, 0x270(30)
    .4byte 0x48000040 # b .L_80313EB0
L_80313E74:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80313E90
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80313E90
    li 0, 0x2
    stw 0, 0x270(30)
    .4byte 0x48000024 # b .L_80313EB0
L_80313E90:
    li 0, 0x0
    stw 0, 0x270(30)
    .4byte 0x48000018 # b .L_80313EB0
L_80313E9C:
    li 0, 0x2
    stw 0, 0x270(30)
    .4byte 0x4800000C # b .L_80313EB0
L_80313EA8:
    subi 0, 3, 0x1
    stw 0, 0x274(30)
L_80313EB0:
    lfs 1, 0x258(30)
    stfs 1, 0x24(1)
    lfs 4, 0x25c(30)
    stfs 4, 0x28(1)
    lfs 2, 0x260(30)
    stfs 2, 0x2c(1)
    lfs 3, 0x264(30)
    stfs 3, 0x30(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(30)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x40820360 # bne .L_80314260
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x238(30)
    mr 31, 3
    cmpwi 0, 0x2
    .4byte 0x418200F4 # beq .L_8031400C
    .4byte 0x40800014 # bge .L_80313F30
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80313F48
    .4byte 0x408000A0 # bge .L_80313FC8
    .4byte 0x48000314 # b .L_80314240
L_80313F30:
    cmpwi 0, 0x8
    .4byte 0x418202C8 # beq .L_803141FC
    .4byte 0x40800308 # bge .L_80314240
    cmpwi 0, 0x7
    .4byte 0x40800208 # bge .L_80314148
    .4byte 0x48000160 # b .L_803140A4
L_80313F48:
    lwz 4, 0x4(30)
    addi 3, 1, 0x24
    lwz 5, 0x198(30)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(30)
    bl fn_8022FD8C
    mr. 29, 3
    .4byte 0x4180035C # blt .L_803142C8
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820350 # beq .L_803142C8
    lwz 5, 0x198(30)
    addi 7, 1, 0xc
    lwz 6, 0x4(30)
    mr 3, 29
    psq_l 1, 0xc(30), 0, 0
    li 4, 0x4db
    lfs 0, 0x14(30)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182031C # beq .L_803142C8
    stw 29, 0x254(30)
    li 3, 0x4db
    li 0, 0x1
    stw 3, 0x268(30)
    stw 0, 0x234(30)
    .4byte 0x48000304 # b .L_803142C8
L_80313FC8:
    lwz 3, 0x254(30)
    addi 4, 1, 0x24
    lwz 5, 0x4(30)
    li 7, 0x1
    lwz 6, 0x198(30)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(30)
    li 4, 0x4cf
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418202D4 # beq .L_803142C8
    li 3, 0x4cf
    li 0, 0x1
    stw 3, 0x268(30)
    stw 0, 0x234(30)
    .4byte 0x480002C0 # b .L_803142C8
L_8031400C:
    lwz 3, 0x254(30)
    addi 4, 1, 0x24
    lwz 5, 0x4(30)
    li 7, 0x1
    lwz 6, 0x198(30)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(30)
    li 4, 0x4dc
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8031404C
    li 3, 0x4dc
    li 0, 0x1
    stw 3, 0x268(30)
    stw 0, 0x234(30)
L_8031404C:
    li 29, 0x0
    .4byte 0x48000038 # b .L_80314088
L_80314054:
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80314078
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_80314078
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_8031407C
L_80314078:
    li 0, 0x0
L_8031407C:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_80314090
    addi 29, 29, 0x1
L_80314088:
    cmpw 29, 31
    .4byte 0x4180FFC8 # blt .L_80314054
L_80314090:
    cmpw 29, 31
    .4byte 0x41800234 # blt .L_803142C8
    li 0, 0x7
    stw 0, 0x238(30)
    .4byte 0x48000228 # b .L_803142C8
L_803140A4:
    lwz 3, 0x254(30)
    addi 4, 1, 0x24
    lwz 5, 0x4(30)
    li 7, 0x1
    lwz 6, 0x198(30)
    li 8, 0x0
    bl fn_8022FF8C
    .4byte 0x48000044 # b .L_80314104
L_803140C4:
    subi 29, 3, 0x3
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_803140EC
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_803140EC
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_803140F0
L_803140EC:
    li 0, 0x0
L_803140F0:
    clrlwi. 0, 0, 24
    .4byte 0x4082001C # bne .L_80314110
    lwz 3, 0x238(30)
    addi 0, 3, 0x1
    stw 0, 0x238(30)
L_80314104:
    lwz 3, 0x238(30)
    cmpwi 3, 0x7
    .4byte 0x4180FFB8 # blt .L_803140C4
L_80314110:
    lwz 3, 0x238(30)
    addi 0, 31, 0x3
    cmpw 3, 0
    .4byte 0x4080002C # bge .L_80314148
    addi 29, 3, 0x4d1
    lwz 3, 0x254(30)
    mr 4, 29
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820194 # beq .L_803142C8
    stw 29, 0x268(30)
    li 0, 0x1
    stw 0, 0x234(30)
    .4byte 0x48000184 # b .L_803142C8
L_80314148:
    lwz 3, 0x254(30)
    addi 4, 1, 0x24
    lwz 5, 0x4(30)
    li 7, 0x1
    lwz 6, 0x198(30)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(30)
    li 4, 0x4dd
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8031418C
    li 0, 0x4dd
    li 3, 0x1
    stw 0, 0x268(30)
    stw 3, 0x234(30)
    .4byte 0x48000008 # b .L_80314190
L_8031418C:
    li 3, 0x0
L_80314190:
    clrlwi. 0, 3, 24
    .4byte 0x41820134 # beq .L_803142C8
    li 29, 0x0
    .4byte 0x4800004C # b .L_803141E8
L_803141A0:
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_803141C4
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_803141C4
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_803141C8
L_803141C4:
    li 0, 0x0
L_803141C8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_803141E4
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 4, 29
    li 5, -0x12c
    li 6, 0x0
    bl fn_8043D874
L_803141E4:
    addi 29, 29, 0x1
L_803141E8:
    cmpw 29, 31
    .4byte 0x4180FFB4 # blt .L_803141A0
    li 0, 0x8
    stw 0, 0x238(30)
    .4byte 0x480000D0 # b .L_803142C8
L_803141FC:
    lwz 3, 0x254(30)
    addi 4, 1, 0x24
    lwz 5, 0x4(30)
    li 7, 0x1
    lwz 6, 0x198(30)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(30)
    li 4, 0x4de
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_803142C8
    li 3, 0x4de
    li 0, 0x1
    stw 3, 0x268(30)
    stw 0, 0x234(30)
    .4byte 0x4800008C # b .L_803142C8
L_80314240:
    li 0, 0x4
    li 3, 0x5
    stw 0, 0x230(30)
    li 0, 0x0
    stw 3, 0x238(30)
    stw 0, 0x254(30)
    stw 0, 0x234(30)
    .4byte 0x4800006C # b .L_803142C8
L_80314260:
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_803142C8
    lwz 3, 0x254(30)
    addi 4, 1, 0x24
    lwz 5, 0x4(30)
    li 7, 0x1
    lwz 6, 0x198(30)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(30)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_803142C8
    lwz 3, 0x238(30)
    cmpwi 3, 0x8
    .4byte 0x40800018 # bge .L_803142B4
    addi 3, 3, 0x1
    li 0, 0x0
    stw 3, 0x238(30)
    stw 0, 0x234(30)
    .4byte 0x48000018 # b .L_803142C8
L_803142B4:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x230(30)
    stw 0, 0x238(30)
    stw 0, 0x234(30)
L_803142C8:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803142E4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_8031440C
    li 0, 0x14
    stw 0, 0x274(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8031432C
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_80314344
L_8031432C:
    mr 3, 31
    addi 4, 1, 0x1c
    addi 5, 1, 0xc
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_8031435C
L_80314344:
    lwz 6, 0x254(31)
    mr 3, 31
    addi 4, 1, 0x1c
    addi 5, 1, 0xc
    addi 6, 6, 0x1
    bl fn_801EE558
L_8031435C:
    lfs 1, 0xc(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80314400
    lfs 1, 0x1c(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x20(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_803143B0
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_803143BC
L_803143B0:
    li 0, 0x3
    stw 0, 0x270(31)
    .4byte 0x4800005C # b .L_80314414
L_803143BC:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_803143D8
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_803143D8
    li 0, 0x1
    stw 0, 0x270(31)
    .4byte 0x48000040 # b .L_80314414
L_803143D8:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_803143F4
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_803143F4
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_80314414
L_803143F4:
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_80314414
L_80314400:
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_80314414
L_8031440C:
    subi 0, 3, 0x1
    stw 0, 0x274(31)
L_80314414:
    lfs 1, 0x258(31)
    stfs 1, 0x28(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x2c(1)
    lfs 2, 0x260(31)
    stfs 2, 0x30(1)
    lfs 3, 0x264(31)
    stfs 3, 0x34(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x28(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x30(1)
    fadds 0, 3, 2
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408201F8 # bne .L_8031465C
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_80314510
    .4byte 0x40800010 # bge .L_80314484
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80314490
    .4byte 0x480001BC # b .L_8031463C
L_80314484:
    cmpwi 0, 0x3
    .4byte 0x408001B4 # bge .L_8031463C
    .4byte 0x480000C8 # b .L_80314554
L_80314490:
    lwz 4, 0x4(31)
    addi 3, 1, 0x28
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800210 # blt .L_803146C4
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820204 # beq .L_803146C4
    lwz 5, 0x198(31)
    addi 7, 1, 0x10
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x4ce
    lfs 0, 0x14(31)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x18(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418201D0 # beq .L_803146C4
    stw 30, 0x254(31)
    li 3, 0x4ce
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x480001B8 # b .L_803146C4
L_80314510:
    lwz 3, 0x254(31)
    addi 4, 1, 0x28
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    li 4, 0x4cf
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820188 # beq .L_803146C4
    li 3, 0x4cf
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x48000174 # b .L_803146C4
L_80314554:
    lwz 3, 0x254(31)
    addi 4, 1, 0x28
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    lwz 5, 0xb4(6)
    addi 4, 4, 0x660d
    stw 3, 0x3c(1)
    mullw 3, 5, 4
    .4byte 0xC042E8E8 # lfs f2, lbl_80541888@sda21(r0)
    stw 0, 0x38(1)
    .4byte 0xC822E8F0 # lfd f1, lbl_80541890@sda21(r0)
    lfd 0, 0x38(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 0, 0, 1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lwz 3, 0x254(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 0, 0x44(1)
    clrlwi 30, 0, 30
    addi 4, 30, 0x1
    bl fn_803894BC
    lwz 3, 0x254(31)
    li 4, 0x4da
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80314618
    li 0, 0x4da
    li 3, 0x1
    stw 0, 0x268(31)
    stw 3, 0x234(31)
    .4byte 0x48000008 # b .L_8031461C
L_80314618:
    li 3, 0x0
L_8031461C:
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_803146C4
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 4, 30
    li 5, 0x12c
    li 6, 0x0
    bl fn_8043D874
    .4byte 0x4800008C # b .L_803146C4
L_8031463C:
    li 0, 0x4
    li 3, 0x5
    stw 0, 0x230(31)
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x4800006C # b .L_803146C4
L_8031465C:
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_803146C4
    lwz 3, 0x254(31)
    addi 4, 1, 0x28
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_803146C4
    lwz 3, 0x238(31)
    cmpwi 3, 0x2
    .4byte 0x40800018 # bge .L_803146B0
    addi 3, 3, 0x1
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x234(31)
    .4byte 0x48000018 # b .L_803146C4
L_803146B0:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    stw 0, 0x234(31)
L_803146C4:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_803146DC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_80314804
    li 0, 0x14
    stw 0, 0x274(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80314724
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_8031473C
L_80314724:
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_80314754
L_8031473C:
    lwz 6, 0x254(31)
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_80314754:
    lfs 1, 0x8(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_803147F8
    lfs 1, 0x18(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x1c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_803147A8
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_803147B4
L_803147A8:
    li 0, 0x3
    stw 0, 0x270(31)
    .4byte 0x4800005C # b .L_8031480C
L_803147B4:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_803147D0
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_803147D0
    li 0, 0x1
    stw 0, 0x270(31)
    .4byte 0x48000040 # b .L_8031480C
L_803147D0:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_803147EC
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_803147EC
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_8031480C
L_803147EC:
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_8031480C
L_803147F8:
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_8031480C
L_80314804:
    subi 0, 3, 0x1
    stw 0, 0x274(31)
L_8031480C:
    lfs 1, 0x258(31)
    stfs 1, 0x24(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x28(1)
    lfs 2, 0x260(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x264(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082019C # bne .L_803149F8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8031487C
    .4byte 0x4180016C # blt .L_803149D8
    cmpwi 0, 0x5
    .4byte 0x40800164 # bge .L_803149D8
    .4byte 0x48000084 # b .L_803148FC
L_8031487C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800264 # blt .L_80314B04
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820258 # beq .L_80314B04
    lwz 5, 0x198(31)
    addi 7, 1, 0xc
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x481
    lfs 0, 0x14(31)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820224 # beq .L_80314B04
    stw 30, 0x254(31)
    li 3, 0x481
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x4800020C # b .L_80314B04
L_803148FC:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x238(31)
    subi 3, 3, 0x1
    bl fn_80235ACC
    mr 0, 3
    lwz 3, 0x254(31)
    mr 30, 0
    mr 4, 30
    bl fn_8038938C
    cmpwi 30, 0x0
    .4byte 0x41820070 # beq .L_803149AC
    lwz 0, 0x23c(31)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_8031495C
    mulli 4, 30, 0x5
    lwz 3, 0x254(31)
    bl fn_80389254
    .4byte 0x48000028 # b .L_80314980
L_8031495C:
    cmpwi 0, 0x6
    .4byte 0x40820014 # bne .L_80314974
    mulli 4, 30, 0xa
    lwz 3, 0x254(31)
    bl fn_80389254
    .4byte 0x48000010 # b .L_80314980
L_80314974:
    mulli 4, 30, 0x14
    lwz 3, 0x254(31)
    bl fn_80389254
L_80314980:
    lwz 4, 0x238(31)
    lwz 3, 0x254(31)
    addi 30, 4, 0x481
    mr 4, 30
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x4182016C # beq .L_80314B04
    stw 30, 0x268(31)
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x4800015C # b .L_80314B04
L_803149AC:
    lwz 4, 0x238(31)
    lwz 3, 0x254(31)
    addi 30, 4, 0x486
    mr 4, 30
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820140 # beq .L_80314B04
    stw 30, 0x268(31)
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000130 # b .L_80314B04
L_803149D8:
    li 0, 0x4
    li 3, 0x5
    stw 0, 0x230(31)
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x48000110 # b .L_80314B04
L_803149F8:
    cmpwi 0, 0x1
    .4byte 0x40820108 # bne .L_80314B04
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_80314B04
    lwz 3, 0x238(31)
    cmpwi 3, 0x1
    .4byte 0x41800080 # blt .L_80314AB4
    cmpwi 3, 0x4
    .4byte 0x41810078 # bgt .L_80314AB4
    subi 3, 3, 0x1
    bl fn_80235ACC
    cmpwi 3, 0x0
    .4byte 0x41820068 # beq .L_80314AB4
    lwz 0, 0x23c(31)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_80314A78
    lwz 4, 0x238(31)
    mulli 5, 3, 0x5
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 6, 0x0
    subi 4, 4, 0x1
    bl fn_8043D874
    .4byte 0x48000040 # b .L_80314AB4
L_80314A78:
    cmpwi 0, 0x6
    .4byte 0x40820020 # bne .L_80314A9C
    lwz 4, 0x238(31)
    mulli 5, 3, 0xa
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 6, 0x0
    subi 4, 4, 0x1
    bl fn_8043D874
    .4byte 0x4800001C # b .L_80314AB4
L_80314A9C:
    lwz 4, 0x238(31)
    mulli 5, 3, 0x14
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 6, 0x0
    subi 4, 4, 0x1
    bl fn_8043D874
L_80314AB4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x238(31)
    cmpw 0, 3
    .4byte 0x4180000C # blt .L_80314AD0
    li 0, 0x4
    stw 0, 0x238(31)
L_80314AD0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x4
    .4byte 0x40800018 # bge .L_80314AF0
    addi 3, 3, 0x1
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x234(31)
    .4byte 0x48000018 # b .L_80314B04
L_80314AF0:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    stw 0, 0x234(31)
L_80314B04:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80314B1C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_80314C48
    li 0, 0x14
    stw 0, 0x274(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80314B68
    lwz 29, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x4182001C # beq .L_80314B80
L_80314B68:
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_80314B98
L_80314B80:
    lwz 6, 0x254(31)
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_80314B98:
    lfs 1, 0x8(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80314C3C
    lfs 1, 0x18(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x1c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80314BEC
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80314BF8
L_80314BEC:
    li 0, 0x3
    stw 0, 0x270(31)
    .4byte 0x4800005C # b .L_80314C50
L_80314BF8:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80314C14
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80314C14
    li 0, 0x1
    stw 0, 0x270(31)
    .4byte 0x48000040 # b .L_80314C50
L_80314C14:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80314C30
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80314C30
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_80314C50
L_80314C30:
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_80314C50
L_80314C3C:
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_80314C50
L_80314C48:
    subi 0, 3, 0x1
    stw 0, 0x274(31)
L_80314C50:
    lfs 1, 0x258(31)
    stfs 1, 0x24(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x28(1)
    lfs 2, 0x260(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x264(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082035C # bne .L_80314FFC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x238(31)
    mr 30, 3
    cmpwi 0, 0x2
    .4byte 0x418200F4 # beq .L_80314DAC
    .4byte 0x40800014 # bge .L_80314CD0
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80314CE8
    .4byte 0x408000A0 # bge .L_80314D68
    .4byte 0x48000310 # b .L_80314FDC
L_80314CD0:
    cmpwi 0, 0x8
    .4byte 0x418202C4 # beq .L_80314F98
    .4byte 0x40800304 # bge .L_80314FDC
    cmpwi 0, 0x7
    .4byte 0x40800208 # bge .L_80314EE8
    .4byte 0x48000160 # b .L_80314E44
L_80314CE8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 29, 3
    .4byte 0x41800358 # blt .L_80315064
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4182034C # beq .L_80315064
    lwz 5, 0x198(31)
    addi 7, 1, 0xc
    lwz 6, 0x4(31)
    mr 3, 29
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x4ce
    lfs 0, 0x14(31)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820318 # beq .L_80315064
    stw 29, 0x254(31)
    li 3, 0x4ce
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x48000300 # b .L_80315064
L_80314D68:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    li 4, 0x4cf
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418202D0 # beq .L_80315064
    li 3, 0x4cf
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x480002BC # b .L_80315064
L_80314DAC:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    li 4, 0x4d3
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80314DEC
    li 3, 0x4d3
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
L_80314DEC:
    li 29, 0x0
    .4byte 0x48000038 # b .L_80314E28
L_80314DF4:
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80314E18
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_80314E18
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_80314E1C
L_80314E18:
    li 0, 0x0
L_80314E1C:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_80314E30
    addi 29, 29, 0x1
L_80314E28:
    cmpw 29, 30
    .4byte 0x4180FFC8 # blt .L_80314DF4
L_80314E30:
    cmpw 29, 30
    .4byte 0x41800230 # blt .L_80315064
    li 0, 0x7
    stw 0, 0x238(31)
    .4byte 0x48000224 # b .L_80315064
L_80314E44:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    .4byte 0x48000044 # b .L_80314EA4
L_80314E64:
    subi 29, 3, 0x3
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80314E8C
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_80314E8C
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_80314E90
L_80314E8C:
    li 0, 0x0
L_80314E90:
    clrlwi. 0, 0, 24
    .4byte 0x4082001C # bne .L_80314EB0
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
L_80314EA4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x7
    .4byte 0x4180FFB8 # blt .L_80314E64
L_80314EB0:
    lwz 3, 0x238(31)
    addi 0, 30, 0x3
    cmpw 3, 0
    .4byte 0x4080002C # bge .L_80314EE8
    addi 29, 3, 0x4d1
    lwz 3, 0x254(31)
    mr 4, 29
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820190 # beq .L_80315064
    stw 29, 0x268(31)
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000180 # b .L_80315064
L_80314EE8:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    li 4, 0x4d8
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80314F2C
    li 0, 0x4d8
    li 3, 0x1
    stw 0, 0x268(31)
    stw 3, 0x234(31)
    .4byte 0x48000008 # b .L_80314F30
L_80314F2C:
    li 3, 0x0
L_80314F30:
    clrlwi. 0, 3, 24
    .4byte 0x41820130 # beq .L_80315064
    li 29, 0x0
L_80314F3C:
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80314F60
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_80314F60
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_80314F64
L_80314F60:
    li 0, 0x0
L_80314F64:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80314F80
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 4, 29
    li 5, 0x12c
    li 6, 0x0
    bl fn_8043D874
L_80314F80:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFB4 # blt .L_80314F3C
    li 0, 0x8
    stw 0, 0x238(31)
    .4byte 0x480000D0 # b .L_80315064
L_80314F98:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    li 4, 0x4d9
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_80315064
    li 3, 0x4d9
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x4800008C # b .L_80315064
L_80314FDC:
    li 0, 0x4
    li 3, 0x5
    stw 0, 0x230(31)
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x4800006C # b .L_80315064
L_80314FFC:
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_80315064
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80315064
    lwz 3, 0x238(31)
    cmpwi 3, 0x8
    .4byte 0x40800018 # bge .L_80315050
    addi 3, 3, 0x1
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x234(31)
    .4byte 0x48000018 # b .L_80315064
L_80315050:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    stw 0, 0x234(31)
L_80315064:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80315080:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_803151AC
    li 0, 0x14
    stw 0, 0x274(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_803150CC
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_803150E4
L_803150CC:
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_803150FC
L_803150E4:
    lwz 6, 0x254(31)
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_803150FC:
    lfs 1, 0x8(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_803151A0
    lfs 1, 0x18(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x1c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80315150
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8031515C
L_80315150:
    li 0, 0x3
    stw 0, 0x270(31)
    .4byte 0x4800005C # b .L_803151B4
L_8031515C:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80315178
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80315178
    li 0, 0x1
    stw 0, 0x270(31)
    .4byte 0x48000040 # b .L_803151B4
L_80315178:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80315194
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80315194
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_803151B4
L_80315194:
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_803151B4
L_803151A0:
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_803151B4
L_803151AC:
    subi 0, 3, 0x1
    stw 0, 0x274(31)
L_803151B4:
    lfs 1, 0x258(31)
    stfs 1, 0x24(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x28(1)
    lfs 2, 0x260(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x264(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408201D8 # bne .L_803153DC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x238(31)
    mr 30, 3
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_803152BC
    .4byte 0x40800010 # bge .L_80315230
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8031523C
    .4byte 0x48000190 # b .L_803153BC
L_80315230:
    cmpwi 0, 0x3
    .4byte 0x40800188 # bge .L_803153BC
    .4byte 0x480000C8 # b .L_80315300
L_8031523C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x418001E4 # blt .L_80315444
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418201D8 # beq .L_80315444
    lwz 5, 0x198(31)
    addi 7, 1, 0xc
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x4ce
    lfs 0, 0x14(31)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418201A4 # beq .L_80315444
    stw 30, 0x254(31)
    li 3, 0x4ce
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x4800018C # b .L_80315444
L_803152BC:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    li 4, 0x4cf
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x4182015C # beq .L_80315444
    li 3, 0x4cf
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x48000148 # b .L_80315444
L_80315300:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    li 29, 0x0
    .4byte 0x48000038 # b .L_80315358
L_80315324:
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80315348
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_80315348
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_8031534C
L_80315348:
    li 0, 0x0
L_8031534C:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_80315360
    addi 29, 29, 0x1
L_80315358:
    cmpw 29, 30
    .4byte 0x4180FFC8 # blt .L_80315324
L_80315360:
    clrlwi 30, 29, 30
    lwz 3, 0x254(31)
    addi 4, 30, 0x1
    bl fn_803894BC
    lwz 3, 0x254(31)
    li 4, 0x4d2
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80315398
    li 0, 0x4d2
    li 3, 0x1
    stw 0, 0x268(31)
    stw 3, 0x234(31)
    .4byte 0x48000008 # b .L_8031539C
L_80315398:
    li 3, 0x0
L_8031539C:
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_80315444
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 4, 30
    li 5, 0x12c
    li 6, 0x0
    bl fn_8043D874
    .4byte 0x4800008C # b .L_80315444
L_803153BC:
    li 0, 0x4
    li 3, 0x5
    stw 0, 0x230(31)
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x4800006C # b .L_80315444
L_803153DC:
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_80315444
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80315444
    lwz 3, 0x238(31)
    cmpwi 3, 0x2
    .4byte 0x40800018 # bge .L_80315430
    addi 3, 3, 0x1
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x234(31)
    .4byte 0x48000018 # b .L_80315444
L_80315430:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    stw 0, 0x234(31)
L_80315444:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80315460:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_8031558C
    li 0, 0x14
    stw 0, 0x274(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_803154AC
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_803154C4
L_803154AC:
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_803154DC
L_803154C4:
    lwz 6, 0x254(31)
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_803154DC:
    lfs 1, 0x8(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80315580
    lfs 1, 0x18(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x1c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80315530
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8031553C
L_80315530:
    li 0, 0x3
    stw 0, 0x270(31)
    .4byte 0x4800005C # b .L_80315594
L_8031553C:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80315558
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80315558
    li 0, 0x1
    stw 0, 0x270(31)
    .4byte 0x48000040 # b .L_80315594
L_80315558:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80315574
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80315574
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_80315594
L_80315574:
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_80315594
L_80315580:
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_80315594
L_8031558C:
    subi 0, 3, 0x1
    stw 0, 0x274(31)
L_80315594:
    lfs 1, 0x258(31)
    stfs 1, 0x24(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x28(1)
    lfs 2, 0x260(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x264(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408201FC # bne .L_803157E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x238(31)
    mr 30, 3
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_8031569C
    .4byte 0x40800010 # bge .L_80315610
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8031561C
    .4byte 0x480001B4 # b .L_803157C0
L_80315610:
    cmpwi 0, 0x3
    .4byte 0x408001AC # bge .L_803157C0
    .4byte 0x480000C8 # b .L_803156E0
L_8031561C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800208 # blt .L_80315848
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418201FC # beq .L_80315848
    lwz 5, 0x198(31)
    addi 7, 1, 0xc
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x4ce
    lfs 0, 0x14(31)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418201C8 # beq .L_80315848
    stw 30, 0x254(31)
    li 3, 0x4ce
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x480001B0 # b .L_80315848
L_8031569C:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    li 4, 0x4cf
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820180 # beq .L_80315848
    li 3, 0x4cf
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x4800016C # b .L_80315848
L_803156E0:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    li 29, 0x0
    .4byte 0x48000038 # b .L_80315738
L_80315704:
    bl GetRoomConfigRecord
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80315728
    cmpwi 29, 0x4
    .4byte 0x40800014 # bge .L_80315728
    addis 4, 29, 0x1
    addi 4, 4, 0x31d8
    lbzx 0, 3, 4
    .4byte 0x48000008 # b .L_8031572C
L_80315728:
    li 0, 0x0
L_8031572C:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_80315740
    addi 29, 29, 0x1
L_80315738:
    cmpw 29, 30
    .4byte 0x4180FFC8 # blt .L_80315704
L_80315740:
    cmpw 29, 30
    .4byte 0x4080001C # bge .L_80315760
    li 0, 0x4d0
    addi 4, 29, 0x1
    stw 0, 0x268(31)
    lwz 3, 0x254(31)
    bl fn_803894BC
    .4byte 0x4800000C # b .L_80315768
L_80315760:
    li 0, 0x4d1
    stw 0, 0x268(31)
L_80315768:
    lwz 30, 0x268(31)
    lwz 3, 0x254(31)
    mr 4, 30
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80315790
    stw 30, 0x268(31)
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000008 # b .L_80315794
L_80315790:
    li 0, 0x0
L_80315794:
    clrlwi. 0, 0, 24
    .4byte 0x418200B0 # beq .L_80315848
    lwz 0, 0x268(31)
    cmplwi 0, 0x4d0
    .4byte 0x408200A4 # bne .L_80315848
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    mr 4, 29
    li 5, 0x1f4
    li 6, 0x0
    bl fn_8043D874
    .4byte 0x4800008C # b .L_80315848
L_803157C0:
    li 0, 0x4
    li 3, 0x5
    stw 0, 0x230(31)
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x4800006C # b .L_80315848
L_803157E0:
    cmpwi 0, 0x1
    .4byte 0x40820064 # bne .L_80315848
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80315848
    lwz 3, 0x238(31)
    cmpwi 3, 0x2
    .4byte 0x40800018 # bge .L_80315834
    addi 3, 3, 0x1
    li 0, 0x0
    stw 3, 0x238(31)
    stw 0, 0x234(31)
    .4byte 0x48000018 # b .L_80315848
L_80315834:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    stw 0, 0x234(31)
L_80315848:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80315864:
    stwu 1, -0x30(1)
    mflr 0
    li 7, 0x1
    li 8, 0x0
    stw 0, 0x34(1)
    addi 4, 1, 0x8
    stmw 26, 0x18(1)
    mr 31, 3
    lfs 1, 0x258(3)
    stfs 1, 0x8(1)
    lfs 4, 0x25c(3)
    stfs 4, 0xc(1)
    lfs 2, 0x260(3)
    stfs 2, 0x10(1)
    lfs 3, 0x264(3)
    stfs 3, 0x14(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 3, 0x254(3)
    lwz 5, 0x4(31)
    lwz 6, 0x198(31)
    bl fn_8022FF8C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408202E4 # bne .L_80315BC8
    lwz 0, 0x238(31)
    cmpwi 0, 0x5
    .4byte 0x418201EC # beq .L_80315ADC
    .4byte 0x408001E8 # bge .L_80315ADC
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80315908
    .4byte 0x408000A4 # bge .L_803159A4
    .4byte 0x480001D8 # b .L_80315ADC
L_80315908:
    lwz 3, 0x254(31)
    li 4, 0x486
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80315930
    li 0, 0x486
    li 3, 0x1
    stw 0, 0x268(31)
    stw 3, 0x234(31)
    .4byte 0x48000008 # b .L_80315934
L_80315930:
    li 3, 0x0
L_80315934:
    clrlwi. 0, 3, 24
    .4byte 0x41820334 # beq .L_80315C6C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    subi 28, 3, 0x1
    .4byte 0x48000050 # b .L_80315998
L_8031594C:
    mr 26, 31
    li 30, 0x0
    .4byte 0x48000038 # b .L_8031598C
L_80315958:
    lwz 3, 0x248(26)
    bl fn_80236228
    mr 29, 3
    lwz 3, 0x244(26)
    bl fn_80236228
    cmpw 3, 29
    .4byte 0x40800014 # bge .L_80315984
    lwz 3, 0x244(26)
    lwz 0, 0x248(26)
    stw 0, 0x244(26)
    stw 3, 0x248(26)
L_80315984:
    addi 26, 26, 0x4
    addi 30, 30, 0x1
L_8031598C:
    cmpw 30, 28
    .4byte 0x4180FFC8 # blt .L_80315958
    subi 28, 28, 0x1
L_80315998:
    cmpwi 28, 0x0
    .4byte 0x4181FFB0 # bgt .L_8031594C
    .4byte 0x480002CC # b .L_80315C6C
L_803159A4:
    subfic 0, 0, 0x4
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 26, 0x244(3)
    mr 3, 26
    bl fn_80236228
    li 27, 0x0
    mr 29, 3
    mr 28, 27
    li 30, 0x1
L_803159CC:
    cmpw 28, 26
    .4byte 0x41820030 # beq .L_80315A00
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 28
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820018 # beq .L_80315A00
    mr 3, 28
    bl fn_80236228
    cmpw 29, 3
    .4byte 0x40800008 # bge .L_80315A00
    addi 27, 27, 0x1
L_80315A00:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFC4 # blt .L_803159CC
    lwz 3, 0x254(31)
    addi 4, 27, 0x1
    bl fn_803894BC
    lwz 0, 0x238(31)
    subfic 0, 0, 0x4
    slwi 0, 0, 2
    add 3, 31, 0
    lwz 3, 0x244(3)
    bl fn_80236228
    mr 4, 3
    lwz 3, 0x254(31)
    bl fn_8038938C
    cmpwi 27, 0x0
    .4byte 0x41820040 # beq .L_80315A80
    lwz 0, 0x238(31)
    lwz 3, 0x254(31)
    subfic 0, 0, 0x4
    slwi 0, 0, 2
    add 4, 31, 0
    lwz 4, 0x244(4)
    addi 26, 4, 0x48b
    mr 4, 26
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820200 # beq .L_80315C6C
    stw 26, 0x268(31)
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x480001F0 # b .L_80315C6C
L_80315A80:
    lwz 0, 0x238(31)
    lwz 3, 0x254(31)
    subfic 0, 0, 0x4
    slwi 0, 0, 2
    add 4, 31, 0
    lwz 4, 0x244(4)
    addi 26, 4, 0x48f
    mr 4, 26
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80315ABC
    stw 26, 0x268(31)
    li 0, 0x1
    stw 0, 0x234(31)
    .4byte 0x48000008 # b .L_80315AC0
L_80315ABC:
    li 0, 0x0
L_80315AC0:
    clrlwi. 0, 0, 24
    .4byte 0x418201A8 # beq .L_80315C6C
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x27
    bl fn_80458F04
    .4byte 0x48000194 # b .L_80315C6C
L_80315ADC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    mr 30, 3
    li 26, 0x0
    li 27, 0x0
    .4byte 0x48000014 # b .L_80315B04
L_80315AF4:
    mr 3, 27
    bl fn_80236228
    add 26, 26, 3
    addi 27, 27, 0x1
L_80315B04:
    cmpw 27, 30
    .4byte 0x4180FFEC # blt .L_80315AF4
    lwz 3, 0x254(31)
    mr 4, 26
    bl fn_80389254
    lis 3, 0x8334
    addi 0, 3, 0x521
    mulhw 0, 0, 26
    add 0, 0, 26
    srawi 0, 0, 9
    srwi 3, 0, 31
    add. 4, 0, 3
    .4byte 0x4182006C # beq .L_80315BA0
    lis 3, lbl_80529DEC@ha
    addi 5, 3, lbl_80529DEC@l
    lbz 0, 0x24f(5)
    mtctr 4
    cmpwi 4, 0x0
    .4byte 0x40810020 # ble .L_80315B6C
L_80315B50:
    clrlwi 3, 0, 24
    li 0, 0x63
    cmplwi 3, 0x63
    .4byte 0x4080000C # bge .L_80315B68
    addi 0, 3, 0x1
    clrlwi 0, 0, 24
L_80315B68:
    .4byte 0x4200FFE8 # bdnz .L_80315B50
L_80315B6C:
    stb 0, 0x24f(5)
    lwz 3, 0x254(31)
    bl fn_8038911C
    lwz 3, 0x254(31)
    li 4, 0x493
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418200E4 # beq .L_80315C6C
    li 3, 0x493
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x480000D0 # b .L_80315C6C
L_80315BA0:
    lwz 3, 0x254(31)
    li 4, 0x495
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_80315C6C
    li 3, 0x495
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x480000A8 # b .L_80315C6C
L_80315BC8:
    cmpwi 0, 0x1
    .4byte 0x408200A0 # bne .L_80315C6C
    lwz 3, 0x254(31)
    addi 4, 1, 0x8
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_80315C6C
    lwz 3, 0x238(31)
    cmpwi 3, 0x5
    .4byte 0x40800034 # bge .L_80315C38
    cmpwi 3, 0x0
    .4byte 0x40820018 # bne .L_80315C24
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    subfic 0, 3, 0x5
    stw 0, 0x238(31)
    .4byte 0x4800000C # b .L_80315C2C
L_80315C24:
    addi 0, 3, 0x1
    stw 0, 0x238(31)
L_80315C2C:
    li 0, 0x0
    stw 0, 0x234(31)
    .4byte 0x48000038 # b .L_80315C6C
L_80315C38:
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x24f(3)
    bl Table_SetSelfIndexedByte86
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xa
    li 5, 0x2
    bl fn_8013665C
    li 0, 0x2
    stw 0, 0x234(31)
L_80315C6C:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80315C80:
    blr

fn_80315C84:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_80315DAC
    li 0, 0x14
    stw 0, 0x274(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80315CCC
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_80315CE4
L_80315CCC:
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_80315CFC
L_80315CE4:
    lwz 6, 0x254(31)
    mr 3, 31
    addi 4, 1, 0x18
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_80315CFC:
    lfs 1, 0x8(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80315DA0
    lfs 1, 0x18(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x1c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80315D50
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80315D5C
L_80315D50:
    li 0, 0x3
    stw 0, 0x270(31)
    .4byte 0x4800005C # b .L_80315DB4
L_80315D5C:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80315D78
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80315D78
    li 0, 0x1
    stw 0, 0x270(31)
    .4byte 0x48000040 # b .L_80315DB4
L_80315D78:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80315D94
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80315D94
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_80315DB4
L_80315D94:
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_80315DB4
L_80315DA0:
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_80315DB4
L_80315DAC:
    subi 0, 3, 0x1
    stw 0, 0x274(31)
L_80315DB4:
    lfs 1, 0x258(31)
    stfs 1, 0x24(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x28(1)
    lfs 2, 0x260(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x264(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820084 # bne .L_80315E88
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x418000A4 # blt .L_80315ED0
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_80315ED0
    lwz 5, 0x198(31)
    addi 7, 1, 0xc
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x480
    lfs 0, 0x14(31)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_80315ED0
    stw 30, 0x254(31)
    li 3, 0x480
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x4800004C # b .L_80315ED0
L_80315E88:
    lwz 3, 0x254(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80315ED0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xa
    li 5, 0x2
    bl fn_8013665C
    li 0, 0x2
    stw 0, 0x234(31)
L_80315ED0:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80315EE8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    lwz 3, 0x274(3)
    cmpwi 3, 0x0
    .4byte 0x41810108 # bgt .L_80316014
    li 0, 0x14
    stw 0, 0x274(31)
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_80315F34
    lwz 30, 0x4(31)
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x4182001C # beq .L_80315F4C
L_80315F34:
    mr 3, 31
    addi 4, 1, 0x30
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801EE558
    .4byte 0x4800001C # b .L_80315F64
L_80315F4C:
    lwz 6, 0x254(31)
    mr 3, 31
    addi 4, 1, 0x30
    addi 5, 1, 0x8
    addi 6, 6, 0x1
    bl fn_801EE558
L_80315F64:
    lfs 1, 0x8(1)
    .4byte 0xC002E8E0 # lfs f0, lbl_80541880@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800098 # bge .L_80316008
    lfs 1, 0x30(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x34(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002E8E4 # lfs f0, lbl_80541884@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80315FB8
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80315FC4
L_80315FB8:
    li 0, 0x3
    stw 0, 0x270(31)
    .4byte 0x4800005C # b .L_8031601C
L_80315FC4:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80315FE0
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80315FE0
    li 0, 0x1
    stw 0, 0x270(31)
    .4byte 0x48000040 # b .L_8031601C
L_80315FE0:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80315FFC
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80315FFC
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x48000024 # b .L_8031601C
L_80315FFC:
    li 0, 0x0
    stw 0, 0x270(31)
    .4byte 0x48000018 # b .L_8031601C
L_80316008:
    li 0, 0x2
    stw 0, 0x270(31)
    .4byte 0x4800000C # b .L_8031601C
L_80316014:
    subi 0, 3, 0x1
    stw 0, 0x274(31)
L_8031601C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082030C # bne .L_80316330
    lfs 1, 0x258(31)
    li 30, -0x1
    li 29, 0x0
    stfs 1, 0x48(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x4c(1)
    lfs 2, 0x260(31)
    stfs 2, 0x50(1)
    lfs 3, 0x264(31)
    stfs 3, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
L_80316078:
    mr 3, 29
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820094 # bne .L_80316118
    mr 3, 29
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820084 # bne .L_80316118
    mr 3, 29
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_80316118
    mr 3, 29
    bl fn_80230CFC
    cmpwi 3, 0x2
    .4byte 0x40820064 # bne .L_80316118
    mr 3, 29
    bl fn_8023E724
    lfs 2, 0x0(3)
    li 0, 0x0
    lfs 0, 0x48(1)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80316108
    lfs 1, 0x4(3)
    lfs 0, 0x4c(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80316108
    lfs 0, 0x50(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80316108
    lfs 0, 0x54(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80316108
    li 0, 0x1
L_80316108:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80316118
    mr 30, 29
    .4byte 0x48000010 # b .L_80316124
L_80316118:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF58 # blt .L_80316078
L_80316124:
    cmpwi 30, 0x0
    .4byte 0x418000E4 # blt .L_8031620C
    lwz 5, 0x4(31)
    mr 3, 30
    lwz 6, 0x198(31)
    addi 4, 1, 0x48
    li 7, 0x0
    li 8, 0x0
    bl fn_8022FF8C
    lwz 5, 0x198(31)
    addi 7, 1, 0x24
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x47e
    lfs 0, 0x14(31)
    li 8, 0x110
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x2c(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80316194
    stw 30, 0x254(31)
    li 0, 0x47e
    li 3, 0x1
    stw 0, 0x268(31)
    stw 3, 0x234(31)
    .4byte 0x48000008 # b .L_80316198
L_80316194:
    li 3, 0x0
L_80316198:
    clrlwi. 0, 3, 24
    .4byte 0x41820474 # beq .L_80316610
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x4c(1)
    li 4, 0x3
    .4byte 0xC002E8E8 # lfs f0, lbl_80541888@sda21(r0)
    psq_l 3, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    fsubs 0, 1, 0
    mr 3, 30
    psq_st 3, 0x3c(1), 0, 0
    stfs 2, 0x44(1)
    stfs 0, 0x40(1)
    bl fn_80230BF4
    mr 3, 30
    addi 4, 1, 0x3c
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x57
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000408 # b .L_80316610
L_8031620C:
    lfs 1, 0x60(31)
    addi 3, 1, 0x48
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x48(1)
    lfs 4, 0x64(31)
    stfs 4, 0x4c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x50(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x41800398 # blt .L_80316610
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4182038C # beq .L_80316610
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_803162E4
    lwz 5, 0x198(31)
    addi 7, 1, 0x18
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x47c
    lfs 0, 0x14(31)
    li 8, 0x120
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x20(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820348 # beq .L_80316610
    stw 30, 0x254(31)
    li 3, 0x47c
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x48000330 # b .L_80316610
L_803162E4:
    lwz 5, 0x198(31)
    addi 7, 1, 0xc
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    li 4, 0x47d
    lfs 0, 0x14(31)
    li 8, 0x10
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x14(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x418202FC # beq .L_80316610
    stw 30, 0x254(31)
    li 3, 0x47d
    li 0, 0x1
    stw 3, 0x268(31)
    stw 0, 0x234(31)
    .4byte 0x480002E4 # b .L_80316610
L_80316330:
    cmpwi 0, 0x1
    .4byte 0x408202DC # bne .L_80316610
    lwz 0, 0x268(31)
    cmpwi 0, 0x47e
    .4byte 0x418200B0 # beq .L_803163F0
    .4byte 0x40800014 # bge .L_80316358
    cmpwi 0, 0x47c
    .4byte 0x4182023C # beq .L_80316588
    .4byte 0x40800014 # bge .L_80316364
    .4byte 0x48000234 # b .L_80316588
L_80316358:
    cmpwi 0, 0x480
    .4byte 0x4080022C # bge .L_80316588
    .4byte 0x480001A0 # b .L_80316500
L_80316364:
    lfs 1, 0x60(31)
    addi 4, 1, 0x48
    li 7, 0x1
    li 8, 0x0
    stfs 1, 0x48(1)
    lfs 4, 0x64(31)
    stfs 4, 0x4c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x50(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 3, 0x254(31)
    lwz 5, 0x4(31)
    lwz 6, 0x198(31)
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820238 # beq .L_80316610
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x48000224 # b .L_80316610
L_803163F0:
    lfs 1, 0x258(31)
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x48(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x4c(1)
    lfs 2, 0x260(31)
    stfs 2, 0x50(1)
    lfs 3, 0x264(31)
    stfs 3, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 3, 0x254(31)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x254(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418201B4 # beq .L_80316610
    lwz 3, 0x254(31)
    bl fn_8037EFB4
    cmpwi 3, 0x0
    .4byte 0x40820074 # bne .L_803164E0
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_803164C4
    lis 4, lbl_80529DEC@ha
    addi 5, 4, lbl_80529DEC@l
    lbz 0, 0x24e(5)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_803164C4
    li 4, 0x1
    li 0, 0x0
    .4byte 0x988D9038 # stb r4, lbl_8053ABF8@sda21(r0)
    li 4, 0xc
    stb 0, 0x24e(5)
    bl fn_8013670C
    li 0, 0x2
    stw 0, 0x234(31)
    .4byte 0x48000150 # b .L_80316610
L_803164C4:
    li 0, 0x1
    li 4, 0x6
    .4byte 0x980D9038 # stb r0, lbl_8053ABF8@sda21(r0)
    bl fn_8013670C
    li 0, 0x2
    stw 0, 0x234(31)
    .4byte 0x48000134 # b .L_80316610
L_803164E0:
    lwz 3, 0x254(31)
    li 4, 0x47f
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_80316610
    li 0, 0x47f
    stw 0, 0x268(31)
    .4byte 0x48000114 # b .L_80316610
L_80316500:
    lfs 1, 0x258(31)
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x48(1)
    lfs 4, 0x25c(31)
    stfs 4, 0x4c(1)
    lfs 2, 0x260(31)
    stfs 2, 0x50(1)
    lfs 3, 0x264(31)
    stfs 3, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 3, 0x254(31)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_80316610
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x4800008C # b .L_80316610
L_80316588:
    lfs 1, 0x60(31)
    addi 4, 1, 0x48
    li 7, 0x1
    li 8, 0x0
    stfs 1, 0x48(1)
    lfs 4, 0x64(31)
    stfs 4, 0x4c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x50(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x54(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 3, 0x254(31)
    lwz 5, 0x4(31)
    lwz 6, 0x198(31)
    bl fn_8022FF8C
    lwz 3, 0x254(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80316610
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x254(31)
    stw 0, 0x234(31)
L_80316610:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8031662C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x418200E8 # beq .L_80316738
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820074 # bne .L_803166D0
    lwz 4, 0x254(31)
    cmpwi 4, 0x0
    .4byte 0x41800068 # blt .L_803166D0
    lwz 3, 0x278(31)
    bl fn_80316E74
    mr 0, 3
    lwz 3, 0x278(31)
    mr 29, 0
    bl fn_80316E34
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_803166B8
    lwz 3, 0x278(31)
    bl fn_80316E34
    addis 0, 29, 0x1
    mr 30, 3
    cmplwi 0, 0xffff
    .4byte 0x41820044 # beq .L_803166E4
    mr 3, 31
    mr 4, 29
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000030 # b .L_803166E4
L_803166B8:
    lwz 0, 0x270(31)
    lis 3, lbl_80471518@ha
    addi 3, 3, lbl_80471518@l
    slwi 0, 0, 2
    lwzx 30, 3, 0
    .4byte 0x48000018 # b .L_803166E4
L_803166D0:
    lwz 0, 0x270(31)
    lis 3, lbl_80471518@ha
    addi 3, 3, lbl_80471518@l
    slwi 0, 0, 2
    lwzx 30, 3, 0
L_803166E4:
    .4byte 0xC022E8E8 # lfs f1, lbl_80541888@sda21(r0)
    lis 3, lbl_80471528@ha
    addi 4, 3, lbl_80471528@l
    addi 5, 30, 0xc0
    fmr 2, 1
    mr 3, 31
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    addi 6, 30, 0xc0
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
L_80316738:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80316754:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    addi 3, 1, 0x8
    lfs 1, 0x60(31)
    stfs 1, 0x8(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc(1)
    lfs 2, 0x68(31)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x14(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 4, 0x230(31)
    lis 3, lbl_804AACDC@ha
    addi 0, 3, lbl_804AACDC@l
    mr 3, 31
    mulli 4, 4, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803167F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 3, 0x90(3)
    clrlwi 3, 3, 30
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 3, 25
    stw 0, 0x23c(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80316898
    .4byte 0xC022E8F8 # lfs f1, lbl_80541898@sda21(r0)
    li 30, 0x0
    .4byte 0xC002E8FC # lfs f0, lbl_8054189C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC062E900 # lfs f3, lbl_805418A0@sda21(r0)
    stfs 1, 0x64(31)
    .4byte 0xC042E904 # lfs f2, lbl_805418A4@sda21(r0)
    stfs 0, 0x68(31)
    .4byte 0xC022E908 # lfs f1, lbl_805418A8@sda21(r0)
    stfs 0, 0x6c(31)
    .4byte 0xC002E90C # lfs f0, lbl_805418AC@sda21(r0)
    stfs 3, 0x258(31)
    stfs 2, 0x25c(31)
    stfs 1, 0x260(31)
    stfs 0, 0x264(31)
L_80316878:
    bl GetRoomConfigRecord
    mr 5, 30
    li 4, 0x0
    bl fn_802D7844
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFE8 # blt .L_80316878
    .4byte 0x48000080 # b .L_80316914
L_80316898:
    cmpwi 0, 0x3
    .4byte 0x40820030 # bne .L_803168CC
    .4byte 0xC022E910 # lfs f1, lbl_805418B0@sda21(r0)
    .4byte 0xC002E914 # lfs f0, lbl_805418B4@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x258(31)
    stfs 1, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x264(31)
    .4byte 0x4800004C # b .L_80316914
L_803168CC:
    lwz 0, 0x23c(31)
    lis 3, lbl_804714F8@ha
    addi 3, 3, lbl_804714F8@l
    .4byte 0xC062E8F8 # lfs f3, lbl_80541898@sda21(r0)
    slwi 0, 0, 2
    .4byte 0xC042E8FC # lfs f2, lbl_8054189C@sda21(r0)
    lwzx 0, 3, 0
    .4byte 0xC022E900 # lfs f1, lbl_805418A0@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0xC002E908 # lfs f0, lbl_805418A8@sda21(r0)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x258(31)
    stfs 1, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x264(31)
L_80316914:
    lis 3, lbl_8050EC80@ha
    lwz 5, 0x23c(31)
    addi 3, 3, lbl_8050EC80@l
    li 4, 0x1
    lwz 0, 0x10(3)
    slw 4, 4, 5
    clrlwi 4, 4, 24
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 0, 0x7a(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x4182001C # beq .L_80316968
    lis 3, lbl_804714D8@ha
    slwi 0, 5, 2
    addi 3, 3, lbl_804714D8@l
    lwzx 0, 3, 0
    stw 0, 0x268(31)
    .4byte 0x4800000C # b .L_80316970
L_80316968:
    li 0, 0x473
    stw 0, 0x268(31)
L_80316970:
    li 6, 0x0
    li 0, 0x1
    stw 6, 0x244(31)
    li 4, 0x2
    li 3, 0x3
    addi 5, 1, 0x8
    stw 0, 0x248(31)
    li 0, -0x1
    stw 4, 0x24c(31)
    stw 3, 0x250(31)
    stw 0, 0x254(31)
    stw 6, 0x238(31)
    stb 6, 0x26c(31)
    stw 4, 0x270(31)
    stw 6, 0x274(31)
    lwz 4, 0x4(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x278(31)
    bl fn_80316E50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_803169E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820048 # beq .L_80316A44
    lis 3, lbl_804AAD60@ha
    addi 0, 3, lbl_804AAD60@l
    stw 0, 0x0(30)
    lwz 3, 0x278(30)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80316A28
    li 4, 0x1
    bl fn_80317060
    li 0, 0x0
    stw 0, 0x278(30)
L_80316A28:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80316A44
    mr 3, 30
    bl dtor_80084580
L_80316A44:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8030FB3C
    .4byte fn_80310BC4
    .4byte fn_80311578
    .4byte fn_80312444
    .4byte fn_803139FC

