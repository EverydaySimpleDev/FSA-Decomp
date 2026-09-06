/*
 * fn_801D6554(this) (0x801D6554-0x801D686C, 0x318/792 bytes) - the REAL
 * constructor/setParams() for dtor_801D46FC's class, tying together nearly
 * everything landed for this class so far:
 *
 * - Calls fn_801D0ED0(this) (base construction, not yet landed), then derives
 *   this->0x5dc (the "self type < 8" gate variable read throughout this class's
 *   other methods, e.g. fn_801D4C70/fn_801D41B8) directly from bits of the
 *   CONFIRMED universal spawn-parameter field this->0x90.
 * - Extracts more this->0x90 bits into an initial facing angle/orientation pair
 *   (this->0x5e0/0x5e4, via the classic `0x4330....` int-to-double trick) and two
 *   sub-type flag bytes (this->0x5e8/0x5e9).
 * - Calls fn_801E4790/fn_801E4758(this) (not yet landed), then initializes core
 *   state: this->0xb0=0, this->0x98=2, this->0x230 flags |=0x320, this->0x114=2,
 *   this->0x108=this->0x244=1000 (a duration budget), this->0x54/0x58/0x5c=a
 *   shared constant, this->0x60c/0x610/0x614=self position (an anchor/spawn-
 *   position cache), this->0x14 clamped to `lbl_8053F108`.
 * - Calls fn_801EBA14(&localBuf) then copies its 9-float+halfword result into
 *   this->0x470-0x494 via fn_801EB710(this+0x464, localBuf, self type) - a 4TH
 *   real method confirmed on the this+0x464 sub-object (alongside
 *   dtor_801EB8CC/fn_801EB418/fn_801EB648) - this is that sub-object's own
 *   real init().
 * - Picks a random initial sub-state (this->0x5b8, via the CONFIRMED
 *   fn_801CD664 PRNG-index helper) and computes a randomized "home orbit"
 *   target (this->0x5ec/0x5f0/0x5f4/0x5f8) from the spawn-derived angle/flags.
 * - Reads the CONFIRMED global "special mode" flag (`lbl_8053AAF8->0x7e`, also
 *   checked by fn_801D5390/fn_801D5B70) to pick an initial mode byte
 *   this->0x5cc (6 or 3).
 * - Commits initial FSM state (this->0x248=0, this->0x24c=0, this->0x250=-1,
 *   this->0x254/0x258=0) then REGISTERS this class's own timed-cue sequence
 *   array (`lbl_8053A138`, count=2) via the CONFIRMED fn_801D2608, selects
 *   sequence 0 via fn_801D22DC, and primes it via the CONFIRMED
 *   fn_801D1D60 "what's due now" query - closing the loop on
 *   [[project_fsa_multiple_inheritance_pattern]]'s shared component: this class
 *   both OWNS (dtor_801D46FC), USES (fn_801D5338/fn_801D5D84), and now REGISTERS
 *   its own timed-cue lookup table right here in the constructor.
 * - Ends with settings/registry setup (GetRoomConfigRecord/fn_802D7440), 4 repeated
 *   calls to an SDK-shaped fn_80304C10 (likely per-layer collision/sound
 *   registration), a virtual dispatch through the CONFIRMED global registry
 *   singleton (`lbl_8053AAF8->0xa4`) with a 4-char tag `0x53434820` ("SCH "),
 *   and a final fn_802F9714 call against the CONFIRMED "current manager" global
 *   `lbl_8053AB10->0x20` - likely registering this actor's interaction volume
 *   with the room/level manager.
 */

.section extab, "a"
.balign 4
.global etb_80008618
etb_80008618:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008618, 8

.section extabindex, "a"
.balign 4
.global eti_80015A0C
eti_80015A0C:
    .4byte fn_801D6554
    .4byte 0x00000318
    .4byte etb_80008618
.size eti_80015A0C, 12

.text
.balign 4
.global fn_801D6554

fn_801D6554:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x5dc(31)
    lwz 3, 0x5dc(31)
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_801D6594
    addi 0, 3, 0x7
    stw 0, 0x5dc(31)
L_801D6594:
    lwz 4, 0x90(31)
    lis 5, 0x4330
    stw 5, 0x38(1)
    mr 3, 31
    rlwinm 0, 4, 11, 23, 28
    rlwinm 6, 4, 19, 23, 28
    stw 0, 0x3c(1)
    li 4, 0x0
    .4byte 0xC842C1A8 # lfd f2, lbl_8053F148@sda21(r0)
    lfd 0, 0x38(1)
    stw 6, 0x34(1)
    fsubs 0, 0, 2
    .4byte 0xC062C19C # lfs f3, lbl_8053F13C@sda21(r0)
    stw 5, 0x30(1)
    lfd 1, 0x30(1)
    fadds 0, 3, 0
    fsubs 1, 1, 2
    stfs 0, 0x5e0(31)
    fadds 0, 3, 1
    stfs 0, 0x5e4(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 6, 16
    stb 0, 0x5e8(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 6, 22
    stb 0, 0x5e9(31)
    bl fn_801E4790
    mr 3, 31
    bl fn_801E4758
    li 0, 0x0
    li 6, 0x2
    stw 0, 0xb0(31)
    li 4, 0x3e8
    li 0, 0x1
    .4byte 0xC022C1A0 # lfs f1, lbl_8053F140@sda21(r0)
    stw 6, 0x98(31)
    addi 3, 1, 0x8
    .4byte 0xC002C168 # lfs f0, lbl_8053F108@sda21(r0)
    lwz 5, 0x230(31)
    ori 5, 5, 0x320
    stw 5, 0x230(31)
    stw 6, 0x114(31)
    stw 4, 0x108(31)
    lwz 4, 0x108(31)
    stw 4, 0x244(31)
    stb 0, 0x196(31)
    stfs 1, 0x54(31)
    stfs 1, 0x58(31)
    stfs 1, 0x5c(31)
    lfs 1, 0xc(31)
    stfs 1, 0x60c(31)
    lfs 1, 0x10(31)
    stfs 1, 0x610(31)
    lfs 1, 0x14(31)
    stfs 1, 0x614(31)
    stfs 0, 0x14(31)
    bl fn_801EBA14
    li 0, 0x1
    addi 3, 31, 0x464
    stw 0, 0x8(1)
    addi 5, 31, 0xc
    stw 0, 0xc(1)
    stw 0, 0x470(31)
    lwz 0, 0xc(1)
    stw 0, 0x474(31)
    lfs 0, 0x10(1)
    stfs 0, 0x478(31)
    lfs 0, 0x14(1)
    stfs 0, 0x47c(31)
    lfs 0, 0x18(1)
    stfs 0, 0x480(31)
    lfs 0, 0x1c(1)
    stfs 0, 0x484(31)
    lfs 0, 0x20(1)
    stfs 0, 0x488(31)
    lfs 0, 0x24(1)
    stfs 0, 0x48c(31)
    lfs 0, 0x28(1)
    stfs 0, 0x490(31)
    lha 0, 0x2c(1)
    sth 0, 0x494(31)
    lwz 4, 0x4(31)
    bl fn_801EB710
    lwz 0, 0x4(31)
    li 3, 0x4
    stw 0, 0x5d8(31)
    bl fn_801CD664
    stw 3, 0x5b8(31)
    lis 0, 0x4330
    .4byte 0xC862C1A8 # lfd f3, lbl_8053F148@sda21(r0)
    lfs 0, 0xc(31)
    stw 0, 0x40(1)
    .4byte 0xC082C19C # lfs f4, lbl_8053F13C@sda21(r0)
    stfs 0, 0x5bc(31)
    .4byte 0xC0A2C130 # lfs f5, lbl_8053F0D0@sda21(r0)
    lfs 0, 0x10(31)
    .4byte 0xC042C1A4 # lfs f2, lbl_8053F144@sda21(r0)
    stfs 0, 0x5c0(31)
    lbz 0, 0x5e8(31)
    lfs 0, 0x5e0(31)
    stw 0, 0x44(1)
    lfs 6, 0x5e4(31)
    lfd 1, 0x40(1)
    fsubs 1, 1, 3
    fmadds 0, 4, 1, 0
    fadds 0, 5, 0
    stfs 0, 0x5ec(31)
    stfs 6, 0x5f0(31)
    lfs 1, 0x5e4(31)
    lfs 0, 0x5ec(31)
    fadds 1, 2, 1
    stfs 0, 0x5f4(31)
    stfs 1, 0x5f8(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801D6774
    li 0, 0x6
    stb 0, 0x5cc(31)
    .4byte 0x4800000C # b .L_801D677C
L_801D6774:
    li 0, 0x3
    stb 0, 0x5cc(31)
L_801D677C:
    li 5, 0x0
    li 0, -0x1
    stw 5, 0x248(31)
    addi 3, 31, 0x270
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    .4byte 0x388D8578 # li r4, lbl_8053A138@sda21
    stw 5, 0x24c(31)
    li 5, 0x2
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lis 3, lbl_804694C0@ha
    li 29, 0x0
    addi 30, 3, lbl_804694C0@l
    lis 31, 0x601
L_801D67E4:
    mr 3, 29
    mr 4, 30
    addi 5, 31, 0x7000
    li 6, 0x1
    li 7, 0x0
    bl fn_80304C10
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE0 # blt .L_801D67E4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_804694C0@ha
    addi 5, 3, lbl_804694C0@l
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
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

