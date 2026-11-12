# crime

Reverse-engineering workspace for the SGI O2's CRIME graphics (the memory
controller and rendering engine) and its GBE display back end.

The layout and working style follow Dominik Behr's
[gr2](https://github.com/techomancer/gr2) and
[gr4](https://github.com/techomancer/gr4). Proprietary IRIX binaries are not
tracked. Copy them from your own IRIX install into the ignored `root/`
directory as [IRIX_FILES.md](IRIX_FILES.md) describes. [AGENTS.md](AGENTS.md) has the project goal, the
binaries and evidence, the toolchain and the working rules;
[docs/coverage.md](docs/coverage.md) is the map of what is covered and what is
next.

## Running the tools and reproducing a result

The host needs Podman, git and python3. Everything else runs in a container built from
[retools/tools/Containerfile](retools/tools/Containerfile): MIPS binutils, dwarfdump, pyelftools, capstone, unicorn,
numpy, pycparser and spimdisasm, at pinned versions on a pinned Debian base.

    tools/setup-clone.sh --root /path/to/filled/root   # siblings at their pins, submodules, root/
    retools/tools/re-run python3 retools/tools/inventory.py          # the first run builds the image

`retools/tools/re-run COMMAND` runs `COMMAND` in the image with this repository mounted at `/work`, `root/`
included; with no command it opens a shell. `root/` is your own copy of the IRIX 6.5.30 files listed in
[IRIX_FILES.md](IRIX_FILES.md); they are never committed. Fill it from your install or media; the links the tools expect are committed.

To reproduce a cited result:

- Generated tables under `docs/inventory/` come from `retools/tools/re-run python3 retools/tools/inventory.py`.
  `git status --short docs` shows nothing afterwards when your `root/` matches `scripts/inventory-root.sha256`.
- A claim an entry marks as established by execution is reproduced by the script in `scripts/` that
  the entry names; its docstring says what it reproduces and how to run it, always as
  `retools/tools/re-run python3 retools/tools/NAME.py ...` (device scripts are under `retools/tools/crime/`).
- The shared tooling (container definitions, wrappers, Ghidra scripts, the inventory, fact sheet and claim checker, and the device extractors) is the `retools/` submodule (sgi-retools); tools are run by their submodule path from this repository's root, as `retools/tools/NAME` (shared) or `retools/tools/crime/NAME` (CRIME), and find this workspace from the current directory. A change to them is made in retools and the pin here moves with a commit. `scripts/` holds only this workspace's configuration and data, and `tools/setup-clone.sh` is the stub that fetches the submodule. The optional Ghidra image is built from `retools/tools/Containerfile.ghidra` by
  `retools/tools/re-run --ghidra COMMAND`, and `retools/tools/re-run --ghidra-export OBJECT` writes decompiled C and
  function-similarity output as JSON (see `ghidra/README.md`); nothing else needs it. `retools/tools/README-analysis.md`
  describes the `.mdebug` importer and the kernel table extractors.

## Hardware definitions

Register, word, field and constant facts for CRIME, the rendering engine, the memory transfer engine, GBE, MACE video and VICE are TOML sources in `defs/`. `gen/` holds what is generated from them: C headers, a Rust crate, Python decode modules, JSON, a genxml export and a reference page per block in `gen/docs/`. Do not edit `gen/`. Change `defs/`, then run `retools/tools/defs/defs-gen` and `retools/tools/defs/defs-check --build`. The old `*_DECODE.h` names are forwarding headers for the generated C. [AGENTS.md](AGENTS.md) describes the layout.

## Documentation index

Every tracked Markdown page under `docs/` and the top-level Markdown files, grouped by subject.
Each line takes its description from the page's own title or opening sentence.

### Start here

- [AGENTS.md](AGENTS.md): SGI O2 CRIME reverse-engineering project: goal, evidence rules, working rules
- [IRIX_FILES.md](IRIX_FILES.md): IRIX files needed for SGI O2 (CRIME) reverse engineering, paths only
- [README.md](README.md): Reverse-engineering workspace for the SGI O2 CRIME graphics and GBE
- [docs/coverage.md](docs/coverage.md): Map of what the CRIME and GBE workspace covers and what is next
- [docs/open-questions.md](docs/open-questions.md): Facts no source read so far settles, with routes already tried

### CRIME, GBE, MACE and VICE hardware

- [docs/context.md](docs/context.md): Context save and restore between clients, IRIX 6.5.30
- [docs/hw-explanations-crime-p1.md](docs/hw-explanations-crime-p1.md): Hardware-facing routine explanations for CRIME and neighbours, pilot 1
- [docs/memory.md](docs/memory.md): Rendering TLB formats, texture levels, interrupts and CPU windows
- [docs/mte.md](docs/mte.md): MTE copies, fills and the address word, as IRIX drives them
- [docs/de-2d-drawing.md](docs/de-2d-drawing.md): Rendering engine 2D drawing: coordinates, primitives, stipple, logic ops and clip order
- [docs/pixel-arithmetic.md](docs/pixel-arithmetic.md): Pixel arithmetic: depth, blending and texel filtering
- [docs/pixel-transfer.md](docs/pixel-transfer.md): Pixel transfer: DrawPixels, ReadPixels and the kernel pixel DMA
- [docs/reset.md](docs/reset.md): Rendering engine initialisation, error recovery and kernel MTE helpers
- [docs/gbe.md](docs/gbe.md): GBE display timing: how IRIX turns a video format into timing registers
- [docs/mace-video.md](docs/mace-video.md): MACE video: capture, playback and framelock
- [docs/mace-audio.md](docs/mace-audio.md): MACE audio interface and AD1843 codec: DMA rings, sample formats, codec timing and routing
- [docs/mace-base.md](docs/mace-base.md): MACE base: PCI bridge devices and interrupt map, PCI byte positions and windows, PCI reset, serial and RTC frontends
- [docs/mace-ethernet.md](docs/mace-ethernet.md): MACE Fast-Ethernet: MAC, interrupt, DMA ring and receive FIFO registers, message formats, PHY bus and the diagnostic port
- [docs/vice.md](docs/vice.md): VICE: the imaging and compression engine

### Kernel, X server and OpenGL driver

- [docs/ioctls.md](docs/ioctls.md): Graphics ioctl interface (IRIX 6.5.30, O2)
- [docs/opengl.md](docs/opengl.md): libGLcore to CRIME command stream: vertices to rendering-engine writes
- [docs/gl-entry-points.md](docs/gl-entry-points.md): libGLcore: the OpenGL entry points, grouped by specified role
- [docs/glcore-immediate-entry-points.md](docs/glcore-immediate-entry-points.md): libGLcore immediate-mode entry points and display-list vector state
- [docs/libglcore.md](docs/libglcore.md): libGLcore internal routines grouped by compilation unit
- [docs/libglcore-o32.md](docs/libglcore-o32.md): o32 OpenGL driver routines whose code differs from the N32 build
- [docs/xmodule.md](docs/xmodule.md): X module (crm.so) functions by role and group
- [docs/nfb-layer.md](docs/nfb-layer.md): SGI frame-buffer layer in the X module (nfb)
- [docs/xsgi.md](docs/xsgi.md): The X server (Xsgi): board bring-up and resource-manager layer
- [docs/xsgivc.md](docs/xsgivc.md): Video-control client library (libXsgivc.so) for the X server extension

### Routine catalogues, binaries and public-source comparisons

- [docs/functions.md](docs/functions.md): Routines of the IRIX 6.5.30 graphics kernel objects, grouped by role
- [docs/binaries.md](docs/binaries.md): Binaries in scope: what each file is and why it is read
- [docs/diagnostic-messages.md](docs/diagnostic-messages.md): CRIME, MACE and GBE diagnostic messages
- [docs/release-6522-compare.md](docs/release-6522-compare.md): IRIX 6.5.22 against 6.5.30: the in-scope CRIME files
- [docs/capability-trees.md](docs/capability-trees.md): Capability-enable value trees in libGLcore, starting at `__glim_Enable`
- [docs/sample-implementation.md](docs/sample-implementation.md): Public-source code in libGLcore, from the SGI OpenGL sample
- [docs/sample-server.md](docs/sample-server.md): Sample-server code in the X module (crm.so)

### Published sources and stored copies

- [docs/published-sources.md](docs/published-sources.md): Published sources: patents, technical reports and white papers
- [docs/sources/README.md](docs/sources/README.md): Stored copies of published sources, with SHA-256 checksums
- Stored PDF, HTML and text copies under `docs/sources/` (`specs/`, `patents/`, `papers/`, `reports/`, `manuals/`, 22 files): listed in [docs/sources/README.md](docs/sources/README.md)

### Inventory

- [docs/inventory/README.md](docs/inventory/README.md): Inventory: generated tables, row detection and grading rules
- Generated tables under `docs/inventory/` (`*.tsv`, nine files) and `docs/release-6522-compare.tsv`: not indexed one by one

### Not listed one by one

- `docs/instruction-readings-crime-g1.md` to `g9` (eight generated readings from hostfacts, no `g8`): skipped as generated

Licence: BSD-3-Clause, see [LICENSE](LICENSE). The scripts descend from gr4's
and keep its notice in [retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4).
