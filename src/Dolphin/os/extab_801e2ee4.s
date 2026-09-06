/*
 * TINK (vtable lbl_804A51E4). Builds an axis-aligned box around
 * this->0xc/0x10 from fixed offsets, then calls
 * fn_802397B4(box, this->0x4, this->0x198) - a likely visual/audio
 * notification-effect trigger, tagged with owner and companion-slot ID.
 * Called from fn_801E0CF4 as one of the two outcomes of its final
 * state/sub-state dispatch (the other being a transition via
 * fn_801E2F40/fn_801E1594).
 */
.section extab, "a"
.balign 4
.global etb_800089C8
etb_800089C8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800089C8, 8

.section extabindex, "a"
.balign 4
.global eti_80015EE0
eti_80015EE0:
    .4byte fn_801E2EE4
    .4byte 0x0000005C
    .4byte etb_800089C8
.size eti_80015EE0, 12

.text
.balign 4
.global fn_801E2EE4

fn_801E2EE4:
    stwu 1, -0x20(1)
    mflr 0
    mr 5, 3
    lfs 4, 0x10(3)
    .4byte 0xC002C530 # lfs f0, lbl_8053F4D0@sda21(r0)
    addi 3, 1, 0x8
    lfs 1, 0xc(5)
    fadds 3, 0, 4
    stw 0, 0x24(1)
    fadds 2, 0, 1
    lwz 4, 0x4(5)
    fsubs 1, 1, 0
    lwz 5, 0x198(5)
    fsubs 0, 4, 0
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 3, 0x14(1)
    bl fn_802397B4
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

