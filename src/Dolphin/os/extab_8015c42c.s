/*
 * BOYO ("Bumper Block") actor cluster, part 4/4 - setParams().
 *
 * fn_8015C42C(this): resets update()'s (part 3/4) working counters and
 * direction floats to 0, and unpacks the raw spawn parameter this->0x90
 * into this->0x98 (a 2-bit "axis/direction" mode, bits[22:23]) and
 * this->0x238 (a 1-bit "double speed" flag, bit 15), then narrows
 * this->0x90 itself down to its low 3 bits (0-7) - the mode value
 * update()'s big switch actually dispatches on. Snapshots the spawn
 * position into this->0x24/0x28/0x2c and this->0x26c/0x270/0x274 (the
 * wave-motion center reference point). Looks up a mode-dependent initial
 * phase via fn_801F6874(this->0x98) into this->0x24c, sets a default
 * amplitude (this->0x234=1.0) and increment (this->0x250=100), then for
 * modes 2/3 and 4/5 overrides the amplitude with a different constant
 * and immediately recomputes the starting this->0xc/0x10 using the same
 * wave-table formula update() uses each frame - i.e. correctly
 * initializes BOYO's position on its motion curve rather than starting
 * at zero. Modes 2/4 reverse the increment direction; the 0x238 flag
 * doubles it. Finally resets this->0xbc=4 (a status/anim code) and
 * this->0x230=0 (the "cue fired" latch update() checks).
 */
.section extab, "a"
.balign 4
.global etb_80006FBC
etb_80006FBC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006FBC, 8

.section extabindex, "a"
.balign 4
.global eti_80013B28
eti_80013B28:
    .4byte fn_8015C42C
    .4byte 0x000001D8
    .4byte etb_80006FBC
.size eti_80013B28, 12

.text
.balign 4
.global fn_8015C42C

fn_8015C42C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC002A518 # lfs f0, lbl_8053D4B8@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x2
    stw 31, 0xc(1)
    mr 31, 3
    stw 4, 0x248(3)
    stw 4, 0x24c(3)
    stw 4, 0x250(3)
    stw 4, 0x23c(3)
    stw 4, 0x240(3)
    stw 4, 0x244(3)
    stfs 0, 0x268(3)
    stfs 0, 0x264(3)
    stfs 0, 0x260(3)
    sth 4, 0x94(3)
    lwz 3, 0x90(3)
    extrwi 3, 3, 2, 22
    stw 3, 0x98(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 15
    stw 3, 0x238(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 29
    stw 3, 0x90(31)
    sth 4, 0x25c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x24(31)
    lfs 0, 0x10(31)
    stfs 0, 0x28(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2c(31)
    stw 0, 0xb8(31)
    stw 4, 0x258(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x26c(31), 0, 0
    stfs 0, 0x274(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    clrlwi 3, 3, 16
    li 0, 0x64
    stw 3, 0x24c(31)
    .4byte 0xC002A518 # lfs f0, lbl_8053D4B8@sda21(r0)
    stw 0, 0x250(31)
    stfs 0, 0x234(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8015C500
    cmplwi 0, 0x3
    .4byte 0x40820050 # bne .L_8015C54C
L_8015C500:
    .4byte 0xC002A578 # lfs f0, lbl_8053D518@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    stfs 0, 0x234(31)
    lwz 0, 0x24c(31)
    lfs 2, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x26c(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x24c(31)
    lfs 2, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x270(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
L_8015C54C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x4
    .4byte 0x4182000C # beq .L_8015C560
    cmplwi 0, 0x5
    .4byte 0x40820050 # bne .L_8015C5AC
L_8015C560:
    .4byte 0xC002A57C # lfs f0, lbl_8053D51C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    stfs 0, 0x234(31)
    lwz 0, 0x24c(31)
    lfs 2, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x26c(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0xc(31)
    lwz 0, 0x24c(31)
    lfs 2, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x270(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    fmadds 0, 2, 1, 0
    stfs 0, 0x10(31)
L_8015C5AC:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_8015C5C0
    cmplwi 0, 0x4
    .4byte 0x4082000C # bne .L_8015C5C8
L_8015C5C0:
    li 0, -0x64
    stw 0, 0x250(31)
L_8015C5C8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8015C5E0
    lwz 0, 0x250(31)
    slwi 0, 0, 1
    stw 0, 0x250(31)
L_8015C5E0:
    li 3, 0x4
    li 0, 0x0
    stw 3, 0xbc(31)
    stw 0, 0x230(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

