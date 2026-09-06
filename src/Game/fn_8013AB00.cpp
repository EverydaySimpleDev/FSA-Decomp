extern void* lbl_8053A980;
extern char lbl_8049F0CC[];

extern "C" void fn_80092FD0(void* target, void* table);

// fn_8013AB00 - sibling of fn_8013AAD4 immediately above it: same
// pattern, but sets lbl_8053A980's table to lbl_8049F0CC instead - a
// second table of identical stride (0x3C bytes after lbl_8049F090 in
// rodata). Likely a per-language/region variant of the same
// glyph-width table.
extern "C" void fn_8013AB00(void) {
    fn_80092FD0(lbl_8053A980, lbl_8049F0CC);
}
