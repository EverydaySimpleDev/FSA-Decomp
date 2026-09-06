typedef int s32;

struct Actor {
    Actor();
    ~Actor();
};

class WaveController {
public:
    WaveController(s32 a, s32 b, s32 c);
    ~WaveController();
private:
    unsigned char pad[0x5c];
};

extern void* lbl_8049CC98[];

class fn_801070B4_actor : public Actor {
public:
    fn_801070B4_actor();
};

fn_801070B4_actor::fn_801070B4_actor() : Actor() {
    *(void**)this = lbl_8049CC98;
    char* p = (char*)this;
    *(s32*)(p + 0x230) = 0;
    *(s32*)(p + 0x234) = 3;
    *(s32*)(p + 0x238) = 0;
    *(s32*)(p + 0x23c) = 0;
    *(s32*)(p + 0x240) = 0;
    *(s32*)(p + 0x244) = 0;
    *(WaveController**)(p + 0x244) = new WaveController(0, 0, 8);
}
