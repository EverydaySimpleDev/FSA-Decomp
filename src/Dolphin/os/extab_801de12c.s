/*
 * TINK (vtable lbl_804A51E4) per-frame hover-target-offset selector.
 * States 0-3 and 0x13-0x14 reset this->0x60/0x64/0x68/0x6c (an offset
 * vector) to a fixed default; every other state indexes a 20+ entry
 * jumptable (jumptable_804A50E0, keyed by fn_801DA96C(&this->0x2a8), the
 * confirmed animation-cue index) picking one of many preset float pairs
 * for the same fields. All paths converge on a shared tail: if the
 * horizontal delta (0x68-0x60) is below epsilon lbl_8053F38C AND flag bit
 * this->0x230:18 is set AND fn_801DA904(&this->0x2a8) is true, the offset
 * is mirrored (negated) to flip which side TINK hovers on; the result is
 * always copied into this->0x70-0x7c as well.
 */
.section extab, "a"
.balign 4
.global etb_800088F8
etb_800088F8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800088F8, 8

.section extabindex, "a"
.balign 4
.global eti_80015DA8
eti_80015DA8:
    .4byte fn_801DE12C
    .4byte 0x000003C4
    .4byte etb_800088F8
.size eti_80015DA8, 12

.text
.balign 4
.global fn_801DE12C

fn_801DE12C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x13
    .4byte 0x40800018 # bge .L_801DE160
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801DE1A4
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801DE168
    .4byte 0x48000048 # b .L_801DE1A4
L_801DE160:
    cmpwi 0, 0x15
    .4byte 0x40800040 # bge .L_801DE1A4
L_801DE168:
    .4byte 0xC022C3E8 # lfs f1, lbl_8053F388@sda21(r0)
    .4byte 0xC002C3F0 # lfs f0, lbl_8053F390@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    .4byte 0x4800033C # b .L_801DE4DC
L_801DE1A4:
    addi 3, 31, 0x2a8
    bl fn_801DA96C
    cmplwi 3, 0x2f
    .4byte 0x418102C0 # bgt .L_801DE470
    lis 4, jumptable_804A50E0@ha
    slwi 0, 3, 2
    addi 3, 4, jumptable_804A50E0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C408 # lfs f0, lbl_8053F3A8@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C440 # lfs f0, lbl_8053F3E0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000284 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C444 # lfs f0, lbl_8053F3E4@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C448 # lfs f0, lbl_8053F3E8@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000260 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C420 # lfs f0, lbl_8053F3C0@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C44C # lfs f0, lbl_8053F3EC@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800023C # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C450 # lfs f0, lbl_8053F3F0@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C454 # lfs f0, lbl_8053F3F4@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000218 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C458 # lfs f0, lbl_8053F3F8@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C3E8 # lfs f0, lbl_8053F388@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480001F4 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C45C # lfs f0, lbl_8053F3FC@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C440 # lfs f0, lbl_8053F3E0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480001D0 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C404 # lfs f0, lbl_8053F3A4@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C440 # lfs f0, lbl_8053F3E0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480001AC # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C3F8 # lfs f0, lbl_8053F398@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C440 # lfs f0, lbl_8053F3E0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000188 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C460 # lfs f0, lbl_8053F400@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C440 # lfs f0, lbl_8053F3E0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000164 # b .L_801DE470
    .4byte 0xC042C464 # lfs f2, lbl_8053F404@sda21(r0)
    .4byte 0xC022C468 # lfs f1, lbl_8053F408@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002C46C # lfs f0, lbl_8053F40C@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000144 # b .L_801DE470
    .4byte 0xC022C464 # lfs f1, lbl_8053F404@sda21(r0)
    .4byte 0xC002C470 # lfs f0, lbl_8053F410@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C468 # lfs f1, lbl_8053F408@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C474 # lfs f0, lbl_8053F414@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000120 # b .L_801DE470
    .4byte 0xC022C478 # lfs f1, lbl_8053F418@sda21(r0)
    .4byte 0xC002C47C # lfs f0, lbl_8053F41C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C428 # lfs f1, lbl_8053F3C8@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C480 # lfs f0, lbl_8053F420@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480000FC # b .L_801DE470
    .4byte 0xC022C478 # lfs f1, lbl_8053F418@sda21(r0)
    .4byte 0xC002C484 # lfs f0, lbl_8053F424@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C448 # lfs f1, lbl_8053F3E8@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C488 # lfs f0, lbl_8053F428@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480000D8 # b .L_801DE470
    .4byte 0xC022C48C # lfs f1, lbl_8053F42C@sda21(r0)
    .4byte 0xC002C490 # lfs f0, lbl_8053F430@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C494 # lfs f1, lbl_8053F434@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C408 # lfs f0, lbl_8053F3A8@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480000B4 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C498 # lfs f0, lbl_8053F438@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C43C # lfs f1, lbl_8053F3DC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C49C # lfs f0, lbl_8053F43C@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000090 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C4A0 # lfs f0, lbl_8053F440@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C4A4 # lfs f1, lbl_8053F444@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C49C # lfs f0, lbl_8053F43C@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800006C # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C490 # lfs f0, lbl_8053F430@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C4A4 # lfs f1, lbl_8053F444@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C450 # lfs f0, lbl_8053F3F0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000048 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C4A8 # lfs f0, lbl_8053F448@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C4A4 # lfs f1, lbl_8053F444@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C414 # lfs f0, lbl_8053F3B4@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000024 # b .L_801DE470
    .4byte 0xC022C438 # lfs f1, lbl_8053F3D8@sda21(r0)
    .4byte 0xC002C49C # lfs f0, lbl_8053F43C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C4A4 # lfs f1, lbl_8053F444@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C440 # lfs f0, lbl_8053F3E0@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_801DE470:
    lfs 2, 0x68(31)
    lfs 1, 0x60(31)
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810038 # ble .L_801DE4BC
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182002C # beq .L_801DE4BC
    addi 3, 31, 0x2a8
    bl fn_801DA904
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801DE4BC
    lfs 0, 0x68(31)
    lfs 2, 0x60(31)
    fneg 1, 0
    fneg 0, 2
    stfs 1, 0x60(31)
    stfs 0, 0x68(31)
L_801DE4BC:
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801DE4DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

