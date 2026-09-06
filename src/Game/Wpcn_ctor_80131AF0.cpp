typedef int s32;
typedef float f32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void fn_801D267C(void*);
extern void* lbl_8049EAE0[];
extern f32 lbl_8053CCA0;

class Wpcn : public Actor {
public:
    Wpcn();
};

Wpcn::Wpcn() : Actor() {
    *(void**)this = lbl_8049EAE0;
    char* p = (char*)this;
    fn_801D267C(p + 0x230);
    *(s32*)(p + 0x268) = 0;
    f32 f = lbl_8053CCA0;
    *(s32*)(p + 0x26c) = -1;
    *(s32*)(p + 0x270) = 0;
    *(s32*)(p + 0x274) = 0;
    *(s32*)(p + 0x278) = 0;
    *(f32*)(p + 0x27c) = f;
    *(f32*)(p + 0x280) = f;
    *(f32*)(p + 0x284) = f;
    *(f32*)(p + 0x288) = f;
    *(f32*)(p + 0x28c) = f;
    *(f32*)(p + 0x290) = f;
    *(f32*)(p + 0x294) = f;
    *(f32*)(p + 0x298) = f;
}
