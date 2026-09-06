/*
 * NEW ACTOR (vtable lbl_804A5A30) - fn_80205E0C(this, newState). The
 * shared state-ENTRY handler: a 10-way jumptable (jumptable_804A5AFC)
 * doing per-state setup, always committing this->0x24c=0;
 * this->0x248=newState at the end (with an early-out for state 7 in
 * certain cases) - the exact analog of TINK's fn_801E1594. Landed as
 * Track A (byte-matched) + structural overview.
 *
 * Per-state setup resets this->0x340/0x338 tracked-target IDs to -1,
 * resets facing (0x3c/0x40/0x44), and loads per-variant timer/anchor
 * presets from a lookup table (lbl_8046A238, indexed by this->0x350*
 * 0x14). Calls the unconfirmed fn_80217484 (state 8 setup) and
 * fn_8021BA30 (commits this->0x33c into a sub-state field for states
 * 7/8), and the confirmed fn_801D0280 facing helper.
 */
.section extab, "a"
.balign 4
.global etb_80009C48
etb_80009C48:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009C48, 8

.section extabindex, "a"
.balign 4
.global eti_800175F0
eti_800175F0:
    .4byte fn_80205E0C
    .4byte 0x00000290
    .4byte etb_80009C48
.size eti_800175F0, 12

.text
.balign 4
.global fn_80205E0C

fn_80205E0C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmpwi 31, 0x7
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x40820020 # bne .L_80205E4C
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x40800014 # bge .L_80205E4C
    cmpwi 0, 0x3
    .4byte 0x40800244 # bge .L_80206084
    .4byte 0x48000008 # b .L_80205E4C
    .4byte 0x4800023C # b .L_80206084
L_80205E4C:
    lwz 0, 0x248(30)
    cmpwi 0, 0x4
    .4byte 0x4080001C # bge .L_80205E70
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_80205E64
    .4byte 0x48000010 # b .L_80205E70
L_80205E64:
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 20, 18
    stw 0, 0x230(30)
L_80205E70:
    cmplwi 31, 0x9
    .4byte 0x41810204 # bgt .L_80206078
    lis 3, jumptable_804A5AFC@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A5AFC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 4, -0x1
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    stw 4, 0x340(30)
    li 0, 0x0
    addi 3, 30, 0x368
    stw 4, 0x338(30)
    stfs 0, 0x258(30)
    stw 0, 0x2a8(30)
    bl fn_80217484
    .4byte 0x480001C4 # b .L_80206078
    li 0, -0x1
    lis 3, lbl_8046A238@ha
    stw 0, 0x340(30)
    li 4, 0x1e
    addi 3, 3, lbl_8046A238@l
    li 0, 0x0
    stb 4, 0x348(30)
    lwz 4, 0x350(30)
    mulli 4, 4, 0x14
    lfsx 0, 3, 4
    stfs 0, 0x258(30)
    stw 0, 0x2a8(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x1000
    stw 0, 0x230(30)
    .4byte 0x48000184 # b .L_80206078
    li 0, 0x1e
    lis 3, lbl_8046A238@ha
    stb 0, 0x349(30)
    addi 3, 3, lbl_8046A238@l
    lwz 0, 0x350(30)
    mulli 0, 0, 0x14
    add 3, 3, 0
    lfs 0, 0x4(3)
    stfs 0, 0x258(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x1000
    stw 0, 0x230(30)
    .4byte 0x48000150 # b .L_80206078
    li 3, -0x1
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    stw 3, 0x340(30)
    li 0, 0x0
    stw 3, 0x338(30)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0x2a8(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x1000
    stw 0, 0x230(30)
    .4byte 0x48000114 # b .L_80206078
    li 0, -0x1
    stw 0, 0x110(30)
    .4byte 0x48000108 # b .L_80206078
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x340(30)
    stw 3, 0x338(30)
    stw 0, 0x2a8(30)
    .4byte 0x480000F0 # b .L_80206078
    li 0, -0x1
    lis 3, lbl_8046A238@ha
    stw 0, 0x340(30)
    li 5, 0x1e
    addi 4, 3, lbl_8046A238@l
    li 0, 0x0
    stb 5, 0x348(30)
    mr 3, 30
    lwz 5, 0x350(30)
    mulli 5, 5, 0x14
    lfsx 0, 4, 5
    stfs 0, 0x258(30)
    stw 0, 0x2a8(30)
    lwz 4, 0x338(30)
    bl fn_801D0280
    addi 0, 3, -0x8000
    sth 0, 0x33c(30)
    .4byte 0x480000A8 # b .L_80206078
    li 3, -0x1
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    stw 3, 0x340(30)
    li 0, 0x0
    stw 3, 0x338(30)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    stw 0, 0x2a8(30)
    .4byte 0x48000084 # b .L_80206078
    li 5, -0x1
    lis 3, lbl_8046A238@ha
    stw 5, 0x340(30)
    addi 4, 3, lbl_8046A238@l
    li 0, 0x0
    addi 3, 30, 0x374
    stw 5, 0x338(30)
    lwz 5, 0x350(30)
    mulli 5, 5, 0x14
    lfsx 0, 4, 5
    stfs 0, 0x258(30)
    stw 0, 0x2a8(30)
    lha 4, 0x33c(30)
    bl fn_8021BA30
    .4byte 0x48000048 # b .L_80206078
    lwz 0, 0x248(30)
    cmpwi 0, 0x8
    .4byte 0x4182003C # beq .L_80206078
    li 5, -0x1
    lis 3, lbl_8046A238@ha
    stw 5, 0x340(30)
    addi 4, 3, lbl_8046A238@l
    li 0, 0x0
    addi 3, 30, 0x374
    stw 5, 0x338(30)
    lwz 5, 0x350(30)
    mulli 5, 5, 0x14
    lfsx 0, 4, 5
    stfs 0, 0x258(30)
    stw 0, 0x2a8(30)
    lha 4, 0x33c(30)
    bl fn_8021BA30
L_80206078:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
L_80206084:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

