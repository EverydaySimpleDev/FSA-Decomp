# Fresh-gap-hunt batch 27 landing (6 non-ctors tiny candidates, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
#
# REAL SOURCE KNOWN (32nd Phase 4 batch) but does NOT byte-match FSA's
# retail build - genuine Dolphin SDK function, real source confirmed
# via zeldaret/tww's src/dolphin/os/OSContext.c (identical across all
# these games' shared OS layer):
#
#   void OSClearContext(OSContext* context) {
#       context->mode = 0;
#       context->state = 0;
#       if (context == OS_CURRENT_FPU_CONTEXT) {
#           OS_CURRENT_FPU_CONTEXT = NULL;
#       }
#   }
#
# (OS_CURRENT_FPU_CONTEXT is a fixed-address global at 0x800000D8, now
# declared in include/Dolphin/OS/OSContext.h via the project's existing
# AT_ADDRESS convention.) Compiling this exact source with FSA's real
# project cflags (-O4,p etc, verified identical to cflags_runtime)
# produces a 4-BYTES-SHORTER function: MWCC collapses the trailing
# `if (cond) { single_stmt; }` into a direct `bnelr` early-return
# instead of retail's explicit `bne LABEL` + separate trailing `blr`,
# and hoists the `lis r4,0x8000` address computation before both field
# stores instead of interleaving it between them. Tried both the
# direct if-body phrasing and an early-return `if (cond) return;`
# variant - identical wrong output both times. This is a genuine
# compiler-scheduler/branch-form choice, not a logic gap - the
# understanding here IS real and confirmed (Track B knowledge), it
# just doesn't reach Track A byte-match yet. Left as raw asm for the
# build; the real source above is the correct reference for any future
# port/Track-B work regardless.
#
# ROOT-CAUSE INVESTIGATION (39th Phase 4 batch): narrowed the extra
# +8-byte frame / stwu-before-mflr symptom to a SPECIFIC mechanism -
# this project's `include/stl/stdarg.h` implements `va_start(ap,fmt)`
# as `__builtin_va_info(&ap)`, a real MWCC compiler intrinsic that
# takes the ADDRESS of the va_list local as an argument. MWCC's
# register allocator computes `&marker` EARLY (right as part of
# expanding that intrinsic call) and keeps it alive in a callee-saved
# register (r31, hence the extra save/restore + 8 bytes) all the way
# to the later `vprintf(msg, marker)` call - retail's actual bytes
# never persist this address in any register at all, computing it
# fresh and inline at the vprintf call site instead, meaning retail's
# real source almost certainly used a DIFFERENT va_start expansion
# that doesn't reference `&ap` as an intrinsic-call argument the same
# way. Ruled out as NOT the cause: optimization level (tested `-O0`
# through `-O4,p` explicitly, byte-identical prologue every time),
# `-RTTI on` vs `off` (matches TWW's own cflags either way, no change),
# and compiling as plain C instead of C++ (no change). The
# `__builtin_va_list`/`__builtin_va_start` alternate intrinsic path
# already present in stdarg.h's `#else` branch is NOT supported by
# this project's pinned MWCC build (`illegal function definition` /
# `undefined identifier` errors) - not a viable alternate macro to
# switch to. This affects EVERY varargs-adjacent Dolphin SDK function
# in the project (OSReport itself, plus its callers OSRegisterVersion/
# OSPanic-family), not just this one - a real, still-open, well-
# characterized investigation for a future session with more time to
# dedicate specifically to MWCC intrinsic-level codegen, not something
# reachable via cflags or source-level phrasing alone.
.text
.balign 4
.global OSClearContext

OSClearContext:
    li 5, 0x0
    sth 5, 0x1a0(3)
    lis 4, 0x8000
    sth 5, 0x1a2(3)
    lwz 0, 0xd8(4)
    cmplw 3, 0
    .4byte 0x40820008 # bne .L_800419D4
    stw 5, 0xd8(4)
L_800419D4:
    blr

