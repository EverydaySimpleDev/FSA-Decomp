#include "types.h"
#include "Dolphin/si.h"
#include "Dolphin/hw_regs.h"

extern SIPacket Packet[SI_MAX_CHAN];
extern u32 Type[SI_MAX_CHAN];
extern u32 SIGetStatus(s32 chan);

//80160720
ASM BOOL SIGetResponseRaw(register s32 chan)
{
    nofralloc
    mflr    r0
    lis     r4, Packet@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    addi    r31, r4, Packet@l
    stw     r30, 0x20(r1)
    addi    r30, chan, 0x0
    stw     r29, 0x1c(r1)
    bl      OSDisableInterrupts
    lis     r4, 0xcc00
    subfic  r0, r30, 0x3
    lwz     r29, 0x6438(r4)
    slwi    r0, r0, 3
    srw     r29, r29, r0
    rlwinm. r0, r29, 0, 28, 28
    beq     skiptype
    lis     r4, Type@ha
    slwi    r5, r30, 2
    addi    r0, r4, Type@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 24, 24
    bne     skiptype
    li      r0, 0x8
    stw     r0, 0x0(r4)
skiptype:
    bl      OSRestoreInterrupts
    rlwinm. r0, r29, 0, 26, 26
    beq     retfalse
    mulli   r4, r30, 0xc
    lis     r3, 0xcc00
    addi    r0, r3, 0x6400
    add     r3, r0, r4
    slwi    r4, r30, 3
    lwz     r0, 0x4(r3)
    add     r6, r31, r4
    stw     r0, 0x1c0(r6)
    slwi    r0, r30, 2
    add     r4, r31, r0
    lwz     r5, 0x8(r3)
    li      r0, 0x1
    li      r3, 0x1
    stw     r5, 0x1c4(r6)
    stw     r0, 0x1b0(r4)
    b       done
retfalse:
    li      r3, 0x0
done:
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//801607F4
ASM BOOL SIGetResponse(register s32 chan, register void* data)
{
    nofralloc
    mflr    r0
    lis     r5, Packet@ha
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stmw    r27, 0x14(r1)
    addi    r29, chan, 0x0
    addi    r30, data, 0x0
    addi    r28, r5, Packet@l
    bl      OSDisableInterrupts
    addi    r31, r3, 0x0
    addi    r3, r29, 0x0
    bl      SIGetStatus
    rlwinm. r0, r3, 0, 26, 26
    beq     clearvalid
    mulli   r4, r29, 0xc
    lis     r3, 0xcc00
    addi    r0, r3, 0x6400
    add     r4, r0, r4
    slwi    r3, r29, 3
    lwz     r0, 0x4(r4)
    add     r5, r28, r3
    stw     r0, 0x1c0(r5)
    slwi    r0, r29, 2
    add     r3, r28, r0
    lwz     r4, 0x8(r4)
    li      r0, 0x1
    stw     r4, 0x1c4(r5)
    stw     r0, 0x1b0(r3)
clearvalid:
    slwi    r0, r29, 2
    add     r3, r28, r0
    lwz     r27, 0x1b0(r3)
    li      r0, 0x0
    cmpwi   r27, 0x0
    stw     r0, 0x1b0(r3)
    beq     restore
    slwi    r0, r29, 3
    add     r3, r28, r0
    lwz     r0, 0x1c0(r3)
    stw     r0, 0x0(r30)
    lwz     r0, 0x1c4(r3)
    stw     r0, 0x4(r30)
restore:
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r3, r27
    lmw     r27, 0x14(r1)
    lwz     r0, 0x2c(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}
