"""generated from devices/ad1843/registers.toml by defs-gen - do not edit, change the source
defs-gen 4
input sha256 8c5aee84504454f4cf65a84aedb87a4571f16f099bea697abb6e49f5efe9deda
Analog Devices AD1843 stereo codec: the 29 internal registers"""

UNIT = 'ad1843'
REGISTERS = {'status_id': {'offset': 0, 'access': 'r', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 49153, 'grade': 'established'}, 'underrun_peak': {'offset': 1, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'adc_input': {'offset': 2, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'dac2_to_dac1_mix': {'offset': 3, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'inferred'}, 'aux1_mix': {'offset': 4, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'aux2_mix': {'offset': 5, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'aux3_mix': {'offset': 6, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'mic_mix': {'offset': 7, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'mono_control': {'offset': 8, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34920, 'grade': 'established'}, 'dac1_output': {'offset': 9, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'dac2_output': {'offset': 10, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'dac1_digital_attenuation': {'offset': 11, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'dac2_digital_attenuation': {'offset': 12, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'adc_to_dac1_mix': {'offset': 13, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 32896, 'grade': 'established'}, 'adc_to_dac2_mix': {'offset': 14, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 32896, 'grade': 'established'}, 'clock_select': {'offset': 15, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'clock1_mode': {'offset': 16, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 255, 'grade': 'established'}, 'clock1_hz': {'offset': 17, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 48000, 'grade': 'established'}, 'clock1_phase': {'offset': 18, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'clock2_mode': {'offset': 19, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 255, 'grade': 'established'}, 'clock2_hz': {'offset': 20, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 48000, 'grade': 'established'}, 'clock2_phase': {'offset': 21, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'clock3_mode': {'offset': 22, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 255, 'grade': 'established'}, 'clock3_hz': {'offset': 23, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 48000, 'grade': 'established'}, 'clock3_phase': {'offset': 24, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'digital_filter': {'offset': 25, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'format_lock': {'offset': 26, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'enables': {'offset': 27, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 192, 'grade': 'established'}, 'power_clock': {'offset': 28, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 50176, 'grade': 'established'}}
WORDS = {}
FIELDS = {'status_id': {'init': (15, 15), 'pdno': (14, 14), 'id': (3, 0)}, 'underrun_peak': {'su2': (9, 9), 'su1': (8, 8), 'ovr': (3, 2), 'ovl': (1, 0)}, 'adc_input': {'lss': (15, 13), 'lmge': (12, 12), 'lig': (11, 8), 'rss': (7, 5), 'rmge': (4, 4), 'rig': (3, 0)}, 'dac2_to_dac1_mix': {'ld2mm': (15, 15), 'ld2m': (12, 8), 'rd2mm': (7, 7), 'rd2m': (4, 0)}, 'aux1_mix': {'lx1mm': (15, 15), 'lx1m': (12, 8), 'rx1mm': (7, 7), 'rx1m': (4, 0)}, 'aux2_mix': {'lx2mm': (15, 15), 'lx2m': (12, 8), 'rx2mm': (7, 7), 'rx2m': (4, 0)}, 'aux3_mix': {'lx3mm': (15, 15), 'lx3m': (12, 8), 'rx3mm': (7, 7), 'rx3m': (4, 0)}, 'mic_mix': {'lmcmm': (15, 15), 'lmcm': (12, 8), 'rmcmm': (7, 7), 'rmcm': (4, 0)}, 'mono_control': {'mnmm': (15, 15), 'mnm': (12, 8), 'allmm': (7, 7), 'mnom': (6, 6), 'hpom': (5, 5), 'hpos': (4, 4), 'summ': (3, 3), 'dac2t': (1, 1), 'dac1t': (0, 0)}, 'dac1_output': {'lda1gm': (15, 15), 'lda1g': (13, 8), 'rda1gm': (7, 7), 'rda1g': (5, 0)}, 'dac2_output': {'lda2gm': (15, 15), 'lda2g': (13, 8), 'rda2gm': (7, 7), 'rda2g': (5, 0)}, 'dac1_digital_attenuation': {'lda1am': (15, 15), 'lda1a': (13, 8), 'rda1am': (7, 7), 'rda1a': (5, 0)}, 'dac2_digital_attenuation': {'lda2am': (15, 15), 'lda2a': (13, 8), 'rda2am': (7, 7), 'rda2a': (5, 0)}, 'adc_to_dac1_mix': {'lad1mm': (15, 15), 'lad1m': (13, 8), 'rad1mm': (7, 7), 'rad1m': (5, 0)}, 'adc_to_dac2_mix': {'lad2mm': (15, 15), 'lad2m': (13, 8), 'rad2mm': (7, 7), 'rad2m': (5, 0)}, 'clock_select': {'da2c': (11, 10), 'da1c': (9, 8), 'adrc': (3, 2), 'adlc': (1, 0)}, 'clock1_mode': {'c1ref': (15, 15), 'c1vid': (14, 14), 'c1pllg': (13, 13), 'c1p200': (12, 12), 'c1x8_7': (11, 11), 'c1c128': (10, 10), 'c1m_7_4': (7, 4), 'c1m_3_0': (3, 0)}, 'clock1_hz': {'c1c': (15, 0)}, 'clock1_phase': {'c1pd': (8, 8), 'c1p': (7, 0)}, 'clock2_mode': {'c2ref': (15, 15), 'c2vid': (14, 14), 'c2pllg': (13, 13), 'c2p200': (12, 12), 'c2x8_7': (11, 11), 'c2c128': (10, 10), 'c2m_7_4': (7, 4), 'c2m_3_0': (3, 0)}, 'clock2_hz': {'c2c': (15, 0)}, 'clock2_phase': {'c2pd': (8, 8), 'c2p': (7, 0)}, 'clock3_mode': {'c3ref': (15, 15), 'c3vid': (14, 14), 'c3pllg': (13, 13), 'c3p200': (12, 12), 'c3x8_7': (11, 11), 'c3c128': (10, 10), 'c3m_7_4': (7, 4), 'c3m_3_0': (3, 0)}, 'clock3_hz': {'c3c': (15, 0)}, 'clock3_phase': {'c3pd': (8, 8), 'c3p': (7, 0)}, 'digital_filter': {'drsflt': (15, 15), 'damix': (14, 14), 'da2flt': (9, 9), 'da1flt': (8, 8), 'daadr': (7, 6), 'daadl': (5, 4), 'adrflt': (1, 1), 'adlflt': (0, 0)}, 'format_lock': {'da2sm': (15, 15), 'da1sm': (14, 14), 'da2f': (11, 10), 'da1f': (9, 8), 'scf': (7, 7), 'frs': (6, 6), 'frst': (5, 5), 'adtlk': (4, 4), 'adrf': (3, 2), 'adlf': (1, 0)}, 'enables': {'dfree': (15, 15), 'ddmen': (12, 12), 'da2en': (9, 9), 'da1en': (8, 8), 'anaen': (7, 7), 'hpen': (6, 6), 'aamen': (4, 4), 'adren': (1, 1), 'adlen': (0, 0)}, 'power_clock': {'pdni': (15, 15), 'acen': (14, 14), 'c3en': (13, 13), 'c2en': (12, 12), 'c1en': (11, 11), 'enclko': (10, 10), 'xctl': (9, 8), 'encv3': (7, 7), 'enbt3': (6, 6), 'encv2': (5, 5), 'enbt2': (4, 4), 'encv1': (3, 3), 'enbt1': (2, 2), 'linrsd': (1, 1), 'linlsd': (0, 0)}}
ENUMS = {'analog_source': {0: 'line', 1: 'mic', 2: 'aux1', 3: 'aux2', 4: 'aux3', 5: 'mono_in', 6: 'dac1_out', 7: 'dac2_out'}, 'gain_timing': {0: 'zero_cross', 1: 'immediate'}, 'clock_select': {0: 'fixed48k', 1: 'gen1', 2: 'gen2', 3: 'gen3'}, 'digital_source': {0: 'analog', 1: 'reserved', 2: 'dac1', 3: 'dac2'}, 'pcm_format': {0: 'unsigned8', 1: 'signed16', 2: 'mulaw', 3: 'alaw'}, 'line_mode': {0: 'single_ended', 1: 'differential'}}
FIELD_ENUM = {'adc_input.lss': 'analog_source', 'adc_input.rss': 'analog_source', 'mono_control.dac2t': 'gain_timing', 'mono_control.dac1t': 'gain_timing', 'clock_select.da2c': 'clock_select', 'clock_select.da1c': 'clock_select', 'clock_select.adrc': 'clock_select', 'clock_select.adlc': 'clock_select', 'digital_filter.daadr': 'digital_source', 'digital_filter.daadl': 'digital_source', 'format_lock.da2f': 'pcm_format', 'format_lock.da1f': 'pcm_format', 'format_lock.adrf': 'pcm_format', 'format_lock.adlf': 'pcm_format', 'power_clock.linrsd': 'line_mode', 'power_clock.linlsd': 'line_mode'}
CONSTANTS = {}
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
