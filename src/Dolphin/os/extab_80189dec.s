# FGN2 cluster (vtable lbl_804A1A98) - one dtk-fused block, 17 functions,
# landed together (dtk could not split them individually - no auto-dump
# existed for the middle 2; pulled from this file's own boundaries).
#
# - fn_80189DEC - candidate-reassignment helper: given up to 4 nearby
#   actor IDs (this->0x94 plus a scan of up to 4 following slots), tests
#   each against a battery of type/state predicates (fn_8022EA0C/
#   8023F264/8023DE58/80230188/80236B50/8022DCD8) and a global flag
#   (lbl_8053AB78), picking whichever candidate first passes all checks
#   (or falling back to the last candidate) and writing it to this->0x94/
#   0x27c. Likely a "find a valid partner/anchor instance" utility.
# - fn_80189F74 - destructor. Installs vtable lbl_804A1A98, culls a
#   4-slot trail-effect array (this->0x2f4/2f8/2fc/0x300, stride 4) plus
#   a 5th slot at 0x314 via the confirmed fn_801EE434; conditionally
#   resets an effect handle (this->0x274) via SpatialRegistry_GetBase/fn_801F666C
#   when this->0x90==0xa; calls the confirmed shared base dtor
#   dtor_801F593C plus a conditional second-base dtor dtor_80084580
#   (multiple inheritance, same pattern as GOMA/GOMA-neighbors).
# - fn_8018A070 - setParams(). Large default-field initializer
#   selecting one of several sub-configurations by this->0x90 (variants
#   0/1/0xa/0xc/other, each pulling constants from lookup tables
#   lbl_804A1960/lbl_804C17A8/lbl_804A19F0 indexed by this->0x94); the
#   0xa variant additionally spawns up to 4 trailing companion effects
#   via the confirmed fn_8013CC50, stored into the same 0x2f4/0x2f8/
#   0x2fc/0x300 slots the destructor culls.
# - fn_8018A588/90/98/A0/A8/B0/B8/C8/D0/E0 - trivial single-field
#   accessors/setters (offsets 0x108, 0x94, 0x11c, 0x98, 0xbb, and a
#   0xf4 bitmask clear/set pair) - standard per-actor getter/setter
#   vtable slots seen throughout the project.
# - fn_8018A5F0 - wrapper: resolves a handle via fn_8013C824, returns
#   its ->0xc field.
# - fn_8018A614 - bit-test helper against a per-bit flag byte at
#   lbl_8053AAF8->0x82 (the global PRNG/state struct), returns bool.
# - fn_8018A63C/fn_8018A660 - near-identical wrapper pair: resolve a
#   handle via SpatialRegistry_GetBase then read through it via fn_801F6884 /
#   fn_801F68E0 respectively (X/Y-style coordinate getter pair).
.section extab, "a"
.balign 4
.global etb_80007684
etb_80007684:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007684, 8

.global etb_8000768C
etb_8000768C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000768C, 8

.global etb_80007694
etb_80007694:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007694, 8

.global etb_8000769C
etb_8000769C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000769C, 8

.global etb_800076A4
etb_800076A4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800076A4, 8

.global etb_800076AC
etb_800076AC:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_800076AC, 8

.section extabindex, "a"
.balign 4
.global eti_800143EC
eti_800143EC:
    .4byte fn_80189DEC
    .4byte 0x00000188
    .4byte etb_8000769C
.size eti_800143EC, 12

.global eti_800143F8
eti_800143F8:
    .4byte fn_80189F74
    .4byte 0x000000FC
    .4byte etb_800076A4
.size eti_800143F8, 12

.global eti_80014404
eti_80014404:
    .4byte fn_8018A070
    .4byte 0x00000518
    .4byte etb_800076AC
.size eti_80014404, 12

.global eti_80014410
eti_80014410:
    .4byte fn_8018A5F0
    .4byte 0x00000024
    .4byte etb_80007684
.size eti_80014410, 12

.global eti_8001441C
eti_8001441C:
    .4byte fn_8018A63C
    .4byte 0x00000024
    .4byte etb_8000768C
.size eti_8001441C, 12

.global eti_80014428
eti_80014428:
    .4byte fn_8018A660
    .4byte 0x00000024
    .4byte etb_80007694
.size eti_80014428, 12

.text
.balign 4
.global fn_80189DEC
.global fn_80189F74
.global fn_8018A070
.global fn_8018A588
.global fn_8018A590
.global fn_8018A598
.global fn_8018A5A0
.global fn_8018A5A8
.global fn_8018A5B0
.global fn_8018A5B8
.global fn_8018A5C8
.global fn_8018A5D0
.global fn_8018A5E0
.global fn_8018A5F0
.global fn_8018A614
.global fn_8018A63C
.global fn_8018A660

fn_80189DEC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 30, 3
    lhz 3, 0x94(3)
    bl fn_8022EA0C
    mr. 31, 3
    .4byte 0x40800008 # bge .L_80189E14
    li 31, 0x0
L_80189E14:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80189E64
    lwz 29, 0x4(30)
    mr 3, 31
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820030 # bne .L_80189E64
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80189E64
    mr 3, 31
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80189E64
    .4byte 0x800D8FB8 # lwz r0, lbl_8053AB78@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x408200F8 # bne .L_80189F58
L_80189E64:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002B054 # lfs f0, lbl_8053DFF4@sda21(r0)
    lwz 3, 0xb4(4)
    li 28, 0x0
    .4byte 0xC042B0B0 # lfs f2, lbl_8053E050@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 27, 0x14(1)
L_80189EB8:
    cmpw 27, 31
    .4byte 0x41820088 # beq .L_80189F44
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_80189F44
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820064 # bne .L_80189F44
    mr 3, 27
    bl fn_8022EA0C
    cmpw 27, 3
    .4byte 0x40820054 # bne .L_80189F44
    mr 3, 27
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820044 # bne .L_80189F44
    mr 3, 27
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_80189F44
    mr 3, 27
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80189F44
    sth 27, 0x94(30)
    .4byte 0x800D8FB8 # lwz r0, lbl_8053AB78@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80189F3C
    lhz 0, 0x94(30)
    stw 0, 0x27c(30)
L_80189F3C:
    lhz 3, 0x94(30)
    .4byte 0x48000020 # b .L_80189F60
L_80189F44:
    addi 28, 28, 0x1
    addi 27, 27, 0x1
    cmpwi 28, 0x4
    clrlwi 27, 27, 30
    .4byte 0x4180FF64 # blt .L_80189EB8
L_80189F58:
    sth 31, 0x94(30)
    lhz 3, 0x94(30)
L_80189F60:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80189F74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200B4 # beq .L_8018A04C
    lis 3, lbl_804A1A98@ha
    mr 31, 28
    addi 0, 3, lbl_804A1A98@l
    li 30, 0x0
    stw 0, 0x0(28)
L_80189FB0:
    lwz 3, 0x2f4(31)
    bl fn_801EE434
    lwz 3, 0x304(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFE4 # blt .L_80189FB0
    lwz 3, 0x314(28)
    bl fn_801EE434
    lwz 0, 0x90(28)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80189FF4
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    bl fn_8022ADCC
L_80189FF4:
    lwz 0, 0x90(28)
    cmplwi 0, 0xa
    .4byte 0x40820034 # bne .L_8018A030
    lwz 31, 0x274(28)
    cmpwi 31, 0x0
    .4byte 0x41800028 # blt .L_8018A030
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8018A030
    .4byte 0xC002B084 # lfs f0, lbl_8053E024@sda21(r0)
    li 0, -0x1
    stfs 0, 0x28c(3)
    stw 0, 0x274(28)
L_8018A030:
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_8018A04C
    mr 3, 28
    bl dtor_80084580
L_8018A04C:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8018A070:
    stwu 1, -0x30(1)
    mflr 0
    li 6, 0x1
    .4byte 0xC0C2B048 # lfs f6, lbl_8053DFE8@sda21(r0)
    stw 0, 0x34(1)
    li 5, 0x2
    .4byte 0xC062B054 # lfs f3, lbl_8053DFF4@sda21(r0)
    stmw 26, 0x18(1)
    mr 30, 3
    lis 3, lbl_804A1960@ha
    li 31, 0x0
    addi 4, 3, lbl_804A1960@l
    .4byte 0xC042B070 # lfs f2, lbl_8053E010@sda21(r0)
    .4byte 0xC022B07C # lfs f1, lbl_8053E01C@sda21(r0)
    lwz 0, 0x90(30)
    extrwi 0, 0, 4, 24
    sth 0, 0x94(30)
    li 0, -0x1
    lwz 7, 0x90(30)
    clrlwi 3, 7, 28
    stw 3, 0x90(30)
    stw 31, 0x24c(30)
    stw 31, 0x250(30)
    stw 31, 0x254(30)
    stw 31, 0x258(30)
    stw 31, 0x25c(30)
    stw 31, 0x260(30)
    stw 31, 0x264(30)
    stw 31, 0x268(30)
    stw 31, 0x234(30)
    stw 31, 0x238(30)
    stw 31, 0x23c(30)
    stw 31, 0x240(30)
    stw 31, 0x244(30)
    stw 31, 0x248(30)
    stb 6, 0x196(30)
    stw 31, 0x26c(30)
    stfs 6, 0x2ac(30)
    stfs 6, 0x2b8(30)
    stfs 6, 0x2b4(30)
    stfs 6, 0x2b0(30)
    stfs 6, 0x44(30)
    stfs 6, 0x40(30)
    stfs 6, 0x3c(30)
    stw 31, 0x2f4(30)
    stw 31, 0x304(30)
    stw 31, 0x2f8(30)
    stw 31, 0x308(30)
    stw 31, 0x2fc(30)
    stw 31, 0x30c(30)
    stw 31, 0x300(30)
    stw 31, 0x310(30)
    stw 31, 0x314(30)
    stfs 3, 0x14(30)
    stfs 2, 0x280(30)
    stfs 6, 0x28c(30)
    stb 31, 0x2ef(30)
    stw 0, 0x274(30)
    stw 5, 0x278(30)
    sth 31, 0x2ec(30)
    stfs 1, 0x294(30)
    lhz 0, 0x94(30)
    mulli 0, 0, 0xc
    lfsx 0, 4, 0
    stfs 0, 0x2a0(30)
    stfs 1, 0x298(30)
    lhz 0, 0x94(30)
    mulli 0, 0, 0xc
    add 3, 4, 0
    lfs 0, 0x4(3)
    stfs 0, 0x2a4(30)
    stfs 1, 0x29c(30)
    lhz 3, 0x94(30)
    li 0, 0x2710
    .4byte 0xC0A2B040 # lfs f5, lbl_8053DFE0@sda21(r0)
    mulli 3, 3, 0xc
    add 3, 4, 3
    lfs 0, 0x8(3)
    stfs 0, 0x2a8(30)
    stw 0, 0x108(30)
    stb 31, 0x2f0(30)
    stfs 1, 0x290(30)
    stfs 6, 0x284(30)
    stfs 6, 0x288(30)
    stfs 3, 0x2c8(30)
    stfs 3, 0x2cc(30)
    stfs 3, 0x2d0(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2bc(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2c0(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2c4(30)
    lfs 0, 0x2c0(30)
    fadds 0, 0, 5
    stfs 0, 0x2c0(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2d4(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2d8(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2dc(30)
    lwz 0, 0x90(30)
    cmpwi 0, 0xa
    .4byte 0x41820180 # beq .L_8018A390
    .4byte 0x40800014 # bge .L_8018A228
    cmpwi 0, 0x1
    .4byte 0x418200FC # beq .L_8018A318
    .4byte 0x40800018 # bge .L_8018A238
    .4byte 0x48000014 # b .L_8018A238
L_8018A228:
    cmpwi 0, 0xc
    .4byte 0x418202FC # beq .L_8018A528
    .4byte 0x40800008 # bge .L_8018A238
    .4byte 0x48000234 # b .L_8018A468
L_8018A238:
    .4byte 0xC002B044 # lfs f0, lbl_8053DFE4@sda21(r0)
    .4byte 0xC062B0EC # lfs f3, lbl_8053E08C@sda21(r0)
    stfs 0, 0x60(30)
    .4byte 0xC022B0E4 # lfs f1, lbl_8053E084@sda21(r0)
    stfs 3, 0x64(30)
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    stfs 1, 0x68(30)
    .4byte 0xC042B040 # lfs f2, lbl_8053DFE0@sda21(r0)
    stfs 0, 0x6c(30)
    .4byte 0xC022B048 # lfs f1, lbl_8053DFE8@sda21(r0)
    stfs 3, 0x80(30)
    .4byte 0xC002B06C # lfs f0, lbl_8053E00C@sda21(r0)
    stfs 3, 0x84(30)
    stfs 2, 0x88(30)
    stfs 2, 0x8c(30)
    stfs 1, 0x290(30)
    lfs 1, 0xc(30)
    fsubs 0, 1, 0
    stfs 0, 0xc(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2e0(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2e4(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2e8(30)
    lfs 0, 0xc(30)
    stfs 0, 0x2d4(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2d8(30)
    lfs 0, 0x14(30)
    stfs 0, 0x2dc(30)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lis 3, lbl_804C17A8@ha
    li 5, 0x0
    addi 4, 3, lbl_804C17A8@l
    li 0, 0x64
    .4byte 0x900D83F8 # stw r0, lbl_80539FB8@sda21(r0)
    li 3, 0x2
    .4byte 0xC002B05C # lfs f0, lbl_8053DFFC@sda21(r0)
    li 0, 0x1
    .4byte 0x90AD8FB8 # stw r5, lbl_8053AB78@sda21(r0)
    .4byte 0x90AD8FBC # stw r5, lbl_8053AB7C@sda21(r0)
    .4byte 0x90AD8FC0 # stw r5, lbl_8053AB80@sda21(r0)
    .4byte 0x98AD83FC # stb r5, lbl_80539FBC@sda21(r0)
    .4byte 0x98AD8FC4 # stb r5, lbl_8053AB84@sda21(r0)
    stw 5, 0x0(4)
    stw 5, 0x4(4)
    stw 5, 0x8(4)
    stw 5, 0xc(4)
    stw 3, 0x114(30)
    stfs 0, 0x288(30)
    stb 0, 0x2ee(30)
    stw 5, 0x230(30)
    .4byte 0x4800024C # b .L_8018A560
L_8018A318:
    .4byte 0xC002B044 # lfs f0, lbl_8053DFE4@sda21(r0)
    lis 3, 0x4330
    .4byte 0xC022B0EC # lfs f1, lbl_8053E08C@sda21(r0)
    li 0, 0x5
    stfs 0, 0x60(30)
    .4byte 0xC002B0E4 # lfs f0, lbl_8053E084@sda21(r0)
    stfs 1, 0x64(30)
    .4byte 0xC082B05C # lfs f4, lbl_8053DFFC@sda21(r0)
    stfs 0, 0x68(30)
    .4byte 0xC842B120 # lfd f2, lbl_8053E0C0@sda21(r0)
    stfs 4, 0x6c(30)
    .4byte 0xC062B0F8 # lfs f3, lbl_8053E098@sda21(r0)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 5, 0x88(30)
    stfs 5, 0x8c(30)
    stfs 6, 0x290(30)
    lhz 4, 0x94(30)
    stw 3, 0x8(1)
    lfs 0, 0x2d4(30)
    stw 4, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmadds 0, 3, 1, 0
    stfs 0, 0x2d4(30)
    stw 5, 0x114(30)
    stfs 4, 0x288(30)
    stb 6, 0x2ee(30)
    stw 0, 0x230(30)
    .4byte 0x480001D4 # b .L_8018A560
L_8018A390:
    lis 3, lbl_804A19F0@ha
    mr 28, 30
    li 26, 0x0
    addi 29, 3, lbl_804A19F0@l
L_8018A3A0:
    add 27, 29, 31
    lwz 3, 0x4(30)
    lhz 5, 0x0(27)
    addi 4, 30, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2f4(28)
    addi 4, 30, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 6, 0x1
    lwz 3, 0x4(30)
    li 7, 0x2
    lhz 5, 0x2(27)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(28)
    lhz 0, 0x94(30)
    cmpw 26, 0
    .4byte 0x41820034 # beq .L_8018A438
    lwz 3, 0x2f4(28)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018A420
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8018A420:
    lwz 3, 0x304(28)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8018A438
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
L_8018A438:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FF58 # blt .L_8018A3A0
    li 0, 0xb
    stb 0, 0x2f0(30)
    .4byte 0x800D8FB8 # lwz r0, lbl_8053AB78@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8018A468
    li 0, 0x6
    stb 0, 0x2f0(30)
L_8018A468:
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    li 0, 0x2
    .4byte 0xC062B110 # lfs f3, lbl_8053E0B0@sda21(r0)
    stfs 0, 0x2d0(30)
    .4byte 0xC042B114 # lfs f2, lbl_8053E0B4@sda21(r0)
    stfs 0, 0x2cc(30)
    .4byte 0xC022B118 # lfs f1, lbl_8053E0B8@sda21(r0)
    stfs 0, 0x2c8(30)
    .4byte 0xC002B070 # lfs f0, lbl_8053E010@sda21(r0)
    stb 0, 0x2ee(30)
    stfs 3, 0x60(30)
    stfs 3, 0x64(30)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    lwz 0, 0x90(30)
    cmplwi 0, 0xb
    .4byte 0x4082005C # bne .L_8018A514
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x37a
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2f4(30)
    addi 4, 30, 0xc
    .4byte 0xC022B054 # lfs f1, lbl_8053DFF4@sda21(r0)
    li 5, 0x37b
    lwz 3, 0x4(30)
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(30)
L_8018A514:
    li 3, 0x4
    li 0, 0x1d
    stw 3, 0x118(30)
    stw 0, 0x230(30)
    .4byte 0x4800003C # b .L_8018A560
L_8018A528:
    li 0, 0x1e
    .4byte 0xC002B118 # lfs f0, lbl_8053E0B8@sda21(r0)
    stw 0, 0x234(30)
    stb 5, 0x2ee(30)
    stfs 0, 0x60(30)
    stfs 0, 0x64(30)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    stfs 0, 0x80(30)
    stfs 0, 0x84(30)
    stfs 2, 0x88(30)
    stfs 2, 0x8c(30)
    stw 5, 0x118(30)
    stw 0, 0x230(30)
L_8018A560:
    lhz 0, 0x94(30)
    stw 0, 0x27c(30)
    .4byte 0x800D83F8 # lwz r0, lbl_80539FB8@sda21(r0)
    slwi 0, 0, 2
    stw 0, 0x270(30)
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8018A588:
    stw 4, 0x108(3)
    blr

fn_8018A590:
    lhz 3, 0x94(3)
    blr

fn_8018A598:
    stb 4, 0x11c(3)
    blr

fn_8018A5A0:
    stw 4, 0x98(3)
    blr

fn_8018A5A8:
    sth 4, 0x94(3)
    blr

fn_8018A5B0:
    lbz 3, 0x11c(3)
    blr

fn_8018A5B8:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_8018A5C8:
    stb 4, 0xbb(3)
    blr

fn_8018A5D0:
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    blr

fn_8018A5E0:
    lwz 0, 0xf4(3)
    ori 0, 0, 0x4
    stw 0, 0xf4(3)
    blr

fn_8018A5F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_8013C824
    lwz 0, 0x14(1)
    lwz 3, 0xc(3)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8018A614:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lbz 3, 0x82(4)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_8018A63C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8018A660:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

