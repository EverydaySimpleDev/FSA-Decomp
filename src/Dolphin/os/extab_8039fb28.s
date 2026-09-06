# fn_8039FB28 - component C: vtable-slot function (0x44). Appends 2
# fixed bytes (0xff, 0xfe) to a growing buffer (this->0x2c0, write-
# index this->0x2d0), gated on a flag read through this->0x2d8. Same
# "HUD glyph buffer append" idiom family as fn_8039C258/fn_8039D30C.
#
# NOTE: attempted real-C++ promotion twice (once prior session, once
# this session) - the whole STRUCTURE matches exactly (same
# instruction count/order, both writes correctly use `stbx` matching
# retail's own indexed-store choice - this is NOT an `lwzx`-wall
# casualty). The ONLY diff: retail keeps the reloaded idx/buf pair in
# the SAME 2 registers (r4/r5) across BOTH write blocks, and always
# computes "idx+1" fresh into r0 (a genuine scratch, never persisted);
# every phrasing tried (reusing one C++ local across both blocks,
# explicit separate `newIdx` scratch local) instead lets MWCC "rotate"
# the register assignment down by 2 for the second block (r6/r7 then
# r5/r6) rather than reusing r4/r5 directly. Left as raw asm - a pure
# register-allocator preference for a 2x-repeated identical pattern,
# not reachable from source restructuring tried so far.
.text
.balign 4
.global fn_8039FB28

fn_8039FB28:
    lwz 4, 0x2d8(3)
    lbz 0, 0x1aa(4)
    cmplwi 0, 0x0
    beqlr
    lwz 4, 0x2d0(3)
    li 7, -0x1
    lwz 5, 0x2c0(3)
    li 6, -0x2
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 7, 5, 4
    lwz 4, 0x2d0(3)
    lwz 5, 0x2c0(3)
    addi 0, 4, 0x1
    stw 0, 0x2d0(3)
    stbx 6, 5, 4
    blr
