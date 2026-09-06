struct Actor {
    Actor();
    ~Actor();
};

extern "C" void fn_801EB950(void*);
extern void* lbl_804ACCC0[];

class Tugf : public Actor {
public:
    Tugf();
};

Tugf::Tugf() : Actor() {
    *(void**)this = lbl_804ACCC0;
    fn_801EB950((char*)this + 0x230);
}
