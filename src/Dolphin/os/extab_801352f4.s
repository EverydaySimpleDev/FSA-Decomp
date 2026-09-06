.section extab, "a"
.balign 4

.global etb_80006984
etb_80006984:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006984, 8

.global etb_8000698C
etb_8000698C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000698C, 8

.global etb_80006994
etb_80006994:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006994, 8

.global etb_8000699C
etb_8000699C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000699C, 8

.global etb_800069A4
etb_800069A4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800069A4, 8

.global etb_800069AC
etb_800069AC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800069AC, 8

.global etb_800069B4
etb_800069B4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800069B4, 8

.global etb_800069BC
etb_800069BC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800069BC, 8

.global etb_800069C4
etb_800069C4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800069C4, 8

.global etb_800069CC
etb_800069CC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800069CC, 8

.global etb_800069D4
etb_800069D4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800069D4, 8

.global etb_800069DC
etb_800069DC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800069DC, 8

.global etb_800069E4
etb_800069E4:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_800069E4, 8

.global etb_800069EC
etb_800069EC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800069EC, 8

.global etb_800069F4
etb_800069F4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800069F4, 8

.global etb_800069FC
etb_800069FC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800069FC, 8

.global etb_80006A04
etb_80006A04:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006A04, 8

.global etb_80006A0C
etb_80006A0C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006A0C, 8

.global etb_80006A14
etb_80006A14:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80006A14, 8

.global etb_80006A1C
etb_80006A1C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006A1C, 8

.section extabindex, "a"
.balign 4

.global eti_800131D4
eti_800131D4:
    .4byte fn_801352F4
    .4byte 0x000001A0
    .4byte etb_8000698C
.size eti_800131D4, 12

.global eti_800131E0
eti_800131E0:
    .4byte fn_80135494
    .4byte 0x00000570
    .4byte etb_80006994
.size eti_800131E0, 12

.global eti_800131EC
eti_800131EC:
    .4byte fn_80135A04
    .4byte 0x0000091C
    .4byte etb_8000699C
.size eti_800131EC, 12

.global eti_800131F8
eti_800131F8:
    .4byte fn_80136364
    .4byte 0x0000019C
    .4byte etb_800069A4
.size eti_800131F8, 12

.global eti_80013204
eti_80013204:
    .4byte fn_80136500
    .4byte 0x000000A8
    .4byte etb_800069AC
.size eti_80013204, 12

.global eti_80013210
eti_80013210:
    .4byte fn_801365A8
    .4byte 0x00000020
    .4byte etb_800069B4
.size eti_80013210, 12

.global eti_8001321C
eti_8001321C:
    .4byte fn_801365E8
    .4byte 0x00000074
    .4byte etb_800069BC
.size eti_8001321C, 12

.global eti_80013228
eti_80013228:
    .4byte fn_8013665C
    .4byte 0x000000B0
    .4byte etb_800069C4
.size eti_80013228, 12

.global eti_80013234
eti_80013234:
    .4byte fn_8013670C
    .4byte 0x0000008C
    .4byte etb_800069CC
.size eti_80013234, 12

.global eti_80013240
eti_80013240:
    .4byte fn_80136798
    .4byte 0x00000048
    .4byte etb_800069D4
.size eti_80013240, 12

.global eti_8001324C
eti_8001324C:
    .4byte fn_801367E0
    .4byte 0x00000048
    .4byte etb_800069DC
.size eti_8001324C, 12

.global eti_80013258
eti_80013258:
    .4byte fn_80136828
    .4byte 0x00000AD8
    .4byte etb_800069E4
.size eti_80013258, 12

.global eti_80013264
eti_80013264:
    .4byte fn_80137300
    .4byte 0x00001730
    .4byte etb_800069EC
.size eti_80013264, 12

.global eti_80013270
eti_80013270:
    .4byte fn_80138AB0
    .4byte 0x000000CC
    .4byte etb_800069FC
.size eti_80013270, 12

.global eti_8001327C
eti_8001327C:
    .4byte fn_80138B7C
    .4byte 0x00000120
    .4byte etb_80006A04
.size eti_8001327C, 12

.global eti_80013288
eti_80013288:
    .4byte fn_80138C9C
    .4byte 0x000001DC
    .4byte etb_80006A0C
.size eti_80013288, 12

.global eti_80013294
eti_80013294:
    .4byte fn_80138E78
    .4byte 0x00000488
    .4byte etb_80006A14
.size eti_80013294, 12

.global eti_800132A0
eti_800132A0:
    .4byte fn_80139300
    .4byte 0x00000658
    .4byte etb_80006A1C
.size eti_800132A0, 12

.global eti_800132AC
eti_800132AC:
    .4byte fn_80139958
    .4byte 0x00000024
    .4byte etb_80006984
.size eti_800132AC, 12

.global eti_800132B8
eti_800132B8:
    .4byte fn_80139994
    .4byte 0x00000030
    .4byte etb_800069F4
.size eti_800132B8, 12

# ============================================================================
# THE SCENE MANAGER - 24 functions, the master "core systems" class this
# whole gap-sweep was looking for (see project_fsa_core_systems_gap.md).
# This ONE class owns: the confirmed CURRENT-SCENE-OBJECT global
# (lbl_8053AAF8, corrected in reference_fsa_global_prng.md), CREATES the
# confirmed shared camera/cutscene-manager singleton (lbl_8053AB10) in its
# own constructor, drives the per-module subsystem lazy-construct/destroy
# dispatchers (fn_80135020/fn_801352F4, landed earlier this session), and
# runs the entire loading-screen/scene-transition state machine that main()
# defers to via lbl_8053AAF0's vtable. dtk required this whole block landed
# as one atomic unit (a partial claim broke the extabindex relocations -
# see project_fsa_extab_bug_resolved.md's process notes).
#
# Class-wide field map (established across every function below):
#   this->0x4c/0x50/0x58/0x84 - state machine: 0x4c=current state, 0x50=
#     pending next state, 0x58=a small secondary state/countdown, 0x84=
#     "state change in flight" latch. State commits go through
#     fn_802AC8AC(lbl_8053ACA0, ...) - a state-QUEUE manager, not the scene
#     object itself (not decompiled in detail, but every state-commit site
#     in this class calls it identically).
#   this->0x60/0x64/0x68/0x6c/0x8c/0x90 - loading-spinner/fade animation
#     sub-state (frame counters + alpha float), driven every tick by
#     fn_80137300 and punctuated by effect/sound-cue triggers via
#     fn_80458FF0/fn_80458F04 (also seen in fn_80135020's case-0 handler).
#   this->0x4/0x1c/0x20/0x24/0x28/0x2c/0x30/0x34/0x38/0x3c/0x40 - an array of
#     lazily-constructed member sub-objects, EACH matched 1:1 between the
#     constructor (fn_80139300, which builds them via fn_8008440C+per-slot
#     fallback ctor) and the destructor (fn_80138E78, which virtual-calls
#     +0x8 "destroy" on each and zeroes the field) - the same "lazy
#     singleton" shape already confirmed for fn_80135020/fn_801352F4's
#     per-module dispatch, just inlined here for THIS class's own private
#     sub-objects instead of the shared module table.
#   this->0x98/0x9c/0xa0/0xa4/0xa8 - 5 manager-object POINTERS copied in
#     from the boot-config struct (lbl_80529DEC->0x4/0x8/0xc/0x14/0x1c) at
#     construction - this class doesn't own these, just caches them.
#   this->0x83 - a packed 2-bits-per-module status field (4 modules),
#     queried by fn_8013997C via `(this->0x83 >> (module*2)) & 3` - THE
#     confirmed "is module N loaded" check used throughout fn_80137300 and
#     its siblings.
#   this->0xb4 - the CONFIRMED global PRNG LCG state (see
#     reference_fsa_global_prng.md) - lives here specifically because this
#     IS the current scene object.
# ============================================================================

# fn_801352F4(this, moduleIdx) - see the banner already landed in
# extab_801352f4.s earlier this session (teardown counterpart to
# fn_80135020's per-module constructor dispatcher; re-transcribed here only
# because dtk required the whole surrounding block claimed atomically).
.text
.balign 4
.global fn_801352F4
.global fn_80135494
.global fn_80135A04
.global fn_80136320
.global fn_80136364
.global fn_80136500
.global fn_801365A8
.global fn_801365C8
.global fn_801365E8
.global fn_8013665C
.global fn_8013670C
.global fn_80136798
.global fn_801367E0
.global fn_80136828
.global fn_80137300
.global fn_80138A30
.global fn_80138AB0
.global fn_80138B7C
.global fn_80138C9C
.global fn_80138E78
.global fn_80139300
.global fn_80139958
.global fn_8013997C
.global fn_80139994

fn_801352F4:
    stwu 1, -0x10(1)
    mflr 0
    cmplwi 4, 0xc
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x41810174 # bgt .L_80135480
    lis 3, jumptable_8049EF60@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_8049EF60@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820150 # beq .L_80135480
    bl fn_80139BE8
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80135358
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80135358:
    li 0, 0x0
    stw 0, 0x4(31)
    .4byte 0x48000120 # b .L_80135480
    lwz 3, 0x1c(31)
    cmplwi 3, 0x0
    .4byte 0x41820114 # beq .L_80135480
    .4byte 0x41820018 # beq .L_80135388
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80135388:
    li 0, 0x0
    stw 0, 0x1c(31)
    .4byte 0x480000F0 # b .L_80135480
    lwz 3, 0x20(31)
    cmplwi 3, 0x0
    .4byte 0x418200E4 # beq .L_80135480
    .4byte 0x41820018 # beq .L_801353B8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801353B8:
    li 0, 0x0
    stw 0, 0x20(31)
    .4byte 0x480000C0 # b .L_80135480
    lwz 3, 0x28(31)
    cmplwi 3, 0x0
    .4byte 0x418200B4 # beq .L_80135480
    .4byte 0x41820018 # beq .L_801353E8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801353E8:
    li 0, 0x0
    stw 0, 0x28(31)
    .4byte 0x48000090 # b .L_80135480
    lwz 3, 0x24(31)
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_80135480
    .4byte 0x41820018 # beq .L_80135418
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80135418:
    li 0, 0x0
    stw 0, 0x24(31)
    .4byte 0x48000060 # b .L_80135480
    lwz 3, 0x2c(31)
    cmplwi 3, 0x0
    .4byte 0x41820054 # beq .L_80135480
    .4byte 0x41820018 # beq .L_80135448
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80135448:
    li 0, 0x0
    stw 0, 0x2c(31)
    .4byte 0x48000030 # b .L_80135480
    lwz 3, 0x30(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80135480
    .4byte 0x41820018 # beq .L_80135478
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80135478:
    li 0, 0x0
    stw 0, 0x30(31)
L_80135480:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_80135494(this, requestedState) - the scene manager's state-TRANSITION
# GATE: filters/redirects a requested state change before committing it.
# Early-outs (falls through to the unconditional tail) for most states
# except a specific set (5/8/others via this->0x4c checks), where it first
# runs a not-yet-decompiled "resource ready?" check (this->0xac/0xb0's
# byte+4) before allowing the transition. If both the requested state's own
# gate AND (for state 7 specifically) a spawn-code check ("BMBR"-style vs
# "FIRE"-style 4-char comparison against this->0x1a0-shaped data, mirrored
# from the identical pattern in fn_801DD410/fn_801DDBE4 earlier this
# session, so intentionally NOT named without table confirmation here
# either) pass, it computes a UI camera transform via 2 virtual calls
# through this->0xb8/0xc4's vtables (slot 0x24, float args) OR falls back
# to a simpler fixed-angle path, then formats 2 numeric UI strings via
# fn_8009F0D0+strcpy and drives them through this->0xc0/0xc4's vtable
# (slot 0x24 again). Finally re-checks module-readiness (this->0x60 vs a
# threshold) before allowing certain deferred transitions.
fn_80135494:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 4, 0x2
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x40820018 # bne .L_801354CC
    lwz 0, 0x4c(30)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801354CC
    cmpwi 0, 0x5
    .4byte 0x40820048 # bne .L_80135510
L_801354CC:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_801354E8
    lwz 0, 0x4c(30)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801354E8
    cmpwi 0, 0x5
    .4byte 0x4082002C # bne .L_80135510
L_801354E8:
    subi 0, 4, 0x3
    cmplwi 0, 0x1
    .4byte 0x40810020 # ble .L_80135510
    cmpwi 4, 0x6
    .4byte 0x41820018 # beq .L_80135510
    cmpwi 4, 0x7
    .4byte 0x40820178 # bne .L_80135678
    lwz 0, 0x4(30)
    cmplwi 0, 0x0
    .4byte 0x4082016C # bne .L_80135678
L_80135510:
    lwz 5, 0xac(30)
    lbz 0, 0x4(5)
    cmplwi 0, 0x1
    .4byte 0x408204D0 # bne .L_801359EC
    lwz 3, 0xb0(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80135538
    lbz 0, 0x4(3)
    cmplwi 0, 0x1
    .4byte 0x408204B8 # bne .L_801359EC
L_80135538:
    cmpwi 4, 0x5
    .4byte 0x4182005C # beq .L_80135598
    .4byte 0x4080001C # bge .L_8013555C
    cmpwi 4, 0x3
    .4byte 0x41820084 # beq .L_801355CC
    .4byte 0x408000A0 # bge .L_801355EC
    cmpwi 4, 0x2
    .4byte 0x40800044 # bge .L_80135598
    .4byte 0x480000D8 # b .L_80135630
L_8013555C:
    cmpwi 4, 0x7
    .4byte 0x4182000C # beq .L_8013556C
    .4byte 0x408000CC # bge .L_80135630
    .4byte 0x480000A4 # b .L_8013560C
L_8013556C:
    lis 3, lbl_80529DEC@ha
    lwz 0, 0x14(5)
    addi 6, 3, lbl_80529DEC@l
    mr 3, 30
    stw 0, 0x10(6)
    li 4, 0x7
    lwz 5, 0xb0(30)
    lwz 0, 0x14(5)
    stw 0, 0x4c(6)
    bl fn_80135020
    .4byte 0x4800009C # b .L_80135630
L_80135598:
    lwz 0, 0x4c(30)
    cmpwi 0, 0x2
    .4byte 0x41820090 # beq .L_80135630
    cmpwi 0, 0x5
    .4byte 0x41820088 # beq .L_80135630
    lis 3, lbl_80529DEC@ha
    lwz 0, 0x14(5)
    addi 4, 3, lbl_80529DEC@l
    mr 3, 30
    stw 0, 0x2c(4)
    li 4, 0x2
    bl fn_80135020
    .4byte 0x48000068 # b .L_80135630
L_801355CC:
    lis 3, lbl_80529DEC@ha
    lwz 0, 0x14(5)
    addi 4, 3, lbl_80529DEC@l
    mr 3, 30
    stw 0, 0x30(4)
    li 4, 0x3
    bl fn_80135020
    .4byte 0x48000048 # b .L_80135630
L_801355EC:
    lis 3, lbl_80529DEC@ha
    lwz 0, 0x14(5)
    addi 4, 3, lbl_80529DEC@l
    mr 3, 30
    stw 0, 0x28(4)
    li 4, 0x4
    bl fn_80135020
    .4byte 0x48000028 # b .L_80135630
L_8013560C:
    lis 3, lbl_80529DEC@ha
    lwz 0, 0x14(5)
    addi 4, 3, lbl_80529DEC@l
    mr 3, 30
    stw 0, 0x34(4)
    li 4, 0x6
    bl fn_80135020
    .4byte 0x806D91C0 # lwz r3, lbl_8053AD80@sda21(r0)
    bl fn_80390088
L_80135630:
    lwz 3, 0xac(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80135650
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80135650:
    lwz 3, 0xb0(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80135670
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80135670:
    li 31, 0x1
    .4byte 0x48000038 # b .L_801356AC
L_80135678:
    cmpwi 4, 0xc
    .4byte 0x40820030 # bne .L_801356AC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x24d(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_801356AC
    lha 3, 0x7c(30)
    cmpwi 3, 0x78
    .4byte 0x40800010 # bge .L_801356AC
    addi 0, 3, 0x1
    sth 0, 0x7c(30)
    .4byte 0x48000344 # b .L_801359EC
L_801356AC:
    clrlwi. 0, 31, 24
    .4byte 0x40820030 # bne .L_801356E0
    lwz 0, 0x50(30)
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_801356D8
    cmpwi 0, 0x5
    .4byte 0x41820014 # beq .L_801356D8
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801356D8
    cmpwi 0, 0xc
    .4byte 0x4082000C # bne .L_801356E0
L_801356D8:
    li 0, 0x0
    stw 0, 0x60(30)
L_801356E0:
    lwz 0, 0x50(30)
    stw 0, 0x4c(30)
    lwz 0, 0x4c(30)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801356FC
    cmpwi 0, 0x6
    .4byte 0x40820010 # bne .L_80135708
L_801356FC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    bl fn_80158B3C
L_80135708:
    li 3, 0x0
    stw 3, 0x64(30)
    lbz 0, 0xfd(30)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80135740
    lwz 0, 0x50(30)
    cmpwi 0, 0x11
    .4byte 0x40820010 # bne .L_80135734
    li 0, 0x3
    stw 0, 0x58(30)
    .4byte 0x48000014 # b .L_80135744
L_80135734:
    li 0, 0x2
    stw 0, 0x58(30)
    .4byte 0x48000008 # b .L_80135744
L_80135740:
    stb 3, 0xfd(30)
L_80135744:
    lwz 0, 0x4c(30)
    cmpwi 0, 0x7
    .4byte 0x408202A0 # bne .L_801359EC
    clrlwi. 0, 31, 24
    .4byte 0x41820194 # beq .L_801358E8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x1
    li 0, 0x0
    stb 3, 0xfe(4)
    stb 0, 0xfc(4)
    stw 0, 0xf8(4)
    bl GetRoomConfigRecord
    lwz 0, 0x3c(3)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_8013578C
    li 0, 0x0
    stw 0, 0x60(30)
    .4byte 0x48000264 # b .L_801359EC
L_8013578C:
    li 0, 0x4
    stw 0, 0x60(30)
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_801357F4
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_801357F4
    bl GetRoomConfigRecord
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4082022C # bne .L_801359EC
    bl GetRoomConfigRecord
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082021C # bne .L_801359EC
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    clrlwi. 0, 0, 31
    .4byte 0x418201FC # beq .L_801359EC
L_801357F4:
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 31, 0x328c(3)
    bl GetRoomConfigRecord
    lwz 4, 0x34(3)
    cmpwi 4, 0x11
    .4byte 0x418201E0 # beq .L_801359EC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80135880
    cmpwi 4, 0x14
    .4byte 0x4182000C # beq .L_80135830
    cmpwi 4, 0x1e
    .4byte 0x40820020 # bne .L_8013584C
L_80135830:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(30)
    lwzx 4, 4, 0
    bl fn_80458F04
    .4byte 0x480001A4 # b .L_801359EC
L_8013584C:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(30)
    lwzx 4, 4, 0
    clrlwi 6, 31, 24
    li 5, 0x0
    bl fn_80458FF0
    bl GetRoomConfigRecord
    addi 0, 31, 0x1
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    .4byte 0x48000170 # b .L_801359EC
L_80135880:
    cmpwi 4, 0x19
    .4byte 0x41820048 # beq .L_801358CC
    lbz 0, 0x86(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801358B0
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000140 # b .L_801359EC
L_801358B0:
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000124 # b .L_801359EC
L_801358CC:
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0x19
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000108 # b .L_801359EC
L_801358E8:
    lwz 0, 0x50(30)
    cmpwi 0, 0xe
    .4byte 0x408200FC # bne .L_801359EC
    li 0, 0x4
    stw 0, 0x60(30)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 31, 0x328c(3)
    bl GetRoomConfigRecord
    lwz 4, 0x34(3)
    cmpwi 4, 0x11
    .4byte 0x418200D8 # beq .L_801359EC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80135988
    cmpwi 4, 0x14
    .4byte 0x4182000C # beq .L_80135938
    cmpwi 4, 0x1e
    .4byte 0x40820020 # bne .L_80135954
L_80135938:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(30)
    lwzx 4, 4, 0
    bl fn_80458F04
    .4byte 0x4800009C # b .L_801359EC
L_80135954:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(30)
    lwzx 4, 4, 0
    clrlwi 6, 31, 24
    li 5, 0x0
    bl fn_80458FF0
    bl GetRoomConfigRecord
    addi 0, 31, 0x1
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    .4byte 0x48000068 # b .L_801359EC
L_80135988:
    cmpwi 4, 0x19
    .4byte 0x41820048 # beq .L_801359D4
    lbz 0, 0x86(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801359B8
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000038 # b .L_801359EC
L_801359B8:
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x4800001C # b .L_801359EC
L_801359D4:
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0x19
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_801359EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_80135A04(this, newState) - THE SCENE-TRANSITION COMMIT function: a
# real jumptable (jumptable_8049EF94) on `newState` (0-0xc). Every observed
# case follows the same shape: tear down a specific SET of the shared
# per-module subsystems via fn_801352F4(this, moduleIdx) (different subset
# per target state - e.g. state 5 tears down {1,2,3,4,6,0xc}, state 1 tears
# down {7,2,3,4,6,0xc}, etc.), times the teardown via 2 OS-tick queries
# (fn_80083A68/fn_80083A3C, converted to float seconds via the standard
# 0x4330 int-to-double bias trick) and reports the elapsed time with
# OSReport (a debug "scene teardown took Xs" profiling line - confirms
# this is a DEBUG BUILD-style instrumentation left compiled in), then
# brings up the ONE subsystem the new state actually needs via
# fn_80135020(this, moduleIdx). Several cases additionally pick a
# localized loading-screen string via fn_80021840 (language code 0/1/2)
# and fn_80401E10 (copy from a big per-language string table at
# lbl_8049ED88, indexed by boot-config language settings) into
# this->0xac/0xb0.
fn_80135A04:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 30, 3
    lis 5, lbl_804652F0@ha
    lbz 0, 0x84(3)
    mr 29, 4
    addi 31, 5, lbl_804652F0@l
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80135A50
    lwz 4, 0x4c(30)
    bl fn_801352F4
    li 0, 0x0
    stb 0, 0x84(30)
L_80135A50:
    cmplwi 29, 0xc
    .4byte 0x418108A8 # bgt .L_801362FC
    lis 3, jumptable_8049EF94@ha
    slwi 0, 29, 2
    addi 3, 3, jumptable_8049EF94@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x4(30)
    cmplwi 0, 0x0
    .4byte 0x40820884 # bne .L_801362FC
    mr 3, 30
    li 4, 0x1
    bl fn_801352F4
    mr 3, 30
    li 4, 0x2
    bl fn_801352F4
    mr 3, 30
    li 4, 0x3
    bl fn_801352F4
    mr 3, 30
    li 4, 0x4
    bl fn_801352F4
    mr 3, 30
    li 4, 0x6
    bl fn_801352F4
    mr 3, 30
    li 4, 0xc
    bl fn_801352F4
    lwz 3, 0x98(30)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    stw 0, 0x28(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x28(1)
    lwz 3, 0x98(30)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x34(1)
    fmr 2, 31
    .4byte 0xC8629DB8 # lfd f3, lbl_8053CD58@sda21(r0)
    addi 3, 31, 0x324
    stw 0, 0x30(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x30(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820094 # beq .L_80135BCC
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820014 # bne .L_80135B58
    addi 3, 1, 0x8
    addi 4, 31, 0x350
    bl strcpy
    .4byte 0x48000028 # b .L_80135B7C
L_80135B58:
    bl fn_80021840
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_80135B70
    bl fn_80021840
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_80135B7C
L_80135B70:
    addi 3, 1, 0x8
    addi 4, 31, 0x360
    bl strcpy
L_80135B7C:
    lis 3, lbl_80529DEC@ha
    lis 4, lbl_8049ED88@ha
    addi 6, 3, lbl_80529DEC@l
    addi 3, 1, 0x8
    lwz 5, 0x118(6)
    addi 4, 4, lbl_8049ED88@l
    lwz 0, 0x11c(6)
    slwi 5, 5, 4
    add 4, 4, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl strcat
    lis 4, lbl_80529DEC@ha
    addi 3, 1, 0x8
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000064 # b .L_80135C2C
L_80135BCC:
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820024 # bne .L_80135BF8
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x374
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000038 # b .L_80135C2C
L_80135BF8:
    bl fn_80021840
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_80135C10
    bl fn_80021840
    cmpwi 3, 0x1
    .4byte 0x40820020 # bne .L_80135C2C
L_80135C10:
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x390
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
L_80135C2C:
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820024 # bne .L_80135C58
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x3b0
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xb0(30)
    .4byte 0x480006A8 # b .L_801362FC
L_80135C58:
    bl fn_80021840
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_80135C70
    bl fn_80021840
    cmpwi 3, 0x1
    .4byte 0x40820690 # bne .L_801362FC
L_80135C70:
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x3c8
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xb0(30)
    .4byte 0x48000670 # b .L_801362FC
    bl fn_8013C824
    lwz 3, 0xc(3)
    bl fn_800EC188
    mr 3, 30
    li 4, 0x1
    bl fn_801352F4
    mr 3, 30
    li 4, 0x2
    bl fn_801352F4
    mr 3, 30
    li 4, 0x3
    bl fn_801352F4
    mr 3, 30
    li 4, 0x4
    bl fn_801352F4
    mr 3, 30
    li 4, 0x6
    bl fn_801352F4
    mr 3, 30
    li 4, 0x7
    bl fn_801352F4
    lwz 3, 0x98(30)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x34(1)
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x30(1)
    lwz 3, 0x98(30)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    fmr 2, 31
    .4byte 0xC8629DB8 # lfd f3, lbl_8053CD58@sda21(r0)
    addi 3, 31, 0x3e4
    stw 0, 0x28(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    mr 3, 30
    li 4, 0xc
    bl fn_80135020
    .4byte 0x480005A4 # b .L_801362FC
    mr 3, 30
    li 4, 0x7
    bl fn_801352F4
    mr 3, 30
    li 4, 0x2
    bl fn_801352F4
    mr 3, 30
    li 4, 0x3
    bl fn_801352F4
    mr 3, 30
    li 4, 0x4
    bl fn_801352F4
    mr 3, 30
    li 4, 0x6
    bl fn_801352F4
    mr 3, 30
    li 4, 0xc
    bl fn_801352F4
    lwz 3, 0x98(30)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x34(1)
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x30(1)
    lwz 3, 0x98(30)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    fmr 2, 31
    .4byte 0xC8629DB8 # lfd f3, lbl_8053CD58@sda21(r0)
    addi 3, 31, 0x414
    stw 0, 0x28(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    mr 3, 30
    li 4, 0x1
    bl fn_80135020
    .4byte 0x480004E4 # b .L_801362FC
    lwz 0, 0x4c(30)
    cmpwi 0, 0x2
    .4byte 0x418204D8 # beq .L_801362FC
    cmpwi 0, 0x5
    .4byte 0x418204D0 # beq .L_801362FC
    mr 3, 30
    li 4, 0x7
    bl fn_801352F4
    mr 3, 30
    li 4, 0x1
    bl fn_801352F4
    mr 3, 30
    li 4, 0x3
    bl fn_801352F4
    mr 3, 30
    li 4, 0x4
    bl fn_801352F4
    mr 3, 30
    li 4, 0x6
    bl fn_801352F4
    mr 3, 30
    li 4, 0xc
    bl fn_801352F4
    lwz 3, 0x98(30)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x34(1)
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x30(1)
    lwz 3, 0x98(30)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    fmr 2, 31
    .4byte 0xC8629DB8 # lfd f3, lbl_8053CD58@sda21(r0)
    addi 3, 31, 0x440
    stw 0, 0x28(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820024 # bne .L_80135F0C
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x474
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000038 # b .L_80135F40
L_80135F0C:
    bl fn_80021840
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_80135F24
    bl fn_80021840
    cmpwi 3, 0x1
    .4byte 0x40820020 # bne .L_80135F40
L_80135F24:
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x48c
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
L_80135F40:
    li 0, 0x0
    stw 0, 0xb0(30)
    .4byte 0x480003B4 # b .L_801362FC
    mr 3, 30
    li 4, 0x7
    bl fn_801352F4
    mr 3, 30
    li 4, 0x1
    bl fn_801352F4
    mr 3, 30
    li 4, 0x2
    bl fn_801352F4
    mr 3, 30
    li 4, 0x4
    bl fn_801352F4
    mr 3, 30
    li 4, 0x6
    bl fn_801352F4
    mr 3, 30
    li 4, 0xc
    bl fn_801352F4
    lwz 3, 0x98(30)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x34(1)
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x30(1)
    lwz 3, 0x98(30)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    fmr 2, 31
    .4byte 0xC8629DB8 # lfd f3, lbl_8053CD58@sda21(r0)
    addi 3, 31, 0x4a8
    stw 0, 0x28(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820024 # bne .L_80136028
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x4dc
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000038 # b .L_8013605C
L_80136028:
    bl fn_80021840
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_80136040
    bl fn_80021840
    cmpwi 3, 0x1
    .4byte 0x40820020 # bne .L_8013605C
L_80136040:
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x4f0
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
L_8013605C:
    li 0, 0x0
    stw 0, 0xb0(30)
    .4byte 0x48000298 # b .L_801362FC
    mr 3, 30
    li 4, 0x7
    bl fn_801352F4
    mr 3, 30
    li 4, 0x1
    bl fn_801352F4
    mr 3, 30
    li 4, 0x2
    bl fn_801352F4
    mr 3, 30
    li 4, 0x3
    bl fn_801352F4
    mr 3, 30
    li 4, 0x6
    bl fn_801352F4
    mr 3, 30
    li 4, 0xc
    bl fn_801352F4
    lwz 3, 0x98(30)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x34(1)
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x30(1)
    lwz 3, 0x98(30)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    fmr 2, 31
    .4byte 0xC8629DB8 # lfd f3, lbl_8053CD58@sda21(r0)
    addi 3, 31, 0x508
    stw 0, 0x28(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820024 # bne .L_80136144
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x534
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000038 # b .L_80136178
L_80136144:
    bl fn_80021840
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_8013615C
    bl fn_80021840
    cmpwi 3, 0x1
    .4byte 0x40820020 # bne .L_80136178
L_8013615C:
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x548
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
L_80136178:
    li 0, 0x0
    stw 0, 0xb0(30)
    .4byte 0x4800017C # b .L_801362FC
    mr 3, 30
    li 4, 0x7
    bl fn_801352F4
    mr 3, 30
    li 4, 0x1
    bl fn_801352F4
    mr 3, 30
    li 4, 0x2
    bl fn_801352F4
    mr 3, 30
    li 4, 0x3
    bl fn_801352F4
    mr 3, 30
    li 4, 0x4
    bl fn_801352F4
    mr 3, 30
    li 4, 0xc
    bl fn_801352F4
    lwz 3, 0x98(30)
    bl fn_80083A68
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x34(1)
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    stw 0, 0x30(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x30(1)
    lwz 3, 0x98(30)
    fsubs 1, 1, 2
    fmuls 31, 1, 0
    bl fn_80083A3C
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x2c(1)
    fmr 2, 31
    .4byte 0xC8629DB8 # lfd f3, lbl_8053CD58@sda21(r0)
    addi 3, 31, 0x560
    stw 0, 0x28(1)
    .4byte 0xC0029DB0 # lfs f0, lbl_8053CD50@sda21(r0)
    lfd 1, 0x28(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820054 # bne .L_80136290
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80136270
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x590
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000088 # b .L_801362F4
L_80136270:
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x5a4
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000068 # b .L_801362F4
L_80136290:
    bl fn_80021840
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_801362A8
    bl fn_80021840
    cmpwi 3, 0x1
    .4byte 0x40820050 # bne .L_801362F4
L_801362A8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_801362D8
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x5b8
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
    .4byte 0x48000020 # b .L_801362F4
L_801362D8:
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x5d0
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x0
    lwz 5, 0x8(5)
    bl fn_80401E10
    stw 3, 0xac(30)
L_801362F4:
    li 0, 0x0
    stw 0, 0xb0(30)
L_801362FC:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

# fn_80136320(obj) -> bool - "is this object's state safe/idle?" query:
# true if the CURRENT SCENE OBJECT global (lbl_8053AAF8) is currently null,
# OR `obj->0x4c` (a state field using the same convention as this class's
# own this->0x4c) is 0, in [1,6], ==9, or ==0xc. `obj` is a caller-supplied
# argument, not necessarily `this` - not yet confirmed whether callers
# always pass the scene manager itself here.
fn_80136320:
    .4byte 0x800D8F38 # lwz r0, lbl_8053AAF8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8013635C
    lwz 3, 0x4c(3)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80136354
    subi 0, 3, 0x1
    cmplwi 0, 0x5
    .4byte 0x40810014 # ble .L_80136354
    cmpwi 3, 0x9
    .4byte 0x4182000C # beq .L_80136354
    cmpwi 3, 0xc
    .4byte 0x4082000C # bne .L_8013635C
L_80136354:
    li 3, 0x1
    blr
L_8013635C:
    li 3, 0x0
    blr

# fn_80136364(this) - a conditional module-4 (index 0x1000-shaped, via
# fn_80309C4C) load-trigger + a per-frame DVD-status/timer maintenance
# tail (fn_8008E328/fn_8008DF30/fn_8008E2B8 - same drive-status accessor
# family used by main() and fn_80134D20 earlier this session). Gated on
# this->0xfe(byte)==1 and 2 not-yet-decompiled readiness checks
# (fn_802DCD0C, fn_8037AD34/fn_8037ACC4). Also has a 2nd branch (gated by
# the CURRENT SCENE OBJECT's ->0x85 byte) that instead checks
# `this->0x54==7` to pick between 2 fixed anchor-object pairs
# (this->0x74/0x78) stored into the boot-config struct's ->0x118/0x11c,
# paired with fn_802AC8AC (the confirmed state-queue call).
fn_80136364:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lbz 0, 0xfe(3)
    cmplwi 0, 0x1
    .4byte 0x4082015C # bne .L_801364E4
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x4082014C # bne .L_801364E4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0xb
    .4byte 0x4182013C # beq .L_801364E4
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1000
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820124 # beq .L_801364E4
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AD34
    clrlwi. 0, 3, 24
    .4byte 0x40820114 # bne .L_801364E4
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037ACC4
    clrlwi. 0, 3, 24
    .4byte 0x40820104 # bne .L_801364E4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x85(3)
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_80136464
    lwz 0, 0x54(31)
    cmpwi 0, 0x7
    .4byte 0x40820044 # bne .L_80136440
    lwz 29, 0x78(31)
    li 3, 0x7
    lwz 30, 0x74(31)
    li 0, 0x1
    li 4, 0x0
    stw 3, 0x50(31)
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stw 30, 0x118(3)
    stw 29, 0x11c(3)
    stb 0, 0x84(31)
    .4byte 0x480000A8 # b .L_801364E4
L_80136440:
    stw 0, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000084 # b .L_801364E4
L_80136464:
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x40820078 # bne .L_801364E4
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037ADD8
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801364E4
    li 0, 0x9
    stw 0, 0x4c(31)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037ADA4
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    li 0, 0x1
    li 4, 0x1
    li 5, -0x1
    stb 0, 0xc(3)
    lwz 3, 0xa0(31)
    bl fn_80458880
    lwz 3, 0xa0(31)
    bl fn_804593D4
    li 3, 0x0
    bl fn_8008E328
    li 0, 0x0
    mr 30, 3
    stw 0, 0x10c(31)
    li 4, 0x0
    stw 0, 0x108(31)
    lha 3, 0x7c(3)
    bl fn_8008DF30
    lha 4, 0x7c(30)
    addi 3, 30, 0x68
    bl fn_8008E2B8
L_801364E4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

# fn_80136500(this) - a per-frame "has anything changed?" latch updater:
# reads the CURRENT SCENE OBJECT's ->0x96/->0x94 bytes and a not-yet-
# decompiled fn_8037F1E4() check into a local flag, and if this->0xfe==1
# AND that flag is set, increments a byte counter (this->0xfc) that, once
# it reaches 60 (0x3c), resets to 0 and increments this->0xf8 (a longer-
# period tick/cycle counter) - a classic "count N short ticks into 1 long
# tick" pattern.
fn_80136500:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x96(4)
    lbz 31, 0x94(4)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80136530
    li 31, 0x1
L_80136530:
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_80136550
    li 3, 0x0
    bl fn_8037F1E4
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80136550
    li 31, 0x1
L_80136550:
    lbz 0, 0xfe(30)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_80136590
    clrlwi. 0, 31, 24
    .4byte 0x40820030 # bne .L_80136590
    lbz 3, 0xfc(30)
    addi 0, 3, 0x1
    stb 0, 0xfc(30)
    lbz 0, 0xfc(30)
    cmplwi 0, 0x3c
    .4byte 0x41800018 # blt .L_80136590
    li 0, 0x0
    stb 0, 0xfc(30)
    lwz 3, 0xf8(30)
    addi 0, 3, 0x1
    stw 0, 0xf8(30)
L_80136590:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_801365A8() -> int - trivial forwarding wrapper for fn_80021840
# (returns the current language code, 0/1/2 - same accessor used
# throughout this class for localized-string selection).
fn_801365A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80021840
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_801365C8(this, val) - setter: this->0xfe = val; if val==1, also resets
# the short/long tick counters this->0xfc(byte)=0 and this->0xf8(word)=0
# (the counters fn_80136500 advances) - a "just entered mode 1, restart
# the tick counters" reset.
fn_801365C8:
    clrlwi 0, 4, 24
    stb 4, 0xfe(3)
    cmplwi 0, 0x1
    bnelr
    li 0, 0x0
    stb 0, 0xfc(3)
    stw 0, 0xf8(3)
    blr

# fn_801365E8(this, idA, idB, arg) - a "queue a fixed state-7 transition"
# request: this->0x50=7, this->0x58=1, calls the confirmed state-queue
# fn_802AC8AC(lbl_8053ACA0, arg), stores idA/idB into the BOOT-CONFIG
# STRUCT's ->0x118/0x11c (lbl_80529DEC, not `this`), sets this->0x84=1 (the
# "change in flight" latch).
fn_801365E8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x7
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    mr 4, 6
    stw 29, 0x14(1)
    mr 29, 3
    stw 0, 0x50(3)
    li 0, 0x1
    stw 0, 0x58(3)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stw 30, 0x118(3)
    stw 31, 0x11c(3)
    stb 0, 0x84(29)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

# fn_8013665C(this, idA, idB) - a variant of fn_801365E8: same state-7
# queue shape, but stores idA into the boot-config struct's ->0x118 and
# idB into ->0x11c directly (rather than idA/idB with a 3rd arg), and
# additionally - if idA==0xa AND idB==2 AND this->0x4c==9 - sets a specific
# byte flag (boot-config->0x24b=2, else =1) and always sets
# boot-config->0x237=7 (a secondary/UI sub-state byte referenced by
# several other functions in this class).
fn_8013665C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x7
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    li 4, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    stw 0, 0x50(3)
    li 0, 0x1
    stw 0, 0x58(3)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    lis 3, lbl_80529DEC@ha
    cmpwi 30, 0xa
    addi 4, 3, lbl_80529DEC@l
    li 3, 0x1
    stw 30, 0x118(4)
    stw 31, 0x11c(4)
    stb 3, 0x84(29)
    .4byte 0x40820038 # bne .L_801366F0
    cmpwi 31, 0x2
    .4byte 0x40820030 # bne .L_801366F0
    lwz 0, 0x4c(29)
    cmpwi 0, 0x9
    .4byte 0x40820010 # bne .L_801366DC
    li 0, 0x2
    stb 0, 0x24b(4)
    .4byte 0x48000008 # b .L_801366E0
L_801366DC:
    stb 3, 0x24b(4)
L_801366E0:
    lis 3, lbl_80529DEC@ha
    li 0, 0x7
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x237(3)
L_801366F0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

# fn_8013670C(this, newState) - another state-request variant: zeroes
# this->0x60/0x64, and if the boot-config struct's ->0x118==0xa AND
# ->0x11c==2, swaps in a DIFFERENT pending target pair (copies
# boot-config->0x120/0x124 into ->0x118/0x11c and sets ->0x237=7) before
# committing this->0x50=newState, this->0x58=1, the confirmed state-queue
# call, and this->0x84=0.
fn_8013670C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    stw 0, 0x60(3)
    lis 3, lbl_80529DEC@ha
    addi 6, 3, lbl_80529DEC@l
    stw 0, 0x64(31)
    lwz 0, 0x118(6)
    cmpwi 0, 0xa
    .4byte 0x40820028 # bne .L_80136764
    lwz 0, 0x11c(6)
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_80136764
    lwz 5, 0x120(6)
    li 0, 0x7
    lwz 3, 0x124(6)
    stw 5, 0x118(6)
    stw 3, 0x11c(6)
    stb 0, 0x237(6)
L_80136764:
    stw 4, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_80136798(this, newState, arg) - the SIMPLE state-request form: just
# this->0x50=newState, this->0x58=1, fn_802AC8AC(lbl_8053ACA0, arg),
# this->0x84=0. The base case the other request variants above build on.
fn_80136798:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stw 4, 0x50(3)
    mr 4, 5
    stw 0, 0x58(3)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_801367E0(this, newState) - sets this->0x4c=newState DIRECTLY (not via
# the queue - an immediate state overwrite, not a request), and if
# newState==0xa, also calls fn_802AC980(lbl_8053ACA0) first (a
# not-yet-decompiled queue-manager call, likely "cancel/clear the pending
# request").
fn_801367E0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmpwi 31, 0xa
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x4082000C # bne .L_8013680C
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC980
L_8013680C:
    stw 31, 0x4c(30)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_80136828(this) - the LOADING-SCREEN UI RENDER STEP (2776 bytes, one of
# the largest functions landed this session - described at the
# architectural level below rather than tracing every one of its ~23
# states line-by-line, matching how this session has handled comparably
# large functions like fn_80137300/fn_801DD410/fn_80136828's sibling
# below). Guarded by fn_800BA6A4(lbl_80536C50) (a not-yet-decompiled
# per-frame guard/lock) and a set of "already done"/"not needed" early
# exits (this->0x58==8, this->0xfd==2, this->0x4c>0x16).
#
# Dispatches via a real compiler jumptable (jumptable_8049EFC8) on
# this->0x4c (0-0x16, matching the scene manager's own state field). Every
# case follows the SAME shape: build a small fixed-length string/ID buffer
# on the stack (4 identical bytes + 1 terminator byte, e.g. `0x19,0x19,
# 0x19,0x00`) and copy it into the PERSISTENT top-level manager object
# (lbl_8053AA48, +0x8..+0xb) - almost certainly setting a 4-character
# "current loading substep" tag string that the manager displays - then
# drives a family of UI/text update calls through the CONFIRMED shared
# camera/cutscene manager (lbl_8053AB10): fn_8013BB64/fn_8013BB18/
# fn_8013B71C/fn_8013B618/fn_8013B4F8/fn_8013B4C0/fn_8013BAF4 (real direct
# calls, not virtual - all operate on the SAME manager object, likely
# "begin/end UI update", "set line 1/2 text", "commit") interleaved with
# this->0x4 (a per-scene UI-element object)'s own fn_80139D3C/fn_80139CC4/
# fn_80139C84/fn_80139C5C update calls (each guarded by a null-check),
# plus periodic float-position computations (screen-space fade/slide
# positions, computed via the object's OWN vtable slot 0x24 called through
# this->0xb8/0xc4, or a simpler fixed-angle fallback) and calls into
# per-subsystem "finalize" functions (fn_803DA6B4, fn_8043D39C/
# fn_8043DB58, fn_8037AF80/fn_8037AF4C, fn_8037A664/fn_8037A580) that vary
# per state. A few states also call the manager's OTHER top-level vtable
# methods fn_80119DD0/fn_80119628/fn_801194C4 at the very end (this class's
# own "flush pending UI batch" tail, shared by the exit path).
fn_80136828:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    lis 4, lbl_80536C50@ha
    mr 31, 3
    addi 3, 4, lbl_80536C50@l
    bl fn_800BA6A4
    lwz 0, 0x58(31)
    cmpwi 0, 0x8
    .4byte 0x41820A4C # beq .L_801372AC
    lbz 0, 0xfd(31)
    cmplwi 0, 0x2
    .4byte 0x41820A40 # beq .L_801372AC
    lwz 0, 0x4c(31)
    cmplwi 0, 0x16
    .4byte 0x41810A34 # bgt .L_801372AC
    lis 3, jumptable_8049EFC8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049EFC8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x806D91C8 # lwz r3, lbl_8053AD88@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801368A4
    bl fn_803A44D8
L_801368A4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4F8
    .4byte 0x48000A00 # b .L_801372AC
    .4byte 0x806D9210 # lwz r3, lbl_8053ADD0@sda21(r0)
    bl fn_803DF624
    .4byte 0x480009F4 # b .L_801372AC
    .4byte 0x806D91F0 # lwz r3, lbl_8053ADB0@sda21(r0)
    bl fn_803CEED4
    .4byte 0x480009E8 # b .L_801372AC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    .4byte 0x806D91D8 # lwz r3, lbl_8053AD98@sda21(r0)
    bl fn_803A8664
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    .4byte 0x480009BC # b .L_801372AC
    .4byte 0x806D91D0 # lwz r3, lbl_8053AD90@sda21(r0)
    bl fn_803A71F0
    .4byte 0x480009B0 # b .L_801372AC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    .4byte 0x806D91C0 # lwz r3, lbl_8053AD80@sda21(r0)
    bl fn_8039013C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    .4byte 0x806D91C0 # lwz r3, lbl_8053AD80@sda21(r0)
    bl fn_80390108
    .4byte 0x4800097C # b .L_801372AC
    li 3, 0x19
    li 0, 0x0
    stb 3, 0x48(1)
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 3, 0x49(1)
    stb 3, 0x4a(1)
    stb 0, 0x4b(1)
    lwz 0, 0x48(1)
    stw 0, 0x4c(1)
    lbz 3, 0x4c(1)
    lbz 0, 0x4d(1)
    stb 3, 0x8(4)
    lbz 3, 0x4e(1)
    stb 0, 0x9(4)
    lbz 0, 0x4f(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    lwz 3, 0x4(31)
    bl fn_80139D3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    lwz 3, 0x4(31)
    bl fn_80139CC4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    lwz 3, 0x4(31)
    bl fn_80139C84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    lwz 3, 0x4(31)
    bl fn_80139C5C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D39C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043DB58
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    bl fn_803DA6B4
    lwz 0, 0x58(31)
    cmpwi 0, 0x0
    .4byte 0x408208D4 # bne .L_801372AC
    lwz 0, 0x60(31)
    cmpwi 0, 0x4
    .4byte 0x418208C8 # beq .L_801372AC
    .4byte 0x408008C4 # bge .L_801372AC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801369F8
    .4byte 0x480008B8 # b .L_801372AC
L_801369F8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x418208A8 # beq .L_801372AC
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820074 # bne .L_80136A84
    lwz 3, 0xb8(31)
    lwz 0, 0x68(31)
    lwz 12, 0x0(3)
    .4byte 0xC0229DC0 # lfs f1, lbl_8053CD60@sda21(r0)
    clrlwi 4, 0, 24
    lfs 2, 0x8c(31)
    .4byte 0xC0029DC4 # lfs f0, lbl_8053CD64@sda21(r0)
    lwz 12, 0x24(12)
    fmuls 30, 1, 2
    fmuls 31, 0, 2
    mtctr 12
    bctrl
    lwz 3, 0xb8(31)
    fmr 3, 30
    .4byte 0xC0429DCC # lfs f2, lbl_8053CD6C@sda21(r0)
    fmr 4, 31
    lwz 12, 0x0(3)
    li 4, 0x0
    .4byte 0xC0229DC8 # lfs f1, lbl_8053CD68@sda21(r0)
    .4byte 0xC0029DD0 # lfs f0, lbl_8053CD70@sda21(r0)
    li 5, 0x0
    lwz 12, 0xec(12)
    fnmsubs 1, 30, 2, 1
    fnmsubs 2, 31, 2, 0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000218 # b .L_80136C98
L_80136A84:
    .4byte 0xC0029DD4 # lfs f0, lbl_8053CD74@sda21(r0)
    lfs 3, 0x8c(31)
    .4byte 0xC0229DD8 # lfs f1, lbl_8053CD78@sda21(r0)
    fmuls 2, 0, 3
    .4byte 0xC0029DDC # lfs f0, lbl_8053CD7C@sda21(r0)
    fmuls 1, 1, 3
    lwz 4, 0xc0(31)
    stfs 2, 0x60(1)
    lwz 0, 0x60(1)
    stfs 1, 0x64(1)
    stw 0, 0x58(1)
    lwz 0, 0x64(1)
    lfs 1, 0x58(1)
    stw 0, 0x5c(1)
    fcmpo cr0, 1, 0
    lfs 2, 0x5c(1)
    .4byte 0x40810008 # ble .L_80136ACC
    .4byte 0x48000008 # b .L_80136AD0
L_80136ACC:
    fmr 1, 0
L_80136AD0:
    .4byte 0xC0029DDC # lfs f0, lbl_8053CD7C@sda21(r0)
    stfs 1, 0x11c(4)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_80136AE4
    .4byte 0x48000008 # b .L_80136AE8
L_80136AE4:
    fmr 2, 0
L_80136AE8:
    lwz 3, 0x60(1)
    lwz 0, 0x64(1)
    stw 3, 0x50(1)
    .4byte 0xC0029DDC # lfs f0, lbl_8053CD7C@sda21(r0)
    lfs 1, 0x50(1)
    stfs 2, 0x120(4)
    fcmpo cr0, 1, 0
    stw 0, 0x54(1)
    lwz 3, 0xc4(31)
    lfs 2, 0x54(1)
    .4byte 0x40810008 # ble .L_80136B18
    .4byte 0x48000008 # b .L_80136B1C
L_80136B18:
    fmr 1, 0
L_80136B1C:
    .4byte 0xC0029DDC # lfs f0, lbl_8053CD7C@sda21(r0)
    stfs 1, 0x11c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_80136B30
    .4byte 0x48000008 # b .L_80136B34
L_80136B30:
    fmr 2, 0
L_80136B34:
    stfs 2, 0x120(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80136B68
    addi 3, 31, 0xc8
    li 4, 0x42
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0xf4(31)
    .4byte 0x48000020 # b .L_80136B84
L_80136B68:
    addi 3, 31, 0xc8
    li 4, 0x41
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    stfs 1, 0xf4(31)
L_80136B84:
    lfs 2, 0x64(1)
    .4byte 0xC0229DCC # lfs f1, lbl_8053CD6C@sda21(r0)
    .4byte 0xC0029DE0 # lfs f0, lbl_8053CD80@sda21(r0)
    lwz 3, 0xc4(31)
    fmadds 30, 2, 1, 0
    bl fn_8009F0D0
    addi 4, 31, 0xc8
    bl strcpy
    lwz 3, 0xc0(31)
    bl fn_8009F0D0
    addi 4, 31, 0xc8
    bl strcpy
    lwz 3, 0xc4(31)
    lwz 0, 0x68(31)
    lwz 12, 0x0(3)
    clrlwi 4, 0, 24
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0xc0(31)
    lwz 0, 0x68(31)
    lwz 12, 0x0(3)
    clrlwi 4, 0, 24
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lwz 3, 0xc4(31)
    li 4, 0x0
    lwz 5, 0x4(5)
    lwz 12, 0x0(3)
    lhz 5, 0x4(5)
    .4byte 0xC0029DE8 # lfs f0, lbl_8053CD88@sda21(r0)
    xoris 5, 5, 0x8000
    stw 0, 0x68(1)
    .4byte 0xC8229DB8 # lfd f1, lbl_8053CD58@sda21(r0)
    fadds 2, 0, 30
    stw 5, 0x6c(1)
    .4byte 0xC0629DEC # lfs f3, lbl_8053CD8C@sda21(r0)
    lfd 0, 0x68(1)
    lwz 12, 0x98(12)
    fsubs 0, 0, 1
    .4byte 0xC0229DE4 # lfs f1, lbl_8053CD84@sda21(r0)
    fadds 3, 3, 0
    mtctr 12
    bctrl
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lwz 3, 0xc0(31)
    fmr 2, 30
    lwz 5, 0x4(4)
    li 4, 0x0
    lwz 12, 0x0(3)
    lhz 5, 0x4(5)
    stw 0, 0x70(1)
    xoris 0, 5, 0x8000
    .4byte 0xC8229DB8 # lfd f1, lbl_8053CD58@sda21(r0)
    stw 0, 0x74(1)
    .4byte 0xC0629DEC # lfs f3, lbl_8053CD8C@sda21(r0)
    lfd 0, 0x70(1)
    lwz 12, 0x98(12)
    fsubs 0, 0, 1
    .4byte 0xC0229DF0 # lfs f1, lbl_8053CD90@sda21(r0)
    fadds 3, 3, 0
    mtctr 12
    bctrl
L_80136C98:
    lwz 0, 0x60(31)
    cmpwi 0, 0x2
    .4byte 0x4180060C # blt .L_801372AC
    lis 4, 0xff50
    lis 3, 0x5028
    addi 6, 4, 0x50ff
    lfs 2, 0x90(31)
    addi 0, 3, 0x2800
    .4byte 0xC0229DF4 # lfs f1, lbl_8053CD94@sda21(r0)
    stw 6, 0x3c(1)
    addi 4, 1, 0x44
    .4byte 0xC0029DF8 # lfs f0, lbl_8053CD98@sda21(r0)
    fmuls 31, 1, 2
    stw 0, 0x44(1)
    addi 5, 1, 0x3c
    fmuls 30, 0, 2
    lwz 3, 0xbc(31)
    stw 6, 0x38(1)
    lwz 12, 0x0(3)
    stw 0, 0x40(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0xbc(31)
    lwz 0, 0x6c(31)
    lwz 12, 0x0(3)
    clrlwi 4, 0, 24
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0xbc(31)
    fmr 3, 31
    .4byte 0xC0429DCC # lfs f2, lbl_8053CD6C@sda21(r0)
    fmr 4, 30
    lwz 12, 0x0(3)
    li 4, 0x0
    .4byte 0xC0229DFC # lfs f1, lbl_8053CD9C@sda21(r0)
    .4byte 0xC0029E00 # lfs f0, lbl_8053CDA0@sda21(r0)
    li 5, 0x0
    lwz 12, 0xec(12)
    fnmsubs 1, 31, 2, 1
    fnmsubs 2, 30, 2, 0
    li 6, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000560 # b .L_801372AC
    li 3, 0x19
    li 0, 0x0
    stb 3, 0x30(1)
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 3, 0x31(1)
    stb 3, 0x32(1)
    stb 0, 0x33(1)
    lwz 0, 0x30(1)
    stw 0, 0x34(1)
    lbz 3, 0x34(1)
    lbz 0, 0x35(1)
    stb 3, 0x8(4)
    lbz 3, 0x36(1)
    stb 0, 0x9(4)
    lbz 0, 0x37(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    lwz 3, 0x4(31)
    bl fn_80139D3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    lwz 3, 0x4(31)
    bl fn_80139CC4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    lwz 3, 0x4(31)
    bl fn_80139C84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    lwz 3, 0x4(31)
    bl fn_80139C5C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D39C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043DB58
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AF80
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4F8
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AF4C
    .4byte 0x480004B0 # b .L_801372AC
    li 0, 0x0
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 0, 0x28(1)
    stb 0, 0x29(1)
    stb 0, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stw 0, 0x2c(1)
    lbz 3, 0x2c(1)
    lbz 0, 0x2d(1)
    stb 3, 0x8(4)
    lbz 3, 0x2e(1)
    stb 0, 0x9(4)
    lbz 0, 0x2f(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    lwz 3, 0x4(31)
    bl fn_80139D3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80136E74
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80136E7C
L_80136E74:
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC98C
L_80136E7C:
    lwz 3, 0x4(31)
    bl fn_80139CC4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    lwz 3, 0x4(31)
    bl fn_80139C84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    lwz 3, 0x4(31)
    bl fn_80139C5C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x408203FC # bne .L_801372AC
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x408203F0 # bne .L_801372AC
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC98C
    .4byte 0x480003E4 # b .L_801372AC
    li 3, 0x19
    li 0, 0x0
    stb 3, 0x20(1)
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 3, 0x21(1)
    stb 3, 0x22(1)
    stb 0, 0x23(1)
    lwz 0, 0x20(1)
    stw 0, 0x24(1)
    lbz 3, 0x24(1)
    lbz 0, 0x25(1)
    stb 3, 0x8(4)
    lbz 3, 0x26(1)
    stb 0, 0x9(4)
    lbz 0, 0x27(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    lwz 3, 0x4(31)
    bl fn_80139D3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    lwz 3, 0x4(31)
    bl fn_80139CC4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    lwz 3, 0x4(31)
    bl fn_80139C84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B538
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    bl fn_804399A0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4F8
    lwz 3, 0x4(31)
    bl fn_80139C5C
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    bl fn_803DA6B4
    .4byte 0x48000344 # b .L_801372AC
    li 0, 0x0
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 0, 0x18(1)
    stb 0, 0x19(1)
    stb 0, 0x1a(1)
    stb 0, 0x1b(1)
    lwz 0, 0x18(1)
    stw 0, 0x1c(1)
    lbz 3, 0x1c(1)
    lbz 0, 0x1d(1)
    stb 3, 0x8(4)
    lbz 3, 0x1e(1)
    stb 0, 0x9(4)
    lbz 0, 0x1f(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_80136FF8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A664
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BAF4
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A580
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    bl fn_803DA6B4
    .4byte 0x480002B8 # b .L_801372AC
L_80136FF8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A664
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BAF4
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A580
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    bl fn_803DA6B4
    .4byte 0x4800027C # b .L_801372AC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    lwz 3, 0x4(31)
    bl fn_80139D3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    lwz 3, 0x4(31)
    bl fn_80139CC4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    lwz 3, 0x4(31)
    bl fn_80139C84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    lwz 3, 0x4(31)
    bl fn_80139C5C
    .4byte 0x48000238 # b .L_801372AC
    li 3, 0x19
    li 0, 0x0
    stb 3, 0x10(1)
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 3, 0x11(1)
    stb 3, 0x12(1)
    stb 0, 0x13(1)
    lwz 0, 0x10(1)
    stw 0, 0x14(1)
    lbz 3, 0x14(1)
    lbz 0, 0x15(1)
    stb 3, 0x8(4)
    lbz 3, 0x16(1)
    stb 0, 0x9(4)
    lbz 0, 0x17(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    lwz 3, 0x4(31)
    bl fn_80139D3C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    lwz 3, 0x4(31)
    bl fn_80139CC4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    lwz 3, 0x4(31)
    bl fn_80139C84
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    .4byte 0x480001B8 # b .L_801372AC
    li 3, 0x19
    li 0, 0x0
    stb 3, 0x8(1)
    .4byte 0x808D8E88 # lwz r4, lbl_8053AA48@sda21(r0)
    stb 3, 0x9(1)
    stb 3, 0xa(1)
    stb 0, 0xb(1)
    lwz 0, 0x8(1)
    stw 0, 0xc(1)
    lbz 3, 0xc(1)
    lbz 0, 0xd(1)
    stb 3, 0x8(4)
    lbz 3, 0xe(1)
    stb 0, 0x9(4)
    lbz 0, 0xf(1)
    stb 3, 0xa(4)
    stb 0, 0xb(4)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    lwz 0, 0x1c(31)
    cmplwi 0, 0x0
    .4byte 0x4182008C # beq .L_801371D8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8013719C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A664
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BAF4
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A580
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    bl fn_803DA6B4
    .4byte 0x480000F4 # b .L_8013728C
L_8013719C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB64
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A664
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BAF4
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A580
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    bl fn_803DA6B4
    .4byte 0x480000B8 # b .L_8013728C
L_801371D8:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801371E8
    bl fn_80139D3C
L_801371E8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BB18
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80137200
    bl fn_80139CC4
L_80137200:
    lwz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80137214
    .4byte 0x806D91C0 # lwz r3, lbl_8053AD80@sda21(r0)
    bl fn_8039013C
L_80137214:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B71C
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8013722C
    bl fn_80139C84
L_8013722C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B618
    lwz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80137248
    .4byte 0x806D91C0 # lwz r3, lbl_8053AD80@sda21(r0)
    bl fn_80390108
L_80137248:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x4182003C # beq .L_8013728C
    bl fn_80139C5C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D39C
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043DB58
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8013728C
    bl fn_8037AF80
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4F8
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AF4C
L_8013728C:
    bl fn_80119DD0
    bl fn_80119628
    bl fn_80119DD0
    bl fn_801194C4
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    bl fn_803DA6B4
    .4byte 0x806D9320 # lwz r3, lbl_8053AEE0@sda21(r0)
    bl fn_80442200
L_801372AC:
    lwz 0, 0x58(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801372C0
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802ACA64
L_801372C0:
    lwz 0, 0x4c(31)
    cmpwi 0, 0x16
    .4byte 0x41820014 # beq .L_801372DC
    bl fn_80119DD0
    bl fn_80119628
    bl fn_80119DD0
    bl fn_801194C4
L_801372DC:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    lwz 0, 0xa4(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

# fn_80137300(this) - THE SCENE MANAGER'S MASTER PER-FRAME UPDATE (5936
# bytes, the single largest function landed this whole session). Described
# at the architectural level - see below for why exhaustive per-state
# tracing isn't practical or more informative than the pattern itself.
#
# Top of function: increments a call counter (this->0x5c), and maintains
# the DVD-drive status object exactly like main()'s own per-frame watchdog
# (fn_8008E328 + fn_8008DED8/fn_8008DF30 timer bump, and - once
# this->0x58<5 - the SAME disc-error-check via fn_802B1DCC(lbl_8053ACA8)
# seen in main()).
#
# Then a MODULE-READINESS PRE-CHECK block: for each of the 4 player-facing
# checks (fn_8013997C(i) for i=0..3, THE confirmed "is module i loaded"
# 2-bit query on this->0x83), tries 2 different pairs of per-module ready
# predicates (AnimTable_IsField0xdcLessThan3/AnimTable_IsField0xe0LessThan3 against fn_8030AAF4(i)'s ID, looked
# up via the shared registry lbl_8053AD30) and records which slot (if any)
# became ready this frame. This feeds a state-specific "should I advance"
# boolean (built from 2 near-identical lookup-table checks against
# this->0x4c or the CURRENT SCENE OBJECT's own ->0x4c, matching a list of
# "loading-flavor" states {7,8,9,0xa,0xb,0x16}) that, when true, ADVANCES
# this->0x4c to state 0x16 via fn_80442254(lbl_8053AEE0, this->0x4c, readySlot).
#
# Then THE MAIN STATE MACHINE: a real jumptable (jumptable_8049F024) on
# this->0x4c (0-0x16, 23 states). Every state case follows one of a small
# number of REPEATED shapes seen dozens of times in this exact file
# already:
#   - "enter a wait state": commit this->0x50/0x58 via the confirmed
#     fn_802AC8AC state-queue and clear this->0x84, OR
#   - "poll a specific subsystem's readiness" (a different query function
#     PER STATE - fn_803A3484/fn_803DAC3C/GetRegistryField_0x1a8_OrDefault3/GetRegistryField_0xc_OrDefault4/
#     fn_803A65EC/fn_8039003C/etc, one for each of the 6-7 lazily-
#     constructed subsystems this class owns) - on success, stores the
#     result into this->0x50 and queues the next state the same way; on
#     "still working", loops in place.
#   - the FADE/SPINNER SUB-STATE-MACHINE (this->0x60/0x64/0x68/0x6c/0x8c/
#     0x90): a nested per-state animation - ramps this->0x8c/0x90 (alpha)
#     toward a target, decrements frame counters, and periodically fires
#     an effect/sound cue via fn_80458FF0/fn_80458F04 (indexed by a table
#     `lbl_804652F0` keyed on a value read from this->0xa0 and the
#     CURRENT SCENE OBJECT's own state) - this is literally the loading-
#     spinner tick, confirmed by its exact field overlap with fn_80135A04
#     and fn_80135020's case-0 handler.
#   - "destroy all my subsystems" tail (identical inline expansion of
#     fn_801352F4's per-field virtual-destroy-and-null pattern, done here
#     directly on this->0x1c/0x20/0x24/0x28/0x2c/0x30 rather than via a
#     call, likely because this is the FINAL cleanup pass before the scene
#     is considered fully loaded) followed by re-constructing 1 of them
#     (this->0x20, 0x158 bytes via fn_803A59E0) and re-arming a completion
#     callback (stores fn_80139994 - see its own banner below - into a
#     global function-pointer/flag triple lbl_8053A93C/8053A940/8053A951).
#
# Ends by stepping the CONFIRMED global PRNG (this->0xb4, the standard LCG
# update) - every single call to this function advances the RNG once,
# regardless of state, which explains why "random" visual variety during
# long loading screens (spinner rotation, particle timing) reads as
# genuinely random despite being fully deterministic per-frame.
fn_80137300:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    lwz 3, 0x5c(3)
    addi 0, 3, 0x1
    stw 0, 0x5c(31)
    lwz 3, 0x8(31)
    bl fn_8030A43C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    li 3, 0x0
    stb 0, 0x85(4)
    bl fn_8008E328
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_80137374
    lwz 0, 0x10c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80137364
    lha 3, 0x7c(3)
    bl fn_8008DED8
L_80137364:
    lwz 3, 0x108(31)
    subi 0, 3, 0x1
    stw 0, 0x108(31)
    .4byte 0x48000010 # b .L_80137380
L_80137374:
    lha 3, 0x7c(3)
    li 4, 0x0
    bl fn_8008DF30
L_80137380:
    lwz 0, 0x58(31)
    cmpwi 0, 0x5
    .4byte 0x40800030 # bge .L_801373B8
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DCC
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801373B8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x24c(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801373B8
    li 0, 0x5
    stw 0, 0x58(31)
L_801373B8:
    lbz 3, 0xfd(31)
    cmplwi 3, 0x0
    .4byte 0x40821270 # bne .L_80138630
    lwz 0, 0x58(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801373E0
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_801373E0
    cmpwi 0, 0x3
    .4byte 0x40821254 # bne .L_80138630
L_801373E0:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x24c(3)
    cmplwi 0, 0x0
    .4byte 0x408202A4 # bne .L_80137694
    lwz 3, 0x4c(31)
    cmpwi 3, 0x7
    .4byte 0x41820024 # beq .L_80137420
    subi 0, 3, 0x8
    cmplwi 0, 0x7
    .4byte 0x40810018 # ble .L_80137420
    subi 0, 3, 0x11
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80137420
    cmpwi 3, 0x6
    .4byte 0x40820278 # bne .L_80137694
L_80137420:
    li 29, 0x0
L_80137424:
    mr 3, 29
    bl fn_8013997C
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_801374E4
    mr 3, 29
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsField0xdcLessThan3
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_80137474
    mr 3, 29
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsField0xe0LessThan3
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80137474
    addi 30, 29, 0x1
    .4byte 0x48000084 # b .L_801374F4
L_80137474:
    mr 3, 29
    bl fn_8013997C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_801374AC
    mr 3, 29
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsField0xdcLessThan3
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801374AC
    addi 30, 29, 0x1
    .4byte 0x4800004C # b .L_801374F4
L_801374AC:
    mr 3, 29
    bl fn_8013997C
    clrlwi 0, 3, 24
    cmplwi 0, 0x2
    .4byte 0x40820028 # bne .L_801374E4
    mr 3, 29
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl AnimTable_IsField0xe0LessThan3
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801374E4
    addi 30, 29, 0x1
    .4byte 0x48000014 # b .L_801374F4
L_801374E4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF38 # blt .L_80137424
    li 30, 0x0
L_801374F4:
    lwz 0, 0x4c(31)
    li 29, 0x1
    cmpwi 0, 0xc
    .4byte 0x40820028 # bne .L_80137528
    lwz 0, 0x1c(31)
    cmplwi 0, 0x0
    .4byte 0x41820160 # beq .L_8013766C
    bl fn_8037A120
    clrlwi 0, 3, 24
    cmplwi 0, 0x5
    .4byte 0x41800150 # blt .L_8013766C
    li 29, 0x0
    .4byte 0x48000148 # b .L_8013766C
L_80137528:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80137588
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_80137570
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_80137570
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_80137570
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_80137570
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_80137570
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_80137574
L_80137570:
    li 0, 0x1
L_80137574:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_801375DC
L_80137588:
    lwz 3, 0x4c(3)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_801375C8
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_801375C8
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_801375C8
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_801375C8
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_801375C8
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_801375C8
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_801375CC
L_801375C8:
    li 0, 0x1
L_801375CC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_801375DC:
    clrlwi. 0, 0, 24
    .4byte 0x4182008C # beq .L_8013766C
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80137604
    lbz 0, 0xfc(31)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_80137668
L_80137604:
    bl fn_802DEBF8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80137640
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 3, 0x58(3)
    subis 3, 3, 0x100
    cmplwi 3, 0x2c
    .4byte 0x41820048 # beq .L_80137668
    cmplwi 3, 0x1d
    .4byte 0x41820040 # beq .L_80137668
    subi 0, 3, 0x1f
    cmplwi 0, 0x1
    .4byte 0x40810034 # ble .L_80137668
    cmplwi 3, 0x2b
    .4byte 0x4182002C # beq .L_80137668
L_80137640:
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8013766C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 3, 0x58(3)
    subis 0, 3, 0x100
    cmplwi 0, 0x26
    .4byte 0x4182000C # beq .L_80137668
    cmplwi 0, 0x28
    .4byte 0x40820008 # bne .L_8013766C
L_80137668:
    li 29, 0x0
L_8013766C:
    cmpwi 30, 0x0
    .4byte 0x41820024 # beq .L_80137694
    clrlwi. 0, 29, 24
    .4byte 0x4182001C # beq .L_80137694
    .4byte 0x806D9320 # lwz r3, lbl_8053AEE0@sda21(r0)
    mr 5, 30
    lwz 4, 0x4c(31)
    bl fn_80442254
    li 0, 0x16
    stw 0, 0x4c(31)
L_80137694:
    lwz 0, 0x4c(31)
    cmplwi 0, 0x16
    .4byte 0x41810F7C # bgt .L_80138618
    lis 3, jumptable_8049F024@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049F024@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0x806D8F30 # lwz r3, lbl_8053AAF0@sda21(r0)
    lbz 0, 0x78(3)
    cmplwi 0, 0x4
    .4byte 0x41800F54 # blt .L_80138618
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x50(31)
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000F30 # b .L_80138618
    lbz 0, 0x87(31)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_80137710
    li 0, 0x1
    stb 0, 0x87(31)
    .4byte 0x806D91C8 # lwz r3, lbl_8053AD88@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80137710
    bl fn_803A5380
L_80137710:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    .4byte 0x806D91C8 # lwz r3, lbl_8053AD88@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80137728
    bl fn_803A34A0
L_80137728:
    bl fn_803A3484
    cmpwi 3, 0x1
    .4byte 0x41820EE8 # beq .L_80138618
    bl fn_803A3484
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    stw 0, 0x60(31)
    .4byte 0x48000EBC # b .L_80138618
    lwz 0, 0x60(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8013777C
    li 0, 0x1
    stw 0, 0x60(31)
    .4byte 0x806D9210 # lwz r3, lbl_8053ADD0@sda21(r0)
    bl fn_803DF9E8
L_8013777C:
    .4byte 0x806D9210 # lwz r3, lbl_8053ADD0@sda21(r0)
    bl fn_803DF810
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    bl fn_803DAC3C
    cmpwi 3, 0x2
    .4byte 0x41820E84 # beq .L_80138618
    bl fn_803DAC3C
    cmpwi 3, 0x1
    .4byte 0x41820010 # beq .L_801377B0
    bl fn_803DAC3C
    cmpwi 3, 0x6
    .4byte 0x4082002C # bne .L_801377D8
L_801377B0:
    bl fn_803DAC3C
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000028 # b .L_801377FC
L_801377D8:
    bl fn_803DAC3C
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
L_801377FC:
    li 0, 0x0
    stw 0, 0x60(31)
    .4byte 0x48000E14 # b .L_80138618
    lwz 0, 0x60(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80137824
    li 0, 0x1
    stw 0, 0x60(31)
    .4byte 0x806D91F0 # lwz r3, lbl_8053ADB0@sda21(r0)
    bl fn_803CF504
L_80137824:
    .4byte 0x806D91F0 # lwz r3, lbl_8053ADB0@sda21(r0)
    bl fn_803CE9EC
    bl GetRegistryField_0x1a8_OrDefault3
    cmpwi 3, 0x3
    .4byte 0x41820DE4 # beq .L_80138618
    bl GetRegistryField_0x1a8_OrDefault3
    cmpwi 3, 0x1
    .4byte 0x41820010 # beq .L_80137850
    bl GetRegistryField_0x1a8_OrDefault3
    cmpwi 3, 0x6
    .4byte 0x4082002C # bne .L_80137878
L_80137850:
    bl GetRegistryField_0x1a8_OrDefault3
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000028 # b .L_8013789C
L_80137878:
    bl GetRegistryField_0x1a8_OrDefault3
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
L_8013789C:
    li 0, 0x0
    stw 0, 0x60(31)
    .4byte 0x48000D74 # b .L_80138618
    lwz 0, 0x60(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_801378C4
    li 0, 0x1
    stw 0, 0x60(31)
    .4byte 0x806D91D8 # lwz r3, lbl_8053AD98@sda21(r0)
    bl fn_803A86A4
L_801378C4:
    .4byte 0x806D91D8 # lwz r3, lbl_8053AD98@sda21(r0)
    bl fn_803A8600
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    bl GetRegistryField_0xc_OrDefault4
    cmpwi 3, 0x4
    .4byte 0x41820D3C # beq .L_80138618
    bl GetRegistryField_0xc_OrDefault4
    cmpwi 3, 0x1
    .4byte 0x41820010 # beq .L_801378F8
    bl GetRegistryField_0xc_OrDefault4
    cmpwi 3, 0x6
    .4byte 0x4082002C # bne .L_80137920
L_801378F8:
    bl GetRegistryField_0xc_OrDefault4
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000028 # b .L_80137944
L_80137920:
    bl GetRegistryField_0xc_OrDefault4
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
L_80137944:
    li 0, 0x0
    stw 0, 0x60(31)
    .4byte 0x48000CCC # b .L_80138618
    lwz 0, 0x60(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_8013796C
    li 0, 0x1
    stw 0, 0x60(31)
    .4byte 0x806D91D0 # lwz r3, lbl_8053AD90@sda21(r0)
    bl fn_803A7280
L_8013796C:
    .4byte 0x806D91D0 # lwz r3, lbl_8053AD90@sda21(r0)
    bl fn_803A6608
    bl fn_803A65EC
    cmpwi 3, 0x5
    .4byte 0x41820C9C # beq .L_80138618
    bl fn_803A65EC
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000C74 # b .L_80138618
    lwz 0, 0x60(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801379BC
    li 0, 0x1
    stw 0, 0x60(31)
L_801379BC:
    .4byte 0x806D91C0 # lwz r3, lbl_8053AD80@sda21(r0)
    bl fn_803900C8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    bl fn_8039003C
    cmpwi 3, 0x6
    .4byte 0x41820C44 # beq .L_80138618
    li 0, 0x0
    stw 0, 0x60(31)
    stw 0, 0x64(31)
    bl fn_8039003C
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000C10 # b .L_80138618
    lwz 0, 0x60(31)
    cmpwi 0, 0x3
    .4byte 0x418202E8 # beq .L_80137CFC
    .4byte 0x4080001C # bge .L_80137A34
    cmpwi 0, 0x1
    .4byte 0x418200C0 # beq .L_80137AE0
    .4byte 0x40800168 # bge .L_80137B8C
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_80137A44
    .4byte 0x48000328 # b .L_80137D58
L_80137A34:
    cmpwi 0, 0x5
    .4byte 0x41820320 # beq .L_80137D58
    .4byte 0x4080031C # bge .L_80137D58
    .4byte 0x480002FC # b .L_80137D3C
L_80137A44:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80137A60
    li 0, 0x12c
    stw 0, 0x64(31)
    .4byte 0x4800000C # b .L_80137A68
L_80137A60:
    li 0, 0xa
    stw 0, 0x64(31)
L_80137A68:
    lwz 5, 0x60(31)
    lis 4, lbl_8050DB0C@ha
    lis 3, 0x4330
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    addi 0, 5, 0x1
    addi 4, 4, lbl_8050DB0C@l
    stw 0, 0x60(31)
    li 0, 0xff
    .4byte 0xC0029DD4 # lfs f0, lbl_8053CD74@sda21(r0)
    lha 4, 0x60(4)
    stw 3, 0x8(1)
    xoris 3, 4, 0x8000
    stw 3, 0xc(1)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    stfs 1, 0x8c(31)
    stfs 0, 0x90(31)
    stw 0, 0x68(31)
    stw 0, 0x6c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820298 # beq .L_80137D58
    li 0, 0x1
    li 4, 0x23
    stb 0, 0x80(31)
    li 5, -0x1
    lwz 3, 0xa0(31)
    bl fn_80458880
    .4byte 0x4800027C # b .L_80137D58
L_80137AE0:
    lwz 3, 0x64(31)
    subi 0, 3, 0x1
    stw 0, 0x64(31)
    lwz 0, 0x64(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80137B2C
    li 0, 0x28
    stw 0, 0x64(31)
    lwz 3, 0x60(31)
    addi 0, 3, 0x1
    stw 0, 0x60(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80137B2C
    lwz 3, 0xa0(31)
    li 4, 0x24
    li 5, -0x1
    bl fn_80458880
L_80137B2C:
    lfs 4, 0x8c(31)
    .4byte 0xC0629E04 # lfs f3, lbl_8053CDA4@sda21(r0)
    fcmpo cr0, 4, 3
    cror eq, gt, eq
    .4byte 0x4082021C # bne .L_80137D58
    lis 3, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 3, 3, lbl_8050DB0C@l
    stw 0, 0x8(1)
    lha 0, 0x62(3)
    .4byte 0xC8229DB8 # lfd f1, lbl_8053CD58@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC0429E08 # lfs f2, lbl_8053CDA8@sda21(r0)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fdivs 0, 2, 0
    fsubs 0, 4, 0
    stfs 0, 0x8c(31)
    lfs 0, 0x8c(31)
    fcmpo cr0, 0, 3
    .4byte 0x408001D8 # bge .L_80137D58
    stfs 3, 0x8c(31)
    .4byte 0x480001D0 # b .L_80137D58
L_80137B8C:
    lwz 3, 0x64(31)
    subi 0, 3, 0x1
    stw 0, 0x64(31)
    lwz 0, 0x64(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_80137BB8
    li 0, 0x1e
    stw 0, 0x64(31)
    lwz 3, 0x60(31)
    addi 0, 3, 0x1
    stw 0, 0x60(31)
L_80137BB8:
    lwz 3, 0x68(31)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80137BE0
    subi 0, 3, 0xa
    stw 0, 0x68(31)
    lwz 0, 0x68(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80137BE0
    li 0, 0x0
    stw 0, 0x68(31)
L_80137BE0:
    lfs 2, 0x90(31)
    .4byte 0xC0229E04 # lfs f1, lbl_8053CDA4@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810110 # ble .L_80137CFC
    .4byte 0xC0029E0C # lfs f0, lbl_8053CDAC@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x90(31)
    lfs 0, 0x90(31)
    fcmpo cr0, 0, 1
    .4byte 0x408000F8 # bge .L_80137CFC
    stfs 1, 0x90(31)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 29, 0x328c(3)
    bl GetRoomConfigRecord
    lwz 4, 0x34(3)
    cmpwi 4, 0x11
    .4byte 0x418200D8 # beq .L_80137CFC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80137C98
    cmpwi 4, 0x14
    .4byte 0x4182000C # beq .L_80137C48
    cmpwi 4, 0x1e
    .4byte 0x40820020 # bne .L_80137C64
L_80137C48:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(31)
    lwzx 4, 4, 0
    bl fn_80458F04
    .4byte 0x4800009C # b .L_80137CFC
L_80137C64:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(31)
    lwzx 4, 4, 0
    clrlwi 6, 29, 24
    li 5, 0x0
    bl fn_80458FF0
    bl GetRoomConfigRecord
    addi 0, 29, 0x1
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    .4byte 0x48000068 # b .L_80137CFC
L_80137C98:
    cmpwi 4, 0x19
    .4byte 0x41820048 # beq .L_80137CE4
    lbz 0, 0x86(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80137CC8
    lis 4, 0x100
    lwz 3, 0xa0(31)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000038 # b .L_80137CFC
L_80137CC8:
    lis 4, 0x100
    lwz 3, 0xa0(31)
    addi 4, 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x4800001C # b .L_80137CFC
L_80137CE4:
    lis 4, 0x100
    lwz 3, 0xa0(31)
    addi 4, 4, 0x19
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80137CFC:
    lwz 0, 0x60(31)
    cmpwi 0, 0x3
    .4byte 0x40820054 # bne .L_80137D58
    lwz 3, 0x6c(31)
    subi 0, 3, 0x6
    stw 0, 0x6c(31)
    lwz 0, 0x6c(31)
    cmpwi 0, 0x0
    .4byte 0x4181003C # bgt .L_80137D58
    li 0, 0x0
    stw 0, 0x6c(31)
    stw 0, 0x64(31)
    lwz 3, 0x60(31)
    addi 0, 3, 0x1
    stw 0, 0x60(31)
    .4byte 0x48000020 # b .L_80137D58
L_80137D3C:
    li 3, 0x0
    bl fn_8043A0E8
    lwz 3, 0x60(31)
    li 0, 0x0
    addi 3, 3, 0x1
    stw 3, 0x60(31)
    stb 0, 0x80(31)
L_80137D58:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    lwz 3, 0x4(31)
    bl fn_80139D9C
    lwz 3, 0x4(31)
    bl fn_80139D70
    .4byte 0x480008A8 # b .L_80138618
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AEAC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    bl fn_8037AE60
    stw 3, 0x4c(31)
    lwz 0, 0x4c(31)
    cmpwi 0, 0x9
    .4byte 0x41820884 # beq .L_80138618
    cmpwi 0, 0x7
    .4byte 0x4182087C # beq .L_80138618
    li 0, 0x9
    stw 0, 0x4c(31)
    bl fn_8037AE60
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    li 29, 0x0
    stb 0, 0x84(31)
    stw 0, 0x60(31)
L_80137DD4:
    mr 3, 29
    li 4, 0x12
    bl fn_803037D4
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFEC # blt .L_80137DD4
    .4byte 0x4800082C # b .L_80138618
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 3, 0x24f(3)
    bl Table_SetSelfIndexedByte86
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182016C # beq .L_80137F80
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820160 # bne .L_80137F80
    lis 3, lbl_80529DEC@ha
    addi 6, 3, lbl_80529DEC@l
    lwz 7, 0x118(6)
    lwz 8, 0x11c(6)
    cmpwi 7, 0x8
    .4byte 0x4080005C # bge .L_80137E94
    cmpwi 8, 0x4
    .4byte 0x40800054 # bge .L_80137E94
    cmpwi 7, 0x0
    .4byte 0x4180004C # blt .L_80137E94
    cmpwi 7, 0x7
    .4byte 0x41810044 # bgt .L_80137E94
    cmpwi 8, 0x0
    .4byte 0x4180003C # blt .L_80137E94
    cmpwi 8, 0x3
    .4byte 0x41810034 # bgt .L_80137E94
    lis 3, lbl_8050EC80@ha
    slwi 0, 7, 2
    addi 5, 3, lbl_8050EC80@l
    li 3, 0x1
    lwz 4, 0x10(5)
    add 0, 8, 0
    slw 0, 3, 0
    mulli 3, 4, 0xc8
    add 4, 5, 3
    lwz 3, 0x28(4)
    or 0, 3, 0
    stw 0, 0x28(4)
L_80137E94:
    cmpwi 7, 0x8
    .4byte 0x408000B4 # bge .L_80137F4C
    addi 3, 8, 0x1
    cmpwi 3, 0x3
    .4byte 0x40810020 # ble .L_80137EC4
    addi 0, 7, 0x1
    li 3, 0x0
    cmpwi 0, 0x8
    .4byte 0x41800008 # blt .L_80137EBC
    li 0, 0x0
L_80137EBC:
    stw 0, 0x118(6)
    .4byte 0x48000088 # b .L_80137F48
L_80137EC4:
    cmpwi 7, 0x0
    .4byte 0x4082000C # bne .L_80137ED4
    cmpwi 3, 0x2
    .4byte 0x41820074 # beq .L_80137F44
L_80137ED4:
    cmpwi 7, 0x1
    .4byte 0x4082000C # bne .L_80137EE4
    cmpwi 3, 0x2
    .4byte 0x41820064 # beq .L_80137F44
L_80137EE4:
    cmpwi 7, 0x2
    .4byte 0x4082000C # bne .L_80137EF4
    cmpwi 3, 0x2
    .4byte 0x41820054 # beq .L_80137F44
L_80137EF4:
    cmpwi 7, 0x3
    .4byte 0x4082000C # bne .L_80137F04
    cmpwi 3, 0x2
    .4byte 0x41820044 # beq .L_80137F44
L_80137F04:
    cmpwi 7, 0x4
    .4byte 0x4082000C # bne .L_80137F14
    cmpwi 3, 0x2
    .4byte 0x41820034 # beq .L_80137F44
L_80137F14:
    cmpwi 7, 0x5
    .4byte 0x4082000C # bne .L_80137F24
    cmpwi 3, 0x2
    .4byte 0x41820024 # beq .L_80137F44
L_80137F24:
    cmpwi 7, 0x6
    .4byte 0x4082000C # bne .L_80137F34
    cmpwi 3, 0x2
    .4byte 0x41820014 # beq .L_80137F44
L_80137F34:
    cmpwi 7, 0x7
    .4byte 0x40820010 # bne .L_80137F48
    cmpwi 3, 0x1
    .4byte 0x40820008 # bne .L_80137F48
L_80137F44:
    addi 3, 3, 0x1
L_80137F48:
    stw 3, 0x11c(6)
L_80137F4C:
    lis 3, lbl_80529DEC@ha
    li 5, 0x6
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x1
    stb 5, 0x237(3)
    li 4, 0x0
    stw 5, 0x50(31)
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000028 # b .L_80137FA4
L_80137F80:
    li 3, 0xc
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
L_80137FA4:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D644
    .4byte 0x4800066C # b .L_80138618
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    lwz 3, 0x4(31)
    bl fn_80139D9C
    lwz 3, 0x4(31)
    bl fn_80139D70
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D644
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    bl fn_80438E94
    cmpwi 3, 0x7
    .4byte 0x40820050 # bne .L_8013802C
    lwz 3, 0x4(31)
    bl fn_80139BE8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4C0
    li 3, 0xc
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 4, 0x0
    lis 3, lbl_80529DEC@ha
    stb 4, 0x84(31)
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x8
    stb 0, 0x237(3)
    stw 4, 0x60(31)
    .4byte 0x480005F0 # b .L_80138618
L_8013802C:
    cmpwi 3, 0x5
    .4byte 0x408205E8 # bne .L_80138618
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    lwz 3, 0x4(31)
    bl fn_80139D9C
    .4byte 0x806D9308 # lwz r3, lbl_8053AEC8@sda21(r0)
    li 4, 0x0
    bl fn_80438E10
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x1ac(3)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_80138074
    lwz 3, 0xa0(31)
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80138074:
    lis 3, lbl_80529DEC@ha
    li 4, 0x0
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x7
    stb 4, 0x253(3)
    stw 0, 0x4c(31)
    .4byte 0x4800058C # b .L_80138618
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    bl fn_8038D570
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A174
    bl fn_8037A120
    clrlwi 0, 3, 24
    cmplwi 0, 0x7
    .4byte 0x40820098 # bne .L_80138148
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lbz 0, 0x24d(4)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_80138110
    li 0, 0x0
    li 3, 0x7
    stb 0, 0x24d(4)
    li 0, 0x1
    li 4, 0x0
    stw 3, 0x50(31)
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    lis 3, lbl_80529DEC@ha
    li 0, 0x9
    addi 4, 3, lbl_80529DEC@l
    li 3, 0x3
    stw 0, 0x118(4)
    li 0, 0x1
    stw 3, 0x11c(4)
    stb 0, 0x84(31)
    .4byte 0x4800050C # b .L_80138618
L_80138110:
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x50(31)
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4C0
    lwz 3, 0xa0(31)
    li 4, 0xa
    bl fn_80458F9C
    .4byte 0x480004D4 # b .L_80138618
L_80138148:
    bl fn_8037A120
    clrlwi 0, 3, 24
    cmplwi 0, 0x8
    .4byte 0x41820014 # beq .L_80138168
    bl fn_8037A120
    clrlwi 0, 3, 24
    cmplwi 0, 0x9
    .4byte 0x408204B4 # bne .L_80138618
L_80138168:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820184 # beq .L_801382F8
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182012C # beq .L_801382AC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_801381A4
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200F8 # beq .L_80138298
L_801381A4:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_801381C0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200DC # beq .L_80138298
L_801381C0:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_801381DC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200C0 # beq .L_80138298
L_801381DC:
    cmpwi 4, 0x3
    .4byte 0x40820018 # bne .L_801381F8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200A4 # beq .L_80138298
L_801381F8:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_80138214
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820088 # beq .L_80138298
L_80138214:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_80138230
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182006C # beq .L_80138298
L_80138230:
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_8013824C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820050 # beq .L_80138298
L_8013824C:
    cmpwi 4, 0x7
    .4byte 0x40820018 # bne .L_80138268
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_80138298
L_80138268:
    cmpwi 4, 0xa
    .4byte 0x40820018 # bne .L_80138284
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_80138298
L_80138284:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x237(3)
    cmplwi 0, 0x8
    .4byte 0x40820018 # bne .L_801382AC
L_80138298:
    lis 3, lbl_80529DEC@ha
    li 0, 0x7
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x237(3)
    .4byte 0x48000014 # b .L_801382BC
L_801382AC:
    lis 3, lbl_80529DEC@ha
    li 0, 0x6
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x237(3)
L_801382BC:
    li 3, 0x6
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4C0
    lwz 3, 0xa0(31)
    li 4, 0xa
    bl fn_80458F9C
    .4byte 0x48000324 # b .L_80138618
L_801382F8:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x237(3)
    cmplwi 0, 0x8
    .4byte 0x40820010 # bne .L_80138318
    li 0, 0x7
    stb 0, 0x237(3)
    .4byte 0x4800000C # b .L_80138320
L_80138318:
    li 0, 0x6
    stb 0, 0x237(3)
L_80138320:
    li 3, 0x6
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4C0
    lwz 3, 0xa0(31)
    li 4, 0xa
    bl fn_80458F9C
    .4byte 0x480002C0 # b .L_80138618
    bl GetRoomConfigRecord
    bl fn_802DBD60
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000290 # b .L_80138618
    bl GetRoomConfigRecord
    bl fn_802DBD60
    lwz 3, 0xa0(31)
    li 4, 0x38
    li 5, -0x1
    bl fn_80458880
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 29, 0x328c(3)
    bl GetRoomConfigRecord
    lwz 4, 0x34(3)
    cmpwi 4, 0x11
    .4byte 0x418200D8 # beq .L_80138494
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80138430
    cmpwi 4, 0x14
    .4byte 0x4182000C # beq .L_801383E0
    cmpwi 4, 0x1e
    .4byte 0x40820020 # bne .L_801383FC
L_801383E0:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(31)
    lwzx 4, 4, 0
    bl fn_80458F04
    .4byte 0x4800009C # b .L_80138494
L_801383FC:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(31)
    lwzx 4, 4, 0
    clrlwi 6, 29, 24
    li 5, 0x0
    bl fn_80458FF0
    bl GetRoomConfigRecord
    addi 0, 29, 0x1
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    .4byte 0x48000068 # b .L_80138494
L_80138430:
    cmpwi 4, 0x19
    .4byte 0x41820048 # beq .L_8013847C
    lbz 0, 0x86(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80138460
    lis 4, 0x100
    lwz 3, 0xa0(31)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000038 # b .L_80138494
L_80138460:
    lis 4, 0x100
    lwz 3, 0xa0(31)
    addi 4, 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x4800001C # b .L_80138494
L_8013847C:
    lis 4, 0x100
    lwz 3, 0xa0(31)
    addi 4, 4, 0x19
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80138494:
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000160 # b .L_80138618
    bl GetRoomConfigRecord
    bl fn_802DB6F0
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000130 # b .L_80138618
    bl GetRoomConfigRecord
    bl fn_802DA8DC
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000100 # b .L_80138618
    bl GetRoomConfigRecord
    bl fn_802DA788
    li 0, 0x12
    stw 0, 0x4c(31)
    .4byte 0x480000EC # b .L_80138618
    bl GetRoomConfigRecord
    bl fn_802DA630
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80138550
    li 3, 0x4
    li 0, 0x7
    stw 3, 0x58(31)
    stw 0, 0x4c(31)
L_80138550:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    lwz 3, 0x4(31)
    bl fn_80139D9C
    .4byte 0x480000B8 # b .L_80138618
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    lwz 3, 0x4(31)
    bl fn_80139D9C
    bl GetRoomConfigRecord
    bl fn_802DA010
    li 3, 0x7
    li 0, 0x1
    stw 3, 0x50(31)
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000078 # b .L_80138618
    bl GetRoomConfigRecord
    bl fn_802DA000
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801385C4
    li 3, 0x4
    li 0, 0x7
    stw 3, 0x58(31)
    stw 0, 0x4c(31)
L_801385C4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBE0
    lwz 3, 0x4(31)
    bl fn_80139D9C
    .4byte 0x48000044 # b .L_80138618
    .4byte 0x806D9320 # lwz r3, lbl_8053AEE0@sda21(r0)
    bl fn_80441A1C
    cmpwi 3, 0x1
    .4byte 0x40820030 # bne .L_80138614
    stw 3, 0x50(31)
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    stw 0, 0x60(31)
    stw 0, 0x64(31)
    .4byte 0x48000008 # b .L_80138618
L_80138614:
    stw 3, 0x4c(31)
L_80138618:
    lwz 0, 0x58(31)
    cmpwi 0, 0x2
    .4byte 0x4082039C # bne .L_801389BC
    li 0, 0x4
    stw 0, 0x58(31)
    .4byte 0x48000390 # b .L_801389BC
L_80138630:
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_80138664
    cmplwi 3, 0x1
    .4byte 0x40820018 # bne .L_80138654
    lwz 4, 0x50(31)
    mr 3, 31
    bl fn_80135A04
    li 0, 0x2
    stb 0, 0xfd(31)
L_80138654:
    lwz 4, 0x50(31)
    mr 3, 31
    bl fn_80135494
    .4byte 0x4800035C # b .L_801389BC
L_80138664:
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8B4
    clrlwi. 0, 3, 24
    .4byte 0x4182034C # beq .L_801389BC
    lwz 0, 0x58(31)
    cmpwi 0, 0x1
    .4byte 0x40820068 # bne .L_801386E4
    li 0, 0x0
    sth 0, 0x7c(31)
    lwz 0, 0x4c(31)
    cmpwi 0, 0x9
    .4byte 0x41820018 # beq .L_801386A8
    cmpwi 0, 0x16
    .4byte 0x41820010 # beq .L_801386A8
    lbz 0, 0x84(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801386C0
L_801386A8:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801386B8
    bl fn_80139BE8
L_801386B8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B4C0
L_801386C0:
    lwz 4, 0x50(31)
    mr 3, 31
    bl fn_80135A04
    li 0, 0x8
    mr 3, 31
    stw 0, 0x58(31)
    lwz 4, 0x50(31)
    bl fn_80135494
    .4byte 0x480002DC # b .L_801389BC
L_801386E4:
    cmpwi 0, 0x8
    .4byte 0x40820014 # bne .L_801386FC
    lwz 4, 0x50(31)
    mr 3, 31
    bl fn_80135494
    .4byte 0x480002C4 # b .L_801389BC
L_801386FC:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_80138710
    li 0, 0x4
    stw 0, 0x58(31)
    .4byte 0x480002B0 # b .L_801389BC
L_80138710:
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_80138724
    li 0, 0x0
    stw 0, 0x58(31)
    .4byte 0x4800029C # b .L_801389BC
L_80138724:
    cmpwi 0, 0x5
    .4byte 0x40820048 # bne .L_80138770
    lwz 3, 0xa0(31)
    li 4, 0xa
    bl fn_80458F9C
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DB0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80138758
    lwz 3, 0xa0(31)
    li 4, 0x0
    bl fn_804595E4
    .4byte 0x48000010 # b .L_80138764
L_80138758:
    lwz 3, 0xa0(31)
    li 4, 0x1
    bl fn_804595E4
L_80138764:
    li 0, 0x6
    stw 0, 0x58(31)
    .4byte 0x48000250 # b .L_801389BC
L_80138770:
    cmpwi 0, 0x6
    .4byte 0x40820024 # bne .L_80138798
    lwz 3, 0xa0(31)
    bl fn_8045959C
    clrlwi 0, 3, 24
    cmplwi 0, 0x2
    .4byte 0x40820234 # bne .L_801389BC
    li 0, 0x7
    stw 0, 0x58(31)
    .4byte 0x48000228 # b .L_801389BC
L_80138798:
    cmpwi 0, 0x7
    .4byte 0x40820220 # bne .L_801389BC
    lis 3, lbl_80529DEC@ha
    li 0, 0xa5
    addi 4, 3, lbl_80529DEC@l
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    stb 0, 0x21b(4)
    bl fn_802B1DB0
    clrlwi. 0, 3, 24
    .4byte 0x418201EC # beq .L_801389A8
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_801387F8
    bl fn_80139BE8
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801387F0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801387F0:
    li 0, 0x0
    stw 0, 0x4(31)
L_801387F8:
    lwz 3, 0x1c(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80138824
    .4byte 0x41820018 # beq .L_8013881C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013881C:
    li 0, 0x0
    stw 0, 0x1c(31)
L_80138824:
    lwz 3, 0x28(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80138850
    .4byte 0x41820018 # beq .L_80138848
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138848:
    li 0, 0x0
    stw 0, 0x28(31)
L_80138850:
    lwz 3, 0x24(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8013887C
    .4byte 0x41820018 # beq .L_80138874
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138874:
    li 0, 0x0
    stw 0, 0x24(31)
L_8013887C:
    lwz 3, 0x2c(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801388A8
    .4byte 0x41820018 # beq .L_801388A0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801388A0:
    li 0, 0x0
    stw 0, 0x2c(31)
L_801388A8:
    lwz 3, 0x30(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801388D4
    .4byte 0x41820018 # beq .L_801388CC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801388CC:
    li 0, 0x0
    stw 0, 0x30(31)
L_801388D4:
    lwz 3, 0x20(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80138900
    .4byte 0x41820018 # beq .L_801388F8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801388F8:
    li 0, 0x0
    stw 0, 0x20(31)
L_80138900:
    lwz 0, 0x20(31)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80138954
    lwz 3, 0x98(31)
    li 4, 0x1
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x158
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013893C
    bl fn_803A59E0
    mr 0, 3
L_8013893C:
    stw 0, 0x20(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
    li 0, 0x0
    stb 0, 0x87(31)
L_80138954:
    lwz 3, 0xa0(31)
    bl fn_80459508
    li 0, 0x1
    li 3, 0x0
    stw 0, 0x4c(31)
    li 0, 0x2
    stw 3, 0x60(31)
    stw 3, 0x64(31)
    stw 0, 0x58(31)
    bl fn_8013C824
    lwz 3, 0xc(3)
    bl fn_800EC188
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1DE8
    lis 3, fn_80139994@ha
    li 4, 0x0
    addi 0, 3, fn_80139994@l
    .4byte 0x988D8D91 # stb r4, lbl_8053A951@sda21(r0)
    .4byte 0x900D8D7C # stw r0, lbl_8053A93C@sda21(r0)
    .4byte 0x908D8D80 # stw r4, lbl_8053A940@sda21(r0)
    .4byte 0x48000018 # b .L_801389BC
L_801389A8:
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_802B1BE0
L_801389BC:
    lwz 3, 0xa0(31)
    bl fn_80459674
    lbz 0, 0x95(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_801389E4
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x95(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458658
L_801389E4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BBBC
    lwz 3, 0xc(31)
    bl fn_80304FB0
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

# fn_80138A30() -> int - "how many of the CURRENT SCENE OBJECT's 4
# completion-flag bits (lbl_8053AAF8->0x82, bits 0-3) are set?" - a simple
# popcount over a fixed 4-bit range, parameterless (reads the global
# directly, not `this`).
fn_80138A30:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    li 4, 0x1
    li 3, 0x0
    slw 0, 4, 0
    lbz 5, 0x82(6)
    clrlwi 0, 0, 24
    and. 0, 5, 0
    .4byte 0x41820008 # beq .L_80138A58
    li 3, 0x1
L_80138A58:
    li 0, 0x1
    lbz 5, 0x82(6)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 5, 0
    .4byte 0x41820008 # beq .L_80138A74
    addi 3, 3, 0x1
L_80138A74:
    li 0, 0x2
    lbz 5, 0x82(6)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 5, 0
    .4byte 0x41820008 # beq .L_80138A90
    addi 3, 3, 0x1
L_80138A90:
    li 0, 0x3
    lbz 5, 0x82(6)
    slw 0, 4, 0
    clrlwi 0, 0, 24
    and. 0, 5, 0
    beqlr
    addi 3, 3, 0x1
    blr

# fn_80138AB0() -> bool - checks whether ALL 4 module slots (0-3) report
# ready via fn_8030AAF4(i)+fn_8030A308(registry, id) - branches on the
# CURRENT SCENE OBJECT's ->0x7f byte to pick between 2 equivalent
# all-4-ready checks (same predicate, different call ordering - likely an
# inlining/optimization artifact from 2 near-identical source call sites).
fn_80138AB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082007C # bne .L_80138B44
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_80138B68
    li 3, 0x1
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80138B68
    li 3, 0x2
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_80138B68
    li 3, 0x3
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80138B68
    li 3, 0x1
    .4byte 0x4800002C # b .L_80138B6C
L_80138B44:
    li 3, 0x0
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80138B68
    li 3, 0x1
    .4byte 0x48000008 # b .L_80138B6C
L_80138B68:
    li 3, 0x0
L_80138B6C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_80138B7C(this) - fires ONE effect/sound cue appropriate to the current
# loading-flavor state, keyed the same way as fn_80137300's spinner sub-
# state-machine (table `lbl_804652F0` indexed by a value from GetRoomConfigRecord,
# dispatching between fn_80458F04/fn_80458FF0/fn_80458FF0-with-3-fixed-
# codes depending on the CURRENT SCENE OBJECT's ->0x7f/state). A
# standalone extraction of that exact same cue-firing logic, likely called
# from a different site than fn_80137300's main loop (not yet identified).
fn_80138B7C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lwz 31, 0x328c(3)
    bl GetRoomConfigRecord
    lwz 4, 0x34(3)
    cmpwi 4, 0x11
    .4byte 0x418200D8 # beq .L_80138C84
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_80138C20
    cmpwi 4, 0x14
    .4byte 0x4182000C # beq .L_80138BD0
    cmpwi 4, 0x1e
    .4byte 0x40820020 # bne .L_80138BEC
L_80138BD0:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(30)
    lwzx 4, 4, 0
    bl fn_80458F04
    .4byte 0x4800009C # b .L_80138C84
L_80138BEC:
    lis 3, lbl_804652F0@ha
    slwi 0, 4, 2
    addi 4, 3, lbl_804652F0@l
    lwz 3, 0xa0(30)
    lwzx 4, 4, 0
    clrlwi 6, 31, 24
    li 5, 0x0
    bl fn_80458FF0
    bl GetRoomConfigRecord
    addi 0, 31, 0x1
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    .4byte 0x48000068 # b .L_80138C84
L_80138C20:
    cmpwi 4, 0x19
    .4byte 0x41820048 # beq .L_80138C6C
    lbz 0, 0x86(30)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_80138C50
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x48000038 # b .L_80138C84
L_80138C50:
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0xd
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x4800001C # b .L_80138C84
L_80138C6C:
    lis 4, 0x100
    lwz 3, 0xa0(30)
    addi 4, 4, 0x19
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80138C84:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_80138C9C(this) - the scene manager's "begin a fresh load" setup: this
# is the exact function `main()` calls right after allocating a new
# 0x11c-byte object and assigning it to `lbl_8053AAF8` (see main()'s own
# banner in extab_801344c0.s) - i.e. from main()'s perspective, THIS is
# "the constructor." It doesn't itself allocate this->0xa0/0x10 (used but
# not created here), so it may instead be a post-construction "Init"/
# "BeginLoad" step chained by whatever `fn_80084370` does internally - not
# fully resolved which framing is more accurate, flagging honestly rather
# than asserting either.
#
# Sets this->0xa0's own +0x5 byte to 4, calls fn_8013BE04(lbl_8053AB10)
# (the confirmed cutscene manager) and fn_802ACB58(this->0x10), 4 more
# top-level-manager-style calls (fn_80119DD0/fn_80119D48/fn_8011921C/
# fn_801190E4 - unclear if virtual or direct), zeroes ~10 fields
# (this->0x5c/0x94/0x96/0x10c/0x108/0x58), and does 2 boot-config-driven
# one-time checks (comparing boot-config bytes at ->0x21a/->0x21b against
# magic values 0xa7/0xa5 - looks like a "first-run vs returning" latch,
# each branch committing a specific state via the confirmed queue). Ends
# by zeroing this->0x60/0x64/0x68/0x70/0x80/0x81/0x82/0x83/0xff, setting
# this->0x7e/0x7f=1 (2 flag bytes read pervasively throughout this class -
# `this->0x7f` in particular gates dozens of branches elsewhere, e.g.
# fn_80135A04/fn_80136828/fn_80137300 - so THIS is where that flag turns
# on), stepping the CONFIRMED global PRNG once, and formatting 2 UI
# strings via fn_8009F0D0+strcpy (same idiom as fn_80136828).
fn_80138C9C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x4
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 3, 0xa0(3)
    stb 0, 0x5(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013BE04
    lwz 3, 0x10(31)
    bl fn_802ACB58
    bl fn_80119DD0
    bl fn_80119D48
    bl fn_8011921C
    bl fn_801190E4
    li 0, 0x0
    lis 3, lbl_80529DEC@ha
    stw 0, 0x5c(31)
    addi 30, 3, lbl_80529DEC@l
    stb 0, 0x94(31)
    stb 0, 0x96(31)
    stw 0, 0x10c(31)
    stw 0, 0x108(31)
    stw 0, 0x58(31)
    lbz 0, 0x21a(30)
    cmplwi 0, 0xa7
    .4byte 0x41820018 # beq .L_80138D24
    li 3, 0xa7
    li 0, 0x1
    stb 3, 0x21a(30)
    stw 0, 0x4c(31)
    .4byte 0x48000064 # b .L_80138D84
L_80138D24:
    lbz 0, 0x21b(30)
    cmplwi 0, 0xa5
    .4byte 0x41820030 # beq .L_80138D5C
    li 3, 0x1
    li 0, 0x2
    stb 3, 0x249(30)
    li 4, 0x0
    stw 0, 0x50(31)
    stw 3, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
    .4byte 0x48000024 # b .L_80138D7C
L_80138D5C:
    li 0, 0x1
    li 4, 0x0
    stw 0, 0x50(31)
    stw 0, 0x58(31)
    .4byte 0x806D90E0 # lwz r3, lbl_8053ACA0@sda21(r0)
    bl fn_802AC8AC
    li 0, 0x0
    stb 0, 0x84(31)
L_80138D7C:
    li 0, 0x0
    stb 0, 0x21b(30)
L_80138D84:
    li 9, 0x0
    lis 4, 0x12d
    stw 9, 0x60(31)
    lis 3, 0x19
    addi 6, 4, 0x5da0
    li 8, 0x1
    stw 9, 0x64(31)
    addi 0, 3, 0x660d
    .4byte 0xC0229DDC # lfs f1, lbl_8053CD7C@sda21(r0)
    addi 3, 31, 0xc8
    stw 9, 0x68(31)
    li 4, 0x42
    .4byte 0xC0029E04 # lfs f0, lbl_8053CDA4@sda21(r0)
    li 5, 0x0
    stw 6, 0xb4(31)
    li 6, 0x0
    .4byte 0xC0429E08 # lfs f2, lbl_8053CDA8@sda21(r0)
    li 7, 0x0
    stw 9, 0x70(31)
    stb 9, 0x80(31)
    stb 9, 0x81(31)
    stb 8, 0x7e(31)
    stb 8, 0x7f(31)
    stb 9, 0x82(31)
    stb 9, 0x83(31)
    stb 9, 0xff(31)
    stfs 1, 0xf0(31)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 8, 0xb4(9)
    mullw 8, 8, 0
    addis 8, 8, 0x3c6f
    subi 0, 8, 0xca1
    stw 0, 0xb4(9)
    lwz 0, 0xb4(9)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlwi 0, 0, 31
    stb 0, 0x86(31)
    bl fn_803832BC
    stfs 1, 0xf4(31)
    lwz 3, 0xc4(31)
    bl fn_8009F0D0
    addi 4, 31, 0xc8
    bl strcpy
    lwz 3, 0xc0(31)
    bl fn_8009F0D0
    addi 4, 31, 0xc8
    bl strcpy
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

# fn_80138E78(this, doFullDestroy) - THE SCENE MANAGER'S REAL DESTRUCTOR.
# Resets this->vtable to lbl_8049EF20 (matching fn_80139300's assignment -
# confirms these two functions are the ctor/dtor pair for this class).
# Releases the DVD-status resources (matching fn_80137300/main()'s own
# per-frame DVD bookkeeping), conditionally chains dtor_80084580(this->
# 0x104) if that field is set, then virtual-destroys (`+0x8`, arg=1) and
# nulls EVERY one of this class's ~15 member sub-object fields
# (this->0x4/0x8/0xc/0x10/0x18/0x1c/0x20/0x24/0x28/0x2c/0x30/0x34/0x38/
# 0x3c/0x40) - the exact same field set fn_80139300 constructs, confirming
# the ctor/dtor pairing field-for-field. Also flushes 4 boot-config-struct
# sub-objects via fn_8007A298 (this->0x24/0x38/0x40/0x44 read off the boot
# config, not `this`) and makes 3 more top-level-manager vtable calls
# (`+0xc`, on this->0xa4/0xa8 and the boot-config's ->0x20). Finally
# releases this->0x98 (the cached resource-manager handle) and
# conditionally chains dtor_80084580(this) itself if `doFullDestroy` is
# truthy.
fn_80138E78:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr. 31, 3
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    .4byte 0x41820448 # beq .L_801392E0
    lis 4, lbl_8049EF20@ha
    li 3, 0x0
    addi 0, 4, lbl_8049EF20@l
    stw 0, 0x0(31)
    bl fn_8008E328
    li 0, 0x0
    mr 29, 3
    stw 0, 0x10c(31)
    li 4, 0x0
    stw 0, 0x108(31)
    lha 3, 0x7c(3)
    bl fn_8008DF30
    lha 4, 0x7c(29)
    addi 3, 29, 0x68
    bl fn_8008E2B8
    lwz 3, 0x104(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80138EE8
    bl dtor_80084580
L_80138EE8:
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80138F14
    .4byte 0x41820018 # beq .L_80138F0C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138F0C:
    li 0, 0x0
    stw 0, 0x4(31)
L_80138F14:
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80138F34
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138F34:
    li 0, 0x0
    stw 0, 0x18(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80138F5C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138F5C:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80138F7C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138F7C:
    lwz 3, 0xc(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80138F9C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138F9C:
    lwz 3, 0x10(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80138FBC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138FBC:
    lwz 3, 0x20(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80138FE8
    .4byte 0x41820018 # beq .L_80138FE0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80138FE0:
    li 0, 0x0
    stw 0, 0x20(31)
L_80138FE8:
    lwz 3, 0x28(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80139014
    .4byte 0x41820018 # beq .L_8013900C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013900C:
    li 0, 0x0
    stw 0, 0x28(31)
L_80139014:
    lwz 3, 0x24(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80139040
    .4byte 0x41820018 # beq .L_80139038
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139038:
    li 0, 0x0
    stw 0, 0x28(31)
L_80139040:
    lwz 3, 0x2c(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_8013906C
    .4byte 0x41820018 # beq .L_80139064
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139064:
    li 0, 0x0
    stw 0, 0x2c(31)
L_8013906C:
    lwz 3, 0x30(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80139098
    .4byte 0x41820018 # beq .L_80139090
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139090:
    li 0, 0x0
    stw 0, 0x30(31)
L_80139098:
    lwz 3, 0x1c(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_801390C4
    .4byte 0x41820018 # beq .L_801390BC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801390BC:
    li 0, 0x0
    stw 0, 0x1c(31)
L_801390C4:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x24(3)
    bl fn_8007A298
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x38(3)
    bl fn_8007A298
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x40(3)
    bl fn_8007A298
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x44(3)
    bl fn_8007A298
    lwz 3, 0x34(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80139124
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139124:
    li 0, 0x0
    stw 0, 0x34(31)
    lwz 3, 0x38(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013914C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013914C:
    li 0, 0x0
    stw 0, 0x38(31)
    lwz 3, 0x3c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80139174
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139174:
    li 0, 0x0
    stw 0, 0x3c(31)
    lwz 3, 0x40(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8013919C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8013919C:
    li 0, 0x0
    stw 0, 0x40(31)
    lwz 3, 0xa4(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0xa8(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x20(3)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    bl fn_803007A0
    lwz 29, 0xa0(31)
    cmplwi 29, 0x0
    .4byte 0x4182002C # beq .L_80139220
    addic. 0, 29, 0x84
    .4byte 0x4182000C # beq .L_80139208
    addi 3, 29, 0x84
    bl fn_80025474
L_80139208:
    addic. 0, 29, 0x80
    .4byte 0x4182000C # beq .L_80139218
    addi 3, 29, 0x80
    bl fn_80025474
L_80139218:
    mr 3, 29
    bl dtor_80084580
L_80139220:
    lwz 3, 0x9c(31)
    bl fn_8008383C
    lwz 3, 0xb8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80139248
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139248:
    li 0, 0x0
    stw 0, 0xb8(31)
    lwz 3, 0xbc(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80139270
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139270:
    li 0, 0x0
    stw 0, 0xbc(31)
    lwz 3, 0xc0(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80139298
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80139298:
    li 0, 0x0
    stw 0, 0xc0(31)
    lwz 3, 0xc4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801392C0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_801392C0:
    li 0, 0x0
    stw 0, 0xc4(31)
    lwz 3, 0x98(31)
    bl fn_8008383C
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_801392E0
    mr 3, 31
    bl dtor_80084580
L_801392E0:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

# fn_80139300(this) - THE SCENE MANAGER'S REAL CONSTRUCTOR (paired with
# fn_80138E78's destructor - see that banner for the field-by-field
# confirmation). Chains to a base setup fn_80093338(this+0xb4) (note:
# this+0xb4 is the SAME offset as the confirmed global-PRNG field -
# suggests the base class itself owns a small RNG-seed-shaped sub-object,
# or this base ctor is what seeds this->0xb4 initially), sets its own
# vtable to lbl_8049EF20, and - CRITICALLY - assigns itself to the
# CURRENT-SCENE-OBJECT global: `lbl_8053AAF8 = this`. Copies 5 manager
# pointers in from the boot-config struct (lbl_80529DEC->0x4/0x8/0xc/0x14/
# 0x1c into this->0x9c/0x98/0xa0/0xa4/0xa8), then closes/reopens the
# cached resource manager (fn_8008382C(this->0x98)) before allocating its
# ~11 member sub-objects one at a time via fn_8008440C(size,...) with a
# per-slot fallback constructor if the pooled allocation misses (sizes/
# ctors: 0x158/fn_8038DA00->this->0x18, 0x3c/fn_8013BFEC->lbl_8053AB10
# [**THIS creates the confirmed shared camera/cutscene-manager singleton**
# for the whole game], 0x24/fn_802ACBE8->this->0x10, 0x28/fn_803DA8FC->
# this->0x34, 0x14/fn_8044243C->this->0x38, 0xf0/fn_80440FDC->this->0x3c,
# and one more at 0xf0/fn_80431D84->this->0x40). Zeroes ~20 more fields to
# their default states (this->0xac/0xb0/0x4/0x1c/0x28/0x24/0x2c/0x30/0xfd/
# 0x84/0x54/0x85/0x74/0x78/0x86/0x88/0x94/0x95/0x96/0x10c/0x108/0x7c).
#
# Allocates 2 more UI-element sub-objects (0x158 bytes each, this->0x20
# and this->0xb8/0xc0 style handles) with fallback ctors fn_803A59E0/
# fn_80097800, builds two "TIMG"-coded (4-char literal 0x5449 0x4d47 =
# "TIMG", suffixed with a per-slot byte 0x31/0x32) UI-panel objects via
# fn_804030C4/fn_8009E648 (screen-space rect construction from float
# constants), registers this class's OWN device-detection idle callback
# by storing `fn_80134C04` (the very first function landed in this
# core-systems gap!) via fn_8008C484/fn_8008C494 - confirming that
# function really is periodic idle-time work driven by this scene manager.
fn_80139300:
    stwu 1, -0xa0(1)
    mflr 0
    lis 4, lbl_8049EF20@ha
    stw 0, 0xa4(1)
    addi 0, 4, lbl_8049EF20@l
    li 4, 0x0
    stw 31, 0x9c(1)
    mr 31, 3
    lis 3, lbl_804652F0@ha
    stw 30, 0x98(1)
    addi 30, 3, lbl_804652F0@l
    addi 3, 31, 0xb4
    stw 29, 0x94(1)
    stw 0, 0x0(31)
    bl fn_80093338
    lis 3, lbl_80529DEC@ha
    .4byte 0x93ED8F38 # stw r31, lbl_8053AAF8@sda21(r0)
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x4(3)
    stw 0, 0x9c(31)
    lwz 0, 0x8(3)
    stw 0, 0x98(31)
    lwz 0, 0xc(3)
    stw 0, 0xa0(31)
    lwz 0, 0x14(3)
    stw 0, 0xa4(31)
    lwz 0, 0x1c(3)
    stw 0, 0xa8(31)
    lwz 3, 0x98(31)
    bl fn_8008382C
    lwz 4, 0x98(31)
    li 3, 0x158
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80139398
    bl fn_8038DA00
    mr 0, 3
L_80139398:
    stw 0, 0x18(31)
    li 3, 0x3c
    li 5, 0x0
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_801393C0
    lwz 4, 0x98(31)
    bl fn_8013BFEC
    mr 0, 3
L_801393C0:
    lis 3, lbl_80529DEC@ha
    .4byte 0x900D8F50 # stw r0, lbl_8053AB10@sda21(r0)
    addi 4, 3, lbl_80529DEC@l
    li 3, 0x1c
    lwz 0, 0x5c(4)
    li 5, 0x0
    stw 0, 0x8(31)
    lwz 0, 0x60(4)
    stw 0, 0xc(31)
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_801393FC
    bl fn_802ACBE8
    mr 0, 3
L_801393FC:
    stw 0, 0x10(31)
    li 3, 0x24
    li 5, 0x0
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80139420
    bl fn_803DA8FC
    mr 0, 3
L_80139420:
    stw 0, 0x34(31)
    li 3, 0x28
    li 5, 0x0
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80139444
    bl fn_8044243C
    mr 0, 3
L_80139444:
    stw 0, 0x38(31)
    li 3, 0x14
    li 5, 0x0
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80139468
    bl fn_80440FDC
    mr 0, 3
L_80139468:
    stw 0, 0x3c(31)
    li 3, 0xf0
    li 5, 0x0
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013948C
    bl fn_80431D84
    mr 0, 3
L_8013948C:
    stw 0, 0x40(31)
    li 0, 0x0
    li 4, 0x1
    stw 0, 0xac(31)
    stw 0, 0xb0(31)
    stw 0, 0x4(31)
    stw 0, 0x1c(31)
    stw 0, 0x28(31)
    stw 0, 0x24(31)
    stw 0, 0x2c(31)
    stw 0, 0x30(31)
    stb 0, 0xfd(31)
    stb 0, 0x84(31)
    stw 0, 0x54(31)
    stb 0, 0x85(31)
    stw 0, 0x74(31)
    stw 0, 0x78(31)
    stb 0, 0x86(31)
    stb 0, 0x88(31)
    stb 0, 0x94(31)
    stb 0, 0x95(31)
    stb 0, 0x96(31)
    stw 0, 0x10c(31)
    stw 0, 0x108(31)
    sth 0, 0x7c(31)
    lwz 3, 0x98(31)
    bl fn_80083A94
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x158
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013951C
    bl fn_803A59E0
    mr 0, 3
L_8013951C:
    stw 0, 0x20(31)
    mr 4, 29
    lwz 3, 0x98(31)
    bl fn_80083A94
    li 0, 0x0
    lis 3, 0x5449
    stb 0, 0x87(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x5e8
    bl fn_804030C4
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x168
    li 5, 0x0
    bl fn_8008440C
    mr. 7, 3
    .4byte 0x41820010 # beq .L_8013956C
    mr 4, 29
    bl fn_80097800
    mr 7, 3
L_8013956C:
    li 0, 0x0
    li 6, 0xff
    li 3, 0xd2
    stb 6, 0x30(1)
    addi 4, 1, 0x3c
    addi 5, 1, 0x34
    stb 3, 0x31(1)
    stb 0, 0x32(1)
    stb 6, 0x33(1)
    stb 0, 0x38(1)
    lwz 3, 0x30(1)
    stw 7, 0xb8(31)
    stb 0, 0x39(1)
    stb 0, 0x3a(1)
    stb 0, 0x3b(1)
    lwz 0, 0x38(1)
    stw 3, 0x34(1)
    stw 0, 0x3c(1)
    lwz 3, 0xb8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5449
    addi 4, 3, 0x4d47
    .4byte 0x38A29E10 # li r5, lbl_8053CDB0@sda21
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lwz 4, 0x98(31)
    mr 29, 3
    li 3, 0x168
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_80139614
    mr 4, 29
    bl fn_80097800
    mr 0, 3
L_80139614:
    stw 0, 0xbc(31)
    bl fn_80021840
    cmpwi 3, 0x2
    .4byte 0x40820138 # bne .L_80139758
    lwz 4, 0x98(31)
    li 3, 0x138
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820080 # beq .L_801396B8
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lis 4, 0x4558
    stw 0, 0x80(1)
    lwz 5, 0x4(5)
    li 0, 0x0
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    addi 6, 4, 0x5431
    lhz 4, 0x4(5)
    addi 7, 1, 0x70
    .4byte 0xC0A29DF0 # lfs f5, lbl_8053CD90@sda21(r0)
    addi 8, 30, 0x5f8
    xoris 4, 4, 0x8000
    .4byte 0xC0829E18 # lfs f4, lbl_8053CDB8@sda21(r0)
    stw 4, 0x84(1)
    addi 9, 31, 0xc8
    .4byte 0xC0029DE0 # lfs f0, lbl_8053CD80@sda21(r0)
    li 5, 0x54
    lfd 1, 0x80(1)
    li 10, 0x28
    .4byte 0xC0629DEC # lfs f3, lbl_8053CD8C@sda21(r0)
    fsubs 1, 1, 2
    stfs 5, 0x70(1)
    stfs 4, 0x74(1)
    fadds 1, 3, 1
    stfs 0, 0x7c(1)
    stfs 1, 0x78(1)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8009E648
    mr 0, 3
L_801396B8:
    stw 0, 0xc0(31)
    li 3, 0x138
    li 5, 0x0
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820080 # beq .L_80139750
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lis 4, 0x4558
    stw 0, 0x80(1)
    lwz 5, 0x4(5)
    li 0, 0x0
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    addi 6, 4, 0x5432
    lhz 4, 0x4(5)
    addi 7, 1, 0x60
    .4byte 0xC0A29DE4 # lfs f5, lbl_8053CD84@sda21(r0)
    addi 8, 30, 0x5f8
    xoris 4, 4, 0x8000
    .4byte 0xC0829E1C # lfs f4, lbl_8053CDBC@sda21(r0)
    stw 4, 0x84(1)
    addi 9, 31, 0xc8
    .4byte 0xC0029DE0 # lfs f0, lbl_8053CD80@sda21(r0)
    li 5, 0x54
    lfd 1, 0x80(1)
    li 10, 0x28
    .4byte 0xC0629DEC # lfs f3, lbl_8053CD8C@sda21(r0)
    fsubs 1, 1, 2
    stfs 5, 0x60(1)
    stfs 4, 0x64(1)
    fadds 1, 3, 1
    stfs 0, 0x6c(1)
    stfs 1, 0x68(1)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8009E648
    mr 0, 3
L_80139750:
    stw 0, 0xc4(31)
    .4byte 0x48000134 # b .L_80139888
L_80139758:
    lwz 4, 0x98(31)
    li 3, 0x138
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820080 # beq .L_801397EC
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lis 4, 0x4558
    stw 0, 0x80(1)
    lwz 5, 0x4(5)
    li 0, 0x0
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    addi 6, 4, 0x5431
    lhz 4, 0x4(5)
    addi 7, 1, 0x50
    .4byte 0xC0A29DF0 # lfs f5, lbl_8053CD90@sda21(r0)
    addi 8, 30, 0x60c
    xoris 4, 4, 0x8000
    .4byte 0xC0829E18 # lfs f4, lbl_8053CDB8@sda21(r0)
    stw 4, 0x84(1)
    addi 9, 31, 0xc8
    .4byte 0xC0029DE0 # lfs f0, lbl_8053CD80@sda21(r0)
    li 5, 0x54
    lfd 1, 0x80(1)
    li 10, 0x28
    .4byte 0xC0629DEC # lfs f3, lbl_8053CD8C@sda21(r0)
    fsubs 1, 1, 2
    stfs 5, 0x50(1)
    stfs 4, 0x54(1)
    fadds 1, 3, 1
    stfs 0, 0x5c(1)
    stfs 1, 0x58(1)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8009E648
    mr 0, 3
L_801397EC:
    stw 0, 0xc0(31)
    li 3, 0x138
    li 5, 0x0
    lwz 4, 0x98(31)
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820080 # beq .L_80139884
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    lis 4, 0x4558
    stw 0, 0x80(1)
    lwz 5, 0x4(5)
    li 0, 0x0
    .4byte 0xC8429DB8 # lfd f2, lbl_8053CD58@sda21(r0)
    addi 6, 4, 0x5432
    lhz 4, 0x4(5)
    addi 7, 1, 0x40
    .4byte 0xC0A29DE4 # lfs f5, lbl_8053CD84@sda21(r0)
    addi 8, 30, 0x60c
    xoris 4, 4, 0x8000
    .4byte 0xC0829E1C # lfs f4, lbl_8053CDBC@sda21(r0)
    stw 4, 0x84(1)
    addi 9, 31, 0xc8
    .4byte 0xC0029DE0 # lfs f0, lbl_8053CD80@sda21(r0)
    li 5, 0x54
    lfd 1, 0x80(1)
    li 10, 0x28
    .4byte 0xC0629DEC # lfs f3, lbl_8053CD8C@sda21(r0)
    fsubs 1, 1, 2
    stfs 5, 0x40(1)
    stfs 4, 0x44(1)
    fadds 1, 3, 1
    stfs 0, 0x4c(1)
    stfs 1, 0x48(1)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    bl fn_8009E648
    mr 0, 3
L_80139884:
    stw 0, 0xc4(31)
L_80139888:
    lis 4, 0xffff
    lis 3, 0x5050
    addi 6, 4, 0x50ff
    addi 4, 1, 0x2c
    addi 0, 3, 0x2800
    stw 6, 0x24(1)
    addi 5, 1, 0x24
    stw 0, 0x2c(1)
    lwz 3, 0xc0(31)
    stw 6, 0x20(1)
    lwz 12, 0x0(3)
    stw 0, 0x28(1)
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    li 6, 0xff
    lwz 7, 0xc4(31)
    stw 6, 0x1c(1)
    li 0, 0x0
    addi 3, 30, 0x620
    lbz 5, 0x1c(1)
    stw 6, 0x14(1)
    lbz 4, 0x1d(1)
    stb 5, 0x104(7)
    lbz 5, 0x1e(1)
    stb 4, 0x105(7)
    lbz 4, 0x1f(1)
    stb 5, 0x106(7)
    lbz 5, 0x14(1)
    stb 4, 0x107(7)
    lbz 4, 0x15(1)
    stb 5, 0x108(7)
    lbz 5, 0x16(1)
    stb 4, 0x109(7)
    lbz 4, 0x17(1)
    stb 5, 0x10a(7)
    stb 4, 0x10b(7)
    stw 6, 0x10(1)
    stw 6, 0x18(1)
    stw 0, 0x104(31)
    bl fn_8008C494
    lis 3, fn_80134C04@ha
    addi 3, 3, fn_80134C04@l
    bl fn_8008C484
    lwz 0, 0xa4(1)
    mr 3, 31
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

# fn_80139958() - trivial forwarding wrapper for fn_8037A708(lbl_8053AD68).
fn_80139958:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D91A8 # lwz r3, lbl_8053AD68@sda21(r0)
    bl fn_8037A708
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_8013997C(moduleIdx) -> u32 - THE CONFIRMED "is module `moduleIdx`
# loaded?" query used throughout this whole class: reads the CURRENT
# SCENE OBJECT's packed 2-bits-per-module status byte (lbl_8053AAF8->
# 0x83), shifts right by `moduleIdx*2`, and masks to 2 bits - a packed
# 4-module (0-3) readiness/phase field.
fn_8013997C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    slwi 0, 3, 1
    lbz 3, 0x83(4)
    sraw 0, 3, 0
    clrlwi 3, 0, 30
    blr

# fn_80139994(a, b) - a small async-completion CALLBACK: forwards to
# fn_802B1610(lbl_8053ACA8, a, b) (the DVD-status manager). This is the
# EXACT function pointer fn_80137300 registers (via lbl_8053A93C/0x940/
# 0x951) as a deferred callback near the end of its "destroy all
# subsystems + re-arm" tail - so this fires once whatever async DVD
# operation that triggered completes.
fn_80139994:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 4
    stw 0, 0x14(1)
    mr 0, 3
    mr 4, 0
    .4byte 0x806D90E8 # lwz r3, lbl_8053ACA8@sda21(r0)
    bl fn_802B1610
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

