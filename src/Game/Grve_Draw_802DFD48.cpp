typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_801F06F0(void* this_, void* table, u32 count, void* data, f32 f1, f32 f2, s32 mode);
extern u8 lbl_8046E9C0[];
extern f32 lbl_80541188;

extern "C" void Grve_Draw(void* this_) {
    if (*(s32*)((char*)this_ + 0x230) >= 2) {
        fn_801F06F0(this_, lbl_8046E9C0, 0x16d, 0, lbl_80541188, lbl_80541188, 7);
    }
}
