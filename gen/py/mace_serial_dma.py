"""generated from defs/mace_serial_dma.toml by defs-gen - do not edit, change the source
O2 MACE serial port DMA channels: channel control, ring pointers and depth"""

UNIT = 'mace_serial_dma'
REGISTERS = {'channel_control': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 2, 'stride': 32, 'space': None, 'reset': 1024, 'grade': 'established'}, 'channel_read': {'offset': 8, 'access': 'rw', 'width': 64, 'count': 2, 'stride': 32, 'space': None, 'reset': 0, 'grade': 'established'}, 'channel_write': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 2, 'stride': 32, 'space': None, 'reset': 0, 'grade': 'established'}, 'channel_depth': {'offset': 24, 'access': 'r', 'width': 64, 'count': 2, 'stride': 32, 'space': None, 'reset': 0, 'grade': 'established'}}
WORDS = {}
FIELDS = {'channel_control': {'channel_reset': (10, 10), 'dma_enable': (9, 9), 'threshold': (7, 5)}, 'channel_read': {'block_index': (11, 5)}, 'channel_write': {'block_index': (11, 5)}, 'channel_depth': {'blocks': (11, 5)}}
ENUMS = {'serial_threshold': {0: 'off', 1: 'depth_quarter', 2: 'depth_half', 3: 'depth_three_quarter', 4: 'empty', 5: 'not_empty', 6: 'full', 7: 'not_full'}}
FIELD_ENUM = {'channel_control.threshold': 'serial_threshold'}
CONSTANTS = {'BLOCK_BASE': {'value': 523337728, 'count': 1, 'stride': 1}, 'PORT2_BLOCK_BASE': {'value': 523354112, 'count': 1, 'stride': 1}, 'RING_BASE_ALIGN': {'value': 32768, 'count': 1, 'stride': 1}, 'RING_BYTES': {'value': 4096, 'count': 1, 'stride': 1}}
TESTS = []


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
