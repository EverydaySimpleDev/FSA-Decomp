#include "types.h"

/* fn_801D76B4(this) - the bare "reset all fields" primitive for the reusable
 * "this+0x4c4" sub-object: the SAME field-zeroing block fn_801D74E0's
 * constructor inlines at its own start (16 target-ID slots -> -1, state/
 * timer/position fields -> 0/base-constant), but without the position-caching
 * or spawn loop that follows it there. Called together with fn_801D7638
 * (release targets, landed alongside) from fn_801D5D84's state-entry logic as
 * a "release and reset" pair.
 */

ASM void fn_801D76B4(void);

ASM void fn_801D76B4(void)
{
    nofralloc
    li r4, -0x1
    li r0, 0x0
    stw r4, 0x0(r3)
    opword  0xC002C1B0  // lfs f0, lbl_8053F150@sda21(r0)
    stw r4, 0x4(r3)
    stw r4, 0x8(r3)
    stw r4, 0xc(r3)
    stw r4, 0x10(r3)
    stw r4, 0x14(r3)
    stw r4, 0x18(r3)
    stw r4, 0x1c(r3)
    stw r4, 0x20(r3)
    stw r4, 0x24(r3)
    stw r4, 0x28(r3)
    stw r4, 0x2c(r3)
    stw r4, 0x30(r3)
    stw r4, 0x34(r3)
    stw r4, 0x38(r3)
    stw r4, 0x3c(r3)
    stw r0, 0x40(r3)
    stw r0, 0x44(r3)
    stfs fp0, 0x48(r3)
    stfs fp0, 0x4c(r3)
    stfs fp0, 0x50(r3)
    sth r0, 0x54(r3)
    sth r0, 0x56(r3)
    stb r0, 0x58(r3)
    stfs fp0, 0x5c(r3)
    stfs fp0, 0x60(r3)
    stw r0, 0x64(r3)
    blr
}

