typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_8049E770[];

class Dmtw : public Actor {
public:
    Dmtw();
};

Dmtw::Dmtw() : Actor() {
    *(void**)this = lbl_8049E770;
    __construct_array((char*)this + 0x25c, (void*)fn_8003B2CC, 0, 0xc, 6);
    __construct_array((char*)this + 0x2c8, (void*)fn_8003B2CC, 0, 0xc, 4);
    __construct_array((char*)this + 0x2f8, (void*)fn_8003B2CC, 0, 0xc, 4);
    __construct_array((char*)this + 0x3b8, (void*)fn_8003B2CC, 0, 0xc, 4);
}
