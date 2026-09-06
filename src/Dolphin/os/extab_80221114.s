# Fresh-gap-hunt batch 26 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A5B8
etb_8000A5B8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A5B8, 8

.section extabindex, "a"
.balign 4
.global eti_800183A0
eti_800183A0:
    .4byte fn_80221114
    .4byte 0x00000044
    .4byte etb_8000A5B8
.size eti_800183A0, 12

# Attempted real-C++ promotion (2 variants: natural field order x,y,z;
# reordered to match retail's load order z,y,x): retail's float
# load/register-reuse choices for this "build a stack Vec3 from 2
# fields + 1 constant, then call" shape did not reproduce with either
# variant (2nd attempt fully diverged after the prologue). Matches the
# documented float-scheduling wall class. Reverted to raw asm.
.text
.balign 4
.global fn_80221114

fn_80221114:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002CED8 # lfs f0, lbl_8053FE78@sda21(r0)
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    lfs 2, 0x10(3)
    lfs 1, 0xc(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
