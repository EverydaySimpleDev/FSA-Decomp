typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void fn_801D267C(void*);
extern void* lbl_8049CDC0[];

class fn_801092B0_actor : public Actor {
public:
    fn_801092B0_actor();
};

fn_801092B0_actor::fn_801092B0_actor() : Actor() {
    *(void**)this = lbl_8049CDC0;
    char* p = (char*)this;
    fn_801D267C(p + 0x230);
    *(s32*)(p + 0x268) = 8;
    *(s32*)(p + 0x26c) = 0;
    *(s32*)(p + 0x270) = -1;
    *(s32*)(p + 0x274) = 0;
}
