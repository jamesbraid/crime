"""generated from defs/mace_ethernet.toml by defs-gen - do not edit, change the source
O2 MACE Fast-Ethernet diagnostic interrupt request and transmit status vector"""

UNIT = 'mace_ethernet'
REGISTERS = {'interrupt_request': {'offset': 88, 'access': 'w', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}}
WORDS = {'TX_STATUS_VECTOR': {'width': 64, 'grade': 'established'}}
FIELDS = {'interrupt_request': {'write_enable': (31, 16), 'value': (15, 0)}, 'TX_STATUS_VECTOR': {'one_filled': (63, 63), 'zero_filled': (62, 29), 'late_collision_drop': (28, 28), 'excessive_deferral': (27, 27), 'excess_collisions': (26, 26), 'underrun': (25, 25), 'excessive_length': (24, 24), 'completed': (23, 23), 'deferred': (22, 22), 'crc_error': (21, 21), 'late_collision': (20, 20), 'collision_retries': (19, 16), 'length': (15, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'BLOCK_BASE': {'value': 522715136, 'count': 1, 'stride': 1}, 'INTERRUPT_SLOT': {'value': 3, 'count': 1, 'stride': 1}, 'INTERRUPT_UPDATE_TAG': {'value': 12, 'count': 1, 'stride': 1}}
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
