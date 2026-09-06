extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A5038[];

// fn_801DCF40(this) - THE REAL C++ CONSTRUCTOR for this new class:
// chains to the base constructor fn_801D0F40 and sets this->vtable =
// lbl_804A5038 (the same vtable dtor_801DCE9C resets to). Zeroes
// this->0x2a8/0x2ac (the 2 attached-effect-handle fields
// fn_801DCC98/fn_801DCDB4/dtor_801DCE9C all operate on).
extern "C" void* fn_801DCF40(void* this_) {
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A5038;
    *(int*)((char*)this_ + 0x2a8) = 0;
    *(int*)((char*)this_ + 0x2ac) = 0;
    return this_;
}
