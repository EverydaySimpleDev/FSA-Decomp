typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_80458880(void* p1, s32 p2, s32 p3);
extern "C" void fn_803B35F8(void* this_, u8 flag);

extern void* lbl_8053AF80;

extern "C" void fn_803AF604(void* this_) {
    char* t = (char*)this_;
    s32 v = *(s32*)(t + 0x440) - 1;
    *(s32*)(t + 0x440) = v;
    v = *(s32*)(t + 0x440);

    if (v > 10) {
        if (v > 0xb4) {
            if (v % 2 == 0) {
                u8 c = *(u8*)(t + 0x4c7);
                *(u8*)(t + 0x4c7) = c + 1;
                fn_80458880(lbl_8053AF80, 0x20, -1);
            }
        } else if (v > 0x78) {
            if (v % 3 == 0) {
                u8 c = *(u8*)(t + 0x4c7);
                *(u8*)(t + 0x4c7) = c + 1;
                fn_80458880(lbl_8053AF80, 0x20, -1);
            }
        } else if (v > 0x3c) {
            if (v % 4 == 0) {
                u8 c = *(u8*)(t + 0x4c7);
                *(u8*)(t + 0x4c7) = c + 1;
                fn_80458880(lbl_8053AF80, 0x20, -1);
            }
        } else {
            if (v % 5 == 0) {
                u8 c = *(u8*)(t + 0x4c7);
                *(u8*)(t + 0x4c7) = c + 1;
                fn_80458880(lbl_8053AF80, 0x20, -1);
            }
        }
    } else {
        if (v == 10) {
            fn_80458880(lbl_8053AF80, 0x21, -1);
        }
    }

    if (*(u8*)(t + 0x4c7) >= 9) {
        *(u8*)(t + 0x4c7) = 0;
    }

    if (*(s32*)(t + 0x440) == 0) {
        u8 flagArg = *(u8*)(t + 0x4c7);
        fn_803B35F8(this_, flagArg);
        *(s32*)(t + 0x440) = 0x96;
        *(u8*)(t + 0x4c1) = 0xd;
    }
}
