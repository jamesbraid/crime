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

Licence: BSD-3-Clause, see [LICENSE](LICENSE). The scripts descend from gr4's
and keep its notice in [scripts/LICENSE-gr4](scripts/LICENSE-gr4).
