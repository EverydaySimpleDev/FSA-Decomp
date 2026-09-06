# Fresh project-wide gap hunt continuation: 5 functions, 8,688 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000B510
etb_8000B510:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000B510, 8

.global etb_8000B518
etb_8000B518:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B518, 8

.global etb_8000B520
etb_8000B520:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B520, 8

.global etb_8000B528
etb_8000B528:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B528, 8

.section extabindex, "a"
.balign 4
.global eti_80019A8C
eti_80019A8C:
    .4byte fn_802490A8
    .4byte 0x00001F50
    .4byte etb_8000B510
.size eti_80019A8C, 12

.global eti_80019A98
eti_80019A98:
    .4byte fn_8024AFF8
    .4byte 0x00000110
    .4byte etb_8000B518
.size eti_80019A98, 12

.global eti_80019AA4
eti_80019AA4:
    .4byte fn_8024B108
    .4byte 0x00000144
    .4byte etb_8000B520
.size eti_80019AA4, 12

.global eti_80019AB0
eti_80019AB0:
    .4byte fn_8024B274
    .4byte 0x00000024
    .4byte etb_8000B528
.size eti_80019AB0, 12

.text
.balign 4
.global fn_802490A8
.global fn_8024AFF8
.global fn_8024B108
.global fn_8024B24C
.global fn_8024B274

fn_802490A8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 31, 3
    lwz 0, 0x1220(3)
    cmpwi 0, 0x0
    .4byte 0x41811F20 # bgt .L_8024AFE4
    li 29, 0x0
    lwz 30, 0x4(31)
    mr 28, 29
L_802490D4:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802490E8
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_80249148
L_802490E8:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80249138
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024911C
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80249148
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_80249148
L_8024911C:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_80249148
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_80249148
L_80249138:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_80249148
    addi 29, 29, 0x1
L_80249148:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_802490D4
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80249164
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024917C
L_80249164:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80249178
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024917C
L_80249178:
    lwz 3, 0x120c(31)
L_8024917C:
    cmpwi 3, 0x4
    .4byte 0x40820010 # bne .L_80249190
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    mr 30, 3
L_80249190:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40821E48 # bne .L_8024AFE4
    mr 3, 30
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40821E38 # bne .L_8024AFE4
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41811E20 # bgt .L_8024AFE4
    mr 3, 30
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40821E10 # bne .L_8024AFE4
    li 30, 0x0
L_802491DC:
    lwz 3, 0x4(31)
    mr 4, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820198 # beq .L_80249384
    mr 3, 30
    bl fn_8023E98C
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8024921C
    mr 3, 30
    bl fn_8023EC54
    mr 4, 3
    mr 3, 30
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41821DCC # beq .L_8024AFE4
L_8024921C:
    mr 3, 30
    bl fn_8022DEAC
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_802492E4
    li 29, 0x0
    mr 28, 29
L_80249234:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_80249248
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_802492A8
L_80249248:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80249298
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024927C
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_802492A8
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_802492A8
L_8024927C:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_802492A8
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_802492A8
L_80249298:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_802492A8
    addi 29, 29, 0x1
L_802492A8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80249234
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_802492C4
    li 3, 0x5
    .4byte 0x4800001C # b .L_802492DC
L_802492C4:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802492D8
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802492DC
L_802492D8:
    lwz 3, 0x120c(31)
L_802492DC:
    cmpwi 3, 0x4
    .4byte 0x40821D04 # bne .L_8024AFE4
L_802492E4:
    mr 3, 30
    bl fn_8022D930
    clrlwi. 0, 3, 24
    .4byte 0x40821CF4 # bne .L_8024AFE4
    mr 3, 30
    bl fn_8022D894
    clrlwi. 0, 3, 24
    .4byte 0x40821CE4 # bne .L_8024AFE4
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40821CD4 # bne .L_8024AFE4
    mr 3, 30
    bl fn_80235274
    clrlwi. 0, 3, 24
    .4byte 0x40821CC4 # bne .L_8024AFE4
    mr 3, 30
    bl fn_80234CF8
    clrlwi. 0, 3, 24
    .4byte 0x40821CB4 # bne .L_8024AFE4
    mr 3, 30
    bl fn_80234C5C
    clrlwi. 0, 3, 24
    .4byte 0x40821CA4 # bne .L_8024AFE4
    mr 3, 30
    bl fn_80235744
    clrlwi. 0, 3, 24
    .4byte 0x40821C94 # bne .L_8024AFE4
    mr 3, 30
    bl fn_802353AC
    clrlwi. 0, 3, 24
    .4byte 0x40821C84 # bne .L_8024AFE4
    mr 3, 30
    bl fn_80233EDC
    clrlwi. 0, 3, 24
    .4byte 0x40821C74 # bne .L_8024AFE4
    mr 3, 30
    bl fn_80234E30
    clrlwi. 0, 3, 24
    .4byte 0x40821C64 # bne .L_8024AFE4
L_80249384:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FE50 # blt .L_802491DC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802493AC
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x41821C3C # beq .L_8024AFE4
L_802493AC:
    bl fn_8022AF5C
    clrlwi. 0, 3, 24
    .4byte 0x40821C30 # bne .L_8024AFE4
    lbz 0, 0x121e(31)
    cmplwi 0, 0x1
    .4byte 0x41821C24 # beq .L_8024AFE4
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    bl fn_8008E328
    lwz 0, 0xd60(31)
    mr 30, 3
    cmpwi 0, 0x0
    .4byte 0x408001C8 # bge .L_802495A4
    li 28, 0x0
    mr 29, 28
L_802493E8:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_802493FC
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024945C
L_802493FC:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024944C
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80249430
    mr 3, 29
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024945C
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024945C
L_80249430:
    lwz 27, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024945C
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024945C
L_8024944C:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024945C
    addi 28, 28, 0x1
L_8024945C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_802493E8
    cmpwi 28, 0x2
    .4byte 0x41800138 # blt .L_802495A4
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x40
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820118 # beq .L_802495A4
    li 29, 0x0
    mr 28, 29
L_80249498:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_802494AC
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024950C
L_802494AC:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802494FC
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_802494E0
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024950C
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024950C
L_802494E0:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024950C
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024950C
L_802494FC:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024950C
    addi 29, 29, 0x1
L_8024950C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80249498
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_80249528
    li 3, 0x5
    .4byte 0x4800001C # b .L_80249540
L_80249528:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024953C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80249540
L_8024953C:
    lwz 3, 0x120c(31)
L_80249540:
    cmpwi 3, 0x5
    .4byte 0x4082004C # bne .L_80249590
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249560
    li 4, 0x1
    bl fn_80134FE0
L_80249560:
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(31)
    lis 4, 0x464f
    lwz 5, 0x3b4(31)
    addi 4, 4, 0x524d
    addi 6, 31, 0x8
    clrlwi 7, 0, 30
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x1230(31)
    .4byte 0x48001A58 # b .L_8024AFE4
L_80249590:
    mr 3, 31
    li 4, 0x5
    li 5, 0x1
    bl fn_80248004
    .4byte 0x48001A44 # b .L_8024AFE4
L_802495A4:
    lwz 27, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082191C # bne .L_8024AED8
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802495D4
    li 0, 0x0
    .4byte 0x48000058 # b .L_80249628
L_802495D4:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802495E8
    li 0, 0x0
    .4byte 0x48000044 # b .L_80249628
L_802495E8:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802495FC
    li 0, 0x0
    .4byte 0x48000030 # b .L_80249628
L_802495FC:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249610
    li 0, 0x0
    .4byte 0x4800001C # b .L_80249628
L_80249610:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249624
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249628
L_80249624:
    li 0, 0x1
L_80249628:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249638
    li 0, 0x0
    .4byte 0x48000144 # b .L_80249778
L_80249638:
    li 28, 0x0
    mr 27, 28
L_80249640:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80249654
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_802496B4
L_80249654:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_802496A4
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80249688
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_802496B4
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_802496B4
L_80249688:
    lwz 29, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_802496B4
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_802496B4
L_802496A4:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_802496B4
    addi 28, 28, 0x1
L_802496B4:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80249640
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_802496D0
    li 3, 0x5
    .4byte 0x4800001C # b .L_802496E8
L_802496D0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802496E4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802496E8
L_802496E4:
    lwz 3, 0x120c(31)
L_802496E8:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80249760
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80249708
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024970C
L_80249708:
    lwz 29, 0x1224(31)
L_8024970C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80249720
    li 0, 0x0
    .4byte 0x4800003C # b .L_80249758
L_80249720:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_80249748
L_8024972C:
    lwz 26, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80249744
    addi 27, 27, 0x1
L_80249744:
    addi 28, 28, 0x1
L_80249748:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_8024972C
    addi 0, 27, 0x1
L_80249758:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024976C
L_80249760:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249774
L_8024976C:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249778
L_80249774:
    li 0, 0x1
L_80249778:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249788
    li 3, 0x0
    .4byte 0x4800001C # b .L_802497A0
L_80249788:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x40
    bl fn_80309D24
L_802497A0:
    cmplwi 3, 0x0
    .4byte 0x41821734 # beq .L_8024AED8
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802497BC
    li 0, 0x0
    .4byte 0x48000058 # b .L_80249810
L_802497BC:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802497D0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80249810
L_802497D0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802497E4
    li 0, 0x0
    .4byte 0x48000030 # b .L_80249810
L_802497E4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802497F8
    li 0, 0x0
    .4byte 0x4800001C # b .L_80249810
L_802497F8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024980C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249810
L_8024980C:
    li 0, 0x1
L_80249810:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249820
    li 0, 0x0
    .4byte 0x48000144 # b .L_80249960
L_80249820:
    li 28, 0x0
    mr 27, 28
L_80249828:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024983C
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024989C
L_8024983C:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024988C
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80249870
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024989C
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024989C
L_80249870:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024989C
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024989C
L_8024988C:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024989C
    addi 28, 28, 0x1
L_8024989C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80249828
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_802498B8
    li 3, 0x5
    .4byte 0x4800001C # b .L_802498D0
L_802498B8:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_802498CC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_802498D0
L_802498CC:
    lwz 3, 0x120c(31)
L_802498D0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80249948
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802498F0
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_802498F4
L_802498F0:
    lwz 29, 0x1224(31)
L_802498F4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80249908
    li 0, 0x0
    .4byte 0x4800003C # b .L_80249940
L_80249908:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_80249930
L_80249914:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024992C
    addi 28, 28, 0x1
L_8024992C:
    addi 27, 27, 0x1
L_80249930:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_80249914
    addi 0, 28, 0x1
L_80249940:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80249954
L_80249948:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024995C
L_80249954:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249960
L_8024995C:
    li 0, 0x1
L_80249960:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249970
    li 3, 0x0
    .4byte 0x4800001C # b .L_80249988
L_80249970:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x8
    bl fn_80309D6C
L_80249988:
    cmplwi 3, 0x0
    .4byte 0x418203E8 # beq .L_80249D74
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802499A4
    li 0, 0x0
    .4byte 0x48000058 # b .L_802499F8
L_802499A4:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802499B8
    li 0, 0x0
    .4byte 0x48000044 # b .L_802499F8
L_802499B8:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802499CC
    li 0, 0x0
    .4byte 0x48000030 # b .L_802499F8
L_802499CC:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802499E0
    li 0, 0x0
    .4byte 0x4800001C # b .L_802499F8
L_802499E0:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802499F4
    li 0, 0x0
    .4byte 0x48000008 # b .L_802499F8
L_802499F4:
    li 0, 0x1
L_802499F8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249A08
    li 0, 0x0
    .4byte 0x48000144 # b .L_80249B48
L_80249A08:
    li 28, 0x0
    mr 27, 28
L_80249A10:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80249A24
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80249A84
L_80249A24:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80249A74
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80249A58
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80249A84
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80249A84
L_80249A58:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_80249A84
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80249A84
L_80249A74:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80249A84
    addi 28, 28, 0x1
L_80249A84:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80249A10
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80249AA0
    li 3, 0x5
    .4byte 0x4800001C # b .L_80249AB8
L_80249AA0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80249AB4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80249AB8
L_80249AB4:
    lwz 3, 0x120c(31)
L_80249AB8:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80249B30
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80249AD8
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_80249ADC
L_80249AD8:
    lwz 29, 0x1224(31)
L_80249ADC:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80249AF0
    li 0, 0x0
    .4byte 0x4800003C # b .L_80249B28
L_80249AF0:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_80249B18
L_80249AFC:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80249B14
    addi 28, 28, 0x1
L_80249B14:
    addi 27, 27, 0x1
L_80249B18:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_80249AFC
    addi 0, 28, 0x1
L_80249B28:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80249B3C
L_80249B30:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249B44
L_80249B3C:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249B48
L_80249B44:
    li 0, 0x1
L_80249B48:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249B58
    li 3, 0x0
    .4byte 0x4800001C # b .L_80249B70
L_80249B58:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D24
L_80249B70:
    cmplwi 3, 0x0
    .4byte 0x40820200 # bne .L_80249D74
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249B8C
    li 0, 0x0
    .4byte 0x48000058 # b .L_80249BE0
L_80249B8C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80249BA0
    li 0, 0x0
    .4byte 0x48000044 # b .L_80249BE0
L_80249BA0:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80249BB4
    li 0, 0x0
    .4byte 0x48000030 # b .L_80249BE0
L_80249BB4:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249BC8
    li 0, 0x0
    .4byte 0x4800001C # b .L_80249BE0
L_80249BC8:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249BDC
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249BE0
L_80249BDC:
    li 0, 0x1
L_80249BE0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249BF0
    li 0, 0x0
    .4byte 0x48000144 # b .L_80249D30
L_80249BF0:
    li 28, 0x0
    mr 27, 28
L_80249BF8:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80249C0C
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80249C6C
L_80249C0C:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80249C5C
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80249C40
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80249C6C
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80249C6C
L_80249C40:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_80249C6C
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80249C6C
L_80249C5C:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80249C6C
    addi 28, 28, 0x1
L_80249C6C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80249BF8
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80249C88
    li 3, 0x5
    .4byte 0x4800001C # b .L_80249CA0
L_80249C88:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80249C9C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80249CA0
L_80249C9C:
    lwz 3, 0x120c(31)
L_80249CA0:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80249D18
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80249CC0
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_80249CC4
L_80249CC0:
    lwz 29, 0x1224(31)
L_80249CC4:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80249CD8
    li 0, 0x0
    .4byte 0x4800003C # b .L_80249D10
L_80249CD8:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_80249D00
L_80249CE4:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80249CFC
    addi 28, 28, 0x1
L_80249CFC:
    addi 27, 27, 0x1
L_80249D00:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_80249CE4
    addi 0, 28, 0x1
L_80249D10:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80249D24
L_80249D18:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249D2C
L_80249D24:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249D30
L_80249D2C:
    li 0, 0x1
L_80249D30:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249D40
    li 3, 0x0
    .4byte 0x4800001C # b .L_80249D58
L_80249D40:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D24
L_80249D58:
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_80249D74
    mr 3, 31
    li 4, 0x2
    li 5, 0x1
    bl fn_80248004
    .4byte 0x48001274 # b .L_8024AFE4
L_80249D74:
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249D88
    li 0, 0x0
    .4byte 0x48000058 # b .L_80249DDC
L_80249D88:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80249D9C
    li 0, 0x0
    .4byte 0x48000044 # b .L_80249DDC
L_80249D9C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80249DB0
    li 0, 0x0
    .4byte 0x48000030 # b .L_80249DDC
L_80249DB0:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249DC4
    li 0, 0x0
    .4byte 0x4800001C # b .L_80249DDC
L_80249DC4:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249DD8
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249DDC
L_80249DD8:
    li 0, 0x1
L_80249DDC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249DEC
    li 0, 0x0
    .4byte 0x48000144 # b .L_80249F2C
L_80249DEC:
    li 28, 0x0
    mr 27, 28
L_80249DF4:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80249E08
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80249E68
L_80249E08:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80249E58
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_80249E3C
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_80249E68
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80249E68
L_80249E3C:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_80249E68
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80249E68
L_80249E58:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80249E68
    addi 28, 28, 0x1
L_80249E68:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80249DF4
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80249E84
    li 3, 0x5
    .4byte 0x4800001C # b .L_80249E9C
L_80249E84:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80249E98
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80249E9C
L_80249E98:
    lwz 3, 0x120c(31)
L_80249E9C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_80249F14
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80249EBC
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_80249EC0
L_80249EBC:
    lwz 29, 0x1224(31)
L_80249EC0:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80249ED4
    li 0, 0x0
    .4byte 0x4800003C # b .L_80249F0C
L_80249ED4:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_80249EFC
L_80249EE0:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_80249EF8
    addi 28, 28, 0x1
L_80249EF8:
    addi 27, 27, 0x1
L_80249EFC:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_80249EE0
    addi 0, 28, 0x1
L_80249F0C:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_80249F20
L_80249F14:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249F28
L_80249F20:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249F2C
L_80249F28:
    li 0, 0x1
L_80249F2C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249F3C
    li 3, 0x0
    .4byte 0x4800001C # b .L_80249F54
L_80249F3C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D6C
L_80249F54:
    cmplwi 3, 0x0
    .4byte 0x418203E8 # beq .L_8024A340
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249F70
    li 0, 0x0
    .4byte 0x48000058 # b .L_80249FC4
L_80249F70:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80249F84
    li 0, 0x0
    .4byte 0x48000044 # b .L_80249FC4
L_80249F84:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80249F98
    li 0, 0x0
    .4byte 0x48000030 # b .L_80249FC4
L_80249F98:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249FAC
    li 0, 0x0
    .4byte 0x4800001C # b .L_80249FC4
L_80249FAC:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80249FC0
    li 0, 0x0
    .4byte 0x48000008 # b .L_80249FC4
L_80249FC0:
    li 0, 0x1
L_80249FC4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80249FD4
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024A114
L_80249FD4:
    li 28, 0x0
    mr 27, 28
L_80249FDC:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_80249FF0
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024A050
L_80249FF0:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024A040
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024A024
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024A050
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024A050
L_8024A024:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024A050
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024A050
L_8024A040:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024A050
    addi 28, 28, 0x1
L_8024A050:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80249FDC
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024A06C
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024A084
L_8024A06C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024A080
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024A084
L_8024A080:
    lwz 3, 0x120c(31)
L_8024A084:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024A0FC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024A0A4
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024A0A8
L_8024A0A4:
    lwz 29, 0x1224(31)
L_8024A0A8:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024A0BC
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024A0F4
L_8024A0BC:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024A0E4
L_8024A0C8:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024A0E0
    addi 28, 28, 0x1
L_8024A0E0:
    addi 27, 27, 0x1
L_8024A0E4:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024A0C8
    addi 0, 28, 0x1
L_8024A0F4:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024A108
L_8024A0FC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A110
L_8024A108:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A114
L_8024A110:
    li 0, 0x1
L_8024A114:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A124
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024A13C
L_8024A124:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x8
    bl fn_80309D24
L_8024A13C:
    cmplwi 3, 0x0
    .4byte 0x40820200 # bne .L_8024A340
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A158
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024A1AC
L_8024A158:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A16C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024A1AC
L_8024A16C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A180
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024A1AC
L_8024A180:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A194
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024A1AC
L_8024A194:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A1A8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A1AC
L_8024A1A8:
    li 0, 0x1
L_8024A1AC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A1BC
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024A2FC
L_8024A1BC:
    li 28, 0x0
    mr 27, 28
L_8024A1C4:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024A1D8
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024A238
L_8024A1D8:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024A228
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024A20C
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024A238
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024A238
L_8024A20C:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024A238
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024A238
L_8024A228:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024A238
    addi 28, 28, 0x1
L_8024A238:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024A1C4
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024A254
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024A26C
L_8024A254:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024A268
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024A26C
L_8024A268:
    lwz 3, 0x120c(31)
L_8024A26C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024A2E4
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024A28C
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024A290
L_8024A28C:
    lwz 29, 0x1224(31)
L_8024A290:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024A2A4
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024A2DC
L_8024A2A4:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024A2CC
L_8024A2B0:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024A2C8
    addi 28, 28, 0x1
L_8024A2C8:
    addi 27, 27, 0x1
L_8024A2CC:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024A2B0
    addi 0, 28, 0x1
L_8024A2DC:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024A2F0
L_8024A2E4:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A2F8
L_8024A2F0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A2FC
L_8024A2F8:
    li 0, 0x1
L_8024A2FC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A30C
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024A324
L_8024A30C:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x4
    bl fn_80309D24
L_8024A324:
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_8024A340
    mr 3, 31
    li 4, 0x3
    li 5, 0x1
    bl fn_80248004
    .4byte 0x48000CA8 # b .L_8024AFE4
L_8024A340:
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A354
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024A3A8
L_8024A354:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A368
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024A3A8
L_8024A368:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A37C
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024A3A8
L_8024A37C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A390
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024A3A8
L_8024A390:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A3A4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A3A8
L_8024A3A4:
    li 0, 0x1
L_8024A3A8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A3B8
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024A4F8
L_8024A3B8:
    li 28, 0x0
    mr 27, 28
L_8024A3C0:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024A3D4
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024A434
L_8024A3D4:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024A424
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024A408
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024A434
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024A434
L_8024A408:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024A434
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024A434
L_8024A424:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024A434
    addi 28, 28, 0x1
L_8024A434:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024A3C0
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024A450
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024A468
L_8024A450:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024A464
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024A468
L_8024A464:
    lwz 3, 0x120c(31)
L_8024A468:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024A4E0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024A488
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024A48C
L_8024A488:
    lwz 29, 0x1224(31)
L_8024A48C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024A4A0
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024A4D8
L_8024A4A0:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024A4C8
L_8024A4AC:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024A4C4
    addi 28, 28, 0x1
L_8024A4C4:
    addi 27, 27, 0x1
L_8024A4C8:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024A4AC
    addi 0, 28, 0x1
L_8024A4D8:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024A4EC
L_8024A4E0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A4F4
L_8024A4EC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A4F8
L_8024A4F4:
    li 0, 0x1
L_8024A4F8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A508
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024A520
L_8024A508:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x4
    bl fn_80309D6C
L_8024A520:
    cmplwi 3, 0x0
    .4byte 0x418203E8 # beq .L_8024A90C
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A53C
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024A590
L_8024A53C:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A550
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024A590
L_8024A550:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A564
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024A590
L_8024A564:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A578
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024A590
L_8024A578:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A58C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A590
L_8024A58C:
    li 0, 0x1
L_8024A590:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A5A0
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024A6E0
L_8024A5A0:
    li 28, 0x0
    mr 27, 28
L_8024A5A8:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024A5BC
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024A61C
L_8024A5BC:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024A60C
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024A5F0
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024A61C
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024A61C
L_8024A5F0:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024A61C
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024A61C
L_8024A60C:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024A61C
    addi 28, 28, 0x1
L_8024A61C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024A5A8
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024A638
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024A650
L_8024A638:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024A64C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024A650
L_8024A64C:
    lwz 3, 0x120c(31)
L_8024A650:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024A6C8
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024A670
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024A674
L_8024A670:
    lwz 29, 0x1224(31)
L_8024A674:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024A688
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024A6C0
L_8024A688:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024A6B0
L_8024A694:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024A6AC
    addi 28, 28, 0x1
L_8024A6AC:
    addi 27, 27, 0x1
L_8024A6B0:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024A694
    addi 0, 28, 0x1
L_8024A6C0:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024A6D4
L_8024A6C8:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A6DC
L_8024A6D4:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A6E0
L_8024A6DC:
    li 0, 0x1
L_8024A6E0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A6F0
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024A708
L_8024A6F0:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x1
    bl fn_80309D24
L_8024A708:
    cmplwi 3, 0x0
    .4byte 0x40820200 # bne .L_8024A90C
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A724
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024A778
L_8024A724:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A738
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024A778
L_8024A738:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A74C
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024A778
L_8024A74C:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A760
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024A778
L_8024A760:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A774
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A778
L_8024A774:
    li 0, 0x1
L_8024A778:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A788
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024A8C8
L_8024A788:
    li 28, 0x0
    mr 27, 28
L_8024A790:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024A7A4
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024A804
L_8024A7A4:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024A7F4
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024A7D8
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024A804
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024A804
L_8024A7D8:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024A804
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024A804
L_8024A7F4:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024A804
    addi 28, 28, 0x1
L_8024A804:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024A790
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024A820
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024A838
L_8024A820:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024A834
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024A838
L_8024A834:
    lwz 3, 0x120c(31)
L_8024A838:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024A8B0
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024A858
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024A85C
L_8024A858:
    lwz 29, 0x1224(31)
L_8024A85C:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024A870
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024A8A8
L_8024A870:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024A898
L_8024A87C:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024A894
    addi 28, 28, 0x1
L_8024A894:
    addi 27, 27, 0x1
L_8024A898:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024A87C
    addi 0, 28, 0x1
L_8024A8A8:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024A8BC
L_8024A8B0:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A8C4
L_8024A8BC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A8C8
L_8024A8C4:
    li 0, 0x1
L_8024A8C8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A8D8
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024A8F0
L_8024A8D8:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D24
L_8024A8F0:
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_8024A90C
    mr 3, 31
    li 4, 0x1
    li 5, 0x1
    bl fn_80248004
    .4byte 0x480006DC # b .L_8024AFE4
L_8024A90C:
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A920
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024A974
L_8024A920:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A934
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024A974
L_8024A934:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024A948
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024A974
L_8024A948:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A95C
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024A974
L_8024A95C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024A970
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024A974
L_8024A970:
    li 0, 0x1
L_8024A974:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024A984
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024AAC4
L_8024A984:
    li 28, 0x0
    mr 27, 28
L_8024A98C:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024A9A0
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024AA00
L_8024A9A0:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024A9F0
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024A9D4
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024AA00
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024AA00
L_8024A9D4:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024AA00
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024AA00
L_8024A9F0:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024AA00
    addi 28, 28, 0x1
L_8024AA00:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024A98C
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024AA1C
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024AA34
L_8024AA1C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024AA30
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024AA34
L_8024AA30:
    lwz 3, 0x120c(31)
L_8024AA34:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024AAAC
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024AA54
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024AA58
L_8024AA54:
    lwz 29, 0x1224(31)
L_8024AA58:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024AA6C
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024AAA4
L_8024AA6C:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024AA94
L_8024AA78:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024AA90
    addi 28, 28, 0x1
L_8024AA90:
    addi 27, 27, 0x1
L_8024AA94:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024AA78
    addi 0, 28, 0x1
L_8024AAA4:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024AAB8
L_8024AAAC:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024AAC0
L_8024AAB8:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024AAC4
L_8024AAC0:
    li 0, 0x1
L_8024AAC4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024AAD4
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024AAEC
L_8024AAD4:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x2
    bl fn_80309D6C
L_8024AAEC:
    cmplwi 3, 0x0
    .4byte 0x418203E8 # beq .L_8024AED8
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024AB08
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024AB5C
L_8024AB08:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024AB1C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024AB5C
L_8024AB1C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024AB30
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024AB5C
L_8024AB30:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024AB44
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024AB5C
L_8024AB44:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024AB58
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024AB5C
L_8024AB58:
    li 0, 0x1
L_8024AB5C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024AB6C
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024ACAC
L_8024AB6C:
    li 28, 0x0
    mr 27, 28
L_8024AB74:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024AB88
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024ABE8
L_8024AB88:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024ABD8
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024ABBC
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024ABE8
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024ABE8
L_8024ABBC:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024ABE8
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024ABE8
L_8024ABD8:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024ABE8
    addi 28, 28, 0x1
L_8024ABE8:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024AB74
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024AC04
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024AC1C
L_8024AC04:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024AC18
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024AC1C
L_8024AC18:
    lwz 3, 0x120c(31)
L_8024AC1C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024AC94
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024AC3C
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024AC40
L_8024AC3C:
    lwz 29, 0x1224(31)
L_8024AC40:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024AC54
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024AC8C
L_8024AC54:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024AC7C
L_8024AC60:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024AC78
    addi 28, 28, 0x1
L_8024AC78:
    addi 27, 27, 0x1
L_8024AC7C:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024AC60
    addi 0, 28, 0x1
L_8024AC8C:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024ACA0
L_8024AC94:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024ACA8
L_8024ACA0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024ACAC
L_8024ACA8:
    li 0, 0x1
L_8024ACAC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024ACBC
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024ACD4
L_8024ACBC:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x8
    bl fn_80309D24
L_8024ACD4:
    cmplwi 3, 0x0
    .4byte 0x40820200 # bne .L_8024AED8
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024ACF0
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024AD44
L_8024ACF0:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024AD04
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024AD44
L_8024AD04:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024AD18
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024AD44
L_8024AD18:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024AD2C
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024AD44
L_8024AD2C:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024AD40
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024AD44
L_8024AD40:
    li 0, 0x1
L_8024AD44:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024AD54
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024AE94
L_8024AD54:
    li 28, 0x0
    mr 27, 28
L_8024AD5C:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024AD70
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024ADD0
L_8024AD70:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024ADC0
    lwz 26, 0xd60(31)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024ADA4
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024ADD0
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024ADD0
L_8024ADA4:
    lwz 26, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024ADD0
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024ADD0
L_8024ADC0:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024ADD0
    addi 28, 28, 0x1
L_8024ADD0:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024AD5C
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024ADEC
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024AE04
L_8024ADEC:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024AE00
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024AE04
L_8024AE00:
    lwz 3, 0x120c(31)
L_8024AE04:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024AE7C
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024AE24
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024AE28
L_8024AE24:
    lwz 29, 0x1224(31)
L_8024AE28:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024AE3C
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024AE74
L_8024AE3C:
    li 28, 0x0
    mr 27, 28
    .4byte 0x48000020 # b .L_8024AE64
L_8024AE48:
    lwz 26, 0xd60(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024AE60
    addi 28, 28, 0x1
L_8024AE60:
    addi 27, 27, 0x1
L_8024AE64:
    lwz 0, 0x4(31)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024AE48
    addi 0, 28, 0x1
L_8024AE74:
    cmpw 29, 0
    .4byte 0x40820010 # bne .L_8024AE88
L_8024AE7C:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024AE90
L_8024AE88:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024AE94
L_8024AE90:
    li 0, 0x1
L_8024AE94:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024AEA4
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024AEBC
L_8024AEA4:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x4
    bl fn_80309D24
L_8024AEBC:
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_8024AED8
    mr 3, 31
    li 4, 0x0
    li 5, 0x1
    bl fn_80248004
    .4byte 0x48000110 # b .L_8024AFE4
L_8024AED8:
    li 26, 0x0
    li 27, 0x0
L_8024AEE0:
    lwz 3, 0x4(31)
    mr 4, 27
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8024AF0C
    mr 3, 27
    bl fn_8022DEAC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8024AF0C
    li 26, 0x1
    .4byte 0x48000010 # b .L_8024AF18
L_8024AF0C:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFCC # blt .L_8024AEE0
L_8024AF18:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x408200B4 # bne .L_8024AFE4
    cmplwi 30, 0x0
    .4byte 0x418200AC # beq .L_8024AFE4
    clrlwi. 0, 26, 24
    .4byte 0x408200A4 # bne .L_8024AFE4
    lfs 1, 0x60(30)
    .4byte 0xC002D0A4 # lfs f0, lbl_80540044@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810094 # ble .L_8024AFE4
    lha 0, 0x64(30)
    cmpwi 0, -0x7000
    .4byte 0x4180000C # blt .L_8024AF68
    cmpwi 0, 0x7000
    .4byte 0x41800018 # blt .L_8024AF7C
L_8024AF68:
    mr 3, 31
    li 4, 0x2
    li 5, 0x1
    bl fn_80248004
    .4byte 0x4800006C # b .L_8024AFE4
L_8024AF7C:
    cmpwi 0, -0x5000
    .4byte 0x41800020 # blt .L_8024AFA0
    cmpwi 0, -0x3000
    .4byte 0x40800018 # bge .L_8024AFA0
    mr 3, 31
    li 4, 0x3
    li 5, 0x1
    bl fn_80248004
    .4byte 0x48000048 # b .L_8024AFE4
L_8024AFA0:
    cmpwi 0, -0x1000
    .4byte 0x41800020 # blt .L_8024AFC4
    cmpwi 0, 0x1000
    .4byte 0x40800018 # bge .L_8024AFC4
    mr 3, 31
    li 4, 0x1
    li 5, 0x1
    bl fn_80248004
    .4byte 0x48000024 # b .L_8024AFE4
L_8024AFC4:
    cmpwi 0, 0x3000
    .4byte 0x4180001C # blt .L_8024AFE4
    cmpwi 0, 0x5000
    .4byte 0x40800014 # bge .L_8024AFE4
    mr 3, 31
    li 4, 0x0
    li 5, 0x1
    bl fn_80248004
L_8024AFE4:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024AFF8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0xce8(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024B020
    li 3, 0x0
    .4byte 0x480000D8 # b .L_8024B0F4
L_8024B020:
    lwz 0, 0x1240(31)
    cmpwi 0, 0x49
    .4byte 0x408200C8 # bne .L_8024B0F0
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x124d(31)
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8024B04C
    li 3, 0x0
    .4byte 0x480000AC # b .L_8024B0F4
L_8024B04C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(31)
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x40820018 # bne .L_8024B080
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024B080
    stw 3, 0x1244(31)
    .4byte 0x48000038 # b .L_8024B0B4
L_8024B080:
    lbz 0, 0x434(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8024B0AC
    lwz 0, 0x1240(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8024B0A0
    li 3, 0x0
    .4byte 0x48000058 # b .L_8024B0F4
L_8024B0A0:
    li 0, 0x2
    stw 0, 0x1244(31)
    .4byte 0x4800000C # b .L_8024B0B4
L_8024B0AC:
    li 0, 0x0
    stw 0, 0x1244(31)
L_8024B0B4:
    li 0, 0x1
    stb 0, 0x124c(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8024B0E8
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8024B0E8
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024B0E8
    li 0, 0x0
    stb 0, 0xcfe(31)
L_8024B0E8:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024B0F4
L_8024B0F0:
    li 3, 0x0
L_8024B0F4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024B108:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    mr 30, 4
    bl fn_80270C88
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8024B138
    li 3, 0x0
    .4byte 0x48000100 # b .L_8024B234
L_8024B138:
    mr 3, 31
    li 4, 0x49
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8024B154
    li 0, 0x0
    .4byte 0x48000048 # b .L_8024B198
L_8024B154:
    li 3, 0x49
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    stb 0, 0x124d(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8024B194
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8024B194
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024B194
    li 0, 0x0
    stb 0, 0xcfe(31)
L_8024B194:
    li 0, 0x1
L_8024B198:
    clrlwi. 0, 0, 24
    .4byte 0x41820094 # beq .L_8024B230
    stw 30, 0x1178(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x1230(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8024B1CC
    li 4, 0x0
    li 0, -0x1
    stb 4, 0x11c(3)
    stw 0, 0x1230(31)
    .4byte 0x4800002C # b .L_8024B1F4
L_8024B1CC:
    lbz 0, 0x121f(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8024B1F4
    li 0, 0x0
    stb 0, 0x121f(31)
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x5
    .4byte 0x4080000C # bge .L_8024B1F4
    li 0, 0x5
    stw 0, 0x11f0(31)
L_8024B1F4:
    mr 3, 31
    li 4, 0x4
    li 5, 0x0
    bl fn_80248004
    lwz 0, 0x1388(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8024B228
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1388(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1388(31)
L_8024B228:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024B234
L_8024B230:
    li 3, 0x0
L_8024B234:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024B24C:
    lwz 4, 0xbf0(3)
    li 3, 0x0
    lbz 0, 0x98(4)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8024B26C
    lbz 0, 0x99(4)
    cmplwi 0, 0x0
    beqlr
L_8024B26C:
    li 3, 0x1
    blr

fn_8024B274:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0xbf0(3)
    bl SetField_0x98
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

