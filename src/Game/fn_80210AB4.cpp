typedef float f32;

extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A61C8[];
extern f32 lbl_8053FAC0;

// fn_80210AB4 - a shared INTERMEDIATE Actor-derived base class
// constructor, no 4-char dispatch code of its own. Calls the OTHER
// shared intermediate base fn_801D0F40 (embeds a blend-timer at
// +0x270), installs its OWN vtable lbl_804A61C8, and adds ONE float
// default field at +0x2a8 (from lbl_8053FAC0). Shared by IPOT and
// IBBM.
extern "C" void* fn_80210AB4(void* this_) {
    fn_801D0F40(this_);
    f32 def = lbl_8053FAC0;
    *(void**)this_ = lbl_804A61C8;
    *(f32*)((char*)this_ + 0x2a8) = def;
    return this_;
}
