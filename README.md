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

#### Install tmux catppuccin theme
```bash
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```

#### Install Sketchybar App Font
[Sketchybar App Font](https://github.com/kvndrsslr/sketchybar-app-font)

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

