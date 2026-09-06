class SubObj_8042B12C {
public:
    SubObj_8042B12C();
private:
    unsigned char pad[0x13f8];
};

class SubObj_8042ADC0 {
public:
    SubObj_8042ADC0();
private:
    unsigned char pad[0x64380];
};

class SubObj_8042A7FC {
public:
    SubObj_8042A7FC();
private:
    unsigned char pad[0x64378];
};

extern void* lbl_804B15D0[];

extern "C" void* fn_80428030(void* this_) {
    char* p = (char*)this_;
    *(void**)p = lbl_804B15D0;
    SubObj_8042B12C* obj1 = new SubObj_8042B12C();
    *(SubObj_8042B12C**)(p + 0x4) = obj1;
    SubObj_8042ADC0* obj2 = new SubObj_8042ADC0();
    *(SubObj_8042ADC0**)(p + 0x8) = obj2;
    SubObj_8042A7FC* obj3 = new SubObj_8042A7FC();
    *(SubObj_8042A7FC**)(p + 0xc) = obj3;
    return this_;
}
