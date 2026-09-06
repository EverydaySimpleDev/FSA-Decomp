typedef int s32;
typedef float f32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void fn_801D267C(void*);
extern void* lbl_8049ED30[];
extern f32 lbl_8053F830;

class Crnv : public Actor {
public:
    Crnv();
};

Crnv::Crnv() : Actor() {
    *(void**)this = lbl_8049ED30;
    char* p = (char*)this;
    f32 f = lbl_8053F830;
    *(s32*)(p + 0x230) = 0;
    *(s32*)(p + 0x234) = 0;
    *(s32*)(p + 0x238) = -1;
    *(f32*)(p + 0x23c) = f;
    fn_801D267C(p + 0x240);
    *(s32*)(p + 0x278) = 0;
    *(s32*)(p + 0x27c) = 0;
}
