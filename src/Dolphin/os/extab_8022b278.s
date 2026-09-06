.section extab, "a"
.balign 4
.global etb_8000A888
etb_8000A888:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000A888, 8

.global etb_8000A890
etb_8000A890:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A890, 8

.global etb_8000A898
etb_8000A898:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A898, 8

.global etb_8000A8A0
etb_8000A8A0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A8A0, 8

.global etb_8000A8A8
etb_8000A8A8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A8A8, 8

.global etb_8000A8B0
etb_8000A8B0:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000A8B0, 8

.global etb_8000A8B8
etb_8000A8B8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000A8B8, 8

.section extabindex, "a"
.balign 4
.global eti_800187D8
eti_800187D8:
    .4byte fn_8022B278
    .4byte 0x000000BC
    .4byte etb_8000A888
.size eti_800187D8, 12

.global eti_800187E4
eti_800187E4:
    .4byte fn_8022B334
    .4byte 0x00000490
    .4byte etb_8000A890
.size eti_800187E4, 12

.global eti_800187F0
eti_800187F0:
    .4byte fn_8022B7C4
    .4byte 0x0000009C
    .4byte etb_8000A898
.size eti_800187F0, 12

.global "@eti_800187FC"
"@eti_800187FC":
    .4byte fn_8022B860
    .4byte 0x0000008C
    .4byte etb_8000A8A0
.size "@eti_800187FC", 12

.global eti_80018808
eti_80018808:
    .4byte fn_8022B8EC
    .4byte 0x0000008C
    .4byte etb_8000A8A8
.size eti_80018808, 12

.global eti_80018814
eti_80018814:
    .4byte fn_8022B978
    .4byte 0x000000E0
    .4byte etb_8000A8B0
.size eti_80018814, 12

.global eti_80018820
eti_80018820:
    .4byte fn_8022BA58
    .4byte 0x000000F0
    .4byte etb_8000A8B8
.size eti_80018820, 12

.text
.balign 4
.global fn_8022B278
.global fn_8022B334
.global fn_8022B7C4
.global fn_8022B860
.global fn_8022B8EC
.global fn_8022B978
.global fn_8022BA58

fn_8022B278:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820088 # beq .L_8022B31C
    li 0, 0x1
    li 30, 0x0
    stb 0, 0x6c(3)
    li 31, 0x0
L_8022B2A8:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B2BC
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022B2F8
L_8022B2BC:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B2CC
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022B2F8
L_8022B2CC:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B2DC
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022B2F8
L_8022B2DC:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B2F4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B2F8
L_8022B2F4:
    lbz 0, 0xcac(4)
L_8022B2F8:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_8022B30C
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl fn_8026FC8C
L_8022B30C:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF90 # blt .L_8022B2A8
L_8022B31C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022B334:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B364
    li 3, 0x0
    .4byte 0x48000448 # b .L_8022B7A8
L_8022B364:
    .4byte 0x4082000C # bne .L_8022B370
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022B3DC
L_8022B370:
    .4byte 0x4082000C # bne .L_8022B37C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B3BC
L_8022B37C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B38C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B3BC
L_8022B38C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B39C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B3BC
L_8022B39C:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B3B8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B3BC
L_8022B3B8:
    lbz 0, 0xcac(3)
L_8022B3BC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022B3CC
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022B3DC
L_8022B3CC:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl fn_80240AF0
L_8022B3DC:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8022B3EC
    li 3, 0x0
    .4byte 0x480003C0 # b .L_8022B7A8
L_8022B3EC:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B400
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022B46C
L_8022B400:
    .4byte 0x4082000C # bne .L_8022B40C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B44C
L_8022B40C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B41C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B44C
L_8022B41C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B42C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B44C
L_8022B42C:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B448
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B44C
L_8022B448:
    lbz 0, 0xcac(3)
L_8022B44C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022B45C
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022B46C
L_8022B45C:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl fn_802486A0
L_8022B46C:
    cmpwi 3, 0x4
    .4byte 0x40820028 # bne .L_8022B498
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x4(3)
    bl fn_80257DB4
    clrlwi. 0, 3, 24
    .4byte 0x40820318 # bne .L_8022B7A4
    li 3, 0x0
    .4byte 0x48000314 # b .L_8022B7A8
L_8022B498:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B4AC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022B518
L_8022B4AC:
    .4byte 0x4082000C # bne .L_8022B4B8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B4F8
L_8022B4B8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B4C8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B4F8
L_8022B4C8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B4D8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B4F8
L_8022B4D8:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B4F4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B4F8
L_8022B4F4:
    lbz 0, 0xcac(3)
L_8022B4F8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022B508
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022B518
L_8022B508:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl fn_802486A0
L_8022B518:
    cmpwi 3, 0x5
    .4byte 0x4082015C # bne .L_8022B678
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B534
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022B5A0
L_8022B534:
    .4byte 0x4082000C # bne .L_8022B540
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B580
L_8022B540:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B550
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B580
L_8022B550:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B560
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B580
L_8022B560:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B57C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B580
L_8022B57C:
    lbz 0, 0xcac(3)
L_8022B580:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022B590
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022B5A0
L_8022B590:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_IsLinked
L_8022B5A0:
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_8022B654
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B5BC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022B628
L_8022B5BC:
    .4byte 0x4082000C # bne .L_8022B5C8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B608
L_8022B5C8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B5D8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B608
L_8022B5D8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B5E8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B608
L_8022B5E8:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B604
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B608
L_8022B604:
    lbz 0, 0xcac(3)
L_8022B608:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022B618
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022B628
L_8022B618:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl fn_802416C4
L_8022B628:
    cmpwi 3, 0x7
    .4byte 0x40820020 # bne .L_8022B64C
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x4(3)
    bl fn_8024B24C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022B654
L_8022B64C:
    li 3, 0x0
    .4byte 0x48000158 # b .L_8022B7A8
L_8022B654:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    slwi 0, 30, 2
    add 3, 3, 0
    lwz 3, 0x4(3)
    bl fn_80257DB4
    clrlwi. 0, 3, 24
    .4byte 0x40820138 # bne .L_8022B7A4
    li 3, 0x0
    .4byte 0x48000134 # b .L_8022B7A8
L_8022B678:
    li 31, 0x0
    li 29, 0x0
L_8022B680:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B694
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022B6D0
L_8022B694:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022B6A4
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022B6D0
L_8022B6A4:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022B6B4
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022B6D0
L_8022B6B4:
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B6CC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B6D0
L_8022B6CC:
    lbz 0, 0xcac(3)
L_8022B6D0:
    clrlwi. 0, 0, 24
    .4byte 0x418200C0 # beq .L_8022B794
    cmpw 30, 31
    .4byte 0x41820018 # beq .L_8022B6F4
    mr 3, 30
    mr 4, 31
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_8022B794
L_8022B6F4:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B708
    li 3, 0x0
    .4byte 0x48000068 # b .L_8022B76C
L_8022B708:
    .4byte 0x4082000C # bne .L_8022B714
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022B750
L_8022B714:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022B724
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022B750
L_8022B724:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022B734
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022B750
L_8022B734:
    addi 0, 29, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B74C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B750
L_8022B74C:
    lbz 0, 0xcac(4)
L_8022B750:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022B760
    li 3, 0x0
    .4byte 0x48000010 # b .L_8022B76C
L_8022B760:
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    bl fn_80240AF0
L_8022B76C:
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8022B794
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    addi 0, 29, 0x4
    lwzx 3, 3, 0
    bl fn_80257DB4
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8022B794
    li 3, 0x0
    .4byte 0x48000018 # b .L_8022B7A8
L_8022B794:
    addi 31, 31, 0x1
    addi 29, 29, 0x4
    cmpwi 31, 0x4
    .4byte 0x4180FEE0 # blt .L_8022B680
L_8022B7A4:
    li 3, 0x1
L_8022B7A8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022B7C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022B7E4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022B850
L_8022B7E4:
    .4byte 0x4082000C # bne .L_8022B7F0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B830
L_8022B7F0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022B800
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B830
L_8022B800:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022B810
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B830
L_8022B810:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B82C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B830
L_8022B82C:
    lbz 0, 0xcac(4)
L_8022B830:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022B84C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8023FC08
    .4byte 0x48000008 # b .L_8022B850
L_8022B84C:
    li 3, 0x0
L_8022B850:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022B860:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8022B8DC
    .4byte 0x4082000C # bne .L_8022B884
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B8C4
L_8022B884:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022B894
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B8C4
L_8022B894:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022B8A4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B8C4
L_8022B8A4:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022B8C0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B8C4
L_8022B8C0:
    lbz 0, 0xcac(5)
L_8022B8C4:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022B8DC
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8023FC10
L_8022B8DC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022B8EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8022B968
    .4byte 0x4082000C # bne .L_8022B910
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022B950
L_8022B910:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022B920
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022B950
L_8022B920:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022B930
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022B950
L_8022B930:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022B94C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022B950
L_8022B94C:
    lbz 0, 0xcac(5)
L_8022B950:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022B968
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80241B44
L_8022B968:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022B978:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022B9A8
    li 3, 0x0
    .4byte 0x480000A0 # b .L_8022BA44
L_8022B9A8:
    li 30, 0x0
    li 31, 0x0
L_8022B9B0:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022B9C4
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022BA00
L_8022B9C4:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022B9D4
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022BA00
L_8022B9D4:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022B9E4
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022BA00
L_8022B9E4:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022B9FC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BA00
L_8022B9FC:
    lbz 0, 0xcac(4)
L_8022BA00:
    clrlwi. 0, 0, 24
    .4byte 0x4182002C # beq .L_8022BA30
    addi 0, 31, 0x4
    mr 4, 27
    lwzx 3, 3, 0
    mr 5, 28
    mr 6, 29
    bl fn_80241BA0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8022BA30
    li 3, 0x1
    .4byte 0x48000018 # b .L_8022BA44
L_8022BA30:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_8022B9B0
    li 3, 0x0
L_8022BA44:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8022BA58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8022BA90
    li 3, 0x0
    .4byte 0x4800009C # b .L_8022BB28
L_8022BA90:
    li 30, 0x0
    li 31, 0x0
L_8022BA98:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022BAAC
    li 0, 0x0
    .4byte 0x48000040 # b .L_8022BAE8
L_8022BAAC:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022BABC
    li 0, 0x0
    .4byte 0x48000030 # b .L_8022BAE8
L_8022BABC:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022BACC
    li 0, 0x0
    .4byte 0x48000020 # b .L_8022BAE8
L_8022BACC:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022BAE4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022BAE8
L_8022BAE4:
    lbz 0, 0xcac(4)
L_8022BAE8:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_8022BB14
    addi 0, 31, 0x4
    mr 4, 28
    lwzx 3, 3, 0
    mr 5, 29
    bl fn_80241DD0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8022BB14
    li 3, 0x1
    .4byte 0x48000018 # b .L_8022BB28
L_8022BB14:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF78 # blt .L_8022BA98
    li 3, 0x0
L_8022BB28:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

