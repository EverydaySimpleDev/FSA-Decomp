typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_801546E4(void*);
extern void* lbl_804A7AE0[];

class Hous : public Actor {
public:
    Hous();
};

Hous::Hous() : Actor() {
    *(void**)this = lbl_804A7AE0;
    __construct_array((char*)this + 0x2dc, (void*)fn_801546E4, 0, 0x8, 4);
}
