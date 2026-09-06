# fn_801CC9F8(point, roomID) - CONFIRMED: the "is this position safe
# ground" probe that recurs constantly across SLK2's rail-riding
# behavior (project_fsa_slk2_rail_riding_core.md - called from
# fn_801C5B08, fn_801C5EBC, fn_801C6260, and likely more of the
# unlanded functions in that cluster). Fetches the level config record
# and reads the CONFIRMED per-room `+0x31df` flag - if CLEAR, returns
# false immediately (this check is a no-op outside RAIL-restricted
# rooms). If SET, probes 4 points offset from `point` by a fixed
# distance (`lbl_8053EF9C`) in each cardinal direction (+x/-x/+z/-z)
# via the CONFIRMED terrain classifier `fn_802265FC` (RAIL's own
# duplicate of RUPY's `fn_8022461C` - project_fsa_rusa_repel_helpers_solved.md),
# and returns true only if ALL 4 probes report the raw terrain
# category `0` (masked to 16 bits). This is the actual position-validity
# gate the rail-riding steering logic uses before committing to a turn
# or accepting a candidate heading.
#
# Attempted real-C++ promotion (Phase 4): got VERY close (0x140 -> 0x124,
# matching size exactly) via 2 real fixes: (1) a shared-tail `result`
# flag with nested guards (not early `return 0` at each check) avoids
# the final `return 1` getting compiler-optimized into a branchless
# CLZ-based boolean conversion instead of retail's plain `li r31,1`
# fallthrough; (2) NOT caching the SDA constant `lbl_8053EF9C` in a
# local - retail reloads it fresh at each of the 4 probe sites rather
# than preserving it in a non-volatile float register across the calls
# (caching it forced an extra f31 stfd/psq_st save-restore pair, adding
# 0x18 bytes of frame overhead alone). Also matched the per-probe STORE
# order (unchanged component first, then the offset-computed one -
# established already for 2 of 4 probes, extended to all 4).
#
# The REMAINING residual: EVERY probe's `lfs f1,CONST; lfs f0,point[i]`
# pair lands with roles SWAPPED (mine: point->f1/CONST->f0, opposite of
# retail) - this is the SAME scheduler-internal float register-role
# wall already conclusively established unfixable via source phrasing
# for fn_80204DAC (5 attempts + external research into MWCC register
# allocation, see that file's own extended banner) - a 3rd confirmed
# instance (alongside fn_801DBFB0). Also a minor, likely-unrelated
# register-choice difference in the room-config-record offset
# computation (retail routes through r0 as an intermediate; every
# variant tried keeps r3 throughout) - not pursued further since the
# float wall alone already blocks byte-exactness. Deferred; do not
# re-attempt the float portion without a new lever beyond source
# phrasing (see fn_80204DAC's banner for the full negative-result
# history on this exact wall).
.section extab, "a"
.balign 4
.global etb_80008290
etb_80008290:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008290, 8

.section extabindex, "a"
.balign 4
.global eti_800154FC
eti_800154FC:
    .4byte fn_801CC9F8
    .4byte 0x00000124
    .4byte etb_80008290
.size eti_800154FC, 12

.text
.balign 4
.global fn_801CC9F8

fn_801CC9F8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    li 31, 0x0
    stw 30, 0x38(1)
    mr 30, 4
    stw 29, 0x34(1)
    mr 29, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418200CC # beq .L_801CCAFC
    mr 3, 29
    mr 4, 30
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x408200B8 # bne .L_801CCAFC
    .4byte 0xC022BFFC # lfs f1, lbl_8053EF9C@sda21(r0)
    mr 4, 30
    lfs 0, 0x0(29)
    addi 3, 1, 0x20
    lfs 2, 0x4(29)
    fadds 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x4082008C # bne .L_801CCAFC
    lfs 1, 0x0(29)
    mr 4, 30
    .4byte 0xC002BFFC # lfs f0, lbl_8053EF9C@sda21(r0)
    addi 3, 1, 0x18
    lfs 2, 0x4(29)
    fsubs 0, 1, 0
    stfs 2, 0x1c(1)
    stfs 0, 0x18(1)
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x40820060 # bne .L_801CCAFC
    .4byte 0xC042BFFC # lfs f2, lbl_8053EF9C@sda21(r0)
    mr 4, 30
    lfs 1, 0x4(29)
    addi 3, 1, 0x10
    lfs 0, 0x0(29)
    fadds 1, 2, 1
    stfs 0, 0x10(1)
    stfs 1, 0x14(1)
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x40820034 # bne .L_801CCAFC
    lfs 2, 0x4(29)
    mr 4, 30
    .4byte 0xC022BFFC # lfs f1, lbl_8053EF9C@sda21(r0)
    addi 3, 1, 0x8
    lfs 0, 0x0(29)
    fsubs 1, 2, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_802265FC
    clrlwi. 0, 3, 16
    .4byte 0x40820008 # bne .L_801CCAFC
    li 31, 0x1
L_801CCAFC:
    lwz 0, 0x44(1)
    mr 3, 31
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
