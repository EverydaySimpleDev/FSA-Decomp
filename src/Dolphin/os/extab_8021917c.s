/*
 * NEW ACTOR (vtable lbl_804A6550). While sub-state (this->0x278) == 1,
 * checks 3 animation-cue timing points via fn_800C3638(this->0x294,
 * frameConst); on any match, queues an animation cue (0x4006b - NOTE:
 * corrected from an earlier header's mistaken "0x46B" reading; the
 * actual `lis 4,0x4; addi 4,4,0x6b` computes 0x40000+0x6b). Caches
 * the previous sub-state (this->0x280), calls the confirmed
 * fn_801CE4BC() (already seen in TINK's fn_801DE9F4), then - if
 * sub-state==1 and neither the old nor new sub-state was 5 - calls
 * fn_8021B668(this) (outside this gap).
 *
 * Attempted real-C++ promotion (Phase 4): everything matched
 * byte-exact except ONE branch instruction's condition-sense bit
 * (`bne`/BO=0x04 vs `beq`/BO=0x0C, SAME branch target both times) for
 * the final `newSubState != 5` check - 3 source variants (a plain
 * `&&`-chain; a nested `if`; an inverted `if/else`) all normalized to
 * the SAME compiled form, confirming this is a compiler-internal
 * canonicalization choice for which basic block is "fall-through" vs
 * "branch-to", not something source restructuring controls. Reverted
 * to raw asm; see project_fsa_phase4_resumed_session2.md.
 */
.section extab, "a"
.balign 4
.global etb_8000A340
etb_8000A340:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A340, 8

.section extabindex, "a"
.balign 4
.global eti_80018028
eti_80018028:
    .4byte fn_8021917C
    .4byte 0x000000C0
    .4byte etb_8000A340
.size eti_80018028, 12

.text
.balign 4
.global fn_8021917C

fn_8021917C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x278(3)
    cmpwi 0, 0x1
    .4byte 0x40820054 # bne .L_802191F0
    .4byte 0xC022CCD8 # lfs f1, lbl_8053FC78@sda21(r0)
    addi 3, 30, 0x294
    bl fn_800C3638
    cmpwi 3, 0x0
    .4byte 0x4082002C # bne .L_802191DC
    .4byte 0xC022CCDC # lfs f1, lbl_8053FC7C@sda21(r0)
    addi 3, 30, 0x294
    bl fn_800C3638
    cmpwi 3, 0x0
    .4byte 0x40820018 # bne .L_802191DC
    .4byte 0xC022CCE0 # lfs f1, lbl_8053FC80@sda21(r0)
    addi 3, 30, 0x294
    bl fn_800C3638
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_802191F0
L_802191DC:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x6b
    li 5, 0x0
    bl fn_801F0E34
L_802191F0:
    lwz 31, 0x280(30)
    mr 3, 30
    bl fn_801CE4BC
    lwz 0, 0x278(30)
    lwz 3, 0x280(30)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_80219224
    cmpwi 31, 0x5
    .4byte 0x41820014 # beq .L_80219224
    cmpwi 3, 0x5
    .4byte 0x4082000C # bne .L_80219224
    mr 3, 30
    bl fn_8021B668
L_80219224:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

