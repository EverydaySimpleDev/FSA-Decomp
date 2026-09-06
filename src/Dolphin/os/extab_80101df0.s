/*
 * fn_80101DF0(this): the fn_8010089C-class's REAL per-frame dispatch entry
 * point (this is the function that must be called every tick - it, not
 * fn_80100D28 directly, decides whether the update() jumptable dispatcher
 * runs at all). Branches on the same this->0x90 bit-15 mode flag checked in
 * fn_80101B48:
 *  - Clear: just calls fn_80100D28 (the update() jumptable dispatcher
 *    landed earlier) - the normal per-frame path.
 *  - Set: runs an "outro/celebration" sequence instead: advances mod-8/
 *    mod-2 counters (this->0x245/0x246), calls fn_8030C210 via the shared
 *    lbl_8053AB10 global, increments this->0x234 and on every 4th tick
 *    (this->0x234 & 3 == 0) plays a tick sound (fn_8013CC50, ID 0x1da);
 *    once this->0x234 reaches 0x28 (40), sets this->0x240=1 and
 *    this->0xb0=0x1100 (a bitmask/flag write); at exactly 0xa0 (160) plays
 *    another sound cue and calls fn_801F3668 (an unidentified "finish"
 *    trigger); always ends by calling fn_801F3D94(this, 1) (unidentified
 *    finalize/notify call). This is the minigame's end-of-round outro
 *    timer, confirming fn_80100D28's jumptable is bypassed once the round
 *    is over.
 */

.section extab, "a"
.balign 4
.global etb_80005900
etb_80005900:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005900, 8

.section extabindex, "a"
.balign 4
.global eti_80011CB0
eti_80011CB0:
    .4byte fn_80101DF0
    .4byte 0x00000130
    .4byte etb_80005900
.size eti_80011CB0, 12

.text
.balign 4
.global fn_80101DF0

fn_80101DF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x418200FC # beq .L_80101F08
    lbz 3, 0x245(31)
    addi 0, 3, 0x1
    stb 0, 0x245(31)
    lbz 0, 0x245(31)
    cmplwi 0, 0x8
    .4byte 0x4082002C # bne .L_80101E50
    lbz 3, 0x246(31)
    addi 0, 3, 0x1
    stb 0, 0x246(31)
    lbz 0, 0x246(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_80101E48
    li 0, 0x0
    stb 0, 0x246(31)
L_80101E48:
    li 0, 0x0
    stb 0, 0x245(31)
L_80101E50:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x28
    .4byte 0x40800038 # bge .L_80101EAC
    clrlwi. 0, 0, 30
    .4byte 0x40820090 # bne .L_80101F0C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000064 # b .L_80101F0C
L_80101EAC:
    li 3, 0x1
    li 0, 0x1100
    stw 3, 0x240(31)
    stw 0, 0xb0(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0xa0
    .4byte 0x40820034 # bne .L_80101EF8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_801F3668
L_80101EF8:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    .4byte 0x48000008 # b .L_80101F0C
L_80101F08:
    bl fn_80100D28
L_80101F0C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

