/*
 * fn_801008FC(this): first method of the class whose base destructor is
 * fn_8010089C. Reads a target slot index from this->0x10c; if valid (>=0),
 * validates it's still alive via fn_8022F514 (the confirmed "slot valid"
 * check also used in fn_801003F4/fn_800FF6F8's loops) and if dead, replaces
 * it via fn_8022F3DC. Then branches on this->0x244:
 *  - ==1: plays 3 sound effects via the confirmed fn_8013CC50 primitive
 *    (IDs 0x59/0x5a/0x5b), calls fn_801F0E34 (confirmed effect-notify), and
 *    fn_80238548 with a position/index payload - a "hit reaction" cue.
 *  - else: increments one of two per-target 16-bit counters (hit at +0x260,
 *    miss at +0x268) inside an array at this->0x290, indexed by
 *    target_slot*2. The increment amount depends on whether the target
 *    slot equals (this->0x244 - 2): matches -> +3 hit / +0 miss;
 *    mismatch+this->0x244!=0 -> +1 hit / +1 miss; this->0x244==0 -> +1
 *    hit / +0 miss. Reads like a per-target hit/miss scoring tally.
 */

.section extab, "a"
.balign 4
.global etb_800058E0
etb_800058E0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800058E0, 8

.section extabindex, "a"
.balign 4
.global eti_80011C80
eti_80011C80:
    .4byte fn_801008FC
    .4byte 0x00000194
    .4byte etb_800058E0
.size eti_80011C80, 12

.text
.balign 4
.global fn_801008FC

fn_801008FC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    lwz 31, 0x10c(3)
    cmpwi 31, 0x0
    .4byte 0x4180015C # blt .L_80100A78
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0x99
    bl fn_801F0E34
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8010094C
    mr 3, 31
    bl fn_8022F3DC
    mr 31, 3
L_8010094C:
    lbz 3, 0x244(30)
    cmplwi 3, 0x1
    .4byte 0x408200D8 # bne .L_80100A2C
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x10
    lfs 3, 0x14(30)
    li 5, 0x59
    .4byte 0xC00291A4 # lfs f0, lbl_8053C144@sda21(r0)
    li 6, 0x1
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    li 8, 0x0
    lfs 2, 0x10(1)
    li 9, 0x0
    stfs 3, 0x18(1)
    li 10, 0x1
    fadds 0, 2, 0
    stfs 0, 0x10(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x10
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    li 5, 0x5a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x10
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    li 5, 0x5b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    lfs 1, 0x10(1)
    mr 3, 31
    lfs 0, 0x14(1)
    addi 5, 1, 0x8
    stfs 1, 0x8(1)
    li 4, 0x0
    li 6, 0xb
    stfs 0, 0xc(1)
    bl fn_80238548
    .4byte 0x48000050 # b .L_80100A78
L_80100A2C:
    subi 0, 3, 0x2
    li 4, 0x1
    cmpw 31, 0
    li 5, 0x0
    .4byte 0x4082000C # bne .L_80100A48
    li 4, 0x3
    .4byte 0x48000010 # b .L_80100A54
L_80100A48:
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80100A54
    li 5, 0x1
L_80100A54:
    lwz 0, 0x290(30)
    slwi 3, 31, 1
    add 3, 0, 3
    lhz 0, 0x260(3)
    add 0, 0, 4
    sth 0, 0x260(3)
    lhz 0, 0x268(3)
    add 0, 0, 5
    sth 0, 0x268(3)
L_80100A78:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

