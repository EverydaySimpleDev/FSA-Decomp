/*
 * fn_80103A90(this): a two-level state dispatcher for the fn_80103F28-
 * class (this->0x234 outer state, this->0x230 inner state within outer
 * state 0) - corrected attribution, see fn_80103F9C's banner: this class's
 * dtor/constructor appear AFTER its methods in address order. Survey-
 * level, not full per-branch semantics:
 *  - Outer state 0 / inner state 2: makes the confirmed virtual call
 *    through this->vtable[slot 13] (same slot as the minigame family's
 *    Init() contract); on success advances to inner state 1 and plays a
 *    sound-effect pair (fn_8013CC50, IDs 0x499/0x49a).
 *  - Outer state 0 / inner state 1: increments this->0x288 (a frame
 *    counter) each tick via fn_801F0E34 (confirmed effect-notify,
 *    param 0x36f), with escalating milestone cues at counter values
 *    0x1e/0x3c (float accumulators bumped, offsets nudged) then a
 *    sound-effect PAIR + fn_80134DE4 (unidentified, called with small
 *    integer args 1/0 or 3/0 - possibly a rumble/camera-shake trigger)
 *    at counter==1/0x1e/0x3c, and a THIRD milestone at counter==0x46
 *    that does a highlight-toggle (GetRoomConfigRecord/fn_802D8050, the same
 *    idiom seen in fn_801003F4/fn_80102398) plus a second virtual call
 *    through this->vtable[slot 0x3f] (a DIFFERENT vtable slot than the
 *    Init() contract). Counter capped/flag-cleared at 0x12c.
 *  - Outer state 0 / inner state 0: same virtual-call-then-branch shape
 *    as inner state 2, but the failure path plays two more sound cues
 *    (IDs 0xd3/0xd4) plus fn_80134DE4 and fn_801F0E34 before returning.
 *  - Outer state 1: gated on this->0x230==0 (not 1, not >=2), otherwise
 *    a virtual call through vtable[slot 13] again.
 * Reads as an escalating "results fanfare" countdown sequence (sound
 * cues at increasing counter milestones), consistent with the minigame-
 * family's outro/celebration pattern seen in fn_80101DF0, but with a
 * richer set of milestones. Exact semantics of fn_80134DE4 not resolved.
 */

.section extab, "a"
.balign 4
.global etb_80005968
etb_80005968:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005968, 8

.section extabindex, "a"
.balign 4
.global eti_80011D4C
eti_80011D4C:
    .4byte fn_80103A90
    .4byte 0x00000498
    .4byte etb_80005968
.size eti_80011D4C, 12

.text
.balign 4
.global fn_80103A90

fn_80103A90:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x418203AC # beq .L_80103E5C
    .4byte 0x4080045C # bge .L_80103F10
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80103AC8
    .4byte 0x48000450 # b .L_80103F10
    .4byte 0x4800044C # b .L_80103F10
L_80103AC8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182009C # beq .L_80103B6C
    .4byte 0x40800010 # bge .L_80103AE4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80103AF0
    .4byte 0x48000430 # b .L_80103F10
L_80103AE4:
    cmpwi 0, 0x3
    .4byte 0x40800428 # bge .L_80103F10
    .4byte 0x480000BC # b .L_80103BA8
L_80103AF0:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182040C # beq .L_80103F10
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x499
    stw 0, 0x288(31)
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    lwz 3, 0x4(31)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x49a
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480003A8 # b .L_80103F10
L_80103B6C:
    lwz 6, 0x288(31)
    lis 4, 0x3
    addi 4, 4, 0x6f
    li 5, 0x0
    addi 0, 6, 0x1
    stw 0, 0x288(31)
    bl fn_801F0E34
    lwz 0, 0x288(31)
    cmpwi 0, 0xb4
    .4byte 0x41800380 # blt .L_80103F10
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x288(31)
    .4byte 0x4800036C # b .L_80103F10
L_80103BA8:
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0x6f
    bl fn_801F0E34
    lwz 3, 0x288(31)
    addi 0, 3, 0x1
    stw 0, 0x288(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x40810020 # ble .L_80103BEC
    lfs 1, 0x290(31)
    .4byte 0xC0029248 # lfs f0, lbl_8053C1E8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x290(31)
    lwz 3, 0x268(31)
    addi 0, 3, 0x20
    stw 0, 0x268(31)
L_80103BEC:
    lwz 0, 0x288(31)
    cmpwi 0, 0x1e
    .4byte 0x40810030 # ble .L_80103C24
    lfs 2, 0x28c(31)
    .4byte 0xC0229248 # lfs f1, lbl_8053C1E8@sda21(r0)
    .4byte 0xC0029238 # lfs f0, lbl_8053C1D8@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x28c(31)
    lwz 3, 0x264(31)
    subi 0, 3, 0x40
    stw 0, 0x264(31)
    lfs 1, 0x238(31)
    fadds 0, 1, 0
    stfs 0, 0x238(31)
L_80103C24:
    lwz 0, 0x288(31)
    cmpwi 0, 0x3c
    .4byte 0x40810020 # ble .L_80103C4C
    lfs 1, 0x294(31)
    .4byte 0xC0029248 # lfs f0, lbl_8053C1E8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x294(31)
    lwz 3, 0x26c(31)
    subi 0, 3, 0x40
    stw 0, 0x26c(31)
L_80103C4C:
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4082007C # bne .L_80103CD0
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x71
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x49d
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x49e
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x48000100 # b .L_80103DCC
L_80103CD0:
    cmpwi 0, 0x1e
    .4byte 0x4082007C # bne .L_80103D50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x71
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x49b
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x49c
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x48000080 # b .L_80103DCC
L_80103D50:
    cmpwi 0, 0x3c
    .4byte 0x40820078 # bne .L_80103DCC
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x70
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x49f
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x4a0
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x3
    li 5, 0x0
    bl fn_80134DE4
L_80103DCC:
    lwz 0, 0x288(31)
    cmpwi 0, 0x46
    .4byte 0x40820040 # bne .L_80103E14
    lwz 30, 0x25c(31)
    cmplwi 30, 0x0
    .4byte 0x41820034 # beq .L_80103E14
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_80103E14:
    lwz 0, 0x288(31)
    cmpwi 0, 0x12c
    .4byte 0x4081000C # ble .L_80103E28
    li 0, 0x0
    stb 0, 0x11c(31)
L_80103E28:
    lfs 1, 0x23c(31)
    lfs 0, 0x28c(31)
    fadds 0, 1, 0
    stfs 0, 0x23c(31)
    lfs 1, 0x248(31)
    lfs 0, 0x290(31)
    fadds 0, 1, 0
    stfs 0, 0x248(31)
    lfs 1, 0x254(31)
    lfs 0, 0x294(31)
    fadds 0, 1, 0
    stfs 0, 0x254(31)
    .4byte 0x480000B8 # b .L_80103F10
L_80103E5C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418200AC # beq .L_80103F10
    .4byte 0x408000A8 # bge .L_80103F10
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80103E7C
    .4byte 0x4800009C # b .L_80103F10
    .4byte 0x48000098 # b .L_80103F10
L_80103E7C:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_80103F10
    li 0, 0x2
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    stw 0, 0x230(31)
    addi 4, 31, 0xc
    li 5, 0xd3
    li 6, 0x2
    lwz 3, 0x4(31)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0xd4
    li 6, 0x2
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
L_80103F10:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

