typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_80200544(void*);
extern void* lbl_804AA350[];

class Gnef : public Actor {
public:
    Gnef();
};

Gnef::Gnef() : Actor() {
    *(void**)this = lbl_804AA350;
    __construct_array((char*)this + 0x27c, (void*)fn_80200544, 0, 0x14, 4);
}
