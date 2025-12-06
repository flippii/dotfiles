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

Clone github repository and switch in folder:

```bash
cd ~/dotfiles
```

To link for example bat configuration:

```bash
stow bat
```

To unlink for example bat configuration:

```bash
stow -D bat
```

## Change lazygit config folder

```bash
export XDG_CONFIG_HOME="$HOME/.config"
```
