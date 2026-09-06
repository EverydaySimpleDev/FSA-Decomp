.section extab, "a"
.balign 4
.global etb_8000CA34
etb_8000CA34:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CA34, 8

.section extabindex, "a"
.balign 4
.global eti_8001B8C8
eti_8001B8C8:
    .4byte fn_802C1EC4
    .4byte 0x00000290
    .4byte etb_8000CA34
.size eti_8001B8C8, 12

.text
.balign 4
.global fn_802C1EC4

# fn_802C1EC4(this) - KEY0's real draw(). Genuinely understood:
#
# 1. Skips drawing entirely under several conditions: mode `this->0x27c
#    ==8`, an inactive-visibility byte (`this->0x2b4==0`), a counter
#    `this->0x280>=0x10`, or `this->0x240<2` (a phase/lifecycle field).
# 2. Builds a default material struct in-line - the SAME 16-byte
#    identity-index-table + blend-flag pattern seen in WIZR's draw()
#    and `fn_801F02BC`'s own default path (confirming this really is a
#    shared, reusable convention, not bespoke to any one actor).
# 3. **"About to disappear" blink warning**: a countdown
#    (`this->0x294`) checked against 4 descending thresholds
#    (`0x2bd4/0x2b20/0x2aa8/0x2a30`), each testing a DIFFERENT bit of the
#    remaining time to force the alpha byte to 0 on a fraction of frames
#    - a flicker that gets faster as the threshold drops, the classic
#    "temporary item about to expire" telegraph.
# 4. **Per-player color tint**: if `this->0xc4` (an "owned by a player"
#    flag) is set, looks up the owning player's color via
#    `fn_8023CB24`/`fn_8023CA88` (new, keyed by `this->0xc8` - a player
#    index/handle) to tint the material's RGB bytes - i.e. a carried key
#    is tinted to match whichever colored Link is holding it, the
#    Four-Swords multiplayer detail.
# 5. Calls the CONFIRMED `fn_801F02BC` (transform-matrix wrapper around
#    the universal renderer `fn_801F06F0`, see
#    [[project_fsa_stal_wizr_full_depth]]) to actually draw.
fn_802C1EC4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    lwz 0, 0x27c(3)
    cmpwi 0, 0x8
    .4byte 0x41820260 # beq .L_802C2140
    lbz 0, 0x2b4(31)
    cmplwi 0, 0x0
    .4byte 0x41820254 # beq .L_802C2140
    lwz 0, 0x280(31)
    cmpwi 0, 0x10
    .4byte 0x40800248 # bge .L_802C2140
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x4180023C # blt .L_802C2140
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_802C1F80
L_802C1F20:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_802C1F80:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_802C1F20
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lbz 0, 0x2ad(31)
    stb 0, 0x1b(1)
    lwz 0, 0x294(31)
    cmpwi 0, 0x2bd4
    .4byte 0x41800014 # blt .L_802C2018
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820050 # beq .L_802C205C
    stb 5, 0x1b(1)
    .4byte 0x48000048 # b .L_802C205C
L_802C2018:
    cmpwi 0, 0x2b20
    .4byte 0x41800014 # blt .L_802C2030
    rlwinm. 0, 0, 0, 29, 29
    .4byte 0x41820038 # beq .L_802C205C
    stb 5, 0x1b(1)
    .4byte 0x48000030 # b .L_802C205C
L_802C2030:
    cmpwi 0, 0x2aa8
    .4byte 0x41800014 # blt .L_802C2048
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820020 # beq .L_802C205C
    stb 5, 0x1b(1)
    .4byte 0x48000018 # b .L_802C205C
L_802C2048:
    cmpwi 0, 0x2a30
    .4byte 0x41800010 # blt .L_802C205C
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x41820008 # beq .L_802C205C
    stb 5, 0x1b(1)
L_802C205C:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_802C2090
    li 0, 0x0
    stb 0, 0x28(1)
    lwz 3, 0xc8(31)
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x25(1)
    lwz 3, 0xc8(31)
    bl fn_8023CA88
    stb 3, 0x24(1)
    .4byte 0x4800000C # b .L_802C2098
L_802C2090:
    lbz 0, 0x2ac(31)
    stb 0, 0x24(1)
L_802C2098:
    lbz 0, 0x2ac(31)
    lwz 5, 0x280(31)
    extsb. 0, 0
    .4byte 0x41820008 # beq .L_802C20AC
    addi 5, 5, 0xa
L_802C20AC:
    li 0, 0x1
    stb 0, 0x35(1)
    lwz 0, 0x240(31)
    lbz 3, 0xc4(31)
    cmpwi 0, 0x7
    mr 8, 3
    .4byte 0x41820020 # beq .L_802C20E4
    cmpwi 0, 0xa
    .4byte 0x41820018 # beq .L_802C20E4
    lwz 0, 0x27c(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_802C20F0
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_802C20F0
L_802C20E4:
    li 0, 0x7
    li 8, 0x1
    stb 0, 0x25(1)
L_802C20F0:
    lbz 0, 0xc4(31)
    li 7, 0x7
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_802C2104
    li 7, -0x1
L_802C2104:
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    lis 3, lbl_8046D580@ha
    addi 4, 3, lbl_8046D580@l
    clrlwi 9, 8, 24
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x2d
    addi 6, 1, 0x8
    li 8, 0x0
    bl fn_801F02BC
    lwz 0, 0x240(31)
    cmpwi 0, 0x7
    .4byte 0x4082000C # bne .L_802C2140
    li 0, 0x0
    stb 0, 0xc4(31)
L_802C2140:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

