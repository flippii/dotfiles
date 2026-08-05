# Usage

## Install

* Install [Homebrew](https://brew.sh/) if you don't have it already.
* Install [Sdkman](https://sdkman.io/) if you don't have it already.
* Install and configure [Border](https://ingo-richter.io/post/2024/adding-a-colorful-border-around-macos-windows/) if you don't have it already. 

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

## MAC keyboard layout

Use [US keyboard layout](https://hci.rwth-aachen.de/usgermankeyboard) with german special characters (ä,ö,ü,ß).

## Disable macOS animations

```
defaults write -g NSScrollViewRubberbanding -int 0
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g NSScrollAnimationEnabled -bool false
defaults write -g NSWindowResizeTime -float 0.001
defaults write -g QLPanelAnimationDuration -float 0
defaults write -g NSScrollViewRubberbanding -bool false
defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false
defaults write -g NSToolbarFullScreenAnimationDuration -float 0
defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock expose-animation-duration -float 0
defaults write com.apple.dock springboard-show-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0
defaults write com.apple.dock springboard-page-duration -float 0
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true
defaults write NSGlobalDomain NSWindowResizeTime .001
defaults write com.apple.dock expose-animation-duration -int 0; killall Dock
defaults write com.apple.dock expose-animation-duration -float 0.1; killall Dock
```
