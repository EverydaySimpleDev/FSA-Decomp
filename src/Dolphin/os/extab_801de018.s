/*
 * TINK (vtable lbl_804A51E4) per-frame "player entered pickup zone" check.
 * True only while this->0x248 (state) is 4, 6, or 7. Builds an axis-aligned
 * box around this->0xc/0x10 (position) from 4 float offset constants, then
 * probes it against each of the 4 players in turn via the confirmed
 * 4-player-scan family (fn_8023AE34/fn_8023AA18/fn_8023AC74/fn_8023AD54),
 * passing this->0x4 (owner ID) so the owning player is excluded/included
 * per that family's normal semantics. On the first player found inside the
 * box, calls fn_801D9C58(this, 5) - a state-transition trigger (mode 5) -
 * and returns 1; otherwise returns 0.
 */
.section extab, "a"
.balign 4
.global etb_800088F0
etb_800088F0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800088F0, 8

.section extabindex, "a"
.balign 4
.global eti_80015D9C
eti_80015D9C:
    .4byte fn_801DE018
    .4byte 0x00000114
    .4byte etb_800088F0
.size eti_80015D9C, 12

.text
.balign 4
.global fn_801DE018

fn_801DE018:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    mr 30, 3
    lwz 0, 0x248(3)
    li 3, 0x0
    cmpwi 0, 0x5
    .4byte 0x41820020 # beq .L_801DE060
    .4byte 0x40800010 # bge .L_801DE054
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_801DE05C
    .4byte 0x48000010 # b .L_801DE060
L_801DE054:
    cmpwi 0, 0x8
    .4byte 0x40800008 # bge .L_801DE060
L_801DE05C:
    li 3, 0x1
L_801DE060:
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_801DE110
    .4byte 0xC022C410 # lfs f1, lbl_8053F3B0@sda21(r0)
    addi 3, 1, 0x10
    lfs 4, 0x10(30)
    addi 5, 1, 0x8
    .4byte 0xC002C408 # lfs f0, lbl_8053F3A8@sda21(r0)
    .4byte 0xC042C40C # lfs f2, lbl_8053F3AC@sda21(r0)
    fadds 3, 1, 4
    lfs 5, 0xc(30)
    fadds 0, 0, 4
    .4byte 0xC022C404 # lfs f1, lbl_8053F3A4@sda21(r0)
    fadds 2, 2, 5
    stfs 3, 0x1c(1)
    fadds 1, 1, 5
    stfs 0, 0x14(1)
    stfs 1, 0x10(1)
    stfs 2, 0x18(1)
    lwz 4, 0x4(30)
    bl fn_8023AE34
    cmpwi 3, 0x0
    .4byte 0x40800044 # bge .L_801DE0F8
    lwz 4, 0x4(30)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023AA18
    cmpwi 3, 0x0
    .4byte 0x4080002C # bge .L_801DE0F8
    lwz 4, 0x4(30)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023AC74
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_801DE0F8
    lwz 4, 0x4(30)
    addi 3, 1, 0x10
    addi 5, 1, 0x8
    bl fn_8023AD54
L_801DE0F8:
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_801DE110
    mr 3, 30
    li 4, 0x5
    bl fn_801D9C58
    li 31, 0x1
L_801DE110:
    lwz 0, 0x34(1)
    mr 3, 31
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

