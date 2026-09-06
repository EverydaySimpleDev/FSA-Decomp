# Fresh project-wide gap hunt continuation: 26 functions, 10,620 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000B81C
etb_8000B81C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B81C, 8

.global etb_8000B824
etb_8000B824:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B824, 8

.global etb_8000B82C
etb_8000B82C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B82C, 8

.global etb_8000B834
etb_8000B834:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B834, 8

.global etb_8000B83C
etb_8000B83C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B83C, 8

.global etb_8000B844
etb_8000B844:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B844, 8

.global etb_8000B84C
etb_8000B84C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000B84C, 8

.global etb_8000B854
etb_8000B854:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000B854, 8

.global etb_8000B85C
etb_8000B85C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B85C, 8

.global etb_8000B864
etb_8000B864:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B864, 8

.global etb_8000B86C
etb_8000B86C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000B86C, 8

.global etb_8000B874
etb_8000B874:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000B874, 8

.global etb_8000B87C
etb_8000B87C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000B87C, 8

.global etb_8000B884
etb_8000B884:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B884, 8

.global etb_8000B88C
etb_8000B88C:
    .4byte 0x114A0000
    .4byte 0x00000000
.size etb_8000B88C, 8

.global etb_8000B894
etb_8000B894:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000B894, 8

.global etb_8000B89C
etb_8000B89C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B89C, 8

.global etb_8000B8A4
etb_8000B8A4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000B8A4, 8

.global etb_8000B8AC
etb_8000B8AC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B8AC, 8

.global etb_8000B8B4
etb_8000B8B4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B8B4, 8

.section extabindex, "a"
.balign 4
.global eti_80019DEC
eti_80019DEC:
    .4byte fn_802577E0
    .4byte 0x0000007C
    .4byte etb_8000B81C
.size eti_80019DEC, 12

.global eti_80019DF8
eti_80019DF8:
    .4byte fn_8025785C
    .4byte 0x00000558
    .4byte etb_8000B824
.size eti_80019DF8, 12

.global eti_80019E04
eti_80019E04:
    .4byte fn_80257DB4
    .4byte 0x00000240
    .4byte etb_8000B82C
.size eti_80019E04, 12

.global eti_80019E10
eti_80019E10:
    .4byte fn_80257FF4
    .4byte 0x0000007C
    .4byte etb_8000B834
.size eti_80019E10, 12

.global eti_80019E1C
eti_80019E1C:
    .4byte fn_80258070
    .4byte 0x00000070
    .4byte etb_8000B83C
.size eti_80019E1C, 12

.global eti_80019E28
eti_80019E28:
    .4byte fn_802580E0
    .4byte 0x000000BC
    .4byte etb_8000B844
.size eti_80019E28, 12

.global eti_80019E34
eti_80019E34:
    .4byte fn_8025819C
    .4byte 0x000000C0
    .4byte etb_8000B84C
.size eti_80019E34, 12

.global eti_80019E40
eti_80019E40:
    .4byte fn_8025825C
    .4byte 0x00000128
    .4byte etb_8000B854
.size eti_80019E40, 12

.global eti_80019E4C
eti_80019E4C:
    .4byte fn_80258384
    .4byte 0x000000EC
    .4byte etb_8000B85C
.size eti_80019E4C, 12

.global eti_80019E58
eti_80019E58:
    .4byte fn_80258470
    .4byte 0x000000AC
    .4byte etb_8000B864
.size eti_80019E58, 12

.global eti_80019E64
eti_80019E64:
    .4byte fn_8025851C
    .4byte 0x000000D8
    .4byte etb_8000B86C
.size eti_80019E64, 12

.global eti_80019E70
eti_80019E70:
    .4byte fn_802585F4
    .4byte 0x000000D8
    .4byte etb_8000B874
.size eti_80019E70, 12

.global eti_80019E7C
eti_80019E7C:
    .4byte fn_802586D0
    .4byte 0x000001B0
    .4byte etb_8000B87C
.size eti_80019E7C, 12

.global eti_80019E88
eti_80019E88:
    .4byte fn_80258890
    .4byte 0x00000318
    .4byte etb_8000B884
.size eti_80019E88, 12

.global eti_80019E94
eti_80019E94:
    .4byte fn_80258BE8
    .4byte 0x00000A78
    .4byte etb_8000B88C
.size eti_80019E94, 12

.global eti_80019EA0
eti_80019EA0:
    .4byte fn_80259660
    .4byte 0x00000118
    .4byte etb_8000B894
.size eti_80019EA0, 12

.global eti_80019EAC
eti_80019EAC:
    .4byte fn_80259784
    .4byte 0x000000AC
    .4byte etb_8000B89C
.size eti_80019EAC, 12

.global eti_80019EB8
eti_80019EB8:
    .4byte fn_80259830
    .4byte 0x0000081C
    .4byte etb_8000B8A4
.size eti_80019EB8, 12

.global eti_80019EC4
eti_80019EC4:
    .4byte fn_8025A04C
    .4byte 0x00000064
    .4byte etb_8000B8AC
.size eti_80019EC4, 12

.global eti_80019ED0
eti_80019ED0:
    .4byte fn_8025A0B0
    .4byte 0x000000AC
    .4byte etb_8000B8B4
.size eti_80019ED0, 12

.text
.balign 4
.global fn_802577E0
.global fn_8025785C
.global fn_80257DB4
.global fn_80257FF4
.global fn_80258070
.global fn_802580E0
.global fn_8025819C
.global fn_8025825C
.global fn_80258384
.global fn_80258470
.global fn_8025851C
.global fn_802585F4
.global fn_802586CC
.global fn_802586D0
.global fn_80258880
.global fn_8025888C
.global fn_80258890
.global fn_80258BA8
.global fn_80258BBC
.global fn_80258BE8
.global fn_80259660
.global fn_80259778
.global fn_80259784
.global fn_80259830
.global fn_8025A04C
.global fn_8025A0B0

fn_802577E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80270C88
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257808
    li 3, 0x0
    .4byte 0x48000044 # b .L_80257848
L_80257808:
    mr 3, 31
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257820
    li 3, 0x0
    .4byte 0x4800002C # b .L_80257848
L_80257820:
    lwz 0, 0x1240(31)
    cmpwi 0, 0x3f
    .4byte 0x4182000C # beq .L_80257834
    cmpwi 0, 0xc
    .4byte 0x4082000C # bne .L_8025783C
L_80257834:
    li 3, 0x0
    .4byte 0x48000010 # b .L_80257848
L_8025783C:
    mr 3, 31
    li 4, 0x3f
    bl fn_80251AEC
L_80257848:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025785C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lwz 3, 0xb74(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80257890
    subi 0, 3, 0x1
    stw 0, 0xb74(30)
L_80257890:
    lwz 3, 0x4(30)
    bl fn_8022B334
    clrlwi. 0, 3, 24
    .4byte 0x418204F0 # beq .L_80257D8C
    mr 3, 30
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_802578EC
    mr 3, 30
    bl fn_802416C4
    mr 31, 3
    mr 3, 30
    bl Player_GetLinkTargetIndex
    bl fn_802373EC
    cmpw 3, 31
    .4byte 0x41820020 # beq .L_802578EC
    mr 3, 30
    bl Player_GetLinkTargetIndex
    bl fn_802373EC
    mr 4, 3
    mr 3, 30
    li 5, 0x1
    bl fn_80241618
L_802578EC:
    lwz 3, 0x4(30)
    bl fn_8022C310
    clrlwi. 0, 3, 24
    .4byte 0x41820494 # beq .L_80257D8C
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x1
    .4byte 0x40820014 # bne .L_8025791C
    mr 3, 30
    li 4, 0x39
    bl fn_80251AEC
    .4byte 0x48000474 # b .L_80257D8C
L_8025791C:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x2
    .4byte 0x40820014 # bne .L_8025793C
    mr 3, 30
    li 4, 0x48
    bl fn_80251AEC
    .4byte 0x48000454 # b .L_80257D8C
L_8025793C:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x3
    .4byte 0x4082005C # bne .L_802579A4
    lwz 0, 0xb18(30)
    cmpwi 0, 0x0
    .4byte 0x40800438 # bge .L_80257D8C
    lwz 0, 0xb00(30)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_8025796C
    li 3, 0x1
L_8025796C:
    lwz 0, 0xb04(30)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_8025797C
    addi 3, 3, 0x1
L_8025797C:
    lwz 0, 0xb08(30)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_8025798C
    addi 3, 3, 0x1
L_8025798C:
    cmpwi 3, 0x3
    .4byte 0x408003FC # bge .L_80257D8C
    mr 3, 30
    li 4, 0x3d
    bl fn_80251AEC
    .4byte 0x480003EC # b .L_80257D8C
L_802579A4:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x4
    .4byte 0x4082006C # bne .L_80257A1C
    lwz 0, 0xb18(30)
    cmpwi 0, 0x0
    .4byte 0x408003D0 # bge .L_80257D8C
    lwz 0, 0xb74(30)
    cmpwi 0, 0x0
    .4byte 0x418103C4 # bgt .L_80257D8C
    bl GetSessionFlag_0x6f
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80257A0C
    mr 3, 30
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_802579F8
    mr 3, 30
    bl fn_802486A0
    cmpwi 3, 0x4
    .4byte 0x40820398 # bne .L_80257D8C
L_802579F8:
    lwz 0, 0x4(30)
    .4byte 0x386D8FF8 # li r3, lbl_8053ABB8@sda21
    lbzx 0, 3, 0
    cmplwi 0, 0x0
    .4byte 0x40820384 # bne .L_80257D8C
L_80257A0C:
    mr 3, 30
    li 4, 0x3a
    bl fn_80251AEC
    .4byte 0x48000374 # b .L_80257D8C
L_80257A1C:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x5
    .4byte 0x40820014 # bne .L_80257A3C
    mr 3, 30
    li 4, 0x3c
    bl fn_80251AEC
    .4byte 0x48000354 # b .L_80257D8C
L_80257A3C:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x6
    .4byte 0x40820080 # bne .L_80257AC8
    mr 3, 30
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800014 # blt .L_80257A6C
    mr 3, 30
    li 4, 0x45
    bl fn_80251AEC
    .4byte 0x48000324 # b .L_80257D8C
L_80257A6C:
    mr 3, 30
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x40800040 # bge .L_80257AB8
    lwz 0, 0xb1c(30)
    li 3, 0x0
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80257A90
    li 3, 0x1
L_80257A90:
    lwz 0, 0xb20(30)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80257AA0
    addi 3, 3, 0x1
L_80257AA0:
    lwz 0, 0xb24(30)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80257AB0
    addi 3, 3, 0x1
L_80257AB0:
    cmpwi 3, 0x3
    .4byte 0x408002D8 # bge .L_80257D8C
L_80257AB8:
    mr 3, 30
    li 4, 0x44
    bl fn_80251AEC
    .4byte 0x480002C8 # b .L_80257D8C
L_80257AC8:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x7
    .4byte 0x40820118 # bne .L_80257BEC
    mr 3, 30
    bl fn_8025F500
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80257B08
    bl SpatialRegistry_GetBase
    lwz 4, 0xd68(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80257B08
    lwz 0, 0x1a4(3)
    cmpwi 0, 0x0
    .4byte 0x40820288 # bne .L_80257D8C
L_80257B08:
    li 31, 0x0
L_80257B0C:
    mr 3, 30
    mr 4, 31
    bl fn_80243194
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80257B34
    mr 3, 31
    bl fn_8023EEB4
    subis 0, 3, 0x5243
    cmplwi 0, 0x4b32
    .4byte 0x4182025C # beq .L_80257D8C
L_80257B34:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFD0 # blt .L_80257B0C
    lwz 28, 0x3b4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80257BAC
    mr 3, 30
    li 4, 0x1
    bl fn_802518AC
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_80257BBC
    mr 3, 30
    addi 5, 1, 0x14
    li 4, 0x2
    bl fn_8024B298
    lfs 1, 0x18(1)
    addi 3, 1, 0x14
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x18(1)
    lwz 4, 0x3b4(30)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_80257BBC
    .4byte 0x480001E4 # b .L_80257D8C
L_80257BAC:
    lfs 1, 0x10(30)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418101D4 # bgt .L_80257D8C
L_80257BBC:
    mr 3, 30
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80257BDC
    mr 3, 30
    li 4, 0x14
    bl fn_80251AEC
    .4byte 0x480001B4 # b .L_80257D8C
L_80257BDC:
    mr 3, 30
    li 4, 0x46
    bl fn_80251AEC
    .4byte 0x480001A4 # b .L_80257D8C
L_80257BEC:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x8
    .4byte 0x40820130 # bne .L_80257D28
    li 28, 0x0
    mr 31, 30
L_80257C04:
    lwz 0, 0xb30(31)
    cmpwi 0, 0x0
    .4byte 0x40800108 # bge .L_80257D14
    lwz 0, 0x3dc(30)
    lis 4, lbl_8046B220@ha
    addi 3, 1, 0x8
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    mulli 5, 0, 0xc
    addi 0, 4, lbl_8046B220@l
    add 4, 0, 5
    lfs 3, 0x0(4)
    lfs 2, 0x4(4)
    lfs 1, 0x8(4)
    stfs 3, 0x8(1)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    psq_l 3, 0x0(3), 0, 0
    psq_l 1, 0x8(30), 0, 0
    psq_l 2, 0x8(3), 1, 0
    ps_add 1, 3, 1
    psq_st 1, 0x0(3), 0, 0
    psq_l 1, 0x10(30), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x8(3), 1, 0
    stfs 0, 0x10(1)
    lwz 4, 0x3b4(30)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xe
    .4byte 0x41820114 # beq .L_80257D8C
    mr 3, 30
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800030 # blt .L_80257CB8
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x3b4(30)
    lwz 9, 0x4(30)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x8
    li 7, 0x8
    li 8, -0x1
    bl fn_801F9484
    mr 29, 3
    .4byte 0x4800002C # b .L_80257CE0
L_80257CB8:
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x3b4(30)
    lwz 9, 0x4(30)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    bl fn_801F9484
    mr 29, 3
L_80257CE0:
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80257D14
    slwi 0, 28, 2
    lis 4, 0x2
    add 5, 30, 0
    mr 3, 30
    stw 29, 0xb30(5)
    addi 4, 4, 0x6
    bl fn_8024F0E8
    .4byte 0x4800007C # b .L_80257D8C
L_80257D14:
    addi 28, 28, 0x1
    addi 31, 31, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FEE4 # blt .L_80257C04
    .4byte 0x48000068 # b .L_80257D8C
L_80257D28:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0x9
    .4byte 0x40820014 # bne .L_80257D48
    mr 3, 30
    li 4, 0x47
    bl fn_80251AEC
    .4byte 0x48000048 # b .L_80257D8C
L_80257D48:
    mr 3, 30
    bl fn_802416C4
    cmpwi 3, 0xa
    .4byte 0x40820020 # bne .L_80257D74
    lwz 0, 0xb18(30)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_80257D8C
    mr 3, 30
    li 4, 0x3b
    bl fn_80251AEC
    .4byte 0x4800001C # b .L_80257D8C
L_80257D74:
    mr 3, 30
    bl fn_80246228
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257D8C
    li 0, 0x1
    stb 0, 0x1200(30)
L_80257D8C:
    li 0, 0x0
    stb 0, 0x1174(30)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80257DB4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x1174(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80257DDC
    li 3, 0x0
    .4byte 0x48000208 # b .L_80257FE0
L_80257DDC:
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80257E04
    mr 3, 31
    bl Player_GetLinkTargetIndex
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257E04
    li 3, 0x0
    .4byte 0x480001E0 # b .L_80257FE0
L_80257E04:
    mr 3, 31
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257E1C
    li 3, 0x0
    .4byte 0x480001C8 # b .L_80257FE0
L_80257E1C:
    mr 3, 31
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257E34
    li 3, 0x0
    .4byte 0x480001B0 # b .L_80257FE0
L_80257E34:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80257E5C
    mr 3, 31
    bl fn_802416C4
    cmpwi 3, 0x7
    .4byte 0x4182000C # beq .L_80257E5C
    li 3, 0x0
    .4byte 0x48000188 # b .L_80257FE0
L_80257E5C:
    mr 3, 31
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257E74
    li 3, 0x0
    .4byte 0x48000170 # b .L_80257FE0
L_80257E74:
    mr 3, 31
    bl fn_802412A4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257E8C
    li 3, 0x0
    .4byte 0x48000158 # b .L_80257FE0
L_80257E8C:
    mr 3, 31
    bl fn_8024C448
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257EA4
    li 3, 0x0
    .4byte 0x48000140 # b .L_80257FE0
L_80257EA4:
    mr 3, 31
    bl fn_80241230
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257EBC
    li 3, 0x0
    .4byte 0x48000128 # b .L_80257FE0
L_80257EBC:
    mr 3, 31
    bl fn_80250D30
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257ED4
    li 3, 0x0
    .4byte 0x48000110 # b .L_80257FE0
L_80257ED4:
    mr 3, 31
    bl fn_802411C4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257EEC
    li 3, 0x0
    .4byte 0x480000F8 # b .L_80257FE0
L_80257EEC:
    mr 3, 31
    bl fn_80240B70
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257F04
    li 3, 0x0
    .4byte 0x480000E0 # b .L_80257FE0
L_80257F04:
    mr 3, 31
    bl fn_80240B5C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257F1C
    li 3, 0x0
    .4byte 0x480000C8 # b .L_80257FE0
L_80257F1C:
    mr 3, 31
    bl fn_80240B84
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257F34
    li 3, 0x0
    .4byte 0x480000B0 # b .L_80257FE0
L_80257F34:
    mr 3, 31
    bl Player_GetField_0xce8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257F4C
    li 3, 0x0
    .4byte 0x48000098 # b .L_80257FE0
L_80257F4C:
    mr 3, 31
    bl fn_80240D64
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257F64
    li 3, 0x0
    .4byte 0x48000080 # b .L_80257FE0
L_80257F64:
    mr 3, 31
    bl fn_80240DAC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257F7C
    li 3, 0x0
    .4byte 0x48000068 # b .L_80257FE0
L_80257F7C:
    lfs 1, 0x10(31)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80257F94
    li 3, 0x0
    .4byte 0x48000050 # b .L_80257FE0
L_80257F94:
    mr 3, 31
    bl Player_CheckField_0xc9c
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257FAC
    li 3, 0x0
    .4byte 0x48000038 # b .L_80257FE0
L_80257FAC:
    mr 3, 31
    bl fn_802412C4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80257FC4
    li 3, 0x0
    .4byte 0x48000020 # b .L_80257FE0
L_80257FC4:
    lwz 0, 0xd74(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80257FD8
    li 3, 0x0
    .4byte 0x4800000C # b .L_80257FE0
L_80257FD8:
    lwz 0, 0xd3c(31)
    srwi 3, 0, 31
L_80257FE0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80257FF4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, -0x1
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    li 28, 0x0
L_8025801C:
    lwz 29, 0xb30(30)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_80258040
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820008 # bne .L_80258040
    stw 31, 0xb30(30)
L_80258040:
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FFD0 # blt .L_8025801C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80258070:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0xb2c(3)
    cmpwi 31, 0x0
    .4byte 0x41800038 # blt .L_802580C8
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_802580B4
    li 0, -0x1
    stw 0, 0xb2c(30)
    .4byte 0x48000018 # b .L_802580C8
L_802580B4:
    bl fn_8030EA0C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802580C8
    li 0, -0x1
    stw 0, 0xb2c(30)
L_802580C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802580E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80258108
    .4byte 0xC042D124 # lfs f2, lbl_805400C4@sda21(r0)
    .4byte 0x48000038 # b .L_8025813C
L_80258108:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80258138
    mr 3, 31
    bl fn_802416C4
    cmpwi 3, 0x2
    .4byte 0x4082000C # bne .L_80258130
    .4byte 0xC042D12C # lfs f2, lbl_805400CC@sda21(r0)
    .4byte 0x48000010 # b .L_8025813C
L_80258130:
    .4byte 0xC042D124 # lfs f2, lbl_805400C4@sda21(r0)
    .4byte 0x48000008 # b .L_8025813C
L_80258138:
    .4byte 0xC042D130 # lfs f2, lbl_805400D0@sda21(r0)
L_8025813C:
    lfs 1, 0xb90(31)
    fcmpo cr0, 1, 2
    .4byte 0x40810024 # ble .L_80258168
    .4byte 0xC002D134 # lfs f0, lbl_805400D4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xb90(31)
    lfs 0, 0xb90(31)
    fcmpo cr0, 0, 2
    .4byte 0x4080002C # bge .L_80258188
    stfs 2, 0xb90(31)
    .4byte 0x48000024 # b .L_80258188
L_80258168:
    .4byte 0x40800020 # bge .L_80258188
    .4byte 0xC002D134 # lfs f0, lbl_805400D4@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xb90(31)
    lfs 0, 0xb90(31)
    fcmpo cr0, 0, 2
    .4byte 0x40810008 # ble .L_80258188
    stfs 2, 0xb90(31)
L_80258188:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025819C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0xb3c(3)
    cmpwi 31, 0x0
    .4byte 0x41800088 # blt .L_80258244
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_802581E4
    li 0, -0x1
    stw 0, 0xb3c(30)
    stw 0, 0xb70(30)
    .4byte 0x48000064 # b .L_80258244
L_802581E4:
    lfs 1, 0xc(3)
    lfs 2, 0x10(3)
    lwz 0, 0x4(3)
    stw 0, 0xb70(30)
    lfs 0, 0x60(3)
    stfs 0, 0x5a0(30)
    lfs 0, 0x64(3)
    stfs 0, 0x5a4(30)
    lfs 0, 0x68(3)
    stfs 0, 0x5a8(30)
    lfs 0, 0x6c(3)
    stfs 0, 0x5ac(30)
    lfs 0, 0x5a0(30)
    fadds 0, 0, 1
    stfs 0, 0x5a0(30)
    lfs 0, 0x5a4(30)
    fadds 0, 0, 2
    stfs 0, 0x5a4(30)
    lfs 0, 0x5a8(30)
    fadds 0, 0, 1
    stfs 0, 0x5a8(30)
    lfs 0, 0x5ac(30)
    fadds 0, 0, 2
    stfs 0, 0x5ac(30)
L_80258244:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025825C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0xb38(3)
    cmpwi 31, 0x0
    .4byte 0x40800010 # bge .L_80258294
    li 0, 0x0
    stb 0, 0xb68(30)
    .4byte 0x480000D4 # b .L_80258364
L_80258294:
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_802582C0
    li 3, 0x0
    li 0, -0x1
    stb 3, 0xb68(30)
    stw 0, 0xb38(30)
    stw 0, 0xb6c(30)
    .4byte 0x480000A8 # b .L_80258364
L_802582C0:
    psq_l 3, 0x3c(3), 0, 0
    lis 4, lbl_80539D44@ha
    lfs 31, 0x44(3)
    ps_mul 3, 3, 3
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_802582FC
    li 0, 0x0
    stb 0, 0xb68(30)
    .4byte 0x4800000C # b .L_80258304
L_802582FC:
    li 0, 0x1
    stb 0, 0xb68(30)
L_80258304:
    lfs 1, 0xc(3)
    lfs 2, 0x10(3)
    lwz 0, 0x4(3)
    stw 0, 0xb6c(30)
    lfs 0, 0x60(3)
    stfs 0, 0x590(30)
    lfs 0, 0x64(3)
    stfs 0, 0x594(30)
    lfs 0, 0x68(3)
    stfs 0, 0x598(30)
    lfs 0, 0x6c(3)
    stfs 0, 0x59c(30)
    lfs 0, 0x590(30)
    fadds 0, 0, 1
    stfs 0, 0x590(30)
    lfs 0, 0x594(30)
    fadds 0, 0, 2
    stfs 0, 0x594(30)
    lfs 0, 0x598(30)
    fadds 0, 0, 1
    stfs 0, 0x598(30)
    lfs 0, 0x59c(30)
    fadds 0, 0, 2
    stfs 0, 0x59c(30)
L_80258364:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80258384:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    li 28, 0x0
L_802583AC:
    lwz 29, 0xb1c(31)
    cmpwi 29, 0x0
    .4byte 0x41800088 # blt .L_8025843C
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_802583DC
    li 0, -0x1
    stw 0, 0xb1c(31)
    stw 0, 0xb5c(31)
    .4byte 0x48000064 # b .L_8025843C
L_802583DC:
    lfs 1, 0xc(3)
    lfs 2, 0x10(3)
    lwz 0, 0x4(3)
    stw 0, 0xb5c(31)
    lfs 0, 0x60(3)
    stfs 0, 0x550(30)
    lfs 0, 0x64(3)
    stfs 0, 0x554(30)
    lfs 0, 0x68(3)
    stfs 0, 0x558(30)
    lfs 0, 0x6c(3)
    stfs 0, 0x55c(30)
    lfs 0, 0x550(30)
    fadds 0, 0, 1
    stfs 0, 0x550(30)
    lfs 0, 0x554(30)
    fadds 0, 0, 2
    stfs 0, 0x554(30)
    lfs 0, 0x558(30)
    fadds 0, 0, 1
    stfs 0, 0x558(30)
    lfs 0, 0x55c(30)
    fadds 0, 0, 2
    stfs 0, 0x55c(30)
L_8025843C:
    addi 28, 28, 0x1
    addi 30, 30, 0x10
    cmpwi 28, 0x3
    addi 31, 31, 0x4
    .4byte 0x4180FF60 # blt .L_802583AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80258470:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    lwz 4, 0xb18(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_802584A8
    li 0, -0x1
    stw 0, 0xb18(31)
    stw 0, 0xb58(31)
    .4byte 0x48000064 # b .L_80258508
L_802584A8:
    lfs 1, 0xc(3)
    lfs 2, 0x10(3)
    lwz 0, 0x4(3)
    stw 0, 0xb58(31)
    lfs 0, 0x60(3)
    stfs 0, 0x540(31)
    lfs 0, 0x64(3)
    stfs 0, 0x544(31)
    lfs 0, 0x68(3)
    stfs 0, 0x548(31)
    lfs 0, 0x6c(3)
    stfs 0, 0x54c(31)
    lfs 0, 0x540(31)
    fadds 0, 0, 1
    stfs 0, 0x540(31)
    lfs 0, 0x544(31)
    fadds 0, 0, 2
    stfs 0, 0x544(31)
    lfs 0, 0x548(31)
    fadds 0, 0, 1
    stfs 0, 0x548(31)
    lfs 0, 0x54c(31)
    fadds 0, 0, 2
    stfs 0, 0x54c(31)
L_80258508:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025851C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
L_80258540:
    bl SpatialRegistry_GetBase
    lwz 4, 0xb0c(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_80258564
    li 0, -0x1
    stw 0, 0xb0c(31)
    stw 0, 0xb4c(31)
    .4byte 0x48000064 # b .L_802585C4
L_80258564:
    lfs 1, 0xc(3)
    lfs 2, 0x10(3)
    lwz 0, 0x4(3)
    stw 0, 0xb4c(31)
    lfs 0, 0x60(3)
    stfs 0, 0x510(30)
    lfs 0, 0x64(3)
    stfs 0, 0x514(30)
    lfs 0, 0x68(3)
    stfs 0, 0x518(30)
    lfs 0, 0x6c(3)
    stfs 0, 0x51c(30)
    lfs 0, 0x510(30)
    fadds 0, 0, 1
    stfs 0, 0x510(30)
    lfs 0, 0x514(30)
    fadds 0, 0, 2
    stfs 0, 0x514(30)
    lfs 0, 0x518(30)
    fadds 0, 0, 1
    stfs 0, 0x518(30)
    lfs 0, 0x51c(30)
    fadds 0, 0, 2
    stfs 0, 0x51c(30)
L_802585C4:
    addi 29, 29, 0x1
    addi 30, 30, 0x10
    cmpwi 29, 0x3
    addi 31, 31, 0x4
    .4byte 0x4180FF6C # blt .L_80258540
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802585F4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    li 29, 0x0
L_80258618:
    bl SpatialRegistry_GetBase
    lwz 4, 0xb00(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820014 # bne .L_8025863C
    li 0, -0x1
    stw 0, 0xb00(31)
    stw 0, 0xb40(31)
    .4byte 0x48000064 # b .L_8025869C
L_8025863C:
    lfs 1, 0xc(3)
    lfs 2, 0x10(3)
    lwz 0, 0x4(3)
    stw 0, 0xb40(31)
    lfs 0, 0x60(3)
    stfs 0, 0x4e0(30)
    lfs 0, 0x64(3)
    stfs 0, 0x4e4(30)
    lfs 0, 0x68(3)
    stfs 0, 0x4e8(30)
    lfs 0, 0x6c(3)
    stfs 0, 0x4ec(30)
    lfs 0, 0x4e0(30)
    fadds 0, 0, 1
    stfs 0, 0x4e0(30)
    lfs 0, 0x4e4(30)
    fadds 0, 0, 2
    stfs 0, 0x4e4(30)
    lfs 0, 0x4e8(30)
    fadds 0, 0, 1
    stfs 0, 0x4e8(30)
    lfs 0, 0x4ec(30)
    fadds 0, 0, 2
    stfs 0, 0x4ec(30)
L_8025869C:
    addi 29, 29, 0x1
    addi 30, 30, 0x10
    cmpwi 29, 0x3
    addi 31, 31, 0x4
    .4byte 0x4180FF6C # blt .L_80258618
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802586CC:
    blr

fn_802586D0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lbz 0, 0x3fa(3)
    cmplwi 0, 0x2
    .4byte 0x40800010 # bge .L_80258704
    li 0, 0x0
    stb 0, 0x3fb(31)
    .4byte 0x4800003C # b .L_8025873C
L_80258704:
    cmplwi 0, 0x6
    .4byte 0x40800010 # bge .L_80258718
    li 0, 0x1
    stb 0, 0x3fb(31)
    .4byte 0x48000028 # b .L_8025873C
L_80258718:
    cmplwi 0, 0x8
    .4byte 0x40800010 # bge .L_8025872C
    li 0, 0x0
    stb 0, 0x3fb(31)
    .4byte 0x48000014 # b .L_8025873C
L_8025872C:
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x3fb(31)
    bl fn_80251AEC
L_8025873C:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x2
    .4byte 0x4082010C # bne .L_80258850
    mr 3, 31
    li 4, 0x0
    bl fn_80247594
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_80258850
    lwz 0, 0xb3c(31)
    cmpwi 0, 0x0
    .4byte 0x408000EC # bge .L_80258850
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802587CC
    .4byte 0x40800014 # bge .L_80258798
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802587A4
    .4byte 0x40800028 # bge .L_802587B8
    .4byte 0x4800005C # b .L_802587F0
L_80258798:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_802587F0
    .4byte 0x48000040 # b .L_802587E0
L_802587A4:
    lfs 1, 0xc(1)
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800003C # b .L_802587F0
L_802587B8:
    lfs 1, 0xc(1)
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000028 # b .L_802587F0
L_802587CC:
    lfs 1, 0x8(1)
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000014 # b .L_802587F0
L_802587E0:
    lfs 1, 0x8(1)
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
L_802587F0:
    lwz 29, 0x4(31)
    mr 3, 31
    bl fn_802415CC
    lwz 0, 0x3dc(31)
    clrlslwi 0, 0, 30, 4
    rlwimi 0, 3, 12, 0, 19
    rlwimi 0, 29, 0, 30, 31
    ori 30, 0, 0x140
    bl SpatialRegistry_GetBase
    lis 4, 0x4649
    lwz 5, 0x3b4(31)
    mr 7, 30
    mr 9, 29
    addi 4, 4, 0x5245
    addi 6, 1, 0x8
    li 8, -0x1
    bl fn_801F9484
    mr 30, 3
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80258850
    stw 30, 0xb3c(31)
L_80258850:
    lbz 4, 0x3fa(31)
    mr 3, 31
    addi 0, 4, 0x1
    stb 0, 0x3fa(31)
    bl fn_80268B3C
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80258880:
    li 0, 0x0
    stb 0, 0x458(3)
    blr

fn_8025888C:
    blr

fn_80258890:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    psq_l 2, 0x8(31), 0, 0
    lfs 1, 0x10(3)
    stfs 1, 0x10(1)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_80258910
    .4byte 0x40800014 # bge .L_802588DC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802588E8
    .4byte 0x40800028 # bge .L_802588FC
    .4byte 0x4800005C # b .L_80258934
L_802588DC:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_80258934
    .4byte 0x48000040 # b .L_80258924
L_802588E8:
    lfs 1, 0x8(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x4800003C # b .L_80258934
L_802588FC:
    lfs 1, 0x8(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000028 # b .L_80258934
L_80258910:
    lfs 1, 0xc(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_80258934
L_80258924:
    lfs 1, 0xc(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_80258934:
    lbz 0, 0x3fd(31)
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80258998
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x10
    .4byte 0x40800010 # bge .L_80258958
    li 0, 0x4
    stb 0, 0x3fb(31)
    .4byte 0x4800022C # b .L_80258B80
L_80258958:
    cmplwi 0, 0x13
    .4byte 0x40800010 # bge .L_8025896C
    li 0, 0x5
    stb 0, 0x3fb(31)
    .4byte 0x48000218 # b .L_80258B80
L_8025896C:
    cmplwi 0, 0x16
    .4byte 0x40800010 # bge .L_80258980
    li 0, 0x6
    stb 0, 0x3fb(31)
    .4byte 0x48000204 # b .L_80258B80
L_80258980:
    li 0, 0x6
    mr 3, 31
    stb 0, 0x3fb(31)
    li 4, 0x0
    bl fn_80251AEC
    .4byte 0x480001EC # b .L_80258B80
L_80258998:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0xc
    .4byte 0x40800010 # bge .L_802589B0
    li 0, 0x0
    stb 0, 0x3fb(31)
    .4byte 0x48000054 # b .L_80258A00
L_802589B0:
    cmplwi 0, 0x1c
    .4byte 0x40800010 # bge .L_802589C4
    li 0, 0x1
    stb 0, 0x3fb(31)
    .4byte 0x48000040 # b .L_80258A00
L_802589C4:
    cmplwi 0, 0x20
    .4byte 0x40800010 # bge .L_802589D8
    li 0, 0x2
    stb 0, 0x3fb(31)
    .4byte 0x4800002C # b .L_80258A00
L_802589D8:
    cmplwi 0, 0x28
    .4byte 0x40800010 # bge .L_802589EC
    li 0, 0x3
    stb 0, 0x3fb(31)
    .4byte 0x48000018 # b .L_80258A00
L_802589EC:
    li 0, 0x3
    mr 3, 31
    stb 0, 0x3fb(31)
    li 4, 0x0
    bl fn_80251AEC
L_80258A00:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0xb
    .4byte 0x40820038 # bne .L_80258A40
    li 0, 0x1
    .4byte 0xC042D140 # lfs f2, lbl_805400E0@sda21(r0)
    stb 0, 0xb9e(31)
    lfs 3, 0x8(1)
    lfs 4, 0xc(1)
    fsubs 1, 3, 2
    fsubs 0, 4, 2
    fadds 3, 2, 3
    stfs 1, 0x5cc(31)
    fadds 1, 2, 4
    stfs 0, 0x5d0(31)
    stfs 3, 0x5d4(31)
    stfs 1, 0x5d8(31)
L_80258A40:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0xc
    .4byte 0x408200C8 # bne .L_80258B10
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x8
    lwz 5, 0x4(31)
    lwz 6, 0x3b4(31)
    bl fn_802A1844
    stw 3, 0xba0(31)
    lwz 0, 0xba0(31)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80258A78
    cmpwi 0, 0x4
    .4byte 0x40810010 # ble .L_80258A84
L_80258A78:
    lbz 0, 0xb9f(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80258A98
L_80258A84:
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x44
    bl fn_8024F0E8
    .4byte 0x48000070 # b .L_80258B04
L_80258A98:
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x3fb(31)
    addi 3, 1, 0x8
    stb 0, 0x3fd(31)
    lwz 4, 0x3b4(31)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x40820018 # bne .L_80258AD4
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x40
    bl fn_8024F0E8
    .4byte 0x48000034 # b .L_80258B04
L_80258AD4:
    lwz 0, 0xba0(31)
    cmpwi 0, 0x8
    .4byte 0x40820018 # bne .L_80258AF4
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x4f
    bl fn_8024F0E8
    .4byte 0x48000014 # b .L_80258B04
L_80258AF4:
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x66
    bl fn_8024F0E8
L_80258B04:
    li 0, 0x0
    stb 0, 0xb9e(31)
    stb 0, 0xb9f(31)
L_80258B10:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x1c
    .4byte 0x40820068 # bne .L_80258B80
    lbz 0, 0x3fd(31)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_80258B80
    lwz 5, 0xba0(31)
    cmpwi 5, 0x0
    .4byte 0x40810050 # ble .L_80258B80
    cmpwi 5, 0x4
    .4byte 0x41810048 # bgt .L_80258B80
    lwz 0, 0x3dc(31)
    lis 3, lbl_8046B200@ha
    addi 4, 3, lbl_8046B200@l
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    slwi 3, 5, 3
    slwi 0, 0, 1
    add 3, 4, 3
    li 6, 0x0
    add 4, 3, 0
    lwz 3, 0x3b4(31)
    lhz 5, -0x8(4)
    addi 4, 31, 0x8
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80258B80:
    lbz 4, 0x3fa(31)
    mr 3, 31
    addi 0, 4, 0x1
    stb 0, 0x3fa(31)
    bl fn_80268B3C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80258BA8:
    li 0, 0x0
    stb 0, 0x458(3)
    stb 0, 0xb9f(3)
    stw 0, 0xba0(3)
    blr

fn_80258BBC:
    lwz 0, 0x1244(3)
    cmpwi 0, 0x5
    .4byte 0x41820014 # beq .L_80258BD8
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_80258BD8
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stfs 0, 0x10(3)
L_80258BD8:
    li 0, 0x0
    stb 0, 0xb79(3)
    stb 0, 0x1204(3)
    blr

fn_80258BE8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stfd 27, 0x20(1)
    psq_st 27, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 31, 3
    lwz 3, 0x4(3)
    bl fn_8022C6AC
    .4byte 0xC082D124 # lfs f4, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 4
    .4byte 0x40810304 # ble .L_80258F3C
    lfs 0, 0x344(31)
    fcmpu cr0, 4, 0
    .4byte 0x4082001C # bne .L_80258C60
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC002D144 # lfs f0, lbl_805400E4@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x344(31)
    .4byte 0x480000F4 # b .L_80258D50
L_80258C60:
    fcmpo cr0, 0, 4
    .4byte 0x40810078 # ble .L_80258CDC
    lfs 0, 0x34c(31)
    fcmpo cr0, 0, 4
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80258C94
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC042D148 # lfs f2, lbl_805400E8@sda21(r0)
    lfs 0, 0x344(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x344(31)
    .4byte 0x4800001C # b .L_80258CAC
L_80258C94:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC042D14C # lfs f2, lbl_805400EC@sda21(r0)
    lfs 0, 0x344(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x344(31)
L_80258CAC:
    lfs 1, 0x344(31)
    .4byte 0xC002D150 # lfs f0, lbl_805400F0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820014 # beq .L_80258CD0
    lwz 3, 0xbf0(31)
    lbz 0, 0x48(3)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_80258D50
L_80258CD0:
    .4byte 0xC002D150 # lfs f0, lbl_805400F0@sda21(r0)
    stfs 0, 0x344(31)
    .4byte 0x48000078 # b .L_80258D50
L_80258CDC:
    .4byte 0x40800074 # bge .L_80258D50
    lfs 0, 0x34c(31)
    fcmpo cr0, 0, 4
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80258D0C
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC042D148 # lfs f2, lbl_805400E8@sda21(r0)
    lfs 0, 0x344(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x344(31)
    .4byte 0x4800001C # b .L_80258D24
L_80258D0C:
    lwz 3, 0x4(31)
    bl fn_8022C82C
    .4byte 0xC042D14C # lfs f2, lbl_805400EC@sda21(r0)
    lfs 0, 0x344(31)
    fmadds 0, 2, 1, 0
    stfs 0, 0x344(31)
L_80258D24:
    lfs 1, 0x344(31)
    .4byte 0xC002D154 # lfs f0, lbl_805400F4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820014 # beq .L_80258D48
    lwz 3, 0xbf0(31)
    lbz 0, 0x49(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80258D50
L_80258D48:
    .4byte 0xC002D154 # lfs f0, lbl_805400F4@sda21(r0)
    stfs 0, 0x344(31)
L_80258D50:
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    lfs 0, 0x348(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_80258D7C
    lwz 3, 0x4(31)
    bl fn_8022C76C
    fneg 1, 1
    .4byte 0xC002D144 # lfs f0, lbl_805400E4@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x348(31)
    .4byte 0x480000F4 # b .L_80258E6C
L_80258D7C:
    fcmpo cr0, 0, 1
    .4byte 0x40810078 # ble .L_80258DF8
    lfs 0, 0x34c(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80258DB0
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC042D148 # lfs f2, lbl_805400E8@sda21(r0)
    lfs 0, 0x348(31)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x348(31)
    .4byte 0x4800001C # b .L_80258DC8
L_80258DB0:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC042D14C # lfs f2, lbl_805400EC@sda21(r0)
    lfs 0, 0x348(31)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x348(31)
L_80258DC8:
    lfs 1, 0x348(31)
    .4byte 0xC002D150 # lfs f0, lbl_805400F0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820014 # beq .L_80258DEC
    lwz 3, 0xbf0(31)
    lbz 0, 0x4a(3)
    cmplwi 0, 0x0
    .4byte 0x41820084 # beq .L_80258E6C
L_80258DEC:
    .4byte 0xC002D150 # lfs f0, lbl_805400F0@sda21(r0)
    stfs 0, 0x348(31)
    .4byte 0x48000078 # b .L_80258E6C
L_80258DF8:
    .4byte 0x40800074 # bge .L_80258E6C
    lfs 0, 0x34c(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80258E28
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC042D148 # lfs f2, lbl_805400E8@sda21(r0)
    lfs 0, 0x348(31)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x348(31)
    .4byte 0x4800001C # b .L_80258E40
L_80258E28:
    lwz 3, 0x4(31)
    bl fn_8022C76C
    .4byte 0xC042D14C # lfs f2, lbl_805400EC@sda21(r0)
    lfs 0, 0x348(31)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x348(31)
L_80258E40:
    lfs 1, 0x348(31)
    .4byte 0xC002D154 # lfs f0, lbl_805400F4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820014 # beq .L_80258E64
    lwz 3, 0xbf0(31)
    lbz 0, 0x4b(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80258E6C
L_80258E64:
    .4byte 0xC002D154 # lfs f0, lbl_805400F4@sda21(r0)
    stfs 0, 0x348(31)
L_80258E6C:
    lfs 28, 0x34c(31)
    addi 3, 31, 0x344
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    stfs 0, 0x34c(31)
    bl PSVECMag
    .4byte 0xC002D158 # lfs f0, lbl_805400F8@sda21(r0)
    fmr 27, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80258E98
    fmr 27, 0
L_80258E98:
    psq_l 2, 0x344(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 30, 0x34c(31)
    ps_mul 2, 2, 2
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 30, 30, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80258F1C
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80258EE0
    fmr 31, 4
    .4byte 0x48000028 # b .L_80258F04
L_80258EE0:
    frsqrte 3, 4
    .4byte 0xC042D120 # lfs f2, lbl_805400C0@sda21(r0)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80258F04:
    psq_l 1, 0x344(31), 0, 0
    psq_l 0, 0x34c(31), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x344(31), 0, 0
    psq_st 0, 0x34c(31), 1, 0
L_80258F1C:
    psq_l 1, 0x344(31), 0, 0
    psq_l 0, 0x34c(31), 1, 0
    ps_muls0 1, 1, 27
    ps_muls0 0, 0, 27
    psq_st 1, 0x344(31), 0, 0
    psq_st 0, 0x34c(31), 1, 0
    stfs 28, 0x34c(31)
    .4byte 0x48000164 # b .L_8025909C
L_80258F3C:
    lfs 1, 0x344(31)
    lis 4, lbl_80539D44@ha
    lfs 0, 0x348(31)
    addi 3, 31, 0x344
    fmuls 3, 1, 1
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    fmuls 2, 0, 0
    lfs 0, lbl_80539D44@l(4)
    fmuls 0, 1, 0
    fadds 1, 3, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820130 # beq .L_8025909C
    lfs 27, 0x34c(31)
    stfs 4, 0x34c(31)
    bl PSVECMag
    fmr 28, 1
    lwz 3, 0x4(31)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80258FE0
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 27, 0
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_80258FC0
    .4byte 0xC022D148 # lfs f1, lbl_805400E8@sda21(r0)
    .4byte 0xC002D158 # lfs f0, lbl_805400F8@sda21(r0)
    fadds 28, 28, 1
    fcmpo cr0, 28, 0
    cror eq, gt, eq
    .4byte 0x40820048 # bne .L_80258FFC
    fmr 28, 0
    .4byte 0x48000040 # b .L_80258FFC
L_80258FC0:
    .4byte 0xC022D14C # lfs f1, lbl_805400EC@sda21(r0)
    .4byte 0xC002D158 # lfs f0, lbl_805400F8@sda21(r0)
    fadds 28, 28, 1
    fcmpo cr0, 28, 0
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_80258FFC
    fmr 28, 0
    .4byte 0x48000020 # b .L_80258FFC
L_80258FE0:
    .4byte 0xC022D160 # lfs f1, lbl_80540100@sda21(r0)
    .4byte 0xC002D150 # lfs f0, lbl_805400F0@sda21(r0)
    fsubs 28, 28, 1
    fcmpo cr0, 28, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80258FFC
    fmr 28, 0
L_80258FFC:
    psq_l 2, 0x344(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 30, 0x34c(31)
    ps_mul 2, 2, 2
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 30, 30, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_80259080
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80259044
    fmr 31, 4
    .4byte 0x48000028 # b .L_80259068
L_80259044:
    frsqrte 3, 4
    .4byte 0xC042D120 # lfs f2, lbl_805400C0@sda21(r0)
    .4byte 0xC002D15C # lfs f0, lbl_805400FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80259068:
    psq_l 1, 0x344(31), 0, 0
    psq_l 0, 0x34c(31), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x344(31), 0, 0
    psq_st 0, 0x34c(31), 1, 0
L_80259080:
    psq_l 1, 0x344(31), 0, 0
    psq_l 0, 0x34c(31), 1, 0
    ps_muls0 1, 1, 28
    ps_muls0 0, 0, 28
    psq_st 1, 0x344(31), 0, 0
    psq_st 0, 0x34c(31), 1, 0
    stfs 27, 0x34c(31)
L_8025909C:
    psq_l 3, 0x344(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x34c(31)
    ps_mul 3, 3, 3
    .4byte 0xC022D138 # lfs f1, lbl_805400D8@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 29, 29, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802590DC
    lfs 1, 0x10(31)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810238 # ble .L_80259310
L_802590DC:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x1
    .4byte 0x4180022C # blt .L_80259310
    lfs 2, 0x34c(31)
    .4byte 0xC022D164 # lfs f1, lbl_80540104@sda21(r0)
    .4byte 0xC002D168 # lfs f0, lbl_80540108@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x34c(31)
    lfs 1, 0x34c(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8025910C
    stfs 0, 0x34c(31)
L_8025910C:
    lfs 27, 0x10(31)
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200FC # beq .L_80259224
    lfs 2, 0x8(31)
    lfs 1, 0x344(31)
    .4byte 0xC002D120 # lfs f0, lbl_805400C0@sda21(r0)
    fadds 2, 2, 1
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    stfs 2, 0x8(31)
    lfs 3, 0xc(31)
    lfs 2, 0x34c(31)
    fsubs 2, 3, 2
    stfs 2, 0xc(31)
    stfs 0, 0x10(31)
    lfs 0, 0x34c(31)
    fcmpo cr0, 0, 1
    .4byte 0x408001B0 # bge .L_80259310
    lwz 3, 0xbf0(31)
    lbz 0, 0x4a(3)
    cmplwi 0, 0x0
    .4byte 0x418201A0 # beq .L_80259310
    lfs 2, 0x348(31)
    fcmpo cr0, 27, 1
    lfs 0, 0x344(31)
    stfs 0, 0x368(31)
    stfs 2, 0x36c(31)
    stfs 1, 0x370(31)
    stfs 1, 0x344(31)
    stfs 1, 0x348(31)
    stfs 1, 0x34c(31)
    stfs 1, 0x10(31)
    .4byte 0x40810174 # ble .L_80259310
    mr 3, 31
    bl fn_8024B24C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802591BC
    lbz 0, 0x1204(31)
    cmplwi 0, 0x0
    .4byte 0x41820158 # beq .L_80259310
L_802591BC:
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x40820148 # bne .L_80259310
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x40820138 # bne .L_80259310
    li 30, 0x0
L_802591E0:
    mr 3, 31
    mr 4, 30
    bl fn_80243194
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8025920C
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x41820010 # beq .L_8025920C
    mr 3, 30
    addi 4, 31, 0x8
    bl fn_8023E690
L_8025920C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_802591E0
    mr 3, 31
    bl fn_8024BAEC
    .4byte 0x480000F0 # b .L_80259310
L_80259224:
    psq_l 2, 0x8(31), 0, 0
    psq_l 0, 0x344(31), 0, 0
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    ps_add 0, 2, 0
    psq_st 0, 0x8(31), 0, 0
    psq_l 2, 0x10(31), 1, 0
    psq_l 0, 0x34c(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x10(31), 1, 0
    lfs 0, 0x34c(31)
    fcmpo cr0, 0, 1
    .4byte 0x408000C0 # bge .L_80259310
    lfs 0, 0x10(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x408200B0 # bne .L_80259310
    stfs 1, 0x10(31)
    fcmpo cr0, 27, 1
    lfs 2, 0x348(31)
    lfs 0, 0x344(31)
    stfs 0, 0x368(31)
    stfs 2, 0x36c(31)
    stfs 1, 0x370(31)
    stfs 1, 0x344(31)
    stfs 1, 0x348(31)
    stfs 1, 0x34c(31)
    .4byte 0x40810084 # ble .L_80259310
    mr 3, 31
    bl fn_8024B24C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802592AC
    lbz 0, 0x1204(31)
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_80259310
L_802592AC:
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x40820058 # bne .L_80259310
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_80259310
    li 30, 0x0
L_802592D0:
    mr 3, 31
    mr 4, 30
    bl fn_80243194
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802592FC
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x41820010 # beq .L_802592FC
    mr 3, 30
    addi 4, 31, 0x8
    bl fn_8023E690
L_802592FC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_802592D0
    mr 3, 31
    bl fn_8024BAEC
L_80259310:
    lbz 0, 0xb79(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_8025936C
    lfs 1, 0x10(31)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810044 # ble .L_8025936C
    mr 3, 31
    bl fn_802415CC
    cmpwi 3, 0x2
    .4byte 0x41800034 # blt .L_8025936C
    lwz 3, 0x4(31)
    bl fn_8022C310
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8025936C
    li 3, 0x0
    .4byte 0xC002D16C # lfs f0, lbl_8054010C@sda21(r0)
    stb 3, 0x3fb(31)
    li 0, 0x1
    stb 3, 0x3fa(31)
    stb 3, 0x3fc(31)
    stfs 0, 0x34c(31)
    stb 0, 0xb79(31)
L_8025936C:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_80259384
    li 0, 0x0
    stb 0, 0x3fb(31)
    .4byte 0x480001A8 # b .L_80259528
L_80259384:
    cmplwi 0, 0x9
    .4byte 0x40800010 # bge .L_80259398
    li 0, 0x1
    stb 0, 0x3fb(31)
    .4byte 0x48000194 # b .L_80259528
L_80259398:
    cmplwi 0, 0xd
    .4byte 0x40800010 # bge .L_802593AC
    li 0, 0x2
    stb 0, 0x3fb(31)
    .4byte 0x48000180 # b .L_80259528
L_802593AC:
    cmplwi 0, 0x11
    .4byte 0x40800010 # bge .L_802593C0
    li 0, 0x3
    stb 0, 0x3fb(31)
    .4byte 0x4800016C # b .L_80259528
L_802593C0:
    cmplwi 0, 0x15
    .4byte 0x40800010 # bge .L_802593D4
    li 0, 0x4
    stb 0, 0x3fb(31)
    .4byte 0x48000158 # b .L_80259528
L_802593D4:
    cmplwi 0, 0x19
    .4byte 0x40800010 # bge .L_802593E8
    li 0, 0x5
    stb 0, 0x3fb(31)
    .4byte 0x48000144 # b .L_80259528
L_802593E8:
    cmplwi 0, 0x1d
    .4byte 0x40800010 # bge .L_802593FC
    li 0, 0x6
    stb 0, 0x3fb(31)
    .4byte 0x48000130 # b .L_80259528
L_802593FC:
    cmplwi 0, 0x21
    .4byte 0x40800010 # bge .L_80259410
    li 0, 0x7
    stb 0, 0x3fb(31)
    .4byte 0x4800011C # b .L_80259528
L_80259410:
    lfs 1, 0x10(31)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820100 # bne .L_80259520
    stfs 0, 0x10(31)
    lwz 3, 0x4(31)
    bl fn_8022C310
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_802594F0
    li 0, 0x0
    .4byte 0xC002D16C # lfs f0, lbl_8054010C@sda21(r0)
    stb 0, 0x3fb(31)
    mr 3, 31
    stb 0, 0x3fa(31)
    stb 0, 0x3fc(31)
    stfs 0, 0x34c(31)
    stb 0, 0xb79(31)
    bl fn_8024B24C
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_802594C8
    mr 3, 31
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x40820058 # bne .L_802594C8
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_802594C8
    li 30, 0x0
L_80259488:
    mr 3, 31
    mr 4, 30
    bl fn_80243194
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802594B4
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x41820010 # beq .L_802594B4
    mr 3, 30
    addi 4, 31, 0x8
    bl fn_8023E690
L_802594B4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_80259488
    mr 3, 31
    bl fn_8024BAEC
L_802594C8:
    mr 3, 31
    bl fn_8024B24C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802594E4
    li 0, 0x1
    stb 0, 0x1204(31)
    .4byte 0x48000048 # b .L_80259528
L_802594E4:
    li 0, 0x0
    stb 0, 0x1204(31)
    .4byte 0x4800003C # b .L_80259528
L_802594F0:
    li 0, 0x0
    stb 0, 0x3fb(31)
    lbz 3, 0x3fc(31)
    addi 0, 3, 0x1
    stb 0, 0x3fc(31)
    lbz 0, 0x3fc(31)
    cmplwi 0, 0x3
    .4byte 0x4180001C # blt .L_80259528
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
    .4byte 0x4800000C # b .L_80259528
L_80259520:
    li 0, 0x7
    stb 0, 0x3fb(31)
L_80259528:
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x8
    .4byte 0x41800088 # blt .L_802595B8
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182006C # beq .L_802595B8
    lfs 1, 0x34c(31)
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080005C # bge .L_802595B8
    lfs 1, 0x10(31)
    .4byte 0xC002D134 # lfs f0, lbl_805400D4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820048 # bne .L_802595B8
    mr 3, 31
    addi 5, 1, 0x8
    li 4, 0x2
    bl fn_8024B298
    lfs 1, 0xc(1)
    addi 3, 1, 0x8
    .4byte 0xC002D128 # lfs f0, lbl_805400C8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 4, 0x3b4(31)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x41820010 # beq .L_802595B8
    mr 3, 31
    li 4, 0x0
    bl fn_80251AEC
L_802595B8:
    lbz 0, 0x458(31)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_8025960C
    lbz 0, 0x3fa(31)
    cmplwi 0, 0x8
    .4byte 0x41800040 # blt .L_8025960C
    lwz 3, 0x4(31)
    bl fn_8022C3AC
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8025960C
    mr 3, 31
    bl fn_80243234
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80259600
    mr 3, 31
    li 4, 0x7
    bl fn_80251AEC
    .4byte 0x48000010 # b .L_8025960C
L_80259600:
    mr 3, 31
    li 4, 0x5
    bl fn_80251AEC
L_8025960C:
    lbz 4, 0x3fa(31)
    mr 3, 31
    addi 0, 4, 0x1
    stb 0, 0x3fa(31)
    bl fn_802685D4
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    psq_l 27, 0x28(1), 0, 0
    lfd 27, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x74(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80259660:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    stb 0, 0x458(3)
    bl fn_8027EB04
    .4byte 0xC022D124 # lfs f1, lbl_805400C4@sda21(r0)
    lis 4, 0x1
    .4byte 0xC002D16C # lfs f0, lbl_8054010C@sda21(r0)
    mr 3, 30
    stfs 1, 0x344(30)
    addi 4, 4, 0x2
    stfs 1, 0x348(30)
    stfs 1, 0x34c(30)
    stfs 0, 0x34c(30)
    bl fn_8024F0E8
    .4byte 0xC002D124 # lfs f0, lbl_805400C4@sda21(r0)
    li 0, 0x0
    mr 3, 30
    stfs 0, 0x368(30)
    stfs 0, 0x36c(30)
    stfs 0, 0x370(30)
    stb 0, 0xb79(30)
    stb 0, 0x1204(30)
    bl fn_8024B24C
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_8025973C
    mr 3, 30
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x40820058 # bne .L_8025973C
    mr 3, 30
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8025973C
    li 31, 0x0
L_802596FC:
    mr 3, 30
    mr 4, 31
    bl fn_80243194
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80259728
    lwz 0, 0x4(30)
    cmpw 31, 0
    .4byte 0x41820010 # beq .L_80259728
    mr 3, 31
    addi 4, 30, 0x8
    bl fn_8023E690
L_80259728:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FFCC # blt .L_802596FC
    mr 3, 30
    bl fn_8024BAEC
L_8025973C:
    mr 3, 30
    bl fn_8024B24C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80259758
    li 0, 0x1
    stb 0, 0x1204(30)
    .4byte 0x4800000C # b .L_80259760
L_80259758:
    li 0, 0x0
    stb 0, 0x1204(30)
L_80259760:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80259778:
    .4byte 0xC002D16C # lfs f0, lbl_8054010C@sda21(r0)
    stfs 0, 0x34c(3)
    blr

fn_80259784:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 5, 0x12c4(3)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802597C4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12c4(30)
L_802597C4:
    lwz 5, 0x12c8(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802597EC
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12c8(30)
L_802597EC:
    lwz 31, 0xb28(30)
    cmpwi 31, 0x0
    .4byte 0x41800024 # blt .L_80259818
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80259810
    bl fn_802BAA00
L_80259810:
    li 0, -0x1
    stw 0, 0xb28(30)
L_80259818:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80259830:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_8046AF00@ha
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    addi 31, 4, lbl_8046AF00@l
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    lwz 3, 0xb8c(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80259868
    subi 0, 3, 0x1
    stw 0, 0xb8c(30)
L_80259868:
    lbz 0, 0xb84(30)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8025988C
    lwz 3, 0x4(30)
    bl fn_8022C274
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8025988C
    li 0, 0x0
    stb 0, 0xb84(30)
L_8025988C:
    lbz 0, 0x3fa(30)
    cmplwi 0, 0x2
    .4byte 0x40800010 # bge .L_802598A4
    li 0, 0x0
    stb 0, 0x3fb(30)
    .4byte 0x4800007C # b .L_8025991C
L_802598A4:
    cmplwi 0, 0x3
    .4byte 0x40800010 # bge .L_802598B8
    li 0, 0x1
    stb 0, 0x3fb(30)
    .4byte 0x48000068 # b .L_8025991C
L_802598B8:
    cmplwi 0, 0x4
    .4byte 0x40800010 # bge .L_802598CC
    li 0, 0x2
    stb 0, 0x3fb(30)
    .4byte 0x48000054 # b .L_8025991C
L_802598CC:
    cmplwi 0, 0xa
    .4byte 0x40800010 # bge .L_802598E0
    li 0, 0x3
    stb 0, 0x3fb(30)
    .4byte 0x48000040 # b .L_8025991C
L_802598E0:
    cmplwi 0, 0xb
    .4byte 0x40800010 # bge .L_802598F4
    li 0, 0x4
    stb 0, 0x3fb(30)
    .4byte 0x4800002C # b .L_8025991C
L_802598F4:
    cmplwi 0, 0xd
    .4byte 0x40800010 # bge .L_80259908
    li 0, 0x5
    stb 0, 0x3fb(30)
    .4byte 0x48000018 # b .L_8025991C
L_80259908:
    li 0, 0x5
    mr 3, 30
    stb 0, 0x3fb(30)
    li 4, 0x0
    bl fn_80251AEC
L_8025991C:
    lbz 0, 0xb84(30)
    cmplwi 0, 0x0
    .4byte 0x40820118 # bne .L_80259A3C
    lbz 0, 0x3fa(30)
    cmplwi 0, 0xb
    .4byte 0x4082010C # bne .L_80259A3C
    lbz 0, 0xbb8(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8025995C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0xe8
    lwz 5, 0x4(30)
    li 6, 0x0
    bl fn_8043D67C
    li 0, 0x1
    stb 0, 0xbb8(30)
L_8025995C:
    bl SpatialRegistry_GetBase
    lwz 4, 0xb2c(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x408200CC # bne .L_80259A38
    mr 3, 30
    li 4, 0x0
    bl fn_80247594
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_80259A3C
    psq_l 1, 0x8(30), 0, 0
    lfs 0, 0x10(30)
    psq_st 1, 0x24(1), 0, 0
    stfs 0, 0x2c(1)
    lwz 0, 0x3dc(30)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_802599E8
    .4byte 0x40800014 # bge .L_802599B4
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802599C0
    .4byte 0x40800028 # bge .L_802599D4
    .4byte 0x4800005C # b .L_80259A0C
L_802599B4:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_80259A0C
    .4byte 0x48000040 # b .L_802599FC
L_802599C0:
    lfs 1, 0x24(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x24(1)
    .4byte 0x4800003C # b .L_80259A0C
L_802599D4:
    lfs 1, 0x24(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x24(1)
    .4byte 0x48000028 # b .L_80259A0C
L_802599E8:
    lfs 1, 0x28(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x28(1)
    .4byte 0x48000014 # b .L_80259A0C
L_802599FC:
    lfs 1, 0x28(1)
    .4byte 0xC002D13C # lfs f0, lbl_805400DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x28(1)
L_80259A0C:
    bl SpatialRegistry_GetBase
    lis 4, 0x534d
    lwz 5, 0x3b4(30)
    lwz 9, 0x4(30)
    addi 4, 4, 0x5249
    addi 6, 1, 0x24
    li 7, 0x0
    li 8, -0x1
    bl fn_801F9484
    stw 3, 0xb2c(30)
    .4byte 0x48000008 # b .L_80259A3C
L_80259A38:
    bl fn_8030EA00
L_80259A3C:
    lbz 3, 0x3fa(30)
    cmplwi 3, 0xc
    .4byte 0x408205DC # bne .L_8025A020
    psq_l 1, 0x8(30), 0, 0
    lfs 0, 0x10(30)
    psq_st 1, 0x18(1), 0, 0
    stfs 0, 0x20(1)
    lwz 0, 0x3dc(30)
    cmpwi 0, 0x2
    .4byte 0x418200D8 # beq .L_80259B38
    .4byte 0x40800014 # bge .L_80259A78
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80259A84
    .4byte 0x40800070 # bge .L_80259AE0
    .4byte 0x48000188 # b .L_80259BFC
L_80259A78:
    cmpwi 0, 0x4
    .4byte 0x40800180 # bge .L_80259BFC
    .4byte 0x4800011C # b .L_80259B9C
L_80259A84:
    lfs 1, 0x18(1)
    .4byte 0xC002D170 # lfs f0, lbl_80540110@sda21(r0)
    lfs 5, 0x1c(1)
    fadds 4, 1, 0
    .4byte 0xC022D174 # lfs f1, lbl_80540114@sda21(r0)
    .4byte 0xC002D178 # lfs f0, lbl_80540118@sda21(r0)
    fsubs 3, 5, 1
    fadds 2, 4, 0
    stfs 4, 0x18(1)
    fadds 1, 1, 5
    frsp 0, 4
    stfs 4, 0x8(1)
    stfs 3, 0xc(1)
    stfs 2, 0x10(1)
    stfs 1, 0x14(1)
    stfs 0, 0x580(30)
    lfs 0, 0xc(1)
    stfs 0, 0x584(30)
    lfs 0, 0x10(1)
    stfs 0, 0x588(30)
    lfs 0, 0x14(1)
    stfs 0, 0x58c(30)
    .4byte 0x48000120 # b .L_80259BFC
L_80259AE0:
    lfs 2, 0x18(1)
    .4byte 0xC002D170 # lfs f0, lbl_80540110@sda21(r0)
    .4byte 0xC022D178 # lfs f1, lbl_80540118@sda21(r0)
    fsubs 3, 2, 0
    lfs 4, 0x1c(1)
    .4byte 0xC002D174 # lfs f0, lbl_80540114@sda21(r0)
    fsubs 2, 3, 1
    stfs 3, 0x18(1)
    fsubs 1, 4, 0
    fadds 0, 0, 4
    stfs 3, 0x10(1)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    stfs 2, 0x580(30)
    lfs 0, 0xc(1)
    stfs 0, 0x584(30)
    lfs 0, 0x10(1)
    stfs 0, 0x588(30)
    lfs 0, 0x14(1)
    stfs 0, 0x58c(30)
    .4byte 0x480000C8 # b .L_80259BFC
L_80259B38:
    lfs 3, 0x18(1)
    .4byte 0xC022D140 # lfs f1, lbl_805400E0@sda21(r0)
    lfs 2, 0x1c(1)
    .4byte 0xC002D17C # lfs f0, lbl_8054011C@sda21(r0)
    fadds 4, 3, 1
    .4byte 0xC022D174 # lfs f1, lbl_80540114@sda21(r0)
    fadds 3, 2, 0
    .4byte 0xC002D178 # lfs f0, lbl_80540118@sda21(r0)
    fsubs 2, 4, 1
    stfs 4, 0x18(1)
    fadds 1, 1, 4
    fadds 0, 3, 0
    stfs 3, 0x1c(1)
    stfs 2, 0x8(1)
    stfs 3, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    stfs 2, 0x580(30)
    lfs 0, 0xc(1)
    stfs 0, 0x584(30)
    lfs 0, 0x10(1)
    stfs 0, 0x588(30)
    lfs 0, 0x14(1)
    stfs 0, 0x58c(30)
    .4byte 0x48000064 # b .L_80259BFC
L_80259B9C:
    lfs 3, 0x18(1)
    .4byte 0xC002D140 # lfs f0, lbl_805400E0@sda21(r0)
    lfs 2, 0x1c(1)
    .4byte 0xC022D180 # lfs f1, lbl_80540120@sda21(r0)
    fsubs 4, 3, 0
    .4byte 0xC002D174 # lfs f0, lbl_80540114@sda21(r0)
    fsubs 3, 2, 1
    .4byte 0xC022D178 # lfs f1, lbl_80540118@sda21(r0)
    fsubs 2, 4, 0
    stfs 4, 0x18(1)
    fadds 0, 0, 4
    fsubs 1, 3, 1
    stfs 3, 0x1c(1)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    stfs 3, 0x14(1)
    stfs 2, 0x580(30)
    lfs 0, 0xc(1)
    stfs 0, 0x584(30)
    lfs 0, 0x10(1)
    stfs 0, 0x588(30)
    lfs 0, 0x14(1)
    stfs 0, 0x58c(30)
L_80259BFC:
    lbz 0, 0xb84(30)
    cmplwi 0, 0x0
    .4byte 0x418203DC # beq .L_80259FE0
    .4byte 0xC022D184 # lfs f1, lbl_80540124@sda21(r0)
    mr 3, 30
    bl fn_802808E8
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC042D138 # lfs f2, lbl_805400D8@sda21(r0)
    mr 0, 4
    lfs 1, 0x8(30)
    fmuls 2, 2, 0
    lfs 0, 0x14(30)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80259C5C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80259C5C
    li 0, 0x1
L_80259C5C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_80259C9C
    lfs 1, 0xc(30)
    li 0, 0x0
    lfs 0, 0x18(30)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80259C90
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80259C90
    li 0, 0x1
L_80259C90:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80259C9C
    li 3, 0x1
L_80259C9C:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80259CDC
    lfs 1, 0x10(30)
    li 0, 0x0
    lfs 0, 0x1c(30)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80259CD0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80259CD0
    li 0, 0x1
L_80259CD0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_80259CDC
    li 4, 0x1
L_80259CDC:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_80259CF0
    li 0, 0x0
    stb 0, 0x3f8(30)
    .4byte 0x48000024 # b .L_80259D10
L_80259CF0:
    lbz 3, 0x3f8(30)
    addi 0, 3, 0x1
    stb 0, 0x3f8(30)
    lbz 0, 0x3f8(30)
    cmplwi 0, 0x1c
    .4byte 0x4180000C # blt .L_80259D10
    li 0, 0x0
    stb 0, 0x3f8(30)
L_80259D10:
    lbz 0, 0x3f8(30)
    cmplwi 0, 0x4
    .4byte 0x4080001C # bge .L_80259D34
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    lbzx 0, 3, 0
    stb 0, 0x3f9(30)
    .4byte 0x480000F4 # b .L_80259E24
L_80259D34:
    cmplwi 0, 0x6
    .4byte 0x40800020 # bge .L_80259D58
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x1(3)
    stb 0, 0x3f9(30)
    .4byte 0x480000D0 # b .L_80259E24
L_80259D58:
    cmplwi 0, 0xa
    .4byte 0x40800020 # bge .L_80259D7C
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x2(3)
    stb 0, 0x3f9(30)
    .4byte 0x480000AC # b .L_80259E24
L_80259D7C:
    cmplwi 0, 0xe
    .4byte 0x40800020 # bge .L_80259DA0
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x3(3)
    stb 0, 0x3f9(30)
    .4byte 0x48000088 # b .L_80259E24
L_80259DA0:
    cmplwi 0, 0x12
    .4byte 0x40800020 # bge .L_80259DC4
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x4(3)
    stb 0, 0x3f9(30)
    .4byte 0x48000064 # b .L_80259E24
L_80259DC4:
    cmplwi 0, 0x14
    .4byte 0x40800020 # bge .L_80259DE8
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x5(3)
    stb 0, 0x3f9(30)
    .4byte 0x48000040 # b .L_80259E24
L_80259DE8:
    cmplwi 0, 0x18
    .4byte 0x40800020 # bge .L_80259E0C
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x6(3)
    stb 0, 0x3f9(30)
    .4byte 0x4800001C # b .L_80259E24
L_80259E0C:
    lwz 0, 0x3dc(30)
    addi 3, 31, 0x290
    slwi 0, 0, 3
    add 3, 3, 0
    lbz 0, 0x7(3)
    stb 0, 0x3f9(30)
L_80259E24:
    mr 3, 30
    li 4, 0x1
    bl fn_80247594
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80259E40
    li 0, 0x0
    stb 0, 0xb84(30)
L_80259E40:
    lwz 0, 0xb8c(30)
    cmpwi 0, 0x0
    .4byte 0x41810048 # bgt .L_80259E90
    lwz 0, 0xb28(30)
    cmpwi 0, 0x0
    .4byte 0x4080003C # bge .L_80259E90
    lwz 29, 0x4(30)
    bl SpatialRegistry_GetBase
    lwz 0, 0x3dc(30)
    lis 4, 0x4649
    lwz 5, 0x3b4(30)
    mr 9, 29
    clrlslwi 0, 0, 30, 4
    addi 4, 4, 0x5245
    ori 7, 0, 0x1040
    addi 6, 1, 0x18
    li 8, -0x1
    rlwimi 7, 29, 0, 30, 31
    bl fn_801F9484
    stw 3, 0xb28(30)
L_80259E90:
    lwz 29, 0xb28(30)
    cmpwi 29, 0x0
    .4byte 0x41800034 # blt .L_80259ECC
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80259EBC
    addi 4, 1, 0x8
    bl fn_802BAA0C
    .4byte 0x48000014 # b .L_80259ECC
L_80259EBC:
    li 3, -0x1
    li 0, 0x3c
    stw 3, 0xb28(30)
    stw 0, 0xb8c(30)
L_80259ECC:
    lwz 0, 0x12c4(30)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80259F04
    lwz 3, 0x3b4(30)
    addi 4, 1, 0x18
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x1ab
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x12c4(30)
L_80259F04:
    lwz 3, 0x12c4(30)
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80259F4C
    lwz 0, 0x3dc(30)
    addi 6, 3, 0x68
    addi 4, 31, 0x2b0
    li 3, 0x0
    slwi 0, 0, 2
    li 5, -0x8000
    lwzx 0, 4, 0
    extsh 4, 0
    bl fn_800EF008
    lwz 3, 0x12c4(30)
    addi 4, 1, 0x18
    li 5, 0x0
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
L_80259F4C:
    lwz 0, 0x12c8(30)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80259F84
    lwz 3, 0x3b4(30)
    addi 4, 1, 0x18
    .4byte 0xC022D134 # lfs f1, lbl_805400D4@sda21(r0)
    li 5, 0x54a
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x12c8(30)
L_80259F84:
    lwz 3, 0x12c8(30)
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80259FCC
    lwz 0, 0x3dc(30)
    addi 6, 3, 0x68
    addi 5, 31, 0x2c0
    li 3, 0x0
    slwi 0, 0, 2
    li 4, 0x0
    lwzx 0, 5, 0
    extsh 5, 0
    bl fn_800EF008
    lwz 3, 0x12c8(30)
    addi 4, 1, 0x18
    li 5, -0x1
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
L_80259FCC:
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x11
    bl fn_8024F0E8
    .4byte 0x4800004C # b .L_8025A028
L_80259FE0:
    lbz 3, 0x3fa(30)
    addi 0, 3, 0x1
    stb 0, 0x3fa(30)
    lwz 3, 0x12c8(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8025A004
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
L_8025A004:
    lwz 3, 0x12c4(30)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8025A028
    lwz 0, 0xf4(3)
    ori 0, 0, 0x1
    stw 0, 0xf4(3)
    .4byte 0x4800000C # b .L_8025A028
L_8025A020:
    addi 0, 3, 0x1
    stb 0, 0x3fa(30)
L_8025A028:
    mr 3, 30
    bl fn_80268B3C
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8025A04C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stb 0, 0x458(3)
    bl fn_80241794
    cmpwi 3, 0x0
    .4byte 0x41810010 # bgt .L_8025A080
    li 0, 0x0
    stb 0, 0xb84(31)
    .4byte 0x4800000C # b .L_8025A088
L_8025A080:
    li 0, 0x1
    stb 0, 0xb84(31)
L_8025A088:
    li 3, 0x0
    li 0, -0x1
    stw 3, 0xb88(31)
    stw 0, 0xb28(31)
    stw 3, 0xb8c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8025A0B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 5, 0x12c4(3)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025A0F0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12c4(30)
L_8025A0F0:
    lwz 5, 0x12c8(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8025A118
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x12c8(30)
L_8025A118:
    lwz 31, 0xb28(30)
    cmpwi 31, 0x0
    .4byte 0x41800024 # blt .L_8025A144
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8025A13C
    bl fn_802BAA00
L_8025A13C:
    li 0, -0x1
    stw 0, 0xb28(30)
L_8025A144:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

