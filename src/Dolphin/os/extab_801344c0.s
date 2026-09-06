.section extab, "a"
.balign 4
.global etb_800068F4
etb_800068F4:
    .4byte 0x20080000
    .4byte 0x00000208
    .4byte 0x00000058
    .4byte 0x00000214
    .4byte 0x00000050
    .4byte 0x00000220
    .4byte 0x00000048
    .4byte 0x00000244
    .4byte 0x00A20040
    .4byte 0x000004D8
    .4byte 0x00000038
    .4byte 0x000004E4
    .4byte 0x000E0040
    .4byte 0x00000000
    .4byte 0x0A80001C
    .4byte dtor_80084580
    .4byte 0x02000008
    .4byte dtor_8008D028
    .4byte 0x020000B8
    .4byte dtor_8008D028
    .4byte 0x02000168
    .4byte dtor_8008D028
    .4byte 0x82000218
    .4byte dtor_8008D028
.size etb_800068F4, 96

.section extabindex, "a"
.balign 4
.global eti_80013180
eti_80013180:
    .4byte main
    .4byte 0x00000520
    .4byte etb_800068F4
.size eti_80013180, 12

# main() - THE game's true entry point (found via the address-map pivot
# documented in project_fsa_core_systems_gap.md; this file's dtk-generated
# name "auto_main" comes from dtk recognizing this one symbol inside an
# otherwise-unclaimed leftover dump). 1312 bytes, no floating-point.
#
# 1. Reads the persistent OS "save region" scratch RAM (a fixed 32-byte
#    block at 0x80700000, the standard GameCube soft-reset-surviving
#    memory used to pass state across a reset) into a local config struct
#    (lbl_80529DEC+0x216), checking for a magic signature (0xa759/0xdc96
#    at halfwords +0x216/+0x218). If the signature is missing (first boot,
#    not a soft-reset-with-valid-state), re-initializes that struct with
#    the magic signature + zeroed/default fields, then calls
#    OSSetSaveRegion(0x80700000, 0x8070001F) to (re-)claim that block.
# 2. OSGetResetCode() - if this is a genuine cold boot (code==0), resets a
#    few more config-struct fields to defaults.
# 3. If the config struct's language/video-mode byte (+0x226) == 1: checks
#    OSGetProgressiveMode()==1 to choose between 2 candidate video-mode
#    init function pointers (lbl_8048C1B8 vs lbl_8048C17C), storing the
#    chosen one into a global function-pointer slot lbl_80539E54 - the
#    classic GC "select progressive vs interlaced video setup" pattern.
# 4. Runs a long, NOT YET DECOMPILED init sequence: fn_800E49E0,
#    fn_8008E364(0xF0000000), 4x fn_8008CF54(&localStackBuf[i], i) for
#    i=0..3 (very likely spawning a small pool of OS threads with 4
#    distinct stacks), fn_800E4DAC, fn_800E5FC4(lbl_8053AA48-value),
#    fn_803BA980(lbl_8051C1A0), fn_80084BAC(0x180000, ..., 0),
#    fn_800814D4(-1, 0) -> r30, fn_8008440C(0x90, r30, 0) -> r31 (falls
#    back to fn_8045A080() if this returns null), fn_8008382C(r30).
#    Stores the resulting 3 handles into lbl_80529DEC+0x4/0x8/0xc, clears 2
#    fields on lbl_8053A968's referenced object, then fn_800814D4(0)->r29,
#    spawns a lower-priority background task via
#    fn_80401FEC(OSGetThreadPriority(OSGetCurrentThread())-1, r29, 0),
#    fn_8008440C(0x7c, r30, 0) with an fn_804009CC() fallback if null, and
#    stores the final result into the GLOBAL SCENE POINTER lbl_8053AAF0.
#
# 5. THE MAIN LOOP (.L_801347F4, unconditional `b` back to it at every
#    exit path):
#    - fn_803B9E2C(lbl_8051C1A0) (per-frame, not yet decompiled).
#    - DVDGetDriveStatus(): if a drive is present, runs a disc-error/retry
#      watchdog sequence (fn_8008D15C, fn_802B1DCC/802B1D7C/802B1D60/
#      802B1D98 against a global lbl_8053ACA8, fn_8008E328 - a "check for
#      disc error/eject" block, not yet decompiled in detail).
#    - Increments a frame/grace-period byte counter on the scene-object
#      pointer (r30->0x251, clamped to 90).
#    - fn_80401518(lbl_8053ADE8): if truthy, restarts the loop immediately
#      (skips the rest of the frame) - given this function's address sits
#      right next to other PAD/controller-flavored SDK-wrapper functions
#      found during the address-map survey, this is likely "wait until
#      controller/input state is ready."
#    - Reads the PERSISTENT top-level manager object (lbl_8053AAF0)'s byte
#      field +0x78 (a coarse scene-lifecycle state, 0-3 = "starting up",
#      >=4 = "running"):
#      - state >= 4 (running): calls THROUGH lbl_8053AA48's vtable at
#        +0x8 (per-frame "calc"), then - once the grace counter above hits
#        0 - calls fn_80136828(lbl_8053AAF8) (a not-yet-decompiled call
#        against the SAME global previously known only as "the PRNG
#        holder" - see below), calls vtable+0xC ("draw"), calls
#        fn_80137300(lbl_8053AAF8), calls vtable+0x10 ("present"/swap),
#        then loops.
#      - state < 4 (starting up): calls vtable+0x8, fn_803FF420
#        (lbl_8053AAF0), vtable+0xC, fn_803FFAA8(lbl_8053AAF0), then
#        re-reads the state byte and does a bit-trick range test on it; if
#        it lands in the "spawn a new scene" case: calls fn_803FF2C4(),
#        allocates a NEW 0x11c-byte object via fn_80084370 (falling back
#        to fn_80139300() if allocation fails), and - CRITICALLY - stores
#        that new object into `lbl_8053AAF8`, then calls its "constructor"
#        fn_80138C9C(newObj), then vtable+0x10, then loops. Otherwise (the
#        "not yet time to spawn" case) sets a one-shot "first frame" latch
#        (r29) and just calls vtable+0x10 before looping.
#
# MAJOR REVISION to [[reference_fsa_global_prng]]: `lbl_8053AAF8` is NOT a
# bare PRNG-state struct - it is THE CURRENT SCENE/GAME-STATE OBJECT
# POINTER, dynamically allocated and REPLACED here by main() itself on
# scene transitions (`fn_80084370(0x11c)` + store into `lbl_8053AAF8` +
# `fn_80138C9C` construct). The confirmed LCG PRNG state at `->0xb4` is
# just ONE field inside that per-scene object, not a standalone global -
# every "PRNG" reference throughout this whole session has actually been
# reading/writing a field on whatever scene object is currently active.
# `lbl_8053AA48` is a SEPARATE, never-reallocated top-level manager object
# (its vtable's +0x8/+0xC/+0x10 = calc/draw/present, called every frame
# regardless of scene) and `lbl_8053AAF0` holds a 3rd persistent manager
# object whose byte state (+0x78) drives the startup-vs-running dispatch
# and whose handles were assigned back in the init sequence above.
#
# New, not-yet-explored callees surfaced (a lot, expected for `main()`):
# fn_800E49E0, fn_8008E364, fn_8008CF54, fn_800E4DAC, fn_800E5FC4,
# fn_803BA980, fn_80084BAC, fn_800814D4, fn_8008440C, fn_8045A080,
# fn_8008382C, fn_80401FEC, fn_804009CC, fn_803B9E2C, fn_8008D15C,
# fn_802B1DCC, fn_802B1D7C, fn_802B1D60, fn_802B1D98, fn_8008E328,
# fn_80401518, fn_80136828, fn_80137300, fn_803FF420, fn_803FFAA8,
# fn_803FF2C4, fn_80084370, fn_80139300, fn_80138C9C.
.text
.balign 4
.global main

main:
    stwu 1, -0x2e0(1)
    mflr 0
    li 4, 0x1
    lis 6, 0x20
    stw 0, 0x2e4(1)
    lis 5, 0x4
    lis 3, lbl_80529DEC@ha
    li 0, 0x2
    stw 31, 0x2dc(1)
    li 7, 0x0
    stw 30, 0x2d8(1)
    stw 29, 0x2d4(1)
    stw 28, 0x2d0(1)
    .4byte 0x908D8270 # stw r4, lbl_80539E30@sda21(r0)
    addi 4, 3, lbl_80529DEC@l
    .4byte 0x90CD8274 # stw r6, lbl_80539E34@sda21(r0)
    .4byte 0x90AD8278 # stw r5, lbl_80539E38@sda21(r0)
    mtctr 0
L_80134508:
    subis 5, 7, 0x7f90
    add 3, 4, 7
    lbz 0, 0x0(5)
    addi 7, 7, 0x8
    stb 0, 0x216(3)
    lbz 0, 0x1(5)
    stb 0, 0x217(3)
    lbz 0, 0x2(5)
    stb 0, 0x218(3)
    lbz 0, 0x3(5)
    stb 0, 0x219(3)
    lbz 0, 0x4(5)
    stb 0, 0x21a(3)
    lbz 0, 0x5(5)
    stb 0, 0x21b(3)
    lbz 0, 0x6(5)
    stb 0, 0x21c(3)
    lbz 0, 0x7(5)
    subis 5, 7, 0x7f90
    stb 0, 0x21d(3)
    add 3, 4, 7
    addi 7, 7, 0x8
    lbz 0, 0x0(5)
    stb 0, 0x216(3)
    lbz 0, 0x1(5)
    stb 0, 0x217(3)
    lbz 0, 0x2(5)
    stb 0, 0x218(3)
    lbz 0, 0x3(5)
    stb 0, 0x219(3)
    lbz 0, 0x4(5)
    stb 0, 0x21a(3)
    lbz 0, 0x5(5)
    stb 0, 0x21b(3)
    lbz 0, 0x6(5)
    stb 0, 0x21c(3)
    lbz 0, 0x7(5)
    stb 0, 0x21d(3)
    .4byte 0x4200FF68 # bdnz .L_80134508
    lis 4, 0x8070
    lis 3, 0x8070
    addi 4, 4, 0x1f
    bl OSSetSaveRegion
    lis 3, lbl_80529DEC@ha
    addi 7, 3, lbl_80529DEC@l
    lhz 0, 0x216(7)
    cmplwi 0, 0xa759
    .4byte 0x40820010 # bne .L_801345D4
    lhz 0, 0x218(7)
    cmplwi 0, 0xdc96
    .4byte 0x41820058 # beq .L_80134628
L_801345D4:
    lis 5, 0x1
    lis 4, lbl_80529DEC@ha
    subi 6, 5, 0x58a7
    li 3, 0x0
    addi 4, 4, lbl_80529DEC@l
    subi 5, 5, 0x236a
    li 0, 0xff
    sth 6, 0x216(7)
    sth 5, 0x218(4)
    stb 3, 0x21a(4)
    stb 3, 0x21b(4)
    stb 3, 0x21c(4)
    stb 3, 0x21d(4)
    stb 3, 0x21e(4)
    stb 3, 0x21f(4)
    stb 3, 0x220(4)
    stb 3, 0x221(4)
    stb 0, 0x222(4)
    stb 3, 0x223(4)
    stb 3, 0x225(4)
    stb 3, 0x226(4)
L_80134628:
    bl OSGetResetCode
    cmplwi 3, 0x0
    .4byte 0x40820028 # bne .L_80134658
    lis 3, lbl_80529DEC@ha
    li 4, 0x0
    addi 3, 3, lbl_80529DEC@l
    li 0, 0xff
    stb 4, 0x221(3)
    stb 0, 0x222(3)
    stb 4, 0x223(3)
    stb 4, 0x225(3)
    stb 4, 0x226(3)
L_80134658:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x226(3)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80134698
    bl OSGetProgressiveMode
    cmplwi 3, 0x1
    .4byte 0x40820014 # bne .L_80134688
    lis 3, lbl_8048C1B8@ha
    addi 0, 3, lbl_8048C1B8@l
    .4byte 0x900D8294 # stw r0, lbl_80539E54@sda21(r0)
    .4byte 0x48000020 # b .L_801346A4
L_80134688:
    lis 3, lbl_8048C17C@ha
    addi 0, 3, lbl_8048C17C@l
    .4byte 0x900D8294 # stw r0, lbl_80539E54@sda21(r0)
    .4byte 0x48000010 # b .L_801346A4
L_80134698:
    lis 3, lbl_8048C17C@ha
    addi 0, 3, lbl_8048C17C@l
    .4byte 0x900D8294 # stw r0, lbl_80539E54@sda21(r0)
L_801346A4:
    bl fn_800E49E0
    lis 3, 0xf000
    bl fn_8008E364
    addi 3, 1, 0x218
    li 4, 0x0
    bl fn_8008CF54
    addi 3, 1, 0x168
    li 4, 0x1
    bl fn_8008CF54
    addi 3, 1, 0xb8
    li 4, 0x2
    bl fn_8008CF54
    addi 3, 1, 0x8
    li 4, 0x3
    bl fn_8008CF54
    li 0, 0x0
    .4byte 0x808D8CE8 # lwz r4, lbl_8053A8A8@sda21(r0)
    stb 0, 0x210(1)
    li 3, 0x0
    li 5, 0x2
    li 6, 0x1
    stb 0, 0x160(1)
    stb 0, 0xb0(1)
    bl fn_800E4DAC
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    bl fn_800E5FC4
    lis 3, lbl_8051C1A0@ha
    addi 3, 3, lbl_8051C1A0@l
    bl fn_803BA980
    .4byte 0x808D8CF0 # lwz r4, lbl_8053A8B0@sda21(r0)
    lis 3, 0x18
    li 5, 0x0
    bl fn_80084BAC
    .4byte 0x808D8CF0 # lwz r4, lbl_8053A8B0@sda21(r0)
    mr 29, 3
    li 3, -0x1
    li 5, 0x0
    bl fn_800814D4
    mr 30, 3
    li 3, 0x90
    li 5, 0x0
    mr 4, 30
    bl fn_8008440C
    mr. 31, 3
    .4byte 0x4182000C # beq .L_80134760
    bl fn_8045A080
    mr 31, 3
L_80134760:
    mr 3, 30
    bl fn_8008382C
    lis 3, lbl_80529DEC@ha
    .4byte 0x80CD8DA8 # lwz r6, lbl_8053A968@sda21(r0)
    addi 7, 3, lbl_80529DEC@l
    li 0, 0x0
    stw 29, 0x4(7)
    mr 4, 30
    li 3, 0x800
    li 5, 0x0
    stw 30, 0x8(7)
    stw 31, 0xc(7)
    stb 0, 0x10c(6)
    .4byte 0x80CD8DA8 # lwz r6, lbl_8053A968@sda21(r0)
    stb 0, 0x130(6)
    bl fn_800814D4
    mr 29, 3
    bl OSGetCurrentThread
    bl OSGetThreadPriority
    mr 4, 29
    li 5, 0x0
    subi 3, 3, 0x1
    bl fn_80401FEC
    mr 4, 30
    li 3, 0x7c
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_801347DC
    bl fn_804009CC
    mr 0, 3
L_801347DC:
    lis 4, lbl_80529DEC@ha
    lis 3, lbl_8051C1A0@ha
    .4byte 0x900D8F30 # stw r0, lbl_8053AAF0@sda21(r0)
    addi 30, 4, lbl_80529DEC@l
    addi 31, 3, lbl_8051C1A0@l
    li 29, 0x0
L_801347F4:
    mr 3, 31
    bl fn_803B9E2C
    bl DVDGetDriveStatus
    cmpwi 3, -0x1
    .4byte 0x41820008 # beq .L_8013480C
    bl fn_8008D15C
L_8013480C:
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_8013488C
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1D7C
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_8013488C
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1D60
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80134858
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_80134858
    cmpwi 3, 0x2
    .4byte 0x41820010 # beq .L_80134858
    cmpwi 3, 0x3
    .4byte 0x41820008 # beq .L_80134858
    li 3, -0x1
L_80134858:
    bl fn_8008E328
    lha 0, 0x7c(3)
    li 4, 0x0
    cmpwi 0, -0x1
    .4byte 0x41820014 # beq .L_8013487C
    lbz 0, 0x98(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_8013487C
    li 4, 0x1
L_8013487C:
    clrlwi. 0, 4, 24
    .4byte 0x4082000C # bne .L_8013488C
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1D98
L_8013488C:
    lbz 3, 0x251(30)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801348A8
    cmplwi 3, 0x5a
    .4byte 0x4181000C # bgt .L_801348A8
    addi 0, 3, 0x1
    stb 0, 0x251(30)
L_801348A8:
    .4byte 0x386D9228 # li r3, lbl_8053ADE8@sda21
    bl fn_80401518
    cmpwi 3, 0x0
    .4byte 0x4082FF40 # bne .L_801347F4
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    lbz 0, 0x78(3)
    cmplwi 0, 0x4
    .4byte 0x41800060 # blt .L_80134924
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    lbz 0, 0x251(30)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801348F0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80136828
L_801348F0:
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80137300
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x4BFFFED4 # b .L_801347F4
L_80134924:
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    bl fn_803FF420
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    bl fn_803FFAA8
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    li 4, 0x4
    lbz 5, 0x78(3)
    subi 0, 5, 0x4
    orc 4, 5, 4
    srwi 0, 0, 1
    subf 0, 0, 4
    srwi. 0, 0, 31
    .4byte 0x41820040 # beq .L_801349BC
    bl fn_803FF2C4
    li 3, 0x11c
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_80134998
    bl fn_80139300
L_80134998:
    .4byte 0x938D8F38 # stw r28, lbl_8053AAF8@sda21(r0)
    mr 3, 28
    bl fn_80138C9C
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x4BFFFE3C # b .L_801347F4
L_801349BC:
    clrlwi. 0, 29, 24
    .4byte 0x40820008 # bne .L_801349C8
    li 29, 0x1
L_801349C8:
    .4byte 0x806D8E88 # lwz r3, lbl_8053AA48@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x4BFFFE18 # b .L_801347F4

