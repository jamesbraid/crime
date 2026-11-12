"""generated from defs/ad1843.toml by defs-gen - do not edit, change the source
Analog Devices AD1843 stereo codec: the 29 internal registers"""

UNIT = 'ad1843'
REGISTERS = {'status_id': {'offset': 0, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 49153, 'grade': 'established'}, 'underrun_peak': {'offset': 1, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'adc_input': {'offset': 2, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'dac2_to_dac1_mix': {'offset': 3, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'inferred'}, 'aux1_mix': {'offset': 4, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'aux2_mix': {'offset': 5, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'aux3_mix': {'offset': 6, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'mic_mix': {'offset': 7, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'mono_control': {'offset': 8, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34920, 'grade': 'established'}, 'dac1_output': {'offset': 9, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'dac2_output': {'offset': 10, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 34952, 'grade': 'established'}, 'dac1_digital_att': {'offset': 11, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'dac2_digital_att': {'offset': 12, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'adc_to_dac1_mix': {'offset': 13, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 32896, 'grade': 'established'}, 'adc_to_dac2_mix': {'offset': 14, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 32896, 'grade': 'established'}, 'clock_select': {'offset': 15, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'clock1_mode': {'offset': 16, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 255, 'grade': 'established'}, 'clock1_hz': {'offset': 17, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 48000, 'grade': 'established'}, 'clock1_phase': {'offset': 18, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'digital_filter': {'offset': 25, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'format_lock': {'offset': 26, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 0, 'grade': 'established'}, 'enables': {'offset': 27, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 192, 'grade': 'established'}, 'power_clock': {'offset': 28, 'access': 'rw', 'width': 16, 'count': 1, 'stride': 1, 'space': 'codec_reg', 'reset': 50176, 'grade': 'established'}}
WORDS = {}
FIELDS = {'status_id': {'init': (15, 15), 'converter_powerdown': (14, 14), 'revision': (3, 0)}, 'underrun_peak': {'dac2_underrun': (9, 9), 'dac1_underrun': (8, 8), 'r_peak': (3, 2), 'l_peak': (1, 0)}, 'adc_input': {'l_source': (15, 13), 'l_mic_boost': (12, 12), 'l_gain': (11, 8), 'r_source': (7, 5), 'r_mic_boost': (4, 4), 'r_gain': (3, 0)}, 'dac2_to_dac1_mix': {'l_mute': (15, 15), 'l_gain': (12, 8), 'r_mute': (7, 7), 'r_gain': (4, 0)}, 'aux1_mix': {'l_mute': (15, 15), 'l_gain': (12, 8), 'r_mute': (7, 7), 'r_gain': (4, 0)}, 'aux2_mix': {'l_mute': (15, 15), 'l_gain': (12, 8), 'r_mute': (7, 7), 'r_gain': (4, 0)}, 'aux3_mix': {'l_mute': (15, 15), 'l_gain': (12, 8), 'r_mute': (7, 7), 'r_gain': (4, 0)}, 'mic_mix': {'l_mute': (15, 15), 'l_gain': (12, 8), 'r_mute': (7, 7), 'r_gain': (4, 0)}, 'mono_control': {'mono_mix_mute': (15, 15), 'mono_mix_gain': (12, 8), 'all_mix_mute': (7, 7), 'mono_mute': (6, 6), 'headphone_mute': (5, 5), 'swing': (4, 4), 'sum_mute': (3, 3), 'dac2_gain_timing': (1, 1), 'dac1_gain_timing': (0, 0)}, 'dac1_output': {'l_mute': (15, 15), 'l_gain': (13, 8), 'r_mute': (7, 7), 'r_gain': (5, 0)}, 'dac2_output': {'l_mute': (15, 15), 'l_gain': (13, 8), 'r_mute': (7, 7), 'r_gain': (5, 0)}, 'dac1_digital_att': {'l_mute': (15, 15), 'l_att': (13, 8), 'r_mute': (7, 7), 'r_att': (5, 0)}, 'dac2_digital_att': {'l_mute': (15, 15), 'l_att': (13, 8), 'r_mute': (7, 7), 'r_att': (5, 0)}, 'adc_to_dac1_mix': {'l_mute': (15, 15), 'l_att': (13, 8), 'r_mute': (7, 7), 'r_att': (5, 0)}, 'adc_to_dac2_mix': {'l_mute': (15, 15), 'l_att': (13, 8), 'r_mute': (7, 7), 'r_att': (5, 0)}, 'clock_select': {'dac2_clock': (11, 10), 'dac1_clock': (9, 8), 'r_adc_clock': (3, 2), 'l_adc_clock': (1, 0)}, 'clock1_mode': {'ref': (15, 15), 'video_select': (14, 14), 'pll_gain': (13, 13), 'bit_plus_200hz': (12, 12), 'conv_8_7_multiplier': (11, 11), 'conv_128_multiplier': (10, 10), 'conv_modifier': (7, 4), 'bit_modifier': (3, 0)}, 'clock1_hz': {'hz': (15, 0)}, 'clock1_phase': {'direction': (8, 8), 'magnitude': (7, 0)}, 'digital_filter': {'resample_filter': (15, 15), 'dac_mix': (14, 14), 'dac2_filter': (9, 9), 'dac1_filter': (8, 8), 'r_digital_source': (7, 6), 'l_digital_source': (5, 4), 'r_adc_filter': (1, 1), 'l_adc_filter': (0, 0)}, 'format_lock': {'dac2_mono': (15, 15), 'dac1_mono': (14, 14), 'dac2_format': (11, 10), 'dac1_format': (9, 8), 'scf': (7, 7), 'frs': (6, 6), 'frst': (5, 5), 'adc_lock': (4, 4), 'r_adc_format': (3, 2), 'l_adc_format': (1, 0)}, 'enables': {'resource_free': (15, 15), 'dac2_analog_mix': (12, 12), 'dac2_enable': (9, 9), 'dac1_enable': (8, 8), 'analog_enable': (7, 7), 'headphone_enable': (6, 6), 'analog_mix_enable': (4, 4), 'r_adc_enable': (1, 1), 'l_adc_enable': (0, 0)}, 'power_clock': {'pdni': (15, 15), 'autocal': (14, 14), 'clock3_enable': (13, 13), 'clock2_enable': (12, 12), 'clock1_enable': (11, 11), 'clock_output': (10, 10), 'ttl_outputs': (9, 8), 'conv_bit_outputs': (7, 2), 'r_line_mode': (1, 1), 'l_line_mode': (0, 0)}}
ENUMS = {'analog_source': {0: 'line', 1: 'mic', 2: 'aux1', 3: 'aux2', 4: 'aux3', 5: 'mono_in', 6: 'dac1_out', 7: 'dac2_out'}, 'gain_timing': {0: 'zero_cross', 1: 'immediate'}, 'clock_select': {0: 'fixed48k', 1: 'gen1', 2: 'gen2', 3: 'gen3'}, 'digital_source': {0: 'analog', 1: 'reserved', 2: 'dac1', 3: 'dac2'}, 'pcm_format': {0: 'unsigned8', 1: 'signed16', 2: 'mulaw', 3: 'alaw'}, 'line_mode': {0: 'single_ended', 1: 'differential'}}
FIELD_ENUM = {'adc_input.l_source': 'analog_source', 'adc_input.r_source': 'analog_source', 'mono_control.dac2_gain_timing': 'gain_timing', 'mono_control.dac1_gain_timing': 'gain_timing', 'clock_select.dac2_clock': 'clock_select', 'clock_select.dac1_clock': 'clock_select', 'clock_select.r_adc_clock': 'clock_select', 'clock_select.l_adc_clock': 'clock_select', 'digital_filter.r_digital_source': 'digital_source', 'digital_filter.l_digital_source': 'digital_source', 'format_lock.dac2_format': 'pcm_format', 'format_lock.dac1_format': 'pcm_format', 'format_lock.r_adc_format': 'pcm_format', 'format_lock.l_adc_format': 'pcm_format', 'power_clock.r_line_mode': 'line_mode', 'power_clock.l_line_mode': 'line_mode'}
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
