# fn_800F8210: this new actor class's init/setup function -
# init(this=r3, typeIdx=r4, posPtr=r5, mode=r6). Copies position from
# *posPtr into this->0x0/0x4/0x8, sets the "active" flag this->0xc=1
# (matching fn_800F802C's active-flag field), initializes the decaying
# threshold this->0x10 to the SAME constant (lbl_8053BFAC) that
# fn_800F802C separately compares against squared distance, resets the
# frame counter this->0x14=0 and per-player trigger bitmask
# this->0x16=0, and stores the mode byte this->0xd (same field
# fn_800F802C switches on for its 3 decay-rate constants). Computes an
# unused-looking f1 from a THIRD constant table (lbl_8053BFC0/C4/C8,
# switched on this->0xd) that is then passed on to a call - NOT a dead
# store. If `typeIdx < 8`, calls `fn_802F601C(ptr, this, 2, 0, f1, f2)`
# where `ptr = (*lbl_8053AB10)->0x20` and `f2 = lbl_8053BFCC` - NOT YET
# CONFIRMED, but `fn_802F601C` is plausibly part of the unexplored
# spatial-registry family flagged in
# project_fsa_shared_effect_subsystem_crossref.md (fn_802F5E9C/745C/86CC
# triad) - first concrete real-actor call site into that family found
# so far, worth following up. `lbl_8053AB10` is a new global, not
# previously catalogued.
.section extab, "a"
.balign 4
.global etb_80005760
etb_80005760:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80005760, 8

.section extabindex, "a"
.balign 4
.global eti_80011A40
eti_80011A40:
    .4byte fn_800F8210
    .4byte 0x000000BC
    .4byte etb_80005760
.size eti_80011A40, 12

.text
.balign 4
.global fn_800F8210

fn_800F8210:
    stwu 1, -0x10(1)
    mflr 0
    lfs 1, 0x0(5)
    li 7, 0x1
    stw 0, 0x14(1)
    li 0, 0x0
    lfs 0, 0x4(5)
    stfs 1, 0x0(3)
    lfs 1, 0x8(5)
    stfs 0, 0x4(3)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 1, 0x8(3)
    stb 7, 0xc(3)
    stfs 0, 0x10(3)
    sth 0, 0x14(3)
    stb 0, 0x16(3)
    stb 6, 0xd(3)
    lbz 0, 0xd(3)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_800F8284
    .4byte 0x40800010 # bge .L_800F8270
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_800F827C
    .4byte 0x48000028 # b .L_800F8294
L_800F8270:
    cmpwi 0, 0x3
    .4byte 0x40800020 # bge .L_800F8294
    .4byte 0x48000014 # b .L_800F828C
L_800F827C:
    .4byte 0xC0229020 # lfs f1, lbl_8053BFC0@sda21(r0)
    .4byte 0x48000018 # b .L_800F8298
L_800F8284:
    .4byte 0xC0229024 # lfs f1, lbl_8053BFC4@sda21(r0)
    .4byte 0x48000010 # b .L_800F8298
L_800F828C:
    .4byte 0xC0229028 # lfs f1, lbl_8053BFC8@sda21(r0)
    .4byte 0x48000008 # b .L_800F8298
L_800F8294:
    .4byte 0xC0229020 # lfs f1, lbl_8053BFC0@sda21(r0)
L_800F8298:
    cmpwi 4, 0x8
    .4byte 0x40800020 # bge .L_800F82BC
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    .4byte 0xC042902C # lfs f2, lbl_8053BFCC@sda21(r0)
    li 6, 0x0
    lwz 3, 0x20(5)
    li 5, 0x2
    bl fn_802F601C
L_800F82BC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

