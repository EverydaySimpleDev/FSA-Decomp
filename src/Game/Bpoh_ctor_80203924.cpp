typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern "C" void fn_8009711C(void*);
extern void* lbl_804A0440[];

class Bpoh : public Actor {
public:
    Bpoh();
};

Bpoh::Bpoh() : Actor() {
    *(void**)this = lbl_804A0440;
    __construct_array((char*)this + 0x2b8, (void*)fn_8003B2CC, 0, 0xc, 4);
    __construct_array((char*)this + 0x2f4, (void*)fn_8009711C, 0, 0x4, 3);
}
