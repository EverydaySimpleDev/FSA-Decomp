// fn_80200BB4 - "ELNK" real constructor. Base Actor ctor
// (Actor_ctor) + a DOUBLE vtable install: lbl_804A5958 is
// installed first then immediately overwritten by
// lbl_804AD858 - the confirmed base-overridden-by-derived
// multiple-inheritance pattern (see
// project_fsa_multiple_inheritance_pattern.md). lbl_804A5958 is
// shared with sibling constructors using the exact same intermediate
// vtable, meaning several of these actors share one un-landed mixin
// base class. Identified via the fn_801F9484 dispatcher sweep (see
// reference_fsa_full_dispatch_sweep.md).

extern "C" void* Actor_ctor(void* this_);
extern "C" void* lbl_804A5958[];
extern "C" void* lbl_804AD858[];

extern "C" void* Elnk_ctor(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A5958;
    *(void**)this_ = lbl_804AD858;
    return this_;
}
