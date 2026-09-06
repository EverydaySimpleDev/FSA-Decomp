typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804AC600[];

class Beee : public Actor {
public:
    Beee();
};

Beee::Beee() : Actor() {
    *(void**)this = lbl_804AC600;
    __construct_array((char*)this + 0x2a4, (void*)fn_8003B2CC, 0, 0xc, 7);
    __construct_array((char*)this + 0x2f8, (void*)fn_8003B2CC, 0, 0xc, 7);
    __construct_array((char*)this + 0x34c, (void*)fn_8003B2CC, 0, 0xc, 7);
}
