#include <cobj.h>

//801C14F8
ASM void HSD_CObjSetLeft(register HSD_CObj* cobj, register float left)
{
    nofralloc
    cmplwi  r3, 0x0
    beqlr
    lbz     r0, 0x50(r3)
    cmpwi   r0, 0x2
    beq     case_frustum
    bltlr
    cmpwi   r0, 0x4
    bgelr
    b       case_ortho
case_frustum:
    stfs    f1, 0x48(r3)
    blr
case_ortho:
    stfs    f1, 0x48(r3)
    blr
}
