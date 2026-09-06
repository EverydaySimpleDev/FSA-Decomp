typedef unsigned int u32;
typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8003B2CC(void*);
extern void* lbl_804A7EB0[];

class Goal : public Actor {
public:
    Goal();
};

Goal::Goal() : Actor() {
    *(void**)this = lbl_804A7EB0;
    __construct_array((char*)this + 0x264, (void*)fn_8003B2CC, 0, 0xc, 4);
}
