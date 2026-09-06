.section extab, "a"
.balign 4
.global etb_80008840
etb_80008840:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008840, 8

.section extabindex, "a"
.balign 4
.global eti_80015C94
eti_80015C94:
    .4byte fn_801DBCEC
    .4byte 0x00000208
    .4byte etb_80008840
.size eti_80015C94, 12

.text
.balign 4
.global fn_801DBCEC

# CORRECTED (see fn_801DBFB0, landed after this file, for the actual real
# constructor): fn_801DBCEC does NOT chain to a base-class constructor and
# does NOT set this->vtable - both of which fn_801DBFB0 does, matching this
# session's established "real ctor" signature. fn_801DBCEC also repeatedly
# branches on this->0x16c==-1 to distinguish fresh-vs-reused instances, a
# pattern that only makes sense for a function invoked on every spawn
# (including pooled reuse), not a one-time raw constructor. fn_801DBCEC is
# therefore most likely this class's setParams()/respawn-configuration
# method - mirroring the fn_801DA504(real ctor)/fn_801DA124(setParams) split
# already confirmed for an earlier class this session (discovered in the
# opposite order there). The rest of this banner's field-level observations
# remain accurate; only the "REAL CONSTRUCTOR" framing below is corrected.
#
# fn_801DBCEC(this) - likely setParams()/respawn-config for this 3rd
# chase-or-free-roam class (companion to fn_801DB5C0/fn_801DB6C8/
# fn_801DB950/fn_801DB9CC, all landed earlier this session). Calls
# fn_801D0ED0(this) first (a not-yet-explored helper - new callee), then:
#
# - Zero/const-inits several fields: this->0x60/0x64/0x68/0x6c (4 floats,
#   0x68 and 0x6c share the same constant - possibly a symmetric bounds pair),
#   this->0x80/0x84/0x88/0x8c (2 more float pairs), this->0xb0=0x101,
#   this->0x98=this->0x114=2, sets flag bit 0x20 on this->0x230, and
#   this->0x194 (byte) = 1.
#
# - GATED ON this->0x16c==-1 (the SAME sentinel fn_801DB6C8/fn_801DB9CC check
#   for "one-time setup not yet done" - here used to distinguish a genuinely
#   fresh construction from a pooled-object re-construction that inherited a
#   stale this->0x16c from before): if -1, seeds an initial random velocity
#   into this->0x2b4/0x2b8 (the SAME "current velocity" fields fn_801DB9CC's
#   magnitude-check reads) - random angle in a +/-0x3800 range (50/50 negated)
#   indexed into the shared anchor table lbl_8052EBC0, scaled by a random
#   magnitude 1-60 (via the 0x4330 int-to-double trick). If NOT -1, this
#   block is skipped entirely (velocity fields stay whatever they already
#   were - consistent with "already-live pooled object" semantics).
#
# - Unconditionally commits the initial FSM state: this->0x248=0,
#   this->0x24c=0 (state 0, matching this class's driver fn_801DB5C0).
#
# - GATED ON the SAME this->0x16c==-1 check again: if -1 (fresh), sets
#   this->0x250=1 (a fixed initial duration/countdown - matches the field
#   fn_801DB950 resets to -1 on state transitions). If NOT -1 (reused
#   object), instead picks a RANDOM duration in [30,91) via fn_801CD664 -
#   the fresh-vs-reused branches deliberately diverge here.
#
# - Zeroes this->0x254/0x258, then REGISTERS this object's own timed-cue
#   sequence array at this+0x270 via fn_801D2608(this+0x270,
#   lbl_8053A148@sda21, 1) - CONFIRMS this class ALSO embeds the shared
#   "timed-cue lookup table" component (see
#   project_fsa_multiple_inheritance_pattern) at the same +0x270 offset used
#   by dtor_801D46FC's class and others - a new embedding site. Follows with
#   fn_801D22DC(this+0x270, 0, 2, 0) (a real method on that component,
#   signature matches the still-open question noted for the fn_80109534
#   class) and fn_801D1D60(this+0x270) (a 3rd, not-previously-seen method on
#   the same component).
#
# - Sets this->0x2a0 to a constant (the SAME field fn_801DB950 zeroes on
#   state transitions), then spawns/attaches an effect handle via the
#   confirmed fn_8013CC50(this->0x4, this+0xc, 0x258, 1, 0,0,0, 1), storing
#   the result into this->0x2e4.
#
# - GATED ON this->0x16c==-1 ONE LAST TIME: if fresh, calls fn_801DAC6C()
#   (the global singleton accessor) then fn_801DAF14(singleton, this->0x198)
#   - this is the CONFIRMED "add ID to tracked list" method from the
#   fn_801DAC6C/lbl_804C92D0 record family - meaning a freshly-constructed
#   instance of THIS class REGISTERS ITS OWN ID into the global singleton's
#   tracked-ID list. This is new, load-bearing evidence for what the global
#   singleton actually tracks: instances of (at least) this class register
#   themselves here, and fn_801DB6C8/fn_801DB9CC's free-roam-anchor setup
#   later reads back "the singleton's tracked position" via
#   fn_801DAC6C()+fn_801DACAC() - i.e. instances of this class orient their
#   free-roam behavior relative to another registered instance (a
#   leader/reference-object pattern), not an unrelated global object.
fn_801DBCEC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    bl fn_801D0ED0
    .4byte 0xC022C388 # lfs f1, lbl_8053F328@sda21(r0)
    lis 3, 0x1
    .4byte 0xC002C38C # lfs f0, lbl_8053F32C@sda21(r0)
    addi 3, 3, 0x101
    stfs 1, 0x60(31)
    li 4, 0x2
    .4byte 0xC042C390 # lfs f2, lbl_8053F330@sda21(r0)
    li 0, 0x1
    stfs 0, 0x64(31)
    .4byte 0xC022C340 # lfs f1, lbl_8053F2E0@sda21(r0)
    stfs 2, 0x68(31)
    .4byte 0xC002C360 # lfs f0, lbl_8053F300@sda21(r0)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 3, 0xb0(31)
    stw 4, 0x98(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x20
    stw 3, 0x230(31)
    stw 4, 0x114(31)
    stb 0, 0x194(31)
    lwz 0, 0x16c(31)
    cmpwi 0, -0x1
    .4byte 0x408200AC # bne .L_801DBE1C
    li 3, 0x3800
    bl fn_801CD664
    extsh 30, 3
    li 3, 0x2
    bl fn_801CD664
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_801DBD98
    neg 0, 30
    extsh 30, 0
L_801DBD98:
    li 3, 0x3c
    bl fn_801CD664
    addi 0, 3, 0x1
    lis 4, 0x4330
    xoris 0, 0, 0x8000
    .4byte 0xC062C344 # lfs f3, lbl_8053F2E4@sda21(r0)
    stw 0, 0xc(1)
    neg 0, 30
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC822C380 # lfd f1, lbl_8053F320@sda21(r0)
    stw 4, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042C394 # lfs f2, lbl_8053F334@sda21(r0)
    lfd 0, 0x8(1)
    add 4, 3, 0
    stfs 3, 0x2b4(31)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    stfs 0, 0x2b8(31)
    lfs 1, 0x2b8(31)
    lfsx 0, 3, 0
    lfs 3, 0x2b4(31)
    fmuls 0, 1, 0
    lfs 1, 0x4(4)
    fmsubs 0, 3, 1, 0
    stfs 0, 0x2b4(31)
    lfs 1, 0x2b8(31)
    lfs 0, 0x4(4)
    lfsx 2, 3, 0
    fmuls 0, 1, 0
    fmadds 0, 3, 2, 0
    stfs 0, 0x2b8(31)
L_801DBE1C:
    li 0, 0x0
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    lwz 0, 0x16c(31)
    cmpwi 0, -0x1
    .4byte 0x40820018 # bne .L_801DBE48
    li 3, 0x1
    bl fn_801CD664
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    .4byte 0x48000014 # b .L_801DBE58
L_801DBE48:
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x1e
    stw 0, 0x250(31)
L_801DBE58:
    .4byte 0xC002C344 # lfs f0, lbl_8053F2E4@sda21(r0)
    addi 3, 31, 0x270
    .4byte 0x388D8588 # li r4, lbl_8053A148@sda21
    li 5, 0x1
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC002C398 # lfs f0, lbl_8053F338@sda21(r0)
    addi 3, 31, 0x270
    stfs 0, 0x2a0(31)
    bl fn_801D1D60
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022C340 # lfs f1, lbl_8053F2E0@sda21(r0)
    li 5, 0x258
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2e4(31)
    lwz 0, 0x16c(31)
    cmpwi 0, -0x1
    .4byte 0x40820010 # bne .L_801DBEDC
    bl fn_801DAC6C
    lwz 4, 0x198(31)
    bl fn_801DAF14
L_801DBEDC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

