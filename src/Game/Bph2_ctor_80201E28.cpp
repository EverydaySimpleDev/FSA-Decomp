typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804A1E50[];

class Bph2 : public Actor {
public:
    Bph2();
};

Bph2::Bph2() : Actor() {
    *(void**)this = lbl_804A1E50;
    __construct_array((char*)this + 0x2f8, (void*)fn_8003B2CC, 0, 0xc, 4);
}
