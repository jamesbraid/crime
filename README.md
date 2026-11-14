# crime

Notes on the O2's graphics: CRIME, GBE, MACE and VICE, and the IRIX code that drives them.

CRIME is the O2's memory controller and its 2D/3D rendering engine in one chip. The O2 has no video memory of
its own, so the frame buffer lives in main memory and GBE reads it out to the monitor. MACE and VICE sit
alongside for I/O and media.

The O2 is one of the few SGI machines with published chip specs, so a lot of this is checked against them.
Everything else is read from IRIX 6.5.30 (and 6.5.22 to compare), the public IRIX source and the Linux and BSD
drivers. Every fact notes where it came from and whether it's established, inferred or still unknown.

## What's covered

- **CRIME:** address windows, the memory controller, interrupts and the chip ID.
- **Rendering engine and MTE:** registers, TLBs, 2D drawing, pixel maths, copy and fill. Texture filtering is
  still open.
- **GBE:** how IRIX turns a video mode into timing, overlay, cursor and colormap writes.
- **MACE and VICE:** the parts graphics and media lean on.
- **IRIX:** the kernel driver and its ioctls, the command stream libGLcore sends, the X module and the diags.

Chip pages are under [devices/](devices/README.md), the IRIX side under [software/](software/README.md).

## Using it

The headers and the crate live in [generated/](generated/). Don't edit them; they're built from the
`registers.toml` next to each device page.

To run the checks yourself:

```sh
git clone https://github.com/jamesbraid/crime && cd crime
tools/setup-clone.sh --root /path/to/your/irix/files
retools/tools/re-run retools/tools/defs/ci-check
```

You'll need Podman, git, python3 and your own IRIX files. [evidence/irix-files.md](evidence/irix-files.md) lists
which ones.

## How far along

Registers, ioctls and tokens are done. About a fifth of the functions are understood. The open questions are in [questions/](questions/README.md).
If you spot a mistake or have a manual we don't, [open an issue](https://github.com/jamesbraid/crime/issues).

| Table | Rows | Understood | Located or better |
|---|---:|---:|---:|
| binaries | 82 | 98.8% | 100.0% |
| functions | 15124 | 20.8% | 94.0% |
| mmio | 199 | 100.0% | 100.0% |
| tokens | 83 | 100.0% | 100.0% |
| ioctls | 42 | 100.0% | 100.0% |
| spec-registers | 260 | 99.2% | 100.0% |

## License

[BSD 3-Clause](LICENSE). The `retools/` scripts started life as gr4's and keep its notice. No SGI binaries in
here; bring your own.

## Credits

James Braid, plus a lot of Claude and Codex reading MIPS disassembly so I didn't have to.

Thanks to -

* Dominik Behr ([@techomancer](https://github.com/techomancer)) for [gr2](https://github.com/techomancer/gr2)
  and [gr4](https://github.com/techomancer/gr4), where the layout and working style come from
* The Linux, NetBSD and OpenBSD O2 developers, whose drivers get checked against constantly
* Everyone keeping SGI manuals, `hinv` dumps and IRIX media online
