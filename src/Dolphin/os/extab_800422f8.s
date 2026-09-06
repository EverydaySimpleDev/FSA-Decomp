# Fresh-gap-hunt batch 15 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.text
.balign 4
.global __OSUnhandledException
.global fn_800425E0

__OSUnhandledException:
    mflr 0
    lis 8, __OSErrorTable@ha
    stw 0, 0x4(1)
    lis 7, "@13_80495C88"@ha
    stwu 1, -0x40(1)
    stmw 22, 0x18(1)
    addi 24, 3, 0x0
    addi 25, 4, 0x0
    addi 26, 5, 0x0
    addi 27, 6, 0x0
    addi 30, 8, __OSErrorTable@l
    addi 31, 7, "@13_80495C88"@l
    bl OSGetTime
    lwz 5, 0x19c(25)
    addi 28, 4, 0x0
    addi 29, 3, 0x0
    rlwinm. 0, 5, 0, 30, 30
    .4byte 0x40820018 # bne .L_80042354
    addi 3, 31, 0x5c
    crclr 6
    clrlwi 4, 24, 24
    bl OSReport
    .4byte 0x48000154 # b .L_800424A4
L_80042354:
    clrlwi 0, 24, 24
    cmplwi 0, 0x6
    .4byte 0x408200D8 # bne .L_80042434
    rlwinm. 0, 5, 0, 11, 11
    .4byte 0x418200D0 # beq .L_80042434
    lwz 0, 0x40(30)
    cmplwi 0, 0x0
    .4byte 0x418200C4 # beq .L_80042434
    li 24, 0x10
    bl PPCMfmsr
    addi 23, 3, 0x0
    ori 3, 23, 0x2000
    bl PPCMtmsr
    lis 3, 0x8000
    lwz 3, 0xd8(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8004239C
    bl OSSaveFPUContext
L_8004239C:
    bl PPCMffpscr
    lis 4, 0x6006
    subi 22, 4, 0x701
    and 3, 3, 22
    bl PPCMtfpscr
    mr 3, 23
    bl PPCMtmsr
    lis 23, 0x8000
    lwz 0, 0xd8(23)
    cmplw 0, 25
    .4byte 0x40820054 # bne .L_80042418
    bl OSDisableScheduler
    lwz 12, 0x40(30)
    addi 4, 25, 0x0
    addi 5, 26, 0x0
    crclr 6
    mtlr 12
    addi 6, 27, 0x0
    li 3, 0x10
    blrl
    lwz 3, 0x19c(25)
    li 0, 0x0
    rlwinm 3, 3, 0, 19, 17
    stw 3, 0x19c(25)
    stw 0, 0xd8(23)
    lwz 0, 0x194(25)
    and 0, 0, 22
    stw 0, 0x194(25)
    bl OSEnableScheduler
    bl __OSReschedule
    .4byte 0x48000018 # b .L_8004242C
L_80042418:
    lwz 3, 0x19c(25)
    li 0, 0x0
    rlwinm 3, 3, 0, 19, 17
    stw 3, 0x19c(25)
    stw 0, 0xd8(23)
L_8004242C:
    mr 3, 25
    bl OSLoadContext
L_80042434:
    clrlwi 23, 24, 24
    clrlslwi 0, 24, 24, 2
    add 22, 30, 0
    lwz 0, 0x0(22)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80042480
    bl OSDisableScheduler
    lwz 12, 0x0(22)
    addi 3, 23, 0x0
    addi 4, 25, 0x0
    crclr 6
    mtlr 12
    addi 5, 26, 0x0
    addi 6, 27, 0x0
    blrl
    bl OSEnableScheduler
    bl __OSReschedule
    mr 3, 25
    bl OSLoadContext
L_80042480:
    clrlwi 0, 24, 24
    cmplwi 0, 0x8
    .4byte 0x4082000C # bne .L_80042494
    mr 3, 25
    bl OSLoadContext
L_80042494:
    addi 3, 31, 0x7c
    crclr 6
    clrlwi 4, 24, 24
    bl OSReport
L_800424A4:
    .4byte 0x386D8054 # li r3, "@76_80539C14"@sda21
    crclr 6
    bl OSReport
    mr 3, 25
    bl OSDumpContext
    addi 4, 26, 0x0
    crclr 6
    addi 5, 27, 0x0
    addi 3, 31, 0x94
    bl OSReport
    addi 6, 28, 0x0
    crclr 6
    addi 5, 29, 0x0
    addi 3, 31, 0xc8
    bl OSReport
    clrlwi 0, 24, 24
    cmplwi 0, 0xf
    .4byte 0x418100C4 # bgt .L_800425AC
    lis 3, "@87_80495F64"@ha
    addi 3, 3, "@87_80495F64"@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x198(25)
    addi 5, 27, 0x0
    addi 3, 31, 0xd8
    crclr 6
    bl OSReport
    .4byte 0x48000094 # b .L_800425AC
    lwz 4, 0x198(25)
    addi 3, 31, 0x138
    crclr 6
    bl OSReport
    .4byte 0x48000080 # b .L_800425AC
    lwz 4, 0x198(25)
    addi 5, 27, 0x0
    addi 3, 31, 0x184
    crclr 6
    bl OSReport
    .4byte 0x48000068 # b .L_800425AC
    lwz 4, 0x198(25)
    addi 5, 27, 0x0
    addi 3, 31, 0x1e8
    crclr 6
    bl OSReport
    .4byte 0x48000050 # b .L_800425AC
    .4byte 0x386D8054 # li r3, "@76_80539C14"@sda21
    crclr 6
    bl OSReport
    lis 25, 0xcc00
    crclr 6
    addi 24, 25, 0x5000
    lhz 4, 0x5030(25)
    addi 3, 31, 0x248
    lhz 5, 0x5032(25)
    bl OSReport
    lhz 4, 0x20(24)
    addi 3, 31, 0x268
    lhz 5, 0x22(24)
    crclr 6
    bl OSReport
    lwz 4, 0x6014(25)
    crclr 6
    addi 3, 31, 0x288
    bl OSReport
L_800425AC:
    .4byte 0xA88D8878 # lha r4, __OSLastInterrupt@sda21(r0)
    addi 3, 31, 0x2a4
    crclr 6
    .4byte 0x80AD8874 # lwz r5, __OSLastInterruptSrr0@sda21(r0)
    .4byte 0x80ED8880 # lwz r7, __OSLastInterruptTime@sda21(r0)
    .4byte 0x810D8884 # lwz r8, __OSLastInterruptTime+0x4@sda21(r0)
    bl OSReport
    bl PPCHalt
    lmw 22, 0x18(1)
    lwz 0, 0x44(1)
    addi 1, 1, 0x40
    mtlr 0
    blr

# fn_800425E0(void) - refreshes and returns a small status flag
# (lbl_80539C18) based on 2 hardware registers.
#
# NOTE: attempted real-C++ promotion (Phase 4) - fixed 2 real issues
# (s32-vs-u32 for the cmpwi/cmplwi hw1 compare; retail duplicates the
# "sth ...,lbl_80539C18" store separately in EACH top-level branch
# rather than funneling both to one shared final store) but hit a
# genuinely unfixable residual: retail's compiled bytes test hw1==0
# (beq), THEN redundantly test hw1<0 (blt to the SAME target as the
# unconditional fallthrough right after it) - a real 3-branch sequence
# where 2 of the 3 branches point at an IDENTICAL destination. A
# natural if/else always collapses this to a single branch (proven
# dead-code elimination); an explicit goto-based literal transcription
# of the exact 3-branch shape ALSO collapsed identically (MWCC's
# optimizer proves "if(x<0) goto Y; goto Y;" is just "goto Y" regardless
# of source phrasing - a stronger, provably-safe optimization the
# earlier goto-based wins (fn_801E1CF8/ClassifyBamAngleToQuadrant) never had to defeat
# since THEIR gotos led to genuinely different code, not identical
# destinations). Also tested the GC/1.2.5 compiler-version override
# (same fix that solved OSReport's family) on the theory this is
# another Dolphin/os SDK function - made it WORSE (introduced an extra
# instruction and a 4-byte size mismatch), conclusively ruling out a
# compiler-version cause here. Residual is large relative to the
# function (57 of 88 bytes), not a clean near-miss. Left as raw asm -
# a new confirmed-hard category: "compiler provably eliminates identical-
# destination redundant branches, not reachable from ANY source
# phrasing" - add alongside the scheduler/allocator-decides categories,
# but distinct (this one is a PROVABLE optimization, not a heuristic
# choice, so it can never be defeated by restructuring alone).
.text
.balign 4
.global fn_800425E0

fn_800425E0:
    .4byte 0xA06D8058 # lhz r3, lbl_80539C18@sda21(r0)
    cmplwi 3, 0x1
    blelr
    lis 3, 0x8000
    lwz 0, 0xcc(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80042604
    .4byte 0x4180002C # blt .L_80042628
    .4byte 0x48000028 # b .L_80042628
L_80042604:
    lis 3, 0xcc00
    lhz 0, 0x206e(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182000C # beq .L_8004261C
    li 0, 0x1
    .4byte 0x48000008 # b .L_80042620
L_8004261C:
    li 0, 0x0
L_80042620:
    .4byte 0xB00D8058 # sth r0, lbl_80539C18@sda21(r0)
    .4byte 0x4800000C # b .L_80042630
L_80042628:
    li 0, 0x0
    .4byte 0xB00D8058 # sth r0, lbl_80539C18@sda21(r0)
L_80042630:
    .4byte 0xA06D8058 # lhz r3, lbl_80539C18@sda21(r0)
    blr

