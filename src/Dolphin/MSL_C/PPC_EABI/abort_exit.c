#include "types.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/critical_regions.h"

extern void __destroy_global_chain(void);
extern void _ExitProcess(void);

extern void (*_dtors[])(void);
extern void (*__console_exit)(void);
extern void (*__stdio_exit)(void);
extern int __atexit_curr_func;
extern int __aborting;
extern void (*__atexit_funcs[64])(void);

//80067BAC
ASM void exit(register int status)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    lwz     r0, __aborting
    cmpwi   r0, 0x0
    bne     L_80067C20
    li      r3, 0x0
    bl      __begin_critical_region
    li      r3, 0x0
    bl      __end_critical_region
    bl      __destroy_global_chain
    lis     r3, _dtors@ha
    addi    r0, r3, _dtors@l
    mr      r31, r0
    b       L_80067BF8
L_80067BEC:
    mtctr   r12
    bctrl
    addi    r31, r31, 0x4
L_80067BF8:
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    bne     L_80067BEC
    lwz     r12, __stdio_exit
    cmplwi  r12, 0x0
    beq     L_80067C20
    mtctr   r12
    bctrl
    li      r0, 0x0
    stw     r0, __stdio_exit
L_80067C20:
    li      r3, 0x0
    bl      __begin_critical_region
    lis     r3, __atexit_funcs@ha
    addi    r31, r3, __atexit_funcs@l
    b       L_80067C50
L_80067C34:
    lwz     r3, __atexit_curr_func
    subi    r3, r3, 0x1
    slwi    r0, r3, 2
    stw     r3, __atexit_curr_func
    lwzx    r12, r31, r0
    mtctr   r12
    bctrl
L_80067C50:
    lwz     r0, __atexit_curr_func
    cmpwi   r0, 0x0
    bgt     L_80067C34
    li      r3, 0x0
    bl      __end_critical_region
    bl      __kill_critical_regions
    lwz     r12, __console_exit
    cmplwi  r12, 0x0
    beq     L_80067C84
    mtctr   r12
    bctrl
    li      r0, 0x0
    stw     r0, __console_exit
L_80067C84:
    bl      _ExitProcess
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

extern void raise(register int sig);

//80067C9C
ASM void abort(void)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    bl      raise
    li      r0, 0x1
    li      r3, 0x0
    stw     r0, __aborting
    bl      __begin_critical_region
    lis     r3, __atexit_funcs@ha
    addi    r31, r3, __atexit_funcs@l
    b       L_80067CEC
L_80067CD0:
    lwz     r3, __atexit_curr_func
    subi    r3, r3, 0x1
    slwi    r0, r3, 2
    stw     r3, __atexit_curr_func
    lwzx    r12, r31, r0
    mtctr   r12
    bctrl
L_80067CEC:
    lwz     r0, __atexit_curr_func
    cmpwi   r0, 0x0
    bgt     L_80067CD0
    li      r3, 0x0
    bl      __end_critical_region
    bl      __kill_critical_regions
    lwz     r12, __console_exit
    cmplwi  r12, 0x0
    beq     L_80067D20
    mtctr   r12
    bctrl
    li      r0, 0x0
    stw     r0, __console_exit
L_80067D20:
    bl      _ExitProcess
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}
