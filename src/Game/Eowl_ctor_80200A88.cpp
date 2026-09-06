struct Actor {
    Actor();
    ~Actor();
};

extern "C" void InitDefaultRecord(void*);
extern void* lbl_804ADAC8[];

class Eowl : public Actor {
public:
    Eowl();
};

Eowl::Eowl() : Actor() {
    *(void**)this = lbl_804ADAC8;
    InitDefaultRecord((char*)this + 0x2a0);
}
