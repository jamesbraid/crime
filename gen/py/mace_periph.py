"""generated from defs/mace_periph.toml by defs-gen - do not edit, change the source
O2 MACE peripheral ring base and interrupt status and mask"""

UNIT = 'mace_periph'
REGISTERS = {'ring_base': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'periph_status': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}, 'periph_mask': {'offset': 24, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 'unknown', 'grade': 'established'}}
WORDS = {}
FIELDS = {'ring_base': {'dma_ring_base': (31, 15), 'ext_reset': (0, 0)}, 'periph_status': {'serial_b': (26, 26), 'serial_a': (20, 20), 'timer_cmp2': (15, 15), 'timer_cmp1': (14, 14), 'timer_cmp0': (13, 13), 'rtc': (8, 8), 'audio_playback2_error': (7, 7), 'audio_playback2_threshold': (6, 6), 'audio_playback1_error': (5, 5), 'audio_playback1_threshold': (4, 4), 'audio_capture_overflow': (3, 3), 'audio_capture_threshold': (2, 2), 'audio_volume': (1, 1), 'audio_codec_mask': (0, 0)}, 'periph_mask': {}}
ENUMS = {}
FIELD_ENUM = {}
CONSTANTS = {'BLOCK_BASE': {'value': 523304960, 'count': 1, 'stride': 1}, 'ISA_BASE': {'value': 523763712, 'count': 1, 'stride': 1}, 'ISA_REG_STRIDE': {'value': 256, 'count': 1, 'stride': 1}, 'RTC_BASE': {'value': 523894784, 'count': 1, 'stride': 1}, 'SERIAL_A_BASE': {'value': 523829248, 'count': 1, 'stride': 1}, 'SERIAL_B_BASE': {'value': 523862016, 'count': 1, 'stride': 1}}
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
