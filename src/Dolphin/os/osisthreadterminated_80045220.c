#include "types.h"
#include "Dolphin/os.h"

//80045220
ASM BOOL OSIsThreadTerminated(register OSThread* thread)
{
    nofralloc
    lhz     r3, 0x2c8(r3)
    li      r0, 0x1
    cmplwi  r3, 0x8
    beq     _end
    cmplwi  r3, 0x0
    beq     _end
    li      r0, 0x0
_end:
    cmpwi   r0, 0x0
    beq     _false
    li      r3, 0x1
    blr
_false:
    li      r3, 0x0
    blr
}
