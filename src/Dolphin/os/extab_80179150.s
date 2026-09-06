# MAJOR: dispatch-cross-check bundle - 4 real FourCC actor vtable
# bodies (ctors already landed: fn_8017A228, fn_8017AF1C, fn_8017BDF8,
# fn_8017ED1C, fn_801826F0 - 5 sinit entries for 4 dispatch-confirmed
# actor dtors, matching fn_80179150/fn_8017A44C/fn_8017B140/
# fn_8017E640 territory) plus shared helper/update functions, landed
# as ONE byte-contiguous 52-function, ~9,924-byte Track-A bundle
# (0x80179150-0x80182914). Found+verified via spanwalk.py (full
# contiguity confirmed, stopping exactly at the pre-existing
# extab_80182914.s boundary) and resolvefiles.py (23 fused-dump
# functions). .ctors placement (0x8045BF88-0x8045BF9C) found by
# brute-force scanning every currently-unclaimed .ctors gap for the
# exact 5-address subsequence. See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_800074B4
etb_800074B4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800074B4, 8

.global etb_800074BC
etb_800074BC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800074BC, 8

.global etb_800074C4
etb_800074C4:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_800074C4, 8

.global etb_800074CC
etb_800074CC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800074CC, 8

.global etb_800074D4
etb_800074D4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800074D4, 8

.global etb_800074DC
etb_800074DC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800074DC, 8

.global etb_800074E4
etb_800074E4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800074E4, 8

.global etb_800074EC
etb_800074EC:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_800074EC, 8

.global etb_800074F4
etb_800074F4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800074F4, 8

.global etb_800074FC
etb_800074FC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800074FC, 8

.global etb_80007504
etb_80007504:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007504, 8

.global etb_8000750C
etb_8000750C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000750C, 8

.global etb_80007514
etb_80007514:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007514, 8

.global etb_8000751C
etb_8000751C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000751C, 8

.global etb_80007524
etb_80007524:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007524, 8

.global etb_8000752C
etb_8000752C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000752C, 8

.global etb_80007534
etb_80007534:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007534, 8

.global etb_8000753C
etb_8000753C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000753C, 8

.global etb_80007544
etb_80007544:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80007544, 8

.global etb_8000754C
etb_8000754C:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_8000754C, 8

.global etb_80007554
etb_80007554:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80007554, 8

.global etb_8000755C
etb_8000755C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000755C, 8

.global etb_80007564
etb_80007564:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80007564, 8

.global etb_8000756C
etb_8000756C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000756C, 8

.global etb_80007574
etb_80007574:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007574, 8

.global etb_8000757C
etb_8000757C:
    .4byte 0x198A0000
    .4byte 0x00000000
.size etb_8000757C, 8

.global etb_80007584
etb_80007584:
    .4byte 0x390A0000
    .4byte 0x00000000
.size etb_80007584, 8

.global etb_8000758C
etb_8000758C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000758C, 8

.global etb_80007594
etb_80007594:
    .4byte 0x480A0000
    .4byte 0x00000000
.size etb_80007594, 8

.global etb_8000759C
etb_8000759C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000759C, 8

.global etb_800075A4
etb_800075A4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800075A4, 8

.global etb_800075AC
etb_800075AC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800075AC, 8

.section extabindex, "a"
.balign 4
.global eti_80014134
eti_80014134:
    .4byte fn_80179150
    .4byte 0x00000060
    .4byte etb_800074B4
.size eti_80014134, 12

.global eti_80014140
eti_80014140:
    .4byte fn_801791B0
    .4byte 0x000001D8
    .4byte etb_800074BC
.size eti_80014140, 12

.global eti_8001414C
eti_8001414C:
    .4byte fn_80179388
    .4byte 0x00000BDC
    .4byte etb_800074C4
.size eti_8001414C, 12

.global eti_80014158
eti_80014158:
    .4byte fn_80179F64
    .4byte 0x000002C4
    .4byte etb_800074CC
.size eti_80014158, 12

.global eti_80014164
eti_80014164:
    .4byte fn_8017A228
    .4byte 0x00000224
    .4byte etb_800074D4
.size eti_80014164, 12

.global eti_80014170
eti_80014170:
    .4byte fn_8017A44C
    .4byte 0x00000060
    .4byte etb_800074DC
.size eti_80014170, 12

.global eti_8001417C
eti_8001417C:
    .4byte fn_8017A4AC
    .4byte 0x000001E0
    .4byte etb_800074E4
.size eti_8001417C, 12

.global eti_80014188
eti_80014188:
    .4byte fn_8017A68C
    .4byte 0x0000046C
    .4byte etb_800074EC
.size eti_80014188, 12

.global eti_80014194
eti_80014194:
    .4byte fn_8017AAF8
    .4byte 0x00000320
    .4byte etb_800074F4
.size eti_80014194, 12

.global eti_800141A0
eti_800141A0:
    .4byte fn_8017AE18
    .4byte 0x00000104
    .4byte etb_800074FC
.size eti_800141A0, 12

.global eti_800141AC
eti_800141AC:
    .4byte fn_8017AF1C
    .4byte 0x00000224
    .4byte etb_80007504
.size eti_800141AC, 12

.global eti_800141B8
eti_800141B8:
    .4byte fn_8017B140
    .4byte 0x00000060
    .4byte etb_8000750C
.size eti_800141B8, 12

.global eti_800141C4
eti_800141C4:
    .4byte fn_8017B1A0
    .4byte 0x00000214
    .4byte etb_80007514
.size eti_800141C4, 12

.global eti_800141D0
eti_800141D0:
    .4byte fn_8017B3B4
    .4byte 0x000007F4
    .4byte etb_8000751C
.size eti_800141D0, 12

.global eti_800141DC
eti_800141DC:
    .4byte fn_8017BBA8
    .4byte 0x00000054
    .4byte etb_80007524
.size eti_800141DC, 12

.global eti_800141E8
eti_800141E8:
    .4byte fn_8017BBFC
    .4byte 0x000001FC
    .4byte etb_8000752C
.size eti_800141E8, 12

.global eti_800141F4
eti_800141F4:
    .4byte fn_8017BDF8
    .4byte 0x00000224
    .4byte etb_80007534
.size eti_800141F4, 12

.global eti_80014200
eti_80014200:
    .4byte fn_8017C01C
    .4byte 0x0000005C
    .4byte etb_8000753C
.size eti_80014200, 12

.global eti_8001420C
eti_8001420C:
    .4byte fn_8017C078
    .4byte 0x00000394
    .4byte etb_80007544
.size eti_8001420C, 12

.global eti_80014218
eti_80014218:
    .4byte fn_8017C40C
    .4byte 0x00002234
    .4byte etb_8000754C
.size eti_80014218, 12

.global eti_80014224
eti_80014224:
    .4byte fn_8017E640
    .4byte 0x00000130
    .4byte etb_8000755C
.size eti_80014224, 12

.global eti_80014230
eti_80014230:
    .4byte fn_8017E770
    .4byte 0x00000344
    .4byte etb_80007564
.size eti_80014230, 12

.global eti_8001423C
eti_8001423C:
    .4byte fn_8017EB94
    .4byte 0x000000A4
    .4byte etb_80007554
.size eti_8001423C, 12

.global eti_80014248
eti_80014248:
    .4byte fn_8017ED1C
    .4byte 0x00000224
    .4byte etb_8000756C
.size eti_80014248, 12

.global eti_80014254
eti_80014254:
    .4byte fn_8017EF40
    .4byte 0x00000058
    .4byte etb_80007574
.size eti_80014254, 12

.global eti_80014260
eti_80014260:
    .4byte fn_8017EF98
    .4byte 0x00000B78
    .4byte etb_8000757C
.size eti_80014260, 12

.global eti_8001426C
eti_8001426C:
    .4byte fn_8017FB10
    .4byte 0x000020B8
    .4byte etb_80007584
.size eti_8001426C, 12

.global eti_80014278
eti_80014278:
    .4byte fn_80181BC8
    .4byte 0x00000434
    .4byte etb_80007594
.size eti_80014278, 12

.global eti_80014284
eti_80014284:
    .4byte fn_80181FFC
    .4byte 0x000000B8
    .4byte etb_8000759C
.size eti_80014284, 12

.global eti_80014290
eti_80014290:
    .4byte fn_801820B4
    .4byte 0x0000058C
    .4byte etb_800075A4
.size eti_80014290, 12

.global eti_8001429C
eti_8001429C:
    .4byte fn_801826A4
    .4byte 0x00000040
    .4byte etb_8000758C
.size eti_8001429C, 12

.global eti_800142A8
eti_800142A8:
    .4byte fn_801826F0
    .4byte 0x00000224
    .4byte etb_800075AC
.size eti_800142A8, 12

.text
.balign 4
.global fn_80179150
.global fn_801791B0
.global fn_80179388
.global fn_80179F64
.global fn_8017A228
.global fn_8017A44C
.global fn_8017A4AC
.global fn_8017A68C
.global fn_8017AAF8
.global fn_8017AE18
.global fn_8017AF1C
.global fn_8017B140
.global fn_8017B1A0
.global fn_8017B3B4
.global fn_8017BBA8
.global fn_8017BBFC
.global fn_8017BDF8
.global fn_8017C01C
.global fn_8017C078
.global fn_8017C40C
.global fn_8017E640
.global fn_8017E770
.global fn_8017EAB4
.global fn_8017EACC
.global fn_8017EADC
.global fn_8017EAF8
.global fn_8017EB0C
.global fn_8017EB1C
.global fn_8017EB44
.global fn_8017EB94
.global fn_8017EC38
.global fn_8017EC5C
.global fn_8017EC70
.global fn_8017ECC0
.global fn_8017ECE8
.global fn_8017ECF4
.global fn_8017ED08
.global fn_8017ED1C
.global fn_8017EF40
.global fn_8017EF98
.global fn_8017FB10
.global fn_80181BC8
.global fn_80181FFC
.global fn_801820B4
.global fn_80182640
.global fn_80182650
.global fn_80182660
.global fn_80182674
.global fn_80182690
.global fn_801826A4
.global fn_801826E4
.global fn_801826F0

fn_80179150:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80179194
    lis 5, lbl_804A0FF8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A0FF8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80179194
    mr 3, 30
    bl dtor_80084580
L_80179194:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801791B0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    cmplwi 0, 0xd
    .4byte 0x40820148 # bne .L_80179314
    li 0, -0x1
    addi 9, 1, 0x18
    stw 0, 0x28(1)
    li 10, 0x0
    stw 0, 0x2c(1)
    .4byte 0x48000064 # b .L_80179248
L_801791E8:
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
L_80179248:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801791E8
    li 10, 0x0
    .4byte 0xC022AC80 # lfs f1, lbl_8053DC20@sda21(r0)
    stb 10, 0x35(1)
    li 9, 0x1
    li 11, -0x1
    li 8, 0x3
    li 0, 0x2
    lis 3, lbl_80466868@ha
    addi 4, 3, lbl_80466868@l
    fmr 2, 1
    stw 11, 0x28(1)
    mr 3, 31
    addi 6, 1, 0x18
    li 5, 0x431
    stw 10, 0x2c(1)
    li 7, -0x1
    stw 10, 0x30(1)
    stb 10, 0x34(1)
    stb 10, 0x36(1)
    stb 9, 0x37(1)
    stb 9, 0x38(1)
    stb 10, 0x39(1)
    stb 10, 0x3a(1)
    stb 10, 0x3b(1)
    stb 10, 0x3c(1)
    stb 10, 0x3d(1)
    stb 9, 0x3e(1)
    stw 8, 0x40(1)
    stb 9, 0x44(1)
    stb 10, 0x45(1)
    stb 10, 0x46(1)
    stw 11, 0x48(1)
    stw 10, 0x4c(1)
    stw 0, 0x50(1)
    stb 11, 0x35(1)
    bl fn_801F06F0
    .4byte 0xC022AC80 # lfs f1, lbl_8053DC20@sda21(r0)
    lis 3, lbl_80466868@ha
    addi 4, 3, lbl_80466868@l
    addi 6, 1, 0x18
    fmr 2, 1
    mr 3, 31
    li 5, 0x431
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000064 # b .L_80179374
L_80179314:
    lis 3, 0x3f3f
    lfs 0, 0x344(31)
    addi 0, 3, 0x1f7f
    .4byte 0xC022AC84 # lfs f1, lbl_8053DC24@sda21(r0)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0x34c
    stw 0, 0xc(1)
    fmuls 1, 1, 0
    addi 5, 31, 0xc
    addi 6, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x2c(3)
    bl fn_80158624
    lis 3, 0x3f3f
    lfs 1, 0x344(31)
    addi 0, 3, 0x1f3f
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 0, 0x8(1)
    addi 4, 31, 0x34c
    addi 5, 31, 0xc
    addi 6, 1, 0x8
    stw 0, 0x10(1)
    lwz 3, 0x2c(3)
    bl fn_80158624
L_80179374:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80179388:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    stw 29, 0x84(1)
    stw 28, 0x80(1)
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    li 0, 0x0
    stw 0, 0x18(1)
    mr 31, 3
    stfs 0, 0x14(1)
    lwz 0, 0x2f8(3)
    cmpwi 0, 0x3
    .4byte 0x4182002C # beq .L_801793FC
    lfs 1, 0x370(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AC8C # lfs f2, lbl_8053DC2C@sda21(r0)
    .4byte 0xC062AC80 # lfs f3, lbl_8053DC20@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x374(31)
    addi 3, 31, 0x40
    .4byte 0xC042AC8C # lfs f2, lbl_8053DC2C@sda21(r0)
    .4byte 0xC062AC80 # lfs f3, lbl_8053DC20@sda21(r0)
    bl fn_801F71A4
L_801793FC:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x2f8(31)
    cmplwi 0, 0x8
    .4byte 0x41810918 # bgt .L_80179D3C
    lis 3, jumptable_804A104C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A104C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x408208F4 # bne .L_80179D3C
    li 0, 0x12c
    .4byte 0xC022AC90 # lfs f1, lbl_8053DC30@sda21(r0)
    stw 0, 0x300(31)
    lfs 0, 0x370(31)
    fmuls 0, 0, 1
    stfs 0, 0x370(31)
    lfs 0, 0x374(31)
    fmuls 0, 0, 1
    stfs 0, 0x374(31)
    .4byte 0x480008CC # b .L_80179D3C
    lwz 0, 0x30c(31)
    lis 3, lbl_8052EBC0@ha
    lhz 4, 0x340(31)
    addi 3, 3, lbl_8052EBC0@l
    clrlwi 0, 0, 16
    add 0, 4, 0
    sth 0, 0x340(31)
    lhz 0, 0x340(31)
    lfs 2, 0x348(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x34c(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x340(31)
    lfs 2, 0x348(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x350(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000870 # b .L_80179D3C
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x34
    lfs 0, 0x14(31)
    addi 3, 31, 0x230
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x3c(1)
    lwz 4, 0x334(31)
    lwz 6, 0x4(31)
    bl fn_800FE3EC
    clrlwi. 0, 3, 24
    .4byte 0x41820844 # beq .L_80179D3C
    addi 3, 31, 0x230
    li 4, 0xff
    bl fn_800FE21C
    stw 3, 0x338(31)
    lwz 0, 0x338(31)
    mulli 0, 0, 0x3c
    stw 0, 0x338(31)
    lwz 0, 0x338(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8017952C
    li 0, 0x3
    stw 0, 0x338(31)
L_8017952C:
    lwz 4, 0x4(31)
    addi 3, 31, 0x230
    addi 5, 1, 0x4c
    li 6, 0x20
    bl fn_800FD894
    clrlwi 0, 3, 24
    li 3, 0x0
    stw 0, 0x33c(31)
    li 0, 0x3
    stw 3, 0x314(31)
    stw 3, 0x318(31)
    stw 0, 0x2f8(31)
    lwz 0, 0x2f8(31)
    stw 0, 0x2fc(31)
    psq_l 1, 0x358(31), 0, 0
    addi 5, 1, 0x1c
    lfs 0, 0x360(31)
    addi 3, 1, 0x28
    addi 4, 31, 0x230
    li 8, 0xff
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x24(1)
    lwz 6, 0x314(31)
    lwz 7, 0x338(31)
    bl fn_800FD998
    psq_l 1, 0x28(1), 0, 0
    lfs 0, 0x30(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    lwz 3, 0x314(31)
    addi 0, 3, 0x1
    stw 0, 0x314(31)
    lwz 3, 0x314(31)
    lwz 0, 0x338(31)
    cmpw 3, 0
    .4byte 0x40810784 # ble .L_80179D3C
    li 4, 0x0
    stw 4, 0x314(31)
    lwz 3, 0x318(31)
    addi 0, 3, 0x1
    stw 0, 0x318(31)
    lwz 3, 0x318(31)
    lwz 0, 0x33c(31)
    cmpw 3, 0
    .4byte 0x41800008 # blt .L_801795E4
    stw 4, 0x318(31)
L_801795E4:
    lwz 4, 0x4(31)
    addi 3, 31, 0x230
    addi 5, 1, 0x4c
    li 6, 0x20
    bl fn_800FD894
    lwz 4, 0x318(31)
    addi 3, 1, 0x4c
    lbz 0, 0x232(31)
    lbzx 3, 3, 4
    cmplw 3, 0
    .4byte 0x40800008 # bge .L_80179614
    stb 3, 0x233(31)
L_80179614:
    lfs 0, 0xc(31)
    stfs 0, 0x358(31)
    lfs 0, 0x10(31)
    stfs 0, 0x35c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x360(31)
    .4byte 0x48000710 # b .L_80179D3C
    li 0, 0x5
    stw 0, 0x2f8(31)
    lwz 4, 0x198(31)
    mr 3, 31
    addi 7, 1, 0x14
    addi 8, 1, 0x18
    li 5, 0x0
    li 6, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    .4byte 0x480006E0 # b .L_80179D3C
    lwz 0, 0x328(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8017967C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x36
    li 5, -0x1
    bl fn_80458880
L_8017967C:
    .4byte 0x806D83C0 # lwz r3, lbl_80539F80@sda21(r0)
    cmpwi 3, 0x0
    .4byte 0x41800314 # blt .L_80179998
    lwz 29, 0x4(31)
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820304 # bne .L_80179998
    .4byte 0x806D83C0 # lwz r3, lbl_80539F80@sda21(r0)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    .4byte 0x806D83C0 # lwz r3, lbl_80539F80@sda21(r0)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    fsubs 30, 2, 1
    fmuls 1, 30, 30
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_8017971C
    frsqrte 1, 4
    .4byte 0xC862AC98 # lfd f3, lbl_8053DC38@sda21(r0)
    .4byte 0xC842ACA0 # lfd f2, lbl_8053DC40@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801797A0
L_8017971C:
    .4byte 0xC802ACA8 # lfd f0, lbl_8053DC48@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80179734
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801797A0
L_80179734:
    stfs 4, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_8017975C
    .4byte 0x40800040 # bge .L_8017978C
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80179774
    .4byte 0x48000034 # b .L_8017978C
L_8017975C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8017976C
    li 0, 0x1
    .4byte 0x48000028 # b .L_80179790
L_8017976C:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80179790
L_80179774:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80179784
    li 0, 0x5
    .4byte 0x48000010 # b .L_80179790
L_80179784:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80179790
L_8017978C:
    li 0, 0x4
L_80179790:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801797A0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801797A0:
    .4byte 0xC002ACB0 # lfs f0, lbl_8053DC50@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40810094 # ble .L_8017983C
    fmr 1, 31
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002ACB4 # lfs f0, lbl_8053DC54@sda21(r0)
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80534C00@ha
    .4byte 0xC062ACB0 # lfs f3, lbl_8053DC50@sda21(r0)
    fmuls 0, 1, 0
    addi 4, 4, lbl_8052EBC0@l
    fmr 1, 31
    addi 3, 3, lbl_80534C00@l
    fmr 2, 30
    fctiwz 0, 0
    stfd 0, 0x70(1)
    lwz 0, 0x74(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 0, 3, 0
    stfs 0, 0x370(31)
    bl fn_80093340
    .4byte 0xC002ACB4 # lfs f0, lbl_8053DC54@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042ACB0 # lfs f2, lbl_8053DC50@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x78(1)
    lwz 0, 0x7c(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 2, 0
    stfs 0, 0x374(31)
    .4byte 0x48000504 # b .L_80179D3C
L_8017983C:
    .4byte 0x806D83C0 # lwz r3, lbl_80539F80@sda21(r0)
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    stfs 1, 0xc(31)
    lfs 1, 0x4(3)
    stfs 1, 0x10(31)
    lfs 1, 0x8(3)
    stfs 1, 0x14(31)
    stfs 0, 0x378(31)
    stfs 0, 0x374(31)
    stfs 0, 0x370(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 0, 0x300(31)
    cmpwi 0, 0x0
    .4byte 0x408204BC # bne .L_80179D3C
    lwz 0, 0x310(31)
    cmpwi 0, 0x0
    .4byte 0x418204B0 # beq .L_80179D3C
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lwz 0, 0x328(31)
    cmpwi 0, 0x0
    .4byte 0x408200CC # bne .L_8017996C
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3C2ACB8 # lfs f30, lbl_8053DC58@sda21(r0)
    addi 29, 3, lbl_8052EBC0@l
    li 28, 0x0
    lis 30, 0x504f
L_801798B8:
    addi 0, 28, 0x1
    lfs 2, 0xc(31)
    mulli 0, 0, 0xc30
    stfs 2, 0x40(1)
    rlwinm 0, 0, 30, 18, 28
    lfs 3, 0x10(31)
    add 3, 29, 0
    lfs 1, 0x0(3)
    lfs 0, 0x4(3)
    stfs 3, 0x44(1)
    fmadds 1, 30, 1, 2
    fmadds 0, 30, 0, 3
    lfs 2, 0x14(31)
    stfs 2, 0x48(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x4f48
    addi 6, 1, 0x40
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    cmpwi 3, 0x0
    .4byte 0x4180002C # blt .L_80179948
    lwz 3, 0x4(31)
    addi 4, 1, 0x40
    .4byte 0xC022AC80 # lfs f1, lbl_8053DC20@sda21(r0)
    li 5, 0x1fd
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80179948:
    addi 28, 28, 0x1
    cmpwi 28, 0x14
    .4byte 0x4180FF68 # blt .L_801798B8
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x67
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000024 # b .L_8017998C
L_8017996C:
    bl GetRoomConfigRecord
    lwz 4, 0x32c(31)
    lwz 5, 0x330(31)
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xe
    li 5, 0x0
    bl fn_80136798
L_8017998C:
    li 0, 0x0
    stw 0, 0x310(31)
    .4byte 0x480003A8 # b .L_80179D3C
L_80179998:
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    .4byte 0x4800039C # b .L_80179D3C
    .4byte 0x800D83C4 # lwz r0, lbl_80539F84@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41800198 # blt .L_80179B44
    .4byte 0x806D8FA8 # lwz r3, lbl_8053AB68@sda21(r0)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x40820188 # bne .L_80179B44
    lis 4, lbl_804C0EA0@ha
    lfsu 2, lbl_804C0EA0@l(4)
    lfs 3, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 1, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    lfs 0, 0x4(4)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    fneg 1, 30
    fneg 2, 31
    bl fn_80093340
    .4byte 0xC002ACB4 # lfs f0, lbl_8053DC54@sda21(r0)
    fmuls 2, 31, 31
    lis 3, lbl_8052EBC0@ha
    fmuls 3, 1, 0
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    fmadds 4, 30, 30, 2
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022ACB0 # lfs f1, lbl_8053DC50@sda21(r0)
    fctiwz 2, 3
    fcmpo cr0, 4, 0
    stfd 2, 0x78(1)
    lwz 0, 0x7c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    add 3, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x370(31)
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x374(31)
    .4byte 0x4081004C # ble .L_80179A8C
    frsqrte 1, 4
    .4byte 0xC862AC98 # lfd f3, lbl_8053DC38@sda21(r0)
    .4byte 0xC842ACA0 # lfd f2, lbl_8053DC40@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80179B10
L_80179A8C:
    .4byte 0xC802ACA8 # lfd f0, lbl_8053DC48@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80179AA4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80179B10
L_80179AA4:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80179ACC
    .4byte 0x40800040 # bge .L_80179AFC
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80179AE4
    .4byte 0x48000034 # b .L_80179AFC
L_80179ACC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80179ADC
    li 0, 0x1
    .4byte 0x48000028 # b .L_80179B00
L_80179ADC:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80179B00
L_80179AE4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80179AF4
    li 0, 0x5
    .4byte 0x48000010 # b .L_80179B00
L_80179AF4:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80179B00
L_80179AFC:
    li 0, 0x4
L_80179B00:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80179B10
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80179B10:
    .4byte 0xC002ACBC # lfs f0, lbl_8053DC5C@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080002C # bge .L_80179B44
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    stfs 0, 0x378(31)
    stfs 0, 0x374(31)
    stfs 0, 0x370(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 3, 0x31c(31)
    addi 0, 3, 0x1
    stw 0, 0x31c(31)
L_80179B44:
    lwz 0, 0x31c(31)
    cmpwi 0, 0x3c
    .4byte 0x41810024 # bgt .L_80179B70
    lis 3, lbl_804C0EA0@ha
    .4byte 0xC022AC88 # lfs f1, lbl_8053DC28@sda21(r0)
    lfsu 0, lbl_804C0EA0@l(3)
    fcmpu cr0, 0, 1
    .4byte 0x408201DC # bne .L_80179D3C
    lfs 0, 0x4(3)
    fcmpu cr0, 0, 1
    .4byte 0x408201D0 # bne .L_80179D3C
L_80179B70:
    lis 3, lbl_804C0EA0@ha
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    addi 4, 3, lbl_804C0EA0@l
    li 0, -0x1
    .4byte 0x900D83C4 # stw r0, lbl_80539F84@sda21(r0)
    li 3, 0x0
    li 0, 0x8
    stfs 0, 0x8(4)
    stfs 0, 0x4(4)
    stfs 0, 0x0(4)
    stw 3, 0x31c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x358(31)
    lfs 0, 0x10(31)
    stfs 0, 0x35c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x360(31)
    stw 0, 0x2f8(31)
    lwz 0, 0x2fc(31)
    cmpwi 0, 0x3
    .4byte 0x4082017C # bne .L_80179D3C
    stw 0, 0x2f8(31)
    .4byte 0x48000174 # b .L_80179D3C
    lfs 3, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x364(31)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x10(31)
    lfs 0, 0x368(31)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    fneg 1, 30
    fneg 2, 31
    bl fn_80093340
    .4byte 0xC002ACB4 # lfs f0, lbl_8053DC54@sda21(r0)
    fmuls 2, 31, 31
    lis 3, lbl_8052EBC0@ha
    fmuls 3, 1, 0
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    fmadds 4, 30, 30, 2
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022ACB0 # lfs f1, lbl_8053DC50@sda21(r0)
    fctiwz 2, 3
    fcmpo cr0, 4, 0
    stfd 2, 0x78(1)
    lwz 0, 0x7c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    add 3, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x370(31)
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x374(31)
    .4byte 0x4081004C # ble .L_80179C94
    frsqrte 1, 4
    .4byte 0xC862AC98 # lfd f3, lbl_8053DC38@sda21(r0)
    .4byte 0xC842ACA0 # lfd f2, lbl_8053DC40@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80179D18
L_80179C94:
    .4byte 0xC802ACA8 # lfd f0, lbl_8053DC48@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80179CAC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80179D18
L_80179CAC:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80179CD4
    .4byte 0x40800040 # bge .L_80179D04
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80179CEC
    .4byte 0x48000034 # b .L_80179D04
L_80179CD4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80179CE4
    li 0, 0x1
    .4byte 0x48000028 # b .L_80179D08
L_80179CE4:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80179D08
L_80179CEC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80179CFC
    li 0, 0x5
    .4byte 0x48000010 # b .L_80179D08
L_80179CFC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80179D08
L_80179D04:
    li 0, 0x4
L_80179D08:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80179D18
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80179D18:
    .4byte 0xC002ACBC # lfs f0, lbl_8053DC5C@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080001C # bge .L_80179D3C
    .4byte 0xC002AC88 # lfs f0, lbl_8053DC28@sda21(r0)
    stfs 0, 0x378(31)
    stfs 0, 0x374(31)
    stfs 0, 0x370(31)
    lwz 0, 0x2fc(31)
    stw 0, 0x2f8(31)
L_80179D3C:
    lwz 0, 0x2f8(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80179D68
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80179D68
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_80179D68
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_80179D68
    cmpwi 0, 0x8
    .4byte 0x40820194 # bne .L_80179EF8
L_80179D68:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 7, 1, 0x14
    addi 8, 1, 0x18
    li 5, 0x0
    li 6, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x320(31)
    cmpwi 0, 0x0
    .4byte 0x41820024 # beq .L_80179DB8
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820190 # beq .L_80179F34
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x310(31)
    stw 0, 0x320(31)
L_80179DB8:
    .4byte 0x800D83C0 # lwz r0, lbl_80539F80@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_80179DD0
    lwz 0, 0x320(31)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_80179E00
L_80179DD0:
    lwz 3, 0x18(1)
    cmpwi 3, 0x0
    .4byte 0x418000A0 # blt .L_80179E78
    lfs 1, 0x344(31)
    .4byte 0xC002ACC0 # lfs f0, lbl_8053DC60@sda21(r0)
    lfs 2, 0x14(1)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800088 # bge .L_80179E78
    bl fn_8022B7C4
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_80179E78
L_80179E00:
    .4byte 0x800D83C0 # lwz r0, lbl_80539F80@sda21(r0)
    cmpwi 0, -0x1
    .4byte 0x40820038 # bne .L_80179E40
    lwz 0, 0x18(1)
    .4byte 0x900D83C0 # stw r0, lbl_80539F80@sda21(r0)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_80179E30
    li 0, 0x1
    stw 0, 0x320(31)
    .4byte 0x48000108 # b .L_80179F34
L_80179E30:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x320(31)
    stw 0, 0x310(31)
L_80179E40:
    lwz 0, 0x328(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_80179E64
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    li 0, 0x104
    stw 0, 0x300(31)
    .4byte 0x4800000C # b .L_80179E6C
L_80179E64:
    li 0, 0x64
    stw 0, 0x300(31)
L_80179E6C:
    li 0, 0x6
    stw 0, 0x2f8(31)
    .4byte 0x48000084 # b .L_80179EF8
L_80179E78:
    lwz 0, 0x2f8(31)
    cmpwi 0, 0x7
    .4byte 0x41820078 # beq .L_80179EF8
    cmpwi 0, 0x8
    .4byte 0x41820070 # beq .L_80179EF8
    .4byte 0x806D8FA8 # lwz r3, lbl_8053AB68@sda21(r0)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x40820060 # bne .L_80179EF8
    .4byte 0x800D83C4 # lwz r0, lbl_80539F84@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40800024 # bge .L_80179EC8
    lis 3, lbl_804C0EA0@ha
    .4byte 0xC022AC88 # lfs f1, lbl_8053DC28@sda21(r0)
    lfsu 0, lbl_804C0EA0@l(3)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_80179EC8
    lfs 0, 0x4(3)
    fcmpu cr0, 0, 1
    .4byte 0x41820034 # beq .L_80179EF8
L_80179EC8:
    li 0, 0x1
    li 3, 0x0
    .4byte 0x900D83C4 # stw r0, lbl_80539F84@sda21(r0)
    li 0, 0x7
    lfs 0, 0xc(31)
    stfs 0, 0x364(31)
    lfs 0, 0x10(31)
    stfs 0, 0x368(31)
    lfs 0, 0x14(31)
    stfs 0, 0x36c(31)
    stw 3, 0x31c(31)
    stw 0, 0x2f8(31)
L_80179EF8:
    lwz 3, 0x300(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80179F0C
    subi 0, 3, 0x1
    stw 0, 0x300(31)
L_80179F0C:
    lwz 3, 0x304(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80179F20
    subi 0, 3, 0x1
    stw 0, 0x304(31)
L_80179F20:
    lwz 3, 0x308(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80179F34
    subi 0, 3, 0x1
    stw 0, 0x308(31)
L_80179F34:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    lwz 0, 0xb4(1)
    lwz 28, 0x80(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

fn_80179F64:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC082ACC4 # lfs f4, lbl_8053DC64@sda21(r0)
    li 5, 0x0
    stw 0, 0x14(1)
    li 0, 0x64
    .4byte 0xC062ACC8 # lfs f3, lbl_8053DC68@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_804C0EA0@ha
    .4byte 0xC042AC88 # lfs f2, lbl_8053DC28@sda21(r0)
    stfs 4, 0x60(31)
    addi 4, 3, lbl_804C0EA0@l
    li 3, -0x1
    .4byte 0xC022ACCC # lfs f1, lbl_8053DC6C@sda21(r0)
    stfs 4, 0x64(31)
    .4byte 0xC002ACD0 # lfs f0, lbl_8053DC70@sda21(r0)
    stfs 3, 0x68(31)
    stfs 3, 0x6c(31)
    stfs 4, 0x80(31)
    stfs 4, 0x84(31)
    stfs 3, 0x88(31)
    stfs 3, 0x8c(31)
    lwz 6, 0x90(31)
    extrwi 6, 6, 4, 24
    stw 6, 0x328(31)
    lwz 6, 0x90(31)
    extrwi 6, 6, 4, 20
    stw 6, 0x32c(31)
    lwz 6, 0x90(31)
    extrwi 6, 6, 4, 16
    stw 6, 0x330(31)
    lwz 6, 0x90(31)
    extrwi 6, 6, 8, 8
    stw 6, 0x334(31)
    lwz 6, 0x90(31)
    clrlwi 6, 6, 28
    stw 6, 0x90(31)
    stw 5, 0x338(31)
    stw 5, 0x33c(31)
    stfs 2, 0x8(4)
    stfs 2, 0x4(4)
    stfs 2, 0x0(4)
    .4byte 0x906D8FA8 # stw r3, lbl_8053AB68@sda21(r0)
    .4byte 0x906D83C0 # stw r3, lbl_80539F80@sda21(r0)
    .4byte 0x906D83C4 # stw r3, lbl_80539F84@sda21(r0)
    stw 5, 0x30c(31)
    stw 5, 0x310(31)
    stw 5, 0x314(31)
    stw 5, 0x318(31)
    stw 5, 0x31c(31)
    stw 5, 0x320(31)
    stw 5, 0x300(31)
    stw 5, 0x304(31)
    stw 5, 0x308(31)
    stw 5, 0x324(31)
    stfs 1, 0x344(31)
    stfs 2, 0x378(31)
    stfs 2, 0x374(31)
    stfs 2, 0x370(31)
    stfs 2, 0x44(31)
    stfs 2, 0x40(31)
    stfs 2, 0x3c(31)
    lfs 1, 0xc(31)
    stfs 1, 0x34c(31)
    lfs 1, 0x10(31)
    stfs 1, 0x350(31)
    lfs 1, 0x14(31)
    stfs 1, 0x354(31)
    lfs 1, 0xc(31)
    stfs 1, 0x358(31)
    lfs 1, 0x10(31)
    stfs 1, 0x35c(31)
    lfs 1, 0x14(31)
    stfs 1, 0x360(31)
    lfs 1, 0xc(31)
    stfs 1, 0x364(31)
    lfs 1, 0x10(31)
    stfs 1, 0x368(31)
    lfs 1, 0x14(31)
    stfs 1, 0x36c(31)
    stfs 0, 0x348(31)
    stw 0, 0x30c(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0xb
    .4byte 0x41810048 # bgt .L_8017A100
    lis 3, jumptable_804A1070@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A1070@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000024 # b .L_8017A100
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x48000018 # b .L_8017A100
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8017A100
    li 0, 0x0
    stw 0, 0x98(31)
L_8017A100:
    lwz 0, 0x90(31)
    cmplwi 0, 0x4
    .4byte 0x41800014 # blt .L_8017A11C
    cmplwi 0, 0x7
    .4byte 0x4181000C # bgt .L_8017A11C
    li 0, -0x64
    stw 0, 0x30c(31)
L_8017A11C:
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x340(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0xc
    .4byte 0x40820018 # bne .L_8017A148
    li 0, 0x2
    stw 0, 0x2f8(31)
    lwz 0, 0x2f8(31)
    stw 0, 0x2fc(31)
    .4byte 0x480000D0 # b .L_8017A214
L_8017A148:
    cmplwi 0, 0xd
    .4byte 0x40820018 # bne .L_8017A164
    li 0, 0x4
    stw 0, 0x2f8(31)
    lwz 0, 0x2f8(31)
    stw 0, 0x2fc(31)
    .4byte 0x480000B4 # b .L_8017A214
L_8017A164:
    cmplwi 0, 0x4
    .4byte 0x4180005C # blt .L_8017A1C4
    cmplwi 0, 0xb
    .4byte 0x41810054 # bgt .L_8017A1C4
    lhz 0, 0x340(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    lfs 2, 0x348(31)
    rlwinm 3, 0, 30, 18, 28
    lfs 0, 0x34c(31)
    lfsx 1, 4, 3
    li 0, 0x1
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lhz 3, 0x340(31)
    lfs 2, 0x348(31)
    rlwinm 3, 3, 30, 18, 28
    lfs 0, 0x350(31)
    add 3, 4, 3
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
    stw 0, 0x2f8(31)
    .4byte 0x4800004C # b .L_8017A20C
L_8017A1C4:
    li 0, 0x12c
    lis 3, lbl_8052EBC0@ha
    stw 0, 0x300(31)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022ACD4 # lfs f1, lbl_8053DC74@sda21(r0)
    li 0, 0x0
    lhz 3, 0x340(31)
    rlwinm 3, 3, 30, 18, 28
    lfsx 0, 4, 3
    fmuls 0, 1, 0
    stfs 0, 0x370(31)
    lhz 3, 0x340(31)
    rlwinm 3, 3, 30, 18, 28
    add 3, 4, 3
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x374(31)
    stw 0, 0x2f8(31)
L_8017A20C:
    lwz 0, 0x2f8(31)
    stw 0, 0x2fc(31)
L_8017A214:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017A228:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C0EA0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C0EA0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A278
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_8017A278:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A2B0
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_8017A2B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A2E8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8017A2E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A320
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_8017A320:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A358
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_8017A358:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A390
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_8017A390:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A3C8
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8017A3C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A400
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_8017A400:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017A438
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_8017A438:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017A44C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8017A490
    lis 5, lbl_804A1160@ha
    li 4, 0x0
    addi 0, 5, lbl_804A1160@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8017A490
    mr 3, 30
    bl dtor_80084580
L_8017A490:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017A4AC:
    stwu 1, -0x60(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x64(1)
    li 0, -0x1
    addi 9, 1, 0x10
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 0, 0x20(1)
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_8017A53C
L_8017A4DC:
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
L_8017A53C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8017A4DC
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
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8017A5C4
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_8017A5E0
L_8017A5C4:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x418200A8 # beq .L_8017A674
    li 3, 0x1
    li 0, 0x11
    stb 3, 0x2d(1)
    stw 0, 0x40(1)
L_8017A5E0:
    lwz 0, 0x4(31)
    lwz 3, 0x254(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x12d
    .4byte 0x40800050 # bge .L_8017A640
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80466894@ha
    addi 5, 3, lbl_80466894@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022ACD8 # lfs f1, lbl_8053DC78@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x10
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_8017A640:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x254(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x12d
    bl fn_803075AC
L_8017A674:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8017A68C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 31, 3
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x25c(3)
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_8017A764
    lwz 3, 0x98(31)
    bl fn_801F6874
    extsh 29, 3
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3E2ACDC # lfs f31, lbl_8053DC7C@sda21(r0)
    addi 30, 3, lbl_8052EBC0@l
    li 28, 0x0
    addi 29, 29, 0x2000
L_8017A700:
    lfs 3, 0xc(31)
    rlwinm 0, 29, 30, 18, 28
    add 5, 30, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x8(1)
    addi 4, 1, 0x8
    lfs 1, 0x0(5)
    li 7, 0x0
    lfs 2, 0x10(31)
    li 8, 0x0
    lfs 0, 0x4(5)
    fmadds 1, 31, 1, 3
    stfs 2, 0xc(1)
    fmadds 0, 31, 0, 2
    lfs 2, 0x14(31)
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lwz 5, 0x258(31)
    lwz 6, 0x4(31)
    bl fn_802A20F0
    addi 28, 28, 0x1
    subi 29, 29, 0x4000
    cmpwi 28, 0x2
    .4byte 0x4180FFA0 # blt .L_8017A700
L_8017A764:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    mr 30, 3
    cmpwi 0, 0x2
    .4byte 0x418200AC # beq .L_8017A82C
    clrlwi. 0, 30, 24
    .4byte 0x40820018 # bne .L_8017A7A0
    mr 3, 31
    li 4, 0x2
    bl fn_801F2B20
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_8017A82C
L_8017A7A0:
    clrlwi. 0, 30, 24
    .4byte 0x40820010 # bne .L_8017A7B4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000320 # b .L_8017AAD0
L_8017A7B4:
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x40800030 # bge .L_8017A7EC
    .4byte 0xC022ACD8 # lfs f1, lbl_8053DC78@sda21(r0)
    mr 3, 30
    addi 4, 31, 0xc
    li 5, 0x339
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000028 # b .L_8017A810
L_8017A7EC:
    bl SpatialRegistry_GetBase
    lis 4, 0x4854
    mr 5, 30
    addi 4, 4, 0x4d4b
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8017A810:
    li 0, 0x0
    li 3, 0x24
    stw 0, 0x240(31)
    li 0, 0x2
    stw 3, 0x244(31)
    stw 0, 0x230(31)
    .4byte 0x480002A8 # b .L_8017AAD0
L_8017A82C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820100 # beq .L_8017A934
    .4byte 0x40800010 # bge .L_8017A848
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8017A854
    .4byte 0x480001F8 # b .L_8017AA3C
L_8017A848:
    cmpwi 0, 0x3
    .4byte 0x408001F0 # bge .L_8017AA3C
    .4byte 0x480001A0 # b .L_8017A9F0
L_8017A854:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408201E0 # bne .L_8017AA3C
    li 0, 0x2
    stw 0, 0x23c(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x408101C0 # ble .L_8017AA3C
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x23c(31)
    li 3, 0x64
    li 0, 0x88
    stw 4, 0x248(31)
    stw 3, 0x240(31)
    stw 0, 0x244(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8017A8FC
    .4byte 0x40800014 # bge .L_8017A8C0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8017A8CC
    .4byte 0x4080002C # bge .L_8017A8E4
    .4byte 0x4800006C # b .L_8017A928
L_8017A8C0:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_8017A928
    .4byte 0x4800004C # b .L_8017A914
L_8017A8CC:
    .4byte 0xC022ACE0 # lfs f1, lbl_8053DC80@sda21(r0)
    .4byte 0xC002ACE4 # lfs f0, lbl_8053DC84@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000048 # b .L_8017A928
L_8017A8E4:
    .4byte 0xC022ACE8 # lfs f1, lbl_8053DC88@sda21(r0)
    .4byte 0xC002ACE4 # lfs f0, lbl_8053DC84@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000030 # b .L_8017A928
L_8017A8FC:
    .4byte 0xC022ACE4 # lfs f1, lbl_8053DC84@sda21(r0)
    .4byte 0xC002ACE0 # lfs f0, lbl_8053DC80@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000018 # b .L_8017A928
L_8017A914:
    .4byte 0xC022ACE4 # lfs f1, lbl_8053DC84@sda21(r0)
    .4byte 0xC002ACE8 # lfs f0, lbl_8053DC88@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
L_8017A928:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x4800010C # b .L_8017AA3C
L_8017A934:
    lwz 4, 0x258(31)
    mr 3, 31
    lwz 5, 0x98(31)
    li 6, 0x1
    li 7, 0x1
    bl fn_801F2A10
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_8017A9BC
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x40800030 # bge .L_8017A98C
    .4byte 0xC022ACD8 # lfs f1, lbl_8053DC78@sda21(r0)
    mr 3, 30
    addi 4, 31, 0xc
    li 5, 0x339
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000028 # b .L_8017A9B0
L_8017A98C:
    bl SpatialRegistry_GetBase
    lis 4, 0x4854
    mr 5, 30
    addi 4, 4, 0x4d4b
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8017A9B0:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000118 # b .L_8017AAD0
L_8017A9BC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8017A9F0
    li 0, 0x2
    stw 0, 0x23c(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x4081000C # ble .L_8017A9F0
    li 0, 0x0
    stw 0, 0x248(31)
L_8017A9F0:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8017AA0C
    .4byte 0xC002ACE4 # lfs f0, lbl_8053DC84@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
L_8017AA0C:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8017AA20
    li 0, 0x0
    stb 0, 0x11c(31)
L_8017AA20:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_8017AA3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8017AA3C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8017AA70
    lwz 0, 0x98(31)
    lis 3, lbl_804A10A0@ha
    lwz 4, 0x248(31)
    addi 3, 3, lbl_804A10A0@l
    mulli 0, 0, 0x3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x254(31)
    .4byte 0x48000028 # b .L_8017AA94
L_8017AA70:
    lwz 0, 0x98(31)
    lis 3, lbl_804A1100@ha
    lwz 4, 0x248(31)
    addi 3, 3, lbl_804A1100@l
    mulli 0, 0, 0x3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x254(31)
L_8017AA94:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017AAA8
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8017AAA8:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017AABC
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8017AABC:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017AAD0
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_8017AAD0:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8017AAF8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    mr 28, 4
    mr 27, 5
    lwz 30, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    lis 3, lbl_80466880@ha
    lbz 0, 0x1(8)
    addi 7, 3, lbl_80466880@l
    mr 29, 28
    mr 4, 28
    mulli 3, 0, 0x784
    mr 5, 27
    mr 6, 30
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8017AB60
    li 3, 0x1
    .4byte 0x480002A8 # b .L_8017AE04
L_8017AB60:
    mr 3, 27
    mr 4, 28
    bl fn_8022461C
    clrlwi 30, 3, 16
    mr 3, 27
    mr 4, 28
    bl fn_80226850
    subi 0, 30, 0x10
    clrlwi 28, 3, 16
    cmplwi 0, 0x7
    .4byte 0x40810014 # ble .L_8017AB9C
    cmpwi 28, 0x140
    .4byte 0x41800024 # blt .L_8017ABB4
    cmpwi 28, 0x15f
    .4byte 0x4181001C # bgt .L_8017ABB4
L_8017AB9C:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x238(31)
    li 3, 0x0
    stb 0, 0x234(31)
    .4byte 0x48000254 # b .L_8017AE04
L_8017ABB4:
    subi 0, 28, 0x230
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_8017ABC8
    cmpwi 28, 0x234
    .4byte 0x40820014 # bne .L_8017ABD8
L_8017ABC8:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x234(31)
    .4byte 0x48000230 # b .L_8017AE04
L_8017ABD8:
    cmpwi 30, 0x0
    .4byte 0x418201F4 # beq .L_8017ADD0
    cmpwi 30, 0x4
    .4byte 0x418201EC # beq .L_8017ADD0
    cmpwi 30, 0x5
    .4byte 0x418201E4 # beq .L_8017ADD0
    cmpwi 30, 0x6
    .4byte 0x418201DC # beq .L_8017ADD0
    cmpwi 30, 0x7
    .4byte 0x418201D4 # beq .L_8017ADD0
    cmpwi 30, 0x2
    .4byte 0x418201CC # beq .L_8017ADD0
    cmpwi 30, 0x3
    .4byte 0x418201C4 # beq .L_8017ADD0
    cmpwi 30, 0x50
    .4byte 0x418201BC # beq .L_8017ADD0
    cmpwi 30, 0xe
    .4byte 0x418201B4 # beq .L_8017ADD0
    cmpwi 30, 0xc
    .4byte 0x418201AC # beq .L_8017ADD0
    cmpwi 30, 0x27
    .4byte 0x418201A4 # beq .L_8017ADD0
    cmpwi 30, 0x28
    .4byte 0x4182019C # beq .L_8017ADD0
    cmpwi 30, 0x29
    .4byte 0x41820194 # beq .L_8017ADD0
    cmpwi 30, 0x2a
    .4byte 0x4182018C # beq .L_8017ADD0
    cmpwi 30, 0x2b
    .4byte 0x41820184 # beq .L_8017ADD0
    cmpwi 30, 0x2c
    .4byte 0x4182017C # beq .L_8017ADD0
    cmpwi 30, 0x2d
    .4byte 0x41820174 # beq .L_8017ADD0
    cmpwi 30, 0x2e
    .4byte 0x4182016C # beq .L_8017ADD0
    cmpwi 30, 0x2f
    .4byte 0x41820164 # beq .L_8017ADD0
    cmpwi 30, 0x20
    .4byte 0x4182015C # beq .L_8017ADD0
    cmpwi 30, 0xd
    .4byte 0x41820154 # beq .L_8017ADD0
    cmpwi 30, 0x39
    .4byte 0x4182014C # beq .L_8017ADD0
    cmpwi 30, 0x3a
    .4byte 0x41820144 # beq .L_8017ADD0
    cmpwi 30, 0x3b
    .4byte 0x4182013C # beq .L_8017ADD0
    cmpwi 30, 0x4c
    .4byte 0x41820134 # beq .L_8017ADD0
    cmpwi 30, 0x4d
    .4byte 0x4182012C # beq .L_8017ADD0
    cmpwi 30, 0x4e
    .4byte 0x41820124 # beq .L_8017ADD0
    cmpwi 30, 0x4f
    .4byte 0x4182011C # beq .L_8017ADD0
    cmpwi 30, 0x24
    .4byte 0x41820114 # beq .L_8017ADD0
    mr 3, 27
    mr 4, 29
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3a
    .4byte 0x4182001C # beq .L_8017ACF0
    mr 3, 27
    mr 4, 29
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3d
    .4byte 0x40820014 # bne .L_8017AD00
L_8017ACF0:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x234(31)
    .4byte 0x48000108 # b .L_8017AE04
L_8017AD00:
    cmpwi 28, 0x14
    .4byte 0x40820014 # bne .L_8017AD18
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x234(31)
    .4byte 0x480000F0 # b .L_8017AE04
L_8017AD18:
    cmpwi 30, 0x25
    .4byte 0x40820038 # bne .L_8017AD54
    lbz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8017AD44
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8017AD44
    li 3, 0x1
    .4byte 0x480000C4 # b .L_8017AE04
L_8017AD44:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x234(31)
    .4byte 0x480000B4 # b .L_8017AE04
L_8017AD54:
    cmpwi 30, 0x26
    .4byte 0x40820038 # bne .L_8017AD90
    lbz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8017AD80
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8017AD80
    li 3, 0x1
    .4byte 0x48000088 # b .L_8017AE04
L_8017AD80:
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x234(31)
    .4byte 0x48000078 # b .L_8017AE04
L_8017AD90:
    lbz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8017ADBC
    cmpwi 30, 0x22
    .4byte 0x40820014 # bne .L_8017ADB4
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8017ADBC
L_8017ADB4:
    li 3, 0x1
    .4byte 0x4800004C # b .L_8017AE04
L_8017ADBC:
    lbz 0, 0x234(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8017ADD0
    li 3, 0x0
    .4byte 0x48000038 # b .L_8017AE04
L_8017ADD0:
    lbz 0, 0x234(31)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_8017AE00
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0xb
    .4byte 0x40810010 # ble .L_8017AE00
    li 0, 0x0
    stw 0, 0x238(31)
    stb 0, 0x234(31)
L_8017AE00:
    li 3, 0x0
L_8017AE04:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8017AE18:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002ACEC # lfs f0, lbl_8053DC8C@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    .4byte 0xC042ACF0 # lfs f2, lbl_8053DC90@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC022ACF4 # lfs f1, lbl_8053DC94@sda21(r0)
    stfs 0, 0x80(3)
    stfs 0, 0x84(3)
    .4byte 0xC002ACF8 # lfs f0, lbl_8053DC98@sda21(r0)
    stfs 2, 0x88(3)
    stfs 2, 0x8c(3)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    lwz 3, 0x90(3)
    extrwi 3, 3, 2, 26
    stw 3, 0x98(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 28
    stw 3, 0x258(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 20
    stw 3, 0x25c(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stw 0, 0x244(31)
    lwz 3, 0x258(31)
    bl fn_80237060
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_8017AEB8
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000054 # b .L_8017AF08
L_8017AEB8:
    li 0, 0x0
    stb 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x254(31)
    lwz 3, 0x258(31)
    bl fn_8023B630
    stw 3, 0x118(31)
    lis 4, 0x3
    .4byte 0xC002ACE4 # lfs f0, lbl_8053DC84@sda21(r0)
    li 6, 0x2
    li 0, 0x0
    mr 3, 31
    stfs 0, 0x44(31)
    addi 4, 4, 0x26
    li 5, 0x0
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 6, 0x23c(31)
    stw 0, 0x230(31)
    bl fn_801F0E34
L_8017AF08:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017AF1C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C0FA8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C0FA8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017AF6C
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
L_8017AF6C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017AFA4
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
L_8017AFA4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017AFDC
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
L_8017AFDC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017B014
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
L_8017B014:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017B04C
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
L_8017B04C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017B084
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
L_8017B084:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017B0BC
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
L_8017B0BC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017B0F4
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
L_8017B0F4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017B12C
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
L_8017B12C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017B140:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8017B184
    lis 5, lbl_804A11B8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A11B8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8017B184
    mr 3, 30
    bl dtor_80084580
L_8017B184:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017B1A0:
    stwu 1, -0x90(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x94(1)
    li 0, -0x1
    addi 9, 1, 0x40
    stw 31, 0x8c(1)
    stw 30, 0x88(1)
    mr 30, 3
    stw 29, 0x84(1)
    stw 0, 0x50(1)
    stw 0, 0x54(1)
    .4byte 0x48000064 # b .L_8017B234
L_8017B1D4:
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
L_8017B234:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8017B1D4
    .4byte 0xC022AD00 # lfs f1, lbl_8053DCA0@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x50(1)
    li 31, 0x0
    stw 5, 0x54(1)
    stw 5, 0x58(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 5, 0x5e(1)
    stb 4, 0x5f(1)
    stb 4, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 5, 0x65(1)
    stb 4, 0x66(1)
    stw 3, 0x68(1)
    stb 4, 0x6c(1)
    stb 5, 0x6d(1)
    stb 5, 0x6e(1)
    stw 6, 0x70(1)
    stw 5, 0x74(1)
    stw 0, 0x78(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x3c(1)
    lwz 0, 0x258(30)
    cmpwi 0, 0x1
    .4byte 0x40820038 # bne .L_8017B2FC
    .4byte 0xC002AD04 # lfs f0, lbl_8053DCA4@sda21(r0)
    addi 0, 1, 0x10
    stfs 1, 0x14(1)
    li 31, 0x1
    stfs 0, 0x10(1)
    stfs 1, 0x18(1)
    stfs 1, 0x20(1)
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    stfs 1, 0x30(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    stw 0, 0x58(1)
L_8017B2FC:
    lwz 0, 0x4(30)
    lwz 3, 0x250(30)
    cmpwi 0, 0x8
    addi 29, 3, 0x143
    .4byte 0x40800050 # bge .L_8017B35C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804668A8@ha
    addi 5, 3, lbl_804668A8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022AD08 # lfs f1, lbl_8053DCA8@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 29
    fmr 2, 1
    addi 7, 1, 0x40
    lwz 3, 0x20(4)
    addi 4, 30, 0xc
    bl fn_802F86CC
L_8017B35C:
    li 3, 0x0
    neg 0, 31
    stw 3, 0x8(1)
    or 0, 0, 31
    srwi 7, 0, 31
    addi 5, 30, 0xc
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 6, 0x250(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x143
    bl fn_803075AC
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    lwz 29, 0x84(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8017B3B4:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC042AD0C # lfs f2, lbl_8053DCAC@sda21(r0)
    stw 0, 0x44(1)
    li 0, -0x1
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    fmr 3, 2
    stw 31, 0x3c(1)
    li 31, 0x0
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    addi 3, 29, 0x3c
    stfs 0, 0x18(1)
    stw 0, 0x14(1)
    lfs 1, 0x264(29)
    bl fn_801F71A4
    .4byte 0xC042AD0C # lfs f2, lbl_8053DCAC@sda21(r0)
    addi 3, 29, 0x40
    lfs 1, 0x268(29)
    fmr 3, 2
    bl fn_801F71A4
    psq_l 2, 0xc(29), 0, 0
    mr 3, 29
    psq_l 1, 0x3c(29), 0, 0
    addi 4, 1, 0x1c
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    li 5, 0x0
    ps_add 1, 2, 1
    psq_st 1, 0xc(29), 0, 0
    psq_l 2, 0x14(29), 1, 0
    psq_l 1, 0x44(29), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(29), 1, 0
    stfs 0, 0x24(1)
    stfs 0, 0x20(1)
    stfs 0, 0x1c(1)
    bl fn_801F2618
    lwz 0, 0x258(29)
    mr 30, 3
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_8017B470
    lfs 1, 0x20(1)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_8017B470
    li 30, 0x0
L_8017B470:
    lwz 4, 0x114(29)
    mr 3, 29
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8017B4A8
    lwz 0, 0x258(29)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_8017B4A8
    lwz 0, 0x230(29)
    cmpwi 0, 0x3
    .4byte 0x40820008 # bne .L_8017B4A8
    li 31, 0x1
L_8017B4A8:
    lwz 0, 0x230(29)
    cmpwi 0, 0x3
    .4byte 0x418203A4 # beq .L_8017B854
    .4byte 0x4080001C # bge .L_8017B4D0
    cmpwi 0, 0x1
    .4byte 0x418200CC # beq .L_8017B588
    .4byte 0x408002D0 # bge .L_8017B790
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_8017B4E0
    .4byte 0x4800061C # b .L_8017BAE8
L_8017B4D0:
    cmpwi 0, 0x5
    .4byte 0x418204CC # beq .L_8017B9A0
    .4byte 0x40800610 # bge .L_8017BAE8
    .4byte 0x48000428 # b .L_8017B904
L_8017B4E0:
    lwz 0, 0x258(29)
    cmpwi 0, 0x1
    .4byte 0x40820050 # bne .L_8017B538
    lwz 0, 0x98(29)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_8017B520
    .4byte 0x40800088 # bge .L_8017B580
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8017B508
    .4byte 0x4800007C # b .L_8017B580
L_8017B508:
    .4byte 0xC022AD10 # lfs f1, lbl_8053DCB0@sda21(r0)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 0, 0x26c(29)
    .4byte 0x48000064 # b .L_8017B580
L_8017B520:
    .4byte 0xC022AD14 # lfs f1, lbl_8053DCB4@sda21(r0)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 0, 0x26c(29)
    .4byte 0x4800004C # b .L_8017B580
L_8017B538:
    lwz 0, 0x98(29)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_8017B56C
    .4byte 0x4080003C # bge .L_8017B580
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8017B554
    .4byte 0x48000030 # b .L_8017B580
L_8017B554:
    .4byte 0xC022AD18 # lfs f1, lbl_8053DCB8@sda21(r0)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 0, 0x26c(29)
    .4byte 0x48000018 # b .L_8017B580
L_8017B56C:
    .4byte 0xC022AD1C # lfs f1, lbl_8053DCBC@sda21(r0)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 0, 0x26c(29)
L_8017B580:
    li 0, 0x1
    stw 0, 0x230(29)
L_8017B588:
    lha 0, 0x25c(29)
    lis 4, lbl_8052EBC0@ha
    addi 4, 4, lbl_8052EBC0@l
    .4byte 0xC022AD20 # lfs f1, lbl_8053DCC0@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lis 3, 0x19
    lfsx 0, 4, 0
    addi 0, 3, 0x660d
    .4byte 0xC082AD08 # lfs f4, lbl_8053DCA8@sda21(r0)
    fmuls 2, 1, 0
    .4byte 0xC022AD28 # lfs f1, lbl_8053DCC8@sda21(r0)
    .4byte 0xC002AD24 # lfs f0, lbl_8053DCC4@sda21(r0)
    stfs 2, 0x268(29)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lfs 3, 0x270(29)
    srwi 0, 0, 9
    lfs 2, 0xc(29)
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    fsubs 2, 3, 2
    lfs 3, 0x8(1)
    fabs 2, 2
    fsubs 3, 3, 4
    frsp 2, 2
    fmadds 0, 1, 3, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_8017B610
    li 31, 0x1
L_8017B610:
    lha 3, 0x25c(29)
    addi 0, 3, 0x12c
    sth 0, 0x25c(29)
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8017B630
    clrlwi. 0, 30, 24
    .4byte 0x4182008C # beq .L_8017B6B8
L_8017B630:
    clrlwi. 0, 30, 24
    .4byte 0x40820028 # bne .L_8017B65C
    .4byte 0xC022AD28 # lfs f1, lbl_8053DCC8@sda21(r0)
    addi 3, 29, 0xc
    lwz 4, 0x4(29)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8017B65C
    clrlwi 0, 31, 24
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_8017B6B8
L_8017B65C:
    lwz 3, 0x98(29)
    li 0, 0x0
    stw 0, 0x98(29)
    lfs 1, 0x270(29)
    lfs 0, 0xc(29)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8017B680
    li 0, 0x1
    stw 0, 0x98(29)
L_8017B680:
    lwz 0, 0x98(29)
    cmpw 3, 0
    .4byte 0x41820020 # beq .L_8017B6A8
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x264(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
L_8017B6A8:
    li 3, 0x14
    li 0, 0x0
    stw 3, 0x238(29)
    stw 0, 0x230(29)
L_8017B6B8:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x40820428 # bne .L_8017BAE8
    lwz 4, 0x198(29)
    mr 3, 29
    addi 6, 1, 0x10
    addi 7, 1, 0x18
    addi 8, 1, 0x14
    li 5, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 3, 0x14(1)
    cmpwi 3, 0x0
    .4byte 0x418003F8 # blt .L_8017BAE8
    lwz 4, 0x98(29)
    lwz 0, 0x10(1)
    cmpw 4, 0
    .4byte 0x408203E8 # bne .L_8017BAE8
    lwz 0, 0x258(29)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_8017B750
    lfs 1, 0x18(1)
    .4byte 0xC002AD24 # lfs f0, lbl_8053DCC4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408003CC # bge .L_8017BAE8
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(29)
    .4byte 0xC002AD2C # lfs f0, lbl_8053DCCC@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x408003A8 # bge .L_8017BAE8
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x4800039C # b .L_8017BAE8
L_8017B750:
    lfs 1, 0x18(1)
    .4byte 0xC002AD30 # lfs f0, lbl_8053DCD0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080038C # bge .L_8017BAE8
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(29)
    .4byte 0xC002AD2C # lfs f0, lbl_8053DCCC@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800368 # bge .L_8017BAE8
    li 0, 0x2
    stw 0, 0x230(29)
    .4byte 0x4800035C # b .L_8017BAE8
L_8017B790:
    .4byte 0xC022AD00 # lfs f1, lbl_8053DCA0@sda21(r0)
    stfs 1, 0x26c(29)
    stfs 1, 0x268(29)
    stfs 1, 0x264(29)
    stfs 1, 0x44(29)
    stfs 1, 0x40(29)
    stfs 1, 0x3c(29)
    lwz 0, 0x258(29)
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_8017B7FC
    lwz 0, 0x98(29)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8017B7E8
    .4byte 0x40800078 # bge .L_8017B83C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8017B7D4
    .4byte 0x4800006C # b .L_8017B83C
L_8017B7D4:
    .4byte 0xC002AD34 # lfs f0, lbl_8053DCD4@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000058 # b .L_8017B83C
L_8017B7E8:
    .4byte 0xC002AD38 # lfs f0, lbl_8053DCD8@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000044 # b .L_8017B83C
L_8017B7FC:
    lwz 0, 0x98(29)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8017B82C
    .4byte 0x40800034 # bge .L_8017B83C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8017B818
    .4byte 0x48000028 # b .L_8017B83C
L_8017B818:
    .4byte 0xC002AD10 # lfs f0, lbl_8053DCB0@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000014 # b .L_8017B83C
L_8017B82C:
    .4byte 0xC002AD14 # lfs f0, lbl_8053DCB4@sda21(r0)
    stfs 0, 0x264(29)
    stfs 1, 0x268(29)
    stfs 1, 0x26c(29)
L_8017B83C:
    li 0, 0x0
    li 3, 0x15e
    stw 0, 0x23c(29)
    li 0, 0x3
    stw 3, 0x238(29)
    stw 0, 0x230(29)
L_8017B854:
    lha 0, 0x25c(29)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042AD3C # lfs f2, lbl_8053DCDC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC022AD28 # lfs f1, lbl_8053DCC8@sda21(r0)
    lfsx 0, 3, 0
    fmuls 0, 2, 0
    stfs 0, 0x268(29)
    lha 3, 0x25c(29)
    addi 0, 3, 0x12c
    sth 0, 0x25c(29)
    lwz 0, 0x258(29)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8017B898
    .4byte 0xC022AD40 # lfs f1, lbl_8053DCE0@sda21(r0)
    mr 30, 31
L_8017B898:
    clrlwi. 0, 30, 24
    .4byte 0x40820024 # bne .L_8017B8C0
    lwz 4, 0x4(29)
    addi 3, 29, 0xc
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8017B8C0
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x4082022C # bne .L_8017BAE8
L_8017B8C0:
    lwz 0, 0x98(29)
    li 4, 0xa0
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    li 3, 0x14
    xori 5, 0, 0x1
    li 0, 0x0
    stw 5, 0x98(29)
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x264(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 4, 0x23c(29)
    stw 3, 0x238(29)
    stw 0, 0x230(29)
    .4byte 0x480001E8 # b .L_8017BAE8
L_8017B904:
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8017B960
    .4byte 0x40800014 # bge .L_8017B924
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8017B930
    .4byte 0x4080002C # bge .L_8017B948
    .4byte 0x4800006C # b .L_8017B98C
L_8017B924:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_8017B98C
    .4byte 0x4800004C # b .L_8017B978
L_8017B930:
    .4byte 0xC022AD18 # lfs f1, lbl_8053DCB8@sda21(r0)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 0, 0x26c(29)
    .4byte 0x48000048 # b .L_8017B98C
L_8017B948:
    .4byte 0xC022AD1C # lfs f1, lbl_8053DCBC@sda21(r0)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 0, 0x26c(29)
    .4byte 0x48000030 # b .L_8017B98C
L_8017B960:
    .4byte 0xC022AD00 # lfs f1, lbl_8053DCA0@sda21(r0)
    .4byte 0xC002AD18 # lfs f0, lbl_8053DCB8@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000018 # b .L_8017B98C
L_8017B978:
    .4byte 0xC022AD00 # lfs f1, lbl_8053DCA0@sda21(r0)
    .4byte 0xC002AD1C # lfs f0, lbl_8053DCBC@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
L_8017B98C:
    li 3, 0xa
    li 0, 0x5
    stw 3, 0x238(29)
    stw 0, 0x230(29)
    .4byte 0x4800014C # b .L_8017BAE8
L_8017B9A0:
    lwz 0, 0x238(29)
    lfs 3, 0x270(29)
    lfs 2, 0xc(29)
    cmpwi 0, 0x0
    lfs 1, 0x274(29)
    lfs 0, 0x10(29)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    .4byte 0x40820128 # bne .L_8017BAE8
    clrlwi. 0, 30, 24
    .4byte 0x408200F0 # bne .L_8017BAB8
    fmuls 1, 0, 0
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_8017BA28
    frsqrte 1, 4
    .4byte 0xC862AD48 # lfd f3, lbl_8053DCE8@sda21(r0)
    .4byte 0xC842AD50 # lfd f2, lbl_8053DCF0@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_8017BAAC
L_8017BA28:
    .4byte 0xC802AD58 # lfd f0, lbl_8053DCF8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_8017BA40
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_8017BAAC
L_8017BA40:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_8017BA68
    .4byte 0x40800040 # bge .L_8017BA98
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8017BA80
    .4byte 0x48000034 # b .L_8017BA98
L_8017BA68:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8017BA78
    li 0, 0x1
    .4byte 0x48000028 # b .L_8017BA9C
L_8017BA78:
    li 0, 0x2
    .4byte 0x48000020 # b .L_8017BA9C
L_8017BA80:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_8017BA90
    li 0, 0x5
    .4byte 0x48000010 # b .L_8017BA9C
L_8017BA90:
    li 0, 0x3
    .4byte 0x48000008 # b .L_8017BA9C
L_8017BA98:
    li 0, 0x4
L_8017BA9C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8017BAAC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_8017BAAC:
    lfs 0, 0x260(29)
    fcmpo cr0, 4, 0
    .4byte 0x40810034 # ble .L_8017BAE8
L_8017BAB8:
    lwz 3, 0x98(29)
    li 0, 0x4
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    xori 3, 3, 0x1
    stw 3, 0x98(29)
    stfs 0, 0x26c(29)
    stfs 0, 0x268(29)
    stfs 0, 0x264(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 0, 0x230(29)
L_8017BAE8:
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8017BB3C
    li 0, 0x8
    stw 0, 0x234(29)
    lwz 0, 0x230(29)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_8017BB10
    li 0, 0x4
    stw 0, 0x234(29)
L_8017BB10:
    lwz 3, 0x244(29)
    addi 0, 3, 0x1
    stw 0, 0x244(29)
    lwz 0, 0x244(29)
    clrlwi 0, 0, 31
    stw 0, 0x244(29)
    lwz 3, 0x98(29)
    lwz 0, 0x244(29)
    clrlslwi 3, 3, 31, 1
    add 0, 3, 0
    stw 0, 0x250(29)
L_8017BB3C:
    lwz 3, 0x234(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017BB50
    subi 0, 3, 0x1
    stw 0, 0x234(29)
L_8017BB50:
    lwz 3, 0x238(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017BB64
    subi 0, 3, 0x1
    stw 0, 0x238(29)
L_8017BB64:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017BB78
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
L_8017BB78:
    lwz 3, 0x240(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017BB8C
    subi 0, 3, 0x1
    stw 0, 0x240(29)
L_8017BB8C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8017BBA8:
    stwu 1, -0x10(1)
    mflr 0
    mr 3, 5
    stw 0, 0x14(1)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3b
    .4byte 0x41820024 # beq .L_8017BBE8
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8017BBE8
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_8017BBE8
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_8017BBE8
    li 3, 0x1
    .4byte 0x48000008 # b .L_8017BBEC
L_8017BBE8:
    li 3, 0x0
L_8017BBEC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017BBFC:
    stwu 1, -0x20(1)
    lis 4, 0x19
    .4byte 0xC022AD60 # lfs f1, lbl_8053DD00@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC062AD64 # lfs f3, lbl_8053DD04@sda21(r0)
    addi 5, 4, 0x660d
    stfs 1, 0x60(3)
    li 6, 0x0
    .4byte 0xC842AD78 # lfd f2, lbl_8053DD18@sda21(r0)
    stfs 1, 0x64(3)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    stfs 3, 0x68(3)
    .4byte 0xC0A2AD08 # lfs f5, lbl_8053DCA8@sda21(r0)
    stfs 3, 0x6c(3)
    .4byte 0xC0C2AD68 # lfs f6, lbl_8053DD08@sda21(r0)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 3, 0x88(3)
    stfs 3, 0x8c(3)
    lwz 4, 0x90(3)
    stw 0, 0x10(1)
    clrlwi 0, 4, 31
    stw 0, 0x258(3)
    stw 6, 0x244(3)
    stw 6, 0x248(3)
    stw 6, 0x24c(3)
    stw 6, 0x234(3)
    stw 6, 0x238(3)
    stw 6, 0x23c(3)
    stw 6, 0x240(3)
    stw 6, 0x250(3)
    stw 6, 0x254(3)
    sth 6, 0x25c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 8, 16
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    stfs 1, 0x260(3)
    stfs 0, 0x26c(3)
    stfs 0, 0x268(3)
    stfs 0, 0x264(3)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    lfs 0, 0xc(3)
    stfs 0, 0x270(3)
    lfs 0, 0x10(3)
    stfs 0, 0x274(3)
    lfs 0, 0x14(3)
    stfs 0, 0x278(3)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 5
    fmuls 0, 6, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stw 0, 0x98(3)
    lwz 0, 0x258(3)
    cmpwi 0, 0x1
    .4byte 0x40820080 # bne .L_8017BD98
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x4
    .4byte 0xC062AD6C # lfs f3, lbl_8053DD0C@sda21(r0)
    lwz 4, 0xb4(6)
    .4byte 0xC042AD28 # lfs f2, lbl_8053DCC8@sda21(r0)
    mullw 4, 4, 5
    .4byte 0xC022AD70 # lfs f1, lbl_8053DD10@sda21(r0)
    .4byte 0xC002AD74 # lfs f0, lbl_8053DD14@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 4, 0x8(1)
    fsubs 4, 4, 5
    fmuls 4, 6, 4
    fctiwz 4, 4
    stfd 4, 0x18(1)
    lwz 4, 0x1c(1)
    stw 4, 0x254(3)
    stw 0, 0x114(3)
    stfs 3, 0x60(3)
    stfs 3, 0x64(3)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 3, 0x80(3)
    stfs 1, 0x84(3)
    stfs 2, 0x88(3)
    stfs 0, 0x8c(3)
L_8017BD98:
    li 0, 0x0
    stw 0, 0x230(3)
    lwz 0, 0x90(3)
    extrwi. 0, 0, 8, 20
    .4byte 0x41820048 # beq .L_8017BDF0
    lfs 1, 0x260(3)
    .4byte 0xC002AD00 # lfs f0, lbl_8053DCA0@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4082000C # bne .L_8017BDC4
    .4byte 0xC002AD28 # lfs f0, lbl_8053DCC8@sda21(r0)
    stfs 0, 0x260(3)
L_8017BDC4:
    lwz 4, 0x90(3)
    li 0, 0x4
    extrwi 4, 4, 4, 24
    stw 4, 0x98(3)
    lwz 4, 0x98(3)
    subi 4, 4, 0x1
    stw 4, 0x98(3)
    lwz 4, 0x98(3)
    clrlwi 4, 4, 30
    stw 4, 0x98(3)
    stw 0, 0x230(3)
L_8017BDF0:
    addi 1, 1, 0x20
    blr

fn_8017BDF8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C10A8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C10A8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BE48
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
L_8017BE48:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BE80
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
L_8017BE80:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BEB8
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
L_8017BEB8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BEF0
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
L_8017BEF0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BF28
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
L_8017BF28:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BF60
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
L_8017BF60:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BF98
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
L_8017BF98:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017BFD0
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
L_8017BFD0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017C008
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
L_8017C008:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017C01C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x4
    li 5, 0x0
    stw 0, 0x14(1)
    addi 4, 4, 0x47
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F0E34
    mr 3, 31
    lbz 4, 0x2ba(31)
    lwz 12, 0x0(31)
    extsb 4, 4
    .4byte 0xC022AD80 # lfs f1, lbl_8053DD20@sda21(r0)
    lwz 12, 0x28(12)
    .4byte 0xC042AD84 # lfs f2, lbl_8053DD24@sda21(r0)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017C078:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    stw 29, 0x94(1)
    li 0, -0x1
    lis 4, lbl_804A1210@ha
    stw 0, 0x54(1)
    mr 29, 3
    addi 31, 4, lbl_804A1210@l
    addi 9, 1, 0x44
    stw 0, 0x58(1)
    li 10, 0x0
    .4byte 0x48000064 # b .L_8017C124
L_8017C0C4:
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
L_8017C124:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8017C0C4
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x54(1)
    .4byte 0xC3E2AD88 # lfs f31, lbl_8053DD28@sda21(r0)
    stw 5, 0x58(1)
    fmr 30, 31
    stw 5, 0x5c(1)
    stb 5, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 4, 0x63(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stb 5, 0x67(1)
    stb 5, 0x68(1)
    stb 5, 0x69(1)
    stb 4, 0x6a(1)
    stw 3, 0x6c(1)
    stb 4, 0x70(1)
    stb 5, 0x71(1)
    stb 5, 0x72(1)
    stw 6, 0x74(1)
    stw 5, 0x78(1)
    stw 0, 0x7c(1)
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x8(1), 0, 0
    stfs 31, 0x20(1)
    stfs 31, 0x30(1)
    stfs 31, 0x40(1)
    stb 5, 0x63(1)
    stb 4, 0x71(1)
    lwz 0, 0x90(29)
    stfs 0, 0x10(1)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8017C1D8
    cmplwi 0, 0x1
    .4byte 0x4082020C # bne .L_8017C3E0
L_8017C1D8:
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    stfs 0, 0x14(29)
    lwz 0, 0x27c(29)
    cmpwi 0, 0x2
    .4byte 0x41820084 # beq .L_8017C26C
    .4byte 0x40800014 # bge .L_8017C200
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8017C20C
    .4byte 0x40800038 # bge .L_8017C230
    .4byte 0x480000B8 # b .L_8017C2B4
L_8017C200:
    cmpwi 0, 0x4
    .4byte 0x408000B0 # bge .L_8017C2B4
    .4byte 0x4800008C # b .L_8017C294
L_8017C20C:
    lwz 0, 0x268(29)
    lis 3, 0x4647
    addi 4, 31, 0x80
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
    .4byte 0x48000088 # b .L_8017C2B4
L_8017C230:
    lwz 0, 0x268(29)
    lis 3, 0x4647
    addi 4, 31, 0xc0
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    lwz 0, 0x268(29)
    addi 4, 31, 0x98
    mr 30, 3
    slwi 0, 0, 3
    add 3, 4, 0
    lfsx 30, 4, 0
    lfs 31, 0x4(3)
    .4byte 0x4800004C # b .L_8017C2B4
L_8017C26C:
    lwz 0, 0x268(29)
    lis 3, 0x4647
    addi 4, 31, 0xd4
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC3E2AD8C # lfs f31, lbl_8053DD2C@sda21(r0)
    mr 30, 3
    .4byte 0x48000024 # b .L_8017C2B4
L_8017C294:
    lwz 0, 0x268(29)
    lis 3, 0x4647
    addi 4, 31, 0xf4
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
L_8017C2B4:
    lwz 0, 0x90(29)
    cmplwi 0, 0x0
    .4byte 0x40820084 # bne .L_8017C340
    li 8, 0x0
    li 0, -0x2
    li 7, 0x64
    stb 0, 0x61(1)
    .4byte 0xC0A2AD90 # lfs f5, lbl_8053DD30@sda21(r0)
    fmr 1, 30
    stb 8, 0x60(1)
    fmr 2, 31
    .4byte 0xC062AD88 # lfs f3, lbl_8053DD28@sda21(r0)
    addi 0, 1, 0x14
    stb 8, 0x54(1)
    mr 3, 29
    mr 4, 30
    stb 8, 0x55(1)
    addi 5, 1, 0x44
    li 6, -0x1
    stb 8, 0x56(1)
    stb 7, 0x57(1)
    lfs 4, 0x2b0(29)
    lfs 0, 0x2ac(29)
    fmuls 4, 5, 4
    stfs 0, 0x14(1)
    stfs 3, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 3, 0x24(1)
    stfs 4, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 3, 0x34(1)
    stfs 3, 0x38(1)
    stfs 4, 0x3c(1)
    stw 0, 0x5c(1)
    bl fn_801EFD34
L_8017C340:
    lfs 0, 0x8(1)
    li 8, 0xe
    lfs 4, 0xc(1)
    addi 7, 1, 0x14
    stfs 0, 0xc(29)
    li 0, 0xff
    lfs 0, 0x10(1)
    fmr 1, 30
    stfs 4, 0x10(29)
    fmr 2, 31
    .4byte 0xC062AD88 # lfs f3, lbl_8053DD28@sda21(r0)
    mr 3, 29
    stfs 0, 0x14(29)
    mr 4, 30
    addi 5, 1, 0x44
    lbz 9, 0x2ba(29)
    li 6, -0x1
    stb 9, 0x61(1)
    stw 8, 0x74(1)
    lfs 4, 0x2b0(29)
    lfs 0, 0x2ac(29)
    stfs 0, 0x14(1)
    stfs 3, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 3, 0x24(1)
    stfs 4, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 3, 0x34(1)
    stfs 3, 0x38(1)
    stfs 4, 0x3c(1)
    stw 7, 0x5c(1)
    stb 0, 0x54(1)
    stb 0, 0x55(1)
    stb 0, 0x56(1)
    lfs 0, 0x290(29)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stb 0, 0x57(1)
    bl fn_801EFD34
L_8017C3E0:
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 0, 0xc4(1)
    lwz 29, 0x94(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8017C40C:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stmw 26, 0x88(1)
    mr 31, 3
    lis 3, lbl_804A1210@ha
    addi 29, 3, lbl_804A1210@l
    addi 3, 1, 0x68
    addi 4, 31, 0x60
    bl fn_801546F4
    lfs 1, 0x2a0(31)
    addi 3, 1, 0x20
    lfs 2, 0x2a4(31)
    bl fn_8017ECE8
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x18(1)
    addi 3, 1, 0x50
    sth 0, 0xa(1)
    bl fn_801546BC
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_8017C47C
    bl fn_8017ECC0
L_8017C47C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8017C494
    bl fn_8016A3AC
    li 0, 0x1
    stb 0, 0x1c6(3)
L_8017C494:
    mr 3, 31
    .4byte 0xC022AD80 # lfs f1, lbl_8053DD20@sda21(r0)
    lwz 12, 0x0(31)
    .4byte 0xC042AD84 # lfs f2, lbl_8053DD24@sda21(r0)
    lwz 12, 0x2c(12)
    .4byte 0xC062AD94 # lfs f3, lbl_8053DD34@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8017C4D0
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    addi 3, 31, 0xc
    bl fn_8017EC70
    bl fn_8017ED08
    .4byte 0x48002150 # b .L_8017E61C
L_8017C4D0:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8017C4E4
    li 0, 0x2710
    stw 0, 0x108(31)
L_8017C4E4:
    addi 3, 1, 0x5c
    addi 4, 31, 0xc
    bl fn_8017EADC
    lfs 1, 0x60(1)
    addi 4, 1, 0x5c
    .4byte 0xC002AD9C # lfs f0, lbl_8053DD3C@sda21(r0)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x60(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017C524
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_8017C524:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017C538
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8017C538:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017C54C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8017C54C:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017C560
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8017C560:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017C574
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_8017C574:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8017C588
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_8017C588:
    mr 3, 31
    li 4, 0x0
    bl fn_801F3D94
    lwz 0, 0x230(31)
    cmpwi 0, 0x14
    .4byte 0x4082010C # bne .L_8017C6A8
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8017C5B4
    cmplwi 0, 0x1
    .4byte 0x408200F8 # bne .L_8017C6A8
L_8017C5B4:
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x190
    .4byte 0x4081003C # ble .L_8017C604
    li 0, 0x5
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    stw 0, 0x268(31)
    li 4, 0x0
    addi 3, 29, 0x20
    li 0, 0x15
    stfs 0, 0x280(31)
    stw 4, 0x270(31)
    lwz 4, 0x268(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x4800201C # b .L_8017E61C
L_8017C604:
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_8017C6A8
    lfs 1, 0x14(31)
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x40820080 # bne .L_8017C6A0
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x41820074 # beq .L_8017C6A0
    li 0, 0x0
    stw 0, 0x268(31)
    stw 0, 0x254(31)
    lwz 0, 0x108(31)
    lwz 3, 0x270(31)
    subfic 0, 0, 0x2710
    add 0, 3, 0
    stw 0, 0x270(31)
    lwz 3, 0x108(31)
    lwz 0, 0x26c(31)
    subfic 3, 3, 0x2710
    subf 0, 3, 0
    stw 0, 0x26c(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x4b
    .4byte 0x4081000C # ble .L_8017C678
    li 0, 0x190
    stw 0, 0x250(31)
L_8017C678:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x46
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8017C6A0
    li 0, 0x16
    stw 0, 0x230(31)
L_8017C6A0:
    addi 3, 31, 0x3c
    bl fn_801546BC
L_8017C6A8:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8017C6BC
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_8017C6F8
L_8017C6BC:
    lfs 1, 0x294(31)
    addi 3, 31, 0x3c
    .4byte 0xC042ADA0 # lfs f2, lbl_8053DD40@sda21(r0)
    .4byte 0xC062AD98 # lfs f3, lbl_8053DD38@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x298(31)
    addi 3, 31, 0x40
    .4byte 0xC042ADA0 # lfs f2, lbl_8053DD40@sda21(r0)
    .4byte 0xC062AD98 # lfs f3, lbl_8053DD38@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x288(31)
    addi 3, 31, 0x14
    .4byte 0xC042ADA0 # lfs f2, lbl_8053DD40@sda21(r0)
    lfs 3, 0x280(31)
    bl fn_801F71A4
L_8017C6F8:
    addi 3, 31, 0xc
    addi 4, 31, 0x3c
    bl fn_801545F0
    lwz 3, 0x2dc(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_8017C738
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x2dc(31)
    li 4, 0x9f
    li 5, 0x7f
    li 6, 0xff
    bl fn_8017EACC
L_8017C738:
    lwz 0, 0x230(31)
    cmplwi 0, 0x1c
    .4byte 0x41811D34 # bgt .L_8017E474
    lis 3, jumptable_804A136C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A136C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022ADA4 # lfs f1, lbl_8053DD44@sda21(r0)
    addi 3, 1, 0x34
    .4byte 0xC062ADA8 # lfs f3, lbl_8053DD48@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_8017EC5C
    mr 4, 3
    addi 3, 1, 0x68
    bl fn_8017EC38
    addi 3, 1, 0x68
    addi 4, 1, 0x20
    bl fn_80154558
    addi 3, 1, 0x70
    addi 4, 1, 0x20
    bl fn_80154558
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_8017C7C8
    addi 3, 1, 0x68
    bl fn_8017EB94
    clrlwi. 0, 3, 24
    .4byte 0x41821CC4 # beq .L_8017E474
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    li 0, 0x1
    stw 0, 0x250(31)
L_8017C7C8:
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41821CA0 # beq .L_8017E474
    bl fn_8022ADE4
    addi 3, 1, 0x14
    li 4, 0xff
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    bl fn_8017ECF4
    bl fn_8013A884
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x250(31)
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022ADAC # lfs f1, lbl_8053DD4C@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x64
    .4byte 0x41801C44 # blt .L_8017E474
    .4byte 0x408200B8 # bne .L_8017C8EC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x74
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 5, 0x362
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 5, 0x363
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 5, 0x364
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 5, 0x365
    li 6, 0x0
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8017C8EC:
    li 0, 0x65
    stw 0, 0x254(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x12c
    .4byte 0x41801B6C # blt .L_8017E474
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x42
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x27c(31)
    .4byte 0xC022ADB0 # lfs f1, lbl_8053DD50@sda21(r0)
    stw 0, 0x250(31)
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    stw 0, 0x254(31)
    stfs 1, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stw 3, 0x230(31)
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022ADAC # lfs f1, lbl_8053DD4C@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8017C998
    lwz 3, 0x268(31)
    addi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8017C984
    li 0, 0x0
    stw 0, 0x268(31)
L_8017C984:
    lwz 0, 0x268(31)
    addi 3, 29, 0x4c
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8017C998:
    .4byte 0xC022ADB4 # lfs f1, lbl_8053DD54@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042ADB8 # lfs f2, lbl_8053DD58@sda21(r0)
    .4byte 0xC062ADB0 # lfs f3, lbl_8053DD50@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    addi 3, 31, 0x2b0
    .4byte 0xC042ADA0 # lfs f2, lbl_8053DD40@sda21(r0)
    .4byte 0xC062ADBC # lfs f3, lbl_8053DD5C@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    addi 3, 31, 0x2ac
    .4byte 0xC042ADA0 # lfs f2, lbl_8053DD40@sda21(r0)
    .4byte 0xC062ADC0 # lfs f3, lbl_8053DD60@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2ac(31)
    .4byte 0xC002ADC4 # lfs f0, lbl_8053DD64@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40821A90 # bne .L_8017E474
    lfs 1, 0x290(31)
    .4byte 0xC002ADC8 # lfs f0, lbl_8053DD68@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40821A7C # bne .L_8017E474
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    addi 3, 1, 0x28
    fmr 2, 1
    fmr 3, 1
    bl fn_8017EB0C
    mr 4, 3
    addi 3, 31, 0x2ac
    bl fn_8017EADC
    .4byte 0xC002ADB4 # lfs f0, lbl_8053DD54@sda21(r0)
    li 3, 0x64
    li 0, 0x3
    stfs 0, 0x290(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48001A40 # b .L_8017E474
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022ADAC # lfs f1, lbl_8053DD4C@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8017CA88
    lwz 3, 0x268(31)
    addi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8017CA74
    li 0, 0x0
    stw 0, 0x268(31)
L_8017CA74:
    lwz 0, 0x268(31)
    addi 3, 29, 0x4c
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8017CA88:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408219E4 # bne .L_8017E474
    li 0, 0x1
    lis 4, 0x4
    stw 0, 0x27c(31)
    mr 3, 31
    addi 4, 4, 0x43
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x268(31)
    stw 0, 0x230(31)
    .4byte 0x480019B4 # b .L_8017E474
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022ADAC # lfs f1, lbl_8053DD4C@sda21(r0)
    bl fn_8017EB1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40821998 # bne .L_8017E474
    lwz 4, 0x268(31)
    addi 3, 29, 0x38
    li 0, 0x1
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x234(31)
    stw 0, 0x27c(31)
    lwz 3, 0x268(31)
    addi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x40821964 # bne .L_8017E474
    li 0, 0x32
    li 3, 0x5
    stw 0, 0x234(31)
    li 0, 0xff
    stw 3, 0x230(31)
    stw 0, 0x250(31)
    stw 0, 0x254(31)
    .4byte 0x48001944 # b .L_8017E474
    addi 3, 31, 0xc
    bl fn_8017EB44
    .4byte 0xC022ADAC # lfs f1, lbl_8053DD4C@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x250(31)
    subi 0, 3, 0x2
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x9f
    .4byte 0x4080000C # bge .L_8017CB64
    li 0, 0x9f
    stw 0, 0x250(31)
L_8017CB64:
    lwz 3, 0x254(31)
    subi 0, 3, 0x3
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x7f
    .4byte 0x4080000C # bge .L_8017CB84
    li 0, 0x7f
    stw 0, 0x254(31)
L_8017CB84:
    lwz 4, 0x250(31)
    addi 3, 1, 0x10
    lwz 0, 0x254(31)
    li 6, 0xff
    clrlwi 4, 4, 24
    li 7, 0x0
    clrlwi 5, 0, 24
    bl fn_8017ECF4
    bl fn_8013A884
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408218C4 # bne .L_8017E474
    lwz 4, 0x268(31)
    addi 3, 29, 0x38
    subi 0, 4, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x40801898 # bge .L_8017E474
    li 0, 0x0
    addi 3, 1, 0xc
    stw 0, 0x250(31)
    li 4, 0x9f
    li 5, 0x7f
    li 6, 0xff
    stw 0, 0x254(31)
    li 7, 0x0
    bl fn_8017ECF4
    bl fn_8013A884
    li 0, 0x0
    lis 3, 0x100
    stw 0, 0x268(31)
    addi 4, 3, 0x4
    li 5, 0x0
    li 6, 0x0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 0, 0x6
    stw 0, 0x230(31)
    bl fn_80154744
    .4byte 0xC042ADD0 # lfs f2, lbl_8053DD70@sda21(r0)
    .4byte 0xC002ADCC # lfs f0, lbl_8053DD6C@sda21(r0)
    fmadds 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x78(1)
    lwz 0, 0x7c(1)
    stw 0, 0x238(31)
    bl fn_80154744
    .4byte 0xC002AD94 # lfs f0, lbl_8053DD34@sda21(r0)
    fmadds 0, 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x248(31)
    lwz 0, 0x2dc(31)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_8017CCC0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 5, 0x380
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2dc(31)
    li 4, 0x9f
    li 5, 0x7f
    li 6, 0xff
    lwz 3, 0x2dc(31)
    bl fn_8017EACC
L_8017CCC0:
    .4byte 0xC022ADD4 # lfs f1, lbl_8053DD74@sda21(r0)
    li 6, 0x0
    addi 4, 29, 0x4c
    .4byte 0xC002ADBC # lfs f0, lbl_8053DD5C@sda21(r0)
    stfs 1, 0x280(31)
    li 3, 0x2
    li 0, 0x7
    stw 6, 0x268(31)
    lwz 5, 0x268(31)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x234(31)
    stfs 0, 0x28c(31)
    stw 6, 0x278(31)
    stw 3, 0x27c(31)
    stw 0, 0x230(31)
    .4byte 0xC022ADB4 # lfs f1, lbl_8053DD54@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042AD98 # lfs f2, lbl_8053DD38@sda21(r0)
    .4byte 0xC062ADD8 # lfs f3, lbl_8053DD78@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_8017CD54
    lwz 3, 0x268(31)
    addi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8017CD40
    li 0, 0x0
    stw 0, 0x268(31)
L_8017CD40:
    lwz 0, 0x268(31)
    addi 3, 29, 0x4c
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
L_8017CD54:
    lfs 1, 0x14(31)
    .4byte 0xC002ADDC # lfs f0, lbl_8053DD7C@sda21(r0)
    lfs 3, 0x2a0(31)
    lfs 2, 0xc(31)
    fcmpo cr0, 1, 0
    lfs 1, 0x2a4(31)
    lfs 0, 0x10(31)
    fsubs 30, 3, 2
    fsubs 31, 1, 0
    cror eq, gt, eq
    .4byte 0x40820098 # bne .L_8017CE14
    bl fn_80154744
    .4byte 0xC042ADE4 # lfs f2, lbl_8053DD84@sda21(r0)
    .4byte 0xC002ADE0 # lfs f0, lbl_8053DD80@sda21(r0)
    lwz 0, 0x250(31)
    fnmsubs 0, 2, 1, 0
    cmpwi 0, 0x0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 26, 0x84(1)
    .4byte 0x4182001C # beq .L_8017CDC0
    fmr 1, 30
    fmr 2, 31
    bl fn_8015465C
    clrlwi 0, 3, 16
    add 0, 26, 0
    clrlwi 26, 0, 16
L_8017CDC0:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8017CE14
    extsh 27, 26
    mr 3, 27
    bl fn_801544FC
    .4byte 0xC002ADD4 # lfs f0, lbl_8053DD74@sda21(r0)
    mr 3, 27
    fmuls 0, 0, 1
    stfs 0, 0x294(31)
    bl fn_801544E4
    .4byte 0xC002ADD4 # lfs f0, lbl_8053DD74@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x298(31)
    bl fn_80154744
    .4byte 0xC002AD94 # lfs f0, lbl_8053DD34@sda21(r0)
    fmadds 0, 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x23c(31)
L_8017CE14:
    fmuls 0, 31, 31
    fmadds 1, 30, 30, 0
    bl fn_80154378
    .4byte 0xC002ADE8 # lfs f0, lbl_8053DD88@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810024 # ble .L_8017CE4C
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_8017CEAC
    addi 3, 31, 0x294
    bl fn_801546BC
    li 0, 0x1
    stw 0, 0x250(31)
    .4byte 0x48000064 # b .L_8017CEAC
L_8017CE4C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x41810054 # bgt .L_8017CEAC
    li 0, 0x0
    stw 0, 0x250(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_8017CEAC
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0xa
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    lwz 0, 0x18(1)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8017CEAC
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x480015CC # b .L_8017E474
L_8017CEAC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408215C0 # bne .L_8017E474
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x480015B4 # b .L_8017E474
    addi 3, 31, 0x294
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    li 0, 0x0
    addi 3, 1, 0x5c
    stw 0, 0x268(31)
    addi 4, 31, 0xc
    lwz 5, 0x234(31)
    addi 0, 5, 0x1e
    stw 0, 0x234(31)
    bl fn_8017EADC
    lfs 3, 0x5c(1)
    addi 4, 1, 0x5c
    .4byte 0xC022ADEC # lfs f1, lbl_8053DD8C@sda21(r0)
    li 5, 0xcb
    lfs 2, 0x60(1)
    li 6, 0x1
    .4byte 0xC002ADF0 # lfs f0, lbl_8053DD90@sda21(r0)
    fsubs 3, 3, 1
    .4byte 0xC022ADD4 # lfs f1, lbl_8053DD74@sda21(r0)
    li 7, 0x5
    fsubs 0, 2, 0
    li 8, 0x0
    stfs 3, 0x5c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x60(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x5c
    .4byte 0xC022ADD4 # lfs f1, lbl_8053DD74@sda21(r0)
    li 5, 0xcc
    li 6, 0x1
    li 7, 0x5
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x25c(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_8017D0A4
    li 0, 0x1
    .4byte 0xC022AD84 # lfs f1, lbl_8053DD24@sda21(r0)
    stw 0, 0x27c(31)
    addi 3, 31, 0x60
    .4byte 0xC042ADF4 # lfs f2, lbl_8053DD94@sda21(r0)
    .4byte 0xC062ADE8 # lfs f3, lbl_8053DD88@sda21(r0)
    .4byte 0xC082ADF8 # lfs f4, lbl_8053DD98@sda21(r0)
    bl fn_80154590
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x408200C0 # bne .L_8017D068
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x43
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8017CFF4
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0xa
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    .4byte 0x48000028 # b .L_8017D018
L_8017CFF4:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0xa
    addi 6, 1, 0x18
    addi 7, 1, 0x1c
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
L_8017D018:
    li 0, 0x0
    stw 0, 0x264(31)
    lwz 0, 0x18(1)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_8017D038
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48001440 # b .L_8017E474
L_8017D038:
    lhz 0, 0xa(1)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002ADFC # lfs f0, lbl_8053DD9C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lhz 0, 0xa(1)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC002ADFC # lfs f0, lbl_8053DD9C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
L_8017D068:
    lwz 4, 0x268(31)
    addi 3, 29, 0x38
    addi 0, 4, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x40820014 # bne .L_8017D0A4
    li 3, 0x32
    li 0, 0xa
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8017D0A4:
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x408213C8 # bne .L_8017E474
    addi 3, 1, 0x5c
    addi 4, 31, 0xc
    bl fn_8017EADC
    lfs 2, 0x10(31)
    mr 3, 31
    lfs 1, 0x14(31)
    li 5, -0x1
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    li 6, 0x6
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    lwz 4, 0x114(31)
    bl fn_801F2B7C
    addi 3, 31, 0xc
    addi 4, 1, 0x5c
    bl fn_8017EADC
    .4byte 0x48001380 # b .L_8017E474
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_8017D130
    .4byte 0xC022AE00 # lfs f1, lbl_8053DDA0@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x4182135C # beq .L_8017E474
    addi 3, 31, 0x294
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0x48001348 # b .L_8017E474
L_8017D130:
    lfs 1, 0x3c(31)
    lfs 0, 0x294(31)
    .4byte 0xC042ADC0 # lfs f2, lbl_8053DD60@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x41811328 # bgt .L_8017E474
    lfs 1, 0x40(31)
    lfs 0, 0x298(31)
    fsubs 0, 1, 0
    fabs 0, 0
    frsp 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x4181130C # bgt .L_8017E474
    lwz 3, 0x268(31)
    subi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_8017D198
    slwi 0, 0, 2
    addi 3, 29, 0x38
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x480012E0 # b .L_8017E474
L_8017D198:
    li 0, 0x0
    stw 0, 0x268(31)
    bl fn_80154744
    .4byte 0xC002AD94 # lfs f0, lbl_8053DD34@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC042ADF4 # lfs f2, lbl_8053DD94@sda21(r0)
    fmadds 0, 0, 1, 0
    .4byte 0xC022AD84 # lfs f1, lbl_8053DD24@sda21(r0)
    .4byte 0xC062AD9C # lfs f3, lbl_8053DD3C@sda21(r0)
    .4byte 0xC082ADDC # lfs f4, lbl_8053DD7C@sda21(r0)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stw 0, 0x248(31)
    bl fn_80154590
    li 6, 0x0
    addi 4, 29, 0x4c
    stw 6, 0x268(31)
    li 3, 0x2
    .4byte 0xC002ADBC # lfs f0, lbl_8053DD5C@sda21(r0)
    li 0, 0x7
    lwz 5, 0x268(31)
    slwi 5, 5, 2
    lwzx 4, 4, 5
    stw 4, 0x234(31)
    stfs 0, 0x28c(31)
    stw 6, 0x278(31)
    stw 6, 0x250(31)
    stw 6, 0x23c(31)
    stw 3, 0x27c(31)
    stw 0, 0x230(31)
    .4byte 0x48001260 # b .L_8017E474
    bl fn_80154744
    .4byte 0xC062ADE0 # lfs f3, lbl_8053DD80@sda21(r0)
    .4byte 0xC042AE08 # lfs f2, lbl_8053DDA8@sda21(r0)
    .4byte 0xC002AE04 # lfs f0, lbl_8053DDA4@sda21(r0)
    fnmsubs 1, 3, 1, 2
    fadds 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    extsh 27, 0
    mr 3, 27
    bl fn_801544FC
    .4byte 0xC002AE0C # lfs f0, lbl_8053DDAC@sda21(r0)
    mr 3, 27
    fmuls 0, 0, 1
    stfs 0, 0x294(31)
    bl fn_801544E4
    .4byte 0xC002AE0C # lfs f0, lbl_8053DDAC@sda21(r0)
    li 0, 0xc
    fmuls 0, 0, 1
    stfs 0, 0x298(31)
    stw 0, 0x230(31)
    lfs 2, 0x2a4(31)
    .4byte 0xC022AE10 # lfs f1, lbl_8053DDB0@sda21(r0)
    lfs 0, 0x10(31)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x418011F0 # blt .L_8017E474
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    addi 3, 31, 0x3c
    stfs 0, 0x294(31)
    stfs 0, 0x298(31)
    bl fn_801546BC
    li 3, 0x0
    li 0, 0xd
    stw 3, 0x268(31)
    sth 3, 0x2b8(31)
    stw 0, 0x230(31)
    addi 3, 1, 0x5c
    addi 4, 31, 0xc
    bl fn_8017EADC
    lfs 3, 0x5c(1)
    .4byte 0xC002ADEC # lfs f0, lbl_8053DD8C@sda21(r0)
    lfs 2, 0x60(1)
    .4byte 0xC022AE14 # lfs f1, lbl_8053DDB4@sda21(r0)
    fsubs 3, 3, 0
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    fsubs 1, 2, 1
    stfs 3, 0x5c(1)
    stfs 1, 0x60(1)
    stfs 0, 0x64(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4647
    lwz 5, 0x4(31)
    addi 4, 4, 0x414e
    addi 6, 1, 0x5c
    li 7, 0xa
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x274(31)
    li 0, 0x2
    stw 0, 0x27c(31)
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x41801158 # blt .L_8017E474
    li 0, 0x28
    stw 0, 0x238(31)
    bl SpatialRegistry_GetBase
    lwz 4, 0x274(31)
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x4182113C # beq .L_8017E474
    li 0, 0x0
    lis 4, 0x3
    stw 0, 0x258(31)
    mr 3, 31
    addi 4, 4, 0x2c
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x198(31)
    li 0, 0xe
    stw 3, 0x274(28)
    stw 0, 0x230(31)
    .4byte 0x4800110C # b .L_8017E474
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40821100 # bne .L_8017E474
    li 0, 0x0
    addi 3, 29, 0x38
    stw 0, 0x250(31)
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 27, 0x274(31)
    cmpwi 27, 0x0
    .4byte 0x41800140 # blt .L_8017D4E0
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    li 0, 0x1
    lis 4, 0x4
    stw 0, 0x27c(31)
    mr 29, 3
    mr 3, 31
    addi 4, 4, 0x43
    li 5, 0x0
    bl fn_801F0E34
    cmplwi 29, 0x0
    .4byte 0x41820104 # beq .L_8017D4D8
    addi 3, 31, 0xc
    lfs 0, 0x14(31)
    psq_l 1, 0x0(3), 0, 0
    addi 4, 29, 0xc
    psq_st 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    bl fn_8017EADC
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0xa
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x2
    bl fn_801EEC98
    addi 3, 31, 0xc
    addi 4, 1, 0x44
    bl fn_8017EADC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x41810034 # bgt .L_8017D464
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8017D454
    lhz 3, 0xa(1)
    lhz 0, 0x2b8(31)
    add 0, 3, 0
    sth 0, 0xa(1)
    .4byte 0x48000014 # b .L_8017D464
L_8017D454:
    lhz 3, 0x2b8(31)
    lhz 0, 0xa(1)
    subf 0, 3, 0
    sth 0, 0xa(1)
L_8017D464:
    lwz 3, 0x258(31)
    li 0, 0x800
    addi 3, 3, 0x1
    stw 3, 0x258(31)
    lwz 3, 0x258(31)
    clrlwi 3, 3, 31
    stw 3, 0x258(31)
    sth 0, 0x2b8(31)
    lhz 0, 0xa(1)
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(31)
    lhz 0, 0xa(1)
    fmuls 0, 0, 1
    extsh 3, 0
    stfs 0, 0x50(1)
    bl fn_801544E4
    lfs 0, 0x28c(31)
    mr 3, 29
    .4byte 0x880D83C8 # lbz r0, lbl_80539F88@sda21(r0)
    addi 4, 1, 0x50
    fmuls 0, 0, 1
    stfs 0, 0x54(1)
    stb 0, 0x2bb(29)
    bl fn_8017EAF8
    lhz 3, 0xa(1)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(29)
    .4byte 0x4800000C # b .L_8017D4E0
L_8017D4D8:
    li 0, -0x1
    stw 0, 0x274(31)
L_8017D4E0:
    li 0, 0xf
    stw 0, 0x230(31)
    .4byte 0x48000F8C # b .L_8017E474
    lwz 3, 0x268(31)
    cmpwi 3, 0x4
    .4byte 0x40800F80 # bge .L_8017E474
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820F74 # bne .L_8017E474
    slwi 0, 3, 2
    addi 3, 29, 0x38
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    lwz 3, 0x268(31)
    addi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x40820F4C # bne .L_8017E474
    li 3, 0x14
    li 0, 0x10
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000F38 # b .L_8017E474
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820F2C # bne .L_8017E474
    li 0, 0x11
    stw 0, 0x230(31)
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0xa
    addi 6, 1, 0x18
    addi 7, 1, 0x1c
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x18(1)
    cmpwi 0, 0x0
    .4byte 0x41800028 # blt .L_8017D5A8
    lfs 1, 0x1c(1)
    .4byte 0xC002AD94 # lfs f0, lbl_8053DD34@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8017D5A8
    li 3, 0x1
    li 0, 0x8
    stw 3, 0x264(31)
    stw 0, 0x230(31)
    .4byte 0x48000ED0 # b .L_8017E474
L_8017D5A8:
    lwz 27, 0x274(31)
    cmpwi 27, 0x0
    .4byte 0x4180002C # blt .L_8017D5DC
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820024 # bne .L_8017D5E8
    li 3, -0x1
    li 0, 0x6
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    .4byte 0x48000E9C # b .L_8017E474
L_8017D5DC:
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48000E90 # b .L_8017E474
L_8017D5E8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820E84 # bne .L_8017E474
    lwz 0, 0x27c(31)
    cmpwi 0, 0x1
    .4byte 0x40820044 # bne .L_8017D640
    lwz 3, 0x268(31)
    subi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8017D628
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x268(31)
    stw 0, 0x27c(31)
L_8017D628:
    lwz 0, 0x268(31)
    addi 3, 29, 0x38
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000E38 # b .L_8017E474
L_8017D640:
    lwz 3, 0x268(31)
    addi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8017D660
    li 0, 0x0
    stw 0, 0x268(31)
L_8017D660:
    lwz 0, 0x268(31)
    addi 3, 29, 0x4c
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000E00 # b .L_8017E474
    li 0, 0x0
    addi 5, 29, 0x6c
    stw 0, 0x268(31)
    addi 3, 1, 0x5c
    addi 4, 31, 0xc
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    stw 0, 0x234(31)
    bl fn_8017EADC
    lwz 3, 0x2dc(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8017D6B8
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x2dc(31)
L_8017D6B8:
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820DB0 # beq .L_8017E474
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x40800034 # bge .L_8017D704
    bl SpatialRegistry_GetBase
    lis 4, 0x474f
    lwz 5, 0x4(31)
    addi 4, 4, 0x4c44
    addi 6, 31, 0xc
    li 7, 0x63
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 3, 0x260(31)
    addi 0, 3, 0x1
    stw 0, 0x260(31)
L_8017D704:
    lwz 3, 0x4(31)
    addi 4, 1, 0x5c
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 5, 0x370
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x5c
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 5, 0x371
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0xa
    li 3, 0x3
    stw 0, 0x234(31)
    li 0, 0x13
    stw 3, 0x27c(31)
    stw 0, 0x230(31)
    addi 3, 1, 0x5c
    addi 4, 31, 0xc
    bl fn_8017EADC
    lfs 2, 0x60(1)
    addi 3, 1, 0x5c
    .4byte 0xC002AD9C # lfs f0, lbl_8053DD3C@sda21(r0)
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x60(1)
    bl fn_8017EC70
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820CD8 # bne .L_8017E474
    lwz 3, 0x268(31)
    cmpwi 3, 0x4
    .4byte 0x40800024 # bge .L_8017D7CC
    addi 0, 3, 0x1
    addi 3, 29, 0x6c
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000CAC # b .L_8017E474
L_8017D7CC:
    .4byte 0xC022AD88 # lfs f1, lbl_8053DD28@sda21(r0)
    li 4, 0x0
    addi 3, 29, 0x20
    .4byte 0xC002ADBC # lfs f0, lbl_8053DD5C@sda21(r0)
    stfs 1, 0x288(31)
    stw 4, 0x268(31)
    stw 4, 0x27c(31)
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    stfs 0, 0x280(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 3, 0x1
    li 0, 0x14
    stw 3, 0xb8(31)
    stw 0, 0x230(31)
    .4byte 0x48000C58 # b .L_8017E474
    lfs 1, 0x14(31)
    .4byte 0xC002ADC0 # lfs f0, lbl_8053DD60@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8017D838
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    stfs 0, 0x14(31)
L_8017D838:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820048 # bne .L_8017D888
    lwz 3, 0x268(31)
    cmpwi 3, 0x5
    .4byte 0x40800030 # bge .L_8017D87C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820C1C # bne .L_8017E474
    addi 0, 3, 0x1
    addi 3, 29, 0x20
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    .4byte 0x48000BFC # b .L_8017E474
L_8017D87C:
    li 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x48000BF0 # b .L_8017E474
L_8017D888:
    lwz 0, 0x250(31)
    clrlwi. 0, 0, 27
    .4byte 0x40820018 # bne .L_8017D8A8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x45
    li 5, 0x0
    bl fn_801F0E34
L_8017D8A8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820BC4 # bne .L_8017E474
    lwz 0, 0x268(31)
    xori 0, 0, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_8017D8D8
    li 0, 0x4
    stw 0, 0x234(31)
    .4byte 0x48000BA0 # b .L_8017E474
L_8017D8D8:
    li 0, 0x8
    stw 0, 0x234(31)
    .4byte 0x48000B94 # b .L_8017E474
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8017D918
    lwz 4, 0x268(31)
    addi 3, 29, 0x20
    .4byte 0xC002AD98 # lfs f0, lbl_8053DD38@sda21(r0)
    subi 0, 4, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(31)
    stfs 0, 0x280(31)
L_8017D918:
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41810B54 # bgt .L_8017E474
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x250(31)
    stw 3, 0xb8(31)
    stw 0, 0x230(31)
    .4byte 0x48000B3C # b .L_8017E474
    li 0, 0x2
    mr 3, 31
    li 5, 0x0
    mtctr 0
L_8017D94C:
    lwz 0, 0x24c(31)
    cmpw 5, 0
    .4byte 0x41820038 # beq .L_8017D98C
    lwz 4, 0x2bc(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_8017D970
    lwz 0, 0xf4(4)
    ori 0, 0, 0x4
    stw 0, 0xf4(4)
L_8017D970:
    lwz 4, 0x2cc(3)
    cmplwi 4, 0x0
    .4byte 0x41820044 # beq .L_8017D9BC
    lwz 0, 0xf4(4)
    ori 0, 0, 0x4
    stw 0, 0xf4(4)
    .4byte 0x48000034 # b .L_8017D9BC
L_8017D98C:
    lwz 4, 0x2bc(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_8017D9A4
    lwz 0, 0xf4(4)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(4)
L_8017D9A4:
    lwz 4, 0x2cc(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_8017D9BC
    lwz 0, 0xf4(4)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(4)
L_8017D9BC:
    lwz 0, 0x24c(31)
    addi 5, 5, 0x1
    cmpw 5, 0
    .4byte 0x41820038 # beq .L_8017DA00
    lwz 4, 0x2c0(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_8017D9E4
    lwz 0, 0xf4(4)
    ori 0, 0, 0x4
    stw 0, 0xf4(4)
L_8017D9E4:
    lwz 4, 0x2d0(3)
    cmplwi 4, 0x0
    .4byte 0x41820044 # beq .L_8017DA30
    lwz 0, 0xf4(4)
    ori 0, 0, 0x4
    stw 0, 0xf4(4)
    .4byte 0x48000034 # b .L_8017DA30
L_8017DA00:
    lwz 4, 0x2c0(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_8017DA18
    lwz 0, 0xf4(4)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(4)
L_8017DA18:
    lwz 4, 0x2d0(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_8017DA30
    lwz 0, 0xf4(4)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(4)
L_8017DA30:
    addi 3, 3, 0x8
    addi 5, 5, 0x1
    .4byte 0x4200FF14 # bdnz .L_8017D94C
    lfs 0, 0x3c(31)
    .4byte 0xC022AD88 # lfs f1, lbl_8053DD28@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_8017DA58
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x41820A20 # beq .L_8017E474
L_8017DA58:
    li 26, 0x0
    mr 28, 31
L_8017DA60:
    lwz 3, 0x2bc(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8017DA80
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
L_8017DA80:
    lwz 3, 0x2cc(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8017DAA0
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
L_8017DAA0:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFB4 # blt .L_8017DA60
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408209BC # bne .L_8017E474
    lwz 0, 0x254(31)
    cmpwi 0, 0x32
    .4byte 0x4181002C # bgt .L_8017DAF0
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8017DAE4
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
L_8017DAE4:
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
L_8017DAF0:
    lwz 0, 0x254(31)
    cmpwi 0, 0x32
    .4byte 0x40810214 # ble .L_8017DD0C
    .4byte 0xC022AD9C # lfs f1, lbl_8053DD3C@sda21(r0)
    addi 3, 31, 0xc
    lwz 4, 0x4(31)
    bl fn_801F6758
    clrlwi. 0, 3, 24
    .4byte 0x418201FC # beq .L_8017DD0C
    li 28, 0x0
    mr 30, 31
    sth 28, 0x8(1)
    mr 26, 28
L_8017DB24:
    lwz 0, 0x2bc(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8017DB44
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2bc(30)
    bl fn_800EC240
    stw 28, 0x2bc(30)
L_8017DB44:
    lwz 0, 0x2cc(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8017DB64
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2cc(30)
    bl fn_800EC240
    stw 28, 0x2cc(30)
L_8017DB64:
    addi 26, 26, 0x1
    addi 30, 30, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFB4 # blt .L_8017DB24
    lwz 0, 0x24c(31)
    addi 5, 29, 0x10
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24c(31)
    addi 5, 29, 0x10
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    add 5, 5, 0
    li 6, 0x1
    lhz 5, 0x2(5)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
    lhz 3, 0x8(1)
    li 26, 0x0
    lis 28, 0x4647
    addis 3, 3, 0x1
    subi 0, 3, 0x3000
    sth 0, 0x8(1)
L_8017DC1C:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 28, 0x414e
    addi 6, 31, 0xc
    li 7, 0xb
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41820070 # beq .L_8017DCB0
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820048 # beq .L_8017DCB0
    lwz 0, 0x24c(31)
    sth 0, 0x94(29)
    lhz 0, 0x8(1)
    extsh 3, 0
    bl fn_801544FC
    .4byte 0xC002ADB0 # lfs f0, lbl_8053DD50@sda21(r0)
    lhz 0, 0x8(1)
    fmuls 0, 0, 1
    extsh 3, 0
    stfs 0, 0x50(1)
    bl fn_801544E4
    .4byte 0xC002ADB0 # lfs f0, lbl_8053DD50@sda21(r0)
    mr 3, 29
    addi 4, 1, 0x50
    fmuls 0, 0, 1
    stfs 0, 0x54(1)
    bl fn_8017EAF8
L_8017DCB0:
    lhz 3, 0x8(1)
    addi 26, 26, 0x1
    cmpwi 26, 0x7
    addi 0, 3, 0x1000
    sth 0, 0x8(1)
    .4byte 0x4180FF58 # blt .L_8017DC1C
    lwz 27, 0x274(31)
    cmpwi 27, 0x0
    .4byte 0x41800030 # blt .L_8017DD00
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8017DD00
    .4byte 0xC002ADBC # lfs f0, lbl_8053DD5C@sda21(r0)
    li 4, 0x0
    li 0, -0x1
    stfs 0, 0x28c(3)
    stw 4, 0x278(3)
    stw 0, 0x274(31)
L_8017DD00:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800076C # b .L_8017E474
L_8017DD0C:
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 9, 0x24c(31)
    addi 6, 1, 0x18
    addi 7, 1, 0x1c
    li 5, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 26, 3
    .4byte 0x418002C0 # blt .L_8017E00C
    lwz 0, 0x24c(31)
    cmpw 0, 26
    .4byte 0x41820014 # beq .L_8017DD6C
    bl fn_8022F3DC
    lwz 0, 0x24c(31)
    cmpw 0, 3
    .4byte 0x408202A4 # bne .L_8017E00C
L_8017DD6C:
    bl SpatialRegistry_GetBase
    lwz 4, 0x274(31)
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820290 # beq .L_8017E00C
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 3, 0x278(30)
    addi 0, 3, 0x1
    stw 0, 0x278(30)
    lwz 0, 0x278(30)
    cmpwi 0, 0x4
    .4byte 0x4081000C # ble .L_8017DDB8
    li 0, 0x4
    stw 0, 0x278(30)
L_8017DDB8:
    lfs 1, 0x28c(30)
    .4byte 0xC002ADB0 # lfs f0, lbl_8053DD50@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800248 # bge .L_8017E00C
    li 0, 0x0
    mr 3, 26
    stw 0, 0xd8(31)
    bl fn_8023B6CC
    lis 4, 0x2
    mr 3, 26
    addi 4, 4, 0x38
    bl fn_80230FD0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    lwz 0, 0x24c(31)
    cmpw 0, 3
    .4byte 0x41800114 # blt .L_8017DF0C
    .4byte 0xC022AD80 # lfs f1, lbl_8053DD20@sda21(r0)
    lfs 0, 0x14(30)
    lfs 2, 0x10(30)
    fadds 1, 1, 0
    lfs 4, 0xc(30)
    lfs 3, 0xc(31)
    lfs 0, 0x10(31)
    fsubs 1, 2, 1
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    fsubs 31, 4, 3
    fsubs 30, 1, 0
    bl fn_80138A30
    subi 0, 3, 0x1
    fmr 1, 31
    fmr 2, 30
    stw 0, 0x24c(31)
    bl fn_8015465C
    sth 3, 0xa(1)
    clrlwi 0, 3, 16
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(30)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lhz 0, 0xa(1)
    extsh 3, 0
    bl fn_801544E4
    lfs 0, 0x28c(30)
    lis 0, 0x4330
    stw 0, 0x80(1)
    fmuls 1, 0, 1
    .4byte 0xC862AE20 # lfd f3, lbl_8053DDC0@sda21(r0)
    .4byte 0xC082AE18 # lfs f4, lbl_8053DDB8@sda21(r0)
    .4byte 0xC002ADB0 # lfs f0, lbl_8053DD50@sda21(r0)
    stfs 1, 0x40(31)
    lwz 0, 0x250(31)
    lfs 1, 0x28c(30)
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 2, 0x80(1)
    fsubs 2, 2, 3
    fmadds 1, 4, 2, 1
    stfs 1, 0x28c(30)
    lfs 1, 0x28c(30)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8017DEB8
    stfs 0, 0x28c(30)
L_8017DEB8:
    lwz 0, 0x24c(31)
    .4byte 0x38AD83D0 # li r5, lbl_80539F90@sda21
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x388D83C8 # li r4, lbl_80539F88@sda21
    li 3, 0x1e
    lbz 4, 0x4(4)
    li 0, 0x64
    stb 4, 0x2bb(31)
    stw 3, 0x238(31)
    stw 0, 0x23c(31)
    .4byte 0x4800056C # b .L_8017E474
L_8017DF0C:
    mr 3, 0
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200F4 # beq .L_8017E00C
    lwz 28, 0x4(31)
    lwz 3, 0x24c(31)
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x408200E0 # bne .L_8017E00C
    lwz 3, 0x24c(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408200D0 # bne .L_8017E00C
    lwz 4, 0x198(31)
    mr 3, 31
    lwz 9, 0x24c(31)
    addi 5, 1, 0xa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 10, 0x2
    bl fn_801EEC98
    lwz 4, 0x24c(31)
    .4byte 0x386D83C8 # li r3, lbl_80539F88@sda21
    li 0, 0x800
    .4byte 0x38AD83D0 # li r5, lbl_80539F90@sda21
    lbzx 3, 3, 4
    addi 4, 31, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 6, 0x1
    stb 3, 0x2bb(31)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    lwz 3, 0x258(31)
    li 10, 0x1
    addi 3, 3, 0x1
    stw 3, 0x258(31)
    lwz 3, 0x258(31)
    clrlwi 3, 3, 31
    stw 3, 0x258(31)
    sth 0, 0x2b8(31)
    lwz 0, 0x24c(31)
    lwz 3, 0x4(31)
    slwi 0, 0, 1
    lhzx 5, 5, 0
    bl fn_8013CC50
    lhz 0, 0xa(1)
    extsh 3, 0
    bl fn_801544FC
    lfs 0, 0x28c(30)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lhz 0, 0xa(1)
    extsh 3, 0
    bl fn_801544E4
    lfs 0, 0x28c(30)
    li 3, 0x1e
    li 0, 0x32
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
    stw 3, 0x238(31)
    stw 0, 0x23c(31)
    .4byte 0x4800046C # b .L_8017E474
L_8017E00C:
    lwz 0, 0x23c(31)
    li 26, 0x0
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8017E064
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8017E064
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x42
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    li 26, 0x1
L_8017E064:
    cmpwi 26, 0x0
    .4byte 0x40820010 # bne .L_8017E078
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40820400 # bne .L_8017E474
L_8017E078:
    li 26, 0x0
    mr 27, 31
    mr 28, 26
    mr 30, 26
L_8017E088:
    lwz 0, 0x2bc(27)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8017E0A8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2bc(27)
    bl fn_800EC240
    stw 28, 0x2bc(27)
L_8017E0A8:
    lwz 0, 0x2cc(27)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8017E0C8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2cc(27)
    bl fn_800EC240
    stw 30, 0x2cc(27)
L_8017E0C8:
    addi 26, 26, 0x1
    addi 27, 27, 0x4
    cmpwi 26, 0x4
    .4byte 0x4180FFB4 # blt .L_8017E088
    lwz 0, 0x24c(31)
    addi 5, 29, 0x10
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24c(31)
    addi 5, 29, 0x10
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 2
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    add 5, 5, 0
    li 6, 0x1
    lhz 5, 0x2(5)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    bl SpatialRegistry_GetBase
    lwz 4, 0x274(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_8017E174
    lbz 0, 0x11c(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8017E174
    .4byte 0xC002ADBC # lfs f0, lbl_8053DD5C@sda21(r0)
    li 0, -0x1
    stfs 0, 0x28c(3)
    stw 0, 0x274(31)
L_8017E174:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480002F8 # b .L_8017E474
    lhz 0, 0x94(31)
    addi 5, 29, 0x0
    .4byte 0xC022ADB8 # lfs f1, lbl_8053DD58@sda21(r0)
    addi 4, 31, 0xc
    clrlwi 0, 0, 30
    li 6, 0x1
    sth 0, 0x94(31)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    lhz 0, 0x94(31)
    li 10, 0x1
    lwz 3, 0x4(31)
    slwi 0, 0, 2
    lhzx 5, 5, 0
    bl fn_8013CC50
    stw 3, 0x2bc(31)
    addi 5, 29, 0x0
    .4byte 0xC022ADB8 # lfs f1, lbl_8053DD58@sda21(r0)
    addi 4, 31, 0xc
    lhz 0, 0x94(31)
    li 6, 0x1
    lwz 3, 0x4(31)
    li 7, 0x2
    slwi 0, 0, 2
    li 8, 0x0
    add 5, 5, 0
    li 9, 0x0
    lhz 5, 0x2(5)
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2cc(31)
    li 0, 0x1c
    stw 0, 0x230(31)
    lwz 3, 0x2bc(31)
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_8017E240
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
    lfs 0, 0x290(31)
    lwz 3, 0x2bc(31)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stb 0, 0xbb(3)
L_8017E240:
    lwz 3, 0x2cc(31)
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_8017E278
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
    lfs 0, 0x290(31)
    lwz 3, 0x2cc(31)
    fctiwz 0, 0
    stfd 0, 0x80(1)
    lwz 0, 0x84(1)
    stb 0, 0xbb(3)
L_8017E278:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x418200BC # beq .L_8017E34C
    lwz 0, 0x2bc(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8017E2B8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2bc(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2bc(31)
L_8017E2B8:
    lwz 0, 0x2cc(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8017E2DC
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2cc(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2cc(31)
L_8017E2DC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022ADB8 # lfs f1, lbl_8053DD58@sda21(r0)
    li 5, 0x36e
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022ADB8 # lfs f1, lbl_8053DD58@sda21(r0)
    li 5, 0x36f
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800012C # b .L_8017E474
L_8017E34C:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820120 # bne .L_8017E474
    .4byte 0xC022AD88 # lfs f1, lbl_8053DD28@sda21(r0)
    addi 3, 31, 0x290
    .4byte 0xC042ADB8 # lfs f2, lbl_8053DD58@sda21(r0)
    .4byte 0xC062ADB0 # lfs f3, lbl_8053DD50@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x290(31)
    .4byte 0xC002ADD8 # lfs f0, lbl_8053DD78@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000FC # bge .L_8017E474
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000F0 # b .L_8017E474
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x418200E0 # beq .L_8017E474
    li 5, 0x0
    li 4, 0x3
    stw 5, 0x268(31)
    li 3, 0x4
    .4byte 0xC022ADD8 # lfs f1, lbl_8053DD78@sda21(r0)
    li 0, 0x17
    stw 5, 0x24c(31)
    .4byte 0xC002ADDC # lfs f0, lbl_8053DD7C@sda21(r0)
    stw 5, 0x250(31)
    stw 5, 0x234(31)
    stw 4, 0x27c(31)
    stw 3, 0x268(31)
    stfs 1, 0x280(31)
    stfs 0, 0x288(31)
    stb 5, 0x2ba(31)
    stw 0, 0x230(31)
    lfs 2, 0x14(31)
    lfs 1, 0x288(31)
    .4byte 0xC002AD98 # lfs f0, lbl_8053DD38@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082007C # bne .L_8017E474
    lwz 3, 0x2dc(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8017E414
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x2dc(31)
L_8017E414:
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000044 # b .L_8017E474
    .4byte 0xC022ADB0 # lfs f1, lbl_8053DD50@sda21(r0)
    addi 3, 31, 0x2b0
    .4byte 0xC042ADA0 # lfs f2, lbl_8053DD40@sda21(r0)
    .4byte 0xC062ADBC # lfs f3, lbl_8053DD5C@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022AD88 # lfs f1, lbl_8053DD28@sda21(r0)
    addi 3, 31, 0x2ac
    .4byte 0xC042ADA0 # lfs f2, lbl_8053DD40@sda21(r0)
    .4byte 0xC062ADC0 # lfs f3, lbl_8053DD60@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2ac(31)
    .4byte 0xC002ADC0 # lfs f0, lbl_8053DD60@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_8017E474
    li 0, 0x0
    stb 0, 0x11c(31)
L_8017E474:
    lwz 3, 0x230(31)
    cmpwi 3, 0x7
    .4byte 0x41820020 # beq .L_8017E49C
    cmpwi 3, 0x11
    .4byte 0x41820018 # beq .L_8017E49C
    subi 0, 3, 0x8
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_8017E49C
    cmpwi 3, 0x15
    .4byte 0x4082002C # bne .L_8017E4C4
L_8017E49C:
    lwz 0, 0x24c(31)
    extsh 3, 0
    bl fn_801544E4
    .4byte 0xC042AE0C # lfs f2, lbl_8053DDAC@sda21(r0)
    .4byte 0xC002ADDC # lfs f0, lbl_8053DD7C@sda21(r0)
    fmadds 0, 2, 1, 0
    stfs 0, 0x288(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x300
    stw 0, 0x24c(31)
L_8017E4C4:
    lwz 0, 0x230(31)
    cmpwi 0, 0x10
    .4byte 0x4182001C # beq .L_8017E4E8
    cmpwi 0, 0x11
    .4byte 0x41820014 # beq .L_8017E4E8
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_8017E4E8
    cmpwi 0, 0xa
    .4byte 0x40820138 # bne .L_8017E61C
L_8017E4E8:
    lfs 31, 0x14(31)
    lis 4, 0x4647
    lfs 1, 0x10(31)
    mr 3, 31
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    addi 4, 4, 0x414e
    fsubs 1, 1, 31
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    bl fn_801F2718
    stfs 31, 0x14(31)
    mr. 26, 3
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x418000F4 # blt .L_8017E61C
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x418200E0 # beq .L_8017E61C
    lwz 0, 0x90(29)
    cmplwi 0, 0xa
    .4byte 0x408200D4 # bne .L_8017E61C
    lwz 0, 0x230(31)
    li 26, 0x0
    cmpwi 0, 0x9
    .4byte 0x4182000C # beq .L_8017E564
    cmpwi 0, 0xa
    .4byte 0x4082000C # bne .L_8017E56C
L_8017E564:
    li 26, 0x0
    .4byte 0x480000A4 # b .L_8017E60C
L_8017E56C:
    .4byte 0x386D83C8 # li r3, lbl_80539F88@sda21
    lbz 4, 0x2bb(29)
    lbz 0, 0x4(3)
    cmplw 4, 0
    .4byte 0x40820090 # bne .L_8017E60C
    lwz 0, 0x278(31)
    cmpwi 0, 0x4
    .4byte 0x41800028 # blt .L_8017E5B0
    li 0, 0x12
    lis 4, 0x4
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x44
    li 26, 0x1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000060 # b .L_8017E60C
L_8017E5B0:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(29)
    addi 4, 29, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 6, 0x1
    stw 0, 0x254(29)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    stw 3, 0x238(29)
    li 10, 0x1
    stw 3, 0x23c(29)
    lwz 3, 0x4(31)
    .4byte 0xA0AD83D0 # lhz r5, lbl_80539F90@sda21(r0)
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0xe
    stw 0, 0x230(31)
L_8017E60C:
    clrlwi. 0, 26, 24
    .4byte 0x4182000C # beq .L_8017E61C
    li 0, 0x0
    stw 0, 0x108(29)
L_8017E61C:
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    lmw 26, 0x88(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8017E640:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200E8 # beq .L_8017E74C
    lis 3, lbl_804A1318@ha
    mr 31, 28
    addi 0, 3, lbl_804A1318@l
    li 30, 0x0
    stw 0, 0x0(28)
L_8017E67C:
    lwz 3, 0x2bc(31)
    bl fn_801EE434
    lwz 3, 0x2cc(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFE4 # blt .L_8017E67C
    lwz 3, 0x2dc(28)
    bl fn_801EE434
    lwz 0, 0x90(28)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8017E6E0
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 3, 0xff
    li 0, 0x0
    lwz 4, 0x2c(4)
    stb 3, 0x4(4)
    stb 3, 0x5(4)
    stb 3, 0x6(4)
    stb 0, 0x7(4)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    bl fn_8022ADCC
L_8017E6E0:
    lwz 0, 0x90(28)
    cmplwi 0, 0xa
    .4byte 0x40820048 # bne .L_8017E730
    lwz 31, 0x274(28)
    cmpwi 31, 0x0
    .4byte 0x4180003C # blt .L_8017E730
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_8017E730
    lbz 0, 0x11c(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8017E730
    .4byte 0xC002ADBC # lfs f0, lbl_8053DD5C@sda21(r0)
    li 4, 0x0
    li 0, -0x1
    stfs 0, 0x28c(3)
    stw 4, 0x278(3)
    stw 0, 0x274(28)
L_8017E730:
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_8017E74C
    mr 3, 28
    bl dtor_80084580
L_8017E74C:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8017E770:
    stwu 1, -0x20(1)
    mflr 0
    li 6, 0x1
    .4byte 0xC082AD88 # lfs f4, lbl_8053DD28@sda21(r0)
    stw 0, 0x24(1)
    li 4, -0x1
    .4byte 0xC062AD98 # lfs f3, lbl_8053DD38@sda21(r0)
    li 5, 0x2
    stmw 26, 0x8(1)
    mr 30, 3
    li 31, 0x0
    .4byte 0xC042ADD4 # lfs f2, lbl_8053DD74@sda21(r0)
    .4byte 0xC022ADB4 # lfs f1, lbl_8053DD54@sda21(r0)
    .4byte 0xC002AD9C # lfs f0, lbl_8053DD3C@sda21(r0)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    sth 0, 0x94(3)
    li 3, 0xd2
    li 0, 0x2710
    lwz 7, 0x90(30)
    clrlwi 7, 7, 28
    stw 7, 0x90(30)
    stw 31, 0x24c(30)
    stw 31, 0x250(30)
    stw 31, 0x254(30)
    stw 31, 0x258(30)
    stw 31, 0x25c(30)
    stw 31, 0x260(30)
    stw 31, 0x264(30)
    stw 31, 0x234(30)
    stw 31, 0x238(30)
    stw 31, 0x23c(30)
    stw 31, 0x240(30)
    stw 31, 0x244(30)
    stw 31, 0x248(30)
    stw 31, 0x268(30)
    stb 6, 0x196(30)
    stfs 4, 0x29c(30)
    stfs 4, 0x298(30)
    stfs 4, 0x294(30)
    stfs 3, 0x14(30)
    stfs 2, 0x280(30)
    stfs 4, 0x28c(30)
    stw 31, 0x2bc(30)
    stw 31, 0x2cc(30)
    stw 31, 0x2c0(30)
    stw 31, 0x2d0(30)
    stw 31, 0x2c4(30)
    stw 31, 0x2d4(30)
    stw 31, 0x2c8(30)
    stw 31, 0x2d8(30)
    stw 31, 0x2dc(30)
    .4byte 0x88CD83C8 # lbz r6, lbl_80539F88@sda21(r0)
    stb 6, 0x2bb(30)
    stw 4, 0x274(30)
    stw 5, 0x27c(30)
    stw 3, 0x26c(30)
    stw 31, 0x270(30)
    stw 0, 0x108(30)
    sth 31, 0x2b8(30)
    stfs 1, 0x290(30)
    stfs 4, 0x284(30)
    stfs 4, 0x288(30)
    stfs 3, 0x2ac(30)
    stfs 3, 0x2b0(30)
    stfs 3, 0x2b4(30)
    stw 31, 0x278(30)
    lfs 1, 0xc(30)
    stfs 1, 0x2a0(30)
    lfs 1, 0x10(30)
    stfs 1, 0x2a4(30)
    lfs 1, 0x14(30)
    stfs 1, 0x2a8(30)
    lfs 1, 0x2a4(30)
    fadds 0, 1, 0
    stfs 0, 0x2a4(30)
    lwz 0, 0x90(30)
    cmpwi 0, 0xa
    .4byte 0x41820098 # beq .L_8017E940
    .4byte 0x4080001C # bge .L_8017E8C8
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_8017E8F0
    .4byte 0x40800038 # bge .L_8017E8F0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8017E8D4
    .4byte 0x4800002C # b .L_8017E8F0
L_8017E8C8:
    cmpwi 0, 0xc
    .4byte 0x40800024 # bge .L_8017E8F0
    .4byte 0x48000184 # b .L_8017EA54
L_8017E8D4:
    stfs 4, 0x2b4(30)
    stfs 4, 0x2b0(30)
    stfs 4, 0x2ac(30)
    stfs 4, 0x290(30)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
L_8017E8F0:
    .4byte 0xC002AD84 # lfs f0, lbl_8053DD24@sda21(r0)
    li 4, 0x2
    .4byte 0xC042ADF4 # lfs f2, lbl_8053DD94@sda21(r0)
    li 3, 0x1
    stfs 0, 0x60(30)
    li 0, 0x0
    .4byte 0xC002AD9C # lfs f0, lbl_8053DD3C@sda21(r0)
    stfs 2, 0x64(30)
    .4byte 0xC022ADDC # lfs f1, lbl_8053DD7C@sda21(r0)
    stfs 0, 0x68(30)
    .4byte 0xC002AD80 # lfs f0, lbl_8053DD20@sda21(r0)
    stfs 1, 0x6c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 4, 0x114(30)
    stb 3, 0x2ba(30)
    stw 0, 0x230(30)
    .4byte 0x48000164 # b .L_8017EAA0
L_8017E940:
    lis 3, lbl_804A1210@ha
    mr 28, 30
    li 26, 0x0
    addi 29, 3, lbl_804A1210@l
L_8017E950:
    add 27, 29, 31
    lwz 3, 0x4(30)
    lhz 5, 0x0(27)
    addi 4, 30, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2bc(28)
    addi 4, 30, 0xc
    .4byte 0xC022AD98 # lfs f1, lbl_8053DD38@sda21(r0)
    li 6, 0x1
    lwz 3, 0x4(30)
    li 7, 0x2
    lhz 5, 0x2(27)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmpwi 26, 0x0
    stw 3, 0x2cc(28)
    .4byte 0x41820034 # beq .L_8017E9E4
    lwz 3, 0x2bc(28)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8017E9CC
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8017E9CC:
    lwz 3, 0x2cc(28)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8017E9E4
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8017E9E4:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FF5C # blt .L_8017E950
    li 0, 0x4
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    stw 0, 0x118(30)
    li 3, 0x2
    .4byte 0xC062AE2C # lfs f3, lbl_8053DDCC@sda21(r0)
    li 0, 0x1a
    stfs 0, 0x2b4(30)
    .4byte 0xC042AE30 # lfs f2, lbl_8053DDD0@sda21(r0)
    stfs 0, 0x2b0(30)
    .4byte 0xC022AE34 # lfs f1, lbl_8053DDD4@sda21(r0)
    stfs 0, 0x2ac(30)
    .4byte 0xC002ADD4 # lfs f0, lbl_8053DD74@sda21(r0)
    stb 3, 0x2ba(30)
    stfs 3, 0x60(30)
    stfs 3, 0x64(30)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 0, 0x230(30)
    .4byte 0x48000050 # b .L_8017EAA0
L_8017EA54:
    .4byte 0x388D83C8 # li r4, lbl_80539F88@sda21
    li 3, 0x1e
    lbz 4, 0x4(4)
    li 0, 0x1b
    .4byte 0xC002AE34 # lfs f0, lbl_8053DDD4@sda21(r0)
    stb 4, 0x2bb(30)
    sth 31, 0x94(30)
    stw 5, 0x118(30)
    stw 3, 0x234(30)
    stb 5, 0x2ba(30)
    stfs 0, 0x60(30)
    stfs 0, 0x64(30)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    stfs 0, 0x80(30)
    stfs 0, 0x84(30)
    stfs 2, 0x88(30)
    stfs 2, 0x8c(30)
    stw 0, 0x230(30)
L_8017EAA0:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8017EAB4:
    lwz 4, 0xf4(3)
    li 0, 0x1
    ori 4, 4, 0x1
    stw 4, 0xf4(3)
    stw 0, 0x24(3)
    blr

fn_8017EACC:
    stb 4, 0xbc(3)
    stb 5, 0xbd(3)
    stb 6, 0xbe(3)
    blr

fn_8017EADC:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr

fn_8017EAF8:
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x8(4)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    blr

fn_8017EB0C:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_8017EB1C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8017EB3C
    li 0, 0x1
    stb 0, 0x284(3)
    stfs 1, 0x28c(3)
L_8017EB3C:
    li 3, 0x0
    blr

fn_8017EB44:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x0
    lwz 6, 0x24(4)
    lbz 0, 0x7f5(6)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8017EB8C
    li 4, 0x1
    li 0, 0x4
    stb 4, 0x7f4(6)
    lfs 0, 0x0(3)
    stw 0, 0x7f8(6)
    lfs 1, 0x4(3)
    stfs 0, 0x7fc(6)
    lfs 0, 0x8(3)
    stfs 1, 0x800(6)
    stfs 0, 0x804(6)
    stb 5, 0x7f6(6)
    mr 5, 4
L_8017EB8C:
    clrlwi 3, 5, 24
    blr

fn_8017EB94:
    stwu 1, -0x30(1)
    mflr 0
    lfs 2, 0x4(3)
    stw 0, 0x34(1)
    addi 4, 1, 0x8
    lfs 1, 0x0(3)
    stw 31, 0x2c(1)
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    stw 30, 0x28(1)
    li 30, 0x0
    stw 29, 0x24(1)
    mr 29, 3
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 31, 0x24(5)
    stfs 1, 0x8(1)
    mr 3, 31
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8017EC18
    lfs 2, 0xc(29)
    mr 3, 31
    lfs 1, 0x8(29)
    addi 4, 1, 0x14
    .4byte 0xC002AD88 # lfs f0, lbl_8053DD28@sda21(r0)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    bl fn_8030C2A8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8017EC18
    li 30, 0x1
L_8017EC18:
    lwz 0, 0x34(1)
    mr 3, 30
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8017EC38:
    lwz 5, 0x0(4)
    lwz 0, 0x4(4)
    stw 5, 0x0(3)
    lwz 5, 0x8(4)
    stw 0, 0x4(3)
    lwz 0, 0xc(4)
    stw 5, 0x8(3)
    stw 0, 0xc(3)
    blr

fn_8017EC5C:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    stfs 4, 0xc(3)
    blr

fn_8017EC70:
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 5, 0x0
    lwz 4, 0x24(4)
    lbz 0, 0x840(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8017ECB8
    li 5, 0x1
    lfs 3, 0x0(3)
    stb 5, 0x840(4)
    lfs 2, 0x4(3)
    stfs 3, 0x84c(4)
    .4byte 0xC002AE28 # lfs f0, lbl_8053DDC8@sda21(r0)
    stfs 3, 0x844(4)
    stfs 2, 0x850(4)
    stfs 2, 0x848(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
L_8017ECB8:
    clrlwi 3, 5, 24
    blr

fn_8017ECC0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    lwz 3, 0x24(3)
    lbz 0, 0x179(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8017ECE0
    li 4, 0x1
    stb 4, 0x178(3)
L_8017ECE0:
    clrlwi 3, 4, 24
    blr

fn_8017ECE8:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    blr

fn_8017ECF4:
    stb 4, 0x0(3)
    stb 5, 0x1(3)
    stb 6, 0x2(3)
    stb 7, 0x3(3)
    blr

fn_8017ED08:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    blr

fn_8017ED1C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C11A8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C11A8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017ED6C
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
L_8017ED6C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EDA4
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
L_8017EDA4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EDDC
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
L_8017EDDC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EE14
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
L_8017EE14:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EE4C
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
L_8017EE4C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EE84
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
L_8017EE84:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EEBC
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
L_8017EEBC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EEF4
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
L_8017EEF4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8017EF2C
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
L_8017EF2C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017EF40:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x4
    li 5, 0x0
    stw 0, 0x14(1)
    addi 4, 4, 0x38
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F0E34
    mr 3, 31
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    lwz 12, 0x0(31)
    li 4, 0x2
    .4byte 0xC042AE3C # lfs f2, lbl_8053DDDC@sda21(r0)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8017EF98:
    stwu 1, -0x100(1)
    mflr 0
    stw 0, 0x104(1)
    stfd 31, 0xf0(1)
    psq_st 31, 0xf8(1), 0, 0
    stfd 30, 0xe0(1)
    psq_st 30, 0xe8(1), 0, 0
    stfd 29, 0xd0(1)
    psq_st 29, 0xd8(1), 0, 0
    stfd 28, 0xc0(1)
    psq_st 28, 0xc8(1), 0, 0
    stfd 27, 0xb0(1)
    psq_st 27, 0xb8(1), 0, 0
    stfd 26, 0xa0(1)
    psq_st 26, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    stw 29, 0x94(1)
    li 0, -0x1
    lis 4, lbl_804A13E0@ha
    stw 0, 0x5c(1)
    mr 30, 3
    addi 31, 4, lbl_804A13E0@l
    addi 9, 1, 0x4c
    stw 0, 0x60(1)
    li 10, 0x0
    .4byte 0x48000064 # b .L_8017F064
L_8017F004:
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
L_8017F064:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8017F004
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x5c(1)
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    stw 5, 0x60(1)
    stw 5, 0x64(1)
    stb 5, 0x68(1)
    stb 5, 0x69(1)
    stb 5, 0x6a(1)
    stb 4, 0x6b(1)
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
    psq_l 2, 0xc(30), 0, 0
    lfs 1, 0x14(30)
    psq_st 2, 0x10(1), 0, 0
    stfs 0, 0x28(1)
    stfs 0, 0x38(1)
    stfs 0, 0x48(1)
    lwz 0, 0x230(30)
    stfs 1, 0x18(1)
    cmpwi 0, 0x0
    .4byte 0x418209C4 # beq .L_8017FAC4
    cmpwi 0, 0x1
    .4byte 0x418209BC # beq .L_8017FAC4
    cmpwi 0, 0x17
    .4byte 0x418209B4 # beq .L_8017FAC4
    lwz 0, 0x90(30)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_8017F124
    .4byte 0x480009A4 # b .L_8017FAC4
L_8017F124:
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8017F134
    cmplwi 0, 0x3
    .4byte 0x40820210 # bne .L_8017F340
L_8017F134:
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x41820988 # beq .L_8017FAC4
    .4byte 0xC382AE40 # lfs f28, lbl_8053DDE0@sda21(r0)
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0xC122AE44 # lfs f9, lbl_8053DDE4@sda21(r0)
    fmuls 7, 30, 26
    fneg 6, 27
    fmuls 11, 31, 3
    fmuls 2, 29, 27
    fmuls 10, 31, 26
    fmuls 1, 29, 26
    fmuls 0, 29, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 26, 11
    fmuls 3, 29, 30
    fmadds 2, 11, 27, 1
    fmsubs 1, 10, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x1c(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x2c(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x3c(1)
    fmuls 0, 9, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
    lwz 0, 0x90(30)
    cmplwi 0, 0x3
    .4byte 0x408200D8 # bne .L_8017F2F0
    .4byte 0xC382AE48 # lfs f28, lbl_8053DDE8@sda21(r0)
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 30, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0xC142AE4C # lfs f10, lbl_8053DDEC@sda21(r0)
    fmuls 8, 29, 27
    .4byte 0xC0C2AE44 # lfs f6, lbl_8053DDE4@sda21(r0)
    fneg 7, 30
    fmuls 12, 31, 3
    fmuls 2, 26, 30
    fmuls 11, 31, 27
    fmuls 1, 26, 27
    fmuls 0, 26, 3
    fmuls 9, 29, 3
    fmsubs 5, 2, 3, 11
    fmadds 4, 2, 27, 12
    fmuls 3, 26, 29
    fmadds 2, 12, 30, 1
    fmsubs 1, 11, 30, 0
    fmuls 0, 31, 29
    fmuls 9, 10, 9
    fmuls 8, 10, 8
    fmuls 7, 10, 7
    fmuls 5, 6, 5
    stfs 9, 0x1c(1)
    fmuls 4, 6, 4
    fmuls 3, 6, 3
    stfs 8, 0x2c(1)
    fmuls 2, 6, 2
    fmuls 1, 6, 1
    stfs 7, 0x3c(1)
    fmuls 0, 6, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
L_8017F2F0:
    addi 0, 1, 0x1c
    lis 3, lbl_80466E50@ha
    addi 4, 3, lbl_80466E50@l
    stw 0, 0x64(1)
    lis 3, 0x4752
    addi 3, 3, 0x4f43
    bl fn_804032E8
    li 5, -0x2
    li 0, 0x1
    stb 5, 0x69(1)
    fmr 1, 28
    mr 4, 3
    .4byte 0xC042AE50 # lfs f2, lbl_8053DDF0@sda21(r0)
    stb 0, 0x68(1)
    mr 3, 30
    .4byte 0xC062AE38 # lfs f3, lbl_8053DDD8@sda21(r0)
    addi 5, 1, 0x4c
    li 6, -0x1
    bl fn_801EFD34
    .4byte 0x48000788 # b .L_8017FAC4
L_8017F340:
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182016C # beq .L_8017F4C4
    lwz 3, 0x90(30)
    cmplwi 3, 0x8
    .4byte 0x40820054 # bne .L_8017F3B8
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8017F380
    lwz 0, 0x24c(30)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820748 # bne .L_8017FAC4
L_8017F380:
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x26c(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x192
    bl fn_803075AC
    .4byte 0x48000710 # b .L_8017FAC4
L_8017F3B8:
    cmplwi 3, 0x4
    .4byte 0x4182000C # beq .L_8017F3C8
    cmplwi 3, 0x5
    .4byte 0x40820038 # bne .L_8017F3FC
L_8017F3C8:
    .4byte 0x800D8FB0 # lwz r0, lbl_8053AB70@sda21(r0)
    cmpw 0, 3
    .4byte 0x408206F4 # bne .L_8017FAC4
    lwz 6, 0x26c(30)
    addi 5, 30, 0xc
    lwz 3, 0x198(30)
    li 7, 0x0
    lwz 4, 0x4(30)
    addi 6, 6, 0x29
    li 8, 0x0
    li 9, -0x1
    bl fn_80307AC8
    .4byte 0x480006CC # b .L_8017FAC4
L_8017F3FC:
    cmplwi 3, 0xa
    .4byte 0x40820054 # bne .L_8017F454
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8017F41C
    lwz 0, 0x24c(30)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x408206AC # bne .L_8017FAC4
L_8017F41C:
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x26c(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x192
    bl fn_803075AC
    .4byte 0x48000674 # b .L_8017FAC4
L_8017F454:
    cmplwi 3, 0x9
    .4byte 0x4082006C # bne .L_8017F4C4
    lwz 0, 0x250(30)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8017F474
    lwz 0, 0x24c(30)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820654 # bne .L_8017FAC4
L_8017F474:
    li 0, 0x0
    addi 5, 30, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x1
    lwz 6, 0x26c(30)
    lwz 3, 0x198(30)
    lwz 4, 0x4(30)
    addi 6, 6, 0x192
    bl fn_803075AC
    lfs 0, 0x10(1)
    lfs 1, 0x14(1)
    stfs 0, 0xc(30)
    lfs 0, 0x18(1)
    stfs 1, 0x10(30)
    stfs 0, 0x14(30)
    .4byte 0x48000604 # b .L_8017FAC4
L_8017F4C4:
    lwz 0, 0x90(30)
    cmplwi 0, 0x6
    .4byte 0x40820084 # bne .L_8017F550
    li 3, 0x1
    li 0, 0x2
    stb 3, 0x68(1)
    lis 3, lbl_80466E60@ha
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    addi 4, 3, lbl_80466E60@l
    stb 0, 0x69(1)
    addi 0, 1, 0x1c
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    fmr 2, 1
    lfs 3, 0x30c(30)
    mr 3, 30
    addi 6, 1, 0x4c
    li 5, 0xb1
    stfs 3, 0x1c(1)
    li 7, -0x1
    stfs 0, 0x20(1)
    stfs 0, 0x24(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x30(1)
    stfs 0, 0x34(1)
    stfs 0, 0x3c(1)
    stfs 0, 0x40(1)
    stfs 3, 0x44(1)
    lfs 0, 0x310(30)
    fctiwz 0, 0
    stw 0, 0x64(1)
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stb 0, 0x5f(1)
    bl fn_801F06F0
    .4byte 0x48000578 # b .L_8017FAC4
L_8017F550:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    lwz 3, 0x26c(30)
    cmpwi 0, 0x0
    mr 4, 3
    .4byte 0x41810008 # bgt .L_8017F568
    addi 4, 3, 0xe
L_8017F568:
    lwz 0, 0x230(30)
    cmpwi 0, 0x9
    .4byte 0x41820058 # beq .L_8017F5C8
    cmpwi 0, 0xf
    .4byte 0x41820050 # beq .L_8017F5C8
    cmpwi 0, 0xc
    .4byte 0x40820020 # bne .L_8017F5A0
    cmpwi 3, 0xc
    .4byte 0x4082000C # bne .L_8017F594
    li 4, 0x1c
    .4byte 0x48000010 # b .L_8017F5A0
L_8017F594:
    cmpwi 3, 0xd
    .4byte 0x40820008 # bne .L_8017F5A0
    li 4, 0x1d
L_8017F5A0:
    slwi 29, 4, 2
    addi 3, 31, 0x80
    lis 5, 0x4752
    lwzx 4, 3, 29
    addi 3, 5, 0x4f43
    bl fn_804032E8
    addi 4, 31, 0xf8
    lfsx 28, 4, 29
    mr 29, 3
    .4byte 0x48000028 # b .L_8017F5EC
L_8017F5C8:
    slwi 29, 4, 2
    addi 3, 31, 0x170
    lis 5, 0x4752
    lwzx 4, 3, 29
    addi 3, 5, 0x4f43
    bl fn_804032E8
    addi 4, 31, 0x1e0
    lfsx 28, 4, 29
    mr 29, 3
L_8017F5EC:
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 31, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0xC122AE44 # lfs f9, lbl_8053DDE4@sda21(r0)
    fmuls 7, 30, 31
    fneg 6, 27
    fmuls 11, 29, 3
    fmuls 2, 26, 27
    fmuls 10, 29, 31
    fmuls 1, 26, 31
    fmuls 0, 26, 3
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 31, 11
    fmuls 3, 26, 30
    fmadds 2, 11, 27, 1
    fmsubs 1, 10, 27, 0
    fmuls 0, 29, 30
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x1c(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x2c(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x3c(1)
    fmuls 0, 9, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
    lwz 0, 0x98(30)
    cmpwi 0, 0x0
    .4byte 0x408200D4 # bne .L_8017F794
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0xC142AE4C # lfs f10, lbl_8053DDEC@sda21(r0)
    fmuls 8, 31, 27
    .4byte 0xC0C2AE44 # lfs f6, lbl_8053DDE4@sda21(r0)
    fneg 7, 29
    fmuls 12, 30, 3
    fmuls 2, 26, 29
    fmuls 11, 30, 27
    fmuls 1, 26, 27
    fmuls 0, 26, 3
    fmuls 9, 31, 3
    fmsubs 5, 2, 3, 11
    fmadds 4, 2, 27, 12
    fmuls 3, 26, 31
    fmadds 2, 12, 29, 1
    fmsubs 1, 11, 29, 0
    fmuls 0, 30, 31
    fmuls 9, 10, 9
    fmuls 8, 10, 8
    fmuls 7, 10, 7
    fmuls 5, 6, 5
    stfs 9, 0x1c(1)
    fmuls 4, 6, 4
    fmuls 3, 6, 3
    stfs 8, 0x2c(1)
    fmuls 2, 6, 2
    fmuls 1, 6, 1
    stfs 7, 0x3c(1)
    fmuls 0, 6, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
L_8017F794:
    li 6, 0x0
    addi 0, 1, 0x1c
    li 8, 0x64
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    stw 0, 0x64(1)
    li 7, -0x1
    .4byte 0xC002AE54 # lfs f0, lbl_8053DDF4@sda21(r0)
    fmr 3, 1
    stb 6, 0x5c(1)
    li 0, 0x1
    fadds 2, 0, 28
    mr 3, 30
    stb 6, 0x5d(1)
    mr 4, 29
    addi 5, 1, 0x4c
    stb 6, 0x5e(1)
    li 6, -0x1
    stb 8, 0x5f(1)
    stfs 1, 0x14(30)
    stb 7, 0x69(1)
    stb 0, 0x68(1)
    bl fn_801EFD34
    lfs 0, 0x10(1)
    li 0, 0xff
    lfs 1, 0x14(1)
    stfs 0, 0xc(30)
    lfs 0, 0x18(1)
    stfs 1, 0x10(30)
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    stfs 0, 0x14(30)
    stb 0, 0x5c(1)
    stb 0, 0x5d(1)
    stb 0, 0x5e(1)
    stb 0, 0x5f(1)
    bl sin
    frsp 26, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 28, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 29, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    fmuls 2, 26, 27
    .4byte 0xC122AE44 # lfs f9, lbl_8053DDE4@sda21(r0)
    fmuls 10, 29, 28
    cmpwi 0, 0x0
    fmuls 11, 29, 3
    fmuls 1, 26, 28
    fmuls 0, 26, 3
    fmuls 8, 30, 3
    fmuls 7, 30, 28
    fneg 6, 27
    fmsubs 5, 2, 3, 10
    fmadds 4, 2, 28, 11
    fmuls 3, 26, 30
    fmadds 2, 11, 27, 1
    fmsubs 1, 10, 27, 0
    fmuls 0, 29, 30
    fmuls 8, 9, 8
    fmuls 7, 9, 7
    fmuls 6, 9, 6
    fmuls 5, 9, 5
    stfs 8, 0x1c(1)
    fmuls 4, 9, 4
    fmuls 3, 9, 3
    stfs 7, 0x2c(1)
    fmuls 2, 9, 2
    fmuls 1, 9, 1
    stfs 6, 0x3c(1)
    fmuls 0, 9, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
    lwz 3, 0x26c(30)
    mr 4, 3
    .4byte 0x41810008 # bgt .L_8017F8FC
    addi 4, 3, 0xe
L_8017F8FC:
    lwz 0, 0x230(30)
    cmpwi 0, 0x9
    .4byte 0x41820058 # beq .L_8017F95C
    cmpwi 0, 0xf
    .4byte 0x41820050 # beq .L_8017F95C
    cmpwi 0, 0xc
    .4byte 0x40820020 # bne .L_8017F934
    cmpwi 3, 0xc
    .4byte 0x4082000C # bne .L_8017F928
    li 4, 0x1c
    .4byte 0x48000010 # b .L_8017F934
L_8017F928:
    cmpwi 3, 0xd
    .4byte 0x40820008 # bne .L_8017F934
    li 4, 0x1d
L_8017F934:
    slwi 29, 4, 2
    addi 3, 31, 0x80
    lis 5, 0x4752
    lwzx 4, 3, 29
    addi 3, 5, 0x4f43
    bl fn_804032E8
    addi 4, 31, 0xf8
    lfsx 28, 4, 29
    mr 29, 3
    .4byte 0x48000028 # b .L_8017F980
L_8017F95C:
    slwi 29, 4, 2
    addi 3, 31, 0x170
    lis 5, 0x4752
    lwzx 4, 3, 29
    addi 3, 5, 0x4f43
    bl fn_804032E8
    addi 4, 31, 0x1e0
    lfsx 28, 4, 29
    mr 29, 3
L_8017F980:
    li 0, 0x1
    stb 0, 0x69(1)
    lwz 0, 0x230(30)
    cmpwi 0, 0xf
    .4byte 0x41820010 # beq .L_8017F9A0
    li 0, 0x0
    stb 0, 0x6b(1)
    .4byte 0x4800000C # b .L_8017F9A8
L_8017F9A0:
    li 0, 0x0
    stb 0, 0x69(1)
L_8017F9A8:
    lwz 0, 0x98(30)
    cmpwi 0, 0x0
    .4byte 0x408200D4 # bne .L_8017FA84
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 29, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl sin
    frsp 27, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 30, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 31, 1
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    bl cos
    frsp 3, 1
    .4byte 0xC142AE4C # lfs f10, lbl_8053DDEC@sda21(r0)
    fmuls 8, 31, 27
    .4byte 0xC0C2AE44 # lfs f6, lbl_8053DDE4@sda21(r0)
    fneg 7, 29
    fmuls 12, 30, 3
    fmuls 2, 26, 29
    fmuls 11, 30, 27
    fmuls 1, 26, 27
    fmuls 0, 26, 3
    fmuls 9, 31, 3
    fmsubs 5, 2, 3, 11
    fmadds 4, 2, 27, 12
    fmuls 3, 26, 31
    fmadds 2, 12, 29, 1
    fmsubs 1, 11, 29, 0
    fmuls 0, 30, 31
    fmuls 9, 10, 9
    fmuls 8, 10, 8
    fmuls 7, 10, 7
    fmuls 5, 6, 5
    stfs 9, 0x1c(1)
    fmuls 4, 6, 4
    fmuls 3, 6, 3
    stfs 8, 0x2c(1)
    fmuls 2, 6, 2
    fmuls 1, 6, 1
    stfs 7, 0x3c(1)
    fmuls 0, 6, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
L_8017FA84:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    addi 3, 1, 0x1c
    stw 3, 0x64(1)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8017FAA0
    li 0, 0x11
    stw 0, 0x7c(1)
L_8017FAA0:
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    mr 3, 30
    .4byte 0xC002AE54 # lfs f0, lbl_8053DDF4@sda21(r0)
    mr 4, 29
    fmr 3, 1
    addi 5, 1, 0x4c
    fadds 2, 0, 28
    li 6, -0x1
    bl fn_801EFD34
L_8017FAC4:
    psq_l 31, 0xf8(1), 0, 0
    lfd 31, 0xf0(1)
    psq_l 30, 0xe8(1), 0, 0
    lfd 30, 0xe0(1)
    psq_l 29, 0xd8(1), 0, 0
    lfd 29, 0xd0(1)
    psq_l 28, 0xc8(1), 0, 0
    lfd 28, 0xc0(1)
    psq_l 27, 0xb8(1), 0, 0
    lfd 27, 0xb0(1)
    psq_l 26, 0xa8(1), 0, 0
    lfd 26, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 0, 0x104(1)
    lwz 29, 0x94(1)
    mtlr 0
    addi 1, 1, 0x100
    blr

fn_8017FB10:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stmw 25, 0x74(1)
    mr 31, 3
    lis 3, lbl_804A13E0@ha
    addi 29, 3, lbl_804A13E0@l
    addi 3, 1, 0x40
    addi 4, 31, 0x60
    bl fn_801546F4
    lfs 1, 0xc(31)
    addi 3, 1, 0x1c
    lfs 2, 0x10(31)
    bl fn_801826E4
    lwz 3, 0x4(31)
    bl fn_801826A4
    li 4, -0x1
    li 0, 0x2710
    stw 4, 0x10(1)
    mr 30, 3
    stw 4, 0xc(1)
    stw 0, 0x108(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_8017FB98
    bl fn_8017ECC0
L_8017FB98:
    mr 3, 31
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    lwz 12, 0x0(31)
    .4byte 0xC042AE3C # lfs f2, lbl_8053DDDC@sda21(r0)
    lwz 12, 0x2c(12)
    .4byte 0xC062AE58 # lfs f3, lbl_8053DDF8@sda21(r0)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8017FBD8
    bl fn_8017ED08
    lwz 0, 0x188(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8017FBD8
    li 0, 0x1
    .4byte 0x980D8FB4 # stb r0, lbl_8053AB74@sda21(r0)
L_8017FBD8:
    mr 3, 31
    li 4, 0x0
    bl fn_801F3D94
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x418200F0 # beq .L_8017FCDC
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x408200E4 # bne .L_8017FCDC
    lis 4, 0x4842
    lis 5, 0x4e55
    mr 3, 31
    li 6, 0x0
    addi 4, 4, 0x4d42
    addi 5, 5, 0x4c4c
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x418200C0 # beq .L_8017FCDC
    lwz 0, 0x108(31)
    cmpwi 0, 0x2710
    .4byte 0x418200B4 # beq .L_8017FCDC
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x27c
    bl fn_801546BC
    li 3, 0x2710
    li 0, 0x0
    stw 3, 0x108(31)
    stw 0, 0x23c(31)
    lwz 3, 0x318(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8017FC64
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x318(31)
L_8017FC64:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x164
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x33
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0x238(31)
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_8017FCBC
    li 0, 0x12c
    stw 0, 0x238(31)
L_8017FCBC:
    lwz 3, 0x31c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8017FCD4
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x31c(31)
L_8017FCD4:
    li 0, 0x8
    stw 0, 0x230(31)
L_8017FCDC:
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x41820068 # beq .L_8017FD4C
    cmpwi 0, 0xb
    .4byte 0x41820060 # beq .L_8017FD4C
    cmpwi 0, 0xc
    .4byte 0x41820058 # beq .L_8017FD4C
    cmpwi 0, 0x15
    .4byte 0x41820050 # beq .L_8017FD4C
    cmpwi 0, 0xf
    .4byte 0x41820048 # beq .L_8017FD4C
    cmpwi 0, 0x19
    .4byte 0x41820040 # beq .L_8017FD4C
    lfs 1, 0x27c(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AE5C # lfs f2, lbl_8053DDFC@sda21(r0)
    .4byte 0xC062AE44 # lfs f3, lbl_8053DDE4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x280(31)
    addi 3, 31, 0x40
    .4byte 0xC042AE5C # lfs f2, lbl_8053DDFC@sda21(r0)
    .4byte 0xC062AE44 # lfs f3, lbl_8053DDE4@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x308(31)
    addi 3, 31, 0x14
    .4byte 0xC042AE60 # lfs f2, lbl_8053DE00@sda21(r0)
    .4byte 0xC062AE64 # lfs f3, lbl_8053DE04@sda21(r0)
    bl fn_801F71A4
L_8017FD4C:
    addi 3, 31, 0xc
    addi 4, 31, 0x3c
    bl fn_801545F0
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_8017FDC8
    lwz 3, 0x230(31)
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8017FD84
    subi 0, 3, 0x1
    cmplwi 0, 0x5
    .4byte 0x4081000C # ble .L_8017FD84
    cmpwi 3, 0x7
    .4byte 0x40820048 # bne .L_8017FDC8
L_8017FD84:
    lwz 3, 0x318(31)
    cmplwi 3, 0x0
    .4byte 0x40820034 # bne .L_8017FDC0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x165
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x318(31)
    .4byte 0x4800000C # b .L_8017FDC8
L_8017FDC0:
    addi 4, 31, 0xc
    bl fn_80178EB8
L_8017FDC8:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8017FDDC
    cmplwi 0, 0x7
    .4byte 0x40820064 # bne .L_8017FE3C
L_8017FDDC:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810034 # bgt .L_8017FE18
    .4byte 0xC022AE68 # lfs f1, lbl_8053DE08@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC042AE3C # lfs f2, lbl_8053DDDC@sda21(r0)
    .4byte 0xC062AE6C # lfs f3, lbl_8053DE0C@sda21(r0)
    .4byte 0xC082AE70 # lfs f4, lbl_8053DE10@sda21(r0)
    bl fn_80154590
    .4byte 0xC022AE68 # lfs f1, lbl_8053DE08@sda21(r0)
    addi 3, 31, 0x70
    .4byte 0xC042AE3C # lfs f2, lbl_8053DDDC@sda21(r0)
    .4byte 0xC062AE6C # lfs f3, lbl_8053DE0C@sda21(r0)
    .4byte 0xC082AE70 # lfs f4, lbl_8053DE10@sda21(r0)
    bl fn_80154590
L_8017FE18:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0xc
    addi 7, 1, 0x8
    addi 8, 1, 0x10
    li 5, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_801EEC98
L_8017FE3C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x418200A8 # beq .L_8017FEEC
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_8017FEEC
    cmpwi 0, 0x17
    .4byte 0x41820098 # beq .L_8017FEEC
    cmpwi 0, 0x18
    .4byte 0x41820090 # beq .L_8017FEEC
    cmpwi 0, 0x19
    .4byte 0x41820088 # beq .L_8017FEEC
    .4byte 0x880D8FB5 # lbz r0, lbl_8053AB75@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8017FE88
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x48000068 # b .L_8017FEEC
L_8017FE88:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_8017FEEC
    .4byte 0xC022AE74 # lfs f1, lbl_8053DE14@sda21(r0)
    bl fn_8017EB1C
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x41800048 # blt .L_8017FEEC
    lwz 27, 0x4(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x41820020 # beq .L_8017FED4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0x288
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 3, 31, 0x288
    bl fn_8017EB44
    .4byte 0x4800001C # b .L_8017FEEC
L_8017FED4:
    lwz 3, 0x268(31)
    bl fn_8023E724
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    bl fn_8017EC70
    .4byte 0xC022AE74 # lfs f1, lbl_8053DE14@sda21(r0)
    bl fn_8017EB1C
L_8017FEEC:
    lwz 26, 0x270(31)
    cmpwi 26, 0x0
    .4byte 0x418000EC # blt .L_8017FFE0
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x418200D8 # beq .L_8017FFE0
    addi 3, 1, 0x50
    addi 4, 31, 0xc
    bl fn_80182674
    lfs 1, 0x54(1)
    .4byte 0xC002AE78 # lfs f0, lbl_8053DE18@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x54(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8017FF44
    lfs 1, 0x50(1)
    .4byte 0xC002AE7C # lfs f0, lbl_8053DE1C@sda21(r0)
    fsubs 0, 1, 0
    .4byte 0x48000010 # b .L_8017FF50
L_8017FF44:
    lfs 1, 0x50(1)
    .4byte 0xC002AE7C # lfs f0, lbl_8053DE1C@sda21(r0)
    fadds 0, 1, 0
L_8017FF50:
    stfs 0, 0x50(1)
    mr 3, 27
    addi 4, 1, 0x50
    bl fn_80182660
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8017FF78
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x41820010 # beq .L_8017FF84
L_8017FF78:
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x40820010 # bne .L_8017FF90
L_8017FF84:
    li 0, 0x0
    stw 0, 0x254(27)
    .4byte 0x4800000C # b .L_8017FF98
L_8017FF90:
    li 0, 0x1
    stw 0, 0x254(27)
L_8017FF98:
    lwz 0, 0x98(31)
    stw 0, 0x98(27)
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40810038 # ble .L_8017FFE0
    lfs 1, 0x14(31)
    .4byte 0xC002AE80 # lfs f0, lbl_8053DE20@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800028 # bge .L_8017FFE0
    lwz 0, 0x230(31)
    cmpwi 0, 0xa
    .4byte 0x4182001C # beq .L_8017FFE0
    cmpwi 0, 0xc
    .4byte 0x41820014 # beq .L_8017FFE0
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_8017FFE0
    lwz 0, 0x274(27)
    stw 0, 0x274(31)
L_8017FFE0:
    lwz 0, 0x230(31)
    cmplwi 0, 0x19
    .4byte 0x41811B34 # bgt .L_80181B1C
    lis 3, jumptable_804A1684@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A1684@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    lwz 5, 0x4(31)
    addi 4, 4, 0x4f4b
    addi 6, 31, 0xc
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41801AE8 # blt .L_80181B1C
    lfs 0, 0x28c(31)
    li 3, 0x0
    stfs 0, 0x10(31)
    lwz 27, 0x4(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x40820014 # bne .L_80180064
    li 3, 0x0
    bl fn_8023E724
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
L_80180064:
    li 0, 0x0
    stw 0, 0x26c(31)
    stw 0, 0x234(31)
    bl fn_8022ADE4
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0xC022AE84 # lfs f1, lbl_8053DE24@sda21(r0)
    addi 3, 1, 0x30
    .4byte 0xC062AE88 # lfs f3, lbl_8053DE28@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_8017EC5C
    mr 4, 3
    addi 3, 1, 0x40
    bl fn_8017EC38
    lfs 1, 0x288(31)
    addi 3, 1, 0x14
    lfs 2, 0x28c(31)
    bl fn_801826E4
    mr 4, 3
    addi 3, 1, 0x1c
    bl fn_80182690
    addi 3, 1, 0x40
    addi 4, 1, 0x1c
    bl fn_80154558
    addi 3, 1, 0x48
    addi 4, 1, 0x1c
    bl fn_80154558
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801800F4
    lfs 1, 0x0(30)
    .4byte 0xC002AE8C # lfs f0, lbl_8053DE2C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000014 # b .L_80180104
L_801800F4:
    .4byte 0xC022AE8C # lfs f1, lbl_8053DE2C@sda21(r0)
    lfs 0, 0x8(30)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
L_80180104:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x41820088 # beq .L_80180194
    li 26, 0x0
L_80180114:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80180188
    lwz 27, 0x4(31)
    mr 3, 26
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x40820054 # bne .L_80180188
    mr 3, 26
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 26
    lfs 0, 0x288(31)
    fsubs 28, 1, 0
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x28c(31)
    fsubs 0, 1, 0
    fmuls 0, 0, 0
    fmadds 1, 28, 28, 0
    bl fn_80154378
    .4byte 0xC002AE90 # lfs f0, lbl_8053DE30@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80180188
    li 0, 0x1
    stw 0, 0x260(31)
    stw 26, 0x268(31)
    .4byte 0x48000010 # b .L_80180194
L_80180188:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF84 # blt .L_80180114
L_80180194:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40821980 # bne .L_80181B1C
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41821970 # beq .L_80181B1C
    li 26, 0x0
L_801801B4:
    mr 3, 26
    bl fn_80230C6C
    mr 3, 26
    bl fn_8023B6CC
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFE8 # blt .L_801801B4
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48001944 # b .L_80181B1C
    li 0, 0x0
    .4byte 0xC002AE94 # lfs f0, lbl_8053DE34@sda21(r0)
    stw 0, 0x234(31)
    stfs 0, 0x308(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80180204
    .4byte 0xC002AE64 # lfs f0, lbl_8053DE04@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x4800000C # b .L_8018020C
L_80180204:
    .4byte 0xC002AE50 # lfs f0, lbl_8053DDF0@sda21(r0)
    stfs 0, 0x27c(31)
L_8018020C:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40820078 # bne .L_8018028C
    lfs 0, 0x28c(31)
    stfs 0, 0x10(31)
    lwz 27, 0x4(31)
    lwz 3, 0x268(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x40820028 # bne .L_80180258
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80180248
    li 0, 0x0
    stw 0, 0x268(31)
L_80180248:
    lwz 3, 0x268(31)
    bl fn_8023E724
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
L_80180258:
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80180278
    mr 3, 31
    li 4, 0x1
    li 5, 0x0
    bl fn_80181BC8
    .4byte 0x48000058 # b .L_801802CC
L_80180278:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_80181BC8
    .4byte 0x48000044 # b .L_801802CC
L_8018028C:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_801802B4
    bl fn_80154744
    .4byte 0xC002AE98 # lfs f0, lbl_8053DE38@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 0, 0x6c(1)
    stw 0, 0x24c(31)
L_801802B4:
    lwz 3, 0x10(1)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_801802CC
    bl fn_8023E724
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
L_801802CC:
    li 0, 0x1e
    li 4, 0x0
    stw 0, 0x240(31)
    li 3, 0xa
    li 0, 0x3
    stw 4, 0x25c(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x2
    .4byte 0x40820128 # bne .L_8018041C
    lwz 0, 0x25c(31)
    cmpwi 0, 0x5
    .4byte 0x4080011C # bge .L_8018041C
    lfs 1, 0x8(30)
    .4byte 0xC002AE9C # lfs f0, lbl_8053DE3C@sda21(r0)
    lfs 2, 0xc(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800104 # bge .L_8018041C
    .4byte 0xC022AEA0 # lfs f1, lbl_8053DE40@sda21(r0)
    lfs 0, 0x0(30)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x408100F0 # ble .L_8018041C
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200E4 # bne .L_8018041C
    bl fn_80154744
    .4byte 0xC042AE58 # lfs f2, lbl_8053DDF8@sda21(r0)
    .4byte 0xC002AE8C # lfs f0, lbl_8053DE2C@sda21(r0)
    fmadds 28, 2, 1, 0
    bl fn_80154744
    .4byte 0xC082AEA4 # lfs f4, lbl_8053DE44@sda21(r0)
    fmr 3, 28
    .4byte 0xC042AE70 # lfs f2, lbl_8053DE10@sda21(r0)
    addi 3, 1, 0x50
    lfs 0, 0x10(31)
    fnmsubs 2, 4, 1, 2
    lfs 1, 0xc(31)
    fadds 2, 0, 2
    bl fn_80182650
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80180390
    lfs 1, 0x54(1)
    .4byte 0xC002AE48 # lfs f0, lbl_8053DDE8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x54(1)
L_80180390:
    bl SpatialRegistry_GetBase
    lis 4, 0x4f49
    lwz 5, 0x4(31)
    addi 4, 4, 0x5741
    addi 6, 1, 0x50
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 27, 3
    .4byte 0x41800044 # blt .L_801803FC
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x41820030 # beq .L_801803FC
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    addi 3, 1, 0x24
    .4byte 0xC062AE4C # lfs f3, lbl_8053DDEC@sda21(r0)
    fmr 2, 1
    bl fn_80182640
    mr 4, 3
    mr 3, 27
    bl fn_8017EAF8
    lwz 3, 0x25c(31)
    addi 0, 3, 0x1
    stw 0, 0x25c(31)
L_801803FC:
    bl fn_80154744
    .4byte 0xC002AE80 # lfs f0, lbl_8053DE20@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 3, 0x6c(1)
    addi 0, 3, 0xa
    stw 0, 0x240(31)
L_8018041C:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_80180458
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80180448
    mr 3, 31
    li 4, 0x1
    li 5, 0x0
    bl fn_80181BC8
    .4byte 0x48000014 # b .L_80180458
L_80180448:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_80181BC8
L_80180458:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_801804EC
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80180488
    .4byte 0xC022AE8C # lfs f1, lbl_8053DE2C@sda21(r0)
    lfs 0, 0x8(30)
    lfs 2, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x41810024 # bgt .L_801804A8
L_80180488:
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_801804EC
    lfs 1, 0x0(30)
    .4byte 0xC002AE8C # lfs f0, lbl_8053DE2C@sda21(r0)
    lfs 2, 0xc(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800048 # bge .L_801804EC
L_801804A8:
    lwz 3, 0x98(31)
    li 0, 0x2
    xori 3, 3, 0x1
    stw 3, 0x98(31)
    lwz 3, 0x24c(31)
    addi 3, 3, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081001C # ble .L_801804EC
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x27c
    bl fn_801546BC
    li 0, 0x4
    stw 0, 0x230(31)
L_801804EC:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40821628 # bne .L_80181B1C
    li 0, 0x4
    stw 0, 0x234(31)
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0xd
    .4byte 0x40811608 # ble .L_80181B1C
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x26c(31)
    mr 3, 31
    addi 4, 4, 0x30
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480015E8 # b .L_80181B1C
    li 0, 0x0
    stw 0, 0x234(31)
    stw 0, 0x250(31)
    stw 0, 0x26c(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40820038 # bne .L_80180588
    lwz 27, 0x4(31)
    lwz 3, 0x268(31)
    bl fn_8023DE58
    cmpw 27, 3
    .4byte 0x41820010 # beq .L_80180574
    lfs 0, 0x28c(31)
    stfs 0, 0x10(31)
    .4byte 0x48000098 # b .L_80180608
L_80180574:
    lwz 3, 0x268(31)
    bl fn_8023E724
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    .4byte 0x48000084 # b .L_80180608
L_80180588:
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801805B4
    .4byte 0x834D83E4 # lwz r26, lbl_80539FA4@sda21(r0)
    cmpwi 26, 0x0
    .4byte 0x41800034 # blt .L_801805D0
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr 28, 3
    .4byte 0x48000020 # b .L_801805D0
L_801805B4:
    .4byte 0x834D83E0 # lwz r26, lbl_80539FA0@sda21(r0)
    cmpwi 26, 0x0
    .4byte 0x41800014 # blt .L_801805D0
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr 28, 3
L_801805D0:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810020 # bgt .L_801805F8
    lwz 3, 0x10(1)
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_80180608
    bl fn_8023E724
    lfs 0, 0x4(3)
    stfs 0, 0x10(31)
    .4byte 0x48000014 # b .L_80180608
L_801805F8:
    cmplwi 28, 0x0
    .4byte 0x4182000C # beq .L_80180608
    lfs 0, 0x10(28)
    stfs 0, 0x10(31)
L_80180608:
    lfs 1, 0x10(31)
    .4byte 0xC002AEA8 # lfs f0, lbl_8053DE48@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80180640
    .4byte 0xC022AEAC # lfs f1, lbl_8053DE4C@sda21(r0)
    .4byte 0xC002AEB0 # lfs f0, lbl_8053DE50@sda21(r0)
    stfs 1, 0x27c(31)
    lfs 1, 0xc(31)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x4800001C # b .L_80180658
L_80180640:
    .4byte 0xC022AEB4 # lfs f1, lbl_8053DE54@sda21(r0)
    .4byte 0xC002AEB0 # lfs f0, lbl_8053DE50@sda21(r0)
    stfs 1, 0x27c(31)
    lfs 1, 0xc(31)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
L_80180658:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x32
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0xC022AEA8 # lfs f1, lbl_8053DE48@sda21(r0)
    .4byte 0xC002AE44 # lfs f0, lbl_8053DDE4@sda21(r0)
    stfs 1, 0x308(31)
    lfs 2, 0x308(31)
    lfs 1, 0x14(31)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800050 # bge .L_801806E8
    addi 3, 31, 0x27c
    bl fn_801546BC
    lwz 0, 0x31c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_801806DC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x15d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x31c(31)
L_801806DC:
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48001438 # b .L_80181B1C
L_801806E8:
    li 0, 0xc
    stw 0, 0x26c(31)
    .4byte 0x4800142C # b .L_80181B1C
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810028 # bgt .L_80180724
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80180718
    .4byte 0xC002AE64 # lfs f0, lbl_8053DE04@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x48000030 # b .L_80180744
L_80180718:
    .4byte 0xC002AE50 # lfs f0, lbl_8053DDF0@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x48000024 # b .L_80180744
L_80180724:
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_8018073C
    .4byte 0xC002AEB8 # lfs f0, lbl_8053DE58@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x4800000C # b .L_80180744
L_8018073C:
    .4byte 0xC002AEBC # lfs f0, lbl_8053DE5C@sda21(r0)
    stfs 0, 0x27c(31)
L_80180744:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x31
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x28
    li 0, 0x7
    stw 3, 0x23c(31)
    stw 0, 0x230(31)
    lwz 3, 0x31c(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8018077C
    addi 4, 31, 0xc
    bl fn_80178EB8
L_8018077C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_80180810
    .4byte 0xC002AE94 # lfs f0, lbl_8053DE34@sda21(r0)
    stfs 0, 0x308(31)
    lwz 3, 0x31c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801807A8
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x31c(31)
L_801807A8:
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801807C0
    .4byte 0xC002AEAC # lfs f0, lbl_8053DE4C@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x4800000C # b .L_801807C8
L_801807C0:
    .4byte 0xC002AEB4 # lfs f0, lbl_8053DE54@sda21(r0)
    stfs 0, 0x27c(31)
L_801807C8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80180810
    li 0, 0x4
    stw 0, 0x234(31)
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0xd
    .4byte 0x40810020 # ble .L_80180810
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x26c(31)
    mr 3, 31
    addi 4, 4, 0x30
    li 5, 0x0
    bl fn_801F0E34
L_80180810:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_8018082C
    mr 3, 31
    li 4, 0x2
    li 5, 0x1
    bl fn_80181BC8
L_8018082C:
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80180850
    .4byte 0xC022AE8C # lfs f1, lbl_8053DE2C@sda21(r0)
    lfs 0, 0x8(30)
    lfs 2, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x41810024 # bgt .L_80180870
L_80180850:
    cmpwi 0, 0x0
    .4byte 0x418212C8 # beq .L_80181B1C
    lfs 1, 0x0(30)
    .4byte 0xC002AE8C # lfs f0, lbl_8053DE2C@sda21(r0)
    lfs 2, 0xc(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x408012B0 # bge .L_80181B1C
L_80180870:
    lwz 3, 0x31c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80180888
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x31c(31)
L_80180888:
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x27c
    bl fn_801546BC
    li 0, 0x1
    stw 0, 0x24c(31)
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4081005C # ble .L_80180904
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_80180904
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    clrlwi 0, 0, 31
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_80180904
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x27c
    bl fn_801546BC
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48001294 # b .L_80181B94
L_80180904:
    lwz 0, 0x260(31)
    cmpwi 0, 0x1
    .4byte 0x40820034 # bne .L_80180940
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x2
    stw 0, 0x260(31)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 0, 0x1
    .4byte 0x980D8FB5 # stb r0, lbl_8053AB75@sda21(r0)
L_80180940:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480011D4 # b .L_80181B1C
    addi 3, 31, 0x27c
    bl fn_801546BC
    .4byte 0xC002AE80 # lfs f0, lbl_8053DE20@sda21(r0)
    li 3, 0x0
    li 0, 0x9
    stfs 0, 0x44(31)
    stw 3, 0x26c(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    lfs 0, 0x14(31)
    .4byte 0xC042AE38 # lfs f2, lbl_8053DDD8@sda21(r0)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_80180990
    stfs 2, 0x14(31)
    stfs 2, 0x44(31)
    .4byte 0x48000060 # b .L_801809EC
L_80180990:
    lfs 1, 0x44(31)
    .4byte 0xC002AE60 # lfs f0, lbl_8053DE00@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    lfs 0, 0x44(31)
    fcmpo cr0, 0, 2
    .4byte 0x40800044 # bge .L_801809EC
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40810038 # ble .L_801809EC
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801809D0
    .4byte 0xC002AEC0 # lfs f0, lbl_8053DE60@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x4800000C # b .L_801809D8
L_801809D0:
    .4byte 0xC002AEC4 # lfs f0, lbl_8053DE64@sda21(r0)
    stfs 0, 0x27c(31)
L_801809D8:
    lfs 1, 0x27c(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AEC8 # lfs f2, lbl_8053DE68@sda21(r0)
    .4byte 0xC062AE44 # lfs f3, lbl_8053DDE4@sda21(r0)
    bl fn_801F71A4
L_801809EC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4182002C # beq .L_80180A20
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    addi 3, 31, 0x3c
    .4byte 0xC042AEC8 # lfs f2, lbl_8053DE68@sda21(r0)
    .4byte 0xC062AE44 # lfs f3, lbl_8053DDE4@sda21(r0)
    bl fn_801F71A4
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    addi 3, 31, 0x40
    .4byte 0xC042AEC8 # lfs f2, lbl_8053DE68@sda21(r0)
    .4byte 0xC062AE44 # lfs f3, lbl_8053DDE4@sda21(r0)
    bl fn_801F71A4
L_80180A20:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4081007C # ble .L_80180AA4
    lfs 1, 0x3c(31)
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4182006C # beq .L_80180AA4
    lwz 26, 0x274(31)
    cmpwi 26, 0x0
    .4byte 0x41800060 # blt .L_80180AA4
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80180AA4
    lwz 4, 0x98(31)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_80180A74
    lwz 0, 0x90(3)
    cmplwi 0, 0x3
    .4byte 0x41820018 # beq .L_80180A88
L_80180A74:
    cmpwi 4, 0x0
    .4byte 0x4182002C # beq .L_80180AA4
    lwz 0, 0x90(3)
    cmplwi 0, 0x2
    .4byte 0x40820020 # bne .L_80180AA4
L_80180A88:
    li 0, 0x0
    li 4, 0x1
    stw 0, 0x23c(31)
    li 0, 0xa
    sth 4, 0x94(3)
    stw 0, 0x230(31)
    .4byte 0x4800107C # b .L_80181B1C
L_80180AA4:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_80180AF8
    li 0, 0x4
    stw 0, 0x234(31)
    lwz 3, 0x26c(31)
    cmpwi 3, 0xd
    .4byte 0x40800038 # bge .L_80180AF8
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x40820024 # bne .L_80180AF8
    lwz 0, 0x26c(31)
    cmpwi 0, 0xd
    .4byte 0x40820018 # bne .L_80180AF8
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_80180AF8
    li 0, 0x14
    stw 0, 0x238(31)
L_80180AF8:
    lwz 0, 0x26c(31)
    cmpwi 0, 0xd
    .4byte 0x4180101C # blt .L_80181B1C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820084 # bne .L_80180B90
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x27c
    bl fn_801546BC
    li 0, -0x1
    stw 0, 0x24c(31)
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_80180B3C
    li 0, 0x1
    stw 0, 0x24c(31)
L_80180B3C:
    li 0, 0x0
    .4byte 0xC002AE94 # lfs f0, lbl_8053DE34@sda21(r0)
    stw 0, 0x234(31)
    stfs 0, 0x308(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80180B64
    .4byte 0xC002AE64 # lfs f0, lbl_8053DE04@sda21(r0)
    stfs 0, 0x27c(31)
    .4byte 0x4800000C # b .L_80180B6C
L_80180B64:
    .4byte 0xC002AE50 # lfs f0, lbl_8053DDF0@sda21(r0)
    stfs 0, 0x27c(31)
L_80180B6C:
    li 0, 0xc8
    li 4, 0x0
    stw 0, 0x240(31)
    li 3, 0xa
    li 0, 0x3
    stw 4, 0x25c(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000F90 # b .L_80181B1C
L_80180B90:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810F84 # bgt .L_80181B1C
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x41820F74 # beq .L_80181B1C
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x27c
    bl fn_801546BC
    lwz 3, 0x108(31)
    .4byte 0x800D83DC # lwz r0, lbl_80539F9C@sda21(r0)
    subfic 3, 3, 0x2710
    subf. 0, 3, 0
    .4byte 0x900D83DC # stw r0, lbl_80539F9C@sda21(r0)
    .4byte 0x4081006C # ble .L_80180C3C
    li 0, 0x0
    stw 0, 0x23c(31)
    lwz 3, 0x318(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80180BF4
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x318(31)
L_80180BF4:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x164
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x33
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000EE4 # b .L_80181B1C
L_80180C3C:
    li 0, 0xe
    stw 0, 0x230(31)
    .4byte 0x48000ED8 # b .L_80181B1C
    addi 3, 31, 0x27c
    bl fn_801546BC
    addi 3, 31, 0x3c
    bl fn_801546BC
    lwz 3, 0x318(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80180C70
    bl fn_8017EAB4
    li 0, 0x0
    stw 0, 0x318(31)
L_80180C70:
    li 6, 0x0
    lis 4, 0x4
    stw 6, 0x234(31)
    li 0, 0xc
    mr 3, 31
    addi 4, 4, 0x34
    stw 6, 0x24c(31)
    li 5, 0x0
    stw 6, 0x250(31)
    stw 0, 0x26c(31)
    bl fn_801F0E34
    li 0, 0xb
    stw 0, 0x230(31)
    lwz 26, 0x274(31)
    cmpwi 26, 0x0
    .4byte 0x40800010 # bge .L_80180CBC
    li 0, 0xd
    stw 0, 0x230(31)
    .4byte 0x48000E64 # b .L_80181B1C
L_80180CBC:
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x40820010 # bne .L_80180CDC
    li 0, 0xd
    stw 0, 0x230(31)
    .4byte 0x48000E44 # b .L_80181B1C
L_80180CDC:
    lwz 0, 0x98(31)
    addi 3, 1, 0x50
    addi 4, 29, 0xc
    xori 26, 0, 0x1
    bl fn_80182674
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80180D0C
    lfs 1, 0x50(1)
    .4byte 0xC002AECC # lfs f0, lbl_8053DE6C@sda21(r0)
    fadds 5, 1, 0
    .4byte 0x48000010 # b .L_80180D18
L_80180D0C:
    lfs 1, 0x50(1)
    .4byte 0xC002AECC # lfs f0, lbl_8053DE6C@sda21(r0)
    fsubs 5, 1, 0
L_80180D18:
    lfs 4, 0x54(1)
    frsp 1, 5
    .4byte 0xC062AE48 # lfs f3, lbl_8053DDE8@sda21(r0)
    addi 3, 31, 0xc
    lfs 2, 0x58(1)
    .4byte 0xC002AE80 # lfs f0, lbl_8053DE20@sda21(r0)
    fadds 3, 4, 3
    stfs 5, 0x50(1)
    fadds 0, 2, 0
    .4byte 0xC042AE44 # lfs f2, lbl_8053DDE4@sda21(r0)
    stfs 3, 0x54(1)
    .4byte 0xC062AED0 # lfs f3, lbl_8053DE70@sda21(r0)
    stfs 0, 0x58(1)
    bl fn_801F71A4
    lfs 1, 0x54(1)
    addi 3, 31, 0x10
    .4byte 0xC042AE44 # lfs f2, lbl_8053DDE4@sda21(r0)
    .4byte 0xC062AED0 # lfs f3, lbl_8053DE70@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x58(1)
    addi 3, 31, 0x14
    .4byte 0xC042AE44 # lfs f2, lbl_8053DDE4@sda21(r0)
    .4byte 0xC062AED0 # lfs f3, lbl_8053DE70@sda21(r0)
    bl fn_801F71A4
    lfs 2, 0xc(31)
    lfs 1, 0x50(1)
    .4byte 0xC002AED4 # lfs f0, lbl_8053DE74@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800D88 # bge .L_80181B1C
    lfs 2, 0x14(31)
    lfs 1, 0x58(1)
    .4byte 0xC002AE44 # lfs f0, lbl_8053DDE4@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800D68 # bge .L_80181B1C
    addi 3, 1, 0x50
    addi 4, 29, 0xc
    bl fn_80182674
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022AEB8 # lfs f1, lbl_8053DE58@sda21(r0)
    .4byte 0xC042AE38 # lfs f2, lbl_8053DDD8@sda21(r0)
    bl fn_802D79E8
    li 25, 0x0
    lis 28, 0x4752
L_80180DE4:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 28, 0x4f4b
    addi 6, 1, 0x50
    li 7, 0x6
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 27, 3
    .4byte 0x418000BC # blt .L_80180EC4
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x418200A8 # beq .L_80180EC4
    mr 3, 26
    bl fn_801F6874
    mr 27, 3
    bl fn_80154744
    .4byte 0xC042AEDC # lfs f2, lbl_8053DE7C@sda21(r0)
    .4byte 0xC002AED8 # lfs f0, lbl_8053DE78@sda21(r0)
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 0, 0x6c(1)
    add 0, 27, 0
    extsh 27, 0
    mr 3, 27
    bl fn_801544FC
    fmr 29, 1
    mr 3, 27
    bl fn_801544E4
    fmr 28, 1
    bl fn_80154744
    .4byte 0xC042AEE0 # lfs f2, lbl_8053DE80@sda21(r0)
    .4byte 0xC002AED4 # lfs f0, lbl_8053DE74@sda21(r0)
    fmadds 0, 2, 1, 0
    fmuls 0, 29, 0
    stfs 0, 0x5c(1)
    bl fn_80154744
    .4byte 0xC042AEE0 # lfs f2, lbl_8053DE80@sda21(r0)
    .4byte 0xC002AED4 # lfs f0, lbl_8053DE74@sda21(r0)
    fmadds 0, 2, 1, 0
    fmuls 0, 28, 0
    stfs 0, 0x60(1)
    bl fn_80154744
    .4byte 0xC042AE78 # lfs f2, lbl_8053DE18@sda21(r0)
    addi 3, 30, 0x27c
    .4byte 0xC002AED4 # lfs f0, lbl_8053DE74@sda21(r0)
    addi 4, 1, 0x5c
    fmadds 0, 2, 1, 0
    stfs 0, 0x64(1)
    bl fn_80182674
    mr 3, 30
    addi 4, 1, 0x5c
    bl fn_8017EAF8
L_80180EC4:
    addi 25, 25, 0x1
    cmpwi 25, 0x1e
    .4byte 0x4180FF18 # blt .L_80180DE4
    lwz 0, 0x90(29)
    cmplwi 0, 0x2
    .4byte 0x40820084 # bne .L_80180F5C
    li 0, 0x4
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    .4byte 0x900D8FB0 # stw r0, lbl_8053AB70@sda21(r0)
    addi 4, 31, 0xc
    li 5, 0x15e
    li 6, 0x1
    lwz 3, 0x4(31)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x15f
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x160
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80180F5C:
    lwz 0, 0x90(29)
    cmplwi 0, 0x3
    .4byte 0x40820084 # bne .L_80180FE8
    li 0, 0x5
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    .4byte 0x900D8FB0 # stw r0, lbl_8053AB70@sda21(r0)
    addi 4, 31, 0xc
    li 5, 0x161
    li 6, 0x1
    lwz 3, 0x4(31)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x162
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    li 5, 0x163
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80180FE8:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    stw 0, 0x258(31)
    addi 4, 4, 0x1
    bl fn_801F0E34
    li 0, 0xc
    stw 0, 0x230(31)
    .4byte 0x48000B10 # b .L_80181B1C
    lwz 0, 0x258(31)
    .4byte 0x806D83D8 # lwz r3, lbl_80539F98@sda21(r0)
    cmpw 0, 3
    .4byte 0x41820014 # beq .L_80181030
    stw 3, 0x258(31)
    mr 3, 31
    li 4, 0x14
    bl fn_801544D0
L_80181030:
    .4byte 0x800D8FB0 # lwz r0, lbl_8053AB70@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4080004C # bge .L_80181084
    addi 3, 31, 0x3c
    bl fn_801546BC
    addi 3, 31, 0x27c
    bl fn_801546BC
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x26c(31)
    mr 3, 31
    addi 4, 4, 0x39
    li 5, 0x0
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    bl fn_801F0E34
    li 3, 0x0
    li 0, 0xd
    .4byte 0x906D8FB0 # stw r3, lbl_8053AB70@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x48000A9C # b .L_80181B1C
L_80181084:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820A90 # bne .L_80181B1C
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    clrlwi 0, 0, 31
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801810C0
    li 0, 0xc
    stw 0, 0x26c(31)
    .4byte 0x4800000C # b .L_801810C8
L_801810C0:
    li 0, 0xd
    stw 0, 0x26c(31)
L_801810C8:
    li 0, 0x8
    stw 0, 0x234(31)
    .4byte 0x48000A4C # b .L_80181B1C
    .4byte 0xC022AEA0 # lfs f1, lbl_8053DE40@sda21(r0)
    li 4, 0x0
    li 3, 0x4
    .4byte 0xC002AE44 # lfs f0, lbl_8053DDE4@sda21(r0)
    stfs 1, 0x308(31)
    li 0, 0xf
    stw 4, 0x26c(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x24c(31)
    stw 3, 0x234(31)
    stfs 0, 0x314(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820068 # bne .L_80181178
    lwz 0, 0x26c(31)
    cmpwi 0, 0xd
    .4byte 0x4080005C # bge .L_80181178
    li 0, 0x4
    stw 0, 0x234(31)
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x6
    .4byte 0x40820024 # bne .L_80181160
    li 0, 0x118
    mr 3, 31
    stw 0, 0x234(31)
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800001C # b .L_80181178
L_80181160:
    cmpwi 0, 0x7
    .4byte 0x40820014 # bne .L_80181178
    .4byte 0xC022AE38 # lfs f1, lbl_8053DDD8@sda21(r0)
    .4byte 0xC002AEC8 # lfs f0, lbl_8053DE68@sda21(r0)
    stfs 1, 0x308(31)
    stfs 0, 0x314(31)
L_80181178:
    lfs 1, 0x288(31)
    addi 3, 31, 0xc
    lfs 2, 0x314(31)
    .4byte 0xC062AE80 # lfs f3, lbl_8053DE20@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x28c(31)
    addi 3, 31, 0x10
    lfs 2, 0x314(31)
    .4byte 0xC062AE80 # lfs f3, lbl_8053DE20@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x308(31)
    addi 3, 31, 0x14
    lfs 2, 0x314(31)
    .4byte 0xC062AE80 # lfs f3, lbl_8053DE20@sda21(r0)
    bl fn_801F71A4
    .4byte 0x48000968 # b .L_80181B1C
    .4byte 0x880D8FB4 # lbz r0, lbl_8053AB74@sda21(r0)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801811D0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000950 # b .L_80181B1C
L_801811D0:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810044 # bgt .L_8018121C
    .4byte 0xC022AE54 # lfs f1, lbl_8053DDF4@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC062AE78 # lfs f3, lbl_8053DE18@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    .4byte 0xC022AE54 # lfs f1, lbl_8053DDF4@sda21(r0)
    addi 3, 31, 0x70
    .4byte 0xC062AE78 # lfs f3, lbl_8053DE18@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    lis 3, 0x900
    li 0, -0x1
    stw 3, 0xb0(31)
    stw 0, 0x274(31)
L_8018121C:
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_8018124C
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x418108EC # bgt .L_80181B1C
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    .4byte 0x480008D4 # b .L_80181B1C
L_8018124C:
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x408108C8 # ble .L_80181B1C
    lis 4, 0x4752
    mr 3, 31
    addi 4, 4, 0x4f4b
    bl fn_801F2718
    stw 3, 0x274(31)
    lwz 26, 0x274(31)
    cmpwi 26, 0x0
    .4byte 0x418008A8 # blt .L_80181B1C
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820894 # beq .L_80181B1C
    lwz 0, 0x90(3)
    cmplwi 0, 0x2
    .4byte 0x41820888 # beq .L_80181B1C
    cmplwi 0, 0x3
    .4byte 0x41820880 # beq .L_80181B1C
    li 0, -0x1
    stw 0, 0x274(31)
    .4byte 0x48000874 # b .L_80181B1C
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_801812C4
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800085C # b .L_80181B1C
L_801812C4:
    lwz 0, 0x98(31)
    addi 3, 29, 0x0
    lfs 1, 0x288(31)
    slwi 0, 0, 3
    lfsx 0, 3, 0
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x98(31)
    lfs 1, 0x28c(31)
    slwi 0, 0, 3
    add 3, 3, 0
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x806D8FB0 # lwz r3, lbl_8053AB70@sda21(r0)
    lwz 0, 0x90(31)
    cmpw 3, 0
    .4byte 0x40820814 # bne .L_80181B1C
    li 0, 0x3e8
    stw 0, 0x238(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081000C # ble .L_8018132C
    li 0, 0xf0
    stw 0, 0x238(31)
L_8018132C:
    lis 3, 0x904
    addi 0, 3, 0x304
    stw 0, 0xb0(31)
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022AEB8 # lfs f1, lbl_8053DE58@sda21(r0)
    .4byte 0xC042AE38 # lfs f2, lbl_8053DDD8@sda21(r0)
    bl fn_802D79E8
    li 4, 0x0
    li 3, -0x1
    stw 4, 0x26c(31)
    li 0, 0x12
    stw 4, 0x234(31)
    stw 4, 0x24c(31)
    stw 4, 0x254(31)
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x480007A8 # b .L_80181B1C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80181398
    li 3, 0x2
    li 0, 0x14
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000788 # b .L_80181B1C
L_80181398:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_801813E4
    lwz 0, 0x40(29)
    addi 3, 29, 0x20
    stw 0, 0x234(31)
    lwz 4, 0x98(31)
    lwz 0, 0x24c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x26c(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    clrlwi 0, 0, 30
    stw 0, 0x24c(31)
L_801813E4:
    addi 3, 1, 0x40
    addi 4, 31, 0x70
    bl fn_8017EC38
    addi 3, 1, 0x40
    addi 4, 1, 0x1c
    bl fn_80154558
    addi 3, 1, 0x48
    addi 4, 1, 0x1c
    bl fn_80154558
    lis 4, 0x4842
    lis 5, 0x4e55
    mr 3, 31
    li 25, 0x0
    addi 4, 4, 0x4d42
    addi 5, 5, 0x4c4c
    li 6, 0x0
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80181444
    lwz 0, 0x108(31)
    cmpwi 0, 0x2710
    .4byte 0x41820028 # beq .L_80181460
    li 25, 0x1
    .4byte 0x48000020 # b .L_80181460
L_80181444:
    lwz 3, 0x198(31)
    addi 4, 1, 0x40
    addi 5, 1, 0x1c
    bl Saya_ForceState3
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_80181460
    li 25, 0x1
L_80181460:
    clrlwi. 0, 25, 24
    .4byte 0x418206B8 # beq .L_80181B1C
    addi 3, 31, 0x3c
    bl fn_801546BC
    .4byte 0x806D83D8 # lwz r3, lbl_80539F98@sda21(r0)
    li 28, 0x2
    subi 0, 3, 0x1
    .4byte 0x900D83D8 # stw r0, lbl_80539F98@sda21(r0)
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810028 # bgt .L_801814BC
    li 0, 0x0
    lis 4, 0x4
    .4byte 0x900D83D8 # stw r0, lbl_80539F98@sda21(r0)
    mr 3, 31
    addi 4, 4, 0x38
    li 5, 0x0
    li 28, 0x4
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_801814D0
L_801814BC:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x33
    li 5, 0x0
    bl fn_801F0E34
L_801814D0:
    .4byte 0xC3A2AE78 # lfs f29, lbl_8053DE18@sda21(r0)
    addi 27, 29, 0x10
    .4byte 0xC382AEB8 # lfs f28, lbl_8053DE58@sda21(r0)
    li 25, 0x0
    lis 30, 0x4752
    .4byte 0x48000108 # b .L_801815EC
L_801814E8:
    addi 3, 1, 0x50
    addi 4, 31, 0xc
    bl fn_80182674
    lwz 0, 0x98(31)
    lfs 1, 0x50(1)
    slwi 0, 0, 3
    lfsx 0, 27, 0
    fadds 0, 1, 0
    stfs 0, 0x50(1)
    bl fn_80154744
    fnmsubs 2, 29, 1, 28
    lfs 0, 0x50(1)
    lfs 1, 0x54(1)
    fadds 0, 0, 2
    stfs 0, 0x50(1)
    lwz 0, 0x98(31)
    slwi 3, 0, 3
    addi 0, 3, 0x4
    lfsx 0, 27, 0
    fadds 0, 1, 0
    stfs 0, 0x54(1)
    bl fn_80154744
    fnmsubs 1, 29, 1, 28
    lfs 0, 0x54(1)
    fadds 0, 0, 1
    stfs 0, 0x54(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x4f4b
    addi 6, 1, 0x50
    li 7, 0xa
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 26, 3
    .4byte 0x41800074 # blt .L_801815E8
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 26, 3
    .4byte 0x41820060 # beq .L_801815E8
    lwz 3, 0x98(31)
    bl fn_801F6874
    bl fn_80154744
    stfs 1, 0x5c(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_801815B8
    frsp 1, 1
    .4byte 0xC002AE4C # lfs f0, lbl_8053DDEC@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x5c(1)
L_801815B8:
    bl fn_80154744
    .4byte 0xC042AE44 # lfs f2, lbl_8053DDE4@sda21(r0)
    mr 3, 26
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    addi 4, 1, 0x5c
    fadds 1, 2, 1
    stfs 0, 0x64(1)
    fneg 0, 1
    stfs 0, 0x60(1)
    bl fn_8017EAF8
    lwz 0, 0x98(31)
    stw 0, 0x98(26)
L_801815E8:
    addi 25, 25, 0x1
L_801815EC:
    cmpw 25, 28
    .4byte 0x4180FEF8 # blt .L_801814E8
    li 4, 0x0
    li 3, -0x2
    stw 4, 0x26c(31)
    li 0, 0x13
    stw 4, 0x234(31)
    stw 4, 0x24c(31)
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820500 # bne .L_80181B1C
    .4byte 0x800D83F0 # lwz r0, lbl_80539FB0@sda21(r0)
    addi 3, 29, 0x50
    stw 0, 0x234(31)
    lwz 4, 0x98(31)
    lwz 0, 0x24c(31)
    slwi 4, 4, 1
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x26c(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    clrlwi 0, 0, 31
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x408204B4 # bne .L_80181B1C
    .4byte 0x800D83D8 # lwz r0, lbl_80539F98@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x41810074 # bgt .L_801816E8
    li 0, 0x64
    stw 0, 0x234(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x4752
    lwz 5, 0x4(31)
    addi 4, 4, 0x4f4b
    addi 6, 31, 0xc
    li 7, 0x9
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 26, 3
    .4byte 0x41800020 # blt .L_801816C8
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801816C8
    lwz 0, 0x98(31)
    stw 0, 0x98(3)
L_801816C8:
    lwz 4, 0x98(31)
    .4byte 0x386D83E8 # li r3, lbl_80539FA8@sda21
    li 0, 0x14
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x26c(31)
    stw 0, 0x230(31)
    .4byte 0x48000438 # b .L_80181B1C
L_801816E8:
    lwz 0, 0x254(31)
    cmpwi 0, 0x4
    .4byte 0x41800018 # blt .L_80181708
    li 3, 0x2
    li 0, 0x14
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000418 # b .L_80181B1C
L_80181708:
    li 0, 0x12
    stw 0, 0x230(31)
    .4byte 0x4800040C # b .L_80181B1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820124 # bne .L_80181840
    .4byte 0xC3C2AE78 # lfs f30, lbl_8053DE18@sda21(r0)
    addi 29, 29, 0x10
    .4byte 0xC3E2AEB8 # lfs f31, lbl_8053DE58@sda21(r0)
    li 25, 0x0
    .4byte 0xC382AEA8 # lfs f28, lbl_8053DE48@sda21(r0)
    lis 28, 0x4752
    .4byte 0xC3A2AE48 # lfs f29, lbl_8053DDE8@sda21(r0)
L_8018173C:
    addi 3, 1, 0x50
    addi 4, 31, 0xc
    bl fn_80182674
    bl fn_80154744
    fnmsubs 2, 30, 1, 31
    lfs 0, 0x50(1)
    lfs 1, 0x54(1)
    fadds 0, 0, 2
    stfs 0, 0x50(1)
    lwz 0, 0x98(31)
    slwi 3, 0, 3
    addi 0, 3, 0x4
    lfsx 0, 29, 0
    fadds 0, 1, 0
    stfs 0, 0x54(1)
    bl fn_80154744
    fnmsubs 1, 28, 1, 29
    lfs 0, 0x54(1)
    fadds 0, 0, 1
    stfs 0, 0x54(1)
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 28, 0x4f4b
    addi 6, 1, 0x50
    li 7, 0x8
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 26, 3
    .4byte 0x4180006C # blt .L_8018181C
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 26, 3
    .4byte 0x41820058 # beq .L_8018181C
    bl fn_80154744
    .4byte 0xC002AE44 # lfs f0, lbl_8053DDE4@sda21(r0)
    fadds 1, 0, 1
    stfs 1, 0x5c(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_801817F0
    .4byte 0xC002AE4C # lfs f0, lbl_8053DDEC@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x5c(1)
L_801817F0:
    bl fn_80154744
    .4byte 0xC042AEE0 # lfs f2, lbl_8053DE80@sda21(r0)
    mr 3, 26
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    addi 4, 1, 0x5c
    fnmadds 1, 2, 1, 2
    stfs 0, 0x64(1)
    stfs 1, 0x60(1)
    bl fn_8017EAF8
    lwz 0, 0x98(31)
    stw 0, 0x98(26)
L_8018181C:
    addi 25, 25, 0x1
    cmpwi 25, 0x1e
    .4byte 0x4180FF18 # blt .L_8018173C
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022AEB8 # lfs f1, lbl_8053DE58@sda21(r0)
    .4byte 0xC042AE38 # lfs f2, lbl_8053DDD8@sda21(r0)
    bl fn_802D79E8
L_80181840:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408202D4 # bne .L_80181B1C
    lwz 0, 0x98(31)
    .4byte 0xC382AEA0 # lfs f28, lbl_8053DE40@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_80181860
    .4byte 0xC382AEE4 # lfs f28, lbl_8053DE84@sda21(r0)
L_80181860:
    lfs 0, 0x288(31)
    addi 3, 31, 0xc
    .4byte 0xC042AE44 # lfs f2, lbl_8053DDE4@sda21(r0)
    fadds 1, 0, 28
    .4byte 0xC062AE80 # lfs f3, lbl_8053DE20@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x288(31)
    lfs 2, 0xc(31)
    fadds 1, 0, 28
    .4byte 0xC002AE44 # lfs f0, lbl_8053DDE4@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800284 # bge .L_80181B1C
    lwz 3, 0x250(31)
    li 0, 0x11
    .4byte 0x906D8FB0 # stw r3, lbl_8053AB70@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x48000270 # b .L_80181B1C
    lfs 2, 0x44(31)
    .4byte 0xC022AE44 # lfs f1, lbl_8053DDE4@sda21(r0)
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800064 # bge .L_80181930
    stfs 0, 0x14(31)
    .4byte 0xC022AE60 # lfs f1, lbl_8053DE00@sda21(r0)
    lfs 0, 0x3c(31)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 0, 0x40(31)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
    lfs 0, 0x284(31)
    fmuls 0, 1, 0
    stfs 0, 0x44(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80181930
    li 0, 0x1
    stw 0, 0x250(31)
    bl fn_80154744
    .4byte 0xC002AE80 # lfs f0, lbl_8053DE20@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 3, 0x6c(1)
    addi 0, 3, 0xa
    stw 0, 0x238(31)
L_80181930:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80181950
    .4byte 0xC022AEE8 # lfs f1, lbl_8053DE88@sda21(r0)
    addi 3, 31, 0x310
    .4byte 0xC042AE5C # lfs f2, lbl_8053DDFC@sda21(r0)
    .4byte 0xC062AE80 # lfs f3, lbl_8053DE20@sda21(r0)
    bl fn_801F71A4
L_80181950:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x408201C4 # bne .L_80181B1C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480001B8 # b .L_80181B1C
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x418001AC # blt .L_80181B1C
    lfs 0, 0x8(1)
    .4byte 0xC022AE90 # lfs f1, lbl_8053DE30@sda21(r0)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820198 # bne .L_80181B1C
    lfs 0, 0x0(30)
    fsubs 0, 0, 1
    stfs 0, 0xc(31)
    lwz 3, 0x10(1)
    bl fn_8023E724
    lfs 1, 0x4(3)
    li 3, 0x0
    .4byte 0xC002AEB8 # lfs f0, lbl_8053DE58@sda21(r0)
    li 0, 0x18
    stfs 1, 0x10(31)
    stw 3, 0x98(31)
    stfs 0, 0x27c(31)
    stw 0, 0x230(31)
    .4byte 0x48000160 # b .L_80181B1C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80181A08
    li 0, 0x4
    stw 0, 0x234(31)
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0xd
    .4byte 0x40810020 # ble .L_80181A08
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x26c(31)
    mr 3, 31
    addi 4, 4, 0x30
    li 5, 0x0
    bl fn_801F0E34
L_80181A08:
    lfs 1, 0x8(30)
    lfs 0, 0xc(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800108 # bge .L_80181B1C
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000FC # b .L_80181B1C
    lwz 0, 0x90(31)
    cmplwi 0, 0x9
    .4byte 0x40820094 # bne .L_80181AC0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4182004C # beq .L_80181A84
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80181A64
    .4byte 0xC022AECC # lfs f1, lbl_8053DE6C@sda21(r0)
    li 0, 0x16
    lfs 0, 0x288(31)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    stw 0, 0x26c(31)
    .4byte 0x4800001C # b .L_80181A7C
L_80181A64:
    lfs 1, 0x288(31)
    li 0, 0x17
    .4byte 0xC002AECC # lfs f0, lbl_8053DE6C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    stw 0, 0x26c(31)
L_80181A7C:
    li 0, 0x0
    stw 0, 0x24c(31)
L_80181A84:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_80181AC0
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_80181B1C
    .4byte 0xC002AED4 # lfs f0, lbl_8053DE74@sda21(r0)
    stfs 0, 0x3c(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x40820074 # bne .L_80181B1C
    lfs 1, 0x3c(31)
    .4byte 0xC002AE4C # lfs f0, lbl_8053DDEC@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x3c(31)
    .4byte 0x48000060 # b .L_80181B1C
L_80181AC0:
    lfs 1, 0x40(31)
    mr 3, 31
    .4byte 0xC002AEEC # lfs f0, lbl_8053DE8C@sda21(r0)
    li 4, 0x0
    li 5, 0x0
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80181B1C
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80181B14
    li 0, 0x1
    stw 0, 0x250(31)
    bl fn_80154744
    .4byte 0xC002AE44 # lfs f0, lbl_8053DDE4@sda21(r0)
    fadds 0, 0, 1
    fneg 0, 0
    stfs 0, 0x40(31)
    .4byte 0x4800000C # b .L_80181B1C
L_80181B14:
    li 0, 0x0
    stb 0, 0x11c(31)
L_80181B1C:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80181B30
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80181B30:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80181B44
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80181B44:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80181B58
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80181B58:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80181B6C
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80181B6C:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80181B80
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80181B80:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80181B94
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80181B94:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    lmw 25, 0x74(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

fn_80181BC8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 23, 0x1c(1)
    mr 23, 3
    mr 24, 4
    mr 25, 5
    li 27, 0x0
    mr 31, 23
    mr 28, 24
    mr 30, 23
    li 26, 0x0
L_80181BF8:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418203D0 # beq .L_80181FD4
    lwz 29, 0x4(23)
    mr 3, 26
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x408203BC # bne .L_80181FD4
    cmpwi 25, 0x1
    .4byte 0x4182009C # beq .L_80181CBC
    .4byte 0x40800368 # bge .L_80181F8C
    cmpwi 25, 0x0
    .4byte 0x40800008 # bge .L_80181C34
    .4byte 0x4800035C # b .L_80181F8C
L_80181C34:
    mr 3, 26
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(23)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80181C54
    li 28, 0x0
    .4byte 0x48000008 # b .L_80181C58
L_80181C54:
    li 28, 0x1
L_80181C58:
    li 0, 0x0
    mr 3, 26
    stw 0, 0x2f4(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x294(30)
    lfs 0, 0x4(3)
    stfs 0, 0x298(30)
    lfs 0, 0x8(3)
    mr 3, 26
    stfs 0, 0x29c(30)
    bl fn_8023E724
    lfs 1, 0x0(3)
    addi 0, 26, 0x304
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    li 4, 0x0
    stfs 1, 0x2c4(30)
    lfs 1, 0x4(3)
    stfs 1, 0x2c8(30)
    lfs 1, 0x8(3)
    stfs 1, 0x2cc(30)
    stfs 0, 0x29c(30)
    stfs 0, 0x2cc(30)
    stbx 4, 23, 0
    .4byte 0x480002D4 # b .L_80181F8C
L_80181CBC:
    addi 29, 26, 0x304
    lbzx 0, 23, 29
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80181CD0
    addi 28, 24, 0x4
L_80181CD0:
    lwz 0, 0x2f4(31)
    cmpwi 0, 0x4
    .4byte 0x4080000C # bge .L_80181CE4
    li 27, 0x0
    .4byte 0x48000064 # b .L_80181D44
L_80181CE4:
    cmpwi 0, 0x8
    .4byte 0x4080000C # bge .L_80181CF4
    li 27, 0x1
    .4byte 0x48000054 # b .L_80181D44
L_80181CF4:
    cmpwi 0, 0xb
    .4byte 0x4080000C # bge .L_80181D04
    li 27, 0x2
    .4byte 0x48000044 # b .L_80181D44
L_80181D04:
    cmpwi 0, 0xe
    .4byte 0x4080000C # bge .L_80181D14
    li 27, 0x3
    .4byte 0x48000034 # b .L_80181D44
L_80181D14:
    cmpwi 0, 0x11
    .4byte 0x4080000C # bge .L_80181D24
    li 27, 0x4
    .4byte 0x48000024 # b .L_80181D44
L_80181D24:
    cmpwi 0, 0x14
    .4byte 0x4080000C # bge .L_80181D34
    li 27, 0x5
    .4byte 0x48000014 # b .L_80181D44
L_80181D34:
    li 0, 0x14
    li 27, 0x0
    stw 0, 0x2f4(31)
    li 28, 0x3
L_80181D44:
    lfs 1, 0x2c8(30)
    addi 3, 30, 0x298
    .4byte 0xC042AE5C # lfs f2, lbl_8053DDFC@sda21(r0)
    .4byte 0xC062AE44 # lfs f3, lbl_8053DDE4@sda21(r0)
    bl fn_801F71A4
    lbzx 0, 23, 29
    cmplwi 0, 0x0
    .4byte 0x40820220 # bne .L_80181F80
    mr 3, 26
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(23)
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    fsubs 1, 2, 1
    fmuls 4, 1, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80181DD0
    frsqrte 1, 4
    .4byte 0xC862AEF0 # lfd f3, lbl_8053DE90@sda21(r0)
    .4byte 0xC842AEF8 # lfd f2, lbl_8053DE98@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80181E54
L_80181DD0:
    .4byte 0xC802AF00 # lfd f0, lbl_8053DEA0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80181DE8
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80181E54
L_80181DE8:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80181E10
    .4byte 0x40800040 # bge .L_80181E40
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80181E28
    .4byte 0x48000034 # b .L_80181E40
L_80181E10:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80181E20
    li 0, 0x1
    .4byte 0x48000028 # b .L_80181E44
L_80181E20:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80181E44
L_80181E28:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80181E38
    li 0, 0x5
    .4byte 0x48000010 # b .L_80181E44
L_80181E38:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80181E44
L_80181E40:
    li 0, 0x4
L_80181E44:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80181E54
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80181E54:
    .4byte 0xC002AF08 # lfs f0, lbl_8053DEA8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800130 # bge .L_80181F8C
    mr 3, 26
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x28c(23)
    .4byte 0xC002AE38 # lfs f0, lbl_8053DDD8@sda21(r0)
    fsubs 1, 2, 1
    fmuls 4, 1, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80181ECC
    frsqrte 1, 4
    .4byte 0xC862AEF0 # lfd f3, lbl_8053DE90@sda21(r0)
    .4byte 0xC842AEF8 # lfd f2, lbl_8053DE98@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_80181F50
L_80181ECC:
    .4byte 0xC802AF00 # lfd f0, lbl_8053DEA0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80181EE4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80181F50
L_80181EE4:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80181F0C
    .4byte 0x40800040 # bge .L_80181F3C
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80181F24
    .4byte 0x48000034 # b .L_80181F3C
L_80181F0C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80181F1C
    li 0, 0x1
    .4byte 0x48000028 # b .L_80181F40
L_80181F1C:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80181F40
L_80181F24:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80181F34
    li 0, 0x5
    .4byte 0x48000010 # b .L_80181F40
L_80181F34:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80181F40
L_80181F3C:
    li 0, 0x4
L_80181F40:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80181F50
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80181F50:
    .4byte 0xC002AEA0 # lfs f0, lbl_8053DE40@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800034 # bge .L_80181F8C
    mr 3, 26
    bl fn_8023E724
    lfs 1, 0x4(3)
    li 0, 0x1
    .4byte 0xC002AF0C # lfs f0, lbl_8053DEAC@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x2c8(30)
    stbx 0, 23, 29
    .4byte 0x48000010 # b .L_80181F8C
L_80181F80:
    lwz 3, 0x2f4(31)
    addi 0, 3, 0x1
    stw 0, 0x2f4(31)
L_80181F8C:
    cmpwi 25, 0x0
    .4byte 0x41820014 # beq .L_80181FA4
    addi 0, 26, 0x304
    lbzx 0, 23, 0
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_80181FD4
L_80181FA4:
    lis 3, lbl_804A1440@ha
    slwi 0, 28, 2
    addi 4, 3, lbl_804A1440@l
    mr 3, 26
    lwzx 0, 4, 0
    addi 4, 30, 0x294
    li 6, 0xff
    li 7, -0x80
    add 5, 27, 0
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_80181FD4:
    addi 26, 26, 0x1
    addi 30, 30, 0xc
    cmpwi 26, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FC14 # blt .L_80181BF8
    lmw 23, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80181FFC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x41820070 # beq .L_80182090
    lis 3, lbl_804A1630@ha
    addi 0, 3, lbl_804A1630@l
    stw 0, 0x0(28)
    lwz 0, 0x90(28)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8018204C
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    bl fn_8022ADCC
L_8018204C:
    li 30, 0x0
    mr 31, 28
L_80182054:
    lwz 3, 0x318(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80182064
    bl fn_801EE434
L_80182064:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x2
    .4byte 0x4180FFE4 # blt .L_80182054
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_80182090
    mr 3, 28
    bl dtor_80084580
L_80182090:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801820B4:
    stwu 1, -0x30(1)
    mflr 0
    li 5, 0x0
    .4byte 0xC022AE4C # lfs f1, lbl_8053DDEC@sda21(r0)
    stw 0, 0x34(1)
    li 4, 0x1
    .4byte 0xC002AE44 # lfs f0, lbl_8053DDE4@sda21(r0)
    li 8, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    mr 6, 31
    stw 30, 0x28(1)
    mr 7, 31
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lwz 0, 0x90(3)
    li 3, -0x1
    clrlwi 0, 0, 28
    stw 0, 0x90(31)
    li 0, 0x2
    sth 5, 0x94(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 5, 0x24c(31)
    stw 5, 0x250(31)
    stw 5, 0x254(31)
    stw 5, 0x258(31)
    stw 5, 0x25c(31)
    stw 5, 0x260(31)
    stw 5, 0x264(31)
    stw 5, 0x268(31)
    stw 5, 0x234(31)
    stw 5, 0x238(31)
    stw 5, 0x23c(31)
    stw 5, 0x240(31)
    stw 5, 0x244(31)
    stw 5, 0x248(31)
    stb 4, 0x196(31)
    sth 5, 0x278(31)
    stw 3, 0x274(31)
    mtctr 0
L_80182160:
    lfs 0, 0xc(31)
    addi 0, 8, 0x304
    stfs 0, 0x294(6)
    lfs 0, 0x10(31)
    stfs 0, 0x298(6)
    lfs 0, 0x14(31)
    stfs 0, 0x29c(6)
    lfs 0, 0xc(31)
    stfs 0, 0x2c4(6)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(6)
    lfs 0, 0x14(31)
    stfs 0, 0x2cc(6)
    stw 5, 0x2f4(7)
    stbx 5, 31, 0
    addi 0, 8, 0x305
    addi 8, 8, 0x2
    lfs 0, 0xc(31)
    stfs 0, 0x2a0(6)
    lfs 0, 0x10(31)
    stfs 0, 0x2a4(6)
    lfs 0, 0x14(31)
    stfs 0, 0x2a8(6)
    lfs 0, 0xc(31)
    stfs 0, 0x2d0(6)
    lfs 0, 0x10(31)
    stfs 0, 0x2d4(6)
    lfs 0, 0x14(31)
    stfs 0, 0x2d8(6)
    addi 6, 6, 0x18
    stw 5, 0x2f8(7)
    addi 7, 7, 0x8
    stbx 5, 31, 0
    .4byte 0x4200FF7C # bdnz .L_80182160
    li 0, 0x0
    .4byte 0xC042AE38 # lfs f2, lbl_8053DDD8@sda21(r0)
    stw 0, 0x98(31)
    li 3, -0x1
    .4byte 0xC062AE44 # lfs f3, lbl_8053DDE4@sda21(r0)
    stw 0, 0x26c(31)
    .4byte 0xC002AEE8 # lfs f0, lbl_8053DE88@sda21(r0)
    stfs 2, 0x314(31)
    stw 0, 0x318(31)
    stw 0, 0x31c(31)
    stw 3, 0x270(31)
    lfs 1, 0xc(31)
    stfs 1, 0x288(31)
    lfs 1, 0x10(31)
    stfs 1, 0x28c(31)
    lfs 1, 0x14(31)
    stfs 1, 0x290(31)
    stfs 3, 0x30c(31)
    stfs 0, 0x310(31)
    stfs 2, 0x284(31)
    stfs 2, 0x280(31)
    stfs 2, 0x27c(31)
    stfs 2, 0x308(31)
    lwz 5, 0x90(31)
    cmplwi 5, 0xa
    .4byte 0x41810370 # bgt .L_801825BC
    lis 4, jumptable_804A16EC@ha
    slwi 3, 5, 2
    addi 4, 4, jumptable_804A16EC@l
    lwzx 3, 4, 3
    mtctr 3
    bctr
    .4byte 0xC022AE40 # lfs f1, lbl_8053DDE0@sda21(r0)
    .4byte 0xC002AE48 # lfs f0, lbl_8053DDE8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    li 3, 0x0
    li 4, 0x8
    li 0, 0xb4
    .4byte 0x906D8FB0 # stw r3, lbl_8053AB70@sda21(r0)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    .4byte 0x908D83D8 # stw r4, lbl_80539F98@sda21(r0)
    .4byte 0x900D83DC # stw r0, lbl_80539F9C@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081000C # ble .L_801822D8
    li 0, 0x6e
    .4byte 0x900D83DC # stw r0, lbl_80539F9C@sda21(r0)
L_801822D8:
    li 4, 0x0
    lis 3, lbl_80466E74@ha
    .4byte 0x988D8FB4 # stb r4, lbl_8053AB74@sda21(r0)
    li 0, -0x1
    addi 29, 3, lbl_80466E74@l
    li 28, 0x0
    .4byte 0x988D8FB5 # stb r4, lbl_8053AB75@sda21(r0)
    lis 30, 0x601
    stw 0, 0x268(31)
L_801822FC:
    mr 3, 28
    mr 4, 29
    addi 5, 30, 0x7000
    li 6, 0x1
    li 7, 0x0
    bl fn_80304C10
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFE0 # blt .L_801822FC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80466E74@ha
    addi 5, 3, lbl_80466E74@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x7000
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    lis 4, 0x904
    li 3, 0x1
    addi 0, 4, 0x4
    .4byte 0xC002AE94 # lfs f0, lbl_8053DE34@sda21(r0)
    stw 0, 0xb0(31)
    li 0, 0x0
    stw 3, 0x98(31)
    stfs 0, 0x14(31)
    stfs 0, 0x308(31)
    stw 0, 0x230(31)
    .4byte 0x48000290 # b .L_80182620
    lis 3, 0x904
    .4byte 0xC022AE40 # lfs f1, lbl_8053DDE0@sda21(r0)
    addi 3, 3, 0x4
    .4byte 0xC002AE48 # lfs f0, lbl_8053DDE8@sda21(r0)
    stw 3, 0xb0(31)
    li 3, 0x10
    stb 0, 0x1a8(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stw 3, 0x230(31)
    .4byte 0x4800024C # b .L_80182620
    li 0, 0x1
    stw 0, 0x98(31)
    lis 0, 0x500
    li 3, 0x0
    stw 0, 0xb0(31)
    li 0, 0x11
    .4byte 0xC002AF10 # lfs f0, lbl_8053DEB0@sda21(r0)
    stb 3, 0x1a8(31)
    .4byte 0xC042AEA8 # lfs f2, lbl_8053DE48@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC022AF14 # lfs f1, lbl_8053DEB4@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002AEA4 # lfs f0, lbl_8053DE44@sda21(r0)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stw 0, 0x230(31)
    .4byte 0x480001F8 # b .L_80182620
    stb 0, 0x1a8(31)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC042AF18 # lfs f2, lbl_8053DEB8@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0x15
    .4byte 0xC002AEC8 # lfs f0, lbl_8053DE68@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 1, 1, 3
    fmadds 0, 2, 1, 0
    stfs 0, 0x30c(31)
    stw 0, 0x230(31)
    .4byte 0x480001A0 # b .L_80182620
    .4byte 0xC002AE94 # lfs f0, lbl_8053DE34@sda21(r0)
    lis 4, 0x400
    li 3, 0x17
    stfs 0, 0x308(31)
    stb 0, 0x1a8(31)
    stw 4, 0xb0(31)
    stw 3, 0x230(31)
    .4byte 0x48000180 # b .L_80182620
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC022AF1C # lfs f1, lbl_8053DEBC@sda21(r0)
    lwz 5, 0xb4(6)
    li 3, 0x19
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    addi 4, 4, 0x13
    stw 4, 0x26c(31)
    stb 0, 0x1a8(31)
    stw 3, 0x230(31)
    .4byte 0x4800011C # b .L_80182620
    stb 0, 0x1a8(31)
    li 3, 0x14
    li 0, 0x1
    stw 3, 0x234(31)
    stw 0, 0x24c(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_80182534
    li 0, 0x16
    stw 0, 0x26c(31)
    .4byte 0x4800000C # b .L_8018253C
L_80182534:
    li 0, 0x17
    stw 0, 0x26c(31)
L_8018253C:
    lfs 1, 0x10(31)
    li 0, 0x19
    .4byte 0xC002AF20 # lfs f0, lbl_8053DEC0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stw 0, 0x230(31)
    .4byte 0x480000CC # b .L_80182620
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC022AF1C # lfs f1, lbl_8053DEBC@sda21(r0)
    lwz 5, 0xb4(6)
    li 3, 0x19
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    addi 4, 4, 0x10
    stw 4, 0x26c(31)
    stb 0, 0x1a8(31)
    stw 3, 0x230(31)
    .4byte 0x48000068 # b .L_80182620
L_801825BC:
    cmplwi 5, 0x2
    .4byte 0x40820010 # bne .L_801825D0
    lwz 0, 0x198(31)
    .4byte 0x900D83E0 # stw r0, lbl_80539FA0@sda21(r0)
    .4byte 0x48000014 # b .L_801825E0
L_801825D0:
    cmplwi 5, 0x3
    .4byte 0x4082000C # bne .L_801825E0
    lwz 0, 0x198(31)
    .4byte 0x900D83E4 # stw r0, lbl_80539FA4@sda21(r0)
L_801825E0:
    li 0, 0x0
    lis 3, 0x400
    stb 0, 0x1a8(31)
    li 0, 0x16
    .4byte 0xC022AE40 # lfs f1, lbl_8053DDE0@sda21(r0)
    stw 3, 0xb0(31)
    .4byte 0xC002AE48 # lfs f0, lbl_8053DDE8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stw 0, 0x230(31)
L_80182620:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80182640:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_80182650:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_80182660:
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x8(4)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    blr

fn_80182674:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr

fn_80182690:
    lfs 1, 0x0(4)
    lfs 0, 0x4(4)
    stfs 1, 0x0(3)
    stfs 0, 0x4(3)
    blr

fn_801826A4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801826CC
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801826D0
L_801826CC:
    addi 3, 3, 0xdc
L_801826D0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801826E4:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    blr

fn_801826F0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C12A8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C12A8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80182740
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
L_80182740:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80182778
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
L_80182778:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801827B0
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
L_801827B0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801827E8
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
L_801827E8:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80182820
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
L_80182820:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80182858
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
L_80182858:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80182890
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
L_80182890:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801828C8
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
L_801828C8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80182900
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
L_80182900:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8017A228
    .4byte fn_8017AF1C
    .4byte fn_8017BDF8
    .4byte fn_8017ED1C
    .4byte fn_801826F0

