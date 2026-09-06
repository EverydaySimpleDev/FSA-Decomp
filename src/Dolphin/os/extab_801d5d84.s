/*
 * fn_801D5D84(this, newState) (0x801D5D84-0x801D63D0, 0x64C/1612 bytes) - THE
 * state-machine "ENTER STATE" executor for dtor_801D46FC's class - the keystone
 * function referenced (as "commit new state") by every other method in this class
 * landed so far (fn_801D4A84, fn_801D5390, fn_801D5B70, etc). A FOURTH real
 * compiler jumptable (`jumptable_804A4B40`) on `newState` (0-0x1a), where each case
 * runs that state's one-time entry side effects: resetting timers this->0x254/0x258,
 * picking a random duration via the CONFIRMED fn_801CD664 PRNG-index helper (stored
 * into this->0x250, the SAME field every exit-condition evaluator compares against
 * this->0x24c), playing sounds via the CONFIRMED fn_801F0E34, zeroing the velocity/
 * position accumulators (this->0x3c/0x40/0x44/0x5d1), invoking further real methods
 * on the +0x448/+0x4c4 sub-objects (fn_80217A74/fn_80217DE8/fn_80217BC8/fn_80217AB8/
 * fn_80217ED4/fn_801D7638/fn_801D76B4), and in one case activating the CONFIRMED
 * embedded timed-cue lookup table at this+0x270 via fn_801D22DC (both
 * activate-sequence 1 and deactivate-with-0 variants). One case computes an initial
 * "orbit anchor" position via fn_801E4618 blended by TWO separate draws of the
 * CONFIRMED global LCG (`lbl_8053AAF8->0xb4`) into this->0x600/0x604.
 *
 * UNCONDITIONAL common exit (every case falls through to it): resets the elapsed-
 * time-in-state counter (this->0x24c = 0) and commits `this->0x248 = newState` -
 * this is the ACTUAL state-transition assignment every other method's "call
 * fn_801D5D84(this, X)" was indirectly requesting. This closes the loop on the
 * class's entire state machine: fn_801D5390 evaluates EXIT conditions per current
 * state, fn_801D5D84 runs ENTRY side effects and commits the new state, and
 * fn_801D4ED4/fn_801D47DC/fn_801D4A84 read this->0x248 for per-state ONGOING
 * behavior (movement/cutscene-cue/misc respectively) via 3 further separate
 * jumptables - a genuine textbook enter/update/exit FSM, now fully understood
 * architecturally even though several leaf callees remain unlanded.
 */

.section extab, "a"
.balign 4
.global etb_80008600
etb_80008600:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008600, 8

.section extabindex, "a"
.balign 4
.global eti_800159E8
eti_800159E8:
    .4byte fn_801D5D84
    .4byte 0x0000064C
    .4byte etb_80008600
.size eti_800159E8, 12

.text
.balign 4
.global fn_801D5D84

fn_801D5D84:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 4
    cmplwi 31, 0x1a
    stw 30, 0x38(1)
    mr 30, 3
    .4byte 0x41810608 # bgt .L_801D63AC
    lis 4, jumptable_804A4B40@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_804A4B40@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x480005E4 # b .L_801D63AC
    addi 3, 30, 0x448
    bl fn_80217CD8
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x89
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x480005BC # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    li 3, 0x1
    stfs 0, 0x258(30)
    bl fn_801CD664
    addi 0, 3, 0x1e
    stw 0, 0x250(30)
    .4byte 0x480005A0 # b .L_801D63AC
    bl fn_801E4D74
    .4byte 0xC002C18C # lfs f0, lbl_8053F12C@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x5b0(30)
    cmpwi 0, -0x1
    .4byte 0x40820018 # bne .L_801D5E3C
    li 3, 0xb5
    bl fn_801CD664
    addi 0, 3, 0x3c
    stw 0, 0x250(30)
    .4byte 0x48000574 # b .L_801D63AC
L_801D5E3C:
    li 3, 0xf1
    bl fn_801CD664
    addi 0, 3, 0x78
    stw 0, 0x250(30)
    .4byte 0x48000560 # b .L_801D63AC
    bl fn_801E4D54
    li 0, 0x1
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stb 0, 0x4c0(30)
    stfs 0, 0x4bc(30)
    stfs 0, 0x258(30)
    .4byte 0x48000544 # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x48000538 # b .L_801D63AC
    li 0, 0x32
    li 3, -0x1
    stw 0, 0x108(30)
    li 0, 0x3
    lwz 4, 0x230(30)
    ori 4, 4, 0x2000
    stw 4, 0x230(30)
    lwz 4, 0x230(30)
    rlwinm 4, 4, 0, 24, 21
    stw 4, 0x230(30)
    stw 3, 0x5b0(30)
    stw 0, 0xb0(30)
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    mr 5, 3
    mr 3, 30
    addi 4, 1, 0x28
    bl fn_801E4618
    lfs 6, 0x28(1)
    lis 3, 0x19
    lfs 0, 0x30(1)
    addi 5, 3, 0x660d
    lfs 5, 0x2c(1)
    li 3, 0x2
    lfs 2, 0x34(1)
    fsubs 1, 0, 6
    .4byte 0xC082C158 # lfs f4, lbl_8053F0F8@sda21(r0)
    fsubs 3, 2, 5
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    fmadds 1, 4, 1, 6
    .4byte 0xC042C138 # lfs f2, lbl_8053F0D8@sda21(r0)
    fmadds 3, 4, 3, 5
    stfs 1, 0x60c(30)
    stfs 3, 0x610(30)
    stfs 0, 0x614(30)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 3, 0x28(1)
    srwi 0, 0, 9
    lfs 0, 0x30(1)
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    fsubs 1, 0, 3
    lfs 0, 0x14(1)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 3
    stfs 0, 0x5bc(30)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(6)
    mullw 4, 0, 5
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 3, 0x2c(1)
    srwi 0, 0, 9
    lfs 0, 0x34(1)
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    fsubs 1, 0, 3
    lfs 0, 0x10(1)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 3
    stfs 0, 0x5c0(30)
    bl fn_801CD664
    addi 0, 3, 0x1
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stb 0, 0x5d0(30)
    stfs 0, 0x258(30)
    .4byte 0x4800040C # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x48000400 # b .L_801D63AC
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801D5FDC
    .4byte 0xC002C164 # lfs f0, lbl_8053F104@sda21(r0)
    li 3, 0xb5
    stfs 0, 0x258(30)
    bl fn_801CD664
    addi 0, 3, 0xb4
    stw 0, 0x250(30)
    .4byte 0x480003D4 # b .L_801D63AC
L_801D5FDC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801D5FF4
    .4byte 0xC002C164 # lfs f0, lbl_8053F104@sda21(r0)
    .4byte 0x48000008 # b .L_801D5FF8
L_801D5FF4:
    .4byte 0xC002C138 # lfs f0, lbl_8053F0D8@sda21(r0)
L_801D5FF8:
    stfs 0, 0x258(30)
    li 3, 0x1e1
    bl fn_801CD664
    addi 0, 3, 0xf0
    stw 0, 0x250(30)
    .4byte 0x480003A0 # b .L_801D63AC
    lwz 0, 0x508(30)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_801D602C
    addi 3, 30, 0x4c4
    bl fn_801D7638
    addi 3, 30, 0x4c4
    bl fn_801D76B4
L_801D602C:
    addi 3, 30, 0x448
    bl fn_80217A74
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stb 0, 0x5d1(30)
    .4byte 0x48000358 # b .L_801D63AC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801D6070
    .4byte 0xC002C164 # lfs f0, lbl_8053F104@sda21(r0)
    .4byte 0x48000008 # b .L_801D6074
L_801D6070:
    .4byte 0xC002C138 # lfs f0, lbl_8053F0D8@sda21(r0)
L_801D6074:
    stfs 0, 0x258(30)
    li 3, 0x79
    bl fn_801CD664
    addi 0, 3, 0x78
    addi 3, 30, 0x4c4
    stw 0, 0x250(30)
    addi 4, 30, 0xc
    lwz 5, 0x4(30)
    bl fn_801D74E0
    .4byte 0x48000314 # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x508(30)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_801D60B8
    li 0, 0x1
    stb 0, 0x51c(30)
L_801D60B8:
    li 0, 0x0
    stb 0, 0x5cf(30)
    .4byte 0x480002EC # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x480002E0 # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    li 0, 0x0
    addi 3, 30, 0x4c4
    addi 4, 30, 0xc
    stfs 0, 0x258(30)
    stb 0, 0x5cf(30)
    lwz 5, 0x4(30)
    bl fn_801D74E0
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x68
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480002A8 # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x258(30)
    .4byte 0x4800029C # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    .4byte 0x4800028C # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    lis 4, 0x4
    addi 4, 4, 0x61
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801F0E34
    .4byte 0x48000270 # b .L_801D63AC
    .4byte 0xC002C190 # lfs f0, lbl_8053F130@sda21(r0)
    addi 3, 30, 0x270
    li 4, 0x1
    li 5, 0x2
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x62
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800023C # b .L_801D63AC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    addi 3, 30, 0x270
    li 4, 0x0
    li 5, 0x2
    stfs 0, 0x258(30)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800021C # b .L_801D63AC
    lwz 0, 0x5dc(30)
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stw 0, 0x5fc(30)
    stfs 0, 0x608(30)
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D61C4
    lwz 0, 0x5d8(30)
    .4byte 0xC002C170 # lfs f0, lbl_8053F110@sda21(r0)
    stw 0, 0x5fc(30)
    stfs 0, 0x608(30)
L_801D61C4:
    lwz 3, 0x5fc(30)
    bl fn_801CD2F8
    mr 5, 3
    mr 3, 30
    addi 4, 1, 0x18
    bl fn_801E4618
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 8, 3, 0x660d
    .4byte 0xC042C138 # lfs f2, lbl_8053F0D8@sda21(r0)
    lwz 0, 0xb4(9)
    mr 3, 30
    addi 4, 1, 0x18
    addi 5, 30, 0x600
    mullw 7, 0, 8
    li 6, 0x0
    addis 7, 7, 0x3c6f
    subi 0, 7, 0xca1
    stw 0, 0xb4(9)
    lwz 0, 0xb4(9)
    lfs 3, 0x18(1)
    srwi 0, 0, 9
    lfs 0, 0x20(1)
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    fsubs 1, 0, 3
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 3
    stfs 0, 0x600(30)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(9)
    mullw 7, 0, 8
    addis 7, 7, 0x3c6f
    subi 0, 7, 0xca1
    stw 0, 0xb4(9)
    lwz 0, 0xb4(9)
    lfs 3, 0x1c(1)
    srwi 0, 0, 9
    lfs 0, 0x24(1)
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    fsubs 1, 0, 3
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 3
    stfs 0, 0x604(30)
    bl fn_801E44CC
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    li 0, 0x0
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stb 0, 0x5d1(30)
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_801D62E4
    addi 3, 30, 0x448
    bl fn_80217A74
    addi 3, 30, 0x448
    bl fn_80217DE8
    addi 3, 30, 0x448
    bl fn_80217BC8
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x3e
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000CC # b .L_801D63AC
L_801D62E4:
    addi 3, 30, 0x448
    bl fn_80217AB8
    lis 6, 0x5
    lwz 4, 0x5fc(30)
    mr 3, 30
    addi 5, 30, 0x60c
    addi 6, 6, 0x3d
    bl fn_801CDCD0
    .4byte 0x480000A8 # b .L_801D63AC
    .4byte 0xC062C138 # lfs f3, lbl_8053F0D8@sda21(r0)
    li 0, 0x0
    .4byte 0xC042C13C # lfs f2, lbl_8053F0DC@sda21(r0)
    stfs 3, 0x60(30)
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 3, 0x64(30)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 3, 0x80(30)
    stfs 3, 0x84(30)
    stfs 2, 0x88(30)
    stfs 2, 0x8c(30)
    stfs 0, 0x258(30)
    stfs 0, 0x254(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stb 0, 0x5d1(30)
    .4byte 0x4800003C # b .L_801D63AC
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0x8a
    bl fn_801F0E34
    addi 3, 30, 0x448
    bl fn_80217ED4
    .4byte 0x48000020 # b .L_801D63AC
    addi 3, 30, 0x568
    li 4, 0x0
    bl fn_801E6A84
    mr 3, 30
    bl fn_801F3668
    li 0, 0x1
    stb 0, 0x11c(30)
L_801D63AC:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

