#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/hw_regs.h"

//80166F40
ASM u32 fn_80166F40(register OSInterruptMask mask, register OSInterruptMask current)
{
    nofralloc
    cntlzw  r0, mask
    cmpwi   r0, 0xc
    bge     _c1
    cmpwi   r0, 0x8
    beq     _dsp
    bge     _exi0
    cmpwi   r0, 0x5
    bge     _pi
    cmpwi   r0, 0x0
    bge     _mem
    b       _end
_c1:
    cmpwi   r0, 0x11
    bge     _c2
    cmpwi   r0, 0xf
    bge     _exi2
    b       _exi1
_c2:
    cmpwi   r0, 0x1b
    bge     _end
    b       _ai
_mem:
    clrrwi  r0, current, 31
    cmplwi  r0, 0x0
    li      r5, 0x0
    bne     _m1
    ori     r5, r5, 0x1
_m1:
    rlwinm  r0, current, 0, 1, 1
    cmplwi  r0, 0x0
    bne     _m2
    ori     r5, r5, 0x2
_m2:
    rlwinm  r0, current, 0, 2, 2
    cmplwi  r0, 0x0
    bne     _m3
    ori     r5, r5, 0x4
_m3:
    rlwinm  r0, current, 0, 3, 3
    cmplwi  r0, 0x0
    bne     _m4
    ori     r5, r5, 0x8
_m4:
    rlwinm  r0, current, 0, 4, 4
    cmplwi  r0, 0x0
    bne     _m5
    ori     r5, r5, 0x10
_m5:
    lis     r4, 0xcc00
    clrlwi  r0, r5, 16
    addi    r4, r4, 0x4000
    sth     r0, 0x1c(r4)
    clrlwi  mask, mask, 5
    b       _end
_pi:
    lis     r5, 0xcc00
    addi    r5, r5, 0x5000
    addi    r5, r5, 0xa
    rlwinm  r0, current, 0, 5, 5
    lhz     r6, 0x0(r5)
    cmplwi  r0, 0x0
    rlwinm  r6, r6, 0, 29, 22
    bne     _p1
    ori     r6, r6, 0x10
_p1:
    rlwinm  r0, current, 0, 6, 6
    cmplwi  r0, 0x0
    bne     _p2
    ori     r6, r6, 0x40
_p2:
    rlwinm  r0, current, 0, 7, 7
    cmplwi  r0, 0x0
    bne     _p3
    ori     r6, r6, 0x100
_p3:
    clrlwi  r0, r6, 16
    sth     r0, 0x0(r5)
    rlwinm  mask, mask, 0, 8, 4
    b       _end
_dsp:
    rlwinm  r0, current, 0, 8, 8
    lis     r4, 0xcc00
    cmplwi  r0, 0x0
    lwz     r5, 0x6c00(r4)
    li      r0, -0x2d
    and     r5, r5, r0
    bne     _d1
    ori     r5, r5, 0x4
_d1:
    lis     r4, 0xcc00
    stw     r5, 0x6c00(r4)
    rlwinm  mask, mask, 0, 9, 7
    b       _end
_exi0:
    rlwinm  r0, current, 0, 9, 9
    lis     r5, 0xcc00
    cmplwi  r0, 0x0
    lwz     r5, 0x6800(r5)
    li      r0, -0x2c10
    and     r5, r5, r0
    bne     _e01
    ori     r5, r5, 0x1
_e01:
    rlwinm  r0, current, 0, 10, 10
    cmplwi  r0, 0x0
    bne     _e02
    ori     r5, r5, 0x4
_e02:
    rlwinm  r0, current, 0, 11, 11
    cmplwi  r0, 0x0
    bne     _e03
    ori     r5, r5, 0x400
_e03:
    lis     r4, 0xcc00
    stw     r5, 0x6800(r4)
    rlwinm  mask, mask, 0, 12, 8
    b       _end
_exi1:
    lis     r5, 0xcc00
    addi    r6, r5, 0x6800
    addi    r6, r6, 0x14
    rlwinm  r0, current, 0, 12, 12
    lwz     r7, 0x0(r6)
    li      r5, -0xc10
    cmplwi  r0, 0x0
    and     r7, r7, r5
    bne     _e11
    ori     r7, r7, 0x1
_e11:
    rlwinm  r0, current, 0, 13, 13
    cmplwi  r0, 0x0
    bne     _e12
    ori     r7, r7, 0x4
_e12:
    rlwinm  r0, current, 0, 14, 14
    cmplwi  r0, 0x0
    bne     _e13
    ori     r7, r7, 0x400
_e13:
    stw     r7, 0x0(r6)
    rlwinm  mask, mask, 0, 15, 11
    b       _end
_exi2:
    lis     r5, 0xcc00
    addi    r5, r5, 0x6800
    addi    r5, r5, 0x28
    rlwinm  r0, current, 0, 15, 15
    lwz     r6, 0x0(r5)
    cmplwi  r0, 0x0
    clrrwi  r6, r6, 4
    bne     _e21
    ori     r6, r6, 0x1
_e21:
    rlwinm  r0, current, 0, 16, 16
    cmplwi  r0, 0x0
    bne     _e22
    ori     r6, r6, 0x4
_e22:
    stw     r6, 0x0(r5)
    rlwinm  mask, mask, 0, 17, 14
    b       _end
_ai:
    rlwinm  r0, current, 0, 17, 17
    cmplwi  r0, 0x0
    li      r5, 0xf0
    bne     _a1
    ori     r5, r5, 0x800
_a1:
    rlwinm  r0, current, 0, 20, 20
    cmplwi  r0, 0x0
    bne     _a2
    ori     r5, r5, 0x8
_a2:
    rlwinm  r0, current, 0, 21, 21
    cmplwi  r0, 0x0
    bne     _a3
    ori     r5, r5, 0x4
_a3:
    rlwinm  r0, current, 0, 22, 22
    cmplwi  r0, 0x0
    bne     _a4
    ori     r5, r5, 0x2
_a4:
    rlwinm  r0, current, 0, 23, 23
    cmplwi  r0, 0x0
    bne     _a5
    ori     r5, r5, 0x1
_a5:
    rlwinm  r0, current, 0, 24, 24
    cmplwi  r0, 0x0
    bne     _a6
    ori     r5, r5, 0x100
_a6:
    rlwinm  r0, current, 0, 25, 25
    cmplwi  r0, 0x0
    bne     _a7
    ori     r5, r5, 0x1000
_a7:
    rlwinm  r0, current, 0, 18, 18
    cmplwi  r0, 0x0
    bne     _a8
    ori     r5, r5, 0x200
_a8:
    rlwinm  r0, current, 0, 19, 19
    cmplwi  r0, 0x0
    bne     _a9
    ori     r5, r5, 0x400
_a9:
    rlwinm  r0, current, 0, 26, 26
    cmplwi  r0, 0x0
    bne     _a10
    ori     r5, r5, 0x2000
_a10:
    lis     r4, 0xcc00
    addi    r4, r4, 0x3000
    stw     r5, 0x4(r4)
    rlwinm  mask, mask, 0, 27, 16
_end:
    opword  0x4E800020
}

//80167218
ASM OSInterruptMask __OSMaskInterrupts(register OSInterruptMask global)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    mr      r31, global
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lwz     r29, 0xc4(r4)
    mr      r30, r3
    lwz     r5, 0xc8(r4)
    or      r0, r29, r5
    andc    r3, r31, r0
    or      r31, r31, r29
    stw     r31, 0xc4(r4)
    or      r31, r31, r5
    opword  0x48000004
    opword  0x48000004
    b       _check
_body:
    mr      r4, r31
    bl      fn_80166F40
_check:
    cmplwi  r3, 0x0
    bne     _body
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//801672A0
ASM OSInterruptMask __OSUnmaskInterrupts(register OSInterruptMask global)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    stw     r29, 0x14(r1)
    mr      r31, global
    bl      OSDisableInterrupts
    lis     r4, 0x8000
    lwz     r29, 0xc4(r4)
    mr      r30, r3
    lwz     r5, 0xc8(r4)
    or      r0, r29, r5
    and     r3, r31, r0
    andc    r31, r29, r31
    stw     r31, 0xc4(r4)
    or      r31, r31, r5
    opword  0x48000004
    opword  0x48000004
    b       _check
_body:
    mr      r4, r31
    bl      fn_80166F40
_check:
    cmplwi  r3, 0x0
    bne     _body
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
