# InsertAlarm/OSSetAlarm/fn_8004061C/DecrementerExceptionCallback/
# DecrementerExceptionHandler/fn_800409B8/fn_80040A58/OSFreeToHeap - the
# real Dolphin SDK alarm-queue + heap-free bundle. The repeated
# `xoris rX,rY,0x8000 / subfc / subfe / subfe / neg.` sequence throughout
# is the standard MWCC signed-64-bit `a < b`/`a <= b` comparison idiom
# (OSTime, a s64 tick counter, compared against another s64) - confirmed
# via decomp-academy's curriculum (05-int64/010-compare.md describes the
# unsigned variant; the extra xoris pair here is the sign-flip that
# turns it into the signed form). AlarmQueue_8053A410 is the sorted
# linked-list of pending alarms; InsertAlarm/OSSetAlarm/
# DecrementerExceptionCallback all walk/insert/remove from it using this
# comparison to keep it time-ordered.
#
# NOTE: attempted real-C++ promotion (Phase 4) of the 2 simplest,
# call-light functions in this bundle - fn_80040A58 and OSFreeToHeap -
# genuinely fully understood now (not just transcribed), but NOT
# byte-matched, real structural mismatches found (not just register
# renumbering):
#
# fn_80040A58(OSHeapCell* head, OSHeapCell* block) - insert `block` into
# the address-sorted doubly-linked free-list starting at `head`, merging
# with a physically-adjacent neighbor on either side (checking
# `(u8*)node + node->size == (u8*)otherNode`), returns the (possibly
# updated) head. Uses the already-landed OSHeapCell struct
# (include/Dolphin/OS/OSAlloc.h, prev@0x0/next@0x4/size@0x8). Natural
# C++ reproducing this exact algorithm got the right INSTRUCTION SET
# and mostly the right shape, but 27 of 43 instructions differ - MWCC
# chose a different register for the walking "next" cursor (r7 in
# retail vs r6 in mine) and reordered several field-store groupings
# beyond a simple rename. Not resolved this session - would need a
# register-role-matching pass (try naming/declaring locals to nudge
# specific register numbers) before it's worth re-attempting.
#
# OSFreeToHeap(OSHeapHandle handle, void* ptr) - unlinks the cell at
# ptr-0x20 from hd->allocated (a doubly-linked list, same node fields
# reused for both roles - allocated vs free - a classic embedded-node
# allocator design already noted for OSCreateHeap/OSInitAlloc), using
# the default-then-override idiom for the list-head update, then calls
# fn_80040A58(hd->allocated's freed cell) to re-insert it into
# hd->free. Natural C++ reproducing this exact algorithm hit a REAL
# structural mismatch, not just a register swap: retail's prologue
# computes `cell = ptr-0x20` BEFORE allocating the stack frame (an
# early-materialized independent computation, `mflr`+the subtract+
# `stw r0,4(r1)` all happen before `stwu`), and the function's total
# size doesn't match mine (a genuine size/instruction-count cascade, not
# just a byte-level diff) - 82 of 124 bytes differ. Left as raw asm
# for both - genuinely understood (Track B), just not yet Track A for
# either.
.text
.balign 4
.global InsertAlarm
.global OSSetAlarm
.global fn_8004061C
.global DecrementerExceptionCallback
.global DecrementerExceptionHandler
.global fn_800409B8
.global fn_80040A58
.global OSFreeToHeap

InsertAlarm:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x40(1)
    stmw 25, 0x24(1)
    li 28, 0x0
    mr 29, 3
    xoris 4, 28, 0x8000
    addi 25, 5, 0x0
    addi 30, 6, 0x0
    addi 31, 7, 0x0
    lwz 0, 0x18(3)
    lwz 8, 0x1c(3)
    xoris 3, 0, 0x8000
    subfc 0, 8, 28
    subfe 3, 3, 4
    subfe 3, 4, 4
    neg. 3, 3
    .4byte 0x4182007C # beq .L_80040424
    bl __OSGetSystemTime
    lwz 7, 0x20(29)
    xoris 5, 3, 0x8000
    lwz 8, 0x24(29)
    xoris 6, 7, 0x8000
    subfc 0, 4, 8
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    addi 30, 8, 0x0
    addi 25, 7, 0x0
    .4byte 0x4182004C # beq .L_80040424
    lwz 27, 0x18(29)
    subfc 4, 8, 4
    lwz 26, 0x1c(29)
    subfe 3, 7, 3
    addi 5, 27, 0x0
    addi 6, 26, 0x0
    bl __div2i
    li 0, 0x1
    addc 5, 4, 0
    mullw 4, 27, 5
    mulhwu 0, 26, 5
    adde 3, 3, 28
    add 4, 4, 0
    mullw 0, 26, 3
    mullw 3, 26, 5
    add 0, 4, 0
    addc 30, 30, 3
    adde 25, 25, 0
L_80040424:
    stw 31, 0x0(29)
    xoris 4, 25, 0x8000
    stw 30, 0xc(29)
    stw 25, 0x8(29)
    .4byte 0x80CD8850 # lwz r6, AlarmQueue_8053A410@sda21(r0)
    .4byte 0x480000C4 # b .L_800404FC
L_8004043C:
    lwz 0, 0x8(6)
    lwz 5, 0xc(6)
    xoris 3, 0, 0x8000
    subfc 0, 5, 30
    subfe 3, 3, 4
    subfe 3, 4, 4
    neg. 3, 3
    .4byte 0x418200A0 # beq .L_800404F8
    lwz 0, 0x10(6)
    stw 0, 0x10(29)
    stw 29, 0x10(6)
    stw 6, 0x14(29)
    lwz 3, 0x10(29)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80040480
    stw 29, 0x14(3)
    .4byte 0x48000124 # b .L_800405A0
L_80040480:
    .4byte 0x93AD8850 # stw r29, AlarmQueue_8053A410@sda21(r0)
    bl __OSGetSystemTime
    lwz 6, 0xc(29)
    li 7, 0x0
    lwz 0, 0x8(29)
    xoris 5, 7, 0x8000
    subfc 8, 4, 6
    subfe 0, 3, 0
    xoris 6, 0, 0x8000
    subfc 0, 7, 8
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_800404C4
    li 3, 0x0
    bl PPCMtdec
    .4byte 0x480000E0 # b .L_800405A0
L_800404C4:
    lis 4, 0x8000
    xoris 3, 7, 0x8000
    subfc 0, 4, 8
    subfe 3, 3, 6
    subfe 3, 6, 6
    neg. 3, 3
    .4byte 0x41820010 # beq .L_800404EC
    mr 3, 8
    bl PPCMtdec
    .4byte 0x480000B8 # b .L_800405A0
L_800404EC:
    subi 3, 4, 0x1
    bl PPCMtdec
    .4byte 0x480000AC # b .L_800405A0
L_800404F8:
    lwz 6, 0x14(6)
L_800404FC:
    cmplwi 6, 0x0
    .4byte 0x4082FF3C # bne .L_8004043C
    li 30, 0x0
    stw 30, 0x14(29)
    .4byte 0x386D8850 # li r3, AlarmQueue_8053A410@sda21
    lwz 4, 0x4(3)
    stwu 29, 0x4(3)
    cmplwi 4, 0x0
    stw 4, 0x10(29)
    .4byte 0x4182000C # beq .L_8004052C
    stw 29, 0x14(4)
    .4byte 0x48000078 # b .L_800405A0
L_8004052C:
    stw 29, 0x0(3)
    .4byte 0x93AD8850 # stw r29, AlarmQueue_8053A410@sda21(r0)
    bl __OSGetSystemTime
    lwz 6, 0xc(29)
    xoris 5, 30, 0x8000
    lwz 0, 0x8(29)
    subfc 7, 4, 6
    subfe 0, 3, 0
    xoris 6, 0, 0x8000
    subfc 0, 30, 7
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_80040570
    li 3, 0x0
    bl PPCMtdec
    .4byte 0x48000034 # b .L_800405A0
L_80040570:
    lis 4, 0x8000
    xoris 3, 30, 0x8000
    subfc 0, 4, 7
    subfe 3, 3, 6
    subfe 3, 6, 6
    neg. 3, 3
    .4byte 0x41820010 # beq .L_80040598
    mr 3, 7
    bl PPCMtdec
    .4byte 0x4800000C # b .L_800405A0
L_80040598:
    subi 3, 4, 0x1
    bl PPCMtdec
L_800405A0:
    lmw 25, 0x24(1)
    lwz 0, 0x44(1)
    addi 1, 1, 0x40
    mtlr 0
    blr

OSSetAlarm:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x38(1)
    stmw 27, 0x24(1)
    addi 27, 3, 0x0
    addi 29, 5, 0x0
    addi 28, 6, 0x0
    addi 30, 7, 0x0
    bl OSDisableInterrupts
    li 0, 0x0
    stw 0, 0x1c(27)
    mr 31, 3
    stw 0, 0x18(27)
    bl __OSGetSystemTime
    addc 6, 28, 4
    adde 5, 29, 3
    addi 3, 27, 0x0
    addi 7, 30, 0x0
    bl InsertAlarm
    mr 3, 31
    bl OSRestoreInterrupts
    lmw 27, 0x24(1)
    lwz 0, 0x3c(1)
    addi 1, 1, 0x38
    mtlr 0
    blr

fn_8004061C:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x20(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    bl OSDisableInterrupts
    lwz 0, 0x0(30)
    addi 31, 3, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80040658
    mr 3, 31
    bl OSRestoreInterrupts
    .4byte 0x480000C8 # b .L_8004071C
L_80040658:
    lwz 29, 0x14(30)
    cmplwi 29, 0x0
    .4byte 0x40820014 # bne .L_80040674
    lwz 0, 0x10(30)
    .4byte 0x386D8850 # li r3, AlarmQueue_8053A410@sda21
    stw 0, 0x4(3)
    .4byte 0x4800000C # b .L_8004067C
L_80040674:
    lwz 0, 0x10(30)
    stw 0, 0x10(29)
L_8004067C:
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80040690
    stw 29, 0x14(3)
    .4byte 0x48000080 # b .L_8004070C
L_80040690:
    cmplwi 29, 0x0
    .4byte 0x93AD8850 # stw r29, AlarmQueue_8053A410@sda21(r0)
    .4byte 0x41820074 # beq .L_8004070C
    bl __OSGetSystemTime
    lwz 6, 0xc(29)
    li 7, 0x0
    lwz 0, 0x8(29)
    xoris 5, 7, 0x8000
    subfc 8, 4, 6
    subfe 0, 3, 0
    xoris 6, 0, 0x8000
    subfc 0, 7, 8
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_800406DC
    li 3, 0x0
    bl PPCMtdec
    .4byte 0x48000034 # b .L_8004070C
L_800406DC:
    lis 4, 0x8000
    xoris 3, 7, 0x8000
    subfc 0, 4, 8
    subfe 3, 3, 6
    subfe 3, 6, 6
    neg. 3, 3
    .4byte 0x41820010 # beq .L_80040704
    mr 3, 8
    bl PPCMtdec
    .4byte 0x4800000C # b .L_8004070C
L_80040704:
    subi 3, 4, 0x1
    bl PPCMtdec
L_8004070C:
    li 0, 0x0
    stw 0, 0x0(30)
    mr 3, 31
    bl OSRestoreInterrupts
L_8004071C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    addi 1, 1, 0x20
    mtlr 0
    blr

DecrementerExceptionCallback:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x2f0(1)
    stw 31, 0x2ec(1)
    stw 30, 0x2e8(1)
    stw 29, 0x2e4(1)
    mr 29, 4
    stw 28, 0x2e0(1)
    bl __OSGetSystemTime
    .4byte 0x800D8850 # lwz r0, AlarmQueue_8053A410@sda21(r0)
    addi 28, 4, 0x0
    addi 30, 3, 0x0
    cmplwi 0, 0x0
    mr 31, 0
    .4byte 0x4082000C # bne .L_8004077C
    mr 3, 29
    bl OSLoadContext
L_8004077C:
    lwz 0, 0x8(31)
    xoris 4, 30, 0x8000
    lwz 5, 0xc(31)
    xoris 3, 0, 0x8000
    subfc 0, 5, 28
    subfe 3, 3, 4
    subfe 3, 4, 4
    neg. 3, 3
    .4byte 0x4182007C # beq .L_80040818
    bl __OSGetSystemTime
    lwz 6, 0xc(31)
    li 7, 0x0
    lwz 0, 0x8(31)
    xoris 5, 7, 0x8000
    subfc 8, 4, 6
    subfe 0, 3, 0
    xoris 6, 0, 0x8000
    subfc 0, 7, 8
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_800407E0
    li 3, 0x0
    bl PPCMtdec
    .4byte 0x48000034 # b .L_80040810
L_800407E0:
    lis 4, 0x8000
    xoris 3, 7, 0x8000
    subfc 0, 4, 8
    subfe 3, 3, 6
    subfe 3, 6, 6
    neg. 3, 3
    .4byte 0x41820010 # beq .L_80040808
    mr 3, 8
    bl PPCMtdec
    .4byte 0x4800000C # b .L_80040810
L_80040808:
    subi 3, 4, 0x1
    bl PPCMtdec
L_80040810:
    mr 3, 29
    bl OSLoadContext
L_80040818:
    lwz 3, 0x14(31)
    cmplwi 3, 0x0
    .4byte 0x906D8850 # stw r3, AlarmQueue_8053A410@sda21(r0)
    .4byte 0x40820014 # bne .L_80040838
    li 0, 0x0
    .4byte 0x386D8850 # li r3, AlarmQueue_8053A410@sda21
    stw 0, 0x4(3)
    .4byte 0x4800000C # b .L_80040840
L_80040838:
    li 0, 0x0
    stw 0, 0x10(3)
L_80040840:
    lwz 30, 0x0(31)
    li 6, 0x0
    xoris 4, 6, 0x8000
    stw 6, 0x0(31)
    lwz 0, 0x18(31)
    lwz 5, 0x1c(31)
    xoris 3, 0, 0x8000
    subfc 0, 5, 6
    subfe 3, 3, 4
    subfe 3, 4, 4
    neg. 3, 3
    .4byte 0x41820018 # beq .L_80040884
    addi 3, 31, 0x0
    addi 7, 30, 0x0
    li 6, 0x0
    li 5, 0x0
    bl InsertAlarm
L_80040884:
    .4byte 0x838D8850 # lwz r28, AlarmQueue_8053A410@sda21(r0)
    cmplwi 28, 0x0
    .4byte 0x41820074 # beq .L_80040900
    bl __OSGetSystemTime
    lwz 6, 0xc(28)
    li 7, 0x0
    lwz 0, 0x8(28)
    xoris 5, 7, 0x8000
    subfc 8, 4, 6
    subfe 0, 3, 0
    xoris 6, 0, 0x8000
    subfc 0, 7, 8
    subfe 5, 5, 6
    subfe 5, 6, 6
    neg. 5, 5
    .4byte 0x41820010 # beq .L_800408D0
    li 3, 0x0
    bl PPCMtdec
    .4byte 0x48000034 # b .L_80040900
L_800408D0:
    lis 4, 0x8000
    xoris 3, 7, 0x8000
    subfc 0, 4, 8
    subfe 3, 3, 6
    subfe 3, 6, 6
    neg. 3, 3
    .4byte 0x41820010 # beq .L_800408F8
    mr 3, 8
    bl PPCMtdec
    .4byte 0x4800000C # b .L_80040900
L_800408F8:
    subi 3, 4, 0x1
    bl PPCMtdec
L_80040900:
    bl OSDisableScheduler
    addi 3, 1, 0x18
    bl OSClearContext
    addi 3, 1, 0x18
    bl OSSetCurrentContext
    addi 12, 30, 0x0
    mtlr 12
    addi 3, 31, 0x0
    addi 4, 29, 0x0
    blrl
    addi 3, 1, 0x18
    bl OSClearContext
    mr 3, 29
    bl OSSetCurrentContext
    bl OSEnableScheduler
    bl __OSReschedule
    mr 3, 29
    bl OSLoadContext
    lwz 0, 0x2f4(1)
    lwz 31, 0x2ec(1)
    lwz 30, 0x2e8(1)
    lwz 29, 0x2e4(1)
    lwz 28, 0x2e0(1)
    addi 1, 1, 0x2f0
    mtlr 0
    blr

DecrementerExceptionHandler:
    stw 0, 0x0(4)
    stw 1, 0x4(4)
    stw 2, 0x8(4)
    stmw 6, 0x18(4)
    mfspr 0, 913
    stw 0, 0x1a8(4)
    mfspr 0, 914
    stw 0, 0x1ac(4)
    mfspr 0, 915
    stw 0, 0x1b0(4)
    mfspr 0, 916
    stw 0, 0x1b4(4)
    mfspr 0, 917
    stw 0, 0x1b8(4)
    mfspr 0, 918
    stw 0, 0x1bc(4)
    mfspr 0, 919
    stw 0, 0x1c0(4)
    stwu 1, -0x8(1)
    b DecrementerExceptionCallback

fn_800409B8:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x18(1)
    stw 31, 0x14(1)
    stw 30, 0x10(1)
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_80040A3C
    .4byte 0x800D8850 # lwz r0, AlarmQueue_8053A410@sda21(r0)
    cmplwi 0, 0x0
    mr 31, 0
    .4byte 0x4182000C # beq .L_800409EC
    lwz 0, 0x14(31)
    .4byte 0x48000008 # b .L_800409F0
L_800409EC:
    li 0, 0x0
L_800409F0:
    mr 30, 0
    .4byte 0x48000004 # b .L_800409F8
L_800409F8:
    .4byte 0x48000004 # b .L_800409FC
L_800409FC:
    .4byte 0x48000038 # b .L_80040A34
L_80040A00:
    mr 3, 31
    bl fn_8004B0AC
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_80040A18
    mr 3, 31
    bl fn_8004061C
L_80040A18:
    cmplwi 30, 0x0
    mr 31, 30
    .4byte 0x4182000C # beq .L_80040A2C
    lwz 0, 0x14(30)
    .4byte 0x48000008 # b .L_80040A30
L_80040A2C:
    li 0, 0x0
L_80040A30:
    mr 30, 0
L_80040A34:
    cmplwi 31, 0x0
    .4byte 0x4082FFC8 # bne .L_80040A00
L_80040A3C:
    li 3, 0x1
    lwz 0, 0x1c(1)
    lwz 31, 0x14(1)
    lwz 30, 0x10(1)
    addi 1, 1, 0x18
    mtlr 0
    blr

fn_80040A58:
    addi 7, 3, 0x0
    li 6, 0x0
    .4byte 0x48000014 # b .L_80040A74
L_80040A64:
    cmplw 4, 7
    .4byte 0x40810014 # ble .L_80040A7C
    mr 6, 7
    lwz 7, 0x4(7)
L_80040A74:
    cmplwi 7, 0x0
    .4byte 0x4082FFEC # bne .L_80040A64
L_80040A7C:
    stw 7, 0x4(4)
    cmplwi 7, 0x0
    stw 6, 0x0(4)
    .4byte 0x41820038 # beq .L_80040AC0
    stw 4, 0x0(7)
    lwz 5, 0x8(4)
    add 0, 4, 5
    cmplw 0, 7
    .4byte 0x40820024 # bne .L_80040AC0
    lwz 0, 0x8(7)
    add 0, 5, 0
    stw 0, 0x8(4)
    lwz 7, 0x4(7)
    cmplwi 7, 0x0
    stw 7, 0x4(4)
    .4byte 0x41820008 # beq .L_80040AC0
    stw 4, 0x0(7)
L_80040AC0:
    cmplwi 6, 0x0
    .4byte 0x41820038 # beq .L_80040AFC
    stw 4, 0x4(6)
    lwz 5, 0x8(6)
    add 0, 6, 5
    cmplw 0, 4
    bnelr
    lwz 0, 0x8(4)
    cmplwi 7, 0x0
    add 0, 5, 0
    stw 0, 0x8(6)
    stw 7, 0x4(6)
    beqlr
    stw 6, 0x0(7)
    blr
L_80040AFC:
    mr 3, 4
    blr

OSFreeToHeap:
    mflr 0
    subi 6, 4, 0x20
    stw 0, 0x4(1)
    mulli 0, 3, 0xc
    stwu 1, -0x18(1)
    stw 31, 0x14(1)
    .4byte 0x808D8858 # lwz r4, lbl_8053A418@sda21(r0)
    lwz 3, 0x4(6)
    add 31, 4, 0
    cmplwi 3, 0x0
    lwz 5, 0x8(31)
    mr 4, 6
    .4byte 0x4182000C # beq .L_80040B40
    lwz 0, 0x0(4)
    stw 0, 0x0(3)
L_80040B40:
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80040B54
    lwz 5, 0x4(4)
    .4byte 0x4800000C # b .L_80040B5C
L_80040B54:
    lwz 0, 0x4(4)
    stw 0, 0x4(3)
L_80040B5C:
    stw 5, 0x8(31)
    lwz 3, 0x4(31)
    bl fn_80040A58
    stw 3, 0x4(31)
    lwz 0, 0x1c(1)
    lwz 31, 0x14(1)
    addi 1, 1, 0x18
    mtlr 0
    blr

