typedef short s16;

extern "C" void* fn_801D30B8(void* this_);
extern "C" void dtor_801F593C(void* this_, int flag);
extern void* lbl_804A5810[];
extern void* lbl_804A48B0[];
extern void* lbl_804A4808[];
extern void* lbl_8049CC34[];

class Fn801D30B8Base {
public:
    Fn801D30B8Base();
    ~Fn801D30B8Base();
private:
    unsigned char pad[0x2b0];
};

class Zosh : public Fn801D30B8Base {
public:
    Zosh();
};

Zosh::Zosh() {
    *(void**)this = lbl_804A5810;

    unsigned char localTemp[0x2b0];
    fn_801D30B8(localTemp);
    *(void**)localTemp = lbl_804A48B0;
    *(void**)localTemp = lbl_804A4808;
    unsigned char* q = localTemp + 0x270;
    if (q != 0) {
        if (q + 0x24 != 0) {
            *(void**)(localTemp + 0x294) = lbl_8049CC34;
        }
    }
    dtor_801F593C(localTemp, 0);
}
