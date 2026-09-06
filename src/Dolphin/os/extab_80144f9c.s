.section extab, "a"
.balign 4
.global etb_80006CD4
etb_80006CD4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006CD4, 8

.section extabindex, "a"
.balign 4
.global eti_800136CC
eti_800136CC:
    .4byte fn_80144F9C
    .4byte 0x000000DC
    .4byte etb_80006CD4
.size eti_800136CC, 12

# fn_80144F9C - BZBR's ("Buzz Blob") real setParams(). Sets up the
# default interaction/detection box (this->0x60/64/68/6c, ->0x80/84/88/
# 8c - the same shared convention seen across every actor this session),
# isolates just the LSB of the universal spawn param (this->0x90 &= 1,
# an engine-level flag not documented per-actor in FSALib), zeroes
# several FSM/state fields (this->0x230/234/238/23c/240/248/24c), sets a
# flags word at this->0xb0=0x11101 (a pattern already seen elsewhere in
# the project, not actor-specific), then uses the CONFIRMED global PRNG
# (lbl_8053AAF8->0xb4, see reference_fsa_global_prng.md) to pick a
# RANDOMIZED value stored at this->0x244 - draw() (see extab_80144194.s)
# uses this same field as an index into per-variant model/effect lookup
# tables, so this is really a "random visual variant" pick, not a plain
# timer. Finally sets several float defaults at this->0x250/254/258/25c/
# 260 from small-data constants. FSALib's documented "Options" bitfield
# (bitOffset 24, bitSize 3 - "jumps towards player") is NOT read here;
# it must be consulted later, in update() (see extab_8014462c.s).
.text
.balign 4
.global fn_80144F9C

fn_80144F9C:
    stwu 1, -0x20(1)
    lis 4, 0x19
    .4byte 0xC082A070 # lfs f4, lbl_8053D010@sda21(r0)
    lis 5, 0x1
    .4byte 0xC022A074 # lfs f1, lbl_8053D014@sda21(r0)
    addi 0, 4, 0x660d
    stfs 4, 0x60(3)
    li 6, 0x0
    addi 5, 5, 0x1101
    .4byte 0xC042A03C # lfs f2, lbl_8053CFDC@sda21(r0)
    stfs 4, 0x64(3)
    .4byte 0xC062A078 # lfs f3, lbl_8053D018@sda21(r0)
    stfs 1, 0x68(3)
    .4byte 0xC002A038 # lfs f0, lbl_8053CFD8@sda21(r0)
    stfs 1, 0x6c(3)
    stfs 4, 0x80(3)
    stfs 4, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    lwz 4, 0x90(3)
    clrlwi 4, 4, 31
    stw 4, 0x90(3)
    stw 6, 0x234(3)
    stw 6, 0x238(3)
    stw 6, 0x23c(3)
    stw 6, 0x240(3)
    stw 6, 0x244(3)
    stw 6, 0x248(3)
    stw 6, 0x24c(3)
    stw 5, 0xb0(3)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x244(3)
    stfs 0, 0x254(3)
    stfs 2, 0x250(3)
    stfs 2, 0x258(3)
    stfs 2, 0x25c(3)
    stfs 2, 0x260(3)
    stw 6, 0x230(3)
    addi 1, 1, 0x20
    blr

