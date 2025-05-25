# dotfiles repository

Trying to keep track of settings on different mashines


## Dependencies

```bash
brew install zsh stow eza jandedobbeleer/oh-my-posh/oh-my-posh fnm
```

### Optional Dependencies

```bash
brew tap FelixKratz/formulae
brew install sketchybar tmux koekeishiya/formulae/skhd koekeishiya/formulae/yabai
```

```bash
skhd --start-service
yabai --start-service
```

Install (Sketchybar Font)[https://github.com/kvndrsslr/sketchybar-app-font] too.

## Install configs

```bash
./setup.sh
```

## Help

If zsh config is not loaded try adding this to `~/.zprofile`

```bash
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
```

