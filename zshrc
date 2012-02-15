# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

alias tmux="TERM=screen-256color-bce tmux"

# Set theme
ZSH_THEME="simple"

plugins=(autojump brew bundler gem git osx rails3 rake ruby)

source $ZSH/oh-my-zsh.sh

alias ll='ls -lh'
alias l='ls -lah'
alias bundle="noglob bundle"
