# Dotfiles

My personal tools and dotfiles.

## Installation

### Windows

Make sure Python is installed.

```powershell
# Powershell needs to be started as admin.
# Otherwise you cannot create symbolic links.
.\install.ps1
```

See Wiki for installation steps of other tools. It's not fully automated yet.

## Setup

### Common

- [nvim](https://github.com/neovim/neovim)
- [vscode](https://code.visualstudio.com/)
- [golang](https://go.dev/)
- [zsh](https://www.zsh.org/)
- [ohmyzsh](https://ohmyz.sh/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [flameshot](https://flameshot.org/)
- git
  - make sure it's installed
- ssh
  - generate a key (named after username)
  - put configs into place

#### Fonts

- NerdFont -> [Hack NerdFont](https://www.nerdfonts.com/font-downloads)

### Linux

- [alacritty](https://alacritty.org/)
- [pyenv](https://github.com/pyenv/pyenv)
- [nvm](https://github.com/nvm-sh/nvm)
- [i3wm (optional)](https://i3wm.org/)
- [autotiling (with i3wm)](https://github.com/nwg-piotr/autotiling)
- [autorandr (with i3wm)](https://github.com/phillipberndt/autorandr)
- blueman-tray (with i3wm)

#### Gnome Extensions

<!-- TODO: Add extension information -->

### Windows

<!-- TODO: Add Powershell config to git and link it. -->

Preferred installation method: `winget`

- [GlazeWM](https://github.com/glzr-io/glazewm)
- [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install)
  - Wezterm and alacritty could be alternatives
- [PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/)
- [python3](https://www.python.org/)
- [fnm](https://github.com/Schniz/fnm)
  - `fnm install 22`
  - needs powershell config
