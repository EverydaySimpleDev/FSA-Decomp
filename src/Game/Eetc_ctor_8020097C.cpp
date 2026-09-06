typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804ADF28[];

class Eetc : public Actor {
public:
    Eetc();
};

Eetc::Eetc() : Actor() {
    *(void**)this = lbl_804ADF28;
    __construct_array((char*)this + 0x27c, (void*)fn_8003B2CC, 0, 0xc, 3);
    __construct_array((char*)this + 0x2a0, (void*)fn_8003B2CC, 0, 0xc, 3);
    __construct_array((char*)this + 0x2c4, (void*)fn_8003B2CC, 0, 0xc, 3);
}
