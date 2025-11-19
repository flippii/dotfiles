# Usage

## Install

* Install [Homebrew](https://brew.sh/) if you don't have it already.
* Install [Sdkman](https://sdkman.io/) if you don't have it already.

## Homebrew export installed programs

```bash
brew bundle dump --describe --file=~/Brewfile
```

## Homebrew install programs

```bash
brew bundle --file=~/Brewfile
```

## Link dot files

```bash
cd ~/dotfiles
stow bat
stow -D bat
```

## Change lazygit config folder

```bash
export XDG_CONFIG_HOME="$HOME/.config"
```
