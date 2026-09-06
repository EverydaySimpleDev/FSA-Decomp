#include "types.h"

// Sibling of fn_8013AC90/fn_8013B004's lighting/fog preset family, but
// takes NO arguments (self-contained default preset). Same fn_8005XXXX
// battery with its own literal params, plus 2 globals (lbl_8053CDD8,
// lbl_80543F20) fed into fn_8005EBC4 under different mode tags (1, 2),
// and closes with fn_800601C0(1) - not seen in the other two siblings.
extern "C" void fn_8005AD7C(void);
extern "C" void fn_8005A464(s32 a, s32 b);
extern "C" void fn_8005ADB4(s32 a, s32 b, s32 c, s32 d, s32 e);
extern "C" void fn_8005D404(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, s32 g);
extern "C" void fn_8005D3C8(s32 a);
extern "C" void fn_8005B6BC(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f);
extern "C" void fn_8005B93C(s32 a);
extern "C" void fn_8005EBC4(s32 a, s32* b);
extern "C" void fn_8005EF80(s32 a, s32 b, s32 c, s32 d);
extern "C" void fn_8005EA6C(s32 a, s32 b, s32 c, s32 d, s32 e);
extern "C" void fn_8005EAB0(s32 a, s32 b, s32 c, s32 d, s32 e);
extern "C" void fn_8005EAF4(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f);
extern "C" void fn_8005EB5C(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f);
extern "C" void fn_8005EDE8(s32 a, s32 b, s32 c);
extern "C" void fn_8005E8DC(s32 a);
extern "C" void fn_8005F11C(s32 a);
extern "C" void fn_8005E8B8(s32 a);
extern "C" void fn_8005F48C(s32 a, s32 b, s32 c, s32 d);
extern "C" void fn_8005F538(s32 a, s32 b, s32 c);
extern "C" void fn_8005F56C(s32 a);
extern "C" void fn_8005EEB0(s32 a, s32 b, s32 c, s32 d, s32 e);
extern "C" void fn_8005F4E0(s32 a);
extern "C" void fn_8005F50C(s32 a);
extern "C" void fn_8005C46C(s32 a);
extern "C" void fn_800601C0(s32 a);
extern s32 lbl_8053CDD8;
extern s32 lbl_80543F20;

extern "C" void fn_8013B1E8(void) {
    fn_8005AD7C();
    fn_8005A464(0x9, 0x1);
    fn_8005A464(0xd, 0x1);
    fn_8005ADB4(0x0, 0x9, 0x1, 0x4, 0x0);
    fn_8005ADB4(0x0, 0xd, 0x1, 0x4, 0x0);
    fn_8005D404(0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2);
    fn_8005D3C8(0x1);
    fn_8005B6BC(0x0, 0x1, 0x4, 0x3c, 0x0, 0x7d);
    fn_8005B93C(0x1);

    s32 tempA = lbl_8053CDD8;
    fn_8005EBC4(0x1, &tempA);

    s32 tempB = lbl_80543F20;
    fn_8005EBC4(0x2, &tempB);

    fn_8005EF80(0x0, 0x0, 0x0, 0xff);
    fn_8005EA6C(0x0, 0xf, 0x8, 0x2, 0x4);
    fn_8005EAB0(0x0, 0x7, 0x4, 0x1, 0x2);
    fn_8005EAF4(0x0, 0x0, 0x0, 0x0, 0x1, 0x0);
    fn_8005EB5C(0x0, 0x0, 0x0, 0x0, 0x1, 0x0);
    fn_8005EDE8(0x0, 0x0, 0x0);
    fn_8005E8DC(0x0);
    fn_8005F11C(0x1);
    fn_8005E8B8(0x0);
    fn_8005F48C(0x1, 0x4, 0x5, 0xf);
    fn_8005F538(0x1, 0x3, 0x1);
    fn_8005F56C(0x0);
    fn_8005EEB0(0x4, 0x0, 0x0, 0x7, 0x0);
    fn_8005F4E0(0x1);
    fn_8005F50C(0x0);
    fn_8005C46C(0x0);
    fn_800601C0(0x1);
}
