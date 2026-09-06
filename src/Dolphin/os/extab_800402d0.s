# NOTE: attempted real-C++ promotion (33rd Phase 4 batch) using real
# confirmed source (zeldaret/tww's src/dolphin/os/OSAlarm.c, adapted
# for FSA's own extra `OSRegisterResetFunction` call that TWW's
# version doesn't have). BOTH functions hit the SAME issue as
# OSReport/OSClearContext (see extab_800419b4.s): MWCC emits `stwu`
# BEFORE `mflr` in the prologue (retail/TWW: `mflr` first) with a
# LARGER stack frame than retail. This is the THIRD real SDK function
# hitting this exact pattern - all 3 are functions that either call a
# varargs function or register an exception/reset handler, suggesting
# a real, findable systematic cause (not yet identified) rather than
# 3 unrelated coincidences. Worth investigating as its own root cause
# (likely a missing/extra cflag, header difference, or ABI pragma) if
# revisited - fixing it could unlock all 3 (and possibly more) at
# once. Left as raw asm.
#
# RETESTED (continuation session): tested OSRegisterVersion in
# isolation (it's NOT itself variadic - only CALLS the variadic
# OSReport - so it doesn't touch va_list/va_start machinery at all).
# Found and fixed one real, separate bug along the way: declaring the
# format-string global as `extern char lbl_X[];` (incomplete array)
# makes MWCC emit a full 2-instruction `lis+addi` absolute address
# instead of retail's single-instruction `@sda21`-relative load;
# declaring it at its EXACT known size (`extern char lbl_X[4];`,
# matching symbols.txt) fixes this and matches retail's addressing
# exactly - a genuinely useful, separate finding. Also confirmed the
# stack-frame-size/prologue-order bug is INDEPENDENT of the variadic
# call itself: it persists byte-identically even when OSReport is
# declared as a plain 2-fixed-argument (non-variadic) function, ruling
# out the crclr/variadic-ABI marking as the cause. `stwu` still
# precedes `mflr` and the frame is still -16 (retail: -8) regardless.
#
# ROOT CAUSE FOUND (continuation session, later): this whole family's
# stack-frame/prologue-order symptom is a COMPILER VERSION difference,
# not a cflags/source issue - confirmed via a direct A/B test against
# zeldaret/pikmin's own build (same exact source, same exact stdarg.h
# va_start macro, but pinned to GC/1.2.5 instead of this project's
# GC/1.3.2). Compiling OSReport with the actual GC/1.2.5 binary
# (already present in build/compilers/GC/1.2.5/) reproduces retail's
# exact mflr-first/-0x78-frame prologue byte-for-byte - see the now-
# landed Dolphin/os/OSReport.c, which uses a per-Object mw_version
# override. Retesting THIS file's 2 functions with the same GC/1.2.5
# override got very close (mflr-first, correct -0x8 frame) but the
# real project build hit an unrelated-looking extabindex layout error
# (`Expected to find symbol @eti_80011860 ... found extabindex section
# size 0xFFD4` - at a LOW address far from this file, suggesting a
# global layout-order sensitivity, not a bug in these 2 functions
# specifically) - reverted cleanly to raw asm pending a dedicated
# investigation into why mixing a GC/1.2.5 object in here (unlike
# OSReport.c's own successful GC/1.2.5 use) disturbs extabindex
# placement elsewhere. Real net progress: the root cause for the whole
# OSReport-family symptom is now KNOWN and confirmed (compiler version,
# not cflags) - only the specific link-layer interaction for THIS file
# remains open. See Game/... OSReport.c for the working pattern.
.text
.balign 4
.global OSRegisterVersion
.global OSInitAlarm

OSRegisterVersion:
    mflr 0
    stw 0, 0x4(1)
    stwu 1, -0x8(1)
    mr 4, 3
    crclr 6
    .4byte 0x386D803C # li r3, lbl_80539BFC@sda21
    bl OSReport
    lwz 0, 0xc(1)
    addi 1, 1, 0x8
    mtlr 0
    blr

OSInitAlarm:
    mflr 0
    li 3, 0x8
    stw 0, 0x4(1)
    stwu 1, -0x8(1)
    bl __OSGetExceptionHandler
    lis 4, DecrementerExceptionHandler@ha
    addi 4, 4, DecrementerExceptionHandler@l
    cmplw 3, 4
    .4byte 0x41820028 # beq .L_80040344
    li 0, 0x0
    .4byte 0x386D8850 # li r3, AlarmQueue_8053A410@sda21
    stw 0, 0x4(3)
    li 3, 0x8
    .4byte 0x900D8850 # stw r0, AlarmQueue_8053A410@sda21(r0)
    bl __OSSetExceptionHandler
    lis 3, ResetFunctionInfo_804957F0@ha
    addi 3, 3, ResetFunctionInfo_804957F0@l
    bl OSRegisterResetFunction
L_80040344:
    lwz 0, 0xc(1)
    addi 1, 1, 0x8
    mtlr 0
    blr
