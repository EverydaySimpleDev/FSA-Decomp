#include "types.h"
#include "Dolphin/stl.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/critical_regions.h"

extern u8 lbl_8053A730;
extern u8 lbl_804B9488[0x38];

extern void fn_80067DA8(register void* pool, register void* ptr);
extern void fn_80067E00(register void* pool, register void* ptr);
extern void fn_80067F58(register void* pool, register void* ptr);
extern u32 lbl_8045DD38[6];
extern void __sys_free(register void* ptr);

//80067D38
ASM void fn_80067D38(register void* ptr)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    stw     r31, 0xc(r1)
    mr      r31, r3
    li      r3, 0x1
    bl      __begin_critical_region
    lbz     r0, lbl_8053A730
    cmplwi  r0, 0x0
    bne     L_80067D7C
    lis     r3, lbl_804B9488@ha
    li      r4, 0x0
    addi    r3, r3, lbl_804B9488@l
    li      r5, 0x34
    bl      memset
    li      r0, 0x1
    stb     r0, lbl_8053A730
L_80067D7C:
    lis     r3, lbl_804B9488@ha
    mr      r4, r31
    addi    r3, r3, lbl_804B9488@l
    bl      fn_80067DA8
    li      r3, 0x1
    bl      __end_critical_region
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

//80067DA8
ASM void fn_80067DA8(register void* pool, register void* ptr)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x14(r1)
    beq     L_80067DF0
    lwz     r5, -0x4(r4)
    clrlwi. r0, r5, 31
    bne     L_80067DD0
    lwz     r5, 0x8(r5)
    b       L_80067DDC
L_80067DD0:
    lwz     r0, -0x8(r4)
    clrrwi  r5, r0, 3
    subi    r5, r5, 0x8
L_80067DDC:
    cmplwi  r5, 0x44
    bgt     L_80067DEC
    bl      fn_80067E00
    b       L_80067DF0
L_80067DEC:
    bl      fn_80067F58
L_80067DF0:
    lwz     r0, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

//80067E00
ASM void fn_80067E00(register void* pool, register void* ptr)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    lis     r6, lbl_8045DD38@ha
    li      r7, 0x0
    stw     r0, 0x14(r1)
    addi    r6, r6, lbl_8045DD38@l
    b       L_80067E24
L_80067E1C:
    addi    r6, r6, 0x4
    addi    r7, r7, 0x1
L_80067E24:
    lwz     r0, 0x0(r6)
    cmplw   r5, r0
    bgt     L_80067E1C
    subi    r8, r4, 0x4
    slwi    r5, r7, 3
    lwz     r4, -0x4(r4)
    addi    r5, r5, 0x4
    add     r5, r3, r5
    lwz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    bne     L_80067EC0
    lwz     r6, 0x4(r5)
    cmplw   r6, r4
    beq     L_80067EC0
    lwz     r0, 0x0(r5)
    cmplw   r0, r4
    bne     L_80067E80
    lwz     r0, 0x0(r6)
    stw     r0, 0x4(r5)
    lwz     r6, 0x0(r5)
    lwz     r0, 0x0(r6)
    stw     r0, 0x0(r5)
    b       L_80067EC0
L_80067E80:
    lwz     r0, 0x4(r4)
    lwz     r6, 0x0(r4)
    stw     r0, 0x4(r6)
    lwz     r0, 0x0(r4)
    lwz     r6, 0x4(r4)
    stw     r0, 0x0(r6)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r4)
    lwz     r6, 0x4(r4)
    lwz     r0, 0x0(r6)
    stw     r0, 0x0(r4)
    lwz     r6, 0x0(r4)
    stw     r4, 0x4(r6)
    lwz     r6, 0x4(r4)
    stw     r4, 0x0(r6)
    stw     r4, 0x4(r5)
L_80067EC0:
    lwz     r0, 0xc(r4)
    stw     r0, 0x4(r8)
    stw     r8, 0xc(r4)
    lwz     r6, 0x10(r4)
    subic.  r0, r6, 0x1
    stw     r0, 0x10(r4)
    bne     L_80067F48
    lwz     r0, 0x4(r5)
    cmplw   r0, r4
    bne     L_80067EF0
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r5)
L_80067EF0:
    lwz     r0, 0x0(r5)
    cmplw   r0, r4
    bne     L_80067F04
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r5)
L_80067F04:
    lwz     r0, 0x4(r4)
    lwz     r6, 0x0(r4)
    stw     r0, 0x4(r6)
    lwz     r0, 0x0(r4)
    lwz     r6, 0x4(r4)
    stw     r0, 0x0(r6)
    lwz     r0, 0x4(r5)
    cmplw   r0, r4
    bne     L_80067F30
    li      r0, 0x0
    stw     r0, 0x4(r5)
L_80067F30:
    lwz     r0, 0x0(r5)
    cmplw   r0, r4
    bne     L_80067F44
    li      r0, 0x0
    stw     r0, 0x0(r5)
L_80067F44:
    bl      fn_80067F58
L_80067F48:
    lwz     r0, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

//80067F58
ASM void fn_80067F58(register void* pool, register void* ptr)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    subi    r8, r4, 0x8
    stw     r0, 0x14(r1)
    lwz     r4, -0x8(r4)
    lwz     r5, 0x4(r8)
    rlwinm  r0, r4, 0, 31, 29
    clrrwi  r6, r4, 3
    stw     r0, 0x0(r8)
    add     r7, r8, r6
    clrrwi  r4, r5, 1
    lwz     r0, 0x0(r7)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x0(r7)
    stw     r6, -0x4(r7)
    lwz     r0, 0xc(r4)
    clrrwi  r5, r0, 3
    subi    r0, r5, 0x4
    lwzx    r5, r4, r0
    cmplwi  r5, 0x0
    beq     L_80068134
    lwz     r5, 0x8(r5)
    stw     r5, 0x8(r8)
    lwz     r5, 0x8(r8)
    stw     r8, 0xc(r5)
    lwzx    r5, r4, r0
    stw     r5, 0xc(r8)
    lwzx    r5, r4, r0
    stw     r8, 0x8(r5)
    stwx    r8, r4, r0
    lwzx    r9, r4, r0
    lwz     r5, 0x0(r9)
    rlwinm. r5, r5, 0, 29, 29
    bne     L_80068070
    lwz     r8, -0x4(r9)
    rlwinm. r5, r8, 0, 30, 30
    beq     L_80067FF4
    mr      r7, r9
    b       L_80068074
L_80067FF4:
    subf    r7, r8, r9
    lwz     r5, 0x0(r7)
    clrlwi  r5, r5, 29
    stw     r5, 0x0(r7)
    lwz     r5, 0x0(r9)
    lwz     r6, 0x0(r7)
    clrrwi  r5, r5, 3
    add     r5, r8, r5
    clrrwi  r5, r5, 3
    or      r5, r6, r5
    stw     r5, 0x0(r7)
    lwz     r5, 0x0(r7)
    rlwinm. r5, r5, 0, 30, 30
    bne     L_80068040
    lwz     r5, 0x0(r9)
    clrrwi  r5, r5, 3
    add     r6, r8, r5
    subi    r5, r6, 0x4
    stwx    r6, r7, r5
L_80068040:
    lwzx    r5, r4, r0
    cmplw   r5, r9
    bne     L_80068054
    lwz     r5, 0xc(r5)
    stwx    r5, r4, r0
L_80068054:
    lwz     r6, 0x8(r9)
    lwz     r5, 0xc(r9)
    stw     r6, 0x8(r5)
    lwz     r6, 0xc(r9)
    lwz     r5, 0x8(r6)
    stw     r6, 0xc(r5)
    b       L_80068074
L_80068070:
    mr      r7, r9
L_80068074:
    stwx    r7, r4, r0
    lwzx    r9, r4, r0
    lwz     r6, 0x0(r9)
    clrrwi  r10, r6, 3
    add     r8, r9, r10
    lwz     r7, 0x0(r8)
    rlwinm. r5, r7, 0, 30, 30
    bne     L_80068140
    clrlwi  r5, r6, 29
    clrrwi  r6, r7, 3
    stw     r5, 0x0(r9)
    add     r7, r10, r6
    clrrwi  r5, r7, 3
    lwz     r6, 0x0(r9)
    or      r5, r6, r5
    stw     r5, 0x0(r9)
    lwz     r5, 0x0(r9)
    rlwinm. r5, r5, 0, 30, 30
    bne     L_800680C8
    subi    r5, r7, 0x4
    stwx    r7, r9, r5
L_800680C8:
    lwz     r5, 0x0(r9)
    rlwinm. r5, r5, 0, 30, 30
    bne     L_800680E4
    lwzx    r5, r9, r7
    rlwinm  r5, r5, 0, 30, 28
    stwx    r5, r9, r7
    b       L_800680F0
L_800680E4:
    lwzx    r5, r9, r7
    ori     r5, r5, 0x4
    stwx    r5, r9, r7
L_800680F0:
    lwzx    r5, r4, r0
    cmplw   r5, r8
    bne     L_80068104
    lwz     r5, 0xc(r5)
    stwx    r5, r4, r0
L_80068104:
    lwzx    r5, r4, r0
    cmplw   r5, r8
    bne     L_80068118
    li      r5, 0x0
    stwx    r5, r4, r0
L_80068118:
    lwz     r6, 0x8(r8)
    lwz     r5, 0xc(r8)
    stw     r6, 0x8(r5)
    lwz     r6, 0xc(r8)
    lwz     r5, 0x8(r8)
    stw     r6, 0xc(r5)
    b       L_80068140
L_80068134:
    stwx    r8, r4, r0
    stw     r8, 0x8(r8)
    stw     r8, 0xc(r8)
L_80068140:
    lwzx    r5, r4, r0
    lwz     r6, 0x8(r4)
    lwz     r0, 0x0(r5)
    clrrwi  r0, r0, 3
    cmplw   r6, r0
    bge     L_8006815C
    stw     r0, 0x8(r4)
L_8006815C:
    lwz     r5, 0x10(r4)
    li      r7, 0x0
    rlwinm. r0, r5, 0, 30, 30
    bne     L_80068188
    lwz     r0, 0xc(r4)
    clrrwi  r6, r5, 3
    clrrwi  r5, r0, 3
    subi    r0, r5, 0x18
    cmplw   r6, r0
    bne     L_80068188
    li      r7, 0x1
L_80068188:
    cmpwi   r7, 0x0
    beq     L_800681DC
    lwz     r5, 0x4(r4)
    cmplw   r5, r4
    bne     L_800681A0
    li      r5, 0x0
L_800681A0:
    lwz     r0, 0x0(r3)
    cmplw   r0, r4
    bne     L_800681B0
    stw     r5, 0x0(r3)
L_800681B0:
    cmplwi  r5, 0x0
    beq     L_800681C8
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r5)
    lwz     r3, 0x0(r5)
    stw     r5, 0x4(r3)
L_800681C8:
    li      r0, 0x0
    mr      r3, r4
    stw     r0, 0x4(r4)
    stw     r0, 0x0(r4)
    bl      __sys_free
L_800681DC:
    lwz     r0, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}
