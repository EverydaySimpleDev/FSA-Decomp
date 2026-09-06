// fn_8037CE00 - "JIJI" real constructor. Identical shape to FTGL/TWTG -
// see Ftgl_ctor_80317C38.cpp for the full technique writeup. Base Actor
// ctor + own vtable install, allocates a 0x1c-byte resource handle and
// resets it via ResetResourceHandleRecord if allocation succeeded,
// storing the handle (or null) at +0x274.

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

extern "C" void* lbl_804AEED0[];

class Jiji : public Actor {
public:
    Jiji();
};

Jiji::Jiji() : Actor() {
    *(void**)this = lbl_804AEED0;
    ResourceHandle* h = new ResourceHandle();
    *(ResourceHandle**)((char*)this + 0x274) = h;
}
