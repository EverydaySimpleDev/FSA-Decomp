.section extab, "a"
.balign 4
.global etb_8000D3FC
etb_8000D3FC:
    .4byte 0x5A4A0000
    .4byte 0x00000188
    .4byte 0x04200010
    .4byte 0x00000000
    .4byte 0x820000B0
    .4byte dtor_80092364
.size etb_8000D3FC, 24

.section extabindex, "a"
.balign 4
.global eti_8001C6FC
eti_8001C6FC:
    .4byte fn_802F745C
    .4byte 0x00001270
    .4byte etb_8000D3FC
.size eti_8001C6FC, 12

.text
.balign 4
.global fn_802F745C

# fn_802F745C(registry, posVec3*, handleGroup, handle) - the SECOND member
# of the "spatial triad" flagged undecompiled in
# [[project_fsa_shared_effect_subsystem_crossref]] (4720 bytes, by far the
# largest function landed this session). Now genuinely understood at the
# architectural level as the sibling of the newly-decompiled fn_802F5E9C:
# where that function samples ONE ambient light-probe value at a point,
# THIS function builds and directly renders an entire PATCH of the probe
# grid as a raw vertex mesh, submitted straight into the GX CPU
# write-gather-pipe FIFO (0xCC008000 - the same fixed address
# fn_8013B004/fn_8013CC50 write raw floats to).
#
# Structure (confirmed by reading the whole function, not just its shape):
# 1. Two validity/precondition checks against `handle` via not-yet-explored
#    helpers `fn_802F654C`/`fn_802F6298` (early-out to the tail if either
#    fails).
# 2. Computes the position's offset from the probe registry's bounds
#    (`registry->0x2368/0x236c`, the SAME min-XZ fields fn_802F5E9C reads)
#    and a fractional in-cell offset, gated on a "settings gate" derived
#    from `handle->0x18/0x21-0x25` and, in one branch, a
#    `GetRoomConfigRecord()`-derived settings-visibility rect compared against
#    `handle`'s own position (`->0xcc/0xd0/0xd4/0xd8` bounds check,
#    matching the exact shape [[project_fsa_effect_playback_primitive]]
#    documented for `fn_801EE434`'s audibility test - confirms that same
#    settings-rect convention is reused here for a VISUAL light-probe
#    culling decision, not just audio).
# 3. Runs the CONFIRMED fn_8005XXXX GX render-state battery (the exact
#    same call family as `fn_8013AC90`/`fn_8013B004`/`fn_8013B1E8`) - once
#    with mode-tag 1 if `handle`'s "near" flag (derived from a
#    `->0x21bb0`-style static byte plus a distance-style check earlier) is
#    set, ALWAYS once more with mode-tag 2 afterward.
# 4. Enters a nested loop (outer over rows, `mtctr`'d inner loop over
#    columns) that, for each grid cell in a rectangular patch around the
#    position: resolves the cell's probe pointer via the SAME
#    `registry->0x100/0x108 + row*stride + col*12` addressing fn_802F5E9C
#    uses, reads each probe's position+color bytes, computes bilinearly-
#    blended vertex positions/colors between adjacent probes, and writes
#    them DIRECTLY into the GX FIFO - i.e. this literally emits the
#    light-probe grid patch as renderable geometry every time it's called,
#    not just a color lookup. CORRECTION (re-examined at instruction level):
#    every one of these per-vertex writes is `stfs` (store float single) -
#    there is NO `stb` byte-store anywhere in the emission loop, so the
#    earlier "position floats, then color bytes" description was wrong.
#    Color is submitted as GX_F32 floats too, not packed RGBA8 - each
#    vertex writes 7 stfs in sequence (3 for position, 4 more immediately
#    after, likely a float-format color or a second attribute pair; exact
#    attribute assignment still open).
#
# `fn_8005C24C(primType, vtxfmt, nverts)` IDENTIFIED as the real GX SDK's
# `GXBegin`: every vertex-emission burst in this function (and in
# `fn_802F86CC`, see below) is preceded by `bl fn_8005C24C` with `r3=0x80,
# r4=0x0`, which is the real GX SDK enum value for GX_QUADS - called
# consistently as `GXBegin(GX_QUADS, GX_VTXFMT0, nverts)` right before each
# raw FIFO burst. This also reconciles the two FIFO addresses noted in earlier
# sessions: the `lis r,0xcc01` / `stfs ..., -0x8000(r)` idiom used here
# computes 0xCC010000 - 0x8000 = 0xCC008000 - the SAME fixed
# write-gather-pipe address referenced elsewhere, not a second one.
# 5. A second, near-structurally-identical copy of steps 2-4 follows for a
#    second `handle`-derived condition branch (visibility-rect settings
#    check without the "near" gate) - not re-documented instruction-by-
#    instruction here since it mirrors the first copy's confirmed shape.
#
# This CONFIRMS `lbl_8053AB10->0x20` (the registry every triad function
# targets) is genuinely a live-rendered ambient-lighting probe grid, not
# just a lookup table - the camera-manager's lighting cluster
# (`fn_8013AC90`/`fn_8013B004`/`fn_8013CB44`/`fn_8013CC50`) sets UP this
# grid's tuning constants and per-frame state, while this function is what
# actually DRAWS it around whatever position needs local ambient lighting.
# `fn_802F86CC` (the third triad member) is now ALSO landed and confirmed
# to share this same `fn_8005C24C`=GXBegin(GX_QUADS,...) emission pattern.
#
# UPDATE (follow-up session): identified 5 MORE of the `fn_8005XXXX` GX
# render-state battery called throughout this function's near/visible
# branches (see [[project_fsa_gxbegin_identified]] for full evidence):
#   `fn_8005EA6C` = GXSetTevColorIn(stage,a,b,c,d)  - writes tevc[stage]
#   `fn_8005EAB0` = GXSetTevAlphaIn(stage,a,b,c,d)  - writes teva[stage]
#   `fn_8005EAF4` = GXSetTevColorOp(stage,op,bias,scale,clamp,outReg)
#   `fn_8005EB5C` = GXSetTevAlphaOp(stage,op,bias,scale,clamp,outReg)
#   `fn_8005EDE8` = GXSetTevSwapMode(stage,rasSel,texSel) (lower confidence)
# All 5 immediately flush via `GX_LOAD_BP_REG` (opcode 0x61, confirmed by
# the literal `li r0,0x61` preceding each FIFO write) rather than the
# `GX_LOAD_XF_REG` (0x10) opcode `fn_8005D3C8`/`fn_8005B93C`/`fn_8005F11C`
# use - i.e. TEV combiner state is BP-register space, matching real GX
# hardware. `fn_8005ADB4` (also called here) is likely
# `GXSetVtxAttrFmt(vtxfmt,attr,count,type,frac)` (structural match only,
# lower confidence than the TEV ones).
#
# UPDATE (2nd follow-up): 3 more EXACT, field-by-field confirmed matches
# (see [[project_fsa_gxbegin_identified]]):
#   `fn_8005E8DC` = GXSetTevDirect(stage) - a convenience wrapper that
#     calls the function below with every indirect-texture param zeroed.
#   `fn_8005E4A4` (called only by GXSetTevDirect above, not directly here)
#     = GXSetTevIndirect(tevStage,texStage,texFmt,biasSel,mtxID,wrapS,
#     wrapT,addPrev,utcLod,alphaSel) - all 10 params matched bit-for-bit
#     against the real GX SDK's exact `BP command 0x61` field layout
#     (bits 0-7=tevStage+0x10, 11=addPrev, 12=utcLod, 13-15=wrapT,
#     16-18=wrapS, 19-22=mtxID, 23-24=alphaSel, 25-27=biasSel, 28-29=
#     texFmt, 30-31=texStage) - the cleanest confirmation of the whole
#     `fn_8005XXXX` sweep.
#   `fn_8005B6BC` = GXSetTexCoordGen2(dst_coord,func,src_param,mtx,
#     normalize,pt_texmtx) - confirmed via 2 XF register addresses
#     (dst_coord+0x40 and +0x50, matching literal `+0x1040`/`+0x1050`
#     constants seen in the disasm) plus the `matIdxA`/`matIdxB` shadow
#     fields at `__GXData+0x80`/`+0x84`.
#
# UPDATE (3rd follow-up): `fn_8005D404` = GXSetChanCtrl(GXChannelID channel,
#   GXBool doEnable, GXColorSrc ambSrc, GXColorSrc matSrc, u32 mask,
#   GXDiffuseFn diffFunc, GXAttnFn attnFunc) - confirmed via the exact
#   `channel & 3` colorID computation, the `mask` value being packed TWICE
#   into two different bit ranges (matching real source's dual
#   `GX_BITFIELD_SET`+`__rlwimi(...,7,0x11,0x14)` calls, the SECOND one's
#   MSB17-20 an exact literal match), the base XF write to
#   `GX_XF_REG_COLOR0CNTRL + colorID` (pins that constant = 0x100E), and
#   conditional EXTRA writes to `GX_XF_REG_ALPHA0CNTRL`/`ALPHA1CNTRL`
#   (0x1010/0x1011) when channel selects the combined COLOR0A0/COLOR1A1
#   enums - even the `bpSentNot = TRUE` (not FALSE, unlike every other
#   flush in this family) quirk matches the real source exactly.
#
# UPDATE (5th follow-up): `fn_8005EF80` IDENTIFIED - DEFINITIVELY - as the
#   real GX SDK's `GXSetTevOrder(GXTevStageID stage, GXTexCoordID coord,
#   GXTexMapID map, GXChannelID color)`. The earlier "fully traced but
#   unnamed" writeup undersold it - a same-shape function eventually turned
#   up, EXACT and complete, in sabishii-bit/Gauntlet-Dark-Legacy-
#   Decompilation's `GXTev.c` (tww's/SMS's own copies of this era of the
#   SDK don't carry it in a form that matches this cleanly - different
#   games' SDK snapshots vary slightly, and this one happened to line up
#   byte-for-byte). Every previously-unexplained detail resolves exactly:
#   - `ptref = &gx->tref[stage/2]` = the `__GXData+0x100+(stage/2)*4`
#     paired-word addressing (2 stages per hardware word, confirmed - this
#     wasn't a guess about hardware pairing after all, it's the SDK's own
#     `tref` array).
#   - `gx->texmapId[stage] = map` = the `__GXData[stage*4+1364] = r5` write
#     (pins `texmapId` at struct offset 1364, and confirms r5=`map`).
#   - The per-stage enable-bitmask toggle at `__GXData+1432` = exactly
#     `gx->tevTcEnab`, set when `coord < GX_MAX_TEXCOORD` and cleared
#     otherwise (confirms r4=`coord`, and GX_MAX_TEXCOORD=8, matching the
#     disasm's `cmpwi r4,8` clamp).
#   - `map`'s double-duty bit-8 test (`map & 0x100`) plus the `!=NULL`
#     check together gate the final 1-bit "tex-enable" field exactly as
#     real source's `(map != GX_TEXMAP_NULL && !(map & 0x100))` - explains
#     why one argument seemed to serve two roles: it's real source's own
#     documented double-use of `map`, not an artifact of my reading.
#   - The lookup table (`lbl_80497500`) = the real source's static
#     `c2r[] = {0,1,0,1,0,1,7,5,6}` channel-to-register-code table, with
#     `GX_COLOR_NULL` (=255, confirming r6=`color`) mapping to code 7 -
#     matching the disasm's 255-sentinel fallback exactly.
#   - `dirtyState |= 1` at the end matches real source's literal
#     `gx->dirtyState |= 1` (= GX_DIRTY_SU_TEX, consistent with everything
#     else confirmed in this sweep).
#   Every field, bit position, and sentinel value matches - this is as
#   solid a confirmation as `fn_8005E4A4`=GXSetTevIndirect. Makes sense in
#   hindsight that this was the hardest of the sweep to place: GXSetTevOrder
#   is one of the most fundamental, most-called GX functions in any
#   renderer (it's why it appears in every wired caller file checked).
fn_802F745C:
    stwu 1, -0x1d0(1)
    mflr 0
    stw 0, 0x1d4(1)
    stfd 31, 0x1c0(1)
    psq_st 31, 0x1c8(1), 0, 0
    stfd 30, 0x1b0(1)
    psq_st 30, 0x1b8(1), 0, 0
    stfd 29, 0x1a0(1)
    psq_st 29, 0x1a8(1), 0, 0
    stfd 28, 0x190(1)
    psq_st 28, 0x198(1), 0, 0
    stfd 27, 0x180(1)
    psq_st 27, 0x188(1), 0, 0
    stfd 26, 0x170(1)
    psq_st 26, 0x178(1), 0, 0
    stfd 25, 0x160(1)
    psq_st 25, 0x168(1), 0, 0
    stfd 24, 0x150(1)
    psq_st 24, 0x158(1), 0, 0
    stfd 23, 0x140(1)
    psq_st 23, 0x148(1), 0, 0
    stmw 21, 0x114(1)
    mr 28, 3
    mr 29, 4
    lbz 0, 0x2364(3)
    mr 30, 5
    mr 31, 6
    cmplwi 0, 0x0
    .4byte 0x418211A4 # beq .L_802F8670
    cmplwi 31, 0x0
    .4byte 0x41820030 # beq .L_802F7504
    lbz 0, 0x21(31)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_802F7504
    mr 7, 30
    mr 9, 31
    li 5, 0x0
    li 6, 0x0
    li 8, 0x0
    bl fn_802F654C
    clrlwi. 0, 3, 24
    .4byte 0x40821170 # bne .L_802F8670
L_802F7504:
    cmplwi 31, 0x0
    .4byte 0x41820038 # beq .L_802F7540
    lbz 0, 0x22(31)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_802F7540
    mr 3, 28
    mr 4, 29
    mr 7, 30
    mr 9, 31
    li 5, 0x0
    li 6, 0x0
    li 8, 0x0
    bl fn_802F6298
    clrlwi. 0, 3, 24
    .4byte 0x40821134 # bne .L_802F8670
L_802F7540:
    li 0, 0x0
    mr 4, 30
    stw 0, 0xd8(1)
    addi 3, 1, 0xb0
    li 5, 0x0
    bl fn_800923D8
    lbz 0, 0xeb(1)
    lis 4, 0x4330
    li 27, 0x0
    lwz 6, 0xd0(1)
    rlwinm 0, 0, 0, 30, 30
    stw 4, 0xf0(1)
    .4byte 0xC842E568 # lfd f2, lbl_80541508@sda21(r0)
    cmplwi 31, 0x0
    stb 0, 0xeb(1)
    mr 3, 27
    lhz 5, 0x2(6)
    lhz 0, 0x4(6)
    xoris 5, 5, 0x8000
    stw 4, 0xf8(1)
    xoris 0, 0, 0x8000
    stw 5, 0xf4(1)
    stw 0, 0xfc(1)
    lfd 1, 0xf0(1)
    lfd 0, 0xf8(1)
    fsubs 29, 1, 2
    fsubs 28, 0, 2
    .4byte 0x41820014 # beq .L_802F75C0
    lbz 0, 0x24(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802F75C0
    li 3, 0x1
L_802F75C0:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802F75DC
    addis 3, 28, 0x1
    lbz 0, -0x1bb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802F75DC
    li 27, 0x1
L_802F75DC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    addi 3, 1, 0xb0
    li 4, 0x0
    bl fn_80092984
    mr 3, 29
    mr 4, 31
    addi 5, 1, 0x44
    bl fn_802F5040
    .4byte 0xC022E580 # lfs f1, lbl_80541520@sda21(r0)
    cmplwi 31, 0x0
    lfs 2, 0x0(29)
    fmuls 30, 1, 29
    lfs 0, 0x4(29)
    fmuls 31, 1, 28
    fsubs 27, 2, 30
    fsubs 26, 0, 31
    .4byte 0x41820020 # beq .L_802F7640
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_802F7640
    lfs 1, 0xc(3)
    lfs 0, 0x1c(3)
    fadds 27, 27, 1
    fadds 26, 26, 0
L_802F7640:
    .4byte 0xC002E58C # lfs f0, lbl_8054152C@sda21(r0)
    cmplwi 31, 0x0
    fmuls 27, 27, 0
    fmuls 26, 26, 0
    .4byte 0x4182078C # beq .L_802F7DDC
    lbz 0, 0x23(31)
    cmplwi 0, 0x0
    .4byte 0x41820780 # beq .L_802F7DDC
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x40820774 # bne .L_802F7DDC
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820764 # bne .L_802F7DDC
    lfs 1, 0x4(29)
    lfs 0, 0x8(29)
    lfs 24, 0x0(29)
    fsubs 25, 1, 0
    bl GetRoomConfigRecord
    lfs 0, 0xcc(3)
    li 0, 0x0
    fcmpo cr0, 24, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_802F76D0
    lfs 0, 0xd0(3)
    fcmpo cr0, 25, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802F76D0
    lfs 0, 0xd4(3)
    fcmpo cr0, 24, 0
    .4byte 0x40800014 # bge .L_802F76D0
    lfs 0, 0xd8(3)
    fcmpo cr0, 25, 0
    .4byte 0x40800008 # bge .L_802F76D0
    li 0, 0x1
L_802F76D0:
    clrlwi. 0, 0, 24
    .4byte 0x41820708 # beq .L_802F7DDC
    .4byte 0xC042E570 # lfs f2, lbl_80541510@sda21(r0)
    .4byte 0xC062E574 # lfs f3, lbl_80541514@sda21(r0)
    fdivs 25, 2, 29
    lfs 1, 0x44(1)
    lfs 0, 0x48(1)
    fmuls 4, 3, 29
    fmuls 3, 3, 28
    fsubs 1, 1, 30
    fctiwz 4, 4
    fctiwz 3, 3
    fsubs 0, 0, 31
    stfs 1, 0x44(1)
    fdivs 28, 2, 28
    stfd 4, 0xf8(1)
    stfd 3, 0xf0(1)
    lwz 26, 0xfc(1)
    stfs 0, 0x48(1)
    lwz 25, 0xf4(1)
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xb
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xe
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xb
    li 5, 0x0
    li 6, 0x5
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xe
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x4
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x2
    bl fn_8005D404
    li 3, 0x1
    bl fn_8005D3C8
    li 3, 0x1
    li 4, 0xff
    li 5, 0xff
    li 6, 0x4
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0xc
    li 6, 0xa
    li 7, 0x0
    bl fn_8005EA6C
    li 3, 0x1
    li 4, 0x7
    li 5, 0x6
    li 6, 0x5
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x1
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    bl fn_8005E8DC
    li 3, 0x2
    bl fn_8005F11C
    clrlwi. 0, 27, 24
    .4byte 0x418201B4 # beq .L_802F7A30
    li 3, 0x1
    li 4, 0x1
    li 5, 0x5
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x2
    bl fn_8005B93C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_802F7904
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_802F78EC
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_802F78EC
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_802F78EC
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_802F78EC
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_802F78EC
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_802F78F0
L_802F78EC:
    li 0, 0x1
L_802F78F0:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_802F7958
L_802F7904:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_802F7944
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_802F7944
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_802F7944
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_802F7944
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_802F7944
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_802F7944
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_802F7948
L_802F7944:
    li 0, 0x1
L_802F7948:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802F7958:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_802F7978
    lwz 0, 0x4(4)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802F7978
    bl GetRoomConfigRecord
    lwz 0, 0x50(3)
    .4byte 0x48000008 # b .L_802F797C
L_802F7978:
    li 0, 0x0
L_802F797C:
    addis 3, 28, 0x1
    slwi 0, 0, 2
    add 3, 3, 0
    li 4, 0x1
    lwz 3, -0x1bd8(3)
    bl fn_80092984
    li 3, 0x2
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x2
    li 4, 0xf
    li 5, 0x0
    li 6, 0x8
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x2
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x2
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x2
    bl fn_8005E8DC
    li 3, 0x3
    bl fn_8005F11C
L_802F7A30:
    mullw 0, 26, 25
    li 3, 0x80
    li 4, 0x0
    clrlslwi 5, 0, 18, 2
    bl fn_8005C24C
    lfs 5, 0x4c(1)
    li 8, 0x0
    lfs 6, 0x48(1)
    li 7, 0x0
    lfs 7, 0x44(1)
    lis 0, 0x4330
    .4byte 0xC862E568 # lfd f3, lbl_80541508@sda21(r0)
    lis 3, 0xcc01
    .4byte 0xC042E574 # lfs f2, lbl_80541514@sda21(r0)
    .4byte 0xC022E58C # lfs f1, lbl_8054152C@sda21(r0)
    .4byte 0xC002E594 # lfs f0, lbl_80541534@sda21(r0)
    .4byte 0x48000360 # b .L_802F7DD0
L_802F7A74:
    xoris 4, 7, 0x8000
    xoris 5, 8, 0x8000
    stw 4, 0xf4(1)
    lfs 4, 0x236c(28)
    stw 0, 0xf0(1)
    lfd 8, 0xf0(1)
    stw 5, 0xfc(1)
    fsubs 8, 8, 3
    stw 0, 0xf8(1)
    fadds 8, 6, 8
    lfd 9, 0xf8(1)
    fsubs 10, 9, 3
    fsubs 9, 8, 5
    fmuls 8, 10, 28
    fsubs 4, 9, 4
    fmuls 4, 2, 4
    fctiwz 4, 4
    stfd 4, 0x100(1)
    lwz 5, 0x104(1)
    cmpwi 5, 0x0
    .4byte 0x4080000C # bge .L_802F7AD0
    li 5, 0x0
    .4byte 0x48000010 # b .L_802F7ADC
L_802F7AD0:
    cmpwi 5, 0x40
    .4byte 0x40810008 # ble .L_802F7ADC
    li 5, 0x40
L_802F7ADC:
    xoris 4, 7, 0x8000
    stw 0, 0x100(1)
    mulli 6, 5, 0x41
    fadds 4, 8, 28
    stw 4, 0x104(1)
    li 9, 0x0
    li 4, 0x0
    lfd 9, 0x100(1)
    mulli 5, 6, 0xc
    slwi 6, 6, 2
    fsubs 9, 9, 3
    fmadds 9, 9, 1, 26
    fadds 10, 0, 9
    mtctr 26
    cmpwi 26, 0x0
    .4byte 0x408102B0 # ble .L_802F7DC8
L_802F7B1C:
    xoris 10, 4, 0x8000
    xoris 11, 9, 0x8000
    stw 10, 0xfc(1)
    lfs 29, 0x2368(28)
    stw 0, 0xf8(1)
    lfd 11, 0xf8(1)
    stw 11, 0x104(1)
    fsubs 11, 11, 3
    stw 0, 0x100(1)
    fadds 11, 7, 11
    lfd 12, 0x100(1)
    fsubs 13, 12, 3
    fsubs 12, 11, 29
    fmuls 11, 13, 25
    fmuls 12, 2, 12
    fctiwz 12, 12
    stfd 12, 0xf0(1)
    lwz 11, 0xf4(1)
    cmpwi 11, 0x0
    .4byte 0x4080000C # bge .L_802F7B74
    li 11, 0x0
    .4byte 0x48000010 # b .L_802F7B80
L_802F7B74:
    cmpwi 11, 0x40
    .4byte 0x40810008 # ble .L_802F7B80
    li 11, 0x40
L_802F7B80:
    lwz 10, 0x2388(28)
    mulli 12, 11, 0xc
    slwi 22, 11, 2
    lfs 12, 0x236c(28)
    slwi 10, 10, 2
    stw 0, 0x100(1)
    add 21, 28, 10
    lwz 10, 0x100(21)
    add 27, 5, 12
    xoris 11, 4, 0x8000
    add 12, 5, 12
    add 27, 10, 27
    add 10, 6, 22
    lfs 13, 0x4(27)
    mr 24, 10
    stw 11, 0x104(1)
    addi 23, 10, 0x4
    lwz 11, 0x108(21)
    fadds 13, 13, 12
    lfs 24, 0x0(27)
    add 24, 11, 24
    lfs 30, 0x8(27)
    fadds 12, 24, 29
    lbz 11, 0x0(24)
    fadds 29, 5, 13
    lbz 27, 0x1(24)
    lbz 22, 0x2(24)
    fadds 13, 30, 5
    lbz 21, 0x3(24)
    addi 24, 12, 0xc
    lfd 24, 0x100(1)
    stfs 12, -0x8000(3)
    fsubs 24, 24, 3
    stfs 29, -0x8000(3)
    stfs 13, -0x8000(3)
    fmadds 12, 24, 1, 27
    stb 11, -0x8000(3)
    fadds 13, 0, 12
    stb 27, -0x8000(3)
    stb 22, -0x8000(3)
    stb 21, -0x8000(3)
    stfs 11, -0x8000(3)
    stfs 8, -0x8000(3)
    stfs 12, -0x8000(3)
    stfs 9, -0x8000(3)
    lwz 11, 0x2388(28)
    lfs 29, 0x236c(28)
    slwi 11, 11, 2
    lfs 24, 0x2368(28)
    add 11, 28, 11
    lwz 27, 0x100(11)
    lwz 11, 0x108(11)
    add 24, 27, 24
    add 23, 11, 23
    lfs 30, 0x4(24)
    lfs 23, 0x0(24)
    fadds 30, 30, 29
    lfs 31, 0x8(24)
    fadds 29, 23, 24
    lbz 11, 0x0(23)
    lbz 21, 0x1(23)
    fadds 24, 31, 5
    lbz 22, 0x2(23)
    fadds 30, 5, 30
    lbz 23, 0x3(23)
    stfs 29, -0x8000(3)
    stfs 30, -0x8000(3)
    stfs 24, -0x8000(3)
    stb 11, -0x8000(3)
    stb 21, -0x8000(3)
    stb 22, -0x8000(3)
    stb 23, -0x8000(3)
    fadds 23, 11, 25
    addi 23, 12, 0x318
    addi 24, 10, 0x108
    addi 27, 10, 0x104
    addi 12, 12, 0x30c
    addi 4, 4, 0x8
    stfs 23, -0x8000(3)
    addi 9, 9, 0x1
    stfs 8, -0x8000(3)
    stfs 13, -0x8000(3)
    stfs 9, -0x8000(3)
    lwz 10, 0x2388(28)
    lfs 31, 0x236c(28)
    slwi 10, 10, 2
    lfs 29, 0x2368(28)
    add 10, 28, 10
    lwz 11, 0x100(10)
    lwz 10, 0x108(10)
    add 23, 11, 23
    lfs 24, 0x4(23)
    add 24, 10, 24
    lfs 30, 0x0(23)
    fadds 31, 24, 31
    lfs 24, 0x8(23)
    fadds 30, 30, 29
    lbz 10, 0x0(24)
    fadds 29, 24, 5
    lbz 11, 0x1(24)
    lbz 21, 0x2(24)
    fadds 24, 5, 31
    lbz 22, 0x3(24)
    stfs 30, -0x8000(3)
    stfs 24, -0x8000(3)
    stfs 29, -0x8000(3)
    stb 10, -0x8000(3)
    stb 11, -0x8000(3)
    stb 21, -0x8000(3)
    stb 22, -0x8000(3)
    stfs 23, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 13, -0x8000(3)
    stfs 10, -0x8000(3)
    lwz 10, 0x2388(28)
    lfs 30, 0x236c(28)
    slwi 10, 10, 2
    lfs 13, 0x2368(28)
    add 10, 28, 10
    lwz 11, 0x100(10)
    lwz 10, 0x108(10)
    add 12, 11, 12
    add 27, 10, 27
    lfs 31, 0x4(12)
    lfs 29, 0x0(12)
    fadds 30, 31, 30
    lfs 31, 0x8(12)
    fadds 13, 29, 13
    lbz 10, 0x0(27)
    lbz 11, 0x1(27)
    fadds 29, 31, 5
    lbz 12, 0x2(27)
    fadds 24, 5, 30
    lbz 21, 0x3(27)
    stfs 13, -0x8000(3)
    stfs 24, -0x8000(3)
    stfs 29, -0x8000(3)
    stb 10, -0x8000(3)
    stb 11, -0x8000(3)
    stb 12, -0x8000(3)
    stb 21, -0x8000(3)
    stfs 11, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 12, -0x8000(3)
    stfs 10, -0x8000(3)
    .4byte 0x4200FD58 # bdnz .L_802F7B1C
L_802F7DC8:
    addi 7, 7, 0x8
    addi 8, 8, 0x1
L_802F7DD0:
    cmpw 8, 25
    .4byte 0x4180FCA0 # blt .L_802F7A74
    .4byte 0x48000858 # b .L_802F8630
L_802F7DDC:
    cmplwi 31, 0x0
    .4byte 0x418204B4 # beq .L_802F8294
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x418204A8 # beq .L_802F8294
    lbz 0, 0x25(31)
    cmplwi 0, 0x0
    .4byte 0x4182049C # beq .L_802F8294
    .4byte 0xC002E580 # lfs f0, lbl_80541520@sda21(r0)
    fmuls 25, 0, 31
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xe
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xe
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    clrlwi. 0, 27, 24
    .4byte 0x418201B4 # beq .L_802F802C
    li 3, 0x1
    li 4, 0x1
    li 5, 0x5
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x2
    bl fn_8005B93C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_802F7F00
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_802F7EE8
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_802F7EE8
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_802F7EE8
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_802F7EE8
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_802F7EE8
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_802F7EEC
L_802F7EE8:
    li 0, 0x1
L_802F7EEC:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_802F7F54
L_802F7F00:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_802F7F40
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_802F7F40
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_802F7F40
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_802F7F40
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_802F7F40
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_802F7F40
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_802F7F44
L_802F7F40:
    li 0, 0x1
L_802F7F44:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802F7F54:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_802F7F74
    lwz 0, 0x4(4)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802F7F74
    bl GetRoomConfigRecord
    lwz 0, 0x50(3)
    .4byte 0x48000008 # b .L_802F7F78
L_802F7F74:
    li 0, 0x0
L_802F7F78:
    addis 3, 28, 0x1
    slwi 0, 0, 2
    add 3, 3, 0
    li 4, 0x1
    lwz 3, -0x1bd8(3)
    bl fn_80092984
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0x0
    li 6, 0x8
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x1
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    bl fn_8005E8DC
    li 3, 0x2
    bl fn_8005F11C
L_802F802C:
    fneg 24, 30
    stfs 25, 0x34(1)
    fneg 23, 25
    lwz 3, 0x18(31)
    addi 4, 1, 0x2c
    addi 5, 1, 0x80
    stfs 24, 0x2c(1)
    stfs 23, 0x30(1)
    bl PSMTXMultVecSR
    stfs 30, 0x20(1)
    addi 5, 1, 0x8c
    lwz 3, 0x18(31)
    addi 4, 1, 0x20
    stfs 23, 0x24(1)
    stfs 25, 0x28(1)
    bl PSMTXMultVecSR
    stfs 30, 0x14(1)
    addi 5, 1, 0x98
    lwz 3, 0x18(31)
    addi 4, 1, 0x14
    stfs 25, 0x18(1)
    stfs 23, 0x1c(1)
    bl PSMTXMultVecSR
    stfs 24, 0x8(1)
    addi 5, 1, 0xa4
    lwz 3, 0x18(31)
    addi 4, 1, 0x8
    stfs 25, 0xc(1)
    stfs 23, 0x10(1)
    bl PSMTXMultVecSR
    lwz 3, 0x18(31)
    lfs 1, 0x44(1)
    lfs 0, 0xc(3)
    lfs 3, 0x48(1)
    fadds 2, 1, 0
    lfs 1, 0x1c(3)
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    fadds 1, 3, 1
    .4byte 0xC082E58C # lfs f4, lbl_8054152C@sda21(r0)
    fsubs 5, 2, 30
    fadds 2, 30, 2
    stfs 0, 0x5c(1)
    fsubs 3, 1, 25
    fadds 1, 25, 1
    stfs 0, 0x6c(1)
    fmuls 25, 5, 4
    fmuls 26, 3, 4
    stfs 0, 0x7c(1)
    fmuls 27, 2, 4
    fmuls 28, 1, 4
    .4byte 0xC022E5A0 # lfs f1, lbl_80541540@sda21(r0)
    bl sin
    frsp 24, 1
    .4byte 0xC022E5A0 # lfs f1, lbl_80541540@sda21(r0)
    bl cos
    frsp 2, 1
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    fneg 1, 24
    .4byte 0xC3C2E578 # lfs f30, lbl_80541518@sda21(r0)
    .4byte 0xC3E2E5A4 # lfs f31, lbl_80541544@sda21(r0)
    addi 21, 1, 0x80
    stfs 30, 0x50(1)
    li 22, 0x0
    stfs 2, 0x64(1)
    stfs 1, 0x68(1)
    stfs 24, 0x74(1)
    stfs 2, 0x78(1)
    stfs 0, 0x70(1)
    stfs 0, 0x58(1)
    stfs 0, 0x60(1)
    stfs 0, 0x54(1)
L_802F8148:
    mr 4, 21
    addi 3, 1, 0x50
    addi 5, 1, 0x38
    bl PSMTXMultVecSR
    lfs 0, 0x40(1)
    lfs 4, 0x44(1)
    fsubs 0, 31, 0
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802F8174
    .4byte 0x48000008 # b .L_802F8178
L_802F8174:
    fmr 0, 30
L_802F8178:
    fdivs 2, 31, 0
    lwz 3, 0x18(31)
    addi 22, 22, 0x1
    lfs 1, 0x0(21)
    lfs 0, 0xc(3)
    cmpwi 22, 0x4
    fmadds 0, 2, 1, 0
    lfs 3, 0x48(1)
    lfs 2, 0x4c(1)
    fadds 0, 4, 0
    stfs 0, 0x0(21)
    lfs 1, 0x4(21)
    lfs 0, 0x1c(3)
    fadds 0, 1, 0
    fadds 0, 3, 0
    stfs 0, 0x4(21)
    lfs 1, 0x8(21)
    lfs 0, 0x2c(3)
    fadds 0, 1, 0
    fadds 0, 2, 0
    stfs 0, 0x8(21)
    addi 21, 21, 0xc
    .4byte 0x4180FF78 # blt .L_802F8148
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    lfs 0, 0x80(1)
    lis 3, 0xcc01
    .4byte 0xC042E558 # lfs f2, lbl_805414F8@sda21(r0)
    stfs 0, -0x8000(3)
    .4byte 0xC022E578 # lfs f1, lbl_80541518@sda21(r0)
    lfs 0, 0x84(1)
    stfs 0, -0x8000(3)
    lfs 0, 0x88(1)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 25, -0x8000(3)
    stfs 26, -0x8000(3)
    lfs 0, 0x8c(1)
    stfs 0, -0x8000(3)
    lfs 0, 0x90(1)
    stfs 0, -0x8000(3)
    lfs 0, 0x94(1)
    stfs 0, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 26, -0x8000(3)
    lfs 0, 0x98(1)
    stfs 0, -0x8000(3)
    lfs 0, 0x9c(1)
    stfs 0, -0x8000(3)
    lfs 0, 0xa0(1)
    stfs 0, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 28, -0x8000(3)
    lfs 0, 0xa4(1)
    stfs 0, -0x8000(3)
    lfs 0, 0xa8(1)
    stfs 0, -0x8000(3)
    lfs 0, 0xac(1)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 25, -0x8000(3)
    stfs 28, -0x8000(3)
    .4byte 0x480003A0 # b .L_802F8630
L_802F8294:
    lfs 1, 0x44(1)
    li 3, 0x0
    lfs 0, 0x4c(1)
    fsubs 1, 1, 30
    fsubs 0, 0, 31
    stfs 1, 0x44(1)
    stfs 0, 0x4c(1)
    bl fn_800601C0
    clrlwi. 0, 27, 24
    .4byte 0x418202F0 # beq .L_802F85A8
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xe
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xe
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0x1
    li 5, 0x4
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x1
    li 4, 0x1
    li 5, 0x5
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x2
    bl fn_8005B93C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_802F83CC
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_802F83B4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_802F83B4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_802F83B4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_802F83B4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_802F83B4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_802F83B8
L_802F83B4:
    li 0, 0x1
L_802F83B8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_802F8420
L_802F83CC:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_802F840C
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_802F840C
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_802F840C
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_802F840C
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_802F840C
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_802F840C
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_802F8410
L_802F840C:
    li 0, 0x1
L_802F8410:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802F8420:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_802F8440
    lwz 0, 0x4(4)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802F8440
    bl GetRoomConfigRecord
    lwz 0, 0x50(3)
    .4byte 0x48000008 # b .L_802F8444
L_802F8440:
    li 0, 0x0
L_802F8444:
    addis 3, 28, 0x1
    slwi 0, 0, 2
    add 3, 3, 0
    li 4, 0x1
    lwz 3, -0x1bd8(3)
    bl fn_80092984
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0x4
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0x0
    li 6, 0x8
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x1
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    bl fn_8005E8DC
    li 3, 0x2
    bl fn_8005F11C
    .4byte 0xC002E58C # lfs f0, lbl_8054152C@sda21(r0)
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    fmadds 23, 29, 0, 27
    fmadds 24, 28, 0, 26
    bl fn_8005C24C
    lfs 2, 0x44(1)
    lis 3, 0xcc01
    .4byte 0xC022E558 # lfs f1, lbl_805414F8@sda21(r0)
    stfs 2, -0x8000(3)
    fadds 5, 2, 29
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    lfs 3, 0x48(1)
    stfs 3, -0x8000(3)
    lfs 6, 0x4c(1)
    fadds 4, 6, 28
    stfs 4, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 26, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 23, -0x8000(3)
    stfs 26, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 23, -0x8000(3)
    stfs 24, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 27, -0x8000(3)
    stfs 24, -0x8000(3)
    .4byte 0x48000084 # b .L_802F8628
L_802F85A8:
    li 3, 0x80
    li 4, 0x0
    li 5, 0x4
    bl fn_8005C24C
    lfs 2, 0x44(1)
    lis 3, 0xcc01
    .4byte 0xC022E558 # lfs f1, lbl_805414F8@sda21(r0)
    stfs 2, -0x8000(3)
    fadds 5, 2, 29
    .4byte 0xC002E578 # lfs f0, lbl_80541518@sda21(r0)
    lfs 3, 0x48(1)
    stfs 3, -0x8000(3)
    lfs 6, 0x4c(1)
    fadds 4, 6, 28
    stfs 4, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 4, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 5, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 3, -0x8000(3)
    stfs 6, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 0, -0x8000(3)
L_802F8628:
    li 3, 0x1
    bl fn_800601C0
L_802F8630:
    cmplwi 31, 0x0
    .4byte 0x41820030 # beq .L_802F8664
    lwz 0, 0x30(31)
    cmpwi 0, -0x1
    .4byte 0x41820024 # beq .L_802F8664
    mr 3, 28
    mr 4, 29
    mr 7, 30
    mr 9, 31
    li 5, 0x0
    li 6, 0x0
    li 8, 0x0
    bl fn_802F6800
L_802F8664:
    addi 3, 1, 0xb0
    li 4, -0x1
    bl dtor_80092364
L_802F8670:
    psq_l 31, 0x1c8(1), 0, 0
    lfd 31, 0x1c0(1)
    psq_l 30, 0x1b8(1), 0, 0
    lfd 30, 0x1b0(1)
    psq_l 29, 0x1a8(1), 0, 0
    lfd 29, 0x1a0(1)
    psq_l 28, 0x198(1), 0, 0
    lfd 28, 0x190(1)
    psq_l 27, 0x188(1), 0, 0
    lfd 27, 0x180(1)
    psq_l 26, 0x178(1), 0, 0
    lfd 26, 0x170(1)
    psq_l 25, 0x168(1), 0, 0
    lfd 25, 0x160(1)
    psq_l 24, 0x158(1), 0, 0
    lfd 24, 0x150(1)
    psq_l 23, 0x148(1), 0, 0
    lfd 23, 0x140(1)
    lmw 21, 0x114(1)
    lwz 0, 0x1d4(1)
    mtlr 0
    addi 1, 1, 0x1d0
    blr

