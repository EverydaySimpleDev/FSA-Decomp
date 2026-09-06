# DDGO (vtable lbl_804A3334, ctor fn_80200DA4, GOMA's other direct
# neighbor - see project_fsa_goma_actor_progress) cluster, part 1/8
# (68B). draw() dispatcher - calls fn_801AC930 (landed alongside).
#
# Attempted real-C++ promotion (3 variants: nested if(state>1){}else{};
# swapped if(state<=1){}else{} matching retail's physical fallthrough
# layout - got to a SINGLE branch-sense mismatch (bge vs bgt, same
# target); a 3rd variant using `state<2` instead of `state<=1` grew the
# function by a whole extra cmpwi instead of fixing the sense).
# Confirmed instance of the compiler-internal branch-condition-sense
# canonicalization wall (see reference_fsa_mwcc_scheduling_wall_investigation.md
# and fn_8021917C's precedent) - reverted to raw asm.
.section extab, "a"
.balign 4
.global etb_80007AEC
etb_80007AEC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007AEC, 8

.section extabindex, "a"
.balign 4
.global eti_800149E0
eti_800149E0:
    .4byte fn_801AC8EC
    .4byte 0x00000044
    .4byte etb_80007AEC
.size eti_800149E0, 12

.text
.balign 4
.global fn_801AC8EC

fn_801AC8EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x234(3)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_801AC920
    .4byte 0x40800010 # bge .L_801AC914
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801AC91C
    .4byte 0x48000010 # b .L_801AC920
L_801AC914:
    cmpwi 0, 0x3
    .4byte 0x40800008 # bge .L_801AC920
L_801AC91C:
    bl fn_801AC930
L_801AC920:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
