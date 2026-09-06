#include "types.h"
#include "Dolphin/ar.h"
#include "Dolphin/os.h"

//80175080
ASM void ARStartDMA(register u32 type, register u32 mainmem_addr, register u32 aram_addr, register u32 length)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    addi    r31, r6, 0x0
    stw     r30, 0x20(r1)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(r1)
    addi    r29, r3, 0x0
    stw     r28, 0x18(r1)
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    lis     r6, 0xcc00
    lhz     r0, 0x5020(r6)
    addi    r8, r6, 0x5000
    addi    r9, r6, 0x5000
    clrrwi  r4, r0, 10
    srwi    r0, r28, 16
    or      r0, r4, r0
    sth     r0, 0x5020(r6)
    clrlwi  r0, r28, 16
    addi    r4, r6, 0x5000
    lhz     r5, 0x5022(r6)
    rlwinm  r5, r5, 0, 27, 15
    or      r0, r5, r0
    sth     r0, 0x5022(r6)
    addi    r5, r6, 0x5000
    srwi    r0, r30, 16
    lhz     r6, 0x5024(r6)
    clrrwi  r6, r6, 10
    or      r0, r6, r0
    sth     r0, 0x24(r8)
    clrlwi  r0, r30, 16
    lhz     r6, 0x26(r9)
    rlwinm  r6, r6, 0, 27, 15
    or      r0, r6, r0
    sth     r0, 0x26(r9)
    srwi    r6, r31, 16
    clrlwi  r0, r31, 16
    lhz     r7, 0x28(r4)
    rlwinm  r7, r7, 0, 17, 15
    rlwimi  r7, r29, 15, 0, 16
    sth     r7, 0x28(r4)
    lhz     r7, 0x28(r4)
    clrrwi  r7, r7, 10
    or      r6, r7, r6
    sth     r6, 0x28(r4)
    lhz     r4, 0x2a(r5)
    rlwinm  r4, r4, 0, 27, 15
    or      r0, r4, r0
    sth     r0, 0x2a(r5)
    bl      OSRestoreInterrupts
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    lwz     r28, 0x18(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}
