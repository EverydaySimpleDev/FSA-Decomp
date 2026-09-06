.section extab, "a"
.balign 4
.global etb_80008360
etb_80008360:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008360, 8

.section extabindex, "a"
.balign 4
.global eti_80015634
eti_80015634:
    .4byte fn_801CDD58
    .4byte 0x000002B4
    .4byte etb_80008360
.size eti_80015634, 12

.text
.balign 4
.global fn_801CDD58

# fn_801CDD58(this) - a MAJOR shared base-class update() dispatcher,
# NOT specific to any one actor: confirmed referenced as a vtable
# update() slot (offset 0x14) by 40 DISTINCT actor vtables in the DOL
# (verified via raw pointer scan), and separately already known as a
# fallback call site in fn_801D8430 (see that file's own banner). This
# is almost certainly the generic "ground-dwelling creature" base
# update() that many simple enemies (ROPE included) inherit largely
# unmodified rather than overriding.
#
# Genuinely understood structure: a virtual state-machine driver over a
# flags/state bitfield at this->0x230, entirely composed of manual
# vtable slot calls (`lwz r12,0x0(this); lwz r12,<slot>(r12); mtctr;
# bctrl`) rather than direct calls - i.e. EVERY behavioral step is a
# per-actor-overridable hook:
#  1. First-frame init: if flag bit 21 (0x400000 after the `ori`) is
#     clear, sets it and calls virtual slot +0x54 ("on first update"
#     hook), then unconditionally clears the low 5 flag bits and a
#     "state changed" byte at this->0x240.
#  2. Snapshots this->0x3c/0x40/0x44 (almost certainly position/facing)
#     into this->0x234/0x238/0x23c (a "last frame" copy, used for
#     movement-delta calculations elsewhere), gated copy of
#     this->0x244 into this->0x108 on flag bit 22.
#  3. Calls virtual slot +0x58 ("think" hook), then the CONFIRMED
#     shared knockback/hitstun function `fn_801F3D94(this, wasFirstFrame)`
#     - see project_fsa_stal_wizr_full_depth.md. Its result selects
#     ONE of three virtual-call branches (stunned -> slot +0x5c then
#     +0x6c; else based on a slot-0x60 virtual predicate -> +0x60 then
#     +0x70, or +0x74) each setting a distinct flag bit (0x1/0x2/0x4)
#     first - a classic "enter new FSM state" pattern where the flag
#     records which branch was taken and the virtual call performs the
#     state's entry action.
#  4. A cooldown-timer clamp: if not the stunned case and this->0xd8 > 0
#     and this->0xf8==2, clamps this->0x44 to a shared minimum constant
#     (`lbl_8053EFC4`).
#  5. Re-applies the this->0x244->0x108 gated copy from step 2 (flag
#     bit 22 again).
#  6. On the FIRST call only (this->0x1's caller passes a `firstCall`
#     flag threaded through as r29==1) with this->0xd8==0, an extra
#     virtual slot +0x74 call (a distinct "initial spawn" hook, separate
#     from the step-3 one at the same offset - reachable via a
#     different flag/counter combination).
#  7. If flag bit 20 clear and this->0x108<=0, sets bit 20 (0x800) and
#     fires virtual slot +0x78 (a one-shot "ready" trigger, likely
#     sound/effect).
#  8. Unconditionally calls virtual slots +0x98 then +0x64 (generic
#     per-frame "physics"/"animate" hooks), then a bit-test on the low
#     3 flag bits (`neg|or` idiom testing "all 3 low bits clear") OR
#     bit 23 gates virtual slot +0x68 ("visibility/culling" hook,
#     result stored to this->0x240).
#  9. Always calls virtual slot +0x9c ("late update" hook) with the
#     `wasFirstFrame` flag, then checks visibility via
#     fn_801CD2F8(this->0x4) (owner-ID-keyed visibility/culling query,
#     not yet decompiled) and fires virtual slot +0xa0 ("offscreen"
#     hook) only when NOT visible.
fn_801CDD58:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x40820020 # bne .L_801CDD9C
    lwz 0, 0x230(30)
    ori 0, 0, 0x400
    stw 0, 0x230(30)
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
L_801CDD9C:
    lwz 3, 0x230(30)
    li 0, 0x0
    li 31, 0x1
    clrrwi 3, 3, 5
    stw 3, 0x230(30)
    stb 0, 0x240(30)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x41820008 # beq .L_801CDDC4
    li 31, 0x0
L_801CDDC4:
    lfs 0, 0x3c(30)
    stfs 0, 0x234(30)
    lfs 0, 0x40(30)
    stfs 0, 0x238(30)
    lfs 0, 0x44(30)
    stfs 0, 0x23c(30)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 22, 22
    .4byte 0x4182000C # beq .L_801CDDF0
    lwz 0, 0x244(30)
    stw 0, 0x108(30)
L_801CDDF0:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    lwz 29, 0xd8(30)
    mr 3, 30
    clrlwi 4, 31, 24
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_801CDE2C
    lwz 0, 0x230(30)
    ori 0, 0, 0x1
    stw 0, 0x230(30)
    .4byte 0x48000080 # b .L_801CDEA8
L_801CDE2C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x5c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801CDE6C
    lwz 0, 0x230(30)
    mr 3, 30
    ori 0, 0, 0x2
    stw 0, 0x230(30)
    lwz 12, 0x0(30)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000040 # b .L_801CDEA8
L_801CDE6C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801CDEA8
    lwz 0, 0x230(30)
    mr 3, 30
    ori 0, 0, 0x4
    stw 0, 0x230(30)
    lwz 12, 0x0(30)
    lwz 12, 0x70(12)
    mtctr 12
    bctrl
L_801CDEA8:
    clrlwi. 0, 31, 24
    .4byte 0x40820030 # bne .L_801CDEDC
    lwz 0, 0xd8(30)
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_801CDEDC
    lwz 0, 0xf8(30)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_801CDEDC
    lfs 1, 0x44(30)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_801CDEDC
    stfs 0, 0x44(30)
L_801CDEDC:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 22, 22
    .4byte 0x4182000C # beq .L_801CDEF0
    lwz 0, 0x244(30)
    stw 0, 0x108(30)
L_801CDEF0:
    cmpwi 29, 0x1
    .4byte 0x40820024 # bne .L_801CDF18
    lwz 0, 0xd8(30)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801CDF18
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x74(12)
    mtctr 12
    bctrl
L_801CDF18:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 20, 20
    .4byte 0x40820030 # bne .L_801CDF50
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41810024 # bgt .L_801CDF50
    lwz 0, 0x230(30)
    mr 3, 30
    ori 0, 0, 0x800
    stw 0, 0x230(30)
    lwz 12, 0x0(30)
    lwz 12, 0x78(12)
    mtctr 12
    bctrl
L_801CDF50:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x98(12)
    mtctr 12
    bctrl
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x64(12)
    mtctr 12
    bctrl
    lwz 4, 0x230(30)
    mr 31, 3
    clrlwi 3, 4, 29
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x40820024 # bne .L_801CDFB4
    rlwinm. 0, 4, 0, 23, 23
    .4byte 0x4082001C # bne .L_801CDFB4
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x68(12)
    mtctr 12
    bctrl
    stb 3, 0x240(30)
L_801CDFB4:
    mr 3, 30
    clrlwi 4, 31, 24
    lwz 12, 0x0(30)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801CDFF0
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0xa0(12)
    mtctr 12
    bctrl
L_801CDFF0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

