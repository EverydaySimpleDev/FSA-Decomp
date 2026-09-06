# Fresh project-wide gap hunt continuation: 20 functions, 26,604 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_8000BADC
etb_8000BADC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000BADC, 8

.global etb_8000BAE4
etb_8000BAE4:
    .4byte 0x31CA0000
    .4byte 0x00000000
.size etb_8000BAE4, 8

.global etb_8000BAEC
etb_8000BAEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BAEC, 8

.global etb_8000BAF4
etb_8000BAF4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000BAF4, 8

.global etb_8000BAFC
etb_8000BAFC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BAFC, 8

.global etb_8000BB04
etb_8000BB04:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000BB04, 8

.global etb_8000BB0C
etb_8000BB0C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000BB0C, 8

.global etb_8000BB14
etb_8000BB14:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000BB14, 8

.global etb_8000BB1C
etb_8000BB1C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000BB1C, 8

.global etb_8000BB24
etb_8000BB24:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000BB24, 8

.global etb_8000BB2C
etb_8000BB2C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000BB2C, 8

.global etb_8000BB34
etb_8000BB34:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000BB34, 8

.global etb_8000BB3C
etb_8000BB3C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000BB3C, 8

.global etb_8000BB44
etb_8000BB44:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000BB44, 8

.global etb_8000BB4C
etb_8000BB4C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000BB4C, 8

.global etb_8000BB54
etb_8000BB54:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000BB54, 8

.global etb_8000BB5C
etb_8000BB5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000BB5C, 8

.global etb_8000BB64
etb_8000BB64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000BB64, 8

.global etb_8000BB6C
etb_8000BB6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000BB6C, 8

.section extabindex, "a"
.balign 4
.global eti_8001A20C
eti_8001A20C:
    .4byte fn_8026947C
    .4byte 0x000000F8
    .4byte etb_8000BADC
.size eti_8001A20C, 12

.global eti_8001A218
eti_8001A218:
    .4byte fn_80269574
    .4byte 0x000022A8
    .4byte etb_8000BAE4
.size eti_8001A218, 12

.global eti_8001A224
eti_8001A224:
    .4byte fn_8026B81C
    .4byte 0x00000B34
    .4byte etb_8000BAEC
.size eti_8001A224, 12

.global eti_8001A230
eti_8001A230:
    .4byte fn_8026C350
    .4byte 0x00001E90
    .4byte etb_8000BAF4
.size eti_8001A230, 12

.global eti_8001A23C
eti_8001A23C:
    .4byte fn_8026E1E0
    .4byte 0x00000284
    .4byte etb_8000BAFC
.size eti_8001A23C, 12

.global eti_8001A248
eti_8001A248:
    .4byte fn_8026E464
    .4byte 0x00000194
    .4byte etb_8000BB04
.size eti_8001A248, 12

.global eti_8001A254
eti_8001A254:
    .4byte fn_8026E5F8
    .4byte 0x00000094
    .4byte etb_8000BB0C
.size eti_8001A254, 12

.global eti_8001A260
eti_8001A260:
    .4byte fn_8026E68C
    .4byte 0x00000490
    .4byte etb_8000BB14
.size eti_8001A260, 12

.global eti_8001A26C
eti_8001A26C:
    .4byte fn_8026EB1C
    .4byte 0x0000016C
    .4byte etb_8000BB1C
.size eti_8001A26C, 12

.global eti_8001A278
eti_8001A278:
    .4byte fn_8026EC88
    .4byte 0x000001D8
    .4byte etb_8000BB24
.size eti_8001A278, 12

.global eti_8001A284
eti_8001A284:
    .4byte fn_8026EE60
    .4byte 0x000001A0
    .4byte etb_8000BB2C
.size eti_8001A284, 12

.global eti_8001A290
eti_8001A290:
    .4byte fn_8026F000
    .4byte 0x000001C4
    .4byte etb_8000BB34
.size eti_8001A290, 12

.global eti_8001A29C
eti_8001A29C:
    .4byte fn_8026F1C4
    .4byte 0x000001C4
    .4byte etb_8000BB3C
.size eti_8001A29C, 12

.global eti_8001A2A8
eti_8001A2A8:
    .4byte fn_8026F388
    .4byte 0x000001C4
    .4byte etb_8000BB44
.size eti_8001A2A8, 12

.global eti_8001A2B4
eti_8001A2B4:
    .4byte fn_8026F54C
    .4byte 0x000001C4
    .4byte etb_8000BB4C
.size eti_8001A2B4, 12

.global eti_8001A2C0
eti_8001A2C0:
    .4byte fn_8026F710
    .4byte 0x00000288
    .4byte etb_8000BB54
.size eti_8001A2C0, 12

.global eti_8001A2CC
eti_8001A2CC:
    .4byte fn_8026F998
    .4byte 0x00000050
    .4byte etb_8000BB5C
.size eti_8001A2CC, 12

.global eti_8001A2D8
eti_8001A2D8:
    .4byte fn_8026F9FC
    .4byte 0x00000224
    .4byte etb_8000BB64
.size eti_8001A2D8, 12

.global eti_8001A2E4
eti_8001A2E4:
    .4byte fn_8026FC20
    .4byte 0x00000048
    .4byte etb_8000BB6C
.size eti_8001A2E4, 12

.text
.balign 4
.global fn_8026947C
.global fn_80269574
.global fn_8026B81C
.global fn_8026C350
.global fn_8026E1E0
.global fn_8026E464
.global fn_8026E5F8
.global fn_8026E68C
.global fn_8026EB1C
.global fn_8026EC88
.global fn_8026EE60
.global fn_8026F000
.global fn_8026F1C4
.global fn_8026F388
.global fn_8026F54C
.global fn_8026F710
.global fn_8026F998
.global fn_8026F9E8
.global fn_8026F9FC
.global fn_8026FC20

fn_8026947C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x4(3)
    psq_l 1, 0x8(3), 0, 0
    lfs 0, 0x10(3)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x8(4)
    lwz 3, 0x4(29)
    bl fn_802486A0
    cmpwi 3, 0x2
    .4byte 0x4082009C # bne .L_80269558
    lwz 3, 0x4(29)
    bl fn_80248778
    lis 4, lbl_8046BA68@ha
    slwi 0, 3, 3
    addi 3, 4, lbl_8046BA68@l
    lfs 0, 0x0(30)
    lfsx 1, 3, 0
    fadds 0, 0, 1
    stfs 0, 0x0(30)
    lwz 3, 0x4(29)
    lwz 31, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_80269530
    lwz 3, 0x4(29)
    bl fn_80248778
    lis 4, lbl_8046BA68@ha
    slwi 3, 3, 3
    addi 0, 4, lbl_8046BA68@l
    lfs 0, 0x4(30)
    add 3, 0, 3
    lfs 1, 0x4(3)
    fsubs 0, 0, 1
    stfs 0, 0x4(30)
    .4byte 0x4800002C # b .L_80269558
L_80269530:
    lwz 3, 0x4(29)
    bl fn_80248778
    lis 4, lbl_8046BA68@ha
    slwi 3, 3, 3
    addi 0, 4, lbl_8046BA68@l
    lfs 0, 0x4(30)
    add 3, 0, 3
    lfs 1, 0x4(3)
    fadds 0, 0, 1
    stfs 0, 0x4(30)
L_80269558:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80269574:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stfd 27, 0xa0(1)
    psq_st 27, 0xa8(1), 0, 0
    stfd 26, 0x90(1)
    psq_st 26, 0x98(1), 0, 0
    stfd 25, 0x80(1)
    psq_st 25, 0x88(1), 0, 0
    stmw 26, 0x68(1)
    mr 31, 3
    lbz 0, 0x38(3)
    cmplwi 0, 0x1
    .4byte 0x41820140 # beq .L_80269708
    lbz 0, 0x39(31)
    cmplwi 0, 0x1
    .4byte 0x41820134 # beq .L_80269708
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x41820128 # beq .L_80269708
    lbz 0, 0x3b(31)
    cmplwi 0, 0x1
    .4byte 0x4182011C # beq .L_80269708
    lbz 0, 0x3c(31)
    cmplwi 0, 0x1
    .4byte 0x41820110 # beq .L_80269708
    lbz 0, 0x3d(31)
    cmplwi 0, 0x1
    .4byte 0x41820104 # beq .L_80269708
    lbz 0, 0x3e(31)
    cmplwi 0, 0x1
    .4byte 0x418200F8 # beq .L_80269708
    lbz 0, 0x3f(31)
    cmplwi 0, 0x1
    .4byte 0x418200EC # beq .L_80269708
    lbz 0, 0x50(31)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_80269684
    lbz 0, 0x51(31)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_80269684
    lbz 0, 0x52(31)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_80269684
    lbz 0, 0x53(31)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80269684
    lbz 0, 0x54(31)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80269684
    lbz 0, 0x55(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80269684
    lbz 0, 0x56(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80269684
    lbz 0, 0x57(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80269684
    .4byte 0x48000088 # b .L_80269708
L_80269684:
    lbz 3, 0x50(31)
    li 0, 0x1
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_80269698
    stb 0, 0x38(31)
L_80269698:
    lbz 3, 0x51(31)
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_802696A8
    stb 0, 0x39(31)
L_802696A8:
    lbz 3, 0x52(31)
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_802696B8
    stb 0, 0x3a(31)
L_802696B8:
    lbz 3, 0x53(31)
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_802696C8
    stb 0, 0x3b(31)
L_802696C8:
    lbz 3, 0x54(31)
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_802696D8
    stb 0, 0x3c(31)
L_802696D8:
    lbz 3, 0x55(31)
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_802696E8
    stb 0, 0x3d(31)
L_802696E8:
    lbz 3, 0x56(31)
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_802696F8
    stb 0, 0x3e(31)
L_802696F8:
    lbz 3, 0x57(31)
    cmplwi 3, 0x1
    .4byte 0x40820008 # bne .L_80269708
    stb 0, 0x3f(31)
L_80269708:
    lwz 3, 0x4(31)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80269728
    lwz 3, 0x4(31)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x408001CC # bge .L_802698F0
L_80269728:
    lwz 3, 0x4(31)
    lwz 27, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408201AC # bne .L_802698F0
    lbz 0, 0x98(31)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269764
    lbz 0, 0x99(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80269768
L_80269764:
    li 3, 0x1
L_80269768:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820180 # beq .L_802698F0
    lwz 3, 0x4(31)
    lbz 0, 0x1216(3)
    cmplwi 0, 0x1
    .4byte 0x41820170 # beq .L_802698F0
    lwz 0, 0x1228(3)
    cmpwi 0, 0x0
    .4byte 0x41810164 # bgt .L_802698F0
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x4082002C # bne .L_802697C4
    lwz 3, 0x4(31)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802697C4
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8022F340
    bl fn_80234950
    clrlwi. 0, 3, 24
    .4byte 0x40820130 # bne .L_802698F0
L_802697C4:
    lwz 3, 0x4(31)
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_802698F0
    lwz 3, 0x4(31)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x41820110 # beq .L_802698F0
    li 0, 0x2
    li 4, 0x0
    mtctr 0
L_802697F0:
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269818
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269818
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_802698F0
L_80269818:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269844
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269844
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x418200B0 # beq .L_802698F0
L_80269844:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269870
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269870
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_802698F0
L_80269870:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026989C
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026989C
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_802698F0
L_8026989C:
    addi 4, 4, 0x1
    .4byte 0x4200FF50 # bdnz .L_802697F0
    lwz 26, 0x4(31)
    mr 3, 26
    addi 27, 26, 0x8
    bl Player_GetLinkTargetIndex
    lwz 4, 0x3b4(26)
    mr 5, 27
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_802698F0
    lwz 3, 0x4(31)
    bl Player_GetLinkTargetIndex
    bl fn_802381B8
    lwz 26, 0x4(31)
    mr 3, 26
    addi 27, 26, 0x8
    bl Player_GetLinkTargetIndex
    lwz 4, 0x3b4(26)
    mr 5, 27
    bl fn_802348C4
L_802698F0:
    lbz 0, 0x98(31)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026990C
    lbz 0, 0x99(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80269910
L_8026990C:
    li 3, 0x1
L_80269910:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80269928
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480007FC # b .L_8026A120
L_80269928:
    li 4, 0x0
    li 0, 0x2
    mr 3, 4
    mtctr 0
L_80269938:
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269954
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80269958
L_80269954:
    addi 4, 4, 0x1
L_80269958:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269978
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026997C
L_80269978:
    addi 4, 4, 0x1
L_8026997C:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026999C
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802699A0
L_8026999C:
    addi 4, 4, 0x1
L_802699A0:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_802699C0
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802699C4
L_802699C0:
    addi 4, 4, 0x1
L_802699C4:
    addi 3, 3, 0x1
    .4byte 0x4200FF70 # bdnz .L_80269938
    cmpwi 4, 0x6
    .4byte 0x40800750 # bge .L_8026A120
    lwz 3, 0xbc(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_802699EC
    addi 0, 3, 0x1
    stw 0, 0xbc(31)
    .4byte 0x48000310 # b .L_80269CF8
L_802699EC:
    lwz 3, 0x4(31)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80269A18
    lwz 3, 0x4(31)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800010 # blt .L_80269A18
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x4800070C # b .L_8026A120
L_80269A18:
    lwz 3, 0x4(31)
    lbz 0, 0x1216(3)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_80269A34
    lwz 0, 0x1228(3)
    cmpwi 0, 0x0
    .4byte 0x40810010 # ble .L_80269A40
L_80269A34:
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480006E4 # b .L_8026A120
L_80269A40:
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x40820038 # bne .L_80269A80
    lwz 3, 0x4(31)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80269A80
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8022F340
    bl fn_80234950
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80269A80
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480006A4 # b .L_8026A120
L_80269A80:
    lwz 3, 0x4(31)
    lwz 27, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820130 # beq .L_80269BCC
    lbz 0, 0x68(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269AC4
    lbz 0, 0x38(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269AC4
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x48000238 # b .L_80269CF8
L_80269AC4:
    lbz 0, 0x69(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269AE8
    lbz 0, 0x39(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269AE8
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x48000214 # b .L_80269CF8
L_80269AE8:
    lbz 0, 0x6a(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269B0C
    lbz 0, 0x3a(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269B0C
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x480001F0 # b .L_80269CF8
L_80269B0C:
    lbz 0, 0x6b(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269B30
    lbz 0, 0x3b(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269B30
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x480001CC # b .L_80269CF8
L_80269B30:
    lbz 0, 0x6c(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269B54
    lbz 0, 0x3c(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269B54
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x480001A8 # b .L_80269CF8
L_80269B54:
    lbz 0, 0x6d(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269B78
    lbz 0, 0x3d(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269B78
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x48000184 # b .L_80269CF8
L_80269B78:
    lbz 0, 0x6e(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269B9C
    lbz 0, 0x3e(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269B9C
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x48000160 # b .L_80269CF8
L_80269B9C:
    lbz 0, 0x6f(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80269BC0
    lbz 0, 0x3f(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269BC0
    li 0, 0x3
    stw 0, 0xbc(31)
    .4byte 0x4800013C # b .L_80269CF8
L_80269BC0:
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48000558 # b .L_8026A120
L_80269BCC:
    lbz 0, 0x68(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269BF0
    lbz 0, 0x38(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269BF0
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48000534 # b .L_8026A120
L_80269BF0:
    lbz 0, 0x69(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269C14
    lbz 0, 0x39(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269C14
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48000510 # b .L_8026A120
L_80269C14:
    lbz 0, 0x6a(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269C38
    lbz 0, 0x3a(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269C38
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480004EC # b .L_8026A120
L_80269C38:
    lbz 0, 0x6b(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269C5C
    lbz 0, 0x3b(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269C5C
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480004C8 # b .L_8026A120
L_80269C5C:
    lbz 0, 0x6c(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269C80
    lbz 0, 0x3c(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269C80
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480004A4 # b .L_8026A120
L_80269C80:
    lbz 0, 0x6d(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269CA4
    lbz 0, 0x3d(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269CA4
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48000480 # b .L_8026A120
L_80269CA4:
    lbz 0, 0x6e(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269CC8
    lbz 0, 0x3e(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269CC8
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x4800045C # b .L_8026A120
L_80269CC8:
    lbz 0, 0x6f(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80269CEC
    lbz 0, 0x3f(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80269CEC
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48000438 # b .L_8026A120
L_80269CEC:
    lwz 3, 0xbc(31)
    addi 0, 3, 0x1
    stw 0, 0xbc(31)
L_80269CF8:
    lwz 3, 0x4(31)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820044 # bne .L_80269D48
    lwz 3, 0x4(31)
    bl fn_80248778
    mr 27, 3
    lwz 3, 0x4(31)
    bl fn_80240888
    cmpw 3, 27
    .4byte 0x41820028 # beq .L_80269D48
    lwz 3, 0x4(31)
    li 7, 0x9
    lwz 4, 0x3b4(3)
    addi 5, 3, 0x8
    addi 6, 3, 0xd1c
    bl fn_80290070
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48001A8C # b .L_8026B7D0
L_80269D48:
    li 29, -0x1
    lis 30, 0x5741
L_80269D50:
    bl SpatialRegistry_GetBase
    mr 5, 29
    addi 4, 30, 0x5250
    bl fn_801F78F4
    mr. 27, 3
    mr 29, 27
    .4byte 0x41800370 # blt .L_8026A0D8
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x4182FFD4 # beq .L_80269D50
    lwz 4, 0x4(31)
    lwz 0, 0x4(27)
    lwz 3, 0x3b4(4)
    cmpw 3, 0
    .4byte 0x4082FFC0 # bne .L_80269D50
    lwz 28, 0x90(27)
    clrlwi 0, 28, 24
    cmplwi 0, 0x4
    .4byte 0x408200DC # bne .L_80269E7C
    lwz 3, 0x4(4)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4082FFA0 # bne .L_80269D50
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_80269DFC
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820024 # bne .L_80269DFC
    lwz 3, 0x4(31)
    lwz 26, 0x4(3)
    bl fn_80248778
    mr 28, 3
    mr 3, 26
    bl fn_80234004
    cmpw 3, 28
    .4byte 0x4082FF58 # bne .L_80269D50
L_80269DFC:
    lwz 3, 0x4(31)
    lfs 0, 0xc(27)
    lfs 3, 0x8(3)
    lfs 4, 0xc(3)
    fsubs 3, 3, 0
    lfs 1, 0x10(27)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fsubs 4, 4, 1
    fmuls 2, 3, 3
    stfs 3, 0x20(1)
    fmuls 1, 4, 4
    stfs 4, 0x24(1)
    fadds 4, 2, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80269E40
    .4byte 0x48000028 # b .L_80269E64
L_80269E40:
    frsqrte 3, 4
    .4byte 0xC042D28C # lfs f2, lbl_8054022C@sda21(r0)
    .4byte 0xC002D290 # lfs f0, lbl_80540230@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_80269E64:
    .4byte 0xC002D2B8 # lfs f0, lbl_80540258@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080FEE4 # bge .L_80269D50
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48000680 # b .L_8026A4F8
L_80269E7C:
    cmplwi 0, 0x7
    .4byte 0x408200FC # bne .L_80269F7C
    extrwi. 26, 28, 3, 5
    .4byte 0x40820014 # bne .L_80269E9C
    bl GetRoomConfigRecord
    lfs 26, 0xcc(3)
    lfs 25, 0xd0(3)
    .4byte 0x48000010 # b .L_80269EA8
L_80269E9C:
    .4byte 0xC322D288 # lfs f25, lbl_80540228@sda21(r0)
    addi 26, 26, 0x7
    fmr 26, 25
L_80269EA8:
    cmpwi 26, 0x8
    .4byte 0x41800050 # blt .L_80269EFC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_80269EFC
    lwz 3, 0x4(31)
    bl fn_80247534
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_80269EFC
    lwz 3, 0x4(31)
    li 4, 0x0
    li 7, 0x9
    addi 5, 3, 0x8
    addi 6, 3, 0xd1c
    bl fn_80290070
    clrlwi. 0, 3, 24
    .4byte 0x4182FE64 # beq .L_80269D50
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480018D8 # b .L_8026B7D0
L_80269EFC:
    lis 3, 0x4330
    rlwinm 4, 28, 19, 23, 28
    stw 4, 0x5c(1)
    rlwinm 0, 28, 27, 23, 28
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    mr 4, 26
    stw 3, 0x58(1)
    addi 6, 1, 0x28
    .4byte 0xC862D2D0 # lfd f3, lbl_80540270@sda21(r0)
    li 7, 0x7
    lfd 1, 0x58(1)
    stw 0, 0x64(1)
    fsubs 2, 1, 3
    .4byte 0xC082D2BC # lfs f4, lbl_8054025C@sda21(r0)
    stw 3, 0x60(1)
    lfd 1, 0x60(1)
    fadds 2, 2, 26
    stfs 0, 0x30(1)
    fsubs 0, 1, 3
    fadds 1, 4, 2
    fadds 0, 0, 25
    stfs 1, 0x28(1)
    fadds 0, 4, 0
    stfs 0, 0x2c(1)
    lwz 3, 0x4(31)
    addi 5, 3, 0x8
    bl fn_80290070
    clrlwi. 0, 3, 24
    .4byte 0x4182FDE4 # beq .L_80269D50
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48001858 # b .L_8026B7D0
L_80269F7C:
    cmplwi 0, 0x8
    .4byte 0x4082FDD0 # bne .L_80269D50
    lfs 0, 0x8(4)
    extrwi. 27, 28, 3, 5
    stfs 0, 0x4c(1)
    lfs 0, 0xc(4)
    stfs 0, 0x50(1)
    lfs 0, 0x10(4)
    stfs 0, 0x54(1)
    .4byte 0x41820008 # beq .L_80269FA8
    addi 27, 27, 0x7
L_80269FA8:
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_80269FC4
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80269FC8
L_80269FC4:
    addi 3, 3, 0xdc
L_80269FC8:
    lfs 1, 0x4c(1)
    lfs 0, 0x0(3)
    fsubs 0, 1, 0
    stfs 0, 0x4c(1)
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_80269FF4
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80269FF8
L_80269FF4:
    addi 3, 3, 0xdc
L_80269FF8:
    lfs 1, 0x50(1)
    lfs 0, 0x4(3)
    fsubs 0, 1, 0
    stfs 0, 0x50(1)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_8026A01C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8026A020
L_8026A01C:
    addi 3, 3, 0xdc
L_8026A020:
    lfs 1, 0x4c(1)
    lfs 0, 0x0(3)
    fadds 0, 1, 0
    stfs 0, 0x4c(1)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_8026A044
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8026A048
L_8026A044:
    addi 3, 3, 0xdc
L_8026A048:
    lfs 1, 0x50(1)
    cmpwi 27, 0x8
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x50(1)
    .4byte 0x41800050 # blt .L_8026A0AC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8026A0AC
    lwz 3, 0x4(31)
    bl fn_80247534
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8026A0AC
    lwz 3, 0x4(31)
    li 4, 0x0
    li 7, 0x9
    addi 5, 3, 0x8
    addi 6, 3, 0xd1c
    bl fn_80290070
    clrlwi. 0, 3, 24
    .4byte 0x4182FCB4 # beq .L_80269D50
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x48001728 # b .L_8026B7D0
L_8026A0AC:
    lwz 3, 0x4(31)
    mr 4, 27
    addi 6, 1, 0x4c
    li 7, 0x8
    addi 5, 3, 0x8
    bl fn_80290070
    clrlwi. 0, 3, 24
    .4byte 0x4182FC88 # beq .L_80269D50
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480016FC # b .L_8026B7D0
L_8026A0D8:
    lwz 0, 0xbc(31)
    cmpwi 0, 0x2
    .4byte 0x41800010 # blt .L_8026A0F0
    lwz 3, 0x4(31)
    li 0, 0x1
    stb 0, 0x457(3)
L_8026A0F0:
    lwz 0, 0xbc(31)
    cmpwi 0, 0x3
    .4byte 0x41800028 # blt .L_8026A120
    lwz 3, 0x4(31)
    li 7, 0x9
    lwz 4, 0x3b4(3)
    addi 5, 3, 0x8
    addi 6, 3, 0xd1c
    bl fn_80290070
    li 0, 0x0
    stw 0, 0xbc(31)
    .4byte 0x480016B4 # b .L_8026B7D0
L_8026A120:
    lwz 3, 0x4(31)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x408203CC # bne .L_8026A4F8
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408203AC # bne .L_8026A4F8
    lbz 0, 0x98(31)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A16C
    lbz 0, 0x99(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A170
L_8026A16C:
    li 3, 0x1
L_8026A170:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820380 # beq .L_8026A4F8
    lwz 3, 0x4(31)
    lbz 0, 0x1216(3)
    cmplwi 0, 0x1
    .4byte 0x41820370 # beq .L_8026A4F8
    lwz 0, 0x1228(3)
    cmpwi 0, 0x0
    .4byte 0x41810364 # bgt .L_8026A4F8
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x4082002C # bne .L_8026A1CC
    lwz 3, 0x4(31)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8026A1CC
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8022F340
    bl fn_80234950
    clrlwi. 0, 3, 24
    .4byte 0x40820330 # bne .L_8026A4F8
L_8026A1CC:
    lwz 3, 0x4(31)
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x418200F4 # beq .L_8026A2CC
    lwz 3, 0x4(31)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x418200E4 # beq .L_8026A2CC
    li 0, 0x2
    li 4, 0x0
    mtctr 0
L_8026A1F8:
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026A220
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A220
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x418202DC # beq .L_8026A4F8
L_8026A220:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026A24C
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A24C
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x418202B0 # beq .L_8026A4F8
L_8026A24C:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026A278
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A278
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x41820284 # beq .L_8026A4F8
L_8026A278:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x68(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026A2A4
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A2A4
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x41820258 # beq .L_8026A4F8
L_8026A2A4:
    addi 4, 4, 0x1
    .4byte 0x4200FF50 # bdnz .L_8026A1F8
    lwz 27, 0x4(31)
    mr 3, 27
    addi 26, 27, 0x8
    bl Player_GetLinkTargetIndex
    lwz 4, 0x3b4(27)
    mr 5, 26
    bl fn_8022BC38
    .4byte 0x48000230 # b .L_8026A4F8
L_8026A2CC:
    lwz 0, 0xb0(31)
    lwz 4, 0x4(31)
    cmpwi 0, 0x1
    .4byte 0x41810220 # bgt .L_8026A4F8
    lbz 0, 0x88(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026A2F4
    lbz 0, 0x68(31)
    cmplwi 0, 0x1
    .4byte 0x40820070 # bne .L_8026A360
L_8026A2F4:
    lbz 0, 0x89(31)
    cmplwi 0, 0x0
    .4byte 0x40820064 # bne .L_8026A360
    lbz 0, 0x69(31)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_8026A360
    lfs 0, 0x8(4)
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x40820040 # bne .L_8026A360
    srawi 3, 3, 4
    lis 0, 0x4330
    addze 3, 3
    stw 0, 0x60(1)
    slwi 3, 3, 4
    .4byte 0xC822D2D8 # lfd f1, lbl_80540278@sda21(r0)
    addi 3, 3, 0x8
    li 0, 0x1
    xoris 3, 3, 0x8000
    stw 3, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
    lwz 3, 0x4(31)
    stb 0, 0x3c1(3)
L_8026A360:
    lbz 0, 0x89(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026A378
    lbz 0, 0x69(31)
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_8026A3E8
L_8026A378:
    lbz 0, 0x88(31)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_8026A3E8
    lbz 0, 0x68(31)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8026A3E8
    lwz 4, 0x4(31)
    lfs 0, 0x8(4)
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x41820040 # beq .L_8026A3E8
    srawi 3, 3, 4
    lis 0, 0x4330
    addze 3, 3
    stw 0, 0x60(1)
    slwi 3, 3, 4
    .4byte 0xC822D2D8 # lfd f1, lbl_80540278@sda21(r0)
    addi 3, 3, 0x8
    li 0, 0x1
    xoris 3, 3, 0x8000
    stw 3, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0x8(4)
    lwz 3, 0x4(31)
    stb 0, 0x3c1(3)
L_8026A3E8:
    lbz 0, 0x8a(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026A400
    lbz 0, 0x6a(31)
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_8026A470
L_8026A400:
    lbz 0, 0x8b(31)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_8026A470
    lbz 0, 0x6b(31)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8026A470
    lwz 4, 0x4(31)
    lfs 0, 0xc(4)
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x40820040 # bne .L_8026A470
    srawi 3, 3, 4
    lis 0, 0x4330
    addze 3, 3
    stw 0, 0x60(1)
    slwi 3, 3, 4
    .4byte 0xC822D2D8 # lfd f1, lbl_80540278@sda21(r0)
    addi 3, 3, 0x8
    li 0, 0x1
    xoris 3, 3, 0x8000
    stw 3, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(4)
    lwz 3, 0x4(31)
    stb 0, 0x3c2(3)
L_8026A470:
    lbz 0, 0x8b(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026A488
    lbz 0, 0x6b(31)
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_8026A4F8
L_8026A488:
    lbz 0, 0x8a(31)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_8026A4F8
    lbz 0, 0x6a(31)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8026A4F8
    lwz 4, 0x4(31)
    lfs 0, 0xc(4)
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 3, 0x64(1)
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x41820040 # beq .L_8026A4F8
    srawi 3, 3, 4
    lis 0, 0x4330
    addze 3, 3
    stw 0, 0x60(1)
    slwi 3, 3, 4
    .4byte 0xC822D2D8 # lfd f1, lbl_80540278@sda21(r0)
    addi 3, 3, 0x8
    li 0, 0x1
    xoris 3, 3, 0x8000
    stw 3, 0x64(1)
    lfd 0, 0x60(1)
    fsubs 0, 0, 1
    stfs 0, 0xc(4)
    lwz 3, 0x4(31)
    stb 0, 0x3c2(3)
L_8026A4F8:
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_8026A590
    lis 4, lbl_8046BA88@ha
    addi 3, 1, 0x40
    addi 4, 4, lbl_8046BA88@l
    .4byte 0xC002D2C0 # lfs f0, lbl_80540260@sda21(r0)
    lfs 3, 0x18(4)
    lfs 2, 0x1c(4)
    lfs 1, 0x20(4)
    stfs 3, 0x40(1)
    stfs 2, 0x44(1)
    stfs 1, 0x48(1)
    psq_l 3, 0x0(3), 0, 0
    lwz 4, 0x4(31)
    psq_l 2, 0x8(3), 1, 0
    psq_l 1, 0x8(4), 0, 0
    ps_add 1, 3, 1
    psq_st 1, 0x0(3), 0, 0
    psq_l 1, 0x10(4), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x8(3), 1, 0
    lfs 1, 0x48(1)
    fadds 0, 1, 0
    stfs 0, 0x48(1)
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3eb
    .4byte 0x4182002C # beq .L_8026A5AC
    cmplwi 0, 0x34
    .4byte 0x4082002C # bne .L_8026A5B4
    .4byte 0x48000020 # b .L_8026A5AC
L_8026A590:
    lwz 3, 0x4(31)
    lwz 4, 0x3b4(3)
    addi 3, 3, 0x8
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8026A5B4
L_8026A5AC:
    li 0, 0x1
    stb 0, 0xb7(31)
L_8026A5B4:
    lwz 3, 0x4(31)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8026A5D4
    lwz 3, 0x4(31)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x408001DC # bge .L_8026A7AC
L_8026A5D4:
    lwz 3, 0x4(31)
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x4082002C # bne .L_8026A60C
    lwz 3, 0x4(31)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8026A60C
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8022F340
    bl fn_80234950
    clrlwi. 0, 3, 24
    .4byte 0x408201A4 # bne .L_8026A7AC
L_8026A60C:
    li 4, 0x0
    li 0, 0x2
    mr 3, 4
    mtctr 0
L_8026A61C:
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A638
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A63C
L_8026A638:
    addi 4, 4, 0x1
L_8026A63C:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A65C
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A660
L_8026A65C:
    addi 4, 4, 0x1
L_8026A660:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A680
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A684
L_8026A680:
    addi 4, 4, 0x1
L_8026A684:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A6A4
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A6A8
L_8026A6A4:
    addi 4, 4, 0x1
L_8026A6A8:
    addi 3, 3, 0x1
    .4byte 0x4200FF70 # bdnz .L_8026A61C
    cmpwi 4, 0x6
    .4byte 0x408000F8 # bge .L_8026A7AC
    lwz 3, 0x4(31)
    bl fn_80240B00
    clrlwi. 0, 3, 24
    .4byte 0x408200E8 # bne .L_8026A7AC
    li 0, 0x4
    li 4, 0x0
    mtctr 0
L_8026A6D4:
    add 3, 31, 4
    lbz 0, 0x78(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A6F0
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x418200C0 # beq .L_8026A7AC
L_8026A6F0:
    lbz 0, 0x98(31)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A70C
    lbz 0, 0x99(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A710
L_8026A70C:
    li 3, 0x1
L_8026A710:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820094 # beq .L_8026A7AC
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x78(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A73C
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_8026A7AC
L_8026A73C:
    lbz 0, 0x98(31)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A758
    lbz 0, 0x99(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A75C
L_8026A758:
    li 3, 0x1
L_8026A75C:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820048 # beq .L_8026A7AC
    addi 4, 4, 0x1
    .4byte 0x4200FF68 # bdnz .L_8026A6D4
    lwz 27, 0x4(31)
    lwz 26, 0x3b4(27)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8026A7A0
    mr 3, 27
    li 4, 0x4b
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_8026A7AC
L_8026A7A0:
    mr 3, 27
    li 4, 0x4a
    bl fn_80251AEC
L_8026A7AC:
    lwz 3, 0x4(31)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8026A7CC
    lwz 3, 0x4(31)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x408001D0 # bge .L_8026A998
L_8026A7CC:
    lwz 3, 0x4(31)
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x4082002C # bne .L_8026A804
    lwz 3, 0x4(31)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8026A804
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8022F340
    bl fn_80234950
    clrlwi. 0, 3, 24
    .4byte 0x40820198 # bne .L_8026A998
L_8026A804:
    li 4, 0x0
    li 0, 0x2
    mr 3, 4
    mtctr 0
L_8026A814:
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A830
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A834
L_8026A830:
    addi 4, 4, 0x1
L_8026A834:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A854
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A858
L_8026A854:
    addi 4, 4, 0x1
L_8026A858:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A878
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A87C
L_8026A878:
    addi 4, 4, 0x1
L_8026A87C:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A89C
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A8A0
L_8026A89C:
    addi 4, 4, 0x1
L_8026A8A0:
    addi 3, 3, 0x1
    .4byte 0x4200FF70 # bdnz .L_8026A814
    cmpwi 4, 0x6
    .4byte 0x408000EC # bge .L_8026A998
    li 0, 0x4
    li 4, 0x0
    mtctr 0
L_8026A8BC:
    add 3, 31, 4
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A8D8
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x418200C4 # beq .L_8026A998
L_8026A8D8:
    lbz 0, 0x98(31)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A8F4
    lbz 0, 0x99(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A8F8
L_8026A8F4:
    li 3, 0x1
L_8026A8F8:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820098 # beq .L_8026A998
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x88(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A924
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_8026A998
L_8026A924:
    lbz 0, 0x98(31)
    li 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026A940
    lbz 0, 0x99(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026A944
L_8026A940:
    li 3, 0x1
L_8026A944:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4182004C # beq .L_8026A998
    addi 4, 4, 0x1
    .4byte 0x4200FF68 # bdnz .L_8026A8BC
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8026A980
    lwz 3, 0x4(31)
    li 7, 0xd
    lwz 4, 0x3b4(3)
    addi 5, 3, 0x8
    addi 6, 3, 0xd1c
    bl fn_80290070
    .4byte 0x4800001C # b .L_8026A998
L_8026A980:
    lwz 3, 0x4(31)
    li 7, 0xc
    lwz 4, 0x3b4(3)
    addi 5, 3, 0x8
    addi 6, 3, 0xd1c
    bl fn_80290070
L_8026A998:
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820410 # beq .L_8026ADC4
    li 0, 0x2
    li 3, 0x0
    mtctr 0
L_8026A9C4:
    add 4, 31, 3
    lbz 0, 0x78(4)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8026A9F4
    lbz 0, 0x38(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026A9F4
    lbz 0, 0x28(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026A9F4
    li 0, 0x0
    .4byte 0x4800014C # b .L_8026AB3C
L_8026A9F4:
    addi 3, 3, 0x1
    add 4, 31, 3
    lbz 0, 0x78(4)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8026AA28
    lbz 0, 0x38(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026AA28
    lbz 0, 0x28(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026AA28
    li 0, 0x0
    .4byte 0x48000118 # b .L_8026AB3C
L_8026AA28:
    addi 3, 3, 0x1
    add 4, 31, 3
    lbz 0, 0x78(4)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8026AA5C
    lbz 0, 0x38(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026AA5C
    lbz 0, 0x28(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026AA5C
    li 0, 0x0
    .4byte 0x480000E4 # b .L_8026AB3C
L_8026AA5C:
    addi 3, 3, 0x1
    add 4, 31, 3
    lbz 0, 0x78(4)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8026AA90
    lbz 0, 0x38(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026AA90
    lbz 0, 0x28(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026AA90
    li 0, 0x0
    .4byte 0x480000B0 # b .L_8026AB3C
L_8026AA90:
    addi 3, 3, 0x1
    .4byte 0x4200FF30 # bdnz .L_8026A9C4
    lbz 0, 0x78(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AAAC
    li 0, 0x1
    .4byte 0x48000094 # b .L_8026AB3C
L_8026AAAC:
    lbz 0, 0x79(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AAC0
    li 0, 0x1
    .4byte 0x48000080 # b .L_8026AB3C
L_8026AAC0:
    lbz 0, 0x7a(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AAD4
    li 0, 0x1
    .4byte 0x4800006C # b .L_8026AB3C
L_8026AAD4:
    lbz 0, 0x7b(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AAE8
    li 0, 0x1
    .4byte 0x48000058 # b .L_8026AB3C
L_8026AAE8:
    lbz 0, 0x7c(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AAFC
    li 0, 0x1
    .4byte 0x48000044 # b .L_8026AB3C
L_8026AAFC:
    lbz 0, 0x7d(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AB10
    li 0, 0x1
    .4byte 0x48000030 # b .L_8026AB3C
L_8026AB10:
    lbz 0, 0x7e(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AB24
    li 0, 0x1
    .4byte 0x4800001C # b .L_8026AB3C
L_8026AB24:
    lbz 0, 0x7f(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026AB38
    li 0, 0x1
    .4byte 0x48000008 # b .L_8026AB3C
L_8026AB38:
    li 0, 0x0
L_8026AB3C:
    clrlwi. 0, 0, 24
    .4byte 0x40820284 # bne .L_8026ADC4
    lwz 3, 0x4(31)
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8026AB64
    lwz 3, 0x4(31)
    bl fn_80240D50
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8026AB8C
L_8026AB64:
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026AB7C
    lbz 0, 0x2a(31)
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_8026AC14
L_8026AB7C:
    li 0, 0x0
    stb 0, 0xb4(31)
    stb 0, 0xb6(31)
    .4byte 0x4800023C # b .L_8026ADC4
L_8026AB8C:
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x41820070 # beq .L_8026AC04
    lbz 0, 0x2a(31)
    cmplwi 0, 0x1
    .4byte 0x41820064 # beq .L_8026AC04
    lbz 0, 0x3c(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026ABBC
    lbz 0, 0x2c(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8026ABD4
L_8026ABBC:
    lbz 0, 0x38(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026ABD4
    lbz 0, 0x28(31)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8026AC04
L_8026ABD4:
    lbz 0, 0x3d(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026ABEC
    lbz 0, 0x2d(31)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8026AC14
L_8026ABEC:
    lbz 0, 0x39(31)
    cmplwi 0, 0x1
    .4byte 0x41820020 # beq .L_8026AC14
    lbz 0, 0x29(31)
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8026AC14
L_8026AC04:
    li 0, 0x0
    stb 0, 0xb4(31)
    stb 0, 0xb6(31)
    .4byte 0x480001B4 # b .L_8026ADC4
L_8026AC14:
    li 0, 0x2
    li 4, 0x0
    mtctr 0
L_8026AC20:
    add 3, 31, 4
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026AC48
    lbz 0, 0x58(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026AC48
    lbz 0, 0x78(3)
    cmplwi 0, 0x0
    .4byte 0x41820180 # beq .L_8026ADC4
L_8026AC48:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026AC74
    lbz 0, 0x58(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026AC74
    lbz 0, 0x78(3)
    cmplwi 0, 0x0
    .4byte 0x41820154 # beq .L_8026ADC4
L_8026AC74:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026ACA0
    lbz 0, 0x58(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026ACA0
    lbz 0, 0x78(3)
    cmplwi 0, 0x0
    .4byte 0x41820128 # beq .L_8026ADC4
L_8026ACA0:
    addi 4, 4, 0x1
    add 3, 31, 4
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8026ACCC
    lbz 0, 0x58(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026ACCC
    lbz 0, 0x78(3)
    cmplwi 0, 0x0
    .4byte 0x418200FC # beq .L_8026ADC4
L_8026ACCC:
    addi 4, 4, 0x1
    .4byte 0x4200FF50 # bdnz .L_8026AC20
    lwz 3, 0x4(31)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x41820024 # beq .L_8026AD04
    lwz 3, 0x4(31)
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8026AD04
    lwz 3, 0x4(31)
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_8026ADC4
L_8026AD04:
    li 0, 0x1
    stb 0, 0xb4(31)
    stb 0, 0xb6(31)
    lwz 3, 0x4(31)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_8026AD48
    lwz 3, 0x4(31)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x4180001C # blt .L_8026AD48
    lwz 3, 0x4(31)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x0
    .4byte 0x41820080 # beq .L_8026ADBC
    cmpwi 0, 0x1
    .4byte 0x41820078 # beq .L_8026ADBC
L_8026AD48:
    lwz 3, 0x4(31)
    bl fn_80240B34
    clrlwi. 0, 3, 24
    .4byte 0x40820068 # bne .L_8026ADBC
    lwz 3, 0x4(31)
    bl fn_80240D64
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_8026ADBC
    lwz 3, 0x4(31)
    bl GetField_0x436
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8026ADBC
    lwz 3, 0x4(31)
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8026AD98
    lwz 3, 0x4(31)
    lwz 0, 0xd08(3)
    cmpwi 0, 0x0
    .4byte 0x40800028 # bge .L_8026ADBC
L_8026AD98:
    lwz 3, 0x4(31)
    bl Player_GetField_0xce8
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_8026ADBC
    lwz 3, 0x4(31)
    .4byte 0xC002D2C4 # lfs f0, lbl_80540264@sda21(r0)
    lfs 1, 0xc(3)
    fadds 0, 1, 0
    stfs 0, 0xc(3)
L_8026ADBC:
    li 0, 0x1
    stb 0, 0x9a(31)
L_8026ADC4:
    lbz 0, 0xba(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8026ADE8
    lwz 3, 0x4(31)
    li 7, 0xd
    lwz 4, 0x3b4(3)
    addi 5, 3, 0x8
    addi 6, 3, 0xcbc
    bl fn_80290070
L_8026ADE8:
    lbz 0, 0x60(31)
    cmplwi 0, 0x1
    .4byte 0x4182005C # beq .L_8026AE4C
    lbz 0, 0x61(31)
    cmplwi 0, 0x1
    .4byte 0x41820050 # beq .L_8026AE4C
    lbz 0, 0x62(31)
    cmplwi 0, 0x1
    .4byte 0x41820044 # beq .L_8026AE4C
    lbz 0, 0x63(31)
    cmplwi 0, 0x1
    .4byte 0x41820038 # beq .L_8026AE4C
    lbz 0, 0x64(31)
    cmplwi 0, 0x1
    .4byte 0x4182002C # beq .L_8026AE4C
    lbz 0, 0x65(31)
    cmplwi 0, 0x1
    .4byte 0x41820020 # beq .L_8026AE4C
    lbz 0, 0x66(31)
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8026AE4C
    lbz 0, 0x67(31)
    cmplwi 0, 0x1
    .4byte 0x41820008 # beq .L_8026AE4C
    .4byte 0x48000084 # b .L_8026AECC
L_8026AE4C:
    lwz 3, 0x4(31)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8026AE6C
    lwz 3, 0x4(31)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x40800058 # bge .L_8026AEC0
L_8026AE6C:
    lwz 3, 0x4(31)
    bl fn_80240B34
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8026AEC0
    lwz 3, 0x4(31)
    bl fn_80240D64
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_8026AEC0
    lwz 3, 0x4(31)
    bl GetField_0x436
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_8026AEC0
    lwz 5, 0x4(31)
    lis 3, 0x2
    .4byte 0xC002D2C8 # lfs f0, lbl_80540268@sda21(r0)
    addi 4, 3, 0x45
    lfs 1, 0xc(5)
    fadds 0, 1, 0
    stfs 0, 0xc(5)
    lwz 3, 0x4(31)
    bl fn_8024F0E8
L_8026AEC0:
    li 0, 0x1
    stb 0, 0xb9(31)
    stb 0, 0x9a(31)
L_8026AECC:
    lwz 3, 0x4(31)
    bl fn_8026FC20
    cmpwi 3, 0x0
    .4byte 0x418105F0 # bgt .L_8026B4C8
    lbz 0, 0x28(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026AEF4
    lbz 0, 0x38(31)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8026AF40
L_8026AEF4:
    lbz 0, 0x29(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026AF0C
    lbz 0, 0x39(31)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_8026AF40
L_8026AF0C:
    lbz 0, 0x2a(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026AF24
    lbz 0, 0x3a(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8026AF40
L_8026AF24:
    lbz 0, 0x2b(31)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_8026AFE4
    lbz 0, 0x3b(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026AF40
    .4byte 0x480000A8 # b .L_8026AFE4
L_8026AF40:
    lbz 3, 0x28(31)
    li 0, 0x1
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AF58
    stb 0, 0x30(31)
    stb 0, 0x38(31)
L_8026AF58:
    lbz 3, 0x29(31)
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AF6C
    stb 0, 0x31(31)
    stb 0, 0x39(31)
L_8026AF6C:
    lbz 3, 0x2a(31)
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AF80
    stb 0, 0x32(31)
    stb 0, 0x3a(31)
L_8026AF80:
    lbz 3, 0x2b(31)
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AF94
    stb 0, 0x33(31)
    stb 0, 0x3b(31)
L_8026AF94:
    lbz 3, 0x2c(31)
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AFA8
    stb 0, 0x34(31)
    stb 0, 0x3c(31)
L_8026AFA8:
    lbz 3, 0x2d(31)
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AFBC
    stb 0, 0x35(31)
    stb 0, 0x3d(31)
L_8026AFBC:
    lbz 3, 0x2e(31)
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AFD0
    stb 0, 0x36(31)
    stb 0, 0x3e(31)
L_8026AFD0:
    lbz 3, 0x2f(31)
    cmplwi 3, 0x1
    .4byte 0x4082000C # bne .L_8026AFE4
    stb 0, 0x37(31)
    stb 0, 0x3f(31)
L_8026AFE4:
    lwz 0, 0xb0(31)
    cmpwi 0, 0x1
    .4byte 0x418100C8 # bgt .L_8026B0B4
    li 4, 0x0
    li 0, 0x2
    mr 3, 4
    mtctr 0
L_8026B000:
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B01C
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B020
L_8026B01C:
    addi 4, 4, 0x1
L_8026B020:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B040
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B044
L_8026B040:
    addi 4, 4, 0x1
L_8026B044:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B064
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B068
L_8026B064:
    addi 4, 4, 0x1
L_8026B068:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B088
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B08C
L_8026B088:
    addi 4, 4, 0x1
L_8026B08C:
    addi 3, 3, 0x1
    .4byte 0x4200FF70 # bdnz .L_8026B000
    cmpwi 4, 0x6
    .4byte 0x4180001C # blt .L_8026B0B4
    lwz 3, 0xa8(31)
    cmpwi 3, 0x3c
    .4byte 0x40800018 # bge .L_8026B0BC
    addi 0, 3, 0x1
    stw 0, 0xa8(31)
    .4byte 0x4800000C # b .L_8026B0BC
L_8026B0B4:
    li 0, 0x0
    stw 0, 0xa8(31)
L_8026B0BC:
    lwz 3, 0x4(31)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_8026B178
    li 4, 0x0
    li 0, 0x2
    mr 3, 4
    mtctr 0
L_8026B0DC:
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B0F8
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B0FC
L_8026B0F8:
    addi 4, 4, 0x1
L_8026B0FC:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B11C
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B120
L_8026B11C:
    addi 4, 4, 0x1
L_8026B120:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B140
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B144
L_8026B140:
    addi 4, 4, 0x1
L_8026B144:
    addi 3, 3, 0x1
    add 5, 31, 3
    lbz 0, 0x38(5)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8026B164
    lbz 0, 0x28(5)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8026B168
L_8026B164:
    addi 4, 4, 0x1
L_8026B168:
    addi 3, 3, 0x1
    .4byte 0x4200FF70 # bdnz .L_8026B0DC
    cmpwi 4, 0x7
    .4byte 0x4080012C # bge .L_8026B2A0
L_8026B178:
    lwz 3, 0x4(31)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x40820110 # bne .L_8026B294
    lbz 0, 0x38(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B1A8
    lbz 0, 0x28(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B1A8
    li 0, 0x0
    .4byte 0x480000E8 # b .L_8026B28C
L_8026B1A8:
    lbz 0, 0x39(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B1C8
    lbz 0, 0x29(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B1C8
    li 0, 0x0
    .4byte 0x480000C8 # b .L_8026B28C
L_8026B1C8:
    lbz 0, 0x3a(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B1E8
    lbz 0, 0x2a(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B1E8
    li 0, 0x0
    .4byte 0x480000A8 # b .L_8026B28C
L_8026B1E8:
    lbz 0, 0x3b(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B208
    lbz 0, 0x2b(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B208
    li 0, 0x0
    .4byte 0x48000088 # b .L_8026B28C
L_8026B208:
    lbz 0, 0x3c(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B228
    lbz 0, 0x2c(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B228
    li 0, 0x0
    .4byte 0x48000068 # b .L_8026B28C
L_8026B228:
    lbz 0, 0x3d(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B248
    lbz 0, 0x2d(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B248
    li 0, 0x0
    .4byte 0x48000048 # b .L_8026B28C
L_8026B248:
    lbz 0, 0x3e(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B268
    lbz 0, 0x2e(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B268
    li 0, 0x0
    .4byte 0x48000028 # b .L_8026B28C
L_8026B268:
    lbz 0, 0x3f(31)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8026B288
    lbz 0, 0x2f(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B288
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026B28C
L_8026B288:
    li 0, 0x1
L_8026B28C:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8026B2A0
L_8026B294:
    lwz 0, 0xa8(31)
    cmpwi 0, 0x3c
    .4byte 0x41800020 # blt .L_8026B2BC
L_8026B2A0:
    lwz 3, 0x4(31)
    li 7, 0x22
    lwz 4, 0x3b4(3)
    addi 5, 3, 0x8
    addi 6, 3, 0xd1c
    bl fn_80290070
    .4byte 0x48000210 # b .L_8026B4C8
L_8026B2BC:
    lis 3, lbl_8046BA08@ha
    li 29, 0x0
    addi 30, 3, lbl_8046BA08@l
L_8026B2C8:
    add 3, 31, 29
    lbz 0, 0x38(3)
    cmplwi 0, 0x0
    .4byte 0x418201E4 # beq .L_8026B4B8
    li 0, 0x1
    lfs 2, 0x0(30)
    stb 0, 0x48(3)
    lfs 1, 0x4(30)
    stb 0, 0x9a(31)
    lfs 0, 0x8(30)
    lbz 0, 0xb7(31)
    stfs 2, 0x34(1)
    cmplwi 0, 0x0
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    .4byte 0x41820020 # beq .L_8026B324
    .4byte 0xC3E2D2CC # lfs f31, lbl_8054026C@sda21(r0)
    psq_l 1, 0x34(1), 0, 0
    psq_l 0, 0x3c(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x34(1), 0, 0
    psq_st 0, 0x3c(1), 1, 0
L_8026B324:
    cmpwi 29, 0x4
    .4byte 0x4180016C # blt .L_8026B494
    .4byte 0x40820074 # bne .L_8026B3A0
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 4, 26, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8026B368
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8026B368
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 0, 0x34(1)
    .4byte 0x48000130 # b .L_8026B494
L_8026B368:
    lbz 0, 0x38(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026B380
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x40820118 # bne .L_8026B494
L_8026B380:
    .4byte 0xC3C2D2CC # lfs f30, lbl_8054026C@sda21(r0)
    psq_l 1, 0x34(1), 0, 0
    psq_l 0, 0x3c(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x34(1), 0, 0
    psq_st 0, 0x3c(1), 1, 0
    .4byte 0x480000F8 # b .L_8026B494
L_8026B3A0:
    cmpwi 29, 0x5
    .4byte 0x40820074 # bne .L_8026B418
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 4, 26, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8026B3E0
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8026B3E0
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 0, 0x34(1)
    .4byte 0x480000B8 # b .L_8026B494
L_8026B3E0:
    lbz 0, 0x39(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026B3F8
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x408200A0 # bne .L_8026B494
L_8026B3F8:
    .4byte 0xC3A2D2CC # lfs f29, lbl_8054026C@sda21(r0)
    psq_l 1, 0x34(1), 0, 0
    psq_l 0, 0x3c(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x34(1), 0, 0
    psq_st 0, 0x3c(1), 1, 0
    .4byte 0x48000080 # b .L_8026B494
L_8026B418:
    cmpwi 29, 0x6
    .4byte 0x4082003C # bne .L_8026B458
    lbz 0, 0x38(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026B438
    lbz 0, 0x3b(31)
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_8026B494
L_8026B438:
    .4byte 0xC382D2CC # lfs f28, lbl_8054026C@sda21(r0)
    psq_l 1, 0x34(1), 0, 0
    psq_l 0, 0x3c(1), 1, 0
    ps_muls0 1, 1, 28
    ps_muls0 0, 0, 28
    psq_st 1, 0x34(1), 0, 0
    psq_st 0, 0x3c(1), 1, 0
    .4byte 0x48000040 # b .L_8026B494
L_8026B458:
    cmpwi 29, 0x7
    .4byte 0x40820038 # bne .L_8026B494
    lbz 0, 0x39(31)
    cmplwi 0, 0x1
    .4byte 0x41820010 # beq .L_8026B478
    lbz 0, 0x3b(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8026B494
L_8026B478:
    .4byte 0xC362D2CC # lfs f27, lbl_8054026C@sda21(r0)
    psq_l 1, 0x34(1), 0, 0
    psq_l 0, 0x3c(1), 1, 0
    ps_muls0 1, 1, 27
    ps_muls0 0, 0, 27
    psq_st 1, 0x34(1), 0, 0
    psq_st 0, 0x3c(1), 1, 0
L_8026B494:
    lwz 3, 0x4(31)
    psq_l 1, 0x34(1), 0, 0
    psq_l 2, 0x8(3), 0, 0
    psq_l 0, 0x3c(1), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x8(3), 0, 0
    psq_l 1, 0x10(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x10(3), 1, 0
L_8026B4B8:
    addi 29, 29, 0x1
    addi 30, 30, 0xc
    cmpwi 29, 0x8
    .4byte 0x4180FE04 # blt .L_8026B2C8
L_8026B4C8:
    lwz 3, 0x4(31)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8026B4F0
    lwz 3, 0x4(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408202E4 # bne .L_8026B7D0
L_8026B4F0:
    lbz 0, 0x20(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B504
    li 0, 0x0
    .4byte 0x48000094 # b .L_8026B594
L_8026B504:
    lbz 0, 0x21(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B518
    li 0, 0x0
    .4byte 0x48000080 # b .L_8026B594
L_8026B518:
    lbz 0, 0x22(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B52C
    li 0, 0x0
    .4byte 0x4800006C # b .L_8026B594
L_8026B52C:
    lbz 0, 0x23(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B540
    li 0, 0x0
    .4byte 0x48000058 # b .L_8026B594
L_8026B540:
    lbz 0, 0x24(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B554
    li 0, 0x0
    .4byte 0x48000044 # b .L_8026B594
L_8026B554:
    lbz 0, 0x25(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B568
    li 0, 0x0
    .4byte 0x48000030 # b .L_8026B594
L_8026B568:
    lbz 0, 0x26(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B57C
    li 0, 0x0
    .4byte 0x4800001C # b .L_8026B594
L_8026B57C:
    lbz 0, 0x27(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8026B590
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026B594
L_8026B590:
    li 0, 0x1
L_8026B594:
    clrlwi. 0, 0, 24
    .4byte 0x4182004C # beq .L_8026B5E4
    lwz 3, 0x4(31)
    li 5, 0x1
    lwz 4, 0x3b4(3)
    addi 3, 3, 0x8
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8026B5E4
    lwz 3, 0x4(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    lfs 1, 0x8(3)
    stfs 1, 0xd1c(3)
    lfs 1, 0xc(3)
    stfs 1, 0xd20(3)
    lfs 1, 0x10(3)
    stfs 1, 0xd24(3)
    lwz 3, 0x4(31)
    stfs 0, 0xd24(3)
    .4byte 0x480001F0 # b .L_8026B7D0
L_8026B5E4:
    lwz 3, 0x4(31)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 26
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408201D0 # bne .L_8026B7D0
    lbz 0, 0x4a(31)
    cmplwi 0, 0x1
    .4byte 0x408201C4 # bne .L_8026B7D0
    lbz 0, 0x4b(31)
    cmplwi 0, 0x1
    .4byte 0x418201B8 # beq .L_8026B7D0
    lbz 0, 0x49(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8026B630
    li 0, 0x1
    .4byte 0x4800001C # b .L_8026B648
L_8026B630:
    lbz 0, 0x48(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8026B644
    li 0, 0x1
    .4byte 0x48000008 # b .L_8026B648
L_8026B644:
    li 0, 0x0
L_8026B648:
    clrlwi. 0, 0, 24
    .4byte 0x40820184 # bne .L_8026B7D0
    lbz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B664
    li 0, 0x1
    .4byte 0x48000094 # b .L_8026B6F4
L_8026B664:
    lbz 0, 0x31(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B678
    li 0, 0x1
    .4byte 0x48000080 # b .L_8026B6F4
L_8026B678:
    lbz 0, 0x32(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B68C
    li 0, 0x1
    .4byte 0x4800006C # b .L_8026B6F4
L_8026B68C:
    lbz 0, 0x33(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B6A0
    li 0, 0x1
    .4byte 0x48000058 # b .L_8026B6F4
L_8026B6A0:
    lbz 0, 0x34(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B6B4
    li 0, 0x1
    .4byte 0x48000044 # b .L_8026B6F4
L_8026B6B4:
    lbz 0, 0x35(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B6C8
    li 0, 0x1
    .4byte 0x48000030 # b .L_8026B6F4
L_8026B6C8:
    lbz 0, 0x36(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B6DC
    li 0, 0x1
    .4byte 0x4800001C # b .L_8026B6F4
L_8026B6DC:
    lbz 0, 0x37(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8026B6F0
    li 0, 0x1
    .4byte 0x48000008 # b .L_8026B6F4
L_8026B6F0:
    li 0, 0x0
L_8026B6F4:
    clrlwi. 0, 0, 24
    .4byte 0x408200D8 # bne .L_8026B7D0
    lwz 5, 0x4(31)
    addi 3, 1, 0x18
    .4byte 0xC022D2BC # lfs f1, lbl_8054025C@sda21(r0)
    lfs 0, 0xc(5)
    lwz 4, 0x3b4(5)
    fadds 1, 1, 0
    lfs 0, 0x8(5)
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x408200A4 # bne .L_8026B7D0
    lwz 4, 0x4(31)
    addi 3, 1, 0x10
    .4byte 0xC062D2BC # lfs f3, lbl_8054025C@sda21(r0)
    lfs 2, 0xc(4)
    lfs 1, 0x8(4)
    .4byte 0xC002D2B8 # lfs f0, lbl_80540258@sda21(r0)
    fadds 2, 3, 2
    lwz 4, 0x3b4(4)
    fsubs 0, 1, 0
    stfs 2, 0x14(1)
    stfs 0, 0x10(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_8026B7D0
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    .4byte 0xC062D2BC # lfs f3, lbl_8054025C@sda21(r0)
    lfs 2, 0xc(4)
    lfs 0, 0x8(4)
    .4byte 0xC022D2B8 # lfs f1, lbl_80540258@sda21(r0)
    fadds 2, 3, 2
    lwz 4, 0x3b4(4)
    fadds 0, 1, 0
    stfs 2, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8026B7D0
    lwz 3, 0x4(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    lfs 1, 0x8(3)
    stfs 1, 0xd1c(3)
    lfs 1, 0xc(3)
    stfs 1, 0xd20(3)
    lfs 1, 0x10(3)
    stfs 1, 0xd24(3)
    lwz 3, 0x4(31)
    stfs 0, 0xd24(3)
L_8026B7D0:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    psq_l 27, 0xa8(1), 0, 0
    lfd 27, 0xa0(1)
    psq_l 26, 0x98(1), 0, 0
    lfd 26, 0x90(1)
    psq_l 25, 0x88(1), 0, 0
    lfd 25, 0x80(1)
    lmw 26, 0x68(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_8026B81C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    clrlwi 0, 4, 16
    cmplwi 0, 0x60
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0x41810B04 # bgt .L_8026C33C
    lis 3, jumptable_804A71B4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A71B4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000AD8 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40800AAC # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000A98 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40810A6C # ble .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000A58 # b .L_8026C33C
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40800A2C # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000A18 # b .L_8026C33C
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408109EC # ble .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480009D8 # b .L_8026C33C
    lfs 1, 0x8(31)
    lfs 0, 0xc(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x8(1)
    lwz 3, 0xc(1)
    stfd 0, 0x10(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0x14(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x41800984 # blt .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000970 # b .L_8026C33C
    lfs 1, 0xc(31)
    lfs 0, 0x8(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x40800920 # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x4800090C # b .L_8026C33C
    lfs 1, 0xc(31)
    lfs 0, 0x8(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x418008BC # blt .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480008A8 # b .L_8026C33C
    lfs 1, 0x8(31)
    lfs 0, 0xc(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x40800854 # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000840 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40800814 # bge .L_8026C33C
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408007E8 # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480007D4 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408007A8 # bge .L_8026C33C
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4081077C # ble .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000768 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4081073C # ble .L_8026C33C
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40800710 # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480006FC # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408106D0 # ble .L_8026C33C
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408106A4 # ble .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000690 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41810030 # bgt .L_8026BD08
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40810638 # ble .L_8026C33C
L_8026BD08:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000624 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41810030 # bgt .L_8026BD74
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408005CC # bge .L_8026C33C
L_8026BD74:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480005B8 # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41800030 # blt .L_8026BDE0
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40810560 # ble .L_8026C33C
L_8026BDE0:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x4800054C # b .L_8026C33C
    lfs 0, 0xc(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41800030 # blt .L_8026BE4C
    lfs 0, 0x8(31)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408004F4 # bge .L_8026C33C
L_8026BE4C:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480004E0 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480004CC # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480004B8 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480004A4 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000490 # b .L_8026C33C
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x40820480 # bne .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x4800046C # b .L_8026C33C
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x4082045C # bne .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000448 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000434 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000420 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x4800040C # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480003F8 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480003E4 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480003D0 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480003BC # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480003A8 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000394 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000380 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x4800036C # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000358 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000344 # b .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000330 # b .L_8026C33C
    lfs 1, 0x8(31)
    lfs 0, 0xc(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x418002DC # blt .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480002C8 # b .L_8026C33C
    lfs 1, 0xc(31)
    lfs 0, 0x8(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x40800278 # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000264 # b .L_8026C33C
    lfs 1, 0xc(31)
    lfs 0, 0x8(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x41800214 # blt .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000200 # b .L_8026C33C
    lfs 1, 0x8(31)
    lfs 0, 0xc(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x408001AC # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000198 # b .L_8026C33C
    lfs 1, 0x8(31)
    lfs 0, 0xc(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x41800144 # blt .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000130 # b .L_8026C33C
    lfs 1, 0xc(31)
    lfs 0, 0x8(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x408000E0 # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x480000CC # b .L_8026C33C
    lfs 1, 0xc(31)
    lfs 0, 0x8(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x4180007C # blt .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000068 # b .L_8026C33C
    lfs 1, 0x8(31)
    lfs 0, 0xc(31)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x40800014 # bge .L_8026C33C
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
L_8026C33C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8026C350:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    mr 29, 4
    lwz 3, 0x4(3)
    bl fn_8026FC20
    cmpwi 3, 0x1
    .4byte 0x41800028 # blt .L_8026C3A4
    clrlwi 0, 29, 16
    cmpwi 0, 0x14
    .4byte 0x40801E3C # bge .L_8026E1C4
    cmpwi 0, 0x10
    .4byte 0x40800008 # bge .L_8026C398
    .4byte 0x48001E30 # b .L_8026E1C4
L_8026C398:
    li 0, 0x1
    stb 0, 0xb8(30)
    .4byte 0x48001E24 # b .L_8026E1C4
L_8026C3A4:
    clrlwi 31, 29, 16
    cmplwi 31, 0x60
    .4byte 0x41811DC8 # bgt .L_8026E174
    lis 3, jumptable_804A7338@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A7338@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x6
    .4byte 0x41821DE4 # beq .L_8026E1C4
    cmplwi 0, 0xb8
    .4byte 0x41821DDC # beq .L_8026E1C4
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x59
    .4byte 0x41821DC0 # beq .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x20(3)
    .4byte 0x48001DAC # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001D98 # b .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41811D84 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41811D78 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x58(3)
    .4byte 0x48001D64 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41821D54 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41811D40 # bgt .L_8026E1C4
    bl Player_GetField_0xce8
    clrlwi. 0, 3, 24
    .4byte 0x40821D34 # bne .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41811D28 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x68(3)
    .4byte 0x48001D14 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40801CE8 # bge .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001CD4 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40811CA8 # ble .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001C94 # b .L_8026E1C4
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40801C68 # bge .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001C54 # b .L_8026E1C4
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40811C28 # ble .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001C14 # b .L_8026E1C4
    lfs 1, 0x8(30)
    lfs 0, 0xc(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x8(1)
    lwz 3, 0xc(1)
    stfd 0, 0x10(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0x14(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x41801BC0 # blt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001BAC # b .L_8026E1C4
    lfs 1, 0xc(30)
    lfs 0, 0x8(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x40801B5C # bge .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001B48 # b .L_8026E1C4
    lfs 1, 0xc(30)
    lfs 0, 0x8(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x41801AF8 # blt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001AE4 # b .L_8026E1C4
    lfs 1, 0x8(30)
    lfs 0, 0xc(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x40801A90 # bge .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001A7C # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026C770
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001A58 # b .L_8026E1C4
L_8026C770:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41821A48 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41811A34 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41811A28 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x48001A14 # b .L_8026E1C4
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8026C804
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418219F8 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x418119E4 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x418119D8 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x480019C4 # b .L_8026E1C4
L_8026C804:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418219B4 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x418119A0 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41811994 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x48001980 # b .L_8026E1C4
    li 0, 0x1
    stb 0, 0xb8(30)
    mr 3, 30
    mr 4, 29
    bl fn_8026E68C
    .4byte 0x48001968 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4080193C # bge .L_8026E1C4
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40801910 # bge .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480018FC # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408018D0 # bge .L_8026E1C4
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408118A4 # ble .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001890 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40811864 # ble .L_8026E1C4
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40801838 # bge .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001824 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408117F8 # ble .L_8026E1C4
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408117CC # ble .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480017B8 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41810030 # bgt .L_8026CA68
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40811760 # ble .L_8026E1C4
L_8026CA68:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x4800174C # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41810030 # bgt .L_8026CAD4
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408016F4 # bge .L_8026E1C4
L_8026CAD4:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480016E0 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41800030 # blt .L_8026CB40
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40811688 # ble .L_8026E1C4
L_8026CB40:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001674 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x41800030 # blt .L_8026CBAC
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4080161C # bge .L_8026E1C4
L_8026CBAC:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001608 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418215F8 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x408015E4 # bge .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x50(3)
    .4byte 0x480015D0 # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480015BC # b .L_8026E1C4
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x0
    .4byte 0x418215AC # beq .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001598 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0xc
    .4byte 0x40800038 # bge .L_8026CC90
    lwz 3, 0x4(30)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41811558 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x4181154C # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x58(3)
    .4byte 0x48001538 # b .L_8026E1C4
L_8026CC90:
    lwz 0, 0x1c(30)
    cmpwi 0, 0x2
    .4byte 0x4082152C # bne .L_8026E1C4
    add 3, 30, 0
    li 0, 0x1
    stb 0, 0x38(3)
    .4byte 0x4800151C # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001508 # b .L_8026E1C4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x408214F8 # bne .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480014E4 # b .L_8026E1C4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x408214D4 # bne .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480014C0 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026CD30
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820034 # beq .L_8026CD60
L_8026CD30:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8026CD60
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40821478 # bne .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x41821468 # beq .L_8026E1C4
L_8026CD60:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001454 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026CD9C
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820060 # beq .L_8026CDF8
L_8026CD9C:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8026CDF8
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026CDCC
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8026CDF8
L_8026CDCC:
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408013D0 # bge .L_8026E1C4
L_8026CDF8:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480013BC # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026CE34
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820060 # beq .L_8026CE90
L_8026CE34:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8026CE90
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026CE64
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8026CE90
L_8026CE64:
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40811338 # ble .L_8026E1C4
L_8026CE90:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001324 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026CECC
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820084 # beq .L_8026CF4C
L_8026CECC:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_8026CF4C
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026CEFC
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_8026CF4C
L_8026CEFC:
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408012A0 # bge .L_8026E1C4
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_8026CF4C
    lfs 1, 0x10(3)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082127C # bne .L_8026E1C4
L_8026CF4C:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001268 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026CF88
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820084 # beq .L_8026D008
L_8026CF88:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_8026D008
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026CFB8
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_8026D008
L_8026CFB8:
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x408111E4 # ble .L_8026E1C4
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_8026D008
    lfs 1, 0x10(3)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408211C0 # bne .L_8026E1C4
L_8026D008:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480011AC # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026D044
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820060 # beq .L_8026D0A0
L_8026D044:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8026D0A0
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026D074
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8026D0A0
L_8026D074:
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40801128 # bge .L_8026E1C4
L_8026D0A0:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48001114 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026D0DC
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820060 # beq .L_8026D138
L_8026D0DC:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_8026D138
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026D10C
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_8026D138
L_8026D10C:
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40811090 # ble .L_8026E1C4
L_8026D138:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x4800107C # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026D174
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820084 # beq .L_8026D1F4
L_8026D174:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_8026D1F4
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026D1A4
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_8026D1F4
L_8026D1A4:
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40800FF8 # bge .L_8026E1C4
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8026D1F4
    lfs 1, 0x10(3)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820FD4 # bne .L_8026E1C4
L_8026D1F4:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000FC0 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8026D230
    lwz 3, 0x4(30)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820084 # beq .L_8026D2B0
L_8026D230:
    lwz 3, 0x4(30)
    bl fn_80240F14
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_8026D2B0
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820014 # bne .L_8026D260
    lwz 3, 0x4(30)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_8026D2B0
L_8026D260:
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40810F3C # ble .L_8026E1C4
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8026D2B0
    lfs 1, 0x10(3)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820F18 # bne .L_8026E1C4
L_8026D2B0:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000F04 # b .L_8026E1C4
    mr 3, 30
    bl fn_8026EE60
    mr 3, 30
    subi 4, 31, 0x31
    bl fn_8026EC88
    .4byte 0x48000EEC # b .L_8026E1C4
    mr 3, 30
    bl fn_8026F54C
    .4byte 0x48000EE0 # b .L_8026E1C4
    mr 3, 30
    bl fn_8026F388
    .4byte 0x48000ED4 # b .L_8026E1C4
    mr 3, 30
    bl fn_8026F1C4
    .4byte 0x48000EC8 # b .L_8026E1C4
    mr 3, 30
    bl fn_8026F000
    .4byte 0x48000EBC # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820EAC # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810E98 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810E8C # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x48000E78 # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026D374
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000E54 # b .L_8026E1C4
L_8026D374:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820E44 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810E30 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810E24 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x48000E10 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4081006C # ble .L_8026D44C
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026D408
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000DC0 # b .L_8026E1C4
L_8026D408:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820DB0 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810D9C # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810D90 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x48000D7C # b .L_8026E1C4
L_8026D44C:
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_8026D48C
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000D3C # b .L_8026E1C4
L_8026D48C:
    lwz 0, 0x1c(30)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_8026D4A8
    mr 3, 30
    li 4, 0x10
    bl fn_8026E68C
    .4byte 0x48000D20 # b .L_8026E1C4
L_8026D4A8:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8026D4C0
    mr 3, 30
    li 4, 0x11
    bl fn_8026E68C
    .4byte 0x48000D08 # b .L_8026E1C4
L_8026D4C0:
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x6
    .4byte 0x41820CEC # beq .L_8026E1C4
    cmplwi 0, 0xb8
    .4byte 0x41820CE4 # beq .L_8026E1C4
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x59
    .4byte 0x41820CC8 # beq .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x20(3)
    .4byte 0x48000CB4 # b .L_8026E1C4
    lfs 0, 0xc(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4081006C # ble .L_8026D5A8
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026D564
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000C64 # b .L_8026E1C4
L_8026D564:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820C54 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810C40 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810C34 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x48000C20 # b .L_8026E1C4
L_8026D5A8:
    lfs 0, 0x8(30)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 4
    add 0, 0, 3
    cmpwi 0, 0x8
    .4byte 0x4080008C # bge .L_8026D65C
    lwz 0, 0x1c(30)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_8026D5F0
    mr 3, 30
    li 4, 0x10
    bl fn_8026E68C
    .4byte 0x48000BD8 # b .L_8026E1C4
L_8026D5F0:
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8026D608
    mr 3, 30
    li 4, 0x11
    bl fn_8026E68C
    .4byte 0x48000BC0 # b .L_8026E1C4
L_8026D608:
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x6
    .4byte 0x41820BA4 # beq .L_8026E1C4
    cmplwi 0, 0xb8
    .4byte 0x41820B9C # beq .L_8026E1C4
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x59
    .4byte 0x41820B80 # beq .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x20(3)
    .4byte 0x48000B6C # b .L_8026E1C4
L_8026D65C:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000B58 # b .L_8026E1C4
    lwz 3, 0x4(30)
    lwz 3, 0x4(3)
    bl fn_80237A80
    clrlwi. 0, 3, 24
    .4byte 0x40820B44 # bne .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000B30 # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000B1C # b .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x41820038 # beq .L_8026D6F0
    lwz 3, 0x4(30)
    li 4, 0x1
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(3)
    lbz 3, 0x82(5)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x41820030 # beq .L_8026D71C
L_8026D6F0:
    lwz 3, 0x4(30)
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820AC8 # bne .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_80248778
    mr 29, 3
    lwz 3, 0x4(30)
    bl fn_80240888
    cmpw 3, 29
    .4byte 0x40820AAC # bne .L_8026E1C4
L_8026D71C:
    lwz 3, 0x4(30)
    subi 0, 31, 0x4c
    lwz 4, 0x4(3)
    cmpw 0, 4
    .4byte 0x41820A98 # beq .L_8026E1C4
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x40820A8C # bne .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x40820A7C # bne .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820A6C # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810A58 # bgt .L_8026E1C4
    bl Player_GetField_0xce8
    clrlwi. 0, 3, 24
    .4byte 0x40820A4C # bne .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810A40 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x68(3)
    .4byte 0x48000A2C # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x70(3)
    .4byte 0x48000A18 # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    lwz 3, 0x4(30)
    bl fn_80270C88
    clrlwi. 0, 3, 24
    .4byte 0x408209F8 # bne .L_8026E1C4
    lwz 3, 0x4(30)
    lwz 4, 0x3b4(3)
    cmpwi 4, 0x8
    .4byte 0x41800014 # blt .L_8026D7F0
    addi 3, 30, 0x8
    addi 4, 4, 0x8
    bl fn_8022461C
    .4byte 0x48000010 # b .L_8026D7FC
L_8026D7F0:
    addi 3, 30, 0x8
    li 4, 0x1
    bl fn_8022461C
L_8026D7FC:
    clrlwi 0, 3, 16
    cmplwi 0, 0x60
    .4byte 0x40820010 # bne .L_8026D814
    li 0, 0x1
    stb 0, 0xba(30)
    .4byte 0x480009B4 # b .L_8026E1C4
L_8026D814:
    lwz 3, 0x4(30)
    addi 5, 30, 0x8
    li 4, 0x1
    li 6, 0x4
    bl fn_80272160
    .4byte 0x4800099C # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810980 # bgt .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820970 # beq .L_8026E1C4
    lwz 5, 0x4(30)
    addi 4, 30, 0x8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x9d
    lwz 6, 0x3b4(5)
    lwz 5, 0x4(5)
    bl fn_802A3948
    lwz 3, 0x4(30)
    lwz 29, 0x3b4(3)
    cmpwi 29, 0x8
    .4byte 0x4180002C # blt .L_8026D8AC
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 29
    addi 4, 4, 0x5249
    addi 6, 30, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800091C # b .L_8026E1C4
L_8026D8AC:
    .4byte 0xC022D2B4 # lfs f1, lbl_80540254@sda21(r0)
    mr 3, 29
    addi 4, 30, 0x8
    li 5, 0xf9
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0x8
    .4byte 0xC022D2B4 # lfs f1, lbl_80540254@sda21(r0)
    li 5, 0xfa
    lwz 3, 0x3b4(3)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480008C4 # b .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x418108A8 # bgt .L_8026E1C4
    lwz 3, 0x4(30)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820898 # beq .L_8026E1C4
    lwz 5, 0x4(30)
    addi 4, 30, 0x8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 7, 0x3e0
    lwz 6, 0x3b4(5)
    lwz 5, 0x4(5)
    bl fn_802A3948
    lwz 5, 0x4(30)
    lis 3, 0x2
    addi 4, 3, 0x25
    lwz 3, 0x4(5)
    bl fn_80230FD0
    lwz 3, 0x4(30)
    lwz 29, 0x3b4(3)
    cmpwi 29, 0x8
    .4byte 0x4180002C # blt .L_8026D998
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 29
    addi 4, 4, 0x5249
    addi 6, 30, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000830 # b .L_8026E1C4
L_8026D998:
    .4byte 0xC022D2B4 # lfs f1, lbl_80540254@sda21(r0)
    mr 3, 29
    addi 4, 30, 0x8
    li 5, 0xf9
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0x8
    .4byte 0xC022D2B4 # lfs f1, lbl_80540254@sda21(r0)
    li 5, 0xfa
    lwz 3, 0x3b4(3)
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480007D8 # b .L_8026E1C4
    lfs 1, 0x8(30)
    lfs 0, 0xc(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x41800018 # blt .L_8026DA58
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000770 # b .L_8026E1C4
L_8026DA58:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820764 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820754 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810740 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810734 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x48000720 # b .L_8026E1C4
    lfs 1, 0xc(30)
    lfs 0, 0x8(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x40800018 # bge .L_8026DB0C
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480006BC # b .L_8026E1C4
L_8026DB0C:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x418206B0 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418206A0 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x4181068C # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810680 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x4800066C # b .L_8026E1C4
    lfs 1, 0xc(30)
    lfs 0, 0x8(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x41800018 # blt .L_8026DBC0
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000608 # b .L_8026E1C4
L_8026DBC0:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x418205FC # beq .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418205EC # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x418105D8 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x418105CC # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x480005B8 # b .L_8026E1C4
    lfs 1, 0x8(30)
    lfs 0, 0xc(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x40800018 # bge .L_8026DC78
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000550 # b .L_8026E1C4
L_8026DC78:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820544 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820534 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810520 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810514 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x48000500 # b .L_8026E1C4
    lfs 1, 0x8(30)
    lfs 0, 0xc(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x41800018 # blt .L_8026DD30
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000498 # b .L_8026E1C4
L_8026DD30:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8026DD80
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x4182047C # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810468 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x4181045C # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x48000448 # b .L_8026E1C4
L_8026DD80:
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026DDA4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000424 # b .L_8026E1C4
L_8026DDA4:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820414 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810400 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x418103F4 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x480003E0 # b .L_8026E1C4
    lfs 1, 0xc(30)
    lfs 0, 0x8(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x40800018 # bge .L_8026DE4C
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x4800037C # b .L_8026E1C4
L_8026DE4C:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8026DE9C
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820360 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x4181034C # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810340 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x4800032C # b .L_8026E1C4
L_8026DE9C:
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026DEC0
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000308 # b .L_8026E1C4
L_8026DEC0:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418202F8 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x418102E4 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x418102D8 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x480002C4 # b .L_8026E1C4
    lfs 1, 0xc(30)
    lfs 0, 0x8(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    subf. 0, 4, 0
    .4byte 0x41800018 # blt .L_8026DF68
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000260 # b .L_8026E1C4
L_8026DF68:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8026DFB8
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820244 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810230 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810224 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x48000210 # b .L_8026E1C4
L_8026DFB8:
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026DFDC
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480001EC # b .L_8026E1C4
L_8026DFDC:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418201DC # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x418101C8 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x418101BC # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x480001A8 # b .L_8026E1C4
    lfs 1, 0x8(30)
    lfs 0, 0xc(30)
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    stfd 0, 0x8(1)
    slwi 0, 3, 28
    srwi 5, 3, 31
    lwz 3, 0xc(1)
    subf 0, 5, 0
    rotlwi 4, 0, 4
    slwi 0, 3, 28
    srwi 3, 3, 31
    subf 0, 3, 0
    add 4, 4, 5
    rotlwi 0, 0, 4
    add 0, 0, 3
    add 0, 4, 0
    cmpwi 0, 0x10
    .4byte 0x40800018 # bge .L_8026E088
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x48000140 # b .L_8026E1C4
L_8026E088:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8026E0D8
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x41820124 # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810110 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810104 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x88(3)
    .4byte 0x480000F0 # b .L_8026E1C4
L_8026E0D8:
    lwz 3, 0x4(30)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026E0FC
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x480000CC # b .L_8026E1C4
L_8026E0FC:
    lwz 3, 0x4(30)
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D2B4 # lfs f0, lbl_80540254@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x418100A8 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x4181009C # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x78(3)
    .4byte 0x48000088 # b .L_8026E1C4
    lwz 3, 0x4(30)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x41810074 # bgt .L_8026E1C4
    lwz 0, 0xb0(30)
    cmpwi 0, 0x1
    .4byte 0x41810068 # bgt .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x60(3)
    .4byte 0x48000054 # b .L_8026E1C4
L_8026E174:
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x6
    .4byte 0x41820038 # beq .L_8026E1C4
    cmplwi 0, 0xb8
    .4byte 0x41820030 # beq .L_8026E1C4
    lwz 4, 0x4(30)
    addi 3, 30, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x59
    .4byte 0x41820014 # beq .L_8026E1C4
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x20(3)
L_8026E1C4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8026E1E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x4(3)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8026E234
    lwz 3, 0x4(31)
    bl fn_802412A4
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8026E224
    lwz 3, 0x4(31)
    lwz 0, 0x1218(3)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_8026E234
L_8026E224:
    li 0, 0x0
    stw 0, 0xa0(31)
    stw 0, 0xa4(31)
    .4byte 0x48000220 # b .L_8026E450
L_8026E234:
    lwz 3, 0x4(31)
    lwz 3, 0x4(3)
    bl fn_8023EAC4
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8026E258
    li 0, 0x0
    stw 0, 0xa0(31)
    stw 0, 0xa4(31)
    .4byte 0x480001FC # b .L_8026E450
L_8026E258:
    lwz 3, 0x4(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    lfs 1, 0x10(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_8026E27C
    li 0, 0x0
    stw 0, 0xa0(31)
    stw 0, 0xa4(31)
    .4byte 0x480001D8 # b .L_8026E450
L_8026E27C:
    lbz 0, 0x38(31)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_8026E2D0
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8026E2D0
    bl fn_80247330
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_8026E2D0
    lwz 3, 0xa0(31)
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_8026E2C4
    li 0, 0x14
    stw 0, 0xa0(31)
L_8026E2C4:
    li 0, 0x0
    stw 0, 0xa4(31)
    .4byte 0x48000184 # b .L_8026E450
L_8026E2D0:
    lbz 0, 0x39(31)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_8026E328
    lwz 3, 0x4(31)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x1
    .4byte 0x40820040 # bne .L_8026E328
    bl fn_80247330
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8026E328
    lwz 3, 0xa0(31)
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_8026E31C
    li 0, 0x14
    stw 0, 0xa0(31)
L_8026E31C:
    li 0, 0x0
    stw 0, 0xa4(31)
    .4byte 0x4800012C # b .L_8026E450
L_8026E328:
    lbz 0, 0x3a(31)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_8026E380
    lwz 3, 0x4(31)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x2
    .4byte 0x40820040 # bne .L_8026E380
    bl fn_8024712C
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_8026E380
    lwz 3, 0xa0(31)
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_8026E374
    li 0, 0x14
    stw 0, 0xa0(31)
L_8026E374:
    li 0, 0x0
    stw 0, 0xa4(31)
    .4byte 0x480000D4 # b .L_8026E450
L_8026E380:
    lbz 0, 0x3b(31)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_8026E3D8
    lwz 3, 0x4(31)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x3
    .4byte 0x40820040 # bne .L_8026E3D8
    bl fn_8024712C
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810030 # ble .L_8026E3D8
    lwz 3, 0xa0(31)
    addi 0, 3, 0x1
    stw 0, 0xa0(31)
    lwz 0, 0xa0(31)
    cmpwi 0, 0x14
    .4byte 0x4081000C # ble .L_8026E3CC
    li 0, 0x14
    stw 0, 0xa0(31)
L_8026E3CC:
    li 0, 0x0
    stw 0, 0xa4(31)
    .4byte 0x4800007C # b .L_8026E450
L_8026E3D8:
    lwz 3, 0x4(31)
    bl fn_80250090
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026E3FC
    li 3, 0x14
    li 0, 0x0
    stw 3, 0xa0(31)
    stw 0, 0xa4(31)
    .4byte 0x48000058 # b .L_8026E450
L_8026E3FC:
    lwz 3, 0x4(31)
    bl Player_CheckField1240Eq14
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8026E450
    lwz 3, 0xa4(31)
    addi 0, 3, 0x1
    stw 0, 0xa4(31)
    lwz 0, 0xa4(31)
    cmpwi 0, 0x5
    .4byte 0x41800030 # blt .L_8026E450
    li 0, 0x5
    li 4, 0x0
    stw 0, 0xa4(31)
    li 0, -0x1
    stw 4, 0xa0(31)
    lwz 3, 0x4(31)
    stw 0, 0xd94(3)
    lwz 3, 0x4(31)
    stw 0, 0xd9c(3)
    lwz 3, 0x4(31)
    stw 4, 0xd98(3)
L_8026E450:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8026E464:
    stwu 1, -0x10(1)
    li 0, 0x5
    stw 31, 0xc(1)
    li 31, 0x0
    lbz 4, 0x48(3)
    stb 4, 0x40(3)
    stb 31, 0x48(3)
    stb 31, 0x30(3)
    lbz 4, 0x49(3)
    stb 4, 0x41(3)
    stb 31, 0x49(3)
    stb 31, 0x31(3)
    lbz 4, 0x4a(3)
    stb 4, 0x42(3)
    stb 31, 0x4a(3)
    stb 31, 0x32(3)
    lbz 4, 0x4b(3)
    stb 4, 0x43(3)
    stb 31, 0x4b(3)
    stb 31, 0x33(3)
    lbz 4, 0x4c(3)
    stb 4, 0x44(3)
    stb 31, 0x4c(3)
    stb 31, 0x34(3)
    lbz 4, 0x4d(3)
    stb 4, 0x45(3)
    stb 31, 0x4d(3)
    stb 31, 0x35(3)
    lbz 4, 0x4e(3)
    stb 4, 0x46(3)
    stb 31, 0x4e(3)
    stb 31, 0x36(3)
    lbz 4, 0x4f(3)
    stb 4, 0x47(3)
    stb 31, 0x4f(3)
    stb 31, 0x37(3)
    mtctr 0
L_8026E4F8:
    lwz 4, 0x4(3)
    addi 11, 31, 0xef0
    li 12, -0x1
    addi 10, 31, 0xef4
    stwx 12, 4, 11
    addi 9, 31, 0xef8
    addi 8, 31, 0xefc
    addi 7, 31, 0xf00
    lwz 4, 0x4(3)
    addi 6, 31, 0xf04
    addi 5, 31, 0xf08
    addi 0, 31, 0xf0c
    stwx 12, 4, 10
    addi 11, 31, 0xf10
    addi 10, 31, 0xf14
    lwz 4, 0x4(3)
    stwx 12, 4, 9
    addi 9, 31, 0xf18
    lwz 4, 0x4(3)
    stwx 12, 4, 8
    addi 8, 31, 0xf1c
    lwz 4, 0x4(3)
    stwx 12, 4, 7
    addi 7, 31, 0xf20
    lwz 4, 0x4(3)
    stwx 12, 4, 6
    addi 6, 31, 0xf24
    lwz 4, 0x4(3)
    stwx 12, 4, 5
    addi 5, 31, 0xf28
    lwz 4, 0x4(3)
    stwx 12, 4, 0
    addi 0, 31, 0xf2c
    addi 31, 31, 0x40
    lwz 4, 0x4(3)
    stwx 12, 4, 11
    lwz 4, 0x4(3)
    stwx 12, 4, 10
    lwz 4, 0x4(3)
    stwx 12, 4, 9
    lwz 4, 0x4(3)
    stwx 12, 4, 8
    lwz 4, 0x4(3)
    stwx 12, 4, 7
    lwz 4, 0x4(3)
    stwx 12, 4, 6
    lwz 4, 0x4(3)
    stwx 12, 4, 5
    lwz 4, 0x4(3)
    stwx 12, 4, 0
    .4byte 0x4200FF38 # bdnz .L_8026E4F8
    lbz 4, 0xb4(3)
    li 0, 0x0
    stb 4, 0xb5(3)
    stb 0, 0xb4(3)
    stb 0, 0xb6(3)
    stb 0, 0xb7(3)
    stb 0, 0xb8(3)
    stb 0, 0xb9(3)
    stb 0, 0xba(3)
    stw 0, 0xac(3)
    lwz 31, 0xc(1)
    addi 1, 1, 0x10
    blr

fn_8026E5F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lbz 0, 0xd64(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8026E648
    li 4, 0x38
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8026E670
    lfs 1, 0x0(31)
    li 3, 0x1
    lfs 0, 0x4(31)
    stfs 1, 0x324(30)
    stfs 0, 0x328(30)
    .4byte 0x48000030 # b .L_8026E674
L_8026E648:
    li 4, 0x13
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8026E670
    lfs 1, 0x0(31)
    li 3, 0x1
    lfs 0, 0x4(31)
    stfs 1, 0x324(30)
    stfs 0, 0x328(30)
    .4byte 0x48000008 # b .L_8026E674
L_8026E670:
    li 3, 0x0
L_8026E674:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8026E68C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 26, 0x38(1)
    mr 27, 3
    mr 28, 4
    lwz 3, 0x4(3)
    lwz 3, 0x4(3)
    bl fn_802381B8
    lwz 3, 0x4(27)
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8026E6D4
    lwz 0, 0x1c(27)
    li 4, 0x1
    add 3, 27, 0
    stb 4, 0x38(3)
    .4byte 0x48000438 # b .L_8026EB08
L_8026E6D4:
    lwz 3, 0x4(27)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_8026E708
    lwz 3, 0x4(27)
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800018 # blt .L_8026E708
    lwz 0, 0x1c(27)
    li 4, 0x1
    add 3, 27, 0
    stb 4, 0x38(3)
    .4byte 0x48000404 # b .L_8026EB08
L_8026E708:
    lwz 3, 0x4(27)
    bl fn_80240670
    clrlwi. 0, 3, 24
    .4byte 0x408203E4 # bne .L_8026EAF8
    mr 3, 27
    mr 4, 28
    bl fn_8026EB1C
    clrlwi. 0, 3, 24
    .4byte 0x40820054 # bne .L_8026E77C
    lwz 3, 0x4(27)
    bl fn_8024F5E4
    clrlwi. 0, 3, 24
    .4byte 0x40820044 # bne .L_8026E77C
    lwz 3, 0x4(27)
    bl fn_80240F28
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_8026E77C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x418203A0 # beq .L_8026EAF8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x2
    .4byte 0x4082038C # bne .L_8026EAF8
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x40820380 # bne .L_8026EAF8
L_8026E77C:
    lfs 0, 0x8(27)
    clrlwi 0, 28, 16
    cmplwi 0, 0x12
    stfs 0, 0x8(1)
    lfs 0, 0xc(27)
    stfs 0, 0xc(1)
    .4byte 0x4182000C # beq .L_8026E7A0
    cmplwi 0, 0x13
    .4byte 0x40820014 # bne .L_8026E7B0
L_8026E7A0:
    lfs 1, 0xc(1)
    .4byte 0xC002D2E0 # lfs f0, lbl_80540280@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
L_8026E7B0:
    lis 3, lbl_8046B9C8@ha
    clrlslwi 4, 28, 16, 3
    addi 0, 3, lbl_8046B9C8@l
    li 29, 0x0
    add 3, 0, 4
    subi 31, 3, 0x80
    subi 30, 3, 0x7c
L_8026E7CC:
    lfs 3, 0x8(1)
    lfs 2, 0x0(31)
    lfs 1, 0xc(1)
    lfs 0, 0x0(30)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    lwz 3, 0x4(27)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_8026E808
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8026E80C
L_8026E808:
    addi 3, 3, 0xdc
L_8026E80C:
    lfs 2, 0x8(1)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8026E854
    lfs 1, 0xc(1)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8026E854
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8026E854
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8026E854
    li 0, 0x1
L_8026E854:
    clrlwi. 0, 0, 24
    .4byte 0x41820048 # beq .L_8026E8A0
    lwz 4, 0x4(27)
    addi 3, 1, 0x8
    lwz 4, 0x3b4(4)
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x41820024 # beq .L_8026E894
    cmplwi 0, 0x3
    .4byte 0x4182001C # beq .L_8026E894
    cmplwi 0, 0xd
    .4byte 0x41820014 # beq .L_8026E894
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8026E894
    cmplwi 0, 0x3a
    .4byte 0x40820008 # bne .L_8026E898
L_8026E894:
    li 29, 0x1
L_8026E898:
    clrlwi. 0, 29, 24
    .4byte 0x4182FF30 # beq .L_8026E7CC
L_8026E8A0:
    clrlwi. 0, 29, 24
    .4byte 0x40820104 # bne .L_8026E9A8
    clrlwi 0, 28, 16
    cmplwi 0, 0x12
    .4byte 0x4182000C # beq .L_8026E8BC
    cmplwi 0, 0x13
    .4byte 0x40820250 # bne .L_8026EB08
L_8026E8BC:
    lfs 0, 0x8(27)
    stfs 0, 0x8(1)
    lfs 0, 0xc(27)
    stfs 0, 0xc(1)
L_8026E8CC:
    lfs 3, 0x8(1)
    lfs 2, 0x0(31)
    lfs 1, 0xc(1)
    lfs 0, 0x0(30)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    lwz 3, 0x4(27)
    lwz 26, 0x3b4(3)
    bl GetRoomConfigRecord
    cmpwi 26, 0x8
    .4byte 0x4080000C # bge .L_8026E908
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_8026E90C
L_8026E908:
    addi 3, 3, 0xdc
L_8026E90C:
    lfs 2, 0x8(1)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8026E954
    lfs 1, 0xc(1)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8026E954
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8026E954
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8026E954
    li 0, 0x1
L_8026E954:
    clrlwi. 0, 0, 24
    .4byte 0x418201B0 # beq .L_8026EB08
    lwz 4, 0x4(27)
    addi 3, 1, 0x8
    lwz 4, 0x3b4(4)
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x41820024 # beq .L_8026E994
    cmplwi 0, 0x3
    .4byte 0x4182001C # beq .L_8026E994
    cmplwi 0, 0xd
    .4byte 0x41820014 # beq .L_8026E994
    cmplwi 0, 0x39
    .4byte 0x4182000C # beq .L_8026E994
    cmplwi 0, 0x3a
    .4byte 0x40820008 # bne .L_8026E998
L_8026E994:
    li 29, 0x1
L_8026E998:
    clrlwi. 0, 29, 24
    .4byte 0x4182FF30 # beq .L_8026E8CC
    .4byte 0x48000008 # b .L_8026E9A8
    .4byte 0x48000164 # b .L_8026EB08
L_8026E9A8:
    lfs 1, 0x8(1)
    lis 0, 0x4330
    lfs 0, 0xc(1)
    addi 3, 1, 0x8
    fctiwz 1, 1
    stw 0, 0x18(1)
    fctiwz 0, 0
    .4byte 0xC842D2D0 # lfd f2, lbl_80540270@sda21(r0)
    stw 0, 0x28(1)
    .4byte 0xC062D2BC # lfs f3, lbl_8054025C@sda21(r0)
    stfd 1, 0x10(1)
    stfd 0, 0x20(1)
    lwz 4, 0x14(1)
    lwz 0, 0x24(1)
    clrrwi 4, 4, 4
    clrrwi 0, 0, 4
    stw 4, 0x1c(1)
    stw 0, 0x2c(1)
    lfd 1, 0x18(1)
    lfd 0, 0x28(1)
    fsubs 1, 1, 2
    fsubs 0, 0, 2
    fadds 1, 3, 1
    fadds 0, 3, 0
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 4, 0x4(27)
    lwz 4, 0x3b4(4)
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x17e
    .4byte 0x40820018 # bne .L_8026EA3C
    lfs 1, 0x8(1)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000030 # b .L_8026EA68
L_8026EA3C:
    lwz 4, 0x4(27)
    addi 3, 1, 0x8
    lwz 4, 0x3b4(4)
    bl fn_80226998
    clrlwi 0, 3, 16
    cmplwi 0, 0x17f
    .4byte 0x40820014 # bne .L_8026EA68
    lfs 1, 0x8(1)
    .4byte 0xC002D2BC # lfs f0, lbl_8054025C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
L_8026EA68:
    lwz 29, 0x4(27)
    lbz 0, 0xd64(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8026EAA4
    mr 3, 29
    li 4, 0x38
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8026EAD0
    lfs 0, 0x8(1)
    li 0, 0x1
    stfs 0, 0x324(29)
    lfs 0, 0xc(1)
    stfs 0, 0x328(29)
    .4byte 0x48000034 # b .L_8026EAD4
L_8026EAA4:
    mr 3, 29
    li 4, 0x13
    bl fn_80251AEC
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8026EAD0
    lfs 0, 0x8(1)
    li 0, 0x1
    stfs 0, 0x324(29)
    lfs 0, 0xc(1)
    stfs 0, 0x328(29)
    .4byte 0x48000008 # b .L_8026EAD4
L_8026EAD0:
    li 0, 0x0
L_8026EAD4:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_8026EB08
    clrlwi 0, 28, 16
    cmplwi 0, 0x11
    .4byte 0x40820024 # bne .L_8026EB08
    lwz 3, 0x4(27)
    li 0, 0x1
    stb 0, 0x441(3)
    .4byte 0x48000014 # b .L_8026EB08
L_8026EAF8:
    lwz 0, 0x1c(27)
    li 4, 0x1
    add 3, 27, 0
    stb 4, 0x38(3)
L_8026EB08:
    lmw 26, 0x38(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8026EB1C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x4(3)
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8026EB50
    li 3, 0x0
    .4byte 0x48000124 # b .L_8026EC70
L_8026EB50:
    clrlwi 3, 31, 16
    subi 0, 3, 0x10
    cmplwi 0, 0x7
    .4byte 0x41810110 # bgt .L_8026EC6C
    lis 3, jumptable_804A74BC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A74BC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    subfic 0, 0, 0x3
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x480000E4 # b .L_8026EC70
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x480000CC # b .L_8026EC70
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x480000B4 # b .L_8026EC70
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x480000A0 # b .L_8026EC70
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8026EBEC
    li 3, 0x1
    .4byte 0x48000088 # b .L_8026EC70
L_8026EBEC:
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000078 # b .L_8026EC70
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8026EC14
    li 3, 0x1
    .4byte 0x48000060 # b .L_8026EC70
L_8026EC14:
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000054 # b .L_8026EC70
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8026EC38
    li 3, 0x1
    .4byte 0x4800003C # b .L_8026EC70
L_8026EC38:
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x4800002C # b .L_8026EC70
    lwz 3, 0x4(30)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8026EC60
    li 3, 0x1
    .4byte 0x48000014 # b .L_8026EC70
L_8026EC60:
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000008 # b .L_8026EC70
L_8026EC6C:
    li 3, 0x0
L_8026EC70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8026EC88:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, 0x1
    stw 31, 0x3c(1)
    mr 31, 4
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    stw 0, 0xac(3)
    lwz 3, 0x4(3)
    bl GetPtrField_0x4
    cmpw 31, 3
    .4byte 0x41820018 # beq .L_8026ECD8
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
    .4byte 0x4800016C # b .L_8026EE40
L_8026ECD8:
    lwz 3, 0x4(30)
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8026ED98
    lwz 3, 0x4(30)
    lwz 0, 0x1c(30)
    lwz 4, 0x3dc(3)
    cmpw 0, 4
    .4byte 0x408200A0 # bne .L_8026ED98
    bl fn_8024FF84
    cmpwi 3, 0x0
    .4byte 0x40800094 # bge .L_8026ED98
    psq_l 3, 0x8(30), 0, 0
    lis 4, lbl_8046B998@ha
    lfs 0, 0x10(30)
    addi 3, 1, 0x8
    addi 0, 4, lbl_8046B998@l
    stfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 1, 0
    lwz 5, 0x4(30)
    lwz 4, 0x3dc(5)
    mulli 4, 4, 0xc
    add 4, 0, 4
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 1, 3, 1
    ps_add 0, 4, 0
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x3b4(5)
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x41820014 # beq .L_8026ED88
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8026ED88
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8026ED90
L_8026ED88:
    li 0, 0x1
    .4byte 0x48000010 # b .L_8026ED9C
L_8026ED90:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026ED9C
L_8026ED98:
    li 0, 0x0
L_8026ED9C:
    clrlwi. 0, 0, 24
    .4byte 0x41820090 # beq .L_8026EE30
    psq_l 2, 0x8(30), 0, 0
    lfs 1, 0x10(30)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 28, 0x4(30)
    lwz 29, 0x3dc(28)
    bl SpatialRegistry_GetBase
    addi 0, 31, 0x1
    lis 4, 0x424c
    clrlslwi 7, 0, 29, 4
    lwz 5, 0x3b4(28)
    addi 4, 4, 0x434b
    addi 6, 1, 0x20
    rlwimi 7, 29, 2, 28, 29
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 4, 0x4(30)
    mr 29, 3
    addi 3, 1, 0x20
    lwz 4, 0x3b4(4)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x41820034 # beq .L_8026EE40
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_8026EE40
    lwz 3, 0x4(30)
    stw 29, 0xd94(3)
    .4byte 0x48000014 # b .L_8026EE40
L_8026EE30:
    lwz 0, 0x1c(30)
    li 4, 0x1
    add 3, 30, 0
    stb 4, 0x38(3)
L_8026EE40:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8026EE60:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, 0x1
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 0, 0xac(3)
    lwz 3, 0x4(3)
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8026EF44
    lwz 3, 0x4(31)
    lwz 0, 0x1c(31)
    lwz 4, 0x3dc(3)
    cmpw 0, 4
    .4byte 0x408200A0 # bne .L_8026EF44
    bl fn_8024FF84
    cmpwi 3, 0x0
    .4byte 0x40800094 # bge .L_8026EF44
    psq_l 3, 0x8(31), 0, 0
    lis 4, lbl_8046B998@ha
    lfs 0, 0x10(31)
    addi 3, 1, 0x8
    addi 0, 4, lbl_8046B998@l
    stfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 1, 0
    lwz 5, 0x4(31)
    lwz 4, 0x3dc(5)
    mulli 4, 4, 0xc
    add 4, 0, 4
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 1, 3, 1
    ps_add 0, 4, 0
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x3b4(5)
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x41820014 # beq .L_8026EF34
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8026EF34
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8026EF3C
L_8026EF34:
    li 0, 0x1
    .4byte 0x48000010 # b .L_8026EF48
L_8026EF3C:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026EF48
L_8026EF44:
    li 0, 0x0
L_8026EF48:
    clrlwi. 0, 0, 24
    .4byte 0x41820088 # beq .L_8026EFD4
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 29, 0x4(31)
    lwz 30, 0x3dc(29)
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x3b4(29)
    addi 4, 4, 0x434b
    addi 6, 1, 0x20
    clrlslwi 7, 30, 30, 2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 4, 0x4(31)
    mr 30, 3
    addi 3, 1, 0x20
    lwz 4, 0x3b4(4)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x41820034 # beq .L_8026EFE4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_8026EFE4
    lwz 3, 0x4(31)
    stw 30, 0xd94(3)
    .4byte 0x48000014 # b .L_8026EFE4
L_8026EFD4:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
L_8026EFE4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8026F000:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 3, 0x4(3)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x1
    .4byte 0x40820170 # bne .L_8026F198
    li 0, 0x1
    stw 0, 0xac(31)
    lwz 3, 0x4(31)
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8026F0F4
    lwz 3, 0x4(31)
    lwz 0, 0x1c(31)
    lwz 4, 0x3dc(3)
    cmpw 0, 4
    .4byte 0x408200A0 # bne .L_8026F0F4
    bl fn_8024FF84
    cmpwi 3, 0x0
    .4byte 0x40800094 # bge .L_8026F0F4
    psq_l 3, 0x8(31), 0, 0
    lis 4, lbl_8046B998@ha
    lfs 0, 0x10(31)
    addi 3, 1, 0x8
    addi 0, 4, lbl_8046B998@l
    stfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 1, 0
    lwz 5, 0x4(31)
    lwz 4, 0x3dc(5)
    mulli 4, 4, 0xc
    add 4, 0, 4
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 1, 3, 1
    ps_add 0, 4, 0
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x3b4(5)
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x41820014 # beq .L_8026F0E4
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8026F0E4
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8026F0EC
L_8026F0E4:
    li 0, 0x1
    .4byte 0x48000010 # b .L_8026F0F8
L_8026F0EC:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026F0F8
L_8026F0F4:
    li 0, 0x0
L_8026F0F8:
    clrlwi. 0, 0, 24
    .4byte 0x41820088 # beq .L_8026F184
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 29, 0x4(31)
    lwz 30, 0x3dc(29)
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x3b4(29)
    addi 4, 4, 0x434b
    addi 6, 1, 0x20
    clrlslwi 7, 30, 30, 2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 4, 0x4(31)
    mr 30, 3
    addi 3, 1, 0x20
    lwz 4, 0x3b4(4)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x41820048 # beq .L_8026F1A8
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8026F1A8
    lwz 3, 0x4(31)
    stw 30, 0xd94(3)
    .4byte 0x48000028 # b .L_8026F1A8
L_8026F184:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000014 # b .L_8026F1A8
L_8026F198:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
L_8026F1A8:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8026F1C4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 3, 0x4(3)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x0
    .4byte 0x40820170 # bne .L_8026F35C
    li 0, 0x1
    stw 0, 0xac(31)
    lwz 3, 0x4(31)
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8026F2B8
    lwz 3, 0x4(31)
    lwz 0, 0x1c(31)
    lwz 4, 0x3dc(3)
    cmpw 0, 4
    .4byte 0x408200A0 # bne .L_8026F2B8
    bl fn_8024FF84
    cmpwi 3, 0x0
    .4byte 0x40800094 # bge .L_8026F2B8
    psq_l 3, 0x8(31), 0, 0
    lis 4, lbl_8046B998@ha
    lfs 0, 0x10(31)
    addi 3, 1, 0x8
    addi 0, 4, lbl_8046B998@l
    stfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 1, 0
    lwz 5, 0x4(31)
    lwz 4, 0x3dc(5)
    mulli 4, 4, 0xc
    add 4, 0, 4
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 1, 3, 1
    ps_add 0, 4, 0
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x3b4(5)
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x41820014 # beq .L_8026F2A8
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8026F2A8
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8026F2B0
L_8026F2A8:
    li 0, 0x1
    .4byte 0x48000010 # b .L_8026F2BC
L_8026F2B0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026F2BC
L_8026F2B8:
    li 0, 0x0
L_8026F2BC:
    clrlwi. 0, 0, 24
    .4byte 0x41820088 # beq .L_8026F348
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 29, 0x4(31)
    lwz 30, 0x3dc(29)
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x3b4(29)
    addi 4, 4, 0x434b
    addi 6, 1, 0x20
    clrlslwi 7, 30, 30, 2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 4, 0x4(31)
    mr 30, 3
    addi 3, 1, 0x20
    lwz 4, 0x3b4(4)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x41820048 # beq .L_8026F36C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8026F36C
    lwz 3, 0x4(31)
    stw 30, 0xd94(3)
    .4byte 0x48000028 # b .L_8026F36C
L_8026F348:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000014 # b .L_8026F36C
L_8026F35C:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
L_8026F36C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8026F388:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 3, 0x4(3)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x2
    .4byte 0x40820170 # bne .L_8026F520
    li 0, 0x1
    stw 0, 0xac(31)
    lwz 3, 0x4(31)
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8026F47C
    lwz 3, 0x4(31)
    lwz 0, 0x1c(31)
    lwz 4, 0x3dc(3)
    cmpw 0, 4
    .4byte 0x408200A0 # bne .L_8026F47C
    bl fn_8024FF84
    cmpwi 3, 0x0
    .4byte 0x40800094 # bge .L_8026F47C
    psq_l 3, 0x8(31), 0, 0
    lis 4, lbl_8046B998@ha
    lfs 0, 0x10(31)
    addi 3, 1, 0x8
    addi 0, 4, lbl_8046B998@l
    stfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 1, 0
    lwz 5, 0x4(31)
    lwz 4, 0x3dc(5)
    mulli 4, 4, 0xc
    add 4, 0, 4
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 1, 3, 1
    ps_add 0, 4, 0
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x3b4(5)
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x41820014 # beq .L_8026F46C
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8026F46C
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8026F474
L_8026F46C:
    li 0, 0x1
    .4byte 0x48000010 # b .L_8026F480
L_8026F474:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026F480
L_8026F47C:
    li 0, 0x0
L_8026F480:
    clrlwi. 0, 0, 24
    .4byte 0x41820088 # beq .L_8026F50C
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 29, 0x4(31)
    lwz 30, 0x3dc(29)
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x3b4(29)
    addi 4, 4, 0x434b
    addi 6, 1, 0x20
    clrlslwi 7, 30, 30, 2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 4, 0x4(31)
    mr 30, 3
    addi 3, 1, 0x20
    lwz 4, 0x3b4(4)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x41820048 # beq .L_8026F530
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8026F530
    lwz 3, 0x4(31)
    stw 30, 0xd94(3)
    .4byte 0x48000028 # b .L_8026F530
L_8026F50C:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000014 # b .L_8026F530
L_8026F520:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
L_8026F530:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8026F54C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 3, 0x4(3)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x3
    .4byte 0x40820170 # bne .L_8026F6E4
    li 0, 0x1
    stw 0, 0xac(31)
    lwz 3, 0x4(31)
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_8026F640
    lwz 3, 0x4(31)
    lwz 0, 0x1c(31)
    lwz 4, 0x3dc(3)
    cmpw 0, 4
    .4byte 0x408200A0 # bne .L_8026F640
    bl fn_8024FF84
    cmpwi 3, 0x0
    .4byte 0x40800094 # bge .L_8026F640
    psq_l 3, 0x8(31), 0, 0
    lis 4, lbl_8046B998@ha
    lfs 0, 0x10(31)
    addi 3, 1, 0x8
    addi 0, 4, lbl_8046B998@l
    stfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 1, 0
    lwz 5, 0x4(31)
    lwz 4, 0x3dc(5)
    mulli 4, 4, 0xc
    add 4, 0, 4
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    lfs 0, 0x8(4)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_add 1, 3, 1
    ps_add 0, 4, 0
    psq_st 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 4, 0x3b4(5)
    bl fn_8022461C
    clrlwi. 0, 3, 16
    .4byte 0x41820014 # beq .L_8026F630
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8026F630
    cmplwi 0, 0x50
    .4byte 0x4082000C # bne .L_8026F638
L_8026F630:
    li 0, 0x1
    .4byte 0x48000010 # b .L_8026F644
L_8026F638:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8026F644
L_8026F640:
    li 0, 0x0
L_8026F644:
    clrlwi. 0, 0, 24
    .4byte 0x41820088 # beq .L_8026F6D0
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(31)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 29, 0x4(31)
    lwz 30, 0x3dc(29)
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x3b4(29)
    addi 4, 4, 0x434b
    addi 6, 1, 0x20
    clrlslwi 7, 30, 30, 2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 4, 0x4(31)
    mr 30, 3
    addi 3, 1, 0x20
    lwz 4, 0x3b4(4)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x50
    .4byte 0x41820048 # beq .L_8026F6F4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820034 # beq .L_8026F6F4
    lwz 3, 0x4(31)
    stw 30, 0xd94(3)
    .4byte 0x48000028 # b .L_8026F6F4
L_8026F6D0:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
    .4byte 0x48000014 # b .L_8026F6F4
L_8026F6E4:
    lwz 0, 0x1c(31)
    li 4, 0x1
    add 3, 31, 0
    stb 4, 0x38(3)
L_8026F6F4:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8026F710:
    stwu 1, -0x10(1)
    li 0, 0x5
    stw 31, 0xc(1)
    li 31, 0x0
    stb 31, 0x48(3)
    stb 31, 0x30(3)
    stb 31, 0x49(3)
    stb 31, 0x31(3)
    stb 31, 0x4a(3)
    stb 31, 0x32(3)
    stb 31, 0x4b(3)
    stb 31, 0x33(3)
    stb 31, 0x4c(3)
    stb 31, 0x34(3)
    stb 31, 0x4d(3)
    stb 31, 0x35(3)
    stb 31, 0x4e(3)
    stb 31, 0x36(3)
    stb 31, 0x4f(3)
    stb 31, 0x37(3)
    stb 31, 0xb4(3)
    stb 31, 0xb6(3)
    lbz 4, 0x48(3)
    stb 4, 0x40(3)
    stb 31, 0x48(3)
    stb 31, 0x30(3)
    lbz 4, 0x49(3)
    stb 4, 0x41(3)
    stb 31, 0x49(3)
    stb 31, 0x31(3)
    lbz 4, 0x4a(3)
    stb 4, 0x42(3)
    stb 31, 0x4a(3)
    stb 31, 0x32(3)
    lbz 4, 0x4b(3)
    stb 4, 0x43(3)
    stb 31, 0x4b(3)
    stb 31, 0x33(3)
    lbz 4, 0x4c(3)
    stb 4, 0x44(3)
    stb 31, 0x4c(3)
    stb 31, 0x34(3)
    lbz 4, 0x4d(3)
    stb 4, 0x45(3)
    stb 31, 0x4d(3)
    stb 31, 0x35(3)
    lbz 4, 0x4e(3)
    stb 4, 0x46(3)
    stb 31, 0x4e(3)
    stb 31, 0x36(3)
    lbz 4, 0x4f(3)
    stb 4, 0x47(3)
    stb 31, 0x4f(3)
    stb 31, 0x37(3)
    mtctr 0
L_8026F7EC:
    lwz 4, 0x4(3)
    addi 11, 31, 0xef0
    li 12, -0x1
    addi 10, 31, 0xef4
    stwx 12, 4, 11
    addi 9, 31, 0xef8
    addi 8, 31, 0xefc
    addi 7, 31, 0xf00
    lwz 4, 0x4(3)
    addi 6, 31, 0xf04
    addi 5, 31, 0xf08
    addi 0, 31, 0xf0c
    stwx 12, 4, 10
    addi 11, 31, 0xf10
    addi 10, 31, 0xf14
    lwz 4, 0x4(3)
    stwx 12, 4, 9
    addi 9, 31, 0xf18
    lwz 4, 0x4(3)
    stwx 12, 4, 8
    addi 8, 31, 0xf1c
    lwz 4, 0x4(3)
    stwx 12, 4, 7
    addi 7, 31, 0xf20
    lwz 4, 0x4(3)
    stwx 12, 4, 6
    addi 6, 31, 0xf24
    lwz 4, 0x4(3)
    stwx 12, 4, 5
    addi 5, 31, 0xf28
    lwz 4, 0x4(3)
    stwx 12, 4, 0
    addi 0, 31, 0xf2c
    addi 31, 31, 0x40
    lwz 4, 0x4(3)
    stwx 12, 4, 11
    lwz 4, 0x4(3)
    stwx 12, 4, 10
    lwz 4, 0x4(3)
    stwx 12, 4, 9
    lwz 4, 0x4(3)
    stwx 12, 4, 8
    lwz 4, 0x4(3)
    stwx 12, 4, 7
    lwz 4, 0x4(3)
    stwx 12, 4, 6
    lwz 4, 0x4(3)
    stwx 12, 4, 5
    lwz 4, 0x4(3)
    stwx 12, 4, 0
    .4byte 0x4200FF38 # bdnz .L_8026F7EC
    lbz 4, 0xb4(3)
    li 5, 0x0
    li 0, 0x4
    stb 4, 0xb5(3)
    stb 5, 0xb4(3)
    stb 5, 0xb6(3)
    stb 5, 0xb7(3)
    stb 5, 0xb8(3)
    stb 5, 0xb9(3)
    stb 5, 0xba(3)
    stw 5, 0xac(3)
    stb 5, 0x9a(3)
    stw 5, 0x1c(3)
    mtctr 0
L_8026F8F0:
    add 4, 3, 5
    li 0, 0x0
    stb 0, 0x20(4)
    addi 5, 5, 0x1
    stb 0, 0x28(4)
    stb 0, 0x38(4)
    stb 0, 0x50(4)
    stb 0, 0x58(4)
    stb 0, 0x60(4)
    stb 0, 0x68(4)
    stb 0, 0x70(4)
    stb 0, 0x78(4)
    stb 0, 0x80(4)
    stb 0, 0x88(4)
    add 4, 3, 5
    addi 5, 5, 0x1
    stb 0, 0x20(4)
    stb 0, 0x28(4)
    stb 0, 0x38(4)
    stb 0, 0x50(4)
    stb 0, 0x58(4)
    stb 0, 0x60(4)
    stb 0, 0x68(4)
    stb 0, 0x70(4)
    stb 0, 0x78(4)
    stb 0, 0x80(4)
    stb 0, 0x88(4)
    .4byte 0x4200FF94 # bdnz .L_8026F8F0
    stb 0, 0x98(3)
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stb 0, 0x99(3)
    stw 0, 0xa0(3)
    stw 0, 0xa4(3)
    stw 0, 0xa8(3)
    stw 0, 0xbc(3)
    stw 0, 0xb0(3)
    stw 0, 0xac(3)
    stfs 0, 0x14(3)
    stfs 0, 0x18(3)
    lwz 31, 0xc(1)
    addi 1, 1, 0x10
    blr

fn_8026F998:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820024 # beq .L_8026F9D0
    lis 5, lbl_804A71A8@ha
    extsh. 0, 4
    addi 4, 5, lbl_804A71A8@l
    li 0, 0x0
    stw 4, 0x0(31)
    stw 0, 0x4(31)
    .4byte 0x40810008 # ble .L_8026F9D0
    bl dtor_80084580
L_8026F9D0:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8026F9E8:
    lis 5, lbl_804A71A8@ha
    addi 0, 5, lbl_804A71A8@l
    stw 0, 0x0(3)
    stw 4, 0x4(3)
    blr

fn_8026F9FC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CFA68@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CFA68@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FA4C
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
L_8026FA4C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FA84
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
L_8026FA84:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FABC
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
L_8026FABC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FAF4
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
L_8026FAF4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FB2C
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
L_8026FB2C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FB64
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
L_8026FB64:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FB9C
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
L_8026FB9C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FBD4
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
L_8026FBD4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8026FC0C
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
L_8026FC0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8026FC20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8026FC50
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_8023A1A4
    .4byte 0x48000008 # b .L_8026FC54
L_8026FC50:
    lwz 3, 0xbac(31)
L_8026FC54:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8026F9FC

