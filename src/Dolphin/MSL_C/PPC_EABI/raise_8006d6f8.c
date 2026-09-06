#include "types.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/critical_regions.h"

extern void (*__signal_handlers[6])(int);
extern void exit(register int status);

//8006D6F8
ASM int raise(register int sig)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    stw     r30, 0x8(r1)
    mr      r30, r3
    cmpwi   r30, 0x1
    blt     L_8006D720
    cmpwi   r30, 0x6
    ble     L_8006D728
L_8006D720:
    li      r3, -0x1
    b       L_8006D7A0
L_8006D728:
    li      r3, 0x4
    bl      __begin_critical_region
    lis     r3, __signal_handlers@ha
    slwi    r0, r30, 2
    addi    r3, r3, __signal_handlers@l
    add     r3, r3, r0
    lwzu    r31, -0x4(r3)
    cmplwi  r31, 0x1
    beq     L_8006D754
    li      r0, 0x0
    stw     r0, 0x0(r3)
L_8006D754:
    li      r3, 0x4
    bl      __end_critical_region
    cmplwi  r31, 0x1
    beq     L_8006D774
    cmplwi  r31, 0x0
    bne     L_8006D77C
    cmpwi   r30, 0x1
    bne     L_8006D77C
L_8006D774:
    li      r3, 0x0
    b       L_8006D7A0
L_8006D77C:
    cmplwi  r31, 0x0
    bne     L_8006D78C
    li      r3, 0x0
    bl      exit
L_8006D78C:
    mr      r12, r31
    mr      r3, r30
    mtctr   r12
    bctrl
    li      r3, 0x0
L_8006D7A0:
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    lwz     r30, 0x8(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}
