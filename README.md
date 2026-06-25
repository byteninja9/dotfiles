# dotfiles

My dotfiles for tmux, zsh, neovim, and VSCode.

Neovim is a lightweight vim-plug setup with LSP error-checking, completion (blink.cmp),
treesitter, inline diagnostics, flash jumps, surround, git hunks, and an animated dashboard.

## Quick Setup

```bash
git clone https://github.com/haxurn/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh
```

Then select what you want to install (1-7).

## Options

```bash
./setup.sh --all     # Install everything
./setup.sh --tmux    # Tmux only
./setup.sh --zsh     # Zsh only
./setup.sh --nvim    # Neovim only
```

## After Install

### Tmux
- Press `Ctrl+a` then `I` to install plugins

### Zsh
- Restart terminal or `source ~/.zshrc`
- Run `p10k configure` to customize prompt

### Neovim
- Run `nvim` — vim-plug bootstraps and `:PlugInstall` runs automatically on first launch
- **Requires the `tree-sitter` CLI** for syntax parsers: `npm i -g tree-sitter-cli`
  (or `cargo install tree-sitter-cli`)
- On first launch **mason** auto-installs language servers in the background — watch `:Mason`.
  Restart once they finish for full error-checking.
- A patched **Nerd Font** is required for icons (sidebar, tabs, dashboard).
- Full key reference lives in `nvim/CHEATSHEET.md`; power-user workflows in `nvim/WORKFLOW.md`.

### VSCode
- Copy `settings.json` to your VSCode settings folder:
  - Linux: `~/.config/Code/User/settings.json`
  - macOS: `~/Library/Application Support/Code/User/settings.json`
  - Windows: `%APPDATA%\Code\User\settings.json`
- Or use the **Settings Sync** extension and link this file

## Keybinds

### Tmux
| Key | Action |
|-----|--------|
| `Ctrl+a` | Prefix |
| `\` | Split horizontal |
| `-` | Split vertical |
| `h/j/k/l` | Navigate panes |
| `r` | Reload config |

### Neovim

Leader = `Space`. Press `Space` and wait for the which-key popup. Full list in `nvim/CHEATSHEET.md`.

**Navigation**
| Key | Action |
|-----|--------|
| `Space+f` / `Space+g` | find files / grep |
| `Space+t` | file tree (icons) · `nvim .` also opens it |
| `s` + chars | flash: jump anywhere on screen |
| `Shift+h/l` · `Alt+1..9` | prev/next · jump to buffer N |
| `Ctrl+h/j/k/l` | navigate splits |

**LSP / code**
| Key | Action |
|-----|--------|
| `K` · `gd` · `gr` | hover · definition · references |
| `Ctrl+o` | jump back |
| `Space+ca` · `Space+rn` | code action · rename symbol |
| `[d` / `]d` · `Space+T` | prev/next diagnostic · error list |
| `Tab` | accept completion |

**Edit / git**
| Key | Action |
|-----|--------|
| `ysiw"` · `cs"'` · `ds(` | surround: add / change / delete |
| `gcc` | toggle comment |
| `Alt+j/k` | move line up/down |
| `]h` / `[h` · `Space+hs` | next/prev git hunk · stage hunk |

## Uninstall

```bash
rm ~/.config/tmux/tmux.conf
rm ~/.zshrc
rm ~/.config/nvim
rm ~/.config/Code/User/settings.json
# Restore backup if needed from ~/.dotfiles_backup/
```

## Folder Structure

```
dotfiles/
├── nvim/           # Neovim config (lua) — LSP, completion, treesitter, flash, git, animated dashboard
│   ├── CHEATSHEET.md   # full key reference
│   └── WORKFLOW.md     # end-to-end power-user guide
├── tmux/            # Tmux config
├── zsh/             # Zsh config & plugins
├── vscode/          # VSCode/VSCodium settings (cross-platform)
│   └── settings.json
├── setup.sh         # Installer script
└── README.md
```
