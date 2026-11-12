"""generated from defs/mte.toml by defs-gen - do not edit, change the source
O2 CRIME memory transfer engine registers and tile layout"""

UNIT = 'mte'
REGISTERS = {'mode': {'offset': 12288, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'established'}, 'bytemask': {'offset': 12296, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'stipplemask': {'offset': 12304, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'fg': {'offset': 12312, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'src0': {'offset': 12320, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'src1': {'offset': 12328, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'dst0': {'offset': 12336, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'dst1': {'offset': 12344, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'src_ystep': {'offset': 12352, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'dst_ystep': {'offset': 12360, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'null': {'offset': 12400, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}, 'flush': {'offset': 12408, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': 're', 'reset': 'unknown', 'grade': 'inferred'}}
WORDS = {'ADDR': {'width': 32, 'grade': 'established'}}
FIELDS = {'mode': {'copy': (11, 11), 'stipple': (10, 10), 'depth': (9, 8), 'src_buf': (7, 5), 'dst_buf': (4, 2), 'src_ecc': (1, 1), 'dst_ecc': (0, 0)}, 'bytemask': {}, 'stipplemask': {}, 'fg': {}, 'src0': {}, 'src1': {}, 'dst0': {}, 'dst1': {}, 'src_ystep': {}, 'dst_ystep': {}, 'null': {}, 'flush': {}, 'ADDR': {'byte_col': (31, 16), 'row': (15, 0)}}
ENUMS = {'mode.depth': {0: 'bits8', 1: 'bits16', 2: 'bits32'}, 'mode.src_buf': {0: 'fb_a', 1: 'fb_b', 2: 'fb_c', 3: 'tex', 4: 'lin_a', 5: 'lin_b', 6: 'cid'}, 'mode.dst_buf': {0: 'fb_a', 1: 'fb_b', 2: 'fb_c', 3: 'tex', 4: 'lin_a', 5: 'lin_b', 6: 'cid'}}
FIELD_ENUM = {'mode.depth': 'mode.depth', 'mode.src_buf': 'mode.src_buf', 'mode.dst_buf': 'mode.dst_buf'}
CONSTANTS = {'SUBTILE_BLOCK_BYTES': {'value': 32, 'count': 1, 'stride': 1}, 'SUBTILE_BYTES': {'value': 8192, 'count': 1, 'stride': 1}, 'TILE_BYTES': {'value': 65536, 'count': 1, 'stride': 1}, 'TILE_ROWS': {'value': 128, 'count': 1, 'stride': 1}, 'TILE_ROW_BYTES': {'value': 512, 'count': 1, 'stride': 1}}
TESTS = [('mode', 267, {'copy': 0, 'depth': 1, 'dst_buf': 2, 'src_ecc': 1, 'dst_ecc': 1}), ('mode', 2080, {'copy': 1, 'stipple': 0, 'depth': 0, 'src_buf': 1, 'dst_buf': 0}), ('ADDR', 4194336, {'byte_col': 64, 'row': 32})]


def decode(name, value):
    """Field name -> value for a register or word."""
    return {f: (value >> lo) & ((1 << (hi - lo + 1)) - 1) for f, (hi, lo) in FIELDS[name].items()}


def encode(name, **fields):
    v = 0
    for f, x in fields.items():
        hi, lo = FIELDS[name][f]
        if x >> (hi - lo + 1):
            raise ValueError('%s.%s: %d does not fit' % (name, f, x))
        v |= x << lo
    return v


def describe(name, value):
    """decode, with enum labels where the field has an enum."""
    out = {}
    for f, x in decode(name, value).items():
        e = ENUMS.get(FIELD_ENUM.get('%s.%s' % (name, f)))
        out[f] = e.get(x, x) if e else x
    return out


def selftest():
    for name, value, expect in TESTS:
        got = decode(name, value)
        for f, want in expect.items():
            assert got[f] == want, (name, hex(value), f, got[f], want)
    return len(TESTS)


if __name__ == '__main__':
    print('%s: %d vectors ok' % (UNIT, selftest()))
