// fn_802E73B4 - WAVE: setParams. Sets this->0x234=0x3c (60), allocates and
// placement-constructs an owned "wave controller" sub-object via a genuine
// `new` expression, storing the result at this->0x230 (referenced by
// update()/the destructor). The real class name/fields aren't known yet -
// the class body here is an honest byte-count placeholder (padded to the
// real sizeof, 0x5c) rather than a guessed field layout.
//
// This is the first "owned sub-object" pattern landed as real C++ - it
// required identifying fn_80084370/dtor_80084580 as this project's global
// operator new(unsigned long)/operator delete(void*) (see
// reference_fsa_operator_new_delete_identified.md) and aliasing MWCC's
// auto-generated mangled call targets to them via the LCF (see
// config/G4SE01/ldscript.tpl), since a real `new`-expression is the only
// way to get MWCC to emit the correct exception-safety DESTROYLOCAL/
// DELETEPOINTER extab entry - a hand-written pointer/malloc-style
// implementation compiles to matching .text bytes but omits this entirely.

typedef int s32;

class WaveController {
public:
    WaveController(s32 a, s32 b, s32 c);
    ~WaveController();
private:
    unsigned char pad[0x5c];
};

extern "C" void Wave_SetParams(void* this_) {
    char* p = (char*)this_;
    *(s32*)(p + 0x234) = 0x3c;
    *(WaveController**)(p + 0x230) = new WaveController(0, 0, 8);
}
