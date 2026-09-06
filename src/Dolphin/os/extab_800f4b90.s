# fn_800F4B90: a "SetPhase" method for the same "OIWA" (falling-boulder)
# scheduler class as fn_800F3C70/fn_800F3E08/fn_800F43D0/fn_800F4724 (see
# project_fsa_extab_bug_resolved.md for the full identification). Copies
# this->0x90 (the universal per-actor spawn-parameter field) into the phase
# field (this->0x230), then initializes the countdown timer (this->0x234)
# based on the NEWLY SET phase: phase 2 gets an immediate timer of 0 (no
# delay - matches fn_800F4724's own observation that phase 2 is a terminal/
# one-shot phase with no re-roll), phase 4 gets a randomized duration from
# ITS OWN dedicated table pair (lbl_8053BE8C/lbl_8053BEB0, distinct from
# fn_800F4724's per-phase tables), and every other phase (0/1/3) shares a
# third table pair (lbl_8053BE8C/lbl_8053BEB4). Uses the confirmed global
# PRNG (see reference_fsa_global_prng.md). Landed as raw GNU-AS for the same
# extab/extabindex reason as the rest of this cluster.
.section extab, "a"
.balign 4
.global etb_800056D8
etb_800056D8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800056D8, 8

.section extabindex, "a"
.balign 4
.global eti_80011974
eti_80011974:
    .4byte fn_800F4B90
    .4byte 0x000000E0
    .4byte etb_800056D8
.size eti_80011974, 12

.text
.balign 4
.global fn_800F4B90

fn_800F4B90:
    stwu 1, -0x20(1)
    lwz 0, 0x90(3)
    stb 0, 0x230(3)
    lbz 0, 0x230(3)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_800F4BB4
    li 0, 0x0
    stw 0, 0x234(3)
    .4byte 0x480000B8 # b .L_800F4C68
L_800F4BB4:
    cmplwi 0, 0x4
    .4byte 0x4082005C # bne .L_800F4C14
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC0428F10 # lfs f2, lbl_8053BEB0@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x234(3)
    .4byte 0x48000058 # b .L_800F4C68
L_800F4C14:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 0, 4, 0x660d
    .4byte 0xC0028EEC # lfs f0, lbl_8053BE8C@sda21(r0)
    lwz 4, 0xb4(5)
    .4byte 0xC0428F14 # lfs f2, lbl_8053BEB4@sda21(r0)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x234(3)
L_800F4C68:
    addi 1, 1, 0x20
    blr

