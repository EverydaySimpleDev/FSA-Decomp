/*
 * FLME actor cluster, part 5/6 - setParams(). Track A (byte-exact asm)
 * + structural overview.
 *
 * fn_8015EDF4(this): resets all working counters/direction fields to 0
 * and this->0x118=4. Unpacks the raw spawn parameter this->0x90 into
 * this->0x258 (2-bit) and this->0x25c (1-bit). If an 8-bit "special
 * mode" sub-field (bits[16:23]) is nonzero: takes an entirely different
 * init branch - sets this->0x60/64/68/6c to alternate constants, reads
 * this->0x94 (type, 0-8) directly from that sub-field, sets
 * this->0x254=1 immediately, and force-starts in one of states 6/7/8
 * based on this->0x94 - a scripted/pre-triggered variant, matching the
 * mode-2/mode-3 pattern already confirmed in FARY's setParams (see
 * [[project_fsa_fary_actor_progress]]).
 *
 * Otherwise (normal path): this->0x94 comes from the raw low byte of
 * the spawn param (capped at <9, else reset to 0/1), this->0x98 (a
 * 2-bit orientation 0-3) from another sub-field. A switch on this->0x94
 * sets the STARTING update() state (0/1/2/3) directly, and for types 0
 * and 6 eagerly spawns all FOUR flame/ember effect objects right away
 * (fn_8013CC50, codes 0x3e/0x3b/0x3c/0x3d into this->0x270/0x264/0x268/
 * 0x26c - confirming the destructor's 4-slot cull loop, part 6/6, and
 * fn_8015DF7C's per-type effect-slot handling, part 3/6). A second
 * switch on this->0x98 (orientation) sets a default direction vector
 * (this->0x3c/0x40/0x44).
 *
 * Finally calls fn_8015EA2C (part 4/6) once, and - unless force-started
 * in state 4 or 5 - immediately calls fn_8015DF7C (part 3/6) too, i.e.
 * setParams kickstarts one full frame of update() logic right away.
 */
.section extab, "a"
.balign 4
.global etb_8000701C
etb_8000701C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000701C, 8

.section extabindex, "a"
.balign 4
.global eti_80013BB8
eti_80013BB8:
    .4byte fn_8015EDF4
    .4byte 0x000003A8
    .4byte etb_8000701C
.size eti_80013BB8, 12

.text
.balign 4
.global fn_8015EDF4

fn_8015EDF4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stw 0, 0x240(3)
    li 3, 0x4
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x264(31)
    stw 0, 0x268(31)
    stw 0, 0x26c(31)
    stw 0, 0x270(31)
    stw 0, 0x254(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0x118(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 12
    stw 0, 0x258(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 11
    stw 0, 0x25c(31)
    lwz 4, 0x90(31)
    rlwinm. 0, 4, 0, 16, 23
    .4byte 0x4082024C # bne .L_8015F0C0
    clrlwi 0, 4, 24
    sth 0, 0x94(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 14
    stw 0, 0x98(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_8015EEA0
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_8015EEAC
L_8015EEA0:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000008 # b .L_8015EEB0
L_8015EEAC:
    stw 3, 0x114(31)
L_8015EEB0:
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    stfs 0, 0x260(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x9
    .4byte 0x4180000C # blt .L_8015EECC
    li 0, 0x0
    sth 0, 0x94(31)
L_8015EECC:
    lhz 0, 0x94(31)
    cmpwi 0, 0x3
    .4byte 0x41820150 # beq .L_8015F024
    .4byte 0x4080001C # bge .L_8015EEF4
    cmpwi 0, 0x1
    .4byte 0x4182012C # beq .L_8015F00C
    .4byte 0x40800134 # bge .L_8015F018
    cmpwi 0, 0x0
    .4byte 0x408000FC # bge .L_8015EFE8
    .4byte 0x4800013C # b .L_8015F02C
L_8015EEF4:
    cmpwi 0, 0x6
    .4byte 0x418200F0 # beq .L_8015EFE8
    .4byte 0x40800130 # bge .L_8015F02C
    cmplwi 0, 0x5
    .4byte 0x40820010 # bne .L_8015EF14
    .4byte 0xC002A5FC # lfs f0, lbl_8053D59C@sda21(r0)
    stfs 0, 0x260(31)
    .4byte 0x4800000C # b .L_8015EF1C
L_8015EF14:
    .4byte 0xC002A600 # lfs f0, lbl_8053D5A0@sda21(r0)
    stfs 0, 0x260(31)
L_8015EF1C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x260(31)
    li 5, 0x3e
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x270(31)
    addi 4, 31, 0xc
    li 5, 0x3b
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, -0x1
    lfs 1, 0x260(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x264(31)
    addi 4, 31, 0xc
    li 5, 0x3c
    li 6, 0x1
    lwz 3, 0x4(31)
    li 7, 0x1
    lfs 1, 0x260(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x268(31)
    addi 4, 31, 0xc
    li 5, 0x3d
    li 6, 0x1
    lwz 3, 0x4(31)
    li 7, 0x1
    lfs 1, 0x260(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x26c(31)
    li 4, 0x1
    li 3, 0x8
    li 0, 0x0
    stw 4, 0x240(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000048 # b .L_8015F02C
L_8015EFE8:
    .4byte 0xC002A5FC # lfs f0, lbl_8053D59C@sda21(r0)
    li 4, 0x1
    li 3, 0x8
    li 0, 0x0
    stfs 0, 0x260(31)
    stw 4, 0x240(31)
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000024 # b .L_8015F02C
L_8015F00C:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_8015F02C
L_8015F018:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8015F02C
L_8015F024:
    li 0, 0x3
    stw 0, 0x230(31)
L_8015F02C:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_8015F090
    .4byte 0x40800014 # bge .L_8015F04C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8015F058
    .4byte 0x40800030 # bge .L_8015F074
    .4byte 0x48000100 # b .L_8015F148
L_8015F04C:
    cmpwi 0, 0x4
    .4byte 0x408000F8 # bge .L_8015F148
    .4byte 0x48000054 # b .L_8015F0A8
L_8015F058:
    .4byte 0xC002A654 # lfs f0, lbl_8053D5F4@sda21(r0)
    .4byte 0xC022A650 # lfs f1, lbl_8053D5F0@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480000D8 # b .L_8015F148
L_8015F074:
    .4byte 0xC002A678 # lfs f0, lbl_8053D618@sda21(r0)
    .4byte 0xC022A650 # lfs f1, lbl_8053D5F0@sda21(r0)
    stfs 0, 0x3c(31)
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    .4byte 0x480000BC # b .L_8015F148
L_8015F090:
    .4byte 0xC022A64C # lfs f1, lbl_8053D5EC@sda21(r0)
    .4byte 0xC002A654 # lfs f0, lbl_8053D5F4@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x480000A4 # b .L_8015F148
L_8015F0A8:
    .4byte 0xC022A64C # lfs f1, lbl_8053D5EC@sda21(r0)
    .4byte 0xC002A678 # lfs f0, lbl_8053D618@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
    .4byte 0x4800008C # b .L_8015F148
L_8015F0C0:
    .4byte 0xC022A67C # lfs f1, lbl_8053D61C@sda21(r0)
    .4byte 0xC002A680 # lfs f0, lbl_8053D620@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 8, 16
    sth 0, 0x94(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x9
    .4byte 0x4180000C # blt .L_8015F0F8
    li 0, 0x1
    sth 0, 0x94(31)
L_8015F0F8:
    li 0, 0x1
    stw 0, 0x254(31)
    lhz 0, 0x94(31)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_8015F134
    .4byte 0x40800010 # bge .L_8015F11C
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_8015F128
    .4byte 0x48000030 # b .L_8015F148
L_8015F11C:
    cmpwi 0, 0x4
    .4byte 0x40800028 # bge .L_8015F148
    .4byte 0x4800001C # b .L_8015F140
L_8015F128:
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48000018 # b .L_8015F148
L_8015F134:
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8015F148
L_8015F140:
    li 0, 0x8
    stw 0, 0x230(31)
L_8015F148:
    li 0, 0x0
    mr 3, 31
    stw 0, 0x250(31)
    bl fn_8015EA2C
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8015F16C
    .4byte 0xC002A64C # lfs f0, lbl_8053D5EC@sda21(r0)
    stfs 0, 0x260(31)
L_8015F16C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x41820014 # beq .L_8015F188
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_8015F188
    mr 3, 31
    bl fn_8015DF7C
L_8015F188:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

