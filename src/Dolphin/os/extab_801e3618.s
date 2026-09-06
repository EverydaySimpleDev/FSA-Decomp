/*
 * Cutscene/camera-cue actor (vtable lbl_804A4958, same class as the
 * already-landed 27-state cue dispatcher `jumptable_804A49FC`).
 * "Is point outside my trigger zone" predicate: builds a box either
 * from a stored interpolated rect (this->0x5e0-0x5e9, using an
 * animation-progress byte pair indexing lbl_8053F528/8053F510) when the
 * owner room is >=8, or from the room-config record (GetRoomConfigRecord) with
 * one of two offset-constant variants selected by flag bit 18, when the
 * owner room is <8 (confirmed fn_801CD2F8 idiom). Returns true iff the
 * given point falls outside that box.
 */
.section extab, "a"
.balign 4
.global etb_80008A08
etb_80008A08:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008A08, 8

.section extabindex, "a"
.balign 4
.global eti_80015F40
eti_80015F40:
    .4byte fn_801E3618
    .4byte 0x00000154
    .4byte etb_80008A08
.size eti_80015F40, 12

.text
.balign 4
.global fn_801E3618

fn_801E3618:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 27, 3
    mr 28, 5
    li 29, 0x0
    mr 3, 4
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    li 31, 0x1
    .4byte 0x4182004C # beq .L_801E3690
    lbz 4, 0x5e8(27)
    lis 3, 0x4330
    lbz 0, 0x5e9(27)
    stw 4, 0xc(1)
    .4byte 0xC822C588 # lfd f1, lbl_8053F528@sda21(r0)
    stw 3, 0x8(1)
    lfs 5, 0x5e0(27)
    lfd 0, 0x8(1)
    stw 0, 0x14(1)
    fsubs 0, 0, 1
    .4byte 0xC042C570 # lfs f2, lbl_8053F510@sda21(r0)
    stw 3, 0x10(1)
    lfs 3, 0x5e4(27)
    fmadds 4, 2, 0, 5
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 3
    .4byte 0x48000088 # b .L_801E3714
L_801E3690:
    lwz 30, 0x5d8(27)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801E36A8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E36AC
L_801E36A8:
    addi 3, 3, 0xdc
L_801E36AC:
    lwz 0, 0x230(27)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820034 # beq .L_801E36E8
    .4byte 0xC082C574 # lfs f4, lbl_8053F514@sda21(r0)
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC062C578 # lfs f3, lbl_8053F518@sda21(r0)
    fadds 5, 4, 1
    lfs 2, 0x4(3)
    fsubs 4, 0, 4
    lfs 1, 0xc(3)
    .4byte 0xC002C57C # lfs f0, lbl_8053F51C@sda21(r0)
    fadds 3, 3, 2
    fsubs 0, 1, 0
    .4byte 0x48000030 # b .L_801E3714
L_801E36E8:
    .4byte 0xC082C578 # lfs f4, lbl_8053F518@sda21(r0)
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC062C580 # lfs f3, lbl_8053F520@sda21(r0)
    fadds 5, 4, 1
    lfs 2, 0x4(3)
    fsubs 4, 0, 4
    lfs 1, 0xc(3)
    .4byte 0xC002C584 # lfs f0, lbl_8053F524@sda21(r0)
    fadds 3, 3, 2
    fsubs 0, 1, 0
L_801E3714:
    lfs 1, 0x0(28)
    fcmpo cr0, 1, 5
    .4byte 0x41800028 # blt .L_801E3744
    lfs 2, 0x4(28)
    fcmpo cr0, 2, 3
    .4byte 0x4180001C # blt .L_801E3744
    fcmpo cr0, 1, 4
    cror eq, gt, eq
    .4byte 0x41820010 # beq .L_801E3744
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801E3748
L_801E3744:
    li 31, 0x0
L_801E3748:
    clrlwi. 0, 31, 24
    .4byte 0x40820008 # bne .L_801E3754
    li 29, 0x1
L_801E3754:
    clrlwi 3, 29, 24
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

