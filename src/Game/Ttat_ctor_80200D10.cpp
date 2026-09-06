typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804A2FB0[];

class Ttat : public Actor {
public:
    Ttat();
};

Ttat::Ttat() : Actor() {
    *(void**)this = lbl_804A2FB0;
    __construct_array((char*)this + 0x280, (void*)fn_8003B2CC, 0, 0xc, 4);
}
