#include "types.h"

// fn_8013C394() - the no-arg bounds accessor referenced by fn_8013BBE0.
// Returns a pointer INTO the camera/cutscene-cue-manager's fog/color
// sub-object (lbl_8053AB10->0x24), offset 0x144 - confirms that
// sub-object owns a field at 0x144 holding the 4-int rect fn_8013BBE0
// reads (room/camera bounds, converted to a float vec4 there).
ASM void fn_8013C394(void);

ASM void fn_8013C394(void)
{
    nofralloc
    opword  0x806D8F50  // lwz r3, lbl_8053AB10@sda21(r0)
    lwz r3, 0x24(r3)
    addi r3, r3, 0x144
    blr
}
