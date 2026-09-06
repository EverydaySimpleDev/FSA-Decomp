typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_801F0E34(void* this_, s32 p1, s32 p2);

// TTAT cluster, part 9/9. Private helper called from state handler #2
// (fn_801A9CF4) - uses fn_801F0E34 (settings-gated event).
extern "C" void fn_801AA8F4(void* this_) {
    char* t = (char*)this_;
    if (*(s32*)(t + 0x234) != 0) {
        return;
    }

    *(s32*)(t + 0x24c) = *(s32*)(t + 0x25c) + *(s32*)(t + 0x240);

    switch (*(s32*)(t + 0x260)) {
    case 0:
        *(s32*)(t + 0x234) = 6;
        *(s32*)(t + 0x240) = *(s32*)(t + 0x240) + 1;
        *(s32*)(t + 0x240) = *(s32*)(t + 0x240) & 1;
        if (*(s32*)(t + 0x240) != 0) {
            fn_801F0E34(this_, 0x5002c, 0);
        }
        break;
    case 1:
        *(s32*)(t + 0x234) = 5;
        *(s32*)(t + 0x240) = *(s32*)(t + 0x240) + 1;
        if (*(s32*)(t + 0x240) > 3) {
            *(s32*)(t + 0x240) = 3;
            *(u8*)(t + 0x2b0) = 1;
        }
        break;
    case 2:
        *(s32*)(t + 0x234) = 5;
        *(s32*)(t + 0x240) = *(s32*)(t + 0x240) - 1;
        if (*(s32*)(t + 0x240) < 0) {
            *(s32*)(t + 0x240) = 0;
            *(u8*)(t + 0x2b0) = 1;
        }
        break;
    case 3:
        *(s32*)(t + 0x234) = 6;
        *(s32*)(t + 0x240) = *(s32*)(t + 0x240) + 1;
        if (*(s32*)(t + 0x240) > 3) {
            *(s32*)(t + 0x240) = 3;
            *(u8*)(t + 0x2b0) = 1;
        }
        break;
    case 4:
        *(s32*)(t + 0x234) = 6;
        *(s32*)(t + 0x240) = *(s32*)(t + 0x240) - 1;
        if (*(s32*)(t + 0x240) < 0) {
            *(s32*)(t + 0x240) = 0;
            *(u8*)(t + 0x2b0) = 1;
        }
        break;
    default:
        break;
    }
}
