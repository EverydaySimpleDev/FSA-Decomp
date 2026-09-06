# 901KB-gap non-actor manager block: 16 function(s), 4,512 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011658
etb_80011658:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80011658, 8

.global etb_80011660
etb_80011660:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80011660, 8

.global etb_80011668
etb_80011668:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80011668, 8

.global etb_80011670
etb_80011670:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80011670, 8

.global etb_80011678
etb_80011678:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80011678, 8

.global etb_80011680
etb_80011680:
    .4byte 0x280A0000
    .4byte 0x0000026C
    .4byte 0x00050010
    .4byte 0x00000000
    .4byte 0x82000014
    .4byte dtor_8002449C
.size etb_80011680, 24

.global etb_80011698
etb_80011698:
    .4byte 0x18080000
    .4byte 0x00000078
    .4byte 0x00160010
    .4byte 0x00000000
    .4byte 0x82000008
    .4byte dtor_8002449C
.size etb_80011698, 24

.global etb_800116B0
etb_800116B0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800116B0, 8

.global etb_800116B8
etb_800116B8:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_800116B8, 8

.global etb_800116C0
etb_800116C0:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800116C0, 8

.global etb_800116C8
etb_800116C8:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_800116C8, 8

.global etb_800116D0
etb_800116D0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800116D0, 8

.section extabindex, "a"
.balign 4
.global eti_800215F8
eti_800215F8:
    .4byte fn_80457E04
    .4byte 0x00000050
    .4byte etb_80011658
.size eti_800215F8, 12

.global eti_80021604
eti_80021604:
    .4byte fn_80457E54
    .4byte 0x0000010C
    .4byte etb_80011660
.size eti_80021604, 12

.global eti_80021610
eti_80021610:
    .4byte fn_80457F80
    .4byte 0x00000110
    .4byte etb_80011668
.size eti_80021610, 12

.global eti_8002161C
eti_8002161C:
    .4byte fn_80458090
    .4byte 0x0000004C
    .4byte etb_80011670
.size eti_8002161C, 12

.global eti_80021628
eti_80021628:
    .4byte fn_804580DC
    .4byte 0x00000080
    .4byte etb_80011678
.size eti_80021628, 12

.global eti_80021634
eti_80021634:
    .4byte fn_8045815C
    .4byte 0x000002AC
    .4byte etb_80011680
.size eti_80021634, 12

.global eti_80021640
eti_80021640:
    .4byte fn_80458408
    .4byte 0x00000100
    .4byte etb_80011698
.size eti_80021640, 12

.global eti_8002164C
eti_8002164C:
    .4byte fn_80458508
    .4byte 0x00000150
    .4byte etb_800116B0
.size eti_8002164C, 12

.global eti_80021658
eti_80021658:
    .4byte fn_80458658
    .4byte 0x000000E4
    .4byte etb_800116B8
.size eti_80021658, 12

.global eti_80021664
eti_80021664:
    .4byte fn_80458744
    .4byte 0x0000013C
    .4byte etb_800116C0
.size eti_80021664, 12

.global eti_80021670
eti_80021670:
    .4byte fn_80458880
    .4byte 0x00000684
    .4byte etb_800116C8
.size eti_80021670, 12

.global eti_8002167C
eti_8002167C:
    .4byte fn_80458F04
    .4byte 0x00000098
    .4byte etb_800116D0
.size eti_8002167C, 12

.text
.balign 4
.global fn_80457DFC
.global fn_80457E04
.global fn_80457E54
.global fn_80457F60
.global fn_80457F6C
.global fn_80457F80
.global fn_80458090
.global fn_804580DC
.global fn_8045815C
.global fn_80458408
.global fn_80458508
.global fn_80458658
.global fn_8045873C
.global fn_80458744
.global fn_80458880
.global fn_80458F04

fn_80457DFC:
    stb 4, 0x6(3)
    blr

fn_80457E04:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lbz 0, 0x8c(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80457E44
    lbz 0, 0x8b(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80457E44
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_80457E3C
    li 4, 0x3
    bl fn_80458744
    .4byte 0x4800000C # b .L_80457E44
L_80457E3C:
    li 4, 0x0
    bl fn_80458744
L_80457E44:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80457E54:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    clrlwi. 0, 4, 24
    stw 31, 0x1c(1)
    mr 31, 3
    stb 4, 0x8c(3)
    .4byte 0x41820094 # beq .L_80457F04
    li 4, 0x2
    bl fn_80458744
    lwz 3, 0x80(31)
    cmplwi 3, 0x0
    .4byte 0x418200C8 # beq .L_80457F4C
    lwz 12, 0x0(3)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x418200B0 # beq .L_80457F4C
    .4byte 0x808D86AC # lwz r4, lbl_8053A26C@sda21(r0)
    .4byte 0xC06D86A8 # lfs f3, lbl_8053A268@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_80457ECC
    stfs 3, 0x0(3)
    li 0, 0x0
    .4byte 0xC0020F10 # lfs f0, lbl_80543EB0@sda21(r0)
    stfs 0, 0x4(3)
    stw 0, 0xc(3)
    stfs 0, 0x8(3)
    .4byte 0x48000084 # b .L_80457F4C
L_80457ECC:
    lfs 0, 0x0(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8220F18 # lfd f1, lbl_80543EB8@sda21(r0)
    fsubs 2, 3, 0
    stw 4, 0xc(3)
    lwz 0, 0xc(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x4(3)
    stfs 3, 0x8(3)
    .4byte 0x4800004C # b .L_80457F4C
L_80457F04:
    li 4, 0x0
    bl fn_80458744
    lwz 3, 0x80(31)
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_80457F4C
    lwz 12, 0x0(3)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_80457F4C
    .4byte 0xC0220F14 # lfs f1, lbl_80543EB4@sda21(r0)
    li 0, 0x0
    .4byte 0xC0020F10 # lfs f0, lbl_80543EB0@sda21(r0)
    stfs 1, 0x0(3)
    stfs 0, 0x4(3)
    stw 0, 0xc(3)
    stfs 0, 0x8(3)
L_80457F4C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80457F60:
    li 0, 0x1
    stb 0, 0x74(3)
    blr

fn_80457F6C:
    li 4, 0x0
    li 0, 0xb4
    stb 4, 0x74(3)
    stb 0, 0x6d(3)
    blr

fn_80457F80:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    extsb 0, 5
    cmpwi 0, -0x2
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 4
    .4byte 0x40820064 # bne .L_8045800C
    lwz 0, 0x0(29)
    addi 4, 1, 0x14
    stw 0, 0x14(1)
    lwz 3, 0x14(31)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80457FD0
    li 3, 0x0
    .4byte 0x480000A8 # b .L_80458074
L_80457FD0:
    li 30, 0x0
L_80457FD4:
    lwz 0, 0x0(29)
    addi 4, 1, 0x10
    stw 0, 0x10(1)
    lwz 3, 0x18(31)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80457FF8
    li 3, 0x0
    .4byte 0x48000080 # b .L_80458074
L_80457FF8:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80457FD4
    .4byte 0x48000068 # b .L_80458070
L_8045800C:
    cmpwi 0, -0x1
    .4byte 0x40820028 # bne .L_80458038
    lwz 0, 0x0(29)
    addi 4, 1, 0xc
    stw 0, 0xc(1)
    lwz 3, 0x14(31)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_80458070
    li 3, 0x0
    .4byte 0x48000040 # b .L_80458074
L_80458038:
    li 30, 0x0
L_8045803C:
    lwz 0, 0x0(29)
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 3, 0x18(31)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80458060
    li 3, 0x0
    .4byte 0x48000018 # b .L_80458074
L_80458060:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_8045803C
L_80458070:
    li 3, 0x1
L_80458074:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80458090:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x2
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x44(3)
    bl fn_8003DF84
    lwz 3, 0x44(31)
    li 4, 0x3
    bl fn_8003DF84
    lwz 3, 0x44(31)
    li 4, 0x4
    bl fn_8003DF84
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804580DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 3, 0x44(3)
    cmplwi 3, 0x0
    .4byte 0x41820058 # beq .L_80458148
    lwz 0, 0xf0(3)
    clrlwi 4, 4, 24
    cmplw 4, 0
    .4byte 0x4180000C # blt .L_8045810C
    li 3, 0x0
    .4byte 0x48000010 # b .L_80458118
L_8045810C:
    lwz 3, 0xec(3)
    slwi 0, 4, 2
    lwzx 3, 3, 0
L_80458118:
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_80458148
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 0, 0x4c(3)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_80458148
    li 3, 0x1
    .4byte 0x48000008 # b .L_8045814C
L_80458148:
    li 3, 0x0
L_8045814C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8045815C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 31, 4
    mr 30, 3
    stb 31, 0x8b(3)
    lwz 3, 0x80(3)
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_80458190
    lwz 0, 0x84(30)
    cmplwi 0, 0x0
    .4byte 0x41820268 # beq .L_804583F4
L_80458190:
    li 0, -0x1
    cmplwi 3, 0x0
    stw 0, 0x18(1)
    .4byte 0x41820010 # beq .L_804581AC
    lwz 0, 0x18(3)
    stw 0, 0x10(1)
    stw 0, 0x18(1)
L_804581AC:
    lwz 4, 0x84(30)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_804581C4
    lwz 0, 0x18(4)
    stw 0, 0xc(1)
    stw 0, 0x18(1)
L_804581C4:
    lwz 4, 0x18(1)
    subis 0, 4, 0x100
    cmplwi 0, 0x2
    .4byte 0x41820224 # beq .L_804583F4
    cmplwi 0, 0x23
    .4byte 0x4182021C # beq .L_804583F4
    cmplwi 0, 0x2d
    .4byte 0x41820214 # beq .L_804583F4
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_804581F0
    .4byte 0x48000208 # b .L_804583F4
L_804581F0:
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80458204
    lwz 0, 0x18(3)
    stw 0, 0x8(1)
    stw 0, 0x18(1)
L_80458204:
    lis 4, 0x100
    lwz 5, 0x18(1)
    addi 0, 4, 0xd
    cmpw 5, 0
    .4byte 0x418201E0 # beq .L_804583F4
    .4byte 0x40800018 # bge .L_80458230
    addi 0, 4, 0x4
    cmpw 5, 0
    .4byte 0x418201D0 # beq .L_804583F4
    .4byte 0x48000008 # b .L_80458230
    .4byte 0x480001C8 # b .L_804583F4
L_80458230:
    clrlwi. 0, 31, 24
    .4byte 0x41820088 # beq .L_804582BC
    cmplwi 3, 0x0
    .4byte 0x418200BC # beq .L_804582F8
    lwz 12, 0x0(3)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x418200A4 # beq .L_804582F8
    .4byte 0x808D86AC # lwz r4, lbl_8053A26C@sda21(r0)
    .4byte 0xC06D86A8 # lfs f3, lbl_8053A268@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_80458284
    stfs 3, 0x0(3)
    li 0, 0x0
    .4byte 0xC0020F10 # lfs f0, lbl_80543EB0@sda21(r0)
    stfs 0, 0x4(3)
    stw 0, 0xc(3)
    stfs 0, 0x8(3)
    .4byte 0x48000078 # b .L_804582F8
L_80458284:
    lfs 0, 0x0(3)
    lis 0, 0x4330
    stw 0, 0x20(1)
    .4byte 0xC8220F18 # lfd f1, lbl_80543EB8@sda21(r0)
    fsubs 2, 3, 0
    stw 4, 0xc(3)
    lwz 0, 0xc(3)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x4(3)
    stfs 3, 0x8(3)
    .4byte 0x48000040 # b .L_804582F8
L_804582BC:
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_804582F8
    lwz 12, 0x0(3)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_804582F8
    .4byte 0xC0220F14 # lfs f1, lbl_80543EB4@sda21(r0)
    li 0, 0x0
    .4byte 0xC0020F10 # lfs f0, lbl_80543EB0@sda21(r0)
    stfs 1, 0x0(3)
    stfs 0, 0x4(3)
    stw 0, 0xc(3)
    stfs 0, 0x8(3)
L_804582F8:
    clrlwi. 0, 31, 24
    .4byte 0x4182001C # beq .L_80458318
    lwz 3, 0x80(30)
    li 4, 0x0
    .4byte 0xC0220F24 # lfs f1, lbl_80543EC4@sda21(r0)
    addi 3, 3, 0x48
    bl fn_80026304
    .4byte 0x48000018 # b .L_8045832C
L_80458318:
    lwz 3, 0x80(30)
    li 4, 0x0
    .4byte 0xC0220F14 # lfs f1, lbl_80543EB4@sda21(r0)
    addi 3, 3, 0x48
    bl fn_80026304
L_8045832C:
    clrlwi. 0, 31, 24
    .4byte 0x4182001C # beq .L_8045834C
    lwz 3, 0x80(30)
    li 4, 0x0
    .4byte 0xC0220F14 # lfs f1, lbl_80543EB4@sda21(r0)
    addi 3, 3, 0x48
    bl fn_8002635C
    .4byte 0x48000018 # b .L_80458360
L_8045834C:
    lwz 3, 0x80(30)
    li 4, 0x0
    .4byte 0xC0220F10 # lfs f1, lbl_80543EB0@sda21(r0)
    addi 3, 3, 0x48
    bl fn_8002635C
L_80458360:
    lwz 3, 0x84(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80458380
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x48000018 # b .L_80458394
L_80458380:
    lwz 3, 0x80(30)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
L_80458394:
    cmplwi 3, 0x0
    mr 28, 3
    .4byte 0x41820058 # beq .L_804583F4
    bl OSDisableInterrupts
    stw 3, 0x14(1)
    clrlwi 29, 31, 24
    li 27, 0x0
L_804583B0:
    mr 3, 28
    mr 4, 27
    lwz 12, 0x0(28)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804583DC
    mr 5, 29
    li 4, 0x0
    bl fn_800380C4
L_804583DC:
    addi 27, 27, 0x1
    cmpwi 27, 0x10
    .4byte 0x4180FFCC # blt .L_804583B0
    stb 31, 0x8b(30)
    lwz 3, 0x14(1)
    bl OSRestoreInterrupts
L_804583F4:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80458408:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 5
    lwz 3, 0x80(3)
    cmplwi 3, 0x0
    .4byte 0x418200C0 # beq .L_804584EC
    lis 5, 0x100
    addi 0, 5, 0x1a
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_80458444
    .4byte 0x480000AC # b .L_804584EC
L_80458444:
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr. 31, 3
    .4byte 0x41820094 # beq .L_804584EC
    bl OSDisableInterrupts
    stw 3, 0x8(1)
    li 30, 0x0
L_80458468:
    mr 3, 31
    mr 4, 30
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    mr. 4, 3
    .4byte 0x41820054 # beq .L_804584D8
    clrlwi. 0, 29, 24
    .4byte 0x41820024 # beq .L_804584B0
    cmpwi 30, 0x2
    .4byte 0x40820010 # bne .L_804584A4
    li 4, 0x1
    bl fn_80037F1C
    .4byte 0x48000038 # b .L_804584D8
L_804584A4:
    li 4, 0x0
    bl fn_80037F1C
    .4byte 0x4800002C # b .L_804584D8
L_804584B0:
    cmpwi 30, 0x2
    .4byte 0x4182000C # beq .L_804584C0
    cmpwi 30, 0x7
    .4byte 0x40820014 # bne .L_804584D0
L_804584C0:
    mr 3, 4
    li 4, 0x0
    bl fn_80037F1C
    .4byte 0x4800000C # b .L_804584D8
L_804584D0:
    li 4, 0x1
    bl fn_80037F1C
L_804584D8:
    addi 30, 30, 0x1
    cmpwi 30, 0x10
    .4byte 0x4180FF88 # blt .L_80458468
    lwz 3, 0x8(1)
    bl OSRestoreInterrupts
L_804584EC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80458508:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    lwz 3, 0x80(3)
    cmplwi 3, 0x0
    .4byte 0x41820120 # beq .L_80458644
    lwz 12, 0x0(3)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x41820108 # beq .L_80458644
    clrlwi 0, 31, 24
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80458560
    .4byte 0x40800008 # bge .L_80458554
    .4byte 0x480000D8 # b .L_80458628
L_80458554:
    cmpwi 0, 0x3
    .4byte 0x408000D0 # bge .L_80458628
    .4byte 0x48000068 # b .L_804585C4
L_80458560:
    .4byte 0x808D86A4 # lwz r4, lbl_8053A264@sda21(r0)
    .4byte 0xC06D86A0 # lfs f3, lbl_8053A260@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_8045858C
    stfs 3, 0x0(3)
    li 0, 0x0
    .4byte 0xC0020F10 # lfs f0, lbl_80543EB0@sda21(r0)
    stfs 0, 0x4(3)
    stw 0, 0xc(3)
    stfs 0, 0x8(3)
    .4byte 0x480000BC # b .L_80458644
L_8045858C:
    lfs 0, 0x0(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8220F18 # lfd f1, lbl_80543EB8@sda21(r0)
    fsubs 2, 3, 0
    stw 4, 0xc(3)
    lwz 0, 0xc(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x4(3)
    stfs 3, 0x8(3)
    .4byte 0x48000084 # b .L_80458644
L_804585C4:
    .4byte 0x808D86AC # lwz r4, lbl_8053A26C@sda21(r0)
    .4byte 0xC06D86A8 # lfs f3, lbl_8053A268@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_804585F0
    stfs 3, 0x0(3)
    li 0, 0x0
    .4byte 0xC0020F10 # lfs f0, lbl_80543EB0@sda21(r0)
    stfs 0, 0x4(3)
    stw 0, 0xc(3)
    stfs 0, 0x8(3)
    .4byte 0x48000058 # b .L_80458644
L_804585F0:
    lfs 0, 0x0(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    .4byte 0xC8220F18 # lfd f1, lbl_80543EB8@sda21(r0)
    fsubs 2, 3, 0
    stw 4, 0xc(3)
    lwz 0, 0xc(3)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    stfs 0, 0x4(3)
    stfs 3, 0x8(3)
    .4byte 0x48000020 # b .L_80458644
L_80458628:
    .4byte 0xC0220F14 # lfs f1, lbl_80543EB4@sda21(r0)
    li 0, 0x0
    .4byte 0xC0020F10 # lfs f0, lbl_80543EB0@sda21(r0)
    stfs 1, 0x0(3)
    stfs 0, 0x4(3)
    stw 0, 0xc(3)
    stfs 0, 0x8(3)
L_80458644:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80458658:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    mr 31, 4
    stb 31, 0x8a(3)
    lwz 3, 0x34(3)
    addi 3, 3, 0x158
    bl fn_80022C24
    lwz 3, 0x34(30)
    mr 4, 31
    addi 3, 3, 0x1c4
    bl fn_80022C24
    lwz 3, 0x34(30)
    mr 4, 31
    addi 3, 3, 0x230
    bl fn_80022C24
    lwz 3, 0x34(30)
    mr 4, 31
    addi 3, 3, 0x29c
    bl fn_80022C24
    clrlwi. 0, 31, 24
    .4byte 0xC3E20F14 # lfs f31, lbl_80543EB4@sda21(r0)
    .4byte 0x41820008 # beq .L_804586CC
    .4byte 0xC3E20F10 # lfs f31, lbl_80543EB0@sda21(r0)
L_804586CC:
    lwz 3, 0x34(30)
    fmr 1, 31
    li 4, 0x3
    addi 3, 3, 0x160
    bl fn_800262AC
    lwz 3, 0x34(30)
    fmr 1, 31
    li 4, 0x3
    addi 3, 3, 0x1cc
    bl fn_800262AC
    lwz 3, 0x34(30)
    fmr 1, 31
    li 4, 0x3
    addi 3, 3, 0x238
    bl fn_800262AC
    lwz 3, 0x34(30)
    fmr 1, 31
    li 4, 0x3
    addi 3, 3, 0x2a4
    bl fn_800262AC
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8045873C:
    stb 4, 0x69(3)
    blr

fn_80458744:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    cmpwi 4, 0x2
    mr 31, 3
    .4byte 0x4182004C # beq .L_804587B0
    .4byte 0x40800014 # bge .L_8045877C
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_80458788
    .4byte 0x40800028 # bge .L_8045879C
    .4byte 0x480000EC # b .L_80458864
L_8045877C:
    cmpwi 4, 0x4
    .4byte 0x408000E4 # bge .L_80458864
    .4byte 0x48000040 # b .L_804587C4
L_80458788:
    lis 3, lbl_804B1E60@ha
    lfsu 0, lbl_804B1E60@l(3)
    lfs 1, 0x4(3)
    lfs 31, 0x8(3)
    .4byte 0x48000070 # b .L_80458808
L_8045879C:
    lis 3, lbl_804B1E84@ha
    lfsu 0, lbl_804B1E84@l(3)
    lfs 1, 0x4(3)
    lfs 31, 0x8(3)
    .4byte 0x4800005C # b .L_80458808
L_804587B0:
    lis 3, lbl_804B1EA8@ha
    lfsu 0, lbl_804B1EA8@l(3)
    lfs 1, 0x4(3)
    lfs 31, 0x8(3)
    .4byte 0x48000048 # b .L_80458808
L_804587C4:
    lwz 3, 0x58(31)
    subis 0, 3, 0x100
    cmplwi 0, 0x30
    .4byte 0x41810094 # bgt .L_80458864
    lis 3, jumptable_804B1EF0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B1EF0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 3, lbl_804B1ECC@ha
    lfsu 0, lbl_804B1ECC@l(3)
    lfs 1, 0x4(3)
    lfs 31, 0x8(3)
    .4byte 0x4800000C # b .L_80458808
    .4byte 0x48000064 # b .L_80458864
    .4byte 0x48000060 # b .L_80458864
L_80458808:
    stfs 0, 0x4c(31)
    stfs 1, 0x50(31)
    lwz 3, 0x80(31)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80458834
    lfs 1, 0x4c(31)
    addi 3, 3, 0x48
    lfs 0, 0x54(31)
    .4byte 0x808D8698 # lwz r4, lbl_8053A258@sda21(r0)
    fmuls 1, 1, 0
    bl fn_800262AC
L_80458834:
    lwz 3, 0x84(31)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80458850
    lfs 1, 0x50(31)
    addi 3, 3, 0x48
    .4byte 0x808D8698 # lwz r4, lbl_8053A258@sda21(r0)
    bl fn_800262AC
L_80458850:
    lwz 3, 0x34(31)
    fmr 1, 31
    li 4, 0x0
    addi 3, 3, 0x1c
    bl fn_800262AC
L_80458864:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80458880:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stmw 27, 0x9c(1)
    mr 31, 5
    extsb 0, 31
    mr 29, 3
    cmpwi 0, 0x4
    mr 30, 4
    .4byte 0x4080064C # bge .L_80458EF0
    cmplwi 30, 0x48
    .4byte 0x40820018 # bne .L_804588C4
    lbz 0, 0x6a(29)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_804588C4
    li 0, 0x1
    stb 0, 0x6a(29)
L_804588C4:
    cmplwi 30, 0xc
    .4byte 0x40820010 # bne .L_804588D8
    lwz 3, 0x34(29)
    li 4, 0x1
    bl fn_800231F8
L_804588D8:
    cmpwi 30, 0x28
    .4byte 0x4080005C # bge .L_80458938
    cmpwi 30, 0x12
    .4byte 0x40800030 # bge .L_80458914
    cmpwi 30, 0x8
    .4byte 0x41820084 # beq .L_80458970
    .4byte 0x40800018 # bge .L_80458908
    cmpwi 30, 0x4
    .4byte 0x4080007C # bge .L_80458974
    cmpwi 30, 0x0
    .4byte 0x40800070 # bge .L_80458970
    .4byte 0x48000070 # b .L_80458974
L_80458908:
    cmpwi 30, 0xb
    .4byte 0x40800064 # bge .L_80458970
    .4byte 0x48000064 # b .L_80458974
L_80458914:
    cmpwi 30, 0x1e
    .4byte 0x4182005C # beq .L_80458974
    .4byte 0x40800010 # bge .L_8045892C
    cmpwi 30, 0x1d
    .4byte 0x4080004C # bge .L_80458970
    .4byte 0x4800004C # b .L_80458974
L_8045892C:
    cmpwi 30, 0x26
    .4byte 0x40800044 # bge .L_80458974
    .4byte 0x4800003C # b .L_80458970
L_80458938:
    cmpwi 30, 0x4e
    .4byte 0x41820038 # beq .L_80458974
    .4byte 0x4080001C # bge .L_8045895C
    cmpwi 30, 0x38
    .4byte 0x4182002C # beq .L_80458974
    .4byte 0x40800024 # bge .L_80458970
    cmpwi 30, 0x2d
    .4byte 0x41820020 # beq .L_80458974
    .4byte 0x48000018 # b .L_80458970
L_8045895C:
    cmpwi 30, 0x51
    .4byte 0x41820014 # beq .L_80458974
    .4byte 0x4180000C # blt .L_80458970
    cmpwi 30, 0x63
    .4byte 0x40800008 # bge .L_80458974
L_80458970:
    li 31, -0x1
L_80458974:
    cmpwi 30, 0x38
    .4byte 0x41820188 # beq .L_80458B00
    .4byte 0x4080001C # bge .L_80458998
    cmpwi 30, 0xa
    .4byte 0x41820038 # beq .L_804589BC
    .4byte 0x408001EC # bge .L_80458B74
    cmpwi 30, 0x3
    .4byte 0x41820044 # beq .L_804589D4
    .4byte 0x480001E0 # b .L_80458B74
L_80458998:
    cmpwi 30, 0x42
    .4byte 0x418200A0 # beq .L_80458A3C
    .4byte 0x40800010 # bge .L_804589B0
    cmpwi 30, 0x41
    .4byte 0x40800104 # bge .L_80458AAC
    .4byte 0x480001C8 # b .L_80458B74
L_804589B0:
    cmpwi 30, 0x57
    .4byte 0x4182014C # beq .L_80458B00
    .4byte 0x480001BC # b .L_80458B74
L_804589BC:
    lbz 0, 0x6c(29)
    cmplwi 0, 0x0
    .4byte 0x4082052C # bne .L_80458EF0
    li 0, 0x3
    stb 0, 0x6c(29)
    .4byte 0x480001A4 # b .L_80458B74
L_804589D4:
    lbz 0, 0x74(29)
    cmplwi 0, 0x0
    .4byte 0x40820514 # bne .L_80458EF0
    lbz 0, 0x6d(29)
    cmplwi 0, 0x0
    .4byte 0x40820508 # bne .L_80458EF0
    li 0, 0x3
    addi 4, 1, 0x8c
    stw 0, 0x8c(1)
    lwz 3, 0x14(29)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x408204EC # bne .L_80458EF0
    li 0, 0x42
    addi 4, 1, 0x88
    stw 0, 0x88(1)
    li 5, 0x0
    lwz 3, 0x14(29)
    bl fn_8003F37C
    li 0, 0x41
    addi 4, 1, 0x84
    stw 0, 0x84(1)
    li 5, 0x0
    lwz 3, 0x14(29)
    bl fn_8003F37C
    .4byte 0x4800013C # b .L_80458B74
L_80458A3C:
    lbz 0, 0x74(29)
    cmplwi 0, 0x0
    .4byte 0x408204AC # bne .L_80458EF0
    lbz 0, 0x6d(29)
    cmplwi 0, 0x0
    .4byte 0x408204A0 # bne .L_80458EF0
    li 0, 0x3
    addi 4, 1, 0x80
    stw 0, 0x80(1)
    lwz 3, 0x14(29)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x40820484 # bne .L_80458EF0
    li 0, 0x41
    addi 4, 1, 0x7c
    stw 0, 0x7c(1)
    lwz 3, 0x14(29)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x40820468 # bne .L_80458EF0
    li 0, 0x42
    addi 4, 1, 0x78
    stw 0, 0x78(1)
    lwz 3, 0x14(29)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x418200D0 # beq .L_80458B74
    .4byte 0x48000448 # b .L_80458EF0
L_80458AAC:
    li 0, 0x3
    addi 4, 1, 0x74
    stw 0, 0x74(1)
    lwz 3, 0x14(29)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x4082042C # bne .L_80458EF0
    li 0, 0x41
    addi 4, 1, 0x70
    stw 0, 0x70(1)
    lwz 3, 0x14(29)
    bl fn_80026060
    cmplwi 3, 0x0
    .4byte 0x40820410 # bne .L_80458EF0
    li 0, 0x42
    addi 4, 1, 0x6c
    stw 0, 0x6c(1)
    li 5, 0x0
    lwz 3, 0x14(29)
    bl fn_8003F37C
    .4byte 0x48000078 # b .L_80458B74
L_80458B00:
    lbz 0, 0x4(29)
    cmplwi 0, 0x0
    .4byte 0x408203E8 # bne .L_80458EF0
    lbz 0, 0x5(29)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80458B30
    lwz 3, 0x84(29)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80458B30
    lwz 0, 0x18(3)
    cmplw 30, 0
    .4byte 0x418203C4 # beq .L_80458EF0
L_80458B30:
    stw 30, 0x58(1)
    addi 4, 1, 0x58
    addi 5, 29, 0x84
    li 6, 0x0
    lwz 3, 0x30(29)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0x84(29)
    cmplwi 3, 0x0
    .4byte 0x41820394 # beq .L_80458EF0
    lfs 1, 0x50(29)
    addi 3, 3, 0x48
    li 4, 0x0
    bl fn_800262AC
    .4byte 0x48000380 # b .L_80458EF0
L_80458B74:
    extsb. 0, 31
    .4byte 0x4180021C # blt .L_80458D94
    cmplwi 30, 0xe
    .4byte 0x41820054 # beq .L_80458BD4
    cmplwi 30, 0x1f
    .4byte 0x4182004C # beq .L_80458BD4
    cmplwi 30, 0x36
    .4byte 0x41820044 # beq .L_80458BD4
    cmplwi 30, 0x54
    .4byte 0x4182003C # beq .L_80458BD4
    cmplwi 30, 0x55
    .4byte 0x41820034 # beq .L_80458BD4
    cmplwi 30, 0x4f
    .4byte 0x4182002C # beq .L_80458BD4
    cmplwi 30, 0x50
    .4byte 0x41820024 # beq .L_80458BD4
    extsb 0, 31
    stw 30, 0x68(1)
    slwi 0, 0, 2
    addi 4, 1, 0x68
    add 3, 29, 0
    li 5, 0x0
    lwz 3, 0x18(3)
    bl fn_8003F37C
L_80458BD4:
    extsb 3, 31
    li 0, 0x13
    slwi 3, 3, 2
    addi 4, 1, 0x30
    add 27, 29, 3
    li 5, 0x0
    lwz 28, 0x18(27)
    stw 0, 0x30(1)
    mr 3, 28
    bl fn_8003F37C
    li 0, 0x14
    mr 3, 28
    stw 0, 0x34(1)
    addi 4, 1, 0x34
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x15
    mr 3, 28
    stw 0, 0x38(1)
    addi 4, 1, 0x38
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x16
    mr 3, 28
    stw 0, 0x3c(1)
    addi 4, 1, 0x3c
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x17
    mr 3, 28
    stw 0, 0x40(1)
    addi 4, 1, 0x40
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x18
    mr 3, 28
    stw 0, 0x44(1)
    addi 4, 1, 0x44
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x19
    mr 3, 28
    stw 0, 0x48(1)
    addi 4, 1, 0x48
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x1a
    mr 3, 28
    stw 0, 0x4c(1)
    addi 4, 1, 0x4c
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x1b
    mr 3, 28
    stw 0, 0x50(1)
    addi 4, 1, 0x50
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x1c
    mr 3, 28
    stw 0, 0x54(1)
    addi 4, 1, 0x54
    li 5, 0x0
    bl fn_8003F37C
    stw 30, 0x64(1)
    addi 4, 1, 0x64
    lwz 3, 0x18(27)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    cmplwi 3, 0x0
    .4byte 0x418201FC # beq .L_80458EF0
    lwz 3, 0x0(3)
    cmplwi 3, 0x0
    .4byte 0x418201F0 # beq .L_80458EF0
    extsb. 0, 31
    addi 3, 3, 0x48
    .4byte 0x4080000C # bge .L_80458D18
    .4byte 0xC0220F24 # lfs f1, lbl_80543EC4@sda21(r0)
    .4byte 0x48000074 # b .L_80458D88
L_80458D18:
    lbz 0, 0x5(29)
    extsb 4, 31
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_80458D30
    .4byte 0xC0220F24 # lfs f1, lbl_80543EC4@sda21(r0)
    .4byte 0x4800005C # b .L_80458D88
L_80458D30:
    cmpwi 0, 0x1
    .4byte 0xC0220F24 # lfs f1, lbl_80543EC4@sda21(r0)
    .4byte 0x41820014 # beq .L_80458D4C
    .4byte 0x41800010 # blt .L_80458D4C
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_80458D4C
    .4byte 0x4800000C # b .L_80458D54
L_80458D4C:
    .4byte 0xC0220F24 # lfs f1, lbl_80543EC4@sda21(r0)
    .4byte 0x48000038 # b .L_80458D88
L_80458D54:
    cmpwi 4, 0x2
    .4byte 0x41820024 # beq .L_80458D7C
    .4byte 0x40800014 # bge .L_80458D70
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_80458D7C
    .4byte 0x4080001C # bge .L_80458D84
    .4byte 0x4800001C # b .L_80458D88
L_80458D70:
    cmpwi 4, 0x4
    .4byte 0x40800014 # bge .L_80458D88
    .4byte 0x4800000C # b .L_80458D84
L_80458D7C:
    .4byte 0xC0220F28 # lfs f1, lbl_80543EC8@sda21(r0)
    .4byte 0x48000008 # b .L_80458D88
L_80458D84:
    .4byte 0xC0220F2C # lfs f1, lbl_80543ECC@sda21(r0)
L_80458D88:
    li 4, 0x0
    bl fn_800263B4
    .4byte 0x48000160 # b .L_80458EF0
L_80458D94:
    cmplwi 30, 0xe
    .4byte 0x41820048 # beq .L_80458DE0
    cmplwi 30, 0x1f
    .4byte 0x41820040 # beq .L_80458DE0
    cmplwi 30, 0x36
    .4byte 0x41820038 # beq .L_80458DE0
    cmplwi 30, 0x54
    .4byte 0x41820030 # beq .L_80458DE0
    cmplwi 30, 0x55
    .4byte 0x41820028 # beq .L_80458DE0
    cmplwi 30, 0x4f
    .4byte 0x41820020 # beq .L_80458DE0
    cmplwi 30, 0x50
    .4byte 0x41820018 # beq .L_80458DE0
    stw 30, 0x60(1)
    addi 4, 1, 0x60
    li 5, 0x0
    lwz 3, 0x14(29)
    bl fn_8003F37C
L_80458DE0:
    lwz 28, 0x14(29)
    li 0, 0x13
    addi 4, 1, 0x8
    li 5, 0x0
    stw 0, 0x8(1)
    mr 3, 28
    bl fn_8003F37C
    li 0, 0x14
    mr 3, 28
    stw 0, 0xc(1)
    addi 4, 1, 0xc
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x15
    mr 3, 28
    stw 0, 0x10(1)
    addi 4, 1, 0x10
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x16
    mr 3, 28
    stw 0, 0x14(1)
    addi 4, 1, 0x14
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x17
    mr 3, 28
    stw 0, 0x18(1)
    addi 4, 1, 0x18
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x18
    mr 3, 28
    stw 0, 0x1c(1)
    addi 4, 1, 0x1c
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x19
    mr 3, 28
    stw 0, 0x20(1)
    addi 4, 1, 0x20
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x1a
    mr 3, 28
    stw 0, 0x24(1)
    addi 4, 1, 0x24
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x1b
    mr 3, 28
    stw 0, 0x28(1)
    addi 4, 1, 0x28
    li 5, 0x0
    bl fn_8003F37C
    li 0, 0x1c
    mr 3, 28
    stw 0, 0x2c(1)
    addi 4, 1, 0x2c
    li 5, 0x0
    bl fn_8003F37C
    stw 30, 0x5c(1)
    addi 4, 1, 0x5c
    lwz 3, 0x14(29)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_80458EF0:
    lmw 27, 0x9c(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_80458F04:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0x4(3)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_80458F88
    lbz 0, 0x5(31)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80458F48
    lwz 3, 0x84(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80458F48
    lwz 0, 0x18(3)
    cmplw 4, 0
    .4byte 0x41820044 # beq .L_80458F88
L_80458F48:
    stw 4, 0x8(1)
    addi 4, 1, 0x8
    addi 5, 31, 0x84
    li 6, 0x0
    lwz 3, 0x30(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0x84(31)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_80458F88
    lfs 1, 0x50(31)
    addi 3, 3, 0x48
    li 4, 0x0
    bl fn_800262AC
L_80458F88:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

