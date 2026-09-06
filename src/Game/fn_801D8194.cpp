extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A4BB0[];

// fn_801D8194(this) - the constructor for dtor_801D80F0's class. Calls
// fn_801D0F40 - the SAME base-construction step confirmed for
// ClassX/the position-trail-predictor's own constructors - meaning
// this is an 11TH sibling class sharing that common ancestor. Sets
// its own vtable to lbl_804A4BB0 (matches dtor_801D80F0 exactly) and
// zeroes its 2 effect-handle slots (this->0x2a8/0x2ac).
extern "C" void* fn_801D8194(void* this_) {
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A4BB0;
    *(int*)((char*)this_ + 0x2a8) = 0;
    *(int*)((char*)this_ + 0x2ac) = 0;
    return this_;
}
