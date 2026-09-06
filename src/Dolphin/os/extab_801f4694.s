/*
 * UNIVERSAL BASE-ACTOR DEFAULT: "play spawn animation" hook. If
 * this->0x190 (a per-actor kind index) is set, queues a spawn cue
 * looked up from a per-kind table (lbl_80469F38); otherwise, unless
 * this->0xe8 is already set, queues a generic default spawn cue
 * (0x40002). One of the many actor lifecycle hooks every actor class
 * inherits unless it overrides its own.
 *
 * Attempted real-C++ promotion (Phase 4): logic/table lookup fully
 * confirmed correct (a direct translation matched every instruction),
 * but matches the well-established prologue-order wall - retail loads
 * this->0x190 BEFORE the r31 callee-save/copy, MWCC always does the
 * callee-save first regardless of source phrasing. Deferred
 * immediately per standing discipline for an already-established wall
 * class.
 */
.section extab, "a"
.balign 4
.global etb_80008EA4
etb_80008EA4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008EA4, 8

.section extabindex, "a"
.balign 4
.global eti_800165D0
eti_800165D0:
    .4byte fn_801F4694
    .4byte 0x00000070
    .4byte etb_80008EA4
.size eti_800165D0, 12

.text
.balign 4
.global fn_801F4694

fn_801F4694:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x190(3)
    stw 31, 0xc(1)
    mr 31, 3
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_801F46D0
    lis 4, lbl_80469F38@ha
    slwi 0, 0, 2
    addi 4, 4, lbl_80469F38@l
    li 5, 0x0
    add 4, 4, 0
    lwz 4, -0x4(4)
    bl fn_801F0E34
L_801F46D0:
    lwz 0, 0xe8(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801F46F0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2
    li 5, 0x0
    bl fn_801F0E34
L_801F46F0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
