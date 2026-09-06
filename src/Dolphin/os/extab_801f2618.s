.section extab, "a"
.balign 4
.global etb_80008DEC
etb_80008DEC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008DEC, 8

.section extabindex, "a"
.balign 4
.global eti_800164BC
eti_800164BC:
    .4byte fn_801F2618
    .4byte 0x000000B4
    .4byte etb_80008DEC
.size eti_800164BC, 12

.text
.balign 4
.global fn_801F2618

# fn_801F2618(this, outPos) - CONFIRMED (called unconditionally, and
# on every interrupt path, by all 3 RUSA-repel movement-family
# update() overrides - fn_8018299C/fn_8018359C/fn_801840E0, see
# extab_8018299c.s and siblings): "keep my own position resolved
# against my home rectangle." No-ops (returns false) if `this->0x174`
# is already positive (a "position already resolved this
# interrupt/frame" guard). Otherwise calls the CONFIRMED
# `fn_801F23BC(this, this->0x4, this->0xc, this->0x18, this->0x80,
# &localA, &localB)` random-point-in-rectangle picker
# (extab_801f23bc.s) - on success, overwrites `this->0xc/0x10/0x14`
# (the actor's OWN position) with the validated point, and if the
# caller passed a non-null `outPos`, ALSO writes fn_801F23BC's
# secondary output there (a 3-float point - likely the pre-clamp
# candidate or an intermediate value fn_801F172C computed). Every call
# site in the 3 update() functions passes `outPos = NULL` (they only
# care about the position-refresh side effect, not the second value).
fn_801F2618:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    mr 30, 4
    stw 29, 0x24(1)
    mr 29, 3
    lwz 0, 0x174(3)
    cmpwi 0, 0x0
    .4byte 0x41810068 # bgt .L_801F26AC
    lwz 4, 0x4(29)
    mr 10, 5
    addi 5, 29, 0xc
    addi 6, 29, 0x18
    addi 7, 29, 0x80
    addi 8, 1, 0x14
    addi 9, 1, 0x8
    bl fn_801F23BC
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_801F26AC
    lfs 0, 0x14(1)
    cmplwi 30, 0x0
    stfs 0, 0xc(29)
    lfs 0, 0x18(1)
    stfs 0, 0x10(29)
    lfs 0, 0x1c(1)
    stfs 0, 0x14(29)
    .4byte 0x4182001C # beq .L_801F26A8
    lfs 0, 0x8(1)
    stfs 0, 0x0(30)
    lfs 0, 0xc(1)
    stfs 0, 0x4(30)
    lfs 0, 0x10(1)
    stfs 0, 0x8(30)
L_801F26A8:
    li 31, 0x1
L_801F26AC:
    lwz 0, 0x34(1)
    clrlwi 3, 31, 24
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
