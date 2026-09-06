# THE ROOM-DATA "CODE-INDEXED EVENT FLAG" FAMILY (3 functions, all sharing
# one auto-detected object, all built on the SAME code<->bit-index
# registry). This resolves the "flag/switch query" family flagged as a
# high-leverage target in [[project_fsa_door_key0_full_depth]] - DOOR's
# setParams/update call `fn_802D49A8`/`fn_802D4ADC` directly.
#
# **The shared registry lookup** (present in all 3, with small variations):
# a GLOBAL table at `(*lbl_8053AAF8)->0x4->0xc + 0x2948` (the World/
# PlayField manager confirmed in [[project_fsa_actor_loop_found]]) maps
# arbitrary 16-bit event CODES to fixed BIT POSITIONS, split into
# per-category sub-banks (128 bytes/64 halfwords per category, selected
# by `clamp(eventCategory-7, 0)` when `eventCategory>=8`, else category 0)
# - i.e. this is a shared "intern this code, get its bit index" registry,
# NOT a direct code->flag mapping.
#
# **The per-room flag storage**: a room/layer-specific struct, addressed
# via `room_index*0x280 + layer_index*64` off a shared base, storing TWO
# separate 64-bit bitmasks at fixed offsets - `0x1010/0x1014` for
# `eventCategory<8`, `0x1048/0x104c` for `eventCategory>=8` - i.e. each
# room has its own 128 bits of authored/runtime event-flag state, split
# into 2 banks by category.
#
# - **`fn_802D49A8(this, eventCategory, code)`** - REGISTERS `code` into
#   the shared registry if not already present (the 64-entry
#   search-and-write loop at the top - writes `code` itself into the
#   first empty OR already-matching slot, allocating a fresh bit index if
#   needed), THEN checks whether that bit is currently set in `this`'s
#   room/layer's flag bank. Used once at spawn time (DOOR's setParams)
#   to guarantee this door's flag-code has a registry slot before relying
#   on it every frame.
# - **`fn_802D4ADC(this, eventCategory, code)`** - the READ-ONLY
#   counterpart: searches the SAME registry for `code` but does NOT
#   allocate a new slot if missing (returns 0 immediately if the code was
#   never registered), otherwise checks the same per-room bit. Used every
#   frame (DOOR's update) for cheap repeated polling without side effects.
# - **`fn_802D4C10(this, eventCategory, code)`** - a pure "find `code`'s
#   bit index in the registry, or -1" lookup with NO per-room bit check
#   afterward - just the registry search in isolation. NOTE: this one
#   only scans 16 slots (unrolled 4x4), not 64 like its siblings - exact
#   reason for the smaller search space not confirmed (possibly a
#   category-restricted or historically-earlier variant), flagged
#   honestly rather than guessed.
.text
.balign 4
.global fn_802D49A8
.global fn_802D4ADC
.global fn_802D4C10

fn_802D49A8:
    li 8, 0x8
    srwi 7, 4, 31
    subfc 0, 8, 4
    subi 6, 4, 0x7
    srwi 8, 8, 31
    li 0, 0x40
    subfe 7, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    andc 6, 6, 7
    li 11, 0x0
    slwi 10, 6, 7
    li 9, 0x0
    mtctr 0
L_802D49DC:
    lwz 6, 0x4(8)
    lwz 7, 0xc(6)
    add 6, 7, 9
    addi 0, 6, 0x2948
    lhzx 0, 10, 0
    cmplwi 0, 0x0
    .4byte 0x40820018 # bne .L_802D4A0C
    add 6, 7, 10
    slwi 0, 11, 1
    add 6, 6, 0
    sth 5, 0x2948(6)
    .4byte 0x48000010 # b .L_802D4A18
L_802D4A0C:
    addi 9, 9, 0x2
    addi 11, 11, 0x1
    .4byte 0x4200FFC8 # bdnz .L_802D49DC
L_802D4A18:
    li 7, 0x1
    li 6, 0x0
L_802D4A20:
    cmpwi 11, 0x0
    .4byte 0x41820020 # beq .L_802D4A44
    slwi 0, 6, 1
    slwi 5, 7, 1
    rlwimi 0, 7, 1, 31, 31
    subi 11, 11, 0x1
    mr 7, 5
    mr 6, 0
    .4byte 0x4BFFFFE0 # b .L_802D4A20
L_802D4A44:
    cmpwi 4, 0x8
    .4byte 0x40800034 # bge .L_802D4A7C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x18(3)
    lwz 5, 0x4(4)
    mulli 4, 0, 0x280
    lwz 0, 0x14(3)
    lwz 3, 0xc(5)
    slwi 0, 0, 6
    add 3, 3, 4
    add 3, 3, 0
    lwz 4, 0x1048(3)
    lwz 0, 0x104c(3)
    .4byte 0x48000038 # b .L_802D4AB0
L_802D4A7C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    slwi 0, 4, 3
    lwz 4, 0x18(3)
    lwz 5, 0x4(5)
    mulli 4, 4, 0x280
    lwz 3, 0x14(3)
    lwz 5, 0xc(5)
    slwi 3, 3, 6
    add 4, 5, 4
    add 3, 4, 3
    add 3, 3, 0
    lwz 4, 0x1010(3)
    lwz 0, 0x1014(3)
L_802D4AB0:
    and 3, 7, 0
    li 0, 0x0
    and 4, 6, 4
    xor 3, 3, 0
    xor 0, 4, 0
    or. 0, 3, 0
    .4byte 0x4182000C # beq .L_802D4AD4
    li 3, 0x1
    blr
L_802D4AD4:
    li 3, 0x0
    blr

fn_802D4ADC:
    li 8, 0x8
    srwi 6, 4, 31
    subfc 0, 8, 4
    subi 7, 4, 0x7
    srwi 8, 8, 31
    li 0, 0x40
    subfe 8, 6, 8
    clrlwi 6, 5, 16
    andc 5, 7, 8
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    slwi 9, 5, 7
    li 10, 0x0
    li 8, 0x0
    mtctr 0
L_802D4B14:
    lwz 5, 0x4(7)
    lwz 0, 0xc(5)
    add 5, 0, 8
    addi 0, 5, 0x2948
    lhzx 0, 9, 0
    cmplw 6, 0
    .4byte 0x408200D0 # bne .L_802D4BFC
    cmpwi 10, 0x40
    .4byte 0x4180000C # blt .L_802D4B40
    li 3, 0x0
    blr
L_802D4B40:
    li 9, 0x1
    li 8, 0x0
L_802D4B48:
    cmpwi 10, 0x0
    .4byte 0x41820020 # beq .L_802D4B6C
    slwi 0, 8, 1
    slwi 5, 9, 1
    rlwimi 0, 9, 1, 31, 31
    subi 10, 10, 0x1
    mr 9, 5
    mr 8, 0
    .4byte 0x4BFFFFE0 # b .L_802D4B48
L_802D4B6C:
    cmpwi 4, 0x8
    .4byte 0x40800030 # bge .L_802D4BA0
    lwz 0, 0x18(3)
    lwz 5, 0x4(7)
    mulli 4, 0, 0x280
    lwz 0, 0x14(3)
    lwz 3, 0xc(5)
    slwi 0, 0, 6
    add 3, 3, 4
    add 3, 3, 0
    lwz 4, 0x1048(3)
    lwz 0, 0x104c(3)
    .4byte 0x48000034 # b .L_802D4BD0
L_802D4BA0:
    lwz 5, 0x18(3)
    slwi 0, 4, 3
    lwz 6, 0x4(7)
    mulli 4, 5, 0x280
    lwz 3, 0x14(3)
    lwz 5, 0xc(6)
    slwi 3, 3, 6
    add 4, 5, 4
    add 3, 4, 3
    add 3, 3, 0
    lwz 4, 0x1010(3)
    lwz 0, 0x1014(3)
L_802D4BD0:
    and 3, 9, 0
    li 0, 0x0
    and 4, 8, 4
    xor 3, 3, 0
    xor 0, 4, 0
    or. 0, 3, 0
    .4byte 0x4182000C # beq .L_802D4BF4
    li 3, 0x1
    blr
L_802D4BF4:
    li 3, 0x0
    blr
L_802D4BFC:
    addi 8, 8, 0x2
    addi 10, 10, 0x1
    .4byte 0x4200FF10 # bdnz .L_802D4B14
    li 3, 0x0
    blr

fn_802D4C10:
    li 7, 0x8
    srwi 6, 4, 31
    subfc 0, 7, 4
    subi 3, 4, 0x7
    srwi 4, 7, 31
    li 0, 0x10
    subfe 4, 6, 4
    clrlwi 6, 5, 16
    andc 3, 3, 4
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    slwi 9, 3, 7
    li 3, 0x0
    li 8, 0x0
    mtctr 0
L_802D4C48:
    lwz 4, 0x4(7)
    lwz 5, 0xc(4)
    add 4, 5, 8
    addi 0, 4, 0x2948
    lhzx 0, 9, 0
    cmplw 6, 0
    beqlr
    addi 8, 8, 0x2
    addi 3, 3, 0x1
    add 4, 5, 8
    addi 0, 4, 0x2948
    lhzx 0, 9, 0
    cmplw 6, 0
    beqlr
    addi 8, 8, 0x2
    addi 3, 3, 0x1
    add 4, 5, 8
    addi 0, 4, 0x2948
    lhzx 0, 9, 0
    cmplw 6, 0
    beqlr
    addi 8, 8, 0x2
    addi 3, 3, 0x1
    add 4, 5, 8
    addi 0, 4, 0x2948
    lhzx 0, 9, 0
    cmplw 6, 0
    beqlr
    addi 8, 8, 0x2
    addi 3, 3, 0x1
    .4byte 0x4200FF88 # bdnz .L_802D4C48
    li 3, -0x1
    blr

