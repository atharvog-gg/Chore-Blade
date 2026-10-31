# ⚔️ CHOREBLADE / SWEEPPROTOCOL
> **High-Speed Digital Triage Arcade Slasher & Terminal Engine**

An adrenaline-pumping cyberpunk arcade experience where real-world digital clutter is converted directly into in-game entities, and every slash, blast, and parry atomically executes real disk mutations with a 100% reversible Temporal Undo Ledger.

---

## ⚡ Core Concept & Mechanics Mapping

In **ChoreBlade**, cleaning your chaotic hard drive or unorganized downloads is no longer a boring chore—it is a fast-paced cyberpunk arcade game.

| In-Game Weapon & Action | Keybinding / Control | Real-World Atomic Disk / API Mutation | Target Entity Class |
| :--- | :--- | :--- | :--- |
| **⚔️ Chore Blade** | `[1]`, `[Q]`, Drag / Left Click | **Categorize & Sort**: Atomically routes files into structured directories (`_SWEEP_SORTED_/Images`, `/Documents`, `/Archives`, `/Code`). Bisects entities into two falling halves with binary sparks. | General files, images, documents, media |
| **💥 Plasma Blaster** | `[2]`, `[W]`, Right Click, `[D]` | **Vaporize / Trash**: Safely relocates bloated junk and duplicates into the `_SWEEP_TRASH_RECOVERY_/` vault with transactional recovery tokens. | `.tmp`, `.log`, `.bak`, `.dmp`, duplicate `(1)` copies |
| **🛡️ Stasis Parry** | `[3]`, `[E]`, `[Spacebar]` | **Containment Quarantine**: Traps high-threat or suspicious files in a Stasis Cube, moves them to `_SWEEP_QUARANTINE_/`, and writes an isolation security manifest. | Unsigned `.exe`, `.bat`, `.vbs`, `.ps1`, unknown scripts |
| **🌀 Gravity Vortex** | `[4]`, `[C]`, Middle Click | **Compress Singularity**: Deploys a gravitational black hole that pulls nearby loose files in and compresses them into a single `.zip` cluster (`_SWEEP_COMPRESSED_/`). | Scattered small files, loose archives |
| **✨ Cleanse Strike** | `[5]`, `[R]` | **Sanitize Filename**: Normalizes messy names (removes `Copy of (1)`, bad spacing, redundant suffixes, and unifies lowercase naming). | Cluttered filenames, multiple version tags |
| **⏪ Chrono Rewind** | `[Z]`, `Ctrl+Z`, HUD Button | **Atomic Rollback**: Pops the last transaction from the Temporal Undo Ledger, reverses the file mutation on disk, and re-materializes the entity back into the arena! | Any previously triaged item |

---

## 🎮 Dual-Mode Execution

### 1. Simulated Sandbox Mode (Zero Risk, Instant Play)
* Operates entirely in a high-speed Virtual File System (VFS).
* Includes **5 Curated Clutter Scenarios**:
  1. **🌪️ Chaotic Downloads Abyss**: 25 mixed files (duplicate installers, giant dumps, meme images, zero-byte scraps).
  2. **💻 Developer Caches & Log Torrent**: Gigabytes of orphaned build outputs, `.log` torrents, and heap dumps.
  3. **📸 The Screenshot Cemetery**: 32 unorganized high-resolution screenshots spanning multiple years.
  4. **☣️ Suspicious Payloads & Scripts**: High-threat batch files, executables, and malicious scripts demanding quarantine.
  5. **👾 The Gigabyte Leviathan Encounter**: A colossal 2.45 GB Raw Database Apex Boss accompanied by 24 swarming temp mites.
* **Inject Clutter Button (`[⚡ INJECT CLUTTER]`)**: Spawns 15 procedurally generated messy files on the fly.

### 2. Real Web File System Access API Mode
* Click **`[📂 CONNECT REAL FOLDER]`** in the top bar.
* Uses native browser `window.showDirectoryPicker({ mode: 'readwrite' })`.
* Select any directory on your computer (e.g. `Downloads`, `Desktop/MessyFolder`, or the included test vault).
* **Safe-Triage Architecture**:
  * Deletions are never destructive—files are atomically routed into `_SWEEP_TRASH_RECOVERY_/` with timestamped unique tokens.
  * Rollbacks re-pipe the file streams back to their exact original location.
  * Full JSON audit receipts are recorded in memory and exportable at any time.

---

## 🖥️ Real-Time Terminal HUD & Telemetry

The bottom terminal delivers live syscall telemetry:
* **Live Syscall Stream**:
  * `[FS_MV] Moved [screenshot.png] -> [_SWEEP_SORTED_/Images/screenshot.png]`
  * `[FS_UNLINK] Vaporized [cache.tmp] -> Safe Trash [1719283_cache.tmp] (Reclaimed 14.2 MB)`
  * `[FS_SEC] Quarantined threat [malware.bat] in secure vault with security manifest`
  * `[UNDO_ROLLBACK] Reversing transaction TX_0042 [TRASH] for cache.tmp`
* **Filter Pills**: Filter live terminal logs by `ALL`, `I/O MUTATIONS`, `ROLLBACKS`, or `WARNINGS`.
* **Target Telemetry & Hex Inspector**: Hovering any file entity or blade displays its file size, extension, age, status, 16-byte raw Hex dump, and recommended triage protocol.
* **Audio Visualizer**: Real-time frequency spectrum visualizer powered by the Web Audio API analyser.

---

## ⏪ Temporal Undo Ledger Buffer

* Slide out the drawer anytime via **`[⏪ UNDO LEDGER]`** or press `Ctrl+Z`.
* Displays a reverse-chronological transaction journal with:
  * Unique Transaction Receipt (`TX_0001`, `TX_0002`, ...)
  * Mutation Type (`SORT`, `TRASH`, `QUARANTINE`, `COMPRESS`, `RENAME`)
  * Original Path & Target Destination
  * Reclaimed Byte Counter
* **Actions**:
  * Single-click **`[REWIND OPERATION]`** on any specific transaction.
  * **`[REWIND LAST (CTRL+Z)]`**: Reverses the most recent action.
  * **`[REWIND ALL]`**: Restores all files in the current session.
  * **`[EXPORT JSON]`**: Downloads `sweep_protocol_ledger_<timestamp>.json` for auditing.

---

## 🎵 Procedural Cyberpunk Audio Synthesizer

* **Zero external audio file dependencies**—100% procedurally synthesized in real time via Web Audio API oscillators, noise buffers, and biquad filters:
  * Blade whoosh & razor slicing impacts
  * Plasma laser blasts & bitcrushed disintegration thumps
  * Metallic resonant parry bell rings & hydraulic vault lock clamps
  * Sub-bass gravity vortex drones & compression pops
  * Reverse tape-rewind harmonic chimes for rollbacks
* **Dynamic Synthwave Background Music**:
  * 4/4 electronic drum rhythm (punchy kick, filtered noise snare, 16th-note hats).
  * Rolling cyberpunk sawtooth bassline in D minor.
  * **Overdrive Mode**: Accelerates tempo from 124 BPM to 142 BPM when combo streak reaches `x8` or `x16 OVERDRIVE`!
  * Full volume sliders and mute controls in the Terminal HUD.

---

## 🚀 Quick Start Guide

### Option 1: Direct Browser Launch
Simply open `index.html` in Chrome, Edge, or Opera:
```powershell
Start-Process index.html
```

### Option 2: Local Arcade Server (Recommended for File System Access API)
Run the included native PowerShell web server:
```powershell
powershell -ExecutionPolicy Bypass -File .\serve.ps1
```
This automatically binds to `http://localhost:8080` and opens your default browser.

### Option 3: Generate Real Test Clutter Folder
Want to test the Real File System Access API without touching your personal files? Run:
```powershell
powershell -ExecutionPolicy Bypass -File .\generate_messy_folder.ps1
```
This creates a realistic, safe test folder with mock installers, logs, duplicate photos, and a 25MB Bloat Titan at `.\test-vault\MessyFolder_Test`. In ChoreBlade, click **`[CONNECT REAL FOLDER]`** and select that folder!

---

## 🕹️ Controls Quick Reference

* `[Mouse Drag / Swipe]`: Neon Blade Slash (Cuts & sorts files)
* `[Left Click]`: Direct Blade Strike
* `[Right Click]`: Fire Plasma Blaster (Vaporize to safe trash)
* `[Spacebar]`: Trigger Stasis Parry Shield (Quarantines threat)
* `[1 / Q]`: Equip Chore Blade
* `[2 / W / D]`: Equip Plasma Blaster
* `[3 / E]`: Equip Stasis Shield
* `[4 / C]`: Equip Singularity Vortex
* `[5 / R]`: Equip Cleanse Strike
* `[Z / Ctrl+Z]`: Temporal Rewind (Undo last action)
* `[B]`: Toggle Synthwave BGM On / Off
