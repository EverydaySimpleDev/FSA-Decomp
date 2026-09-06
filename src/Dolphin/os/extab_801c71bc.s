.section extab, "a"
.balign 4
.global etb_80008168
etb_80008168:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008168, 8

.section extabindex, "a"
.balign 4
.global eti_80015340
eti_80015340:
    .4byte fn_801C71BC
    .4byte 0x000001B4
    .4byte etb_80008168
.size eti_80015340, 12

.text
.balign 4
.global fn_801C71BC

# fn_801C71BC(this) - the function fn_801C2ED4's shared epilogue calls
# when this->0x230 bit 11 is set (extab_801c2ed4.s) - a "try to
# reacquire the RAIL path" recovery routine. Clears that same trigger
# bit immediately (one-shot). Operates on an embedded ring-tracker
# sub-object at &this->0x358 via GetCurrentSlotPtr (a stateless accessor,
# re-fetched on every call rather than cached) and RAIL's CONFIRMED
# ring-path-traversal library (project_fsa_rail_actor_identified.md,
# oscluster_800fd498.c): fn_800FD818(ringObj, +-1) steps the ring index
# one way, and fn_800FD4C0(ringObj, a, b) tests whether two ring
# indices are actually adjacent/linked.
#
# Unless this->0x230 bit 6 is already set (skip straight to the
# fallback below): peeks what the ring index would become stepping
# forward and backward from the current position (restoring the
# original index after each peek, so the object doesn't actually move
# yet), then tests adjacency of (current, backward-peek) and, if that
# fails, (current, forward-peek). If EITHER adjacency test succeeds:
# resets this->0x2a8, clears/sets several this->0x230 flag bits (OR of
# 0x40 - a "target needs attention" flag also set by fn_801C7EE4 below
# on a blocked path), computes that neighbor's world position via
# fn_800FE294(ringObj, neighborIndex, 0xff) and caches it as the new
# movement target (this->0x32c/0x330/0x334, the fields fn_801C3B7C's
# per-state velocity interpolation reads) - i.e. "found a valid
# adjacent waypoint, head there."
#
# If NEITHER direction has a valid adjacent waypoint (a genuine dead
# end / off the rail): falls back to fn_801C8B50(this) (below - a
# fuller "re-acquire a fresh target from scratch") plus a PRNG-jittered
# facing-angle nudge (fn_801CD664(0x4001)-0x2000, roughly +-0x2000) and,
# if this->0x524 bit 25 is clear, transitions to state 0x1c via
# fn_801C3B7C(this, 0x1c) - a "lost the rail, wander/recover" state.
fn_801C71BC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    rlwinm 0, 0, 0, 12, 10
    stw 0, 0x230(3)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x40820140 # bne .L_801C7324
    addi 3, 31, 0x358
    li 30, 0x0
    bl GetCurrentSlotPtr
    lbz 29, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 29, 0
    .4byte 0x40800008 # bge .L_801C722C
    stb 29, 0x3(3)
L_801C722C:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 27, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 29, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C7264
    stb 29, 0x3(3)
L_801C7264:
    addic. 0, 1, 0x8
    .4byte 0x41820008 # beq .L_801C7270
    stb 27, 0x8(1)
L_801C7270:
    addic. 0, 1, 0x9
    .4byte 0x41820008 # beq .L_801C727C
    stb 29, 0x9(1)
L_801C727C:
    addic. 0, 1, 0xa
    .4byte 0x41820008 # beq .L_801C7288
    stb 28, 0xa(1)
L_801C7288:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x9(1)
    lbz 5, 0x8(1)
    bl fn_800FD4C0
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_801C72C0
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x9(1)
    lbz 5, 0xa(1)
    bl fn_800FD4C0
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_801C731C
L_801C72C0:
    li 0, 0x0
    lis 3, 0xfffe
    stw 0, 0x2a8(31)
    subi 0, 3, 0x1001
    addi 3, 31, 0x358
    lwz 4, 0x230(31)
    and 0, 4, 0
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    oris 0, 0, 0x40
    stw 0, 0x230(31)
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0xc
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0xc(1)
    li 30, 0x1
    stfs 0, 0x32c(31)
    lfs 0, 0x10(1)
    stfs 0, 0x330(31)
    lfs 0, 0x14(1)
    stfs 0, 0x334(31)
L_801C731C:
    clrlwi. 0, 30, 24
    .4byte 0x4082003C # bne .L_801C735C
L_801C7324:
    mr 3, 31
    bl fn_801C8B50
    li 3, 0x4001
    bl fn_801CD664
    lha 0, 0x33c(31)
    subi 3, 3, 0x2000
    add 0, 0, 3
    sth 0, 0x33c(31)
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820010 # bne .L_801C735C
    mr 3, 31
    li 4, 0x1c
    bl fn_801C3B7C
L_801C735C:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
