# fn_800FCCCC: the LAST `jumptable_8049C6F0` target. **Correction of
# the prior landing's speculation**: this is NOT a generic "wait for
# sibling ready" holder - it's a richer, self-contained multi-phase
# sub-state-machine keyed by its OWN phase counter `this->0x254`
# (0-4+), independent of the outer jumptable state:
#
# - phase 0: runs the NEW `fn_801EEC98` clearance search (same call
#   shared with `fn_800FB6E0`/`fn_800FBA14`), then checks the
#   CONFIRMED player-position accessor `fn_8023E724` against a
#   distance threshold; once close enough, advances to phase 1 and
#   resets `this->0x234`.
# - phase 1: gates on a NEW `SpatialRegistry_GetBase`+`fn_801F68E0` registry check
#   (returns exactly 1 to pass); on pass, advances to phase 2.
# - phase 2 (and again in the phase>=4 fallthrough): a NEW pattern -
#   one-shot-guarded writes into `lbl_8053AB10->0x24->0x7f4-0x804`
#   (guard byte `+0x7f5`, then sets `+0x7f4=1`/`+0x7f8=4`/position
#   `+0x7fc/+0x800`/`+0x804=0`/`+0x7f6=0`) - plausibly registering a
#   one-time UI hint/highlight marker on a shared HUD-ish struct, not
#   seen in this shape anywhere else this session. Falls into a
#   shared tail that resets the event-opcode `this->0x27c` past a
#   threshold and, past a longer threshold, advances phase again while
#   playing effect `0x428`.
# - phase 3 (`bge` default) repeats the SAME `lbl_8053AB10` marker
#   write, then unconditionally advances the slow swing angle
#   (`this->0x25c`/`0x260`, same idiom as `fn_800FC128`/`fn_800FC984`)
#   into `this->0x14`; once its own counter exceeds 150, transitions
#   the OUTER jumptable state to `this->0x230=1`, resets its own phase
#   to 0, and arms a 1000-frame countdown - closing the loop back into
#   presumably the same or an early state.
#
# No `-mgekko` needed. Not yet cross-identified against the 195-entry
# dispatch table. This is the last of the `jumptable_8049C6F0`
# handlers reachable from `fn_800FABC0`'s dispatch to be landed this
# session.
.section extab, "a"
.balign 4
.global etb_80005828
etb_80005828:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005828, 8

.section extabindex, "a"
.balign 4
.global eti_80011B6C
eti_80011B6C:
    .4byte fn_800FCCCC
    .4byte 0x000002B4
    .4byte etb_80005828
.size eti_80011B6C, 12

.text
.balign 4
.global fn_800FCCCC

fn_800FCCCC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    stw 31, 0x1c(1)
    mr 31, 3
    sth 0, 0x8(1)
    stfs 0, 0x14(1)
    stw 0, 0x10(1)
    stw 0, 0xc(1)
    lwz 4, 0x234(3)
    addi 0, 4, 0x1
    stw 0, 0x234(3)
    lbz 0, 0x254(3)
    cmpwi 0, 0x2
    .4byte 0x418200B8 # beq .L_800FCDC4
    .4byte 0x40800014 # bge .L_800FCD24
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_800FCD30
    .4byte 0x40800080 # bge .L_800FCD9C
    .4byte 0x4800024C # b .L_800FCF6C
L_800FCD24:
    cmpwi 0, 0x4
    .4byte 0x40800244 # bge .L_800FCF6C
    .4byte 0x48000154 # b .L_800FCE80
L_800FCD30:
    li 0, 0x3
    addi 5, 1, 0x8
    stw 0, 0x27c(31)
    addi 6, 1, 0x10
    addi 7, 1, 0x14
    addi 8, 1, 0xc
    stfs 0, 0x25c(31)
    li 9, 0x0
    li 10, 0x0
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lwz 3, 0xc(1)
    cmpwi 3, 0x0
    .4byte 0x41800208 # blt .L_800FCF6C
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    .4byte 0xC0029108 # lfs f0, lbl_8053C0A8@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x408001EC # bge .L_800FCF6C
    lbz 3, 0x254(31)
    li 0, 0x0
    addi 3, 3, 0x1
    stb 3, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x480001D4 # b .L_800FCF6C
L_800FCD9C:
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x1
    .4byte 0x408201C4 # bne .L_800FCF6C
    lbz 3, 0x254(31)
    li 0, 0x0
    addi 3, 3, 0x1
    stb 3, 0x254(31)
    stw 0, 0x234(31)
    .4byte 0x480001AC # b .L_800FCF6C
L_800FCDC4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_800FCDE8
    li 0, 0x1
    .4byte 0xC00290D4 # lfs f0, lbl_8053C074@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_800FCDE8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    lwz 4, 0x24(3)
    .4byte 0xC0029058 # lfs f0, lbl_8053BFF8@sda21(r0)
    lbz 0, 0x7f5(4)
    fsubs 2, 1, 0
    lfs 1, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_800FCE34
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stw 3, 0x7f8(4)
    stfs 1, 0x7fc(4)
    stfs 2, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_800FCE34:
    lwz 0, 0x234(31)
    cmpwi 0, 0xc8
    .4byte 0x4081000C # ble .L_800FCE48
    li 0, 0x0
    stw 0, 0x27c(31)
L_800FCE48:
    lwz 0, 0x234(31)
    cmpwi 0, 0x15e
    .4byte 0x4081011C # ble .L_800FCF6C
    lbz 5, 0x254(31)
    lis 4, 0x4
    li 0, 0x0
    mr 3, 31
    addi 5, 5, 0x1
    addi 4, 4, 0x28
    stb 5, 0x254(31)
    li 5, 0x0
    stw 0, 0x234(31)
    bl fn_801F0E34
    .4byte 0x480000F0 # b .L_800FCF6C
L_800FCE80:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_800FCEA4
    li 0, 0x1
    .4byte 0xC00290D4 # lfs f0, lbl_8053C074@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_800FCEA4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    lwz 4, 0x24(3)
    .4byte 0xC0029058 # lfs f0, lbl_8053BFF8@sda21(r0)
    lbz 0, 0x7f5(4)
    fsubs 2, 1, 0
    lfs 1, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_800FCEF0
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stw 3, 0x7f8(4)
    stfs 1, 0x7fc(4)
    stfs 2, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_800FCEF0:
    lfs 2, 0x25c(31)
    .4byte 0xC022906C # lfs f1, lbl_8053C00C@sda21(r0)
    .4byte 0xC002905C # lfs f0, lbl_8053BFFC@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x25c(31)
    lfs 1, 0x25c(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_800FCF18
    stfs 0, 0x25c(31)
L_800FCF18:
    lhz 4, 0x260(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0429054 # lfs f2, lbl_8053BFF4@sda21(r0)
    addi 0, 4, 0x200
    sth 0, 0x260(31)
    lhz 0, 0x260(31)
    lfs 0, 0x25c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x96
    .4byte 0x4081001C # ble .L_800FCF6C
    li 0, 0x1
    li 3, 0x0
    stw 0, 0x230(31)
    li 0, 0x3e8
    stb 3, 0x254(31)
    stw 0, 0x234(31)
L_800FCF6C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

