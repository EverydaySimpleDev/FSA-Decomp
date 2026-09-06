typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804AC8C0[];

class Nwok : public Actor {
public:
    Nwok();
};

Nwok::Nwok() : Actor() {
    *(void**)this = lbl_804AC8C0;
    __construct_array((char*)this + 0x290, (void*)fn_8003B2CC, 0, 0xc, 4);
}
