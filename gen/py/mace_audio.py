"""generated from defs/mace_audio.toml by defs-gen - do not edit, change the source
O2 MACE audio interface: codec command, stereo DMA ring control and pointers"""

UNIT = 'mace_audio'
REGISTERS = {'ctl_status': {'offset': 0, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 1, 'grade': 'established'}, 'codec_cmd': {'offset': 8, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 65536, 'grade': 'established'}, 'response_mask': {'offset': 16, 'access': 'rw', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'codec_response': {'offset': 24, 'access': 'r', 'width': 64, 'count': 1, 'stride': 8, 'space': None, 'reset': 0, 'grade': 'established'}, 'ring_control': {'offset': 32, 'access': 'rw', 'width': 64, 'count': 3, 'stride': 32, 'space': None, 'reset': 1024, 'grade': 'established'}, 'ring_read': {'offset': 40, 'access': 'rw', 'width': 64, 'count': 3, 'stride': 32, 'space': None, 'reset': 0, 'grade': 'established'}, 'ring_write': {'offset': 48, 'access': 'rw', 'width': 64, 'count': 3, 'stride': 32, 'space': None, 'reset': 0, 'grade': 'established'}, 'ring_depth': {'offset': 56, 'access': 'r', 'width': 64, 'count': 3, 'stride': 32, 'space': None, 'reset': 0, 'grade': 'established'}}
WORDS = {}
FIELDS = {'ctl_status': {'volume_edge_24': (24, 24), 'volume_edge_23': (23, 23), 'playback2_read_alias': (22, 16), 'playback1_read_alias': (15, 9), 'capture_write_alias': (8, 2), 'codec_present': (1, 1), 'codec_reset': (0, 0)}, 'codec_cmd': {'codec_addr': (23, 17), 'codec_direction': (16, 16), 'codec_data': (15, 0)}, 'response_mask': {'mask': (15, 0)}, 'codec_response': {'word': (15, 0)}, 'ring_control': {'channel_reset': (10, 10), 'dma_enable': (9, 9), 'threshold': (7, 5)}, 'ring_read': {'block_index': (11, 5)}, 'ring_write': {'block_index': (11, 5)}, 'ring_depth': {'blocks': (11, 5)}}
ENUMS = {'codec_direction': {0: 'write', 1: 'read'}, 'ring_threshold': {0: 'off', 1: 'depth_quarter', 2: 'depth_half', 3: 'depth_three_quarter', 4: 'empty', 5: 'not_empty', 6: 'full', 7: 'not_full'}}
FIELD_ENUM = {'codec_cmd.codec_direction': 'codec_direction', 'ring_control.threshold': 'ring_threshold'}
CONSTANTS = {'BLOCK_BASE': {'value': 523239424, 'count': 1, 'stride': 1}}
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
