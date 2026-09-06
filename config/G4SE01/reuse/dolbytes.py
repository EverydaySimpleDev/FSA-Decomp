import struct
import sys

def dol_addr_to_offset(path, vaddr):
    with open(path, 'rb') as f:
        header = f.read(0x100)
    offsets = struct.unpack('>7I', header[0x00:0x1C])
    addrs = struct.unpack('>7I', header[0x48:0x64])
    sizes = struct.unpack('>7I', header[0x90:0xAC])
    for i in range(7):
        if addrs[i] <= vaddr < addrs[i] + sizes[i]:
            return offsets[i] + (vaddr - addrs[i])
    # data sections
    offsets_d = struct.unpack('>11I', header[0x1C:0x48])
    addrs_d = struct.unpack('>11I', header[0x64:0x90])
    sizes_d = struct.unpack('>11I', header[0xAC:0xD8])
    for i in range(11):
        if addrs_d[i] <= vaddr < addrs_d[i] + sizes_d[i]:
            return offsets_d[i] + (vaddr - addrs_d[i])
    return None

def read_bytes(path, vaddr, n):
    off = dol_addr_to_offset(path, vaddr)
    with open(path, 'rb') as f:
        f.seek(off)
        return f.read(n)

if __name__ == '__main__':
    path = sys.argv[1]
    vaddr = int(sys.argv[2], 16)
    n = int(sys.argv[3]) if len(sys.argv) > 3 else 0xC0
    data = read_bytes(path, vaddr, n)
    for i in range(0, len(data), 16):
        chunk = data[i:i+16]
        hexstr = ' '.join(f'{b:02X}' for b in chunk)
        print(f'{vaddr+i:08X}: {hexstr}')
