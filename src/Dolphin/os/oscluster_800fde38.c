#include "types.h"

/* fn_800FDE38(ringArray): a "ping-pong" direction stepper for the same
 * ring struct documented in oscluster_800fd498.c/fn_800FD894/fn_800FD998
 * (`+0x1`=direction mode, `+0x2`=ring size, `+0x3`=accumulator index).
 * Toggles the direction mode, then increments or decrements the
 * accumulator index accordingly, and reverses direction automatically
 * when the accumulator underflows (`0xFF`) or reaches the ring size -
 * i.e. this steps the accumulator back and forth between `0` and
 * `size-1` rather than wrapping around like `fn_800FD818`'s plain
 * stepper. A natural fit for animating a wave/oscillation traveling
 * back and forth along a chain of ring segments. No extab content of
 * its own, landed via the ordinary ASM/nofralloc convention. Caller
 * not traced.
 */

ASM void fn_800FDE38(void);

ASM void fn_800FDE38(void)
{
    nofralloc
    lbz r0, 0x1(r3)
    xori r0, r0, 0x1
    stb r0, 0x1(r3)
    lbz r0, 0x1(r3)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800FDE60
    lbz r4, 0x3(r3)
    addi r0, r4, 0x1
    stb r0, 0x3(r3)
    opword  0x48000010  // b .L_800FDE6C
L_800FDE60:
    lbz r4, 0x3(r3)
    subi r0, r4, 0x1
    stb r0, 0x3(r3)
L_800FDE6C:
    lbz r4, 0x3(r3)
    cmplwi r4, 0xff
    opword  0x40820014  // bne .L_800FDE88
    lbz r4, 0x2(r3)
    subi r0, r4, 0x1
    stb r0, 0x3(r3)
    blr
L_800FDE88:
    lbz r0, 0x2(r3)
    cmplw r4, r0
    bnelr
    li r0, 0x0
    stb r0, 0x3(r3)
    blr
}

