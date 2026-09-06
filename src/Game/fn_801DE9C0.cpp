extern "C" void fn_801CE2BC(void);
extern "C" void fn_8021835C(void* this_);

// TINK (vtable lbl_804A51E4). Thin wrapper: calls the zero-arg
// fn_801CE2BC() then fn_8021835C(this). Both callees are outside this
// gap and remain undecompiled.
extern "C" void fn_801DE9C0(void* this_) {
    fn_801CE2BC();
    fn_8021835C(this_);
}
