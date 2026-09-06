typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804A2944[];

class fn_80201A14_actor : public Actor {
public:
    fn_80201A14_actor();
};

fn_80201A14_actor::fn_80201A14_actor() : Actor() {
    *(void**)this = lbl_804A2944;
    __construct_array((char*)this + 0x2a4, (void*)fn_8003B2CC, 0, 0xc, 4);
    __construct_array((char*)this + 0x2d4, (void*)fn_8003B2CC, 0, 0xc, 4);
}
