# ani-cli-wrapper

An enhanced, opinionated POSIX shell wrapper for [ani-cli](https://github.com/pystardust/ani-cli) featuring an interactive Anime Hub menu, automated library organization, mid-stream downloads, and smart dub/sub fallback.

---

## Features

- **Interactive Anime Hub Menu:** Launch without arguments to open a clean TUI menu:
  - `1)` Stream anime (Dubbed by default)
  - `2)` Download anime (Dubbed by default)
  - `3)` Resume last watched episode
  - `4)` Open local anime library folder (`~/Anime` / `~/Videos/Anime`)
  - `5)` Stream anime (Subbed)
  - `6)` Download anime (Subbed)
  - `7)` Standard CLI mode
  - `8)` Quit
- **Automated Library Organizer:** Downloads are intelligently parsed and sorted into a clean Plex/Jellyfin-compatible directory hierarchy:
  - Series: `~/Anime/<Series Name>/Season <N>/S<NN>E<NN>.mp4`
  - Movies: `~/Anime/<Movie Name>/Movies/<Movie Name>.mp4`
  - OVAs / Specials: `~/Anime/<Series Name>/Specials/S00E<NN>.mp4`
- **Mid-Stream Downloads:** Download the currently playing episode directly from the playback control menu without restarting the search.
- **Dub-to-Sub Auto-Fallback:** If dubbed sources are unavailable for an episode, it gracefully notifies you and falls back to subbed sources automatically instead of failing.
- **Custom Flags:**
  - `--dir`, `--download-dir <path>`: Specify custom download base directory.
  - `--no-organize`: Disable automated season/series folder structuring.
  - `--sub` / `--dub`: Explicitly choose audio track mode.
  - `--menu`: Force display the hub menu.

---

## Installation

Clone this repository and run the install script:

```bash
git clone https://github.com/AnesuBlessed/ani-cli-wrapper.git
cd ani-cli-wrapper
./install.sh
```

This installs `ani-cli` and links `anime-cli` to `~/.local/bin/`.

Ensure `~/.local/bin` is in your shell `PATH`:

```bash
# In ~/.bashrc or ~/.zshrc
export PATH="$HOME/.local/bin:$PATH"

# In fish (~/.config/fish/config.fish)
fish_add_path ~/.local/bin
```

---

## Dependencies

- `curl`
- `grep` & `sed`
- `ffmpeg`
- `mpv` (or `vlc` / `iina`)
- `fzf` or `rofi` (for interactive menu selection)
- `aria2` (optional, for accelerated multi-connection downloads)

---

## Usage

```bash
# Launch interactive hub menu
ani-cli

# Stream directly
ani-cli "Jujutsu Kaisen"

# Stream subbed
ani-cli --sub "Frieren"

# Download with automated folder sorting
ani-cli -d "Attack on Titan"
```

---

## License

Derived from [ani-cli](https://github.com/pystardust/ani-cli) under the GNU General Public License v3.0 (GPL-3.0).
