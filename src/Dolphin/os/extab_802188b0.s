.section extab, "a"
.balign 4
.global etb_8000A308
etb_8000A308:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A308, 8

.section extabindex, "a"
.balign 4
.global eti_80017FD4
eti_80017FD4:
    .4byte fn_802188B0
    .4byte 0x000000FC
    .4byte etb_8000A308
.size eti_80017FD4, 12

.text
.balign 4
.global fn_802188B0

# fn_802188B0(state) - conditional "spawn an 'HBMB' actor near me"
# trigger, paired with the companion query fn_802189AC
# (extab_802189ac.s) which checks whether one already exists nearby.
# state->0x0 is a back-pointer to the owning SLK2 actor (double
# indirection: state itself is a sub-object, e.g. &this->0x540).
# Bails out early if the CONFIRMED global flags singleton
# fn_801C0D70 (project_fsa_slk2_state_transition_fn_landed.md) has
# bit21 set, if the owner's this->0x564==3, or while state->0x4 (a
# short cooldown counter) is still counting down (>1, decremented
# each call). Once the cooldown expires, gates on the owner's height
# (this->0x14 < lbl_8053FC48), a computed threshold on this->0x254,
# and a not-yet-decompiled fn_801C5348(lbl_8053FC50) predicate. If
# all pass and the owner's CONFIRMED current-state field (this->0x248,
# project_fsa_slk2_orchestrator_landed.md) is 0x1b or 0x11, it spawns
# a 4-char-code "HBMB" actor via the CONFIRMED universal actor
# dispatcher fn_801F9484 at the owner's position (this->0xc) and
# resets state->0x4 to a new randomized cooldown
# (fn_801CD664(0x79)+0xf0) via the CONFIRMED PRNG wrapper.
fn_802188B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x408200C0 # bne .L_80218994
    lwz 3, 0x0(30)
    lwz 0, 0x564(3)
    cmpwi 0, 0x3
    .4byte 0x418200B0 # beq .L_80218994
    lhz 4, 0x4(30)
    cmplwi 4, 0x1
    .4byte 0x40810010 # ble .L_80218900
    subi 0, 4, 0x1
    sth 0, 0x4(30)
    .4byte 0x48000098 # b .L_80218994
L_80218900:
    lfs 1, 0x14(3)
    .4byte 0xC002CCA8 # lfs f0, lbl_8053FC48@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820084 # bne .L_80218994
    .4byte 0xC022BE50 # lfs f1, lbl_8053EDF0@sda21(r0)
    .4byte 0xC002CCAC # lfs f0, lbl_8053FC4C@sda21(r0)
    lfs 2, 0x254(3)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820068 # bne .L_80218994
    .4byte 0xC022CCB0 # lfs f1, lbl_8053FC50@sda21(r0)
    bl fn_801C5348
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_80218994
    lwz 31, 0x0(30)
    lwz 0, 0x248(31)
    cmpwi 0, 0x1b
    .4byte 0x41820014 # beq .L_80218960
    .4byte 0x40800044 # bge .L_80218994
    cmpwi 0, 0x11
    .4byte 0x41820008 # beq .L_80218960
    .4byte 0x48000038 # b .L_80218994
L_80218960:
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d42
    addi 6, 31, 0xc
    li 7, 0xa
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 3, 0x79
    bl fn_801CD664
    addi 0, 3, 0xf0
    sth 0, 0x4(30)
L_80218994:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
