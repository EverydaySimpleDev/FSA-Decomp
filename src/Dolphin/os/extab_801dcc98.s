.section extab, "a"
.balign 4
.global etb_800088B0
etb_800088B0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800088B0, 8

.section extabindex, "a"
.balign 4
.global eti_80015D3C
eti_80015D3C:
    .4byte fn_801DCC98
    .4byte 0x0000011C
    .4byte etb_800088B0
.size eti_80015D3C, 12

# fn_801DCC98(this) - first function of a NEW, not-yet-identified class
# past the just-closed "launch 10 players" class's file boundary.
#
# Integrates 2 attached-effect-handle positions from this object's own
# velocity: this+0xc/0x10 += this->0x3c/0x40, and a 2nd pair (this+0x14 and
# this->0x44's paired value) via paired-single ps_add - matches the
# position-integration idiom seen elsewhere this session (e.g. OIWA). Then
# propagates the updated position into 2 attached effect handles
# (this->0x2a8 and this->0x2ac) via the CONFIRMED fn_8013CB44 handle-update
# family.
#
# Looks up a small table row via GetRoomConfigRecord(this->0x4) (the shared
# effect-subsystem callee), picking between 2 candidate row offsets
# (+0xcc/+0xdc) based on whether this->0x4's lookup result is >= 8. Tests
# whether this position (this+0xc/0x10) falls within a [min,max] rectangle
# read from that row (4 floats). If out of range: clears this->0x11c(byte)
# to 0. If in range: calls fn_801F2B7C(this, this->0x114, -1, 0x18) (a
# not-yet-decompiled boolean check, possibly a room/zone-membership test)
# and only clears this->0x11c if THAT also fails - i.e. this->0x11c is a
# "currently valid" flag that gets cleared on failure but is left alone
# (not explicitly re-set here) when both checks pass.
.text
.balign 4
.global fn_801DCC98

fn_801DCC98:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    li 6, 0x0
    stw 0, 0x14(1)
    li 7, 0x1
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    addi 4, 30, 0xc
    psq_l 0, 0x3c(30), 0, 0
    psq_l 1, 0x0(4), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lwz 3, 0x2a8(3)
    bl fn_8013CB44
    lwz 3, 0x2ac(30)
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801DCD18
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DCD1C
L_801DCD18:
    addi 3, 3, 0xdc
L_801DCD1C:
    lfs 2, 0xc(30)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801DCD64
    lfs 1, 0x10(30)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801DCD64
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801DCD64
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801DCD64
    li 0, 0x1
L_801DCD64:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_801DCD78
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000028 # b .L_801DCD9C
L_801DCD78:
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x18
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801DCD9C
    li 0, 0x0
    stb 0, 0x11c(30)
L_801DCD9C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

