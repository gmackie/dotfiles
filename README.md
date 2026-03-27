# Dotfiles

Portable baseline shell, editor, and terminal config for machines that are not managed by Nix.

This repo is the fallback layer, not the full Nix-managed environment. The `nix-config` repo consumes this repo as a submodule on Nix machines, while non-Nix machines can use it directly with the bootstrap script below.

## Layout

The repo currently uses two main shapes:

- Root-level files for shell and general-purpose config.
- `config/` for XDG-style application config.

Current portable contents include:

- `bashrc`
- `gitconfig`
- `gitignore_global`
- `p10k.zsh`
- `screenrc`
- `taskrc`
- `vimrc`
- `vim/`
- `weechat/`
- `config/nvim/`
- `config/tmux/`

## Usage

Clone recursively, or initialize submodules before bootstrapping:

```bash
git clone --recursive git@github.com:gmackie/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

If you already cloned without submodules:

```bash
git submodule update --init --recursive
```

The bootstrap script then creates symlinks from this repo into `~`:

```bash
./makesymlinks.sh
```

What it covers today:

- selected root-level dotfiles in `$HOME`
- `p10k.zsh` and `taskrc` as root-level dotfiles
- `config/nvim` in `~/.config/nvim`
- `config/tmux` in `~/.config/tmux`

If you are using Nix, prefer the `nix-config` repo for the full environment. This repo is the portable baseline and is intentionally simpler.
