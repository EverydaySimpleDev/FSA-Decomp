# Fresh project-wide gap hunt continuation: 14 functions, 7,536 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000A748
etb_8000A748:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A748, 8

.global etb_8000A750
etb_8000A750:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A750, 8

.global etb_8000A758
etb_8000A758:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A758, 8

.global etb_8000A760
etb_8000A760:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A760, 8

.global etb_8000A768
etb_8000A768:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A768, 8

.global etb_8000A770
etb_8000A770:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A770, 8

.global etb_8000A778
etb_8000A778:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A778, 8

.global etb_8000A780
etb_8000A780:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A780, 8

.global etb_8000A788
etb_8000A788:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A788, 8

.global etb_8000A790
etb_8000A790:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A790, 8

.global etb_8000A798
etb_8000A798:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A798, 8

.global etb_8000A7A0
etb_8000A7A0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A7A0, 8

.global etb_8000A7A8
etb_8000A7A8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A7A8, 8

.global etb_8000A7B0
etb_8000A7B0:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000A7B0, 8

.section extabindex, "a"
.balign 4
.global eti_800185F8
eti_800185F8:
    .4byte fn_8022486C
    .4byte 0x00000198
    .4byte etb_8000A748
.size eti_800185F8, 12

.global eti_80018604
eti_80018604:
    .4byte fn_80224A04
    .4byte 0x00000184
    .4byte etb_8000A750
.size eti_80018604, 12

.global eti_80018610
eti_80018610:
    .4byte fn_80224B88
    .4byte 0x00000184
    .4byte etb_8000A758
.size eti_80018610, 12

.global eti_8001861C
eti_8001861C:
    .4byte fn_80224D0C
    .4byte 0x0000017C
    .4byte etb_8000A760
.size eti_8001861C, 12

.global eti_80018628
eti_80018628:
    .4byte fn_80224E88
    .4byte 0x00000178
    .4byte etb_8000A768
.size eti_80018628, 12

.global eti_80018634
eti_80018634:
    .4byte fn_80225000
    .4byte 0x0000017C
    .4byte etb_8000A770
.size eti_80018634, 12

.global eti_80018640
eti_80018640:
    .4byte fn_8022517C
    .4byte 0x00000178
    .4byte etb_8000A778
.size eti_80018640, 12

.global eti_8001864C
eti_8001864C:
    .4byte fn_802252F4
    .4byte 0x00000300
    .4byte etb_8000A780
.size eti_8001864C, 12

.global eti_80018658
eti_80018658:
    .4byte fn_802255F4
    .4byte 0x00000020
    .4byte etb_8000A788
.size eti_80018658, 12

.global eti_80018664
eti_80018664:
    .4byte fn_80225614
    .4byte 0x000002C0
    .4byte etb_8000A790
.size eti_80018664, 12

.global eti_80018670
eti_80018670:
    .4byte fn_802258D4
    .4byte 0x00000310
    .4byte etb_8000A798
.size eti_80018670, 12

.global eti_8001867C
eti_8001867C:
    .4byte fn_80225BE4
    .4byte 0x00000310
    .4byte etb_8000A7A0
.size eti_8001867C, 12

.global eti_80018688
eti_80018688:
    .4byte fn_80225EF4
    .4byte 0x000001E8
    .4byte etb_8000A7A8
.size eti_80018688, 12

.global eti_80018694
eti_80018694:
    .4byte fn_802260DC
    .4byte 0x00000500
    .4byte etb_8000A7B0
.size eti_80018694, 12

.text
.balign 4
.global fn_8022486C
.global fn_80224A04
.global fn_80224B88
.global fn_80224D0C
.global fn_80224E88
.global fn_80225000
.global fn_8022517C
.global fn_802252F4
.global fn_802255F4
.global fn_80225614
.global fn_802258D4
.global fn_80225BE4
.global fn_80225EF4
.global fn_802260DC

fn_8022486C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_802248A0
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_802248A4
L_802248A0:
    addi 7, 3, 0xdc
L_802248A4:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8022490C
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8022490C
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8022490C
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8022490C
    li 0, 0x1
L_8022490C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022491C
    li 4, 0xf
    .4byte 0x48000084 # b .L_8022499C
L_8022491C:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80224954
    li 6, 0x0
    .4byte 0x48000010 # b .L_80224960
L_80224954:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80224960
    li 6, 0x1ff
L_80224960:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80224970
    li 0, 0x0
    .4byte 0x48000010 # b .L_8022497C
L_80224970:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_8022497C
    li 0, 0x1ff
L_8022497C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 4, 3, 22
L_8022499C:
    lis 3, lbl_8046AB2C@ha
    li 0, 0x2f
    addi 5, 3, lbl_8046AB2C@l
    clrlwi 3, 4, 16
    li 4, 0x0
    mtctr 0
L_802249B4:
    lhz 0, 0x0(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802249C8
    li 3, 0x1
    .4byte 0x48000028 # b .L_802249EC
L_802249C8:
    lhzu 0, 0x2(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802249DC
    li 3, 0x1
    .4byte 0x48000014 # b .L_802249EC
L_802249DC:
    addi 5, 5, 0x2
    addi 4, 4, 0x1
    .4byte 0x4200FFD0 # bdnz .L_802249B4
    li 3, 0x0
L_802249EC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80224A04:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    mr 30, 4
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    mr 4, 30
    .4byte 0x4080000C # bge .L_80224A38
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80224A3C
L_80224A38:
    addi 7, 3, 0xdc
L_80224A3C:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(31)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80224AA4
    lfs 1, 0x4(31)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80224AA4
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80224AA4
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80224AA4
    li 0, 0x1
L_80224AA4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80224AB4
    li 31, 0xf
    .4byte 0x48000084 # b .L_80224B34
L_80224AB4:
    fsubs 2, 2, 3
    lfs 1, 0x4(31)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80224AEC
    li 6, 0x0
    .4byte 0x48000010 # b .L_80224AF8
L_80224AEC:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80224AF8
    li 6, 0x1ff
L_80224AF8:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80224B08
    li 0, 0x0
    .4byte 0x48000010 # b .L_80224B14
L_80224B08:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80224B14
    li 0, 0x1ff
L_80224B14:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 31, 3, 22
L_80224B34:
    cmpwi 30, 0x8
    .4byte 0x40800034 # bge .L_80224B6C
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f1(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80224B6C
    clrlwi 0, 31, 16
    cmplwi 0, 0x1b0
    .4byte 0x4182000C # beq .L_80224B64
    cmplwi 0, 0x1bb
    .4byte 0x4082000C # bne .L_80224B6C
L_80224B64:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80224B70
L_80224B6C:
    li 3, 0x0
L_80224B70:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80224B88:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    mr 30, 4
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    mr 4, 30
    .4byte 0x4080000C # bge .L_80224BBC
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80224BC0
L_80224BBC:
    addi 7, 3, 0xdc
L_80224BC0:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(31)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80224C28
    lfs 1, 0x4(31)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80224C28
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80224C28
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80224C28
    li 0, 0x1
L_80224C28:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80224C38
    li 31, 0xf
    .4byte 0x48000084 # b .L_80224CB8
L_80224C38:
    fsubs 2, 2, 3
    lfs 1, 0x4(31)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80224C70
    li 6, 0x0
    .4byte 0x48000010 # b .L_80224C7C
L_80224C70:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80224C7C
    li 6, 0x1ff
L_80224C7C:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80224C8C
    li 0, 0x0
    .4byte 0x48000010 # b .L_80224C98
L_80224C8C:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80224C98
    li 0, 0x1ff
L_80224C98:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 31, 3, 22
L_80224CB8:
    cmpwi 30, 0x8
    .4byte 0x40800034 # bge .L_80224CF0
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f1(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80224CF0
    clrlwi 0, 31, 16
    cmplwi 0, 0x1b0
    .4byte 0x4182000C # beq .L_80224CE8
    cmplwi 0, 0x1bb
    .4byte 0x4082000C # bne .L_80224CF0
L_80224CE8:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80224CF4
L_80224CF0:
    li 3, 0x0
L_80224CF4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80224D0C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_80224D40
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80224D44
L_80224D40:
    addi 7, 3, 0xdc
L_80224D44:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80224DAC
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80224DAC
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80224DAC
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80224DAC
    li 0, 0x1
L_80224DAC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80224DBC
    li 0, 0xf
    .4byte 0x48000084 # b .L_80224E3C
L_80224DBC:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80224DF4
    li 6, 0x0
    .4byte 0x48000010 # b .L_80224E00
L_80224DF4:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80224E00
    li 6, 0x1ff
L_80224E00:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80224E10
    li 0, 0x0
    .4byte 0x48000010 # b .L_80224E1C
L_80224E10:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80224E1C
    li 0, 0x1ff
L_80224E1C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80224E3C:
    clrlwi 3, 0, 16
    .4byte 0xA002CFAC # lhz r0, lbl_8053FF4C@sda21(r0)
    .4byte 0x3882CFAC # li r4, lbl_8053FF4C@sda21
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80224E58
    li 3, 0x1
    .4byte 0x4800001C # b .L_80224E70
L_80224E58:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80224E6C
    li 3, 0x1
    .4byte 0x48000008 # b .L_80224E70
L_80224E6C:
    li 3, 0x0
L_80224E70:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80224E88:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_80224EBC
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80224EC0
L_80224EBC:
    addi 7, 3, 0xdc
L_80224EC0:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80224F28
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80224F28
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80224F28
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80224F28
    li 0, 0x1
L_80224F28:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80224F38
    li 0, 0xf
    .4byte 0x48000084 # b .L_80224FB8
L_80224F38:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80224F70
    li 6, 0x0
    .4byte 0x48000010 # b .L_80224F7C
L_80224F70:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80224F7C
    li 6, 0x1ff
L_80224F7C:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80224F8C
    li 0, 0x0
    .4byte 0x48000010 # b .L_80224F98
L_80224F8C:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80224F98
    li 0, 0x1ff
L_80224F98:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80224FB8:
    .4byte 0x38A2CFAC # li r5, lbl_8053FF4C@sda21
    clrlwi 4, 0, 16
    .4byte 0xA002CFAC # lhz r0, lbl_8053FF4C@sda21(r0)
    li 3, 0x0
    cmplw 4, 0
    .4byte 0x4082000C # bne .L_80224FD8
    li 3, 0x1
    .4byte 0x48000014 # b .L_80224FE8
L_80224FD8:
    lhz 0, 0x2(5)
    cmplw 4, 0
    .4byte 0x40820008 # bne .L_80224FE8
    li 3, 0x1
L_80224FE8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80225000:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_80225034
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80225038
L_80225034:
    addi 7, 3, 0xdc
L_80225038:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802250A0
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802250A0
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802250A0
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802250A0
    li 0, 0x1
L_802250A0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802250B0
    li 0, 0xf
    .4byte 0x48000084 # b .L_80225130
L_802250B0:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_802250E8
    li 6, 0x0
    .4byte 0x48000010 # b .L_802250F4
L_802250E8:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802250F4
    li 6, 0x1ff
L_802250F4:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80225104
    li 0, 0x0
    .4byte 0x48000010 # b .L_80225110
L_80225104:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80225110
    li 0, 0x1ff
L_80225110:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80225130:
    clrlwi 3, 0, 16
    .4byte 0xA002CFA8 # lhz r0, lbl_8053FF48@sda21(r0)
    .4byte 0x3882CFA8 # li r4, lbl_8053FF48@sda21
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8022514C
    li 3, 0x1
    .4byte 0x4800001C # b .L_80225164
L_8022514C:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225160
    li 3, 0x1
    .4byte 0x48000008 # b .L_80225164
L_80225160:
    li 3, 0x0
L_80225164:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8022517C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_802251B0
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_802251B4
L_802251B0:
    addi 7, 3, 0xdc
L_802251B4:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8022521C
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8022521C
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8022521C
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8022521C
    li 0, 0x1
L_8022521C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022522C
    li 0, 0xf
    .4byte 0x48000084 # b .L_802252AC
L_8022522C:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80225264
    li 6, 0x0
    .4byte 0x48000010 # b .L_80225270
L_80225264:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80225270
    li 6, 0x1ff
L_80225270:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80225280
    li 0, 0x0
    .4byte 0x48000010 # b .L_8022528C
L_80225280:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_8022528C
    li 0, 0x1ff
L_8022528C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_802252AC:
    .4byte 0x38A2CFA8 # li r5, lbl_8053FF48@sda21
    clrlwi 4, 0, 16
    .4byte 0xA002CFA8 # lhz r0, lbl_8053FF48@sda21(r0)
    li 3, 0x0
    cmplw 4, 0
    .4byte 0x4082000C # bne .L_802252CC
    li 3, 0x1
    .4byte 0x48000014 # b .L_802252DC
L_802252CC:
    lhz 0, 0x2(5)
    cmplw 4, 0
    .4byte 0x40820008 # bne .L_802252DC
    li 3, 0x1
L_802252DC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802252F4:
    stwu 1, -0x40(1)
    mflr 0
    lis 5, lbl_8046AAB0@ha
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    addi 31, 5, lbl_8046AAB0@l
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    mr 29, 4
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_80225330
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80225334
L_80225330:
    addi 6, 3, 0xdc
L_80225334:
    lwz 3, 0x0(6)
    li 0, 0x0
    lwz 5, 0x4(6)
    stw 3, 0x8(1)
    lwz 4, 0x8(6)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(6)
    fcmpo cr0, 2, 3
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8022539C
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8022539C
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8022539C
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8022539C
    li 0, 0x1
L_8022539C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802253AC
    li 30, 0xf
    .4byte 0x48000088 # b .L_80225430
L_802253AC:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_802253E4
    li 6, 0x0
    .4byte 0x48000010 # b .L_802253F0
L_802253E4:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802253F0
    li 6, 0x1ff
L_802253F0:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80225400
    li 0, 0x0
    .4byte 0x48000010 # b .L_8022540C
L_80225400:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_8022540C
    li 0, 0x1ff
L_8022540C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    mr 4, 29
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 30, 3, 22
L_80225430:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182013C # beq .L_80225578
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820048 # bne .L_80225494
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80225494
    li 0, 0xd
    addi 4, 31, 0x38
    clrlwi 3, 30, 16
    mtctr 0
L_80225470:
    lhz 0, 0x0(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225484
    li 3, 0x1
    .4byte 0x48000158 # b .L_802255D8
L_80225484:
    addi 4, 4, 0x2
    .4byte 0x4200FFE8 # bdnz .L_80225470
    li 3, 0x0
    .4byte 0x48000148 # b .L_802255D8
L_80225494:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x408200D0 # bne .L_80225570
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x408200C0 # bne .L_80225570
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_8022553C
    addi 4, 31, 0x70
    clrlwi 3, 30, 16
    lhz 0, 0x0(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802254E8
    li 3, 0x1
    .4byte 0x480000F4 # b .L_802255D8
L_802254E8:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802254FC
    li 3, 0x1
    .4byte 0x480000E0 # b .L_802255D8
L_802254FC:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225510
    li 3, 0x1
    .4byte 0x480000CC # b .L_802255D8
L_80225510:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225524
    li 3, 0x1
    .4byte 0x480000B8 # b .L_802255D8
L_80225524:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082003C # bne .L_80225568
    li 3, 0x1
    .4byte 0x480000A4 # b .L_802255D8
    .4byte 0x48000030 # b .L_80225568
L_8022553C:
    li 0, 0xd
    addi 4, 31, 0x54
    clrlwi 3, 30, 16
    mtctr 0
L_8022554C:
    lhz 0, 0x0(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225560
    li 3, 0x1
    .4byte 0x4800007C # b .L_802255D8
L_80225560:
    addi 4, 4, 0x2
    .4byte 0x4200FFE8 # bdnz .L_8022554C
L_80225568:
    li 3, 0x0
    .4byte 0x4800006C # b .L_802255D8
L_80225570:
    li 3, 0x0
    .4byte 0x48000064 # b .L_802255D8
L_80225578:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x128(3)
    lwz 3, 0x12c(3)
    slwi 0, 0, 2
    add 0, 3, 0
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_802255A0
    cmpwi 0, 0x9
    .4byte 0x40820038 # bne .L_802255D4
L_802255A0:
    li 0, 0xd
    addi 4, 31, 0x38
    clrlwi 3, 30, 16
    mtctr 0
L_802255B0:
    lhz 0, 0x0(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802255C4
    li 3, 0x1
    .4byte 0x48000018 # b .L_802255D8
L_802255C4:
    addi 4, 4, 0x2
    .4byte 0x4200FFE8 # bdnz .L_802255B0
    li 3, 0x0
    .4byte 0x48000008 # b .L_802255D8
L_802255D4:
    li 3, 0x0
L_802255D8:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802255F4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_802252F4
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80225614:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 4
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    mr 31, 28
    .4byte 0x4080000C # bge .L_80225650
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80225654
L_80225650:
    addi 6, 3, 0xdc
L_80225654:
    lwz 3, 0x0(6)
    li 0, 0x0
    lwz 5, 0x4(6)
    stw 3, 0x8(1)
    lwz 4, 0x8(6)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(6)
    fcmpo cr0, 2, 3
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802256BC
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802256BC
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802256BC
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802256BC
    li 0, 0x1
L_802256BC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802256CC
    li 0, 0xf
    .4byte 0x48000088 # b .L_80225750
L_802256CC:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80225704
    li 6, 0x0
    .4byte 0x48000010 # b .L_80225710
L_80225704:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80225710
    li 6, 0x1ff
L_80225710:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80225720
    li 0, 0x0
    .4byte 0x48000010 # b .L_8022572C
L_80225720:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_8022572C
    li 0, 0x1ff
L_8022572C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    mr 4, 31
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80225750:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 0, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 29, 3, 0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8022579C
    clrlwi. 0, 29, 16
    .4byte 0x4082000C # bne .L_80225788
    li 0, 0x2
    .4byte 0x480000C0 # b .L_80225844
L_80225788:
    cmplwi 0, 0x61
    .4byte 0x408200B8 # bne .L_80225844
    li 0, 0x0
    .4byte 0x480000B0 # b .L_80225844
    .4byte 0x480000AC # b .L_80225844
L_8022579C:
    clrlwi 0, 29, 16
    cmplwi 0, 0xe
    .4byte 0x4082009C # bne .L_80225840
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_80225840
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_802257D8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_80225838
L_802257D8:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x4082005C # bne .L_80225840
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_80225840
    bl GetRoomConfigRecord
    lwz 28, 0x14(3)
    bl GetRoomConfigRecord
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x18(31)
    add 3, 28, 3
    mulli 0, 0, 0xa
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpwi 0, 0x10
    .4byte 0x4082001C # bne .L_80225840
    lfs 1, 0x4(30)
    .4byte 0xC002CFB0 # lfs f0, lbl_8053FF50@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80225840
L_80225838:
    li 0, 0x51
    .4byte 0x48000008 # b .L_80225844
L_80225840:
    clrlwi 0, 29, 16
L_80225844:
    lis 4, lbl_8046AADC@ha
    clrlwi 3, 0, 16
    lhzu 0, lbl_8046AADC@l(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225860
    li 3, 0x1
    .4byte 0x48000058 # b .L_802258B4
L_80225860:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225874
    li 3, 0x1
    .4byte 0x48000044 # b .L_802258B4
L_80225874:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225888
    li 3, 0x1
    .4byte 0x48000030 # b .L_802258B4
L_80225888:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8022589C
    li 3, 0x1
    .4byte 0x4800001C # b .L_802258B4
L_8022589C:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802258B0
    li 3, 0x1
    .4byte 0x48000008 # b .L_802258B4
L_802258B0:
    li 3, 0x0
L_802258B4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802258D4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 4
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    mr 31, 28
    .4byte 0x4080000C # bge .L_80225910
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80225914
L_80225910:
    addi 6, 3, 0xdc
L_80225914:
    lwz 3, 0x0(6)
    li 0, 0x0
    lwz 5, 0x4(6)
    stw 3, 0x8(1)
    lwz 4, 0x8(6)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(6)
    fcmpo cr0, 2, 3
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8022597C
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8022597C
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8022597C
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8022597C
    li 0, 0x1
L_8022597C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022598C
    li 0, 0xf
    .4byte 0x48000088 # b .L_80225A10
L_8022598C:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_802259C4
    li 6, 0x0
    .4byte 0x48000010 # b .L_802259D0
L_802259C4:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802259D0
    li 6, 0x1ff
L_802259D0:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802259E0
    li 0, 0x0
    .4byte 0x48000010 # b .L_802259EC
L_802259E0:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_802259EC
    li 0, 0x1ff
L_802259EC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    mr 4, 31
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80225A10:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 0, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 29, 3, 0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80225A5C
    clrlwi. 0, 29, 16
    .4byte 0x4082000C # bne .L_80225A48
    li 0, 0x2
    .4byte 0x480000C0 # b .L_80225B04
L_80225A48:
    cmplwi 0, 0x61
    .4byte 0x408200B8 # bne .L_80225B04
    li 0, 0x0
    .4byte 0x480000B0 # b .L_80225B04
    .4byte 0x480000AC # b .L_80225B04
L_80225A5C:
    clrlwi 0, 29, 16
    cmplwi 0, 0xe
    .4byte 0x4082009C # bne .L_80225B00
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_80225B00
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_80225A98
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_80225AF8
L_80225A98:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x4082005C # bne .L_80225B00
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_80225B00
    bl GetRoomConfigRecord
    lwz 28, 0x14(3)
    bl GetRoomConfigRecord
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x18(31)
    add 3, 28, 3
    mulli 0, 0, 0xa
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpwi 0, 0x10
    .4byte 0x4082001C # bne .L_80225B00
    lfs 1, 0x4(30)
    .4byte 0xC002CFB0 # lfs f0, lbl_8053FF50@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80225B00
L_80225AF8:
    li 0, 0x51
    .4byte 0x48000008 # b .L_80225B04
L_80225B00:
    clrlwi 0, 29, 16
L_80225B04:
    lis 4, lbl_8046AAC8@ha
    clrlwi 3, 0, 16
    lhzu 0, lbl_8046AAC8@l(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225B20
    li 3, 0x1
    .4byte 0x480000A8 # b .L_80225BC4
L_80225B20:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225B34
    li 3, 0x1
    .4byte 0x48000094 # b .L_80225BC4
L_80225B34:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225B48
    li 3, 0x1
    .4byte 0x48000080 # b .L_80225BC4
L_80225B48:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225B5C
    li 3, 0x1
    .4byte 0x4800006C # b .L_80225BC4
L_80225B5C:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225B70
    li 3, 0x1
    .4byte 0x48000058 # b .L_80225BC4
L_80225B70:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225B84
    li 3, 0x1
    .4byte 0x48000044 # b .L_80225BC4
L_80225B84:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225B98
    li 3, 0x1
    .4byte 0x48000030 # b .L_80225BC4
L_80225B98:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225BAC
    li 3, 0x1
    .4byte 0x4800001C # b .L_80225BC4
L_80225BAC:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225BC0
    li 3, 0x1
    .4byte 0x48000008 # b .L_80225BC4
L_80225BC0:
    li 3, 0x0
L_80225BC4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80225BE4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 4
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    mr 31, 28
    .4byte 0x4080000C # bge .L_80225C20
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80225C24
L_80225C20:
    addi 6, 3, 0xdc
L_80225C24:
    lwz 3, 0x0(6)
    li 0, 0x0
    lwz 5, 0x4(6)
    stw 3, 0x8(1)
    lwz 4, 0x8(6)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(6)
    fcmpo cr0, 2, 3
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80225C8C
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80225C8C
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80225C8C
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80225C8C
    li 0, 0x1
L_80225C8C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80225C9C
    li 0, 0xf
    .4byte 0x48000088 # b .L_80225D20
L_80225C9C:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80225CD4
    li 6, 0x0
    .4byte 0x48000010 # b .L_80225CE0
L_80225CD4:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80225CE0
    li 6, 0x1ff
L_80225CE0:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80225CF0
    li 0, 0x0
    .4byte 0x48000010 # b .L_80225CFC
L_80225CF0:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80225CFC
    li 0, 0x1ff
L_80225CFC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    mr 4, 31
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80225D20:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 0, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 29, 3, 0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80225D6C
    clrlwi. 0, 29, 16
    .4byte 0x4082000C # bne .L_80225D58
    li 0, 0x2
    .4byte 0x480000C0 # b .L_80225E14
L_80225D58:
    cmplwi 0, 0x61
    .4byte 0x408200B8 # bne .L_80225E14
    li 0, 0x0
    .4byte 0x480000B0 # b .L_80225E14
    .4byte 0x480000AC # b .L_80225E14
L_80225D6C:
    clrlwi 0, 29, 16
    cmplwi 0, 0xe
    .4byte 0x4082009C # bne .L_80225E10
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_80225E10
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_80225DA8
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_80225E08
L_80225DA8:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x4082005C # bne .L_80225E10
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_80225E10
    bl GetRoomConfigRecord
    lwz 28, 0x14(3)
    bl GetRoomConfigRecord
    mr 31, 3
    bl GetRoomConfigRecord
    lwz 0, 0x18(31)
    add 3, 28, 3
    mulli 0, 0, 0xa
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpwi 0, 0x10
    .4byte 0x4082001C # bne .L_80225E10
    lfs 1, 0x4(30)
    .4byte 0xC002CFB0 # lfs f0, lbl_8053FF50@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80225E10
L_80225E08:
    li 0, 0x51
    .4byte 0x48000008 # b .L_80225E14
L_80225E10:
    clrlwi 0, 29, 16
L_80225E14:
    lis 4, lbl_8046AAC8@ha
    clrlwi 3, 0, 16
    lhzu 0, lbl_8046AAC8@l(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225E30
    li 3, 0x1
    .4byte 0x480000A8 # b .L_80225ED4
L_80225E30:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225E44
    li 3, 0x1
    .4byte 0x48000094 # b .L_80225ED4
L_80225E44:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225E58
    li 3, 0x1
    .4byte 0x48000080 # b .L_80225ED4
L_80225E58:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225E6C
    li 3, 0x1
    .4byte 0x4800006C # b .L_80225ED4
L_80225E6C:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225E80
    li 3, 0x1
    .4byte 0x48000058 # b .L_80225ED4
L_80225E80:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225E94
    li 3, 0x1
    .4byte 0x48000044 # b .L_80225ED4
L_80225E94:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225EA8
    li 3, 0x1
    .4byte 0x48000030 # b .L_80225ED4
L_80225EA8:
    lhzu 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225EBC
    li 3, 0x1
    .4byte 0x4800001C # b .L_80225ED4
L_80225EBC:
    lhz 0, 0x2(4)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80225ED0
    li 3, 0x1
    .4byte 0x48000008 # b .L_80225ED4
L_80225ED0:
    li 3, 0x0
L_80225ED4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80225EF4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_80225F28
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80225F2C
L_80225F28:
    addi 7, 3, 0xdc
L_80225F2C:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80225F94
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80225F94
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80225F94
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80225F94
    li 0, 0x1
L_80225F94:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80225FA4
    li 4, 0xf
    .4byte 0x48000084 # b .L_80226024
L_80225FA4:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80225FDC
    li 6, 0x0
    .4byte 0x48000010 # b .L_80225FE8
L_80225FDC:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80225FE8
    li 6, 0x1ff
L_80225FE8:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80225FF8
    li 0, 0x0
    .4byte 0x48000010 # b .L_80226004
L_80225FF8:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80226004
    li 0, 0x1ff
L_80226004:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 4, 3, 22
L_80226024:
    lis 3, lbl_8046AAB0@ha
    li 0, 0x2
    addi 5, 3, lbl_8046AAB0@l
    clrlwi 3, 4, 16
    li 4, 0x0
    mtctr 0
L_8022603C:
    lhz 0, 0x0(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80226050
    li 3, 0x1
    .4byte 0x48000078 # b .L_802260C4
L_80226050:
    lhzu 0, 0x2(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80226064
    li 3, 0x1
    .4byte 0x48000064 # b .L_802260C4
L_80226064:
    lhzu 0, 0x2(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80226078
    li 3, 0x1
    .4byte 0x48000050 # b .L_802260C4
L_80226078:
    lhzu 0, 0x2(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_8022608C
    li 3, 0x1
    .4byte 0x4800003C # b .L_802260C4
L_8022608C:
    lhzu 0, 0x2(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802260A0
    li 3, 0x1
    .4byte 0x48000028 # b .L_802260C4
L_802260A0:
    lhzu 0, 0x2(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_802260B4
    li 3, 0x1
    .4byte 0x48000014 # b .L_802260C4
L_802260B4:
    addi 5, 5, 0x2
    addi 4, 4, 0x5
    .4byte 0x4200FF80 # bdnz .L_8022603C
    li 3, 0x0
L_802260C4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_802260DC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 28, 3
    mr 27, 4
    mr 29, 5
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    mr 30, 27
    .4byte 0x4080000C # bge .L_80226110
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80226114
L_80226110:
    addi 6, 3, 0xdc
L_80226114:
    lwz 3, 0x0(6)
    li 0, 0x0
    lwz 5, 0x4(6)
    stw 3, 0x8(1)
    lwz 4, 0x8(6)
    lfs 2, 0x0(28)
    lfs 3, 0x8(1)
    lwz 3, 0xc(6)
    fcmpo cr0, 2, 3
    stw 5, 0xc(1)
    stw 4, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8022617C
    lfs 1, 0x4(28)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8022617C
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8022617C
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8022617C
    li 0, 0x1
L_8022617C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022618C
    li 0, 0xf
    .4byte 0x48000088 # b .L_80226210
L_8022618C:
    fsubs 2, 2, 3
    lfs 1, 0x4(28)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_802261C4
    li 6, 0x0
    .4byte 0x48000010 # b .L_802261D0
L_802261C4:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802261D0
    li 6, 0x1ff
L_802261D0:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802261E0
    li 0, 0x0
    .4byte 0x48000010 # b .L_802261EC
L_802261E0:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_802261EC
    li 0, 0x1ff
L_802261EC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    mr 4, 30
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 0, 3, 22
L_80226210:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 0, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 31, 3, 0
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8022625C
    clrlwi. 0, 31, 16
    .4byte 0x4082000C # bne .L_80226248
    li 0, 0x2
    .4byte 0x480000C0 # b .L_80226304
L_80226248:
    cmplwi 0, 0x61
    .4byte 0x408200B8 # bne .L_80226304
    li 0, 0x0
    .4byte 0x480000B0 # b .L_80226304
    .4byte 0x480000AC # b .L_80226304
L_8022625C:
    clrlwi 0, 31, 16
    cmplwi 0, 0xe
    .4byte 0x4082009C # bne .L_80226300
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_80226300
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_80226298
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_802262F8
L_80226298:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x4082005C # bne .L_80226300
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_80226300
    bl GetRoomConfigRecord
    lwz 27, 0x14(3)
    bl GetRoomConfigRecord
    mr 30, 3
    bl GetRoomConfigRecord
    lwz 0, 0x18(30)
    add 3, 27, 3
    mulli 0, 0, 0xa
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpwi 0, 0x10
    .4byte 0x4082001C # bne .L_80226300
    lfs 1, 0x4(28)
    .4byte 0xC002CFB0 # lfs f0, lbl_8053FF50@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80226300
L_802262F8:
    li 0, 0x51
    .4byte 0x48000008 # b .L_80226304
L_80226300:
    clrlwi 0, 31, 16
L_80226304:
    clrlwi. 27, 0, 16
    .4byte 0x41820014 # beq .L_8022631C
    cmpwi 27, 0x2
    .4byte 0x4182000C # beq .L_8022631C
    cmpwi 27, 0x50
    .4byte 0x4082000C # bne .L_80226324
L_8022631C:
    li 3, 0x0
    .4byte 0x480002A8 # b .L_802265C8
L_80226324:
    cmpwi 27, 0x22
    .4byte 0x4082001C # bne .L_80226344
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80226344
    li 3, 0x0
    .4byte 0x48000288 # b .L_802265C8
L_80226344:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80226368
    cmpwi 27, 0xc
    .4byte 0x4182000C # beq .L_80226360
    cmpwi 27, 0x39
    .4byte 0x4082000C # bne .L_80226368
L_80226360:
    li 3, 0x0
    .4byte 0x48000264 # b .L_802265C8
L_80226368:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_80226394
    cmpwi 27, 0x3
    .4byte 0x41820014 # beq .L_8022638C
    cmpwi 27, 0xe
    .4byte 0x4182000C # beq .L_8022638C
    cmpwi 27, 0x3a
    .4byte 0x4082000C # bne .L_80226394
L_8022638C:
    li 3, 0x0
    .4byte 0x48000238 # b .L_802265C8
L_80226394:
    clrlwi 0, 29, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802263B8
    cmpwi 27, 0x4c
    .4byte 0x41800014 # blt .L_802263B8
    cmpwi 27, 0x4f
    .4byte 0x4181000C # bgt .L_802263B8
    li 3, 0x0
    .4byte 0x48000214 # b .L_802265C8
L_802263B8:
    cmpwi 27, 0x25
    .4byte 0x40820018 # bne .L_802263D4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x480001F8 # b .L_802265C8
L_802263D4:
    cmpwi 27, 0x26
    .4byte 0x4082001C # bne .L_802263F4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x480001D8 # b .L_802265C8
L_802263F4:
    cmpwi 27, 0x4
    .4byte 0x40820028 # bne .L_80226420
    lfs 0, 0x4(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x418001B0 # blt .L_802265C4
    li 3, 0x0
    .4byte 0x480001AC # b .L_802265C8
L_80226420:
    cmpwi 27, 0x5
    .4byte 0x40820028 # bne .L_8022644C
    lfs 0, 0x4(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x40800184 # bge .L_802265C4
    li 3, 0x0
    .4byte 0x48000180 # b .L_802265C8
L_8022644C:
    cmpwi 27, 0x6
    .4byte 0x40820028 # bne .L_80226478
    lfs 0, 0x0(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x41800158 # blt .L_802265C4
    li 3, 0x0
    .4byte 0x48000154 # b .L_802265C8
L_80226478:
    cmpwi 27, 0x7
    .4byte 0x40820028 # bne .L_802264A4
    lfs 0, 0x0(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x4080012C # bge .L_802265C4
    li 3, 0x0
    .4byte 0x48000128 # b .L_802265C8
L_802264A4:
    cmpwi 27, 0x18
    .4byte 0x40820044 # bne .L_802264EC
    lfs 0, 0x0(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x40800020 # bge .L_802264E4
    lfs 0, 0x4(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x418000E4 # blt .L_802265C4
L_802264E4:
    li 3, 0x0
    .4byte 0x480000E0 # b .L_802265C8
L_802264EC:
    cmpwi 27, 0x19
    .4byte 0x40820044 # bne .L_80226534
    lfs 0, 0x0(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x41800020 # blt .L_8022652C
    lfs 0, 0x4(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x4180009C # blt .L_802265C4
L_8022652C:
    li 3, 0x0
    .4byte 0x48000098 # b .L_802265C8
L_80226534:
    cmpwi 27, 0x1a
    .4byte 0x40820044 # bne .L_8022657C
    lfs 0, 0x0(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x40800020 # bge .L_80226574
    lfs 0, 0x4(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x40800054 # bge .L_802265C4
L_80226574:
    li 3, 0x0
    .4byte 0x48000050 # b .L_802265C8
L_8022657C:
    cmpwi 27, 0x1b
    .4byte 0x40820044 # bne .L_802265C4
    lfs 0, 0x0(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x41800020 # blt .L_802265BC
    lfs 0, 0x4(28)
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 28
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_802265C4
L_802265BC:
    li 3, 0x0
    .4byte 0x48000008 # b .L_802265C8
L_802265C4:
    li 3, 0x1
L_802265C8:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

