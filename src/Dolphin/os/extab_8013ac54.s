.section extab, "a"
.balign 4
.global etb_80006AA4
etb_80006AA4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006AA4, 8

.section extabindex, "a"
.balign 4
.global eti_80013384
eti_80013384:
    .4byte fn_8013AC54
    .4byte 0x0000003C
    .4byte etb_80006AA4
.size eti_80013384, 12

# fn_8013AC54(Mtx*=r3) - copies the caller's matrix into `lbl_80536C50`
# (offset 0, via PSMTXCopy) and refreshes lbl_80536C50->0x48/->0x4c with the
# camera-cue singleton's ->0x8/->0xc sub-object pointers (same pair
# fn_8013AB2C reads). Confirms `lbl_80536C50` layout so far: 0x00-0x2F = Mtx,
# 0x48/0x4c = mirrored sub-object pointers, 0x50 = transient mode tag.
#
# Attempted real-C++ promotion: retail loads offset 0x8 THEN 0xc (in that
# program order), storing to 0x48/0x4c respectively, and reuses the dying
# base-pointer register (r5) for the second load. 3 variants tried: (1)
# two named locals in natural declaration order - loads got reordered
# AND stores got interleaved with loads; (2) array-indexed dst[0]/dst[1]
# = src[0]/src[1] - loads/stores fully interleaved (worse); (3) two named
# locals declared in REVERSED order (0xc first, 0x8 second) - MWCC still
# evaluated the 0xc load first regardless of declaration order, and never
# reused r5 for the second load (always allocated a fresh register).
# Matches the documented scheduling-wall class where source restructuring
# cannot influence MWCC's load-order/register-reuse choice for two
# independent global-pointer field reads followed by two stores. Reverted
# to raw asm; see project_fsa_phase4_session3_continuation.md.
.text
.balign 4
.global fn_8013AC54

fn_8013AC54:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80536C50@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_80536C50@l
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 0, 0x8(5)
    lwz 5, 0xc(5)
    stw 0, 0x48(4)
    stw 5, 0x4c(4)
    bl PSMTXCopy
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
