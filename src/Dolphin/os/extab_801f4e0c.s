/*
 * UNIVERSAL BASE-ACTOR DEFAULT: "begin death sequence" trigger. Resets
 * this->0xd8=0 and starts the death countdown at this->0x188=300 (0x12c
 * frames - the counter fn_801F4850 decrements each frame), plays 4
 * jittered hit-flash SFX (0x6d/0x6a/0x6b/0x6c) at the given position,
 * and calls the unconfirmed fn_80134DE4(globalPRNG, 300, 0) (likely a
 * screen-shake/timer setup). The initializer half of the
 * fn_801F4850/fn_801F4E0C death-sequence pair.
 *
 * Track-B promotion ATTEMPTED and REVERTED (see project memory
 * project_fsa_phase4_kickoff.md's next batch write-up): a natural C++
 * "Vec3 pos = actor->position; pos.x += jitterX; pos.y += jitterY;"
 * (tried both via a raw offset cast AND via a genuine local struct with
 * a real Vec3 member at the right offset - byte-identical wrong output
 * either way) compiles this project's default cflags to a plain
 * INTEGER lwz/stw word-pair copy of the x/y pair, but retail's actual
 * bytes use a Gekko `psq_l`/`psq_st` PAIRED-SINGLE copy for that same
 * 8-byte x/y pair (with the z component copied separately via a plain
 * scalar `lfs`/`stfs`, interleaved with the x/y jitter-add work). This
 * is a genuinely different codegen SHAPE (paired-single vs
 * integer-word struct copy), not just a register/instruction-selection
 * near-miss - not reachable via the struct-vs-raw-cast lever tried here.
 * Worth a future attempt with a different idea (e.g. hunting for
 * whatever real source construct - possibly a dedicated vector-add
 * helper call that got inlined - actually produces the psq_l/psq_st
 * shape elsewhere in this project once one is found).
 */
.section extab, "a"
.balign 4
.global etb_80008ECC
etb_80008ECC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008ECC, 8

.section extabindex, "a"
.balign 4
.global eti_8001660C
eti_8001660C:
    .4byte fn_801F4E0C
    .4byte 0x0000011C
    .4byte etb_80008ECC
.size eti_8001660C, 12

.text
.balign 4
.global fn_801F4E0C

fn_801F4E0C:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x6d
    li 7, 0x0
    stw 0, 0x24(1)
    li 0, 0x0
    li 8, 0x0
    li 9, 0x0
    stw 31, 0x1c(1)
    mr 31, 4
    addi 4, 1, 0x8
    li 10, 0x1
    stw 30, 0x18(1)
    mr 30, 3
    mr 6, 31
    stw 0, 0xd8(3)
    li 0, 0x12c
    stw 0, 0x188(3)
    psq_l 0, 0xc(30), 0, 0
    lfs 4, 0x14(3)
    psq_st 0, 0x0(4), 0, 0
    lfs 3, 0x8(1)
    lfs 0, 0xc(1)
    fadds 3, 3, 1
    stfs 4, 0x10(1)
    fadds 0, 0, 2
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    stfs 3, 0x8(1)
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    mr 6, 31
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0x6a
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    mr 6, 31
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0x6b
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    mr 6, 31
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0x6c
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x12c
    li 5, 0x0
    bl fn_80134DE4
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
