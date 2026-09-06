.section extab, "a"
.balign 4
.global etb_80006974
etb_80006974:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006974, 8

.section extabindex, "a"
.balign 4
.global eti_800131BC
eti_800131BC:
    .4byte fn_80134FE0
    .4byte 0x00000040
    .4byte etb_80006974
.size eti_800131BC, 12

# fn_80134FE0(this, val) - a setter with a mode-transition side effect:
# this->0x94 = val; if val==1, calls fn_80458658(lbl_8053AF80) (not yet
# decompiled - a global, not `this`); otherwise sets this->0x95 = 1 (the
# same "changed away from mode 1" latch fn_80134FC4 sets).
#
# Attempted real-C++ promotion: after storing val, retail RELOADS the
# byte via lbz and reuses the (now dead) argument register r4 for the
# reload; MWCC always allocates a FRESH register (r0) for the reload
# regardless of source phrasing (2 variants tried: inline reload in the
# if-condition, and a named local for the reload). Matches the
# documented "dead-register reuse" class (see fn_8013AC54's writeup).
# Reverted to raw asm.
.text
.balign 4
.global fn_80134FE0

fn_80134FE0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stb 4, 0x94(3)
    lbz 4, 0x94(3)
    cmplwi 4, 0x1
    .4byte 0x40820010 # bne .L_80135008
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458658
    .4byte 0x4800000C # b .L_80135010
L_80135008:
    li 0, 0x1
    stb 0, 0x95(3)
L_80135010:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
