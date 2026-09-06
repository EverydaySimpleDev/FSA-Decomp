typedef int s32;

extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A1718[];

extern "C" void* fn_8020229C(void* this_) {
    Actor_ctor(this_);
    char* p = (char*)this_;
    *(void**)p = lbl_804A1718;
    *(s32*)(p + 0x234) = -1;
    return this_;
}
