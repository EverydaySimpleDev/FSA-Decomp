.section extab, "a"
.balign 4
.global etb_80007C94
etb_80007C94:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007C94, 8

.section extabindex, "a"
.balign 4
.global eti_80014C5C
eti_80014C5C:
    .4byte fn_801B7814
    .4byte 0x00000040
    .4byte etb_80007C94
.size eti_80014C5C, 12

.text
.balign 4
.global fn_801B7814

# fn_801B7814(this) - ROPE's real draw(). Much simpler than most other
# actors seen this session (no material-struct build, no state-based
# sub-model selection): draws a SINGLE model entry from the shared
# model table `lbl_80469168`, indexed by `this->0x280 + 0xB5` (181), at
# uniform scale 1.0 (`lbl_8053EAF0`) via the CONFIRMED universal render
# primitive `fn_801F06F0` - consistent with Rope's simple sprite-like
# in-game appearance (no armor/weapon sub-parts to swap).
fn_801B7814:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022BB50 # lfs f1, lbl_8053EAF0@sda21(r0)
    lis 4, lbl_80469168@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_80469168@l
    fmr 2, 1
    li 6, 0x0
    lwz 5, 0x280(3)
    li 7, 0x0
    addi 5, 5, 0xb5
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

