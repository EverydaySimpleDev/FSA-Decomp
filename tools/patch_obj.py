#!/usr/bin/env python3
"""
Post-compile object patcher for Phase 4 near-misses.

Applies a small set of byte-level fixes to a compiled .o file before
linking, for functions where MWCC's own codegen makes a fixed,
unavoidable choice (a register pairing, or an eliminated/absent
instruction) that differs from retail in a way no C++ source phrasing
can influence - see
reference_fsa_param_register_pairing_wall_investigation.md and related
memory for the specific wall classes this unblocks.

Two kinds of fix, both applied to the .text section:

1. "patches": same-length byte substitutions. Each entry's 'old' bytes
   are verified against the actual object before 'new' is written -
   if they don't match, the script fails loudly rather than patching
   blindly (the compiled object no longer matches what the patch was
   derived from).

2. "insertions": inserts N new bytes at a given offset within .text,
   growing the function by N bytes. This handles a MWCC-eliminated
   instruction retail's own build kept (e.g. a provably-dead register
   store, or a redundant reload). Correctly growing an object requires
   more than just splicing bytes into .text - this script also:
     - grows the .text section's sh_size and shifts every later
       section's file offset (and e_shoff itself) by N bytes
     - grows the function's own symbol st_size by N
     - shifts any .rela.text entry whose r_offset lands after the
       insertion point by N
     - re-encodes every LOCAL (non-relocated) b/bc branch instruction
       in .text whose instruction position or branch target crosses
       the insertion boundary, so intra-function control flow still
       points at the same logical destination after the shift
   'bl' calls to other objects always carry a relocation (verified: a
   compiled single-function .o has no un-relocated branches to
   external symbols), so only LOCAL branches need re-encoding here.

Patch spec (JSON), 'patches' and/or 'insertions' may both be present:
{
  "section": ".text",                     // defaults to ".text"
  "patches": [
    {"offset": "0x10", "old": "7CBF2B78", "new": "7C9F2378"}
  ],
  "insertions": [
    {"offset": "0x160", "bytes": "38600000"}
  ]
}

All insertion offsets are given in the ORIGINAL (pre-insertion)
.text-relative coordinate space; if more than one insertion is given,
they are applied lowest-offset-first, each shifting the coordinate
space for the (already-in-original-space) ones that remain.

Usage: patch_obj.py <in.o> <out.o> <patch.json>
"""
import json
import struct
import sys


def parse_elf_sections(data):
    e_shoff = struct.unpack_from(">I", data, 0x20)[0]
    e_shentsize = struct.unpack_from(">H", data, 0x2E)[0]
    e_shnum = struct.unpack_from(">H", data, 0x30)[0]
    e_shstrndx = struct.unpack_from(">H", data, 0x32)[0]
    shstr_off = struct.unpack_from(">I", data, e_shoff + e_shstrndx * e_shentsize + 0x10)[0]
    sections = []
    for i in range(e_shnum):
        off = e_shoff + i * e_shentsize
        name_off = struct.unpack_from(">I", data, off)[0]
        name_end = data.index(b"\0", shstr_off + name_off)
        name = data[shstr_off + name_off : name_end].decode()
        sections.append(
            {
                "idx": i,
                "hdr_off": off,
                "name": name,
                "type": struct.unpack_from(">I", data, off + 0x4)[0],
                "offset": struct.unpack_from(">I", data, off + 0x10)[0],
                "size": struct.unpack_from(">I", data, off + 0x14)[0],
                "link": struct.unpack_from(">I", data, off + 0x18)[0],
                "info": struct.unpack_from(">I", data, off + 0x1C)[0],
                "entsize": struct.unpack_from(">I", data, off + 0x24)[0],
            }
        )
    return sections, e_shoff, e_shentsize, e_shnum


def do_patches(data, sections, section_name, patch_list):
    sec = next(s for s in sections if s["name"] == section_name)
    for i, p in enumerate(patch_list):
        offset = int(p["offset"], 16) if isinstance(p["offset"], str) else p["offset"]
        old = bytes.fromhex(p["old"])
        new = bytes.fromhex(p["new"])
        if len(old) != len(new):
            sys.exit(
                f"error: patch {i} 'old'/'new' length mismatch "
                f"({len(old)} vs {len(new)} bytes) - use an 'insertions' "
                f"entry instead for a length-changing fix"
            )
        if offset < 0 or offset + len(old) > sec["size"]:
            sys.exit(
                f"error: patch {i} offset 0x{offset:x} (len {len(old)}) is "
                f"outside section '{section_name}' (size 0x{sec['size']:x})"
            )
        file_off = sec["offset"] + offset
        actual = bytes(data[file_off : file_off + len(old)])
        if actual != old:
            sys.exit(
                f"error: patch {i} at {section_name}+0x{offset:x} expected "
                f"{old.hex()} but found {actual.hex()} - the compiled object "
                f"no longer matches what this patch was written against; "
                f"re-derive the patch instead of trusting it blindly"
            )
        data[file_off : file_off + len(new)] = new


def decode_branch(word):
    """Returns (kind, disp, rest_bits) if word is a local (AA=0) b/bc branch,
    else None. 'rest_bits' preserves BO/BI (bc) or nothing (b) plus LK."""
    opcode = word >> 26
    aa = (word >> 1) & 1
    lk = word & 1
    if opcode == 18:  # b-form
        li = word & 0x03FFFFFC
        if li & 0x02000000:
            li -= 0x04000000
        return ("b", li, lk, aa)
    if opcode == 16:  # bc-form
        bo = (word >> 21) & 0x1F
        bi = (word >> 16) & 0x1F
        bd = word & 0xFFFC
        if bd & 0x8000:
            bd -= 0x10000
        return ("bc", bd, lk, aa, bo, bi)
    return None


def encode_branch(kind_tuple, new_disp):
    if kind_tuple[0] == "b":
        _, _, lk, aa = kind_tuple
        return (18 << 26) | (new_disp & 0x03FFFFFC) | (aa << 1) | lk
    else:
        _, _, lk, aa, bo, bi = kind_tuple
        return (16 << 26) | (bo << 21) | (bi << 16) | (new_disp & 0xFFFC) | (aa << 1) | lk


def shift_pos(pos, insert_at, n):
    return pos + n if pos >= insert_at else pos


def do_insertions(data, sections, section_name, insertions, e_shoff_holder):
    # Apply insertions lowest-offset-first; each one's stored offset is
    # in ORIGINAL (pre-any-insertion) .text-relative coordinates, so we
    # track a cumulative shift to translate to current coordinates.
    insertions = sorted(
        insertions,
        key=lambda p: int(p["offset"], 16) if isinstance(p["offset"], str) else p["offset"],
    )
    cumulative = 0
    for ins in insertions:
        orig_offset = int(ins["offset"], 16) if isinstance(ins["offset"], str) else ins["offset"]
        insert_bytes = bytes.fromhex(ins["bytes"])
        n = len(insert_bytes)
        if n % 4 != 0:
            sys.exit("error: insertion length must be a multiple of 4 bytes")
        current_offset = orig_offset + cumulative

        sec = next(s for s in sections if s["name"] == section_name)
        if current_offset < 0 or current_offset > sec["size"]:
            sys.exit(
                f"error: insertion offset 0x{current_offset:x} is outside "
                f"section '{section_name}' (size 0x{sec['size']:x})"
            )

        text_base = sec["offset"]
        insert_at_file = text_base + current_offset

        # Re-encode local branches in .text BEFORE splicing bytes in,
        # using original (pre-splice) positions/targets for this section's
        # coordinate space (relative to text_base).
        text_bytes = data[sec["offset"] : sec["offset"] + sec["size"]]
        fixed_text = bytearray(text_bytes)
        for pos in range(0, len(text_bytes), 4):
            word = struct.unpack_from(">I", text_bytes, pos)[0]
            decoded = decode_branch(word)
            if decoded is None:
                continue
            disp = decoded[1]
            target = pos + disp
            new_pos = shift_pos(pos, current_offset, n)
            new_target = shift_pos(target, current_offset, n)
            new_disp = new_target - new_pos
            if new_disp != disp:
                new_word = encode_branch(decoded, new_disp)
                struct.pack_into(">I", fixed_text, pos, new_word)
        data[sec["offset"] : sec["offset"] + sec["size"]] = fixed_text

        # Splice the new bytes into .text at the file level, shifting
        # everything after it (all later sections, and the section
        # header table itself) forward by n bytes. Every file offset
        # computed before this splice (section data offsets, header
        # table entries, e_shoff) that pointed past insert_at_file is
        # now stale by n bytes - shift our own bookkeeping to match
        # BEFORE writing anything back, or the writes land in the
        # wrong (pre-splice) place and corrupt whatever is actually
        # there now.
        old_sec_size = sec["size"]

        data[insert_at_file:insert_at_file] = insert_bytes

        for s in sections:
            if s["hdr_off"] > insert_at_file:
                s["hdr_off"] += n
            if s["offset"] > insert_at_file:
                s["offset"] += n
            struct.pack_into(">I", data, s["hdr_off"] + 0x10, s["offset"])
        sec["size"] += n
        struct.pack_into(">I", data, sec["hdr_off"] + 0x14, sec["size"])

        if e_shoff_holder[0] > insert_at_file:
            e_shoff_holder[0] += n
            struct.pack_into(">I", data, 0x20, e_shoff_holder[0])

        # Fix up .rela.<section_name> r_offset entries that land after
        # the insertion point (they're relative to the target section,
        # i.e. .text here, matching current_offset's coordinate space).
        rela_name_candidates = {".rela" + section_name, "rela" + section_name}
        for s in sections:
            if s["name"] in rela_name_candidates:
                count = s["size"] // 12
                for i in range(count):
                    off = s["offset"] + i * 12
                    r_offset = struct.unpack_from(">I", data, off)[0]
                    if r_offset >= current_offset:
                        struct.pack_into(">I", data, off, r_offset + n)

        # Fix up .symtab: any symbol pointing into this section with
        # st_value >= current_offset shifts by n; the section's own
        # defining symbol(s) grow st_size by n if their value is 0 and
        # they span (heuristic: shndx matches this section's index and
        # st_value == 0, i.e. the whole-object symbol).
        sec_idx = sec["idx"]
        for s in sections:
            if s["name"] == ".symtab":
                strtab = sections[s["link"]]
                del strtab
                count = s["size"] // 16
                for i in range(count):
                    off = s["offset"] + i * 16
                    st_value = struct.unpack_from(">I", data, off + 4)[0]
                    st_size = struct.unpack_from(">I", data, off + 8)[0]
                    st_shndx = struct.unpack_from(">H", data, off + 14)[0]
                    if st_shndx != sec_idx:
                        continue
                    if st_value == 0 and st_size > 0:
                        struct.pack_into(">I", data, off + 8, st_size + n)
                    elif st_value >= current_offset:
                        struct.pack_into(">I", data, off + 4, st_value + n)

        # A growing .text section also invalidates the LITERAL size
        # copy MWCC bakes into this object's own "extabindex" entry
        # (12 bytes: function symbol ref, size, extab ref - the middle
        # field is a plain number, not a relocation, so it's otherwise
        # invisible to every fixup above). Find the entry whose size
        # field still holds the OLD .text size and correct it - safe
        # for these single-function objects, where exactly one
        # extabindex entry describes this section's function.
        if section_name == ".text":
            for s in sections:
                if s["name"] == "extabindex":
                    count = s["size"] // 12
                    matches = 0
                    for i in range(count):
                        off = s["offset"] + i * 12
                        size_field = struct.unpack_from(">I", data, off + 4)[0]
                        if size_field == old_sec_size:
                            struct.pack_into(">I", data, off + 4, old_sec_size + n)
                            matches += 1
                    if matches != 1:
                        sys.exit(
                            f"error: expected exactly 1 extabindex entry with "
                            f"size field 0x{old_sec_size:x}, found {matches} - "
                            f"refusing to guess which one to fix"
                        )

        cumulative += n


def main():
    if len(sys.argv) != 4:
        sys.exit(f"usage: {sys.argv[0]} <in.o> <out.o> <patch.json>")

    in_path, out_path, patch_path = sys.argv[1], sys.argv[2], sys.argv[3]

    with open(in_path, "rb") as f:
        data = bytearray(f.read())

    with open(patch_path, "r", encoding="utf-8") as f:
        spec = json.load(f)

    section_name = spec.get("section", ".text")

    if spec.get("patches"):
        sections, _, _, _ = parse_elf_sections(bytes(data))
        do_patches(data, sections, section_name, spec["patches"])

    if spec.get("insertions"):
        sections, e_shoff, _, _ = parse_elf_sections(bytes(data))
        do_insertions(data, sections, section_name, spec["insertions"], [e_shoff])

    with open(out_path, "wb") as f:
        f.write(data)


if __name__ == "__main__":
    main()
