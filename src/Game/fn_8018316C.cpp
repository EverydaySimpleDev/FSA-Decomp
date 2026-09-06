extern "C" void* RusaRegistry_GetOrInit(void);
extern "C" void fn_80212AF0(void* registry, void* posPtr);
extern "C" void fn_801F5790(void* this_);

// fn_8018316C(this) - closes the loop on RUSA's fn_80212AF0 (see
// project_fsa_rusa_actor_progress.md and
// project_fsa_80212af0_callers_closed.md). This is one of (at least) 3
// near-identical vtable-slot-0x18 overrides found across a large,
// still-entirely-unclaimed actor family in the 0x8018xxxx address
// range (siblings: fn_80183C18, fn_80184A14). Each: fetches RUSA's
// "active instances" registry via RusaRegistry_GetOrInit, pushes
// this's own position (&this->0xc) away from any RUSA zone it's
// inside via fn_80212AF0, THEN chains to the confirmed GENERIC
// slot-0x18 default fn_801F5790 (extending, not replacing, the
// generic behavior). This confirms vtable offset 0x18 - previously
// catalogued as an always-generic slot - is in fact a real override
// point, used here as a "resolve collision with RUSA instances"
// post-step.
extern "C" void fn_8018316C(void* this_) {
    void* registry = RusaRegistry_GetOrInit();
    fn_80212AF0(registry, (char*)this_ + 0xc);
    fn_801F5790(this_);
}
