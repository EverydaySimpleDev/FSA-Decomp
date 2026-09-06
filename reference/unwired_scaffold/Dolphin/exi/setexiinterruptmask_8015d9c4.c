#include "types.h"
#include "Dolphin/exi.h"

extern EXIControl Ecb[EXI_MAX_CHAN];

//8015D9C4
ASM void SetExiInterruptMask(register s32 chan, register EXIControl* exi)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    addi    r31, exi, 0x0
    lis     r4, Ecb@ha
    addi    r4, r4, Ecb@l
    addi    r4, r4, 0x80
    cmpwi   chan, 0x1
    beq     case1
    bge     check3
    cmpwi   chan, 0x0
    bge     case0
    b       done
check3:
    cmpwi   chan, 0x3
    bge     done
    b       case2
case0:
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    bne     case0_checklocked
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq     case0_mask
case0_checklocked:
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq     case0_unmask
case0_mask:
    lis     r3, 0x41
    bl      __OSMaskInterrupts
    b       done
case0_unmask:
    lis     r3, 0x41
    bl      __OSUnmaskInterrupts
    b       done
case1:
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    beq     case1_mask
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq     case1_unmask
case1_mask:
    lis     r3, 0x8
    bl      __OSMaskInterrupts
    b       done
case1_unmask:
    lis     r3, 0x8
    bl      __OSUnmaskInterrupts
    b       done
case2:
    li      r3, 0x19
    bl      __OSGetInterruptHandler
    cmplwi  r3, 0x0
    beq     case2_mask
    lwz     r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq     case2_unmask
case2_mask:
    li      r3, 0x40
    bl      __OSMaskInterrupts
    b       done
case2_unmask:
    li      r3, 0x40
    bl      __OSUnmaskInterrupts
done:
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
