#include "types.h"

//80151AD8
ASM void __cvt_dbl_usll(void)
{
    nofralloc
    stwu    r1, -16(r1)
    stfd    f1, 8(r1)
    lwz     r3, 8(r1)
    lwz     r4, 12(r1)
    rlwinm  r5, r3, 12, 21, 31
    cmpli   cr0, 0, r5, 1023
    bge     cr0, not_fraction
    li      r3, 0
    li      r4, 0
    b       func_end
not_fraction:
    mr      r6, r3
    rlwinm  r3, r3, 0, 12, 31
    oris    r3, r3, 0x0010
    addi    r5, r5, -1075
    cmpwi   cr0, r5, 0
    bge     cr0, left
    neg     r5, r5
    subfic  r8, r5, 32
    subic   r9, r5, 32
    srw     r4, r4, r5
    slw     r10, r3, r8
    or      r4, r4, r10
    srw     r10, r3, r9
    or      r4, r4, r10
    srw     r3, r3, r5
    b       around
left:
    cmpwi   cr0, r5, 10
    ble+    no_overflow
    rlwinm. r6, r6, 0, 0, 0
    beq     cr0, max_positive
    lis     r3, 0x8000
    li      r4, 0
    b       func_end
max_positive:
    lis     r3, 0x7FFF
    ori     r3, r3, 0xFFFF
    li      r4, -1
    b       func_end
no_overflow:
    subfic  r8, r5, 32
    subic   r9, r5, 32
    slw     r3, r3, r5
    srw     r10, r4, r8
    or      r3, r3, r10
    slw     r10, r4, r9
    or      r3, r3, r10
    slw     r4, r4, r5
around:
    rlwinm. r6, r6, 0, 0, 0
    beq     cr0, positive
    subfic  r4, r4, 0
    subfze  r3, r3
positive:
func_end:
    addi    r1, r1, 16
    blr
}
