# Fresh project-wide gap hunt continuation: 24 functions, 9,632 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000B628
etb_8000B628:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B628, 8

.global etb_8000B630
etb_8000B630:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B630, 8

.global etb_8000B638
etb_8000B638:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B638, 8

.global etb_8000B640
etb_8000B640:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B640, 8

.global etb_8000B648
etb_8000B648:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B648, 8

.global etb_8000B650
etb_8000B650:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B650, 8

.global etb_8000B658
etb_8000B658:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B658, 8

.global etb_8000B660
etb_8000B660:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B660, 8

.global etb_8000B668
etb_8000B668:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000B668, 8

.global etb_8000B670
etb_8000B670:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B670, 8

.global etb_8000B678
etb_8000B678:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B678, 8

.global etb_8000B680
etb_8000B680:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B680, 8

.section extabindex, "a"
.balign 4
.global eti_80019C30
eti_80019C30:
    .4byte fn_8024F54C
    .4byte 0x00000098
    .4byte etb_8000B628
.size eti_80019C30, 12

.global eti_80019C3C
eti_80019C3C:
    .4byte fn_8024F5E4
    .4byte 0x0000004C
    .4byte etb_8000B630
.size eti_80019C3C, 12

.global eti_80019C48
eti_80019C48:
    .4byte fn_8024F63C
    .4byte 0x0000083C
    .4byte etb_8000B638
.size eti_80019C48, 12

.global eti_80019C54
eti_80019C54:
    .4byte fn_8024FE78
    .4byte 0x00000044
    .4byte etb_8000B640
.size eti_80019C54, 12

.global eti_80019C60
eti_80019C60:
    .4byte fn_8024FEBC
    .4byte 0x00000040
    .4byte etb_8000B648
.size eti_80019C60, 12

.global eti_80019C6C
eti_80019C6C:
    .4byte fn_8024FEFC
    .4byte 0x00000058
    .4byte etb_8000B650
.size eti_80019C6C, 12

.global eti_80019C78
eti_80019C78:
    .4byte fn_8024FFC8
    .4byte 0x00000068
    .4byte etb_8000B658
.size eti_80019C78, 12

.global eti_80019C84
eti_80019C84:
    .4byte fn_80250030
    .4byte 0x00000060
    .4byte etb_8000B660
.size eti_80019C84, 12

.global eti_80019C90
eti_80019C90:
    .4byte fn_80250090
    .4byte 0x00000A3C
    .4byte etb_8000B668
.size eti_80019C90, 12

.global eti_80019C9C
eti_80019C9C:
    .4byte fn_80250ACC
    .4byte 0x00000264
    .4byte etb_8000B670
.size eti_80019C9C, 12

.global eti_80019CA8
eti_80019CA8:
    .4byte fn_80250D30
    .4byte 0x000002A4
    .4byte etb_8000B678
.size eti_80019CA8, 12

.global eti_80019CB4
eti_80019CB4:
    .4byte fn_80250FD4
    .4byte 0x00000810
    .4byte etb_8000B680
.size eti_80019CB4, 12

.text
.balign 4
.global fn_8024F54C
.global fn_8024F5E4
.global fn_8024F630
.global fn_8024F63C
.global fn_8024FE78
.global fn_8024FEBC
.global fn_8024FEFC
.global fn_8024FF54
.global fn_8024FF6C
.global fn_8024FF84
.global fn_8024FF9C
.global fn_8024FFB4
.global fn_8024FFC8
.global fn_80250030
.global fn_80250090
.global fn_80250ACC
.global fn_80250D30
.global fn_80250FD4
.global fn_802517E4
.global fn_802517F8
.global fn_802518AC
.global fn_8025190C
.global fn_8025196C
.global fn_8025197C

fn_8024F54C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x41800050 # blt .L_8024F5C0
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8024F584
    .4byte 0x48000008 # b .L_8024F588
L_8024F584:
    lwz 3, 0x4(30)
L_8024F588:
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8024F5C0
    subis 0, 31, 0x100
    cmplwi 0, 0x2
    .4byte 0x40820024 # bne .L_8024F5C0
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8024F5B0
    .4byte 0x48000008 # b .L_8024F5B4
L_8024F5B0:
    lwz 3, 0x4(30)
L_8024F5B4:
    li 4, 0x10
    bl fn_803037D4
    .4byte 0x48000010 # b .L_8024F5CC
L_8024F5C0:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    mr 4, 31
    bl fn_80458F04
L_8024F5CC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024F5E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_8024F618
    lwz 0, 0x1240(31)
    cmpwi 0, 0x19
    .4byte 0x4082000C # bne .L_8024F618
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024F61C
L_8024F618:
    li 3, 0x0
L_8024F61C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024F630:
    lwz 3, 0xbf0(3)
    lbz 3, 0xb4(3)
    blr

fn_8024F63C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 31, 3
    lbz 0, 0xc80(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024F664
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024F6B8
L_8024F664:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024F678
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024F6B8
L_8024F678:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024F68C
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024F6B8
L_8024F68C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024F6A0
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024F6B8
L_8024F6A0:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024F6B4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024F6B8
L_8024F6B4:
    li 0, 0x1
L_8024F6B8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024F6C8
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024F808
L_8024F6C8:
    li 29, 0x0
    mr 28, 29
L_8024F6D0:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024F6E4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024F744
L_8024F6E4:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024F734
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024F718
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024F744
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024F744
L_8024F718:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_8024F744
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024F744
L_8024F734:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024F744
    addi 29, 29, 0x1
L_8024F744:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8024F6D0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024F760
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024F778
L_8024F760:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024F774
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024F778
L_8024F774:
    lwz 3, 0x120c(31)
L_8024F778:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024F7F0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024F798
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024F79C
L_8024F798:
    lwz 30, 0x1224(31)
L_8024F79C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024F7B0
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024F7E8
L_8024F7B0:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_8024F7D8
L_8024F7BC:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_8024F7D4
    addi 28, 28, 0x1
L_8024F7D4:
    addi 29, 29, 0x1
L_8024F7D8:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8024F7BC
    addi 0, 28, 0x1
L_8024F7E8:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_8024F7FC
L_8024F7F0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024F804
L_8024F7FC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024F808
L_8024F804:
    li 0, 0x1
L_8024F808:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024F818
    li 0, 0x0
    .4byte 0x48000050 # b .L_8024F864
L_8024F818:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024F82C
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024F864
L_8024F82C:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_8024F840
    li 0, 0x0
    .4byte 0x48000028 # b .L_8024F864
L_8024F840:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8024F864:
    clrlwi. 0, 0, 24
    .4byte 0x40820280 # bne .L_8024FAE8
    lwz 3, 0xdac(31)
    cmpwi 3, 0x0
    .4byte 0x4180003C # blt .L_8024F8B0
    bl fn_8022D7F8
    mr 30, 3
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820258 # bne .L_8024FAE8
    li 4, -0x1
    li 0, 0x0
    stw 4, 0xdac(31)
    li 3, 0x0
    stw 0, 0xda8(31)
    stw 4, 0xda4(31)
    .4byte 0x480005B8 # b .L_8024FE64
L_8024F8B0:
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024F8C4
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024F918
L_8024F8C4:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024F8D8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024F918
L_8024F8D8:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024F8EC
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024F918
L_8024F8EC:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024F900
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024F918
L_8024F900:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024F914
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024F918
L_8024F914:
    li 0, 0x1
L_8024F918:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024F928
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024FA68
L_8024F928:
    li 29, 0x0
    mr 28, 29
L_8024F930:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024F944
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024F9A4
L_8024F944:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024F994
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024F978
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024F9A4
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024F9A4
L_8024F978:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024F9A4
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024F9A4
L_8024F994:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024F9A4
    addi 29, 29, 0x1
L_8024F9A4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8024F930
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024F9C0
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024F9D8
L_8024F9C0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024F9D4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024F9D8
L_8024F9D4:
    lwz 3, 0x120c(31)
L_8024F9D8:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024FA50
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024F9F8
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024F9FC
L_8024F9F8:
    lwz 30, 0x1224(31)
L_8024F9FC:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024FA10
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024FA48
L_8024FA10:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_8024FA38
L_8024FA1C:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_8024FA34
    addi 29, 29, 0x1
L_8024FA34:
    addi 28, 28, 0x1
L_8024FA38:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_8024FA1C
    addi 0, 29, 0x1
L_8024FA48:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_8024FA5C
L_8024FA50:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024FA64
L_8024FA5C:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024FA68
L_8024FA64:
    li 0, 0x1
L_8024FA68:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024FA78
    li 0, 0x0
    .4byte 0x48000050 # b .L_8024FAC4
L_8024FA78:
    lbz 0, 0x456(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024FA8C
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024FAC4
L_8024FA8C:
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_8024FAA0
    li 0, 0x0
    .4byte 0x48000028 # b .L_8024FAC4
L_8024FAA0:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x20
    bl fn_80309D6C
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8024FAC4:
    clrlwi. 0, 0, 24
    .4byte 0x40820020 # bne .L_8024FAE8
    li 4, -0x1
    li 0, 0x0
    stw 4, 0xdac(31)
    li 3, 0x0
    stw 0, 0xda8(31)
    stw 4, 0xda4(31)
    .4byte 0x48000380 # b .L_8024FE64
L_8024FAE8:
    li 29, 0x0
    mr 30, 29
L_8024FAF0:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4082000C # bne .L_8024FB04
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024FB64
L_8024FB04:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024FB54
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024FB38
    mr 3, 30
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024FB64
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024FB64
L_8024FB38:
    lwz 27, 0x4(31)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024FB64
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024FB64
L_8024FB54:
    lwz 0, 0xd60(31)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_8024FB64
    addi 29, 29, 0x1
L_8024FB64:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_8024FAF0
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024FB80
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024FB98
L_8024FB80:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024FB94
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024FB98
L_8024FB94:
    lwz 3, 0x120c(31)
L_8024FB98:
    cmpwi 3, 0x5
    .4byte 0x4082002C # bne .L_8024FBC8
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_8024FBC8
    li 4, -0x1
    li 0, 0x0
    stw 4, 0xdac(31)
    li 3, 0x0
    stw 0, 0xda8(31)
    stw 4, 0xda4(31)
    .4byte 0x480002A0 # b .L_8024FE64
L_8024FBC8:
    lwz 0, 0x3dc(31)
    lis 4, lbl_8046AE28@ha
    addi 3, 1, 0x18
    li 5, 0x1
    mulli 6, 0, 0xc
    addi 0, 4, lbl_8046AE28@l
    add 4, 0, 6
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    psq_l 2, 0x0(3), 0, 0
    psq_l 0, 0x8(31), 0, 0
    psq_l 1, 0x8(3), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 0, 0x10(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x3b4(31)
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8024FC44
    lwz 5, 0x3b4(31)
    mr 3, 31
    addi 4, 1, 0x18
    bl fn_802684A4
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8024FC5C
L_8024FC44:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xdac(31)
    li 3, 0x0
    stw 0, 0xda8(31)
    .4byte 0x4800020C # b .L_8024FE64
L_8024FC5C:
    .4byte 0xC042D0E4 # lfs f2, lbl_80540084@sda21(r0)
    lis 3, lbl_8046AE58@ha
    .4byte 0xC082D090 # lfs f4, lbl_80540030@sda21(r0)
    addi 3, 3, lbl_8046AE58@l
    stfs 2, 0x8(1)
    li 30, 0x0
    stfs 2, 0xc(1)
    stfs 4, 0x10(1)
    stfs 4, 0x14(1)
    lfs 0, 0x8(31)
    fadds 3, 2, 0
    fadds 1, 4, 0
    stfs 3, 0x8(1)
    lfs 0, 0xc(31)
    fadds 2, 2, 0
    stfs 1, 0x10(1)
    fadds 0, 4, 0
    stfs 2, 0xc(1)
    stfs 0, 0x14(1)
    lwz 0, 0x3dc(31)
    slwi 0, 0, 3
    lfsx 4, 3, 0
    add 3, 3, 0
    lfs 5, 0x4(3)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x8(1)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
L_8024FCDC:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4182015C # beq .L_8024FE40
    mr 3, 30
    bl fn_8022D894
    clrlwi. 0, 3, 24
    .4byte 0x4182014C # beq .L_8024FE40
    lwz 27, 0x3dc(31)
    mr 3, 30
    bl fn_80230CFC
    cmpw 27, 3
    .4byte 0x40820138 # bne .L_8024FE40
    li 27, 0x0
    li 28, 0x0
L_8024FD14:
    mr 3, 28
    bl fn_80238EDC
    cmpw 30, 3
    .4byte 0x4082000C # bne .L_8024FD2C
    li 27, 0x1
    .4byte 0x48000010 # b .L_8024FD38
L_8024FD2C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFE0 # blt .L_8024FD14
L_8024FD38:
    clrlwi. 0, 27, 24
    .4byte 0x40820104 # bne .L_8024FE40
    lwz 5, 0x3b4(31)
    mr 3, 30
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    addi 4, 1, 0x8
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x418200E4 # beq .L_8024FE40
    lwz 3, 0x1240(31)
    cmpwi 3, 0x1a
    .4byte 0x418200A8 # beq .L_8024FE10
    cmpwi 3, 0x0
    .4byte 0x41820038 # beq .L_8024FDA8
    subi 0, 3, 0x2
    cmplwi 0, 0x1
    .4byte 0x4081002C # ble .L_8024FDA8
    cmpwi 3, 0x11
    .4byte 0x4082008C # bne .L_8024FE10
    mr 3, 31
    bl fn_8025F500
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_8024FE10
    mr 3, 31
    bl fn_8025F590
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_8024FE10
L_8024FDA8:
    mr 3, 31
    li 4, 0x1a
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8024FDC4
    li 0, 0x0
    .4byte 0x48000048 # b .L_8024FE08
L_8024FDC4:
    li 3, 0x1a
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    stb 0, 0x124d(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8024FE04
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8024FE04
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024FE04
    li 0, 0x0
    stb 0, 0xcfe(31)
L_8024FE04:
    li 0, 0x1
L_8024FE08:
    clrlwi. 0, 0, 24
    .4byte 0x40820040 # bne .L_8024FE4C
L_8024FE10:
    mr 3, 30
    bl fn_8022D7F8
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024FE2C
    mr 3, 30
    bl fn_8022D7F8
    stw 3, 0xda4(31)
L_8024FE2C:
    stw 30, 0xdac(31)
    li 0, 0x3
    li 3, 0x1
    stw 0, 0xda8(31)
    .4byte 0x48000028 # b .L_8024FE64
L_8024FE40:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FE94 # blt .L_8024FCDC
L_8024FE4C:
    lwz 0, 0xda8(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_8024FE60
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024FE64
L_8024FE60:
    li 3, 0x0
L_8024FE64:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8024FE78:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8024F63C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8024FEA4
    mr 3, 31
    bl fn_80243C64
    .4byte 0x48000008 # b .L_8024FEA8
L_8024FEA4:
    li 3, 0x0
L_8024FEA8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024FEBC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x1240(3)
    cmpwi 0, 0x1a
    .4byte 0x40820018 # bne .L_8024FEE8
    bl fn_80243C64
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8024FEE8
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024FEEC
L_8024FEE8:
    li 3, 0x0
L_8024FEEC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024FEFC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8024FEBC
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8024FF34
    mr 3, 30
    bl fn_8024FE78
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8024FF38
L_8024FF34:
    li 31, 0x1
L_8024FF38:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024FF54:
    lwz 0, 0xdac(3)
    li 3, -0x1
    cmpwi 0, 0x0
    bltlr
    mr 3, 0
    blr

fn_8024FF6C:
    lwz 0, 0xda4(3)
    li 3, -0x1
    cmpwi 0, 0x0
    bltlr
    mr 3, 0
    blr

fn_8024FF84:
    lwz 0, 0xd94(3)
    li 3, -0x1
    cmpwi 0, 0x0
    bltlr
    mr 3, 0
    blr

fn_8024FF9C:
    lwz 0, 0xd94(3)
    cmpw 0, 4
    bnelr
    li 0, -0x1
    stw 0, 0xd94(3)
    blr

fn_8024FFB4:
    lwz 0, 0xd94(3)
    cmpwi 0, 0x0
    bgelr
    stw 4, 0xd94(3)
    blr

fn_8024FFC8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8024FEFC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80250014
    lwz 3, 0xda4(30)
    li 0, -0x1
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_80250004
    mr 0, 3
L_80250004:
    cmpw 31, 0
    .4byte 0x4082000C # bne .L_80250014
    li 3, 0x1
    .4byte 0x48000008 # b .L_80250018
L_80250014:
    li 3, 0x0
L_80250018:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80250030:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80250074
    mr 3, 30
    mr 4, 31
    bl fn_802729F0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80250074
    li 3, 0x1
    .4byte 0x48000008 # b .L_80250078
L_80250074:
    li 3, 0x0
L_80250078:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80250090:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 31, 3
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x4081001C # ble .L_802500CC
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xd9c(31)
    li 3, 0x0
    stw 0, 0xd98(31)
    .4byte 0x480009F0 # b .L_80250AB8
L_802500CC:
    li 30, 0x0
    mr 29, 30
L_802500D4:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_802500E8
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_80250148
L_802500E8:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80250138
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8025011C
    mr 3, 29
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80250148
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_80250148
L_8025011C:
    lwz 27, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80250148
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_80250148
L_80250138:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_80250148
    addi 30, 30, 0x1
L_80250148:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_802500D4
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_80250164
    li 3, 0x5
    .4byte 0x4800001C # b .L_8025017C
L_80250164:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80250178
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8025017C
L_80250178:
    lwz 3, 0x120c(31)
L_8025017C:
    cmpwi 3, 0x5
    .4byte 0x40820028 # bne .L_802501A8
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_802501A8
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xd9c(31)
    li 3, 0x0
    stw 0, 0xd98(31)
    .4byte 0x48000914 # b .L_80250AB8
L_802501A8:
    lwz 3, 0xd9c(31)
    cmpwi 3, 0x0
    .4byte 0x41800020 # blt .L_802501D0
    bl fn_8022D930
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802501D0
    li 0, 0x3
    li 3, 0x1
    stw 0, 0xd98(31)
    .4byte 0x480008EC # b .L_80250AB8
L_802501D0:
    .4byte 0xC042D0E4 # lfs f2, lbl_80540084@sda21(r0)
    lis 3, lbl_8046AE08@ha
    .4byte 0xC082D090 # lfs f4, lbl_80540030@sda21(r0)
    addi 3, 3, lbl_8046AE08@l
    stfs 2, 0x8(1)
    li 30, 0x0
    stfs 2, 0xc(1)
    stfs 4, 0x10(1)
    stfs 4, 0x14(1)
    lfs 0, 0x8(31)
    fadds 3, 2, 0
    fadds 1, 4, 0
    stfs 3, 0x8(1)
    lfs 0, 0xc(31)
    fadds 2, 2, 0
    stfs 1, 0x10(1)
    fadds 0, 4, 0
    stfs 2, 0xc(1)
    stfs 0, 0x14(1)
    lwz 0, 0x3dc(31)
    slwi 0, 0, 3
    lfsx 4, 3, 0
    add 3, 3, 0
    lfs 5, 0x4(3)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x8(1)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
L_80250250:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x41820844 # beq .L_80250A9C
    mr 3, 30
    bl fn_8022DA68
    clrlwi. 0, 3, 24
    .4byte 0x41820834 # beq .L_80250A9C
    lwz 5, 0x3b4(31)
    mr 3, 30
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    addi 4, 1, 0x8
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820814 # beq .L_80250A9C
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x408201F4 # bne .L_80250488
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802502AC
    li 0, 0x0
    .4byte 0x48000058 # b .L_80250300
L_802502AC:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802502C0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80250300
L_802502C0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802502D4
    li 0, 0x0
    .4byte 0x48000030 # b .L_80250300
L_802502D4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802502E8
    li 0, 0x0
    .4byte 0x4800001C # b .L_80250300
L_802502E8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802502FC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80250300
L_802502FC:
    li 0, 0x1
L_80250300:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80250310
    li 0, 0x0
    .4byte 0x48000144 # b .L_80250450
L_80250310:
    li 28, 0x0
    mr 27, 28
L_80250318:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8025032C
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8025038C
L_8025032C:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8025037C
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80250360
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8025038C
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8025038C
L_80250360:
    lwz 29, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_8025038C
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8025038C
L_8025037C:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8025038C
    addi 28, 28, 0x1
L_8025038C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80250318
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_802503A8
    li 3, 0x5
    .4byte 0x4800001C # b .L_802503C0
L_802503A8:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802503BC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802503C0
L_802503BC:
    lwz 3, 0x120c(31)
L_802503C0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80250438
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802503E0
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_802503E4
L_802503E0:
    lwz 29, 0x1224(31)
L_802503E4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802503F8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80250430
L_802503F8:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_80250420
L_80250404:
    lwz 26, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8025041C
    addi 27, 27, 0x1
L_8025041C:
    addi 28, 28, 0x1
L_80250420:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80250404
    addi 0, 27, 0x1
L_80250430:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80250444
L_80250438:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025044C
L_80250444:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80250450
L_8025044C:
    li 0, 0x1
L_80250450:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80250460
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80250474
L_80250460:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_80250474:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4182061C # beq .L_80250A9C
    .4byte 0x480005E8 # b .L_80250A6C
L_80250488:
    cmpwi 0, 0x1
    .4byte 0x408201F4 # bne .L_80250680
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802504A4
    li 0, 0x0
    .4byte 0x48000058 # b .L_802504F8
L_802504A4:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802504B8
    li 0, 0x0
    .4byte 0x48000044 # b .L_802504F8
L_802504B8:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802504CC
    li 0, 0x0
    .4byte 0x48000030 # b .L_802504F8
L_802504CC:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802504E0
    li 0, 0x0
    .4byte 0x4800001C # b .L_802504F8
L_802504E0:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802504F4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802504F8
L_802504F4:
    li 0, 0x1
L_802504F8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80250508
    li 0, 0x0
    .4byte 0x48000144 # b .L_80250648
L_80250508:
    li 28, 0x0
    mr 27, 28
L_80250510:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80250524
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80250584
L_80250524:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80250574
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80250558
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80250584
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80250584
L_80250558:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_80250584
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80250584
L_80250574:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80250584
    addi 28, 28, 0x1
L_80250584:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80250510
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_802505A0
    li 3, 0x5
    .4byte 0x4800001C # b .L_802505B8
L_802505A0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802505B4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802505B8
L_802505B4:
    lwz 3, 0x120c(31)
L_802505B8:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80250630
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802505D8
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_802505DC
L_802505D8:
    lwz 29, 0x1224(31)
L_802505DC:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802505F0
    li 0, 0x0
    .4byte 0x4800003C # b .L_80250628
L_802505F0:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_80250618
L_802505FC:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80250614
    addi 28, 28, 0x1
L_80250614:
    addi 27, 27, 0x1
L_80250618:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_802505FC
    addi 0, 28, 0x1
L_80250628:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8025063C
L_80250630:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80250644
L_8025063C:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80250648
L_80250644:
    li 0, 0x1
L_80250648:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80250658
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_8025066C
L_80250658:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_8025066C:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820424 # beq .L_80250A9C
    .4byte 0x480003F0 # b .L_80250A6C
L_80250680:
    cmpwi 0, 0x2
    .4byte 0x408201F4 # bne .L_80250878
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025069C
    li 0, 0x0
    .4byte 0x48000058 # b .L_802506F0
L_8025069C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802506B0
    li 0, 0x0
    .4byte 0x48000044 # b .L_802506F0
L_802506B0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802506C4
    li 0, 0x0
    .4byte 0x48000030 # b .L_802506F0
L_802506C4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802506D8
    li 0, 0x0
    .4byte 0x4800001C # b .L_802506F0
L_802506D8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802506EC
    li 0, 0x0
    .4byte 0x48000008 # b .L_802506F0
L_802506EC:
    li 0, 0x1
L_802506F0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80250700
    li 0, 0x0
    .4byte 0x48000144 # b .L_80250840
L_80250700:
    li 28, 0x0
    mr 27, 28
L_80250708:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8025071C
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8025077C
L_8025071C:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8025076C
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80250750
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8025077C
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8025077C
L_80250750:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8025077C
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8025077C
L_8025076C:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8025077C
    addi 28, 28, 0x1
L_8025077C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80250708
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80250798
    li 3, 0x5
    .4byte 0x4800001C # b .L_802507B0
L_80250798:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802507AC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802507B0
L_802507AC:
    lwz 3, 0x120c(31)
L_802507B0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80250828
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802507D0
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_802507D4
L_802507D0:
    lwz 29, 0x1224(31)
L_802507D4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802507E8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80250820
L_802507E8:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_80250810
L_802507F4:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8025080C
    addi 28, 28, 0x1
L_8025080C:
    addi 27, 27, 0x1
L_80250810:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_802507F4
    addi 0, 28, 0x1
L_80250820:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80250834
L_80250828:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025083C
L_80250834:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80250840
L_8025083C:
    li 0, 0x1
L_80250840:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80250850
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80250864
L_80250850:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80250864:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4182022C # beq .L_80250A9C
    .4byte 0x480001F8 # b .L_80250A6C
L_80250878:
    cmpwi 0, 0x3
    .4byte 0x408201F0 # bne .L_80250A6C
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80250894
    li 0, 0x0
    .4byte 0x48000058 # b .L_802508E8
L_80250894:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802508A8
    li 0, 0x0
    .4byte 0x48000044 # b .L_802508E8
L_802508A8:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802508BC
    li 0, 0x0
    .4byte 0x48000030 # b .L_802508E8
L_802508BC:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802508D0
    li 0, 0x0
    .4byte 0x4800001C # b .L_802508E8
L_802508D0:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802508E4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802508E8
L_802508E4:
    li 0, 0x1
L_802508E8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802508F8
    li 0, 0x0
    .4byte 0x48000144 # b .L_80250A38
L_802508F8:
    li 28, 0x0
    mr 27, 28
L_80250900:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80250914
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80250974
L_80250914:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80250964
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80250948
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80250974
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80250974
L_80250948:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_80250974
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80250974
L_80250964:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80250974
    addi 28, 28, 0x1
L_80250974:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80250900
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80250990
    li 3, 0x5
    .4byte 0x4800001C # b .L_802509A8
L_80250990:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802509A4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802509A8
L_802509A4:
    lwz 3, 0x120c(31)
L_802509A8:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80250A20
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802509C8
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_802509CC
L_802509C8:
    lwz 29, 0x1224(31)
L_802509CC:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802509E0
    li 0, 0x0
    .4byte 0x4800003C # b .L_80250A18
L_802509E0:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_80250A08
L_802509EC:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80250A04
    addi 28, 28, 0x1
L_80250A04:
    addi 27, 27, 0x1
L_80250A08:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_802509EC
    addi 0, 28, 0x1
L_80250A18:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80250A2C
L_80250A20:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80250A34
L_80250A2C:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80250A38
L_80250A34:
    li 0, 0x1
L_80250A38:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80250A48
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_80250A5C
L_80250A48:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_80250A5C:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820034 # beq .L_80250A9C
L_80250A6C:
    mr 3, 30
    bl fn_80238CB4
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80250A88
    mr 3, 30
    bl fn_80238CB4
    stw 3, 0xd94(31)
L_80250A88:
    stw 30, 0xd9c(31)
    li 0, 0x3
    li 3, 0x1
    stw 0, 0xd98(31)
    .4byte 0x48000020 # b .L_80250AB8
L_80250A9C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180F7AC # blt .L_80250250
    lwz 3, 0xd98(31)
    neg 0, 3
    andc 0, 0, 3
    srwi 3, 0, 31
L_80250AB8:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80250ACC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    li 29, 0x0
    mr 31, 3
    mr 28, 29
L_80250AE8:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80250AFC
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80250B5C
L_80250AFC:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80250B4C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80250B30
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80250B5C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80250B5C
L_80250B30:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80250B5C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80250B5C
L_80250B4C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80250B5C
    addi 29, 29, 0x1
L_80250B5C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80250AE8
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80250B78
    li 3, 0x5
    .4byte 0x4800001C # b .L_80250B90
L_80250B78:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80250B8C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80250B90
L_80250B8C:
    lwz 3, 0x120c(31)
L_80250B90:
    cmpwi 3, 0x4
    .4byte 0x4082007C # bne .L_80250C10
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80250BB0
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80250BB4
L_80250BB0:
    lwz 30, 0x1224(31)
L_80250BB4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80250BC8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80250C00
L_80250BC8:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80250BF0
L_80250BD4:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80250BEC
    addi 28, 28, 0x1
L_80250BEC:
    addi 29, 29, 0x1
L_80250BF0:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80250BD4
    addi 0, 28, 0x1
L_80250C00:
    cmpw 30, 0
    .4byte 0x4182000C # beq .L_80250C10
    li 3, 0x0
    .4byte 0x48000110 # b .L_80250D1C
L_80250C10:
    li 29, 0x0
    mr 28, 29
L_80250C18:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80250C2C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80250C8C
L_80250C2C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80250C7C
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80250C60
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80250C8C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80250C8C
L_80250C60:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80250C8C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80250C8C
L_80250C7C:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80250C8C
    addi 29, 29, 0x1
L_80250C8C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80250C18
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80250CA8
    li 3, 0x5
    .4byte 0x4800001C # b .L_80250CC0
L_80250CA8:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80250CBC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80250CC0
L_80250CBC:
    lwz 3, 0x120c(31)
L_80250CC0:
    cmpwi 3, 0x5
    .4byte 0x40820018 # bne .L_80250CDC
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80250CDC
    li 3, 0x0
    .4byte 0x48000044 # b .L_80250D1C
L_80250CDC:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_80250D00
    lwz 3, 0xbf0(31)
    lwz 0, 0xa0(3)
    cmpwi 0, 0x12
    .4byte 0x41800024 # blt .L_80250D18
    li 3, 0x1
    .4byte 0x48000020 # b .L_80250D1C
L_80250D00:
    lwz 3, 0xbf0(31)
    lwz 0, 0xa0(3)
    cmpwi 0, 0x14
    .4byte 0x4180000C # blt .L_80250D18
    li 3, 0x1
    .4byte 0x48000008 # b .L_80250D1C
L_80250D18:
    li 3, 0x0
L_80250D1C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80250D30:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    li 29, 0x0
    mr 31, 3
    mr 28, 29
L_80250D4C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80250D60
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80250DC0
L_80250D60:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80250DB0
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80250D94
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80250DC0
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80250DC0
L_80250D94:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80250DC0
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80250DC0
L_80250DB0:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80250DC0
    addi 29, 29, 0x1
L_80250DC0:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80250D4C
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80250DDC
    li 3, 0x5
    .4byte 0x4800001C # b .L_80250DF4
L_80250DDC:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80250DF0
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80250DF4
L_80250DF0:
    lwz 3, 0x120c(31)
L_80250DF4:
    cmpwi 3, 0x4
    .4byte 0x4082007C # bne .L_80250E74
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80250E14
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80250E18
L_80250E14:
    lwz 30, 0x1224(31)
L_80250E18:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80250E2C
    li 0, 0x0
    .4byte 0x4800003C # b .L_80250E64
L_80250E2C:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80250E54
L_80250E38:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80250E50
    addi 28, 28, 0x1
L_80250E50:
    addi 29, 29, 0x1
L_80250E54:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_80250E38
    addi 0, 28, 0x1
L_80250E64:
    cmpw 30, 0
    .4byte 0x4182000C # beq .L_80250E74
    li 0, 0x0
    .4byte 0x48000110 # b .L_80250F80
L_80250E74:
    li 29, 0x0
    mr 28, 29
L_80250E7C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80250E90
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80250EF0
L_80250E90:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80250EE0
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_80250EC4
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_80250EF0
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80250EF0
L_80250EC4:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80250EF0
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80250EF0
L_80250EE0:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80250EF0
    addi 29, 29, 0x1
L_80250EF0:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80250E7C
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80250F0C
    li 3, 0x5
    .4byte 0x4800001C # b .L_80250F24
L_80250F0C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80250F20
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80250F24
L_80250F20:
    lwz 3, 0x120c(31)
L_80250F24:
    cmpwi 3, 0x5
    .4byte 0x40820018 # bne .L_80250F40
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80250F40
    li 0, 0x0
    .4byte 0x48000044 # b .L_80250F80
L_80250F40:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_80250F64
    lwz 3, 0xbf0(31)
    lwz 0, 0xa0(3)
    cmpwi 0, 0x12
    .4byte 0x41800024 # blt .L_80250F7C
    li 0, 0x1
    .4byte 0x48000020 # b .L_80250F80
L_80250F64:
    lwz 3, 0xbf0(31)
    lwz 0, 0xa0(3)
    cmpwi 0, 0x14
    .4byte 0x4180000C # blt .L_80250F7C
    li 0, 0x1
    .4byte 0x48000008 # b .L_80250F80
L_80250F7C:
    li 0, 0x0
L_80250F80:
    clrlwi. 0, 0, 24
    .4byte 0x40820030 # bne .L_80250FB4
    mr 3, 31
    bl fn_80250090
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80250FB4
    lwz 0, 0x1240(31)
    cmpwi 0, 0xe
    .4byte 0x41820014 # beq .L_80250FB4
    mr 3, 31
    bl fn_80250FD4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80250FBC
L_80250FB4:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80250FC0
L_80250FBC:
    li 3, 0x0
L_80250FC0:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80250FD4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lwz 0, 0x1240(3)
    cmpwi 0, 0x1a
    .4byte 0x408207DC # bne .L_802517CC
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x408201EC # bne .L_802511E8
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251014
    li 0, 0x0
    .4byte 0x48000058 # b .L_80251068
L_80251014:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80251028
    li 0, 0x0
    .4byte 0x48000044 # b .L_80251068
L_80251028:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8025103C
    li 0, 0x0
    .4byte 0x48000030 # b .L_80251068
L_8025103C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251050
    li 0, 0x0
    .4byte 0x4800001C # b .L_80251068
L_80251050:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251064
    li 0, 0x0
    .4byte 0x48000008 # b .L_80251068
L_80251064:
    li 0, 0x1
L_80251068:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80251078
    li 0, 0x0
    .4byte 0x48000144 # b .L_802511B8
L_80251078:
    li 29, 0x0
    mr 28, 29
L_80251080:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80251094
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802510F4
L_80251094:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802510E4
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802510C8
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802510F4
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802510F4
L_802510C8:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_802510F4
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802510F4
L_802510E4:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802510F4
    addi 29, 29, 0x1
L_802510F4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80251080
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80251110
    li 3, 0x5
    .4byte 0x4800001C # b .L_80251128
L_80251110:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80251124
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80251128
L_80251124:
    lwz 3, 0x120c(31)
L_80251128:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_802511A0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80251148
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8025114C
L_80251148:
    lwz 30, 0x1224(31)
L_8025114C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80251160
    li 0, 0x0
    .4byte 0x4800003C # b .L_80251198
L_80251160:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_80251188
L_8025116C:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80251184
    addi 28, 28, 0x1
L_80251184:
    addi 29, 29, 0x1
L_80251188:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8025116C
    addi 0, 28, 0x1
L_80251198:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802511AC
L_802511A0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802511B4
L_802511AC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802511B8
L_802511B4:
    li 0, 0x1
L_802511B8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802511C8
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_802511DC
L_802511C8:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_802511DC:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418105E0 # bgt .L_802517C4
L_802511E8:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x1
    .4byte 0x408201EC # bne .L_802513DC
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251208
    li 0, 0x0
    .4byte 0x48000058 # b .L_8025125C
L_80251208:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8025121C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8025125C
L_8025121C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80251230
    li 0, 0x0
    .4byte 0x48000030 # b .L_8025125C
L_80251230:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251244
    li 0, 0x0
    .4byte 0x4800001C # b .L_8025125C
L_80251244:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251258
    li 0, 0x0
    .4byte 0x48000008 # b .L_8025125C
L_80251258:
    li 0, 0x1
L_8025125C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8025126C
    li 0, 0x0
    .4byte 0x48000144 # b .L_802513AC
L_8025126C:
    li 29, 0x0
    mr 28, 29
L_80251274:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80251288
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802512E8
L_80251288:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802512D8
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802512BC
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802512E8
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802512E8
L_802512BC:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_802512E8
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802512E8
L_802512D8:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802512E8
    addi 29, 29, 0x1
L_802512E8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80251274
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80251304
    li 3, 0x5
    .4byte 0x4800001C # b .L_8025131C
L_80251304:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80251318
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8025131C
L_80251318:
    lwz 3, 0x120c(31)
L_8025131C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80251394
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8025133C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80251340
L_8025133C:
    lwz 30, 0x1224(31)
L_80251340:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80251354
    li 0, 0x0
    .4byte 0x4800003C # b .L_8025138C
L_80251354:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_8025137C
L_80251360:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80251378
    addi 29, 29, 0x1
L_80251378:
    addi 28, 28, 0x1
L_8025137C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80251360
    addi 0, 29, 0x1
L_8025138C:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_802513A0
L_80251394:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802513A8
L_802513A0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802513AC
L_802513A8:
    li 0, 0x1
L_802513AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802513BC
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_802513D0
L_802513BC:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309FCC
L_802513D0:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418003EC # blt .L_802517C4
L_802513DC:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x408201EC # bne .L_802515D0
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802513FC
    li 0, 0x0
    .4byte 0x48000058 # b .L_80251450
L_802513FC:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80251410
    li 0, 0x0
    .4byte 0x48000044 # b .L_80251450
L_80251410:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80251424
    li 0, 0x0
    .4byte 0x48000030 # b .L_80251450
L_80251424:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251438
    li 0, 0x0
    .4byte 0x4800001C # b .L_80251450
L_80251438:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025144C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80251450
L_8025144C:
    li 0, 0x1
L_80251450:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80251460
    li 0, 0x0
    .4byte 0x48000144 # b .L_802515A0
L_80251460:
    li 29, 0x0
    mr 28, 29
L_80251468:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8025147C
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802514DC
L_8025147C:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802514CC
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802514B0
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802514DC
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802514DC
L_802514B0:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_802514DC
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802514DC
L_802514CC:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802514DC
    addi 29, 29, 0x1
L_802514DC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80251468
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802514F8
    li 3, 0x5
    .4byte 0x4800001C # b .L_80251510
L_802514F8:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8025150C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80251510
L_8025150C:
    lwz 3, 0x120c(31)
L_80251510:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80251588
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80251530
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80251534
L_80251530:
    lwz 30, 0x1224(31)
L_80251534:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80251548
    li 0, 0x0
    .4byte 0x4800003C # b .L_80251580
L_80251548:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_80251570
L_80251554:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_8025156C
    addi 29, 29, 0x1
L_8025156C:
    addi 28, 28, 0x1
L_80251570:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80251554
    addi 0, 29, 0x1
L_80251580:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80251594
L_80251588:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025159C
L_80251594:
    li 0, 0x0
    .4byte 0x48000008 # b .L_802515A0
L_8025159C:
    li 0, 0x1
L_802515A0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802515B0
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_802515C4
L_802515B0:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_802515C4:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418001F8 # blt .L_802517C4
L_802515D0:
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x3
    .4byte 0x408201F4 # bne .L_802517CC
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802515F0
    li 0, 0x0
    .4byte 0x48000058 # b .L_80251644
L_802515F0:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80251604
    li 0, 0x0
    .4byte 0x48000044 # b .L_80251644
L_80251604:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80251618
    li 0, 0x0
    .4byte 0x48000030 # b .L_80251644
L_80251618:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8025162C
    li 0, 0x0
    .4byte 0x4800001C # b .L_80251644
L_8025162C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251640
    li 0, 0x0
    .4byte 0x48000008 # b .L_80251644
L_80251640:
    li 0, 0x1
L_80251644:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80251654
    li 0, 0x0
    .4byte 0x48000144 # b .L_80251794
L_80251654:
    li 29, 0x0
    mr 28, 29
L_8025165C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80251670
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802516D0
L_80251670:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802516C0
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_802516A4
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_802516D0
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802516D0
L_802516A4:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_802516D0
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802516D0
L_802516C0:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802516D0
    addi 29, 29, 0x1
L_802516D0:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8025165C
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802516EC
    li 3, 0x5
    .4byte 0x4800001C # b .L_80251704
L_802516EC:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80251700
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80251704
L_80251700:
    lwz 3, 0x120c(31)
L_80251704:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8025177C
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80251724
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_80251728
L_80251724:
    lwz 30, 0x1224(31)
L_80251728:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8025173C
    li 0, 0x0
    .4byte 0x4800003C # b .L_80251774
L_8025173C:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_80251764
L_80251748:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_80251760
    addi 29, 29, 0x1
L_80251760:
    addi 28, 28, 0x1
L_80251764:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_80251748
    addi 0, 29, 0x1
L_80251774:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_80251788
L_8025177C:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80251790
L_80251788:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80251794
L_80251790:
    li 0, 0x1
L_80251794:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_802517A4
    .4byte 0xC022D094 # lfs f1, lbl_80540034@sda21(r0)
    .4byte 0x48000018 # b .L_802517B8
L_802517A4:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309F20
L_802517B8:
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_802517CC
L_802517C4:
    li 3, 0x1
    .4byte 0x48000008 # b .L_802517D0
L_802517CC:
    li 3, 0x0
L_802517D0:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802517E4:
    lwz 0, 0x1240(3)
    subfic 0, 0, 0x1a
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    blr

fn_802517F8:
    lwz 3, 0xbf0(3)
    lbz 0, 0x49(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251810
    li 3, 0x1
    blr
L_80251810:
    lbz 0, 0x48(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251824
    li 3, 0x1
    blr
L_80251824:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251844
    lbz 0, 0x4c(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251844
    li 3, 0x1
    blr
L_80251844:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251864
    lbz 0, 0x4d(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251864
    li 3, 0x1
    blr
L_80251864:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251884
    lbz 0, 0x4e(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251884
    li 3, 0x1
    blr
L_80251884:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802518A4
    lbz 0, 0x4f(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802518A4
    li 3, 0x1
    blr
L_802518A4:
    li 3, 0x0
    blr

fn_802518AC:
    lwz 3, 0xbf0(3)
    lbz 0, 0x4a(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802518C4
    li 3, 0x1
    blr
L_802518C4:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802518E4
    lbz 0, 0x4c(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802518E4
    li 3, 0x1
    blr
L_802518E4:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251904
    lbz 0, 0x4d(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251904
    li 3, 0x1
    blr
L_80251904:
    li 3, 0x0
    blr

fn_8025190C:
    lwz 3, 0xbf0(3)
    lbz 0, 0x4b(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251924
    li 3, 0x1
    blr
L_80251924:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251944
    lbz 0, 0x4e(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251944
    li 3, 0x1
    blr
L_80251944:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251964
    lbz 0, 0x4f(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251964
    li 3, 0x1
    blr
L_80251964:
    li 3, 0x0
    blr

fn_8025196C:
    lwz 0, 0xbf0(3)
    add 3, 0, 4
    lbz 3, 0x48(3)
    blr

fn_8025197C:
    li 0, 0x2
    clrlwi 4, 4, 24
    lwz 5, 0xbf0(3)
    li 3, 0x0
    mtctr 0
L_80251990:
    cmplwi 4, 0x0
    .4byte 0x40820014 # bne .L_802519A8
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802519A8
    li 3, 0x0
    blr
L_802519A8:
    lbz 0, 0xb4(5)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802519C8
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_802519E0
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_802519E0
L_802519C8:
    addi 0, 3, 0x48
    lbzx 0, 5, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802519E0
    li 3, 0x1
    blr
L_802519E0:
    cmplwi 4, 0x0
    addi 3, 3, 0x1
    .4byte 0x40820014 # bne .L_802519FC
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_802519FC
    li 3, 0x0
    blr
L_802519FC:
    lbz 0, 0xb4(5)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251A1C
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_80251A34
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80251A34
L_80251A1C:
    addi 0, 3, 0x48
    lbzx 0, 5, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251A34
    li 3, 0x1
    blr
L_80251A34:
    cmplwi 4, 0x0
    addi 3, 3, 0x1
    .4byte 0x40820014 # bne .L_80251A50
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80251A50
    li 3, 0x0
    blr
L_80251A50:
    lbz 0, 0xb4(5)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251A70
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_80251A88
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80251A88
L_80251A70:
    addi 0, 3, 0x48
    lbzx 0, 5, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251A88
    li 3, 0x1
    blr
L_80251A88:
    cmplwi 4, 0x0
    addi 3, 3, 0x1
    .4byte 0x40820014 # bne .L_80251AA4
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80251AA4
    li 3, 0x0
    blr
L_80251AA4:
    lbz 0, 0xb4(5)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_80251AC4
    cmpwi 3, 0x2
    .4byte 0x41820028 # beq .L_80251ADC
    subi 0, 3, 0x4
    cmplwi 0, 0x1
    .4byte 0x4081001C # ble .L_80251ADC
L_80251AC4:
    addi 0, 3, 0x48
    lbzx 0, 5, 0
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80251ADC
    li 3, 0x1
    blr
L_80251ADC:
    addi 3, 3, 0x1
    .4byte 0x4200FEB0 # bdnz .L_80251990
    li 3, 0x0
    blr

