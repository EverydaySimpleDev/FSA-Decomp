#include "types.h"
#include "Dolphin/si.h"

extern SIControl Si;
extern SIPacket Packet[SI_MAX_CHAN];

//8015F958
ASM BOOL SIBusy(void)
{
    nofralloc
    lis     r3, Si@ha
    lwz     r0, Si@l(r3)
    cmpwi   r0, -0x1
    beq     notbusy
    li      r3, 0x1
    blr
notbusy:
    li      r3, 0x0
    blr
}

//8015F978
ASM BOOL SIIsChanBusy(register s32 chan)
{
    nofralloc
    lis     r4, Packet@ha
    slwi    r5, chan, 5
    addi    r0, r4, Packet@l
    add     r4, r0, r5
    lwz     r0, 0x0(r4)
    li      r5, 0x1
    cmpwi   r0, -0x1
    bne     done
    lis     r4, Si@ha
    lwz     r0, Si@l(r4)
    cmpw    r0, chan
    beq     done
    li      r5, 0x0
done:
    mr      r3, r5
    blr
}
