typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_8049F6C8[];

class Dgtl : public Actor {
public:
    Dgtl();
};

Dgtl::Dgtl() : Actor() {
    *(void**)this = lbl_8049F6C8;
    __construct_array((char*)this + 0x2c0, (void*)fn_8003B2CC, 0, 0xc, 0xa);
    __construct_array((char*)this + 0x3d8, (void*)fn_8003B2CC, 0, 0xc, 0x50);
}
