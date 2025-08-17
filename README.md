# Neovim Config

This repository contains my Neovim configuration. It uses `lazy.nvim` as the plugin manager and expects the config directory to be located in the standard per‑OS location.

- Windows config path: `%LOCALAPPDATA%\nvim` (e.g., `C:\Users\<you>\AppData\Local\nvim`)
- Linux config path: `$XDG_CONFIG_HOME/nvim` (defaults to `~/.config/nvim`)
- macOS config path: `$XDG_CONFIG_HOME/nvim` (defaults to `~/.config/nvim`)

`lazy.nvim` installs itself automatically under Neovim’s data directory (`stdpath('data')`):

- Windows data path: `%LOCALAPPDATA%\nvim-data`
- Linux/macOS data path: `~/.local/share/nvim`

## Requirements

- Neovim 0.9+ (0.8+ should work; 0.9+ recommended)
- Git available in your `PATH` (needed for plugin installation)
- A Nerd Font (optional, but recommended for icons from `nvim-web-devicons`)

## Quick Start

Pick your OS below and either clone directly into the config path, or create a symlink from the config path to your cloned repo location.

### Windows

1) Ensure Neovim is installed (e.g., `winget install Neovim.Neovim` or `choco install neovim`).
2) Place this repo at `%LOCALAPPDATA%\nvim`.

Option A — clone directly:

```powershell
# Close any running Neovim first
$env:LOCALAPPDATA
# Example: C:\Users\<you>\AppData\Local
cd "$env:LOCALAPPDATA"
rm -Recurse -Force nvim  # only if replacing an existing config
git clone <your-repo-url> nvim
```

Option B — symlink to another location (requires Developer Mode or admin):

```powershell
# Suppose you cloned to D:\code\nvim-config
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "D:\\code\\nvim-config" -Force
```

Run Neovim:

```powershell
nvim
```

On first launch, `lazy.nvim` will auto-install and then fetch the listed plugins. Open `:Lazy` to see progress or run `:Lazy sync`.

### Linux

1) Ensure Neovim is installed (e.g., `sudo apt install neovim`, `sudo dnf install neovim`, or your distro’s method).
2) Place this repo at `~/.config/nvim`.

Option A — clone directly:

```bash
mkdir -p ~/.config
cd ~/.config
rm -rf nvim  # only if replacing an existing config
git clone <your-repo-url> nvim
```

Option B — symlink to another location:

```bash
# Suppose you cloned to ~/code/nvim-config
mkdir -p ~/.config
ln -sfn ~/code/nvim-config ~/.config/nvim
```

Then launch Neovim and let `lazy.nvim` install plugins:

```bash
nvim
```

### macOS

1) Install Neovim (e.g., `brew install neovim`).
2) Place this repo at `~/.config/nvim` (macOS follows XDG defaults with Neovim).

Option A — clone directly:

```bash
mkdir -p ~/.config
cd ~/.config
rm -rf nvim  # only if replacing an existing config
git clone <your-repo-url> nvim
```

Option B — symlink to another location:

```bash
# Suppose you cloned to ~/code/nvim-config
mkdir -p ~/.config
ln -sfn ~/code/nvim-config ~/.config/nvim
```

Launch Neovim and watch `lazy.nvim` install:

```bash
nvim
```

## What’s Included

Key files and folders in this repo:

- `init.lua`: sets leader keys, loads `core/*`, bootstraps `lazy.nvim`, and loads plugin specs from `lua/plugins`.
- `lua/core/options.lua`: editor options.
- `lua/core/keymaps.lua`: common key mappings (save/quit, terminal, window nav/resize, `NvimTreeToggle`).
- `lua/plugins/*.lua`: plugin specifications for `lazy.nvim` (e.g., `tokyonight`, `nvim-tree`, `nvim-web-devicons`).

## First Run Checklist

- Run `:checkhealth` to confirm your environment is OK.
- Open `:Lazy` to view plugin status. Use `:Lazy sync` to install/update plugins.
- Toggle the file tree with `<leader>e` (space is the leader by default).

## Updating

- Update Neovim via your package manager.
- Update plugins inside Neovim with `:Lazy update` or `:Lazy sync`.

## Customization

- Add or modify plugins under `lua/plugins/`.
- Tweak options and mappings under `lua/core/`.
- Colorscheme is set to `tokyonight` in `lua/plugins/theme.lua` — change or remove as desired.

## Troubleshooting

- If plugins don’t install: ensure Git is available, network access is allowed, and you’re on Neovim 0.8+ (0.9+ recommended).
- Windows paths: confirm you’re using `%LOCALAPPDATA%\nvim` for config and `%LOCALAPPDATA%\nvim-data` for plugin data.
- Health check: run `:checkhealth` for targeted hints.

---

If you’re setting up a brand new environment, the most important part is placing this folder at the correct config path for your OS (Windows: `%LOCALAPPDATA%\nvim`; Linux/macOS: `~/.config/nvim`). After that, launch `nvim` and let `lazy.nvim` handle the rest.
