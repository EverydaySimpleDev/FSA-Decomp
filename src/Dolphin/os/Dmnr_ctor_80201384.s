.section extab, "a"
.balign 4
.global etb_80009464
etb_80009464:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009464, 8

.section extabindex, "a"
.balign 4
.global eti_80016C90
eti_80016C90:
    .4byte fn_80201384
    .4byte 0x00000054
    .4byte etb_80009464
.size eti_80016C90, 12

# fn_80201384 - "DMNR" real constructor. Calls the shared base
# fn_8010E074 (see project_fsa_dispatcher_mass_landing.md), installs
# its own vtable lbl_8049E500, plus its own direct inline field
# defaults: 0x230=0x0, 0x234=float from lbl_8053F830, 0x238=float from lbl_8053F830, 0x23c=0x0. Identified via the fn_801F9484 dispatcher sweep
# (see reference_fsa_full_dispatch_sweep.md).
.text
.balign 4
.global fn_80201384

fn_80201384:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049E500@ha
    li 0, 0x0
    addi 3, 3, lbl_8049E500@l
    .4byte 0xC002C890 # lfs f0, lbl_8053F830@sda21(r0)
    stw 3, 0x0(31)
    mr 3, 31
    stw 0, 0x230(31)
    stfs 0, 0x234(31)
    stfs 0, 0x238(31)
    stw 0, 0x23c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

