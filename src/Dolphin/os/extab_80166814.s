/*
 * ARRW (arrow projectile) actor cluster, part 5/6 - setParams().
 *
 * fn_80166814(this): unpacks the raw spawn parameter into this->0x98
 * (2-bit orientation) and this->0x94 (4-bit type, 0-15), narrows
 * this->0x90 to its low 2 bits. Calls GetSessionFlag_0x6f() (shared with
 * draw(), part 1/6); if true, looks up a per-orientation counter table
 * (`lbl_804C6330`, indexed by the narrowed this->0x90) and increments
 * it - a "count of active arrows in this orientation" tracker.
 *
 * Resets both effect slots (this->0x278/0x27c) and all working
 * counters/timers to 0, sets a default interaction box (this->0x60-
 * 0x8c). A switch on this->0x98 (orientation) sets the initial velocity
 * vector (this->0x3c/0x40/0x44) to one of 4 constant directions - the
 * same orientation-to-direction pattern as BOYO/FLME. Finally arms the
 * flight timers (this->0x234, this->0x24c=500, this->0x108=10000 -
 * lifetime), echoes the orientation into this->0x268, and resets to
 * state 0.
 */
.section extab, "a"
.balign 4
.global etb_8000715C
etb_8000715C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000715C, 8

.section extabindex, "a"
.balign 4
.global eti_80013D38
eti_80013D38:
    .4byte fn_80166814
    .4byte 0x00000198
    .4byte etb_8000715C
.size eti_80013D38, 12

.text
.balign 4
.global fn_80166814

fn_80166814:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x90(3)
    extrwi 0, 0, 2, 26
    stw 0, 0x98(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 20
    sth 0, 0x94(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 30
    stw 0, 0x90(3)
    bl GetSessionFlag_0x6f
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80166878
    lwz 3, 0x90(31)
    bl fn_8022F340
    lis 4, lbl_804C6330@ha
    slwi 5, 3, 2
    addi 4, 4, lbl_804C6330@l
    lwzx 3, 4, 5
    addi 0, 3, 0x1
    stwx 0, 4, 5
L_80166878:
    li 0, 0x0
    .4byte 0xC022A84C # lfs f1, lbl_8053D7EC@sda21(r0)
    stw 0, 0x278(31)
    .4byte 0xC002A850 # lfs f0, lbl_8053D7F0@sda21(r0)
    stw 0, 0x27c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x258(31)
    stw 0, 0x25c(31)
    stw 0, 0x260(31)
    stw 0, 0x264(31)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x250(31)
    stw 0, 0x254(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_8016692C
    .4byte 0x40800014 # bge .L_801668F0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801668FC
    .4byte 0x4080002C # bge .L_80166914
    .4byte 0x4800006C # b .L_80166958
L_801668F0:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_80166958
    .4byte 0x4800004C # b .L_80166944
L_801668FC:
    .4byte 0xC022A838 # lfs f1, lbl_8053D7D8@sda21(r0)
    .4byte 0xC002A828 # lfs f0, lbl_8053D7C8@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000048 # b .L_80166958
L_80166914:
    .4byte 0xC022A83C # lfs f1, lbl_8053D7DC@sda21(r0)
    .4byte 0xC002A828 # lfs f0, lbl_8053D7C8@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x48000030 # b .L_80166958
L_8016692C:
    .4byte 0xC022A828 # lfs f1, lbl_8053D7C8@sda21(r0)
    .4byte 0xC002A838 # lfs f0, lbl_8053D7D8@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x48000018 # b .L_80166958
L_80166944:
    .4byte 0xC022A828 # lfs f1, lbl_8053D7C8@sda21(r0)
    .4byte 0xC002A83C # lfs f0, lbl_8053D7DC@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
L_80166958:
    .4byte 0xC002A854 # lfs f0, lbl_8053D7F4@sda21(r0)
    li 4, 0x1f4
    li 3, 0x0
    li 0, 0x2710
    stfs 0, 0x234(31)
    stw 4, 0x24c(31)
    stb 3, 0x238(31)
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
    stw 3, 0x26c(31)
    stw 3, 0x270(31)
    stw 0, 0x108(31)
    lwz 0, 0x98(31)
    stw 0, 0x268(31)
    stw 3, 0x230(31)
    stb 3, 0x274(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

