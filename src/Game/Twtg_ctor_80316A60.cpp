// fn_80316A60 - "TWTG" real constructor. Identical shape to FTGL/JIJI -
// see Ftgl_ctor_80317C38.cpp for the full technique writeup. Base Actor
// ctor + own vtable install, allocates a 0x1c-byte resource handle and
// resets it via ResetResourceHandleRecord if allocation succeeded,
// storing the handle (or null) at +0x278.

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

extern "C" void* lbl_804AAD60[];

class Twtg : public Actor {
public:
    Twtg();
};

Twtg::Twtg() : Actor() {
    *(void**)this = lbl_804AAD60;
    ResourceHandle* h = new ResourceHandle();
    *(ResourceHandle**)((char*)this + 0x278) = h;
}
