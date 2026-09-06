.section extab, "a"
.balign 4
.global etb_80006EF4
etb_80006EF4:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_80006EF4, 8

.section extabindex, "a"
.balign 4
.global eti_800139FC
eti_800139FC:
    .4byte fn_80155B44
    .4byte 0x00002124
    .4byte etb_80006EF4
.size eti_800139FC, 12

# fn_80155B44 - SLR2's ("Bow Soldier") real update(). Survey-level -
# BY FAR the largest single function landed this entire project (0x2124
# bytes, ~2130 instructions, more than double SLR1's own update()).
# High-level structure only, given the size:
# - Opens with a "hidden in grass" (Type==3) reveal check: uses the
#   confirmed real-time gate GetRoomConfigRecord/fn_802DCD0C plus fn_80226998
#   (angle/delta helper) to track a cached angle at this->0x2aa, and
#   fn_8022517C (a new, unexplored "visibility/concealment" check) to
#   decide when to pop out of hiding (resetting Type to 0/Bow and
#   clearing the hidden flags this->0x278/0x94).
# - Runs the confirmed universal validity gate fn_801F3D94; on failure,
#   makes a REAL VIRTUAL CALL through its own vtable slot 0x54
#   (`lwz r12,0(r31); lwz r12,0x54(r12); mtctr r12; bctrl`) as an early-
#   out hook before releasing state via fn_801F2618.
# - A large state machine (states roughly 0-15, dispatched via a real
#   jump table `jumptable_804A0120` for the bulk of states) implementing
#   weapon-type-dependent attacks: for Type==2 (Bomb), spawns a real bomb-
#   projectile actor via a new helper fn_80154590 (configuring the
#   spawned object's own position/timers/state directly - this->0x3c-44
#   copied onto the target, target->0x90=6, 0x238=200, 0x240=50) after
#   computing a throw offset via fn_801F2718; for other types, gates
#   firing on fn_801F2FAC/fn_801F2DB4 homing checks against literal
#   FourCC filters (one decodes to "NULL", i.e. "any owner").
# - Directly calls fn_801EEC98 (the fully-decoded player-target-
#   acquisition helper, see [[project_fsa_player_target_helper_decoded]])
#   to pick a target player, then fn_801F71A4 (homing turn) to steer
#   toward them - confirming Bow Soldier is a live consumer of that whole
#   subsystem.
# - Several more per-state effect spawns and PRNG-jittered timer resets
#   using the confirmed global LCG.
# Not traced instruction-by-instruction given the size (over 4x any
# previously survey-leveled function in this project) - the FSM shape,
# the two distinct weapon-attack paths, and the confirmed subsystem reuse
# are the load-bearing facts.
.text
.balign 4
.global fn_80155B44

fn_80155B44:
    stwu 1, -0x10e0(1)
    mflr 0
    stw 0, 0x10e4(1)
    li 0, 0x10d8
    stfd 31, 0x10d0(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x10c8
    stfd 30, 0x10c0(1)
    psq_stx 30, 1, 0, 0, 0
    stmw 27, 0x10ac(1)
    mr 31, 3
    lis 3, lbl_8049FDA8@ha
    psq_l 2, 0xc(31), 0, 0
    li 0, 0x0
    lfs 1, 0x14(31)
    addi 29, 3, lbl_8049FDA8@l
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 28, 0x0
    psq_st 2, 0x84(1), 0, 0
    li 30, 0x1
    stfs 1, 0x8c(1)
    sth 0, 0x8(1)
    stfs 0, 0x10(1)
    stw 0, 0xc(1)
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x40820080 # bne .L_80155C2C
    lhz 0, 0x2aa(31)
    cmplwi 0, 0xffff
    .4byte 0x40820038 # bne .L_80155BF0
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40822074 # bne .L_80157C3C
    lwz 4, 0x4(31)
    addi 3, 1, 0x1c
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x20(1)
    bl fn_80226998
    sth 3, 0x2aa(31)
    .4byte 0x48002050 # b .L_80157C3C
L_80155BF0:
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x14(1)
    stfs 1, 0x18(1)
    bl fn_80226998
    lhz 0, 0x2aa(31)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41822024 # beq .L_80157C3C
    li 3, 0x28
    li 0, 0x0
    stw 3, 0x254(31)
    sth 0, 0x94(31)
L_80155C2C:
    lwz 0, 0x254(31)
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_80155C58
    lis 3, 0x1
    addi 0, 3, 0x2205
    stw 0, 0xb0(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x4082000C # bne .L_80155C58
    addi 0, 3, 0x2202
    stw 0, 0xb0(31)
L_80155C58:
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x40820068 # bne .L_80155CC8
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x21
    .4byte 0x41820050 # beq .L_80155CC8
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022517C
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_80155CC8
    .4byte 0xC002A3DC # lfs f0, lbl_8053D37C@sda21(r0)
    lis 4, 0x1
    li 5, 0x0
    li 3, 0x2
    stfs 0, 0x298(31)
    addi 4, 4, 0x2205
    li 0, 0x1
    stw 5, 0x278(31)
    sth 5, 0x94(31)
    stw 4, 0xb0(31)
    stw 5, 0x90(31)
    stw 3, 0xbc(31)
    stw 0, 0xb8(31)
    stw 5, 0x230(31)
L_80155CC8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x41820020 # beq .L_80155CF0
    cmpwi 0, 0xb
    .4byte 0x41820018 # beq .L_80155CF0
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x40820010 # bne .L_80155CF4
    li 30, 0x0
    .4byte 0x48000008 # b .L_80155CF4
L_80155CF0:
    li 30, 0x0
L_80155CF4:
    mr 3, 31
    clrlwi 4, 30, 24
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182005C # beq .L_80155D60
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x40820020 # bne .L_80155D30
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
L_80155D30:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40821EF4 # bne .L_80157C3C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48001EE0 # b .L_80157C3C
L_80155D60:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x4182030C # beq .L_80156074
    cmpwi 0, 0xb
    .4byte 0x41820304 # beq .L_80156074
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820330 # bne .L_801560AC
    lwz 0, 0x90(31)
    lis 3, 0x4e55
    addi 27, 3, 0x4c4c
    cmplwi 0, 0x2
    .4byte 0x408201AC # bne .L_80155F3C
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x408201A0 # bne .L_80155F3C
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x40800194 # bge .L_80155F3C
    .4byte 0xC022A3E8 # lfs f1, lbl_8053D388@sda21(r0)
    addi 3, 31, 0x60
    .4byte 0xC062A3EC # lfs f3, lbl_8053D38C@sda21(r0)
    fmr 2, 1
    fmr 4, 3
    bl fn_80154590
    lis 4, 0x4842
    mr 3, 31
    addi 4, 4, 0x4d42
    bl fn_801F2718
    .4byte 0xC022A3F0 # lfs f1, lbl_8053D390@sda21(r0)
    .4byte 0xC062A3F4 # lfs f3, lbl_8053D394@sda21(r0)
    fmr 2, 1
    stw 3, 0x284(31)
    fmr 4, 3
    addi 3, 31, 0x60
    bl fn_80154590
    lwz 30, 0x284(31)
    cmpwi 30, 0x0
    .4byte 0x41800144 # blt .L_80155F3C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820128 # beq .L_80155F34
    lwz 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x41820110 # beq .L_80155F28
    lhz 0, 0x94(30)
    cmplwi 0, 0x0
    .4byte 0x40820104 # bne .L_80155F28
    lfs 3, 0xc(30)
    lis 3, lbl_80534C00@ha
    lfs 1, 0xc(31)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x10(30)
    lfs 0, 0x10(31)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002A3F8 # lfs f0, lbl_8053D398@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x1090(1)
    lwz 0, 0x1094(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    addi 3, 1, 0x84
    addi 4, 31, 0xc
    bl fn_801583E4
    lwz 0, 0x98(31)
    addi 5, 29, 0x0
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    addi 3, 1, 0x60
    slwi 0, 0, 3
    lfs 5, 0x84(1)
    add 4, 5, 0
    lfsx 3, 5, 0
    lfs 4, 0x8c(1)
    fmr 2, 1
    lfs 0, 0x4(4)
    fadds 5, 5, 3
    fmr 3, 1
    fadds 0, 4, 0
    stfs 5, 0x84(1)
    stfs 0, 0x8c(1)
    bl fn_801583D4
    psq_l 1, 0x60(1), 0, 0
    lis 3, 0x4842
    lfs 0, 0x68(1)
    li 8, 0x6
    li 7, 0x0
    li 6, 0xc8
    psq_st 1, 0x3c(30), 0, 0
    li 5, 0x32
    li 4, 0x1
    li 0, 0x14
    stfs 0, 0x44(30)
    addi 27, 3, 0x4d42
    psq_l 1, 0x84(1), 0, 0
    lfs 0, 0x8c(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    stw 8, 0x90(30)
    stw 7, 0x24c(30)
    stw 6, 0x238(30)
    stw 5, 0x240(30)
    stw 7, 0x230(30)
    stw 7, 0x238(31)
    stw 7, 0x23c(31)
    stw 4, 0x25c(31)
    stw 4, 0x260(31)
    stw 0, 0x258(31)
    .4byte 0x48000018 # b .L_80155F3C
L_80155F28:
    li 0, -0x1
    stw 0, 0x284(31)
    .4byte 0x4800000C # b .L_80155F3C
L_80155F34:
    li 0, -0x1
    stw 0, 0x284(31)
L_80155F3C:
    lwz 0, 0x290(31)
    cmpwi 0, 0x2
    .4byte 0x41820168 # beq .L_801560AC
    cmpwi 0, 0x3
    .4byte 0x41820160 # beq .L_801560AC
    cmpwi 0, 0x4
    .4byte 0x41820158 # beq .L_801560AC
    cmpwi 0, 0x5
    .4byte 0x41820150 # beq .L_801560AC
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80155F90
    lis 4, 0x4e55
    mr 3, 31
    mr 5, 27
    li 6, 0x0
    addi 4, 4, 0x4c4c
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_801560AC
L_80155F90:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_80155FA4
    li 0, 0x2
    stw 0, 0xbc(31)
L_80155FA4:
    lwz 3, 0x90(31)
    cmplwi 3, 0x3
    .4byte 0x40820034 # bne .L_80155FE0
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    bl fn_801F2618
    .4byte 0x48001C60 # b .L_80157C3C
L_80155FE0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4182002C # beq .L_80156014
    cmpwi 0, 0xc
    .4byte 0x41820024 # beq .L_80156014
    cmpwi 0, 0xd
    .4byte 0x4182001C # beq .L_80156014
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_80156014
    cmplwi 3, 0x2
    .4byte 0x4182000C # beq .L_80156014
    li 0, 0x3
    stw 0, 0x230(31)
L_80156014:
    lwz 27, 0x284(31)
    cmpwi 27, 0x0
    .4byte 0x41800044 # blt .L_80156060
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    mr. 27, 3
    .4byte 0x41820028 # beq .L_80156058
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    addi 3, 1, 0x54
    .4byte 0xC062A3FC # lfs f3, lbl_8053D39C@sda21(r0)
    fmr 2, 1
    bl fn_801583D4
    psq_l 1, 0x54(1), 0, 0
    lfs 0, 0x5c(1)
    psq_st 1, 0x3c(27), 0, 0
    stfs 0, 0x44(27)
L_80156058:
    li 0, -0x1
    stw 0, 0x284(31)
L_80156060:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48001BCC # b .L_80157C3C
L_80156074:
    lis 4, 0x424c
    lis 5, 0x4e55
    mr 3, 31
    li 6, 0x0
    addi 4, 4, 0x5a45
    addi 5, 5, 0x4c4c
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801560AC
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48001B94 # b .L_80157C3C
L_801560AC:
    lwz 0, 0x230(31)
    cmpwi 0, 0xc
    .4byte 0x41820128 # beq .L_801561DC
    cmpwi 0, 0xd
    .4byte 0x41820120 # beq .L_801561DC
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0xc
    addi 7, 1, 0x10
    addi 8, 31, 0x268
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0xc(1)
    cmpwi 0, -0x1
    .4byte 0x40820034 # bne .L_80156120
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_80156104
    cmpwi 0, 0x4
    .4byte 0x4082000C # bne .L_8015610C
L_80156104:
    li 0, 0x0
    stw 0, 0x230(31)
L_8015610C:
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_80156120
    li 0, 0xb
    stw 0, 0x230(31)
L_80156120:
    lfs 1, 0x2ac(31)
    addi 3, 31, 0x3c
    .4byte 0xC042A400 # lfs f2, lbl_8053D3A0@sda21(r0)
    .4byte 0xC062A3DC # lfs f3, lbl_8053D37C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x2b0(31)
    addi 3, 31, 0x40
    .4byte 0xC042A400 # lfs f2, lbl_8053D3A0@sda21(r0)
    .4byte 0xC062A3DC # lfs f3, lbl_8053D37C@sda21(r0)
    bl fn_801F71A4
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    .4byte 0xC002A404 # lfs f0, lbl_8053D3A4@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x298(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810018 # ble .L_8015618C
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_8015618C:
    lwz 0, 0x9c(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_801561AC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x10
    li 5, 0x0
    bl fn_801F0E34
L_801561AC:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801561C8
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_801561C8
    cmpwi 0, 0x5
    .4byte 0x40820018 # bne .L_801561DC
L_801561C8:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    mr 28, 3
L_801561DC:
    lwz 0, 0x230(31)
    cmplwi 0, 0xf
    .4byte 0x41811858 # bgt .L_80157A3C
    lis 3, jumptable_804A0120@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A0120@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    clrlwi. 0, 28, 24
    .4byte 0x4182006C # beq .L_80156270
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80156270
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 4, 0x8
    addi 3, 29, 0x160
    li 0, 0x1
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 4, 0x238(31)
    lwz 4, 0x98(31)
    addi 4, 4, 0x1
    stw 4, 0x98(31)
    lwz 4, 0x98(31)
    clrlwi 4, 4, 30
    stw 4, 0x98(31)
    lwz 4, 0x98(31)
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x274(31)
    stw 0, 0x230(31)
    .4byte 0x480017D0 # b .L_80157A3C
L_80156270:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_801562C8
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 0, 0x0
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stw 0, 0x25c(31)
    bl fn_80154744
    .4byte 0xC002A408 # lfs f0, lbl_8053D3A8@sda21(r0)
    li 3, 0x8
    li 0, 0x2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1090(1)
    lwz 4, 0x1094(1)
    addi 4, 4, 0x1
    stw 4, 0x260(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48001778 # b .L_80157A3C
L_801562C8:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_80156300
    lwz 4, 0x25c(31)
    addi 3, 29, 0x150
    addi 0, 4, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 30
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(31)
L_80156300:
    lwz 4, 0x98(31)
    addi 3, 29, 0x110
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80156340
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80156340
    li 0, 0x3
    stw 0, 0x230(31)
L_80156340:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408216F4 # bne .L_80157A3C
    lwz 3, 0xc(1)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x408216E4 # bne .L_80157A3C
    lfs 1, 0x10(1)
    .4byte 0xC002A40C # lfs f0, lbl_8053D3AC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408216D0 # bne .L_80157A3C
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480016C4 # b .L_80157A3C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408216B8 # bne .L_80157A3C
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_801563E8
    .4byte 0x40800014 # bge .L_801563A8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801563B4
    .4byte 0x4080002C # bge .L_801563CC
    .4byte 0x48000074 # b .L_80156418
L_801563A8:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_80156418
    .4byte 0x48000050 # b .L_80156400
L_801563B4:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 1, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x48000050 # b .L_80156418
L_801563CC:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    fneg 1, 1
    stfs 1, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x48000034 # b .L_80156418
L_801563E8:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x4800001C # b .L_80156418
L_80156400:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    fneg 1, 1
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stfs 0, 0x2b4(31)
L_80156418:
    li 3, 0x0
    li 0, 0x14
    stw 3, 0x25c(31)
    stw 0, 0x238(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0xa
    .4byte 0x4080000C # bge .L_8015643C
    li 0, 0xa
    stw 0, 0x23c(31)
L_8015643C:
    li 3, 0xa
    li 0, 0x0
    stw 3, 0x24c(31)
    stw 0, 0x230(31)
    .4byte 0x480015F0 # b .L_80157A3C
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820164 # bne .L_801565BC
    lwz 3, 0x25c(31)
    li 0, 0xf
    addi 3, 3, 0x1
    stw 3, 0x25c(31)
    lwz 3, 0x25c(31)
    clrlwi 3, 3, 30
    stw 3, 0x25c(31)
    stw 0, 0x238(31)
    lwz 3, 0x260(31)
    cmpwi 3, 0x0
    .4byte 0x41810124 # bgt .L_801565A8
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4082002C # bne .L_801564BC
    bl fn_80154744
    .4byte 0xC002A410 # lfs f0, lbl_8053D3B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801564B0
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x48000034 # b .L_801564E0
L_801564B0:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000028 # b .L_801564E0
L_801564BC:
    bl fn_80154744
    .4byte 0xC002A410 # lfs f0, lbl_8053D3B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801564D8
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801564E0
L_801564D8:
    li 0, 0x1
    stw 0, 0x98(31)
L_801564E0:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_80156540
    .4byte 0x40800014 # bge .L_80156500
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8015650C
    .4byte 0x4080002C # bge .L_80156524
    .4byte 0x48000074 # b .L_80156570
L_80156500:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_80156570
    .4byte 0x48000050 # b .L_80156558
L_8015650C:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 1, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x48000050 # b .L_80156570
L_80156524:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    fneg 1, 1
    stfs 1, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x48000034 # b .L_80156570
L_80156540:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x4800001C # b .L_80156570
L_80156558:
    lfs 1, 0x2a4(31)
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    fneg 1, 1
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stfs 0, 0x2b4(31)
L_80156570:
    bl fn_80154744
    .4byte 0xC002A414 # lfs f0, lbl_8053D3B4@sda21(r0)
    li 3, 0x0
    li 0, 0x8
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1090(1)
    lwz 4, 0x1094(1)
    addi 4, 4, 0x32
    stw 4, 0x23c(31)
    stw 3, 0x25c(31)
    stw 0, 0x238(31)
    stw 3, 0x230(31)
    .4byte 0x48000018 # b .L_801565BC
L_801565A8:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801565BC
    subi 0, 3, 0x1
    stw 0, 0x260(31)
L_801565BC:
    lwz 4, 0x98(31)
    addi 3, 29, 0x1b0
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    lwz 5, 0xc(1)
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x40820020 # bne .L_80156600
    lfs 1, 0x10(1)
    .4byte 0xC002A40C # lfs f0, lbl_8053D3AC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80156600
    li 0, 0x3
    stw 0, 0x230(31)
L_80156600:
    lwz 4, 0x98(31)
    addi 3, 29, 0x170
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x4800141C # b .L_80157A3C
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 5, 0x0
    li 0, 0x14
    addi 3, 1, 0x84
    stfs 0, 0x2b4(31)
    addi 4, 31, 0xc
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stw 5, 0x25c(31)
    stw 5, 0x260(31)
    stw 5, 0x264(31)
    stw 5, 0x268(31)
    stw 5, 0x26c(31)
    stw 5, 0x270(31)
    stw 5, 0x238(31)
    stw 0, 0x23c(31)
    bl fn_801583E4
    lfs 2, 0x88(1)
    addi 4, 1, 0x84
    .4byte 0xC002A418 # lfs f0, lbl_8053D3B8@sda21(r0)
    li 5, 0x33b
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    li 6, 0x0
    fsubs 0, 2, 0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x88(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x63
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    bl fn_80154744
    .4byte 0xC002A41C # lfs f0, lbl_8053D3BC@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1090(1)
    lwz 3, 0x1094(1)
    addi 0, 3, 0xfa
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x27c(31)
    lis 0, 0x4330
    stw 0, 0x1098(1)
    clrlwi 0, 3, 29
    .4byte 0xC862A468 # lfd f3, lbl_8053D408@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002A420 # lfs f0, lbl_8053D3C0@sda21(r0)
    stw 0, 0x109c(1)
    lfd 2, 0x1098(1)
    fsubs 2, 2, 3
    fmuls 1, 2, 1
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10a0(1)
    lwz 3, 0x10a4(1)
    addi 0, 3, 0x46
    stw 0, 0x240(31)
    lwz 0, 0xc(1)
    cmpwi 0, -0x1
    .4byte 0x41820008 # beq .L_80156740
    stw 0, 0x98(31)
L_80156740:
    li 0, 0x0
    stw 0, 0x264(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80156764
    lis 3, 0x1
    subi 0, 3, 0x4000
    stw 0, 0x264(31)
    .4byte 0x4800002C # b .L_8015678C
L_80156764:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80156778
    li 0, 0x4000
    stw 0, 0x264(31)
    .4byte 0x48000018 # b .L_8015678C
L_80156778:
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_8015678C
    lis 3, 0x1
    addi 0, 3, -0x8000
    stw 0, 0x264(31)
L_8015678C:
    bl fn_80154744
    .4byte 0xC002A404 # lfs f0, lbl_8053D3A4@sda21(r0)
    li 0, 0x4
    .4byte 0xC042A424 # lfs f2, lbl_8053D3C4@sda21(r0)
    fmuls 1, 0, 1
    lfs 0, 0x2a4(31)
    fmadds 0, 2, 0, 1
    stfs 0, 0x294(31)
    stw 0, 0x230(31)
    lwz 0, 0x280(31)
    cmpwi 0, -0x2
    .4byte 0x40820030 # bne .L_801567E8
    bl fn_80154744
    .4byte 0xC002A40C # lfs f0, lbl_8053D3AC@sda21(r0)
    li 0, 0x5
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10a0(1)
    lwz 3, 0x10a4(1)
    addi 3, 3, 0x96
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48001258 # b .L_80157A3C
L_801567E8:
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x4180001C # blt .L_8015680C
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_8015680C
    li 0, 0x14
    stw 0, 0x240(31)
    stw 0, 0x244(31)
L_8015680C:
    clrlwi. 0, 28, 24
    .4byte 0x4182002C # beq .L_8015683C
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 3, 0x264(31)
    addi 0, 3, 0x4000
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    rlwinm 0, 0, 0, 16, 19
    stw 0, 0x264(31)
L_8015683C:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x40820204 # bne .L_80156A48
    lwz 3, 0x268(31)
    cmpwi 3, 0x0
    .4byte 0x418001F8 # blt .L_80156A48
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418201EC # beq .L_80156A48
    lwz 0, 0xc(1)
    cmpwi 0, -0x1
    .4byte 0x41820008 # beq .L_80156870
    stw 0, 0x98(31)
L_80156870:
    lwz 0, 0x264(31)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    lwz 3, 0x268(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 31, 4, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002A428 # lfs f0, lbl_8053D3C8@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    lwz 0, 0x264(31)
    addi 30, 3, 0x4
    fmadds 1, 0, 31, 1
    lfs 0, 0xc(31)
    rlwinm 0, 0, 30, 18, 28
    lwz 3, 0x268(31)
    lfsx 31, 30, 0
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    .4byte 0xC022A428 # lfs f1, lbl_8053D3C8@sda21(r0)
    lfs 0, 0x10(31)
    fmadds 1, 1, 31, 2
    fsubs 31, 0, 1
    fmuls 0, 31, 31
    fmadds 1, 30, 30, 0
    bl fn_80154378
    stfs 1, 0x10(1)
    fneg 1, 30
    lis 3, lbl_80534C00@ha
    fneg 2, 31
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002A3F8 # lfs f0, lbl_8053D398@sda21(r0)
    lwz 3, 0xc(1)
    fmuls 0, 1, 0
    cmpwi 3, -0x1
    fctiwz 0, 0
    stfd 0, 0x10a0(1)
    lwz 0, 0x10a4(1)
    sth 0, 0x8(1)
    .4byte 0x41820008 # beq .L_80156920
    stw 3, 0x98(31)
L_80156920:
    lwz 27, 0x280(31)
    cmpwi 27, 0x0
    .4byte 0x418000E8 # blt .L_80156A10
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x408200DC # bne .L_80156A10
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200C8 # beq .L_80156A10
    lfs 3, 0xc(3)
    lfs 2, 0xc(31)
    lfs 1, 0x10(3)
    lfs 0, 0x10(31)
    fsubs 31, 3, 2
    fsubs 30, 1, 0
    bl fn_80154744
    lwz 3, 0x27c(31)
    lis 0, 0x4330
    stw 0, 0x10a0(1)
    fmuls 0, 30, 30
    clrlwi 0, 3, 29
    .4byte 0xC862A468 # lfd f3, lbl_8053D408@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x10a4(1)
    lfd 2, 0x10a0(1)
    fsubs 2, 2, 3
    fmuls 2, 2, 1
    fmadds 1, 31, 31, 0
    fctiwz 0, 2
    stfd 0, 0x1098(1)
    lwz 3, 0x109c(1)
    addi 0, 3, 0x14
    stw 0, 0x250(31)
    bl fn_80154378
    .4byte 0xC002A42C # lfs f0, lbl_8053D3CC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810058 # ble .L_80156A10
    fmr 1, 31
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002A3F8 # lfs f0, lbl_8053D398@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10a0(1)
    lwz 0, 0x10a4(1)
    sth 0, 0x8(1)
    bl fn_80154744
    .4byte 0xC042A434 # lfs f2, lbl_8053D3D4@sda21(r0)
    .4byte 0xC002A430 # lfs f0, lbl_8053D3D0@sda21(r0)
    lhz 0, 0x8(1)
    fnmsubs 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0x1098(1)
    lwz 3, 0x109c(1)
    add 0, 0, 3
    sth 0, 0x8(1)
L_80156A10:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0x294(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x2ac(31)
    lhz 0, 0x8(1)
    lfs 1, 0x294(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 30, 0
    fmuls 0, 1, 0
    stfs 0, 0x2b0(31)
L_80156A48:
    lfs 1, 0x10(1)
    .4byte 0xC002A438 # lfs f0, lbl_8053D3D8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80156A64
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_80156A70
L_80156A64:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820FD0 # bne .L_80157A3C
L_80156A70:
    li 0, 0x0
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stw 0, 0x25c(31)
    li 3, 0x8
    li 0, 0x6
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000FA4 # b .L_80157A3C
    clrlwi. 0, 28, 24
    .4byte 0x41820088 # beq .L_80156B28
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x234(31)
    li 0, 0x28
    stw 0, 0x248(31)
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_80156B10
    bl fn_80154744
    .4byte 0xC002A410 # lfs f0, lbl_8053D3B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_80156AF4
    lhz 3, 0x234(31)
    subi 0, 3, 0x4000
    sth 0, 0x234(31)
    .4byte 0x48000010 # b .L_80156B00
L_80156AF4:
    lhz 3, 0x234(31)
    addi 0, 3, 0x4000
    sth 0, 0x234(31)
L_80156B00:
    lwz 3, 0x26c(31)
    addi 0, 3, 0x1
    stw 0, 0x26c(31)
    .4byte 0x4800001C # b .L_80156B28
L_80156B10:
    li 0, 0x0
    stw 0, 0x26c(31)
    lhz 3, 0x234(31)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    sth 0, 0x234(31)
L_80156B28:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80156B4C
    lhz 3, 0x8(1)
    li 0, 0x0
    addis 3, 3, 0x1
    addi 3, 3, -0x8000
    sth 3, 0x234(31)
    stw 0, 0x26c(31)
L_80156B4C:
    lhz 3, 0x234(31)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A424 # lfs f1, lbl_8053D3C4@sda21(r0)
    lhz 0, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x2ac(31)
    lhz 0, 0x234(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x2b0(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820EA4 # bne .L_80157A3C
    li 0, 0x14
    stw 0, 0x238(31)
    bl fn_80154744
    .4byte 0xC002A414 # lfs f0, lbl_8053D3B4@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10a0(1)
    lwz 3, 0x10a4(1)
    addi 0, 3, 0x32
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x27c(31)
    lis 0, 0x4330
    stw 0, 0x1098(1)
    li 0, 0x0
    clrlwi 3, 3, 29
    .4byte 0xC862A468 # lfd f3, lbl_8053D408@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stw 3, 0x109c(1)
    lfd 2, 0x1098(1)
    fsubs 2, 2, 3
    fmuls 1, 2, 1
    fctiwz 1, 1
    stfd 1, 0x1090(1)
    lwz 3, 0x1094(1)
    addi 3, 3, 0x1e
    stw 3, 0x240(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stw 0, 0x230(31)
    .4byte 0x48000E20 # b .L_80157A3C
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_80156C30
    stw 0, 0x98(31)
L_80156C30:
    lwz 3, 0x280(31)
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_80156C58
    lfs 1, 0x10(1)
    .4byte 0xC002A40C # lfs f0, lbl_8053D3AC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810024 # bgt .L_80156C6C
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x41800018 # blt .L_80156C6C
L_80156C58:
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_80156C78
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80156C78
L_80156C6C:
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x48000DC8 # b .L_80157A3C
L_80156C78:
    cmpwi 3, -0x2
    .4byte 0x4082001C # bne .L_80156C98
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000DA8 # b .L_80157A3C
L_80156C98:
    li 0, 0xa
    stw 0, 0x23c(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41820028 # beq .L_80156CD0
    lwz 4, 0x98(31)
    addi 3, 29, 0x1f0
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x48000D70 # b .L_80157A3C
L_80156CD0:
    lwz 4, 0x25c(31)
    li 3, 0x8
    addi 0, 4, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 30
    stw 0, 0x25c(31)
    stw 3, 0x238(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x2
    .4byte 0x41820174 # beq .L_80156E6C
    .4byte 0x40800010 # bge .L_80156D0C
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80156D18
    .4byte 0x480003A4 # b .L_801570AC
L_80156D0C:
    cmpwi 0, 0x4
    .4byte 0x4080039C # bge .L_801570AC
    .4byte 0x48000364 # b .L_80157078
L_80156D18:
    li 0, 0xf
    stw 0, 0x238(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_80156DCC
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 3, 0x0
    li 0, 0x14
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stw 3, 0x25c(31)
    stw 3, 0x260(31)
    stw 3, 0x264(31)
    stw 3, 0x268(31)
    stw 3, 0x26c(31)
    stw 3, 0x270(31)
    stw 0, 0x238(31)
    bl fn_80154744
    .4byte 0xC002A414 # lfs f0, lbl_8053D3B4@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10a0(1)
    lwz 3, 0x10a4(1)
    addi 0, 3, 0x32
    stw 0, 0x23c(31)
    bl fn_80154744
    lwz 3, 0x27c(31)
    lis 0, 0x4330
    stw 0, 0x1098(1)
    li 0, 0x0
    clrlwi 3, 3, 29
    .4byte 0xC842A468 # lfd f2, lbl_8053D408@sda21(r0)
    xoris 3, 3, 0x8000
    stw 3, 0x109c(1)
    lfd 0, 0x1098(1)
    fsubs 0, 0, 2
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1090(1)
    lwz 3, 0x1094(1)
    addi 3, 3, 0x1e
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x480002E4 # b .L_801570AC
L_80156DCC:
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x418202D8 # beq .L_801570AC
    stw 3, 0x238(31)
    li 0, 0xa
    stw 0, 0x244(31)
    bl fn_80154744
    lwz 3, 0x27c(31)
    lis 0, 0x4330
    stw 0, 0x10a0(1)
    li 0, 0x4
    clrlwi 3, 3, 29
    .4byte 0xC862A468 # lfd f3, lbl_8053D408@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC002A428 # lfs f0, lbl_8053D3C8@sda21(r0)
    stw 3, 0x10a4(1)
    lfd 2, 0x10a0(1)
    fsubs 2, 2, 3
    fmuls 1, 2, 1
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x1098(1)
    lwz 3, 0x109c(1)
    addi 3, 3, 0x46
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    lwz 0, 0x280(31)
    cmpwi 0, -0x2
    .4byte 0x40820270 # bne .L_801570AC
    bl fn_80154744
    .4byte 0xC002A40C # lfs f0, lbl_8053D3AC@sda21(r0)
    li 0, 0x5
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x10a0(1)
    lwz 3, 0x10a4(1)
    addi 3, 3, 0x96
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000244 # b .L_801570AC
L_80156E6C:
    addi 3, 1, 0x84
    addi 4, 31, 0xc
    bl fn_801583E4
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x418200AC # beq .L_80156F2C
    .4byte 0x40800014 # bge .L_80156E98
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80156EA4
    .4byte 0x40800058 # bge .L_80156EE8
    .4byte 0x480000CC # b .L_80156F60
L_80156E98:
    cmpwi 0, 0x4
    .4byte 0x408000C4 # bge .L_80156F60
    .4byte 0x480000A0 # b .L_80156F40
L_80156EA4:
    lfs 1, 0x84(1)
    .4byte 0xC002A438 # lfs f0, lbl_8053D3D8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x84(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_80156ED4
    lfs 1, 0x88(1)
    .4byte 0xC002A420 # lfs f0, lbl_8053D3C0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x88(1)
    .4byte 0x48000090 # b .L_80156F60
L_80156ED4:
    lfs 1, 0x88(1)
    .4byte 0xC002A43C # lfs f0, lbl_8053D3DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x88(1)
    .4byte 0x4800007C # b .L_80156F60
L_80156EE8:
    lfs 1, 0x84(1)
    .4byte 0xC002A438 # lfs f0, lbl_8053D3D8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x84(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x40820018 # bne .L_80156F18
    lfs 1, 0x88(1)
    .4byte 0xC002A420 # lfs f0, lbl_8053D3C0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x88(1)
    .4byte 0x4800004C # b .L_80156F60
L_80156F18:
    lfs 1, 0x88(1)
    .4byte 0xC002A43C # lfs f0, lbl_8053D3DC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x88(1)
    .4byte 0x48000038 # b .L_80156F60
L_80156F2C:
    lfs 1, 0x84(1)
    .4byte 0xC002A438 # lfs f0, lbl_8053D3D8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x84(1)
    .4byte 0x48000024 # b .L_80156F60
L_80156F40:
    lfs 3, 0x84(1)
    .4byte 0xC042A438 # lfs f2, lbl_8053D3D8@sda21(r0)
    lfs 1, 0x88(1)
    .4byte 0xC002A420 # lfs f0, lbl_8053D3C0@sda21(r0)
    fadds 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0x84(1)
    stfs 0, 0x88(1)
L_80156F60:
    bl SpatialRegistry_GetBase
    lis 4, 0x4f4b
    lwz 5, 0x4(31)
    addi 4, 4, 0x544d
    addi 6, 1, 0x84
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 27, 3
    .4byte 0x41800124 # blt .L_801570AC
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    lis 4, 0x4
    mr 27, 3
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x85
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd
    li 5, 0x0
    bl fn_801F0E34
    cmplwi 27, 0x0
    .4byte 0x418200E4 # beq .L_801570AC
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80157028
    .4byte 0x40800014 # bge .L_80156FEC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80156FF8
    .4byte 0x4080002C # bge .L_80157010
    .4byte 0x4800006C # b .L_80157054
L_80156FEC:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_80157054
    .4byte 0x4800004C # b .L_80157040
L_80156FF8:
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    .4byte 0xC022A440 # lfs f1, lbl_8053D3E0@sda21(r0)
    stfs 0, 0x7c(1)
    stfs 1, 0x78(1)
    stfs 0, 0x80(1)
    .4byte 0x48000048 # b .L_80157054
L_80157010:
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    .4byte 0xC022A444 # lfs f1, lbl_8053D3E4@sda21(r0)
    stfs 0, 0x7c(1)
    stfs 1, 0x78(1)
    stfs 0, 0x80(1)
    .4byte 0x48000030 # b .L_80157054
L_80157028:
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    .4byte 0xC002A440 # lfs f0, lbl_8053D3E0@sda21(r0)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    stfs 1, 0x80(1)
    .4byte 0x48000018 # b .L_80157054
L_80157040:
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    .4byte 0xC002A444 # lfs f0, lbl_8053D3E4@sda21(r0)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
    stfs 1, 0x80(1)
L_80157054:
    lwz 3, 0x98(31)
    li 0, 0x5
    psq_l 1, 0x78(1), 0, 0
    stw 3, 0x98(27)
    lfs 0, 0x80(1)
    psq_st 1, 0x3c(27), 0, 0
    stfs 0, 0x44(27)
    stw 0, 0x23c(27)
    .4byte 0x48000038 # b .L_801570AC
L_80157078:
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x4082002C # bne .L_801570AC
    lwz 3, 0x270(31)
    addi 0, 3, 0x1
    stw 0, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x3
    .4byte 0x41800014 # blt .L_801570AC
    li 3, 0x0
    li 0, 0x32
    stw 3, 0x270(31)
    stw 0, 0x238(31)
L_801570AC:
    lwz 4, 0x98(31)
    addi 3, 29, 0x1f0
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x48000970 # b .L_80157A3C
    lfs 1, 0x10(1)
    .4byte 0xC002A42C # lfs f0, lbl_8053D3CC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082095C # bne .L_80157A3C
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000950 # b .L_80157A3C
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80157104
    li 0, 0x1
    stw 0, 0x278(31)
L_80157104:
    lwz 3, 0x280(31)
    cmpwi 3, -0x2
    .4byte 0x4082001C # bne .L_80157128
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000918 # b .L_80157A3C
L_80157128:
    lwz 0, 0xc(1)
    cmpwi 0, 0x0
    .4byte 0x4180090C # blt .L_80157A3C
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082001C # bne .L_80157158
    lfs 1, 0x10(1)
    .4byte 0xC002A448 # lfs f0, lbl_8053D3E8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_80157158
    cmpwi 3, 0x0
    .4byte 0x41800018 # blt .L_8015716C
L_80157158:
    cmpwi 3, 0x0
    .4byte 0x418008E0 # blt .L_80157A3C
    lwz 0, 0x288(31)
    cmpwi 0, 0x0
    .4byte 0x408208D4 # bne .L_80157A3C
L_8015716C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A44C # lfs f1, lbl_8053D3EC@sda21(r0)
    li 5, 0x358
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    lis 3, 0x1
    stw 0, 0x278(31)
    addi 0, 3, 0x2202
    lis 4, 0x4
    mr 3, 31
    stw 0, 0xb0(31)
    addi 4, 4, 0x67
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48000878 # b .L_80157A3C
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    addi 3, 31, 0x298
    .4byte 0xC042A400 # lfs f2, lbl_8053D3A0@sda21(r0)
    fmr 3, 1
    bl fn_801F71A4
    lfs 1, 0x298(31)
    .4byte 0xC002A450 # lfs f0, lbl_8053D3F0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810854 # ble .L_80157A3C
    .4byte 0xC002A3DC # lfs f0, lbl_8053D37C@sda21(r0)
    li 3, 0x0
    li 0, 0x9
    stfs 0, 0x298(31)
    stw 3, 0x270(31)
    stw 0, 0x230(31)
    .4byte 0x48000838 # b .L_80157A3C
    lis 0, 0x400
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    stw 0, 0xb0(31)
    addi 3, 31, 0x298
    .4byte 0xC042A400 # lfs f2, lbl_8053D3A0@sda21(r0)
    .4byte 0xC062A3DC # lfs f3, lbl_8053D37C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x298(31)
    .4byte 0xC002A454 # lfs f0, lbl_8053D3F4@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080080C # bge .L_80157A3C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A44C # lfs f1, lbl_8053D3EC@sda21(r0)
    li 5, 0x358
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x67
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002A454 # lfs f0, lbl_8053D3F4@sda21(r0)
    li 3, 0xa
    li 0, 0x8
    stfs 0, 0x298(31)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
    .4byte 0x480007B4 # b .L_80157A3C
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    li 6, 0x0
    li 5, 0x1e
    lis 4, 0x400
    stfs 0, 0x2b4(31)
    li 3, 0x2710
    li 0, 0xd
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x29c(31)
    stw 6, 0x238(31)
    stw 5, 0x23c(31)
    stw 4, 0xb0(31)
    stw 3, 0x108(31)
    stw 0, 0x230(31)
    li 0, 0x0
    .4byte 0xC042A454 # lfs f2, lbl_8053D3F4@sda21(r0)
    stw 0, 0xd8(31)
    addi 3, 31, 0xc
    .4byte 0xC062A410 # lfs f3, lbl_8053D3B0@sda21(r0)
    stw 0, 0xdc(31)
    lfs 1, 0x2b8(31)
    bl fn_801F71A4
    lfs 1, 0x2bc(31)
    addi 3, 31, 0x10
    .4byte 0xC042A454 # lfs f2, lbl_8053D3F4@sda21(r0)
    .4byte 0xC062A410 # lfs f3, lbl_8053D3B0@sda21(r0)
    bl fn_801F71A4
    lwz 0, 0x23c(31)
    lfs 3, 0xc(31)
    lfs 2, 0x2b8(31)
    cmpwi 0, 0x0
    lfs 1, 0x10(31)
    lfs 0, 0x2bc(31)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    .4byte 0x408201B4 # bne .L_801574DC
    fmuls 0, 0, 0
    fmadds 1, 2, 2, 0
    bl fn_80154378
    .4byte 0xC002A438 # lfs f0, lbl_8053D3D8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080019C # bge .L_801574DC
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x40820030 # bne .L_8015737C
    lwz 0, 0x274(31)
    cmpwi 0, 0x14
    .4byte 0x4182004C # beq .L_801573A4
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x14
    stw 0, 0x274(31)
    .4byte 0x4800002C # b .L_801573A4
L_8015737C:
    lwz 0, 0x274(31)
    cmpwi 0, 0x18
    .4byte 0x41820020 # beq .L_801573A4
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x18
    stw 0, 0x274(31)
L_801573A4:
    lfs 1, 0x29c(31)
    .4byte 0xC002A454 # lfs f0, lbl_8053D3F4@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x29c(31)
    bl fn_802DEB58
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820080 # bne .L_80157440
    lfs 0, 0x29c(31)
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x4081086C # ble .L_80157C3C
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    li 5, 0x2aa
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x47
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000800 # b .L_80157C3C
L_80157440:
    lfs 2, 0x2a0(31)
    .4byte 0xC022A458 # lfs f1, lbl_8053D3F8@sda21(r0)
    .4byte 0xC002A454 # lfs f0, lbl_8053D3F4@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x2a0(31)
    lfs 1, 0x2a0(31)
    fcmpo cr0, 1, 0
    .4byte 0x408005E0 # bge .L_80157A3C
    lbz 0, 0x2a8(31)
    cmplwi 0, 0x1
    .4byte 0x40820068 # bne .L_801574D0
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A3DC # lfs f1, lbl_8053D37C@sda21(r0)
    li 5, 0x2aa
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
L_801574D0:
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000564 # b .L_80157A3C
L_801574DC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820558 # bne .L_80157A3C
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182054C # beq .L_80157A3C
    lwz 3, 0x25c(31)
    lis 0, 0x4330
    addi 4, 29, 0x150
    stw 0, 0x10a0(1)
    addi 0, 3, 0x1
    .4byte 0xC822A468 # lfd f1, lbl_8053D408@sda21(r0)
    stw 0, 0x25c(31)
    addi 3, 29, 0x110
    .4byte 0xC042A410 # lfs f2, lbl_8053D3B0@sda21(r0)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 30
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    slwi 0, 0, 2
    lwzx 0, 4, 0
    xoris 0, 0, 0x8000
    stw 0, 0x10a4(1)
    lfd 0, 0x10a0(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1098(1)
    lwz 0, 0x109c(1)
    stw 0, 0x238(31)
    lwz 4, 0x98(31)
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    .4byte 0x480004CC # b .L_80157A3C
    li 0, 0x0
    stw 0, 0x230(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x534c
    lwz 5, 0x4(31)
    addi 4, 4, 0x5234
    addi 6, 1, 0x90
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0x90
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x4081007C # ble .L_80157620
L_801575A8:
    lwz 5, 0x0(4)
    cmplwi 5, 0x0
    .4byte 0x41820068 # beq .L_80157618
    lwz 3, 0x280(31)
    lwz 0, 0x28c(5)
    cmpw 3, 0
    .4byte 0x40820058 # bne .L_80157618
    lwz 0, 0x198(5)
    stw 0, 0x280(31)
    lwz 3, 0x290(5)
    addi 0, 3, 0x1
    stw 0, 0x290(5)
    lwz 0, 0x90(5)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801575EC
    li 0, 0x1
    stw 0, 0x28c(31)
L_801575EC:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_80157604
    li 0, 0xf
    stw 0, 0x230(31)
    .4byte 0x4800063C # b .L_80157C3C
L_80157604:
    cmplwi 0, 0x3
    .4byte 0x40820634 # bne .L_80157C3C
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000628 # b .L_80157C3C
L_80157618:
    addi 4, 4, 0x4
    .4byte 0x4200FF8C # bdnz .L_801575A8
L_80157620:
    li 0, -0x1
    stw 0, 0x280(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_80157640
    li 0, 0xf
    stw 0, 0x230(31)
    .4byte 0x48000400 # b .L_80157A3C
L_80157640:
    cmplwi 0, 0x3
    .4byte 0x408203F8 # bne .L_80157A3C
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x480003EC # b .L_80157A3C
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x408200F4 # bne .L_80157750
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820064 # bne .L_801576CC
    lwz 4, 0x98(31)
    addi 3, 29, 0xd0
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    lwz 5, 0xc(1)
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x4082003C # bne .L_801576CC
    lfs 1, 0x10(1)
    .4byte 0xC002A40C # lfs f0, lbl_8053D3AC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820028 # bne .L_801576CC
    stw 5, 0x98(31)
    li 4, 0xf
    li 3, 0x0
    li 0, 0x1
    stw 4, 0x238(31)
    stw 3, 0x23c(31)
    stw 3, 0x25c(31)
    stw 0, 0x260(31)
    .4byte 0x48000374 # b .L_80157A3C
L_801576CC:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820368 # bne .L_80157A3C
    li 0, 0xf
    addi 3, 29, 0x90
    stw 0, 0x238(31)
    lwz 4, 0x98(31)
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 3, 0x25c(31)
    addi 0, 3, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 30
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4082031C # bne .L_80157A3C
    lwz 0, 0x98(31)
    xori 0, 0, 0x2
    stw 0, 0x98(31)
    bl fn_80154744
    .4byte 0xC002A410 # lfs f0, lbl_8053D3B0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800300 # bge .L_80157A3C
    lwz 0, 0x98(31)
    xori 0, 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x480002F0 # b .L_80157A3C
L_80157750:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x408202E4 # bne .L_80157A3C
    lwz 0, 0x25c(31)
    addi 4, 29, 0x80
    addi 3, 29, 0x40
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x238(31)
    lwz 4, 0x98(31)
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x1
    .4byte 0x408200A8 # bne .L_80157840
    addi 3, 1, 0x84
    addi 4, 31, 0xc
    bl fn_801583E4
    lwz 0, 0x98(31)
    addi 4, 29, 0x0
    lfs 3, 0x84(1)
    slwi 0, 0, 3
    lfs 1, 0x8c(1)
    add 3, 4, 0
    lfsx 2, 4, 0
    lfs 0, 0x4(3)
    fadds 2, 3, 2
    fadds 0, 1, 0
    stfs 2, 0x84(1)
    stfs 0, 0x8c(1)
    lwz 0, 0x284(31)
    cmpwi 0, 0x0
    .4byte 0x40800054 # bge .L_80157834
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    lwz 5, 0x4(31)
    addi 4, 4, 0x4d42
    addi 6, 1, 0x84
    li 7, 0x6
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x284(31)
    lwz 27, 0x284(31)
    cmpwi 27, 0x0
    .4byte 0x41800020 # blt .L_80157834
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80157834
    lwz 0, 0x98(31)
    stw 0, 0x98(3)
L_80157834:
    lwz 3, 0x238(31)
    addi 0, 3, 0xa
    stw 0, 0x238(31)
L_80157840:
    lwz 0, 0x25c(31)
    cmpwi 0, 0x2
    .4byte 0x408201C8 # bne .L_80157A10
    lwz 27, 0x284(31)
    cmpwi 27, 0x0
    .4byte 0x418001BC # blt .L_80157A10
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    mr 30, 3
    bl fn_80154744
    .4byte 0xC002A45C # lfs f0, lbl_8053D3FC@sda21(r0)
    cmplwi 30, 0x0
    fadds 1, 0, 1
    .4byte 0x41820188 # beq .L_80157A00
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x0
    .4byte 0x40820088 # bne .L_80157914
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x4082007C # bne .L_80157914
    lwz 0, 0x290(31)
    addi 3, 29, 0x260
    lwz 4, 0x98(31)
    slwi 5, 0, 2
    .4byte 0xC002A460 # lfs f0, lbl_8053D400@sda21(r0)
    add 0, 5, 4
    slwi 0, 0, 3
    lfsx 2, 3, 0
    fcmpu cr0, 0, 2
    stfs 2, 0x6c(1)
    .4byte 0x4082001C # bne .L_801578E0
    cmpwi 4, 0x1
    stfs 1, 0x6c(1)
    .4byte 0x40820010 # bne .L_801578E0
    .4byte 0xC002A464 # lfs f0, lbl_8053D404@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x6c(1)
L_801578E0:
    lwz 0, 0x98(31)
    addi 3, 29, 0x260
    .4byte 0xC002A440 # lfs f0, lbl_8053D3E0@sda21(r0)
    add 0, 5, 0
    slwi 0, 0, 3
    stfs 0, 0x74(1)
    add 3, 3, 0
    lfs 1, 0x4(3)
    stfs 1, 0x70(1)
    psq_l 1, 0x6c(1), 0, 0
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    .4byte 0x480000C8 # b .L_801579D8
L_80157914:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820070 # beq .L_8015798C
    .4byte 0x40800014 # bge .L_80157934
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80157940
    .4byte 0x40800038 # bge .L_80157964
    .4byte 0x480000A8 # b .L_801579D8
L_80157934:
    cmpwi 0, 0x4
    .4byte 0x408000A0 # bge .L_801579D8
    .4byte 0x48000078 # b .L_801579B4
L_80157940:
    .4byte 0xC042A3D8 # lfs f2, lbl_8053D378@sda21(r0)
    addi 3, 1, 0x48
    .4byte 0xC062A440 # lfs f3, lbl_8053D3E0@sda21(r0)
    bl fn_801583D4
    psq_l 1, 0x48(1), 0, 0
    lfs 0, 0x50(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    .4byte 0x48000078 # b .L_801579D8
L_80157964:
    fneg 1, 1
    .4byte 0xC042A3D8 # lfs f2, lbl_8053D378@sda21(r0)
    .4byte 0xC062A440 # lfs f3, lbl_8053D3E0@sda21(r0)
    addi 3, 1, 0x3c
    bl fn_801583D4
    psq_l 1, 0x3c(1), 0, 0
    lfs 0, 0x44(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    .4byte 0x48000050 # b .L_801579D8
L_8015798C:
    fmr 2, 1
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    .4byte 0xC062A440 # lfs f3, lbl_8053D3E0@sda21(r0)
    addi 3, 1, 0x30
    bl fn_801583D4
    psq_l 1, 0x30(1), 0, 0
    lfs 0, 0x38(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
    .4byte 0x48000028 # b .L_801579D8
L_801579B4:
    fneg 2, 1
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    .4byte 0xC062A440 # lfs f3, lbl_8053D3E0@sda21(r0)
    addi 3, 1, 0x24
    bl fn_801583D4
    psq_l 1, 0x24(1), 0, 0
    lfs 0, 0x2c(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
L_801579D8:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x86
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x8
    li 5, 0x0
    bl fn_801F0E34
L_80157A00:
    li 3, 0x14
    li 0, -0x1
    stw 3, 0x258(31)
    stw 0, 0x284(31)
L_80157A10:
    lwz 3, 0x25c(31)
    addi 0, 3, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x2
    .4byte 0x40810018 # ble .L_80157A3C
    li 3, 0x0
    li 0, 0x5a
    stw 3, 0x25c(31)
    stw 3, 0x260(31)
    stw 0, 0x23c(31)
L_80157A3C:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157A50
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80157A50:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157A64
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80157A64:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157A78
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80157A78:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157A8C
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80157A8C:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157AA0
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80157AA0:
    lwz 3, 0x24c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157AB4
    subi 0, 3, 0x1
    stw 0, 0x24c(31)
L_80157AB4:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157AC8
    subi 0, 3, 0x1
    stw 0, 0x250(31)
L_80157AC8:
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157ADC
    subi 0, 3, 0x1
    stw 0, 0x254(31)
L_80157ADC:
    lwz 3, 0x258(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80157AF0
    subi 0, 3, 0x1
    stw 0, 0x258(31)
L_80157AF0:
    lwz 3, 0x230(31)
    cmpwi 3, 0xd
    .4byte 0x41820144 # beq .L_80157C3C
    subi 0, 3, 0x3
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80157B10
    cmpwi 3, 0x5
    .4byte 0x4082009C # bne .L_80157BA8
L_80157B10:
    clrlwi. 0, 28, 24
    .4byte 0x4182000C # beq .L_80157B20
    cmpwi 3, 0x5
    .4byte 0x4182008C # beq .L_80157BA8
L_80157B20:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80157B88
    lwz 4, 0x25c(31)
    lis 0, 0x4330
    addi 3, 29, 0x150
    stw 0, 0x10a0(1)
    addi 0, 4, 0x1
    .4byte 0xC822A468 # lfd f1, lbl_8053D408@sda21(r0)
    stw 0, 0x25c(31)
    .4byte 0xC042A410 # lfs f2, lbl_8053D3B0@sda21(r0)
    lwz 0, 0x25c(31)
    clrlwi 0, 0, 30
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    xoris 0, 0, 0x8000
    stw 0, 0x10a4(1)
    lfd 0, 0x10a0(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1098(1)
    lwz 0, 0x109c(1)
    stw 0, 0x238(31)
L_80157B88:
    lwz 4, 0x98(31)
    addi 3, 29, 0x110
    lwz 0, 0x25c(31)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
L_80157BA8:
    lwz 27, 0x280(31)
    cmpwi 27, 0x0
    .4byte 0x4180008C # blt .L_80157C3C
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_80157C14
    lwz 0, 0x288(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80157BDC
    li 0, 0x0
    stw 0, 0x288(31)
L_80157BDC:
    lwz 0, 0x288(3)
    cmpwi 0, 0x1
    .4byte 0x40820058 # bne .L_80157C3C
    li 0, 0x1
    stw 0, 0x288(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x40820044 # bne .L_80157C3C
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x40820038 # bne .L_80157C3C
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x4800002C # b .L_80157C3C
L_80157C14:
    li 0, -0x2
    stw 0, 0x280(31)
    lwz 0, 0x28c(31)
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_80157C3C
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80157C3C:
    li 0, 0x10d8
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x10d0(1)
    li 0, 0x10c8
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x10c0(1)
    lmw 27, 0x10ac(1)
    lwz 0, 0x10e4(1)
    mtlr 0
    addi 1, 1, 0x10e0
    blr

