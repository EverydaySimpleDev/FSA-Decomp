// fn_80317C38 - "FTGL" real constructor. Identical shape to JIJI/TWTG:
// base Actor ctor + own vtable install, then allocates a 0x1c-byte
// resource handle and resets it via ResetResourceHandleRecord if the
// allocation succeeded, storing the handle (or null) at +0x24c.
//
// This is the first "owned resource + base-class exception safety"
// pattern landed as real C++ - it needed genuine C++ inheritance (not a
// raw Actor_ctor(this) function call) to get MWCC to emit the real
// DESTROYBASE+DELETEPOINTER extab pair, plus aliasing Actor_ctor/
// dtor_801F593C to their mangled Actor::Actor()/Actor::~Actor() call
// targets via the LCF (see config/G4SE01/ldscript.tpl and
// reference_fsa_operator_new_delete_identified.md). The key remaining
// trick: calling ResetResourceHandleRecord from INSIDE ResourceHandle's
// own (trivial, MWCC-inlined) constructor reuses the compiler's own
// "did the allocation succeed" check instead of adding a second,
// redundant explicit null-check - that redundant check is what broke
// both the register allocation and the extab region shape in earlier
// attempts.

typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

extern "C" void ResetResourceHandleRecord(void* h);

class ResourceHandle {
public:
    ResourceHandle() { ResetResourceHandleRecord(this); }
    ~ResourceHandle();
private:
    unsigned char pad[0x1c];
};

extern "C" void* lbl_804AADD8[];

class Ftgl : public Actor {
public:
    Ftgl();
};

Ftgl::Ftgl() : Actor() {
    *(void**)this = lbl_804AADD8;
    ResourceHandle* h = new ResourceHandle();
    *(ResourceHandle**)((char*)this + 0x24c) = h;
}
