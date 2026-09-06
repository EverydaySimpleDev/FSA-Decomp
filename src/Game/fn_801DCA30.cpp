typedef unsigned char u8;

extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A4F90[];

// fn_801DCA30(this) - THE REAL C++ CONSTRUCTOR for this class - confirms
// the hedge in fn_801DC89C's banner was correct: this function chains
// to the base constructor fn_801D0F40 and sets this->vtable =
// lbl_804A4F90 (the same vtable dtor_801DC990 resets to), matching
// this session's established "real ctor" signature that fn_801DC89C
// lacked. Zeroes this->0x2a8 (a per-launch counter, matching the
// equivalent field in the previous class).
extern "C" void* fn_801DCA30(void* this_) {
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A4F90;
    *(u8*)((char*)this_ + 0x2a8) = 0;
    return this_;
}
