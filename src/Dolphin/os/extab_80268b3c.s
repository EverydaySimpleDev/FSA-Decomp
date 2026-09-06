.section extab, "a"
.balign 4
.global etb_8000BACC
etb_8000BACC:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000BACC, 8

.section extabindex, "a"
.balign 4
.global eti_8001A1F4
eti_8001A1F4:
    .4byte fn_80268B3C
    .4byte 0x00000088
    .4byte etb_8000BACC
.size eti_8001A1F4, 12

.text
.balign 4
.global fn_80268B3C

# fn_80268B3C(playerObj) - a thin dispatcher wrapping not-yet-decompiled
# fn_802685D4(playerObj), the real "finalize/commit frame" logic.
# Special-cases state 5: if the CONFIRMED co-op LINK/CHAIN helper
# fn_802486A0 returns 5 AND the CONFIRMED Player_IsLinked ("am I linked")
# is true, calls fn_802685D4 directly with no side effects. Otherwise,
# temporarily overrides playerObj->0x10 with a sentinel constant
# (lbl_80540228) before calling fn_802685D4, then restores the ORIGINAL
# value afterward ONLY IF fn_802685D4 left the sentinel untouched -
# i.e. "sandbox this field during the call unless the callee explicitly
# wrote a real value into it." Confirmed caller: fn_8025A15C's
# fire-status handler (extab_8025a15c.s), called unconditionally as
# the very last step of its per-frame update.
fn_80268B3C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_802486A0
    cmpwi 3, 0x5
    .4byte 0x40820020 # bne .L_80268B80
    mr 3, 31
    bl Player_IsLinked
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80268B80
    mr 3, 31
    bl fn_802685D4
    .4byte 0x4800002C # b .L_80268BA8
L_80268B80:
    lfs 31, 0x10(31)
    mr 3, 31
    .4byte 0xC002D288 # lfs f0, lbl_80540228@sda21(r0)
    stfs 0, 0x10(31)
    bl fn_802685D4
    .4byte 0xC022D288 # lfs f1, lbl_80540228@sda21(r0)
    lfs 0, 0x10(31)
    fcmpu cr0, 1, 0
    .4byte 0x40820008 # bne .L_80268BA8
    stfs 31, 0x10(31)
L_80268BA8:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
