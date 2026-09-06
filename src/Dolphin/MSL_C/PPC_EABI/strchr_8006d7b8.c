#include "types.h"

//8006D7B8
ASM char* strchr(register const char* str, register int c)
{
    nofralloc
    subi    r3, r3, 0x1
    clrlwi  r0, r4, 24
    b       L_8006D7CC
L_8006D7C4:
    cmplw   r4, r0
    beqlr
L_8006D7CC:
    lbzu    r4, 0x1(r3)
    cmplwi  r4, 0x0
    bne     L_8006D7C4
    cmplwi  r0, 0x0
    beqlr
    li      r3, 0x0
    blr
}

//8006D7E8
ASM int strncmp(register const char* s1, register const char* s2, register u32 n)
{
    nofralloc
    subi    r3, r3, 0x1
    subi    r4, r4, 0x1
    addi    r6, r5, 0x1
    b       L_8006D818
L_8006D7F8:
    lbzu    r0, 0x1(r3)
    lbzu    r5, 0x1(r4)
    cmplw   r0, r5
    beq     L_8006D810
    subf    r3, r5, r0
    blr
L_8006D810:
    cmplwi  r0, 0x0
    beq     L_8006D820
L_8006D818:
    subic.  r6, r6, 0x1
    bne     L_8006D7F8
L_8006D820:
    li      r3, 0x0
    blr

}

//8006D828
ASM int strcmp(register const char* s1, register const char* s2)
{
    nofralloc
    lbz     r5, 0x0(r3)
    lbz     r0, 0x0(r4)
    subf.   r0, r0, r5
    beq     L_8006D840
    mr      r3, r0
    blr
L_8006D840:
    clrlwi  r0, r4, 30
    clrlwi  r6, r3, 30
    cmplw   r0, r6
    bne     L_8006D918
    cmplwi  r6, 0x0
    beq     L_8006D8AC
    cmplwi  r5, 0x0
    bne     L_8006D868
    li      r3, 0x0
    blr
L_8006D868:
    subfic  r0, r6, 0x3
    mtctr   r0
    cmplwi  r0, 0x0
    beq     L_8006D8A4
L_8006D878:
    lbzu    r5, 0x1(r3)
    lbzu    r0, 0x1(r4)
    subf.   r0, r0, r5
    beq     L_8006D890
    mr      r3, r0
    blr
L_8006D890:
    cmplwi  r5, 0x0
    bne     L_8006D8A0
    li      r3, 0x0
    blr
L_8006D8A0:
    bdnz    L_8006D878
L_8006D8A4:
    addi    r3, r3, 0x1
    addi    r4, r4, 0x1
L_8006D8AC:
    lwz     r7, 0x0(r3)
    lis     r5, 0x8081
    subi    r6, r5, 0x7f80
    lwz     r8, 0x0(r4)
    subis   r5, r7, 0x101
    subi    r0, r5, 0x101
    and.    r0, r0, r6
    bne     L_8006D900
    b       L_8006D8E8
L_8006D8D0:
    lwzu    r7, 0x4(r3)
    lwzu    r8, 0x4(r4)
    subis   r5, r7, 0x101
    subi    r0, r5, 0x101
    and.    r0, r0, r6
    bne     L_8006D900
L_8006D8E8:
    cmplw   r7, r8
    beq     L_8006D8D0
    li      r3, -0x1
    blelr
    li      r3, 0x1
    blr
L_8006D900:
    lbz     r5, 0x0(r3)
    lbz     r0, 0x0(r4)
    subf.   r0, r0, r5
    beq     L_8006D918
    mr      r3, r0
    blr
L_8006D918:
    cmplwi  r5, 0x0
    bne     L_8006D928
    li      r3, 0x0
    blr
L_8006D928:
    lbzu    r5, 0x1(r3)
    lbzu    r0, 0x1(r4)
    subf.   r0, r0, r5
    beq     L_8006D940
    mr      r3, r0
    blr
L_8006D940:
    cmplwi  r5, 0x0
    bne     L_8006D928
    li      r3, 0x0
    blr

}

//8006D950
ASM char* strcat(register char* dest, register const char* src)
{
    nofralloc
    subi    r4, r4, 0x1
    subi    r5, r3, 0x1
L_8006D958:
    lbzu    r0, 0x1(r5)
    cmplwi  r0, 0x0
    bne     L_8006D958
    subi    r5, r5, 0x1
L_8006D968:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r5)
    bne     L_8006D968
    blr

}

//8006D97C
ASM char* strncat(register char* dest, register const char* src, register u32 n)
{
    nofralloc
    subi    r4, r4, 0x1
    subi    r6, r3, 0x1
    addi    r5, r5, 0x1
    b       L_8006D9B4
L_8006D98C:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r6)
    bne     L_8006D9B4
    li      r0, 0x0
    b       L_8006D9A8
L_8006D9A4:
    stbu    r0, 0x1(r6)
L_8006D9A8:
    subic.  r5, r5, 0x1
    bne     L_8006D9A4
    blr
L_8006D9B4:
    subic.  r5, r5, 0x1
    bne     L_8006D98C
    blr

}

//8006D9C0
ASM char* strcpy(register char* dest, register const char* src)
{
    nofralloc
    clrlwi  r0, r3, 30
    clrlwi  r5, r4, 30
    cmplw   r0, r5
    mr      r7, r3
    bne     L_8006DA54
    cmplwi  r5, 0x0
    beq     L_8006DA18
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    stb     r0, 0x0(r7)
    beqlr
    subfic  r0, r5, 0x3
    mtctr   r0
    cmplwi  r0, 0x0
    beq     L_8006DA10
L_8006D9FC:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r7)
    beqlr
    bdnz    L_8006D9FC
L_8006DA10:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x1
L_8006DA18:
    lwz     r8, 0x0(r4)
    lis     r5, 0x8081
    subi    r6, r5, 0x7f80
    subis   r5, r8, 0x101
    subi    r0, r5, 0x101
    and.    r0, r0, r6
    bne     L_8006DA54
    subi    r7, r7, 0x4
L_8006DA38:
    stwu    r8, 0x4(r7)
    lwzu    r8, 0x4(r4)
    subis   r5, r8, 0x101
    subi    r0, r5, 0x101
    and.    r0, r0, r6
    beq     L_8006DA38
    addi    r7, r7, 0x4
L_8006DA54:
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    stb     r0, 0x0(r7)
    beqlr
L_8006DA64:
    lbzu    r0, 0x1(r4)
    cmplwi  r0, 0x0
    stbu    r0, 0x1(r7)
    bne     L_8006DA64
    blr

}
