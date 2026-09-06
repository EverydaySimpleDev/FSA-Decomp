# Dispatch-cross-check singleton: 1 real FourCC actor vtable body
# (dtor fn_801643C4, ctor fn_80165238 already landed) plus 4 helper
# functions, landed as ONE byte-contiguous 6-function, 4,248-byte
# Track-A bundle (0x801643C4-0x8016545C). Found+verified via
# spanwalk.py and resolvefiles.py. .ctors placement
# (0x8045BF5C-0x8045BF60) found by direct whole-table scan,
# independently re-verified after an earlier same-session
# automated-scan false-positive was caught (see
# project_fsa_dispatch_crosscheck_discovery.md).

.section extab, "a"
.balign 4
.global etb_8000710C
etb_8000710C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000710C, 8

.global etb_80007114
etb_80007114:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80007114, 8

.global etb_8000711C
etb_8000711C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000711C, 8

.global etb_80007124
etb_80007124:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80007124, 8

.global etb_8000712C
etb_8000712C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000712C, 8

.global etb_80007134
etb_80007134:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007134, 8

.section extabindex, "a"
.balign 4
.global eti_80013CC0
eti_80013CC0:
    .4byte fn_801643C4
    .4byte 0x00000060
    .4byte etb_8000710C
.size eti_80013CC0, 12

.global eti_80013CCC
eti_80013CCC:
    .4byte fn_80164424
    .4byte 0x0000021C
    .4byte etb_80007114
.size eti_80013CCC, 12

.global eti_80013CD8
eti_80013CD8:
    .4byte fn_80164640
    .4byte 0x000001F4
    .4byte etb_8000711C
.size eti_80013CD8, 12

.global eti_80013CE4
eti_80013CE4:
    .4byte fn_80164834
    .4byte 0x00000878
    .4byte etb_80007124
.size eti_80013CE4, 12

.global eti_80013CF0
eti_80013CF0:
    .4byte fn_801650AC
    .4byte 0x0000018C
    .4byte etb_8000712C
.size eti_80013CF0, 12

.global eti_80013CFC
eti_80013CFC:
    .4byte fn_80165238
    .4byte 0x00000224
    .4byte etb_80007134
.size eti_80013CFC, 12

.text
.balign 4
.global fn_801643C4
.global fn_80164424
.global fn_80164640
.global fn_80164834
.global fn_801650AC
.global fn_80165238

fn_801643C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80164408
    lis 5, lbl_804A04D8@ha
    li 4, 0x0
    addi 0, 5, lbl_804A04D8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80164408
    mr 3, 30
    bl dtor_80084580
L_80164408:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80164424:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lwz 31, 0x198(3)
    bl fn_8020D58C
    mr 8, 3
    lis 3, lbl_804662A8@ha
    lbz 0, 0x1(8)
    addi 7, 3, lbl_804662A8@l
    mr 4, 29
    mr 5, 30
    mulli 3, 0, 0x784
    mr 6, 31
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80164494
    li 3, 0x1
    .4byte 0x48000190 # b .L_80164620
L_80164494:
    lwz 3, 0x24c(28)
    cmpwi 3, 0x0
    .4byte 0x40820178 # bne .L_80164614
    mr 3, 30
    mr 4, 29
    bl fn_8022461C
    clrlwi. 3, 3, 16
    .4byte 0x4182016C # beq .L_8016461C
    cmpwi 3, 0x4
    .4byte 0x41820164 # beq .L_8016461C
    cmpwi 3, 0x5
    .4byte 0x4182015C # beq .L_8016461C
    cmpwi 3, 0x6
    .4byte 0x41820154 # beq .L_8016461C
    cmpwi 3, 0x7
    .4byte 0x4182014C # beq .L_8016461C
    cmpwi 3, 0x2
    .4byte 0x41820144 # beq .L_8016461C
    cmpwi 3, 0x3
    .4byte 0x4182013C # beq .L_8016461C
    cmpwi 3, 0x50
    .4byte 0x41820134 # beq .L_8016461C
    cmpwi 3, 0xe
    .4byte 0x4182012C # beq .L_8016461C
    cmpwi 3, 0xc
    .4byte 0x41820124 # beq .L_8016461C
    cmpwi 3, 0x27
    .4byte 0x4182011C # beq .L_8016461C
    cmpwi 3, 0x28
    .4byte 0x41820114 # beq .L_8016461C
    cmpwi 3, 0x29
    .4byte 0x4182010C # beq .L_8016461C
    cmpwi 3, 0x2a
    .4byte 0x41820104 # beq .L_8016461C
    cmpwi 3, 0x2b
    .4byte 0x418200FC # beq .L_8016461C
    cmpwi 3, 0x2c
    .4byte 0x418200F4 # beq .L_8016461C
    cmpwi 3, 0x2d
    .4byte 0x418200EC # beq .L_8016461C
    cmpwi 3, 0x2e
    .4byte 0x418200E4 # beq .L_8016461C
    cmpwi 3, 0x2f
    .4byte 0x418200DC # beq .L_8016461C
    cmpwi 3, 0x20
    .4byte 0x418200D4 # beq .L_8016461C
    cmpwi 3, 0xd
    .4byte 0x418200CC # beq .L_8016461C
    cmpwi 3, 0x39
    .4byte 0x418200C4 # beq .L_8016461C
    cmpwi 3, 0x3a
    .4byte 0x418200BC # beq .L_8016461C
    cmpwi 3, 0x3b
    .4byte 0x418200B4 # beq .L_8016461C
    cmpwi 3, 0x4c
    .4byte 0x418200AC # beq .L_8016461C
    cmpwi 3, 0x4d
    .4byte 0x418200A4 # beq .L_8016461C
    cmpwi 3, 0x4e
    .4byte 0x4182009C # beq .L_8016461C
    cmpwi 3, 0x4f
    .4byte 0x41820094 # beq .L_8016461C
    cmpwi 3, 0x24
    .4byte 0x4182008C # beq .L_8016461C
    subi 0, 3, 0x10
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_801645A8
    cmpwi 3, 0x13
    .4byte 0x40820014 # bne .L_801645B8
L_801645A8:
    li 0, 0x78
    li 3, 0x0
    stw 0, 0x24c(28)
    .4byte 0x4800006C # b .L_80164620
L_801645B8:
    cmpwi 3, 0x25
    .4byte 0x40820018 # bne .L_801645D4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000050 # b .L_80164620
L_801645D4:
    cmpwi 3, 0x26
    .4byte 0x4082001C # bne .L_801645F4
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000030 # b .L_80164620
L_801645F4:
    cmpwi 3, 0x22
    .4byte 0x40820014 # bne .L_8016460C
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8016461C
L_8016460C:
    li 3, 0x1
    .4byte 0x48000010 # b .L_80164620
L_80164614:
    subi 0, 3, 0x1
    stw 0, 0x24c(28)
L_8016461C:
    li 3, 0x0
L_80164620:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80164640:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801646D0
L_80164670:
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
L_801646D0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80164670
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    li 31, 0x0
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lwz 0, 0x254(30)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80164758
    li 31, 0x1
L_80164758:
    lwz 0, 0x258(30)
    cmpwi 0, 0x0
    .4byte 0x4082008C # bne .L_801647EC
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_801647BC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804662BC@ha
    addi 5, 3, lbl_804662BC@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A7D8 # lfs f1, lbl_8053D778@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x8
    fmr 2, 1
    li 6, 0x154
    lwz 3, 0x20(4)
    addi 4, 30, 0xc
    bl fn_802F86CC
L_801647BC:
    .4byte 0xC022A7D8 # lfs f1, lbl_8053D778@sda21(r0)
    lis 3, lbl_804662BC@ha
    addi 4, 3, lbl_804662BC@l
    mr 8, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x8
    li 5, 0x154
    li 7, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000034 # b .L_8016481C
L_801647EC:
    .4byte 0xC022A7D8 # lfs f1, lbl_8053D778@sda21(r0)
    lis 3, lbl_804662D0@ha
    lwz 5, 0x260(30)
    addi 4, 3, lbl_804662D0@l
    fmr 2, 1
    mr 3, 30
    mr 8, 31
    addi 5, 5, 0x17a
    addi 6, 1, 0x8
    li 7, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_8016481C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80164834:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    mr 31, 3
    li 0, 0x3e8
    psq_l 1, 0x3c(31), 0, 0
    li 30, 0x0
    lfs 0, 0x44(3)
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(3)
    psq_st 1, 0x5c(1), 0, 0
    stfs 0, 0x64(1)
    psq_st 3, 0x50(1), 0, 0
    stfs 2, 0x58(1)
    stw 0, 0x108(3)
L_80164880:
    mr 3, 31
    mr 7, 30
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x418000E4 # blt .L_80164980
    psq_l 0, 0xc(31), 0, 0
    addi 4, 1, 0x14
    lfs 1, 0x14(31)
    psq_st 0, 0x44(1), 0, 0
    lfs 3, 0x60(31)
    lfs 2, 0x44(1)
    lfs 5, 0x68(31)
    lfs 4, 0x64(31)
    fadds 3, 3, 2
    lfs 0, 0x48(1)
    fadds 5, 5, 2
    lfs 6, 0x6c(31)
    fadds 4, 4, 0
    .4byte 0xC042A7DC # lfs f2, lbl_8053D77C@sda21(r0)
    fadds 6, 6, 0
    stfs 1, 0x4c(1)
    fsubs 1, 3, 5
    fsubs 0, 4, 6
    fmadds 1, 2, 1, 5
    fmadds 0, 2, 0, 6
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    bl fn_80237948
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80164968
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A7D8 # lfs f1, lbl_8053D778@sda21(r0)
    li 5, 0x117
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A7D8 # lfs f1, lbl_8053D778@sda21(r0)
    li 5, 0x118
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_80164968:
    lfs 0, 0x5c(1)
    lfs 1, 0x60(1)
    stfs 0, 0x3c(31)
    lfs 0, 0x64(1)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
L_80164980:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FEF8 # blt .L_80164880
    lfs 1, 0x268(31)
    addi 3, 31, 0x3c
    .4byte 0xC042A7E0 # lfs f2, lbl_8053D780@sda21(r0)
    .4byte 0xC062A7D8 # lfs f3, lbl_8053D778@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x26c(31)
    addi 3, 31, 0x40
    .4byte 0xC042A7E0 # lfs f2, lbl_8053D780@sda21(r0)
    .4byte 0xC062A7D8 # lfs f3, lbl_8053D778@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2B7C
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820030 # beq .L_80164A20
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80164A20
    lwz 3, 0x260(31)
    li 0, 0xa
    addi 3, 3, 0x1
    stw 3, 0x260(31)
    lwz 3, 0x260(31)
    clrlwi 3, 3, 30
    stw 3, 0x260(31)
    stw 0, 0x238(31)
L_80164A20:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    li 0, -0x1
    mr 30, 3
    stw 0, 0x10(1)
    mr 3, 31
    addi 6, 1, 0xc
    addi 8, 1, 0x10
    lwz 4, 0x198(31)
    li 5, 0x0
    li 7, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 3, 0x230(31)
    cmpwi 3, 0x2
    .4byte 0x418200EC # beq .L_80164B54
    cmpwi 3, 0x3
    .4byte 0x418200E4 # beq .L_80164B54
    cmpwi 3, 0x0
    .4byte 0x418200DC # beq .L_80164B54
    lwz 0, 0x9c(31)
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80164A98
    cmpwi 3, 0x1
    .4byte 0x408200C8 # bne .L_80164B54
    clrlwi. 0, 30, 24
    .4byte 0x418200C0 # beq .L_80164B54
L_80164A98:
    psq_l 1, 0xc(31), 0, 0
    lis 3, lbl_80466288@ha
    lfs 0, 0x14(31)
    addi 4, 1, 0x38
    addi 5, 3, lbl_80466288@l
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x40(1)
    lfs 3, 0x38(1)
    lwz 0, 0x98(31)
    lfs 1, 0x3c(1)
    slwi 0, 0, 3
    add 3, 5, 0
    lfsx 2, 5, 0
    lfs 0, 0x4(3)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x38(1)
    stfs 0, 0x3c(1)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_80164B2C
    lwz 3, 0x4(31)
    li 5, 0x4a1
    .4byte 0xC022A7D8 # lfs f1, lbl_8053D778@sda21(r0)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x14
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x4
    stw 0, 0x23c(31)
L_80164B2C:
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    li 0, 0x2
    stfs 0, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x4800053C # b .L_8016508C
L_80164B54:
    cmpwi 3, 0x2
    .4byte 0x41820224 # beq .L_80164D7C
    .4byte 0x40800010 # bge .L_80164B6C
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_80164B78
    .4byte 0x480004E8 # b .L_80165050
L_80164B6C:
    cmpwi 3, 0x4
    .4byte 0x408004E0 # bge .L_80165050
    .4byte 0x48000390 # b .L_80164F04
L_80164B78:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408204D0 # bne .L_80165050
    lwz 3, 0x10(1)
    cmpwi 3, 0x0
    .4byte 0x418004C4 # blt .L_80165050
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x408000A0 # bge .L_80164C38
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40820094 # bne .L_80164C38
    lwz 3, 0x10(1)
    bl fn_8023DE58
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_80164BC8
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_80164BCC
L_80164BC8:
    addi 6, 3, 0xdc
L_80164BCC:
    lwz 3, 0x0(6)
    lwz 5, 0x4(6)
    lwz 4, 0x8(6)
    lwz 0, 0xc(6)
    stw 3, 0x28(1)
    lwz 3, 0x10(1)
    stw 5, 0x2c(1)
    stw 4, 0x30(1)
    stw 0, 0x34(1)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0x28(1)
    lfs 0, 0xc(31)
    fsubs 1, 2, 1
    lwz 3, 0x10(1)
    fsubs 0, 0, 1
    fabs 0, 0
    frsp 31, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x2c(1)
    lfs 0, 0x10(31)
    fsubs 1, 2, 1
    fsubs 0, 0, 1
    fabs 0, 0
    frsp 1, 0
    .4byte 0x4800003C # b .L_80164C70
L_80164C38:
    lwz 3, 0x10(1)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    lwz 3, 0x10(1)
    fsubs 0, 0, 1
    fabs 0, 0
    frsp 31, 0
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fsubs 0, 0, 1
    fabs 0, 0
    frsp 1, 0
L_80164C70:
    lbz 0, 0x264(31)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_80164CAC
    lwz 3, 0xc(1)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x40820010 # bne .L_80164C94
    .4byte 0xC002A7E8 # lfs f0, lbl_8053D788@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_80164CA8
L_80164C94:
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80164CAC
    .4byte 0xC002A7E8 # lfs f0, lbl_8053D788@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800008 # bge .L_80164CAC
L_80164CA8:
    stw 3, 0x98(31)
L_80164CAC:
    lwz 3, 0x98(31)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x40820010 # bne .L_80164CC4
    .4byte 0xC002A7E8 # lfs f0, lbl_8053D788@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_80164CD8
L_80164CC4:
    cmpwi 0, 0x0
    .4byte 0x41820388 # beq .L_80165050
    .4byte 0xC002A7E8 # lfs f0, lbl_8053D788@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x4080037C # bge .L_80165050
L_80164CD8:
    cmpwi 3, 0x2
    .4byte 0x41820054 # beq .L_80164D30
    .4byte 0x40800014 # bge .L_80164CF4
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80164D00
    .4byte 0x4080002C # bge .L_80164D18
    .4byte 0x4800006C # b .L_80164D5C
L_80164CF4:
    cmpwi 3, 0x4
    .4byte 0x40800064 # bge .L_80164D5C
    .4byte 0x4800004C # b .L_80164D48
L_80164D00:
    .4byte 0xC022A7EC # lfs f1, lbl_8053D78C@sda21(r0)
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    .4byte 0x48000048 # b .L_80164D5C
L_80164D18:
    .4byte 0xC022A7F0 # lfs f1, lbl_8053D790@sda21(r0)
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    .4byte 0x48000030 # b .L_80164D5C
L_80164D30:
    .4byte 0xC022A7E4 # lfs f1, lbl_8053D784@sda21(r0)
    .4byte 0xC002A7EC # lfs f0, lbl_8053D78C@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 1, 0x270(31)
    .4byte 0x48000018 # b .L_80164D5C
L_80164D48:
    .4byte 0xC022A7E4 # lfs f1, lbl_8053D784@sda21(r0)
    .4byte 0xC002A7F0 # lfs f0, lbl_8053D790@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 1, 0x270(31)
L_80164D5C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x13
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480002D8 # b .L_80165050
L_80164D7C:
    clrlwi. 0, 30, 24
    .4byte 0x408202D0 # bne .L_80165050
    lfs 1, 0x274(31)
    addi 3, 31, 0xc
    .4byte 0xC042A7E0 # lfs f2, lbl_8053D780@sda21(r0)
    .4byte 0xC062A7DC # lfs f3, lbl_8053D77C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x278(31)
    addi 3, 31, 0x10
    .4byte 0xC042A7E0 # lfs f2, lbl_8053D780@sda21(r0)
    .4byte 0xC062A7DC # lfs f3, lbl_8053D77C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x10(31)
    lfs 0, 0x278(31)
    lfs 2, 0xc(31)
    fsubs 3, 1, 0
    lfs 1, 0x274(31)
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_80164E20
    frsqrte 1, 4
    .4byte 0xC862A7F8 # lfd f3, lbl_8053D798@sda21(r0)
    .4byte 0xC842A800 # lfd f2, lbl_8053D7A0@sda21(r0)
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
    .4byte 0x48000088 # b .L_80164EA4
L_80164E20:
    .4byte 0xC802A808 # lfd f0, lbl_8053D7A8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_80164E38
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80164EA4
L_80164E38:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80164E60
    .4byte 0x40800040 # bge .L_80164E90
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80164E78
    .4byte 0x48000034 # b .L_80164E90
L_80164E60:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80164E70
    li 0, 0x1
    .4byte 0x48000028 # b .L_80164E94
L_80164E70:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80164E94
L_80164E78:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80164E88
    li 0, 0x5
    .4byte 0x48000010 # b .L_80164E94
L_80164E88:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80164E94
L_80164E90:
    li 0, 0x4
L_80164E94:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80164EA4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_80164EA4:
    .4byte 0xC002A7D8 # lfs f0, lbl_8053D778@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4180000C # blt .L_80164EB8
    clrlwi. 0, 30, 24
    .4byte 0x4182019C # beq .L_80165050
L_80164EB8:
    li 3, 0xa
    clrlwi. 0, 30, 24
    stw 3, 0x234(31)
    .4byte 0x4182001C # beq .L_80164EE0
    lfs 0, 0xc(31)
    stfs 0, 0x274(31)
    lfs 0, 0x10(31)
    stfs 0, 0x278(31)
    lfs 0, 0x14(31)
    stfs 0, 0x27c(31)
L_80164EE0:
    lfs 0, 0x274(31)
    li 0, 0x0
    stfs 0, 0xc(31)
    lfs 0, 0x278(31)
    stfs 0, 0x10(31)
    lfs 0, 0x27c(31)
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    .4byte 0x48000150 # b .L_80165050
L_80164F04:
    lwz 0, 0x9c(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80164F18
    clrlwi. 0, 30, 24
    .4byte 0x418200B4 # beq .L_80164FC8
L_80164F18:
    psq_l 1, 0xc(31), 0, 0
    lis 3, lbl_80466288@ha
    lfs 0, 0x14(31)
    addi 4, 1, 0x1c
    addi 5, 3, lbl_80466288@l
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x24(1)
    lfs 3, 0x1c(1)
    lwz 0, 0x98(31)
    lfs 1, 0x20(1)
    slwi 0, 0, 3
    add 3, 5, 0
    lfsx 2, 5, 0
    lfs 0, 0x4(3)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_80164FAC
    lwz 3, 0x4(31)
    li 5, 0x4a1
    .4byte 0xC022A7D8 # lfs f1, lbl_8053D778@sda21(r0)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x14
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x4
    stw 0, 0x23c(31)
L_80164FAC:
    lwz 0, 0x98(31)
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
L_80164FC8:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80165024
    .4byte 0x40800014 # bge .L_80164FE8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80164FF4
    .4byte 0x4080002C # bge .L_8016500C
    .4byte 0x4800006C # b .L_80165050
L_80164FE8:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_80165050
    .4byte 0x4800004C # b .L_8016503C
L_80164FF4:
    .4byte 0xC022A7EC # lfs f1, lbl_8053D78C@sda21(r0)
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    .4byte 0x48000048 # b .L_80165050
L_8016500C:
    .4byte 0xC022A7F0 # lfs f1, lbl_8053D790@sda21(r0)
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    .4byte 0x48000030 # b .L_80165050
L_80165024:
    .4byte 0xC022A7E4 # lfs f1, lbl_8053D784@sda21(r0)
    .4byte 0xC002A7EC # lfs f0, lbl_8053D78C@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 1, 0x270(31)
    .4byte 0x48000018 # b .L_80165050
L_8016503C:
    .4byte 0xC022A7E4 # lfs f1, lbl_8053D784@sda21(r0)
    .4byte 0xC002A7F0 # lfs f0, lbl_8053D790@sda21(r0)
    stfs 1, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 1, 0x270(31)
L_80165050:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80165064
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80165064:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80165078
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80165078:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8016508C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8016508C:
    psq_l 31, 0x78(1), 0, 0
    lwz 0, 0x84(1)
    lfd 31, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_801650AC:
    stwu 1, -0x20(1)
    li 0, 0x0
    .4byte 0xC002A810 # lfs f0, lbl_8053D7B0@sda21(r0)
    .4byte 0xC062A814 # lfs f3, lbl_8053D7B4@sda21(r0)
    stfs 0, 0x60(3)
    .4byte 0xC042A7F0 # lfs f2, lbl_8053D790@sda21(r0)
    stfs 0, 0x64(3)
    .4byte 0xC022A7EC # lfs f1, lbl_8053D78C@sda21(r0)
    stfs 3, 0x68(3)
    .4byte 0xC002A7E4 # lfs f0, lbl_8053D784@sda21(r0)
    stfs 3, 0x6c(3)
    stfs 2, 0x80(3)
    stfs 2, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    stfs 0, 0x268(3)
    stfs 0, 0x26c(3)
    stfs 0, 0x270(3)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 27
    stw 0, 0x254(3)
    lwz 0, 0x254(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8016514C
    .4byte 0xC022A818 # lfs f1, lbl_8053D7B8@sda21(r0)
    .4byte 0xC002A81C # lfs f0, lbl_8053D7BC@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
L_8016514C:
    lwz 4, 0x90(3)
    li 0, 0x0
    clrlwi 4, 4, 30
    stw 4, 0x98(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 4, 20
    stw 4, 0x258(3)
    lwz 4, 0x90(3)
    extrwi 4, 4, 4, 16
    stw 4, 0x25c(3)
    stw 0, 0x260(3)
    lwz 0, 0x258(3)
    cmpwi 0, 0x0
    .4byte 0x41820058 # beq .L_801651D8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC002A7D8 # lfs f0, lbl_8053D778@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC042A7EC # lfs f2, lbl_8053D78C@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x260(3)
L_801651D8:
    lfs 0, 0xc(3)
    li 0, 0x0
    stfs 0, 0x274(3)
    lfs 0, 0x10(3)
    stfs 0, 0x278(3)
    lfs 0, 0x14(3)
    stfs 0, 0x27c(3)
    stb 0, 0x264(3)
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x4182000C # beq .L_8016520C
    li 0, 0x1
    stb 0, 0x264(3)
L_8016520C:
    li 4, 0x2
    li 0, 0x0
    stw 4, 0xb8(3)
    stw 0, 0x230(3)
    lwz 0, 0x25c(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80165230
    li 0, 0x3
    stw 0, 0x230(3)
L_80165230:
    addi 1, 1, 0x20
    blr

fn_80165238:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C03A0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C03A0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80165288
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
L_80165288:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801652C0
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
L_801652C0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801652F8
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
L_801652F8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80165330
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
L_80165330:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80165368
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
L_80165368:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801653A0
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
L_801653A0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801653D8
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
L_801653D8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80165410
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
L_80165410:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80165448
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
L_80165448:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80165238

