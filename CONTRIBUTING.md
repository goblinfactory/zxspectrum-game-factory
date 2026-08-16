# Contributing

Thanks for helping improve the ZX Spectrum Game Factory.

## What this repo is

A **Cursor-native agent harness** for designing and building ZX Spectrum games. It is prompts, rules, and scaffolding — not a finished game engine. Contributions that improve agent boundaries, Spectrum-accurate constraints, or build tooling are especially welcome.

## How to contribute

1. Fork the repo and create a branch from `main`.
2. Make focused changes — one concern per PR (e.g. QA rule fix, new engine block doc, converter script).
3. Test in a fresh Cursor workspace if you changed `.cursor/rules/` or `agents/`.
4. Open a PR with a short description of what you changed and why.

## Guidelines

- **Spectrum hardware validity** — graphics, memory maps, and binaries must respect 48K (and optionally 128K) constraints. See `engine/core/MEMORY.md`.
- **Agent role boundaries** — each agent has a narrow remit. Do not merge roles in rules or prompts without discussion.
- **Modular engine blocks** — prefer reusable Lego blocks in `engine/` over one-off game code in `workspace/`.
- **No modern game engine assumptions** — no HTML5 canvas game loops masquerading as Spectrum code.

## Ideas we would love

- Working PNG → Spectrum attribute converter in `tools/`
- z88dk or Boriel ZX Basic build integration
- Headless emulator runner for QA agent
- Example game in `workspace/example-platformer/`
- 128K / AY-3-8910 enhancements with clear feature flags

## Code of conduct

Be kind, be precise, be retro. Report issues on GitHub if something is broken or misleading.
