typedef unsigned char u8;

extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A48B0[];

/*
 * fn_801D30B8 - the constructor for "ClassX" (see
 * project_fsa_multiple_inheritance_pattern.md). Calls fn_801D0F40 (the
 * same base-class construction step as fn_801D1974's "position-trail
 * predictor" class - sibling classes sharing a common ancestor
 * dtor_801B7E1C, not the same class). Sets its own primary vtable to
 * lbl_804A48B0 (matches dtor_801D2C60's dtor exactly) and this->0x2a8=0
 * (the "grace period" countdown fn_801D2E70's update() manages).
 */
extern "C" void* fn_801D30B8(void* this_) {
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A48B0;
    *(u8*)((char*)this_ + 0x2a8) = 0;
    return this_;
}
