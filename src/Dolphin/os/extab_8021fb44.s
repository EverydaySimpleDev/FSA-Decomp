# fn_8021FB44 - a physics/motion-parameter-block initializer, same
# role as fn_801EB950 (see extab_801eb950.s) - takes an explicit target
# address (not an inheritance base) and fills 0x40 bytes with float
# defaults from 2 small-data globals plus 3 zeroed int fields at the
# end. Used by SLGE (embedded at its own +0x3f8).
# NOTE: attempted real-C++ promotion 6 times total (2 prior session, 4
# this session). RESOLVED the f0/f1 register-role mismatch: declaring
# BOTH float locals uninitialized upfront in REVERSED order (the
# once-used value `b` declared BEFORE the 10x-reused value `a`, even
# though `a` is ASSIGNED first in program order) makes MWCC choose
# f1=a(10x-reused)/f0=b(once-used), matching retail exactly - the same
# counter-intuitive "declare the second-used value first" lever
# documented elsewhere in this project, now confirmed for a 2-float
# case. ONE residual remains: retail computes the `0` integer constant
# (`li 0,0x0`) BEFORE the first float load (`lfs f1,...`), but every
# phrasing tried (bare literal, named local declared first, named local
# assigned first) either keeps `li` after the first `lfs` or fuses it
# immediately with its own store (losing the interleave entirely) -
# MWCC's relative scheduling of 2 independent, non-dependent operations
# (an int constant materialization vs an unrelated float load) doesn't
# respond to source order here, matching the established "some
# schedules are scheduler-internal, not reachable from source" pattern
# elsewhere in this project. Left as raw asm - very close (73/80 bytes
# match once the earlier documented register-swap is fixed).
.text
.balign 4
.global fn_8021FB44

fn_8021FB44:
    li 0, 0x0
    .4byte 0xC022CE3C # lfs f1, lbl_8053FDDC@sda21(r0)
    stw 0, 0x0(3)
    .4byte 0xC002CE38 # lfs f0, lbl_8053FDD8@sda21(r0)
    stw 0, 0x4(3)
    stfs 1, 0x8(3)
    stfs 1, 0xc(3)
    stfs 1, 0x10(3)
    stfs 1, 0x14(3)
    stfs 1, 0x18(3)
    stfs 1, 0x1c(3)
    stfs 1, 0x20(3)
    stfs 1, 0x24(3)
    stfs 1, 0x28(3)
    stfs 1, 0x2c(3)
    stfs 0, 0x30(3)
    stw 0, 0x34(3)
    stw 0, 0x38(3)
    stw 0, 0x3c(3)
    blr
