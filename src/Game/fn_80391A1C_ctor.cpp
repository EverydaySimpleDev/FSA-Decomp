typedef int s32;

class ArchiveHolder_803973E8 {
public:
    ArchiveHolder_803973E8(void* owner, s32 val, const char* name);
private:
    unsigned char pad[0x3c4];
};

extern void* lbl_804AF490[];
extern char lbl_804756D8[];
extern char lbl_804756F4[];

extern "C" void* fn_80391A1C(void* this_, s32 param2) {
    char* p = (char*)this_;
    *(void**)p = lbl_804AF490;
    *(s32*)(p + 0x18) = param2;
    ArchiveHolder_803973E8* obj1 = new ArchiveHolder_803973E8(this_, *(s32*)(p + 0x18), lbl_804756D8);
    *(ArchiveHolder_803973E8**)(p + 0x48) = obj1;
    ArchiveHolder_803973E8* obj2 = new ArchiveHolder_803973E8(this_, *(s32*)(p + 0x18), lbl_804756F4);
    *(ArchiveHolder_803973E8**)(p + 0x4c) = obj2;
    *(char*)(p + 0x44) = 0;
    *(s32*)(p + 0x1c) = 1;
    return this_;
}
