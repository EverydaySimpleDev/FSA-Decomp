#include "types.h"

// "Apply a lighting/fog preset" family (siblings: fn_8013AC90, fn_8013B1E8).
// Each runs an identical ~20-call battery of low-level GX render-state
// setters (none decompiled yet - plain integer-literal args) with
// different hardcoded literal parameters per call site (per-scene
// fog/light color and range presets), then writes `color`'s 4 floats
// directly into the GX CPU write-gather-pipe FIFO at 0xCC008000
// (bypassing the normal GX API - a hand-inlined fast path), replicating
// components across 8 writes in order [0,1,2,1,2,3,0,3].
extern "C" void fn_8005AD7C(void);
extern "C" void fn_8005A464(s32 a, s32 b);
extern "C" void fn_8005ADB4(s32 a, s32 b, s32 c, s32 d, s32 e);
extern "C" void fn_8005D404(s32 a, s32 b, s32 c, s32 d, s32 e, s32 f, s32 g);
extern "C" void fn_8005D3C8(s32 a);
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
extern "C" void fn_8005C24C(s32 a, s32 b, s32 c);

extern "C" void fn_8013B004(f32* color, void* obj) {
    fn_8005AD7C();
    fn_8005A464(0x9, 0x1);
    fn_8005ADB4(0x0, 0x9, 0x0, 0x4, 0x0);
    fn_8005D404(0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2);
    fn_8005D3C8(0x1);
    fn_8005B93C(0x0);

    s32 temp = *(s32*)obj;
    fn_8005EBC4(0x1, &temp);

    fn_8005EF80(0x0, 0xff, 0xff, 0xff);
    fn_8005EA6C(0x0, 0xf, 0xf, 0xf, 0x2);
    fn_8005EAB0(0x0, 0x7, 0x7, 0x7, 0x1);
    fn_8005EAF4(0x0, 0x0, 0x0, 0x0, 0x1, 0x0);
    fn_8005EB5C(0x0, 0x0, 0x0, 0x0, 0x1, 0x0);
    fn_8005EDE8(0x0, 0x0, 0x0);
    fn_8005E8DC(0x0);
    fn_8005F11C(0x1);
    fn_8005E8B8(0x0);
    fn_8005F48C(0x1, 0x4, 0x5, 0xf);
    fn_8005F538(0x0, 0x3, 0x0);
    fn_8005F56C(0x0);
    fn_8005EEB0(0x4, 0x0, 0x0, 0x7, 0x0);
    fn_8005F4E0(0x1);
    fn_8005F50C(0x0);
    fn_8005C46C(0x0);
    fn_8005C24C(0x80, 0x0, 0x4);

    f32 c0 = color[0];
    volatile f32* pipe = (volatile f32*)0xCC008000;
    f32 c1 = color[1];
    *pipe = c0;
    f32 c2 = color[2];
    *pipe = c1;
    f32 c3 = color[3];
    *pipe = c2;
    *pipe = c1;
    *pipe = c2;
    *pipe = c3;
    *pipe = c0;
    *pipe = c3;
}
