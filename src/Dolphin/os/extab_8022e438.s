.section extab, "a"
.balign 4
.global etb_8000AA78
etb_8000AA78:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000AA78, 8

.section extabindex, "a"
.balign 4
.global eti_80018AC0
eti_80018AC0:
    .4byte fn_8022E438
    .4byte 0x0000049C
    .4byte etb_8000AA78
.size eti_80018AC0, 12

# fn_8022E438(a, b) - "are players a and b in the same link group."
# FULLY TRACED (upgraded from the earlier survey-level pass - see
# [[project_fsa_player_target_helper_decoded]] for the whole family).
# The largest function in this helper family after fn_8022EA0C
# (0x49C bytes, ~295 instructions), almost entirely inlined copies of
# the standard bounds-check+flag-gate+delegate template (see
# fn_8022F514/fn_8022F3DC) rather than real calls to them - the compiler
# apparently didn't factor out the repeated pattern here. Equivalent C:
#
#   bool fn_8022E438(s32 a, s32 b) {
#       PlayerObj *pa = GetPlayer(a), *pb = GetPlayer(b);   // NULL-safe, bounds-checked
#       if (!pa || !pa->flag_0xcac) return false;
#       if (!pb || !pb->flag_0xcac) return false;
#       if (a == b) return true;
#       if (IsLinked(pa)) {                  // Player_IsLinked(pa)
#           s32 linkA = GetLinkTarget(pa);    // Player_GetLinkTargetIndex(pa)
#           if (b == linkA) return true;      // a points directly at b
#           linkA = GetLinkTarget(pa);         // re-fetched (no CSE across the branch)
#           s32 linkB = GetLinkTarget(pb);      // Player_GetLinkTargetIndex(pb)
#           return linkA == linkB;              // a and b share the same link target
#       } else {
#           if (!IsLinked(pb)) return false;     // Player_IsLinked(pb) - neither linked
#           s32 linkB = GetLinkTarget(pb);
#           return linkB == a;                    // b points back at a
#       }
#   }
#
# The two final equality checks (`linkA == linkB` and `linkB == a`) are
# each compiled as the project's standard `subf`+`cntlzw`+shift-out-bit-5
# idiom (a branchless "are these two 32-bit values equal" trick, seen
# throughout this whole family and in fn_8022EA0C) rather than a
# cmpw/beq - hence the "extrwi 8,19" / "srwi 5" oddities in the raw
# disassembly, which both reduce to the same single-bit extraction.
# This closes out the co-op link/chain mechanic end-to-end: a "group" is
# just the set of players connected by direct or shared link-target
# pointers, and this function is the canonical "same group" test used by
# fn_8022EA0C's sorting/matching loops.
.text
.balign 4
.global fn_8022E438

fn_8022E438:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E468
    li 3, 0x0
    .4byte 0x48000458 # b .L_8022E8BC
L_8022E468:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022E478
    li 3, 0x0
    .4byte 0x48000448 # b .L_8022E8BC
L_8022E478:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022E488
    li 3, 0x0
    .4byte 0x48000438 # b .L_8022E8BC
L_8022E488:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022E498
    li 3, 0x0
    .4byte 0x48000428 # b .L_8022E8BC
L_8022E498:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022E4A8
    li 3, 0x0
    .4byte 0x48000418 # b .L_8022E8BC
L_8022E4A8:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E4B8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E4F8
L_8022E4B8:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022E4C8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E4F8
L_8022E4C8:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022E4D8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E4F8
L_8022E4D8:
    slwi 0, 30, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E4F4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E4F8
L_8022E4F4:
    lbz 0, 0xcac(3)
L_8022E4F8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E508
    li 3, 0x0
    .4byte 0x480003B8 # b .L_8022E8BC
L_8022E508:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E518
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E558
L_8022E518:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022E528
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E558
L_8022E528:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022E538
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E558
L_8022E538:
    slwi 0, 31, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E554
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E558
L_8022E554:
    lbz 0, 0xcac(3)
L_8022E558:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E568
    li 3, 0x0
    .4byte 0x48000358 # b .L_8022E8BC
L_8022E568:
    cmpw 30, 31
    .4byte 0x4082000C # bne .L_8022E578
    li 3, 0x1
    .4byte 0x48000348 # b .L_8022E8BC
L_8022E578:
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022E588
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022E5F4
L_8022E588:
    .4byte 0x4082000C # bne .L_8022E594
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E5D4
L_8022E594:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022E5A4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E5D4
L_8022E5A4:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022E5B4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E5D4
L_8022E5B4:
    slwi 0, 30, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E5D0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E5D4
L_8022E5D0:
    lbz 0, 0xcac(3)
L_8022E5D4:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E5E4
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022E5F4
L_8022E5E4:
    slwi 0, 30, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_IsLinked
L_8022E5F4:
    clrlwi. 0, 3, 24
    .4byte 0x418201A8 # beq .L_8022E7A0
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E610
    li 3, -0x1
    .4byte 0x48000070 # b .L_8022E67C
L_8022E610:
    .4byte 0x4082000C # bne .L_8022E61C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E65C
L_8022E61C:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022E62C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E65C
L_8022E62C:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022E63C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E65C
L_8022E63C:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E658
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E65C
L_8022E658:
    lbz 0, 0xcac(3)
L_8022E65C:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E66C
    li 3, -0x1
    .4byte 0x48000014 # b .L_8022E67C
L_8022E66C:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_GetLinkTargetIndex
L_8022E67C:
    cmpw 31, 3
    .4byte 0x4082000C # bne .L_8022E68C
    li 3, 0x1
    .4byte 0x48000234 # b .L_8022E8BC
L_8022E68C:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E6A0
    li 30, -0x1
    .4byte 0x48000074 # b .L_8022E710
L_8022E6A0:
    .4byte 0x4082000C # bne .L_8022E6AC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E6EC
L_8022E6AC:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8022E6BC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E6EC
L_8022E6BC:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8022E6CC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E6EC
L_8022E6CC:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E6E8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E6EC
L_8022E6E8:
    lbz 0, 0xcac(3)
L_8022E6EC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E6FC
    li 30, -0x1
    .4byte 0x48000018 # b .L_8022E710
L_8022E6FC:
    slwi 0, 30, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_GetLinkTargetIndex
    mr 30, 3
L_8022E710:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E724
    li 3, -0x1
    .4byte 0x48000070 # b .L_8022E790
L_8022E724:
    .4byte 0x4082000C # bne .L_8022E730
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E770
L_8022E730:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022E740
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E770
L_8022E740:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022E750
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E770
L_8022E750:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E76C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E770
L_8022E76C:
    lbz 0, 0xcac(3)
L_8022E770:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E780
    li 3, -0x1
    .4byte 0x48000014 # b .L_8022E790
L_8022E780:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_GetLinkTargetIndex
L_8022E790:
    subf 0, 30, 3
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000120 # b .L_8022E8BC
L_8022E7A0:
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E7B4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022E820
L_8022E7B4:
    .4byte 0x4082000C # bne .L_8022E7C0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E800
L_8022E7C0:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022E7D0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E800
L_8022E7D0:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022E7E0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E800
L_8022E7E0:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E7FC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E800
L_8022E7FC:
    lbz 0, 0xcac(3)
L_8022E800:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E810
    li 3, 0x0
    .4byte 0x48000014 # b .L_8022E820
L_8022E810:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_IsLinked
L_8022E820:
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_8022E8B8
    .4byte 0x808D90D0 # lwz r4, lbl_8053AC90@sda21(r0)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022E83C
    li 3, -0x1
    .4byte 0x48000070 # b .L_8022E8A8
L_8022E83C:
    .4byte 0x4082000C # bne .L_8022E848
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022E888
L_8022E848:
    cmpwi 31, 0x0
    .4byte 0x4080000C # bge .L_8022E858
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022E888
L_8022E858:
    cmpwi 31, 0x4
    .4byte 0x4180000C # blt .L_8022E868
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022E888
L_8022E868:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8022E884
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022E888
L_8022E884:
    lbz 0, 0xcac(3)
L_8022E888:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8022E898
    li 3, -0x1
    .4byte 0x48000014 # b .L_8022E8A8
L_8022E898:
    slwi 0, 31, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    bl Player_GetLinkTargetIndex
L_8022E8A8:
    subf 0, 30, 3
    cntlzw 0, 0
    srwi 3, 0, 5
    .4byte 0x48000008 # b .L_8022E8BC
L_8022E8B8:
    li 3, 0x0
L_8022E8BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

