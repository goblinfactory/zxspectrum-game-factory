# Build tools & converters

Scripts for assembling Spectrum binaries and converting assets.

## Build

```bash
chmod +x tools/build.sh   # once
./tools/build.sh workspace/<game-slug>
```

Expected output: `workspace/<game-slug>/build/<game-slug>.tap`

## Planned tools

| Script | Purpose |
|--------|---------|
| `build.sh` | Main build entry (stub) |
| `png2scr.sh` | PNG → Spectrum screen / attributes |
| `tap-pack.sh` | Pack binary into `.tap` format |

## Toolchain options

Pick one per project (document in game GDD):

- **z88dk** — C and asm, cross-platform
- **sjasmplus** — Z80 assembly
- **Boriel ZX Basic** — Basic with inline asm

Contributions welcome — see [CONTRIBUTING.md](../CONTRIBUTING.md).
