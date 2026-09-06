.section extab, "a"
.balign 4
.global etb_8000C894
etb_8000C894:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000C894, 8

.section extabindex, "a"
.balign 4
.global eti_8001B658
eti_8001B658:
    .4byte fn_802BAA0C
    .4byte 0x00000174
    .4byte etb_8000C894
.size eti_8001B658, 12

.text
.balign 4
.global fn_802BAA0C

# fn_802BAA0C(companion, srcVec4) - "lay out my 3 flame sub-points
# mirrored around a computed center." Computes a blended center point
# (lerp of srcVec4's 0x0/0x4 and 0x8/0xc pairs via constants
# lbl_80540B54/58), stores it into companion->0xc/0x10/0x14, then
# writes THREE identical copies of srcVec4's raw 4 floats into
# companion->0x60-0x6c/0x80-0x8c (skipping 0x70-0x7c - a middle slot
# left untouched), each offset by +/-(center-relative delta) on the
# x/z-equivalent fields. Finally, if the CONFIRMED level/room config
# record (GetRoomConfigRecord) flags companion's owner index (this->0x4) at
# +0x31df, nudges either the 0x84/0x8c pair (if companion->0x98>=2) or
# the 0x80/0x88 pair by a small constant (lbl_80540B5C) - a per-
# orientation fine-tune. Confirmed caller: fn_8025A15C's fire-status
# handler (extab_8025a15c.s), called on the found "self" FIRE
# companion record with &this->0x14 (a local rotation/position float
# pair) - i.e. "sync my spawned FIRE companion's sub-flame layout to
# my current orientation."
fn_802BAA0C:
    stwu 1, -0x10(1)
    mflr 0
    lfs 3, 0x8(4)
    lfs 1, 0x0(4)
    stw 0, 0x14(1)
    lfs 6, 0xc(4)
    fsubs 2, 1, 3
    lfs 0, 0x4(4)
    .4byte 0xC0A2DBB4 # lfs f5, lbl_80540B54@sda21(r0)
    fsubs 1, 0, 6
    stw 31, 0xc(1)
    fmadds 2, 5, 2, 3
    .4byte 0xC002DBB8 # lfs f0, lbl_80540B58@sda21(r0)
    stw 30, 0x8(1)
    mr 30, 3
    fmadds 1, 5, 1, 6
    stfs 2, 0xc(3)
    lfs 4, 0x0(4)
    fneg 5, 2
    lfs 3, 0x4(4)
    stfs 1, 0x10(3)
    fneg 6, 1
    lfs 2, 0x8(4)
    stfs 0, 0x14(3)
    lfs 1, 0xc(4)
    stfs 4, 0x60(3)
    stfs 3, 0x64(3)
    stfs 2, 0x68(3)
    stfs 1, 0x6c(3)
    lfs 0, 0x60(3)
    fadds 0, 0, 5
    stfs 0, 0x60(3)
    lfs 0, 0x64(3)
    fadds 0, 0, 6
    stfs 0, 0x64(3)
    lfs 0, 0x68(3)
    fadds 0, 0, 5
    stfs 0, 0x68(3)
    lfs 0, 0x6c(3)
    fadds 0, 0, 6
    stfs 0, 0x6c(3)
    stfs 4, 0x80(3)
    stfs 3, 0x84(3)
    stfs 2, 0x88(3)
    stfs 1, 0x8c(3)
    lfs 0, 0x80(3)
    fadds 0, 0, 5
    stfs 0, 0x80(3)
    lfs 0, 0x84(3)
    fadds 0, 0, 6
    stfs 0, 0x84(3)
    lfs 0, 0x88(3)
    fadds 0, 0, 5
    stfs 0, 0x88(3)
    lfs 0, 0x8c(3)
    fadds 0, 0, 6
    stfs 0, 0x8c(3)
    lwz 0, 0x268(3)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802BAB04
    cmpwi 0, 0x2
    .4byte 0x40820068 # bne .L_802BAB68
L_802BAB04:
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_802BAB68
    lwz 0, 0x98(30)
    cmpwi 0, 0x2
    .4byte 0x40800024 # bge .L_802BAB4C
    lfs 0, 0x84(30)
    .4byte 0xC022DBBC # lfs f1, lbl_80540B5C@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x84(30)
    lfs 0, 0x8c(30)
    fsubs 0, 0, 1
    stfs 0, 0x8c(30)
    .4byte 0x48000020 # b .L_802BAB68
L_802BAB4C:
    lfs 0, 0x80(30)
    .4byte 0xC022DBBC # lfs f1, lbl_80540B5C@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x80(30)
    lfs 0, 0x88(30)
    fsubs 0, 0, 1
    stfs 0, 0x88(30)
L_802BAB68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
