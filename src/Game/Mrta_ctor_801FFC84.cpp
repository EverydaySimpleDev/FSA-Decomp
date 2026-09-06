typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_801FFCDC(void*);
extern void* lbl_804ACD70[];

class Mrta : public Actor {
public:
    Mrta();
};

Mrta::Mrta() : Actor() {
    *(void**)this = lbl_804ACD70;
    __construct_array((char*)this + 0x268, (void*)fn_801FFCDC, 0, 0x14, 4);
}
