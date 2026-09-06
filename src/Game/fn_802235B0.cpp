typedef int s32;
typedef float f32;

extern f32 lbl_8053EFB8;

extern "C" void fn_80221250(void* this_);
extern "C" void fn_801CE4E8(void* this_);

// fn_802235B0 - fn_80224084's own vtable-0x88 override (see
// extab_80223f90.s and project_fsa_growing_area_extension.md). Extends
// the fn_80221BE4/fn_80222D28 shape with a 3rd state: state==2 calls
// fn_80221250 (same as the other two classes), state==6 gives the
// growth scalar this->0x44 an EXTRA boost (+= lbl_8053EFB8) on top of
// whatever the generic growth driver does, any other state falls
// through to the generic 0x88 default fn_801CE4E8.
extern "C" void fn_802235B0(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x248);
    switch (state) {
    case 2:
        fn_80221250(this_);
        break;
    case 6:
        *(f32*)((char*)this_ + 0x44) += lbl_8053EFB8;
        break;
    default:
        fn_801CE4E8(this_);
        break;
    }
}
