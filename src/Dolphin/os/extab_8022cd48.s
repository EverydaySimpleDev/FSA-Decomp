/*
 * Companion-fairy hint-dispatch template, instance 1/3.
 *
 * fn_8022CD48(playerIdx): looks up the global player-manager array
 * lbl_8053AC90[playerIdx]->0x4 (that player's companion-fairy object);
 * bails (returns false/0) if the global array is null, playerIdx is out
 * of [0,4), or the companion pointer is null. Otherwise reads a
 * "pending hint" flag byte at companion+0xcac; if set, tail-dispatches
 * fn_80248FF0(companionObj) - "cancel/reset the companion's currently
 * queued hint" - and returns whatever that call leaves in r3/r0.
 *
 * This exact control-flow shape (lookup+bounds-check+flag-gate+dispatch)
 * is shared byte-for-byte by fn_80230FD0 and fn_8023DFF4 in this same
 * cluster, differing only in which function they dispatch to - a
 * templated-code instantiation pattern already confirmed project-wide
 * (see project_fsa_player_status_effect_discovered.md).
 */
.section extab, "a"
.balign 4
.global etb_8000A998
etb_8000A998:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A998, 8

.section extabindex, "a"
.balign 4
.global eti_80018970
eti_80018970:
    .4byte fn_8022CD48
    .4byte 0x0000008C
    .4byte etb_8000A998
.size eti_80018970, 12

.text
.balign 4
.global fn_8022CD48

fn_8022CD48:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_8022CDC4
    .4byte 0x4082000C # bne .L_8022CD6C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CDAC
L_8022CD6C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022CD7C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CDAC
L_8022CD7C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022CD8C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CDAC
L_8022CD8C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022CDA8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CDAC
L_8022CDA8:
    lbz 0, 0xcac(4)
L_8022CDAC:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022CDC4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80248FF0
L_8022CDC4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

