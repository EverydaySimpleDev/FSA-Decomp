.section extab, "a"
.balign 4
.global etb_80008868
etb_80008868:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008868, 8

.section extabindex, "a"
.balign 4
.global eti_80015CD0
eti_80015CD0:
    .4byte fn_801DC364
    .4byte 0x00000060
    .4byte etb_80008868
.size eti_80015CD0, 12

# fn_801DC364(this) - part of the new class started by fn_801DC264/
# fn_801DC2D4. Checks whether this->0x68-this->0x60 AND this->0x6c-
# this->0x64 both exceed a small threshold (lbl_8053F344) - i.e. a 2-axis
# bounding-box/range-divergence check (these are the SAME 4 offsets
# fn_801DBCEC, the PREVIOUS class's setParams, initialized with constants -
# possibly a universal Actor-base bounding-box field rather than a
# per-class coincidence, not confirmed). If BOTH axes exceed the threshold,
# calls fn_801F2DB4(0x4e554c4c, this->0x1a0, 0) - not yet decompiled; the
# literal happens to spell ASCII "NULL" but that may be coincidental rather
# than a meaningful 4-char code. Always returns 0.
.text
.balign 4
.global fn_801DC364

fn_801DC364:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042C3A4 # lfs f2, lbl_8053F344@sda21(r0)
    stw 0, 0x14(1)
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081002C # ble .L_801DC3B0
    lfs 1, 0x6c(3)
    lfs 0, 0x64(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810018 # ble .L_801DC3B0
    lis 5, 0x4e55
    lwz 4, 0x1a0(3)
    addi 5, 5, 0x4c4c
    li 6, 0x0
    bl fn_801F2DB4
L_801DC3B0:
    lwz 0, 0x14(1)
    li 3, 0x0
    mtlr 0
    addi 1, 1, 0x10
    blr

