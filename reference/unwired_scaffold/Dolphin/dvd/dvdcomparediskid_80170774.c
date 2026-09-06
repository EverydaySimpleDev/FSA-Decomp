#include "types.h"

extern int strncmp(const char*, const char*, size_t);

//80170774
ASM BOOL DVDCompareDiskID(register const char* arg0, register const char* arg1)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, arg1, 0x0
    stw     r30, 0x10(r1)
    mr      r30, arg0
    lbz     r0, 0x0(arg0)
    extsb.  r0, r0
    beq     check4
    lbz     r0, 0x0(r31)
    extsb.  r0, r0
    beq     check4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x4
    bl      strncmp
    cmpwi   r3, 0x0
    beq     check4
    li      r3, 0x0
    b       epilogue
check4:
    lbz     r0, 0x4(r30)
    extsb.  r0, r0
    beq     retFalse
    lbz     r0, 0x4(r31)
    extsb.  r0, r0
    beq     retFalse
    addi    r3, r30, 0x4
    addi    r4, r31, 0x4
    li      r5, 0x2
    bl      strncmp
    cmpwi   r3, 0x0
    beq     check6
retFalse:
    li      r3, 0x0
    b       epilogue
check6:
    lbz     r3, 0x6(r30)
    cmplwi  r3, 0xff
    beq     check7
    lbz     r0, 0x6(r31)
    cmplwi  r0, 0xff
    beq     check7
    cmplw   r3, r0
    beq     check7
    li      r3, 0x0
    b       epilogue
check7:
    lbz     r3, 0x7(r30)
    cmplwi  r3, 0xff
    beq     retTrue
    lbz     r0, 0x7(r31)
    cmplwi  r0, 0xff
    beq     retTrue
    cmplw   r3, r0
    beq     retTrue
    li      r3, 0x0
    b       epilogue
retTrue:
    li      r3, 0x1
epilogue:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
