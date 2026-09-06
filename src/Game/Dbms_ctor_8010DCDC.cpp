struct Actor {
    Actor();
    ~Actor();
};

extern "C" void fn_801D267C(void*);
extern void* lbl_8049D0E8[];

class Dbms : public Actor {
public:
    Dbms();
};

Dbms::Dbms() : Actor() {
    *(void**)this = lbl_8049D0E8;
    fn_801D267C((char*)this + 0x230);
}
