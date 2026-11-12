"""generated from defs/mace_i2c.toml by defs-gen - do not edit, change the source
O2 MACE two-wire (I2C) bus interface"""

UNIT = 'mace_i2c'
REGISTERS = {'config': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'config_alias': {'offset': 8, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'control': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'data': {'offset': 24, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}}
WORDS = {}
FIELDS = {'config': {'clock_in': (5, 5), 'data_in': (4, 4), 'clock_pin_override': (3, 3), 'data_pin_override': (2, 2), 'fast_mode': (1, 1), 'reset': (0, 0)}, 'config_alias': {}, 'control': {'bus_error': (7, 7), 'ack_missing': (5, 5), 'transfer_busy': (4, 4), 'hold': (2, 2), 'direction': (1, 1), 'force_idle': (0, 0)}, 'data': {'byte': (7, 0)}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'BLOCK_BASE': {'value': 523436032, 'count': 1, 'stride': 1}}
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
