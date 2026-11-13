# ad1843

The AD1843 serial-port codec used by the O2 MACE audio interface. Register numbers are the codec's own, not MACE byte offsets, and are reached through the MACE codec command register (mace_audio.toml, codec_cmd). Each register is 16 bits. Field masks follow the published register table; bits the table does not define are not listed.

Source: Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Pages

- [MACE audio interface and AD1843 codec](../mace_audio/mace-audio.md)

## Used by

No software page touches this unit yet.
