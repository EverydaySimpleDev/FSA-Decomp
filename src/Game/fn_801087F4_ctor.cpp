typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void fn_801D267C(void*);
extern void* lbl_8049CD48[];

class fn_801087F4_actor : public Actor {
public:
    fn_801087F4_actor();
};

fn_801087F4_actor::fn_801087F4_actor() : Actor() {
    *(void**)this = lbl_8049CD48;
    char* p = (char*)this;
    *(s32*)(p + 0x230) = 0;
    *(s32*)(p + 0x234) = -1;
    fn_801D267C(p + 0x238);
}
