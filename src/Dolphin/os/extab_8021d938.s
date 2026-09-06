/*
 * NEW ACTOR (vtable lbl_804A6708, ctor fn_8021D7A8) - not yet identified
 * by name. Shares TINK's exact base-class field layout (this->0x248
 * state, 0x230 flags, 0x14 Y position, 0x2c8/0x2cc position pair),
 * confirming those are common base-Actor fields rather than TINK-
 * specific. While state != 3: if flags bits 13+18 are both set, latches
 * a global manager's (lbl_8053AB10->0x30) byte flag ->0x284 to 1 once
 * and sets a paired float ->0x28c; then, unless flag bit 15 is set,
 * computes a 3D point from this->0x2c8/(0x2cc-0x14) and triggers an
 * effect at it via fn_8030C210(otherManager->0x24, point) - reads as a
 * "landing/impact" effect trigger.
 */
.section extab, "a"
.balign 4
.global etb_8000A484
etb_8000A484:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A484, 8

.section extabindex, "a"
.balign 4
.global eti_800181F0
eti_800181F0:
    .4byte fn_8021D938
    .4byte 0x0000009C
    .4byte etb_8000A484
.size eti_800181F0, 12

.text
.balign 4
.global fn_8021D938

fn_8021D938:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x41820078 # beq .L_8021D9C4
    lwz 4, 0x230(3)
    rlwinm. 0, 4, 0, 18, 18
    .4byte 0x41820030 # beq .L_8021D988
    rlwinm. 0, 4, 0, 13, 13
    .4byte 0x40820028 # bne .L_8021D988
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x30(4)
    lbz 0, 0x284(4)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8021D988
    li 0, 0x1
    .4byte 0xC002CDC0 # lfs f0, lbl_8053FD60@sda21(r0)
    stb 0, 0x284(4)
    stfs 0, 0x28c(4)
L_8021D988:
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x40820034 # bne .L_8021D9C4
    lfs 2, 0x2cc(3)
    addi 4, 1, 0x8
    lfs 0, 0x14(3)
    lfs 1, 0x2c8(3)
    fsubs 2, 2, 0
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    stfs 1, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8021D9C4:
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

