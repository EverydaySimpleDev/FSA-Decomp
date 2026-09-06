typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_80203594(void*);
extern void* lbl_804A0738[];

class Bome : public Actor {
public:
    Bome();
};

Bome::Bome() : Actor() {
    *(void**)this = lbl_804A0738;
    __construct_array((char*)this + 0x274, (void*)fn_80203594, 0, 0x18, 5);
    __construct_array((char*)this + 0x2ec, (void*)fn_80203594, 0, 0x18, 5);
}
