/*
 * fn_8010B8B0 (0x8010B8B0-0x8010BEB4, 0x608/1544 bytes) - update() for the class whose
 * setState (fn_8010B40C) and spawn method (fn_8010B648) already landed. Survey-level only.
 *
 * Opens with fn_801F5930 (base per-frame step), dispatches on this->0x230 (the state field
 * set by fn_8010B40C's setState) via range checks (states 0/1/2/3/4/5):
 *   - state 0: calls the just-landed fn_8010B284 ("4-candidate time-window check"); on
 *     success -> setState(1). Else fn_801F285C (the unidentified "returns a signed status"
 *     call, first confirmed via fn_80107660); on success -> setState(1). Else builds a
 *     bounding box from this->0xc/0x10/0x14/0x70-0x7c, then runs the SAME 4-way accept-chain
 *     cascade confirmed in fn_80107660 (fn_8023AA18, fn_8023AE34+fn_801CC820,
 *     fn_8023AC74+fn_801CC538, fn_8023AD54+fn_801CC640) - on any match, setState(1). Else
 *     builds a second bounding box from this->0x54-0x6c and calls fn_8023AB94 (new); on a
 *     specific sign result, setState(2).
 *   - state 1: advances an eased value (this->0x23c) via lbl_8053C450/8053C454/8053C458
 *     constants into this->0x10, calls fn_801F2B7C(this->0x114); on success -> setState(3).
 *     Else fn_801F2618(this, &out, 0); on success, does a range/lookup check via
 *     fn_80226850 (the CONFIRMED ID-range-check primitive from fn_8010B284) against
 *     `lbl_8053AC98`+`fn_802A381C` (new) or falls through -> setState(3). Else increments
 *     this->0x234, and at >=0x1e (30) calls fn_801F285C again -> setState(3) on success,
 *     else repeats the SAME bounding-box + 4-way accept-chain cascade as state 0 ->
 *     setState(2) on any match.
 *   - state 2: no-op here (handled elsewhere).
 *   - state 3: `fn_801D21F0(this+0x244)` (new variant of the fn_801D2xxx base-subobject
 *     family) -> setState(4) on success.
 *   - state 4: increments this->0x238, and at >0x12c (300) -> setState(5).
 *   - state 5: calls both this->vtable[slot 15] and (conditionally) vtable[slot 13] (the
 *     CONFIRMED shared virtual contract); on success, sets this->0x11d=1, calls
 *     fn_801CD950 (confirmed rotate-toward), and on a further threshold check ->
 *     setState(0) (restarts the whole machine).
 *
 * Tail: copies this->0x240 into this->0x54/0x58/0x5c (the reference vector fn_8010B648's
 * spawn method reads for its radius checks), then `fn_801D1C18(this+0x244)` - **CONFIRMS
 * this class as the 6th this session driving the shared fn_801D1C18-family multiple-
 * inheritance base type**, at the exact offset (+0x244) already used by this class's
 * setState reconfigure calls.
 */

.section extab, "a"
.balign 4
.global etb_80005C08
etb_80005C08:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005C08, 8

.section extabindex, "a"
.balign 4
.global eti_80012070
eti_80012070:
    .4byte fn_8010B8B0
    .4byte 0x00000608
    .4byte etb_80005C08
.size eti_80012070, 12

.text
.balign 4
.global fn_8010B8B0

fn_8010B8B0:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stw 31, 0x9c(1)
    mr 31, 3
    bl fn_801F5930
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x418204EC # beq .L_8010BDBC
    .4byte 0x4080001C # bge .L_8010B8F0
    cmpwi 0, 0x1
    .4byte 0x41820208 # beq .L_8010BAE4
    .4byte 0x408004CC # bge .L_8010BDAC
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_8010B900
    .4byte 0x480005A0 # b .L_8010BE8C
L_8010B8F0:
    cmpwi 0, 0x5
    .4byte 0x41820510 # beq .L_8010BE04
    .4byte 0x40800594 # bge .L_8010BE8C
    .4byte 0x480004E0 # b .L_8010BDDC
L_8010B900:
    mr 3, 31
    bl fn_8010B284
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8010B920
    mr 3, 31
    li 4, 0x1
    bl fn_8010B40C
    .4byte 0x48000570 # b .L_8010BE8C
L_8010B920:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8010B950
    mr 3, 31
    li 4, 0x1
    bl fn_8010B40C
    .4byte 0x48000540 # b .L_8010BE8C
L_8010B950:
    .4byte 0xC00294D0 # lfs f0, lbl_8053C470@sda21(r0)
    addi 3, 1, 0x64
    addi 5, 1, 0x20
    stfs 0, 0x20(1)
    stfs 0, 0x24(1)
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    lfs 4, 0xc(31)
    lfs 0, 0x70(31)
    fsubs 5, 2, 1
    stfs 0, 0x64(1)
    fadds 3, 0, 4
    lfs 0, 0x74(31)
    stfs 0, 0x68(1)
    fadds 2, 0, 5
    lfs 0, 0x78(31)
    stfs 0, 0x6c(1)
    fadds 1, 0, 4
    lfs 4, 0x7c(31)
    fadds 0, 4, 5
    stfs 4, 0x70(1)
    stfs 3, 0x64(1)
    stfs 2, 0x68(1)
    stfs 1, 0x6c(1)
    stfs 0, 0x70(1)
    lwz 4, 0x4(31)
    bl fn_8023AA18
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8010B9CC
    li 0, 0x1
    .4byte 0x4800008C # b .L_8010BA54
L_8010B9CC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    addi 5, 1, 0x20
    bl fn_8023AE34
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8010B9F4
    li 4, 0x0
    bl fn_801CC820
    li 0, 0x1
    .4byte 0x48000064 # b .L_8010BA54
L_8010B9F4:
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    addi 5, 1, 0x20
    bl fn_8023AC74
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_8010BA24
    addi 4, 1, 0x20
    addi 5, 1, 0x74
    li 6, 0x0
    bl fn_801CC538
    li 0, 0x1
    .4byte 0x48000034 # b .L_8010BA54
L_8010BA24:
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    addi 5, 1, 0x20
    bl fn_8023AD54
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8010BA50
    li 4, 0x0
    li 5, 0x0
    bl fn_801CC640
    li 0, 0x1
    .4byte 0x48000008 # b .L_8010BA54
L_8010BA50:
    li 0, 0x0
L_8010BA54:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8010BA6C
    mr 3, 31
    li 4, 0x1
    bl fn_8010B40C
    .4byte 0x48000424 # b .L_8010BE8C
L_8010BA6C:
    lfs 1, 0x60(31)
    addi 3, 1, 0x54
    addi 5, 1, 0x18
    stfs 1, 0x54(1)
    lfs 4, 0x64(31)
    stfs 4, 0x58(1)
    lfs 2, 0x68(31)
    stfs 2, 0x5c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x60(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x54(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x5c(1)
    fadds 0, 3, 2
    stfs 1, 0x58(1)
    stfs 0, 0x60(1)
    lwz 4, 0x4(31)
    bl fn_8023AB94
    srwi 0, 3, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x418203BC # beq .L_8010BE8C
    mr 3, 31
    li 4, 0x2
    bl fn_8010B40C
    .4byte 0x480003AC # b .L_8010BE8C
L_8010BAE4:
    lfs 1, 0x23c(31)
    mr 3, 31
    .4byte 0xC00294B0 # lfs f0, lbl_8053C450@sda21(r0)
    li 5, -0x1
    .4byte 0xC04294B8 # lfs f2, lbl_8053C458@sda21(r0)
    li 6, 0x18
    fadds 0, 1, 0
    .4byte 0xC06294B4 # lfs f3, lbl_8053C454@sda21(r0)
    stfs 0, 0x23c(31)
    lfs 1, 0x23c(31)
    lfs 0, 0x28(31)
    fmuls 1, 1, 1
    fmuls 1, 2, 1
    fmadds 0, 3, 1, 0
    stfs 0, 0x10(31)
    lwz 4, 0x114(31)
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8010BB40
    mr 3, 31
    li 4, 0x3
    bl fn_8010B40C
    .4byte 0x48000350 # b .L_8010BE8C
L_8010BB40:
    mr 3, 31
    addi 4, 1, 0x8c
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_8010BBD0
    psq_l 1, 0xc(31), 0, 0
    addi 3, 1, 0x80
    lfs 2, 0x14(31)
    .4byte 0xC00294C0 # lfs f0, lbl_8053C460@sda21(r0)
    psq_st 1, 0x0(3), 0, 0
    lfs 1, 0x84(1)
    stfs 2, 0x88(1)
    fadds 0, 1, 0
    stfs 0, 0x84(1)
    lwz 4, 0x4(31)
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x3f0
    .4byte 0x40800020 # bge .L_8010BBAC
    cmplwi 0, 0x250
    .4byte 0x4180000C # blt .L_8010BBA0
    cmplwi 0, 0x26f
    .4byte 0x40810010 # ble .L_8010BBAC
L_8010BBA0:
    clrlwi 0, 3, 16
    cmplwi 0, 0x3ed
    .4byte 0x40820018 # bne .L_8010BBC0
L_8010BBAC:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 1, 0x80
    lwz 5, 0x4(31)
    li 6, 0x34
    bl fn_802A381C
L_8010BBC0:
    mr 3, 31
    li 4, 0x3
    bl fn_8010B40C
    .4byte 0x480002C0 # b .L_8010BE8C
L_8010BBD0:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1e
    .4byte 0x418002A8 # blt .L_8010BE8C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8010BC18
    mr 3, 31
    li 4, 0x3
    bl fn_8010B40C
    .4byte 0x48000278 # b .L_8010BE8C
L_8010BC18:
    .4byte 0xC00294D0 # lfs f0, lbl_8053C470@sda21(r0)
    addi 3, 1, 0x38
    addi 5, 1, 0x10
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    lfs 2, 0x10(31)
    lfs 1, 0x14(31)
    lfs 4, 0xc(31)
    lfs 0, 0x70(31)
    fsubs 5, 2, 1
    stfs 0, 0x38(1)
    fadds 3, 0, 4
    lfs 0, 0x74(31)
    stfs 0, 0x3c(1)
    fadds 2, 0, 5
    lfs 0, 0x78(31)
    stfs 0, 0x40(1)
    fadds 1, 0, 4
    lfs 4, 0x7c(31)
    fadds 0, 4, 5
    stfs 4, 0x44(1)
    stfs 3, 0x38(1)
    stfs 2, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    lwz 4, 0x4(31)
    bl fn_8023AA18
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8010BC94
    li 0, 0x1
    .4byte 0x4800008C # b .L_8010BD1C
L_8010BC94:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0x10
    bl fn_8023AE34
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8010BCBC
    li 4, 0x0
    bl fn_801CC820
    li 0, 0x1
    .4byte 0x48000064 # b .L_8010BD1C
L_8010BCBC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0x10
    bl fn_8023AC74
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_8010BCEC
    addi 4, 1, 0x10
    addi 5, 1, 0x48
    li 6, 0x0
    bl fn_801CC538
    li 0, 0x1
    .4byte 0x48000034 # b .L_8010BD1C
L_8010BCEC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x38
    addi 5, 1, 0x10
    bl fn_8023AD54
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8010BD18
    li 4, 0x0
    li 5, 0x0
    bl fn_801CC640
    li 0, 0x1
    .4byte 0x48000008 # b .L_8010BD1C
L_8010BD18:
    li 0, 0x0
L_8010BD1C:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8010BD34
    mr 3, 31
    li 4, 0x3
    bl fn_8010B40C
    .4byte 0x4800015C # b .L_8010BE8C
L_8010BD34:
    lfs 1, 0x60(31)
    addi 3, 1, 0x28
    addi 5, 1, 0x8
    stfs 1, 0x28(1)
    lfs 4, 0x64(31)
    stfs 4, 0x2c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x30(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x34(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x28(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x30(1)
    fadds 0, 3, 2
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    lwz 4, 0x4(31)
    bl fn_8023AB94
    srwi 0, 3, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x418200F4 # beq .L_8010BE8C
    mr 3, 31
    li 4, 0x2
    bl fn_8010B40C
    .4byte 0x480000E4 # b .L_8010BE8C
L_8010BDAC:
    mr 3, 31
    li 4, 0x4
    bl fn_8010B40C
    .4byte 0x480000D4 # b .L_8010BE8C
L_8010BDBC:
    addi 3, 31, 0x244
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_8010BE8C
    mr 3, 31
    li 4, 0x4
    bl fn_8010B40C
    .4byte 0x480000B4 # b .L_8010BE8C
L_8010BDDC:
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x12c
    .4byte 0x4081009C # ble .L_8010BE8C
    mr 3, 31
    li 4, 0x5
    bl fn_8010B40C
    .4byte 0x4800008C # b .L_8010BE8C
L_8010BE04:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_8010BE3C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_8010BE8C
L_8010BE3C:
    li 0, 0x1
    .4byte 0xC02294D8 # lfs f1, lbl_8053C478@sda21(r0)
    stb 0, 0x11d(31)
    addi 3, 31, 0x240
    .4byte 0xC04294E4 # lfs f2, lbl_8053C484@sda21(r0)
    bl fn_801CD950
    .4byte 0xC04294D8 # lfs f2, lbl_8053C478@sda21(r0)
    lfs 0, 0x240(31)
    .4byte 0xC06294DC # lfs f3, lbl_8053C47C@sda21(r0)
    fsubs 1, 2, 0
    lfs 0, 0x28(31)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x240(31)
    fcmpo cr0, 0, 2
    cror eq, gt, eq
    .4byte 0x40820010 # bne .L_8010BE8C
    mr 3, 31
    li 4, 0x0
    bl fn_8010B40C
L_8010BE8C:
    lfs 0, 0x240(31)
    addi 3, 31, 0x244
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
    bl fn_801D1C18
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

