typedef int s32;
typedef unsigned int u32;
typedef unsigned short u16;
typedef float f32;

extern "C" f32 fn_80093340(void* table, f32 x, f32 y);
extern "C" s32 ClassifyBamAngleToQuadrant(s32 param);
extern "C" void fn_801D22DC(void* this_, s32 seqIndex, s32 mode, s32 evalNow);
extern "C" void fn_801F0E34(void* target, u32 effectId, s32 flag);
extern void* lbl_80534C00[];
extern f32 lbl_8053FE7C;

extern "C" void fn_80221184(void* this_) {
    char* p = (char*)this_;
    f32 angle = fn_80093340(lbl_80534C00, *(f32*)(p + 0x3c), *(f32*)(p + 0x40));
    s32 intResult = (s32)(angle * lbl_8053FE7C);
    u16 bam = (u16)(intResult - 0x8000);
    s32 quadrant = ClassifyBamAngleToQuadrant(bam);
    *(s32*)(p + 0x98) = quadrant;
    fn_801D22DC(p + 0x270, *(s32*)(p + 0x98) + 0xc, 0, 0);
    fn_801F0E34(this_, 0x400c2, 0);
}
