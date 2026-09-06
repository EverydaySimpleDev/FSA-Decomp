# Dispatch-cross-check singleton: 1 real FourCC actor vtable body
# (dtor fn_80255F4C, ctor fn_80256A50 already landed) plus 7 helper
# functions, landed as ONE byte-contiguous 9-function, 4,088-byte
# Track-A bundle (0x80255F4C-0x80256F44). Found+verified via
# spanwalk.py (stopping exactly at the pre-existing extab_80256f44.s
# boundary) and resolvefiles.py (1 fused-dump function). .ctors
# placement (0x8045C1C8-0x8045C1CC) found by direct whole-table scan,
# independently re-verified after an earlier same-session
# automated-scan false-positive was caught (see
# project_fsa_dispatch_crosscheck_discovery.md).

.section extab, "a"
.balign 4
.global etb_8000B7CC
etb_8000B7CC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B7CC, 8

.global etb_8000B7D4
etb_8000B7D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B7D4, 8

.global etb_8000B7DC
etb_8000B7DC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000B7DC, 8

.global etb_8000B7E4
etb_8000B7E4:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000B7E4, 8

.global etb_8000B7EC
etb_8000B7EC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000B7EC, 8

.global etb_8000B7F4
etb_8000B7F4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000B7F4, 8

.global etb_8000B7FC
etb_8000B7FC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000B7FC, 8

.global etb_8000B804
etb_8000B804:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B804, 8

.section extabindex, "a"
.balign 4
.global eti_80019D74
eti_80019D74:
    .4byte fn_80255F4C
    .4byte 0x00000060
    .4byte etb_8000B7CC
.size eti_80019D74, 12

.global eti_80019D80
eti_80019D80:
    .4byte fn_80255FAC
    .4byte 0x00000224
    .4byte etb_8000B7D4
.size eti_80019D80, 12

.global eti_80019D8C
eti_80019D8C:
    .4byte fn_802561D0
    .4byte 0x00000240
    .4byte etb_8000B7DC
.size eti_80019D8C, 12

.global eti_80019D98
eti_80019D98:
    .4byte fn_802565BC
    .4byte 0x000002CC
    .4byte etb_8000B7E4
.size eti_80019D98, 12

.global eti_80019DA4
eti_80019DA4:
    .4byte fn_80256888
    .4byte 0x000001C8
    .4byte etb_8000B7EC
.size eti_80019DA4, 12

.global eti_80019DB0
eti_80019DB0:
    .4byte fn_80256A50
    .4byte 0x00000224
    .4byte etb_8000B7F4
.size eti_80019DB0, 12

.global eti_80019DBC
eti_80019DBC:
    .4byte fn_80256C74
    .4byte 0x00000158
    .4byte etb_8000B7FC
.size eti_80019DBC, 12

.global eti_80019DC8
eti_80019DC8:
    .4byte fn_80256DCC
    .4byte 0x00000178
    .4byte etb_8000B804
.size eti_80019DC8, 12

.text
.balign 4
.global fn_80255F4C
.global fn_80255FAC
.global fn_802561D0
.global fn_80256410
.global fn_802565BC
.global fn_80256888
.global fn_80256A50
.global fn_80256C74
.global fn_80256DCC

fn_80255F4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80255F90
    lis 5, lbl_804A6F6C@ha
    li 4, 0x0
    addi 0, 5, lbl_804A6F6C@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80255F90
    mr 3, 30
    bl dtor_80084580
L_80255F90:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80255FAC:
    stwu 1, -0x80(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 9, 1, 0x38
    stw 31, 0x7c(1)
    mr 31, 3
    stw 0, 0x48(1)
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_80256038
L_80255FD8:
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
L_80256038:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80255FD8
    .4byte 0xC022D100 # lfs f1, lbl_805400A0@sda21(r0)
    li 9, 0x0
    li 8, 0x1
    li 10, -0x1
    li 7, 0x3
    li 5, 0x2
    stw 10, 0x48(1)
    lis 3, lbl_8052EBC0@ha
    addi 6, 3, lbl_8052EBC0@l
    .4byte 0xC0E2D104 # lfs f7, lbl_805400A4@sda21(r0)
    stw 9, 0x4c(1)
    lis 3, lbl_804A6F48@ha
    addi 11, 6, 0x4
    lfs 12, 0x0(6)
    lfs 3, 0x4(6)
    addi 4, 1, 0x8
    stw 9, 0x50(1)
    fmuls 0, 12, 12
    fmuls 10, 3, 3
    li 0, -0x2
    stb 9, 0x54(1)
    fmuls 8, 3, 12
    addi 3, 3, lbl_804A6F48@l
    stb 9, 0x55(1)
    stb 9, 0x56(1)
    stb 8, 0x57(1)
    stb 8, 0x58(1)
    stb 9, 0x59(1)
    stb 9, 0x5a(1)
    stb 9, 0x5b(1)
    stb 9, 0x5c(1)
    stb 9, 0x5d(1)
    stb 8, 0x5e(1)
    stw 7, 0x60(1)
    stb 8, 0x64(1)
    stb 9, 0x65(1)
    stb 9, 0x66(1)
    stw 10, 0x68(1)
    stw 9, 0x6c(1)
    stw 5, 0x70(1)
    stfs 1, 0x14(1)
    stfs 1, 0x24(1)
    stfs 1, 0x34(1)
    lha 5, 0x238(31)
    rlwinm 5, 5, 30, 18, 28
    stw 4, 0x50(1)
    lfsx 11, 6, 5
    lfsx 1, 11, 5
    fneg 4, 11
    stb 8, 0x59(1)
    fmuls 2, 1, 3
    fmuls 9, 12, 11
    stb 0, 0x55(1)
    fmuls 1, 1, 12
    fmuls 6, 7, 2
    fmsubs 3, 9, 3, 8
    fmuls 5, 7, 1
    fmadds 1, 10, 11, 0
    stfs 6, 0x8(1)
    fmadds 2, 9, 12, 10
    fmsubs 0, 8, 11, 8
    stfs 5, 0x18(1)
    fmuls 4, 7, 4
    fmuls 3, 7, 3
    stfs 5, 0x2c(1)
    fmuls 2, 7, 2
    fmuls 1, 7, 1
    stfs 4, 0x28(1)
    fmuls 0, 7, 0
    stfs 3, 0xc(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x10(1)
    stfs 0, 0x20(1)
    stfs 6, 0x30(1)
    lwz 4, 0x90(31)
    lwz 0, 0x4(31)
    clrlslwi 4, 4, 25, 2
    cmpwi 0, 0x8
    lwzx 5, 3, 4
    .4byte 0x4080003C # bge .L_802561BC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x5449
    addi 4, 4, 0x4d47
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0x38
    bl fn_802F745C
L_802561BC:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_802561D0:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    mr 30, 3
    lwz 0, 0x90(3)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_80256210
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80256218
L_80256210:
    mr 3, 30
    bl fn_80256410
L_80256218:
    li 31, 0x0
L_8025621C:
    mr 3, 30
    mr 4, 31
    bl fn_802565BC
    clrlwi. 0, 3, 24
    .4byte 0x418201C0 # beq .L_802563EC
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820024 # beq .L_8025625C
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820194 # bne .L_802563EC
L_8025625C:
    lfs 0, 0x14(30)
    addi 4, 1, 0x44
    psq_l 1, 0xc(30), 0, 0
    mr 3, 31
    stfs 0, 0x28(1)
    psq_l 3, 0x18(30), 0, 0
    psq_l 2, 0x28(1), 1, 0
    psq_l 0, 0x20(30), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x20(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x20(1), 0, 0
    psq_st 0, 0x28(1), 1, 0
    lfs 0, 0x28(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 0, 0x4c(1)
    bl fn_8023DF68
    lwz 0, 0x90(30)
    clrlwi 0, 0, 25
    cmpwi 0, 0x6
    .4byte 0x40800140 # bge .L_802563EC
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x14(30)
    lis 4, lbl_80534C00@ha
    psq_l 1, 0xc(30), 0, 0
    addi 0, 4, lbl_80534C00@l
    stfs 0, 0x10(1)
    psq_l 3, 0x0(3), 0, 0
    psq_l 0, 0x8(3), 1, 0
    mr 3, 0
    psq_l 2, 0x10(1), 1, 0
    ps_sub 4, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 1, 2, 0
    .4byte 0xC002D100 # lfs f0, lbl_805400A0@sda21(r0)
    psq_st 4, 0x2c(1), 0, 0
    psq_st 1, 0x10(1), 1, 0
    lfs 1, 0x30(1)
    lfs 3, 0x10(1)
    psq_st 4, 0x8(1), 0, 0
    lfs 2, 0x2c(1)
    stfs 3, 0x34(1)
    psq_st 4, 0x50(1), 0, 0
    stfs 3, 0x58(1)
    stfs 0, 0x34(1)
    bl fn_80093340
    .4byte 0xC002D108 # lfs f0, lbl_805400A8@sda21(r0)
    lfs 2, 0x2c(1)
    lfs 4, 0x30(1)
    fmuls 3, 1, 0
    fmuls 2, 2, 2
    .4byte 0xC002D100 # lfs f0, lbl_805400A0@sda21(r0)
    fmuls 1, 4, 4
    fctiwz 3, 3
    fadds 5, 2, 1
    stfd 3, 0x68(1)
    fcmpo cr0, 5, 0
    lwz 3, 0x6c(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80256354
    .4byte 0x48000028 # b .L_80256378
L_80256354:
    frsqrte 3, 5
    .4byte 0xC042D10C # lfs f2, lbl_805400AC@sda21(r0)
    .4byte 0xC002D110 # lfs f0, lbl_805400B0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 0, 2, 0
    fmuls 5, 5, 0
L_80256378:
    subi 0, 3, 0x40
    lis 3, lbl_8052EBC0@ha
    rlwinm 5, 0, 30, 18, 28
    .4byte 0xC002D100 # lfs f0, lbl_805400A0@sda21(r0)
    addi 0, 3, lbl_8052EBC0@l
    psq_l 3, 0x34(1), 1, 0
    add 5, 0, 5
    stfs 0, 0x1c(1)
    lfs 1, 0x0(5)
    addi 4, 1, 0x5c
    lfs 2, 0x4(5)
    mr 3, 31
    fmuls 1, 5, 1
    psq_l 4, 0x1c(1), 1, 0
    fmuls 2, 5, 2
    psq_l 5, 0x2c(1), 0, 0
    ps_sub 3, 4, 3
    stfs 0, 0x40(1)
    stfs 2, 0x38(1)
    stfs 1, 0x3c(1)
    psq_l 0, 0x38(1), 0, 0
    psq_st 3, 0x1c(1), 1, 0
    ps_sub 1, 0, 5
    psq_st 0, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0x14(1), 0, 0
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x64(1)
    bl fn_8023DFF4
L_802563EC:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE28 # blt .L_8025621C
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80256410:
    lwz 4, 0x234(3)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_80256428
    subi 0, 4, 0x1
    stw 0, 0x234(3)
    blr
L_80256428:
    lwz 5, 0x90(3)
    clrlwi 0, 5, 25
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_80256440
    cmpwi 0, 0x7
    .4byte 0x40820084 # bne .L_802564C0
L_80256440:
    lwz 4, 0x230(3)
    rlwinm 0, 5, 20, 22, 26
    cmplw 4, 0
    .4byte 0x40800010 # bge .L_8025645C
    addi 0, 4, 0x1
    stw 0, 0x230(3)
    .4byte 0x48000068 # b .L_802564C0
L_8025645C:
    li 0, 0x3c
    li 4, 0x0
    stw 0, 0x234(3)
    stw 4, 0x230(3)
    lwz 0, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_802564AC
    .4byte 0x40800014 # bge .L_8025648C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80256498
    .4byte 0x40800020 # bge .L_802564A4
    .4byte 0x48000038 # b .L_802564C0
L_8025648C:
    cmpwi 0, 0x4
    .4byte 0x40800030 # bge .L_802564C0
    .4byte 0x48000024 # b .L_802564B8
L_80256498:
    li 0, 0x1
    stw 0, 0x98(3)
    .4byte 0x48000020 # b .L_802564C0
L_802564A4:
    stw 4, 0x98(3)
    .4byte 0x48000018 # b .L_802564C0
L_802564AC:
    li 0, 0x3
    stw 0, 0x98(3)
    .4byte 0x4800000C # b .L_802564C0
L_802564B8:
    li 0, 0x2
    stw 0, 0x98(3)
L_802564C0:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    cmpwi 0, 0x6
    .4byte 0x40800010 # bge .L_802564DC
    lha 4, 0x238(3)
    addi 0, 4, 0x40
    sth 0, 0x238(3)
L_802564DC:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    cmpwi 0, 0x6
    .4byte 0x40820034 # bne .L_8025651C
    lwz 0, 0x98(3)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8025650C
    lfs 1, 0xc(3)
    .4byte 0xC002D10C # lfs f0, lbl_805400AC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(3)
    .4byte 0x48000014 # b .L_8025651C
L_8025650C:
    lfs 1, 0xc(3)
    .4byte 0xC002D10C # lfs f0, lbl_805400AC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(3)
L_8025651C:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    cmpwi 0, 0x7
    .4byte 0x40820034 # bne .L_8025655C
    lwz 0, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8025654C
    lfs 1, 0x10(3)
    .4byte 0xC002D10C # lfs f0, lbl_805400AC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(3)
    .4byte 0x48000014 # b .L_8025655C
L_8025654C:
    lfs 1, 0x10(3)
    .4byte 0xC002D10C # lfs f0, lbl_805400AC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(3)
L_8025655C:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    cmpwi 0, 0x8
    bnelr
    lha 6, 0x23a(3)
    lis 4, lbl_8052EBC0@ha
    addi 5, 4, lbl_8052EBC0@l
    .4byte 0xC042D114 # lfs f2, lbl_805400B4@sda21(r0)
    addi 0, 6, 0x40
    sth 0, 0x23a(3)
    lha 0, 0x23a(3)
    lfs 0, 0x24(3)
    rlwinm 0, 0, 30, 18, 28
    add 4, 5, 0
    lfs 1, 0x4(4)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(3)
    lha 0, 0x23a(3)
    lfs 0, 0x28(3)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 5, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(3)
    blr

fn_802565BC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 27, 3
    mr 28, 4
    lwz 29, 0x4(3)
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x4182000C # beq .L_80256600
    li 3, 0x0
    .4byte 0x48000268 # b .L_80256864
L_80256600:
    lis 4, lbl_80534C00@ha
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3C2D100 # lfs f30, lbl_805400A0@sda21(r0)
    addi 30, 4, lbl_80534C00@l
    .4byte 0xC3E2D108 # lfs f31, lbl_805400A8@sda21(r0)
    addi 31, 3, lbl_8052EBC0@l
    li 29, 0x0
L_8025661C:
    mr 3, 28
    mr 4, 29
    addi 5, 1, 0x8
    bl fn_8022E088
    psq_l 1, 0x8(1), 0, 0
    mr 3, 30
    psq_l 0, 0xc(27), 0, 0
    psq_l 2, 0x10(1), 1, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x8(1), 0, 0
    psq_l 0, 0x14(27), 1, 0
    lfs 1, 0xc(1)
    ps_sub 0, 2, 0
    lfs 2, 0x8(1)
    psq_st 0, 0x10(1), 1, 0
    stfs 30, 0x10(1)
    bl fn_80093340
    lfs 3, 0x8(1)
    fmuls 2, 1, 31
    lfs 0, 0xc(1)
    fmuls 1, 3, 3
    lha 0, 0x238(27)
    fmuls 0, 0, 0
    fctiwz 2, 2
    fadds 4, 1, 0
    stfd 2, 0x18(1)
    lwz 3, 0x1c(1)
    fcmpo cr0, 4, 30
    subf 0, 0, 3
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025669C
    .4byte 0x48000028 # b .L_802566C0
L_8025669C:
    frsqrte 3, 4
    .4byte 0xC042D10C # lfs f2, lbl_805400AC@sda21(r0)
    .4byte 0xC002D110 # lfs f0, lbl_805400B0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_802566C0:
    rlwinm 0, 0, 30, 18, 28
    stfs 30, 0x10(1)
    add 3, 31, 0
    lfs 1, 0x4(3)
    li 0, 0x0
    lfs 0, 0x0(3)
    fmuls 2, 4, 1
    fmuls 1, 4, 0
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    lfs 0, 0x60(27)
    lfs 3, 0x64(27)
    fcmpo cr0, 2, 0
    lfs 0, 0x68(27)
    lfs 4, 0x6c(27)
    cror eq, gt, eq
    .4byte 0x40820024 # bne .L_80256724
    fcmpo cr0, 1, 3
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_80256724
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_80256724
    fcmpo cr0, 1, 4
    .4byte 0x40800008 # bge .L_80256724
    li 0, 0x1
L_80256724:
    clrlwi. 0, 0, 24
    .4byte 0x4182012C # beq .L_80256854
    lfs 0, 0x8(1)
    li 0, 0x0
    lwz 3, 0x23c(27)
    fctiwz 0, 0
    lfs 1, 0xc(1)
    lhz 5, 0x4(3)
    fctiwz 1, 1
    lhz 4, 0x2(3)
    stfd 0, 0x20(1)
    srwi 6, 5, 1
    srwi 4, 4, 1
    lwz 5, 0x24(1)
    stfd 1, 0x18(1)
    add. 9, 5, 4
    lwz 4, 0x1c(1)
    add 8, 4, 6
    .4byte 0x418000D0 # blt .L_8025683C
    lhz 5, 0x2(3)
    cmpw 9, 5
    .4byte 0x408000C4 # bge .L_8025683C
    cmpwi 8, 0x0
    .4byte 0x418000BC # blt .L_8025683C
    lhz 4, 0x4(3)
    cmpw 8, 4
    .4byte 0x408000B0 # bge .L_8025683C
    lbz 4, 0x0(3)
    cmpwi 4, 0x8
    .4byte 0x41820008 # beq .L_802567A0
    .4byte 0x480000A0 # b .L_8025683C
L_802567A0:
    lbz 4, 0x9(3)
    cmpwi 4, 0x2
    .4byte 0x41820014 # beq .L_802567BC
    .4byte 0x40800090 # bge .L_8025683C
    cmpwi 4, 0x1
    .4byte 0x40800084 # bge .L_80256838
    .4byte 0x48000084 # b .L_8025683C
L_802567BC:
    srawi 7, 9, 3
    addi 5, 5, 0x7
    srawi 6, 8, 3
    clrlwi. 4, 9, 31
    rlwinm 5, 5, 0, 16, 28
    clrlslwi 8, 8, 29, 3
    srawi 5, 5, 3
    clrlwi 9, 9, 29
    mullw 5, 6, 5
    lwz 6, 0x1c(3)
    add 4, 7, 5
    slwi 4, 4, 6
    add 4, 8, 4
    add 4, 9, 4
    srawi 4, 4, 1
    add 4, 6, 4
    lbzx 4, 3, 4
    extrwi 5, 4, 3, 25
    .4byte 0x41820008 # beq .L_8025680C
    clrlwi 5, 4, 29
L_8025680C:
    lwz 4, 0xc(3)
    clrlslwi 5, 5, 24, 1
    add 4, 4, 5
    lhzx 4, 3, 4
    rlwinm. 3, 4, 0, 16, 16
    .4byte 0x40820010 # bne .L_80256830
    rlwinm 3, 4, 0, 16, 19
    cmpwi 3, 0x7000
    .4byte 0x40820010 # bne .L_8025683C
L_80256830:
    li 0, 0x1
    .4byte 0x48000008 # b .L_8025683C
L_80256838:
    li 0, 0x1
L_8025683C:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80256854
    mr 3, 28
    bl fn_8022DF48
    li 3, 0x1
    .4byte 0x48000014 # b .L_80256864
L_80256854:
    addi 29, 29, 0x1
    cmpwi 29, 0x8
    .4byte 0x4180FDC0 # blt .L_8025661C
    li 3, 0x0
L_80256864:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80256888:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    extrwi. 0, 0, 5, 10
    .4byte 0x40820010 # bne .L_802568B4
    lwz 0, 0x90(31)
    oris 0, 0, 0x2
    stw 0, 0x90(31)
L_802568B4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, lbl_804A6F48@ha
    lwz 0, 0x90(31)
    lis 6, 0x3f3f
    lwz 3, 0xa4(3)
    addi 5, 4, lbl_804A6F48@l
    clrlslwi 0, 0, 25, 2
    addi 4, 6, 0x3f3f
    lwz 12, 0x0(3)
    lwzx 5, 5, 0
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    stw 3, 0x23c(31)
    lis 7, 0x4330
    .4byte 0xC862D118 # lfd f3, lbl_805400B8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x23c(31)
    stw 7, 0x18(1)
    lhz 4, 0x2(3)
    lhz 8, 0x4(3)
    neg 5, 4
    extrwi 6, 4, 15, 16
    srwi 3, 5, 31
    neg 4, 8
    add 3, 3, 5
    xoris 6, 6, 0x8000
    srawi 5, 3, 1
    srwi 3, 4, 31
    xoris 5, 5, 0x8000
    extrwi 8, 8, 15, 16
    add 3, 3, 4
    stw 5, 0x1c(1)
    srawi 3, 3, 1
    xoris 4, 8, 0x8000
    xoris 3, 3, 0x8000
    lfd 0, 0x18(1)
    stw 3, 0x24(1)
    fsubs 1, 0, 3
    stw 7, 0x20(1)
    lfd 0, 0x20(1)
    stw 6, 0x14(1)
    fsubs 0, 0, 3
    stw 7, 0x10(1)
    lfd 2, 0x10(1)
    stfs 1, 0x60(31)
    fsubs 1, 2, 3
    stfs 0, 0x64(31)
    stw 4, 0xc(1)
    stw 7, 0x8(1)
    lfd 0, 0x8(1)
    stfs 1, 0x68(31)
    fsubs 0, 0, 3
    stfs 0, 0x6c(31)
    stw 0, 0x108(31)
    stw 0, 0x230(31)
    sth 0, 0x238(31)
    sth 0, 0x23a(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    cmpwi 0, 0x8
    .4byte 0x40820044 # bne .L_802569EC
    lha 0, 0x23a(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042D114 # lfs f2, lbl_805400B4@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x24(31)
    add 3, 4, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lha 0, 0x23a(31)
    lfs 0, 0x28(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 4, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
L_802569EC:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_80256A04
    cmpwi 0, 0x7
    .4byte 0x40820010 # bne .L_80256A10
L_80256A04:
    li 0, 0x3c
    stw 0, 0x234(31)
    .4byte 0x4800000C # b .L_80256A18
L_80256A10:
    li 0, 0x0
    stw 0, 0x234(31)
L_80256A18:
    lwz 0, 0x90(31)
    clrlwi 0, 0, 25
    cmpwi 0, 0x7
    .4byte 0x40820010 # bne .L_80256A34
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_80256A3C
L_80256A34:
    li 0, 0x0
    stw 0, 0x98(31)
L_80256A3C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80256A50:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CF668@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CF668@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256AA0
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
L_80256AA0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256AD8
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
L_80256AD8:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256B10
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
L_80256B10:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256B48
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
L_80256B48:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256B80
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
L_80256B80:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256BB8
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
L_80256BB8:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256BF0
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
L_80256BF0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256C28
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
L_80256C28:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80256C60
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
L_80256C60:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80256C74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl GetBusyLocked
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80256CAC
    li 3, 0x0
    .4byte 0x48000108 # b .L_80256DB0
L_80256CAC:
    mr 3, 29
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80256CC4
    li 3, 0x0
    .4byte 0x480000F0 # b .L_80256DB0
L_80256CC4:
    mr 3, 29
    bl fn_80270A8C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80256CDC
    li 3, 0x0
    .4byte 0x480000D8 # b .L_80256DB0
L_80256CDC:
    lbz 0, 0xba4(29)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80256CF0
    li 3, 0x0
    .4byte 0x480000C4 # b .L_80256DB0
L_80256CF0:
    mr 3, 29
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80256D08
    li 3, 0x0
    .4byte 0x480000AC # b .L_80256DB0
L_80256D08:
    lwz 0, 0x3b4(29)
    cmpw 31, 0
    .4byte 0x4182000C # beq .L_80256D1C
    li 3, 0x0
    .4byte 0x48000098 # b .L_80256DB0
L_80256D1C:
    lfs 0, 0x5dc(29)
    lfs 4, 0x0(30)
    lfs 1, 0x5e0(29)
    fcmpo cr0, 0, 4
    lfs 2, 0x5e4(29)
    lfs 3, 0x5e8(29)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80256D40
    fmr 0, 4
L_80256D40:
    lfs 4, 0x4(30)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80256D54
    fmr 1, 4
L_80256D54:
    lfs 4, 0x8(30)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80256D68
    fmr 2, 4
L_80256D68:
    lfs 4, 0xc(30)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80256D7C
    fmr 3, 4
L_80256D7C:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80256D9C
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80256D9C
    li 0, 0x1
L_80256D9C:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80256DAC
    li 3, 0x1
    .4byte 0x48000008 # b .L_80256DB0
L_80256DAC:
    li 3, 0x0
L_80256DB0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80256DCC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl GetBusyLocked
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80256E0C
    li 3, 0x0
    .4byte 0x4800011C # b .L_80256F24
L_80256E0C:
    mr 3, 28
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80256E24
    li 3, 0x0
    .4byte 0x48000104 # b .L_80256F24
L_80256E24:
    lbz 0, 0xb9e(28)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80256E38
    li 3, 0x0
    .4byte 0x480000F0 # b .L_80256F24
L_80256E38:
    mr 3, 28
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80256E50
    li 3, 0x0
    .4byte 0x480000D8 # b .L_80256F24
L_80256E50:
    lwz 0, 0x3b4(28)
    cmpw 30, 0
    .4byte 0x4182000C # beq .L_80256E64
    li 3, 0x0
    .4byte 0x480000C4 # b .L_80256F24
L_80256E64:
    lfs 6, 0x5cc(28)
    lfs 4, 0x0(29)
    lfs 5, 0x5d4(28)
    fmr 0, 6
    fcmpo cr0, 6, 4
    lfs 1, 0x5d0(28)
    fmr 2, 5
    lfs 3, 0x5d8(28)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80256E90
    fmr 0, 4
L_80256E90:
    lfs 4, 0x4(29)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80256EA4
    fmr 1, 4
L_80256EA4:
    lfs 4, 0x8(29)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80256EB8
    fmr 2, 4
L_80256EB8:
    lfs 4, 0xc(29)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80256ECC
    fmr 3, 4
L_80256ECC:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80256EEC
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80256EEC
    li 0, 0x1
L_80256EEC:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_80256F20
    fsubs 0, 6, 5
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    li 3, 0x1
    fmadds 0, 1, 0, 5
    stfs 0, 0x0(31)
    lfs 2, 0x5d8(28)
    lfs 0, 0x5d0(28)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(31)
    .4byte 0x48000008 # b .L_80256F24
L_80256F20:
    li 3, 0x0
L_80256F24:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80256A50

