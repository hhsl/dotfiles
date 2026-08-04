# dotfiles repository

Trying to keep track of settings on different mashines

## Dependencies

```bash 
brew install --cask ghostty
```

```bash
brew install eurkey-next zsh stow eza jandedobbeleer/oh-my-posh/oh-my-posh fnm
```

## Install the configs

```bash
./setup.sh
```

### Optional Dependencies

```bash
brew tap FelixKratz/formulae
brew install sketchybar tmux asmvik/formulae/skhd asmvik/formulae/yabai
```


```bash
skhd --start-service
yabai --start-service
```

#### Install tmux catppuccin theme
```bash
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.3.0 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```

#### Install Sketchybar App Font
[Sketchybar App Font](https://github.com/kvndrsslr/sketchybar-app-font)


## Help

If zsh config is not loaded try adding this to `~/.zprofile`

```bash
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
```

