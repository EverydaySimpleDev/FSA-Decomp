# fn_8019CECC(this, src) - copies a 3-float vector from src to this.
# Kept as raw asm: this exact "3-float struct copy" shape has already
# failed natural-C++ promotion twice this session (fn_8018A684, tenth
# batch) - MWCC's load-ahead scheduling for the first 2 loads does not
# respond to source restructuring. Split out of the original
# Mgr_SetSpawnParam..SetTriple_0x24c_0x250_0x254 dtk cluster.
.text
.balign 4
.global fn_8019CECC

fn_8019CECC:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr
