.section extab, "a"
.balign 4
.global etb_80009FD0
etb_80009FD0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80009FD0, 8

.section extabindex, "a"
.balign 4
.global eti_80017B00
eti_80017B00:
    .4byte fn_8020FE50
    .4byte 0x00000084
    .4byte etb_80009FD0
.size eti_80017B00, 12

.text
.balign 4
.global fn_8020FE50

# fn_8020FE50(this) - IBBM's real draw() - a visibility gate before
# delegating to the real work. A squared-distance check (paired-single
# ps_mul/ps_madd/ps_sum0 against a threshold) SKIPS drawing entirely
# when within range - the SAME "hide when approached" shape as ZORA's
# draw (see project_fsa_zora_actor_progress.md), though here it gates
# a delegate call rather than a direct model draw. When past the
# gate: if draw mode==2, converts this->0x2a8 to a fixed-point value
# as an extra argument; always calls fn_80210630(this, 0, 0, arg4)
# (new, not yet decompiled) - the actual rendering happens inside
# that callee.
fn_8020FE50:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80539D44@ha
    .4byte 0xC022CB00 # lfs f1, lbl_8053FAA0@sda21(r0)
    stw 0, 0x14(1)
    psq_l 3, 0x54(3), 0, 0
    lfs 0, lbl_80539D44@l(4)
    ps_mul 3, 3, 3
    lfs 2, 0x5c(3)
    fmuls 0, 1, 0
    ps_madd 2, 2, 2, 3
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820034 # bne .L_8020FEC4
    lwz 0, 0x248(3)
    li 7, 0x0
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_8020FEB4
    lfs 0, 0x2a8(3)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 7, 0xc(1)
L_8020FEB4:
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_80210630
L_8020FEC4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

