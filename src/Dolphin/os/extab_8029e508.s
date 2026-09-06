# Fresh project-wide gap hunt (beyond the closed 901KB/dispatch-cross-
# check territories): 25 functions, 23,472 bytes, fully contiguous.
# Found+verified via a full-DOL gapcheck.py scan (both real .text
# sections) followed by spanwalk.py/resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000C36C
etb_8000C36C:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000C36C, 8

.global etb_8000C374
etb_8000C374:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C374, 8

.global etb_8000C37C
etb_8000C37C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C37C, 8

.global etb_8000C384
etb_8000C384:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000C384, 8

.global etb_8000C38C
etb_8000C38C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000C38C, 8

.global etb_8000C394
etb_8000C394:
    .4byte 0x810A0000
    .4byte 0x00000000
.size etb_8000C394, 8

.global etb_8000C39C
etb_8000C39C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C39C, 8

.global etb_8000C3A4
etb_8000C3A4:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_8000C3A4, 8

.global etb_8000C3AC
etb_8000C3AC:
    .4byte 0x588A0000
    .4byte 0x00000000
.size etb_8000C3AC, 8

.global etb_8000C3B4
etb_8000C3B4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C3B4, 8

.global etb_8000C3BC
etb_8000C3BC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C3BC, 8

.global etb_8000C3C4
etb_8000C3C4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C3C4, 8

.global etb_8000C3CC
etb_8000C3CC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C3CC, 8

.global etb_8000C3D4
etb_8000C3D4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C3D4, 8

.global etb_8000C3DC
etb_8000C3DC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C3DC, 8

.global etb_8000C3E4
etb_8000C3E4:
    .4byte 0x580A0000
    .4byte 0x00000000
.size etb_8000C3E4, 8

.global etb_8000C3EC
etb_8000C3EC:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000C3EC, 8

.global etb_8000C3F4
etb_8000C3F4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C3F4, 8

.global etb_8000C3FC
etb_8000C3FC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C3FC, 8

.global etb_8000C404
etb_8000C404:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000C404, 8

.global etb_8000C40C
etb_8000C40C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000C40C, 8

.global etb_8000C414
etb_8000C414:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000C414, 8

.global etb_8000C41C
etb_8000C41C:
    .4byte 0x10080000
    .4byte 0x00000048
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8000C41C, 24

.global etb_8000C434
etb_8000C434:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000C434, 8

.section extabindex, "a"
.balign 4
.global eti_8001AEE4
eti_8001AEE4:
    .4byte fn_8029E508
    .4byte 0x00000380
    .4byte etb_8000C36C
.size eti_8001AEE4, 12

.global eti_8001AEF0
eti_8001AEF0:
    .4byte fn_8029E888
    .4byte 0x000000A0
    .4byte etb_8000C374
.size eti_8001AEF0, 12

.global eti_8001AEFC
eti_8001AEFC:
    .4byte fn_8029E928
    .4byte 0x000000C4
    .4byte etb_8000C37C
.size eti_8001AEFC, 12

.global eti_8001AF08
eti_8001AF08:
    .4byte fn_8029E9EC
    .4byte 0x00000298
    .4byte etb_8000C384
.size eti_8001AF08, 12

.global eti_8001AF14
eti_8001AF14:
    .4byte fn_8029EC84
    .4byte 0x00000134
    .4byte etb_8000C38C
.size eti_8001AF14, 12

.global eti_8001AF20
eti_8001AF20:
    .4byte fn_8029EDB8
    .4byte 0x00001438
    .4byte etb_8000C394
.size eti_8001AF20, 12

.global eti_8001AF2C
eti_8001AF2C:
    .4byte fn_802A01F0
    .4byte 0x000000B8
    .4byte etb_8000C39C
.size eti_8001AF2C, 12

.global eti_8001AF38
eti_8001AF38:
    .4byte fn_802A02A8
    .4byte 0x00000558
    .4byte etb_8000C3A4
.size eti_8001AF38, 12

.global eti_8001AF44
eti_8001AF44:
    .4byte fn_802A0800
    .4byte 0x00000850
    .4byte etb_8000C3AC
.size eti_8001AF44, 12

.global eti_8001AF50
eti_8001AF50:
    .4byte fn_802A1050
    .4byte 0x00000440
    .4byte etb_8000C3B4
.size eti_8001AF50, 12

.global eti_8001AF5C
eti_8001AF5C:
    .4byte fn_802A1490
    .4byte 0x000000C4
    .4byte etb_8000C3BC
.size eti_8001AF5C, 12

.global eti_8001AF68
eti_8001AF68:
    .4byte fn_802A1554
    .4byte 0x00000134
    .4byte etb_8000C3C4
.size eti_8001AF68, 12

.global eti_8001AF74
eti_8001AF74:
    .4byte fn_802A1688
    .4byte 0x000001BC
    .4byte etb_8000C3CC
.size eti_8001AF74, 12

.global eti_8001AF80
eti_8001AF80:
    .4byte fn_802A1844
    .4byte 0x00000500
    .4byte etb_8000C3D4
.size eti_8001AF80, 12

.global eti_8001AF8C
eti_8001AF8C:
    .4byte fn_802A1D44
    .4byte 0x000003AC
    .4byte etb_8000C3DC
.size eti_8001AF8C, 12

.global eti_8001AF98
eti_8001AF98:
    .4byte fn_802A20F0
    .4byte 0x00001074
    .4byte etb_8000C3E4
.size eti_8001AF98, 12

.global eti_8001AFA4
eti_8001AFA4:
    .4byte fn_802A3164
    .4byte 0x000006B8
    .4byte etb_8000C3EC
.size eti_8001AFA4, 12

.global eti_8001AFB0
eti_8001AFB0:
    .4byte fn_802A381C
    .4byte 0x00000068
    .4byte etb_8000C3F4
.size eti_8001AFB0, 12

.global eti_8001AFBC
eti_8001AFBC:
    .4byte fn_802A3884
    .4byte 0x000000C4
    .4byte etb_8000C3FC
.size eti_8001AFBC, 12

.global eti_8001AFC8
eti_8001AFC8:
    .4byte fn_802A3948
    .4byte 0x000000C4
    .4byte etb_8000C404
.size eti_8001AFC8, 12

.global eti_8001AFD4
eti_8001AFD4:
    .4byte fn_802A3A0C
    .4byte 0x00000374
    .4byte etb_8000C40C
.size eti_8001AFD4, 12

.global eti_8001AFE0
eti_8001AFE0:
    .4byte fn_802A3DA4
    .4byte 0x00000088
    .4byte etb_8000C414
.size eti_8001AFE0, 12

.global eti_8001AFEC
eti_8001AFEC:
    .4byte fn_802A3E2C
    .4byte 0x00000068
    .4byte etb_8000C41C
.size eti_8001AFEC, 12

.global eti_8001AFF8
eti_8001AFF8:
    .4byte fn_802A3E94
    .4byte 0x00000224
    .4byte etb_8000C434
.size eti_8001AFF8, 12

.text
.balign 4
.global fn_8029E508
.global fn_8029E888
.global fn_8029E928
.global fn_8029E9EC
.global fn_8029EC84
.global fn_8029EDB8
.global fn_802A01F0
.global fn_802A02A8
.global fn_802A0800
.global fn_802A1050
.global fn_802A1490
.global fn_802A1554
.global fn_802A1688
.global fn_802A1844
.global fn_802A1D44
.global fn_802A20F0
.global fn_802A3164
.global fn_802A381C
.global fn_802A3884
.global fn_802A3948
.global fn_802A3A0C
.global fn_802A3D80
.global fn_802A3DA4
.global fn_802A3E2C
.global fn_802A3E94

fn_8029E508:
    stwu 1, -0x50(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x54(1)
    lfs 0, 0x0(4)
    stmw 26, 0x38(1)
    mr 26, 3
    mr 31, 6
    mr 27, 4
    mr 28, 5
    addi 3, 1, 0x18
    mr 4, 31
    stfs 1, 0x1c(1)
    stfs 0, 0x18(1)
    bl fn_80226BC4
    stw 3, 0x20(26)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(26)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(26)
    mr 3, 28
    bl fn_8023E724
    lhz 0, 0x24(26)
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    cmplwi 0, 0x19c
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    .4byte 0x4182000C # beq .L_8029E58C
    cmplwi 0, 0x19d
    .4byte 0x408202E8 # bne .L_8029E870
L_8029E58C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 30, 0x0
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820084 # bne .L_8029E620
    li 29, 0x0
L_8029E5A4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 29
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_8029E610
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_8029E610
    mr 3, 29
    bl fn_80303750
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8029E610
    mr 3, 29
    bl fn_8022C8EC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8029E610
    li 30, 0x1
L_8029E610:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF8C # blt .L_8029E5A4
    .4byte 0x48000030 # b .L_8029E64C
L_8029E620:
    li 3, 0x0
    bl fn_80303750
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8029E64C
    li 3, 0x0
    bl fn_8022C8EC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8029E64C
    li 30, 0x1
L_8029E64C:
    cmpwi 30, 0x0
    .4byte 0x40820208 # bne .L_8029E858
    lhz 0, 0x24(26)
    cmplwi 0, 0x19d
    .4byte 0x408200F8 # bne .L_8029E754
    lwz 26, 0x20(26)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x19f
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 31
    clrlwi 5, 26, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_8029E6B8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_8029E6B8:
    lfs 2, 0x0(27)
    addi 3, 1, 0x10
    .4byte 0xC002D7E0 # lfs f0, lbl_80540780@sda21(r0)
    rlwinm 4, 31, 0, 24, 30
    lfs 1, 0x4(27)
    fsubs 2, 2, 0
    .4byte 0xC002D7E4 # lfs f0, lbl_80540784@sda21(r0)
    stfs 1, 0x24(1)
    .4byte 0x834D90D8 # lwz r26, lbl_8053AC98@sda21(r0)
    stfs 2, 0x20(1)
    stfs 0, 0x28(1)
    stfs 2, 0x10(1)
    stfs 1, 0x14(1)
    bl fn_80226BC4
    stw 3, 0x20(26)
    lwz 27, 0x20(26)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x19e
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(26)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x4182010C # beq .L_8029E844
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x480000F4 # b .L_8029E844
L_8029E754:
    lwz 26, 0x20(26)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x19e
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 31
    clrlwi 5, 26, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_8029E7AC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_8029E7AC:
    .4byte 0xC042D7E0 # lfs f2, lbl_80540780@sda21(r0)
    addi 3, 1, 0x8
    lfs 0, 0x0(27)
    rlwinm 4, 31, 0, 24, 30
    lfs 1, 0x4(27)
    fadds 2, 2, 0
    .4byte 0xC002D7E4 # lfs f0, lbl_80540784@sda21(r0)
    stfs 1, 0x24(1)
    .4byte 0x834D90D8 # lwz r26, lbl_8053AC98@sda21(r0)
    stfs 2, 0x20(1)
    stfs 0, 0x28(1)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_80226BC4
    stw 3, 0x20(26)
    lwz 27, 0x20(26)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x19f
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(26)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_8029E844
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_8029E844:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x7
    bl fn_80230FD0
    .4byte 0x48000014 # b .L_8029E868
L_8029E858:
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x17
    bl fn_80230FD0
L_8029E868:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8029E874
L_8029E870:
    li 3, 0x0
L_8029E874:
    lmw 26, 0x38(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8029E888:
    stwu 1, -0x30(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x34(1)
    lfs 0, 0x0(4)
    stw 31, 0x2c(1)
    mr 31, 6
    mr 4, 31
    stw 30, 0x28(1)
    mr 30, 5
    stw 29, 0x24(1)
    mr 29, 3
    addi 3, 1, 0x8
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(29)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(29)
    mr 3, 30
    bl fn_8023E724
    lhz 0, 0x24(29)
    psq_l 1, 0x0(3), 0, 0
    subfic 0, 0, 0x30
    lfs 0, 0x8(3)
    cntlzw 0, 0
    lwz 31, 0x2c(1)
    extrwi 3, 0, 8, 19
    lwz 0, 0x34(1)
    lwz 30, 0x28(1)
    psq_st 1, 0x10(1), 0, 0
    lwz 29, 0x24(1)
    stfs 0, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8029E928:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x24(1)
    addi 3, 1, 0x8
    lfs 0, 0x0(4)
    rlwinm 4, 5, 0, 24, 30
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 6
    stw 28, 0x10(1)
    mr 28, 5
    stfs 1, 0xc(1)
    .4byte 0x83ED90D8 # lwz r31, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(31)
    lwz 30, 0x20(31)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 28
    mr 5, 30
    clrlwi 6, 29, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(31)
    mr 4, 28
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 30, 3
    cmpwi 30, -0x1
    .4byte 0x41820018 # beq .L_8029E9CC
    bl GetRoomConfigRecord
    mr 4, 28
    mr 5, 30
    li 6, 0x1
    bl fn_802D7D00
L_8029E9CC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029E9EC:
    stwu 1, -0x50(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x54(1)
    lfs 0, 0x0(4)
    stmw 26, 0x38(1)
    mr 26, 3
    mr 31, 5
    mr 27, 4
    mr 30, 6
    mr 29, 7
    mr 28, 8
    mr 4, 31
    addi 3, 1, 0x28
    stfs 1, 0x2c(1)
    stfs 0, 0x28(1)
    bl fn_80226BC4
    stw 3, 0x20(26)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(26)
    lwz 3, 0x20(3)
    bl fn_802F9908
    cmpwi 29, 0x0
    sth 3, 0x24(26)
    .4byte 0x408201A0 # bne .L_8029EBF0
    clrlwi 0, 30, 16
    cmplwi 0, 0x21
    .4byte 0x4180000C # blt .L_8029EA68
    cmplwi 0, 0x25
    .4byte 0x40810028 # ble .L_8029EA8C
L_8029EA68:
    subi 0, 30, 0x26
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810018 # ble .L_8029EA8C
    clrlwi 0, 30, 16
    cmplwi 0, 0x36
    .4byte 0x4182000C # beq .L_8029EA8C
    cmplwi 0, 0x37
    .4byte 0x408200E4 # bne .L_8029EB6C
L_8029EA8C:
    lis 3, lbl_8046C508@ha
    clrlslwi 0, 28, 24, 3
    addi 5, 3, lbl_8046C508@l
    lfs 3, 0x4(27)
    add 3, 5, 0
    lfs 1, 0x0(27)
    lfs 2, 0x4(3)
    mr 4, 31
    lfsx 0, 5, 0
    addi 3, 1, 0x20
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    bl fn_80226BC4
    stw 3, 0x20(26)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(26)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(26)
    addi 3, 1, 0x18
    lfs 1, 0x4(27)
    rlwinm 4, 31, 0, 24, 30
    lhz 30, 0x24(26)
    lfs 0, 0x0(27)
    stfs 1, 0x1c(1)
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 0, 0x18(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    mr 6, 30
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820120 # beq .L_8029EC70
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 28
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000108 # b .L_8029EC70
L_8029EB6C:
    lfs 1, 0x4(27)
    addi 3, 1, 0x10
    lfs 0, 0x0(27)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x14(1)
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 0, 0x10(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x4182009C # beq .L_8029EC70
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 28
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_8029EC70
L_8029EBF0:
    lfs 1, 0x4(27)
    addi 3, 1, 0x8
    lfs 0, 0x0(27)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0xc(1)
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820018 # beq .L_8029EC70
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 28
    li 6, 0x1
    bl fn_802D7D00
L_8029EC70:
    lmw 26, 0x38(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8029EC84:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 4
    mr 28, 5
    mr 29, 7
    add 31, 28, 6
    mr 30, 27
    mr 4, 31
    clrlwi 6, 8, 16
    mr 5, 30
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    bl fn_802F9974
    subi 0, 30, 0x10
    rlwinm 3, 30, 0, 23, 23
    rlwinm 0, 0, 0, 23, 23
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_8029ECDC
    subi 30, 30, 0x110
    .4byte 0x48000008 # b .L_8029ECE0
L_8029ECDC:
    subi 30, 30, 0x10
L_8029ECE0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 30
    clrlwi 6, 29, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 31, 28
    mr 4, 28
    clrlwi 5, 27, 16
    bl fn_802D4C10
    clrlwi 30, 29, 16
    lis 4, lbl_8046C4C8@ha
    cmpwi 30, 0xa0
    clrrwi 0, 3, 2
    addi 3, 4, lbl_8046C4C8@l
    lwzx 29, 3, 0
    .4byte 0x40800024 # bge .L_8029ED48
    cmpwi 30, 0x18
    .4byte 0x40800010 # bge .L_8029ED3C
    cmpwi 30, 0x0
    .4byte 0x4182002C # beq .L_8029ED60
    .4byte 0x48000028 # b .L_8029ED60
L_8029ED3C:
    cmpwi 30, 0x20
    .4byte 0x40800020 # bge .L_8029ED60
    .4byte 0x48000034 # b .L_8029ED78
L_8029ED48:
    cmpwi 30, 0xfff
    .4byte 0x41820044 # beq .L_8029ED90
    .4byte 0x40800010 # bge .L_8029ED60
    cmpwi 30, 0xa4
    .4byte 0x40800008 # bge .L_8029ED60
    .4byte 0x48000034 # b .L_8029ED90
L_8029ED60:
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 29
    li 6, 0x1
    bl fn_802D7BE8
    .4byte 0x48000030 # b .L_8029EDA4
L_8029ED78:
    bl GetRoomConfigRecord
    mr 4, 28
    mr 5, 29
    subi 6, 30, 0x16
    bl fn_802D7BE8
    .4byte 0x48000018 # b .L_8029EDA4
L_8029ED90:
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 29
    subi 6, 30, 0x96
    bl fn_802D7BE8
L_8029EDA4:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8029EDB8:
    stwu 1, -0x190(1)
    mflr 0
    stw 0, 0x194(1)
    stfd 31, 0x180(1)
    psq_st 31, 0x188(1), 0, 0
    stfd 30, 0x170(1)
    psq_st 30, 0x178(1), 0, 0
    stfd 29, 0x160(1)
    psq_st 29, 0x168(1), 0, 0
    stfd 28, 0x150(1)
    psq_st 28, 0x158(1), 0, 0
    stmw 16, 0x110(1)
    mr 28, 4
    .4byte 0xC002D7E8 # lfs f0, lbl_80540788@sda21(r0)
    lfs 1, 0x8(4)
    mr 25, 3
    mr 27, 5
    mr 30, 6
    fcmpo cr0, 1, 0
    mr 23, 7
    li 22, 0x0
    .4byte 0x408013AC # bge .L_802A01B8
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    mr 31, 30
    .4byte 0x4080000C # bge .L_8029EE28
    addi 5, 3, 0xcc
    .4byte 0x48000008 # b .L_8029EE2C
L_8029EE28:
    addi 5, 3, 0xdc
L_8029EE2C:
    .4byte 0xC3C2D7E0 # lfs f30, lbl_80540780@sda21(r0)
    rlwinm 29, 30, 0, 24, 30
    lfs 0, 0x4(28)
    li 16, 0x0
    lwz 0, 0x0(5)
    lwz 4, 0x4(5)
    fsubs 0, 0, 30
    stw 0, 0xd8(1)
    lfs 1, 0x0(28)
    lwz 3, 0x8(5)
    lwz 0, 0xc(5)
    fsubs 29, 1, 30
    stw 4, 0xdc(1)
    lfs 1, 0x8(28)
    stw 3, 0xe0(1)
    lfs 28, 0xdc(1)
    stw 0, 0xe4(1)
    lfs 31, 0xd8(1)
    stfs 0, 0xec(1)
    stfs 1, 0xf0(1)
L_8029EE7C:
    stfs 29, 0xe8(1)
    li 24, 0x0
L_8029EE84:
    lfs 1, 0xe8(1)
    lfs 0, 0xec(1)
    fsubs 1, 1, 31
    fsubs 0, 0, 28
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0xf8(1)
    lwz 5, 0xfc(1)
    stfd 0, 0x100(1)
    cmpwi 5, 0x0
    lwz 6, 0x104(1)
    .4byte 0x4080000C # bge .L_8029EEBC
    li 5, 0x0
    .4byte 0x48000010 # b .L_8029EEC8
L_8029EEBC:
    cmpwi 5, 0x200
    .4byte 0x41800008 # blt .L_8029EEC8
    li 5, 0x1ff
L_8029EEC8:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_8029EED8
    li 6, 0x0
    .4byte 0x48000010 # b .L_8029EEE4
L_8029EED8:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_8029EEE4
    li 6, 0x1ff
L_8029EEE4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 0, 5, 0, 23, 23
    rlwimi 0, 6, 1, 22, 22
    mr 4, 31
    rlwimi 0, 6, 0, 24, 27
    lwz 3, 0x20(3)
    mr 20, 0
    rlwimi 20, 5, 28, 28, 31
    mr 17, 20
    mr 5, 20
    bl fn_802F9908
    clrlwi 21, 3, 16
    mr 3, 20
    mr 4, 31
    addi 5, 1, 0xcc
    bl fn_80226CA8
    cmplwi 21, 0x40
    .4byte 0x418002C0 # blt .L_8029F1E8
    cmplwi 21, 0x44
    .4byte 0x418102B8 # bgt .L_8029F1E8
    cmplwi 21, 0x41
    .4byte 0x4082011C # bne .L_8029F054
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x80
    stfs 1, 0x80(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x84(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029EFBC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x0
    bl fn_802D7D00
L_8029EFBC:
    bl SpatialRegistry_GetBase
    lwz 26, 0x1008(3)
    li 17, 0x0
    li 18, 0x0
    .4byte 0x4800007C # b .L_8029F048
L_8029EFD0:
    bl SpatialRegistry_GetBase
    addi 0, 18, 0x8
    lwzx 19, 3, 0
    cmplwi 19, 0x0
    .4byte 0x41820060 # beq .L_8029F040
    lwz 3, 0x1a0(19)
    subis 0, 3, 0x5442
    cmplwi 0, 0x4f32
    .4byte 0x40820050 # bne .L_8029F040
    lwz 0, 0x4(19)
    cmpw 30, 0
    .4byte 0x40820044 # bne .L_8029F040
    psq_l 0, 0xc(19), 0, 0
    mr 4, 30
    lfs 2, 0x14(19)
    addi 3, 1, 0x88
    psq_st 0, 0xc0(1), 0, 0
    lfs 1, 0xc0(1)
    lfs 0, 0xc4(1)
    stfs 2, 0xc8(1)
    stfs 1, 0x88(1)
    stfs 0, 0x8c(1)
    bl fn_80226BC4
    cmpw 20, 3
    .4byte 0x40820010 # bne .L_8029F040
    mr 3, 19
    bl fn_801F3668
    .4byte 0x48000124 # b .L_8029F160
L_8029F040:
    addi 18, 18, 0x4
    addi 17, 17, 0x1
L_8029F048:
    cmpw 17, 26
    .4byte 0x4180FF84 # blt .L_8029EFD0
    .4byte 0x48000110 # b .L_8029F160
L_8029F054:
    cmplwi 21, 0x43
    .4byte 0x40820088 # bne .L_8029F0E0
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x78
    stfs 1, 0x78(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x7c(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x50
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x4182009C # beq .L_8029F160
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x0
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_8029F160
L_8029F0E0:
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x70
    stfs 1, 0x70(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x74(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x11
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029F160
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029F160:
    bl SpatialRegistry_GetBase
    lis 4, 0x5455
    mr 5, 31
    addi 4, 4, 0x424f
    addi 6, 1, 0xe8
    subi 7, 21, 0x40
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 17, 3
    mr 26, 17
    bl SpatialRegistry_GetBase
    mr 4, 17
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029F1B0
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029F1B0:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x25
    bl fn_80230FD0
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000FA4 # b .L_802A0188
L_8029F1E8:
    cmplwi 21, 0x45
    .4byte 0x41800230 # blt .L_8029F41C
    cmplwi 21, 0x49
    .4byte 0x41810228 # bgt .L_8029F41C
    cmplwi 21, 0x46
    .4byte 0x40820088 # bne .L_8029F284
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x68
    stfs 1, 0x68(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x6c(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x14
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820128 # beq .L_8029F390
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000110 # b .L_8029F390
L_8029F284:
    cmplwi 21, 0x48
    .4byte 0x40820088 # bne .L_8029F310
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x60
    stfs 1, 0x60(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x64(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x52
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x4182009C # beq .L_8029F390
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_8029F390
L_8029F310:
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x58
    stfs 1, 0x58(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x5c(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x15
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029F390
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029F390:
    bl SpatialRegistry_GetBase
    lhz 7, 0x24(25)
    lis 4, 0x5455
    mr 5, 31
    addi 6, 1, 0xe8
    addi 4, 4, 0x424f
    subi 7, 7, 0x45
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 17, 3
    mr 26, 17
    bl SpatialRegistry_GetBase
    mr 4, 17
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029F3E4
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029F3E4:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x25
    bl fn_80230FD0
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000D70 # b .L_802A0188
L_8029F41C:
    cmplwi 21, 0x69
    .4byte 0x4082010C # bne .L_8029F52C
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x50
    stfs 1, 0x50(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x54(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x7a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029F4A4
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029F4A4:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 17, 3
    mr 26, 17
    bl SpatialRegistry_GetBase
    mr 4, 17
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029F4F4
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029F4F4:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3
    li 5, -0x1
    bl fn_80458880
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000C60 # b .L_802A0188
L_8029F52C:
    cmplwi 21, 0x68
    .4byte 0x408200FC # bne .L_8029F62C
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x48
    stfs 1, 0x48(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x4c(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029F5B4
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029F5B4:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 17, 3
    mr 26, 17
    bl SpatialRegistry_GetBase
    mr 4, 17
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029F604
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029F604:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000B60 # b .L_802A0188
L_8029F62C:
    cmplwi 21, 0x6a
    .4byte 0x408200FC # bne .L_8029F72C
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x40
    stfs 1, 0x40(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x44(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x50
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029F6B4
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029F6B4:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 17, 3
    mr 26, 17
    bl SpatialRegistry_GetBase
    mr 4, 17
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029F704
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029F704:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000A60 # b .L_802A0188
L_8029F72C:
    cmplwi 21, 0x70
    .4byte 0x41820014 # beq .L_8029F744
    cmplwi 21, 0x75
    .4byte 0x4182000C # beq .L_8029F744
    cmplwi 21, 0x6b
    .4byte 0x408201B8 # bne .L_8029F8F8
L_8029F744:
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x38
    stfs 1, 0x38(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x3c(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x79
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029F7C4
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029F7C4:
    cmplwi 21, 0x70
    .4byte 0x40820030 # bne .L_8029F7F8
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    .4byte 0x480000B8 # b .L_8029F8AC
L_8029F7F8:
    cmplwi 21, 0x75
    .4byte 0x40820030 # bne .L_8029F82C
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    .4byte 0x48000084 # b .L_8029F8AC
L_8029F82C:
    cmplwi 21, 0x6b
    .4byte 0x4082007C # bne .L_8029F8AC
    bl GetRoomConfigRecord
    lwz 4, 0x20(25)
    bl fn_802D6AC4
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8029F874
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    .4byte 0x4800003C # b .L_8029F8AC
L_8029F874:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    bl GetRoomConfigRecord
    lwz 4, 0x20(25)
    li 5, 0x1
    bl fn_802D6B24
L_8029F8AC:
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029F8D0
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029F8D0:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000894 # b .L_802A0188
L_8029F8F8:
    cmplwi 21, 0x74
    .4byte 0x4182000C # beq .L_8029F908
    cmplwi 21, 0x146
    .4byte 0x408200FC # bne .L_8029FA00
L_8029F908:
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x30
    stfs 1, 0x30(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x34(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x7d
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029F988
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029F988:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 31
    addi 4, 4, 0x4153
    addi 6, 1, 0xe8
    lis 7, 0x10
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 17, 3
    mr 26, 17
    bl SpatialRegistry_GetBase
    mr 4, 17
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029F9D8
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029F9D8:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800078C # b .L_802A0188
L_8029FA00:
    cmplwi 21, 0x71
    .4byte 0x408200FC # bne .L_8029FB00
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x28
    stfs 1, 0x28(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x2c(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x7b
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029FA88
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029FA88:
    bl SpatialRegistry_GetBase
    lis 4, 0x424f
    mr 5, 31
    addi 4, 4, 0x5244
    addi 6, 1, 0xe8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 17, 3
    mr 26, 17
    bl SpatialRegistry_GetBase
    mr 4, 17
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8029FAD8
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_8029FAD8:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    mr 5, 31
    addi 4, 4, 0x5a45
    addi 6, 1, 0xe8
    li 7, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800068C # b .L_802A0188
L_8029FB00:
    cmplwi 21, 0x81
    .4byte 0x4082013C # bne .L_8029FC40
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x20
    stfs 1, 0x20(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x24(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x9d
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029FB88
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029FB88:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x25
    bl fn_80230FD0
    cmpwi 30, 0x8
    .4byte 0x41800050 # blt .L_8029FBEC
    .4byte 0xC062D7EC # lfs f3, lbl_8054078C@sda21(r0)
    lfs 0, 0xcc(1)
    lfs 1, 0xd0(1)
    fadds 2, 3, 0
    .4byte 0xC002D7E4 # lfs f0, lbl_80540784@sda21(r0)
    fadds 1, 3, 1
    stfs 0, 0xb0(1)
    stfs 2, 0xa8(1)
    stfs 1, 0xac(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 31
    addi 4, 4, 0x5249
    addi 6, 1, 0xa8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480005A0 # b .L_802A0188
L_8029FBEC:
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0xf9
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0xfa
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800054C # b .L_802A0188
L_8029FC40:
    cmplwi 21, 0x90
    .4byte 0x408200E8 # bne .L_8029FD2C
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x18
    stfs 1, 0x18(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x1c(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x91
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029FCC8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029FCC8:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x25
    bl fn_80230FD0
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0x24a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0x24b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000460 # b .L_802A0188
L_8029FD2C:
    cmplwi 21, 0x91
    .4byte 0x4182000C # beq .L_8029FD3C
    cmplwi 21, 0x22e
    .4byte 0x408200E8 # bne .L_8029FE20
L_8029FD3C:
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x10
    stfs 1, 0x10(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0x14(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x92
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029FDBC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029FDBC:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x25
    bl fn_80230FD0
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0x24a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0x24b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800036C # b .L_802A0188
L_8029FE20:
    cmplwi 21, 0x1
    .4byte 0x4082013C # bne .L_8029FF60
    lfs 1, 0xe8(1)
    mr 4, 29
    lfs 0, 0xec(1)
    addi 3, 1, 0x8
    stfs 1, 0x8(1)
    .4byte 0x822D90D8 # lwz r17, lbl_8053AC98@sda21(r0)
    stfs 0, 0xc(1)
    bl fn_80226BC4
    stw 3, 0x20(17)
    lwz 18, 0x20(17)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 18
    li 6, 0x3e0
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(17)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 17, 3
    cmpwi 17, -0x1
    .4byte 0x41820018 # beq .L_8029FEA8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 17
    li 6, 0x1
    bl fn_802D7D00
L_8029FEA8:
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x25
    bl fn_80230FD0
    cmpwi 30, 0x8
    .4byte 0x41800050 # blt .L_8029FF0C
    .4byte 0xC062D7EC # lfs f3, lbl_8054078C@sda21(r0)
    lfs 0, 0xcc(1)
    lfs 1, 0xd0(1)
    fadds 2, 3, 0
    .4byte 0xC002D7E4 # lfs f0, lbl_80540784@sda21(r0)
    fadds 1, 3, 1
    stfs 0, 0xa4(1)
    stfs 2, 0x9c(1)
    stfs 1, 0xa0(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 31
    addi 4, 4, 0x5249
    addi 6, 1, 0x9c
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000280 # b .L_802A0188
L_8029FF0C:
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    addi 4, 1, 0xcc
    li 5, 0xf9
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    addi 4, 1, 0xcc
    li 5, 0xfa
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800022C # b .L_802A0188
L_8029FF60:
    cmplwi 21, 0x9b
    .4byte 0x4182000C # beq .L_8029FF70
    cmplwi 21, 0x9c
    .4byte 0x4082021C # bne .L_802A0188
L_8029FF70:
    mr 3, 17
    mr 4, 31
    addi 5, 1, 0xb4
    bl fn_80226CA8
    psq_l 1, 0xb4(1), 0, 0
    cmplwi 21, 0x9b
    lfs 0, 0xbc(1)
    li 22, 0x1
    psq_st 1, 0x0(23), 0, 0
    stfs 0, 0x8(23)
    .4byte 0x40820018 # bne .L_8029FFB0
    lfs 1, 0xb8(1)
    .4byte 0xC002D7E0 # lfs f0, lbl_80540780@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xb8(1)
    .4byte 0x48000028 # b .L_8029FFD4
L_8029FFB0:
    cmplwi 21, 0x9c
    .4byte 0x40820020 # bne .L_8029FFD4
    lfs 1, 0xb4(1)
    .4byte 0xC042D7E0 # lfs f2, lbl_80540780@sda21(r0)
    lfs 0, 0xb8(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    stfs 1, 0xb4(1)
    stfs 0, 0xb8(1)
L_8029FFD4:
    mr 3, 25
    mr 5, 30
    addi 4, 1, 0xb4
    li 6, 0x6e
    li 7, 0x6f
    li 8, 0x7e
    li 9, 0x7f
    bl fn_8029E050
    .4byte 0xC062D7E0 # lfs f3, lbl_80540780@sda21(r0)
    mr 3, 31
    lfs 0, 0xb4(1)
    addi 4, 1, 0x90
    .4byte 0xC042D7F4 # lfs f2, lbl_80540794@sda21(r0)
    li 5, 0x60
    lfs 1, 0xb8(1)
    fadds 3, 3, 0
    .4byte 0xC002D7E4 # lfs f0, lbl_80540784@sda21(r0)
    li 6, 0x0
    fadds 2, 2, 1
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    stfs 3, 0x90(1)
    li 7, 0x0
    li 8, 0x0
    stfs 2, 0x94(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x98(1)
    bl fn_8013CC50
    cmpwi 30, 0x8
    li 17, 0x8
    .4byte 0x40800008 # bge .L_802A0054
    li 17, 0x1
L_802A0054:
    lwz 18, 0x20(25)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    add 17, 30, 17
    mr 4, 17
    mr 5, 18
    lwz 3, 0x20(3)
    li 6, 0x6c
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 17
    clrlwi 5, 18, 16
    bl fn_802D4C10
    mr 19, 3
    cmpwi 19, -0x1
    .4byte 0x41820018 # beq .L_802A00B0
    bl GetRoomConfigRecord
    mr 4, 17
    mr 5, 19
    li 6, 0x1
    bl fn_802D7D00
L_802A00B0:
    addi 18, 18, 0x1
    clrlwi. 0, 18, 28
    .4byte 0x40820008 # bne .L_802A00C0
    addi 18, 18, 0xf0
L_802A00C0:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 17
    mr 5, 18
    li 6, 0x6d
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 17
    clrlwi 5, 18, 16
    bl fn_802D4C10
    mr 18, 3
    cmpwi 18, -0x1
    .4byte 0x41820018 # beq .L_802A0114
    bl GetRoomConfigRecord
    mr 4, 17
    mr 5, 18
    li 6, 0x1
    bl fn_802D7D00
L_802A0114:
    bl SpatialRegistry_GetBase
    lis 4, 0x5345
    mr 5, 31
    addi 4, 4, 0x4e32
    addi 6, 1, 0xb4
    li 7, 0x3c00
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0x24a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 31
    mr 4, 28
    li 5, 0x24b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802A0188:
    lfs 0, 0xe8(1)
    addi 24, 24, 0x1
    cmpwi 24, 0x3
    fadds 0, 0, 30
    stfs 0, 0xe8(1)
    .4byte 0x4180ECE8 # blt .L_8029EE84
    lfs 0, 0xec(1)
    addi 16, 16, 0x1
    cmpwi 16, 0x3
    fadds 0, 0, 30
    stfs 0, 0xec(1)
    .4byte 0x4180ECC8 # blt .L_8029EE7C
L_802A01B8:
    mr 3, 22
    psq_l 31, 0x188(1), 0, 0
    lfd 31, 0x180(1)
    psq_l 30, 0x178(1), 0, 0
    lfd 30, 0x170(1)
    psq_l 29, 0x168(1), 0, 0
    lfd 29, 0x160(1)
    psq_l 28, 0x158(1), 0, 0
    lfd 28, 0x150(1)
    lmw 16, 0x110(1)
    lwz 0, 0x194(1)
    mtlr 0
    addi 1, 1, 0x190
    blr

fn_802A01F0:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x24(1)
    lfs 0, 0x0(4)
    stw 31, 0x1c(1)
    mr 31, 6
    mr 4, 31
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 3
    addi 3, 1, 0x8
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(29)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(29)
    li 3, 0x0
    lhz 0, 0x24(29)
    cmpwi 0, 0x71
    .4byte 0x41820030 # beq .L_802A0288
    .4byte 0x40800030 # bge .L_802A028C
    cmpwi 0, 0x18
    .4byte 0x40800028 # bge .L_802A028C
    cmpwi 0, 0x16
    .4byte 0x40800008 # bge .L_802A0274
    .4byte 0x4800001C # b .L_802A028C
L_802A0274:
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_802A0800
    .4byte 0x48000008 # b .L_802A028C
L_802A0288:
    li 3, 0x1
L_802A028C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A02A8:
    stwu 1, -0x70(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x74(1)
    lfs 0, 0x0(4)
    stmw 25, 0x54(1)
    mr 28, 3
    mr 31, 6
    mr 26, 4
    mr 29, 5
    addi 3, 1, 0x30
    mr 4, 31
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(28)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(28)
    li 30, -0x1
    li 25, 0x79
    lhz 4, 0x24(28)
    subi 0, 4, 0x16
    cmplwi 0, 0x6c
    .4byte 0x418102F8 # bgt .L_802A060C
    lis 3, jumptable_804A7CA4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A7CA4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lfs 1, 0x4(26)
    addi 3, 1, 0x28
    lfs 0, 0x0(26)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x2c(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x28(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x7a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A03B0
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A03B0:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x7
    bl fn_80230FD0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3
    li 5, -0x1
    bl fn_80458880
    li 3, 0x0
    .4byte 0x48000418 # b .L_802A07EC
    mr 3, 28
    mr 4, 29
    mr 5, 31
    bl fn_802A0800
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802A03FC
    li 3, 0x25
    .4byte 0x480003F4 # b .L_802A07EC
L_802A03FC:
    li 3, -0x1
    .4byte 0x480003EC # b .L_802A07EC
    lfs 1, 0x4(26)
    addi 3, 1, 0x20
    lfs 0, 0x0(26)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x24(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x20(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A0484
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A0484:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x7
    bl fn_80230FD0
    li 3, 0x0
    .4byte 0x48000354 # b .L_802A07EC
    li 30, 0x0
    .4byte 0x4800016C # b .L_802A060C
    li 30, 0x1
    .4byte 0x48000164 # b .L_802A060C
    lfs 1, 0x4(26)
    addi 3, 1, 0x18
    lfs 0, 0x0(26)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x1c(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x18(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x50
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A052C
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A052C:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x7
    bl fn_80230FD0
    li 3, 0x0
    .4byte 0x480002AC # b .L_802A07EC
    li 30, 0x3
    .4byte 0x480000C4 # b .L_802A060C
    cmplwi 4, 0x72
    li 30, 0x5
    .4byte 0x4082000C # bne .L_802A0560
    li 25, 0x7c
    .4byte 0x480000B0 # b .L_802A060C
L_802A0560:
    li 25, 0x83
    .4byte 0x480000A8 # b .L_802A060C
    li 30, 0x27
    li 25, 0x83
    .4byte 0x4800009C # b .L_802A060C
    li 30, 0x7
    li 25, 0x7b
    .4byte 0x48000090 # b .L_802A060C
    li 30, 0x18
    li 25, 0x11
    .4byte 0x48000084 # b .L_802A060C
    li 30, 0x19
    li 25, 0x12
    .4byte 0x48000078 # b .L_802A060C
    li 30, 0x1a
    li 25, 0x11
    .4byte 0x4800006C # b .L_802A060C
    li 30, 0x1b
    li 25, 0x50
    .4byte 0x48000060 # b .L_802A060C
    li 30, 0x1c
    li 25, 0x11
    .4byte 0x48000054 # b .L_802A060C
    li 30, 0x1d
    li 25, 0x15
    .4byte 0x48000048 # b .L_802A060C
    li 30, 0x1e
    li 25, 0x14
    .4byte 0x4800003C # b .L_802A060C
    li 30, 0x1f
    li 25, 0x15
    .4byte 0x48000030 # b .L_802A060C
    li 30, 0x20
    li 25, 0x52
    .4byte 0x48000024 # b .L_802A060C
    li 30, 0x21
    li 25, 0x15
    .4byte 0x48000018 # b .L_802A060C
    li 30, 0x22
    li 25, 0x11
    .4byte 0x4800000C # b .L_802A060C
    li 30, 0x23
    li 25, 0x11
L_802A060C:
    cmpwi 30, -0x1
    .4byte 0x418201D8 # beq .L_802A07E8
    cmpwi 30, 0x25
    .4byte 0x418201D0 # beq .L_802A07E8
    cmpwi 30, 0xc
    .4byte 0x418201C8 # beq .L_802A07E8
    cmpwi 30, 0x19
    .4byte 0x40820130 # bne .L_802A0758
    lfs 1, 0x4(26)
    addi 3, 1, 0x10
    lfs 0, 0x0(26)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x14(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x10(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    clrlwi 6, 25, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A06AC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A06AC:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x7
    bl fn_80230FD0
    bl SpatialRegistry_GetBase
    lwz 26, 0x1008(3)
    li 25, 0x0
    li 29, 0x0
    .4byte 0x48000080 # b .L_802A074C
L_802A06D0:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 27, 3, 0
    cmplwi 27, 0x0
    .4byte 0x41820064 # beq .L_802A0744
    lwz 3, 0x1a0(27)
    subis 0, 3, 0x5442
    cmplwi 0, 0x4f32
    .4byte 0x40820054 # bne .L_802A0744
    lwz 0, 0x4(27)
    cmpw 31, 0
    .4byte 0x40820048 # bne .L_802A0744
    psq_l 0, 0xc(27), 0, 0
    mr 4, 31
    lfs 2, 0x14(27)
    addi 3, 1, 0x38
    psq_st 0, 0x40(1), 0, 0
    lfs 1, 0x40(1)
    lfs 0, 0x44(1)
    stfs 2, 0x48(1)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    bl fn_80226BC4
    lwz 0, 0x20(28)
    cmpw 0, 3
    .4byte 0x40820010 # bne .L_802A0744
    mr 3, 27
    bl fn_801F3668
    .4byte 0x480000A8 # b .L_802A07E8
L_802A0744:
    addi 29, 29, 0x4
    addi 25, 25, 0x1
L_802A074C:
    cmpw 25, 26
    .4byte 0x4180FF80 # blt .L_802A06D0
    .4byte 0x48000094 # b .L_802A07E8
L_802A0758:
    lfs 1, 0x4(26)
    addi 3, 1, 0x8
    lfs 0, 0x0(26)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0xc(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    clrlwi 6, 25, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A07D8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A07D8:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x7
    bl fn_80230FD0
L_802A07E8:
    mr 3, 30
L_802A07EC:
    lmw 25, 0x54(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_802A0800:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 21, 0x24(1)
    mr 29, 4
    mr 22, 3
    mr 27, 29
    mr 23, 5
    mr 31, 27
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802A0850
    mr 3, 27
    bl fn_8022F3DC
    mr 31, 3
L_802A0850:
    mr 3, 27
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    cmpwi 23, 0x8
    lfs 0, 0x8(3)
    li 24, 0x8
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    .4byte 0x40800008 # bge .L_802A0878
    li 24, 0x1
L_802A0878:
    mr 3, 31
    bl fn_802373EC
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    clrlwi 25, 24, 24
    mr 28, 3
    lwz 5, 0x20(22)
    add 26, 23, 25
    lwz 3, 0x20(4)
    mr 4, 26
    bl fn_802F9908
    clrlwi 24, 3, 16
    cmplwi 24, 0xe
    .4byte 0x4082000C # bne .L_802A08B4
    li 3, 0x0
    .4byte 0x4800077C # b .L_802A102C
L_802A08B4:
    mr 3, 27
    bl fn_8022EA0C
    cmpw 29, 3
    .4byte 0x4182000C # beq .L_802A08CC
    li 3, 0x0
    .4byte 0x48000764 # b .L_802A102C
L_802A08CC:
    cmplwi 24, 0x0
    .4byte 0x4082000C # bne .L_802A08DC
    cmpwi 28, 0x0
    .4byte 0x41820048 # beq .L_802A0920
L_802A08DC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802A0904
    mr 3, 31
    bl fn_802308E0
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_802A0920
    li 3, 0x0
    .4byte 0x4800072C # b .L_802A102C
L_802A0904:
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802A0918
    li 3, 0x0
    .4byte 0x48000718 # b .L_802A102C
L_802A0918:
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
L_802A0920:
    cmpwi 28, 0x0
    .4byte 0x41820118 # beq .L_802A0A3C
    .4byte 0x41800190 # blt .L_802A0AB8
    cmpwi 28, 0xe
    .4byte 0x40800188 # bge .L_802A0AB8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 26
    lwz 21, 0x20(22)
    li 6, 0xe
    lwz 3, 0x20(3)
    mr 5, 21
    bl fn_802F9974
    subi 5, 21, 0x10
    rlwinm 3, 21, 0, 23, 23
    rlwinm 0, 5, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_802A0968
    subi 5, 21, 0x110
L_802A0968:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 26
    li 6, 0xe
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 23
    clrlwi 5, 21, 16
    bl fn_802D4C10
    lis 4, lbl_8046C4C8@ha
    clrrwi 0, 3, 2
    addi 3, 4, lbl_8046C4C8@l
    lwzx 26, 3, 0
    bl GetRoomConfigRecord
    mr 4, 23
    mr 5, 26
    li 6, 0x1
    bl fn_802D7BE8
    cmplwi 24, 0x0
    .4byte 0x40820048 # bne .L_802A09FC
    bl SpatialRegistry_GetBase
    slwi 4, 25, 8
    slwi 0, 29, 12
    add 0, 0, 4
    lwz 5, 0x20(22)
    add 4, 0, 28
    lis 6, 0x4954
    slwi 0, 5, 16
    mr 5, 23
    addi 7, 4, 0x10
    addi 4, 6, 0x4d53
    addi 6, 1, 0x14
    li 8, -0x1
    add 7, 0, 7
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000C0 # b .L_802A0AB8
L_802A09FC:
    bl SpatialRegistry_GetBase
    lwz 4, 0x20(22)
    slwi 5, 25, 8
    slwi 0, 29, 12
    lis 6, 0x4954
    add 0, 0, 5
    slwi 8, 4, 16
    add 7, 0, 28
    mr 5, 23
    addi 4, 6, 0x4d53
    addi 6, 1, 0x14
    add 7, 8, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000080 # b .L_802A0AB8
L_802A0A3C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 26
    lwz 21, 0x20(22)
    li 6, 0x0
    lwz 3, 0x20(3)
    mr 5, 21
    bl fn_802F9974
    subi 5, 21, 0x10
    rlwinm 3, 21, 0, 23, 23
    rlwinm 0, 5, 0, 23, 23
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_802A0A70
    subi 5, 21, 0x110
L_802A0A70:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 26
    li 6, 0x0
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    mr 4, 23
    clrlwi 5, 21, 16
    bl fn_802D4C10
    lis 4, lbl_8046C4C8@ha
    clrrwi 0, 3, 2
    addi 3, 4, lbl_8046C4C8@l
    lwzx 21, 3, 0
    bl GetRoomConfigRecord
    mr 4, 23
    mr 5, 21
    li 6, 0x1
    bl fn_802D7BE8
L_802A0AB8:
    .4byte 0xC062D7F0 # lfs f3, lbl_80540790@sda21(r0)
    cmpwi 24, 0x2e
    lfs 0, 0x14(1)
    lfs 2, 0x18(1)
    .4byte 0xC022D7F8 # lfs f1, lbl_80540798@sda21(r0)
    fadds 3, 3, 0
    lfs 0, 0x1c(1)
    fsubs 1, 2, 1
    stfs 3, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    .4byte 0x418200C8 # beq .L_802A0BAC
    .4byte 0x40800040 # bge .L_802A0B28
    cmpwi 24, 0x29
    .4byte 0x41820080 # beq .L_802A0B70
    .4byte 0x4080001C # bge .L_802A0B10
    cmpwi 24, 0x0
    .4byte 0x41820110 # beq .L_802A0C0C
    .4byte 0x4180010C # blt .L_802A0C0C
    cmpwi 24, 0x28
    .4byte 0x4080005C # bge .L_802A0B64
    .4byte 0x48000100 # b .L_802A0C0C
L_802A0B10:
    cmpwi 24, 0x2c
    .4byte 0x41820080 # beq .L_802A0B94
    .4byte 0x40800088 # bge .L_802A0BA0
    cmpwi 24, 0x2b
    .4byte 0x40800068 # bge .L_802A0B88
    .4byte 0x48000058 # b .L_802A0B7C
L_802A0B28:
    cmpwi 24, 0xb2
    .4byte 0x418200B0 # beq .L_802A0BDC
    .4byte 0x4080001C # bge .L_802A0B4C
    cmpwi 24, 0xb0
    .4byte 0x4182008C # beq .L_802A0BC4
    .4byte 0x40800094 # bge .L_802A0BD0
    cmpwi 24, 0x30
    .4byte 0x408000C8 # bge .L_802A0C0C
    .4byte 0x48000070 # b .L_802A0BB8
L_802A0B4C:
    cmpwi 24, 0x100f
    .4byte 0x418200AC # beq .L_802A0BFC
    .4byte 0x408000B8 # bge .L_802A0C0C
    cmpwi 24, 0xb4
    .4byte 0x408000B0 # bge .L_802A0C0C
    .4byte 0x4800008C # b .L_802A0BEC
L_802A0B64:
    li 0, 0x1
    li 30, 0x30
    .4byte 0x480000A4 # b .L_802A0C10
L_802A0B70:
    li 0, 0x2
    li 30, 0x31
    .4byte 0x48000098 # b .L_802A0C10
L_802A0B7C:
    li 0, 0x3
    li 30, 0x32
    .4byte 0x4800008C # b .L_802A0C10
L_802A0B88:
    li 0, 0x4
    li 30, 0x33
    .4byte 0x48000080 # b .L_802A0C10
L_802A0B94:
    li 0, 0x5
    li 30, 0x34
    .4byte 0x48000074 # b .L_802A0C10
L_802A0BA0:
    li 0, 0x6
    li 30, 0x35
    .4byte 0x48000068 # b .L_802A0C10
L_802A0BAC:
    li 0, 0x7
    li 30, 0x36
    .4byte 0x4800005C # b .L_802A0C10
L_802A0BB8:
    li 0, 0x8
    li 30, 0x37
    .4byte 0x48000050 # b .L_802A0C10
L_802A0BC4:
    li 0, 0x9
    li 30, 0x38
    .4byte 0x48000044 # b .L_802A0C10
L_802A0BD0:
    li 0, 0xa
    li 30, 0x39
    .4byte 0x48000038 # b .L_802A0C10
L_802A0BDC:
    lis 3, 0x1
    li 0, 0xb
    addi 30, 3, 0xa
    .4byte 0x48000028 # b .L_802A0C10
L_802A0BEC:
    lis 3, 0x1
    li 0, 0xc
    addi 30, 3, 0xb
    .4byte 0x48000018 # b .L_802A0C10
L_802A0BFC:
    lis 3, 0x1
    li 0, 0xd
    addi 30, 3, 0xc
    .4byte 0x48000008 # b .L_802A0C10
L_802A0C0C:
    li 0, 0x0
L_802A0C10:
    cmpwi 0, 0x0
    .4byte 0x4082014C # bne .L_802A0D60
    cmpwi 28, 0x0
    .4byte 0x4182012C # beq .L_802A0D48
    lis 4, 0x2
    mr 3, 27
    addi 4, 4, 0x2c
    bl fn_80230FD0
    mr 3, 27
    li 4, 0x0
    li 5, 0x1
    bl fn_802372F8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408200B0 # bne .L_802A0CFC
    li 23, 0x0
    slwi 22, 29, 16
L_802A0C58:
    mr 3, 23
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_802A0CB0
    mr 3, 23
    bl fn_8022F3DC
    cmpw 31, 3
    .4byte 0x40820038 # bne .L_802A0CB0
    mr 3, 23
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x444d
    mr 5, 21
    addi 4, 4, 0x594b
    addi 6, 1, 0x8
    addi 7, 22, 0xd5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800003C # b .L_802A0CE8
L_802A0CB0:
    cmpw 23, 31
    .4byte 0x40820034 # bne .L_802A0CE8
    mr 3, 23
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x444d
    mr 5, 21
    addi 4, 4, 0x594b
    addi 6, 1, 0x8
    addi 7, 22, 0xd5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802A0CE8:
    addi 23, 23, 0x1
    addi 22, 22, 0x1000
    cmpwi 23, 0x4
    .4byte 0x4180FF64 # blt .L_802A0C58
    .4byte 0x48000060 # b .L_802A0D58
L_802A0CFC:
    slwi 23, 29, 16
    li 24, 0x0
    lis 22, 0x444d
L_802A0D08:
    mr 3, 24
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 5, 21
    addi 4, 22, 0x594b
    addi 6, 1, 0x8
    addi 7, 23, 0xd5
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 24, 24, 0x1
    addi 23, 23, 0x1000
    cmpwi 24, 0x4
    .4byte 0x4180FFC8 # blt .L_802A0D08
    .4byte 0x48000014 # b .L_802A0D58
L_802A0D48:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x6
    li 5, -0x1
    bl fn_80458880
L_802A0D58:
    li 3, 0x0
    .4byte 0x480002D0 # b .L_802A102C
L_802A0D60:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408201C8 # bne .L_802A0F34
    li 25, 0x0
    .4byte 0xC3E2D7F0 # lfs f31, lbl_80540790@sda21(r0)
    .4byte 0xC3C2D7F8 # lfs f30, lbl_80540798@sda21(r0)
    mr 28, 25
    slwi 27, 29, 26
L_802A0D84:
    mr 3, 25
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    mr 3, 25
    psq_st 0, 0x14(1), 0, 0
    lfs 1, 0x14(1)
    lfs 0, 0x18(1)
    fadds 1, 31, 1
    stfs 2, 0x1c(1)
    fsubs 0, 0, 30
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200B4 # bne .L_802A0E7C
    mr 3, 25
    bl fn_8022F3DC
    cmpw 31, 3
    .4byte 0x408200A4 # bne .L_802A0E7C
    cmpw 25, 29
    .4byte 0x40820040 # bne .L_802A0E20
    mr 3, 25
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    add 4, 28, 27
    lis 6, 0x494d
    addis 7, 4, 0x1000
    mr 5, 21
    addi 4, 6, 0x5550
    addi 6, 1, 0x8
    add 7, 30, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800003C # b .L_802A0E58
L_802A0E20:
    mr 3, 25
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    add 4, 28, 27
    lis 6, 0x494d
    addis 7, 4, 0x3000
    mr 5, 21
    addi 4, 6, 0x5550
    addi 6, 1, 0x8
    add 7, 30, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802A0E58:
    mr 3, 25
    addi 4, 1, 0x14
    li 5, 0xe9
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x480000A8 # b .L_802A0F20
L_802A0E7C:
    cmpw 25, 31
    .4byte 0x408200A0 # bne .L_802A0F20
    cmpw 25, 29
    .4byte 0x40820040 # bne .L_802A0EC8
    mr 3, 25
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    add 4, 28, 27
    lis 6, 0x494d
    addis 7, 4, 0x1000
    mr 5, 21
    addi 4, 6, 0x5550
    addi 6, 1, 0x8
    add 7, 30, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800003C # b .L_802A0F00
L_802A0EC8:
    mr 3, 25
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    add 4, 28, 27
    lis 6, 0x494d
    addis 7, 4, 0x3000
    mr 5, 21
    addi 4, 6, 0x5550
    addi 6, 1, 0x8
    add 7, 30, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802A0F00:
    mr 3, 25
    addi 4, 1, 0x14
    li 5, 0xe9
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_802A0F20:
    addi 25, 25, 0x1
    addis 28, 28, 0x100
    cmpwi 25, 0x4
    .4byte 0x4180FE58 # blt .L_802A0D84
    .4byte 0x480000F8 # b .L_802A1028
L_802A0F34:
    li 24, 0x0
    .4byte 0xC3C2D7F0 # lfs f30, lbl_80540790@sda21(r0)
    .4byte 0xC3E2D7F8 # lfs f31, lbl_80540798@sda21(r0)
    mr 22, 24
    slwi 23, 29, 26
L_802A0F48:
    mr 3, 24
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    cmpw 24, 29
    lfs 2, 0x8(3)
    psq_st 0, 0x14(1), 0, 0
    lfs 1, 0x14(1)
    lfs 0, 0x18(1)
    fadds 1, 30, 1
    stfs 2, 0x1c(1)
    fsubs 0, 0, 31
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x40820040 # bne .L_802A0FC0
    mr 3, 24
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    add 4, 22, 23
    lis 6, 0x494d
    addis 7, 4, 0x1000
    mr 5, 21
    addi 4, 6, 0x5550
    addi 6, 1, 0x8
    add 7, 30, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800003C # b .L_802A0FF8
L_802A0FC0:
    mr 3, 24
    bl fn_8023DE58
    mr 21, 3
    bl SpatialRegistry_GetBase
    add 4, 22, 23
    lis 6, 0x494d
    addis 7, 4, 0x3000
    mr 5, 21
    addi 4, 6, 0x5550
    addi 6, 1, 0x8
    add 7, 30, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802A0FF8:
    mr 3, 24
    addi 4, 1, 0x14
    li 5, 0xe9
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 24, 24, 0x1
    addis 22, 22, 0x100
    cmpwi 24, 0x4
    .4byte 0x4180FF24 # blt .L_802A0F48
L_802A1028:
    li 3, 0x1
L_802A102C:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 21, 0x24(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_802A1050:
    stwu 1, -0x50(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x54(1)
    lfs 0, 0x0(4)
    stw 31, 0x4c(1)
    mr 31, 4
    li 4, 0x0
    stw 30, 0x48(1)
    mr 30, 3
    addi 3, 1, 0x2c
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    stfs 1, 0x30(1)
    stfs 0, 0x2c(1)
    bl fn_80226BC4
    stw 3, 0x20(30)
    li 4, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(30)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(30)
    lhz 3, 0x24(30)
    cmplwi 3, 0x69
    .4byte 0x4182005C # beq .L_802A1110
    cmplwi 3, 0x68
    .4byte 0x41820054 # beq .L_802A1110
    cmplwi 3, 0x75
    .4byte 0x4182004C # beq .L_802A1110
    subi 0, 3, 0x6a
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081003C # ble .L_802A1110
    cmplwi 3, 0x82
    .4byte 0x41820034 # beq .L_802A1110
    cmplwi 3, 0x5f
    .4byte 0x4182002C # beq .L_802A1110
    subi 0, 3, 0x70
    clrlwi 0, 0, 16
    cmplwi 0, 0x3
    .4byte 0x4081001C # ble .L_802A1110
    subi 0, 3, 0x40
    clrlwi 0, 0, 16
    cmplwi 0, 0x4
    .4byte 0x4081000C # ble .L_802A1110
    cmplwi 3, 0xe5
    .4byte 0x40820364 # bne .L_802A1470
L_802A1110:
    cmpwi 3, 0x82
    .4byte 0x41820034 # beq .L_802A1148
    .4byte 0x40800024 # bge .L_802A113C
    cmpwi 3, 0x72
    .4byte 0x40800010 # bge .L_802A1130
    cmpwi 3, 0x5f
    .4byte 0x41820184 # beq .L_802A12AC
    .4byte 0x48000344 # b .L_802A1470
L_802A1130:
    cmpwi 3, 0x74
    .4byte 0x4080033C # bge .L_802A1470
    .4byte 0x48000010 # b .L_802A1148
L_802A113C:
    cmpwi 3, 0xe5
    .4byte 0x4182023C # beq .L_802A137C
    .4byte 0x4800032C # b .L_802A1470
L_802A1148:
    cmplwi 3, 0x72
    .4byte 0x4182000C # beq .L_802A1158
    cmplwi 3, 0x73
    .4byte 0x40820088 # bne .L_802A11DC
L_802A1158:
    lfs 1, 0x4(31)
    addi 3, 1, 0x24
    lfs 0, 0x0(31)
    li 4, 0x0
    stfs 1, 0x28(1)
    .4byte 0x83CD90D8 # lwz r30, lbl_8053AC98@sda21(r0)
    stfs 0, 0x24(1)
    bl fn_80226BC4
    stw 3, 0x20(30)
    lwz 29, 0x20(30)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 29
    li 4, 0x0
    li 6, 0x7c
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(30)
    li 4, 0x0
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x4182009C # beq .L_802A125C
    bl GetRoomConfigRecord
    mr 5, 28
    li 4, 0x0
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_802A125C
L_802A11DC:
    lfs 1, 0x4(31)
    addi 3, 1, 0x1c
    lfs 0, 0x0(31)
    li 4, 0x0
    stfs 1, 0x20(1)
    .4byte 0x83CD90D8 # lwz r30, lbl_8053AC98@sda21(r0)
    stfs 0, 0x1c(1)
    bl fn_80226BC4
    stw 3, 0x20(30)
    lwz 29, 0x20(30)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 29
    li 4, 0x0
    li 6, 0x83
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(30)
    li 4, 0x0
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820018 # beq .L_802A125C
    bl GetRoomConfigRecord
    mr 5, 28
    li 4, 0x0
    li 6, 0x1
    bl fn_802D7D00
L_802A125C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5354
    mr 6, 31
    addi 4, 4, 0x4f4e
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201DC # beq .L_802A1470
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480001C8 # b .L_802A1470
L_802A12AC:
    lfs 1, 0x4(31)
    addi 3, 1, 0x14
    lfs 0, 0x0(31)
    li 4, 0x0
    stfs 1, 0x18(1)
    .4byte 0x83CD90D8 # lwz r30, lbl_8053AC98@sda21(r0)
    stfs 0, 0x14(1)
    bl fn_80226BC4
    stw 3, 0x20(30)
    lwz 29, 0x20(30)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 29
    li 4, 0x0
    li 6, 0x83
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(30)
    li 4, 0x0
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820018 # beq .L_802A132C
    bl GetRoomConfigRecord
    mr 5, 28
    li 4, 0x0
    li 6, 0x1
    bl fn_802D7D00
L_802A132C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5941
    mr 6, 31
    addi 4, 4, 0x5349
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182010C # beq .L_802A1470
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000F8 # b .L_802A1470
L_802A137C:
    lfs 1, 0x4(31)
    addi 3, 1, 0xc
    lfs 0, 0x0(31)
    li 4, 0x0
    stfs 1, 0x10(1)
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 0, 0xc(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 28
    li 4, 0x0
    li 6, 0x9d
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    li 4, 0x0
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820018 # beq .L_802A13FC
    bl GetRoomConfigRecord
    mr 5, 28
    li 4, 0x0
    li 6, 0x1
    bl fn_802D7D00
L_802A13FC:
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 4, 31
    li 3, 0x0
    li 5, 0xf9
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 4, 31
    li 3, 0x0
    li 5, 0xfa
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 3, 0x5
    addi 4, 1, 0x8
    addi 0, 3, 0x45
    stw 0, 0x8(1)
    lwz 3, 0x4(30)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802A1470:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802A1490:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x24(1)
    lfs 0, 0x0(4)
    stw 31, 0x1c(1)
    mr 31, 4
    li 4, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    addi 3, 1, 0x8
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(30)
    li 4, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(30)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(30)
    lis 3, lbl_8046CB88@ha
    addi 3, 3, lbl_8046CB88@l
    lhz 0, 0x24(30)
    slwi 0, 0, 1
    lhzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A1508
    li 3, 0x1
    .4byte 0x48000038 # b .L_802A153C
L_802A1508:
    mr 3, 31
    li 4, 0x0
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x22
    .4byte 0x4082001C # bne .L_802A1538
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A1538
    li 3, 0x1
    .4byte 0x48000008 # b .L_802A153C
L_802A1538:
    li 3, 0x0
L_802A153C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A1554:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x24(1)
    lfs 0, 0x0(4)
    stw 31, 0x1c(1)
    mr 31, 4
    li 4, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    addi 3, 1, 0x8
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(30)
    li 4, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(30)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(30)
    lis 3, lbl_8046CB88@ha
    addi 3, 3, lbl_8046CB88@l
    lhz 4, 0x24(30)
    clrlslwi 0, 4, 16, 1
    lhzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A15CC
    li 3, 0x1
    .4byte 0x480000A8 # b .L_802A1670
L_802A15CC:
    cmplwi 4, 0x75
    .4byte 0x41820054 # beq .L_802A1624
    subi 0, 4, 0x68
    clrlwi 0, 0, 16
    cmplwi 0, 0x3
    .4byte 0x40810044 # ble .L_802A1624
    cmplwi 4, 0x82
    .4byte 0x4182003C # beq .L_802A1624
    cmplwi 4, 0x5f
    .4byte 0x41820034 # beq .L_802A1624
    subi 0, 4, 0x70
    clrlwi 0, 0, 16
    cmplwi 0, 0x2
    .4byte 0x40810024 # ble .L_802A1624
    subi 0, 4, 0x40
    clrlwi 0, 0, 16
    cmplwi 0, 0x4
    .4byte 0x40810014 # ble .L_802A1624
    cmplwi 4, 0xe5
    .4byte 0x4182000C # beq .L_802A1624
    cmplwi 4, 0x58
    .4byte 0x4082000C # bne .L_802A162C
L_802A1624:
    li 3, 0x1
    .4byte 0x48000048 # b .L_802A1670
L_802A162C:
    mr 3, 31
    li 4, 0x0
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xe
    .4byte 0x41820024 # beq .L_802A1664
    cmpwi 0, 0x3
    .4byte 0x4182001C # beq .L_802A1664
    cmpwi 0, 0x22
    .4byte 0x4082001C # bne .L_802A166C
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802A166C
L_802A1664:
    li 3, 0x1
    .4byte 0x48000008 # b .L_802A1670
L_802A166C:
    li 3, 0x0
L_802A1670:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A1688:
    stwu 1, -0x40(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x44(1)
    lfs 0, 0x0(4)
    stmw 27, 0x2c(1)
    mr 27, 3
    mr 29, 5
    mr 28, 4
    mr 30, 6
    addi 3, 1, 0x14
    mr 4, 29
    stfs 1, 0x18(1)
    stfs 0, 0x14(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    mr 4, 29
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(27)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(27)
    lhz 0, 0x24(27)
    cmplwi 0, 0x81
    .4byte 0x40820134 # bne .L_802A181C
    subis 0, 30, 0x5342
    cmplwi 0, 0x414c
    .4byte 0x41820104 # beq .L_802A17F8
    lfs 1, 0x4(28)
    addi 3, 1, 0xc
    lfs 0, 0x0(28)
    rlwinm 4, 29, 0, 24, 30
    stfs 1, 0x10(1)
    .4byte 0x83ED90D8 # lwz r31, lbl_8053AC98@sda21(r0)
    stfs 0, 0xc(1)
    bl fn_80226BC4
    stw 3, 0x20(31)
    lwz 30, 0x20(31)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 30
    li 6, 0x9d
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(31)
    mr 4, 29
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 30, 3
    cmpwi 30, -0x1
    .4byte 0x41820018 # beq .L_802A1778
    bl GetRoomConfigRecord
    mr 4, 29
    mr 5, 30
    li 6, 0x1
    bl fn_802D7D00
L_802A1778:
    cmpwi 29, 0x8
    .4byte 0x4180002C # blt .L_802A17A8
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 29
    mr 6, 28
    li 7, 0x0
    addi 4, 4, 0x5249
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000054 # b .L_802A17F8
L_802A17A8:
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 29
    mr 4, 28
    li 5, 0xf9
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 29
    mr 4, 28
    li 5, 0xfa
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802A17F8:
    lis 3, 0x5
    addi 4, 1, 0x8
    addi 0, 3, 0x45
    stw 0, 0x8(1)
    lwz 3, 0x4(27)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802A181C:
    mr 3, 27
    mr 4, 28
    mr 6, 29
    li 5, -0x1
    bl fn_802A3164
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802A1844:
    stwu 1, -0x50(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x54(1)
    lfs 0, 0x0(4)
    stmw 27, 0x3c(1)
    mr 29, 3
    mr 27, 6
    mr 30, 4
    mr 4, 27
    addi 3, 1, 0x2c
    stfs 1, 0x30(1)
    stfs 0, 0x2c(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    mr 31, 27
    mr 4, 27
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(29)
    lwz 3, 0x20(3)
    bl fn_802F9908
    cmpwi 27, 0x0
    sth 3, 0x24(29)
    .4byte 0x40820018 # bne .L_802A18B8
    lhz 0, 0x24(29)
    cmplwi 0, 0x1b0
    .4byte 0x4180000C # blt .L_802A18B8
    cmplwi 0, 0x1cf
    .4byte 0x40810030 # ble .L_802A18E4
L_802A18B8:
    lhz 0, 0x24(29)
    cmplwi 0, 0x231
    .4byte 0x41820024 # beq .L_802A18E4
    cmplwi 0, 0x8a
    .4byte 0x4182001C # beq .L_802A18E4
    cmplwi 0, 0x79
    .4byte 0x41820014 # beq .L_802A18E4
    cmplwi 0, 0x7b
    .4byte 0x4182000C # beq .L_802A18E4
    cmplwi 0, 0x7d
    .4byte 0x4082035C # bne .L_802A1C3C
L_802A18E4:
    lhz 3, 0x24(29)
    cmplwi 3, 0x231
    .4byte 0x40820088 # bne .L_802A1974
    lfs 1, 0x4(30)
    addi 3, 1, 0x24
    lfs 0, 0x0(30)
    rlwinm 4, 27, 0, 24, 30
    stfs 1, 0x28(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x24(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x7a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x418201F4 # beq .L_802A1B4C
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x480001DC # b .L_802A1B4C
L_802A1974:
    cmplwi 3, 0x1b5
    .4byte 0x4180000C # blt .L_802A1984
    cmplwi 3, 0x1ba
    .4byte 0x4081002C # ble .L_802A19AC
L_802A1984:
    subi 0, 3, 0x1bc
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_802A19AC
    cmplwi 3, 0x8a
    .4byte 0x41820014 # beq .L_802A19AC
    cmplwi 3, 0x1c5
    .4byte 0x41800090 # blt .L_802A1A30
    cmplwi 3, 0x1cd
    .4byte 0x41810088 # bgt .L_802A1A30
L_802A19AC:
    lfs 1, 0x4(30)
    addi 3, 1, 0x1c
    lfs 0, 0x0(30)
    rlwinm 4, 27, 0, 24, 30
    stfs 1, 0x20(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x1c(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x83
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820138 # beq .L_802A1B4C
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000120 # b .L_802A1B4C
L_802A1A30:
    cmplwi 3, 0x79
    .4byte 0x41820014 # beq .L_802A1A48
    cmplwi 3, 0x7b
    .4byte 0x4182000C # beq .L_802A1A48
    cmplwi 3, 0x7d
    .4byte 0x40820088 # bne .L_802A1ACC
L_802A1A48:
    lfs 1, 0x4(30)
    addi 3, 1, 0x14
    lfs 0, 0x0(30)
    rlwinm 4, 27, 0, 24, 30
    stfs 1, 0x18(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x14(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x7c
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x4182009C # beq .L_802A1B4C
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_802A1B4C
L_802A1ACC:
    lfs 1, 0x4(30)
    addi 3, 1, 0xc
    lfs 0, 0x0(30)
    rlwinm 4, 27, 0, 24, 30
    stfs 1, 0x10(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0xc(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 27
    li 6, 0x7c
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820018 # beq .L_802A1B4C
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
L_802A1B4C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002D7FC # lfs f0, lbl_8054079C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800028 # bge .L_802A1BB8
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    mr 5, 31
    mr 6, 30
    li 7, 0x0
    addi 4, 4, 0x5254
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802A1BB8:
    bl GetRoomConfigRecord
    lwz 0, 0x40(3)
    cmpwi 0, 0x14
    .4byte 0x4082000C # bne .L_802A1BD0
    li 3, 0x3
    .4byte 0x48000164 # b .L_802A1D30
L_802A1BD0:
    bl GetRoomConfigRecord
    lwz 0, 0x40(3)
    cmpwi 0, 0x11
    .4byte 0x41820014 # beq .L_802A1BF0
    bl GetRoomConfigRecord
    lwz 0, 0x40(3)
    cmpwi 0, 0x18
    .4byte 0x4082000C # bne .L_802A1BF8
L_802A1BF0:
    li 3, 0x4
    .4byte 0x4800013C # b .L_802A1D30
L_802A1BF8:
    lhz 3, 0x24(29)
    cmplwi 3, 0x1b5
    .4byte 0x4180000C # blt .L_802A1C0C
    cmplwi 3, 0x1ba
    .4byte 0x40810024 # ble .L_802A1C2C
L_802A1C0C:
    subi 0, 3, 0x1bc
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_802A1C2C
    cmplwi 3, 0x1c5
    .4byte 0x41800014 # blt .L_802A1C34
    cmplwi 3, 0x1cd
    .4byte 0x4181000C # bgt .L_802A1C34
L_802A1C2C:
    li 3, 0x2
    .4byte 0x48000100 # b .L_802A1D30
L_802A1C34:
    li 3, 0x1
    .4byte 0x480000F8 # b .L_802A1D30
L_802A1C3C:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x4
    .4byte 0x4082001C # bne .L_802A1C64
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_802A1C64
    li 3, 0x8
    .4byte 0x480000D0 # b .L_802A1D30
L_802A1C64:
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_802A1C90
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802A1C90
    lhz 0, 0x24(29)
    cmplwi 0, 0x270
    .4byte 0x41820018 # beq .L_802A1CA4
L_802A1C90:
    lhz 3, 0x24(29)
    cmplwi 3, 0x271
    .4byte 0x4182000C # beq .L_802A1CA4
    cmplwi 3, 0x361
    .4byte 0x4082000C # bne .L_802A1CAC
L_802A1CA4:
    li 3, 0x8
    .4byte 0x48000088 # b .L_802A1D30
L_802A1CAC:
    subi 0, 3, 0x11
    clrlwi 0, 0, 16
    cmplwi 0, 0x2
    .4byte 0x40810054 # ble .L_802A1D0C
    cmplwi 3, 0x38
    .4byte 0x4182004C # beq .L_802A1D0C
    cmplwi 3, 0x3b
    .4byte 0x41820044 # beq .L_802A1D0C
    subi 0, 3, 0x50
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810034 # ble .L_802A1D0C
    cmplwi 3, 0x78
    .4byte 0x4182002C # beq .L_802A1D0C
    cmplwi 3, 0x8f
    .4byte 0x41820024 # beq .L_802A1D0C
    subi 0, 3, 0x9d
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_802A1D0C
    cmplwi 3, 0x1ae
    .4byte 0x4182000C # beq .L_802A1D0C
    cmplwi 3, 0x1af
    .4byte 0x4082000C # bne .L_802A1D14
L_802A1D0C:
    li 3, 0x8
    .4byte 0x48000020 # b .L_802A1D30
L_802A1D14:
    cmplwi 3, 0x7c
    .4byte 0x4182000C # beq .L_802A1D24
    cmplwi 3, 0x83
    .4byte 0x4082000C # bne .L_802A1D2C
L_802A1D24:
    li 3, 0x9
    .4byte 0x48000008 # b .L_802A1D30
L_802A1D2C:
    li 3, 0x0
L_802A1D30:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802A1D44:
    stwu 1, -0x50(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x54(1)
    lfs 0, 0x0(4)
    stmw 27, 0x3c(1)
    mr 28, 3
    mr 30, 6
    mr 27, 4
    mr 29, 5
    addi 3, 1, 0x30
    mr 4, 30
    stfs 1, 0x34(1)
    stfs 0, 0x30(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    mr 4, 30
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(28)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(28)
    li 31, 0x1
    lhz 0, 0x24(28)
    cmplwi 0, 0x76
    .4byte 0x40820098 # bne .L_802A1E40
    lfs 1, 0x4(27)
    addi 3, 1, 0x28
    lfs 0, 0x0(27)
    rlwinm 4, 30, 0, 24, 30
    stfs 1, 0x2c(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x28(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    mr 5, 27
    li 6, 0x77
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 30
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820018 # beq .L_802A1E2C
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
L_802A1E2C:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x26
    bl fn_80230FD0
    .4byte 0x4800029C # b .L_802A20D8
L_802A1E40:
    cmplwi 0, 0x3a
    .4byte 0x40820098 # bne .L_802A1EDC
    lfs 1, 0x4(27)
    addi 3, 1, 0x20
    lfs 0, 0x0(27)
    rlwinm 4, 30, 0, 24, 30
    stfs 1, 0x24(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x20(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    mr 5, 27
    li 6, 0x3b
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 30
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820018 # beq .L_802A1EC8
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
L_802A1EC8:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x26
    bl fn_80230FD0
    .4byte 0x48000200 # b .L_802A20D8
L_802A1EDC:
    cmplwi 0, 0x3f
    .4byte 0x40820098 # bne .L_802A1F78
    lfs 1, 0x4(27)
    addi 3, 1, 0x18
    lfs 0, 0x0(27)
    rlwinm 4, 30, 0, 24, 30
    stfs 1, 0x1c(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x18(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    mr 5, 27
    li 6, 0x3e
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 30
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820018 # beq .L_802A1F64
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
L_802A1F64:
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x26
    bl fn_80230FD0
    .4byte 0x48000164 # b .L_802A20D8
L_802A1F78:
    cmplwi 0, 0x90
    .4byte 0x40820098 # bne .L_802A2014
    lfs 1, 0x4(27)
    addi 3, 1, 0x10
    lfs 0, 0x0(27)
    rlwinm 4, 30, 0, 24, 30
    stfs 1, 0x14(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x10(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    mr 5, 27
    li 6, 0x91
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 30
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820018 # beq .L_802A2000
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
L_802A2000:
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x13
    bl fn_80230FD0
    .4byte 0x480000C8 # b .L_802A20D8
L_802A2014:
    cmplwi 0, 0x91
    .4byte 0x4182000C # beq .L_802A2024
    cmplwi 0, 0x22e
    .4byte 0x40820098 # bne .L_802A20B8
L_802A2024:
    lfs 1, 0x4(27)
    addi 3, 1, 0x8
    lfs 0, 0x0(27)
    rlwinm 4, 30, 0, 24, 30
    stfs 1, 0xc(1)
    .4byte 0x838D90D8 # lwz r28, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 27, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 30
    mr 5, 27
    li 6, 0x92
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 30
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 27, 3
    cmpwi 27, -0x1
    .4byte 0x41820018 # beq .L_802A20A4
    bl GetRoomConfigRecord
    mr 4, 30
    mr 5, 27
    li 6, 0x1
    bl fn_802D7D00
L_802A20A4:
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x12
    bl fn_80230FD0
    .4byte 0x48000024 # b .L_802A20D8
L_802A20B8:
    mr 3, 28
    mr 4, 27
    mr 5, 29
    mr 6, 30
    bl fn_802A3164
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_802A20D8
    li 31, 0x0
L_802A20D8:
    mr 3, 31
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802A20F0:
    stwu 1, -0xe0(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0xe4(1)
    lfs 0, 0x0(4)
    stmw 21, 0xb4(1)
    mr 29, 6
    mr 26, 3
    mr 30, 4
    mr 31, 29
    mr 25, 5
    mr 27, 7
    mr 24, 8
    mr 4, 31
    addi 3, 1, 0x98
    stfs 1, 0x9c(1)
    stfs 0, 0x98(1)
    bl fn_80226BC4
    stw 3, 0x20(26)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(26)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(26)
    mr 3, 30
    mr 4, 31
    bl fn_80226AE0
    lhz 0, 0x24(26)
    mr 28, 3
    cmplwi 0, 0x69
    .4byte 0x408200E4 # bne .L_802A2250
    lfs 1, 0x4(30)
    addi 3, 1, 0x90
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x94(1)
    .4byte 0x82ED90D8 # lwz r23, lbl_8053AC98@sda21(r0)
    stfs 0, 0x90(1)
    bl fn_80226BC4
    stw 3, 0x20(23)
    lwz 22, 0x20(23)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 22
    li 6, 0x7a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(23)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A21F0
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A21F0:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    mr 7, 27
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_802A223C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802A223C:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000BE0 # b .L_802A2E2C
L_802A2250:
    cmplwi 0, 0x68
    .4byte 0x408200D4 # bne .L_802A2328
    lfs 1, 0x4(30)
    addi 3, 1, 0x88
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x8c(1)
    .4byte 0x82ED90D8 # lwz r23, lbl_8053AC98@sda21(r0)
    stfs 0, 0x88(1)
    bl fn_80226BC4
    stw 3, 0x20(23)
    lwz 22, 0x20(23)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 22
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(23)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A22D8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A22D8:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    mr 7, 27
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820B1C # beq .L_802A2E2C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000B08 # b .L_802A2E2C
L_802A2328:
    cmplwi 0, 0x6a
    .4byte 0x408200D4 # bne .L_802A2400
    lfs 1, 0x4(30)
    addi 3, 1, 0x80
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x84(1)
    .4byte 0x82ED90D8 # lwz r23, lbl_8053AC98@sda21(r0)
    stfs 0, 0x80(1)
    bl fn_80226BC4
    stw 3, 0x20(23)
    lwz 22, 0x20(23)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 22
    li 6, 0x50
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(23)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A23B0
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A23B0:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    mr 7, 27
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820A44 # beq .L_802A2E2C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000A30 # b .L_802A2E2C
L_802A2400:
    cmplwi 0, 0x70
    .4byte 0x41820014 # beq .L_802A2418
    cmplwi 0, 0x75
    .4byte 0x4182000C # beq .L_802A2418
    cmplwi 0, 0x6b
    .4byte 0x408202C4 # bne .L_802A26D8
L_802A2418:
    subis 0, 27, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820124 # bne .L_802A2544
    lfs 1, 0x4(30)
    addi 3, 1, 0x78
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x7c(1)
    .4byte 0x82ED90D8 # lwz r23, lbl_8053AC98@sda21(r0)
    stfs 0, 0x78(1)
    bl fn_80226BC4
    stw 3, 0x20(23)
    lwz 22, 0x20(23)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 22
    li 6, 0x5a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(23)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A24A4
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A24A4:
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D6AC4
    clrlwi. 0, 3, 24
    .4byte 0x40820978 # bne .L_802A2E2C
    lhz 0, 0x24(26)
    cmplwi 0, 0x6b
    .4byte 0x40820030 # bne .L_802A24F0
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addi 7, 27, 0x3
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 23, 3
    .4byte 0x4800002C # b .L_802A2518
L_802A24F0:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    mr 7, 27
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 23, 3
L_802A2518:
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802A2530
    bl fn_802CEC10
L_802A2530:
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D6B24
    .4byte 0x480008EC # b .L_802A2E2C
L_802A2544:
    lfs 1, 0x4(30)
    addi 3, 1, 0x70
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x74(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x70(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x79
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A25C4
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A25C4:
    lhz 0, 0x24(26)
    cmplwi 0, 0x70
    .4byte 0x40820030 # bne .L_802A25FC
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    mr 7, 27
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 23, 3
    .4byte 0x480000B8 # b .L_802A26B0
L_802A25FC:
    cmplwi 0, 0x75
    .4byte 0x40820030 # bne .L_802A2630
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addi 7, 27, 0x1
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 23, 3
    .4byte 0x48000084 # b .L_802A26B0
L_802A2630:
    cmplwi 0, 0x6b
    .4byte 0x4082007C # bne .L_802A26B0
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D6AC4
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_802A2678
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addi 7, 27, 0x4
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 23, 3
    .4byte 0x4800003C # b .L_802A26B0
L_802A2678:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addi 7, 27, 0x3
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 23, 3
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D6B24
L_802A26B0:
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182076C # beq .L_802A2E2C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000758 # b .L_802A2E2C
L_802A26D8:
    cmplwi 0, 0x74
    .4byte 0x408201C8 # bne .L_802A28A4
    subis 0, 27, 0x1
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_802A27D4
    lfs 1, 0x4(30)
    addi 3, 1, 0x68
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x6c(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x68(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x5a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A276C
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A276C:
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D6AC4
    clrlwi. 0, 3, 24
    .4byte 0x408206B0 # bne .L_802A2E2C
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addis 7, 27, 0x10
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802A27C0
    bl fn_802CEC10
L_802A27C0:
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D6B24
    .4byte 0x4800065C # b .L_802A2E2C
L_802A27D4:
    lfs 1, 0x4(30)
    addi 3, 1, 0x60
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x64(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x60(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x7d
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A2854
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A2854:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addis 7, 27, 0x10
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418205A0 # beq .L_802A2E2C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800058C # b .L_802A2E2C
L_802A28A4:
    cmplwi 0, 0x146
    .4byte 0x408201C8 # bne .L_802A2A70
    subis 0, 27, 0x1
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_802A29A0
    lfs 1, 0x4(30)
    addi 3, 1, 0x58
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x5c(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x58(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x147
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A2938
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A2938:
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D6AC4
    clrlwi. 0, 3, 24
    .4byte 0x408204E4 # bne .L_802A2E2C
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addis 7, 27, 0x10
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802A298C
    bl fn_802CEC10
L_802A298C:
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D6B24
    .4byte 0x48000490 # b .L_802A2E2C
L_802A29A0:
    lfs 1, 0x4(30)
    addi 3, 1, 0x50
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x54(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x50(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x7d
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A2A20
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A2A20:
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addis 7, 27, 0x10
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418203D4 # beq .L_802A2E2C
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480003C0 # b .L_802A2E2C
L_802A2A70:
    cmplwi 0, 0xfa
    .4byte 0x40820170 # bne .L_802A2BE4
    subis 0, 27, 0x1
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_802A2B6C
    lfs 1, 0x4(30)
    addi 3, 1, 0x48
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x4c(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x48(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x5a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A2B04
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A2B04:
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D6AC4
    clrlwi. 0, 3, 24
    .4byte 0x40820318 # bne .L_802A2E2C
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    mr 6, 30
    addis 7, 27, 0x20
    addi 4, 4, 0x4153
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802A2B58
    bl fn_802CEC10
L_802A2B58:
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D6B24
    .4byte 0x480002C4 # b .L_802A2E2C
L_802A2B6C:
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D72BC
    clrlwi. 0, 3, 24
    .4byte 0x408202B0 # bne .L_802A2E2C
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D7310
    mr 3, 28
    mr 4, 29
    addi 5, 1, 0xa0
    bl fn_80226CA8
    lfs 1, 0xa0(1)
    .4byte 0xC042D7EC # lfs f2, lbl_8054078C@sda21(r0)
    lfs 0, 0xa4(1)
    fadds 1, 1, 2
    fadds 0, 0, 2
    stfs 1, 0xa0(1)
    stfs 0, 0xa4(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    mr 5, 29
    addi 4, 4, 0x4153
    addi 6, 1, 0xa0
    addis 7, 27, 0x20
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800024C # b .L_802A2E2C
L_802A2BE4:
    cmplwi 0, 0x71
    .4byte 0x40820244 # bne .L_802A2E2C
    cmpwi 27, 0x0
    .4byte 0x40820120 # bne .L_802A2D10
    mr 3, 25
    bl fn_802353AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820088 # bne .L_802A2C8C
    lfs 1, 0x4(30)
    addi 3, 1, 0x40
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x44(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x40(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x7b
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820120 # beq .L_802A2D90
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000108 # b .L_802A2D90
L_802A2C8C:
    lfs 1, 0x4(30)
    addi 3, 1, 0x38
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x3c(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x38(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x7b
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x4182009C # beq .L_802A2D90
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_802A2D90
L_802A2D10:
    lfs 1, 0x4(30)
    addi 3, 1, 0x30
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x34(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x30(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x5a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A2D90
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A2D90:
    bl SpatialRegistry_GetBase
    lis 4, 0x424f
    mr 5, 29
    mr 6, 30
    li 7, 0x0
    addi 4, 4, 0x5244
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 21, 3
    bl SpatialRegistry_GetBase
    mr 4, 21
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_802A2DDC
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802A2DDC:
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 29
    mr 4, 30
    li 5, 0x24a
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022D7F0 # lfs f1, lbl_80540790@sda21(r0)
    mr 3, 29
    mr 4, 30
    li 5, 0x24b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802A2E2C:
    mr 3, 26
    mr 4, 30
    mr 5, 25
    mr 6, 31
    bl fn_802A3164
    cmpwi 24, 0x0
    .4byte 0x4182030C # beq .L_802A3150
    lhz 0, 0x24(26)
    cmplwi 0, 0xea
    .4byte 0x40820098 # bne .L_802A2EE8
    lfs 1, 0x4(30)
    addi 3, 1, 0x28
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x2c(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x28(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x252
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A2ED4
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A2ED4:
    lis 4, 0x3
    mr 3, 25
    addi 4, 4, 0x6
    bl fn_80230FD0
    .4byte 0x4800026C # b .L_802A3150
L_802A2EE8:
    cmplwi 0, 0xeb
    .4byte 0x40820098 # bne .L_802A2F84
    lfs 1, 0x4(30)
    addi 3, 1, 0x20
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x24(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x20(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x253
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A2F70
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A2F70:
    lis 4, 0x3
    mr 3, 25
    addi 4, 4, 0x6
    bl fn_80230FD0
    .4byte 0x480001D0 # b .L_802A3150
L_802A2F84:
    cmplwi 0, 0xec
    .4byte 0x40820098 # bne .L_802A3020
    lfs 1, 0x4(30)
    addi 3, 1, 0x18
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x1c(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x18(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x254
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A300C
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A300C:
    lis 4, 0x3
    mr 3, 25
    addi 4, 4, 0x6
    bl fn_80230FD0
    .4byte 0x48000134 # b .L_802A3150
L_802A3020:
    cmplwi 0, 0xf9
    .4byte 0x40820098 # bne .L_802A30BC
    lfs 1, 0x4(30)
    addi 3, 1, 0x10
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x14(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x10(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x25b
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A30A8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A30A8:
    lis 4, 0x3
    mr 3, 25
    addi 4, 4, 0x6
    bl fn_80230FD0
    .4byte 0x48000098 # b .L_802A3150
L_802A30BC:
    cmplwi 0, 0x159
    .4byte 0x40820090 # bne .L_802A3150
    subis 0, 27, 0x1
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_802A3150
    lfs 1, 0x4(30)
    addi 3, 1, 0x8
    lfs 0, 0x0(30)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0xc(1)
    .4byte 0x82CD90D8 # lwz r22, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(22)
    lwz 21, 0x20(22)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 21
    li 6, 0x5a
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(22)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 21, 3
    cmpwi 21, -0x1
    .4byte 0x41820018 # beq .L_802A3150
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 21
    li 6, 0x1
    bl fn_802D7D00
L_802A3150:
    lmw 21, 0xb4(1)
    lwz 0, 0xe4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_802A3164:
    stwu 1, -0x90(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x94(1)
    lfs 0, 0x0(4)
    stmw 24, 0x70(1)
    mr 28, 3
    mr 31, 6
    mr 29, 4
    mr 4, 31
    addi 3, 1, 0x48
    stfs 1, 0x4c(1)
    stfs 0, 0x48(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    mr 4, 31
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(28)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(28)
    li 30, 0x1
    lhz 0, 0x24(28)
    cmplwi 0, 0x40
    .4byte 0x41800290 # blt .L_802A3454
    cmplwi 0, 0x44
    .4byte 0x41810288 # bgt .L_802A3454
    cmplwi 0, 0x41
    .4byte 0x40820120 # bne .L_802A32F4
    lfs 1, 0x4(29)
    addi 3, 1, 0x40
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x44(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x40(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A3258
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x0
    bl fn_802D7D00
L_802A3258:
    bl SpatialRegistry_GetBase
    lwz 26, 0x1008(3)
    li 24, 0x0
    li 25, 0x0
    .4byte 0x48000080 # b .L_802A32E8
L_802A326C:
    bl SpatialRegistry_GetBase
    addi 0, 25, 0x8
    lwzx 27, 3, 0
    cmplwi 27, 0x0
    .4byte 0x41820064 # beq .L_802A32E0
    lwz 3, 0x1a0(27)
    subis 0, 3, 0x5442
    cmplwi 0, 0x4f32
    .4byte 0x40820054 # bne .L_802A32E0
    lwz 0, 0x4(27)
    cmpw 31, 0
    .4byte 0x40820048 # bne .L_802A32E0
    psq_l 0, 0xc(27), 0, 0
    mr 4, 31
    lfs 2, 0x14(27)
    addi 3, 1, 0x50
    psq_st 0, 0x58(1), 0, 0
    lfs 1, 0x58(1)
    lfs 0, 0x5c(1)
    stfs 2, 0x60(1)
    stfs 1, 0x50(1)
    stfs 0, 0x54(1)
    bl fn_80226BC4
    lwz 0, 0x20(28)
    cmpw 0, 3
    .4byte 0x40820010 # bne .L_802A32E0
    mr 3, 27
    bl fn_801F3668
    .4byte 0x48000124 # b .L_802A3400
L_802A32E0:
    addi 25, 25, 0x4
    addi 24, 24, 0x1
L_802A32E8:
    cmpw 24, 26
    .4byte 0x4180FF80 # blt .L_802A326C
    .4byte 0x48000110 # b .L_802A3400
L_802A32F4:
    cmplwi 0, 0x43
    .4byte 0x40820088 # bne .L_802A3380
    lfs 1, 0x4(29)
    addi 3, 1, 0x38
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x3c(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x38(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x50
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x4182009C # beq .L_802A3400
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_802A3400
L_802A3380:
    lfs 1, 0x4(29)
    addi 3, 1, 0x30
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x34(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x30(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x11
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A3400
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A3400:
    bl SpatialRegistry_GetBase
    lhz 7, 0x24(28)
    lis 4, 0x5455
    mr 5, 31
    mr 6, 29
    addi 4, 4, 0x424f
    subi 7, 7, 0x40
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418203C8 # beq .L_802A3804
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480003B4 # b .L_802A3804
L_802A3454:
    cmplwi 0, 0x45
    .4byte 0x418001F8 # blt .L_802A3650
    cmplwi 0, 0x49
    .4byte 0x418101F0 # bgt .L_802A3650
    cmplwi 0, 0x46
    .4byte 0x40820088 # bne .L_802A34F0
    lfs 1, 0x4(29)
    addi 3, 1, 0x28
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x2c(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x28(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x14
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820128 # beq .L_802A35FC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000110 # b .L_802A35FC
L_802A34F0:
    cmplwi 0, 0x48
    .4byte 0x40820088 # bne .L_802A357C
    lfs 1, 0x4(29)
    addi 3, 1, 0x20
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x24(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x20(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x52
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x4182009C # beq .L_802A35FC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000084 # b .L_802A35FC
L_802A357C:
    lfs 1, 0x4(29)
    addi 3, 1, 0x18
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x1c(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x18(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x15
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A35FC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A35FC:
    bl SpatialRegistry_GetBase
    lhz 7, 0x24(28)
    lis 4, 0x5455
    mr 5, 31
    mr 6, 29
    addi 4, 4, 0x424f
    subi 7, 7, 0x45
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418201CC # beq .L_802A3804
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480001B8 # b .L_802A3804
L_802A3650:
    cmplwi 0, 0x4e
    .4byte 0x408200D4 # bne .L_802A3728
    lfs 1, 0x4(29)
    addi 3, 1, 0x10
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0x14(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x10(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x11
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A36D8
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A36D8:
    bl SpatialRegistry_GetBase
    lis 4, 0x5455
    mr 5, 31
    mr 6, 29
    li 7, 0x80
    addi 4, 4, 0x424f
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200F4 # beq .L_802A3804
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480000E0 # b .L_802A3804
L_802A3728:
    cmplwi 0, 0x4f
    .4byte 0x408200D4 # bne .L_802A3800
    lfs 1, 0x4(29)
    addi 3, 1, 0x8
    lfs 0, 0x0(29)
    rlwinm 4, 31, 0, 24, 30
    stfs 1, 0xc(1)
    .4byte 0x836D90D8 # lwz r27, lbl_8053AC98@sda21(r0)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(27)
    lwz 26, 0x20(27)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 26
    li 6, 0x11
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(27)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 26, 3
    cmpwi 26, -0x1
    .4byte 0x41820018 # beq .L_802A37B0
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 26
    li 6, 0x1
    bl fn_802D7D00
L_802A37B0:
    bl SpatialRegistry_GetBase
    lis 4, 0x5455
    mr 5, 31
    mr 6, 29
    li 7, 0x100
    addi 4, 4, 0x424f
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 26, 3
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_802A3804
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000008 # b .L_802A3804
L_802A3800:
    li 30, 0x0
L_802A3804:
    mr 3, 30
    lmw 24, 0x70(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_802A381C:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x24(1)
    addi 3, 1, 0x8
    lfs 0, 0x0(4)
    rlwinm 4, 5, 0, 24, 30
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    mr 4, 30
    lwz 3, 0x20(6)
    clrlwi 6, 31, 16
    bl fn_802F9974
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A3884:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x24(1)
    lfs 0, 0x0(4)
    rlwinm 4, 6, 0, 24, 30
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 7
    stw 29, 0x14(1)
    mr 29, 6
    stw 28, 0x10(1)
    mr 28, 3
    addi 3, 1, 0x8
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 31, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 31
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 29
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 31, 3
    cmpwi 31, -0x1
    .4byte 0x41820018 # beq .L_802A3928
    bl GetRoomConfigRecord
    mr 4, 29
    mr 5, 31
    li 6, 0x0
    bl fn_802D7D00
L_802A3928:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A3948:
    stwu 1, -0x20(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x24(1)
    lfs 0, 0x0(4)
    rlwinm 4, 6, 0, 24, 30
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 7
    stw 29, 0x14(1)
    mr 29, 6
    stw 28, 0x10(1)
    mr 28, 3
    addi 3, 1, 0x8
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(28)
    lwz 31, 0x20(28)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 31
    clrlwi 6, 30, 16
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(28)
    mr 4, 29
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 31, 3
    cmpwi 31, -0x1
    .4byte 0x41820018 # beq .L_802A39EC
    bl GetRoomConfigRecord
    mr 4, 29
    mr 5, 31
    li 6, 0x1
    bl fn_802D7D00
L_802A39EC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A3A0C:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_8046C4A8@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    addi 31, 4, lbl_8046C4A8@l
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    lwz 3, 0x8(3)
    subi 0, 3, 0x1
    stw 0, 0x8(30)
    lwz 0, 0x8(30)
    cmpwi 0, 0x0
    .4byte 0x408200EC # bne .L_802A3B30
    li 0, 0xa
    stw 0, 0x8(30)
    lwz 3, 0xc(30)
    addi 0, 3, 0x2
    stw 0, 0xc(30)
    lwz 0, 0xc(30)
    cmpwi 0, 0x10
    .4byte 0x4180000C # blt .L_802A3A70
    li 0, 0x0
    stw 0, 0xc(30)
L_802A3A70:
    bl GetRoomConfigRecord
    lwz 0, 0x40(3)
    cmpwi 0, 0x10
    .4byte 0x40820060 # bne .L_802A3ADC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5343
    lwz 0, 0xc(30)
    addi 6, 31, 0x0
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4820
    slwi 0, 0, 1
    addi 5, 31, 0x170
    lwz 12, 0x0(3)
    lhzx 6, 6, 0
    lwz 12, 0x18(12)
    addi 29, 6, 0x4000
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    mr 5, 29
    li 7, 0x3800
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x800
    bl fn_802FA160
    .4byte 0x48000058 # b .L_802A3B30
L_802A3ADC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5343
    lwz 0, 0xc(30)
    addi 6, 31, 0x0
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4820
    slwi 0, 0, 1
    addi 5, 31, 0x170
    lwz 12, 0x0(3)
    lhzx 29, 6, 0
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    mr 5, 29
    li 7, 0x3800
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x800
    bl fn_802FA160
L_802A3B30:
    lwz 3, 0x18(30)
    subi 0, 3, 0x1
    stw 0, 0x18(30)
    lwz 0, 0x18(30)
    cmpwi 0, 0x0
    .4byte 0x40820220 # bne .L_802A3D64
    li 0, 0xa
    stw 0, 0x18(30)
    lwz 3, 0x1c(30)
    addi 0, 3, 0x1
    stw 0, 0x1c(30)
    lwz 0, 0x1c(30)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_802A3B70
    li 0, 0x0
    stw 0, 0x1c(30)
L_802A3B70:
    bl GetRoomConfigRecord
    bl fn_802D9C4C
    mr 29, 3
    lbz 0, 0x0(3)
    extsb 0, 0
    cmpwi 0, 0x6c
    .4byte 0x40820068 # bne .L_802A3BF0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5343
    lwz 0, 0x1c(30)
    addi 6, 31, 0x0
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4820
    slwi 0, 0, 1
    addi 5, 31, 0x184
    lwz 12, 0x0(3)
    lhzx 6, 6, 0
    lwz 12, 0x18(12)
    addi 29, 6, 0x2000
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    mr 5, 29
    li 7, 0x5800
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x400
    bl fn_802FA160
    li 0, 0x14
    stw 0, 0x18(30)
    .4byte 0x48000178 # b .L_802A3D64
L_802A3BF0:
    cmpwi 0, 0x73
    .4byte 0x4182000C # beq .L_802A3C00
    cmpwi 0, 0x77
    .4byte 0x40820060 # bne .L_802A3C5C
L_802A3C00:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5343
    lwz 0, 0x1c(30)
    addi 6, 31, 0x0
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4820
    slwi 0, 0, 1
    addi 5, 31, 0x184
    lwz 12, 0x0(3)
    lhzx 6, 6, 0
    lwz 12, 0x18(12)
    addi 29, 6, 0x6000
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    mr 5, 29
    li 7, 0x1c00
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x400
    bl fn_802FA160
    .4byte 0x4800010C # b .L_802A3D64
L_802A3C5C:
    cmpwi 0, 0x6b
    .4byte 0x4182000C # beq .L_802A3C6C
    cmpwi 0, 0x76
    .4byte 0x40820074 # bne .L_802A3CDC
L_802A3C6C:
    lwz 0, 0x1c(30)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_802A3C80
    li 0, 0x0
    stw 0, 0x1c(30)
L_802A3C80:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5343
    lwz 0, 0x1c(30)
    addi 6, 31, 0x0
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4820
    slwi 0, 0, 1
    addi 5, 31, 0x184
    lwz 12, 0x0(3)
    lhzx 6, 6, 0
    lwz 12, 0x18(12)
    addi 29, 6, 0x1000
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    mr 5, 29
    li 7, 0x5c00
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x400
    bl fn_802FA160
    .4byte 0x4800008C # b .L_802A3D64
L_802A3CDC:
    bl GetRoomConfigRecord
    lwz 0, 0x40(3)
    cmpwi 0, 0x1b
    .4byte 0x41820010 # beq .L_802A3CF8
    lbz 0, 0x0(29)
    cmpwi 0, 0x79
    .4byte 0x40820070 # bne .L_802A3D64
L_802A3CF8:
    lwz 0, 0x1c(30)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_802A3D0C
    li 0, 0x0
    stw 0, 0x1c(30)
L_802A3D0C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5343
    lwz 0, 0x1c(30)
    addi 6, 31, 0x0
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4820
    slwi 0, 0, 2
    addi 5, 31, 0x184
    lwz 12, 0x0(3)
    lhzx 6, 6, 0
    lwz 12, 0x18(12)
    addi 29, 6, 0x4000
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    mr 5, 29
    li 7, 0x5800
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x800
    bl fn_802FA160
L_802A3D64:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802A3D80:
    li 4, 0xa
    li 0, 0x0
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    stw 4, 0x10(3)
    stw 0, 0x14(3)
    stw 4, 0x18(3)
    stw 0, 0x1c(3)
    blr

fn_802A3DA4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820050 # beq .L_802A3E10
    lis 3, lbl_804A7C98@ha
    li 0, 0x0
    addi 3, 3, lbl_804A7C98@l
    stw 3, 0x0(30)
    .4byte 0x900D90D8 # stw r0, lbl_8053AC98@sda21(r0)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_802A3DF8
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_802A3DF8:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x4(30)
    .4byte 0x4081000C # ble .L_802A3E10
    mr 3, 30
    bl dtor_80084580
L_802A3E10:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A3E2C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804A7C98@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804A7C98@l
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x5c
    stw 30, 0x8(1)
    stw 0, 0x0(31)
    .4byte 0x93ED90D8 # stw r31, lbl_8053AC98@sda21(r0)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820014 # beq .L_802A3E74
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_802A3E74:
    stw 30, 0x4(31)
    mr 3, 31
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802A3E94:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D0968@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D0968@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A3EE4
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
L_802A3EE4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A3F1C
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
L_802A3F1C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A3F54
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
L_802A3F54:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A3F8C
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
L_802A3F8C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A3FC4
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
L_802A3FC4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A3FFC
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
L_802A3FFC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A4034
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
L_802A4034:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A406C
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
L_802A406C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802A40A4
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
L_802A40A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_802A3E94

