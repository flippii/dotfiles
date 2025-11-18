# Usage

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
stow .
stow -D .
stow bat
stow -D bat
```
