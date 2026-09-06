# fn_800F87E4: the LARGE-offset class's "on break/trigger" handler - a
# major find, reusing an enormous amount of ALREADY-CONFIRMED
# infrastructure and revealing a real gameplay mechanic:
# a container (pot/jar-style) that spawns rupees and sometimes a heart.
#
# - Picks a spawn count: fixed 4 if `this->0x247==0x14`(20, a container
#   "type" byte), else a PRNG-derived random count (1-N) using the
#   CONFIRMED global LCG (lbl_8053AAF8->0xb4, see
#   reference_fsa_global_prng.md - the `0x19660D`*state+`0x3C6EF35F`
#   sequence recurs 4 SEPARATE times in this one function, each with
#   its own scale constant) converted via `__cvt_fp2unsigned`.
# - Spawns that many `"RUPY"` actors (code `0x52555059` = ASCII
#   "RUPY", confirmed) via `SpatialRegistry_GetBase`(get registry) +
#   `fn_801F8544`(thin wrapper -> `fn_801F9484`, the universal actor
#   dispatcher) - the FOURTH independent RUPY-spawn call site found
#   this session (see project_fsa_extab_bug_resolved.md's earlier
#   RUPY-cluster writeups for the other three).
# - On success, looks the new RUPY up by ID (`SpatialRegistry_GetBase`+
#   `fn_801F666C`) and gives it a random "pop" scatter velocity: 3
#   independent PRNG draws combine into an XZ pair written via a
#   paired-single store (`psq_l`/`psq_st`, needs `-mgekko`) into the
#   spawned RUPY's `+0x3c`, plus a Y component into `+0x44`.
# - Unconditionally rolls ANOTHER PRNG value; on a specific outcome
#   (`==3`, i.e. roughly 1-in-4), spawns a NEW, previously
#   uncatalogued 4-letter code `"HART"` (`0x48415254` = ASCII "HART",
#   plausibly a Heart Drop - NOT in the 195-entry dispatch table, not
#   yet independently confirmed) directly via `fn_801F9484` with
#   spawner id `-1,-1` (matching `fn_801F8544`'s own defaults).
# - Finally calls `fn_801F4F28(this)` directly - this is the SAME
#   function already confirmed as RUPY's own "on collected" bonus-
#   reward handler (see the "twentieth"-ish RUPY writeup in
#   project_fsa_extab_bug_resolved.md). Since THIS class uses a
#   completely different, larger field-offset convention than RUPY,
#   `fn_801F4F28` is evidently a more GENERAL pickup/reward handler
#   shared across multiple actor classes, not exclusive to RUPY as
#   first assumed - worth correcting that assumption if referenced
#   elsewhere.
#
# Net picture: this is very plausibly a breakable container (pot/jar)
# that, when triggered, spews out 1-4 rupees with randomized pop
# velocities, has a ~25% chance of also dropping a heart, and then
# runs the shared collection/reward-bonus logic. Not yet cross-
# identified against the 195-entry actor dispatch table itself.
.section extab, "a"
.balign 4
.global etb_80005778
etb_80005778:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005778, 8

.section extabindex, "a"
.balign 4
.global eti_80011A64
eti_80011A64:
    .4byte fn_800F87E4
    .4byte 0x00000218
    .4byte etb_80005778
.size eti_80011A64, 12

.text
.balign 4
.global fn_800F87E4

fn_800F87E4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    lbz 0, 0x247(3)
    cmplwi 0, 0x14
    .4byte 0x4082000C # bne .L_800F8810
    li 30, 0x4
    .4byte 0x48000050 # b .L_800F885C
L_800F8810:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042904C # lfs f2, lbl_8053BFEC@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 1, 2, 0
    bl __cvt_fp2unsigned
    addi 30, 3, 0x1
L_800F885C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lwz 5, 0x4(31)
    mr 7, 30
    addi 6, 31, 0xc
    addi 4, 4, 0x5059
    bl fn_801F8544
    mr. 30, 3
    .4byte 0x418000DC # blt .L_800F8958
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC082902C # lfs f4, lbl_8053BFCC@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC0629004 # lfs f3, lbl_8053BFA4@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC0429050 # lfs f2, lbl_8053BFF0@sda21(r0)
    .4byte 0xC0029000 # lfs f0, lbl_8053BFA0@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 1, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x24(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 4
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fnmsubs 1, 3, 1, 2
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x20(1)
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 4
    fnmsubs 1, 3, 1, 2
    stfs 1, 0x1c(1)
    psq_l 1, 0x1c(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_800F8958:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0429054 # lfs f2, lbl_8053BFF4@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 0, 0x2c(1)
    cmpwi 0, 0x3
    .4byte 0x40820028 # bne .L_800F89D4
    bl SpatialRegistry_GetBase
    lis 4, 0x4841
    lwz 5, 0x4(31)
    addi 4, 4, 0x5254
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_800F89D4:
    li 0, 0x0
    mr 3, 31
    stw 0, 0x18c(31)
    bl fn_801F4F28
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

