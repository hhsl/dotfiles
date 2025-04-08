# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load completions brew
autoload -Uz compinit 
compinit

# Source Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Zinit Theme
zinit ice depth=1

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found

# Zinit Plugins
zinit light aeons/omz-git
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light alexiszamanidis/zsh-git-fzf

# Keys
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt append_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous pref
zstyle ':completion:*' menu no
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:tldr:argument-1' fzf-preview 'tldr --color always $word'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

## aliases
alias ls='eza --icons=auto'
alias ll='eza -l --icons=auto --no-user --group-directories-first --time-style long-iso'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ..='cd ..'

zinit cdreplay -q

# zoxide
eval "$(zoxide init zsh)"

# oh my posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zen.toml)"
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"

# 1p
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# kubernetes
source <(kubectl completion zsh)