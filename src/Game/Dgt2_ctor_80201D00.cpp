typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804A1FA0[];

class Dgt2 : public Actor {
public:
    Dgt2();
};

Dgt2::Dgt2() : Actor() {
    *(void**)this = lbl_804A1FA0;
    __construct_array((char*)this + 0x288, (void*)fn_8003B2CC, 0, 0xc, 6);
    __construct_array((char*)this + 0x2d0, (void*)fn_8003B2CC, 0, 0xc, 0x14);
}
