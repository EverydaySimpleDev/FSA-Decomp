# fn_801F75B4(registry, owner, rect[4 floats: minX,minZ,maxX,maxZ]) -
# scans the spatial registry (see extab_801f856c.s) for any active
# (`+0x11c==1`) record OWNED BY `owner` (`+0x4==owner`, the same "owner
# reference" field confirmed via fn_801F76F0's real callers) with
# category (`+0x1a8==1`) whose position (`+0xc`/`+0x10`) falls inside
# `rect`. Returns 0 if a match was found (i.e. the area is
# occupied/blocked by one of the caller's OWN records), 1 if clear -
# a boolean "is this rectangle free of my own records" check, the
# rectangle counterpart to the nearest-neighbor queries below.
.text
.balign 4
.global fn_801F75B4
.global fn_801F7664
.global fn_801F76F0
.global fn_801F778C

fn_801F75B4:
    lwz 0, 0x1008(3)
    li 7, 0x1
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810098 # ble .L_801F765C
L_801F75C8:
    lwz 6, 0x8(3)
    cmplwi 6, 0x0
    .4byte 0x41820084 # beq .L_801F7654
    lbz 0, 0x11c(6)
    cmplwi 0, 0x1
    .4byte 0x40820078 # bne .L_801F7654
    lwz 0, 0x4(6)
    cmpw 4, 0
    .4byte 0x4082006C # bne .L_801F7654
    lbz 0, 0x1a8(6)
    cmplwi 0, 0x1
    .4byte 0x40820060 # bne .L_801F7654
    lfs 2, 0xc(6)
    li 0, 0x0
    lfs 0, 0x0(5)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801F7640
    lfs 1, 0x10(6)
    lfs 0, 0x4(5)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801F7640
    lfs 0, 0x8(5)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801F7640
    lfs 0, 0xc(5)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801F7640
    li 0, 0x1
L_801F7640:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801F7654
    li 7, 0x0
    .4byte 0x4800000C # b .L_801F765C
L_801F7654:
    addi 3, 3, 0x4
    .4byte 0x4200FF70 # bdnz .L_801F75C8
L_801F765C:
    clrlwi 3, 7, 24
    blr

# fn_801F7664(registry, point[2 floats: x,z], outDist) - finds the
# nearest active (`+0x11c`), category-flagged (`+0x1a8==1`) record to
# `point` within a fixed squared-distance threshold (`lbl_8053F824`).
# Returns the winning record's ID (`+0x198`), or -1 if none is within
# range; if `outDist` is non-null, stores the winning squared distance
# there. This is the primitive WNWN's update() (extab_80184fc0.s, state
# 7) calls to find a candidate waypoint/anchor point.
#
# NOTE: attempted real-C++ promotion (Phase 4) with `#pragma fp_contract
# off` (see project_fsa_phase4_kickoff.md, 61st batch) - this DID fix
# the fmuls/fadds fusion issue (0 diffs on that front), but exposed a
# SEPARATE, still-unresolved register-identity wall: retail assigns the
# record pointer to r6 and the best-match-id accumulator to r7 (plus a
# corresponding f1/f2 role swap for dx/dz), while natural C++ (3 source
# variations tried: original order, swapped dx/dz order, pre-declared
# reversed order) consistently gives the OPPOSITE assignment (r7=record,
# r6=bestId). 16 of 140 bytes differ, all confined to this one swap
# pattern - same confirmed-hard "MWCC allocator decides" category as
# fn_8006B1C0's pointer-identity issue this same session. Left as raw
# asm - the closest float-family near-miss now that fp_contract is no
# longer the blocker.
fn_801F7664:
    lwz 0, 0x1008(3)
    li 7, -0x1
    .4byte 0xC082C884 # lfs f4, lbl_8053F824@sda21(r0)
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810064 # ble .L_801F76DC
L_801F767C:
    lwz 6, 0x8(3)
    cmplwi 6, 0x0
    .4byte 0x41820050 # beq .L_801F76D4
    lbz 0, 0x11c(6)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_801F76D4
    lbz 0, 0x1a8(6)
    cmplwi 0, 0x1
    .4byte 0x40820038 # bne .L_801F76D4
    lfs 3, 0x0(4)
    lfs 1, 0xc(6)
    lfs 2, 0x4(4)
    lfs 0, 0x10(6)
    fsubs 1, 3, 1
    fsubs 0, 2, 0
    fmuls 1, 1, 1
    fmuls 0, 0, 0
    fadds 0, 1, 0
    fcmpo cr0, 0, 4
    .4byte 0x4080000C # bge .L_801F76D4
    lwz 7, 0x198(6)
    fmr 4, 0
L_801F76D4:
    addi 3, 3, 0x4
    .4byte 0x4200FFA4 # bdnz .L_801F767C
L_801F76DC:
    cmplwi 5, 0x0
    .4byte 0x41820008 # beq .L_801F76E8
    stfs 4, 0x0(5)
L_801F76E8:
    mr 3, 7
    blr

fn_801F76F0:
    lwz 0, 0x1008(3)
    lis 8, lbl_80539D40@ha
    lfs 4, lbl_80539D40@l(8)
    li 9, -0x1
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081007C # ble .L_801F7784
L_801F770C:
    lwz 8, 0x8(3)
    cmplwi 8, 0x0
    .4byte 0x41820068 # beq .L_801F777C
    lbz 0, 0x11c(8)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_801F777C
    lwz 0, 0x1a0(8)
    cmplw 4, 0
    .4byte 0x40820050 # bne .L_801F777C
    lwz 0, 0x4(8)
    cmpw 5, 0
    .4byte 0x40820044 # bne .L_801F777C
    lwz 0, 0x198(8)
    cmpw 7, 0
    .4byte 0x41820038 # beq .L_801F777C
    lfs 3, 0x10(8)
    lfs 2, 0x4(6)
    lfs 1, 0xc(8)
    lfs 0, 0x0(6)
    fsubs 2, 3, 2
    fsubs 1, 1, 0
    fmuls 0, 2, 2
    fmuls 1, 1, 1
    fadds 0, 1, 0
    fcmpo cr0, 0, 4
    .4byte 0x4080000C # bge .L_801F777C
    fmr 4, 0
    mr 9, 0
L_801F777C:
    addi 3, 3, 0x4
    .4byte 0x4200FF8C # bdnz .L_801F770C
L_801F7784:
    mr 3, 9
    blr

# fn_801F778C(registry, typeCode, point[2 floats], outDist) - nearest-
# record query filtered by the record's 4-char ASCII actor type code
# (`+0x1a0==typeCode`) only, no owner or exclude filter. Confirmed via
# real callers passing literal type codes: `extab_800f5e08.s` searches
# for "BTIN", `extab_800f6d80.s` for "RUPY" (Rupee) - i.e. "find the
# nearest live Rupee to my own position," a homing/magnet-style pickup
# query. Same threshold (`lbl_8053F824`) as fn_801F7664.
#
# NOTE: attempted real-C++ promotion (Phase 4) with the SAME
# `#pragma fp_contract off` fix - fusion resolved cleanly, but hit the
# IDENTICAL register-identity wall as fn_801F7664 above (r7/r8 pointer-
# vs-accumulator swap, f1/f2 dx/dz swap) - 23 of 140 bytes differ. Two
# independent confirmations now of this exact wall for this whole
# nearest-neighbor-query function family. Left as raw asm.
fn_801F778C:
    lwz 0, 0x1008(3)
    li 8, -0x1
    .4byte 0xC082C884 # lfs f4, lbl_8053F824@sda21(r0)
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810064 # ble .L_801F7804
L_801F77A4:
    lwz 7, 0x8(3)
    cmplwi 7, 0x0
    .4byte 0x41820050 # beq .L_801F77FC
    lbz 0, 0x11c(7)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_801F77FC
    lwz 0, 0x1a0(7)
    cmplw 4, 0
    .4byte 0x40820038 # bne .L_801F77FC
    lfs 3, 0x0(5)
    lfs 1, 0xc(7)
    lfs 2, 0x4(5)
    lfs 0, 0x10(7)
    fsubs 1, 3, 1
    fsubs 0, 2, 0
    fmuls 1, 1, 1
    fmuls 0, 0, 0
    fadds 0, 1, 0
    fcmpo cr0, 0, 4
    .4byte 0x4080000C # bge .L_801F77FC
    lwz 8, 0x198(7)
    fmr 4, 0
L_801F77FC:
    addi 3, 3, 0x4
    .4byte 0x4200FFA4 # bdnz .L_801F77A4
L_801F7804:
    cmplwi 6, 0x0
    .4byte 0x41820008 # beq .L_801F7810
    stfs 4, 0x0(6)
L_801F7810:
    mr 3, 8
    blr
