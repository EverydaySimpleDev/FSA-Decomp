#include "types.h"

/* fn_800FD498-fn_800FD818: RESOLVED (later session) - this is the
 * "RAIL" actor's own path-traversal system, not WRTC (see the old
 * speculative note below, now superseded). Confirmed via a direct DOL
 * vtable dump of `lbl_8049C770` (RAIL's vtable, installed by its real
 * ctor `fn_80202A0C` - see project_fsa_full_dispatch_sweep.md /
 * reference_fsa_full_dispatch_sweep.md's "RAIL" entry): the preceding
 * `fn_800FD438` (extab_800fd438.s) IS RAIL's real destructor (it
 * resets the vtable to this exact address), and `fn_800FD498`/
 * `fn_800FD49C` below are LITERALLY RAIL's own draw() and update()
 * vtable overrides - both empty (`blr`). This confirms RAIL is a
 * genuinely PASSIVE, invisible waypoint marker with no per-frame
 * behavior of its own - it exists purely to be found by other actors'
 * registry scans (see the CONFIRMED "RAIL" type-code scanner
 * `fn_801F71E8`, extab_801f714c.s, part of the RUSA-repel movement-
 * actor family investigation - project_fsa_rusa_repel_actor_family_solved.md).
 *
 * `r3` throughout is an array of registry-entry pointers (each slot
 * at `r3[i*4]` pointing to an entry whose OWN `+0x4` gives yet another
 * pointer, and `+0x90` is the confirmed universal spawn-parameter
 * field ALSO used by `fn_801F71E8` to read the packed "rail group ID"
 * at bits [8:16) - same field, different bit ranges), with 3 byte
 * fields at `r3+0x1`(a mode flag)/`r3+0x2`(this ring's own index)/
 * `r3+0x3` (a stepped/accumulator index) - a small fixed-size struct
 * describing one position in a RING of N linked RAIL waypoints, with
 * sentinel `0xFF` meaning "use my own index (`+0x3`)" in several call
 * sites. In short: this is the ordered/circular waypoint-path data
 * structure a rail-riding actor (mine cart, moving platform) would
 * walk along - a natural companion to `fn_801F71E8`'s "find all RAIL
 * actors with this group ID" scan.
 *
 * fn_800FD498/49C: RAIL's draw()/update() vtable overrides - empty.
 * fn_800FD4A0: RAIL's vtable slot +0xc override - nudges a position
 *   (`+0xc`/`+0x10`) by a fixed offset; NOT dtor-shaped despite sitting
 *   at the slot the shared-dtor convention usually occupies elsewhere
 *   in the project - RAIL genuinely overrides this slot with something
 *   else, an open question for whoever investigates this vtable slot
 *   project-wide next.
 * fn_800FD4C0: given 2 slot indices, returns 1 only if BOTH slots'
 *   linked entries have either bit 27 or bit 28 set in their `+0x90`.
 * fn_800FD548/594: single-slot variants returning bit 28 or bit 29
 *   of that slot's linked entry's `+0x90`.
 * fn_800FD5E8: a substantial adjacency check comparing this ring
 *   position against its computed previous/next neighbors (wrapping
 *   at the ring's own size, taken from `+0x90` bits 30/31 as a 2-bit
 *   direction/wrap mode) - returns 0 if adjacent, 1 otherwise.
 * fn_800FD818: steps the accumulator index (`+0x3`) forward/backward
 *   by a signed delta, wrapping at the ring size.
 *
 * No caller of fn_800FD4C0/548/594/5E8/818 has been traced yet -
 * finding the "rail cart" actor that actually walks this path (using
 * these functions) is the natural next step.
 */

ASM void fn_800FD498(void);
ASM void fn_800FD49C(void);
ASM void fn_800FD4A0(void);
ASM void fn_800FD4C0(void);
ASM void fn_800FD548(void);
ASM void fn_800FD594(void);
ASM void fn_800FD5E8(void);
ASM void fn_800FD818(void);

ASM void fn_800FD498(void)
{
    nofralloc
    blr
}

ASM void fn_800FD49C(void)
{
    nofralloc
    blr
}

ASM void fn_800FD4A0(void)
{
    nofralloc
    lfs fp0, 0xc(r3)
    opword  0xC0229110  // lfs f1, lbl_8053C0B0@sda21(r0)
    fadds fp0, fp0, fp1
    stfs fp0, 0xc(r3)
    lfs fp0, 0x10(r3)
    fadds fp0, fp0, fp1
    stfs fp0, 0x10(r3)
    blr
}

ASM void fn_800FD4C0(void)
{
    nofralloc
    clrlslwi r0, r4, 24, 2
    li r6, 0x0
    add r4, r3, r0
    li r7, 0x0
    lwz r4, 0x4(r4)
    lwz r4, 0x90(r4)
    rlwinm. r0, r4, 0, 28, 28
    opword  0x4182000C  // beq .L_800FD4E8
    li r6, 0x1
    opword  0x48000010  // b .L_800FD4F4
L_800FD4E8:
    rlwinm. r0, r4, 0, 27, 27
    opword  0x41820008  // beq .L_800FD4F4
    li r7, 0x1
L_800FD4F4:
    clrlslwi r0, r5, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r3, 0x90(r3)
    rlwinm. r0, r3, 0, 28, 28
    opword  0x4182000C  // beq .L_800FD514
    li r6, 0x1
    opword  0x48000010  // b .L_800FD520
L_800FD514:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x41820008  // beq .L_800FD520
    li r7, 0x1
L_800FD520:
    clrlwi r0, r6, 24
    cmplwi r0, 0x1
    opword  0x40820018  // bne .L_800FD540
    clrlwi r0, r7, 24
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_800FD540
    li r3, 0x1
    blr
L_800FD540:
    li r3, 0x0
    blr
}

ASM void fn_800FD548(void)
{
    nofralloc
    clrlwi r0, r4, 24
    cmplwi r0, 0xff
    opword  0x40820008  // bne .L_800FD558
    lbz r4, 0x3(r3)
L_800FD558:
    lbz r0, 0x1(r3)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800FD57C
    clrlslwi r0, r4, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x90(r3)
    extrwi r3, r0, 1, 28
    blr
L_800FD57C:
    clrlslwi r0, r4, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x90(r3)
    extrwi r3, r0, 1, 27
    blr
}

ASM void fn_800FD594(void)
{
    nofralloc
    clrlwi r0, r4, 24
    cmplwi r0, 0xff
    opword  0x40820020  // bne .L_800FD5BC
    lbz r0, 0x3(r3)
    slwi r0, r0, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x90(r3)
    rlwinm r0, r0, 0, 29, 29
    opword  0x48000018  // b .L_800FD5D0
L_800FD5BC:
    clrlslwi r0, r4, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x90(r3)
    rlwinm r0, r0, 0, 29, 29
L_800FD5D0:
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800FD5E0
    li r3, 0x0
    blr
L_800FD5E0:
    li r3, 0x1
    blr
}

ASM void fn_800FD5E8(void)
{
    nofralloc
    lbz r7, 0x2(r3)
    clrlwi r5, r4, 24
    cmplwi r5, 0xff
    slwi r0, r7, 2
    lwzx r6, r3, r0
    lwz r0, 0x90(r6)
    clrlwi r6, r0, 30
    opword  0x408200D4  // bne .L_800FD6D8
    lbz r0, 0x1(r3)
    lbz r5, 0x3(r3)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800FD620
    subi r8, r5, 0x1
    opword  0x48000008  // b .L_800FD624
L_800FD620:
    addi r8, r5, 0x1
L_800FD624:
    extsh. r0, r8
    opword  0x40800020  // bge .L_800FD648
    cmplwi r6, 0x1
    opword  0x40820010  // bne .L_800FD640
    subi r0, r7, 0x1
    extsh r8, r0
    opword  0x48000030  // b .L_800FD66C
L_800FD640:
    li r3, 0x0
    blr
L_800FD648:
    extsh r0, r8
    cmpw r0, r7
    opword  0x4082001C  // bne .L_800FD66C
    cmplwi r6, 0x1
    opword  0x4082000C  // bne .L_800FD664
    li r8, 0x0
    opword  0x4800000C  // b .L_800FD66C
L_800FD664:
    li r3, 0x0
    blr
L_800FD66C:
    cmplwi r5, 0xff
    opword  0x40820018  // bne .L_800FD688
    clrlslwi r0, r5, 24, 2
    add r4, r3, r0
    lwz r4, 0x4(r4)
    lwz r4, 0x4(r4)
    opword  0x48000014  // b .L_800FD698
L_800FD688:
    clrlslwi r0, r5, 24, 2
    add r4, r3, r0
    lwz r4, 0x4(r4)
    lwz r4, 0x4(r4)
L_800FD698:
    clrlwi r0, r8, 24
    cmplwi r0, 0xff
    opword  0x40820018  // bne .L_800FD6B8
    clrlslwi r0, r5, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x4(r3)
    opword  0x48000014  // b .L_800FD6C8
L_800FD6B8:
    clrlslwi r0, r8, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x4(r3)
L_800FD6C8:
    cmpw r4, r0
    opword  0x41820144  // beq .L_800FD810
    li r3, 0x1
    blr
L_800FD6D8:
    addi r8, r5, 0x1
    subi r0, r5, 0x1
    cmpw r8, r7
    opword  0x4082001C  // bne .L_800FD700
    cmplwi r6, 0x1
    opword  0x4082000C  // bne .L_800FD6F8
    li r8, 0x0
    opword  0x4800002C  // b .L_800FD720
L_800FD6F8:
    subi r8, r8, 0x1
    opword  0x48000024  // b .L_800FD720
L_800FD700:
    cmpwi r0, 0x0
    opword  0x4080001C  // bge .L_800FD720
    cmplwi r6, 0x1
    opword  0x40820010  // bne .L_800FD71C
    subi r0, r7, 0x1
    extsh r0, r0
    opword  0x48000008  // b .L_800FD720
L_800FD71C:
    li r0, 0x0
L_800FD720:
    clrlwi r5, r4, 24
    cmplwi r5, 0xff
    opword  0x4082001C  // bne .L_800FD744
    lbz r5, 0x3(r3)
    slwi r5, r5, 2
    add r5, r3, r5
    lwz r5, 0x4(r5)
    lwz r6, 0x4(r5)
    opword  0x48000014  // b .L_800FD754
L_800FD744:
    clrlslwi r5, r4, 24, 2
    add r5, r3, r5
    lwz r5, 0x4(r5)
    lwz r6, 0x4(r5)
L_800FD754:
    clrlwi r5, r8, 24
    cmplwi r5, 0xff
    opword  0x4082001C  // bne .L_800FD778
    lbz r5, 0x3(r3)
    slwi r5, r5, 2
    add r5, r3, r5
    lwz r5, 0x4(r5)
    lwz r5, 0x4(r5)
    opword  0x48000014  // b .L_800FD788
L_800FD778:
    clrlslwi r5, r8, 24, 2
    add r5, r3, r5
    lwz r5, 0x4(r5)
    lwz r5, 0x4(r5)
L_800FD788:
    cmpw r6, r5
    opword  0x4182000C  // beq .L_800FD798
    li r3, 0x1
    blr
L_800FD798:
    clrlwi r5, r4, 24
    cmplwi r5, 0xff
    opword  0x4082001C  // bne .L_800FD7BC
    lbz r4, 0x3(r3)
    slwi r4, r4, 2
    add r4, r3, r4
    lwz r4, 0x4(r4)
    lwz r5, 0x4(r4)
    opword  0x48000014  // b .L_800FD7CC
L_800FD7BC:
    clrlslwi r4, r4, 24, 2
    add r4, r3, r4
    lwz r4, 0x4(r4)
    lwz r5, 0x4(r4)
L_800FD7CC:
    clrlwi r4, r0, 24
    cmplwi r4, 0xff
    opword  0x4082001C  // bne .L_800FD7F0
    lbz r0, 0x3(r3)
    slwi r0, r0, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x4(r3)
    opword  0x48000014  // b .L_800FD800
L_800FD7F0:
    clrlslwi r0, r0, 24, 2
    add r3, r3, r0
    lwz r3, 0x4(r3)
    lwz r0, 0x4(r3)
L_800FD800:
    cmpw r5, r0
    opword  0x4182000C  // beq .L_800FD810
    li r3, 0x1
    blr
L_800FD810:
    li r3, 0x0
    blr
}

ASM void fn_800FD818(void)
{
    nofralloc
    lbz r6, 0x2(r3)
    extsb r5, r4
    lbz r7, 0x3(r3)
    clrlslwi r0, r6, 24, 2
    lwzx r4, r3, r0
    add r7, r7, r5
    extsh. r0, r7
    lwz r0, 0x90(r4)
    clrlwi r4, r0, 30
    opword  0x40800024  // bge .L_800FD860
    cmplwi r4, 0x1
    opword  0x40820010  // bne .L_800FD854
    add r0, r6, r7
    stb r0, 0x3(r3)
    blr
L_800FD854:
    li r0, 0x0
    stb r0, 0x3(r3)
    blr
L_800FD860:
    extsh r0, r7
    cmpw r0, r6
    opword  0x41800024  // blt .L_800FD88C
    cmplwi r4, 0x1
    subf r7, r6, r7
    opword  0x4082000C  // bne .L_800FD880
    stb r7, 0x3(r3)
    blr
L_800FD880:
    subi r0, r6, 0x1
    stb r0, 0x3(r3)
    blr
L_800FD88C:
    stb r7, 0x3(r3)
    blr
}

