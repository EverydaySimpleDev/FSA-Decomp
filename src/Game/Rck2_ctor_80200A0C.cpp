typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_80200A84(void*);
extern "C" void fn_80200A80(void*);
extern void* lbl_804AC950[];

class Rck2 : public Actor {
public:
    Rck2();
};

Rck2::Rck2() : Actor() {
    *(void**)this = lbl_804AC950;
    __construct_array((char*)this + 0x260, (void*)fn_80200A84, 0, 0x18, 8);
    __construct_array((char*)this + 0x320, (void*)fn_80200A80, 0, 0x14, 4);
}
