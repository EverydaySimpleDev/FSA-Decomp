.section extab, "a"
.balign 4
.global etb_8000A0B8
etb_8000A0B8:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000A0B8, 8

.section extabindex, "a"
.balign 4
.global eti_80017C5C
eti_80017C5C:
    .4byte fn_80212AF0
    .4byte 0x000000B0
    .4byte etb_8000A0B8
.size eti_80017C5C, 12

.text
.balign 4
.global fn_80212AF0

# fn_80212AF0(registry, pos) - consumes the "active RUSA instances"
# registry (`lbl_804CCDB8`, see project_fsa_rusa_actor_progress.md)
# DIRECTLY (unlike RUSA's own dtor/setParams, which go through the
# lazy-init accessor `RusaRegistry_GetOrInit` first - callers here pass the
# registry pointer straight in). Called from MANY unrelated places
# throughout the codebase (e.g. fn_801DE740, fn_8018299C, fn_8018316C,
# fn_8018359C, fn_80183C18, fn_801840E0, fn_80184A14 - not yet
# individually identified, but their sheer number and spread suggests
# this is invoked from generic per-frame player/actor movement code,
# not anything RUSA-specific). Scans the registry's ID array
# (`registry->0x80` = count), resolving each tracked ID to a live actor
# via `fn_801F666C`, and for the first one whose `fn_80211000(actor,
# pos)` returns true (some kind of "is `pos` inside my zone" test),
# calls `fn_80210E90(actor, pos, &tmp)` to compute an adjustment vector
# into a stack temp, then adds that vector into `*pos` (a paired-single
# add over both X/Z-ish float pairs). Reads as a generic "push this
# position away from whichever tracked RUSA instance's zone it's
# currently inside" proximity/repel utility - i.e. the registry isn't
# just internal bookkeeping, it's consulted externally for gameplay
# (most likely a collision/repel effect applied to the player or other
# actors passing near a RUSA instance).
fn_80212AF0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    li 29, 0x0
    lwz 31, 0x80(3)
    mr 26, 4
    mr 30, 29
    mr 27, 3
    .4byte 0x48000038 # b .L_80212B4C
L_80212B18:
    bl SpatialRegistry_GetBase
    lwz 4, 0x0(27)
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x4182001C # beq .L_80212B44
    mr 4, 26
    bl fn_80211000
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80212B44
    mr 29, 28
    .4byte 0x48000014 # b .L_80212B54
L_80212B44:
    addi 27, 27, 0x4
    addi 30, 30, 0x1
L_80212B4C:
    cmpw 30, 31
    .4byte 0x4180FFC8 # blt .L_80212B18
L_80212B54:
    cmplwi 29, 0x0
    .4byte 0x41820034 # beq .L_80212B8C
    mr 3, 29
    mr 4, 26
    addi 5, 1, 0x8
    bl fn_80210E90
    psq_l 1, 0x0(26), 0, 0
    psq_l 0, 0x8(1), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(26), 0, 0
    psq_l 1, 0x8(26), 1, 0
    psq_l 0, 0x10(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(26), 1, 0
L_80212B8C:
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
