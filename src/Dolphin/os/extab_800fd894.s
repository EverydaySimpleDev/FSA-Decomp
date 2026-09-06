# fn_800FD894(ringArray, targetType, outBuffer, maxCount): CONFIRMS and
# EXTENDS the ring-adjacency library found in `oscluster_800fd498.c`
# (see project_fsa_extab_bug_resolved.md) - `ringArray->0x2` is
# directly confirmed here to be the ring's own SIZE (the loop bound),
# and `ringArray[i*4]->0x4->0x4` is the SAME 2-level pointer chase
# `fn_800FD5E8` uses to read a slot's "type" value.
#
# If `targetType==-1`: fills `outBuffer` with the sequential indices
# `0..size-1` and returns `size` - "give me every slot, in order."
# Otherwise: iterates all slots, resolving each one's type the same
# sentinel-`0xFF`-means-"use `ringArray->0x3`" way already established,
# and for each slot matching `targetType`, writes that slot's index
# into `outBuffer` and increments a counter - but if the counter would
# exceed the caller-supplied `maxCount`, calls the REAL Nintendo SDK
# `OSPanic` (already declared elsewhere in this project) with a
# format string at `lbl_80463A70` and line number `0x1a3`/419 - a
# genuine "too many matches, buffer overflow" debug assertion. Returns
# the final match count. Reads overall as `FindSlotsByType(ring,
# type, outIndices, maxOut)` - a real, well-understood utility. Needs
# no `-mgekko`. Caller still not traced.
#
# CORRECTION (real-C++ attempt): the -1 branch NULL-CHECKS outBuffer
# before the fill loop (skips filling but still returns size if
# outBuffer==0) - a real semantic detail missed on first read of the
# raw bytes. The OSPanic assertion also does NOT skip the store/
# increment afterward (both happen regardless of the assertion firing) -
# confirmed via literal fallthrough in the retail bytes.
#
# Attempted real-C++ promotion (Phase 4): fixed the outBuffer null-
# check (closed 12 of 28 missing bytes), but the remaining 16-byte gap
# is retail EAGERLY caching all 4 parameters into r26-r29 unconditionally
# at function entry (before the -1/type-scan branch split), while
# every phrasing tried (direct parameter use; explicit named-local
# copies of all 4 params up front) instead lazily caches only what's
# needed per branch, leaving `outBuffer` uncached until deep inside the
# type-scan path. 3 attempts (original, null-check fix, eager-local-
# caching) - the eager-caching source change had ZERO effect on the
# compiled register-allocation strategy. Deferred - this is a case
# where MWCC's own single-pass allocator decision (assign every
# parameter used anywhere in the function a fixed home register at
# prologue time) isn't reachable via source phrasing.
.section extab, "a"
.balign 4
.global etb_80005850
etb_80005850:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80005850, 8

.section extabindex, "a"
.balign 4
.global eti_80011BA8
eti_80011BA8:
    .4byte fn_800FD894
    .4byte 0x00000104
    .4byte etb_80005850
.size eti_80011BA8, 12

.text
.balign 4
.global fn_800FD894

fn_800FD894:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 27, 4
    cmpwi 27, -0x1
    mr 26, 3
    mr 28, 5
    mr 29, 6
    .4byte 0x40820038 # bne .L_800FD8F0
    cmplwi 28, 0x0
    .4byte 0x41820028 # beq .L_800FD8E8
    li 4, 0x0
    .4byte 0x48000010 # b .L_800FD8D8
L_800FD8CC:
    clrlwi 0, 4, 24
    stbx 4, 28, 0
    addi 4, 4, 0x1
L_800FD8D8:
    lbz 0, 0x2(26)
    clrlwi 3, 4, 24
    cmplw 3, 0
    .4byte 0x4180FFE8 # blt .L_800FD8CC
L_800FD8E8:
    lbz 3, 0x2(26)
    .4byte 0x48000098 # b .L_800FD984
L_800FD8F0:
    li 31, 0x0
    li 30, 0x0
    .4byte 0x48000078 # b .L_800FD970
L_800FD8FC:
    clrlwi 0, 30, 24
    cmplwi 0, 0xff
    .4byte 0x4082001C # bne .L_800FD920
    lbz 0, 0x3(26)
    slwi 3, 0, 2
    addi 0, 3, 0x4
    lwzx 3, 26, 0
    lwz 0, 0x4(3)
    .4byte 0x48000014 # b .L_800FD930
L_800FD920:
    clrlslwi 3, 30, 24, 2
    addi 0, 3, 0x4
    lwzx 3, 26, 0
    lwz 0, 0x4(3)
L_800FD930:
    cmpw 27, 0
    .4byte 0x40820038 # bne .L_800FD96C
    clrlwi 0, 31, 24
    cmpw 29, 0
    .4byte 0x40820020 # bne .L_800FD960
    lis 3, lbl_80463A70@ha
    lis 5, lbl_80463A80@ha
    addi 3, 3, lbl_80463A70@l
    li 4, 0x1a3
    addi 5, 5, lbl_80463A80@l
    crclr 6 # crclr cr1eq
    bl OSPanic
L_800FD960:
    clrlwi 0, 31, 24
    addi 31, 31, 0x1
    stbx 30, 28, 0
L_800FD96C:
    addi 30, 30, 0x1
L_800FD970:
    lbz 0, 0x2(26)
    clrlwi 3, 30, 24
    cmplw 3, 0
    .4byte 0x4180FF80 # blt .L_800FD8FC
    mr 3, 31
L_800FD984:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
