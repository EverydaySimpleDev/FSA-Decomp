# Vtable body for a real FourCC actor (vtable lbl_804B16E0) whose real ctor
# (fn_80201B78, already landed - calls base ctor Actor_ctor then installs
# this vtable) sits far away in the actor-ctor-dispatch region.
# fn_8043824C: Init() - zeros a 4-element effect-handle array at this+0x230
# (stride 4) and sets 4 matching flag bytes at this+0x240-0x243 to 0xFF.
# fn_80437F78: update() - iterates the same 4 slots, cross-referencing the
# confirmed player-candidate-tracking table (lbl_80529DEC, see
# project_fsa_player_candidate_tracking_system.md) and the confirmed spatial
# cue-manager (lbl_8053AB10). For each active candidate, computes a
# distance-based fade toward/away from a threshold and drives an attached
# effect handle (fn_8013CC50/fn_8013CB44 spawn/update, released via
# fn_8013C824+fn_800EC240 when inactive) - consistent with a "highlight/glow
# indicator" actor tracking up to 4 candidates. The `this->0x4==8` branch
# (spawn-vs-release split) matches the "captured/attached" state convention
# seen on OKTA (project_fsa_okta_actor_progress.md). fn_8043E7CC not traced
# further (out of scope).
# fn_80438284: dtor - releases the same 4-slot effect-handle array, then
# chains to the standard dtor_801F593C/dtor_80084580 base cleanup.
.section extab, "a"
.balign 4
.global etb_80010D4C
etb_80010D4C:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_80010D4C, 8

.global etb_80010D54
etb_80010D54:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80010D54, 8

.section extabindex, "a"
.balign 4
.global eti_80020D94
eti_80020D94:
    .4byte fn_80437F78
    .4byte 0x000002D4
    .4byte etb_80010D4C
.size eti_80020D94, 12

.global eti_80020DA0
eti_80020DA0:
    .4byte fn_80438284
    .4byte 0x00000098
    .4byte etb_80010D54
.size eti_80020DA0, 12

.text
.balign 4
.global fn_80437F78
.global fn_8043824C
.global fn_80438284

fn_80437F78:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 25, 0x64(1)
    mr 25, 3
    li 3, 0x0
    bl fn_8023E724
    lfs 0, 0x0(3)
    lis 4, lbl_80529DEC@ha
    addi 30, 4, lbl_80529DEC@l
    lis 4, lbl_8050DB0C@ha
    stfs 0, 0xc(25)
    mr 29, 30
    mr 28, 25
    addi 31, 4, lbl_8050DB0C@l
    lfs 0, 0x4(3)
    li 26, 0x0
    .4byte 0x3B620C60 # li r27, lbl_80543C00@sda21
    stfs 0, 0x10(25)
    lfs 0, 0x8(3)
    stfs 0, 0x14(25)
L_80437FCC:
    li 0, 0x1
    lbz 3, 0x236(30)
    slw 0, 0, 26
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x4182021C # beq .L_804381FC
    addi 4, 29, 0x1c4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_l 1, 0x0(4), 0, 0
    addi 7, 1, 0x38
    lfs 0, 0x1cc(29)
    li 5, 0x0
    psq_st 1, 0x44(1), 0, 0
    li 6, 0x0
    lwz 3, 0x24(3)
    stfs 0, 0x4c(1)
    bl fn_8030C5F0
    addi 4, 26, 0x240
    lbzx 0, 25, 4
    cmplwi 0, 0xff
    .4byte 0x40820078 # bne .L_80438094
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x50(1)
    lwz 3, 0x4(3)
    .4byte 0xC8220C78 # lfd f1, lbl_80543C18@sda21(r0)
    lhz 0, 0x6(3)
    .4byte 0xC0420C6C # lfs f2, lbl_80543C0C@sda21(r0)
    xoris 0, 0, 0x8000
    lfs 3, 0x3c(1)
    stw 0, 0x54(1)
    lfd 0, 0x50(1)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fcmpo cr0, 3, 0
    .4byte 0x40810020 # ble .L_80438078
    li 0, 0x0
    lfs 1, 0x48(1)
    stbx 0, 25, 4
    lfs 0, 0x34(31)
    fadds 0, 1, 0
    stfs 0, 0x48(1)
    .4byte 0x480000B0 # b .L_80438124
L_80438078:
    li 0, 0x1
    lfs 1, 0x48(1)
    stbx 0, 25, 4
    lfs 0, 0x34(31)
    fsubs 0, 1, 0
    stfs 0, 0x48(1)
    .4byte 0x48000094 # b .L_80438124
L_80438094:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x50(1)
    lwz 3, 0x4(3)
    .4byte 0xC8420C78 # lfd f2, lbl_80543C18@sda21(r0)
    lhz 3, 0x6(3)
    .4byte 0xC0220C70 # lfs f1, lbl_80543C10@sda21(r0)
    xoris 3, 3, 0x8000
    lfs 3, 0x3c(1)
    stw 3, 0x54(1)
    lfd 0, 0x50(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fcmpo cr0, 3, 0
    .4byte 0x40810020 # ble .L_804380EC
    li 0, 0x0
    lfs 1, 0x48(1)
    stbx 0, 25, 4
    lfs 0, 0x34(31)
    fadds 0, 1, 0
    stfs 0, 0x48(1)
    .4byte 0x4800003C # b .L_80438124
L_804380EC:
    stw 3, 0x54(1)
    .4byte 0xC0220C74 # lfs f1, lbl_80543C14@sda21(r0)
    stw 0, 0x50(1)
    lfd 0, 0x50(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fcmpo cr0, 3, 0
    .4byte 0x4080001C # bge .L_80438124
    li 0, 0x1
    lfs 1, 0x48(1)
    stbx 0, 25, 4
    lfs 0, 0x34(31)
    fsubs 0, 1, 0
    stfs 0, 0x48(1)
L_80438124:
    psq_l 4, 0x44(1), 0, 0
    lfs 3, 0x4c(1)
    psq_st 4, 0x14(1), 0, 0
    frsp 0, 3
    lfs 2, 0x14(1)
    lfs 1, 0x18(1)
    stfs 2, 0x1c4(29)
    stfs 1, 0x1c8(29)
    stfs 0, 0x1cc(29)
    lwz 0, 0x4(25)
    psq_st 4, 0x2c(1), 0, 0
    cmpwi 0, 0x8
    stfs 3, 0x34(1)
    stfs 3, 0x1c(1)
    .4byte 0x40800014 # bge .L_80438170
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 29, 0x1c4
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80438170:
    lwz 3, 0x230(28)
    cmplwi 3, 0x0
    .4byte 0x40820044 # bne .L_804381BC
    lhz 5, 0x0(27)
    addi 4, 29, 0x1c4
    lwz 3, 0x4(25)
    li 6, 0x1
    lfs 1, 0x30(31)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(28)
    lwz 3, 0x230(28)
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
    .4byte 0x48000018 # b .L_804381D0
L_804381BC:
    addi 4, 29, 0x1c4
    li 5, 0x1
    li 6, 0x1
    li 7, 0x1
    bl fn_8013CB44
L_804381D0:
    addi 3, 29, 0x1c4
    lfs 0, 0x1cc(29)
    psq_l 1, 0x0(3), 0, 0
    addi 4, 1, 0x8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    bl fn_8043E7CC
    .4byte 0x48000028 # b .L_80438220
L_804381FC:
    lwz 0, 0x230(28)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80438220
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(28)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x230(28)
L_80438220:
    addi 26, 26, 0x1
    addi 28, 28, 0x4
    cmpwi 26, 0x4
    addi 27, 27, 0x2
    addi 29, 29, 0xc
    .4byte 0x4180FD98 # blt .L_80437FCC
    lmw 25, 0x64(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8043824C:
    li 5, 0x0
    li 4, 0xff
    stw 5, 0x230(3)
    li 0, 0x1
    stb 4, 0x240(3)
    stw 5, 0x234(3)
    stb 4, 0x241(3)
    stw 5, 0x238(3)
    stb 4, 0x242(3)
    stw 5, 0x23c(3)
    stb 4, 0x243(3)
    stb 0, 0x11e(3)
    stb 0, 0x11f(3)
    blr

fn_80438284:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820068 # beq .L_80438304
    lis 3, lbl_804B16E0@ha
    mr 30, 27
    addi 0, 3, lbl_804B16E0@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
L_804382B8:
    lwz 0, 0x230(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_804382D8
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x230(30)
    bl fn_800EC240
    stw 31, 0x230(30)
L_804382D8:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD4 # blt .L_804382B8
    mr 3, 27
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_80438304
    mr 3, 27
    bl dtor_80084580
L_80438304:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

