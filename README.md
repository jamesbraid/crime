# crime

Reverse-engineering workspace for the SGI O2's CRIME graphics (the memory
controller and rendering engine) and its GBE display back end.

The layout and working style follow Dominik Behr's
[gr2](https://github.com/techomancer/gr2) and
[gr4](https://github.com/techomancer/gr4). Proprietary IRIX binaries are not
tracked. Copy them from your own IRIX install into the ignored `root/`
directory as [IRIX_FILES.md](IRIX_FILES.md) describes, then run
`scripts/populate-root`. [AGENTS.md](AGENTS.md) has the project goal, the
binaries and evidence, the toolchain and the working rules;
[docs/coverage.md](docs/coverage.md) is the map of what is covered and what is
next.

## Running the tools and reproducing a result

The host needs Podman, git and python3. Everything else runs in a container built from
[tools/Containerfile](tools/Containerfile): MIPS binutils, dwarfdump, pyelftools, capstone, unicorn,
numpy, pycparser and spimdisasm, at pinned versions on a pinned Debian base.

    tools/setup-clone.sh --root /path/to/filled/root   # siblings at their pins, submodules, root/
    tools/re-run python3 scripts/inventory.py          # the first run builds the image

`tools/re-run COMMAND` runs `COMMAND` in the image with this repository mounted at `/work`, `root/`
included; with no command it opens a shell. `root/` is your own copy of the IRIX 6.5.30 files listed in
[IRIX_FILES.md](IRIX_FILES.md); they are never committed. Fill it from your install or media, then run
`scripts/populate-root` on the host to make the links the tools expect.

To reproduce a cited result:

- Generated tables under `docs/inventory/` come from `tools/re-run python3 scripts/inventory.py`.
  `git status --short docs` shows nothing afterwards when your `root/` matches `scripts/inventory-root.sha256`.
- A claim an entry marks as established by execution is reproduced by the script in `scripts/` that
  the entry names; its docstring says what it reproduces and how to run it, always as
  `tools/re-run python3 scripts/NAME.py ...`.
- `tools/check-shared` verifies that the toolchain files (`tools/`) are byte-identical to the copies in
  the sibling repositories. The optional Ghidra image is built from `tools/Containerfile.ghidra` by
  `tools/re-run --ghidra COMMAND`; nothing else needs it.

Licence: BSD-3-Clause, see [LICENSE](LICENSE). The scripts descend from gr4's
and keep its notice in [scripts/LICENSE-gr4](scripts/LICENSE-gr4).
