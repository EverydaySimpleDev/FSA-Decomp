typedef float f32;

extern f32 lbl_8053F1CC;

extern "C" void fn_801CE694(void* this_);

// fn_801D8980(this) - clamps position (this->0x10) to a per-instance
// ceiling (this->0x2d0); when clamped, also zeroes vertical velocity
// (this->0x40). Unconditionally tail-calls fn_801CE694(this) - this
// class's next update() step.
extern "C" void fn_801D8980(void* this_) {
    if (*(f32*)((char*)this_ + 0x10) > *(f32*)((char*)this_ + 0x2d0)) {
        *(f32*)((char*)this_ + 0x10) = *(f32*)((char*)this_ + 0x2d0);
        *(f32*)((char*)this_ + 0x40) = lbl_8053F1CC;
    }
    fn_801CE694(this_);
}
