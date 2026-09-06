# fn_8039A540 - component B: second vtable-slot function (0xf8). Kept
# as raw asm: mixes byte-stride and word-stride computed-index writes
# off the same this->0x201 field, plus extensive sequential field
# resets - split from fn_8039A510, which was promoted to
# Game/stub_8039a510.cpp.
#
# NOTE: attempted real-C++ promotion (this session). The 30+ straight-
# line field resets and the single-cached-float-global-reused pattern
# are fine (established safe shapes), but the 4 self-relative computed-
# address writes (`this + this->0x201*4 + offset`, `this + this->0x281
# + offset`) all compile to `stfsx`/`stbx` (fused indexed stores)
# instead of retail's `add r4,r3,rIdx` (separate base computation) then
# plain immediate-offset `stfs`/`stb`. **This is the STORE-instruction
# analogue of the confirmed `lwzx` wall** (see fn_802F9908's banner,
# 6th load-side instance this session) - MWCC's -O4 has the same
# unconditional fused-indexed-instruction preference for stores as for
# loads, for any `base[computed_index]`-shaped access. Left as raw asm.
.text
.balign 4
.global fn_8039A540

fn_8039A540:
    li 6, -0x1
    li 5, 0x0
    stw 6, 0x3c(3)
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    stw 6, 0x40(3)
    stb 5, 0x201(3)
    lbz 0, 0x201(3)
    slwi 0, 0, 2
    add 4, 3, 0
    stfs 0, 0x4c(4)
    lbz 0, 0x201(3)
    slwi 0, 0, 2
    add 4, 3, 0
    stfs 0, 0xf4(4)
    lbz 0, 0x201(3)
    add 4, 3, 0
    stb 5, 0x22d(4)
    stb 5, 0x22c(3)
    stb 5, 0x281(3)
    stb 5, 0x282(3)
    stfs 0, 0x19c(3)
    stb 5, 0x1ee(3)
    stb 5, 0x1fe(3)
    stfs 0, 0x1a0(3)
    stb 5, 0x1ef(3)
    stb 5, 0x1ff(3)
    stfs 0, 0x1a4(3)
    stb 5, 0x1f0(3)
    stb 5, 0x200(3)
    stb 5, 0x1fd(3)
    stfs 0, 0x1a8(3)
    stb 5, 0x1f1(3)
    stfs 0, 0x1ac(3)
    stb 5, 0x1f2(3)
    stfs 0, 0x1b0(3)
    stb 5, 0x1f3(3)
    stfs 0, 0x1b4(3)
    stb 5, 0x1f4(3)
    stfs 0, 0x1b8(3)
    stb 5, 0x1f5(3)
    stfs 0, 0x1bc(3)
    stb 5, 0x1f6(3)
    stfs 0, 0x1c0(3)
    stb 5, 0x1f7(3)
    stfs 0, 0x1c4(3)
    stb 5, 0x1f8(3)
    stfs 0, 0x1c8(3)
    stb 5, 0x1f9(3)
    stfs 0, 0x1cc(3)
    stb 5, 0x1fa(3)
    stfs 0, 0x1d0(3)
    stb 5, 0x1fb(3)
    stfs 0, 0x1d4(3)
    stb 5, 0x1fc(3)
    lbz 0, 0x281(3)
    add 4, 3, 0
    stb 6, 0x202(4)
    lbz 0, 0x281(3)
    add 4, 3, 0
    stb 5, 0x257(4)
    stb 5, 0x1e8(3)
    blr
