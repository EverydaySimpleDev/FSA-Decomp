.section extab, "a"
.balign 4
.global etb_8000A394
etb_8000A394:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A394, 8

.section extabindex, "a"
.balign 4
.global eti_80018088
eti_80018088:
    .4byte fn_8021ABC0
    .4byte 0x00000120
    .4byte etb_8000A394
.size eti_80018088, 12

.text
.balign 4
.global fn_8021ABC0

# fn_8021ABC0(record) - option B follow-up: acts on KEPO's embedded
# `InitDefaultRecord` record (this+0x2c8, see project_fsa_final_6_actors_batch.md).
# If `record->0xc` is already nonzero (a "decision already made" latch),
# just resets `record->0x6=0`. Otherwise rolls the CONFIRMED global
# PRNG (the exact `1664525`/`1013904223` Numerical Recipes LCG
# sequence, see reference_fsa_global_prng.md, inlined directly rather
# than called) against a threshold constant to decide a random
# "triggered / not triggered" outcome (`record->0x0`):
#  - TRIGGERED: sets a PRNG-jittered timer (`fn_801CD664(0xb5)+0x78`)
#    at `record->0x8`, then rolls a SECOND PRNG check against a
#    different threshold to pick a directional value `record->0xa`
#    (either -0x180 or +0x180, e.g. a left/right or facing choice).
#  - NOT TRIGGERED: sets the SAME kind of jittered timer at
#    `record->0x8` but forces `record->0xa=0`.
# Reads as a genuine "randomly decide whether (and which way) to do
# something, with a randomized cooldown either way" idle-behavior
# chooser - fitting a pet/companion-style actor with probabilistic
# idle animations (e.g. randomly peeking/looking in a direction).
fn_8021ABC0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0xc(3)
    cmplwi 0, 0x0
    .4byte 0x408200E8 # bne .L_8021ACC4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002CD1C # lfs f0, lbl_8053FCBC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080007C # bge .L_8021ACA0
    li 0, 0x1
    li 3, 0xb5
    stw 0, 0x0(31)
    bl fn_801CD664
    addi 0, 3, 0x78
    lis 3, 0x19
    sth 0, 0x8(31)
    addi 0, 3, 0x660d
    .4byte 0xC022CD18 # lfs f1, lbl_8053FCB8@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002CD14 # lfs f0, lbl_8053FCB4@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_8021AC94
    li 0, -0x180
    sth 0, 0xa(31)
    .4byte 0x4800003C # b .L_8021ACCC
L_8021AC94:
    li 0, 0x180
    sth 0, 0xa(31)
    .4byte 0x48000030 # b .L_8021ACCC
L_8021ACA0:
    li 0, 0x0
    li 3, 0xb5
    stw 0, 0x0(31)
    bl fn_801CD664
    addi 3, 3, 0x78
    li 0, 0x0
    sth 3, 0x8(31)
    sth 0, 0xa(31)
    .4byte 0x4800000C # b .L_8021ACCC
L_8021ACC4:
    li 0, 0x0
    sth 0, 0x6(31)
L_8021ACCC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

