/*
 * fn_801D5180(this, arg) (0x801D5180-0x801D5338, 0x1B8/440 bytes) - a sound-cue +
 * sub-component driver for dtor_801D46FC's class, gated by bit 13 of this->0x230:
 *
 * - Bit CLEAR (main path): decrements a byte timer (this->0x5ce); at 0, sets bit
 *   0x4000 of this->0x230. Builds a position (this->0xc/0x10 blended with the
 *   recurring `lbl_8053F0EC` constant) and calls fn_801EB418(this+0x464, posPtr)
 *   then fn_801EB648(this+0x464) -> bool. this+0x464 is the SAME sub-object
 *   dtor_801D46FC tears down via dtor_801EB8CC - a 2ND real (non-destructor) method
 *   confirmed on it. If true, plays sound/effect 0x40051 via the CONFIRMED
 *   fn_801F0E34 (see [[project_fsa_effect_playback_primitive]]). Then calls
 *   fn_801E5754(this) and fn_801E4D88(this) (both not yet landed).
 * - Bit SET (alternate path): calls fn_801D6E20(this+0x4c4, this+0xc) - this+0x4c4
 *   is the SAME sub-object dtor_801D46FC tears down via dtor_801D7730, so this is
 *   ANOTHER cross-confirmed multi-method sub-object. If this->0x108>0, bit 2 of
 *   this->0x230 is clear, and state (this->0x248) isn't 0xb/0x17: plays sound
 *   0x4005e via fn_801F0E34; if state is additionally in [0xc,0xd], ALSO plays
 *   0x4005f.
 *
 * Common tail: if (state in [6,8)) OR bit 2 of this->0x230 is set, calls
 * fn_801CE2BC(this, arg) (not yet landed) with the caller-supplied `arg` passed
 * straight through. Finally calls fn_8021798C(this+0x448) - a 3RD real method
 * confirmed on the this+0x448 sub-object (dtor_80217F80/fn_80217CD8/this).
 */

.section extab, "a"
.balign 4
.global etb_800085E0
etb_800085E0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800085E0, 8

.section extabindex, "a"
.balign 4
.global eti_800159B8
eti_800159B8:
    .4byte fn_801D5180
    .4byte 0x000001B8
    .4byte etb_800085E0
.size eti_800159B8, 12

.text
.balign 4
.global fn_801D5180

fn_801D5180:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x408200B4 # bne .L_801D5258
    lwz 0, 0x248(30)
    cmpwi 0, 0x4
    .4byte 0x40800020 # bge .L_801D51D0
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_801D51C0
    .4byte 0x48000014 # b .L_801D51D0
L_801D51C0:
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0x5e
    bl fn_801F0E34
L_801D51D0:
    lbz 3, 0x5ce(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801D51FC
    subi 0, 3, 0x1
    stb 0, 0x5ce(30)
    lbz 0, 0x5ce(30)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_801D51FC
    lwz 0, 0x230(30)
    ori 0, 0, 0x4000
    stw 0, 0x230(30)
L_801D51FC:
    lfs 2, 0x10(30)
    addi 3, 30, 0x464
    lfs 1, 0xc(30)
    addi 4, 1, 0x8
    .4byte 0xC002C14C # lfs f0, lbl_8053F0EC@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_801EB418
    addi 3, 30, 0x464
    bl fn_801EB648
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801D5244
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x51
    li 5, 0x0
    bl fn_801F0E34
L_801D5244:
    mr 3, 30
    bl fn_801E5754
    mr 3, 30
    bl fn_801E4D88
    .4byte 0x4800007C # b .L_801D52D0
L_801D5258:
    addi 3, 30, 0x4c4
    addi 4, 30, 0xc
    bl fn_801D6E20
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x40810064 # ble .L_801D52D0
    lwz 0, 0x230(30)
    clrlwi. 0, 0, 29
    .4byte 0x40820058 # bne .L_801D52D0
    lwz 0, 0x248(30)
    cmpwi 0, 0xb
    .4byte 0x4182004C # beq .L_801D52D0
    cmpwi 0, 0x17
    .4byte 0x41820044 # beq .L_801D52D0
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x5e
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x248(30)
    cmpwi 0, 0xe
    .4byte 0x40800024 # bge .L_801D52D0
    cmpwi 0, 0xc
    .4byte 0x40800008 # bge .L_801D52BC
    .4byte 0x48000018 # b .L_801D52D0
L_801D52BC:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
L_801D52D0:
    lwz 0, 0x248(30)
    li 3, 0x0
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_801D52F4
    cmpwi 0, 0x6
    .4byte 0x40800008 # bge .L_801D52EC
    .4byte 0x4800000C # b .L_801D52F4
L_801D52EC:
    li 3, 0x1
    .4byte 0x48000014 # b .L_801D5304
L_801D52F4:
    lwz 0, 0x230(30)
    clrlwi. 0, 0, 29
    .4byte 0x40820008 # bne .L_801D5304
    li 3, 0x1
L_801D5304:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801D5318
    mr 3, 30
    mr 4, 31
    bl fn_801CE2BC
L_801D5318:
    addi 3, 30, 0x448
    bl fn_8021798C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

