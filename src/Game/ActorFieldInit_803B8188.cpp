typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_80458F9C(void* p1, s32 p2);
extern "C" void fn_80458FF0(void* p1, s32 p2, s32 p3, s32 p4);
extern "C" void fn_80128C58(s32 p1);
extern "C" void fn_8013A884(void* p1);

extern u8 lbl_80529DEC[];
extern void* lbl_8053AF80;
extern void* lbl_8053AB10;

extern "C" void fn_803B8188(void* this_) {
    char* t = (char*)this_;
    *(u8*)(t + 0x296) = 0;
    *(s32*)(t + 0x1a0) = 0;
    *(s32*)(t + 0x1a4) = 0;
    *(s32*)(t + 0x1a8) = 0;
    *(s32*)(t + 0x1ac) = 0;
    *(s32*)(t + 0x1b8) = 0;
    *(s32*)(t + 0x1bc) = 0;
    *(s32*)(t + 0x284) = 0;
    *(s32*)(t + 0x288) = 0;
    *(s32*)(t + 0x198) = 0;
    *(s32*)(t + 0x19c) = 0;
    *(s16*)(t + 0x1dc) = 0;
    *(s32*)(t + 0x1c0) = 0;
    *(s32*)(t + 0x1c4) = 0;
    *(s32*)(t + 0x1c8) = 0;
    *(s32*)(t + 0x1cc) = 0;
    *(s32*)(t + 0x1d0) = -1;
    *(s32*)(t + 0x1d4) = -1;
    *(s32*)(t + 0x1d8) = -1;
    *(u8*)(t + 0x297) = 0;
    *(u8*)(t + 0x298) = 0;
    *(u8*)(t + 0x29b) = 0;
    *(u8*)(t + 0x29c) = 0;
    *(u8*)(t + 0x29d) = 0;
    *(u8*)(t + 0x29e) = 0;
    *(u8*)(t + 0x29f) = 0;

    s32 v118 = *(s32*)(lbl_80529DEC + 0x118);
    if (v118 < 8) {
        *(s32*)(t + 0x284) = v118;
    } else {
        *(s32*)(t + 0x284) = 0;
    }

    s32 v11c = *(s32*)(lbl_80529DEC + 0x11c);
    if (v11c < 4) {
        *(s32*)(t + 0x288) = v11c;
    } else {
        *(s32*)(t + 0x288) = 0;
    }

    *(u8*)(t + 0x294) = 5;
    *(u8*)(t + 0x295) = 1;
    *(s32*)(t + 0x280) = 0x80;

    if (*(s32*)(lbl_80529DEC + 0x118) == 7 && *(s32*)(lbl_80529DEC + 0x11c) == 3) {
        fn_80458F9C(lbl_8053AF80, 0x3c);
    } else {
        fn_80458FF0(lbl_8053AF80, 0x0100002f, 1, 0);
    }

    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235c) = 0;
    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235d) = 0;
    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235e) = 0;
    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235f) = 0;

    fn_80128C58(0xff);

    s32 local = -0x100;
    fn_8013A884(&local);
}
