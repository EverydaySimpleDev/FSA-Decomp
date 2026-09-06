#include "types.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/critical_regions.h"

extern u8 __files[0x140];

extern int fflush(register void* file);
extern int fclose(register void* file);
extern void fn_80067D38(register void* ptr);

//800681EC
ASM int __flush_all(void)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    lis     r3, __files@ha
    stw     r0, 0x14(r1)
    addi    r0, r3, __files@l
    stw     r31, 0xc(r1)
    li      r31, 0x0
    stw     r30, 0x8(r1)
    mr      r30, r0
    b       L_80068238
L_80068214:
    lhz     r0, 0x4(r30)
    extrwi. r0, r0, 3, 23
    beq     L_80068234
    mr      r3, r30
    bl      fflush
    cmpwi   r3, 0x0
    beq     L_80068234
    li      r31, -0x1
L_80068234:
    lwz     r30, 0x4c(r30)
L_80068238:
    cmplwi  r30, 0x0
    bne     L_80068214
    lwz     r0, 0x14(r1)
    mr      r3, r31
    lwz     r31, 0xc(r1)
    lwz     r30, 0x8(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

//8006825C
ASM void __close_all(void)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    lis     r4, __files@ha
    li      r3, 0x2
    stw     r0, 0x14(r1)
    addi    r0, r4, __files@l
    stw     r31, 0xc(r1)
    mr      r31, r0
    bl      __begin_critical_region
    b       L_800682E0
L_80068284:
    lhz     r0, 0x4(r31)
    extrwi. r0, r0, 3, 23
    beq     L_80068298
    mr      r3, r31
    bl      fclose
L_80068298:
    mr      r3, r31
    lwz     r31, 0x4c(r31)
    lbz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq     L_800682B4
    bl      fn_80067D38
    b       L_800682E0
L_800682B4:
    lhz     r0, 0x4(r3)
    li      r4, 0x3
    rlwimi  r0, r4, 6, 23, 25
    cmplwi  r31, 0x0
    sth     r0, 0x4(r3)
    beq     L_800682E0
    lbz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    beq     L_800682E0
    li      r0, 0x0
    stw     r0, 0x4c(r3)
L_800682E0:
    cmplwi  r31, 0x0
    bne     L_80068284
    li      r3, 0x2
    bl      __end_critical_region
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}
