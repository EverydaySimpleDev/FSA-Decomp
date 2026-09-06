#include "types.h"

// fn_8013A884(code4) - writes a literal 4-byte code (read from `code4`, a
// pointer to 4 raw bytes) into the CONFIRMED cutscene manager's own
// +0x2c sub-object, at offsets 0x4-0x7. Called by dtor_8013A27C with a
// stack-local buffer holding the sentinel value 0xFFFFFF00 - i.e. this
// class's destructor resets that sub-object's code field to a sentinel
// on teardown, rather than passing `this` as originally assumed before
// this function was decompiled - corrected in dtor_8013A27C's own banner.
ASM void fn_8013A884(void);

ASM void fn_8013A884(void)
{
    nofralloc
    opword  0x80AD8F50  // lwz r5, lbl_8053AB10@sda21(r0)
    lbz r4, 0x0(r3)
    lwz r5, 0x2c(r5)
    lbz r0, 0x1(r3)
    stb r4, 0x4(r5)
    lbz r4, 0x2(r3)
    stb r0, 0x5(r5)
    lbz r0, 0x3(r3)
    stb r4, 0x6(r5)
    stb r0, 0x7(r5)
    blr
}

