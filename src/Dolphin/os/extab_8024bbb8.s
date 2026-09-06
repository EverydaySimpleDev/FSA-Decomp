# Fresh project-wide gap hunt continuation: 39 functions, 13,616 bytes,
# fully contiguous. Found+verified via the fixed spanwalk3.py/
# resolvefiles2.py (recognizes any symbol name, not just fn_/dtor_
# prefix). All referenced small-data symbols are private to this
# landing's own functions (verified via grep - not shared with any
# other already-landed file), so this does NOT carry the .sbss
# ordering risk documented for the deferred 0x80047258 candidate.

.section extab, "a"
.balign 4
.global etb_8000B550
etb_8000B550:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000B550, 8

.global etb_8000B558
etb_8000B558:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000B558, 8

.global etb_8000B560
etb_8000B560:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000B560, 8

.global etb_8000B568
etb_8000B568:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000B568, 8

.global etb_8000B570
etb_8000B570:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000B570, 8

.global etb_8000B578
etb_8000B578:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_8000B578, 8

.global etb_8000B580
etb_8000B580:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B580, 8

.global etb_8000B588
etb_8000B588:
    .4byte 0x48080000
    .4byte 0x00000000
.size etb_8000B588, 8

.global etb_8000B590
etb_8000B590:
    .4byte 0x500A0000
    .4byte 0x00000000
.size etb_8000B590, 8

.global etb_8000B598
etb_8000B598:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B598, 8

.global etb_8000B5A0
etb_8000B5A0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B5A0, 8

.global etb_8000B5A8
etb_8000B5A8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B5A8, 8

.global etb_8000B5B0
etb_8000B5B0:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_8000B5B0, 8

.global etb_8000B5B8
etb_8000B5B8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000B5B8, 8

.global etb_8000B5C0
etb_8000B5C0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B5C0, 8

.global etb_8000B5C8
etb_8000B5C8:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000B5C8, 8

.global etb_8000B5D0
etb_8000B5D0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B5D0, 8

.global etb_8000B5D8
etb_8000B5D8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B5D8, 8

.global etb_8000B5E0
etb_8000B5E0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000B5E0, 8

.global etb_8000B5E8
etb_8000B5E8:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000B5E8, 8

.global etb_8000B5F0
etb_8000B5F0:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000B5F0, 8

.global etb_8000B5F8
etb_8000B5F8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B5F8, 8

.global etb_8000B600
etb_8000B600:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B600, 8

.global etb_8000B608
etb_8000B608:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B608, 8

.global etb_8000B610
etb_8000B610:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B610, 8

.global etb_8000B618
etb_8000B618:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B618, 8

.section extabindex, "a"
.balign 4
.global eti_80019AEC
eti_80019AEC:
    .4byte fn_8024BBB8
    .4byte 0x00000204
    .4byte etb_8000B550
.size eti_80019AEC, 12

.global eti_80019AF8
eti_80019AF8:
    .4byte fn_8024BDBC
    .4byte 0x000005A0
    .4byte etb_8000B558
.size eti_80019AF8, 12

.global eti_80019B04
eti_80019B04:
    .4byte fn_8024C378
    .4byte 0x000000D0
    .4byte etb_8000B560
.size eti_80019B04, 12

.global eti_80019B10
eti_80019B10:
    .4byte fn_8024C4C4
    .4byte 0x000000DC
    .4byte etb_8000B568
.size eti_80019B10, 12

.global eti_80019B1C
eti_80019B1C:
    .4byte fn_8024C5A0
    .4byte 0x00000288
    .4byte etb_8000B570
.size eti_80019B1C, 12

.global eti_80019B28
eti_80019B28:
    .4byte fn_8024C828
    .4byte 0x000001E4
    .4byte etb_8000B578
.size eti_80019B28, 12

.global eti_80019B34
eti_80019B34:
    .4byte fn_8024CA20
    .4byte 0x000000A8
    .4byte etb_8000B580
.size eti_80019B34, 12

.global eti_80019B40
eti_80019B40:
    .4byte fn_8024CAC8
    .4byte 0x00000258
    .4byte etb_8000B588
.size eti_80019B40, 12

.global eti_80019B4C
eti_80019B4C:
    .4byte fn_8024CD20
    .4byte 0x00000338
    .4byte etb_8000B590
.size eti_80019B4C, 12

.global eti_80019B58
eti_80019B58:
    .4byte fn_8024D058
    .4byte 0x000000DC
    .4byte etb_8000B598
.size eti_80019B58, 12

.global eti_80019B64
eti_80019B64:
    .4byte fn_8024D134
    .4byte 0x00000858
    .4byte etb_8000B5A0
.size eti_80019B64, 12

.global eti_80019B70
eti_80019B70:
    .4byte fn_8024D99C
    .4byte 0x000000C8
    .4byte etb_8000B5A8
.size eti_80019B70, 12

.global eti_80019B7C
eti_80019B7C:
    .4byte fn_8024DA64
    .4byte 0x0000019C
    .4byte etb_8000B5B0
.size eti_80019B7C, 12

.global eti_80019B88
eti_80019B88:
    .4byte fn_8024DC00
    .4byte 0x000000D0
    .4byte etb_8000B5B8
.size eti_80019B88, 12

.global eti_80019B94
eti_80019B94:
    .4byte fn_8024DCD0
    .4byte 0x00000348
    .4byte etb_8000B5C0
.size eti_80019B94, 12

.global eti_80019BA0
eti_80019BA0:
    .4byte fn_8024E0A0
    .4byte 0x000002A4
    .4byte etb_8000B5C8
.size eti_80019BA0, 12

.global eti_80019BAC
eti_80019BAC:
    .4byte fn_8024E344
    .4byte 0x00000094
    .4byte etb_8000B5D0
.size eti_80019BAC, 12

.global eti_80019BB8
eti_80019BB8:
    .4byte fn_8024E3D8
    .4byte 0x00000094
    .4byte etb_8000B5D8
.size eti_80019BB8, 12

.global eti_80019BC4
eti_80019BC4:
    .4byte fn_8024E46C
    .4byte 0x00000094
    .4byte etb_8000B5E0
.size eti_80019BC4, 12

.global eti_80019BD0
eti_80019BD0:
    .4byte fn_8024E500
    .4byte 0x00000194
    .4byte etb_8000B5E8
.size eti_80019BD0, 12

.global eti_80019BDC
eti_80019BDC:
    .4byte fn_8024E694
    .4byte 0x00000638
    .4byte etb_8000B5F0
.size eti_80019BDC, 12

.global eti_80019BE8
eti_80019BE8:
    .4byte fn_8024ECCC
    .4byte 0x00000080
    .4byte etb_8000B5F8
.size eti_80019BE8, 12

.global eti_80019BF4
eti_80019BF4:
    .4byte fn_8024ED4C
    .4byte 0x000000C0
    .4byte etb_8000B600
.size eti_80019BF4, 12

.global eti_80019C00
eti_80019C00:
    .4byte fn_8024EE24
    .4byte 0x0000017C
    .4byte etb_8000B608
.size eti_80019C00, 12

.global eti_80019C0C
eti_80019C0C:
    .4byte fn_8024EFA0
    .4byte 0x00000058
    .4byte etb_8000B610
.size eti_80019C0C, 12

.global eti_80019C18
eti_80019C18:
    .4byte fn_8024EFF8
    .4byte 0x000000F0
    .4byte etb_8000B618
.size eti_80019C18, 12

.text
.balign 4
.global fn_8024BBB8
.global fn_8024BDBC
.global fn_8024C35C
.global fn_8024C378
.global fn_8024C448
.global fn_8024C458
.global fn_8024C460
.global fn_8024C4C4
.global fn_8024C5A0
.global fn_8024C828
.global fn_8024CA0C
.global fn_8024CA20
.global fn_8024CAC8
.global fn_8024CD20
.global fn_8024D058
.global fn_8024D134
.global fn_8024D98C
.global fn_8024D99C
.global fn_8024DA64
.global fn_8024DC00
.global fn_8024DCD0
.global fn_8024E018
.global fn_8024E020
.global fn_8024E03C
.global fn_8024E060
.global fn_8024E0A0
.global fn_8024E344
.global fn_8024E3D8
.global fn_8024E46C
.global fn_8024E500
.global fn_8024E694
.global fn_8024ECCC
.global fn_8024ED4C
.global fn_8024EE0C
.global fn_8024EE14
.global fn_8024EE1C
.global fn_8024EE24
.global fn_8024EFA0
.global fn_8024EFF8

fn_8024BBB8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 31, 3
    bl fn_80270C88
    clrlwi. 0, 3, 24
    .4byte 0x408201B4 # bne .L_8024BD98
    lwz 3, 0x1240(31)
    cmpwi 3, 0x3f
    .4byte 0x418201A8 # beq .L_8024BD98
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8024BC00
    .4byte 0x4800019C # b .L_8024BD98
L_8024BC00:
    lbz 0, 0xb9a(31)
    cmplwi 0, 0x0
    .4byte 0x40820188 # bne .L_8024BD90
    lbz 0, 0xcf0(31)
    cmplwi 0, 0x0
    .4byte 0x4082017C # bne .L_8024BD90
    cmpwi 3, 0x3c
    .4byte 0x41820174 # beq .L_8024BD90
    lwz 0, 0x1244(31)
    cmpwi 0, 0x3c
    .4byte 0x41820168 # beq .L_8024BD90
    li 29, 0x0
L_8024BC30:
    lwz 3, 0x4(31)
    mr 4, 29
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x40820144 # bne .L_8024BD84
    mr 3, 29
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820134 # beq .L_8024BD84
    lwz 30, 0x3b4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820120 # bne .L_8024BD84
    .4byte 0xC3E2D0C8 # lfs f31, lbl_80540068@sda21(r0)
    bl IsPoseOverrideEligible
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8024BC80
    .4byte 0xC3E2D0CC # lfs f31, lbl_8054006C@sda21(r0)
    .4byte 0x4800001C # b .L_8024BC98
L_8024BC80:
    mr 3, 29
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x4180000C # blt .L_8024BC98
    .4byte 0xC002D0AC # lfs f0, lbl_8054004C@sda21(r0)
    fmuls 31, 31, 0
L_8024BC98:
    mr 3, 29
    bl fn_8023A478
    psq_l 1, 0x0(3), 0, 0
    psq_l 2, 0x8(31), 0, 0
    lfs 0, 0x8(3)
    ps_sub 4, 1, 2
    psq_st 1, 0x8(1), 0, 0
    psq_l 1, 0x10(31), 1, 0
    stfs 0, 0x10(1)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    psq_st 4, 0x14(1), 0, 0
    psq_l 2, 0x10(1), 1, 0
    lfs 6, 0x14(1)
    lfs 5, 0x18(1)
    ps_sub 3, 2, 1
    fmuls 2, 6, 6
    psq_st 4, 0x8(1), 0, 0
    fmuls 1, 5, 5
    psq_st 3, 0x10(1), 1, 0
    fadds 4, 2, 1
    lfs 1, 0x10(1)
    stfs 1, 0x1c(1)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8024BD00
    .4byte 0x48000028 # b .L_8024BD24
L_8024BD00:
    frsqrte 3, 4
    .4byte 0xC042D0A4 # lfs f2, lbl_80540044@sda21(r0)
    .4byte 0xC002D0A8 # lfs f0, lbl_80540048@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_8024BD24:
    fcmpo cr0, 4, 31
    .4byte 0x4080005C # bge .L_8024BD84
    mr 3, 31
    li 4, 0x3f
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_8024BD90
    li 3, 0x3f
    li 0, 0x1
    stw 3, 0x1244(31)
    stb 0, 0x124c(31)
    stb 0, 0x124d(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800034 # bge .L_8024BD90
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8024BD90
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8024BD90
    li 0, 0x0
    stb 0, 0xcfe(31)
    .4byte 0x48000010 # b .L_8024BD90
L_8024BD84:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FEA4 # blt .L_8024BC30
L_8024BD90:
    li 0, 0x0
    stb 0, 0xb9d(31)
L_8024BD98:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8024BDBC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 31, 3
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x40820570 # bne .L_8024C348
    li 29, 0x0
    mr 30, 29
L_8024BDE4:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4082000C # bne .L_8024BDF8
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024BE58
L_8024BDF8:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024BE48
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024BE2C
    mr 3, 30
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024BE58
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024BE58
L_8024BE2C:
    lwz 28, 0x4(31)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024BE58
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024BE58
L_8024BE48:
    lwz 0, 0xd60(31)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_8024BE58
    addi 29, 29, 0x1
L_8024BE58:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_8024BDE4
    cmpwi 29, 0x2
    .4byte 0x408004E0 # bge .L_8024C348
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x418204D0 # beq .L_8024C348
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024BE90
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024BEE4
L_8024BE90:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024BEA4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024BEE4
L_8024BEA4:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024BEB8
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024BEE4
L_8024BEB8:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024BECC
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024BEE4
L_8024BECC:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024BEE0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024BEE4
L_8024BEE0:
    li 0, 0x1
L_8024BEE4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024BEF4
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024C034
L_8024BEF4:
    li 29, 0x0
    mr 28, 29
L_8024BEFC:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024BF10
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024BF70
L_8024BF10:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024BF60
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024BF44
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024BF70
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024BF70
L_8024BF44:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_8024BF70
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024BF70
L_8024BF60:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024BF70
    addi 29, 29, 0x1
L_8024BF70:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8024BEFC
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024BF8C
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024BFA4
L_8024BF8C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024BFA0
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024BFA4
L_8024BFA0:
    lwz 3, 0x120c(31)
L_8024BFA4:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024C01C
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024BFC4
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024BFC8
L_8024BFC4:
    lwz 30, 0x1224(31)
L_8024BFC8:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024BFDC
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024C014
L_8024BFDC:
    li 28, 0x0
    mr 29, 28
    .4byte 0x48000020 # b .L_8024C004
L_8024BFE8:
    lwz 27, 0xd60(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_8024C000
    addi 28, 28, 0x1
L_8024C000:
    addi 29, 29, 0x1
L_8024C004:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4180FFDC # blt .L_8024BFE8
    addi 0, 28, 0x1
L_8024C014:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_8024C028
L_8024C01C:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024C030
L_8024C028:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024C034
L_8024C030:
    li 0, 0x1
L_8024C034:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024C044
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024C05C
L_8024C044:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x40
    bl fn_80309D24
L_8024C05C:
    cmplwi 3, 0x0
    .4byte 0x418202E8 # beq .L_8024C348
    lwz 4, 0x3b4(31)
    cmpwi 4, 0x8
    .4byte 0x4080001C # bge .L_8024C088
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0x8
    li 6, 0x5
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    .4byte 0x48000090 # b .L_8024C114
L_8024C088:
    .4byte 0x40820074 # bne .L_8024C0FC
    lfs 0, 0x8(31)
    stfs 0, 0x14(1)
    lfs 0, 0xc(31)
    stfs 0, 0x18(1)
    lfs 0, 0x10(31)
    stfs 0, 0x1c(1)
    bl GetRoomConfigRecord
    lfs 2, 0xd0(3)
    addi 5, 1, 0x14
    lfs 1, 0xcc(3)
    li 4, 0x0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    li 6, 0x5
    stfs 1, 0x8(1)
    psq_l 3, 0x0(5), 0, 0
    stfs 2, 0xc(1)
    psq_l 1, 0x8(5), 1, 0
    stfs 0, 0x10(1)
    psq_l 2, 0x8(1), 0, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 2, 3, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    ps_add 0, 1, 0
    psq_st 2, 0x0(5), 0, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 3, 0x30(3)
    bl fn_8015F8FC
    .4byte 0x4800001C # b .L_8024C114
L_8024C0FC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 5, 31, 0xcb0
    li 4, 0x0
    li 6, 0x5
    lwz 3, 0x30(3)
    bl fn_8015F8FC
L_8024C114:
    lbz 0, 0xc80(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024C128
    li 0, 0x0
    .4byte 0x48000058 # b .L_8024C17C
L_8024C128:
    lbz 0, 0xcee(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024C13C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024C17C
L_8024C13C:
    lbz 0, 0x1215(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024C150
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024C17C
L_8024C150:
    lbz 0, 0xca0(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024C164
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024C17C
L_8024C164:
    lbz 0, 0xce9(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024C178
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024C17C
L_8024C178:
    li 0, 0x1
L_8024C17C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024C18C
    li 0, 0x0
    .4byte 0x48000144 # b .L_8024C2CC
L_8024C18C:
    li 29, 0x0
    mr 28, 29
L_8024C194:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4082000C # bne .L_8024C1A8
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024C208
L_8024C1A8:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024C1F8
    lwz 27, 0xd60(31)
    cmpwi 27, 0x0
    .4byte 0x4180001C # blt .L_8024C1DC
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820038 # bne .L_8024C208
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024C208
L_8024C1DC:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x4082001C # bne .L_8024C208
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024C208
L_8024C1F8:
    lwz 0, 0xd60(31)
    cmpw 28, 0
    .4byte 0x40820008 # bne .L_8024C208
    addi 29, 29, 0x1
L_8024C208:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_8024C194
    cmpwi 29, 0x1
    .4byte 0x4181000C # bgt .L_8024C224
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024C23C
L_8024C224:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024C238
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024C23C
L_8024C238:
    lwz 3, 0x120c(31)
L_8024C23C:
    cmpwi 3, 0x4
    .4byte 0x40820074 # bne .L_8024C2B4
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024C25C
    bl fn_80234004
    mr 30, 3
    .4byte 0x48000008 # b .L_8024C260
L_8024C25C:
    lwz 30, 0x1224(31)
L_8024C260:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024C274
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024C2AC
L_8024C274:
    li 29, 0x0
    mr 28, 29
    .4byte 0x48000020 # b .L_8024C29C
L_8024C280:
    lwz 27, 0xd60(31)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 27, 3
    .4byte 0x40820008 # bne .L_8024C298
    addi 29, 29, 0x1
L_8024C298:
    addi 28, 28, 0x1
L_8024C29C:
    lwz 0, 0x4(31)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_8024C280
    addi 0, 29, 0x1
L_8024C2AC:
    cmpw 30, 0
    .4byte 0x40820010 # bne .L_8024C2C0
L_8024C2B4:
    lbz 0, 0x11ea(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024C2C8
L_8024C2C0:
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024C2CC
L_8024C2C8:
    li 0, 0x1
L_8024C2CC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024C2DC
    li 3, 0x0
    .4byte 0x4800001C # b .L_8024C2F4
L_8024C2DC:
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x40
    bl fn_80309D6C
L_8024C2F4:
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_8024C348
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8024C320
    lwz 3, 0x4(31)
    bl fn_8030381C
L_8024C320:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8024C334
    lwz 3, 0x4(31)
    bl fn_8030381C
L_8024C334:
    lwz 0, 0x4(31)
    li 4, 0x1e
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
L_8024C348:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8024C35C:
    lwz 5, 0x3b4(3)
    li 0, 0x8
    srwi 3, 0, 31
    srawi 4, 5, 31
    subfc 0, 0, 5
    adde 3, 4, 3
    blr

fn_8024C378:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stfd 30, 0x10(1)
    psq_st 30, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40820074 # bne .L_8024C41C
    bl GetRoomConfigRecord
    lfs 31, 0xcc(3)
    lfs 30, 0xd0(3)
    lwz 31, 0x3b4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_8024C3D0
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_8024C3D4
L_8024C3D0:
    addi 4, 3, 0xdc
L_8024C3D4:
    lfs 0, 0x0(4)
    addi 3, 30, 0x1268
    lfs 3, 0x4(4)
    lfs 2, 0x8(30)
    fsubs 1, 31, 0
    fsubs 0, 30, 3
    stfs 2, 0x1268(30)
    lfs 2, 0xc(30)
    stfs 2, 0x126c(30)
    lfs 2, 0x10(30)
    stfs 2, 0x1270(30)
    lfs 2, 0x1268(30)
    fadds 1, 2, 1
    stfs 1, 0x1268(30)
    lfs 1, 0x126c(30)
    fadds 0, 1, 0
    stfs 0, 0x126c(30)
    .4byte 0x48000008 # b .L_8024C420
L_8024C41C:
    addi 3, 30, 0x8
L_8024C420:
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    psq_l 30, 0x18(1), 0, 0
    lfd 30, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x34(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8024C448:
    lwz 0, 0xd40(3)
    srwi 0, 0, 31
    xori 3, 0, 0x1
    blr

fn_8024C458:
    lbz 3, 0xd4c(3)
    blr

fn_8024C460:
    lbz 0, 0xd4c(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024C474
    li 3, 0x1
    blr
L_8024C474:
    lwz 0, 0xd44(3)
    cmpw 0, 4
    .4byte 0x4182000C # beq .L_8024C488
    li 3, 0x1
    blr
L_8024C488:
    li 4, -0x1
    li 0, 0x0
    stw 4, 0xd44(3)
    stw 4, 0xd3c(3)
    stb 0, 0xd4c(3)
    stb 0, 0xd4d(3)
    lwz 0, 0xd74(3)
    cmpwi 0, 0x3
    .4byte 0x4080000C # bge .L_8024C4B4
    li 0, 0x3
    stw 0, 0xd74(3)
L_8024C4B4:
    li 0, 0x14
    stw 0, 0xd50(3)
    li 3, 0x1
    blr

fn_8024C4C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lbz 0, 0xd4c(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024C4F4
    li 3, 0x0
    .4byte 0x48000098 # b .L_8024C588
L_8024C4F4:
    li 0, 0x1
    stb 0, 0xd4c(30)
    stw 31, 0xd44(30)
    stb 0, 0xd4d(30)
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8024C528
    lfs 1, 0xc(3)
    lfs 0, 0x8(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800034 # bge .L_8024C558
L_8024C528:
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(30)
    lis 4, 0x5045
    lwz 5, 0x3b4(30)
    addi 4, 4, 0x4646
    clrlwi 0, 0, 30
    addi 6, 30, 0x8
    ori 7, 0, 0x18
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000030 # b .L_8024C584
L_8024C558:
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(30)
    lis 4, 0x5045
    lwz 5, 0x3b4(30)
    addi 4, 4, 0x4646
    clrlwi 0, 0, 30
    addi 6, 30, 0x8
    ori 7, 0, 0x1c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8024C584:
    li 3, 0x1
L_8024C588:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024C5A0:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x1
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    mr 31, 4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(30)
    lbz 3, 0x82(3)
    slw 0, 5, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_8024C5E8
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8024C5E8
    .4byte 0x48000144 # b .L_8024C728
L_8024C5E8:
    li 28, 0x0
    mr 27, 28
L_8024C5F0:
    lwz 0, 0x4(30)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024C604
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024C664
L_8024C604:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024C654
    lwz 26, 0xd60(30)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024C638
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024C664
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024C664
L_8024C638:
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_8024C664
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024C664
L_8024C654:
    lwz 0, 0xd60(30)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024C664
    addi 28, 28, 0x1
L_8024C664:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024C5F0
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024C680
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024C698
L_8024C680:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024C694
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024C698
L_8024C694:
    lwz 3, 0x120c(30)
L_8024C698:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8024C71C
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024C6B8
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024C6BC
L_8024C6B8:
    lwz 29, 0x1224(30)
L_8024C6BC:
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024C6D0
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024C708
L_8024C6D0:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_8024C6F8
L_8024C6DC:
    lwz 26, 0xd60(30)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024C6F4
    addi 27, 27, 0x1
L_8024C6F4:
    addi 28, 28, 0x1
L_8024C6F8:
    lwz 0, 0x4(30)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_8024C6DC
    addi 0, 27, 0x1
L_8024C708:
    subf 3, 29, 0
    subf 0, 0, 29
    or 0, 3, 0
    srwi 5, 0, 31
    .4byte 0x48000010 # b .L_8024C728
L_8024C71C:
    lwz 0, 0xd60(30)
    srwi 0, 0, 31
    xori 5, 0, 0x1
L_8024C728:
    clrlwi. 0, 5, 24
    .4byte 0x4182000C # beq .L_8024C738
    li 0, 0x0
    .4byte 0x48000044 # b .L_8024C778
L_8024C738:
    lbz 0, 0x1216(30)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024C74C
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024C778
L_8024C74C:
    lbz 0, 0xd4c(30)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024C760
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024C778
L_8024C760:
    lwz 0, 0xd44(30)
    cmpw 0, 31
    .4byte 0x4182000C # beq .L_8024C774
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024C778
L_8024C774:
    li 0, 0x1
L_8024C778:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024C788
    li 3, 0x0
    .4byte 0x48000090 # b .L_8024C814
L_8024C788:
    li 0, 0x1
    stb 0, 0xd4c(30)
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8024C7B4
    lfs 1, 0xc(3)
    lfs 0, 0x8(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800034 # bge .L_8024C7E4
L_8024C7B4:
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(30)
    lis 4, 0x5045
    lwz 5, 0x3b4(30)
    addi 4, 4, 0x4646
    clrlwi 0, 0, 30
    addi 6, 30, 0x8
    ori 7, 0, 0x18
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000030 # b .L_8024C810
L_8024C7E4:
    bl SpatialRegistry_GetBase
    lwz 0, 0x4(30)
    lis 4, 0x5045
    lwz 5, 0x3b4(30)
    addi 4, 4, 0x4646
    clrlwi 0, 0, 30
    addi 6, 30, 0x8
    ori 7, 0, 0x1c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8024C810:
    li 3, 0x1
L_8024C814:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024C828:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x1
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 30, 3
    mr 31, 4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(30)
    lbz 3, 0x82(3)
    slw 0, 5, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_8024C870
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8024C870
    .4byte 0x48000144 # b .L_8024C9B0
L_8024C870:
    li 28, 0x0
    mr 27, 28
L_8024C878:
    lwz 0, 0x4(30)
    cmpw 27, 0
    .4byte 0x4082000C # bne .L_8024C88C
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_8024C8EC
L_8024C88C:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024C8DC
    lwz 26, 0xd60(30)
    cmpwi 26, 0x0
    .4byte 0x4180001C # blt .L_8024C8C0
    mr 3, 27
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820038 # bne .L_8024C8EC
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_8024C8EC
L_8024C8C0:
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 29, 3
    .4byte 0x4082001C # bne .L_8024C8EC
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_8024C8EC
L_8024C8DC:
    lwz 0, 0xd60(30)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_8024C8EC
    addi 28, 28, 0x1
L_8024C8EC:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_8024C878
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_8024C908
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024C920
L_8024C908:
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024C91C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024C920
L_8024C91C:
    lwz 3, 0x120c(30)
L_8024C920:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8024C9A4
    lwz 3, 0xd60(30)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024C940
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024C944
L_8024C940:
    lwz 29, 0x1224(30)
L_8024C944:
    lwz 0, 0xd60(30)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024C958
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024C990
L_8024C958:
    li 27, 0x0
    mr 28, 27
    .4byte 0x48000020 # b .L_8024C980
L_8024C964:
    lwz 26, 0xd60(30)
    mr 3, 28
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x40820008 # bne .L_8024C97C
    addi 27, 27, 0x1
L_8024C97C:
    addi 28, 28, 0x1
L_8024C980:
    lwz 0, 0x4(30)
    cmpw 28, 0
    .4byte 0x4180FFDC # blt .L_8024C964
    addi 0, 27, 0x1
L_8024C990:
    subf 3, 29, 0
    subf 0, 0, 29
    or 0, 3, 0
    srwi 5, 0, 31
    .4byte 0x48000010 # b .L_8024C9B0
L_8024C9A4:
    lwz 0, 0xd60(30)
    srwi 0, 0, 31
    xori 5, 0, 0x1
L_8024C9B0:
    clrlwi. 0, 5, 24
    .4byte 0x4182000C # beq .L_8024C9C0
    li 3, 0x0
    .4byte 0x4800003C # b .L_8024C9F8
L_8024C9C0:
    lbz 0, 0x1216(30)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024C9D4
    li 3, 0x0
    .4byte 0x48000028 # b .L_8024C9F8
L_8024C9D4:
    lbz 0, 0xd4c(30)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024C9E8
    li 3, 0x0
    .4byte 0x48000014 # b .L_8024C9F8
L_8024C9E8:
    lwz 0, 0xd44(30)
    subf 0, 0, 31
    cntlzw 0, 0
    srwi 3, 0, 5
L_8024C9F8:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024CA0C:
    lwz 0, 0xd44(3)
    subf 0, 0, 4
    cntlzw 0, 0
    srwi 3, 0, 5
    blr

fn_8024CA20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xd50(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8024CA48
    subi 0, 3, 0x1
    stw 0, 0xd50(31)
L_8024CA48:
    lbz 0, 0xd4d(31)
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_8024CAA4
    lwz 0, 0xd3c(31)
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_8024CA74
    li 3, -0x1
    li 0, 0x0
    stw 3, 0xd44(31)
    stb 0, 0xd4c(31)
    .4byte 0x48000034 # b .L_8024CAA4
L_8024CA74:
    lwz 0, 0xd44(31)
    cmpwi 0, 0x0
    .4byte 0x40800028 # bge .L_8024CAA4
    lbz 0, 0xd4e(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8024CA9C
    lwz 3, 0x4(31)
    bl fn_8022C1D8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8024CAA4
L_8024CA9C:
    lwz 0, 0xd3c(31)
    stw 0, 0xd44(31)
L_8024CAA4:
    lwz 3, 0xd3c(31)
    li 0, -0x1
    stw 3, 0xd40(31)
    stw 0, 0xd3c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024CAC8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 27, 3
    mr 28, 4
    mr 29, 5
    mr 30, 6
    mr 31, 7
    lwz 0, 0xd50(3)
    cmpwi 0, 0x0
    .4byte 0x41810218 # bgt .L_8024CD0C
    lwz 0, 0xd44(27)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8024CB0C
    cmpw 0, 29
    .4byte 0x40820204 # bne .L_8024CD0C
L_8024CB0C:
    lwz 0, 0xd3c(27)
    cmpwi 0, 0x0
    .4byte 0x408001F8 # bge .L_8024CD0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(27)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_8024CB48
    lwz 0, 0xd60(27)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8024CB48
    .4byte 0x48000144 # b .L_8024CC88
L_8024CB48:
    li 25, 0x0
    mr 24, 25
L_8024CB50:
    lwz 0, 0x4(27)
    cmpw 24, 0
    .4byte 0x4082000C # bne .L_8024CB64
    addi 25, 25, 0x1
    .4byte 0x48000064 # b .L_8024CBC4
L_8024CB64:
    mr 3, 24
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024CBB4
    lwz 23, 0xd60(27)
    cmpwi 23, 0x0
    .4byte 0x4180001C # blt .L_8024CB98
    mr 3, 24
    bl fn_8022F3DC
    cmpw 23, 3
    .4byte 0x40820038 # bne .L_8024CBC4
    addi 25, 25, 0x1
    .4byte 0x48000030 # b .L_8024CBC4
L_8024CB98:
    lwz 26, 0x4(27)
    mr 3, 24
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082001C # bne .L_8024CBC4
    addi 25, 25, 0x1
    .4byte 0x48000014 # b .L_8024CBC4
L_8024CBB4:
    lwz 0, 0xd60(27)
    cmpw 24, 0
    .4byte 0x40820008 # bne .L_8024CBC4
    addi 25, 25, 0x1
L_8024CBC4:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FF84 # blt .L_8024CB50
    cmpwi 25, 0x1
    .4byte 0x4181000C # bgt .L_8024CBE0
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024CBF8
L_8024CBE0:
    lwz 3, 0xd60(27)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024CBF4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024CBF8
L_8024CBF4:
    lwz 3, 0x120c(27)
L_8024CBF8:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8024CC7C
    lwz 3, 0xd60(27)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024CC18
    bl fn_80234004
    mr 26, 3
    .4byte 0x48000008 # b .L_8024CC1C
L_8024CC18:
    lwz 26, 0x1224(27)
L_8024CC1C:
    lwz 0, 0xd60(27)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024CC30
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024CC68
L_8024CC30:
    li 24, 0x0
    mr 25, 24
    .4byte 0x48000020 # b .L_8024CC58
L_8024CC3C:
    lwz 23, 0xd60(27)
    mr 3, 25
    bl fn_8022F3DC
    cmpw 23, 3
    .4byte 0x40820008 # bne .L_8024CC54
    addi 24, 24, 0x1
L_8024CC54:
    addi 25, 25, 0x1
L_8024CC58:
    lwz 0, 0x4(27)
    cmpw 25, 0
    .4byte 0x4180FFDC # blt .L_8024CC3C
    addi 0, 24, 0x1
L_8024CC68:
    subf 3, 26, 0
    subf 0, 0, 26
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_8024CC88
L_8024CC7C:
    lwz 0, 0xd60(27)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_8024CC88:
    clrlwi. 0, 4, 24
    .4byte 0x40820080 # bne .L_8024CD0C
    lwz 0, 0x3b4(27)
    cmpw 28, 0
    .4byte 0x40820074 # bne .L_8024CD0C
    mr 3, 27
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x40820064 # bne .L_8024CD0C
    lbz 0, 0xce8(27)
    cmplwi 0, 0x0
    .4byte 0x40820058 # bne .L_8024CD0C
    lbz 0, 0x454(27)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8024CCEC
    lwz 0, 0x1240(27)
    li 3, 0x0
    cmpwi 0, 0xb
    .4byte 0x41820010 # beq .L_8024CCE0
    lwz 0, 0x1244(27)
    cmpwi 0, 0xb
    .4byte 0x40820008 # bne .L_8024CCE4
L_8024CCE0:
    li 3, 0x1
L_8024CCE4:
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8024CD0C
L_8024CCEC:
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8024CD04
    lwz 0, 0x3dc(27)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8024CD0C
L_8024CD04:
    stw 29, 0xd3c(27)
    stb 30, 0xd4e(27)
L_8024CD0C:
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8024CD20:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 22, 0x18(1)
    mr 26, 3
    mr 27, 4
    mr 28, 5
    mr 29, 6
    mr 30, 7
    mr 31, 8
    lwz 0, 0xd50(3)
    cmpwi 0, 0x0
    .4byte 0x418102F4 # bgt .L_8024D044
    lwz 0, 0xd44(26)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8024CD68
    cmpw 0, 29
    .4byte 0x408202E0 # bne .L_8024D044
L_8024CD68:
    lwz 0, 0xd3c(26)
    cmpwi 0, 0x0
    .4byte 0x408002D4 # bge .L_8024D044
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    lwz 0, 0x4(26)
    lbz 3, 0x82(3)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x40820014 # bne .L_8024CDA4
    lwz 0, 0xd60(26)
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8024CDA4
    .4byte 0x48000144 # b .L_8024CEE4
L_8024CDA4:
    li 24, 0x0
    mr 23, 24
L_8024CDAC:
    lwz 0, 0x4(26)
    cmpw 23, 0
    .4byte 0x4082000C # bne .L_8024CDC0
    addi 24, 24, 0x1
    .4byte 0x48000064 # b .L_8024CE20
L_8024CDC0:
    mr 3, 23
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024CE10
    lwz 22, 0xd60(26)
    cmpwi 22, 0x0
    .4byte 0x4180001C # blt .L_8024CDF4
    mr 3, 23
    bl fn_8022F3DC
    cmpw 22, 3
    .4byte 0x40820038 # bne .L_8024CE20
    addi 24, 24, 0x1
    .4byte 0x48000030 # b .L_8024CE20
L_8024CDF4:
    lwz 25, 0x4(26)
    mr 3, 23
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x4082001C # bne .L_8024CE20
    addi 24, 24, 0x1
    .4byte 0x48000014 # b .L_8024CE20
L_8024CE10:
    lwz 0, 0xd60(26)
    cmpw 23, 0
    .4byte 0x40820008 # bne .L_8024CE20
    addi 24, 24, 0x1
L_8024CE20:
    addi 23, 23, 0x1
    cmpwi 23, 0x4
    .4byte 0x4180FF84 # blt .L_8024CDAC
    cmpwi 24, 0x1
    .4byte 0x4181000C # bgt .L_8024CE3C
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024CE54
L_8024CE3C:
    lwz 3, 0xd60(26)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024CE50
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024CE54
L_8024CE50:
    lwz 3, 0x120c(26)
L_8024CE54:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8024CED8
    lwz 3, 0xd60(26)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024CE74
    bl fn_80234004
    mr 25, 3
    .4byte 0x48000008 # b .L_8024CE78
L_8024CE74:
    lwz 25, 0x1224(26)
L_8024CE78:
    lwz 0, 0xd60(26)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024CE8C
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024CEC4
L_8024CE8C:
    li 23, 0x0
    mr 24, 23
    .4byte 0x48000020 # b .L_8024CEB4
L_8024CE98:
    lwz 22, 0xd60(26)
    mr 3, 24
    bl fn_8022F3DC
    cmpw 22, 3
    .4byte 0x40820008 # bne .L_8024CEB0
    addi 23, 23, 0x1
L_8024CEB0:
    addi 24, 24, 0x1
L_8024CEB4:
    lwz 0, 0x4(26)
    cmpw 24, 0
    .4byte 0x4180FFDC # blt .L_8024CE98
    addi 0, 23, 0x1
L_8024CEC4:
    subf 3, 25, 0
    subf 0, 0, 25
    or 0, 3, 0
    srwi 4, 0, 31
    .4byte 0x48000010 # b .L_8024CEE4
L_8024CED8:
    lwz 0, 0xd60(26)
    srwi 0, 0, 31
    xori 4, 0, 0x1
L_8024CEE4:
    clrlwi. 0, 4, 24
    .4byte 0x4082015C # bne .L_8024D044
    lwz 0, 0x3b4(26)
    cmpw 28, 0
    .4byte 0x40820150 # bne .L_8024D044
    mr 3, 26
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x40820140 # bne .L_8024D044
    lbz 0, 0xce8(26)
    cmplwi 0, 0x0
    .4byte 0x40820134 # bne .L_8024D044
    lbz 0, 0x454(26)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_8024CF48
    lwz 0, 0x1240(26)
    li 3, 0x0
    cmpwi 0, 0xb
    .4byte 0x41820010 # beq .L_8024CF3C
    lwz 0, 0x1244(26)
    cmpwi 0, 0xb
    .4byte 0x40820008 # bne .L_8024CF40
L_8024CF3C:
    li 3, 0x1
L_8024CF40:
    clrlwi. 0, 3, 24
    .4byte 0x40820100 # bne .L_8024D044
L_8024CF48:
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8024CF60
    lwz 0, 0x3dc(26)
    cmpwi 0, 0x3
    .4byte 0x408200E8 # bne .L_8024D044
L_8024CF60:
    lwz 4, 0x3dc(26)
    lis 3, lbl_8046AE78@ha
    addi 0, 3, lbl_8046AE78@l
    psq_l 4, 0x8(26), 0, 0
    mulli 3, 4, 0xc
    psq_l 3, 0x10(26), 1, 0
    lfs 5, 0x0(27)
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    add 3, 0, 3
    lfs 1, 0x0(3)
    lfs 2, 0x4(3)
    stfs 1, 0x8(1)
    lfs 1, 0x8(3)
    stfs 2, 0xc(1)
    psq_l 2, 0x8(1), 0, 0
    stfs 1, 0x10(1)
    ps_add 2, 2, 4
    psq_l 1, 0x10(1), 1, 0
    psq_st 2, 0x8(1), 0, 0
    ps_add 1, 1, 3
    lfs 3, 0x8(1)
    psq_st 1, 0x10(1), 1, 0
    lfs 4, 0xc(1)
    fcmpo cr0, 3, 5
    fmr 1, 3
    stfs 0, 0x10(1)
    fmr 2, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8024CFD8
    fmr 1, 5
L_8024CFD8:
    lfs 0, 0x4(27)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8024CFEC
    fmr 2, 0
L_8024CFEC:
    lfs 0, 0x8(27)
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8024D000
    fmr 3, 0
L_8024D000:
    lfs 0, 0xc(27)
    fcmpo cr0, 4, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8024D014
    fmr 4, 0
L_8024D014:
    fcmpo cr0, 3, 1
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_8024D034
    fcmpo cr0, 4, 2
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8024D034
    li 0, 0x1
L_8024D034:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8024D044
    stw 29, 0xd3c(26)
    stb 30, 0xd4e(26)
L_8024D044:
    lmw 22, 0x18(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8024D058:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    clrlwi. 0, 4, 24
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x4182008C # beq .L_8024D0FC
    li 4, 0x0
    stb 4, 0x454(31)
    lbz 0, 0x1216(31)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_8024D108
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024D09C
    bl fn_8024B2E0
    .4byte 0x48000070 # b .L_8024D108
L_8024D09C:
    li 0, 0x31
    mr 5, 4
    mr 6, 31
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    li 3, 0x1
    mtctr 0
L_8024D0B4:
    lfs 1, 0x8(31)
    stfs 1, 0x38(6)
    lfs 1, 0xc(31)
    stfs 1, 0x3c(6)
    lfs 1, 0x10(31)
    stfs 1, 0x40(6)
    lfs 1, 0x10(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8024D0E4
    addi 0, 5, 0x284
    stbx 3, 31, 0
    .4byte 0x4800000C # b .L_8024D0EC
L_8024D0E4:
    addi 0, 5, 0x284
    stbx 4, 31, 0
L_8024D0EC:
    addi 6, 6, 0xc
    addi 5, 5, 0x1
    .4byte 0x4200FFC0 # bdnz .L_8024D0B4
    .4byte 0x48000010 # b .L_8024D108
L_8024D0FC:
    bl fn_8024B2E0
    li 0, 0x0
    stb 0, 0x454(31)
L_8024D108:
    li 0, 0xa
    mr 3, 31
    stw 0, 0xd74(31)
    stw 0, 0x11f0(31)
    bl fn_8024D134
    lwz 0, 0x14(1)
    li 3, 0x1
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024D134:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x4082080C # bne .L_8024D96C
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800800 # bge .L_8024D96C
    li 30, 0x0
    mr 29, 30
L_8024D178:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_8024D18C
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024D1EC
L_8024D18C:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D1DC
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D1C0
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D1EC
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024D1EC
L_8024D1C0:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D1EC
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024D1EC
L_8024D1DC:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024D1EC
    addi 30, 30, 0x1
L_8024D1EC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8024D178
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8024D208
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024D220
L_8024D208:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024D21C
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024D220
L_8024D21C:
    lwz 3, 0x120c(31)
L_8024D220:
    cmpwi 3, 0x5
    .4byte 0x41820748 # beq .L_8024D96C
    li 30, 0x0
    mr 29, 30
L_8024D230:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_8024D244
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024D2A4
L_8024D244:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D294
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D278
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D2A4
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024D2A4
L_8024D278:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D2A4
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024D2A4
L_8024D294:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024D2A4
    addi 30, 30, 0x1
L_8024D2A4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8024D230
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8024D2C0
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024D2D8
L_8024D2C0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024D2D4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024D2D8
L_8024D2D4:
    lwz 3, 0x120c(31)
L_8024D2D8:
    cmpwi 3, 0x4
    .4byte 0x40820008 # bne .L_8024D2E4
    .4byte 0x4800068C # b .L_8024D96C
L_8024D2E4:
    li 0, 0x0
    stb 0, 0x121d(31)
    lwz 0, 0x1388(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8024D310
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1388(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x1388(31)
L_8024D310:
    lfs 1, 0x8(31)
    li 30, 0x0
    .4byte 0xC002D094 # lfs f0, lbl_80540034@sda21(r0)
    mr 29, 30
    stfs 1, 0x8(1)
    lfs 1, 0xc(31)
    stfs 1, 0xc(1)
    lfs 1, 0x10(31)
    stfs 1, 0x10(1)
    stfs 0, 0x10(1)
L_8024D338:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_8024D34C
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024D3AC
L_8024D34C:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D39C
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D380
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D3AC
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024D3AC
L_8024D380:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D3AC
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024D3AC
L_8024D39C:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024D3AC
    addi 30, 30, 0x1
L_8024D3AC:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8024D338
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8024D3C8
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024D3E0
L_8024D3C8:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024D3DC
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024D3E0
L_8024D3DC:
    lwz 3, 0x120c(31)
L_8024D3E0:
    cmpwi 3, 0x2
    .4byte 0x4182031C # beq .L_8024D700
    .4byte 0x40800014 # bge .L_8024D3FC
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8024D408
    .4byte 0x40800190 # bge .L_8024D584
    .4byte 0x480003E0 # b .L_8024D7D8
L_8024D3FC:
    cmpwi 3, 0x4
    .4byte 0x408003D8 # bge .L_8024D7D8
    .4byte 0x4800031C # b .L_8024D720
L_8024D408:
    li 30, 0x0
    mr 29, 30
L_8024D410:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_8024D424
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024D484
L_8024D424:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D474
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D458
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D484
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024D484
L_8024D458:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D484
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024D484
L_8024D474:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024D484
    addi 30, 30, 0x1
L_8024D484:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8024D410
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8024D4A0
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024D4B8
L_8024D4A0:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024D4B4
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024D4B8
L_8024D4B4:
    lwz 3, 0x120c(31)
L_8024D4B8:
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_8024D4C8
    li 29, 0x1
    .4byte 0x4800008C # b .L_8024D550
L_8024D4C8:
    li 29, 0x0
    mr 30, 29
L_8024D4D0:
    lwz 0, 0x4(31)
    cmpw 30, 0
    .4byte 0x4082000C # bne .L_8024D4E4
    addi 29, 29, 0x1
    .4byte 0x48000064 # b .L_8024D544
L_8024D4E4:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D534
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D518
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D544
    addi 29, 29, 0x1
    .4byte 0x48000030 # b .L_8024D544
L_8024D518:
    lwz 28, 0x4(31)
    mr 3, 30
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D544
    addi 29, 29, 0x1
    .4byte 0x48000014 # b .L_8024D544
L_8024D534:
    lwz 0, 0xd60(31)
    cmpw 30, 0
    .4byte 0x40820008 # bne .L_8024D544
    addi 29, 29, 0x1
L_8024D544:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_8024D4D0
L_8024D550:
    subi 3, 29, 0x1
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x18(1)
    .4byte 0xC842D0C0 # lfd f2, lbl_80540060@sda21(r0)
    stw 3, 0x1c(1)
    .4byte 0xC062D0B0 # lfs f3, lbl_80540050@sda21(r0)
    lfd 1, 0x18(1)
    lfs 0, 0x8(1)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000258 # b .L_8024D7D8
L_8024D584:
    li 30, 0x0
    mr 29, 30
L_8024D58C:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_8024D5A0
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024D600
L_8024D5A0:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D5F0
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D5D4
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D600
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024D600
L_8024D5D4:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D600
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024D600
L_8024D5F0:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024D600
    addi 30, 30, 0x1
L_8024D600:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8024D58C
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8024D61C
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024D634
L_8024D61C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024D630
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024D634
L_8024D630:
    lwz 3, 0x120c(31)
L_8024D634:
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_8024D644
    li 30, 0x1
    .4byte 0x4800008C # b .L_8024D6CC
L_8024D644:
    li 30, 0x0
    mr 29, 30
L_8024D64C:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_8024D660
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024D6C0
L_8024D660:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D6B0
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D694
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D6C0
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024D6C0
L_8024D694:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D6C0
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024D6C0
L_8024D6B0:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024D6C0
    addi 30, 30, 0x1
L_8024D6C0:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8024D64C
L_8024D6CC:
    subi 3, 30, 0x1
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x18(1)
    .4byte 0xC842D0C0 # lfd f2, lbl_80540060@sda21(r0)
    stw 3, 0x1c(1)
    .4byte 0xC062D0B0 # lfs f3, lbl_80540050@sda21(r0)
    lfd 1, 0x18(1)
    lfs 0, 0xc(1)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x480000DC # b .L_8024D7D8
L_8024D700:
    lfs 1, 0x8(1)
    .4byte 0xC042D0B0 # lfs f2, lbl_80540050@sda21(r0)
    lfs 0, 0xc(1)
    fadds 1, 1, 2
    fadds 0, 0, 2
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x480000BC # b .L_8024D7D8
L_8024D720:
    lwz 3, 0x1240(31)
    li 0, 0x0
    cmpwi 3, 0x9
    .4byte 0x4182000C # beq .L_8024D738
    cmpwi 3, 0xa
    .4byte 0x40820008 # bne .L_8024D73C
L_8024D738:
    li 0, 0x1
L_8024D73C:
    clrlwi. 0, 0, 24
    .4byte 0x41820020 # beq .L_8024D760
    lfs 0, 0x11b4(31)
    stfs 0, 0x8(1)
    lfs 0, 0x11b8(31)
    stfs 0, 0xc(1)
    lfs 0, 0x11bc(31)
    stfs 0, 0x10(1)
    .4byte 0x4800007C # b .L_8024D7D8
L_8024D760:
    lwz 0, 0x4(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_8024D7B4
    .4byte 0x40800014 # bge .L_8024D780
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8024D78C
    .4byte 0x40800028 # bge .L_8024D7A0
    .4byte 0x4800005C # b .L_8024D7D8
L_8024D780:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_8024D7D8
    .4byte 0x48000040 # b .L_8024D7C8
L_8024D78C:
    lfs 1, 0xc(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x4800003C # b .L_8024D7D8
L_8024D7A0:
    lfs 1, 0x8(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000028 # b .L_8024D7D8
L_8024D7B4:
    lfs 1, 0x8(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000014 # b .L_8024D7D8
L_8024D7C8:
    lfs 1, 0xc(1)
    .4byte 0xC002D0D0 # lfs f0, lbl_80540070@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_8024D7D8:
    li 30, 0x0
    mr 29, 30
L_8024D7E0:
    lwz 0, 0x4(31)
    cmpw 29, 0
    .4byte 0x4082000C # bne .L_8024D7F4
    addi 30, 30, 0x1
    .4byte 0x48000064 # b .L_8024D854
L_8024D7F4:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024D844
    lwz 28, 0xd60(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_8024D828
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x40820038 # bne .L_8024D854
    addi 30, 30, 0x1
    .4byte 0x48000030 # b .L_8024D854
L_8024D828:
    lwz 28, 0x4(31)
    mr 3, 29
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024D854
    addi 30, 30, 0x1
    .4byte 0x48000014 # b .L_8024D854
L_8024D844:
    lwz 0, 0xd60(31)
    cmpw 29, 0
    .4byte 0x40820008 # bne .L_8024D854
    addi 30, 30, 0x1
L_8024D854:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8024D7E0
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8024D870
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024D888
L_8024D870:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024D884
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024D888
L_8024D884:
    lwz 3, 0x120c(31)
L_8024D888:
    cmpwi 3, 0x2
    .4byte 0x41820084 # beq .L_8024D910
    .4byte 0x40800014 # bge .L_8024D8A4
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8024D8B0
    .4byte 0x40800044 # bge .L_8024D8E0
    .4byte 0x480000CC # b .L_8024D96C
L_8024D8A4:
    cmpwi 3, 0x4
    .4byte 0x408000C4 # bge .L_8024D96C
    .4byte 0x48000094 # b .L_8024D940
L_8024D8B0:
    lwz 3, 0x3b4(31)
    addi 4, 1, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x35e
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1388(31)
    .4byte 0x48000090 # b .L_8024D96C
L_8024D8E0:
    lwz 3, 0x3b4(31)
    addi 4, 1, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x360
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1388(31)
    .4byte 0x48000060 # b .L_8024D96C
L_8024D910:
    lwz 3, 0x3b4(31)
    addi 4, 1, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x35f
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1388(31)
    .4byte 0x48000030 # b .L_8024D96C
L_8024D940:
    lwz 3, 0x3b4(31)
    addi 4, 1, 0x8
    .4byte 0xC022D090 # lfs f1, lbl_80540030@sda21(r0)
    li 5, 0x361
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1388(31)
L_8024D96C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8024D98C:
    li 0, 0x1
    stb 0, 0x455(3)
    li 3, 0x1
    blr

fn_8024D99C:
    stwu 1, -0x10(1)
    mflr 0
    psq_l 1, 0x0(4), 0, 0
    stw 0, 0x14(1)
    lfs 0, 0x8(4)
    psq_st 1, 0x32c(3), 0, 0
    stfs 0, 0x334(3)
    lhz 4, 0x452(3)
    addi 0, 4, 0x1
    sth 0, 0x452(3)
    lhz 0, 0x452(3)
    cmplwi 0, 0x18
    .4byte 0x4180000C # blt .L_8024D9D8
    li 0, 0x0
    sth 0, 0x452(3)
L_8024D9D8:
    lwz 0, 0x3dc(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8024D9F0
    li 0, 0x0
    sth 0, 0x450(3)
    .4byte 0x48000034 # b .L_8024DA20
L_8024D9F0:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8024DA04
    li 0, 0x8
    sth 0, 0x450(3)
    .4byte 0x48000020 # b .L_8024DA20
L_8024DA04:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8024DA18
    li 0, 0x10
    sth 0, 0x450(3)
    .4byte 0x4800000C # b .L_8024DA20
L_8024DA18:
    li 0, 0x18
    sth 0, 0x450(3)
L_8024DA20:
    lis 4, 0x5555
    lhz 0, 0x452(3)
    addi 4, 4, 0x5556
    lhz 6, 0x450(3)
    mulhw 4, 4, 0
    srwi 0, 4, 31
    add 0, 4, 0
    clrlwi 0, 0, 24
    add 0, 6, 0
    sth 0, 0x450(3)
    stb 5, 0xca2(3)
    bl fn_8024B2E0
    lwz 0, 0x14(1)
    li 3, 0x1
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024DA64:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 29, 3
    mr 30, 4
    mr 31, 5
    lwz 0, 0x1240(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024DA94
    li 3, 0x0
    .4byte 0x4800015C # b .L_8024DBEC
L_8024DA94:
    cmpwi 30, 0xe8
    .4byte 0x40820138 # bne .L_8024DBD0
    li 27, 0x0
    mr 26, 27
L_8024DAA4:
    lwz 0, 0x4(29)
    cmpw 26, 0
    .4byte 0x4082000C # bne .L_8024DAB8
    addi 27, 27, 0x1
    .4byte 0x48000064 # b .L_8024DB18
L_8024DAB8:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024DB08
    lwz 25, 0xd60(29)
    cmpwi 25, 0x0
    .4byte 0x4180001C # blt .L_8024DAEC
    mr 3, 26
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x40820038 # bne .L_8024DB18
    addi 27, 27, 0x1
    .4byte 0x48000030 # b .L_8024DB18
L_8024DAEC:
    lwz 28, 0x4(29)
    mr 3, 26
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024DB18
    addi 27, 27, 0x1
    .4byte 0x48000014 # b .L_8024DB18
L_8024DB08:
    lwz 0, 0xd60(29)
    cmpw 26, 0
    .4byte 0x40820008 # bne .L_8024DB18
    addi 27, 27, 0x1
L_8024DB18:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF84 # blt .L_8024DAA4
    cmpwi 27, 0x1
    .4byte 0x4181000C # bgt .L_8024DB34
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024DB4C
L_8024DB34:
    lwz 3, 0xd60(29)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024DB48
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024DB4C
L_8024DB48:
    lwz 3, 0x120c(29)
L_8024DB4C:
    cmpwi 3, 0x4
    .4byte 0x40820080 # bne .L_8024DBD0
    lwz 3, 0xd60(29)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024DB6C
    bl fn_80234004
    mr 28, 3
    .4byte 0x48000008 # b .L_8024DB70
L_8024DB6C:
    lwz 28, 0x1224(29)
L_8024DB70:
    lwz 0, 0xd60(29)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024DB84
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024DBBC
L_8024DB84:
    li 26, 0x0
    mr 27, 26
    .4byte 0x48000020 # b .L_8024DBAC
L_8024DB90:
    lwz 25, 0xd60(29)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 25, 3
    .4byte 0x40820008 # bne .L_8024DBA8
    addi 26, 26, 0x1
L_8024DBA8:
    addi 27, 27, 0x1
L_8024DBAC:
    lwz 0, 0x4(29)
    cmpw 27, 0
    .4byte 0x4180FFDC # blt .L_8024DB90
    addi 0, 26, 0x1
L_8024DBBC:
    cmpw 28, 0
    .4byte 0x41820010 # beq .L_8024DBD0
    li 0, 0x1c5
    sth 0, 0x450(29)
    .4byte 0x48000010 # b .L_8024DBDC
L_8024DBD0:
    cmpwi 30, 0x0
    .4byte 0x41800008 # blt .L_8024DBDC
    sth 30, 0x450(29)
L_8024DBDC:
    stb 31, 0xca2(29)
    li 0, 0x1
    li 3, 0x1
    stb 0, 0x456(29)
L_8024DBEC:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8024DC00:
    stwu 1, -0x30(1)
    mflr 0
    psq_l 1, 0x0(4), 0, 0
    stw 0, 0x34(1)
    lfs 0, 0x8(4)
    stw 31, 0x2c(1)
    mr. 31, 5
    stw 30, 0x28(1)
    mr 30, 3
    psq_st 1, 0x32c(30), 0, 0
    stfs 0, 0x334(3)
    .4byte 0x41800008 # blt .L_8024DC34
    sth 31, 0x450(30)
L_8024DC34:
    stb 6, 0xca2(30)
    clrlwi 0, 9, 24
    cmplwi 0, 0x1
    stb 7, 0xca3(30)
    stb 8, 0xca4(30)
    .4byte 0x4082005C # bne .L_8024DCA4
    lfs 0, 0x10(30)
    addi 3, 1, 0x14
    psq_l 1, 0x8(30), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x8(4), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x1c(1)
    bl PSVECMag
    .4byte 0xC002D0D4 # lfs f0, lbl_80540074@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8024DCA4
    mr 3, 30
    bl fn_8024B2E0
L_8024DCA4:
    cmpwi 31, 0xc3
    .4byte 0x4182000C # beq .L_8024DCB4
    li 0, 0x0
    stb 0, 0xcfe(30)
L_8024DCB4:
    lwz 0, 0x34(1)
    li 3, 0x1
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8024DCD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024DCF8
    li 0, 0x0
    .4byte 0x48000030 # b .L_8024DD24
L_8024DCF8:
    lbz 0, 0xce8(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024DD0C
    li 0, 0x0
    .4byte 0x4800001C # b .L_8024DD24
L_8024DD0C:
    lbz 0, 0x1216(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024DD20
    li 0, 0x0
    .4byte 0x48000008 # b .L_8024DD24
L_8024DD20:
    li 0, 0x1
L_8024DD24:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8024DD34
    li 3, 0x0
    .4byte 0x480002D4 # b .L_8024E004
L_8024DD34:
    lwz 0, 0x1240(31)
    cmpwi 0, 0x4f
    .4byte 0x408200AC # bne .L_8024DDE8
    mr 3, 31
    li 4, 0x0
    bl fn_80251BFC
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_8024DDE8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(31)
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x40820018 # bne .L_8024DD88
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024DD88
    stw 3, 0x1244(31)
    .4byte 0x48000030 # b .L_8024DDB4
L_8024DD88:
    lbz 0, 0x434(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8024DDAC
    lwz 0, 0x1240(31)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_8024DDE8
    li 0, 0x2
    stw 0, 0x1244(31)
    .4byte 0x4800000C # b .L_8024DDB4
L_8024DDAC:
    li 0, 0x0
    stw 0, 0x1244(31)
L_8024DDB4:
    li 0, 0x1
    stb 0, 0x124c(31)
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_8024DDE8
    lbz 0, 0xcfe(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8024DDE8
    lwz 0, 0x1244(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024DDE8
    li 0, 0x0
    stb 0, 0xcfe(31)
L_8024DDE8:
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x454(31)
    mr 3, 31
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(31)
    psq_st 1, 0x32c(31), 0, 0
    stfs 0, 0x334(31)
    stb 0, 0x455(31)
    lhz 0, 0x3c4(31)
    sth 0, 0x450(31)
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8024DE2C
    lhz 0, 0x3c4(31)
    sth 0, 0x450(31)
    .4byte 0x48000164 # b .L_8024DF8C
L_8024DE2C:
    mr 3, 31
    bl fn_8025F448
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8024DE48
    lhz 0, 0x3c4(31)
    sth 0, 0x450(31)
    .4byte 0x48000148 # b .L_8024DF8C
L_8024DE48:
    lwz 3, 0x1240(31)
    li 0, 0x0
    cmpwi 3, 0x4a
    .4byte 0x4182000C # beq .L_8024DE60
    cmpwi 3, 0x4b
    .4byte 0x40820008 # bne .L_8024DE64
L_8024DE60:
    li 0, 0x1
L_8024DE64:
    clrlwi. 0, 0, 24
    .4byte 0x41820050 # beq .L_8024DEB8
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8024DE84
    li 0, 0x1e8
    sth 0, 0x450(31)
    .4byte 0x4800010C # b .L_8024DF8C
L_8024DE84:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8024DE98
    li 0, 0x1ec
    sth 0, 0x450(31)
    .4byte 0x480000F8 # b .L_8024DF8C
L_8024DE98:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8024DEAC
    li 0, 0x1f0
    sth 0, 0x450(31)
    .4byte 0x480000E4 # b .L_8024DF8C
L_8024DEAC:
    li 0, 0x1f4
    sth 0, 0x450(31)
    .4byte 0x480000D8 # b .L_8024DF8C
L_8024DEB8:
    mr 3, 31
    bl fn_8025F684
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_8024DF14
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8024DEE0
    li 0, 0x2c0
    sth 0, 0x450(31)
    .4byte 0x480000B0 # b .L_8024DF8C
L_8024DEE0:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8024DEF4
    li 0, 0x2c4
    sth 0, 0x450(31)
    .4byte 0x4800009C # b .L_8024DF8C
L_8024DEF4:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8024DF08
    li 0, 0x2c8
    sth 0, 0x450(31)
    .4byte 0x48000088 # b .L_8024DF8C
L_8024DF08:
    li 0, 0x2cf
    sth 0, 0x450(31)
    .4byte 0x4800007C # b .L_8024DF8C
L_8024DF14:
    lwz 0, 0x1240(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_8024DF38
    lhz 0, 0x3c4(31)
    cmplwi 0, 0x1bf
    .4byte 0x41800010 # blt .L_8024DF3C
    cmplwi 0, 0x1c6
    .4byte 0x40800008 # bge .L_8024DF3C
L_8024DF38:
    li 3, 0x1
L_8024DF3C:
    clrlwi. 0, 3, 24
    .4byte 0x4082004C # bne .L_8024DF8C
    lwz 0, 0x3dc(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8024DF5C
    li 0, 0x3c
    sth 0, 0x450(31)
    .4byte 0x48000034 # b .L_8024DF8C
L_8024DF5C:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8024DF70
    li 0, 0x3d
    sth 0, 0x450(31)
    .4byte 0x48000020 # b .L_8024DF8C
L_8024DF70:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8024DF84
    li 0, 0x3e
    sth 0, 0x450(31)
    .4byte 0x4800000C # b .L_8024DF8C
L_8024DF84:
    li 0, 0x3f
    sth 0, 0x450(31)
L_8024DF8C:
    li 3, 0xff
    li 0, 0x0
    stb 3, 0xca2(31)
    mr 3, 31
    sth 0, 0x452(31)
    bl fn_80241E64
    bl SpatialRegistry_GetBase
    lwz 4, 0x1230(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8024DFCC
    li 4, 0x0
    li 0, -0x1
    stb 4, 0x11c(3)
    stw 0, 0x1230(31)
    .4byte 0x4800002C # b .L_8024DFF4
L_8024DFCC:
    lbz 0, 0x121f(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8024DFF4
    li 0, 0x0
    stb 0, 0x121f(31)
    lwz 0, 0x11f0(31)
    cmpwi 0, 0x5
    .4byte 0x4080000C # bge .L_8024DFF4
    li 0, 0x5
    stw 0, 0x11f0(31)
L_8024DFF4:
    li 0, 0x1
    li 3, 0x1
    stb 0, 0xcae(31)
    stb 0, 0xcaf(31)
L_8024E004:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024E018:
    addi 3, 3, 0x2b8
    blr

fn_8024E020:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x2b8(3)
    lfs 0, 0x8(4)
    stfs 1, 0x2bc(3)
    stfs 0, 0x2c0(3)
    blr

fn_8024E03C:
    lwz 0, 0x48c(3)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_8024E058
    li 0, 0x1
    stw 0, 0x48c(3)
    li 3, 0x1
    blr
L_8024E058:
    li 3, 0x0
    blr

fn_8024E060:
    lbz 0, 0x454(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024E074
    li 3, 0x0
    blr
L_8024E074:
    lbz 0, 0xce8(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8024E088
    li 3, 0x0
    blr
L_8024E088:
    lbz 4, 0x1216(3)
    subfic 3, 4, 0x1
    subi 0, 4, 0x1
    or 0, 3, 0
    srwi 3, 0, 31
    blr

fn_8024E0A0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stfd 30, 0x10(1)
    psq_st 30, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 31, 3
    lwz 3, 0x1264(3)
    addi 0, 3, 0x1
    stw 0, 0x1264(31)
    lwz 0, 0x1264(31)
    cmpwi 0, 0x3c
    .4byte 0x41800180 # blt .L_8024E25C
    li 3, 0x0
    stw 3, 0x1264(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_8024E144
    lwz 0, 0x4c(4)
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_8024E12C
    cmpwi 0, 0x8
    .4byte 0x41820024 # beq .L_8024E12C
    cmpwi 0, 0x9
    .4byte 0x4182001C # beq .L_8024E12C
    cmpwi 0, 0x16
    .4byte 0x41820014 # beq .L_8024E12C
    cmpwi 0, 0xa
    .4byte 0x4182000C # beq .L_8024E12C
    cmpwi 0, 0xb
    .4byte 0x40820008 # bne .L_8024E130
L_8024E12C:
    li 3, 0x1
L_8024E130:
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000054 # b .L_8024E194
L_8024E144:
    lwz 0, 0x4c(4)
    cmpwi 0, 0x7
    .4byte 0x41820034 # beq .L_8024E180
    cmpwi 0, 0x8
    .4byte 0x4182002C # beq .L_8024E180
    cmpwi 0, 0x9
    .4byte 0x41820024 # beq .L_8024E180
    cmpwi 0, 0x16
    .4byte 0x4182001C # beq .L_8024E180
    cmpwi 0, 0xa
    .4byte 0x41820014 # beq .L_8024E180
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_8024E180
    cmpwi 0, 0xc
    .4byte 0x40820008 # bne .L_8024E184
L_8024E180:
    li 3, 0x1
L_8024E184:
    clrlwi 3, 3, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8024E194:
    clrlwi. 0, 0, 24
    .4byte 0x418200C4 # beq .L_8024E25C
    mr 3, 31
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x408200B4 # bne .L_8024E25C
    lbz 0, 0x454(31)
    cmplwi 0, 0x0
    .4byte 0x408200A8 # bne .L_8024E25C
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024E1CC
    bl fn_80237774
    .4byte 0x4800001C # b .L_8024E1E4
L_8024E1CC:
    lbz 0, 0xc00(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8024E1E0
    li 3, 0x0
    .4byte 0x48000008 # b .L_8024E1E4
L_8024E1E0:
    lwz 3, 0xbfc(31)
L_8024E1E4:
    cmpwi 3, 0x4
    .4byte 0x41810074 # bgt .L_8024E25C
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x40800068 # bge .L_8024E25C
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8024E234
    lwz 3, 0x4(31)
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8024E234
    lwz 3, 0x4(31)
    li 4, 0x6
    bl fn_803037D4
    .4byte 0x4800002C # b .L_8024E25C
L_8024E234:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8024E248
    lwz 3, 0x4(31)
    bl fn_8030381C
L_8024E248:
    lwz 0, 0x4(31)
    li 4, 0x5
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
L_8024E25C:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4080001C # bge .L_8024E280
    psq_l 1, 0x8(31), 0, 0
    addi 3, 31, 0x1258
    lfs 0, 0x10(31)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x1260(31)
    .4byte 0x48000090 # b .L_8024E30C
L_8024E280:
    .4byte 0x40820074 # bne .L_8024E2F4
    bl GetRoomConfigRecord
    lfs 31, 0xcc(3)
    lfs 30, 0xd0(3)
    lwz 30, 0x3b4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_8024E2A8
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_8024E2AC
L_8024E2A8:
    addi 4, 3, 0xdc
L_8024E2AC:
    lfs 0, 0x0(4)
    addi 3, 31, 0x1268
    lfs 3, 0x4(4)
    lfs 2, 0x8(31)
    fsubs 1, 31, 0
    fsubs 0, 30, 3
    stfs 2, 0x1268(31)
    lfs 2, 0xc(31)
    stfs 2, 0x126c(31)
    lfs 2, 0x10(31)
    stfs 2, 0x1270(31)
    lfs 2, 0x1268(31)
    fadds 1, 2, 1
    stfs 1, 0x1268(31)
    lfs 1, 0x126c(31)
    fadds 0, 1, 0
    stfs 0, 0x126c(31)
    .4byte 0x48000008 # b .L_8024E2F8
L_8024E2F4:
    addi 3, 31, 0x8
L_8024E2F8:
    psq_l 1, 0x0(3), 0, 0
    addi 4, 31, 0x1258
    lfs 0, 0x8(3)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x1260(31)
L_8024E30C:
    lwz 3, 0x1250(31)
    bl fn_80456154
    lwz 3, 0x1254(31)
    bl fn_80456154
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    psq_l 30, 0x18(1), 0, 0
    lfd 30, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x34(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8024E344:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_8024E3BC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC002D090 # lfs f0, lbl_80540030@sda21(r0)
    lwz 4, 0xb4(6)
    li 5, 0x0
    .4byte 0xC042D0D8 # lfs f2, lbl_80540078@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    addi 4, 4, 0x32
    bl fn_8024E694
    .4byte 0x48000010 # b .L_8024E3C8
L_8024E3BC:
    li 4, 0x32
    li 5, 0x0
    bl fn_8024E694
L_8024E3C8:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024E3D8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_8024E450
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC002D090 # lfs f0, lbl_80540030@sda21(r0)
    lwz 4, 0xb4(6)
    li 5, 0x0
    .4byte 0xC042D0DC # lfs f2, lbl_8054007C@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    addi 4, 4, 0x14
    bl fn_8024E694
    .4byte 0x48000010 # b .L_8024E45C
L_8024E450:
    li 4, 0x14
    li 5, 0x0
    bl fn_8024E694
L_8024E45C:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024E46C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x3b4(3)
    cmpwi 0, 0x8
    .4byte 0x40800064 # bge .L_8024E4E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC002D090 # lfs f0, lbl_80540030@sda21(r0)
    lwz 4, 0xb4(6)
    li 5, 0x0
    .4byte 0xC042D0E0 # lfs f2, lbl_80540080@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    addi 4, 4, 0x5
    bl fn_8024E694
    .4byte 0x48000010 # b .L_8024E4F0
L_8024E4E4:
    li 4, 0x5
    li 5, 0x0
    bl fn_8024E694
L_8024E4F0:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024E500:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4(3)
    li 3, 0x1
    lbz 4, 0x82(4)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x41820138 # beq .L_8024E674
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024E554
    bl fn_802373EC
    .4byte 0x48000008 # b .L_8024E558
L_8024E554:
    lwz 3, 0xc10(31)
L_8024E558:
    cmpwi 3, 0x0
    .4byte 0x41820118 # beq .L_8024E674
    lwz 3, 0xd60(31)
    lwz 29, 0x4(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024E57C
    bl fn_802373EC
    mr 30, 3
    .4byte 0x48000008 # b .L_8024E580
L_8024E57C:
    lwz 30, 0xc10(31)
L_8024E580:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024E598
    bl fn_8023725C
    mr 28, 3
    .4byte 0x4800001C # b .L_8024E5B0
L_8024E598:
    lwz 0, 0xc10(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8024E5AC
    li 28, 0x0
    .4byte 0x48000008 # b .L_8024E5B0
L_8024E5AC:
    lwz 28, 0xc14(31)
L_8024E5B0:
    bl SpatialRegistry_GetBase
    slwi 4, 28, 22
    slwi 0, 29, 17
    or 0, 4, 0
    lis 4, 0x4c53
    lwz 5, 0x3b4(31)
    addi 4, 4, 0x5449
    addi 6, 31, 0x8
    or 7, 30, 0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x0
    stw 0, 0xc10(31)
    lwz 3, 0xc10(31)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_8024E5FC
    stw 0, 0xc14(31)
    .4byte 0x4800002C # b .L_8024E624
L_8024E5FC:
    .4byte 0x41820028 # beq .L_8024E624
    li 5, 0x1
    stw 5, 0xc14(31)
    .4byte 0x808D9310 # lwz r4, lbl_8053AED0@sda21(r0)
    lwz 0, 0x4(31)
    lbz 3, 0x255(4)
    slw 0, 5, 0
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x255(4)
L_8024E624:
    lwz 0, 0xc10(31)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_8024E674
    .4byte 0x80AD9310 # lwz r5, lbl_8053AED0@sda21(r0)
    li 3, 0x1
    lwz 0, 0x4(31)
    lbz 4, 0x255(5)
    slw 0, 3, 0
    clrlwi 0, 0, 24
    or 0, 4, 0
    stb 0, 0x255(5)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_8024E674
    lwz 0, 0x464(31)
    cmpwi 0, 0x3c
    .4byte 0x4080000C # bge .L_8024E674
    li 0, 0x3c
    stw 0, 0x464(31)
L_8024E674:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024E694:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 24, 0x20(1)
    mr 31, 3
    li 26, 0x0
    mr 30, 4
    mr 27, 5
    mr 25, 26
    psq_l 1, 0x8(31), 0, 0
    lfs 0, 0x10(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 29, 0x3b4(3)
L_8024E6CC:
    lwz 0, 0x4(31)
    cmpw 25, 0
    .4byte 0x4082000C # bne .L_8024E6E0
    addi 26, 26, 0x1
    .4byte 0x48000064 # b .L_8024E740
L_8024E6E0:
    mr 3, 25
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8024E730
    lwz 24, 0xd60(31)
    cmpwi 24, 0x0
    .4byte 0x4180001C # blt .L_8024E714
    mr 3, 25
    bl fn_8022F3DC
    cmpw 24, 3
    .4byte 0x40820038 # bne .L_8024E740
    addi 26, 26, 0x1
    .4byte 0x48000030 # b .L_8024E740
L_8024E714:
    lwz 28, 0x4(31)
    mr 3, 25
    bl fn_8022F3DC
    cmpw 28, 3
    .4byte 0x4082001C # bne .L_8024E740
    addi 26, 26, 0x1
    .4byte 0x48000014 # b .L_8024E740
L_8024E730:
    lwz 0, 0xd60(31)
    cmpw 25, 0
    .4byte 0x40820008 # bne .L_8024E740
    addi 26, 26, 0x1
L_8024E740:
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FF84 # blt .L_8024E6CC
    cmpwi 26, 0x1
    .4byte 0x4181000C # bgt .L_8024E75C
    li 3, 0x5
    .4byte 0x4800001C # b .L_8024E774
L_8024E75C:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024E770
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_8024E774
L_8024E770:
    lwz 3, 0x120c(31)
L_8024E774:
    cmpwi 3, 0x4
    .4byte 0x408200A8 # bne .L_8024E820
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024E794
    bl fn_80234004
    mr 28, 3
    .4byte 0x48000008 # b .L_8024E798
L_8024E794:
    lwz 28, 0x1224(31)
L_8024E798:
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8024E7AC
    li 0, 0x0
    .4byte 0x4800003C # b .L_8024E7E4
L_8024E7AC:
    li 25, 0x0
    mr 26, 25
    .4byte 0x48000020 # b .L_8024E7D4
L_8024E7B8:
    lwz 24, 0xd60(31)
    mr 3, 26
    bl fn_8022F3DC
    cmpw 24, 3
    .4byte 0x40820008 # bne .L_8024E7D0
    addi 25, 25, 0x1
L_8024E7D0:
    addi 26, 26, 0x1
L_8024E7D4:
    lwz 0, 0x4(31)
    cmpw 26, 0
    .4byte 0x4180FFDC # blt .L_8024E7B8
    addi 0, 25, 0x1
L_8024E7E4:
    cmpw 28, 0
    .4byte 0x41820038 # beq .L_8024E820
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x8(1)
    lfs 0, 0x4(3)
    stfs 0, 0xc(1)
    lfs 0, 0x8(3)
    stfs 0, 0x10(1)
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_8023DE58
    mr 29, 3
L_8024E820:
    lwz 0, 0x1240(31)
    li 28, 0x0
    cmpwi 0, 0x51
    .4byte 0x40820008 # bne .L_8024E834
    li 28, 0x1
L_8024E834:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024E848
    bl fn_80236228
    .4byte 0x48000018 # b .L_8024E85C
L_8024E848:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8024E858
    .4byte 0x48000008 # b .L_8024E85C
L_8024E858:
    li 3, 0x0
L_8024E85C:
    cmpw 30, 3
    .4byte 0x40810030 # ble .L_8024E890
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024E878
    bl fn_80236228
    .4byte 0x48000018 # b .L_8024E88C
L_8024E878:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8024E888
    .4byte 0x48000008 # b .L_8024E88C
L_8024E888:
    li 3, 0x0
L_8024E88C:
    mr 30, 3
L_8024E890:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x418000C4 # blt .L_8024E95C
    cmpwi 30, 0x1
    .4byte 0x41800418 # blt .L_8024ECB8
    cmpwi 30, 0x5
    .4byte 0x4080000C # bge .L_8024E8B4
    li 30, 0x1
    .4byte 0x480000A8 # b .L_8024E958
L_8024E8B4:
    cmpwi 30, 0x14
    .4byte 0x4080000C # bge .L_8024E8C4
    li 30, 0x5
    .4byte 0x48000098 # b .L_8024E958
L_8024E8C4:
    cmpwi 30, 0x32
    .4byte 0x4080000C # bge .L_8024E8D4
    li 30, 0x14
    .4byte 0x48000088 # b .L_8024E958
L_8024E8D4:
    cmpwi 30, 0x64
    .4byte 0x4080000C # bge .L_8024E8E4
    li 30, 0x32
    .4byte 0x48000078 # b .L_8024E958
L_8024E8E4:
    cmpwi 30, 0x96
    .4byte 0x4080000C # bge .L_8024E8F4
    li 30, 0x64
    .4byte 0x48000068 # b .L_8024E958
L_8024E8F4:
    cmpwi 30, 0xc8
    .4byte 0x4080000C # bge .L_8024E904
    li 30, 0x96
    .4byte 0x48000058 # b .L_8024E958
L_8024E904:
    cmpwi 30, 0x12c
    .4byte 0x4080000C # bge .L_8024E914
    li 30, 0xc8
    .4byte 0x48000048 # b .L_8024E958
L_8024E914:
    cmpwi 30, 0x3e8
    .4byte 0x4080000C # bge .L_8024E924
    li 30, 0x12c
    .4byte 0x48000038 # b .L_8024E958
L_8024E924:
    cmpwi 30, 0x5dc
    .4byte 0x4080000C # bge .L_8024E934
    li 30, 0x3e8
    .4byte 0x48000028 # b .L_8024E958
L_8024E934:
    cmpwi 30, 0x7d0
    .4byte 0x4080000C # bge .L_8024E944
    li 30, 0x5dc
    .4byte 0x48000018 # b .L_8024E958
L_8024E944:
    cmpwi 30, 0xbb8
    .4byte 0x4080000C # bge .L_8024E954
    li 30, 0x7d0
    .4byte 0x48000008 # b .L_8024E958
L_8024E954:
    li 30, 0xbb8
L_8024E958:
    li 27, 0x1
L_8024E95C:
    clrlwi. 0, 27, 24
    .4byte 0x418201F8 # beq .L_8024EB58
    cmpwi 30, 0xc8
    .4byte 0x418200BC # beq .L_8024EA24
    .4byte 0x4080004C # bge .L_8024E9B8
    cmpwi 30, 0x32
    .4byte 0x41820098 # beq .L_8024EA0C
    .4byte 0x40800028 # bge .L_8024E9A0
    cmpwi 30, 0x5
    .4byte 0x4182007C # beq .L_8024E9FC
    .4byte 0x40800010 # bge .L_8024E994
    cmpwi 30, 0x1
    .4byte 0x41820068 # beq .L_8024E9F4
    .4byte 0x48000328 # b .L_8024ECB8
L_8024E994:
    cmpwi 30, 0x14
    .4byte 0x4182006C # beq .L_8024EA04
    .4byte 0x4800031C # b .L_8024ECB8
L_8024E9A0:
    cmpwi 30, 0x96
    .4byte 0x41820078 # beq .L_8024EA1C
    .4byte 0x40800310 # bge .L_8024ECB8
    cmpwi 30, 0x64
    .4byte 0x41820064 # beq .L_8024EA14
    .4byte 0x48000304 # b .L_8024ECB8
L_8024E9B8:
    cmpwi 30, 0x5dc
    .4byte 0x41820080 # beq .L_8024EA3C
    .4byte 0x4080001C # bge .L_8024E9DC
    cmpwi 30, 0x3e8
    .4byte 0x4182006C # beq .L_8024EA34
    .4byte 0x408002EC # bge .L_8024ECB8
    cmpwi 30, 0x12c
    .4byte 0x41820058 # beq .L_8024EA2C
    .4byte 0x480002E0 # b .L_8024ECB8
L_8024E9DC:
    cmpwi 30, 0xbb8
    .4byte 0x4182006C # beq .L_8024EA4C
    .4byte 0x408002D4 # bge .L_8024ECB8
    cmpwi 30, 0x7d0
    .4byte 0x41820058 # beq .L_8024EA44
    .4byte 0x480002C8 # b .L_8024ECB8
L_8024E9F4:
    li 24, 0x0
    .4byte 0x48000060 # b .L_8024EA58
L_8024E9FC:
    li 24, 0x1
    .4byte 0x48000058 # b .L_8024EA58
L_8024EA04:
    li 24, 0x2
    .4byte 0x48000050 # b .L_8024EA58
L_8024EA0C:
    li 24, 0x3
    .4byte 0x48000048 # b .L_8024EA58
L_8024EA14:
    li 24, 0x4
    .4byte 0x48000040 # b .L_8024EA58
L_8024EA1C:
    li 24, 0x5
    .4byte 0x48000038 # b .L_8024EA58
L_8024EA24:
    li 24, 0x6
    .4byte 0x48000030 # b .L_8024EA58
L_8024EA2C:
    li 24, 0x7
    .4byte 0x48000028 # b .L_8024EA58
L_8024EA34:
    li 24, 0x8
    .4byte 0x48000020 # b .L_8024EA58
L_8024EA3C:
    li 24, 0x9
    .4byte 0x48000018 # b .L_8024EA58
L_8024EA44:
    li 24, 0xa
    .4byte 0x48000010 # b .L_8024EA58
L_8024EA4C:
    li 24, 0xb
    .4byte 0x48000008 # b .L_8024EA58
    .4byte 0x48000264 # b .L_8024ECB8
L_8024EA58:
    clrlwi. 0, 28, 24
    .4byte 0x4182002C # beq .L_8024EA88
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    mr 5, 29
    addi 4, 4, 0x4c44
    addi 6, 1, 0x8
    oris 7, 24, 0x7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000028 # b .L_8024EAAC
L_8024EA88:
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    mr 5, 29
    addi 4, 4, 0x4c44
    addi 6, 1, 0x8
    oris 7, 24, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8024EAAC:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024EAC4
    neg 4, 30
    bl fn_802362C4
    .4byte 0x480001F8 # b .L_8024ECB8
L_8024EAC4:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x270f
    .4byte 0x40810008 # ble .L_8024EAD4
L_8024EAD0:
    .4byte 0x48000000 # b .L_8024EAD0
L_8024EAD4:
    addi 0, 3, 0x1
    stw 0, 0xc04(31)
    lwz 0, 0xc04(31)
    cmpw 0, 3
    .4byte 0x40820008 # bne .L_8024EAEC
L_8024EAE8:
    .4byte 0x48000000 # b .L_8024EAE8
L_8024EAEC:
    neg. 4, 30
    stw 3, 0xc04(31)
    .4byte 0x41800028 # blt .L_8024EB1C
    lwz 0, 0xc04(31)
    subf 0, 30, 0
    stw 0, 0xc04(31)
    lwz 0, 0xc04(31)
    cmpwi 0, 0x270f
    .4byte 0x40810038 # ble .L_8024EB44
    li 0, 0x270f
    stw 0, 0xc04(31)
    .4byte 0x4800002C # b .L_8024EB44
L_8024EB1C:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x0
    .4byte 0x41800194 # blt .L_8024ECB8
    subf. 0, 30, 3
    .4byte 0x41800010 # blt .L_8024EB3C
    subf 0, 30, 3
    stw 0, 0xc04(31)
    .4byte 0x4800000C # b .L_8024EB44
L_8024EB3C:
    li 0, 0x0
    stw 0, 0xc04(31)
L_8024EB44:
    cmpwi 4, 0x1
    .4byte 0x40820170 # bne .L_8024ECB8
    mr 3, 31
    bl fn_802702C4
    .4byte 0x48000164 # b .L_8024ECB8
L_8024EB58:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024EB6C
    bl fn_80236228
    .4byte 0x48000018 # b .L_8024EB80
L_8024EB6C:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8024EB7C
    .4byte 0x48000008 # b .L_8024EB80
L_8024EB7C:
    li 3, 0x0
L_8024EB80:
    cmpw 30, 3
    .4byte 0x40810030 # ble .L_8024EBB4
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8024EB9C
    bl fn_80236228
    .4byte 0x48000018 # b .L_8024EBB0
L_8024EB9C:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8024EBAC
    .4byte 0x48000008 # b .L_8024EBB0
L_8024EBAC:
    li 3, 0x0
L_8024EBB0:
    mr 30, 3
L_8024EBB4:
    cmpwi 30, 0x0
    .4byte 0x40810100 # ble .L_8024ECB8
    clrlwi. 0, 28, 24
    .4byte 0x4182002C # beq .L_8024EBEC
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    mr 5, 29
    addi 4, 4, 0x4c44
    addi 6, 1, 0x8
    oris 7, 30, 0x6
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000028 # b .L_8024EC10
L_8024EBEC:
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    mr 5, 29
    mr 7, 30
    addi 6, 1, 0x8
    addi 4, 4, 0x4c44
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8024EC10:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_8024EC28
    neg 4, 30
    bl fn_802362C4
    .4byte 0x48000094 # b .L_8024ECB8
L_8024EC28:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x270f
    .4byte 0x40810008 # ble .L_8024EC38
L_8024EC34:
    .4byte 0x48000000 # b .L_8024EC34
L_8024EC38:
    addi 0, 3, 0x1
    stw 0, 0xc04(31)
    lwz 0, 0xc04(31)
    cmpw 0, 3
    .4byte 0x40820008 # bne .L_8024EC50
L_8024EC4C:
    .4byte 0x48000000 # b .L_8024EC4C
L_8024EC50:
    neg. 4, 30
    stw 3, 0xc04(31)
    .4byte 0x41800028 # blt .L_8024EC80
    lwz 0, 0xc04(31)
    subf 0, 30, 0
    stw 0, 0xc04(31)
    lwz 0, 0xc04(31)
    cmpwi 0, 0x270f
    .4byte 0x40810038 # ble .L_8024ECA8
    li 0, 0x270f
    stw 0, 0xc04(31)
    .4byte 0x4800002C # b .L_8024ECA8
L_8024EC80:
    lwz 3, 0xc04(31)
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_8024ECB8
    subf. 0, 30, 3
    .4byte 0x41800010 # blt .L_8024ECA0
    subf 0, 30, 3
    stw 0, 0xc04(31)
    .4byte 0x4800000C # b .L_8024ECA8
L_8024ECA0:
    li 0, 0x0
    stw 0, 0xc04(31)
L_8024ECA8:
    cmpwi 4, 0x1
    .4byte 0x4082000C # bne .L_8024ECB8
    mr 3, 31
    bl fn_802702C4
L_8024ECB8:
    lmw 24, 0x20(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8024ECCC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8024ECF0
    mr 3, 0
    bl fn_8023619C
    .4byte 0x48000050 # b .L_8024ED3C
L_8024ECF0:
    lwz 0, 0xc04(3)
    cmpwi 0, 0x270f
    .4byte 0x40810008 # ble .L_8024ED00
L_8024ECFC:
    .4byte 0x48000000 # b .L_8024ECFC
L_8024ED00:
    add 0, 0, 4
    stw 0, 0xc04(3)
    lwz 0, 0xc04(3)
    cmpwi 0, 0x270f
    .4byte 0x40810010 # ble .L_8024ED20
    li 0, 0x270f
    stw 0, 0xc04(3)
    .4byte 0x48000014 # b .L_8024ED30
L_8024ED20:
    cmpwi 0, -0x1388
    .4byte 0x4080000C # bge .L_8024ED30
    li 0, -0x1388
    stw 0, 0xc04(3)
L_8024ED30:
    cmpwi 4, 0x1
    .4byte 0x40820008 # bne .L_8024ED3C
    bl fn_802702C4
L_8024ED3C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024ED4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8024ED70
    mr 3, 0
    bl fn_802362C4
    .4byte 0x48000090 # b .L_8024EDFC
L_8024ED70:
    lwz 5, 0xc04(3)
    cmpwi 5, 0x270f
    .4byte 0x40810008 # ble .L_8024ED80
L_8024ED7C:
    .4byte 0x48000000 # b .L_8024ED7C
L_8024ED80:
    addi 0, 5, 0x1
    stw 0, 0xc04(3)
    lwz 0, 0xc04(3)
    cmpw 0, 5
    .4byte 0x40820008 # bne .L_8024ED98
L_8024ED94:
    .4byte 0x48000000 # b .L_8024ED94
L_8024ED98:
    cmpwi 4, 0x0
    stw 5, 0xc04(3)
    .4byte 0x41800028 # blt .L_8024EDC8
    lwz 0, 0xc04(3)
    add 0, 0, 4
    stw 0, 0xc04(3)
    lwz 0, 0xc04(3)
    cmpwi 0, 0x270f
    .4byte 0x40810038 # ble .L_8024EDF0
    li 0, 0x270f
    stw 0, 0xc04(3)
    .4byte 0x4800002C # b .L_8024EDF0
L_8024EDC8:
    lwz 5, 0xc04(3)
    cmpwi 5, 0x0
    .4byte 0x4180002C # blt .L_8024EDFC
    add. 0, 5, 4
    .4byte 0x41800010 # blt .L_8024EDE8
    add 0, 5, 4
    stw 0, 0xc04(3)
    .4byte 0x4800000C # b .L_8024EDF0
L_8024EDE8:
    li 0, 0x0
    stw 0, 0xc04(3)
L_8024EDF0:
    cmpwi 4, 0x1
    .4byte 0x40820008 # bne .L_8024EDFC
    bl fn_802702C4
L_8024EDFC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024EE0C:
    lbz 3, 0x3d9(3)
    blr

fn_8024EE14:
    lbz 3, 0x3d8(3)
    blr

fn_8024EE1C:
    lhz 3, 0x3c4(3)
    blr

fn_8024EE24:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x4080014C # bge .L_8024EF8C
    lwz 3, 0x11dc(31)
    cmpwi 3, 0x0
    .4byte 0x40810108 # ble .L_8024EF54
    subi 0, 3, 0x1
    stw 0, 0x11dc(31)
    lwz 3, 0x11dc(31)
    cmpwi 3, 0x60
    .4byte 0x408000B0 # bge .L_8024EF10
    lbz 0, 0x11e0(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8024EE8C
    rlwinm. 0, 3, 0, 27, 27
    .4byte 0x40820018 # bne .L_8024EE8C
    lwz 0, 0x4(31)
    li 4, 0x1
    .4byte 0x386D9118 # li r3, lbl_8053ACD8@sda21
    stbx 4, 3, 0
    .4byte 0x48000014 # b .L_8024EE9C
L_8024EE8C:
    lwz 0, 0x4(31)
    li 4, 0x0
    .4byte 0x386D9118 # li r3, lbl_8053ACD8@sda21
    stbx 4, 3, 0
L_8024EE9C:
    lwz 0, 0x11dc(31)
    clrlwi 0, 0, 27
    cmpwi 0, 0xf
    .4byte 0x40820068 # bne .L_8024EF10
    lwz 3, 0x11ec(31)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8024EEE8
    lwz 3, 0x4(31)
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8024EEE8
    lwz 3, 0x4(31)
    li 4, 0x5
    bl fn_803037D4
    .4byte 0x4800002C # b .L_8024EF10
L_8024EEE8:
    lwz 0, 0x3b4(31)
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8024EEFC
    lwz 3, 0x4(31)
    bl fn_8030381C
L_8024EEFC:
    lwz 0, 0x4(31)
    li 4, 0x9
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
L_8024EF10:
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_8023E10C
    cmpwi 3, 0x8
    .4byte 0x4080006C # bge .L_8024EF8C
    lwz 31, 0x4(31)
    mr 3, 31
    bl fn_8022EA0C
    bl fn_8023E214
    psq_l 1, 0x0(3), 0, 0
    addi 4, 1, 0x8
    lfs 0, 0x8(3)
    mr 3, 31
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    bl fn_80402FBC
    .4byte 0x4800003C # b .L_8024EF8C
L_8024EF54:
    lwz 3, 0x4(31)
    bl fn_8022EA0C
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800018 # bge .L_8024EF7C
    lwz 0, 0x4(31)
    li 4, 0x1
    .4byte 0x386D9118 # li r3, lbl_8053ACD8@sda21
    stbx 4, 3, 0
    .4byte 0x48000014 # b .L_8024EF8C
L_8024EF7C:
    lwz 0, 0x4(31)
    li 4, 0x0
    .4byte 0x386D9118 # li r3, lbl_8053ACD8@sda21
    stbx 4, 3, 0
L_8024EF8C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8024EFA0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0xd60(3)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8024EFC4
    mr 3, 0
    bl fn_80230E1C
    .4byte 0x48000028 # b .L_8024EFE8
L_8024EFC4:
    lwz 0, 0x11dc(3)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8024EFE4
    li 0, 0x70
    stw 0, 0x11dc(3)
    stb 4, 0x11e0(3)
    li 3, 0x1
    .4byte 0x48000008 # b .L_8024EFE8
L_8024EFE4:
    li 3, 0x0
L_8024EFE8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8024EFF8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    lwz 3, 0x11ec(3)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_8024F088
    lwz 3, 0x4(30)
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_8024F088
    cmplwi 31, 0x4
    .4byte 0x40820014 # bne .L_8024F058
    lwz 3, 0x4(30)
    li 4, 0x4
    bl fn_803037D4
    .4byte 0x4800007C # b .L_8024F0D0
L_8024F058:
    cmplwi 31, 0x9
    .4byte 0x40820014 # bne .L_8024F070
    lwz 3, 0x4(30)
    li 4, 0x5
    bl fn_803037D4
    .4byte 0x48000064 # b .L_8024F0D0
L_8024F070:
    cmplwi 31, 0x5
    .4byte 0x40820014 # bne .L_8024F088
    lwz 3, 0x4(30)
    li 4, 0x6
    bl fn_803037D4
    .4byte 0x4800004C # b .L_8024F0D0
L_8024F088:
    lwz 0, 0x3b4(30)
    cmpwi 0, 0x8
    .4byte 0x4180002C # blt .L_8024F0BC
    lwz 3, 0x4(30)
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8024F0BC
    cmplwi 31, 0x3
    .4byte 0x40820014 # bne .L_8024F0BC
    lwz 3, 0x4(30)
    li 4, 0xf
    bl fn_803037D4
    .4byte 0x48000018 # b .L_8024F0D0
L_8024F0BC:
    lwz 0, 0x4(30)
    mr 4, 31
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    extsb 5, 0
    bl fn_80458880
L_8024F0D0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

