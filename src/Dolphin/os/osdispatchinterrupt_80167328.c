#include "types.h"
#include "Dolphin/os.h"

extern u32 lbl_80495FA8[12];
extern __OSInterruptHandler* InterruptHandlerTable;
extern void __OSReschedule(void);

//80167328
ASM void __OSDispatchInterrupt(register __OSException exception, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    stw     r30, 0x20(r1)
    stw     r29, 0x1c(r1)
    mr      r30, context
    lis     r3, 0xcc00
    lwz     r31, 0x3000(r3)
    rlwinm  r31, r31, 0, 16, 14
    cmplwi  r31, 0x0
    beq     _loadctx1
    addi    r3, r3, 0x3000
    lwz     r0, 0x4(r3)
    and     r0, r31, r0
    cmplwi  r0, 0x0
    bne     _cause
_loadctx1:
    mr      r3, r30
    bl      OSLoadContext
_cause:
    rlwinm  r0, r31, 0, 24, 24
    cmplwi  r0, 0x0
    li      r0, 0x0
    beq     _dsp
    lis     r3, 0xcc00
    addi    r3, r3, 0x4000
    lhz     r4, 0x1e(r3)
    clrlwi  r3, r4, 31
    cmplwi  r3, 0x0
    beq     _m1
    oris    r0, r0, 0x8000
_m1:
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq     _m2
    oris    r0, r0, 0x4000
_m2:
    rlwinm  r3, r4, 0, 29, 29
    cmplwi  r3, 0x0
    beq     _m3
    oris    r0, r0, 0x2000
_m3:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq     _m4
    oris    r0, r0, 0x1000
_m4:
    rlwinm  r3, r4, 0, 27, 27
    cmplwi  r3, 0x0
    beq     _dsp
    oris    r0, r0, 0x800
_dsp:
    rlwinm  r3, r31, 0, 25, 25
    cmplwi  r3, 0x0
    beq     _ai
    lis     r3, 0xcc00
    addi    r3, r3, 0x5000
    lhz     r4, 0xa(r3)
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq     _d1
    oris    r0, r0, 0x400
_d1:
    rlwinm  r3, r4, 0, 26, 26
    cmplwi  r3, 0x0
    beq     _d2
    oris    r0, r0, 0x200
_d2:
    rlwinm  r3, r4, 0, 24, 24
    cmplwi  r3, 0x0
    beq     _ai
    oris    r0, r0, 0x100
_ai:
    rlwinm  r3, r31, 0, 26, 26
    cmplwi  r3, 0x0
    beq     _exi
    lis     r3, 0xcc00
    lwz     r3, 0x6c00(r3)
    rlwinm  r3, r3, 0, 28, 28
    cmplwi  r3, 0x0
    beq     _exi
    oris    r0, r0, 0x80
_exi:
    rlwinm  r3, r31, 0, 27, 27
    cmplwi  r3, 0x0
    beq     _hsp
    lis     r3, 0xcc00
    lwz     r4, 0x6800(r3)
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq     _ex1
    oris    r0, r0, 0x40
_ex1:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq     _ex2
    oris    r0, r0, 0x20
_ex2:
    rlwinm  r3, r4, 0, 20, 20
    cmplwi  r3, 0x0
    beq     _ex3
    oris    r0, r0, 0x10
_ex3:
    lis     r3, 0xcc00
    addi    r3, r3, 0x6800
    lwz     r4, 0x14(r3)
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq     _ex4
    oris    r0, r0, 0x8
_ex4:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq     _ex5
    oris    r0, r0, 0x4
_ex5:
    rlwinm  r3, r4, 0, 20, 20
    cmplwi  r3, 0x0
    beq     _ex6
    oris    r0, r0, 0x2
_ex6:
    lis     r3, 0xcc00
    addi    r3, r3, 0x6800
    lwz     r4, 0x28(r3)
    rlwinm  r3, r4, 0, 30, 30
    cmplwi  r3, 0x0
    beq     _ex7
    oris    r0, r0, 0x1
_ex7:
    rlwinm  r3, r4, 0, 28, 28
    cmplwi  r3, 0x0
    beq     _hsp
    ori     r0, r0, 0x8000
_hsp:
    rlwinm  r3, r31, 0, 18, 18
    cmplwi  r3, 0x0
    beq     _dbg
    ori     r0, r0, 0x20
_dbg:
    rlwinm  r3, r31, 0, 19, 19
    cmplwi  r3, 0x0
    beq     _pef
    ori     r0, r0, 0x40
_pef:
    rlwinm  r3, r31, 0, 21, 21
    cmplwi  r3, 0x0
    beq     _pet
    ori     r0, r0, 0x1000
_pet:
    rlwinm  r3, r31, 0, 22, 22
    cmplwi  r3, 0x0
    beq     _vi
    ori     r0, r0, 0x2000
_vi:
    rlwinm  r3, r31, 0, 23, 23
    cmplwi  r3, 0x0
    beq     _si
    ori     r0, r0, 0x80
_si:
    rlwinm  r3, r31, 0, 28, 28
    cmplwi  r3, 0x0
    beq     _dvd
    ori     r0, r0, 0x800
_dvd:
    rlwinm  r3, r31, 0, 29, 29
    cmplwi  r3, 0x0
    beq     _rsw
    ori     r0, r0, 0x400
_rsw:
    rlwinm  r3, r31, 0, 30, 30
    cmplwi  r3, 0x0
    beq     _cp
    ori     r0, r0, 0x200
_cp:
    rlwinm  r3, r31, 0, 20, 20
    cmplwi  r3, 0x0
    beq     _err
    ori     r0, r0, 0x4000
_err:
    clrlwi  r3, r31, 31
    cmplwi  r3, 0x0
    beq     _unmask
    ori     r0, r0, 0x100
_unmask:
    lis     r3, 0x8000
    lwz     r4, 0xc4(r3)
    lwz     r3, 0xc8(r3)
    or      r3, r4, r3
    andc    r4, r0, r3
    cmplwi  r4, 0x0
    beq     _loadctx2
    lis     r3, lbl_80495FA8@ha
    addi    r0, r3, lbl_80495FA8@l
    mr      r3, r0
    opword  0x48000004
    opword  0x48000004
_prioCheck:
    lwz     r0, 0x0(r3)
    and     r0, r4, r0
    cmplwi  r0, 0x0
    beq     _prioNext
    cntlzw  r0, r0
    extsh   r29, r0
    b       _gotHandler
_prioNext:
    addi    r3, r3, 0x4
    b       _prioCheck
_gotHandler:
    lwz     r3, InterruptHandlerTable
    slwi    r0, r29, 2
    lwzx    r31, r3, r0
    cmplwi  r31, 0x0
    beq     _loadctx2
    cmpwi   r29, 0x4
    ble     _dispatch
    sth     r29, __OSLastInterrupt
    bl      OSGetTime
    stw     r4, __OSLastInterruptTime+0x4
    stw     r3, __OSLastInterruptTime
    lwz     r0, 0x198(r30)
    stw     r0, __OSLastInterruptSrr0
_dispatch:
    bl      OSDisableScheduler
    mr      r3, r29
    mr      r4, r30
    mr      r12, r31
    mtlr    r12
    blrl
    bl      OSEnableScheduler
    bl      __OSReschedule
    mr      r3, r30
    bl      OSLoadContext
_loadctx2:
    mr      r3, r30
    bl      OSLoadContext
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}
