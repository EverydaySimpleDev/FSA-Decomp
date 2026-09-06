.section extab, "a"
.balign 4
.global etb_80009C80
etb_80009C80:
    .4byte 0x080A0000
    .4byte 0x0000006C
    .4byte 0x00030010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801C5854
.size etb_80009C80, 28

.section extabindex, "a"
.balign 4
.global eti_80017644
eti_80017644:
    .4byte fn_80206810
    .4byte 0x00000090
    .4byte etb_80009C80
.size eti_80017644, 12

# fn_80206810 - "TZOK" real constructor. Calls the shared base
# fn_801D1974 (the "position-trail predictor" class, see
# extab_801d1974.s - itself a fn_801D0F40 dependent with a 16-element
# position-history array), installs its own vtable, sets its own field
# defaults (+0x340..+0x364), embeds the randomized-value initializer
# fn_80217484 (see extab_80217484.s) at +0x368, then embeds the
# randomized-timer-range record fn_8021BA30 (see extab_8021ba30.s) at
# +0x374 with tag=0.
#
# NOTE: real-C++ promotion attempted (session N). The field/call
# semantics are simple and were confirmed correct in isolation (plain
# C reproduced the exact instruction sequence and field layout).
# BLOCKED on the extab: this ctor's own extab is the non-trivial
# 28-byte/7-dword action-table shape (`8680001F` ... `dtor_801C5854`),
# i.e. "call the base class dtor if something after the base ctor call
# throws". This is NOT the __construct_array-specific case (this ctor
# has none), but a genuine C++ inheritance based-object unwind
# requirement that only emerges from a REAL base-class ctor call
# through actual inheritance, not a plain extern function call cast -
# a manually-cast call to fn_801D1974 as done here always produces a
# trivial 8-byte extab instead. Confirmed via a project-wide grep: ~30
# other still-raw ctor .s files share this exact `8680001F` extab
# shape, matching the "construct_array/complex-ctor extab blocker...
# CLOSED as unsolvable" verdict from project_fsa_phase4_kickoff.md -
# this is that same systemic blocker, not a one-off. Left as raw asm.
.text
.balign 4
.global fn_80206810

fn_80206810:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D1974
    lis 3, lbl_804A5A30@ha
    li 4, -0x1
    addi 3, 3, lbl_804A5A30@l
    li 0, 0x0
    stw 3, 0x0(31)
    addi 3, 31, 0x368
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    stw 4, 0x340(31)
    stw 0, 0x344(31)
    stb 0, 0x348(31)
    stb 0, 0x349(31)
    stb 0, 0x34a(31)
    stb 0, 0x34b(31)
    stb 0, 0x34c(31)
    stw 0, 0x350(31)
    stw 0, 0x354(31)
    stw 0, 0x358(31)
    stw 0, 0x35c(31)
    stfs 0, 0x360(31)
    stfs 0, 0x364(31)
    bl fn_80217484
    addi 3, 31, 0x374
    li 4, 0x0
    bl fn_8021BA30
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

