extern "C" void* RusaRegistry_GetOrInit(void);
extern "C" void fn_80212AF0(void* registry, void* posPtr);
extern "C" void fn_801F5790(void* this_);

// fn_80183C18(this) - sibling of fn_8018316C (see that file's banner
// and project_fsa_80212af0_callers_closed.md) - another class's
// vtable-slot-0x18 override doing the identical "repel from RUSA
// zones, then chain to the generic slot-0x18 default" pattern.
extern "C" void fn_80183C18(void* this_) {
    void* registry = RusaRegistry_GetOrInit();
    fn_80212AF0(registry, (char*)this_ + 0xc);
    fn_801F5790(this_);
}
