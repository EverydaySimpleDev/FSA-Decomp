.section extab, "a"
.balign 4
.global etb_80006B6C
etb_80006B6C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006B6C, 8

.section extabindex, "a"
.balign 4
.global eti_800134B0
eti_800134B0:
    .4byte fn_8013C628
    .4byte 0x000001FC
    .4byte etb_80006B6C
.size eti_800134B0, 12

# fn_8013C628(this, param) - a periodic effect-trigger update method.
# Bails if param->0xf4 bit0 is set. Otherwise walks the SAME scene-type
# whitelist logic used throughout the camera-cue-manager class
# (7,8,9,0x16,0xa,0xb / +0xc, keyed off lbl_8053AAF8's ->0x7f/->0x4c) -
# bails if the scene isn't whitelisted, or if whitelisted-but-type==0xc,
# or if param->0x94 is nonzero. Otherwise increments this->0xc (a frame
# counter) and dispatches on this->0x8 (a mode: 0 or 1) - each mode, once
# this->0xc reaches 8, resets the counter and fires a "PEFF"-tagged effect
# via the CONFIRMED shared effect-registry subsystem (fn_8023E724/
# fn_8023DE58 resolve handles from this->0x4, SpatialRegistry_GetBase gets the
# registry, fn_801F9484(registry, 'PEFF', ...) plays it - see
# [[project_fsa_shared_effect_subsystem_crossref]]/
# [[project_fsa_effect_playback_primitive]]), differing only in the flag
# byte passed as fn_801F9484's r7 (clrlwi(this->0x4,30) for mode 0, that
# ORed with 0x30 for mode 1).
#
# Attempted real-C++ promotion (session 4, 2026-09-05): full logic
# understood and translated (the whole call chain, both scene-type
# whitelist checks, fn_801F9484's real 7-param signature all verified
# correct against retail semantics). Compiled 0x6c (108) bytes SHORT
# (0x190 vs 0x1fc): MWCC collapsed BOTH 6-way and 7-way `||`-chained
# equality checks (against {7,8,9,0x16,0xa,0xb} and {7,8,9,0x16,0xa,0xb,
# 0xc}) into a compact range-check form (`addi r0,x,-7; cmplwi r0,3/4;
# ble`) instead of retail's literal chain of separate cmpwi+beq per
# constant. This is the SAME confirmed "N-nearby-constants, one shared
# action" wall already established this session (fn_8013C8CC, 3
# phrasings tried and failed there) - deferred immediately without a
# fresh attempt here given the size and precedent (this instance has
# even MORE constants: 6 and 7 values vs that instance's 3).
.text
.balign 4
.global fn_8013C628

fn_8013C628:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    lwz 0, 0xf4(4)
    clrlwi. 0, 0, 31
    .4byte 0x408201B4 # bne .L_8013C804
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8013C6B4
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_8013C69C
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_8013C69C
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_8013C69C
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_8013C69C
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_8013C69C
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_8013C6A0
L_8013C69C:
    li 0, 0x1
L_8013C6A0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_8013C708
L_8013C6B4:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_8013C6F4
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_8013C6F4
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_8013C6F4
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_8013C6F4
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_8013C6F4
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_8013C6F4
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_8013C6F8
L_8013C6F4:
    li 0, 0x1
L_8013C6F8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013C708:
    clrlwi. 0, 0, 24
    .4byte 0x418200F8 # beq .L_8013C804
    lwz 0, 0x4c(4)
    cmpwi 0, 0xc
    .4byte 0x40820008 # bne .L_8013C720
    .4byte 0x480000E8 # b .L_8013C804
L_8013C720:
    lbz 0, 0x94(4)
    cmplwi 0, 0x0
    .4byte 0x408200DC # bne .L_8013C804
    lwz 3, 0xc(31)
    addi 0, 3, 0x1
    stw 0, 0xc(31)
    lwz 0, 0x8(31)
    cmpwi 0, 0x1
    .4byte 0x4182006C # beq .L_8013C7AC
    .4byte 0x408000C0 # bge .L_8013C804
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8013C754
    .4byte 0x480000B4 # b .L_8013C804
L_8013C754:
    lwz 0, 0xc(31)
    cmpwi 0, 0x8
    .4byte 0x418000A8 # blt .L_8013C804
    li 0, 0x0
    stw 0, 0xc(31)
    lwz 29, 0x4(31)
    mr 3, 29
    bl fn_8023E724
    mr 30, 3
    lwz 3, 0x4(31)
    bl fn_8023DE58
    mr 31, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x5045
    mr 5, 31
    mr 6, 30
    mr 9, 29
    addi 4, 4, 0x4646
    clrlwi 7, 29, 30
    li 8, -0x1
    bl fn_801F9484
    .4byte 0x4800005C # b .L_8013C804
L_8013C7AC:
    lwz 0, 0xc(31)
    cmpwi 0, 0x8
    .4byte 0x41800050 # blt .L_8013C804
    li 0, 0x0
    stw 0, 0xc(31)
    lwz 28, 0x4(31)
    mr 3, 28
    bl fn_8023E724
    mr 29, 3
    lwz 3, 0x4(31)
    bl fn_8023DE58
    mr 30, 3
    bl SpatialRegistry_GetBase
    clrlwi 0, 28, 30
    lis 4, 0x5045
    mr 5, 30
    mr 6, 29
    mr 9, 28
    addi 4, 4, 0x4646
    ori 7, 0, 0x30
    li 8, -0x1
    bl fn_801F9484
L_8013C804:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
