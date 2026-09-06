extern void* lbl_8053A980;
extern char lbl_8049F090[];

extern "C" void fn_80092FD0(void* target, void* table);

// fn_8013AAD4 - sets the global text-rendering singleton lbl_8053A980's
// active character-width/glyph table to lbl_8049F090, via fn_80092FD0
// (the generic "set data table, flag+invalidate on change" setter
// already confirmed in oscluster_8008e6a4.c and used throughout the
// Scene Manager). lbl_8049F090's raw bytes aren't ASCII text - they
// look like a per-glyph pixel-width table (many repeated narrow
// values) - consistent with a default font width table.
extern "C" void fn_8013AAD4(void) {
    fn_80092FD0(lbl_8053A980, lbl_8049F090);
}
