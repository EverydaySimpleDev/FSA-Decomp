#include "types.h"
#include "Dolphin/os.h"

extern OSResetFunctionInfo* ResetFunctionQueue;

extern void Reset(register s32 resetCode);

//80043CB4
ASM void OSRegisterResetFunction(register OSResetFunctionInfo* info)
{
    nofralloc
    lwz     r5, ResetFunctionQueue
    b       L_80043CC0
L_80043CBC:
    lwz     r5, 0x8(r5)
L_80043CC0:
    cmplwi  r5, 0x0
    beq     L_80043CD8
    lwz     r4, 0x4(r5)
    lwz     r0, 0x4(r3)
    cmplw   r4, r0
    ble     L_80043CBC
L_80043CD8:
    cmplwi  r5, 0x0
    bne     L_80043D10
    // FIXED, real bug: MWCC can't express "li rD, SYM@sda21" (compact
    // base-register-less SDA21 form) for this fixed retail global; opword
    // recomputed for this build's current _SDA_BASE_. See project memory.
    opword  0x38AD8898
    lwzu    r4, 0x4(r5)
    cmplwi  r4, 0x0
    bne     L_80043CF8
    stw     r3, ResetFunctionQueue
    b       L_80043CFC
L_80043CF8:
    stw     r3, 0x8(r4)
L_80043CFC:
    stw     r4, 0xc(r3)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    stw     r3, 0x0(r5)
    blr
L_80043D10:
    stw     r5, 0x8(r3)
    lwz     r4, 0xc(r5)
    stw     r3, 0xc(r5)
    cmplwi  r4, 0x0
    stw     r4, 0xc(r3)
    bne     L_80043D30
    stw     r3, ResetFunctionQueue
    blr
L_80043D30:
    stw     r3, 0x8(r4)
    blr
}

//80043D38
ASM void Reset(register s32 resetCode)
{
    nofralloc
    opword  0x48000020
L_80043D3C:
    mfspr   r8, HID0
    ori     r8, r8, 0x8
    mtspr   HID0, r8
    isync
    sync
    nop
    b       L_80043D5C
L_80043D58:
    opword  0x48000020
L_80043D5C:
    mftb    r5, 268
L_80043D60:
    mftb    r6, 268
    subf    r7, r5, r6
    cmplwi  r7, 0x1124
    blt     L_80043D60
    nop
    b       L_80043D7C
L_80043D78:
    opword  0x48000020
L_80043D7C:
    lis     r8, 0xcc00
    ori     r8, r8, 0x3000
    li      r4, 0x3
    stw     r4, 0x24(r8)
    stw     r3, 0x24(r8)
    nop
    b       L_80043D9C
L_80043D98:
    opword  0x4800000C
L_80043D9C:
    nop
    b       L_80043D9C
L_80043DA4:
    b       L_80043D3C
}

//80043DA8
ASM void __OSDoHotReset(register s32 code)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, r3
    bl      OSDisableInterrupts
    lis     r3, 0xcc00
    addi    r3, r3, 0x2000
    li      r0, 0x0
    sth     r0, 0x2(r3)
    bl      ICFlashInvalidate
    slwi    r3, r31, 3
    bl      Reset
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
