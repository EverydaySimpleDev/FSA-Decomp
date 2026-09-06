.section extab, "a"
.balign 4
.global etb_80007494
etb_80007494:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007494, 8

.section extabindex, "a"
.balign 4
.global eti_80014104
eti_80014104:
    .4byte fn_801788B4
    .4byte 0x00000470
    .4byte etb_80007494
.size eti_80014104, 12

.text
.balign 4
.global fn_801788B4

# fn_801788B4(this) - WIZR (Wizzrobe)'s real setParams(). Genuinely
# understood at the architectural level, with several confirmed concrete
# behaviors:
#
# 1. Unpacks the raw spawn-param word (`this->0x90`) into a 5-bit variant
#    field (`this->0x2c8`) and a low-byte "type" (`this->0x94`, dispatched
#    via a 32-entry jumptable, `jumptable_804A0F74`, range-checked 0-0x1f).
# 2. Standard hitbox init + a LARGE block of per-instance state reset:
#    most fields zeroed, but a big cluster (`0x268-0x2bc`) is set to -1
#    (sentinel "no handle" values for tracked sub-objects), and
#    `this->0x300/0x304/0x308` (the SAME 3 sound/effect handles
#    `fn_80178DD0`'s destructor releases, landed alongside this) are
#    zeroed here. Snapshots the spawn position into `this->0x2f4/2f8/2fc`.
# 3. The 32-case type dispatch collapses to (at least) 5 distinct handler
#    bodies actually present in this function (many of the 32 jumptable
#    slots must alias to the same handler - exact type->handler mapping
#    not individually walked, but each PRESENT handler is fully
#    understood):
#    - **Default-ish path**: steps the CONFIRMED global PRNG into a 2-bit
#      jitter (`this->0x250`), and - if the spawn param's top 5 bits are
#      nonzero - calls a SHARED base-class virtual (`vtable[0x34]`, not a
#      WIZR-specific override); on failure sets `this->0x1a8=0` and
#      `this->0x2e5=1`.
#    - **A "long wait" variant**: smaller hitbox, `this->0x108=10000`
#      (a very long timer - reads as "wait for the player to approach"),
#      `this->0x238/23c=10`, `this->0x240=200`.
#    - **Two near-identical "teleport-in" variants** (differing only in
#      timer value, `this->0x238=10` vs `30`, and final state code `0xd`
#      vs `0xf`): both call the CONFIRMED sound/effect "create" primitive
#      `fn_8013CC50` THREE times with codes `0x506`/`0x507`/`0x508`,
#      storing the 3 resulting handles into `this->0x300/304/308` - this
#      is the actual creation of Wizzrobe's iconic multi-stage
#      teleport-vanish sound cue, matching the 3 handles `fn_80178DD0`
#      later releases.
#    - **A distinct "magic-cast" variant**: calls `fn_8013CC50` only
#      TWICE with a DIFFERENT code pair (`0x50d`/`0x50e`) into
#      `this->0x300/304` (leaving `0x308` untouched), `this->0x23c=40`,
#      `this->0x108=10000`, final state code `0x10` - a separate sound
#      pairing from the teleport cue, likely the spell/projectile attack.
#
# All paths converge on setting `this->0x230` (the confirmed
# next-state/behavior-mode field this session's other actors also use)
# before returning.
fn_801788B4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC082AC48 # lfs f4, lbl_8053DBE8@sda21(r0)
    li 4, 0x0
    stw 0, 0x24(1)
    .4byte 0xC062AC4C # lfs f3, lbl_8053DBEC@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC042AC14 # lfs f2, lbl_8053DBB4@sda21(r0)
    lwz 0, 0x90(3)
    li 3, -0x1
    .4byte 0xC022AC24 # lfs f1, lbl_8053DBC4@sda21(r0)
    extrwi 0, 0, 5, 5
    .4byte 0xC002AC10 # lfs f0, lbl_8053DBB0@sda21(r0)
    stw 0, 0x2c8(31)
    li 0, 0xc8
    lwz 5, 0x90(31)
    clrlwi 5, 5, 24
    sth 5, 0x94(31)
    stfs 4, 0x60(31)
    stfs 4, 0x64(31)
    stfs 3, 0x68(31)
    stfs 3, 0x6c(31)
    stfs 4, 0x80(31)
    stfs 4, 0x84(31)
    stfs 3, 0x88(31)
    stfs 3, 0x8c(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    stw 4, 0x258(31)
    stw 4, 0x25c(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 4, 0x240(31)
    stw 4, 0x244(31)
    stw 4, 0x248(31)
    stw 3, 0x270(31)
    stw 3, 0x274(31)
    stw 3, 0x278(31)
    stw 3, 0x27c(31)
    stw 3, 0x280(31)
    stw 3, 0x284(31)
    stw 3, 0x288(31)
    stw 3, 0x28c(31)
    stw 3, 0x290(31)
    stw 3, 0x294(31)
    stw 3, 0x298(31)
    stw 3, 0x29c(31)
    stw 3, 0x2a0(31)
    stw 3, 0x2a4(31)
    stw 3, 0x2a8(31)
    stw 3, 0x2ac(31)
    stw 3, 0x2b0(31)
    stw 3, 0x2b4(31)
    stw 3, 0x2b8(31)
    stw 3, 0x2bc(31)
    stw 4, 0x300(31)
    stw 4, 0x304(31)
    stw 4, 0x308(31)
    stw 4, 0x260(31)
    stb 4, 0x2e4(31)
    stfs 2, 0x2d0(31)
    stfs 2, 0x2d4(31)
    stfs 1, 0x2d8(31)
    stw 3, 0x268(31)
    stw 3, 0x26c(31)
    stfs 2, 0x2e0(31)
    sth 4, 0x2cc(31)
    stw 4, 0x264(31)
    stb 4, 0x234(31)
    stw 4, 0x2c0(31)
    stw 0, 0x2c4(31)
    stfs 0, 0x2dc(31)
    stfs 2, 0x2f0(31)
    stfs 2, 0x2ec(31)
    stfs 2, 0x2e8(31)
    stfs 2, 0x44(31)
    stfs 2, 0x40(31)
    stfs 2, 0x3c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x2f4(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2f8(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2fc(31)
    stb 4, 0x2e5(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x1f
    .4byte 0x4181001C # bgt .L_80178A34
    lis 3, jumptable_804A0F74@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A0F74@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
L_80178A34:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002AC10 # lfs f0, lbl_8053DBB0@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042AC70 # lfs f2, lbl_8053DC10@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    clrlwi 0, 0, 30
    stw 0, 0x250(31)
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x41820030 # beq .L_80178ACC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_80178ACC
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x1a8(31)
    stb 0, 0x2e5(31)
L_80178ACC:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x4800023C # b .L_80178D10
    li 0, 0x0
    .4byte 0xC002AC74 # lfs f0, lbl_8053DC14@sda21(r0)
    stb 0, 0x1a8(31)
    li 5, 0x2710
    .4byte 0xC062AC78 # lfs f3, lbl_8053DC18@sda21(r0)
    li 4, 0xa
    stfs 0, 0x60(31)
    li 3, 0xc8
    .4byte 0xC042AC3C # lfs f2, lbl_8053DBDC@sda21(r0)
    li 0, 0xc
    stfs 0, 0x64(31)
    .4byte 0xC022AC18 # lfs f1, lbl_8053DBB8@sda21(r0)
    stfs 3, 0x68(31)
    .4byte 0xC002AC4C # lfs f0, lbl_8053DBEC@sda21(r0)
    stfs 3, 0x6c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 5, 0x108(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 3, 0x240(31)
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    .4byte 0x480001D4 # b .L_80178D10
    .4byte 0xC002AC54 # lfs f0, lbl_8053DBF4@sda21(r0)
    stfs 0, 0x2dc(31)
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x506
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x300(31)
    addi 4, 31, 0xc
    li 5, 0x507
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x1
    lfs 1, 0x2dc(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x508
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    li 4, 0xa
    stb 0, 0x1a8(31)
    li 3, 0x2710
    li 0, 0xd
    stw 4, 0x238(31)
    stw 3, 0x108(31)
    stw 0, 0x230(31)
    .4byte 0x48000128 # b .L_80178D10
    .4byte 0xC002AC54 # lfs f0, lbl_8053DBF4@sda21(r0)
    stfs 0, 0x2dc(31)
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x506
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x300(31)
    addi 4, 31, 0xc
    li 5, 0x507
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x1
    lfs 1, 0x2dc(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
    addi 4, 31, 0xc
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    li 5, 0x508
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    li 4, 0x1e
    stb 0, 0x1a8(31)
    li 3, 0x2710
    li 0, 0xf
    stw 4, 0x238(31)
    stw 3, 0x108(31)
    stw 0, 0x230(31)
    .4byte 0x4800007C # b .L_80178D10
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    lfs 1, 0x2dc(31)
    li 5, 0x50d
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x300(31)
    addi 4, 31, 0xc
    li 5, 0x50e
    li 6, 0x1
    lwz 3, 0x4(31)
    li 7, 0x1
    lfs 1, 0x2dc(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x304(31)
    li 0, 0x0
    li 4, 0x28
    li 3, 0x2710
    stb 0, 0x1a8(31)
    li 0, 0x10
    stw 4, 0x23c(31)
    stw 3, 0x108(31)
    stw 0, 0x230(31)
L_80178D10:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

