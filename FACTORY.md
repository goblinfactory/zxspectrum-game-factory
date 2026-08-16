# ZX Spectrum Game Factory — master prompt

This is the **improved factory spec** produced by running the ["Shit Prompt" method](https://alanhemmings.com/posts/2026-08-16-the-shit-prompt-method.html) on a rough brief. Paste this into a fresh Cursor session to bootstrap or extend the harness.

---

# TASK: Architect and Build a ZX Spectrum Game Factory & Agent Harness

## Context & Goal

You are a Principal Software Architect and AI Engineer specializing in retro-computing, multi-agent systems, and game development. Your goal is to build a full **ZX Spectrum Game Factory Harness**.

Once created, this harness will be opened in a fresh Cursor workspace. A user acting as a "Game Designer" will be able to start a new chat session, specify a game concept, and orchestrate a team of specialized sub-agents to generate, assemble, test, and package a fully functional ZX Spectrum game (`.tap` or `.z80` format) that runs on an embedded or pre-built Spectrum emulator.

---

## 1. Core Architecture & System Components

1. **Modular "Lego Block" Framework:**
   - Build a robust library of re-usable Spectrum assembly (Z80) and/or high-performance compiled engine components (e.g., using z88dk, Boriel's ZX Basic, or raw Z80 ASM).
   - **Core Building Blocks:** Tilemap renderer, sprite engine (flicker-free / XOR / masked), collision detection, input handler (Kempston/Sinclair/Keyboard), sound/AY-3-8910 engine (e.g., Beepola/Vortex Tracker driver), screen state manager (Title, Game Loop, Game Over).

2. **Specialized Sub-Agent Profiles:**
   Define explicit agent personas, system prompts, responsibilities, and toolsets for:
   - **Lead Architect / Producer:** Translates the Game Designer's high-level idea into a Game Design Document (GDD) and technical task breakdown.
   - **Z80 / Code Engineer:** Assembles building blocks, writes custom logic, manages memory maps (RAM allocations, screen memory at `$4000`), and handles optimization.
   - **Pixel Artist:** Creates ZX Spectrum-compliant graphics (1x1 attribute blocks per 8x8 pixels, handling attribute clash, memory layout for screen RAM, loading screens, sprites, tiles).
   - **Audio Specialist:** Generates 1-bit BEEP music/SFX or 3-channel AY-chip music, converting score files into assembly data.
   - **Copywriter & Manual Writer:** Handles in-game text (using compact character sets), loading screen text, cassette inlay art copy, and game instructions.
   - **QA & Emulator Tester:** Runs build scripts, executes the ROM in a pre-built emulator headless or visually, monitors for crashes, memory overflows, or graphic corruption, and reports bugs back to Code/Art.

3. **Artifact Pipeline & Toolchain:**
   - Provide scripts/tooling to automatically assemble retro artifacts into valid Spectrum binaries (`.tap`, `.tzx`, or `.z80`).
   - Graphic converters (PNG/BMP → Spectrum SCREEN$ attribute format).
   - Audio converters (MIDI/TXT → Z80 data statements).

4. **Integration with Pre-Built Emulator:**
   - Include a zero-config setup to launch and test builds in an emulator (e.g., JSSpectrum / Fuse / ZEsarUX / Web-based emulator wrapper).

---

## 2. Workspace & File Structure

```text
zx-spectrum-factory/
├── .cursor/
│   └── rules/             # Specialized agent roles and workflow rules
├── engine/                # Reusable "Lego" building blocks
│   ├── gfx/               # Sprite & tile libraries
│   ├── audio/             # Sound drivers
│   ├── input/             # Joystick/keyboard drivers
│   └── core/              # Game loop, memory maps, interrupts
├── tools/                 # Build scripts, image converters, TAP generators
├── emulator/              # Pre-configured runner/wrapper
├── agents/                # Prompts and tools for sub-agents
├── workspace/             # Working directory for current game project
└── README.md              # Factory operating manual for the Game Designer
```

---

## 3. Workflow & Acceptance Criteria

### Workflow

1. **Design Phase:** Designer inputs a game prompt (e.g. *"A 2D platformer set in a haunted coal mine"*). Producer & Architect create the GDD and project plan.
2. **Asset Creation Phase:** Artist creates screen layout and sprites; Audio specialist writes sound effects.
3. **Assembly Phase:** Code Engineer hooks up building blocks and custom game rules.
4. **Testing Phase:** QA Agent triggers a build, executes the game in the emulator runner, validates memory safety, and confirms playability.
5. **Release Phase:** Factory produces a playable `.tap` file, loading screen, and instruction manual.

### Acceptance Criteria

- [ ] **Modularity:** Sub-agents can assemble games using modular blocks without rewriting core engines from scratch.
- [ ] **Hardware Validity:** All generated graphics strictly adhere to ZX Spectrum hardware constraints (16KB/48KB limits, 256x192 resolution, 8x8 attribute grid constraints).
- [ ] **Agent Scaffolding:** Cursor rules/prompts clearly delineate agent responsibilities to prevent role-bleed.
- [ ] **Automated Build:** Single command/script compiles source code and packages it into a playable `.tap` file.
- [ ] **Interactive Execution:** A new Cursor session can immediately step through the creation pipeline from prompt to playable game.

---

## 4. Immediate Output Required

Generate the foundational files, directory templates, Cursor rules, build scripts, and initial Z80 engine blocks so this factory is immediately ready to run in a fresh Cursor workspace.

---

## Why this prompt works

1. **Technical precision** — Z80, screen RAM at `$4000`, attribute clash, `.tap` formats; the model won't invent modern incompatible game code.
2. **Cursor-native structure** — `.cursor/rules/` defines sub-agent personas inside Cursor.
3. **Clear boundary separation** — sound engine, tilemap, sprite driver as explicit Lego blocks agents stitch together.
