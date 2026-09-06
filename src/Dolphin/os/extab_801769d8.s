.section extab, "a"
.balign 4
.global etb_80007484
etb_80007484:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007484, 8

.section extabindex, "a"
.balign 4
.global eti_800140EC
eti_800140EC:
    .4byte fn_801769D8
    .4byte 0x000001B0
    .4byte etb_80007484
.size eti_800140EC, 12

.text
.balign 4
.global fn_801769D8

# fn_801769D8(this) - WIZR (Wizzrobe)'s real draw(). Genuinely understood,
# and confirms/extends the already-known universal render pipeline:
#
# 1. SKIPS drawing entirely (no-op return) when the "type" byte
#    (`this->0x94`, set in setParams) is 0x14/0x15-0x17/0x1e/0x1f, OR when
#    the behavior-state field (`this->0x230`) is 0 or 1 - i.e. Wizzrobe is
#    genuinely invisible during several of its own states, matching its
#    iconic "vanish between teleports" gimmick directly at the draw layer
#    (not just via an alpha fade).
# 2. Builds a local MATERIAL/COLOR-BLEND override struct on the stack
#    (matching the "optional caller-supplied material struct" parameter
#    documented on `fn_801F06F0`/`fn_801EF574` in
#    [[project_fsa_rendering_pipeline_foothold]]): a 16-byte identity
#    index table (`buf[i]=i`), then blend-mode/flag bytes and small
#    constants at fixed offsets.
# 3. A SECOND type check (`this->0x94` == 0xa/0xb) also skips drawing -
#    more invisible sub-states, checked after the struct is already built
#    (likely just how the compiler ordered 2 independently-authored gates,
#    not 2 logically distinct checks).
# 4. Converts `this->0x2d0` (a float, presumably fade/alpha) to an int and
#    writes it into the material struct's alpha byte; if `this->0x234`
#    (a boolean flag) is set, overrides the struct's blend-mode word to
#    `0x11` - a distinct rendering mode for whatever that flag represents.
# 5. Calls the CONFIRMED universal render primitive
#    `fn_801F06F0(this, lbl_80466854, jitterScale, materialStruct*,
#    this->0x260+0xe9, mode=0, 0)` - directly reusing the SAME renderer
#    entry point already decoded from other actors this project
#    (see [[project_fsa_rendering_pipeline_foothold]]).
fn_801769D8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    lhz 4, 0x94(3)
    cmplwi 4, 0x14
    .4byte 0x4182018C # beq .L_80176B78
    subi 0, 4, 0x15
    clrlwi 0, 0, 16
    cmplwi 0, 0x2
    .4byte 0x4081017C # ble .L_80176B78
    cmplwi 4, 0x1e
    .4byte 0x41820174 # beq .L_80176B78
    cmplwi 4, 0x1f
    .4byte 0x40820008 # bne .L_80176A14
    .4byte 0x48000168 # b .L_80176B78
L_80176A14:
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x4182015C # beq .L_80176B78
    cmpwi 0, 0x0
    .4byte 0x41820154 # beq .L_80176B78
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    li 11, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80176AA0
L_80176A40:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_80176AA0:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80176A40
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x18(1)
    stw 6, 0x1c(1)
    stw 6, 0x20(1)
    stb 6, 0x24(1)
    stb 6, 0x25(1)
    stb 6, 0x26(1)
    stb 5, 0x27(1)
    stb 5, 0x28(1)
    stb 6, 0x29(1)
    stb 6, 0x2a(1)
    stb 6, 0x2b(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 5, 0x2e(1)
    stw 4, 0x30(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 0, 0x40(1)
    lhz 0, 0x94(3)
    cmplwi 0, 0xa
    .4byte 0x4182005C # beq .L_80176B78
    cmplwi 0, 0xb
    .4byte 0x40820008 # bne .L_80176B2C
    .4byte 0x48000050 # b .L_80176B78
L_80176B2C:
    lfs 0, 0x2d0(3)
    fctiwz 0, 0
    stfd 0, 0x48(1)
    lwz 0, 0x4c(1)
    stb 0, 0x1b(1)
    lbz 0, 0x234(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80176B54
    li 0, 0x11
    stw 0, 0x38(1)
L_80176B54:
    .4byte 0xC022AC10 # lfs f1, lbl_8053DBB0@sda21(r0)
    lis 4, lbl_80466854@ha
    lwz 5, 0x260(3)
    addi 4, 4, lbl_80466854@l
    fmr 2, 1
    addi 6, 1, 0x8
    addi 5, 5, 0xe9
    li 7, 0x0
    bl fn_801F06F0
L_80176B78:
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

